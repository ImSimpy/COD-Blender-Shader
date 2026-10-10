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
; ENTITY_IDS               0    yz        13     NONE    uint    y  
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
; shader hash: f8465ab5a0bed197832d39bb30493268
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
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
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
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 16, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = icmp ne i32 %61, 0
  %63 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %106 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %107 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %108 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %109 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %110 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %111 = alloca [12 x float], align 4
  %112 = alloca [12 x float], align 4
  %113 = alloca [4 x float], align 4
  %114 = alloca [4 x float], align 4
  %115 = alloca [4 x float], align 4
  %116 = alloca [4 x float], align 4
  %117 = alloca [3 x float], align 4
  %118 = alloca [3 x float], align 4
  %119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %120 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = fmul fast float %122, %107
  %124 = fmul fast float %122, %108
  %125 = select i1 %62, float 1.000000e+00, float -1.000000e+00
  %126 = call float @dx.op.dot3.f32(i32 55, float %98, float %99, float %100, float %98, float %99, float %100)  ; Dot3(ax,ay,az,bx,by,bz)
  %127 = bitcast float %126 to i32
  %128 = ashr i32 %127, 1
  %129 = sub nsw i32 1597250115, %128
  %130 = bitcast i32 %129 to float
  %131 = fmul fast float %98, %125
  %132 = fmul fast float %131, %130
  %133 = fmul fast float %99, %125
  %134 = fmul fast float %133, %130
  %135 = fmul fast float %100, %125
  %136 = fmul fast float %135, %130
  %137 = fmul fast float %99, %96
  %138 = fmul fast float %100, %95
  %139 = fsub fast float %137, %138
  %140 = fmul fast float %100, %94
  %141 = fmul fast float %98, %96
  %142 = fsub fast float %140, %141
  %143 = fmul fast float %98, %95
  %144 = fmul fast float %99, %94
  %145 = fsub fast float %143, %144
  %146 = fmul fast float %139, %97
  %147 = fmul fast float %142, %97
  %148 = fmul fast float %145, %97
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = fcmp fast une float %150, 0.000000e+00
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 3
  %155 = fmul fast float %123, 2.000000e+00
  %156 = fmul fast float %155, %153
  %157 = fmul fast float %124, 2.000000e+00
  %158 = fmul fast float %157, %154
  %159 = fsub fast float 1.000000e+00, %156
  %160 = fsub fast float 1.000000e+00, %158
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %169 = select i1 %151, float %162, float %166
  %170 = select i1 %151, float %163, float %167
  %171 = select i1 %151, float %164, float %168
  %172 = fmul fast float %169, %159
  %173 = fmul fast float %170, %159
  %174 = fmul fast float %171, %159
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %178 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %183 = select i1 %151, float %176, float %180
  %184 = select i1 %151, float %177, float %181
  %185 = select i1 %151, float %178, float %182
  %186 = fmul fast float %183, %160
  %187 = fmul fast float %184, %160
  %188 = fmul fast float %185, %160
  %189 = fadd fast float %186, %172
  %190 = fadd fast float %187, %173
  %191 = fadd fast float %188, %174
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %195 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 0
  %198 = extractvalue %dx.types.CBufRet.f32 %196, 1
  %199 = extractvalue %dx.types.CBufRet.f32 %196, 2
  %200 = select i1 %151, float %193, float %197
  %201 = select i1 %151, float %194, float %198
  %202 = select i1 %151, float %195, float %199
  %203 = fadd fast float %189, %200
  %204 = fadd fast float %190, %201
  %205 = fadd fast float %191, %202
  %206 = fmul fast float %203, %110
  %207 = fmul fast float %204, %110
  %208 = fmul fast float %205, %110
  %209 = shl i32 %64, 5
  %210 = add i32 %209, 4194304
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = extractvalue %dx.types.ResRet.i32 %211, 1
  %214 = extractvalue %dx.types.ResRet.i32 %211, 2
  %215 = extractvalue %dx.types.ResRet.i32 %211, 3
  %216 = add i32 %209, 4194320
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = extractvalue %dx.types.ResRet.i32 %217, 1
  %220 = bitcast i32 %218 to float
  %221 = bitcast i32 %219 to float
  %222 = fmul fast float %123, 5.000000e-01
  %223 = fmul fast float %124, 5.000000e-01
  %224 = fptosi float %222 to i32
  %225 = fptosi float %223 to i32
  %226 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %224, i32 %225, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = lshr i32 %227, 18
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %229, 0x3F4C00EBA0000000
  %231 = call float @dx.op.unary.f32(i32 21, float %230)  ; Exp(value)
  %232 = fadd fast float %231, -1.000000e+00
  %233 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %234 = extractvalue %dx.types.Dimensions %233, 0
  %235 = sitofp i32 %234 to float
  %236 = extractvalue %dx.types.Dimensions %233, 1
  %237 = sitofp i32 %236 to float
  %238 = fcmp fast oge float %222, %235
  %239 = fcmp fast oge float %223, %237
  %240 = or i1 %238, %239
  %241 = select i1 %240, float 0x4197782600000000, float %232
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %244 = extractvalue %dx.types.CBufRet.f32 %242, 3
  %245 = fmul fast float %243, %123
  %246 = fmul fast float %244, %124
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = and i32 %248, 114688
  %250 = icmp ne i32 %249, 0
  %251 = select i1 %250, float %245, float 0.000000e+00
  %252 = select i1 %250, float %246, float 0.000000e+00
  %253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %56, float %251, float %252, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = fmul fast float %254, 2.550000e+02
  %256 = fptoui float %255 to i32
  %257 = select i1 %250, i32 %256, i32 0
  %258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.i32 %258, 3
  %260 = and i32 %259, 3
  %261 = icmp ne i32 %260, 0
  %262 = and i32 %259, 4
  %263 = icmp ne i32 %262, 0
  %264 = and i1 %261, %263
  br i1 %264, label %265, label %274

; <label>:265                                     ; preds = %0
  %266 = fmul fast float %154, %124
  %267 = fmul fast float %153, %123
  %268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %55, float %267, float %266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = fsub fast float 1.000000e+00, %269
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 0
  %273 = fcmp fast olt float %270, %272
  br label %277

; <label>:274                                     ; preds = %0
  %275 = icmp eq i32 %262, 0
  %276 = and i1 %261, %275
  br label %277

; <label>:277                                     ; preds = %274, %265
  %278 = phi i1 [ %273, %265 ], [ %276, %274 ]
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 2
  %281 = fmul fast float %280, 0x3FE3C6EF40000000
  %282 = frem fast float %123, 2.560000e+02
  %283 = frem fast float %124, 2.560000e+02
  %284 = fptoui float %282 to i32
  %285 = fptoui float %283 to i32
  %286 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %284, i32 %285, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = fadd fast float %287, %281
  %289 = call float @dx.op.unary.f32(i32 22, float %288)  ; Frc(value)
  %290 = add i32 %63, 156
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = shl i32 %292, 4
  %294 = and i32 %293, 32752
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %292, 7
  %297 = and i32 %296, 32752
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %292, 22
  %300 = shl nuw nsw i32 %299, 5
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = add i32 %63, 216
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 255
  %306 = uitofp i32 %305 to float
  %307 = fmul fast float %306, 0x3F70101020000000
  %308 = lshr i32 %304, 8
  %309 = and i32 %308, 255
  %310 = uitofp i32 %309 to float
  %311 = fmul fast float %310, 0x3F70101020000000
  %312 = lshr i32 %304, 16
  %313 = and i32 %312, 255
  %314 = uitofp i32 %313 to float
  %315 = fmul fast float %314, 0x3F70101020000000
  %316 = add i32 %63, 36
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 65535
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %318, 16
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = add i32 %63, 288
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 65535
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %325, 16
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = fmul fast float %327, 0x3F50624DE0000000
  %331 = fmul fast float %329, 0x3F50624DE0000000
  %332 = add i32 %63, 172
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = shl i32 %334, 4
  %336 = and i32 %335, 32752
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = lshr i32 %334, 7
  %339 = and i32 %338, 32752
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %334, 22
  %342 = shl nuw nsw i32 %341, 5
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = add i32 %63, 232
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = lshr i32 %346, 8
  %351 = and i32 %350, 255
  %352 = uitofp i32 %351 to float
  %353 = fmul fast float %352, 0x3F70101020000000
  %354 = lshr i32 %346, 16
  %355 = and i32 %354, 255
  %356 = uitofp i32 %355 to float
  %357 = fmul fast float %356, 0x3F70101020000000
  %358 = add i32 %63, 52
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = and i32 %360, 65535
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = lshr i32 %360, 16
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = add i32 %63, 304
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 65535
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %367, 16
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = fmul fast float %369, 0x3F50624DE0000000
  %373 = fmul fast float %371, 0x3F50624DE0000000
  %374 = add i32 %63, 188
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = shl i32 %376, 4
  %378 = and i32 %377, 32752
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = lshr i32 %376, 7
  %381 = and i32 %380, 32752
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = lshr i32 %376, 22
  %384 = shl nuw nsw i32 %383, 5
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = add i32 %63, 248
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 255
  %390 = uitofp i32 %389 to float
  %391 = fmul fast float %390, 0x3F70101020000000
  %392 = lshr i32 %388, 8
  %393 = and i32 %392, 255
  %394 = uitofp i32 %393 to float
  %395 = fmul fast float %394, 0x3F70101020000000
  %396 = lshr i32 %388, 16
  %397 = and i32 %396, 255
  %398 = uitofp i32 %397 to float
  %399 = fmul fast float %398, 0x3F70101020000000
  %400 = add i32 %63, 68
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 65535
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = lshr i32 %402, 16
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = add i32 %63, 320
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 65535
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = lshr i32 %409, 16
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = fmul fast float %411, 0x3F50624DE0000000
  %415 = fmul fast float %413, 0x3F50624DE0000000
  %416 = add i32 %63, 204
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = shl i32 %418, 4
  %420 = and i32 %419, 32752
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = lshr i32 %418, 7
  %423 = and i32 %422, 32752
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = lshr i32 %418, 22
  %426 = shl nuw nsw i32 %425, 5
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = add i32 %63, 264
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 255
  %432 = uitofp i32 %431 to float
  %433 = fmul fast float %432, 0x3F70101020000000
  %434 = lshr i32 %430, 8
  %435 = and i32 %434, 255
  %436 = uitofp i32 %435 to float
  %437 = fmul fast float %436, 0x3F70101020000000
  %438 = lshr i32 %430, 16
  %439 = and i32 %438, 255
  %440 = uitofp i32 %439 to float
  %441 = fmul fast float %440, 0x3F70101020000000
  %442 = add i32 %63, 84
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 65535
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = lshr i32 %444, 16
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = add i32 %63, 336
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 65535
  %453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %452)  ; LegacyF16ToF32(value)
  %454 = lshr i32 %451, 16
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = fmul fast float %453, 0x3F50624DE0000000
  %457 = fmul fast float %455, 0x3F50624DE0000000
  %458 = add i32 %63, 348
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = and i32 %460, 32
  %462 = icmp eq i32 %461, 0
  %463 = and i32 %460, 64
  %464 = icmp eq i32 %463, 0
  %465 = and i32 %460, 128
  %466 = icmp eq i32 %465, 0
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = and i32 %468, 2
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %486, label %471

; <label>:471                                     ; preds = %277
  %472 = add i32 %63, 492
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = add i32 %474, 0
  %476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %477 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %476, %dx.types.Handle %120, float %101, float %102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = extractvalue %dx.types.ResRet.f32 %477, 1
  %480 = extractvalue %dx.types.ResRet.f32 %477, 2
  %481 = extractvalue %dx.types.ResRet.f32 %477, 3
  %482 = fmul fast float %481, %103
  %483 = fmul fast float %478, %104
  %484 = fmul fast float %479, %105
  %485 = fmul fast float %480, %106
  br label %486

; <label>:486                                     ; preds = %471, %277
  %487 = phi float [ %106, %277 ], [ %485, %471 ]
  %488 = phi float [ %105, %277 ], [ %484, %471 ]
  %489 = phi float [ %104, %277 ], [ %483, %471 ]
  %490 = phi float [ %103, %277 ], [ %482, %471 ]
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = and i32 %492, 2
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %514, label %495

; <label>:495                                     ; preds = %486
  %496 = add i32 %63, 44
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = and i32 %498, 1
  %500 = icmp ne i32 %499, 0
  %501 = select i1 %500, float %489, float 1.000000e+00
  %502 = add i32 %63, 60
  %503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.i32 %503, 0
  %505 = and i32 %504, 1
  %506 = icmp ne i32 %505, 0
  %507 = select i1 %506, float %488, float 1.000000e+00
  %508 = add i32 %63, 76
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = and i32 %510, 1
  %512 = icmp ne i32 %511, 0
  %513 = select i1 %512, float %487, float 1.000000e+00
  br label %514

; <label>:514                                     ; preds = %495, %486
  %515 = phi float [ %487, %486 ], [ %513, %495 ]
  %516 = phi float [ %488, %486 ], [ %507, %495 ]
  %517 = phi float [ %489, %486 ], [ %501, %495 ]
  %518 = lshr i32 %492, 20
  %519 = and i32 %518, 3
  %520 = add nuw nsw i32 %519, 1
  %521 = add i32 %63, 24
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = add i32 %63, 28
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = or i32 %526, %523
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %1063, label %529

; <label>:529                                     ; preds = %514
  %530 = and i32 %523, 262144
  %531 = icmp ne i32 %530, 0
  %532 = select i1 %531, float %69, float 1.000000e+00
  %533 = select i1 %531, float %70, float 0.000000e+00
  %534 = select i1 %531, float %71, float 0.000000e+00
  %535 = select i1 %531, float %72, float 1.000000e+00
  %536 = select i1 %531, float %73, float %101
  %537 = select i1 %531, float %74, float %102
  %538 = add i32 %63, 284
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = lshr i32 %540, 16
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = fmul fast float %542, 0x3F50624DE0000000
  %544 = add i32 %63, 88
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = lshr i32 %546, 16
  %548 = and i32 %547, 255
  %549 = lshr i32 %546, 24
  %550 = add i32 %63, 292
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = and i32 %552, 65535
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = lshr i32 %552, 16
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = add i32 %63, 32
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = lshr i32 %559, 22
  %561 = shl nuw nsw i32 %560, 5
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = shl i32 %559, 4
  %564 = and i32 %563, 32752
  %565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %564)  ; LegacyF16ToF32(value)
  %566 = lshr i32 %559, 7
  %567 = and i32 %566, 32752
  %568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %567)  ; LegacyF16ToF32(value)
  %569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.f32 %569, 3
  %571 = fmul fast float %570, 1.000000e+03
  %572 = fmul fast float %330, %571
  %573 = call float @dx.op.unary.f32(i32 22, float %572)  ; Frc(value)
  %574 = fadd fast float %573, %320
  %575 = fmul fast float %331, %571
  %576 = call float @dx.op.unary.f32(i32 22, float %575)  ; Frc(value)
  %577 = fadd fast float %576, %322
  %578 = fmul fast float %543, %571
  %579 = call float @dx.op.unary.f32(i32 22, float %578)  ; Frc(value)
  %580 = fmul fast float %579, 0x401921FB60000000
  %581 = fadd fast float %580, %562
  %582 = call float @dx.op.unary.f32(i32 13, float %581)  ; Sin(value)
  %583 = call float @dx.op.unary.f32(i32 12, float %581)  ; Cos(value)
  %584 = fsub fast float -0.000000e+00, %582
  %585 = fadd fast float %536, -5.000000e-01
  %586 = fadd fast float %537, -5.000000e-01
  %587 = fmul fast float %554, %585
  %588 = fmul fast float %556, %586
  %589 = fadd fast float %587, 5.000000e-01
  %590 = fadd fast float %588, 5.000000e-01
  %591 = fmul fast float %565, %589
  %592 = fmul fast float %568, %590
  %593 = fmul fast float %583, %591
  %594 = call float @dx.op.tertiary.f32(i32 46, float %584, float %592, float %593)  ; FMad(a,b,c)
  %595 = fmul fast float %582, %591
  %596 = call float @dx.op.tertiary.f32(i32 46, float %583, float %592, float %595)  ; FMad(a,b,c)
  %597 = fadd fast float %574, %594
  %598 = fadd fast float %577, %596
  %599 = icmp ugt i32 %548, 1
  %600 = icmp ugt i32 %546, 33554431
  %601 = or i1 %600, %599
  br i1 %601, label %602, label %627

; <label>:602                                     ; preds = %529
  %603 = add i32 %63, 228
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = lshr i32 %605, 16
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = fmul fast float %570, %607
  %609 = call float @dx.op.unary.f32(i32 22, float %608)  ; Frc(value)
  %610 = mul nuw nsw i32 %548, %549
  %611 = uitofp i32 %610 to float
  %612 = fmul fast float %609, %611
  %613 = call float @dx.op.unary.f32(i32 27, float %612)  ; Round_ni(value)
  %614 = fptoui float %613 to i32
  %615 = urem i32 %614, %548
  %616 = udiv i32 %614, %549
  %617 = call float @dx.op.unary.f32(i32 22, float %597)  ; Frc(value)
  %618 = call float @dx.op.unary.f32(i32 22, float %598)  ; Frc(value)
  %619 = uitofp i32 %615 to float
  %620 = uitofp i32 %616 to float
  %621 = fadd fast float %617, %619
  %622 = fadd fast float %618, %620
  %623 = uitofp i32 %548 to float
  %624 = uitofp i32 %549 to float
  %625 = fdiv fast float %621, %623
  %626 = fdiv fast float %622, %624
  br label %627

; <label>:627                                     ; preds = %602, %529
  %628 = phi float [ %625, %602 ], [ %597, %529 ]
  %629 = phi float [ %626, %602 ], [ %598, %529 ]
  %630 = and i32 %523, 256
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %678, label %632

; <label>:632                                     ; preds = %627
  %633 = add i32 %63, 440
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = add i32 %635, 0
  %637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %638 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %637, %dx.types.Handle %120, float %628, float %629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %639 = extractvalue %dx.types.ResRet.f32 %638, 0
  %640 = add i32 %63, 100
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = shl i32 %642, 4
  %644 = and i32 %643, 32752
  %645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %644)  ; LegacyF16ToF32(value)
  %646 = lshr i32 %642, 7
  %647 = and i32 %646, 32752
  %648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %647)  ; LegacyF16ToF32(value)
  %649 = fsub fast float 1.000000e+00, %490
  %650 = call float @dx.op.binary.f32(i32 35, float %649, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %651 = bitcast float %490 to i32
  %652 = sitofp i32 %651 to float
  %653 = fadd fast float %652, 0xC1CFBF8940000000
  %654 = fmul fast float %648, %653
  %655 = fadd fast float %654, 0x41CFBF8940000000
  %656 = fptosi float %655 to i32
  %657 = bitcast i32 %656 to float
  %658 = bitcast float %650 to i32
  %659 = sitofp i32 %658 to float
  %660 = fadd fast float %659, 0xC1CFBF8940000000
  %661 = fmul fast float %660, %648
  %662 = fadd fast float %661, 0x41CFBF8940000000
  %663 = fptosi float %662 to i32
  %664 = bitcast i32 %663 to float
  %665 = fmul fast float %657, %645
  %666 = fmul fast float %664, %645
  %667 = fsub fast float %650, %665
  %668 = fadd fast float %666, %650
  %669 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  %670 = call float @dx.op.unary.f32(i32 7, float %668)  ; Saturate(value)
  %671 = fsub fast float %639, %669
  %672 = fsub fast float %670, %669
  %673 = bitcast float %672 to i32
  %674 = sub nsw i32 2129859010, %673
  %675 = bitcast i32 %674 to float
  %676 = fmul fast float %675, %671
  %677 = call float @dx.op.unary.f32(i32 7, float %676)  ; Saturate(value)
  br label %678

; <label>:678                                     ; preds = %632, %627
  %679 = phi float [ %677, %632 ], [ %490, %627 ]
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = and i32 %681, 128
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %700, label %684

; <label>:684                                     ; preds = %678
  %685 = add i32 %63, 424
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %685, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = add i32 %687, 0
  %689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %688, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %690 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %689, %dx.types.Handle %120, float %628, float %629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %691 = extractvalue %dx.types.ResRet.f32 %690, 0
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = and i32 %693, 524288
  %695 = icmp ne i32 %694, 0
  %696 = fcmp fast ogt float %691, 0x3FE0101020000000
  %697 = select i1 %696, float 1.000000e+00, float 0.000000e+00
  %698 = select i1 %695, float %697, float %691
  %699 = fmul fast float %698, %679
  br label %700

; <label>:700                                     ; preds = %684, %678
  %701 = phi float [ %699, %684 ], [ %679, %678 ]
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = and i32 %703, 16
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %904, label %706

; <label>:706                                     ; preds = %700
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = add i32 %63, 376
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = add i32 %711, 0
  %713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %712, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %714 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %713, %dx.types.Handle %119, float %628, float %629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  %716 = extractvalue %dx.types.ResRet.f32 %714, 1
  %717 = extractvalue %dx.types.ResRet.f32 %714, 2
  %718 = extractvalue %dx.types.ResRet.f32 %714, 3
  %719 = and i32 %708, 255
  %720 = uitofp i32 %719 to float
  %721 = lshr i32 %708, 8
  %722 = and i32 %721, 255
  %723 = uitofp i32 %722 to float
  %724 = fmul fast float %718, %720
  %725 = fadd fast float %724, %723
  %726 = fmul fast float %725, 0x3F70101000000000
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = and i32 %728, 512
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %739, label %731

; <label>:731                                     ; preds = %706
  %732 = add i32 %63, 460
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = add i32 %734, 0
  %736 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %735, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %737 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %736, %dx.types.Handle %120, float %628, float %629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %738 = extractvalue %dx.types.ResRet.f32 %737, 0
  br label %739

; <label>:739                                     ; preds = %731, %706
  %740 = phi float [ %738, %731 ], [ 1.000000e+00, %706 ]
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = and i32 %742, 33554432
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %851, label %745

; <label>:745                                     ; preds = %739
  %746 = add i32 %63, 224
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = and i32 %748, 65535
  %750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %749)  ; LegacyF16ToF32(value)
  %751 = lshr i32 %748, 16
  %752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %751)  ; LegacyF16ToF32(value)
  %753 = add i32 %63, 228
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = and i32 %755, 65535
  %757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %756)  ; LegacyF16ToF32(value)
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = lshr i32 %759, 24
  %761 = uitofp i32 %760 to float
  %762 = fmul fast float %761, 0x3F70101020000000
  %763 = and i32 %759, 255
  %764 = uitofp i32 %763 to float
  %765 = fmul fast float %764, 0x3F70101020000000
  %766 = lshr i32 %759, 8
  %767 = and i32 %766, 255
  %768 = uitofp i32 %767 to float
  %769 = fmul fast float %768, 0x3F70101020000000
  %770 = lshr i32 %759, 16
  %771 = and i32 %770, 255
  %772 = uitofp i32 %771 to float
  %773 = fmul fast float %772, 0x3F70101020000000
  %774 = add i32 %63, 220
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = lshr i32 %776, 24
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %778, 0x3F70101020000000
  %780 = and i32 %776, 255
  %781 = uitofp i32 %780 to float
  %782 = fmul fast float %781, 0x3F70101020000000
  %783 = lshr i32 %776, 8
  %784 = and i32 %783, 255
  %785 = uitofp i32 %784 to float
  %786 = fmul fast float %785, 0x3F70101020000000
  %787 = lshr i32 %776, 16
  %788 = and i32 %787, 255
  %789 = uitofp i32 %788 to float
  %790 = fmul fast float %789, 0x3F70101020000000
  %791 = bitcast float %715 to i32
  %792 = ashr i32 %791, 1
  %793 = sub nsw i32 1597463174, %792
  %794 = bitcast i32 %793 to float
  %795 = fmul fast float %715, 5.000000e-01
  %796 = fmul fast float %794, %794
  %797 = fmul fast float %796, %795
  %798 = fsub fast float 1.500000e+00, %797
  %799 = fmul fast float %794, %715
  %800 = fmul fast float %799, %798
  %801 = bitcast float %716 to i32
  %802 = ashr i32 %801, 1
  %803 = sub nsw i32 1597463174, %802
  %804 = bitcast i32 %803 to float
  %805 = fmul fast float %716, 5.000000e-01
  %806 = fmul fast float %804, %804
  %807 = fmul fast float %806, %805
  %808 = fsub fast float 1.500000e+00, %807
  %809 = fmul fast float %804, %716
  %810 = fmul fast float %809, %808
  %811 = bitcast float %717 to i32
  %812 = ashr i32 %811, 1
  %813 = sub nsw i32 1597463174, %812
  %814 = bitcast i32 %813 to float
  %815 = fmul fast float %717, 5.000000e-01
  %816 = fmul fast float %814, %814
  %817 = fmul fast float %816, %815
  %818 = fsub fast float 1.500000e+00, %817
  %819 = fmul fast float %814, %717
  %820 = fmul fast float %819, %818
  %821 = fsub fast float %800, %782
  %822 = fsub fast float %810, %786
  %823 = fsub fast float %820, %790
  %824 = fmul fast float %821, %750
  %825 = fmul fast float %822, %752
  %826 = fmul fast float %823, %757
  %827 = fadd fast float %824, %765
  %828 = fadd fast float %825, %769
  %829 = fadd fast float %826, %773
  %830 = call float @dx.op.unary.f32(i32 7, float %827)  ; Saturate(value)
  %831 = call float @dx.op.unary.f32(i32 7, float %828)  ; Saturate(value)
  %832 = call float @dx.op.unary.f32(i32 7, float %829)  ; Saturate(value)
  %833 = fmul fast float %830, %830
  %834 = fmul fast float %831, %831
  %835 = fmul fast float %832, %832
  %836 = fsub fast float %833, %715
  %837 = fsub fast float %834, %716
  %838 = fsub fast float %835, %717
  %839 = fmul fast float %836, %740
  %840 = fmul fast float %837, %740
  %841 = fmul fast float %838, %740
  %842 = fadd fast float %839, %715
  %843 = fadd fast float %840, %716
  %844 = fadd fast float %841, %717
  %845 = fadd fast float %762, %726
  %846 = fsub fast float %845, %779
  %847 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  %848 = fsub fast float %847, %726
  %849 = fmul fast float %848, %740
  %850 = fadd fast float %849, %726
  br label %904

; <label>:851                                     ; preds = %739
  %852 = and i32 %742, 134217728
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %888, label %854

; <label>:854                                     ; preds = %851
  %855 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %856 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %857 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %858 = fadd fast float %855, -5.000000e-01
  %859 = fadd fast float %856, -5.000000e-01
  %860 = fadd fast float %857, -5.000000e-01
  %861 = fmul fast float %858, %740
  %862 = fmul fast float %859, %740
  %863 = fmul fast float %860, %740
  %864 = fadd fast float %861, 5.000000e-01
  %865 = fadd fast float %862, 5.000000e-01
  %866 = fadd fast float %863, 5.000000e-01
  %867 = call float @dx.op.unary.f32(i32 24, float %715)  ; Sqrt(value)
  %868 = call float @dx.op.unary.f32(i32 24, float %716)  ; Sqrt(value)
  %869 = call float @dx.op.unary.f32(i32 24, float %717)  ; Sqrt(value)
  %870 = fmul fast float %864, 2.000000e+00
  %871 = fsub fast float 1.000000e+00, %870
  %872 = fmul fast float %871, %867
  %873 = fadd fast float %872, %870
  %874 = fmul fast float %873, %867
  %875 = fmul fast float %865, 2.000000e+00
  %876 = fsub fast float 1.000000e+00, %875
  %877 = fmul fast float %876, %868
  %878 = fadd fast float %877, %875
  %879 = fmul fast float %878, %868
  %880 = fmul fast float %866, 2.000000e+00
  %881 = fsub fast float 1.000000e+00, %880
  %882 = fmul fast float %881, %869
  %883 = fadd fast float %882, %880
  %884 = fmul fast float %883, %869
  %885 = fmul fast float %874, %874
  %886 = fmul fast float %879, %879
  %887 = fmul fast float %884, %884
  br label %904

; <label>:888                                     ; preds = %851
  %889 = fmul fast float %307, %307
  %890 = fmul fast float %311, %311
  %891 = fmul fast float %315, %315
  %892 = fadd fast float %889, -1.000000e+00
  %893 = fadd fast float %890, -1.000000e+00
  %894 = fadd fast float %891, -1.000000e+00
  %895 = fmul fast float %740, %892
  %896 = fmul fast float %740, %893
  %897 = fmul fast float %740, %894
  %898 = fadd fast float %895, 1.000000e+00
  %899 = fadd fast float %896, 1.000000e+00
  %900 = fadd fast float %897, 1.000000e+00
  %901 = fmul fast float %898, %715
  %902 = fmul fast float %899, %716
  %903 = fmul fast float %900, %717
  br label %904

; <label>:904                                     ; preds = %888, %854, %745, %700
  %905 = phi float [ %850, %745 ], [ %726, %854 ], [ %726, %888 ], [ 0x3FA23C0BE0000000, %700 ]
  %906 = phi float [ %842, %745 ], [ %885, %854 ], [ %901, %888 ], [ 1.000000e+00, %700 ]
  %907 = phi float [ %843, %745 ], [ %886, %854 ], [ %902, %888 ], [ 1.000000e+00, %700 ]
  %908 = phi float [ %844, %745 ], [ %887, %854 ], [ %903, %888 ], [ 1.000000e+00, %700 ]
  %909 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %910 = extractvalue %dx.types.CBufRet.i32 %909, 1
  %911 = and i32 %910, 1
  %912 = icmp ne i32 %911, 0
  %913 = add i32 %63, 356
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = and i32 %915, 32
  %917 = icmp ne i32 %916, 0
  %918 = and i1 %912, %917
  %919 = select i1 %918, float 1.000000e+00, float %906
  %920 = select i1 %918, float 0x3FD3333340000000, float %907
  %921 = select i1 %918, float 0x3FD3333340000000, float %908
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = and i32 %923, 32
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %998, label %926

; <label>:926                                     ; preds = %904
  %927 = add i32 %63, 92
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = add i32 %63, 392
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = add i32 %932, 0
  %934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %933, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %935 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %934, %dx.types.Handle %119, float %628, float %629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  %937 = extractvalue %dx.types.ResRet.f32 %935, 1
  %938 = extractvalue %dx.types.ResRet.f32 %935, 2
  %939 = extractvalue %dx.types.ResRet.f32 %935, 3
  %940 = and i32 %929, 255
  %941 = uitofp i32 %940 to float
  %942 = lshr i32 %929, 8
  %943 = and i32 %942, 255
  %944 = uitofp i32 %943 to float
  %945 = lshr i32 %929, 16
  %946 = and i32 %945, 255
  %947 = uitofp i32 %946 to float
  %948 = fmul fast float %947, 0x3F70101000000000
  %949 = fmul fast float %936, %941
  %950 = fadd fast float %949, %944
  %951 = fmul fast float %950, 0x3F70101000000000
  %952 = fadd fast float %937, -5.000000e-01
  %953 = fadd fast float %939, -5.000000e-01
  %954 = fmul fast float %952, %948
  %955 = fmul fast float %953, %948
  %956 = fadd fast float %954, 5.000000e-01
  %957 = fadd fast float %955, 5.000000e-01
  %958 = fmul fast float %956, 2.000000e+00
  %959 = fadd fast float %958, -1.000000e+00
  %960 = fmul fast float %957, 2.000000e+00
  %961 = fadd fast float %960, -1.000000e+00
  %962 = fadd fast float %959, %961
  %963 = fmul fast float %962, 5.000000e-01
  %964 = fsub fast float %959, %961
  %965 = fmul fast float %964, 5.000000e-01
  %966 = call float @dx.op.unary.f32(i32 6, float %963)  ; FAbs(value)
  %967 = fsub fast float 1.000000e+00, %966
  %968 = call float @dx.op.unary.f32(i32 6, float %965)  ; FAbs(value)
  %969 = fsub fast float %967, %968
  %970 = call float @dx.op.dot3.f32(i32 55, float %963, float %965, float %969, float %963, float %965, float %969)  ; Dot3(ax,ay,az,bx,by,bz)
  %971 = call float @dx.op.unary.f32(i32 25, float %970)  ; Rsqrt(value)
  %972 = fmul fast float %963, %971
  %973 = fmul fast float %965, %971
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = and i32 %975, 67108864
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %994, label %978

; <label>:978                                     ; preds = %926
  %979 = add i32 %63, 280
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = and i32 %981, 65535
  %983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %982)  ; LegacyF16ToF32(value)
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = and i32 %985, 65535
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = lshr i32 %981, 16
  %989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %988)  ; LegacyF16ToF32(value)
  %990 = fsub fast float %951, %989
  %991 = fmul fast float %990, %983
  %992 = fadd fast float %991, %987
  %993 = call float @dx.op.unary.f32(i32 7, float %992)  ; Saturate(value)
  br label %994

; <label>:994                                     ; preds = %978, %926
  %995 = phi float [ %993, %978 ], [ %951, %926 ]
  %996 = call float @dx.op.dot2.f32(i32 54, float %972, float %973, float %532, float %533)  ; Dot2(ax,ay,bx,by)
  %997 = call float @dx.op.dot2.f32(i32 54, float %972, float %973, float %534, float %535)  ; Dot2(ax,ay,bx,by)
  br label %998

; <label>:998                                     ; preds = %994, %904
  %999 = phi float [ %995, %994 ], [ 0x3FD6666660000000, %904 ]
  %1000 = phi float [ %996, %994 ], [ 0.000000e+00, %904 ]
  %1001 = phi float [ %997, %994 ], [ 0.000000e+00, %904 ]
  %1002 = phi float [ %938, %994 ], [ 1.000000e+00, %904 ]
  %1003 = add i32 %63, 160
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = lshr i32 %1005, 22
  %1007 = shl nuw nsw i32 %1006, 5
  %1008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1007)  ; LegacyF16ToF32(value)
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = and i32 %1010, 64
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1046, label %1013

; <label>:1013                                    ; preds = %998
  %1014 = add i32 %63, 408
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = add i32 %1016, 0
  %1018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1017, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = and i32 %1020, 131072
  %1022 = icmp eq i32 %1021, 0
  %1023 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1018, %dx.types.Handle %119, float %628, float %629, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1024 = extractvalue %dx.types.ResRet.f32 %1023, 0
  %1025 = extractvalue %dx.types.ResRet.f32 %1023, 1
  %1026 = extractvalue %dx.types.ResRet.f32 %1023, 2
  %1027 = fmul fast float %1024, %295
  %1028 = fmul fast float %1025, %298
  %1029 = fmul fast float %1026, %301
  br i1 %1022, label %1036, label %1030

; <label>:1030                                    ; preds = %1013
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 0
  %1033 = fmul fast float %1032, %1027
  %1034 = fmul fast float %1032, %1028
  %1035 = fmul fast float %1032, %1029
  br label %1036

; <label>:1036                                    ; preds = %1030, %1013
  %1037 = phi float [ %1033, %1030 ], [ %1027, %1013 ]
  %1038 = phi float [ %1034, %1030 ], [ %1028, %1013 ]
  %1039 = phi float [ %1035, %1030 ], [ %1029, %1013 ]
  %1040 = fmul fast float %1037, %1008
  %1041 = select i1 %278, float %1040, float %1037
  %1042 = call float @dx.op.dot3.f32(i32 55, float %1041, float %1038, float %1039, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1043 = select i1 %278, float 0.000000e+00, float %1037
  %1044 = select i1 %278, float %1042, float %1038
  %1045 = select i1 %278, float 0.000000e+00, float %1039
  br label %1046

; <label>:1046                                    ; preds = %1036, %998
  %1047 = phi float [ %1043, %1036 ], [ 0.000000e+00, %998 ]
  %1048 = phi float [ %1044, %1036 ], [ 0.000000e+00, %998 ]
  %1049 = phi float [ %1045, %1036 ], [ 0.000000e+00, %998 ]
  %1050 = add i32 %63, 96
  %1051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.i32 %1051, 0
  %1053 = and i32 %1052, 255
  %1054 = uitofp i32 %1053 to float
  %1055 = lshr i32 %1052, 8
  %1056 = and i32 %1055, 255
  %1057 = uitofp i32 %1056 to float
  %1058 = call float @dx.op.dot3.f32(i32 55, float %919, float %920, float %921, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1059 = fmul fast float %1057, %1058
  %1060 = fadd fast float %1059, %1054
  %1061 = fmul fast float %1060, 0x3F70101020000000
  %1062 = call float @dx.op.unary.f32(i32 7, float %1061)  ; Saturate(value)
  br label %1063

; <label>:1063                                    ; preds = %1046, %514
  %1064 = phi float [ 0.000000e+00, %514 ], [ %1000, %1046 ]
  %1065 = phi float [ 0.000000e+00, %514 ], [ %1001, %1046 ]
  %1066 = phi float [ 0.000000e+00, %514 ], [ %919, %1046 ]
  %1067 = phi float [ 0.000000e+00, %514 ], [ %920, %1046 ]
  %1068 = phi float [ 0.000000e+00, %514 ], [ %921, %1046 ]
  %1069 = phi float [ 0.000000e+00, %514 ], [ %1047, %1046 ]
  %1070 = phi float [ 0.000000e+00, %514 ], [ %1048, %1046 ]
  %1071 = phi float [ 0.000000e+00, %514 ], [ %1049, %1046 ]
  %1072 = phi float [ 0.000000e+00, %514 ], [ %905, %1046 ]
  %1073 = phi float [ 0.000000e+00, %514 ], [ %701, %1046 ]
  %1074 = phi float [ 0.000000e+00, %514 ], [ %999, %1046 ]
  %1075 = phi float [ 0.000000e+00, %514 ], [ %1002, %1046 ]
  %1076 = phi float [ 0.000000e+00, %514 ], [ %1062, %1046 ]
  br i1 %462, label %1803, label %1077

; <label>:1077                                    ; preds = %1063
  %1078 = icmp ult i32 %520, 2
  %1079 = add i32 %63, 40
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = add i32 %63, 44
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = or i32 %1084, %1081
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1803, label %1087

; <label>:1087                                    ; preds = %1077
  %1088 = and i32 %1081, 262144
  %1089 = icmp ne i32 %1088, 0
  %1090 = select i1 %1089, float %69, float 1.000000e+00
  %1091 = select i1 %1089, float %70, float 0.000000e+00
  %1092 = select i1 %1089, float %71, float 0.000000e+00
  %1093 = select i1 %1089, float %72, float 1.000000e+00
  %1094 = select i1 %1089, float %73, float %101
  %1095 = select i1 %1089, float %74, float %102
  %1096 = add i32 %63, 300
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = lshr i32 %1098, 16
  %1100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1099)  ; LegacyF16ToF32(value)
  %1101 = fmul fast float %1100, 0x3F50624DE0000000
  %1102 = add i32 %63, 104
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = lshr i32 %1104, 16
  %1106 = and i32 %1105, 255
  %1107 = lshr i32 %1104, 24
  %1108 = add i32 %63, 308
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 65535
  %1112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1111)  ; LegacyF16ToF32(value)
  %1113 = lshr i32 %1110, 16
  %1114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1113)  ; LegacyF16ToF32(value)
  %1115 = add i32 %63, 48
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = lshr i32 %1117, 22
  %1119 = shl nuw nsw i32 %1118, 5
  %1120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1119)  ; LegacyF16ToF32(value)
  %1121 = shl i32 %1117, 4
  %1122 = and i32 %1121, 32752
  %1123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1122)  ; LegacyF16ToF32(value)
  %1124 = lshr i32 %1117, 7
  %1125 = and i32 %1124, 32752
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1128 = extractvalue %dx.types.CBufRet.f32 %1127, 3
  %1129 = fmul fast float %1128, 1.000000e+03
  %1130 = fmul fast float %372, %1129
  %1131 = call float @dx.op.unary.f32(i32 22, float %1130)  ; Frc(value)
  %1132 = fadd fast float %1131, %362
  %1133 = fmul fast float %373, %1129
  %1134 = call float @dx.op.unary.f32(i32 22, float %1133)  ; Frc(value)
  %1135 = fadd fast float %1134, %364
  %1136 = fmul fast float %1101, %1129
  %1137 = call float @dx.op.unary.f32(i32 22, float %1136)  ; Frc(value)
  %1138 = fmul fast float %1137, 0x401921FB60000000
  %1139 = fadd fast float %1138, %1120
  %1140 = call float @dx.op.unary.f32(i32 13, float %1139)  ; Sin(value)
  %1141 = call float @dx.op.unary.f32(i32 12, float %1139)  ; Cos(value)
  %1142 = fsub fast float -0.000000e+00, %1140
  %1143 = fadd fast float %1094, -5.000000e-01
  %1144 = fadd fast float %1095, -5.000000e-01
  %1145 = fmul fast float %1112, %1143
  %1146 = fmul fast float %1114, %1144
  %1147 = fadd fast float %1145, 5.000000e-01
  %1148 = fadd fast float %1146, 5.000000e-01
  %1149 = fmul fast float %1123, %1147
  %1150 = fmul fast float %1126, %1148
  %1151 = fmul fast float %1141, %1149
  %1152 = call float @dx.op.tertiary.f32(i32 46, float %1142, float %1150, float %1151)  ; FMad(a,b,c)
  %1153 = fmul fast float %1140, %1149
  %1154 = call float @dx.op.tertiary.f32(i32 46, float %1141, float %1150, float %1153)  ; FMad(a,b,c)
  %1155 = fadd fast float %1132, %1152
  %1156 = fadd fast float %1135, %1154
  %1157 = icmp ugt i32 %1106, 1
  %1158 = icmp ugt i32 %1104, 33554431
  %1159 = or i1 %1158, %1157
  br i1 %1159, label %1160, label %1185

; <label>:1160                                    ; preds = %1087
  %1161 = add i32 %63, 244
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = lshr i32 %1163, 16
  %1165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1164)  ; LegacyF16ToF32(value)
  %1166 = fmul fast float %1128, %1165
  %1167 = call float @dx.op.unary.f32(i32 22, float %1166)  ; Frc(value)
  %1168 = mul nuw nsw i32 %1106, %1107
  %1169 = uitofp i32 %1168 to float
  %1170 = fmul fast float %1167, %1169
  %1171 = call float @dx.op.unary.f32(i32 27, float %1170)  ; Round_ni(value)
  %1172 = fptoui float %1171 to i32
  %1173 = urem i32 %1172, %1106
  %1174 = udiv i32 %1172, %1107
  %1175 = call float @dx.op.unary.f32(i32 22, float %1155)  ; Frc(value)
  %1176 = call float @dx.op.unary.f32(i32 22, float %1156)  ; Frc(value)
  %1177 = uitofp i32 %1173 to float
  %1178 = uitofp i32 %1174 to float
  %1179 = fadd fast float %1175, %1177
  %1180 = fadd fast float %1176, %1178
  %1181 = uitofp i32 %1106 to float
  %1182 = uitofp i32 %1107 to float
  %1183 = fdiv fast float %1179, %1181
  %1184 = fdiv fast float %1180, %1182
  br label %1185

; <label>:1185                                    ; preds = %1160, %1087
  %1186 = phi float [ %1183, %1160 ], [ %1155, %1087 ]
  %1187 = phi float [ %1184, %1160 ], [ %1156, %1087 ]
  %1188 = and i32 %1081, 256
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1236, label %1190

; <label>:1190                                    ; preds = %1185
  %1191 = add i32 %63, 444
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = add i32 %1193, 0
  %1195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1194, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1195, %dx.types.Handle %120, float %1186, float %1187, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1197 = extractvalue %dx.types.ResRet.f32 %1196, 0
  %1198 = add i32 %63, 116
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = shl i32 %1200, 4
  %1202 = and i32 %1201, 32752
  %1203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1202)  ; LegacyF16ToF32(value)
  %1204 = lshr i32 %1200, 7
  %1205 = and i32 %1204, 32752
  %1206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1205)  ; LegacyF16ToF32(value)
  %1207 = fsub fast float 1.000000e+00, %517
  %1208 = call float @dx.op.binary.f32(i32 35, float %1207, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1209 = bitcast float %517 to i32
  %1210 = sitofp i32 %1209 to float
  %1211 = fadd fast float %1210, 0xC1CFBF8940000000
  %1212 = fmul fast float %1206, %1211
  %1213 = fadd fast float %1212, 0x41CFBF8940000000
  %1214 = fptosi float %1213 to i32
  %1215 = bitcast i32 %1214 to float
  %1216 = bitcast float %1208 to i32
  %1217 = sitofp i32 %1216 to float
  %1218 = fadd fast float %1217, 0xC1CFBF8940000000
  %1219 = fmul fast float %1218, %1206
  %1220 = fadd fast float %1219, 0x41CFBF8940000000
  %1221 = fptosi float %1220 to i32
  %1222 = bitcast i32 %1221 to float
  %1223 = fmul fast float %1215, %1203
  %1224 = fmul fast float %1222, %1203
  %1225 = fsub fast float %1208, %1223
  %1226 = fadd fast float %1224, %1208
  %1227 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1228 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  %1229 = fsub fast float %1197, %1227
  %1230 = fsub fast float %1228, %1227
  %1231 = bitcast float %1230 to i32
  %1232 = sub nsw i32 2129859010, %1231
  %1233 = bitcast i32 %1232 to float
  %1234 = fmul fast float %1233, %1229
  %1235 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  br label %1236

; <label>:1236                                    ; preds = %1190, %1185
  %1237 = phi float [ %1235, %1190 ], [ %517, %1185 ]
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = and i32 %1239, 128
  %1241 = icmp eq i32 %1240, 0
  br i1 %1241, label %1258, label %1242

; <label>:1242                                    ; preds = %1236
  %1243 = add i32 %63, 428
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = add i32 %1245, 0
  %1247 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1246, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1248 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1247, %dx.types.Handle %120, float %1186, float %1187, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = and i32 %1251, 524288
  %1253 = icmp ne i32 %1252, 0
  %1254 = fcmp fast ogt float %1249, 0x3FE0101020000000
  %1255 = select i1 %1254, float 1.000000e+00, float 0.000000e+00
  %1256 = select i1 %1253, float %1255, float %1249
  %1257 = fmul fast float %1256, %1237
  br label %1258

; <label>:1258                                    ; preds = %1242, %1236
  %1259 = phi float [ %1257, %1242 ], [ %1237, %1236 ]
  %1260 = fcmp fast ult float %1259, 0x3F70101020000000
  br i1 %1260, label %1803, label %1261

; <label>:1261                                    ; preds = %1258
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = and i32 %1263, 16
  %1265 = icmp eq i32 %1264, 0
  br i1 %1265, label %1464, label %1266

; <label>:1266                                    ; preds = %1261
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = add i32 %63, 380
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = add i32 %1271, 0
  %1273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1274 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1273, %dx.types.Handle %119, float %1186, float %1187, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.ResRet.f32 %1274, 1
  %1277 = extractvalue %dx.types.ResRet.f32 %1274, 2
  %1278 = extractvalue %dx.types.ResRet.f32 %1274, 3
  %1279 = and i32 %1268, 255
  %1280 = uitofp i32 %1279 to float
  %1281 = lshr i32 %1268, 8
  %1282 = and i32 %1281, 255
  %1283 = uitofp i32 %1282 to float
  %1284 = fmul fast float %1278, %1280
  %1285 = fadd fast float %1284, %1283
  %1286 = fmul fast float %1285, 0x3F70101000000000
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = and i32 %1288, 512
  %1290 = icmp eq i32 %1289, 0
  br i1 %1290, label %1299, label %1291

; <label>:1291                                    ; preds = %1266
  %1292 = add i32 %63, 464
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = add i32 %1294, 0
  %1296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1295, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1297 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1296, %dx.types.Handle %120, float %1186, float %1187, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1298 = extractvalue %dx.types.ResRet.f32 %1297, 0
  br label %1299

; <label>:1299                                    ; preds = %1291, %1266
  %1300 = phi float [ %1298, %1291 ], [ 1.000000e+00, %1266 ]
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = and i32 %1302, 33554432
  %1304 = icmp eq i32 %1303, 0
  br i1 %1304, label %1411, label %1305

; <label>:1305                                    ; preds = %1299
  %1306 = add i32 %63, 240
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = and i32 %1308, 65535
  %1310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1309)  ; LegacyF16ToF32(value)
  %1311 = lshr i32 %1308, 16
  %1312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1311)  ; LegacyF16ToF32(value)
  %1313 = add i32 %63, 244
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = and i32 %1315, 65535
  %1317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1316)  ; LegacyF16ToF32(value)
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = lshr i32 %1319, 24
  %1321 = uitofp i32 %1320 to float
  %1322 = fmul fast float %1321, 0x3F70101020000000
  %1323 = and i32 %1319, 255
  %1324 = uitofp i32 %1323 to float
  %1325 = fmul fast float %1324, 0x3F70101020000000
  %1326 = lshr i32 %1319, 8
  %1327 = and i32 %1326, 255
  %1328 = uitofp i32 %1327 to float
  %1329 = fmul fast float %1328, 0x3F70101020000000
  %1330 = lshr i32 %1319, 16
  %1331 = and i32 %1330, 255
  %1332 = uitofp i32 %1331 to float
  %1333 = fmul fast float %1332, 0x3F70101020000000
  %1334 = add i32 %63, 236
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1334, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = lshr i32 %1336, 24
  %1338 = uitofp i32 %1337 to float
  %1339 = fmul fast float %1338, 0x3F70101020000000
  %1340 = and i32 %1336, 255
  %1341 = uitofp i32 %1340 to float
  %1342 = fmul fast float %1341, 0x3F70101020000000
  %1343 = lshr i32 %1336, 8
  %1344 = and i32 %1343, 255
  %1345 = uitofp i32 %1344 to float
  %1346 = fmul fast float %1345, 0x3F70101020000000
  %1347 = lshr i32 %1336, 16
  %1348 = and i32 %1347, 255
  %1349 = uitofp i32 %1348 to float
  %1350 = fmul fast float %1349, 0x3F70101020000000
  %1351 = bitcast float %1275 to i32
  %1352 = ashr i32 %1351, 1
  %1353 = sub nsw i32 1597463174, %1352
  %1354 = bitcast i32 %1353 to float
  %1355 = fmul fast float %1275, 5.000000e-01
  %1356 = fmul fast float %1354, %1354
  %1357 = fmul fast float %1356, %1355
  %1358 = fsub fast float 1.500000e+00, %1357
  %1359 = fmul fast float %1354, %1275
  %1360 = fmul fast float %1359, %1358
  %1361 = bitcast float %1276 to i32
  %1362 = ashr i32 %1361, 1
  %1363 = sub nsw i32 1597463174, %1362
  %1364 = bitcast i32 %1363 to float
  %1365 = fmul fast float %1276, 5.000000e-01
  %1366 = fmul fast float %1364, %1364
  %1367 = fmul fast float %1366, %1365
  %1368 = fsub fast float 1.500000e+00, %1367
  %1369 = fmul fast float %1364, %1276
  %1370 = fmul fast float %1369, %1368
  %1371 = bitcast float %1277 to i32
  %1372 = ashr i32 %1371, 1
  %1373 = sub nsw i32 1597463174, %1372
  %1374 = bitcast i32 %1373 to float
  %1375 = fmul fast float %1277, 5.000000e-01
  %1376 = fmul fast float %1374, %1374
  %1377 = fmul fast float %1376, %1375
  %1378 = fsub fast float 1.500000e+00, %1377
  %1379 = fmul fast float %1374, %1277
  %1380 = fmul fast float %1379, %1378
  %1381 = fsub fast float %1360, %1342
  %1382 = fsub fast float %1370, %1346
  %1383 = fsub fast float %1380, %1350
  %1384 = fmul fast float %1381, %1310
  %1385 = fmul fast float %1382, %1312
  %1386 = fmul fast float %1383, %1317
  %1387 = fadd fast float %1384, %1325
  %1388 = fadd fast float %1385, %1329
  %1389 = fadd fast float %1386, %1333
  %1390 = call float @dx.op.unary.f32(i32 7, float %1387)  ; Saturate(value)
  %1391 = call float @dx.op.unary.f32(i32 7, float %1388)  ; Saturate(value)
  %1392 = call float @dx.op.unary.f32(i32 7, float %1389)  ; Saturate(value)
  %1393 = fmul fast float %1390, %1390
  %1394 = fmul fast float %1391, %1391
  %1395 = fmul fast float %1392, %1392
  %1396 = fsub fast float %1393, %1275
  %1397 = fsub fast float %1394, %1276
  %1398 = fsub fast float %1395, %1277
  %1399 = fmul fast float %1396, %1300
  %1400 = fmul fast float %1397, %1300
  %1401 = fmul fast float %1398, %1300
  %1402 = fadd fast float %1399, %1275
  %1403 = fadd fast float %1400, %1276
  %1404 = fadd fast float %1401, %1277
  %1405 = fadd fast float %1322, %1286
  %1406 = fsub fast float %1405, %1339
  %1407 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1408 = fsub fast float %1407, %1286
  %1409 = fmul fast float %1408, %1300
  %1410 = fadd fast float %1409, %1286
  br label %1464

; <label>:1411                                    ; preds = %1299
  %1412 = and i32 %1302, 134217728
  %1413 = icmp eq i32 %1412, 0
  br i1 %1413, label %1448, label %1414

; <label>:1414                                    ; preds = %1411
  %1415 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %1416 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %1417 = call float @dx.op.unary.f32(i32 24, float %357)  ; Sqrt(value)
  %1418 = fadd fast float %1415, -5.000000e-01
  %1419 = fadd fast float %1416, -5.000000e-01
  %1420 = fadd fast float %1417, -5.000000e-01
  %1421 = fmul fast float %1418, %1300
  %1422 = fmul fast float %1419, %1300
  %1423 = fmul fast float %1420, %1300
  %1424 = fadd fast float %1421, 5.000000e-01
  %1425 = fadd fast float %1422, 5.000000e-01
  %1426 = fadd fast float %1423, 5.000000e-01
  %1427 = call float @dx.op.unary.f32(i32 24, float %1275)  ; Sqrt(value)
  %1428 = call float @dx.op.unary.f32(i32 24, float %1276)  ; Sqrt(value)
  %1429 = call float @dx.op.unary.f32(i32 24, float %1277)  ; Sqrt(value)
  %1430 = fmul fast float %1424, 2.000000e+00
  %1431 = fsub fast float 1.000000e+00, %1430
  %1432 = fmul fast float %1431, %1427
  %1433 = fadd fast float %1432, %1430
  %1434 = fmul fast float %1433, %1427
  %1435 = fmul fast float %1425, 2.000000e+00
  %1436 = fsub fast float 1.000000e+00, %1435
  %1437 = fmul fast float %1436, %1428
  %1438 = fadd fast float %1437, %1435
  %1439 = fmul fast float %1438, %1428
  %1440 = fmul fast float %1426, 2.000000e+00
  %1441 = fsub fast float 1.000000e+00, %1440
  %1442 = fmul fast float %1441, %1429
  %1443 = fadd fast float %1442, %1440
  %1444 = fmul fast float %1443, %1429
  %1445 = fmul fast float %1434, %1434
  %1446 = fmul fast float %1439, %1439
  %1447 = fmul fast float %1444, %1444
  br label %1464

; <label>:1448                                    ; preds = %1411
  %1449 = fmul fast float %349, %349
  %1450 = fmul fast float %353, %353
  %1451 = fmul fast float %357, %357
  %1452 = fadd fast float %1449, -1.000000e+00
  %1453 = fadd fast float %1450, -1.000000e+00
  %1454 = fadd fast float %1451, -1.000000e+00
  %1455 = fmul fast float %1300, %1452
  %1456 = fmul fast float %1300, %1453
  %1457 = fmul fast float %1300, %1454
  %1458 = fadd fast float %1455, 1.000000e+00
  %1459 = fadd fast float %1456, 1.000000e+00
  %1460 = fadd fast float %1457, 1.000000e+00
  %1461 = fmul fast float %1458, %1275
  %1462 = fmul fast float %1459, %1276
  %1463 = fmul fast float %1460, %1277
  br label %1464

; <label>:1464                                    ; preds = %1448, %1414, %1305, %1261
  %1465 = phi float [ %1410, %1305 ], [ %1286, %1414 ], [ %1286, %1448 ], [ 0x3FA23C0BE0000000, %1261 ]
  %1466 = phi float [ %1402, %1305 ], [ %1445, %1414 ], [ %1461, %1448 ], [ 1.000000e+00, %1261 ]
  %1467 = phi float [ %1403, %1305 ], [ %1446, %1414 ], [ %1462, %1448 ], [ 1.000000e+00, %1261 ]
  %1468 = phi float [ %1404, %1305 ], [ %1447, %1414 ], [ %1463, %1448 ], [ 1.000000e+00, %1261 ]
  %1469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.i32 %1469, 1
  %1471 = and i32 %1470, 1
  %1472 = icmp ne i32 %1471, 0
  %1473 = add i32 %63, 356
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = and i32 %1475, 32
  %1477 = icmp ne i32 %1476, 0
  %1478 = and i1 %1472, %1477
  %1479 = select i1 %1478, float 1.000000e+00, float %1466
  %1480 = select i1 %1478, float 0x3FD3333340000000, float %1467
  %1481 = select i1 %1478, float 0x3FD3333340000000, float %1468
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = and i32 %1483, 32
  %1485 = icmp eq i32 %1484, 0
  br i1 %1485, label %1558, label %1486

; <label>:1486                                    ; preds = %1464
  %1487 = add i32 %63, 108
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = add i32 %63, 396
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1490, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = add i32 %1492, 0
  %1494 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1493, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1495 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1494, %dx.types.Handle %119, float %1186, float %1187, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1496 = extractvalue %dx.types.ResRet.f32 %1495, 0
  %1497 = extractvalue %dx.types.ResRet.f32 %1495, 1
  %1498 = extractvalue %dx.types.ResRet.f32 %1495, 2
  %1499 = extractvalue %dx.types.ResRet.f32 %1495, 3
  %1500 = and i32 %1489, 255
  %1501 = uitofp i32 %1500 to float
  %1502 = lshr i32 %1489, 8
  %1503 = and i32 %1502, 255
  %1504 = uitofp i32 %1503 to float
  %1505 = lshr i32 %1489, 16
  %1506 = and i32 %1505, 255
  %1507 = uitofp i32 %1506 to float
  %1508 = fmul fast float %1507, 0x3F70101000000000
  %1509 = fmul fast float %1496, %1501
  %1510 = fadd fast float %1509, %1504
  %1511 = fmul fast float %1510, 0x3F70101000000000
  %1512 = fadd fast float %1497, -5.000000e-01
  %1513 = fadd fast float %1499, -5.000000e-01
  %1514 = fmul fast float %1512, %1508
  %1515 = fmul fast float %1513, %1508
  %1516 = fadd fast float %1514, 5.000000e-01
  %1517 = fadd fast float %1515, 5.000000e-01
  %1518 = fmul fast float %1516, 2.000000e+00
  %1519 = fadd fast float %1518, -1.000000e+00
  %1520 = fmul fast float %1517, 2.000000e+00
  %1521 = fadd fast float %1520, -1.000000e+00
  %1522 = fadd fast float %1519, %1521
  %1523 = fmul fast float %1522, 5.000000e-01
  %1524 = fsub fast float %1519, %1521
  %1525 = fmul fast float %1524, 5.000000e-01
  %1526 = call float @dx.op.unary.f32(i32 6, float %1523)  ; FAbs(value)
  %1527 = fsub fast float 1.000000e+00, %1526
  %1528 = call float @dx.op.unary.f32(i32 6, float %1525)  ; FAbs(value)
  %1529 = fsub fast float %1527, %1528
  %1530 = call float @dx.op.dot3.f32(i32 55, float %1523, float %1525, float %1529, float %1523, float %1525, float %1529)  ; Dot3(ax,ay,az,bx,by,bz)
  %1531 = call float @dx.op.unary.f32(i32 25, float %1530)  ; Rsqrt(value)
  %1532 = fmul fast float %1523, %1531
  %1533 = fmul fast float %1525, %1531
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 67108864
  %1537 = icmp eq i32 %1536, 0
  br i1 %1537, label %1554, label %1538

; <label>:1538                                    ; preds = %1486
  %1539 = add i32 %63, 296
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = and i32 %1541, 65535
  %1543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1542)  ; LegacyF16ToF32(value)
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = and i32 %1545, 65535
  %1547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1546)  ; LegacyF16ToF32(value)
  %1548 = lshr i32 %1541, 16
  %1549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1548)  ; LegacyF16ToF32(value)
  %1550 = fsub fast float %1511, %1549
  %1551 = fmul fast float %1550, %1543
  %1552 = fadd fast float %1551, %1547
  %1553 = call float @dx.op.unary.f32(i32 7, float %1552)  ; Saturate(value)
  br label %1554

; <label>:1554                                    ; preds = %1538, %1486
  %1555 = phi float [ %1553, %1538 ], [ %1511, %1486 ]
  %1556 = call float @dx.op.dot2.f32(i32 54, float %1532, float %1533, float %1090, float %1091)  ; Dot2(ax,ay,bx,by)
  %1557 = call float @dx.op.dot2.f32(i32 54, float %1532, float %1533, float %1092, float %1093)  ; Dot2(ax,ay,bx,by)
  br label %1558

; <label>:1558                                    ; preds = %1554, %1464
  %1559 = phi float [ %1555, %1554 ], [ 0x3FD6666660000000, %1464 ]
  %1560 = phi float [ %1556, %1554 ], [ 0.000000e+00, %1464 ]
  %1561 = phi float [ %1557, %1554 ], [ 0.000000e+00, %1464 ]
  %1562 = phi float [ %1498, %1554 ], [ 1.000000e+00, %1464 ]
  %1563 = add i32 %63, 176
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1563, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = lshr i32 %1565, 22
  %1567 = shl nuw nsw i32 %1566, 5
  %1568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1567)  ; LegacyF16ToF32(value)
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = and i32 %1570, 64
  %1572 = icmp eq i32 %1571, 0
  br i1 %1572, label %1606, label %1573

; <label>:1573                                    ; preds = %1558
  %1574 = add i32 %63, 412
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1574, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = add i32 %1576, 0
  %1578 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1577, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = and i32 %1580, 131072
  %1582 = icmp eq i32 %1581, 0
  %1583 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1578, %dx.types.Handle %119, float %1186, float %1187, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1584 = extractvalue %dx.types.ResRet.f32 %1583, 0
  %1585 = extractvalue %dx.types.ResRet.f32 %1583, 1
  %1586 = extractvalue %dx.types.ResRet.f32 %1583, 2
  %1587 = fmul fast float %1584, %337
  %1588 = fmul fast float %1585, %340
  %1589 = fmul fast float %1586, %343
  br i1 %1582, label %1596, label %1590

; <label>:1590                                    ; preds = %1573
  %1591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1592 = extractvalue %dx.types.CBufRet.f32 %1591, 0
  %1593 = fmul fast float %1592, %1587
  %1594 = fmul fast float %1592, %1588
  %1595 = fmul fast float %1592, %1589
  br label %1596

; <label>:1596                                    ; preds = %1590, %1573
  %1597 = phi float [ %1593, %1590 ], [ %1587, %1573 ]
  %1598 = phi float [ %1594, %1590 ], [ %1588, %1573 ]
  %1599 = phi float [ %1595, %1590 ], [ %1589, %1573 ]
  %1600 = fmul fast float %1597, %1568
  %1601 = select i1 %278, float %1600, float %1597
  %1602 = call float @dx.op.dot3.f32(i32 55, float %1601, float %1598, float %1599, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1603 = select i1 %278, float 0.000000e+00, float %1597
  %1604 = select i1 %278, float %1602, float %1598
  %1605 = select i1 %278, float 0.000000e+00, float %1599
  br label %1606

; <label>:1606                                    ; preds = %1596, %1558
  %1607 = phi float [ %1603, %1596 ], [ 0.000000e+00, %1558 ]
  %1608 = phi float [ %1604, %1596 ], [ 0.000000e+00, %1558 ]
  %1609 = phi float [ %1605, %1596 ], [ 0.000000e+00, %1558 ]
  %1610 = add i32 %63, 112
  %1611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1610, i32 undef)  ; BufferLoad(srv,index,wot)
  %1612 = extractvalue %dx.types.ResRet.i32 %1611, 0
  %1613 = and i32 %1612, 255
  %1614 = uitofp i32 %1613 to float
  %1615 = lshr i32 %1612, 8
  %1616 = and i32 %1615, 255
  %1617 = uitofp i32 %1616 to float
  %1618 = call float @dx.op.dot3.f32(i32 55, float %1479, float %1480, float %1481, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1619 = fmul fast float %1617, %1618
  %1620 = fadd fast float %1619, %1614
  %1621 = fmul fast float %1620, 0x3F70101020000000
  %1622 = call float @dx.op.unary.f32(i32 7, float %1621)  ; Saturate(value)
  br i1 %1078, label %1623, label %1631

; <label>:1623                                    ; preds = %1606
  %1624 = fsub fast float 1.000000e+00, %1259
  %1625 = fmul fast float %1624, %1066
  %1626 = fmul fast float %1624, %1067
  %1627 = fmul fast float %1624, %1068
  %1628 = fmul fast float %1624, %1069
  %1629 = fmul fast float %1624, %1070
  %1630 = fmul fast float %1624, %1071
  br label %1631

; <label>:1631                                    ; preds = %1623, %1606
  %1632 = phi float [ %1625, %1623 ], [ %1066, %1606 ]
  %1633 = phi float [ %1626, %1623 ], [ %1067, %1606 ]
  %1634 = phi float [ %1627, %1623 ], [ %1068, %1606 ]
  %1635 = phi float [ %1628, %1623 ], [ %1069, %1606 ]
  %1636 = phi float [ %1629, %1623 ], [ %1070, %1606 ]
  %1637 = phi float [ %1630, %1623 ], [ %1071, %1606 ]
  %1638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.i32 %1638, 0
  %1640 = and i32 %1639, 3
  %1641 = icmp eq i32 %1640, 3
  br i1 %1641, label %1720, label %1642

; <label>:1642                                    ; preds = %1631
  %1643 = and i32 %1639, 16
  %1644 = icmp ne i32 %1643, 0
  %1645 = select i1 %1644, float %1259, float 0.000000e+00
  %1646 = icmp eq i32 %1640, 0
  br i1 %1646, label %1647, label %1675

; <label>:1647                                    ; preds = %1642
  %1648 = and i32 %1639, 64
  %1649 = icmp ne i32 %1648, 0
  %1650 = select i1 %1649, float %1259, float 0.000000e+00
  %1651 = fsub fast float %1479, %1632
  %1652 = fsub fast float %1480, %1633
  %1653 = fsub fast float %1481, %1634
  %1654 = fmul fast float %1645, %1651
  %1655 = fmul fast float %1645, %1652
  %1656 = fmul fast float %1645, %1653
  %1657 = fadd fast float %1654, %1632
  %1658 = fadd fast float %1655, %1633
  %1659 = fadd fast float %1656, %1634
  %1660 = fsub fast float %1465, %1072
  %1661 = fmul fast float %1645, %1660
  %1662 = fadd fast float %1661, %1072
  %1663 = fsub fast float %1607, %1635
  %1664 = fsub fast float %1608, %1636
  %1665 = fsub fast float %1609, %1637
  %1666 = fmul fast float %1650, %1663
  %1667 = fmul fast float %1650, %1664
  %1668 = fmul fast float %1650, %1665
  %1669 = fadd fast float %1666, %1635
  %1670 = fadd fast float %1667, %1636
  %1671 = fadd fast float %1668, %1637
  %1672 = fsub fast float %1622, %1076
  %1673 = fmul fast float %1645, %1672
  %1674 = fadd fast float %1673, %1076
  br label %1720

; <label>:1675                                    ; preds = %1642
  %1676 = icmp eq i32 %1640, 1
  br i1 %1676, label %1677, label %1690

; <label>:1677                                    ; preds = %1675
  %1678 = fadd fast float %1479, -1.000000e+00
  %1679 = fadd fast float %1480, -1.000000e+00
  %1680 = fadd fast float %1481, -1.000000e+00
  %1681 = fmul fast float %1645, %1678
  %1682 = fmul fast float %1645, %1679
  %1683 = fmul fast float %1645, %1680
  %1684 = fadd fast float %1681, 1.000000e+00
  %1685 = fadd fast float %1682, 1.000000e+00
  %1686 = fadd fast float %1683, 1.000000e+00
  %1687 = fmul fast float %1684, %1632
  %1688 = fmul fast float %1685, %1633
  %1689 = fmul fast float %1686, %1634
  br label %1720

; <label>:1690                                    ; preds = %1675
  %1691 = icmp eq i32 %1640, 2
  br i1 %1691, label %1692, label %1720

; <label>:1692                                    ; preds = %1690
  %1693 = call float @dx.op.unary.f32(i32 24, float %1479)  ; Sqrt(value)
  %1694 = call float @dx.op.unary.f32(i32 24, float %1480)  ; Sqrt(value)
  %1695 = call float @dx.op.unary.f32(i32 24, float %1481)  ; Sqrt(value)
  %1696 = fadd fast float %1693, -5.000000e-01
  %1697 = fadd fast float %1694, -5.000000e-01
  %1698 = fadd fast float %1695, -5.000000e-01
  %1699 = fmul fast float %1696, %1645
  %1700 = fmul fast float %1697, %1645
  %1701 = fmul fast float %1698, %1645
  %1702 = fadd fast float %1699, 5.000000e-01
  %1703 = fadd fast float %1700, 5.000000e-01
  %1704 = fadd fast float %1701, 5.000000e-01
  %1705 = fmul fast float %1702, 2.000000e+00
  %1706 = fsub fast float 1.000000e+00, %1705
  %1707 = fmul fast float %1706, %1632
  %1708 = fadd fast float %1707, %1705
  %1709 = fmul fast float %1708, %1632
  %1710 = fmul fast float %1703, 2.000000e+00
  %1711 = fsub fast float 1.000000e+00, %1710
  %1712 = fmul fast float %1711, %1633
  %1713 = fadd fast float %1712, %1710
  %1714 = fmul fast float %1713, %1633
  %1715 = fmul fast float %1704, 2.000000e+00
  %1716 = fsub fast float 1.000000e+00, %1715
  %1717 = fmul fast float %1716, %1634
  %1718 = fadd fast float %1717, %1715
  %1719 = fmul fast float %1718, %1634
  br label %1720

; <label>:1720                                    ; preds = %1692, %1690, %1677, %1647, %1631
  %1721 = phi float [ %1632, %1631 ], [ %1709, %1692 ], [ %1632, %1690 ], [ %1687, %1677 ], [ %1657, %1647 ]
  %1722 = phi float [ %1633, %1631 ], [ %1714, %1692 ], [ %1633, %1690 ], [ %1688, %1677 ], [ %1658, %1647 ]
  %1723 = phi float [ %1634, %1631 ], [ %1719, %1692 ], [ %1634, %1690 ], [ %1689, %1677 ], [ %1659, %1647 ]
  %1724 = phi float [ %1635, %1631 ], [ %1635, %1692 ], [ %1635, %1690 ], [ %1635, %1677 ], [ %1669, %1647 ]
  %1725 = phi float [ %1636, %1631 ], [ %1636, %1692 ], [ %1636, %1690 ], [ %1636, %1677 ], [ %1670, %1647 ]
  %1726 = phi float [ %1637, %1631 ], [ %1637, %1692 ], [ %1637, %1690 ], [ %1637, %1677 ], [ %1671, %1647 ]
  %1727 = phi float [ %1072, %1631 ], [ %1072, %1692 ], [ %1072, %1690 ], [ %1072, %1677 ], [ %1662, %1647 ]
  %1728 = phi float [ %1076, %1631 ], [ %1076, %1692 ], [ %1076, %1690 ], [ %1076, %1677 ], [ %1674, %1647 ]
  %1729 = and i32 %1639, 12
  %1730 = icmp eq i32 %1729, 12
  br i1 %1730, label %1803, label %1731

; <label>:1731                                    ; preds = %1720
  %1732 = and i32 %1639, 2097184
  %1733 = icmp eq i32 %1732, 2097184
  %1734 = select i1 %1733, float %1259, float 0.000000e+00
  %1735 = and i32 %1639, 4194336
  %1736 = icmp eq i32 %1735, 4194336
  %1737 = select i1 %1736, float %1259, float 0.000000e+00
  %1738 = and i32 %1639, 8388640
  %1739 = icmp eq i32 %1738, 8388640
  %1740 = select i1 %1739, float %1259, float 0.000000e+00
  %1741 = icmp eq i32 %1729, 0
  br i1 %1741, label %1742, label %1755

; <label>:1742                                    ; preds = %1731
  %1743 = fsub fast float %1560, %1064
  %1744 = fsub fast float %1561, %1065
  %1745 = fmul fast float %1734, %1743
  %1746 = fmul fast float %1734, %1744
  %1747 = fadd fast float %1745, %1064
  %1748 = fadd fast float %1746, %1065
  %1749 = fsub fast float %1562, %1075
  %1750 = fmul fast float %1737, %1749
  %1751 = fadd fast float %1750, %1075
  %1752 = fsub fast float %1559, %1074
  %1753 = fmul fast float %1740, %1752
  %1754 = fadd fast float %1753, %1074
  br label %1803

; <label>:1755                                    ; preds = %1731
  %1756 = icmp eq i32 %1729, 4
  br i1 %1756, label %1757, label %1789

; <label>:1757                                    ; preds = %1755
  %1758 = fmul fast float %1734, %1560
  %1759 = fmul fast float %1734, %1561
  %1760 = fadd fast float %1758, %1064
  %1761 = fadd fast float %1759, %1065
  %1762 = call float @dx.op.binary.f32(i32 36, float %1075, float %1562)  ; FMin(a,b)
  %1763 = fsub fast float %1762, %1075
  %1764 = fmul fast float %1763, %1737
  %1765 = fadd fast float %1764, %1075
  %1766 = fadd fast float %1559, %1074
  %1767 = fmul fast float %1766, 0x3FF337FAE0000000
  %1768 = fmul fast float %1074, %1074
  %1769 = fmul fast float %1559, %1559
  %1770 = fadd fast float %1769, %1768
  %1771 = fmul fast float %1770, 0x3FE5152B00000000
  %1772 = fmul fast float %1074, 0xBFCC1F85E0000000
  %1773 = fmul fast float %1772, %1559
  %1774 = fadd fast float %1773, 0xBFE1363700000000
  %1775 = fadd fast float %1774, %1767
  %1776 = fsub fast float %1775, %1771
  %1777 = fmul fast float %1766, 0x3FBA6F0D00000000
  %1778 = fmul fast float %1770, 0x3FD0432880000000
  %1779 = fmul fast float %1074, 0xBFEF110800000000
  %1780 = fmul fast float %1779, %1559
  %1781 = fadd fast float %1780, 1.000000e+00
  %1782 = fsub fast float %1781, %1777
  %1783 = fadd fast float %1782, %1778
  %1784 = fdiv fast float %1776, %1783
  %1785 = call float @dx.op.unary.f32(i32 7, float %1784)  ; Saturate(value)
  %1786 = fsub fast float %1785, %1074
  %1787 = fmul fast float %1786, %1740
  %1788 = fadd fast float %1787, %1074
  br label %1803

; <label>:1789                                    ; preds = %1755
  %1790 = icmp eq i32 %1729, 8
  br i1 %1790, label %1791, label %1803

; <label>:1791                                    ; preds = %1789
  %1792 = fmul fast float %1734, %1560
  %1793 = fmul fast float %1734, %1561
  %1794 = fadd fast float %1792, %1064
  %1795 = fadd fast float %1793, %1065
  %1796 = call float @dx.op.binary.f32(i32 36, float %1075, float %1562)  ; FMin(a,b)
  %1797 = fsub fast float %1796, %1075
  %1798 = fmul fast float %1797, %1737
  %1799 = fadd fast float %1798, %1075
  %1800 = fsub fast float %1559, %1074
  %1801 = fmul fast float %1740, %1800
  %1802 = fadd fast float %1801, %1074
  br label %1803

; <label>:1803                                    ; preds = %1791, %1789, %1757, %1742, %1720, %1258, %1077, %1063
  %1804 = phi float [ %1064, %1720 ], [ %1064, %1258 ], [ %1064, %1063 ], [ %1794, %1791 ], [ %1064, %1789 ], [ %1760, %1757 ], [ %1747, %1742 ], [ %1064, %1077 ]
  %1805 = phi float [ %1065, %1720 ], [ %1065, %1258 ], [ %1065, %1063 ], [ %1795, %1791 ], [ %1065, %1789 ], [ %1761, %1757 ], [ %1748, %1742 ], [ %1065, %1077 ]
  %1806 = phi float [ %1721, %1720 ], [ %1066, %1258 ], [ %1066, %1063 ], [ %1721, %1791 ], [ %1721, %1789 ], [ %1721, %1757 ], [ %1721, %1742 ], [ %1066, %1077 ]
  %1807 = phi float [ %1722, %1720 ], [ %1067, %1258 ], [ %1067, %1063 ], [ %1722, %1791 ], [ %1722, %1789 ], [ %1722, %1757 ], [ %1722, %1742 ], [ %1067, %1077 ]
  %1808 = phi float [ %1723, %1720 ], [ %1068, %1258 ], [ %1068, %1063 ], [ %1723, %1791 ], [ %1723, %1789 ], [ %1723, %1757 ], [ %1723, %1742 ], [ %1068, %1077 ]
  %1809 = phi float [ %1724, %1720 ], [ %1069, %1258 ], [ %1069, %1063 ], [ %1724, %1791 ], [ %1724, %1789 ], [ %1724, %1757 ], [ %1724, %1742 ], [ %1069, %1077 ]
  %1810 = phi float [ %1725, %1720 ], [ %1070, %1258 ], [ %1070, %1063 ], [ %1725, %1791 ], [ %1725, %1789 ], [ %1725, %1757 ], [ %1725, %1742 ], [ %1070, %1077 ]
  %1811 = phi float [ %1726, %1720 ], [ %1071, %1258 ], [ %1071, %1063 ], [ %1726, %1791 ], [ %1726, %1789 ], [ %1726, %1757 ], [ %1726, %1742 ], [ %1071, %1077 ]
  %1812 = phi float [ %1727, %1720 ], [ %1072, %1258 ], [ %1072, %1063 ], [ %1727, %1791 ], [ %1727, %1789 ], [ %1727, %1757 ], [ %1727, %1742 ], [ %1072, %1077 ]
  %1813 = phi float [ %1074, %1720 ], [ %1074, %1258 ], [ %1074, %1063 ], [ %1802, %1791 ], [ %1074, %1789 ], [ %1788, %1757 ], [ %1754, %1742 ], [ %1074, %1077 ]
  %1814 = phi float [ %1075, %1720 ], [ %1075, %1258 ], [ %1075, %1063 ], [ %1799, %1791 ], [ %1075, %1789 ], [ %1765, %1757 ], [ %1751, %1742 ], [ %1075, %1077 ]
  %1815 = phi float [ %1728, %1720 ], [ %1076, %1258 ], [ %1076, %1063 ], [ %1728, %1791 ], [ %1728, %1789 ], [ %1728, %1757 ], [ %1728, %1742 ], [ %1076, %1077 ]
  br i1 %464, label %2542, label %1816

; <label>:1816                                    ; preds = %1803
  %1817 = icmp ult i32 %520, 3
  %1818 = add i32 %63, 56
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = add i32 %63, 60
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = or i32 %1823, %1820
  %1825 = icmp eq i32 %1824, 0
  br i1 %1825, label %2542, label %1826

; <label>:1826                                    ; preds = %1816
  %1827 = and i32 %1820, 262144
  %1828 = icmp ne i32 %1827, 0
  %1829 = select i1 %1828, float %69, float 1.000000e+00
  %1830 = select i1 %1828, float %70, float 0.000000e+00
  %1831 = select i1 %1828, float %71, float 0.000000e+00
  %1832 = select i1 %1828, float %72, float 1.000000e+00
  %1833 = select i1 %1828, float %73, float %101
  %1834 = select i1 %1828, float %74, float %102
  %1835 = add i32 %63, 316
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = lshr i32 %1837, 16
  %1839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1838)  ; LegacyF16ToF32(value)
  %1840 = fmul fast float %1839, 0x3F50624DE0000000
  %1841 = add i32 %63, 120
  %1842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.i32 %1842, 0
  %1844 = lshr i32 %1843, 16
  %1845 = and i32 %1844, 255
  %1846 = lshr i32 %1843, 24
  %1847 = add i32 %63, 324
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = and i32 %1849, 65535
  %1851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1850)  ; LegacyF16ToF32(value)
  %1852 = lshr i32 %1849, 16
  %1853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1852)  ; LegacyF16ToF32(value)
  %1854 = add i32 %63, 64
  %1855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.i32 %1855, 0
  %1857 = lshr i32 %1856, 22
  %1858 = shl nuw nsw i32 %1857, 5
  %1859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1858)  ; LegacyF16ToF32(value)
  %1860 = shl i32 %1856, 4
  %1861 = and i32 %1860, 32752
  %1862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1861)  ; LegacyF16ToF32(value)
  %1863 = lshr i32 %1856, 7
  %1864 = and i32 %1863, 32752
  %1865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1864)  ; LegacyF16ToF32(value)
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 3
  %1868 = fmul fast float %1867, 1.000000e+03
  %1869 = fmul fast float %414, %1868
  %1870 = call float @dx.op.unary.f32(i32 22, float %1869)  ; Frc(value)
  %1871 = fadd fast float %1870, %404
  %1872 = fmul fast float %415, %1868
  %1873 = call float @dx.op.unary.f32(i32 22, float %1872)  ; Frc(value)
  %1874 = fadd fast float %1873, %406
  %1875 = fmul fast float %1840, %1868
  %1876 = call float @dx.op.unary.f32(i32 22, float %1875)  ; Frc(value)
  %1877 = fmul fast float %1876, 0x401921FB60000000
  %1878 = fadd fast float %1877, %1859
  %1879 = call float @dx.op.unary.f32(i32 13, float %1878)  ; Sin(value)
  %1880 = call float @dx.op.unary.f32(i32 12, float %1878)  ; Cos(value)
  %1881 = fsub fast float -0.000000e+00, %1879
  %1882 = fadd fast float %1833, -5.000000e-01
  %1883 = fadd fast float %1834, -5.000000e-01
  %1884 = fmul fast float %1851, %1882
  %1885 = fmul fast float %1853, %1883
  %1886 = fadd fast float %1884, 5.000000e-01
  %1887 = fadd fast float %1885, 5.000000e-01
  %1888 = fmul fast float %1862, %1886
  %1889 = fmul fast float %1865, %1887
  %1890 = fmul fast float %1880, %1888
  %1891 = call float @dx.op.tertiary.f32(i32 46, float %1881, float %1889, float %1890)  ; FMad(a,b,c)
  %1892 = fmul fast float %1879, %1888
  %1893 = call float @dx.op.tertiary.f32(i32 46, float %1880, float %1889, float %1892)  ; FMad(a,b,c)
  %1894 = fadd fast float %1871, %1891
  %1895 = fadd fast float %1874, %1893
  %1896 = icmp ugt i32 %1845, 1
  %1897 = icmp ugt i32 %1843, 33554431
  %1898 = or i1 %1897, %1896
  br i1 %1898, label %1899, label %1924

; <label>:1899                                    ; preds = %1826
  %1900 = add i32 %63, 260
  %1901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.i32 %1901, 0
  %1903 = lshr i32 %1902, 16
  %1904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1903)  ; LegacyF16ToF32(value)
  %1905 = fmul fast float %1867, %1904
  %1906 = call float @dx.op.unary.f32(i32 22, float %1905)  ; Frc(value)
  %1907 = mul nuw nsw i32 %1845, %1846
  %1908 = uitofp i32 %1907 to float
  %1909 = fmul fast float %1906, %1908
  %1910 = call float @dx.op.unary.f32(i32 27, float %1909)  ; Round_ni(value)
  %1911 = fptoui float %1910 to i32
  %1912 = urem i32 %1911, %1845
  %1913 = udiv i32 %1911, %1846
  %1914 = call float @dx.op.unary.f32(i32 22, float %1894)  ; Frc(value)
  %1915 = call float @dx.op.unary.f32(i32 22, float %1895)  ; Frc(value)
  %1916 = uitofp i32 %1912 to float
  %1917 = uitofp i32 %1913 to float
  %1918 = fadd fast float %1914, %1916
  %1919 = fadd fast float %1915, %1917
  %1920 = uitofp i32 %1845 to float
  %1921 = uitofp i32 %1846 to float
  %1922 = fdiv fast float %1918, %1920
  %1923 = fdiv fast float %1919, %1921
  br label %1924

; <label>:1924                                    ; preds = %1899, %1826
  %1925 = phi float [ %1922, %1899 ], [ %1894, %1826 ]
  %1926 = phi float [ %1923, %1899 ], [ %1895, %1826 ]
  %1927 = and i32 %1820, 256
  %1928 = icmp eq i32 %1927, 0
  br i1 %1928, label %1975, label %1929

; <label>:1929                                    ; preds = %1924
  %1930 = add i32 %63, 448
  %1931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = add i32 %1932, 0
  %1934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1933, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1935 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1934, %dx.types.Handle %120, float %1925, float %1926, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1936 = extractvalue %dx.types.ResRet.f32 %1935, 0
  %1937 = add i32 %63, 132
  %1938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1939 = extractvalue %dx.types.ResRet.i32 %1938, 0
  %1940 = shl i32 %1939, 4
  %1941 = and i32 %1940, 32752
  %1942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1941)  ; LegacyF16ToF32(value)
  %1943 = lshr i32 %1939, 7
  %1944 = and i32 %1943, 32752
  %1945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1944)  ; LegacyF16ToF32(value)
  %1946 = fsub fast float 1.000000e+00, %516
  %1947 = call float @dx.op.binary.f32(i32 35, float %1946, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1948 = bitcast float %516 to i32
  %1949 = sitofp i32 %1948 to float
  %1950 = fadd fast float %1949, 0xC1CFBF8940000000
  %1951 = fmul fast float %1945, %1950
  %1952 = fadd fast float %1951, 0x41CFBF8940000000
  %1953 = fptosi float %1952 to i32
  %1954 = bitcast i32 %1953 to float
  %1955 = bitcast float %1947 to i32
  %1956 = sitofp i32 %1955 to float
  %1957 = fadd fast float %1956, 0xC1CFBF8940000000
  %1958 = fmul fast float %1957, %1945
  %1959 = fadd fast float %1958, 0x41CFBF8940000000
  %1960 = fptosi float %1959 to i32
  %1961 = bitcast i32 %1960 to float
  %1962 = fmul fast float %1954, %1942
  %1963 = fmul fast float %1961, %1942
  %1964 = fsub fast float %1947, %1962
  %1965 = fadd fast float %1963, %1947
  %1966 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1967 = call float @dx.op.unary.f32(i32 7, float %1965)  ; Saturate(value)
  %1968 = fsub fast float %1936, %1966
  %1969 = fsub fast float %1967, %1966
  %1970 = bitcast float %1969 to i32
  %1971 = sub nsw i32 2129859010, %1970
  %1972 = bitcast i32 %1971 to float
  %1973 = fmul fast float %1972, %1968
  %1974 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  br label %1975

; <label>:1975                                    ; preds = %1929, %1924
  %1976 = phi float [ %1974, %1929 ], [ %516, %1924 ]
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = and i32 %1978, 128
  %1980 = icmp eq i32 %1979, 0
  br i1 %1980, label %1997, label %1981

; <label>:1981                                    ; preds = %1975
  %1982 = add i32 %63, 432
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = add i32 %1984, 0
  %1986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1985, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1987 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1986, %dx.types.Handle %120, float %1925, float %1926, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1988 = extractvalue %dx.types.ResRet.f32 %1987, 0
  %1989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1990 = extractvalue %dx.types.ResRet.i32 %1989, 0
  %1991 = and i32 %1990, 524288
  %1992 = icmp ne i32 %1991, 0
  %1993 = fcmp fast ogt float %1988, 0x3FE0101020000000
  %1994 = select i1 %1993, float 1.000000e+00, float 0.000000e+00
  %1995 = select i1 %1992, float %1994, float %1988
  %1996 = fmul fast float %1995, %1976
  br label %1997

; <label>:1997                                    ; preds = %1981, %1975
  %1998 = phi float [ %1996, %1981 ], [ %1976, %1975 ]
  %1999 = fcmp fast ult float %1998, 0x3F70101020000000
  br i1 %1999, label %2542, label %2000

; <label>:2000                                    ; preds = %1997
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = and i32 %2002, 16
  %2004 = icmp eq i32 %2003, 0
  br i1 %2004, label %2203, label %2005

; <label>:2005                                    ; preds = %2000
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = add i32 %63, 384
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2008, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = add i32 %2010, 0
  %2012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2011, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2013 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2012, %dx.types.Handle %119, float %1925, float %1926, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2014 = extractvalue %dx.types.ResRet.f32 %2013, 0
  %2015 = extractvalue %dx.types.ResRet.f32 %2013, 1
  %2016 = extractvalue %dx.types.ResRet.f32 %2013, 2
  %2017 = extractvalue %dx.types.ResRet.f32 %2013, 3
  %2018 = and i32 %2007, 255
  %2019 = uitofp i32 %2018 to float
  %2020 = lshr i32 %2007, 8
  %2021 = and i32 %2020, 255
  %2022 = uitofp i32 %2021 to float
  %2023 = fmul fast float %2017, %2019
  %2024 = fadd fast float %2023, %2022
  %2025 = fmul fast float %2024, 0x3F70101000000000
  %2026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.i32 %2026, 0
  %2028 = and i32 %2027, 512
  %2029 = icmp eq i32 %2028, 0
  br i1 %2029, label %2038, label %2030

; <label>:2030                                    ; preds = %2005
  %2031 = add i32 %63, 468
  %2032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.i32 %2032, 0
  %2034 = add i32 %2033, 0
  %2035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2034, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2036 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2035, %dx.types.Handle %120, float %1925, float %1926, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2037 = extractvalue %dx.types.ResRet.f32 %2036, 0
  br label %2038

; <label>:2038                                    ; preds = %2030, %2005
  %2039 = phi float [ %2037, %2030 ], [ 1.000000e+00, %2005 ]
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = and i32 %2041, 33554432
  %2043 = icmp eq i32 %2042, 0
  br i1 %2043, label %2150, label %2044

; <label>:2044                                    ; preds = %2038
  %2045 = add i32 %63, 256
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = and i32 %2047, 65535
  %2049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2048)  ; LegacyF16ToF32(value)
  %2050 = lshr i32 %2047, 16
  %2051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2050)  ; LegacyF16ToF32(value)
  %2052 = add i32 %63, 260
  %2053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = and i32 %2054, 65535
  %2056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2055)  ; LegacyF16ToF32(value)
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = lshr i32 %2058, 24
  %2060 = uitofp i32 %2059 to float
  %2061 = fmul fast float %2060, 0x3F70101020000000
  %2062 = and i32 %2058, 255
  %2063 = uitofp i32 %2062 to float
  %2064 = fmul fast float %2063, 0x3F70101020000000
  %2065 = lshr i32 %2058, 8
  %2066 = and i32 %2065, 255
  %2067 = uitofp i32 %2066 to float
  %2068 = fmul fast float %2067, 0x3F70101020000000
  %2069 = lshr i32 %2058, 16
  %2070 = and i32 %2069, 255
  %2071 = uitofp i32 %2070 to float
  %2072 = fmul fast float %2071, 0x3F70101020000000
  %2073 = add i32 %63, 252
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = lshr i32 %2075, 24
  %2077 = uitofp i32 %2076 to float
  %2078 = fmul fast float %2077, 0x3F70101020000000
  %2079 = and i32 %2075, 255
  %2080 = uitofp i32 %2079 to float
  %2081 = fmul fast float %2080, 0x3F70101020000000
  %2082 = lshr i32 %2075, 8
  %2083 = and i32 %2082, 255
  %2084 = uitofp i32 %2083 to float
  %2085 = fmul fast float %2084, 0x3F70101020000000
  %2086 = lshr i32 %2075, 16
  %2087 = and i32 %2086, 255
  %2088 = uitofp i32 %2087 to float
  %2089 = fmul fast float %2088, 0x3F70101020000000
  %2090 = bitcast float %2014 to i32
  %2091 = ashr i32 %2090, 1
  %2092 = sub nsw i32 1597463174, %2091
  %2093 = bitcast i32 %2092 to float
  %2094 = fmul fast float %2014, 5.000000e-01
  %2095 = fmul fast float %2093, %2093
  %2096 = fmul fast float %2095, %2094
  %2097 = fsub fast float 1.500000e+00, %2096
  %2098 = fmul fast float %2093, %2014
  %2099 = fmul fast float %2098, %2097
  %2100 = bitcast float %2015 to i32
  %2101 = ashr i32 %2100, 1
  %2102 = sub nsw i32 1597463174, %2101
  %2103 = bitcast i32 %2102 to float
  %2104 = fmul fast float %2015, 5.000000e-01
  %2105 = fmul fast float %2103, %2103
  %2106 = fmul fast float %2105, %2104
  %2107 = fsub fast float 1.500000e+00, %2106
  %2108 = fmul fast float %2103, %2015
  %2109 = fmul fast float %2108, %2107
  %2110 = bitcast float %2016 to i32
  %2111 = ashr i32 %2110, 1
  %2112 = sub nsw i32 1597463174, %2111
  %2113 = bitcast i32 %2112 to float
  %2114 = fmul fast float %2016, 5.000000e-01
  %2115 = fmul fast float %2113, %2113
  %2116 = fmul fast float %2115, %2114
  %2117 = fsub fast float 1.500000e+00, %2116
  %2118 = fmul fast float %2113, %2016
  %2119 = fmul fast float %2118, %2117
  %2120 = fsub fast float %2099, %2081
  %2121 = fsub fast float %2109, %2085
  %2122 = fsub fast float %2119, %2089
  %2123 = fmul fast float %2120, %2049
  %2124 = fmul fast float %2121, %2051
  %2125 = fmul fast float %2122, %2056
  %2126 = fadd fast float %2123, %2064
  %2127 = fadd fast float %2124, %2068
  %2128 = fadd fast float %2125, %2072
  %2129 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  %2130 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  %2131 = call float @dx.op.unary.f32(i32 7, float %2128)  ; Saturate(value)
  %2132 = fmul fast float %2129, %2129
  %2133 = fmul fast float %2130, %2130
  %2134 = fmul fast float %2131, %2131
  %2135 = fsub fast float %2132, %2014
  %2136 = fsub fast float %2133, %2015
  %2137 = fsub fast float %2134, %2016
  %2138 = fmul fast float %2135, %2039
  %2139 = fmul fast float %2136, %2039
  %2140 = fmul fast float %2137, %2039
  %2141 = fadd fast float %2138, %2014
  %2142 = fadd fast float %2139, %2015
  %2143 = fadd fast float %2140, %2016
  %2144 = fadd fast float %2061, %2025
  %2145 = fsub fast float %2144, %2078
  %2146 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2147 = fsub fast float %2146, %2025
  %2148 = fmul fast float %2147, %2039
  %2149 = fadd fast float %2148, %2025
  br label %2203

; <label>:2150                                    ; preds = %2038
  %2151 = and i32 %2041, 134217728
  %2152 = icmp eq i32 %2151, 0
  br i1 %2152, label %2187, label %2153

; <label>:2153                                    ; preds = %2150
  %2154 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
  %2155 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %2156 = call float @dx.op.unary.f32(i32 24, float %399)  ; Sqrt(value)
  %2157 = fadd fast float %2154, -5.000000e-01
  %2158 = fadd fast float %2155, -5.000000e-01
  %2159 = fadd fast float %2156, -5.000000e-01
  %2160 = fmul fast float %2157, %2039
  %2161 = fmul fast float %2158, %2039
  %2162 = fmul fast float %2159, %2039
  %2163 = fadd fast float %2160, 5.000000e-01
  %2164 = fadd fast float %2161, 5.000000e-01
  %2165 = fadd fast float %2162, 5.000000e-01
  %2166 = call float @dx.op.unary.f32(i32 24, float %2014)  ; Sqrt(value)
  %2167 = call float @dx.op.unary.f32(i32 24, float %2015)  ; Sqrt(value)
  %2168 = call float @dx.op.unary.f32(i32 24, float %2016)  ; Sqrt(value)
  %2169 = fmul fast float %2163, 2.000000e+00
  %2170 = fsub fast float 1.000000e+00, %2169
  %2171 = fmul fast float %2170, %2166
  %2172 = fadd fast float %2171, %2169
  %2173 = fmul fast float %2172, %2166
  %2174 = fmul fast float %2164, 2.000000e+00
  %2175 = fsub fast float 1.000000e+00, %2174
  %2176 = fmul fast float %2175, %2167
  %2177 = fadd fast float %2176, %2174
  %2178 = fmul fast float %2177, %2167
  %2179 = fmul fast float %2165, 2.000000e+00
  %2180 = fsub fast float 1.000000e+00, %2179
  %2181 = fmul fast float %2180, %2168
  %2182 = fadd fast float %2181, %2179
  %2183 = fmul fast float %2182, %2168
  %2184 = fmul fast float %2173, %2173
  %2185 = fmul fast float %2178, %2178
  %2186 = fmul fast float %2183, %2183
  br label %2203

; <label>:2187                                    ; preds = %2150
  %2188 = fmul fast float %391, %391
  %2189 = fmul fast float %395, %395
  %2190 = fmul fast float %399, %399
  %2191 = fadd fast float %2188, -1.000000e+00
  %2192 = fadd fast float %2189, -1.000000e+00
  %2193 = fadd fast float %2190, -1.000000e+00
  %2194 = fmul fast float %2039, %2191
  %2195 = fmul fast float %2039, %2192
  %2196 = fmul fast float %2039, %2193
  %2197 = fadd fast float %2194, 1.000000e+00
  %2198 = fadd fast float %2195, 1.000000e+00
  %2199 = fadd fast float %2196, 1.000000e+00
  %2200 = fmul fast float %2197, %2014
  %2201 = fmul fast float %2198, %2015
  %2202 = fmul fast float %2199, %2016
  br label %2203

; <label>:2203                                    ; preds = %2187, %2153, %2044, %2000
  %2204 = phi float [ %2149, %2044 ], [ %2025, %2153 ], [ %2025, %2187 ], [ 0x3FA23C0BE0000000, %2000 ]
  %2205 = phi float [ %2141, %2044 ], [ %2184, %2153 ], [ %2200, %2187 ], [ 1.000000e+00, %2000 ]
  %2206 = phi float [ %2142, %2044 ], [ %2185, %2153 ], [ %2201, %2187 ], [ 1.000000e+00, %2000 ]
  %2207 = phi float [ %2143, %2044 ], [ %2186, %2153 ], [ %2202, %2187 ], [ 1.000000e+00, %2000 ]
  %2208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2209 = extractvalue %dx.types.CBufRet.i32 %2208, 1
  %2210 = and i32 %2209, 1
  %2211 = icmp ne i32 %2210, 0
  %2212 = add i32 %63, 356
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = and i32 %2214, 32
  %2216 = icmp ne i32 %2215, 0
  %2217 = and i1 %2211, %2216
  %2218 = select i1 %2217, float 1.000000e+00, float %2205
  %2219 = select i1 %2217, float 0x3FD3333340000000, float %2206
  %2220 = select i1 %2217, float 0x3FD3333340000000, float %2207
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = and i32 %2222, 32
  %2224 = icmp eq i32 %2223, 0
  br i1 %2224, label %2297, label %2225

; <label>:2225                                    ; preds = %2203
  %2226 = add i32 %63, 124
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2226, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = add i32 %63, 400
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2229, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = add i32 %2231, 0
  %2233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2232, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2234 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2233, %dx.types.Handle %119, float %1925, float %1926, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2235 = extractvalue %dx.types.ResRet.f32 %2234, 0
  %2236 = extractvalue %dx.types.ResRet.f32 %2234, 1
  %2237 = extractvalue %dx.types.ResRet.f32 %2234, 2
  %2238 = extractvalue %dx.types.ResRet.f32 %2234, 3
  %2239 = and i32 %2228, 255
  %2240 = uitofp i32 %2239 to float
  %2241 = lshr i32 %2228, 8
  %2242 = and i32 %2241, 255
  %2243 = uitofp i32 %2242 to float
  %2244 = lshr i32 %2228, 16
  %2245 = and i32 %2244, 255
  %2246 = uitofp i32 %2245 to float
  %2247 = fmul fast float %2246, 0x3F70101000000000
  %2248 = fmul fast float %2235, %2240
  %2249 = fadd fast float %2248, %2243
  %2250 = fmul fast float %2249, 0x3F70101000000000
  %2251 = fadd fast float %2236, -5.000000e-01
  %2252 = fadd fast float %2238, -5.000000e-01
  %2253 = fmul fast float %2251, %2247
  %2254 = fmul fast float %2252, %2247
  %2255 = fadd fast float %2253, 5.000000e-01
  %2256 = fadd fast float %2254, 5.000000e-01
  %2257 = fmul fast float %2255, 2.000000e+00
  %2258 = fadd fast float %2257, -1.000000e+00
  %2259 = fmul fast float %2256, 2.000000e+00
  %2260 = fadd fast float %2259, -1.000000e+00
  %2261 = fadd fast float %2258, %2260
  %2262 = fmul fast float %2261, 5.000000e-01
  %2263 = fsub fast float %2258, %2260
  %2264 = fmul fast float %2263, 5.000000e-01
  %2265 = call float @dx.op.unary.f32(i32 6, float %2262)  ; FAbs(value)
  %2266 = fsub fast float 1.000000e+00, %2265
  %2267 = call float @dx.op.unary.f32(i32 6, float %2264)  ; FAbs(value)
  %2268 = fsub fast float %2266, %2267
  %2269 = call float @dx.op.dot3.f32(i32 55, float %2262, float %2264, float %2268, float %2262, float %2264, float %2268)  ; Dot3(ax,ay,az,bx,by,bz)
  %2270 = call float @dx.op.unary.f32(i32 25, float %2269)  ; Rsqrt(value)
  %2271 = fmul fast float %2262, %2270
  %2272 = fmul fast float %2264, %2270
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = and i32 %2274, 67108864
  %2276 = icmp eq i32 %2275, 0
  br i1 %2276, label %2293, label %2277

; <label>:2277                                    ; preds = %2225
  %2278 = add i32 %63, 312
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2278, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = and i32 %2280, 65535
  %2282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2281)  ; LegacyF16ToF32(value)
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = and i32 %2284, 65535
  %2286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2285)  ; LegacyF16ToF32(value)
  %2287 = lshr i32 %2280, 16
  %2288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2287)  ; LegacyF16ToF32(value)
  %2289 = fsub fast float %2250, %2288
  %2290 = fmul fast float %2289, %2282
  %2291 = fadd fast float %2290, %2286
  %2292 = call float @dx.op.unary.f32(i32 7, float %2291)  ; Saturate(value)
  br label %2293

; <label>:2293                                    ; preds = %2277, %2225
  %2294 = phi float [ %2292, %2277 ], [ %2250, %2225 ]
  %2295 = call float @dx.op.dot2.f32(i32 54, float %2271, float %2272, float %1829, float %1830)  ; Dot2(ax,ay,bx,by)
  %2296 = call float @dx.op.dot2.f32(i32 54, float %2271, float %2272, float %1831, float %1832)  ; Dot2(ax,ay,bx,by)
  br label %2297

; <label>:2297                                    ; preds = %2293, %2203
  %2298 = phi float [ %2294, %2293 ], [ 0x3FD6666660000000, %2203 ]
  %2299 = phi float [ %2295, %2293 ], [ 0.000000e+00, %2203 ]
  %2300 = phi float [ %2296, %2293 ], [ 0.000000e+00, %2203 ]
  %2301 = phi float [ %2237, %2293 ], [ 1.000000e+00, %2203 ]
  %2302 = add i32 %63, 192
  %2303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2302, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.i32 %2303, 0
  %2305 = lshr i32 %2304, 22
  %2306 = shl nuw nsw i32 %2305, 5
  %2307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2306)  ; LegacyF16ToF32(value)
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 64
  %2311 = icmp eq i32 %2310, 0
  br i1 %2311, label %2345, label %2312

; <label>:2312                                    ; preds = %2297
  %2313 = add i32 %63, 416
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = add i32 %2315, 0
  %2317 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2316, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = and i32 %2319, 131072
  %2321 = icmp eq i32 %2320, 0
  %2322 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2317, %dx.types.Handle %119, float %1925, float %1926, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2323 = extractvalue %dx.types.ResRet.f32 %2322, 0
  %2324 = extractvalue %dx.types.ResRet.f32 %2322, 1
  %2325 = extractvalue %dx.types.ResRet.f32 %2322, 2
  %2326 = fmul fast float %2323, %379
  %2327 = fmul fast float %2324, %382
  %2328 = fmul fast float %2325, %385
  br i1 %2321, label %2335, label %2329

; <label>:2329                                    ; preds = %2312
  %2330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2331 = extractvalue %dx.types.CBufRet.f32 %2330, 0
  %2332 = fmul fast float %2331, %2326
  %2333 = fmul fast float %2331, %2327
  %2334 = fmul fast float %2331, %2328
  br label %2335

; <label>:2335                                    ; preds = %2329, %2312
  %2336 = phi float [ %2332, %2329 ], [ %2326, %2312 ]
  %2337 = phi float [ %2333, %2329 ], [ %2327, %2312 ]
  %2338 = phi float [ %2334, %2329 ], [ %2328, %2312 ]
  %2339 = fmul fast float %2336, %2307
  %2340 = select i1 %278, float %2339, float %2336
  %2341 = call float @dx.op.dot3.f32(i32 55, float %2340, float %2337, float %2338, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2342 = select i1 %278, float 0.000000e+00, float %2336
  %2343 = select i1 %278, float %2341, float %2337
  %2344 = select i1 %278, float 0.000000e+00, float %2338
  br label %2345

; <label>:2345                                    ; preds = %2335, %2297
  %2346 = phi float [ %2342, %2335 ], [ 0.000000e+00, %2297 ]
  %2347 = phi float [ %2343, %2335 ], [ 0.000000e+00, %2297 ]
  %2348 = phi float [ %2344, %2335 ], [ 0.000000e+00, %2297 ]
  %2349 = add i32 %63, 128
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 0
  %2352 = and i32 %2351, 255
  %2353 = uitofp i32 %2352 to float
  %2354 = lshr i32 %2351, 8
  %2355 = and i32 %2354, 255
  %2356 = uitofp i32 %2355 to float
  %2357 = call float @dx.op.dot3.f32(i32 55, float %2218, float %2219, float %2220, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2358 = fmul fast float %2356, %2357
  %2359 = fadd fast float %2358, %2353
  %2360 = fmul fast float %2359, 0x3F70101020000000
  %2361 = call float @dx.op.unary.f32(i32 7, float %2360)  ; Saturate(value)
  br i1 %1817, label %2362, label %2370

; <label>:2362                                    ; preds = %2345
  %2363 = fsub fast float 1.000000e+00, %1998
  %2364 = fmul fast float %2363, %1806
  %2365 = fmul fast float %2363, %1807
  %2366 = fmul fast float %2363, %1808
  %2367 = fmul fast float %2363, %1809
  %2368 = fmul fast float %2363, %1810
  %2369 = fmul fast float %2363, %1811
  br label %2370

; <label>:2370                                    ; preds = %2362, %2345
  %2371 = phi float [ %2364, %2362 ], [ %1806, %2345 ]
  %2372 = phi float [ %2365, %2362 ], [ %1807, %2345 ]
  %2373 = phi float [ %2366, %2362 ], [ %1808, %2345 ]
  %2374 = phi float [ %2367, %2362 ], [ %1809, %2345 ]
  %2375 = phi float [ %2368, %2362 ], [ %1810, %2345 ]
  %2376 = phi float [ %2369, %2362 ], [ %1811, %2345 ]
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = and i32 %2378, 3
  %2380 = icmp eq i32 %2379, 3
  br i1 %2380, label %2459, label %2381

; <label>:2381                                    ; preds = %2370
  %2382 = and i32 %2378, 16
  %2383 = icmp ne i32 %2382, 0
  %2384 = select i1 %2383, float %1998, float 0.000000e+00
  %2385 = icmp eq i32 %2379, 0
  br i1 %2385, label %2386, label %2414

; <label>:2386                                    ; preds = %2381
  %2387 = and i32 %2378, 64
  %2388 = icmp ne i32 %2387, 0
  %2389 = select i1 %2388, float %1998, float 0.000000e+00
  %2390 = fsub fast float %2218, %2371
  %2391 = fsub fast float %2219, %2372
  %2392 = fsub fast float %2220, %2373
  %2393 = fmul fast float %2384, %2390
  %2394 = fmul fast float %2384, %2391
  %2395 = fmul fast float %2384, %2392
  %2396 = fadd fast float %2393, %2371
  %2397 = fadd fast float %2394, %2372
  %2398 = fadd fast float %2395, %2373
  %2399 = fsub fast float %2204, %1812
  %2400 = fmul fast float %2384, %2399
  %2401 = fadd fast float %2400, %1812
  %2402 = fsub fast float %2346, %2374
  %2403 = fsub fast float %2347, %2375
  %2404 = fsub fast float %2348, %2376
  %2405 = fmul fast float %2389, %2402
  %2406 = fmul fast float %2389, %2403
  %2407 = fmul fast float %2389, %2404
  %2408 = fadd fast float %2405, %2374
  %2409 = fadd fast float %2406, %2375
  %2410 = fadd fast float %2407, %2376
  %2411 = fsub fast float %2361, %1815
  %2412 = fmul fast float %2384, %2411
  %2413 = fadd fast float %2412, %1815
  br label %2459

; <label>:2414                                    ; preds = %2381
  %2415 = icmp eq i32 %2379, 1
  br i1 %2415, label %2416, label %2429

; <label>:2416                                    ; preds = %2414
  %2417 = fadd fast float %2218, -1.000000e+00
  %2418 = fadd fast float %2219, -1.000000e+00
  %2419 = fadd fast float %2220, -1.000000e+00
  %2420 = fmul fast float %2384, %2417
  %2421 = fmul fast float %2384, %2418
  %2422 = fmul fast float %2384, %2419
  %2423 = fadd fast float %2420, 1.000000e+00
  %2424 = fadd fast float %2421, 1.000000e+00
  %2425 = fadd fast float %2422, 1.000000e+00
  %2426 = fmul fast float %2423, %2371
  %2427 = fmul fast float %2424, %2372
  %2428 = fmul fast float %2425, %2373
  br label %2459

; <label>:2429                                    ; preds = %2414
  %2430 = icmp eq i32 %2379, 2
  br i1 %2430, label %2431, label %2459

; <label>:2431                                    ; preds = %2429
  %2432 = call float @dx.op.unary.f32(i32 24, float %2218)  ; Sqrt(value)
  %2433 = call float @dx.op.unary.f32(i32 24, float %2219)  ; Sqrt(value)
  %2434 = call float @dx.op.unary.f32(i32 24, float %2220)  ; Sqrt(value)
  %2435 = fadd fast float %2432, -5.000000e-01
  %2436 = fadd fast float %2433, -5.000000e-01
  %2437 = fadd fast float %2434, -5.000000e-01
  %2438 = fmul fast float %2435, %2384
  %2439 = fmul fast float %2436, %2384
  %2440 = fmul fast float %2437, %2384
  %2441 = fadd fast float %2438, 5.000000e-01
  %2442 = fadd fast float %2439, 5.000000e-01
  %2443 = fadd fast float %2440, 5.000000e-01
  %2444 = fmul fast float %2441, 2.000000e+00
  %2445 = fsub fast float 1.000000e+00, %2444
  %2446 = fmul fast float %2445, %2371
  %2447 = fadd fast float %2446, %2444
  %2448 = fmul fast float %2447, %2371
  %2449 = fmul fast float %2442, 2.000000e+00
  %2450 = fsub fast float 1.000000e+00, %2449
  %2451 = fmul fast float %2450, %2372
  %2452 = fadd fast float %2451, %2449
  %2453 = fmul fast float %2452, %2372
  %2454 = fmul fast float %2443, 2.000000e+00
  %2455 = fsub fast float 1.000000e+00, %2454
  %2456 = fmul fast float %2455, %2373
  %2457 = fadd fast float %2456, %2454
  %2458 = fmul fast float %2457, %2373
  br label %2459

; <label>:2459                                    ; preds = %2431, %2429, %2416, %2386, %2370
  %2460 = phi float [ %2371, %2370 ], [ %2448, %2431 ], [ %2371, %2429 ], [ %2426, %2416 ], [ %2396, %2386 ]
  %2461 = phi float [ %2372, %2370 ], [ %2453, %2431 ], [ %2372, %2429 ], [ %2427, %2416 ], [ %2397, %2386 ]
  %2462 = phi float [ %2373, %2370 ], [ %2458, %2431 ], [ %2373, %2429 ], [ %2428, %2416 ], [ %2398, %2386 ]
  %2463 = phi float [ %2374, %2370 ], [ %2374, %2431 ], [ %2374, %2429 ], [ %2374, %2416 ], [ %2408, %2386 ]
  %2464 = phi float [ %2375, %2370 ], [ %2375, %2431 ], [ %2375, %2429 ], [ %2375, %2416 ], [ %2409, %2386 ]
  %2465 = phi float [ %2376, %2370 ], [ %2376, %2431 ], [ %2376, %2429 ], [ %2376, %2416 ], [ %2410, %2386 ]
  %2466 = phi float [ %1812, %2370 ], [ %1812, %2431 ], [ %1812, %2429 ], [ %1812, %2416 ], [ %2401, %2386 ]
  %2467 = phi float [ %1815, %2370 ], [ %1815, %2431 ], [ %1815, %2429 ], [ %1815, %2416 ], [ %2413, %2386 ]
  %2468 = and i32 %2378, 12
  %2469 = icmp eq i32 %2468, 12
  br i1 %2469, label %2542, label %2470

; <label>:2470                                    ; preds = %2459
  %2471 = and i32 %2378, 2097184
  %2472 = icmp eq i32 %2471, 2097184
  %2473 = select i1 %2472, float %1998, float 0.000000e+00
  %2474 = and i32 %2378, 4194336
  %2475 = icmp eq i32 %2474, 4194336
  %2476 = select i1 %2475, float %1998, float 0.000000e+00
  %2477 = and i32 %2378, 8388640
  %2478 = icmp eq i32 %2477, 8388640
  %2479 = select i1 %2478, float %1998, float 0.000000e+00
  %2480 = icmp eq i32 %2468, 0
  br i1 %2480, label %2481, label %2494

; <label>:2481                                    ; preds = %2470
  %2482 = fsub fast float %2299, %1804
  %2483 = fsub fast float %2300, %1805
  %2484 = fmul fast float %2473, %2482
  %2485 = fmul fast float %2473, %2483
  %2486 = fadd fast float %2484, %1804
  %2487 = fadd fast float %2485, %1805
  %2488 = fsub fast float %2301, %1814
  %2489 = fmul fast float %2476, %2488
  %2490 = fadd fast float %2489, %1814
  %2491 = fsub fast float %2298, %1813
  %2492 = fmul fast float %2479, %2491
  %2493 = fadd fast float %2492, %1813
  br label %2542

; <label>:2494                                    ; preds = %2470
  %2495 = icmp eq i32 %2468, 4
  br i1 %2495, label %2496, label %2528

; <label>:2496                                    ; preds = %2494
  %2497 = fmul fast float %2473, %2299
  %2498 = fmul fast float %2473, %2300
  %2499 = fadd fast float %2497, %1804
  %2500 = fadd fast float %2498, %1805
  %2501 = call float @dx.op.binary.f32(i32 36, float %1814, float %2301)  ; FMin(a,b)
  %2502 = fsub fast float %2501, %1814
  %2503 = fmul fast float %2502, %2476
  %2504 = fadd fast float %2503, %1814
  %2505 = fadd fast float %2298, %1813
  %2506 = fmul fast float %2505, 0x3FF337FAE0000000
  %2507 = fmul fast float %1813, %1813
  %2508 = fmul fast float %2298, %2298
  %2509 = fadd fast float %2508, %2507
  %2510 = fmul fast float %2509, 0x3FE5152B00000000
  %2511 = fmul fast float %1813, 0xBFCC1F85E0000000
  %2512 = fmul fast float %2511, %2298
  %2513 = fadd fast float %2512, 0xBFE1363700000000
  %2514 = fadd fast float %2513, %2506
  %2515 = fsub fast float %2514, %2510
  %2516 = fmul fast float %2505, 0x3FBA6F0D00000000
  %2517 = fmul fast float %2509, 0x3FD0432880000000
  %2518 = fmul fast float %1813, 0xBFEF110800000000
  %2519 = fmul fast float %2518, %2298
  %2520 = fadd fast float %2519, 1.000000e+00
  %2521 = fsub fast float %2520, %2516
  %2522 = fadd fast float %2521, %2517
  %2523 = fdiv fast float %2515, %2522
  %2524 = call float @dx.op.unary.f32(i32 7, float %2523)  ; Saturate(value)
  %2525 = fsub fast float %2524, %1813
  %2526 = fmul fast float %2525, %2479
  %2527 = fadd fast float %2526, %1813
  br label %2542

; <label>:2528                                    ; preds = %2494
  %2529 = icmp eq i32 %2468, 8
  br i1 %2529, label %2530, label %2542

; <label>:2530                                    ; preds = %2528
  %2531 = fmul fast float %2473, %2299
  %2532 = fmul fast float %2473, %2300
  %2533 = fadd fast float %2531, %1804
  %2534 = fadd fast float %2532, %1805
  %2535 = call float @dx.op.binary.f32(i32 36, float %1814, float %2301)  ; FMin(a,b)
  %2536 = fsub fast float %2535, %1814
  %2537 = fmul fast float %2536, %2476
  %2538 = fadd fast float %2537, %1814
  %2539 = fsub fast float %2298, %1813
  %2540 = fmul fast float %2479, %2539
  %2541 = fadd fast float %2540, %1813
  br label %2542

; <label>:2542                                    ; preds = %2530, %2528, %2496, %2481, %2459, %1997, %1816, %1803
  %2543 = phi float [ %1804, %2459 ], [ %1804, %1997 ], [ %1804, %1803 ], [ %2533, %2530 ], [ %1804, %2528 ], [ %2499, %2496 ], [ %2486, %2481 ], [ %1804, %1816 ]
  %2544 = phi float [ %1805, %2459 ], [ %1805, %1997 ], [ %1805, %1803 ], [ %2534, %2530 ], [ %1805, %2528 ], [ %2500, %2496 ], [ %2487, %2481 ], [ %1805, %1816 ]
  %2545 = phi float [ %2460, %2459 ], [ %1806, %1997 ], [ %1806, %1803 ], [ %2460, %2530 ], [ %2460, %2528 ], [ %2460, %2496 ], [ %2460, %2481 ], [ %1806, %1816 ]
  %2546 = phi float [ %2461, %2459 ], [ %1807, %1997 ], [ %1807, %1803 ], [ %2461, %2530 ], [ %2461, %2528 ], [ %2461, %2496 ], [ %2461, %2481 ], [ %1807, %1816 ]
  %2547 = phi float [ %2462, %2459 ], [ %1808, %1997 ], [ %1808, %1803 ], [ %2462, %2530 ], [ %2462, %2528 ], [ %2462, %2496 ], [ %2462, %2481 ], [ %1808, %1816 ]
  %2548 = phi float [ %2463, %2459 ], [ %1809, %1997 ], [ %1809, %1803 ], [ %2463, %2530 ], [ %2463, %2528 ], [ %2463, %2496 ], [ %2463, %2481 ], [ %1809, %1816 ]
  %2549 = phi float [ %2464, %2459 ], [ %1810, %1997 ], [ %1810, %1803 ], [ %2464, %2530 ], [ %2464, %2528 ], [ %2464, %2496 ], [ %2464, %2481 ], [ %1810, %1816 ]
  %2550 = phi float [ %2465, %2459 ], [ %1811, %1997 ], [ %1811, %1803 ], [ %2465, %2530 ], [ %2465, %2528 ], [ %2465, %2496 ], [ %2465, %2481 ], [ %1811, %1816 ]
  %2551 = phi float [ %2466, %2459 ], [ %1812, %1997 ], [ %1812, %1803 ], [ %2466, %2530 ], [ %2466, %2528 ], [ %2466, %2496 ], [ %2466, %2481 ], [ %1812, %1816 ]
  %2552 = phi float [ %1813, %2459 ], [ %1813, %1997 ], [ %1813, %1803 ], [ %2541, %2530 ], [ %1813, %2528 ], [ %2527, %2496 ], [ %2493, %2481 ], [ %1813, %1816 ]
  %2553 = phi float [ %1814, %2459 ], [ %1814, %1997 ], [ %1814, %1803 ], [ %2538, %2530 ], [ %1814, %2528 ], [ %2504, %2496 ], [ %2490, %2481 ], [ %1814, %1816 ]
  %2554 = phi float [ %2467, %2459 ], [ %1815, %1997 ], [ %1815, %1803 ], [ %2467, %2530 ], [ %2467, %2528 ], [ %2467, %2496 ], [ %2467, %2481 ], [ %1815, %1816 ]
  br i1 %466, label %3281, label %2555

; <label>:2555                                    ; preds = %2542
  %2556 = icmp ult i32 %520, 4
  %2557 = add i32 %63, 72
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = add i32 %63, 76
  %2561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2560, i32 undef)  ; BufferLoad(srv,index,wot)
  %2562 = extractvalue %dx.types.ResRet.i32 %2561, 0
  %2563 = or i32 %2562, %2559
  %2564 = icmp eq i32 %2563, 0
  br i1 %2564, label %3281, label %2565

; <label>:2565                                    ; preds = %2555
  %2566 = and i32 %2559, 262144
  %2567 = icmp ne i32 %2566, 0
  %2568 = select i1 %2567, float %69, float 1.000000e+00
  %2569 = select i1 %2567, float %70, float 0.000000e+00
  %2570 = select i1 %2567, float %71, float 0.000000e+00
  %2571 = select i1 %2567, float %72, float 1.000000e+00
  %2572 = select i1 %2567, float %73, float %101
  %2573 = select i1 %2567, float %74, float %102
  %2574 = add i32 %63, 332
  %2575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2574, i32 undef)  ; BufferLoad(srv,index,wot)
  %2576 = extractvalue %dx.types.ResRet.i32 %2575, 0
  %2577 = lshr i32 %2576, 16
  %2578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2577)  ; LegacyF16ToF32(value)
  %2579 = fmul fast float %2578, 0x3F50624DE0000000
  %2580 = add i32 %63, 136
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = lshr i32 %2582, 16
  %2584 = and i32 %2583, 255
  %2585 = lshr i32 %2582, 24
  %2586 = add i32 %63, 340
  %2587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2588 = extractvalue %dx.types.ResRet.i32 %2587, 0
  %2589 = and i32 %2588, 65535
  %2590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2589)  ; LegacyF16ToF32(value)
  %2591 = lshr i32 %2588, 16
  %2592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2591)  ; LegacyF16ToF32(value)
  %2593 = add i32 %63, 80
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = lshr i32 %2595, 22
  %2597 = shl nuw nsw i32 %2596, 5
  %2598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2597)  ; LegacyF16ToF32(value)
  %2599 = shl i32 %2595, 4
  %2600 = and i32 %2599, 32752
  %2601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2600)  ; LegacyF16ToF32(value)
  %2602 = lshr i32 %2595, 7
  %2603 = and i32 %2602, 32752
  %2604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2603)  ; LegacyF16ToF32(value)
  %2605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2606 = extractvalue %dx.types.CBufRet.f32 %2605, 3
  %2607 = fmul fast float %2606, 1.000000e+03
  %2608 = fmul fast float %456, %2607
  %2609 = call float @dx.op.unary.f32(i32 22, float %2608)  ; Frc(value)
  %2610 = fadd fast float %2609, %446
  %2611 = fmul fast float %457, %2607
  %2612 = call float @dx.op.unary.f32(i32 22, float %2611)  ; Frc(value)
  %2613 = fadd fast float %2612, %448
  %2614 = fmul fast float %2579, %2607
  %2615 = call float @dx.op.unary.f32(i32 22, float %2614)  ; Frc(value)
  %2616 = fmul fast float %2615, 0x401921FB60000000
  %2617 = fadd fast float %2616, %2598
  %2618 = call float @dx.op.unary.f32(i32 13, float %2617)  ; Sin(value)
  %2619 = call float @dx.op.unary.f32(i32 12, float %2617)  ; Cos(value)
  %2620 = fsub fast float -0.000000e+00, %2618
  %2621 = fadd fast float %2572, -5.000000e-01
  %2622 = fadd fast float %2573, -5.000000e-01
  %2623 = fmul fast float %2590, %2621
  %2624 = fmul fast float %2592, %2622
  %2625 = fadd fast float %2623, 5.000000e-01
  %2626 = fadd fast float %2624, 5.000000e-01
  %2627 = fmul fast float %2601, %2625
  %2628 = fmul fast float %2604, %2626
  %2629 = fmul fast float %2619, %2627
  %2630 = call float @dx.op.tertiary.f32(i32 46, float %2620, float %2628, float %2629)  ; FMad(a,b,c)
  %2631 = fmul fast float %2618, %2627
  %2632 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %2628, float %2631)  ; FMad(a,b,c)
  %2633 = fadd fast float %2610, %2630
  %2634 = fadd fast float %2613, %2632
  %2635 = icmp ugt i32 %2584, 1
  %2636 = icmp ugt i32 %2582, 33554431
  %2637 = or i1 %2636, %2635
  br i1 %2637, label %2638, label %2663

; <label>:2638                                    ; preds = %2565
  %2639 = add i32 %63, 276
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = lshr i32 %2641, 16
  %2643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2642)  ; LegacyF16ToF32(value)
  %2644 = fmul fast float %2606, %2643
  %2645 = call float @dx.op.unary.f32(i32 22, float %2644)  ; Frc(value)
  %2646 = mul nuw nsw i32 %2584, %2585
  %2647 = uitofp i32 %2646 to float
  %2648 = fmul fast float %2645, %2647
  %2649 = call float @dx.op.unary.f32(i32 27, float %2648)  ; Round_ni(value)
  %2650 = fptoui float %2649 to i32
  %2651 = urem i32 %2650, %2584
  %2652 = udiv i32 %2650, %2585
  %2653 = call float @dx.op.unary.f32(i32 22, float %2633)  ; Frc(value)
  %2654 = call float @dx.op.unary.f32(i32 22, float %2634)  ; Frc(value)
  %2655 = uitofp i32 %2651 to float
  %2656 = uitofp i32 %2652 to float
  %2657 = fadd fast float %2653, %2655
  %2658 = fadd fast float %2654, %2656
  %2659 = uitofp i32 %2584 to float
  %2660 = uitofp i32 %2585 to float
  %2661 = fdiv fast float %2657, %2659
  %2662 = fdiv fast float %2658, %2660
  br label %2663

; <label>:2663                                    ; preds = %2638, %2565
  %2664 = phi float [ %2661, %2638 ], [ %2633, %2565 ]
  %2665 = phi float [ %2662, %2638 ], [ %2634, %2565 ]
  %2666 = and i32 %2559, 256
  %2667 = icmp eq i32 %2666, 0
  br i1 %2667, label %2714, label %2668

; <label>:2668                                    ; preds = %2663
  %2669 = add i32 %63, 452
  %2670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2669, i32 undef)  ; BufferLoad(srv,index,wot)
  %2671 = extractvalue %dx.types.ResRet.i32 %2670, 0
  %2672 = add i32 %2671, 0
  %2673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2674 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2673, %dx.types.Handle %120, float %2664, float %2665, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2675 = extractvalue %dx.types.ResRet.f32 %2674, 0
  %2676 = add i32 %63, 148
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = shl i32 %2678, 4
  %2680 = and i32 %2679, 32752
  %2681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2680)  ; LegacyF16ToF32(value)
  %2682 = lshr i32 %2678, 7
  %2683 = and i32 %2682, 32752
  %2684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2683)  ; LegacyF16ToF32(value)
  %2685 = fsub fast float 1.000000e+00, %515
  %2686 = call float @dx.op.binary.f32(i32 35, float %2685, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2687 = bitcast float %515 to i32
  %2688 = sitofp i32 %2687 to float
  %2689 = fadd fast float %2688, 0xC1CFBF8940000000
  %2690 = fmul fast float %2684, %2689
  %2691 = fadd fast float %2690, 0x41CFBF8940000000
  %2692 = fptosi float %2691 to i32
  %2693 = bitcast i32 %2692 to float
  %2694 = bitcast float %2686 to i32
  %2695 = sitofp i32 %2694 to float
  %2696 = fadd fast float %2695, 0xC1CFBF8940000000
  %2697 = fmul fast float %2696, %2684
  %2698 = fadd fast float %2697, 0x41CFBF8940000000
  %2699 = fptosi float %2698 to i32
  %2700 = bitcast i32 %2699 to float
  %2701 = fmul fast float %2693, %2681
  %2702 = fmul fast float %2700, %2681
  %2703 = fsub fast float %2686, %2701
  %2704 = fadd fast float %2702, %2686
  %2705 = call float @dx.op.unary.f32(i32 7, float %2703)  ; Saturate(value)
  %2706 = call float @dx.op.unary.f32(i32 7, float %2704)  ; Saturate(value)
  %2707 = fsub fast float %2675, %2705
  %2708 = fsub fast float %2706, %2705
  %2709 = bitcast float %2708 to i32
  %2710 = sub nsw i32 2129859010, %2709
  %2711 = bitcast i32 %2710 to float
  %2712 = fmul fast float %2711, %2707
  %2713 = call float @dx.op.unary.f32(i32 7, float %2712)  ; Saturate(value)
  br label %2714

; <label>:2714                                    ; preds = %2668, %2663
  %2715 = phi float [ %2713, %2668 ], [ %515, %2663 ]
  %2716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2717 = extractvalue %dx.types.ResRet.i32 %2716, 0
  %2718 = and i32 %2717, 128
  %2719 = icmp eq i32 %2718, 0
  br i1 %2719, label %2736, label %2720

; <label>:2720                                    ; preds = %2714
  %2721 = add i32 %63, 436
  %2722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.i32 %2722, 0
  %2724 = add i32 %2723, 0
  %2725 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2724, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2726 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2725, %dx.types.Handle %120, float %2664, float %2665, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2727 = extractvalue %dx.types.ResRet.f32 %2726, 0
  %2728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.i32 %2728, 0
  %2730 = and i32 %2729, 524288
  %2731 = icmp ne i32 %2730, 0
  %2732 = fcmp fast ogt float %2727, 0x3FE0101020000000
  %2733 = select i1 %2732, float 1.000000e+00, float 0.000000e+00
  %2734 = select i1 %2731, float %2733, float %2727
  %2735 = fmul fast float %2734, %2715
  br label %2736

; <label>:2736                                    ; preds = %2720, %2714
  %2737 = phi float [ %2735, %2720 ], [ %2715, %2714 ]
  %2738 = fcmp fast ult float %2737, 0x3F70101020000000
  br i1 %2738, label %3281, label %2739

; <label>:2739                                    ; preds = %2736
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = and i32 %2741, 16
  %2743 = icmp eq i32 %2742, 0
  br i1 %2743, label %2942, label %2744

; <label>:2744                                    ; preds = %2739
  %2745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.i32 %2745, 0
  %2747 = add i32 %63, 388
  %2748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.i32 %2748, 0
  %2750 = add i32 %2749, 0
  %2751 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2750, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2752 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2751, %dx.types.Handle %119, float %2664, float %2665, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2753 = extractvalue %dx.types.ResRet.f32 %2752, 0
  %2754 = extractvalue %dx.types.ResRet.f32 %2752, 1
  %2755 = extractvalue %dx.types.ResRet.f32 %2752, 2
  %2756 = extractvalue %dx.types.ResRet.f32 %2752, 3
  %2757 = and i32 %2746, 255
  %2758 = uitofp i32 %2757 to float
  %2759 = lshr i32 %2746, 8
  %2760 = and i32 %2759, 255
  %2761 = uitofp i32 %2760 to float
  %2762 = fmul fast float %2756, %2758
  %2763 = fadd fast float %2762, %2761
  %2764 = fmul fast float %2763, 0x3F70101000000000
  %2765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.i32 %2765, 0
  %2767 = and i32 %2766, 512
  %2768 = icmp eq i32 %2767, 0
  br i1 %2768, label %2777, label %2769

; <label>:2769                                    ; preds = %2744
  %2770 = add i32 %63, 472
  %2771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2772 = extractvalue %dx.types.ResRet.i32 %2771, 0
  %2773 = add i32 %2772, 0
  %2774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2773, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2775 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2774, %dx.types.Handle %120, float %2664, float %2665, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2776 = extractvalue %dx.types.ResRet.f32 %2775, 0
  br label %2777

; <label>:2777                                    ; preds = %2769, %2744
  %2778 = phi float [ %2776, %2769 ], [ 1.000000e+00, %2744 ]
  %2779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2780 = extractvalue %dx.types.ResRet.i32 %2779, 0
  %2781 = and i32 %2780, 33554432
  %2782 = icmp eq i32 %2781, 0
  br i1 %2782, label %2889, label %2783

; <label>:2783                                    ; preds = %2777
  %2784 = add i32 %63, 272
  %2785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2784, i32 undef)  ; BufferLoad(srv,index,wot)
  %2786 = extractvalue %dx.types.ResRet.i32 %2785, 0
  %2787 = and i32 %2786, 65535
  %2788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2787)  ; LegacyF16ToF32(value)
  %2789 = lshr i32 %2786, 16
  %2790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2789)  ; LegacyF16ToF32(value)
  %2791 = add i32 %63, 276
  %2792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2791, i32 undef)  ; BufferLoad(srv,index,wot)
  %2793 = extractvalue %dx.types.ResRet.i32 %2792, 0
  %2794 = and i32 %2793, 65535
  %2795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2794)  ; LegacyF16ToF32(value)
  %2796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %2797 = extractvalue %dx.types.ResRet.i32 %2796, 0
  %2798 = lshr i32 %2797, 24
  %2799 = uitofp i32 %2798 to float
  %2800 = fmul fast float %2799, 0x3F70101020000000
  %2801 = and i32 %2797, 255
  %2802 = uitofp i32 %2801 to float
  %2803 = fmul fast float %2802, 0x3F70101020000000
  %2804 = lshr i32 %2797, 8
  %2805 = and i32 %2804, 255
  %2806 = uitofp i32 %2805 to float
  %2807 = fmul fast float %2806, 0x3F70101020000000
  %2808 = lshr i32 %2797, 16
  %2809 = and i32 %2808, 255
  %2810 = uitofp i32 %2809 to float
  %2811 = fmul fast float %2810, 0x3F70101020000000
  %2812 = add i32 %63, 268
  %2813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %2814 = extractvalue %dx.types.ResRet.i32 %2813, 0
  %2815 = lshr i32 %2814, 24
  %2816 = uitofp i32 %2815 to float
  %2817 = fmul fast float %2816, 0x3F70101020000000
  %2818 = and i32 %2814, 255
  %2819 = uitofp i32 %2818 to float
  %2820 = fmul fast float %2819, 0x3F70101020000000
  %2821 = lshr i32 %2814, 8
  %2822 = and i32 %2821, 255
  %2823 = uitofp i32 %2822 to float
  %2824 = fmul fast float %2823, 0x3F70101020000000
  %2825 = lshr i32 %2814, 16
  %2826 = and i32 %2825, 255
  %2827 = uitofp i32 %2826 to float
  %2828 = fmul fast float %2827, 0x3F70101020000000
  %2829 = bitcast float %2753 to i32
  %2830 = ashr i32 %2829, 1
  %2831 = sub nsw i32 1597463174, %2830
  %2832 = bitcast i32 %2831 to float
  %2833 = fmul fast float %2753, 5.000000e-01
  %2834 = fmul fast float %2832, %2832
  %2835 = fmul fast float %2834, %2833
  %2836 = fsub fast float 1.500000e+00, %2835
  %2837 = fmul fast float %2832, %2753
  %2838 = fmul fast float %2837, %2836
  %2839 = bitcast float %2754 to i32
  %2840 = ashr i32 %2839, 1
  %2841 = sub nsw i32 1597463174, %2840
  %2842 = bitcast i32 %2841 to float
  %2843 = fmul fast float %2754, 5.000000e-01
  %2844 = fmul fast float %2842, %2842
  %2845 = fmul fast float %2844, %2843
  %2846 = fsub fast float 1.500000e+00, %2845
  %2847 = fmul fast float %2842, %2754
  %2848 = fmul fast float %2847, %2846
  %2849 = bitcast float %2755 to i32
  %2850 = ashr i32 %2849, 1
  %2851 = sub nsw i32 1597463174, %2850
  %2852 = bitcast i32 %2851 to float
  %2853 = fmul fast float %2755, 5.000000e-01
  %2854 = fmul fast float %2852, %2852
  %2855 = fmul fast float %2854, %2853
  %2856 = fsub fast float 1.500000e+00, %2855
  %2857 = fmul fast float %2852, %2755
  %2858 = fmul fast float %2857, %2856
  %2859 = fsub fast float %2838, %2820
  %2860 = fsub fast float %2848, %2824
  %2861 = fsub fast float %2858, %2828
  %2862 = fmul fast float %2859, %2788
  %2863 = fmul fast float %2860, %2790
  %2864 = fmul fast float %2861, %2795
  %2865 = fadd fast float %2862, %2803
  %2866 = fadd fast float %2863, %2807
  %2867 = fadd fast float %2864, %2811
  %2868 = call float @dx.op.unary.f32(i32 7, float %2865)  ; Saturate(value)
  %2869 = call float @dx.op.unary.f32(i32 7, float %2866)  ; Saturate(value)
  %2870 = call float @dx.op.unary.f32(i32 7, float %2867)  ; Saturate(value)
  %2871 = fmul fast float %2868, %2868
  %2872 = fmul fast float %2869, %2869
  %2873 = fmul fast float %2870, %2870
  %2874 = fsub fast float %2871, %2753
  %2875 = fsub fast float %2872, %2754
  %2876 = fsub fast float %2873, %2755
  %2877 = fmul fast float %2874, %2778
  %2878 = fmul fast float %2875, %2778
  %2879 = fmul fast float %2876, %2778
  %2880 = fadd fast float %2877, %2753
  %2881 = fadd fast float %2878, %2754
  %2882 = fadd fast float %2879, %2755
  %2883 = fadd fast float %2800, %2764
  %2884 = fsub fast float %2883, %2817
  %2885 = call float @dx.op.unary.f32(i32 7, float %2884)  ; Saturate(value)
  %2886 = fsub fast float %2885, %2764
  %2887 = fmul fast float %2886, %2778
  %2888 = fadd fast float %2887, %2764
  br label %2942

; <label>:2889                                    ; preds = %2777
  %2890 = and i32 %2780, 134217728
  %2891 = icmp eq i32 %2890, 0
  br i1 %2891, label %2926, label %2892

; <label>:2892                                    ; preds = %2889
  %2893 = call float @dx.op.unary.f32(i32 24, float %433)  ; Sqrt(value)
  %2894 = call float @dx.op.unary.f32(i32 24, float %437)  ; Sqrt(value)
  %2895 = call float @dx.op.unary.f32(i32 24, float %441)  ; Sqrt(value)
  %2896 = fadd fast float %2893, -5.000000e-01
  %2897 = fadd fast float %2894, -5.000000e-01
  %2898 = fadd fast float %2895, -5.000000e-01
  %2899 = fmul fast float %2896, %2778
  %2900 = fmul fast float %2897, %2778
  %2901 = fmul fast float %2898, %2778
  %2902 = fadd fast float %2899, 5.000000e-01
  %2903 = fadd fast float %2900, 5.000000e-01
  %2904 = fadd fast float %2901, 5.000000e-01
  %2905 = call float @dx.op.unary.f32(i32 24, float %2753)  ; Sqrt(value)
  %2906 = call float @dx.op.unary.f32(i32 24, float %2754)  ; Sqrt(value)
  %2907 = call float @dx.op.unary.f32(i32 24, float %2755)  ; Sqrt(value)
  %2908 = fmul fast float %2902, 2.000000e+00
  %2909 = fsub fast float 1.000000e+00, %2908
  %2910 = fmul fast float %2909, %2905
  %2911 = fadd fast float %2910, %2908
  %2912 = fmul fast float %2911, %2905
  %2913 = fmul fast float %2903, 2.000000e+00
  %2914 = fsub fast float 1.000000e+00, %2913
  %2915 = fmul fast float %2914, %2906
  %2916 = fadd fast float %2915, %2913
  %2917 = fmul fast float %2916, %2906
  %2918 = fmul fast float %2904, 2.000000e+00
  %2919 = fsub fast float 1.000000e+00, %2918
  %2920 = fmul fast float %2919, %2907
  %2921 = fadd fast float %2920, %2918
  %2922 = fmul fast float %2921, %2907
  %2923 = fmul fast float %2912, %2912
  %2924 = fmul fast float %2917, %2917
  %2925 = fmul fast float %2922, %2922
  br label %2942

; <label>:2926                                    ; preds = %2889
  %2927 = fmul fast float %433, %433
  %2928 = fmul fast float %437, %437
  %2929 = fmul fast float %441, %441
  %2930 = fadd fast float %2927, -1.000000e+00
  %2931 = fadd fast float %2928, -1.000000e+00
  %2932 = fadd fast float %2929, -1.000000e+00
  %2933 = fmul fast float %2778, %2930
  %2934 = fmul fast float %2778, %2931
  %2935 = fmul fast float %2778, %2932
  %2936 = fadd fast float %2933, 1.000000e+00
  %2937 = fadd fast float %2934, 1.000000e+00
  %2938 = fadd fast float %2935, 1.000000e+00
  %2939 = fmul fast float %2936, %2753
  %2940 = fmul fast float %2937, %2754
  %2941 = fmul fast float %2938, %2755
  br label %2942

; <label>:2942                                    ; preds = %2926, %2892, %2783, %2739
  %2943 = phi float [ %2888, %2783 ], [ %2764, %2892 ], [ %2764, %2926 ], [ 0x3FA23C0BE0000000, %2739 ]
  %2944 = phi float [ %2880, %2783 ], [ %2923, %2892 ], [ %2939, %2926 ], [ 1.000000e+00, %2739 ]
  %2945 = phi float [ %2881, %2783 ], [ %2924, %2892 ], [ %2940, %2926 ], [ 1.000000e+00, %2739 ]
  %2946 = phi float [ %2882, %2783 ], [ %2925, %2892 ], [ %2941, %2926 ], [ 1.000000e+00, %2739 ]
  %2947 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2948 = extractvalue %dx.types.CBufRet.i32 %2947, 1
  %2949 = and i32 %2948, 1
  %2950 = icmp ne i32 %2949, 0
  %2951 = add i32 %63, 356
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = and i32 %2953, 32
  %2955 = icmp ne i32 %2954, 0
  %2956 = and i1 %2950, %2955
  %2957 = select i1 %2956, float 1.000000e+00, float %2944
  %2958 = select i1 %2956, float 0x3FD3333340000000, float %2945
  %2959 = select i1 %2956, float 0x3FD3333340000000, float %2946
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, 32
  %2963 = icmp eq i32 %2962, 0
  br i1 %2963, label %3036, label %2964

; <label>:2964                                    ; preds = %2942
  %2965 = add i32 %63, 140
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = add i32 %63, 404
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = add i32 %2970, 0
  %2972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2971, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2973 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2972, %dx.types.Handle %119, float %2664, float %2665, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2974 = extractvalue %dx.types.ResRet.f32 %2973, 0
  %2975 = extractvalue %dx.types.ResRet.f32 %2973, 1
  %2976 = extractvalue %dx.types.ResRet.f32 %2973, 2
  %2977 = extractvalue %dx.types.ResRet.f32 %2973, 3
  %2978 = and i32 %2967, 255
  %2979 = uitofp i32 %2978 to float
  %2980 = lshr i32 %2967, 8
  %2981 = and i32 %2980, 255
  %2982 = uitofp i32 %2981 to float
  %2983 = lshr i32 %2967, 16
  %2984 = and i32 %2983, 255
  %2985 = uitofp i32 %2984 to float
  %2986 = fmul fast float %2985, 0x3F70101000000000
  %2987 = fmul fast float %2974, %2979
  %2988 = fadd fast float %2987, %2982
  %2989 = fmul fast float %2988, 0x3F70101000000000
  %2990 = fadd fast float %2975, -5.000000e-01
  %2991 = fadd fast float %2977, -5.000000e-01
  %2992 = fmul fast float %2990, %2986
  %2993 = fmul fast float %2991, %2986
  %2994 = fadd fast float %2992, 5.000000e-01
  %2995 = fadd fast float %2993, 5.000000e-01
  %2996 = fmul fast float %2994, 2.000000e+00
  %2997 = fadd fast float %2996, -1.000000e+00
  %2998 = fmul fast float %2995, 2.000000e+00
  %2999 = fadd fast float %2998, -1.000000e+00
  %3000 = fadd fast float %2997, %2999
  %3001 = fmul fast float %3000, 5.000000e-01
  %3002 = fsub fast float %2997, %2999
  %3003 = fmul fast float %3002, 5.000000e-01
  %3004 = call float @dx.op.unary.f32(i32 6, float %3001)  ; FAbs(value)
  %3005 = fsub fast float 1.000000e+00, %3004
  %3006 = call float @dx.op.unary.f32(i32 6, float %3003)  ; FAbs(value)
  %3007 = fsub fast float %3005, %3006
  %3008 = call float @dx.op.dot3.f32(i32 55, float %3001, float %3003, float %3007, float %3001, float %3003, float %3007)  ; Dot3(ax,ay,az,bx,by,bz)
  %3009 = call float @dx.op.unary.f32(i32 25, float %3008)  ; Rsqrt(value)
  %3010 = fmul fast float %3001, %3009
  %3011 = fmul fast float %3003, %3009
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = and i32 %3013, 67108864
  %3015 = icmp eq i32 %3014, 0
  br i1 %3015, label %3032, label %3016

; <label>:3016                                    ; preds = %2964
  %3017 = add i32 %63, 328
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = and i32 %3019, 65535
  %3021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3020)  ; LegacyF16ToF32(value)
  %3022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2574, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.i32 %3022, 0
  %3024 = and i32 %3023, 65535
  %3025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3024)  ; LegacyF16ToF32(value)
  %3026 = lshr i32 %3019, 16
  %3027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3026)  ; LegacyF16ToF32(value)
  %3028 = fsub fast float %2989, %3027
  %3029 = fmul fast float %3028, %3021
  %3030 = fadd fast float %3029, %3025
  %3031 = call float @dx.op.unary.f32(i32 7, float %3030)  ; Saturate(value)
  br label %3032

; <label>:3032                                    ; preds = %3016, %2964
  %3033 = phi float [ %3031, %3016 ], [ %2989, %2964 ]
  %3034 = call float @dx.op.dot2.f32(i32 54, float %3010, float %3011, float %2568, float %2569)  ; Dot2(ax,ay,bx,by)
  %3035 = call float @dx.op.dot2.f32(i32 54, float %3010, float %3011, float %2570, float %2571)  ; Dot2(ax,ay,bx,by)
  br label %3036

; <label>:3036                                    ; preds = %3032, %2942
  %3037 = phi float [ %3033, %3032 ], [ 0x3FD6666660000000, %2942 ]
  %3038 = phi float [ %3034, %3032 ], [ 0.000000e+00, %2942 ]
  %3039 = phi float [ %3035, %3032 ], [ 0.000000e+00, %2942 ]
  %3040 = phi float [ %2976, %3032 ], [ 1.000000e+00, %2942 ]
  %3041 = add i32 %63, 208
  %3042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3041, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.i32 %3042, 0
  %3044 = lshr i32 %3043, 22
  %3045 = shl nuw nsw i32 %3044, 5
  %3046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3045)  ; LegacyF16ToF32(value)
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = and i32 %3048, 64
  %3050 = icmp eq i32 %3049, 0
  br i1 %3050, label %3084, label %3051

; <label>:3051                                    ; preds = %3036
  %3052 = add i32 %63, 420
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = add i32 %3054, 0
  %3056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3055, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 0
  %3059 = and i32 %3058, 131072
  %3060 = icmp eq i32 %3059, 0
  %3061 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3056, %dx.types.Handle %119, float %2664, float %2665, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3062 = extractvalue %dx.types.ResRet.f32 %3061, 0
  %3063 = extractvalue %dx.types.ResRet.f32 %3061, 1
  %3064 = extractvalue %dx.types.ResRet.f32 %3061, 2
  %3065 = fmul fast float %3062, %421
  %3066 = fmul fast float %3063, %424
  %3067 = fmul fast float %3064, %427
  br i1 %3060, label %3074, label %3068

; <label>:3068                                    ; preds = %3051
  %3069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3070 = extractvalue %dx.types.CBufRet.f32 %3069, 0
  %3071 = fmul fast float %3070, %3065
  %3072 = fmul fast float %3070, %3066
  %3073 = fmul fast float %3070, %3067
  br label %3074

; <label>:3074                                    ; preds = %3068, %3051
  %3075 = phi float [ %3071, %3068 ], [ %3065, %3051 ]
  %3076 = phi float [ %3072, %3068 ], [ %3066, %3051 ]
  %3077 = phi float [ %3073, %3068 ], [ %3067, %3051 ]
  %3078 = fmul fast float %3075, %3046
  %3079 = select i1 %278, float %3078, float %3075
  %3080 = call float @dx.op.dot3.f32(i32 55, float %3079, float %3076, float %3077, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3081 = select i1 %278, float 0.000000e+00, float %3075
  %3082 = select i1 %278, float %3080, float %3076
  %3083 = select i1 %278, float 0.000000e+00, float %3077
  br label %3084

; <label>:3084                                    ; preds = %3074, %3036
  %3085 = phi float [ %3081, %3074 ], [ 0.000000e+00, %3036 ]
  %3086 = phi float [ %3082, %3074 ], [ 0.000000e+00, %3036 ]
  %3087 = phi float [ %3083, %3074 ], [ 0.000000e+00, %3036 ]
  %3088 = add i32 %63, 144
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = and i32 %3090, 255
  %3092 = uitofp i32 %3091 to float
  %3093 = lshr i32 %3090, 8
  %3094 = and i32 %3093, 255
  %3095 = uitofp i32 %3094 to float
  %3096 = call float @dx.op.dot3.f32(i32 55, float %2957, float %2958, float %2959, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3097 = fmul fast float %3095, %3096
  %3098 = fadd fast float %3097, %3092
  %3099 = fmul fast float %3098, 0x3F70101020000000
  %3100 = call float @dx.op.unary.f32(i32 7, float %3099)  ; Saturate(value)
  br i1 %2556, label %3101, label %3109

; <label>:3101                                    ; preds = %3084
  %3102 = fsub fast float 1.000000e+00, %2737
  %3103 = fmul fast float %3102, %2545
  %3104 = fmul fast float %3102, %2546
  %3105 = fmul fast float %3102, %2547
  %3106 = fmul fast float %3102, %2548
  %3107 = fmul fast float %3102, %2549
  %3108 = fmul fast float %3102, %2550
  br label %3109

; <label>:3109                                    ; preds = %3101, %3084
  %3110 = phi float [ %3103, %3101 ], [ %2545, %3084 ]
  %3111 = phi float [ %3104, %3101 ], [ %2546, %3084 ]
  %3112 = phi float [ %3105, %3101 ], [ %2547, %3084 ]
  %3113 = phi float [ %3106, %3101 ], [ %2548, %3084 ]
  %3114 = phi float [ %3107, %3101 ], [ %2549, %3084 ]
  %3115 = phi float [ %3108, %3101 ], [ %2550, %3084 ]
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = and i32 %3117, 3
  %3119 = icmp eq i32 %3118, 3
  br i1 %3119, label %3198, label %3120

; <label>:3120                                    ; preds = %3109
  %3121 = and i32 %3117, 16
  %3122 = icmp ne i32 %3121, 0
  %3123 = select i1 %3122, float %2737, float 0.000000e+00
  %3124 = icmp eq i32 %3118, 0
  br i1 %3124, label %3125, label %3153

; <label>:3125                                    ; preds = %3120
  %3126 = and i32 %3117, 64
  %3127 = icmp ne i32 %3126, 0
  %3128 = select i1 %3127, float %2737, float 0.000000e+00
  %3129 = fsub fast float %2957, %3110
  %3130 = fsub fast float %2958, %3111
  %3131 = fsub fast float %2959, %3112
  %3132 = fmul fast float %3123, %3129
  %3133 = fmul fast float %3123, %3130
  %3134 = fmul fast float %3123, %3131
  %3135 = fadd fast float %3132, %3110
  %3136 = fadd fast float %3133, %3111
  %3137 = fadd fast float %3134, %3112
  %3138 = fsub fast float %2943, %2551
  %3139 = fmul fast float %3123, %3138
  %3140 = fadd fast float %3139, %2551
  %3141 = fsub fast float %3085, %3113
  %3142 = fsub fast float %3086, %3114
  %3143 = fsub fast float %3087, %3115
  %3144 = fmul fast float %3128, %3141
  %3145 = fmul fast float %3128, %3142
  %3146 = fmul fast float %3128, %3143
  %3147 = fadd fast float %3144, %3113
  %3148 = fadd fast float %3145, %3114
  %3149 = fadd fast float %3146, %3115
  %3150 = fsub fast float %3100, %2554
  %3151 = fmul fast float %3123, %3150
  %3152 = fadd fast float %3151, %2554
  br label %3198

; <label>:3153                                    ; preds = %3120
  %3154 = icmp eq i32 %3118, 1
  br i1 %3154, label %3155, label %3168

; <label>:3155                                    ; preds = %3153
  %3156 = fadd fast float %2957, -1.000000e+00
  %3157 = fadd fast float %2958, -1.000000e+00
  %3158 = fadd fast float %2959, -1.000000e+00
  %3159 = fmul fast float %3123, %3156
  %3160 = fmul fast float %3123, %3157
  %3161 = fmul fast float %3123, %3158
  %3162 = fadd fast float %3159, 1.000000e+00
  %3163 = fadd fast float %3160, 1.000000e+00
  %3164 = fadd fast float %3161, 1.000000e+00
  %3165 = fmul fast float %3162, %3110
  %3166 = fmul fast float %3163, %3111
  %3167 = fmul fast float %3164, %3112
  br label %3198

; <label>:3168                                    ; preds = %3153
  %3169 = icmp eq i32 %3118, 2
  br i1 %3169, label %3170, label %3198

; <label>:3170                                    ; preds = %3168
  %3171 = call float @dx.op.unary.f32(i32 24, float %2957)  ; Sqrt(value)
  %3172 = call float @dx.op.unary.f32(i32 24, float %2958)  ; Sqrt(value)
  %3173 = call float @dx.op.unary.f32(i32 24, float %2959)  ; Sqrt(value)
  %3174 = fadd fast float %3171, -5.000000e-01
  %3175 = fadd fast float %3172, -5.000000e-01
  %3176 = fadd fast float %3173, -5.000000e-01
  %3177 = fmul fast float %3174, %3123
  %3178 = fmul fast float %3175, %3123
  %3179 = fmul fast float %3176, %3123
  %3180 = fadd fast float %3177, 5.000000e-01
  %3181 = fadd fast float %3178, 5.000000e-01
  %3182 = fadd fast float %3179, 5.000000e-01
  %3183 = fmul fast float %3180, 2.000000e+00
  %3184 = fsub fast float 1.000000e+00, %3183
  %3185 = fmul fast float %3184, %3110
  %3186 = fadd fast float %3185, %3183
  %3187 = fmul fast float %3186, %3110
  %3188 = fmul fast float %3181, 2.000000e+00
  %3189 = fsub fast float 1.000000e+00, %3188
  %3190 = fmul fast float %3189, %3111
  %3191 = fadd fast float %3190, %3188
  %3192 = fmul fast float %3191, %3111
  %3193 = fmul fast float %3182, 2.000000e+00
  %3194 = fsub fast float 1.000000e+00, %3193
  %3195 = fmul fast float %3194, %3112
  %3196 = fadd fast float %3195, %3193
  %3197 = fmul fast float %3196, %3112
  br label %3198

; <label>:3198                                    ; preds = %3170, %3168, %3155, %3125, %3109
  %3199 = phi float [ %3110, %3109 ], [ %3187, %3170 ], [ %3110, %3168 ], [ %3165, %3155 ], [ %3135, %3125 ]
  %3200 = phi float [ %3111, %3109 ], [ %3192, %3170 ], [ %3111, %3168 ], [ %3166, %3155 ], [ %3136, %3125 ]
  %3201 = phi float [ %3112, %3109 ], [ %3197, %3170 ], [ %3112, %3168 ], [ %3167, %3155 ], [ %3137, %3125 ]
  %3202 = phi float [ %3113, %3109 ], [ %3113, %3170 ], [ %3113, %3168 ], [ %3113, %3155 ], [ %3147, %3125 ]
  %3203 = phi float [ %3114, %3109 ], [ %3114, %3170 ], [ %3114, %3168 ], [ %3114, %3155 ], [ %3148, %3125 ]
  %3204 = phi float [ %3115, %3109 ], [ %3115, %3170 ], [ %3115, %3168 ], [ %3115, %3155 ], [ %3149, %3125 ]
  %3205 = phi float [ %2551, %3109 ], [ %2551, %3170 ], [ %2551, %3168 ], [ %2551, %3155 ], [ %3140, %3125 ]
  %3206 = phi float [ %2554, %3109 ], [ %2554, %3170 ], [ %2554, %3168 ], [ %2554, %3155 ], [ %3152, %3125 ]
  %3207 = and i32 %3117, 12
  %3208 = icmp eq i32 %3207, 12
  br i1 %3208, label %3281, label %3209

; <label>:3209                                    ; preds = %3198
  %3210 = and i32 %3117, 2097184
  %3211 = icmp eq i32 %3210, 2097184
  %3212 = select i1 %3211, float %2737, float 0.000000e+00
  %3213 = and i32 %3117, 4194336
  %3214 = icmp eq i32 %3213, 4194336
  %3215 = select i1 %3214, float %2737, float 0.000000e+00
  %3216 = and i32 %3117, 8388640
  %3217 = icmp eq i32 %3216, 8388640
  %3218 = select i1 %3217, float %2737, float 0.000000e+00
  %3219 = icmp eq i32 %3207, 0
  br i1 %3219, label %3220, label %3233

; <label>:3220                                    ; preds = %3209
  %3221 = fsub fast float %3038, %2543
  %3222 = fsub fast float %3039, %2544
  %3223 = fmul fast float %3212, %3221
  %3224 = fmul fast float %3212, %3222
  %3225 = fadd fast float %3223, %2543
  %3226 = fadd fast float %3224, %2544
  %3227 = fsub fast float %3040, %2553
  %3228 = fmul fast float %3215, %3227
  %3229 = fadd fast float %3228, %2553
  %3230 = fsub fast float %3037, %2552
  %3231 = fmul fast float %3218, %3230
  %3232 = fadd fast float %3231, %2552
  br label %3281

; <label>:3233                                    ; preds = %3209
  %3234 = icmp eq i32 %3207, 4
  br i1 %3234, label %3235, label %3267

; <label>:3235                                    ; preds = %3233
  %3236 = fmul fast float %3212, %3038
  %3237 = fmul fast float %3212, %3039
  %3238 = fadd fast float %3236, %2543
  %3239 = fadd fast float %3237, %2544
  %3240 = call float @dx.op.binary.f32(i32 36, float %2553, float %3040)  ; FMin(a,b)
  %3241 = fsub fast float %3240, %2553
  %3242 = fmul fast float %3241, %3215
  %3243 = fadd fast float %3242, %2553
  %3244 = fadd fast float %3037, %2552
  %3245 = fmul fast float %3244, 0x3FF337FAE0000000
  %3246 = fmul fast float %2552, %2552
  %3247 = fmul fast float %3037, %3037
  %3248 = fadd fast float %3247, %3246
  %3249 = fmul fast float %3248, 0x3FE5152B00000000
  %3250 = fmul fast float %2552, 0xBFCC1F85E0000000
  %3251 = fmul fast float %3250, %3037
  %3252 = fadd fast float %3251, 0xBFE1363700000000
  %3253 = fadd fast float %3252, %3245
  %3254 = fsub fast float %3253, %3249
  %3255 = fmul fast float %3244, 0x3FBA6F0D00000000
  %3256 = fmul fast float %3248, 0x3FD0432880000000
  %3257 = fmul fast float %2552, 0xBFEF110800000000
  %3258 = fmul fast float %3257, %3037
  %3259 = fadd fast float %3258, 1.000000e+00
  %3260 = fsub fast float %3259, %3255
  %3261 = fadd fast float %3260, %3256
  %3262 = fdiv fast float %3254, %3261
  %3263 = call float @dx.op.unary.f32(i32 7, float %3262)  ; Saturate(value)
  %3264 = fsub fast float %3263, %2552
  %3265 = fmul fast float %3264, %3218
  %3266 = fadd fast float %3265, %2552
  br label %3281

; <label>:3267                                    ; preds = %3233
  %3268 = icmp eq i32 %3207, 8
  br i1 %3268, label %3269, label %3281

; <label>:3269                                    ; preds = %3267
  %3270 = fmul fast float %3212, %3038
  %3271 = fmul fast float %3212, %3039
  %3272 = fadd fast float %3270, %2543
  %3273 = fadd fast float %3271, %2544
  %3274 = call float @dx.op.binary.f32(i32 36, float %2553, float %3040)  ; FMin(a,b)
  %3275 = fsub fast float %3274, %2553
  %3276 = fmul fast float %3275, %3215
  %3277 = fadd fast float %3276, %2553
  %3278 = fsub fast float %3037, %2552
  %3279 = fmul fast float %3218, %3278
  %3280 = fadd fast float %3279, %2552
  br label %3281

; <label>:3281                                    ; preds = %3269, %3267, %3235, %3220, %3198, %2736, %2555, %2542
  %3282 = phi float [ %2543, %3198 ], [ %2543, %2736 ], [ %2543, %2542 ], [ %2543, %2555 ], [ %3225, %3220 ], [ %3238, %3235 ], [ %2543, %3267 ], [ %3272, %3269 ]
  %3283 = phi float [ %2544, %3198 ], [ %2544, %2736 ], [ %2544, %2542 ], [ %2544, %2555 ], [ %3226, %3220 ], [ %3239, %3235 ], [ %2544, %3267 ], [ %3273, %3269 ]
  %3284 = phi float [ %3199, %3198 ], [ %2545, %2736 ], [ %2545, %2542 ], [ %2545, %2555 ], [ %3199, %3220 ], [ %3199, %3235 ], [ %3199, %3267 ], [ %3199, %3269 ]
  %3285 = phi float [ %3200, %3198 ], [ %2546, %2736 ], [ %2546, %2542 ], [ %2546, %2555 ], [ %3200, %3220 ], [ %3200, %3235 ], [ %3200, %3267 ], [ %3200, %3269 ]
  %3286 = phi float [ %3201, %3198 ], [ %2547, %2736 ], [ %2547, %2542 ], [ %2547, %2555 ], [ %3201, %3220 ], [ %3201, %3235 ], [ %3201, %3267 ], [ %3201, %3269 ]
  %3287 = phi float [ %3202, %3198 ], [ %2548, %2736 ], [ %2548, %2542 ], [ %2548, %2555 ], [ %3202, %3220 ], [ %3202, %3235 ], [ %3202, %3267 ], [ %3202, %3269 ]
  %3288 = phi float [ %3203, %3198 ], [ %2549, %2736 ], [ %2549, %2542 ], [ %2549, %2555 ], [ %3203, %3220 ], [ %3203, %3235 ], [ %3203, %3267 ], [ %3203, %3269 ]
  %3289 = phi float [ %3204, %3198 ], [ %2550, %2736 ], [ %2550, %2542 ], [ %2550, %2555 ], [ %3204, %3220 ], [ %3204, %3235 ], [ %3204, %3267 ], [ %3204, %3269 ]
  %3290 = phi float [ %3205, %3198 ], [ %2551, %2736 ], [ %2551, %2542 ], [ %2551, %2555 ], [ %3205, %3220 ], [ %3205, %3235 ], [ %3205, %3267 ], [ %3205, %3269 ]
  %3291 = phi float [ %2552, %3198 ], [ %2552, %2736 ], [ %2552, %2542 ], [ %2552, %2555 ], [ %3232, %3220 ], [ %3266, %3235 ], [ %2552, %3267 ], [ %3280, %3269 ]
  %3292 = phi float [ %2553, %3198 ], [ %2553, %2736 ], [ %2553, %2542 ], [ %2553, %2555 ], [ %3229, %3220 ], [ %3243, %3235 ], [ %2553, %3267 ], [ %3277, %3269 ]
  %3293 = phi float [ %3206, %3198 ], [ %2554, %2736 ], [ %2554, %2542 ], [ %2554, %2555 ], [ %3206, %3220 ], [ %3206, %3235 ], [ %3206, %3267 ], [ %3206, %3269 ]
  %3294 = add i32 %63, 360
  %3295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.i32 %3295, 0
  %3297 = extractvalue %dx.types.ResRet.i32 %3295, 1
  %3298 = bitcast i32 %3296 to float
  %3299 = bitcast i32 %3297 to float
  %3300 = fcmp fast oge float %3298, 0.000000e+00
  %3301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3302 = extractvalue %dx.types.CBufRet.f32 %3301, 0
  %3303 = select i1 %3300, float %3298, float %3302
  %3304 = fadd fast float %3303, %220
  %3305 = fmul fast float %3299, %221
  %3306 = add i32 %63, 456
  %3307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3306, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.i32 %3307, 0
  %3309 = add i32 %3308, 0
  %3310 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3309, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3311 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3310, %dx.types.Handle %120, float %101, float %102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3312 = extractvalue %dx.types.ResRet.f32 %3311, 0
  %3313 = fmul fast float %3305, %3312
  %3314 = fadd fast float %3304, %3313
  %3315 = and i32 %212, 65535
  %3316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3315)  ; LegacyF16ToF32(value)
  %3317 = lshr i32 %212, 16
  %3318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3317)  ; LegacyF16ToF32(value)
  %3319 = and i32 %213, 65535
  %3320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3319)  ; LegacyF16ToF32(value)
  %3321 = fmul fast float %3316, %3284
  %3322 = fmul fast float %3318, %3285
  %3323 = fmul fast float %3320, %3286
  %3324 = shl i32 %214, 4
  %3325 = and i32 %3324, 32752
  %3326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3325)  ; LegacyF16ToF32(value)
  %3327 = lshr i32 %214, 7
  %3328 = and i32 %3327, 32752
  %3329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3328)  ; LegacyF16ToF32(value)
  %3330 = lshr i32 %214, 22
  %3331 = shl nuw nsw i32 %3330, 5
  %3332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3331)  ; LegacyF16ToF32(value)
  %3333 = and i32 %215, 65535
  %3334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3333)  ; LegacyF16ToF32(value)
  %3335 = fmul fast float %3326, %3287
  %3336 = fmul fast float %3335, %3334
  %3337 = fmul fast float %3329, %3288
  %3338 = fmul fast float %3337, %3334
  %3339 = fmul fast float %3332, %3289
  %3340 = fmul fast float %3339, %3334
  %3341 = call float @dx.op.dot2.f32(i32 54, float %3282, float %3283, float %3282, float %3283)  ; Dot2(ax,ay,bx,by)
  %3342 = fmul fast float %3341, 0x3FE3333340000000
  %3343 = fsub fast float 1.000000e+00, %3342
  %3344 = call float @dx.op.dot3.f32(i32 55, float %3282, float %3283, float %3343, float %3282, float %3283, float %3343)  ; Dot3(ax,ay,az,bx,by,bz)
  %3345 = call float @dx.op.unary.f32(i32 25, float %3344)  ; Rsqrt(value)
  %3346 = fmul fast float %3345, %3282
  %3347 = fmul fast float %3345, %3283
  %3348 = fmul fast float %3343, %3345
  %3349 = fmul fast float %3348, %132
  %3350 = fmul fast float %3348, %134
  %3351 = fmul fast float %3348, %136
  %3352 = fmul fast float %3346, %94
  %3353 = fmul fast float %3346, %95
  %3354 = fmul fast float %3346, %96
  %3355 = fadd fast float %3349, %3352
  %3356 = fadd fast float %3350, %3353
  %3357 = fadd fast float %3351, %3354
  %3358 = fmul fast float %146, %3347
  %3359 = fmul fast float %147, %3347
  %3360 = fmul fast float %148, %3347
  %3361 = fadd fast float %3355, %3358
  %3362 = fadd fast float %3356, %3359
  %3363 = fadd fast float %3357, %3360
  %3364 = call float @dx.op.dot3.f32(i32 55, float %3361, float %3362, float %3363, float %3361, float %3362, float %3363)  ; Dot3(ax,ay,az,bx,by,bz)
  %3365 = call float @dx.op.unary.f32(i32 25, float %3364)  ; Rsqrt(value)
  %3366 = fmul fast float %3361, %3365
  %3367 = fmul fast float %3362, %3365
  %3368 = fmul fast float %3363, %3365
  %3369 = icmp eq i32 %65, 65535
  br i1 %3369, label %3888, label %3370

; <label>:3370                                    ; preds = %3281
  %3371 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %3372 = call float @dx.op.unary.f32(i32 83, float %67)  ; DerivCoarseX(value)
  %3373 = call float @dx.op.unary.f32(i32 83, float %68)  ; DerivCoarseX(value)
  %3374 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %3375 = call float @dx.op.unary.f32(i32 84, float %67)  ; DerivCoarseY(value)
  %3376 = call float @dx.op.unary.f32(i32 84, float %68)  ; DerivCoarseY(value)
  %3377 = fadd fast float %3371, %66
  %3378 = fadd fast float %3372, %67
  %3379 = fadd fast float %3373, %68
  %3380 = fadd fast float %3374, %66
  %3381 = fadd fast float %3375, %67
  %3382 = fadd fast float %3376, %68
  %3383 = mul i32 %65, 48
  %3384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.f32 %3384, 0
  %3386 = extractvalue %dx.types.ResRet.f32 %3384, 1
  %3387 = extractvalue %dx.types.ResRet.f32 %3384, 2
  %3388 = add i32 %3383, 16
  %3389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.f32 %3389, 0
  %3391 = extractvalue %dx.types.ResRet.f32 %3389, 1
  %3392 = extractvalue %dx.types.ResRet.f32 %3389, 2
  %3393 = add i32 %3383, 32
  %3394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.f32 %3394, 0
  %3396 = extractvalue %dx.types.ResRet.f32 %3394, 1
  %3397 = extractvalue %dx.types.ResRet.f32 %3394, 2
  %3398 = extractvalue %dx.types.ResRet.f32 %3394, 3
  %3399 = bitcast float %3398 to i32
  %3400 = fmul fast float %3385, %66
  %3401 = fmul fast float %3386, %67
  %3402 = fmul fast float %3387, %68
  %3403 = fsub fast float %3400, %3390
  %3404 = fsub fast float %3401, %3391
  %3405 = fsub fast float %3402, %3392
  %3406 = call float @dx.op.unary.f32(i32 7, float %3403)  ; Saturate(value)
  %3407 = call float @dx.op.unary.f32(i32 7, float %3404)  ; Saturate(value)
  %3408 = call float @dx.op.unary.f32(i32 7, float %3405)  ; Saturate(value)
  %3409 = fmul fast float %3406, %3395
  %3410 = fmul fast float %3407, %3396
  %3411 = fmul fast float %3408, %3397
  %3412 = fadd fast float %3395, -1.000000e+00
  %3413 = fadd fast float %3396, -1.000000e+00
  %3414 = fadd fast float %3397, -1.000000e+00
  %3415 = call float @dx.op.unary.f32(i32 27, float %3409)  ; Round_ni(value)
  %3416 = call float @dx.op.unary.f32(i32 27, float %3410)  ; Round_ni(value)
  %3417 = call float @dx.op.unary.f32(i32 27, float %3411)  ; Round_ni(value)
  %3418 = call float @dx.op.binary.f32(i32 36, float %3415, float %3412)  ; FMin(a,b)
  %3419 = call float @dx.op.binary.f32(i32 36, float %3416, float %3413)  ; FMin(a,b)
  %3420 = call float @dx.op.binary.f32(i32 36, float %3417, float %3414)  ; FMin(a,b)
  %3421 = fmul fast float %3420, %3396
  %3422 = fadd fast float %3421, %3419
  %3423 = fmul fast float %3422, %3395
  %3424 = fadd fast float %3423, %3418
  %3425 = fptosi float %3424 to i32
  %3426 = add nsw i32 %3425, %3399
  %3427 = shl nsw i32 %3426, 2
  %3428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3427, i32 undef)  ; BufferLoad(srv,index,wot)
  %3429 = extractvalue %dx.types.ResRet.i32 %3428, 0
  %3430 = lshr i32 %3429, 16
  %3431 = icmp eq i32 %3430, 0
  br i1 %3431, label %3856, label %3432

; <label>:3432                                    ; preds = %3370
  br label %3433

; <label>:3433                                    ; preds = %3555, %3432
  %3434 = phi i32 [ %3457, %3555 ], [ %3430, %3432 ]
  %3435 = phi float [ %3556, %3555 ], [ 0.000000e+00, %3432 ]
  %3436 = phi float [ %3557, %3555 ], [ %1073, %3432 ]
  %3437 = phi float [ %3558, %3555 ], [ %3314, %3432 ]
  %3438 = phi float [ %3559, %3555 ], [ %3293, %3432 ]
  %3439 = phi float [ %3560, %3555 ], [ 0.000000e+00, %3432 ]
  %3440 = phi float [ %3561, %3555 ], [ 0.000000e+00, %3432 ]
  %3441 = phi float [ %3562, %3555 ], [ %3336, %3432 ]
  %3442 = phi float [ %3563, %3555 ], [ %3338, %3432 ]
  %3443 = phi float [ %3564, %3555 ], [ %3340, %3432 ]
  %3444 = phi float [ %3565, %3555 ], [ %3366, %3432 ]
  %3445 = phi float [ %3566, %3555 ], [ %3367, %3432 ]
  %3446 = phi float [ %3567, %3555 ], [ %3368, %3432 ]
  %3447 = phi float [ %3568, %3555 ], [ %3292, %3432 ]
  %3448 = phi float [ %3569, %3555 ], [ %3291, %3432 ]
  %3449 = phi float [ %3570, %3555 ], [ 0.000000e+00, %3432 ]
  %3450 = phi float [ %3571, %3555 ], [ %3290, %3432 ]
  %3451 = phi float [ %3572, %3555 ], [ %3321, %3432 ]
  %3452 = phi float [ %3573, %3555 ], [ %3322, %3432 ]
  %3453 = phi float [ %3574, %3555 ], [ %3323, %3432 ]
  %3454 = shl nuw nsw i32 %3434, 2
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = lshr i32 %3456, 16
  %3458 = shl i32 %3456, 8
  %3459 = and i32 %3458, 16776960
  %3460 = or i32 %3459, 48
  %3461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.f32 %3461, 0
  %3463 = extractvalue %dx.types.ResRet.f32 %3461, 1
  %3464 = extractvalue %dx.types.ResRet.f32 %3461, 2
  %3465 = or i32 %3459, 64
  %3466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.i32 %3466, 0
  %3468 = extractvalue %dx.types.ResRet.i32 %3466, 1
  %3469 = or i32 %3459, 80
  %3470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3469, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.f32 %3470, 2
  %3472 = extractvalue %dx.types.ResRet.f32 %3470, 3
  %3473 = or i32 %3459, 96
  %3474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3473, i32 undef)  ; BufferLoad(srv,index,wot)
  %3475 = extractvalue %dx.types.ResRet.f32 %3474, 0
  %3476 = extractvalue %dx.types.ResRet.f32 %3474, 1
  %3477 = extractvalue %dx.types.ResRet.f32 %3474, 2
  %3478 = extractvalue %dx.types.ResRet.f32 %3474, 3
  %3479 = or i32 %3459, 112
  %3480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3479, i32 undef)  ; BufferLoad(srv,index,wot)
  %3481 = extractvalue %dx.types.ResRet.f32 %3480, 2
  %3482 = or i32 %3459, 128
  %3483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3482, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.ResRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.ResRet.f32 %3483, 2
  %3487 = extractvalue %dx.types.ResRet.f32 %3483, 3
  %3488 = or i32 %3459, 144
  %3489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3488, i32 undef)  ; BufferLoad(srv,index,wot)
  %3490 = extractvalue %dx.types.ResRet.f32 %3489, 0
  %3491 = extractvalue %dx.types.ResRet.f32 %3489, 1
  %3492 = extractvalue %dx.types.ResRet.f32 %3489, 2
  %3493 = extractvalue %dx.types.ResRet.f32 %3489, 3
  %3494 = or i32 %3459, 160
  %3495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3494, i32 undef)  ; BufferLoad(srv,index,wot)
  %3496 = extractvalue %dx.types.ResRet.f32 %3495, 0
  %3497 = extractvalue %dx.types.ResRet.f32 %3495, 1
  %3498 = extractvalue %dx.types.ResRet.f32 %3495, 2
  %3499 = extractvalue %dx.types.ResRet.f32 %3495, 3
  %3500 = or i32 %3459, 192
  %3501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3500, i32 undef)  ; BufferLoad(srv,index,wot)
  %3502 = extractvalue %dx.types.ResRet.i32 %3501, 0
  %3503 = or i32 %3459, 208
  %3504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3503, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.f32 %3504, 0
  %3506 = or i32 %3459, 248
  %3507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.f32 %3507, 0
  %3509 = extractvalue %dx.types.ResRet.f32 %3507, 1
  %3510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3511 = extractvalue %dx.types.ResRet.f32 %3510, 0
  %3512 = extractvalue %dx.types.ResRet.f32 %3510, 1
  %3513 = extractvalue %dx.types.ResRet.f32 %3510, 2
  %3514 = extractvalue %dx.types.ResRet.f32 %3510, 3
  %3515 = call float @dx.op.dot4.f32(i32 56, float %3511, float %3512, float %3513, float %3514, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3516 = or i32 %3459, 16
  %3517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3516, i32 undef)  ; BufferLoad(srv,index,wot)
  %3518 = extractvalue %dx.types.ResRet.f32 %3517, 0
  %3519 = extractvalue %dx.types.ResRet.f32 %3517, 1
  %3520 = extractvalue %dx.types.ResRet.f32 %3517, 2
  %3521 = extractvalue %dx.types.ResRet.f32 %3517, 3
  %3522 = call float @dx.op.dot4.f32(i32 56, float %3518, float %3519, float %3520, float %3521, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3523 = or i32 %3459, 32
  %3524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3523, i32 undef)  ; BufferLoad(srv,index,wot)
  %3525 = extractvalue %dx.types.ResRet.f32 %3524, 0
  %3526 = extractvalue %dx.types.ResRet.f32 %3524, 1
  %3527 = extractvalue %dx.types.ResRet.f32 %3524, 2
  %3528 = extractvalue %dx.types.ResRet.f32 %3524, 3
  %3529 = call float @dx.op.dot4.f32(i32 56, float %3525, float %3526, float %3527, float %3528, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3530 = call float @dx.op.unary.f32(i32 27, float %3515)  ; Round_ni(value)
  %3531 = call float @dx.op.unary.f32(i32 6, float %3530)  ; FAbs(value)
  %3532 = call float @dx.op.unary.f32(i32 27, float %3522)  ; Round_ni(value)
  %3533 = call float @dx.op.unary.f32(i32 6, float %3532)  ; FAbs(value)
  %3534 = call float @dx.op.unary.f32(i32 6, float %3529)  ; FAbs(value)
  %3535 = call float @dx.op.unary.f32(i32 27, float %3534)  ; Round_ni(value)
  %3536 = fadd fast float %3533, %3531
  %3537 = fadd fast float %3536, %3535
  %3538 = fcmp fast oeq float %3537, 0.000000e+00
  %3539 = call float @dx.op.dot4.f32(i32 56, float %3511, float %3512, float %3513, float %3514, float %3377, float %3378, float %3379, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3540 = call float @dx.op.dot4.f32(i32 56, float %3518, float %3519, float %3520, float %3521, float %3377, float %3378, float %3379, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3541 = call float @dx.op.dot4.f32(i32 56, float %3511, float %3512, float %3513, float %3514, float %3380, float %3381, float %3382, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3542 = call float @dx.op.dot4.f32(i32 56, float %3518, float %3519, float %3520, float %3521, float %3380, float %3381, float %3382, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3543 = fsub fast float %3539, %3515
  %3544 = fsub fast float %3541, %3515
  %3545 = fsub fast float %3540, %3522
  %3546 = fsub fast float %3542, %3522
  %3547 = call float @dx.op.dot3.f32(i32 55, float %3462, float %3463, float %3464, float %132, float %134, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %3548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3549 = extractvalue %dx.types.CBufRet.f32 %3548, 2
  %3550 = fadd fast float %3549, %3547
  %3551 = call float @dx.op.unary.f32(i32 7, float %3550)  ; Saturate(value)
  %3552 = extractvalue %dx.types.CBufRet.f32 %3548, 0
  %3553 = fcmp fast ogt float %3551, %3552
  %3554 = and i1 %3538, %3553
  br i1 %3554, label %3576, label %3555

; <label>:3555                                    ; preds = %3842, %3659, %3576, %3433
  %3556 = phi float [ %3435, %3576 ], [ %3662, %3659 ], [ %3662, %3842 ], [ %3435, %3433 ]
  %3557 = phi float [ %3436, %3576 ], [ %3436, %3659 ], [ %3817, %3842 ], [ %3436, %3433 ]
  %3558 = phi float [ %3437, %3576 ], [ %3437, %3659 ], [ %3816, %3842 ], [ %3437, %3433 ]
  %3559 = phi float [ %3438, %3576 ], [ %3438, %3659 ], [ %3814, %3842 ], [ %3438, %3433 ]
  %3560 = phi float [ %3439, %3576 ], [ %3439, %3659 ], [ %3786, %3842 ], [ %3439, %3433 ]
  %3561 = phi float [ %3440, %3576 ], [ %3440, %3659 ], [ %3784, %3842 ], [ %3440, %3433 ]
  %3562 = phi float [ %3441, %3576 ], [ %3441, %3659 ], [ %3852, %3842 ], [ %3441, %3433 ]
  %3563 = phi float [ %3442, %3576 ], [ %3442, %3659 ], [ %3853, %3842 ], [ %3442, %3433 ]
  %3564 = phi float [ %3443, %3576 ], [ %3443, %3659 ], [ %3854, %3842 ], [ %3443, %3433 ]
  %3565 = phi float [ %3444, %3576 ], [ %3444, %3659 ], [ %3765, %3842 ], [ %3444, %3433 ]
  %3566 = phi float [ %3445, %3576 ], [ %3445, %3659 ], [ %3766, %3842 ], [ %3445, %3433 ]
  %3567 = phi float [ %3446, %3576 ], [ %3446, %3659 ], [ %3767, %3842 ], [ %3446, %3433 ]
  %3568 = phi float [ %3447, %3576 ], [ %3447, %3659 ], [ %3794, %3842 ], [ %3447, %3433 ]
  %3569 = phi float [ %3448, %3576 ], [ %3448, %3659 ], [ %3791, %3842 ], [ %3448, %3433 ]
  %3570 = phi float [ %3449, %3576 ], [ %3449, %3659 ], [ %3788, %3842 ], [ %3449, %3433 ]
  %3571 = phi float [ %3450, %3576 ], [ %3450, %3659 ], [ %3782, %3842 ], [ %3450, %3433 ]
  %3572 = phi float [ %3451, %3576 ], [ %3451, %3659 ], [ %3777, %3842 ], [ %3451, %3433 ]
  %3573 = phi float [ %3452, %3576 ], [ %3452, %3659 ], [ %3778, %3842 ], [ %3452, %3433 ]
  %3574 = phi float [ %3453, %3576 ], [ %3453, %3659 ], [ %3779, %3842 ], [ %3453, %3433 ]
  %3575 = icmp eq i32 %3457, 0
  br i1 %3575, label %3855, label %3433

; <label>:3576                                    ; preds = %3433
  %3577 = extractvalue %dx.types.ResRet.f32 %3461, 3
  %3578 = extractvalue %dx.types.ResRet.f32 %3480, 3
  %3579 = extractvalue %dx.types.ResRet.f32 %3480, 1
  %3580 = extractvalue %dx.types.ResRet.f32 %3480, 0
  %3581 = extractvalue %dx.types.ResRet.f32 %3470, 1
  %3582 = extractvalue %dx.types.ResRet.f32 %3470, 0
  %3583 = extractvalue %dx.types.ResRet.i32 %3466, 3
  %3584 = extractvalue %dx.types.ResRet.i32 %3466, 2
  %3585 = bitcast float %3577 to i32
  %3586 = add i32 %3583, 0
  %3587 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3586, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3588 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3589 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3587, %dx.types.Handle %3588, float %3515, float %3522, float undef, float undef, i32 0, i32 0, i32 undef, float %3543, float %3545, float undef, float %3544, float %3546, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3590 = extractvalue %dx.types.ResRet.f32 %3589, 0
  %3591 = fmul fast float %3590, %3582
  %3592 = fadd fast float %3591, %3581
  %3593 = call float @dx.op.unary.f32(i32 7, float %3592)  ; Saturate(value)
  %3594 = fmul fast float %3515, %3475
  %3595 = call float @dx.op.tertiary.f32(i32 46, float %3476, float %3522, float %3594)  ; FMad(a,b,c)
  %3596 = fadd fast float %3595, %3580
  %3597 = fmul fast float %3515, %3477
  %3598 = call float @dx.op.tertiary.f32(i32 46, float %3478, float %3522, float %3597)  ; FMad(a,b,c)
  %3599 = fadd fast float %3598, %3579
  %3600 = fmul fast float %3543, %3475
  %3601 = call float @dx.op.tertiary.f32(i32 46, float %3476, float %3545, float %3600)  ; FMad(a,b,c)
  %3602 = fmul fast float %3543, %3477
  %3603 = call float @dx.op.tertiary.f32(i32 46, float %3478, float %3545, float %3602)  ; FMad(a,b,c)
  %3604 = fmul fast float %3544, %3475
  %3605 = call float @dx.op.tertiary.f32(i32 46, float %3476, float %3546, float %3604)  ; FMad(a,b,c)
  %3606 = fmul fast float %3544, %3477
  %3607 = call float @dx.op.tertiary.f32(i32 46, float %3478, float %3546, float %3606)  ; FMad(a,b,c)
  %3608 = add i32 %3584, 0
  %3609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3608, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3610 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3609, %dx.types.Handle %3588, float %3596, float %3599, float undef, float undef, i32 0, i32 0, i32 undef, float %3601, float %3603, float undef, float %3605, float %3607, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3611 = extractvalue %dx.types.ResRet.f32 %3610, 0
  %3612 = and i32 %3585, 1024
  %3613 = icmp ne i32 %3612, 0
  %3614 = fcmp fast ogt float %3611, 0x3FE0101020000000
  %3615 = uitofp i1 %3614 to float
  %3616 = select i1 %3613, float %3615, float %3611
  %3617 = and i32 %3585, 8192
  %3618 = icmp ne i32 %3617, 0
  %3619 = select i1 %3618, float %3578, float 1.000000e+00
  %3620 = fmul fast float %3515, 2.000000e+00
  %3621 = fadd fast float %3620, -1.000000e+00
  %3622 = call float @dx.op.unary.f32(i32 6, float %3621)  ; FAbs(value)
  %3623 = fmul fast float %3622, %3508
  %3624 = fsub fast float %3623, %3508
  %3625 = call float @dx.op.unary.f32(i32 7, float %3624)  ; Saturate(value)
  %3626 = fmul fast float %3522, 2.000000e+00
  %3627 = fadd fast float %3626, -1.000000e+00
  %3628 = call float @dx.op.unary.f32(i32 6, float %3627)  ; FAbs(value)
  %3629 = fmul fast float %3628, %3509
  %3630 = fsub fast float %3629, %3509
  %3631 = call float @dx.op.unary.f32(i32 7, float %3630)  ; Saturate(value)
  %3632 = fmul fast float %3534, %3471
  %3633 = fsub fast float %3632, %3471
  %3634 = call float @dx.op.unary.f32(i32 7, float %3633)  ; Saturate(value)
  %3635 = fmul fast float %3593, %3619
  %3636 = fmul fast float %3635, %3590
  %3637 = fmul fast float %3636, %3625
  %3638 = fmul fast float %3637, %3616
  %3639 = fmul fast float %3638, %3631
  %3640 = fmul fast float %3639, %3634
  %3641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3642 = extractvalue %dx.types.CBufRet.f32 %3641, 1
  %3643 = extractvalue %dx.types.CBufRet.f32 %3641, 0
  %3644 = fsub fast float %3551, %3643
  %3645 = fmul fast float %3644, %3642
  %3646 = call float @dx.op.unary.f32(i32 7, float %3645)  ; Saturate(value)
  %3647 = fmul fast float %3640, %3472
  %3648 = fadd fast float %3640, %3472
  %3649 = fmul fast float %3648, %3481
  %3650 = fsub fast float %3649, %3481
  %3651 = call float @dx.op.unary.f32(i32 7, float %3650)  ; Saturate(value)
  %3652 = and i32 %3585, 128
  %3653 = icmp ne i32 %3652, 0
  %3654 = select i1 %3653, float %3651, float %3647
  %3655 = fmul fast float %3654, %3646
  %3656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3657 = extractvalue %dx.types.CBufRet.f32 %3656, 0
  %3658 = fcmp fast ugt float %3655, %3657
  br i1 %3658, label %3659, label %3555

; <label>:3659                                    ; preds = %3576
  %3660 = select i1 %3618, float %3655, float 0.000000e+00
  %3661 = fadd fast float %3660, %3435
  %3662 = call float @dx.op.unary.f32(i32 7, float %3661)  ; Saturate(value)
  br i1 %3618, label %3555, label %3663

; <label>:3663                                    ; preds = %3659
  %3664 = and i32 %3585, 4
  %3665 = and i32 %3585, 8
  %3666 = add i32 %3467, 0
  %3667 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3666, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3669 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3667, %dx.types.Handle %3668, float %3596, float %3599, float undef, float undef, i32 0, i32 0, i32 undef, float %3601, float %3603, float undef, float %3605, float %3607, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3670 = extractvalue %dx.types.ResRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.ResRet.f32 %3669, 1
  %3672 = extractvalue %dx.types.ResRet.f32 %3669, 2
  %3673 = extractvalue %dx.types.ResRet.f32 %3669, 3
  %3674 = bitcast float %3493 to i32
  %3675 = and i32 %3674, 255
  %3676 = uitofp i32 %3675 to float
  %3677 = lshr i32 %3674, 8
  %3678 = and i32 %3677, 255
  %3679 = uitofp i32 %3678 to float
  %3680 = fmul fast float %3673, %3676
  %3681 = fadd fast float %3680, %3679
  %3682 = fmul fast float %3681, 0x3F70101000000000
  %3683 = add i32 %3468, 0
  %3684 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3683, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3685 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3684, %dx.types.Handle %3668, float %3596, float %3599, float undef, float undef, i32 0, i32 0, i32 undef, float %3601, float %3603, float undef, float %3605, float %3607, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3686 = extractvalue %dx.types.ResRet.f32 %3685, 0
  %3687 = extractvalue %dx.types.ResRet.f32 %3685, 1
  %3688 = extractvalue %dx.types.ResRet.f32 %3685, 2
  %3689 = extractvalue %dx.types.ResRet.f32 %3685, 3
  %3690 = bitcast float %3487 to i32
  %3691 = and i32 %3690, 255
  %3692 = uitofp i32 %3691 to float
  %3693 = lshr i32 %3690, 8
  %3694 = and i32 %3693, 255
  %3695 = uitofp i32 %3694 to float
  %3696 = lshr i32 %3690, 16
  %3697 = and i32 %3696, 255
  %3698 = uitofp i32 %3697 to float
  %3699 = fmul fast float %3698, 0x3F70101000000000
  %3700 = fmul fast float %3686, %3692
  %3701 = fadd fast float %3700, %3695
  %3702 = fmul fast float %3701, 0x3F70101000000000
  %3703 = fadd fast float %3687, -5.000000e-01
  %3704 = fadd fast float %3689, -5.000000e-01
  %3705 = fmul fast float %3703, %3699
  %3706 = fmul fast float %3704, %3699
  %3707 = fadd fast float %3705, 5.000000e-01
  %3708 = fadd fast float %3706, 5.000000e-01
  %3709 = fmul fast float %3670, %3496
  %3710 = fmul fast float %3671, %3497
  %3711 = fmul fast float %3672, %3498
  %3712 = fmul fast float %3707, 2.000000e+00
  %3713 = fadd fast float %3712, -1.000000e+00
  %3714 = fmul fast float %3708, 2.000000e+00
  %3715 = fadd fast float %3714, -1.000000e+00
  %3716 = fadd fast float %3713, %3715
  %3717 = fmul fast float %3716, 5.000000e-01
  %3718 = fsub fast float %3713, %3715
  %3719 = fmul fast float %3718, 5.000000e-01
  %3720 = call float @dx.op.unary.f32(i32 6, float %3717)  ; FAbs(value)
  %3721 = fsub fast float 1.000000e+00, %3720
  %3722 = call float @dx.op.unary.f32(i32 6, float %3719)  ; FAbs(value)
  %3723 = fsub fast float %3721, %3722
  %3724 = call float @dx.op.dot3.f32(i32 55, float %3717, float %3719, float %3723, float %3717, float %3719, float %3723)  ; Dot3(ax,ay,az,bx,by,bz)
  %3725 = call float @dx.op.unary.f32(i32 25, float %3724)  ; Rsqrt(value)
  %3726 = fmul fast float %3717, %3725
  %3727 = fmul fast float %3719, %3725
  %3728 = fmul fast float %3725, %3723
  %3729 = fmul fast float %3728, %3462
  %3730 = fmul fast float %3728, %3463
  %3731 = fmul fast float %3728, %3464
  %3732 = fmul fast float %3726, %3484
  %3733 = fmul fast float %3726, %3485
  %3734 = fmul fast float %3726, %3486
  %3735 = fadd fast float %3732, %3729
  %3736 = fadd fast float %3733, %3730
  %3737 = fadd fast float %3734, %3731
  %3738 = fmul fast float %3727, %3490
  %3739 = fmul fast float %3727, %3491
  %3740 = fmul fast float %3727, %3492
  %3741 = fadd fast float %3735, %3738
  %3742 = fadd fast float %3736, %3739
  %3743 = fadd fast float %3737, %3740
  %3744 = call float @dx.op.dot3.f32(i32 55, float %3741, float %3742, float %3743, float %3741, float %3742, float %3743)  ; Dot3(ax,ay,az,bx,by,bz)
  %3745 = call float @dx.op.unary.f32(i32 25, float %3744)  ; Rsqrt(value)
  %3746 = fmul fast float %3741, %3745
  %3747 = fmul fast float %3742, %3745
  %3748 = fmul fast float %3743, %3745
  %3749 = icmp ne i32 %3665, 0
  %3750 = select i1 %3749, float 1.000000e+00, float 0.000000e+00
  %3751 = fmul fast float %3655, %3750
  %3752 = and i32 %3585, 1
  %3753 = icmp eq i32 %3752, 0
  br i1 %3753, label %3754, label %3758

; <label>:3754                                    ; preds = %3663
  %3755 = fsub fast float %3746, %3444
  %3756 = fsub fast float %3747, %3445
  %3757 = fsub fast float %3748, %3446
  br label %3758

; <label>:3758                                    ; preds = %3754, %3663
  %3759 = phi float [ %3755, %3754 ], [ %3746, %3663 ]
  %3760 = phi float [ %3756, %3754 ], [ %3747, %3663 ]
  %3761 = phi float [ %3757, %3754 ], [ %3748, %3663 ]
  %3762 = fmul float %3761, %3751
  %3763 = fmul float %3760, %3751
  %3764 = fmul float %3759, %3751
  %3765 = fadd fast float %3764, %3444
  %3766 = fadd fast float %3763, %3445
  %3767 = fadd fast float %3762, %3446
  %3768 = icmp ne i32 %3664, 0
  %3769 = select i1 %3768, float 1.000000e+00, float 0.000000e+00
  %3770 = fmul fast float %3655, %3769
  %3771 = fsub fast float %3709, %3451
  %3772 = fsub fast float %3710, %3452
  %3773 = fsub fast float %3711, %3453
  %3774 = fmul fast float %3771, %3770
  %3775 = fmul fast float %3772, %3770
  %3776 = fmul fast float %3773, %3770
  %3777 = fadd fast float %3774, %3451
  %3778 = fadd fast float %3775, %3452
  %3779 = fadd fast float %3776, %3453
  %3780 = fsub fast float %3682, %3450
  %3781 = fmul fast float %3780, %3770
  %3782 = fadd fast float %3781, %3450
  %3783 = fmul fast float %3770, %3440
  %3784 = fsub fast float %3440, %3783
  %3785 = fmul fast float %3770, %3439
  %3786 = fsub fast float %3439, %3785
  %3787 = fadd fast float %3655, %3449
  %3788 = call float @dx.op.unary.f32(i32 7, float %3787)  ; Saturate(value)
  %3789 = fsub fast float %3702, %3448
  %3790 = fmul fast float %3789, %3751
  %3791 = fadd fast float %3790, %3448
  %3792 = fsub fast float %3688, %3447
  %3793 = fmul fast float %3792, %3751
  %3794 = fadd fast float %3793, %3447
  %3795 = call float @dx.op.dot3.f32(i32 55, float %3709, float %3710, float %3711, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3797 = extractvalue %dx.types.CBufRet.f32 %3796, 0
  %3798 = extractvalue %dx.types.CBufRet.f32 %3796, 1
  %3799 = fmul fast float %3798, %3795
  %3800 = fadd fast float %3799, %3797
  %3801 = call float @dx.op.unary.f32(i32 7, float %3800)  ; Saturate(value)
  %3802 = bitcast float %3499 to i32
  %3803 = and i32 %3802, 65535
  %3804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3803)  ; LegacyF16ToF32(value)
  %3805 = lshr i32 %3802, 16
  %3806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3805)  ; LegacyF16ToF32(value)
  %3807 = fcmp fast oge float %3804, 0.000000e+00
  %3808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3809 = extractvalue %dx.types.CBufRet.f32 %3808, 0
  %3810 = select i1 %3807, float %3804, float %3809
  %3811 = fadd fast float %3810, %3806
  %3812 = fsub fast float %3801, %3438
  %3813 = fmul fast float %3812, %3655
  %3814 = fadd fast float %3813, %3438
  %3815 = fmul fast float %3811, %3655
  %3816 = call float @dx.op.binary.f32(i32 35, float %3437, float %3815)  ; FMax(a,b)
  %3817 = call float @dx.op.binary.f32(i32 35, float %3436, float %3655)  ; FMax(a,b)
  %3818 = and i32 %3585, 16
  %3819 = icmp eq i32 %3818, 0
  br i1 %3819, label %3842, label %3820

; <label>:3820                                    ; preds = %3758
  %3821 = bitcast float %3505 to i32
  %3822 = add i32 %3502, 0
  %3823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3822, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3824 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3823, %dx.types.Handle %3668, float %3596, float %3599, float undef, float undef, i32 0, i32 0, i32 undef, float %3601, float %3603, float undef, float %3605, float %3607, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3825 = extractvalue %dx.types.ResRet.f32 %3824, 0
  %3826 = extractvalue %dx.types.ResRet.f32 %3824, 1
  %3827 = extractvalue %dx.types.ResRet.f32 %3824, 2
  %3828 = and i32 %3821, 65535
  %3829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3828)  ; LegacyF16ToF32(value)
  %3830 = fmul fast float %3825, %3496
  %3831 = fmul fast float %3826, %3497
  %3832 = fmul fast float %3827, %3498
  %3833 = and i32 %3585, 16384
  %3834 = icmp ne i32 %3833, 0
  %3835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3836 = extractvalue %dx.types.CBufRet.f32 %3835, 0
  %3837 = select i1 %3834, float %3836, float 1.000000e+00
  %3838 = fmul fast float %3837, %3829
  %3839 = fmul fast float %3830, %3838
  %3840 = fmul fast float %3831, %3838
  %3841 = fmul fast float %3832, %3838
  br label %3842

; <label>:3842                                    ; preds = %3820, %3758
  %3843 = phi float [ %3839, %3820 ], [ 0.000000e+00, %3758 ]
  %3844 = phi float [ %3840, %3820 ], [ 0.000000e+00, %3758 ]
  %3845 = phi float [ %3841, %3820 ], [ 0.000000e+00, %3758 ]
  %3846 = fsub fast float %3843, %3441
  %3847 = fsub fast float %3844, %3442
  %3848 = fsub fast float %3845, %3443
  %3849 = fmul fast float %3846, %3655
  %3850 = fmul fast float %3847, %3655
  %3851 = fmul fast float %3848, %3655
  %3852 = fadd fast float %3849, %3441
  %3853 = fadd fast float %3850, %3442
  %3854 = fadd fast float %3851, %3443
  br label %3555

; <label>:3855                                    ; preds = %3555
  br label %3856

; <label>:3856                                    ; preds = %3855, %3370
  %3857 = phi float [ 0.000000e+00, %3370 ], [ %3556, %3855 ]
  %3858 = phi float [ %1073, %3370 ], [ %3557, %3855 ]
  %3859 = phi float [ %3314, %3370 ], [ %3558, %3855 ]
  %3860 = phi float [ %3293, %3370 ], [ %3559, %3855 ]
  %3861 = phi float [ 0.000000e+00, %3370 ], [ %3560, %3855 ]
  %3862 = phi float [ 0.000000e+00, %3370 ], [ %3561, %3855 ]
  %3863 = phi float [ %3336, %3370 ], [ %3562, %3855 ]
  %3864 = phi float [ %3338, %3370 ], [ %3563, %3855 ]
  %3865 = phi float [ %3340, %3370 ], [ %3564, %3855 ]
  %3866 = phi float [ %3366, %3370 ], [ %3565, %3855 ]
  %3867 = phi float [ %3367, %3370 ], [ %3566, %3855 ]
  %3868 = phi float [ %3368, %3370 ], [ %3567, %3855 ]
  %3869 = phi float [ %3292, %3370 ], [ %3568, %3855 ]
  %3870 = phi float [ %3291, %3370 ], [ %3569, %3855 ]
  %3871 = phi float [ 0.000000e+00, %3370 ], [ %3570, %3855 ]
  %3872 = phi float [ %3290, %3370 ], [ %3571, %3855 ]
  %3873 = phi float [ %3321, %3370 ], [ %3572, %3855 ]
  %3874 = phi float [ %3322, %3370 ], [ %3573, %3855 ]
  %3875 = phi float [ %3323, %3370 ], [ %3574, %3855 ]
  %3876 = call float @dx.op.dot3.f32(i32 55, float %3866, float %3867, float %3868, float %3866, float %3867, float %3868)  ; Dot3(ax,ay,az,bx,by,bz)
  %3877 = call float @dx.op.unary.f32(i32 25, float %3876)  ; Rsqrt(value)
  %3878 = fmul fast float %3877, %3866
  %3879 = fmul fast float %3877, %3867
  %3880 = fmul fast float %3877, %3868
  %3881 = fadd fast float %3871, %1073
  %3882 = call float @dx.op.unary.f32(i32 7, float %3881)  ; Saturate(value)
  %3883 = call float @dx.op.dot3.f32(i32 55, float %3878, float %3879, float %3880, float %3878, float %3879, float %3880)  ; Dot3(ax,ay,az,bx,by,bz)
  %3884 = call float @dx.op.unary.f32(i32 25, float %3883)  ; Rsqrt(value)
  %3885 = fmul fast float %3884, %3878
  %3886 = fmul fast float %3884, %3879
  %3887 = fmul fast float %3884, %3880
  br label %3888

; <label>:3888                                    ; preds = %3856, %3281
  %3889 = phi float [ %3885, %3856 ], [ %3366, %3281 ]
  %3890 = phi float [ %3886, %3856 ], [ %3367, %3281 ]
  %3891 = phi float [ %3887, %3856 ], [ %3368, %3281 ]
  %3892 = phi float [ %3873, %3856 ], [ %3321, %3281 ]
  %3893 = phi float [ %3874, %3856 ], [ %3322, %3281 ]
  %3894 = phi float [ %3875, %3856 ], [ %3323, %3281 ]
  %3895 = phi float [ %3863, %3856 ], [ %3336, %3281 ]
  %3896 = phi float [ %3864, %3856 ], [ %3338, %3281 ]
  %3897 = phi float [ %3865, %3856 ], [ %3340, %3281 ]
  %3898 = phi float [ %3872, %3856 ], [ %3290, %3281 ]
  %3899 = phi float [ %3882, %3856 ], [ %1073, %3281 ]
  %3900 = phi float [ %3870, %3856 ], [ %3291, %3281 ]
  %3901 = phi float [ %3869, %3856 ], [ %3292, %3281 ]
  %3902 = phi float [ %3862, %3856 ], [ 0.000000e+00, %3281 ]
  %3903 = phi float [ %3861, %3856 ], [ 0.000000e+00, %3281 ]
  %3904 = phi float [ %3857, %3856 ], [ 0.000000e+00, %3281 ]
  %3905 = phi float [ %3859, %3856 ], [ %3314, %3281 ]
  %3906 = phi float [ %3858, %3856 ], [ %1073, %3281 ]
  %3907 = phi float [ %3860, %3856 ], [ %3293, %3281 ]
  %3908 = fadd fast float %3898, 0xBFB99999A0000000
  %3909 = call float @dx.op.unary.f32(i32 7, float %3908)  ; Saturate(value)
  %3910 = fmul fast float %3909, 0x3FF1C71C80000000
  %3911 = call float @dx.op.binary.f32(i32 36, float %3898, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3912 = fsub fast float 1.000000e+00, %3910
  %3913 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3914 = fmul fast float %3913, %3892
  %3915 = fmul fast float %3913, %3893
  %3916 = fmul fast float %3913, %3894
  %3917 = call float @dx.op.unary.f32(i32 7, float %3914)  ; Saturate(value)
  %3918 = call float @dx.op.unary.f32(i32 7, float %3915)  ; Saturate(value)
  %3919 = call float @dx.op.unary.f32(i32 7, float %3916)  ; Saturate(value)
  %3920 = fmul fast float %3910, %3892
  %3921 = fmul fast float %3910, %3893
  %3922 = fmul fast float %3910, %3894
  %3923 = fadd fast float %3920, %3911
  %3924 = fadd fast float %3921, %3911
  %3925 = fadd fast float %3922, %3911
  %3926 = call float @dx.op.unary.f32(i32 7, float %3923)  ; Saturate(value)
  %3927 = call float @dx.op.unary.f32(i32 7, float %3924)  ; Saturate(value)
  %3928 = call float @dx.op.unary.f32(i32 7, float %3925)  ; Saturate(value)
  %3929 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3930 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.i32 %3930, 3
  %3932 = and i32 %3931, 8
  %3933 = icmp ne i32 %3932, 0
  %3934 = call float @dx.op.binary.f32(i32 35, float %3917, float %3892)  ; FMax(a,b)
  %3935 = call float @dx.op.binary.f32(i32 35, float %3918, float %3892)  ; FMax(a,b)
  %3936 = call float @dx.op.binary.f32(i32 35, float %3919, float %3892)  ; FMax(a,b)
  %3937 = call float @dx.op.dot3.f32(i32 55, float %3917, float %3918, float %3919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3938 = select i1 %278, float %3892, float %3917
  %3939 = select i1 %278, float %3937, float %3918
  %3940 = select i1 %278, float 1.000000e+00, float %3919
  %3941 = select i1 %3933, float %3934, float %3938
  %3942 = select i1 %3933, float %3935, float %3939
  %3943 = select i1 %3933, float %3936, float %3940
  %3944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3945 = extractvalue %dx.types.CBufRet.f32 %3944, 0
  %3946 = extractvalue %dx.types.CBufRet.f32 %3944, 1
  %3947 = extractvalue %dx.types.CBufRet.f32 %3944, 2
  %3948 = fadd fast float %3945, %206
  %3949 = fadd fast float %3946, %207
  %3950 = fadd fast float %3947, %208
  %3951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3952 = extractvalue %dx.types.CBufRet.f32 %3951, 0
  %3953 = extractvalue %dx.types.CBufRet.f32 %3951, 1
  %3954 = fsub fast float %3948, %3952
  %3955 = fsub fast float %3949, %3953
  %3956 = fmul fast float %3954, %3954
  %3957 = fmul fast float %3955, %3955
  %3958 = fadd fast float %3956, %3957
  %3959 = call float @dx.op.unary.f32(i32 24, float %3958)  ; Sqrt(value)
  %3960 = extractvalue %dx.types.CBufRet.f32 %3951, 2
  %3961 = fcmp fast olt float %3959, %3960
  br i1 %3961, label %3962, label %4029

; <label>:3962                                    ; preds = %3888
  %3963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3964 = extractvalue %dx.types.CBufRet.f32 %3963, 0
  %3965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3966 = extractvalue %dx.types.CBufRet.f32 %3965, 0
  %3967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.f32 %3967, 0
  %3969 = extractvalue %dx.types.CBufRet.f32 %3963, 1
  %3970 = extractvalue %dx.types.CBufRet.f32 %3965, 1
  %3971 = extractvalue %dx.types.CBufRet.f32 %3967, 1
  %3972 = extractvalue %dx.types.CBufRet.f32 %3963, 3
  %3973 = extractvalue %dx.types.CBufRet.f32 %3965, 3
  %3974 = extractvalue %dx.types.CBufRet.f32 %3967, 3
  %3975 = fadd fast float %3972, %3948
  %3976 = fadd fast float %3973, %3949
  %3977 = fadd fast float %3974, %3950
  %3978 = fmul fast float %3975, %3964
  %3979 = call float @dx.op.tertiary.f32(i32 46, float %3976, float %3966, float %3978)  ; FMad(a,b,c)
  %3980 = call float @dx.op.tertiary.f32(i32 46, float %3977, float %3968, float %3979)  ; FMad(a,b,c)
  %3981 = fmul fast float %3975, %3969
  %3982 = call float @dx.op.tertiary.f32(i32 46, float %3976, float %3970, float %3981)  ; FMad(a,b,c)
  %3983 = call float @dx.op.tertiary.f32(i32 46, float %3977, float %3971, float %3982)  ; FMad(a,b,c)
  %3984 = fsub fast float %3980, %3972
  %3985 = fsub fast float %3983, %3973
  %3986 = fsub fast float %3984, %3952
  %3987 = fadd fast float %3986, %3960
  %3988 = fsub fast float %3985, %3953
  %3989 = fadd fast float %3988, %3960
  %3990 = extractvalue %dx.types.CBufRet.f32 %3951, 3
  %3991 = fmul fast float %3987, %3990
  %3992 = fmul fast float %3989, %3990
  %3993 = call float @dx.op.unary.f32(i32 7, float %3991)  ; Saturate(value)
  %3994 = call float @dx.op.unary.f32(i32 7, float %3992)  ; Saturate(value)
  %3995 = fsub fast float 1.000000e+00, %3993
  %3996 = fsub fast float 1.000000e+00, %3994
  %3997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %55, float %3995, float %3996, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3998 = extractvalue %dx.types.ResRet.f32 %3997, 0
  %3999 = fcmp fast ugt float %3998, 0.000000e+00
  br i1 %3999, label %4000, label %4303

; <label>:4000                                    ; preds = %3962
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 2
  %4003 = fmul fast float %4002, %3998
  %4004 = extractvalue %dx.types.CBufRet.f32 %4001, 3
  %4005 = fadd fast float %4004, %4003
  %4006 = extractvalue %dx.types.CBufRet.f32 %3967, 2
  %4007 = fadd fast float %4005, %3974
  %4008 = fmul fast float %3980, %3968
  %4009 = call float @dx.op.tertiary.f32(i32 46, float %3983, float %3971, float %4008)  ; FMad(a,b,c)
  %4010 = call float @dx.op.tertiary.f32(i32 46, float %4007, float %4006, float %4009)  ; FMad(a,b,c)
  %4011 = fsub fast float %4010, %3974
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 2
  %4014 = fsub fast float %4011, %4013
  %4015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %55, float %3995, float %3996, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4016 = extractvalue %dx.types.ResRet.f32 %4015, 0
  %4017 = extractvalue %dx.types.ResRet.f32 %4015, 1
  %4018 = extractvalue %dx.types.ResRet.f32 %4015, 2
  %4019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %55, float %3995, float %3996, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4020 = extractvalue %dx.types.ResRet.f32 %4019, 0
  %4021 = extractvalue %dx.types.ResRet.f32 %4019, 1
  %4022 = extractvalue %dx.types.ResRet.f32 %4019, 2
  %4023 = fadd fast float %4020, %4016
  %4024 = fmul fast float %4023, 0x3F847AE140000000
  %4025 = fadd fast float %4021, %4017
  %4026 = fmul fast float %4025, 0x3F847AE140000000
  %4027 = fadd fast float %4022, %4018
  %4028 = fmul fast float %4027, 0x3F847AE140000000
  br label %4303

; <label>:4029                                    ; preds = %3888
  %4030 = and i32 %257, 1
  %4031 = icmp eq i32 %4030, 0
  br i1 %4031, label %4303, label %4032

; <label>:4032                                    ; preds = %4029
  %4033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4034 = extractvalue %dx.types.CBufRet.f32 %4033, 0
  %4035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4036 = extractvalue %dx.types.CBufRet.f32 %4035, 0
  %4037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4038 = extractvalue %dx.types.CBufRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.CBufRet.f32 %4033, 1
  %4040 = extractvalue %dx.types.CBufRet.f32 %4035, 1
  %4041 = extractvalue %dx.types.CBufRet.f32 %4037, 1
  %4042 = extractvalue %dx.types.CBufRet.f32 %4033, 3
  %4043 = extractvalue %dx.types.CBufRet.f32 %4035, 3
  %4044 = extractvalue %dx.types.CBufRet.f32 %4037, 3
  %4045 = fadd fast float %4042, %3948
  %4046 = fadd fast float %4043, %3949
  %4047 = fadd fast float %4044, %3950
  %4048 = fmul fast float %4045, %4034
  %4049 = call float @dx.op.tertiary.f32(i32 46, float %4046, float %4036, float %4048)  ; FMad(a,b,c)
  %4050 = call float @dx.op.tertiary.f32(i32 46, float %4047, float %4038, float %4049)  ; FMad(a,b,c)
  %4051 = fmul fast float %4045, %4039
  %4052 = call float @dx.op.tertiary.f32(i32 46, float %4046, float %4040, float %4051)  ; FMad(a,b,c)
  %4053 = call float @dx.op.tertiary.f32(i32 46, float %4047, float %4041, float %4052)  ; FMad(a,b,c)
  %4054 = fsub fast float %4050, %4042
  %4055 = fsub fast float %4053, %4043
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 0
  %4058 = extractvalue %dx.types.CBufRet.f32 %4056, 1
  %4059 = extractvalue %dx.types.CBufRet.f32 %4056, 2
  %4060 = extractvalue %dx.types.CBufRet.f32 %4056, 3
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 3
  %4063 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.i32 %4063, 0
  %4065 = extractvalue %dx.types.CBufRet.i32 %4063, 1
  %4066 = udiv i32 %4065, %4064
  %4067 = fsub fast float %4054, %4057
  %4068 = fsub fast float %4055, %4058
  %4069 = call float @dx.op.binary.f32(i32 35, float %4067, float 0.000000e+00)  ; FMax(a,b)
  %4070 = call float @dx.op.binary.f32(i32 35, float %4068, float 0.000000e+00)  ; FMax(a,b)
  %4071 = call float @dx.op.binary.f32(i32 36, float %4069, float %4059)  ; FMin(a,b)
  %4072 = call float @dx.op.binary.f32(i32 36, float %4070, float %4060)  ; FMin(a,b)
  %4073 = add i32 %4064, -1
  %4074 = add i32 %4066, -1
  %4075 = fmul fast float %4071, %4062
  %4076 = fmul fast float %4072, %4062
  %4077 = fptoui float %4075 to i32
  %4078 = fptoui float %4076 to i32
  %4079 = call i32 @dx.op.binary.i32(i32 40, i32 %4077, i32 %4073)  ; UMin(a,b)
  %4080 = call i32 @dx.op.binary.i32(i32 40, i32 %4078, i32 %4074)  ; UMin(a,b)
  %4081 = mul i32 %4080, %4064
  %4082 = add i32 %4081, %4079
  %4083 = shl i32 %4082, 2
  %4084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4083, i32 undef)  ; BufferLoad(srv,index,wot)
  %4085 = extractvalue %dx.types.ResRet.i32 %4084, 0
  %4086 = icmp eq i32 %4085, -1
  br i1 %4086, label %4303, label %4087

; <label>:4087                                    ; preds = %4032
  %4088 = mul i32 %4085, 148
  %4089 = add i32 %4088, 4
  %4090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.f32 %4090, 0
  %4092 = add i32 %4088, 8
  %4093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4092, i32 undef)  ; BufferLoad(srv,index,wot)
  %4094 = extractvalue %dx.types.ResRet.f32 %4093, 0
  %4095 = add i32 %4088, 36
  %4096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4095, i32 undef)  ; BufferLoad(srv,index,wot)
  %4097 = extractvalue %dx.types.ResRet.f32 %4096, 0
  %4098 = add i32 %4088, 60
  %4099 = add i32 %4088, 92
  %4100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4099, i32 undef)  ; BufferLoad(srv,index,wot)
  %4101 = extractvalue %dx.types.ResRet.i32 %4100, 0
  %4102 = add i32 %4088, 116
  %4103 = fsub fast float %4054, %4091
  %4104 = fsub fast float %4055, %4094
  %4105 = fmul fast float %4062, %4103
  %4106 = fmul fast float %4062, %4104
  %4107 = call float @dx.op.unary.f32(i32 7, float %4105)  ; Saturate(value)
  %4108 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4109 = fsub fast float 1.000000e+00, %4108
  %4110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.f32 %4110, 2
  %4112 = call float @dx.op.unary.f32(i32 83, float %4107)  ; DerivCoarseX(value)
  %4113 = call float @dx.op.unary.f32(i32 83, float %4109)  ; DerivCoarseX(value)
  %4114 = call float @dx.op.unary.f32(i32 84, float %4107)  ; DerivCoarseY(value)
  %4115 = call float @dx.op.unary.f32(i32 84, float %4109)  ; DerivCoarseY(value)
  %4116 = fmul fast float %4112, %4111
  %4117 = fmul fast float %4113, %4111
  %4118 = fmul fast float %4114, %4111
  %4119 = fmul fast float %4115, %4111
  %4120 = call float @dx.op.dot2.f32(i32 54, float %4118, float %4119, float %4118, float %4119)  ; Dot2(ax,ay,bx,by)
  %4121 = call float @dx.op.dot2.f32(i32 54, float %4116, float %4117, float %4116, float %4117)  ; Dot2(ax,ay,bx,by)
  %4122 = call float @dx.op.binary.f32(i32 35, float %4121, float %4120)  ; FMax(a,b)
  %4123 = call float @dx.op.unary.f32(i32 23, float %4122)  ; Log(value)
  %4124 = fmul fast float %4123, 5.000000e-01
  %4125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4125, 1
  %4127 = fadd fast float %4126, %4124
  %4128 = call float @dx.op.binary.f32(i32 35, float %4127, float 0.000000e+00)  ; FMax(a,b)
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 3
  %4131 = fadd fast float %4130, %4128
  %4132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.f32 %4132, 3
  %4134 = fadd fast float %4131, %4133
  %4135 = add i32 %4101, 0
  %4136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4135, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4137 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4136, i32 0)  ; GetDimensions(handle,mipLevel)
  %4138 = extractvalue %dx.types.Dimensions %4137, 0
  %4139 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4138)  ; FirstbitLo(value)
  %4140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.i32 %4140, 1
  %4142 = sub nsw i32 %4141, %4139
  %4143 = sitofp i32 %4142 to float
  %4144 = fsub fast float %4134, %4143
  %4145 = call float @dx.op.binary.f32(i32 35, float %4144, float 0.000000e+00)  ; FMax(a,b)
  %4146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4136, %dx.types.Handle %53, float %4107, float %4109, float %4097, float undef, i32 0, i32 0, i32 undef, float %4145)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4147 = extractvalue %dx.types.ResRet.f32 %4146, 0
  %4148 = fcmp ule float %4147, 0x3FE0101020000000
  %4149 = extractvalue %dx.types.CBufRet.i32 %4140, 0
  %4150 = and i32 %4149, 128
  %4151 = icmp ne i32 %4150, 0
  %4152 = and i1 %4148, %4151
  br i1 %4152, label %4303, label %4153

; <label>:4153                                    ; preds = %4087
  %4154 = add i32 %4088, 20
  %4155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4154, i32 undef)  ; BufferLoad(srv,index,wot)
  %4156 = extractvalue %dx.types.ResRet.f32 %4155, 0
  %4157 = add i32 %4088, 24
  %4158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4157, i32 undef)  ; BufferLoad(srv,index,wot)
  %4159 = extractvalue %dx.types.ResRet.f32 %4158, 0
  %4160 = add i32 %4088, 40
  %4161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4160, i32 undef)  ; BufferLoad(srv,index,wot)
  %4162 = extractvalue %dx.types.ResRet.f32 %4161, 0
  %4163 = add i32 %4088, 96
  %4164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4163, i32 undef)  ; BufferLoad(srv,index,wot)
  %4165 = extractvalue %dx.types.ResRet.i32 %4164, 0
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 2
  %4168 = fmul fast float %4167, %4107
  %4169 = fmul fast float %4167, %4109
  %4170 = extractvalue %dx.types.CBufRet.f32 %4166, 3
  %4171 = fadd fast float %4168, %4170
  %4172 = fadd fast float %4169, %4170
  %4173 = add i32 %4165, 0
  %4174 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4173, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4175 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4174, i32 0)  ; GetDimensions(handle,mipLevel)
  %4176 = extractvalue %dx.types.Dimensions %4175, 0
  %4177 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4176)  ; FirstbitLo(value)
  %4178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.i32 %4178, 1
  %4180 = sub nsw i32 %4179, %4177
  %4181 = sitofp i32 %4180 to float
  %4182 = fsub fast float %4131, %4181
  %4183 = call float @dx.op.binary.f32(i32 35, float %4182, float 0.000000e+00)  ; FMax(a,b)
  %4184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4174, %dx.types.Handle %53, float %4171, float %4172, float %4162, float undef, i32 0, i32 0, i32 undef, float %4183)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4185 = extractvalue %dx.types.ResRet.f32 %4184, 0
  %4186 = fmul fast float %4185, %4156
  %4187 = fadd fast float %4186, %4159
  %4188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.f32 %4188, 0
  %4190 = extractvalue %dx.types.CBufRet.f32 %4188, 1
  %4191 = extractvalue %dx.types.CBufRet.f32 %4188, 2
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 3
  %4194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.f32 %4194, 3
  %4196 = extractvalue %dx.types.CBufRet.f32 %4188, 3
  %4197 = fadd fast float %4193, %4054
  %4198 = fadd fast float %4195, %4055
  %4199 = fadd fast float %4187, %4196
  %4200 = fmul fast float %4197, %4189
  %4201 = call float @dx.op.tertiary.f32(i32 46, float %4198, float %4190, float %4200)  ; FMad(a,b,c)
  %4202 = call float @dx.op.tertiary.f32(i32 46, float %4199, float %4191, float %4201)  ; FMad(a,b,c)
  %4203 = fsub fast float %4202, %4196
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 2
  %4206 = fsub fast float %4203, %4205
  %4207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.i32 %4207, 0
  %4209 = call i32 @dx.op.binary.i32(i32 40, i32 %4085, i32 %4208)  ; UMin(a,b)
  %4210 = mul i32 %4209, 36
  %4211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4210, i32 undef)  ; BufferLoad(srv,index,wot)
  %4212 = extractvalue %dx.types.ResRet.i32 %4211, 0
  %4213 = add i32 %4210, 4
  %4214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4215 = extractvalue %dx.types.CBufRet.f32 %4214, 0
  %4216 = fmul fast float %4215, %4107
  %4217 = fmul fast float %4215, %4109
  %4218 = extractvalue %dx.types.CBufRet.f32 %4214, 1
  %4219 = fadd fast float %4216, %4218
  %4220 = fadd fast float %4217, %4218
  %4221 = icmp eq i32 %4212, 0
  br i1 %4221, label %4290, label %4222

; <label>:4222                                    ; preds = %4153
  br label %4223

; <label>:4223                                    ; preds = %4280, %4222
  %4224 = phi float [ %4281, %4280 ], [ 0.000000e+00, %4222 ]
  %4225 = phi float [ %4282, %4280 ], [ 0.000000e+00, %4222 ]
  %4226 = phi float [ %4283, %4280 ], [ 0.000000e+00, %4222 ]
  %4227 = phi float [ %4284, %4280 ], [ 0.000000e+00, %4222 ]
  %4228 = phi float [ %4285, %4280 ], [ 0.000000e+00, %4222 ]
  %4229 = phi float [ %4286, %4280 ], [ 0.000000e+00, %4222 ]
  %4230 = phi i32 [ %4287, %4280 ], [ 0, %4222 ]
  %4231 = shl i32 %4230, 2
  %4232 = add i32 %4098, %4231
  %4233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4232, i32 undef)  ; BufferLoad(srv,index,wot)
  %4234 = extractvalue %dx.types.ResRet.f32 %4233, 0
  %4235 = add i32 %4102, %4231
  %4236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4235, i32 undef)  ; BufferLoad(srv,index,wot)
  %4237 = extractvalue %dx.types.ResRet.i32 %4236, 0
  %4238 = add i32 %4237, 0
  %4239 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4238, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4240 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4239, i32 0)  ; GetDimensions(handle,mipLevel)
  %4241 = extractvalue %dx.types.Dimensions %4240, 0
  %4242 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4241)  ; FirstbitLo(value)
  %4243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.i32 %4243, 1
  %4245 = sub nsw i32 %4244, %4242
  %4246 = sitofp i32 %4245 to float
  %4247 = fsub fast float %4131, %4246
  %4248 = call float @dx.op.binary.f32(i32 35, float %4247, float 0.000000e+00)  ; FMax(a,b)
  %4249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4239, %dx.types.Handle %53, float %4219, float %4220, float %4234, float undef, i32 0, i32 0, i32 undef, float %4248)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4250 = extractvalue %dx.types.ResRet.f32 %4249, 0
  %4251 = fcmp fast ogt float %4250, 0.000000e+00
  br i1 %4251, label %4252, label %4280

; <label>:4252                                    ; preds = %4223
  %4253 = add i32 %4213, %4231
  %4254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4253, i32 undef)  ; BufferLoad(srv,index,wot)
  %4255 = extractvalue %dx.types.ResRet.i32 %4254, 0
  %4256 = and i32 %4255, 32767
  %4257 = mul nuw nsw i32 %4256, 928
  %4258 = add nuw nsw i32 %4257, 48
  %4259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4258, i32 undef)  ; BufferLoad(srv,index,wot)
  %4260 = extractvalue %dx.types.ResRet.f32 %4259, 0
  %4261 = extractvalue %dx.types.ResRet.f32 %4259, 1
  %4262 = extractvalue %dx.types.ResRet.f32 %4259, 2
  %4263 = add nuw nsw i32 %4257, 60
  %4264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4263, i32 undef)  ; BufferLoad(srv,index,wot)
  %4265 = extractvalue %dx.types.ResRet.f32 %4264, 0
  %4266 = extractvalue %dx.types.ResRet.f32 %4264, 1
  %4267 = extractvalue %dx.types.ResRet.f32 %4264, 2
  %4268 = fmul fast float %4260, %4250
  %4269 = fmul fast float %4261, %4250
  %4270 = fmul fast float %4262, %4250
  %4271 = fadd fast float %4268, %4224
  %4272 = fadd fast float %4269, %4225
  %4273 = fadd fast float %4270, %4226
  %4274 = fmul fast float %4265, %4250
  %4275 = fmul fast float %4266, %4250
  %4276 = fmul fast float %4267, %4250
  %4277 = fadd fast float %4274, %4227
  %4278 = fadd fast float %4275, %4228
  %4279 = fadd fast float %4276, %4229
  br label %4280

; <label>:4280                                    ; preds = %4252, %4223
  %4281 = phi float [ %4271, %4252 ], [ %4224, %4223 ]
  %4282 = phi float [ %4272, %4252 ], [ %4225, %4223 ]
  %4283 = phi float [ %4273, %4252 ], [ %4226, %4223 ]
  %4284 = phi float [ %4277, %4252 ], [ %4227, %4223 ]
  %4285 = phi float [ %4278, %4252 ], [ %4228, %4223 ]
  %4286 = phi float [ %4279, %4252 ], [ %4229, %4223 ]
  %4287 = add nuw i32 %4230, 1
  %4288 = icmp eq i32 %4287, %4212
  br i1 %4288, label %4289, label %4223

; <label>:4289                                    ; preds = %4280
  br label %4290

; <label>:4290                                    ; preds = %4289, %4153
  %4291 = phi float [ 0.000000e+00, %4153 ], [ %4281, %4289 ]
  %4292 = phi float [ 0.000000e+00, %4153 ], [ %4282, %4289 ]
  %4293 = phi float [ 0.000000e+00, %4153 ], [ %4283, %4289 ]
  %4294 = phi float [ 0.000000e+00, %4153 ], [ %4284, %4289 ]
  %4295 = phi float [ 0.000000e+00, %4153 ], [ %4285, %4289 ]
  %4296 = phi float [ 0.000000e+00, %4153 ], [ %4286, %4289 ]
  %4297 = fadd fast float %4294, %4291
  %4298 = fmul fast float %4297, 0x3F847AE140000000
  %4299 = fadd fast float %4295, %4292
  %4300 = fmul fast float %4299, 0x3F847AE140000000
  %4301 = fadd fast float %4296, %4293
  %4302 = fmul fast float %4301, 0x3F847AE140000000
  br label %4303

; <label>:4303                                    ; preds = %4290, %4087, %4032, %4029, %4000, %3962
  %4304 = phi float [ %4024, %4000 ], [ 0.000000e+00, %3962 ], [ %4298, %4290 ], [ 0.000000e+00, %4032 ], [ 0.000000e+00, %4087 ], [ 0.000000e+00, %4029 ]
  %4305 = phi float [ %4026, %4000 ], [ 0.000000e+00, %3962 ], [ %4300, %4290 ], [ 0.000000e+00, %4032 ], [ 0.000000e+00, %4087 ], [ 0.000000e+00, %4029 ]
  %4306 = phi float [ %4028, %4000 ], [ 0.000000e+00, %3962 ], [ %4302, %4290 ], [ 0.000000e+00, %4032 ], [ 0.000000e+00, %4087 ], [ 0.000000e+00, %4029 ]
  %4307 = phi float [ %4014, %4000 ], [ -1.310720e+05, %3962 ], [ %4206, %4290 ], [ -1.310720e+05, %4032 ], [ -1.310720e+05, %4087 ], [ -1.310720e+05, %4029 ]
  %4308 = phi i1 [ true, %4000 ], [ false, %3962 ], [ true, %4290 ], [ false, %4032 ], [ false, %4087 ], [ false, %4029 ]
  %4309 = and i32 %257, 3
  %4310 = icmp eq i32 %4309, 1
  %4311 = select i1 %4310, float 1.000000e+00, float 0.000000e+00
  %4312 = fsub fast float %4307, %208
  %4313 = call float @dx.op.unary.f32(i32 7, float %4312)  ; Saturate(value)
  %4314 = select i1 %4308, float %4313, float 1.000000e+00
  %4315 = fmul fast float %4314, %4311
  %4316 = icmp eq i32 %4309, 3
  %4317 = select i1 %4316, float 1.000000e+00, float %4315
  %4318 = call float @dx.op.binary.f32(i32 35, float %3904, float %4317)  ; FMax(a,b)
  %4319 = fcmp fast olt float %4317, 1.000000e+00
  %4320 = fcmp uge float %79, 0.000000e+00
  %4321 = and i1 %4320, %4319
  br i1 %4321, label %4322, label %4332

; <label>:4322                                    ; preds = %4303
  %4323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %53, float %79, float %80, float %81, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4324 = extractvalue %dx.types.ResRet.f32 %4323, 0
  %4325 = extractvalue %dx.types.ResRet.f32 %4323, 1
  %4326 = extractvalue %dx.types.ResRet.f32 %4323, 2
  %4327 = fadd fast float %4324, %4318
  %4328 = fcmp ule float %78, 0.000000e+00
  %4329 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4330 = select i1 %4328, float %4329, float 1.000000e+00
  %4331 = fmul fast float %4330, %4326
  br label %4332

; <label>:4332                                    ; preds = %4322, %4303
  %4333 = phi float [ %4327, %4322 ], [ %4318, %4303 ]
  %4334 = phi float [ %4325, %4322 ], [ 0.000000e+00, %4303 ]
  %4335 = phi float [ %4331, %4322 ], [ 0.000000e+00, %4303 ]
  %4336 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4337 = call float @dx.op.unary.f32(i32 7, float %4334)  ; Saturate(value)
  %4338 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4339 = fcmp fast une float %4337, 0.000000e+00
  %4340 = fcmp fast une float %4338, 0.000000e+00
  %4341 = or i1 %4339, %4340
  br i1 %4341, label %4342, label %4901

; <label>:4342                                    ; preds = %4332
  br i1 %4339, label %4343, label %4616

; <label>:4343                                    ; preds = %4342
  %4344 = call float @dx.op.unary.f32(i32 23, float %3901)  ; Log(value)
  %4345 = fmul fast float %4344, 4.000000e+00
  %4346 = call float @dx.op.unary.f32(i32 21, float %4345)  ; Exp(value)
  %4347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4348 = extractvalue %dx.types.CBufRet.f32 %4347, 0
  %4349 = fmul fast float %4348, %66
  %4350 = fmul fast float %4348, %67
  %4351 = fmul fast float %4348, %68
  %4352 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4353 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %4354 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %4355 = call float @dx.op.unary.f32(i32 23, float %4352)  ; Log(value)
  %4356 = call float @dx.op.unary.f32(i32 23, float %4353)  ; Log(value)
  %4357 = call float @dx.op.unary.f32(i32 23, float %4354)  ; Log(value)
  %4358 = fmul fast float %4355, 4.000000e+00
  %4359 = fmul fast float %4356, 4.000000e+00
  %4360 = fmul fast float %4357, 4.000000e+00
  %4361 = call float @dx.op.unary.f32(i32 21, float %4358)  ; Exp(value)
  %4362 = call float @dx.op.unary.f32(i32 21, float %4359)  ; Exp(value)
  %4363 = call float @dx.op.unary.f32(i32 21, float %4360)  ; Exp(value)
  %4364 = fadd fast float %4362, %4361
  %4365 = fadd fast float %4364, %4363
  %4366 = fdiv fast float 1.000000e+00, %4365
  %4367 = fmul fast float %4366, %4361
  %4368 = fcmp fast ogt float %75, 0.000000e+00
  %4369 = fcmp fast ogt float %76, 0.000000e+00
  %4370 = fcmp fast ogt float %77, 0.000000e+00
  %4371 = fcmp fast olt float %75, 0.000000e+00
  %4372 = fcmp fast olt float %76, 0.000000e+00
  %4373 = fcmp fast olt float %77, 0.000000e+00
  %4374 = zext i1 %4368 to i32
  %4375 = zext i1 %4369 to i32
  %4376 = zext i1 %4370 to i32
  %4377 = zext i1 %4371 to i32
  %4378 = zext i1 %4372 to i32
  %4379 = zext i1 %4373 to i32
  %4380 = sub nsw i32 %4374, %4377
  %4381 = sub nsw i32 %4375, %4378
  %4382 = sub nsw i32 %4376, %4379
  %4383 = call float @dx.op.unary.f32(i32 83, float %4349)  ; DerivCoarseX(value)
  %4384 = call float @dx.op.unary.f32(i32 83, float %4350)  ; DerivCoarseX(value)
  %4385 = call float @dx.op.unary.f32(i32 83, float %4351)  ; DerivCoarseX(value)
  %4386 = call float @dx.op.unary.f32(i32 84, float %4349)  ; DerivCoarseY(value)
  %4387 = call float @dx.op.unary.f32(i32 84, float %4350)  ; DerivCoarseY(value)
  %4388 = call float @dx.op.unary.f32(i32 84, float %4351)  ; DerivCoarseY(value)
  %4389 = fcmp fast ole float %289, %4367
  %4390 = fmul fast float %4366, %4364
  %4391 = fcmp fast ole float %289, %4390
  %4392 = select i1 %4391, float %4351, float %4349
  %4393 = select i1 %4391, float %4349, float %4350
  %4394 = select i1 %4389, float %4350, float %4392
  %4395 = select i1 %4389, float %4351, float %4393
  %4396 = select i1 %4391, float %4385, float %4383
  %4397 = select i1 %4391, float %4383, float %4384
  %4398 = select i1 %4389, float %4384, float %4396
  %4399 = select i1 %4389, float %4385, float %4397
  %4400 = select i1 %4391, float %4388, float %4386
  %4401 = select i1 %4391, float %4386, float %4387
  %4402 = select i1 %4389, float %4387, float %4400
  %4403 = select i1 %4389, float %4388, float %4401
  %4404 = call float @dx.op.unary.f32(i32 27, float %4394)  ; Round_ni(value)
  %4405 = call float @dx.op.unary.f32(i32 27, float %4395)  ; Round_ni(value)
  %4406 = fptosi float %4404 to i32
  %4407 = fptosi float %4405 to i32
  %4408 = xor i32 %4407, %4406
  %4409 = sitofp i32 %4408 to float
  %4410 = fptosi float %4409 to i32
  %4411 = sitofp i32 %4410 to float
  %4412 = fmul fast float %4411, 0x3FE3C6EF40000000
  %4413 = frem fast float %4404, 2.560000e+02
  %4414 = frem fast float %4405, 2.560000e+02
  %4415 = fptoui float %4413 to i32
  %4416 = fptoui float %4414 to i32
  %4417 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4415, i32 %4416, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4418 = extractvalue %dx.types.ResRet.f32 %4417, 0
  %4419 = extractvalue %dx.types.ResRet.f32 %4417, 1
  %4420 = extractvalue %dx.types.ResRet.f32 %4417, 2
  %4421 = fadd fast float %4418, %4412
  %4422 = fadd fast float %4419, %4412
  %4423 = fadd fast float %4420, %4412
  %4424 = call float @dx.op.unary.f32(i32 22, float %4421)  ; Frc(value)
  %4425 = call float @dx.op.unary.f32(i32 22, float %4422)  ; Frc(value)
  %4426 = call float @dx.op.unary.f32(i32 22, float %4423)  ; Frc(value)
  %4427 = fmul fast float %4426, 0x401921FB60000000
  %4428 = call float @dx.op.unary.f32(i32 13, float %4427)  ; Sin(value)
  %4429 = call float @dx.op.unary.f32(i32 12, float %4427)  ; Cos(value)
  %4430 = fsub fast float -0.000000e+00, %4429
  %4431 = fmul fast float %4429, %4394
  %4432 = call float @dx.op.tertiary.f32(i32 46, float %4428, float %4395, float %4431)  ; FMad(a,b,c)
  %4433 = fmul fast float %4428, %4394
  %4434 = call float @dx.op.tertiary.f32(i32 46, float %4430, float %4395, float %4433)  ; FMad(a,b,c)
  %4435 = fadd fast float %4432, %4424
  %4436 = fadd fast float %4434, %4425
  %4437 = extractvalue %dx.types.CBufRet.f32 %4347, 3
  %4438 = bitcast float %4437 to i32
  %4439 = icmp eq i32 %4438, 0
  br i1 %4439, label %4478, label %4440

; <label>:4440                                    ; preds = %4343
  %4441 = add i32 %4438, 0
  %4442 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4441, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4443 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4442, %dx.types.Handle %120, float %4435, float %4436, float undef, float undef, i32 0, i32 0, i32 undef, float %4398, float %4399, float undef, float %4402, float %4403, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4444 = extractvalue %dx.types.ResRet.f32 %4443, 0
  %4445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4446 = extractvalue %dx.types.CBufRet.f32 %4445, 1
  %4447 = extractvalue %dx.types.CBufRet.f32 %4445, 2
  %4448 = fsub fast float 1.000000e+00, %4337
  %4449 = call float @dx.op.binary.f32(i32 35, float %4448, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4450 = bitcast float %4337 to i32
  %4451 = sitofp i32 %4450 to float
  %4452 = fadd fast float %4451, 0xC1CFBF8940000000
  %4453 = fmul fast float %4447, %4452
  %4454 = fadd fast float %4453, 0x41CFBF8940000000
  %4455 = fptosi float %4454 to i32
  %4456 = bitcast i32 %4455 to float
  %4457 = bitcast float %4449 to i32
  %4458 = sitofp i32 %4457 to float
  %4459 = fadd fast float %4458, 0xC1CFBF8940000000
  %4460 = fmul fast float %4459, %4447
  %4461 = fadd fast float %4460, 0x41CFBF8940000000
  %4462 = fptosi float %4461 to i32
  %4463 = bitcast i32 %4462 to float
  %4464 = fmul fast float %4456, %4446
  %4465 = fmul fast float %4463, %4446
  %4466 = fsub fast float %4449, %4464
  %4467 = fadd fast float %4465, %4449
  %4468 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4469 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4470 = fsub fast float %4444, %4468
  %4471 = fsub fast float %4469, %4468
  %4472 = bitcast float %4471 to i32
  %4473 = sub nsw i32 2129859010, %4472
  %4474 = bitcast i32 %4473 to float
  %4475 = fmul fast float %4474, %4470
  %4476 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4477 = fcmp fast olt float %4476, 0x3F70101020000000
  br i1 %4477, label %4616, label %4478

; <label>:4478                                    ; preds = %4440, %4343
  %4479 = phi float [ %4476, %4440 ], [ %4337, %4343 ]
  %4480 = fmul fast float %4479, %4346
  %4481 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.i32 %4481, 1
  %4483 = extractvalue %dx.types.CBufRet.i32 %4481, 0
  %4484 = add i32 %4483, 0
  %4485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4486 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4485, %dx.types.Handle %119, float %4435, float %4436, float undef, float undef, i32 0, i32 0, i32 undef, float %4398, float %4399, float undef, float %4402, float %4403, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4487 = extractvalue %dx.types.ResRet.f32 %4486, 0
  %4488 = extractvalue %dx.types.ResRet.f32 %4486, 1
  %4489 = extractvalue %dx.types.ResRet.f32 %4486, 2
  %4490 = extractvalue %dx.types.ResRet.f32 %4486, 3
  %4491 = and i32 %4482, 255
  %4492 = uitofp i32 %4491 to float
  %4493 = lshr i32 %4482, 8
  %4494 = and i32 %4493, 255
  %4495 = uitofp i32 %4494 to float
  %4496 = fmul fast float %4490, %4492
  %4497 = fadd fast float %4496, %4495
  %4498 = fmul fast float %4497, 0x3F70101000000000
  %4499 = fadd fast float %4498, 0xBFB99999A0000000
  %4500 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4501 = fmul fast float %4500, 0x3FF1C71C80000000
  %4502 = call float @dx.op.binary.f32(i32 36, float %4498, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4503 = fsub fast float 1.000000e+00, %4501
  %4504 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4505 = fmul fast float %4504, %4487
  %4506 = fmul fast float %4504, %4488
  %4507 = fmul fast float %4504, %4489
  %4508 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4509 = call float @dx.op.unary.f32(i32 7, float %4506)  ; Saturate(value)
  %4510 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4511 = fmul fast float %4501, %4487
  %4512 = fmul fast float %4501, %4488
  %4513 = fmul fast float %4501, %4489
  %4514 = fadd fast float %4511, %4502
  %4515 = fadd fast float %4512, %4502
  %4516 = fadd fast float %4513, %4502
  %4517 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4518 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4519 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4521 = extractvalue %dx.types.CBufRet.i32 %4520, 3
  %4522 = extractvalue %dx.types.CBufRet.i32 %4520, 2
  %4523 = add i32 %4522, 0
  %4524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4525 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4524, %dx.types.Handle %119, float %4435, float %4436, float undef, float undef, i32 0, i32 0, i32 undef, float %4398, float %4399, float undef, float %4402, float %4403, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4526 = extractvalue %dx.types.ResRet.f32 %4525, 0
  %4527 = extractvalue %dx.types.ResRet.f32 %4525, 1
  %4528 = extractvalue %dx.types.ResRet.f32 %4525, 2
  %4529 = extractvalue %dx.types.ResRet.f32 %4525, 3
  %4530 = and i32 %4521, 255
  %4531 = uitofp i32 %4530 to float
  %4532 = lshr i32 %4521, 8
  %4533 = and i32 %4532, 255
  %4534 = uitofp i32 %4533 to float
  %4535 = lshr i32 %4521, 16
  %4536 = and i32 %4535, 255
  %4537 = uitofp i32 %4536 to float
  %4538 = fmul fast float %4537, 0x3F70101000000000
  %4539 = fmul fast float %4526, %4531
  %4540 = fadd fast float %4539, %4534
  %4541 = fmul fast float %4540, 0x3F70101000000000
  %4542 = fadd fast float %4527, -5.000000e-01
  %4543 = fadd fast float %4529, -5.000000e-01
  %4544 = fmul fast float %4542, %4538
  %4545 = fmul fast float %4543, %4538
  %4546 = fadd fast float %4544, 5.000000e-01
  %4547 = fadd fast float %4545, 5.000000e-01
  %4548 = fmul fast float %4546, 2.000000e+00
  %4549 = fadd fast float %4548, -1.000000e+00
  %4550 = fmul fast float %4547, 2.000000e+00
  %4551 = fadd fast float %4550, -1.000000e+00
  %4552 = fadd fast float %4549, %4551
  %4553 = fmul fast float %4552, 5.000000e-01
  %4554 = fsub fast float %4549, %4551
  %4555 = fmul fast float %4554, 5.000000e-01
  %4556 = call float @dx.op.unary.f32(i32 6, float %4553)  ; FAbs(value)
  %4557 = fsub fast float 1.000000e+00, %4556
  %4558 = call float @dx.op.unary.f32(i32 6, float %4555)  ; FAbs(value)
  %4559 = fsub fast float %4557, %4558
  %4560 = call float @dx.op.dot3.f32(i32 55, float %4553, float %4555, float %4559, float %4553, float %4555, float %4559)  ; Dot3(ax,ay,az,bx,by,bz)
  %4561 = call float @dx.op.unary.f32(i32 25, float %4560)  ; Rsqrt(value)
  %4562 = fmul fast float %4553, %4561
  %4563 = fmul fast float %4555, %4561
  %4564 = select i1 %4391, i32 %4381, i32 %4382
  %4565 = select i1 %4389, i32 %4380, i32 %4564
  %4566 = sitofp i32 %4565 to float
  %4567 = fmul fast float %4559, %4566
  %4568 = fmul fast float %4567, %4561
  %4569 = select i1 %4391, float %4568, float %4563
  %4570 = select i1 %4391, float %4563, float %4568
  %4571 = select i1 %4389, float %4568, float %4562
  %4572 = select i1 %4389, float %4563, float %4569
  %4573 = select i1 %4389, float %4562, float %4570
  %4574 = fsub fast float %4508, %3941
  %4575 = fsub fast float %4509, %3942
  %4576 = fsub fast float %4510, %3943
  %4577 = fmul fast float %4574, %4480
  %4578 = fmul fast float %4575, %4480
  %4579 = fmul fast float %4576, %4480
  %4580 = fadd fast float %4577, %3941
  %4581 = fadd fast float %4578, %3942
  %4582 = fadd fast float %4579, %3943
  %4583 = fsub fast float %4517, %3926
  %4584 = fsub fast float %4518, %3927
  %4585 = fsub fast float %4519, %3928
  %4586 = fmul fast float %4583, %4480
  %4587 = fmul fast float %4584, %4480
  %4588 = fmul fast float %4585, %4480
  %4589 = fadd fast float %4586, %3926
  %4590 = fadd fast float %4587, %3927
  %4591 = fadd fast float %4588, %3928
  %4592 = fadd fast float %4571, %3889
  %4593 = fadd fast float %4572, %3890
  %4594 = fadd fast float %4573, %3891
  %4595 = call float @dx.op.dot3.f32(i32 55, float %4592, float %4593, float %4594, float %4592, float %4593, float %4594)  ; Dot3(ax,ay,az,bx,by,bz)
  %4596 = call float @dx.op.unary.f32(i32 25, float %4595)  ; Rsqrt(value)
  %4597 = fmul fast float %4592, %4596
  %4598 = fmul fast float %4593, %4596
  %4599 = fmul fast float %4594, %4596
  %4600 = fsub fast float %4597, %3889
  %4601 = fsub fast float %4598, %3890
  %4602 = fsub fast float %4599, %3891
  %4603 = fmul fast float %4600, %4480
  %4604 = fmul fast float %4601, %4480
  %4605 = fmul fast float %4602, %4480
  %4606 = fadd fast float %4603, %3889
  %4607 = fadd fast float %4604, %3890
  %4608 = fadd fast float %4605, %3891
  %4609 = call float @dx.op.binary.f32(i32 36, float %3901, float %4528)  ; FMin(a,b)
  %4610 = fsub fast float %4609, %3901
  %4611 = fmul fast float %4610, %4480
  %4612 = fadd fast float %4611, %3901
  %4613 = fsub fast float %4541, %3929
  %4614 = fmul fast float %4613, %4480
  %4615 = fadd fast float %4614, %3929
  br label %4616

; <label>:4616                                    ; preds = %4478, %4440, %4342
  %4617 = phi float [ %4580, %4478 ], [ %3941, %4440 ], [ %3941, %4342 ]
  %4618 = phi float [ %4581, %4478 ], [ %3942, %4440 ], [ %3942, %4342 ]
  %4619 = phi float [ %4582, %4478 ], [ %3943, %4440 ], [ %3943, %4342 ]
  %4620 = phi float [ %4589, %4478 ], [ %3926, %4440 ], [ %3926, %4342 ]
  %4621 = phi float [ %4590, %4478 ], [ %3927, %4440 ], [ %3927, %4342 ]
  %4622 = phi float [ %4591, %4478 ], [ %3928, %4440 ], [ %3928, %4342 ]
  %4623 = phi float [ %4606, %4478 ], [ %3889, %4440 ], [ %3889, %4342 ]
  %4624 = phi float [ %4607, %4478 ], [ %3890, %4440 ], [ %3890, %4342 ]
  %4625 = phi float [ %4608, %4478 ], [ %3891, %4440 ], [ %3891, %4342 ]
  %4626 = phi float [ %4615, %4478 ], [ %3929, %4440 ], [ %3929, %4342 ]
  %4627 = phi float [ %4612, %4478 ], [ %3901, %4440 ], [ %3901, %4342 ]
  br i1 %4340, label %4628, label %4901

; <label>:4628                                    ; preds = %4616
  %4629 = call float @dx.op.unary.f32(i32 23, float %4627)  ; Log(value)
  %4630 = fmul fast float %4629, 4.000000e+00
  %4631 = call float @dx.op.unary.f32(i32 21, float %4630)  ; Exp(value)
  %4632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4632, 0
  %4634 = fmul fast float %4633, %66
  %4635 = fmul fast float %4633, %67
  %4636 = fmul fast float %4633, %68
  %4637 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4638 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %4639 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %4640 = call float @dx.op.unary.f32(i32 23, float %4637)  ; Log(value)
  %4641 = call float @dx.op.unary.f32(i32 23, float %4638)  ; Log(value)
  %4642 = call float @dx.op.unary.f32(i32 23, float %4639)  ; Log(value)
  %4643 = fmul fast float %4640, 4.000000e+00
  %4644 = fmul fast float %4641, 4.000000e+00
  %4645 = fmul fast float %4642, 4.000000e+00
  %4646 = call float @dx.op.unary.f32(i32 21, float %4643)  ; Exp(value)
  %4647 = call float @dx.op.unary.f32(i32 21, float %4644)  ; Exp(value)
  %4648 = call float @dx.op.unary.f32(i32 21, float %4645)  ; Exp(value)
  %4649 = fadd fast float %4647, %4646
  %4650 = fadd fast float %4649, %4648
  %4651 = fdiv fast float 1.000000e+00, %4650
  %4652 = fmul fast float %4651, %4646
  %4653 = fcmp fast ogt float %75, 0.000000e+00
  %4654 = fcmp fast ogt float %76, 0.000000e+00
  %4655 = fcmp fast ogt float %77, 0.000000e+00
  %4656 = fcmp fast olt float %75, 0.000000e+00
  %4657 = fcmp fast olt float %76, 0.000000e+00
  %4658 = fcmp fast olt float %77, 0.000000e+00
  %4659 = zext i1 %4653 to i32
  %4660 = zext i1 %4654 to i32
  %4661 = zext i1 %4655 to i32
  %4662 = zext i1 %4656 to i32
  %4663 = zext i1 %4657 to i32
  %4664 = zext i1 %4658 to i32
  %4665 = sub nsw i32 %4659, %4662
  %4666 = sub nsw i32 %4660, %4663
  %4667 = sub nsw i32 %4661, %4664
  %4668 = call float @dx.op.unary.f32(i32 83, float %4634)  ; DerivCoarseX(value)
  %4669 = call float @dx.op.unary.f32(i32 83, float %4635)  ; DerivCoarseX(value)
  %4670 = call float @dx.op.unary.f32(i32 83, float %4636)  ; DerivCoarseX(value)
  %4671 = call float @dx.op.unary.f32(i32 84, float %4634)  ; DerivCoarseY(value)
  %4672 = call float @dx.op.unary.f32(i32 84, float %4635)  ; DerivCoarseY(value)
  %4673 = call float @dx.op.unary.f32(i32 84, float %4636)  ; DerivCoarseY(value)
  %4674 = fcmp fast ole float %289, %4652
  %4675 = fmul fast float %4651, %4649
  %4676 = fcmp fast ole float %289, %4675
  %4677 = select i1 %4676, float %4636, float %4634
  %4678 = select i1 %4676, float %4634, float %4635
  %4679 = select i1 %4674, float %4635, float %4677
  %4680 = select i1 %4674, float %4636, float %4678
  %4681 = select i1 %4676, float %4670, float %4668
  %4682 = select i1 %4676, float %4668, float %4669
  %4683 = select i1 %4674, float %4669, float %4681
  %4684 = select i1 %4674, float %4670, float %4682
  %4685 = select i1 %4676, float %4673, float %4671
  %4686 = select i1 %4676, float %4671, float %4672
  %4687 = select i1 %4674, float %4672, float %4685
  %4688 = select i1 %4674, float %4673, float %4686
  %4689 = call float @dx.op.unary.f32(i32 27, float %4679)  ; Round_ni(value)
  %4690 = call float @dx.op.unary.f32(i32 27, float %4680)  ; Round_ni(value)
  %4691 = fptosi float %4689 to i32
  %4692 = fptosi float %4690 to i32
  %4693 = xor i32 %4692, %4691
  %4694 = sitofp i32 %4693 to float
  %4695 = fptosi float %4694 to i32
  %4696 = sitofp i32 %4695 to float
  %4697 = fmul fast float %4696, 0x3FE3C6EF40000000
  %4698 = frem fast float %4689, 2.560000e+02
  %4699 = frem fast float %4690, 2.560000e+02
  %4700 = fptoui float %4698 to i32
  %4701 = fptoui float %4699 to i32
  %4702 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4700, i32 %4701, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4703 = extractvalue %dx.types.ResRet.f32 %4702, 0
  %4704 = extractvalue %dx.types.ResRet.f32 %4702, 1
  %4705 = extractvalue %dx.types.ResRet.f32 %4702, 2
  %4706 = fadd fast float %4703, %4697
  %4707 = fadd fast float %4704, %4697
  %4708 = fadd fast float %4705, %4697
  %4709 = call float @dx.op.unary.f32(i32 22, float %4706)  ; Frc(value)
  %4710 = call float @dx.op.unary.f32(i32 22, float %4707)  ; Frc(value)
  %4711 = call float @dx.op.unary.f32(i32 22, float %4708)  ; Frc(value)
  %4712 = fmul fast float %4711, 0x401921FB60000000
  %4713 = call float @dx.op.unary.f32(i32 13, float %4712)  ; Sin(value)
  %4714 = call float @dx.op.unary.f32(i32 12, float %4712)  ; Cos(value)
  %4715 = fsub fast float -0.000000e+00, %4714
  %4716 = fmul fast float %4714, %4679
  %4717 = call float @dx.op.tertiary.f32(i32 46, float %4713, float %4680, float %4716)  ; FMad(a,b,c)
  %4718 = fmul fast float %4713, %4679
  %4719 = call float @dx.op.tertiary.f32(i32 46, float %4715, float %4680, float %4718)  ; FMad(a,b,c)
  %4720 = fadd fast float %4717, %4709
  %4721 = fadd fast float %4719, %4710
  %4722 = extractvalue %dx.types.CBufRet.f32 %4632, 3
  %4723 = bitcast float %4722 to i32
  %4724 = icmp eq i32 %4723, 0
  br i1 %4724, label %4763, label %4725

; <label>:4725                                    ; preds = %4628
  %4726 = add i32 %4723, 0
  %4727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4726, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4728 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4727, %dx.types.Handle %120, float %4720, float %4721, float undef, float undef, i32 0, i32 0, i32 undef, float %4683, float %4684, float undef, float %4687, float %4688, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4729 = extractvalue %dx.types.ResRet.f32 %4728, 0
  %4730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4731 = extractvalue %dx.types.CBufRet.f32 %4730, 1
  %4732 = extractvalue %dx.types.CBufRet.f32 %4730, 2
  %4733 = fsub fast float 1.000000e+00, %4338
  %4734 = call float @dx.op.binary.f32(i32 35, float %4733, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4735 = bitcast float %4338 to i32
  %4736 = sitofp i32 %4735 to float
  %4737 = fadd fast float %4736, 0xC1CFBF8940000000
  %4738 = fmul fast float %4732, %4737
  %4739 = fadd fast float %4738, 0x41CFBF8940000000
  %4740 = fptosi float %4739 to i32
  %4741 = bitcast i32 %4740 to float
  %4742 = bitcast float %4734 to i32
  %4743 = sitofp i32 %4742 to float
  %4744 = fadd fast float %4743, 0xC1CFBF8940000000
  %4745 = fmul fast float %4744, %4732
  %4746 = fadd fast float %4745, 0x41CFBF8940000000
  %4747 = fptosi float %4746 to i32
  %4748 = bitcast i32 %4747 to float
  %4749 = fmul fast float %4741, %4731
  %4750 = fmul fast float %4748, %4731
  %4751 = fsub fast float %4734, %4749
  %4752 = fadd fast float %4750, %4734
  %4753 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4754 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4755 = fsub fast float %4729, %4753
  %4756 = fsub fast float %4754, %4753
  %4757 = bitcast float %4756 to i32
  %4758 = sub nsw i32 2129859010, %4757
  %4759 = bitcast i32 %4758 to float
  %4760 = fmul fast float %4759, %4755
  %4761 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4762 = fcmp fast olt float %4761, 0x3F70101020000000
  br i1 %4762, label %4901, label %4763

; <label>:4763                                    ; preds = %4725, %4628
  %4764 = phi float [ %4761, %4725 ], [ %4338, %4628 ]
  %4765 = fmul fast float %4764, %4631
  %4766 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4767 = extractvalue %dx.types.CBufRet.i32 %4766, 1
  %4768 = extractvalue %dx.types.CBufRet.i32 %4766, 0
  %4769 = add i32 %4768, 0
  %4770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4769, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4771 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4770, %dx.types.Handle %119, float %4720, float %4721, float undef, float undef, i32 0, i32 0, i32 undef, float %4683, float %4684, float undef, float %4687, float %4688, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4772 = extractvalue %dx.types.ResRet.f32 %4771, 0
  %4773 = extractvalue %dx.types.ResRet.f32 %4771, 1
  %4774 = extractvalue %dx.types.ResRet.f32 %4771, 2
  %4775 = extractvalue %dx.types.ResRet.f32 %4771, 3
  %4776 = and i32 %4767, 255
  %4777 = uitofp i32 %4776 to float
  %4778 = lshr i32 %4767, 8
  %4779 = and i32 %4778, 255
  %4780 = uitofp i32 %4779 to float
  %4781 = fmul fast float %4775, %4777
  %4782 = fadd fast float %4781, %4780
  %4783 = fmul fast float %4782, 0x3F70101000000000
  %4784 = fadd fast float %4783, 0xBFB99999A0000000
  %4785 = call float @dx.op.unary.f32(i32 7, float %4784)  ; Saturate(value)
  %4786 = fmul fast float %4785, 0x3FF1C71C80000000
  %4787 = call float @dx.op.binary.f32(i32 36, float %4783, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4788 = fsub fast float 1.000000e+00, %4786
  %4789 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4790 = fmul fast float %4789, %4772
  %4791 = fmul fast float %4789, %4773
  %4792 = fmul fast float %4789, %4774
  %4793 = call float @dx.op.unary.f32(i32 7, float %4790)  ; Saturate(value)
  %4794 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4795 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  %4796 = fmul fast float %4786, %4772
  %4797 = fmul fast float %4786, %4773
  %4798 = fmul fast float %4786, %4774
  %4799 = fadd fast float %4796, %4787
  %4800 = fadd fast float %4797, %4787
  %4801 = fadd fast float %4798, %4787
  %4802 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4803 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4804 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4805 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4806 = extractvalue %dx.types.CBufRet.i32 %4805, 3
  %4807 = extractvalue %dx.types.CBufRet.i32 %4805, 2
  %4808 = add i32 %4807, 0
  %4809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4808, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4810 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4809, %dx.types.Handle %119, float %4720, float %4721, float undef, float undef, i32 0, i32 0, i32 undef, float %4683, float %4684, float undef, float %4687, float %4688, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4811 = extractvalue %dx.types.ResRet.f32 %4810, 0
  %4812 = extractvalue %dx.types.ResRet.f32 %4810, 1
  %4813 = extractvalue %dx.types.ResRet.f32 %4810, 2
  %4814 = extractvalue %dx.types.ResRet.f32 %4810, 3
  %4815 = and i32 %4806, 255
  %4816 = uitofp i32 %4815 to float
  %4817 = lshr i32 %4806, 8
  %4818 = and i32 %4817, 255
  %4819 = uitofp i32 %4818 to float
  %4820 = lshr i32 %4806, 16
  %4821 = and i32 %4820, 255
  %4822 = uitofp i32 %4821 to float
  %4823 = fmul fast float %4822, 0x3F70101000000000
  %4824 = fmul fast float %4811, %4816
  %4825 = fadd fast float %4824, %4819
  %4826 = fmul fast float %4825, 0x3F70101000000000
  %4827 = fadd fast float %4812, -5.000000e-01
  %4828 = fadd fast float %4814, -5.000000e-01
  %4829 = fmul fast float %4827, %4823
  %4830 = fmul fast float %4828, %4823
  %4831 = fadd fast float %4829, 5.000000e-01
  %4832 = fadd fast float %4830, 5.000000e-01
  %4833 = fmul fast float %4831, 2.000000e+00
  %4834 = fadd fast float %4833, -1.000000e+00
  %4835 = fmul fast float %4832, 2.000000e+00
  %4836 = fadd fast float %4835, -1.000000e+00
  %4837 = fadd fast float %4834, %4836
  %4838 = fmul fast float %4837, 5.000000e-01
  %4839 = fsub fast float %4834, %4836
  %4840 = fmul fast float %4839, 5.000000e-01
  %4841 = call float @dx.op.unary.f32(i32 6, float %4838)  ; FAbs(value)
  %4842 = fsub fast float 1.000000e+00, %4841
  %4843 = call float @dx.op.unary.f32(i32 6, float %4840)  ; FAbs(value)
  %4844 = fsub fast float %4842, %4843
  %4845 = call float @dx.op.dot3.f32(i32 55, float %4838, float %4840, float %4844, float %4838, float %4840, float %4844)  ; Dot3(ax,ay,az,bx,by,bz)
  %4846 = call float @dx.op.unary.f32(i32 25, float %4845)  ; Rsqrt(value)
  %4847 = fmul fast float %4838, %4846
  %4848 = fmul fast float %4840, %4846
  %4849 = select i1 %4676, i32 %4666, i32 %4667
  %4850 = select i1 %4674, i32 %4665, i32 %4849
  %4851 = sitofp i32 %4850 to float
  %4852 = fmul fast float %4844, %4851
  %4853 = fmul fast float %4852, %4846
  %4854 = select i1 %4676, float %4853, float %4848
  %4855 = select i1 %4676, float %4848, float %4853
  %4856 = select i1 %4674, float %4853, float %4847
  %4857 = select i1 %4674, float %4848, float %4854
  %4858 = select i1 %4674, float %4847, float %4855
  %4859 = fsub fast float %4793, %4617
  %4860 = fsub fast float %4794, %4618
  %4861 = fsub fast float %4795, %4619
  %4862 = fmul fast float %4859, %4765
  %4863 = fmul fast float %4860, %4765
  %4864 = fmul fast float %4861, %4765
  %4865 = fadd fast float %4862, %4617
  %4866 = fadd fast float %4863, %4618
  %4867 = fadd fast float %4864, %4619
  %4868 = fsub fast float %4802, %4620
  %4869 = fsub fast float %4803, %4621
  %4870 = fsub fast float %4804, %4622
  %4871 = fmul fast float %4868, %4765
  %4872 = fmul fast float %4869, %4765
  %4873 = fmul fast float %4870, %4765
  %4874 = fadd fast float %4871, %4620
  %4875 = fadd fast float %4872, %4621
  %4876 = fadd fast float %4873, %4622
  %4877 = fadd fast float %4856, %4623
  %4878 = fadd fast float %4857, %4624
  %4879 = fadd fast float %4858, %4625
  %4880 = call float @dx.op.dot3.f32(i32 55, float %4877, float %4878, float %4879, float %4877, float %4878, float %4879)  ; Dot3(ax,ay,az,bx,by,bz)
  %4881 = call float @dx.op.unary.f32(i32 25, float %4880)  ; Rsqrt(value)
  %4882 = fmul fast float %4877, %4881
  %4883 = fmul fast float %4878, %4881
  %4884 = fmul fast float %4879, %4881
  %4885 = fsub fast float %4882, %4623
  %4886 = fsub fast float %4883, %4624
  %4887 = fsub fast float %4884, %4625
  %4888 = fmul fast float %4885, %4765
  %4889 = fmul fast float %4886, %4765
  %4890 = fmul fast float %4887, %4765
  %4891 = fadd fast float %4888, %4623
  %4892 = fadd fast float %4889, %4624
  %4893 = fadd fast float %4890, %4625
  %4894 = call float @dx.op.binary.f32(i32 36, float %4627, float %4813)  ; FMin(a,b)
  %4895 = fsub fast float %4894, %4627
  %4896 = fmul fast float %4895, %4765
  %4897 = fadd fast float %4896, %4627
  %4898 = fsub fast float %4826, %4626
  %4899 = fmul fast float %4898, %4765
  %4900 = fadd fast float %4899, %4626
  br label %4901

; <label>:4901                                    ; preds = %4763, %4725, %4616, %4332
  %4902 = phi float [ %4865, %4763 ], [ %4617, %4725 ], [ %4617, %4616 ], [ %3941, %4332 ]
  %4903 = phi float [ %4866, %4763 ], [ %4618, %4725 ], [ %4618, %4616 ], [ %3942, %4332 ]
  %4904 = phi float [ %4867, %4763 ], [ %4619, %4725 ], [ %4619, %4616 ], [ %3943, %4332 ]
  %4905 = phi float [ %4874, %4763 ], [ %4620, %4725 ], [ %4620, %4616 ], [ %3926, %4332 ]
  %4906 = phi float [ %4875, %4763 ], [ %4621, %4725 ], [ %4621, %4616 ], [ %3927, %4332 ]
  %4907 = phi float [ %4876, %4763 ], [ %4622, %4725 ], [ %4622, %4616 ], [ %3928, %4332 ]
  %4908 = phi float [ %4891, %4763 ], [ %4623, %4725 ], [ %4623, %4616 ], [ %3889, %4332 ]
  %4909 = phi float [ %4892, %4763 ], [ %4624, %4725 ], [ %4624, %4616 ], [ %3890, %4332 ]
  %4910 = phi float [ %4893, %4763 ], [ %4625, %4725 ], [ %4625, %4616 ], [ %3891, %4332 ]
  %4911 = phi float [ %4900, %4763 ], [ %4626, %4725 ], [ %4626, %4616 ], [ %3929, %4332 ]
  %4912 = phi float [ %4897, %4763 ], [ %4627, %4725 ], [ %4627, %4616 ], [ %3901, %4332 ]
  %4913 = fcmp fast une float %4336, 0.000000e+00
  %4914 = call float @dx.op.dot3.f32(i32 55, float %206, float %207, float %208, float %206, float %207, float %208)  ; Dot3(ax,ay,az,bx,by,bz)
  %4915 = call float @dx.op.unary.f32(i32 25, float %4914)  ; Rsqrt(value)
  br i1 %4913, label %4923, label %4916

; <label>:4916                                    ; preds = %4901
  %4917 = fmul fast float %4915, %206
  %4918 = fmul fast float %4915, %207
  %4919 = fmul fast float %4915, %208
  %4920 = fsub fast float -0.000000e+00, %4917
  %4921 = fsub fast float -0.000000e+00, %4918
  %4922 = fsub fast float -0.000000e+00, %4919
  br label %5090

; <label>:4923                                    ; preds = %4901
  %4924 = fmul fast float %206, %4915
  %4925 = fsub fast float -0.000000e+00, %4924
  %4926 = fmul fast float %207, %4915
  %4927 = fsub fast float -0.000000e+00, %4926
  %4928 = fmul fast float %208, %4915
  %4929 = fsub fast float -0.000000e+00, %4928
  %4930 = call float @dx.op.dot3.f32(i32 55, float %4925, float %4927, float %4929, float %132, float %134, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %4931 = fmul fast float %4336, 2.500000e+00
  %4932 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4933 = fmul fast float %4336, 0x4013FFFFE0000000
  %4934 = fadd fast float %4933, 0xBFFFFFFFE0000000
  %4935 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4936 = fmul fast float %4336, 0x4004000020000000
  %4937 = fadd fast float %4936, 0xBFF8000040000000
  %4938 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4939 = fmul fast float %3908, 1.000000e+01
  %4940 = call float @dx.op.unary.f32(i32 7, float %4939)  ; Saturate(value)
  %4941 = fmul fast float %4940, 2.000000e+00
  %4942 = fsub fast float 3.000000e+00, %4941
  %4943 = fmul fast float %4940, %4940
  %4944 = fmul fast float %4943, %4942
  %4945 = fsub fast float 1.000000e+00, %4944
  %4946 = fsub fast float 0x3FE3333340000000, %4911
  %4947 = fmul fast float %4946, 0x400AAAAAA0000000
  %4948 = call float @dx.op.unary.f32(i32 7, float %4947)  ; Saturate(value)
  %4949 = fmul fast float %4945, %4948
  %4950 = fmul fast float %4902, 0x3FEA2B8620000000
  %4951 = fmul fast float %4903, 0x3FEA2B8620000000
  %4952 = fmul fast float %4904, 0x3FEA2B8620000000
  %4953 = fadd fast float %4950, 0x3FC81DFBA0000000
  %4954 = fmul fast float %4953, %4902
  %4955 = fadd fast float %4954, 0x3F910E6020000000
  %4956 = fadd fast float %4951, 0x3FC81DFBA0000000
  %4957 = fmul fast float %4956, %4903
  %4958 = fadd fast float %4957, 0x3F910E6020000000
  %4959 = fadd fast float %4952, 0x3FC81DFBA0000000
  %4960 = fmul fast float %4959, %4904
  %4961 = fadd fast float %4960, 0x3F910E6020000000
  %4962 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4963 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4964 = call float @dx.op.unary.f32(i32 7, float %4961)  ; Saturate(value)
  %4965 = fsub fast float %4962, %4902
  %4966 = fsub fast float %4963, %4903
  %4967 = fsub fast float %4964, %4904
  %4968 = fmul fast float %4965, %4932
  %4969 = fmul fast float %4968, %4949
  %4970 = fmul fast float %4966, %4932
  %4971 = fmul fast float %4970, %4949
  %4972 = fmul fast float %4967, %4932
  %4973 = fmul fast float %4972, %4949
  %4974 = fadd fast float %4969, %4902
  %4975 = fadd fast float %4971, %4903
  %4976 = fadd fast float %4973, %4904
  %4977 = fmul fast float %4912, %4912
  %4978 = fmul fast float %4977, %4977
  %4979 = fadd fast float %4935, 1.000000e+00
  %4980 = fsub fast float %4979, %4949
  %4981 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4982 = call float @dx.op.dot3.f32(i32 55, float %132, float %134, float %136, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4983 = call float @dx.op.unary.f32(i32 7, float %4982)  ; Saturate(value)
  %4984 = fsub fast float 1.000000e+00, %4978
  %4985 = call float @dx.op.binary.f32(i32 36, float %4981, float %4984)  ; FMin(a,b)
  %4986 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4987 = call float @dx.op.binary.f32(i32 35, float %4985, float %4986)  ; FMax(a,b)
  %4988 = fadd fast float %4983, 0xBFE4CCCCC0000000
  %4989 = fmul fast float %4988, 0x4006DB6DA0000000
  %4990 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4991 = fmul fast float %4990, 2.000000e+00
  %4992 = fsub fast float 3.000000e+00, %4991
  %4993 = bitcast float %4905 to i32
  %4994 = ashr i32 %4993, 1
  %4995 = add nsw i32 %4994, 532487669
  %4996 = bitcast i32 %4995 to float
  %4997 = fsub fast float 1.000000e+00, %4996
  %4998 = bitcast float %4997 to i32
  %4999 = sub nsw i32 2129859010, %4998
  %5000 = bitcast i32 %4999 to float
  %5001 = fmul fast float %5000, 2.000000e+00
  %5002 = bitcast float %4906 to i32
  %5003 = ashr i32 %5002, 1
  %5004 = add nsw i32 %5003, 532487669
  %5005 = bitcast i32 %5004 to float
  %5006 = fsub fast float 1.000000e+00, %5005
  %5007 = bitcast float %5006 to i32
  %5008 = sub nsw i32 2129859010, %5007
  %5009 = bitcast i32 %5008 to float
  %5010 = fmul fast float %5009, 2.000000e+00
  %5011 = bitcast float %4907 to i32
  %5012 = ashr i32 %5011, 1
  %5013 = add nsw i32 %5012, 532487669
  %5014 = bitcast i32 %5013 to float
  %5015 = fsub fast float 1.000000e+00, %5014
  %5016 = bitcast float %5015 to i32
  %5017 = sub nsw i32 2129859010, %5016
  %5018 = bitcast i32 %5017 to float
  %5019 = fmul fast float %5018, 2.000000e+00
  %5020 = fsub fast float 0x4002A9FBE0000000, %5001
  %5021 = fadd fast float %5001, 0x3FD54FDF00000000
  %5022 = bitcast float %5021 to i32
  %5023 = sub nsw i32 2129859010, %5022
  %5024 = bitcast i32 %5023 to float
  %5025 = fmul fast float %5024, %5020
  %5026 = fmul fast float %5025, %5025
  %5027 = fsub fast float 0x4002A9FBE0000000, %5010
  %5028 = fadd fast float %5010, 0x3FD54FDF00000000
  %5029 = bitcast float %5028 to i32
  %5030 = sub nsw i32 2129859010, %5029
  %5031 = bitcast i32 %5030 to float
  %5032 = fmul fast float %5031, %5027
  %5033 = fmul fast float %5032, %5032
  %5034 = fsub fast float 0x4002A9FBE0000000, %5019
  %5035 = fadd fast float %5019, 0x3FD54FDF00000000
  %5036 = bitcast float %5035 to i32
  %5037 = sub nsw i32 2129859010, %5036
  %5038 = bitcast i32 %5037 to float
  %5039 = fmul fast float %5038, %5034
  %5040 = fmul fast float %5039, %5039
  %5041 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5026)  ; FMax(a,b)
  %5042 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5033)  ; FMax(a,b)
  %5043 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5040)  ; FMax(a,b)
  %5044 = fsub fast float 1.000000e+00, %4930
  %5045 = fadd fast float %5044, %4945
  %5046 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5047 = fsub fast float 1.000000e+00, %4317
  %5048 = fmul fast float %4987, %5047
  %5049 = fmul fast float %4990, %4990
  %5050 = fmul fast float %5049, %5048
  %5051 = fmul fast float %5050, %4992
  %5052 = fmul fast float %5047, 0xBFE99999A0000000
  %5053 = fmul fast float %5052, %4932
  %5054 = fmul fast float %5053, %4949
  %5055 = fadd fast float %5054, 1.000000e+00
  %5056 = fadd fast float %4911, -1.000000e+00
  %5057 = fmul fast float %5055, %5056
  %5058 = fadd fast float %5057, 1.000000e+00
  %5059 = fsub fast float %5041, %4905
  %5060 = fsub fast float %5042, %4906
  %5061 = fsub fast float %5043, %4907
  %5062 = fmul fast float %5051, %5059
  %5063 = fmul fast float %5051, %5060
  %5064 = fmul fast float %5051, %5061
  %5065 = fadd fast float %5062, %4905
  %5066 = fadd fast float %5063, %4906
  %5067 = fadd fast float %5064, %4907
  %5068 = fsub fast float %132, %4908
  %5069 = fsub fast float %134, %4909
  %5070 = fsub fast float %136, %4910
  %5071 = fmul fast float %5051, %5068
  %5072 = fmul fast float %5051, %5069
  %5073 = fmul fast float %5051, %5070
  %5074 = fadd fast float %5071, %4908
  %5075 = fadd fast float %5072, %4909
  %5076 = fadd fast float %5073, %4910
  %5077 = fmul fast float %5051, %5046
  %5078 = call float @dx.op.unary.f32(i32 7, float %5058)  ; Saturate(value)
  %5079 = fsub fast float 1.000000e+00, %5078
  %5080 = fmul fast float %5077, %5079
  %5081 = fadd fast float %5080, %5078
  %5082 = fsub fast float 1.000000e+00, %4912
  %5083 = fmul fast float %5051, %5082
  %5084 = fadd fast float %5083, %4912
  %5085 = call float @dx.op.dot3.f32(i32 55, float %5074, float %5075, float %5076, float %5074, float %5075, float %5076)  ; Dot3(ax,ay,az,bx,by,bz)
  %5086 = call float @dx.op.unary.f32(i32 25, float %5085)  ; Rsqrt(value)
  %5087 = fmul fast float %5074, %5086
  %5088 = fmul fast float %5075, %5086
  %5089 = fmul fast float %5076, %5086
  br label %5090

; <label>:5090                                    ; preds = %4923, %4916
  %5091 = phi float [ %4922, %4916 ], [ %4929, %4923 ]
  %5092 = phi float [ %4921, %4916 ], [ %4927, %4923 ]
  %5093 = phi float [ %4920, %4916 ], [ %4925, %4923 ]
  %5094 = phi float [ %4919, %4916 ], [ %4928, %4923 ]
  %5095 = phi float [ %4918, %4916 ], [ %4926, %4923 ]
  %5096 = phi float [ %4917, %4916 ], [ %4924, %4923 ]
  %5097 = phi float [ %4902, %4916 ], [ %4974, %4923 ]
  %5098 = phi float [ %4903, %4916 ], [ %4975, %4923 ]
  %5099 = phi float [ %4904, %4916 ], [ %4976, %4923 ]
  %5100 = phi float [ %4905, %4916 ], [ %5065, %4923 ]
  %5101 = phi float [ %4906, %4916 ], [ %5066, %4923 ]
  %5102 = phi float [ %4907, %4916 ], [ %5067, %4923 ]
  %5103 = phi float [ %4908, %4916 ], [ %5087, %4923 ]
  %5104 = phi float [ %4909, %4916 ], [ %5088, %4923 ]
  %5105 = phi float [ %4910, %4916 ], [ %5089, %4923 ]
  %5106 = phi float [ %4911, %4916 ], [ %5081, %4923 ]
  %5107 = phi float [ %4912, %4916 ], [ %5084, %4923 ]
  %5108 = fsub fast float -0.000000e+00, %208
  %5109 = select i1 %278, float 0.000000e+00, float %5102
  %5110 = call float @dx.op.dot3.f32(i32 55, float %5103, float %5104, float %5105, float %5093, float %5092, float %5091)  ; Dot3(ax,ay,az,bx,by,bz)
  %5111 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5112 = call float @dx.op.dot3.f32(i32 55, float %5096, float %5095, float %5094, float %5103, float %5104, float %5105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5113 = fmul fast float %5112, 2.000000e+00
  %5114 = fmul fast float %5113, %5103
  %5115 = fmul fast float %5113, %5104
  %5116 = fmul fast float %5113, %5105
  %5117 = fsub fast float %5096, %5114
  %5118 = fsub fast float %5095, %5115
  %5119 = fsub fast float %5094, %5116
  %5120 = call float @dx.op.binary.f32(i32 36, float %5107, float 1.000000e+00)  ; FMin(a,b)
  %5121 = fsub fast float 1.000000e+00, %5120
  %5122 = bitcast float %5121 to i32
  %5123 = ashr i32 %5122, 1
  %5124 = add nsw i32 %5123, 532487669
  %5125 = bitcast i32 %5124 to float
  %5126 = fsub fast float 1.000000e+00, %5106
  %5127 = call float @dx.op.binary.f32(i32 35, float %5126, float 0x3F847AE140000000)  ; FMax(a,b)
  %5128 = fmul fast float %5127, %5127
  %5129 = fmul fast float %5128, %5128
  %5130 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5125, float %5129, float %5130, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5132 = extractvalue %dx.types.ResRet.f32 %5131, 0
  %5133 = fsub fast float 1.000000e+00, %5107
  %5134 = bitcast float %5133 to i32
  %5135 = sub nsw i32 2129859010, %5134
  %5136 = call float @dx.op.dot3.f32(i32 55, float %90, float %86, float %82, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5137 = fmul fast float %5136, 0x3FD20DD760000000
  %5138 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %90)  ; FMax(a,b)
  %5139 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %5140 = fcmp fast oeq float %5139, 0.000000e+00
  %5141 = fcmp fast oeq float %5138, 0.000000e+00
  %5142 = or i1 %5141, %5140
  br i1 %5142, label %5172, label %5143

; <label>:5143                                    ; preds = %5090
  %5144 = fsub fast float -0.000000e+00, %93
  %5145 = fsub fast float -0.000000e+00, %91
  %5146 = call float @dx.op.unary.f32(i32 24, float %5139)  ; Sqrt(value)
  %5147 = fdiv fast float %5146, %5138
  %5148 = fcmp fast ogt float %5147, 0x3FFB6F8900000000
  %5149 = select i1 %5148, float 0x3FFB6F8900000000, float %5147
  %5150 = fmul fast float %5149, 0x3FE8A23460000000
  %5151 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5152 = call float @dx.op.binary.f32(i32 35, float %5149, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5153 = fmul fast float %5151, %5138
  %5154 = fmul fast float %5152, 0x3FF279A740000000
  %5155 = fadd fast float %5154, -1.000000e+00
  %5156 = call float @dx.op.dot3.f32(i32 55, float %5144, float %5145, float %92, float %5144, float %5145, float %92)  ; Dot3(ax,ay,az,bx,by,bz)
  %5157 = call float @dx.op.unary.f32(i32 25, float %5156)  ; Rsqrt(value)
  %5158 = fmul fast float %5157, %5144
  %5159 = fmul fast float %5157, %5145
  %5160 = fmul fast float %5157, %92
  %5161 = fmul fast float %5155, %5155
  %5162 = fsub fast float 1.000000e+00, %5161
  %5163 = fmul fast float %5152, 0x40005F8BE0000000
  %5164 = fsub fast float 0x400C5BF8A0000000, %5163
  %5165 = fdiv fast float %5153, %5164
  %5166 = fmul fast float %5165, 0x3FEE31C3C0000000
  %5167 = fmul fast float %5166, %5162
  %5168 = fmul fast float %5152, 0x3FDACB7480000000
  %5169 = fadd fast float %5168, 0xBFD7347680000000
  %5170 = fmul fast float %5169, %5165
  %5171 = fmul fast float %5170, %5162
  br label %5172

; <label>:5172                                    ; preds = %5143, %5090
  %5173 = phi float [ %5158, %5143 ], [ 0.000000e+00, %5090 ]
  %5174 = phi float [ %5159, %5143 ], [ 0.000000e+00, %5090 ]
  %5175 = phi float [ %5160, %5143 ], [ 0.000000e+00, %5090 ]
  %5176 = phi float [ %5167, %5143 ], [ 0.000000e+00, %5090 ]
  %5177 = phi float [ %5171, %5143 ], [ 0.000000e+00, %5090 ]
  %5178 = call float @dx.op.dot3.f32(i32 55, float %5173, float %5174, float %5175, float %5103, float %5104, float %5105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5179 = fmul fast float %5178, %5178
  %5180 = fmul fast float %5179, 0x3FEE471020000000
  %5181 = fadd fast float %5180, 0xBFD42F6020000000
  %5182 = fmul fast float %5138, 0x3FD20DD760000000
  %5183 = fmul fast float %5181, %5177
  %5184 = fmul fast float %5176, 0x3FDF454380000000
  %5185 = fmul fast float %5184, %5178
  %5186 = fadd fast float %5185, %5182
  %5187 = fadd fast float %5186, %5183
  %5188 = call float @dx.op.dot3.f32(i32 55, float %5173, float %5174, float %5175, float %5117, float %5118, float %5119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5189 = fmul fast float %5188, 0x3FDF454380000000
  %5190 = fmul fast float %5188, %5188
  %5191 = fmul fast float %5190, 0x3FEE471020000000
  %5192 = fadd fast float %5191, 0xBFD42F6020000000
  %5193 = call float @dx.op.dot3.f32(i32 55, float %5138, float %5176, float %5177, float 0x3FD20DD760000000, float %5189, float %5192)  ; Dot3(ax,ay,az,bx,by,bz)
  %5194 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %86)  ; FMax(a,b)
  %5195 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %5196 = fcmp fast oeq float %5195, 0.000000e+00
  %5197 = fcmp fast oeq float %5194, 0.000000e+00
  %5198 = or i1 %5197, %5196
  br i1 %5198, label %5228, label %5199

; <label>:5199                                    ; preds = %5172
  %5200 = fsub fast float -0.000000e+00, %89
  %5201 = fsub fast float -0.000000e+00, %87
  %5202 = call float @dx.op.unary.f32(i32 24, float %5195)  ; Sqrt(value)
  %5203 = fdiv fast float %5202, %5194
  %5204 = fcmp fast ogt float %5203, 0x3FFB6F8900000000
  %5205 = select i1 %5204, float 0x3FFB6F8900000000, float %5203
  %5206 = fmul fast float %5205, 0x3FE8A23460000000
  %5207 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5208 = call float @dx.op.binary.f32(i32 35, float %5205, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5209 = fmul fast float %5207, %5194
  %5210 = fmul fast float %5208, 0x3FF279A740000000
  %5211 = fadd fast float %5210, -1.000000e+00
  %5212 = call float @dx.op.dot3.f32(i32 55, float %5200, float %5201, float %88, float %5200, float %5201, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %5213 = call float @dx.op.unary.f32(i32 25, float %5212)  ; Rsqrt(value)
  %5214 = fmul fast float %5213, %5200
  %5215 = fmul fast float %5213, %5201
  %5216 = fmul fast float %5213, %88
  %5217 = fmul fast float %5211, %5211
  %5218 = fsub fast float 1.000000e+00, %5217
  %5219 = fmul fast float %5208, 0x40005F8BE0000000
  %5220 = fsub fast float 0x400C5BF8A0000000, %5219
  %5221 = fdiv fast float %5209, %5220
  %5222 = fmul fast float %5221, 0x3FEE31C3C0000000
  %5223 = fmul fast float %5222, %5218
  %5224 = fmul fast float %5208, 0x3FDACB7480000000
  %5225 = fadd fast float %5224, 0xBFD7347680000000
  %5226 = fmul fast float %5225, %5221
  %5227 = fmul fast float %5226, %5218
  br label %5228

; <label>:5228                                    ; preds = %5199, %5172
  %5229 = phi float [ %5214, %5199 ], [ 0.000000e+00, %5172 ]
  %5230 = phi float [ %5215, %5199 ], [ 0.000000e+00, %5172 ]
  %5231 = phi float [ %5216, %5199 ], [ 0.000000e+00, %5172 ]
  %5232 = phi float [ %5223, %5199 ], [ 0.000000e+00, %5172 ]
  %5233 = phi float [ %5227, %5199 ], [ 0.000000e+00, %5172 ]
  %5234 = call float @dx.op.dot3.f32(i32 55, float %5229, float %5230, float %5231, float %5103, float %5104, float %5105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5235 = fmul fast float %5234, %5234
  %5236 = fmul fast float %5235, 0x3FEE471020000000
  %5237 = fadd fast float %5236, 0xBFD42F6020000000
  %5238 = fmul fast float %5194, 0x3FD20DD760000000
  %5239 = fmul fast float %5237, %5233
  %5240 = fmul fast float %5232, 0x3FDF454380000000
  %5241 = fmul fast float %5240, %5234
  %5242 = fadd fast float %5241, %5238
  %5243 = fadd fast float %5242, %5239
  %5244 = call float @dx.op.dot3.f32(i32 55, float %5229, float %5230, float %5231, float %5117, float %5118, float %5119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5245 = fmul fast float %5244, 0x3FDF454380000000
  %5246 = fmul fast float %5244, %5244
  %5247 = fmul fast float %5246, 0x3FEE471020000000
  %5248 = fadd fast float %5247, 0xBFD42F6020000000
  %5249 = call float @dx.op.dot3.f32(i32 55, float %5194, float %5232, float %5233, float 0x3FD20DD760000000, float %5245, float %5248)  ; Dot3(ax,ay,az,bx,by,bz)
  %5250 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %82)  ; FMax(a,b)
  %5251 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5252 = fcmp fast oeq float %5251, 0.000000e+00
  %5253 = fcmp fast oeq float %5250, 0.000000e+00
  %5254 = or i1 %5253, %5252
  br i1 %5254, label %5284, label %5255

; <label>:5255                                    ; preds = %5228
  %5256 = fsub fast float -0.000000e+00, %85
  %5257 = fsub fast float -0.000000e+00, %83
  %5258 = call float @dx.op.unary.f32(i32 24, float %5251)  ; Sqrt(value)
  %5259 = fdiv fast float %5258, %5250
  %5260 = fcmp fast ogt float %5259, 0x3FFB6F8900000000
  %5261 = select i1 %5260, float 0x3FFB6F8900000000, float %5259
  %5262 = fmul fast float %5261, 0x3FE8A23460000000
  %5263 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5264 = call float @dx.op.binary.f32(i32 35, float %5261, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5265 = fmul fast float %5263, %5250
  %5266 = fmul fast float %5264, 0x3FF279A740000000
  %5267 = fadd fast float %5266, -1.000000e+00
  %5268 = call float @dx.op.dot3.f32(i32 55, float %5256, float %5257, float %84, float %5256, float %5257, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %5269 = call float @dx.op.unary.f32(i32 25, float %5268)  ; Rsqrt(value)
  %5270 = fmul fast float %5269, %5256
  %5271 = fmul fast float %5269, %5257
  %5272 = fmul fast float %5269, %84
  %5273 = fmul fast float %5267, %5267
  %5274 = fsub fast float 1.000000e+00, %5273
  %5275 = fmul fast float %5264, 0x40005F8BE0000000
  %5276 = fsub fast float 0x400C5BF8A0000000, %5275
  %5277 = fdiv fast float %5265, %5276
  %5278 = fmul fast float %5277, 0x3FEE31C3C0000000
  %5279 = fmul fast float %5278, %5274
  %5280 = fmul fast float %5264, 0x3FDACB7480000000
  %5281 = fadd fast float %5280, 0xBFD7347680000000
  %5282 = fmul fast float %5281, %5277
  %5283 = fmul fast float %5282, %5274
  br label %5284

; <label>:5284                                    ; preds = %5255, %5228
  %5285 = phi float [ %5270, %5255 ], [ 0.000000e+00, %5228 ]
  %5286 = phi float [ %5271, %5255 ], [ 0.000000e+00, %5228 ]
  %5287 = phi float [ %5272, %5255 ], [ 0.000000e+00, %5228 ]
  %5288 = phi float [ %5279, %5255 ], [ 0.000000e+00, %5228 ]
  %5289 = phi float [ %5283, %5255 ], [ 0.000000e+00, %5228 ]
  %5290 = call float @dx.op.dot3.f32(i32 55, float %5285, float %5286, float %5287, float %5103, float %5104, float %5105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5291 = fmul fast float %5290, %5290
  %5292 = fmul fast float %5291, 0x3FEE471020000000
  %5293 = fadd fast float %5292, 0xBFD42F6020000000
  %5294 = fmul fast float %5250, 0x3FD20DD760000000
  %5295 = fmul fast float %5293, %5289
  %5296 = fmul fast float %5288, 0x3FDF454380000000
  %5297 = fmul fast float %5296, %5290
  %5298 = fadd fast float %5297, %5294
  %5299 = fadd fast float %5298, %5295
  %5300 = call float @dx.op.dot3.f32(i32 55, float %5285, float %5286, float %5287, float %5117, float %5118, float %5119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5301 = fmul fast float %5300, 0x3FDF454380000000
  %5302 = fmul fast float %5300, %5300
  %5303 = fmul fast float %5302, 0x3FEE471020000000
  %5304 = fadd fast float %5303, 0xBFD42F6020000000
  %5305 = call float @dx.op.dot3.f32(i32 55, float %5250, float %5288, float %5289, float 0x3FD20DD760000000, float %5301, float %5304)  ; Dot3(ax,ay,az,bx,by,bz)
  %5306 = call float @dx.op.binary.f32(i32 35, float %5187, float 0.000000e+00)  ; FMax(a,b)
  %5307 = call float @dx.op.binary.f32(i32 35, float %5243, float 0.000000e+00)  ; FMax(a,b)
  %5308 = call float @dx.op.binary.f32(i32 35, float %5299, float 0.000000e+00)  ; FMax(a,b)
  %5309 = call float @dx.op.binary.f32(i32 35, float %5193, float 0.000000e+00)  ; FMax(a,b)
  %5310 = call float @dx.op.binary.f32(i32 35, float %5249, float 0.000000e+00)  ; FMax(a,b)
  %5311 = call float @dx.op.binary.f32(i32 35, float %5305, float 0.000000e+00)  ; FMax(a,b)
  %5312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5313 = extractvalue %dx.types.CBufRet.f32 %5312, 0
  %5314 = call float @dx.op.binary.f32(i32 36, float %5097, float %5313)  ; FMin(a,b)
  %5315 = fmul fast float %5314, %5121
  %5316 = fsub fast float 1.000000e+00, %5315
  %5317 = bitcast float %5316 to i32
  %5318 = sub nsw i32 2129859010, %5317
  %5319 = bitcast i32 %5318 to float
  %5320 = call float @dx.op.binary.f32(i32 36, float %5098, float %5313)  ; FMin(a,b)
  %5321 = fmul fast float %5320, %5121
  %5322 = fsub fast float 1.000000e+00, %5321
  %5323 = bitcast float %5322 to i32
  %5324 = sub nsw i32 2129859010, %5323
  %5325 = bitcast i32 %5324 to float
  %5326 = call float @dx.op.binary.f32(i32 36, float %5099, float %5313)  ; FMin(a,b)
  %5327 = fmul fast float %5326, %5121
  %5328 = fsub fast float 1.000000e+00, %5327
  %5329 = bitcast float %5328 to i32
  %5330 = sub nsw i32 2129859010, %5329
  %5331 = bitcast i32 %5330 to float
  %5332 = fmul fast float %5306, %5120
  %5333 = fmul fast float %5332, %5319
  %5334 = fmul fast float %5307, %5120
  %5335 = fmul fast float %5334, %5325
  %5336 = fmul fast float %5308, %5120
  %5337 = fmul fast float %5336, %5331
  %5338 = call float @dx.op.binary.f32(i32 36, float %5100, float %5313)  ; FMin(a,b)
  %5339 = fmul fast float %5338, %5121
  %5340 = fsub fast float 1.000000e+00, %5339
  %5341 = bitcast float %5340 to i32
  %5342 = sub nsw i32 2129859010, %5341
  %5343 = bitcast i32 %5342 to float
  %5344 = call float @dx.op.binary.f32(i32 36, float %5101, float %5313)  ; FMin(a,b)
  %5345 = fmul fast float %5344, %5121
  %5346 = fsub fast float 1.000000e+00, %5345
  %5347 = bitcast float %5346 to i32
  %5348 = sub nsw i32 2129859010, %5347
  %5349 = bitcast i32 %5348 to float
  %5350 = call float @dx.op.binary.f32(i32 36, float %5109, float %5313)  ; FMin(a,b)
  %5351 = fmul fast float %5350, %5121
  %5352 = fsub fast float 1.000000e+00, %5351
  %5353 = bitcast float %5352 to i32
  %5354 = sub nsw i32 2129859010, %5353
  %5355 = bitcast i32 %5354 to float
  %5356 = fmul fast float %5309, %5120
  %5357 = fmul fast float %5356, %5343
  %5358 = fmul fast float %5310, %5120
  %5359 = fmul fast float %5358, %5349
  %5360 = fmul fast float %5311, %5120
  %5361 = fmul fast float %5360, %5355
  %5362 = call float @dx.op.dot3.f32(i32 55, float %5333, float %5335, float %5337, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5363 = select i1 %278, float 0.000000e+00, float %5333
  %5364 = select i1 %278, float %5362, float %5335
  %5365 = select i1 %278, float 0.000000e+00, float %5337
  %5366 = call float @dx.op.dot3.f32(i32 55, float %5357, float %5359, float %5361, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5367 = select i1 %278, float 0.000000e+00, float %5357
  %5368 = select i1 %278, float %5366, float %5359
  %5369 = select i1 %278, float 0.000000e+00, float %5361
  %5370 = fmul fast float %5111, 9.843750e-01
  %5371 = fmul fast float %5106, 9.843750e-01
  %5372 = fadd fast float %5370, 7.812500e-03
  %5373 = fadd fast float %5371, 7.812500e-03
  %5374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %5372, float %5373, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5375 = extractvalue %dx.types.ResRet.f32 %5374, 2
  %5376 = extractvalue %dx.types.ResRet.f32 %5374, 3
  %5377 = fmul fast float %5375, %5100
  %5378 = fmul fast float %5375, %5101
  %5379 = fmul fast float %5375, %5109
  %5380 = fadd fast float %5377, %5376
  %5381 = fadd fast float %5378, %5376
  %5382 = fadd fast float %5379, %5376
  %5383 = fcmp fast ogt float %3902, 0.000000e+00
  br i1 %5383, label %5384, label %5410

; <label>:5384                                    ; preds = %5284
  %5385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3902, float %5111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5386 = extractvalue %dx.types.ResRet.f32 %5385, 0
  %5387 = extractvalue %dx.types.ResRet.f32 %5385, 1
  %5388 = extractvalue %dx.types.ResRet.f32 %5385, 2
  %5389 = fadd fast float %5386, -5.000000e-01
  %5390 = fadd fast float %5387, -5.000000e-01
  %5391 = fadd fast float %5388, -5.000000e-01
  %5392 = fsub fast float 1.000000e+00, %5100
  %5393 = fsub fast float 1.000000e+00, %5101
  %5394 = fsub fast float 1.000000e+00, %5109
  %5395 = fmul fast float %5100, 4.000000e+00
  %5396 = fmul fast float %5395, %5392
  %5397 = fmul fast float %5396, %5389
  %5398 = fmul fast float %5101, 4.000000e+00
  %5399 = fmul fast float %5398, %5393
  %5400 = fmul fast float %5399, %5390
  %5401 = fmul fast float %5109, 4.000000e+00
  %5402 = fmul fast float %5401, %5394
  %5403 = fmul fast float %5402, %5391
  %5404 = fadd fast float %5397, %5380
  %5405 = fadd fast float %5400, %5381
  %5406 = fadd fast float %5403, %5382
  %5407 = call float @dx.op.unary.f32(i32 7, float %5404)  ; Saturate(value)
  %5408 = call float @dx.op.unary.f32(i32 7, float %5405)  ; Saturate(value)
  %5409 = call float @dx.op.unary.f32(i32 7, float %5406)  ; Saturate(value)
  br label %5410

; <label>:5410                                    ; preds = %5384, %5284
  %5411 = phi float [ %5407, %5384 ], [ %5380, %5284 ]
  %5412 = phi float [ %5408, %5384 ], [ %5381, %5284 ]
  %5413 = phi float [ %5409, %5384 ], [ %5382, %5284 ]
  %5414 = call float @dx.op.binary.f32(i32 35, float %5412, float %5413)  ; FMax(a,b)
  %5415 = call float @dx.op.binary.f32(i32 35, float %5411, float %5414)  ; FMax(a,b)
  %5416 = fsub fast float 1.000000e+00, %5415
  %5417 = fmul fast float %5415, %5106
  %5418 = fadd fast float %5417, %5106
  %5419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5420 = extractvalue %dx.types.CBufRet.f32 %5419, 2
  %5421 = extractvalue %dx.types.CBufRet.f32 %5419, 3
  %5422 = fmul fast float %5418, %5420
  %5423 = fadd fast float %5422, %5421
  %5424 = call float @dx.op.unary.f32(i32 7, float %5423)  ; Saturate(value)
  %5425 = fsub fast float 1.000000e+00, %5132
  %5426 = fadd fast float %5425, %5424
  %5427 = call float @dx.op.unary.f32(i32 7, float %5426)  ; Saturate(value)
  %5428 = fcmp fast olt float %5427, 1.000000e+00
  br i1 %5428, label %5429, label %5905

; <label>:5429                                    ; preds = %5410
  %5430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5431 = extractvalue %dx.types.CBufRet.f32 %5430, 2
  %5432 = extractvalue %dx.types.CBufRet.f32 %5430, 3
  %5433 = fmul fast float %5431, %123
  %5434 = fmul fast float %5432, %124
  %5435 = fptoui float %5433 to i32
  %5436 = fptoui float %5434 to i32
  %5437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.f32 %5437, 0
  %5439 = extractvalue %dx.types.CBufRet.f32 %5437, 2
  %5440 = extractvalue %dx.types.CBufRet.f32 %5437, 3
  %5441 = fadd fast float %110, -4.000000e+00
  %5442 = call float @dx.op.binary.f32(i32 35, float %5441, float 0.000000e+00)  ; FMax(a,b)
  %5443 = fadd fast float %5442, %5438
  %5444 = fmul fast float %5443, %5439
  %5445 = call float @dx.op.unary.f32(i32 23, float %5444)  ; Log(value)
  %5446 = fmul fast float %5445, %5440
  %5447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5448 = extractvalue %dx.types.CBufRet.f32 %5447, 2
  %5449 = fmul fast float %5446, %5448
  %5450 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5452 = extractvalue %dx.types.CBufRet.i32 %5451, 1
  %5453 = add i32 %5452, -1
  %5454 = uitofp i32 %5452 to float
  %5455 = fmul fast float %5454, %5450
  %5456 = fptoui float %5455 to i32
  %5457 = call i32 @dx.op.binary.i32(i32 40, i32 %5456, i32 %5453)  ; UMin(a,b)
  %5458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5459 = extractvalue %dx.types.CBufRet.i32 %5458, 2
  %5460 = extractvalue %dx.types.CBufRet.i32 %5458, 3
  %5461 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5436, i32 %5459, i32 %5435)  ; UMad(a,b,c)
  %5462 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5457, i32 %5460, i32 %5461)  ; UMad(a,b,c)
  %5463 = call float @dx.op.binary.f32(i32 35, float %110, float 0.000000e+00)  ; FMax(a,b)
  %5464 = fptoui float %5463 to i32
  %5465 = lshr i32 %5464, 5
  %5466 = call i32 @dx.op.binary.i32(i32 40, i32 %5465, i32 8191)  ; UMin(a,b)
  %5467 = fsub fast float %4307, %208
  %5468 = call float @dx.op.unary.f32(i32 7, float %5467)  ; Saturate(value)
  %5469 = fcmp fast ogt float %5468, 0.000000e+00
  %5470 = fcmp fast ogt float %5119, 0.000000e+00
  %5471 = and i1 %5470, %5469
  br i1 %5471, label %5472, label %5501

; <label>:5472                                    ; preds = %5429
  %5473 = call float @dx.op.dot3.f32(i32 55, float %5117, float %5118, float %5119, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5474 = call float @dx.op.binary.f32(i32 35, float %5473, float -1.000000e+00)  ; FMax(a,b)
  %5475 = call float @dx.op.binary.f32(i32 36, float %5474, float 1.000000e+00)  ; FMin(a,b)
  %5476 = fmul fast float %5475, %5475
  %5477 = fsub fast float 1.000000e+00, %5476
  %5478 = fmul fast float %5477, 0x3FFC6E2300000000
  %5479 = fsub fast float 1.000000e+00, %5478
  %5480 = fcmp fast ogt float %5479, 0.000000e+00
  %5481 = call float @dx.op.unary.f32(i32 24, float %5479)  ; Sqrt(value)
  %5482 = fsub fast float 1.000000e+00, %5481
  %5483 = call float @dx.op.unary.f32(i32 23, float %5482)  ; Log(value)
  %5484 = fmul fast float %5483, 5.000000e+00
  %5485 = call float @dx.op.unary.f32(i32 21, float %5484)  ; Exp(value)
  %5486 = fmul fast float %5485, 0x3FEF591A60000000
  %5487 = fadd fast float %5486, 0x3F94DCB540000000
  %5488 = select i1 %5480, float %5487, float 1.000000e+00
  %5489 = fcmp fast oge float %5488, 1.000000e+00
  %5490 = fmul fast float %5473, 2.000000e+00
  %5491 = fadd fast float %5490, %5119
  %5492 = select i1 %5489, float %5491, float %5119
  %5493 = fsub fast float %5492, %5119
  %5494 = fmul fast float %5493, %5468
  %5495 = fadd fast float %5494, %5119
  %5496 = call float @dx.op.dot3.f32(i32 55, float %5117, float %5118, float %5495, float %5117, float %5118, float %5495)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = call float @dx.op.unary.f32(i32 25, float %5496)  ; Rsqrt(value)
  %5498 = fmul fast float %5497, %5117
  %5499 = fmul fast float %5497, %5118
  %5500 = fmul fast float %5495, %5497
  br label %5501

; <label>:5501                                    ; preds = %5472, %5429
  %5502 = phi float [ %5498, %5472 ], [ %5117, %5429 ]
  %5503 = phi float [ %5499, %5472 ], [ %5118, %5429 ]
  %5504 = phi float [ %5500, %5472 ], [ %5119, %5429 ]
  %5505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5506 = extractvalue %dx.types.CBufRet.i32 %5505, 2
  %5507 = add nsw i32 %5506, -1
  %5508 = call i32 @dx.op.binary.i32(i32 37, i32 %5507, i32 0)  ; IMax(a,b)
  %5509 = shl i32 %5466, 2
  %5510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5509, i32 undef)  ; BufferLoad(srv,index,wot)
  %5511 = extractvalue %dx.types.ResRet.i32 %5510, 0
  %5512 = lshr i32 %5511, 16
  %5513 = and i32 %5511, 65535
  %5514 = lshr i32 %5511, 21
  %5515 = lshr i32 %5513, 5
  %5516 = call i32 @dx.op.binary.i32(i32 40, i32 %5515, i32 %5508)  ; UMin(a,b)
  %5517 = icmp ugt i32 %5514, %5516
  br i1 %5517, label %5881, label %5518

; <label>:5518                                    ; preds = %5501
  br label %5519

; <label>:5519                                    ; preds = %5873, %5518
  %5520 = phi float [ %5874, %5873 ], [ 0.000000e+00, %5518 ]
  %5521 = phi float [ %5875, %5873 ], [ 0.000000e+00, %5518 ]
  %5522 = phi float [ %5876, %5873 ], [ 0.000000e+00, %5518 ]
  %5523 = phi float [ %5877, %5873 ], [ 1.000000e+00, %5518 ]
  %5524 = phi i32 [ %5878, %5873 ], [ %5514, %5518 ]
  %5525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.i32 %5525, 2
  %5527 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5462, i32 %5526, i32 %5524)  ; UMad(a,b,c)
  %5528 = shl i32 %5527, 2
  %5529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5528, i32 undef)  ; BufferLoad(srv,index,wot)
  %5530 = extractvalue %dx.types.ResRet.i32 %5529, 0
  %5531 = shl i32 %5524, 5
  %5532 = sub nsw i32 %5512, %5531
  %5533 = call i32 @dx.op.binary.i32(i32 37, i32 %5532, i32 0)  ; IMax(a,b)
  %5534 = call i32 @dx.op.binary.i32(i32 38, i32 %5533, i32 31)  ; IMin(a,b)
  %5535 = sub nsw i32 1, %5512
  %5536 = add nsw i32 %5535, %5513
  %5537 = call i32 @dx.op.binary.i32(i32 37, i32 %5536, i32 0)  ; IMax(a,b)
  %5538 = call i32 @dx.op.binary.i32(i32 38, i32 %5537, i32 32)  ; IMin(a,b)
  %5539 = and i32 %5538, 31
  %5540 = shl i32 -1, %5539
  %5541 = xor i32 %5540, -1
  %5542 = and i32 %5534, 31
  %5543 = shl i32 %5541, %5542
  %5544 = icmp eq i32 %5538, 32
  %5545 = select i1 %5544, i32 -1, i32 %5543
  %5546 = and i32 %5545, %5530
  %5547 = icmp eq i32 %5546, 0
  br i1 %5547, label %5873, label %5548

; <label>:5548                                    ; preds = %5519
  br label %5549

; <label>:5549                                    ; preds = %5656, %5548
  %5550 = phi float [ %5657, %5656 ], [ %5520, %5548 ]
  %5551 = phi float [ %5658, %5656 ], [ %5521, %5548 ]
  %5552 = phi float [ %5659, %5656 ], [ %5522, %5548 ]
  %5553 = phi float [ %5660, %5656 ], [ %5523, %5548 ]
  %5554 = phi i32 [ %5559, %5656 ], [ %5546, %5548 ]
  %5555 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5554)  ; FirstbitLo(value)
  %5556 = add i32 %5555, %5531
  %5557 = and i32 %5555, 31
  %5558 = shl i32 1, %5557
  %5559 = xor i32 %5558, %5554
  %5560 = mul i32 %5556, 72
  %5561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5560, i32 undef)  ; BufferLoad(srv,index,wot)
  %5562 = extractvalue %dx.types.ResRet.f32 %5561, 0
  %5563 = extractvalue %dx.types.ResRet.f32 %5561, 1
  %5564 = extractvalue %dx.types.ResRet.f32 %5561, 2
  %5565 = add i32 %5560, 12
  %5566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5565, i32 undef)  ; BufferLoad(srv,index,wot)
  %5567 = extractvalue %dx.types.ResRet.i32 %5566, 0
  %5568 = add i32 %5560, 16
  %5569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5568, i32 undef)  ; BufferLoad(srv,index,wot)
  %5570 = extractvalue %dx.types.ResRet.f32 %5569, 0
  %5571 = extractvalue %dx.types.ResRet.f32 %5569, 1
  %5572 = extractvalue %dx.types.ResRet.f32 %5569, 2
  %5573 = add i32 %5560, 28
  %5574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5573, i32 undef)  ; BufferLoad(srv,index,wot)
  %5575 = extractvalue %dx.types.ResRet.f32 %5574, 0
  %5576 = add i32 %5560, 32
  %5577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5576, i32 undef)  ; BufferLoad(srv,index,wot)
  %5578 = extractvalue %dx.types.ResRet.f32 %5577, 0
  %5579 = extractvalue %dx.types.ResRet.f32 %5577, 1
  %5580 = extractvalue %dx.types.ResRet.f32 %5577, 2
  %5581 = extractvalue %dx.types.ResRet.f32 %5577, 3
  %5582 = add i32 %5560, 48
  %5583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5582, i32 undef)  ; BufferLoad(srv,index,wot)
  %5584 = extractvalue %dx.types.ResRet.f32 %5583, 0
  %5585 = extractvalue %dx.types.ResRet.f32 %5583, 1
  %5586 = add i32 %5560, 56
  %5587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5586, i32 undef)  ; BufferLoad(srv,index,wot)
  %5588 = extractvalue %dx.types.ResRet.f32 %5587, 0
  %5589 = extractvalue %dx.types.ResRet.f32 %5587, 1
  %5590 = add i32 %5560, 64
  %5591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5590, i32 undef)  ; BufferLoad(srv,index,wot)
  %5592 = extractvalue %dx.types.ResRet.f32 %5591, 0
  %5593 = extractvalue %dx.types.ResRet.f32 %5591, 1
  %5594 = mul i32 %5556, 60
  %5595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5594, i32 undef)  ; BufferLoad(srv,index,wot)
  %5596 = extractvalue %dx.types.ResRet.f32 %5595, 0
  %5597 = extractvalue %dx.types.ResRet.f32 %5595, 1
  %5598 = extractvalue %dx.types.ResRet.f32 %5595, 2
  %5599 = add i32 %5594, 12
  %5600 = add i32 %5594, 48
  %5601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5600, i32 undef)  ; BufferLoad(srv,index,wot)
  %5602 = extractvalue %dx.types.ResRet.f32 %5601, 0
  %5603 = extractvalue %dx.types.ResRet.f32 %5601, 1
  %5604 = extractvalue %dx.types.ResRet.f32 %5601, 2
  %5605 = and i32 %5567, 32767
  %5606 = bitcast float %5562 to i32
  %5607 = icmp eq i32 %5606, -1
  %5608 = bitcast float %5563 to i32
  %5609 = and i32 %5567, 32768
  %5610 = icmp ne i32 %5609, 0
  %5611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5612 = extractvalue %dx.types.CBufRet.f32 %5611, 0
  %5613 = extractvalue %dx.types.CBufRet.f32 %5611, 1
  %5614 = extractvalue %dx.types.CBufRet.f32 %5611, 2
  %5615 = fsub fast float %5596, %5612
  %5616 = fsub fast float %5597, %5613
  %5617 = fsub fast float %5598, %5614
  %5618 = fsub fast float %206, %5615
  %5619 = fsub fast float %207, %5616
  %5620 = fsub fast float %208, %5617
  %5621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5599, i32 undef)  ; BufferLoad(srv,index,wot)
  %5622 = extractvalue %dx.types.ResRet.f32 %5621, 0
  %5623 = extractvalue %dx.types.ResRet.f32 %5621, 1
  %5624 = extractvalue %dx.types.ResRet.f32 %5621, 2
  %5625 = call float @dx.op.dot3.f32(i32 55, float %5618, float %5619, float %5620, float %5622, float %5623, float %5624)  ; Dot3(ax,ay,az,bx,by,bz)
  %5626 = add i32 %5594, 24
  %5627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5626, i32 undef)  ; BufferLoad(srv,index,wot)
  %5628 = extractvalue %dx.types.ResRet.f32 %5627, 0
  %5629 = extractvalue %dx.types.ResRet.f32 %5627, 1
  %5630 = extractvalue %dx.types.ResRet.f32 %5627, 2
  %5631 = call float @dx.op.dot3.f32(i32 55, float %5618, float %5619, float %5620, float %5628, float %5629, float %5630)  ; Dot3(ax,ay,az,bx,by,bz)
  %5632 = add i32 %5594, 36
  %5633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5632, i32 undef)  ; BufferLoad(srv,index,wot)
  %5634 = extractvalue %dx.types.ResRet.f32 %5633, 0
  %5635 = extractvalue %dx.types.ResRet.f32 %5633, 1
  %5636 = extractvalue %dx.types.ResRet.f32 %5633, 2
  %5637 = call float @dx.op.dot3.f32(i32 55, float %5618, float %5619, float %5620, float %5634, float %5635, float %5636)  ; Dot3(ax,ay,az,bx,by,bz)
  %5638 = call float @dx.op.unary.f32(i32 6, float %5625)  ; FAbs(value)
  %5639 = call float @dx.op.unary.f32(i32 6, float %5631)  ; FAbs(value)
  %5640 = call float @dx.op.unary.f32(i32 6, float %5637)  ; FAbs(value)
  %5641 = fsub fast float %5602, %5638
  %5642 = fsub fast float %5603, %5639
  %5643 = fsub fast float %5604, %5640
  %5644 = fmul fast float %5641, %5570
  %5645 = fmul fast float %5642, %5571
  %5646 = fmul fast float %5643, %5572
  %5647 = call float @dx.op.binary.f32(i32 36, float %5645, float %5646)  ; FMin(a,b)
  %5648 = call float @dx.op.binary.f32(i32 36, float %5644, float %5647)  ; FMin(a,b)
  %5649 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5650 = call float @dx.op.binary.f32(i32 36, float %5553, float %5649)  ; FMin(a,b)
  %5651 = uitofp i1 %5610 to float
  %5652 = fadd fast float %5468, 1.000000e+00
  %5653 = fsub fast float %5652, %5651
  %5654 = fmul fast float %5650, %5653
  %5655 = fcmp fast ogt float %5654, 0.000000e+00
  br i1 %5655, label %5662, label %5656

; <label>:5656                                    ; preds = %5804, %5549
  %5657 = phi float [ %5868, %5804 ], [ %5550, %5549 ]
  %5658 = phi float [ %5869, %5804 ], [ %5551, %5549 ]
  %5659 = phi float [ %5870, %5804 ], [ %5552, %5549 ]
  %5660 = phi float [ %5871, %5804 ], [ %5553, %5549 ]
  %5661 = icmp eq i32 %5554, %5558
  br i1 %5661, label %5872, label %5549

; <label>:5662                                    ; preds = %5549
  br i1 %5607, label %5720, label %5663

; <label>:5663                                    ; preds = %5662
  %5664 = fsub fast float -0.000000e+00, %5622
  %5665 = fsub fast float -0.000000e+00, %5623
  %5666 = fsub fast float -0.000000e+00, %5624
  %5667 = call float @dx.op.dot3.f32(i32 55, float %5502, float %5503, float %5504, float %5664, float %5665, float %5666)  ; Dot3(ax,ay,az,bx,by,bz)
  %5668 = fsub fast float -0.000000e+00, %5667
  %5669 = call float @dx.op.dot3.f32(i32 55, float %5618, float %5619, float %5620, float %5664, float %5665, float %5666)  ; Dot3(ax,ay,az,bx,by,bz)
  %5670 = fadd fast float %5669, %5585
  %5671 = fadd fast float %5584, %5669
  %5672 = fsub fast float -0.000000e+00, %5671
  %5673 = fcmp ogt float %5667, -0.000000e+00
  %5674 = select i1 %5673, float %5672, float %5670
  %5675 = call float @dx.op.unary.f32(i32 6, float %5668)  ; FAbs(value)
  %5676 = fdiv fast float 1.000000e+00, %5675
  %5677 = fmul fast float %5674, %5676
  %5678 = call float @dx.op.binary.f32(i32 35, float %5677, float 0.000000e+00)  ; FMax(a,b)
  %5679 = fsub fast float -0.000000e+00, %5628
  %5680 = fsub fast float -0.000000e+00, %5629
  %5681 = fsub fast float -0.000000e+00, %5630
  %5682 = call float @dx.op.dot3.f32(i32 55, float %5502, float %5503, float %5504, float %5679, float %5680, float %5681)  ; Dot3(ax,ay,az,bx,by,bz)
  %5683 = fsub fast float -0.000000e+00, %5682
  %5684 = call float @dx.op.dot3.f32(i32 55, float %5618, float %5619, float %5620, float %5679, float %5680, float %5681)  ; Dot3(ax,ay,az,bx,by,bz)
  %5685 = fadd fast float %5684, %5589
  %5686 = fadd fast float %5588, %5684
  %5687 = fsub fast float -0.000000e+00, %5686
  %5688 = fcmp ogt float %5682, -0.000000e+00
  %5689 = select i1 %5688, float %5687, float %5685
  %5690 = call float @dx.op.unary.f32(i32 6, float %5683)  ; FAbs(value)
  %5691 = fdiv fast float 1.000000e+00, %5690
  %5692 = fmul fast float %5689, %5691
  %5693 = call float @dx.op.binary.f32(i32 35, float %5692, float 0.000000e+00)  ; FMax(a,b)
  %5694 = fsub fast float -0.000000e+00, %5634
  %5695 = fsub fast float -0.000000e+00, %5635
  %5696 = fsub fast float -0.000000e+00, %5636
  %5697 = call float @dx.op.dot3.f32(i32 55, float %5502, float %5503, float %5504, float %5694, float %5695, float %5696)  ; Dot3(ax,ay,az,bx,by,bz)
  %5698 = fsub fast float -0.000000e+00, %5697
  %5699 = call float @dx.op.dot3.f32(i32 55, float %5618, float %5619, float %5620, float %5694, float %5695, float %5696)  ; Dot3(ax,ay,az,bx,by,bz)
  %5700 = fadd fast float %5699, %5593
  %5701 = fadd fast float %5592, %5699
  %5702 = fsub fast float -0.000000e+00, %5701
  %5703 = fcmp ogt float %5697, -0.000000e+00
  %5704 = select i1 %5703, float %5702, float %5700
  %5705 = call float @dx.op.unary.f32(i32 6, float %5698)  ; FAbs(value)
  %5706 = fdiv fast float 1.000000e+00, %5705
  %5707 = fmul fast float %5704, %5706
  %5708 = call float @dx.op.binary.f32(i32 35, float %5707, float 0.000000e+00)  ; FMax(a,b)
  %5709 = call float @dx.op.binary.f32(i32 36, float %5693, float %5708)  ; FMin(a,b)
  %5710 = call float @dx.op.binary.f32(i32 36, float %5678, float %5709)  ; FMin(a,b)
  %5711 = fmul fast float %5710, %5502
  %5712 = fmul fast float %5710, %5503
  %5713 = fmul fast float %5710, %5504
  %5714 = fadd fast float %5711, %206
  %5715 = fadd fast float %5712, %207
  %5716 = fadd fast float %5713, %208
  %5717 = fsub fast float %5714, %5562
  %5718 = fsub fast float %5715, %5563
  %5719 = fsub fast float %5716, %5564
  br label %5727

; <label>:5720                                    ; preds = %5662
  %5721 = fmul fast float %5502, 8.096000e+03
  %5722 = fmul fast float %5503, 8.096000e+03
  %5723 = fmul fast float %5504, 8.096000e+03
  %5724 = fadd fast float %5721, %206
  %5725 = fadd fast float %5722, %207
  %5726 = fadd fast float %5723, %208
  br label %5727

; <label>:5727                                    ; preds = %5720, %5663
  %5728 = phi float [ %5502, %5720 ], [ %5717, %5663 ]
  %5729 = phi float [ %5503, %5720 ], [ %5718, %5663 ]
  %5730 = phi float [ %5504, %5720 ], [ %5719, %5663 ]
  %5731 = phi float [ %5724, %5720 ], [ %5714, %5663 ]
  %5732 = phi float [ %5725, %5720 ], [ %5715, %5663 ]
  %5733 = phi float [ %5726, %5720 ], [ %5716, %5663 ]
  %5734 = fcmp fast olt float %5581, 1.000000e+00
  br i1 %5734, label %5735, label %5766, !dx.controlflow.hints !104

; <label>:5735                                    ; preds = %5727
  %5736 = fmul fast float %5730, %5579
  %5737 = fmul fast float %5729, %5580
  %5738 = fsub fast float %5736, %5737
  %5739 = fmul fast float %5728, %5580
  %5740 = fmul fast float %5730, %5578
  %5741 = fsub fast float %5739, %5740
  %5742 = fmul fast float %5729, %5578
  %5743 = fmul fast float %5728, %5579
  %5744 = fsub fast float %5742, %5743
  %5745 = fmul fast float %5738, 2.000000e+00
  %5746 = fmul fast float %5741, 2.000000e+00
  %5747 = fmul fast float %5744, 2.000000e+00
  %5748 = fmul fast float %5745, %5581
  %5749 = fmul fast float %5746, %5581
  %5750 = fmul fast float %5747, %5581
  %5751 = fmul fast float %5747, %5579
  %5752 = fmul fast float %5746, %5580
  %5753 = fmul fast float %5745, %5580
  %5754 = fmul fast float %5747, %5578
  %5755 = fmul fast float %5746, %5578
  %5756 = fmul fast float %5745, %5579
  %5757 = fadd fast float %5751, %5728
  %5758 = fadd fast float %5757, %5748
  %5759 = fsub fast float %5758, %5752
  %5760 = fsub fast float %5729, %5754
  %5761 = fadd fast float %5760, %5749
  %5762 = fadd fast float %5761, %5753
  %5763 = fadd fast float %5750, %5730
  %5764 = fsub fast float %5763, %5756
  %5765 = fadd fast float %5764, %5755
  br label %5766

; <label>:5766                                    ; preds = %5735, %5727
  %5767 = phi float [ %5759, %5735 ], [ %5728, %5727 ]
  %5768 = phi float [ %5762, %5735 ], [ %5729, %5727 ]
  %5769 = phi float [ %5765, %5735 ], [ %5730, %5727 ]
  br i1 %5607, label %5801, label %5770

; <label>:5770                                    ; preds = %5766
  %5771 = fmul fast float %5106, 0x400187C840000000
  %5772 = fadd fast float %5771, 0xC00EFC2120000000
  %5773 = fmul fast float %5772, %5106
  %5774 = fadd fast float %5773, 0x3FE5D16340000000
  %5775 = fmul fast float %5774, %5106
  %5776 = fadd fast float %5775, 1.000000e+00
  %5777 = call float @dx.op.unary.f32(i32 7, float %5776)  ; Saturate(value)
  %5778 = fsub fast float %5731, %206
  %5779 = fsub fast float %5732, %207
  %5780 = fsub fast float %5733, %208
  %5781 = fsub fast float %5731, %5562
  %5782 = fsub fast float %5732, %5563
  %5783 = fsub fast float %5733, %5564
  %5784 = call float @dx.op.dot3.f32(i32 55, float %5778, float %5779, float %5780, float %5778, float %5779, float %5780)  ; Dot3(ax,ay,az,bx,by,bz)
  %5785 = call float @dx.op.dot3.f32(i32 55, float %5781, float %5782, float %5783, float %5781, float %5782, float %5783)  ; Dot3(ax,ay,az,bx,by,bz)
  %5786 = fadd fast float %5785, 0x3EE4F8B580000000
  %5787 = fdiv fast float %5784, %5786
  %5788 = bitcast float %5787 to i32
  %5789 = ashr i32 %5788, 1
  %5790 = add nsw i32 %5789, 532487669
  %5791 = bitcast i32 %5790 to float
  %5792 = fmul fast float %5791, %5777
  %5793 = call float @dx.op.unary.f32(i32 7, float %5792)  ; Saturate(value)
  %5794 = fmul fast float %5793, 0x4009981AE0000000
  %5795 = fsub fast float 0x40111BBD80000000, %5794
  %5796 = fmul fast float %5795, %5793
  %5797 = fadd fast float %5796, 0xC0009F6020000000
  %5798 = fmul fast float %5797, %5793
  %5799 = fadd fast float %5798, 1.000000e+00
  %5800 = call float @dx.op.unary.f32(i32 7, float %5799)  ; Saturate(value)
  br label %5804

; <label>:5801                                    ; preds = %5766
  %5802 = icmp ne i32 %5608, -1
  %5803 = zext i1 %5802 to i32
  br label %5804

; <label>:5804                                    ; preds = %5801, %5770
  %5805 = phi float [ %5106, %5801 ], [ %5800, %5770 ]
  %5806 = phi i32 [ %5803, %5801 ], [ 0, %5770 ]
  %5807 = fmul float %5805, 5.000000e+00
  %5808 = fsub float 5.000000e+00, %5807
  %5809 = icmp ne i32 %5806, 0
  %5810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5811 = extractvalue %dx.types.CBufRet.f32 %5810, 3
  %5812 = fadd fast float %5811, %5808
  %5813 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5812)  ; FMax(a,b)
  %5814 = call float @dx.op.unary.f32(i32 6, float %5767)  ; FAbs(value)
  %5815 = call float @dx.op.unary.f32(i32 6, float %5768)  ; FAbs(value)
  %5816 = fadd fast float %5815, %5814
  %5817 = call float @dx.op.unary.f32(i32 6, float %5769)  ; FAbs(value)
  %5818 = fadd fast float %5816, %5817
  %5819 = fcmp fast oeq float %5818, 0.000000e+00
  %5820 = fdiv fast float 1.000000e+00, %5818
  %5821 = select i1 %5819, float 1.000000e+00, float %5820
  %5822 = fmul fast float %5821, %5767
  %5823 = fmul fast float %5821, %5768
  %5824 = call float @dx.op.unary.f32(i32 6, float %5823)  ; FAbs(value)
  %5825 = call float @dx.op.unary.f32(i32 6, float %5822)  ; FAbs(value)
  %5826 = fsub fast float 1.000000e+00, %5824
  %5827 = fsub fast float 1.000000e+00, %5825
  %5828 = fcmp fast oge float %5822, 0.000000e+00
  %5829 = fcmp fast oge float %5823, 0.000000e+00
  %5830 = select i1 %5828, float 1.000000e+00, float -1.000000e+00
  %5831 = select i1 %5829, float 1.000000e+00, float -1.000000e+00
  %5832 = fcmp fast ole float %5769, 0.000000e+00
  %5833 = fmul fast float %5830, %5826
  %5834 = fmul fast float %5831, %5827
  %5835 = select i1 %5832, float %5833, float %5822
  %5836 = select i1 %5832, float %5834, float %5823
  %5837 = fmul fast float %5835, 5.000000e-01
  %5838 = fmul fast float %5836, 5.000000e-01
  %5839 = fadd fast float %5837, 5.000000e-01
  %5840 = fadd fast float %5838, 5.000000e-01
  %5841 = uitofp i32 %5605 to float
  %5842 = call float @dx.op.binary.f32(i32 36, float %5813, float 3.000000e+00)  ; FMin(a,b)
  %5843 = fadd fast float %5842, 2.000000e+00
  %5844 = call float @dx.op.unary.f32(i32 21, float %5843)  ; Exp(value)
  %5845 = extractvalue %dx.types.CBufRet.f32 %5810, 1
  %5846 = fmul fast float %5845, %5844
  %5847 = fmul fast float %5846, 2.000000e+00
  %5848 = fsub fast float 1.000000e+00, %5847
  %5849 = fmul fast float %5839, %5848
  %5850 = fmul fast float %5840, %5848
  %5851 = fadd fast float %5849, %5846
  %5852 = fadd fast float %5850, %5846
  %5853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %53, float %5851, float %5852, float %5841, float undef, i32 0, i32 0, i32 undef, float %5813)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5854 = extractvalue %dx.types.ResRet.f32 %5853, 0
  %5855 = extractvalue %dx.types.ResRet.f32 %5853, 1
  %5856 = extractvalue %dx.types.ResRet.f32 %5853, 2
  %5857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5858 = extractvalue %dx.types.CBufRet.f32 %5857, 3
  %5859 = fmul fast float %5858, %5575
  %5860 = call float @dx.op.binary.f32(i32 36, float %5137, float %5859)  ; FMin(a,b)
  %5861 = select i1 %5809, float %5860, float %5859
  %5862 = fmul fast float %5854, %5654
  %5863 = fmul fast float %5862, %5861
  %5864 = fmul fast float %5855, %5654
  %5865 = fmul fast float %5864, %5861
  %5866 = fmul fast float %5856, %5654
  %5867 = fmul fast float %5866, %5861
  %5868 = fadd fast float %5863, %5550
  %5869 = fadd fast float %5865, %5551
  %5870 = fadd fast float %5867, %5552
  %5871 = fsub fast float %5553, %5654
  br label %5656

; <label>:5872                                    ; preds = %5656
  br label %5873

; <label>:5873                                    ; preds = %5872, %5519
  %5874 = phi float [ %5520, %5519 ], [ %5657, %5872 ]
  %5875 = phi float [ %5521, %5519 ], [ %5658, %5872 ]
  %5876 = phi float [ %5522, %5519 ], [ %5659, %5872 ]
  %5877 = phi float [ %5523, %5519 ], [ %5660, %5872 ]
  %5878 = add i32 %5524, 1
  %5879 = icmp ugt i32 %5878, %5516
  br i1 %5879, label %5880, label %5519, !llvm.loop !105

; <label>:5880                                    ; preds = %5873
  br label %5881

; <label>:5881                                    ; preds = %5880, %5501
  %5882 = phi float [ 0.000000e+00, %5501 ], [ %5874, %5880 ]
  %5883 = phi float [ 0.000000e+00, %5501 ], [ %5875, %5880 ]
  %5884 = phi float [ 0.000000e+00, %5501 ], [ %5876, %5880 ]
  %5885 = call float @dx.op.dot3.f32(i32 55, float %5882, float %5883, float %5884, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5886 = select i1 %278, float 0.000000e+00, float %5882
  %5887 = select i1 %278, float %5885, float %5883
  %5888 = select i1 %278, float 0.000000e+00, float %5884
  %5889 = fcmp fast olt float %5427, 0.000000e+00
  %5890 = call float @dx.op.unary.f32(i32 6, float %5427)  ; FAbs(value)
  %5891 = fmul fast float %5890, %5367
  %5892 = fmul fast float %5890, %5368
  %5893 = fmul fast float %5890, %5369
  %5894 = select i1 %5889, float %5367, float %5891
  %5895 = select i1 %5889, float %5368, float %5892
  %5896 = select i1 %5889, float %5369, float %5893
  %5897 = fsub fast float 1.000000e+00, %5890
  %5898 = call float @dx.op.unary.f32(i32 7, float %5897)  ; Saturate(value)
  %5899 = fmul fast float %5898, %5886
  %5900 = fmul fast float %5898, %5887
  %5901 = fmul fast float %5898, %5888
  %5902 = fadd fast float %5894, %5899
  %5903 = fadd fast float %5895, %5900
  %5904 = fadd fast float %5896, %5901
  br label %5905

; <label>:5905                                    ; preds = %5881, %5410
  %5906 = phi float [ %5367, %5410 ], [ %5902, %5881 ]
  %5907 = phi float [ %5368, %5410 ], [ %5903, %5881 ]
  %5908 = phi float [ %5369, %5410 ], [ %5904, %5881 ]
  %5909 = fmul fast float %5416, %5363
  %5910 = fmul fast float %5416, %5364
  %5911 = fmul fast float %5416, %5365
  %5912 = call float @dx.op.dot3.f32(i32 55, float %5097, float %5098, float %5099, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5913 = fcmp fast ogt float %5912, 0x3E7FF19E20000000
  %5914 = fdiv fast float 1.000000e+00, %5912
  %5915 = select i1 %5913, float %5914, float 0.000000e+00
  %5916 = fmul fast float %5915, %5097
  %5917 = fmul fast float %5915, %5098
  %5918 = fmul fast float %5915, %5099
  %5919 = fadd fast float %5916, -1.000000e+00
  %5920 = fadd fast float %5917, -1.000000e+00
  %5921 = fadd fast float %5918, -1.000000e+00
  %5922 = fmul fast float %5919, 5.000000e-01
  %5923 = fmul fast float %5920, 5.000000e-01
  %5924 = fmul fast float %5921, 5.000000e-01
  %5925 = fadd fast float %5922, 1.000000e+00
  %5926 = fadd fast float %5923, 1.000000e+00
  %5927 = fadd fast float %5924, 1.000000e+00
  %5928 = fmul fast float %5906, %5411
  %5929 = fmul fast float %5907, %5412
  %5930 = fmul fast float %5908, %5413
  %5931 = fsub fast float 1.000000e+00, %5111
  %5932 = bitcast float %5931 to i32
  %5933 = sitofp i32 %5932 to float
  %5934 = fmul fast float %5933, 5.000000e+00
  %5935 = fadd fast float %5934, 0xC1EFBF8940000000
  %5936 = fptosi float %5935 to i32
  %5937 = bitcast i32 %5936 to float
  %5938 = fmul fast float %5937, %3903
  %5939 = fmul fast float %5363, %5938
  %5940 = fmul fast float %5939, %5416
  %5941 = fmul fast float %5940, %5925
  %5942 = fmul fast float %5364, %5938
  %5943 = fmul fast float %5942, %5416
  %5944 = fmul fast float %5943, %5926
  %5945 = fmul fast float %5365, %5938
  %5946 = fmul fast float %5945, %5416
  %5947 = fmul fast float %5946, %5927
  %5948 = fmul fast float %5909, %3899
  %5949 = fmul fast float %5910, %3899
  %5950 = fmul fast float %5911, %3899
  %5951 = fadd fast float %5928, %3895
  %5952 = fadd fast float %5951, %5941
  %5953 = fmul fast float %5952, %3899
  %5954 = fadd fast float %5929, %3896
  %5955 = fadd fast float %5954, %5944
  %5956 = fmul fast float %5955, %3899
  %5957 = fadd fast float %5930, %3897
  %5958 = fadd fast float %5957, %5947
  %5959 = fmul fast float %5958, %3899
  %5960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5960, 3
  %5962 = fcmp fast oeq float %5961, 0.000000e+00
  br i1 %5962, label %7667, label %5963

; <label>:5963                                    ; preds = %5905
  %5964 = extractvalue %dx.types.CBufRet.f32 %5960, 0
  %5965 = extractvalue %dx.types.CBufRet.f32 %5960, 1
  %5966 = extractvalue %dx.types.CBufRet.f32 %5960, 2
  %5967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5968 = extractvalue %dx.types.CBufRet.f32 %5967, 0
  %5969 = extractvalue %dx.types.CBufRet.f32 %5967, 1
  %5970 = extractvalue %dx.types.CBufRet.f32 %5967, 2
  %5971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5972 = extractvalue %dx.types.CBufRet.f32 %5971, 0
  %5973 = extractvalue %dx.types.CBufRet.f32 %5971, 1
  %5974 = call float @dx.op.dot3.f32(i32 55, float %5968, float %5969, float %5970, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5975 = select i1 %278, float %5972, float %5968
  %5976 = select i1 %278, float %5974, float %5969
  %5977 = select i1 %278, float %5973, float %5970
  %5978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.f32 %5978, 2
  %5980 = fmul fast float %5979, %132
  %5981 = fmul fast float %5979, %134
  %5982 = fmul fast float %5979, %136
  %5983 = fadd fast float %5980, %206
  %5984 = fadd fast float %5981, %207
  %5985 = fadd fast float %5982, %208
  %5986 = fcmp fast olt float %5961, 0.000000e+00
  br i1 %5986, label %7244, label %5987

; <label>:5987                                    ; preds = %5963
  %5988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5989 = extractvalue %dx.types.CBufRet.f32 %5988, 0
  %5990 = extractvalue %dx.types.CBufRet.f32 %5988, 1
  %5991 = extractvalue %dx.types.CBufRet.f32 %5988, 2
  %5992 = extractvalue %dx.types.CBufRet.f32 %5988, 3
  %5993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5994 = extractvalue %dx.types.CBufRet.f32 %5993, 0
  %5995 = extractvalue %dx.types.CBufRet.f32 %5993, 1
  %5996 = extractvalue %dx.types.CBufRet.f32 %5993, 2
  %5997 = extractvalue %dx.types.CBufRet.f32 %5993, 3
  %5998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5999 = extractvalue %dx.types.CBufRet.f32 %5998, 0
  %6000 = extractvalue %dx.types.CBufRet.f32 %5998, 1
  %6001 = extractvalue %dx.types.CBufRet.f32 %5998, 2
  %6002 = extractvalue %dx.types.CBufRet.f32 %5998, 3
  %6003 = fmul fast float %5989, %5983
  %6004 = call float @dx.op.tertiary.f32(i32 46, float %5984, float %5990, float %6003)  ; FMad(a,b,c)
  %6005 = call float @dx.op.tertiary.f32(i32 46, float %5985, float %5991, float %6004)  ; FMad(a,b,c)
  %6006 = fadd fast float %6005, %5992
  %6007 = fmul fast float %5994, %5983
  %6008 = call float @dx.op.tertiary.f32(i32 46, float %5984, float %5995, float %6007)  ; FMad(a,b,c)
  %6009 = call float @dx.op.tertiary.f32(i32 46, float %5985, float %5996, float %6008)  ; FMad(a,b,c)
  %6010 = fadd fast float %6009, %5997
  %6011 = fmul fast float %5999, %5983
  %6012 = call float @dx.op.tertiary.f32(i32 46, float %5984, float %6000, float %6011)  ; FMad(a,b,c)
  %6013 = call float @dx.op.tertiary.f32(i32 46, float %5985, float %6001, float %6012)  ; FMad(a,b,c)
  %6014 = fadd fast float %6013, %6002
  %6015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6016 = extractvalue %dx.types.CBufRet.f32 %6015, 0
  %6017 = fcmp fast une float %6016, 0.000000e+00
  %6018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6019 = extractvalue %dx.types.CBufRet.f32 %6018, 0
  %6020 = extractvalue %dx.types.CBufRet.f32 %6018, 1
  %6021 = extractvalue %dx.types.CBufRet.f32 %6018, 3
  %6022 = fmul fast float %6021, %6006
  %6023 = fmul fast float %6021, %6010
  %6024 = fadd fast float %6022, %6019
  %6025 = fadd fast float %6023, %6020
  %6026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6027 = extractvalue %dx.types.CBufRet.f32 %6026, 0
  %6028 = extractvalue %dx.types.CBufRet.f32 %6026, 1
  %6029 = extractvalue %dx.types.CBufRet.f32 %6026, 3
  %6030 = fmul fast float %6029, %6006
  %6031 = fmul fast float %6029, %6010
  %6032 = fadd fast float %6030, %6027
  %6033 = fadd fast float %6031, %6028
  %6034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6035 = extractvalue %dx.types.CBufRet.f32 %6034, 1
  %6036 = fsub fast float %6035, %6014
  %6037 = extractvalue %dx.types.CBufRet.f32 %6034, 2
  %6038 = fmul fast float %6036, %6037
  %6039 = fsub fast float 1.000000e+00, %6038
  %6040 = call float @dx.op.unary.f32(i32 7, float %6039)  ; Saturate(value)
  br i1 %6017, label %6101, label %6041

; <label>:6041                                    ; preds = %5987
  %6042 = extractvalue %dx.types.CBufRet.f32 %6026, 2
  %6043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6044 = extractvalue %dx.types.CBufRet.f32 %6043, 2
  %6045 = fadd fast float %6044, %6042
  %6046 = fcmp fast ogt float %6045, 0.000000e+00
  br i1 %6046, label %6047, label %6071

; <label>:6047                                    ; preds = %6041
  %6048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6049 = extractvalue %dx.types.CBufRet.f32 %6048, 0
  %6050 = extractvalue %dx.types.CBufRet.f32 %6048, 1
  %6051 = fsub fast float %6032, %6049
  %6052 = fsub fast float %6033, %6050
  %6053 = fcmp fast olt float %6051, 0.000000e+00
  %6054 = fcmp fast olt float %6052, 0.000000e+00
  %6055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6056 = extractvalue %dx.types.CBufRet.f32 %6055, 0
  %6057 = extractvalue %dx.types.CBufRet.f32 %6055, 1
  %6058 = extractvalue %dx.types.CBufRet.f32 %6055, 2
  %6059 = extractvalue %dx.types.CBufRet.f32 %6055, 3
  %6060 = select i1 %6053, float %6056, float %6058
  %6061 = select i1 %6054, float %6057, float %6059
  %6062 = fmul fast float %6060, %6051
  %6063 = fmul fast float %6061, %6052
  %6064 = call float @dx.op.unary.f32(i32 6, float %6062)  ; FAbs(value)
  %6065 = call float @dx.op.unary.f32(i32 6, float %6063)  ; FAbs(value)
  %6066 = extractvalue %dx.types.CBufRet.f32 %5978, 0
  %6067 = call float @dx.op.binary.f32(i32 35, float %6064, float %6065)  ; FMax(a,b)
  %6068 = fsub fast float %6066, %6067
  %6069 = call float @dx.op.unary.f32(i32 7, float %6068)  ; Saturate(value)
  %6070 = fmul fast float %6069, %6040
  br label %6071

; <label>:6071                                    ; preds = %6047, %6041
  %6072 = phi float [ %6070, %6047 ], [ 0.000000e+00, %6041 ]
  %6073 = extractvalue %dx.types.CBufRet.f32 %6018, 2
  %6074 = extractvalue %dx.types.CBufRet.f32 %6043, 1
  %6075 = fadd fast float %6074, %6073
  %6076 = fcmp fast ogt float %6075, 0.000000e+00
  br i1 %6076, label %6077, label %6101

; <label>:6077                                    ; preds = %6071
  %6078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6079 = extractvalue %dx.types.CBufRet.f32 %6078, 0
  %6080 = extractvalue %dx.types.CBufRet.f32 %6078, 1
  %6081 = fsub fast float %6024, %6079
  %6082 = fsub fast float %6025, %6080
  %6083 = fcmp fast olt float %6081, 0.000000e+00
  %6084 = fcmp fast olt float %6082, 0.000000e+00
  %6085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6086 = extractvalue %dx.types.CBufRet.f32 %6085, 0
  %6087 = extractvalue %dx.types.CBufRet.f32 %6085, 1
  %6088 = extractvalue %dx.types.CBufRet.f32 %6085, 2
  %6089 = extractvalue %dx.types.CBufRet.f32 %6085, 3
  %6090 = select i1 %6083, float %6086, float %6088
  %6091 = select i1 %6084, float %6087, float %6089
  %6092 = fmul fast float %6090, %6081
  %6093 = fmul fast float %6091, %6082
  %6094 = call float @dx.op.unary.f32(i32 6, float %6092)  ; FAbs(value)
  %6095 = call float @dx.op.unary.f32(i32 6, float %6093)  ; FAbs(value)
  %6096 = extractvalue %dx.types.CBufRet.f32 %5978, 0
  %6097 = call float @dx.op.binary.f32(i32 35, float %6094, float %6095)  ; FMax(a,b)
  %6098 = fsub fast float %6096, %6097
  %6099 = call float @dx.op.unary.f32(i32 7, float %6098)  ; Saturate(value)
  %6100 = fmul fast float %6099, %6040
  br label %6101

; <label>:6101                                    ; preds = %6077, %6071, %5987
  %6102 = phi float [ 0.000000e+00, %5987 ], [ %6100, %6077 ], [ 0.000000e+00, %6071 ]
  %6103 = phi float [ 0.000000e+00, %5987 ], [ %6072, %6077 ], [ %6072, %6071 ]
  %6104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6105 = extractvalue %dx.types.CBufRet.f32 %6104, 1
  %6106 = call float @dx.op.unary.f32(i32 7, float %6105)  ; Saturate(value)
  %6107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6108 = extractvalue %dx.types.CBufRet.f32 %6107, 0
  %6109 = extractvalue %dx.types.CBufRet.f32 %6107, 1
  %6110 = fsub fast float %6006, %6108
  %6111 = fsub fast float %6010, %6109
  %6112 = fcmp fast olt float %6110, 0.000000e+00
  %6113 = fcmp fast olt float %6111, 0.000000e+00
  %6114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6115 = extractvalue %dx.types.CBufRet.f32 %6114, 0
  %6116 = extractvalue %dx.types.CBufRet.f32 %6114, 1
  %6117 = extractvalue %dx.types.CBufRet.f32 %6114, 2
  %6118 = extractvalue %dx.types.CBufRet.f32 %6114, 3
  %6119 = select i1 %6112, float %6115, float %6117
  %6120 = select i1 %6113, float %6116, float %6118
  %6121 = fmul fast float %6119, %6110
  %6122 = fmul fast float %6120, %6111
  %6123 = call float @dx.op.unary.f32(i32 6, float %6121)  ; FAbs(value)
  %6124 = call float @dx.op.unary.f32(i32 6, float %6122)  ; FAbs(value)
  %6125 = extractvalue %dx.types.CBufRet.f32 %5978, 0
  %6126 = call float @dx.op.binary.f32(i32 35, float %6123, float %6124)  ; FMax(a,b)
  %6127 = fsub fast float %6125, %6126
  %6128 = call float @dx.op.unary.f32(i32 7, float %6127)  ; Saturate(value)
  %6129 = call float @dx.op.binary.f32(i32 36, float %6128, float %6106)  ; FMin(a,b)
  %6130 = fmul fast float %6129, %6040
  %6131 = fsub fast float %6102, %6130
  %6132 = fsub fast float %6103, %6102
  %6133 = fsub fast float %6132, %6130
  %6134 = call float @dx.op.binary.f32(i32 35, float %6102, float %6103)  ; FMax(a,b)
  %6135 = call float @dx.op.binary.f32(i32 35, float %6130, float %6134)  ; FMax(a,b)
  %6136 = fcmp fast olt float %6135, 1.000000e+00
  br i1 %6136, label %6137, label %6535, !dx.controlflow.hints !107

; <label>:6137                                    ; preds = %6101
  %6138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6139 = extractvalue %dx.types.CBufRet.f32 %6138, 0
  %6140 = fcmp fast une float %6139, 0.000000e+00
  br i1 %6140, label %6141, label %6535, !dx.controlflow.hints !108

; <label>:6141                                    ; preds = %6137
  %6142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6143 = extractvalue %dx.types.CBufRet.f32 %6142, 0
  %6144 = extractvalue %dx.types.CBufRet.f32 %6142, 1
  %6145 = extractvalue %dx.types.CBufRet.f32 %6142, 2
  %6146 = extractvalue %dx.types.CBufRet.f32 %6142, 3
  %6147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6148 = extractvalue %dx.types.CBufRet.f32 %6147, 0
  %6149 = extractvalue %dx.types.CBufRet.f32 %6147, 1
  %6150 = extractvalue %dx.types.CBufRet.f32 %6147, 2
  %6151 = extractvalue %dx.types.CBufRet.f32 %6147, 3
  %6152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6153 = extractvalue %dx.types.CBufRet.f32 %6152, 0
  %6154 = extractvalue %dx.types.CBufRet.f32 %6152, 1
  %6155 = extractvalue %dx.types.CBufRet.f32 %6152, 2
  %6156 = extractvalue %dx.types.CBufRet.f32 %6152, 3
  %6157 = fmul fast float %6143, %5983
  %6158 = call float @dx.op.tertiary.f32(i32 46, float %5984, float %6144, float %6157)  ; FMad(a,b,c)
  %6159 = call float @dx.op.tertiary.f32(i32 46, float %5985, float %6145, float %6158)  ; FMad(a,b,c)
  %6160 = fadd fast float %6159, %6146
  %6161 = fmul fast float %6148, %5983
  %6162 = call float @dx.op.tertiary.f32(i32 46, float %5984, float %6149, float %6161)  ; FMad(a,b,c)
  %6163 = call float @dx.op.tertiary.f32(i32 46, float %5985, float %6150, float %6162)  ; FMad(a,b,c)
  %6164 = fadd fast float %6163, %6151
  %6165 = fmul fast float %6153, %5983
  %6166 = call float @dx.op.tertiary.f32(i32 46, float %5984, float %6154, float %6165)  ; FMad(a,b,c)
  %6167 = call float @dx.op.tertiary.f32(i32 46, float %5985, float %6155, float %6166)  ; FMad(a,b,c)
  %6168 = fadd fast float %6167, %6156
  %6169 = fcmp fast oge float %6160, 1.000000e+00
  %6170 = fcmp fast oge float %6164, 1.000000e+00
  %6171 = or i1 %6169, %6170
  %6172 = fcmp fast olt float %6160, 0.000000e+00
  %6173 = fcmp fast olt float %6164, 0.000000e+00
  %6174 = or i1 %6172, %6173
  %6175 = or i1 %6171, %6174
  br i1 %6175, label %6535, label %6176, !dx.controlflow.hints !109

; <label>:6176                                    ; preds = %6141
  %6177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6178 = extractvalue %dx.types.CBufRet.f32 %6177, 0
  %6179 = extractvalue %dx.types.CBufRet.f32 %6177, 1
  %6180 = extractvalue %dx.types.CBufRet.f32 %6177, 2
  %6181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6182 = extractvalue %dx.types.CBufRet.i32 %6181, 2
  %6183 = uitofp i32 %6182 to float
  %6184 = extractvalue %dx.types.CBufRet.i32 %6181, 3
  %6185 = uitofp i32 %6184 to float
  %6186 = extractvalue %dx.types.CBufRet.f32 %6177, 3
  %6187 = fmul fast float %6186, 2.000000e+00
  %6188 = fsub fast float %6160, %6178
  %6189 = fsub fast float %6164, %6179
  %6190 = fmul fast float %6187, %6188
  %6191 = fmul fast float %6187, %6189
  %6192 = fdiv fast float 1.000000e+00, %5966
  %6193 = fmul fast float %6191, %6192
  %6194 = call float @dx.op.unary.f32(i32 6, float %6193)  ; FAbs(value)
  %6195 = fmul fast float %6180, %5985
  %6196 = fmul fast float %6195, %6187
  %6197 = call float @dx.op.unary.f32(i32 6, float %6196)  ; FAbs(value)
  %6198 = call float @dx.op.unary.f32(i32 6, float %6190)  ; FAbs(value)
  %6199 = call float @dx.op.binary.f32(i32 35, float %6197, float %6194)  ; FMax(a,b)
  %6200 = call float @dx.op.binary.f32(i32 35, float %6198, float %6199)  ; FMax(a,b)
  %6201 = fmul fast float %6200, 2.000000e+00
  %6202 = call float @dx.op.unary.f32(i32 23, float %6201)  ; Log(value)
  %6203 = call float @dx.op.binary.f32(i32 35, float %6202, float %6183)  ; FMax(a,b)
  %6204 = call float @dx.op.unary.f32(i32 22, float %6203)  ; Frc(value)
  %6205 = fadd fast float %6204, 0xBFEA666660000000
  %6206 = fmul fast float %6205, 8.000000e+00
  %6207 = call float @dx.op.unary.f32(i32 7, float %6206)  ; Saturate(value)
  %6208 = call float @dx.op.unary.f32(i32 27, float %6203)  ; Round_ni(value)
  %6209 = fadd fast float %6208, %6207
  %6210 = call float @dx.op.binary.f32(i32 36, float %6209, float %6185)  ; FMin(a,b)
  %6211 = call float @dx.op.unary.f32(i32 27, float %6210)  ; Round_ni(value)
  %6212 = fsub fast float -0.000000e+00, %6211
  %6213 = call float @dx.op.unary.f32(i32 21, float %6212)  ; Exp(value)
  %6214 = fmul fast float %6213, %6187
  %6215 = fmul fast float %6214, %6160
  %6216 = fmul fast float %6214, %6164
  %6217 = fmul fast float %6215, 2.500000e-01
  %6218 = fmul fast float %6216, 2.500000e-01
  %6219 = fadd fast float %6217, 5.000000e-01
  %6220 = fadd fast float %6218, 5.000000e-01
  %6221 = fsub fast float %6185, %6183
  %6222 = fptoui float %6221 to i32
  %6223 = add i32 %6222, 320
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %6223)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 0
  %6226 = extractvalue %dx.types.CBufRet.f32 %6224, 1
  %6227 = fcmp fast une float %6210, %6185
  %6228 = fsub fast float %6160, %6225
  %6229 = fsub fast float %6164, %6226
  %6230 = call float @dx.op.unary.f32(i32 6, float %6228)  ; FAbs(value)
  %6231 = call float @dx.op.unary.f32(i32 6, float %6229)  ; FAbs(value)
  %6232 = fmul fast float %6230, %6214
  %6233 = fmul fast float %6231, %6214
  %6234 = fcmp fast olt float %6232, 1.000000e+00
  %6235 = fcmp fast olt float %6233, 1.000000e+00
  %6236 = and i1 %6234, %6235
  %6237 = or i1 %6227, %6236
  br i1 %6237, label %6238, label %6535, !dx.controlflow.hints !110

; <label>:6238                                    ; preds = %6176
  %6239 = fmul fast float %6216, 5.000000e-01
  %6240 = fmul fast float %6215, 5.000000e-01
  %6241 = fadd fast float %6239, 5.000000e-01
  %6242 = fadd fast float %6240, 5.000000e-01
  %6243 = sitofp i32 %6182 to float
  %6244 = fsub fast float %6210, %6243
  %6245 = call float @dx.op.unary.f32(i32 27, float %6244)  ; Round_ni(value)
  %6246 = call float @dx.op.unary.f32(i32 22, float %6210)  ; Frc(value)
  %6247 = call float @dx.op.unary.f32(i32 22, float %6242)  ; Frc(value)
  %6248 = call float @dx.op.unary.f32(i32 22, float %6241)  ; Frc(value)
  %6249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6247, float %6248, float %6245, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6250 = extractvalue %dx.types.ResRet.f32 %6249, 0
  %6251 = extractvalue %dx.types.ResRet.f32 %6249, 1
  %6252 = extractvalue %dx.types.ResRet.f32 %6249, 2
  %6253 = extractvalue %dx.types.ResRet.f32 %6249, 3
  %6254 = fcmp fast ogt float %6246, 0.000000e+00
  br i1 %6254, label %6255, label %6276, !dx.controlflow.hints !111

; <label>:6255                                    ; preds = %6238
  %6256 = fadd fast float %6245, 1.000000e+00
  %6257 = call float @dx.op.unary.f32(i32 22, float %6219)  ; Frc(value)
  %6258 = call float @dx.op.unary.f32(i32 22, float %6220)  ; Frc(value)
  %6259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6257, float %6258, float %6256, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6260 = extractvalue %dx.types.ResRet.f32 %6259, 0
  %6261 = extractvalue %dx.types.ResRet.f32 %6259, 1
  %6262 = extractvalue %dx.types.ResRet.f32 %6259, 2
  %6263 = extractvalue %dx.types.ResRet.f32 %6259, 3
  %6264 = fsub fast float %6260, %6250
  %6265 = fsub fast float %6261, %6251
  %6266 = fsub fast float %6262, %6252
  %6267 = fsub fast float %6263, %6253
  %6268 = fmul fast float %6264, %6246
  %6269 = fmul fast float %6265, %6246
  %6270 = fmul fast float %6266, %6246
  %6271 = fmul fast float %6267, %6246
  %6272 = fadd fast float %6268, %6250
  %6273 = fadd fast float %6269, %6251
  %6274 = fadd fast float %6270, %6252
  %6275 = fadd fast float %6271, %6253
  br label %6276

; <label>:6276                                    ; preds = %6255, %6238
  %6277 = phi float [ %6272, %6255 ], [ %6250, %6238 ]
  %6278 = phi float [ %6273, %6255 ], [ %6251, %6238 ]
  %6279 = phi float [ %6274, %6255 ], [ %6252, %6238 ]
  %6280 = phi float [ %6275, %6255 ], [ %6253, %6238 ]
  %6281 = fadd fast float %6277, -5.000000e-01
  %6282 = fadd fast float %6279, -5.000000e-01
  %6283 = fmul fast float %6281, 0xBFD5555560000000
  %6284 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6282, float %6283)  ; FMad(a,b,c)
  %6285 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6278, float 0.000000e+00)  ; FMad(a,b,c)
  %6286 = fadd fast float %6285, %6280
  %6287 = fmul fast float %6281, -7.500000e-01
  %6288 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6282, float %6287)  ; FMad(a,b,c)
  %6289 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6278, float 0.000000e+00)  ; FMad(a,b,c)
  %6290 = fadd fast float %6289, %6280
  %6291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6291, 0
  %6293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6294 = extractvalue %dx.types.CBufRet.f32 %6293, 0
  %6295 = extractvalue %dx.types.CBufRet.f32 %6293, 1
  %6296 = extractvalue %dx.types.CBufRet.f32 %6293, 2
  %6297 = extractvalue %dx.types.CBufRet.f32 %6293, 3
  %6298 = fsub fast float %6294, %6284
  %6299 = fsub fast float %6295, %6286
  %6300 = fsub fast float %6296, %6288
  %6301 = fsub fast float %6297, %6290
  %6302 = fmul fast float %6298, %6292
  %6303 = fmul fast float %6299, %6292
  %6304 = fmul fast float %6300, %6292
  %6305 = fmul fast float %6301, %6292
  %6306 = fadd fast float %6302, %6284
  %6307 = fadd fast float %6303, %6286
  %6308 = fadd fast float %6304, %6288
  %6309 = fadd fast float %6305, %6290
  %6310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6311 = extractvalue %dx.types.ResRet.i32 %6310, 0
  %6312 = and i32 %6311, 536870911
  %6313 = uitofp i32 %6312 to float
  %6314 = fmul fast float %6313, %6160
  %6315 = fmul fast float %6313, %6164
  %6316 = fptoui float %6314 to i32
  %6317 = fptoui float %6315 to i32
  %6318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6319 = extractvalue %dx.types.ResRet.i32 %6318, 0
  %6320 = and i32 %6319, 31
  %6321 = lshr i32 %6316, %6320
  %6322 = lshr i32 %6317, %6320
  %6323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6324 = extractvalue %dx.types.ResRet.i32 %6323, 0
  %6325 = and i32 %6324, 31
  %6326 = shl i32 1, %6325
  %6327 = call i32 @dx.op.binary.i32(i32 40, i32 %6326, i32 4)  ; UMin(a,b)
  %6328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6329 = extractvalue %dx.types.ResRet.i32 %6328, 0
  %6330 = extractvalue %dx.types.ResRet.i32 %6328, 1
  %6331 = icmp eq i32 %6327, 0
  br i1 %6331, label %6373, label %6332

; <label>:6332                                    ; preds = %6276
  br label %6333

; <label>:6333                                    ; preds = %6361, %6332
  %6334 = phi i32 [ %6364, %6361 ], [ 0, %6332 ]
  %6335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6336 = extractvalue %dx.types.ResRet.i32 %6335, 0
  %6337 = lshr i32 %6336, 16
  %6338 = and i32 %6337, 31
  %6339 = shl i32 %6322, %6338
  %6340 = add i32 %6339, %6321
  %6341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6342 = extractvalue %dx.types.ResRet.i32 %6341, 0
  %6343 = and i32 %6342, 31
  %6344 = shl i32 %6340, %6343
  %6345 = add i32 %6344, %6334
  %6346 = shl i32 %6345, 2
  %6347 = add i32 %6346, 32
  %6348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6347, i32 undef)  ; BufferLoad(srv,index,wot)
  %6349 = extractvalue %dx.types.ResRet.i32 %6348, 0
  %6350 = icmp slt i32 %6349, 0
  %6351 = getelementptr [12 x float], [12 x float]* %111, i32 0, i32 %6334
  %6352 = getelementptr [12 x float], [12 x float]* %112, i32 0, i32 %6334
  %6353 = bitcast float* %6351 to i32*
  %6354 = bitcast float* %6352 to i32*
  br i1 %6350, label %6355, label %6361

; <label>:6355                                    ; preds = %6333
  %6356 = and i32 %6349, 1073741823
  %6357 = add nuw nsw i32 %6356, 20
  %6358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6357, i32 undef)  ; BufferLoad(srv,index,wot)
  %6359 = extractvalue %dx.types.ResRet.i32 %6358, 0
  %6360 = extractvalue %dx.types.ResRet.i32 %6358, 1
  br label %6361

; <label>:6361                                    ; preds = %6355, %6333
  %6362 = phi i32 [ %6359, %6355 ], [ %6329, %6333 ]
  %6363 = phi i32 [ %6360, %6355 ], [ %6330, %6333 ]
  store i32 %6362, i32* %6353, align 4
  store i32 %6363, i32* %6354, align 4
  %6364 = add nuw i32 %6334, 1
  %6365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6366 = extractvalue %dx.types.CBufRet.i32 %6365, 2
  %6367 = icmp eq i32 %6366, 0
  %6368 = icmp ugt i32 %6349, -1073741825
  %6369 = and i1 %6368, %6367
  %6370 = icmp ult i32 %6364, %6327
  %6371 = and i1 %6369, %6370
  br i1 %6371, label %6333, label %6372

; <label>:6372                                    ; preds = %6361
  br label %6373

; <label>:6373                                    ; preds = %6372, %6276
  %6374 = phi i32 [ 0, %6276 ], [ %6364, %6372 ]
  %6375 = extractvalue %dx.types.CBufRet.f32 %6138, 2
  %6376 = fptoui float %6375 to i32
  %6377 = icmp eq i32 %6376, 0
  br i1 %6377, label %6429, label %6378

; <label>:6378                                    ; preds = %6373
  br label %6379

; <label>:6379                                    ; preds = %6424, %6378
  %6380 = phi i32 [ %6425, %6424 ], [ %6374, %6378 ]
  %6381 = phi i32 [ %6426, %6424 ], [ 0, %6378 ]
  %6382 = lshr i32 %6381, 2
  %6383 = and i32 %6381, 3
  %6384 = add nuw nsw i32 %6382, 83
  %6385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 %6384)  ; CBufferLoadLegacy(handle,regIndex)
  %6386 = extractvalue %dx.types.CBufRet.i32 %6385, 0
  %6387 = extractvalue %dx.types.CBufRet.i32 %6385, 1
  %6388 = extractvalue %dx.types.CBufRet.i32 %6385, 2
  %6389 = extractvalue %dx.types.CBufRet.i32 %6385, 3
  %6390 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 0
  store i32 %6386, i32* %6390, align 4
  %6391 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 1
  store i32 %6387, i32* %6391, align 4
  %6392 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 2
  store i32 %6388, i32* %6392, align 4
  %6393 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 3
  store i32 %6389, i32* %6393, align 4
  %6394 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 %6383
  %6395 = load i32, i32* %6394, align 4, !tbaa !112, !noalias !116
  %6396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6397 = extractvalue %dx.types.ResRet.i32 %6396, 0
  %6398 = lshr i32 %6397, 16
  %6399 = and i32 %6398, 31
  %6400 = shl i32 %6322, %6399
  %6401 = add i32 %6400, %6321
  %6402 = shl i32 %6401, 2
  %6403 = add i32 %6402, %6395
  %6404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6403, i32 undef)  ; BufferLoad(srv,index,wot)
  %6405 = extractvalue %dx.types.ResRet.i32 %6404, 0
  %6406 = icmp eq i32 %6405, 0
  br i1 %6406, label %6424, label %6407

; <label>:6407                                    ; preds = %6379
  %6408 = icmp slt i32 %6405, 0
  %6409 = getelementptr [12 x float], [12 x float]* %111, i32 0, i32 %6380
  %6410 = getelementptr [12 x float], [12 x float]* %112, i32 0, i32 %6380
  %6411 = bitcast float* %6409 to i32*
  %6412 = bitcast float* %6410 to i32*
  br i1 %6408, label %6413, label %6420

; <label>:6413                                    ; preds = %6407
  %6414 = and i32 %6405, 1073741823
  %6415 = add i32 %6395, 20
  %6416 = add i32 %6415, %6414
  %6417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6416, i32 undef)  ; BufferLoad(srv,index,wot)
  %6418 = extractvalue %dx.types.ResRet.i32 %6417, 0
  %6419 = extractvalue %dx.types.ResRet.i32 %6417, 1
  br label %6420

; <label>:6420                                    ; preds = %6413, %6407
  %6421 = phi i32 [ %6418, %6413 ], [ %6329, %6407 ]
  %6422 = phi i32 [ %6419, %6413 ], [ %6330, %6407 ]
  store i32 %6421, i32* %6411, align 4
  store i32 %6422, i32* %6412, align 4
  %6423 = add i32 %6380, 1
  br label %6424

; <label>:6424                                    ; preds = %6420, %6379
  %6425 = phi i32 [ %6380, %6379 ], [ %6423, %6420 ]
  %6426 = add nuw i32 %6381, 1
  %6427 = icmp eq i32 %6426, %6376
  br i1 %6427, label %6428, label %6379

; <label>:6428                                    ; preds = %6424
  br label %6429

; <label>:6429                                    ; preds = %6428, %6373
  %6430 = phi i32 [ %6374, %6373 ], [ %6425, %6428 ]
  %6431 = icmp eq i32 %6430, 1
  %6432 = getelementptr [12 x float], [12 x float]* %111, i32 0, i32 0
  %6433 = getelementptr [12 x float], [12 x float]* %112, i32 0, i32 0
  br i1 %6431, label %6434, label %6437

; <label>:6434                                    ; preds = %6429
  %6435 = load float, float* %6432, align 4
  %6436 = load float, float* %6433, align 4
  br label %6464

; <label>:6437                                    ; preds = %6429
  %6438 = load float, float* %6432, align 4
  %6439 = load float, float* %6433, align 4
  %6440 = fdiv fast float 1.000000e+00, %6439
  %6441 = fsub fast float %6438, %6440
  %6442 = icmp ugt i32 %6430, 1
  br i1 %6442, label %6443, label %6459

; <label>:6443                                    ; preds = %6437
  br label %6444

; <label>:6444                                    ; preds = %6444, %6443
  %6445 = phi float [ %6454, %6444 ], [ %6441, %6443 ]
  %6446 = phi float [ %6455, %6444 ], [ %6438, %6443 ]
  %6447 = phi i32 [ %6456, %6444 ], [ 1, %6443 ]
  %6448 = getelementptr [12 x float], [12 x float]* %111, i32 0, i32 %6447
  %6449 = load float, float* %6448, align 4
  %6450 = getelementptr [12 x float], [12 x float]* %112, i32 0, i32 %6447
  %6451 = load float, float* %6450, align 4
  %6452 = fdiv fast float 1.000000e+00, %6451
  %6453 = fsub fast float %6449, %6452
  %6454 = call float @dx.op.binary.f32(i32 36, float %6445, float %6453)  ; FMin(a,b)
  %6455 = call float @dx.op.binary.f32(i32 35, float %6446, float %6449)  ; FMax(a,b)
  %6456 = add nuw i32 %6447, 1
  %6457 = icmp eq i32 %6456, %6430
  br i1 %6457, label %6458, label %6444

; <label>:6458                                    ; preds = %6444
  br label %6459

; <label>:6459                                    ; preds = %6458, %6437
  %6460 = phi float [ %6441, %6437 ], [ %6454, %6458 ]
  %6461 = phi float [ %6438, %6437 ], [ %6455, %6458 ]
  %6462 = fsub fast float %6461, %6460
  %6463 = fdiv fast float 1.000000e+00, %6462
  br label %6464

; <label>:6464                                    ; preds = %6459, %6434
  %6465 = phi float [ %6435, %6434 ], [ %6461, %6459 ]
  %6466 = phi float [ %6436, %6434 ], [ %6463, %6459 ]
  %6467 = fadd fast float %6168, %6465
  %6468 = fmul fast float %6467, %6466
  %6469 = call float @dx.op.unary.f32(i32 7, float %6468)  ; Saturate(value)
  %6470 = fmul fast float %6469, 2.000000e+00
  %6471 = fsub fast float 1.000000e+00, %6470
  %6472 = fmul fast float %6306, %6306
  %6473 = fsub fast float %6307, %6472
  %6474 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6473)  ; FMax(a,b)
  %6475 = fdiv fast float 1.000000e+00, %6474
  %6476 = fmul fast float %6307, %6306
  %6477 = fsub fast float %6308, %6476
  %6478 = fsub fast float %6471, %6306
  %6479 = fmul fast float %6471, %6471
  %6480 = fsub fast float %6479, %6307
  %6481 = fmul fast float %6475, %6477
  %6482 = fmul fast float %6481, %6478
  %6483 = fsub fast float %6480, %6482
  %6484 = fmul fast float %6307, %6307
  %6485 = fsub fast float %6309, %6484
  %6486 = fmul fast float %6477, %6477
  %6487 = fmul fast float %6486, %6475
  %6488 = fsub fast float %6485, %6487
  %6489 = fdiv fast float %6483, %6488
  %6490 = fmul fast float %6489, %6477
  %6491 = fsub fast float %6478, %6490
  %6492 = fmul fast float %6491, %6475
  %6493 = fmul fast float %6492, %6306
  %6494 = fsub fast float 1.000000e+00, %6493
  %6495 = fmul fast float %6489, %6307
  %6496 = fsub fast float %6494, %6495
  %6497 = fmul fast float %6492, %6492
  %6498 = fmul fast float %6489, 4.000000e+00
  %6499 = fmul fast float %6498, %6496
  %6500 = fsub fast float %6497, %6499
  %6501 = call float @dx.op.unary.f32(i32 24, float %6500)  ; Sqrt(value)
  %6502 = fcmp fast oge float %6492, 0.000000e+00
  %6503 = fsub fast float -0.000000e+00, %6501
  %6504 = select i1 %6502, float %6503, float %6501
  %6505 = fsub fast float %6504, %6492
  %6506 = fdiv fast float %6505, %6489
  %6507 = fdiv fast float %6496, %6505
  %6508 = fmul fast float %6506, 5.000000e-01
  %6509 = fmul fast float %6507, 2.000000e+00
  %6510 = select i1 %6502, float %6508, float %6509
  %6511 = select i1 %6502, float %6509, float %6508
  %6512 = call float @dx.op.binary.f32(i32 35, float %6510, float %6511)  ; FMax(a,b)
  %6513 = call float @dx.op.binary.f32(i32 36, float %6510, float %6511)  ; FMin(a,b)
  %6514 = fcmp fast ogt float %6471, %6512
  %6515 = fsub fast float %6471, %6513
  %6516 = fsub fast float %6471, %6512
  %6517 = fsub fast float %6512, %6513
  %6518 = select i1 %6514, float %6516, float %6517
  %6519 = fmul float %6515, %6518
  %6520 = select i1 %6514, float %6513, float %6471
  %6521 = fcmp fast ogt float %6471, %6513
  %6522 = fmul fast float %6520, %6512
  %6523 = fadd fast float %6520, %6512
  %6524 = fmul fast float %6523, %6306
  %6525 = fadd fast float %6522, %6307
  %6526 = fsub fast float %6525, %6524
  %6527 = fdiv fast float %6526, %6519
  %6528 = select i1 %6521, float %6527, float 0.000000e+00
  %6529 = fsub fast float 1.000000e+00, %6528
  %6530 = select i1 %6514, float %6529, float %6528
  %6531 = call float @dx.op.unary.f32(i32 7, float %6530)  ; Saturate(value)
  %6532 = extractvalue %dx.types.CBufRet.f32 %6291, 3
  %6533 = fmul fast float %6532, %6531
  %6534 = fsub fast float 1.000000e+00, %6533
  br label %6535

; <label>:6535                                    ; preds = %6464, %6176, %6141, %6137, %6101
  %6536 = phi float [ 1.000000e+00, %6101 ], [ %6534, %6464 ], [ 1.000000e+00, %6141 ], [ 1.000000e+00, %6176 ], [ 1.000000e+00, %6137 ]
  %6537 = fcmp fast ogt float %6133, 0.000000e+00
  br i1 %6537, label %6538, label %6702, !dx.controlflow.hints !125

; <label>:6538                                    ; preds = %6535
  %6539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6540 = extractvalue %dx.types.CBufRet.f32 %6539, 2
  %6541 = fadd fast float %6540, %6014
  %6542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6543 = extractvalue %dx.types.CBufRet.f32 %6542, 2
  %6544 = extractvalue %dx.types.CBufRet.f32 %6542, 3
  %6545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6546 = extractvalue %dx.types.CBufRet.f32 %6545, 2
  %6547 = call float @dx.op.binary.f32(i32 35, float %6541, float 0.000000e+00)  ; FMax(a,b)
  %6548 = fadd fast float %6547, 0x3F10000000000000
  %6549 = fcmp fast oeq float %6546, 0.000000e+00
  br i1 %6549, label %6550, label %6617

; <label>:6550                                    ; preds = %6538
  %6551 = extractvalue %dx.types.CBufRet.f32 %6542, 1
  %6552 = extractvalue %dx.types.CBufRet.f32 %6542, 0
  %6553 = fmul fast float %6552, %6032
  %6554 = fmul fast float %6551, %6033
  %6555 = fadd fast float %6553, 5.000000e-01
  %6556 = call float @dx.op.unary.f32(i32 27, float %6555)  ; Round_ni(value)
  %6557 = fadd fast float %6554, 5.000000e-01
  %6558 = call float @dx.op.unary.f32(i32 27, float %6557)  ; Round_ni(value)
  %6559 = fsub fast float %6555, %6556
  %6560 = fsub fast float %6557, %6558
  %6561 = fadd fast float %6556, -5.000000e-01
  %6562 = fadd fast float %6558, -5.000000e-01
  %6563 = fmul fast float %6559, 2.000000e+00
  %6564 = fsub fast float 3.000000e+00, %6563
  %6565 = fadd fast float %6563, 1.000000e+00
  %6566 = fsub fast float 2.000000e+00, %6559
  %6567 = bitcast float %6564 to i32
  %6568 = sub nsw i32 2129859010, %6567
  %6569 = bitcast i32 %6568 to float
  %6570 = fmul fast float %6569, %6566
  %6571 = fadd fast float %6570, -1.000000e+00
  %6572 = bitcast float %6565 to i32
  %6573 = sub nsw i32 2129859010, %6572
  %6574 = bitcast i32 %6573 to float
  %6575 = fmul fast float %6574, %6559
  %6576 = fadd fast float %6575, 1.000000e+00
  %6577 = fmul fast float %6560, 2.000000e+00
  %6578 = fsub fast float 3.000000e+00, %6577
  %6579 = fadd fast float %6577, 1.000000e+00
  %6580 = fsub fast float 2.000000e+00, %6560
  %6581 = bitcast float %6578 to i32
  %6582 = sub nsw i32 2129859010, %6581
  %6583 = bitcast i32 %6582 to float
  %6584 = fmul fast float %6583, %6580
  %6585 = fadd fast float %6584, -1.000000e+00
  %6586 = bitcast float %6579 to i32
  %6587 = sub nsw i32 2129859010, %6586
  %6588 = bitcast i32 %6587 to float
  %6589 = fmul fast float %6588, %6560
  %6590 = fadd fast float %6589, 1.000000e+00
  %6591 = fadd fast float %6571, %6561
  %6592 = fmul fast float %6591, %6543
  %6593 = fadd fast float %6585, %6562
  %6594 = fmul fast float %6593, %6544
  %6595 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6592, float %6594, float undef, float undef, i32 0, i32 0, i32 undef, float %6548)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6596 = extractvalue %dx.types.ResRet.f32 %6595, 0
  %6597 = fmul fast float %6596, %6564
  %6598 = fadd fast float %6576, %6561
  %6599 = fmul fast float %6598, %6543
  %6600 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6599, float %6594, float undef, float undef, i32 0, i32 0, i32 undef, float %6548)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6601 = extractvalue %dx.types.ResRet.f32 %6600, 0
  %6602 = fmul fast float %6601, %6565
  %6603 = fadd fast float %6590, %6562
  %6604 = fmul fast float %6603, %6544
  %6605 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6592, float %6604, float undef, float undef, i32 0, i32 0, i32 undef, float %6548)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6606 = extractvalue %dx.types.ResRet.f32 %6605, 0
  %6607 = fmul fast float %6606, %6564
  %6608 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6599, float %6604, float undef, float undef, i32 0, i32 0, i32 undef, float %6548)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6609 = extractvalue %dx.types.ResRet.f32 %6608, 0
  %6610 = fmul fast float %6609, %6565
  %6611 = fadd fast float %6610, %6607
  %6612 = fmul fast float %6611, %6579
  %6613 = fadd fast float %6602, %6597
  %6614 = fmul fast float %6613, %6578
  %6615 = fadd fast float %6614, %6612
  %6616 = fmul fast float %6615, 6.250000e-02
  br label %6702

; <label>:6617                                    ; preds = %6538
  %6618 = fmul fast float %289, 0x401921FB60000000
  %6619 = call float @dx.op.unary.f32(i32 13, float %6618)  ; Sin(value)
  %6620 = call float @dx.op.unary.f32(i32 12, float %6618)  ; Cos(value)
  %6621 = fsub fast float -0.000000e+00, %6619
  br label %6622

; <label>:6622                                    ; preds = %6671, %6617
  %6623 = phi float [ 0.000000e+00, %6617 ], [ %6666, %6671 ]
  %6624 = phi float [ 0.000000e+00, %6617 ], [ %6668, %6671 ]
  %6625 = phi i32 [ 0, %6617 ], [ %6672, %6671 ]
  %6626 = mul i32 %6625, 2
  %6627 = add i32 0, %6626
  %6628 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6627
  %6629 = load float, float* %6628, align 4
  %6630 = mul i32 %6625, 2
  %6631 = add i32 1, %6630
  %6632 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6631
  %6633 = load float, float* %6632, align 4
  %6634 = fmul fast float %6629, %6620
  %6635 = call float @dx.op.tertiary.f32(i32 46, float %6633, float %6621, float %6634)  ; FMad(a,b,c)
  %6636 = fmul fast float %6629, %6619
  %6637 = call float @dx.op.tertiary.f32(i32 46, float %6633, float %6620, float %6636)  ; FMad(a,b,c)
  %6638 = fmul fast float %6635, %6546
  %6639 = fmul fast float %6637, %6546
  %6640 = fadd fast float %6638, %6032
  %6641 = fadd fast float %6639, %6033
  %6642 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %56, float %6640, float %6641, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6643 = extractvalue %dx.types.ResRet.f32 %6642, 0
  %6644 = extractvalue %dx.types.ResRet.f32 %6642, 1
  %6645 = extractvalue %dx.types.ResRet.f32 %6642, 2
  %6646 = extractvalue %dx.types.ResRet.f32 %6642, 3
  %6647 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 0
  store float %6643, float* %6647, align 4
  %6648 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 1
  store float %6644, float* %6648, align 4
  %6649 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 2
  store float %6645, float* %6649, align 4
  %6650 = getelementptr inbounds [4 x float], [4 x float]* %116, i32 0, i32 3
  store float %6646, float* %6650, align 4
  %6651 = fsub fast float %6643, %6548
  %6652 = fcmp fast olt float %6651, 0.000000e+00
  %6653 = select i1 %6652, float 0.000000e+00, float 1.000000e+00
  %6654 = fadd fast float %6653, %6623
  %6655 = fmul fast float %6653, %6651
  %6656 = fadd fast float %6655, %6624
  br label %6657

; <label>:6657                                    ; preds = %6657, %6622
  %6658 = phi i32 [ 1, %6622 ], [ %6669, %6657 ]
  %6659 = phi float [ %6656, %6622 ], [ %6668, %6657 ]
  %6660 = phi float [ %6654, %6622 ], [ %6666, %6657 ]
  %6661 = getelementptr [4 x float], [4 x float]* %116, i32 0, i32 %6658
  %6662 = load float, float* %6661, align 4, !tbaa !126, !noalias !116
  %6663 = fsub fast float %6662, %6548
  %6664 = fcmp fast olt float %6663, 0.000000e+00
  %6665 = select i1 %6664, float 0.000000e+00, float 1.000000e+00
  %6666 = fadd fast float %6665, %6660
  %6667 = fmul fast float %6665, %6663
  %6668 = fadd fast float %6667, %6659
  %6669 = add nuw nsw i32 %6658, 1
  %6670 = icmp eq i32 %6669, 4
  br i1 %6670, label %6671, label %6657, !llvm.loop !128

; <label>:6671                                    ; preds = %6657
  %6672 = add nuw nsw i32 %6625, 1
  %6673 = icmp eq i32 %6672, 8
  br i1 %6673, label %6674, label %6622, !llvm.loop !129

; <label>:6674                                    ; preds = %6671
  %6675 = fdiv fast float 1.000000e+00, %6666
  %6676 = fmul fast float %6675, %6668
  %6677 = fdiv fast float 1.000000e+00, %6548
  %6678 = fmul fast float %6676, %6677
  %6679 = call float @dx.op.unary.f32(i32 7, float %6678)  ; Saturate(value)
  %6680 = call float @dx.op.binary.f32(i32 35, float %6679, float 0.000000e+00)  ; FMax(a,b)
  %6681 = fmul fast float %6666, 3.125000e-02
  %6682 = call float @dx.op.unary.f32(i32 7, float %6681)  ; Saturate(value)
  %6683 = fmul fast float %6682, 2.000000e+00
  %6684 = fadd fast float %6683, -1.000000e+00
  %6685 = fcmp fast ogt float %6684, 0.000000e+00
  %6686 = fcmp fast olt float %6684, 0.000000e+00
  %6687 = zext i1 %6685 to i32
  %6688 = zext i1 %6686 to i32
  %6689 = sub nsw i32 %6687, %6688
  %6690 = sitofp i32 %6689 to float
  %6691 = fmul fast float %6690, %6684
  %6692 = fsub fast float 1.000000e+00, %6691
  %6693 = fmul fast float %6692, %6692
  %6694 = fmul fast float %6693, %6692
  %6695 = fsub fast float %6692, %6694
  %6696 = fmul fast float %6695, %6680
  %6697 = fsub fast float 1.000000e+00, %6694
  %6698 = fsub fast float %6697, %6696
  %6699 = fmul fast float %6690, 5.000000e-01
  %6700 = fmul fast float %6699, %6698
  %6701 = fsub fast float 5.000000e-01, %6700
  br label %6702

; <label>:6702                                    ; preds = %6674, %6550, %6535
  %6703 = phi float [ 1.000000e+00, %6535 ], [ %6616, %6550 ], [ %6701, %6674 ]
  %6704 = fcmp fast ogt float %6131, 0.000000e+00
  br i1 %6704, label %6705, label %6869, !dx.controlflow.hints !130

; <label>:6705                                    ; preds = %6702
  %6706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6707 = extractvalue %dx.types.CBufRet.f32 %6706, 1
  %6708 = fadd fast float %6707, %6014
  %6709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6710 = extractvalue %dx.types.CBufRet.f32 %6709, 2
  %6711 = extractvalue %dx.types.CBufRet.f32 %6709, 3
  %6712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6713 = extractvalue %dx.types.CBufRet.f32 %6712, 1
  %6714 = call float @dx.op.binary.f32(i32 35, float %6708, float 0.000000e+00)  ; FMax(a,b)
  %6715 = fadd fast float %6714, 0x3F10000000000000
  %6716 = fcmp fast oeq float %6713, 0.000000e+00
  br i1 %6716, label %6717, label %6784

; <label>:6717                                    ; preds = %6705
  %6718 = extractvalue %dx.types.CBufRet.f32 %6709, 1
  %6719 = extractvalue %dx.types.CBufRet.f32 %6709, 0
  %6720 = fmul fast float %6719, %6024
  %6721 = fmul fast float %6718, %6025
  %6722 = fadd fast float %6720, 5.000000e-01
  %6723 = call float @dx.op.unary.f32(i32 27, float %6722)  ; Round_ni(value)
  %6724 = fadd fast float %6721, 5.000000e-01
  %6725 = call float @dx.op.unary.f32(i32 27, float %6724)  ; Round_ni(value)
  %6726 = fsub fast float %6722, %6723
  %6727 = fsub fast float %6724, %6725
  %6728 = fadd fast float %6723, -5.000000e-01
  %6729 = fadd fast float %6725, -5.000000e-01
  %6730 = fmul fast float %6726, 2.000000e+00
  %6731 = fsub fast float 3.000000e+00, %6730
  %6732 = fadd fast float %6730, 1.000000e+00
  %6733 = fsub fast float 2.000000e+00, %6726
  %6734 = bitcast float %6731 to i32
  %6735 = sub nsw i32 2129859010, %6734
  %6736 = bitcast i32 %6735 to float
  %6737 = fmul fast float %6736, %6733
  %6738 = fadd fast float %6737, -1.000000e+00
  %6739 = bitcast float %6732 to i32
  %6740 = sub nsw i32 2129859010, %6739
  %6741 = bitcast i32 %6740 to float
  %6742 = fmul fast float %6741, %6726
  %6743 = fadd fast float %6742, 1.000000e+00
  %6744 = fmul fast float %6727, 2.000000e+00
  %6745 = fsub fast float 3.000000e+00, %6744
  %6746 = fadd fast float %6744, 1.000000e+00
  %6747 = fsub fast float 2.000000e+00, %6727
  %6748 = bitcast float %6745 to i32
  %6749 = sub nsw i32 2129859010, %6748
  %6750 = bitcast i32 %6749 to float
  %6751 = fmul fast float %6750, %6747
  %6752 = fadd fast float %6751, -1.000000e+00
  %6753 = bitcast float %6746 to i32
  %6754 = sub nsw i32 2129859010, %6753
  %6755 = bitcast i32 %6754 to float
  %6756 = fmul fast float %6755, %6727
  %6757 = fadd fast float %6756, 1.000000e+00
  %6758 = fadd fast float %6738, %6728
  %6759 = fmul fast float %6758, %6710
  %6760 = fadd fast float %6752, %6729
  %6761 = fmul fast float %6760, %6711
  %6762 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6759, float %6761, float undef, float undef, i32 0, i32 0, i32 undef, float %6715)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6763 = extractvalue %dx.types.ResRet.f32 %6762, 0
  %6764 = fmul fast float %6763, %6731
  %6765 = fadd fast float %6743, %6728
  %6766 = fmul fast float %6765, %6710
  %6767 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6766, float %6761, float undef, float undef, i32 0, i32 0, i32 undef, float %6715)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6768 = extractvalue %dx.types.ResRet.f32 %6767, 0
  %6769 = fmul fast float %6768, %6732
  %6770 = fadd fast float %6757, %6729
  %6771 = fmul fast float %6770, %6711
  %6772 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6759, float %6771, float undef, float undef, i32 0, i32 0, i32 undef, float %6715)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6773 = extractvalue %dx.types.ResRet.f32 %6772, 0
  %6774 = fmul fast float %6773, %6731
  %6775 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6766, float %6771, float undef, float undef, i32 0, i32 0, i32 undef, float %6715)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6776 = extractvalue %dx.types.ResRet.f32 %6775, 0
  %6777 = fmul fast float %6776, %6732
  %6778 = fadd fast float %6777, %6774
  %6779 = fmul fast float %6778, %6746
  %6780 = fadd fast float %6769, %6764
  %6781 = fmul fast float %6780, %6745
  %6782 = fadd fast float %6781, %6779
  %6783 = fmul fast float %6782, 6.250000e-02
  br label %6869

; <label>:6784                                    ; preds = %6705
  %6785 = fmul fast float %289, 0x401921FB60000000
  %6786 = call float @dx.op.unary.f32(i32 13, float %6785)  ; Sin(value)
  %6787 = call float @dx.op.unary.f32(i32 12, float %6785)  ; Cos(value)
  %6788 = fsub fast float -0.000000e+00, %6786
  br label %6789

; <label>:6789                                    ; preds = %6838, %6784
  %6790 = phi float [ 0.000000e+00, %6784 ], [ %6833, %6838 ]
  %6791 = phi float [ 0.000000e+00, %6784 ], [ %6835, %6838 ]
  %6792 = phi i32 [ 0, %6784 ], [ %6839, %6838 ]
  %6793 = mul i32 %6792, 2
  %6794 = add i32 0, %6793
  %6795 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6794
  %6796 = load float, float* %6795, align 4
  %6797 = mul i32 %6792, 2
  %6798 = add i32 1, %6797
  %6799 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6798
  %6800 = load float, float* %6799, align 4
  %6801 = fmul fast float %6796, %6787
  %6802 = call float @dx.op.tertiary.f32(i32 46, float %6800, float %6788, float %6801)  ; FMad(a,b,c)
  %6803 = fmul fast float %6796, %6786
  %6804 = call float @dx.op.tertiary.f32(i32 46, float %6800, float %6787, float %6803)  ; FMad(a,b,c)
  %6805 = fmul fast float %6802, %6713
  %6806 = fmul fast float %6804, %6713
  %6807 = fadd fast float %6805, %6024
  %6808 = fadd fast float %6806, %6025
  %6809 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %56, float %6807, float %6808, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6810 = extractvalue %dx.types.ResRet.f32 %6809, 0
  %6811 = extractvalue %dx.types.ResRet.f32 %6809, 1
  %6812 = extractvalue %dx.types.ResRet.f32 %6809, 2
  %6813 = extractvalue %dx.types.ResRet.f32 %6809, 3
  %6814 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 0
  store float %6810, float* %6814, align 4
  %6815 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 1
  store float %6811, float* %6815, align 4
  %6816 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 2
  store float %6812, float* %6816, align 4
  %6817 = getelementptr inbounds [4 x float], [4 x float]* %115, i32 0, i32 3
  store float %6813, float* %6817, align 4
  %6818 = fsub fast float %6810, %6715
  %6819 = fcmp fast olt float %6818, 0.000000e+00
  %6820 = select i1 %6819, float 0.000000e+00, float 1.000000e+00
  %6821 = fadd fast float %6820, %6790
  %6822 = fmul fast float %6820, %6818
  %6823 = fadd fast float %6822, %6791
  br label %6824

; <label>:6824                                    ; preds = %6824, %6789
  %6825 = phi i32 [ 1, %6789 ], [ %6836, %6824 ]
  %6826 = phi float [ %6823, %6789 ], [ %6835, %6824 ]
  %6827 = phi float [ %6821, %6789 ], [ %6833, %6824 ]
  %6828 = getelementptr [4 x float], [4 x float]* %115, i32 0, i32 %6825
  %6829 = load float, float* %6828, align 4, !tbaa !126, !noalias !116
  %6830 = fsub fast float %6829, %6715
  %6831 = fcmp fast olt float %6830, 0.000000e+00
  %6832 = select i1 %6831, float 0.000000e+00, float 1.000000e+00
  %6833 = fadd fast float %6832, %6827
  %6834 = fmul fast float %6832, %6830
  %6835 = fadd fast float %6834, %6826
  %6836 = add nuw nsw i32 %6825, 1
  %6837 = icmp eq i32 %6836, 4
  br i1 %6837, label %6838, label %6824, !llvm.loop !128

; <label>:6838                                    ; preds = %6824
  %6839 = add nuw nsw i32 %6792, 1
  %6840 = icmp eq i32 %6839, 8
  br i1 %6840, label %6841, label %6789, !llvm.loop !129

; <label>:6841                                    ; preds = %6838
  %6842 = fdiv fast float 1.000000e+00, %6833
  %6843 = fmul fast float %6842, %6835
  %6844 = fdiv fast float 1.000000e+00, %6715
  %6845 = fmul fast float %6843, %6844
  %6846 = call float @dx.op.unary.f32(i32 7, float %6845)  ; Saturate(value)
  %6847 = call float @dx.op.binary.f32(i32 35, float %6846, float 0.000000e+00)  ; FMax(a,b)
  %6848 = fmul fast float %6833, 3.125000e-02
  %6849 = call float @dx.op.unary.f32(i32 7, float %6848)  ; Saturate(value)
  %6850 = fmul fast float %6849, 2.000000e+00
  %6851 = fadd fast float %6850, -1.000000e+00
  %6852 = fcmp fast ogt float %6851, 0.000000e+00
  %6853 = fcmp fast olt float %6851, 0.000000e+00
  %6854 = zext i1 %6852 to i32
  %6855 = zext i1 %6853 to i32
  %6856 = sub nsw i32 %6854, %6855
  %6857 = sitofp i32 %6856 to float
  %6858 = fmul fast float %6857, %6851
  %6859 = fsub fast float 1.000000e+00, %6858
  %6860 = fmul fast float %6859, %6859
  %6861 = fmul fast float %6860, %6859
  %6862 = fsub fast float %6859, %6861
  %6863 = fmul fast float %6862, %6847
  %6864 = fsub fast float 1.000000e+00, %6861
  %6865 = fsub fast float %6864, %6863
  %6866 = fmul fast float %6857, 5.000000e-01
  %6867 = fmul fast float %6866, %6865
  %6868 = fsub fast float 5.000000e-01, %6867
  br label %6869

; <label>:6869                                    ; preds = %6841, %6717, %6702
  %6870 = phi float [ 1.000000e+00, %6702 ], [ %6783, %6717 ], [ %6868, %6841 ]
  %6871 = fcmp fast ogt float %6130, 0.000000e+00
  br i1 %6871, label %6872, label %7190, !dx.controlflow.hints !131

; <label>:6872                                    ; preds = %6869
  %6873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6874 = extractvalue %dx.types.CBufRet.f32 %6873, 0
  %6875 = fadd fast float %6874, %6014
  %6876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6877 = extractvalue %dx.types.CBufRet.f32 %6876, 2
  %6878 = extractvalue %dx.types.CBufRet.f32 %6876, 3
  %6879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6880 = extractvalue %dx.types.CBufRet.f32 %6879, 0
  %6881 = call float @dx.op.binary.f32(i32 35, float %6875, float 0.000000e+00)  ; FMax(a,b)
  %6882 = fadd fast float %6881, 0x3F10000000000000
  %6883 = fcmp fast oeq float %6880, 0.000000e+00
  br i1 %6017, label %6884, label %7037, !dx.controlflow.hints !132

; <label>:6884                                    ; preds = %6872
  br i1 %6883, label %6885, label %6952

; <label>:6885                                    ; preds = %6884
  %6886 = extractvalue %dx.types.CBufRet.f32 %6876, 1
  %6887 = extractvalue %dx.types.CBufRet.f32 %6876, 0
  %6888 = fmul fast float %6887, %6006
  %6889 = fmul fast float %6886, %6010
  %6890 = fadd fast float %6888, 5.000000e-01
  %6891 = call float @dx.op.unary.f32(i32 27, float %6890)  ; Round_ni(value)
  %6892 = fadd fast float %6889, 5.000000e-01
  %6893 = call float @dx.op.unary.f32(i32 27, float %6892)  ; Round_ni(value)
  %6894 = fsub fast float %6890, %6891
  %6895 = fsub fast float %6892, %6893
  %6896 = fadd fast float %6891, -5.000000e-01
  %6897 = fadd fast float %6893, -5.000000e-01
  %6898 = fmul fast float %6894, 2.000000e+00
  %6899 = fsub fast float 3.000000e+00, %6898
  %6900 = fadd fast float %6898, 1.000000e+00
  %6901 = fsub fast float 2.000000e+00, %6894
  %6902 = bitcast float %6899 to i32
  %6903 = sub nsw i32 2129859010, %6902
  %6904 = bitcast i32 %6903 to float
  %6905 = fmul fast float %6904, %6901
  %6906 = fadd fast float %6905, -1.000000e+00
  %6907 = bitcast float %6900 to i32
  %6908 = sub nsw i32 2129859010, %6907
  %6909 = bitcast i32 %6908 to float
  %6910 = fmul fast float %6909, %6894
  %6911 = fadd fast float %6910, 1.000000e+00
  %6912 = fmul fast float %6895, 2.000000e+00
  %6913 = fsub fast float 3.000000e+00, %6912
  %6914 = fadd fast float %6912, 1.000000e+00
  %6915 = fsub fast float 2.000000e+00, %6895
  %6916 = bitcast float %6913 to i32
  %6917 = sub nsw i32 2129859010, %6916
  %6918 = bitcast i32 %6917 to float
  %6919 = fmul fast float %6918, %6915
  %6920 = fadd fast float %6919, -1.000000e+00
  %6921 = bitcast float %6914 to i32
  %6922 = sub nsw i32 2129859010, %6921
  %6923 = bitcast i32 %6922 to float
  %6924 = fmul fast float %6923, %6895
  %6925 = fadd fast float %6924, 1.000000e+00
  %6926 = fadd fast float %6906, %6896
  %6927 = fmul fast float %6926, %6877
  %6928 = fadd fast float %6920, %6897
  %6929 = fmul fast float %6928, %6878
  %6930 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6927, float %6929, float undef, float undef, i32 0, i32 0, i32 undef, float %6882)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6931 = extractvalue %dx.types.ResRet.f32 %6930, 0
  %6932 = fmul fast float %6931, %6899
  %6933 = fadd fast float %6911, %6896
  %6934 = fmul fast float %6933, %6877
  %6935 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6934, float %6929, float undef, float undef, i32 0, i32 0, i32 undef, float %6882)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6936 = extractvalue %dx.types.ResRet.f32 %6935, 0
  %6937 = fmul fast float %6936, %6900
  %6938 = fadd fast float %6925, %6897
  %6939 = fmul fast float %6938, %6878
  %6940 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6927, float %6939, float undef, float undef, i32 0, i32 0, i32 undef, float %6882)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6941 = extractvalue %dx.types.ResRet.f32 %6940, 0
  %6942 = fmul fast float %6941, %6899
  %6943 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6934, float %6939, float undef, float undef, i32 0, i32 0, i32 undef, float %6882)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6944 = extractvalue %dx.types.ResRet.f32 %6943, 0
  %6945 = fmul fast float %6944, %6900
  %6946 = fadd fast float %6945, %6942
  %6947 = fmul fast float %6946, %6914
  %6948 = fadd fast float %6937, %6932
  %6949 = fmul fast float %6948, %6913
  %6950 = fadd fast float %6949, %6947
  %6951 = fmul fast float %6950, 6.250000e-02
  br label %7190

; <label>:6952                                    ; preds = %6884
  %6953 = fmul fast float %289, 0x401921FB60000000
  %6954 = call float @dx.op.unary.f32(i32 13, float %6953)  ; Sin(value)
  %6955 = call float @dx.op.unary.f32(i32 12, float %6953)  ; Cos(value)
  %6956 = fsub fast float -0.000000e+00, %6954
  br label %6957

; <label>:6957                                    ; preds = %7006, %6952
  %6958 = phi float [ 0.000000e+00, %6952 ], [ %7001, %7006 ]
  %6959 = phi float [ 0.000000e+00, %6952 ], [ %7003, %7006 ]
  %6960 = phi i32 [ 0, %6952 ], [ %7007, %7006 ]
  %6961 = mul i32 %6960, 2
  %6962 = add i32 0, %6961
  %6963 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6962
  %6964 = load float, float* %6963, align 4
  %6965 = mul i32 %6960, 2
  %6966 = add i32 1, %6965
  %6967 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6966
  %6968 = load float, float* %6967, align 4
  %6969 = fmul fast float %6964, %6955
  %6970 = call float @dx.op.tertiary.f32(i32 46, float %6968, float %6956, float %6969)  ; FMad(a,b,c)
  %6971 = fmul fast float %6964, %6954
  %6972 = call float @dx.op.tertiary.f32(i32 46, float %6968, float %6955, float %6971)  ; FMad(a,b,c)
  %6973 = fmul fast float %6970, %6880
  %6974 = fmul fast float %6972, %6880
  %6975 = fadd fast float %6973, %6006
  %6976 = fadd fast float %6974, %6010
  %6977 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %56, float %6975, float %6976, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6978 = extractvalue %dx.types.ResRet.f32 %6977, 0
  %6979 = extractvalue %dx.types.ResRet.f32 %6977, 1
  %6980 = extractvalue %dx.types.ResRet.f32 %6977, 2
  %6981 = extractvalue %dx.types.ResRet.f32 %6977, 3
  %6982 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 0
  store float %6978, float* %6982, align 4
  %6983 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 1
  store float %6979, float* %6983, align 4
  %6984 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 2
  store float %6980, float* %6984, align 4
  %6985 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 3
  store float %6981, float* %6985, align 4
  %6986 = fsub fast float %6978, %6882
  %6987 = fcmp fast olt float %6986, 0.000000e+00
  %6988 = select i1 %6987, float 0.000000e+00, float 1.000000e+00
  %6989 = fadd fast float %6988, %6958
  %6990 = fmul fast float %6988, %6986
  %6991 = fadd fast float %6990, %6959
  br label %6992

; <label>:6992                                    ; preds = %6992, %6957
  %6993 = phi i32 [ 1, %6957 ], [ %7004, %6992 ]
  %6994 = phi float [ %6991, %6957 ], [ %7003, %6992 ]
  %6995 = phi float [ %6989, %6957 ], [ %7001, %6992 ]
  %6996 = getelementptr [4 x float], [4 x float]* %114, i32 0, i32 %6993
  %6997 = load float, float* %6996, align 4, !tbaa !126, !noalias !116
  %6998 = fsub fast float %6997, %6882
  %6999 = fcmp fast olt float %6998, 0.000000e+00
  %7000 = select i1 %6999, float 0.000000e+00, float 1.000000e+00
  %7001 = fadd fast float %7000, %6995
  %7002 = fmul fast float %7000, %6998
  %7003 = fadd fast float %7002, %6994
  %7004 = add nuw nsw i32 %6993, 1
  %7005 = icmp eq i32 %7004, 4
  br i1 %7005, label %7006, label %6992, !llvm.loop !128

; <label>:7006                                    ; preds = %6992
  %7007 = add nuw nsw i32 %6960, 1
  %7008 = icmp eq i32 %7007, 8
  br i1 %7008, label %7009, label %6957, !llvm.loop !129

; <label>:7009                                    ; preds = %7006
  %7010 = fdiv fast float 1.000000e+00, %7001
  %7011 = fmul fast float %7010, %7003
  %7012 = fdiv fast float 1.000000e+00, %6882
  %7013 = fmul fast float %7011, %7012
  %7014 = call float @dx.op.unary.f32(i32 7, float %7013)  ; Saturate(value)
  %7015 = call float @dx.op.binary.f32(i32 35, float %7014, float 0.000000e+00)  ; FMax(a,b)
  %7016 = fmul fast float %7001, 3.125000e-02
  %7017 = call float @dx.op.unary.f32(i32 7, float %7016)  ; Saturate(value)
  %7018 = fmul fast float %7017, 2.000000e+00
  %7019 = fadd fast float %7018, -1.000000e+00
  %7020 = fcmp fast ogt float %7019, 0.000000e+00
  %7021 = fcmp fast olt float %7019, 0.000000e+00
  %7022 = zext i1 %7020 to i32
  %7023 = zext i1 %7021 to i32
  %7024 = sub nsw i32 %7022, %7023
  %7025 = sitofp i32 %7024 to float
  %7026 = fmul fast float %7025, %7019
  %7027 = fsub fast float 1.000000e+00, %7026
  %7028 = fmul fast float %7027, %7027
  %7029 = fmul fast float %7028, %7027
  %7030 = fsub fast float %7027, %7029
  %7031 = fmul fast float %7030, %7015
  %7032 = fsub fast float 1.000000e+00, %7029
  %7033 = fsub fast float %7032, %7031
  %7034 = fmul fast float %7025, 5.000000e-01
  %7035 = fmul fast float %7034, %7033
  %7036 = fsub fast float 5.000000e-01, %7035
  br label %7190

; <label>:7037                                    ; preds = %6872
  br i1 %6883, label %7038, label %7105

; <label>:7038                                    ; preds = %7037
  %7039 = extractvalue %dx.types.CBufRet.f32 %6876, 1
  %7040 = extractvalue %dx.types.CBufRet.f32 %6876, 0
  %7041 = fmul fast float %7040, %6006
  %7042 = fmul fast float %7039, %6010
  %7043 = fadd fast float %7041, 5.000000e-01
  %7044 = call float @dx.op.unary.f32(i32 27, float %7043)  ; Round_ni(value)
  %7045 = fadd fast float %7042, 5.000000e-01
  %7046 = call float @dx.op.unary.f32(i32 27, float %7045)  ; Round_ni(value)
  %7047 = fsub fast float %7043, %7044
  %7048 = fsub fast float %7045, %7046
  %7049 = fadd fast float %7044, -5.000000e-01
  %7050 = fadd fast float %7046, -5.000000e-01
  %7051 = fmul fast float %7047, 2.000000e+00
  %7052 = fsub fast float 3.000000e+00, %7051
  %7053 = fadd fast float %7051, 1.000000e+00
  %7054 = fsub fast float 2.000000e+00, %7047
  %7055 = bitcast float %7052 to i32
  %7056 = sub nsw i32 2129859010, %7055
  %7057 = bitcast i32 %7056 to float
  %7058 = fmul fast float %7057, %7054
  %7059 = fadd fast float %7058, -1.000000e+00
  %7060 = bitcast float %7053 to i32
  %7061 = sub nsw i32 2129859010, %7060
  %7062 = bitcast i32 %7061 to float
  %7063 = fmul fast float %7062, %7047
  %7064 = fadd fast float %7063, 1.000000e+00
  %7065 = fmul fast float %7048, 2.000000e+00
  %7066 = fsub fast float 3.000000e+00, %7065
  %7067 = fadd fast float %7065, 1.000000e+00
  %7068 = fsub fast float 2.000000e+00, %7048
  %7069 = bitcast float %7066 to i32
  %7070 = sub nsw i32 2129859010, %7069
  %7071 = bitcast i32 %7070 to float
  %7072 = fmul fast float %7071, %7068
  %7073 = fadd fast float %7072, -1.000000e+00
  %7074 = bitcast float %7067 to i32
  %7075 = sub nsw i32 2129859010, %7074
  %7076 = bitcast i32 %7075 to float
  %7077 = fmul fast float %7076, %7048
  %7078 = fadd fast float %7077, 1.000000e+00
  %7079 = fadd fast float %7059, %7049
  %7080 = fmul fast float %7079, %6877
  %7081 = fadd fast float %7073, %7050
  %7082 = fmul fast float %7081, %6878
  %7083 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7080, float %7082, float undef, float undef, i32 0, i32 0, i32 undef, float %6882)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7084 = extractvalue %dx.types.ResRet.f32 %7083, 0
  %7085 = fmul fast float %7084, %7052
  %7086 = fadd fast float %7064, %7049
  %7087 = fmul fast float %7086, %6877
  %7088 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7087, float %7082, float undef, float undef, i32 0, i32 0, i32 undef, float %6882)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7089 = extractvalue %dx.types.ResRet.f32 %7088, 0
  %7090 = fmul fast float %7089, %7053
  %7091 = fadd fast float %7078, %7050
  %7092 = fmul fast float %7091, %6878
  %7093 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7080, float %7092, float undef, float undef, i32 0, i32 0, i32 undef, float %6882)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7094 = extractvalue %dx.types.ResRet.f32 %7093, 0
  %7095 = fmul fast float %7094, %7052
  %7096 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7087, float %7092, float undef, float undef, i32 0, i32 0, i32 undef, float %6882)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7097 = extractvalue %dx.types.ResRet.f32 %7096, 0
  %7098 = fmul fast float %7097, %7053
  %7099 = fadd fast float %7098, %7095
  %7100 = fmul fast float %7099, %7067
  %7101 = fadd fast float %7090, %7085
  %7102 = fmul fast float %7101, %7066
  %7103 = fadd fast float %7102, %7100
  %7104 = fmul fast float %7103, 6.250000e-02
  br label %7190

; <label>:7105                                    ; preds = %7037
  %7106 = fmul fast float %289, 0x401921FB60000000
  %7107 = call float @dx.op.unary.f32(i32 13, float %7106)  ; Sin(value)
  %7108 = call float @dx.op.unary.f32(i32 12, float %7106)  ; Cos(value)
  %7109 = fsub fast float -0.000000e+00, %7107
  br label %7110

; <label>:7110                                    ; preds = %7159, %7105
  %7111 = phi float [ 0.000000e+00, %7105 ], [ %7154, %7159 ]
  %7112 = phi float [ 0.000000e+00, %7105 ], [ %7156, %7159 ]
  %7113 = phi i32 [ 0, %7105 ], [ %7160, %7159 ]
  %7114 = mul i32 %7113, 2
  %7115 = add i32 0, %7114
  %7116 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7115
  %7117 = load float, float* %7116, align 4
  %7118 = mul i32 %7113, 2
  %7119 = add i32 1, %7118
  %7120 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7119
  %7121 = load float, float* %7120, align 4
  %7122 = fmul fast float %7117, %7108
  %7123 = call float @dx.op.tertiary.f32(i32 46, float %7121, float %7109, float %7122)  ; FMad(a,b,c)
  %7124 = fmul fast float %7117, %7107
  %7125 = call float @dx.op.tertiary.f32(i32 46, float %7121, float %7108, float %7124)  ; FMad(a,b,c)
  %7126 = fmul fast float %7123, %6880
  %7127 = fmul fast float %7125, %6880
  %7128 = fadd fast float %7126, %6006
  %7129 = fadd fast float %7127, %6010
  %7130 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %56, float %7128, float %7129, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7131 = extractvalue %dx.types.ResRet.f32 %7130, 0
  %7132 = extractvalue %dx.types.ResRet.f32 %7130, 1
  %7133 = extractvalue %dx.types.ResRet.f32 %7130, 2
  %7134 = extractvalue %dx.types.ResRet.f32 %7130, 3
  %7135 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 0
  store float %7131, float* %7135, align 4
  %7136 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 1
  store float %7132, float* %7136, align 4
  %7137 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 2
  store float %7133, float* %7137, align 4
  %7138 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 3
  store float %7134, float* %7138, align 4
  %7139 = fsub fast float %7131, %6882
  %7140 = fcmp fast olt float %7139, 0.000000e+00
  %7141 = select i1 %7140, float 0.000000e+00, float 1.000000e+00
  %7142 = fadd fast float %7141, %7111
  %7143 = fmul fast float %7141, %7139
  %7144 = fadd fast float %7143, %7112
  br label %7145

; <label>:7145                                    ; preds = %7145, %7110
  %7146 = phi i32 [ 1, %7110 ], [ %7157, %7145 ]
  %7147 = phi float [ %7144, %7110 ], [ %7156, %7145 ]
  %7148 = phi float [ %7142, %7110 ], [ %7154, %7145 ]
  %7149 = getelementptr [4 x float], [4 x float]* %113, i32 0, i32 %7146
  %7150 = load float, float* %7149, align 4, !tbaa !126, !noalias !116
  %7151 = fsub fast float %7150, %6882
  %7152 = fcmp fast olt float %7151, 0.000000e+00
  %7153 = select i1 %7152, float 0.000000e+00, float 1.000000e+00
  %7154 = fadd fast float %7153, %7148
  %7155 = fmul fast float %7153, %7151
  %7156 = fadd fast float %7155, %7147
  %7157 = add nuw nsw i32 %7146, 1
  %7158 = icmp eq i32 %7157, 4
  br i1 %7158, label %7159, label %7145, !llvm.loop !128

; <label>:7159                                    ; preds = %7145
  %7160 = add nuw nsw i32 %7113, 1
  %7161 = icmp eq i32 %7160, 8
  br i1 %7161, label %7162, label %7110, !llvm.loop !129

; <label>:7162                                    ; preds = %7159
  %7163 = fdiv fast float 1.000000e+00, %7154
  %7164 = fmul fast float %7163, %7156
  %7165 = fdiv fast float 1.000000e+00, %6882
  %7166 = fmul fast float %7164, %7165
  %7167 = call float @dx.op.unary.f32(i32 7, float %7166)  ; Saturate(value)
  %7168 = call float @dx.op.binary.f32(i32 35, float %7167, float 0.000000e+00)  ; FMax(a,b)
  %7169 = fmul fast float %7154, 3.125000e-02
  %7170 = call float @dx.op.unary.f32(i32 7, float %7169)  ; Saturate(value)
  %7171 = fmul fast float %7170, 2.000000e+00
  %7172 = fadd fast float %7171, -1.000000e+00
  %7173 = fcmp fast ogt float %7172, 0.000000e+00
  %7174 = fcmp fast olt float %7172, 0.000000e+00
  %7175 = zext i1 %7173 to i32
  %7176 = zext i1 %7174 to i32
  %7177 = sub nsw i32 %7175, %7176
  %7178 = sitofp i32 %7177 to float
  %7179 = fmul fast float %7178, %7172
  %7180 = fsub fast float 1.000000e+00, %7179
  %7181 = fmul fast float %7180, %7180
  %7182 = fmul fast float %7181, %7180
  %7183 = fsub fast float %7180, %7182
  %7184 = fmul fast float %7183, %7168
  %7185 = fsub fast float 1.000000e+00, %7182
  %7186 = fsub fast float %7185, %7184
  %7187 = fmul fast float %7178, 5.000000e-01
  %7188 = fmul fast float %7187, %7186
  %7189 = fsub fast float 5.000000e-01, %7188
  br label %7190

; <label>:7190                                    ; preds = %7162, %7038, %7009, %6885, %6869
  %7191 = phi float [ 1.000000e+00, %6869 ], [ %6951, %6885 ], [ %7036, %7009 ], [ %7104, %7038 ], [ %7189, %7162 ]
  %7192 = fsub fast float %6703, %6536
  %7193 = fmul fast float %7192, %6103
  %7194 = fadd fast float %7193, %6536
  %7195 = fsub fast float %6870, %7194
  %7196 = fmul fast float %7195, %6102
  %7197 = fadd fast float %7196, %7194
  %7198 = fsub fast float %7191, %7197
  %7199 = fmul fast float %7198, %6130
  %7200 = fadd fast float %7199, %7197
  %7201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7202 = extractvalue %dx.types.CBufRet.f32 %7201, 2
  %7203 = fcmp fast ogt float %7202, 0.000000e+00
  br i1 %7203, label %7204, label %7244, !dx.controlflow.hints !133

; <label>:7204                                    ; preds = %7190
  %7205 = fcmp fast ugt float %7202, 0.000000e+00
  br i1 %7205, label %7206, label %7241

; <label>:7206                                    ; preds = %7204
  %7207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7208 = extractvalue %dx.types.CBufRet.f32 %7207, 0
  %7209 = extractvalue %dx.types.CBufRet.f32 %7207, 1
  %7210 = extractvalue %dx.types.CBufRet.f32 %7207, 2
  %7211 = extractvalue %dx.types.CBufRet.f32 %7207, 3
  %7212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7213 = extractvalue %dx.types.CBufRet.f32 %7212, 0
  %7214 = extractvalue %dx.types.CBufRet.f32 %7212, 1
  %7215 = extractvalue %dx.types.CBufRet.f32 %7212, 2
  %7216 = extractvalue %dx.types.CBufRet.f32 %7212, 3
  %7217 = extractvalue %dx.types.CBufRet.f32 %7201, 0
  %7218 = extractvalue %dx.types.CBufRet.f32 %7201, 1
  %7219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7220 = extractvalue %dx.types.CBufRet.f32 %7219, 0
  %7221 = extractvalue %dx.types.CBufRet.f32 %7219, 1
  %7222 = extractvalue %dx.types.CBufRet.f32 %7219, 2
  %7223 = fadd fast float %7220, %5983
  %7224 = fadd fast float %7221, %5984
  %7225 = fadd fast float %7222, %5985
  %7226 = fmul fast float %7223, %7208
  %7227 = call float @dx.op.tertiary.f32(i32 46, float %7209, float %7224, float %7226)  ; FMad(a,b,c)
  %7228 = call float @dx.op.tertiary.f32(i32 46, float %7210, float %7225, float %7227)  ; FMad(a,b,c)
  %7229 = fadd fast float %7228, %7211
  %7230 = fmul fast float %7223, %7213
  %7231 = call float @dx.op.tertiary.f32(i32 46, float %7214, float %7224, float %7230)  ; FMad(a,b,c)
  %7232 = call float @dx.op.tertiary.f32(i32 46, float %7215, float %7225, float %7231)  ; FMad(a,b,c)
  %7233 = fadd fast float %7232, %7216
  %7234 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %52, float %7229, float %7233, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7235 = extractvalue %dx.types.ResRet.f32 %7234, 0
  %7236 = fmul fast float %7235, %7218
  %7237 = fadd fast float %7236, %7217
  %7238 = call float @dx.op.unary.f32(i32 7, float %7237)  ; Saturate(value)
  %7239 = fmul fast float %7238, %7202
  %7240 = fsub fast float 1.000000e+00, %7239
  br label %7241

; <label>:7241                                    ; preds = %7206, %7204
  %7242 = phi float [ %7240, %7206 ], [ 1.000000e+00, %7204 ]
  %7243 = fmul fast float %7242, %7200
  br label %7244

; <label>:7244                                    ; preds = %7241, %7190, %5963
  %7245 = phi float [ 1.000000e+00, %5963 ], [ %7243, %7241 ], [ %7200, %7190 ]
  %7246 = call float @dx.op.binary.f32(i32 36, float %7245, float %7245)  ; FMin(a,b)
  %7247 = call float @dx.op.binary.f32(i32 36, float %7245, float %7246)  ; FMin(a,b)
  %7248 = fcmp fast ogt float %7247, 0.000000e+00
  br i1 %7248, label %7249, label %7414, !dx.controlflow.hints !134

; <label>:7249                                    ; preds = %7244
  %7250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7251 = extractvalue %dx.types.CBufRet.f32 %7250, 0
  %7252 = extractvalue %dx.types.CBufRet.f32 %7250, 1
  %7253 = extractvalue %dx.types.CBufRet.f32 %7250, 2
  %7254 = extractvalue %dx.types.CBufRet.f32 %7250, 3
  %7255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7256 = extractvalue %dx.types.CBufRet.f32 %7255, 0
  %7257 = extractvalue %dx.types.CBufRet.f32 %7255, 1
  %7258 = extractvalue %dx.types.CBufRet.f32 %7255, 2
  %7259 = extractvalue %dx.types.CBufRet.f32 %7255, 3
  %7260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7261 = extractvalue %dx.types.CBufRet.f32 %7260, 0
  %7262 = extractvalue %dx.types.CBufRet.f32 %7260, 1
  %7263 = extractvalue %dx.types.CBufRet.f32 %7260, 2
  %7264 = extractvalue %dx.types.CBufRet.f32 %7260, 3
  %7265 = fmul fast float %7251, %5983
  %7266 = call float @dx.op.tertiary.f32(i32 46, float %5984, float %7252, float %7265)  ; FMad(a,b,c)
  %7267 = call float @dx.op.tertiary.f32(i32 46, float %5985, float %7253, float %7266)  ; FMad(a,b,c)
  %7268 = fadd fast float %7267, %7254
  %7269 = fmul fast float %7256, %5983
  %7270 = call float @dx.op.tertiary.f32(i32 46, float %5984, float %7257, float %7269)  ; FMad(a,b,c)
  %7271 = call float @dx.op.tertiary.f32(i32 46, float %5985, float %7258, float %7270)  ; FMad(a,b,c)
  %7272 = fadd fast float %7271, %7259
  %7273 = fmul fast float %7261, %5983
  %7274 = call float @dx.op.tertiary.f32(i32 46, float %5984, float %7262, float %7273)  ; FMad(a,b,c)
  %7275 = call float @dx.op.tertiary.f32(i32 46, float %5985, float %7263, float %7274)  ; FMad(a,b,c)
  %7276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7277 = extractvalue %dx.types.CBufRet.f32 %7276, 0
  %7278 = extractvalue %dx.types.CBufRet.f32 %7276, 1
  %7279 = extractvalue %dx.types.CBufRet.f32 %7276, 3
  %7280 = fmul fast float %7279, %7268
  %7281 = fmul fast float %7279, %7272
  %7282 = fadd fast float %7280, %7277
  %7283 = fadd fast float %7281, %7278
  %7284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7285 = extractvalue %dx.types.CBufRet.f32 %7284, 0
  %7286 = extractvalue %dx.types.CBufRet.f32 %7284, 1
  %7287 = fsub fast float %7282, %7285
  %7288 = fsub fast float %7283, %7286
  %7289 = fcmp fast olt float %7287, 0.000000e+00
  %7290 = fcmp fast olt float %7288, 0.000000e+00
  %7291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7292 = extractvalue %dx.types.CBufRet.f32 %7291, 0
  %7293 = extractvalue %dx.types.CBufRet.f32 %7291, 1
  %7294 = extractvalue %dx.types.CBufRet.f32 %7291, 2
  %7295 = extractvalue %dx.types.CBufRet.f32 %7291, 3
  %7296 = select i1 %7289, float %7292, float %7294
  %7297 = select i1 %7290, float %7293, float %7295
  %7298 = fmul fast float %7296, %7287
  %7299 = fmul fast float %7297, %7288
  %7300 = call float @dx.op.unary.f32(i32 6, float %7298)  ; FAbs(value)
  %7301 = call float @dx.op.unary.f32(i32 6, float %7299)  ; FAbs(value)
  %7302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7303 = extractvalue %dx.types.CBufRet.f32 %7302, 0
  %7304 = call float @dx.op.binary.f32(i32 35, float %7300, float %7301)  ; FMax(a,b)
  %7305 = fsub fast float %7303, %7304
  %7306 = call float @dx.op.unary.f32(i32 7, float %7305)  ; Saturate(value)
  %7307 = fcmp fast ogt float %7306, 0.000000e+00
  br i1 %7307, label %7308, label %7349, !dx.controlflow.hints !135

; <label>:7308                                    ; preds = %7249
  %7309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %55, float %7282, float %7283, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7310 = extractvalue %dx.types.ResRet.f32 %7309, 1
  %7311 = fcmp fast ogt float %7310, 0.000000e+00
  br i1 %7311, label %7312, label %7344

; <label>:7312                                    ; preds = %7308
  %7313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %55, float %7282, float %7283, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7314 = extractvalue %dx.types.ResRet.f32 %7313, 0
  %7315 = extractvalue %dx.types.ResRet.f32 %7313, 1
  %7316 = extractvalue %dx.types.ResRet.f32 %7313, 2
  %7317 = extractvalue %dx.types.ResRet.f32 %7313, 3
  %7318 = fsub fast float 1.000000e+00, %7264
  %7319 = fsub fast float %7318, %7275
  %7320 = fmul fast float %7319, 0x400921FB60000000
  %7321 = fadd fast float %7320, 0x3FF921FB60000000
  %7322 = call float @dx.op.unary.f32(i32 13, float %7321)  ; Sin(value)
  %7323 = fadd fast float %7322, -1.000000e+00
  %7324 = fmul fast float %7323, 0x3FD45F3060000000
  %7325 = fmul fast float %7319, 0x401921FB60000000
  %7326 = fadd fast float %7325, 0x400921FB60000000
  %7327 = call float @dx.op.unary.f32(i32 13, float %7326)  ; Sin(value)
  %7328 = fadd fast float %7327, 0x3E7777A5C0000000
  %7329 = fmul fast float %7328, 0x3FC45F3060000000
  %7330 = fmul fast float %7319, 0x4022D97C80000000
  %7331 = fadd fast float %7330, 0x4012D97C80000000
  %7332 = call float @dx.op.unary.f32(i32 13, float %7331)  ; Sin(value)
  %7333 = fadd fast float %7332, 1.000000e+00
  %7334 = fmul fast float %7333, 0x3FBB2995E0000000
  %7335 = fmul fast float %7319, 0x402921FB60000000
  %7336 = fadd fast float %7335, 0x401921FB60000000
  %7337 = call float @dx.op.unary.f32(i32 13, float %7336)  ; Sin(value)
  %7338 = fadd fast float %7337, 0xBE8777A5C0000000
  %7339 = fmul fast float %7338, 0x3FB45F3060000000
  %7340 = call float @dx.op.dot4.f32(i32 56, float %7314, float %7315, float %7316, float %7317, float %7324, float %7329, float %7334, float %7339)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7341 = fmul fast float %7340, 0xBFF7154760000000
  %7342 = call float @dx.op.unary.f32(i32 21, float %7341)  ; Exp(value)
  %7343 = call float @dx.op.unary.f32(i32 7, float %7342)  ; Saturate(value)
  br label %7344

; <label>:7344                                    ; preds = %7312, %7308
  %7345 = phi float [ %7343, %7312 ], [ 1.000000e+00, %7308 ]
  %7346 = fadd fast float %7345, -1.000000e+00
  %7347 = fmul fast float %7346, %7306
  %7348 = fadd fast float %7347, 1.000000e+00
  br label %7349

; <label>:7349                                    ; preds = %7344, %7249
  %7350 = phi float [ %7348, %7344 ], [ 1.000000e+00, %7249 ]
  %7351 = fmul fast float %7350, %7245
  %7352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7353 = extractvalue %dx.types.CBufRet.f32 %7352, 0
  %7354 = extractvalue %dx.types.CBufRet.f32 %7352, 1
  %7355 = extractvalue %dx.types.CBufRet.f32 %7352, 2
  %7356 = fadd fast float %7353, %206
  %7357 = fadd fast float %7354, %207
  %7358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7359 = extractvalue %dx.types.CBufRet.f32 %7358, 1
  %7360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7361 = extractvalue %dx.types.CBufRet.f32 %7360, 0
  %7362 = extractvalue %dx.types.CBufRet.f32 %7360, 1
  %7363 = extractvalue %dx.types.CBufRet.f32 %7360, 2
  %7364 = fsub fast float -0.000000e+00, %7356
  %7365 = fsub fast float -0.000000e+00, %7357
  %7366 = fsub fast float %5108, %7355
  %7367 = fadd fast float %7366, %7359
  %7368 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7364, float %7365, float %7367)  ; Dot3(ax,ay,az,bx,by,bz)
  %7369 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7361, float %7362, float %7363)  ; Dot3(ax,ay,az,bx,by,bz)
  %7370 = fdiv fast float 1.000000e+00, %7369
  %7371 = fmul fast float %7370, %7368
  %7372 = fmul fast float %7361, %7371
  %7373 = fmul fast float %7362, %7371
  %7374 = fadd fast float %7372, %7356
  %7375 = fadd fast float %7373, %7357
  %7376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7377 = extractvalue %dx.types.CBufRet.f32 %7376, 0
  %7378 = extractvalue %dx.types.CBufRet.f32 %7376, 1
  %7379 = fsub fast float %7374, %7377
  %7380 = fsub fast float %7375, %7378
  %7381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7382 = extractvalue %dx.types.CBufRet.f32 %7381, 2
  %7383 = extractvalue %dx.types.CBufRet.f32 %7381, 3
  %7384 = fmul fast float %7379, %7382
  %7385 = fmul fast float %7380, %7383
  %7386 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7387 = extractvalue %dx.types.CBufRet.i32 %7386, 3
  %7388 = icmp eq i32 %7387, 0
  br i1 %7388, label %7394, label %7389

; <label>:7389                                    ; preds = %7349
  %7390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7384, float %7385, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7391 = extractvalue %dx.types.ResRet.f32 %7390, 0
  %7392 = extractvalue %dx.types.ResRet.f32 %7390, 1
  %7393 = extractvalue %dx.types.ResRet.f32 %7390, 2
  br label %7399

; <label>:7394                                    ; preds = %7349
  %7395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %7384, float %7385, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7396 = extractvalue %dx.types.ResRet.f32 %7395, 0
  %7397 = extractvalue %dx.types.ResRet.f32 %7395, 1
  %7398 = extractvalue %dx.types.ResRet.f32 %7395, 2
  br label %7399

; <label>:7399                                    ; preds = %7394, %7389
  %7400 = phi float [ %7391, %7389 ], [ %7396, %7394 ]
  %7401 = phi float [ %7392, %7389 ], [ %7397, %7394 ]
  %7402 = phi float [ %7393, %7389 ], [ %7398, %7394 ]
  %7403 = extractvalue %dx.types.CBufRet.f32 %7358, 2
  %7404 = fmul fast float %7403, %7400
  %7405 = extractvalue %dx.types.CBufRet.f32 %7358, 0
  %7406 = fsub fast float %7371, %7405
  %7407 = fsub fast float %7406, %7404
  %7408 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7407)  ; FMax(a,b)
  %7409 = fmul fast float %7408, %7401
  %7410 = call float @dx.op.binary.f32(i32 36, float %7402, float %7409)  ; FMin(a,b)
  %7411 = fmul fast float %7410, 0xBFF7154760000000
  %7412 = call float @dx.op.unary.f32(i32 21, float %7411)  ; Exp(value)
  %7413 = fmul fast float %7351, %7412
  br label %7414

; <label>:7414                                    ; preds = %7399, %7244
  %7415 = phi float [ %7413, %7399 ], [ %7245, %7244 ]
  %7416 = call float @dx.op.binary.f32(i32 36, float %7415, float %7415)  ; FMin(a,b)
  %7417 = call float @dx.op.binary.f32(i32 36, float %7415, float %7416)  ; FMin(a,b)
  %7418 = fcmp fast ogt float %7417, 0.000000e+00
  br i1 %7418, label %7419, label %7667, !dx.controlflow.hints !136

; <label>:7419                                    ; preds = %7414
  %7420 = fmul fast float %7415, %5975
  %7421 = fmul fast float %7415, %5976
  %7422 = fmul fast float %7415, %5977
  %7423 = fsub fast float %208, %4307
  %7424 = fcmp fast ogt float %7423, 0.000000e+00
  %7425 = fmul fast float %5964, 5.120000e+02
  %7426 = fmul fast float %5965, 5.120000e+02
  %7427 = fmul fast float %5966, 5.120000e+02
  %7428 = fadd fast float %7427, %208
  %7429 = fsub fast float %4307, %7428
  %7430 = fmul fast float %7429, 2.000000e+00
  %7431 = fadd fast float %7430, %7428
  %7432 = select i1 %7424, float %7431, float %7428
  %7433 = fsub fast float %7432, %208
  %7434 = call float @dx.op.dot3.f32(i32 55, float %7425, float %7426, float %7433, float %7425, float %7426, float %7433)  ; Dot3(ax,ay,az,bx,by,bz)
  %7435 = call float @dx.op.unary.f32(i32 25, float %7434)  ; Rsqrt(value)
  %7436 = fmul fast float %7435, %7425
  %7437 = fmul fast float %7435, %7426
  %7438 = fmul fast float %7435, %7433
  %7439 = fsub fast float %4307, %208
  %7440 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7439)  ; Dot3(ax,ay,az,bx,by,bz)
  %7441 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7436, float %7437, float %7438)  ; Dot3(ax,ay,az,bx,by,bz)
  %7442 = fdiv fast float 1.000000e+00, %7441
  %7443 = fmul fast float %7442, %7440
  %7444 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7423, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7445 = fcmp fast ogt float %7444, 0.000000e+00
  %7446 = fcmp fast olt float %7444, 0.000000e+00
  %7447 = zext i1 %7445 to i32
  %7448 = zext i1 %7446 to i32
  %7449 = sub nsw i32 %7447, %7448
  %7450 = sitofp i32 %7449 to float
  %7451 = fsub fast float %7432, %4307
  %7452 = call float @dx.op.dot3.f32(i32 55, float %7425, float %7426, float %7451, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7453 = fcmp fast ogt float %7452, 0.000000e+00
  %7454 = fcmp fast olt float %7452, 0.000000e+00
  %7455 = zext i1 %7453 to i32
  %7456 = zext i1 %7454 to i32
  %7457 = sub nsw i32 %7455, %7456
  %7458 = sitofp i32 %7457 to float
  %7459 = fcmp fast une float %7450, %7458
  br i1 %7459, label %7460, label %7470

; <label>:7460                                    ; preds = %7419
  %7461 = fmul fast float %7443, %7438
  %7462 = fmul fast float %7443, %7437
  %7463 = fmul fast float %7443, %7436
  %7464 = fmul fast float %7463, %7463
  %7465 = fmul fast float %7462, %7462
  %7466 = fadd fast float %7464, %7465
  %7467 = fmul fast float %7461, %7461
  %7468 = fadd fast float %7466, %7467
  %7469 = call float @dx.op.unary.f32(i32 24, float %7468)  ; Sqrt(value)
  br label %7480

; <label>:7470                                    ; preds = %7419
  %7471 = icmp slt i32 %7449, 0
  br i1 %7471, label %7472, label %7480

; <label>:7472                                    ; preds = %7470
  %7473 = fsub fast float %208, %7432
  %7474 = fmul fast float %7425, %7425
  %7475 = fmul fast float %7426, %7426
  %7476 = fadd fast float %7474, %7475
  %7477 = fmul fast float %7473, %7473
  %7478 = fadd fast float %7476, %7477
  %7479 = call float @dx.op.unary.f32(i32 24, float %7478)  ; Sqrt(value)
  br label %7480

; <label>:7480                                    ; preds = %7472, %7470, %7460
  %7481 = phi float [ %7469, %7460 ], [ %7479, %7472 ], [ 0.000000e+00, %7470 ]
  %7482 = fsub fast float -0.000000e+00, %7481
  %7483 = select i1 %7424, float -0.000000e+00, float %7482
  %7484 = fmul fast float %4304, 0x3FF7154760000000
  %7485 = fmul fast float %7484, %7483
  %7486 = fmul fast float %4305, 0x3FF7154760000000
  %7487 = fmul fast float %7486, %7483
  %7488 = fmul fast float %4306, 0x3FF7154760000000
  %7489 = fmul fast float %7488, %7483
  %7490 = call float @dx.op.unary.f32(i32 21, float %7485)  ; Exp(value)
  %7491 = call float @dx.op.unary.f32(i32 21, float %7487)  ; Exp(value)
  %7492 = call float @dx.op.unary.f32(i32 21, float %7489)  ; Exp(value)
  %7493 = call float @dx.op.unary.f32(i32 7, float %7490)  ; Saturate(value)
  %7494 = call float @dx.op.unary.f32(i32 7, float %7491)  ; Saturate(value)
  %7495 = call float @dx.op.unary.f32(i32 7, float %7492)  ; Saturate(value)
  %7496 = fmul fast float %7420, %7493
  %7497 = fmul fast float %7421, %7494
  %7498 = fmul fast float %7422, %7495
  %7499 = fsub fast float %5964, %5096
  %7500 = fsub fast float %5965, %5095
  %7501 = fsub fast float %5966, %5094
  %7502 = call float @dx.op.dot3.f32(i32 55, float %7499, float %7500, float %7501, float %7499, float %7500, float %7501)  ; Dot3(ax,ay,az,bx,by,bz)
  %7503 = call float @dx.op.unary.f32(i32 25, float %7502)  ; Rsqrt(value)
  %7504 = fmul fast float %7503, %7499
  %7505 = fmul fast float %7503, %7500
  %7506 = fmul fast float %7503, %7501
  %7507 = call float @dx.op.dot3.f32(i32 55, float %5964, float %5965, float %5966, float %5103, float %5104, float %5105)  ; Dot3(ax,ay,az,bx,by,bz)
  %7508 = call float @dx.op.dot3.f32(i32 55, float %5093, float %5092, float %5091, float %7504, float %7505, float %7506)  ; Dot3(ax,ay,az,bx,by,bz)
  %7509 = call float @dx.op.unary.f32(i32 7, float %7507)  ; Saturate(value)
  %7510 = bitcast i32 %5135 to float
  %7511 = fmul fast float %7509, %7509
  %7512 = fmul fast float %7511, %7510
  %7513 = call float @dx.op.unary.f32(i32 7, float %7512)  ; Saturate(value)
  %7514 = fmul fast float %7513, %7509
  %7515 = call float @dx.op.dot3.f32(i32 55, float %5103, float %5104, float %5105, float %7504, float %7505, float %7506)  ; Dot3(ax,ay,az,bx,by,bz)
  %7516 = fmul fast float %7515, %7515
  %7517 = call float @dx.op.unary.f32(i32 6, float %7507)  ; FAbs(value)
  %7518 = fsub fast float 1.000000e+00, %5129
  %7519 = fmul fast float %5111, %5111
  %7520 = fmul fast float %7519, %7518
  %7521 = fadd fast float %7520, %5129
  %7522 = bitcast float %7521 to i32
  %7523 = ashr i32 %7522, 1
  %7524 = add nsw i32 %7523, 532487669
  %7525 = bitcast i32 %7524 to float
  %7526 = fadd fast float %7525, %5111
  %7527 = fmul fast float %5129, %7516
  %7528 = fsub fast float 1.000000e+00, %7516
  %7529 = fadd fast float %7528, %7527
  %7530 = fmul fast float %7517, %7517
  %7531 = fmul fast float %7530, %7518
  %7532 = fadd fast float %7531, %5129
  %7533 = bitcast float %7532 to i32
  %7534 = ashr i32 %7533, 1
  %7535 = add nsw i32 %7534, 532487669
  %7536 = bitcast i32 %7535 to float
  %7537 = fadd fast float %7536, %7517
  %7538 = fmul fast float %7529, %7529
  %7539 = fmul fast float %7538, %7526
  %7540 = fmul fast float %7539, %7537
  %7541 = fdiv fast float 0x3FF0A00000000000, %7540
  %7542 = fmul fast float %7541, %5129
  %7543 = call float @dx.op.unary.f32(i32 6, float %7508)  ; FAbs(value)
  %7544 = fsub fast float 1.000000e+00, %7543
  %7545 = bitcast float %7544 to i32
  %7546 = sitofp i32 %7545 to float
  %7547 = fmul fast float %7546, 5.000000e+00
  %7548 = fadd fast float %7547, 0xC1EFBF8940000000
  %7549 = fptosi float %7548 to i32
  %7550 = bitcast i32 %7549 to float
  %7551 = fsub fast float 1.000000e+00, %5100
  %7552 = fsub fast float 1.000000e+00, %5101
  %7553 = fsub fast float 1.000000e+00, %5109
  %7554 = fmul fast float %7550, %7551
  %7555 = fmul fast float %7550, %7552
  %7556 = fmul fast float %7550, %7553
  %7557 = fadd fast float %7554, %5100
  %7558 = fadd fast float %7555, %5101
  %7559 = fadd fast float %7556, %5109
  br i1 %5383, label %7560, label %7583

; <label>:7560                                    ; preds = %7480
  %7561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3902, float %7543, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7562 = extractvalue %dx.types.ResRet.f32 %7561, 0
  %7563 = extractvalue %dx.types.ResRet.f32 %7561, 1
  %7564 = extractvalue %dx.types.ResRet.f32 %7561, 2
  %7565 = fadd fast float %7562, -5.000000e-01
  %7566 = fadd fast float %7563, -5.000000e-01
  %7567 = fadd fast float %7564, -5.000000e-01
  %7568 = fmul fast float %5100, 4.000000e+00
  %7569 = fmul fast float %7568, %7551
  %7570 = fmul fast float %7569, %7565
  %7571 = fmul fast float %5101, 4.000000e+00
  %7572 = fmul fast float %7571, %7552
  %7573 = fmul fast float %7572, %7566
  %7574 = fmul fast float %5109, 4.000000e+00
  %7575 = fmul fast float %7574, %7553
  %7576 = fmul fast float %7575, %7567
  %7577 = fadd fast float %7570, %7557
  %7578 = fadd fast float %7573, %7558
  %7579 = fadd fast float %7576, %7559
  %7580 = call float @dx.op.unary.f32(i32 7, float %7577)  ; Saturate(value)
  %7581 = call float @dx.op.unary.f32(i32 7, float %7578)  ; Saturate(value)
  %7582 = call float @dx.op.unary.f32(i32 7, float %7579)  ; Saturate(value)
  br label %7583

; <label>:7583                                    ; preds = %7560, %7480
  %7584 = phi float [ %7580, %7560 ], [ %7557, %7480 ]
  %7585 = phi float [ %7581, %7560 ], [ %7558, %7480 ]
  %7586 = phi float [ %7582, %7560 ], [ %7559, %7480 ]
  %7587 = fmul fast float %7507, 9.843750e-01
  %7588 = fadd fast float %7587, 7.812500e-03
  %7589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %7588, float %5373, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7590 = extractvalue %dx.types.ResRet.f32 %7589, 2
  %7591 = extractvalue %dx.types.ResRet.f32 %7589, 3
  %7592 = fmul fast float %7590, %5100
  %7593 = fmul fast float %7590, %5101
  %7594 = fmul fast float %7590, %5109
  %7595 = fadd fast float %7592, %7591
  %7596 = fadd fast float %7593, %7591
  %7597 = fadd fast float %7594, %7591
  br i1 %5383, label %7598, label %7621

; <label>:7598                                    ; preds = %7583
  %7599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3902, float %7507, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7600 = extractvalue %dx.types.ResRet.f32 %7599, 0
  %7601 = extractvalue %dx.types.ResRet.f32 %7599, 1
  %7602 = extractvalue %dx.types.ResRet.f32 %7599, 2
  %7603 = fadd fast float %7600, -5.000000e-01
  %7604 = fadd fast float %7601, -5.000000e-01
  %7605 = fadd fast float %7602, -5.000000e-01
  %7606 = fmul fast float %5100, 4.000000e+00
  %7607 = fmul fast float %7606, %7551
  %7608 = fmul fast float %7607, %7603
  %7609 = fmul fast float %5101, 4.000000e+00
  %7610 = fmul fast float %7609, %7552
  %7611 = fmul fast float %7610, %7604
  %7612 = fmul fast float %5109, 4.000000e+00
  %7613 = fmul fast float %7612, %7553
  %7614 = fmul fast float %7613, %7605
  %7615 = fadd fast float %7608, %7595
  %7616 = fadd fast float %7611, %7596
  %7617 = fadd fast float %7614, %7597
  %7618 = call float @dx.op.unary.f32(i32 7, float %7615)  ; Saturate(value)
  %7619 = call float @dx.op.unary.f32(i32 7, float %7616)  ; Saturate(value)
  %7620 = call float @dx.op.unary.f32(i32 7, float %7617)  ; Saturate(value)
  br label %7621

; <label>:7621                                    ; preds = %7598, %7583
  %7622 = phi float [ %7618, %7598 ], [ %7595, %7583 ]
  %7623 = phi float [ %7619, %7598 ], [ %7596, %7583 ]
  %7624 = phi float [ %7620, %7598 ], [ %7597, %7583 ]
  %7625 = call float @dx.op.binary.f32(i32 35, float %7623, float %7624)  ; FMax(a,b)
  %7626 = call float @dx.op.binary.f32(i32 35, float %7622, float %7625)  ; FMax(a,b)
  %7627 = fsub fast float 1.000000e+00, %7626
  %7628 = fmul fast float %7584, %7542
  %7629 = fmul fast float %7585, %7542
  %7630 = fmul fast float %7586, %7542
  %7631 = fsub fast float 1.000000e+00, %7508
  %7632 = bitcast float %7631 to i32
  %7633 = sitofp i32 %7632 to float
  %7634 = fmul fast float %7633, 5.000000e+00
  %7635 = fadd fast float %7634, 0xC1EFBF8940000000
  %7636 = fptosi float %7635 to i32
  %7637 = bitcast i32 %7636 to float
  %7638 = fmul fast float %7637, %3903
  %7639 = fmul fast float %7627, %7638
  %7640 = fmul fast float %7639, %5925
  %7641 = fmul fast float %7639, %5926
  %7642 = fmul fast float %7639, %5927
  %7643 = fadd fast float %7640, %7628
  %7644 = fadd fast float %7641, %7629
  %7645 = fadd fast float %7642, %7630
  %7646 = fmul fast float %7514, %7496
  %7647 = fmul fast float %7646, %7627
  %7648 = fmul fast float %7514, %7497
  %7649 = fmul fast float %7648, %7627
  %7650 = fmul fast float %7514, %7498
  %7651 = fmul fast float %7650, %7627
  %7652 = fmul fast float %7646, %7643
  %7653 = fmul fast float %7648, %7644
  %7654 = fmul fast float %7650, %7645
  %7655 = fadd fast float %7647, %5909
  %7656 = fmul fast float %7655, %3899
  %7657 = fadd fast float %7649, %5910
  %7658 = fmul fast float %7657, %3899
  %7659 = fadd fast float %7651, %5911
  %7660 = fmul fast float %7659, %3899
  %7661 = fadd fast float %7652, %5952
  %7662 = fmul fast float %7661, %3899
  %7663 = fadd fast float %7653, %5955
  %7664 = fmul fast float %7663, %3899
  %7665 = fadd fast float %7654, %5958
  %7666 = fmul fast float %7665, %3899
  br label %7667

; <label>:7667                                    ; preds = %7621, %7414, %5905
  %7668 = phi float [ %5953, %5905 ], [ %5953, %7414 ], [ %7662, %7621 ]
  %7669 = phi float [ %5956, %5905 ], [ %5956, %7414 ], [ %7664, %7621 ]
  %7670 = phi float [ %5959, %5905 ], [ %5959, %7414 ], [ %7666, %7621 ]
  %7671 = phi float [ %5948, %5905 ], [ %5948, %7414 ], [ %7656, %7621 ]
  %7672 = phi float [ %5949, %5905 ], [ %5949, %7414 ], [ %7658, %7621 ]
  %7673 = phi float [ %5950, %5905 ], [ %5950, %7414 ], [ %7660, %7621 ]
  %7674 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7675 = extractvalue %dx.types.CBufRet.i32 %7674, 0
  %7676 = icmp eq i32 %7675, 0
  br i1 %7676, label %8340, label %7677

; <label>:7677                                    ; preds = %7667
  %7678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7679 = extractvalue %dx.types.CBufRet.f32 %7678, 2
  %7680 = extractvalue %dx.types.CBufRet.f32 %7678, 3
  %7681 = fmul fast float %7679, %123
  %7682 = fmul fast float %7680, %124
  %7683 = fptoui float %7681 to i32
  %7684 = fptoui float %7682 to i32
  %7685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7686 = extractvalue %dx.types.CBufRet.f32 %7685, 0
  %7687 = extractvalue %dx.types.CBufRet.f32 %7685, 2
  %7688 = extractvalue %dx.types.CBufRet.f32 %7685, 3
  %7689 = fadd fast float %110, -4.000000e+00
  %7690 = call float @dx.op.binary.f32(i32 35, float %7689, float 0.000000e+00)  ; FMax(a,b)
  %7691 = fadd fast float %7690, %7686
  %7692 = fmul fast float %7691, %7687
  %7693 = call float @dx.op.unary.f32(i32 23, float %7692)  ; Log(value)
  %7694 = fmul fast float %7693, %7688
  %7695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7696 = extractvalue %dx.types.CBufRet.f32 %7695, 2
  %7697 = fmul fast float %7694, %7696
  %7698 = call float @dx.op.unary.f32(i32 7, float %7697)  ; Saturate(value)
  %7699 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7700 = extractvalue %dx.types.CBufRet.i32 %7699, 1
  %7701 = add i32 %7700, -1
  %7702 = uitofp i32 %7700 to float
  %7703 = fmul fast float %7702, %7698
  %7704 = fptoui float %7703 to i32
  %7705 = call i32 @dx.op.binary.i32(i32 40, i32 %7704, i32 %7701)  ; UMin(a,b)
  %7706 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7707 = extractvalue %dx.types.CBufRet.i32 %7706, 2
  %7708 = extractvalue %dx.types.CBufRet.i32 %7706, 3
  %7709 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7684, i32 %7707, i32 %7683)  ; UMad(a,b,c)
  %7710 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7705, i32 %7708, i32 %7709)  ; UMad(a,b,c)
  %7711 = add nsw i32 %7675, -1
  %7712 = call i32 @dx.op.binary.i32(i32 37, i32 %7711, i32 0)  ; IMax(a,b)
  %7713 = call float @dx.op.binary.f32(i32 35, float %110, float 0.000000e+00)  ; FMax(a,b)
  %7714 = fptoui float %7713 to i32
  %7715 = lshr i32 %7714, 5
  %7716 = call i32 @dx.op.binary.i32(i32 40, i32 %7715, i32 8191)  ; UMin(a,b)
  %7717 = shl i32 %7716, 2
  %7718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7717, i32 undef)  ; BufferLoad(srv,index,wot)
  %7719 = extractvalue %dx.types.ResRet.i32 %7718, 0
  %7720 = lshr i32 %7719, 16
  %7721 = and i32 %7719, 65535
  %7722 = lshr i32 %7719, 21
  %7723 = lshr i32 %7721, 5
  %7724 = call i32 @dx.op.binary.i32(i32 40, i32 %7723, i32 %7712)  ; UMin(a,b)
  %7725 = icmp ugt i32 %7722, %7724
  br i1 %7725, label %8340, label %7726

; <label>:7726                                    ; preds = %7677
  br label %7727

; <label>:7727                                    ; preds = %8330, %7726
  %7728 = phi i32 [ %8337, %8330 ], [ %7722, %7726 ]
  %7729 = phi float [ %8331, %8330 ], [ %7668, %7726 ]
  %7730 = phi float [ %8332, %8330 ], [ %7669, %7726 ]
  %7731 = phi float [ %8333, %8330 ], [ %7670, %7726 ]
  %7732 = phi float [ %8334, %8330 ], [ %7671, %7726 ]
  %7733 = phi float [ %8335, %8330 ], [ %7672, %7726 ]
  %7734 = phi float [ %8336, %8330 ], [ %7673, %7726 ]
  %7735 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7736 = extractvalue %dx.types.CBufRet.i32 %7735, 0
  %7737 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7710, i32 %7736, i32 %7728)  ; UMad(a,b,c)
  %7738 = shl i32 %7737, 2
  %7739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7738, i32 undef)  ; BufferLoad(srv,index,wot)
  %7740 = extractvalue %dx.types.ResRet.i32 %7739, 0
  %7741 = shl i32 %7728, 5
  %7742 = sub nsw i32 %7720, %7741
  %7743 = call i32 @dx.op.binary.i32(i32 37, i32 %7742, i32 0)  ; IMax(a,b)
  %7744 = call i32 @dx.op.binary.i32(i32 38, i32 %7743, i32 31)  ; IMin(a,b)
  %7745 = sub nsw i32 1, %7720
  %7746 = add nsw i32 %7745, %7721
  %7747 = call i32 @dx.op.binary.i32(i32 37, i32 %7746, i32 0)  ; IMax(a,b)
  %7748 = call i32 @dx.op.binary.i32(i32 38, i32 %7747, i32 32)  ; IMin(a,b)
  %7749 = and i32 %7748, 31
  %7750 = shl i32 -1, %7749
  %7751 = xor i32 %7750, -1
  %7752 = and i32 %7744, 31
  %7753 = shl i32 %7751, %7752
  %7754 = icmp eq i32 %7748, 32
  %7755 = select i1 %7754, i32 -1, i32 %7753
  %7756 = and i32 %7755, %7740
  %7757 = icmp eq i32 %7756, 0
  br i1 %7757, label %8330, label %7758

; <label>:7758                                    ; preds = %7727
  br label %7759

; <label>:7759                                    ; preds = %7893, %7758
  %7760 = phi i32 [ %7771, %7893 ], [ %7756, %7758 ]
  %7761 = phi float [ %7894, %7893 ], [ %7729, %7758 ]
  %7762 = phi float [ %7895, %7893 ], [ %7730, %7758 ]
  %7763 = phi float [ %7896, %7893 ], [ %7731, %7758 ]
  %7764 = phi float [ %7897, %7893 ], [ %7732, %7758 ]
  %7765 = phi float [ %7898, %7893 ], [ %7733, %7758 ]
  %7766 = phi float [ %7899, %7893 ], [ %7734, %7758 ]
  %7767 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7760)  ; FirstbitLo(value)
  %7768 = add i32 %7767, %7741
  %7769 = and i32 %7767, 31
  %7770 = shl i32 1, %7769
  %7771 = xor i32 %7770, %7760
  %7772 = mul i32 %7768, 112
  %7773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7772, i32 undef)  ; BufferLoad(srv,index,wot)
  %7774 = extractvalue %dx.types.ResRet.f32 %7773, 0
  %7775 = extractvalue %dx.types.ResRet.f32 %7773, 1
  %7776 = extractvalue %dx.types.ResRet.f32 %7773, 2
  %7777 = or i32 %7772, 12
  %7778 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7777, i32 undef)  ; BufferLoad(srv,index,wot)
  %7779 = extractvalue %dx.types.ResRet.f32 %7778, 0
  %7780 = add i32 %7772, 16
  %7781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7780, i32 undef)  ; BufferLoad(srv,index,wot)
  %7782 = extractvalue %dx.types.ResRet.f32 %7781, 0
  %7783 = extractvalue %dx.types.ResRet.f32 %7781, 1
  %7784 = extractvalue %dx.types.ResRet.f32 %7781, 2
  %7785 = add i32 %7772, 28
  %7786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7785, i32 undef)  ; BufferLoad(srv,index,wot)
  %7787 = extractvalue %dx.types.ResRet.i32 %7786, 0
  %7788 = add i32 %7772, 44
  %7789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7788, i32 undef)  ; BufferLoad(srv,index,wot)
  %7790 = extractvalue %dx.types.ResRet.f32 %7789, 0
  %7791 = add i32 %7772, 48
  %7792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7791, i32 undef)  ; BufferLoad(srv,index,wot)
  %7793 = extractvalue %dx.types.ResRet.f32 %7792, 0
  %7794 = extractvalue %dx.types.ResRet.f32 %7792, 1
  %7795 = extractvalue %dx.types.ResRet.f32 %7792, 2
  %7796 = extractvalue %dx.types.ResRet.f32 %7792, 3
  %7797 = add i32 %7772, 64
  %7798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7797, i32 undef)  ; BufferLoad(srv,index,wot)
  %7799 = extractvalue %dx.types.ResRet.f32 %7798, 0
  %7800 = extractvalue %dx.types.ResRet.f32 %7798, 1
  %7801 = extractvalue %dx.types.ResRet.f32 %7798, 2
  %7802 = extractvalue %dx.types.ResRet.f32 %7798, 3
  %7803 = add i32 %7772, 80
  %7804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7803, i32 undef)  ; BufferLoad(srv,index,wot)
  %7805 = extractvalue %dx.types.ResRet.f32 %7804, 1
  %7806 = extractvalue %dx.types.ResRet.f32 %7804, 2
  %7807 = add i32 %7772, 92
  %7808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7807, i32 undef)  ; BufferLoad(srv,index,wot)
  %7809 = extractvalue %dx.types.ResRet.i32 %7808, 0
  %7810 = call float @dx.op.dot3.f32(i32 55, float %7774, float %7775, float %7776, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7811 = select i1 %278, float %7805, float %7774
  %7812 = select i1 %278, float %7810, float %7775
  %7813 = select i1 %278, float %7806, float %7776
  %7814 = and i32 %7809, 65535
  %7815 = uitofp i32 %7814 to float
  %7816 = lshr i32 %7809, 16
  %7817 = uitofp i32 %7816 to float
  %7818 = and i32 %7787, 65535
  %7819 = and i32 %7787, 50331648
  %7820 = icmp eq i32 %7819, 33554432
  %7821 = fsub fast float %7793, %206
  %7822 = fsub fast float %7794, %207
  %7823 = fsub fast float %7795, %208
  %7824 = call float @dx.op.dot3.f32(i32 55, float %7821, float %7822, float %7823, float %7821, float %7822, float %7823)  ; Dot3(ax,ay,az,bx,by,bz)
  %7825 = call float @dx.op.unary.f32(i32 24, float %7824)  ; Sqrt(value)
  %7826 = fdiv fast float 1.000000e+00, %7825
  %7827 = fmul fast float %7826, %7821
  %7828 = fmul fast float %7826, %7822
  %7829 = fmul fast float %7826, %7823
  %7830 = fadd fast float %7825, %7779
  %7831 = fdiv fast float 1.000000e+00, %7830
  %7832 = fmul float %7790, %7831
  %7833 = fmul float %7832, %7832
  %7834 = call float @dx.op.unary.f32(i32 7, float %7833)  ; Saturate(value)
  br i1 %7820, label %7835, label %7856

; <label>:7835                                    ; preds = %7759
  %7836 = fmul fast float %7801, %7782
  %7837 = fmul fast float %7801, %7783
  %7838 = fmul fast float %7801, %7784
  %7839 = fadd fast float %7821, %7836
  %7840 = fadd fast float %7822, %7837
  %7841 = fadd fast float %7823, %7838
  %7842 = call float @dx.op.dot3.f32(i32 55, float %7839, float %7840, float %7841, float %7839, float %7840, float %7841)  ; Dot3(ax,ay,az,bx,by,bz)
  %7843 = call float @dx.op.unary.f32(i32 25, float %7842)  ; Rsqrt(value)
  %7844 = fmul fast float %7843, %7839
  %7845 = fmul fast float %7843, %7840
  %7846 = fmul fast float %7843, %7841
  %7847 = fsub fast float %206, %7793
  %7848 = fsub fast float %207, %7794
  %7849 = fsub fast float %208, %7795
  %7850 = fsub fast float -0.000000e+00, %7847
  %7851 = fsub fast float -0.000000e+00, %7848
  %7852 = fsub fast float -0.000000e+00, %7849
  %7853 = call float @dx.op.dot3.f32(i32 55, float %7850, float %7851, float %7852, float %7782, float %7783, float %7784)  ; Dot3(ax,ay,az,bx,by,bz)
  %7854 = fcmp fast ogt float %7853, 0.000000e+00
  %7855 = uitofp i1 %7854 to float
  br label %7856

; <label>:7856                                    ; preds = %7835, %7759
  %7857 = phi float [ %7855, %7835 ], [ 1.000000e+00, %7759 ]
  %7858 = phi float [ %7844, %7835 ], [ %7827, %7759 ]
  %7859 = phi float [ %7845, %7835 ], [ %7828, %7759 ]
  %7860 = phi float [ %7846, %7835 ], [ %7829, %7759 ]
  %7861 = call float @dx.op.dot3.f32(i32 55, float %7782, float %7783, float %7784, float %7858, float %7859, float %7860)  ; Dot3(ax,ay,az,bx,by,bz)
  %7862 = fmul fast float %7861, %7861
  %7863 = call float @dx.op.unary.f32(i32 7, float %7862)  ; Saturate(value)
  %7864 = fsub fast float 1.000000e+00, %7863
  %7865 = fmul fast float %7864, 5.000000e-01
  %7866 = fcmp fast ogt float %7861, 0.000000e+00
  %7867 = fsub fast float 1.000000e+00, %7865
  %7868 = select i1 %7866, float %7865, float %7867
  %7869 = fmul fast float %7868, %7817
  %7870 = fadd fast float %7869, %7815
  %7871 = fmul fast float %7870, 0x3EF0001000000000
  %7872 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %55, float %7871, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7873 = extractvalue %dx.types.ResRet.f32 %7872, 0
  %7874 = fmul fast float %7861, %7799
  %7875 = fadd fast float %7874, %7800
  %7876 = call float @dx.op.unary.f32(i32 7, float %7875)  ; Saturate(value)
  %7877 = select i1 %7820, float 1.000000e+00, float %7876
  %7878 = select i1 %7820, float %7876, float 1.000000e+00
  %7879 = fmul fast float %7825, %7796
  %7880 = fsub fast float 1.000000e+00, %7879
  %7881 = fmul fast float %7880, %7802
  %7882 = call float @dx.op.unary.f32(i32 7, float %7881)  ; Saturate(value)
  %7883 = fmul fast float %7882, %7878
  %7884 = fmul fast float %7883, 2.000000e+00
  %7885 = fsub fast float 3.000000e+00, %7884
  %7886 = fmul fast float %7873, %7857
  %7887 = fmul fast float %7883, %7883
  %7888 = fmul fast float %7887, %7886
  %7889 = fmul fast float %7888, %7885
  %7890 = call float @dx.op.binary.f32(i32 36, float %7889, float %7889)  ; FMin(a,b)
  %7891 = call float @dx.op.binary.f32(i32 36, float %7889, float %7890)  ; FMin(a,b)
  %7892 = fcmp fast ogt float %7891, 0.000000e+00
  br i1 %7892, label %7901, label %7893, !dx.controlflow.hints !137

; <label>:7893                                    ; preds = %8286, %8047, %7856
  %7894 = phi float [ %7761, %8047 ], [ %7761, %7856 ], [ %8326, %8286 ]
  %7895 = phi float [ %7762, %8047 ], [ %7762, %7856 ], [ %8327, %8286 ]
  %7896 = phi float [ %7763, %8047 ], [ %7763, %7856 ], [ %8328, %8286 ]
  %7897 = phi float [ %7764, %8047 ], [ %7764, %7856 ], [ %8320, %8286 ]
  %7898 = phi float [ %7765, %8047 ], [ %7765, %7856 ], [ %8321, %8286 ]
  %7899 = phi float [ %7766, %8047 ], [ %7766, %7856 ], [ %8322, %8286 ]
  %7900 = icmp eq i32 %7760, %7770
  br i1 %7900, label %8329, label %7759

; <label>:7901                                    ; preds = %7856
  %7902 = icmp eq i32 %7818, 255
  br i1 %7902, label %8047, label %7903, !dx.controlflow.hints !138

; <label>:7903                                    ; preds = %7901
  %7904 = mul nuw nsw i32 %7818, 176
  %7905 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7904, i32 undef)  ; BufferLoad(srv,index,wot)
  %7906 = extractvalue %dx.types.ResRet.f32 %7905, 0
  %7907 = extractvalue %dx.types.ResRet.f32 %7905, 1
  %7908 = extractvalue %dx.types.ResRet.f32 %7905, 2
  %7909 = extractvalue %dx.types.ResRet.f32 %7905, 3
  %7910 = add nuw nsw i32 %7904, 16
  %7911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7910, i32 undef)  ; BufferLoad(srv,index,wot)
  %7912 = extractvalue %dx.types.ResRet.f32 %7911, 0
  %7913 = extractvalue %dx.types.ResRet.f32 %7911, 1
  %7914 = add nuw nsw i32 %7904, 32
  %7915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7914, i32 undef)  ; BufferLoad(srv,index,wot)
  %7916 = extractvalue %dx.types.ResRet.f32 %7915, 0
  %7917 = extractvalue %dx.types.ResRet.f32 %7915, 1
  %7918 = extractvalue %dx.types.ResRet.f32 %7915, 2
  %7919 = add nuw nsw i32 %7904, 48
  %7920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7919, i32 undef)  ; BufferLoad(srv,index,wot)
  %7921 = extractvalue %dx.types.ResRet.f32 %7920, 0
  %7922 = extractvalue %dx.types.ResRet.f32 %7920, 1
  %7923 = extractvalue %dx.types.ResRet.f32 %7920, 2
  %7924 = extractvalue %dx.types.ResRet.f32 %7920, 3
  %7925 = add nuw nsw i32 %7904, 64
  %7926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7925, i32 undef)  ; BufferLoad(srv,index,wot)
  %7927 = extractvalue %dx.types.ResRet.f32 %7926, 0
  %7928 = extractvalue %dx.types.ResRet.f32 %7926, 1
  %7929 = extractvalue %dx.types.ResRet.f32 %7926, 2
  %7930 = extractvalue %dx.types.ResRet.f32 %7926, 3
  %7931 = add nuw nsw i32 %7904, 80
  %7932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7931, i32 undef)  ; BufferLoad(srv,index,wot)
  %7933 = extractvalue %dx.types.ResRet.f32 %7932, 0
  %7934 = extractvalue %dx.types.ResRet.f32 %7932, 1
  %7935 = extractvalue %dx.types.ResRet.f32 %7932, 2
  %7936 = extractvalue %dx.types.ResRet.f32 %7932, 3
  %7937 = add nuw nsw i32 %7904, 96
  %7938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7937, i32 undef)  ; BufferLoad(srv,index,wot)
  %7939 = extractvalue %dx.types.ResRet.f32 %7938, 0
  %7940 = extractvalue %dx.types.ResRet.f32 %7938, 1
  %7941 = extractvalue %dx.types.ResRet.f32 %7938, 2
  %7942 = extractvalue %dx.types.ResRet.f32 %7938, 3
  %7943 = bitcast float %7913 to i32
  %7944 = fmul fast float %7918, %132
  %7945 = fmul fast float %7918, %134
  %7946 = fmul fast float %7918, %136
  %7947 = fadd fast float %7944, %206
  %7948 = fadd fast float %7945, %207
  %7949 = fadd fast float %7946, %208
  %7950 = fmul fast float %7947, %7921
  %7951 = call float @dx.op.tertiary.f32(i32 46, float %7948, float %7927, float %7950)  ; FMad(a,b,c)
  %7952 = call float @dx.op.tertiary.f32(i32 46, float %7949, float %7933, float %7951)  ; FMad(a,b,c)
  %7953 = fadd fast float %7952, %7939
  %7954 = fmul fast float %7947, %7922
  %7955 = call float @dx.op.tertiary.f32(i32 46, float %7948, float %7928, float %7954)  ; FMad(a,b,c)
  %7956 = call float @dx.op.tertiary.f32(i32 46, float %7949, float %7934, float %7955)  ; FMad(a,b,c)
  %7957 = fadd fast float %7956, %7940
  %7958 = fmul fast float %7947, %7923
  %7959 = call float @dx.op.tertiary.f32(i32 46, float %7948, float %7929, float %7958)  ; FMad(a,b,c)
  %7960 = call float @dx.op.tertiary.f32(i32 46, float %7949, float %7935, float %7959)  ; FMad(a,b,c)
  %7961 = fadd fast float %7960, %7941
  %7962 = fmul fast float %7947, %7924
  %7963 = call float @dx.op.tertiary.f32(i32 46, float %7948, float %7930, float %7962)  ; FMad(a,b,c)
  %7964 = call float @dx.op.tertiary.f32(i32 46, float %7949, float %7936, float %7963)  ; FMad(a,b,c)
  %7965 = fadd fast float %7964, %7942
  %7966 = fdiv fast float %7953, %7965
  %7967 = fdiv fast float %7957, %7965
  %7968 = fdiv fast float %7961, %7965
  %7969 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7968)  ; FMax(a,b)
  %7970 = fmul fast float %289, 0x401921FB60000000
  %7971 = call float @dx.op.unary.f32(i32 13, float %7970)  ; Sin(value)
  %7972 = call float @dx.op.unary.f32(i32 12, float %7970)  ; Cos(value)
  %7973 = fmul fast float %7972, %7917
  %7974 = call float @dx.op.tertiary.f32(i32 46, float %7971, float %7917, float 0.000000e+00)  ; FMad(a,b,c)
  %7975 = fmul fast float %7917, %7971
  %7976 = fsub fast float -0.000000e+00, %7975
  %7977 = call float @dx.op.tertiary.f32(i32 46, float %7972, float %7917, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7978

; <label>:7978                                    ; preds = %7978, %7903
  %7979 = phi float [ 0.000000e+00, %7903 ], [ %8011, %7978 ]
  %7980 = phi float [ 0.000000e+00, %7903 ], [ %8013, %7978 ]
  %7981 = phi i32 [ 0, %7903 ], [ %8014, %7978 ]
  %7982 = mul i32 %7981, 2
  %7983 = add i32 0, %7982
  %7984 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7983
  %7985 = load float, float* %7984, align 4
  %7986 = mul i32 %7981, 2
  %7987 = add i32 1, %7986
  %7988 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7987
  %7989 = load float, float* %7988, align 4
  %7990 = fmul fast float %7973, %7985
  %7991 = call float @dx.op.tertiary.f32(i32 46, float %7989, float %7976, float %7990)  ; FMad(a,b,c)
  %7992 = fmul fast float %7985, %7974
  %7993 = call float @dx.op.tertiary.f32(i32 46, float %7989, float %7977, float %7992)  ; FMad(a,b,c)
  %7994 = fadd fast float %7991, %7966
  %7995 = fadd fast float %7993, %7967
  %7996 = fmul fast float %7994, %7912
  %7997 = fmul fast float %7995, %7912
  %7998 = call float @dx.op.binary.f32(i32 35, float %7996, float %7908)  ; FMax(a,b)
  %7999 = call float @dx.op.binary.f32(i32 35, float %7997, float %7908)  ; FMax(a,b)
  %8000 = call float @dx.op.binary.f32(i32 36, float %7998, float %7909)  ; FMin(a,b)
  %8001 = call float @dx.op.binary.f32(i32 36, float %7999, float %7909)  ; FMin(a,b)
  %8002 = fadd fast float %8000, %7906
  %8003 = fadd fast float %8001, %7907
  %8004 = uitofp i32 %7943 to float
  %8005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %8002, float %8003, float %8004, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8006 = extractvalue %dx.types.ResRet.f32 %8005, 0
  %8007 = fsub fast float %8006, %7969
  %8008 = fsub fast float %8007, %7916
  %8009 = fcmp fast ogt float %8008, 0.000000e+00
  %8010 = select i1 %8009, float 1.000000e+00, float 0.000000e+00
  %8011 = fadd fast float %8010, %7979
  %8012 = select i1 %8009, float %8008, float 0.000000e+00
  %8013 = fadd fast float %8012, %7980
  %8014 = add nuw nsw i32 %7981, 1
  %8015 = icmp eq i32 %8014, 8
  br i1 %8015, label %8016, label %7978

; <label>:8016                                    ; preds = %7978
  %8017 = fdiv fast float 1.000000e+00, %8011
  %8018 = fmul fast float %8017, %8013
  %8019 = fdiv fast float 1.000000e+00, %7969
  %8020 = fmul fast float %8018, %8019
  %8021 = call float @dx.op.unary.f32(i32 7, float %8020)  ; Saturate(value)
  %8022 = call float @dx.op.binary.f32(i32 35, float %8021, float 0.000000e+00)  ; FMax(a,b)
  %8023 = fmul fast float %8011, 1.250000e-01
  %8024 = call float @dx.op.unary.f32(i32 7, float %8023)  ; Saturate(value)
  %8025 = fmul fast float %8024, 2.000000e+00
  %8026 = fadd fast float %8025, -1.000000e+00
  %8027 = fcmp fast ogt float %8026, 0.000000e+00
  %8028 = fcmp fast olt float %8026, 0.000000e+00
  %8029 = zext i1 %8027 to i32
  %8030 = zext i1 %8028 to i32
  %8031 = sub nsw i32 %8029, %8030
  %8032 = sitofp i32 %8031 to float
  %8033 = fmul fast float %8032, %8026
  %8034 = fsub fast float 1.000000e+00, %8033
  %8035 = fmul fast float %8034, %8034
  %8036 = fmul fast float %8035, %8034
  %8037 = fsub fast float %8034, %8036
  %8038 = fmul fast float %8037, %8022
  %8039 = fsub fast float 1.000000e+00, %8036
  %8040 = fsub fast float %8039, %8038
  %8041 = fmul fast float %8032, 5.000000e-01
  %8042 = fmul fast float %8041, %8040
  %8043 = fsub fast float -5.000000e-01, %8042
  %8044 = fmul fast float %8043, %7877
  %8045 = fadd fast float %8044, 1.000000e+00
  %8046 = fmul fast float %8045, %7889
  br label %8047

; <label>:8047                                    ; preds = %8016, %7901
  %8048 = phi float [ %8046, %8016 ], [ %7889, %7901 ]
  %8049 = call float @dx.op.binary.f32(i32 36, float %8048, float %8048)  ; FMin(a,b)
  %8050 = call float @dx.op.binary.f32(i32 36, float %8048, float %8049)  ; FMin(a,b)
  %8051 = fcmp fast ogt float %8050, 0.000000e+00
  br i1 %8051, label %8052, label %7893, !dx.controlflow.hints !139

; <label>:8052                                    ; preds = %8047
  %8053 = fmul fast float %8048, %7811
  %8054 = fmul fast float %8048, %7812
  %8055 = fmul fast float %8048, %7813
  %8056 = fsub fast float %7795, %4307
  %8057 = fcmp fast ogt float %8056, 0.000000e+00
  %8058 = fsub fast float %208, %4307
  %8059 = fcmp fast ogt float %8058, 0.000000e+00
  %8060 = xor i1 %8059, %8057
  %8061 = fsub fast float %4307, %7795
  %8062 = fmul fast float %8061, 2.000000e+00
  %8063 = fadd fast float %8062, %7795
  %8064 = select i1 %8060, float %7795, float %8063
  %8065 = fsub fast float %8064, %208
  %8066 = call float @dx.op.dot3.f32(i32 55, float %7821, float %7822, float %8065, float %7821, float %7822, float %8065)  ; Dot3(ax,ay,az,bx,by,bz)
  %8067 = call float @dx.op.unary.f32(i32 25, float %8066)  ; Rsqrt(value)
  %8068 = fmul fast float %8067, %7821
  %8069 = fmul fast float %8067, %7822
  %8070 = fmul fast float %8067, %8065
  %8071 = fsub fast float %4307, %208
  %8072 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8071)  ; Dot3(ax,ay,az,bx,by,bz)
  %8073 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8068, float %8069, float %8070)  ; Dot3(ax,ay,az,bx,by,bz)
  %8074 = fdiv fast float 1.000000e+00, %8073
  %8075 = fmul fast float %8074, %8072
  %8076 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8058, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8077 = fcmp fast ogt float %8076, 0.000000e+00
  %8078 = fcmp fast olt float %8076, 0.000000e+00
  %8079 = zext i1 %8077 to i32
  %8080 = zext i1 %8078 to i32
  %8081 = sub nsw i32 %8079, %8080
  %8082 = sitofp i32 %8081 to float
  %8083 = fsub fast float %8064, %4307
  %8084 = call float @dx.op.dot3.f32(i32 55, float %7821, float %7822, float %8083, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8085 = fcmp fast ogt float %8084, 0.000000e+00
  %8086 = fcmp fast olt float %8084, 0.000000e+00
  %8087 = zext i1 %8085 to i32
  %8088 = zext i1 %8086 to i32
  %8089 = sub nsw i32 %8087, %8088
  %8090 = sitofp i32 %8089 to float
  %8091 = fcmp fast une float %8082, %8090
  br i1 %8091, label %8092, label %8102

; <label>:8092                                    ; preds = %8052
  %8093 = fmul fast float %8075, %8070
  %8094 = fmul fast float %8075, %8069
  %8095 = fmul fast float %8075, %8068
  %8096 = fmul fast float %8095, %8095
  %8097 = fmul fast float %8094, %8094
  %8098 = fadd fast float %8096, %8097
  %8099 = fmul fast float %8093, %8093
  %8100 = fadd fast float %8098, %8099
  %8101 = call float @dx.op.unary.f32(i32 24, float %8100)  ; Sqrt(value)
  br label %8114

; <label>:8102                                    ; preds = %8052
  %8103 = icmp slt i32 %8081, 0
  br i1 %8103, label %8104, label %8114

; <label>:8104                                    ; preds = %8102
  %8105 = fsub fast float %206, %7793
  %8106 = fsub fast float %207, %7794
  %8107 = fsub fast float %208, %8064
  %8108 = fmul fast float %8105, %8105
  %8109 = fmul fast float %8106, %8106
  %8110 = fadd fast float %8108, %8109
  %8111 = fmul fast float %8107, %8107
  %8112 = fadd fast float %8110, %8111
  %8113 = call float @dx.op.unary.f32(i32 24, float %8112)  ; Sqrt(value)
  br label %8114

; <label>:8114                                    ; preds = %8104, %8102, %8092
  %8115 = phi float [ %8101, %8092 ], [ %8113, %8104 ], [ 0.000000e+00, %8102 ]
  %8116 = and i1 %8059, %8057
  %8117 = fsub fast float -0.000000e+00, %8115
  %8118 = select i1 %8116, float -0.000000e+00, float %8117
  %8119 = fmul fast float %4304, 0x3FF7154760000000
  %8120 = fmul fast float %8119, %8118
  %8121 = fmul fast float %4305, 0x3FF7154760000000
  %8122 = fmul fast float %8121, %8118
  %8123 = fmul fast float %4306, 0x3FF7154760000000
  %8124 = fmul fast float %8123, %8118
  %8125 = call float @dx.op.unary.f32(i32 21, float %8120)  ; Exp(value)
  %8126 = call float @dx.op.unary.f32(i32 21, float %8122)  ; Exp(value)
  %8127 = call float @dx.op.unary.f32(i32 21, float %8124)  ; Exp(value)
  %8128 = call float @dx.op.unary.f32(i32 7, float %8125)  ; Saturate(value)
  %8129 = call float @dx.op.unary.f32(i32 7, float %8126)  ; Saturate(value)
  %8130 = call float @dx.op.unary.f32(i32 7, float %8127)  ; Saturate(value)
  %8131 = fmul fast float %8053, %8128
  %8132 = fmul fast float %8054, %8129
  %8133 = fmul fast float %8055, %8130
  %8134 = fsub fast float %7827, %5096
  %8135 = fsub fast float %7828, %5095
  %8136 = fsub fast float %7829, %5094
  %8137 = call float @dx.op.dot3.f32(i32 55, float %8134, float %8135, float %8136, float %8134, float %8135, float %8136)  ; Dot3(ax,ay,az,bx,by,bz)
  %8138 = call float @dx.op.unary.f32(i32 25, float %8137)  ; Rsqrt(value)
  %8139 = fmul fast float %8138, %8134
  %8140 = fmul fast float %8138, %8135
  %8141 = fmul fast float %8138, %8136
  %8142 = call float @dx.op.dot3.f32(i32 55, float %7827, float %7828, float %7829, float %5103, float %5104, float %5105)  ; Dot3(ax,ay,az,bx,by,bz)
  %8143 = call float @dx.op.dot3.f32(i32 55, float %5093, float %5092, float %5091, float %8139, float %8140, float %8141)  ; Dot3(ax,ay,az,bx,by,bz)
  %8144 = call float @dx.op.unary.f32(i32 7, float %8142)  ; Saturate(value)
  %8145 = fmul fast float %8144, %7834
  %8146 = bitcast i32 %5135 to float
  %8147 = fmul fast float %8144, %8144
  %8148 = fmul fast float %8147, %8146
  %8149 = call float @dx.op.unary.f32(i32 7, float %8148)  ; Saturate(value)
  %8150 = fmul fast float %8145, %8149
  %8151 = bitcast float %7824 to i32
  %8152 = ashr i32 %8151, 1
  %8153 = sub nsw i32 1597463007, %8152
  %8154 = bitcast i32 %8153 to float
  %8155 = fmul fast float %8154, %7821
  %8156 = fmul fast float %8154, %7822
  %8157 = fmul fast float %8154, %7823
  %8158 = fsub fast float %8155, %5096
  %8159 = fsub fast float %8156, %5095
  %8160 = fsub fast float %8157, %5094
  %8161 = call float @dx.op.dot3.f32(i32 55, float %8158, float %8159, float %8160, float %8158, float %8159, float %8160)  ; Dot3(ax,ay,az,bx,by,bz)
  %8162 = call float @dx.op.unary.f32(i32 25, float %8161)  ; Rsqrt(value)
  %8163 = fmul fast float %8158, %8162
  %8164 = fmul fast float %8159, %8162
  %8165 = fmul fast float %8160, %8162
  %8166 = call float @dx.op.dot3.f32(i32 55, float %5103, float %5104, float %5105, float %8163, float %8164, float %8165)  ; Dot3(ax,ay,az,bx,by,bz)
  %8167 = fmul fast float %8166, %8166
  %8168 = call float @dx.op.unary.f32(i32 6, float %8142)  ; FAbs(value)
  %8169 = fsub fast float 1.000000e+00, %5129
  %8170 = fmul fast float %5111, %5111
  %8171 = fmul fast float %8170, %8169
  %8172 = fadd fast float %8171, %5129
  %8173 = bitcast float %8172 to i32
  %8174 = ashr i32 %8173, 1
  %8175 = add nsw i32 %8174, 532487669
  %8176 = bitcast i32 %8175 to float
  %8177 = fadd fast float %8176, %5111
  %8178 = fmul fast float %5129, %8167
  %8179 = fsub fast float 1.000000e+00, %8167
  %8180 = fadd fast float %8179, %8178
  %8181 = fmul fast float %8168, %8168
  %8182 = fmul fast float %8181, %8169
  %8183 = fadd fast float %8182, %5129
  %8184 = bitcast float %8183 to i32
  %8185 = ashr i32 %8184, 1
  %8186 = add nsw i32 %8185, 532487669
  %8187 = bitcast i32 %8186 to float
  %8188 = fadd fast float %8187, %8168
  %8189 = fmul fast float %8180, %8180
  %8190 = fmul fast float %8189, %8177
  %8191 = fmul fast float %8190, %8188
  %8192 = fdiv fast float 1.000000e+00, %8191
  %8193 = bitcast float %5129 to i32
  %8194 = sitofp i32 %8193 to float
  %8195 = fmul fast float %8194, 0x3FE7F73180000000
  %8196 = fadd fast float %8195, 0x41AFE27C40000000
  %8197 = fptosi float %8196 to i32
  %8198 = bitcast i32 %8197 to float
  %8199 = fmul fast float %7790, 0x3FD80E9D60000000
  %8200 = fmul fast float %8199, %8154
  %8201 = fadd fast float %8198, %8200
  %8202 = bitcast float %8201 to i32
  %8203 = sub nsw i32 2129859010, %8202
  %8204 = bitcast i32 %8203 to float
  %8205 = fmul fast float %5129, %8192
  %8206 = fmul fast float %8205, %8198
  %8207 = fmul fast float %8206, %8204
  %8208 = call float @dx.op.unary.f32(i32 6, float %8143)  ; FAbs(value)
  %8209 = fsub fast float 1.000000e+00, %8208
  %8210 = bitcast float %8209 to i32
  %8211 = sitofp i32 %8210 to float
  %8212 = fmul fast float %8211, 5.000000e+00
  %8213 = fadd fast float %8212, 0xC1EFBF8940000000
  %8214 = fptosi float %8213 to i32
  %8215 = bitcast i32 %8214 to float
  %8216 = fsub fast float 1.000000e+00, %5100
  %8217 = fsub fast float 1.000000e+00, %5101
  %8218 = fsub fast float 1.000000e+00, %5109
  %8219 = fmul fast float %8215, %8216
  %8220 = fmul fast float %8215, %8217
  %8221 = fmul fast float %8215, %8218
  %8222 = fadd fast float %8219, %5100
  %8223 = fadd fast float %8220, %5101
  %8224 = fadd fast float %8221, %5109
  br i1 %5383, label %8225, label %8248

; <label>:8225                                    ; preds = %8114
  %8226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3902, float %8208, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8227 = extractvalue %dx.types.ResRet.f32 %8226, 0
  %8228 = extractvalue %dx.types.ResRet.f32 %8226, 1
  %8229 = extractvalue %dx.types.ResRet.f32 %8226, 2
  %8230 = fadd fast float %8227, -5.000000e-01
  %8231 = fadd fast float %8228, -5.000000e-01
  %8232 = fadd fast float %8229, -5.000000e-01
  %8233 = fmul fast float %5100, 4.000000e+00
  %8234 = fmul fast float %8233, %8216
  %8235 = fmul fast float %8234, %8230
  %8236 = fmul fast float %5101, 4.000000e+00
  %8237 = fmul fast float %8236, %8217
  %8238 = fmul fast float %8237, %8231
  %8239 = fmul fast float %5109, 4.000000e+00
  %8240 = fmul fast float %8239, %8218
  %8241 = fmul fast float %8240, %8232
  %8242 = fadd fast float %8235, %8222
  %8243 = fadd fast float %8238, %8223
  %8244 = fadd fast float %8241, %8224
  %8245 = call float @dx.op.unary.f32(i32 7, float %8242)  ; Saturate(value)
  %8246 = call float @dx.op.unary.f32(i32 7, float %8243)  ; Saturate(value)
  %8247 = call float @dx.op.unary.f32(i32 7, float %8244)  ; Saturate(value)
  br label %8248

; <label>:8248                                    ; preds = %8225, %8114
  %8249 = phi float [ %8245, %8225 ], [ %8222, %8114 ]
  %8250 = phi float [ %8246, %8225 ], [ %8223, %8114 ]
  %8251 = phi float [ %8247, %8225 ], [ %8224, %8114 ]
  %8252 = fmul fast float %8142, 9.843750e-01
  %8253 = fadd fast float %8252, 7.812500e-03
  %8254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %8253, float %5373, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8255 = extractvalue %dx.types.ResRet.f32 %8254, 2
  %8256 = extractvalue %dx.types.ResRet.f32 %8254, 3
  %8257 = fmul fast float %8255, %5100
  %8258 = fmul fast float %8255, %5101
  %8259 = fmul fast float %8255, %5109
  %8260 = fadd fast float %8257, %8256
  %8261 = fadd fast float %8258, %8256
  %8262 = fadd fast float %8259, %8256
  br i1 %5383, label %8263, label %8286

; <label>:8263                                    ; preds = %8248
  %8264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3902, float %8142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8265 = extractvalue %dx.types.ResRet.f32 %8264, 0
  %8266 = extractvalue %dx.types.ResRet.f32 %8264, 1
  %8267 = extractvalue %dx.types.ResRet.f32 %8264, 2
  %8268 = fadd fast float %8265, -5.000000e-01
  %8269 = fadd fast float %8266, -5.000000e-01
  %8270 = fadd fast float %8267, -5.000000e-01
  %8271 = fmul fast float %5100, 4.000000e+00
  %8272 = fmul fast float %8271, %8216
  %8273 = fmul fast float %8272, %8268
  %8274 = fmul fast float %5101, 4.000000e+00
  %8275 = fmul fast float %8274, %8217
  %8276 = fmul fast float %8275, %8269
  %8277 = fmul fast float %5109, 4.000000e+00
  %8278 = fmul fast float %8277, %8218
  %8279 = fmul fast float %8278, %8270
  %8280 = fadd fast float %8273, %8260
  %8281 = fadd fast float %8276, %8261
  %8282 = fadd fast float %8279, %8262
  %8283 = call float @dx.op.unary.f32(i32 7, float %8280)  ; Saturate(value)
  %8284 = call float @dx.op.unary.f32(i32 7, float %8281)  ; Saturate(value)
  %8285 = call float @dx.op.unary.f32(i32 7, float %8282)  ; Saturate(value)
  br label %8286

; <label>:8286                                    ; preds = %8263, %8248
  %8287 = phi float [ %8283, %8263 ], [ %8260, %8248 ]
  %8288 = phi float [ %8284, %8263 ], [ %8261, %8248 ]
  %8289 = phi float [ %8285, %8263 ], [ %8262, %8248 ]
  %8290 = call float @dx.op.binary.f32(i32 35, float %8288, float %8289)  ; FMax(a,b)
  %8291 = call float @dx.op.binary.f32(i32 35, float %8287, float %8290)  ; FMax(a,b)
  %8292 = fsub fast float 1.000000e+00, %8291
  %8293 = fmul fast float %8249, %8207
  %8294 = fmul fast float %8250, %8207
  %8295 = fmul fast float %8251, %8207
  %8296 = fsub fast float 1.000000e+00, %8143
  %8297 = bitcast float %8296 to i32
  %8298 = sitofp i32 %8297 to float
  %8299 = fmul fast float %8298, 5.000000e+00
  %8300 = fadd fast float %8299, 0xC1EFBF8940000000
  %8301 = fptosi float %8300 to i32
  %8302 = bitcast i32 %8301 to float
  %8303 = fmul fast float %8302, %3903
  %8304 = fmul fast float %8292, %8303
  %8305 = fmul fast float %8304, %5925
  %8306 = fmul fast float %8304, %5926
  %8307 = fmul fast float %8304, %5927
  %8308 = fadd fast float %8305, %8293
  %8309 = fadd fast float %8306, %8294
  %8310 = fadd fast float %8307, %8295
  %8311 = fmul fast float %8131, %3899
  %8312 = fmul fast float %8311, %8150
  %8313 = fmul fast float %8312, %8292
  %8314 = fmul fast float %8132, %3899
  %8315 = fmul fast float %8314, %8150
  %8316 = fmul fast float %8315, %8292
  %8317 = fmul fast float %8133, %3899
  %8318 = fmul fast float %8317, %8150
  %8319 = fmul fast float %8318, %8292
  %8320 = fadd fast float %8313, %7764
  %8321 = fadd fast float %8316, %7765
  %8322 = fadd fast float %8319, %7766
  %8323 = fmul fast float %8312, %8308
  %8324 = fmul fast float %8315, %8309
  %8325 = fmul fast float %8318, %8310
  %8326 = fadd fast float %8323, %7761
  %8327 = fadd fast float %8324, %7762
  %8328 = fadd fast float %8325, %7763
  br label %7893

; <label>:8329                                    ; preds = %7893
  br label %8330

; <label>:8330                                    ; preds = %8329, %7727
  %8331 = phi float [ %7729, %7727 ], [ %7894, %8329 ]
  %8332 = phi float [ %7730, %7727 ], [ %7895, %8329 ]
  %8333 = phi float [ %7731, %7727 ], [ %7896, %8329 ]
  %8334 = phi float [ %7732, %7727 ], [ %7897, %8329 ]
  %8335 = phi float [ %7733, %7727 ], [ %7898, %8329 ]
  %8336 = phi float [ %7734, %7727 ], [ %7899, %8329 ]
  %8337 = add i32 %7728, 1
  %8338 = icmp ugt i32 %8337, %7724
  br i1 %8338, label %8339, label %7727

; <label>:8339                                    ; preds = %8330
  br label %8340

; <label>:8340                                    ; preds = %8339, %7677, %7667
  %8341 = phi float [ %7668, %7667 ], [ %7668, %7677 ], [ %8331, %8339 ]
  %8342 = phi float [ %7669, %7667 ], [ %7669, %7677 ], [ %8332, %8339 ]
  %8343 = phi float [ %7670, %7667 ], [ %7670, %7677 ], [ %8333, %8339 ]
  %8344 = phi float [ %7671, %7667 ], [ %7671, %7677 ], [ %8334, %8339 ]
  %8345 = phi float [ %7672, %7667 ], [ %7672, %7677 ], [ %8335, %8339 ]
  %8346 = phi float [ %7673, %7667 ], [ %7673, %7677 ], [ %8336, %8339 ]
  %8347 = fmul fast float %3899, %3899
  %8348 = fsub fast float 1.000000e+00, %8347
  %8349 = call float @dx.op.dot3.f32(i32 55, float %8348, float %8348, float %8348, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8350 = fsub fast float 1.000000e+00, %8349
  %8351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8352 = extractvalue %dx.types.CBufRet.f32 %8351, 0
  %8353 = fmul fast float %8352, %5931
  %8354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8355 = extractvalue %dx.types.CBufRet.f32 %8354, 3
  %8356 = fsub fast float 1.000000e+00, %3907
  %8357 = call float @dx.op.unary.f32(i32 7, float %8356)  ; Saturate(value)
  %8358 = fadd fast float %8346, %3905
  %8359 = fmul fast float %8358, %3907
  %8360 = fmul fast float %8357, %8355
  %8361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8362 = extractvalue %dx.types.CBufRet.f32 %8361, 3
  %8363 = fmul fast float %8344, %5097
  %8364 = fmul fast float %8345, %5098
  %8365 = fmul fast float %8346, %5099
  %8366 = fcmp fast ogt float %110, %241
  %8367 = and i1 %8366, %4310
  %8368 = or i1 %4316, %8367
  %8369 = icmp eq i32 %4309, 2
  %8370 = fcmp fast ole float %110, %241
  %8371 = and i1 %8370, %8369
  %8372 = or i1 %8371, %8368
  br i1 %8367, label %8373, label %8630

; <label>:8373                                    ; preds = %8340
  %8374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8375 = extractvalue %dx.types.CBufRet.f32 %8374, 2
  %8376 = extractvalue %dx.types.CBufRet.f32 %8374, 3
  %8377 = fmul fast float %8375, %123
  %8378 = fmul fast float %8376, %124
  %8379 = call float @dx.op.unary.f32(i32 7, float %8377)  ; Saturate(value)
  %8380 = call float @dx.op.unary.f32(i32 7, float %8378)  ; Saturate(value)
  %8381 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8379, float %8380, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8382 = extractvalue %dx.types.ResRet.f32 %8381, 0
  %8383 = extractvalue %dx.types.ResRet.f32 %8381, 1
  %8384 = extractvalue %dx.types.ResRet.f32 %8381, 2
  %8385 = extractvalue %dx.types.ResRet.f32 %8381, 3
  %8386 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8379, float %8380, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8387 = extractvalue %dx.types.ResRet.f32 %8386, 0
  %8388 = extractvalue %dx.types.ResRet.f32 %8386, 1
  %8389 = extractvalue %dx.types.ResRet.f32 %8386, 2
  %8390 = extractvalue %dx.types.ResRet.f32 %8386, 3
  %8391 = call float @dx.op.binary.f32(i32 35, float %8383, float %8384)  ; FMax(a,b)
  %8392 = call float @dx.op.binary.f32(i32 35, float %8382, float %8391)  ; FMax(a,b)
  %8393 = call float @dx.op.binary.f32(i32 35, float %8392, float %8385)  ; FMax(a,b)
  %8394 = call float @dx.op.binary.f32(i32 36, float %8388, float %8389)  ; FMin(a,b)
  %8395 = call float @dx.op.binary.f32(i32 36, float %8387, float %8394)  ; FMin(a,b)
  %8396 = call float @dx.op.binary.f32(i32 36, float %8395, float %8390)  ; FMin(a,b)
  %8397 = fmul fast float %8393, 2.550000e+02
  %8398 = fadd fast float %8397, 0x3F70101020000000
  %8399 = fptoui float %8398 to i32
  %8400 = fmul fast float %8396, 2.550000e+02
  %8401 = fadd fast float %8400, 0x3F70101020000000
  %8402 = fptoui float %8401 to i32
  %8403 = icmp ult i32 %8399, %8402
  br i1 %8403, label %8404, label %8572

; <label>:8404                                    ; preds = %8373
  %8405 = fcmp fast ogt float %109, 9.843750e-01
  %8406 = fadd fast float %110, -4.000000e+00
  %8407 = select i1 %8405, float -4.000000e+00, float %8406
  %8408 = call float @dx.op.binary.f32(i32 35, float %8407, float 0.000000e+00)  ; FMax(a,b)
  %8409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8410 = extractvalue %dx.types.CBufRet.f32 %8409, 0
  %8411 = fadd fast float %8410, %8408
  %8412 = extractvalue %dx.types.CBufRet.f32 %8409, 2
  %8413 = fmul fast float %8411, %8412
  %8414 = call float @dx.op.unary.f32(i32 23, float %8413)  ; Log(value)
  %8415 = extractvalue %dx.types.CBufRet.f32 %8409, 3
  %8416 = fmul fast float %8415, %8414
  %8417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8418 = extractvalue %dx.types.CBufRet.f32 %8417, 2
  %8419 = fmul fast float %8416, %8418
  %8420 = call float @dx.op.unary.f32(i32 7, float %8419)  ; Saturate(value)
  %8421 = uitofp i32 %8399 to float
  %8422 = uitofp i32 %8402 to float
  %8423 = fadd fast float %8421, 5.000000e-01
  %8424 = fadd fast float %8422, 5.000000e-01
  %8425 = fmul fast float %8418, %8423
  %8426 = fmul fast float %8418, %8424
  %8427 = fadd fast float %8425, 0x3F0FFB4800000000
  %8428 = fadd fast float %8426, 0xBF0FFB4800000000
  %8429 = call float @dx.op.binary.f32(i32 35, float %8420, float %8427)  ; FMax(a,b)
  %8430 = call float @dx.op.binary.f32(i32 36, float %8429, float %8428)  ; FMin(a,b)
  %8431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8432 = extractvalue %dx.types.CBufRet.f32 %8431, 1
  %8433 = extractvalue %dx.types.CBufRet.f32 %8431, 2
  %8434 = extractvalue %dx.types.CBufRet.f32 %8431, 0
  %8435 = fmul fast float %8432, %8430
  %8436 = fadd fast float %8434, %8435
  %8437 = fadd fast float %8434, %8433
  %8438 = fsub fast float %8432, %8433
  %8439 = fadd fast float %8438, %8434
  %8440 = call float @dx.op.binary.f32(i32 35, float %8436, float %8437)  ; FMax(a,b)
  %8441 = call float @dx.op.binary.f32(i32 36, float %8440, float %8439)  ; FMin(a,b)
  %8442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %8379, float %8380, float %8441, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8443 = extractvalue %dx.types.ResRet.f32 %8442, 0
  %8444 = extractvalue %dx.types.ResRet.f32 %8442, 1
  %8445 = extractvalue %dx.types.ResRet.f32 %8442, 2
  %8446 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8447 = extractvalue %dx.types.CBufRet.i32 %8446, 0
  %8448 = extractvalue %dx.types.CBufRet.i32 %8446, 1
  %8449 = uitofp i32 %8447 to float
  %8450 = uitofp i32 %8448 to float
  %8451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8452 = extractvalue %dx.types.CBufRet.f32 %8451, 0
  %8453 = extractvalue %dx.types.CBufRet.f32 %8451, 1
  %8454 = fmul fast float %8449, %8379
  %8455 = fmul fast float %8450, %8380
  %8456 = fadd fast float %8454, -5.000000e-01
  %8457 = fadd fast float %8455, -5.000000e-01
  %8458 = call float @dx.op.unary.f32(i32 22, float %8456)  ; Frc(value)
  %8459 = call float @dx.op.unary.f32(i32 22, float %8457)  ; Frc(value)
  %8460 = fmul fast float %8458, %8458
  %8461 = fmul fast float %8460, %8458
  %8462 = fsub fast float 3.000000e+00, %8458
  %8463 = fmul fast float %8460, %8462
  %8464 = fmul fast float %8458, 3.000000e+00
  %8465 = fmul fast float %8461, 3.000000e+00
  %8466 = fmul fast float %8460, 6.000000e+00
  %8467 = fsub fast float %8465, %8466
  %8468 = fadd fast float %8467, 4.000000e+00
  %8469 = fmul fast float %8468, 0x3FC5555560000000
  %8470 = fmul fast float %8461, -3.000000e+00
  %8471 = fadd fast float %8460, %8458
  %8472 = fmul fast float %8471, 3.000000e+00
  %8473 = fadd fast float %8470, 1.000000e+00
  %8474 = fadd fast float %8473, %8472
  %8475 = fmul fast float %8461, 0x3FC5555560000000
  %8476 = fmul fast float %8459, %8459
  %8477 = fmul fast float %8476, %8459
  %8478 = fsub fast float 3.000000e+00, %8459
  %8479 = fmul fast float %8476, %8478
  %8480 = fmul fast float %8459, 3.000000e+00
  %8481 = fmul fast float %8477, 3.000000e+00
  %8482 = fmul fast float %8476, 6.000000e+00
  %8483 = fsub fast float %8481, %8482
  %8484 = fadd fast float %8483, 4.000000e+00
  %8485 = fmul fast float %8484, 0x3FC5555560000000
  %8486 = fmul fast float %8477, -3.000000e+00
  %8487 = fadd fast float %8476, %8459
  %8488 = fmul fast float %8487, 3.000000e+00
  %8489 = fadd fast float %8486, 1.000000e+00
  %8490 = fadd fast float %8489, %8488
  %8491 = fmul fast float %8477, 0x3FC5555560000000
  %8492 = fadd fast float %8458, 1.000000e+00
  %8493 = fsub fast float 1.000000e+00, %8464
  %8494 = fadd fast float %8493, %8463
  %8495 = fadd fast float %8494, %8468
  %8496 = fmul fast float %8495, 0x3FC5555560000000
  %8497 = fdiv fast float %8469, %8496
  %8498 = fsub fast float %8492, %8497
  %8499 = fsub fast float 1.000000e+00, %8458
  %8500 = fadd fast float %8474, %8461
  %8501 = fmul fast float %8500, 0x3FC5555560000000
  %8502 = fdiv fast float %8475, %8501
  %8503 = fadd fast float %8499, %8502
  %8504 = fadd fast float %8459, 1.000000e+00
  %8505 = fsub fast float 1.000000e+00, %8480
  %8506 = fadd fast float %8505, %8479
  %8507 = fadd fast float %8506, %8484
  %8508 = fmul fast float %8507, 0x3FC5555560000000
  %8509 = fdiv fast float %8485, %8508
  %8510 = fsub fast float %8504, %8509
  %8511 = fsub fast float 1.000000e+00, %8459
  %8512 = fadd fast float %8490, %8477
  %8513 = fmul fast float %8512, 0x3FC5555560000000
  %8514 = fdiv fast float %8491, %8513
  %8515 = fadd fast float %8514, %8511
  %8516 = fmul fast float %8498, %8452
  %8517 = fsub fast float %8379, %8516
  %8518 = fmul fast float %8503, %8452
  %8519 = fadd fast float %8518, %8379
  %8520 = fmul fast float %8515, %8453
  %8521 = fadd fast float %8520, %8380
  %8522 = fmul fast float %8510, %8453
  %8523 = fsub fast float %8380, %8522
  %8524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8517, float %8523, float %8441, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8525 = extractvalue %dx.types.ResRet.f32 %8524, 0
  %8526 = extractvalue %dx.types.ResRet.f32 %8524, 1
  %8527 = extractvalue %dx.types.ResRet.f32 %8524, 2
  %8528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8519, float %8523, float %8441, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8529 = extractvalue %dx.types.ResRet.f32 %8528, 0
  %8530 = extractvalue %dx.types.ResRet.f32 %8528, 1
  %8531 = extractvalue %dx.types.ResRet.f32 %8528, 2
  %8532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8517, float %8521, float %8441, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8533 = extractvalue %dx.types.ResRet.f32 %8532, 0
  %8534 = extractvalue %dx.types.ResRet.f32 %8532, 1
  %8535 = extractvalue %dx.types.ResRet.f32 %8532, 2
  %8536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8519, float %8521, float %8441, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8537 = extractvalue %dx.types.ResRet.f32 %8536, 0
  %8538 = extractvalue %dx.types.ResRet.f32 %8536, 1
  %8539 = extractvalue %dx.types.ResRet.f32 %8536, 2
  %8540 = fsub fast float %8533, %8525
  %8541 = fsub fast float %8534, %8526
  %8542 = fsub fast float %8535, %8527
  %8543 = fmul fast float %8540, %8513
  %8544 = fmul fast float %8541, %8513
  %8545 = fmul fast float %8542, %8513
  %8546 = fadd fast float %8543, %8525
  %8547 = fadd fast float %8544, %8526
  %8548 = fadd fast float %8545, %8527
  %8549 = fsub fast float %8537, %8529
  %8550 = fsub fast float %8538, %8530
  %8551 = fsub fast float %8539, %8531
  %8552 = fmul fast float %8549, %8513
  %8553 = fmul fast float %8550, %8513
  %8554 = fmul fast float %8551, %8513
  %8555 = fsub fast float %8529, %8546
  %8556 = fadd fast float %8555, %8552
  %8557 = fsub fast float %8530, %8547
  %8558 = fadd fast float %8557, %8553
  %8559 = fsub fast float %8531, %8548
  %8560 = fadd fast float %8559, %8554
  %8561 = fmul fast float %8556, %8501
  %8562 = fmul fast float %8558, %8501
  %8563 = fmul fast float %8560, %8501
  %8564 = fadd fast float %8561, %8546
  %8565 = fadd fast float %8562, %8547
  %8566 = fadd fast float %8563, %8548
  %8567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8568 = extractvalue %dx.types.CBufRet.f32 %8567, 1
  %8569 = fmul fast float %8564, %8568
  %8570 = fmul fast float %8565, %8568
  %8571 = fmul fast float %8566, %8568
  br label %8572

; <label>:8572                                    ; preds = %8404, %8373
  %8573 = phi float [ %8443, %8404 ], [ 1.000000e+00, %8373 ]
  %8574 = phi float [ %8444, %8404 ], [ 1.000000e+00, %8373 ]
  %8575 = phi float [ %8445, %8404 ], [ 1.000000e+00, %8373 ]
  %8576 = phi float [ %8569, %8404 ], [ 0.000000e+00, %8373 ]
  %8577 = phi float [ %8570, %8404 ], [ 0.000000e+00, %8373 ]
  %8578 = phi float [ %8571, %8404 ], [ 0.000000e+00, %8373 ]
  %8579 = fmul fast float %8576, %8350
  %8580 = fmul fast float %8577, %8350
  %8581 = fmul fast float %8578, %8350
  %8582 = call float @dx.op.dot3.f32(i32 55, float %8573, float %8574, float %8575, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8583 = call float @dx.op.dot3.f32(i32 55, float %8579, float %8580, float %8581, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8584 = select i1 %278, float %8582, float %8573
  %8585 = select i1 %278, float %8582, float %8574
  %8586 = select i1 %278, float 1.000000e+00, float %8575
  %8587 = select i1 %278, float %8583, float %8579
  %8588 = select i1 %278, float 0.000000e+00, float %8580
  %8589 = select i1 %278, float 0.000000e+00, float %8581
  %8590 = fmul fast float %8584, %8363
  %8591 = fmul fast float %8585, %8364
  %8592 = fmul fast float %8586, %8365
  %8593 = fadd fast float %8590, %8587
  %8594 = fadd fast float %8591, %8588
  %8595 = fadd fast float %8589, %8592
  %8596 = fmul fast float %8584, %8341
  %8597 = fmul fast float %8585, %8342
  %8598 = fmul fast float %8586, %8343
  %8599 = fmul fast float %155, %8375
  %8600 = fmul fast float %157, %8376
  %8601 = fsub fast float 1.000000e+00, %8599
  %8602 = fsub fast float 1.000000e+00, %8600
  %8603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8604 = extractvalue %dx.types.CBufRet.f32 %8603, 0
  %8605 = extractvalue %dx.types.CBufRet.f32 %8603, 1
  %8606 = extractvalue %dx.types.CBufRet.f32 %8603, 2
  %8607 = fmul fast float %8601, %8604
  %8608 = fmul fast float %8601, %8605
  %8609 = fmul fast float %8601, %8606
  %8610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8611 = extractvalue %dx.types.CBufRet.f32 %8610, 0
  %8612 = extractvalue %dx.types.CBufRet.f32 %8610, 1
  %8613 = extractvalue %dx.types.CBufRet.f32 %8610, 2
  %8614 = fmul fast float %8602, %8611
  %8615 = fmul fast float %8602, %8612
  %8616 = fmul fast float %8602, %8613
  %8617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8618 = extractvalue %dx.types.CBufRet.f32 %8617, 0
  %8619 = extractvalue %dx.types.CBufRet.f32 %8617, 1
  %8620 = extractvalue %dx.types.CBufRet.f32 %8617, 2
  %8621 = fadd fast float %8614, %8618
  %8622 = fadd fast float %8621, %8607
  %8623 = fadd fast float %8615, %8619
  %8624 = fadd fast float %8623, %8608
  %8625 = fadd fast float %8616, %8620
  %8626 = fadd fast float %8625, %8609
  %8627 = fmul fast float %8622, %241
  %8628 = fmul fast float %8624, %241
  %8629 = fmul fast float %8626, %241
  br label %8630

; <label>:8630                                    ; preds = %8572, %8340
  %8631 = phi float [ %8627, %8572 ], [ %206, %8340 ]
  %8632 = phi float [ %8628, %8572 ], [ %207, %8340 ]
  %8633 = phi float [ %8629, %8572 ], [ %208, %8340 ]
  %8634 = phi float [ %241, %8572 ], [ %110, %8340 ]
  %8635 = phi float [ %8593, %8572 ], [ %8363, %8340 ]
  %8636 = phi float [ %8594, %8572 ], [ %8364, %8340 ]
  %8637 = phi float [ %8595, %8572 ], [ %8365, %8340 ]
  %8638 = phi float [ %8596, %8572 ], [ %8341, %8340 ]
  %8639 = phi float [ %8597, %8572 ], [ %8342, %8340 ]
  %8640 = phi float [ %8598, %8572 ], [ %8343, %8340 ]
  %8641 = phi float [ %8573, %8572 ], [ 1.000000e+00, %8340 ]
  br i1 %8372, label %9796, label %8642

; <label>:8642                                    ; preds = %8630
  %8643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8644 = extractvalue %dx.types.CBufRet.f32 %8643, 0
  %8645 = extractvalue %dx.types.CBufRet.f32 %8643, 1
  %8646 = extractvalue %dx.types.CBufRet.f32 %8643, 2
  %8647 = extractvalue %dx.types.CBufRet.f32 %8643, 3
  %8648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8649 = extractvalue %dx.types.CBufRet.f32 %8648, 0
  %8650 = extractvalue %dx.types.CBufRet.f32 %8648, 1
  %8651 = extractvalue %dx.types.CBufRet.f32 %8648, 2
  %8652 = extractvalue %dx.types.CBufRet.f32 %8648, 3
  %8653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8654 = extractvalue %dx.types.CBufRet.f32 %8653, 0
  %8655 = extractvalue %dx.types.CBufRet.f32 %8653, 1
  %8656 = extractvalue %dx.types.CBufRet.f32 %8653, 2
  %8657 = extractvalue %dx.types.CBufRet.f32 %8653, 3
  %8658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8659 = extractvalue %dx.types.CBufRet.f32 %8658, 0
  %8660 = extractvalue %dx.types.CBufRet.f32 %8658, 1
  %8661 = extractvalue %dx.types.CBufRet.f32 %8658, 2
  %8662 = extractvalue %dx.types.CBufRet.f32 %8658, 3
  %8663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8664 = extractvalue %dx.types.CBufRet.f32 %8663, 3
  %8665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8666 = extractvalue %dx.types.CBufRet.f32 %8665, 3
  %8667 = extractvalue %dx.types.CBufRet.f32 %8665, 0
  %8668 = extractvalue %dx.types.CBufRet.f32 %8665, 1
  %8669 = extractvalue %dx.types.CBufRet.f32 %8665, 2
  %8670 = fcmp fast olt float %8669, -5.000000e-01
  %8671 = call float @dx.op.dot3.f32(i32 55, float %8631, float %8632, float %8633, float %8631, float %8632, float %8633)  ; Dot3(ax,ay,az,bx,by,bz)
  %8672 = call float @dx.op.unary.f32(i32 25, float %8671)  ; Rsqrt(value)
  %8673 = fmul fast float %8672, %8671
  %8674 = fmul fast float %8672, %8631
  %8675 = fmul fast float %8672, %8632
  %8676 = fmul fast float %8672, %8633
  %8677 = fadd fast float %8673, %8647
  %8678 = call float @dx.op.dot3.f32(i32 55, float %8674, float %8675, float %8676, float %8644, float %8645, float %8646)  ; Dot3(ax,ay,az,bx,by,bz)
  %8679 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8680 = extractvalue %dx.types.CBufRet.i32 %8679, 1
  %8681 = and i32 %8680, 1
  %8682 = icmp ne i32 %8681, 0
  %8683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8684 = extractvalue %dx.types.CBufRet.f32 %8683, 2
  %8685 = fcmp fast ogt float %8684, 0.000000e+00
  %8686 = and i1 %8682, %8685
  br i1 %8686, label %8687, label %9093, !dx.controlflow.hints !140

; <label>:8687                                    ; preds = %8642
  %8688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8689 = extractvalue %dx.types.CBufRet.f32 %8688, 3
  %8690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8691 = extractvalue %dx.types.CBufRet.f32 %8690, 2
  %8692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8693 = extractvalue %dx.types.CBufRet.f32 %8692, 2
  %8694 = fsub fast float %8691, %8693
  %8695 = and i32 %8680, 2
  %8696 = extractvalue %dx.types.CBufRet.i32 %8679, 0
  %8697 = call i32 @dx.op.binary.i32(i32 40, i32 %8696, i32 3)  ; UMin(a,b)
  %8698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8699 = extractvalue %dx.types.CBufRet.f32 %8698, 0
  %8700 = extractvalue %dx.types.CBufRet.f32 %8698, 1
  %8701 = extractvalue %dx.types.CBufRet.f32 %8692, 0
  %8702 = extractvalue %dx.types.CBufRet.f32 %8692, 1
  %8703 = fsub fast float %8699, %8701
  %8704 = fsub fast float %8700, %8702
  %8705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8706 = extractvalue %dx.types.CBufRet.f32 %8705, 0
  %8707 = fcmp fast ogt float %8706, 0.000000e+00
  %8708 = fsub fast float -0.000000e+00, %8703
  %8709 = fsub fast float -0.000000e+00, %8704
  %8710 = call float @dx.op.dot2.f32(i32 54, float %8674, float %8675, float %8674, float %8675)  ; Dot2(ax,ay,bx,by)
  %8711 = call float @dx.op.dot2.f32(i32 54, float %8674, float %8675, float %8708, float %8709)  ; Dot2(ax,ay,bx,by)
  %8712 = fmul fast float %8711, 2.000000e+00
  %8713 = call float @dx.op.dot2.f32(i32 54, float %8708, float %8709, float %8708, float %8709)  ; Dot2(ax,ay,bx,by)
  %8714 = fmul fast float %8706, %8706
  %8715 = fsub fast float %8713, %8714
  %8716 = fmul fast float %8712, %8712
  %8717 = fmul fast float %8710, 4.000000e+00
  %8718 = fmul fast float %8717, %8715
  %8719 = fsub fast float %8716, %8718
  %8720 = fcmp fast ogt float %8719, 0.000000e+00
  br i1 %8720, label %8721, label %8736

; <label>:8721                                    ; preds = %8687
  %8722 = fcmp fast ogt float %8712, 0.000000e+00
  %8723 = call float @dx.op.unary.f32(i32 24, float %8719)  ; Sqrt(value)
  %8724 = fsub fast float -0.000000e+00, %8723
  %8725 = select i1 %8722, float %8723, float %8724
  %8726 = fadd fast float %8725, %8712
  %8727 = fmul float %8726, -5.000000e-01
  %8728 = fdiv fast float %8727, %8710
  %8729 = call float @dx.op.binary.f32(i32 35, float %8728, float 0.000000e+00)  ; FMax(a,b)
  %8730 = call float @dx.op.binary.f32(i32 36, float %8673, float %8729)  ; FMin(a,b)
  %8731 = fdiv fast float %8715, %8727
  %8732 = call float @dx.op.binary.f32(i32 35, float %8731, float 0.000000e+00)  ; FMax(a,b)
  %8733 = call float @dx.op.binary.f32(i32 36, float %8673, float %8732)  ; FMin(a,b)
  %8734 = call float @dx.op.binary.f32(i32 36, float %8730, float %8733)  ; FMin(a,b)
  %8735 = call float @dx.op.binary.f32(i32 35, float %8730, float %8733)  ; FMax(a,b)
  br label %8736

; <label>:8736                                    ; preds = %8721, %8687
  %8737 = phi float [ %8735, %8721 ], [ -1.000000e+00, %8687 ]
  %8738 = phi float [ %8734, %8721 ], [ -1.000000e+00, %8687 ]
  %8739 = phi i1 [ true, %8721 ], [ false, %8687 ]
  %8740 = and i1 %8707, %8739
  br i1 %8740, label %8741, label %8743

; <label>:8741                                    ; preds = %8736
  %8742 = fcmp fast oeq float %8738, %8737
  br i1 %8742, label %9046, label %8744

; <label>:8743                                    ; preds = %8736
  br i1 %8707, label %9046, label %8744

; <label>:8744                                    ; preds = %8743, %8741
  %8745 = phi float [ %8673, %8743 ], [ %8737, %8741 ]
  %8746 = phi float [ 0.000000e+00, %8743 ], [ %8738, %8741 ]
  %8747 = icmp ne i32 %8695, 0
  %8748 = fmul fast float %8745, %8676
  %8749 = fadd fast float %8748, %8689
  %8750 = fmul fast float %8749, %8745
  %8751 = select i1 %8747, float 0.000000e+00, float %8750
  %8752 = fcmp fast oeq float %8676, 0.000000e+00
  %8753 = fdiv fast float %8694, %8676
  %8754 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8753)  ; FMax(a,b)
  %8755 = select i1 %8752, float %8745, float %8754
  %8756 = call float @dx.op.binary.f32(i32 36, float %8745, float %8755)  ; FMin(a,b)
  %8757 = fcmp fast ogt float %8676, 0.000000e+00
  %8758 = fcmp fast olt float %8694, 0.000000e+00
  br i1 %8757, label %8759, label %8816

; <label>:8759                                    ; preds = %8744
  %8760 = icmp eq i32 %8695, 0
  br i1 %8758, label %8761, label %8805

; <label>:8761                                    ; preds = %8759
  %8762 = select i1 %8760, float %8745, float 0.000000e+00
  %8763 = fsub fast float -0.000000e+00, %8762
  %8764 = call float @dx.op.unary.f32(i32 6, float %8763)  ; FAbs(value)
  %8765 = fmul fast float %8762, %8676
  %8766 = fadd fast float %8765, %8689
  %8767 = fmul fast float %8764, %8766
  %8768 = fsub fast float %8751, %8767
  %8769 = fsub fast float %8745, %8764
  %8770 = select i1 %8760, float %8769, float 0.000000e+00
  %8771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8772 = extractvalue %dx.types.CBufRet.f32 %8771, 0
  %8773 = extractvalue %dx.types.CBufRet.f32 %8771, 1
  %8774 = extractvalue %dx.types.CBufRet.f32 %8771, 2
  %8775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8776 = extractvalue %dx.types.CBufRet.f32 %8775, 0
  %8777 = extractvalue %dx.types.CBufRet.f32 %8775, 1
  %8778 = extractvalue %dx.types.CBufRet.f32 %8775, 2
  %8779 = extractvalue %dx.types.CBufRet.f32 %8775, 3
  %8780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8781 = extractvalue %dx.types.CBufRet.f32 %8780, 3
  %8782 = call float @dx.op.binary.f32(i32 36, float %8768, float %8781)  ; FMin(a,b)
  %8783 = fmul fast float %8779, %8770
  %8784 = call float @dx.op.unary.f32(i32 7, float %8783)  ; Saturate(value)
  %8785 = fsub fast float %8776, %8772
  %8786 = fsub fast float %8777, %8773
  %8787 = fsub fast float %8778, %8774
  %8788 = fmul fast float %8784, %8785
  %8789 = fmul fast float %8784, %8786
  %8790 = fmul fast float %8784, %8787
  %8791 = fadd fast float %8788, %8772
  %8792 = fadd fast float %8789, %8773
  %8793 = fadd fast float %8790, %8774
  %8794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8795 = extractvalue %dx.types.CBufRet.f32 %8794, 0
  %8796 = extractvalue %dx.types.CBufRet.f32 %8794, 1
  %8797 = fadd fast float %8796, %8795
  %8798 = call float @dx.op.unary.f32(i32 7, float %8797)  ; Saturate(value)
  %8799 = extractvalue %dx.types.CBufRet.f32 %8794, 2
  %8800 = extractvalue %dx.types.CBufRet.f32 %8794, 3
  %8801 = fadd fast float %8800, %8799
  %8802 = call float @dx.op.unary.f32(i32 7, float %8801)  ; Saturate(value)
  %8803 = fmul fast float %8798, %8782
  %8804 = fmul fast float %8803, %8802
  br label %9046

; <label>:8805                                    ; preds = %8759
  br i1 %8760, label %8806, label %8827

; <label>:8806                                    ; preds = %8805
  %8807 = call float @dx.op.binary.f32(i32 36, float %8756, float %8746)  ; FMin(a,b)
  %8808 = fsub fast float %8756, %8807
  %8809 = fsub fast float %8808, %8745
  %8810 = call float @dx.op.unary.f32(i32 6, float %8809)  ; FAbs(value)
  %8811 = fadd fast float %8808, %8745
  %8812 = fmul fast float %8811, %8676
  %8813 = fadd fast float %8812, %8689
  %8814 = fmul fast float %8813, %8810
  %8815 = fsub fast float %8751, %8814
  br label %8827

; <label>:8816                                    ; preds = %8744
  br i1 %8758, label %8817, label %8827

; <label>:8817                                    ; preds = %8816
  %8818 = call float @dx.op.binary.f32(i32 35, float %8746, float %8756)  ; FMax(a,b)
  %8819 = icmp eq i32 %8695, 0
  %8820 = select i1 %8819, float %8756, float 0.000000e+00
  %8821 = fsub fast float -0.000000e+00, %8820
  %8822 = call float @dx.op.unary.f32(i32 6, float %8821)  ; FAbs(value)
  %8823 = fmul fast float %8820, %8676
  %8824 = fadd fast float %8823, %8689
  %8825 = fmul fast float %8822, %8824
  %8826 = fsub fast float %8751, %8825
  br label %8827

; <label>:8827                                    ; preds = %8817, %8816, %8806, %8805
  %8828 = phi float [ %8746, %8805 ], [ %8746, %8806 ], [ %8818, %8817 ], [ %8746, %8816 ]
  %8829 = phi float [ 0.000000e+00, %8805 ], [ %8810, %8806 ], [ %8822, %8817 ], [ 0.000000e+00, %8816 ]
  %8830 = phi float [ %8751, %8805 ], [ %8815, %8806 ], [ %8826, %8817 ], [ %8751, %8816 ]
  %8831 = phi float [ %8756, %8805 ], [ %8756, %8806 ], [ %8745, %8817 ], [ %8745, %8816 ]
  %8832 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 0
  store float -1.000000e+00, float* %8832, align 4, !tbaa !126, !noalias !141
  %8833 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 1
  store float -1.000000e+00, float* %8833, align 4, !tbaa !126, !noalias !141
  %8834 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 2
  store float -1.000000e+00, float* %8834, align 4, !tbaa !126, !noalias !141
  %8835 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 0
  store float -1.000000e+00, float* %8835, align 4, !tbaa !126, !noalias !141
  %8836 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 1
  store float -1.000000e+00, float* %8836, align 4, !tbaa !126, !noalias !141
  %8837 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 2
  store float -1.000000e+00, float* %8837, align 4, !tbaa !126, !noalias !141
  %8838 = icmp sgt i32 %8697, 0
  br i1 %8838, label %8839, label %8900

; <label>:8839                                    ; preds = %8827
  br label %8840

; <label>:8840                                    ; preds = %8889, %8839
  %8841 = phi i32 [ %8890, %8889 ], [ 0, %8839 ]
  %8842 = phi i32 [ %8891, %8889 ], [ 0, %8839 ]
  %8843 = add nuw i32 %8842, 171
  %8844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %8843)  ; CBufferLoadLegacy(handle,regIndex)
  %8845 = extractvalue %dx.types.CBufRet.f32 %8844, 0
  %8846 = extractvalue %dx.types.CBufRet.f32 %8844, 1
  %8847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8848 = extractvalue %dx.types.CBufRet.f32 %8847, 0
  %8849 = extractvalue %dx.types.CBufRet.f32 %8847, 1
  %8850 = fsub fast float %8845, %8848
  %8851 = fsub fast float %8846, %8849
  %8852 = extractvalue %dx.types.CBufRet.f32 %8844, 2
  %8853 = fsub fast float -0.000000e+00, %8850
  %8854 = fsub fast float -0.000000e+00, %8851
  %8855 = call float @dx.op.dot2.f32(i32 54, float %8674, float %8675, float %8853, float %8854)  ; Dot2(ax,ay,bx,by)
  %8856 = fmul fast float %8855, 2.000000e+00
  %8857 = call float @dx.op.dot2.f32(i32 54, float %8853, float %8854, float %8853, float %8854)  ; Dot2(ax,ay,bx,by)
  %8858 = fmul fast float %8852, %8852
  %8859 = fsub fast float %8857, %8858
  %8860 = fmul fast float %8856, %8856
  %8861 = fmul fast float %8717, %8859
  %8862 = fsub fast float %8860, %8861
  %8863 = fcmp fast ogt float %8862, 0.000000e+00
  br i1 %8863, label %8864, label %8879

; <label>:8864                                    ; preds = %8840
  %8865 = fcmp fast ogt float %8856, 0.000000e+00
  %8866 = call float @dx.op.unary.f32(i32 24, float %8862)  ; Sqrt(value)
  %8867 = fsub fast float -0.000000e+00, %8866
  %8868 = select i1 %8865, float %8866, float %8867
  %8869 = fadd fast float %8868, %8856
  %8870 = fmul float %8869, -5.000000e-01
  %8871 = fdiv fast float %8870, %8710
  %8872 = call float @dx.op.binary.f32(i32 35, float %8871, float 0.000000e+00)  ; FMax(a,b)
  %8873 = call float @dx.op.binary.f32(i32 36, float %8745, float %8872)  ; FMin(a,b)
  %8874 = fdiv fast float %8859, %8870
  %8875 = call float @dx.op.binary.f32(i32 35, float %8874, float 0.000000e+00)  ; FMax(a,b)
  %8876 = call float @dx.op.binary.f32(i32 36, float %8745, float %8875)  ; FMin(a,b)
  %8877 = call float @dx.op.binary.f32(i32 36, float %8873, float %8876)  ; FMin(a,b)
  %8878 = call float @dx.op.binary.f32(i32 35, float %8873, float %8876)  ; FMax(a,b)
  br label %8879

; <label>:8879                                    ; preds = %8864, %8840
  %8880 = phi float [ %8878, %8864 ], [ -1.000000e+00, %8840 ]
  %8881 = phi float [ %8877, %8864 ], [ -1.000000e+00, %8840 ]
  %8882 = phi i1 [ true, %8864 ], [ false, %8840 ]
  br i1 %8882, label %8883, label %8889

; <label>:8883                                    ; preds = %8879
  %8884 = call float @dx.op.binary.f32(i32 35, float %8828, float %8881)  ; FMax(a,b)
  %8885 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 %8842
  store float %8884, float* %8885, align 4, !tbaa !126, !noalias !141
  %8886 = call float @dx.op.binary.f32(i32 35, float %8828, float %8880)  ; FMax(a,b)
  %8887 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 %8842
  store float %8886, float* %8887, align 4, !tbaa !126, !noalias !141
  %8888 = add nsw i32 %8841, 1
  br label %8889

; <label>:8889                                    ; preds = %8883, %8879
  %8890 = phi i32 [ %8888, %8883 ], [ %8841, %8879 ]
  %8891 = add nuw nsw i32 %8842, 1
  %8892 = icmp eq i32 %8891, %8697
  br i1 %8892, label %8893, label %8840

; <label>:8893                                    ; preds = %8889
  %8894 = load float, float* %8834, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %8895 = load float, float* %8833, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  %8896 = load float, float* %8832, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  %8897 = load float, float* %8837, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %8898 = load float, float* %8836, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  %8899 = load float, float* %8835, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  br label %8900

; <label>:8900                                    ; preds = %8893, %8827
  %8901 = phi float [ -1.000000e+00, %8827 ], [ %8899, %8893 ]
  %8902 = phi float [ -1.000000e+00, %8827 ], [ %8898, %8893 ]
  %8903 = phi float [ -1.000000e+00, %8827 ], [ %8897, %8893 ]
  %8904 = phi float [ -1.000000e+00, %8827 ], [ %8896, %8893 ]
  %8905 = phi float [ -1.000000e+00, %8827 ], [ %8895, %8893 ]
  %8906 = phi float [ -1.000000e+00, %8827 ], [ %8894, %8893 ]
  %8907 = phi i32 [ 0, %8827 ], [ %8890, %8893 ]
  %8908 = call float @dx.op.binary.f32(i32 36, float %8905, float %8906)  ; FMin(a,b)
  %8909 = call float @dx.op.binary.f32(i32 36, float %8904, float %8908)  ; FMin(a,b)
  %8910 = call float @dx.op.binary.f32(i32 35, float %8904, float %8905)  ; FMax(a,b)
  %8911 = call float @dx.op.binary.f32(i32 36, float %8910, float %8906)  ; FMin(a,b)
  %8912 = call float @dx.op.binary.f32(i32 36, float %8904, float %8905)  ; FMin(a,b)
  %8913 = call float @dx.op.binary.f32(i32 35, float %8912, float %8911)  ; FMax(a,b)
  %8914 = call float @dx.op.binary.f32(i32 35, float %8905, float %8906)  ; FMax(a,b)
  %8915 = call float @dx.op.binary.f32(i32 35, float %8904, float %8914)  ; FMax(a,b)
  store float %8909, float* %8832, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  store float %8913, float* %8833, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  store float %8915, float* %8834, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %8916 = call float @dx.op.binary.f32(i32 36, float %8902, float %8903)  ; FMin(a,b)
  %8917 = call float @dx.op.binary.f32(i32 36, float %8901, float %8916)  ; FMin(a,b)
  %8918 = call float @dx.op.binary.f32(i32 35, float %8901, float %8902)  ; FMax(a,b)
  %8919 = call float @dx.op.binary.f32(i32 36, float %8918, float %8903)  ; FMin(a,b)
  %8920 = call float @dx.op.binary.f32(i32 36, float %8901, float %8902)  ; FMin(a,b)
  %8921 = call float @dx.op.binary.f32(i32 35, float %8920, float %8919)  ; FMax(a,b)
  %8922 = call float @dx.op.binary.f32(i32 35, float %8902, float %8903)  ; FMax(a,b)
  %8923 = call float @dx.op.binary.f32(i32 35, float %8901, float %8922)  ; FMax(a,b)
  store float %8917, float* %8835, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  store float %8921, float* %8836, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  store float %8923, float* %8837, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %8924 = sub nsw i32 3, %8907
  %8925 = icmp sgt i32 %8924, 2
  br i1 %8925, label %8926, label %8964

; <label>:8926                                    ; preds = %8900
  %8927 = icmp eq i32 %8695, 0
  %8928 = fsub fast float %8745, %8829
  %8929 = select i1 %8927, float %8928, float %8829
  %8930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8931 = extractvalue %dx.types.CBufRet.f32 %8930, 0
  %8932 = extractvalue %dx.types.CBufRet.f32 %8930, 1
  %8933 = extractvalue %dx.types.CBufRet.f32 %8930, 2
  %8934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8935 = extractvalue %dx.types.CBufRet.f32 %8934, 0
  %8936 = extractvalue %dx.types.CBufRet.f32 %8934, 1
  %8937 = extractvalue %dx.types.CBufRet.f32 %8934, 2
  %8938 = extractvalue %dx.types.CBufRet.f32 %8934, 3
  %8939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8940 = extractvalue %dx.types.CBufRet.f32 %8939, 3
  %8941 = call float @dx.op.binary.f32(i32 36, float %8830, float %8940)  ; FMin(a,b)
  %8942 = fmul fast float %8938, %8929
  %8943 = call float @dx.op.unary.f32(i32 7, float %8942)  ; Saturate(value)
  %8944 = fsub fast float %8935, %8931
  %8945 = fsub fast float %8936, %8932
  %8946 = fsub fast float %8937, %8933
  %8947 = fmul fast float %8943, %8944
  %8948 = fmul fast float %8943, %8945
  %8949 = fmul fast float %8943, %8946
  %8950 = fadd fast float %8947, %8931
  %8951 = fadd fast float %8948, %8932
  %8952 = fadd fast float %8949, %8933
  %8953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8954 = extractvalue %dx.types.CBufRet.f32 %8953, 0
  %8955 = extractvalue %dx.types.CBufRet.f32 %8953, 1
  %8956 = fadd fast float %8955, %8954
  %8957 = call float @dx.op.unary.f32(i32 7, float %8956)  ; Saturate(value)
  %8958 = extractvalue %dx.types.CBufRet.f32 %8953, 2
  %8959 = extractvalue %dx.types.CBufRet.f32 %8953, 3
  %8960 = fadd fast float %8959, %8958
  %8961 = call float @dx.op.unary.f32(i32 7, float %8960)  ; Saturate(value)
  %8962 = fmul fast float %8957, %8941
  %8963 = fmul fast float %8962, %8961
  br label %9046

; <label>:8964                                    ; preds = %8900
  %8965 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 %8924
  %8966 = load float, float* %8965, align 4, !tbaa !126, !noalias !141
  %8967 = fcmp fast olt float %8966, %8831
  %8968 = icmp sgt i32 %8907, 0
  %8969 = and i1 %8968, %8967
  br i1 %8969, label %8970, label %9007

; <label>:8970                                    ; preds = %8964
  br label %8971

; <label>:8971                                    ; preds = %9000, %8970
  %8972 = phi float [ %9001, %9000 ], [ %8829, %8970 ]
  %8973 = phi float [ %9002, %9000 ], [ %8830, %8970 ]
  %8974 = phi float [ %8982, %9000 ], [ %8966, %8970 ]
  %8975 = phi i32 [ %8979, %9000 ], [ %8924, %8970 ]
  %8976 = getelementptr inbounds [3 x float], [3 x float]* %118, i32 0, i32 %8975
  %8977 = load float, float* %8976, align 4, !tbaa !126, !noalias !141
  %8978 = icmp slt i32 %8975, 2
  %8979 = add nsw i32 %8975, 1
  %8980 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 %8979
  %8981 = load float, float* %8980, align 4, !tbaa !126, !noalias !141
  %8982 = select i1 %8978, float %8981, float %8745
  %8983 = call float @dx.op.binary.f32(i32 36, float %8982, float %8977)  ; FMin(a,b)
  %8984 = call float @dx.op.binary.f32(i32 36, float %8831, float %8983)  ; FMin(a,b)
  %8985 = icmp eq i32 %8695, 0
  %8986 = fadd fast float %8984, %8974
  %8987 = fmul fast float %8986, %8676
  %8988 = fadd fast float %8987, %8689
  br i1 %8985, label %8994, label %8989

; <label>:8989                                    ; preds = %8971
  %8990 = fsub fast float %8984, %8974
  %8991 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8990)  ; FMax(a,b)
  %8992 = fmul fast float %8991, %8988
  %8993 = fadd fast float %8992, %8973
  br label %9000

; <label>:8994                                    ; preds = %8971
  %8995 = fsub fast float %8974, %8984
  %8996 = call float @dx.op.unary.f32(i32 6, float %8995)  ; FAbs(value)
  %8997 = fadd fast float %8996, %8972
  %8998 = fmul fast float %8996, %8988
  %8999 = fsub fast float %8973, %8998
  br label %9000

; <label>:9000                                    ; preds = %8994, %8989
  %9001 = phi float [ %8991, %8989 ], [ %8997, %8994 ]
  %9002 = phi float [ %8993, %8989 ], [ %8999, %8994 ]
  %9003 = fcmp fast olt float %8982, %8831
  %9004 = icmp slt i32 %8979, 3
  %9005 = and i1 %9004, %9003
  br i1 %9005, label %8971, label %9006

; <label>:9006                                    ; preds = %9000
  br label %9007

; <label>:9007                                    ; preds = %9006, %8964
  %9008 = phi float [ %8829, %8964 ], [ %9001, %9006 ]
  %9009 = phi float [ %8830, %8964 ], [ %9002, %9006 ]
  %9010 = fsub fast float %8745, %9008
  %9011 = select i1 %8747, float %9008, float %9010
  %9012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9013 = extractvalue %dx.types.CBufRet.f32 %9012, 0
  %9014 = extractvalue %dx.types.CBufRet.f32 %9012, 1
  %9015 = extractvalue %dx.types.CBufRet.f32 %9012, 2
  %9016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9017 = extractvalue %dx.types.CBufRet.f32 %9016, 0
  %9018 = extractvalue %dx.types.CBufRet.f32 %9016, 1
  %9019 = extractvalue %dx.types.CBufRet.f32 %9016, 2
  %9020 = extractvalue %dx.types.CBufRet.f32 %9016, 3
  %9021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9022 = extractvalue %dx.types.CBufRet.f32 %9021, 3
  %9023 = call float @dx.op.binary.f32(i32 36, float %9009, float %9022)  ; FMin(a,b)
  %9024 = fmul fast float %9020, %9011
  %9025 = call float @dx.op.unary.f32(i32 7, float %9024)  ; Saturate(value)
  %9026 = fsub fast float %9017, %9013
  %9027 = fsub fast float %9018, %9014
  %9028 = fsub fast float %9019, %9015
  %9029 = fmul fast float %9025, %9026
  %9030 = fmul fast float %9025, %9027
  %9031 = fmul fast float %9025, %9028
  %9032 = fadd fast float %9029, %9013
  %9033 = fadd fast float %9030, %9014
  %9034 = fadd fast float %9031, %9015
  %9035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9036 = extractvalue %dx.types.CBufRet.f32 %9035, 0
  %9037 = extractvalue %dx.types.CBufRet.f32 %9035, 1
  %9038 = fadd fast float %9037, %9036
  %9039 = call float @dx.op.unary.f32(i32 7, float %9038)  ; Saturate(value)
  %9040 = extractvalue %dx.types.CBufRet.f32 %9035, 2
  %9041 = extractvalue %dx.types.CBufRet.f32 %9035, 3
  %9042 = fadd fast float %9041, %9040
  %9043 = call float @dx.op.unary.f32(i32 7, float %9042)  ; Saturate(value)
  %9044 = fmul fast float %9039, %9023
  %9045 = fmul fast float %9044, %9043
  br label %9046

; <label>:9046                                    ; preds = %9007, %8926, %8761, %8743, %8741
  %9047 = phi float [ %8770, %8761 ], [ %8929, %8926 ], [ %9011, %9007 ], [ 0.000000e+00, %8741 ], [ 0.000000e+00, %8743 ]
  %9048 = phi float [ %8804, %8761 ], [ %8963, %8926 ], [ %9045, %9007 ], [ 0.000000e+00, %8741 ], [ 0.000000e+00, %8743 ]
  %9049 = phi float [ %8791, %8761 ], [ %8950, %8926 ], [ %9032, %9007 ], [ 0.000000e+00, %8741 ], [ 0.000000e+00, %8743 ]
  %9050 = phi float [ %8792, %8761 ], [ %8951, %8926 ], [ %9033, %9007 ], [ 0.000000e+00, %8741 ], [ 0.000000e+00, %8743 ]
  %9051 = phi float [ %8793, %8761 ], [ %8952, %8926 ], [ %9034, %9007 ], [ 0.000000e+00, %8741 ], [ 0.000000e+00, %8743 ]
  %9052 = fmul fast float %8684, %9048
  %9053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9054 = extractvalue %dx.types.CBufRet.f32 %9053, 2
  %9055 = fsub fast float %8691, %9054
  %9056 = fcmp fast olt float %9052, -2.000000e+01
  %9057 = call float @dx.op.unary.f32(i32 21, float %9052)  ; Exp(value)
  %9058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9059 = extractvalue %dx.types.CBufRet.f32 %9058, 2
  %9060 = extractvalue %dx.types.CBufRet.f32 %9058, 3
  %9061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9062 = extractvalue %dx.types.CBufRet.f32 %9061, 2
  %9063 = fmul fast float %9060, %9055
  %9064 = call float @dx.op.unary.f32(i32 7, float %9063)  ; Saturate(value)
  %9065 = fsub fast float 1.000000e+00, %9064
  %9066 = fmul fast float %8676, 5.000000e-01
  %9067 = fadd fast float %9066, 5.000000e-01
  %9068 = call float @dx.op.unary.f32(i32 7, float %9067)  ; Saturate(value)
  %9069 = fsub fast float 1.000000e+00, %9068
  %9070 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9065)  ; FMax(a,b)
  %9071 = fdiv fast float %9069, %9070
  %9072 = fsub fast float %9055, %8633
  %9073 = call float @dx.op.unary.f32(i32 6, float %9072)  ; FAbs(value)
  %9074 = fmul fast float %9073, %9059
  %9075 = call float @dx.op.unary.f32(i32 7, float %9071)  ; Saturate(value)
  %9076 = fsub fast float 1.000000e+00, %9074
  %9077 = fmul fast float %9076, %9075
  %9078 = fadd fast float %9077, %9074
  %9079 = fmul fast float %9062, %9055
  %9080 = call float @dx.op.unary.f32(i32 7, float %9079)  ; Saturate(value)
  %9081 = fsub fast float 1.000000e+00, %9078
  %9082 = fmul fast float %9081, %9080
  %9083 = fadd fast float %9082, %9078
  %9084 = call float @dx.op.unary.f32(i32 7, float %9083)  ; Saturate(value)
  %9085 = fadd fast float %9057, -1.000000e+00
  %9086 = select i1 %9056, float -1.000000e+00, float %9085
  %9087 = fmul fast float %9084, %9086
  %9088 = fadd fast float %9087, 1.000000e+00
  %9089 = fsub fast float -0.000000e+00, %9087
  %9090 = fmul fast float %9049, %9089
  %9091 = fmul fast float %9050, %9089
  %9092 = fmul fast float %9051, %9089
  br label %9093

; <label>:9093                                    ; preds = %9046, %8642
  %9094 = phi float [ %9047, %9046 ], [ 0.000000e+00, %8642 ]
  %9095 = phi float [ %9088, %9046 ], [ 1.000000e+00, %8642 ]
  %9096 = phi float [ %9090, %9046 ], [ 0.000000e+00, %8642 ]
  %9097 = phi float [ %9091, %9046 ], [ 0.000000e+00, %8642 ]
  %9098 = phi float [ %9092, %9046 ], [ 0.000000e+00, %8642 ]
  %9099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9100 = extractvalue %dx.types.CBufRet.f32 %9099, 1
  %9101 = fsub fast float 1.000000e+00, %9095
  %9102 = fmul fast float %9101, %8677
  %9103 = fmul fast float %9102, %9100
  %9104 = fsub fast float %8677, %9103
  br i1 %8670, label %9105, label %9134, !dx.controlflow.hints !177

; <label>:9105                                    ; preds = %9093
  %9106 = fmul fast float %8678, %8667
  %9107 = fadd fast float %9106, %8668
  %9108 = call float @dx.op.unary.f32(i32 7, float %9107)  ; Saturate(value)
  %9109 = fmul fast float %8649, %9104
  %9110 = fsub fast float -0.000000e+00, %9109
  %9111 = fmul fast float %8650, %9104
  %9112 = fsub fast float -0.000000e+00, %9111
  %9113 = call float @dx.op.unary.f32(i32 21, float %9110)  ; Exp(value)
  %9114 = call float @dx.op.unary.f32(i32 21, float %9112)  ; Exp(value)
  %9115 = call float @dx.op.binary.f32(i32 35, float %8657, float %9113)  ; FMax(a,b)
  %9116 = call float @dx.op.binary.f32(i32 35, float %8657, float %9114)  ; FMax(a,b)
  %9117 = fsub fast float %9116, %9115
  %9118 = fmul fast float %9117, %9108
  %9119 = fadd fast float %9118, %9115
  %9120 = call float @dx.op.unary.f32(i32 7, float %9119)  ; Saturate(value)
  %9121 = fsub fast float %8654, %8659
  %9122 = fsub fast float %8655, %8660
  %9123 = fsub fast float %8656, %8661
  %9124 = fmul fast float %9108, %9121
  %9125 = fmul fast float %9108, %9122
  %9126 = fmul fast float %9108, %9123
  %9127 = fadd fast float %9124, %8659
  %9128 = fadd fast float %9125, %8660
  %9129 = fadd fast float %9126, %8661
  %9130 = fsub fast float 1.000000e+00, %9120
  %9131 = fmul fast float %9130, %9127
  %9132 = fmul fast float %9130, %9128
  %9133 = fmul fast float %9130, %9129
  br label %9193

; <label>:9134                                    ; preds = %9093
  %9135 = fmul fast float %9104, %8666
  %9136 = call float @dx.op.unary.f32(i32 7, float %9135)  ; Saturate(value)
  %9137 = fsub fast float 2.000000e+00, %9136
  %9138 = fmul fast float %9136, 9.921875e-01
  %9139 = fmul fast float %9138, %9137
  %9140 = fadd fast float %9139, 3.906250e-03
  %9141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %9140, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9142 = extractvalue %dx.types.ResRet.f32 %9141, 0
  %9143 = fsub fast float %9136, %9142
  %9144 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9143)  ; FMax(a,b)
  %9145 = fmul fast float %8652, %8633
  %9146 = call float @dx.op.unary.f32(i32 6, float %9145)  ; FAbs(value)
  %9147 = fcmp fast ogt float %9146, 0x3EB0C6F7A0000000
  br i1 %9147, label %9148, label %9154, !dx.controlflow.hints !178

; <label>:9148                                    ; preds = %9134
  %9149 = fmul fast float %9145, 0xBFF7154760000000
  %9150 = call float @dx.op.unary.f32(i32 21, float %9149)  ; Exp(value)
  %9151 = fsub fast float 1.000000e+00, %9150
  %9152 = fdiv fast float %9151, %9145
  %9153 = fmul fast float %9152, %8662
  br label %9154

; <label>:9154                                    ; preds = %9148, %9134
  %9155 = phi float [ %9153, %9148 ], [ %8662, %9134 ]
  %9156 = fadd fast float %9155, %8664
  %9157 = fmul fast float %9156, %9144
  %9158 = fmul fast float %8649, %9157
  %9159 = fsub fast float -0.000000e+00, %9158
  %9160 = fmul fast float %8650, %9157
  %9161 = fsub fast float -0.000000e+00, %9160
  %9162 = fmul fast float %8651, %9157
  %9163 = fsub fast float -0.000000e+00, %9162
  %9164 = call float @dx.op.unary.f32(i32 21, float %9159)  ; Exp(value)
  %9165 = call float @dx.op.unary.f32(i32 21, float %9161)  ; Exp(value)
  %9166 = call float @dx.op.unary.f32(i32 21, float %9163)  ; Exp(value)
  %9167 = fmul fast float %8678, %8678
  %9168 = fadd fast float %9167, 1.000000e+00
  %9169 = fmul fast float %9168, 0x3FAE8EC8A0000000
  %9170 = fmul fast float %9169, %8659
  %9171 = fmul fast float %9169, %8660
  %9172 = fmul fast float %9169, %8661
  %9173 = fmul fast float %8678, %8657
  %9174 = fsub fast float 1.000000e+00, %9173
  %9175 = fmul fast float %8657, %8657
  %9176 = fsub fast float 1.000000e+00, %9175
  %9177 = fmul fast float %9176, 0x3FB45F3060000000
  %9178 = fmul fast float %9174, %9174
  %9179 = fdiv fast float 1.000000e+00, %9178
  %9180 = fmul fast float %9177, %9179
  %9181 = fmul fast float %9180, %8654
  %9182 = fmul fast float %9180, %8655
  %9183 = fmul fast float %9180, %8656
  %9184 = fadd fast float %9181, %9170
  %9185 = fadd fast float %9182, %9171
  %9186 = fadd fast float %9183, %9172
  %9187 = fsub fast float 1.000000e+00, %9164
  %9188 = fsub fast float 1.000000e+00, %9165
  %9189 = fsub fast float 1.000000e+00, %9166
  %9190 = fmul fast float %9184, %9187
  %9191 = fmul fast float %9185, %9188
  %9192 = fmul fast float %9186, %9189
  br label %9193

; <label>:9193                                    ; preds = %9154, %9105
  %9194 = phi float [ %9131, %9105 ], [ %9190, %9154 ]
  %9195 = phi float [ %9132, %9105 ], [ %9191, %9154 ]
  %9196 = phi float [ %9133, %9105 ], [ %9192, %9154 ]
  %9197 = phi float [ %9120, %9105 ], [ %9164, %9154 ]
  %9198 = phi float [ %9120, %9105 ], [ %9165, %9154 ]
  %9199 = phi float [ %9120, %9105 ], [ %9166, %9154 ]
  br i1 %8686, label %9200, label %9398, !dx.controlflow.hints !179

; <label>:9200                                    ; preds = %9193
  %9201 = extractvalue %dx.types.CBufRet.f32 %9099, 0
  %9202 = fmul fast float %9201, %9101
  %9203 = fsub fast float %9096, %9194
  %9204 = fsub fast float %9097, %9195
  %9205 = fsub fast float %9098, %9196
  %9206 = fmul fast float %9202, %9203
  %9207 = fmul fast float %9202, %9204
  %9208 = fmul fast float %9202, %9205
  %9209 = fadd fast float %9206, %9194
  %9210 = fadd fast float %9207, %9195
  %9211 = fadd fast float %9208, %9196
  %9212 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9197)  ; FMax(a,b)
  %9213 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9198)  ; FMax(a,b)
  %9214 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9199)  ; FMax(a,b)
  %9215 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9095)  ; FMax(a,b)
  %9216 = call float @dx.op.binary.f32(i32 35, float %9094, float %9104)  ; FMax(a,b)
  %9217 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9216)  ; FMax(a,b)
  %9218 = fdiv fast float %9094, %9217
  %9219 = call float @dx.op.unary.f32(i32 7, float %9218)  ; Saturate(value)
  %9220 = fdiv fast float %9104, %9217
  %9221 = call float @dx.op.unary.f32(i32 7, float %9220)  ; Saturate(value)
  %9222 = fcmp fast une float %9215, 1.000000e+00
  br i1 %9222, label %9223, label %9236, !dx.controlflow.hints !180

; <label>:9223                                    ; preds = %9200
  %9224 = call float @dx.op.unary.f32(i32 23, float %9215)  ; Log(value)
  %9225 = fmul fast float %9224, 0x3FE62E4300000000
  %9226 = fmul fast float %9096, %9225
  %9227 = fsub fast float -0.000000e+00, %9226
  %9228 = fmul fast float %9097, %9225
  %9229 = fsub fast float -0.000000e+00, %9228
  %9230 = fmul fast float %9098, %9225
  %9231 = fsub fast float -0.000000e+00, %9230
  %9232 = fsub fast float 1.000000e+00, %9215
  %9233 = fdiv fast float %9227, %9232
  %9234 = fdiv fast float %9229, %9232
  %9235 = fdiv fast float %9231, %9232
  br label %9236

; <label>:9236                                    ; preds = %9223, %9200
  %9237 = phi float [ %9233, %9223 ], [ %9096, %9200 ]
  %9238 = phi float [ %9234, %9223 ], [ %9097, %9200 ]
  %9239 = phi float [ %9235, %9223 ], [ %9098, %9200 ]
  %9240 = phi float [ %9225, %9223 ], [ 0.000000e+00, %9200 ]
  %9241 = fcmp fast une float %9212, 1.000000e+00
  br i1 %9241, label %9242, label %9249, !dx.controlflow.hints !181

; <label>:9242                                    ; preds = %9236
  %9243 = call float @dx.op.unary.f32(i32 23, float %9212)  ; Log(value)
  %9244 = fmul fast float %9243, 0x3FE62E4300000000
  %9245 = fmul fast float %9209, %9244
  %9246 = fsub fast float -0.000000e+00, %9245
  %9247 = fsub fast float 1.000000e+00, %9212
  %9248 = fdiv fast float %9246, %9247
  br label %9249

; <label>:9249                                    ; preds = %9242, %9236
  %9250 = phi float [ %9248, %9242 ], [ %9209, %9236 ]
  %9251 = phi float [ %9244, %9242 ], [ 0.000000e+00, %9236 ]
  %9252 = fcmp fast une float %9213, 1.000000e+00
  br i1 %9252, label %9253, label %9260, !dx.controlflow.hints !181

; <label>:9253                                    ; preds = %9249
  %9254 = call float @dx.op.unary.f32(i32 23, float %9213)  ; Log(value)
  %9255 = fmul fast float %9254, 0x3FE62E4300000000
  %9256 = fmul fast float %9210, %9255
  %9257 = fsub fast float -0.000000e+00, %9256
  %9258 = fsub fast float 1.000000e+00, %9213
  %9259 = fdiv fast float %9257, %9258
  br label %9260

; <label>:9260                                    ; preds = %9253, %9249
  %9261 = phi float [ %9259, %9253 ], [ %9210, %9249 ]
  %9262 = phi float [ %9255, %9253 ], [ 0.000000e+00, %9249 ]
  %9263 = fcmp fast une float %9214, 1.000000e+00
  br i1 %9263, label %9264, label %9271, !dx.controlflow.hints !181

; <label>:9264                                    ; preds = %9260
  %9265 = call float @dx.op.unary.f32(i32 23, float %9214)  ; Log(value)
  %9266 = fmul fast float %9265, 0x3FE62E4300000000
  %9267 = fmul fast float %9211, %9266
  %9268 = fsub fast float -0.000000e+00, %9267
  %9269 = fsub fast float 1.000000e+00, %9214
  %9270 = fdiv fast float %9268, %9269
  br label %9271

; <label>:9271                                    ; preds = %9264, %9260
  %9272 = phi float [ %9270, %9264 ], [ %9211, %9260 ]
  %9273 = phi float [ %9266, %9264 ], [ 0.000000e+00, %9260 ]
  %9274 = fmul fast float %9237, %9221
  %9275 = fmul fast float %9238, %9221
  %9276 = fmul fast float %9239, %9221
  %9277 = fmul fast float %9240, %9221
  %9278 = fmul fast float %9250, %9219
  %9279 = fmul fast float %9261, %9219
  %9280 = fmul fast float %9272, %9219
  %9281 = fmul fast float %9251, %9219
  %9282 = fmul fast float %9262, %9219
  %9283 = fmul fast float %9273, %9219
  %9284 = fadd fast float %9278, %9274
  %9285 = fadd fast float %9279, %9275
  %9286 = fadd fast float %9280, %9276
  %9287 = fadd fast float %9281, %9277
  %9288 = fadd fast float %9282, %9277
  %9289 = fadd fast float %9283, %9277
  %9290 = fcmp fast une float %9287, 0.000000e+00
  br i1 %9290, label %9291, label %9298, !dx.controlflow.hints !182

; <label>:9291                                    ; preds = %9271
  %9292 = fmul fast float %9287, 0x3FF7154760000000
  %9293 = call float @dx.op.unary.f32(i32 21, float %9292)  ; Exp(value)
  %9294 = fsub fast float 1.000000e+00, %9293
  %9295 = fmul fast float %9284, %9294
  %9296 = fsub fast float -0.000000e+00, %9295
  %9297 = fdiv fast float %9296, %9287
  br label %9298

; <label>:9298                                    ; preds = %9291, %9271
  %9299 = phi float [ %9293, %9291 ], [ 1.000000e+00, %9271 ]
  %9300 = phi float [ %9297, %9291 ], [ %9284, %9271 ]
  %9301 = fcmp fast une float %9288, 0.000000e+00
  br i1 %9301, label %9302, label %9309, !dx.controlflow.hints !182

; <label>:9302                                    ; preds = %9298
  %9303 = fmul fast float %9288, 0x3FF7154760000000
  %9304 = call float @dx.op.unary.f32(i32 21, float %9303)  ; Exp(value)
  %9305 = fsub fast float 1.000000e+00, %9304
  %9306 = fmul fast float %9285, %9305
  %9307 = fsub fast float -0.000000e+00, %9306
  %9308 = fdiv fast float %9307, %9288
  br label %9309

; <label>:9309                                    ; preds = %9302, %9298
  %9310 = phi float [ %9304, %9302 ], [ 1.000000e+00, %9298 ]
  %9311 = phi float [ %9308, %9302 ], [ %9285, %9298 ]
  %9312 = fcmp fast une float %9289, 0.000000e+00
  br i1 %9312, label %9313, label %9320, !dx.controlflow.hints !182

; <label>:9313                                    ; preds = %9309
  %9314 = fmul fast float %9289, 0x3FF7154760000000
  %9315 = call float @dx.op.unary.f32(i32 21, float %9314)  ; Exp(value)
  %9316 = fsub fast float 1.000000e+00, %9315
  %9317 = fmul fast float %9286, %9316
  %9318 = fsub fast float -0.000000e+00, %9317
  %9319 = fdiv fast float %9318, %9289
  br label %9320

; <label>:9320                                    ; preds = %9313, %9309
  %9321 = phi float [ %9315, %9313 ], [ 1.000000e+00, %9309 ]
  %9322 = phi float [ %9319, %9313 ], [ %9286, %9309 ]
  %9323 = fcmp fast ogt float %9219, %9221
  br i1 %9323, label %9324, label %9344

; <label>:9324                                    ; preds = %9320
  %9325 = fsub fast float 1.000000e+00, %9221
  %9326 = fmul fast float %9237, %9325
  %9327 = fmul fast float %9238, %9325
  %9328 = fmul fast float %9239, %9325
  %9329 = fmul fast float %9240, %9325
  %9330 = fcmp fast une float %9329, 0.000000e+00
  br i1 %9330, label %9331, label %9382, !dx.controlflow.hints !183

; <label>:9331                                    ; preds = %9324
  %9332 = fmul fast float %9329, 0x3FF7154760000000
  %9333 = call float @dx.op.unary.f32(i32 21, float %9332)  ; Exp(value)
  %9334 = fsub fast float 1.000000e+00, %9333
  %9335 = fmul fast float %9326, %9334
  %9336 = fsub fast float -0.000000e+00, %9335
  %9337 = fmul fast float %9327, %9334
  %9338 = fsub fast float -0.000000e+00, %9337
  %9339 = fmul fast float %9328, %9334
  %9340 = fsub fast float -0.000000e+00, %9339
  %9341 = fdiv fast float %9336, %9329
  %9342 = fdiv fast float %9338, %9329
  %9343 = fdiv fast float %9340, %9329
  br label %9382

; <label>:9344                                    ; preds = %9320
  %9345 = fsub fast float 1.000000e+00, %9219
  %9346 = fmul fast float %9250, %9345
  %9347 = fmul fast float %9261, %9345
  %9348 = fmul fast float %9272, %9345
  %9349 = fmul fast float %9251, %9345
  %9350 = fmul fast float %9262, %9345
  %9351 = fmul fast float %9273, %9345
  %9352 = fcmp fast une float %9349, 0.000000e+00
  br i1 %9352, label %9353, label %9360, !dx.controlflow.hints !182

; <label>:9353                                    ; preds = %9344
  %9354 = fmul fast float %9349, 0x3FF7154760000000
  %9355 = call float @dx.op.unary.f32(i32 21, float %9354)  ; Exp(value)
  %9356 = fsub fast float 1.000000e+00, %9355
  %9357 = fmul fast float %9346, %9356
  %9358 = fsub fast float -0.000000e+00, %9357
  %9359 = fdiv fast float %9358, %9349
  br label %9360

; <label>:9360                                    ; preds = %9353, %9344
  %9361 = phi float [ %9359, %9353 ], [ %9346, %9344 ]
  %9362 = phi float [ %9355, %9353 ], [ 1.000000e+00, %9344 ]
  %9363 = fcmp fast une float %9350, 0.000000e+00
  br i1 %9363, label %9364, label %9371, !dx.controlflow.hints !182

; <label>:9364                                    ; preds = %9360
  %9365 = fmul fast float %9350, 0x3FF7154760000000
  %9366 = call float @dx.op.unary.f32(i32 21, float %9365)  ; Exp(value)
  %9367 = fsub fast float 1.000000e+00, %9366
  %9368 = fmul fast float %9347, %9367
  %9369 = fsub fast float -0.000000e+00, %9368
  %9370 = fdiv fast float %9369, %9350
  br label %9371

; <label>:9371                                    ; preds = %9364, %9360
  %9372 = phi float [ %9370, %9364 ], [ %9347, %9360 ]
  %9373 = phi float [ %9366, %9364 ], [ 1.000000e+00, %9360 ]
  %9374 = fcmp fast une float %9351, 0.000000e+00
  br i1 %9374, label %9375, label %9382, !dx.controlflow.hints !182

; <label>:9375                                    ; preds = %9371
  %9376 = fmul fast float %9351, 0x3FF7154760000000
  %9377 = call float @dx.op.unary.f32(i32 21, float %9376)  ; Exp(value)
  %9378 = fsub fast float 1.000000e+00, %9377
  %9379 = fmul fast float %9348, %9378
  %9380 = fsub fast float -0.000000e+00, %9379
  %9381 = fdiv fast float %9380, %9351
  br label %9382

; <label>:9382                                    ; preds = %9375, %9371, %9331, %9324
  %9383 = phi float [ %9381, %9375 ], [ %9343, %9331 ], [ %9328, %9324 ], [ %9348, %9371 ]
  %9384 = phi float [ %9372, %9375 ], [ %9342, %9331 ], [ %9327, %9324 ], [ %9372, %9371 ]
  %9385 = phi float [ %9361, %9375 ], [ %9341, %9331 ], [ %9326, %9324 ], [ %9361, %9371 ]
  %9386 = phi float [ %9377, %9375 ], [ %9333, %9331 ], [ 1.000000e+00, %9324 ], [ 1.000000e+00, %9371 ]
  %9387 = phi float [ %9373, %9375 ], [ %9333, %9331 ], [ 1.000000e+00, %9324 ], [ %9373, %9371 ]
  %9388 = phi float [ %9362, %9375 ], [ %9333, %9331 ], [ 1.000000e+00, %9324 ], [ %9362, %9371 ]
  %9389 = fmul fast float %9388, %9300
  %9390 = fmul fast float %9387, %9311
  %9391 = fmul fast float %9386, %9322
  %9392 = fadd fast float %9389, %9385
  %9393 = fadd fast float %9390, %9384
  %9394 = fadd fast float %9391, %9383
  %9395 = fmul fast float %9388, %9299
  %9396 = fmul fast float %9387, %9310
  %9397 = fmul fast float %9386, %9321
  br label %9398

; <label>:9398                                    ; preds = %9382, %9193
  %9399 = phi float [ %9397, %9382 ], [ %9199, %9193 ]
  %9400 = phi float [ %9396, %9382 ], [ %9198, %9193 ]
  %9401 = phi float [ %9395, %9382 ], [ %9197, %9193 ]
  %9402 = phi float [ %9394, %9382 ], [ %9196, %9193 ]
  %9403 = phi float [ %9393, %9382 ], [ %9195, %9193 ]
  %9404 = phi float [ %9392, %9382 ], [ %9194, %9193 ]
  %9405 = fmul fast float %9404, %8350
  %9406 = fmul fast float %9403, %8350
  %9407 = fmul fast float %9402, %8350
  %9408 = fmul fast float %9401, %8641
  %9409 = call float @dx.op.dot3.f32(i32 55, float %9401, float %9400, float %9399, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9410 = call float @dx.op.dot3.f32(i32 55, float %9405, float %9406, float %9407, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9411 = select i1 %278, float %9409, float %9401
  %9412 = select i1 %278, float %9409, float %9400
  %9413 = select i1 %278, float 1.000000e+00, float %9399
  %9414 = select i1 %278, float %9410, float %9405
  %9415 = select i1 %278, float 0.000000e+00, float %9406
  %9416 = select i1 %278, float 0.000000e+00, float %9407
  %9417 = fmul fast float %9411, %8635
  %9418 = fmul fast float %9412, %8636
  %9419 = fmul fast float %9413, %8637
  %9420 = fadd fast float %9417, %9414
  %9421 = fadd fast float %9418, %9415
  %9422 = fadd fast float %9416, %9419
  %9423 = fmul fast float %9411, %8638
  %9424 = fmul fast float %9412, %8639
  %9425 = fmul fast float %9413, %8640
  %9426 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9427 = extractvalue %dx.types.CBufRet.i32 %9426, 0
  %9428 = icmp eq i32 %9427, 0
  br i1 %9428, label %9796, label %9429, !dx.controlflow.hints !184

; <label>:9429                                    ; preds = %9398
  %9430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9431 = extractvalue %dx.types.CBufRet.f32 %9430, 2
  %9432 = extractvalue %dx.types.CBufRet.f32 %9430, 3
  %9433 = fmul fast float %9431, %123
  %9434 = fmul fast float %9432, %124
  %9435 = fmul fast float %9433, 2.000000e+00
  %9436 = fmul fast float %9434, 2.000000e+00
  %9437 = fsub fast float 1.000000e+00, %9435
  %9438 = fsub fast float 1.000000e+00, %9436
  %9439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9440 = extractvalue %dx.types.CBufRet.f32 %9439, 0
  %9441 = extractvalue %dx.types.CBufRet.f32 %9439, 1
  %9442 = extractvalue %dx.types.CBufRet.f32 %9439, 2
  %9443 = fmul fast float %9437, %9440
  %9444 = fmul fast float %9437, %9441
  %9445 = fmul fast float %9437, %9442
  %9446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9447 = extractvalue %dx.types.CBufRet.f32 %9446, 0
  %9448 = extractvalue %dx.types.CBufRet.f32 %9446, 1
  %9449 = extractvalue %dx.types.CBufRet.f32 %9446, 2
  %9450 = fmul fast float %9438, %9447
  %9451 = fmul fast float %9438, %9448
  %9452 = fmul fast float %9438, %9449
  %9453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9454 = extractvalue %dx.types.CBufRet.f32 %9453, 0
  %9455 = extractvalue %dx.types.CBufRet.f32 %9453, 1
  %9456 = extractvalue %dx.types.CBufRet.f32 %9453, 2
  %9457 = fadd fast float %9450, %9454
  %9458 = fadd fast float %9457, %9443
  %9459 = fadd fast float %9451, %9455
  %9460 = fadd fast float %9459, %9444
  %9461 = fadd fast float %9452, %9456
  %9462 = fadd fast float %9461, %9445
  %9463 = fmul fast float %9458, %8634
  %9464 = fmul fast float %9460, %8634
  %9465 = fmul fast float %9462, %8634
  %9466 = fmul fast float %9463, %9463
  %9467 = fmul fast float %9464, %9464
  %9468 = fadd fast float %9466, %9467
  %9469 = fmul fast float %9465, %9465
  %9470 = fadd fast float %9468, %9469
  %9471 = call float @dx.op.unary.f32(i32 24, float %9470)  ; Sqrt(value)
  %9472 = extractvalue %dx.types.CBufRet.f32 %8361, 0
  %9473 = fsub fast float %9471, %9472
  %9474 = extractvalue %dx.types.CBufRet.f32 %8361, 2
  %9475 = fmul fast float %9473, %9474
  %9476 = call float @dx.op.unary.f32(i32 7, float %9475)  ; Saturate(value)
  %9477 = fadd fast float %9476, -5.000000e-01
  %9478 = fmul fast float %9477, 2.000000e+00
  %9479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9480 = extractvalue %dx.types.CBufRet.f32 %9479, 2
  %9481 = call float @dx.op.binary.f32(i32 36, float %9480, float %9478)  ; FMin(a,b)
  %9482 = fsub fast float -0.000000e+00, %9480
  %9483 = fcmp fast ogt float %9481, %9482
  br i1 %9483, label %9484, label %9796, !dx.controlflow.hints !185

; <label>:9484                                    ; preds = %9429
  %9485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9486 = extractvalue %dx.types.CBufRet.f32 %9485, 3
  %9487 = fcmp fast ogt float %9486, 0.000000e+00
  br i1 %9487, label %9488, label %9563, !dx.controlflow.hints !186

; <label>:9488                                    ; preds = %9484
  %9489 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9490 = extractvalue %dx.types.Dimensions %9489, 0
  %9491 = sitofp i32 %9490 to float
  %9492 = extractvalue %dx.types.Dimensions %9489, 1
  %9493 = sitofp i32 %9492 to float
  %9494 = fmul fast float %9433, %9491
  %9495 = fmul fast float %9434, %9493
  %9496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9497 = extractvalue %dx.types.CBufRet.f32 %9496, 1
  %9498 = fsub fast float -0.000000e+00, %9497
  %9499 = fptoui float %9498 to i32
  %9500 = fptoui float %9494 to i32
  %9501 = fptoui float %9495 to i32
  %9502 = and i32 %9499, 31
  %9503 = lshr i32 %9500, %9502
  %9504 = lshr i32 %9501, %9502
  %9505 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9499, i32 %9503, i32 %9504, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9506 = extractvalue %dx.types.ResRet.f32 %9505, 0
  %9507 = fcmp fast olt float %9506, -1.000000e+00
  %9508 = fcmp fast ogt float %9506, -1.000000e+00
  %9509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9510 = extractvalue %dx.types.CBufRet.f32 %9509, 1
  %9511 = select i1 %9508, float %9510, float 1.000000e+00
  %9512 = fadd fast float %9506, 1.000000e+00
  %9513 = fmul fast float %9511, %9512
  %9514 = call float @dx.op.unary.f32(i32 6, float %9513)  ; FAbs(value)
  %9515 = extractvalue %dx.types.CBufRet.f32 %9509, 3
  %9516 = fcmp fast oge float %9514, %9515
  %9517 = select i1 %9516, float 0x4197782600000000, float %9514
  %9518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9519 = extractvalue %dx.types.CBufRet.f32 %9518, 0
  %9520 = extractvalue %dx.types.CBufRet.f32 %9518, 1
  %9521 = extractvalue %dx.types.CBufRet.f32 %9518, 2
  %9522 = select i1 %9507, float %9519, float %9440
  %9523 = select i1 %9507, float %9520, float %9441
  %9524 = select i1 %9507, float %9521, float %9442
  %9525 = fmul fast float %9522, %9437
  %9526 = fmul fast float %9523, %9437
  %9527 = fmul fast float %9524, %9437
  %9528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9529 = extractvalue %dx.types.CBufRet.f32 %9528, 0
  %9530 = extractvalue %dx.types.CBufRet.f32 %9528, 1
  %9531 = extractvalue %dx.types.CBufRet.f32 %9528, 2
  %9532 = select i1 %9507, float %9529, float %9447
  %9533 = select i1 %9507, float %9530, float %9448
  %9534 = select i1 %9507, float %9531, float %9449
  %9535 = fmul fast float %9532, %9438
  %9536 = fmul fast float %9533, %9438
  %9537 = fmul fast float %9534, %9438
  %9538 = fadd fast float %9535, %9525
  %9539 = fadd fast float %9536, %9526
  %9540 = fadd fast float %9537, %9527
  %9541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9542 = extractvalue %dx.types.CBufRet.f32 %9541, 0
  %9543 = extractvalue %dx.types.CBufRet.f32 %9541, 1
  %9544 = extractvalue %dx.types.CBufRet.f32 %9541, 2
  %9545 = select i1 %9507, float %9542, float %9454
  %9546 = select i1 %9507, float %9543, float %9455
  %9547 = select i1 %9507, float %9544, float %9456
  %9548 = fadd fast float %9538, %9545
  %9549 = fadd fast float %9539, %9546
  %9550 = fadd fast float %9540, %9547
  %9551 = fmul fast float %9548, %9517
  %9552 = fmul fast float %9549, %9517
  %9553 = fmul fast float %9550, %9517
  %9554 = fmul fast float %9551, %9551
  %9555 = fmul fast float %9552, %9552
  %9556 = fadd fast float %9554, %9555
  %9557 = fmul fast float %9553, %9553
  %9558 = fadd fast float %9556, %9557
  %9559 = call float @dx.op.unary.f32(i32 24, float %9558)  ; Sqrt(value)
  %9560 = fsub fast float %9559, %9472
  %9561 = fmul fast float %9560, %9474
  %9562 = call float @dx.op.unary.f32(i32 7, float %9561)  ; Saturate(value)
  br label %9563

; <label>:9563                                    ; preds = %9488, %9484
  %9564 = phi float [ %9562, %9488 ], [ 1.000000e+00, %9484 ]
  %9565 = fmul fast float %9481, 5.000000e-01
  %9566 = fadd fast float %9565, 5.000000e-01
  %9567 = call float @dx.op.unary.f32(i32 22, float %9566)  ; Frc(value)
  %9568 = call float @dx.op.unary.f32(i32 27, float %9567)  ; Round_ni(value)
  %9569 = call float @dx.op.unary.f32(i32 22, float %9567)  ; Frc(value)
  %9570 = fmul fast float %9569, 2.000000e+00
  %9571 = fadd fast float %9570, -1.000000e+00
  %9572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %55, float %9433, float %9434, float %9568, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9573 = extractvalue %dx.types.ResRet.f32 %9572, 0
  %9574 = extractvalue %dx.types.ResRet.f32 %9572, 1
  %9575 = extractvalue %dx.types.ResRet.f32 %9572, 2
  %9576 = extractvalue %dx.types.ResRet.f32 %9572, 3
  %9577 = fadd fast float %9573, -5.000000e-01
  %9578 = fadd fast float %9575, -5.000000e-01
  %9579 = fmul fast float %9577, 0xBFD5555560000000
  %9580 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9578, float %9579)  ; FMad(a,b,c)
  %9581 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9574, float 0.000000e+00)  ; FMad(a,b,c)
  %9582 = fadd fast float %9581, %9576
  %9583 = fmul fast float %9577, -7.500000e-01
  %9584 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9578, float %9583)  ; FMad(a,b,c)
  %9585 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9574, float 0.000000e+00)  ; FMad(a,b,c)
  %9586 = fadd fast float %9585, %9576
  %9587 = call float @dx.op.binary.f32(i32 35, float %9580, float -1.000000e+00)  ; FMax(a,b)
  %9588 = call float @dx.op.binary.f32(i32 35, float %9582, float -1.000000e+00)  ; FMax(a,b)
  %9589 = call float @dx.op.binary.f32(i32 35, float %9584, float -1.000000e+00)  ; FMax(a,b)
  %9590 = call float @dx.op.binary.f32(i32 35, float %9586, float -1.000000e+00)  ; FMax(a,b)
  %9591 = call float @dx.op.binary.f32(i32 36, float %9587, float 1.000000e+00)  ; FMin(a,b)
  %9592 = call float @dx.op.binary.f32(i32 36, float %9588, float 1.000000e+00)  ; FMin(a,b)
  %9593 = call float @dx.op.binary.f32(i32 36, float %9589, float 1.000000e+00)  ; FMin(a,b)
  %9594 = call float @dx.op.binary.f32(i32 36, float %9590, float 1.000000e+00)  ; FMin(a,b)
  %9595 = fcmp fast olt float %9591, 0x3FEFFF8020000000
  br i1 %9595, label %9596, label %9711, !dx.controlflow.hints !187

; <label>:9596                                    ; preds = %9563
  %9597 = extractvalue %dx.types.CBufRet.f32 %9479, 3
  %9598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9599 = extractvalue %dx.types.CBufRet.f32 %9598, 0
  %9600 = extractvalue %dx.types.CBufRet.f32 %9598, 1
  %9601 = extractvalue %dx.types.CBufRet.f32 %9598, 2
  %9602 = extractvalue %dx.types.CBufRet.f32 %9598, 3
  %9603 = fsub fast float %9599, %9591
  %9604 = fsub fast float %9600, %9592
  %9605 = fsub fast float %9601, %9593
  %9606 = fsub fast float %9602, %9594
  %9607 = fmul fast float %9603, %9597
  %9608 = fmul fast float %9604, %9597
  %9609 = fmul fast float %9605, %9597
  %9610 = fmul fast float %9606, %9597
  %9611 = fadd fast float %9607, %9591
  %9612 = fadd fast float %9608, %9592
  %9613 = fsub fast float -0.000000e+00, %9612
  %9614 = fadd fast float %9609, %9593
  %9615 = fadd fast float %9610, %9594
  %9616 = fmul fast float %9611, %9611
  %9617 = fsub fast float %9612, %9616
  %9618 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9617)  ; FMax(a,b)
  %9619 = fdiv fast float 1.000000e+00, %9618
  %9620 = fmul fast float %9612, %9611
  %9621 = fsub fast float %9614, %9620
  %9622 = fsub fast float %9571, %9611
  %9623 = fmul fast float %9571, %9571
  %9624 = fsub fast float %9623, %9612
  %9625 = fmul fast float %9622, %9619
  %9626 = fmul fast float %9625, %9621
  %9627 = fsub fast float %9624, %9626
  %9628 = fmul fast float %9612, %9612
  %9629 = fsub fast float %9615, %9628
  %9630 = fmul fast float %9621, %9621
  %9631 = fmul fast float %9630, %9619
  %9632 = fsub fast float %9629, %9631
  %9633 = fdiv fast float %9627, %9632
  %9634 = fmul fast float %9621, %9633
  %9635 = fsub fast float %9622, %9634
  %9636 = fmul fast float %9635, %9619
  %9637 = fmul fast float %9636, %9611
  %9638 = fsub fast float 1.000000e+00, %9637
  %9639 = fmul fast float %9612, %9633
  %9640 = fsub fast float %9638, %9639
  %9641 = fmul fast float %9636, %9636
  %9642 = fmul fast float %9633, 4.000000e+00
  %9643 = fmul fast float %9642, %9640
  %9644 = fsub fast float %9641, %9643
  %9645 = call float @dx.op.unary.f32(i32 24, float %9644)  ; Sqrt(value)
  %9646 = fcmp fast oge float %9636, 0.000000e+00
  %9647 = fsub fast float -0.000000e+00, %9645
  %9648 = select i1 %9646, float %9647, float %9645
  %9649 = fsub fast float %9648, %9636
  %9650 = fdiv fast float %9649, %9633
  %9651 = fdiv fast float %9640, %9649
  %9652 = fmul fast float %9650, 5.000000e-01
  %9653 = fmul fast float %9651, 2.000000e+00
  %9654 = select i1 %9646, float %9652, float %9653
  %9655 = select i1 %9646, float %9653, float %9652
  %9656 = call float @dx.op.binary.f32(i32 35, float %9654, float %9655)  ; FMax(a,b)
  %9657 = call float @dx.op.binary.f32(i32 36, float %9654, float %9655)  ; FMin(a,b)
  %9658 = fcmp fast ogt float %9571, %9657
  br i1 %9658, label %9659, label %9669

; <label>:9659                                    ; preds = %9596
  %9660 = fsub fast float %9571, %9657
  %9661 = fsub fast float %9656, %9657
  %9662 = fmul fast float %9660, %9661
  %9663 = fmul fast float %9656, %9571
  %9664 = fadd fast float %9656, %9571
  %9665 = fmul fast float %9664, %9611
  %9666 = fadd fast float %9663, %9612
  %9667 = fsub fast float %9666, %9665
  %9668 = fdiv fast float %9667, %9662
  br label %9669

; <label>:9669                                    ; preds = %9659, %9596
  %9670 = phi float [ %9668, %9659 ], [ 0.000000e+00, %9596 ]
  %9671 = fcmp fast ogt float %9571, %9656
  %9672 = fsub fast float %9571, %9656
  br i1 %9671, label %9673, label %9683

; <label>:9673                                    ; preds = %9669
  %9674 = fsub fast float %9656, %9657
  %9675 = fmul fast float %9674, %9672
  %9676 = fmul fast float %9657, %9571
  %9677 = fadd fast float %9657, %9571
  %9678 = fmul fast float %9677, %9611
  %9679 = fsub fast float %9613, %9676
  %9680 = fadd fast float %9679, %9678
  %9681 = fdiv fast float %9680, %9675
  %9682 = fadd fast float %9681, %9670
  br label %9683

; <label>:9683                                    ; preds = %9673, %9669
  %9684 = phi float [ %9682, %9673 ], [ %9670, %9669 ]
  %9685 = fsub fast float %9571, %9657
  %9686 = fmul fast float %9685, %9672
  %9687 = fmul fast float %9657, %9656
  %9688 = fadd fast float %9657, %9656
  %9689 = fmul fast float %9688, %9611
  %9690 = fadd fast float %9687, %9612
  %9691 = fsub fast float %9690, %9689
  %9692 = fdiv fast float %9691, %9686
  %9693 = call float @dx.op.unary.f32(i32 7, float %9684)  ; Saturate(value)
  %9694 = fcmp fast oeq float %8362, 0.000000e+00
  %9695 = extractvalue %dx.types.CBufRet.f32 %9479, 0
  %9696 = fcmp fast oeq float %9695, 0.000000e+00
  %9697 = or i1 %9694, %9696
  %9698 = fmul fast float %9695, 2.000000e+00
  %9699 = fadd fast float %9480, %9481
  %9700 = fdiv fast float %9699, %9698
  %9701 = call float @dx.op.unary.f32(i32 7, float %9700)  ; Saturate(value)
  %9702 = fmul fast float %9701, 2.000000e+00
  %9703 = fsub fast float 3.000000e+00, %9702
  %9704 = fmul fast float %9701, %9701
  %9705 = fmul fast float %9704, %9703
  %9706 = select i1 %9697, float 1.000000e+00, float %9705
  %9707 = fmul fast float %9692, %8362
  %9708 = fadd fast float %9693, %9707
  %9709 = call float @dx.op.unary.f32(i32 7, float %9708)  ; Saturate(value)
  %9710 = fmul fast float %9706, %9709
  br label %9711

; <label>:9711                                    ; preds = %9683, %9563
  %9712 = phi float [ %9710, %9683 ], [ 0.000000e+00, %9563 ]
  %9713 = fsub fast float 1.000000e+00, %9712
  %9714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %55, float %9433, float %9434, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9715 = extractvalue %dx.types.ResRet.f32 %9714, 0
  %9716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9717 = extractvalue %dx.types.CBufRet.i32 %9716, 2
  %9718 = icmp eq i32 %9717, 0
  br i1 %9718, label %9724, label %9719

; <label>:9719                                    ; preds = %9711
  %9720 = call float @dx.op.unary.f32(i32 7, float %9712)  ; Saturate(value)
  %9721 = fadd fast float %9715, -1.000000e+00
  %9722 = fmul fast float %9720, %9721
  %9723 = fadd fast float %9722, 1.000000e+00
  br label %9724

; <label>:9724                                    ; preds = %9719, %9711
  %9725 = phi float [ %9723, %9719 ], [ %9713, %9711 ]
  br i1 %9487, label %9726, label %9744

; <label>:9726                                    ; preds = %9724
  %9727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9728 = extractvalue %dx.types.CBufRet.f32 %9727, 1
  %9729 = fsub fast float %9564, %9728
  %9730 = call float @dx.op.unary.f32(i32 7, float %9729)  ; Saturate(value)
  %9731 = fsub fast float %9564, %9486
  %9732 = call float @dx.op.unary.f32(i32 7, float %9731)  ; Saturate(value)
  %9733 = fsub fast float %9730, %9732
  %9734 = fsub fast float %9566, %9732
  %9735 = fdiv fast float %9734, %9733
  %9736 = call float @dx.op.unary.f32(i32 7, float %9735)  ; Saturate(value)
  %9737 = fmul fast float %9736, 2.000000e+00
  %9738 = fsub fast float 3.000000e+00, %9737
  %9739 = fsub fast float %9715, %9725
  %9740 = fmul fast float %9736, %9736
  %9741 = fmul fast float %9740, %9739
  %9742 = fmul fast float %9741, %9738
  %9743 = fadd fast float %9742, %9725
  br label %9744

; <label>:9744                                    ; preds = %9726, %9724
  %9745 = phi float [ %9743, %9726 ], [ %9725, %9724 ]
  %9746 = call float @dx.op.binary.f32(i32 35, float %9715, float %9745)  ; FMax(a,b)
  %9747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9748 = extractvalue %dx.types.CBufRet.i32 %9747, 2
  %9749 = and i32 %9748, 1
  %9750 = icmp eq i32 %9749, 0
  %9751 = fcmp fast une float %9746, 1.000000e+00
  %9752 = and i1 %9751, %9750
  br i1 %9752, label %9753, label %9772

; <label>:9753                                    ; preds = %9744
  %9754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %55, float %9433, float %9434, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9755 = extractvalue %dx.types.ResRet.f32 %9754, 0
  %9756 = extractvalue %dx.types.ResRet.f32 %9754, 1
  %9757 = extractvalue %dx.types.ResRet.f32 %9754, 2
  %9758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9759 = extractvalue %dx.types.CBufRet.f32 %9758, 1
  %9760 = fmul fast float %9759, %9755
  %9761 = fmul fast float %9759, %9756
  %9762 = fmul fast float %9759, %9757
  %9763 = fcmp fast ogt float %9715, 0x3FEFFF2E40000000
  %9764 = fsub fast float 1.000000e+00, %9746
  %9765 = fsub fast float 1.000000e+00, %9715
  %9766 = fdiv fast float %9764, %9765
  %9767 = call float @dx.op.unary.f32(i32 7, float %9766)  ; Saturate(value)
  %9768 = select i1 %9763, float 0.000000e+00, float %9767
  %9769 = fmul fast float %9760, %9768
  %9770 = fmul fast float %9761, %9768
  %9771 = fmul fast float %9762, %9768
  br label %9772

; <label>:9772                                    ; preds = %9753, %9744
  %9773 = phi float [ 0.000000e+00, %9744 ], [ %9769, %9753 ]
  %9774 = phi float [ 0.000000e+00, %9744 ], [ %9770, %9753 ]
  %9775 = phi float [ 0.000000e+00, %9744 ], [ %9771, %9753 ]
  %9776 = fmul fast float %9773, %8350
  %9777 = fmul fast float %9774, %8350
  %9778 = fmul fast float %9775, %8350
  %9779 = fmul fast float %9746, %9408
  %9780 = call float @dx.op.dot3.f32(i32 55, float %9746, float %9746, float %9746, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9781 = call float @dx.op.dot3.f32(i32 55, float %9776, float %9777, float %9778, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9782 = select i1 %278, float %9780, float %9746
  %9783 = select i1 %278, float 1.000000e+00, float %9746
  %9784 = select i1 %278, float %9781, float %9776
  %9785 = select i1 %278, float 0.000000e+00, float %9777
  %9786 = select i1 %278, float 0.000000e+00, float %9778
  %9787 = fmul fast float %9782, %9420
  %9788 = fmul fast float %9782, %9421
  %9789 = fmul fast float %9783, %9422
  %9790 = fadd fast float %9787, %9784
  %9791 = fadd fast float %9788, %9785
  %9792 = fadd fast float %9786, %9789
  %9793 = fmul fast float %9782, %9423
  %9794 = fmul fast float %9782, %9424
  %9795 = fmul fast float %9783, %9425
  br label %9796

; <label>:9796                                    ; preds = %9772, %9429, %9398, %8630
  %9797 = phi float [ %8635, %8630 ], [ %9420, %9398 ], [ %9790, %9772 ], [ %9420, %9429 ]
  %9798 = phi float [ %8636, %8630 ], [ %9421, %9398 ], [ %9791, %9772 ], [ %9421, %9429 ]
  %9799 = phi float [ %8637, %8630 ], [ %9422, %9398 ], [ %9792, %9772 ], [ %9422, %9429 ]
  %9800 = phi float [ %8638, %8630 ], [ %9423, %9398 ], [ %9793, %9772 ], [ %9423, %9429 ]
  %9801 = phi float [ %8639, %8630 ], [ %9424, %9398 ], [ %9794, %9772 ], [ %9424, %9429 ]
  %9802 = phi float [ %8640, %8630 ], [ %9425, %9398 ], [ %9795, %9772 ], [ %9425, %9429 ]
  %9803 = phi float [ %8641, %8630 ], [ %9408, %9398 ], [ %9779, %9772 ], [ %9408, %9429 ]
  %9804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9805 = extractvalue %dx.types.CBufRet.f32 %9804, 2
  %9806 = extractvalue %dx.types.CBufRet.f32 %9804, 3
  %9807 = fmul fast float %9805, %123
  %9808 = fmul fast float %9806, %124
  %9809 = call float @dx.op.unary.f32(i32 7, float %9807)  ; Saturate(value)
  %9810 = call float @dx.op.unary.f32(i32 7, float %9808)  ; Saturate(value)
  %9811 = select i1 %8372, i32 2, i32 0
  %9812 = or i32 %9811, 1
  %9813 = uitofp i32 %9812 to float
  %9814 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9809, float %9810, float %9813, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9815 = extractvalue %dx.types.ResRet.f32 %9814, 0
  %9816 = extractvalue %dx.types.ResRet.f32 %9814, 1
  %9817 = extractvalue %dx.types.ResRet.f32 %9814, 2
  %9818 = extractvalue %dx.types.ResRet.f32 %9814, 3
  %9819 = add nuw nsw i32 %9811, 2
  %9820 = uitofp i32 %9819 to float
  %9821 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9809, float %9810, float %9820, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9822 = extractvalue %dx.types.ResRet.f32 %9821, 0
  %9823 = extractvalue %dx.types.ResRet.f32 %9821, 1
  %9824 = extractvalue %dx.types.ResRet.f32 %9821, 2
  %9825 = extractvalue %dx.types.ResRet.f32 %9821, 3
  %9826 = call float @dx.op.binary.f32(i32 35, float %9816, float %9817)  ; FMax(a,b)
  %9827 = call float @dx.op.binary.f32(i32 35, float %9815, float %9826)  ; FMax(a,b)
  %9828 = call float @dx.op.binary.f32(i32 35, float %9827, float %9818)  ; FMax(a,b)
  %9829 = call float @dx.op.binary.f32(i32 36, float %9823, float %9824)  ; FMin(a,b)
  %9830 = call float @dx.op.binary.f32(i32 36, float %9822, float %9829)  ; FMin(a,b)
  %9831 = call float @dx.op.binary.f32(i32 36, float %9830, float %9825)  ; FMin(a,b)
  %9832 = fmul fast float %9828, 2.550000e+02
  %9833 = fadd fast float %9832, 0x3F70101020000000
  %9834 = fptoui float %9833 to i32
  %9835 = fmul fast float %9831, 2.550000e+02
  %9836 = fadd fast float %9835, 0x3F70101020000000
  %9837 = fptoui float %9836 to i32
  %9838 = icmp ult i32 %9834, %9837
  br i1 %9838, label %9839, label %10008

; <label>:9839                                    ; preds = %9796
  %9840 = fcmp fast ogt float %109, 9.843750e-01
  %9841 = fadd fast float %8634, -4.000000e+00
  %9842 = select i1 %9840, float -4.000000e+00, float %9841
  %9843 = call float @dx.op.binary.f32(i32 35, float %9842, float 0.000000e+00)  ; FMax(a,b)
  %9844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9845 = extractvalue %dx.types.CBufRet.f32 %9844, 0
  %9846 = fadd fast float %9845, %9843
  %9847 = extractvalue %dx.types.CBufRet.f32 %9844, 2
  %9848 = fmul fast float %9846, %9847
  %9849 = call float @dx.op.unary.f32(i32 23, float %9848)  ; Log(value)
  %9850 = extractvalue %dx.types.CBufRet.f32 %9844, 3
  %9851 = fmul fast float %9850, %9849
  %9852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9853 = extractvalue %dx.types.CBufRet.f32 %9852, 2
  %9854 = fmul fast float %9851, %9853
  %9855 = call float @dx.op.unary.f32(i32 7, float %9854)  ; Saturate(value)
  %9856 = uitofp i32 %9834 to float
  %9857 = uitofp i32 %9837 to float
  %9858 = fadd fast float %9856, 5.000000e-01
  %9859 = fadd fast float %9857, 5.000000e-01
  %9860 = fmul fast float %9853, %9858
  %9861 = fmul fast float %9853, %9859
  %9862 = fadd fast float %9860, 0x3F0FFB4800000000
  %9863 = fadd fast float %9861, 0xBF0FFB4800000000
  %9864 = call float @dx.op.binary.f32(i32 35, float %9855, float %9862)  ; FMax(a,b)
  %9865 = call float @dx.op.binary.f32(i32 36, float %9864, float %9863)  ; FMin(a,b)
  %9866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9867 = extractvalue %dx.types.CBufRet.f32 %9866, 1
  %9868 = extractvalue %dx.types.CBufRet.f32 %9866, 2
  %9869 = extractvalue %dx.types.CBufRet.f32 %9866, 0
  %9870 = select i1 %8372, float %9869, float 0.000000e+00
  %9871 = fmul fast float %9867, %9865
  %9872 = fadd fast float %9870, %9871
  %9873 = fadd fast float %9870, %9868
  %9874 = fsub fast float %9867, %9868
  %9875 = fadd fast float %9874, %9870
  %9876 = call float @dx.op.binary.f32(i32 35, float %9872, float %9873)  ; FMax(a,b)
  %9877 = call float @dx.op.binary.f32(i32 36, float %9876, float %9875)  ; FMin(a,b)
  %9878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %9809, float %9810, float %9877, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9879 = extractvalue %dx.types.ResRet.f32 %9878, 0
  %9880 = extractvalue %dx.types.ResRet.f32 %9878, 1
  %9881 = extractvalue %dx.types.ResRet.f32 %9878, 2
  %9882 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9883 = extractvalue %dx.types.CBufRet.i32 %9882, 0
  %9884 = extractvalue %dx.types.CBufRet.i32 %9882, 1
  %9885 = uitofp i32 %9883 to float
  %9886 = uitofp i32 %9884 to float
  %9887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9888 = extractvalue %dx.types.CBufRet.f32 %9887, 0
  %9889 = extractvalue %dx.types.CBufRet.f32 %9887, 1
  %9890 = fmul fast float %9885, %9809
  %9891 = fmul fast float %9886, %9810
  %9892 = fadd fast float %9890, -5.000000e-01
  %9893 = fadd fast float %9891, -5.000000e-01
  %9894 = call float @dx.op.unary.f32(i32 22, float %9892)  ; Frc(value)
  %9895 = call float @dx.op.unary.f32(i32 22, float %9893)  ; Frc(value)
  %9896 = fmul fast float %9894, %9894
  %9897 = fmul fast float %9896, %9894
  %9898 = fsub fast float 3.000000e+00, %9894
  %9899 = fmul fast float %9896, %9898
  %9900 = fmul fast float %9894, 3.000000e+00
  %9901 = fmul fast float %9897, 3.000000e+00
  %9902 = fmul fast float %9896, 6.000000e+00
  %9903 = fsub fast float %9901, %9902
  %9904 = fadd fast float %9903, 4.000000e+00
  %9905 = fmul fast float %9904, 0x3FC5555560000000
  %9906 = fmul fast float %9897, -3.000000e+00
  %9907 = fadd fast float %9896, %9894
  %9908 = fmul fast float %9907, 3.000000e+00
  %9909 = fadd fast float %9906, 1.000000e+00
  %9910 = fadd fast float %9909, %9908
  %9911 = fmul fast float %9897, 0x3FC5555560000000
  %9912 = fmul fast float %9895, %9895
  %9913 = fmul fast float %9912, %9895
  %9914 = fsub fast float 3.000000e+00, %9895
  %9915 = fmul fast float %9912, %9914
  %9916 = fmul fast float %9895, 3.000000e+00
  %9917 = fmul fast float %9913, 3.000000e+00
  %9918 = fmul fast float %9912, 6.000000e+00
  %9919 = fsub fast float %9917, %9918
  %9920 = fadd fast float %9919, 4.000000e+00
  %9921 = fmul fast float %9920, 0x3FC5555560000000
  %9922 = fmul fast float %9913, -3.000000e+00
  %9923 = fadd fast float %9912, %9895
  %9924 = fmul fast float %9923, 3.000000e+00
  %9925 = fadd fast float %9922, 1.000000e+00
  %9926 = fadd fast float %9925, %9924
  %9927 = fmul fast float %9913, 0x3FC5555560000000
  %9928 = fadd fast float %9894, 1.000000e+00
  %9929 = fsub fast float 1.000000e+00, %9900
  %9930 = fadd fast float %9929, %9899
  %9931 = fadd fast float %9930, %9904
  %9932 = fmul fast float %9931, 0x3FC5555560000000
  %9933 = fdiv fast float %9905, %9932
  %9934 = fsub fast float %9928, %9933
  %9935 = fsub fast float 1.000000e+00, %9894
  %9936 = fadd fast float %9910, %9897
  %9937 = fmul fast float %9936, 0x3FC5555560000000
  %9938 = fdiv fast float %9911, %9937
  %9939 = fadd fast float %9935, %9938
  %9940 = fadd fast float %9895, 1.000000e+00
  %9941 = fsub fast float 1.000000e+00, %9916
  %9942 = fadd fast float %9941, %9915
  %9943 = fadd fast float %9942, %9920
  %9944 = fmul fast float %9943, 0x3FC5555560000000
  %9945 = fdiv fast float %9921, %9944
  %9946 = fsub fast float %9940, %9945
  %9947 = fsub fast float 1.000000e+00, %9895
  %9948 = fadd fast float %9926, %9913
  %9949 = fmul fast float %9948, 0x3FC5555560000000
  %9950 = fdiv fast float %9927, %9949
  %9951 = fadd fast float %9950, %9947
  %9952 = fmul fast float %9934, %9888
  %9953 = fsub fast float %9809, %9952
  %9954 = fmul fast float %9939, %9888
  %9955 = fadd fast float %9954, %9809
  %9956 = fmul fast float %9951, %9889
  %9957 = fadd fast float %9956, %9810
  %9958 = fmul fast float %9946, %9889
  %9959 = fsub fast float %9810, %9958
  %9960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9953, float %9959, float %9877, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9961 = extractvalue %dx.types.ResRet.f32 %9960, 0
  %9962 = extractvalue %dx.types.ResRet.f32 %9960, 1
  %9963 = extractvalue %dx.types.ResRet.f32 %9960, 2
  %9964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9955, float %9959, float %9877, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9965 = extractvalue %dx.types.ResRet.f32 %9964, 0
  %9966 = extractvalue %dx.types.ResRet.f32 %9964, 1
  %9967 = extractvalue %dx.types.ResRet.f32 %9964, 2
  %9968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9953, float %9957, float %9877, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9969 = extractvalue %dx.types.ResRet.f32 %9968, 0
  %9970 = extractvalue %dx.types.ResRet.f32 %9968, 1
  %9971 = extractvalue %dx.types.ResRet.f32 %9968, 2
  %9972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9955, float %9957, float %9877, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9973 = extractvalue %dx.types.ResRet.f32 %9972, 0
  %9974 = extractvalue %dx.types.ResRet.f32 %9972, 1
  %9975 = extractvalue %dx.types.ResRet.f32 %9972, 2
  %9976 = fsub fast float %9969, %9961
  %9977 = fsub fast float %9970, %9962
  %9978 = fsub fast float %9971, %9963
  %9979 = fmul fast float %9976, %9949
  %9980 = fmul fast float %9977, %9949
  %9981 = fmul fast float %9978, %9949
  %9982 = fadd fast float %9979, %9961
  %9983 = fadd fast float %9980, %9962
  %9984 = fadd fast float %9981, %9963
  %9985 = fsub fast float %9973, %9965
  %9986 = fsub fast float %9974, %9966
  %9987 = fsub fast float %9975, %9967
  %9988 = fmul fast float %9985, %9949
  %9989 = fmul fast float %9986, %9949
  %9990 = fmul fast float %9987, %9949
  %9991 = fsub fast float %9965, %9982
  %9992 = fadd fast float %9991, %9988
  %9993 = fsub fast float %9966, %9983
  %9994 = fadd fast float %9993, %9989
  %9995 = fsub fast float %9967, %9984
  %9996 = fadd fast float %9995, %9990
  %9997 = fmul fast float %9992, %9937
  %9998 = fmul fast float %9994, %9937
  %9999 = fmul fast float %9996, %9937
  %10000 = fadd fast float %9997, %9982
  %10001 = fadd fast float %9998, %9983
  %10002 = fadd fast float %9999, %9984
  %10003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10004 = extractvalue %dx.types.CBufRet.f32 %10003, 1
  %10005 = fmul fast float %10000, %10004
  %10006 = fmul fast float %10001, %10004
  %10007 = fmul fast float %10002, %10004
  br label %10008

; <label>:10008                                   ; preds = %9839, %9796
  %10009 = phi float [ %9879, %9839 ], [ 1.000000e+00, %9796 ]
  %10010 = phi float [ %9880, %9839 ], [ 1.000000e+00, %9796 ]
  %10011 = phi float [ %9881, %9839 ], [ 1.000000e+00, %9796 ]
  %10012 = phi float [ %10005, %9839 ], [ 0.000000e+00, %9796 ]
  %10013 = phi float [ %10006, %9839 ], [ 0.000000e+00, %9796 ]
  %10014 = phi float [ %10007, %9839 ], [ 0.000000e+00, %9796 ]
  %10015 = fmul fast float %10012, %8350
  %10016 = fmul fast float %10013, %8350
  %10017 = fmul fast float %10014, %8350
  %10018 = fmul fast float %10009, %9803
  %10019 = call float @dx.op.dot3.f32(i32 55, float %10009, float %10010, float %10011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10020 = call float @dx.op.dot3.f32(i32 55, float %10015, float %10016, float %10017, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10021 = select i1 %278, float %10019, float %10009
  %10022 = select i1 %278, float %10019, float %10010
  %10023 = select i1 %278, float 1.000000e+00, float %10011
  %10024 = select i1 %278, float %10020, float %10015
  %10025 = select i1 %278, float 0.000000e+00, float %10016
  %10026 = select i1 %278, float 0.000000e+00, float %10017
  %10027 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10028 = extractvalue %dx.types.CBufRet.i32 %10027, 3
  %10029 = and i32 %10028, 3
  %10030 = icmp ne i32 %10029, 0
  %10031 = and i32 %10028, 4
  %10032 = icmp ne i32 %10031, 0
  %10033 = and i1 %10030, %10032
  %10034 = and i1 %278, %10033
  br i1 %10034, label %10035, label %10041

; <label>:10035                                   ; preds = %10008
  %10036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10037 = extractvalue %dx.types.CBufRet.f32 %10036, 1
  %10038 = fadd fast float %10018, -1.000000e+00
  %10039 = fmul fast float %10037, %10038
  %10040 = fadd fast float %10039, 1.000000e+00
  br label %10041

; <label>:10041                                   ; preds = %10035, %10008
  %10042 = phi float [ %10040, %10035 ], [ %10018, %10008 ]
  %10043 = fadd fast float %9800, %9797
  %10044 = fmul fast float %10021, %10043
  %10045 = fadd fast float %10044, %10024
  %10046 = fadd fast float %9801, %9798
  %10047 = fmul fast float %10022, %10046
  %10048 = fadd fast float %10047, %10025
  %10049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10050 = extractvalue %dx.types.CBufRet.f32 %10049, 0
  br i1 %278, label %10051, label %10075

; <label>:10051                                   ; preds = %10041
  %10052 = fadd fast float %10045, %10048
  %10053 = fmul fast float %10050, %10052
  %10054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10055 = extractvalue %dx.types.CBufRet.f32 %10054, 3
  %10056 = extractvalue %dx.types.CBufRet.f32 %8354, 1
  %10057 = fsub fast float %8359, %8353
  %10058 = fadd fast float %10057, %8360
  %10059 = fsub fast float %10058, %10056
  %10060 = extractvalue %dx.types.CBufRet.f32 %8354, 2
  %10061 = fmul fast float %10059, %10060
  %10062 = call float @dx.op.unary.f32(i32 7, float %10061)  ; Saturate(value)
  %10063 = fsub fast float %10062, %10055
  %10064 = fmul fast float %10063, %10042
  %10065 = fadd fast float %10064, %10055
  %10066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10067 = extractvalue %dx.types.CBufRet.f32 %10066, 0
  %10068 = fsub fast float %10065, %10067
  %10069 = fmul fast float %10068, 1.000000e+01
  %10070 = call float @dx.op.unary.f32(i32 7, float %10069)  ; Saturate(value)
  %10071 = fsub fast float %3906, %8350
  %10072 = fmul fast float %10070, %10071
  %10073 = fadd fast float %10072, %8350
  %10074 = fmul fast float %10073, %10065
  br label %10099

; <label>:10075                                   ; preds = %10041
  %10076 = fadd fast float %9802, %9799
  %10077 = fmul fast float %10023, %10076
  %10078 = fadd fast float %10077, %10026
  %10079 = fmul fast float %10050, %10045
  %10080 = fmul fast float %10050, %10048
  %10081 = fmul fast float %10050, %10078
  %10082 = call float @dx.op.binary.f32(i32 35, float %10080, float %10081)  ; FMax(a,b)
  %10083 = call float @dx.op.binary.f32(i32 35, float %10079, float %10082)  ; FMax(a,b)
  %10084 = call float @dx.op.binary.f32(i32 35, float %10083, float %8350)  ; FMax(a,b)
  %10085 = fcmp fast ugt float %10084, 0x3F10000000000000
  br i1 %10085, label %10087, label %10086

; <label>:10086                                   ; preds = %10075
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10087

; <label>:10087                                   ; preds = %10086, %10075
  %10088 = add i32 %63, 356
  %10089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %10088, i32 undef)  ; BufferLoad(srv,index,wot)
  %10090 = extractvalue %dx.types.ResRet.i32 %10089, 0
  %10091 = and i32 %10090, 32
  %10092 = icmp eq i32 %10091, 0
  br i1 %10092, label %10099, label %10093

; <label>:10093                                   ; preds = %10087
  %10094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10095 = extractvalue %dx.types.CBufRet.f32 %10094, 0
  %10096 = fmul fast float %10095, 0x3FE99999A0000000
  %10097 = fadd fast float %10095, %10079
  %10098 = fadd fast float %10096, %10081
  br label %10099

; <label>:10099                                   ; preds = %10093, %10087, %10051
  %10100 = phi float [ %10053, %10051 ], [ %10097, %10093 ], [ %10079, %10087 ]
  %10101 = phi float [ %10074, %10051 ], [ %10080, %10093 ], [ %10080, %10087 ]
  %10102 = phi float [ %10073, %10051 ], [ %10098, %10093 ], [ %10081, %10087 ]
  %10103 = phi float [ %10073, %10051 ], [ %8350, %10093 ], [ %8350, %10087 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10104 = call float @dx.op.binary.f32(i32 36, float %10100, float 3.225500e+04)  ; FMin(a,b)
  %10105 = call float @dx.op.binary.f32(i32 36, float %10101, float 3.225500e+04)  ; FMin(a,b)
  %10106 = call float @dx.op.binary.f32(i32 36, float %10102, float 3.225500e+04)  ; FMin(a,b)
  %10107 = call float @dx.op.binary.f32(i32 36, float %10103, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10104)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10105)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10106)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10107)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!74 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0]}
!75 = !{void ()* @ps_main, !"ps_main", !76, !4, !103}
!76 = !{!77, !101, null}
!77 = !{!78, !81, !82, !84, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !97, !98, !99, !100}
!78 = !{i32 0, !"SV_Position", i8 9, i8 3, !79, i8 4, i32 1, i8 4, i32 0, i8 0, !80}
!79 = !{i32 0}
!80 = !{i32 3, i32 15}
!81 = !{i32 1, !"COLOR", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 1, i8 0, !80}
!82 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 2, i8 0, !83}
!83 = !{i32 3, i32 3}
!84 = !{i32 3, !"NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 3, i32 3, i8 0, !85}
!85 = !{i32 3, i32 7}
!86 = !{i32 4, !"TANGENT", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 4, i8 0, !80}
!87 = !{i32 5, !"SH_RED", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 5, i8 0, !80}
!88 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 6, i8 0, !80}
!89 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 7, i8 0, !80}
!90 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !79, i8 2, i32 1, i8 3, i32 8, i8 0, !85}
!91 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 9, i8 0, !80}
!92 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 2, i32 10, i8 0, !83}
!93 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 11, i8 0, !80}
!94 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 12, i8 0, !85}
!95 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !79, i8 1, i32 1, i8 1, i32 13, i8 0, !96}
!96 = !{i32 3, i32 1}
!97 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !79, i8 1, i32 1, i8 2, i32 13, i8 1, !96}
!98 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !79, i8 1, i32 1, i8 4, i32 14, i8 0, !96}
!99 = !{i32 16, !"SV_IsFrontFace", i8 5, i8 13, !79, i8 1, i32 1, i8 1, i32 13, i8 3, !96}
!100 = !{i32 17, !"SV_SampleIndex", i8 5, i8 12, !79, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!101 = !{!102}
!102 = !{i32 0, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 0, i8 0, !80}
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
!147 = distinct !{!147, !148, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!148 = distinct !{!148, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!149 = distinct !{!149, !148, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!150 = distinct !{!150, !148, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!151 = distinct !{!151, !152, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!152 = distinct !{!152, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!153 = distinct !{!153, !152, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!154 = distinct !{!154, !152, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
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

