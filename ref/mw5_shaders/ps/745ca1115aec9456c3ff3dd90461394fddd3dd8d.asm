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
; ENTITY_IDS               0    yz        12     NONE    uint    y  
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
; shader hash: 429be7e757a2a5a2b41430d0b206ef69
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
;                                   texture    byte         r/o      T4     t22,space1     1
;                                   texture     f32          3d      T5     t52,space2     1
;                                   texture     f32          2d      T6     t33,space2     1
;                                   texture    byte         r/o      T7      t3,space1     1
;                                   texture    byte         r/o      T8      t4,space1     1
;                                   texture    byte         r/o      T9      t5,space1     1
;                                   texture    byte         r/o     T10      t6,space1     1
;                                   texture     f32          2d     T11     t69,space2     1
;                                   texture    byte         r/o     T12     t18,space1     1
;                                   texture    byte         r/o     T13     t19,space1     1
;                                   texture    byte         r/o     T14     t20,space1     1
;                                   texture    byte         r/o     T15     t21,space1     1
;                                   texture     f32          2d     T16     t37,space2     1
;                                   texture     f32          2d     T17             t0     1
;                                   texture     f32          2d     T18     t58,space2     1
;                                   texture     f32          2d     T19     t59,space2     1
;                                   texture     f32          2d     T20     t60,space2     1
;                                   texture    byte         r/o     T21     t45,space1     1
;                                   texture    byte         r/o     T22     t46,space1     1
;                                   texture    byte         r/o     T23     t47,space1     1
;                                   texture    byte         r/o     T24     t48,space1     1
;                                   texture     f32          2d     T25     t57,space2     1
;                                   texture    byte         r/o     T26     t69,space1     1
;                                   texture     u32          2d     T27     t56,space2     1
;                                   texture     f32     2darray     T28     t35,space2     1
;                                   texture     f32          2d     T29     t34,space2     1
;                                   texture     f32          3d     T30     t31,space2     1
;                                   texture    byte         r/o     T31     t10,space1     1
;                                   texture    byte         r/o     T32      t1,space1     1
;                                   texture     f32          1d     T33     t32,space2     1
;                                   texture     f32     2darray     T34      t8,space2     1
;                                   texture     f32          2d     T35      t1,space2     1
;                                   texture     f32          2d     T36      t2,space2     1
;                                   texture     f32          2d     T37      t3,space2     1
;                                   texture     f32          2d     T38      t4,space2     1
;                                   textureunorm_f32     2darray     T39     t80,space2     1
;                                   texture    byte         r/o     T40     t67,space1     1
;                                   texture     f32          2d     T41      t7,space2     1
;                                   texture     f32          2d     T42      t6,space2     1
;                                   texture     f32          2d     T43      t5,space2     1
;                                   texture     f32          2d     T44     t38,space2     1
;                                   texture    byte         r/o     T45     t12,space1     1
;                                   texture    byte         r/o     T46     t13,space1     1
;                                   texture     f32          1d     T47     t30,space2     1
;                                   texture     f32          3d     T48     t44,space2     1
;                                   texture     f32          3d     T49     t45,space2     1
;                                   texture     f32     2darray     T50     t47,space2     1
;                                   textureunorm_f32     2darray     T51     t85,space2     1
;                                   texture     f32          2d     T52     t83,space2     1
;                                   texture     f32          2d     T53     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = alloca [4 x i32], align 4
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = alloca [12 x float], align 4
  %105 = alloca [12 x float], align 4
  %106 = alloca [4 x float], align 4
  %107 = alloca [4 x float], align 4
  %108 = alloca [4 x float], align 4
  %109 = alloca [4 x float], align 4
  %110 = alloca [3 x float], align 4
  %111 = alloca [3 x float], align 4
  %112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = fmul fast float %115, %100
  %117 = fmul fast float %115, %101
  %118 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %119 = bitcast float %118 to i32
  %120 = ashr i32 %119, 1
  %121 = sub nsw i32 1597250115, %120
  %122 = bitcast i32 %121 to float
  %123 = fmul fast float %122, %91
  %124 = fmul fast float %122, %92
  %125 = fmul fast float %122, %93
  %126 = fmul fast float %92, %89
  %127 = fmul fast float %93, %88
  %128 = fsub fast float %126, %127
  %129 = fmul fast float %93, %87
  %130 = fmul fast float %91, %89
  %131 = fsub fast float %129, %130
  %132 = fmul fast float %91, %88
  %133 = fmul fast float %92, %87
  %134 = fsub fast float %132, %133
  %135 = fmul fast float %128, %90
  %136 = fmul fast float %131, %90
  %137 = fmul fast float %134, %90
  %138 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %139 = bitcast float %138 to i32
  %140 = ashr i32 %139, 1
  %141 = sub nsw i32 1597250115, %140
  %142 = bitcast i32 %141 to float
  %143 = fmul fast float %142, %80
  %144 = fmul fast float %142, %81
  %145 = fmul fast float %142, %82
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = fcmp fast une float %147, 0.000000e+00
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 3
  %152 = fmul fast float %116, 2.000000e+00
  %153 = fmul fast float %152, %150
  %154 = fmul fast float %117, 2.000000e+00
  %155 = fmul fast float %154, %151
  %156 = fsub fast float 1.000000e+00, %153
  %157 = fsub fast float 1.000000e+00, %155
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = select i1 %148, float %159, float %163
  %167 = select i1 %148, float %160, float %164
  %168 = select i1 %148, float %161, float %165
  %169 = fmul fast float %166, %156
  %170 = fmul fast float %167, %156
  %171 = fmul fast float %168, %156
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %175 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %180 = select i1 %148, float %173, float %177
  %181 = select i1 %148, float %174, float %178
  %182 = select i1 %148, float %175, float %179
  %183 = fmul fast float %180, %157
  %184 = fmul fast float %181, %157
  %185 = fmul fast float %182, %157
  %186 = fadd fast float %183, %169
  %187 = fadd fast float %184, %170
  %188 = fadd fast float %185, %171
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = extractvalue %dx.types.CBufRet.f32 %189, 1
  %192 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 0
  %195 = extractvalue %dx.types.CBufRet.f32 %193, 1
  %196 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %197 = select i1 %148, float %190, float %194
  %198 = select i1 %148, float %191, float %195
  %199 = select i1 %148, float %192, float %196
  %200 = fadd fast float %186, %197
  %201 = fadd fast float %187, %198
  %202 = fadd fast float %188, %199
  %203 = fmul fast float %200, %103
  %204 = fmul fast float %201, %103
  %205 = fmul fast float %202, %103
  %206 = shl i32 %62, 5
  %207 = add i32 %206, 4194304
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = extractvalue %dx.types.ResRet.i32 %208, 1
  %211 = extractvalue %dx.types.ResRet.i32 %208, 2
  %212 = extractvalue %dx.types.ResRet.i32 %208, 3
  %213 = add i32 %206, 4194320
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = bitcast i32 %215 to float
  %217 = fmul fast float %116, 5.000000e-01
  %218 = fmul fast float %117, 5.000000e-01
  %219 = fptosi float %217 to i32
  %220 = fptosi float %218 to i32
  %221 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %219, i32 %220, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = lshr i32 %222, 18
  %224 = uitofp i32 %223 to float
  %225 = fmul fast float %224, 0x3F4C00EBA0000000
  %226 = call float @dx.op.unary.f32(i32 21, float %225)  ; Exp(value)
  %227 = fadd fast float %226, -1.000000e+00
  %228 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %229 = extractvalue %dx.types.Dimensions %228, 0
  %230 = sitofp i32 %229 to float
  %231 = extractvalue %dx.types.Dimensions %228, 1
  %232 = sitofp i32 %231 to float
  %233 = fcmp fast oge float %217, %230
  %234 = fcmp fast oge float %218, %232
  %235 = or i1 %233, %234
  %236 = select i1 %235, float 0x4197782600000000, float %227
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %239 = extractvalue %dx.types.CBufRet.f32 %237, 3
  %240 = fmul fast float %238, %116
  %241 = fmul fast float %239, %117
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 114688
  %245 = icmp ne i32 %244, 0
  %246 = select i1 %245, float %240, float 0.000000e+00
  %247 = select i1 %245, float %241, float 0.000000e+00
  %248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %56, float %246, float %247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = fmul fast float %249, 2.550000e+02
  %251 = fptoui float %250 to i32
  %252 = select i1 %245, i32 %251, i32 0
  %253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.i32 %253, 3
  %255 = and i32 %254, 3
  %256 = icmp ne i32 %255, 0
  %257 = and i32 %254, 4
  %258 = icmp ne i32 %257, 0
  %259 = and i1 %256, %258
  br i1 %259, label %260, label %269

; <label>:260                                     ; preds = %0
  %261 = fmul fast float %151, %117
  %262 = fmul fast float %150, %116
  %263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %55, float %262, float %261, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = fsub fast float 1.000000e+00, %264
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 0
  %268 = fcmp fast olt float %265, %267
  br label %272

; <label>:269                                     ; preds = %0
  %270 = icmp eq i32 %257, 0
  %271 = and i1 %256, %270
  br label %272

; <label>:272                                     ; preds = %269, %260
  %273 = phi i1 [ %268, %260 ], [ %271, %269 ]
  %274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.f32 %274, 2
  %276 = fmul fast float %275, 0x3FE3C6EF40000000
  %277 = frem fast float %116, 2.560000e+02
  %278 = frem fast float %117, 2.560000e+02
  %279 = fptoui float %277 to i32
  %280 = fptoui float %278 to i32
  %281 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %279, i32 %280, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = fadd fast float %282, %276
  %284 = call float @dx.op.unary.f32(i32 22, float %283)  ; Frc(value)
  %285 = add i32 %61, 156
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = shl i32 %287, 4
  %289 = and i32 %288, 32752
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %287, 7
  %292 = and i32 %291, 32752
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %287, 22
  %295 = shl nuw nsw i32 %294, 5
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = add i32 %61, 216
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %299, 8
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = lshr i32 %299, 16
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = add i32 %61, 36
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = add i32 %61, 288
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = fmul fast float %322, 0x3F50624DE0000000
  %326 = fmul fast float %324, 0x3F50624DE0000000
  %327 = add i32 %61, 172
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = shl i32 %329, 4
  %331 = and i32 %330, 32752
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %329, 7
  %334 = and i32 %333, 32752
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %329, 22
  %337 = shl nuw nsw i32 %336, 5
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = add i32 %61, 232
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = lshr i32 %341, 8
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %347, 0x3F70101020000000
  %349 = lshr i32 %341, 16
  %350 = and i32 %349, 255
  %351 = uitofp i32 %350 to float
  %352 = fmul fast float %351, 0x3F70101020000000
  %353 = add i32 %61, 52
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 65535
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %355, 16
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = add i32 %61, 304
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %362, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = fmul fast float %364, 0x3F50624DE0000000
  %368 = fmul fast float %366, 0x3F50624DE0000000
  %369 = add i32 %61, 188
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %381 = add i32 %61, 248
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = lshr i32 %383, 8
  %388 = and i32 %387, 255
  %389 = uitofp i32 %388 to float
  %390 = fmul fast float %389, 0x3F70101020000000
  %391 = lshr i32 %383, 16
  %392 = and i32 %391, 255
  %393 = uitofp i32 %392 to float
  %394 = fmul fast float %393, 0x3F70101020000000
  %395 = add i32 %61, 68
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 65535
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = lshr i32 %397, 16
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = add i32 %61, 320
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 65535
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = lshr i32 %404, 16
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = fmul fast float %406, 0x3F50624DE0000000
  %410 = fmul fast float %408, 0x3F50624DE0000000
  %411 = add i32 %61, 204
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = shl i32 %413, 4
  %415 = and i32 %414, 32752
  %416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %415)  ; LegacyF16ToF32(value)
  %417 = lshr i32 %413, 7
  %418 = and i32 %417, 32752
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = lshr i32 %413, 22
  %421 = shl nuw nsw i32 %420, 5
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = add i32 %61, 264
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 255
  %427 = uitofp i32 %426 to float
  %428 = fmul fast float %427, 0x3F70101020000000
  %429 = lshr i32 %425, 8
  %430 = and i32 %429, 255
  %431 = uitofp i32 %430 to float
  %432 = fmul fast float %431, 0x3F70101020000000
  %433 = lshr i32 %425, 16
  %434 = and i32 %433, 255
  %435 = uitofp i32 %434 to float
  %436 = fmul fast float %435, 0x3F70101020000000
  %437 = add i32 %61, 84
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = and i32 %439, 65535
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = lshr i32 %439, 16
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = add i32 %61, 336
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 65535
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = lshr i32 %446, 16
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = fmul fast float %448, 0x3F50624DE0000000
  %452 = fmul fast float %450, 0x3F50624DE0000000
  %453 = add i32 %61, 348
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 32
  %457 = icmp eq i32 %456, 0
  %458 = and i32 %455, 64
  %459 = icmp eq i32 %458, 0
  %460 = and i32 %455, 128
  %461 = icmp eq i32 %460, 0
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = and i32 %463, 2
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %481, label %466

; <label>:466                                     ; preds = %272
  %467 = add i32 %61, 488
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = add i32 %469, 0
  %471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %470, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %472 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %471, %dx.types.Handle %113, float %94, float %95, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = extractvalue %dx.types.ResRet.f32 %472, 2
  %476 = extractvalue %dx.types.ResRet.f32 %472, 3
  %477 = fmul fast float %476, %96
  %478 = fmul fast float %473, %97
  %479 = fmul fast float %474, %98
  %480 = fmul fast float %475, %99
  br label %481

; <label>:481                                     ; preds = %466, %272
  %482 = phi float [ %99, %272 ], [ %480, %466 ]
  %483 = phi float [ %98, %272 ], [ %479, %466 ]
  %484 = phi float [ %97, %272 ], [ %478, %466 ]
  %485 = phi float [ %96, %272 ], [ %477, %466 ]
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = and i32 %487, 2
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %509, label %490

; <label>:490                                     ; preds = %481
  %491 = add i32 %61, 44
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = and i32 %493, 1
  %495 = icmp ne i32 %494, 0
  %496 = select i1 %495, float %484, float 1.000000e+00
  %497 = add i32 %61, 60
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = and i32 %499, 1
  %501 = icmp ne i32 %500, 0
  %502 = select i1 %501, float %483, float 1.000000e+00
  %503 = add i32 %61, 76
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = and i32 %505, 1
  %507 = icmp ne i32 %506, 0
  %508 = select i1 %507, float %482, float 1.000000e+00
  br label %509

; <label>:509                                     ; preds = %490, %481
  %510 = phi float [ %482, %481 ], [ %508, %490 ]
  %511 = phi float [ %483, %481 ], [ %502, %490 ]
  %512 = phi float [ %484, %481 ], [ %496, %490 ]
  %513 = lshr i32 %487, 20
  %514 = and i32 %513, 3
  %515 = add nuw nsw i32 %514, 1
  %516 = add i32 %61, 24
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = add i32 %61, 28
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = or i32 %521, %518
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %1058, label %524

; <label>:524                                     ; preds = %509
  %525 = and i32 %518, 262144
  %526 = icmp ne i32 %525, 0
  %527 = select i1 %526, float %67, float 1.000000e+00
  %528 = select i1 %526, float %68, float 0.000000e+00
  %529 = select i1 %526, float %69, float 0.000000e+00
  %530 = select i1 %526, float %70, float 1.000000e+00
  %531 = select i1 %526, float %71, float %94
  %532 = select i1 %526, float %72, float %95
  %533 = add i32 %61, 284
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = lshr i32 %535, 16
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = fmul fast float %537, 0x3F50624DE0000000
  %539 = add i32 %61, 88
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = lshr i32 %541, 16
  %543 = and i32 %542, 255
  %544 = lshr i32 %541, 24
  %545 = add i32 %61, 292
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = and i32 %547, 65535
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = lshr i32 %547, 16
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = add i32 %61, 32
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = lshr i32 %554, 22
  %556 = shl nuw nsw i32 %555, 5
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = shl i32 %554, 4
  %559 = and i32 %558, 32752
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = lshr i32 %554, 7
  %562 = and i32 %561, 32752
  %563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %562)  ; LegacyF16ToF32(value)
  %564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.f32 %564, 3
  %566 = fmul fast float %565, 1.000000e+03
  %567 = fmul fast float %325, %566
  %568 = call float @dx.op.unary.f32(i32 22, float %567)  ; Frc(value)
  %569 = fadd fast float %568, %315
  %570 = fmul fast float %326, %566
  %571 = call float @dx.op.unary.f32(i32 22, float %570)  ; Frc(value)
  %572 = fadd fast float %571, %317
  %573 = fmul fast float %538, %566
  %574 = call float @dx.op.unary.f32(i32 22, float %573)  ; Frc(value)
  %575 = fmul fast float %574, 0x401921FB60000000
  %576 = fadd fast float %575, %557
  %577 = call float @dx.op.unary.f32(i32 13, float %576)  ; Sin(value)
  %578 = call float @dx.op.unary.f32(i32 12, float %576)  ; Cos(value)
  %579 = fsub fast float -0.000000e+00, %577
  %580 = fadd fast float %531, -5.000000e-01
  %581 = fadd fast float %532, -5.000000e-01
  %582 = fmul fast float %549, %580
  %583 = fmul fast float %551, %581
  %584 = fadd fast float %582, 5.000000e-01
  %585 = fadd fast float %583, 5.000000e-01
  %586 = fmul fast float %560, %584
  %587 = fmul fast float %563, %585
  %588 = fmul fast float %578, %586
  %589 = call float @dx.op.tertiary.f32(i32 46, float %579, float %587, float %588)  ; FMad(a,b,c)
  %590 = fmul fast float %577, %586
  %591 = call float @dx.op.tertiary.f32(i32 46, float %578, float %587, float %590)  ; FMad(a,b,c)
  %592 = fadd fast float %569, %589
  %593 = fadd fast float %572, %591
  %594 = icmp ugt i32 %543, 1
  %595 = icmp ugt i32 %541, 33554431
  %596 = or i1 %595, %594
  br i1 %596, label %597, label %622

; <label>:597                                     ; preds = %524
  %598 = add i32 %61, 228
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = lshr i32 %600, 16
  %602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %601)  ; LegacyF16ToF32(value)
  %603 = fmul fast float %565, %602
  %604 = call float @dx.op.unary.f32(i32 22, float %603)  ; Frc(value)
  %605 = mul nuw nsw i32 %543, %544
  %606 = uitofp i32 %605 to float
  %607 = fmul fast float %604, %606
  %608 = call float @dx.op.unary.f32(i32 27, float %607)  ; Round_ni(value)
  %609 = fptoui float %608 to i32
  %610 = urem i32 %609, %543
  %611 = udiv i32 %609, %544
  %612 = call float @dx.op.unary.f32(i32 22, float %592)  ; Frc(value)
  %613 = call float @dx.op.unary.f32(i32 22, float %593)  ; Frc(value)
  %614 = uitofp i32 %610 to float
  %615 = uitofp i32 %611 to float
  %616 = fadd fast float %612, %614
  %617 = fadd fast float %613, %615
  %618 = uitofp i32 %543 to float
  %619 = uitofp i32 %544 to float
  %620 = fdiv fast float %616, %618
  %621 = fdiv fast float %617, %619
  br label %622

; <label>:622                                     ; preds = %597, %524
  %623 = phi float [ %620, %597 ], [ %592, %524 ]
  %624 = phi float [ %621, %597 ], [ %593, %524 ]
  %625 = and i32 %518, 256
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %673, label %627

; <label>:627                                     ; preds = %622
  %628 = add i32 %61, 440
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = add i32 %630, 0
  %632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %633 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %632, %dx.types.Handle %113, float %623, float %624, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %634 = extractvalue %dx.types.ResRet.f32 %633, 0
  %635 = add i32 %61, 100
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = shl i32 %637, 4
  %639 = and i32 %638, 32752
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = lshr i32 %637, 7
  %642 = and i32 %641, 32752
  %643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %642)  ; LegacyF16ToF32(value)
  %644 = fsub fast float 1.000000e+00, %485
  %645 = call float @dx.op.binary.f32(i32 35, float %644, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %646 = bitcast float %485 to i32
  %647 = sitofp i32 %646 to float
  %648 = fadd fast float %647, 0xC1CFBF8940000000
  %649 = fmul fast float %643, %648
  %650 = fadd fast float %649, 0x41CFBF8940000000
  %651 = fptosi float %650 to i32
  %652 = bitcast i32 %651 to float
  %653 = bitcast float %645 to i32
  %654 = sitofp i32 %653 to float
  %655 = fadd fast float %654, 0xC1CFBF8940000000
  %656 = fmul fast float %655, %643
  %657 = fadd fast float %656, 0x41CFBF8940000000
  %658 = fptosi float %657 to i32
  %659 = bitcast i32 %658 to float
  %660 = fmul fast float %652, %640
  %661 = fmul fast float %659, %640
  %662 = fsub fast float %645, %660
  %663 = fadd fast float %661, %645
  %664 = call float @dx.op.unary.f32(i32 7, float %662)  ; Saturate(value)
  %665 = call float @dx.op.unary.f32(i32 7, float %663)  ; Saturate(value)
  %666 = fsub fast float %634, %664
  %667 = fsub fast float %665, %664
  %668 = bitcast float %667 to i32
  %669 = sub nsw i32 2129859010, %668
  %670 = bitcast i32 %669 to float
  %671 = fmul fast float %670, %666
  %672 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  br label %673

; <label>:673                                     ; preds = %627, %622
  %674 = phi float [ %672, %627 ], [ %485, %622 ]
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = and i32 %676, 128
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %695, label %679

; <label>:679                                     ; preds = %673
  %680 = add i32 %61, 424
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %680, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = add i32 %682, 0
  %684 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %683, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %685 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %684, %dx.types.Handle %113, float %623, float %624, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %686 = extractvalue %dx.types.ResRet.f32 %685, 0
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = and i32 %688, 524288
  %690 = icmp ne i32 %689, 0
  %691 = fcmp fast ogt float %686, 0x3FE0101020000000
  %692 = select i1 %691, float 1.000000e+00, float 0.000000e+00
  %693 = select i1 %690, float %692, float %686
  %694 = fmul fast float %693, %674
  br label %695

; <label>:695                                     ; preds = %679, %673
  %696 = phi float [ %694, %679 ], [ %674, %673 ]
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = and i32 %698, 16
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %899, label %701

; <label>:701                                     ; preds = %695
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = add i32 %61, 376
  %705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.i32 %705, 0
  %707 = add i32 %706, 0
  %708 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %707, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %709 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %708, %dx.types.Handle %112, float %623, float %624, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 0
  %711 = extractvalue %dx.types.ResRet.f32 %709, 1
  %712 = extractvalue %dx.types.ResRet.f32 %709, 2
  %713 = extractvalue %dx.types.ResRet.f32 %709, 3
  %714 = and i32 %703, 255
  %715 = uitofp i32 %714 to float
  %716 = lshr i32 %703, 8
  %717 = and i32 %716, 255
  %718 = uitofp i32 %717 to float
  %719 = fmul fast float %713, %715
  %720 = fadd fast float %719, %718
  %721 = fmul fast float %720, 0x3F70101000000000
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = and i32 %723, 512
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %734, label %726

; <label>:726                                     ; preds = %701
  %727 = add i32 %61, 456
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = add i32 %729, 0
  %731 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %730, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %732 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %731, %dx.types.Handle %113, float %623, float %624, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %733 = extractvalue %dx.types.ResRet.f32 %732, 0
  br label %734

; <label>:734                                     ; preds = %726, %701
  %735 = phi float [ %733, %726 ], [ 1.000000e+00, %701 ]
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = and i32 %737, 33554432
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %846, label %740

; <label>:740                                     ; preds = %734
  %741 = add i32 %61, 224
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = and i32 %743, 65535
  %745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %744)  ; LegacyF16ToF32(value)
  %746 = lshr i32 %743, 16
  %747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %746)  ; LegacyF16ToF32(value)
  %748 = add i32 %61, 228
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = and i32 %750, 65535
  %752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %751)  ; LegacyF16ToF32(value)
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = lshr i32 %754, 24
  %756 = uitofp i32 %755 to float
  %757 = fmul fast float %756, 0x3F70101020000000
  %758 = and i32 %754, 255
  %759 = uitofp i32 %758 to float
  %760 = fmul fast float %759, 0x3F70101020000000
  %761 = lshr i32 %754, 8
  %762 = and i32 %761, 255
  %763 = uitofp i32 %762 to float
  %764 = fmul fast float %763, 0x3F70101020000000
  %765 = lshr i32 %754, 16
  %766 = and i32 %765, 255
  %767 = uitofp i32 %766 to float
  %768 = fmul fast float %767, 0x3F70101020000000
  %769 = add i32 %61, 220
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = lshr i32 %771, 24
  %773 = uitofp i32 %772 to float
  %774 = fmul fast float %773, 0x3F70101020000000
  %775 = and i32 %771, 255
  %776 = uitofp i32 %775 to float
  %777 = fmul fast float %776, 0x3F70101020000000
  %778 = lshr i32 %771, 8
  %779 = and i32 %778, 255
  %780 = uitofp i32 %779 to float
  %781 = fmul fast float %780, 0x3F70101020000000
  %782 = lshr i32 %771, 16
  %783 = and i32 %782, 255
  %784 = uitofp i32 %783 to float
  %785 = fmul fast float %784, 0x3F70101020000000
  %786 = bitcast float %710 to i32
  %787 = ashr i32 %786, 1
  %788 = sub nsw i32 1597463174, %787
  %789 = bitcast i32 %788 to float
  %790 = fmul fast float %710, 5.000000e-01
  %791 = fmul fast float %789, %789
  %792 = fmul fast float %791, %790
  %793 = fsub fast float 1.500000e+00, %792
  %794 = fmul fast float %789, %710
  %795 = fmul fast float %794, %793
  %796 = bitcast float %711 to i32
  %797 = ashr i32 %796, 1
  %798 = sub nsw i32 1597463174, %797
  %799 = bitcast i32 %798 to float
  %800 = fmul fast float %711, 5.000000e-01
  %801 = fmul fast float %799, %799
  %802 = fmul fast float %801, %800
  %803 = fsub fast float 1.500000e+00, %802
  %804 = fmul fast float %799, %711
  %805 = fmul fast float %804, %803
  %806 = bitcast float %712 to i32
  %807 = ashr i32 %806, 1
  %808 = sub nsw i32 1597463174, %807
  %809 = bitcast i32 %808 to float
  %810 = fmul fast float %712, 5.000000e-01
  %811 = fmul fast float %809, %809
  %812 = fmul fast float %811, %810
  %813 = fsub fast float 1.500000e+00, %812
  %814 = fmul fast float %809, %712
  %815 = fmul fast float %814, %813
  %816 = fsub fast float %795, %777
  %817 = fsub fast float %805, %781
  %818 = fsub fast float %815, %785
  %819 = fmul fast float %816, %745
  %820 = fmul fast float %817, %747
  %821 = fmul fast float %818, %752
  %822 = fadd fast float %819, %760
  %823 = fadd fast float %820, %764
  %824 = fadd fast float %821, %768
  %825 = call float @dx.op.unary.f32(i32 7, float %822)  ; Saturate(value)
  %826 = call float @dx.op.unary.f32(i32 7, float %823)  ; Saturate(value)
  %827 = call float @dx.op.unary.f32(i32 7, float %824)  ; Saturate(value)
  %828 = fmul fast float %825, %825
  %829 = fmul fast float %826, %826
  %830 = fmul fast float %827, %827
  %831 = fsub fast float %828, %710
  %832 = fsub fast float %829, %711
  %833 = fsub fast float %830, %712
  %834 = fmul fast float %831, %735
  %835 = fmul fast float %832, %735
  %836 = fmul fast float %833, %735
  %837 = fadd fast float %834, %710
  %838 = fadd fast float %835, %711
  %839 = fadd fast float %836, %712
  %840 = fadd fast float %757, %721
  %841 = fsub fast float %840, %774
  %842 = call float @dx.op.unary.f32(i32 7, float %841)  ; Saturate(value)
  %843 = fsub fast float %842, %721
  %844 = fmul fast float %843, %735
  %845 = fadd fast float %844, %721
  br label %899

; <label>:846                                     ; preds = %734
  %847 = and i32 %737, 134217728
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %883, label %849

; <label>:849                                     ; preds = %846
  %850 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %851 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %852 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %853 = fadd fast float %850, -5.000000e-01
  %854 = fadd fast float %851, -5.000000e-01
  %855 = fadd fast float %852, -5.000000e-01
  %856 = fmul fast float %853, %735
  %857 = fmul fast float %854, %735
  %858 = fmul fast float %855, %735
  %859 = fadd fast float %856, 5.000000e-01
  %860 = fadd fast float %857, 5.000000e-01
  %861 = fadd fast float %858, 5.000000e-01
  %862 = call float @dx.op.unary.f32(i32 24, float %710)  ; Sqrt(value)
  %863 = call float @dx.op.unary.f32(i32 24, float %711)  ; Sqrt(value)
  %864 = call float @dx.op.unary.f32(i32 24, float %712)  ; Sqrt(value)
  %865 = fmul fast float %859, 2.000000e+00
  %866 = fsub fast float 1.000000e+00, %865
  %867 = fmul fast float %866, %862
  %868 = fadd fast float %867, %865
  %869 = fmul fast float %868, %862
  %870 = fmul fast float %860, 2.000000e+00
  %871 = fsub fast float 1.000000e+00, %870
  %872 = fmul fast float %871, %863
  %873 = fadd fast float %872, %870
  %874 = fmul fast float %873, %863
  %875 = fmul fast float %861, 2.000000e+00
  %876 = fsub fast float 1.000000e+00, %875
  %877 = fmul fast float %876, %864
  %878 = fadd fast float %877, %875
  %879 = fmul fast float %878, %864
  %880 = fmul fast float %869, %869
  %881 = fmul fast float %874, %874
  %882 = fmul fast float %879, %879
  br label %899

; <label>:883                                     ; preds = %846
  %884 = fmul fast float %302, %302
  %885 = fmul fast float %306, %306
  %886 = fmul fast float %310, %310
  %887 = fadd fast float %884, -1.000000e+00
  %888 = fadd fast float %885, -1.000000e+00
  %889 = fadd fast float %886, -1.000000e+00
  %890 = fmul fast float %735, %887
  %891 = fmul fast float %735, %888
  %892 = fmul fast float %735, %889
  %893 = fadd fast float %890, 1.000000e+00
  %894 = fadd fast float %891, 1.000000e+00
  %895 = fadd fast float %892, 1.000000e+00
  %896 = fmul fast float %893, %710
  %897 = fmul fast float %894, %711
  %898 = fmul fast float %895, %712
  br label %899

; <label>:899                                     ; preds = %883, %849, %740, %695
  %900 = phi float [ %845, %740 ], [ %721, %849 ], [ %721, %883 ], [ 0x3FA23C0BE0000000, %695 ]
  %901 = phi float [ %837, %740 ], [ %880, %849 ], [ %896, %883 ], [ 1.000000e+00, %695 ]
  %902 = phi float [ %838, %740 ], [ %881, %849 ], [ %897, %883 ], [ 1.000000e+00, %695 ]
  %903 = phi float [ %839, %740 ], [ %882, %849 ], [ %898, %883 ], [ 1.000000e+00, %695 ]
  %904 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.i32 %904, 1
  %906 = and i32 %905, 1
  %907 = icmp ne i32 %906, 0
  %908 = add i32 %61, 356
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = and i32 %910, 32
  %912 = icmp ne i32 %911, 0
  %913 = and i1 %907, %912
  %914 = select i1 %913, float 1.000000e+00, float %901
  %915 = select i1 %913, float 0x3FD3333340000000, float %902
  %916 = select i1 %913, float 0x3FD3333340000000, float %903
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = and i32 %918, 32
  %920 = icmp eq i32 %919, 0
  br i1 %920, label %993, label %921

; <label>:921                                     ; preds = %899
  %922 = add i32 %61, 92
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = add i32 %61, 392
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = add i32 %927, 0
  %929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %928, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %930 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %929, %dx.types.Handle %112, float %623, float %624, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %931 = extractvalue %dx.types.ResRet.f32 %930, 0
  %932 = extractvalue %dx.types.ResRet.f32 %930, 1
  %933 = extractvalue %dx.types.ResRet.f32 %930, 2
  %934 = extractvalue %dx.types.ResRet.f32 %930, 3
  %935 = and i32 %924, 255
  %936 = uitofp i32 %935 to float
  %937 = lshr i32 %924, 8
  %938 = and i32 %937, 255
  %939 = uitofp i32 %938 to float
  %940 = lshr i32 %924, 16
  %941 = and i32 %940, 255
  %942 = uitofp i32 %941 to float
  %943 = fmul fast float %942, 0x3F70101000000000
  %944 = fmul fast float %931, %936
  %945 = fadd fast float %944, %939
  %946 = fmul fast float %945, 0x3F70101000000000
  %947 = fadd fast float %932, -5.000000e-01
  %948 = fadd fast float %934, -5.000000e-01
  %949 = fmul fast float %947, %943
  %950 = fmul fast float %948, %943
  %951 = fadd fast float %949, 5.000000e-01
  %952 = fadd fast float %950, 5.000000e-01
  %953 = fmul fast float %951, 2.000000e+00
  %954 = fadd fast float %953, -1.000000e+00
  %955 = fmul fast float %952, 2.000000e+00
  %956 = fadd fast float %955, -1.000000e+00
  %957 = fadd fast float %954, %956
  %958 = fmul fast float %957, 5.000000e-01
  %959 = fsub fast float %954, %956
  %960 = fmul fast float %959, 5.000000e-01
  %961 = call float @dx.op.unary.f32(i32 6, float %958)  ; FAbs(value)
  %962 = fsub fast float 1.000000e+00, %961
  %963 = call float @dx.op.unary.f32(i32 6, float %960)  ; FAbs(value)
  %964 = fsub fast float %962, %963
  %965 = call float @dx.op.dot3.f32(i32 55, float %958, float %960, float %964, float %958, float %960, float %964)  ; Dot3(ax,ay,az,bx,by,bz)
  %966 = call float @dx.op.unary.f32(i32 25, float %965)  ; Rsqrt(value)
  %967 = fmul fast float %958, %966
  %968 = fmul fast float %960, %966
  %969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.i32 %969, 0
  %971 = and i32 %970, 67108864
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %989, label %973

; <label>:973                                     ; preds = %921
  %974 = add i32 %61, 280
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = and i32 %976, 65535
  %978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %977)  ; LegacyF16ToF32(value)
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = and i32 %980, 65535
  %982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %981)  ; LegacyF16ToF32(value)
  %983 = lshr i32 %976, 16
  %984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %983)  ; LegacyF16ToF32(value)
  %985 = fsub fast float %946, %984
  %986 = fmul fast float %985, %978
  %987 = fadd fast float %986, %982
  %988 = call float @dx.op.unary.f32(i32 7, float %987)  ; Saturate(value)
  br label %989

; <label>:989                                     ; preds = %973, %921
  %990 = phi float [ %988, %973 ], [ %946, %921 ]
  %991 = call float @dx.op.dot2.f32(i32 54, float %967, float %968, float %527, float %528)  ; Dot2(ax,ay,bx,by)
  %992 = call float @dx.op.dot2.f32(i32 54, float %967, float %968, float %529, float %530)  ; Dot2(ax,ay,bx,by)
  br label %993

; <label>:993                                     ; preds = %989, %899
  %994 = phi float [ %990, %989 ], [ 0x3FD6666660000000, %899 ]
  %995 = phi float [ %991, %989 ], [ 0.000000e+00, %899 ]
  %996 = phi float [ %992, %989 ], [ 0.000000e+00, %899 ]
  %997 = phi float [ %933, %989 ], [ 1.000000e+00, %899 ]
  %998 = add i32 %61, 160
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = lshr i32 %1000, 22
  %1002 = shl nuw nsw i32 %1001, 5
  %1003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1002)  ; LegacyF16ToF32(value)
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = and i32 %1005, 64
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1041, label %1008

; <label>:1008                                    ; preds = %993
  %1009 = add i32 %61, 408
  %1010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.i32 %1010, 0
  %1012 = add i32 %1011, 0
  %1013 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1012, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.i32 %1014, 0
  %1016 = and i32 %1015, 131072
  %1017 = icmp eq i32 %1016, 0
  %1018 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1013, %dx.types.Handle %112, float %623, float %624, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1019 = extractvalue %dx.types.ResRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.ResRet.f32 %1018, 1
  %1021 = extractvalue %dx.types.ResRet.f32 %1018, 2
  %1022 = fmul fast float %1019, %290
  %1023 = fmul fast float %1020, %293
  %1024 = fmul fast float %1021, %296
  br i1 %1017, label %1031, label %1025

; <label>:1025                                    ; preds = %1008
  %1026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.f32 %1026, 0
  %1028 = fmul fast float %1027, %1022
  %1029 = fmul fast float %1027, %1023
  %1030 = fmul fast float %1027, %1024
  br label %1031

; <label>:1031                                    ; preds = %1025, %1008
  %1032 = phi float [ %1028, %1025 ], [ %1022, %1008 ]
  %1033 = phi float [ %1029, %1025 ], [ %1023, %1008 ]
  %1034 = phi float [ %1030, %1025 ], [ %1024, %1008 ]
  %1035 = fmul fast float %1032, %1003
  %1036 = select i1 %273, float %1035, float %1032
  %1037 = call float @dx.op.dot3.f32(i32 55, float %1036, float %1033, float %1034, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1038 = select i1 %273, float 0.000000e+00, float %1032
  %1039 = select i1 %273, float %1037, float %1033
  %1040 = select i1 %273, float 0.000000e+00, float %1034
  br label %1041

; <label>:1041                                    ; preds = %1031, %993
  %1042 = phi float [ %1038, %1031 ], [ 0.000000e+00, %993 ]
  %1043 = phi float [ %1039, %1031 ], [ 0.000000e+00, %993 ]
  %1044 = phi float [ %1040, %1031 ], [ 0.000000e+00, %993 ]
  %1045 = add i32 %61, 96
  %1046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.i32 %1046, 0
  %1048 = and i32 %1047, 255
  %1049 = uitofp i32 %1048 to float
  %1050 = lshr i32 %1047, 8
  %1051 = and i32 %1050, 255
  %1052 = uitofp i32 %1051 to float
  %1053 = call float @dx.op.dot3.f32(i32 55, float %914, float %915, float %916, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1054 = fmul fast float %1052, %1053
  %1055 = fadd fast float %1054, %1049
  %1056 = fmul fast float %1055, 0x3F70101020000000
  %1057 = call float @dx.op.unary.f32(i32 7, float %1056)  ; Saturate(value)
  br label %1058

; <label>:1058                                    ; preds = %1041, %509
  %1059 = phi float [ 0.000000e+00, %509 ], [ %995, %1041 ]
  %1060 = phi float [ 0.000000e+00, %509 ], [ %996, %1041 ]
  %1061 = phi float [ 0.000000e+00, %509 ], [ %1042, %1041 ]
  %1062 = phi float [ 0.000000e+00, %509 ], [ %1043, %1041 ]
  %1063 = phi float [ 0.000000e+00, %509 ], [ %1044, %1041 ]
  %1064 = phi float [ 0.000000e+00, %509 ], [ %914, %1041 ]
  %1065 = phi float [ 0.000000e+00, %509 ], [ %915, %1041 ]
  %1066 = phi float [ 0.000000e+00, %509 ], [ %916, %1041 ]
  %1067 = phi float [ 0.000000e+00, %509 ], [ %900, %1041 ]
  %1068 = phi float [ 0.000000e+00, %509 ], [ %696, %1041 ]
  %1069 = phi float [ 0.000000e+00, %509 ], [ %994, %1041 ]
  %1070 = phi float [ 0.000000e+00, %509 ], [ %997, %1041 ]
  %1071 = phi float [ 0.000000e+00, %509 ], [ %1057, %1041 ]
  br i1 %457, label %1798, label %1072

; <label>:1072                                    ; preds = %1058
  %1073 = icmp ult i32 %515, 2
  %1074 = add i32 %61, 40
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = add i32 %61, 44
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = or i32 %1079, %1076
  %1081 = icmp eq i32 %1080, 0
  br i1 %1081, label %1798, label %1082

; <label>:1082                                    ; preds = %1072
  %1083 = and i32 %1076, 262144
  %1084 = icmp ne i32 %1083, 0
  %1085 = select i1 %1084, float %67, float 1.000000e+00
  %1086 = select i1 %1084, float %68, float 0.000000e+00
  %1087 = select i1 %1084, float %69, float 0.000000e+00
  %1088 = select i1 %1084, float %70, float 1.000000e+00
  %1089 = select i1 %1084, float %71, float %94
  %1090 = select i1 %1084, float %72, float %95
  %1091 = add i32 %61, 300
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = lshr i32 %1093, 16
  %1095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1094)  ; LegacyF16ToF32(value)
  %1096 = fmul fast float %1095, 0x3F50624DE0000000
  %1097 = add i32 %61, 104
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = lshr i32 %1099, 16
  %1101 = and i32 %1100, 255
  %1102 = lshr i32 %1099, 24
  %1103 = add i32 %61, 308
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = and i32 %1105, 65535
  %1107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1106)  ; LegacyF16ToF32(value)
  %1108 = lshr i32 %1105, 16
  %1109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1108)  ; LegacyF16ToF32(value)
  %1110 = add i32 %61, 48
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = lshr i32 %1112, 22
  %1114 = shl nuw nsw i32 %1113, 5
  %1115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1114)  ; LegacyF16ToF32(value)
  %1116 = shl i32 %1112, 4
  %1117 = and i32 %1116, 32752
  %1118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1117)  ; LegacyF16ToF32(value)
  %1119 = lshr i32 %1112, 7
  %1120 = and i32 %1119, 32752
  %1121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1120)  ; LegacyF16ToF32(value)
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 3
  %1124 = fmul fast float %1123, 1.000000e+03
  %1125 = fmul fast float %367, %1124
  %1126 = call float @dx.op.unary.f32(i32 22, float %1125)  ; Frc(value)
  %1127 = fadd fast float %1126, %357
  %1128 = fmul fast float %368, %1124
  %1129 = call float @dx.op.unary.f32(i32 22, float %1128)  ; Frc(value)
  %1130 = fadd fast float %1129, %359
  %1131 = fmul fast float %1096, %1124
  %1132 = call float @dx.op.unary.f32(i32 22, float %1131)  ; Frc(value)
  %1133 = fmul fast float %1132, 0x401921FB60000000
  %1134 = fadd fast float %1133, %1115
  %1135 = call float @dx.op.unary.f32(i32 13, float %1134)  ; Sin(value)
  %1136 = call float @dx.op.unary.f32(i32 12, float %1134)  ; Cos(value)
  %1137 = fsub fast float -0.000000e+00, %1135
  %1138 = fadd fast float %1089, -5.000000e-01
  %1139 = fadd fast float %1090, -5.000000e-01
  %1140 = fmul fast float %1107, %1138
  %1141 = fmul fast float %1109, %1139
  %1142 = fadd fast float %1140, 5.000000e-01
  %1143 = fadd fast float %1141, 5.000000e-01
  %1144 = fmul fast float %1118, %1142
  %1145 = fmul fast float %1121, %1143
  %1146 = fmul fast float %1136, %1144
  %1147 = call float @dx.op.tertiary.f32(i32 46, float %1137, float %1145, float %1146)  ; FMad(a,b,c)
  %1148 = fmul fast float %1135, %1144
  %1149 = call float @dx.op.tertiary.f32(i32 46, float %1136, float %1145, float %1148)  ; FMad(a,b,c)
  %1150 = fadd fast float %1127, %1147
  %1151 = fadd fast float %1130, %1149
  %1152 = icmp ugt i32 %1101, 1
  %1153 = icmp ugt i32 %1099, 33554431
  %1154 = or i1 %1153, %1152
  br i1 %1154, label %1155, label %1180

; <label>:1155                                    ; preds = %1082
  %1156 = add i32 %61, 244
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = lshr i32 %1158, 16
  %1160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1159)  ; LegacyF16ToF32(value)
  %1161 = fmul fast float %1123, %1160
  %1162 = call float @dx.op.unary.f32(i32 22, float %1161)  ; Frc(value)
  %1163 = mul nuw nsw i32 %1101, %1102
  %1164 = uitofp i32 %1163 to float
  %1165 = fmul fast float %1162, %1164
  %1166 = call float @dx.op.unary.f32(i32 27, float %1165)  ; Round_ni(value)
  %1167 = fptoui float %1166 to i32
  %1168 = urem i32 %1167, %1101
  %1169 = udiv i32 %1167, %1102
  %1170 = call float @dx.op.unary.f32(i32 22, float %1150)  ; Frc(value)
  %1171 = call float @dx.op.unary.f32(i32 22, float %1151)  ; Frc(value)
  %1172 = uitofp i32 %1168 to float
  %1173 = uitofp i32 %1169 to float
  %1174 = fadd fast float %1170, %1172
  %1175 = fadd fast float %1171, %1173
  %1176 = uitofp i32 %1101 to float
  %1177 = uitofp i32 %1102 to float
  %1178 = fdiv fast float %1174, %1176
  %1179 = fdiv fast float %1175, %1177
  br label %1180

; <label>:1180                                    ; preds = %1155, %1082
  %1181 = phi float [ %1178, %1155 ], [ %1150, %1082 ]
  %1182 = phi float [ %1179, %1155 ], [ %1151, %1082 ]
  %1183 = and i32 %1076, 256
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1231, label %1185

; <label>:1185                                    ; preds = %1180
  %1186 = add i32 %61, 444
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = add i32 %1188, 0
  %1190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1189, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1191 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1190, %dx.types.Handle %113, float %1181, float %1182, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1192 = extractvalue %dx.types.ResRet.f32 %1191, 0
  %1193 = add i32 %61, 116
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = shl i32 %1195, 4
  %1197 = and i32 %1196, 32752
  %1198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1197)  ; LegacyF16ToF32(value)
  %1199 = lshr i32 %1195, 7
  %1200 = and i32 %1199, 32752
  %1201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1200)  ; LegacyF16ToF32(value)
  %1202 = fsub fast float 1.000000e+00, %512
  %1203 = call float @dx.op.binary.f32(i32 35, float %1202, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1204 = bitcast float %512 to i32
  %1205 = sitofp i32 %1204 to float
  %1206 = fadd fast float %1205, 0xC1CFBF8940000000
  %1207 = fmul fast float %1201, %1206
  %1208 = fadd fast float %1207, 0x41CFBF8940000000
  %1209 = fptosi float %1208 to i32
  %1210 = bitcast i32 %1209 to float
  %1211 = bitcast float %1203 to i32
  %1212 = sitofp i32 %1211 to float
  %1213 = fadd fast float %1212, 0xC1CFBF8940000000
  %1214 = fmul fast float %1213, %1201
  %1215 = fadd fast float %1214, 0x41CFBF8940000000
  %1216 = fptosi float %1215 to i32
  %1217 = bitcast i32 %1216 to float
  %1218 = fmul fast float %1210, %1198
  %1219 = fmul fast float %1217, %1198
  %1220 = fsub fast float %1203, %1218
  %1221 = fadd fast float %1219, %1203
  %1222 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1223 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1224 = fsub fast float %1192, %1222
  %1225 = fsub fast float %1223, %1222
  %1226 = bitcast float %1225 to i32
  %1227 = sub nsw i32 2129859010, %1226
  %1228 = bitcast i32 %1227 to float
  %1229 = fmul fast float %1228, %1224
  %1230 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  br label %1231

; <label>:1231                                    ; preds = %1185, %1180
  %1232 = phi float [ %1230, %1185 ], [ %512, %1180 ]
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = and i32 %1234, 128
  %1236 = icmp eq i32 %1235, 0
  br i1 %1236, label %1253, label %1237

; <label>:1237                                    ; preds = %1231
  %1238 = add i32 %61, 428
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1238, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = add i32 %1240, 0
  %1242 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1241, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1243 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1242, %dx.types.Handle %113, float %1181, float %1182, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = and i32 %1246, 524288
  %1248 = icmp ne i32 %1247, 0
  %1249 = fcmp fast ogt float %1244, 0x3FE0101020000000
  %1250 = select i1 %1249, float 1.000000e+00, float 0.000000e+00
  %1251 = select i1 %1248, float %1250, float %1244
  %1252 = fmul fast float %1251, %1232
  br label %1253

; <label>:1253                                    ; preds = %1237, %1231
  %1254 = phi float [ %1252, %1237 ], [ %1232, %1231 ]
  %1255 = fcmp fast ult float %1254, 0x3F70101020000000
  br i1 %1255, label %1798, label %1256

; <label>:1256                                    ; preds = %1253
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = and i32 %1258, 16
  %1260 = icmp eq i32 %1259, 0
  br i1 %1260, label %1459, label %1261

; <label>:1261                                    ; preds = %1256
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = add i32 %61, 380
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = add i32 %1266, 0
  %1268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1268, %dx.types.Handle %112, float %1181, float %1182, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  %1271 = extractvalue %dx.types.ResRet.f32 %1269, 1
  %1272 = extractvalue %dx.types.ResRet.f32 %1269, 2
  %1273 = extractvalue %dx.types.ResRet.f32 %1269, 3
  %1274 = and i32 %1263, 255
  %1275 = uitofp i32 %1274 to float
  %1276 = lshr i32 %1263, 8
  %1277 = and i32 %1276, 255
  %1278 = uitofp i32 %1277 to float
  %1279 = fmul fast float %1273, %1275
  %1280 = fadd fast float %1279, %1278
  %1281 = fmul fast float %1280, 0x3F70101000000000
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = and i32 %1283, 512
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1294, label %1286

; <label>:1286                                    ; preds = %1261
  %1287 = add i32 %61, 460
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = add i32 %1289, 0
  %1291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1290, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1292 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1291, %dx.types.Handle %113, float %1181, float %1182, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1293 = extractvalue %dx.types.ResRet.f32 %1292, 0
  br label %1294

; <label>:1294                                    ; preds = %1286, %1261
  %1295 = phi float [ %1293, %1286 ], [ 1.000000e+00, %1261 ]
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = and i32 %1297, 33554432
  %1299 = icmp eq i32 %1298, 0
  br i1 %1299, label %1406, label %1300

; <label>:1300                                    ; preds = %1294
  %1301 = add i32 %61, 240
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = and i32 %1303, 65535
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = lshr i32 %1303, 16
  %1307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1306)  ; LegacyF16ToF32(value)
  %1308 = add i32 %61, 244
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = and i32 %1310, 65535
  %1312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1311)  ; LegacyF16ToF32(value)
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = lshr i32 %1314, 24
  %1316 = uitofp i32 %1315 to float
  %1317 = fmul fast float %1316, 0x3F70101020000000
  %1318 = and i32 %1314, 255
  %1319 = uitofp i32 %1318 to float
  %1320 = fmul fast float %1319, 0x3F70101020000000
  %1321 = lshr i32 %1314, 8
  %1322 = and i32 %1321, 255
  %1323 = uitofp i32 %1322 to float
  %1324 = fmul fast float %1323, 0x3F70101020000000
  %1325 = lshr i32 %1314, 16
  %1326 = and i32 %1325, 255
  %1327 = uitofp i32 %1326 to float
  %1328 = fmul fast float %1327, 0x3F70101020000000
  %1329 = add i32 %61, 236
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = lshr i32 %1331, 24
  %1333 = uitofp i32 %1332 to float
  %1334 = fmul fast float %1333, 0x3F70101020000000
  %1335 = and i32 %1331, 255
  %1336 = uitofp i32 %1335 to float
  %1337 = fmul fast float %1336, 0x3F70101020000000
  %1338 = lshr i32 %1331, 8
  %1339 = and i32 %1338, 255
  %1340 = uitofp i32 %1339 to float
  %1341 = fmul fast float %1340, 0x3F70101020000000
  %1342 = lshr i32 %1331, 16
  %1343 = and i32 %1342, 255
  %1344 = uitofp i32 %1343 to float
  %1345 = fmul fast float %1344, 0x3F70101020000000
  %1346 = bitcast float %1270 to i32
  %1347 = ashr i32 %1346, 1
  %1348 = sub nsw i32 1597463174, %1347
  %1349 = bitcast i32 %1348 to float
  %1350 = fmul fast float %1270, 5.000000e-01
  %1351 = fmul fast float %1349, %1349
  %1352 = fmul fast float %1351, %1350
  %1353 = fsub fast float 1.500000e+00, %1352
  %1354 = fmul fast float %1349, %1270
  %1355 = fmul fast float %1354, %1353
  %1356 = bitcast float %1271 to i32
  %1357 = ashr i32 %1356, 1
  %1358 = sub nsw i32 1597463174, %1357
  %1359 = bitcast i32 %1358 to float
  %1360 = fmul fast float %1271, 5.000000e-01
  %1361 = fmul fast float %1359, %1359
  %1362 = fmul fast float %1361, %1360
  %1363 = fsub fast float 1.500000e+00, %1362
  %1364 = fmul fast float %1359, %1271
  %1365 = fmul fast float %1364, %1363
  %1366 = bitcast float %1272 to i32
  %1367 = ashr i32 %1366, 1
  %1368 = sub nsw i32 1597463174, %1367
  %1369 = bitcast i32 %1368 to float
  %1370 = fmul fast float %1272, 5.000000e-01
  %1371 = fmul fast float %1369, %1369
  %1372 = fmul fast float %1371, %1370
  %1373 = fsub fast float 1.500000e+00, %1372
  %1374 = fmul fast float %1369, %1272
  %1375 = fmul fast float %1374, %1373
  %1376 = fsub fast float %1355, %1337
  %1377 = fsub fast float %1365, %1341
  %1378 = fsub fast float %1375, %1345
  %1379 = fmul fast float %1376, %1305
  %1380 = fmul fast float %1377, %1307
  %1381 = fmul fast float %1378, %1312
  %1382 = fadd fast float %1379, %1320
  %1383 = fadd fast float %1380, %1324
  %1384 = fadd fast float %1381, %1328
  %1385 = call float @dx.op.unary.f32(i32 7, float %1382)  ; Saturate(value)
  %1386 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  %1387 = call float @dx.op.unary.f32(i32 7, float %1384)  ; Saturate(value)
  %1388 = fmul fast float %1385, %1385
  %1389 = fmul fast float %1386, %1386
  %1390 = fmul fast float %1387, %1387
  %1391 = fsub fast float %1388, %1270
  %1392 = fsub fast float %1389, %1271
  %1393 = fsub fast float %1390, %1272
  %1394 = fmul fast float %1391, %1295
  %1395 = fmul fast float %1392, %1295
  %1396 = fmul fast float %1393, %1295
  %1397 = fadd fast float %1394, %1270
  %1398 = fadd fast float %1395, %1271
  %1399 = fadd fast float %1396, %1272
  %1400 = fadd fast float %1317, %1281
  %1401 = fsub fast float %1400, %1334
  %1402 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1403 = fsub fast float %1402, %1281
  %1404 = fmul fast float %1403, %1295
  %1405 = fadd fast float %1404, %1281
  br label %1459

; <label>:1406                                    ; preds = %1294
  %1407 = and i32 %1297, 134217728
  %1408 = icmp eq i32 %1407, 0
  br i1 %1408, label %1443, label %1409

; <label>:1409                                    ; preds = %1406
  %1410 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %1411 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %1412 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %1413 = fadd fast float %1410, -5.000000e-01
  %1414 = fadd fast float %1411, -5.000000e-01
  %1415 = fadd fast float %1412, -5.000000e-01
  %1416 = fmul fast float %1413, %1295
  %1417 = fmul fast float %1414, %1295
  %1418 = fmul fast float %1415, %1295
  %1419 = fadd fast float %1416, 5.000000e-01
  %1420 = fadd fast float %1417, 5.000000e-01
  %1421 = fadd fast float %1418, 5.000000e-01
  %1422 = call float @dx.op.unary.f32(i32 24, float %1270)  ; Sqrt(value)
  %1423 = call float @dx.op.unary.f32(i32 24, float %1271)  ; Sqrt(value)
  %1424 = call float @dx.op.unary.f32(i32 24, float %1272)  ; Sqrt(value)
  %1425 = fmul fast float %1419, 2.000000e+00
  %1426 = fsub fast float 1.000000e+00, %1425
  %1427 = fmul fast float %1426, %1422
  %1428 = fadd fast float %1427, %1425
  %1429 = fmul fast float %1428, %1422
  %1430 = fmul fast float %1420, 2.000000e+00
  %1431 = fsub fast float 1.000000e+00, %1430
  %1432 = fmul fast float %1431, %1423
  %1433 = fadd fast float %1432, %1430
  %1434 = fmul fast float %1433, %1423
  %1435 = fmul fast float %1421, 2.000000e+00
  %1436 = fsub fast float 1.000000e+00, %1435
  %1437 = fmul fast float %1436, %1424
  %1438 = fadd fast float %1437, %1435
  %1439 = fmul fast float %1438, %1424
  %1440 = fmul fast float %1429, %1429
  %1441 = fmul fast float %1434, %1434
  %1442 = fmul fast float %1439, %1439
  br label %1459

; <label>:1443                                    ; preds = %1406
  %1444 = fmul fast float %344, %344
  %1445 = fmul fast float %348, %348
  %1446 = fmul fast float %352, %352
  %1447 = fadd fast float %1444, -1.000000e+00
  %1448 = fadd fast float %1445, -1.000000e+00
  %1449 = fadd fast float %1446, -1.000000e+00
  %1450 = fmul fast float %1295, %1447
  %1451 = fmul fast float %1295, %1448
  %1452 = fmul fast float %1295, %1449
  %1453 = fadd fast float %1450, 1.000000e+00
  %1454 = fadd fast float %1451, 1.000000e+00
  %1455 = fadd fast float %1452, 1.000000e+00
  %1456 = fmul fast float %1453, %1270
  %1457 = fmul fast float %1454, %1271
  %1458 = fmul fast float %1455, %1272
  br label %1459

; <label>:1459                                    ; preds = %1443, %1409, %1300, %1256
  %1460 = phi float [ %1405, %1300 ], [ %1281, %1409 ], [ %1281, %1443 ], [ 0x3FA23C0BE0000000, %1256 ]
  %1461 = phi float [ %1397, %1300 ], [ %1440, %1409 ], [ %1456, %1443 ], [ 1.000000e+00, %1256 ]
  %1462 = phi float [ %1398, %1300 ], [ %1441, %1409 ], [ %1457, %1443 ], [ 1.000000e+00, %1256 ]
  %1463 = phi float [ %1399, %1300 ], [ %1442, %1409 ], [ %1458, %1443 ], [ 1.000000e+00, %1256 ]
  %1464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1465 = extractvalue %dx.types.CBufRet.i32 %1464, 1
  %1466 = and i32 %1465, 1
  %1467 = icmp ne i32 %1466, 0
  %1468 = add i32 %61, 356
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 32
  %1472 = icmp ne i32 %1471, 0
  %1473 = and i1 %1467, %1472
  %1474 = select i1 %1473, float 1.000000e+00, float %1461
  %1475 = select i1 %1473, float 0x3FD3333340000000, float %1462
  %1476 = select i1 %1473, float 0x3FD3333340000000, float %1463
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = and i32 %1478, 32
  %1480 = icmp eq i32 %1479, 0
  br i1 %1480, label %1553, label %1481

; <label>:1481                                    ; preds = %1459
  %1482 = add i32 %61, 108
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = add i32 %61, 396
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = add i32 %1487, 0
  %1489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1490 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1489, %dx.types.Handle %112, float %1181, float %1182, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1491 = extractvalue %dx.types.ResRet.f32 %1490, 0
  %1492 = extractvalue %dx.types.ResRet.f32 %1490, 1
  %1493 = extractvalue %dx.types.ResRet.f32 %1490, 2
  %1494 = extractvalue %dx.types.ResRet.f32 %1490, 3
  %1495 = and i32 %1484, 255
  %1496 = uitofp i32 %1495 to float
  %1497 = lshr i32 %1484, 8
  %1498 = and i32 %1497, 255
  %1499 = uitofp i32 %1498 to float
  %1500 = lshr i32 %1484, 16
  %1501 = and i32 %1500, 255
  %1502 = uitofp i32 %1501 to float
  %1503 = fmul fast float %1502, 0x3F70101000000000
  %1504 = fmul fast float %1491, %1496
  %1505 = fadd fast float %1504, %1499
  %1506 = fmul fast float %1505, 0x3F70101000000000
  %1507 = fadd fast float %1492, -5.000000e-01
  %1508 = fadd fast float %1494, -5.000000e-01
  %1509 = fmul fast float %1507, %1503
  %1510 = fmul fast float %1508, %1503
  %1511 = fadd fast float %1509, 5.000000e-01
  %1512 = fadd fast float %1510, 5.000000e-01
  %1513 = fmul fast float %1511, 2.000000e+00
  %1514 = fadd fast float %1513, -1.000000e+00
  %1515 = fmul fast float %1512, 2.000000e+00
  %1516 = fadd fast float %1515, -1.000000e+00
  %1517 = fadd fast float %1514, %1516
  %1518 = fmul fast float %1517, 5.000000e-01
  %1519 = fsub fast float %1514, %1516
  %1520 = fmul fast float %1519, 5.000000e-01
  %1521 = call float @dx.op.unary.f32(i32 6, float %1518)  ; FAbs(value)
  %1522 = fsub fast float 1.000000e+00, %1521
  %1523 = call float @dx.op.unary.f32(i32 6, float %1520)  ; FAbs(value)
  %1524 = fsub fast float %1522, %1523
  %1525 = call float @dx.op.dot3.f32(i32 55, float %1518, float %1520, float %1524, float %1518, float %1520, float %1524)  ; Dot3(ax,ay,az,bx,by,bz)
  %1526 = call float @dx.op.unary.f32(i32 25, float %1525)  ; Rsqrt(value)
  %1527 = fmul fast float %1518, %1526
  %1528 = fmul fast float %1520, %1526
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = and i32 %1530, 67108864
  %1532 = icmp eq i32 %1531, 0
  br i1 %1532, label %1549, label %1533

; <label>:1533                                    ; preds = %1481
  %1534 = add i32 %61, 296
  %1535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1534, i32 undef)  ; BufferLoad(srv,index,wot)
  %1536 = extractvalue %dx.types.ResRet.i32 %1535, 0
  %1537 = and i32 %1536, 65535
  %1538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1537)  ; LegacyF16ToF32(value)
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = and i32 %1540, 65535
  %1542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1541)  ; LegacyF16ToF32(value)
  %1543 = lshr i32 %1536, 16
  %1544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1543)  ; LegacyF16ToF32(value)
  %1545 = fsub fast float %1506, %1544
  %1546 = fmul fast float %1545, %1538
  %1547 = fadd fast float %1546, %1542
  %1548 = call float @dx.op.unary.f32(i32 7, float %1547)  ; Saturate(value)
  br label %1549

; <label>:1549                                    ; preds = %1533, %1481
  %1550 = phi float [ %1548, %1533 ], [ %1506, %1481 ]
  %1551 = call float @dx.op.dot2.f32(i32 54, float %1527, float %1528, float %1085, float %1086)  ; Dot2(ax,ay,bx,by)
  %1552 = call float @dx.op.dot2.f32(i32 54, float %1527, float %1528, float %1087, float %1088)  ; Dot2(ax,ay,bx,by)
  br label %1553

; <label>:1553                                    ; preds = %1549, %1459
  %1554 = phi float [ %1550, %1549 ], [ 0x3FD6666660000000, %1459 ]
  %1555 = phi float [ %1551, %1549 ], [ 0.000000e+00, %1459 ]
  %1556 = phi float [ %1552, %1549 ], [ 0.000000e+00, %1459 ]
  %1557 = phi float [ %1493, %1549 ], [ 1.000000e+00, %1459 ]
  %1558 = add i32 %61, 176
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1558, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = lshr i32 %1560, 22
  %1562 = shl nuw nsw i32 %1561, 5
  %1563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1562)  ; LegacyF16ToF32(value)
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = and i32 %1565, 64
  %1567 = icmp eq i32 %1566, 0
  br i1 %1567, label %1601, label %1568

; <label>:1568                                    ; preds = %1553
  %1569 = add i32 %61, 412
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = add i32 %1571, 0
  %1573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1572, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = and i32 %1575, 131072
  %1577 = icmp eq i32 %1576, 0
  %1578 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1573, %dx.types.Handle %112, float %1181, float %1182, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1579 = extractvalue %dx.types.ResRet.f32 %1578, 0
  %1580 = extractvalue %dx.types.ResRet.f32 %1578, 1
  %1581 = extractvalue %dx.types.ResRet.f32 %1578, 2
  %1582 = fmul fast float %1579, %332
  %1583 = fmul fast float %1580, %335
  %1584 = fmul fast float %1581, %338
  br i1 %1577, label %1591, label %1585

; <label>:1585                                    ; preds = %1568
  %1586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1587 = extractvalue %dx.types.CBufRet.f32 %1586, 0
  %1588 = fmul fast float %1587, %1582
  %1589 = fmul fast float %1587, %1583
  %1590 = fmul fast float %1587, %1584
  br label %1591

; <label>:1591                                    ; preds = %1585, %1568
  %1592 = phi float [ %1588, %1585 ], [ %1582, %1568 ]
  %1593 = phi float [ %1589, %1585 ], [ %1583, %1568 ]
  %1594 = phi float [ %1590, %1585 ], [ %1584, %1568 ]
  %1595 = fmul fast float %1592, %1563
  %1596 = select i1 %273, float %1595, float %1592
  %1597 = call float @dx.op.dot3.f32(i32 55, float %1596, float %1593, float %1594, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1598 = select i1 %273, float 0.000000e+00, float %1592
  %1599 = select i1 %273, float %1597, float %1593
  %1600 = select i1 %273, float 0.000000e+00, float %1594
  br label %1601

; <label>:1601                                    ; preds = %1591, %1553
  %1602 = phi float [ %1598, %1591 ], [ 0.000000e+00, %1553 ]
  %1603 = phi float [ %1599, %1591 ], [ 0.000000e+00, %1553 ]
  %1604 = phi float [ %1600, %1591 ], [ 0.000000e+00, %1553 ]
  %1605 = add i32 %61, 112
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1605, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = and i32 %1607, 255
  %1609 = uitofp i32 %1608 to float
  %1610 = lshr i32 %1607, 8
  %1611 = and i32 %1610, 255
  %1612 = uitofp i32 %1611 to float
  %1613 = call float @dx.op.dot3.f32(i32 55, float %1474, float %1475, float %1476, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1614 = fmul fast float %1612, %1613
  %1615 = fadd fast float %1614, %1609
  %1616 = fmul fast float %1615, 0x3F70101020000000
  %1617 = call float @dx.op.unary.f32(i32 7, float %1616)  ; Saturate(value)
  br i1 %1073, label %1618, label %1626

; <label>:1618                                    ; preds = %1601
  %1619 = fsub fast float 1.000000e+00, %1254
  %1620 = fmul fast float %1619, %1064
  %1621 = fmul fast float %1619, %1065
  %1622 = fmul fast float %1619, %1066
  %1623 = fmul fast float %1619, %1061
  %1624 = fmul fast float %1619, %1062
  %1625 = fmul fast float %1619, %1063
  br label %1626

; <label>:1626                                    ; preds = %1618, %1601
  %1627 = phi float [ %1623, %1618 ], [ %1061, %1601 ]
  %1628 = phi float [ %1624, %1618 ], [ %1062, %1601 ]
  %1629 = phi float [ %1625, %1618 ], [ %1063, %1601 ]
  %1630 = phi float [ %1620, %1618 ], [ %1064, %1601 ]
  %1631 = phi float [ %1621, %1618 ], [ %1065, %1601 ]
  %1632 = phi float [ %1622, %1618 ], [ %1066, %1601 ]
  %1633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1634 = extractvalue %dx.types.ResRet.i32 %1633, 0
  %1635 = and i32 %1634, 3
  %1636 = icmp eq i32 %1635, 3
  br i1 %1636, label %1715, label %1637

; <label>:1637                                    ; preds = %1626
  %1638 = and i32 %1634, 16
  %1639 = icmp ne i32 %1638, 0
  %1640 = select i1 %1639, float %1254, float 0.000000e+00
  %1641 = icmp eq i32 %1635, 0
  br i1 %1641, label %1642, label %1670

; <label>:1642                                    ; preds = %1637
  %1643 = and i32 %1634, 64
  %1644 = icmp ne i32 %1643, 0
  %1645 = select i1 %1644, float %1254, float 0.000000e+00
  %1646 = fsub fast float %1474, %1630
  %1647 = fsub fast float %1475, %1631
  %1648 = fsub fast float %1476, %1632
  %1649 = fmul fast float %1640, %1646
  %1650 = fmul fast float %1640, %1647
  %1651 = fmul fast float %1640, %1648
  %1652 = fadd fast float %1649, %1630
  %1653 = fadd fast float %1650, %1631
  %1654 = fadd fast float %1651, %1632
  %1655 = fsub fast float %1460, %1067
  %1656 = fmul fast float %1640, %1655
  %1657 = fadd fast float %1656, %1067
  %1658 = fsub fast float %1602, %1627
  %1659 = fsub fast float %1603, %1628
  %1660 = fsub fast float %1604, %1629
  %1661 = fmul fast float %1645, %1658
  %1662 = fmul fast float %1645, %1659
  %1663 = fmul fast float %1645, %1660
  %1664 = fadd fast float %1661, %1627
  %1665 = fadd fast float %1662, %1628
  %1666 = fadd fast float %1663, %1629
  %1667 = fsub fast float %1617, %1071
  %1668 = fmul fast float %1640, %1667
  %1669 = fadd fast float %1668, %1071
  br label %1715

; <label>:1670                                    ; preds = %1637
  %1671 = icmp eq i32 %1635, 1
  br i1 %1671, label %1672, label %1685

; <label>:1672                                    ; preds = %1670
  %1673 = fadd fast float %1474, -1.000000e+00
  %1674 = fadd fast float %1475, -1.000000e+00
  %1675 = fadd fast float %1476, -1.000000e+00
  %1676 = fmul fast float %1640, %1673
  %1677 = fmul fast float %1640, %1674
  %1678 = fmul fast float %1640, %1675
  %1679 = fadd fast float %1676, 1.000000e+00
  %1680 = fadd fast float %1677, 1.000000e+00
  %1681 = fadd fast float %1678, 1.000000e+00
  %1682 = fmul fast float %1679, %1630
  %1683 = fmul fast float %1680, %1631
  %1684 = fmul fast float %1681, %1632
  br label %1715

; <label>:1685                                    ; preds = %1670
  %1686 = icmp eq i32 %1635, 2
  br i1 %1686, label %1687, label %1715

; <label>:1687                                    ; preds = %1685
  %1688 = call float @dx.op.unary.f32(i32 24, float %1474)  ; Sqrt(value)
  %1689 = call float @dx.op.unary.f32(i32 24, float %1475)  ; Sqrt(value)
  %1690 = call float @dx.op.unary.f32(i32 24, float %1476)  ; Sqrt(value)
  %1691 = fadd fast float %1688, -5.000000e-01
  %1692 = fadd fast float %1689, -5.000000e-01
  %1693 = fadd fast float %1690, -5.000000e-01
  %1694 = fmul fast float %1691, %1640
  %1695 = fmul fast float %1692, %1640
  %1696 = fmul fast float %1693, %1640
  %1697 = fadd fast float %1694, 5.000000e-01
  %1698 = fadd fast float %1695, 5.000000e-01
  %1699 = fadd fast float %1696, 5.000000e-01
  %1700 = fmul fast float %1697, 2.000000e+00
  %1701 = fsub fast float 1.000000e+00, %1700
  %1702 = fmul fast float %1701, %1630
  %1703 = fadd fast float %1702, %1700
  %1704 = fmul fast float %1703, %1630
  %1705 = fmul fast float %1698, 2.000000e+00
  %1706 = fsub fast float 1.000000e+00, %1705
  %1707 = fmul fast float %1706, %1631
  %1708 = fadd fast float %1707, %1705
  %1709 = fmul fast float %1708, %1631
  %1710 = fmul fast float %1699, 2.000000e+00
  %1711 = fsub fast float 1.000000e+00, %1710
  %1712 = fmul fast float %1711, %1632
  %1713 = fadd fast float %1712, %1710
  %1714 = fmul fast float %1713, %1632
  br label %1715

; <label>:1715                                    ; preds = %1687, %1685, %1672, %1642, %1626
  %1716 = phi float [ %1627, %1626 ], [ %1627, %1687 ], [ %1627, %1685 ], [ %1627, %1672 ], [ %1664, %1642 ]
  %1717 = phi float [ %1628, %1626 ], [ %1628, %1687 ], [ %1628, %1685 ], [ %1628, %1672 ], [ %1665, %1642 ]
  %1718 = phi float [ %1629, %1626 ], [ %1629, %1687 ], [ %1629, %1685 ], [ %1629, %1672 ], [ %1666, %1642 ]
  %1719 = phi float [ %1630, %1626 ], [ %1704, %1687 ], [ %1630, %1685 ], [ %1682, %1672 ], [ %1652, %1642 ]
  %1720 = phi float [ %1631, %1626 ], [ %1709, %1687 ], [ %1631, %1685 ], [ %1683, %1672 ], [ %1653, %1642 ]
  %1721 = phi float [ %1632, %1626 ], [ %1714, %1687 ], [ %1632, %1685 ], [ %1684, %1672 ], [ %1654, %1642 ]
  %1722 = phi float [ %1067, %1626 ], [ %1067, %1687 ], [ %1067, %1685 ], [ %1067, %1672 ], [ %1657, %1642 ]
  %1723 = phi float [ %1071, %1626 ], [ %1071, %1687 ], [ %1071, %1685 ], [ %1071, %1672 ], [ %1669, %1642 ]
  %1724 = and i32 %1634, 12
  %1725 = icmp eq i32 %1724, 12
  br i1 %1725, label %1798, label %1726

; <label>:1726                                    ; preds = %1715
  %1727 = and i32 %1634, 2097184
  %1728 = icmp eq i32 %1727, 2097184
  %1729 = select i1 %1728, float %1254, float 0.000000e+00
  %1730 = and i32 %1634, 4194336
  %1731 = icmp eq i32 %1730, 4194336
  %1732 = select i1 %1731, float %1254, float 0.000000e+00
  %1733 = and i32 %1634, 8388640
  %1734 = icmp eq i32 %1733, 8388640
  %1735 = select i1 %1734, float %1254, float 0.000000e+00
  %1736 = icmp eq i32 %1724, 0
  br i1 %1736, label %1737, label %1750

; <label>:1737                                    ; preds = %1726
  %1738 = fsub fast float %1555, %1059
  %1739 = fsub fast float %1556, %1060
  %1740 = fmul fast float %1729, %1738
  %1741 = fmul fast float %1729, %1739
  %1742 = fadd fast float %1740, %1059
  %1743 = fadd fast float %1741, %1060
  %1744 = fsub fast float %1557, %1070
  %1745 = fmul fast float %1732, %1744
  %1746 = fadd fast float %1745, %1070
  %1747 = fsub fast float %1554, %1069
  %1748 = fmul fast float %1735, %1747
  %1749 = fadd fast float %1748, %1069
  br label %1798

; <label>:1750                                    ; preds = %1726
  %1751 = icmp eq i32 %1724, 4
  br i1 %1751, label %1752, label %1784

; <label>:1752                                    ; preds = %1750
  %1753 = fmul fast float %1729, %1555
  %1754 = fmul fast float %1729, %1556
  %1755 = fadd fast float %1753, %1059
  %1756 = fadd fast float %1754, %1060
  %1757 = call float @dx.op.binary.f32(i32 36, float %1070, float %1557)  ; FMin(a,b)
  %1758 = fsub fast float %1757, %1070
  %1759 = fmul fast float %1758, %1732
  %1760 = fadd fast float %1759, %1070
  %1761 = fadd fast float %1554, %1069
  %1762 = fmul fast float %1761, 0x3FF337FAE0000000
  %1763 = fmul fast float %1069, %1069
  %1764 = fmul fast float %1554, %1554
  %1765 = fadd fast float %1764, %1763
  %1766 = fmul fast float %1765, 0x3FE5152B00000000
  %1767 = fmul fast float %1069, 0xBFCC1F85E0000000
  %1768 = fmul fast float %1767, %1554
  %1769 = fadd fast float %1768, 0xBFE1363700000000
  %1770 = fadd fast float %1769, %1762
  %1771 = fsub fast float %1770, %1766
  %1772 = fmul fast float %1761, 0x3FBA6F0D00000000
  %1773 = fmul fast float %1765, 0x3FD0432880000000
  %1774 = fmul fast float %1069, 0xBFEF110800000000
  %1775 = fmul fast float %1774, %1554
  %1776 = fadd fast float %1775, 1.000000e+00
  %1777 = fsub fast float %1776, %1772
  %1778 = fadd fast float %1777, %1773
  %1779 = fdiv fast float %1771, %1778
  %1780 = call float @dx.op.unary.f32(i32 7, float %1779)  ; Saturate(value)
  %1781 = fsub fast float %1780, %1069
  %1782 = fmul fast float %1781, %1735
  %1783 = fadd fast float %1782, %1069
  br label %1798

; <label>:1784                                    ; preds = %1750
  %1785 = icmp eq i32 %1724, 8
  br i1 %1785, label %1786, label %1798

; <label>:1786                                    ; preds = %1784
  %1787 = fmul fast float %1729, %1555
  %1788 = fmul fast float %1729, %1556
  %1789 = fadd fast float %1787, %1059
  %1790 = fadd fast float %1788, %1060
  %1791 = call float @dx.op.binary.f32(i32 36, float %1070, float %1557)  ; FMin(a,b)
  %1792 = fsub fast float %1791, %1070
  %1793 = fmul fast float %1792, %1732
  %1794 = fadd fast float %1793, %1070
  %1795 = fsub fast float %1554, %1069
  %1796 = fmul fast float %1735, %1795
  %1797 = fadd fast float %1796, %1069
  br label %1798

; <label>:1798                                    ; preds = %1786, %1784, %1752, %1737, %1715, %1253, %1072, %1058
  %1799 = phi float [ %1059, %1715 ], [ %1059, %1253 ], [ %1059, %1058 ], [ %1789, %1786 ], [ %1059, %1784 ], [ %1755, %1752 ], [ %1742, %1737 ], [ %1059, %1072 ]
  %1800 = phi float [ %1060, %1715 ], [ %1060, %1253 ], [ %1060, %1058 ], [ %1790, %1786 ], [ %1060, %1784 ], [ %1756, %1752 ], [ %1743, %1737 ], [ %1060, %1072 ]
  %1801 = phi float [ %1716, %1715 ], [ %1061, %1253 ], [ %1061, %1058 ], [ %1716, %1786 ], [ %1716, %1784 ], [ %1716, %1752 ], [ %1716, %1737 ], [ %1061, %1072 ]
  %1802 = phi float [ %1717, %1715 ], [ %1062, %1253 ], [ %1062, %1058 ], [ %1717, %1786 ], [ %1717, %1784 ], [ %1717, %1752 ], [ %1717, %1737 ], [ %1062, %1072 ]
  %1803 = phi float [ %1718, %1715 ], [ %1063, %1253 ], [ %1063, %1058 ], [ %1718, %1786 ], [ %1718, %1784 ], [ %1718, %1752 ], [ %1718, %1737 ], [ %1063, %1072 ]
  %1804 = phi float [ %1719, %1715 ], [ %1064, %1253 ], [ %1064, %1058 ], [ %1719, %1786 ], [ %1719, %1784 ], [ %1719, %1752 ], [ %1719, %1737 ], [ %1064, %1072 ]
  %1805 = phi float [ %1720, %1715 ], [ %1065, %1253 ], [ %1065, %1058 ], [ %1720, %1786 ], [ %1720, %1784 ], [ %1720, %1752 ], [ %1720, %1737 ], [ %1065, %1072 ]
  %1806 = phi float [ %1721, %1715 ], [ %1066, %1253 ], [ %1066, %1058 ], [ %1721, %1786 ], [ %1721, %1784 ], [ %1721, %1752 ], [ %1721, %1737 ], [ %1066, %1072 ]
  %1807 = phi float [ %1722, %1715 ], [ %1067, %1253 ], [ %1067, %1058 ], [ %1722, %1786 ], [ %1722, %1784 ], [ %1722, %1752 ], [ %1722, %1737 ], [ %1067, %1072 ]
  %1808 = phi float [ %1069, %1715 ], [ %1069, %1253 ], [ %1069, %1058 ], [ %1797, %1786 ], [ %1069, %1784 ], [ %1783, %1752 ], [ %1749, %1737 ], [ %1069, %1072 ]
  %1809 = phi float [ %1070, %1715 ], [ %1070, %1253 ], [ %1070, %1058 ], [ %1794, %1786 ], [ %1070, %1784 ], [ %1760, %1752 ], [ %1746, %1737 ], [ %1070, %1072 ]
  %1810 = phi float [ %1723, %1715 ], [ %1071, %1253 ], [ %1071, %1058 ], [ %1723, %1786 ], [ %1723, %1784 ], [ %1723, %1752 ], [ %1723, %1737 ], [ %1071, %1072 ]
  br i1 %459, label %2537, label %1811

; <label>:1811                                    ; preds = %1798
  %1812 = icmp ult i32 %515, 3
  %1813 = add i32 %61, 56
  %1814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1815 = extractvalue %dx.types.ResRet.i32 %1814, 0
  %1816 = add i32 %61, 60
  %1817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.i32 %1817, 0
  %1819 = or i32 %1818, %1815
  %1820 = icmp eq i32 %1819, 0
  br i1 %1820, label %2537, label %1821

; <label>:1821                                    ; preds = %1811
  %1822 = and i32 %1815, 262144
  %1823 = icmp ne i32 %1822, 0
  %1824 = select i1 %1823, float %67, float 1.000000e+00
  %1825 = select i1 %1823, float %68, float 0.000000e+00
  %1826 = select i1 %1823, float %69, float 0.000000e+00
  %1827 = select i1 %1823, float %70, float 1.000000e+00
  %1828 = select i1 %1823, float %71, float %94
  %1829 = select i1 %1823, float %72, float %95
  %1830 = add i32 %61, 316
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = lshr i32 %1832, 16
  %1834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1833)  ; LegacyF16ToF32(value)
  %1835 = fmul fast float %1834, 0x3F50624DE0000000
  %1836 = add i32 %61, 120
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = lshr i32 %1838, 16
  %1840 = and i32 %1839, 255
  %1841 = lshr i32 %1838, 24
  %1842 = add i32 %61, 324
  %1843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.i32 %1843, 0
  %1845 = and i32 %1844, 65535
  %1846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1845)  ; LegacyF16ToF32(value)
  %1847 = lshr i32 %1844, 16
  %1848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1847)  ; LegacyF16ToF32(value)
  %1849 = add i32 %61, 64
  %1850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1851 = extractvalue %dx.types.ResRet.i32 %1850, 0
  %1852 = lshr i32 %1851, 22
  %1853 = shl nuw nsw i32 %1852, 5
  %1854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1853)  ; LegacyF16ToF32(value)
  %1855 = shl i32 %1851, 4
  %1856 = and i32 %1855, 32752
  %1857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1856)  ; LegacyF16ToF32(value)
  %1858 = lshr i32 %1851, 7
  %1859 = and i32 %1858, 32752
  %1860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1859)  ; LegacyF16ToF32(value)
  %1861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1862 = extractvalue %dx.types.CBufRet.f32 %1861, 3
  %1863 = fmul fast float %1862, 1.000000e+03
  %1864 = fmul fast float %409, %1863
  %1865 = call float @dx.op.unary.f32(i32 22, float %1864)  ; Frc(value)
  %1866 = fadd fast float %1865, %399
  %1867 = fmul fast float %410, %1863
  %1868 = call float @dx.op.unary.f32(i32 22, float %1867)  ; Frc(value)
  %1869 = fadd fast float %1868, %401
  %1870 = fmul fast float %1835, %1863
  %1871 = call float @dx.op.unary.f32(i32 22, float %1870)  ; Frc(value)
  %1872 = fmul fast float %1871, 0x401921FB60000000
  %1873 = fadd fast float %1872, %1854
  %1874 = call float @dx.op.unary.f32(i32 13, float %1873)  ; Sin(value)
  %1875 = call float @dx.op.unary.f32(i32 12, float %1873)  ; Cos(value)
  %1876 = fsub fast float -0.000000e+00, %1874
  %1877 = fadd fast float %1828, -5.000000e-01
  %1878 = fadd fast float %1829, -5.000000e-01
  %1879 = fmul fast float %1846, %1877
  %1880 = fmul fast float %1848, %1878
  %1881 = fadd fast float %1879, 5.000000e-01
  %1882 = fadd fast float %1880, 5.000000e-01
  %1883 = fmul fast float %1857, %1881
  %1884 = fmul fast float %1860, %1882
  %1885 = fmul fast float %1875, %1883
  %1886 = call float @dx.op.tertiary.f32(i32 46, float %1876, float %1884, float %1885)  ; FMad(a,b,c)
  %1887 = fmul fast float %1874, %1883
  %1888 = call float @dx.op.tertiary.f32(i32 46, float %1875, float %1884, float %1887)  ; FMad(a,b,c)
  %1889 = fadd fast float %1866, %1886
  %1890 = fadd fast float %1869, %1888
  %1891 = icmp ugt i32 %1840, 1
  %1892 = icmp ugt i32 %1838, 33554431
  %1893 = or i1 %1892, %1891
  br i1 %1893, label %1894, label %1919

; <label>:1894                                    ; preds = %1821
  %1895 = add i32 %61, 260
  %1896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.i32 %1896, 0
  %1898 = lshr i32 %1897, 16
  %1899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1898)  ; LegacyF16ToF32(value)
  %1900 = fmul fast float %1862, %1899
  %1901 = call float @dx.op.unary.f32(i32 22, float %1900)  ; Frc(value)
  %1902 = mul nuw nsw i32 %1840, %1841
  %1903 = uitofp i32 %1902 to float
  %1904 = fmul fast float %1901, %1903
  %1905 = call float @dx.op.unary.f32(i32 27, float %1904)  ; Round_ni(value)
  %1906 = fptoui float %1905 to i32
  %1907 = urem i32 %1906, %1840
  %1908 = udiv i32 %1906, %1841
  %1909 = call float @dx.op.unary.f32(i32 22, float %1889)  ; Frc(value)
  %1910 = call float @dx.op.unary.f32(i32 22, float %1890)  ; Frc(value)
  %1911 = uitofp i32 %1907 to float
  %1912 = uitofp i32 %1908 to float
  %1913 = fadd fast float %1909, %1911
  %1914 = fadd fast float %1910, %1912
  %1915 = uitofp i32 %1840 to float
  %1916 = uitofp i32 %1841 to float
  %1917 = fdiv fast float %1913, %1915
  %1918 = fdiv fast float %1914, %1916
  br label %1919

; <label>:1919                                    ; preds = %1894, %1821
  %1920 = phi float [ %1917, %1894 ], [ %1889, %1821 ]
  %1921 = phi float [ %1918, %1894 ], [ %1890, %1821 ]
  %1922 = and i32 %1815, 256
  %1923 = icmp eq i32 %1922, 0
  br i1 %1923, label %1970, label %1924

; <label>:1924                                    ; preds = %1919
  %1925 = add i32 %61, 448
  %1926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1927 = extractvalue %dx.types.ResRet.i32 %1926, 0
  %1928 = add i32 %1927, 0
  %1929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1928, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1930 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1929, %dx.types.Handle %113, float %1920, float %1921, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1931 = extractvalue %dx.types.ResRet.f32 %1930, 0
  %1932 = add i32 %61, 132
  %1933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1932, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.i32 %1933, 0
  %1935 = shl i32 %1934, 4
  %1936 = and i32 %1935, 32752
  %1937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1936)  ; LegacyF16ToF32(value)
  %1938 = lshr i32 %1934, 7
  %1939 = and i32 %1938, 32752
  %1940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1939)  ; LegacyF16ToF32(value)
  %1941 = fsub fast float 1.000000e+00, %511
  %1942 = call float @dx.op.binary.f32(i32 35, float %1941, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1943 = bitcast float %511 to i32
  %1944 = sitofp i32 %1943 to float
  %1945 = fadd fast float %1944, 0xC1CFBF8940000000
  %1946 = fmul fast float %1940, %1945
  %1947 = fadd fast float %1946, 0x41CFBF8940000000
  %1948 = fptosi float %1947 to i32
  %1949 = bitcast i32 %1948 to float
  %1950 = bitcast float %1942 to i32
  %1951 = sitofp i32 %1950 to float
  %1952 = fadd fast float %1951, 0xC1CFBF8940000000
  %1953 = fmul fast float %1952, %1940
  %1954 = fadd fast float %1953, 0x41CFBF8940000000
  %1955 = fptosi float %1954 to i32
  %1956 = bitcast i32 %1955 to float
  %1957 = fmul fast float %1949, %1937
  %1958 = fmul fast float %1956, %1937
  %1959 = fsub fast float %1942, %1957
  %1960 = fadd fast float %1958, %1942
  %1961 = call float @dx.op.unary.f32(i32 7, float %1959)  ; Saturate(value)
  %1962 = call float @dx.op.unary.f32(i32 7, float %1960)  ; Saturate(value)
  %1963 = fsub fast float %1931, %1961
  %1964 = fsub fast float %1962, %1961
  %1965 = bitcast float %1964 to i32
  %1966 = sub nsw i32 2129859010, %1965
  %1967 = bitcast i32 %1966 to float
  %1968 = fmul fast float %1967, %1963
  %1969 = call float @dx.op.unary.f32(i32 7, float %1968)  ; Saturate(value)
  br label %1970

; <label>:1970                                    ; preds = %1924, %1919
  %1971 = phi float [ %1969, %1924 ], [ %511, %1919 ]
  %1972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.i32 %1972, 0
  %1974 = and i32 %1973, 128
  %1975 = icmp eq i32 %1974, 0
  br i1 %1975, label %1992, label %1976

; <label>:1976                                    ; preds = %1970
  %1977 = add i32 %61, 432
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = add i32 %1979, 0
  %1981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1980, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1982 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1981, %dx.types.Handle %113, float %1920, float %1921, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1983 = extractvalue %dx.types.ResRet.f32 %1982, 0
  %1984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1985 = extractvalue %dx.types.ResRet.i32 %1984, 0
  %1986 = and i32 %1985, 524288
  %1987 = icmp ne i32 %1986, 0
  %1988 = fcmp fast ogt float %1983, 0x3FE0101020000000
  %1989 = select i1 %1988, float 1.000000e+00, float 0.000000e+00
  %1990 = select i1 %1987, float %1989, float %1983
  %1991 = fmul fast float %1990, %1971
  br label %1992

; <label>:1992                                    ; preds = %1976, %1970
  %1993 = phi float [ %1991, %1976 ], [ %1971, %1970 ]
  %1994 = fcmp fast ult float %1993, 0x3F70101020000000
  br i1 %1994, label %2537, label %1995

; <label>:1995                                    ; preds = %1992
  %1996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.i32 %1996, 0
  %1998 = and i32 %1997, 16
  %1999 = icmp eq i32 %1998, 0
  br i1 %1999, label %2198, label %2000

; <label>:2000                                    ; preds = %1995
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = add i32 %61, 384
  %2004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.i32 %2004, 0
  %2006 = add i32 %2005, 0
  %2007 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2006, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2008 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2007, %dx.types.Handle %112, float %1920, float %1921, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2009 = extractvalue %dx.types.ResRet.f32 %2008, 0
  %2010 = extractvalue %dx.types.ResRet.f32 %2008, 1
  %2011 = extractvalue %dx.types.ResRet.f32 %2008, 2
  %2012 = extractvalue %dx.types.ResRet.f32 %2008, 3
  %2013 = and i32 %2002, 255
  %2014 = uitofp i32 %2013 to float
  %2015 = lshr i32 %2002, 8
  %2016 = and i32 %2015, 255
  %2017 = uitofp i32 %2016 to float
  %2018 = fmul fast float %2012, %2014
  %2019 = fadd fast float %2018, %2017
  %2020 = fmul fast float %2019, 0x3F70101000000000
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = and i32 %2022, 512
  %2024 = icmp eq i32 %2023, 0
  br i1 %2024, label %2033, label %2025

; <label>:2025                                    ; preds = %2000
  %2026 = add i32 %61, 464
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = add i32 %2028, 0
  %2030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2029, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2031 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2030, %dx.types.Handle %113, float %1920, float %1921, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2032 = extractvalue %dx.types.ResRet.f32 %2031, 0
  br label %2033

; <label>:2033                                    ; preds = %2025, %2000
  %2034 = phi float [ %2032, %2025 ], [ 1.000000e+00, %2000 ]
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = and i32 %2036, 33554432
  %2038 = icmp eq i32 %2037, 0
  br i1 %2038, label %2145, label %2039

; <label>:2039                                    ; preds = %2033
  %2040 = add i32 %61, 256
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = and i32 %2042, 65535
  %2044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2043)  ; LegacyF16ToF32(value)
  %2045 = lshr i32 %2042, 16
  %2046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2045)  ; LegacyF16ToF32(value)
  %2047 = add i32 %61, 260
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2047, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = and i32 %2049, 65535
  %2051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2050)  ; LegacyF16ToF32(value)
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = lshr i32 %2053, 24
  %2055 = uitofp i32 %2054 to float
  %2056 = fmul fast float %2055, 0x3F70101020000000
  %2057 = and i32 %2053, 255
  %2058 = uitofp i32 %2057 to float
  %2059 = fmul fast float %2058, 0x3F70101020000000
  %2060 = lshr i32 %2053, 8
  %2061 = and i32 %2060, 255
  %2062 = uitofp i32 %2061 to float
  %2063 = fmul fast float %2062, 0x3F70101020000000
  %2064 = lshr i32 %2053, 16
  %2065 = and i32 %2064, 255
  %2066 = uitofp i32 %2065 to float
  %2067 = fmul fast float %2066, 0x3F70101020000000
  %2068 = add i32 %61, 252
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = lshr i32 %2070, 24
  %2072 = uitofp i32 %2071 to float
  %2073 = fmul fast float %2072, 0x3F70101020000000
  %2074 = and i32 %2070, 255
  %2075 = uitofp i32 %2074 to float
  %2076 = fmul fast float %2075, 0x3F70101020000000
  %2077 = lshr i32 %2070, 8
  %2078 = and i32 %2077, 255
  %2079 = uitofp i32 %2078 to float
  %2080 = fmul fast float %2079, 0x3F70101020000000
  %2081 = lshr i32 %2070, 16
  %2082 = and i32 %2081, 255
  %2083 = uitofp i32 %2082 to float
  %2084 = fmul fast float %2083, 0x3F70101020000000
  %2085 = bitcast float %2009 to i32
  %2086 = ashr i32 %2085, 1
  %2087 = sub nsw i32 1597463174, %2086
  %2088 = bitcast i32 %2087 to float
  %2089 = fmul fast float %2009, 5.000000e-01
  %2090 = fmul fast float %2088, %2088
  %2091 = fmul fast float %2090, %2089
  %2092 = fsub fast float 1.500000e+00, %2091
  %2093 = fmul fast float %2088, %2009
  %2094 = fmul fast float %2093, %2092
  %2095 = bitcast float %2010 to i32
  %2096 = ashr i32 %2095, 1
  %2097 = sub nsw i32 1597463174, %2096
  %2098 = bitcast i32 %2097 to float
  %2099 = fmul fast float %2010, 5.000000e-01
  %2100 = fmul fast float %2098, %2098
  %2101 = fmul fast float %2100, %2099
  %2102 = fsub fast float 1.500000e+00, %2101
  %2103 = fmul fast float %2098, %2010
  %2104 = fmul fast float %2103, %2102
  %2105 = bitcast float %2011 to i32
  %2106 = ashr i32 %2105, 1
  %2107 = sub nsw i32 1597463174, %2106
  %2108 = bitcast i32 %2107 to float
  %2109 = fmul fast float %2011, 5.000000e-01
  %2110 = fmul fast float %2108, %2108
  %2111 = fmul fast float %2110, %2109
  %2112 = fsub fast float 1.500000e+00, %2111
  %2113 = fmul fast float %2108, %2011
  %2114 = fmul fast float %2113, %2112
  %2115 = fsub fast float %2094, %2076
  %2116 = fsub fast float %2104, %2080
  %2117 = fsub fast float %2114, %2084
  %2118 = fmul fast float %2115, %2044
  %2119 = fmul fast float %2116, %2046
  %2120 = fmul fast float %2117, %2051
  %2121 = fadd fast float %2118, %2059
  %2122 = fadd fast float %2119, %2063
  %2123 = fadd fast float %2120, %2067
  %2124 = call float @dx.op.unary.f32(i32 7, float %2121)  ; Saturate(value)
  %2125 = call float @dx.op.unary.f32(i32 7, float %2122)  ; Saturate(value)
  %2126 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  %2127 = fmul fast float %2124, %2124
  %2128 = fmul fast float %2125, %2125
  %2129 = fmul fast float %2126, %2126
  %2130 = fsub fast float %2127, %2009
  %2131 = fsub fast float %2128, %2010
  %2132 = fsub fast float %2129, %2011
  %2133 = fmul fast float %2130, %2034
  %2134 = fmul fast float %2131, %2034
  %2135 = fmul fast float %2132, %2034
  %2136 = fadd fast float %2133, %2009
  %2137 = fadd fast float %2134, %2010
  %2138 = fadd fast float %2135, %2011
  %2139 = fadd fast float %2056, %2020
  %2140 = fsub fast float %2139, %2073
  %2141 = call float @dx.op.unary.f32(i32 7, float %2140)  ; Saturate(value)
  %2142 = fsub fast float %2141, %2020
  %2143 = fmul fast float %2142, %2034
  %2144 = fadd fast float %2143, %2020
  br label %2198

; <label>:2145                                    ; preds = %2033
  %2146 = and i32 %2036, 134217728
  %2147 = icmp eq i32 %2146, 0
  br i1 %2147, label %2182, label %2148

; <label>:2148                                    ; preds = %2145
  %2149 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %2150 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %2151 = call float @dx.op.unary.f32(i32 24, float %394)  ; Sqrt(value)
  %2152 = fadd fast float %2149, -5.000000e-01
  %2153 = fadd fast float %2150, -5.000000e-01
  %2154 = fadd fast float %2151, -5.000000e-01
  %2155 = fmul fast float %2152, %2034
  %2156 = fmul fast float %2153, %2034
  %2157 = fmul fast float %2154, %2034
  %2158 = fadd fast float %2155, 5.000000e-01
  %2159 = fadd fast float %2156, 5.000000e-01
  %2160 = fadd fast float %2157, 5.000000e-01
  %2161 = call float @dx.op.unary.f32(i32 24, float %2009)  ; Sqrt(value)
  %2162 = call float @dx.op.unary.f32(i32 24, float %2010)  ; Sqrt(value)
  %2163 = call float @dx.op.unary.f32(i32 24, float %2011)  ; Sqrt(value)
  %2164 = fmul fast float %2158, 2.000000e+00
  %2165 = fsub fast float 1.000000e+00, %2164
  %2166 = fmul fast float %2165, %2161
  %2167 = fadd fast float %2166, %2164
  %2168 = fmul fast float %2167, %2161
  %2169 = fmul fast float %2159, 2.000000e+00
  %2170 = fsub fast float 1.000000e+00, %2169
  %2171 = fmul fast float %2170, %2162
  %2172 = fadd fast float %2171, %2169
  %2173 = fmul fast float %2172, %2162
  %2174 = fmul fast float %2160, 2.000000e+00
  %2175 = fsub fast float 1.000000e+00, %2174
  %2176 = fmul fast float %2175, %2163
  %2177 = fadd fast float %2176, %2174
  %2178 = fmul fast float %2177, %2163
  %2179 = fmul fast float %2168, %2168
  %2180 = fmul fast float %2173, %2173
  %2181 = fmul fast float %2178, %2178
  br label %2198

; <label>:2182                                    ; preds = %2145
  %2183 = fmul fast float %386, %386
  %2184 = fmul fast float %390, %390
  %2185 = fmul fast float %394, %394
  %2186 = fadd fast float %2183, -1.000000e+00
  %2187 = fadd fast float %2184, -1.000000e+00
  %2188 = fadd fast float %2185, -1.000000e+00
  %2189 = fmul fast float %2034, %2186
  %2190 = fmul fast float %2034, %2187
  %2191 = fmul fast float %2034, %2188
  %2192 = fadd fast float %2189, 1.000000e+00
  %2193 = fadd fast float %2190, 1.000000e+00
  %2194 = fadd fast float %2191, 1.000000e+00
  %2195 = fmul fast float %2192, %2009
  %2196 = fmul fast float %2193, %2010
  %2197 = fmul fast float %2194, %2011
  br label %2198

; <label>:2198                                    ; preds = %2182, %2148, %2039, %1995
  %2199 = phi float [ %2144, %2039 ], [ %2020, %2148 ], [ %2020, %2182 ], [ 0x3FA23C0BE0000000, %1995 ]
  %2200 = phi float [ %2136, %2039 ], [ %2179, %2148 ], [ %2195, %2182 ], [ 1.000000e+00, %1995 ]
  %2201 = phi float [ %2137, %2039 ], [ %2180, %2148 ], [ %2196, %2182 ], [ 1.000000e+00, %1995 ]
  %2202 = phi float [ %2138, %2039 ], [ %2181, %2148 ], [ %2197, %2182 ], [ 1.000000e+00, %1995 ]
  %2203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.i32 %2203, 1
  %2205 = and i32 %2204, 1
  %2206 = icmp ne i32 %2205, 0
  %2207 = add i32 %61, 356
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2207, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = and i32 %2209, 32
  %2211 = icmp ne i32 %2210, 0
  %2212 = and i1 %2206, %2211
  %2213 = select i1 %2212, float 1.000000e+00, float %2200
  %2214 = select i1 %2212, float 0x3FD3333340000000, float %2201
  %2215 = select i1 %2212, float 0x3FD3333340000000, float %2202
  %2216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2217 = extractvalue %dx.types.ResRet.i32 %2216, 0
  %2218 = and i32 %2217, 32
  %2219 = icmp eq i32 %2218, 0
  br i1 %2219, label %2292, label %2220

; <label>:2220                                    ; preds = %2198
  %2221 = add i32 %61, 124
  %2222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2221, i32 undef)  ; BufferLoad(srv,index,wot)
  %2223 = extractvalue %dx.types.ResRet.i32 %2222, 0
  %2224 = add i32 %61, 400
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = add i32 %2226, 0
  %2228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2229 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2228, %dx.types.Handle %112, float %1920, float %1921, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2230 = extractvalue %dx.types.ResRet.f32 %2229, 0
  %2231 = extractvalue %dx.types.ResRet.f32 %2229, 1
  %2232 = extractvalue %dx.types.ResRet.f32 %2229, 2
  %2233 = extractvalue %dx.types.ResRet.f32 %2229, 3
  %2234 = and i32 %2223, 255
  %2235 = uitofp i32 %2234 to float
  %2236 = lshr i32 %2223, 8
  %2237 = and i32 %2236, 255
  %2238 = uitofp i32 %2237 to float
  %2239 = lshr i32 %2223, 16
  %2240 = and i32 %2239, 255
  %2241 = uitofp i32 %2240 to float
  %2242 = fmul fast float %2241, 0x3F70101000000000
  %2243 = fmul fast float %2230, %2235
  %2244 = fadd fast float %2243, %2238
  %2245 = fmul fast float %2244, 0x3F70101000000000
  %2246 = fadd fast float %2231, -5.000000e-01
  %2247 = fadd fast float %2233, -5.000000e-01
  %2248 = fmul fast float %2246, %2242
  %2249 = fmul fast float %2247, %2242
  %2250 = fadd fast float %2248, 5.000000e-01
  %2251 = fadd fast float %2249, 5.000000e-01
  %2252 = fmul fast float %2250, 2.000000e+00
  %2253 = fadd fast float %2252, -1.000000e+00
  %2254 = fmul fast float %2251, 2.000000e+00
  %2255 = fadd fast float %2254, -1.000000e+00
  %2256 = fadd fast float %2253, %2255
  %2257 = fmul fast float %2256, 5.000000e-01
  %2258 = fsub fast float %2253, %2255
  %2259 = fmul fast float %2258, 5.000000e-01
  %2260 = call float @dx.op.unary.f32(i32 6, float %2257)  ; FAbs(value)
  %2261 = fsub fast float 1.000000e+00, %2260
  %2262 = call float @dx.op.unary.f32(i32 6, float %2259)  ; FAbs(value)
  %2263 = fsub fast float %2261, %2262
  %2264 = call float @dx.op.dot3.f32(i32 55, float %2257, float %2259, float %2263, float %2257, float %2259, float %2263)  ; Dot3(ax,ay,az,bx,by,bz)
  %2265 = call float @dx.op.unary.f32(i32 25, float %2264)  ; Rsqrt(value)
  %2266 = fmul fast float %2257, %2265
  %2267 = fmul fast float %2259, %2265
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = and i32 %2269, 67108864
  %2271 = icmp eq i32 %2270, 0
  br i1 %2271, label %2288, label %2272

; <label>:2272                                    ; preds = %2220
  %2273 = add i32 %61, 312
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = and i32 %2275, 65535
  %2277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2276)  ; LegacyF16ToF32(value)
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = and i32 %2279, 65535
  %2281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2280)  ; LegacyF16ToF32(value)
  %2282 = lshr i32 %2275, 16
  %2283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2282)  ; LegacyF16ToF32(value)
  %2284 = fsub fast float %2245, %2283
  %2285 = fmul fast float %2284, %2277
  %2286 = fadd fast float %2285, %2281
  %2287 = call float @dx.op.unary.f32(i32 7, float %2286)  ; Saturate(value)
  br label %2288

; <label>:2288                                    ; preds = %2272, %2220
  %2289 = phi float [ %2287, %2272 ], [ %2245, %2220 ]
  %2290 = call float @dx.op.dot2.f32(i32 54, float %2266, float %2267, float %1824, float %1825)  ; Dot2(ax,ay,bx,by)
  %2291 = call float @dx.op.dot2.f32(i32 54, float %2266, float %2267, float %1826, float %1827)  ; Dot2(ax,ay,bx,by)
  br label %2292

; <label>:2292                                    ; preds = %2288, %2198
  %2293 = phi float [ %2289, %2288 ], [ 0x3FD6666660000000, %2198 ]
  %2294 = phi float [ %2290, %2288 ], [ 0.000000e+00, %2198 ]
  %2295 = phi float [ %2291, %2288 ], [ 0.000000e+00, %2198 ]
  %2296 = phi float [ %2232, %2288 ], [ 1.000000e+00, %2198 ]
  %2297 = add i32 %61, 192
  %2298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2299 = extractvalue %dx.types.ResRet.i32 %2298, 0
  %2300 = lshr i32 %2299, 22
  %2301 = shl nuw nsw i32 %2300, 5
  %2302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2301)  ; LegacyF16ToF32(value)
  %2303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.i32 %2303, 0
  %2305 = and i32 %2304, 64
  %2306 = icmp eq i32 %2305, 0
  br i1 %2306, label %2340, label %2307

; <label>:2307                                    ; preds = %2292
  %2308 = add i32 %61, 416
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = add i32 %2310, 0
  %2312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2311, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = and i32 %2314, 131072
  %2316 = icmp eq i32 %2315, 0
  %2317 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2312, %dx.types.Handle %112, float %1920, float %1921, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2318 = extractvalue %dx.types.ResRet.f32 %2317, 0
  %2319 = extractvalue %dx.types.ResRet.f32 %2317, 1
  %2320 = extractvalue %dx.types.ResRet.f32 %2317, 2
  %2321 = fmul fast float %2318, %374
  %2322 = fmul fast float %2319, %377
  %2323 = fmul fast float %2320, %380
  br i1 %2316, label %2330, label %2324

; <label>:2324                                    ; preds = %2307
  %2325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2326 = extractvalue %dx.types.CBufRet.f32 %2325, 0
  %2327 = fmul fast float %2326, %2321
  %2328 = fmul fast float %2326, %2322
  %2329 = fmul fast float %2326, %2323
  br label %2330

; <label>:2330                                    ; preds = %2324, %2307
  %2331 = phi float [ %2327, %2324 ], [ %2321, %2307 ]
  %2332 = phi float [ %2328, %2324 ], [ %2322, %2307 ]
  %2333 = phi float [ %2329, %2324 ], [ %2323, %2307 ]
  %2334 = fmul fast float %2331, %2302
  %2335 = select i1 %273, float %2334, float %2331
  %2336 = call float @dx.op.dot3.f32(i32 55, float %2335, float %2332, float %2333, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2337 = select i1 %273, float 0.000000e+00, float %2331
  %2338 = select i1 %273, float %2336, float %2332
  %2339 = select i1 %273, float 0.000000e+00, float %2333
  br label %2340

; <label>:2340                                    ; preds = %2330, %2292
  %2341 = phi float [ %2337, %2330 ], [ 0.000000e+00, %2292 ]
  %2342 = phi float [ %2338, %2330 ], [ 0.000000e+00, %2292 ]
  %2343 = phi float [ %2339, %2330 ], [ 0.000000e+00, %2292 ]
  %2344 = add i32 %61, 128
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = and i32 %2346, 255
  %2348 = uitofp i32 %2347 to float
  %2349 = lshr i32 %2346, 8
  %2350 = and i32 %2349, 255
  %2351 = uitofp i32 %2350 to float
  %2352 = call float @dx.op.dot3.f32(i32 55, float %2213, float %2214, float %2215, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2353 = fmul fast float %2351, %2352
  %2354 = fadd fast float %2353, %2348
  %2355 = fmul fast float %2354, 0x3F70101020000000
  %2356 = call float @dx.op.unary.f32(i32 7, float %2355)  ; Saturate(value)
  br i1 %1812, label %2357, label %2365

; <label>:2357                                    ; preds = %2340
  %2358 = fsub fast float 1.000000e+00, %1993
  %2359 = fmul fast float %2358, %1804
  %2360 = fmul fast float %2358, %1805
  %2361 = fmul fast float %2358, %1806
  %2362 = fmul fast float %2358, %1801
  %2363 = fmul fast float %2358, %1802
  %2364 = fmul fast float %2358, %1803
  br label %2365

; <label>:2365                                    ; preds = %2357, %2340
  %2366 = phi float [ %2362, %2357 ], [ %1801, %2340 ]
  %2367 = phi float [ %2363, %2357 ], [ %1802, %2340 ]
  %2368 = phi float [ %2364, %2357 ], [ %1803, %2340 ]
  %2369 = phi float [ %2359, %2357 ], [ %1804, %2340 ]
  %2370 = phi float [ %2360, %2357 ], [ %1805, %2340 ]
  %2371 = phi float [ %2361, %2357 ], [ %1806, %2340 ]
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = and i32 %2373, 3
  %2375 = icmp eq i32 %2374, 3
  br i1 %2375, label %2454, label %2376

; <label>:2376                                    ; preds = %2365
  %2377 = and i32 %2373, 16
  %2378 = icmp ne i32 %2377, 0
  %2379 = select i1 %2378, float %1993, float 0.000000e+00
  %2380 = icmp eq i32 %2374, 0
  br i1 %2380, label %2381, label %2409

; <label>:2381                                    ; preds = %2376
  %2382 = and i32 %2373, 64
  %2383 = icmp ne i32 %2382, 0
  %2384 = select i1 %2383, float %1993, float 0.000000e+00
  %2385 = fsub fast float %2213, %2369
  %2386 = fsub fast float %2214, %2370
  %2387 = fsub fast float %2215, %2371
  %2388 = fmul fast float %2379, %2385
  %2389 = fmul fast float %2379, %2386
  %2390 = fmul fast float %2379, %2387
  %2391 = fadd fast float %2388, %2369
  %2392 = fadd fast float %2389, %2370
  %2393 = fadd fast float %2390, %2371
  %2394 = fsub fast float %2199, %1807
  %2395 = fmul fast float %2379, %2394
  %2396 = fadd fast float %2395, %1807
  %2397 = fsub fast float %2341, %2366
  %2398 = fsub fast float %2342, %2367
  %2399 = fsub fast float %2343, %2368
  %2400 = fmul fast float %2384, %2397
  %2401 = fmul fast float %2384, %2398
  %2402 = fmul fast float %2384, %2399
  %2403 = fadd fast float %2400, %2366
  %2404 = fadd fast float %2401, %2367
  %2405 = fadd fast float %2402, %2368
  %2406 = fsub fast float %2356, %1810
  %2407 = fmul fast float %2379, %2406
  %2408 = fadd fast float %2407, %1810
  br label %2454

; <label>:2409                                    ; preds = %2376
  %2410 = icmp eq i32 %2374, 1
  br i1 %2410, label %2411, label %2424

; <label>:2411                                    ; preds = %2409
  %2412 = fadd fast float %2213, -1.000000e+00
  %2413 = fadd fast float %2214, -1.000000e+00
  %2414 = fadd fast float %2215, -1.000000e+00
  %2415 = fmul fast float %2379, %2412
  %2416 = fmul fast float %2379, %2413
  %2417 = fmul fast float %2379, %2414
  %2418 = fadd fast float %2415, 1.000000e+00
  %2419 = fadd fast float %2416, 1.000000e+00
  %2420 = fadd fast float %2417, 1.000000e+00
  %2421 = fmul fast float %2418, %2369
  %2422 = fmul fast float %2419, %2370
  %2423 = fmul fast float %2420, %2371
  br label %2454

; <label>:2424                                    ; preds = %2409
  %2425 = icmp eq i32 %2374, 2
  br i1 %2425, label %2426, label %2454

; <label>:2426                                    ; preds = %2424
  %2427 = call float @dx.op.unary.f32(i32 24, float %2213)  ; Sqrt(value)
  %2428 = call float @dx.op.unary.f32(i32 24, float %2214)  ; Sqrt(value)
  %2429 = call float @dx.op.unary.f32(i32 24, float %2215)  ; Sqrt(value)
  %2430 = fadd fast float %2427, -5.000000e-01
  %2431 = fadd fast float %2428, -5.000000e-01
  %2432 = fadd fast float %2429, -5.000000e-01
  %2433 = fmul fast float %2430, %2379
  %2434 = fmul fast float %2431, %2379
  %2435 = fmul fast float %2432, %2379
  %2436 = fadd fast float %2433, 5.000000e-01
  %2437 = fadd fast float %2434, 5.000000e-01
  %2438 = fadd fast float %2435, 5.000000e-01
  %2439 = fmul fast float %2436, 2.000000e+00
  %2440 = fsub fast float 1.000000e+00, %2439
  %2441 = fmul fast float %2440, %2369
  %2442 = fadd fast float %2441, %2439
  %2443 = fmul fast float %2442, %2369
  %2444 = fmul fast float %2437, 2.000000e+00
  %2445 = fsub fast float 1.000000e+00, %2444
  %2446 = fmul fast float %2445, %2370
  %2447 = fadd fast float %2446, %2444
  %2448 = fmul fast float %2447, %2370
  %2449 = fmul fast float %2438, 2.000000e+00
  %2450 = fsub fast float 1.000000e+00, %2449
  %2451 = fmul fast float %2450, %2371
  %2452 = fadd fast float %2451, %2449
  %2453 = fmul fast float %2452, %2371
  br label %2454

; <label>:2454                                    ; preds = %2426, %2424, %2411, %2381, %2365
  %2455 = phi float [ %2366, %2365 ], [ %2366, %2426 ], [ %2366, %2424 ], [ %2366, %2411 ], [ %2403, %2381 ]
  %2456 = phi float [ %2367, %2365 ], [ %2367, %2426 ], [ %2367, %2424 ], [ %2367, %2411 ], [ %2404, %2381 ]
  %2457 = phi float [ %2368, %2365 ], [ %2368, %2426 ], [ %2368, %2424 ], [ %2368, %2411 ], [ %2405, %2381 ]
  %2458 = phi float [ %2369, %2365 ], [ %2443, %2426 ], [ %2369, %2424 ], [ %2421, %2411 ], [ %2391, %2381 ]
  %2459 = phi float [ %2370, %2365 ], [ %2448, %2426 ], [ %2370, %2424 ], [ %2422, %2411 ], [ %2392, %2381 ]
  %2460 = phi float [ %2371, %2365 ], [ %2453, %2426 ], [ %2371, %2424 ], [ %2423, %2411 ], [ %2393, %2381 ]
  %2461 = phi float [ %1807, %2365 ], [ %1807, %2426 ], [ %1807, %2424 ], [ %1807, %2411 ], [ %2396, %2381 ]
  %2462 = phi float [ %1810, %2365 ], [ %1810, %2426 ], [ %1810, %2424 ], [ %1810, %2411 ], [ %2408, %2381 ]
  %2463 = and i32 %2373, 12
  %2464 = icmp eq i32 %2463, 12
  br i1 %2464, label %2537, label %2465

; <label>:2465                                    ; preds = %2454
  %2466 = and i32 %2373, 2097184
  %2467 = icmp eq i32 %2466, 2097184
  %2468 = select i1 %2467, float %1993, float 0.000000e+00
  %2469 = and i32 %2373, 4194336
  %2470 = icmp eq i32 %2469, 4194336
  %2471 = select i1 %2470, float %1993, float 0.000000e+00
  %2472 = and i32 %2373, 8388640
  %2473 = icmp eq i32 %2472, 8388640
  %2474 = select i1 %2473, float %1993, float 0.000000e+00
  %2475 = icmp eq i32 %2463, 0
  br i1 %2475, label %2476, label %2489

; <label>:2476                                    ; preds = %2465
  %2477 = fsub fast float %2294, %1799
  %2478 = fsub fast float %2295, %1800
  %2479 = fmul fast float %2468, %2477
  %2480 = fmul fast float %2468, %2478
  %2481 = fadd fast float %2479, %1799
  %2482 = fadd fast float %2480, %1800
  %2483 = fsub fast float %2296, %1809
  %2484 = fmul fast float %2471, %2483
  %2485 = fadd fast float %2484, %1809
  %2486 = fsub fast float %2293, %1808
  %2487 = fmul fast float %2474, %2486
  %2488 = fadd fast float %2487, %1808
  br label %2537

; <label>:2489                                    ; preds = %2465
  %2490 = icmp eq i32 %2463, 4
  br i1 %2490, label %2491, label %2523

; <label>:2491                                    ; preds = %2489
  %2492 = fmul fast float %2468, %2294
  %2493 = fmul fast float %2468, %2295
  %2494 = fadd fast float %2492, %1799
  %2495 = fadd fast float %2493, %1800
  %2496 = call float @dx.op.binary.f32(i32 36, float %1809, float %2296)  ; FMin(a,b)
  %2497 = fsub fast float %2496, %1809
  %2498 = fmul fast float %2497, %2471
  %2499 = fadd fast float %2498, %1809
  %2500 = fadd fast float %2293, %1808
  %2501 = fmul fast float %2500, 0x3FF337FAE0000000
  %2502 = fmul fast float %1808, %1808
  %2503 = fmul fast float %2293, %2293
  %2504 = fadd fast float %2503, %2502
  %2505 = fmul fast float %2504, 0x3FE5152B00000000
  %2506 = fmul fast float %1808, 0xBFCC1F85E0000000
  %2507 = fmul fast float %2506, %2293
  %2508 = fadd fast float %2507, 0xBFE1363700000000
  %2509 = fadd fast float %2508, %2501
  %2510 = fsub fast float %2509, %2505
  %2511 = fmul fast float %2500, 0x3FBA6F0D00000000
  %2512 = fmul fast float %2504, 0x3FD0432880000000
  %2513 = fmul fast float %1808, 0xBFEF110800000000
  %2514 = fmul fast float %2513, %2293
  %2515 = fadd fast float %2514, 1.000000e+00
  %2516 = fsub fast float %2515, %2511
  %2517 = fadd fast float %2516, %2512
  %2518 = fdiv fast float %2510, %2517
  %2519 = call float @dx.op.unary.f32(i32 7, float %2518)  ; Saturate(value)
  %2520 = fsub fast float %2519, %1808
  %2521 = fmul fast float %2520, %2474
  %2522 = fadd fast float %2521, %1808
  br label %2537

; <label>:2523                                    ; preds = %2489
  %2524 = icmp eq i32 %2463, 8
  br i1 %2524, label %2525, label %2537

; <label>:2525                                    ; preds = %2523
  %2526 = fmul fast float %2468, %2294
  %2527 = fmul fast float %2468, %2295
  %2528 = fadd fast float %2526, %1799
  %2529 = fadd fast float %2527, %1800
  %2530 = call float @dx.op.binary.f32(i32 36, float %1809, float %2296)  ; FMin(a,b)
  %2531 = fsub fast float %2530, %1809
  %2532 = fmul fast float %2531, %2471
  %2533 = fadd fast float %2532, %1809
  %2534 = fsub fast float %2293, %1808
  %2535 = fmul fast float %2474, %2534
  %2536 = fadd fast float %2535, %1808
  br label %2537

; <label>:2537                                    ; preds = %2525, %2523, %2491, %2476, %2454, %1992, %1811, %1798
  %2538 = phi float [ %1799, %2454 ], [ %1799, %1992 ], [ %1799, %1798 ], [ %2528, %2525 ], [ %1799, %2523 ], [ %2494, %2491 ], [ %2481, %2476 ], [ %1799, %1811 ]
  %2539 = phi float [ %1800, %2454 ], [ %1800, %1992 ], [ %1800, %1798 ], [ %2529, %2525 ], [ %1800, %2523 ], [ %2495, %2491 ], [ %2482, %2476 ], [ %1800, %1811 ]
  %2540 = phi float [ %2455, %2454 ], [ %1801, %1992 ], [ %1801, %1798 ], [ %2455, %2525 ], [ %2455, %2523 ], [ %2455, %2491 ], [ %2455, %2476 ], [ %1801, %1811 ]
  %2541 = phi float [ %2456, %2454 ], [ %1802, %1992 ], [ %1802, %1798 ], [ %2456, %2525 ], [ %2456, %2523 ], [ %2456, %2491 ], [ %2456, %2476 ], [ %1802, %1811 ]
  %2542 = phi float [ %2457, %2454 ], [ %1803, %1992 ], [ %1803, %1798 ], [ %2457, %2525 ], [ %2457, %2523 ], [ %2457, %2491 ], [ %2457, %2476 ], [ %1803, %1811 ]
  %2543 = phi float [ %2458, %2454 ], [ %1804, %1992 ], [ %1804, %1798 ], [ %2458, %2525 ], [ %2458, %2523 ], [ %2458, %2491 ], [ %2458, %2476 ], [ %1804, %1811 ]
  %2544 = phi float [ %2459, %2454 ], [ %1805, %1992 ], [ %1805, %1798 ], [ %2459, %2525 ], [ %2459, %2523 ], [ %2459, %2491 ], [ %2459, %2476 ], [ %1805, %1811 ]
  %2545 = phi float [ %2460, %2454 ], [ %1806, %1992 ], [ %1806, %1798 ], [ %2460, %2525 ], [ %2460, %2523 ], [ %2460, %2491 ], [ %2460, %2476 ], [ %1806, %1811 ]
  %2546 = phi float [ %2461, %2454 ], [ %1807, %1992 ], [ %1807, %1798 ], [ %2461, %2525 ], [ %2461, %2523 ], [ %2461, %2491 ], [ %2461, %2476 ], [ %1807, %1811 ]
  %2547 = phi float [ %1808, %2454 ], [ %1808, %1992 ], [ %1808, %1798 ], [ %2536, %2525 ], [ %1808, %2523 ], [ %2522, %2491 ], [ %2488, %2476 ], [ %1808, %1811 ]
  %2548 = phi float [ %1809, %2454 ], [ %1809, %1992 ], [ %1809, %1798 ], [ %2533, %2525 ], [ %1809, %2523 ], [ %2499, %2491 ], [ %2485, %2476 ], [ %1809, %1811 ]
  %2549 = phi float [ %2462, %2454 ], [ %1810, %1992 ], [ %1810, %1798 ], [ %2462, %2525 ], [ %2462, %2523 ], [ %2462, %2491 ], [ %2462, %2476 ], [ %1810, %1811 ]
  br i1 %461, label %3276, label %2550

; <label>:2550                                    ; preds = %2537
  %2551 = icmp ult i32 %515, 4
  %2552 = add i32 %61, 72
  %2553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2554 = extractvalue %dx.types.ResRet.i32 %2553, 0
  %2555 = add i32 %61, 76
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2555, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = or i32 %2557, %2554
  %2559 = icmp eq i32 %2558, 0
  br i1 %2559, label %3276, label %2560

; <label>:2560                                    ; preds = %2550
  %2561 = and i32 %2554, 262144
  %2562 = icmp ne i32 %2561, 0
  %2563 = select i1 %2562, float %67, float 1.000000e+00
  %2564 = select i1 %2562, float %68, float 0.000000e+00
  %2565 = select i1 %2562, float %69, float 0.000000e+00
  %2566 = select i1 %2562, float %70, float 1.000000e+00
  %2567 = select i1 %2562, float %71, float %94
  %2568 = select i1 %2562, float %72, float %95
  %2569 = add i32 %61, 332
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2569, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = lshr i32 %2571, 16
  %2573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2572)  ; LegacyF16ToF32(value)
  %2574 = fmul fast float %2573, 0x3F50624DE0000000
  %2575 = add i32 %61, 136
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = lshr i32 %2577, 16
  %2579 = and i32 %2578, 255
  %2580 = lshr i32 %2577, 24
  %2581 = add i32 %61, 340
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2581, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = and i32 %2583, 65535
  %2585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2584)  ; LegacyF16ToF32(value)
  %2586 = lshr i32 %2583, 16
  %2587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2586)  ; LegacyF16ToF32(value)
  %2588 = add i32 %61, 80
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = lshr i32 %2590, 22
  %2592 = shl nuw nsw i32 %2591, 5
  %2593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2592)  ; LegacyF16ToF32(value)
  %2594 = shl i32 %2590, 4
  %2595 = and i32 %2594, 32752
  %2596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2595)  ; LegacyF16ToF32(value)
  %2597 = lshr i32 %2590, 7
  %2598 = and i32 %2597, 32752
  %2599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2598)  ; LegacyF16ToF32(value)
  %2600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2601 = extractvalue %dx.types.CBufRet.f32 %2600, 3
  %2602 = fmul fast float %2601, 1.000000e+03
  %2603 = fmul fast float %451, %2602
  %2604 = call float @dx.op.unary.f32(i32 22, float %2603)  ; Frc(value)
  %2605 = fadd fast float %2604, %441
  %2606 = fmul fast float %452, %2602
  %2607 = call float @dx.op.unary.f32(i32 22, float %2606)  ; Frc(value)
  %2608 = fadd fast float %2607, %443
  %2609 = fmul fast float %2574, %2602
  %2610 = call float @dx.op.unary.f32(i32 22, float %2609)  ; Frc(value)
  %2611 = fmul fast float %2610, 0x401921FB60000000
  %2612 = fadd fast float %2611, %2593
  %2613 = call float @dx.op.unary.f32(i32 13, float %2612)  ; Sin(value)
  %2614 = call float @dx.op.unary.f32(i32 12, float %2612)  ; Cos(value)
  %2615 = fsub fast float -0.000000e+00, %2613
  %2616 = fadd fast float %2567, -5.000000e-01
  %2617 = fadd fast float %2568, -5.000000e-01
  %2618 = fmul fast float %2585, %2616
  %2619 = fmul fast float %2587, %2617
  %2620 = fadd fast float %2618, 5.000000e-01
  %2621 = fadd fast float %2619, 5.000000e-01
  %2622 = fmul fast float %2596, %2620
  %2623 = fmul fast float %2599, %2621
  %2624 = fmul fast float %2614, %2622
  %2625 = call float @dx.op.tertiary.f32(i32 46, float %2615, float %2623, float %2624)  ; FMad(a,b,c)
  %2626 = fmul fast float %2613, %2622
  %2627 = call float @dx.op.tertiary.f32(i32 46, float %2614, float %2623, float %2626)  ; FMad(a,b,c)
  %2628 = fadd fast float %2605, %2625
  %2629 = fadd fast float %2608, %2627
  %2630 = icmp ugt i32 %2579, 1
  %2631 = icmp ugt i32 %2577, 33554431
  %2632 = or i1 %2631, %2630
  br i1 %2632, label %2633, label %2658

; <label>:2633                                    ; preds = %2560
  %2634 = add i32 %61, 276
  %2635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2634, i32 undef)  ; BufferLoad(srv,index,wot)
  %2636 = extractvalue %dx.types.ResRet.i32 %2635, 0
  %2637 = lshr i32 %2636, 16
  %2638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2637)  ; LegacyF16ToF32(value)
  %2639 = fmul fast float %2601, %2638
  %2640 = call float @dx.op.unary.f32(i32 22, float %2639)  ; Frc(value)
  %2641 = mul nuw nsw i32 %2579, %2580
  %2642 = uitofp i32 %2641 to float
  %2643 = fmul fast float %2640, %2642
  %2644 = call float @dx.op.unary.f32(i32 27, float %2643)  ; Round_ni(value)
  %2645 = fptoui float %2644 to i32
  %2646 = urem i32 %2645, %2579
  %2647 = udiv i32 %2645, %2580
  %2648 = call float @dx.op.unary.f32(i32 22, float %2628)  ; Frc(value)
  %2649 = call float @dx.op.unary.f32(i32 22, float %2629)  ; Frc(value)
  %2650 = uitofp i32 %2646 to float
  %2651 = uitofp i32 %2647 to float
  %2652 = fadd fast float %2648, %2650
  %2653 = fadd fast float %2649, %2651
  %2654 = uitofp i32 %2579 to float
  %2655 = uitofp i32 %2580 to float
  %2656 = fdiv fast float %2652, %2654
  %2657 = fdiv fast float %2653, %2655
  br label %2658

; <label>:2658                                    ; preds = %2633, %2560
  %2659 = phi float [ %2656, %2633 ], [ %2628, %2560 ]
  %2660 = phi float [ %2657, %2633 ], [ %2629, %2560 ]
  %2661 = and i32 %2554, 256
  %2662 = icmp eq i32 %2661, 0
  br i1 %2662, label %2709, label %2663

; <label>:2663                                    ; preds = %2658
  %2664 = add i32 %61, 452
  %2665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2664, i32 undef)  ; BufferLoad(srv,index,wot)
  %2666 = extractvalue %dx.types.ResRet.i32 %2665, 0
  %2667 = add i32 %2666, 0
  %2668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2667, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2668, %dx.types.Handle %113, float %2659, float %2660, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2670 = extractvalue %dx.types.ResRet.f32 %2669, 0
  %2671 = add i32 %61, 148
  %2672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2671, i32 undef)  ; BufferLoad(srv,index,wot)
  %2673 = extractvalue %dx.types.ResRet.i32 %2672, 0
  %2674 = shl i32 %2673, 4
  %2675 = and i32 %2674, 32752
  %2676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2675)  ; LegacyF16ToF32(value)
  %2677 = lshr i32 %2673, 7
  %2678 = and i32 %2677, 32752
  %2679 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2678)  ; LegacyF16ToF32(value)
  %2680 = fsub fast float 1.000000e+00, %510
  %2681 = call float @dx.op.binary.f32(i32 35, float %2680, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2682 = bitcast float %510 to i32
  %2683 = sitofp i32 %2682 to float
  %2684 = fadd fast float %2683, 0xC1CFBF8940000000
  %2685 = fmul fast float %2679, %2684
  %2686 = fadd fast float %2685, 0x41CFBF8940000000
  %2687 = fptosi float %2686 to i32
  %2688 = bitcast i32 %2687 to float
  %2689 = bitcast float %2681 to i32
  %2690 = sitofp i32 %2689 to float
  %2691 = fadd fast float %2690, 0xC1CFBF8940000000
  %2692 = fmul fast float %2691, %2679
  %2693 = fadd fast float %2692, 0x41CFBF8940000000
  %2694 = fptosi float %2693 to i32
  %2695 = bitcast i32 %2694 to float
  %2696 = fmul fast float %2688, %2676
  %2697 = fmul fast float %2695, %2676
  %2698 = fsub fast float %2681, %2696
  %2699 = fadd fast float %2697, %2681
  %2700 = call float @dx.op.unary.f32(i32 7, float %2698)  ; Saturate(value)
  %2701 = call float @dx.op.unary.f32(i32 7, float %2699)  ; Saturate(value)
  %2702 = fsub fast float %2670, %2700
  %2703 = fsub fast float %2701, %2700
  %2704 = bitcast float %2703 to i32
  %2705 = sub nsw i32 2129859010, %2704
  %2706 = bitcast i32 %2705 to float
  %2707 = fmul fast float %2706, %2702
  %2708 = call float @dx.op.unary.f32(i32 7, float %2707)  ; Saturate(value)
  br label %2709

; <label>:2709                                    ; preds = %2663, %2658
  %2710 = phi float [ %2708, %2663 ], [ %510, %2658 ]
  %2711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2712 = extractvalue %dx.types.ResRet.i32 %2711, 0
  %2713 = and i32 %2712, 128
  %2714 = icmp eq i32 %2713, 0
  br i1 %2714, label %2731, label %2715

; <label>:2715                                    ; preds = %2709
  %2716 = add i32 %61, 436
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2716, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = add i32 %2718, 0
  %2720 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2719, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2721 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2720, %dx.types.Handle %113, float %2659, float %2660, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2722 = extractvalue %dx.types.ResRet.f32 %2721, 0
  %2723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2724 = extractvalue %dx.types.ResRet.i32 %2723, 0
  %2725 = and i32 %2724, 524288
  %2726 = icmp ne i32 %2725, 0
  %2727 = fcmp fast ogt float %2722, 0x3FE0101020000000
  %2728 = select i1 %2727, float 1.000000e+00, float 0.000000e+00
  %2729 = select i1 %2726, float %2728, float %2722
  %2730 = fmul fast float %2729, %2710
  br label %2731

; <label>:2731                                    ; preds = %2715, %2709
  %2732 = phi float [ %2730, %2715 ], [ %2710, %2709 ]
  %2733 = fcmp fast ult float %2732, 0x3F70101020000000
  br i1 %2733, label %3276, label %2734

; <label>:2734                                    ; preds = %2731
  %2735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.i32 %2735, 0
  %2737 = and i32 %2736, 16
  %2738 = icmp eq i32 %2737, 0
  br i1 %2738, label %2937, label %2739

; <label>:2739                                    ; preds = %2734
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = add i32 %61, 388
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = add i32 %2744, 0
  %2746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2745, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2747 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2746, %dx.types.Handle %112, float %2659, float %2660, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2748 = extractvalue %dx.types.ResRet.f32 %2747, 0
  %2749 = extractvalue %dx.types.ResRet.f32 %2747, 1
  %2750 = extractvalue %dx.types.ResRet.f32 %2747, 2
  %2751 = extractvalue %dx.types.ResRet.f32 %2747, 3
  %2752 = and i32 %2741, 255
  %2753 = uitofp i32 %2752 to float
  %2754 = lshr i32 %2741, 8
  %2755 = and i32 %2754, 255
  %2756 = uitofp i32 %2755 to float
  %2757 = fmul fast float %2751, %2753
  %2758 = fadd fast float %2757, %2756
  %2759 = fmul fast float %2758, 0x3F70101000000000
  %2760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.i32 %2760, 0
  %2762 = and i32 %2761, 512
  %2763 = icmp eq i32 %2762, 0
  br i1 %2763, label %2772, label %2764

; <label>:2764                                    ; preds = %2739
  %2765 = add i32 %61, 468
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = add i32 %2767, 0
  %2769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2768, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2770 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2769, %dx.types.Handle %113, float %2659, float %2660, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2771 = extractvalue %dx.types.ResRet.f32 %2770, 0
  br label %2772

; <label>:2772                                    ; preds = %2764, %2739
  %2773 = phi float [ %2771, %2764 ], [ 1.000000e+00, %2739 ]
  %2774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2775 = extractvalue %dx.types.ResRet.i32 %2774, 0
  %2776 = and i32 %2775, 33554432
  %2777 = icmp eq i32 %2776, 0
  br i1 %2777, label %2884, label %2778

; <label>:2778                                    ; preds = %2772
  %2779 = add i32 %61, 272
  %2780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2779, i32 undef)  ; BufferLoad(srv,index,wot)
  %2781 = extractvalue %dx.types.ResRet.i32 %2780, 0
  %2782 = and i32 %2781, 65535
  %2783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2782)  ; LegacyF16ToF32(value)
  %2784 = lshr i32 %2781, 16
  %2785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2784)  ; LegacyF16ToF32(value)
  %2786 = add i32 %61, 276
  %2787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2786, i32 undef)  ; BufferLoad(srv,index,wot)
  %2788 = extractvalue %dx.types.ResRet.i32 %2787, 0
  %2789 = and i32 %2788, 65535
  %2790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2789)  ; LegacyF16ToF32(value)
  %2791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %2792 = extractvalue %dx.types.ResRet.i32 %2791, 0
  %2793 = lshr i32 %2792, 24
  %2794 = uitofp i32 %2793 to float
  %2795 = fmul fast float %2794, 0x3F70101020000000
  %2796 = and i32 %2792, 255
  %2797 = uitofp i32 %2796 to float
  %2798 = fmul fast float %2797, 0x3F70101020000000
  %2799 = lshr i32 %2792, 8
  %2800 = and i32 %2799, 255
  %2801 = uitofp i32 %2800 to float
  %2802 = fmul fast float %2801, 0x3F70101020000000
  %2803 = lshr i32 %2792, 16
  %2804 = and i32 %2803, 255
  %2805 = uitofp i32 %2804 to float
  %2806 = fmul fast float %2805, 0x3F70101020000000
  %2807 = add i32 %61, 268
  %2808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2809 = extractvalue %dx.types.ResRet.i32 %2808, 0
  %2810 = lshr i32 %2809, 24
  %2811 = uitofp i32 %2810 to float
  %2812 = fmul fast float %2811, 0x3F70101020000000
  %2813 = and i32 %2809, 255
  %2814 = uitofp i32 %2813 to float
  %2815 = fmul fast float %2814, 0x3F70101020000000
  %2816 = lshr i32 %2809, 8
  %2817 = and i32 %2816, 255
  %2818 = uitofp i32 %2817 to float
  %2819 = fmul fast float %2818, 0x3F70101020000000
  %2820 = lshr i32 %2809, 16
  %2821 = and i32 %2820, 255
  %2822 = uitofp i32 %2821 to float
  %2823 = fmul fast float %2822, 0x3F70101020000000
  %2824 = bitcast float %2748 to i32
  %2825 = ashr i32 %2824, 1
  %2826 = sub nsw i32 1597463174, %2825
  %2827 = bitcast i32 %2826 to float
  %2828 = fmul fast float %2748, 5.000000e-01
  %2829 = fmul fast float %2827, %2827
  %2830 = fmul fast float %2829, %2828
  %2831 = fsub fast float 1.500000e+00, %2830
  %2832 = fmul fast float %2827, %2748
  %2833 = fmul fast float %2832, %2831
  %2834 = bitcast float %2749 to i32
  %2835 = ashr i32 %2834, 1
  %2836 = sub nsw i32 1597463174, %2835
  %2837 = bitcast i32 %2836 to float
  %2838 = fmul fast float %2749, 5.000000e-01
  %2839 = fmul fast float %2837, %2837
  %2840 = fmul fast float %2839, %2838
  %2841 = fsub fast float 1.500000e+00, %2840
  %2842 = fmul fast float %2837, %2749
  %2843 = fmul fast float %2842, %2841
  %2844 = bitcast float %2750 to i32
  %2845 = ashr i32 %2844, 1
  %2846 = sub nsw i32 1597463174, %2845
  %2847 = bitcast i32 %2846 to float
  %2848 = fmul fast float %2750, 5.000000e-01
  %2849 = fmul fast float %2847, %2847
  %2850 = fmul fast float %2849, %2848
  %2851 = fsub fast float 1.500000e+00, %2850
  %2852 = fmul fast float %2847, %2750
  %2853 = fmul fast float %2852, %2851
  %2854 = fsub fast float %2833, %2815
  %2855 = fsub fast float %2843, %2819
  %2856 = fsub fast float %2853, %2823
  %2857 = fmul fast float %2854, %2783
  %2858 = fmul fast float %2855, %2785
  %2859 = fmul fast float %2856, %2790
  %2860 = fadd fast float %2857, %2798
  %2861 = fadd fast float %2858, %2802
  %2862 = fadd fast float %2859, %2806
  %2863 = call float @dx.op.unary.f32(i32 7, float %2860)  ; Saturate(value)
  %2864 = call float @dx.op.unary.f32(i32 7, float %2861)  ; Saturate(value)
  %2865 = call float @dx.op.unary.f32(i32 7, float %2862)  ; Saturate(value)
  %2866 = fmul fast float %2863, %2863
  %2867 = fmul fast float %2864, %2864
  %2868 = fmul fast float %2865, %2865
  %2869 = fsub fast float %2866, %2748
  %2870 = fsub fast float %2867, %2749
  %2871 = fsub fast float %2868, %2750
  %2872 = fmul fast float %2869, %2773
  %2873 = fmul fast float %2870, %2773
  %2874 = fmul fast float %2871, %2773
  %2875 = fadd fast float %2872, %2748
  %2876 = fadd fast float %2873, %2749
  %2877 = fadd fast float %2874, %2750
  %2878 = fadd fast float %2795, %2759
  %2879 = fsub fast float %2878, %2812
  %2880 = call float @dx.op.unary.f32(i32 7, float %2879)  ; Saturate(value)
  %2881 = fsub fast float %2880, %2759
  %2882 = fmul fast float %2881, %2773
  %2883 = fadd fast float %2882, %2759
  br label %2937

; <label>:2884                                    ; preds = %2772
  %2885 = and i32 %2775, 134217728
  %2886 = icmp eq i32 %2885, 0
  br i1 %2886, label %2921, label %2887

; <label>:2887                                    ; preds = %2884
  %2888 = call float @dx.op.unary.f32(i32 24, float %428)  ; Sqrt(value)
  %2889 = call float @dx.op.unary.f32(i32 24, float %432)  ; Sqrt(value)
  %2890 = call float @dx.op.unary.f32(i32 24, float %436)  ; Sqrt(value)
  %2891 = fadd fast float %2888, -5.000000e-01
  %2892 = fadd fast float %2889, -5.000000e-01
  %2893 = fadd fast float %2890, -5.000000e-01
  %2894 = fmul fast float %2891, %2773
  %2895 = fmul fast float %2892, %2773
  %2896 = fmul fast float %2893, %2773
  %2897 = fadd fast float %2894, 5.000000e-01
  %2898 = fadd fast float %2895, 5.000000e-01
  %2899 = fadd fast float %2896, 5.000000e-01
  %2900 = call float @dx.op.unary.f32(i32 24, float %2748)  ; Sqrt(value)
  %2901 = call float @dx.op.unary.f32(i32 24, float %2749)  ; Sqrt(value)
  %2902 = call float @dx.op.unary.f32(i32 24, float %2750)  ; Sqrt(value)
  %2903 = fmul fast float %2897, 2.000000e+00
  %2904 = fsub fast float 1.000000e+00, %2903
  %2905 = fmul fast float %2904, %2900
  %2906 = fadd fast float %2905, %2903
  %2907 = fmul fast float %2906, %2900
  %2908 = fmul fast float %2898, 2.000000e+00
  %2909 = fsub fast float 1.000000e+00, %2908
  %2910 = fmul fast float %2909, %2901
  %2911 = fadd fast float %2910, %2908
  %2912 = fmul fast float %2911, %2901
  %2913 = fmul fast float %2899, 2.000000e+00
  %2914 = fsub fast float 1.000000e+00, %2913
  %2915 = fmul fast float %2914, %2902
  %2916 = fadd fast float %2915, %2913
  %2917 = fmul fast float %2916, %2902
  %2918 = fmul fast float %2907, %2907
  %2919 = fmul fast float %2912, %2912
  %2920 = fmul fast float %2917, %2917
  br label %2937

; <label>:2921                                    ; preds = %2884
  %2922 = fmul fast float %428, %428
  %2923 = fmul fast float %432, %432
  %2924 = fmul fast float %436, %436
  %2925 = fadd fast float %2922, -1.000000e+00
  %2926 = fadd fast float %2923, -1.000000e+00
  %2927 = fadd fast float %2924, -1.000000e+00
  %2928 = fmul fast float %2773, %2925
  %2929 = fmul fast float %2773, %2926
  %2930 = fmul fast float %2773, %2927
  %2931 = fadd fast float %2928, 1.000000e+00
  %2932 = fadd fast float %2929, 1.000000e+00
  %2933 = fadd fast float %2930, 1.000000e+00
  %2934 = fmul fast float %2931, %2748
  %2935 = fmul fast float %2932, %2749
  %2936 = fmul fast float %2933, %2750
  br label %2937

; <label>:2937                                    ; preds = %2921, %2887, %2778, %2734
  %2938 = phi float [ %2883, %2778 ], [ %2759, %2887 ], [ %2759, %2921 ], [ 0x3FA23C0BE0000000, %2734 ]
  %2939 = phi float [ %2875, %2778 ], [ %2918, %2887 ], [ %2934, %2921 ], [ 1.000000e+00, %2734 ]
  %2940 = phi float [ %2876, %2778 ], [ %2919, %2887 ], [ %2935, %2921 ], [ 1.000000e+00, %2734 ]
  %2941 = phi float [ %2877, %2778 ], [ %2920, %2887 ], [ %2936, %2921 ], [ 1.000000e+00, %2734 ]
  %2942 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2943 = extractvalue %dx.types.CBufRet.i32 %2942, 1
  %2944 = and i32 %2943, 1
  %2945 = icmp ne i32 %2944, 0
  %2946 = add i32 %61, 356
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = and i32 %2948, 32
  %2950 = icmp ne i32 %2949, 0
  %2951 = and i1 %2945, %2950
  %2952 = select i1 %2951, float 1.000000e+00, float %2939
  %2953 = select i1 %2951, float 0x3FD3333340000000, float %2940
  %2954 = select i1 %2951, float 0x3FD3333340000000, float %2941
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 32
  %2958 = icmp eq i32 %2957, 0
  br i1 %2958, label %3031, label %2959

; <label>:2959                                    ; preds = %2937
  %2960 = add i32 %61, 140
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = add i32 %61, 404
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = add i32 %2965, 0
  %2967 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2966, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2968 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2967, %dx.types.Handle %112, float %2659, float %2660, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2969 = extractvalue %dx.types.ResRet.f32 %2968, 0
  %2970 = extractvalue %dx.types.ResRet.f32 %2968, 1
  %2971 = extractvalue %dx.types.ResRet.f32 %2968, 2
  %2972 = extractvalue %dx.types.ResRet.f32 %2968, 3
  %2973 = and i32 %2962, 255
  %2974 = uitofp i32 %2973 to float
  %2975 = lshr i32 %2962, 8
  %2976 = and i32 %2975, 255
  %2977 = uitofp i32 %2976 to float
  %2978 = lshr i32 %2962, 16
  %2979 = and i32 %2978, 255
  %2980 = uitofp i32 %2979 to float
  %2981 = fmul fast float %2980, 0x3F70101000000000
  %2982 = fmul fast float %2969, %2974
  %2983 = fadd fast float %2982, %2977
  %2984 = fmul fast float %2983, 0x3F70101000000000
  %2985 = fadd fast float %2970, -5.000000e-01
  %2986 = fadd fast float %2972, -5.000000e-01
  %2987 = fmul fast float %2985, %2981
  %2988 = fmul fast float %2986, %2981
  %2989 = fadd fast float %2987, 5.000000e-01
  %2990 = fadd fast float %2988, 5.000000e-01
  %2991 = fmul fast float %2989, 2.000000e+00
  %2992 = fadd fast float %2991, -1.000000e+00
  %2993 = fmul fast float %2990, 2.000000e+00
  %2994 = fadd fast float %2993, -1.000000e+00
  %2995 = fadd fast float %2992, %2994
  %2996 = fmul fast float %2995, 5.000000e-01
  %2997 = fsub fast float %2992, %2994
  %2998 = fmul fast float %2997, 5.000000e-01
  %2999 = call float @dx.op.unary.f32(i32 6, float %2996)  ; FAbs(value)
  %3000 = fsub fast float 1.000000e+00, %2999
  %3001 = call float @dx.op.unary.f32(i32 6, float %2998)  ; FAbs(value)
  %3002 = fsub fast float %3000, %3001
  %3003 = call float @dx.op.dot3.f32(i32 55, float %2996, float %2998, float %3002, float %2996, float %2998, float %3002)  ; Dot3(ax,ay,az,bx,by,bz)
  %3004 = call float @dx.op.unary.f32(i32 25, float %3003)  ; Rsqrt(value)
  %3005 = fmul fast float %2996, %3004
  %3006 = fmul fast float %2998, %3004
  %3007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.i32 %3007, 0
  %3009 = and i32 %3008, 67108864
  %3010 = icmp eq i32 %3009, 0
  br i1 %3010, label %3027, label %3011

; <label>:3011                                    ; preds = %2959
  %3012 = add i32 %61, 328
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3012, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = and i32 %3014, 65535
  %3016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3015)  ; LegacyF16ToF32(value)
  %3017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2569, i32 undef)  ; BufferLoad(srv,index,wot)
  %3018 = extractvalue %dx.types.ResRet.i32 %3017, 0
  %3019 = and i32 %3018, 65535
  %3020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3019)  ; LegacyF16ToF32(value)
  %3021 = lshr i32 %3014, 16
  %3022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3021)  ; LegacyF16ToF32(value)
  %3023 = fsub fast float %2984, %3022
  %3024 = fmul fast float %3023, %3016
  %3025 = fadd fast float %3024, %3020
  %3026 = call float @dx.op.unary.f32(i32 7, float %3025)  ; Saturate(value)
  br label %3027

; <label>:3027                                    ; preds = %3011, %2959
  %3028 = phi float [ %3026, %3011 ], [ %2984, %2959 ]
  %3029 = call float @dx.op.dot2.f32(i32 54, float %3005, float %3006, float %2563, float %2564)  ; Dot2(ax,ay,bx,by)
  %3030 = call float @dx.op.dot2.f32(i32 54, float %3005, float %3006, float %2565, float %2566)  ; Dot2(ax,ay,bx,by)
  br label %3031

; <label>:3031                                    ; preds = %3027, %2937
  %3032 = phi float [ %3028, %3027 ], [ 0x3FD6666660000000, %2937 ]
  %3033 = phi float [ %3029, %3027 ], [ 0.000000e+00, %2937 ]
  %3034 = phi float [ %3030, %3027 ], [ 0.000000e+00, %2937 ]
  %3035 = phi float [ %2971, %3027 ], [ 1.000000e+00, %2937 ]
  %3036 = add i32 %61, 208
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3036, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = lshr i32 %3038, 22
  %3040 = shl nuw nsw i32 %3039, 5
  %3041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3040)  ; LegacyF16ToF32(value)
  %3042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.i32 %3042, 0
  %3044 = and i32 %3043, 64
  %3045 = icmp eq i32 %3044, 0
  br i1 %3045, label %3079, label %3046

; <label>:3046                                    ; preds = %3031
  %3047 = add i32 %61, 420
  %3048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3047, i32 undef)  ; BufferLoad(srv,index,wot)
  %3049 = extractvalue %dx.types.ResRet.i32 %3048, 0
  %3050 = add i32 %3049, 0
  %3051 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3050, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3053 = extractvalue %dx.types.ResRet.i32 %3052, 0
  %3054 = and i32 %3053, 131072
  %3055 = icmp eq i32 %3054, 0
  %3056 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3051, %dx.types.Handle %112, float %2659, float %2660, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3057 = extractvalue %dx.types.ResRet.f32 %3056, 0
  %3058 = extractvalue %dx.types.ResRet.f32 %3056, 1
  %3059 = extractvalue %dx.types.ResRet.f32 %3056, 2
  %3060 = fmul fast float %3057, %416
  %3061 = fmul fast float %3058, %419
  %3062 = fmul fast float %3059, %422
  br i1 %3055, label %3069, label %3063

; <label>:3063                                    ; preds = %3046
  %3064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3065 = extractvalue %dx.types.CBufRet.f32 %3064, 0
  %3066 = fmul fast float %3065, %3060
  %3067 = fmul fast float %3065, %3061
  %3068 = fmul fast float %3065, %3062
  br label %3069

; <label>:3069                                    ; preds = %3063, %3046
  %3070 = phi float [ %3066, %3063 ], [ %3060, %3046 ]
  %3071 = phi float [ %3067, %3063 ], [ %3061, %3046 ]
  %3072 = phi float [ %3068, %3063 ], [ %3062, %3046 ]
  %3073 = fmul fast float %3070, %3041
  %3074 = select i1 %273, float %3073, float %3070
  %3075 = call float @dx.op.dot3.f32(i32 55, float %3074, float %3071, float %3072, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3076 = select i1 %273, float 0.000000e+00, float %3070
  %3077 = select i1 %273, float %3075, float %3071
  %3078 = select i1 %273, float 0.000000e+00, float %3072
  br label %3079

; <label>:3079                                    ; preds = %3069, %3031
  %3080 = phi float [ %3076, %3069 ], [ 0.000000e+00, %3031 ]
  %3081 = phi float [ %3077, %3069 ], [ 0.000000e+00, %3031 ]
  %3082 = phi float [ %3078, %3069 ], [ 0.000000e+00, %3031 ]
  %3083 = add i32 %61, 144
  %3084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3083, i32 undef)  ; BufferLoad(srv,index,wot)
  %3085 = extractvalue %dx.types.ResRet.i32 %3084, 0
  %3086 = and i32 %3085, 255
  %3087 = uitofp i32 %3086 to float
  %3088 = lshr i32 %3085, 8
  %3089 = and i32 %3088, 255
  %3090 = uitofp i32 %3089 to float
  %3091 = call float @dx.op.dot3.f32(i32 55, float %2952, float %2953, float %2954, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3092 = fmul fast float %3090, %3091
  %3093 = fadd fast float %3092, %3087
  %3094 = fmul fast float %3093, 0x3F70101020000000
  %3095 = call float @dx.op.unary.f32(i32 7, float %3094)  ; Saturate(value)
  br i1 %2551, label %3096, label %3104

; <label>:3096                                    ; preds = %3079
  %3097 = fsub fast float 1.000000e+00, %2732
  %3098 = fmul fast float %3097, %2543
  %3099 = fmul fast float %3097, %2544
  %3100 = fmul fast float %3097, %2545
  %3101 = fmul fast float %3097, %2540
  %3102 = fmul fast float %3097, %2541
  %3103 = fmul fast float %3097, %2542
  br label %3104

; <label>:3104                                    ; preds = %3096, %3079
  %3105 = phi float [ %3101, %3096 ], [ %2540, %3079 ]
  %3106 = phi float [ %3102, %3096 ], [ %2541, %3079 ]
  %3107 = phi float [ %3103, %3096 ], [ %2542, %3079 ]
  %3108 = phi float [ %3098, %3096 ], [ %2543, %3079 ]
  %3109 = phi float [ %3099, %3096 ], [ %2544, %3079 ]
  %3110 = phi float [ %3100, %3096 ], [ %2545, %3079 ]
  %3111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.i32 %3111, 0
  %3113 = and i32 %3112, 3
  %3114 = icmp eq i32 %3113, 3
  br i1 %3114, label %3193, label %3115

; <label>:3115                                    ; preds = %3104
  %3116 = and i32 %3112, 16
  %3117 = icmp ne i32 %3116, 0
  %3118 = select i1 %3117, float %2732, float 0.000000e+00
  %3119 = icmp eq i32 %3113, 0
  br i1 %3119, label %3120, label %3148

; <label>:3120                                    ; preds = %3115
  %3121 = and i32 %3112, 64
  %3122 = icmp ne i32 %3121, 0
  %3123 = select i1 %3122, float %2732, float 0.000000e+00
  %3124 = fsub fast float %2952, %3108
  %3125 = fsub fast float %2953, %3109
  %3126 = fsub fast float %2954, %3110
  %3127 = fmul fast float %3118, %3124
  %3128 = fmul fast float %3118, %3125
  %3129 = fmul fast float %3118, %3126
  %3130 = fadd fast float %3127, %3108
  %3131 = fadd fast float %3128, %3109
  %3132 = fadd fast float %3129, %3110
  %3133 = fsub fast float %2938, %2546
  %3134 = fmul fast float %3118, %3133
  %3135 = fadd fast float %3134, %2546
  %3136 = fsub fast float %3080, %3105
  %3137 = fsub fast float %3081, %3106
  %3138 = fsub fast float %3082, %3107
  %3139 = fmul fast float %3123, %3136
  %3140 = fmul fast float %3123, %3137
  %3141 = fmul fast float %3123, %3138
  %3142 = fadd fast float %3139, %3105
  %3143 = fadd fast float %3140, %3106
  %3144 = fadd fast float %3141, %3107
  %3145 = fsub fast float %3095, %2549
  %3146 = fmul fast float %3118, %3145
  %3147 = fadd fast float %3146, %2549
  br label %3193

; <label>:3148                                    ; preds = %3115
  %3149 = icmp eq i32 %3113, 1
  br i1 %3149, label %3150, label %3163

; <label>:3150                                    ; preds = %3148
  %3151 = fadd fast float %2952, -1.000000e+00
  %3152 = fadd fast float %2953, -1.000000e+00
  %3153 = fadd fast float %2954, -1.000000e+00
  %3154 = fmul fast float %3118, %3151
  %3155 = fmul fast float %3118, %3152
  %3156 = fmul fast float %3118, %3153
  %3157 = fadd fast float %3154, 1.000000e+00
  %3158 = fadd fast float %3155, 1.000000e+00
  %3159 = fadd fast float %3156, 1.000000e+00
  %3160 = fmul fast float %3157, %3108
  %3161 = fmul fast float %3158, %3109
  %3162 = fmul fast float %3159, %3110
  br label %3193

; <label>:3163                                    ; preds = %3148
  %3164 = icmp eq i32 %3113, 2
  br i1 %3164, label %3165, label %3193

; <label>:3165                                    ; preds = %3163
  %3166 = call float @dx.op.unary.f32(i32 24, float %2952)  ; Sqrt(value)
  %3167 = call float @dx.op.unary.f32(i32 24, float %2953)  ; Sqrt(value)
  %3168 = call float @dx.op.unary.f32(i32 24, float %2954)  ; Sqrt(value)
  %3169 = fadd fast float %3166, -5.000000e-01
  %3170 = fadd fast float %3167, -5.000000e-01
  %3171 = fadd fast float %3168, -5.000000e-01
  %3172 = fmul fast float %3169, %3118
  %3173 = fmul fast float %3170, %3118
  %3174 = fmul fast float %3171, %3118
  %3175 = fadd fast float %3172, 5.000000e-01
  %3176 = fadd fast float %3173, 5.000000e-01
  %3177 = fadd fast float %3174, 5.000000e-01
  %3178 = fmul fast float %3175, 2.000000e+00
  %3179 = fsub fast float 1.000000e+00, %3178
  %3180 = fmul fast float %3179, %3108
  %3181 = fadd fast float %3180, %3178
  %3182 = fmul fast float %3181, %3108
  %3183 = fmul fast float %3176, 2.000000e+00
  %3184 = fsub fast float 1.000000e+00, %3183
  %3185 = fmul fast float %3184, %3109
  %3186 = fadd fast float %3185, %3183
  %3187 = fmul fast float %3186, %3109
  %3188 = fmul fast float %3177, 2.000000e+00
  %3189 = fsub fast float 1.000000e+00, %3188
  %3190 = fmul fast float %3189, %3110
  %3191 = fadd fast float %3190, %3188
  %3192 = fmul fast float %3191, %3110
  br label %3193

; <label>:3193                                    ; preds = %3165, %3163, %3150, %3120, %3104
  %3194 = phi float [ %3105, %3104 ], [ %3105, %3165 ], [ %3105, %3163 ], [ %3105, %3150 ], [ %3142, %3120 ]
  %3195 = phi float [ %3106, %3104 ], [ %3106, %3165 ], [ %3106, %3163 ], [ %3106, %3150 ], [ %3143, %3120 ]
  %3196 = phi float [ %3107, %3104 ], [ %3107, %3165 ], [ %3107, %3163 ], [ %3107, %3150 ], [ %3144, %3120 ]
  %3197 = phi float [ %3108, %3104 ], [ %3182, %3165 ], [ %3108, %3163 ], [ %3160, %3150 ], [ %3130, %3120 ]
  %3198 = phi float [ %3109, %3104 ], [ %3187, %3165 ], [ %3109, %3163 ], [ %3161, %3150 ], [ %3131, %3120 ]
  %3199 = phi float [ %3110, %3104 ], [ %3192, %3165 ], [ %3110, %3163 ], [ %3162, %3150 ], [ %3132, %3120 ]
  %3200 = phi float [ %2546, %3104 ], [ %2546, %3165 ], [ %2546, %3163 ], [ %2546, %3150 ], [ %3135, %3120 ]
  %3201 = phi float [ %2549, %3104 ], [ %2549, %3165 ], [ %2549, %3163 ], [ %2549, %3150 ], [ %3147, %3120 ]
  %3202 = and i32 %3112, 12
  %3203 = icmp eq i32 %3202, 12
  br i1 %3203, label %3276, label %3204

; <label>:3204                                    ; preds = %3193
  %3205 = and i32 %3112, 2097184
  %3206 = icmp eq i32 %3205, 2097184
  %3207 = select i1 %3206, float %2732, float 0.000000e+00
  %3208 = and i32 %3112, 4194336
  %3209 = icmp eq i32 %3208, 4194336
  %3210 = select i1 %3209, float %2732, float 0.000000e+00
  %3211 = and i32 %3112, 8388640
  %3212 = icmp eq i32 %3211, 8388640
  %3213 = select i1 %3212, float %2732, float 0.000000e+00
  %3214 = icmp eq i32 %3202, 0
  br i1 %3214, label %3215, label %3228

; <label>:3215                                    ; preds = %3204
  %3216 = fsub fast float %3033, %2538
  %3217 = fsub fast float %3034, %2539
  %3218 = fmul fast float %3207, %3216
  %3219 = fmul fast float %3207, %3217
  %3220 = fadd fast float %3218, %2538
  %3221 = fadd fast float %3219, %2539
  %3222 = fsub fast float %3035, %2548
  %3223 = fmul fast float %3210, %3222
  %3224 = fadd fast float %3223, %2548
  %3225 = fsub fast float %3032, %2547
  %3226 = fmul fast float %3213, %3225
  %3227 = fadd fast float %3226, %2547
  br label %3276

; <label>:3228                                    ; preds = %3204
  %3229 = icmp eq i32 %3202, 4
  br i1 %3229, label %3230, label %3262

; <label>:3230                                    ; preds = %3228
  %3231 = fmul fast float %3207, %3033
  %3232 = fmul fast float %3207, %3034
  %3233 = fadd fast float %3231, %2538
  %3234 = fadd fast float %3232, %2539
  %3235 = call float @dx.op.binary.f32(i32 36, float %2548, float %3035)  ; FMin(a,b)
  %3236 = fsub fast float %3235, %2548
  %3237 = fmul fast float %3236, %3210
  %3238 = fadd fast float %3237, %2548
  %3239 = fadd fast float %3032, %2547
  %3240 = fmul fast float %3239, 0x3FF337FAE0000000
  %3241 = fmul fast float %2547, %2547
  %3242 = fmul fast float %3032, %3032
  %3243 = fadd fast float %3242, %3241
  %3244 = fmul fast float %3243, 0x3FE5152B00000000
  %3245 = fmul fast float %2547, 0xBFCC1F85E0000000
  %3246 = fmul fast float %3245, %3032
  %3247 = fadd fast float %3246, 0xBFE1363700000000
  %3248 = fadd fast float %3247, %3240
  %3249 = fsub fast float %3248, %3244
  %3250 = fmul fast float %3239, 0x3FBA6F0D00000000
  %3251 = fmul fast float %3243, 0x3FD0432880000000
  %3252 = fmul fast float %2547, 0xBFEF110800000000
  %3253 = fmul fast float %3252, %3032
  %3254 = fadd fast float %3253, 1.000000e+00
  %3255 = fsub fast float %3254, %3250
  %3256 = fadd fast float %3255, %3251
  %3257 = fdiv fast float %3249, %3256
  %3258 = call float @dx.op.unary.f32(i32 7, float %3257)  ; Saturate(value)
  %3259 = fsub fast float %3258, %2547
  %3260 = fmul fast float %3259, %3213
  %3261 = fadd fast float %3260, %2547
  br label %3276

; <label>:3262                                    ; preds = %3228
  %3263 = icmp eq i32 %3202, 8
  br i1 %3263, label %3264, label %3276

; <label>:3264                                    ; preds = %3262
  %3265 = fmul fast float %3207, %3033
  %3266 = fmul fast float %3207, %3034
  %3267 = fadd fast float %3265, %2538
  %3268 = fadd fast float %3266, %2539
  %3269 = call float @dx.op.binary.f32(i32 36, float %2548, float %3035)  ; FMin(a,b)
  %3270 = fsub fast float %3269, %2548
  %3271 = fmul fast float %3270, %3210
  %3272 = fadd fast float %3271, %2548
  %3273 = fsub fast float %3032, %2547
  %3274 = fmul fast float %3213, %3273
  %3275 = fadd fast float %3274, %2547
  br label %3276

; <label>:3276                                    ; preds = %3264, %3262, %3230, %3215, %3193, %2731, %2550, %2537
  %3277 = phi float [ %2538, %3193 ], [ %2538, %2731 ], [ %2538, %2537 ], [ %2538, %2550 ], [ %3220, %3215 ], [ %3233, %3230 ], [ %2538, %3262 ], [ %3267, %3264 ]
  %3278 = phi float [ %2539, %3193 ], [ %2539, %2731 ], [ %2539, %2537 ], [ %2539, %2550 ], [ %3221, %3215 ], [ %3234, %3230 ], [ %2539, %3262 ], [ %3268, %3264 ]
  %3279 = phi float [ %3194, %3193 ], [ %2540, %2731 ], [ %2540, %2537 ], [ %2540, %2550 ], [ %3194, %3215 ], [ %3194, %3230 ], [ %3194, %3262 ], [ %3194, %3264 ]
  %3280 = phi float [ %3195, %3193 ], [ %2541, %2731 ], [ %2541, %2537 ], [ %2541, %2550 ], [ %3195, %3215 ], [ %3195, %3230 ], [ %3195, %3262 ], [ %3195, %3264 ]
  %3281 = phi float [ %3196, %3193 ], [ %2542, %2731 ], [ %2542, %2537 ], [ %2542, %2550 ], [ %3196, %3215 ], [ %3196, %3230 ], [ %3196, %3262 ], [ %3196, %3264 ]
  %3282 = phi float [ %3197, %3193 ], [ %2543, %2731 ], [ %2543, %2537 ], [ %2543, %2550 ], [ %3197, %3215 ], [ %3197, %3230 ], [ %3197, %3262 ], [ %3197, %3264 ]
  %3283 = phi float [ %3198, %3193 ], [ %2544, %2731 ], [ %2544, %2537 ], [ %2544, %2550 ], [ %3198, %3215 ], [ %3198, %3230 ], [ %3198, %3262 ], [ %3198, %3264 ]
  %3284 = phi float [ %3199, %3193 ], [ %2545, %2731 ], [ %2545, %2537 ], [ %2545, %2550 ], [ %3199, %3215 ], [ %3199, %3230 ], [ %3199, %3262 ], [ %3199, %3264 ]
  %3285 = phi float [ %3200, %3193 ], [ %2546, %2731 ], [ %2546, %2537 ], [ %2546, %2550 ], [ %3200, %3215 ], [ %3200, %3230 ], [ %3200, %3262 ], [ %3200, %3264 ]
  %3286 = phi float [ %2547, %3193 ], [ %2547, %2731 ], [ %2547, %2537 ], [ %2547, %2550 ], [ %3227, %3215 ], [ %3261, %3230 ], [ %2547, %3262 ], [ %3275, %3264 ]
  %3287 = phi float [ %2548, %3193 ], [ %2548, %2731 ], [ %2548, %2537 ], [ %2548, %2550 ], [ %3224, %3215 ], [ %3238, %3230 ], [ %2548, %3262 ], [ %3272, %3264 ]
  %3288 = phi float [ %3201, %3193 ], [ %2549, %2731 ], [ %2549, %2537 ], [ %2549, %2550 ], [ %3201, %3215 ], [ %3201, %3230 ], [ %3201, %3262 ], [ %3201, %3264 ]
  %3289 = add i32 %61, 360
  %3290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3289, i32 undef)  ; BufferLoad(srv,index,wot)
  %3291 = extractvalue %dx.types.ResRet.i32 %3290, 0
  %3292 = bitcast i32 %3291 to float
  %3293 = fcmp fast oge float %3292, 0.000000e+00
  %3294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3295 = extractvalue %dx.types.CBufRet.f32 %3294, 0
  %3296 = select i1 %3293, float %3292, float %3295
  %3297 = fadd fast float %3296, %216
  %3298 = and i32 %209, 65535
  %3299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3298)  ; LegacyF16ToF32(value)
  %3300 = lshr i32 %209, 16
  %3301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3300)  ; LegacyF16ToF32(value)
  %3302 = and i32 %210, 65535
  %3303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3302)  ; LegacyF16ToF32(value)
  %3304 = fmul fast float %3299, %3282
  %3305 = fmul fast float %3301, %3283
  %3306 = fmul fast float %3303, %3284
  %3307 = shl i32 %211, 4
  %3308 = and i32 %3307, 32752
  %3309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3308)  ; LegacyF16ToF32(value)
  %3310 = lshr i32 %211, 7
  %3311 = and i32 %3310, 32752
  %3312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3311)  ; LegacyF16ToF32(value)
  %3313 = lshr i32 %211, 22
  %3314 = shl nuw nsw i32 %3313, 5
  %3315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3314)  ; LegacyF16ToF32(value)
  %3316 = and i32 %212, 65535
  %3317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3316)  ; LegacyF16ToF32(value)
  %3318 = fmul fast float %3309, %3279
  %3319 = fmul fast float %3318, %3317
  %3320 = fmul fast float %3312, %3280
  %3321 = fmul fast float %3320, %3317
  %3322 = fmul fast float %3315, %3281
  %3323 = fmul fast float %3322, %3317
  %3324 = call float @dx.op.dot2.f32(i32 54, float %3277, float %3278, float %3277, float %3278)  ; Dot2(ax,ay,bx,by)
  %3325 = fmul fast float %3324, 0x3FE3333340000000
  %3326 = fsub fast float 1.000000e+00, %3325
  %3327 = call float @dx.op.dot3.f32(i32 55, float %3277, float %3278, float %3326, float %3277, float %3278, float %3326)  ; Dot3(ax,ay,az,bx,by,bz)
  %3328 = call float @dx.op.unary.f32(i32 25, float %3327)  ; Rsqrt(value)
  %3329 = fmul fast float %3328, %3277
  %3330 = fmul fast float %3328, %3278
  %3331 = fmul fast float %3326, %3328
  %3332 = fmul fast float %3331, %123
  %3333 = fmul fast float %3331, %124
  %3334 = fmul fast float %3331, %125
  %3335 = fmul fast float %3329, %87
  %3336 = fmul fast float %3329, %88
  %3337 = fmul fast float %3329, %89
  %3338 = fadd fast float %3332, %3335
  %3339 = fadd fast float %3333, %3336
  %3340 = fadd fast float %3334, %3337
  %3341 = fmul fast float %135, %3330
  %3342 = fmul fast float %136, %3330
  %3343 = fmul fast float %137, %3330
  %3344 = fadd fast float %3338, %3341
  %3345 = fadd fast float %3339, %3342
  %3346 = fadd fast float %3340, %3343
  %3347 = call float @dx.op.dot3.f32(i32 55, float %3344, float %3345, float %3346, float %3344, float %3345, float %3346)  ; Dot3(ax,ay,az,bx,by,bz)
  %3348 = call float @dx.op.unary.f32(i32 25, float %3347)  ; Rsqrt(value)
  %3349 = fmul fast float %3344, %3348
  %3350 = fmul fast float %3345, %3348
  %3351 = fmul fast float %3346, %3348
  %3352 = icmp eq i32 %63, 65535
  br i1 %3352, label %3871, label %3353

; <label>:3353                                    ; preds = %3276
  %3354 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3355 = call float @dx.op.unary.f32(i32 83, float %65)  ; DerivCoarseX(value)
  %3356 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %3357 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3358 = call float @dx.op.unary.f32(i32 84, float %65)  ; DerivCoarseY(value)
  %3359 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %3360 = fadd fast float %3354, %64
  %3361 = fadd fast float %3355, %65
  %3362 = fadd fast float %3356, %66
  %3363 = fadd fast float %3357, %64
  %3364 = fadd fast float %3358, %65
  %3365 = fadd fast float %3359, %66
  %3366 = mul i32 %63, 48
  %3367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.f32 %3367, 0
  %3369 = extractvalue %dx.types.ResRet.f32 %3367, 1
  %3370 = extractvalue %dx.types.ResRet.f32 %3367, 2
  %3371 = add i32 %3366, 16
  %3372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3373 = extractvalue %dx.types.ResRet.f32 %3372, 0
  %3374 = extractvalue %dx.types.ResRet.f32 %3372, 1
  %3375 = extractvalue %dx.types.ResRet.f32 %3372, 2
  %3376 = add i32 %3366, 32
  %3377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3376, i32 undef)  ; BufferLoad(srv,index,wot)
  %3378 = extractvalue %dx.types.ResRet.f32 %3377, 0
  %3379 = extractvalue %dx.types.ResRet.f32 %3377, 1
  %3380 = extractvalue %dx.types.ResRet.f32 %3377, 2
  %3381 = extractvalue %dx.types.ResRet.f32 %3377, 3
  %3382 = bitcast float %3381 to i32
  %3383 = fmul fast float %3368, %64
  %3384 = fmul fast float %3369, %65
  %3385 = fmul fast float %3370, %66
  %3386 = fsub fast float %3383, %3373
  %3387 = fsub fast float %3384, %3374
  %3388 = fsub fast float %3385, %3375
  %3389 = call float @dx.op.unary.f32(i32 7, float %3386)  ; Saturate(value)
  %3390 = call float @dx.op.unary.f32(i32 7, float %3387)  ; Saturate(value)
  %3391 = call float @dx.op.unary.f32(i32 7, float %3388)  ; Saturate(value)
  %3392 = fmul fast float %3389, %3378
  %3393 = fmul fast float %3390, %3379
  %3394 = fmul fast float %3391, %3380
  %3395 = fadd fast float %3378, -1.000000e+00
  %3396 = fadd fast float %3379, -1.000000e+00
  %3397 = fadd fast float %3380, -1.000000e+00
  %3398 = call float @dx.op.unary.f32(i32 27, float %3392)  ; Round_ni(value)
  %3399 = call float @dx.op.unary.f32(i32 27, float %3393)  ; Round_ni(value)
  %3400 = call float @dx.op.unary.f32(i32 27, float %3394)  ; Round_ni(value)
  %3401 = call float @dx.op.binary.f32(i32 36, float %3398, float %3395)  ; FMin(a,b)
  %3402 = call float @dx.op.binary.f32(i32 36, float %3399, float %3396)  ; FMin(a,b)
  %3403 = call float @dx.op.binary.f32(i32 36, float %3400, float %3397)  ; FMin(a,b)
  %3404 = fmul fast float %3403, %3379
  %3405 = fadd fast float %3404, %3402
  %3406 = fmul fast float %3405, %3378
  %3407 = fadd fast float %3406, %3401
  %3408 = fptosi float %3407 to i32
  %3409 = add nsw i32 %3408, %3382
  %3410 = shl nsw i32 %3409, 2
  %3411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3410, i32 undef)  ; BufferLoad(srv,index,wot)
  %3412 = extractvalue %dx.types.ResRet.i32 %3411, 0
  %3413 = lshr i32 %3412, 16
  %3414 = icmp eq i32 %3413, 0
  br i1 %3414, label %3839, label %3415

; <label>:3415                                    ; preds = %3353
  br label %3416

; <label>:3416                                    ; preds = %3538, %3415
  %3417 = phi i32 [ %3440, %3538 ], [ %3413, %3415 ]
  %3418 = phi float [ %3539, %3538 ], [ 0.000000e+00, %3415 ]
  %3419 = phi float [ %3540, %3538 ], [ %1068, %3415 ]
  %3420 = phi float [ %3541, %3538 ], [ %3297, %3415 ]
  %3421 = phi float [ %3542, %3538 ], [ %3288, %3415 ]
  %3422 = phi float [ %3543, %3538 ], [ 0.000000e+00, %3415 ]
  %3423 = phi float [ %3544, %3538 ], [ 0.000000e+00, %3415 ]
  %3424 = phi float [ %3545, %3538 ], [ %3319, %3415 ]
  %3425 = phi float [ %3546, %3538 ], [ %3321, %3415 ]
  %3426 = phi float [ %3547, %3538 ], [ %3323, %3415 ]
  %3427 = phi float [ %3548, %3538 ], [ %3349, %3415 ]
  %3428 = phi float [ %3549, %3538 ], [ %3350, %3415 ]
  %3429 = phi float [ %3550, %3538 ], [ %3351, %3415 ]
  %3430 = phi float [ %3551, %3538 ], [ %3287, %3415 ]
  %3431 = phi float [ %3552, %3538 ], [ %3286, %3415 ]
  %3432 = phi float [ %3553, %3538 ], [ 0.000000e+00, %3415 ]
  %3433 = phi float [ %3554, %3538 ], [ %3285, %3415 ]
  %3434 = phi float [ %3555, %3538 ], [ %3304, %3415 ]
  %3435 = phi float [ %3556, %3538 ], [ %3305, %3415 ]
  %3436 = phi float [ %3557, %3538 ], [ %3306, %3415 ]
  %3437 = shl nuw nsw i32 %3417, 2
  %3438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.i32 %3438, 0
  %3440 = lshr i32 %3439, 16
  %3441 = shl i32 %3439, 8
  %3442 = and i32 %3441, 16776960
  %3443 = or i32 %3442, 48
  %3444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3443, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.f32 %3444, 0
  %3446 = extractvalue %dx.types.ResRet.f32 %3444, 1
  %3447 = extractvalue %dx.types.ResRet.f32 %3444, 2
  %3448 = or i32 %3442, 64
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3448, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = extractvalue %dx.types.ResRet.i32 %3449, 1
  %3452 = or i32 %3442, 80
  %3453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3452, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.f32 %3453, 2
  %3455 = extractvalue %dx.types.ResRet.f32 %3453, 3
  %3456 = or i32 %3442, 96
  %3457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.f32 %3457, 0
  %3459 = extractvalue %dx.types.ResRet.f32 %3457, 1
  %3460 = extractvalue %dx.types.ResRet.f32 %3457, 2
  %3461 = extractvalue %dx.types.ResRet.f32 %3457, 3
  %3462 = or i32 %3442, 112
  %3463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3462, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.f32 %3463, 2
  %3465 = or i32 %3442, 128
  %3466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.f32 %3466, 0
  %3468 = extractvalue %dx.types.ResRet.f32 %3466, 1
  %3469 = extractvalue %dx.types.ResRet.f32 %3466, 2
  %3470 = extractvalue %dx.types.ResRet.f32 %3466, 3
  %3471 = or i32 %3442, 144
  %3472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3471, i32 undef)  ; BufferLoad(srv,index,wot)
  %3473 = extractvalue %dx.types.ResRet.f32 %3472, 0
  %3474 = extractvalue %dx.types.ResRet.f32 %3472, 1
  %3475 = extractvalue %dx.types.ResRet.f32 %3472, 2
  %3476 = extractvalue %dx.types.ResRet.f32 %3472, 3
  %3477 = or i32 %3442, 160
  %3478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3477, i32 undef)  ; BufferLoad(srv,index,wot)
  %3479 = extractvalue %dx.types.ResRet.f32 %3478, 0
  %3480 = extractvalue %dx.types.ResRet.f32 %3478, 1
  %3481 = extractvalue %dx.types.ResRet.f32 %3478, 2
  %3482 = extractvalue %dx.types.ResRet.f32 %3478, 3
  %3483 = or i32 %3442, 192
  %3484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.i32 %3484, 0
  %3486 = or i32 %3442, 208
  %3487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3486, i32 undef)  ; BufferLoad(srv,index,wot)
  %3488 = extractvalue %dx.types.ResRet.f32 %3487, 0
  %3489 = or i32 %3442, 248
  %3490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3489, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.f32 %3490, 0
  %3492 = extractvalue %dx.types.ResRet.f32 %3490, 1
  %3493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3442, i32 undef)  ; BufferLoad(srv,index,wot)
  %3494 = extractvalue %dx.types.ResRet.f32 %3493, 0
  %3495 = extractvalue %dx.types.ResRet.f32 %3493, 1
  %3496 = extractvalue %dx.types.ResRet.f32 %3493, 2
  %3497 = extractvalue %dx.types.ResRet.f32 %3493, 3
  %3498 = call float @dx.op.dot4.f32(i32 56, float %3494, float %3495, float %3496, float %3497, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3499 = or i32 %3442, 16
  %3500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.f32 %3500, 0
  %3502 = extractvalue %dx.types.ResRet.f32 %3500, 1
  %3503 = extractvalue %dx.types.ResRet.f32 %3500, 2
  %3504 = extractvalue %dx.types.ResRet.f32 %3500, 3
  %3505 = call float @dx.op.dot4.f32(i32 56, float %3501, float %3502, float %3503, float %3504, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3506 = or i32 %3442, 32
  %3507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.f32 %3507, 0
  %3509 = extractvalue %dx.types.ResRet.f32 %3507, 1
  %3510 = extractvalue %dx.types.ResRet.f32 %3507, 2
  %3511 = extractvalue %dx.types.ResRet.f32 %3507, 3
  %3512 = call float @dx.op.dot4.f32(i32 56, float %3508, float %3509, float %3510, float %3511, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3513 = call float @dx.op.unary.f32(i32 27, float %3498)  ; Round_ni(value)
  %3514 = call float @dx.op.unary.f32(i32 6, float %3513)  ; FAbs(value)
  %3515 = call float @dx.op.unary.f32(i32 27, float %3505)  ; Round_ni(value)
  %3516 = call float @dx.op.unary.f32(i32 6, float %3515)  ; FAbs(value)
  %3517 = call float @dx.op.unary.f32(i32 6, float %3512)  ; FAbs(value)
  %3518 = call float @dx.op.unary.f32(i32 27, float %3517)  ; Round_ni(value)
  %3519 = fadd fast float %3516, %3514
  %3520 = fadd fast float %3519, %3518
  %3521 = fcmp fast oeq float %3520, 0.000000e+00
  %3522 = call float @dx.op.dot4.f32(i32 56, float %3494, float %3495, float %3496, float %3497, float %3360, float %3361, float %3362, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3523 = call float @dx.op.dot4.f32(i32 56, float %3501, float %3502, float %3503, float %3504, float %3360, float %3361, float %3362, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3524 = call float @dx.op.dot4.f32(i32 56, float %3494, float %3495, float %3496, float %3497, float %3363, float %3364, float %3365, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3525 = call float @dx.op.dot4.f32(i32 56, float %3501, float %3502, float %3503, float %3504, float %3363, float %3364, float %3365, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3526 = fsub fast float %3522, %3498
  %3527 = fsub fast float %3524, %3498
  %3528 = fsub fast float %3523, %3505
  %3529 = fsub fast float %3525, %3505
  %3530 = call float @dx.op.dot3.f32(i32 55, float %3445, float %3446, float %3447, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %3531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3532 = extractvalue %dx.types.CBufRet.f32 %3531, 2
  %3533 = fadd fast float %3532, %3530
  %3534 = call float @dx.op.unary.f32(i32 7, float %3533)  ; Saturate(value)
  %3535 = extractvalue %dx.types.CBufRet.f32 %3531, 0
  %3536 = fcmp fast ogt float %3534, %3535
  %3537 = and i1 %3521, %3536
  br i1 %3537, label %3559, label %3538

; <label>:3538                                    ; preds = %3825, %3642, %3559, %3416
  %3539 = phi float [ %3418, %3559 ], [ %3645, %3642 ], [ %3645, %3825 ], [ %3418, %3416 ]
  %3540 = phi float [ %3419, %3559 ], [ %3419, %3642 ], [ %3800, %3825 ], [ %3419, %3416 ]
  %3541 = phi float [ %3420, %3559 ], [ %3420, %3642 ], [ %3799, %3825 ], [ %3420, %3416 ]
  %3542 = phi float [ %3421, %3559 ], [ %3421, %3642 ], [ %3797, %3825 ], [ %3421, %3416 ]
  %3543 = phi float [ %3422, %3559 ], [ %3422, %3642 ], [ %3769, %3825 ], [ %3422, %3416 ]
  %3544 = phi float [ %3423, %3559 ], [ %3423, %3642 ], [ %3767, %3825 ], [ %3423, %3416 ]
  %3545 = phi float [ %3424, %3559 ], [ %3424, %3642 ], [ %3835, %3825 ], [ %3424, %3416 ]
  %3546 = phi float [ %3425, %3559 ], [ %3425, %3642 ], [ %3836, %3825 ], [ %3425, %3416 ]
  %3547 = phi float [ %3426, %3559 ], [ %3426, %3642 ], [ %3837, %3825 ], [ %3426, %3416 ]
  %3548 = phi float [ %3427, %3559 ], [ %3427, %3642 ], [ %3748, %3825 ], [ %3427, %3416 ]
  %3549 = phi float [ %3428, %3559 ], [ %3428, %3642 ], [ %3749, %3825 ], [ %3428, %3416 ]
  %3550 = phi float [ %3429, %3559 ], [ %3429, %3642 ], [ %3750, %3825 ], [ %3429, %3416 ]
  %3551 = phi float [ %3430, %3559 ], [ %3430, %3642 ], [ %3777, %3825 ], [ %3430, %3416 ]
  %3552 = phi float [ %3431, %3559 ], [ %3431, %3642 ], [ %3774, %3825 ], [ %3431, %3416 ]
  %3553 = phi float [ %3432, %3559 ], [ %3432, %3642 ], [ %3771, %3825 ], [ %3432, %3416 ]
  %3554 = phi float [ %3433, %3559 ], [ %3433, %3642 ], [ %3765, %3825 ], [ %3433, %3416 ]
  %3555 = phi float [ %3434, %3559 ], [ %3434, %3642 ], [ %3760, %3825 ], [ %3434, %3416 ]
  %3556 = phi float [ %3435, %3559 ], [ %3435, %3642 ], [ %3761, %3825 ], [ %3435, %3416 ]
  %3557 = phi float [ %3436, %3559 ], [ %3436, %3642 ], [ %3762, %3825 ], [ %3436, %3416 ]
  %3558 = icmp eq i32 %3440, 0
  br i1 %3558, label %3838, label %3416

; <label>:3559                                    ; preds = %3416
  %3560 = extractvalue %dx.types.ResRet.f32 %3444, 3
  %3561 = extractvalue %dx.types.ResRet.f32 %3463, 3
  %3562 = extractvalue %dx.types.ResRet.f32 %3463, 1
  %3563 = extractvalue %dx.types.ResRet.f32 %3463, 0
  %3564 = extractvalue %dx.types.ResRet.f32 %3453, 1
  %3565 = extractvalue %dx.types.ResRet.f32 %3453, 0
  %3566 = extractvalue %dx.types.ResRet.i32 %3449, 3
  %3567 = extractvalue %dx.types.ResRet.i32 %3449, 2
  %3568 = bitcast float %3560 to i32
  %3569 = add i32 %3566, 0
  %3570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3569, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3572 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3570, %dx.types.Handle %3571, float %3498, float %3505, float undef, float undef, i32 0, i32 0, i32 undef, float %3526, float %3528, float undef, float %3527, float %3529, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3573 = extractvalue %dx.types.ResRet.f32 %3572, 0
  %3574 = fmul fast float %3573, %3565
  %3575 = fadd fast float %3574, %3564
  %3576 = call float @dx.op.unary.f32(i32 7, float %3575)  ; Saturate(value)
  %3577 = fmul fast float %3498, %3458
  %3578 = call float @dx.op.tertiary.f32(i32 46, float %3459, float %3505, float %3577)  ; FMad(a,b,c)
  %3579 = fadd fast float %3578, %3563
  %3580 = fmul fast float %3498, %3460
  %3581 = call float @dx.op.tertiary.f32(i32 46, float %3461, float %3505, float %3580)  ; FMad(a,b,c)
  %3582 = fadd fast float %3581, %3562
  %3583 = fmul fast float %3526, %3458
  %3584 = call float @dx.op.tertiary.f32(i32 46, float %3459, float %3528, float %3583)  ; FMad(a,b,c)
  %3585 = fmul fast float %3526, %3460
  %3586 = call float @dx.op.tertiary.f32(i32 46, float %3461, float %3528, float %3585)  ; FMad(a,b,c)
  %3587 = fmul fast float %3527, %3458
  %3588 = call float @dx.op.tertiary.f32(i32 46, float %3459, float %3529, float %3587)  ; FMad(a,b,c)
  %3589 = fmul fast float %3527, %3460
  %3590 = call float @dx.op.tertiary.f32(i32 46, float %3461, float %3529, float %3589)  ; FMad(a,b,c)
  %3591 = add i32 %3567, 0
  %3592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3591, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3593 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3592, %dx.types.Handle %3571, float %3579, float %3582, float undef, float undef, i32 0, i32 0, i32 undef, float %3584, float %3586, float undef, float %3588, float %3590, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3594 = extractvalue %dx.types.ResRet.f32 %3593, 0
  %3595 = and i32 %3568, 1024
  %3596 = icmp ne i32 %3595, 0
  %3597 = fcmp fast ogt float %3594, 0x3FE0101020000000
  %3598 = uitofp i1 %3597 to float
  %3599 = select i1 %3596, float %3598, float %3594
  %3600 = and i32 %3568, 8192
  %3601 = icmp ne i32 %3600, 0
  %3602 = select i1 %3601, float %3561, float 1.000000e+00
  %3603 = fmul fast float %3498, 2.000000e+00
  %3604 = fadd fast float %3603, -1.000000e+00
  %3605 = call float @dx.op.unary.f32(i32 6, float %3604)  ; FAbs(value)
  %3606 = fmul fast float %3605, %3491
  %3607 = fsub fast float %3606, %3491
  %3608 = call float @dx.op.unary.f32(i32 7, float %3607)  ; Saturate(value)
  %3609 = fmul fast float %3505, 2.000000e+00
  %3610 = fadd fast float %3609, -1.000000e+00
  %3611 = call float @dx.op.unary.f32(i32 6, float %3610)  ; FAbs(value)
  %3612 = fmul fast float %3611, %3492
  %3613 = fsub fast float %3612, %3492
  %3614 = call float @dx.op.unary.f32(i32 7, float %3613)  ; Saturate(value)
  %3615 = fmul fast float %3517, %3454
  %3616 = fsub fast float %3615, %3454
  %3617 = call float @dx.op.unary.f32(i32 7, float %3616)  ; Saturate(value)
  %3618 = fmul fast float %3576, %3602
  %3619 = fmul fast float %3618, %3573
  %3620 = fmul fast float %3619, %3608
  %3621 = fmul fast float %3620, %3599
  %3622 = fmul fast float %3621, %3614
  %3623 = fmul fast float %3622, %3617
  %3624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3625 = extractvalue %dx.types.CBufRet.f32 %3624, 1
  %3626 = extractvalue %dx.types.CBufRet.f32 %3624, 0
  %3627 = fsub fast float %3534, %3626
  %3628 = fmul fast float %3627, %3625
  %3629 = call float @dx.op.unary.f32(i32 7, float %3628)  ; Saturate(value)
  %3630 = fmul fast float %3623, %3455
  %3631 = fadd fast float %3623, %3455
  %3632 = fmul fast float %3631, %3464
  %3633 = fsub fast float %3632, %3464
  %3634 = call float @dx.op.unary.f32(i32 7, float %3633)  ; Saturate(value)
  %3635 = and i32 %3568, 128
  %3636 = icmp ne i32 %3635, 0
  %3637 = select i1 %3636, float %3634, float %3630
  %3638 = fmul fast float %3637, %3629
  %3639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3640 = extractvalue %dx.types.CBufRet.f32 %3639, 0
  %3641 = fcmp fast ugt float %3638, %3640
  br i1 %3641, label %3642, label %3538

; <label>:3642                                    ; preds = %3559
  %3643 = select i1 %3601, float %3638, float 0.000000e+00
  %3644 = fadd fast float %3643, %3418
  %3645 = call float @dx.op.unary.f32(i32 7, float %3644)  ; Saturate(value)
  br i1 %3601, label %3538, label %3646

; <label>:3646                                    ; preds = %3642
  %3647 = and i32 %3568, 4
  %3648 = and i32 %3568, 8
  %3649 = add i32 %3450, 0
  %3650 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3649, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3652 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3650, %dx.types.Handle %3651, float %3579, float %3582, float undef, float undef, i32 0, i32 0, i32 undef, float %3584, float %3586, float undef, float %3588, float %3590, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3653 = extractvalue %dx.types.ResRet.f32 %3652, 0
  %3654 = extractvalue %dx.types.ResRet.f32 %3652, 1
  %3655 = extractvalue %dx.types.ResRet.f32 %3652, 2
  %3656 = extractvalue %dx.types.ResRet.f32 %3652, 3
  %3657 = bitcast float %3476 to i32
  %3658 = and i32 %3657, 255
  %3659 = uitofp i32 %3658 to float
  %3660 = lshr i32 %3657, 8
  %3661 = and i32 %3660, 255
  %3662 = uitofp i32 %3661 to float
  %3663 = fmul fast float %3656, %3659
  %3664 = fadd fast float %3663, %3662
  %3665 = fmul fast float %3664, 0x3F70101000000000
  %3666 = add i32 %3451, 0
  %3667 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3666, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3668 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3667, %dx.types.Handle %3651, float %3579, float %3582, float undef, float undef, i32 0, i32 0, i32 undef, float %3584, float %3586, float undef, float %3588, float %3590, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3669 = extractvalue %dx.types.ResRet.f32 %3668, 0
  %3670 = extractvalue %dx.types.ResRet.f32 %3668, 1
  %3671 = extractvalue %dx.types.ResRet.f32 %3668, 2
  %3672 = extractvalue %dx.types.ResRet.f32 %3668, 3
  %3673 = bitcast float %3470 to i32
  %3674 = and i32 %3673, 255
  %3675 = uitofp i32 %3674 to float
  %3676 = lshr i32 %3673, 8
  %3677 = and i32 %3676, 255
  %3678 = uitofp i32 %3677 to float
  %3679 = lshr i32 %3673, 16
  %3680 = and i32 %3679, 255
  %3681 = uitofp i32 %3680 to float
  %3682 = fmul fast float %3681, 0x3F70101000000000
  %3683 = fmul fast float %3669, %3675
  %3684 = fadd fast float %3683, %3678
  %3685 = fmul fast float %3684, 0x3F70101000000000
  %3686 = fadd fast float %3670, -5.000000e-01
  %3687 = fadd fast float %3672, -5.000000e-01
  %3688 = fmul fast float %3686, %3682
  %3689 = fmul fast float %3687, %3682
  %3690 = fadd fast float %3688, 5.000000e-01
  %3691 = fadd fast float %3689, 5.000000e-01
  %3692 = fmul fast float %3653, %3479
  %3693 = fmul fast float %3654, %3480
  %3694 = fmul fast float %3655, %3481
  %3695 = fmul fast float %3690, 2.000000e+00
  %3696 = fadd fast float %3695, -1.000000e+00
  %3697 = fmul fast float %3691, 2.000000e+00
  %3698 = fadd fast float %3697, -1.000000e+00
  %3699 = fadd fast float %3696, %3698
  %3700 = fmul fast float %3699, 5.000000e-01
  %3701 = fsub fast float %3696, %3698
  %3702 = fmul fast float %3701, 5.000000e-01
  %3703 = call float @dx.op.unary.f32(i32 6, float %3700)  ; FAbs(value)
  %3704 = fsub fast float 1.000000e+00, %3703
  %3705 = call float @dx.op.unary.f32(i32 6, float %3702)  ; FAbs(value)
  %3706 = fsub fast float %3704, %3705
  %3707 = call float @dx.op.dot3.f32(i32 55, float %3700, float %3702, float %3706, float %3700, float %3702, float %3706)  ; Dot3(ax,ay,az,bx,by,bz)
  %3708 = call float @dx.op.unary.f32(i32 25, float %3707)  ; Rsqrt(value)
  %3709 = fmul fast float %3700, %3708
  %3710 = fmul fast float %3702, %3708
  %3711 = fmul fast float %3708, %3706
  %3712 = fmul fast float %3711, %3445
  %3713 = fmul fast float %3711, %3446
  %3714 = fmul fast float %3711, %3447
  %3715 = fmul fast float %3709, %3467
  %3716 = fmul fast float %3709, %3468
  %3717 = fmul fast float %3709, %3469
  %3718 = fadd fast float %3715, %3712
  %3719 = fadd fast float %3716, %3713
  %3720 = fadd fast float %3717, %3714
  %3721 = fmul fast float %3710, %3473
  %3722 = fmul fast float %3710, %3474
  %3723 = fmul fast float %3710, %3475
  %3724 = fadd fast float %3718, %3721
  %3725 = fadd fast float %3719, %3722
  %3726 = fadd fast float %3720, %3723
  %3727 = call float @dx.op.dot3.f32(i32 55, float %3724, float %3725, float %3726, float %3724, float %3725, float %3726)  ; Dot3(ax,ay,az,bx,by,bz)
  %3728 = call float @dx.op.unary.f32(i32 25, float %3727)  ; Rsqrt(value)
  %3729 = fmul fast float %3724, %3728
  %3730 = fmul fast float %3725, %3728
  %3731 = fmul fast float %3726, %3728
  %3732 = icmp ne i32 %3648, 0
  %3733 = select i1 %3732, float 1.000000e+00, float 0.000000e+00
  %3734 = fmul fast float %3638, %3733
  %3735 = and i32 %3568, 1
  %3736 = icmp eq i32 %3735, 0
  br i1 %3736, label %3737, label %3741

; <label>:3737                                    ; preds = %3646
  %3738 = fsub fast float %3729, %3427
  %3739 = fsub fast float %3730, %3428
  %3740 = fsub fast float %3731, %3429
  br label %3741

; <label>:3741                                    ; preds = %3737, %3646
  %3742 = phi float [ %3738, %3737 ], [ %3729, %3646 ]
  %3743 = phi float [ %3739, %3737 ], [ %3730, %3646 ]
  %3744 = phi float [ %3740, %3737 ], [ %3731, %3646 ]
  %3745 = fmul float %3744, %3734
  %3746 = fmul float %3743, %3734
  %3747 = fmul float %3742, %3734
  %3748 = fadd fast float %3747, %3427
  %3749 = fadd fast float %3746, %3428
  %3750 = fadd fast float %3745, %3429
  %3751 = icmp ne i32 %3647, 0
  %3752 = select i1 %3751, float 1.000000e+00, float 0.000000e+00
  %3753 = fmul fast float %3638, %3752
  %3754 = fsub fast float %3692, %3434
  %3755 = fsub fast float %3693, %3435
  %3756 = fsub fast float %3694, %3436
  %3757 = fmul fast float %3754, %3753
  %3758 = fmul fast float %3755, %3753
  %3759 = fmul fast float %3756, %3753
  %3760 = fadd fast float %3757, %3434
  %3761 = fadd fast float %3758, %3435
  %3762 = fadd fast float %3759, %3436
  %3763 = fsub fast float %3665, %3433
  %3764 = fmul fast float %3763, %3753
  %3765 = fadd fast float %3764, %3433
  %3766 = fmul fast float %3753, %3423
  %3767 = fsub fast float %3423, %3766
  %3768 = fmul fast float %3753, %3422
  %3769 = fsub fast float %3422, %3768
  %3770 = fadd fast float %3638, %3432
  %3771 = call float @dx.op.unary.f32(i32 7, float %3770)  ; Saturate(value)
  %3772 = fsub fast float %3685, %3431
  %3773 = fmul fast float %3772, %3734
  %3774 = fadd fast float %3773, %3431
  %3775 = fsub fast float %3671, %3430
  %3776 = fmul fast float %3775, %3734
  %3777 = fadd fast float %3776, %3430
  %3778 = call float @dx.op.dot3.f32(i32 55, float %3692, float %3693, float %3694, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3780 = extractvalue %dx.types.CBufRet.f32 %3779, 0
  %3781 = extractvalue %dx.types.CBufRet.f32 %3779, 1
  %3782 = fmul fast float %3781, %3778
  %3783 = fadd fast float %3782, %3780
  %3784 = call float @dx.op.unary.f32(i32 7, float %3783)  ; Saturate(value)
  %3785 = bitcast float %3482 to i32
  %3786 = and i32 %3785, 65535
  %3787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3786)  ; LegacyF16ToF32(value)
  %3788 = lshr i32 %3785, 16
  %3789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3788)  ; LegacyF16ToF32(value)
  %3790 = fcmp fast oge float %3787, 0.000000e+00
  %3791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3792 = extractvalue %dx.types.CBufRet.f32 %3791, 0
  %3793 = select i1 %3790, float %3787, float %3792
  %3794 = fadd fast float %3793, %3789
  %3795 = fsub fast float %3784, %3421
  %3796 = fmul fast float %3795, %3638
  %3797 = fadd fast float %3796, %3421
  %3798 = fmul fast float %3794, %3638
  %3799 = call float @dx.op.binary.f32(i32 35, float %3420, float %3798)  ; FMax(a,b)
  %3800 = call float @dx.op.binary.f32(i32 35, float %3419, float %3638)  ; FMax(a,b)
  %3801 = and i32 %3568, 16
  %3802 = icmp eq i32 %3801, 0
  br i1 %3802, label %3825, label %3803

; <label>:3803                                    ; preds = %3741
  %3804 = bitcast float %3488 to i32
  %3805 = add i32 %3485, 0
  %3806 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3805, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3807 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3806, %dx.types.Handle %3651, float %3579, float %3582, float undef, float undef, i32 0, i32 0, i32 undef, float %3584, float %3586, float undef, float %3588, float %3590, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3808 = extractvalue %dx.types.ResRet.f32 %3807, 0
  %3809 = extractvalue %dx.types.ResRet.f32 %3807, 1
  %3810 = extractvalue %dx.types.ResRet.f32 %3807, 2
  %3811 = and i32 %3804, 65535
  %3812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3811)  ; LegacyF16ToF32(value)
  %3813 = fmul fast float %3808, %3479
  %3814 = fmul fast float %3809, %3480
  %3815 = fmul fast float %3810, %3481
  %3816 = and i32 %3568, 16384
  %3817 = icmp ne i32 %3816, 0
  %3818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3819 = extractvalue %dx.types.CBufRet.f32 %3818, 0
  %3820 = select i1 %3817, float %3819, float 1.000000e+00
  %3821 = fmul fast float %3820, %3812
  %3822 = fmul fast float %3813, %3821
  %3823 = fmul fast float %3814, %3821
  %3824 = fmul fast float %3815, %3821
  br label %3825

; <label>:3825                                    ; preds = %3803, %3741
  %3826 = phi float [ %3822, %3803 ], [ 0.000000e+00, %3741 ]
  %3827 = phi float [ %3823, %3803 ], [ 0.000000e+00, %3741 ]
  %3828 = phi float [ %3824, %3803 ], [ 0.000000e+00, %3741 ]
  %3829 = fsub fast float %3826, %3424
  %3830 = fsub fast float %3827, %3425
  %3831 = fsub fast float %3828, %3426
  %3832 = fmul fast float %3829, %3638
  %3833 = fmul fast float %3830, %3638
  %3834 = fmul fast float %3831, %3638
  %3835 = fadd fast float %3832, %3424
  %3836 = fadd fast float %3833, %3425
  %3837 = fadd fast float %3834, %3426
  br label %3538

; <label>:3838                                    ; preds = %3538
  br label %3839

; <label>:3839                                    ; preds = %3838, %3353
  %3840 = phi float [ 0.000000e+00, %3353 ], [ %3539, %3838 ]
  %3841 = phi float [ %1068, %3353 ], [ %3540, %3838 ]
  %3842 = phi float [ %3297, %3353 ], [ %3541, %3838 ]
  %3843 = phi float [ %3288, %3353 ], [ %3542, %3838 ]
  %3844 = phi float [ 0.000000e+00, %3353 ], [ %3543, %3838 ]
  %3845 = phi float [ 0.000000e+00, %3353 ], [ %3544, %3838 ]
  %3846 = phi float [ %3319, %3353 ], [ %3545, %3838 ]
  %3847 = phi float [ %3321, %3353 ], [ %3546, %3838 ]
  %3848 = phi float [ %3323, %3353 ], [ %3547, %3838 ]
  %3849 = phi float [ %3349, %3353 ], [ %3548, %3838 ]
  %3850 = phi float [ %3350, %3353 ], [ %3549, %3838 ]
  %3851 = phi float [ %3351, %3353 ], [ %3550, %3838 ]
  %3852 = phi float [ %3287, %3353 ], [ %3551, %3838 ]
  %3853 = phi float [ %3286, %3353 ], [ %3552, %3838 ]
  %3854 = phi float [ 0.000000e+00, %3353 ], [ %3553, %3838 ]
  %3855 = phi float [ %3285, %3353 ], [ %3554, %3838 ]
  %3856 = phi float [ %3304, %3353 ], [ %3555, %3838 ]
  %3857 = phi float [ %3305, %3353 ], [ %3556, %3838 ]
  %3858 = phi float [ %3306, %3353 ], [ %3557, %3838 ]
  %3859 = call float @dx.op.dot3.f32(i32 55, float %3849, float %3850, float %3851, float %3849, float %3850, float %3851)  ; Dot3(ax,ay,az,bx,by,bz)
  %3860 = call float @dx.op.unary.f32(i32 25, float %3859)  ; Rsqrt(value)
  %3861 = fmul fast float %3860, %3849
  %3862 = fmul fast float %3860, %3850
  %3863 = fmul fast float %3860, %3851
  %3864 = fadd fast float %3854, %1068
  %3865 = call float @dx.op.unary.f32(i32 7, float %3864)  ; Saturate(value)
  %3866 = call float @dx.op.dot3.f32(i32 55, float %3861, float %3862, float %3863, float %3861, float %3862, float %3863)  ; Dot3(ax,ay,az,bx,by,bz)
  %3867 = call float @dx.op.unary.f32(i32 25, float %3866)  ; Rsqrt(value)
  %3868 = fmul fast float %3867, %3861
  %3869 = fmul fast float %3867, %3862
  %3870 = fmul fast float %3867, %3863
  br label %3871

; <label>:3871                                    ; preds = %3839, %3276
  %3872 = phi float [ %3868, %3839 ], [ %3349, %3276 ]
  %3873 = phi float [ %3869, %3839 ], [ %3350, %3276 ]
  %3874 = phi float [ %3870, %3839 ], [ %3351, %3276 ]
  %3875 = phi float [ %3856, %3839 ], [ %3304, %3276 ]
  %3876 = phi float [ %3857, %3839 ], [ %3305, %3276 ]
  %3877 = phi float [ %3858, %3839 ], [ %3306, %3276 ]
  %3878 = phi float [ %3846, %3839 ], [ %3319, %3276 ]
  %3879 = phi float [ %3847, %3839 ], [ %3321, %3276 ]
  %3880 = phi float [ %3848, %3839 ], [ %3323, %3276 ]
  %3881 = phi float [ %3855, %3839 ], [ %3285, %3276 ]
  %3882 = phi float [ %3865, %3839 ], [ %1068, %3276 ]
  %3883 = phi float [ %3853, %3839 ], [ %3286, %3276 ]
  %3884 = phi float [ %3852, %3839 ], [ %3287, %3276 ]
  %3885 = phi float [ %3845, %3839 ], [ 0.000000e+00, %3276 ]
  %3886 = phi float [ %3844, %3839 ], [ 0.000000e+00, %3276 ]
  %3887 = phi float [ %3840, %3839 ], [ 0.000000e+00, %3276 ]
  %3888 = phi float [ %3842, %3839 ], [ %3297, %3276 ]
  %3889 = phi float [ %3841, %3839 ], [ %1068, %3276 ]
  %3890 = phi float [ %3843, %3839 ], [ %3288, %3276 ]
  %3891 = fadd fast float %3881, 0xBFB99999A0000000
  %3892 = call float @dx.op.unary.f32(i32 7, float %3891)  ; Saturate(value)
  %3893 = fmul fast float %3892, 0x3FF1C71C80000000
  %3894 = call float @dx.op.binary.f32(i32 36, float %3881, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3895 = fsub fast float 1.000000e+00, %3893
  %3896 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3897 = fmul fast float %3896, %3875
  %3898 = fmul fast float %3896, %3876
  %3899 = fmul fast float %3896, %3877
  %3900 = call float @dx.op.unary.f32(i32 7, float %3897)  ; Saturate(value)
  %3901 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3902 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3903 = fmul fast float %3893, %3875
  %3904 = fmul fast float %3893, %3876
  %3905 = fmul fast float %3893, %3877
  %3906 = fadd fast float %3903, %3894
  %3907 = fadd fast float %3904, %3894
  %3908 = fadd fast float %3905, %3894
  %3909 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3910 = call float @dx.op.unary.f32(i32 7, float %3907)  ; Saturate(value)
  %3911 = call float @dx.op.unary.f32(i32 7, float %3908)  ; Saturate(value)
  %3912 = call float @dx.op.unary.f32(i32 7, float %3883)  ; Saturate(value)
  %3913 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3914 = extractvalue %dx.types.CBufRet.i32 %3913, 3
  %3915 = and i32 %3914, 8
  %3916 = icmp ne i32 %3915, 0
  %3917 = call float @dx.op.binary.f32(i32 35, float %3900, float %3875)  ; FMax(a,b)
  %3918 = call float @dx.op.binary.f32(i32 35, float %3901, float %3875)  ; FMax(a,b)
  %3919 = call float @dx.op.binary.f32(i32 35, float %3902, float %3875)  ; FMax(a,b)
  %3920 = call float @dx.op.dot3.f32(i32 55, float %3900, float %3901, float %3902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3921 = select i1 %273, float %3875, float %3900
  %3922 = select i1 %273, float %3920, float %3901
  %3923 = select i1 %273, float 1.000000e+00, float %3902
  %3924 = select i1 %3916, float %3917, float %3921
  %3925 = select i1 %3916, float %3918, float %3922
  %3926 = select i1 %3916, float %3919, float %3923
  %3927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3928 = extractvalue %dx.types.CBufRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.CBufRet.f32 %3927, 1
  %3930 = extractvalue %dx.types.CBufRet.f32 %3927, 2
  %3931 = fadd fast float %3928, %203
  %3932 = fadd fast float %3929, %204
  %3933 = fadd fast float %3930, %205
  %3934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3935 = extractvalue %dx.types.CBufRet.f32 %3934, 0
  %3936 = extractvalue %dx.types.CBufRet.f32 %3934, 1
  %3937 = fsub fast float %3931, %3935
  %3938 = fsub fast float %3932, %3936
  %3939 = fmul fast float %3937, %3937
  %3940 = fmul fast float %3938, %3938
  %3941 = fadd fast float %3939, %3940
  %3942 = call float @dx.op.unary.f32(i32 24, float %3941)  ; Sqrt(value)
  %3943 = extractvalue %dx.types.CBufRet.f32 %3934, 2
  %3944 = fcmp fast olt float %3942, %3943
  br i1 %3944, label %3945, label %4012

; <label>:3945                                    ; preds = %3871
  %3946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3947 = extractvalue %dx.types.CBufRet.f32 %3946, 0
  %3948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3949 = extractvalue %dx.types.CBufRet.f32 %3948, 0
  %3950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3951 = extractvalue %dx.types.CBufRet.f32 %3950, 0
  %3952 = extractvalue %dx.types.CBufRet.f32 %3946, 1
  %3953 = extractvalue %dx.types.CBufRet.f32 %3948, 1
  %3954 = extractvalue %dx.types.CBufRet.f32 %3950, 1
  %3955 = extractvalue %dx.types.CBufRet.f32 %3946, 3
  %3956 = extractvalue %dx.types.CBufRet.f32 %3948, 3
  %3957 = extractvalue %dx.types.CBufRet.f32 %3950, 3
  %3958 = fadd fast float %3955, %3931
  %3959 = fadd fast float %3956, %3932
  %3960 = fadd fast float %3957, %3933
  %3961 = fmul fast float %3958, %3947
  %3962 = call float @dx.op.tertiary.f32(i32 46, float %3959, float %3949, float %3961)  ; FMad(a,b,c)
  %3963 = call float @dx.op.tertiary.f32(i32 46, float %3960, float %3951, float %3962)  ; FMad(a,b,c)
  %3964 = fmul fast float %3958, %3952
  %3965 = call float @dx.op.tertiary.f32(i32 46, float %3959, float %3953, float %3964)  ; FMad(a,b,c)
  %3966 = call float @dx.op.tertiary.f32(i32 46, float %3960, float %3954, float %3965)  ; FMad(a,b,c)
  %3967 = fsub fast float %3963, %3955
  %3968 = fsub fast float %3966, %3956
  %3969 = fsub fast float %3967, %3935
  %3970 = fadd fast float %3969, %3943
  %3971 = fsub fast float %3968, %3936
  %3972 = fadd fast float %3971, %3943
  %3973 = extractvalue %dx.types.CBufRet.f32 %3934, 3
  %3974 = fmul fast float %3970, %3973
  %3975 = fmul fast float %3972, %3973
  %3976 = call float @dx.op.unary.f32(i32 7, float %3974)  ; Saturate(value)
  %3977 = call float @dx.op.unary.f32(i32 7, float %3975)  ; Saturate(value)
  %3978 = fsub fast float 1.000000e+00, %3976
  %3979 = fsub fast float 1.000000e+00, %3977
  %3980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %55, float %3978, float %3979, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = fcmp fast ugt float %3981, 0.000000e+00
  br i1 %3982, label %3983, label %4286

; <label>:3983                                    ; preds = %3945
  %3984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3985 = extractvalue %dx.types.CBufRet.f32 %3984, 2
  %3986 = fmul fast float %3985, %3981
  %3987 = extractvalue %dx.types.CBufRet.f32 %3984, 3
  %3988 = fadd fast float %3987, %3986
  %3989 = extractvalue %dx.types.CBufRet.f32 %3950, 2
  %3990 = fadd fast float %3988, %3957
  %3991 = fmul fast float %3963, %3951
  %3992 = call float @dx.op.tertiary.f32(i32 46, float %3966, float %3954, float %3991)  ; FMad(a,b,c)
  %3993 = call float @dx.op.tertiary.f32(i32 46, float %3990, float %3989, float %3992)  ; FMad(a,b,c)
  %3994 = fsub fast float %3993, %3957
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 2
  %3997 = fsub fast float %3994, %3996
  %3998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %55, float %3978, float %3979, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3999 = extractvalue %dx.types.ResRet.f32 %3998, 0
  %4000 = extractvalue %dx.types.ResRet.f32 %3998, 1
  %4001 = extractvalue %dx.types.ResRet.f32 %3998, 2
  %4002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %55, float %3978, float %3979, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4003 = extractvalue %dx.types.ResRet.f32 %4002, 0
  %4004 = extractvalue %dx.types.ResRet.f32 %4002, 1
  %4005 = extractvalue %dx.types.ResRet.f32 %4002, 2
  %4006 = fadd fast float %4003, %3999
  %4007 = fmul fast float %4006, 0x3F847AE140000000
  %4008 = fadd fast float %4004, %4000
  %4009 = fmul fast float %4008, 0x3F847AE140000000
  %4010 = fadd fast float %4005, %4001
  %4011 = fmul fast float %4010, 0x3F847AE140000000
  br label %4286

; <label>:4012                                    ; preds = %3871
  %4013 = and i32 %252, 1
  %4014 = icmp eq i32 %4013, 0
  br i1 %4014, label %4286, label %4015

; <label>:4015                                    ; preds = %4012
  %4016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.f32 %4016, 0
  %4018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4019 = extractvalue %dx.types.CBufRet.f32 %4018, 0
  %4020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4021 = extractvalue %dx.types.CBufRet.f32 %4020, 0
  %4022 = extractvalue %dx.types.CBufRet.f32 %4016, 1
  %4023 = extractvalue %dx.types.CBufRet.f32 %4018, 1
  %4024 = extractvalue %dx.types.CBufRet.f32 %4020, 1
  %4025 = extractvalue %dx.types.CBufRet.f32 %4016, 3
  %4026 = extractvalue %dx.types.CBufRet.f32 %4018, 3
  %4027 = extractvalue %dx.types.CBufRet.f32 %4020, 3
  %4028 = fadd fast float %4025, %3931
  %4029 = fadd fast float %4026, %3932
  %4030 = fadd fast float %4027, %3933
  %4031 = fmul fast float %4028, %4017
  %4032 = call float @dx.op.tertiary.f32(i32 46, float %4029, float %4019, float %4031)  ; FMad(a,b,c)
  %4033 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %4021, float %4032)  ; FMad(a,b,c)
  %4034 = fmul fast float %4028, %4022
  %4035 = call float @dx.op.tertiary.f32(i32 46, float %4029, float %4023, float %4034)  ; FMad(a,b,c)
  %4036 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %4024, float %4035)  ; FMad(a,b,c)
  %4037 = fsub fast float %4033, %4025
  %4038 = fsub fast float %4036, %4026
  %4039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4040 = extractvalue %dx.types.CBufRet.f32 %4039, 0
  %4041 = extractvalue %dx.types.CBufRet.f32 %4039, 1
  %4042 = extractvalue %dx.types.CBufRet.f32 %4039, 2
  %4043 = extractvalue %dx.types.CBufRet.f32 %4039, 3
  %4044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4045 = extractvalue %dx.types.CBufRet.f32 %4044, 3
  %4046 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4047 = extractvalue %dx.types.CBufRet.i32 %4046, 0
  %4048 = extractvalue %dx.types.CBufRet.i32 %4046, 1
  %4049 = udiv i32 %4048, %4047
  %4050 = fsub fast float %4037, %4040
  %4051 = fsub fast float %4038, %4041
  %4052 = call float @dx.op.binary.f32(i32 35, float %4050, float 0.000000e+00)  ; FMax(a,b)
  %4053 = call float @dx.op.binary.f32(i32 35, float %4051, float 0.000000e+00)  ; FMax(a,b)
  %4054 = call float @dx.op.binary.f32(i32 36, float %4052, float %4042)  ; FMin(a,b)
  %4055 = call float @dx.op.binary.f32(i32 36, float %4053, float %4043)  ; FMin(a,b)
  %4056 = add i32 %4047, -1
  %4057 = add i32 %4049, -1
  %4058 = fmul fast float %4054, %4045
  %4059 = fmul fast float %4055, %4045
  %4060 = fptoui float %4058 to i32
  %4061 = fptoui float %4059 to i32
  %4062 = call i32 @dx.op.binary.i32(i32 40, i32 %4060, i32 %4056)  ; UMin(a,b)
  %4063 = call i32 @dx.op.binary.i32(i32 40, i32 %4061, i32 %4057)  ; UMin(a,b)
  %4064 = mul i32 %4063, %4047
  %4065 = add i32 %4064, %4062
  %4066 = shl i32 %4065, 2
  %4067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4066, i32 undef)  ; BufferLoad(srv,index,wot)
  %4068 = extractvalue %dx.types.ResRet.i32 %4067, 0
  %4069 = icmp eq i32 %4068, -1
  br i1 %4069, label %4286, label %4070

; <label>:4070                                    ; preds = %4015
  %4071 = mul i32 %4068, 148
  %4072 = add i32 %4071, 4
  %4073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4072, i32 undef)  ; BufferLoad(srv,index,wot)
  %4074 = extractvalue %dx.types.ResRet.f32 %4073, 0
  %4075 = add i32 %4071, 8
  %4076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4075, i32 undef)  ; BufferLoad(srv,index,wot)
  %4077 = extractvalue %dx.types.ResRet.f32 %4076, 0
  %4078 = add i32 %4071, 36
  %4079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4078, i32 undef)  ; BufferLoad(srv,index,wot)
  %4080 = extractvalue %dx.types.ResRet.f32 %4079, 0
  %4081 = add i32 %4071, 60
  %4082 = add i32 %4071, 92
  %4083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4082, i32 undef)  ; BufferLoad(srv,index,wot)
  %4084 = extractvalue %dx.types.ResRet.i32 %4083, 0
  %4085 = add i32 %4071, 116
  %4086 = fsub fast float %4037, %4074
  %4087 = fsub fast float %4038, %4077
  %4088 = fmul fast float %4045, %4086
  %4089 = fmul fast float %4045, %4087
  %4090 = call float @dx.op.unary.f32(i32 7, float %4088)  ; Saturate(value)
  %4091 = call float @dx.op.unary.f32(i32 7, float %4089)  ; Saturate(value)
  %4092 = fsub fast float 1.000000e+00, %4091
  %4093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4094 = extractvalue %dx.types.CBufRet.f32 %4093, 2
  %4095 = call float @dx.op.unary.f32(i32 83, float %4090)  ; DerivCoarseX(value)
  %4096 = call float @dx.op.unary.f32(i32 83, float %4092)  ; DerivCoarseX(value)
  %4097 = call float @dx.op.unary.f32(i32 84, float %4090)  ; DerivCoarseY(value)
  %4098 = call float @dx.op.unary.f32(i32 84, float %4092)  ; DerivCoarseY(value)
  %4099 = fmul fast float %4095, %4094
  %4100 = fmul fast float %4096, %4094
  %4101 = fmul fast float %4097, %4094
  %4102 = fmul fast float %4098, %4094
  %4103 = call float @dx.op.dot2.f32(i32 54, float %4101, float %4102, float %4101, float %4102)  ; Dot2(ax,ay,bx,by)
  %4104 = call float @dx.op.dot2.f32(i32 54, float %4099, float %4100, float %4099, float %4100)  ; Dot2(ax,ay,bx,by)
  %4105 = call float @dx.op.binary.f32(i32 35, float %4104, float %4103)  ; FMax(a,b)
  %4106 = call float @dx.op.unary.f32(i32 23, float %4105)  ; Log(value)
  %4107 = fmul fast float %4106, 5.000000e-01
  %4108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4109 = extractvalue %dx.types.CBufRet.f32 %4108, 1
  %4110 = fadd fast float %4109, %4107
  %4111 = call float @dx.op.binary.f32(i32 35, float %4110, float 0.000000e+00)  ; FMax(a,b)
  %4112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4113 = extractvalue %dx.types.CBufRet.f32 %4112, 3
  %4114 = fadd fast float %4113, %4111
  %4115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.f32 %4115, 3
  %4117 = fadd fast float %4114, %4116
  %4118 = add i32 %4084, 0
  %4119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4118, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4120 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4119, i32 0)  ; GetDimensions(handle,mipLevel)
  %4121 = extractvalue %dx.types.Dimensions %4120, 0
  %4122 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4121)  ; FirstbitLo(value)
  %4123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4124 = extractvalue %dx.types.CBufRet.i32 %4123, 1
  %4125 = sub nsw i32 %4124, %4122
  %4126 = sitofp i32 %4125 to float
  %4127 = fsub fast float %4117, %4126
  %4128 = call float @dx.op.binary.f32(i32 35, float %4127, float 0.000000e+00)  ; FMax(a,b)
  %4129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4119, %dx.types.Handle %53, float %4090, float %4092, float %4080, float undef, i32 0, i32 0, i32 undef, float %4128)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4130 = extractvalue %dx.types.ResRet.f32 %4129, 0
  %4131 = fcmp ule float %4130, 0x3FE0101020000000
  %4132 = extractvalue %dx.types.CBufRet.i32 %4123, 0
  %4133 = and i32 %4132, 128
  %4134 = icmp ne i32 %4133, 0
  %4135 = and i1 %4131, %4134
  br i1 %4135, label %4286, label %4136

; <label>:4136                                    ; preds = %4070
  %4137 = add i32 %4071, 20
  %4138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4137, i32 undef)  ; BufferLoad(srv,index,wot)
  %4139 = extractvalue %dx.types.ResRet.f32 %4138, 0
  %4140 = add i32 %4071, 24
  %4141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4140, i32 undef)  ; BufferLoad(srv,index,wot)
  %4142 = extractvalue %dx.types.ResRet.f32 %4141, 0
  %4143 = add i32 %4071, 40
  %4144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4143, i32 undef)  ; BufferLoad(srv,index,wot)
  %4145 = extractvalue %dx.types.ResRet.f32 %4144, 0
  %4146 = add i32 %4071, 96
  %4147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4146, i32 undef)  ; BufferLoad(srv,index,wot)
  %4148 = extractvalue %dx.types.ResRet.i32 %4147, 0
  %4149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4150 = extractvalue %dx.types.CBufRet.f32 %4149, 2
  %4151 = fmul fast float %4150, %4090
  %4152 = fmul fast float %4150, %4092
  %4153 = extractvalue %dx.types.CBufRet.f32 %4149, 3
  %4154 = fadd fast float %4151, %4153
  %4155 = fadd fast float %4152, %4153
  %4156 = add i32 %4148, 0
  %4157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4156, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4158 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4157, i32 0)  ; GetDimensions(handle,mipLevel)
  %4159 = extractvalue %dx.types.Dimensions %4158, 0
  %4160 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4159)  ; FirstbitLo(value)
  %4161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4162 = extractvalue %dx.types.CBufRet.i32 %4161, 1
  %4163 = sub nsw i32 %4162, %4160
  %4164 = sitofp i32 %4163 to float
  %4165 = fsub fast float %4114, %4164
  %4166 = call float @dx.op.binary.f32(i32 35, float %4165, float 0.000000e+00)  ; FMax(a,b)
  %4167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4157, %dx.types.Handle %53, float %4154, float %4155, float %4145, float undef, i32 0, i32 0, i32 undef, float %4166)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4168 = extractvalue %dx.types.ResRet.f32 %4167, 0
  %4169 = fmul fast float %4168, %4139
  %4170 = fadd fast float %4169, %4142
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 0
  %4173 = extractvalue %dx.types.CBufRet.f32 %4171, 1
  %4174 = extractvalue %dx.types.CBufRet.f32 %4171, 2
  %4175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.f32 %4175, 3
  %4177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4178 = extractvalue %dx.types.CBufRet.f32 %4177, 3
  %4179 = extractvalue %dx.types.CBufRet.f32 %4171, 3
  %4180 = fadd fast float %4176, %4037
  %4181 = fadd fast float %4178, %4038
  %4182 = fadd fast float %4170, %4179
  %4183 = fmul fast float %4180, %4172
  %4184 = call float @dx.op.tertiary.f32(i32 46, float %4181, float %4173, float %4183)  ; FMad(a,b,c)
  %4185 = call float @dx.op.tertiary.f32(i32 46, float %4182, float %4174, float %4184)  ; FMad(a,b,c)
  %4186 = fsub fast float %4185, %4179
  %4187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4188 = extractvalue %dx.types.CBufRet.f32 %4187, 2
  %4189 = fsub fast float %4186, %4188
  %4190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.i32 %4190, 0
  %4192 = call i32 @dx.op.binary.i32(i32 40, i32 %4068, i32 %4191)  ; UMin(a,b)
  %4193 = mul i32 %4192, 36
  %4194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.i32 %4194, 0
  %4196 = add i32 %4193, 4
  %4197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4198 = extractvalue %dx.types.CBufRet.f32 %4197, 0
  %4199 = fmul fast float %4198, %4090
  %4200 = fmul fast float %4198, %4092
  %4201 = extractvalue %dx.types.CBufRet.f32 %4197, 1
  %4202 = fadd fast float %4199, %4201
  %4203 = fadd fast float %4200, %4201
  %4204 = icmp eq i32 %4195, 0
  br i1 %4204, label %4273, label %4205

; <label>:4205                                    ; preds = %4136
  br label %4206

; <label>:4206                                    ; preds = %4263, %4205
  %4207 = phi float [ %4264, %4263 ], [ 0.000000e+00, %4205 ]
  %4208 = phi float [ %4265, %4263 ], [ 0.000000e+00, %4205 ]
  %4209 = phi float [ %4266, %4263 ], [ 0.000000e+00, %4205 ]
  %4210 = phi float [ %4267, %4263 ], [ 0.000000e+00, %4205 ]
  %4211 = phi float [ %4268, %4263 ], [ 0.000000e+00, %4205 ]
  %4212 = phi float [ %4269, %4263 ], [ 0.000000e+00, %4205 ]
  %4213 = phi i32 [ %4270, %4263 ], [ 0, %4205 ]
  %4214 = shl i32 %4213, 2
  %4215 = add i32 %4081, %4214
  %4216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4215, i32 undef)  ; BufferLoad(srv,index,wot)
  %4217 = extractvalue %dx.types.ResRet.f32 %4216, 0
  %4218 = add i32 %4085, %4214
  %4219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4218, i32 undef)  ; BufferLoad(srv,index,wot)
  %4220 = extractvalue %dx.types.ResRet.i32 %4219, 0
  %4221 = add i32 %4220, 0
  %4222 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4221, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4223 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4222, i32 0)  ; GetDimensions(handle,mipLevel)
  %4224 = extractvalue %dx.types.Dimensions %4223, 0
  %4225 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4224)  ; FirstbitLo(value)
  %4226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.i32 %4226, 1
  %4228 = sub nsw i32 %4227, %4225
  %4229 = sitofp i32 %4228 to float
  %4230 = fsub fast float %4114, %4229
  %4231 = call float @dx.op.binary.f32(i32 35, float %4230, float 0.000000e+00)  ; FMax(a,b)
  %4232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4222, %dx.types.Handle %53, float %4202, float %4203, float %4217, float undef, i32 0, i32 0, i32 undef, float %4231)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4233 = extractvalue %dx.types.ResRet.f32 %4232, 0
  %4234 = fcmp fast ogt float %4233, 0.000000e+00
  br i1 %4234, label %4235, label %4263

; <label>:4235                                    ; preds = %4206
  %4236 = add i32 %4196, %4214
  %4237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4236, i32 undef)  ; BufferLoad(srv,index,wot)
  %4238 = extractvalue %dx.types.ResRet.i32 %4237, 0
  %4239 = and i32 %4238, 32767
  %4240 = mul nuw nsw i32 %4239, 928
  %4241 = add nuw nsw i32 %4240, 48
  %4242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4241, i32 undef)  ; BufferLoad(srv,index,wot)
  %4243 = extractvalue %dx.types.ResRet.f32 %4242, 0
  %4244 = extractvalue %dx.types.ResRet.f32 %4242, 1
  %4245 = extractvalue %dx.types.ResRet.f32 %4242, 2
  %4246 = add nuw nsw i32 %4240, 60
  %4247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4246, i32 undef)  ; BufferLoad(srv,index,wot)
  %4248 = extractvalue %dx.types.ResRet.f32 %4247, 0
  %4249 = extractvalue %dx.types.ResRet.f32 %4247, 1
  %4250 = extractvalue %dx.types.ResRet.f32 %4247, 2
  %4251 = fmul fast float %4243, %4233
  %4252 = fmul fast float %4244, %4233
  %4253 = fmul fast float %4245, %4233
  %4254 = fadd fast float %4251, %4207
  %4255 = fadd fast float %4252, %4208
  %4256 = fadd fast float %4253, %4209
  %4257 = fmul fast float %4248, %4233
  %4258 = fmul fast float %4249, %4233
  %4259 = fmul fast float %4250, %4233
  %4260 = fadd fast float %4257, %4210
  %4261 = fadd fast float %4258, %4211
  %4262 = fadd fast float %4259, %4212
  br label %4263

; <label>:4263                                    ; preds = %4235, %4206
  %4264 = phi float [ %4254, %4235 ], [ %4207, %4206 ]
  %4265 = phi float [ %4255, %4235 ], [ %4208, %4206 ]
  %4266 = phi float [ %4256, %4235 ], [ %4209, %4206 ]
  %4267 = phi float [ %4260, %4235 ], [ %4210, %4206 ]
  %4268 = phi float [ %4261, %4235 ], [ %4211, %4206 ]
  %4269 = phi float [ %4262, %4235 ], [ %4212, %4206 ]
  %4270 = add nuw i32 %4213, 1
  %4271 = icmp eq i32 %4270, %4195
  br i1 %4271, label %4272, label %4206

; <label>:4272                                    ; preds = %4263
  br label %4273

; <label>:4273                                    ; preds = %4272, %4136
  %4274 = phi float [ 0.000000e+00, %4136 ], [ %4264, %4272 ]
  %4275 = phi float [ 0.000000e+00, %4136 ], [ %4265, %4272 ]
  %4276 = phi float [ 0.000000e+00, %4136 ], [ %4266, %4272 ]
  %4277 = phi float [ 0.000000e+00, %4136 ], [ %4267, %4272 ]
  %4278 = phi float [ 0.000000e+00, %4136 ], [ %4268, %4272 ]
  %4279 = phi float [ 0.000000e+00, %4136 ], [ %4269, %4272 ]
  %4280 = fadd fast float %4277, %4274
  %4281 = fmul fast float %4280, 0x3F847AE140000000
  %4282 = fadd fast float %4278, %4275
  %4283 = fmul fast float %4282, 0x3F847AE140000000
  %4284 = fadd fast float %4279, %4276
  %4285 = fmul fast float %4284, 0x3F847AE140000000
  br label %4286

; <label>:4286                                    ; preds = %4273, %4070, %4015, %4012, %3983, %3945
  %4287 = phi float [ %4007, %3983 ], [ 0.000000e+00, %3945 ], [ %4281, %4273 ], [ 0.000000e+00, %4015 ], [ 0.000000e+00, %4070 ], [ 0.000000e+00, %4012 ]
  %4288 = phi float [ %4009, %3983 ], [ 0.000000e+00, %3945 ], [ %4283, %4273 ], [ 0.000000e+00, %4015 ], [ 0.000000e+00, %4070 ], [ 0.000000e+00, %4012 ]
  %4289 = phi float [ %4011, %3983 ], [ 0.000000e+00, %3945 ], [ %4285, %4273 ], [ 0.000000e+00, %4015 ], [ 0.000000e+00, %4070 ], [ 0.000000e+00, %4012 ]
  %4290 = phi float [ %3997, %3983 ], [ -1.310720e+05, %3945 ], [ %4189, %4273 ], [ -1.310720e+05, %4015 ], [ -1.310720e+05, %4070 ], [ -1.310720e+05, %4012 ]
  %4291 = phi i1 [ true, %3983 ], [ false, %3945 ], [ true, %4273 ], [ false, %4015 ], [ false, %4070 ], [ false, %4012 ]
  %4292 = and i32 %252, 3
  %4293 = icmp eq i32 %4292, 1
  %4294 = select i1 %4293, float 1.000000e+00, float 0.000000e+00
  %4295 = fsub fast float %4290, %205
  %4296 = call float @dx.op.unary.f32(i32 7, float %4295)  ; Saturate(value)
  %4297 = select i1 %4291, float %4296, float 1.000000e+00
  %4298 = fmul fast float %4297, %4294
  %4299 = icmp eq i32 %4292, 3
  %4300 = select i1 %4299, float 1.000000e+00, float %4298
  %4301 = call float @dx.op.binary.f32(i32 35, float %3887, float %4300)  ; FMax(a,b)
  %4302 = fcmp fast olt float %4300, 1.000000e+00
  %4303 = fcmp uge float %77, 0.000000e+00
  %4304 = and i1 %4303, %4302
  br i1 %4304, label %4305, label %4315

; <label>:4305                                    ; preds = %4286
  %4306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %53, float %77, float %78, float %79, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4307 = extractvalue %dx.types.ResRet.f32 %4306, 0
  %4308 = extractvalue %dx.types.ResRet.f32 %4306, 1
  %4309 = extractvalue %dx.types.ResRet.f32 %4306, 2
  %4310 = fadd fast float %4307, %4301
  %4311 = fcmp ule float %76, 0.000000e+00
  %4312 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4313 = select i1 %4311, float %4312, float 1.000000e+00
  %4314 = fmul fast float %4313, %4309
  br label %4315

; <label>:4315                                    ; preds = %4305, %4286
  %4316 = phi float [ %4310, %4305 ], [ %4301, %4286 ]
  %4317 = phi float [ %4308, %4305 ], [ 0.000000e+00, %4286 ]
  %4318 = phi float [ %4314, %4305 ], [ 0.000000e+00, %4286 ]
  %4319 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4320 = call float @dx.op.unary.f32(i32 7, float %4317)  ; Saturate(value)
  %4321 = call float @dx.op.unary.f32(i32 7, float %4318)  ; Saturate(value)
  %4322 = fcmp fast une float %4320, 0.000000e+00
  %4323 = fcmp fast une float %4321, 0.000000e+00
  %4324 = or i1 %4322, %4323
  br i1 %4324, label %4325, label %4884

; <label>:4325                                    ; preds = %4315
  br i1 %4322, label %4326, label %4599

; <label>:4326                                    ; preds = %4325
  %4327 = call float @dx.op.unary.f32(i32 23, float %3884)  ; Log(value)
  %4328 = fmul fast float %4327, 4.000000e+00
  %4329 = call float @dx.op.unary.f32(i32 21, float %4328)  ; Exp(value)
  %4330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4331 = extractvalue %dx.types.CBufRet.f32 %4330, 0
  %4332 = fmul fast float %4331, %64
  %4333 = fmul fast float %4331, %65
  %4334 = fmul fast float %4331, %66
  %4335 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4336 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4337 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4338 = call float @dx.op.unary.f32(i32 23, float %4335)  ; Log(value)
  %4339 = call float @dx.op.unary.f32(i32 23, float %4336)  ; Log(value)
  %4340 = call float @dx.op.unary.f32(i32 23, float %4337)  ; Log(value)
  %4341 = fmul fast float %4338, 4.000000e+00
  %4342 = fmul fast float %4339, 4.000000e+00
  %4343 = fmul fast float %4340, 4.000000e+00
  %4344 = call float @dx.op.unary.f32(i32 21, float %4341)  ; Exp(value)
  %4345 = call float @dx.op.unary.f32(i32 21, float %4342)  ; Exp(value)
  %4346 = call float @dx.op.unary.f32(i32 21, float %4343)  ; Exp(value)
  %4347 = fadd fast float %4345, %4344
  %4348 = fadd fast float %4347, %4346
  %4349 = fdiv fast float 1.000000e+00, %4348
  %4350 = fmul fast float %4349, %4344
  %4351 = fcmp fast ogt float %73, 0.000000e+00
  %4352 = fcmp fast ogt float %74, 0.000000e+00
  %4353 = fcmp fast ogt float %75, 0.000000e+00
  %4354 = fcmp fast olt float %73, 0.000000e+00
  %4355 = fcmp fast olt float %74, 0.000000e+00
  %4356 = fcmp fast olt float %75, 0.000000e+00
  %4357 = zext i1 %4351 to i32
  %4358 = zext i1 %4352 to i32
  %4359 = zext i1 %4353 to i32
  %4360 = zext i1 %4354 to i32
  %4361 = zext i1 %4355 to i32
  %4362 = zext i1 %4356 to i32
  %4363 = sub nsw i32 %4357, %4360
  %4364 = sub nsw i32 %4358, %4361
  %4365 = sub nsw i32 %4359, %4362
  %4366 = call float @dx.op.unary.f32(i32 83, float %4332)  ; DerivCoarseX(value)
  %4367 = call float @dx.op.unary.f32(i32 83, float %4333)  ; DerivCoarseX(value)
  %4368 = call float @dx.op.unary.f32(i32 83, float %4334)  ; DerivCoarseX(value)
  %4369 = call float @dx.op.unary.f32(i32 84, float %4332)  ; DerivCoarseY(value)
  %4370 = call float @dx.op.unary.f32(i32 84, float %4333)  ; DerivCoarseY(value)
  %4371 = call float @dx.op.unary.f32(i32 84, float %4334)  ; DerivCoarseY(value)
  %4372 = fcmp fast ole float %284, %4350
  %4373 = fmul fast float %4349, %4347
  %4374 = fcmp fast ole float %284, %4373
  %4375 = select i1 %4374, float %4334, float %4332
  %4376 = select i1 %4374, float %4332, float %4333
  %4377 = select i1 %4372, float %4333, float %4375
  %4378 = select i1 %4372, float %4334, float %4376
  %4379 = select i1 %4374, float %4368, float %4366
  %4380 = select i1 %4374, float %4366, float %4367
  %4381 = select i1 %4372, float %4367, float %4379
  %4382 = select i1 %4372, float %4368, float %4380
  %4383 = select i1 %4374, float %4371, float %4369
  %4384 = select i1 %4374, float %4369, float %4370
  %4385 = select i1 %4372, float %4370, float %4383
  %4386 = select i1 %4372, float %4371, float %4384
  %4387 = call float @dx.op.unary.f32(i32 27, float %4377)  ; Round_ni(value)
  %4388 = call float @dx.op.unary.f32(i32 27, float %4378)  ; Round_ni(value)
  %4389 = fptosi float %4387 to i32
  %4390 = fptosi float %4388 to i32
  %4391 = xor i32 %4390, %4389
  %4392 = sitofp i32 %4391 to float
  %4393 = fptosi float %4392 to i32
  %4394 = sitofp i32 %4393 to float
  %4395 = fmul fast float %4394, 0x3FE3C6EF40000000
  %4396 = frem fast float %4387, 2.560000e+02
  %4397 = frem fast float %4388, 2.560000e+02
  %4398 = fptoui float %4396 to i32
  %4399 = fptoui float %4397 to i32
  %4400 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4398, i32 %4399, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4401 = extractvalue %dx.types.ResRet.f32 %4400, 0
  %4402 = extractvalue %dx.types.ResRet.f32 %4400, 1
  %4403 = extractvalue %dx.types.ResRet.f32 %4400, 2
  %4404 = fadd fast float %4401, %4395
  %4405 = fadd fast float %4402, %4395
  %4406 = fadd fast float %4403, %4395
  %4407 = call float @dx.op.unary.f32(i32 22, float %4404)  ; Frc(value)
  %4408 = call float @dx.op.unary.f32(i32 22, float %4405)  ; Frc(value)
  %4409 = call float @dx.op.unary.f32(i32 22, float %4406)  ; Frc(value)
  %4410 = fmul fast float %4409, 0x401921FB60000000
  %4411 = call float @dx.op.unary.f32(i32 13, float %4410)  ; Sin(value)
  %4412 = call float @dx.op.unary.f32(i32 12, float %4410)  ; Cos(value)
  %4413 = fsub fast float -0.000000e+00, %4412
  %4414 = fmul fast float %4412, %4377
  %4415 = call float @dx.op.tertiary.f32(i32 46, float %4411, float %4378, float %4414)  ; FMad(a,b,c)
  %4416 = fmul fast float %4411, %4377
  %4417 = call float @dx.op.tertiary.f32(i32 46, float %4413, float %4378, float %4416)  ; FMad(a,b,c)
  %4418 = fadd fast float %4415, %4407
  %4419 = fadd fast float %4417, %4408
  %4420 = extractvalue %dx.types.CBufRet.f32 %4330, 3
  %4421 = bitcast float %4420 to i32
  %4422 = icmp eq i32 %4421, 0
  br i1 %4422, label %4461, label %4423

; <label>:4423                                    ; preds = %4326
  %4424 = add i32 %4421, 0
  %4425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4424, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4426 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4425, %dx.types.Handle %113, float %4418, float %4419, float undef, float undef, i32 0, i32 0, i32 undef, float %4381, float %4382, float undef, float %4385, float %4386, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4427 = extractvalue %dx.types.ResRet.f32 %4426, 0
  %4428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4429 = extractvalue %dx.types.CBufRet.f32 %4428, 1
  %4430 = extractvalue %dx.types.CBufRet.f32 %4428, 2
  %4431 = fsub fast float 1.000000e+00, %4320
  %4432 = call float @dx.op.binary.f32(i32 35, float %4431, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4433 = bitcast float %4320 to i32
  %4434 = sitofp i32 %4433 to float
  %4435 = fadd fast float %4434, 0xC1CFBF8940000000
  %4436 = fmul fast float %4430, %4435
  %4437 = fadd fast float %4436, 0x41CFBF8940000000
  %4438 = fptosi float %4437 to i32
  %4439 = bitcast i32 %4438 to float
  %4440 = bitcast float %4432 to i32
  %4441 = sitofp i32 %4440 to float
  %4442 = fadd fast float %4441, 0xC1CFBF8940000000
  %4443 = fmul fast float %4442, %4430
  %4444 = fadd fast float %4443, 0x41CFBF8940000000
  %4445 = fptosi float %4444 to i32
  %4446 = bitcast i32 %4445 to float
  %4447 = fmul fast float %4439, %4429
  %4448 = fmul fast float %4446, %4429
  %4449 = fsub fast float %4432, %4447
  %4450 = fadd fast float %4448, %4432
  %4451 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  %4452 = call float @dx.op.unary.f32(i32 7, float %4450)  ; Saturate(value)
  %4453 = fsub fast float %4427, %4451
  %4454 = fsub fast float %4452, %4451
  %4455 = bitcast float %4454 to i32
  %4456 = sub nsw i32 2129859010, %4455
  %4457 = bitcast i32 %4456 to float
  %4458 = fmul fast float %4457, %4453
  %4459 = call float @dx.op.unary.f32(i32 7, float %4458)  ; Saturate(value)
  %4460 = fcmp fast olt float %4459, 0x3F70101020000000
  br i1 %4460, label %4599, label %4461

; <label>:4461                                    ; preds = %4423, %4326
  %4462 = phi float [ %4459, %4423 ], [ %4320, %4326 ]
  %4463 = fmul fast float %4462, %4329
  %4464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4465 = extractvalue %dx.types.CBufRet.i32 %4464, 1
  %4466 = extractvalue %dx.types.CBufRet.i32 %4464, 0
  %4467 = add i32 %4466, 0
  %4468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4469 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4468, %dx.types.Handle %112, float %4418, float %4419, float undef, float undef, i32 0, i32 0, i32 undef, float %4381, float %4382, float undef, float %4385, float %4386, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4470 = extractvalue %dx.types.ResRet.f32 %4469, 0
  %4471 = extractvalue %dx.types.ResRet.f32 %4469, 1
  %4472 = extractvalue %dx.types.ResRet.f32 %4469, 2
  %4473 = extractvalue %dx.types.ResRet.f32 %4469, 3
  %4474 = and i32 %4465, 255
  %4475 = uitofp i32 %4474 to float
  %4476 = lshr i32 %4465, 8
  %4477 = and i32 %4476, 255
  %4478 = uitofp i32 %4477 to float
  %4479 = fmul fast float %4473, %4475
  %4480 = fadd fast float %4479, %4478
  %4481 = fmul fast float %4480, 0x3F70101000000000
  %4482 = fadd fast float %4481, 0xBFB99999A0000000
  %4483 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4484 = fmul fast float %4483, 0x3FF1C71C80000000
  %4485 = call float @dx.op.binary.f32(i32 36, float %4481, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4486 = fsub fast float 1.000000e+00, %4484
  %4487 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4488 = fmul fast float %4487, %4470
  %4489 = fmul fast float %4487, %4471
  %4490 = fmul fast float %4487, %4472
  %4491 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4492 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4493 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4494 = fmul fast float %4484, %4470
  %4495 = fmul fast float %4484, %4471
  %4496 = fmul fast float %4484, %4472
  %4497 = fadd fast float %4494, %4485
  %4498 = fadd fast float %4495, %4485
  %4499 = fadd fast float %4496, %4485
  %4500 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4501 = call float @dx.op.unary.f32(i32 7, float %4498)  ; Saturate(value)
  %4502 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4504 = extractvalue %dx.types.CBufRet.i32 %4503, 3
  %4505 = extractvalue %dx.types.CBufRet.i32 %4503, 2
  %4506 = add i32 %4505, 0
  %4507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4506, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4508 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4507, %dx.types.Handle %112, float %4418, float %4419, float undef, float undef, i32 0, i32 0, i32 undef, float %4381, float %4382, float undef, float %4385, float %4386, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4509 = extractvalue %dx.types.ResRet.f32 %4508, 0
  %4510 = extractvalue %dx.types.ResRet.f32 %4508, 1
  %4511 = extractvalue %dx.types.ResRet.f32 %4508, 2
  %4512 = extractvalue %dx.types.ResRet.f32 %4508, 3
  %4513 = and i32 %4504, 255
  %4514 = uitofp i32 %4513 to float
  %4515 = lshr i32 %4504, 8
  %4516 = and i32 %4515, 255
  %4517 = uitofp i32 %4516 to float
  %4518 = lshr i32 %4504, 16
  %4519 = and i32 %4518, 255
  %4520 = uitofp i32 %4519 to float
  %4521 = fmul fast float %4520, 0x3F70101000000000
  %4522 = fmul fast float %4509, %4514
  %4523 = fadd fast float %4522, %4517
  %4524 = fmul fast float %4523, 0x3F70101000000000
  %4525 = fadd fast float %4510, -5.000000e-01
  %4526 = fadd fast float %4512, -5.000000e-01
  %4527 = fmul fast float %4525, %4521
  %4528 = fmul fast float %4526, %4521
  %4529 = fadd fast float %4527, 5.000000e-01
  %4530 = fadd fast float %4528, 5.000000e-01
  %4531 = fmul fast float %4529, 2.000000e+00
  %4532 = fadd fast float %4531, -1.000000e+00
  %4533 = fmul fast float %4530, 2.000000e+00
  %4534 = fadd fast float %4533, -1.000000e+00
  %4535 = fadd fast float %4532, %4534
  %4536 = fmul fast float %4535, 5.000000e-01
  %4537 = fsub fast float %4532, %4534
  %4538 = fmul fast float %4537, 5.000000e-01
  %4539 = call float @dx.op.unary.f32(i32 6, float %4536)  ; FAbs(value)
  %4540 = fsub fast float 1.000000e+00, %4539
  %4541 = call float @dx.op.unary.f32(i32 6, float %4538)  ; FAbs(value)
  %4542 = fsub fast float %4540, %4541
  %4543 = call float @dx.op.dot3.f32(i32 55, float %4536, float %4538, float %4542, float %4536, float %4538, float %4542)  ; Dot3(ax,ay,az,bx,by,bz)
  %4544 = call float @dx.op.unary.f32(i32 25, float %4543)  ; Rsqrt(value)
  %4545 = fmul fast float %4536, %4544
  %4546 = fmul fast float %4538, %4544
  %4547 = select i1 %4374, i32 %4364, i32 %4365
  %4548 = select i1 %4372, i32 %4363, i32 %4547
  %4549 = sitofp i32 %4548 to float
  %4550 = fmul fast float %4542, %4549
  %4551 = fmul fast float %4550, %4544
  %4552 = select i1 %4374, float %4551, float %4546
  %4553 = select i1 %4374, float %4546, float %4551
  %4554 = select i1 %4372, float %4551, float %4545
  %4555 = select i1 %4372, float %4546, float %4552
  %4556 = select i1 %4372, float %4545, float %4553
  %4557 = fsub fast float %4491, %3924
  %4558 = fsub fast float %4492, %3925
  %4559 = fsub fast float %4493, %3926
  %4560 = fmul fast float %4557, %4463
  %4561 = fmul fast float %4558, %4463
  %4562 = fmul fast float %4559, %4463
  %4563 = fadd fast float %4560, %3924
  %4564 = fadd fast float %4561, %3925
  %4565 = fadd fast float %4562, %3926
  %4566 = fsub fast float %4500, %3909
  %4567 = fsub fast float %4501, %3910
  %4568 = fsub fast float %4502, %3911
  %4569 = fmul fast float %4566, %4463
  %4570 = fmul fast float %4567, %4463
  %4571 = fmul fast float %4568, %4463
  %4572 = fadd fast float %4569, %3909
  %4573 = fadd fast float %4570, %3910
  %4574 = fadd fast float %4571, %3911
  %4575 = fadd fast float %4554, %3872
  %4576 = fadd fast float %4555, %3873
  %4577 = fadd fast float %4556, %3874
  %4578 = call float @dx.op.dot3.f32(i32 55, float %4575, float %4576, float %4577, float %4575, float %4576, float %4577)  ; Dot3(ax,ay,az,bx,by,bz)
  %4579 = call float @dx.op.unary.f32(i32 25, float %4578)  ; Rsqrt(value)
  %4580 = fmul fast float %4575, %4579
  %4581 = fmul fast float %4576, %4579
  %4582 = fmul fast float %4577, %4579
  %4583 = fsub fast float %4580, %3872
  %4584 = fsub fast float %4581, %3873
  %4585 = fsub fast float %4582, %3874
  %4586 = fmul fast float %4583, %4463
  %4587 = fmul fast float %4584, %4463
  %4588 = fmul fast float %4585, %4463
  %4589 = fadd fast float %4586, %3872
  %4590 = fadd fast float %4587, %3873
  %4591 = fadd fast float %4588, %3874
  %4592 = call float @dx.op.binary.f32(i32 36, float %3884, float %4511)  ; FMin(a,b)
  %4593 = fsub fast float %4592, %3884
  %4594 = fmul fast float %4593, %4463
  %4595 = fadd fast float %4594, %3884
  %4596 = fsub fast float %4524, %3912
  %4597 = fmul fast float %4596, %4463
  %4598 = fadd fast float %4597, %3912
  br label %4599

; <label>:4599                                    ; preds = %4461, %4423, %4325
  %4600 = phi float [ %4563, %4461 ], [ %3924, %4423 ], [ %3924, %4325 ]
  %4601 = phi float [ %4564, %4461 ], [ %3925, %4423 ], [ %3925, %4325 ]
  %4602 = phi float [ %4565, %4461 ], [ %3926, %4423 ], [ %3926, %4325 ]
  %4603 = phi float [ %4572, %4461 ], [ %3909, %4423 ], [ %3909, %4325 ]
  %4604 = phi float [ %4573, %4461 ], [ %3910, %4423 ], [ %3910, %4325 ]
  %4605 = phi float [ %4574, %4461 ], [ %3911, %4423 ], [ %3911, %4325 ]
  %4606 = phi float [ %4589, %4461 ], [ %3872, %4423 ], [ %3872, %4325 ]
  %4607 = phi float [ %4590, %4461 ], [ %3873, %4423 ], [ %3873, %4325 ]
  %4608 = phi float [ %4591, %4461 ], [ %3874, %4423 ], [ %3874, %4325 ]
  %4609 = phi float [ %4598, %4461 ], [ %3912, %4423 ], [ %3912, %4325 ]
  %4610 = phi float [ %4595, %4461 ], [ %3884, %4423 ], [ %3884, %4325 ]
  br i1 %4323, label %4611, label %4884

; <label>:4611                                    ; preds = %4599
  %4612 = call float @dx.op.unary.f32(i32 23, float %4610)  ; Log(value)
  %4613 = fmul fast float %4612, 4.000000e+00
  %4614 = call float @dx.op.unary.f32(i32 21, float %4613)  ; Exp(value)
  %4615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.f32 %4615, 0
  %4617 = fmul fast float %4616, %64
  %4618 = fmul fast float %4616, %65
  %4619 = fmul fast float %4616, %66
  %4620 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4621 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4622 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4623 = call float @dx.op.unary.f32(i32 23, float %4620)  ; Log(value)
  %4624 = call float @dx.op.unary.f32(i32 23, float %4621)  ; Log(value)
  %4625 = call float @dx.op.unary.f32(i32 23, float %4622)  ; Log(value)
  %4626 = fmul fast float %4623, 4.000000e+00
  %4627 = fmul fast float %4624, 4.000000e+00
  %4628 = fmul fast float %4625, 4.000000e+00
  %4629 = call float @dx.op.unary.f32(i32 21, float %4626)  ; Exp(value)
  %4630 = call float @dx.op.unary.f32(i32 21, float %4627)  ; Exp(value)
  %4631 = call float @dx.op.unary.f32(i32 21, float %4628)  ; Exp(value)
  %4632 = fadd fast float %4630, %4629
  %4633 = fadd fast float %4632, %4631
  %4634 = fdiv fast float 1.000000e+00, %4633
  %4635 = fmul fast float %4634, %4629
  %4636 = fcmp fast ogt float %73, 0.000000e+00
  %4637 = fcmp fast ogt float %74, 0.000000e+00
  %4638 = fcmp fast ogt float %75, 0.000000e+00
  %4639 = fcmp fast olt float %73, 0.000000e+00
  %4640 = fcmp fast olt float %74, 0.000000e+00
  %4641 = fcmp fast olt float %75, 0.000000e+00
  %4642 = zext i1 %4636 to i32
  %4643 = zext i1 %4637 to i32
  %4644 = zext i1 %4638 to i32
  %4645 = zext i1 %4639 to i32
  %4646 = zext i1 %4640 to i32
  %4647 = zext i1 %4641 to i32
  %4648 = sub nsw i32 %4642, %4645
  %4649 = sub nsw i32 %4643, %4646
  %4650 = sub nsw i32 %4644, %4647
  %4651 = call float @dx.op.unary.f32(i32 83, float %4617)  ; DerivCoarseX(value)
  %4652 = call float @dx.op.unary.f32(i32 83, float %4618)  ; DerivCoarseX(value)
  %4653 = call float @dx.op.unary.f32(i32 83, float %4619)  ; DerivCoarseX(value)
  %4654 = call float @dx.op.unary.f32(i32 84, float %4617)  ; DerivCoarseY(value)
  %4655 = call float @dx.op.unary.f32(i32 84, float %4618)  ; DerivCoarseY(value)
  %4656 = call float @dx.op.unary.f32(i32 84, float %4619)  ; DerivCoarseY(value)
  %4657 = fcmp fast ole float %284, %4635
  %4658 = fmul fast float %4634, %4632
  %4659 = fcmp fast ole float %284, %4658
  %4660 = select i1 %4659, float %4619, float %4617
  %4661 = select i1 %4659, float %4617, float %4618
  %4662 = select i1 %4657, float %4618, float %4660
  %4663 = select i1 %4657, float %4619, float %4661
  %4664 = select i1 %4659, float %4653, float %4651
  %4665 = select i1 %4659, float %4651, float %4652
  %4666 = select i1 %4657, float %4652, float %4664
  %4667 = select i1 %4657, float %4653, float %4665
  %4668 = select i1 %4659, float %4656, float %4654
  %4669 = select i1 %4659, float %4654, float %4655
  %4670 = select i1 %4657, float %4655, float %4668
  %4671 = select i1 %4657, float %4656, float %4669
  %4672 = call float @dx.op.unary.f32(i32 27, float %4662)  ; Round_ni(value)
  %4673 = call float @dx.op.unary.f32(i32 27, float %4663)  ; Round_ni(value)
  %4674 = fptosi float %4672 to i32
  %4675 = fptosi float %4673 to i32
  %4676 = xor i32 %4675, %4674
  %4677 = sitofp i32 %4676 to float
  %4678 = fptosi float %4677 to i32
  %4679 = sitofp i32 %4678 to float
  %4680 = fmul fast float %4679, 0x3FE3C6EF40000000
  %4681 = frem fast float %4672, 2.560000e+02
  %4682 = frem fast float %4673, 2.560000e+02
  %4683 = fptoui float %4681 to i32
  %4684 = fptoui float %4682 to i32
  %4685 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4683, i32 %4684, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4686 = extractvalue %dx.types.ResRet.f32 %4685, 0
  %4687 = extractvalue %dx.types.ResRet.f32 %4685, 1
  %4688 = extractvalue %dx.types.ResRet.f32 %4685, 2
  %4689 = fadd fast float %4686, %4680
  %4690 = fadd fast float %4687, %4680
  %4691 = fadd fast float %4688, %4680
  %4692 = call float @dx.op.unary.f32(i32 22, float %4689)  ; Frc(value)
  %4693 = call float @dx.op.unary.f32(i32 22, float %4690)  ; Frc(value)
  %4694 = call float @dx.op.unary.f32(i32 22, float %4691)  ; Frc(value)
  %4695 = fmul fast float %4694, 0x401921FB60000000
  %4696 = call float @dx.op.unary.f32(i32 13, float %4695)  ; Sin(value)
  %4697 = call float @dx.op.unary.f32(i32 12, float %4695)  ; Cos(value)
  %4698 = fsub fast float -0.000000e+00, %4697
  %4699 = fmul fast float %4697, %4662
  %4700 = call float @dx.op.tertiary.f32(i32 46, float %4696, float %4663, float %4699)  ; FMad(a,b,c)
  %4701 = fmul fast float %4696, %4662
  %4702 = call float @dx.op.tertiary.f32(i32 46, float %4698, float %4663, float %4701)  ; FMad(a,b,c)
  %4703 = fadd fast float %4700, %4692
  %4704 = fadd fast float %4702, %4693
  %4705 = extractvalue %dx.types.CBufRet.f32 %4615, 3
  %4706 = bitcast float %4705 to i32
  %4707 = icmp eq i32 %4706, 0
  br i1 %4707, label %4746, label %4708

; <label>:4708                                    ; preds = %4611
  %4709 = add i32 %4706, 0
  %4710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4709, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4711 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4710, %dx.types.Handle %113, float %4703, float %4704, float undef, float undef, i32 0, i32 0, i32 undef, float %4666, float %4667, float undef, float %4670, float %4671, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4712 = extractvalue %dx.types.ResRet.f32 %4711, 0
  %4713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4714 = extractvalue %dx.types.CBufRet.f32 %4713, 1
  %4715 = extractvalue %dx.types.CBufRet.f32 %4713, 2
  %4716 = fsub fast float 1.000000e+00, %4321
  %4717 = call float @dx.op.binary.f32(i32 35, float %4716, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4718 = bitcast float %4321 to i32
  %4719 = sitofp i32 %4718 to float
  %4720 = fadd fast float %4719, 0xC1CFBF8940000000
  %4721 = fmul fast float %4715, %4720
  %4722 = fadd fast float %4721, 0x41CFBF8940000000
  %4723 = fptosi float %4722 to i32
  %4724 = bitcast i32 %4723 to float
  %4725 = bitcast float %4717 to i32
  %4726 = sitofp i32 %4725 to float
  %4727 = fadd fast float %4726, 0xC1CFBF8940000000
  %4728 = fmul fast float %4727, %4715
  %4729 = fadd fast float %4728, 0x41CFBF8940000000
  %4730 = fptosi float %4729 to i32
  %4731 = bitcast i32 %4730 to float
  %4732 = fmul fast float %4724, %4714
  %4733 = fmul fast float %4731, %4714
  %4734 = fsub fast float %4717, %4732
  %4735 = fadd fast float %4733, %4717
  %4736 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4737 = call float @dx.op.unary.f32(i32 7, float %4735)  ; Saturate(value)
  %4738 = fsub fast float %4712, %4736
  %4739 = fsub fast float %4737, %4736
  %4740 = bitcast float %4739 to i32
  %4741 = sub nsw i32 2129859010, %4740
  %4742 = bitcast i32 %4741 to float
  %4743 = fmul fast float %4742, %4738
  %4744 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4745 = fcmp fast olt float %4744, 0x3F70101020000000
  br i1 %4745, label %4884, label %4746

; <label>:4746                                    ; preds = %4708, %4611
  %4747 = phi float [ %4744, %4708 ], [ %4321, %4611 ]
  %4748 = fmul fast float %4747, %4614
  %4749 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4750 = extractvalue %dx.types.CBufRet.i32 %4749, 1
  %4751 = extractvalue %dx.types.CBufRet.i32 %4749, 0
  %4752 = add i32 %4751, 0
  %4753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4752, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4754 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4753, %dx.types.Handle %112, float %4703, float %4704, float undef, float undef, i32 0, i32 0, i32 undef, float %4666, float %4667, float undef, float %4670, float %4671, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4755 = extractvalue %dx.types.ResRet.f32 %4754, 0
  %4756 = extractvalue %dx.types.ResRet.f32 %4754, 1
  %4757 = extractvalue %dx.types.ResRet.f32 %4754, 2
  %4758 = extractvalue %dx.types.ResRet.f32 %4754, 3
  %4759 = and i32 %4750, 255
  %4760 = uitofp i32 %4759 to float
  %4761 = lshr i32 %4750, 8
  %4762 = and i32 %4761, 255
  %4763 = uitofp i32 %4762 to float
  %4764 = fmul fast float %4758, %4760
  %4765 = fadd fast float %4764, %4763
  %4766 = fmul fast float %4765, 0x3F70101000000000
  %4767 = fadd fast float %4766, 0xBFB99999A0000000
  %4768 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4769 = fmul fast float %4768, 0x3FF1C71C80000000
  %4770 = call float @dx.op.binary.f32(i32 36, float %4766, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4771 = fsub fast float 1.000000e+00, %4769
  %4772 = call float @dx.op.unary.f32(i32 7, float %4771)  ; Saturate(value)
  %4773 = fmul fast float %4772, %4755
  %4774 = fmul fast float %4772, %4756
  %4775 = fmul fast float %4772, %4757
  %4776 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  %4777 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4778 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4779 = fmul fast float %4769, %4755
  %4780 = fmul fast float %4769, %4756
  %4781 = fmul fast float %4769, %4757
  %4782 = fadd fast float %4779, %4770
  %4783 = fadd fast float %4780, %4770
  %4784 = fadd fast float %4781, %4770
  %4785 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4786 = call float @dx.op.unary.f32(i32 7, float %4783)  ; Saturate(value)
  %4787 = call float @dx.op.unary.f32(i32 7, float %4784)  ; Saturate(value)
  %4788 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4789 = extractvalue %dx.types.CBufRet.i32 %4788, 3
  %4790 = extractvalue %dx.types.CBufRet.i32 %4788, 2
  %4791 = add i32 %4790, 0
  %4792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4791, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4793 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4792, %dx.types.Handle %112, float %4703, float %4704, float undef, float undef, i32 0, i32 0, i32 undef, float %4666, float %4667, float undef, float %4670, float %4671, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4794 = extractvalue %dx.types.ResRet.f32 %4793, 0
  %4795 = extractvalue %dx.types.ResRet.f32 %4793, 1
  %4796 = extractvalue %dx.types.ResRet.f32 %4793, 2
  %4797 = extractvalue %dx.types.ResRet.f32 %4793, 3
  %4798 = and i32 %4789, 255
  %4799 = uitofp i32 %4798 to float
  %4800 = lshr i32 %4789, 8
  %4801 = and i32 %4800, 255
  %4802 = uitofp i32 %4801 to float
  %4803 = lshr i32 %4789, 16
  %4804 = and i32 %4803, 255
  %4805 = uitofp i32 %4804 to float
  %4806 = fmul fast float %4805, 0x3F70101000000000
  %4807 = fmul fast float %4794, %4799
  %4808 = fadd fast float %4807, %4802
  %4809 = fmul fast float %4808, 0x3F70101000000000
  %4810 = fadd fast float %4795, -5.000000e-01
  %4811 = fadd fast float %4797, -5.000000e-01
  %4812 = fmul fast float %4810, %4806
  %4813 = fmul fast float %4811, %4806
  %4814 = fadd fast float %4812, 5.000000e-01
  %4815 = fadd fast float %4813, 5.000000e-01
  %4816 = fmul fast float %4814, 2.000000e+00
  %4817 = fadd fast float %4816, -1.000000e+00
  %4818 = fmul fast float %4815, 2.000000e+00
  %4819 = fadd fast float %4818, -1.000000e+00
  %4820 = fadd fast float %4817, %4819
  %4821 = fmul fast float %4820, 5.000000e-01
  %4822 = fsub fast float %4817, %4819
  %4823 = fmul fast float %4822, 5.000000e-01
  %4824 = call float @dx.op.unary.f32(i32 6, float %4821)  ; FAbs(value)
  %4825 = fsub fast float 1.000000e+00, %4824
  %4826 = call float @dx.op.unary.f32(i32 6, float %4823)  ; FAbs(value)
  %4827 = fsub fast float %4825, %4826
  %4828 = call float @dx.op.dot3.f32(i32 55, float %4821, float %4823, float %4827, float %4821, float %4823, float %4827)  ; Dot3(ax,ay,az,bx,by,bz)
  %4829 = call float @dx.op.unary.f32(i32 25, float %4828)  ; Rsqrt(value)
  %4830 = fmul fast float %4821, %4829
  %4831 = fmul fast float %4823, %4829
  %4832 = select i1 %4659, i32 %4649, i32 %4650
  %4833 = select i1 %4657, i32 %4648, i32 %4832
  %4834 = sitofp i32 %4833 to float
  %4835 = fmul fast float %4827, %4834
  %4836 = fmul fast float %4835, %4829
  %4837 = select i1 %4659, float %4836, float %4831
  %4838 = select i1 %4659, float %4831, float %4836
  %4839 = select i1 %4657, float %4836, float %4830
  %4840 = select i1 %4657, float %4831, float %4837
  %4841 = select i1 %4657, float %4830, float %4838
  %4842 = fsub fast float %4776, %4600
  %4843 = fsub fast float %4777, %4601
  %4844 = fsub fast float %4778, %4602
  %4845 = fmul fast float %4842, %4748
  %4846 = fmul fast float %4843, %4748
  %4847 = fmul fast float %4844, %4748
  %4848 = fadd fast float %4845, %4600
  %4849 = fadd fast float %4846, %4601
  %4850 = fadd fast float %4847, %4602
  %4851 = fsub fast float %4785, %4603
  %4852 = fsub fast float %4786, %4604
  %4853 = fsub fast float %4787, %4605
  %4854 = fmul fast float %4851, %4748
  %4855 = fmul fast float %4852, %4748
  %4856 = fmul fast float %4853, %4748
  %4857 = fadd fast float %4854, %4603
  %4858 = fadd fast float %4855, %4604
  %4859 = fadd fast float %4856, %4605
  %4860 = fadd fast float %4839, %4606
  %4861 = fadd fast float %4840, %4607
  %4862 = fadd fast float %4841, %4608
  %4863 = call float @dx.op.dot3.f32(i32 55, float %4860, float %4861, float %4862, float %4860, float %4861, float %4862)  ; Dot3(ax,ay,az,bx,by,bz)
  %4864 = call float @dx.op.unary.f32(i32 25, float %4863)  ; Rsqrt(value)
  %4865 = fmul fast float %4860, %4864
  %4866 = fmul fast float %4861, %4864
  %4867 = fmul fast float %4862, %4864
  %4868 = fsub fast float %4865, %4606
  %4869 = fsub fast float %4866, %4607
  %4870 = fsub fast float %4867, %4608
  %4871 = fmul fast float %4868, %4748
  %4872 = fmul fast float %4869, %4748
  %4873 = fmul fast float %4870, %4748
  %4874 = fadd fast float %4871, %4606
  %4875 = fadd fast float %4872, %4607
  %4876 = fadd fast float %4873, %4608
  %4877 = call float @dx.op.binary.f32(i32 36, float %4610, float %4796)  ; FMin(a,b)
  %4878 = fsub fast float %4877, %4610
  %4879 = fmul fast float %4878, %4748
  %4880 = fadd fast float %4879, %4610
  %4881 = fsub fast float %4809, %4609
  %4882 = fmul fast float %4881, %4748
  %4883 = fadd fast float %4882, %4609
  br label %4884

; <label>:4884                                    ; preds = %4746, %4708, %4599, %4315
  %4885 = phi float [ %4848, %4746 ], [ %4600, %4708 ], [ %4600, %4599 ], [ %3924, %4315 ]
  %4886 = phi float [ %4849, %4746 ], [ %4601, %4708 ], [ %4601, %4599 ], [ %3925, %4315 ]
  %4887 = phi float [ %4850, %4746 ], [ %4602, %4708 ], [ %4602, %4599 ], [ %3926, %4315 ]
  %4888 = phi float [ %4857, %4746 ], [ %4603, %4708 ], [ %4603, %4599 ], [ %3909, %4315 ]
  %4889 = phi float [ %4858, %4746 ], [ %4604, %4708 ], [ %4604, %4599 ], [ %3910, %4315 ]
  %4890 = phi float [ %4859, %4746 ], [ %4605, %4708 ], [ %4605, %4599 ], [ %3911, %4315 ]
  %4891 = phi float [ %4874, %4746 ], [ %4606, %4708 ], [ %4606, %4599 ], [ %3872, %4315 ]
  %4892 = phi float [ %4875, %4746 ], [ %4607, %4708 ], [ %4607, %4599 ], [ %3873, %4315 ]
  %4893 = phi float [ %4876, %4746 ], [ %4608, %4708 ], [ %4608, %4599 ], [ %3874, %4315 ]
  %4894 = phi float [ %4883, %4746 ], [ %4609, %4708 ], [ %4609, %4599 ], [ %3912, %4315 ]
  %4895 = phi float [ %4880, %4746 ], [ %4610, %4708 ], [ %4610, %4599 ], [ %3884, %4315 ]
  %4896 = fcmp fast une float %4319, 0.000000e+00
  %4897 = call float @dx.op.dot3.f32(i32 55, float %203, float %204, float %205, float %203, float %204, float %205)  ; Dot3(ax,ay,az,bx,by,bz)
  %4898 = call float @dx.op.unary.f32(i32 25, float %4897)  ; Rsqrt(value)
  br i1 %4896, label %4906, label %4899

; <label>:4899                                    ; preds = %4884
  %4900 = fmul fast float %4898, %203
  %4901 = fmul fast float %4898, %204
  %4902 = fmul fast float %4898, %205
  %4903 = fsub fast float -0.000000e+00, %4900
  %4904 = fsub fast float -0.000000e+00, %4901
  %4905 = fsub fast float -0.000000e+00, %4902
  br label %5073

; <label>:4906                                    ; preds = %4884
  %4907 = fmul fast float %203, %4898
  %4908 = fsub fast float -0.000000e+00, %4907
  %4909 = fmul fast float %204, %4898
  %4910 = fsub fast float -0.000000e+00, %4909
  %4911 = fmul fast float %205, %4898
  %4912 = fsub fast float -0.000000e+00, %4911
  %4913 = call float @dx.op.dot3.f32(i32 55, float %4908, float %4910, float %4912, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %4914 = fmul fast float %4319, 2.500000e+00
  %4915 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4916 = fmul fast float %4319, 0x4013FFFFE0000000
  %4917 = fadd fast float %4916, 0xBFFFFFFFE0000000
  %4918 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  %4919 = fmul fast float %4319, 0x4004000020000000
  %4920 = fadd fast float %4919, 0xBFF8000040000000
  %4921 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4922 = fmul fast float %3891, 1.000000e+01
  %4923 = call float @dx.op.unary.f32(i32 7, float %4922)  ; Saturate(value)
  %4924 = fmul fast float %4923, 2.000000e+00
  %4925 = fsub fast float 3.000000e+00, %4924
  %4926 = fmul fast float %4923, %4923
  %4927 = fmul fast float %4926, %4925
  %4928 = fsub fast float 1.000000e+00, %4927
  %4929 = fsub fast float 0x3FE3333340000000, %4894
  %4930 = fmul fast float %4929, 0x400AAAAAA0000000
  %4931 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4932 = fmul fast float %4928, %4931
  %4933 = fmul fast float %4885, 0x3FEA2B8620000000
  %4934 = fmul fast float %4886, 0x3FEA2B8620000000
  %4935 = fmul fast float %4887, 0x3FEA2B8620000000
  %4936 = fadd fast float %4933, 0x3FC81DFBA0000000
  %4937 = fmul fast float %4936, %4885
  %4938 = fadd fast float %4937, 0x3F910E6020000000
  %4939 = fadd fast float %4934, 0x3FC81DFBA0000000
  %4940 = fmul fast float %4939, %4886
  %4941 = fadd fast float %4940, 0x3F910E6020000000
  %4942 = fadd fast float %4935, 0x3FC81DFBA0000000
  %4943 = fmul fast float %4942, %4887
  %4944 = fadd fast float %4943, 0x3F910E6020000000
  %4945 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4946 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4947 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4948 = fsub fast float %4945, %4885
  %4949 = fsub fast float %4946, %4886
  %4950 = fsub fast float %4947, %4887
  %4951 = fmul fast float %4948, %4915
  %4952 = fmul fast float %4951, %4932
  %4953 = fmul fast float %4949, %4915
  %4954 = fmul fast float %4953, %4932
  %4955 = fmul fast float %4950, %4915
  %4956 = fmul fast float %4955, %4932
  %4957 = fadd fast float %4952, %4885
  %4958 = fadd fast float %4954, %4886
  %4959 = fadd fast float %4956, %4887
  %4960 = fmul fast float %4895, %4895
  %4961 = fmul fast float %4960, %4960
  %4962 = fadd fast float %4918, 1.000000e+00
  %4963 = fsub fast float %4962, %4932
  %4964 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4965 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4966 = call float @dx.op.unary.f32(i32 7, float %4965)  ; Saturate(value)
  %4967 = fsub fast float 1.000000e+00, %4961
  %4968 = call float @dx.op.binary.f32(i32 36, float %4964, float %4967)  ; FMin(a,b)
  %4969 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4970 = call float @dx.op.binary.f32(i32 35, float %4968, float %4969)  ; FMax(a,b)
  %4971 = fadd fast float %4966, 0xBFE4CCCCC0000000
  %4972 = fmul fast float %4971, 0x4006DB6DA0000000
  %4973 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4974 = fmul fast float %4973, 2.000000e+00
  %4975 = fsub fast float 3.000000e+00, %4974
  %4976 = bitcast float %4888 to i32
  %4977 = ashr i32 %4976, 1
  %4978 = add nsw i32 %4977, 532487669
  %4979 = bitcast i32 %4978 to float
  %4980 = fsub fast float 1.000000e+00, %4979
  %4981 = bitcast float %4980 to i32
  %4982 = sub nsw i32 2129859010, %4981
  %4983 = bitcast i32 %4982 to float
  %4984 = fmul fast float %4983, 2.000000e+00
  %4985 = bitcast float %4889 to i32
  %4986 = ashr i32 %4985, 1
  %4987 = add nsw i32 %4986, 532487669
  %4988 = bitcast i32 %4987 to float
  %4989 = fsub fast float 1.000000e+00, %4988
  %4990 = bitcast float %4989 to i32
  %4991 = sub nsw i32 2129859010, %4990
  %4992 = bitcast i32 %4991 to float
  %4993 = fmul fast float %4992, 2.000000e+00
  %4994 = bitcast float %4890 to i32
  %4995 = ashr i32 %4994, 1
  %4996 = add nsw i32 %4995, 532487669
  %4997 = bitcast i32 %4996 to float
  %4998 = fsub fast float 1.000000e+00, %4997
  %4999 = bitcast float %4998 to i32
  %5000 = sub nsw i32 2129859010, %4999
  %5001 = bitcast i32 %5000 to float
  %5002 = fmul fast float %5001, 2.000000e+00
  %5003 = fsub fast float 0x4002A9FBE0000000, %4984
  %5004 = fadd fast float %4984, 0x3FD54FDF00000000
  %5005 = bitcast float %5004 to i32
  %5006 = sub nsw i32 2129859010, %5005
  %5007 = bitcast i32 %5006 to float
  %5008 = fmul fast float %5007, %5003
  %5009 = fmul fast float %5008, %5008
  %5010 = fsub fast float 0x4002A9FBE0000000, %4993
  %5011 = fadd fast float %4993, 0x3FD54FDF00000000
  %5012 = bitcast float %5011 to i32
  %5013 = sub nsw i32 2129859010, %5012
  %5014 = bitcast i32 %5013 to float
  %5015 = fmul fast float %5014, %5010
  %5016 = fmul fast float %5015, %5015
  %5017 = fsub fast float 0x4002A9FBE0000000, %5002
  %5018 = fadd fast float %5002, 0x3FD54FDF00000000
  %5019 = bitcast float %5018 to i32
  %5020 = sub nsw i32 2129859010, %5019
  %5021 = bitcast i32 %5020 to float
  %5022 = fmul fast float %5021, %5017
  %5023 = fmul fast float %5022, %5022
  %5024 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5009)  ; FMax(a,b)
  %5025 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5016)  ; FMax(a,b)
  %5026 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5023)  ; FMax(a,b)
  %5027 = fsub fast float 1.000000e+00, %4913
  %5028 = fadd fast float %5027, %4928
  %5029 = call float @dx.op.unary.f32(i32 7, float %5028)  ; Saturate(value)
  %5030 = fsub fast float 1.000000e+00, %4300
  %5031 = fmul fast float %4970, %5030
  %5032 = fmul fast float %4973, %4973
  %5033 = fmul fast float %5032, %5031
  %5034 = fmul fast float %5033, %4975
  %5035 = fmul fast float %5030, 0xBFE99999A0000000
  %5036 = fmul fast float %5035, %4915
  %5037 = fmul fast float %5036, %4932
  %5038 = fadd fast float %5037, 1.000000e+00
  %5039 = fadd fast float %4894, -1.000000e+00
  %5040 = fmul fast float %5038, %5039
  %5041 = fadd fast float %5040, 1.000000e+00
  %5042 = fsub fast float %5024, %4888
  %5043 = fsub fast float %5025, %4889
  %5044 = fsub fast float %5026, %4890
  %5045 = fmul fast float %5034, %5042
  %5046 = fmul fast float %5034, %5043
  %5047 = fmul fast float %5034, %5044
  %5048 = fadd fast float %5045, %4888
  %5049 = fadd fast float %5046, %4889
  %5050 = fadd fast float %5047, %4890
  %5051 = fsub fast float %123, %4891
  %5052 = fsub fast float %124, %4892
  %5053 = fsub fast float %125, %4893
  %5054 = fmul fast float %5034, %5051
  %5055 = fmul fast float %5034, %5052
  %5056 = fmul fast float %5034, %5053
  %5057 = fadd fast float %5054, %4891
  %5058 = fadd fast float %5055, %4892
  %5059 = fadd fast float %5056, %4893
  %5060 = fmul fast float %5034, %5029
  %5061 = call float @dx.op.unary.f32(i32 7, float %5041)  ; Saturate(value)
  %5062 = fsub fast float 1.000000e+00, %5061
  %5063 = fmul fast float %5060, %5062
  %5064 = fadd fast float %5063, %5061
  %5065 = fsub fast float 1.000000e+00, %4895
  %5066 = fmul fast float %5034, %5065
  %5067 = fadd fast float %5066, %4895
  %5068 = call float @dx.op.dot3.f32(i32 55, float %5057, float %5058, float %5059, float %5057, float %5058, float %5059)  ; Dot3(ax,ay,az,bx,by,bz)
  %5069 = call float @dx.op.unary.f32(i32 25, float %5068)  ; Rsqrt(value)
  %5070 = fmul fast float %5057, %5069
  %5071 = fmul fast float %5058, %5069
  %5072 = fmul fast float %5059, %5069
  br label %5073

; <label>:5073                                    ; preds = %4906, %4899
  %5074 = phi float [ %4905, %4899 ], [ %4912, %4906 ]
  %5075 = phi float [ %4904, %4899 ], [ %4910, %4906 ]
  %5076 = phi float [ %4903, %4899 ], [ %4908, %4906 ]
  %5077 = phi float [ %4902, %4899 ], [ %4911, %4906 ]
  %5078 = phi float [ %4901, %4899 ], [ %4909, %4906 ]
  %5079 = phi float [ %4900, %4899 ], [ %4907, %4906 ]
  %5080 = phi float [ %4885, %4899 ], [ %4957, %4906 ]
  %5081 = phi float [ %4886, %4899 ], [ %4958, %4906 ]
  %5082 = phi float [ %4887, %4899 ], [ %4959, %4906 ]
  %5083 = phi float [ %4888, %4899 ], [ %5048, %4906 ]
  %5084 = phi float [ %4889, %4899 ], [ %5049, %4906 ]
  %5085 = phi float [ %4890, %4899 ], [ %5050, %4906 ]
  %5086 = phi float [ %4891, %4899 ], [ %5070, %4906 ]
  %5087 = phi float [ %4892, %4899 ], [ %5071, %4906 ]
  %5088 = phi float [ %4893, %4899 ], [ %5072, %4906 ]
  %5089 = phi float [ %4894, %4899 ], [ %5064, %4906 ]
  %5090 = phi float [ %4895, %4899 ], [ %5067, %4906 ]
  %5091 = fsub fast float -0.000000e+00, %205
  %5092 = select i1 %273, float 0.000000e+00, float %5085
  %5093 = call float @dx.op.dot3.f32(i32 55, float %5086, float %5087, float %5088, float %5076, float %5075, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5095 = call float @dx.op.dot3.f32(i32 55, float %5079, float %5078, float %5077, float %5086, float %5087, float %5088)  ; Dot3(ax,ay,az,bx,by,bz)
  %5096 = fmul fast float %5095, 2.000000e+00
  %5097 = fmul fast float %5096, %5086
  %5098 = fmul fast float %5096, %5087
  %5099 = fmul fast float %5096, %5088
  %5100 = fsub fast float %5079, %5097
  %5101 = fsub fast float %5078, %5098
  %5102 = fsub fast float %5077, %5099
  %5103 = call float @dx.op.binary.f32(i32 36, float %5090, float 1.000000e+00)  ; FMin(a,b)
  %5104 = fsub fast float 1.000000e+00, %5103
  %5105 = bitcast float %5104 to i32
  %5106 = ashr i32 %5105, 1
  %5107 = add nsw i32 %5106, 532487669
  %5108 = bitcast i32 %5107 to float
  %5109 = fsub fast float 1.000000e+00, %5089
  %5110 = call float @dx.op.binary.f32(i32 35, float %5109, float 0x3F847AE140000000)  ; FMax(a,b)
  %5111 = fmul fast float %5110, %5110
  %5112 = fmul fast float %5111, %5111
  %5113 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5108, float %5112, float %5113, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5115 = extractvalue %dx.types.ResRet.f32 %5114, 0
  %5116 = fsub fast float 1.000000e+00, %5090
  %5117 = bitcast float %5116 to i32
  %5118 = sub nsw i32 2129859010, %5117
  %5119 = bitcast i32 %5118 to float
  %5120 = fsub fast float 1.000000e+00, %83
  %5121 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5122 = call float @dx.op.binary.f32(i32 35, float %5121, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5123 = fdiv fast float %5120, %5122
  %5124 = call float @dx.op.dot3.f32(i32 55, float %5086, float %5087, float %5088, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5125 = call float @dx.op.unary.f32(i32 7, float %5124)  ; Saturate(value)
  %5126 = fmul fast float %5125, 5.000000e-01
  %5127 = fadd fast float %5126, 5.000000e-01
  %5128 = fmul fast float %5127, %83
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5086, float %5087, float %5088, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = fmul fast float %5130, %5123
  %5132 = fadd fast float %5128, %5131
  %5133 = fsub fast float 5.000000e-01, %5126
  %5134 = fmul fast float %5133, %5080
  %5135 = fmul fast float %5133, %5081
  %5136 = fmul fast float %5133, %5082
  %5137 = fadd fast float %5132, %5134
  %5138 = fadd fast float %5132, %5135
  %5139 = fadd fast float %5132, %5136
  %5140 = call float @dx.op.dot3.f32(i32 55, float %5100, float %5101, float %5102, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5142 = fmul fast float %5141, 5.000000e-01
  %5143 = fadd fast float %5142, 5.000000e-01
  %5144 = fmul fast float %5143, %83
  %5145 = call float @dx.op.dot3.f32(i32 55, float %5100, float %5101, float %5102, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %5146 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5147 = fmul fast float %5146, %5123
  %5148 = fadd fast float %5144, %5147
  %5149 = fsub fast float 5.000000e-01, %5142
  %5150 = fmul fast float %5149, %5080
  %5151 = fmul fast float %5149, %5081
  %5152 = fmul fast float %5149, %5082
  %5153 = fadd fast float %5148, %5150
  %5154 = fadd fast float %5148, %5151
  %5155 = fadd fast float %5148, %5152
  %5156 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5158 = extractvalue %dx.types.CBufRet.f32 %5157, 0
  %5159 = call float @dx.op.binary.f32(i32 36, float %5080, float %5158)  ; FMin(a,b)
  %5160 = fmul fast float %5159, %5104
  %5161 = fsub fast float 1.000000e+00, %5160
  %5162 = bitcast float %5161 to i32
  %5163 = sub nsw i32 2129859010, %5162
  %5164 = bitcast i32 %5163 to float
  %5165 = call float @dx.op.binary.f32(i32 36, float %5081, float %5158)  ; FMin(a,b)
  %5166 = fmul fast float %5165, %5104
  %5167 = fsub fast float 1.000000e+00, %5166
  %5168 = bitcast float %5167 to i32
  %5169 = sub nsw i32 2129859010, %5168
  %5170 = bitcast i32 %5169 to float
  %5171 = call float @dx.op.binary.f32(i32 36, float %5082, float %5158)  ; FMin(a,b)
  %5172 = fmul fast float %5171, %5104
  %5173 = fsub fast float 1.000000e+00, %5172
  %5174 = bitcast float %5173 to i32
  %5175 = sub nsw i32 2129859010, %5174
  %5176 = bitcast i32 %5175 to float
  %5177 = fmul fast float %5103, %84
  %5178 = fmul fast float %5177, %5137
  %5179 = fmul fast float %5178, %5164
  %5180 = fmul fast float %5103, %85
  %5181 = fmul fast float %5180, %5138
  %5182 = fmul fast float %5181, %5170
  %5183 = fmul fast float %5103, %86
  %5184 = fmul fast float %5183, %5139
  %5185 = fmul fast float %5184, %5176
  %5186 = call float @dx.op.binary.f32(i32 36, float %5083, float %5158)  ; FMin(a,b)
  %5187 = fmul fast float %5186, %5104
  %5188 = fsub fast float 1.000000e+00, %5187
  %5189 = bitcast float %5188 to i32
  %5190 = sub nsw i32 2129859010, %5189
  %5191 = bitcast i32 %5190 to float
  %5192 = call float @dx.op.binary.f32(i32 36, float %5084, float %5158)  ; FMin(a,b)
  %5193 = fmul fast float %5192, %5104
  %5194 = fsub fast float 1.000000e+00, %5193
  %5195 = bitcast float %5194 to i32
  %5196 = sub nsw i32 2129859010, %5195
  %5197 = bitcast i32 %5196 to float
  %5198 = call float @dx.op.binary.f32(i32 36, float %5092, float %5158)  ; FMin(a,b)
  %5199 = fmul fast float %5198, %5104
  %5200 = fsub fast float 1.000000e+00, %5199
  %5201 = bitcast float %5200 to i32
  %5202 = sub nsw i32 2129859010, %5201
  %5203 = bitcast i32 %5202 to float
  %5204 = fmul fast float %5177, %5153
  %5205 = fmul fast float %5204, %5191
  %5206 = fmul fast float %5180, %5154
  %5207 = fmul fast float %5206, %5197
  %5208 = fmul fast float %5183, %5155
  %5209 = fmul fast float %5208, %5203
  %5210 = call float @dx.op.dot3.f32(i32 55, float %5179, float %5182, float %5185, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5211 = select i1 %273, float 0.000000e+00, float %5179
  %5212 = select i1 %273, float %5210, float %5182
  %5213 = select i1 %273, float 0.000000e+00, float %5185
  %5214 = call float @dx.op.dot3.f32(i32 55, float %5205, float %5207, float %5209, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5215 = select i1 %273, float 0.000000e+00, float %5205
  %5216 = select i1 %273, float %5214, float %5207
  %5217 = select i1 %273, float 0.000000e+00, float %5209
  %5218 = fmul fast float %5094, 9.843750e-01
  %5219 = fmul fast float %5089, 9.843750e-01
  %5220 = fadd fast float %5218, 7.812500e-03
  %5221 = fadd fast float %5219, 7.812500e-03
  %5222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %5220, float %5221, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5223 = extractvalue %dx.types.ResRet.f32 %5222, 2
  %5224 = extractvalue %dx.types.ResRet.f32 %5222, 3
  %5225 = fmul fast float %5223, %5083
  %5226 = fmul fast float %5223, %5084
  %5227 = fmul fast float %5223, %5092
  %5228 = fadd fast float %5225, %5224
  %5229 = fadd fast float %5226, %5224
  %5230 = fadd fast float %5227, %5224
  %5231 = fcmp fast ogt float %3885, 0.000000e+00
  br i1 %5231, label %5232, label %5258

; <label>:5232                                    ; preds = %5073
  %5233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3885, float %5094, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5234 = extractvalue %dx.types.ResRet.f32 %5233, 0
  %5235 = extractvalue %dx.types.ResRet.f32 %5233, 1
  %5236 = extractvalue %dx.types.ResRet.f32 %5233, 2
  %5237 = fadd fast float %5234, -5.000000e-01
  %5238 = fadd fast float %5235, -5.000000e-01
  %5239 = fadd fast float %5236, -5.000000e-01
  %5240 = fsub fast float 1.000000e+00, %5083
  %5241 = fsub fast float 1.000000e+00, %5084
  %5242 = fsub fast float 1.000000e+00, %5092
  %5243 = fmul fast float %5083, 4.000000e+00
  %5244 = fmul fast float %5243, %5240
  %5245 = fmul fast float %5244, %5237
  %5246 = fmul fast float %5084, 4.000000e+00
  %5247 = fmul fast float %5246, %5241
  %5248 = fmul fast float %5247, %5238
  %5249 = fmul fast float %5092, 4.000000e+00
  %5250 = fmul fast float %5249, %5242
  %5251 = fmul fast float %5250, %5239
  %5252 = fadd fast float %5245, %5228
  %5253 = fadd fast float %5248, %5229
  %5254 = fadd fast float %5251, %5230
  %5255 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5256 = call float @dx.op.unary.f32(i32 7, float %5253)  ; Saturate(value)
  %5257 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  br label %5258

; <label>:5258                                    ; preds = %5232, %5073
  %5259 = phi float [ %5255, %5232 ], [ %5228, %5073 ]
  %5260 = phi float [ %5256, %5232 ], [ %5229, %5073 ]
  %5261 = phi float [ %5257, %5232 ], [ %5230, %5073 ]
  %5262 = call float @dx.op.binary.f32(i32 35, float %5260, float %5261)  ; FMax(a,b)
  %5263 = call float @dx.op.binary.f32(i32 35, float %5259, float %5262)  ; FMax(a,b)
  %5264 = fsub fast float 1.000000e+00, %5263
  %5265 = fmul fast float %5263, %5089
  %5266 = fadd fast float %5265, %5089
  %5267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5268 = extractvalue %dx.types.CBufRet.f32 %5267, 2
  %5269 = extractvalue %dx.types.CBufRet.f32 %5267, 3
  %5270 = fmul fast float %5266, %5268
  %5271 = fadd fast float %5270, %5269
  %5272 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5273 = fsub fast float 1.000000e+00, %5115
  %5274 = fadd fast float %5273, %5272
  %5275 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5276 = fcmp fast olt float %5275, 1.000000e+00
  br i1 %5276, label %5277, label %5753

; <label>:5277                                    ; preds = %5258
  %5278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5279 = extractvalue %dx.types.CBufRet.f32 %5278, 2
  %5280 = extractvalue %dx.types.CBufRet.f32 %5278, 3
  %5281 = fmul fast float %5279, %116
  %5282 = fmul fast float %5280, %117
  %5283 = fptoui float %5281 to i32
  %5284 = fptoui float %5282 to i32
  %5285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5286 = extractvalue %dx.types.CBufRet.f32 %5285, 0
  %5287 = extractvalue %dx.types.CBufRet.f32 %5285, 2
  %5288 = extractvalue %dx.types.CBufRet.f32 %5285, 3
  %5289 = fadd fast float %103, -4.000000e+00
  %5290 = call float @dx.op.binary.f32(i32 35, float %5289, float 0.000000e+00)  ; FMax(a,b)
  %5291 = fadd fast float %5290, %5286
  %5292 = fmul fast float %5291, %5287
  %5293 = call float @dx.op.unary.f32(i32 23, float %5292)  ; Log(value)
  %5294 = fmul fast float %5293, %5288
  %5295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5296 = extractvalue %dx.types.CBufRet.f32 %5295, 2
  %5297 = fmul fast float %5294, %5296
  %5298 = call float @dx.op.unary.f32(i32 7, float %5297)  ; Saturate(value)
  %5299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5300 = extractvalue %dx.types.CBufRet.i32 %5299, 1
  %5301 = add i32 %5300, -1
  %5302 = uitofp i32 %5300 to float
  %5303 = fmul fast float %5302, %5298
  %5304 = fptoui float %5303 to i32
  %5305 = call i32 @dx.op.binary.i32(i32 40, i32 %5304, i32 %5301)  ; UMin(a,b)
  %5306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5307 = extractvalue %dx.types.CBufRet.i32 %5306, 2
  %5308 = extractvalue %dx.types.CBufRet.i32 %5306, 3
  %5309 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5284, i32 %5307, i32 %5283)  ; UMad(a,b,c)
  %5310 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5305, i32 %5308, i32 %5309)  ; UMad(a,b,c)
  %5311 = call float @dx.op.binary.f32(i32 35, float %103, float 0.000000e+00)  ; FMax(a,b)
  %5312 = fptoui float %5311 to i32
  %5313 = lshr i32 %5312, 5
  %5314 = call i32 @dx.op.binary.i32(i32 40, i32 %5313, i32 8191)  ; UMin(a,b)
  %5315 = fsub fast float %4290, %205
  %5316 = call float @dx.op.unary.f32(i32 7, float %5315)  ; Saturate(value)
  %5317 = fcmp fast ogt float %5316, 0.000000e+00
  %5318 = fcmp fast ogt float %5102, 0.000000e+00
  %5319 = and i1 %5318, %5317
  br i1 %5319, label %5320, label %5349

; <label>:5320                                    ; preds = %5277
  %5321 = call float @dx.op.dot3.f32(i32 55, float %5100, float %5101, float %5102, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5322 = call float @dx.op.binary.f32(i32 35, float %5321, float -1.000000e+00)  ; FMax(a,b)
  %5323 = call float @dx.op.binary.f32(i32 36, float %5322, float 1.000000e+00)  ; FMin(a,b)
  %5324 = fmul fast float %5323, %5323
  %5325 = fsub fast float 1.000000e+00, %5324
  %5326 = fmul fast float %5325, 0x3FFC6E2300000000
  %5327 = fsub fast float 1.000000e+00, %5326
  %5328 = fcmp fast ogt float %5327, 0.000000e+00
  %5329 = call float @dx.op.unary.f32(i32 24, float %5327)  ; Sqrt(value)
  %5330 = fsub fast float 1.000000e+00, %5329
  %5331 = call float @dx.op.unary.f32(i32 23, float %5330)  ; Log(value)
  %5332 = fmul fast float %5331, 5.000000e+00
  %5333 = call float @dx.op.unary.f32(i32 21, float %5332)  ; Exp(value)
  %5334 = fmul fast float %5333, 0x3FEF591A60000000
  %5335 = fadd fast float %5334, 0x3F94DCB540000000
  %5336 = select i1 %5328, float %5335, float 1.000000e+00
  %5337 = fcmp fast oge float %5336, 1.000000e+00
  %5338 = fmul fast float %5321, 2.000000e+00
  %5339 = fadd fast float %5338, %5102
  %5340 = select i1 %5337, float %5339, float %5102
  %5341 = fsub fast float %5340, %5102
  %5342 = fmul fast float %5341, %5316
  %5343 = fadd fast float %5342, %5102
  %5344 = call float @dx.op.dot3.f32(i32 55, float %5100, float %5101, float %5343, float %5100, float %5101, float %5343)  ; Dot3(ax,ay,az,bx,by,bz)
  %5345 = call float @dx.op.unary.f32(i32 25, float %5344)  ; Rsqrt(value)
  %5346 = fmul fast float %5345, %5100
  %5347 = fmul fast float %5345, %5101
  %5348 = fmul fast float %5343, %5345
  br label %5349

; <label>:5349                                    ; preds = %5320, %5277
  %5350 = phi float [ %5346, %5320 ], [ %5100, %5277 ]
  %5351 = phi float [ %5347, %5320 ], [ %5101, %5277 ]
  %5352 = phi float [ %5348, %5320 ], [ %5102, %5277 ]
  %5353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5354 = extractvalue %dx.types.CBufRet.i32 %5353, 2
  %5355 = add nsw i32 %5354, -1
  %5356 = call i32 @dx.op.binary.i32(i32 37, i32 %5355, i32 0)  ; IMax(a,b)
  %5357 = shl i32 %5314, 2
  %5358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5357, i32 undef)  ; BufferLoad(srv,index,wot)
  %5359 = extractvalue %dx.types.ResRet.i32 %5358, 0
  %5360 = lshr i32 %5359, 16
  %5361 = and i32 %5359, 65535
  %5362 = lshr i32 %5359, 21
  %5363 = lshr i32 %5361, 5
  %5364 = call i32 @dx.op.binary.i32(i32 40, i32 %5363, i32 %5356)  ; UMin(a,b)
  %5365 = icmp ugt i32 %5362, %5364
  br i1 %5365, label %5729, label %5366

; <label>:5366                                    ; preds = %5349
  br label %5367

; <label>:5367                                    ; preds = %5721, %5366
  %5368 = phi float [ %5722, %5721 ], [ 0.000000e+00, %5366 ]
  %5369 = phi float [ %5723, %5721 ], [ 0.000000e+00, %5366 ]
  %5370 = phi float [ %5724, %5721 ], [ 0.000000e+00, %5366 ]
  %5371 = phi float [ %5725, %5721 ], [ 1.000000e+00, %5366 ]
  %5372 = phi i32 [ %5726, %5721 ], [ %5362, %5366 ]
  %5373 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5374 = extractvalue %dx.types.CBufRet.i32 %5373, 2
  %5375 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5310, i32 %5374, i32 %5372)  ; UMad(a,b,c)
  %5376 = shl i32 %5375, 2
  %5377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5376, i32 undef)  ; BufferLoad(srv,index,wot)
  %5378 = extractvalue %dx.types.ResRet.i32 %5377, 0
  %5379 = shl i32 %5372, 5
  %5380 = sub nsw i32 %5360, %5379
  %5381 = call i32 @dx.op.binary.i32(i32 37, i32 %5380, i32 0)  ; IMax(a,b)
  %5382 = call i32 @dx.op.binary.i32(i32 38, i32 %5381, i32 31)  ; IMin(a,b)
  %5383 = sub nsw i32 1, %5360
  %5384 = add nsw i32 %5383, %5361
  %5385 = call i32 @dx.op.binary.i32(i32 37, i32 %5384, i32 0)  ; IMax(a,b)
  %5386 = call i32 @dx.op.binary.i32(i32 38, i32 %5385, i32 32)  ; IMin(a,b)
  %5387 = and i32 %5386, 31
  %5388 = shl i32 -1, %5387
  %5389 = xor i32 %5388, -1
  %5390 = and i32 %5382, 31
  %5391 = shl i32 %5389, %5390
  %5392 = icmp eq i32 %5386, 32
  %5393 = select i1 %5392, i32 -1, i32 %5391
  %5394 = and i32 %5393, %5378
  %5395 = icmp eq i32 %5394, 0
  br i1 %5395, label %5721, label %5396

; <label>:5396                                    ; preds = %5367
  br label %5397

; <label>:5397                                    ; preds = %5504, %5396
  %5398 = phi float [ %5505, %5504 ], [ %5368, %5396 ]
  %5399 = phi float [ %5506, %5504 ], [ %5369, %5396 ]
  %5400 = phi float [ %5507, %5504 ], [ %5370, %5396 ]
  %5401 = phi float [ %5508, %5504 ], [ %5371, %5396 ]
  %5402 = phi i32 [ %5407, %5504 ], [ %5394, %5396 ]
  %5403 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5402)  ; FirstbitLo(value)
  %5404 = add i32 %5403, %5379
  %5405 = and i32 %5403, 31
  %5406 = shl i32 1, %5405
  %5407 = xor i32 %5406, %5402
  %5408 = mul i32 %5404, 72
  %5409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5408, i32 undef)  ; BufferLoad(srv,index,wot)
  %5410 = extractvalue %dx.types.ResRet.f32 %5409, 0
  %5411 = extractvalue %dx.types.ResRet.f32 %5409, 1
  %5412 = extractvalue %dx.types.ResRet.f32 %5409, 2
  %5413 = add i32 %5408, 12
  %5414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5413, i32 undef)  ; BufferLoad(srv,index,wot)
  %5415 = extractvalue %dx.types.ResRet.i32 %5414, 0
  %5416 = add i32 %5408, 16
  %5417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5416, i32 undef)  ; BufferLoad(srv,index,wot)
  %5418 = extractvalue %dx.types.ResRet.f32 %5417, 0
  %5419 = extractvalue %dx.types.ResRet.f32 %5417, 1
  %5420 = extractvalue %dx.types.ResRet.f32 %5417, 2
  %5421 = add i32 %5408, 28
  %5422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5421, i32 undef)  ; BufferLoad(srv,index,wot)
  %5423 = extractvalue %dx.types.ResRet.f32 %5422, 0
  %5424 = add i32 %5408, 32
  %5425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5424, i32 undef)  ; BufferLoad(srv,index,wot)
  %5426 = extractvalue %dx.types.ResRet.f32 %5425, 0
  %5427 = extractvalue %dx.types.ResRet.f32 %5425, 1
  %5428 = extractvalue %dx.types.ResRet.f32 %5425, 2
  %5429 = extractvalue %dx.types.ResRet.f32 %5425, 3
  %5430 = add i32 %5408, 48
  %5431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5430, i32 undef)  ; BufferLoad(srv,index,wot)
  %5432 = extractvalue %dx.types.ResRet.f32 %5431, 0
  %5433 = extractvalue %dx.types.ResRet.f32 %5431, 1
  %5434 = add i32 %5408, 56
  %5435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5434, i32 undef)  ; BufferLoad(srv,index,wot)
  %5436 = extractvalue %dx.types.ResRet.f32 %5435, 0
  %5437 = extractvalue %dx.types.ResRet.f32 %5435, 1
  %5438 = add i32 %5408, 64
  %5439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5438, i32 undef)  ; BufferLoad(srv,index,wot)
  %5440 = extractvalue %dx.types.ResRet.f32 %5439, 0
  %5441 = extractvalue %dx.types.ResRet.f32 %5439, 1
  %5442 = mul i32 %5404, 60
  %5443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5442, i32 undef)  ; BufferLoad(srv,index,wot)
  %5444 = extractvalue %dx.types.ResRet.f32 %5443, 0
  %5445 = extractvalue %dx.types.ResRet.f32 %5443, 1
  %5446 = extractvalue %dx.types.ResRet.f32 %5443, 2
  %5447 = add i32 %5442, 12
  %5448 = add i32 %5442, 48
  %5449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5448, i32 undef)  ; BufferLoad(srv,index,wot)
  %5450 = extractvalue %dx.types.ResRet.f32 %5449, 0
  %5451 = extractvalue %dx.types.ResRet.f32 %5449, 1
  %5452 = extractvalue %dx.types.ResRet.f32 %5449, 2
  %5453 = and i32 %5415, 32767
  %5454 = bitcast float %5410 to i32
  %5455 = icmp eq i32 %5454, -1
  %5456 = bitcast float %5411 to i32
  %5457 = and i32 %5415, 32768
  %5458 = icmp ne i32 %5457, 0
  %5459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5460 = extractvalue %dx.types.CBufRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.CBufRet.f32 %5459, 1
  %5462 = extractvalue %dx.types.CBufRet.f32 %5459, 2
  %5463 = fsub fast float %5444, %5460
  %5464 = fsub fast float %5445, %5461
  %5465 = fsub fast float %5446, %5462
  %5466 = fsub fast float %203, %5463
  %5467 = fsub fast float %204, %5464
  %5468 = fsub fast float %205, %5465
  %5469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5447, i32 undef)  ; BufferLoad(srv,index,wot)
  %5470 = extractvalue %dx.types.ResRet.f32 %5469, 0
  %5471 = extractvalue %dx.types.ResRet.f32 %5469, 1
  %5472 = extractvalue %dx.types.ResRet.f32 %5469, 2
  %5473 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5468, float %5470, float %5471, float %5472)  ; Dot3(ax,ay,az,bx,by,bz)
  %5474 = add i32 %5442, 24
  %5475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5474, i32 undef)  ; BufferLoad(srv,index,wot)
  %5476 = extractvalue %dx.types.ResRet.f32 %5475, 0
  %5477 = extractvalue %dx.types.ResRet.f32 %5475, 1
  %5478 = extractvalue %dx.types.ResRet.f32 %5475, 2
  %5479 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5468, float %5476, float %5477, float %5478)  ; Dot3(ax,ay,az,bx,by,bz)
  %5480 = add i32 %5442, 36
  %5481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5480, i32 undef)  ; BufferLoad(srv,index,wot)
  %5482 = extractvalue %dx.types.ResRet.f32 %5481, 0
  %5483 = extractvalue %dx.types.ResRet.f32 %5481, 1
  %5484 = extractvalue %dx.types.ResRet.f32 %5481, 2
  %5485 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5468, float %5482, float %5483, float %5484)  ; Dot3(ax,ay,az,bx,by,bz)
  %5486 = call float @dx.op.unary.f32(i32 6, float %5473)  ; FAbs(value)
  %5487 = call float @dx.op.unary.f32(i32 6, float %5479)  ; FAbs(value)
  %5488 = call float @dx.op.unary.f32(i32 6, float %5485)  ; FAbs(value)
  %5489 = fsub fast float %5450, %5486
  %5490 = fsub fast float %5451, %5487
  %5491 = fsub fast float %5452, %5488
  %5492 = fmul fast float %5489, %5418
  %5493 = fmul fast float %5490, %5419
  %5494 = fmul fast float %5491, %5420
  %5495 = call float @dx.op.binary.f32(i32 36, float %5493, float %5494)  ; FMin(a,b)
  %5496 = call float @dx.op.binary.f32(i32 36, float %5492, float %5495)  ; FMin(a,b)
  %5497 = call float @dx.op.unary.f32(i32 7, float %5496)  ; Saturate(value)
  %5498 = call float @dx.op.binary.f32(i32 36, float %5401, float %5497)  ; FMin(a,b)
  %5499 = uitofp i1 %5458 to float
  %5500 = fadd fast float %5316, 1.000000e+00
  %5501 = fsub fast float %5500, %5499
  %5502 = fmul fast float %5498, %5501
  %5503 = fcmp fast ogt float %5502, 0.000000e+00
  br i1 %5503, label %5510, label %5504

; <label>:5504                                    ; preds = %5652, %5397
  %5505 = phi float [ %5716, %5652 ], [ %5398, %5397 ]
  %5506 = phi float [ %5717, %5652 ], [ %5399, %5397 ]
  %5507 = phi float [ %5718, %5652 ], [ %5400, %5397 ]
  %5508 = phi float [ %5719, %5652 ], [ %5401, %5397 ]
  %5509 = icmp eq i32 %5402, %5406
  br i1 %5509, label %5720, label %5397

; <label>:5510                                    ; preds = %5397
  br i1 %5455, label %5568, label %5511

; <label>:5511                                    ; preds = %5510
  %5512 = fsub fast float -0.000000e+00, %5470
  %5513 = fsub fast float -0.000000e+00, %5471
  %5514 = fsub fast float -0.000000e+00, %5472
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5350, float %5351, float %5352, float %5512, float %5513, float %5514)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = fsub fast float -0.000000e+00, %5515
  %5517 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5468, float %5512, float %5513, float %5514)  ; Dot3(ax,ay,az,bx,by,bz)
  %5518 = fadd fast float %5517, %5433
  %5519 = fadd fast float %5432, %5517
  %5520 = fsub fast float -0.000000e+00, %5519
  %5521 = fcmp ogt float %5515, -0.000000e+00
  %5522 = select i1 %5521, float %5520, float %5518
  %5523 = call float @dx.op.unary.f32(i32 6, float %5516)  ; FAbs(value)
  %5524 = fdiv fast float 1.000000e+00, %5523
  %5525 = fmul fast float %5522, %5524
  %5526 = call float @dx.op.binary.f32(i32 35, float %5525, float 0.000000e+00)  ; FMax(a,b)
  %5527 = fsub fast float -0.000000e+00, %5476
  %5528 = fsub fast float -0.000000e+00, %5477
  %5529 = fsub fast float -0.000000e+00, %5478
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5350, float %5351, float %5352, float %5527, float %5528, float %5529)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = fsub fast float -0.000000e+00, %5530
  %5532 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5468, float %5527, float %5528, float %5529)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = fadd fast float %5532, %5437
  %5534 = fadd fast float %5436, %5532
  %5535 = fsub fast float -0.000000e+00, %5534
  %5536 = fcmp ogt float %5530, -0.000000e+00
  %5537 = select i1 %5536, float %5535, float %5533
  %5538 = call float @dx.op.unary.f32(i32 6, float %5531)  ; FAbs(value)
  %5539 = fdiv fast float 1.000000e+00, %5538
  %5540 = fmul fast float %5537, %5539
  %5541 = call float @dx.op.binary.f32(i32 35, float %5540, float 0.000000e+00)  ; FMax(a,b)
  %5542 = fsub fast float -0.000000e+00, %5482
  %5543 = fsub fast float -0.000000e+00, %5483
  %5544 = fsub fast float -0.000000e+00, %5484
  %5545 = call float @dx.op.dot3.f32(i32 55, float %5350, float %5351, float %5352, float %5542, float %5543, float %5544)  ; Dot3(ax,ay,az,bx,by,bz)
  %5546 = fsub fast float -0.000000e+00, %5545
  %5547 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5468, float %5542, float %5543, float %5544)  ; Dot3(ax,ay,az,bx,by,bz)
  %5548 = fadd fast float %5547, %5441
  %5549 = fadd fast float %5440, %5547
  %5550 = fsub fast float -0.000000e+00, %5549
  %5551 = fcmp ogt float %5545, -0.000000e+00
  %5552 = select i1 %5551, float %5550, float %5548
  %5553 = call float @dx.op.unary.f32(i32 6, float %5546)  ; FAbs(value)
  %5554 = fdiv fast float 1.000000e+00, %5553
  %5555 = fmul fast float %5552, %5554
  %5556 = call float @dx.op.binary.f32(i32 35, float %5555, float 0.000000e+00)  ; FMax(a,b)
  %5557 = call float @dx.op.binary.f32(i32 36, float %5541, float %5556)  ; FMin(a,b)
  %5558 = call float @dx.op.binary.f32(i32 36, float %5526, float %5557)  ; FMin(a,b)
  %5559 = fmul fast float %5558, %5350
  %5560 = fmul fast float %5558, %5351
  %5561 = fmul fast float %5558, %5352
  %5562 = fadd fast float %5559, %203
  %5563 = fadd fast float %5560, %204
  %5564 = fadd fast float %5561, %205
  %5565 = fsub fast float %5562, %5410
  %5566 = fsub fast float %5563, %5411
  %5567 = fsub fast float %5564, %5412
  br label %5575

; <label>:5568                                    ; preds = %5510
  %5569 = fmul fast float %5350, 8.096000e+03
  %5570 = fmul fast float %5351, 8.096000e+03
  %5571 = fmul fast float %5352, 8.096000e+03
  %5572 = fadd fast float %5569, %203
  %5573 = fadd fast float %5570, %204
  %5574 = fadd fast float %5571, %205
  br label %5575

; <label>:5575                                    ; preds = %5568, %5511
  %5576 = phi float [ %5350, %5568 ], [ %5565, %5511 ]
  %5577 = phi float [ %5351, %5568 ], [ %5566, %5511 ]
  %5578 = phi float [ %5352, %5568 ], [ %5567, %5511 ]
  %5579 = phi float [ %5572, %5568 ], [ %5562, %5511 ]
  %5580 = phi float [ %5573, %5568 ], [ %5563, %5511 ]
  %5581 = phi float [ %5574, %5568 ], [ %5564, %5511 ]
  %5582 = fcmp fast olt float %5429, 1.000000e+00
  br i1 %5582, label %5583, label %5614, !dx.controlflow.hints !102

; <label>:5583                                    ; preds = %5575
  %5584 = fmul fast float %5578, %5427
  %5585 = fmul fast float %5577, %5428
  %5586 = fsub fast float %5584, %5585
  %5587 = fmul fast float %5576, %5428
  %5588 = fmul fast float %5578, %5426
  %5589 = fsub fast float %5587, %5588
  %5590 = fmul fast float %5577, %5426
  %5591 = fmul fast float %5576, %5427
  %5592 = fsub fast float %5590, %5591
  %5593 = fmul fast float %5586, 2.000000e+00
  %5594 = fmul fast float %5589, 2.000000e+00
  %5595 = fmul fast float %5592, 2.000000e+00
  %5596 = fmul fast float %5593, %5429
  %5597 = fmul fast float %5594, %5429
  %5598 = fmul fast float %5595, %5429
  %5599 = fmul fast float %5595, %5427
  %5600 = fmul fast float %5594, %5428
  %5601 = fmul fast float %5593, %5428
  %5602 = fmul fast float %5595, %5426
  %5603 = fmul fast float %5594, %5426
  %5604 = fmul fast float %5593, %5427
  %5605 = fadd fast float %5599, %5576
  %5606 = fadd fast float %5605, %5596
  %5607 = fsub fast float %5606, %5600
  %5608 = fsub fast float %5577, %5602
  %5609 = fadd fast float %5608, %5597
  %5610 = fadd fast float %5609, %5601
  %5611 = fadd fast float %5598, %5578
  %5612 = fsub fast float %5611, %5604
  %5613 = fadd fast float %5612, %5603
  br label %5614

; <label>:5614                                    ; preds = %5583, %5575
  %5615 = phi float [ %5607, %5583 ], [ %5576, %5575 ]
  %5616 = phi float [ %5610, %5583 ], [ %5577, %5575 ]
  %5617 = phi float [ %5613, %5583 ], [ %5578, %5575 ]
  br i1 %5455, label %5649, label %5618

; <label>:5618                                    ; preds = %5614
  %5619 = fmul fast float %5089, 0x400187C840000000
  %5620 = fadd fast float %5619, 0xC00EFC2120000000
  %5621 = fmul fast float %5620, %5089
  %5622 = fadd fast float %5621, 0x3FE5D16340000000
  %5623 = fmul fast float %5622, %5089
  %5624 = fadd fast float %5623, 1.000000e+00
  %5625 = call float @dx.op.unary.f32(i32 7, float %5624)  ; Saturate(value)
  %5626 = fsub fast float %5579, %203
  %5627 = fsub fast float %5580, %204
  %5628 = fsub fast float %5581, %205
  %5629 = fsub fast float %5579, %5410
  %5630 = fsub fast float %5580, %5411
  %5631 = fsub fast float %5581, %5412
  %5632 = call float @dx.op.dot3.f32(i32 55, float %5626, float %5627, float %5628, float %5626, float %5627, float %5628)  ; Dot3(ax,ay,az,bx,by,bz)
  %5633 = call float @dx.op.dot3.f32(i32 55, float %5629, float %5630, float %5631, float %5629, float %5630, float %5631)  ; Dot3(ax,ay,az,bx,by,bz)
  %5634 = fadd fast float %5633, 0x3EE4F8B580000000
  %5635 = fdiv fast float %5632, %5634
  %5636 = bitcast float %5635 to i32
  %5637 = ashr i32 %5636, 1
  %5638 = add nsw i32 %5637, 532487669
  %5639 = bitcast i32 %5638 to float
  %5640 = fmul fast float %5639, %5625
  %5641 = call float @dx.op.unary.f32(i32 7, float %5640)  ; Saturate(value)
  %5642 = fmul fast float %5641, 0x4009981AE0000000
  %5643 = fsub fast float 0x40111BBD80000000, %5642
  %5644 = fmul fast float %5643, %5641
  %5645 = fadd fast float %5644, 0xC0009F6020000000
  %5646 = fmul fast float %5645, %5641
  %5647 = fadd fast float %5646, 1.000000e+00
  %5648 = call float @dx.op.unary.f32(i32 7, float %5647)  ; Saturate(value)
  br label %5652

; <label>:5649                                    ; preds = %5614
  %5650 = icmp ne i32 %5456, -1
  %5651 = zext i1 %5650 to i32
  br label %5652

; <label>:5652                                    ; preds = %5649, %5618
  %5653 = phi float [ %5089, %5649 ], [ %5648, %5618 ]
  %5654 = phi i32 [ %5651, %5649 ], [ 0, %5618 ]
  %5655 = fmul float %5653, 5.000000e+00
  %5656 = fsub float 5.000000e+00, %5655
  %5657 = icmp ne i32 %5654, 0
  %5658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5659 = extractvalue %dx.types.CBufRet.f32 %5658, 3
  %5660 = fadd fast float %5659, %5656
  %5661 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5660)  ; FMax(a,b)
  %5662 = call float @dx.op.unary.f32(i32 6, float %5615)  ; FAbs(value)
  %5663 = call float @dx.op.unary.f32(i32 6, float %5616)  ; FAbs(value)
  %5664 = fadd fast float %5663, %5662
  %5665 = call float @dx.op.unary.f32(i32 6, float %5617)  ; FAbs(value)
  %5666 = fadd fast float %5664, %5665
  %5667 = fcmp fast oeq float %5666, 0.000000e+00
  %5668 = fdiv fast float 1.000000e+00, %5666
  %5669 = select i1 %5667, float 1.000000e+00, float %5668
  %5670 = fmul fast float %5669, %5615
  %5671 = fmul fast float %5669, %5616
  %5672 = call float @dx.op.unary.f32(i32 6, float %5671)  ; FAbs(value)
  %5673 = call float @dx.op.unary.f32(i32 6, float %5670)  ; FAbs(value)
  %5674 = fsub fast float 1.000000e+00, %5672
  %5675 = fsub fast float 1.000000e+00, %5673
  %5676 = fcmp fast oge float %5670, 0.000000e+00
  %5677 = fcmp fast oge float %5671, 0.000000e+00
  %5678 = select i1 %5676, float 1.000000e+00, float -1.000000e+00
  %5679 = select i1 %5677, float 1.000000e+00, float -1.000000e+00
  %5680 = fcmp fast ole float %5617, 0.000000e+00
  %5681 = fmul fast float %5678, %5674
  %5682 = fmul fast float %5679, %5675
  %5683 = select i1 %5680, float %5681, float %5670
  %5684 = select i1 %5680, float %5682, float %5671
  %5685 = fmul fast float %5683, 5.000000e-01
  %5686 = fmul fast float %5684, 5.000000e-01
  %5687 = fadd fast float %5685, 5.000000e-01
  %5688 = fadd fast float %5686, 5.000000e-01
  %5689 = uitofp i32 %5453 to float
  %5690 = call float @dx.op.binary.f32(i32 36, float %5661, float 3.000000e+00)  ; FMin(a,b)
  %5691 = fadd fast float %5690, 2.000000e+00
  %5692 = call float @dx.op.unary.f32(i32 21, float %5691)  ; Exp(value)
  %5693 = extractvalue %dx.types.CBufRet.f32 %5658, 1
  %5694 = fmul fast float %5693, %5692
  %5695 = fmul fast float %5694, 2.000000e+00
  %5696 = fsub fast float 1.000000e+00, %5695
  %5697 = fmul fast float %5687, %5696
  %5698 = fmul fast float %5688, %5696
  %5699 = fadd fast float %5697, %5694
  %5700 = fadd fast float %5698, %5694
  %5701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %53, float %5699, float %5700, float %5689, float undef, i32 0, i32 0, i32 undef, float %5661)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5702 = extractvalue %dx.types.ResRet.f32 %5701, 0
  %5703 = extractvalue %dx.types.ResRet.f32 %5701, 1
  %5704 = extractvalue %dx.types.ResRet.f32 %5701, 2
  %5705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5706 = extractvalue %dx.types.CBufRet.f32 %5705, 3
  %5707 = fmul fast float %5706, %5423
  %5708 = call float @dx.op.binary.f32(i32 36, float %5156, float %5707)  ; FMin(a,b)
  %5709 = select i1 %5657, float %5708, float %5707
  %5710 = fmul fast float %5702, %5502
  %5711 = fmul fast float %5710, %5709
  %5712 = fmul fast float %5703, %5502
  %5713 = fmul fast float %5712, %5709
  %5714 = fmul fast float %5704, %5502
  %5715 = fmul fast float %5714, %5709
  %5716 = fadd fast float %5711, %5398
  %5717 = fadd fast float %5713, %5399
  %5718 = fadd fast float %5715, %5400
  %5719 = fsub fast float %5401, %5502
  br label %5504

; <label>:5720                                    ; preds = %5504
  br label %5721

; <label>:5721                                    ; preds = %5720, %5367
  %5722 = phi float [ %5368, %5367 ], [ %5505, %5720 ]
  %5723 = phi float [ %5369, %5367 ], [ %5506, %5720 ]
  %5724 = phi float [ %5370, %5367 ], [ %5507, %5720 ]
  %5725 = phi float [ %5371, %5367 ], [ %5508, %5720 ]
  %5726 = add i32 %5372, 1
  %5727 = icmp ugt i32 %5726, %5364
  br i1 %5727, label %5728, label %5367, !llvm.loop !103

; <label>:5728                                    ; preds = %5721
  br label %5729

; <label>:5729                                    ; preds = %5728, %5349
  %5730 = phi float [ 0.000000e+00, %5349 ], [ %5722, %5728 ]
  %5731 = phi float [ 0.000000e+00, %5349 ], [ %5723, %5728 ]
  %5732 = phi float [ 0.000000e+00, %5349 ], [ %5724, %5728 ]
  %5733 = call float @dx.op.dot3.f32(i32 55, float %5730, float %5731, float %5732, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5734 = select i1 %273, float 0.000000e+00, float %5730
  %5735 = select i1 %273, float %5733, float %5731
  %5736 = select i1 %273, float 0.000000e+00, float %5732
  %5737 = fcmp fast olt float %5275, 0.000000e+00
  %5738 = call float @dx.op.unary.f32(i32 6, float %5275)  ; FAbs(value)
  %5739 = fmul fast float %5738, %5215
  %5740 = fmul fast float %5738, %5216
  %5741 = fmul fast float %5738, %5217
  %5742 = select i1 %5737, float %5215, float %5739
  %5743 = select i1 %5737, float %5216, float %5740
  %5744 = select i1 %5737, float %5217, float %5741
  %5745 = fsub fast float 1.000000e+00, %5738
  %5746 = call float @dx.op.unary.f32(i32 7, float %5745)  ; Saturate(value)
  %5747 = fmul fast float %5746, %5734
  %5748 = fmul fast float %5746, %5735
  %5749 = fmul fast float %5746, %5736
  %5750 = fadd fast float %5742, %5747
  %5751 = fadd fast float %5743, %5748
  %5752 = fadd fast float %5744, %5749
  br label %5753

; <label>:5753                                    ; preds = %5729, %5258
  %5754 = phi float [ %5215, %5258 ], [ %5750, %5729 ]
  %5755 = phi float [ %5216, %5258 ], [ %5751, %5729 ]
  %5756 = phi float [ %5217, %5258 ], [ %5752, %5729 ]
  %5757 = fmul fast float %5264, %5211
  %5758 = fmul fast float %5264, %5212
  %5759 = fmul fast float %5264, %5213
  %5760 = call float @dx.op.dot3.f32(i32 55, float %5080, float %5081, float %5082, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5761 = fcmp fast ogt float %5760, 0x3E7FF19E20000000
  %5762 = fdiv fast float 1.000000e+00, %5760
  %5763 = select i1 %5761, float %5762, float 0.000000e+00
  %5764 = fmul fast float %5763, %5080
  %5765 = fmul fast float %5763, %5081
  %5766 = fmul fast float %5763, %5082
  %5767 = fadd fast float %5764, -1.000000e+00
  %5768 = fadd fast float %5765, -1.000000e+00
  %5769 = fadd fast float %5766, -1.000000e+00
  %5770 = fmul fast float %5767, 5.000000e-01
  %5771 = fmul fast float %5768, 5.000000e-01
  %5772 = fmul fast float %5769, 5.000000e-01
  %5773 = fadd fast float %5770, 1.000000e+00
  %5774 = fadd fast float %5771, 1.000000e+00
  %5775 = fadd fast float %5772, 1.000000e+00
  %5776 = fmul fast float %5754, %5259
  %5777 = fmul fast float %5755, %5260
  %5778 = fmul fast float %5756, %5261
  %5779 = fsub fast float 1.000000e+00, %5094
  %5780 = bitcast float %5779 to i32
  %5781 = sitofp i32 %5780 to float
  %5782 = fmul fast float %5781, 5.000000e+00
  %5783 = fadd fast float %5782, 0xC1EFBF8940000000
  %5784 = fptosi float %5783 to i32
  %5785 = bitcast i32 %5784 to float
  %5786 = fmul fast float %5785, %3886
  %5787 = fmul fast float %5211, %5786
  %5788 = fmul fast float %5787, %5264
  %5789 = fmul fast float %5788, %5773
  %5790 = fmul fast float %5212, %5786
  %5791 = fmul fast float %5790, %5264
  %5792 = fmul fast float %5791, %5774
  %5793 = fmul fast float %5213, %5786
  %5794 = fmul fast float %5793, %5264
  %5795 = fmul fast float %5794, %5775
  %5796 = fmul fast float %5757, %3882
  %5797 = fmul fast float %5758, %3882
  %5798 = fmul fast float %5759, %3882
  %5799 = fadd fast float %5776, %3878
  %5800 = fadd fast float %5799, %5789
  %5801 = fmul fast float %5800, %3882
  %5802 = fadd fast float %5777, %3879
  %5803 = fadd fast float %5802, %5792
  %5804 = fmul fast float %5803, %3882
  %5805 = fadd fast float %5778, %3880
  %5806 = fadd fast float %5805, %5795
  %5807 = fmul fast float %5806, %3882
  %5808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5809 = extractvalue %dx.types.CBufRet.f32 %5808, 3
  %5810 = fcmp fast oeq float %5809, 0.000000e+00
  br i1 %5810, label %7514, label %5811

; <label>:5811                                    ; preds = %5753
  %5812 = extractvalue %dx.types.CBufRet.f32 %5808, 0
  %5813 = extractvalue %dx.types.CBufRet.f32 %5808, 1
  %5814 = extractvalue %dx.types.CBufRet.f32 %5808, 2
  %5815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.f32 %5815, 0
  %5817 = extractvalue %dx.types.CBufRet.f32 %5815, 1
  %5818 = extractvalue %dx.types.CBufRet.f32 %5815, 2
  %5819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5820 = extractvalue %dx.types.CBufRet.f32 %5819, 0
  %5821 = extractvalue %dx.types.CBufRet.f32 %5819, 1
  %5822 = call float @dx.op.dot3.f32(i32 55, float %5816, float %5817, float %5818, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5823 = select i1 %273, float %5820, float %5816
  %5824 = select i1 %273, float %5822, float %5817
  %5825 = select i1 %273, float %5821, float %5818
  %5826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5827 = extractvalue %dx.types.CBufRet.f32 %5826, 2
  %5828 = fmul fast float %5827, %123
  %5829 = fmul fast float %5827, %124
  %5830 = fmul fast float %5827, %125
  %5831 = fadd fast float %5828, %203
  %5832 = fadd fast float %5829, %204
  %5833 = fadd fast float %5830, %205
  %5834 = fcmp fast olt float %5809, 0.000000e+00
  br i1 %5834, label %7092, label %5835

; <label>:5835                                    ; preds = %5811
  %5836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5836, 0
  %5838 = extractvalue %dx.types.CBufRet.f32 %5836, 1
  %5839 = extractvalue %dx.types.CBufRet.f32 %5836, 2
  %5840 = extractvalue %dx.types.CBufRet.f32 %5836, 3
  %5841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5842 = extractvalue %dx.types.CBufRet.f32 %5841, 0
  %5843 = extractvalue %dx.types.CBufRet.f32 %5841, 1
  %5844 = extractvalue %dx.types.CBufRet.f32 %5841, 2
  %5845 = extractvalue %dx.types.CBufRet.f32 %5841, 3
  %5846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5847 = extractvalue %dx.types.CBufRet.f32 %5846, 0
  %5848 = extractvalue %dx.types.CBufRet.f32 %5846, 1
  %5849 = extractvalue %dx.types.CBufRet.f32 %5846, 2
  %5850 = extractvalue %dx.types.CBufRet.f32 %5846, 3
  %5851 = fmul fast float %5837, %5831
  %5852 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %5838, float %5851)  ; FMad(a,b,c)
  %5853 = call float @dx.op.tertiary.f32(i32 46, float %5833, float %5839, float %5852)  ; FMad(a,b,c)
  %5854 = fadd fast float %5853, %5840
  %5855 = fmul fast float %5842, %5831
  %5856 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %5843, float %5855)  ; FMad(a,b,c)
  %5857 = call float @dx.op.tertiary.f32(i32 46, float %5833, float %5844, float %5856)  ; FMad(a,b,c)
  %5858 = fadd fast float %5857, %5845
  %5859 = fmul fast float %5847, %5831
  %5860 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %5848, float %5859)  ; FMad(a,b,c)
  %5861 = call float @dx.op.tertiary.f32(i32 46, float %5833, float %5849, float %5860)  ; FMad(a,b,c)
  %5862 = fadd fast float %5861, %5850
  %5863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5863, 0
  %5865 = fcmp fast une float %5864, 0.000000e+00
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 0
  %5868 = extractvalue %dx.types.CBufRet.f32 %5866, 1
  %5869 = extractvalue %dx.types.CBufRet.f32 %5866, 3
  %5870 = fmul fast float %5869, %5854
  %5871 = fmul fast float %5869, %5858
  %5872 = fadd fast float %5870, %5867
  %5873 = fadd fast float %5871, %5868
  %5874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5875 = extractvalue %dx.types.CBufRet.f32 %5874, 0
  %5876 = extractvalue %dx.types.CBufRet.f32 %5874, 1
  %5877 = extractvalue %dx.types.CBufRet.f32 %5874, 3
  %5878 = fmul fast float %5877, %5854
  %5879 = fmul fast float %5877, %5858
  %5880 = fadd fast float %5878, %5875
  %5881 = fadd fast float %5879, %5876
  %5882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5883 = extractvalue %dx.types.CBufRet.f32 %5882, 1
  %5884 = fsub fast float %5883, %5862
  %5885 = extractvalue %dx.types.CBufRet.f32 %5882, 2
  %5886 = fmul fast float %5884, %5885
  %5887 = fsub fast float 1.000000e+00, %5886
  %5888 = call float @dx.op.unary.f32(i32 7, float %5887)  ; Saturate(value)
  br i1 %5865, label %5949, label %5889

; <label>:5889                                    ; preds = %5835
  %5890 = extractvalue %dx.types.CBufRet.f32 %5874, 2
  %5891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5892 = extractvalue %dx.types.CBufRet.f32 %5891, 2
  %5893 = fadd fast float %5892, %5890
  %5894 = fcmp fast ogt float %5893, 0.000000e+00
  br i1 %5894, label %5895, label %5919

; <label>:5895                                    ; preds = %5889
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.CBufRet.f32 %5896, 1
  %5899 = fsub fast float %5880, %5897
  %5900 = fsub fast float %5881, %5898
  %5901 = fcmp fast olt float %5899, 0.000000e+00
  %5902 = fcmp fast olt float %5900, 0.000000e+00
  %5903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.f32 %5903, 0
  %5905 = extractvalue %dx.types.CBufRet.f32 %5903, 1
  %5906 = extractvalue %dx.types.CBufRet.f32 %5903, 2
  %5907 = extractvalue %dx.types.CBufRet.f32 %5903, 3
  %5908 = select i1 %5901, float %5904, float %5906
  %5909 = select i1 %5902, float %5905, float %5907
  %5910 = fmul fast float %5908, %5899
  %5911 = fmul fast float %5909, %5900
  %5912 = call float @dx.op.unary.f32(i32 6, float %5910)  ; FAbs(value)
  %5913 = call float @dx.op.unary.f32(i32 6, float %5911)  ; FAbs(value)
  %5914 = extractvalue %dx.types.CBufRet.f32 %5826, 0
  %5915 = call float @dx.op.binary.f32(i32 35, float %5912, float %5913)  ; FMax(a,b)
  %5916 = fsub fast float %5914, %5915
  %5917 = call float @dx.op.unary.f32(i32 7, float %5916)  ; Saturate(value)
  %5918 = fmul fast float %5917, %5888
  br label %5919

; <label>:5919                                    ; preds = %5895, %5889
  %5920 = phi float [ %5918, %5895 ], [ 0.000000e+00, %5889 ]
  %5921 = extractvalue %dx.types.CBufRet.f32 %5866, 2
  %5922 = extractvalue %dx.types.CBufRet.f32 %5891, 1
  %5923 = fadd fast float %5922, %5921
  %5924 = fcmp fast ogt float %5923, 0.000000e+00
  br i1 %5924, label %5925, label %5949

; <label>:5925                                    ; preds = %5919
  %5926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5927 = extractvalue %dx.types.CBufRet.f32 %5926, 0
  %5928 = extractvalue %dx.types.CBufRet.f32 %5926, 1
  %5929 = fsub fast float %5872, %5927
  %5930 = fsub fast float %5873, %5928
  %5931 = fcmp fast olt float %5929, 0.000000e+00
  %5932 = fcmp fast olt float %5930, 0.000000e+00
  %5933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5934 = extractvalue %dx.types.CBufRet.f32 %5933, 0
  %5935 = extractvalue %dx.types.CBufRet.f32 %5933, 1
  %5936 = extractvalue %dx.types.CBufRet.f32 %5933, 2
  %5937 = extractvalue %dx.types.CBufRet.f32 %5933, 3
  %5938 = select i1 %5931, float %5934, float %5936
  %5939 = select i1 %5932, float %5935, float %5937
  %5940 = fmul fast float %5938, %5929
  %5941 = fmul fast float %5939, %5930
  %5942 = call float @dx.op.unary.f32(i32 6, float %5940)  ; FAbs(value)
  %5943 = call float @dx.op.unary.f32(i32 6, float %5941)  ; FAbs(value)
  %5944 = extractvalue %dx.types.CBufRet.f32 %5826, 0
  %5945 = call float @dx.op.binary.f32(i32 35, float %5942, float %5943)  ; FMax(a,b)
  %5946 = fsub fast float %5944, %5945
  %5947 = call float @dx.op.unary.f32(i32 7, float %5946)  ; Saturate(value)
  %5948 = fmul fast float %5947, %5888
  br label %5949

; <label>:5949                                    ; preds = %5925, %5919, %5835
  %5950 = phi float [ 0.000000e+00, %5835 ], [ %5948, %5925 ], [ 0.000000e+00, %5919 ]
  %5951 = phi float [ 0.000000e+00, %5835 ], [ %5920, %5925 ], [ %5920, %5919 ]
  %5952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5953 = extractvalue %dx.types.CBufRet.f32 %5952, 1
  %5954 = call float @dx.op.unary.f32(i32 7, float %5953)  ; Saturate(value)
  %5955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5956 = extractvalue %dx.types.CBufRet.f32 %5955, 0
  %5957 = extractvalue %dx.types.CBufRet.f32 %5955, 1
  %5958 = fsub fast float %5854, %5956
  %5959 = fsub fast float %5858, %5957
  %5960 = fcmp fast olt float %5958, 0.000000e+00
  %5961 = fcmp fast olt float %5959, 0.000000e+00
  %5962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5963 = extractvalue %dx.types.CBufRet.f32 %5962, 0
  %5964 = extractvalue %dx.types.CBufRet.f32 %5962, 1
  %5965 = extractvalue %dx.types.CBufRet.f32 %5962, 2
  %5966 = extractvalue %dx.types.CBufRet.f32 %5962, 3
  %5967 = select i1 %5960, float %5963, float %5965
  %5968 = select i1 %5961, float %5964, float %5966
  %5969 = fmul fast float %5967, %5958
  %5970 = fmul fast float %5968, %5959
  %5971 = call float @dx.op.unary.f32(i32 6, float %5969)  ; FAbs(value)
  %5972 = call float @dx.op.unary.f32(i32 6, float %5970)  ; FAbs(value)
  %5973 = extractvalue %dx.types.CBufRet.f32 %5826, 0
  %5974 = call float @dx.op.binary.f32(i32 35, float %5971, float %5972)  ; FMax(a,b)
  %5975 = fsub fast float %5973, %5974
  %5976 = call float @dx.op.unary.f32(i32 7, float %5975)  ; Saturate(value)
  %5977 = call float @dx.op.binary.f32(i32 36, float %5976, float %5954)  ; FMin(a,b)
  %5978 = fmul fast float %5977, %5888
  %5979 = fsub fast float %5950, %5978
  %5980 = fsub fast float %5951, %5950
  %5981 = fsub fast float %5980, %5978
  %5982 = call float @dx.op.binary.f32(i32 35, float %5950, float %5951)  ; FMax(a,b)
  %5983 = call float @dx.op.binary.f32(i32 35, float %5978, float %5982)  ; FMax(a,b)
  %5984 = fcmp fast olt float %5983, 1.000000e+00
  br i1 %5984, label %5985, label %6383, !dx.controlflow.hints !105

; <label>:5985                                    ; preds = %5949
  %5986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5987 = extractvalue %dx.types.CBufRet.f32 %5986, 0
  %5988 = fcmp fast une float %5987, 0.000000e+00
  br i1 %5988, label %5989, label %6383, !dx.controlflow.hints !106

; <label>:5989                                    ; preds = %5985
  %5990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5991 = extractvalue %dx.types.CBufRet.f32 %5990, 0
  %5992 = extractvalue %dx.types.CBufRet.f32 %5990, 1
  %5993 = extractvalue %dx.types.CBufRet.f32 %5990, 2
  %5994 = extractvalue %dx.types.CBufRet.f32 %5990, 3
  %5995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5996 = extractvalue %dx.types.CBufRet.f32 %5995, 0
  %5997 = extractvalue %dx.types.CBufRet.f32 %5995, 1
  %5998 = extractvalue %dx.types.CBufRet.f32 %5995, 2
  %5999 = extractvalue %dx.types.CBufRet.f32 %5995, 3
  %6000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.f32 %6000, 0
  %6002 = extractvalue %dx.types.CBufRet.f32 %6000, 1
  %6003 = extractvalue %dx.types.CBufRet.f32 %6000, 2
  %6004 = extractvalue %dx.types.CBufRet.f32 %6000, 3
  %6005 = fmul fast float %5991, %5831
  %6006 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %5992, float %6005)  ; FMad(a,b,c)
  %6007 = call float @dx.op.tertiary.f32(i32 46, float %5833, float %5993, float %6006)  ; FMad(a,b,c)
  %6008 = fadd fast float %6007, %5994
  %6009 = fmul fast float %5996, %5831
  %6010 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %5997, float %6009)  ; FMad(a,b,c)
  %6011 = call float @dx.op.tertiary.f32(i32 46, float %5833, float %5998, float %6010)  ; FMad(a,b,c)
  %6012 = fadd fast float %6011, %5999
  %6013 = fmul fast float %6001, %5831
  %6014 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %6002, float %6013)  ; FMad(a,b,c)
  %6015 = call float @dx.op.tertiary.f32(i32 46, float %5833, float %6003, float %6014)  ; FMad(a,b,c)
  %6016 = fadd fast float %6015, %6004
  %6017 = fcmp fast oge float %6008, 1.000000e+00
  %6018 = fcmp fast oge float %6012, 1.000000e+00
  %6019 = or i1 %6017, %6018
  %6020 = fcmp fast olt float %6008, 0.000000e+00
  %6021 = fcmp fast olt float %6012, 0.000000e+00
  %6022 = or i1 %6020, %6021
  %6023 = or i1 %6019, %6022
  br i1 %6023, label %6383, label %6024, !dx.controlflow.hints !107

; <label>:6024                                    ; preds = %5989
  %6025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6026 = extractvalue %dx.types.CBufRet.f32 %6025, 0
  %6027 = extractvalue %dx.types.CBufRet.f32 %6025, 1
  %6028 = extractvalue %dx.types.CBufRet.f32 %6025, 2
  %6029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6030 = extractvalue %dx.types.CBufRet.i32 %6029, 2
  %6031 = uitofp i32 %6030 to float
  %6032 = extractvalue %dx.types.CBufRet.i32 %6029, 3
  %6033 = uitofp i32 %6032 to float
  %6034 = extractvalue %dx.types.CBufRet.f32 %6025, 3
  %6035 = fmul fast float %6034, 2.000000e+00
  %6036 = fsub fast float %6008, %6026
  %6037 = fsub fast float %6012, %6027
  %6038 = fmul fast float %6035, %6036
  %6039 = fmul fast float %6035, %6037
  %6040 = fdiv fast float 1.000000e+00, %5814
  %6041 = fmul fast float %6039, %6040
  %6042 = call float @dx.op.unary.f32(i32 6, float %6041)  ; FAbs(value)
  %6043 = fmul fast float %6028, %5833
  %6044 = fmul fast float %6043, %6035
  %6045 = call float @dx.op.unary.f32(i32 6, float %6044)  ; FAbs(value)
  %6046 = call float @dx.op.unary.f32(i32 6, float %6038)  ; FAbs(value)
  %6047 = call float @dx.op.binary.f32(i32 35, float %6045, float %6042)  ; FMax(a,b)
  %6048 = call float @dx.op.binary.f32(i32 35, float %6046, float %6047)  ; FMax(a,b)
  %6049 = fmul fast float %6048, 2.000000e+00
  %6050 = call float @dx.op.unary.f32(i32 23, float %6049)  ; Log(value)
  %6051 = call float @dx.op.binary.f32(i32 35, float %6050, float %6031)  ; FMax(a,b)
  %6052 = call float @dx.op.unary.f32(i32 22, float %6051)  ; Frc(value)
  %6053 = fadd fast float %6052, 0xBFEA666660000000
  %6054 = fmul fast float %6053, 8.000000e+00
  %6055 = call float @dx.op.unary.f32(i32 7, float %6054)  ; Saturate(value)
  %6056 = call float @dx.op.unary.f32(i32 27, float %6051)  ; Round_ni(value)
  %6057 = fadd fast float %6056, %6055
  %6058 = call float @dx.op.binary.f32(i32 36, float %6057, float %6033)  ; FMin(a,b)
  %6059 = call float @dx.op.unary.f32(i32 27, float %6058)  ; Round_ni(value)
  %6060 = fsub fast float -0.000000e+00, %6059
  %6061 = call float @dx.op.unary.f32(i32 21, float %6060)  ; Exp(value)
  %6062 = fmul fast float %6061, %6035
  %6063 = fmul fast float %6062, %6008
  %6064 = fmul fast float %6062, %6012
  %6065 = fmul fast float %6063, 2.500000e-01
  %6066 = fmul fast float %6064, 2.500000e-01
  %6067 = fadd fast float %6065, 5.000000e-01
  %6068 = fadd fast float %6066, 5.000000e-01
  %6069 = fsub fast float %6033, %6031
  %6070 = fptoui float %6069 to i32
  %6071 = add i32 %6070, 320
  %6072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %6071)  ; CBufferLoadLegacy(handle,regIndex)
  %6073 = extractvalue %dx.types.CBufRet.f32 %6072, 0
  %6074 = extractvalue %dx.types.CBufRet.f32 %6072, 1
  %6075 = fcmp fast une float %6058, %6033
  %6076 = fsub fast float %6008, %6073
  %6077 = fsub fast float %6012, %6074
  %6078 = call float @dx.op.unary.f32(i32 6, float %6076)  ; FAbs(value)
  %6079 = call float @dx.op.unary.f32(i32 6, float %6077)  ; FAbs(value)
  %6080 = fmul fast float %6078, %6062
  %6081 = fmul fast float %6079, %6062
  %6082 = fcmp fast olt float %6080, 1.000000e+00
  %6083 = fcmp fast olt float %6081, 1.000000e+00
  %6084 = and i1 %6082, %6083
  %6085 = or i1 %6075, %6084
  br i1 %6085, label %6086, label %6383, !dx.controlflow.hints !108

; <label>:6086                                    ; preds = %6024
  %6087 = fmul fast float %6064, 5.000000e-01
  %6088 = fmul fast float %6063, 5.000000e-01
  %6089 = fadd fast float %6087, 5.000000e-01
  %6090 = fadd fast float %6088, 5.000000e-01
  %6091 = sitofp i32 %6030 to float
  %6092 = fsub fast float %6058, %6091
  %6093 = call float @dx.op.unary.f32(i32 27, float %6092)  ; Round_ni(value)
  %6094 = call float @dx.op.unary.f32(i32 22, float %6058)  ; Frc(value)
  %6095 = call float @dx.op.unary.f32(i32 22, float %6090)  ; Frc(value)
  %6096 = call float @dx.op.unary.f32(i32 22, float %6089)  ; Frc(value)
  %6097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6095, float %6096, float %6093, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6098 = extractvalue %dx.types.ResRet.f32 %6097, 0
  %6099 = extractvalue %dx.types.ResRet.f32 %6097, 1
  %6100 = extractvalue %dx.types.ResRet.f32 %6097, 2
  %6101 = extractvalue %dx.types.ResRet.f32 %6097, 3
  %6102 = fcmp fast ogt float %6094, 0.000000e+00
  br i1 %6102, label %6103, label %6124, !dx.controlflow.hints !109

; <label>:6103                                    ; preds = %6086
  %6104 = fadd fast float %6093, 1.000000e+00
  %6105 = call float @dx.op.unary.f32(i32 22, float %6067)  ; Frc(value)
  %6106 = call float @dx.op.unary.f32(i32 22, float %6068)  ; Frc(value)
  %6107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6105, float %6106, float %6104, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6108 = extractvalue %dx.types.ResRet.f32 %6107, 0
  %6109 = extractvalue %dx.types.ResRet.f32 %6107, 1
  %6110 = extractvalue %dx.types.ResRet.f32 %6107, 2
  %6111 = extractvalue %dx.types.ResRet.f32 %6107, 3
  %6112 = fsub fast float %6108, %6098
  %6113 = fsub fast float %6109, %6099
  %6114 = fsub fast float %6110, %6100
  %6115 = fsub fast float %6111, %6101
  %6116 = fmul fast float %6112, %6094
  %6117 = fmul fast float %6113, %6094
  %6118 = fmul fast float %6114, %6094
  %6119 = fmul fast float %6115, %6094
  %6120 = fadd fast float %6116, %6098
  %6121 = fadd fast float %6117, %6099
  %6122 = fadd fast float %6118, %6100
  %6123 = fadd fast float %6119, %6101
  br label %6124

; <label>:6124                                    ; preds = %6103, %6086
  %6125 = phi float [ %6120, %6103 ], [ %6098, %6086 ]
  %6126 = phi float [ %6121, %6103 ], [ %6099, %6086 ]
  %6127 = phi float [ %6122, %6103 ], [ %6100, %6086 ]
  %6128 = phi float [ %6123, %6103 ], [ %6101, %6086 ]
  %6129 = fadd fast float %6125, -5.000000e-01
  %6130 = fadd fast float %6127, -5.000000e-01
  %6131 = fmul fast float %6129, 0xBFD5555560000000
  %6132 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6130, float %6131)  ; FMad(a,b,c)
  %6133 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6126, float 0.000000e+00)  ; FMad(a,b,c)
  %6134 = fadd fast float %6133, %6128
  %6135 = fmul fast float %6129, -7.500000e-01
  %6136 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6130, float %6135)  ; FMad(a,b,c)
  %6137 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6126, float 0.000000e+00)  ; FMad(a,b,c)
  %6138 = fadd fast float %6137, %6128
  %6139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6140 = extractvalue %dx.types.CBufRet.f32 %6139, 0
  %6141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6142 = extractvalue %dx.types.CBufRet.f32 %6141, 0
  %6143 = extractvalue %dx.types.CBufRet.f32 %6141, 1
  %6144 = extractvalue %dx.types.CBufRet.f32 %6141, 2
  %6145 = extractvalue %dx.types.CBufRet.f32 %6141, 3
  %6146 = fsub fast float %6142, %6132
  %6147 = fsub fast float %6143, %6134
  %6148 = fsub fast float %6144, %6136
  %6149 = fsub fast float %6145, %6138
  %6150 = fmul fast float %6146, %6140
  %6151 = fmul fast float %6147, %6140
  %6152 = fmul fast float %6148, %6140
  %6153 = fmul fast float %6149, %6140
  %6154 = fadd fast float %6150, %6132
  %6155 = fadd fast float %6151, %6134
  %6156 = fadd fast float %6152, %6136
  %6157 = fadd fast float %6153, %6138
  %6158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6159 = extractvalue %dx.types.ResRet.i32 %6158, 0
  %6160 = and i32 %6159, 536870911
  %6161 = uitofp i32 %6160 to float
  %6162 = fmul fast float %6161, %6008
  %6163 = fmul fast float %6161, %6012
  %6164 = fptoui float %6162 to i32
  %6165 = fptoui float %6163 to i32
  %6166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6167 = extractvalue %dx.types.ResRet.i32 %6166, 0
  %6168 = and i32 %6167, 31
  %6169 = lshr i32 %6164, %6168
  %6170 = lshr i32 %6165, %6168
  %6171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6172 = extractvalue %dx.types.ResRet.i32 %6171, 0
  %6173 = and i32 %6172, 31
  %6174 = shl i32 1, %6173
  %6175 = call i32 @dx.op.binary.i32(i32 40, i32 %6174, i32 4)  ; UMin(a,b)
  %6176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6177 = extractvalue %dx.types.ResRet.i32 %6176, 0
  %6178 = extractvalue %dx.types.ResRet.i32 %6176, 1
  %6179 = icmp eq i32 %6175, 0
  br i1 %6179, label %6221, label %6180

; <label>:6180                                    ; preds = %6124
  br label %6181

; <label>:6181                                    ; preds = %6209, %6180
  %6182 = phi i32 [ %6212, %6209 ], [ 0, %6180 ]
  %6183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6184 = extractvalue %dx.types.ResRet.i32 %6183, 0
  %6185 = lshr i32 %6184, 16
  %6186 = and i32 %6185, 31
  %6187 = shl i32 %6170, %6186
  %6188 = add i32 %6187, %6169
  %6189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6190 = extractvalue %dx.types.ResRet.i32 %6189, 0
  %6191 = and i32 %6190, 31
  %6192 = shl i32 %6188, %6191
  %6193 = add i32 %6192, %6182
  %6194 = shl i32 %6193, 2
  %6195 = add i32 %6194, 32
  %6196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6195, i32 undef)  ; BufferLoad(srv,index,wot)
  %6197 = extractvalue %dx.types.ResRet.i32 %6196, 0
  %6198 = icmp slt i32 %6197, 0
  %6199 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6182
  %6200 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6182
  %6201 = bitcast float* %6199 to i32*
  %6202 = bitcast float* %6200 to i32*
  br i1 %6198, label %6203, label %6209

; <label>:6203                                    ; preds = %6181
  %6204 = and i32 %6197, 1073741823
  %6205 = add nuw nsw i32 %6204, 20
  %6206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6205, i32 undef)  ; BufferLoad(srv,index,wot)
  %6207 = extractvalue %dx.types.ResRet.i32 %6206, 0
  %6208 = extractvalue %dx.types.ResRet.i32 %6206, 1
  br label %6209

; <label>:6209                                    ; preds = %6203, %6181
  %6210 = phi i32 [ %6207, %6203 ], [ %6177, %6181 ]
  %6211 = phi i32 [ %6208, %6203 ], [ %6178, %6181 ]
  store i32 %6210, i32* %6201, align 4
  store i32 %6211, i32* %6202, align 4
  %6212 = add nuw i32 %6182, 1
  %6213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6214 = extractvalue %dx.types.CBufRet.i32 %6213, 2
  %6215 = icmp eq i32 %6214, 0
  %6216 = icmp ugt i32 %6197, -1073741825
  %6217 = and i1 %6216, %6215
  %6218 = icmp ult i32 %6212, %6175
  %6219 = and i1 %6217, %6218
  br i1 %6219, label %6181, label %6220

; <label>:6220                                    ; preds = %6209
  br label %6221

; <label>:6221                                    ; preds = %6220, %6124
  %6222 = phi i32 [ 0, %6124 ], [ %6212, %6220 ]
  %6223 = extractvalue %dx.types.CBufRet.f32 %5986, 2
  %6224 = fptoui float %6223 to i32
  %6225 = icmp eq i32 %6224, 0
  br i1 %6225, label %6277, label %6226

; <label>:6226                                    ; preds = %6221
  br label %6227

; <label>:6227                                    ; preds = %6272, %6226
  %6228 = phi i32 [ %6273, %6272 ], [ %6222, %6226 ]
  %6229 = phi i32 [ %6274, %6272 ], [ 0, %6226 ]
  %6230 = lshr i32 %6229, 2
  %6231 = and i32 %6229, 3
  %6232 = add nuw nsw i32 %6230, 83
  %6233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 %6232)  ; CBufferLoadLegacy(handle,regIndex)
  %6234 = extractvalue %dx.types.CBufRet.i32 %6233, 0
  %6235 = extractvalue %dx.types.CBufRet.i32 %6233, 1
  %6236 = extractvalue %dx.types.CBufRet.i32 %6233, 2
  %6237 = extractvalue %dx.types.CBufRet.i32 %6233, 3
  %6238 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 0
  store i32 %6234, i32* %6238, align 4
  %6239 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 1
  store i32 %6235, i32* %6239, align 4
  %6240 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 2
  store i32 %6236, i32* %6240, align 4
  %6241 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 3
  store i32 %6237, i32* %6241, align 4
  %6242 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 %6231
  %6243 = load i32, i32* %6242, align 4, !tbaa !110, !noalias !114
  %6244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6245 = extractvalue %dx.types.ResRet.i32 %6244, 0
  %6246 = lshr i32 %6245, 16
  %6247 = and i32 %6246, 31
  %6248 = shl i32 %6170, %6247
  %6249 = add i32 %6248, %6169
  %6250 = shl i32 %6249, 2
  %6251 = add i32 %6250, %6243
  %6252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6251, i32 undef)  ; BufferLoad(srv,index,wot)
  %6253 = extractvalue %dx.types.ResRet.i32 %6252, 0
  %6254 = icmp eq i32 %6253, 0
  br i1 %6254, label %6272, label %6255

; <label>:6255                                    ; preds = %6227
  %6256 = icmp slt i32 %6253, 0
  %6257 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6228
  %6258 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6228
  %6259 = bitcast float* %6257 to i32*
  %6260 = bitcast float* %6258 to i32*
  br i1 %6256, label %6261, label %6268

; <label>:6261                                    ; preds = %6255
  %6262 = and i32 %6253, 1073741823
  %6263 = add i32 %6243, 20
  %6264 = add i32 %6263, %6262
  %6265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6264, i32 undef)  ; BufferLoad(srv,index,wot)
  %6266 = extractvalue %dx.types.ResRet.i32 %6265, 0
  %6267 = extractvalue %dx.types.ResRet.i32 %6265, 1
  br label %6268

; <label>:6268                                    ; preds = %6261, %6255
  %6269 = phi i32 [ %6266, %6261 ], [ %6177, %6255 ]
  %6270 = phi i32 [ %6267, %6261 ], [ %6178, %6255 ]
  store i32 %6269, i32* %6259, align 4
  store i32 %6270, i32* %6260, align 4
  %6271 = add i32 %6228, 1
  br label %6272

; <label>:6272                                    ; preds = %6268, %6227
  %6273 = phi i32 [ %6228, %6227 ], [ %6271, %6268 ]
  %6274 = add nuw i32 %6229, 1
  %6275 = icmp eq i32 %6274, %6224
  br i1 %6275, label %6276, label %6227

; <label>:6276                                    ; preds = %6272
  br label %6277

; <label>:6277                                    ; preds = %6276, %6221
  %6278 = phi i32 [ %6222, %6221 ], [ %6273, %6276 ]
  %6279 = icmp eq i32 %6278, 1
  %6280 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 0
  %6281 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 0
  br i1 %6279, label %6282, label %6285

; <label>:6282                                    ; preds = %6277
  %6283 = load float, float* %6280, align 4
  %6284 = load float, float* %6281, align 4
  br label %6312

; <label>:6285                                    ; preds = %6277
  %6286 = load float, float* %6280, align 4
  %6287 = load float, float* %6281, align 4
  %6288 = fdiv fast float 1.000000e+00, %6287
  %6289 = fsub fast float %6286, %6288
  %6290 = icmp ugt i32 %6278, 1
  br i1 %6290, label %6291, label %6307

; <label>:6291                                    ; preds = %6285
  br label %6292

; <label>:6292                                    ; preds = %6292, %6291
  %6293 = phi float [ %6302, %6292 ], [ %6289, %6291 ]
  %6294 = phi float [ %6303, %6292 ], [ %6286, %6291 ]
  %6295 = phi i32 [ %6304, %6292 ], [ 1, %6291 ]
  %6296 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6295
  %6297 = load float, float* %6296, align 4
  %6298 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6295
  %6299 = load float, float* %6298, align 4
  %6300 = fdiv fast float 1.000000e+00, %6299
  %6301 = fsub fast float %6297, %6300
  %6302 = call float @dx.op.binary.f32(i32 36, float %6293, float %6301)  ; FMin(a,b)
  %6303 = call float @dx.op.binary.f32(i32 35, float %6294, float %6297)  ; FMax(a,b)
  %6304 = add nuw i32 %6295, 1
  %6305 = icmp eq i32 %6304, %6278
  br i1 %6305, label %6306, label %6292

; <label>:6306                                    ; preds = %6292
  br label %6307

; <label>:6307                                    ; preds = %6306, %6285
  %6308 = phi float [ %6289, %6285 ], [ %6302, %6306 ]
  %6309 = phi float [ %6286, %6285 ], [ %6303, %6306 ]
  %6310 = fsub fast float %6309, %6308
  %6311 = fdiv fast float 1.000000e+00, %6310
  br label %6312

; <label>:6312                                    ; preds = %6307, %6282
  %6313 = phi float [ %6283, %6282 ], [ %6309, %6307 ]
  %6314 = phi float [ %6284, %6282 ], [ %6311, %6307 ]
  %6315 = fadd fast float %6016, %6313
  %6316 = fmul fast float %6315, %6314
  %6317 = call float @dx.op.unary.f32(i32 7, float %6316)  ; Saturate(value)
  %6318 = fmul fast float %6317, 2.000000e+00
  %6319 = fsub fast float 1.000000e+00, %6318
  %6320 = fmul fast float %6154, %6154
  %6321 = fsub fast float %6155, %6320
  %6322 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6321)  ; FMax(a,b)
  %6323 = fdiv fast float 1.000000e+00, %6322
  %6324 = fmul fast float %6155, %6154
  %6325 = fsub fast float %6156, %6324
  %6326 = fsub fast float %6319, %6154
  %6327 = fmul fast float %6319, %6319
  %6328 = fsub fast float %6327, %6155
  %6329 = fmul fast float %6323, %6325
  %6330 = fmul fast float %6329, %6326
  %6331 = fsub fast float %6328, %6330
  %6332 = fmul fast float %6155, %6155
  %6333 = fsub fast float %6157, %6332
  %6334 = fmul fast float %6325, %6325
  %6335 = fmul fast float %6334, %6323
  %6336 = fsub fast float %6333, %6335
  %6337 = fdiv fast float %6331, %6336
  %6338 = fmul fast float %6337, %6325
  %6339 = fsub fast float %6326, %6338
  %6340 = fmul fast float %6339, %6323
  %6341 = fmul fast float %6340, %6154
  %6342 = fsub fast float 1.000000e+00, %6341
  %6343 = fmul fast float %6337, %6155
  %6344 = fsub fast float %6342, %6343
  %6345 = fmul fast float %6340, %6340
  %6346 = fmul fast float %6337, 4.000000e+00
  %6347 = fmul fast float %6346, %6344
  %6348 = fsub fast float %6345, %6347
  %6349 = call float @dx.op.unary.f32(i32 24, float %6348)  ; Sqrt(value)
  %6350 = fcmp fast oge float %6340, 0.000000e+00
  %6351 = fsub fast float -0.000000e+00, %6349
  %6352 = select i1 %6350, float %6351, float %6349
  %6353 = fsub fast float %6352, %6340
  %6354 = fdiv fast float %6353, %6337
  %6355 = fdiv fast float %6344, %6353
  %6356 = fmul fast float %6354, 5.000000e-01
  %6357 = fmul fast float %6355, 2.000000e+00
  %6358 = select i1 %6350, float %6356, float %6357
  %6359 = select i1 %6350, float %6357, float %6356
  %6360 = call float @dx.op.binary.f32(i32 35, float %6358, float %6359)  ; FMax(a,b)
  %6361 = call float @dx.op.binary.f32(i32 36, float %6358, float %6359)  ; FMin(a,b)
  %6362 = fcmp fast ogt float %6319, %6360
  %6363 = fsub fast float %6319, %6361
  %6364 = fsub fast float %6319, %6360
  %6365 = fsub fast float %6360, %6361
  %6366 = select i1 %6362, float %6364, float %6365
  %6367 = fmul float %6363, %6366
  %6368 = select i1 %6362, float %6361, float %6319
  %6369 = fcmp fast ogt float %6319, %6361
  %6370 = fmul fast float %6368, %6360
  %6371 = fadd fast float %6368, %6360
  %6372 = fmul fast float %6371, %6154
  %6373 = fadd fast float %6370, %6155
  %6374 = fsub fast float %6373, %6372
  %6375 = fdiv fast float %6374, %6367
  %6376 = select i1 %6369, float %6375, float 0.000000e+00
  %6377 = fsub fast float 1.000000e+00, %6376
  %6378 = select i1 %6362, float %6377, float %6376
  %6379 = call float @dx.op.unary.f32(i32 7, float %6378)  ; Saturate(value)
  %6380 = extractvalue %dx.types.CBufRet.f32 %6139, 3
  %6381 = fmul fast float %6380, %6379
  %6382 = fsub fast float 1.000000e+00, %6381
  br label %6383

; <label>:6383                                    ; preds = %6312, %6024, %5989, %5985, %5949
  %6384 = phi float [ 1.000000e+00, %5949 ], [ %6382, %6312 ], [ 1.000000e+00, %5989 ], [ 1.000000e+00, %6024 ], [ 1.000000e+00, %5985 ]
  %6385 = fcmp fast ogt float %5981, 0.000000e+00
  br i1 %6385, label %6386, label %6550, !dx.controlflow.hints !123

; <label>:6386                                    ; preds = %6383
  %6387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6388 = extractvalue %dx.types.CBufRet.f32 %6387, 2
  %6389 = fadd fast float %6388, %5862
  %6390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6391 = extractvalue %dx.types.CBufRet.f32 %6390, 2
  %6392 = extractvalue %dx.types.CBufRet.f32 %6390, 3
  %6393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6394 = extractvalue %dx.types.CBufRet.f32 %6393, 2
  %6395 = call float @dx.op.binary.f32(i32 35, float %6389, float 0.000000e+00)  ; FMax(a,b)
  %6396 = fadd fast float %6395, 0x3F10000000000000
  %6397 = fcmp fast oeq float %6394, 0.000000e+00
  br i1 %6397, label %6398, label %6465

; <label>:6398                                    ; preds = %6386
  %6399 = extractvalue %dx.types.CBufRet.f32 %6390, 1
  %6400 = extractvalue %dx.types.CBufRet.f32 %6390, 0
  %6401 = fmul fast float %6400, %5880
  %6402 = fmul fast float %6399, %5881
  %6403 = fadd fast float %6401, 5.000000e-01
  %6404 = call float @dx.op.unary.f32(i32 27, float %6403)  ; Round_ni(value)
  %6405 = fadd fast float %6402, 5.000000e-01
  %6406 = call float @dx.op.unary.f32(i32 27, float %6405)  ; Round_ni(value)
  %6407 = fsub fast float %6403, %6404
  %6408 = fsub fast float %6405, %6406
  %6409 = fadd fast float %6404, -5.000000e-01
  %6410 = fadd fast float %6406, -5.000000e-01
  %6411 = fmul fast float %6407, 2.000000e+00
  %6412 = fsub fast float 3.000000e+00, %6411
  %6413 = fadd fast float %6411, 1.000000e+00
  %6414 = fsub fast float 2.000000e+00, %6407
  %6415 = bitcast float %6412 to i32
  %6416 = sub nsw i32 2129859010, %6415
  %6417 = bitcast i32 %6416 to float
  %6418 = fmul fast float %6417, %6414
  %6419 = fadd fast float %6418, -1.000000e+00
  %6420 = bitcast float %6413 to i32
  %6421 = sub nsw i32 2129859010, %6420
  %6422 = bitcast i32 %6421 to float
  %6423 = fmul fast float %6422, %6407
  %6424 = fadd fast float %6423, 1.000000e+00
  %6425 = fmul fast float %6408, 2.000000e+00
  %6426 = fsub fast float 3.000000e+00, %6425
  %6427 = fadd fast float %6425, 1.000000e+00
  %6428 = fsub fast float 2.000000e+00, %6408
  %6429 = bitcast float %6426 to i32
  %6430 = sub nsw i32 2129859010, %6429
  %6431 = bitcast i32 %6430 to float
  %6432 = fmul fast float %6431, %6428
  %6433 = fadd fast float %6432, -1.000000e+00
  %6434 = bitcast float %6427 to i32
  %6435 = sub nsw i32 2129859010, %6434
  %6436 = bitcast i32 %6435 to float
  %6437 = fmul fast float %6436, %6408
  %6438 = fadd fast float %6437, 1.000000e+00
  %6439 = fadd fast float %6419, %6409
  %6440 = fmul fast float %6439, %6391
  %6441 = fadd fast float %6433, %6410
  %6442 = fmul fast float %6441, %6392
  %6443 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6440, float %6442, float undef, float undef, i32 0, i32 0, i32 undef, float %6396)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6444 = extractvalue %dx.types.ResRet.f32 %6443, 0
  %6445 = fmul fast float %6444, %6412
  %6446 = fadd fast float %6424, %6409
  %6447 = fmul fast float %6446, %6391
  %6448 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6447, float %6442, float undef, float undef, i32 0, i32 0, i32 undef, float %6396)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6449 = extractvalue %dx.types.ResRet.f32 %6448, 0
  %6450 = fmul fast float %6449, %6413
  %6451 = fadd fast float %6438, %6410
  %6452 = fmul fast float %6451, %6392
  %6453 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6440, float %6452, float undef, float undef, i32 0, i32 0, i32 undef, float %6396)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6454 = extractvalue %dx.types.ResRet.f32 %6453, 0
  %6455 = fmul fast float %6454, %6412
  %6456 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6447, float %6452, float undef, float undef, i32 0, i32 0, i32 undef, float %6396)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6457 = extractvalue %dx.types.ResRet.f32 %6456, 0
  %6458 = fmul fast float %6457, %6413
  %6459 = fadd fast float %6458, %6455
  %6460 = fmul fast float %6459, %6427
  %6461 = fadd fast float %6450, %6445
  %6462 = fmul fast float %6461, %6426
  %6463 = fadd fast float %6462, %6460
  %6464 = fmul fast float %6463, 6.250000e-02
  br label %6550

; <label>:6465                                    ; preds = %6386
  %6466 = fmul fast float %284, 0x401921FB60000000
  %6467 = call float @dx.op.unary.f32(i32 13, float %6466)  ; Sin(value)
  %6468 = call float @dx.op.unary.f32(i32 12, float %6466)  ; Cos(value)
  %6469 = fsub fast float -0.000000e+00, %6467
  br label %6470

; <label>:6470                                    ; preds = %6519, %6465
  %6471 = phi float [ 0.000000e+00, %6465 ], [ %6514, %6519 ]
  %6472 = phi float [ 0.000000e+00, %6465 ], [ %6516, %6519 ]
  %6473 = phi i32 [ 0, %6465 ], [ %6520, %6519 ]
  %6474 = mul i32 %6473, 2
  %6475 = add i32 0, %6474
  %6476 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6475
  %6477 = load float, float* %6476, align 4
  %6478 = mul i32 %6473, 2
  %6479 = add i32 1, %6478
  %6480 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6479
  %6481 = load float, float* %6480, align 4
  %6482 = fmul fast float %6477, %6468
  %6483 = call float @dx.op.tertiary.f32(i32 46, float %6481, float %6469, float %6482)  ; FMad(a,b,c)
  %6484 = fmul fast float %6477, %6467
  %6485 = call float @dx.op.tertiary.f32(i32 46, float %6481, float %6468, float %6484)  ; FMad(a,b,c)
  %6486 = fmul fast float %6483, %6394
  %6487 = fmul fast float %6485, %6394
  %6488 = fadd fast float %6486, %5880
  %6489 = fadd fast float %6487, %5881
  %6490 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %56, float %6488, float %6489, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6491 = extractvalue %dx.types.ResRet.f32 %6490, 0
  %6492 = extractvalue %dx.types.ResRet.f32 %6490, 1
  %6493 = extractvalue %dx.types.ResRet.f32 %6490, 2
  %6494 = extractvalue %dx.types.ResRet.f32 %6490, 3
  %6495 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 0
  store float %6491, float* %6495, align 4
  %6496 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 1
  store float %6492, float* %6496, align 4
  %6497 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 2
  store float %6493, float* %6497, align 4
  %6498 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 3
  store float %6494, float* %6498, align 4
  %6499 = fsub fast float %6491, %6396
  %6500 = fcmp fast olt float %6499, 0.000000e+00
  %6501 = select i1 %6500, float 0.000000e+00, float 1.000000e+00
  %6502 = fadd fast float %6501, %6471
  %6503 = fmul fast float %6501, %6499
  %6504 = fadd fast float %6503, %6472
  br label %6505

; <label>:6505                                    ; preds = %6505, %6470
  %6506 = phi i32 [ 1, %6470 ], [ %6517, %6505 ]
  %6507 = phi float [ %6504, %6470 ], [ %6516, %6505 ]
  %6508 = phi float [ %6502, %6470 ], [ %6514, %6505 ]
  %6509 = getelementptr [4 x float], [4 x float]* %109, i32 0, i32 %6506
  %6510 = load float, float* %6509, align 4, !tbaa !124, !noalias !114
  %6511 = fsub fast float %6510, %6396
  %6512 = fcmp fast olt float %6511, 0.000000e+00
  %6513 = select i1 %6512, float 0.000000e+00, float 1.000000e+00
  %6514 = fadd fast float %6513, %6508
  %6515 = fmul fast float %6513, %6511
  %6516 = fadd fast float %6515, %6507
  %6517 = add nuw nsw i32 %6506, 1
  %6518 = icmp eq i32 %6517, 4
  br i1 %6518, label %6519, label %6505, !llvm.loop !126

; <label>:6519                                    ; preds = %6505
  %6520 = add nuw nsw i32 %6473, 1
  %6521 = icmp eq i32 %6520, 8
  br i1 %6521, label %6522, label %6470, !llvm.loop !127

; <label>:6522                                    ; preds = %6519
  %6523 = fdiv fast float 1.000000e+00, %6514
  %6524 = fmul fast float %6523, %6516
  %6525 = fdiv fast float 1.000000e+00, %6396
  %6526 = fmul fast float %6524, %6525
  %6527 = call float @dx.op.unary.f32(i32 7, float %6526)  ; Saturate(value)
  %6528 = call float @dx.op.binary.f32(i32 35, float %6527, float 0.000000e+00)  ; FMax(a,b)
  %6529 = fmul fast float %6514, 3.125000e-02
  %6530 = call float @dx.op.unary.f32(i32 7, float %6529)  ; Saturate(value)
  %6531 = fmul fast float %6530, 2.000000e+00
  %6532 = fadd fast float %6531, -1.000000e+00
  %6533 = fcmp fast ogt float %6532, 0.000000e+00
  %6534 = fcmp fast olt float %6532, 0.000000e+00
  %6535 = zext i1 %6533 to i32
  %6536 = zext i1 %6534 to i32
  %6537 = sub nsw i32 %6535, %6536
  %6538 = sitofp i32 %6537 to float
  %6539 = fmul fast float %6538, %6532
  %6540 = fsub fast float 1.000000e+00, %6539
  %6541 = fmul fast float %6540, %6540
  %6542 = fmul fast float %6541, %6540
  %6543 = fsub fast float %6540, %6542
  %6544 = fmul fast float %6543, %6528
  %6545 = fsub fast float 1.000000e+00, %6542
  %6546 = fsub fast float %6545, %6544
  %6547 = fmul fast float %6538, 5.000000e-01
  %6548 = fmul fast float %6547, %6546
  %6549 = fsub fast float 5.000000e-01, %6548
  br label %6550

; <label>:6550                                    ; preds = %6522, %6398, %6383
  %6551 = phi float [ 1.000000e+00, %6383 ], [ %6464, %6398 ], [ %6549, %6522 ]
  %6552 = fcmp fast ogt float %5979, 0.000000e+00
  br i1 %6552, label %6553, label %6717, !dx.controlflow.hints !128

; <label>:6553                                    ; preds = %6550
  %6554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6555 = extractvalue %dx.types.CBufRet.f32 %6554, 1
  %6556 = fadd fast float %6555, %5862
  %6557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6558 = extractvalue %dx.types.CBufRet.f32 %6557, 2
  %6559 = extractvalue %dx.types.CBufRet.f32 %6557, 3
  %6560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6561 = extractvalue %dx.types.CBufRet.f32 %6560, 1
  %6562 = call float @dx.op.binary.f32(i32 35, float %6556, float 0.000000e+00)  ; FMax(a,b)
  %6563 = fadd fast float %6562, 0x3F10000000000000
  %6564 = fcmp fast oeq float %6561, 0.000000e+00
  br i1 %6564, label %6565, label %6632

; <label>:6565                                    ; preds = %6553
  %6566 = extractvalue %dx.types.CBufRet.f32 %6557, 1
  %6567 = extractvalue %dx.types.CBufRet.f32 %6557, 0
  %6568 = fmul fast float %6567, %5872
  %6569 = fmul fast float %6566, %5873
  %6570 = fadd fast float %6568, 5.000000e-01
  %6571 = call float @dx.op.unary.f32(i32 27, float %6570)  ; Round_ni(value)
  %6572 = fadd fast float %6569, 5.000000e-01
  %6573 = call float @dx.op.unary.f32(i32 27, float %6572)  ; Round_ni(value)
  %6574 = fsub fast float %6570, %6571
  %6575 = fsub fast float %6572, %6573
  %6576 = fadd fast float %6571, -5.000000e-01
  %6577 = fadd fast float %6573, -5.000000e-01
  %6578 = fmul fast float %6574, 2.000000e+00
  %6579 = fsub fast float 3.000000e+00, %6578
  %6580 = fadd fast float %6578, 1.000000e+00
  %6581 = fsub fast float 2.000000e+00, %6574
  %6582 = bitcast float %6579 to i32
  %6583 = sub nsw i32 2129859010, %6582
  %6584 = bitcast i32 %6583 to float
  %6585 = fmul fast float %6584, %6581
  %6586 = fadd fast float %6585, -1.000000e+00
  %6587 = bitcast float %6580 to i32
  %6588 = sub nsw i32 2129859010, %6587
  %6589 = bitcast i32 %6588 to float
  %6590 = fmul fast float %6589, %6574
  %6591 = fadd fast float %6590, 1.000000e+00
  %6592 = fmul fast float %6575, 2.000000e+00
  %6593 = fsub fast float 3.000000e+00, %6592
  %6594 = fadd fast float %6592, 1.000000e+00
  %6595 = fsub fast float 2.000000e+00, %6575
  %6596 = bitcast float %6593 to i32
  %6597 = sub nsw i32 2129859010, %6596
  %6598 = bitcast i32 %6597 to float
  %6599 = fmul fast float %6598, %6595
  %6600 = fadd fast float %6599, -1.000000e+00
  %6601 = bitcast float %6594 to i32
  %6602 = sub nsw i32 2129859010, %6601
  %6603 = bitcast i32 %6602 to float
  %6604 = fmul fast float %6603, %6575
  %6605 = fadd fast float %6604, 1.000000e+00
  %6606 = fadd fast float %6586, %6576
  %6607 = fmul fast float %6606, %6558
  %6608 = fadd fast float %6600, %6577
  %6609 = fmul fast float %6608, %6559
  %6610 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6607, float %6609, float undef, float undef, i32 0, i32 0, i32 undef, float %6563)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6611 = extractvalue %dx.types.ResRet.f32 %6610, 0
  %6612 = fmul fast float %6611, %6579
  %6613 = fadd fast float %6591, %6576
  %6614 = fmul fast float %6613, %6558
  %6615 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6614, float %6609, float undef, float undef, i32 0, i32 0, i32 undef, float %6563)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6616 = extractvalue %dx.types.ResRet.f32 %6615, 0
  %6617 = fmul fast float %6616, %6580
  %6618 = fadd fast float %6605, %6577
  %6619 = fmul fast float %6618, %6559
  %6620 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6607, float %6619, float undef, float undef, i32 0, i32 0, i32 undef, float %6563)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6621 = extractvalue %dx.types.ResRet.f32 %6620, 0
  %6622 = fmul fast float %6621, %6579
  %6623 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6614, float %6619, float undef, float undef, i32 0, i32 0, i32 undef, float %6563)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6624 = extractvalue %dx.types.ResRet.f32 %6623, 0
  %6625 = fmul fast float %6624, %6580
  %6626 = fadd fast float %6625, %6622
  %6627 = fmul fast float %6626, %6594
  %6628 = fadd fast float %6617, %6612
  %6629 = fmul fast float %6628, %6593
  %6630 = fadd fast float %6629, %6627
  %6631 = fmul fast float %6630, 6.250000e-02
  br label %6717

; <label>:6632                                    ; preds = %6553
  %6633 = fmul fast float %284, 0x401921FB60000000
  %6634 = call float @dx.op.unary.f32(i32 13, float %6633)  ; Sin(value)
  %6635 = call float @dx.op.unary.f32(i32 12, float %6633)  ; Cos(value)
  %6636 = fsub fast float -0.000000e+00, %6634
  br label %6637

; <label>:6637                                    ; preds = %6686, %6632
  %6638 = phi float [ 0.000000e+00, %6632 ], [ %6681, %6686 ]
  %6639 = phi float [ 0.000000e+00, %6632 ], [ %6683, %6686 ]
  %6640 = phi i32 [ 0, %6632 ], [ %6687, %6686 ]
  %6641 = mul i32 %6640, 2
  %6642 = add i32 0, %6641
  %6643 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6642
  %6644 = load float, float* %6643, align 4
  %6645 = mul i32 %6640, 2
  %6646 = add i32 1, %6645
  %6647 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6646
  %6648 = load float, float* %6647, align 4
  %6649 = fmul fast float %6644, %6635
  %6650 = call float @dx.op.tertiary.f32(i32 46, float %6648, float %6636, float %6649)  ; FMad(a,b,c)
  %6651 = fmul fast float %6644, %6634
  %6652 = call float @dx.op.tertiary.f32(i32 46, float %6648, float %6635, float %6651)  ; FMad(a,b,c)
  %6653 = fmul fast float %6650, %6561
  %6654 = fmul fast float %6652, %6561
  %6655 = fadd fast float %6653, %5872
  %6656 = fadd fast float %6654, %5873
  %6657 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %56, float %6655, float %6656, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6658 = extractvalue %dx.types.ResRet.f32 %6657, 0
  %6659 = extractvalue %dx.types.ResRet.f32 %6657, 1
  %6660 = extractvalue %dx.types.ResRet.f32 %6657, 2
  %6661 = extractvalue %dx.types.ResRet.f32 %6657, 3
  %6662 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 0
  store float %6658, float* %6662, align 4
  %6663 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 1
  store float %6659, float* %6663, align 4
  %6664 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 2
  store float %6660, float* %6664, align 4
  %6665 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 3
  store float %6661, float* %6665, align 4
  %6666 = fsub fast float %6658, %6563
  %6667 = fcmp fast olt float %6666, 0.000000e+00
  %6668 = select i1 %6667, float 0.000000e+00, float 1.000000e+00
  %6669 = fadd fast float %6668, %6638
  %6670 = fmul fast float %6668, %6666
  %6671 = fadd fast float %6670, %6639
  br label %6672

; <label>:6672                                    ; preds = %6672, %6637
  %6673 = phi i32 [ 1, %6637 ], [ %6684, %6672 ]
  %6674 = phi float [ %6671, %6637 ], [ %6683, %6672 ]
  %6675 = phi float [ %6669, %6637 ], [ %6681, %6672 ]
  %6676 = getelementptr [4 x float], [4 x float]* %108, i32 0, i32 %6673
  %6677 = load float, float* %6676, align 4, !tbaa !124, !noalias !114
  %6678 = fsub fast float %6677, %6563
  %6679 = fcmp fast olt float %6678, 0.000000e+00
  %6680 = select i1 %6679, float 0.000000e+00, float 1.000000e+00
  %6681 = fadd fast float %6680, %6675
  %6682 = fmul fast float %6680, %6678
  %6683 = fadd fast float %6682, %6674
  %6684 = add nuw nsw i32 %6673, 1
  %6685 = icmp eq i32 %6684, 4
  br i1 %6685, label %6686, label %6672, !llvm.loop !126

; <label>:6686                                    ; preds = %6672
  %6687 = add nuw nsw i32 %6640, 1
  %6688 = icmp eq i32 %6687, 8
  br i1 %6688, label %6689, label %6637, !llvm.loop !127

; <label>:6689                                    ; preds = %6686
  %6690 = fdiv fast float 1.000000e+00, %6681
  %6691 = fmul fast float %6690, %6683
  %6692 = fdiv fast float 1.000000e+00, %6563
  %6693 = fmul fast float %6691, %6692
  %6694 = call float @dx.op.unary.f32(i32 7, float %6693)  ; Saturate(value)
  %6695 = call float @dx.op.binary.f32(i32 35, float %6694, float 0.000000e+00)  ; FMax(a,b)
  %6696 = fmul fast float %6681, 3.125000e-02
  %6697 = call float @dx.op.unary.f32(i32 7, float %6696)  ; Saturate(value)
  %6698 = fmul fast float %6697, 2.000000e+00
  %6699 = fadd fast float %6698, -1.000000e+00
  %6700 = fcmp fast ogt float %6699, 0.000000e+00
  %6701 = fcmp fast olt float %6699, 0.000000e+00
  %6702 = zext i1 %6700 to i32
  %6703 = zext i1 %6701 to i32
  %6704 = sub nsw i32 %6702, %6703
  %6705 = sitofp i32 %6704 to float
  %6706 = fmul fast float %6705, %6699
  %6707 = fsub fast float 1.000000e+00, %6706
  %6708 = fmul fast float %6707, %6707
  %6709 = fmul fast float %6708, %6707
  %6710 = fsub fast float %6707, %6709
  %6711 = fmul fast float %6710, %6695
  %6712 = fsub fast float 1.000000e+00, %6709
  %6713 = fsub fast float %6712, %6711
  %6714 = fmul fast float %6705, 5.000000e-01
  %6715 = fmul fast float %6714, %6713
  %6716 = fsub fast float 5.000000e-01, %6715
  br label %6717

; <label>:6717                                    ; preds = %6689, %6565, %6550
  %6718 = phi float [ 1.000000e+00, %6550 ], [ %6631, %6565 ], [ %6716, %6689 ]
  %6719 = fcmp fast ogt float %5978, 0.000000e+00
  br i1 %6719, label %6720, label %7038, !dx.controlflow.hints !129

; <label>:6720                                    ; preds = %6717
  %6721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6722 = extractvalue %dx.types.CBufRet.f32 %6721, 0
  %6723 = fadd fast float %6722, %5862
  %6724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6725 = extractvalue %dx.types.CBufRet.f32 %6724, 2
  %6726 = extractvalue %dx.types.CBufRet.f32 %6724, 3
  %6727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6728 = extractvalue %dx.types.CBufRet.f32 %6727, 0
  %6729 = call float @dx.op.binary.f32(i32 35, float %6723, float 0.000000e+00)  ; FMax(a,b)
  %6730 = fadd fast float %6729, 0x3F10000000000000
  %6731 = fcmp fast oeq float %6728, 0.000000e+00
  br i1 %5865, label %6732, label %6885, !dx.controlflow.hints !130

; <label>:6732                                    ; preds = %6720
  br i1 %6731, label %6733, label %6800

; <label>:6733                                    ; preds = %6732
  %6734 = extractvalue %dx.types.CBufRet.f32 %6724, 1
  %6735 = extractvalue %dx.types.CBufRet.f32 %6724, 0
  %6736 = fmul fast float %6735, %5854
  %6737 = fmul fast float %6734, %5858
  %6738 = fadd fast float %6736, 5.000000e-01
  %6739 = call float @dx.op.unary.f32(i32 27, float %6738)  ; Round_ni(value)
  %6740 = fadd fast float %6737, 5.000000e-01
  %6741 = call float @dx.op.unary.f32(i32 27, float %6740)  ; Round_ni(value)
  %6742 = fsub fast float %6738, %6739
  %6743 = fsub fast float %6740, %6741
  %6744 = fadd fast float %6739, -5.000000e-01
  %6745 = fadd fast float %6741, -5.000000e-01
  %6746 = fmul fast float %6742, 2.000000e+00
  %6747 = fsub fast float 3.000000e+00, %6746
  %6748 = fadd fast float %6746, 1.000000e+00
  %6749 = fsub fast float 2.000000e+00, %6742
  %6750 = bitcast float %6747 to i32
  %6751 = sub nsw i32 2129859010, %6750
  %6752 = bitcast i32 %6751 to float
  %6753 = fmul fast float %6752, %6749
  %6754 = fadd fast float %6753, -1.000000e+00
  %6755 = bitcast float %6748 to i32
  %6756 = sub nsw i32 2129859010, %6755
  %6757 = bitcast i32 %6756 to float
  %6758 = fmul fast float %6757, %6742
  %6759 = fadd fast float %6758, 1.000000e+00
  %6760 = fmul fast float %6743, 2.000000e+00
  %6761 = fsub fast float 3.000000e+00, %6760
  %6762 = fadd fast float %6760, 1.000000e+00
  %6763 = fsub fast float 2.000000e+00, %6743
  %6764 = bitcast float %6761 to i32
  %6765 = sub nsw i32 2129859010, %6764
  %6766 = bitcast i32 %6765 to float
  %6767 = fmul fast float %6766, %6763
  %6768 = fadd fast float %6767, -1.000000e+00
  %6769 = bitcast float %6762 to i32
  %6770 = sub nsw i32 2129859010, %6769
  %6771 = bitcast i32 %6770 to float
  %6772 = fmul fast float %6771, %6743
  %6773 = fadd fast float %6772, 1.000000e+00
  %6774 = fadd fast float %6754, %6744
  %6775 = fmul fast float %6774, %6725
  %6776 = fadd fast float %6768, %6745
  %6777 = fmul fast float %6776, %6726
  %6778 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6775, float %6777, float undef, float undef, i32 0, i32 0, i32 undef, float %6730)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6779 = extractvalue %dx.types.ResRet.f32 %6778, 0
  %6780 = fmul fast float %6779, %6747
  %6781 = fadd fast float %6759, %6744
  %6782 = fmul fast float %6781, %6725
  %6783 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6782, float %6777, float undef, float undef, i32 0, i32 0, i32 undef, float %6730)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6784 = extractvalue %dx.types.ResRet.f32 %6783, 0
  %6785 = fmul fast float %6784, %6748
  %6786 = fadd fast float %6773, %6745
  %6787 = fmul fast float %6786, %6726
  %6788 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6775, float %6787, float undef, float undef, i32 0, i32 0, i32 undef, float %6730)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6789 = extractvalue %dx.types.ResRet.f32 %6788, 0
  %6790 = fmul fast float %6789, %6747
  %6791 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6782, float %6787, float undef, float undef, i32 0, i32 0, i32 undef, float %6730)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6792 = extractvalue %dx.types.ResRet.f32 %6791, 0
  %6793 = fmul fast float %6792, %6748
  %6794 = fadd fast float %6793, %6790
  %6795 = fmul fast float %6794, %6762
  %6796 = fadd fast float %6785, %6780
  %6797 = fmul fast float %6796, %6761
  %6798 = fadd fast float %6797, %6795
  %6799 = fmul fast float %6798, 6.250000e-02
  br label %7038

; <label>:6800                                    ; preds = %6732
  %6801 = fmul fast float %284, 0x401921FB60000000
  %6802 = call float @dx.op.unary.f32(i32 13, float %6801)  ; Sin(value)
  %6803 = call float @dx.op.unary.f32(i32 12, float %6801)  ; Cos(value)
  %6804 = fsub fast float -0.000000e+00, %6802
  br label %6805

; <label>:6805                                    ; preds = %6854, %6800
  %6806 = phi float [ 0.000000e+00, %6800 ], [ %6849, %6854 ]
  %6807 = phi float [ 0.000000e+00, %6800 ], [ %6851, %6854 ]
  %6808 = phi i32 [ 0, %6800 ], [ %6855, %6854 ]
  %6809 = mul i32 %6808, 2
  %6810 = add i32 0, %6809
  %6811 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6810
  %6812 = load float, float* %6811, align 4
  %6813 = mul i32 %6808, 2
  %6814 = add i32 1, %6813
  %6815 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6814
  %6816 = load float, float* %6815, align 4
  %6817 = fmul fast float %6812, %6803
  %6818 = call float @dx.op.tertiary.f32(i32 46, float %6816, float %6804, float %6817)  ; FMad(a,b,c)
  %6819 = fmul fast float %6812, %6802
  %6820 = call float @dx.op.tertiary.f32(i32 46, float %6816, float %6803, float %6819)  ; FMad(a,b,c)
  %6821 = fmul fast float %6818, %6728
  %6822 = fmul fast float %6820, %6728
  %6823 = fadd fast float %6821, %5854
  %6824 = fadd fast float %6822, %5858
  %6825 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %56, float %6823, float %6824, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6826 = extractvalue %dx.types.ResRet.f32 %6825, 0
  %6827 = extractvalue %dx.types.ResRet.f32 %6825, 1
  %6828 = extractvalue %dx.types.ResRet.f32 %6825, 2
  %6829 = extractvalue %dx.types.ResRet.f32 %6825, 3
  %6830 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %6826, float* %6830, align 4
  %6831 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %6827, float* %6831, align 4
  %6832 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %6828, float* %6832, align 4
  %6833 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %6829, float* %6833, align 4
  %6834 = fsub fast float %6826, %6730
  %6835 = fcmp fast olt float %6834, 0.000000e+00
  %6836 = select i1 %6835, float 0.000000e+00, float 1.000000e+00
  %6837 = fadd fast float %6836, %6806
  %6838 = fmul fast float %6836, %6834
  %6839 = fadd fast float %6838, %6807
  br label %6840

; <label>:6840                                    ; preds = %6840, %6805
  %6841 = phi i32 [ 1, %6805 ], [ %6852, %6840 ]
  %6842 = phi float [ %6839, %6805 ], [ %6851, %6840 ]
  %6843 = phi float [ %6837, %6805 ], [ %6849, %6840 ]
  %6844 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %6841
  %6845 = load float, float* %6844, align 4, !tbaa !124, !noalias !114
  %6846 = fsub fast float %6845, %6730
  %6847 = fcmp fast olt float %6846, 0.000000e+00
  %6848 = select i1 %6847, float 0.000000e+00, float 1.000000e+00
  %6849 = fadd fast float %6848, %6843
  %6850 = fmul fast float %6848, %6846
  %6851 = fadd fast float %6850, %6842
  %6852 = add nuw nsw i32 %6841, 1
  %6853 = icmp eq i32 %6852, 4
  br i1 %6853, label %6854, label %6840, !llvm.loop !126

; <label>:6854                                    ; preds = %6840
  %6855 = add nuw nsw i32 %6808, 1
  %6856 = icmp eq i32 %6855, 8
  br i1 %6856, label %6857, label %6805, !llvm.loop !127

; <label>:6857                                    ; preds = %6854
  %6858 = fdiv fast float 1.000000e+00, %6849
  %6859 = fmul fast float %6858, %6851
  %6860 = fdiv fast float 1.000000e+00, %6730
  %6861 = fmul fast float %6859, %6860
  %6862 = call float @dx.op.unary.f32(i32 7, float %6861)  ; Saturate(value)
  %6863 = call float @dx.op.binary.f32(i32 35, float %6862, float 0.000000e+00)  ; FMax(a,b)
  %6864 = fmul fast float %6849, 3.125000e-02
  %6865 = call float @dx.op.unary.f32(i32 7, float %6864)  ; Saturate(value)
  %6866 = fmul fast float %6865, 2.000000e+00
  %6867 = fadd fast float %6866, -1.000000e+00
  %6868 = fcmp fast ogt float %6867, 0.000000e+00
  %6869 = fcmp fast olt float %6867, 0.000000e+00
  %6870 = zext i1 %6868 to i32
  %6871 = zext i1 %6869 to i32
  %6872 = sub nsw i32 %6870, %6871
  %6873 = sitofp i32 %6872 to float
  %6874 = fmul fast float %6873, %6867
  %6875 = fsub fast float 1.000000e+00, %6874
  %6876 = fmul fast float %6875, %6875
  %6877 = fmul fast float %6876, %6875
  %6878 = fsub fast float %6875, %6877
  %6879 = fmul fast float %6878, %6863
  %6880 = fsub fast float 1.000000e+00, %6877
  %6881 = fsub fast float %6880, %6879
  %6882 = fmul fast float %6873, 5.000000e-01
  %6883 = fmul fast float %6882, %6881
  %6884 = fsub fast float 5.000000e-01, %6883
  br label %7038

; <label>:6885                                    ; preds = %6720
  br i1 %6731, label %6886, label %6953

; <label>:6886                                    ; preds = %6885
  %6887 = extractvalue %dx.types.CBufRet.f32 %6724, 1
  %6888 = extractvalue %dx.types.CBufRet.f32 %6724, 0
  %6889 = fmul fast float %6888, %5854
  %6890 = fmul fast float %6887, %5858
  %6891 = fadd fast float %6889, 5.000000e-01
  %6892 = call float @dx.op.unary.f32(i32 27, float %6891)  ; Round_ni(value)
  %6893 = fadd fast float %6890, 5.000000e-01
  %6894 = call float @dx.op.unary.f32(i32 27, float %6893)  ; Round_ni(value)
  %6895 = fsub fast float %6891, %6892
  %6896 = fsub fast float %6893, %6894
  %6897 = fadd fast float %6892, -5.000000e-01
  %6898 = fadd fast float %6894, -5.000000e-01
  %6899 = fmul fast float %6895, 2.000000e+00
  %6900 = fsub fast float 3.000000e+00, %6899
  %6901 = fadd fast float %6899, 1.000000e+00
  %6902 = fsub fast float 2.000000e+00, %6895
  %6903 = bitcast float %6900 to i32
  %6904 = sub nsw i32 2129859010, %6903
  %6905 = bitcast i32 %6904 to float
  %6906 = fmul fast float %6905, %6902
  %6907 = fadd fast float %6906, -1.000000e+00
  %6908 = bitcast float %6901 to i32
  %6909 = sub nsw i32 2129859010, %6908
  %6910 = bitcast i32 %6909 to float
  %6911 = fmul fast float %6910, %6895
  %6912 = fadd fast float %6911, 1.000000e+00
  %6913 = fmul fast float %6896, 2.000000e+00
  %6914 = fsub fast float 3.000000e+00, %6913
  %6915 = fadd fast float %6913, 1.000000e+00
  %6916 = fsub fast float 2.000000e+00, %6896
  %6917 = bitcast float %6914 to i32
  %6918 = sub nsw i32 2129859010, %6917
  %6919 = bitcast i32 %6918 to float
  %6920 = fmul fast float %6919, %6916
  %6921 = fadd fast float %6920, -1.000000e+00
  %6922 = bitcast float %6915 to i32
  %6923 = sub nsw i32 2129859010, %6922
  %6924 = bitcast i32 %6923 to float
  %6925 = fmul fast float %6924, %6896
  %6926 = fadd fast float %6925, 1.000000e+00
  %6927 = fadd fast float %6907, %6897
  %6928 = fmul fast float %6927, %6725
  %6929 = fadd fast float %6921, %6898
  %6930 = fmul fast float %6929, %6726
  %6931 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6928, float %6930, float undef, float undef, i32 0, i32 0, i32 undef, float %6730)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6932 = extractvalue %dx.types.ResRet.f32 %6931, 0
  %6933 = fmul fast float %6932, %6900
  %6934 = fadd fast float %6912, %6897
  %6935 = fmul fast float %6934, %6725
  %6936 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6935, float %6930, float undef, float undef, i32 0, i32 0, i32 undef, float %6730)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6937 = extractvalue %dx.types.ResRet.f32 %6936, 0
  %6938 = fmul fast float %6937, %6901
  %6939 = fadd fast float %6926, %6898
  %6940 = fmul fast float %6939, %6726
  %6941 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6928, float %6940, float undef, float undef, i32 0, i32 0, i32 undef, float %6730)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6942 = extractvalue %dx.types.ResRet.f32 %6941, 0
  %6943 = fmul fast float %6942, %6900
  %6944 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6935, float %6940, float undef, float undef, i32 0, i32 0, i32 undef, float %6730)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6945 = extractvalue %dx.types.ResRet.f32 %6944, 0
  %6946 = fmul fast float %6945, %6901
  %6947 = fadd fast float %6946, %6943
  %6948 = fmul fast float %6947, %6915
  %6949 = fadd fast float %6938, %6933
  %6950 = fmul fast float %6949, %6914
  %6951 = fadd fast float %6950, %6948
  %6952 = fmul fast float %6951, 6.250000e-02
  br label %7038

; <label>:6953                                    ; preds = %6885
  %6954 = fmul fast float %284, 0x401921FB60000000
  %6955 = call float @dx.op.unary.f32(i32 13, float %6954)  ; Sin(value)
  %6956 = call float @dx.op.unary.f32(i32 12, float %6954)  ; Cos(value)
  %6957 = fsub fast float -0.000000e+00, %6955
  br label %6958

; <label>:6958                                    ; preds = %7007, %6953
  %6959 = phi float [ 0.000000e+00, %6953 ], [ %7002, %7007 ]
  %6960 = phi float [ 0.000000e+00, %6953 ], [ %7004, %7007 ]
  %6961 = phi i32 [ 0, %6953 ], [ %7008, %7007 ]
  %6962 = mul i32 %6961, 2
  %6963 = add i32 0, %6962
  %6964 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6963
  %6965 = load float, float* %6964, align 4
  %6966 = mul i32 %6961, 2
  %6967 = add i32 1, %6966
  %6968 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6967
  %6969 = load float, float* %6968, align 4
  %6970 = fmul fast float %6965, %6956
  %6971 = call float @dx.op.tertiary.f32(i32 46, float %6969, float %6957, float %6970)  ; FMad(a,b,c)
  %6972 = fmul fast float %6965, %6955
  %6973 = call float @dx.op.tertiary.f32(i32 46, float %6969, float %6956, float %6972)  ; FMad(a,b,c)
  %6974 = fmul fast float %6971, %6728
  %6975 = fmul fast float %6973, %6728
  %6976 = fadd fast float %6974, %5854
  %6977 = fadd fast float %6975, %5858
  %6978 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %56, float %6976, float %6977, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6979 = extractvalue %dx.types.ResRet.f32 %6978, 0
  %6980 = extractvalue %dx.types.ResRet.f32 %6978, 1
  %6981 = extractvalue %dx.types.ResRet.f32 %6978, 2
  %6982 = extractvalue %dx.types.ResRet.f32 %6978, 3
  %6983 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %6979, float* %6983, align 4
  %6984 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %6980, float* %6984, align 4
  %6985 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %6981, float* %6985, align 4
  %6986 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %6982, float* %6986, align 4
  %6987 = fsub fast float %6979, %6730
  %6988 = fcmp fast olt float %6987, 0.000000e+00
  %6989 = select i1 %6988, float 0.000000e+00, float 1.000000e+00
  %6990 = fadd fast float %6989, %6959
  %6991 = fmul fast float %6989, %6987
  %6992 = fadd fast float %6991, %6960
  br label %6993

; <label>:6993                                    ; preds = %6993, %6958
  %6994 = phi i32 [ 1, %6958 ], [ %7005, %6993 ]
  %6995 = phi float [ %6992, %6958 ], [ %7004, %6993 ]
  %6996 = phi float [ %6990, %6958 ], [ %7002, %6993 ]
  %6997 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %6994
  %6998 = load float, float* %6997, align 4, !tbaa !124, !noalias !114
  %6999 = fsub fast float %6998, %6730
  %7000 = fcmp fast olt float %6999, 0.000000e+00
  %7001 = select i1 %7000, float 0.000000e+00, float 1.000000e+00
  %7002 = fadd fast float %7001, %6996
  %7003 = fmul fast float %7001, %6999
  %7004 = fadd fast float %7003, %6995
  %7005 = add nuw nsw i32 %6994, 1
  %7006 = icmp eq i32 %7005, 4
  br i1 %7006, label %7007, label %6993, !llvm.loop !126

; <label>:7007                                    ; preds = %6993
  %7008 = add nuw nsw i32 %6961, 1
  %7009 = icmp eq i32 %7008, 8
  br i1 %7009, label %7010, label %6958, !llvm.loop !127

; <label>:7010                                    ; preds = %7007
  %7011 = fdiv fast float 1.000000e+00, %7002
  %7012 = fmul fast float %7011, %7004
  %7013 = fdiv fast float 1.000000e+00, %6730
  %7014 = fmul fast float %7012, %7013
  %7015 = call float @dx.op.unary.f32(i32 7, float %7014)  ; Saturate(value)
  %7016 = call float @dx.op.binary.f32(i32 35, float %7015, float 0.000000e+00)  ; FMax(a,b)
  %7017 = fmul fast float %7002, 3.125000e-02
  %7018 = call float @dx.op.unary.f32(i32 7, float %7017)  ; Saturate(value)
  %7019 = fmul fast float %7018, 2.000000e+00
  %7020 = fadd fast float %7019, -1.000000e+00
  %7021 = fcmp fast ogt float %7020, 0.000000e+00
  %7022 = fcmp fast olt float %7020, 0.000000e+00
  %7023 = zext i1 %7021 to i32
  %7024 = zext i1 %7022 to i32
  %7025 = sub nsw i32 %7023, %7024
  %7026 = sitofp i32 %7025 to float
  %7027 = fmul fast float %7026, %7020
  %7028 = fsub fast float 1.000000e+00, %7027
  %7029 = fmul fast float %7028, %7028
  %7030 = fmul fast float %7029, %7028
  %7031 = fsub fast float %7028, %7030
  %7032 = fmul fast float %7031, %7016
  %7033 = fsub fast float 1.000000e+00, %7030
  %7034 = fsub fast float %7033, %7032
  %7035 = fmul fast float %7026, 5.000000e-01
  %7036 = fmul fast float %7035, %7034
  %7037 = fsub fast float 5.000000e-01, %7036
  br label %7038

; <label>:7038                                    ; preds = %7010, %6886, %6857, %6733, %6717
  %7039 = phi float [ 1.000000e+00, %6717 ], [ %6799, %6733 ], [ %6884, %6857 ], [ %6952, %6886 ], [ %7037, %7010 ]
  %7040 = fsub fast float %6551, %6384
  %7041 = fmul fast float %7040, %5951
  %7042 = fadd fast float %7041, %6384
  %7043 = fsub fast float %6718, %7042
  %7044 = fmul fast float %7043, %5950
  %7045 = fadd fast float %7044, %7042
  %7046 = fsub fast float %7039, %7045
  %7047 = fmul fast float %7046, %5978
  %7048 = fadd fast float %7047, %7045
  %7049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7050 = extractvalue %dx.types.CBufRet.f32 %7049, 2
  %7051 = fcmp fast ogt float %7050, 0.000000e+00
  br i1 %7051, label %7052, label %7092, !dx.controlflow.hints !131

; <label>:7052                                    ; preds = %7038
  %7053 = fcmp fast ugt float %7050, 0.000000e+00
  br i1 %7053, label %7054, label %7089

; <label>:7054                                    ; preds = %7052
  %7055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7056 = extractvalue %dx.types.CBufRet.f32 %7055, 0
  %7057 = extractvalue %dx.types.CBufRet.f32 %7055, 1
  %7058 = extractvalue %dx.types.CBufRet.f32 %7055, 2
  %7059 = extractvalue %dx.types.CBufRet.f32 %7055, 3
  %7060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7061 = extractvalue %dx.types.CBufRet.f32 %7060, 0
  %7062 = extractvalue %dx.types.CBufRet.f32 %7060, 1
  %7063 = extractvalue %dx.types.CBufRet.f32 %7060, 2
  %7064 = extractvalue %dx.types.CBufRet.f32 %7060, 3
  %7065 = extractvalue %dx.types.CBufRet.f32 %7049, 0
  %7066 = extractvalue %dx.types.CBufRet.f32 %7049, 1
  %7067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7068 = extractvalue %dx.types.CBufRet.f32 %7067, 0
  %7069 = extractvalue %dx.types.CBufRet.f32 %7067, 1
  %7070 = extractvalue %dx.types.CBufRet.f32 %7067, 2
  %7071 = fadd fast float %7068, %5831
  %7072 = fadd fast float %7069, %5832
  %7073 = fadd fast float %7070, %5833
  %7074 = fmul fast float %7071, %7056
  %7075 = call float @dx.op.tertiary.f32(i32 46, float %7057, float %7072, float %7074)  ; FMad(a,b,c)
  %7076 = call float @dx.op.tertiary.f32(i32 46, float %7058, float %7073, float %7075)  ; FMad(a,b,c)
  %7077 = fadd fast float %7076, %7059
  %7078 = fmul fast float %7071, %7061
  %7079 = call float @dx.op.tertiary.f32(i32 46, float %7062, float %7072, float %7078)  ; FMad(a,b,c)
  %7080 = call float @dx.op.tertiary.f32(i32 46, float %7063, float %7073, float %7079)  ; FMad(a,b,c)
  %7081 = fadd fast float %7080, %7064
  %7082 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %52, float %7077, float %7081, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7083 = extractvalue %dx.types.ResRet.f32 %7082, 0
  %7084 = fmul fast float %7083, %7066
  %7085 = fadd fast float %7084, %7065
  %7086 = call float @dx.op.unary.f32(i32 7, float %7085)  ; Saturate(value)
  %7087 = fmul fast float %7086, %7050
  %7088 = fsub fast float 1.000000e+00, %7087
  br label %7089

; <label>:7089                                    ; preds = %7054, %7052
  %7090 = phi float [ %7088, %7054 ], [ 1.000000e+00, %7052 ]
  %7091 = fmul fast float %7090, %7048
  br label %7092

; <label>:7092                                    ; preds = %7089, %7038, %5811
  %7093 = phi float [ 1.000000e+00, %5811 ], [ %7091, %7089 ], [ %7048, %7038 ]
  %7094 = call float @dx.op.binary.f32(i32 36, float %7093, float %7093)  ; FMin(a,b)
  %7095 = call float @dx.op.binary.f32(i32 36, float %7093, float %7094)  ; FMin(a,b)
  %7096 = fcmp fast ogt float %7095, 0.000000e+00
  br i1 %7096, label %7097, label %7262, !dx.controlflow.hints !132

; <label>:7097                                    ; preds = %7092
  %7098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7099 = extractvalue %dx.types.CBufRet.f32 %7098, 0
  %7100 = extractvalue %dx.types.CBufRet.f32 %7098, 1
  %7101 = extractvalue %dx.types.CBufRet.f32 %7098, 2
  %7102 = extractvalue %dx.types.CBufRet.f32 %7098, 3
  %7103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7104 = extractvalue %dx.types.CBufRet.f32 %7103, 0
  %7105 = extractvalue %dx.types.CBufRet.f32 %7103, 1
  %7106 = extractvalue %dx.types.CBufRet.f32 %7103, 2
  %7107 = extractvalue %dx.types.CBufRet.f32 %7103, 3
  %7108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7109 = extractvalue %dx.types.CBufRet.f32 %7108, 0
  %7110 = extractvalue %dx.types.CBufRet.f32 %7108, 1
  %7111 = extractvalue %dx.types.CBufRet.f32 %7108, 2
  %7112 = extractvalue %dx.types.CBufRet.f32 %7108, 3
  %7113 = fmul fast float %7099, %5831
  %7114 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %7100, float %7113)  ; FMad(a,b,c)
  %7115 = call float @dx.op.tertiary.f32(i32 46, float %5833, float %7101, float %7114)  ; FMad(a,b,c)
  %7116 = fadd fast float %7115, %7102
  %7117 = fmul fast float %7104, %5831
  %7118 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %7105, float %7117)  ; FMad(a,b,c)
  %7119 = call float @dx.op.tertiary.f32(i32 46, float %5833, float %7106, float %7118)  ; FMad(a,b,c)
  %7120 = fadd fast float %7119, %7107
  %7121 = fmul fast float %7109, %5831
  %7122 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %7110, float %7121)  ; FMad(a,b,c)
  %7123 = call float @dx.op.tertiary.f32(i32 46, float %5833, float %7111, float %7122)  ; FMad(a,b,c)
  %7124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7125 = extractvalue %dx.types.CBufRet.f32 %7124, 0
  %7126 = extractvalue %dx.types.CBufRet.f32 %7124, 1
  %7127 = extractvalue %dx.types.CBufRet.f32 %7124, 3
  %7128 = fmul fast float %7127, %7116
  %7129 = fmul fast float %7127, %7120
  %7130 = fadd fast float %7128, %7125
  %7131 = fadd fast float %7129, %7126
  %7132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7133 = extractvalue %dx.types.CBufRet.f32 %7132, 0
  %7134 = extractvalue %dx.types.CBufRet.f32 %7132, 1
  %7135 = fsub fast float %7130, %7133
  %7136 = fsub fast float %7131, %7134
  %7137 = fcmp fast olt float %7135, 0.000000e+00
  %7138 = fcmp fast olt float %7136, 0.000000e+00
  %7139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7140 = extractvalue %dx.types.CBufRet.f32 %7139, 0
  %7141 = extractvalue %dx.types.CBufRet.f32 %7139, 1
  %7142 = extractvalue %dx.types.CBufRet.f32 %7139, 2
  %7143 = extractvalue %dx.types.CBufRet.f32 %7139, 3
  %7144 = select i1 %7137, float %7140, float %7142
  %7145 = select i1 %7138, float %7141, float %7143
  %7146 = fmul fast float %7144, %7135
  %7147 = fmul fast float %7145, %7136
  %7148 = call float @dx.op.unary.f32(i32 6, float %7146)  ; FAbs(value)
  %7149 = call float @dx.op.unary.f32(i32 6, float %7147)  ; FAbs(value)
  %7150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7151 = extractvalue %dx.types.CBufRet.f32 %7150, 0
  %7152 = call float @dx.op.binary.f32(i32 35, float %7148, float %7149)  ; FMax(a,b)
  %7153 = fsub fast float %7151, %7152
  %7154 = call float @dx.op.unary.f32(i32 7, float %7153)  ; Saturate(value)
  %7155 = fcmp fast ogt float %7154, 0.000000e+00
  br i1 %7155, label %7156, label %7197, !dx.controlflow.hints !133

; <label>:7156                                    ; preds = %7097
  %7157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %55, float %7130, float %7131, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7158 = extractvalue %dx.types.ResRet.f32 %7157, 1
  %7159 = fcmp fast ogt float %7158, 0.000000e+00
  br i1 %7159, label %7160, label %7192

; <label>:7160                                    ; preds = %7156
  %7161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %55, float %7130, float %7131, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7162 = extractvalue %dx.types.ResRet.f32 %7161, 0
  %7163 = extractvalue %dx.types.ResRet.f32 %7161, 1
  %7164 = extractvalue %dx.types.ResRet.f32 %7161, 2
  %7165 = extractvalue %dx.types.ResRet.f32 %7161, 3
  %7166 = fsub fast float 1.000000e+00, %7112
  %7167 = fsub fast float %7166, %7123
  %7168 = fmul fast float %7167, 0x400921FB60000000
  %7169 = fadd fast float %7168, 0x3FF921FB60000000
  %7170 = call float @dx.op.unary.f32(i32 13, float %7169)  ; Sin(value)
  %7171 = fadd fast float %7170, -1.000000e+00
  %7172 = fmul fast float %7171, 0x3FD45F3060000000
  %7173 = fmul fast float %7167, 0x401921FB60000000
  %7174 = fadd fast float %7173, 0x400921FB60000000
  %7175 = call float @dx.op.unary.f32(i32 13, float %7174)  ; Sin(value)
  %7176 = fadd fast float %7175, 0x3E7777A5C0000000
  %7177 = fmul fast float %7176, 0x3FC45F3060000000
  %7178 = fmul fast float %7167, 0x4022D97C80000000
  %7179 = fadd fast float %7178, 0x4012D97C80000000
  %7180 = call float @dx.op.unary.f32(i32 13, float %7179)  ; Sin(value)
  %7181 = fadd fast float %7180, 1.000000e+00
  %7182 = fmul fast float %7181, 0x3FBB2995E0000000
  %7183 = fmul fast float %7167, 0x402921FB60000000
  %7184 = fadd fast float %7183, 0x401921FB60000000
  %7185 = call float @dx.op.unary.f32(i32 13, float %7184)  ; Sin(value)
  %7186 = fadd fast float %7185, 0xBE8777A5C0000000
  %7187 = fmul fast float %7186, 0x3FB45F3060000000
  %7188 = call float @dx.op.dot4.f32(i32 56, float %7162, float %7163, float %7164, float %7165, float %7172, float %7177, float %7182, float %7187)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7189 = fmul fast float %7188, 0xBFF7154760000000
  %7190 = call float @dx.op.unary.f32(i32 21, float %7189)  ; Exp(value)
  %7191 = call float @dx.op.unary.f32(i32 7, float %7190)  ; Saturate(value)
  br label %7192

; <label>:7192                                    ; preds = %7160, %7156
  %7193 = phi float [ %7191, %7160 ], [ 1.000000e+00, %7156 ]
  %7194 = fadd fast float %7193, -1.000000e+00
  %7195 = fmul fast float %7194, %7154
  %7196 = fadd fast float %7195, 1.000000e+00
  br label %7197

; <label>:7197                                    ; preds = %7192, %7097
  %7198 = phi float [ %7196, %7192 ], [ 1.000000e+00, %7097 ]
  %7199 = fmul fast float %7198, %7093
  %7200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7201 = extractvalue %dx.types.CBufRet.f32 %7200, 0
  %7202 = extractvalue %dx.types.CBufRet.f32 %7200, 1
  %7203 = extractvalue %dx.types.CBufRet.f32 %7200, 2
  %7204 = fadd fast float %7201, %203
  %7205 = fadd fast float %7202, %204
  %7206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7207 = extractvalue %dx.types.CBufRet.f32 %7206, 1
  %7208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7209 = extractvalue %dx.types.CBufRet.f32 %7208, 0
  %7210 = extractvalue %dx.types.CBufRet.f32 %7208, 1
  %7211 = extractvalue %dx.types.CBufRet.f32 %7208, 2
  %7212 = fsub fast float -0.000000e+00, %7204
  %7213 = fsub fast float -0.000000e+00, %7205
  %7214 = fsub fast float %5091, %7203
  %7215 = fadd fast float %7214, %7207
  %7216 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7212, float %7213, float %7215)  ; Dot3(ax,ay,az,bx,by,bz)
  %7217 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7209, float %7210, float %7211)  ; Dot3(ax,ay,az,bx,by,bz)
  %7218 = fdiv fast float 1.000000e+00, %7217
  %7219 = fmul fast float %7218, %7216
  %7220 = fmul fast float %7209, %7219
  %7221 = fmul fast float %7210, %7219
  %7222 = fadd fast float %7220, %7204
  %7223 = fadd fast float %7221, %7205
  %7224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7225 = extractvalue %dx.types.CBufRet.f32 %7224, 0
  %7226 = extractvalue %dx.types.CBufRet.f32 %7224, 1
  %7227 = fsub fast float %7222, %7225
  %7228 = fsub fast float %7223, %7226
  %7229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7230 = extractvalue %dx.types.CBufRet.f32 %7229, 2
  %7231 = extractvalue %dx.types.CBufRet.f32 %7229, 3
  %7232 = fmul fast float %7227, %7230
  %7233 = fmul fast float %7228, %7231
  %7234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7235 = extractvalue %dx.types.CBufRet.i32 %7234, 3
  %7236 = icmp eq i32 %7235, 0
  br i1 %7236, label %7242, label %7237

; <label>:7237                                    ; preds = %7197
  %7238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7232, float %7233, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7239 = extractvalue %dx.types.ResRet.f32 %7238, 0
  %7240 = extractvalue %dx.types.ResRet.f32 %7238, 1
  %7241 = extractvalue %dx.types.ResRet.f32 %7238, 2
  br label %7247

; <label>:7242                                    ; preds = %7197
  %7243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %7232, float %7233, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7244 = extractvalue %dx.types.ResRet.f32 %7243, 0
  %7245 = extractvalue %dx.types.ResRet.f32 %7243, 1
  %7246 = extractvalue %dx.types.ResRet.f32 %7243, 2
  br label %7247

; <label>:7247                                    ; preds = %7242, %7237
  %7248 = phi float [ %7239, %7237 ], [ %7244, %7242 ]
  %7249 = phi float [ %7240, %7237 ], [ %7245, %7242 ]
  %7250 = phi float [ %7241, %7237 ], [ %7246, %7242 ]
  %7251 = extractvalue %dx.types.CBufRet.f32 %7206, 2
  %7252 = fmul fast float %7251, %7248
  %7253 = extractvalue %dx.types.CBufRet.f32 %7206, 0
  %7254 = fsub fast float %7219, %7253
  %7255 = fsub fast float %7254, %7252
  %7256 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7255)  ; FMax(a,b)
  %7257 = fmul fast float %7256, %7249
  %7258 = call float @dx.op.binary.f32(i32 36, float %7250, float %7257)  ; FMin(a,b)
  %7259 = fmul fast float %7258, 0xBFF7154760000000
  %7260 = call float @dx.op.unary.f32(i32 21, float %7259)  ; Exp(value)
  %7261 = fmul fast float %7199, %7260
  br label %7262

; <label>:7262                                    ; preds = %7247, %7092
  %7263 = phi float [ %7261, %7247 ], [ %7093, %7092 ]
  %7264 = call float @dx.op.binary.f32(i32 36, float %7263, float %7263)  ; FMin(a,b)
  %7265 = call float @dx.op.binary.f32(i32 36, float %7263, float %7264)  ; FMin(a,b)
  %7266 = fcmp fast ogt float %7265, 0.000000e+00
  br i1 %7266, label %7267, label %7514, !dx.controlflow.hints !134

; <label>:7267                                    ; preds = %7262
  %7268 = fmul fast float %7263, %5823
  %7269 = fmul fast float %7263, %5824
  %7270 = fmul fast float %7263, %5825
  %7271 = fsub fast float %205, %4290
  %7272 = fcmp fast ogt float %7271, 0.000000e+00
  %7273 = fmul fast float %5812, 5.120000e+02
  %7274 = fmul fast float %5813, 5.120000e+02
  %7275 = fmul fast float %5814, 5.120000e+02
  %7276 = fadd fast float %7275, %205
  %7277 = fsub fast float %4290, %7276
  %7278 = fmul fast float %7277, 2.000000e+00
  %7279 = fadd fast float %7278, %7276
  %7280 = select i1 %7272, float %7279, float %7276
  %7281 = fsub fast float %7280, %205
  %7282 = call float @dx.op.dot3.f32(i32 55, float %7273, float %7274, float %7281, float %7273, float %7274, float %7281)  ; Dot3(ax,ay,az,bx,by,bz)
  %7283 = call float @dx.op.unary.f32(i32 25, float %7282)  ; Rsqrt(value)
  %7284 = fmul fast float %7283, %7273
  %7285 = fmul fast float %7283, %7274
  %7286 = fmul fast float %7283, %7281
  %7287 = fsub fast float %4290, %205
  %7288 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7287)  ; Dot3(ax,ay,az,bx,by,bz)
  %7289 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7284, float %7285, float %7286)  ; Dot3(ax,ay,az,bx,by,bz)
  %7290 = fdiv fast float 1.000000e+00, %7289
  %7291 = fmul fast float %7290, %7288
  %7292 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7271, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7293 = fcmp fast ogt float %7292, 0.000000e+00
  %7294 = fcmp fast olt float %7292, 0.000000e+00
  %7295 = zext i1 %7293 to i32
  %7296 = zext i1 %7294 to i32
  %7297 = sub nsw i32 %7295, %7296
  %7298 = sitofp i32 %7297 to float
  %7299 = fsub fast float %7280, %4290
  %7300 = call float @dx.op.dot3.f32(i32 55, float %7273, float %7274, float %7299, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7301 = fcmp fast ogt float %7300, 0.000000e+00
  %7302 = fcmp fast olt float %7300, 0.000000e+00
  %7303 = zext i1 %7301 to i32
  %7304 = zext i1 %7302 to i32
  %7305 = sub nsw i32 %7303, %7304
  %7306 = sitofp i32 %7305 to float
  %7307 = fcmp fast une float %7298, %7306
  br i1 %7307, label %7308, label %7318

; <label>:7308                                    ; preds = %7267
  %7309 = fmul fast float %7291, %7286
  %7310 = fmul fast float %7291, %7285
  %7311 = fmul fast float %7291, %7284
  %7312 = fmul fast float %7311, %7311
  %7313 = fmul fast float %7310, %7310
  %7314 = fadd fast float %7312, %7313
  %7315 = fmul fast float %7309, %7309
  %7316 = fadd fast float %7314, %7315
  %7317 = call float @dx.op.unary.f32(i32 24, float %7316)  ; Sqrt(value)
  br label %7328

; <label>:7318                                    ; preds = %7267
  %7319 = icmp slt i32 %7297, 0
  br i1 %7319, label %7320, label %7328

; <label>:7320                                    ; preds = %7318
  %7321 = fsub fast float %205, %7280
  %7322 = fmul fast float %7273, %7273
  %7323 = fmul fast float %7274, %7274
  %7324 = fadd fast float %7322, %7323
  %7325 = fmul fast float %7321, %7321
  %7326 = fadd fast float %7324, %7325
  %7327 = call float @dx.op.unary.f32(i32 24, float %7326)  ; Sqrt(value)
  br label %7328

; <label>:7328                                    ; preds = %7320, %7318, %7308
  %7329 = phi float [ %7317, %7308 ], [ %7327, %7320 ], [ 0.000000e+00, %7318 ]
  %7330 = fsub fast float -0.000000e+00, %7329
  %7331 = select i1 %7272, float -0.000000e+00, float %7330
  %7332 = fmul fast float %4287, 0x3FF7154760000000
  %7333 = fmul fast float %7332, %7331
  %7334 = fmul fast float %4288, 0x3FF7154760000000
  %7335 = fmul fast float %7334, %7331
  %7336 = fmul fast float %4289, 0x3FF7154760000000
  %7337 = fmul fast float %7336, %7331
  %7338 = call float @dx.op.unary.f32(i32 21, float %7333)  ; Exp(value)
  %7339 = call float @dx.op.unary.f32(i32 21, float %7335)  ; Exp(value)
  %7340 = call float @dx.op.unary.f32(i32 21, float %7337)  ; Exp(value)
  %7341 = call float @dx.op.unary.f32(i32 7, float %7338)  ; Saturate(value)
  %7342 = call float @dx.op.unary.f32(i32 7, float %7339)  ; Saturate(value)
  %7343 = call float @dx.op.unary.f32(i32 7, float %7340)  ; Saturate(value)
  %7344 = fmul fast float %7268, %7341
  %7345 = fmul fast float %7269, %7342
  %7346 = fmul fast float %7270, %7343
  %7347 = fsub fast float %5812, %5079
  %7348 = fsub fast float %5813, %5078
  %7349 = fsub fast float %5814, %5077
  %7350 = call float @dx.op.dot3.f32(i32 55, float %7347, float %7348, float %7349, float %7347, float %7348, float %7349)  ; Dot3(ax,ay,az,bx,by,bz)
  %7351 = call float @dx.op.unary.f32(i32 25, float %7350)  ; Rsqrt(value)
  %7352 = fmul fast float %7351, %7347
  %7353 = fmul fast float %7351, %7348
  %7354 = fmul fast float %7351, %7349
  %7355 = call float @dx.op.dot3.f32(i32 55, float %5812, float %5813, float %5814, float %5086, float %5087, float %5088)  ; Dot3(ax,ay,az,bx,by,bz)
  %7356 = call float @dx.op.dot3.f32(i32 55, float %5076, float %5075, float %5074, float %7352, float %7353, float %7354)  ; Dot3(ax,ay,az,bx,by,bz)
  %7357 = call float @dx.op.unary.f32(i32 7, float %7355)  ; Saturate(value)
  %7358 = fmul fast float %7357, %7357
  %7359 = fmul fast float %7358, %5119
  %7360 = call float @dx.op.unary.f32(i32 7, float %7359)  ; Saturate(value)
  %7361 = fmul fast float %7360, %7357
  %7362 = call float @dx.op.dot3.f32(i32 55, float %5086, float %5087, float %5088, float %7352, float %7353, float %7354)  ; Dot3(ax,ay,az,bx,by,bz)
  %7363 = fmul fast float %7362, %7362
  %7364 = call float @dx.op.unary.f32(i32 6, float %7355)  ; FAbs(value)
  %7365 = fsub fast float 1.000000e+00, %5112
  %7366 = fmul fast float %5094, %5094
  %7367 = fmul fast float %7366, %7365
  %7368 = fadd fast float %7367, %5112
  %7369 = bitcast float %7368 to i32
  %7370 = ashr i32 %7369, 1
  %7371 = add nsw i32 %7370, 532487669
  %7372 = bitcast i32 %7371 to float
  %7373 = fadd fast float %7372, %5094
  %7374 = fmul fast float %5112, %7363
  %7375 = fsub fast float 1.000000e+00, %7363
  %7376 = fadd fast float %7375, %7374
  %7377 = fmul fast float %7364, %7364
  %7378 = fmul fast float %7377, %7365
  %7379 = fadd fast float %7378, %5112
  %7380 = bitcast float %7379 to i32
  %7381 = ashr i32 %7380, 1
  %7382 = add nsw i32 %7381, 532487669
  %7383 = bitcast i32 %7382 to float
  %7384 = fadd fast float %7383, %7364
  %7385 = fmul fast float %7376, %7376
  %7386 = fmul fast float %7385, %7373
  %7387 = fmul fast float %7386, %7384
  %7388 = fdiv fast float 0x3FF0A00000000000, %7387
  %7389 = fmul fast float %7388, %5112
  %7390 = call float @dx.op.unary.f32(i32 6, float %7356)  ; FAbs(value)
  %7391 = fsub fast float 1.000000e+00, %7390
  %7392 = bitcast float %7391 to i32
  %7393 = sitofp i32 %7392 to float
  %7394 = fmul fast float %7393, 5.000000e+00
  %7395 = fadd fast float %7394, 0xC1EFBF8940000000
  %7396 = fptosi float %7395 to i32
  %7397 = bitcast i32 %7396 to float
  %7398 = fsub fast float 1.000000e+00, %5083
  %7399 = fsub fast float 1.000000e+00, %5084
  %7400 = fsub fast float 1.000000e+00, %5092
  %7401 = fmul fast float %7397, %7398
  %7402 = fmul fast float %7397, %7399
  %7403 = fmul fast float %7397, %7400
  %7404 = fadd fast float %7401, %5083
  %7405 = fadd fast float %7402, %5084
  %7406 = fadd fast float %7403, %5092
  br i1 %5231, label %7407, label %7430

; <label>:7407                                    ; preds = %7328
  %7408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3885, float %7390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7409 = extractvalue %dx.types.ResRet.f32 %7408, 0
  %7410 = extractvalue %dx.types.ResRet.f32 %7408, 1
  %7411 = extractvalue %dx.types.ResRet.f32 %7408, 2
  %7412 = fadd fast float %7409, -5.000000e-01
  %7413 = fadd fast float %7410, -5.000000e-01
  %7414 = fadd fast float %7411, -5.000000e-01
  %7415 = fmul fast float %5083, 4.000000e+00
  %7416 = fmul fast float %7415, %7398
  %7417 = fmul fast float %7416, %7412
  %7418 = fmul fast float %5084, 4.000000e+00
  %7419 = fmul fast float %7418, %7399
  %7420 = fmul fast float %7419, %7413
  %7421 = fmul fast float %5092, 4.000000e+00
  %7422 = fmul fast float %7421, %7400
  %7423 = fmul fast float %7422, %7414
  %7424 = fadd fast float %7417, %7404
  %7425 = fadd fast float %7420, %7405
  %7426 = fadd fast float %7423, %7406
  %7427 = call float @dx.op.unary.f32(i32 7, float %7424)  ; Saturate(value)
  %7428 = call float @dx.op.unary.f32(i32 7, float %7425)  ; Saturate(value)
  %7429 = call float @dx.op.unary.f32(i32 7, float %7426)  ; Saturate(value)
  br label %7430

; <label>:7430                                    ; preds = %7407, %7328
  %7431 = phi float [ %7427, %7407 ], [ %7404, %7328 ]
  %7432 = phi float [ %7428, %7407 ], [ %7405, %7328 ]
  %7433 = phi float [ %7429, %7407 ], [ %7406, %7328 ]
  %7434 = fmul fast float %7355, 9.843750e-01
  %7435 = fadd fast float %7434, 7.812500e-03
  %7436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %7435, float %5221, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7437 = extractvalue %dx.types.ResRet.f32 %7436, 2
  %7438 = extractvalue %dx.types.ResRet.f32 %7436, 3
  %7439 = fmul fast float %7437, %5083
  %7440 = fmul fast float %7437, %5084
  %7441 = fmul fast float %7437, %5092
  %7442 = fadd fast float %7439, %7438
  %7443 = fadd fast float %7440, %7438
  %7444 = fadd fast float %7441, %7438
  br i1 %5231, label %7445, label %7468

; <label>:7445                                    ; preds = %7430
  %7446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3885, float %7355, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7447 = extractvalue %dx.types.ResRet.f32 %7446, 0
  %7448 = extractvalue %dx.types.ResRet.f32 %7446, 1
  %7449 = extractvalue %dx.types.ResRet.f32 %7446, 2
  %7450 = fadd fast float %7447, -5.000000e-01
  %7451 = fadd fast float %7448, -5.000000e-01
  %7452 = fadd fast float %7449, -5.000000e-01
  %7453 = fmul fast float %5083, 4.000000e+00
  %7454 = fmul fast float %7453, %7398
  %7455 = fmul fast float %7454, %7450
  %7456 = fmul fast float %5084, 4.000000e+00
  %7457 = fmul fast float %7456, %7399
  %7458 = fmul fast float %7457, %7451
  %7459 = fmul fast float %5092, 4.000000e+00
  %7460 = fmul fast float %7459, %7400
  %7461 = fmul fast float %7460, %7452
  %7462 = fadd fast float %7455, %7442
  %7463 = fadd fast float %7458, %7443
  %7464 = fadd fast float %7461, %7444
  %7465 = call float @dx.op.unary.f32(i32 7, float %7462)  ; Saturate(value)
  %7466 = call float @dx.op.unary.f32(i32 7, float %7463)  ; Saturate(value)
  %7467 = call float @dx.op.unary.f32(i32 7, float %7464)  ; Saturate(value)
  br label %7468

; <label>:7468                                    ; preds = %7445, %7430
  %7469 = phi float [ %7465, %7445 ], [ %7442, %7430 ]
  %7470 = phi float [ %7466, %7445 ], [ %7443, %7430 ]
  %7471 = phi float [ %7467, %7445 ], [ %7444, %7430 ]
  %7472 = call float @dx.op.binary.f32(i32 35, float %7470, float %7471)  ; FMax(a,b)
  %7473 = call float @dx.op.binary.f32(i32 35, float %7469, float %7472)  ; FMax(a,b)
  %7474 = fsub fast float 1.000000e+00, %7473
  %7475 = fmul fast float %7431, %7389
  %7476 = fmul fast float %7432, %7389
  %7477 = fmul fast float %7433, %7389
  %7478 = fsub fast float 1.000000e+00, %7356
  %7479 = bitcast float %7478 to i32
  %7480 = sitofp i32 %7479 to float
  %7481 = fmul fast float %7480, 5.000000e+00
  %7482 = fadd fast float %7481, 0xC1EFBF8940000000
  %7483 = fptosi float %7482 to i32
  %7484 = bitcast i32 %7483 to float
  %7485 = fmul fast float %7484, %3886
  %7486 = fmul fast float %7474, %7485
  %7487 = fmul fast float %7486, %5773
  %7488 = fmul fast float %7486, %5774
  %7489 = fmul fast float %7486, %5775
  %7490 = fadd fast float %7487, %7475
  %7491 = fadd fast float %7488, %7476
  %7492 = fadd fast float %7489, %7477
  %7493 = fmul fast float %7361, %7344
  %7494 = fmul fast float %7493, %7474
  %7495 = fmul fast float %7361, %7345
  %7496 = fmul fast float %7495, %7474
  %7497 = fmul fast float %7361, %7346
  %7498 = fmul fast float %7497, %7474
  %7499 = fmul fast float %7493, %7490
  %7500 = fmul fast float %7495, %7491
  %7501 = fmul fast float %7497, %7492
  %7502 = fadd fast float %7494, %5757
  %7503 = fmul fast float %7502, %3882
  %7504 = fadd fast float %7496, %5758
  %7505 = fmul fast float %7504, %3882
  %7506 = fadd fast float %7498, %5759
  %7507 = fmul fast float %7506, %3882
  %7508 = fadd fast float %7499, %5800
  %7509 = fmul fast float %7508, %3882
  %7510 = fadd fast float %7500, %5803
  %7511 = fmul fast float %7510, %3882
  %7512 = fadd fast float %7501, %5806
  %7513 = fmul fast float %7512, %3882
  br label %7514

; <label>:7514                                    ; preds = %7468, %7262, %5753
  %7515 = phi float [ %5801, %5753 ], [ %5801, %7262 ], [ %7509, %7468 ]
  %7516 = phi float [ %5804, %5753 ], [ %5804, %7262 ], [ %7511, %7468 ]
  %7517 = phi float [ %5807, %5753 ], [ %5807, %7262 ], [ %7513, %7468 ]
  %7518 = phi float [ %5796, %5753 ], [ %5796, %7262 ], [ %7503, %7468 ]
  %7519 = phi float [ %5797, %5753 ], [ %5797, %7262 ], [ %7505, %7468 ]
  %7520 = phi float [ %5798, %5753 ], [ %5798, %7262 ], [ %7507, %7468 ]
  %7521 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7522 = extractvalue %dx.types.CBufRet.i32 %7521, 0
  %7523 = icmp eq i32 %7522, 0
  br i1 %7523, label %8186, label %7524

; <label>:7524                                    ; preds = %7514
  %7525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7526 = extractvalue %dx.types.CBufRet.f32 %7525, 2
  %7527 = extractvalue %dx.types.CBufRet.f32 %7525, 3
  %7528 = fmul fast float %7526, %116
  %7529 = fmul fast float %7527, %117
  %7530 = fptoui float %7528 to i32
  %7531 = fptoui float %7529 to i32
  %7532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7533 = extractvalue %dx.types.CBufRet.f32 %7532, 0
  %7534 = extractvalue %dx.types.CBufRet.f32 %7532, 2
  %7535 = extractvalue %dx.types.CBufRet.f32 %7532, 3
  %7536 = fadd fast float %103, -4.000000e+00
  %7537 = call float @dx.op.binary.f32(i32 35, float %7536, float 0.000000e+00)  ; FMax(a,b)
  %7538 = fadd fast float %7537, %7533
  %7539 = fmul fast float %7538, %7534
  %7540 = call float @dx.op.unary.f32(i32 23, float %7539)  ; Log(value)
  %7541 = fmul fast float %7540, %7535
  %7542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7543 = extractvalue %dx.types.CBufRet.f32 %7542, 2
  %7544 = fmul fast float %7541, %7543
  %7545 = call float @dx.op.unary.f32(i32 7, float %7544)  ; Saturate(value)
  %7546 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7547 = extractvalue %dx.types.CBufRet.i32 %7546, 1
  %7548 = add i32 %7547, -1
  %7549 = uitofp i32 %7547 to float
  %7550 = fmul fast float %7549, %7545
  %7551 = fptoui float %7550 to i32
  %7552 = call i32 @dx.op.binary.i32(i32 40, i32 %7551, i32 %7548)  ; UMin(a,b)
  %7553 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7554 = extractvalue %dx.types.CBufRet.i32 %7553, 2
  %7555 = extractvalue %dx.types.CBufRet.i32 %7553, 3
  %7556 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7531, i32 %7554, i32 %7530)  ; UMad(a,b,c)
  %7557 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7552, i32 %7555, i32 %7556)  ; UMad(a,b,c)
  %7558 = add nsw i32 %7522, -1
  %7559 = call i32 @dx.op.binary.i32(i32 37, i32 %7558, i32 0)  ; IMax(a,b)
  %7560 = call float @dx.op.binary.f32(i32 35, float %103, float 0.000000e+00)  ; FMax(a,b)
  %7561 = fptoui float %7560 to i32
  %7562 = lshr i32 %7561, 5
  %7563 = call i32 @dx.op.binary.i32(i32 40, i32 %7562, i32 8191)  ; UMin(a,b)
  %7564 = shl i32 %7563, 2
  %7565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7564, i32 undef)  ; BufferLoad(srv,index,wot)
  %7566 = extractvalue %dx.types.ResRet.i32 %7565, 0
  %7567 = lshr i32 %7566, 16
  %7568 = and i32 %7566, 65535
  %7569 = lshr i32 %7566, 21
  %7570 = lshr i32 %7568, 5
  %7571 = call i32 @dx.op.binary.i32(i32 40, i32 %7570, i32 %7559)  ; UMin(a,b)
  %7572 = icmp ugt i32 %7569, %7571
  br i1 %7572, label %8186, label %7573

; <label>:7573                                    ; preds = %7524
  br label %7574

; <label>:7574                                    ; preds = %8176, %7573
  %7575 = phi i32 [ %8183, %8176 ], [ %7569, %7573 ]
  %7576 = phi float [ %8177, %8176 ], [ %7515, %7573 ]
  %7577 = phi float [ %8178, %8176 ], [ %7516, %7573 ]
  %7578 = phi float [ %8179, %8176 ], [ %7517, %7573 ]
  %7579 = phi float [ %8180, %8176 ], [ %7518, %7573 ]
  %7580 = phi float [ %8181, %8176 ], [ %7519, %7573 ]
  %7581 = phi float [ %8182, %8176 ], [ %7520, %7573 ]
  %7582 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7583 = extractvalue %dx.types.CBufRet.i32 %7582, 0
  %7584 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7557, i32 %7583, i32 %7575)  ; UMad(a,b,c)
  %7585 = shl i32 %7584, 2
  %7586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7585, i32 undef)  ; BufferLoad(srv,index,wot)
  %7587 = extractvalue %dx.types.ResRet.i32 %7586, 0
  %7588 = shl i32 %7575, 5
  %7589 = sub nsw i32 %7567, %7588
  %7590 = call i32 @dx.op.binary.i32(i32 37, i32 %7589, i32 0)  ; IMax(a,b)
  %7591 = call i32 @dx.op.binary.i32(i32 38, i32 %7590, i32 31)  ; IMin(a,b)
  %7592 = sub nsw i32 1, %7567
  %7593 = add nsw i32 %7592, %7568
  %7594 = call i32 @dx.op.binary.i32(i32 37, i32 %7593, i32 0)  ; IMax(a,b)
  %7595 = call i32 @dx.op.binary.i32(i32 38, i32 %7594, i32 32)  ; IMin(a,b)
  %7596 = and i32 %7595, 31
  %7597 = shl i32 -1, %7596
  %7598 = xor i32 %7597, -1
  %7599 = and i32 %7591, 31
  %7600 = shl i32 %7598, %7599
  %7601 = icmp eq i32 %7595, 32
  %7602 = select i1 %7601, i32 -1, i32 %7600
  %7603 = and i32 %7602, %7587
  %7604 = icmp eq i32 %7603, 0
  br i1 %7604, label %8176, label %7605

; <label>:7605                                    ; preds = %7574
  br label %7606

; <label>:7606                                    ; preds = %7740, %7605
  %7607 = phi i32 [ %7618, %7740 ], [ %7603, %7605 ]
  %7608 = phi float [ %7741, %7740 ], [ %7576, %7605 ]
  %7609 = phi float [ %7742, %7740 ], [ %7577, %7605 ]
  %7610 = phi float [ %7743, %7740 ], [ %7578, %7605 ]
  %7611 = phi float [ %7744, %7740 ], [ %7579, %7605 ]
  %7612 = phi float [ %7745, %7740 ], [ %7580, %7605 ]
  %7613 = phi float [ %7746, %7740 ], [ %7581, %7605 ]
  %7614 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7607)  ; FirstbitLo(value)
  %7615 = add i32 %7614, %7588
  %7616 = and i32 %7614, 31
  %7617 = shl i32 1, %7616
  %7618 = xor i32 %7617, %7607
  %7619 = mul i32 %7615, 112
  %7620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7619, i32 undef)  ; BufferLoad(srv,index,wot)
  %7621 = extractvalue %dx.types.ResRet.f32 %7620, 0
  %7622 = extractvalue %dx.types.ResRet.f32 %7620, 1
  %7623 = extractvalue %dx.types.ResRet.f32 %7620, 2
  %7624 = or i32 %7619, 12
  %7625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7624, i32 undef)  ; BufferLoad(srv,index,wot)
  %7626 = extractvalue %dx.types.ResRet.f32 %7625, 0
  %7627 = add i32 %7619, 16
  %7628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7627, i32 undef)  ; BufferLoad(srv,index,wot)
  %7629 = extractvalue %dx.types.ResRet.f32 %7628, 0
  %7630 = extractvalue %dx.types.ResRet.f32 %7628, 1
  %7631 = extractvalue %dx.types.ResRet.f32 %7628, 2
  %7632 = add i32 %7619, 28
  %7633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7632, i32 undef)  ; BufferLoad(srv,index,wot)
  %7634 = extractvalue %dx.types.ResRet.i32 %7633, 0
  %7635 = add i32 %7619, 44
  %7636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7635, i32 undef)  ; BufferLoad(srv,index,wot)
  %7637 = extractvalue %dx.types.ResRet.f32 %7636, 0
  %7638 = add i32 %7619, 48
  %7639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7638, i32 undef)  ; BufferLoad(srv,index,wot)
  %7640 = extractvalue %dx.types.ResRet.f32 %7639, 0
  %7641 = extractvalue %dx.types.ResRet.f32 %7639, 1
  %7642 = extractvalue %dx.types.ResRet.f32 %7639, 2
  %7643 = extractvalue %dx.types.ResRet.f32 %7639, 3
  %7644 = add i32 %7619, 64
  %7645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7644, i32 undef)  ; BufferLoad(srv,index,wot)
  %7646 = extractvalue %dx.types.ResRet.f32 %7645, 0
  %7647 = extractvalue %dx.types.ResRet.f32 %7645, 1
  %7648 = extractvalue %dx.types.ResRet.f32 %7645, 2
  %7649 = extractvalue %dx.types.ResRet.f32 %7645, 3
  %7650 = add i32 %7619, 80
  %7651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7650, i32 undef)  ; BufferLoad(srv,index,wot)
  %7652 = extractvalue %dx.types.ResRet.f32 %7651, 1
  %7653 = extractvalue %dx.types.ResRet.f32 %7651, 2
  %7654 = add i32 %7619, 92
  %7655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7654, i32 undef)  ; BufferLoad(srv,index,wot)
  %7656 = extractvalue %dx.types.ResRet.i32 %7655, 0
  %7657 = call float @dx.op.dot3.f32(i32 55, float %7621, float %7622, float %7623, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7658 = select i1 %273, float %7652, float %7621
  %7659 = select i1 %273, float %7657, float %7622
  %7660 = select i1 %273, float %7653, float %7623
  %7661 = and i32 %7656, 65535
  %7662 = uitofp i32 %7661 to float
  %7663 = lshr i32 %7656, 16
  %7664 = uitofp i32 %7663 to float
  %7665 = and i32 %7634, 65535
  %7666 = and i32 %7634, 50331648
  %7667 = icmp eq i32 %7666, 33554432
  %7668 = fsub fast float %7640, %203
  %7669 = fsub fast float %7641, %204
  %7670 = fsub fast float %7642, %205
  %7671 = call float @dx.op.dot3.f32(i32 55, float %7668, float %7669, float %7670, float %7668, float %7669, float %7670)  ; Dot3(ax,ay,az,bx,by,bz)
  %7672 = call float @dx.op.unary.f32(i32 24, float %7671)  ; Sqrt(value)
  %7673 = fdiv fast float 1.000000e+00, %7672
  %7674 = fmul fast float %7673, %7668
  %7675 = fmul fast float %7673, %7669
  %7676 = fmul fast float %7673, %7670
  %7677 = fadd fast float %7672, %7626
  %7678 = fdiv fast float 1.000000e+00, %7677
  %7679 = fmul float %7637, %7678
  %7680 = fmul float %7679, %7679
  %7681 = call float @dx.op.unary.f32(i32 7, float %7680)  ; Saturate(value)
  br i1 %7667, label %7682, label %7703

; <label>:7682                                    ; preds = %7606
  %7683 = fmul fast float %7648, %7629
  %7684 = fmul fast float %7648, %7630
  %7685 = fmul fast float %7648, %7631
  %7686 = fadd fast float %7668, %7683
  %7687 = fadd fast float %7669, %7684
  %7688 = fadd fast float %7670, %7685
  %7689 = call float @dx.op.dot3.f32(i32 55, float %7686, float %7687, float %7688, float %7686, float %7687, float %7688)  ; Dot3(ax,ay,az,bx,by,bz)
  %7690 = call float @dx.op.unary.f32(i32 25, float %7689)  ; Rsqrt(value)
  %7691 = fmul fast float %7690, %7686
  %7692 = fmul fast float %7690, %7687
  %7693 = fmul fast float %7690, %7688
  %7694 = fsub fast float %203, %7640
  %7695 = fsub fast float %204, %7641
  %7696 = fsub fast float %205, %7642
  %7697 = fsub fast float -0.000000e+00, %7694
  %7698 = fsub fast float -0.000000e+00, %7695
  %7699 = fsub fast float -0.000000e+00, %7696
  %7700 = call float @dx.op.dot3.f32(i32 55, float %7697, float %7698, float %7699, float %7629, float %7630, float %7631)  ; Dot3(ax,ay,az,bx,by,bz)
  %7701 = fcmp fast ogt float %7700, 0.000000e+00
  %7702 = uitofp i1 %7701 to float
  br label %7703

; <label>:7703                                    ; preds = %7682, %7606
  %7704 = phi float [ %7702, %7682 ], [ 1.000000e+00, %7606 ]
  %7705 = phi float [ %7691, %7682 ], [ %7674, %7606 ]
  %7706 = phi float [ %7692, %7682 ], [ %7675, %7606 ]
  %7707 = phi float [ %7693, %7682 ], [ %7676, %7606 ]
  %7708 = call float @dx.op.dot3.f32(i32 55, float %7629, float %7630, float %7631, float %7705, float %7706, float %7707)  ; Dot3(ax,ay,az,bx,by,bz)
  %7709 = fmul fast float %7708, %7708
  %7710 = call float @dx.op.unary.f32(i32 7, float %7709)  ; Saturate(value)
  %7711 = fsub fast float 1.000000e+00, %7710
  %7712 = fmul fast float %7711, 5.000000e-01
  %7713 = fcmp fast ogt float %7708, 0.000000e+00
  %7714 = fsub fast float 1.000000e+00, %7712
  %7715 = select i1 %7713, float %7712, float %7714
  %7716 = fmul fast float %7715, %7664
  %7717 = fadd fast float %7716, %7662
  %7718 = fmul fast float %7717, 0x3EF0001000000000
  %7719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %55, float %7718, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7720 = extractvalue %dx.types.ResRet.f32 %7719, 0
  %7721 = fmul fast float %7708, %7646
  %7722 = fadd fast float %7721, %7647
  %7723 = call float @dx.op.unary.f32(i32 7, float %7722)  ; Saturate(value)
  %7724 = select i1 %7667, float 1.000000e+00, float %7723
  %7725 = select i1 %7667, float %7723, float 1.000000e+00
  %7726 = fmul fast float %7672, %7643
  %7727 = fsub fast float 1.000000e+00, %7726
  %7728 = fmul fast float %7727, %7649
  %7729 = call float @dx.op.unary.f32(i32 7, float %7728)  ; Saturate(value)
  %7730 = fmul fast float %7729, %7725
  %7731 = fmul fast float %7730, 2.000000e+00
  %7732 = fsub fast float 3.000000e+00, %7731
  %7733 = fmul fast float %7720, %7704
  %7734 = fmul fast float %7730, %7730
  %7735 = fmul fast float %7734, %7733
  %7736 = fmul fast float %7735, %7732
  %7737 = call float @dx.op.binary.f32(i32 36, float %7736, float %7736)  ; FMin(a,b)
  %7738 = call float @dx.op.binary.f32(i32 36, float %7736, float %7737)  ; FMin(a,b)
  %7739 = fcmp fast ogt float %7738, 0.000000e+00
  br i1 %7739, label %7748, label %7740, !dx.controlflow.hints !135

; <label>:7740                                    ; preds = %8132, %7894, %7703
  %7741 = phi float [ %7608, %7894 ], [ %7608, %7703 ], [ %8172, %8132 ]
  %7742 = phi float [ %7609, %7894 ], [ %7609, %7703 ], [ %8173, %8132 ]
  %7743 = phi float [ %7610, %7894 ], [ %7610, %7703 ], [ %8174, %8132 ]
  %7744 = phi float [ %7611, %7894 ], [ %7611, %7703 ], [ %8166, %8132 ]
  %7745 = phi float [ %7612, %7894 ], [ %7612, %7703 ], [ %8167, %8132 ]
  %7746 = phi float [ %7613, %7894 ], [ %7613, %7703 ], [ %8168, %8132 ]
  %7747 = icmp eq i32 %7607, %7617
  br i1 %7747, label %8175, label %7606

; <label>:7748                                    ; preds = %7703
  %7749 = icmp eq i32 %7665, 255
  br i1 %7749, label %7894, label %7750, !dx.controlflow.hints !136

; <label>:7750                                    ; preds = %7748
  %7751 = mul nuw nsw i32 %7665, 176
  %7752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7751, i32 undef)  ; BufferLoad(srv,index,wot)
  %7753 = extractvalue %dx.types.ResRet.f32 %7752, 0
  %7754 = extractvalue %dx.types.ResRet.f32 %7752, 1
  %7755 = extractvalue %dx.types.ResRet.f32 %7752, 2
  %7756 = extractvalue %dx.types.ResRet.f32 %7752, 3
  %7757 = add nuw nsw i32 %7751, 16
  %7758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7757, i32 undef)  ; BufferLoad(srv,index,wot)
  %7759 = extractvalue %dx.types.ResRet.f32 %7758, 0
  %7760 = extractvalue %dx.types.ResRet.f32 %7758, 1
  %7761 = add nuw nsw i32 %7751, 32
  %7762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7761, i32 undef)  ; BufferLoad(srv,index,wot)
  %7763 = extractvalue %dx.types.ResRet.f32 %7762, 0
  %7764 = extractvalue %dx.types.ResRet.f32 %7762, 1
  %7765 = extractvalue %dx.types.ResRet.f32 %7762, 2
  %7766 = add nuw nsw i32 %7751, 48
  %7767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7766, i32 undef)  ; BufferLoad(srv,index,wot)
  %7768 = extractvalue %dx.types.ResRet.f32 %7767, 0
  %7769 = extractvalue %dx.types.ResRet.f32 %7767, 1
  %7770 = extractvalue %dx.types.ResRet.f32 %7767, 2
  %7771 = extractvalue %dx.types.ResRet.f32 %7767, 3
  %7772 = add nuw nsw i32 %7751, 64
  %7773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7772, i32 undef)  ; BufferLoad(srv,index,wot)
  %7774 = extractvalue %dx.types.ResRet.f32 %7773, 0
  %7775 = extractvalue %dx.types.ResRet.f32 %7773, 1
  %7776 = extractvalue %dx.types.ResRet.f32 %7773, 2
  %7777 = extractvalue %dx.types.ResRet.f32 %7773, 3
  %7778 = add nuw nsw i32 %7751, 80
  %7779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7778, i32 undef)  ; BufferLoad(srv,index,wot)
  %7780 = extractvalue %dx.types.ResRet.f32 %7779, 0
  %7781 = extractvalue %dx.types.ResRet.f32 %7779, 1
  %7782 = extractvalue %dx.types.ResRet.f32 %7779, 2
  %7783 = extractvalue %dx.types.ResRet.f32 %7779, 3
  %7784 = add nuw nsw i32 %7751, 96
  %7785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7784, i32 undef)  ; BufferLoad(srv,index,wot)
  %7786 = extractvalue %dx.types.ResRet.f32 %7785, 0
  %7787 = extractvalue %dx.types.ResRet.f32 %7785, 1
  %7788 = extractvalue %dx.types.ResRet.f32 %7785, 2
  %7789 = extractvalue %dx.types.ResRet.f32 %7785, 3
  %7790 = bitcast float %7760 to i32
  %7791 = fmul fast float %7765, %123
  %7792 = fmul fast float %7765, %124
  %7793 = fmul fast float %7765, %125
  %7794 = fadd fast float %7791, %203
  %7795 = fadd fast float %7792, %204
  %7796 = fadd fast float %7793, %205
  %7797 = fmul fast float %7794, %7768
  %7798 = call float @dx.op.tertiary.f32(i32 46, float %7795, float %7774, float %7797)  ; FMad(a,b,c)
  %7799 = call float @dx.op.tertiary.f32(i32 46, float %7796, float %7780, float %7798)  ; FMad(a,b,c)
  %7800 = fadd fast float %7799, %7786
  %7801 = fmul fast float %7794, %7769
  %7802 = call float @dx.op.tertiary.f32(i32 46, float %7795, float %7775, float %7801)  ; FMad(a,b,c)
  %7803 = call float @dx.op.tertiary.f32(i32 46, float %7796, float %7781, float %7802)  ; FMad(a,b,c)
  %7804 = fadd fast float %7803, %7787
  %7805 = fmul fast float %7794, %7770
  %7806 = call float @dx.op.tertiary.f32(i32 46, float %7795, float %7776, float %7805)  ; FMad(a,b,c)
  %7807 = call float @dx.op.tertiary.f32(i32 46, float %7796, float %7782, float %7806)  ; FMad(a,b,c)
  %7808 = fadd fast float %7807, %7788
  %7809 = fmul fast float %7794, %7771
  %7810 = call float @dx.op.tertiary.f32(i32 46, float %7795, float %7777, float %7809)  ; FMad(a,b,c)
  %7811 = call float @dx.op.tertiary.f32(i32 46, float %7796, float %7783, float %7810)  ; FMad(a,b,c)
  %7812 = fadd fast float %7811, %7789
  %7813 = fdiv fast float %7800, %7812
  %7814 = fdiv fast float %7804, %7812
  %7815 = fdiv fast float %7808, %7812
  %7816 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7815)  ; FMax(a,b)
  %7817 = fmul fast float %284, 0x401921FB60000000
  %7818 = call float @dx.op.unary.f32(i32 13, float %7817)  ; Sin(value)
  %7819 = call float @dx.op.unary.f32(i32 12, float %7817)  ; Cos(value)
  %7820 = fmul fast float %7819, %7764
  %7821 = call float @dx.op.tertiary.f32(i32 46, float %7818, float %7764, float 0.000000e+00)  ; FMad(a,b,c)
  %7822 = fmul fast float %7764, %7818
  %7823 = fsub fast float -0.000000e+00, %7822
  %7824 = call float @dx.op.tertiary.f32(i32 46, float %7819, float %7764, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7825

; <label>:7825                                    ; preds = %7825, %7750
  %7826 = phi float [ 0.000000e+00, %7750 ], [ %7858, %7825 ]
  %7827 = phi float [ 0.000000e+00, %7750 ], [ %7860, %7825 ]
  %7828 = phi i32 [ 0, %7750 ], [ %7861, %7825 ]
  %7829 = mul i32 %7828, 2
  %7830 = add i32 0, %7829
  %7831 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7830
  %7832 = load float, float* %7831, align 4
  %7833 = mul i32 %7828, 2
  %7834 = add i32 1, %7833
  %7835 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7834
  %7836 = load float, float* %7835, align 4
  %7837 = fmul fast float %7820, %7832
  %7838 = call float @dx.op.tertiary.f32(i32 46, float %7836, float %7823, float %7837)  ; FMad(a,b,c)
  %7839 = fmul fast float %7832, %7821
  %7840 = call float @dx.op.tertiary.f32(i32 46, float %7836, float %7824, float %7839)  ; FMad(a,b,c)
  %7841 = fadd fast float %7838, %7813
  %7842 = fadd fast float %7840, %7814
  %7843 = fmul fast float %7841, %7759
  %7844 = fmul fast float %7842, %7759
  %7845 = call float @dx.op.binary.f32(i32 35, float %7843, float %7755)  ; FMax(a,b)
  %7846 = call float @dx.op.binary.f32(i32 35, float %7844, float %7755)  ; FMax(a,b)
  %7847 = call float @dx.op.binary.f32(i32 36, float %7845, float %7756)  ; FMin(a,b)
  %7848 = call float @dx.op.binary.f32(i32 36, float %7846, float %7756)  ; FMin(a,b)
  %7849 = fadd fast float %7847, %7753
  %7850 = fadd fast float %7848, %7754
  %7851 = uitofp i32 %7790 to float
  %7852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %7849, float %7850, float %7851, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7853 = extractvalue %dx.types.ResRet.f32 %7852, 0
  %7854 = fsub fast float %7853, %7816
  %7855 = fsub fast float %7854, %7763
  %7856 = fcmp fast ogt float %7855, 0.000000e+00
  %7857 = select i1 %7856, float 1.000000e+00, float 0.000000e+00
  %7858 = fadd fast float %7857, %7826
  %7859 = select i1 %7856, float %7855, float 0.000000e+00
  %7860 = fadd fast float %7859, %7827
  %7861 = add nuw nsw i32 %7828, 1
  %7862 = icmp eq i32 %7861, 8
  br i1 %7862, label %7863, label %7825

; <label>:7863                                    ; preds = %7825
  %7864 = fdiv fast float 1.000000e+00, %7858
  %7865 = fmul fast float %7864, %7860
  %7866 = fdiv fast float 1.000000e+00, %7816
  %7867 = fmul fast float %7865, %7866
  %7868 = call float @dx.op.unary.f32(i32 7, float %7867)  ; Saturate(value)
  %7869 = call float @dx.op.binary.f32(i32 35, float %7868, float 0.000000e+00)  ; FMax(a,b)
  %7870 = fmul fast float %7858, 1.250000e-01
  %7871 = call float @dx.op.unary.f32(i32 7, float %7870)  ; Saturate(value)
  %7872 = fmul fast float %7871, 2.000000e+00
  %7873 = fadd fast float %7872, -1.000000e+00
  %7874 = fcmp fast ogt float %7873, 0.000000e+00
  %7875 = fcmp fast olt float %7873, 0.000000e+00
  %7876 = zext i1 %7874 to i32
  %7877 = zext i1 %7875 to i32
  %7878 = sub nsw i32 %7876, %7877
  %7879 = sitofp i32 %7878 to float
  %7880 = fmul fast float %7879, %7873
  %7881 = fsub fast float 1.000000e+00, %7880
  %7882 = fmul fast float %7881, %7881
  %7883 = fmul fast float %7882, %7881
  %7884 = fsub fast float %7881, %7883
  %7885 = fmul fast float %7884, %7869
  %7886 = fsub fast float 1.000000e+00, %7883
  %7887 = fsub fast float %7886, %7885
  %7888 = fmul fast float %7879, 5.000000e-01
  %7889 = fmul fast float %7888, %7887
  %7890 = fsub fast float -5.000000e-01, %7889
  %7891 = fmul fast float %7890, %7724
  %7892 = fadd fast float %7891, 1.000000e+00
  %7893 = fmul fast float %7892, %7736
  br label %7894

; <label>:7894                                    ; preds = %7863, %7748
  %7895 = phi float [ %7893, %7863 ], [ %7736, %7748 ]
  %7896 = call float @dx.op.binary.f32(i32 36, float %7895, float %7895)  ; FMin(a,b)
  %7897 = call float @dx.op.binary.f32(i32 36, float %7895, float %7896)  ; FMin(a,b)
  %7898 = fcmp fast ogt float %7897, 0.000000e+00
  br i1 %7898, label %7899, label %7740, !dx.controlflow.hints !137

; <label>:7899                                    ; preds = %7894
  %7900 = fmul fast float %7895, %7658
  %7901 = fmul fast float %7895, %7659
  %7902 = fmul fast float %7895, %7660
  %7903 = fsub fast float %7642, %4290
  %7904 = fcmp fast ogt float %7903, 0.000000e+00
  %7905 = fsub fast float %205, %4290
  %7906 = fcmp fast ogt float %7905, 0.000000e+00
  %7907 = xor i1 %7906, %7904
  %7908 = fsub fast float %4290, %7642
  %7909 = fmul fast float %7908, 2.000000e+00
  %7910 = fadd fast float %7909, %7642
  %7911 = select i1 %7907, float %7642, float %7910
  %7912 = fsub fast float %7911, %205
  %7913 = call float @dx.op.dot3.f32(i32 55, float %7668, float %7669, float %7912, float %7668, float %7669, float %7912)  ; Dot3(ax,ay,az,bx,by,bz)
  %7914 = call float @dx.op.unary.f32(i32 25, float %7913)  ; Rsqrt(value)
  %7915 = fmul fast float %7914, %7668
  %7916 = fmul fast float %7914, %7669
  %7917 = fmul fast float %7914, %7912
  %7918 = fsub fast float %4290, %205
  %7919 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7918)  ; Dot3(ax,ay,az,bx,by,bz)
  %7920 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7915, float %7916, float %7917)  ; Dot3(ax,ay,az,bx,by,bz)
  %7921 = fdiv fast float 1.000000e+00, %7920
  %7922 = fmul fast float %7921, %7919
  %7923 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7905, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7924 = fcmp fast ogt float %7923, 0.000000e+00
  %7925 = fcmp fast olt float %7923, 0.000000e+00
  %7926 = zext i1 %7924 to i32
  %7927 = zext i1 %7925 to i32
  %7928 = sub nsw i32 %7926, %7927
  %7929 = sitofp i32 %7928 to float
  %7930 = fsub fast float %7911, %4290
  %7931 = call float @dx.op.dot3.f32(i32 55, float %7668, float %7669, float %7930, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7932 = fcmp fast ogt float %7931, 0.000000e+00
  %7933 = fcmp fast olt float %7931, 0.000000e+00
  %7934 = zext i1 %7932 to i32
  %7935 = zext i1 %7933 to i32
  %7936 = sub nsw i32 %7934, %7935
  %7937 = sitofp i32 %7936 to float
  %7938 = fcmp fast une float %7929, %7937
  br i1 %7938, label %7939, label %7949

; <label>:7939                                    ; preds = %7899
  %7940 = fmul fast float %7922, %7917
  %7941 = fmul fast float %7922, %7916
  %7942 = fmul fast float %7922, %7915
  %7943 = fmul fast float %7942, %7942
  %7944 = fmul fast float %7941, %7941
  %7945 = fadd fast float %7943, %7944
  %7946 = fmul fast float %7940, %7940
  %7947 = fadd fast float %7945, %7946
  %7948 = call float @dx.op.unary.f32(i32 24, float %7947)  ; Sqrt(value)
  br label %7961

; <label>:7949                                    ; preds = %7899
  %7950 = icmp slt i32 %7928, 0
  br i1 %7950, label %7951, label %7961

; <label>:7951                                    ; preds = %7949
  %7952 = fsub fast float %203, %7640
  %7953 = fsub fast float %204, %7641
  %7954 = fsub fast float %205, %7911
  %7955 = fmul fast float %7952, %7952
  %7956 = fmul fast float %7953, %7953
  %7957 = fadd fast float %7955, %7956
  %7958 = fmul fast float %7954, %7954
  %7959 = fadd fast float %7957, %7958
  %7960 = call float @dx.op.unary.f32(i32 24, float %7959)  ; Sqrt(value)
  br label %7961

; <label>:7961                                    ; preds = %7951, %7949, %7939
  %7962 = phi float [ %7948, %7939 ], [ %7960, %7951 ], [ 0.000000e+00, %7949 ]
  %7963 = and i1 %7906, %7904
  %7964 = fsub fast float -0.000000e+00, %7962
  %7965 = select i1 %7963, float -0.000000e+00, float %7964
  %7966 = fmul fast float %4287, 0x3FF7154760000000
  %7967 = fmul fast float %7966, %7965
  %7968 = fmul fast float %4288, 0x3FF7154760000000
  %7969 = fmul fast float %7968, %7965
  %7970 = fmul fast float %4289, 0x3FF7154760000000
  %7971 = fmul fast float %7970, %7965
  %7972 = call float @dx.op.unary.f32(i32 21, float %7967)  ; Exp(value)
  %7973 = call float @dx.op.unary.f32(i32 21, float %7969)  ; Exp(value)
  %7974 = call float @dx.op.unary.f32(i32 21, float %7971)  ; Exp(value)
  %7975 = call float @dx.op.unary.f32(i32 7, float %7972)  ; Saturate(value)
  %7976 = call float @dx.op.unary.f32(i32 7, float %7973)  ; Saturate(value)
  %7977 = call float @dx.op.unary.f32(i32 7, float %7974)  ; Saturate(value)
  %7978 = fmul fast float %7900, %7975
  %7979 = fmul fast float %7901, %7976
  %7980 = fmul fast float %7902, %7977
  %7981 = fsub fast float %7674, %5079
  %7982 = fsub fast float %7675, %5078
  %7983 = fsub fast float %7676, %5077
  %7984 = call float @dx.op.dot3.f32(i32 55, float %7981, float %7982, float %7983, float %7981, float %7982, float %7983)  ; Dot3(ax,ay,az,bx,by,bz)
  %7985 = call float @dx.op.unary.f32(i32 25, float %7984)  ; Rsqrt(value)
  %7986 = fmul fast float %7985, %7981
  %7987 = fmul fast float %7985, %7982
  %7988 = fmul fast float %7985, %7983
  %7989 = call float @dx.op.dot3.f32(i32 55, float %7674, float %7675, float %7676, float %5086, float %5087, float %5088)  ; Dot3(ax,ay,az,bx,by,bz)
  %7990 = call float @dx.op.dot3.f32(i32 55, float %5076, float %5075, float %5074, float %7986, float %7987, float %7988)  ; Dot3(ax,ay,az,bx,by,bz)
  %7991 = call float @dx.op.unary.f32(i32 7, float %7989)  ; Saturate(value)
  %7992 = fmul fast float %7991, %7681
  %7993 = fmul fast float %7991, %7991
  %7994 = fmul fast float %7993, %5119
  %7995 = call float @dx.op.unary.f32(i32 7, float %7994)  ; Saturate(value)
  %7996 = fmul fast float %7992, %7995
  %7997 = bitcast float %7671 to i32
  %7998 = ashr i32 %7997, 1
  %7999 = sub nsw i32 1597463007, %7998
  %8000 = bitcast i32 %7999 to float
  %8001 = fmul fast float %8000, %7668
  %8002 = fmul fast float %8000, %7669
  %8003 = fmul fast float %8000, %7670
  %8004 = fsub fast float %8001, %5079
  %8005 = fsub fast float %8002, %5078
  %8006 = fsub fast float %8003, %5077
  %8007 = call float @dx.op.dot3.f32(i32 55, float %8004, float %8005, float %8006, float %8004, float %8005, float %8006)  ; Dot3(ax,ay,az,bx,by,bz)
  %8008 = call float @dx.op.unary.f32(i32 25, float %8007)  ; Rsqrt(value)
  %8009 = fmul fast float %8004, %8008
  %8010 = fmul fast float %8005, %8008
  %8011 = fmul fast float %8006, %8008
  %8012 = call float @dx.op.dot3.f32(i32 55, float %5086, float %5087, float %5088, float %8009, float %8010, float %8011)  ; Dot3(ax,ay,az,bx,by,bz)
  %8013 = fmul fast float %8012, %8012
  %8014 = call float @dx.op.unary.f32(i32 6, float %7989)  ; FAbs(value)
  %8015 = fsub fast float 1.000000e+00, %5112
  %8016 = fmul fast float %5094, %5094
  %8017 = fmul fast float %8016, %8015
  %8018 = fadd fast float %8017, %5112
  %8019 = bitcast float %8018 to i32
  %8020 = ashr i32 %8019, 1
  %8021 = add nsw i32 %8020, 532487669
  %8022 = bitcast i32 %8021 to float
  %8023 = fadd fast float %8022, %5094
  %8024 = fmul fast float %5112, %8013
  %8025 = fsub fast float 1.000000e+00, %8013
  %8026 = fadd fast float %8025, %8024
  %8027 = fmul fast float %8014, %8014
  %8028 = fmul fast float %8027, %8015
  %8029 = fadd fast float %8028, %5112
  %8030 = bitcast float %8029 to i32
  %8031 = ashr i32 %8030, 1
  %8032 = add nsw i32 %8031, 532487669
  %8033 = bitcast i32 %8032 to float
  %8034 = fadd fast float %8033, %8014
  %8035 = fmul fast float %8026, %8026
  %8036 = fmul fast float %8035, %8023
  %8037 = fmul fast float %8036, %8034
  %8038 = fdiv fast float 1.000000e+00, %8037
  %8039 = bitcast float %5112 to i32
  %8040 = sitofp i32 %8039 to float
  %8041 = fmul fast float %8040, 0x3FE7F73180000000
  %8042 = fadd fast float %8041, 0x41AFE27C40000000
  %8043 = fptosi float %8042 to i32
  %8044 = bitcast i32 %8043 to float
  %8045 = fmul fast float %7637, 0x3FD80E9D60000000
  %8046 = fmul fast float %8045, %8000
  %8047 = fadd fast float %8044, %8046
  %8048 = bitcast float %8047 to i32
  %8049 = sub nsw i32 2129859010, %8048
  %8050 = bitcast i32 %8049 to float
  %8051 = fmul fast float %5112, %8038
  %8052 = fmul fast float %8051, %8044
  %8053 = fmul fast float %8052, %8050
  %8054 = call float @dx.op.unary.f32(i32 6, float %7990)  ; FAbs(value)
  %8055 = fsub fast float 1.000000e+00, %8054
  %8056 = bitcast float %8055 to i32
  %8057 = sitofp i32 %8056 to float
  %8058 = fmul fast float %8057, 5.000000e+00
  %8059 = fadd fast float %8058, 0xC1EFBF8940000000
  %8060 = fptosi float %8059 to i32
  %8061 = bitcast i32 %8060 to float
  %8062 = fsub fast float 1.000000e+00, %5083
  %8063 = fsub fast float 1.000000e+00, %5084
  %8064 = fsub fast float 1.000000e+00, %5092
  %8065 = fmul fast float %8061, %8062
  %8066 = fmul fast float %8061, %8063
  %8067 = fmul fast float %8061, %8064
  %8068 = fadd fast float %8065, %5083
  %8069 = fadd fast float %8066, %5084
  %8070 = fadd fast float %8067, %5092
  br i1 %5231, label %8071, label %8094

; <label>:8071                                    ; preds = %7961
  %8072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3885, float %8054, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8073 = extractvalue %dx.types.ResRet.f32 %8072, 0
  %8074 = extractvalue %dx.types.ResRet.f32 %8072, 1
  %8075 = extractvalue %dx.types.ResRet.f32 %8072, 2
  %8076 = fadd fast float %8073, -5.000000e-01
  %8077 = fadd fast float %8074, -5.000000e-01
  %8078 = fadd fast float %8075, -5.000000e-01
  %8079 = fmul fast float %5083, 4.000000e+00
  %8080 = fmul fast float %8079, %8062
  %8081 = fmul fast float %8080, %8076
  %8082 = fmul fast float %5084, 4.000000e+00
  %8083 = fmul fast float %8082, %8063
  %8084 = fmul fast float %8083, %8077
  %8085 = fmul fast float %5092, 4.000000e+00
  %8086 = fmul fast float %8085, %8064
  %8087 = fmul fast float %8086, %8078
  %8088 = fadd fast float %8081, %8068
  %8089 = fadd fast float %8084, %8069
  %8090 = fadd fast float %8087, %8070
  %8091 = call float @dx.op.unary.f32(i32 7, float %8088)  ; Saturate(value)
  %8092 = call float @dx.op.unary.f32(i32 7, float %8089)  ; Saturate(value)
  %8093 = call float @dx.op.unary.f32(i32 7, float %8090)  ; Saturate(value)
  br label %8094

; <label>:8094                                    ; preds = %8071, %7961
  %8095 = phi float [ %8091, %8071 ], [ %8068, %7961 ]
  %8096 = phi float [ %8092, %8071 ], [ %8069, %7961 ]
  %8097 = phi float [ %8093, %8071 ], [ %8070, %7961 ]
  %8098 = fmul fast float %7989, 9.843750e-01
  %8099 = fadd fast float %8098, 7.812500e-03
  %8100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %8099, float %5221, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8101 = extractvalue %dx.types.ResRet.f32 %8100, 2
  %8102 = extractvalue %dx.types.ResRet.f32 %8100, 3
  %8103 = fmul fast float %8101, %5083
  %8104 = fmul fast float %8101, %5084
  %8105 = fmul fast float %8101, %5092
  %8106 = fadd fast float %8103, %8102
  %8107 = fadd fast float %8104, %8102
  %8108 = fadd fast float %8105, %8102
  br i1 %5231, label %8109, label %8132

; <label>:8109                                    ; preds = %8094
  %8110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3885, float %7989, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8111 = extractvalue %dx.types.ResRet.f32 %8110, 0
  %8112 = extractvalue %dx.types.ResRet.f32 %8110, 1
  %8113 = extractvalue %dx.types.ResRet.f32 %8110, 2
  %8114 = fadd fast float %8111, -5.000000e-01
  %8115 = fadd fast float %8112, -5.000000e-01
  %8116 = fadd fast float %8113, -5.000000e-01
  %8117 = fmul fast float %5083, 4.000000e+00
  %8118 = fmul fast float %8117, %8062
  %8119 = fmul fast float %8118, %8114
  %8120 = fmul fast float %5084, 4.000000e+00
  %8121 = fmul fast float %8120, %8063
  %8122 = fmul fast float %8121, %8115
  %8123 = fmul fast float %5092, 4.000000e+00
  %8124 = fmul fast float %8123, %8064
  %8125 = fmul fast float %8124, %8116
  %8126 = fadd fast float %8119, %8106
  %8127 = fadd fast float %8122, %8107
  %8128 = fadd fast float %8125, %8108
  %8129 = call float @dx.op.unary.f32(i32 7, float %8126)  ; Saturate(value)
  %8130 = call float @dx.op.unary.f32(i32 7, float %8127)  ; Saturate(value)
  %8131 = call float @dx.op.unary.f32(i32 7, float %8128)  ; Saturate(value)
  br label %8132

; <label>:8132                                    ; preds = %8109, %8094
  %8133 = phi float [ %8129, %8109 ], [ %8106, %8094 ]
  %8134 = phi float [ %8130, %8109 ], [ %8107, %8094 ]
  %8135 = phi float [ %8131, %8109 ], [ %8108, %8094 ]
  %8136 = call float @dx.op.binary.f32(i32 35, float %8134, float %8135)  ; FMax(a,b)
  %8137 = call float @dx.op.binary.f32(i32 35, float %8133, float %8136)  ; FMax(a,b)
  %8138 = fsub fast float 1.000000e+00, %8137
  %8139 = fmul fast float %8095, %8053
  %8140 = fmul fast float %8096, %8053
  %8141 = fmul fast float %8097, %8053
  %8142 = fsub fast float 1.000000e+00, %7990
  %8143 = bitcast float %8142 to i32
  %8144 = sitofp i32 %8143 to float
  %8145 = fmul fast float %8144, 5.000000e+00
  %8146 = fadd fast float %8145, 0xC1EFBF8940000000
  %8147 = fptosi float %8146 to i32
  %8148 = bitcast i32 %8147 to float
  %8149 = fmul fast float %8148, %3886
  %8150 = fmul fast float %8138, %8149
  %8151 = fmul fast float %8150, %5773
  %8152 = fmul fast float %8150, %5774
  %8153 = fmul fast float %8150, %5775
  %8154 = fadd fast float %8151, %8139
  %8155 = fadd fast float %8152, %8140
  %8156 = fadd fast float %8153, %8141
  %8157 = fmul fast float %7978, %3882
  %8158 = fmul fast float %8157, %7996
  %8159 = fmul fast float %8158, %8138
  %8160 = fmul fast float %7979, %3882
  %8161 = fmul fast float %8160, %7996
  %8162 = fmul fast float %8161, %8138
  %8163 = fmul fast float %7980, %3882
  %8164 = fmul fast float %8163, %7996
  %8165 = fmul fast float %8164, %8138
  %8166 = fadd fast float %8159, %7611
  %8167 = fadd fast float %8162, %7612
  %8168 = fadd fast float %8165, %7613
  %8169 = fmul fast float %8158, %8154
  %8170 = fmul fast float %8161, %8155
  %8171 = fmul fast float %8164, %8156
  %8172 = fadd fast float %8169, %7608
  %8173 = fadd fast float %8170, %7609
  %8174 = fadd fast float %8171, %7610
  br label %7740

; <label>:8175                                    ; preds = %7740
  br label %8176

; <label>:8176                                    ; preds = %8175, %7574
  %8177 = phi float [ %7576, %7574 ], [ %7741, %8175 ]
  %8178 = phi float [ %7577, %7574 ], [ %7742, %8175 ]
  %8179 = phi float [ %7578, %7574 ], [ %7743, %8175 ]
  %8180 = phi float [ %7579, %7574 ], [ %7744, %8175 ]
  %8181 = phi float [ %7580, %7574 ], [ %7745, %8175 ]
  %8182 = phi float [ %7581, %7574 ], [ %7746, %8175 ]
  %8183 = add i32 %7575, 1
  %8184 = icmp ugt i32 %8183, %7571
  br i1 %8184, label %8185, label %7574

; <label>:8185                                    ; preds = %8176
  br label %8186

; <label>:8186                                    ; preds = %8185, %7524, %7514
  %8187 = phi float [ %7515, %7514 ], [ %7515, %7524 ], [ %8177, %8185 ]
  %8188 = phi float [ %7516, %7514 ], [ %7516, %7524 ], [ %8178, %8185 ]
  %8189 = phi float [ %7517, %7514 ], [ %7517, %7524 ], [ %8179, %8185 ]
  %8190 = phi float [ %7518, %7514 ], [ %7518, %7524 ], [ %8180, %8185 ]
  %8191 = phi float [ %7519, %7514 ], [ %7519, %7524 ], [ %8181, %8185 ]
  %8192 = phi float [ %7520, %7514 ], [ %7520, %7524 ], [ %8182, %8185 ]
  %8193 = fmul fast float %3882, %3882
  %8194 = fsub fast float 1.000000e+00, %8193
  %8195 = call float @dx.op.dot3.f32(i32 55, float %8194, float %8194, float %8194, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8196 = fsub fast float 1.000000e+00, %8195
  %8197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8198 = extractvalue %dx.types.CBufRet.f32 %8197, 0
  %8199 = fmul fast float %8198, %5779
  %8200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8201 = extractvalue %dx.types.CBufRet.f32 %8200, 3
  %8202 = fsub fast float 1.000000e+00, %3890
  %8203 = call float @dx.op.unary.f32(i32 7, float %8202)  ; Saturate(value)
  %8204 = fadd fast float %8192, %3888
  %8205 = fmul fast float %8204, %3890
  %8206 = fmul fast float %8203, %8201
  %8207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8208 = extractvalue %dx.types.CBufRet.f32 %8207, 3
  %8209 = fmul fast float %8190, %5080
  %8210 = fmul fast float %8191, %5081
  %8211 = fmul fast float %8192, %5082
  %8212 = fcmp fast ogt float %103, %236
  %8213 = and i1 %8212, %4293
  %8214 = or i1 %4299, %8213
  %8215 = icmp eq i32 %4292, 2
  %8216 = fcmp fast ole float %103, %236
  %8217 = and i1 %8216, %8215
  %8218 = or i1 %8217, %8214
  br i1 %8213, label %8219, label %8476

; <label>:8219                                    ; preds = %8186
  %8220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8221 = extractvalue %dx.types.CBufRet.f32 %8220, 2
  %8222 = extractvalue %dx.types.CBufRet.f32 %8220, 3
  %8223 = fmul fast float %8221, %116
  %8224 = fmul fast float %8222, %117
  %8225 = call float @dx.op.unary.f32(i32 7, float %8223)  ; Saturate(value)
  %8226 = call float @dx.op.unary.f32(i32 7, float %8224)  ; Saturate(value)
  %8227 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8225, float %8226, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8228 = extractvalue %dx.types.ResRet.f32 %8227, 0
  %8229 = extractvalue %dx.types.ResRet.f32 %8227, 1
  %8230 = extractvalue %dx.types.ResRet.f32 %8227, 2
  %8231 = extractvalue %dx.types.ResRet.f32 %8227, 3
  %8232 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8225, float %8226, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8233 = extractvalue %dx.types.ResRet.f32 %8232, 0
  %8234 = extractvalue %dx.types.ResRet.f32 %8232, 1
  %8235 = extractvalue %dx.types.ResRet.f32 %8232, 2
  %8236 = extractvalue %dx.types.ResRet.f32 %8232, 3
  %8237 = call float @dx.op.binary.f32(i32 35, float %8229, float %8230)  ; FMax(a,b)
  %8238 = call float @dx.op.binary.f32(i32 35, float %8228, float %8237)  ; FMax(a,b)
  %8239 = call float @dx.op.binary.f32(i32 35, float %8238, float %8231)  ; FMax(a,b)
  %8240 = call float @dx.op.binary.f32(i32 36, float %8234, float %8235)  ; FMin(a,b)
  %8241 = call float @dx.op.binary.f32(i32 36, float %8233, float %8240)  ; FMin(a,b)
  %8242 = call float @dx.op.binary.f32(i32 36, float %8241, float %8236)  ; FMin(a,b)
  %8243 = fmul fast float %8239, 2.550000e+02
  %8244 = fadd fast float %8243, 0x3F70101020000000
  %8245 = fptoui float %8244 to i32
  %8246 = fmul fast float %8242, 2.550000e+02
  %8247 = fadd fast float %8246, 0x3F70101020000000
  %8248 = fptoui float %8247 to i32
  %8249 = icmp ult i32 %8245, %8248
  br i1 %8249, label %8250, label %8418

; <label>:8250                                    ; preds = %8219
  %8251 = fcmp fast ogt float %102, 9.843750e-01
  %8252 = fadd fast float %103, -4.000000e+00
  %8253 = select i1 %8251, float -4.000000e+00, float %8252
  %8254 = call float @dx.op.binary.f32(i32 35, float %8253, float 0.000000e+00)  ; FMax(a,b)
  %8255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8256 = extractvalue %dx.types.CBufRet.f32 %8255, 0
  %8257 = fadd fast float %8256, %8254
  %8258 = extractvalue %dx.types.CBufRet.f32 %8255, 2
  %8259 = fmul fast float %8257, %8258
  %8260 = call float @dx.op.unary.f32(i32 23, float %8259)  ; Log(value)
  %8261 = extractvalue %dx.types.CBufRet.f32 %8255, 3
  %8262 = fmul fast float %8261, %8260
  %8263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8264 = extractvalue %dx.types.CBufRet.f32 %8263, 2
  %8265 = fmul fast float %8262, %8264
  %8266 = call float @dx.op.unary.f32(i32 7, float %8265)  ; Saturate(value)
  %8267 = uitofp i32 %8245 to float
  %8268 = uitofp i32 %8248 to float
  %8269 = fadd fast float %8267, 5.000000e-01
  %8270 = fadd fast float %8268, 5.000000e-01
  %8271 = fmul fast float %8264, %8269
  %8272 = fmul fast float %8264, %8270
  %8273 = fadd fast float %8271, 0x3F0FFB4800000000
  %8274 = fadd fast float %8272, 0xBF0FFB4800000000
  %8275 = call float @dx.op.binary.f32(i32 35, float %8266, float %8273)  ; FMax(a,b)
  %8276 = call float @dx.op.binary.f32(i32 36, float %8275, float %8274)  ; FMin(a,b)
  %8277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8278 = extractvalue %dx.types.CBufRet.f32 %8277, 1
  %8279 = extractvalue %dx.types.CBufRet.f32 %8277, 2
  %8280 = extractvalue %dx.types.CBufRet.f32 %8277, 0
  %8281 = fmul fast float %8278, %8276
  %8282 = fadd fast float %8280, %8281
  %8283 = fadd fast float %8280, %8279
  %8284 = fsub fast float %8278, %8279
  %8285 = fadd fast float %8284, %8280
  %8286 = call float @dx.op.binary.f32(i32 35, float %8282, float %8283)  ; FMax(a,b)
  %8287 = call float @dx.op.binary.f32(i32 36, float %8286, float %8285)  ; FMin(a,b)
  %8288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %8225, float %8226, float %8287, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8289 = extractvalue %dx.types.ResRet.f32 %8288, 0
  %8290 = extractvalue %dx.types.ResRet.f32 %8288, 1
  %8291 = extractvalue %dx.types.ResRet.f32 %8288, 2
  %8292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8293 = extractvalue %dx.types.CBufRet.i32 %8292, 0
  %8294 = extractvalue %dx.types.CBufRet.i32 %8292, 1
  %8295 = uitofp i32 %8293 to float
  %8296 = uitofp i32 %8294 to float
  %8297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8298 = extractvalue %dx.types.CBufRet.f32 %8297, 0
  %8299 = extractvalue %dx.types.CBufRet.f32 %8297, 1
  %8300 = fmul fast float %8295, %8225
  %8301 = fmul fast float %8296, %8226
  %8302 = fadd fast float %8300, -5.000000e-01
  %8303 = fadd fast float %8301, -5.000000e-01
  %8304 = call float @dx.op.unary.f32(i32 22, float %8302)  ; Frc(value)
  %8305 = call float @dx.op.unary.f32(i32 22, float %8303)  ; Frc(value)
  %8306 = fmul fast float %8304, %8304
  %8307 = fmul fast float %8306, %8304
  %8308 = fsub fast float 3.000000e+00, %8304
  %8309 = fmul fast float %8306, %8308
  %8310 = fmul fast float %8304, 3.000000e+00
  %8311 = fmul fast float %8307, 3.000000e+00
  %8312 = fmul fast float %8306, 6.000000e+00
  %8313 = fsub fast float %8311, %8312
  %8314 = fadd fast float %8313, 4.000000e+00
  %8315 = fmul fast float %8314, 0x3FC5555560000000
  %8316 = fmul fast float %8307, -3.000000e+00
  %8317 = fadd fast float %8306, %8304
  %8318 = fmul fast float %8317, 3.000000e+00
  %8319 = fadd fast float %8316, 1.000000e+00
  %8320 = fadd fast float %8319, %8318
  %8321 = fmul fast float %8307, 0x3FC5555560000000
  %8322 = fmul fast float %8305, %8305
  %8323 = fmul fast float %8322, %8305
  %8324 = fsub fast float 3.000000e+00, %8305
  %8325 = fmul fast float %8322, %8324
  %8326 = fmul fast float %8305, 3.000000e+00
  %8327 = fmul fast float %8323, 3.000000e+00
  %8328 = fmul fast float %8322, 6.000000e+00
  %8329 = fsub fast float %8327, %8328
  %8330 = fadd fast float %8329, 4.000000e+00
  %8331 = fmul fast float %8330, 0x3FC5555560000000
  %8332 = fmul fast float %8323, -3.000000e+00
  %8333 = fadd fast float %8322, %8305
  %8334 = fmul fast float %8333, 3.000000e+00
  %8335 = fadd fast float %8332, 1.000000e+00
  %8336 = fadd fast float %8335, %8334
  %8337 = fmul fast float %8323, 0x3FC5555560000000
  %8338 = fadd fast float %8304, 1.000000e+00
  %8339 = fsub fast float 1.000000e+00, %8310
  %8340 = fadd fast float %8339, %8309
  %8341 = fadd fast float %8340, %8314
  %8342 = fmul fast float %8341, 0x3FC5555560000000
  %8343 = fdiv fast float %8315, %8342
  %8344 = fsub fast float %8338, %8343
  %8345 = fsub fast float 1.000000e+00, %8304
  %8346 = fadd fast float %8320, %8307
  %8347 = fmul fast float %8346, 0x3FC5555560000000
  %8348 = fdiv fast float %8321, %8347
  %8349 = fadd fast float %8345, %8348
  %8350 = fadd fast float %8305, 1.000000e+00
  %8351 = fsub fast float 1.000000e+00, %8326
  %8352 = fadd fast float %8351, %8325
  %8353 = fadd fast float %8352, %8330
  %8354 = fmul fast float %8353, 0x3FC5555560000000
  %8355 = fdiv fast float %8331, %8354
  %8356 = fsub fast float %8350, %8355
  %8357 = fsub fast float 1.000000e+00, %8305
  %8358 = fadd fast float %8336, %8323
  %8359 = fmul fast float %8358, 0x3FC5555560000000
  %8360 = fdiv fast float %8337, %8359
  %8361 = fadd fast float %8360, %8357
  %8362 = fmul fast float %8344, %8298
  %8363 = fsub fast float %8225, %8362
  %8364 = fmul fast float %8349, %8298
  %8365 = fadd fast float %8364, %8225
  %8366 = fmul fast float %8361, %8299
  %8367 = fadd fast float %8366, %8226
  %8368 = fmul fast float %8356, %8299
  %8369 = fsub fast float %8226, %8368
  %8370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8363, float %8369, float %8287, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8371 = extractvalue %dx.types.ResRet.f32 %8370, 0
  %8372 = extractvalue %dx.types.ResRet.f32 %8370, 1
  %8373 = extractvalue %dx.types.ResRet.f32 %8370, 2
  %8374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8365, float %8369, float %8287, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8375 = extractvalue %dx.types.ResRet.f32 %8374, 0
  %8376 = extractvalue %dx.types.ResRet.f32 %8374, 1
  %8377 = extractvalue %dx.types.ResRet.f32 %8374, 2
  %8378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8363, float %8367, float %8287, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8379 = extractvalue %dx.types.ResRet.f32 %8378, 0
  %8380 = extractvalue %dx.types.ResRet.f32 %8378, 1
  %8381 = extractvalue %dx.types.ResRet.f32 %8378, 2
  %8382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8365, float %8367, float %8287, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8383 = extractvalue %dx.types.ResRet.f32 %8382, 0
  %8384 = extractvalue %dx.types.ResRet.f32 %8382, 1
  %8385 = extractvalue %dx.types.ResRet.f32 %8382, 2
  %8386 = fsub fast float %8379, %8371
  %8387 = fsub fast float %8380, %8372
  %8388 = fsub fast float %8381, %8373
  %8389 = fmul fast float %8386, %8359
  %8390 = fmul fast float %8387, %8359
  %8391 = fmul fast float %8388, %8359
  %8392 = fadd fast float %8389, %8371
  %8393 = fadd fast float %8390, %8372
  %8394 = fadd fast float %8391, %8373
  %8395 = fsub fast float %8383, %8375
  %8396 = fsub fast float %8384, %8376
  %8397 = fsub fast float %8385, %8377
  %8398 = fmul fast float %8395, %8359
  %8399 = fmul fast float %8396, %8359
  %8400 = fmul fast float %8397, %8359
  %8401 = fsub fast float %8375, %8392
  %8402 = fadd fast float %8401, %8398
  %8403 = fsub fast float %8376, %8393
  %8404 = fadd fast float %8403, %8399
  %8405 = fsub fast float %8377, %8394
  %8406 = fadd fast float %8405, %8400
  %8407 = fmul fast float %8402, %8347
  %8408 = fmul fast float %8404, %8347
  %8409 = fmul fast float %8406, %8347
  %8410 = fadd fast float %8407, %8392
  %8411 = fadd fast float %8408, %8393
  %8412 = fadd fast float %8409, %8394
  %8413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8414 = extractvalue %dx.types.CBufRet.f32 %8413, 1
  %8415 = fmul fast float %8410, %8414
  %8416 = fmul fast float %8411, %8414
  %8417 = fmul fast float %8412, %8414
  br label %8418

; <label>:8418                                    ; preds = %8250, %8219
  %8419 = phi float [ %8289, %8250 ], [ 1.000000e+00, %8219 ]
  %8420 = phi float [ %8290, %8250 ], [ 1.000000e+00, %8219 ]
  %8421 = phi float [ %8291, %8250 ], [ 1.000000e+00, %8219 ]
  %8422 = phi float [ %8415, %8250 ], [ 0.000000e+00, %8219 ]
  %8423 = phi float [ %8416, %8250 ], [ 0.000000e+00, %8219 ]
  %8424 = phi float [ %8417, %8250 ], [ 0.000000e+00, %8219 ]
  %8425 = fmul fast float %8422, %8196
  %8426 = fmul fast float %8423, %8196
  %8427 = fmul fast float %8424, %8196
  %8428 = call float @dx.op.dot3.f32(i32 55, float %8419, float %8420, float %8421, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8429 = call float @dx.op.dot3.f32(i32 55, float %8425, float %8426, float %8427, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8430 = select i1 %273, float %8428, float %8419
  %8431 = select i1 %273, float %8428, float %8420
  %8432 = select i1 %273, float 1.000000e+00, float %8421
  %8433 = select i1 %273, float %8429, float %8425
  %8434 = select i1 %273, float 0.000000e+00, float %8426
  %8435 = select i1 %273, float 0.000000e+00, float %8427
  %8436 = fmul fast float %8430, %8209
  %8437 = fmul fast float %8431, %8210
  %8438 = fmul fast float %8432, %8211
  %8439 = fadd fast float %8436, %8433
  %8440 = fadd fast float %8437, %8434
  %8441 = fadd fast float %8435, %8438
  %8442 = fmul fast float %8430, %8187
  %8443 = fmul fast float %8431, %8188
  %8444 = fmul fast float %8432, %8189
  %8445 = fmul fast float %152, %8221
  %8446 = fmul fast float %154, %8222
  %8447 = fsub fast float 1.000000e+00, %8445
  %8448 = fsub fast float 1.000000e+00, %8446
  %8449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8450 = extractvalue %dx.types.CBufRet.f32 %8449, 0
  %8451 = extractvalue %dx.types.CBufRet.f32 %8449, 1
  %8452 = extractvalue %dx.types.CBufRet.f32 %8449, 2
  %8453 = fmul fast float %8447, %8450
  %8454 = fmul fast float %8447, %8451
  %8455 = fmul fast float %8447, %8452
  %8456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8457 = extractvalue %dx.types.CBufRet.f32 %8456, 0
  %8458 = extractvalue %dx.types.CBufRet.f32 %8456, 1
  %8459 = extractvalue %dx.types.CBufRet.f32 %8456, 2
  %8460 = fmul fast float %8448, %8457
  %8461 = fmul fast float %8448, %8458
  %8462 = fmul fast float %8448, %8459
  %8463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8464 = extractvalue %dx.types.CBufRet.f32 %8463, 0
  %8465 = extractvalue %dx.types.CBufRet.f32 %8463, 1
  %8466 = extractvalue %dx.types.CBufRet.f32 %8463, 2
  %8467 = fadd fast float %8460, %8464
  %8468 = fadd fast float %8467, %8453
  %8469 = fadd fast float %8461, %8465
  %8470 = fadd fast float %8469, %8454
  %8471 = fadd fast float %8462, %8466
  %8472 = fadd fast float %8471, %8455
  %8473 = fmul fast float %8468, %236
  %8474 = fmul fast float %8470, %236
  %8475 = fmul fast float %8472, %236
  br label %8476

; <label>:8476                                    ; preds = %8418, %8186
  %8477 = phi float [ %8473, %8418 ], [ %203, %8186 ]
  %8478 = phi float [ %8474, %8418 ], [ %204, %8186 ]
  %8479 = phi float [ %8475, %8418 ], [ %205, %8186 ]
  %8480 = phi float [ %236, %8418 ], [ %103, %8186 ]
  %8481 = phi float [ %8439, %8418 ], [ %8209, %8186 ]
  %8482 = phi float [ %8440, %8418 ], [ %8210, %8186 ]
  %8483 = phi float [ %8441, %8418 ], [ %8211, %8186 ]
  %8484 = phi float [ %8442, %8418 ], [ %8187, %8186 ]
  %8485 = phi float [ %8443, %8418 ], [ %8188, %8186 ]
  %8486 = phi float [ %8444, %8418 ], [ %8189, %8186 ]
  %8487 = phi float [ %8419, %8418 ], [ 1.000000e+00, %8186 ]
  br i1 %8218, label %9642, label %8488

; <label>:8488                                    ; preds = %8476
  %8489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8490 = extractvalue %dx.types.CBufRet.f32 %8489, 0
  %8491 = extractvalue %dx.types.CBufRet.f32 %8489, 1
  %8492 = extractvalue %dx.types.CBufRet.f32 %8489, 2
  %8493 = extractvalue %dx.types.CBufRet.f32 %8489, 3
  %8494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8495 = extractvalue %dx.types.CBufRet.f32 %8494, 0
  %8496 = extractvalue %dx.types.CBufRet.f32 %8494, 1
  %8497 = extractvalue %dx.types.CBufRet.f32 %8494, 2
  %8498 = extractvalue %dx.types.CBufRet.f32 %8494, 3
  %8499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8500 = extractvalue %dx.types.CBufRet.f32 %8499, 0
  %8501 = extractvalue %dx.types.CBufRet.f32 %8499, 1
  %8502 = extractvalue %dx.types.CBufRet.f32 %8499, 2
  %8503 = extractvalue %dx.types.CBufRet.f32 %8499, 3
  %8504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8505 = extractvalue %dx.types.CBufRet.f32 %8504, 0
  %8506 = extractvalue %dx.types.CBufRet.f32 %8504, 1
  %8507 = extractvalue %dx.types.CBufRet.f32 %8504, 2
  %8508 = extractvalue %dx.types.CBufRet.f32 %8504, 3
  %8509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8510 = extractvalue %dx.types.CBufRet.f32 %8509, 3
  %8511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8512 = extractvalue %dx.types.CBufRet.f32 %8511, 3
  %8513 = extractvalue %dx.types.CBufRet.f32 %8511, 0
  %8514 = extractvalue %dx.types.CBufRet.f32 %8511, 1
  %8515 = extractvalue %dx.types.CBufRet.f32 %8511, 2
  %8516 = fcmp fast olt float %8515, -5.000000e-01
  %8517 = call float @dx.op.dot3.f32(i32 55, float %8477, float %8478, float %8479, float %8477, float %8478, float %8479)  ; Dot3(ax,ay,az,bx,by,bz)
  %8518 = call float @dx.op.unary.f32(i32 25, float %8517)  ; Rsqrt(value)
  %8519 = fmul fast float %8518, %8517
  %8520 = fmul fast float %8518, %8477
  %8521 = fmul fast float %8518, %8478
  %8522 = fmul fast float %8518, %8479
  %8523 = fadd fast float %8519, %8493
  %8524 = call float @dx.op.dot3.f32(i32 55, float %8520, float %8521, float %8522, float %8490, float %8491, float %8492)  ; Dot3(ax,ay,az,bx,by,bz)
  %8525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8526 = extractvalue %dx.types.CBufRet.i32 %8525, 1
  %8527 = and i32 %8526, 1
  %8528 = icmp ne i32 %8527, 0
  %8529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8530 = extractvalue %dx.types.CBufRet.f32 %8529, 2
  %8531 = fcmp fast ogt float %8530, 0.000000e+00
  %8532 = and i1 %8528, %8531
  br i1 %8532, label %8533, label %8939, !dx.controlflow.hints !138

; <label>:8533                                    ; preds = %8488
  %8534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8535 = extractvalue %dx.types.CBufRet.f32 %8534, 3
  %8536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8537 = extractvalue %dx.types.CBufRet.f32 %8536, 2
  %8538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8539 = extractvalue %dx.types.CBufRet.f32 %8538, 2
  %8540 = fsub fast float %8537, %8539
  %8541 = and i32 %8526, 2
  %8542 = extractvalue %dx.types.CBufRet.i32 %8525, 0
  %8543 = call i32 @dx.op.binary.i32(i32 40, i32 %8542, i32 3)  ; UMin(a,b)
  %8544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8545 = extractvalue %dx.types.CBufRet.f32 %8544, 0
  %8546 = extractvalue %dx.types.CBufRet.f32 %8544, 1
  %8547 = extractvalue %dx.types.CBufRet.f32 %8538, 0
  %8548 = extractvalue %dx.types.CBufRet.f32 %8538, 1
  %8549 = fsub fast float %8545, %8547
  %8550 = fsub fast float %8546, %8548
  %8551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8552 = extractvalue %dx.types.CBufRet.f32 %8551, 0
  %8553 = fcmp fast ogt float %8552, 0.000000e+00
  %8554 = fsub fast float -0.000000e+00, %8549
  %8555 = fsub fast float -0.000000e+00, %8550
  %8556 = call float @dx.op.dot2.f32(i32 54, float %8520, float %8521, float %8520, float %8521)  ; Dot2(ax,ay,bx,by)
  %8557 = call float @dx.op.dot2.f32(i32 54, float %8520, float %8521, float %8554, float %8555)  ; Dot2(ax,ay,bx,by)
  %8558 = fmul fast float %8557, 2.000000e+00
  %8559 = call float @dx.op.dot2.f32(i32 54, float %8554, float %8555, float %8554, float %8555)  ; Dot2(ax,ay,bx,by)
  %8560 = fmul fast float %8552, %8552
  %8561 = fsub fast float %8559, %8560
  %8562 = fmul fast float %8558, %8558
  %8563 = fmul fast float %8556, 4.000000e+00
  %8564 = fmul fast float %8563, %8561
  %8565 = fsub fast float %8562, %8564
  %8566 = fcmp fast ogt float %8565, 0.000000e+00
  br i1 %8566, label %8567, label %8582

; <label>:8567                                    ; preds = %8533
  %8568 = fcmp fast ogt float %8558, 0.000000e+00
  %8569 = call float @dx.op.unary.f32(i32 24, float %8565)  ; Sqrt(value)
  %8570 = fsub fast float -0.000000e+00, %8569
  %8571 = select i1 %8568, float %8569, float %8570
  %8572 = fadd fast float %8571, %8558
  %8573 = fmul float %8572, -5.000000e-01
  %8574 = fdiv fast float %8573, %8556
  %8575 = call float @dx.op.binary.f32(i32 35, float %8574, float 0.000000e+00)  ; FMax(a,b)
  %8576 = call float @dx.op.binary.f32(i32 36, float %8519, float %8575)  ; FMin(a,b)
  %8577 = fdiv fast float %8561, %8573
  %8578 = call float @dx.op.binary.f32(i32 35, float %8577, float 0.000000e+00)  ; FMax(a,b)
  %8579 = call float @dx.op.binary.f32(i32 36, float %8519, float %8578)  ; FMin(a,b)
  %8580 = call float @dx.op.binary.f32(i32 36, float %8576, float %8579)  ; FMin(a,b)
  %8581 = call float @dx.op.binary.f32(i32 35, float %8576, float %8579)  ; FMax(a,b)
  br label %8582

; <label>:8582                                    ; preds = %8567, %8533
  %8583 = phi float [ %8581, %8567 ], [ -1.000000e+00, %8533 ]
  %8584 = phi float [ %8580, %8567 ], [ -1.000000e+00, %8533 ]
  %8585 = phi i1 [ true, %8567 ], [ false, %8533 ]
  %8586 = and i1 %8553, %8585
  br i1 %8586, label %8587, label %8589

; <label>:8587                                    ; preds = %8582
  %8588 = fcmp fast oeq float %8584, %8583
  br i1 %8588, label %8892, label %8590

; <label>:8589                                    ; preds = %8582
  br i1 %8553, label %8892, label %8590

; <label>:8590                                    ; preds = %8589, %8587
  %8591 = phi float [ %8519, %8589 ], [ %8583, %8587 ]
  %8592 = phi float [ 0.000000e+00, %8589 ], [ %8584, %8587 ]
  %8593 = icmp ne i32 %8541, 0
  %8594 = fmul fast float %8591, %8522
  %8595 = fadd fast float %8594, %8535
  %8596 = fmul fast float %8595, %8591
  %8597 = select i1 %8593, float 0.000000e+00, float %8596
  %8598 = fcmp fast oeq float %8522, 0.000000e+00
  %8599 = fdiv fast float %8540, %8522
  %8600 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8599)  ; FMax(a,b)
  %8601 = select i1 %8598, float %8591, float %8600
  %8602 = call float @dx.op.binary.f32(i32 36, float %8591, float %8601)  ; FMin(a,b)
  %8603 = fcmp fast ogt float %8522, 0.000000e+00
  %8604 = fcmp fast olt float %8540, 0.000000e+00
  br i1 %8603, label %8605, label %8662

; <label>:8605                                    ; preds = %8590
  %8606 = icmp eq i32 %8541, 0
  br i1 %8604, label %8607, label %8651

; <label>:8607                                    ; preds = %8605
  %8608 = select i1 %8606, float %8591, float 0.000000e+00
  %8609 = fsub fast float -0.000000e+00, %8608
  %8610 = call float @dx.op.unary.f32(i32 6, float %8609)  ; FAbs(value)
  %8611 = fmul fast float %8608, %8522
  %8612 = fadd fast float %8611, %8535
  %8613 = fmul fast float %8610, %8612
  %8614 = fsub fast float %8597, %8613
  %8615 = fsub fast float %8591, %8610
  %8616 = select i1 %8606, float %8615, float 0.000000e+00
  %8617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8618 = extractvalue %dx.types.CBufRet.f32 %8617, 0
  %8619 = extractvalue %dx.types.CBufRet.f32 %8617, 1
  %8620 = extractvalue %dx.types.CBufRet.f32 %8617, 2
  %8621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8622 = extractvalue %dx.types.CBufRet.f32 %8621, 0
  %8623 = extractvalue %dx.types.CBufRet.f32 %8621, 1
  %8624 = extractvalue %dx.types.CBufRet.f32 %8621, 2
  %8625 = extractvalue %dx.types.CBufRet.f32 %8621, 3
  %8626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8627 = extractvalue %dx.types.CBufRet.f32 %8626, 3
  %8628 = call float @dx.op.binary.f32(i32 36, float %8614, float %8627)  ; FMin(a,b)
  %8629 = fmul fast float %8625, %8616
  %8630 = call float @dx.op.unary.f32(i32 7, float %8629)  ; Saturate(value)
  %8631 = fsub fast float %8622, %8618
  %8632 = fsub fast float %8623, %8619
  %8633 = fsub fast float %8624, %8620
  %8634 = fmul fast float %8630, %8631
  %8635 = fmul fast float %8630, %8632
  %8636 = fmul fast float %8630, %8633
  %8637 = fadd fast float %8634, %8618
  %8638 = fadd fast float %8635, %8619
  %8639 = fadd fast float %8636, %8620
  %8640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8641 = extractvalue %dx.types.CBufRet.f32 %8640, 0
  %8642 = extractvalue %dx.types.CBufRet.f32 %8640, 1
  %8643 = fadd fast float %8642, %8641
  %8644 = call float @dx.op.unary.f32(i32 7, float %8643)  ; Saturate(value)
  %8645 = extractvalue %dx.types.CBufRet.f32 %8640, 2
  %8646 = extractvalue %dx.types.CBufRet.f32 %8640, 3
  %8647 = fadd fast float %8646, %8645
  %8648 = call float @dx.op.unary.f32(i32 7, float %8647)  ; Saturate(value)
  %8649 = fmul fast float %8644, %8628
  %8650 = fmul fast float %8649, %8648
  br label %8892

; <label>:8651                                    ; preds = %8605
  br i1 %8606, label %8652, label %8673

; <label>:8652                                    ; preds = %8651
  %8653 = call float @dx.op.binary.f32(i32 36, float %8602, float %8592)  ; FMin(a,b)
  %8654 = fsub fast float %8602, %8653
  %8655 = fsub fast float %8654, %8591
  %8656 = call float @dx.op.unary.f32(i32 6, float %8655)  ; FAbs(value)
  %8657 = fadd fast float %8654, %8591
  %8658 = fmul fast float %8657, %8522
  %8659 = fadd fast float %8658, %8535
  %8660 = fmul fast float %8659, %8656
  %8661 = fsub fast float %8597, %8660
  br label %8673

; <label>:8662                                    ; preds = %8590
  br i1 %8604, label %8663, label %8673

; <label>:8663                                    ; preds = %8662
  %8664 = call float @dx.op.binary.f32(i32 35, float %8592, float %8602)  ; FMax(a,b)
  %8665 = icmp eq i32 %8541, 0
  %8666 = select i1 %8665, float %8602, float 0.000000e+00
  %8667 = fsub fast float -0.000000e+00, %8666
  %8668 = call float @dx.op.unary.f32(i32 6, float %8667)  ; FAbs(value)
  %8669 = fmul fast float %8666, %8522
  %8670 = fadd fast float %8669, %8535
  %8671 = fmul fast float %8668, %8670
  %8672 = fsub fast float %8597, %8671
  br label %8673

; <label>:8673                                    ; preds = %8663, %8662, %8652, %8651
  %8674 = phi float [ %8592, %8651 ], [ %8592, %8652 ], [ %8664, %8663 ], [ %8592, %8662 ]
  %8675 = phi float [ 0.000000e+00, %8651 ], [ %8656, %8652 ], [ %8668, %8663 ], [ 0.000000e+00, %8662 ]
  %8676 = phi float [ %8597, %8651 ], [ %8661, %8652 ], [ %8672, %8663 ], [ %8597, %8662 ]
  %8677 = phi float [ %8602, %8651 ], [ %8602, %8652 ], [ %8591, %8663 ], [ %8591, %8662 ]
  %8678 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 0
  store float -1.000000e+00, float* %8678, align 4, !tbaa !124, !noalias !139
  %8679 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 1
  store float -1.000000e+00, float* %8679, align 4, !tbaa !124, !noalias !139
  %8680 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 2
  store float -1.000000e+00, float* %8680, align 4, !tbaa !124, !noalias !139
  %8681 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 0
  store float -1.000000e+00, float* %8681, align 4, !tbaa !124, !noalias !139
  %8682 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 1
  store float -1.000000e+00, float* %8682, align 4, !tbaa !124, !noalias !139
  %8683 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 2
  store float -1.000000e+00, float* %8683, align 4, !tbaa !124, !noalias !139
  %8684 = icmp sgt i32 %8543, 0
  br i1 %8684, label %8685, label %8746

; <label>:8685                                    ; preds = %8673
  br label %8686

; <label>:8686                                    ; preds = %8735, %8685
  %8687 = phi i32 [ %8736, %8735 ], [ 0, %8685 ]
  %8688 = phi i32 [ %8737, %8735 ], [ 0, %8685 ]
  %8689 = add nuw i32 %8688, 171
  %8690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %8689)  ; CBufferLoadLegacy(handle,regIndex)
  %8691 = extractvalue %dx.types.CBufRet.f32 %8690, 0
  %8692 = extractvalue %dx.types.CBufRet.f32 %8690, 1
  %8693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8694 = extractvalue %dx.types.CBufRet.f32 %8693, 0
  %8695 = extractvalue %dx.types.CBufRet.f32 %8693, 1
  %8696 = fsub fast float %8691, %8694
  %8697 = fsub fast float %8692, %8695
  %8698 = extractvalue %dx.types.CBufRet.f32 %8690, 2
  %8699 = fsub fast float -0.000000e+00, %8696
  %8700 = fsub fast float -0.000000e+00, %8697
  %8701 = call float @dx.op.dot2.f32(i32 54, float %8520, float %8521, float %8699, float %8700)  ; Dot2(ax,ay,bx,by)
  %8702 = fmul fast float %8701, 2.000000e+00
  %8703 = call float @dx.op.dot2.f32(i32 54, float %8699, float %8700, float %8699, float %8700)  ; Dot2(ax,ay,bx,by)
  %8704 = fmul fast float %8698, %8698
  %8705 = fsub fast float %8703, %8704
  %8706 = fmul fast float %8702, %8702
  %8707 = fmul fast float %8563, %8705
  %8708 = fsub fast float %8706, %8707
  %8709 = fcmp fast ogt float %8708, 0.000000e+00
  br i1 %8709, label %8710, label %8725

; <label>:8710                                    ; preds = %8686
  %8711 = fcmp fast ogt float %8702, 0.000000e+00
  %8712 = call float @dx.op.unary.f32(i32 24, float %8708)  ; Sqrt(value)
  %8713 = fsub fast float -0.000000e+00, %8712
  %8714 = select i1 %8711, float %8712, float %8713
  %8715 = fadd fast float %8714, %8702
  %8716 = fmul float %8715, -5.000000e-01
  %8717 = fdiv fast float %8716, %8556
  %8718 = call float @dx.op.binary.f32(i32 35, float %8717, float 0.000000e+00)  ; FMax(a,b)
  %8719 = call float @dx.op.binary.f32(i32 36, float %8591, float %8718)  ; FMin(a,b)
  %8720 = fdiv fast float %8705, %8716
  %8721 = call float @dx.op.binary.f32(i32 35, float %8720, float 0.000000e+00)  ; FMax(a,b)
  %8722 = call float @dx.op.binary.f32(i32 36, float %8591, float %8721)  ; FMin(a,b)
  %8723 = call float @dx.op.binary.f32(i32 36, float %8719, float %8722)  ; FMin(a,b)
  %8724 = call float @dx.op.binary.f32(i32 35, float %8719, float %8722)  ; FMax(a,b)
  br label %8725

; <label>:8725                                    ; preds = %8710, %8686
  %8726 = phi float [ %8724, %8710 ], [ -1.000000e+00, %8686 ]
  %8727 = phi float [ %8723, %8710 ], [ -1.000000e+00, %8686 ]
  %8728 = phi i1 [ true, %8710 ], [ false, %8686 ]
  br i1 %8728, label %8729, label %8735

; <label>:8729                                    ; preds = %8725
  %8730 = call float @dx.op.binary.f32(i32 35, float %8674, float %8727)  ; FMax(a,b)
  %8731 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8688
  store float %8730, float* %8731, align 4, !tbaa !124, !noalias !139
  %8732 = call float @dx.op.binary.f32(i32 35, float %8674, float %8726)  ; FMax(a,b)
  %8733 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8688
  store float %8732, float* %8733, align 4, !tbaa !124, !noalias !139
  %8734 = add nsw i32 %8687, 1
  br label %8735

; <label>:8735                                    ; preds = %8729, %8725
  %8736 = phi i32 [ %8734, %8729 ], [ %8687, %8725 ]
  %8737 = add nuw nsw i32 %8688, 1
  %8738 = icmp eq i32 %8737, %8543
  br i1 %8738, label %8739, label %8686

; <label>:8739                                    ; preds = %8735
  %8740 = load float, float* %8680, align 4, !tbaa !124, !alias.scope !155, !noalias !158
  %8741 = load float, float* %8679, align 4, !tbaa !124, !alias.scope !161, !noalias !162
  %8742 = load float, float* %8678, align 4, !tbaa !124, !alias.scope !163, !noalias !164
  %8743 = load float, float* %8683, align 4, !tbaa !124, !alias.scope !165, !noalias !168
  %8744 = load float, float* %8682, align 4, !tbaa !124, !alias.scope !171, !noalias !172
  %8745 = load float, float* %8681, align 4, !tbaa !124, !alias.scope !173, !noalias !174
  br label %8746

; <label>:8746                                    ; preds = %8739, %8673
  %8747 = phi float [ -1.000000e+00, %8673 ], [ %8745, %8739 ]
  %8748 = phi float [ -1.000000e+00, %8673 ], [ %8744, %8739 ]
  %8749 = phi float [ -1.000000e+00, %8673 ], [ %8743, %8739 ]
  %8750 = phi float [ -1.000000e+00, %8673 ], [ %8742, %8739 ]
  %8751 = phi float [ -1.000000e+00, %8673 ], [ %8741, %8739 ]
  %8752 = phi float [ -1.000000e+00, %8673 ], [ %8740, %8739 ]
  %8753 = phi i32 [ 0, %8673 ], [ %8736, %8739 ]
  %8754 = call float @dx.op.binary.f32(i32 36, float %8751, float %8752)  ; FMin(a,b)
  %8755 = call float @dx.op.binary.f32(i32 36, float %8750, float %8754)  ; FMin(a,b)
  %8756 = call float @dx.op.binary.f32(i32 35, float %8750, float %8751)  ; FMax(a,b)
  %8757 = call float @dx.op.binary.f32(i32 36, float %8756, float %8752)  ; FMin(a,b)
  %8758 = call float @dx.op.binary.f32(i32 36, float %8750, float %8751)  ; FMin(a,b)
  %8759 = call float @dx.op.binary.f32(i32 35, float %8758, float %8757)  ; FMax(a,b)
  %8760 = call float @dx.op.binary.f32(i32 35, float %8751, float %8752)  ; FMax(a,b)
  %8761 = call float @dx.op.binary.f32(i32 35, float %8750, float %8760)  ; FMax(a,b)
  store float %8755, float* %8678, align 4, !tbaa !124, !alias.scope !163, !noalias !164
  store float %8759, float* %8679, align 4, !tbaa !124, !alias.scope !161, !noalias !162
  store float %8761, float* %8680, align 4, !tbaa !124, !alias.scope !155, !noalias !158
  %8762 = call float @dx.op.binary.f32(i32 36, float %8748, float %8749)  ; FMin(a,b)
  %8763 = call float @dx.op.binary.f32(i32 36, float %8747, float %8762)  ; FMin(a,b)
  %8764 = call float @dx.op.binary.f32(i32 35, float %8747, float %8748)  ; FMax(a,b)
  %8765 = call float @dx.op.binary.f32(i32 36, float %8764, float %8749)  ; FMin(a,b)
  %8766 = call float @dx.op.binary.f32(i32 36, float %8747, float %8748)  ; FMin(a,b)
  %8767 = call float @dx.op.binary.f32(i32 35, float %8766, float %8765)  ; FMax(a,b)
  %8768 = call float @dx.op.binary.f32(i32 35, float %8748, float %8749)  ; FMax(a,b)
  %8769 = call float @dx.op.binary.f32(i32 35, float %8747, float %8768)  ; FMax(a,b)
  store float %8763, float* %8681, align 4, !tbaa !124, !alias.scope !173, !noalias !174
  store float %8767, float* %8682, align 4, !tbaa !124, !alias.scope !171, !noalias !172
  store float %8769, float* %8683, align 4, !tbaa !124, !alias.scope !165, !noalias !168
  %8770 = sub nsw i32 3, %8753
  %8771 = icmp sgt i32 %8770, 2
  br i1 %8771, label %8772, label %8810

; <label>:8772                                    ; preds = %8746
  %8773 = icmp eq i32 %8541, 0
  %8774 = fsub fast float %8591, %8675
  %8775 = select i1 %8773, float %8774, float %8675
  %8776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8777 = extractvalue %dx.types.CBufRet.f32 %8776, 0
  %8778 = extractvalue %dx.types.CBufRet.f32 %8776, 1
  %8779 = extractvalue %dx.types.CBufRet.f32 %8776, 2
  %8780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8781 = extractvalue %dx.types.CBufRet.f32 %8780, 0
  %8782 = extractvalue %dx.types.CBufRet.f32 %8780, 1
  %8783 = extractvalue %dx.types.CBufRet.f32 %8780, 2
  %8784 = extractvalue %dx.types.CBufRet.f32 %8780, 3
  %8785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8786 = extractvalue %dx.types.CBufRet.f32 %8785, 3
  %8787 = call float @dx.op.binary.f32(i32 36, float %8676, float %8786)  ; FMin(a,b)
  %8788 = fmul fast float %8784, %8775
  %8789 = call float @dx.op.unary.f32(i32 7, float %8788)  ; Saturate(value)
  %8790 = fsub fast float %8781, %8777
  %8791 = fsub fast float %8782, %8778
  %8792 = fsub fast float %8783, %8779
  %8793 = fmul fast float %8789, %8790
  %8794 = fmul fast float %8789, %8791
  %8795 = fmul fast float %8789, %8792
  %8796 = fadd fast float %8793, %8777
  %8797 = fadd fast float %8794, %8778
  %8798 = fadd fast float %8795, %8779
  %8799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8800 = extractvalue %dx.types.CBufRet.f32 %8799, 0
  %8801 = extractvalue %dx.types.CBufRet.f32 %8799, 1
  %8802 = fadd fast float %8801, %8800
  %8803 = call float @dx.op.unary.f32(i32 7, float %8802)  ; Saturate(value)
  %8804 = extractvalue %dx.types.CBufRet.f32 %8799, 2
  %8805 = extractvalue %dx.types.CBufRet.f32 %8799, 3
  %8806 = fadd fast float %8805, %8804
  %8807 = call float @dx.op.unary.f32(i32 7, float %8806)  ; Saturate(value)
  %8808 = fmul fast float %8803, %8787
  %8809 = fmul fast float %8808, %8807
  br label %8892

; <label>:8810                                    ; preds = %8746
  %8811 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8770
  %8812 = load float, float* %8811, align 4, !tbaa !124, !noalias !139
  %8813 = fcmp fast olt float %8812, %8677
  %8814 = icmp sgt i32 %8753, 0
  %8815 = and i1 %8814, %8813
  br i1 %8815, label %8816, label %8853

; <label>:8816                                    ; preds = %8810
  br label %8817

; <label>:8817                                    ; preds = %8846, %8816
  %8818 = phi float [ %8847, %8846 ], [ %8675, %8816 ]
  %8819 = phi float [ %8848, %8846 ], [ %8676, %8816 ]
  %8820 = phi float [ %8828, %8846 ], [ %8812, %8816 ]
  %8821 = phi i32 [ %8825, %8846 ], [ %8770, %8816 ]
  %8822 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8821
  %8823 = load float, float* %8822, align 4, !tbaa !124, !noalias !139
  %8824 = icmp slt i32 %8821, 2
  %8825 = add nsw i32 %8821, 1
  %8826 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8825
  %8827 = load float, float* %8826, align 4, !tbaa !124, !noalias !139
  %8828 = select i1 %8824, float %8827, float %8591
  %8829 = call float @dx.op.binary.f32(i32 36, float %8828, float %8823)  ; FMin(a,b)
  %8830 = call float @dx.op.binary.f32(i32 36, float %8677, float %8829)  ; FMin(a,b)
  %8831 = icmp eq i32 %8541, 0
  %8832 = fadd fast float %8830, %8820
  %8833 = fmul fast float %8832, %8522
  %8834 = fadd fast float %8833, %8535
  br i1 %8831, label %8840, label %8835

; <label>:8835                                    ; preds = %8817
  %8836 = fsub fast float %8830, %8820
  %8837 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8836)  ; FMax(a,b)
  %8838 = fmul fast float %8837, %8834
  %8839 = fadd fast float %8838, %8819
  br label %8846

; <label>:8840                                    ; preds = %8817
  %8841 = fsub fast float %8820, %8830
  %8842 = call float @dx.op.unary.f32(i32 6, float %8841)  ; FAbs(value)
  %8843 = fadd fast float %8842, %8818
  %8844 = fmul fast float %8842, %8834
  %8845 = fsub fast float %8819, %8844
  br label %8846

; <label>:8846                                    ; preds = %8840, %8835
  %8847 = phi float [ %8837, %8835 ], [ %8843, %8840 ]
  %8848 = phi float [ %8839, %8835 ], [ %8845, %8840 ]
  %8849 = fcmp fast olt float %8828, %8677
  %8850 = icmp slt i32 %8825, 3
  %8851 = and i1 %8850, %8849
  br i1 %8851, label %8817, label %8852

; <label>:8852                                    ; preds = %8846
  br label %8853

; <label>:8853                                    ; preds = %8852, %8810
  %8854 = phi float [ %8675, %8810 ], [ %8847, %8852 ]
  %8855 = phi float [ %8676, %8810 ], [ %8848, %8852 ]
  %8856 = fsub fast float %8591, %8854
  %8857 = select i1 %8593, float %8854, float %8856
  %8858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8859 = extractvalue %dx.types.CBufRet.f32 %8858, 0
  %8860 = extractvalue %dx.types.CBufRet.f32 %8858, 1
  %8861 = extractvalue %dx.types.CBufRet.f32 %8858, 2
  %8862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8863 = extractvalue %dx.types.CBufRet.f32 %8862, 0
  %8864 = extractvalue %dx.types.CBufRet.f32 %8862, 1
  %8865 = extractvalue %dx.types.CBufRet.f32 %8862, 2
  %8866 = extractvalue %dx.types.CBufRet.f32 %8862, 3
  %8867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8868 = extractvalue %dx.types.CBufRet.f32 %8867, 3
  %8869 = call float @dx.op.binary.f32(i32 36, float %8855, float %8868)  ; FMin(a,b)
  %8870 = fmul fast float %8866, %8857
  %8871 = call float @dx.op.unary.f32(i32 7, float %8870)  ; Saturate(value)
  %8872 = fsub fast float %8863, %8859
  %8873 = fsub fast float %8864, %8860
  %8874 = fsub fast float %8865, %8861
  %8875 = fmul fast float %8871, %8872
  %8876 = fmul fast float %8871, %8873
  %8877 = fmul fast float %8871, %8874
  %8878 = fadd fast float %8875, %8859
  %8879 = fadd fast float %8876, %8860
  %8880 = fadd fast float %8877, %8861
  %8881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8882 = extractvalue %dx.types.CBufRet.f32 %8881, 0
  %8883 = extractvalue %dx.types.CBufRet.f32 %8881, 1
  %8884 = fadd fast float %8883, %8882
  %8885 = call float @dx.op.unary.f32(i32 7, float %8884)  ; Saturate(value)
  %8886 = extractvalue %dx.types.CBufRet.f32 %8881, 2
  %8887 = extractvalue %dx.types.CBufRet.f32 %8881, 3
  %8888 = fadd fast float %8887, %8886
  %8889 = call float @dx.op.unary.f32(i32 7, float %8888)  ; Saturate(value)
  %8890 = fmul fast float %8885, %8869
  %8891 = fmul fast float %8890, %8889
  br label %8892

; <label>:8892                                    ; preds = %8853, %8772, %8607, %8589, %8587
  %8893 = phi float [ %8616, %8607 ], [ %8775, %8772 ], [ %8857, %8853 ], [ 0.000000e+00, %8587 ], [ 0.000000e+00, %8589 ]
  %8894 = phi float [ %8650, %8607 ], [ %8809, %8772 ], [ %8891, %8853 ], [ 0.000000e+00, %8587 ], [ 0.000000e+00, %8589 ]
  %8895 = phi float [ %8637, %8607 ], [ %8796, %8772 ], [ %8878, %8853 ], [ 0.000000e+00, %8587 ], [ 0.000000e+00, %8589 ]
  %8896 = phi float [ %8638, %8607 ], [ %8797, %8772 ], [ %8879, %8853 ], [ 0.000000e+00, %8587 ], [ 0.000000e+00, %8589 ]
  %8897 = phi float [ %8639, %8607 ], [ %8798, %8772 ], [ %8880, %8853 ], [ 0.000000e+00, %8587 ], [ 0.000000e+00, %8589 ]
  %8898 = fmul fast float %8530, %8894
  %8899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8900 = extractvalue %dx.types.CBufRet.f32 %8899, 2
  %8901 = fsub fast float %8537, %8900
  %8902 = fcmp fast olt float %8898, -2.000000e+01
  %8903 = call float @dx.op.unary.f32(i32 21, float %8898)  ; Exp(value)
  %8904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8905 = extractvalue %dx.types.CBufRet.f32 %8904, 2
  %8906 = extractvalue %dx.types.CBufRet.f32 %8904, 3
  %8907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8908 = extractvalue %dx.types.CBufRet.f32 %8907, 2
  %8909 = fmul fast float %8906, %8901
  %8910 = call float @dx.op.unary.f32(i32 7, float %8909)  ; Saturate(value)
  %8911 = fsub fast float 1.000000e+00, %8910
  %8912 = fmul fast float %8522, 5.000000e-01
  %8913 = fadd fast float %8912, 5.000000e-01
  %8914 = call float @dx.op.unary.f32(i32 7, float %8913)  ; Saturate(value)
  %8915 = fsub fast float 1.000000e+00, %8914
  %8916 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8911)  ; FMax(a,b)
  %8917 = fdiv fast float %8915, %8916
  %8918 = fsub fast float %8901, %8479
  %8919 = call float @dx.op.unary.f32(i32 6, float %8918)  ; FAbs(value)
  %8920 = fmul fast float %8919, %8905
  %8921 = call float @dx.op.unary.f32(i32 7, float %8917)  ; Saturate(value)
  %8922 = fsub fast float 1.000000e+00, %8920
  %8923 = fmul fast float %8922, %8921
  %8924 = fadd fast float %8923, %8920
  %8925 = fmul fast float %8908, %8901
  %8926 = call float @dx.op.unary.f32(i32 7, float %8925)  ; Saturate(value)
  %8927 = fsub fast float 1.000000e+00, %8924
  %8928 = fmul fast float %8927, %8926
  %8929 = fadd fast float %8928, %8924
  %8930 = call float @dx.op.unary.f32(i32 7, float %8929)  ; Saturate(value)
  %8931 = fadd fast float %8903, -1.000000e+00
  %8932 = select i1 %8902, float -1.000000e+00, float %8931
  %8933 = fmul fast float %8930, %8932
  %8934 = fadd fast float %8933, 1.000000e+00
  %8935 = fsub fast float -0.000000e+00, %8933
  %8936 = fmul fast float %8895, %8935
  %8937 = fmul fast float %8896, %8935
  %8938 = fmul fast float %8897, %8935
  br label %8939

; <label>:8939                                    ; preds = %8892, %8488
  %8940 = phi float [ %8893, %8892 ], [ 0.000000e+00, %8488 ]
  %8941 = phi float [ %8934, %8892 ], [ 1.000000e+00, %8488 ]
  %8942 = phi float [ %8936, %8892 ], [ 0.000000e+00, %8488 ]
  %8943 = phi float [ %8937, %8892 ], [ 0.000000e+00, %8488 ]
  %8944 = phi float [ %8938, %8892 ], [ 0.000000e+00, %8488 ]
  %8945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8946 = extractvalue %dx.types.CBufRet.f32 %8945, 1
  %8947 = fsub fast float 1.000000e+00, %8941
  %8948 = fmul fast float %8947, %8523
  %8949 = fmul fast float %8948, %8946
  %8950 = fsub fast float %8523, %8949
  br i1 %8516, label %8951, label %8980, !dx.controlflow.hints !175

; <label>:8951                                    ; preds = %8939
  %8952 = fmul fast float %8524, %8513
  %8953 = fadd fast float %8952, %8514
  %8954 = call float @dx.op.unary.f32(i32 7, float %8953)  ; Saturate(value)
  %8955 = fmul fast float %8495, %8950
  %8956 = fsub fast float -0.000000e+00, %8955
  %8957 = fmul fast float %8496, %8950
  %8958 = fsub fast float -0.000000e+00, %8957
  %8959 = call float @dx.op.unary.f32(i32 21, float %8956)  ; Exp(value)
  %8960 = call float @dx.op.unary.f32(i32 21, float %8958)  ; Exp(value)
  %8961 = call float @dx.op.binary.f32(i32 35, float %8503, float %8959)  ; FMax(a,b)
  %8962 = call float @dx.op.binary.f32(i32 35, float %8503, float %8960)  ; FMax(a,b)
  %8963 = fsub fast float %8962, %8961
  %8964 = fmul fast float %8963, %8954
  %8965 = fadd fast float %8964, %8961
  %8966 = call float @dx.op.unary.f32(i32 7, float %8965)  ; Saturate(value)
  %8967 = fsub fast float %8500, %8505
  %8968 = fsub fast float %8501, %8506
  %8969 = fsub fast float %8502, %8507
  %8970 = fmul fast float %8954, %8967
  %8971 = fmul fast float %8954, %8968
  %8972 = fmul fast float %8954, %8969
  %8973 = fadd fast float %8970, %8505
  %8974 = fadd fast float %8971, %8506
  %8975 = fadd fast float %8972, %8507
  %8976 = fsub fast float 1.000000e+00, %8966
  %8977 = fmul fast float %8976, %8973
  %8978 = fmul fast float %8976, %8974
  %8979 = fmul fast float %8976, %8975
  br label %9039

; <label>:8980                                    ; preds = %8939
  %8981 = fmul fast float %8950, %8512
  %8982 = call float @dx.op.unary.f32(i32 7, float %8981)  ; Saturate(value)
  %8983 = fsub fast float 2.000000e+00, %8982
  %8984 = fmul fast float %8982, 9.921875e-01
  %8985 = fmul fast float %8984, %8983
  %8986 = fadd fast float %8985, 3.906250e-03
  %8987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %8986, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8988 = extractvalue %dx.types.ResRet.f32 %8987, 0
  %8989 = fsub fast float %8982, %8988
  %8990 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8989)  ; FMax(a,b)
  %8991 = fmul fast float %8498, %8479
  %8992 = call float @dx.op.unary.f32(i32 6, float %8991)  ; FAbs(value)
  %8993 = fcmp fast ogt float %8992, 0x3EB0C6F7A0000000
  br i1 %8993, label %8994, label %9000, !dx.controlflow.hints !176

; <label>:8994                                    ; preds = %8980
  %8995 = fmul fast float %8991, 0xBFF7154760000000
  %8996 = call float @dx.op.unary.f32(i32 21, float %8995)  ; Exp(value)
  %8997 = fsub fast float 1.000000e+00, %8996
  %8998 = fdiv fast float %8997, %8991
  %8999 = fmul fast float %8998, %8508
  br label %9000

; <label>:9000                                    ; preds = %8994, %8980
  %9001 = phi float [ %8999, %8994 ], [ %8508, %8980 ]
  %9002 = fadd fast float %9001, %8510
  %9003 = fmul fast float %9002, %8990
  %9004 = fmul fast float %8495, %9003
  %9005 = fsub fast float -0.000000e+00, %9004
  %9006 = fmul fast float %8496, %9003
  %9007 = fsub fast float -0.000000e+00, %9006
  %9008 = fmul fast float %8497, %9003
  %9009 = fsub fast float -0.000000e+00, %9008
  %9010 = call float @dx.op.unary.f32(i32 21, float %9005)  ; Exp(value)
  %9011 = call float @dx.op.unary.f32(i32 21, float %9007)  ; Exp(value)
  %9012 = call float @dx.op.unary.f32(i32 21, float %9009)  ; Exp(value)
  %9013 = fmul fast float %8524, %8524
  %9014 = fadd fast float %9013, 1.000000e+00
  %9015 = fmul fast float %9014, 0x3FAE8EC8A0000000
  %9016 = fmul fast float %9015, %8505
  %9017 = fmul fast float %9015, %8506
  %9018 = fmul fast float %9015, %8507
  %9019 = fmul fast float %8524, %8503
  %9020 = fsub fast float 1.000000e+00, %9019
  %9021 = fmul fast float %8503, %8503
  %9022 = fsub fast float 1.000000e+00, %9021
  %9023 = fmul fast float %9022, 0x3FB45F3060000000
  %9024 = fmul fast float %9020, %9020
  %9025 = fdiv fast float 1.000000e+00, %9024
  %9026 = fmul fast float %9023, %9025
  %9027 = fmul fast float %9026, %8500
  %9028 = fmul fast float %9026, %8501
  %9029 = fmul fast float %9026, %8502
  %9030 = fadd fast float %9027, %9016
  %9031 = fadd fast float %9028, %9017
  %9032 = fadd fast float %9029, %9018
  %9033 = fsub fast float 1.000000e+00, %9010
  %9034 = fsub fast float 1.000000e+00, %9011
  %9035 = fsub fast float 1.000000e+00, %9012
  %9036 = fmul fast float %9030, %9033
  %9037 = fmul fast float %9031, %9034
  %9038 = fmul fast float %9032, %9035
  br label %9039

; <label>:9039                                    ; preds = %9000, %8951
  %9040 = phi float [ %8977, %8951 ], [ %9036, %9000 ]
  %9041 = phi float [ %8978, %8951 ], [ %9037, %9000 ]
  %9042 = phi float [ %8979, %8951 ], [ %9038, %9000 ]
  %9043 = phi float [ %8966, %8951 ], [ %9010, %9000 ]
  %9044 = phi float [ %8966, %8951 ], [ %9011, %9000 ]
  %9045 = phi float [ %8966, %8951 ], [ %9012, %9000 ]
  br i1 %8532, label %9046, label %9244, !dx.controlflow.hints !177

; <label>:9046                                    ; preds = %9039
  %9047 = extractvalue %dx.types.CBufRet.f32 %8945, 0
  %9048 = fmul fast float %9047, %8947
  %9049 = fsub fast float %8942, %9040
  %9050 = fsub fast float %8943, %9041
  %9051 = fsub fast float %8944, %9042
  %9052 = fmul fast float %9048, %9049
  %9053 = fmul fast float %9048, %9050
  %9054 = fmul fast float %9048, %9051
  %9055 = fadd fast float %9052, %9040
  %9056 = fadd fast float %9053, %9041
  %9057 = fadd fast float %9054, %9042
  %9058 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9043)  ; FMax(a,b)
  %9059 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9044)  ; FMax(a,b)
  %9060 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9045)  ; FMax(a,b)
  %9061 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8941)  ; FMax(a,b)
  %9062 = call float @dx.op.binary.f32(i32 35, float %8940, float %8950)  ; FMax(a,b)
  %9063 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9062)  ; FMax(a,b)
  %9064 = fdiv fast float %8940, %9063
  %9065 = call float @dx.op.unary.f32(i32 7, float %9064)  ; Saturate(value)
  %9066 = fdiv fast float %8950, %9063
  %9067 = call float @dx.op.unary.f32(i32 7, float %9066)  ; Saturate(value)
  %9068 = fcmp fast une float %9061, 1.000000e+00
  br i1 %9068, label %9069, label %9082, !dx.controlflow.hints !178

; <label>:9069                                    ; preds = %9046
  %9070 = call float @dx.op.unary.f32(i32 23, float %9061)  ; Log(value)
  %9071 = fmul fast float %9070, 0x3FE62E4300000000
  %9072 = fmul fast float %8942, %9071
  %9073 = fsub fast float -0.000000e+00, %9072
  %9074 = fmul fast float %8943, %9071
  %9075 = fsub fast float -0.000000e+00, %9074
  %9076 = fmul fast float %8944, %9071
  %9077 = fsub fast float -0.000000e+00, %9076
  %9078 = fsub fast float 1.000000e+00, %9061
  %9079 = fdiv fast float %9073, %9078
  %9080 = fdiv fast float %9075, %9078
  %9081 = fdiv fast float %9077, %9078
  br label %9082

; <label>:9082                                    ; preds = %9069, %9046
  %9083 = phi float [ %9079, %9069 ], [ %8942, %9046 ]
  %9084 = phi float [ %9080, %9069 ], [ %8943, %9046 ]
  %9085 = phi float [ %9081, %9069 ], [ %8944, %9046 ]
  %9086 = phi float [ %9071, %9069 ], [ 0.000000e+00, %9046 ]
  %9087 = fcmp fast une float %9058, 1.000000e+00
  br i1 %9087, label %9088, label %9095, !dx.controlflow.hints !179

; <label>:9088                                    ; preds = %9082
  %9089 = call float @dx.op.unary.f32(i32 23, float %9058)  ; Log(value)
  %9090 = fmul fast float %9089, 0x3FE62E4300000000
  %9091 = fmul fast float %9055, %9090
  %9092 = fsub fast float -0.000000e+00, %9091
  %9093 = fsub fast float 1.000000e+00, %9058
  %9094 = fdiv fast float %9092, %9093
  br label %9095

; <label>:9095                                    ; preds = %9088, %9082
  %9096 = phi float [ %9094, %9088 ], [ %9055, %9082 ]
  %9097 = phi float [ %9090, %9088 ], [ 0.000000e+00, %9082 ]
  %9098 = fcmp fast une float %9059, 1.000000e+00
  br i1 %9098, label %9099, label %9106, !dx.controlflow.hints !179

; <label>:9099                                    ; preds = %9095
  %9100 = call float @dx.op.unary.f32(i32 23, float %9059)  ; Log(value)
  %9101 = fmul fast float %9100, 0x3FE62E4300000000
  %9102 = fmul fast float %9056, %9101
  %9103 = fsub fast float -0.000000e+00, %9102
  %9104 = fsub fast float 1.000000e+00, %9059
  %9105 = fdiv fast float %9103, %9104
  br label %9106

; <label>:9106                                    ; preds = %9099, %9095
  %9107 = phi float [ %9105, %9099 ], [ %9056, %9095 ]
  %9108 = phi float [ %9101, %9099 ], [ 0.000000e+00, %9095 ]
  %9109 = fcmp fast une float %9060, 1.000000e+00
  br i1 %9109, label %9110, label %9117, !dx.controlflow.hints !179

; <label>:9110                                    ; preds = %9106
  %9111 = call float @dx.op.unary.f32(i32 23, float %9060)  ; Log(value)
  %9112 = fmul fast float %9111, 0x3FE62E4300000000
  %9113 = fmul fast float %9057, %9112
  %9114 = fsub fast float -0.000000e+00, %9113
  %9115 = fsub fast float 1.000000e+00, %9060
  %9116 = fdiv fast float %9114, %9115
  br label %9117

; <label>:9117                                    ; preds = %9110, %9106
  %9118 = phi float [ %9116, %9110 ], [ %9057, %9106 ]
  %9119 = phi float [ %9112, %9110 ], [ 0.000000e+00, %9106 ]
  %9120 = fmul fast float %9083, %9067
  %9121 = fmul fast float %9084, %9067
  %9122 = fmul fast float %9085, %9067
  %9123 = fmul fast float %9086, %9067
  %9124 = fmul fast float %9096, %9065
  %9125 = fmul fast float %9107, %9065
  %9126 = fmul fast float %9118, %9065
  %9127 = fmul fast float %9097, %9065
  %9128 = fmul fast float %9108, %9065
  %9129 = fmul fast float %9119, %9065
  %9130 = fadd fast float %9124, %9120
  %9131 = fadd fast float %9125, %9121
  %9132 = fadd fast float %9126, %9122
  %9133 = fadd fast float %9127, %9123
  %9134 = fadd fast float %9128, %9123
  %9135 = fadd fast float %9129, %9123
  %9136 = fcmp fast une float %9133, 0.000000e+00
  br i1 %9136, label %9137, label %9144, !dx.controlflow.hints !180

; <label>:9137                                    ; preds = %9117
  %9138 = fmul fast float %9133, 0x3FF7154760000000
  %9139 = call float @dx.op.unary.f32(i32 21, float %9138)  ; Exp(value)
  %9140 = fsub fast float 1.000000e+00, %9139
  %9141 = fmul fast float %9130, %9140
  %9142 = fsub fast float -0.000000e+00, %9141
  %9143 = fdiv fast float %9142, %9133
  br label %9144

; <label>:9144                                    ; preds = %9137, %9117
  %9145 = phi float [ %9139, %9137 ], [ 1.000000e+00, %9117 ]
  %9146 = phi float [ %9143, %9137 ], [ %9130, %9117 ]
  %9147 = fcmp fast une float %9134, 0.000000e+00
  br i1 %9147, label %9148, label %9155, !dx.controlflow.hints !180

; <label>:9148                                    ; preds = %9144
  %9149 = fmul fast float %9134, 0x3FF7154760000000
  %9150 = call float @dx.op.unary.f32(i32 21, float %9149)  ; Exp(value)
  %9151 = fsub fast float 1.000000e+00, %9150
  %9152 = fmul fast float %9131, %9151
  %9153 = fsub fast float -0.000000e+00, %9152
  %9154 = fdiv fast float %9153, %9134
  br label %9155

; <label>:9155                                    ; preds = %9148, %9144
  %9156 = phi float [ %9150, %9148 ], [ 1.000000e+00, %9144 ]
  %9157 = phi float [ %9154, %9148 ], [ %9131, %9144 ]
  %9158 = fcmp fast une float %9135, 0.000000e+00
  br i1 %9158, label %9159, label %9166, !dx.controlflow.hints !180

; <label>:9159                                    ; preds = %9155
  %9160 = fmul fast float %9135, 0x3FF7154760000000
  %9161 = call float @dx.op.unary.f32(i32 21, float %9160)  ; Exp(value)
  %9162 = fsub fast float 1.000000e+00, %9161
  %9163 = fmul fast float %9132, %9162
  %9164 = fsub fast float -0.000000e+00, %9163
  %9165 = fdiv fast float %9164, %9135
  br label %9166

; <label>:9166                                    ; preds = %9159, %9155
  %9167 = phi float [ %9161, %9159 ], [ 1.000000e+00, %9155 ]
  %9168 = phi float [ %9165, %9159 ], [ %9132, %9155 ]
  %9169 = fcmp fast ogt float %9065, %9067
  br i1 %9169, label %9170, label %9190

; <label>:9170                                    ; preds = %9166
  %9171 = fsub fast float 1.000000e+00, %9067
  %9172 = fmul fast float %9083, %9171
  %9173 = fmul fast float %9084, %9171
  %9174 = fmul fast float %9085, %9171
  %9175 = fmul fast float %9086, %9171
  %9176 = fcmp fast une float %9175, 0.000000e+00
  br i1 %9176, label %9177, label %9228, !dx.controlflow.hints !181

; <label>:9177                                    ; preds = %9170
  %9178 = fmul fast float %9175, 0x3FF7154760000000
  %9179 = call float @dx.op.unary.f32(i32 21, float %9178)  ; Exp(value)
  %9180 = fsub fast float 1.000000e+00, %9179
  %9181 = fmul fast float %9172, %9180
  %9182 = fsub fast float -0.000000e+00, %9181
  %9183 = fmul fast float %9173, %9180
  %9184 = fsub fast float -0.000000e+00, %9183
  %9185 = fmul fast float %9174, %9180
  %9186 = fsub fast float -0.000000e+00, %9185
  %9187 = fdiv fast float %9182, %9175
  %9188 = fdiv fast float %9184, %9175
  %9189 = fdiv fast float %9186, %9175
  br label %9228

; <label>:9190                                    ; preds = %9166
  %9191 = fsub fast float 1.000000e+00, %9065
  %9192 = fmul fast float %9096, %9191
  %9193 = fmul fast float %9107, %9191
  %9194 = fmul fast float %9118, %9191
  %9195 = fmul fast float %9097, %9191
  %9196 = fmul fast float %9108, %9191
  %9197 = fmul fast float %9119, %9191
  %9198 = fcmp fast une float %9195, 0.000000e+00
  br i1 %9198, label %9199, label %9206, !dx.controlflow.hints !180

; <label>:9199                                    ; preds = %9190
  %9200 = fmul fast float %9195, 0x3FF7154760000000
  %9201 = call float @dx.op.unary.f32(i32 21, float %9200)  ; Exp(value)
  %9202 = fsub fast float 1.000000e+00, %9201
  %9203 = fmul fast float %9192, %9202
  %9204 = fsub fast float -0.000000e+00, %9203
  %9205 = fdiv fast float %9204, %9195
  br label %9206

; <label>:9206                                    ; preds = %9199, %9190
  %9207 = phi float [ %9205, %9199 ], [ %9192, %9190 ]
  %9208 = phi float [ %9201, %9199 ], [ 1.000000e+00, %9190 ]
  %9209 = fcmp fast une float %9196, 0.000000e+00
  br i1 %9209, label %9210, label %9217, !dx.controlflow.hints !180

; <label>:9210                                    ; preds = %9206
  %9211 = fmul fast float %9196, 0x3FF7154760000000
  %9212 = call float @dx.op.unary.f32(i32 21, float %9211)  ; Exp(value)
  %9213 = fsub fast float 1.000000e+00, %9212
  %9214 = fmul fast float %9193, %9213
  %9215 = fsub fast float -0.000000e+00, %9214
  %9216 = fdiv fast float %9215, %9196
  br label %9217

; <label>:9217                                    ; preds = %9210, %9206
  %9218 = phi float [ %9216, %9210 ], [ %9193, %9206 ]
  %9219 = phi float [ %9212, %9210 ], [ 1.000000e+00, %9206 ]
  %9220 = fcmp fast une float %9197, 0.000000e+00
  br i1 %9220, label %9221, label %9228, !dx.controlflow.hints !180

; <label>:9221                                    ; preds = %9217
  %9222 = fmul fast float %9197, 0x3FF7154760000000
  %9223 = call float @dx.op.unary.f32(i32 21, float %9222)  ; Exp(value)
  %9224 = fsub fast float 1.000000e+00, %9223
  %9225 = fmul fast float %9194, %9224
  %9226 = fsub fast float -0.000000e+00, %9225
  %9227 = fdiv fast float %9226, %9197
  br label %9228

; <label>:9228                                    ; preds = %9221, %9217, %9177, %9170
  %9229 = phi float [ %9227, %9221 ], [ %9189, %9177 ], [ %9174, %9170 ], [ %9194, %9217 ]
  %9230 = phi float [ %9218, %9221 ], [ %9188, %9177 ], [ %9173, %9170 ], [ %9218, %9217 ]
  %9231 = phi float [ %9207, %9221 ], [ %9187, %9177 ], [ %9172, %9170 ], [ %9207, %9217 ]
  %9232 = phi float [ %9223, %9221 ], [ %9179, %9177 ], [ 1.000000e+00, %9170 ], [ 1.000000e+00, %9217 ]
  %9233 = phi float [ %9219, %9221 ], [ %9179, %9177 ], [ 1.000000e+00, %9170 ], [ %9219, %9217 ]
  %9234 = phi float [ %9208, %9221 ], [ %9179, %9177 ], [ 1.000000e+00, %9170 ], [ %9208, %9217 ]
  %9235 = fmul fast float %9234, %9146
  %9236 = fmul fast float %9233, %9157
  %9237 = fmul fast float %9232, %9168
  %9238 = fadd fast float %9235, %9231
  %9239 = fadd fast float %9236, %9230
  %9240 = fadd fast float %9237, %9229
  %9241 = fmul fast float %9234, %9145
  %9242 = fmul fast float %9233, %9156
  %9243 = fmul fast float %9232, %9167
  br label %9244

; <label>:9244                                    ; preds = %9228, %9039
  %9245 = phi float [ %9243, %9228 ], [ %9045, %9039 ]
  %9246 = phi float [ %9242, %9228 ], [ %9044, %9039 ]
  %9247 = phi float [ %9241, %9228 ], [ %9043, %9039 ]
  %9248 = phi float [ %9240, %9228 ], [ %9042, %9039 ]
  %9249 = phi float [ %9239, %9228 ], [ %9041, %9039 ]
  %9250 = phi float [ %9238, %9228 ], [ %9040, %9039 ]
  %9251 = fmul fast float %9250, %8196
  %9252 = fmul fast float %9249, %8196
  %9253 = fmul fast float %9248, %8196
  %9254 = fmul fast float %9247, %8487
  %9255 = call float @dx.op.dot3.f32(i32 55, float %9247, float %9246, float %9245, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9256 = call float @dx.op.dot3.f32(i32 55, float %9251, float %9252, float %9253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9257 = select i1 %273, float %9255, float %9247
  %9258 = select i1 %273, float %9255, float %9246
  %9259 = select i1 %273, float 1.000000e+00, float %9245
  %9260 = select i1 %273, float %9256, float %9251
  %9261 = select i1 %273, float 0.000000e+00, float %9252
  %9262 = select i1 %273, float 0.000000e+00, float %9253
  %9263 = fmul fast float %9257, %8481
  %9264 = fmul fast float %9258, %8482
  %9265 = fmul fast float %9259, %8483
  %9266 = fadd fast float %9263, %9260
  %9267 = fadd fast float %9264, %9261
  %9268 = fadd fast float %9262, %9265
  %9269 = fmul fast float %9257, %8484
  %9270 = fmul fast float %9258, %8485
  %9271 = fmul fast float %9259, %8486
  %9272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9273 = extractvalue %dx.types.CBufRet.i32 %9272, 0
  %9274 = icmp eq i32 %9273, 0
  br i1 %9274, label %9642, label %9275, !dx.controlflow.hints !182

; <label>:9275                                    ; preds = %9244
  %9276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9277 = extractvalue %dx.types.CBufRet.f32 %9276, 2
  %9278 = extractvalue %dx.types.CBufRet.f32 %9276, 3
  %9279 = fmul fast float %9277, %116
  %9280 = fmul fast float %9278, %117
  %9281 = fmul fast float %9279, 2.000000e+00
  %9282 = fmul fast float %9280, 2.000000e+00
  %9283 = fsub fast float 1.000000e+00, %9281
  %9284 = fsub fast float 1.000000e+00, %9282
  %9285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9286 = extractvalue %dx.types.CBufRet.f32 %9285, 0
  %9287 = extractvalue %dx.types.CBufRet.f32 %9285, 1
  %9288 = extractvalue %dx.types.CBufRet.f32 %9285, 2
  %9289 = fmul fast float %9283, %9286
  %9290 = fmul fast float %9283, %9287
  %9291 = fmul fast float %9283, %9288
  %9292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9293 = extractvalue %dx.types.CBufRet.f32 %9292, 0
  %9294 = extractvalue %dx.types.CBufRet.f32 %9292, 1
  %9295 = extractvalue %dx.types.CBufRet.f32 %9292, 2
  %9296 = fmul fast float %9284, %9293
  %9297 = fmul fast float %9284, %9294
  %9298 = fmul fast float %9284, %9295
  %9299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9300 = extractvalue %dx.types.CBufRet.f32 %9299, 0
  %9301 = extractvalue %dx.types.CBufRet.f32 %9299, 1
  %9302 = extractvalue %dx.types.CBufRet.f32 %9299, 2
  %9303 = fadd fast float %9296, %9300
  %9304 = fadd fast float %9303, %9289
  %9305 = fadd fast float %9297, %9301
  %9306 = fadd fast float %9305, %9290
  %9307 = fadd fast float %9298, %9302
  %9308 = fadd fast float %9307, %9291
  %9309 = fmul fast float %9304, %8480
  %9310 = fmul fast float %9306, %8480
  %9311 = fmul fast float %9308, %8480
  %9312 = fmul fast float %9309, %9309
  %9313 = fmul fast float %9310, %9310
  %9314 = fadd fast float %9312, %9313
  %9315 = fmul fast float %9311, %9311
  %9316 = fadd fast float %9314, %9315
  %9317 = call float @dx.op.unary.f32(i32 24, float %9316)  ; Sqrt(value)
  %9318 = extractvalue %dx.types.CBufRet.f32 %8207, 0
  %9319 = fsub fast float %9317, %9318
  %9320 = extractvalue %dx.types.CBufRet.f32 %8207, 2
  %9321 = fmul fast float %9319, %9320
  %9322 = call float @dx.op.unary.f32(i32 7, float %9321)  ; Saturate(value)
  %9323 = fadd fast float %9322, -5.000000e-01
  %9324 = fmul fast float %9323, 2.000000e+00
  %9325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9326 = extractvalue %dx.types.CBufRet.f32 %9325, 2
  %9327 = call float @dx.op.binary.f32(i32 36, float %9326, float %9324)  ; FMin(a,b)
  %9328 = fsub fast float -0.000000e+00, %9326
  %9329 = fcmp fast ogt float %9327, %9328
  br i1 %9329, label %9330, label %9642, !dx.controlflow.hints !183

; <label>:9330                                    ; preds = %9275
  %9331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9332 = extractvalue %dx.types.CBufRet.f32 %9331, 3
  %9333 = fcmp fast ogt float %9332, 0.000000e+00
  br i1 %9333, label %9334, label %9409, !dx.controlflow.hints !184

; <label>:9334                                    ; preds = %9330
  %9335 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9336 = extractvalue %dx.types.Dimensions %9335, 0
  %9337 = sitofp i32 %9336 to float
  %9338 = extractvalue %dx.types.Dimensions %9335, 1
  %9339 = sitofp i32 %9338 to float
  %9340 = fmul fast float %9279, %9337
  %9341 = fmul fast float %9280, %9339
  %9342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9343 = extractvalue %dx.types.CBufRet.f32 %9342, 1
  %9344 = fsub fast float -0.000000e+00, %9343
  %9345 = fptoui float %9344 to i32
  %9346 = fptoui float %9340 to i32
  %9347 = fptoui float %9341 to i32
  %9348 = and i32 %9345, 31
  %9349 = lshr i32 %9346, %9348
  %9350 = lshr i32 %9347, %9348
  %9351 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9345, i32 %9349, i32 %9350, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9352 = extractvalue %dx.types.ResRet.f32 %9351, 0
  %9353 = fcmp fast olt float %9352, -1.000000e+00
  %9354 = fcmp fast ogt float %9352, -1.000000e+00
  %9355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9356 = extractvalue %dx.types.CBufRet.f32 %9355, 1
  %9357 = select i1 %9354, float %9356, float 1.000000e+00
  %9358 = fadd fast float %9352, 1.000000e+00
  %9359 = fmul fast float %9357, %9358
  %9360 = call float @dx.op.unary.f32(i32 6, float %9359)  ; FAbs(value)
  %9361 = extractvalue %dx.types.CBufRet.f32 %9355, 3
  %9362 = fcmp fast oge float %9360, %9361
  %9363 = select i1 %9362, float 0x4197782600000000, float %9360
  %9364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9365 = extractvalue %dx.types.CBufRet.f32 %9364, 0
  %9366 = extractvalue %dx.types.CBufRet.f32 %9364, 1
  %9367 = extractvalue %dx.types.CBufRet.f32 %9364, 2
  %9368 = select i1 %9353, float %9365, float %9286
  %9369 = select i1 %9353, float %9366, float %9287
  %9370 = select i1 %9353, float %9367, float %9288
  %9371 = fmul fast float %9368, %9283
  %9372 = fmul fast float %9369, %9283
  %9373 = fmul fast float %9370, %9283
  %9374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9375 = extractvalue %dx.types.CBufRet.f32 %9374, 0
  %9376 = extractvalue %dx.types.CBufRet.f32 %9374, 1
  %9377 = extractvalue %dx.types.CBufRet.f32 %9374, 2
  %9378 = select i1 %9353, float %9375, float %9293
  %9379 = select i1 %9353, float %9376, float %9294
  %9380 = select i1 %9353, float %9377, float %9295
  %9381 = fmul fast float %9378, %9284
  %9382 = fmul fast float %9379, %9284
  %9383 = fmul fast float %9380, %9284
  %9384 = fadd fast float %9381, %9371
  %9385 = fadd fast float %9382, %9372
  %9386 = fadd fast float %9383, %9373
  %9387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9388 = extractvalue %dx.types.CBufRet.f32 %9387, 0
  %9389 = extractvalue %dx.types.CBufRet.f32 %9387, 1
  %9390 = extractvalue %dx.types.CBufRet.f32 %9387, 2
  %9391 = select i1 %9353, float %9388, float %9300
  %9392 = select i1 %9353, float %9389, float %9301
  %9393 = select i1 %9353, float %9390, float %9302
  %9394 = fadd fast float %9384, %9391
  %9395 = fadd fast float %9385, %9392
  %9396 = fadd fast float %9386, %9393
  %9397 = fmul fast float %9394, %9363
  %9398 = fmul fast float %9395, %9363
  %9399 = fmul fast float %9396, %9363
  %9400 = fmul fast float %9397, %9397
  %9401 = fmul fast float %9398, %9398
  %9402 = fadd fast float %9400, %9401
  %9403 = fmul fast float %9399, %9399
  %9404 = fadd fast float %9402, %9403
  %9405 = call float @dx.op.unary.f32(i32 24, float %9404)  ; Sqrt(value)
  %9406 = fsub fast float %9405, %9318
  %9407 = fmul fast float %9406, %9320
  %9408 = call float @dx.op.unary.f32(i32 7, float %9407)  ; Saturate(value)
  br label %9409

; <label>:9409                                    ; preds = %9334, %9330
  %9410 = phi float [ %9408, %9334 ], [ 1.000000e+00, %9330 ]
  %9411 = fmul fast float %9327, 5.000000e-01
  %9412 = fadd fast float %9411, 5.000000e-01
  %9413 = call float @dx.op.unary.f32(i32 22, float %9412)  ; Frc(value)
  %9414 = call float @dx.op.unary.f32(i32 27, float %9413)  ; Round_ni(value)
  %9415 = call float @dx.op.unary.f32(i32 22, float %9413)  ; Frc(value)
  %9416 = fmul fast float %9415, 2.000000e+00
  %9417 = fadd fast float %9416, -1.000000e+00
  %9418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %55, float %9279, float %9280, float %9414, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9419 = extractvalue %dx.types.ResRet.f32 %9418, 0
  %9420 = extractvalue %dx.types.ResRet.f32 %9418, 1
  %9421 = extractvalue %dx.types.ResRet.f32 %9418, 2
  %9422 = extractvalue %dx.types.ResRet.f32 %9418, 3
  %9423 = fadd fast float %9419, -5.000000e-01
  %9424 = fadd fast float %9421, -5.000000e-01
  %9425 = fmul fast float %9423, 0xBFD5555560000000
  %9426 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9424, float %9425)  ; FMad(a,b,c)
  %9427 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9420, float 0.000000e+00)  ; FMad(a,b,c)
  %9428 = fadd fast float %9427, %9422
  %9429 = fmul fast float %9423, -7.500000e-01
  %9430 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9424, float %9429)  ; FMad(a,b,c)
  %9431 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9420, float 0.000000e+00)  ; FMad(a,b,c)
  %9432 = fadd fast float %9431, %9422
  %9433 = call float @dx.op.binary.f32(i32 35, float %9426, float -1.000000e+00)  ; FMax(a,b)
  %9434 = call float @dx.op.binary.f32(i32 35, float %9428, float -1.000000e+00)  ; FMax(a,b)
  %9435 = call float @dx.op.binary.f32(i32 35, float %9430, float -1.000000e+00)  ; FMax(a,b)
  %9436 = call float @dx.op.binary.f32(i32 35, float %9432, float -1.000000e+00)  ; FMax(a,b)
  %9437 = call float @dx.op.binary.f32(i32 36, float %9433, float 1.000000e+00)  ; FMin(a,b)
  %9438 = call float @dx.op.binary.f32(i32 36, float %9434, float 1.000000e+00)  ; FMin(a,b)
  %9439 = call float @dx.op.binary.f32(i32 36, float %9435, float 1.000000e+00)  ; FMin(a,b)
  %9440 = call float @dx.op.binary.f32(i32 36, float %9436, float 1.000000e+00)  ; FMin(a,b)
  %9441 = fcmp fast olt float %9437, 0x3FEFFF8020000000
  br i1 %9441, label %9442, label %9557, !dx.controlflow.hints !185

; <label>:9442                                    ; preds = %9409
  %9443 = extractvalue %dx.types.CBufRet.f32 %9325, 3
  %9444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9445 = extractvalue %dx.types.CBufRet.f32 %9444, 0
  %9446 = extractvalue %dx.types.CBufRet.f32 %9444, 1
  %9447 = extractvalue %dx.types.CBufRet.f32 %9444, 2
  %9448 = extractvalue %dx.types.CBufRet.f32 %9444, 3
  %9449 = fsub fast float %9445, %9437
  %9450 = fsub fast float %9446, %9438
  %9451 = fsub fast float %9447, %9439
  %9452 = fsub fast float %9448, %9440
  %9453 = fmul fast float %9449, %9443
  %9454 = fmul fast float %9450, %9443
  %9455 = fmul fast float %9451, %9443
  %9456 = fmul fast float %9452, %9443
  %9457 = fadd fast float %9453, %9437
  %9458 = fadd fast float %9454, %9438
  %9459 = fsub fast float -0.000000e+00, %9458
  %9460 = fadd fast float %9455, %9439
  %9461 = fadd fast float %9456, %9440
  %9462 = fmul fast float %9457, %9457
  %9463 = fsub fast float %9458, %9462
  %9464 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9463)  ; FMax(a,b)
  %9465 = fdiv fast float 1.000000e+00, %9464
  %9466 = fmul fast float %9458, %9457
  %9467 = fsub fast float %9460, %9466
  %9468 = fsub fast float %9417, %9457
  %9469 = fmul fast float %9417, %9417
  %9470 = fsub fast float %9469, %9458
  %9471 = fmul fast float %9468, %9465
  %9472 = fmul fast float %9471, %9467
  %9473 = fsub fast float %9470, %9472
  %9474 = fmul fast float %9458, %9458
  %9475 = fsub fast float %9461, %9474
  %9476 = fmul fast float %9467, %9467
  %9477 = fmul fast float %9476, %9465
  %9478 = fsub fast float %9475, %9477
  %9479 = fdiv fast float %9473, %9478
  %9480 = fmul fast float %9467, %9479
  %9481 = fsub fast float %9468, %9480
  %9482 = fmul fast float %9481, %9465
  %9483 = fmul fast float %9482, %9457
  %9484 = fsub fast float 1.000000e+00, %9483
  %9485 = fmul fast float %9458, %9479
  %9486 = fsub fast float %9484, %9485
  %9487 = fmul fast float %9482, %9482
  %9488 = fmul fast float %9479, 4.000000e+00
  %9489 = fmul fast float %9488, %9486
  %9490 = fsub fast float %9487, %9489
  %9491 = call float @dx.op.unary.f32(i32 24, float %9490)  ; Sqrt(value)
  %9492 = fcmp fast oge float %9482, 0.000000e+00
  %9493 = fsub fast float -0.000000e+00, %9491
  %9494 = select i1 %9492, float %9493, float %9491
  %9495 = fsub fast float %9494, %9482
  %9496 = fdiv fast float %9495, %9479
  %9497 = fdiv fast float %9486, %9495
  %9498 = fmul fast float %9496, 5.000000e-01
  %9499 = fmul fast float %9497, 2.000000e+00
  %9500 = select i1 %9492, float %9498, float %9499
  %9501 = select i1 %9492, float %9499, float %9498
  %9502 = call float @dx.op.binary.f32(i32 35, float %9500, float %9501)  ; FMax(a,b)
  %9503 = call float @dx.op.binary.f32(i32 36, float %9500, float %9501)  ; FMin(a,b)
  %9504 = fcmp fast ogt float %9417, %9503
  br i1 %9504, label %9505, label %9515

; <label>:9505                                    ; preds = %9442
  %9506 = fsub fast float %9417, %9503
  %9507 = fsub fast float %9502, %9503
  %9508 = fmul fast float %9506, %9507
  %9509 = fmul fast float %9502, %9417
  %9510 = fadd fast float %9502, %9417
  %9511 = fmul fast float %9510, %9457
  %9512 = fadd fast float %9509, %9458
  %9513 = fsub fast float %9512, %9511
  %9514 = fdiv fast float %9513, %9508
  br label %9515

; <label>:9515                                    ; preds = %9505, %9442
  %9516 = phi float [ %9514, %9505 ], [ 0.000000e+00, %9442 ]
  %9517 = fcmp fast ogt float %9417, %9502
  %9518 = fsub fast float %9417, %9502
  br i1 %9517, label %9519, label %9529

; <label>:9519                                    ; preds = %9515
  %9520 = fsub fast float %9502, %9503
  %9521 = fmul fast float %9520, %9518
  %9522 = fmul fast float %9503, %9417
  %9523 = fadd fast float %9503, %9417
  %9524 = fmul fast float %9523, %9457
  %9525 = fsub fast float %9459, %9522
  %9526 = fadd fast float %9525, %9524
  %9527 = fdiv fast float %9526, %9521
  %9528 = fadd fast float %9527, %9516
  br label %9529

; <label>:9529                                    ; preds = %9519, %9515
  %9530 = phi float [ %9528, %9519 ], [ %9516, %9515 ]
  %9531 = fsub fast float %9417, %9503
  %9532 = fmul fast float %9531, %9518
  %9533 = fmul fast float %9503, %9502
  %9534 = fadd fast float %9503, %9502
  %9535 = fmul fast float %9534, %9457
  %9536 = fadd fast float %9533, %9458
  %9537 = fsub fast float %9536, %9535
  %9538 = fdiv fast float %9537, %9532
  %9539 = call float @dx.op.unary.f32(i32 7, float %9530)  ; Saturate(value)
  %9540 = fcmp fast oeq float %8208, 0.000000e+00
  %9541 = extractvalue %dx.types.CBufRet.f32 %9325, 0
  %9542 = fcmp fast oeq float %9541, 0.000000e+00
  %9543 = or i1 %9540, %9542
  %9544 = fmul fast float %9541, 2.000000e+00
  %9545 = fadd fast float %9326, %9327
  %9546 = fdiv fast float %9545, %9544
  %9547 = call float @dx.op.unary.f32(i32 7, float %9546)  ; Saturate(value)
  %9548 = fmul fast float %9547, 2.000000e+00
  %9549 = fsub fast float 3.000000e+00, %9548
  %9550 = fmul fast float %9547, %9547
  %9551 = fmul fast float %9550, %9549
  %9552 = select i1 %9543, float 1.000000e+00, float %9551
  %9553 = fmul fast float %9538, %8208
  %9554 = fadd fast float %9539, %9553
  %9555 = call float @dx.op.unary.f32(i32 7, float %9554)  ; Saturate(value)
  %9556 = fmul fast float %9552, %9555
  br label %9557

; <label>:9557                                    ; preds = %9529, %9409
  %9558 = phi float [ %9556, %9529 ], [ 0.000000e+00, %9409 ]
  %9559 = fsub fast float 1.000000e+00, %9558
  %9560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %55, float %9279, float %9280, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9561 = extractvalue %dx.types.ResRet.f32 %9560, 0
  %9562 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9563 = extractvalue %dx.types.CBufRet.i32 %9562, 2
  %9564 = icmp eq i32 %9563, 0
  br i1 %9564, label %9570, label %9565

; <label>:9565                                    ; preds = %9557
  %9566 = call float @dx.op.unary.f32(i32 7, float %9558)  ; Saturate(value)
  %9567 = fadd fast float %9561, -1.000000e+00
  %9568 = fmul fast float %9566, %9567
  %9569 = fadd fast float %9568, 1.000000e+00
  br label %9570

; <label>:9570                                    ; preds = %9565, %9557
  %9571 = phi float [ %9569, %9565 ], [ %9559, %9557 ]
  br i1 %9333, label %9572, label %9590

; <label>:9572                                    ; preds = %9570
  %9573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9574 = extractvalue %dx.types.CBufRet.f32 %9573, 1
  %9575 = fsub fast float %9410, %9574
  %9576 = call float @dx.op.unary.f32(i32 7, float %9575)  ; Saturate(value)
  %9577 = fsub fast float %9410, %9332
  %9578 = call float @dx.op.unary.f32(i32 7, float %9577)  ; Saturate(value)
  %9579 = fsub fast float %9576, %9578
  %9580 = fsub fast float %9412, %9578
  %9581 = fdiv fast float %9580, %9579
  %9582 = call float @dx.op.unary.f32(i32 7, float %9581)  ; Saturate(value)
  %9583 = fmul fast float %9582, 2.000000e+00
  %9584 = fsub fast float 3.000000e+00, %9583
  %9585 = fsub fast float %9561, %9571
  %9586 = fmul fast float %9582, %9582
  %9587 = fmul fast float %9586, %9585
  %9588 = fmul fast float %9587, %9584
  %9589 = fadd fast float %9588, %9571
  br label %9590

; <label>:9590                                    ; preds = %9572, %9570
  %9591 = phi float [ %9589, %9572 ], [ %9571, %9570 ]
  %9592 = call float @dx.op.binary.f32(i32 35, float %9561, float %9591)  ; FMax(a,b)
  %9593 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9594 = extractvalue %dx.types.CBufRet.i32 %9593, 2
  %9595 = and i32 %9594, 1
  %9596 = icmp eq i32 %9595, 0
  %9597 = fcmp fast une float %9592, 1.000000e+00
  %9598 = and i1 %9597, %9596
  br i1 %9598, label %9599, label %9618

; <label>:9599                                    ; preds = %9590
  %9600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %55, float %9279, float %9280, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9601 = extractvalue %dx.types.ResRet.f32 %9600, 0
  %9602 = extractvalue %dx.types.ResRet.f32 %9600, 1
  %9603 = extractvalue %dx.types.ResRet.f32 %9600, 2
  %9604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9605 = extractvalue %dx.types.CBufRet.f32 %9604, 1
  %9606 = fmul fast float %9605, %9601
  %9607 = fmul fast float %9605, %9602
  %9608 = fmul fast float %9605, %9603
  %9609 = fcmp fast ogt float %9561, 0x3FEFFF2E40000000
  %9610 = fsub fast float 1.000000e+00, %9592
  %9611 = fsub fast float 1.000000e+00, %9561
  %9612 = fdiv fast float %9610, %9611
  %9613 = call float @dx.op.unary.f32(i32 7, float %9612)  ; Saturate(value)
  %9614 = select i1 %9609, float 0.000000e+00, float %9613
  %9615 = fmul fast float %9606, %9614
  %9616 = fmul fast float %9607, %9614
  %9617 = fmul fast float %9608, %9614
  br label %9618

; <label>:9618                                    ; preds = %9599, %9590
  %9619 = phi float [ 0.000000e+00, %9590 ], [ %9615, %9599 ]
  %9620 = phi float [ 0.000000e+00, %9590 ], [ %9616, %9599 ]
  %9621 = phi float [ 0.000000e+00, %9590 ], [ %9617, %9599 ]
  %9622 = fmul fast float %9619, %8196
  %9623 = fmul fast float %9620, %8196
  %9624 = fmul fast float %9621, %8196
  %9625 = fmul fast float %9592, %9254
  %9626 = call float @dx.op.dot3.f32(i32 55, float %9592, float %9592, float %9592, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9627 = call float @dx.op.dot3.f32(i32 55, float %9622, float %9623, float %9624, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9628 = select i1 %273, float %9626, float %9592
  %9629 = select i1 %273, float 1.000000e+00, float %9592
  %9630 = select i1 %273, float %9627, float %9622
  %9631 = select i1 %273, float 0.000000e+00, float %9623
  %9632 = select i1 %273, float 0.000000e+00, float %9624
  %9633 = fmul fast float %9628, %9266
  %9634 = fmul fast float %9628, %9267
  %9635 = fmul fast float %9629, %9268
  %9636 = fadd fast float %9633, %9630
  %9637 = fadd fast float %9634, %9631
  %9638 = fadd fast float %9632, %9635
  %9639 = fmul fast float %9628, %9269
  %9640 = fmul fast float %9628, %9270
  %9641 = fmul fast float %9629, %9271
  br label %9642

; <label>:9642                                    ; preds = %9618, %9275, %9244, %8476
  %9643 = phi float [ %8481, %8476 ], [ %9266, %9244 ], [ %9636, %9618 ], [ %9266, %9275 ]
  %9644 = phi float [ %8482, %8476 ], [ %9267, %9244 ], [ %9637, %9618 ], [ %9267, %9275 ]
  %9645 = phi float [ %8483, %8476 ], [ %9268, %9244 ], [ %9638, %9618 ], [ %9268, %9275 ]
  %9646 = phi float [ %8484, %8476 ], [ %9269, %9244 ], [ %9639, %9618 ], [ %9269, %9275 ]
  %9647 = phi float [ %8485, %8476 ], [ %9270, %9244 ], [ %9640, %9618 ], [ %9270, %9275 ]
  %9648 = phi float [ %8486, %8476 ], [ %9271, %9244 ], [ %9641, %9618 ], [ %9271, %9275 ]
  %9649 = phi float [ %8487, %8476 ], [ %9254, %9244 ], [ %9625, %9618 ], [ %9254, %9275 ]
  %9650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9651 = extractvalue %dx.types.CBufRet.f32 %9650, 2
  %9652 = extractvalue %dx.types.CBufRet.f32 %9650, 3
  %9653 = fmul fast float %9651, %116
  %9654 = fmul fast float %9652, %117
  %9655 = call float @dx.op.unary.f32(i32 7, float %9653)  ; Saturate(value)
  %9656 = call float @dx.op.unary.f32(i32 7, float %9654)  ; Saturate(value)
  %9657 = select i1 %8218, i32 2, i32 0
  %9658 = or i32 %9657, 1
  %9659 = uitofp i32 %9658 to float
  %9660 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9655, float %9656, float %9659, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9661 = extractvalue %dx.types.ResRet.f32 %9660, 0
  %9662 = extractvalue %dx.types.ResRet.f32 %9660, 1
  %9663 = extractvalue %dx.types.ResRet.f32 %9660, 2
  %9664 = extractvalue %dx.types.ResRet.f32 %9660, 3
  %9665 = add nuw nsw i32 %9657, 2
  %9666 = uitofp i32 %9665 to float
  %9667 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9655, float %9656, float %9666, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9668 = extractvalue %dx.types.ResRet.f32 %9667, 0
  %9669 = extractvalue %dx.types.ResRet.f32 %9667, 1
  %9670 = extractvalue %dx.types.ResRet.f32 %9667, 2
  %9671 = extractvalue %dx.types.ResRet.f32 %9667, 3
  %9672 = call float @dx.op.binary.f32(i32 35, float %9662, float %9663)  ; FMax(a,b)
  %9673 = call float @dx.op.binary.f32(i32 35, float %9661, float %9672)  ; FMax(a,b)
  %9674 = call float @dx.op.binary.f32(i32 35, float %9673, float %9664)  ; FMax(a,b)
  %9675 = call float @dx.op.binary.f32(i32 36, float %9669, float %9670)  ; FMin(a,b)
  %9676 = call float @dx.op.binary.f32(i32 36, float %9668, float %9675)  ; FMin(a,b)
  %9677 = call float @dx.op.binary.f32(i32 36, float %9676, float %9671)  ; FMin(a,b)
  %9678 = fmul fast float %9674, 2.550000e+02
  %9679 = fadd fast float %9678, 0x3F70101020000000
  %9680 = fptoui float %9679 to i32
  %9681 = fmul fast float %9677, 2.550000e+02
  %9682 = fadd fast float %9681, 0x3F70101020000000
  %9683 = fptoui float %9682 to i32
  %9684 = icmp ult i32 %9680, %9683
  br i1 %9684, label %9685, label %9854

; <label>:9685                                    ; preds = %9642
  %9686 = fcmp fast ogt float %102, 9.843750e-01
  %9687 = fadd fast float %8480, -4.000000e+00
  %9688 = select i1 %9686, float -4.000000e+00, float %9687
  %9689 = call float @dx.op.binary.f32(i32 35, float %9688, float 0.000000e+00)  ; FMax(a,b)
  %9690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9691 = extractvalue %dx.types.CBufRet.f32 %9690, 0
  %9692 = fadd fast float %9691, %9689
  %9693 = extractvalue %dx.types.CBufRet.f32 %9690, 2
  %9694 = fmul fast float %9692, %9693
  %9695 = call float @dx.op.unary.f32(i32 23, float %9694)  ; Log(value)
  %9696 = extractvalue %dx.types.CBufRet.f32 %9690, 3
  %9697 = fmul fast float %9696, %9695
  %9698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9699 = extractvalue %dx.types.CBufRet.f32 %9698, 2
  %9700 = fmul fast float %9697, %9699
  %9701 = call float @dx.op.unary.f32(i32 7, float %9700)  ; Saturate(value)
  %9702 = uitofp i32 %9680 to float
  %9703 = uitofp i32 %9683 to float
  %9704 = fadd fast float %9702, 5.000000e-01
  %9705 = fadd fast float %9703, 5.000000e-01
  %9706 = fmul fast float %9699, %9704
  %9707 = fmul fast float %9699, %9705
  %9708 = fadd fast float %9706, 0x3F0FFB4800000000
  %9709 = fadd fast float %9707, 0xBF0FFB4800000000
  %9710 = call float @dx.op.binary.f32(i32 35, float %9701, float %9708)  ; FMax(a,b)
  %9711 = call float @dx.op.binary.f32(i32 36, float %9710, float %9709)  ; FMin(a,b)
  %9712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9713 = extractvalue %dx.types.CBufRet.f32 %9712, 1
  %9714 = extractvalue %dx.types.CBufRet.f32 %9712, 2
  %9715 = extractvalue %dx.types.CBufRet.f32 %9712, 0
  %9716 = select i1 %8218, float %9715, float 0.000000e+00
  %9717 = fmul fast float %9713, %9711
  %9718 = fadd fast float %9716, %9717
  %9719 = fadd fast float %9716, %9714
  %9720 = fsub fast float %9713, %9714
  %9721 = fadd fast float %9720, %9716
  %9722 = call float @dx.op.binary.f32(i32 35, float %9718, float %9719)  ; FMax(a,b)
  %9723 = call float @dx.op.binary.f32(i32 36, float %9722, float %9721)  ; FMin(a,b)
  %9724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %9655, float %9656, float %9723, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9725 = extractvalue %dx.types.ResRet.f32 %9724, 0
  %9726 = extractvalue %dx.types.ResRet.f32 %9724, 1
  %9727 = extractvalue %dx.types.ResRet.f32 %9724, 2
  %9728 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9729 = extractvalue %dx.types.CBufRet.i32 %9728, 0
  %9730 = extractvalue %dx.types.CBufRet.i32 %9728, 1
  %9731 = uitofp i32 %9729 to float
  %9732 = uitofp i32 %9730 to float
  %9733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9734 = extractvalue %dx.types.CBufRet.f32 %9733, 0
  %9735 = extractvalue %dx.types.CBufRet.f32 %9733, 1
  %9736 = fmul fast float %9731, %9655
  %9737 = fmul fast float %9732, %9656
  %9738 = fadd fast float %9736, -5.000000e-01
  %9739 = fadd fast float %9737, -5.000000e-01
  %9740 = call float @dx.op.unary.f32(i32 22, float %9738)  ; Frc(value)
  %9741 = call float @dx.op.unary.f32(i32 22, float %9739)  ; Frc(value)
  %9742 = fmul fast float %9740, %9740
  %9743 = fmul fast float %9742, %9740
  %9744 = fsub fast float 3.000000e+00, %9740
  %9745 = fmul fast float %9742, %9744
  %9746 = fmul fast float %9740, 3.000000e+00
  %9747 = fmul fast float %9743, 3.000000e+00
  %9748 = fmul fast float %9742, 6.000000e+00
  %9749 = fsub fast float %9747, %9748
  %9750 = fadd fast float %9749, 4.000000e+00
  %9751 = fmul fast float %9750, 0x3FC5555560000000
  %9752 = fmul fast float %9743, -3.000000e+00
  %9753 = fadd fast float %9742, %9740
  %9754 = fmul fast float %9753, 3.000000e+00
  %9755 = fadd fast float %9752, 1.000000e+00
  %9756 = fadd fast float %9755, %9754
  %9757 = fmul fast float %9743, 0x3FC5555560000000
  %9758 = fmul fast float %9741, %9741
  %9759 = fmul fast float %9758, %9741
  %9760 = fsub fast float 3.000000e+00, %9741
  %9761 = fmul fast float %9758, %9760
  %9762 = fmul fast float %9741, 3.000000e+00
  %9763 = fmul fast float %9759, 3.000000e+00
  %9764 = fmul fast float %9758, 6.000000e+00
  %9765 = fsub fast float %9763, %9764
  %9766 = fadd fast float %9765, 4.000000e+00
  %9767 = fmul fast float %9766, 0x3FC5555560000000
  %9768 = fmul fast float %9759, -3.000000e+00
  %9769 = fadd fast float %9758, %9741
  %9770 = fmul fast float %9769, 3.000000e+00
  %9771 = fadd fast float %9768, 1.000000e+00
  %9772 = fadd fast float %9771, %9770
  %9773 = fmul fast float %9759, 0x3FC5555560000000
  %9774 = fadd fast float %9740, 1.000000e+00
  %9775 = fsub fast float 1.000000e+00, %9746
  %9776 = fadd fast float %9775, %9745
  %9777 = fadd fast float %9776, %9750
  %9778 = fmul fast float %9777, 0x3FC5555560000000
  %9779 = fdiv fast float %9751, %9778
  %9780 = fsub fast float %9774, %9779
  %9781 = fsub fast float 1.000000e+00, %9740
  %9782 = fadd fast float %9756, %9743
  %9783 = fmul fast float %9782, 0x3FC5555560000000
  %9784 = fdiv fast float %9757, %9783
  %9785 = fadd fast float %9781, %9784
  %9786 = fadd fast float %9741, 1.000000e+00
  %9787 = fsub fast float 1.000000e+00, %9762
  %9788 = fadd fast float %9787, %9761
  %9789 = fadd fast float %9788, %9766
  %9790 = fmul fast float %9789, 0x3FC5555560000000
  %9791 = fdiv fast float %9767, %9790
  %9792 = fsub fast float %9786, %9791
  %9793 = fsub fast float 1.000000e+00, %9741
  %9794 = fadd fast float %9772, %9759
  %9795 = fmul fast float %9794, 0x3FC5555560000000
  %9796 = fdiv fast float %9773, %9795
  %9797 = fadd fast float %9796, %9793
  %9798 = fmul fast float %9780, %9734
  %9799 = fsub fast float %9655, %9798
  %9800 = fmul fast float %9785, %9734
  %9801 = fadd fast float %9800, %9655
  %9802 = fmul fast float %9797, %9735
  %9803 = fadd fast float %9802, %9656
  %9804 = fmul fast float %9792, %9735
  %9805 = fsub fast float %9656, %9804
  %9806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9799, float %9805, float %9723, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9807 = extractvalue %dx.types.ResRet.f32 %9806, 0
  %9808 = extractvalue %dx.types.ResRet.f32 %9806, 1
  %9809 = extractvalue %dx.types.ResRet.f32 %9806, 2
  %9810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9801, float %9805, float %9723, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9811 = extractvalue %dx.types.ResRet.f32 %9810, 0
  %9812 = extractvalue %dx.types.ResRet.f32 %9810, 1
  %9813 = extractvalue %dx.types.ResRet.f32 %9810, 2
  %9814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9799, float %9803, float %9723, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9815 = extractvalue %dx.types.ResRet.f32 %9814, 0
  %9816 = extractvalue %dx.types.ResRet.f32 %9814, 1
  %9817 = extractvalue %dx.types.ResRet.f32 %9814, 2
  %9818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9801, float %9803, float %9723, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9819 = extractvalue %dx.types.ResRet.f32 %9818, 0
  %9820 = extractvalue %dx.types.ResRet.f32 %9818, 1
  %9821 = extractvalue %dx.types.ResRet.f32 %9818, 2
  %9822 = fsub fast float %9815, %9807
  %9823 = fsub fast float %9816, %9808
  %9824 = fsub fast float %9817, %9809
  %9825 = fmul fast float %9822, %9795
  %9826 = fmul fast float %9823, %9795
  %9827 = fmul fast float %9824, %9795
  %9828 = fadd fast float %9825, %9807
  %9829 = fadd fast float %9826, %9808
  %9830 = fadd fast float %9827, %9809
  %9831 = fsub fast float %9819, %9811
  %9832 = fsub fast float %9820, %9812
  %9833 = fsub fast float %9821, %9813
  %9834 = fmul fast float %9831, %9795
  %9835 = fmul fast float %9832, %9795
  %9836 = fmul fast float %9833, %9795
  %9837 = fsub fast float %9811, %9828
  %9838 = fadd fast float %9837, %9834
  %9839 = fsub fast float %9812, %9829
  %9840 = fadd fast float %9839, %9835
  %9841 = fsub fast float %9813, %9830
  %9842 = fadd fast float %9841, %9836
  %9843 = fmul fast float %9838, %9783
  %9844 = fmul fast float %9840, %9783
  %9845 = fmul fast float %9842, %9783
  %9846 = fadd fast float %9843, %9828
  %9847 = fadd fast float %9844, %9829
  %9848 = fadd fast float %9845, %9830
  %9849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9850 = extractvalue %dx.types.CBufRet.f32 %9849, 1
  %9851 = fmul fast float %9846, %9850
  %9852 = fmul fast float %9847, %9850
  %9853 = fmul fast float %9848, %9850
  br label %9854

; <label>:9854                                    ; preds = %9685, %9642
  %9855 = phi float [ %9725, %9685 ], [ 1.000000e+00, %9642 ]
  %9856 = phi float [ %9726, %9685 ], [ 1.000000e+00, %9642 ]
  %9857 = phi float [ %9727, %9685 ], [ 1.000000e+00, %9642 ]
  %9858 = phi float [ %9851, %9685 ], [ 0.000000e+00, %9642 ]
  %9859 = phi float [ %9852, %9685 ], [ 0.000000e+00, %9642 ]
  %9860 = phi float [ %9853, %9685 ], [ 0.000000e+00, %9642 ]
  %9861 = fmul fast float %9858, %8196
  %9862 = fmul fast float %9859, %8196
  %9863 = fmul fast float %9860, %8196
  %9864 = fmul fast float %9855, %9649
  %9865 = call float @dx.op.dot3.f32(i32 55, float %9855, float %9856, float %9857, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9866 = call float @dx.op.dot3.f32(i32 55, float %9861, float %9862, float %9863, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9867 = select i1 %273, float %9865, float %9855
  %9868 = select i1 %273, float %9865, float %9856
  %9869 = select i1 %273, float 1.000000e+00, float %9857
  %9870 = select i1 %273, float %9866, float %9861
  %9871 = select i1 %273, float 0.000000e+00, float %9862
  %9872 = select i1 %273, float 0.000000e+00, float %9863
  %9873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9874 = extractvalue %dx.types.CBufRet.i32 %9873, 3
  %9875 = and i32 %9874, 3
  %9876 = icmp ne i32 %9875, 0
  %9877 = and i32 %9874, 4
  %9878 = icmp ne i32 %9877, 0
  %9879 = and i1 %9876, %9878
  %9880 = and i1 %273, %9879
  br i1 %9880, label %9881, label %9887

; <label>:9881                                    ; preds = %9854
  %9882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9883 = extractvalue %dx.types.CBufRet.f32 %9882, 1
  %9884 = fadd fast float %9864, -1.000000e+00
  %9885 = fmul fast float %9883, %9884
  %9886 = fadd fast float %9885, 1.000000e+00
  br label %9887

; <label>:9887                                    ; preds = %9881, %9854
  %9888 = phi float [ %9886, %9881 ], [ %9864, %9854 ]
  %9889 = fadd fast float %9646, %9643
  %9890 = fmul fast float %9867, %9889
  %9891 = fadd fast float %9890, %9870
  %9892 = fadd fast float %9647, %9644
  %9893 = fmul fast float %9868, %9892
  %9894 = fadd fast float %9893, %9871
  %9895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9896 = extractvalue %dx.types.CBufRet.f32 %9895, 0
  br i1 %273, label %9897, label %9921

; <label>:9897                                    ; preds = %9887
  %9898 = fadd fast float %9891, %9894
  %9899 = fmul fast float %9896, %9898
  %9900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9901 = extractvalue %dx.types.CBufRet.f32 %9900, 3
  %9902 = extractvalue %dx.types.CBufRet.f32 %8200, 1
  %9903 = fsub fast float %8205, %8199
  %9904 = fadd fast float %9903, %8206
  %9905 = fsub fast float %9904, %9902
  %9906 = extractvalue %dx.types.CBufRet.f32 %8200, 2
  %9907 = fmul fast float %9905, %9906
  %9908 = call float @dx.op.unary.f32(i32 7, float %9907)  ; Saturate(value)
  %9909 = fsub fast float %9908, %9901
  %9910 = fmul fast float %9909, %9888
  %9911 = fadd fast float %9910, %9901
  %9912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9913 = extractvalue %dx.types.CBufRet.f32 %9912, 0
  %9914 = fsub fast float %9911, %9913
  %9915 = fmul fast float %9914, 1.000000e+01
  %9916 = call float @dx.op.unary.f32(i32 7, float %9915)  ; Saturate(value)
  %9917 = fsub fast float %3889, %8196
  %9918 = fmul fast float %9916, %9917
  %9919 = fadd fast float %9918, %8196
  %9920 = fmul fast float %9919, %9911
  br label %9945

; <label>:9921                                    ; preds = %9887
  %9922 = fadd fast float %9648, %9645
  %9923 = fmul fast float %9869, %9922
  %9924 = fadd fast float %9923, %9872
  %9925 = fmul fast float %9896, %9891
  %9926 = fmul fast float %9896, %9894
  %9927 = fmul fast float %9896, %9924
  %9928 = call float @dx.op.binary.f32(i32 35, float %9926, float %9927)  ; FMax(a,b)
  %9929 = call float @dx.op.binary.f32(i32 35, float %9925, float %9928)  ; FMax(a,b)
  %9930 = call float @dx.op.binary.f32(i32 35, float %9929, float %8196)  ; FMax(a,b)
  %9931 = fcmp fast ugt float %9930, 0x3F10000000000000
  br i1 %9931, label %9933, label %9932

; <label>:9932                                    ; preds = %9921
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9933

; <label>:9933                                    ; preds = %9932, %9921
  %9934 = add i32 %61, 356
  %9935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %9934, i32 undef)  ; BufferLoad(srv,index,wot)
  %9936 = extractvalue %dx.types.ResRet.i32 %9935, 0
  %9937 = and i32 %9936, 32
  %9938 = icmp eq i32 %9937, 0
  br i1 %9938, label %9945, label %9939

; <label>:9939                                    ; preds = %9933
  %9940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9941 = extractvalue %dx.types.CBufRet.f32 %9940, 0
  %9942 = fmul fast float %9941, 0x3FE99999A0000000
  %9943 = fadd fast float %9941, %9925
  %9944 = fadd fast float %9942, %9927
  br label %9945

; <label>:9945                                    ; preds = %9939, %9933, %9897
  %9946 = phi float [ %9899, %9897 ], [ %9943, %9939 ], [ %9925, %9933 ]
  %9947 = phi float [ %9920, %9897 ], [ %9926, %9939 ], [ %9926, %9933 ]
  %9948 = phi float [ %9919, %9897 ], [ %9944, %9939 ], [ %9927, %9933 ]
  %9949 = phi float [ %9919, %9897 ], [ %8196, %9939 ], [ %8196, %9933 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9950 = call float @dx.op.binary.f32(i32 36, float %9946, float 3.225500e+04)  ; FMin(a,b)
  %9951 = call float @dx.op.binary.f32(i32 36, float %9947, float 3.225500e+04)  ; FMin(a,b)
  %9952 = call float @dx.op.binary.f32(i32 36, float %9948, float 3.225500e+04)  ; FMin(a,b)
  %9953 = call float @dx.op.binary.f32(i32 36, float %9949, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9950)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9951)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9952)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9953)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!74}
!dx.entryPoints = !{!75}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !63, !66}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!32 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!33 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!34 = !{i32 27, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !35}
!35 = !{i32 0, i32 5}
!36 = !{i32 28, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!42 = !{i32 34, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!43 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!44 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!47 = !{i32 39, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !48}
!48 = !{i32 0, i32 14}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!54 = !{i32 45, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!55 = !{i32 46, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!56 = !{i32 47, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!57 = !{i32 48, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!58 = !{i32 49, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!59 = !{i32 50, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!60 = !{i32 51, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !48}
!61 = !{i32 52, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!62 = !{i32 53, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!63 = !{!64, !65}
!64 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!65 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!66 = !{!67, !68, !69, !70, !71, !72, !73}
!67 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!68 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!69 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!70 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!71 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!72 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!73 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!74 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!75 = !{void ()* @ps_main, !"ps_main", !76, !4, !101}
!76 = !{!77, !99, null}
!77 = !{!78, !81, !82, !84, !86, !87, !88, !89, !90, !91, !92, !93, !94, !96, !97, !98}
!78 = !{i32 0, !"SV_Position", i8 9, i8 3, !79, i8 4, i32 1, i8 4, i32 0, i8 0, !80}
!79 = !{i32 0}
!80 = !{i32 3, i32 15}
!81 = !{i32 1, !"COLOR", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 1, i8 0, !80}
!82 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 2, i8 0, !83}
!83 = !{i32 3, i32 3}
!84 = !{i32 3, !"NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 3, i32 3, i8 0, !85}
!85 = !{i32 3, i32 7}
!86 = !{i32 4, !"TANGENT", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 4, i8 0, !80}
!87 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !79, i8 2, i32 1, i8 3, i32 5, i8 0, !85}
!88 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 6, i8 0, !80}
!89 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !79, i8 2, i32 1, i8 3, i32 7, i8 0, !85}
!90 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 8, i8 0, !80}
!91 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 2, i32 9, i8 0, !83}
!92 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 10, i8 0, !80}
!93 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 11, i8 0, !85}
!94 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !79, i8 1, i32 1, i8 1, i32 12, i8 0, !95}
!95 = !{i32 3, i32 1}
!96 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !79, i8 1, i32 1, i8 2, i32 12, i8 1, !95}
!97 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !79, i8 1, i32 1, i8 4, i32 13, i8 0, !95}
!98 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !79, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!99 = !{!100}
!100 = !{i32 0, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 0, i8 0, !80}
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

