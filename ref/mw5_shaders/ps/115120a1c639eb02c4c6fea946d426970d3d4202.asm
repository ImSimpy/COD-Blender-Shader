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
;
; shader hash: 5f3143ec93a4df1e377eabc0cb9d33f0
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
;                                   texture    byte         r/o      T3      t9,space1     1
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture    byte         r/o      T5     t22,space1     1
;                                   texture     f32          3d      T6     t52,space2     1
;                                   texture     f32          2d      T7     t33,space2     1
;                                   texture    byte         r/o      T8      t3,space1     1
;                                   texture    byte         r/o      T9      t4,space1     1
;                                   texture    byte         r/o     T10      t5,space1     1
;                                   texture    byte         r/o     T11      t6,space1     1
;                                   texture     f32          2d     T12     t69,space2     1
;                                   texture    byte         r/o     T13     t18,space1     1
;                                   texture    byte         r/o     T14     t19,space1     1
;                                   texture    byte         r/o     T15     t20,space1     1
;                                   texture    byte         r/o     T16     t21,space1     1
;                                   texture     f32          2d     T17     t37,space2     1
;                                   texture     f32          2d     T18             t0     1
;                                   texture     f32          2d     T19     t58,space2     1
;                                   texture     f32          2d     T20     t59,space2     1
;                                   texture     f32          2d     T21     t60,space2     1
;                                   texture    byte         r/o     T22     t45,space1     1
;                                   texture    byte         r/o     T23     t46,space1     1
;                                   texture    byte         r/o     T24     t47,space1     1
;                                   texture    byte         r/o     T25     t48,space1     1
;                                   texture     f32          2d     T26     t57,space2     1
;                                   texture    byte         r/o     T27     t69,space1     1
;                                   texture     u32          2d     T28     t56,space2     1
;                                   texture     f32     2darray     T29     t35,space2     1
;                                   texture     f32          2d     T30     t34,space2     1
;                                   texture     f32          3d     T31     t31,space2     1
;                                   texture    byte         r/o     T32     t10,space1     1
;                                   texture    byte         r/o     T33      t1,space1     1
;                                   texture     f32          1d     T34     t32,space2     1
;                                   texture     f32     2darray     T35      t8,space2     1
;                                   texture     f32          2d     T36      t1,space2     1
;                                   texture     f32          2d     T37      t2,space2     1
;                                   texture     f32          2d     T38      t3,space2     1
;                                   texture     f32          2d     T39      t4,space2     1
;                                   textureunorm_f32     2darray     T40     t80,space2     1
;                                   texture    byte         r/o     T41     t67,space1     1
;                                   texture     f32          2d     T42      t7,space2     1
;                                   texture     f32          2d     T43      t6,space2     1
;                                   texture     f32          2d     T44      t5,space2     1
;                                   texture     f32          2d     T45     t38,space2     1
;                                   texture    byte         r/o     T46     t12,space1     1
;                                   texture    byte         r/o     T47     t13,space1     1
;                                   texture     f32          1d     T48     t30,space2     1
;                                   texture     f32          3d     T49     t44,space2     1
;                                   texture     f32          3d     T50     t45,space2     1
;                                   texture     f32     2darray     T51     t47,space2     1
;                                   textureunorm_f32     2darray     T52     t85,space2     1
;                                   texture     f32          2d     T53     t83,space2     1
;                                   texture     f32          2d     T54     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = alloca [4 x i32], align 4
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %106 = alloca [12 x float], align 4
  %107 = alloca [12 x float], align 4
  %108 = alloca [4 x float], align 4
  %109 = alloca [4 x float], align 4
  %110 = alloca [4 x float], align 4
  %111 = alloca [4 x float], align 4
  %112 = alloca [3 x float], align 4
  %113 = alloca [3 x float], align 4
  %114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = fmul fast float %117, %102
  %119 = fmul fast float %117, %103
  %120 = call float @dx.op.dot3.f32(i32 55, float %93, float %94, float %95, float %93, float %94, float %95)  ; Dot3(ax,ay,az,bx,by,bz)
  %121 = bitcast float %120 to i32
  %122 = ashr i32 %121, 1
  %123 = sub nsw i32 1597250115, %122
  %124 = bitcast i32 %123 to float
  %125 = fmul fast float %124, %93
  %126 = fmul fast float %124, %94
  %127 = fmul fast float %124, %95
  %128 = fmul fast float %94, %91
  %129 = fmul fast float %95, %90
  %130 = fsub fast float %128, %129
  %131 = fmul fast float %95, %89
  %132 = fmul fast float %93, %91
  %133 = fsub fast float %131, %132
  %134 = fmul fast float %93, %90
  %135 = fmul fast float %94, %89
  %136 = fsub fast float %134, %135
  %137 = fmul fast float %130, %92
  %138 = fmul fast float %133, %92
  %139 = fmul fast float %136, %92
  %140 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %141 = bitcast float %140 to i32
  %142 = ashr i32 %141, 1
  %143 = sub nsw i32 1597250115, %142
  %144 = bitcast i32 %143 to float
  %145 = fmul fast float %144, %82
  %146 = fmul fast float %144, %83
  %147 = fmul fast float %144, %84
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = fcmp fast une float %149, 0.000000e+00
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 3
  %154 = fmul fast float %118, 2.000000e+00
  %155 = fmul fast float %154, %152
  %156 = fmul fast float %119, 2.000000e+00
  %157 = fmul fast float %156, %153
  %158 = fsub fast float 1.000000e+00, %155
  %159 = fsub fast float 1.000000e+00, %157
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = select i1 %150, float %161, float %165
  %169 = select i1 %150, float %162, float %166
  %170 = select i1 %150, float %163, float %167
  %171 = fmul fast float %168, %158
  %172 = fmul fast float %169, %158
  %173 = fmul fast float %170, %158
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %182 = select i1 %150, float %175, float %179
  %183 = select i1 %150, float %176, float %180
  %184 = select i1 %150, float %177, float %181
  %185 = fmul fast float %182, %159
  %186 = fmul fast float %183, %159
  %187 = fmul fast float %184, %159
  %188 = fadd fast float %185, %171
  %189 = fadd fast float %186, %172
  %190 = fadd fast float %187, %173
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %193 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %194 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %197 = extractvalue %dx.types.CBufRet.f32 %195, 1
  %198 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %199 = select i1 %150, float %192, float %196
  %200 = select i1 %150, float %193, float %197
  %201 = select i1 %150, float %194, float %198
  %202 = fadd fast float %188, %199
  %203 = fadd fast float %189, %200
  %204 = fadd fast float %190, %201
  %205 = fmul fast float %202, %105
  %206 = fmul fast float %203, %105
  %207 = fmul fast float %204, %105
  %208 = shl i32 %63, 5
  %209 = add i32 %208, 4194304
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = extractvalue %dx.types.ResRet.i32 %210, 1
  %213 = extractvalue %dx.types.ResRet.i32 %210, 2
  %214 = extractvalue %dx.types.ResRet.i32 %210, 3
  %215 = add i32 %208, 4194320
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = extractvalue %dx.types.ResRet.i32 %216, 1
  %219 = bitcast i32 %217 to float
  %220 = bitcast i32 %218 to float
  %221 = fmul fast float %118, 5.000000e-01
  %222 = fmul fast float %119, 5.000000e-01
  %223 = fptosi float %221 to i32
  %224 = fptosi float %222 to i32
  %225 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %223, i32 %224, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = lshr i32 %226, 18
  %228 = uitofp i32 %227 to float
  %229 = fmul fast float %228, 0x3F4C00EBA0000000
  %230 = call float @dx.op.unary.f32(i32 21, float %229)  ; Exp(value)
  %231 = fadd fast float %230, -1.000000e+00
  %232 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %233 = extractvalue %dx.types.Dimensions %232, 0
  %234 = sitofp i32 %233 to float
  %235 = extractvalue %dx.types.Dimensions %232, 1
  %236 = sitofp i32 %235 to float
  %237 = fcmp fast oge float %221, %234
  %238 = fcmp fast oge float %222, %236
  %239 = or i1 %237, %238
  %240 = select i1 %239, float 0x4197782600000000, float %231
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 2
  %243 = extractvalue %dx.types.CBufRet.f32 %241, 3
  %244 = fmul fast float %242, %118
  %245 = fmul fast float %243, %119
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = and i32 %247, 114688
  %249 = icmp ne i32 %248, 0
  %250 = select i1 %249, float %244, float 0.000000e+00
  %251 = select i1 %249, float %245, float 0.000000e+00
  %252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %57, float %250, float %251, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = fmul fast float %253, 2.550000e+02
  %255 = fptoui float %254 to i32
  %256 = select i1 %249, i32 %255, i32 0
  %257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.i32 %257, 3
  %259 = and i32 %258, 3
  %260 = icmp ne i32 %259, 0
  %261 = and i32 %258, 4
  %262 = icmp ne i32 %261, 0
  %263 = and i1 %260, %262
  br i1 %263, label %264, label %273

; <label>:264                                     ; preds = %0
  %265 = fmul fast float %153, %119
  %266 = fmul fast float %152, %118
  %267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %56, float %266, float %265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = fsub fast float 1.000000e+00, %268
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 0
  %272 = fcmp fast olt float %269, %271
  br label %276

; <label>:273                                     ; preds = %0
  %274 = icmp eq i32 %261, 0
  %275 = and i1 %260, %274
  br label %276

; <label>:276                                     ; preds = %273, %264
  %277 = phi i1 [ %272, %264 ], [ %275, %273 ]
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 2
  %280 = fmul fast float %279, 0x3FE3C6EF40000000
  %281 = frem fast float %118, 2.560000e+02
  %282 = frem fast float %119, 2.560000e+02
  %283 = fptoui float %281 to i32
  %284 = fptoui float %282 to i32
  %285 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %283, i32 %284, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = fadd fast float %286, %280
  %288 = call float @dx.op.unary.f32(i32 22, float %287)  ; Frc(value)
  %289 = add i32 %62, 156
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = shl i32 %291, 4
  %293 = and i32 %292, 32752
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %291, 7
  %296 = and i32 %295, 32752
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %291, 22
  %299 = shl nuw nsw i32 %298, 5
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = add i32 %62, 216
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = lshr i32 %303, 8
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = lshr i32 %303, 16
  %312 = and i32 %311, 255
  %313 = uitofp i32 %312 to float
  %314 = fmul fast float %313, 0x3F70101020000000
  %315 = add i32 %62, 36
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %317, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = add i32 %62, 288
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = and i32 %324, 65535
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %324, 16
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = fmul fast float %326, 0x3F50624DE0000000
  %330 = fmul fast float %328, 0x3F50624DE0000000
  %331 = mul i32 %64, 100
  %332 = add i32 %331, 28
  %333 = add i32 %331, 40
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = add i32 %62, 172
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = shl i32 %338, 4
  %340 = and i32 %339, 32752
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %338, 7
  %343 = and i32 %342, 32752
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %338, 22
  %346 = shl nuw nsw i32 %345, 5
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = add i32 %62, 232
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 255
  %352 = uitofp i32 %351 to float
  %353 = fmul fast float %352, 0x3F70101020000000
  %354 = lshr i32 %350, 8
  %355 = and i32 %354, 255
  %356 = uitofp i32 %355 to float
  %357 = fmul fast float %356, 0x3F70101020000000
  %358 = lshr i32 %350, 16
  %359 = and i32 %358, 255
  %360 = uitofp i32 %359 to float
  %361 = fmul fast float %360, 0x3F70101020000000
  %362 = add i32 %62, 52
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 65535
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %364, 16
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = add i32 %62, 304
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 65535
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %371, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = shl i32 %377, 4
  %379 = and i32 %378, 32752
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %377, 7
  %382 = and i32 %381, 32752
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %377, 22
  %385 = shl nuw nsw i32 %384, 5
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = and i32 %335, 1
  %388 = icmp ne i32 %387, 0
  %389 = select i1 %388, float %380, float %341
  %390 = select i1 %388, float %383, float %344
  %391 = select i1 %388, float %386, float %347
  %392 = add i32 %331, 44
  %393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.f32 %393, 0
  %395 = fmul fast float %394, %389
  %396 = fmul fast float %394, %390
  %397 = fmul fast float %394, %391
  %398 = add i32 %331, 48
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %410 = and i32 %335, 8
  %411 = icmp ne i32 %410, 0
  %412 = select i1 %411, float %403, float %353
  %413 = select i1 %411, float %406, float %357
  %414 = select i1 %411, float %409, float %361
  %415 = add i32 %331, 52
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 65535
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = lshr i32 %417, 16
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = and i32 %335, 2
  %423 = icmp ne i32 %422, 0
  %424 = select i1 %423, float %419, float %366
  %425 = select i1 %423, float %421, float %368
  %426 = add i32 %331, 56
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 65535
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = lshr i32 %428, 16
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = and i32 %335, 4
  %434 = icmp ne i32 %433, 0
  %435 = select i1 %434, float %430, float %373
  %436 = fmul float %435, 0x3F50624DE0000000
  %437 = select i1 %434, float %432, float %375
  %438 = fmul float %437, 0x3F50624DE0000000
  %439 = add i32 %331, 60
  %440 = add i32 %331, 32
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = add i32 %62, 188
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = shl i32 %445, 4
  %447 = and i32 %446, 32752
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = lshr i32 %445, 7
  %450 = and i32 %449, 32752
  %451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %450)  ; LegacyF16ToF32(value)
  %452 = lshr i32 %445, 22
  %453 = shl nuw nsw i32 %452, 5
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453)  ; LegacyF16ToF32(value)
  %455 = add i32 %62, 248
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %457, 255
  %459 = uitofp i32 %458 to float
  %460 = fmul fast float %459, 0x3F70101020000000
  %461 = lshr i32 %457, 8
  %462 = and i32 %461, 255
  %463 = uitofp i32 %462 to float
  %464 = fmul fast float %463, 0x3F70101020000000
  %465 = lshr i32 %457, 16
  %466 = and i32 %465, 255
  %467 = uitofp i32 %466 to float
  %468 = fmul fast float %467, 0x3F70101020000000
  %469 = add i32 %62, 68
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = and i32 %471, 65535
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = lshr i32 %471, 16
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = add i32 %62, 320
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = and i32 %478, 65535
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = lshr i32 %478, 16
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = shl i32 %484, 4
  %486 = and i32 %485, 32752
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = lshr i32 %484, 7
  %489 = and i32 %488, 32752
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = lshr i32 %484, 22
  %492 = shl nuw nsw i32 %491, 5
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = and i32 %442, 1
  %495 = icmp ne i32 %494, 0
  %496 = select i1 %495, float %487, float %448
  %497 = select i1 %495, float %490, float %451
  %498 = select i1 %495, float %493, float %454
  %499 = add i32 %331, 64
  %500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  %502 = fmul fast float %501, %496
  %503 = fmul fast float %501, %497
  %504 = fmul fast float %501, %498
  %505 = add i32 %331, 68
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = shl i32 %507, 4
  %509 = and i32 %508, 32752
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = lshr i32 %507, 7
  %512 = and i32 %511, 32752
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = lshr i32 %507, 22
  %515 = shl nuw nsw i32 %514, 5
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = and i32 %442, 8
  %518 = icmp ne i32 %517, 0
  %519 = select i1 %518, float %510, float %460
  %520 = select i1 %518, float %513, float %464
  %521 = select i1 %518, float %516, float %468
  %522 = add i32 %331, 72
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = and i32 %524, 65535
  %526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %525)  ; LegacyF16ToF32(value)
  %527 = lshr i32 %524, 16
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = and i32 %442, 2
  %530 = icmp ne i32 %529, 0
  %531 = select i1 %530, float %526, float %473
  %532 = select i1 %530, float %528, float %475
  %533 = add i32 %331, 76
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = and i32 %535, 65535
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = lshr i32 %535, 16
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = and i32 %442, 4
  %541 = icmp ne i32 %540, 0
  %542 = select i1 %541, float %537, float %480
  %543 = fmul float %542, 0x3F50624DE0000000
  %544 = select i1 %541, float %539, float %482
  %545 = fmul float %544, 0x3F50624DE0000000
  %546 = add i32 %331, 80
  %547 = add i32 %331, 36
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = add i32 %62, 204
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = shl i32 %552, 4
  %554 = and i32 %553, 32752
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = lshr i32 %552, 7
  %557 = and i32 %556, 32752
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = lshr i32 %552, 22
  %560 = shl nuw nsw i32 %559, 5
  %561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %560)  ; LegacyF16ToF32(value)
  %562 = add i32 %62, 264
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = and i32 %564, 255
  %566 = uitofp i32 %565 to float
  %567 = fmul fast float %566, 0x3F70101020000000
  %568 = lshr i32 %564, 8
  %569 = and i32 %568, 255
  %570 = uitofp i32 %569 to float
  %571 = fmul fast float %570, 0x3F70101020000000
  %572 = lshr i32 %564, 16
  %573 = and i32 %572, 255
  %574 = uitofp i32 %573 to float
  %575 = fmul fast float %574, 0x3F70101020000000
  %576 = add i32 %62, 84
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = and i32 %578, 65535
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = lshr i32 %578, 16
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = add i32 %62, 336
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = and i32 %585, 65535
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = lshr i32 %585, 16
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = shl i32 %591, 4
  %593 = and i32 %592, 32752
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = lshr i32 %591, 7
  %596 = and i32 %595, 32752
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = lshr i32 %591, 22
  %599 = shl nuw nsw i32 %598, 5
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = and i32 %549, 1
  %602 = icmp ne i32 %601, 0
  %603 = select i1 %602, float %594, float %555
  %604 = select i1 %602, float %597, float %558
  %605 = select i1 %602, float %600, float %561
  %606 = add i32 %331, 84
  %607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = fmul fast float %608, %603
  %610 = fmul fast float %608, %604
  %611 = fmul fast float %608, %605
  %612 = add i32 %331, 88
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = shl i32 %614, 4
  %616 = and i32 %615, 32752
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = lshr i32 %614, 7
  %619 = and i32 %618, 32752
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = lshr i32 %614, 22
  %622 = shl nuw nsw i32 %621, 5
  %623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %622)  ; LegacyF16ToF32(value)
  %624 = and i32 %549, 8
  %625 = icmp ne i32 %624, 0
  %626 = select i1 %625, float %617, float %567
  %627 = select i1 %625, float %620, float %571
  %628 = select i1 %625, float %623, float %575
  %629 = add i32 %331, 92
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = and i32 %631, 65535
  %633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %632)  ; LegacyF16ToF32(value)
  %634 = lshr i32 %631, 16
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = and i32 %549, 2
  %637 = icmp ne i32 %636, 0
  %638 = select i1 %637, float %633, float %580
  %639 = select i1 %637, float %635, float %582
  %640 = add i32 %331, 96
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = and i32 %642, 65535
  %644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %643)  ; LegacyF16ToF32(value)
  %645 = lshr i32 %642, 16
  %646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %645)  ; LegacyF16ToF32(value)
  %647 = and i32 %549, 4
  %648 = icmp ne i32 %647, 0
  %649 = select i1 %648, float %644, float %587
  %650 = fmul float %649, 0x3F50624DE0000000
  %651 = select i1 %648, float %646, float %589
  %652 = fmul float %651, 0x3F50624DE0000000
  %653 = add i32 %62, 348
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = and i32 %655, 32
  %657 = icmp eq i32 %656, 0
  %658 = and i32 %655, 64
  %659 = icmp eq i32 %658, 0
  %660 = and i32 %655, 128
  %661 = icmp eq i32 %660, 0
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = and i32 %663, 2
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %681, label %666

; <label>:666                                     ; preds = %276
  %667 = add i32 %62, 492
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = add i32 %669, 0
  %671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %670, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %672 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %671, %dx.types.Handle %115, float %96, float %97, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  %674 = extractvalue %dx.types.ResRet.f32 %672, 1
  %675 = extractvalue %dx.types.ResRet.f32 %672, 2
  %676 = extractvalue %dx.types.ResRet.f32 %672, 3
  %677 = fmul fast float %676, %98
  %678 = fmul fast float %673, %99
  %679 = fmul fast float %674, %100
  %680 = fmul fast float %675, %101
  br label %681

; <label>:681                                     ; preds = %666, %276
  %682 = phi float [ %101, %276 ], [ %680, %666 ]
  %683 = phi float [ %100, %276 ], [ %679, %666 ]
  %684 = phi float [ %99, %276 ], [ %678, %666 ]
  %685 = phi float [ %98, %276 ], [ %677, %666 ]
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = and i32 %687, 2
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %709, label %690

; <label>:690                                     ; preds = %681
  %691 = add i32 %62, 44
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = and i32 %693, 1
  %695 = icmp ne i32 %694, 0
  %696 = select i1 %695, float %684, float 1.000000e+00
  %697 = add i32 %62, 60
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = and i32 %699, 1
  %701 = icmp ne i32 %700, 0
  %702 = select i1 %701, float %683, float 1.000000e+00
  %703 = add i32 %62, 76
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = and i32 %705, 1
  %707 = icmp ne i32 %706, 0
  %708 = select i1 %707, float %682, float 1.000000e+00
  br label %709

; <label>:709                                     ; preds = %690, %681
  %710 = phi float [ %682, %681 ], [ %708, %690 ]
  %711 = phi float [ %683, %681 ], [ %702, %690 ]
  %712 = phi float [ %684, %681 ], [ %696, %690 ]
  %713 = lshr i32 %687, 20
  %714 = and i32 %713, 3
  %715 = add nuw nsw i32 %714, 1
  %716 = add i32 %62, 24
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = add i32 %62, 28
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = or i32 %721, %718
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %1258, label %724

; <label>:724                                     ; preds = %709
  %725 = and i32 %718, 262144
  %726 = icmp ne i32 %725, 0
  %727 = select i1 %726, float %69, float 1.000000e+00
  %728 = select i1 %726, float %70, float 0.000000e+00
  %729 = select i1 %726, float %71, float 0.000000e+00
  %730 = select i1 %726, float %72, float 1.000000e+00
  %731 = select i1 %726, float %73, float %96
  %732 = select i1 %726, float %74, float %97
  %733 = add i32 %62, 284
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = lshr i32 %735, 16
  %737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %736)  ; LegacyF16ToF32(value)
  %738 = fmul fast float %737, 0x3F50624DE0000000
  %739 = add i32 %62, 88
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %739, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = lshr i32 %741, 16
  %743 = and i32 %742, 255
  %744 = lshr i32 %741, 24
  %745 = add i32 %62, 292
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %745, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = and i32 %747, 65535
  %749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %748)  ; LegacyF16ToF32(value)
  %750 = lshr i32 %747, 16
  %751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %750)  ; LegacyF16ToF32(value)
  %752 = add i32 %62, 32
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = lshr i32 %754, 22
  %756 = shl nuw nsw i32 %755, 5
  %757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %756)  ; LegacyF16ToF32(value)
  %758 = shl i32 %754, 4
  %759 = and i32 %758, 32752
  %760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %759)  ; LegacyF16ToF32(value)
  %761 = lshr i32 %754, 7
  %762 = and i32 %761, 32752
  %763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %762)  ; LegacyF16ToF32(value)
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 3
  %766 = fmul fast float %765, 1.000000e+03
  %767 = fmul fast float %329, %766
  %768 = call float @dx.op.unary.f32(i32 22, float %767)  ; Frc(value)
  %769 = fadd fast float %768, %319
  %770 = fmul fast float %330, %766
  %771 = call float @dx.op.unary.f32(i32 22, float %770)  ; Frc(value)
  %772 = fadd fast float %771, %321
  %773 = fmul fast float %738, %766
  %774 = call float @dx.op.unary.f32(i32 22, float %773)  ; Frc(value)
  %775 = fmul fast float %774, 0x401921FB60000000
  %776 = fadd fast float %775, %757
  %777 = call float @dx.op.unary.f32(i32 13, float %776)  ; Sin(value)
  %778 = call float @dx.op.unary.f32(i32 12, float %776)  ; Cos(value)
  %779 = fsub fast float -0.000000e+00, %777
  %780 = fadd fast float %731, -5.000000e-01
  %781 = fadd fast float %732, -5.000000e-01
  %782 = fmul fast float %749, %780
  %783 = fmul fast float %751, %781
  %784 = fadd fast float %782, 5.000000e-01
  %785 = fadd fast float %783, 5.000000e-01
  %786 = fmul fast float %760, %784
  %787 = fmul fast float %763, %785
  %788 = fmul fast float %778, %786
  %789 = call float @dx.op.tertiary.f32(i32 46, float %779, float %787, float %788)  ; FMad(a,b,c)
  %790 = fmul fast float %777, %786
  %791 = call float @dx.op.tertiary.f32(i32 46, float %778, float %787, float %790)  ; FMad(a,b,c)
  %792 = fadd fast float %769, %789
  %793 = fadd fast float %772, %791
  %794 = icmp ugt i32 %743, 1
  %795 = icmp ugt i32 %741, 33554431
  %796 = or i1 %795, %794
  br i1 %796, label %797, label %822

; <label>:797                                     ; preds = %724
  %798 = add i32 %62, 228
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  %801 = lshr i32 %800, 16
  %802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %801)  ; LegacyF16ToF32(value)
  %803 = fmul fast float %765, %802
  %804 = call float @dx.op.unary.f32(i32 22, float %803)  ; Frc(value)
  %805 = mul nuw nsw i32 %743, %744
  %806 = uitofp i32 %805 to float
  %807 = fmul fast float %804, %806
  %808 = call float @dx.op.unary.f32(i32 27, float %807)  ; Round_ni(value)
  %809 = fptoui float %808 to i32
  %810 = urem i32 %809, %743
  %811 = udiv i32 %809, %744
  %812 = call float @dx.op.unary.f32(i32 22, float %792)  ; Frc(value)
  %813 = call float @dx.op.unary.f32(i32 22, float %793)  ; Frc(value)
  %814 = uitofp i32 %810 to float
  %815 = uitofp i32 %811 to float
  %816 = fadd fast float %812, %814
  %817 = fadd fast float %813, %815
  %818 = uitofp i32 %743 to float
  %819 = uitofp i32 %744 to float
  %820 = fdiv fast float %816, %818
  %821 = fdiv fast float %817, %819
  br label %822

; <label>:822                                     ; preds = %797, %724
  %823 = phi float [ %820, %797 ], [ %792, %724 ]
  %824 = phi float [ %821, %797 ], [ %793, %724 ]
  %825 = and i32 %718, 256
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %873, label %827

; <label>:827                                     ; preds = %822
  %828 = add i32 %62, 440
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = add i32 %830, 0
  %832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %833 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %832, %dx.types.Handle %115, float %823, float %824, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %834 = extractvalue %dx.types.ResRet.f32 %833, 0
  %835 = add i32 %62, 100
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %835, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = shl i32 %837, 4
  %839 = and i32 %838, 32752
  %840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %839)  ; LegacyF16ToF32(value)
  %841 = lshr i32 %837, 7
  %842 = and i32 %841, 32752
  %843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %842)  ; LegacyF16ToF32(value)
  %844 = fsub fast float 1.000000e+00, %685
  %845 = call float @dx.op.binary.f32(i32 35, float %844, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %846 = bitcast float %685 to i32
  %847 = sitofp i32 %846 to float
  %848 = fadd fast float %847, 0xC1CFBF8940000000
  %849 = fmul fast float %843, %848
  %850 = fadd fast float %849, 0x41CFBF8940000000
  %851 = fptosi float %850 to i32
  %852 = bitcast i32 %851 to float
  %853 = bitcast float %845 to i32
  %854 = sitofp i32 %853 to float
  %855 = fadd fast float %854, 0xC1CFBF8940000000
  %856 = fmul fast float %855, %843
  %857 = fadd fast float %856, 0x41CFBF8940000000
  %858 = fptosi float %857 to i32
  %859 = bitcast i32 %858 to float
  %860 = fmul fast float %852, %840
  %861 = fmul fast float %859, %840
  %862 = fsub fast float %845, %860
  %863 = fadd fast float %861, %845
  %864 = call float @dx.op.unary.f32(i32 7, float %862)  ; Saturate(value)
  %865 = call float @dx.op.unary.f32(i32 7, float %863)  ; Saturate(value)
  %866 = fsub fast float %834, %864
  %867 = fsub fast float %865, %864
  %868 = bitcast float %867 to i32
  %869 = sub nsw i32 2129859010, %868
  %870 = bitcast i32 %869 to float
  %871 = fmul fast float %870, %866
  %872 = call float @dx.op.unary.f32(i32 7, float %871)  ; Saturate(value)
  br label %873

; <label>:873                                     ; preds = %827, %822
  %874 = phi float [ %872, %827 ], [ %685, %822 ]
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = and i32 %876, 128
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %895, label %879

; <label>:879                                     ; preds = %873
  %880 = add i32 %62, 424
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %880, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = add i32 %882, 0
  %884 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %883, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %885 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %884, %dx.types.Handle %115, float %823, float %824, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = and i32 %888, 524288
  %890 = icmp ne i32 %889, 0
  %891 = fcmp fast ogt float %886, 0x3FE0101020000000
  %892 = select i1 %891, float 1.000000e+00, float 0.000000e+00
  %893 = select i1 %890, float %892, float %886
  %894 = fmul fast float %893, %874
  br label %895

; <label>:895                                     ; preds = %879, %873
  %896 = phi float [ %894, %879 ], [ %874, %873 ]
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = and i32 %898, 16
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %1099, label %901

; <label>:901                                     ; preds = %895
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %739, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = add i32 %62, 376
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = add i32 %906, 0
  %908 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %907, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %909 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %908, %dx.types.Handle %114, float %823, float %824, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %910 = extractvalue %dx.types.ResRet.f32 %909, 0
  %911 = extractvalue %dx.types.ResRet.f32 %909, 1
  %912 = extractvalue %dx.types.ResRet.f32 %909, 2
  %913 = extractvalue %dx.types.ResRet.f32 %909, 3
  %914 = and i32 %903, 255
  %915 = uitofp i32 %914 to float
  %916 = lshr i32 %903, 8
  %917 = and i32 %916, 255
  %918 = uitofp i32 %917 to float
  %919 = fmul fast float %913, %915
  %920 = fadd fast float %919, %918
  %921 = fmul fast float %920, 0x3F70101000000000
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = and i32 %923, 512
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %934, label %926

; <label>:926                                     ; preds = %901
  %927 = add i32 %62, 460
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = add i32 %929, 0
  %931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %930, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %932 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %931, %dx.types.Handle %115, float %823, float %824, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %933 = extractvalue %dx.types.ResRet.f32 %932, 0
  br label %934

; <label>:934                                     ; preds = %926, %901
  %935 = phi float [ %933, %926 ], [ 1.000000e+00, %901 ]
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = and i32 %937, 33554432
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %1046, label %940

; <label>:940                                     ; preds = %934
  %941 = add i32 %62, 224
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = and i32 %943, 65535
  %945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %944)  ; LegacyF16ToF32(value)
  %946 = lshr i32 %943, 16
  %947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %946)  ; LegacyF16ToF32(value)
  %948 = add i32 %62, 228
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = and i32 %950, 65535
  %952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %951)  ; LegacyF16ToF32(value)
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = lshr i32 %954, 24
  %956 = uitofp i32 %955 to float
  %957 = fmul fast float %956, 0x3F70101020000000
  %958 = and i32 %954, 255
  %959 = uitofp i32 %958 to float
  %960 = fmul fast float %959, 0x3F70101020000000
  %961 = lshr i32 %954, 8
  %962 = and i32 %961, 255
  %963 = uitofp i32 %962 to float
  %964 = fmul fast float %963, 0x3F70101020000000
  %965 = lshr i32 %954, 16
  %966 = and i32 %965, 255
  %967 = uitofp i32 %966 to float
  %968 = fmul fast float %967, 0x3F70101020000000
  %969 = add i32 %62, 220
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = lshr i32 %971, 24
  %973 = uitofp i32 %972 to float
  %974 = fmul fast float %973, 0x3F70101020000000
  %975 = and i32 %971, 255
  %976 = uitofp i32 %975 to float
  %977 = fmul fast float %976, 0x3F70101020000000
  %978 = lshr i32 %971, 8
  %979 = and i32 %978, 255
  %980 = uitofp i32 %979 to float
  %981 = fmul fast float %980, 0x3F70101020000000
  %982 = lshr i32 %971, 16
  %983 = and i32 %982, 255
  %984 = uitofp i32 %983 to float
  %985 = fmul fast float %984, 0x3F70101020000000
  %986 = bitcast float %910 to i32
  %987 = ashr i32 %986, 1
  %988 = sub nsw i32 1597463174, %987
  %989 = bitcast i32 %988 to float
  %990 = fmul fast float %910, 5.000000e-01
  %991 = fmul fast float %989, %989
  %992 = fmul fast float %991, %990
  %993 = fsub fast float 1.500000e+00, %992
  %994 = fmul fast float %989, %910
  %995 = fmul fast float %994, %993
  %996 = bitcast float %911 to i32
  %997 = ashr i32 %996, 1
  %998 = sub nsw i32 1597463174, %997
  %999 = bitcast i32 %998 to float
  %1000 = fmul fast float %911, 5.000000e-01
  %1001 = fmul fast float %999, %999
  %1002 = fmul fast float %1001, %1000
  %1003 = fsub fast float 1.500000e+00, %1002
  %1004 = fmul fast float %999, %911
  %1005 = fmul fast float %1004, %1003
  %1006 = bitcast float %912 to i32
  %1007 = ashr i32 %1006, 1
  %1008 = sub nsw i32 1597463174, %1007
  %1009 = bitcast i32 %1008 to float
  %1010 = fmul fast float %912, 5.000000e-01
  %1011 = fmul fast float %1009, %1009
  %1012 = fmul fast float %1011, %1010
  %1013 = fsub fast float 1.500000e+00, %1012
  %1014 = fmul fast float %1009, %912
  %1015 = fmul fast float %1014, %1013
  %1016 = fsub fast float %995, %977
  %1017 = fsub fast float %1005, %981
  %1018 = fsub fast float %1015, %985
  %1019 = fmul fast float %1016, %945
  %1020 = fmul fast float %1017, %947
  %1021 = fmul fast float %1018, %952
  %1022 = fadd fast float %1019, %960
  %1023 = fadd fast float %1020, %964
  %1024 = fadd fast float %1021, %968
  %1025 = call float @dx.op.unary.f32(i32 7, float %1022)  ; Saturate(value)
  %1026 = call float @dx.op.unary.f32(i32 7, float %1023)  ; Saturate(value)
  %1027 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  %1028 = fmul fast float %1025, %1025
  %1029 = fmul fast float %1026, %1026
  %1030 = fmul fast float %1027, %1027
  %1031 = fsub fast float %1028, %910
  %1032 = fsub fast float %1029, %911
  %1033 = fsub fast float %1030, %912
  %1034 = fmul fast float %1031, %935
  %1035 = fmul fast float %1032, %935
  %1036 = fmul fast float %1033, %935
  %1037 = fadd fast float %1034, %910
  %1038 = fadd fast float %1035, %911
  %1039 = fadd fast float %1036, %912
  %1040 = fadd fast float %957, %921
  %1041 = fsub fast float %1040, %974
  %1042 = call float @dx.op.unary.f32(i32 7, float %1041)  ; Saturate(value)
  %1043 = fsub fast float %1042, %921
  %1044 = fmul fast float %1043, %935
  %1045 = fadd fast float %1044, %921
  br label %1099

; <label>:1046                                    ; preds = %934
  %1047 = and i32 %937, 134217728
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1083, label %1049

; <label>:1049                                    ; preds = %1046
  %1050 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %1051 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %1052 = call float @dx.op.unary.f32(i32 24, float %314)  ; Sqrt(value)
  %1053 = fadd fast float %1050, -5.000000e-01
  %1054 = fadd fast float %1051, -5.000000e-01
  %1055 = fadd fast float %1052, -5.000000e-01
  %1056 = fmul fast float %1053, %935
  %1057 = fmul fast float %1054, %935
  %1058 = fmul fast float %1055, %935
  %1059 = fadd fast float %1056, 5.000000e-01
  %1060 = fadd fast float %1057, 5.000000e-01
  %1061 = fadd fast float %1058, 5.000000e-01
  %1062 = call float @dx.op.unary.f32(i32 24, float %910)  ; Sqrt(value)
  %1063 = call float @dx.op.unary.f32(i32 24, float %911)  ; Sqrt(value)
  %1064 = call float @dx.op.unary.f32(i32 24, float %912)  ; Sqrt(value)
  %1065 = fmul fast float %1059, 2.000000e+00
  %1066 = fsub fast float 1.000000e+00, %1065
  %1067 = fmul fast float %1066, %1062
  %1068 = fadd fast float %1067, %1065
  %1069 = fmul fast float %1068, %1062
  %1070 = fmul fast float %1060, 2.000000e+00
  %1071 = fsub fast float 1.000000e+00, %1070
  %1072 = fmul fast float %1071, %1063
  %1073 = fadd fast float %1072, %1070
  %1074 = fmul fast float %1073, %1063
  %1075 = fmul fast float %1061, 2.000000e+00
  %1076 = fsub fast float 1.000000e+00, %1075
  %1077 = fmul fast float %1076, %1064
  %1078 = fadd fast float %1077, %1075
  %1079 = fmul fast float %1078, %1064
  %1080 = fmul fast float %1069, %1069
  %1081 = fmul fast float %1074, %1074
  %1082 = fmul fast float %1079, %1079
  br label %1099

; <label>:1083                                    ; preds = %1046
  %1084 = fmul fast float %306, %306
  %1085 = fmul fast float %310, %310
  %1086 = fmul fast float %314, %314
  %1087 = fadd fast float %1084, -1.000000e+00
  %1088 = fadd fast float %1085, -1.000000e+00
  %1089 = fadd fast float %1086, -1.000000e+00
  %1090 = fmul fast float %935, %1087
  %1091 = fmul fast float %935, %1088
  %1092 = fmul fast float %935, %1089
  %1093 = fadd fast float %1090, 1.000000e+00
  %1094 = fadd fast float %1091, 1.000000e+00
  %1095 = fadd fast float %1092, 1.000000e+00
  %1096 = fmul fast float %1093, %910
  %1097 = fmul fast float %1094, %911
  %1098 = fmul fast float %1095, %912
  br label %1099

; <label>:1099                                    ; preds = %1083, %1049, %940, %895
  %1100 = phi float [ %1045, %940 ], [ %921, %1049 ], [ %921, %1083 ], [ 0x3FA23C0BE0000000, %895 ]
  %1101 = phi float [ %1037, %940 ], [ %1080, %1049 ], [ %1096, %1083 ], [ 1.000000e+00, %895 ]
  %1102 = phi float [ %1038, %940 ], [ %1081, %1049 ], [ %1097, %1083 ], [ 1.000000e+00, %895 ]
  %1103 = phi float [ %1039, %940 ], [ %1082, %1049 ], [ %1098, %1083 ], [ 1.000000e+00, %895 ]
  %1104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.i32 %1104, 1
  %1106 = and i32 %1105, 1
  %1107 = icmp ne i32 %1106, 0
  %1108 = add i32 %62, 356
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 32
  %1112 = icmp ne i32 %1111, 0
  %1113 = and i1 %1107, %1112
  %1114 = select i1 %1113, float 1.000000e+00, float %1101
  %1115 = select i1 %1113, float 0x3FD3333340000000, float %1102
  %1116 = select i1 %1113, float 0x3FD3333340000000, float %1103
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = and i32 %1118, 32
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1193, label %1121

; <label>:1121                                    ; preds = %1099
  %1122 = add i32 %62, 92
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = add i32 %62, 392
  %1126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1125, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 0
  %1128 = add i32 %1127, 0
  %1129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1128, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1130 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1129, %dx.types.Handle %114, float %823, float %824, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  %1132 = extractvalue %dx.types.ResRet.f32 %1130, 1
  %1133 = extractvalue %dx.types.ResRet.f32 %1130, 2
  %1134 = extractvalue %dx.types.ResRet.f32 %1130, 3
  %1135 = and i32 %1124, 255
  %1136 = uitofp i32 %1135 to float
  %1137 = lshr i32 %1124, 8
  %1138 = and i32 %1137, 255
  %1139 = uitofp i32 %1138 to float
  %1140 = lshr i32 %1124, 16
  %1141 = and i32 %1140, 255
  %1142 = uitofp i32 %1141 to float
  %1143 = fmul fast float %1142, 0x3F70101000000000
  %1144 = fmul fast float %1131, %1136
  %1145 = fadd fast float %1144, %1139
  %1146 = fmul fast float %1145, 0x3F70101000000000
  %1147 = fadd fast float %1132, -5.000000e-01
  %1148 = fadd fast float %1134, -5.000000e-01
  %1149 = fmul fast float %1147, %1143
  %1150 = fmul fast float %1148, %1143
  %1151 = fadd fast float %1149, 5.000000e-01
  %1152 = fadd fast float %1150, 5.000000e-01
  %1153 = fmul fast float %1151, 2.000000e+00
  %1154 = fadd fast float %1153, -1.000000e+00
  %1155 = fmul fast float %1152, 2.000000e+00
  %1156 = fadd fast float %1155, -1.000000e+00
  %1157 = fadd fast float %1154, %1156
  %1158 = fmul fast float %1157, 5.000000e-01
  %1159 = fsub fast float %1154, %1156
  %1160 = fmul fast float %1159, 5.000000e-01
  %1161 = call float @dx.op.unary.f32(i32 6, float %1158)  ; FAbs(value)
  %1162 = fsub fast float 1.000000e+00, %1161
  %1163 = call float @dx.op.unary.f32(i32 6, float %1160)  ; FAbs(value)
  %1164 = fsub fast float %1162, %1163
  %1165 = call float @dx.op.dot3.f32(i32 55, float %1158, float %1160, float %1164, float %1158, float %1160, float %1164)  ; Dot3(ax,ay,az,bx,by,bz)
  %1166 = call float @dx.op.unary.f32(i32 25, float %1165)  ; Rsqrt(value)
  %1167 = fmul fast float %1158, %1166
  %1168 = fmul fast float %1160, %1166
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = and i32 %1170, 67108864
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1189, label %1173

; <label>:1173                                    ; preds = %1121
  %1174 = add i32 %62, 280
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = and i32 %1176, 65535
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = and i32 %1180, 65535
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = lshr i32 %1176, 16
  %1184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1183)  ; LegacyF16ToF32(value)
  %1185 = fsub fast float %1146, %1184
  %1186 = fmul fast float %1185, %1178
  %1187 = fadd fast float %1186, %1182
  %1188 = call float @dx.op.unary.f32(i32 7, float %1187)  ; Saturate(value)
  br label %1189

; <label>:1189                                    ; preds = %1173, %1121
  %1190 = phi float [ %1188, %1173 ], [ %1146, %1121 ]
  %1191 = call float @dx.op.dot2.f32(i32 54, float %1167, float %1168, float %727, float %728)  ; Dot2(ax,ay,bx,by)
  %1192 = call float @dx.op.dot2.f32(i32 54, float %1167, float %1168, float %729, float %730)  ; Dot2(ax,ay,bx,by)
  br label %1193

; <label>:1193                                    ; preds = %1189, %1099
  %1194 = phi float [ %1190, %1189 ], [ 0x3FD6666660000000, %1099 ]
  %1195 = phi float [ %1191, %1189 ], [ 0.000000e+00, %1099 ]
  %1196 = phi float [ %1192, %1189 ], [ 0.000000e+00, %1099 ]
  %1197 = phi float [ %1133, %1189 ], [ 1.000000e+00, %1099 ]
  %1198 = add i32 %62, 160
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = lshr i32 %1200, 22
  %1202 = shl nuw nsw i32 %1201, 5
  %1203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1202)  ; LegacyF16ToF32(value)
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = and i32 %1205, 64
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1241, label %1208

; <label>:1208                                    ; preds = %1193
  %1209 = add i32 %62, 408
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1209, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = add i32 %1211, 0
  %1213 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1212, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = and i32 %1215, 131072
  %1217 = icmp eq i32 %1216, 0
  %1218 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1213, %dx.types.Handle %114, float %823, float %824, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1222 = fmul fast float %1219, %294
  %1223 = fmul fast float %1220, %297
  %1224 = fmul fast float %1221, %300
  br i1 %1217, label %1231, label %1225

; <label>:1225                                    ; preds = %1208
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 0
  %1228 = fmul fast float %1227, %1222
  %1229 = fmul fast float %1227, %1223
  %1230 = fmul fast float %1227, %1224
  br label %1231

; <label>:1231                                    ; preds = %1225, %1208
  %1232 = phi float [ %1228, %1225 ], [ %1222, %1208 ]
  %1233 = phi float [ %1229, %1225 ], [ %1223, %1208 ]
  %1234 = phi float [ %1230, %1225 ], [ %1224, %1208 ]
  %1235 = fmul fast float %1232, %1203
  %1236 = select i1 %277, float %1235, float %1232
  %1237 = call float @dx.op.dot3.f32(i32 55, float %1236, float %1233, float %1234, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1238 = select i1 %277, float 0.000000e+00, float %1232
  %1239 = select i1 %277, float %1237, float %1233
  %1240 = select i1 %277, float 0.000000e+00, float %1234
  br label %1241

; <label>:1241                                    ; preds = %1231, %1193
  %1242 = phi float [ %1238, %1231 ], [ 0.000000e+00, %1193 ]
  %1243 = phi float [ %1239, %1231 ], [ 0.000000e+00, %1193 ]
  %1244 = phi float [ %1240, %1231 ], [ 0.000000e+00, %1193 ]
  %1245 = add i32 %62, 96
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = and i32 %1247, 255
  %1249 = uitofp i32 %1248 to float
  %1250 = lshr i32 %1247, 8
  %1251 = and i32 %1250, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = call float @dx.op.dot3.f32(i32 55, float %1114, float %1115, float %1116, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1254 = fmul fast float %1252, %1253
  %1255 = fadd fast float %1254, %1249
  %1256 = fmul fast float %1255, 0x3F70101020000000
  %1257 = call float @dx.op.unary.f32(i32 7, float %1256)  ; Saturate(value)
  br label %1258

; <label>:1258                                    ; preds = %1241, %709
  %1259 = phi float [ 0.000000e+00, %709 ], [ %1195, %1241 ]
  %1260 = phi float [ 0.000000e+00, %709 ], [ %1196, %1241 ]
  %1261 = phi float [ 0.000000e+00, %709 ], [ %1114, %1241 ]
  %1262 = phi float [ 0.000000e+00, %709 ], [ %1115, %1241 ]
  %1263 = phi float [ 0.000000e+00, %709 ], [ %1116, %1241 ]
  %1264 = phi float [ 0.000000e+00, %709 ], [ %1242, %1241 ]
  %1265 = phi float [ 0.000000e+00, %709 ], [ %1243, %1241 ]
  %1266 = phi float [ 0.000000e+00, %709 ], [ %1244, %1241 ]
  %1267 = phi float [ 0.000000e+00, %709 ], [ %1100, %1241 ]
  %1268 = phi float [ 0.000000e+00, %709 ], [ %896, %1241 ]
  %1269 = phi float [ 0.000000e+00, %709 ], [ %1194, %1241 ]
  %1270 = phi float [ 0.000000e+00, %709 ], [ %1197, %1241 ]
  %1271 = phi float [ 0.000000e+00, %709 ], [ %1257, %1241 ]
  br i1 %657, label %1998, label %1272

; <label>:1272                                    ; preds = %1258
  %1273 = icmp ult i32 %715, 2
  %1274 = add i32 %62, 40
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = add i32 %62, 44
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = or i32 %1279, %1276
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %1998, label %1282

; <label>:1282                                    ; preds = %1272
  %1283 = and i32 %1276, 262144
  %1284 = icmp ne i32 %1283, 0
  %1285 = select i1 %1284, float %69, float 1.000000e+00
  %1286 = select i1 %1284, float %70, float 0.000000e+00
  %1287 = select i1 %1284, float %71, float 0.000000e+00
  %1288 = select i1 %1284, float %72, float 1.000000e+00
  %1289 = select i1 %1284, float %73, float %96
  %1290 = select i1 %1284, float %74, float %97
  %1291 = add i32 %62, 300
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = lshr i32 %1293, 16
  %1295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1294)  ; LegacyF16ToF32(value)
  %1296 = fmul fast float %1295, 0x3F50624DE0000000
  %1297 = add i32 %62, 104
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = lshr i32 %1299, 16
  %1301 = and i32 %1300, 255
  %1302 = lshr i32 %1299, 24
  %1303 = add i32 %62, 308
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = and i32 %1305, 65535
  %1307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1306)  ; LegacyF16ToF32(value)
  %1308 = lshr i32 %1305, 16
  %1309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1308)  ; LegacyF16ToF32(value)
  %1310 = add i32 %62, 48
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = lshr i32 %1312, 22
  %1314 = shl nuw nsw i32 %1313, 5
  %1315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1314)  ; LegacyF16ToF32(value)
  %1316 = shl i32 %1312, 4
  %1317 = and i32 %1316, 32752
  %1318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1317)  ; LegacyF16ToF32(value)
  %1319 = lshr i32 %1312, 7
  %1320 = and i32 %1319, 32752
  %1321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1320)  ; LegacyF16ToF32(value)
  %1322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1323 = extractvalue %dx.types.CBufRet.f32 %1322, 3
  %1324 = fmul fast float %1323, 1.000000e+03
  %1325 = fmul fast float %1324, %436
  %1326 = call float @dx.op.unary.f32(i32 22, float %1325)  ; Frc(value)
  %1327 = fadd fast float %1326, %424
  %1328 = fmul fast float %1324, %438
  %1329 = call float @dx.op.unary.f32(i32 22, float %1328)  ; Frc(value)
  %1330 = fadd fast float %1329, %425
  %1331 = fmul fast float %1296, %1324
  %1332 = call float @dx.op.unary.f32(i32 22, float %1331)  ; Frc(value)
  %1333 = fmul fast float %1332, 0x401921FB60000000
  %1334 = fadd fast float %1333, %1315
  %1335 = call float @dx.op.unary.f32(i32 13, float %1334)  ; Sin(value)
  %1336 = call float @dx.op.unary.f32(i32 12, float %1334)  ; Cos(value)
  %1337 = fsub fast float -0.000000e+00, %1335
  %1338 = fadd fast float %1289, -5.000000e-01
  %1339 = fadd fast float %1290, -5.000000e-01
  %1340 = fmul fast float %1307, %1338
  %1341 = fmul fast float %1309, %1339
  %1342 = fadd fast float %1340, 5.000000e-01
  %1343 = fadd fast float %1341, 5.000000e-01
  %1344 = fmul fast float %1318, %1342
  %1345 = fmul fast float %1321, %1343
  %1346 = fmul fast float %1336, %1344
  %1347 = call float @dx.op.tertiary.f32(i32 46, float %1337, float %1345, float %1346)  ; FMad(a,b,c)
  %1348 = fmul fast float %1335, %1344
  %1349 = call float @dx.op.tertiary.f32(i32 46, float %1336, float %1345, float %1348)  ; FMad(a,b,c)
  %1350 = fadd fast float %1327, %1347
  %1351 = fadd fast float %1330, %1349
  %1352 = icmp ugt i32 %1301, 1
  %1353 = icmp ugt i32 %1299, 33554431
  %1354 = or i1 %1353, %1352
  br i1 %1354, label %1355, label %1380

; <label>:1355                                    ; preds = %1282
  %1356 = add i32 %62, 244
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = lshr i32 %1358, 16
  %1360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1359)  ; LegacyF16ToF32(value)
  %1361 = fmul fast float %1323, %1360
  %1362 = call float @dx.op.unary.f32(i32 22, float %1361)  ; Frc(value)
  %1363 = mul nuw nsw i32 %1301, %1302
  %1364 = uitofp i32 %1363 to float
  %1365 = fmul fast float %1362, %1364
  %1366 = call float @dx.op.unary.f32(i32 27, float %1365)  ; Round_ni(value)
  %1367 = fptoui float %1366 to i32
  %1368 = urem i32 %1367, %1301
  %1369 = udiv i32 %1367, %1302
  %1370 = call float @dx.op.unary.f32(i32 22, float %1350)  ; Frc(value)
  %1371 = call float @dx.op.unary.f32(i32 22, float %1351)  ; Frc(value)
  %1372 = uitofp i32 %1368 to float
  %1373 = uitofp i32 %1369 to float
  %1374 = fadd fast float %1370, %1372
  %1375 = fadd fast float %1371, %1373
  %1376 = uitofp i32 %1301 to float
  %1377 = uitofp i32 %1302 to float
  %1378 = fdiv fast float %1374, %1376
  %1379 = fdiv fast float %1375, %1377
  br label %1380

; <label>:1380                                    ; preds = %1355, %1282
  %1381 = phi float [ %1378, %1355 ], [ %1350, %1282 ]
  %1382 = phi float [ %1379, %1355 ], [ %1351, %1282 ]
  %1383 = and i32 %1276, 256
  %1384 = icmp eq i32 %1383, 0
  br i1 %1384, label %1431, label %1385

; <label>:1385                                    ; preds = %1380
  %1386 = add i32 %62, 444
  %1387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1386, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.i32 %1387, 0
  %1389 = add i32 %1388, 0
  %1390 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1389, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1391 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1390, %dx.types.Handle %115, float %1381, float %1382, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1392 = extractvalue %dx.types.ResRet.f32 %1391, 0
  %1393 = add i32 %62, 116
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = shl i32 %1395, 4
  %1397 = and i32 %1396, 32752
  %1398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1397)  ; LegacyF16ToF32(value)
  %1399 = lshr i32 %1395, 7
  %1400 = and i32 %1399, 32752
  %1401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1400)  ; LegacyF16ToF32(value)
  %1402 = fsub fast float 1.000000e+00, %712
  %1403 = call float @dx.op.binary.f32(i32 35, float %1402, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1404 = bitcast float %712 to i32
  %1405 = sitofp i32 %1404 to float
  %1406 = fadd fast float %1405, 0xC1CFBF8940000000
  %1407 = fmul fast float %1401, %1406
  %1408 = fadd fast float %1407, 0x41CFBF8940000000
  %1409 = fptosi float %1408 to i32
  %1410 = bitcast i32 %1409 to float
  %1411 = bitcast float %1403 to i32
  %1412 = sitofp i32 %1411 to float
  %1413 = fadd fast float %1412, 0xC1CFBF8940000000
  %1414 = fmul fast float %1413, %1401
  %1415 = fadd fast float %1414, 0x41CFBF8940000000
  %1416 = fptosi float %1415 to i32
  %1417 = bitcast i32 %1416 to float
  %1418 = fmul fast float %1410, %1398
  %1419 = fmul fast float %1417, %1398
  %1420 = fsub fast float %1403, %1418
  %1421 = fadd fast float %1419, %1403
  %1422 = call float @dx.op.unary.f32(i32 7, float %1420)  ; Saturate(value)
  %1423 = call float @dx.op.unary.f32(i32 7, float %1421)  ; Saturate(value)
  %1424 = fsub fast float %1392, %1422
  %1425 = fsub fast float %1423, %1422
  %1426 = bitcast float %1425 to i32
  %1427 = sub nsw i32 2129859010, %1426
  %1428 = bitcast i32 %1427 to float
  %1429 = fmul fast float %1428, %1424
  %1430 = call float @dx.op.unary.f32(i32 7, float %1429)  ; Saturate(value)
  br label %1431

; <label>:1431                                    ; preds = %1385, %1380
  %1432 = phi float [ %1430, %1385 ], [ %712, %1380 ]
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = and i32 %1434, 128
  %1436 = icmp eq i32 %1435, 0
  br i1 %1436, label %1453, label %1437

; <label>:1437                                    ; preds = %1431
  %1438 = add i32 %62, 428
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = add i32 %1440, 0
  %1442 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1441, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1443 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1442, %dx.types.Handle %115, float %1381, float %1382, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1444 = extractvalue %dx.types.ResRet.f32 %1443, 0
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = and i32 %1446, 524288
  %1448 = icmp ne i32 %1447, 0
  %1449 = fcmp fast ogt float %1444, 0x3FE0101020000000
  %1450 = select i1 %1449, float 1.000000e+00, float 0.000000e+00
  %1451 = select i1 %1448, float %1450, float %1444
  %1452 = fmul fast float %1451, %1432
  br label %1453

; <label>:1453                                    ; preds = %1437, %1431
  %1454 = phi float [ %1452, %1437 ], [ %1432, %1431 ]
  %1455 = fcmp fast ult float %1454, 0x3F70101020000000
  br i1 %1455, label %1998, label %1456

; <label>:1456                                    ; preds = %1453
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = and i32 %1458, 16
  %1460 = icmp eq i32 %1459, 0
  br i1 %1460, label %1659, label %1461

; <label>:1461                                    ; preds = %1456
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = add i32 %62, 380
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = add i32 %1466, 0
  %1468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1469 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1468, %dx.types.Handle %114, float %1381, float %1382, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.ResRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.ResRet.f32 %1469, 2
  %1473 = extractvalue %dx.types.ResRet.f32 %1469, 3
  %1474 = and i32 %1463, 255
  %1475 = uitofp i32 %1474 to float
  %1476 = lshr i32 %1463, 8
  %1477 = and i32 %1476, 255
  %1478 = uitofp i32 %1477 to float
  %1479 = fmul fast float %1473, %1475
  %1480 = fadd fast float %1479, %1478
  %1481 = fmul fast float %1480, 0x3F70101000000000
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = and i32 %1483, 512
  %1485 = icmp eq i32 %1484, 0
  br i1 %1485, label %1494, label %1486

; <label>:1486                                    ; preds = %1461
  %1487 = add i32 %62, 464
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = add i32 %1489, 0
  %1491 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1490, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1492 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1491, %dx.types.Handle %115, float %1381, float %1382, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1493 = extractvalue %dx.types.ResRet.f32 %1492, 0
  br label %1494

; <label>:1494                                    ; preds = %1486, %1461
  %1495 = phi float [ %1493, %1486 ], [ 1.000000e+00, %1461 ]
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = and i32 %1497, 33554432
  %1499 = icmp eq i32 %1498, 0
  br i1 %1499, label %1606, label %1500

; <label>:1500                                    ; preds = %1494
  %1501 = add i32 %62, 240
  %1502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.i32 %1502, 0
  %1504 = and i32 %1503, 65535
  %1505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1504)  ; LegacyF16ToF32(value)
  %1506 = lshr i32 %1503, 16
  %1507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1506)  ; LegacyF16ToF32(value)
  %1508 = add i32 %62, 244
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.i32 %1509, 0
  %1511 = and i32 %1510, 65535
  %1512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1511)  ; LegacyF16ToF32(value)
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = lshr i32 %1514, 24
  %1516 = uitofp i32 %1515 to float
  %1517 = fmul fast float %1516, 0x3F70101020000000
  %1518 = and i32 %1514, 255
  %1519 = uitofp i32 %1518 to float
  %1520 = fmul fast float %1519, 0x3F70101020000000
  %1521 = lshr i32 %1514, 8
  %1522 = and i32 %1521, 255
  %1523 = uitofp i32 %1522 to float
  %1524 = fmul fast float %1523, 0x3F70101020000000
  %1525 = lshr i32 %1514, 16
  %1526 = and i32 %1525, 255
  %1527 = uitofp i32 %1526 to float
  %1528 = fmul fast float %1527, 0x3F70101020000000
  %1529 = add i32 %62, 236
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = lshr i32 %1531, 24
  %1533 = uitofp i32 %1532 to float
  %1534 = fmul fast float %1533, 0x3F70101020000000
  %1535 = and i32 %1531, 255
  %1536 = uitofp i32 %1535 to float
  %1537 = fmul fast float %1536, 0x3F70101020000000
  %1538 = lshr i32 %1531, 8
  %1539 = and i32 %1538, 255
  %1540 = uitofp i32 %1539 to float
  %1541 = fmul fast float %1540, 0x3F70101020000000
  %1542 = lshr i32 %1531, 16
  %1543 = and i32 %1542, 255
  %1544 = uitofp i32 %1543 to float
  %1545 = fmul fast float %1544, 0x3F70101020000000
  %1546 = bitcast float %1470 to i32
  %1547 = ashr i32 %1546, 1
  %1548 = sub nsw i32 1597463174, %1547
  %1549 = bitcast i32 %1548 to float
  %1550 = fmul fast float %1470, 5.000000e-01
  %1551 = fmul fast float %1549, %1549
  %1552 = fmul fast float %1551, %1550
  %1553 = fsub fast float 1.500000e+00, %1552
  %1554 = fmul fast float %1549, %1470
  %1555 = fmul fast float %1554, %1553
  %1556 = bitcast float %1471 to i32
  %1557 = ashr i32 %1556, 1
  %1558 = sub nsw i32 1597463174, %1557
  %1559 = bitcast i32 %1558 to float
  %1560 = fmul fast float %1471, 5.000000e-01
  %1561 = fmul fast float %1559, %1559
  %1562 = fmul fast float %1561, %1560
  %1563 = fsub fast float 1.500000e+00, %1562
  %1564 = fmul fast float %1559, %1471
  %1565 = fmul fast float %1564, %1563
  %1566 = bitcast float %1472 to i32
  %1567 = ashr i32 %1566, 1
  %1568 = sub nsw i32 1597463174, %1567
  %1569 = bitcast i32 %1568 to float
  %1570 = fmul fast float %1472, 5.000000e-01
  %1571 = fmul fast float %1569, %1569
  %1572 = fmul fast float %1571, %1570
  %1573 = fsub fast float 1.500000e+00, %1572
  %1574 = fmul fast float %1569, %1472
  %1575 = fmul fast float %1574, %1573
  %1576 = fsub fast float %1555, %1537
  %1577 = fsub fast float %1565, %1541
  %1578 = fsub fast float %1575, %1545
  %1579 = fmul fast float %1576, %1505
  %1580 = fmul fast float %1577, %1507
  %1581 = fmul fast float %1578, %1512
  %1582 = fadd fast float %1579, %1520
  %1583 = fadd fast float %1580, %1524
  %1584 = fadd fast float %1581, %1528
  %1585 = call float @dx.op.unary.f32(i32 7, float %1582)  ; Saturate(value)
  %1586 = call float @dx.op.unary.f32(i32 7, float %1583)  ; Saturate(value)
  %1587 = call float @dx.op.unary.f32(i32 7, float %1584)  ; Saturate(value)
  %1588 = fmul fast float %1585, %1585
  %1589 = fmul fast float %1586, %1586
  %1590 = fmul fast float %1587, %1587
  %1591 = fsub fast float %1588, %1470
  %1592 = fsub fast float %1589, %1471
  %1593 = fsub fast float %1590, %1472
  %1594 = fmul fast float %1591, %1495
  %1595 = fmul fast float %1592, %1495
  %1596 = fmul fast float %1593, %1495
  %1597 = fadd fast float %1594, %1470
  %1598 = fadd fast float %1595, %1471
  %1599 = fadd fast float %1596, %1472
  %1600 = fadd fast float %1517, %1481
  %1601 = fsub fast float %1600, %1534
  %1602 = call float @dx.op.unary.f32(i32 7, float %1601)  ; Saturate(value)
  %1603 = fsub fast float %1602, %1481
  %1604 = fmul fast float %1603, %1495
  %1605 = fadd fast float %1604, %1481
  br label %1659

; <label>:1606                                    ; preds = %1494
  %1607 = and i32 %1497, 134217728
  %1608 = icmp eq i32 %1607, 0
  br i1 %1608, label %1643, label %1609

; <label>:1609                                    ; preds = %1606
  %1610 = call float @dx.op.unary.f32(i32 24, float %412)  ; Sqrt(value)
  %1611 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %1612 = call float @dx.op.unary.f32(i32 24, float %414)  ; Sqrt(value)
  %1613 = fadd fast float %1610, -5.000000e-01
  %1614 = fadd fast float %1611, -5.000000e-01
  %1615 = fadd fast float %1612, -5.000000e-01
  %1616 = fmul fast float %1613, %1495
  %1617 = fmul fast float %1614, %1495
  %1618 = fmul fast float %1615, %1495
  %1619 = fadd fast float %1616, 5.000000e-01
  %1620 = fadd fast float %1617, 5.000000e-01
  %1621 = fadd fast float %1618, 5.000000e-01
  %1622 = call float @dx.op.unary.f32(i32 24, float %1470)  ; Sqrt(value)
  %1623 = call float @dx.op.unary.f32(i32 24, float %1471)  ; Sqrt(value)
  %1624 = call float @dx.op.unary.f32(i32 24, float %1472)  ; Sqrt(value)
  %1625 = fmul fast float %1619, 2.000000e+00
  %1626 = fsub fast float 1.000000e+00, %1625
  %1627 = fmul fast float %1626, %1622
  %1628 = fadd fast float %1627, %1625
  %1629 = fmul fast float %1628, %1622
  %1630 = fmul fast float %1620, 2.000000e+00
  %1631 = fsub fast float 1.000000e+00, %1630
  %1632 = fmul fast float %1631, %1623
  %1633 = fadd fast float %1632, %1630
  %1634 = fmul fast float %1633, %1623
  %1635 = fmul fast float %1621, 2.000000e+00
  %1636 = fsub fast float 1.000000e+00, %1635
  %1637 = fmul fast float %1636, %1624
  %1638 = fadd fast float %1637, %1635
  %1639 = fmul fast float %1638, %1624
  %1640 = fmul fast float %1629, %1629
  %1641 = fmul fast float %1634, %1634
  %1642 = fmul fast float %1639, %1639
  br label %1659

; <label>:1643                                    ; preds = %1606
  %1644 = fmul fast float %412, %412
  %1645 = fmul fast float %413, %413
  %1646 = fmul fast float %414, %414
  %1647 = fadd fast float %1644, -1.000000e+00
  %1648 = fadd fast float %1645, -1.000000e+00
  %1649 = fadd fast float %1646, -1.000000e+00
  %1650 = fmul fast float %1495, %1647
  %1651 = fmul fast float %1495, %1648
  %1652 = fmul fast float %1495, %1649
  %1653 = fadd fast float %1650, 1.000000e+00
  %1654 = fadd fast float %1651, 1.000000e+00
  %1655 = fadd fast float %1652, 1.000000e+00
  %1656 = fmul fast float %1653, %1470
  %1657 = fmul fast float %1654, %1471
  %1658 = fmul fast float %1655, %1472
  br label %1659

; <label>:1659                                    ; preds = %1643, %1609, %1500, %1456
  %1660 = phi float [ %1605, %1500 ], [ %1481, %1609 ], [ %1481, %1643 ], [ 0x3FA23C0BE0000000, %1456 ]
  %1661 = phi float [ %1597, %1500 ], [ %1640, %1609 ], [ %1656, %1643 ], [ 1.000000e+00, %1456 ]
  %1662 = phi float [ %1598, %1500 ], [ %1641, %1609 ], [ %1657, %1643 ], [ 1.000000e+00, %1456 ]
  %1663 = phi float [ %1599, %1500 ], [ %1642, %1609 ], [ %1658, %1643 ], [ 1.000000e+00, %1456 ]
  %1664 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1665 = extractvalue %dx.types.CBufRet.i32 %1664, 1
  %1666 = and i32 %1665, 1
  %1667 = icmp ne i32 %1666, 0
  %1668 = add i32 %62, 356
  %1669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1668, i32 undef)  ; BufferLoad(srv,index,wot)
  %1670 = extractvalue %dx.types.ResRet.i32 %1669, 0
  %1671 = and i32 %1670, 32
  %1672 = icmp ne i32 %1671, 0
  %1673 = and i1 %1667, %1672
  %1674 = select i1 %1673, float 1.000000e+00, float %1661
  %1675 = select i1 %1673, float 0x3FD3333340000000, float %1662
  %1676 = select i1 %1673, float 0x3FD3333340000000, float %1663
  %1677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1678 = extractvalue %dx.types.ResRet.i32 %1677, 0
  %1679 = and i32 %1678, 32
  %1680 = icmp eq i32 %1679, 0
  br i1 %1680, label %1753, label %1681

; <label>:1681                                    ; preds = %1659
  %1682 = add i32 %62, 108
  %1683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1682, i32 undef)  ; BufferLoad(srv,index,wot)
  %1684 = extractvalue %dx.types.ResRet.i32 %1683, 0
  %1685 = add i32 %62, 396
  %1686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1685, i32 undef)  ; BufferLoad(srv,index,wot)
  %1687 = extractvalue %dx.types.ResRet.i32 %1686, 0
  %1688 = add i32 %1687, 0
  %1689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1688, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1690 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1689, %dx.types.Handle %114, float %1381, float %1382, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1691 = extractvalue %dx.types.ResRet.f32 %1690, 0
  %1692 = extractvalue %dx.types.ResRet.f32 %1690, 1
  %1693 = extractvalue %dx.types.ResRet.f32 %1690, 2
  %1694 = extractvalue %dx.types.ResRet.f32 %1690, 3
  %1695 = and i32 %1684, 255
  %1696 = uitofp i32 %1695 to float
  %1697 = lshr i32 %1684, 8
  %1698 = and i32 %1697, 255
  %1699 = uitofp i32 %1698 to float
  %1700 = lshr i32 %1684, 16
  %1701 = and i32 %1700, 255
  %1702 = uitofp i32 %1701 to float
  %1703 = fmul fast float %1702, 0x3F70101000000000
  %1704 = fmul fast float %1691, %1696
  %1705 = fadd fast float %1704, %1699
  %1706 = fmul fast float %1705, 0x3F70101000000000
  %1707 = fadd fast float %1692, -5.000000e-01
  %1708 = fadd fast float %1694, -5.000000e-01
  %1709 = fmul fast float %1707, %1703
  %1710 = fmul fast float %1708, %1703
  %1711 = fadd fast float %1709, 5.000000e-01
  %1712 = fadd fast float %1710, 5.000000e-01
  %1713 = fmul fast float %1711, 2.000000e+00
  %1714 = fadd fast float %1713, -1.000000e+00
  %1715 = fmul fast float %1712, 2.000000e+00
  %1716 = fadd fast float %1715, -1.000000e+00
  %1717 = fadd fast float %1714, %1716
  %1718 = fmul fast float %1717, 5.000000e-01
  %1719 = fsub fast float %1714, %1716
  %1720 = fmul fast float %1719, 5.000000e-01
  %1721 = call float @dx.op.unary.f32(i32 6, float %1718)  ; FAbs(value)
  %1722 = fsub fast float 1.000000e+00, %1721
  %1723 = call float @dx.op.unary.f32(i32 6, float %1720)  ; FAbs(value)
  %1724 = fsub fast float %1722, %1723
  %1725 = call float @dx.op.dot3.f32(i32 55, float %1718, float %1720, float %1724, float %1718, float %1720, float %1724)  ; Dot3(ax,ay,az,bx,by,bz)
  %1726 = call float @dx.op.unary.f32(i32 25, float %1725)  ; Rsqrt(value)
  %1727 = fmul fast float %1718, %1726
  %1728 = fmul fast float %1720, %1726
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = and i32 %1730, 67108864
  %1732 = icmp eq i32 %1731, 0
  br i1 %1732, label %1749, label %1733

; <label>:1733                                    ; preds = %1681
  %1734 = add i32 %62, 296
  %1735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1734, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.i32 %1735, 0
  %1737 = and i32 %1736, 65535
  %1738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1737)  ; LegacyF16ToF32(value)
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = and i32 %1740, 65535
  %1742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1741)  ; LegacyF16ToF32(value)
  %1743 = lshr i32 %1736, 16
  %1744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1743)  ; LegacyF16ToF32(value)
  %1745 = fsub fast float %1706, %1744
  %1746 = fmul fast float %1745, %1738
  %1747 = fadd fast float %1746, %1742
  %1748 = call float @dx.op.unary.f32(i32 7, float %1747)  ; Saturate(value)
  br label %1749

; <label>:1749                                    ; preds = %1733, %1681
  %1750 = phi float [ %1748, %1733 ], [ %1706, %1681 ]
  %1751 = call float @dx.op.dot2.f32(i32 54, float %1727, float %1728, float %1285, float %1286)  ; Dot2(ax,ay,bx,by)
  %1752 = call float @dx.op.dot2.f32(i32 54, float %1727, float %1728, float %1287, float %1288)  ; Dot2(ax,ay,bx,by)
  br label %1753

; <label>:1753                                    ; preds = %1749, %1659
  %1754 = phi float [ %1750, %1749 ], [ 0x3FD6666660000000, %1659 ]
  %1755 = phi float [ %1751, %1749 ], [ 0.000000e+00, %1659 ]
  %1756 = phi float [ %1752, %1749 ], [ 0.000000e+00, %1659 ]
  %1757 = phi float [ %1693, %1749 ], [ 1.000000e+00, %1659 ]
  %1758 = add i32 %62, 176
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = lshr i32 %1760, 22
  %1762 = shl nuw nsw i32 %1761, 5
  %1763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1762)  ; LegacyF16ToF32(value)
  %1764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.i32 %1764, 0
  %1766 = and i32 %1765, 64
  %1767 = icmp eq i32 %1766, 0
  br i1 %1767, label %1801, label %1768

; <label>:1768                                    ; preds = %1753
  %1769 = add i32 %62, 412
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = add i32 %1771, 0
  %1773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1772, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = and i32 %1775, 131072
  %1777 = icmp eq i32 %1776, 0
  %1778 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1773, %dx.types.Handle %114, float %1381, float %1382, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1779 = extractvalue %dx.types.ResRet.f32 %1778, 0
  %1780 = extractvalue %dx.types.ResRet.f32 %1778, 1
  %1781 = extractvalue %dx.types.ResRet.f32 %1778, 2
  %1782 = fmul fast float %395, %1779
  %1783 = fmul fast float %396, %1780
  %1784 = fmul fast float %397, %1781
  br i1 %1777, label %1791, label %1785

; <label>:1785                                    ; preds = %1768
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 0
  %1788 = fmul fast float %1787, %1782
  %1789 = fmul fast float %1787, %1783
  %1790 = fmul fast float %1787, %1784
  br label %1791

; <label>:1791                                    ; preds = %1785, %1768
  %1792 = phi float [ %1788, %1785 ], [ %1782, %1768 ]
  %1793 = phi float [ %1789, %1785 ], [ %1783, %1768 ]
  %1794 = phi float [ %1790, %1785 ], [ %1784, %1768 ]
  %1795 = fmul fast float %1792, %1763
  %1796 = select i1 %277, float %1795, float %1792
  %1797 = call float @dx.op.dot3.f32(i32 55, float %1796, float %1793, float %1794, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1798 = select i1 %277, float 0.000000e+00, float %1792
  %1799 = select i1 %277, float %1797, float %1793
  %1800 = select i1 %277, float 0.000000e+00, float %1794
  br label %1801

; <label>:1801                                    ; preds = %1791, %1753
  %1802 = phi float [ %1798, %1791 ], [ 0.000000e+00, %1753 ]
  %1803 = phi float [ %1799, %1791 ], [ 0.000000e+00, %1753 ]
  %1804 = phi float [ %1800, %1791 ], [ 0.000000e+00, %1753 ]
  %1805 = add i32 %62, 112
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = and i32 %1807, 255
  %1809 = uitofp i32 %1808 to float
  %1810 = lshr i32 %1807, 8
  %1811 = and i32 %1810, 255
  %1812 = uitofp i32 %1811 to float
  %1813 = call float @dx.op.dot3.f32(i32 55, float %1674, float %1675, float %1676, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1814 = fmul fast float %1812, %1813
  %1815 = fadd fast float %1814, %1809
  %1816 = fmul fast float %1815, 0x3F70101020000000
  %1817 = call float @dx.op.unary.f32(i32 7, float %1816)  ; Saturate(value)
  br i1 %1273, label %1818, label %1826

; <label>:1818                                    ; preds = %1801
  %1819 = fsub fast float 1.000000e+00, %1454
  %1820 = fmul fast float %1819, %1261
  %1821 = fmul fast float %1819, %1262
  %1822 = fmul fast float %1819, %1263
  %1823 = fmul fast float %1819, %1264
  %1824 = fmul fast float %1819, %1265
  %1825 = fmul fast float %1819, %1266
  br label %1826

; <label>:1826                                    ; preds = %1818, %1801
  %1827 = phi float [ %1820, %1818 ], [ %1261, %1801 ]
  %1828 = phi float [ %1821, %1818 ], [ %1262, %1801 ]
  %1829 = phi float [ %1822, %1818 ], [ %1263, %1801 ]
  %1830 = phi float [ %1823, %1818 ], [ %1264, %1801 ]
  %1831 = phi float [ %1824, %1818 ], [ %1265, %1801 ]
  %1832 = phi float [ %1825, %1818 ], [ %1266, %1801 ]
  %1833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.i32 %1833, 0
  %1835 = and i32 %1834, 3
  %1836 = icmp eq i32 %1835, 3
  br i1 %1836, label %1915, label %1837

; <label>:1837                                    ; preds = %1826
  %1838 = and i32 %1834, 16
  %1839 = icmp ne i32 %1838, 0
  %1840 = select i1 %1839, float %1454, float 0.000000e+00
  %1841 = icmp eq i32 %1835, 0
  br i1 %1841, label %1842, label %1870

; <label>:1842                                    ; preds = %1837
  %1843 = and i32 %1834, 64
  %1844 = icmp ne i32 %1843, 0
  %1845 = select i1 %1844, float %1454, float 0.000000e+00
  %1846 = fsub fast float %1674, %1827
  %1847 = fsub fast float %1675, %1828
  %1848 = fsub fast float %1676, %1829
  %1849 = fmul fast float %1840, %1846
  %1850 = fmul fast float %1840, %1847
  %1851 = fmul fast float %1840, %1848
  %1852 = fadd fast float %1849, %1827
  %1853 = fadd fast float %1850, %1828
  %1854 = fadd fast float %1851, %1829
  %1855 = fsub fast float %1660, %1267
  %1856 = fmul fast float %1840, %1855
  %1857 = fadd fast float %1856, %1267
  %1858 = fsub fast float %1802, %1830
  %1859 = fsub fast float %1803, %1831
  %1860 = fsub fast float %1804, %1832
  %1861 = fmul fast float %1845, %1858
  %1862 = fmul fast float %1845, %1859
  %1863 = fmul fast float %1845, %1860
  %1864 = fadd fast float %1861, %1830
  %1865 = fadd fast float %1862, %1831
  %1866 = fadd fast float %1863, %1832
  %1867 = fsub fast float %1817, %1271
  %1868 = fmul fast float %1840, %1867
  %1869 = fadd fast float %1868, %1271
  br label %1915

; <label>:1870                                    ; preds = %1837
  %1871 = icmp eq i32 %1835, 1
  br i1 %1871, label %1872, label %1885

; <label>:1872                                    ; preds = %1870
  %1873 = fadd fast float %1674, -1.000000e+00
  %1874 = fadd fast float %1675, -1.000000e+00
  %1875 = fadd fast float %1676, -1.000000e+00
  %1876 = fmul fast float %1840, %1873
  %1877 = fmul fast float %1840, %1874
  %1878 = fmul fast float %1840, %1875
  %1879 = fadd fast float %1876, 1.000000e+00
  %1880 = fadd fast float %1877, 1.000000e+00
  %1881 = fadd fast float %1878, 1.000000e+00
  %1882 = fmul fast float %1879, %1827
  %1883 = fmul fast float %1880, %1828
  %1884 = fmul fast float %1881, %1829
  br label %1915

; <label>:1885                                    ; preds = %1870
  %1886 = icmp eq i32 %1835, 2
  br i1 %1886, label %1887, label %1915

; <label>:1887                                    ; preds = %1885
  %1888 = call float @dx.op.unary.f32(i32 24, float %1674)  ; Sqrt(value)
  %1889 = call float @dx.op.unary.f32(i32 24, float %1675)  ; Sqrt(value)
  %1890 = call float @dx.op.unary.f32(i32 24, float %1676)  ; Sqrt(value)
  %1891 = fadd fast float %1888, -5.000000e-01
  %1892 = fadd fast float %1889, -5.000000e-01
  %1893 = fadd fast float %1890, -5.000000e-01
  %1894 = fmul fast float %1891, %1840
  %1895 = fmul fast float %1892, %1840
  %1896 = fmul fast float %1893, %1840
  %1897 = fadd fast float %1894, 5.000000e-01
  %1898 = fadd fast float %1895, 5.000000e-01
  %1899 = fadd fast float %1896, 5.000000e-01
  %1900 = fmul fast float %1897, 2.000000e+00
  %1901 = fsub fast float 1.000000e+00, %1900
  %1902 = fmul fast float %1901, %1827
  %1903 = fadd fast float %1902, %1900
  %1904 = fmul fast float %1903, %1827
  %1905 = fmul fast float %1898, 2.000000e+00
  %1906 = fsub fast float 1.000000e+00, %1905
  %1907 = fmul fast float %1906, %1828
  %1908 = fadd fast float %1907, %1905
  %1909 = fmul fast float %1908, %1828
  %1910 = fmul fast float %1899, 2.000000e+00
  %1911 = fsub fast float 1.000000e+00, %1910
  %1912 = fmul fast float %1911, %1829
  %1913 = fadd fast float %1912, %1910
  %1914 = fmul fast float %1913, %1829
  br label %1915

; <label>:1915                                    ; preds = %1887, %1885, %1872, %1842, %1826
  %1916 = phi float [ %1827, %1826 ], [ %1904, %1887 ], [ %1827, %1885 ], [ %1882, %1872 ], [ %1852, %1842 ]
  %1917 = phi float [ %1828, %1826 ], [ %1909, %1887 ], [ %1828, %1885 ], [ %1883, %1872 ], [ %1853, %1842 ]
  %1918 = phi float [ %1829, %1826 ], [ %1914, %1887 ], [ %1829, %1885 ], [ %1884, %1872 ], [ %1854, %1842 ]
  %1919 = phi float [ %1830, %1826 ], [ %1830, %1887 ], [ %1830, %1885 ], [ %1830, %1872 ], [ %1864, %1842 ]
  %1920 = phi float [ %1831, %1826 ], [ %1831, %1887 ], [ %1831, %1885 ], [ %1831, %1872 ], [ %1865, %1842 ]
  %1921 = phi float [ %1832, %1826 ], [ %1832, %1887 ], [ %1832, %1885 ], [ %1832, %1872 ], [ %1866, %1842 ]
  %1922 = phi float [ %1267, %1826 ], [ %1267, %1887 ], [ %1267, %1885 ], [ %1267, %1872 ], [ %1857, %1842 ]
  %1923 = phi float [ %1271, %1826 ], [ %1271, %1887 ], [ %1271, %1885 ], [ %1271, %1872 ], [ %1869, %1842 ]
  %1924 = and i32 %1834, 12
  %1925 = icmp eq i32 %1924, 12
  br i1 %1925, label %1998, label %1926

; <label>:1926                                    ; preds = %1915
  %1927 = and i32 %1834, 2097184
  %1928 = icmp eq i32 %1927, 2097184
  %1929 = select i1 %1928, float %1454, float 0.000000e+00
  %1930 = and i32 %1834, 4194336
  %1931 = icmp eq i32 %1930, 4194336
  %1932 = select i1 %1931, float %1454, float 0.000000e+00
  %1933 = and i32 %1834, 8388640
  %1934 = icmp eq i32 %1933, 8388640
  %1935 = select i1 %1934, float %1454, float 0.000000e+00
  %1936 = icmp eq i32 %1924, 0
  br i1 %1936, label %1937, label %1950

; <label>:1937                                    ; preds = %1926
  %1938 = fsub fast float %1755, %1259
  %1939 = fsub fast float %1756, %1260
  %1940 = fmul fast float %1929, %1938
  %1941 = fmul fast float %1929, %1939
  %1942 = fadd fast float %1940, %1259
  %1943 = fadd fast float %1941, %1260
  %1944 = fsub fast float %1757, %1270
  %1945 = fmul fast float %1932, %1944
  %1946 = fadd fast float %1945, %1270
  %1947 = fsub fast float %1754, %1269
  %1948 = fmul fast float %1935, %1947
  %1949 = fadd fast float %1948, %1269
  br label %1998

; <label>:1950                                    ; preds = %1926
  %1951 = icmp eq i32 %1924, 4
  br i1 %1951, label %1952, label %1984

; <label>:1952                                    ; preds = %1950
  %1953 = fmul fast float %1929, %1755
  %1954 = fmul fast float %1929, %1756
  %1955 = fadd fast float %1953, %1259
  %1956 = fadd fast float %1954, %1260
  %1957 = call float @dx.op.binary.f32(i32 36, float %1270, float %1757)  ; FMin(a,b)
  %1958 = fsub fast float %1957, %1270
  %1959 = fmul fast float %1958, %1932
  %1960 = fadd fast float %1959, %1270
  %1961 = fadd fast float %1754, %1269
  %1962 = fmul fast float %1961, 0x3FF337FAE0000000
  %1963 = fmul fast float %1269, %1269
  %1964 = fmul fast float %1754, %1754
  %1965 = fadd fast float %1964, %1963
  %1966 = fmul fast float %1965, 0x3FE5152B00000000
  %1967 = fmul fast float %1269, 0xBFCC1F85E0000000
  %1968 = fmul fast float %1967, %1754
  %1969 = fadd fast float %1968, 0xBFE1363700000000
  %1970 = fadd fast float %1969, %1962
  %1971 = fsub fast float %1970, %1966
  %1972 = fmul fast float %1961, 0x3FBA6F0D00000000
  %1973 = fmul fast float %1965, 0x3FD0432880000000
  %1974 = fmul fast float %1269, 0xBFEF110800000000
  %1975 = fmul fast float %1974, %1754
  %1976 = fadd fast float %1975, 1.000000e+00
  %1977 = fsub fast float %1976, %1972
  %1978 = fadd fast float %1977, %1973
  %1979 = fdiv fast float %1971, %1978
  %1980 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1981 = fsub fast float %1980, %1269
  %1982 = fmul fast float %1981, %1935
  %1983 = fadd fast float %1982, %1269
  br label %1998

; <label>:1984                                    ; preds = %1950
  %1985 = icmp eq i32 %1924, 8
  br i1 %1985, label %1986, label %1998

; <label>:1986                                    ; preds = %1984
  %1987 = fmul fast float %1929, %1755
  %1988 = fmul fast float %1929, %1756
  %1989 = fadd fast float %1987, %1259
  %1990 = fadd fast float %1988, %1260
  %1991 = call float @dx.op.binary.f32(i32 36, float %1270, float %1757)  ; FMin(a,b)
  %1992 = fsub fast float %1991, %1270
  %1993 = fmul fast float %1992, %1932
  %1994 = fadd fast float %1993, %1270
  %1995 = fsub fast float %1754, %1269
  %1996 = fmul fast float %1935, %1995
  %1997 = fadd fast float %1996, %1269
  br label %1998

; <label>:1998                                    ; preds = %1986, %1984, %1952, %1937, %1915, %1453, %1272, %1258
  %1999 = phi float [ %1259, %1915 ], [ %1259, %1453 ], [ %1259, %1258 ], [ %1989, %1986 ], [ %1259, %1984 ], [ %1955, %1952 ], [ %1942, %1937 ], [ %1259, %1272 ]
  %2000 = phi float [ %1260, %1915 ], [ %1260, %1453 ], [ %1260, %1258 ], [ %1990, %1986 ], [ %1260, %1984 ], [ %1956, %1952 ], [ %1943, %1937 ], [ %1260, %1272 ]
  %2001 = phi float [ %1916, %1915 ], [ %1261, %1453 ], [ %1261, %1258 ], [ %1916, %1986 ], [ %1916, %1984 ], [ %1916, %1952 ], [ %1916, %1937 ], [ %1261, %1272 ]
  %2002 = phi float [ %1917, %1915 ], [ %1262, %1453 ], [ %1262, %1258 ], [ %1917, %1986 ], [ %1917, %1984 ], [ %1917, %1952 ], [ %1917, %1937 ], [ %1262, %1272 ]
  %2003 = phi float [ %1918, %1915 ], [ %1263, %1453 ], [ %1263, %1258 ], [ %1918, %1986 ], [ %1918, %1984 ], [ %1918, %1952 ], [ %1918, %1937 ], [ %1263, %1272 ]
  %2004 = phi float [ %1919, %1915 ], [ %1264, %1453 ], [ %1264, %1258 ], [ %1919, %1986 ], [ %1919, %1984 ], [ %1919, %1952 ], [ %1919, %1937 ], [ %1264, %1272 ]
  %2005 = phi float [ %1920, %1915 ], [ %1265, %1453 ], [ %1265, %1258 ], [ %1920, %1986 ], [ %1920, %1984 ], [ %1920, %1952 ], [ %1920, %1937 ], [ %1265, %1272 ]
  %2006 = phi float [ %1921, %1915 ], [ %1266, %1453 ], [ %1266, %1258 ], [ %1921, %1986 ], [ %1921, %1984 ], [ %1921, %1952 ], [ %1921, %1937 ], [ %1266, %1272 ]
  %2007 = phi float [ %1922, %1915 ], [ %1267, %1453 ], [ %1267, %1258 ], [ %1922, %1986 ], [ %1922, %1984 ], [ %1922, %1952 ], [ %1922, %1937 ], [ %1267, %1272 ]
  %2008 = phi float [ %1269, %1915 ], [ %1269, %1453 ], [ %1269, %1258 ], [ %1997, %1986 ], [ %1269, %1984 ], [ %1983, %1952 ], [ %1949, %1937 ], [ %1269, %1272 ]
  %2009 = phi float [ %1270, %1915 ], [ %1270, %1453 ], [ %1270, %1258 ], [ %1994, %1986 ], [ %1270, %1984 ], [ %1960, %1952 ], [ %1946, %1937 ], [ %1270, %1272 ]
  %2010 = phi float [ %1923, %1915 ], [ %1271, %1453 ], [ %1271, %1258 ], [ %1923, %1986 ], [ %1923, %1984 ], [ %1923, %1952 ], [ %1923, %1937 ], [ %1271, %1272 ]
  br i1 %659, label %2737, label %2011

; <label>:2011                                    ; preds = %1998
  %2012 = icmp ult i32 %715, 3
  %2013 = add i32 %62, 56
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = add i32 %62, 60
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = or i32 %2018, %2015
  %2020 = icmp eq i32 %2019, 0
  br i1 %2020, label %2737, label %2021

; <label>:2021                                    ; preds = %2011
  %2022 = and i32 %2015, 262144
  %2023 = icmp ne i32 %2022, 0
  %2024 = select i1 %2023, float %69, float 1.000000e+00
  %2025 = select i1 %2023, float %70, float 0.000000e+00
  %2026 = select i1 %2023, float %71, float 0.000000e+00
  %2027 = select i1 %2023, float %72, float 1.000000e+00
  %2028 = select i1 %2023, float %73, float %96
  %2029 = select i1 %2023, float %74, float %97
  %2030 = add i32 %62, 316
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = lshr i32 %2032, 16
  %2034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2033)  ; LegacyF16ToF32(value)
  %2035 = fmul fast float %2034, 0x3F50624DE0000000
  %2036 = add i32 %62, 120
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2036, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = lshr i32 %2038, 16
  %2040 = and i32 %2039, 255
  %2041 = lshr i32 %2038, 24
  %2042 = add i32 %62, 324
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = and i32 %2044, 65535
  %2046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2045)  ; LegacyF16ToF32(value)
  %2047 = lshr i32 %2044, 16
  %2048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2047)  ; LegacyF16ToF32(value)
  %2049 = add i32 %62, 64
  %2050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2049, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.i32 %2050, 0
  %2052 = lshr i32 %2051, 22
  %2053 = shl nuw nsw i32 %2052, 5
  %2054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2053)  ; LegacyF16ToF32(value)
  %2055 = shl i32 %2051, 4
  %2056 = and i32 %2055, 32752
  %2057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2056)  ; LegacyF16ToF32(value)
  %2058 = lshr i32 %2051, 7
  %2059 = and i32 %2058, 32752
  %2060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2059)  ; LegacyF16ToF32(value)
  %2061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2062 = extractvalue %dx.types.CBufRet.f32 %2061, 3
  %2063 = fmul fast float %2062, 1.000000e+03
  %2064 = fmul fast float %2063, %543
  %2065 = call float @dx.op.unary.f32(i32 22, float %2064)  ; Frc(value)
  %2066 = fadd fast float %2065, %531
  %2067 = fmul fast float %2063, %545
  %2068 = call float @dx.op.unary.f32(i32 22, float %2067)  ; Frc(value)
  %2069 = fadd fast float %2068, %532
  %2070 = fmul fast float %2035, %2063
  %2071 = call float @dx.op.unary.f32(i32 22, float %2070)  ; Frc(value)
  %2072 = fmul fast float %2071, 0x401921FB60000000
  %2073 = fadd fast float %2072, %2054
  %2074 = call float @dx.op.unary.f32(i32 13, float %2073)  ; Sin(value)
  %2075 = call float @dx.op.unary.f32(i32 12, float %2073)  ; Cos(value)
  %2076 = fsub fast float -0.000000e+00, %2074
  %2077 = fadd fast float %2028, -5.000000e-01
  %2078 = fadd fast float %2029, -5.000000e-01
  %2079 = fmul fast float %2046, %2077
  %2080 = fmul fast float %2048, %2078
  %2081 = fadd fast float %2079, 5.000000e-01
  %2082 = fadd fast float %2080, 5.000000e-01
  %2083 = fmul fast float %2057, %2081
  %2084 = fmul fast float %2060, %2082
  %2085 = fmul fast float %2075, %2083
  %2086 = call float @dx.op.tertiary.f32(i32 46, float %2076, float %2084, float %2085)  ; FMad(a,b,c)
  %2087 = fmul fast float %2074, %2083
  %2088 = call float @dx.op.tertiary.f32(i32 46, float %2075, float %2084, float %2087)  ; FMad(a,b,c)
  %2089 = fadd fast float %2066, %2086
  %2090 = fadd fast float %2069, %2088
  %2091 = icmp ugt i32 %2040, 1
  %2092 = icmp ugt i32 %2038, 33554431
  %2093 = or i1 %2092, %2091
  br i1 %2093, label %2094, label %2119

; <label>:2094                                    ; preds = %2021
  %2095 = add i32 %62, 260
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2095, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.i32 %2096, 0
  %2098 = lshr i32 %2097, 16
  %2099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2098)  ; LegacyF16ToF32(value)
  %2100 = fmul fast float %2062, %2099
  %2101 = call float @dx.op.unary.f32(i32 22, float %2100)  ; Frc(value)
  %2102 = mul nuw nsw i32 %2040, %2041
  %2103 = uitofp i32 %2102 to float
  %2104 = fmul fast float %2101, %2103
  %2105 = call float @dx.op.unary.f32(i32 27, float %2104)  ; Round_ni(value)
  %2106 = fptoui float %2105 to i32
  %2107 = urem i32 %2106, %2040
  %2108 = udiv i32 %2106, %2041
  %2109 = call float @dx.op.unary.f32(i32 22, float %2089)  ; Frc(value)
  %2110 = call float @dx.op.unary.f32(i32 22, float %2090)  ; Frc(value)
  %2111 = uitofp i32 %2107 to float
  %2112 = uitofp i32 %2108 to float
  %2113 = fadd fast float %2109, %2111
  %2114 = fadd fast float %2110, %2112
  %2115 = uitofp i32 %2040 to float
  %2116 = uitofp i32 %2041 to float
  %2117 = fdiv fast float %2113, %2115
  %2118 = fdiv fast float %2114, %2116
  br label %2119

; <label>:2119                                    ; preds = %2094, %2021
  %2120 = phi float [ %2117, %2094 ], [ %2089, %2021 ]
  %2121 = phi float [ %2118, %2094 ], [ %2090, %2021 ]
  %2122 = and i32 %2015, 256
  %2123 = icmp eq i32 %2122, 0
  br i1 %2123, label %2170, label %2124

; <label>:2124                                    ; preds = %2119
  %2125 = add i32 %62, 448
  %2126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.i32 %2126, 0
  %2128 = add i32 %2127, 0
  %2129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2128, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2130 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2129, %dx.types.Handle %115, float %2120, float %2121, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2131 = extractvalue %dx.types.ResRet.f32 %2130, 0
  %2132 = add i32 %62, 132
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2132, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = shl i32 %2134, 4
  %2136 = and i32 %2135, 32752
  %2137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2136)  ; LegacyF16ToF32(value)
  %2138 = lshr i32 %2134, 7
  %2139 = and i32 %2138, 32752
  %2140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2139)  ; LegacyF16ToF32(value)
  %2141 = fsub fast float 1.000000e+00, %711
  %2142 = call float @dx.op.binary.f32(i32 35, float %2141, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2143 = bitcast float %711 to i32
  %2144 = sitofp i32 %2143 to float
  %2145 = fadd fast float %2144, 0xC1CFBF8940000000
  %2146 = fmul fast float %2140, %2145
  %2147 = fadd fast float %2146, 0x41CFBF8940000000
  %2148 = fptosi float %2147 to i32
  %2149 = bitcast i32 %2148 to float
  %2150 = bitcast float %2142 to i32
  %2151 = sitofp i32 %2150 to float
  %2152 = fadd fast float %2151, 0xC1CFBF8940000000
  %2153 = fmul fast float %2152, %2140
  %2154 = fadd fast float %2153, 0x41CFBF8940000000
  %2155 = fptosi float %2154 to i32
  %2156 = bitcast i32 %2155 to float
  %2157 = fmul fast float %2149, %2137
  %2158 = fmul fast float %2156, %2137
  %2159 = fsub fast float %2142, %2157
  %2160 = fadd fast float %2158, %2142
  %2161 = call float @dx.op.unary.f32(i32 7, float %2159)  ; Saturate(value)
  %2162 = call float @dx.op.unary.f32(i32 7, float %2160)  ; Saturate(value)
  %2163 = fsub fast float %2131, %2161
  %2164 = fsub fast float %2162, %2161
  %2165 = bitcast float %2164 to i32
  %2166 = sub nsw i32 2129859010, %2165
  %2167 = bitcast i32 %2166 to float
  %2168 = fmul fast float %2167, %2163
  %2169 = call float @dx.op.unary.f32(i32 7, float %2168)  ; Saturate(value)
  br label %2170

; <label>:2170                                    ; preds = %2124, %2119
  %2171 = phi float [ %2169, %2124 ], [ %711, %2119 ]
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = and i32 %2173, 128
  %2175 = icmp eq i32 %2174, 0
  br i1 %2175, label %2192, label %2176

; <label>:2176                                    ; preds = %2170
  %2177 = add i32 %62, 432
  %2178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.i32 %2178, 0
  %2180 = add i32 %2179, 0
  %2181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2182 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2181, %dx.types.Handle %115, float %2120, float %2121, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2183 = extractvalue %dx.types.ResRet.f32 %2182, 0
  %2184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.i32 %2184, 0
  %2186 = and i32 %2185, 524288
  %2187 = icmp ne i32 %2186, 0
  %2188 = fcmp fast ogt float %2183, 0x3FE0101020000000
  %2189 = select i1 %2188, float 1.000000e+00, float 0.000000e+00
  %2190 = select i1 %2187, float %2189, float %2183
  %2191 = fmul fast float %2190, %2171
  br label %2192

; <label>:2192                                    ; preds = %2176, %2170
  %2193 = phi float [ %2191, %2176 ], [ %2171, %2170 ]
  %2194 = fcmp fast ult float %2193, 0x3F70101020000000
  br i1 %2194, label %2737, label %2195

; <label>:2195                                    ; preds = %2192
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = and i32 %2197, 16
  %2199 = icmp eq i32 %2198, 0
  br i1 %2199, label %2398, label %2200

; <label>:2200                                    ; preds = %2195
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2036, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = add i32 %62, 384
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2203, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = add i32 %2205, 0
  %2207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2206, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2208 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2207, %dx.types.Handle %114, float %2120, float %2121, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2209 = extractvalue %dx.types.ResRet.f32 %2208, 0
  %2210 = extractvalue %dx.types.ResRet.f32 %2208, 1
  %2211 = extractvalue %dx.types.ResRet.f32 %2208, 2
  %2212 = extractvalue %dx.types.ResRet.f32 %2208, 3
  %2213 = and i32 %2202, 255
  %2214 = uitofp i32 %2213 to float
  %2215 = lshr i32 %2202, 8
  %2216 = and i32 %2215, 255
  %2217 = uitofp i32 %2216 to float
  %2218 = fmul fast float %2212, %2214
  %2219 = fadd fast float %2218, %2217
  %2220 = fmul fast float %2219, 0x3F70101000000000
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = and i32 %2222, 512
  %2224 = icmp eq i32 %2223, 0
  br i1 %2224, label %2233, label %2225

; <label>:2225                                    ; preds = %2200
  %2226 = add i32 %62, 468
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2226, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = add i32 %2228, 0
  %2230 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2229, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2231 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2230, %dx.types.Handle %115, float %2120, float %2121, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2232 = extractvalue %dx.types.ResRet.f32 %2231, 0
  br label %2233

; <label>:2233                                    ; preds = %2225, %2200
  %2234 = phi float [ %2232, %2225 ], [ 1.000000e+00, %2200 ]
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = and i32 %2236, 33554432
  %2238 = icmp eq i32 %2237, 0
  br i1 %2238, label %2345, label %2239

; <label>:2239                                    ; preds = %2233
  %2240 = add i32 %62, 256
  %2241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2242 = extractvalue %dx.types.ResRet.i32 %2241, 0
  %2243 = and i32 %2242, 65535
  %2244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2243)  ; LegacyF16ToF32(value)
  %2245 = lshr i32 %2242, 16
  %2246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2245)  ; LegacyF16ToF32(value)
  %2247 = add i32 %62, 260
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = and i32 %2249, 65535
  %2251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2250)  ; LegacyF16ToF32(value)
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = lshr i32 %2253, 24
  %2255 = uitofp i32 %2254 to float
  %2256 = fmul fast float %2255, 0x3F70101020000000
  %2257 = and i32 %2253, 255
  %2258 = uitofp i32 %2257 to float
  %2259 = fmul fast float %2258, 0x3F70101020000000
  %2260 = lshr i32 %2253, 8
  %2261 = and i32 %2260, 255
  %2262 = uitofp i32 %2261 to float
  %2263 = fmul fast float %2262, 0x3F70101020000000
  %2264 = lshr i32 %2253, 16
  %2265 = and i32 %2264, 255
  %2266 = uitofp i32 %2265 to float
  %2267 = fmul fast float %2266, 0x3F70101020000000
  %2268 = add i32 %62, 252
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = lshr i32 %2270, 24
  %2272 = uitofp i32 %2271 to float
  %2273 = fmul fast float %2272, 0x3F70101020000000
  %2274 = and i32 %2270, 255
  %2275 = uitofp i32 %2274 to float
  %2276 = fmul fast float %2275, 0x3F70101020000000
  %2277 = lshr i32 %2270, 8
  %2278 = and i32 %2277, 255
  %2279 = uitofp i32 %2278 to float
  %2280 = fmul fast float %2279, 0x3F70101020000000
  %2281 = lshr i32 %2270, 16
  %2282 = and i32 %2281, 255
  %2283 = uitofp i32 %2282 to float
  %2284 = fmul fast float %2283, 0x3F70101020000000
  %2285 = bitcast float %2209 to i32
  %2286 = ashr i32 %2285, 1
  %2287 = sub nsw i32 1597463174, %2286
  %2288 = bitcast i32 %2287 to float
  %2289 = fmul fast float %2209, 5.000000e-01
  %2290 = fmul fast float %2288, %2288
  %2291 = fmul fast float %2290, %2289
  %2292 = fsub fast float 1.500000e+00, %2291
  %2293 = fmul fast float %2288, %2209
  %2294 = fmul fast float %2293, %2292
  %2295 = bitcast float %2210 to i32
  %2296 = ashr i32 %2295, 1
  %2297 = sub nsw i32 1597463174, %2296
  %2298 = bitcast i32 %2297 to float
  %2299 = fmul fast float %2210, 5.000000e-01
  %2300 = fmul fast float %2298, %2298
  %2301 = fmul fast float %2300, %2299
  %2302 = fsub fast float 1.500000e+00, %2301
  %2303 = fmul fast float %2298, %2210
  %2304 = fmul fast float %2303, %2302
  %2305 = bitcast float %2211 to i32
  %2306 = ashr i32 %2305, 1
  %2307 = sub nsw i32 1597463174, %2306
  %2308 = bitcast i32 %2307 to float
  %2309 = fmul fast float %2211, 5.000000e-01
  %2310 = fmul fast float %2308, %2308
  %2311 = fmul fast float %2310, %2309
  %2312 = fsub fast float 1.500000e+00, %2311
  %2313 = fmul fast float %2308, %2211
  %2314 = fmul fast float %2313, %2312
  %2315 = fsub fast float %2294, %2276
  %2316 = fsub fast float %2304, %2280
  %2317 = fsub fast float %2314, %2284
  %2318 = fmul fast float %2315, %2244
  %2319 = fmul fast float %2316, %2246
  %2320 = fmul fast float %2317, %2251
  %2321 = fadd fast float %2318, %2259
  %2322 = fadd fast float %2319, %2263
  %2323 = fadd fast float %2320, %2267
  %2324 = call float @dx.op.unary.f32(i32 7, float %2321)  ; Saturate(value)
  %2325 = call float @dx.op.unary.f32(i32 7, float %2322)  ; Saturate(value)
  %2326 = call float @dx.op.unary.f32(i32 7, float %2323)  ; Saturate(value)
  %2327 = fmul fast float %2324, %2324
  %2328 = fmul fast float %2325, %2325
  %2329 = fmul fast float %2326, %2326
  %2330 = fsub fast float %2327, %2209
  %2331 = fsub fast float %2328, %2210
  %2332 = fsub fast float %2329, %2211
  %2333 = fmul fast float %2330, %2234
  %2334 = fmul fast float %2331, %2234
  %2335 = fmul fast float %2332, %2234
  %2336 = fadd fast float %2333, %2209
  %2337 = fadd fast float %2334, %2210
  %2338 = fadd fast float %2335, %2211
  %2339 = fadd fast float %2256, %2220
  %2340 = fsub fast float %2339, %2273
  %2341 = call float @dx.op.unary.f32(i32 7, float %2340)  ; Saturate(value)
  %2342 = fsub fast float %2341, %2220
  %2343 = fmul fast float %2342, %2234
  %2344 = fadd fast float %2343, %2220
  br label %2398

; <label>:2345                                    ; preds = %2233
  %2346 = and i32 %2236, 134217728
  %2347 = icmp eq i32 %2346, 0
  br i1 %2347, label %2382, label %2348

; <label>:2348                                    ; preds = %2345
  %2349 = call float @dx.op.unary.f32(i32 24, float %519)  ; Sqrt(value)
  %2350 = call float @dx.op.unary.f32(i32 24, float %520)  ; Sqrt(value)
  %2351 = call float @dx.op.unary.f32(i32 24, float %521)  ; Sqrt(value)
  %2352 = fadd fast float %2349, -5.000000e-01
  %2353 = fadd fast float %2350, -5.000000e-01
  %2354 = fadd fast float %2351, -5.000000e-01
  %2355 = fmul fast float %2352, %2234
  %2356 = fmul fast float %2353, %2234
  %2357 = fmul fast float %2354, %2234
  %2358 = fadd fast float %2355, 5.000000e-01
  %2359 = fadd fast float %2356, 5.000000e-01
  %2360 = fadd fast float %2357, 5.000000e-01
  %2361 = call float @dx.op.unary.f32(i32 24, float %2209)  ; Sqrt(value)
  %2362 = call float @dx.op.unary.f32(i32 24, float %2210)  ; Sqrt(value)
  %2363 = call float @dx.op.unary.f32(i32 24, float %2211)  ; Sqrt(value)
  %2364 = fmul fast float %2358, 2.000000e+00
  %2365 = fsub fast float 1.000000e+00, %2364
  %2366 = fmul fast float %2365, %2361
  %2367 = fadd fast float %2366, %2364
  %2368 = fmul fast float %2367, %2361
  %2369 = fmul fast float %2359, 2.000000e+00
  %2370 = fsub fast float 1.000000e+00, %2369
  %2371 = fmul fast float %2370, %2362
  %2372 = fadd fast float %2371, %2369
  %2373 = fmul fast float %2372, %2362
  %2374 = fmul fast float %2360, 2.000000e+00
  %2375 = fsub fast float 1.000000e+00, %2374
  %2376 = fmul fast float %2375, %2363
  %2377 = fadd fast float %2376, %2374
  %2378 = fmul fast float %2377, %2363
  %2379 = fmul fast float %2368, %2368
  %2380 = fmul fast float %2373, %2373
  %2381 = fmul fast float %2378, %2378
  br label %2398

; <label>:2382                                    ; preds = %2345
  %2383 = fmul fast float %519, %519
  %2384 = fmul fast float %520, %520
  %2385 = fmul fast float %521, %521
  %2386 = fadd fast float %2383, -1.000000e+00
  %2387 = fadd fast float %2384, -1.000000e+00
  %2388 = fadd fast float %2385, -1.000000e+00
  %2389 = fmul fast float %2234, %2386
  %2390 = fmul fast float %2234, %2387
  %2391 = fmul fast float %2234, %2388
  %2392 = fadd fast float %2389, 1.000000e+00
  %2393 = fadd fast float %2390, 1.000000e+00
  %2394 = fadd fast float %2391, 1.000000e+00
  %2395 = fmul fast float %2392, %2209
  %2396 = fmul fast float %2393, %2210
  %2397 = fmul fast float %2394, %2211
  br label %2398

; <label>:2398                                    ; preds = %2382, %2348, %2239, %2195
  %2399 = phi float [ %2344, %2239 ], [ %2220, %2348 ], [ %2220, %2382 ], [ 0x3FA23C0BE0000000, %2195 ]
  %2400 = phi float [ %2336, %2239 ], [ %2379, %2348 ], [ %2395, %2382 ], [ 1.000000e+00, %2195 ]
  %2401 = phi float [ %2337, %2239 ], [ %2380, %2348 ], [ %2396, %2382 ], [ 1.000000e+00, %2195 ]
  %2402 = phi float [ %2338, %2239 ], [ %2381, %2348 ], [ %2397, %2382 ], [ 1.000000e+00, %2195 ]
  %2403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2404 = extractvalue %dx.types.CBufRet.i32 %2403, 1
  %2405 = and i32 %2404, 1
  %2406 = icmp ne i32 %2405, 0
  %2407 = add i32 %62, 356
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = and i32 %2409, 32
  %2411 = icmp ne i32 %2410, 0
  %2412 = and i1 %2406, %2411
  %2413 = select i1 %2412, float 1.000000e+00, float %2400
  %2414 = select i1 %2412, float 0x3FD3333340000000, float %2401
  %2415 = select i1 %2412, float 0x3FD3333340000000, float %2402
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = and i32 %2417, 32
  %2419 = icmp eq i32 %2418, 0
  br i1 %2419, label %2492, label %2420

; <label>:2420                                    ; preds = %2398
  %2421 = add i32 %62, 124
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2421, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = add i32 %62, 400
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2424, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = add i32 %2426, 0
  %2428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2427, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2429 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2428, %dx.types.Handle %114, float %2120, float %2121, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2430 = extractvalue %dx.types.ResRet.f32 %2429, 0
  %2431 = extractvalue %dx.types.ResRet.f32 %2429, 1
  %2432 = extractvalue %dx.types.ResRet.f32 %2429, 2
  %2433 = extractvalue %dx.types.ResRet.f32 %2429, 3
  %2434 = and i32 %2423, 255
  %2435 = uitofp i32 %2434 to float
  %2436 = lshr i32 %2423, 8
  %2437 = and i32 %2436, 255
  %2438 = uitofp i32 %2437 to float
  %2439 = lshr i32 %2423, 16
  %2440 = and i32 %2439, 255
  %2441 = uitofp i32 %2440 to float
  %2442 = fmul fast float %2441, 0x3F70101000000000
  %2443 = fmul fast float %2430, %2435
  %2444 = fadd fast float %2443, %2438
  %2445 = fmul fast float %2444, 0x3F70101000000000
  %2446 = fadd fast float %2431, -5.000000e-01
  %2447 = fadd fast float %2433, -5.000000e-01
  %2448 = fmul fast float %2446, %2442
  %2449 = fmul fast float %2447, %2442
  %2450 = fadd fast float %2448, 5.000000e-01
  %2451 = fadd fast float %2449, 5.000000e-01
  %2452 = fmul fast float %2450, 2.000000e+00
  %2453 = fadd fast float %2452, -1.000000e+00
  %2454 = fmul fast float %2451, 2.000000e+00
  %2455 = fadd fast float %2454, -1.000000e+00
  %2456 = fadd fast float %2453, %2455
  %2457 = fmul fast float %2456, 5.000000e-01
  %2458 = fsub fast float %2453, %2455
  %2459 = fmul fast float %2458, 5.000000e-01
  %2460 = call float @dx.op.unary.f32(i32 6, float %2457)  ; FAbs(value)
  %2461 = fsub fast float 1.000000e+00, %2460
  %2462 = call float @dx.op.unary.f32(i32 6, float %2459)  ; FAbs(value)
  %2463 = fsub fast float %2461, %2462
  %2464 = call float @dx.op.dot3.f32(i32 55, float %2457, float %2459, float %2463, float %2457, float %2459, float %2463)  ; Dot3(ax,ay,az,bx,by,bz)
  %2465 = call float @dx.op.unary.f32(i32 25, float %2464)  ; Rsqrt(value)
  %2466 = fmul fast float %2457, %2465
  %2467 = fmul fast float %2459, %2465
  %2468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.i32 %2468, 0
  %2470 = and i32 %2469, 67108864
  %2471 = icmp eq i32 %2470, 0
  br i1 %2471, label %2488, label %2472

; <label>:2472                                    ; preds = %2420
  %2473 = add i32 %62, 312
  %2474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2473, i32 undef)  ; BufferLoad(srv,index,wot)
  %2475 = extractvalue %dx.types.ResRet.i32 %2474, 0
  %2476 = and i32 %2475, 65535
  %2477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2476)  ; LegacyF16ToF32(value)
  %2478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.i32 %2478, 0
  %2480 = and i32 %2479, 65535
  %2481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2480)  ; LegacyF16ToF32(value)
  %2482 = lshr i32 %2475, 16
  %2483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2482)  ; LegacyF16ToF32(value)
  %2484 = fsub fast float %2445, %2483
  %2485 = fmul fast float %2484, %2477
  %2486 = fadd fast float %2485, %2481
  %2487 = call float @dx.op.unary.f32(i32 7, float %2486)  ; Saturate(value)
  br label %2488

; <label>:2488                                    ; preds = %2472, %2420
  %2489 = phi float [ %2487, %2472 ], [ %2445, %2420 ]
  %2490 = call float @dx.op.dot2.f32(i32 54, float %2466, float %2467, float %2024, float %2025)  ; Dot2(ax,ay,bx,by)
  %2491 = call float @dx.op.dot2.f32(i32 54, float %2466, float %2467, float %2026, float %2027)  ; Dot2(ax,ay,bx,by)
  br label %2492

; <label>:2492                                    ; preds = %2488, %2398
  %2493 = phi float [ %2489, %2488 ], [ 0x3FD6666660000000, %2398 ]
  %2494 = phi float [ %2490, %2488 ], [ 0.000000e+00, %2398 ]
  %2495 = phi float [ %2491, %2488 ], [ 0.000000e+00, %2398 ]
  %2496 = phi float [ %2432, %2488 ], [ 1.000000e+00, %2398 ]
  %2497 = add i32 %62, 192
  %2498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2497, i32 undef)  ; BufferLoad(srv,index,wot)
  %2499 = extractvalue %dx.types.ResRet.i32 %2498, 0
  %2500 = lshr i32 %2499, 22
  %2501 = shl nuw nsw i32 %2500, 5
  %2502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2501)  ; LegacyF16ToF32(value)
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = and i32 %2504, 64
  %2506 = icmp eq i32 %2505, 0
  br i1 %2506, label %2540, label %2507

; <label>:2507                                    ; preds = %2492
  %2508 = add i32 %62, 416
  %2509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2508, i32 undef)  ; BufferLoad(srv,index,wot)
  %2510 = extractvalue %dx.types.ResRet.i32 %2509, 0
  %2511 = add i32 %2510, 0
  %2512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2511, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = and i32 %2514, 131072
  %2516 = icmp eq i32 %2515, 0
  %2517 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2512, %dx.types.Handle %114, float %2120, float %2121, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2518 = extractvalue %dx.types.ResRet.f32 %2517, 0
  %2519 = extractvalue %dx.types.ResRet.f32 %2517, 1
  %2520 = extractvalue %dx.types.ResRet.f32 %2517, 2
  %2521 = fmul fast float %502, %2518
  %2522 = fmul fast float %503, %2519
  %2523 = fmul fast float %504, %2520
  br i1 %2516, label %2530, label %2524

; <label>:2524                                    ; preds = %2507
  %2525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2526 = extractvalue %dx.types.CBufRet.f32 %2525, 0
  %2527 = fmul fast float %2526, %2521
  %2528 = fmul fast float %2526, %2522
  %2529 = fmul fast float %2526, %2523
  br label %2530

; <label>:2530                                    ; preds = %2524, %2507
  %2531 = phi float [ %2527, %2524 ], [ %2521, %2507 ]
  %2532 = phi float [ %2528, %2524 ], [ %2522, %2507 ]
  %2533 = phi float [ %2529, %2524 ], [ %2523, %2507 ]
  %2534 = fmul fast float %2531, %2502
  %2535 = select i1 %277, float %2534, float %2531
  %2536 = call float @dx.op.dot3.f32(i32 55, float %2535, float %2532, float %2533, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2537 = select i1 %277, float 0.000000e+00, float %2531
  %2538 = select i1 %277, float %2536, float %2532
  %2539 = select i1 %277, float 0.000000e+00, float %2533
  br label %2540

; <label>:2540                                    ; preds = %2530, %2492
  %2541 = phi float [ %2537, %2530 ], [ 0.000000e+00, %2492 ]
  %2542 = phi float [ %2538, %2530 ], [ 0.000000e+00, %2492 ]
  %2543 = phi float [ %2539, %2530 ], [ 0.000000e+00, %2492 ]
  %2544 = add i32 %62, 128
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = and i32 %2546, 255
  %2548 = uitofp i32 %2547 to float
  %2549 = lshr i32 %2546, 8
  %2550 = and i32 %2549, 255
  %2551 = uitofp i32 %2550 to float
  %2552 = call float @dx.op.dot3.f32(i32 55, float %2413, float %2414, float %2415, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2553 = fmul fast float %2551, %2552
  %2554 = fadd fast float %2553, %2548
  %2555 = fmul fast float %2554, 0x3F70101020000000
  %2556 = call float @dx.op.unary.f32(i32 7, float %2555)  ; Saturate(value)
  br i1 %2012, label %2557, label %2565

; <label>:2557                                    ; preds = %2540
  %2558 = fsub fast float 1.000000e+00, %2193
  %2559 = fmul fast float %2558, %2001
  %2560 = fmul fast float %2558, %2002
  %2561 = fmul fast float %2558, %2003
  %2562 = fmul fast float %2558, %2004
  %2563 = fmul fast float %2558, %2005
  %2564 = fmul fast float %2558, %2006
  br label %2565

; <label>:2565                                    ; preds = %2557, %2540
  %2566 = phi float [ %2559, %2557 ], [ %2001, %2540 ]
  %2567 = phi float [ %2560, %2557 ], [ %2002, %2540 ]
  %2568 = phi float [ %2561, %2557 ], [ %2003, %2540 ]
  %2569 = phi float [ %2562, %2557 ], [ %2004, %2540 ]
  %2570 = phi float [ %2563, %2557 ], [ %2005, %2540 ]
  %2571 = phi float [ %2564, %2557 ], [ %2006, %2540 ]
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = and i32 %2573, 3
  %2575 = icmp eq i32 %2574, 3
  br i1 %2575, label %2654, label %2576

; <label>:2576                                    ; preds = %2565
  %2577 = and i32 %2573, 16
  %2578 = icmp ne i32 %2577, 0
  %2579 = select i1 %2578, float %2193, float 0.000000e+00
  %2580 = icmp eq i32 %2574, 0
  br i1 %2580, label %2581, label %2609

; <label>:2581                                    ; preds = %2576
  %2582 = and i32 %2573, 64
  %2583 = icmp ne i32 %2582, 0
  %2584 = select i1 %2583, float %2193, float 0.000000e+00
  %2585 = fsub fast float %2413, %2566
  %2586 = fsub fast float %2414, %2567
  %2587 = fsub fast float %2415, %2568
  %2588 = fmul fast float %2579, %2585
  %2589 = fmul fast float %2579, %2586
  %2590 = fmul fast float %2579, %2587
  %2591 = fadd fast float %2588, %2566
  %2592 = fadd fast float %2589, %2567
  %2593 = fadd fast float %2590, %2568
  %2594 = fsub fast float %2399, %2007
  %2595 = fmul fast float %2579, %2594
  %2596 = fadd fast float %2595, %2007
  %2597 = fsub fast float %2541, %2569
  %2598 = fsub fast float %2542, %2570
  %2599 = fsub fast float %2543, %2571
  %2600 = fmul fast float %2584, %2597
  %2601 = fmul fast float %2584, %2598
  %2602 = fmul fast float %2584, %2599
  %2603 = fadd fast float %2600, %2569
  %2604 = fadd fast float %2601, %2570
  %2605 = fadd fast float %2602, %2571
  %2606 = fsub fast float %2556, %2010
  %2607 = fmul fast float %2579, %2606
  %2608 = fadd fast float %2607, %2010
  br label %2654

; <label>:2609                                    ; preds = %2576
  %2610 = icmp eq i32 %2574, 1
  br i1 %2610, label %2611, label %2624

; <label>:2611                                    ; preds = %2609
  %2612 = fadd fast float %2413, -1.000000e+00
  %2613 = fadd fast float %2414, -1.000000e+00
  %2614 = fadd fast float %2415, -1.000000e+00
  %2615 = fmul fast float %2579, %2612
  %2616 = fmul fast float %2579, %2613
  %2617 = fmul fast float %2579, %2614
  %2618 = fadd fast float %2615, 1.000000e+00
  %2619 = fadd fast float %2616, 1.000000e+00
  %2620 = fadd fast float %2617, 1.000000e+00
  %2621 = fmul fast float %2618, %2566
  %2622 = fmul fast float %2619, %2567
  %2623 = fmul fast float %2620, %2568
  br label %2654

; <label>:2624                                    ; preds = %2609
  %2625 = icmp eq i32 %2574, 2
  br i1 %2625, label %2626, label %2654

; <label>:2626                                    ; preds = %2624
  %2627 = call float @dx.op.unary.f32(i32 24, float %2413)  ; Sqrt(value)
  %2628 = call float @dx.op.unary.f32(i32 24, float %2414)  ; Sqrt(value)
  %2629 = call float @dx.op.unary.f32(i32 24, float %2415)  ; Sqrt(value)
  %2630 = fadd fast float %2627, -5.000000e-01
  %2631 = fadd fast float %2628, -5.000000e-01
  %2632 = fadd fast float %2629, -5.000000e-01
  %2633 = fmul fast float %2630, %2579
  %2634 = fmul fast float %2631, %2579
  %2635 = fmul fast float %2632, %2579
  %2636 = fadd fast float %2633, 5.000000e-01
  %2637 = fadd fast float %2634, 5.000000e-01
  %2638 = fadd fast float %2635, 5.000000e-01
  %2639 = fmul fast float %2636, 2.000000e+00
  %2640 = fsub fast float 1.000000e+00, %2639
  %2641 = fmul fast float %2640, %2566
  %2642 = fadd fast float %2641, %2639
  %2643 = fmul fast float %2642, %2566
  %2644 = fmul fast float %2637, 2.000000e+00
  %2645 = fsub fast float 1.000000e+00, %2644
  %2646 = fmul fast float %2645, %2567
  %2647 = fadd fast float %2646, %2644
  %2648 = fmul fast float %2647, %2567
  %2649 = fmul fast float %2638, 2.000000e+00
  %2650 = fsub fast float 1.000000e+00, %2649
  %2651 = fmul fast float %2650, %2568
  %2652 = fadd fast float %2651, %2649
  %2653 = fmul fast float %2652, %2568
  br label %2654

; <label>:2654                                    ; preds = %2626, %2624, %2611, %2581, %2565
  %2655 = phi float [ %2566, %2565 ], [ %2643, %2626 ], [ %2566, %2624 ], [ %2621, %2611 ], [ %2591, %2581 ]
  %2656 = phi float [ %2567, %2565 ], [ %2648, %2626 ], [ %2567, %2624 ], [ %2622, %2611 ], [ %2592, %2581 ]
  %2657 = phi float [ %2568, %2565 ], [ %2653, %2626 ], [ %2568, %2624 ], [ %2623, %2611 ], [ %2593, %2581 ]
  %2658 = phi float [ %2569, %2565 ], [ %2569, %2626 ], [ %2569, %2624 ], [ %2569, %2611 ], [ %2603, %2581 ]
  %2659 = phi float [ %2570, %2565 ], [ %2570, %2626 ], [ %2570, %2624 ], [ %2570, %2611 ], [ %2604, %2581 ]
  %2660 = phi float [ %2571, %2565 ], [ %2571, %2626 ], [ %2571, %2624 ], [ %2571, %2611 ], [ %2605, %2581 ]
  %2661 = phi float [ %2007, %2565 ], [ %2007, %2626 ], [ %2007, %2624 ], [ %2007, %2611 ], [ %2596, %2581 ]
  %2662 = phi float [ %2010, %2565 ], [ %2010, %2626 ], [ %2010, %2624 ], [ %2010, %2611 ], [ %2608, %2581 ]
  %2663 = and i32 %2573, 12
  %2664 = icmp eq i32 %2663, 12
  br i1 %2664, label %2737, label %2665

; <label>:2665                                    ; preds = %2654
  %2666 = and i32 %2573, 2097184
  %2667 = icmp eq i32 %2666, 2097184
  %2668 = select i1 %2667, float %2193, float 0.000000e+00
  %2669 = and i32 %2573, 4194336
  %2670 = icmp eq i32 %2669, 4194336
  %2671 = select i1 %2670, float %2193, float 0.000000e+00
  %2672 = and i32 %2573, 8388640
  %2673 = icmp eq i32 %2672, 8388640
  %2674 = select i1 %2673, float %2193, float 0.000000e+00
  %2675 = icmp eq i32 %2663, 0
  br i1 %2675, label %2676, label %2689

; <label>:2676                                    ; preds = %2665
  %2677 = fsub fast float %2494, %1999
  %2678 = fsub fast float %2495, %2000
  %2679 = fmul fast float %2668, %2677
  %2680 = fmul fast float %2668, %2678
  %2681 = fadd fast float %2679, %1999
  %2682 = fadd fast float %2680, %2000
  %2683 = fsub fast float %2496, %2009
  %2684 = fmul fast float %2671, %2683
  %2685 = fadd fast float %2684, %2009
  %2686 = fsub fast float %2493, %2008
  %2687 = fmul fast float %2674, %2686
  %2688 = fadd fast float %2687, %2008
  br label %2737

; <label>:2689                                    ; preds = %2665
  %2690 = icmp eq i32 %2663, 4
  br i1 %2690, label %2691, label %2723

; <label>:2691                                    ; preds = %2689
  %2692 = fmul fast float %2668, %2494
  %2693 = fmul fast float %2668, %2495
  %2694 = fadd fast float %2692, %1999
  %2695 = fadd fast float %2693, %2000
  %2696 = call float @dx.op.binary.f32(i32 36, float %2009, float %2496)  ; FMin(a,b)
  %2697 = fsub fast float %2696, %2009
  %2698 = fmul fast float %2697, %2671
  %2699 = fadd fast float %2698, %2009
  %2700 = fadd fast float %2493, %2008
  %2701 = fmul fast float %2700, 0x3FF337FAE0000000
  %2702 = fmul fast float %2008, %2008
  %2703 = fmul fast float %2493, %2493
  %2704 = fadd fast float %2703, %2702
  %2705 = fmul fast float %2704, 0x3FE5152B00000000
  %2706 = fmul fast float %2008, 0xBFCC1F85E0000000
  %2707 = fmul fast float %2706, %2493
  %2708 = fadd fast float %2707, 0xBFE1363700000000
  %2709 = fadd fast float %2708, %2701
  %2710 = fsub fast float %2709, %2705
  %2711 = fmul fast float %2700, 0x3FBA6F0D00000000
  %2712 = fmul fast float %2704, 0x3FD0432880000000
  %2713 = fmul fast float %2008, 0xBFEF110800000000
  %2714 = fmul fast float %2713, %2493
  %2715 = fadd fast float %2714, 1.000000e+00
  %2716 = fsub fast float %2715, %2711
  %2717 = fadd fast float %2716, %2712
  %2718 = fdiv fast float %2710, %2717
  %2719 = call float @dx.op.unary.f32(i32 7, float %2718)  ; Saturate(value)
  %2720 = fsub fast float %2719, %2008
  %2721 = fmul fast float %2720, %2674
  %2722 = fadd fast float %2721, %2008
  br label %2737

; <label>:2723                                    ; preds = %2689
  %2724 = icmp eq i32 %2663, 8
  br i1 %2724, label %2725, label %2737

; <label>:2725                                    ; preds = %2723
  %2726 = fmul fast float %2668, %2494
  %2727 = fmul fast float %2668, %2495
  %2728 = fadd fast float %2726, %1999
  %2729 = fadd fast float %2727, %2000
  %2730 = call float @dx.op.binary.f32(i32 36, float %2009, float %2496)  ; FMin(a,b)
  %2731 = fsub fast float %2730, %2009
  %2732 = fmul fast float %2731, %2671
  %2733 = fadd fast float %2732, %2009
  %2734 = fsub fast float %2493, %2008
  %2735 = fmul fast float %2674, %2734
  %2736 = fadd fast float %2735, %2008
  br label %2737

; <label>:2737                                    ; preds = %2725, %2723, %2691, %2676, %2654, %2192, %2011, %1998
  %2738 = phi float [ %1999, %2654 ], [ %1999, %2192 ], [ %1999, %1998 ], [ %2728, %2725 ], [ %1999, %2723 ], [ %2694, %2691 ], [ %2681, %2676 ], [ %1999, %2011 ]
  %2739 = phi float [ %2000, %2654 ], [ %2000, %2192 ], [ %2000, %1998 ], [ %2729, %2725 ], [ %2000, %2723 ], [ %2695, %2691 ], [ %2682, %2676 ], [ %2000, %2011 ]
  %2740 = phi float [ %2655, %2654 ], [ %2001, %2192 ], [ %2001, %1998 ], [ %2655, %2725 ], [ %2655, %2723 ], [ %2655, %2691 ], [ %2655, %2676 ], [ %2001, %2011 ]
  %2741 = phi float [ %2656, %2654 ], [ %2002, %2192 ], [ %2002, %1998 ], [ %2656, %2725 ], [ %2656, %2723 ], [ %2656, %2691 ], [ %2656, %2676 ], [ %2002, %2011 ]
  %2742 = phi float [ %2657, %2654 ], [ %2003, %2192 ], [ %2003, %1998 ], [ %2657, %2725 ], [ %2657, %2723 ], [ %2657, %2691 ], [ %2657, %2676 ], [ %2003, %2011 ]
  %2743 = phi float [ %2658, %2654 ], [ %2004, %2192 ], [ %2004, %1998 ], [ %2658, %2725 ], [ %2658, %2723 ], [ %2658, %2691 ], [ %2658, %2676 ], [ %2004, %2011 ]
  %2744 = phi float [ %2659, %2654 ], [ %2005, %2192 ], [ %2005, %1998 ], [ %2659, %2725 ], [ %2659, %2723 ], [ %2659, %2691 ], [ %2659, %2676 ], [ %2005, %2011 ]
  %2745 = phi float [ %2660, %2654 ], [ %2006, %2192 ], [ %2006, %1998 ], [ %2660, %2725 ], [ %2660, %2723 ], [ %2660, %2691 ], [ %2660, %2676 ], [ %2006, %2011 ]
  %2746 = phi float [ %2661, %2654 ], [ %2007, %2192 ], [ %2007, %1998 ], [ %2661, %2725 ], [ %2661, %2723 ], [ %2661, %2691 ], [ %2661, %2676 ], [ %2007, %2011 ]
  %2747 = phi float [ %2008, %2654 ], [ %2008, %2192 ], [ %2008, %1998 ], [ %2736, %2725 ], [ %2008, %2723 ], [ %2722, %2691 ], [ %2688, %2676 ], [ %2008, %2011 ]
  %2748 = phi float [ %2009, %2654 ], [ %2009, %2192 ], [ %2009, %1998 ], [ %2733, %2725 ], [ %2009, %2723 ], [ %2699, %2691 ], [ %2685, %2676 ], [ %2009, %2011 ]
  %2749 = phi float [ %2662, %2654 ], [ %2010, %2192 ], [ %2010, %1998 ], [ %2662, %2725 ], [ %2662, %2723 ], [ %2662, %2691 ], [ %2662, %2676 ], [ %2010, %2011 ]
  br i1 %661, label %3476, label %2750

; <label>:2750                                    ; preds = %2737
  %2751 = icmp ult i32 %715, 4
  %2752 = add i32 %62, 72
  %2753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2754 = extractvalue %dx.types.ResRet.i32 %2753, 0
  %2755 = add i32 %62, 76
  %2756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.i32 %2756, 0
  %2758 = or i32 %2757, %2754
  %2759 = icmp eq i32 %2758, 0
  br i1 %2759, label %3476, label %2760

; <label>:2760                                    ; preds = %2750
  %2761 = and i32 %2754, 262144
  %2762 = icmp ne i32 %2761, 0
  %2763 = select i1 %2762, float %69, float 1.000000e+00
  %2764 = select i1 %2762, float %70, float 0.000000e+00
  %2765 = select i1 %2762, float %71, float 0.000000e+00
  %2766 = select i1 %2762, float %72, float 1.000000e+00
  %2767 = select i1 %2762, float %73, float %96
  %2768 = select i1 %2762, float %74, float %97
  %2769 = add i32 %62, 332
  %2770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2771 = extractvalue %dx.types.ResRet.i32 %2770, 0
  %2772 = lshr i32 %2771, 16
  %2773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2772)  ; LegacyF16ToF32(value)
  %2774 = fmul fast float %2773, 0x3F50624DE0000000
  %2775 = add i32 %62, 136
  %2776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2777 = extractvalue %dx.types.ResRet.i32 %2776, 0
  %2778 = lshr i32 %2777, 16
  %2779 = and i32 %2778, 255
  %2780 = lshr i32 %2777, 24
  %2781 = add i32 %62, 340
  %2782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2781, i32 undef)  ; BufferLoad(srv,index,wot)
  %2783 = extractvalue %dx.types.ResRet.i32 %2782, 0
  %2784 = and i32 %2783, 65535
  %2785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2784)  ; LegacyF16ToF32(value)
  %2786 = lshr i32 %2783, 16
  %2787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2786)  ; LegacyF16ToF32(value)
  %2788 = add i32 %62, 80
  %2789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2788, i32 undef)  ; BufferLoad(srv,index,wot)
  %2790 = extractvalue %dx.types.ResRet.i32 %2789, 0
  %2791 = lshr i32 %2790, 22
  %2792 = shl nuw nsw i32 %2791, 5
  %2793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2792)  ; LegacyF16ToF32(value)
  %2794 = shl i32 %2790, 4
  %2795 = and i32 %2794, 32752
  %2796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2795)  ; LegacyF16ToF32(value)
  %2797 = lshr i32 %2790, 7
  %2798 = and i32 %2797, 32752
  %2799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2798)  ; LegacyF16ToF32(value)
  %2800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2801 = extractvalue %dx.types.CBufRet.f32 %2800, 3
  %2802 = fmul fast float %2801, 1.000000e+03
  %2803 = fmul fast float %2802, %650
  %2804 = call float @dx.op.unary.f32(i32 22, float %2803)  ; Frc(value)
  %2805 = fadd fast float %2804, %638
  %2806 = fmul fast float %2802, %652
  %2807 = call float @dx.op.unary.f32(i32 22, float %2806)  ; Frc(value)
  %2808 = fadd fast float %2807, %639
  %2809 = fmul fast float %2774, %2802
  %2810 = call float @dx.op.unary.f32(i32 22, float %2809)  ; Frc(value)
  %2811 = fmul fast float %2810, 0x401921FB60000000
  %2812 = fadd fast float %2811, %2793
  %2813 = call float @dx.op.unary.f32(i32 13, float %2812)  ; Sin(value)
  %2814 = call float @dx.op.unary.f32(i32 12, float %2812)  ; Cos(value)
  %2815 = fsub fast float -0.000000e+00, %2813
  %2816 = fadd fast float %2767, -5.000000e-01
  %2817 = fadd fast float %2768, -5.000000e-01
  %2818 = fmul fast float %2785, %2816
  %2819 = fmul fast float %2787, %2817
  %2820 = fadd fast float %2818, 5.000000e-01
  %2821 = fadd fast float %2819, 5.000000e-01
  %2822 = fmul fast float %2796, %2820
  %2823 = fmul fast float %2799, %2821
  %2824 = fmul fast float %2814, %2822
  %2825 = call float @dx.op.tertiary.f32(i32 46, float %2815, float %2823, float %2824)  ; FMad(a,b,c)
  %2826 = fmul fast float %2813, %2822
  %2827 = call float @dx.op.tertiary.f32(i32 46, float %2814, float %2823, float %2826)  ; FMad(a,b,c)
  %2828 = fadd fast float %2805, %2825
  %2829 = fadd fast float %2808, %2827
  %2830 = icmp ugt i32 %2779, 1
  %2831 = icmp ugt i32 %2777, 33554431
  %2832 = or i1 %2831, %2830
  br i1 %2832, label %2833, label %2858

; <label>:2833                                    ; preds = %2760
  %2834 = add i32 %62, 276
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = lshr i32 %2836, 16
  %2838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2837)  ; LegacyF16ToF32(value)
  %2839 = fmul fast float %2801, %2838
  %2840 = call float @dx.op.unary.f32(i32 22, float %2839)  ; Frc(value)
  %2841 = mul nuw nsw i32 %2779, %2780
  %2842 = uitofp i32 %2841 to float
  %2843 = fmul fast float %2840, %2842
  %2844 = call float @dx.op.unary.f32(i32 27, float %2843)  ; Round_ni(value)
  %2845 = fptoui float %2844 to i32
  %2846 = urem i32 %2845, %2779
  %2847 = udiv i32 %2845, %2780
  %2848 = call float @dx.op.unary.f32(i32 22, float %2828)  ; Frc(value)
  %2849 = call float @dx.op.unary.f32(i32 22, float %2829)  ; Frc(value)
  %2850 = uitofp i32 %2846 to float
  %2851 = uitofp i32 %2847 to float
  %2852 = fadd fast float %2848, %2850
  %2853 = fadd fast float %2849, %2851
  %2854 = uitofp i32 %2779 to float
  %2855 = uitofp i32 %2780 to float
  %2856 = fdiv fast float %2852, %2854
  %2857 = fdiv fast float %2853, %2855
  br label %2858

; <label>:2858                                    ; preds = %2833, %2760
  %2859 = phi float [ %2856, %2833 ], [ %2828, %2760 ]
  %2860 = phi float [ %2857, %2833 ], [ %2829, %2760 ]
  %2861 = and i32 %2754, 256
  %2862 = icmp eq i32 %2861, 0
  br i1 %2862, label %2909, label %2863

; <label>:2863                                    ; preds = %2858
  %2864 = add i32 %62, 452
  %2865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2866 = extractvalue %dx.types.ResRet.i32 %2865, 0
  %2867 = add i32 %2866, 0
  %2868 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2867, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2869 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2868, %dx.types.Handle %115, float %2859, float %2860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2870 = extractvalue %dx.types.ResRet.f32 %2869, 0
  %2871 = add i32 %62, 148
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = shl i32 %2873, 4
  %2875 = and i32 %2874, 32752
  %2876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2875)  ; LegacyF16ToF32(value)
  %2877 = lshr i32 %2873, 7
  %2878 = and i32 %2877, 32752
  %2879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2878)  ; LegacyF16ToF32(value)
  %2880 = fsub fast float 1.000000e+00, %710
  %2881 = call float @dx.op.binary.f32(i32 35, float %2880, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2882 = bitcast float %710 to i32
  %2883 = sitofp i32 %2882 to float
  %2884 = fadd fast float %2883, 0xC1CFBF8940000000
  %2885 = fmul fast float %2879, %2884
  %2886 = fadd fast float %2885, 0x41CFBF8940000000
  %2887 = fptosi float %2886 to i32
  %2888 = bitcast i32 %2887 to float
  %2889 = bitcast float %2881 to i32
  %2890 = sitofp i32 %2889 to float
  %2891 = fadd fast float %2890, 0xC1CFBF8940000000
  %2892 = fmul fast float %2891, %2879
  %2893 = fadd fast float %2892, 0x41CFBF8940000000
  %2894 = fptosi float %2893 to i32
  %2895 = bitcast i32 %2894 to float
  %2896 = fmul fast float %2888, %2876
  %2897 = fmul fast float %2895, %2876
  %2898 = fsub fast float %2881, %2896
  %2899 = fadd fast float %2897, %2881
  %2900 = call float @dx.op.unary.f32(i32 7, float %2898)  ; Saturate(value)
  %2901 = call float @dx.op.unary.f32(i32 7, float %2899)  ; Saturate(value)
  %2902 = fsub fast float %2870, %2900
  %2903 = fsub fast float %2901, %2900
  %2904 = bitcast float %2903 to i32
  %2905 = sub nsw i32 2129859010, %2904
  %2906 = bitcast i32 %2905 to float
  %2907 = fmul fast float %2906, %2902
  %2908 = call float @dx.op.unary.f32(i32 7, float %2907)  ; Saturate(value)
  br label %2909

; <label>:2909                                    ; preds = %2863, %2858
  %2910 = phi float [ %2908, %2863 ], [ %710, %2858 ]
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = and i32 %2912, 128
  %2914 = icmp eq i32 %2913, 0
  br i1 %2914, label %2931, label %2915

; <label>:2915                                    ; preds = %2909
  %2916 = add i32 %62, 436
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2916, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = add i32 %2918, 0
  %2920 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2919, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2921 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2920, %dx.types.Handle %115, float %2859, float %2860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2922 = extractvalue %dx.types.ResRet.f32 %2921, 0
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = and i32 %2924, 524288
  %2926 = icmp ne i32 %2925, 0
  %2927 = fcmp fast ogt float %2922, 0x3FE0101020000000
  %2928 = select i1 %2927, float 1.000000e+00, float 0.000000e+00
  %2929 = select i1 %2926, float %2928, float %2922
  %2930 = fmul fast float %2929, %2910
  br label %2931

; <label>:2931                                    ; preds = %2915, %2909
  %2932 = phi float [ %2930, %2915 ], [ %2910, %2909 ]
  %2933 = fcmp fast ult float %2932, 0x3F70101020000000
  br i1 %2933, label %3476, label %2934

; <label>:2934                                    ; preds = %2931
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = and i32 %2936, 16
  %2938 = icmp eq i32 %2937, 0
  br i1 %2938, label %3137, label %2939

; <label>:2939                                    ; preds = %2934
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = add i32 %62, 388
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2942, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = add i32 %2944, 0
  %2946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2945, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2947 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2946, %dx.types.Handle %114, float %2859, float %2860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2948 = extractvalue %dx.types.ResRet.f32 %2947, 0
  %2949 = extractvalue %dx.types.ResRet.f32 %2947, 1
  %2950 = extractvalue %dx.types.ResRet.f32 %2947, 2
  %2951 = extractvalue %dx.types.ResRet.f32 %2947, 3
  %2952 = and i32 %2941, 255
  %2953 = uitofp i32 %2952 to float
  %2954 = lshr i32 %2941, 8
  %2955 = and i32 %2954, 255
  %2956 = uitofp i32 %2955 to float
  %2957 = fmul fast float %2951, %2953
  %2958 = fadd fast float %2957, %2956
  %2959 = fmul fast float %2958, 0x3F70101000000000
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, 512
  %2963 = icmp eq i32 %2962, 0
  br i1 %2963, label %2972, label %2964

; <label>:2964                                    ; preds = %2939
  %2965 = add i32 %62, 472
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = add i32 %2967, 0
  %2969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2970 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2969, %dx.types.Handle %115, float %2859, float %2860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2971 = extractvalue %dx.types.ResRet.f32 %2970, 0
  br label %2972

; <label>:2972                                    ; preds = %2964, %2939
  %2973 = phi float [ %2971, %2964 ], [ 1.000000e+00, %2939 ]
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = and i32 %2975, 33554432
  %2977 = icmp eq i32 %2976, 0
  br i1 %2977, label %3084, label %2978

; <label>:2978                                    ; preds = %2972
  %2979 = add i32 %62, 272
  %2980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.i32 %2980, 0
  %2982 = and i32 %2981, 65535
  %2983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2982)  ; LegacyF16ToF32(value)
  %2984 = lshr i32 %2981, 16
  %2985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2984)  ; LegacyF16ToF32(value)
  %2986 = add i32 %62, 276
  %2987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.i32 %2987, 0
  %2989 = and i32 %2988, 65535
  %2990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2989)  ; LegacyF16ToF32(value)
  %2991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.i32 %2991, 0
  %2993 = lshr i32 %2992, 24
  %2994 = uitofp i32 %2993 to float
  %2995 = fmul fast float %2994, 0x3F70101020000000
  %2996 = and i32 %2992, 255
  %2997 = uitofp i32 %2996 to float
  %2998 = fmul fast float %2997, 0x3F70101020000000
  %2999 = lshr i32 %2992, 8
  %3000 = and i32 %2999, 255
  %3001 = uitofp i32 %3000 to float
  %3002 = fmul fast float %3001, 0x3F70101020000000
  %3003 = lshr i32 %2992, 16
  %3004 = and i32 %3003, 255
  %3005 = uitofp i32 %3004 to float
  %3006 = fmul fast float %3005, 0x3F70101020000000
  %3007 = add i32 %62, 268
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = lshr i32 %3009, 24
  %3011 = uitofp i32 %3010 to float
  %3012 = fmul fast float %3011, 0x3F70101020000000
  %3013 = and i32 %3009, 255
  %3014 = uitofp i32 %3013 to float
  %3015 = fmul fast float %3014, 0x3F70101020000000
  %3016 = lshr i32 %3009, 8
  %3017 = and i32 %3016, 255
  %3018 = uitofp i32 %3017 to float
  %3019 = fmul fast float %3018, 0x3F70101020000000
  %3020 = lshr i32 %3009, 16
  %3021 = and i32 %3020, 255
  %3022 = uitofp i32 %3021 to float
  %3023 = fmul fast float %3022, 0x3F70101020000000
  %3024 = bitcast float %2948 to i32
  %3025 = ashr i32 %3024, 1
  %3026 = sub nsw i32 1597463174, %3025
  %3027 = bitcast i32 %3026 to float
  %3028 = fmul fast float %2948, 5.000000e-01
  %3029 = fmul fast float %3027, %3027
  %3030 = fmul fast float %3029, %3028
  %3031 = fsub fast float 1.500000e+00, %3030
  %3032 = fmul fast float %3027, %2948
  %3033 = fmul fast float %3032, %3031
  %3034 = bitcast float %2949 to i32
  %3035 = ashr i32 %3034, 1
  %3036 = sub nsw i32 1597463174, %3035
  %3037 = bitcast i32 %3036 to float
  %3038 = fmul fast float %2949, 5.000000e-01
  %3039 = fmul fast float %3037, %3037
  %3040 = fmul fast float %3039, %3038
  %3041 = fsub fast float 1.500000e+00, %3040
  %3042 = fmul fast float %3037, %2949
  %3043 = fmul fast float %3042, %3041
  %3044 = bitcast float %2950 to i32
  %3045 = ashr i32 %3044, 1
  %3046 = sub nsw i32 1597463174, %3045
  %3047 = bitcast i32 %3046 to float
  %3048 = fmul fast float %2950, 5.000000e-01
  %3049 = fmul fast float %3047, %3047
  %3050 = fmul fast float %3049, %3048
  %3051 = fsub fast float 1.500000e+00, %3050
  %3052 = fmul fast float %3047, %2950
  %3053 = fmul fast float %3052, %3051
  %3054 = fsub fast float %3033, %3015
  %3055 = fsub fast float %3043, %3019
  %3056 = fsub fast float %3053, %3023
  %3057 = fmul fast float %3054, %2983
  %3058 = fmul fast float %3055, %2985
  %3059 = fmul fast float %3056, %2990
  %3060 = fadd fast float %3057, %2998
  %3061 = fadd fast float %3058, %3002
  %3062 = fadd fast float %3059, %3006
  %3063 = call float @dx.op.unary.f32(i32 7, float %3060)  ; Saturate(value)
  %3064 = call float @dx.op.unary.f32(i32 7, float %3061)  ; Saturate(value)
  %3065 = call float @dx.op.unary.f32(i32 7, float %3062)  ; Saturate(value)
  %3066 = fmul fast float %3063, %3063
  %3067 = fmul fast float %3064, %3064
  %3068 = fmul fast float %3065, %3065
  %3069 = fsub fast float %3066, %2948
  %3070 = fsub fast float %3067, %2949
  %3071 = fsub fast float %3068, %2950
  %3072 = fmul fast float %3069, %2973
  %3073 = fmul fast float %3070, %2973
  %3074 = fmul fast float %3071, %2973
  %3075 = fadd fast float %3072, %2948
  %3076 = fadd fast float %3073, %2949
  %3077 = fadd fast float %3074, %2950
  %3078 = fadd fast float %2995, %2959
  %3079 = fsub fast float %3078, %3012
  %3080 = call float @dx.op.unary.f32(i32 7, float %3079)  ; Saturate(value)
  %3081 = fsub fast float %3080, %2959
  %3082 = fmul fast float %3081, %2973
  %3083 = fadd fast float %3082, %2959
  br label %3137

; <label>:3084                                    ; preds = %2972
  %3085 = and i32 %2975, 134217728
  %3086 = icmp eq i32 %3085, 0
  br i1 %3086, label %3121, label %3087

; <label>:3087                                    ; preds = %3084
  %3088 = call float @dx.op.unary.f32(i32 24, float %626)  ; Sqrt(value)
  %3089 = call float @dx.op.unary.f32(i32 24, float %627)  ; Sqrt(value)
  %3090 = call float @dx.op.unary.f32(i32 24, float %628)  ; Sqrt(value)
  %3091 = fadd fast float %3088, -5.000000e-01
  %3092 = fadd fast float %3089, -5.000000e-01
  %3093 = fadd fast float %3090, -5.000000e-01
  %3094 = fmul fast float %3091, %2973
  %3095 = fmul fast float %3092, %2973
  %3096 = fmul fast float %3093, %2973
  %3097 = fadd fast float %3094, 5.000000e-01
  %3098 = fadd fast float %3095, 5.000000e-01
  %3099 = fadd fast float %3096, 5.000000e-01
  %3100 = call float @dx.op.unary.f32(i32 24, float %2948)  ; Sqrt(value)
  %3101 = call float @dx.op.unary.f32(i32 24, float %2949)  ; Sqrt(value)
  %3102 = call float @dx.op.unary.f32(i32 24, float %2950)  ; Sqrt(value)
  %3103 = fmul fast float %3097, 2.000000e+00
  %3104 = fsub fast float 1.000000e+00, %3103
  %3105 = fmul fast float %3104, %3100
  %3106 = fadd fast float %3105, %3103
  %3107 = fmul fast float %3106, %3100
  %3108 = fmul fast float %3098, 2.000000e+00
  %3109 = fsub fast float 1.000000e+00, %3108
  %3110 = fmul fast float %3109, %3101
  %3111 = fadd fast float %3110, %3108
  %3112 = fmul fast float %3111, %3101
  %3113 = fmul fast float %3099, 2.000000e+00
  %3114 = fsub fast float 1.000000e+00, %3113
  %3115 = fmul fast float %3114, %3102
  %3116 = fadd fast float %3115, %3113
  %3117 = fmul fast float %3116, %3102
  %3118 = fmul fast float %3107, %3107
  %3119 = fmul fast float %3112, %3112
  %3120 = fmul fast float %3117, %3117
  br label %3137

; <label>:3121                                    ; preds = %3084
  %3122 = fmul fast float %626, %626
  %3123 = fmul fast float %627, %627
  %3124 = fmul fast float %628, %628
  %3125 = fadd fast float %3122, -1.000000e+00
  %3126 = fadd fast float %3123, -1.000000e+00
  %3127 = fadd fast float %3124, -1.000000e+00
  %3128 = fmul fast float %2973, %3125
  %3129 = fmul fast float %2973, %3126
  %3130 = fmul fast float %2973, %3127
  %3131 = fadd fast float %3128, 1.000000e+00
  %3132 = fadd fast float %3129, 1.000000e+00
  %3133 = fadd fast float %3130, 1.000000e+00
  %3134 = fmul fast float %3131, %2948
  %3135 = fmul fast float %3132, %2949
  %3136 = fmul fast float %3133, %2950
  br label %3137

; <label>:3137                                    ; preds = %3121, %3087, %2978, %2934
  %3138 = phi float [ %3083, %2978 ], [ %2959, %3087 ], [ %2959, %3121 ], [ 0x3FA23C0BE0000000, %2934 ]
  %3139 = phi float [ %3075, %2978 ], [ %3118, %3087 ], [ %3134, %3121 ], [ 1.000000e+00, %2934 ]
  %3140 = phi float [ %3076, %2978 ], [ %3119, %3087 ], [ %3135, %3121 ], [ 1.000000e+00, %2934 ]
  %3141 = phi float [ %3077, %2978 ], [ %3120, %3087 ], [ %3136, %3121 ], [ 1.000000e+00, %2934 ]
  %3142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3143 = extractvalue %dx.types.CBufRet.i32 %3142, 1
  %3144 = and i32 %3143, 1
  %3145 = icmp ne i32 %3144, 0
  %3146 = add i32 %62, 356
  %3147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3146, i32 undef)  ; BufferLoad(srv,index,wot)
  %3148 = extractvalue %dx.types.ResRet.i32 %3147, 0
  %3149 = and i32 %3148, 32
  %3150 = icmp ne i32 %3149, 0
  %3151 = and i1 %3145, %3150
  %3152 = select i1 %3151, float 1.000000e+00, float %3139
  %3153 = select i1 %3151, float 0x3FD3333340000000, float %3140
  %3154 = select i1 %3151, float 0x3FD3333340000000, float %3141
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = and i32 %3156, 32
  %3158 = icmp eq i32 %3157, 0
  br i1 %3158, label %3231, label %3159

; <label>:3159                                    ; preds = %3137
  %3160 = add i32 %62, 140
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = add i32 %62, 404
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3163, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = add i32 %3165, 0
  %3167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3167, %dx.types.Handle %114, float %2859, float %2860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3169 = extractvalue %dx.types.ResRet.f32 %3168, 0
  %3170 = extractvalue %dx.types.ResRet.f32 %3168, 1
  %3171 = extractvalue %dx.types.ResRet.f32 %3168, 2
  %3172 = extractvalue %dx.types.ResRet.f32 %3168, 3
  %3173 = and i32 %3162, 255
  %3174 = uitofp i32 %3173 to float
  %3175 = lshr i32 %3162, 8
  %3176 = and i32 %3175, 255
  %3177 = uitofp i32 %3176 to float
  %3178 = lshr i32 %3162, 16
  %3179 = and i32 %3178, 255
  %3180 = uitofp i32 %3179 to float
  %3181 = fmul fast float %3180, 0x3F70101000000000
  %3182 = fmul fast float %3169, %3174
  %3183 = fadd fast float %3182, %3177
  %3184 = fmul fast float %3183, 0x3F70101000000000
  %3185 = fadd fast float %3170, -5.000000e-01
  %3186 = fadd fast float %3172, -5.000000e-01
  %3187 = fmul fast float %3185, %3181
  %3188 = fmul fast float %3186, %3181
  %3189 = fadd fast float %3187, 5.000000e-01
  %3190 = fadd fast float %3188, 5.000000e-01
  %3191 = fmul fast float %3189, 2.000000e+00
  %3192 = fadd fast float %3191, -1.000000e+00
  %3193 = fmul fast float %3190, 2.000000e+00
  %3194 = fadd fast float %3193, -1.000000e+00
  %3195 = fadd fast float %3192, %3194
  %3196 = fmul fast float %3195, 5.000000e-01
  %3197 = fsub fast float %3192, %3194
  %3198 = fmul fast float %3197, 5.000000e-01
  %3199 = call float @dx.op.unary.f32(i32 6, float %3196)  ; FAbs(value)
  %3200 = fsub fast float 1.000000e+00, %3199
  %3201 = call float @dx.op.unary.f32(i32 6, float %3198)  ; FAbs(value)
  %3202 = fsub fast float %3200, %3201
  %3203 = call float @dx.op.dot3.f32(i32 55, float %3196, float %3198, float %3202, float %3196, float %3198, float %3202)  ; Dot3(ax,ay,az,bx,by,bz)
  %3204 = call float @dx.op.unary.f32(i32 25, float %3203)  ; Rsqrt(value)
  %3205 = fmul fast float %3196, %3204
  %3206 = fmul fast float %3198, %3204
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = and i32 %3208, 67108864
  %3210 = icmp eq i32 %3209, 0
  br i1 %3210, label %3227, label %3211

; <label>:3211                                    ; preds = %3159
  %3212 = add i32 %62, 328
  %3213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.i32 %3213, 0
  %3215 = and i32 %3214, 65535
  %3216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3215)  ; LegacyF16ToF32(value)
  %3217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2769, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.i32 %3217, 0
  %3219 = and i32 %3218, 65535
  %3220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3219)  ; LegacyF16ToF32(value)
  %3221 = lshr i32 %3214, 16
  %3222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3221)  ; LegacyF16ToF32(value)
  %3223 = fsub fast float %3184, %3222
  %3224 = fmul fast float %3223, %3216
  %3225 = fadd fast float %3224, %3220
  %3226 = call float @dx.op.unary.f32(i32 7, float %3225)  ; Saturate(value)
  br label %3227

; <label>:3227                                    ; preds = %3211, %3159
  %3228 = phi float [ %3226, %3211 ], [ %3184, %3159 ]
  %3229 = call float @dx.op.dot2.f32(i32 54, float %3205, float %3206, float %2763, float %2764)  ; Dot2(ax,ay,bx,by)
  %3230 = call float @dx.op.dot2.f32(i32 54, float %3205, float %3206, float %2765, float %2766)  ; Dot2(ax,ay,bx,by)
  br label %3231

; <label>:3231                                    ; preds = %3227, %3137
  %3232 = phi float [ %3228, %3227 ], [ 0x3FD6666660000000, %3137 ]
  %3233 = phi float [ %3229, %3227 ], [ 0.000000e+00, %3137 ]
  %3234 = phi float [ %3230, %3227 ], [ 0.000000e+00, %3137 ]
  %3235 = phi float [ %3171, %3227 ], [ 1.000000e+00, %3137 ]
  %3236 = add i32 %62, 208
  %3237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3236, i32 undef)  ; BufferLoad(srv,index,wot)
  %3238 = extractvalue %dx.types.ResRet.i32 %3237, 0
  %3239 = lshr i32 %3238, 22
  %3240 = shl nuw nsw i32 %3239, 5
  %3241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3240)  ; LegacyF16ToF32(value)
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = and i32 %3243, 64
  %3245 = icmp eq i32 %3244, 0
  br i1 %3245, label %3279, label %3246

; <label>:3246                                    ; preds = %3231
  %3247 = add i32 %62, 420
  %3248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3247, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.i32 %3248, 0
  %3250 = add i32 %3249, 0
  %3251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3250, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3253 = extractvalue %dx.types.ResRet.i32 %3252, 0
  %3254 = and i32 %3253, 131072
  %3255 = icmp eq i32 %3254, 0
  %3256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3251, %dx.types.Handle %114, float %2859, float %2860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3257 = extractvalue %dx.types.ResRet.f32 %3256, 0
  %3258 = extractvalue %dx.types.ResRet.f32 %3256, 1
  %3259 = extractvalue %dx.types.ResRet.f32 %3256, 2
  %3260 = fmul fast float %609, %3257
  %3261 = fmul fast float %610, %3258
  %3262 = fmul fast float %611, %3259
  br i1 %3255, label %3269, label %3263

; <label>:3263                                    ; preds = %3246
  %3264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3265 = extractvalue %dx.types.CBufRet.f32 %3264, 0
  %3266 = fmul fast float %3265, %3260
  %3267 = fmul fast float %3265, %3261
  %3268 = fmul fast float %3265, %3262
  br label %3269

; <label>:3269                                    ; preds = %3263, %3246
  %3270 = phi float [ %3266, %3263 ], [ %3260, %3246 ]
  %3271 = phi float [ %3267, %3263 ], [ %3261, %3246 ]
  %3272 = phi float [ %3268, %3263 ], [ %3262, %3246 ]
  %3273 = fmul fast float %3270, %3241
  %3274 = select i1 %277, float %3273, float %3270
  %3275 = call float @dx.op.dot3.f32(i32 55, float %3274, float %3271, float %3272, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3276 = select i1 %277, float 0.000000e+00, float %3270
  %3277 = select i1 %277, float %3275, float %3271
  %3278 = select i1 %277, float 0.000000e+00, float %3272
  br label %3279

; <label>:3279                                    ; preds = %3269, %3231
  %3280 = phi float [ %3276, %3269 ], [ 0.000000e+00, %3231 ]
  %3281 = phi float [ %3277, %3269 ], [ 0.000000e+00, %3231 ]
  %3282 = phi float [ %3278, %3269 ], [ 0.000000e+00, %3231 ]
  %3283 = add i32 %62, 144
  %3284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3283, i32 undef)  ; BufferLoad(srv,index,wot)
  %3285 = extractvalue %dx.types.ResRet.i32 %3284, 0
  %3286 = and i32 %3285, 255
  %3287 = uitofp i32 %3286 to float
  %3288 = lshr i32 %3285, 8
  %3289 = and i32 %3288, 255
  %3290 = uitofp i32 %3289 to float
  %3291 = call float @dx.op.dot3.f32(i32 55, float %3152, float %3153, float %3154, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3292 = fmul fast float %3290, %3291
  %3293 = fadd fast float %3292, %3287
  %3294 = fmul fast float %3293, 0x3F70101020000000
  %3295 = call float @dx.op.unary.f32(i32 7, float %3294)  ; Saturate(value)
  br i1 %2751, label %3296, label %3304

; <label>:3296                                    ; preds = %3279
  %3297 = fsub fast float 1.000000e+00, %2932
  %3298 = fmul fast float %3297, %2740
  %3299 = fmul fast float %3297, %2741
  %3300 = fmul fast float %3297, %2742
  %3301 = fmul fast float %3297, %2743
  %3302 = fmul fast float %3297, %2744
  %3303 = fmul fast float %3297, %2745
  br label %3304

; <label>:3304                                    ; preds = %3296, %3279
  %3305 = phi float [ %3298, %3296 ], [ %2740, %3279 ]
  %3306 = phi float [ %3299, %3296 ], [ %2741, %3279 ]
  %3307 = phi float [ %3300, %3296 ], [ %2742, %3279 ]
  %3308 = phi float [ %3301, %3296 ], [ %2743, %3279 ]
  %3309 = phi float [ %3302, %3296 ], [ %2744, %3279 ]
  %3310 = phi float [ %3303, %3296 ], [ %2745, %3279 ]
  %3311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.i32 %3311, 0
  %3313 = and i32 %3312, 3
  %3314 = icmp eq i32 %3313, 3
  br i1 %3314, label %3393, label %3315

; <label>:3315                                    ; preds = %3304
  %3316 = and i32 %3312, 16
  %3317 = icmp ne i32 %3316, 0
  %3318 = select i1 %3317, float %2932, float 0.000000e+00
  %3319 = icmp eq i32 %3313, 0
  br i1 %3319, label %3320, label %3348

; <label>:3320                                    ; preds = %3315
  %3321 = and i32 %3312, 64
  %3322 = icmp ne i32 %3321, 0
  %3323 = select i1 %3322, float %2932, float 0.000000e+00
  %3324 = fsub fast float %3152, %3305
  %3325 = fsub fast float %3153, %3306
  %3326 = fsub fast float %3154, %3307
  %3327 = fmul fast float %3318, %3324
  %3328 = fmul fast float %3318, %3325
  %3329 = fmul fast float %3318, %3326
  %3330 = fadd fast float %3327, %3305
  %3331 = fadd fast float %3328, %3306
  %3332 = fadd fast float %3329, %3307
  %3333 = fsub fast float %3138, %2746
  %3334 = fmul fast float %3318, %3333
  %3335 = fadd fast float %3334, %2746
  %3336 = fsub fast float %3280, %3308
  %3337 = fsub fast float %3281, %3309
  %3338 = fsub fast float %3282, %3310
  %3339 = fmul fast float %3323, %3336
  %3340 = fmul fast float %3323, %3337
  %3341 = fmul fast float %3323, %3338
  %3342 = fadd fast float %3339, %3308
  %3343 = fadd fast float %3340, %3309
  %3344 = fadd fast float %3341, %3310
  %3345 = fsub fast float %3295, %2749
  %3346 = fmul fast float %3318, %3345
  %3347 = fadd fast float %3346, %2749
  br label %3393

; <label>:3348                                    ; preds = %3315
  %3349 = icmp eq i32 %3313, 1
  br i1 %3349, label %3350, label %3363

; <label>:3350                                    ; preds = %3348
  %3351 = fadd fast float %3152, -1.000000e+00
  %3352 = fadd fast float %3153, -1.000000e+00
  %3353 = fadd fast float %3154, -1.000000e+00
  %3354 = fmul fast float %3318, %3351
  %3355 = fmul fast float %3318, %3352
  %3356 = fmul fast float %3318, %3353
  %3357 = fadd fast float %3354, 1.000000e+00
  %3358 = fadd fast float %3355, 1.000000e+00
  %3359 = fadd fast float %3356, 1.000000e+00
  %3360 = fmul fast float %3357, %3305
  %3361 = fmul fast float %3358, %3306
  %3362 = fmul fast float %3359, %3307
  br label %3393

; <label>:3363                                    ; preds = %3348
  %3364 = icmp eq i32 %3313, 2
  br i1 %3364, label %3365, label %3393

; <label>:3365                                    ; preds = %3363
  %3366 = call float @dx.op.unary.f32(i32 24, float %3152)  ; Sqrt(value)
  %3367 = call float @dx.op.unary.f32(i32 24, float %3153)  ; Sqrt(value)
  %3368 = call float @dx.op.unary.f32(i32 24, float %3154)  ; Sqrt(value)
  %3369 = fadd fast float %3366, -5.000000e-01
  %3370 = fadd fast float %3367, -5.000000e-01
  %3371 = fadd fast float %3368, -5.000000e-01
  %3372 = fmul fast float %3369, %3318
  %3373 = fmul fast float %3370, %3318
  %3374 = fmul fast float %3371, %3318
  %3375 = fadd fast float %3372, 5.000000e-01
  %3376 = fadd fast float %3373, 5.000000e-01
  %3377 = fadd fast float %3374, 5.000000e-01
  %3378 = fmul fast float %3375, 2.000000e+00
  %3379 = fsub fast float 1.000000e+00, %3378
  %3380 = fmul fast float %3379, %3305
  %3381 = fadd fast float %3380, %3378
  %3382 = fmul fast float %3381, %3305
  %3383 = fmul fast float %3376, 2.000000e+00
  %3384 = fsub fast float 1.000000e+00, %3383
  %3385 = fmul fast float %3384, %3306
  %3386 = fadd fast float %3385, %3383
  %3387 = fmul fast float %3386, %3306
  %3388 = fmul fast float %3377, 2.000000e+00
  %3389 = fsub fast float 1.000000e+00, %3388
  %3390 = fmul fast float %3389, %3307
  %3391 = fadd fast float %3390, %3388
  %3392 = fmul fast float %3391, %3307
  br label %3393

; <label>:3393                                    ; preds = %3365, %3363, %3350, %3320, %3304
  %3394 = phi float [ %3305, %3304 ], [ %3382, %3365 ], [ %3305, %3363 ], [ %3360, %3350 ], [ %3330, %3320 ]
  %3395 = phi float [ %3306, %3304 ], [ %3387, %3365 ], [ %3306, %3363 ], [ %3361, %3350 ], [ %3331, %3320 ]
  %3396 = phi float [ %3307, %3304 ], [ %3392, %3365 ], [ %3307, %3363 ], [ %3362, %3350 ], [ %3332, %3320 ]
  %3397 = phi float [ %3308, %3304 ], [ %3308, %3365 ], [ %3308, %3363 ], [ %3308, %3350 ], [ %3342, %3320 ]
  %3398 = phi float [ %3309, %3304 ], [ %3309, %3365 ], [ %3309, %3363 ], [ %3309, %3350 ], [ %3343, %3320 ]
  %3399 = phi float [ %3310, %3304 ], [ %3310, %3365 ], [ %3310, %3363 ], [ %3310, %3350 ], [ %3344, %3320 ]
  %3400 = phi float [ %2746, %3304 ], [ %2746, %3365 ], [ %2746, %3363 ], [ %2746, %3350 ], [ %3335, %3320 ]
  %3401 = phi float [ %2749, %3304 ], [ %2749, %3365 ], [ %2749, %3363 ], [ %2749, %3350 ], [ %3347, %3320 ]
  %3402 = and i32 %3312, 12
  %3403 = icmp eq i32 %3402, 12
  br i1 %3403, label %3476, label %3404

; <label>:3404                                    ; preds = %3393
  %3405 = and i32 %3312, 2097184
  %3406 = icmp eq i32 %3405, 2097184
  %3407 = select i1 %3406, float %2932, float 0.000000e+00
  %3408 = and i32 %3312, 4194336
  %3409 = icmp eq i32 %3408, 4194336
  %3410 = select i1 %3409, float %2932, float 0.000000e+00
  %3411 = and i32 %3312, 8388640
  %3412 = icmp eq i32 %3411, 8388640
  %3413 = select i1 %3412, float %2932, float 0.000000e+00
  %3414 = icmp eq i32 %3402, 0
  br i1 %3414, label %3415, label %3428

; <label>:3415                                    ; preds = %3404
  %3416 = fsub fast float %3233, %2738
  %3417 = fsub fast float %3234, %2739
  %3418 = fmul fast float %3407, %3416
  %3419 = fmul fast float %3407, %3417
  %3420 = fadd fast float %3418, %2738
  %3421 = fadd fast float %3419, %2739
  %3422 = fsub fast float %3235, %2748
  %3423 = fmul fast float %3410, %3422
  %3424 = fadd fast float %3423, %2748
  %3425 = fsub fast float %3232, %2747
  %3426 = fmul fast float %3413, %3425
  %3427 = fadd fast float %3426, %2747
  br label %3476

; <label>:3428                                    ; preds = %3404
  %3429 = icmp eq i32 %3402, 4
  br i1 %3429, label %3430, label %3462

; <label>:3430                                    ; preds = %3428
  %3431 = fmul fast float %3407, %3233
  %3432 = fmul fast float %3407, %3234
  %3433 = fadd fast float %3431, %2738
  %3434 = fadd fast float %3432, %2739
  %3435 = call float @dx.op.binary.f32(i32 36, float %2748, float %3235)  ; FMin(a,b)
  %3436 = fsub fast float %3435, %2748
  %3437 = fmul fast float %3436, %3410
  %3438 = fadd fast float %3437, %2748
  %3439 = fadd fast float %3232, %2747
  %3440 = fmul fast float %3439, 0x3FF337FAE0000000
  %3441 = fmul fast float %2747, %2747
  %3442 = fmul fast float %3232, %3232
  %3443 = fadd fast float %3442, %3441
  %3444 = fmul fast float %3443, 0x3FE5152B00000000
  %3445 = fmul fast float %2747, 0xBFCC1F85E0000000
  %3446 = fmul fast float %3445, %3232
  %3447 = fadd fast float %3446, 0xBFE1363700000000
  %3448 = fadd fast float %3447, %3440
  %3449 = fsub fast float %3448, %3444
  %3450 = fmul fast float %3439, 0x3FBA6F0D00000000
  %3451 = fmul fast float %3443, 0x3FD0432880000000
  %3452 = fmul fast float %2747, 0xBFEF110800000000
  %3453 = fmul fast float %3452, %3232
  %3454 = fadd fast float %3453, 1.000000e+00
  %3455 = fsub fast float %3454, %3450
  %3456 = fadd fast float %3455, %3451
  %3457 = fdiv fast float %3449, %3456
  %3458 = call float @dx.op.unary.f32(i32 7, float %3457)  ; Saturate(value)
  %3459 = fsub fast float %3458, %2747
  %3460 = fmul fast float %3459, %3413
  %3461 = fadd fast float %3460, %2747
  br label %3476

; <label>:3462                                    ; preds = %3428
  %3463 = icmp eq i32 %3402, 8
  br i1 %3463, label %3464, label %3476

; <label>:3464                                    ; preds = %3462
  %3465 = fmul fast float %3407, %3233
  %3466 = fmul fast float %3407, %3234
  %3467 = fadd fast float %3465, %2738
  %3468 = fadd fast float %3466, %2739
  %3469 = call float @dx.op.binary.f32(i32 36, float %2748, float %3235)  ; FMin(a,b)
  %3470 = fsub fast float %3469, %2748
  %3471 = fmul fast float %3470, %3410
  %3472 = fadd fast float %3471, %2748
  %3473 = fsub fast float %3232, %2747
  %3474 = fmul fast float %3413, %3473
  %3475 = fadd fast float %3474, %2747
  br label %3476

; <label>:3476                                    ; preds = %3464, %3462, %3430, %3415, %3393, %2931, %2750, %2737
  %3477 = phi float [ %2738, %3393 ], [ %2738, %2931 ], [ %2738, %2737 ], [ %2738, %2750 ], [ %3420, %3415 ], [ %3433, %3430 ], [ %2738, %3462 ], [ %3467, %3464 ]
  %3478 = phi float [ %2739, %3393 ], [ %2739, %2931 ], [ %2739, %2737 ], [ %2739, %2750 ], [ %3421, %3415 ], [ %3434, %3430 ], [ %2739, %3462 ], [ %3468, %3464 ]
  %3479 = phi float [ %3394, %3393 ], [ %2740, %2931 ], [ %2740, %2737 ], [ %2740, %2750 ], [ %3394, %3415 ], [ %3394, %3430 ], [ %3394, %3462 ], [ %3394, %3464 ]
  %3480 = phi float [ %3395, %3393 ], [ %2741, %2931 ], [ %2741, %2737 ], [ %2741, %2750 ], [ %3395, %3415 ], [ %3395, %3430 ], [ %3395, %3462 ], [ %3395, %3464 ]
  %3481 = phi float [ %3396, %3393 ], [ %2742, %2931 ], [ %2742, %2737 ], [ %2742, %2750 ], [ %3396, %3415 ], [ %3396, %3430 ], [ %3396, %3462 ], [ %3396, %3464 ]
  %3482 = phi float [ %3397, %3393 ], [ %2743, %2931 ], [ %2743, %2737 ], [ %2743, %2750 ], [ %3397, %3415 ], [ %3397, %3430 ], [ %3397, %3462 ], [ %3397, %3464 ]
  %3483 = phi float [ %3398, %3393 ], [ %2744, %2931 ], [ %2744, %2737 ], [ %2744, %2750 ], [ %3398, %3415 ], [ %3398, %3430 ], [ %3398, %3462 ], [ %3398, %3464 ]
  %3484 = phi float [ %3399, %3393 ], [ %2745, %2931 ], [ %2745, %2737 ], [ %2745, %2750 ], [ %3399, %3415 ], [ %3399, %3430 ], [ %3399, %3462 ], [ %3399, %3464 ]
  %3485 = phi float [ %3400, %3393 ], [ %2746, %2931 ], [ %2746, %2737 ], [ %2746, %2750 ], [ %3400, %3415 ], [ %3400, %3430 ], [ %3400, %3462 ], [ %3400, %3464 ]
  %3486 = phi float [ %2747, %3393 ], [ %2747, %2931 ], [ %2747, %2737 ], [ %2747, %2750 ], [ %3427, %3415 ], [ %3461, %3430 ], [ %2747, %3462 ], [ %3475, %3464 ]
  %3487 = phi float [ %2748, %3393 ], [ %2748, %2931 ], [ %2748, %2737 ], [ %2748, %2750 ], [ %3424, %3415 ], [ %3438, %3430 ], [ %2748, %3462 ], [ %3472, %3464 ]
  %3488 = phi float [ %3401, %3393 ], [ %2749, %2931 ], [ %2749, %2737 ], [ %2749, %2750 ], [ %3401, %3415 ], [ %3401, %3430 ], [ %3401, %3462 ], [ %3401, %3464 ]
  %3489 = add i32 %62, 360
  %3490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3489, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.i32 %3490, 0
  %3492 = extractvalue %dx.types.ResRet.i32 %3490, 1
  %3493 = bitcast i32 %3491 to float
  %3494 = bitcast i32 %3492 to float
  %3495 = fcmp fast oge float %3493, 0.000000e+00
  %3496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3497 = extractvalue %dx.types.CBufRet.f32 %3496, 0
  %3498 = select i1 %3495, float %3493, float %3497
  %3499 = fadd fast float %3498, %219
  %3500 = fmul fast float %3494, %220
  %3501 = add i32 %62, 456
  %3502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.i32 %3502, 0
  %3504 = add i32 %3503, 0
  %3505 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3504, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3506 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3505, %dx.types.Handle %115, float %96, float %97, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3507 = extractvalue %dx.types.ResRet.f32 %3506, 0
  %3508 = fmul fast float %3500, %3507
  %3509 = fadd fast float %3499, %3508
  %3510 = and i32 %211, 65535
  %3511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3510)  ; LegacyF16ToF32(value)
  %3512 = lshr i32 %211, 16
  %3513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3512)  ; LegacyF16ToF32(value)
  %3514 = and i32 %212, 65535
  %3515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3514)  ; LegacyF16ToF32(value)
  %3516 = fmul fast float %3511, %3479
  %3517 = fmul fast float %3513, %3480
  %3518 = fmul fast float %3515, %3481
  %3519 = shl i32 %213, 4
  %3520 = and i32 %3519, 32752
  %3521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3520)  ; LegacyF16ToF32(value)
  %3522 = lshr i32 %213, 7
  %3523 = and i32 %3522, 32752
  %3524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3523)  ; LegacyF16ToF32(value)
  %3525 = lshr i32 %213, 22
  %3526 = shl nuw nsw i32 %3525, 5
  %3527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3526)  ; LegacyF16ToF32(value)
  %3528 = and i32 %214, 65535
  %3529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3528)  ; LegacyF16ToF32(value)
  %3530 = fmul fast float %3521, %3482
  %3531 = fmul fast float %3530, %3529
  %3532 = fmul fast float %3524, %3483
  %3533 = fmul fast float %3532, %3529
  %3534 = fmul fast float %3527, %3484
  %3535 = fmul fast float %3534, %3529
  %3536 = call float @dx.op.dot2.f32(i32 54, float %3477, float %3478, float %3477, float %3478)  ; Dot2(ax,ay,bx,by)
  %3537 = fmul fast float %3536, 0x3FE3333340000000
  %3538 = fsub fast float 1.000000e+00, %3537
  %3539 = call float @dx.op.dot3.f32(i32 55, float %3477, float %3478, float %3538, float %3477, float %3478, float %3538)  ; Dot3(ax,ay,az,bx,by,bz)
  %3540 = call float @dx.op.unary.f32(i32 25, float %3539)  ; Rsqrt(value)
  %3541 = fmul fast float %3540, %3477
  %3542 = fmul fast float %3540, %3478
  %3543 = fmul fast float %3538, %3540
  %3544 = fmul fast float %3543, %125
  %3545 = fmul fast float %3543, %126
  %3546 = fmul fast float %3543, %127
  %3547 = fmul fast float %3541, %89
  %3548 = fmul fast float %3541, %90
  %3549 = fmul fast float %3541, %91
  %3550 = fadd fast float %3544, %3547
  %3551 = fadd fast float %3545, %3548
  %3552 = fadd fast float %3546, %3549
  %3553 = fmul fast float %137, %3542
  %3554 = fmul fast float %138, %3542
  %3555 = fmul fast float %139, %3542
  %3556 = fadd fast float %3550, %3553
  %3557 = fadd fast float %3551, %3554
  %3558 = fadd fast float %3552, %3555
  %3559 = call float @dx.op.dot3.f32(i32 55, float %3556, float %3557, float %3558, float %3556, float %3557, float %3558)  ; Dot3(ax,ay,az,bx,by,bz)
  %3560 = call float @dx.op.unary.f32(i32 25, float %3559)  ; Rsqrt(value)
  %3561 = fmul fast float %3556, %3560
  %3562 = fmul fast float %3557, %3560
  %3563 = fmul fast float %3558, %3560
  %3564 = icmp ne i32 %65, 65535
  %3565 = add i32 %62, 496
  %3566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3567 = extractvalue %dx.types.ResRet.i32 %3566, 0
  %3568 = add i32 %3567, 0
  %3569 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3568, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3570 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3569, %dx.types.Handle %53, float %96, float %97, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3571 = extractvalue %dx.types.ResRet.f32 %3570, 0
  %3572 = fcmp fast ogt float %3571, 0.000000e+00
  %3573 = and i1 %3564, %3572
  br i1 %3573, label %3574, label %4092

; <label>:3574                                    ; preds = %3476
  %3575 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %3576 = call float @dx.op.unary.f32(i32 83, float %67)  ; DerivCoarseX(value)
  %3577 = call float @dx.op.unary.f32(i32 83, float %68)  ; DerivCoarseX(value)
  %3578 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %3579 = call float @dx.op.unary.f32(i32 84, float %67)  ; DerivCoarseY(value)
  %3580 = call float @dx.op.unary.f32(i32 84, float %68)  ; DerivCoarseY(value)
  %3581 = fadd fast float %3575, %66
  %3582 = fadd fast float %3576, %67
  %3583 = fadd fast float %3577, %68
  %3584 = fadd fast float %3578, %66
  %3585 = fadd fast float %3579, %67
  %3586 = fadd fast float %3580, %68
  %3587 = mul i32 %65, 48
  %3588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3587, i32 undef)  ; BufferLoad(srv,index,wot)
  %3589 = extractvalue %dx.types.ResRet.f32 %3588, 0
  %3590 = extractvalue %dx.types.ResRet.f32 %3588, 1
  %3591 = extractvalue %dx.types.ResRet.f32 %3588, 2
  %3592 = add i32 %3587, 16
  %3593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.f32 %3593, 0
  %3595 = extractvalue %dx.types.ResRet.f32 %3593, 1
  %3596 = extractvalue %dx.types.ResRet.f32 %3593, 2
  %3597 = add i32 %3587, 32
  %3598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.f32 %3598, 0
  %3600 = extractvalue %dx.types.ResRet.f32 %3598, 1
  %3601 = extractvalue %dx.types.ResRet.f32 %3598, 2
  %3602 = extractvalue %dx.types.ResRet.f32 %3598, 3
  %3603 = bitcast float %3602 to i32
  %3604 = fmul fast float %3589, %66
  %3605 = fmul fast float %3590, %67
  %3606 = fmul fast float %3591, %68
  %3607 = fsub fast float %3604, %3594
  %3608 = fsub fast float %3605, %3595
  %3609 = fsub fast float %3606, %3596
  %3610 = call float @dx.op.unary.f32(i32 7, float %3607)  ; Saturate(value)
  %3611 = call float @dx.op.unary.f32(i32 7, float %3608)  ; Saturate(value)
  %3612 = call float @dx.op.unary.f32(i32 7, float %3609)  ; Saturate(value)
  %3613 = fmul fast float %3610, %3599
  %3614 = fmul fast float %3611, %3600
  %3615 = fmul fast float %3612, %3601
  %3616 = fadd fast float %3599, -1.000000e+00
  %3617 = fadd fast float %3600, -1.000000e+00
  %3618 = fadd fast float %3601, -1.000000e+00
  %3619 = call float @dx.op.unary.f32(i32 27, float %3613)  ; Round_ni(value)
  %3620 = call float @dx.op.unary.f32(i32 27, float %3614)  ; Round_ni(value)
  %3621 = call float @dx.op.unary.f32(i32 27, float %3615)  ; Round_ni(value)
  %3622 = call float @dx.op.binary.f32(i32 36, float %3619, float %3616)  ; FMin(a,b)
  %3623 = call float @dx.op.binary.f32(i32 36, float %3620, float %3617)  ; FMin(a,b)
  %3624 = call float @dx.op.binary.f32(i32 36, float %3621, float %3618)  ; FMin(a,b)
  %3625 = fmul fast float %3624, %3600
  %3626 = fadd fast float %3625, %3623
  %3627 = fmul fast float %3626, %3599
  %3628 = fadd fast float %3627, %3622
  %3629 = fptosi float %3628 to i32
  %3630 = add nsw i32 %3629, %3603
  %3631 = shl nsw i32 %3630, 2
  %3632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.i32 %3632, 0
  %3634 = lshr i32 %3633, 16
  %3635 = icmp eq i32 %3634, 0
  br i1 %3635, label %4060, label %3636

; <label>:3636                                    ; preds = %3574
  br label %3637

; <label>:3637                                    ; preds = %3759, %3636
  %3638 = phi i32 [ %3661, %3759 ], [ %3634, %3636 ]
  %3639 = phi float [ %3760, %3759 ], [ 0.000000e+00, %3636 ]
  %3640 = phi float [ %3761, %3759 ], [ %1268, %3636 ]
  %3641 = phi float [ %3762, %3759 ], [ %3509, %3636 ]
  %3642 = phi float [ %3763, %3759 ], [ %3488, %3636 ]
  %3643 = phi float [ %3764, %3759 ], [ 0.000000e+00, %3636 ]
  %3644 = phi float [ %3765, %3759 ], [ 0.000000e+00, %3636 ]
  %3645 = phi float [ %3766, %3759 ], [ %3531, %3636 ]
  %3646 = phi float [ %3767, %3759 ], [ %3533, %3636 ]
  %3647 = phi float [ %3768, %3759 ], [ %3535, %3636 ]
  %3648 = phi float [ %3769, %3759 ], [ %3561, %3636 ]
  %3649 = phi float [ %3770, %3759 ], [ %3562, %3636 ]
  %3650 = phi float [ %3771, %3759 ], [ %3563, %3636 ]
  %3651 = phi float [ %3772, %3759 ], [ %3487, %3636 ]
  %3652 = phi float [ %3773, %3759 ], [ %3486, %3636 ]
  %3653 = phi float [ %3774, %3759 ], [ 0.000000e+00, %3636 ]
  %3654 = phi float [ %3775, %3759 ], [ %3485, %3636 ]
  %3655 = phi float [ %3776, %3759 ], [ %3516, %3636 ]
  %3656 = phi float [ %3777, %3759 ], [ %3517, %3636 ]
  %3657 = phi float [ %3778, %3759 ], [ %3518, %3636 ]
  %3658 = shl nuw nsw i32 %3638, 2
  %3659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3658, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.i32 %3659, 0
  %3661 = lshr i32 %3660, 16
  %3662 = shl i32 %3660, 8
  %3663 = and i32 %3662, 16776960
  %3664 = or i32 %3663, 48
  %3665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3664, i32 undef)  ; BufferLoad(srv,index,wot)
  %3666 = extractvalue %dx.types.ResRet.f32 %3665, 0
  %3667 = extractvalue %dx.types.ResRet.f32 %3665, 1
  %3668 = extractvalue %dx.types.ResRet.f32 %3665, 2
  %3669 = or i32 %3663, 64
  %3670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3669, i32 undef)  ; BufferLoad(srv,index,wot)
  %3671 = extractvalue %dx.types.ResRet.i32 %3670, 0
  %3672 = extractvalue %dx.types.ResRet.i32 %3670, 1
  %3673 = or i32 %3663, 80
  %3674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3673, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.f32 %3674, 2
  %3676 = extractvalue %dx.types.ResRet.f32 %3674, 3
  %3677 = or i32 %3663, 96
  %3678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3677, i32 undef)  ; BufferLoad(srv,index,wot)
  %3679 = extractvalue %dx.types.ResRet.f32 %3678, 0
  %3680 = extractvalue %dx.types.ResRet.f32 %3678, 1
  %3681 = extractvalue %dx.types.ResRet.f32 %3678, 2
  %3682 = extractvalue %dx.types.ResRet.f32 %3678, 3
  %3683 = or i32 %3663, 112
  %3684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3683, i32 undef)  ; BufferLoad(srv,index,wot)
  %3685 = extractvalue %dx.types.ResRet.f32 %3684, 2
  %3686 = or i32 %3663, 128
  %3687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3686, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.f32 %3687, 0
  %3689 = extractvalue %dx.types.ResRet.f32 %3687, 1
  %3690 = extractvalue %dx.types.ResRet.f32 %3687, 2
  %3691 = extractvalue %dx.types.ResRet.f32 %3687, 3
  %3692 = or i32 %3663, 144
  %3693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3694 = extractvalue %dx.types.ResRet.f32 %3693, 0
  %3695 = extractvalue %dx.types.ResRet.f32 %3693, 1
  %3696 = extractvalue %dx.types.ResRet.f32 %3693, 2
  %3697 = extractvalue %dx.types.ResRet.f32 %3693, 3
  %3698 = or i32 %3663, 160
  %3699 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3698, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.f32 %3699, 0
  %3701 = extractvalue %dx.types.ResRet.f32 %3699, 1
  %3702 = extractvalue %dx.types.ResRet.f32 %3699, 2
  %3703 = extractvalue %dx.types.ResRet.f32 %3699, 3
  %3704 = or i32 %3663, 192
  %3705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.i32 %3705, 0
  %3707 = or i32 %3663, 208
  %3708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3707, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.f32 %3708, 0
  %3710 = or i32 %3663, 248
  %3711 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3710, i32 undef)  ; BufferLoad(srv,index,wot)
  %3712 = extractvalue %dx.types.ResRet.f32 %3711, 0
  %3713 = extractvalue %dx.types.ResRet.f32 %3711, 1
  %3714 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3663, i32 undef)  ; BufferLoad(srv,index,wot)
  %3715 = extractvalue %dx.types.ResRet.f32 %3714, 0
  %3716 = extractvalue %dx.types.ResRet.f32 %3714, 1
  %3717 = extractvalue %dx.types.ResRet.f32 %3714, 2
  %3718 = extractvalue %dx.types.ResRet.f32 %3714, 3
  %3719 = call float @dx.op.dot4.f32(i32 56, float %3715, float %3716, float %3717, float %3718, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3720 = or i32 %3663, 16
  %3721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3720, i32 undef)  ; BufferLoad(srv,index,wot)
  %3722 = extractvalue %dx.types.ResRet.f32 %3721, 0
  %3723 = extractvalue %dx.types.ResRet.f32 %3721, 1
  %3724 = extractvalue %dx.types.ResRet.f32 %3721, 2
  %3725 = extractvalue %dx.types.ResRet.f32 %3721, 3
  %3726 = call float @dx.op.dot4.f32(i32 56, float %3722, float %3723, float %3724, float %3725, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3727 = or i32 %3663, 32
  %3728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.f32 %3728, 0
  %3730 = extractvalue %dx.types.ResRet.f32 %3728, 1
  %3731 = extractvalue %dx.types.ResRet.f32 %3728, 2
  %3732 = extractvalue %dx.types.ResRet.f32 %3728, 3
  %3733 = call float @dx.op.dot4.f32(i32 56, float %3729, float %3730, float %3731, float %3732, float %66, float %67, float %68, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3734 = call float @dx.op.unary.f32(i32 27, float %3719)  ; Round_ni(value)
  %3735 = call float @dx.op.unary.f32(i32 6, float %3734)  ; FAbs(value)
  %3736 = call float @dx.op.unary.f32(i32 27, float %3726)  ; Round_ni(value)
  %3737 = call float @dx.op.unary.f32(i32 6, float %3736)  ; FAbs(value)
  %3738 = call float @dx.op.unary.f32(i32 6, float %3733)  ; FAbs(value)
  %3739 = call float @dx.op.unary.f32(i32 27, float %3738)  ; Round_ni(value)
  %3740 = fadd fast float %3737, %3735
  %3741 = fadd fast float %3740, %3739
  %3742 = fcmp fast oeq float %3741, 0.000000e+00
  %3743 = call float @dx.op.dot4.f32(i32 56, float %3715, float %3716, float %3717, float %3718, float %3581, float %3582, float %3583, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3744 = call float @dx.op.dot4.f32(i32 56, float %3722, float %3723, float %3724, float %3725, float %3581, float %3582, float %3583, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3745 = call float @dx.op.dot4.f32(i32 56, float %3715, float %3716, float %3717, float %3718, float %3584, float %3585, float %3586, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3746 = call float @dx.op.dot4.f32(i32 56, float %3722, float %3723, float %3724, float %3725, float %3584, float %3585, float %3586, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3747 = fsub fast float %3743, %3719
  %3748 = fsub fast float %3745, %3719
  %3749 = fsub fast float %3744, %3726
  %3750 = fsub fast float %3746, %3726
  %3751 = call float @dx.op.dot3.f32(i32 55, float %3666, float %3667, float %3668, float %125, float %126, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %3752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3753 = extractvalue %dx.types.CBufRet.f32 %3752, 2
  %3754 = fadd fast float %3753, %3751
  %3755 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3756 = extractvalue %dx.types.CBufRet.f32 %3752, 0
  %3757 = fcmp fast ogt float %3755, %3756
  %3758 = and i1 %3742, %3757
  br i1 %3758, label %3780, label %3759

; <label>:3759                                    ; preds = %4046, %3863, %3780, %3637
  %3760 = phi float [ %3639, %3780 ], [ %3866, %3863 ], [ %3866, %4046 ], [ %3639, %3637 ]
  %3761 = phi float [ %3640, %3780 ], [ %3640, %3863 ], [ %4021, %4046 ], [ %3640, %3637 ]
  %3762 = phi float [ %3641, %3780 ], [ %3641, %3863 ], [ %4020, %4046 ], [ %3641, %3637 ]
  %3763 = phi float [ %3642, %3780 ], [ %3642, %3863 ], [ %4018, %4046 ], [ %3642, %3637 ]
  %3764 = phi float [ %3643, %3780 ], [ %3643, %3863 ], [ %3990, %4046 ], [ %3643, %3637 ]
  %3765 = phi float [ %3644, %3780 ], [ %3644, %3863 ], [ %3988, %4046 ], [ %3644, %3637 ]
  %3766 = phi float [ %3645, %3780 ], [ %3645, %3863 ], [ %4056, %4046 ], [ %3645, %3637 ]
  %3767 = phi float [ %3646, %3780 ], [ %3646, %3863 ], [ %4057, %4046 ], [ %3646, %3637 ]
  %3768 = phi float [ %3647, %3780 ], [ %3647, %3863 ], [ %4058, %4046 ], [ %3647, %3637 ]
  %3769 = phi float [ %3648, %3780 ], [ %3648, %3863 ], [ %3969, %4046 ], [ %3648, %3637 ]
  %3770 = phi float [ %3649, %3780 ], [ %3649, %3863 ], [ %3970, %4046 ], [ %3649, %3637 ]
  %3771 = phi float [ %3650, %3780 ], [ %3650, %3863 ], [ %3971, %4046 ], [ %3650, %3637 ]
  %3772 = phi float [ %3651, %3780 ], [ %3651, %3863 ], [ %3998, %4046 ], [ %3651, %3637 ]
  %3773 = phi float [ %3652, %3780 ], [ %3652, %3863 ], [ %3995, %4046 ], [ %3652, %3637 ]
  %3774 = phi float [ %3653, %3780 ], [ %3653, %3863 ], [ %3992, %4046 ], [ %3653, %3637 ]
  %3775 = phi float [ %3654, %3780 ], [ %3654, %3863 ], [ %3986, %4046 ], [ %3654, %3637 ]
  %3776 = phi float [ %3655, %3780 ], [ %3655, %3863 ], [ %3981, %4046 ], [ %3655, %3637 ]
  %3777 = phi float [ %3656, %3780 ], [ %3656, %3863 ], [ %3982, %4046 ], [ %3656, %3637 ]
  %3778 = phi float [ %3657, %3780 ], [ %3657, %3863 ], [ %3983, %4046 ], [ %3657, %3637 ]
  %3779 = icmp eq i32 %3661, 0
  br i1 %3779, label %4059, label %3637

; <label>:3780                                    ; preds = %3637
  %3781 = extractvalue %dx.types.ResRet.f32 %3665, 3
  %3782 = extractvalue %dx.types.ResRet.f32 %3684, 3
  %3783 = extractvalue %dx.types.ResRet.f32 %3684, 1
  %3784 = extractvalue %dx.types.ResRet.f32 %3684, 0
  %3785 = extractvalue %dx.types.ResRet.f32 %3674, 1
  %3786 = extractvalue %dx.types.ResRet.f32 %3674, 0
  %3787 = extractvalue %dx.types.ResRet.i32 %3670, 3
  %3788 = extractvalue %dx.types.ResRet.i32 %3670, 2
  %3789 = bitcast float %3781 to i32
  %3790 = add i32 %3787, 0
  %3791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3790, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3793 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3791, %dx.types.Handle %3792, float %3719, float %3726, float undef, float undef, i32 0, i32 0, i32 undef, float %3747, float %3749, float undef, float %3748, float %3750, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3794 = extractvalue %dx.types.ResRet.f32 %3793, 0
  %3795 = fmul fast float %3794, %3786
  %3796 = fadd fast float %3795, %3785
  %3797 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  %3798 = fmul fast float %3719, %3679
  %3799 = call float @dx.op.tertiary.f32(i32 46, float %3680, float %3726, float %3798)  ; FMad(a,b,c)
  %3800 = fadd fast float %3799, %3784
  %3801 = fmul fast float %3719, %3681
  %3802 = call float @dx.op.tertiary.f32(i32 46, float %3682, float %3726, float %3801)  ; FMad(a,b,c)
  %3803 = fadd fast float %3802, %3783
  %3804 = fmul fast float %3747, %3679
  %3805 = call float @dx.op.tertiary.f32(i32 46, float %3680, float %3749, float %3804)  ; FMad(a,b,c)
  %3806 = fmul fast float %3747, %3681
  %3807 = call float @dx.op.tertiary.f32(i32 46, float %3682, float %3749, float %3806)  ; FMad(a,b,c)
  %3808 = fmul fast float %3748, %3679
  %3809 = call float @dx.op.tertiary.f32(i32 46, float %3680, float %3750, float %3808)  ; FMad(a,b,c)
  %3810 = fmul fast float %3748, %3681
  %3811 = call float @dx.op.tertiary.f32(i32 46, float %3682, float %3750, float %3810)  ; FMad(a,b,c)
  %3812 = add i32 %3788, 0
  %3813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3812, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3814 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3813, %dx.types.Handle %3792, float %3800, float %3803, float undef, float undef, i32 0, i32 0, i32 undef, float %3805, float %3807, float undef, float %3809, float %3811, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3815 = extractvalue %dx.types.ResRet.f32 %3814, 0
  %3816 = and i32 %3789, 1024
  %3817 = icmp ne i32 %3816, 0
  %3818 = fcmp fast ogt float %3815, 0x3FE0101020000000
  %3819 = uitofp i1 %3818 to float
  %3820 = select i1 %3817, float %3819, float %3815
  %3821 = and i32 %3789, 8192
  %3822 = icmp ne i32 %3821, 0
  %3823 = select i1 %3822, float %3782, float 1.000000e+00
  %3824 = fmul fast float %3719, 2.000000e+00
  %3825 = fadd fast float %3824, -1.000000e+00
  %3826 = call float @dx.op.unary.f32(i32 6, float %3825)  ; FAbs(value)
  %3827 = fmul fast float %3826, %3712
  %3828 = fsub fast float %3827, %3712
  %3829 = call float @dx.op.unary.f32(i32 7, float %3828)  ; Saturate(value)
  %3830 = fmul fast float %3726, 2.000000e+00
  %3831 = fadd fast float %3830, -1.000000e+00
  %3832 = call float @dx.op.unary.f32(i32 6, float %3831)  ; FAbs(value)
  %3833 = fmul fast float %3832, %3713
  %3834 = fsub fast float %3833, %3713
  %3835 = call float @dx.op.unary.f32(i32 7, float %3834)  ; Saturate(value)
  %3836 = fmul fast float %3738, %3675
  %3837 = fsub fast float %3836, %3675
  %3838 = call float @dx.op.unary.f32(i32 7, float %3837)  ; Saturate(value)
  %3839 = fmul fast float %3797, %3823
  %3840 = fmul fast float %3839, %3794
  %3841 = fmul fast float %3840, %3829
  %3842 = fmul fast float %3841, %3820
  %3843 = fmul fast float %3842, %3835
  %3844 = fmul fast float %3843, %3838
  %3845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3846 = extractvalue %dx.types.CBufRet.f32 %3845, 1
  %3847 = extractvalue %dx.types.CBufRet.f32 %3845, 0
  %3848 = fsub fast float %3755, %3847
  %3849 = fmul fast float %3848, %3846
  %3850 = call float @dx.op.unary.f32(i32 7, float %3849)  ; Saturate(value)
  %3851 = fmul fast float %3844, %3676
  %3852 = fadd fast float %3844, %3676
  %3853 = fmul fast float %3852, %3685
  %3854 = fsub fast float %3853, %3685
  %3855 = call float @dx.op.unary.f32(i32 7, float %3854)  ; Saturate(value)
  %3856 = and i32 %3789, 128
  %3857 = icmp ne i32 %3856, 0
  %3858 = select i1 %3857, float %3855, float %3851
  %3859 = fmul fast float %3858, %3850
  %3860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3861 = extractvalue %dx.types.CBufRet.f32 %3860, 0
  %3862 = fcmp fast ugt float %3859, %3861
  br i1 %3862, label %3863, label %3759

; <label>:3863                                    ; preds = %3780
  %3864 = select i1 %3822, float %3859, float 0.000000e+00
  %3865 = fadd fast float %3864, %3639
  %3866 = call float @dx.op.unary.f32(i32 7, float %3865)  ; Saturate(value)
  br i1 %3822, label %3759, label %3867

; <label>:3867                                    ; preds = %3863
  %3868 = and i32 %3789, 4
  %3869 = and i32 %3789, 8
  %3870 = add i32 %3671, 0
  %3871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3870, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3872 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3873 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3871, %dx.types.Handle %3872, float %3800, float %3803, float undef, float undef, i32 0, i32 0, i32 undef, float %3805, float %3807, float undef, float %3809, float %3811, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3874 = extractvalue %dx.types.ResRet.f32 %3873, 0
  %3875 = extractvalue %dx.types.ResRet.f32 %3873, 1
  %3876 = extractvalue %dx.types.ResRet.f32 %3873, 2
  %3877 = extractvalue %dx.types.ResRet.f32 %3873, 3
  %3878 = bitcast float %3697 to i32
  %3879 = and i32 %3878, 255
  %3880 = uitofp i32 %3879 to float
  %3881 = lshr i32 %3878, 8
  %3882 = and i32 %3881, 255
  %3883 = uitofp i32 %3882 to float
  %3884 = fmul fast float %3877, %3880
  %3885 = fadd fast float %3884, %3883
  %3886 = fmul fast float %3885, 0x3F70101000000000
  %3887 = add i32 %3672, 0
  %3888 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3887, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3889 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3888, %dx.types.Handle %3872, float %3800, float %3803, float undef, float undef, i32 0, i32 0, i32 undef, float %3805, float %3807, float undef, float %3809, float %3811, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3890 = extractvalue %dx.types.ResRet.f32 %3889, 0
  %3891 = extractvalue %dx.types.ResRet.f32 %3889, 1
  %3892 = extractvalue %dx.types.ResRet.f32 %3889, 2
  %3893 = extractvalue %dx.types.ResRet.f32 %3889, 3
  %3894 = bitcast float %3691 to i32
  %3895 = and i32 %3894, 255
  %3896 = uitofp i32 %3895 to float
  %3897 = lshr i32 %3894, 8
  %3898 = and i32 %3897, 255
  %3899 = uitofp i32 %3898 to float
  %3900 = lshr i32 %3894, 16
  %3901 = and i32 %3900, 255
  %3902 = uitofp i32 %3901 to float
  %3903 = fmul fast float %3902, 0x3F70101000000000
  %3904 = fmul fast float %3890, %3896
  %3905 = fadd fast float %3904, %3899
  %3906 = fmul fast float %3905, 0x3F70101000000000
  %3907 = fadd fast float %3891, -5.000000e-01
  %3908 = fadd fast float %3893, -5.000000e-01
  %3909 = fmul fast float %3907, %3903
  %3910 = fmul fast float %3908, %3903
  %3911 = fadd fast float %3909, 5.000000e-01
  %3912 = fadd fast float %3910, 5.000000e-01
  %3913 = fmul fast float %3874, %3700
  %3914 = fmul fast float %3875, %3701
  %3915 = fmul fast float %3876, %3702
  %3916 = fmul fast float %3911, 2.000000e+00
  %3917 = fadd fast float %3916, -1.000000e+00
  %3918 = fmul fast float %3912, 2.000000e+00
  %3919 = fadd fast float %3918, -1.000000e+00
  %3920 = fadd fast float %3917, %3919
  %3921 = fmul fast float %3920, 5.000000e-01
  %3922 = fsub fast float %3917, %3919
  %3923 = fmul fast float %3922, 5.000000e-01
  %3924 = call float @dx.op.unary.f32(i32 6, float %3921)  ; FAbs(value)
  %3925 = fsub fast float 1.000000e+00, %3924
  %3926 = call float @dx.op.unary.f32(i32 6, float %3923)  ; FAbs(value)
  %3927 = fsub fast float %3925, %3926
  %3928 = call float @dx.op.dot3.f32(i32 55, float %3921, float %3923, float %3927, float %3921, float %3923, float %3927)  ; Dot3(ax,ay,az,bx,by,bz)
  %3929 = call float @dx.op.unary.f32(i32 25, float %3928)  ; Rsqrt(value)
  %3930 = fmul fast float %3921, %3929
  %3931 = fmul fast float %3923, %3929
  %3932 = fmul fast float %3929, %3927
  %3933 = fmul fast float %3932, %3666
  %3934 = fmul fast float %3932, %3667
  %3935 = fmul fast float %3932, %3668
  %3936 = fmul fast float %3930, %3688
  %3937 = fmul fast float %3930, %3689
  %3938 = fmul fast float %3930, %3690
  %3939 = fadd fast float %3936, %3933
  %3940 = fadd fast float %3937, %3934
  %3941 = fadd fast float %3938, %3935
  %3942 = fmul fast float %3931, %3694
  %3943 = fmul fast float %3931, %3695
  %3944 = fmul fast float %3931, %3696
  %3945 = fadd fast float %3939, %3942
  %3946 = fadd fast float %3940, %3943
  %3947 = fadd fast float %3941, %3944
  %3948 = call float @dx.op.dot3.f32(i32 55, float %3945, float %3946, float %3947, float %3945, float %3946, float %3947)  ; Dot3(ax,ay,az,bx,by,bz)
  %3949 = call float @dx.op.unary.f32(i32 25, float %3948)  ; Rsqrt(value)
  %3950 = fmul fast float %3945, %3949
  %3951 = fmul fast float %3946, %3949
  %3952 = fmul fast float %3947, %3949
  %3953 = icmp ne i32 %3869, 0
  %3954 = select i1 %3953, float 1.000000e+00, float 0.000000e+00
  %3955 = fmul fast float %3859, %3954
  %3956 = and i32 %3789, 1
  %3957 = icmp eq i32 %3956, 0
  br i1 %3957, label %3958, label %3962

; <label>:3958                                    ; preds = %3867
  %3959 = fsub fast float %3950, %3648
  %3960 = fsub fast float %3951, %3649
  %3961 = fsub fast float %3952, %3650
  br label %3962

; <label>:3962                                    ; preds = %3958, %3867
  %3963 = phi float [ %3959, %3958 ], [ %3950, %3867 ]
  %3964 = phi float [ %3960, %3958 ], [ %3951, %3867 ]
  %3965 = phi float [ %3961, %3958 ], [ %3952, %3867 ]
  %3966 = fmul float %3965, %3955
  %3967 = fmul float %3964, %3955
  %3968 = fmul float %3963, %3955
  %3969 = fadd fast float %3968, %3648
  %3970 = fadd fast float %3967, %3649
  %3971 = fadd fast float %3966, %3650
  %3972 = icmp ne i32 %3868, 0
  %3973 = select i1 %3972, float 1.000000e+00, float 0.000000e+00
  %3974 = fmul fast float %3859, %3973
  %3975 = fsub fast float %3913, %3655
  %3976 = fsub fast float %3914, %3656
  %3977 = fsub fast float %3915, %3657
  %3978 = fmul fast float %3975, %3974
  %3979 = fmul fast float %3976, %3974
  %3980 = fmul fast float %3977, %3974
  %3981 = fadd fast float %3978, %3655
  %3982 = fadd fast float %3979, %3656
  %3983 = fadd fast float %3980, %3657
  %3984 = fsub fast float %3886, %3654
  %3985 = fmul fast float %3984, %3974
  %3986 = fadd fast float %3985, %3654
  %3987 = fmul fast float %3974, %3644
  %3988 = fsub fast float %3644, %3987
  %3989 = fmul fast float %3974, %3643
  %3990 = fsub fast float %3643, %3989
  %3991 = fadd fast float %3859, %3653
  %3992 = call float @dx.op.unary.f32(i32 7, float %3991)  ; Saturate(value)
  %3993 = fsub fast float %3906, %3652
  %3994 = fmul fast float %3993, %3955
  %3995 = fadd fast float %3994, %3652
  %3996 = fsub fast float %3892, %3651
  %3997 = fmul fast float %3996, %3955
  %3998 = fadd fast float %3997, %3651
  %3999 = call float @dx.op.dot3.f32(i32 55, float %3913, float %3914, float %3915, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4001 = extractvalue %dx.types.CBufRet.f32 %4000, 0
  %4002 = extractvalue %dx.types.CBufRet.f32 %4000, 1
  %4003 = fmul fast float %4002, %3999
  %4004 = fadd fast float %4003, %4001
  %4005 = call float @dx.op.unary.f32(i32 7, float %4004)  ; Saturate(value)
  %4006 = bitcast float %3703 to i32
  %4007 = and i32 %4006, 65535
  %4008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4007)  ; LegacyF16ToF32(value)
  %4009 = lshr i32 %4006, 16
  %4010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4009)  ; LegacyF16ToF32(value)
  %4011 = fcmp fast oge float %4008, 0.000000e+00
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 0
  %4014 = select i1 %4011, float %4008, float %4013
  %4015 = fadd fast float %4014, %4010
  %4016 = fsub fast float %4005, %3642
  %4017 = fmul fast float %4016, %3859
  %4018 = fadd fast float %4017, %3642
  %4019 = fmul fast float %4015, %3859
  %4020 = call float @dx.op.binary.f32(i32 35, float %3641, float %4019)  ; FMax(a,b)
  %4021 = call float @dx.op.binary.f32(i32 35, float %3640, float %3859)  ; FMax(a,b)
  %4022 = and i32 %3789, 16
  %4023 = icmp eq i32 %4022, 0
  br i1 %4023, label %4046, label %4024

; <label>:4024                                    ; preds = %3962
  %4025 = bitcast float %3709 to i32
  %4026 = add i32 %3706, 0
  %4027 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4026, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4028 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4027, %dx.types.Handle %3872, float %3800, float %3803, float undef, float undef, i32 0, i32 0, i32 undef, float %3805, float %3807, float undef, float %3809, float %3811, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4029 = extractvalue %dx.types.ResRet.f32 %4028, 0
  %4030 = extractvalue %dx.types.ResRet.f32 %4028, 1
  %4031 = extractvalue %dx.types.ResRet.f32 %4028, 2
  %4032 = and i32 %4025, 65535
  %4033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4032)  ; LegacyF16ToF32(value)
  %4034 = fmul fast float %4029, %3700
  %4035 = fmul fast float %4030, %3701
  %4036 = fmul fast float %4031, %3702
  %4037 = and i32 %3789, 16384
  %4038 = icmp ne i32 %4037, 0
  %4039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4040 = extractvalue %dx.types.CBufRet.f32 %4039, 0
  %4041 = select i1 %4038, float %4040, float 1.000000e+00
  %4042 = fmul fast float %4041, %4033
  %4043 = fmul fast float %4034, %4042
  %4044 = fmul fast float %4035, %4042
  %4045 = fmul fast float %4036, %4042
  br label %4046

; <label>:4046                                    ; preds = %4024, %3962
  %4047 = phi float [ %4043, %4024 ], [ 0.000000e+00, %3962 ]
  %4048 = phi float [ %4044, %4024 ], [ 0.000000e+00, %3962 ]
  %4049 = phi float [ %4045, %4024 ], [ 0.000000e+00, %3962 ]
  %4050 = fsub fast float %4047, %3645
  %4051 = fsub fast float %4048, %3646
  %4052 = fsub fast float %4049, %3647
  %4053 = fmul fast float %4050, %3859
  %4054 = fmul fast float %4051, %3859
  %4055 = fmul fast float %4052, %3859
  %4056 = fadd fast float %4053, %3645
  %4057 = fadd fast float %4054, %3646
  %4058 = fadd fast float %4055, %3647
  br label %3759

; <label>:4059                                    ; preds = %3759
  br label %4060

; <label>:4060                                    ; preds = %4059, %3574
  %4061 = phi float [ 0.000000e+00, %3574 ], [ %3760, %4059 ]
  %4062 = phi float [ %1268, %3574 ], [ %3761, %4059 ]
  %4063 = phi float [ %3509, %3574 ], [ %3762, %4059 ]
  %4064 = phi float [ %3488, %3574 ], [ %3763, %4059 ]
  %4065 = phi float [ 0.000000e+00, %3574 ], [ %3764, %4059 ]
  %4066 = phi float [ 0.000000e+00, %3574 ], [ %3765, %4059 ]
  %4067 = phi float [ %3531, %3574 ], [ %3766, %4059 ]
  %4068 = phi float [ %3533, %3574 ], [ %3767, %4059 ]
  %4069 = phi float [ %3535, %3574 ], [ %3768, %4059 ]
  %4070 = phi float [ %3561, %3574 ], [ %3769, %4059 ]
  %4071 = phi float [ %3562, %3574 ], [ %3770, %4059 ]
  %4072 = phi float [ %3563, %3574 ], [ %3771, %4059 ]
  %4073 = phi float [ %3487, %3574 ], [ %3772, %4059 ]
  %4074 = phi float [ %3486, %3574 ], [ %3773, %4059 ]
  %4075 = phi float [ 0.000000e+00, %3574 ], [ %3774, %4059 ]
  %4076 = phi float [ %3485, %3574 ], [ %3775, %4059 ]
  %4077 = phi float [ %3516, %3574 ], [ %3776, %4059 ]
  %4078 = phi float [ %3517, %3574 ], [ %3777, %4059 ]
  %4079 = phi float [ %3518, %3574 ], [ %3778, %4059 ]
  %4080 = call float @dx.op.dot3.f32(i32 55, float %4070, float %4071, float %4072, float %4070, float %4071, float %4072)  ; Dot3(ax,ay,az,bx,by,bz)
  %4081 = call float @dx.op.unary.f32(i32 25, float %4080)  ; Rsqrt(value)
  %4082 = fmul fast float %4081, %4070
  %4083 = fmul fast float %4081, %4071
  %4084 = fmul fast float %4081, %4072
  %4085 = fadd fast float %4075, %1268
  %4086 = call float @dx.op.unary.f32(i32 7, float %4085)  ; Saturate(value)
  %4087 = call float @dx.op.dot3.f32(i32 55, float %4082, float %4083, float %4084, float %4082, float %4083, float %4084)  ; Dot3(ax,ay,az,bx,by,bz)
  %4088 = call float @dx.op.unary.f32(i32 25, float %4087)  ; Rsqrt(value)
  %4089 = fmul fast float %4088, %4082
  %4090 = fmul fast float %4088, %4083
  %4091 = fmul fast float %4088, %4084
  br label %4092

; <label>:4092                                    ; preds = %4060, %3476
  %4093 = phi float [ %4089, %4060 ], [ %3561, %3476 ]
  %4094 = phi float [ %4090, %4060 ], [ %3562, %3476 ]
  %4095 = phi float [ %4091, %4060 ], [ %3563, %3476 ]
  %4096 = phi float [ %4077, %4060 ], [ %3516, %3476 ]
  %4097 = phi float [ %4078, %4060 ], [ %3517, %3476 ]
  %4098 = phi float [ %4079, %4060 ], [ %3518, %3476 ]
  %4099 = phi float [ %4067, %4060 ], [ %3531, %3476 ]
  %4100 = phi float [ %4068, %4060 ], [ %3533, %3476 ]
  %4101 = phi float [ %4069, %4060 ], [ %3535, %3476 ]
  %4102 = phi float [ %4076, %4060 ], [ %3485, %3476 ]
  %4103 = phi float [ %4086, %4060 ], [ %1268, %3476 ]
  %4104 = phi float [ %4074, %4060 ], [ %3486, %3476 ]
  %4105 = phi float [ %4073, %4060 ], [ %3487, %3476 ]
  %4106 = phi float [ %4066, %4060 ], [ 0.000000e+00, %3476 ]
  %4107 = phi float [ %4065, %4060 ], [ 0.000000e+00, %3476 ]
  %4108 = phi float [ %4061, %4060 ], [ 0.000000e+00, %3476 ]
  %4109 = phi float [ %4063, %4060 ], [ %3509, %3476 ]
  %4110 = phi float [ %4062, %4060 ], [ %1268, %3476 ]
  %4111 = phi float [ %4064, %4060 ], [ %3488, %3476 ]
  %4112 = fadd fast float %4102, 0xBFB99999A0000000
  %4113 = call float @dx.op.unary.f32(i32 7, float %4112)  ; Saturate(value)
  %4114 = fmul fast float %4113, 0x3FF1C71C80000000
  %4115 = call float @dx.op.binary.f32(i32 36, float %4102, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4116 = fsub fast float 1.000000e+00, %4114
  %4117 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4118 = fmul fast float %4117, %4096
  %4119 = fmul fast float %4117, %4097
  %4120 = fmul fast float %4117, %4098
  %4121 = call float @dx.op.unary.f32(i32 7, float %4118)  ; Saturate(value)
  %4122 = call float @dx.op.unary.f32(i32 7, float %4119)  ; Saturate(value)
  %4123 = call float @dx.op.unary.f32(i32 7, float %4120)  ; Saturate(value)
  %4124 = fmul fast float %4114, %4096
  %4125 = fmul fast float %4114, %4097
  %4126 = fmul fast float %4114, %4098
  %4127 = fadd fast float %4124, %4115
  %4128 = fadd fast float %4125, %4115
  %4129 = fadd fast float %4126, %4115
  %4130 = call float @dx.op.unary.f32(i32 7, float %4127)  ; Saturate(value)
  %4131 = call float @dx.op.unary.f32(i32 7, float %4128)  ; Saturate(value)
  %4132 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  %4133 = call float @dx.op.unary.f32(i32 7, float %4104)  ; Saturate(value)
  %4134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.i32 %4134, 3
  %4136 = and i32 %4135, 8
  %4137 = icmp ne i32 %4136, 0
  %4138 = call float @dx.op.binary.f32(i32 35, float %4121, float %4096)  ; FMax(a,b)
  %4139 = call float @dx.op.binary.f32(i32 35, float %4122, float %4096)  ; FMax(a,b)
  %4140 = call float @dx.op.binary.f32(i32 35, float %4123, float %4096)  ; FMax(a,b)
  %4141 = call float @dx.op.dot3.f32(i32 55, float %4121, float %4122, float %4123, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4142 = select i1 %277, float %4096, float %4121
  %4143 = select i1 %277, float %4141, float %4122
  %4144 = select i1 %277, float 1.000000e+00, float %4123
  %4145 = select i1 %4137, float %4138, float %4142
  %4146 = select i1 %4137, float %4139, float %4143
  %4147 = select i1 %4137, float %4140, float %4144
  %4148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4149 = extractvalue %dx.types.CBufRet.f32 %4148, 0
  %4150 = extractvalue %dx.types.CBufRet.f32 %4148, 1
  %4151 = extractvalue %dx.types.CBufRet.f32 %4148, 2
  %4152 = fadd fast float %4149, %205
  %4153 = fadd fast float %4150, %206
  %4154 = fadd fast float %4151, %207
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 0
  %4157 = extractvalue %dx.types.CBufRet.f32 %4155, 1
  %4158 = fsub fast float %4152, %4156
  %4159 = fsub fast float %4153, %4157
  %4160 = fmul fast float %4158, %4158
  %4161 = fmul fast float %4159, %4159
  %4162 = fadd fast float %4160, %4161
  %4163 = call float @dx.op.unary.f32(i32 24, float %4162)  ; Sqrt(value)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4155, 2
  %4165 = fcmp fast olt float %4163, %4164
  br i1 %4165, label %4166, label %4233

; <label>:4166                                    ; preds = %4092
  %4167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.f32 %4167, 0
  %4169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4170 = extractvalue %dx.types.CBufRet.f32 %4169, 0
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 0
  %4173 = extractvalue %dx.types.CBufRet.f32 %4167, 1
  %4174 = extractvalue %dx.types.CBufRet.f32 %4169, 1
  %4175 = extractvalue %dx.types.CBufRet.f32 %4171, 1
  %4176 = extractvalue %dx.types.CBufRet.f32 %4167, 3
  %4177 = extractvalue %dx.types.CBufRet.f32 %4169, 3
  %4178 = extractvalue %dx.types.CBufRet.f32 %4171, 3
  %4179 = fadd fast float %4176, %4152
  %4180 = fadd fast float %4177, %4153
  %4181 = fadd fast float %4178, %4154
  %4182 = fmul fast float %4179, %4168
  %4183 = call float @dx.op.tertiary.f32(i32 46, float %4180, float %4170, float %4182)  ; FMad(a,b,c)
  %4184 = call float @dx.op.tertiary.f32(i32 46, float %4181, float %4172, float %4183)  ; FMad(a,b,c)
  %4185 = fmul fast float %4179, %4173
  %4186 = call float @dx.op.tertiary.f32(i32 46, float %4180, float %4174, float %4185)  ; FMad(a,b,c)
  %4187 = call float @dx.op.tertiary.f32(i32 46, float %4181, float %4175, float %4186)  ; FMad(a,b,c)
  %4188 = fsub fast float %4184, %4176
  %4189 = fsub fast float %4187, %4177
  %4190 = fsub fast float %4188, %4156
  %4191 = fadd fast float %4190, %4164
  %4192 = fsub fast float %4189, %4157
  %4193 = fadd fast float %4192, %4164
  %4194 = extractvalue %dx.types.CBufRet.f32 %4155, 3
  %4195 = fmul fast float %4191, %4194
  %4196 = fmul fast float %4193, %4194
  %4197 = call float @dx.op.unary.f32(i32 7, float %4195)  ; Saturate(value)
  %4198 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4199 = fsub fast float 1.000000e+00, %4197
  %4200 = fsub fast float 1.000000e+00, %4198
  %4201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %56, float %4199, float %4200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4202 = extractvalue %dx.types.ResRet.f32 %4201, 0
  %4203 = fcmp fast ugt float %4202, 0.000000e+00
  br i1 %4203, label %4204, label %4507

; <label>:4204                                    ; preds = %4166
  %4205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4206 = extractvalue %dx.types.CBufRet.f32 %4205, 2
  %4207 = fmul fast float %4206, %4202
  %4208 = extractvalue %dx.types.CBufRet.f32 %4205, 3
  %4209 = fadd fast float %4208, %4207
  %4210 = extractvalue %dx.types.CBufRet.f32 %4171, 2
  %4211 = fadd fast float %4209, %4178
  %4212 = fmul fast float %4184, %4172
  %4213 = call float @dx.op.tertiary.f32(i32 46, float %4187, float %4175, float %4212)  ; FMad(a,b,c)
  %4214 = call float @dx.op.tertiary.f32(i32 46, float %4211, float %4210, float %4213)  ; FMad(a,b,c)
  %4215 = fsub fast float %4214, %4178
  %4216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4217 = extractvalue %dx.types.CBufRet.f32 %4216, 2
  %4218 = fsub fast float %4215, %4217
  %4219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %56, float %4199, float %4200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4220 = extractvalue %dx.types.ResRet.f32 %4219, 0
  %4221 = extractvalue %dx.types.ResRet.f32 %4219, 1
  %4222 = extractvalue %dx.types.ResRet.f32 %4219, 2
  %4223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %56, float %4199, float %4200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4225 = extractvalue %dx.types.ResRet.f32 %4223, 1
  %4226 = extractvalue %dx.types.ResRet.f32 %4223, 2
  %4227 = fadd fast float %4224, %4220
  %4228 = fmul fast float %4227, 0x3F847AE140000000
  %4229 = fadd fast float %4225, %4221
  %4230 = fmul fast float %4229, 0x3F847AE140000000
  %4231 = fadd fast float %4226, %4222
  %4232 = fmul fast float %4231, 0x3F847AE140000000
  br label %4507

; <label>:4233                                    ; preds = %4092
  %4234 = and i32 %256, 1
  %4235 = icmp eq i32 %4234, 0
  br i1 %4235, label %4507, label %4236

; <label>:4236                                    ; preds = %4233
  %4237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4238 = extractvalue %dx.types.CBufRet.f32 %4237, 0
  %4239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4240 = extractvalue %dx.types.CBufRet.f32 %4239, 0
  %4241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4242 = extractvalue %dx.types.CBufRet.f32 %4241, 0
  %4243 = extractvalue %dx.types.CBufRet.f32 %4237, 1
  %4244 = extractvalue %dx.types.CBufRet.f32 %4239, 1
  %4245 = extractvalue %dx.types.CBufRet.f32 %4241, 1
  %4246 = extractvalue %dx.types.CBufRet.f32 %4237, 3
  %4247 = extractvalue %dx.types.CBufRet.f32 %4239, 3
  %4248 = extractvalue %dx.types.CBufRet.f32 %4241, 3
  %4249 = fadd fast float %4246, %4152
  %4250 = fadd fast float %4247, %4153
  %4251 = fadd fast float %4248, %4154
  %4252 = fmul fast float %4249, %4238
  %4253 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %4240, float %4252)  ; FMad(a,b,c)
  %4254 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4242, float %4253)  ; FMad(a,b,c)
  %4255 = fmul fast float %4249, %4243
  %4256 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %4244, float %4255)  ; FMad(a,b,c)
  %4257 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4245, float %4256)  ; FMad(a,b,c)
  %4258 = fsub fast float %4254, %4246
  %4259 = fsub fast float %4257, %4247
  %4260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4261 = extractvalue %dx.types.CBufRet.f32 %4260, 0
  %4262 = extractvalue %dx.types.CBufRet.f32 %4260, 1
  %4263 = extractvalue %dx.types.CBufRet.f32 %4260, 2
  %4264 = extractvalue %dx.types.CBufRet.f32 %4260, 3
  %4265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4266 = extractvalue %dx.types.CBufRet.f32 %4265, 3
  %4267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4268 = extractvalue %dx.types.CBufRet.i32 %4267, 0
  %4269 = extractvalue %dx.types.CBufRet.i32 %4267, 1
  %4270 = udiv i32 %4269, %4268
  %4271 = fsub fast float %4258, %4261
  %4272 = fsub fast float %4259, %4262
  %4273 = call float @dx.op.binary.f32(i32 35, float %4271, float 0.000000e+00)  ; FMax(a,b)
  %4274 = call float @dx.op.binary.f32(i32 35, float %4272, float 0.000000e+00)  ; FMax(a,b)
  %4275 = call float @dx.op.binary.f32(i32 36, float %4273, float %4263)  ; FMin(a,b)
  %4276 = call float @dx.op.binary.f32(i32 36, float %4274, float %4264)  ; FMin(a,b)
  %4277 = add i32 %4268, -1
  %4278 = add i32 %4270, -1
  %4279 = fmul fast float %4275, %4266
  %4280 = fmul fast float %4276, %4266
  %4281 = fptoui float %4279 to i32
  %4282 = fptoui float %4280 to i32
  %4283 = call i32 @dx.op.binary.i32(i32 40, i32 %4281, i32 %4277)  ; UMin(a,b)
  %4284 = call i32 @dx.op.binary.i32(i32 40, i32 %4282, i32 %4278)  ; UMin(a,b)
  %4285 = mul i32 %4284, %4268
  %4286 = add i32 %4285, %4283
  %4287 = shl i32 %4286, 2
  %4288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %4289 = extractvalue %dx.types.ResRet.i32 %4288, 0
  %4290 = icmp eq i32 %4289, -1
  br i1 %4290, label %4507, label %4291

; <label>:4291                                    ; preds = %4236
  %4292 = mul i32 %4289, 148
  %4293 = add i32 %4292, 4
  %4294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4293, i32 undef)  ; BufferLoad(srv,index,wot)
  %4295 = extractvalue %dx.types.ResRet.f32 %4294, 0
  %4296 = add i32 %4292, 8
  %4297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4296, i32 undef)  ; BufferLoad(srv,index,wot)
  %4298 = extractvalue %dx.types.ResRet.f32 %4297, 0
  %4299 = add i32 %4292, 36
  %4300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4299, i32 undef)  ; BufferLoad(srv,index,wot)
  %4301 = extractvalue %dx.types.ResRet.f32 %4300, 0
  %4302 = add i32 %4292, 60
  %4303 = add i32 %4292, 92
  %4304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4303, i32 undef)  ; BufferLoad(srv,index,wot)
  %4305 = extractvalue %dx.types.ResRet.i32 %4304, 0
  %4306 = add i32 %4292, 116
  %4307 = fsub fast float %4258, %4295
  %4308 = fsub fast float %4259, %4298
  %4309 = fmul fast float %4266, %4307
  %4310 = fmul fast float %4266, %4308
  %4311 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  %4312 = call float @dx.op.unary.f32(i32 7, float %4310)  ; Saturate(value)
  %4313 = fsub fast float 1.000000e+00, %4312
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 2
  %4316 = call float @dx.op.unary.f32(i32 83, float %4311)  ; DerivCoarseX(value)
  %4317 = call float @dx.op.unary.f32(i32 83, float %4313)  ; DerivCoarseX(value)
  %4318 = call float @dx.op.unary.f32(i32 84, float %4311)  ; DerivCoarseY(value)
  %4319 = call float @dx.op.unary.f32(i32 84, float %4313)  ; DerivCoarseY(value)
  %4320 = fmul fast float %4316, %4315
  %4321 = fmul fast float %4317, %4315
  %4322 = fmul fast float %4318, %4315
  %4323 = fmul fast float %4319, %4315
  %4324 = call float @dx.op.dot2.f32(i32 54, float %4322, float %4323, float %4322, float %4323)  ; Dot2(ax,ay,bx,by)
  %4325 = call float @dx.op.dot2.f32(i32 54, float %4320, float %4321, float %4320, float %4321)  ; Dot2(ax,ay,bx,by)
  %4326 = call float @dx.op.binary.f32(i32 35, float %4325, float %4324)  ; FMax(a,b)
  %4327 = call float @dx.op.unary.f32(i32 23, float %4326)  ; Log(value)
  %4328 = fmul fast float %4327, 5.000000e-01
  %4329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.f32 %4329, 1
  %4331 = fadd fast float %4330, %4328
  %4332 = call float @dx.op.binary.f32(i32 35, float %4331, float 0.000000e+00)  ; FMax(a,b)
  %4333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4334 = extractvalue %dx.types.CBufRet.f32 %4333, 3
  %4335 = fadd fast float %4334, %4332
  %4336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4337 = extractvalue %dx.types.CBufRet.f32 %4336, 3
  %4338 = fadd fast float %4335, %4337
  %4339 = add i32 %4305, 0
  %4340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4339, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4341 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4340, i32 0)  ; GetDimensions(handle,mipLevel)
  %4342 = extractvalue %dx.types.Dimensions %4341, 0
  %4343 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4342)  ; FirstbitLo(value)
  %4344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4345 = extractvalue %dx.types.CBufRet.i32 %4344, 1
  %4346 = sub nsw i32 %4345, %4343
  %4347 = sitofp i32 %4346 to float
  %4348 = fsub fast float %4338, %4347
  %4349 = call float @dx.op.binary.f32(i32 35, float %4348, float 0.000000e+00)  ; FMax(a,b)
  %4350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4340, %dx.types.Handle %54, float %4311, float %4313, float %4301, float undef, i32 0, i32 0, i32 undef, float %4349)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4351 = extractvalue %dx.types.ResRet.f32 %4350, 0
  %4352 = fcmp ule float %4351, 0x3FE0101020000000
  %4353 = extractvalue %dx.types.CBufRet.i32 %4344, 0
  %4354 = and i32 %4353, 128
  %4355 = icmp ne i32 %4354, 0
  %4356 = and i1 %4352, %4355
  br i1 %4356, label %4507, label %4357

; <label>:4357                                    ; preds = %4291
  %4358 = add i32 %4292, 20
  %4359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4358, i32 undef)  ; BufferLoad(srv,index,wot)
  %4360 = extractvalue %dx.types.ResRet.f32 %4359, 0
  %4361 = add i32 %4292, 24
  %4362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4361, i32 undef)  ; BufferLoad(srv,index,wot)
  %4363 = extractvalue %dx.types.ResRet.f32 %4362, 0
  %4364 = add i32 %4292, 40
  %4365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4364, i32 undef)  ; BufferLoad(srv,index,wot)
  %4366 = extractvalue %dx.types.ResRet.f32 %4365, 0
  %4367 = add i32 %4292, 96
  %4368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4367, i32 undef)  ; BufferLoad(srv,index,wot)
  %4369 = extractvalue %dx.types.ResRet.i32 %4368, 0
  %4370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.f32 %4370, 2
  %4372 = fmul fast float %4371, %4311
  %4373 = fmul fast float %4371, %4313
  %4374 = extractvalue %dx.types.CBufRet.f32 %4370, 3
  %4375 = fadd fast float %4372, %4374
  %4376 = fadd fast float %4373, %4374
  %4377 = add i32 %4369, 0
  %4378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4377, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4379 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4378, i32 0)  ; GetDimensions(handle,mipLevel)
  %4380 = extractvalue %dx.types.Dimensions %4379, 0
  %4381 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4380)  ; FirstbitLo(value)
  %4382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.i32 %4382, 1
  %4384 = sub nsw i32 %4383, %4381
  %4385 = sitofp i32 %4384 to float
  %4386 = fsub fast float %4335, %4385
  %4387 = call float @dx.op.binary.f32(i32 35, float %4386, float 0.000000e+00)  ; FMax(a,b)
  %4388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4378, %dx.types.Handle %54, float %4375, float %4376, float %4366, float undef, i32 0, i32 0, i32 undef, float %4387)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4389 = extractvalue %dx.types.ResRet.f32 %4388, 0
  %4390 = fmul fast float %4389, %4360
  %4391 = fadd fast float %4390, %4363
  %4392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.f32 %4392, 0
  %4394 = extractvalue %dx.types.CBufRet.f32 %4392, 1
  %4395 = extractvalue %dx.types.CBufRet.f32 %4392, 2
  %4396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4397 = extractvalue %dx.types.CBufRet.f32 %4396, 3
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 3
  %4400 = extractvalue %dx.types.CBufRet.f32 %4392, 3
  %4401 = fadd fast float %4397, %4258
  %4402 = fadd fast float %4399, %4259
  %4403 = fadd fast float %4391, %4400
  %4404 = fmul fast float %4401, %4393
  %4405 = call float @dx.op.tertiary.f32(i32 46, float %4402, float %4394, float %4404)  ; FMad(a,b,c)
  %4406 = call float @dx.op.tertiary.f32(i32 46, float %4403, float %4395, float %4405)  ; FMad(a,b,c)
  %4407 = fsub fast float %4406, %4400
  %4408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4409 = extractvalue %dx.types.CBufRet.f32 %4408, 2
  %4410 = fsub fast float %4407, %4409
  %4411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4412 = extractvalue %dx.types.CBufRet.i32 %4411, 0
  %4413 = call i32 @dx.op.binary.i32(i32 40, i32 %4289, i32 %4412)  ; UMin(a,b)
  %4414 = mul i32 %4413, 36
  %4415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4414, i32 undef)  ; BufferLoad(srv,index,wot)
  %4416 = extractvalue %dx.types.ResRet.i32 %4415, 0
  %4417 = add i32 %4414, 4
  %4418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4419 = extractvalue %dx.types.CBufRet.f32 %4418, 0
  %4420 = fmul fast float %4419, %4311
  %4421 = fmul fast float %4419, %4313
  %4422 = extractvalue %dx.types.CBufRet.f32 %4418, 1
  %4423 = fadd fast float %4420, %4422
  %4424 = fadd fast float %4421, %4422
  %4425 = icmp eq i32 %4416, 0
  br i1 %4425, label %4494, label %4426

; <label>:4426                                    ; preds = %4357
  br label %4427

; <label>:4427                                    ; preds = %4484, %4426
  %4428 = phi float [ %4485, %4484 ], [ 0.000000e+00, %4426 ]
  %4429 = phi float [ %4486, %4484 ], [ 0.000000e+00, %4426 ]
  %4430 = phi float [ %4487, %4484 ], [ 0.000000e+00, %4426 ]
  %4431 = phi float [ %4488, %4484 ], [ 0.000000e+00, %4426 ]
  %4432 = phi float [ %4489, %4484 ], [ 0.000000e+00, %4426 ]
  %4433 = phi float [ %4490, %4484 ], [ 0.000000e+00, %4426 ]
  %4434 = phi i32 [ %4491, %4484 ], [ 0, %4426 ]
  %4435 = shl i32 %4434, 2
  %4436 = add i32 %4302, %4435
  %4437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4438 = extractvalue %dx.types.ResRet.f32 %4437, 0
  %4439 = add i32 %4306, %4435
  %4440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4439, i32 undef)  ; BufferLoad(srv,index,wot)
  %4441 = extractvalue %dx.types.ResRet.i32 %4440, 0
  %4442 = add i32 %4441, 0
  %4443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4442, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4444 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4443, i32 0)  ; GetDimensions(handle,mipLevel)
  %4445 = extractvalue %dx.types.Dimensions %4444, 0
  %4446 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4445)  ; FirstbitLo(value)
  %4447 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4448 = extractvalue %dx.types.CBufRet.i32 %4447, 1
  %4449 = sub nsw i32 %4448, %4446
  %4450 = sitofp i32 %4449 to float
  %4451 = fsub fast float %4335, %4450
  %4452 = call float @dx.op.binary.f32(i32 35, float %4451, float 0.000000e+00)  ; FMax(a,b)
  %4453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4443, %dx.types.Handle %54, float %4423, float %4424, float %4438, float undef, i32 0, i32 0, i32 undef, float %4452)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4454 = extractvalue %dx.types.ResRet.f32 %4453, 0
  %4455 = fcmp fast ogt float %4454, 0.000000e+00
  br i1 %4455, label %4456, label %4484

; <label>:4456                                    ; preds = %4427
  %4457 = add i32 %4417, %4435
  %4458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4457, i32 undef)  ; BufferLoad(srv,index,wot)
  %4459 = extractvalue %dx.types.ResRet.i32 %4458, 0
  %4460 = and i32 %4459, 32767
  %4461 = mul nuw nsw i32 %4460, 928
  %4462 = add nuw nsw i32 %4461, 48
  %4463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4462, i32 undef)  ; BufferLoad(srv,index,wot)
  %4464 = extractvalue %dx.types.ResRet.f32 %4463, 0
  %4465 = extractvalue %dx.types.ResRet.f32 %4463, 1
  %4466 = extractvalue %dx.types.ResRet.f32 %4463, 2
  %4467 = add nuw nsw i32 %4461, 60
  %4468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4467, i32 undef)  ; BufferLoad(srv,index,wot)
  %4469 = extractvalue %dx.types.ResRet.f32 %4468, 0
  %4470 = extractvalue %dx.types.ResRet.f32 %4468, 1
  %4471 = extractvalue %dx.types.ResRet.f32 %4468, 2
  %4472 = fmul fast float %4464, %4454
  %4473 = fmul fast float %4465, %4454
  %4474 = fmul fast float %4466, %4454
  %4475 = fadd fast float %4472, %4428
  %4476 = fadd fast float %4473, %4429
  %4477 = fadd fast float %4474, %4430
  %4478 = fmul fast float %4469, %4454
  %4479 = fmul fast float %4470, %4454
  %4480 = fmul fast float %4471, %4454
  %4481 = fadd fast float %4478, %4431
  %4482 = fadd fast float %4479, %4432
  %4483 = fadd fast float %4480, %4433
  br label %4484

; <label>:4484                                    ; preds = %4456, %4427
  %4485 = phi float [ %4475, %4456 ], [ %4428, %4427 ]
  %4486 = phi float [ %4476, %4456 ], [ %4429, %4427 ]
  %4487 = phi float [ %4477, %4456 ], [ %4430, %4427 ]
  %4488 = phi float [ %4481, %4456 ], [ %4431, %4427 ]
  %4489 = phi float [ %4482, %4456 ], [ %4432, %4427 ]
  %4490 = phi float [ %4483, %4456 ], [ %4433, %4427 ]
  %4491 = add nuw i32 %4434, 1
  %4492 = icmp eq i32 %4491, %4416
  br i1 %4492, label %4493, label %4427

; <label>:4493                                    ; preds = %4484
  br label %4494

; <label>:4494                                    ; preds = %4493, %4357
  %4495 = phi float [ 0.000000e+00, %4357 ], [ %4485, %4493 ]
  %4496 = phi float [ 0.000000e+00, %4357 ], [ %4486, %4493 ]
  %4497 = phi float [ 0.000000e+00, %4357 ], [ %4487, %4493 ]
  %4498 = phi float [ 0.000000e+00, %4357 ], [ %4488, %4493 ]
  %4499 = phi float [ 0.000000e+00, %4357 ], [ %4489, %4493 ]
  %4500 = phi float [ 0.000000e+00, %4357 ], [ %4490, %4493 ]
  %4501 = fadd fast float %4498, %4495
  %4502 = fmul fast float %4501, 0x3F847AE140000000
  %4503 = fadd fast float %4499, %4496
  %4504 = fmul fast float %4503, 0x3F847AE140000000
  %4505 = fadd fast float %4500, %4497
  %4506 = fmul fast float %4505, 0x3F847AE140000000
  br label %4507

; <label>:4507                                    ; preds = %4494, %4291, %4236, %4233, %4204, %4166
  %4508 = phi float [ %4218, %4204 ], [ -1.310720e+05, %4166 ], [ %4410, %4494 ], [ -1.310720e+05, %4236 ], [ -1.310720e+05, %4291 ], [ -1.310720e+05, %4233 ]
  %4509 = phi float [ %4228, %4204 ], [ 0.000000e+00, %4166 ], [ %4502, %4494 ], [ 0.000000e+00, %4236 ], [ 0.000000e+00, %4291 ], [ 0.000000e+00, %4233 ]
  %4510 = phi float [ %4230, %4204 ], [ 0.000000e+00, %4166 ], [ %4504, %4494 ], [ 0.000000e+00, %4236 ], [ 0.000000e+00, %4291 ], [ 0.000000e+00, %4233 ]
  %4511 = phi float [ %4232, %4204 ], [ 0.000000e+00, %4166 ], [ %4506, %4494 ], [ 0.000000e+00, %4236 ], [ 0.000000e+00, %4291 ], [ 0.000000e+00, %4233 ]
  %4512 = phi i1 [ true, %4204 ], [ false, %4166 ], [ true, %4494 ], [ false, %4236 ], [ false, %4291 ], [ false, %4233 ]
  %4513 = and i32 %256, 3
  %4514 = icmp eq i32 %4513, 1
  %4515 = select i1 %4514, float 1.000000e+00, float 0.000000e+00
  %4516 = fsub fast float %4508, %207
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = select i1 %4512, float %4517, float 1.000000e+00
  %4519 = fmul fast float %4518, %4515
  %4520 = icmp eq i32 %4513, 3
  %4521 = select i1 %4520, float 1.000000e+00, float %4519
  %4522 = call float @dx.op.binary.f32(i32 35, float %4108, float %4521)  ; FMax(a,b)
  %4523 = fcmp fast olt float %4521, 1.000000e+00
  %4524 = fcmp uge float %79, 0.000000e+00
  %4525 = and i1 %4524, %4523
  br i1 %4525, label %4526, label %4536

; <label>:4526                                    ; preds = %4507
  %4527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %79, float %80, float %81, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4528 = extractvalue %dx.types.ResRet.f32 %4527, 0
  %4529 = extractvalue %dx.types.ResRet.f32 %4527, 1
  %4530 = extractvalue %dx.types.ResRet.f32 %4527, 2
  %4531 = fadd fast float %4528, %4522
  %4532 = fcmp ule float %78, 0.000000e+00
  %4533 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4534 = select i1 %4532, float %4533, float 1.000000e+00
  %4535 = fmul fast float %4534, %4530
  br label %4536

; <label>:4536                                    ; preds = %4526, %4507
  %4537 = phi float [ %4531, %4526 ], [ %4522, %4507 ]
  %4538 = phi float [ %4529, %4526 ], [ 0.000000e+00, %4507 ]
  %4539 = phi float [ %4535, %4526 ], [ 0.000000e+00, %4507 ]
  %4540 = call float @dx.op.unary.f32(i32 7, float %4537)  ; Saturate(value)
  %4541 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  %4542 = call float @dx.op.unary.f32(i32 7, float %4539)  ; Saturate(value)
  %4543 = fcmp fast une float %4541, 0.000000e+00
  %4544 = fcmp fast une float %4542, 0.000000e+00
  %4545 = or i1 %4543, %4544
  br i1 %4545, label %4546, label %5105

; <label>:4546                                    ; preds = %4536
  br i1 %4543, label %4547, label %4820

; <label>:4547                                    ; preds = %4546
  %4548 = call float @dx.op.unary.f32(i32 23, float %4105)  ; Log(value)
  %4549 = fmul fast float %4548, 4.000000e+00
  %4550 = call float @dx.op.unary.f32(i32 21, float %4549)  ; Exp(value)
  %4551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.f32 %4551, 0
  %4553 = fmul fast float %4552, %66
  %4554 = fmul fast float %4552, %67
  %4555 = fmul fast float %4552, %68
  %4556 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4557 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %4558 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %4559 = call float @dx.op.unary.f32(i32 23, float %4556)  ; Log(value)
  %4560 = call float @dx.op.unary.f32(i32 23, float %4557)  ; Log(value)
  %4561 = call float @dx.op.unary.f32(i32 23, float %4558)  ; Log(value)
  %4562 = fmul fast float %4559, 4.000000e+00
  %4563 = fmul fast float %4560, 4.000000e+00
  %4564 = fmul fast float %4561, 4.000000e+00
  %4565 = call float @dx.op.unary.f32(i32 21, float %4562)  ; Exp(value)
  %4566 = call float @dx.op.unary.f32(i32 21, float %4563)  ; Exp(value)
  %4567 = call float @dx.op.unary.f32(i32 21, float %4564)  ; Exp(value)
  %4568 = fadd fast float %4566, %4565
  %4569 = fadd fast float %4568, %4567
  %4570 = fdiv fast float 1.000000e+00, %4569
  %4571 = fmul fast float %4570, %4565
  %4572 = fcmp fast ogt float %75, 0.000000e+00
  %4573 = fcmp fast ogt float %76, 0.000000e+00
  %4574 = fcmp fast ogt float %77, 0.000000e+00
  %4575 = fcmp fast olt float %75, 0.000000e+00
  %4576 = fcmp fast olt float %76, 0.000000e+00
  %4577 = fcmp fast olt float %77, 0.000000e+00
  %4578 = zext i1 %4572 to i32
  %4579 = zext i1 %4573 to i32
  %4580 = zext i1 %4574 to i32
  %4581 = zext i1 %4575 to i32
  %4582 = zext i1 %4576 to i32
  %4583 = zext i1 %4577 to i32
  %4584 = sub nsw i32 %4578, %4581
  %4585 = sub nsw i32 %4579, %4582
  %4586 = sub nsw i32 %4580, %4583
  %4587 = call float @dx.op.unary.f32(i32 83, float %4553)  ; DerivCoarseX(value)
  %4588 = call float @dx.op.unary.f32(i32 83, float %4554)  ; DerivCoarseX(value)
  %4589 = call float @dx.op.unary.f32(i32 83, float %4555)  ; DerivCoarseX(value)
  %4590 = call float @dx.op.unary.f32(i32 84, float %4553)  ; DerivCoarseY(value)
  %4591 = call float @dx.op.unary.f32(i32 84, float %4554)  ; DerivCoarseY(value)
  %4592 = call float @dx.op.unary.f32(i32 84, float %4555)  ; DerivCoarseY(value)
  %4593 = fcmp fast ole float %288, %4571
  %4594 = fmul fast float %4570, %4568
  %4595 = fcmp fast ole float %288, %4594
  %4596 = select i1 %4595, float %4555, float %4553
  %4597 = select i1 %4595, float %4553, float %4554
  %4598 = select i1 %4593, float %4554, float %4596
  %4599 = select i1 %4593, float %4555, float %4597
  %4600 = select i1 %4595, float %4589, float %4587
  %4601 = select i1 %4595, float %4587, float %4588
  %4602 = select i1 %4593, float %4588, float %4600
  %4603 = select i1 %4593, float %4589, float %4601
  %4604 = select i1 %4595, float %4592, float %4590
  %4605 = select i1 %4595, float %4590, float %4591
  %4606 = select i1 %4593, float %4591, float %4604
  %4607 = select i1 %4593, float %4592, float %4605
  %4608 = call float @dx.op.unary.f32(i32 27, float %4598)  ; Round_ni(value)
  %4609 = call float @dx.op.unary.f32(i32 27, float %4599)  ; Round_ni(value)
  %4610 = fptosi float %4608 to i32
  %4611 = fptosi float %4609 to i32
  %4612 = xor i32 %4611, %4610
  %4613 = sitofp i32 %4612 to float
  %4614 = fptosi float %4613 to i32
  %4615 = sitofp i32 %4614 to float
  %4616 = fmul fast float %4615, 0x3FE3C6EF40000000
  %4617 = frem fast float %4608, 2.560000e+02
  %4618 = frem fast float %4609, 2.560000e+02
  %4619 = fptoui float %4617 to i32
  %4620 = fptoui float %4618 to i32
  %4621 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4619, i32 %4620, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4622 = extractvalue %dx.types.ResRet.f32 %4621, 0
  %4623 = extractvalue %dx.types.ResRet.f32 %4621, 1
  %4624 = extractvalue %dx.types.ResRet.f32 %4621, 2
  %4625 = fadd fast float %4622, %4616
  %4626 = fadd fast float %4623, %4616
  %4627 = fadd fast float %4624, %4616
  %4628 = call float @dx.op.unary.f32(i32 22, float %4625)  ; Frc(value)
  %4629 = call float @dx.op.unary.f32(i32 22, float %4626)  ; Frc(value)
  %4630 = call float @dx.op.unary.f32(i32 22, float %4627)  ; Frc(value)
  %4631 = fmul fast float %4630, 0x401921FB60000000
  %4632 = call float @dx.op.unary.f32(i32 13, float %4631)  ; Sin(value)
  %4633 = call float @dx.op.unary.f32(i32 12, float %4631)  ; Cos(value)
  %4634 = fsub fast float -0.000000e+00, %4633
  %4635 = fmul fast float %4633, %4598
  %4636 = call float @dx.op.tertiary.f32(i32 46, float %4632, float %4599, float %4635)  ; FMad(a,b,c)
  %4637 = fmul fast float %4632, %4598
  %4638 = call float @dx.op.tertiary.f32(i32 46, float %4634, float %4599, float %4637)  ; FMad(a,b,c)
  %4639 = fadd fast float %4636, %4628
  %4640 = fadd fast float %4638, %4629
  %4641 = extractvalue %dx.types.CBufRet.f32 %4551, 3
  %4642 = bitcast float %4641 to i32
  %4643 = icmp eq i32 %4642, 0
  br i1 %4643, label %4682, label %4644

; <label>:4644                                    ; preds = %4547
  %4645 = add i32 %4642, 0
  %4646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4647 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4646, %dx.types.Handle %115, float %4639, float %4640, float undef, float undef, i32 0, i32 0, i32 undef, float %4602, float %4603, float undef, float %4606, float %4607, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4648 = extractvalue %dx.types.ResRet.f32 %4647, 0
  %4649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4650 = extractvalue %dx.types.CBufRet.f32 %4649, 1
  %4651 = extractvalue %dx.types.CBufRet.f32 %4649, 2
  %4652 = fsub fast float 1.000000e+00, %4541
  %4653 = call float @dx.op.binary.f32(i32 35, float %4652, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4654 = bitcast float %4541 to i32
  %4655 = sitofp i32 %4654 to float
  %4656 = fadd fast float %4655, 0xC1CFBF8940000000
  %4657 = fmul fast float %4651, %4656
  %4658 = fadd fast float %4657, 0x41CFBF8940000000
  %4659 = fptosi float %4658 to i32
  %4660 = bitcast i32 %4659 to float
  %4661 = bitcast float %4653 to i32
  %4662 = sitofp i32 %4661 to float
  %4663 = fadd fast float %4662, 0xC1CFBF8940000000
  %4664 = fmul fast float %4663, %4651
  %4665 = fadd fast float %4664, 0x41CFBF8940000000
  %4666 = fptosi float %4665 to i32
  %4667 = bitcast i32 %4666 to float
  %4668 = fmul fast float %4660, %4650
  %4669 = fmul fast float %4667, %4650
  %4670 = fsub fast float %4653, %4668
  %4671 = fadd fast float %4669, %4653
  %4672 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4673 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  %4674 = fsub fast float %4648, %4672
  %4675 = fsub fast float %4673, %4672
  %4676 = bitcast float %4675 to i32
  %4677 = sub nsw i32 2129859010, %4676
  %4678 = bitcast i32 %4677 to float
  %4679 = fmul fast float %4678, %4674
  %4680 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4681 = fcmp fast olt float %4680, 0x3F70101020000000
  br i1 %4681, label %4820, label %4682

; <label>:4682                                    ; preds = %4644, %4547
  %4683 = phi float [ %4680, %4644 ], [ %4541, %4547 ]
  %4684 = fmul fast float %4683, %4550
  %4685 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4686 = extractvalue %dx.types.CBufRet.i32 %4685, 1
  %4687 = extractvalue %dx.types.CBufRet.i32 %4685, 0
  %4688 = add i32 %4687, 0
  %4689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4688, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4690 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4689, %dx.types.Handle %114, float %4639, float %4640, float undef, float undef, i32 0, i32 0, i32 undef, float %4602, float %4603, float undef, float %4606, float %4607, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4691 = extractvalue %dx.types.ResRet.f32 %4690, 0
  %4692 = extractvalue %dx.types.ResRet.f32 %4690, 1
  %4693 = extractvalue %dx.types.ResRet.f32 %4690, 2
  %4694 = extractvalue %dx.types.ResRet.f32 %4690, 3
  %4695 = and i32 %4686, 255
  %4696 = uitofp i32 %4695 to float
  %4697 = lshr i32 %4686, 8
  %4698 = and i32 %4697, 255
  %4699 = uitofp i32 %4698 to float
  %4700 = fmul fast float %4694, %4696
  %4701 = fadd fast float %4700, %4699
  %4702 = fmul fast float %4701, 0x3F70101000000000
  %4703 = fadd fast float %4702, 0xBFB99999A0000000
  %4704 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4705 = fmul fast float %4704, 0x3FF1C71C80000000
  %4706 = call float @dx.op.binary.f32(i32 36, float %4702, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4707 = fsub fast float 1.000000e+00, %4705
  %4708 = call float @dx.op.unary.f32(i32 7, float %4707)  ; Saturate(value)
  %4709 = fmul fast float %4708, %4691
  %4710 = fmul fast float %4708, %4692
  %4711 = fmul fast float %4708, %4693
  %4712 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4713 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4714 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4715 = fmul fast float %4705, %4691
  %4716 = fmul fast float %4705, %4692
  %4717 = fmul fast float %4705, %4693
  %4718 = fadd fast float %4715, %4706
  %4719 = fadd fast float %4716, %4706
  %4720 = fadd fast float %4717, %4706
  %4721 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4722 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4723 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4724 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4725 = extractvalue %dx.types.CBufRet.i32 %4724, 3
  %4726 = extractvalue %dx.types.CBufRet.i32 %4724, 2
  %4727 = add i32 %4726, 0
  %4728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4727, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4729 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4728, %dx.types.Handle %114, float %4639, float %4640, float undef, float undef, i32 0, i32 0, i32 undef, float %4602, float %4603, float undef, float %4606, float %4607, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4730 = extractvalue %dx.types.ResRet.f32 %4729, 0
  %4731 = extractvalue %dx.types.ResRet.f32 %4729, 1
  %4732 = extractvalue %dx.types.ResRet.f32 %4729, 2
  %4733 = extractvalue %dx.types.ResRet.f32 %4729, 3
  %4734 = and i32 %4725, 255
  %4735 = uitofp i32 %4734 to float
  %4736 = lshr i32 %4725, 8
  %4737 = and i32 %4736, 255
  %4738 = uitofp i32 %4737 to float
  %4739 = lshr i32 %4725, 16
  %4740 = and i32 %4739, 255
  %4741 = uitofp i32 %4740 to float
  %4742 = fmul fast float %4741, 0x3F70101000000000
  %4743 = fmul fast float %4730, %4735
  %4744 = fadd fast float %4743, %4738
  %4745 = fmul fast float %4744, 0x3F70101000000000
  %4746 = fadd fast float %4731, -5.000000e-01
  %4747 = fadd fast float %4733, -5.000000e-01
  %4748 = fmul fast float %4746, %4742
  %4749 = fmul fast float %4747, %4742
  %4750 = fadd fast float %4748, 5.000000e-01
  %4751 = fadd fast float %4749, 5.000000e-01
  %4752 = fmul fast float %4750, 2.000000e+00
  %4753 = fadd fast float %4752, -1.000000e+00
  %4754 = fmul fast float %4751, 2.000000e+00
  %4755 = fadd fast float %4754, -1.000000e+00
  %4756 = fadd fast float %4753, %4755
  %4757 = fmul fast float %4756, 5.000000e-01
  %4758 = fsub fast float %4753, %4755
  %4759 = fmul fast float %4758, 5.000000e-01
  %4760 = call float @dx.op.unary.f32(i32 6, float %4757)  ; FAbs(value)
  %4761 = fsub fast float 1.000000e+00, %4760
  %4762 = call float @dx.op.unary.f32(i32 6, float %4759)  ; FAbs(value)
  %4763 = fsub fast float %4761, %4762
  %4764 = call float @dx.op.dot3.f32(i32 55, float %4757, float %4759, float %4763, float %4757, float %4759, float %4763)  ; Dot3(ax,ay,az,bx,by,bz)
  %4765 = call float @dx.op.unary.f32(i32 25, float %4764)  ; Rsqrt(value)
  %4766 = fmul fast float %4757, %4765
  %4767 = fmul fast float %4759, %4765
  %4768 = select i1 %4595, i32 %4585, i32 %4586
  %4769 = select i1 %4593, i32 %4584, i32 %4768
  %4770 = sitofp i32 %4769 to float
  %4771 = fmul fast float %4763, %4770
  %4772 = fmul fast float %4771, %4765
  %4773 = select i1 %4595, float %4772, float %4767
  %4774 = select i1 %4595, float %4767, float %4772
  %4775 = select i1 %4593, float %4772, float %4766
  %4776 = select i1 %4593, float %4767, float %4773
  %4777 = select i1 %4593, float %4766, float %4774
  %4778 = fsub fast float %4712, %4145
  %4779 = fsub fast float %4713, %4146
  %4780 = fsub fast float %4714, %4147
  %4781 = fmul fast float %4778, %4684
  %4782 = fmul fast float %4779, %4684
  %4783 = fmul fast float %4780, %4684
  %4784 = fadd fast float %4781, %4145
  %4785 = fadd fast float %4782, %4146
  %4786 = fadd fast float %4783, %4147
  %4787 = fsub fast float %4721, %4130
  %4788 = fsub fast float %4722, %4131
  %4789 = fsub fast float %4723, %4132
  %4790 = fmul fast float %4787, %4684
  %4791 = fmul fast float %4788, %4684
  %4792 = fmul fast float %4789, %4684
  %4793 = fadd fast float %4790, %4130
  %4794 = fadd fast float %4791, %4131
  %4795 = fadd fast float %4792, %4132
  %4796 = fadd fast float %4775, %4093
  %4797 = fadd fast float %4776, %4094
  %4798 = fadd fast float %4777, %4095
  %4799 = call float @dx.op.dot3.f32(i32 55, float %4796, float %4797, float %4798, float %4796, float %4797, float %4798)  ; Dot3(ax,ay,az,bx,by,bz)
  %4800 = call float @dx.op.unary.f32(i32 25, float %4799)  ; Rsqrt(value)
  %4801 = fmul fast float %4796, %4800
  %4802 = fmul fast float %4797, %4800
  %4803 = fmul fast float %4798, %4800
  %4804 = fsub fast float %4801, %4093
  %4805 = fsub fast float %4802, %4094
  %4806 = fsub fast float %4803, %4095
  %4807 = fmul fast float %4804, %4684
  %4808 = fmul fast float %4805, %4684
  %4809 = fmul fast float %4806, %4684
  %4810 = fadd fast float %4807, %4093
  %4811 = fadd fast float %4808, %4094
  %4812 = fadd fast float %4809, %4095
  %4813 = call float @dx.op.binary.f32(i32 36, float %4105, float %4732)  ; FMin(a,b)
  %4814 = fsub fast float %4813, %4105
  %4815 = fmul fast float %4814, %4684
  %4816 = fadd fast float %4815, %4105
  %4817 = fsub fast float %4745, %4133
  %4818 = fmul fast float %4817, %4684
  %4819 = fadd fast float %4818, %4133
  br label %4820

; <label>:4820                                    ; preds = %4682, %4644, %4546
  %4821 = phi float [ %4784, %4682 ], [ %4145, %4644 ], [ %4145, %4546 ]
  %4822 = phi float [ %4785, %4682 ], [ %4146, %4644 ], [ %4146, %4546 ]
  %4823 = phi float [ %4786, %4682 ], [ %4147, %4644 ], [ %4147, %4546 ]
  %4824 = phi float [ %4793, %4682 ], [ %4130, %4644 ], [ %4130, %4546 ]
  %4825 = phi float [ %4794, %4682 ], [ %4131, %4644 ], [ %4131, %4546 ]
  %4826 = phi float [ %4795, %4682 ], [ %4132, %4644 ], [ %4132, %4546 ]
  %4827 = phi float [ %4810, %4682 ], [ %4093, %4644 ], [ %4093, %4546 ]
  %4828 = phi float [ %4811, %4682 ], [ %4094, %4644 ], [ %4094, %4546 ]
  %4829 = phi float [ %4812, %4682 ], [ %4095, %4644 ], [ %4095, %4546 ]
  %4830 = phi float [ %4819, %4682 ], [ %4133, %4644 ], [ %4133, %4546 ]
  %4831 = phi float [ %4816, %4682 ], [ %4105, %4644 ], [ %4105, %4546 ]
  br i1 %4544, label %4832, label %5105

; <label>:4832                                    ; preds = %4820
  %4833 = call float @dx.op.unary.f32(i32 23, float %4831)  ; Log(value)
  %4834 = fmul fast float %4833, 4.000000e+00
  %4835 = call float @dx.op.unary.f32(i32 21, float %4834)  ; Exp(value)
  %4836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4837 = extractvalue %dx.types.CBufRet.f32 %4836, 0
  %4838 = fmul fast float %4837, %66
  %4839 = fmul fast float %4837, %67
  %4840 = fmul fast float %4837, %68
  %4841 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4842 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %4843 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %4844 = call float @dx.op.unary.f32(i32 23, float %4841)  ; Log(value)
  %4845 = call float @dx.op.unary.f32(i32 23, float %4842)  ; Log(value)
  %4846 = call float @dx.op.unary.f32(i32 23, float %4843)  ; Log(value)
  %4847 = fmul fast float %4844, 4.000000e+00
  %4848 = fmul fast float %4845, 4.000000e+00
  %4849 = fmul fast float %4846, 4.000000e+00
  %4850 = call float @dx.op.unary.f32(i32 21, float %4847)  ; Exp(value)
  %4851 = call float @dx.op.unary.f32(i32 21, float %4848)  ; Exp(value)
  %4852 = call float @dx.op.unary.f32(i32 21, float %4849)  ; Exp(value)
  %4853 = fadd fast float %4851, %4850
  %4854 = fadd fast float %4853, %4852
  %4855 = fdiv fast float 1.000000e+00, %4854
  %4856 = fmul fast float %4855, %4850
  %4857 = fcmp fast ogt float %75, 0.000000e+00
  %4858 = fcmp fast ogt float %76, 0.000000e+00
  %4859 = fcmp fast ogt float %77, 0.000000e+00
  %4860 = fcmp fast olt float %75, 0.000000e+00
  %4861 = fcmp fast olt float %76, 0.000000e+00
  %4862 = fcmp fast olt float %77, 0.000000e+00
  %4863 = zext i1 %4857 to i32
  %4864 = zext i1 %4858 to i32
  %4865 = zext i1 %4859 to i32
  %4866 = zext i1 %4860 to i32
  %4867 = zext i1 %4861 to i32
  %4868 = zext i1 %4862 to i32
  %4869 = sub nsw i32 %4863, %4866
  %4870 = sub nsw i32 %4864, %4867
  %4871 = sub nsw i32 %4865, %4868
  %4872 = call float @dx.op.unary.f32(i32 83, float %4838)  ; DerivCoarseX(value)
  %4873 = call float @dx.op.unary.f32(i32 83, float %4839)  ; DerivCoarseX(value)
  %4874 = call float @dx.op.unary.f32(i32 83, float %4840)  ; DerivCoarseX(value)
  %4875 = call float @dx.op.unary.f32(i32 84, float %4838)  ; DerivCoarseY(value)
  %4876 = call float @dx.op.unary.f32(i32 84, float %4839)  ; DerivCoarseY(value)
  %4877 = call float @dx.op.unary.f32(i32 84, float %4840)  ; DerivCoarseY(value)
  %4878 = fcmp fast ole float %288, %4856
  %4879 = fmul fast float %4855, %4853
  %4880 = fcmp fast ole float %288, %4879
  %4881 = select i1 %4880, float %4840, float %4838
  %4882 = select i1 %4880, float %4838, float %4839
  %4883 = select i1 %4878, float %4839, float %4881
  %4884 = select i1 %4878, float %4840, float %4882
  %4885 = select i1 %4880, float %4874, float %4872
  %4886 = select i1 %4880, float %4872, float %4873
  %4887 = select i1 %4878, float %4873, float %4885
  %4888 = select i1 %4878, float %4874, float %4886
  %4889 = select i1 %4880, float %4877, float %4875
  %4890 = select i1 %4880, float %4875, float %4876
  %4891 = select i1 %4878, float %4876, float %4889
  %4892 = select i1 %4878, float %4877, float %4890
  %4893 = call float @dx.op.unary.f32(i32 27, float %4883)  ; Round_ni(value)
  %4894 = call float @dx.op.unary.f32(i32 27, float %4884)  ; Round_ni(value)
  %4895 = fptosi float %4893 to i32
  %4896 = fptosi float %4894 to i32
  %4897 = xor i32 %4896, %4895
  %4898 = sitofp i32 %4897 to float
  %4899 = fptosi float %4898 to i32
  %4900 = sitofp i32 %4899 to float
  %4901 = fmul fast float %4900, 0x3FE3C6EF40000000
  %4902 = frem fast float %4893, 2.560000e+02
  %4903 = frem fast float %4894, 2.560000e+02
  %4904 = fptoui float %4902 to i32
  %4905 = fptoui float %4903 to i32
  %4906 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4904, i32 %4905, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4907 = extractvalue %dx.types.ResRet.f32 %4906, 0
  %4908 = extractvalue %dx.types.ResRet.f32 %4906, 1
  %4909 = extractvalue %dx.types.ResRet.f32 %4906, 2
  %4910 = fadd fast float %4907, %4901
  %4911 = fadd fast float %4908, %4901
  %4912 = fadd fast float %4909, %4901
  %4913 = call float @dx.op.unary.f32(i32 22, float %4910)  ; Frc(value)
  %4914 = call float @dx.op.unary.f32(i32 22, float %4911)  ; Frc(value)
  %4915 = call float @dx.op.unary.f32(i32 22, float %4912)  ; Frc(value)
  %4916 = fmul fast float %4915, 0x401921FB60000000
  %4917 = call float @dx.op.unary.f32(i32 13, float %4916)  ; Sin(value)
  %4918 = call float @dx.op.unary.f32(i32 12, float %4916)  ; Cos(value)
  %4919 = fsub fast float -0.000000e+00, %4918
  %4920 = fmul fast float %4918, %4883
  %4921 = call float @dx.op.tertiary.f32(i32 46, float %4917, float %4884, float %4920)  ; FMad(a,b,c)
  %4922 = fmul fast float %4917, %4883
  %4923 = call float @dx.op.tertiary.f32(i32 46, float %4919, float %4884, float %4922)  ; FMad(a,b,c)
  %4924 = fadd fast float %4921, %4913
  %4925 = fadd fast float %4923, %4914
  %4926 = extractvalue %dx.types.CBufRet.f32 %4836, 3
  %4927 = bitcast float %4926 to i32
  %4928 = icmp eq i32 %4927, 0
  br i1 %4928, label %4967, label %4929

; <label>:4929                                    ; preds = %4832
  %4930 = add i32 %4927, 0
  %4931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4930, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4932 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4931, %dx.types.Handle %115, float %4924, float %4925, float undef, float undef, i32 0, i32 0, i32 undef, float %4887, float %4888, float undef, float %4891, float %4892, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4933 = extractvalue %dx.types.ResRet.f32 %4932, 0
  %4934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4935 = extractvalue %dx.types.CBufRet.f32 %4934, 1
  %4936 = extractvalue %dx.types.CBufRet.f32 %4934, 2
  %4937 = fsub fast float 1.000000e+00, %4542
  %4938 = call float @dx.op.binary.f32(i32 35, float %4937, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4939 = bitcast float %4542 to i32
  %4940 = sitofp i32 %4939 to float
  %4941 = fadd fast float %4940, 0xC1CFBF8940000000
  %4942 = fmul fast float %4936, %4941
  %4943 = fadd fast float %4942, 0x41CFBF8940000000
  %4944 = fptosi float %4943 to i32
  %4945 = bitcast i32 %4944 to float
  %4946 = bitcast float %4938 to i32
  %4947 = sitofp i32 %4946 to float
  %4948 = fadd fast float %4947, 0xC1CFBF8940000000
  %4949 = fmul fast float %4948, %4936
  %4950 = fadd fast float %4949, 0x41CFBF8940000000
  %4951 = fptosi float %4950 to i32
  %4952 = bitcast i32 %4951 to float
  %4953 = fmul fast float %4945, %4935
  %4954 = fmul fast float %4952, %4935
  %4955 = fsub fast float %4938, %4953
  %4956 = fadd fast float %4954, %4938
  %4957 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4958 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %4959 = fsub fast float %4933, %4957
  %4960 = fsub fast float %4958, %4957
  %4961 = bitcast float %4960 to i32
  %4962 = sub nsw i32 2129859010, %4961
  %4963 = bitcast i32 %4962 to float
  %4964 = fmul fast float %4963, %4959
  %4965 = call float @dx.op.unary.f32(i32 7, float %4964)  ; Saturate(value)
  %4966 = fcmp fast olt float %4965, 0x3F70101020000000
  br i1 %4966, label %5105, label %4967

; <label>:4967                                    ; preds = %4929, %4832
  %4968 = phi float [ %4965, %4929 ], [ %4542, %4832 ]
  %4969 = fmul fast float %4968, %4835
  %4970 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4971 = extractvalue %dx.types.CBufRet.i32 %4970, 1
  %4972 = extractvalue %dx.types.CBufRet.i32 %4970, 0
  %4973 = add i32 %4972, 0
  %4974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4973, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4975 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4974, %dx.types.Handle %114, float %4924, float %4925, float undef, float undef, i32 0, i32 0, i32 undef, float %4887, float %4888, float undef, float %4891, float %4892, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4976 = extractvalue %dx.types.ResRet.f32 %4975, 0
  %4977 = extractvalue %dx.types.ResRet.f32 %4975, 1
  %4978 = extractvalue %dx.types.ResRet.f32 %4975, 2
  %4979 = extractvalue %dx.types.ResRet.f32 %4975, 3
  %4980 = and i32 %4971, 255
  %4981 = uitofp i32 %4980 to float
  %4982 = lshr i32 %4971, 8
  %4983 = and i32 %4982, 255
  %4984 = uitofp i32 %4983 to float
  %4985 = fmul fast float %4979, %4981
  %4986 = fadd fast float %4985, %4984
  %4987 = fmul fast float %4986, 0x3F70101000000000
  %4988 = fadd fast float %4987, 0xBFB99999A0000000
  %4989 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4990 = fmul fast float %4989, 0x3FF1C71C80000000
  %4991 = call float @dx.op.binary.f32(i32 36, float %4987, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4992 = fsub fast float 1.000000e+00, %4990
  %4993 = call float @dx.op.unary.f32(i32 7, float %4992)  ; Saturate(value)
  %4994 = fmul fast float %4993, %4976
  %4995 = fmul fast float %4993, %4977
  %4996 = fmul fast float %4993, %4978
  %4997 = call float @dx.op.unary.f32(i32 7, float %4994)  ; Saturate(value)
  %4998 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4999 = call float @dx.op.unary.f32(i32 7, float %4996)  ; Saturate(value)
  %5000 = fmul fast float %4990, %4976
  %5001 = fmul fast float %4990, %4977
  %5002 = fmul fast float %4990, %4978
  %5003 = fadd fast float %5000, %4991
  %5004 = fadd fast float %5001, %4991
  %5005 = fadd fast float %5002, %4991
  %5006 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5007 = call float @dx.op.unary.f32(i32 7, float %5004)  ; Saturate(value)
  %5008 = call float @dx.op.unary.f32(i32 7, float %5005)  ; Saturate(value)
  %5009 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5010 = extractvalue %dx.types.CBufRet.i32 %5009, 3
  %5011 = extractvalue %dx.types.CBufRet.i32 %5009, 2
  %5012 = add i32 %5011, 0
  %5013 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5012, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5014 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5013, %dx.types.Handle %114, float %4924, float %4925, float undef, float undef, i32 0, i32 0, i32 undef, float %4887, float %4888, float undef, float %4891, float %4892, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5015 = extractvalue %dx.types.ResRet.f32 %5014, 0
  %5016 = extractvalue %dx.types.ResRet.f32 %5014, 1
  %5017 = extractvalue %dx.types.ResRet.f32 %5014, 2
  %5018 = extractvalue %dx.types.ResRet.f32 %5014, 3
  %5019 = and i32 %5010, 255
  %5020 = uitofp i32 %5019 to float
  %5021 = lshr i32 %5010, 8
  %5022 = and i32 %5021, 255
  %5023 = uitofp i32 %5022 to float
  %5024 = lshr i32 %5010, 16
  %5025 = and i32 %5024, 255
  %5026 = uitofp i32 %5025 to float
  %5027 = fmul fast float %5026, 0x3F70101000000000
  %5028 = fmul fast float %5015, %5020
  %5029 = fadd fast float %5028, %5023
  %5030 = fmul fast float %5029, 0x3F70101000000000
  %5031 = fadd fast float %5016, -5.000000e-01
  %5032 = fadd fast float %5018, -5.000000e-01
  %5033 = fmul fast float %5031, %5027
  %5034 = fmul fast float %5032, %5027
  %5035 = fadd fast float %5033, 5.000000e-01
  %5036 = fadd fast float %5034, 5.000000e-01
  %5037 = fmul fast float %5035, 2.000000e+00
  %5038 = fadd fast float %5037, -1.000000e+00
  %5039 = fmul fast float %5036, 2.000000e+00
  %5040 = fadd fast float %5039, -1.000000e+00
  %5041 = fadd fast float %5038, %5040
  %5042 = fmul fast float %5041, 5.000000e-01
  %5043 = fsub fast float %5038, %5040
  %5044 = fmul fast float %5043, 5.000000e-01
  %5045 = call float @dx.op.unary.f32(i32 6, float %5042)  ; FAbs(value)
  %5046 = fsub fast float 1.000000e+00, %5045
  %5047 = call float @dx.op.unary.f32(i32 6, float %5044)  ; FAbs(value)
  %5048 = fsub fast float %5046, %5047
  %5049 = call float @dx.op.dot3.f32(i32 55, float %5042, float %5044, float %5048, float %5042, float %5044, float %5048)  ; Dot3(ax,ay,az,bx,by,bz)
  %5050 = call float @dx.op.unary.f32(i32 25, float %5049)  ; Rsqrt(value)
  %5051 = fmul fast float %5042, %5050
  %5052 = fmul fast float %5044, %5050
  %5053 = select i1 %4880, i32 %4870, i32 %4871
  %5054 = select i1 %4878, i32 %4869, i32 %5053
  %5055 = sitofp i32 %5054 to float
  %5056 = fmul fast float %5048, %5055
  %5057 = fmul fast float %5056, %5050
  %5058 = select i1 %4880, float %5057, float %5052
  %5059 = select i1 %4880, float %5052, float %5057
  %5060 = select i1 %4878, float %5057, float %5051
  %5061 = select i1 %4878, float %5052, float %5058
  %5062 = select i1 %4878, float %5051, float %5059
  %5063 = fsub fast float %4997, %4821
  %5064 = fsub fast float %4998, %4822
  %5065 = fsub fast float %4999, %4823
  %5066 = fmul fast float %5063, %4969
  %5067 = fmul fast float %5064, %4969
  %5068 = fmul fast float %5065, %4969
  %5069 = fadd fast float %5066, %4821
  %5070 = fadd fast float %5067, %4822
  %5071 = fadd fast float %5068, %4823
  %5072 = fsub fast float %5006, %4824
  %5073 = fsub fast float %5007, %4825
  %5074 = fsub fast float %5008, %4826
  %5075 = fmul fast float %5072, %4969
  %5076 = fmul fast float %5073, %4969
  %5077 = fmul fast float %5074, %4969
  %5078 = fadd fast float %5075, %4824
  %5079 = fadd fast float %5076, %4825
  %5080 = fadd fast float %5077, %4826
  %5081 = fadd fast float %5060, %4827
  %5082 = fadd fast float %5061, %4828
  %5083 = fadd fast float %5062, %4829
  %5084 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5082, float %5083, float %5081, float %5082, float %5083)  ; Dot3(ax,ay,az,bx,by,bz)
  %5085 = call float @dx.op.unary.f32(i32 25, float %5084)  ; Rsqrt(value)
  %5086 = fmul fast float %5081, %5085
  %5087 = fmul fast float %5082, %5085
  %5088 = fmul fast float %5083, %5085
  %5089 = fsub fast float %5086, %4827
  %5090 = fsub fast float %5087, %4828
  %5091 = fsub fast float %5088, %4829
  %5092 = fmul fast float %5089, %4969
  %5093 = fmul fast float %5090, %4969
  %5094 = fmul fast float %5091, %4969
  %5095 = fadd fast float %5092, %4827
  %5096 = fadd fast float %5093, %4828
  %5097 = fadd fast float %5094, %4829
  %5098 = call float @dx.op.binary.f32(i32 36, float %4831, float %5017)  ; FMin(a,b)
  %5099 = fsub fast float %5098, %4831
  %5100 = fmul fast float %5099, %4969
  %5101 = fadd fast float %5100, %4831
  %5102 = fsub fast float %5030, %4830
  %5103 = fmul fast float %5102, %4969
  %5104 = fadd fast float %5103, %4830
  br label %5105

; <label>:5105                                    ; preds = %4967, %4929, %4820, %4536
  %5106 = phi float [ %5069, %4967 ], [ %4821, %4929 ], [ %4821, %4820 ], [ %4145, %4536 ]
  %5107 = phi float [ %5070, %4967 ], [ %4822, %4929 ], [ %4822, %4820 ], [ %4146, %4536 ]
  %5108 = phi float [ %5071, %4967 ], [ %4823, %4929 ], [ %4823, %4820 ], [ %4147, %4536 ]
  %5109 = phi float [ %5078, %4967 ], [ %4824, %4929 ], [ %4824, %4820 ], [ %4130, %4536 ]
  %5110 = phi float [ %5079, %4967 ], [ %4825, %4929 ], [ %4825, %4820 ], [ %4131, %4536 ]
  %5111 = phi float [ %5080, %4967 ], [ %4826, %4929 ], [ %4826, %4820 ], [ %4132, %4536 ]
  %5112 = phi float [ %5095, %4967 ], [ %4827, %4929 ], [ %4827, %4820 ], [ %4093, %4536 ]
  %5113 = phi float [ %5096, %4967 ], [ %4828, %4929 ], [ %4828, %4820 ], [ %4094, %4536 ]
  %5114 = phi float [ %5097, %4967 ], [ %4829, %4929 ], [ %4829, %4820 ], [ %4095, %4536 ]
  %5115 = phi float [ %5104, %4967 ], [ %4830, %4929 ], [ %4830, %4820 ], [ %4133, %4536 ]
  %5116 = phi float [ %5101, %4967 ], [ %4831, %4929 ], [ %4831, %4820 ], [ %4105, %4536 ]
  %5117 = fcmp fast une float %4540, 0.000000e+00
  br i1 %5117, label %5118, label %5287

; <label>:5118                                    ; preds = %5105
  %5119 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %205, float %206, float %207)  ; Dot3(ax,ay,az,bx,by,bz)
  %5120 = call float @dx.op.unary.f32(i32 25, float %5119)  ; Rsqrt(value)
  %5121 = fmul fast float %205, %5120
  %5122 = fsub fast float -0.000000e+00, %5121
  %5123 = fmul fast float %206, %5120
  %5124 = fsub fast float -0.000000e+00, %5123
  %5125 = fmul fast float %207, %5120
  %5126 = fsub fast float -0.000000e+00, %5125
  %5127 = call float @dx.op.dot3.f32(i32 55, float %5122, float %5124, float %5126, float %125, float %126, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %5128 = fmul fast float %4540, 2.500000e+00
  %5129 = call float @dx.op.unary.f32(i32 7, float %5128)  ; Saturate(value)
  %5130 = fmul fast float %4540, 0x4013FFFFE0000000
  %5131 = fadd fast float %5130, 0xBFFFFFFFE0000000
  %5132 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5133 = fmul fast float %4540, 0x4004000020000000
  %5134 = fadd fast float %5133, 0xBFF8000040000000
  %5135 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5136 = fmul fast float %4112, 1.000000e+01
  %5137 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5138 = fmul fast float %5137, 2.000000e+00
  %5139 = fsub fast float 3.000000e+00, %5138
  %5140 = fmul fast float %5137, %5137
  %5141 = fmul fast float %5140, %5139
  %5142 = fsub fast float 1.000000e+00, %5141
  %5143 = fsub fast float 0x3FE3333340000000, %5115
  %5144 = fmul fast float %5143, 0x400AAAAAA0000000
  %5145 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5146 = fmul fast float %5142, %5145
  %5147 = fmul fast float %5106, 0x3FEA2B8620000000
  %5148 = fmul fast float %5107, 0x3FEA2B8620000000
  %5149 = fmul fast float %5108, 0x3FEA2B8620000000
  %5150 = fadd fast float %5147, 0x3FC81DFBA0000000
  %5151 = fmul fast float %5150, %5106
  %5152 = fadd fast float %5151, 0x3F910E6020000000
  %5153 = fadd fast float %5148, 0x3FC81DFBA0000000
  %5154 = fmul fast float %5153, %5107
  %5155 = fadd fast float %5154, 0x3F910E6020000000
  %5156 = fadd fast float %5149, 0x3FC81DFBA0000000
  %5157 = fmul fast float %5156, %5108
  %5158 = fadd fast float %5157, 0x3F910E6020000000
  %5159 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5160 = call float @dx.op.unary.f32(i32 7, float %5155)  ; Saturate(value)
  %5161 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5162 = fsub fast float %5159, %5106
  %5163 = fsub fast float %5160, %5107
  %5164 = fsub fast float %5161, %5108
  %5165 = fmul fast float %5162, %5129
  %5166 = fmul fast float %5165, %5146
  %5167 = fmul fast float %5163, %5129
  %5168 = fmul fast float %5167, %5146
  %5169 = fmul fast float %5164, %5129
  %5170 = fmul fast float %5169, %5146
  %5171 = fadd fast float %5166, %5106
  %5172 = fadd fast float %5168, %5107
  %5173 = fadd fast float %5170, %5108
  %5174 = fmul fast float %5116, %5116
  %5175 = fmul fast float %5174, %5174
  %5176 = fadd fast float %5132, 1.000000e+00
  %5177 = fsub fast float %5176, %5146
  %5178 = call float @dx.op.unary.f32(i32 7, float %5177)  ; Saturate(value)
  %5179 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5180 = call float @dx.op.unary.f32(i32 7, float %5179)  ; Saturate(value)
  %5181 = fsub fast float 1.000000e+00, %5175
  %5182 = call float @dx.op.binary.f32(i32 36, float %5178, float %5181)  ; FMin(a,b)
  %5183 = call float @dx.op.unary.f32(i32 7, float %5135)  ; Saturate(value)
  %5184 = call float @dx.op.binary.f32(i32 35, float %5182, float %5183)  ; FMax(a,b)
  %5185 = fadd fast float %5180, 0xBFE4CCCCC0000000
  %5186 = fmul fast float %5185, 0x4006DB6DA0000000
  %5187 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  %5188 = fmul fast float %5187, 2.000000e+00
  %5189 = fsub fast float 3.000000e+00, %5188
  %5190 = bitcast float %5109 to i32
  %5191 = ashr i32 %5190, 1
  %5192 = add nsw i32 %5191, 532487669
  %5193 = bitcast i32 %5192 to float
  %5194 = fsub fast float 1.000000e+00, %5193
  %5195 = bitcast float %5194 to i32
  %5196 = sub nsw i32 2129859010, %5195
  %5197 = bitcast i32 %5196 to float
  %5198 = fmul fast float %5197, 2.000000e+00
  %5199 = bitcast float %5110 to i32
  %5200 = ashr i32 %5199, 1
  %5201 = add nsw i32 %5200, 532487669
  %5202 = bitcast i32 %5201 to float
  %5203 = fsub fast float 1.000000e+00, %5202
  %5204 = bitcast float %5203 to i32
  %5205 = sub nsw i32 2129859010, %5204
  %5206 = bitcast i32 %5205 to float
  %5207 = fmul fast float %5206, 2.000000e+00
  %5208 = bitcast float %5111 to i32
  %5209 = ashr i32 %5208, 1
  %5210 = add nsw i32 %5209, 532487669
  %5211 = bitcast i32 %5210 to float
  %5212 = fsub fast float 1.000000e+00, %5211
  %5213 = bitcast float %5212 to i32
  %5214 = sub nsw i32 2129859010, %5213
  %5215 = bitcast i32 %5214 to float
  %5216 = fmul fast float %5215, 2.000000e+00
  %5217 = fsub fast float 0x4002A9FBE0000000, %5198
  %5218 = fadd fast float %5198, 0x3FD54FDF00000000
  %5219 = bitcast float %5218 to i32
  %5220 = sub nsw i32 2129859010, %5219
  %5221 = bitcast i32 %5220 to float
  %5222 = fmul fast float %5221, %5217
  %5223 = fmul fast float %5222, %5222
  %5224 = fsub fast float 0x4002A9FBE0000000, %5207
  %5225 = fadd fast float %5207, 0x3FD54FDF00000000
  %5226 = bitcast float %5225 to i32
  %5227 = sub nsw i32 2129859010, %5226
  %5228 = bitcast i32 %5227 to float
  %5229 = fmul fast float %5228, %5224
  %5230 = fmul fast float %5229, %5229
  %5231 = fsub fast float 0x4002A9FBE0000000, %5216
  %5232 = fadd fast float %5216, 0x3FD54FDF00000000
  %5233 = bitcast float %5232 to i32
  %5234 = sub nsw i32 2129859010, %5233
  %5235 = bitcast i32 %5234 to float
  %5236 = fmul fast float %5235, %5231
  %5237 = fmul fast float %5236, %5236
  %5238 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5223)  ; FMax(a,b)
  %5239 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5230)  ; FMax(a,b)
  %5240 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5237)  ; FMax(a,b)
  %5241 = fsub fast float 1.000000e+00, %5127
  %5242 = fadd fast float %5241, %5142
  %5243 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5244 = fsub fast float 1.000000e+00, %4521
  %5245 = fmul fast float %5184, %5244
  %5246 = fmul fast float %5187, %5187
  %5247 = fmul fast float %5246, %5245
  %5248 = fmul fast float %5247, %5189
  %5249 = fmul fast float %5244, 0xBFE99999A0000000
  %5250 = fmul fast float %5249, %5129
  %5251 = fmul fast float %5250, %5146
  %5252 = fadd fast float %5251, 1.000000e+00
  %5253 = fadd fast float %5115, -1.000000e+00
  %5254 = fmul fast float %5252, %5253
  %5255 = fadd fast float %5254, 1.000000e+00
  %5256 = fsub fast float %5238, %5109
  %5257 = fsub fast float %5239, %5110
  %5258 = fsub fast float %5240, %5111
  %5259 = fmul fast float %5248, %5256
  %5260 = fmul fast float %5248, %5257
  %5261 = fmul fast float %5248, %5258
  %5262 = fadd fast float %5259, %5109
  %5263 = fadd fast float %5260, %5110
  %5264 = fadd fast float %5261, %5111
  %5265 = fsub fast float %125, %5112
  %5266 = fsub fast float %126, %5113
  %5267 = fsub fast float %127, %5114
  %5268 = fmul fast float %5248, %5265
  %5269 = fmul fast float %5248, %5266
  %5270 = fmul fast float %5248, %5267
  %5271 = fadd fast float %5268, %5112
  %5272 = fadd fast float %5269, %5113
  %5273 = fadd fast float %5270, %5114
  %5274 = fmul fast float %5248, %5243
  %5275 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5276 = fsub fast float 1.000000e+00, %5275
  %5277 = fmul fast float %5274, %5276
  %5278 = fadd fast float %5277, %5275
  %5279 = fsub fast float 1.000000e+00, %5116
  %5280 = fmul fast float %5248, %5279
  %5281 = fadd fast float %5280, %5116
  %5282 = call float @dx.op.dot3.f32(i32 55, float %5271, float %5272, float %5273, float %5271, float %5272, float %5273)  ; Dot3(ax,ay,az,bx,by,bz)
  %5283 = call float @dx.op.unary.f32(i32 25, float %5282)  ; Rsqrt(value)
  %5284 = fmul fast float %5271, %5283
  %5285 = fmul fast float %5272, %5283
  %5286 = fmul fast float %5273, %5283
  br label %5287

; <label>:5287                                    ; preds = %5118, %5105
  %5288 = phi float [ %5171, %5118 ], [ %5106, %5105 ]
  %5289 = phi float [ %5172, %5118 ], [ %5107, %5105 ]
  %5290 = phi float [ %5173, %5118 ], [ %5108, %5105 ]
  %5291 = phi float [ %5262, %5118 ], [ %5109, %5105 ]
  %5292 = phi float [ %5263, %5118 ], [ %5110, %5105 ]
  %5293 = phi float [ %5264, %5118 ], [ %5111, %5105 ]
  %5294 = phi float [ %5284, %5118 ], [ %5112, %5105 ]
  %5295 = phi float [ %5285, %5118 ], [ %5113, %5105 ]
  %5296 = phi float [ %5286, %5118 ], [ %5114, %5105 ]
  %5297 = phi float [ %5278, %5118 ], [ %5115, %5105 ]
  %5298 = phi float [ %5281, %5118 ], [ %5116, %5105 ]
  %5299 = icmp eq i32 %64, 0
  br i1 %5299, label %5330, label %5300

; <label>:5300                                    ; preds = %5287
  %5301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.f32 %5301, 2
  %5303 = extractvalue %dx.types.CBufRet.f32 %5301, 3
  %5304 = fmul fast float %5302, %118
  %5305 = fmul fast float %5303, %119
  %5306 = fmul fast float %5304, 1.024000e+03
  %5307 = fmul fast float %5305, 1.024000e+03
  %5308 = fadd fast float %5306, -5.120000e+02
  %5309 = fadd fast float %5307, -5.120000e+02
  %5310 = fmul fast float %5304, 0x4081BEDF00000000
  %5311 = fadd fast float %5310, 0xC071BEDF00000000
  %5312 = call float @dx.op.unary.f32(i32 22, float %5311)  ; Frc(value)
  %5313 = fmul fast float %5308, %5312
  %5314 = fadd fast float %5313, %5309
  %5315 = fmul fast float %5305, 0x4073BEBE20000000
  %5316 = fadd fast float %5315, 0xC063BEBE20000000
  %5317 = call float @dx.op.unary.f32(i32 22, float %5316)  ; Frc(value)
  %5318 = fmul fast float %5309, %5317
  %5319 = fadd fast float %5318, %5308
  %5320 = fmul fast float %5314, %5319
  %5321 = call float @dx.op.unary.f32(i32 22, float %5320)  ; Frc(value)
  %5322 = add i32 %331, 12
  %5323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %5322, i32 undef)  ; BufferLoad(srv,index,wot)
  %5324 = extractvalue %dx.types.ResRet.i32 %5323, 0
  %5325 = and i32 %5324, 255
  %5326 = uitofp i32 %5325 to float
  %5327 = fmul fast float %5326, 0x3F70101020000000
  %5328 = fcmp fast olt float %5321, %5327
  br i1 %5328, label %5329, label %5330

; <label>:5329                                    ; preds = %5300
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5330

; <label>:5330                                    ; preds = %5329, %5300, %5287
  %5331 = fsub fast float -0.000000e+00, %207
  %5332 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %205, float %206, float %207)  ; Dot3(ax,ay,az,bx,by,bz)
  %5333 = call float @dx.op.unary.f32(i32 25, float %5332)  ; Rsqrt(value)
  %5334 = fmul fast float %5333, %205
  %5335 = fmul fast float %5333, %206
  %5336 = fmul fast float %5333, %207
  %5337 = fsub fast float -0.000000e+00, %5334
  %5338 = fsub fast float -0.000000e+00, %5335
  %5339 = fsub fast float -0.000000e+00, %5336
  %5340 = select i1 %277, float 0.000000e+00, float %5293
  %5341 = call float @dx.op.dot3.f32(i32 55, float %5294, float %5295, float %5296, float %5337, float %5338, float %5339)  ; Dot3(ax,ay,az,bx,by,bz)
  %5342 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5343 = call float @dx.op.dot3.f32(i32 55, float %5334, float %5335, float %5336, float %5294, float %5295, float %5296)  ; Dot3(ax,ay,az,bx,by,bz)
  %5344 = fmul fast float %5343, 2.000000e+00
  %5345 = fmul fast float %5344, %5294
  %5346 = fmul fast float %5344, %5295
  %5347 = fmul fast float %5344, %5296
  %5348 = fsub fast float %5334, %5345
  %5349 = fsub fast float %5335, %5346
  %5350 = fsub fast float %5336, %5347
  %5351 = call float @dx.op.binary.f32(i32 36, float %5298, float 1.000000e+00)  ; FMin(a,b)
  %5352 = fsub fast float 1.000000e+00, %5351
  %5353 = bitcast float %5352 to i32
  %5354 = ashr i32 %5353, 1
  %5355 = add nsw i32 %5354, 532487669
  %5356 = bitcast i32 %5355 to float
  %5357 = fsub fast float 1.000000e+00, %5297
  %5358 = call float @dx.op.binary.f32(i32 35, float %5357, float 0x3F847AE140000000)  ; FMax(a,b)
  %5359 = fmul fast float %5358, %5358
  %5360 = fmul fast float %5359, %5359
  %5361 = call float @dx.op.unary.f32(i32 7, float %5342)  ; Saturate(value)
  %5362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5356, float %5360, float %5361, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5363 = extractvalue %dx.types.ResRet.f32 %5362, 0
  %5364 = fsub fast float 1.000000e+00, %5298
  %5365 = bitcast float %5364 to i32
  %5366 = sub nsw i32 2129859010, %5365
  %5367 = bitcast i32 %5366 to float
  %5368 = fsub fast float 1.000000e+00, %85
  %5369 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %125, float %126, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %5370 = call float @dx.op.binary.f32(i32 35, float %5369, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5371 = fdiv fast float %5368, %5370
  %5372 = call float @dx.op.dot3.f32(i32 55, float %5294, float %5295, float %5296, float %125, float %126, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %5373 = call float @dx.op.unary.f32(i32 7, float %5372)  ; Saturate(value)
  %5374 = fmul fast float %5373, 5.000000e-01
  %5375 = fadd fast float %5374, 5.000000e-01
  %5376 = fmul fast float %5375, %85
  %5377 = call float @dx.op.dot3.f32(i32 55, float %5294, float %5295, float %5296, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %5378 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  %5379 = fmul fast float %5378, %5371
  %5380 = fadd fast float %5376, %5379
  %5381 = fsub fast float 5.000000e-01, %5374
  %5382 = fmul fast float %5381, %5288
  %5383 = fmul fast float %5381, %5289
  %5384 = fmul fast float %5381, %5290
  %5385 = fadd fast float %5380, %5382
  %5386 = fadd fast float %5380, %5383
  %5387 = fadd fast float %5380, %5384
  %5388 = call float @dx.op.dot3.f32(i32 55, float %5348, float %5349, float %5350, float %125, float %126, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %5389 = call float @dx.op.unary.f32(i32 7, float %5388)  ; Saturate(value)
  %5390 = fmul fast float %5389, 5.000000e-01
  %5391 = fadd fast float %5390, 5.000000e-01
  %5392 = fmul fast float %5391, %85
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5348, float %5349, float %5350, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = call float @dx.op.unary.f32(i32 7, float %5393)  ; Saturate(value)
  %5395 = fmul fast float %5394, %5371
  %5396 = fadd fast float %5392, %5395
  %5397 = fsub fast float 5.000000e-01, %5390
  %5398 = fmul fast float %5397, %5288
  %5399 = fmul fast float %5397, %5289
  %5400 = fmul fast float %5397, %5290
  %5401 = fadd fast float %5396, %5398
  %5402 = fadd fast float %5396, %5399
  %5403 = fadd fast float %5396, %5400
  %5404 = call float @dx.op.dot3.f32(i32 55, float %86, float %87, float %88, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5406 = extractvalue %dx.types.CBufRet.f32 %5405, 0
  %5407 = call float @dx.op.binary.f32(i32 36, float %5288, float %5406)  ; FMin(a,b)
  %5408 = fmul fast float %5407, %5352
  %5409 = fsub fast float 1.000000e+00, %5408
  %5410 = bitcast float %5409 to i32
  %5411 = sub nsw i32 2129859010, %5410
  %5412 = bitcast i32 %5411 to float
  %5413 = call float @dx.op.binary.f32(i32 36, float %5289, float %5406)  ; FMin(a,b)
  %5414 = fmul fast float %5413, %5352
  %5415 = fsub fast float 1.000000e+00, %5414
  %5416 = bitcast float %5415 to i32
  %5417 = sub nsw i32 2129859010, %5416
  %5418 = bitcast i32 %5417 to float
  %5419 = call float @dx.op.binary.f32(i32 36, float %5290, float %5406)  ; FMin(a,b)
  %5420 = fmul fast float %5419, %5352
  %5421 = fsub fast float 1.000000e+00, %5420
  %5422 = bitcast float %5421 to i32
  %5423 = sub nsw i32 2129859010, %5422
  %5424 = bitcast i32 %5423 to float
  %5425 = fmul fast float %5351, %86
  %5426 = fmul fast float %5425, %5385
  %5427 = fmul fast float %5426, %5412
  %5428 = fmul fast float %5351, %87
  %5429 = fmul fast float %5428, %5386
  %5430 = fmul fast float %5429, %5418
  %5431 = fmul fast float %5351, %88
  %5432 = fmul fast float %5431, %5387
  %5433 = fmul fast float %5432, %5424
  %5434 = call float @dx.op.binary.f32(i32 36, float %5291, float %5406)  ; FMin(a,b)
  %5435 = fmul fast float %5434, %5352
  %5436 = fsub fast float 1.000000e+00, %5435
  %5437 = bitcast float %5436 to i32
  %5438 = sub nsw i32 2129859010, %5437
  %5439 = bitcast i32 %5438 to float
  %5440 = call float @dx.op.binary.f32(i32 36, float %5292, float %5406)  ; FMin(a,b)
  %5441 = fmul fast float %5440, %5352
  %5442 = fsub fast float 1.000000e+00, %5441
  %5443 = bitcast float %5442 to i32
  %5444 = sub nsw i32 2129859010, %5443
  %5445 = bitcast i32 %5444 to float
  %5446 = call float @dx.op.binary.f32(i32 36, float %5340, float %5406)  ; FMin(a,b)
  %5447 = fmul fast float %5446, %5352
  %5448 = fsub fast float 1.000000e+00, %5447
  %5449 = bitcast float %5448 to i32
  %5450 = sub nsw i32 2129859010, %5449
  %5451 = bitcast i32 %5450 to float
  %5452 = fmul fast float %5425, %5401
  %5453 = fmul fast float %5452, %5439
  %5454 = fmul fast float %5428, %5402
  %5455 = fmul fast float %5454, %5445
  %5456 = fmul fast float %5431, %5403
  %5457 = fmul fast float %5456, %5451
  %5458 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5430, float %5433, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5459 = select i1 %277, float 0.000000e+00, float %5427
  %5460 = select i1 %277, float %5458, float %5430
  %5461 = select i1 %277, float 0.000000e+00, float %5433
  %5462 = call float @dx.op.dot3.f32(i32 55, float %5453, float %5455, float %5457, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5463 = select i1 %277, float 0.000000e+00, float %5453
  %5464 = select i1 %277, float %5462, float %5455
  %5465 = select i1 %277, float 0.000000e+00, float %5457
  %5466 = fmul fast float %5342, 9.843750e-01
  %5467 = fmul fast float %5297, 9.843750e-01
  %5468 = fadd fast float %5466, 7.812500e-03
  %5469 = fadd fast float %5467, 7.812500e-03
  %5470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %5468, float %5469, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5471 = extractvalue %dx.types.ResRet.f32 %5470, 2
  %5472 = extractvalue %dx.types.ResRet.f32 %5470, 3
  %5473 = fmul fast float %5471, %5291
  %5474 = fmul fast float %5471, %5292
  %5475 = fmul fast float %5471, %5340
  %5476 = fadd fast float %5473, %5472
  %5477 = fadd fast float %5474, %5472
  %5478 = fadd fast float %5475, %5472
  %5479 = fcmp fast ogt float %4106, 0.000000e+00
  br i1 %5479, label %5480, label %5506

; <label>:5480                                    ; preds = %5330
  %5481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4106, float %5342, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5482 = extractvalue %dx.types.ResRet.f32 %5481, 0
  %5483 = extractvalue %dx.types.ResRet.f32 %5481, 1
  %5484 = extractvalue %dx.types.ResRet.f32 %5481, 2
  %5485 = fadd fast float %5482, -5.000000e-01
  %5486 = fadd fast float %5483, -5.000000e-01
  %5487 = fadd fast float %5484, -5.000000e-01
  %5488 = fsub fast float 1.000000e+00, %5291
  %5489 = fsub fast float 1.000000e+00, %5292
  %5490 = fsub fast float 1.000000e+00, %5340
  %5491 = fmul fast float %5291, 4.000000e+00
  %5492 = fmul fast float %5491, %5488
  %5493 = fmul fast float %5492, %5485
  %5494 = fmul fast float %5292, 4.000000e+00
  %5495 = fmul fast float %5494, %5489
  %5496 = fmul fast float %5495, %5486
  %5497 = fmul fast float %5340, 4.000000e+00
  %5498 = fmul fast float %5497, %5490
  %5499 = fmul fast float %5498, %5487
  %5500 = fadd fast float %5493, %5476
  %5501 = fadd fast float %5496, %5477
  %5502 = fadd fast float %5499, %5478
  %5503 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  %5504 = call float @dx.op.unary.f32(i32 7, float %5501)  ; Saturate(value)
  %5505 = call float @dx.op.unary.f32(i32 7, float %5502)  ; Saturate(value)
  br label %5506

; <label>:5506                                    ; preds = %5480, %5330
  %5507 = phi float [ %5503, %5480 ], [ %5476, %5330 ]
  %5508 = phi float [ %5504, %5480 ], [ %5477, %5330 ]
  %5509 = phi float [ %5505, %5480 ], [ %5478, %5330 ]
  %5510 = call float @dx.op.binary.f32(i32 35, float %5508, float %5509)  ; FMax(a,b)
  %5511 = call float @dx.op.binary.f32(i32 35, float %5507, float %5510)  ; FMax(a,b)
  %5512 = fsub fast float 1.000000e+00, %5511
  %5513 = fmul fast float %5511, %5297
  %5514 = fadd fast float %5513, %5297
  %5515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5516 = extractvalue %dx.types.CBufRet.f32 %5515, 2
  %5517 = extractvalue %dx.types.CBufRet.f32 %5515, 3
  %5518 = fmul fast float %5514, %5516
  %5519 = fadd fast float %5518, %5517
  %5520 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5521 = fsub fast float 1.000000e+00, %5363
  %5522 = fadd fast float %5521, %5520
  %5523 = call float @dx.op.unary.f32(i32 7, float %5522)  ; Saturate(value)
  %5524 = fcmp fast olt float %5523, 1.000000e+00
  br i1 %5524, label %5525, label %6001

; <label>:5525                                    ; preds = %5506
  %5526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5527 = extractvalue %dx.types.CBufRet.f32 %5526, 2
  %5528 = extractvalue %dx.types.CBufRet.f32 %5526, 3
  %5529 = fmul fast float %5527, %118
  %5530 = fmul fast float %5528, %119
  %5531 = fptoui float %5529 to i32
  %5532 = fptoui float %5530 to i32
  %5533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5533, 0
  %5535 = extractvalue %dx.types.CBufRet.f32 %5533, 2
  %5536 = extractvalue %dx.types.CBufRet.f32 %5533, 3
  %5537 = fadd fast float %105, -4.000000e+00
  %5538 = call float @dx.op.binary.f32(i32 35, float %5537, float 0.000000e+00)  ; FMax(a,b)
  %5539 = fadd fast float %5538, %5534
  %5540 = fmul fast float %5539, %5535
  %5541 = call float @dx.op.unary.f32(i32 23, float %5540)  ; Log(value)
  %5542 = fmul fast float %5541, %5536
  %5543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5544 = extractvalue %dx.types.CBufRet.f32 %5543, 2
  %5545 = fmul fast float %5542, %5544
  %5546 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5547 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5548 = extractvalue %dx.types.CBufRet.i32 %5547, 1
  %5549 = add i32 %5548, -1
  %5550 = uitofp i32 %5548 to float
  %5551 = fmul fast float %5550, %5546
  %5552 = fptoui float %5551 to i32
  %5553 = call i32 @dx.op.binary.i32(i32 40, i32 %5552, i32 %5549)  ; UMin(a,b)
  %5554 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5555 = extractvalue %dx.types.CBufRet.i32 %5554, 2
  %5556 = extractvalue %dx.types.CBufRet.i32 %5554, 3
  %5557 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5532, i32 %5555, i32 %5531)  ; UMad(a,b,c)
  %5558 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5553, i32 %5556, i32 %5557)  ; UMad(a,b,c)
  %5559 = call float @dx.op.binary.f32(i32 35, float %105, float 0.000000e+00)  ; FMax(a,b)
  %5560 = fptoui float %5559 to i32
  %5561 = lshr i32 %5560, 5
  %5562 = call i32 @dx.op.binary.i32(i32 40, i32 %5561, i32 8191)  ; UMin(a,b)
  %5563 = fsub fast float %4508, %207
  %5564 = call float @dx.op.unary.f32(i32 7, float %5563)  ; Saturate(value)
  %5565 = fcmp fast ogt float %5564, 0.000000e+00
  %5566 = fcmp fast ogt float %5350, 0.000000e+00
  %5567 = and i1 %5566, %5565
  br i1 %5567, label %5568, label %5597

; <label>:5568                                    ; preds = %5525
  %5569 = call float @dx.op.dot3.f32(i32 55, float %5348, float %5349, float %5350, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5570 = call float @dx.op.binary.f32(i32 35, float %5569, float -1.000000e+00)  ; FMax(a,b)
  %5571 = call float @dx.op.binary.f32(i32 36, float %5570, float 1.000000e+00)  ; FMin(a,b)
  %5572 = fmul fast float %5571, %5571
  %5573 = fsub fast float 1.000000e+00, %5572
  %5574 = fmul fast float %5573, 0x3FFC6E2300000000
  %5575 = fsub fast float 1.000000e+00, %5574
  %5576 = fcmp fast ogt float %5575, 0.000000e+00
  %5577 = call float @dx.op.unary.f32(i32 24, float %5575)  ; Sqrt(value)
  %5578 = fsub fast float 1.000000e+00, %5577
  %5579 = call float @dx.op.unary.f32(i32 23, float %5578)  ; Log(value)
  %5580 = fmul fast float %5579, 5.000000e+00
  %5581 = call float @dx.op.unary.f32(i32 21, float %5580)  ; Exp(value)
  %5582 = fmul fast float %5581, 0x3FEF591A60000000
  %5583 = fadd fast float %5582, 0x3F94DCB540000000
  %5584 = select i1 %5576, float %5583, float 1.000000e+00
  %5585 = fcmp fast oge float %5584, 1.000000e+00
  %5586 = fmul fast float %5569, 2.000000e+00
  %5587 = fadd fast float %5586, %5350
  %5588 = select i1 %5585, float %5587, float %5350
  %5589 = fsub fast float %5588, %5350
  %5590 = fmul fast float %5589, %5564
  %5591 = fadd fast float %5590, %5350
  %5592 = call float @dx.op.dot3.f32(i32 55, float %5348, float %5349, float %5591, float %5348, float %5349, float %5591)  ; Dot3(ax,ay,az,bx,by,bz)
  %5593 = call float @dx.op.unary.f32(i32 25, float %5592)  ; Rsqrt(value)
  %5594 = fmul fast float %5593, %5348
  %5595 = fmul fast float %5593, %5349
  %5596 = fmul fast float %5591, %5593
  br label %5597

; <label>:5597                                    ; preds = %5568, %5525
  %5598 = phi float [ %5594, %5568 ], [ %5348, %5525 ]
  %5599 = phi float [ %5595, %5568 ], [ %5349, %5525 ]
  %5600 = phi float [ %5596, %5568 ], [ %5350, %5525 ]
  %5601 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5602 = extractvalue %dx.types.CBufRet.i32 %5601, 2
  %5603 = add nsw i32 %5602, -1
  %5604 = call i32 @dx.op.binary.i32(i32 37, i32 %5603, i32 0)  ; IMax(a,b)
  %5605 = shl i32 %5562, 2
  %5606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5605, i32 undef)  ; BufferLoad(srv,index,wot)
  %5607 = extractvalue %dx.types.ResRet.i32 %5606, 0
  %5608 = lshr i32 %5607, 16
  %5609 = and i32 %5607, 65535
  %5610 = lshr i32 %5607, 21
  %5611 = lshr i32 %5609, 5
  %5612 = call i32 @dx.op.binary.i32(i32 40, i32 %5611, i32 %5604)  ; UMin(a,b)
  %5613 = icmp ugt i32 %5610, %5612
  br i1 %5613, label %5977, label %5614

; <label>:5614                                    ; preds = %5597
  br label %5615

; <label>:5615                                    ; preds = %5969, %5614
  %5616 = phi float [ %5970, %5969 ], [ 0.000000e+00, %5614 ]
  %5617 = phi float [ %5971, %5969 ], [ 0.000000e+00, %5614 ]
  %5618 = phi float [ %5972, %5969 ], [ 0.000000e+00, %5614 ]
  %5619 = phi float [ %5973, %5969 ], [ 1.000000e+00, %5614 ]
  %5620 = phi i32 [ %5974, %5969 ], [ %5610, %5614 ]
  %5621 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5622 = extractvalue %dx.types.CBufRet.i32 %5621, 2
  %5623 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5558, i32 %5622, i32 %5620)  ; UMad(a,b,c)
  %5624 = shl i32 %5623, 2
  %5625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5624, i32 undef)  ; BufferLoad(srv,index,wot)
  %5626 = extractvalue %dx.types.ResRet.i32 %5625, 0
  %5627 = shl i32 %5620, 5
  %5628 = sub nsw i32 %5608, %5627
  %5629 = call i32 @dx.op.binary.i32(i32 37, i32 %5628, i32 0)  ; IMax(a,b)
  %5630 = call i32 @dx.op.binary.i32(i32 38, i32 %5629, i32 31)  ; IMin(a,b)
  %5631 = sub nsw i32 1, %5608
  %5632 = add nsw i32 %5631, %5609
  %5633 = call i32 @dx.op.binary.i32(i32 37, i32 %5632, i32 0)  ; IMax(a,b)
  %5634 = call i32 @dx.op.binary.i32(i32 38, i32 %5633, i32 32)  ; IMin(a,b)
  %5635 = and i32 %5634, 31
  %5636 = shl i32 -1, %5635
  %5637 = xor i32 %5636, -1
  %5638 = and i32 %5630, 31
  %5639 = shl i32 %5637, %5638
  %5640 = icmp eq i32 %5634, 32
  %5641 = select i1 %5640, i32 -1, i32 %5639
  %5642 = and i32 %5641, %5626
  %5643 = icmp eq i32 %5642, 0
  br i1 %5643, label %5969, label %5644

; <label>:5644                                    ; preds = %5615
  br label %5645

; <label>:5645                                    ; preds = %5752, %5644
  %5646 = phi float [ %5753, %5752 ], [ %5616, %5644 ]
  %5647 = phi float [ %5754, %5752 ], [ %5617, %5644 ]
  %5648 = phi float [ %5755, %5752 ], [ %5618, %5644 ]
  %5649 = phi float [ %5756, %5752 ], [ %5619, %5644 ]
  %5650 = phi i32 [ %5655, %5752 ], [ %5642, %5644 ]
  %5651 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5650)  ; FirstbitLo(value)
  %5652 = add i32 %5651, %5627
  %5653 = and i32 %5651, 31
  %5654 = shl i32 1, %5653
  %5655 = xor i32 %5654, %5650
  %5656 = mul i32 %5652, 72
  %5657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5656, i32 undef)  ; BufferLoad(srv,index,wot)
  %5658 = extractvalue %dx.types.ResRet.f32 %5657, 0
  %5659 = extractvalue %dx.types.ResRet.f32 %5657, 1
  %5660 = extractvalue %dx.types.ResRet.f32 %5657, 2
  %5661 = add i32 %5656, 12
  %5662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5661, i32 undef)  ; BufferLoad(srv,index,wot)
  %5663 = extractvalue %dx.types.ResRet.i32 %5662, 0
  %5664 = add i32 %5656, 16
  %5665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5664, i32 undef)  ; BufferLoad(srv,index,wot)
  %5666 = extractvalue %dx.types.ResRet.f32 %5665, 0
  %5667 = extractvalue %dx.types.ResRet.f32 %5665, 1
  %5668 = extractvalue %dx.types.ResRet.f32 %5665, 2
  %5669 = add i32 %5656, 28
  %5670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5669, i32 undef)  ; BufferLoad(srv,index,wot)
  %5671 = extractvalue %dx.types.ResRet.f32 %5670, 0
  %5672 = add i32 %5656, 32
  %5673 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5672, i32 undef)  ; BufferLoad(srv,index,wot)
  %5674 = extractvalue %dx.types.ResRet.f32 %5673, 0
  %5675 = extractvalue %dx.types.ResRet.f32 %5673, 1
  %5676 = extractvalue %dx.types.ResRet.f32 %5673, 2
  %5677 = extractvalue %dx.types.ResRet.f32 %5673, 3
  %5678 = add i32 %5656, 48
  %5679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5678, i32 undef)  ; BufferLoad(srv,index,wot)
  %5680 = extractvalue %dx.types.ResRet.f32 %5679, 0
  %5681 = extractvalue %dx.types.ResRet.f32 %5679, 1
  %5682 = add i32 %5656, 56
  %5683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5682, i32 undef)  ; BufferLoad(srv,index,wot)
  %5684 = extractvalue %dx.types.ResRet.f32 %5683, 0
  %5685 = extractvalue %dx.types.ResRet.f32 %5683, 1
  %5686 = add i32 %5656, 64
  %5687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5686, i32 undef)  ; BufferLoad(srv,index,wot)
  %5688 = extractvalue %dx.types.ResRet.f32 %5687, 0
  %5689 = extractvalue %dx.types.ResRet.f32 %5687, 1
  %5690 = mul i32 %5652, 60
  %5691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5690, i32 undef)  ; BufferLoad(srv,index,wot)
  %5692 = extractvalue %dx.types.ResRet.f32 %5691, 0
  %5693 = extractvalue %dx.types.ResRet.f32 %5691, 1
  %5694 = extractvalue %dx.types.ResRet.f32 %5691, 2
  %5695 = add i32 %5690, 12
  %5696 = add i32 %5690, 48
  %5697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5696, i32 undef)  ; BufferLoad(srv,index,wot)
  %5698 = extractvalue %dx.types.ResRet.f32 %5697, 0
  %5699 = extractvalue %dx.types.ResRet.f32 %5697, 1
  %5700 = extractvalue %dx.types.ResRet.f32 %5697, 2
  %5701 = and i32 %5663, 32767
  %5702 = bitcast float %5658 to i32
  %5703 = icmp eq i32 %5702, -1
  %5704 = bitcast float %5659 to i32
  %5705 = and i32 %5663, 32768
  %5706 = icmp ne i32 %5705, 0
  %5707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5708 = extractvalue %dx.types.CBufRet.f32 %5707, 0
  %5709 = extractvalue %dx.types.CBufRet.f32 %5707, 1
  %5710 = extractvalue %dx.types.CBufRet.f32 %5707, 2
  %5711 = fsub fast float %5692, %5708
  %5712 = fsub fast float %5693, %5709
  %5713 = fsub fast float %5694, %5710
  %5714 = fsub fast float %205, %5711
  %5715 = fsub fast float %206, %5712
  %5716 = fsub fast float %207, %5713
  %5717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5695, i32 undef)  ; BufferLoad(srv,index,wot)
  %5718 = extractvalue %dx.types.ResRet.f32 %5717, 0
  %5719 = extractvalue %dx.types.ResRet.f32 %5717, 1
  %5720 = extractvalue %dx.types.ResRet.f32 %5717, 2
  %5721 = call float @dx.op.dot3.f32(i32 55, float %5714, float %5715, float %5716, float %5718, float %5719, float %5720)  ; Dot3(ax,ay,az,bx,by,bz)
  %5722 = add i32 %5690, 24
  %5723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5722, i32 undef)  ; BufferLoad(srv,index,wot)
  %5724 = extractvalue %dx.types.ResRet.f32 %5723, 0
  %5725 = extractvalue %dx.types.ResRet.f32 %5723, 1
  %5726 = extractvalue %dx.types.ResRet.f32 %5723, 2
  %5727 = call float @dx.op.dot3.f32(i32 55, float %5714, float %5715, float %5716, float %5724, float %5725, float %5726)  ; Dot3(ax,ay,az,bx,by,bz)
  %5728 = add i32 %5690, 36
  %5729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5728, i32 undef)  ; BufferLoad(srv,index,wot)
  %5730 = extractvalue %dx.types.ResRet.f32 %5729, 0
  %5731 = extractvalue %dx.types.ResRet.f32 %5729, 1
  %5732 = extractvalue %dx.types.ResRet.f32 %5729, 2
  %5733 = call float @dx.op.dot3.f32(i32 55, float %5714, float %5715, float %5716, float %5730, float %5731, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5734 = call float @dx.op.unary.f32(i32 6, float %5721)  ; FAbs(value)
  %5735 = call float @dx.op.unary.f32(i32 6, float %5727)  ; FAbs(value)
  %5736 = call float @dx.op.unary.f32(i32 6, float %5733)  ; FAbs(value)
  %5737 = fsub fast float %5698, %5734
  %5738 = fsub fast float %5699, %5735
  %5739 = fsub fast float %5700, %5736
  %5740 = fmul fast float %5737, %5666
  %5741 = fmul fast float %5738, %5667
  %5742 = fmul fast float %5739, %5668
  %5743 = call float @dx.op.binary.f32(i32 36, float %5741, float %5742)  ; FMin(a,b)
  %5744 = call float @dx.op.binary.f32(i32 36, float %5740, float %5743)  ; FMin(a,b)
  %5745 = call float @dx.op.unary.f32(i32 7, float %5744)  ; Saturate(value)
  %5746 = call float @dx.op.binary.f32(i32 36, float %5649, float %5745)  ; FMin(a,b)
  %5747 = uitofp i1 %5706 to float
  %5748 = fadd fast float %5564, 1.000000e+00
  %5749 = fsub fast float %5748, %5747
  %5750 = fmul fast float %5746, %5749
  %5751 = fcmp fast ogt float %5750, 0.000000e+00
  br i1 %5751, label %5758, label %5752

; <label>:5752                                    ; preds = %5900, %5645
  %5753 = phi float [ %5964, %5900 ], [ %5646, %5645 ]
  %5754 = phi float [ %5965, %5900 ], [ %5647, %5645 ]
  %5755 = phi float [ %5966, %5900 ], [ %5648, %5645 ]
  %5756 = phi float [ %5967, %5900 ], [ %5649, %5645 ]
  %5757 = icmp eq i32 %5650, %5654
  br i1 %5757, label %5968, label %5645

; <label>:5758                                    ; preds = %5645
  br i1 %5703, label %5816, label %5759

; <label>:5759                                    ; preds = %5758
  %5760 = fsub fast float -0.000000e+00, %5718
  %5761 = fsub fast float -0.000000e+00, %5719
  %5762 = fsub fast float -0.000000e+00, %5720
  %5763 = call float @dx.op.dot3.f32(i32 55, float %5598, float %5599, float %5600, float %5760, float %5761, float %5762)  ; Dot3(ax,ay,az,bx,by,bz)
  %5764 = fsub fast float -0.000000e+00, %5763
  %5765 = call float @dx.op.dot3.f32(i32 55, float %5714, float %5715, float %5716, float %5760, float %5761, float %5762)  ; Dot3(ax,ay,az,bx,by,bz)
  %5766 = fadd fast float %5765, %5681
  %5767 = fadd fast float %5680, %5765
  %5768 = fsub fast float -0.000000e+00, %5767
  %5769 = fcmp ogt float %5763, -0.000000e+00
  %5770 = select i1 %5769, float %5768, float %5766
  %5771 = call float @dx.op.unary.f32(i32 6, float %5764)  ; FAbs(value)
  %5772 = fdiv fast float 1.000000e+00, %5771
  %5773 = fmul fast float %5770, %5772
  %5774 = call float @dx.op.binary.f32(i32 35, float %5773, float 0.000000e+00)  ; FMax(a,b)
  %5775 = fsub fast float -0.000000e+00, %5724
  %5776 = fsub fast float -0.000000e+00, %5725
  %5777 = fsub fast float -0.000000e+00, %5726
  %5778 = call float @dx.op.dot3.f32(i32 55, float %5598, float %5599, float %5600, float %5775, float %5776, float %5777)  ; Dot3(ax,ay,az,bx,by,bz)
  %5779 = fsub fast float -0.000000e+00, %5778
  %5780 = call float @dx.op.dot3.f32(i32 55, float %5714, float %5715, float %5716, float %5775, float %5776, float %5777)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = fadd fast float %5780, %5685
  %5782 = fadd fast float %5684, %5780
  %5783 = fsub fast float -0.000000e+00, %5782
  %5784 = fcmp ogt float %5778, -0.000000e+00
  %5785 = select i1 %5784, float %5783, float %5781
  %5786 = call float @dx.op.unary.f32(i32 6, float %5779)  ; FAbs(value)
  %5787 = fdiv fast float 1.000000e+00, %5786
  %5788 = fmul fast float %5785, %5787
  %5789 = call float @dx.op.binary.f32(i32 35, float %5788, float 0.000000e+00)  ; FMax(a,b)
  %5790 = fsub fast float -0.000000e+00, %5730
  %5791 = fsub fast float -0.000000e+00, %5731
  %5792 = fsub fast float -0.000000e+00, %5732
  %5793 = call float @dx.op.dot3.f32(i32 55, float %5598, float %5599, float %5600, float %5790, float %5791, float %5792)  ; Dot3(ax,ay,az,bx,by,bz)
  %5794 = fsub fast float -0.000000e+00, %5793
  %5795 = call float @dx.op.dot3.f32(i32 55, float %5714, float %5715, float %5716, float %5790, float %5791, float %5792)  ; Dot3(ax,ay,az,bx,by,bz)
  %5796 = fadd fast float %5795, %5689
  %5797 = fadd fast float %5688, %5795
  %5798 = fsub fast float -0.000000e+00, %5797
  %5799 = fcmp ogt float %5793, -0.000000e+00
  %5800 = select i1 %5799, float %5798, float %5796
  %5801 = call float @dx.op.unary.f32(i32 6, float %5794)  ; FAbs(value)
  %5802 = fdiv fast float 1.000000e+00, %5801
  %5803 = fmul fast float %5800, %5802
  %5804 = call float @dx.op.binary.f32(i32 35, float %5803, float 0.000000e+00)  ; FMax(a,b)
  %5805 = call float @dx.op.binary.f32(i32 36, float %5789, float %5804)  ; FMin(a,b)
  %5806 = call float @dx.op.binary.f32(i32 36, float %5774, float %5805)  ; FMin(a,b)
  %5807 = fmul fast float %5806, %5598
  %5808 = fmul fast float %5806, %5599
  %5809 = fmul fast float %5806, %5600
  %5810 = fadd fast float %5807, %205
  %5811 = fadd fast float %5808, %206
  %5812 = fadd fast float %5809, %207
  %5813 = fsub fast float %5810, %5658
  %5814 = fsub fast float %5811, %5659
  %5815 = fsub fast float %5812, %5660
  br label %5823

; <label>:5816                                    ; preds = %5758
  %5817 = fmul fast float %5598, 8.096000e+03
  %5818 = fmul fast float %5599, 8.096000e+03
  %5819 = fmul fast float %5600, 8.096000e+03
  %5820 = fadd fast float %5817, %205
  %5821 = fadd fast float %5818, %206
  %5822 = fadd fast float %5819, %207
  br label %5823

; <label>:5823                                    ; preds = %5816, %5759
  %5824 = phi float [ %5598, %5816 ], [ %5813, %5759 ]
  %5825 = phi float [ %5599, %5816 ], [ %5814, %5759 ]
  %5826 = phi float [ %5600, %5816 ], [ %5815, %5759 ]
  %5827 = phi float [ %5820, %5816 ], [ %5810, %5759 ]
  %5828 = phi float [ %5821, %5816 ], [ %5811, %5759 ]
  %5829 = phi float [ %5822, %5816 ], [ %5812, %5759 ]
  %5830 = fcmp fast olt float %5677, 1.000000e+00
  br i1 %5830, label %5831, label %5862, !dx.controlflow.hints !103

; <label>:5831                                    ; preds = %5823
  %5832 = fmul fast float %5826, %5675
  %5833 = fmul fast float %5825, %5676
  %5834 = fsub fast float %5832, %5833
  %5835 = fmul fast float %5824, %5676
  %5836 = fmul fast float %5826, %5674
  %5837 = fsub fast float %5835, %5836
  %5838 = fmul fast float %5825, %5674
  %5839 = fmul fast float %5824, %5675
  %5840 = fsub fast float %5838, %5839
  %5841 = fmul fast float %5834, 2.000000e+00
  %5842 = fmul fast float %5837, 2.000000e+00
  %5843 = fmul fast float %5840, 2.000000e+00
  %5844 = fmul fast float %5841, %5677
  %5845 = fmul fast float %5842, %5677
  %5846 = fmul fast float %5843, %5677
  %5847 = fmul fast float %5843, %5675
  %5848 = fmul fast float %5842, %5676
  %5849 = fmul fast float %5841, %5676
  %5850 = fmul fast float %5843, %5674
  %5851 = fmul fast float %5842, %5674
  %5852 = fmul fast float %5841, %5675
  %5853 = fadd fast float %5847, %5824
  %5854 = fadd fast float %5853, %5844
  %5855 = fsub fast float %5854, %5848
  %5856 = fsub fast float %5825, %5850
  %5857 = fadd fast float %5856, %5845
  %5858 = fadd fast float %5857, %5849
  %5859 = fadd fast float %5846, %5826
  %5860 = fsub fast float %5859, %5852
  %5861 = fadd fast float %5860, %5851
  br label %5862

; <label>:5862                                    ; preds = %5831, %5823
  %5863 = phi float [ %5855, %5831 ], [ %5824, %5823 ]
  %5864 = phi float [ %5858, %5831 ], [ %5825, %5823 ]
  %5865 = phi float [ %5861, %5831 ], [ %5826, %5823 ]
  br i1 %5703, label %5897, label %5866

; <label>:5866                                    ; preds = %5862
  %5867 = fmul fast float %5297, 0x400187C840000000
  %5868 = fadd fast float %5867, 0xC00EFC2120000000
  %5869 = fmul fast float %5868, %5297
  %5870 = fadd fast float %5869, 0x3FE5D16340000000
  %5871 = fmul fast float %5870, %5297
  %5872 = fadd fast float %5871, 1.000000e+00
  %5873 = call float @dx.op.unary.f32(i32 7, float %5872)  ; Saturate(value)
  %5874 = fsub fast float %5827, %205
  %5875 = fsub fast float %5828, %206
  %5876 = fsub fast float %5829, %207
  %5877 = fsub fast float %5827, %5658
  %5878 = fsub fast float %5828, %5659
  %5879 = fsub fast float %5829, %5660
  %5880 = call float @dx.op.dot3.f32(i32 55, float %5874, float %5875, float %5876, float %5874, float %5875, float %5876)  ; Dot3(ax,ay,az,bx,by,bz)
  %5881 = call float @dx.op.dot3.f32(i32 55, float %5877, float %5878, float %5879, float %5877, float %5878, float %5879)  ; Dot3(ax,ay,az,bx,by,bz)
  %5882 = fadd fast float %5881, 0x3EE4F8B580000000
  %5883 = fdiv fast float %5880, %5882
  %5884 = bitcast float %5883 to i32
  %5885 = ashr i32 %5884, 1
  %5886 = add nsw i32 %5885, 532487669
  %5887 = bitcast i32 %5886 to float
  %5888 = fmul fast float %5887, %5873
  %5889 = call float @dx.op.unary.f32(i32 7, float %5888)  ; Saturate(value)
  %5890 = fmul fast float %5889, 0x4009981AE0000000
  %5891 = fsub fast float 0x40111BBD80000000, %5890
  %5892 = fmul fast float %5891, %5889
  %5893 = fadd fast float %5892, 0xC0009F6020000000
  %5894 = fmul fast float %5893, %5889
  %5895 = fadd fast float %5894, 1.000000e+00
  %5896 = call float @dx.op.unary.f32(i32 7, float %5895)  ; Saturate(value)
  br label %5900

; <label>:5897                                    ; preds = %5862
  %5898 = icmp ne i32 %5704, -1
  %5899 = zext i1 %5898 to i32
  br label %5900

; <label>:5900                                    ; preds = %5897, %5866
  %5901 = phi float [ %5297, %5897 ], [ %5896, %5866 ]
  %5902 = phi i32 [ %5899, %5897 ], [ 0, %5866 ]
  %5903 = fmul float %5901, 5.000000e+00
  %5904 = fsub float 5.000000e+00, %5903
  %5905 = icmp ne i32 %5902, 0
  %5906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5907 = extractvalue %dx.types.CBufRet.f32 %5906, 3
  %5908 = fadd fast float %5907, %5904
  %5909 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5908)  ; FMax(a,b)
  %5910 = call float @dx.op.unary.f32(i32 6, float %5863)  ; FAbs(value)
  %5911 = call float @dx.op.unary.f32(i32 6, float %5864)  ; FAbs(value)
  %5912 = fadd fast float %5911, %5910
  %5913 = call float @dx.op.unary.f32(i32 6, float %5865)  ; FAbs(value)
  %5914 = fadd fast float %5912, %5913
  %5915 = fcmp fast oeq float %5914, 0.000000e+00
  %5916 = fdiv fast float 1.000000e+00, %5914
  %5917 = select i1 %5915, float 1.000000e+00, float %5916
  %5918 = fmul fast float %5917, %5863
  %5919 = fmul fast float %5917, %5864
  %5920 = call float @dx.op.unary.f32(i32 6, float %5919)  ; FAbs(value)
  %5921 = call float @dx.op.unary.f32(i32 6, float %5918)  ; FAbs(value)
  %5922 = fsub fast float 1.000000e+00, %5920
  %5923 = fsub fast float 1.000000e+00, %5921
  %5924 = fcmp fast oge float %5918, 0.000000e+00
  %5925 = fcmp fast oge float %5919, 0.000000e+00
  %5926 = select i1 %5924, float 1.000000e+00, float -1.000000e+00
  %5927 = select i1 %5925, float 1.000000e+00, float -1.000000e+00
  %5928 = fcmp fast ole float %5865, 0.000000e+00
  %5929 = fmul fast float %5926, %5922
  %5930 = fmul fast float %5927, %5923
  %5931 = select i1 %5928, float %5929, float %5918
  %5932 = select i1 %5928, float %5930, float %5919
  %5933 = fmul fast float %5931, 5.000000e-01
  %5934 = fmul fast float %5932, 5.000000e-01
  %5935 = fadd fast float %5933, 5.000000e-01
  %5936 = fadd fast float %5934, 5.000000e-01
  %5937 = uitofp i32 %5701 to float
  %5938 = call float @dx.op.binary.f32(i32 36, float %5909, float 3.000000e+00)  ; FMin(a,b)
  %5939 = fadd fast float %5938, 2.000000e+00
  %5940 = call float @dx.op.unary.f32(i32 21, float %5939)  ; Exp(value)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5906, 1
  %5942 = fmul fast float %5941, %5940
  %5943 = fmul fast float %5942, 2.000000e+00
  %5944 = fsub fast float 1.000000e+00, %5943
  %5945 = fmul fast float %5935, %5944
  %5946 = fmul fast float %5936, %5944
  %5947 = fadd fast float %5945, %5942
  %5948 = fadd fast float %5946, %5942
  %5949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %54, float %5947, float %5948, float %5937, float undef, i32 0, i32 0, i32 undef, float %5909)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5950 = extractvalue %dx.types.ResRet.f32 %5949, 0
  %5951 = extractvalue %dx.types.ResRet.f32 %5949, 1
  %5952 = extractvalue %dx.types.ResRet.f32 %5949, 2
  %5953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5954 = extractvalue %dx.types.CBufRet.f32 %5953, 3
  %5955 = fmul fast float %5954, %5671
  %5956 = call float @dx.op.binary.f32(i32 36, float %5404, float %5955)  ; FMin(a,b)
  %5957 = select i1 %5905, float %5956, float %5955
  %5958 = fmul fast float %5950, %5750
  %5959 = fmul fast float %5958, %5957
  %5960 = fmul fast float %5951, %5750
  %5961 = fmul fast float %5960, %5957
  %5962 = fmul fast float %5952, %5750
  %5963 = fmul fast float %5962, %5957
  %5964 = fadd fast float %5959, %5646
  %5965 = fadd fast float %5961, %5647
  %5966 = fadd fast float %5963, %5648
  %5967 = fsub fast float %5649, %5750
  br label %5752

; <label>:5968                                    ; preds = %5752
  br label %5969

; <label>:5969                                    ; preds = %5968, %5615
  %5970 = phi float [ %5616, %5615 ], [ %5753, %5968 ]
  %5971 = phi float [ %5617, %5615 ], [ %5754, %5968 ]
  %5972 = phi float [ %5618, %5615 ], [ %5755, %5968 ]
  %5973 = phi float [ %5619, %5615 ], [ %5756, %5968 ]
  %5974 = add i32 %5620, 1
  %5975 = icmp ugt i32 %5974, %5612
  br i1 %5975, label %5976, label %5615, !llvm.loop !104

; <label>:5976                                    ; preds = %5969
  br label %5977

; <label>:5977                                    ; preds = %5976, %5597
  %5978 = phi float [ 0.000000e+00, %5597 ], [ %5970, %5976 ]
  %5979 = phi float [ 0.000000e+00, %5597 ], [ %5971, %5976 ]
  %5980 = phi float [ 0.000000e+00, %5597 ], [ %5972, %5976 ]
  %5981 = call float @dx.op.dot3.f32(i32 55, float %5978, float %5979, float %5980, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5982 = select i1 %277, float 0.000000e+00, float %5978
  %5983 = select i1 %277, float %5981, float %5979
  %5984 = select i1 %277, float 0.000000e+00, float %5980
  %5985 = fcmp fast olt float %5523, 0.000000e+00
  %5986 = call float @dx.op.unary.f32(i32 6, float %5523)  ; FAbs(value)
  %5987 = fmul fast float %5986, %5463
  %5988 = fmul fast float %5986, %5464
  %5989 = fmul fast float %5986, %5465
  %5990 = select i1 %5985, float %5463, float %5987
  %5991 = select i1 %5985, float %5464, float %5988
  %5992 = select i1 %5985, float %5465, float %5989
  %5993 = fsub fast float 1.000000e+00, %5986
  %5994 = call float @dx.op.unary.f32(i32 7, float %5993)  ; Saturate(value)
  %5995 = fmul fast float %5994, %5982
  %5996 = fmul fast float %5994, %5983
  %5997 = fmul fast float %5994, %5984
  %5998 = fadd fast float %5990, %5995
  %5999 = fadd fast float %5991, %5996
  %6000 = fadd fast float %5992, %5997
  br label %6001

; <label>:6001                                    ; preds = %5977, %5506
  %6002 = phi float [ %5463, %5506 ], [ %5998, %5977 ]
  %6003 = phi float [ %5464, %5506 ], [ %5999, %5977 ]
  %6004 = phi float [ %5465, %5506 ], [ %6000, %5977 ]
  %6005 = fmul fast float %5512, %5459
  %6006 = fmul fast float %5512, %5460
  %6007 = fmul fast float %5512, %5461
  %6008 = call float @dx.op.dot3.f32(i32 55, float %5288, float %5289, float %5290, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6009 = fcmp fast ogt float %6008, 0x3E7FF19E20000000
  %6010 = fdiv fast float 1.000000e+00, %6008
  %6011 = select i1 %6009, float %6010, float 0.000000e+00
  %6012 = fmul fast float %6011, %5288
  %6013 = fmul fast float %6011, %5289
  %6014 = fmul fast float %6011, %5290
  %6015 = fadd fast float %6012, -1.000000e+00
  %6016 = fadd fast float %6013, -1.000000e+00
  %6017 = fadd fast float %6014, -1.000000e+00
  %6018 = fmul fast float %6015, 5.000000e-01
  %6019 = fmul fast float %6016, 5.000000e-01
  %6020 = fmul fast float %6017, 5.000000e-01
  %6021 = fadd fast float %6018, 1.000000e+00
  %6022 = fadd fast float %6019, 1.000000e+00
  %6023 = fadd fast float %6020, 1.000000e+00
  %6024 = fmul fast float %6002, %5507
  %6025 = fmul fast float %6003, %5508
  %6026 = fmul fast float %6004, %5509
  %6027 = fsub fast float 1.000000e+00, %5342
  %6028 = bitcast float %6027 to i32
  %6029 = sitofp i32 %6028 to float
  %6030 = fmul fast float %6029, 5.000000e+00
  %6031 = fadd fast float %6030, 0xC1EFBF8940000000
  %6032 = fptosi float %6031 to i32
  %6033 = bitcast i32 %6032 to float
  %6034 = fmul fast float %6033, %4107
  %6035 = fmul fast float %5459, %6034
  %6036 = fmul fast float %6035, %5512
  %6037 = fmul fast float %6036, %6021
  %6038 = fmul fast float %5460, %6034
  %6039 = fmul fast float %6038, %5512
  %6040 = fmul fast float %6039, %6022
  %6041 = fmul fast float %5461, %6034
  %6042 = fmul fast float %6041, %5512
  %6043 = fmul fast float %6042, %6023
  %6044 = fmul fast float %6005, %4103
  %6045 = fmul fast float %6006, %4103
  %6046 = fmul fast float %6007, %4103
  %6047 = fadd fast float %6024, %4099
  %6048 = fadd fast float %6047, %6037
  %6049 = fmul fast float %6048, %4103
  %6050 = fadd fast float %6025, %4100
  %6051 = fadd fast float %6050, %6040
  %6052 = fmul fast float %6051, %4103
  %6053 = fadd fast float %6026, %4101
  %6054 = fadd fast float %6053, %6043
  %6055 = fmul fast float %6054, %4103
  %6056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6057 = extractvalue %dx.types.CBufRet.f32 %6056, 3
  %6058 = fcmp fast oeq float %6057, 0.000000e+00
  br i1 %6058, label %7762, label %6059

; <label>:6059                                    ; preds = %6001
  %6060 = extractvalue %dx.types.CBufRet.f32 %6056, 0
  %6061 = extractvalue %dx.types.CBufRet.f32 %6056, 1
  %6062 = extractvalue %dx.types.CBufRet.f32 %6056, 2
  %6063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6064 = extractvalue %dx.types.CBufRet.f32 %6063, 0
  %6065 = extractvalue %dx.types.CBufRet.f32 %6063, 1
  %6066 = extractvalue %dx.types.CBufRet.f32 %6063, 2
  %6067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6068 = extractvalue %dx.types.CBufRet.f32 %6067, 0
  %6069 = extractvalue %dx.types.CBufRet.f32 %6067, 1
  %6070 = call float @dx.op.dot3.f32(i32 55, float %6064, float %6065, float %6066, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6071 = select i1 %277, float %6068, float %6064
  %6072 = select i1 %277, float %6070, float %6065
  %6073 = select i1 %277, float %6069, float %6066
  %6074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6075 = extractvalue %dx.types.CBufRet.f32 %6074, 2
  %6076 = fmul fast float %6075, %125
  %6077 = fmul fast float %6075, %126
  %6078 = fmul fast float %6075, %127
  %6079 = fadd fast float %6076, %205
  %6080 = fadd fast float %6077, %206
  %6081 = fadd fast float %6078, %207
  %6082 = fcmp fast olt float %6057, 0.000000e+00
  br i1 %6082, label %7340, label %6083

; <label>:6083                                    ; preds = %6059
  %6084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6085 = extractvalue %dx.types.CBufRet.f32 %6084, 0
  %6086 = extractvalue %dx.types.CBufRet.f32 %6084, 1
  %6087 = extractvalue %dx.types.CBufRet.f32 %6084, 2
  %6088 = extractvalue %dx.types.CBufRet.f32 %6084, 3
  %6089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.f32 %6089, 0
  %6091 = extractvalue %dx.types.CBufRet.f32 %6089, 1
  %6092 = extractvalue %dx.types.CBufRet.f32 %6089, 2
  %6093 = extractvalue %dx.types.CBufRet.f32 %6089, 3
  %6094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6095 = extractvalue %dx.types.CBufRet.f32 %6094, 0
  %6096 = extractvalue %dx.types.CBufRet.f32 %6094, 1
  %6097 = extractvalue %dx.types.CBufRet.f32 %6094, 2
  %6098 = extractvalue %dx.types.CBufRet.f32 %6094, 3
  %6099 = fmul fast float %6085, %6079
  %6100 = call float @dx.op.tertiary.f32(i32 46, float %6080, float %6086, float %6099)  ; FMad(a,b,c)
  %6101 = call float @dx.op.tertiary.f32(i32 46, float %6081, float %6087, float %6100)  ; FMad(a,b,c)
  %6102 = fadd fast float %6101, %6088
  %6103 = fmul fast float %6090, %6079
  %6104 = call float @dx.op.tertiary.f32(i32 46, float %6080, float %6091, float %6103)  ; FMad(a,b,c)
  %6105 = call float @dx.op.tertiary.f32(i32 46, float %6081, float %6092, float %6104)  ; FMad(a,b,c)
  %6106 = fadd fast float %6105, %6093
  %6107 = fmul fast float %6095, %6079
  %6108 = call float @dx.op.tertiary.f32(i32 46, float %6080, float %6096, float %6107)  ; FMad(a,b,c)
  %6109 = call float @dx.op.tertiary.f32(i32 46, float %6081, float %6097, float %6108)  ; FMad(a,b,c)
  %6110 = fadd fast float %6109, %6098
  %6111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6112 = extractvalue %dx.types.CBufRet.f32 %6111, 0
  %6113 = fcmp fast une float %6112, 0.000000e+00
  %6114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6115 = extractvalue %dx.types.CBufRet.f32 %6114, 0
  %6116 = extractvalue %dx.types.CBufRet.f32 %6114, 1
  %6117 = extractvalue %dx.types.CBufRet.f32 %6114, 3
  %6118 = fmul fast float %6117, %6102
  %6119 = fmul fast float %6117, %6106
  %6120 = fadd fast float %6118, %6115
  %6121 = fadd fast float %6119, %6116
  %6122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6123 = extractvalue %dx.types.CBufRet.f32 %6122, 0
  %6124 = extractvalue %dx.types.CBufRet.f32 %6122, 1
  %6125 = extractvalue %dx.types.CBufRet.f32 %6122, 3
  %6126 = fmul fast float %6125, %6102
  %6127 = fmul fast float %6125, %6106
  %6128 = fadd fast float %6126, %6123
  %6129 = fadd fast float %6127, %6124
  %6130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6131 = extractvalue %dx.types.CBufRet.f32 %6130, 1
  %6132 = fsub fast float %6131, %6110
  %6133 = extractvalue %dx.types.CBufRet.f32 %6130, 2
  %6134 = fmul fast float %6132, %6133
  %6135 = fsub fast float 1.000000e+00, %6134
  %6136 = call float @dx.op.unary.f32(i32 7, float %6135)  ; Saturate(value)
  br i1 %6113, label %6197, label %6137

; <label>:6137                                    ; preds = %6083
  %6138 = extractvalue %dx.types.CBufRet.f32 %6122, 2
  %6139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6140 = extractvalue %dx.types.CBufRet.f32 %6139, 2
  %6141 = fadd fast float %6140, %6138
  %6142 = fcmp fast ogt float %6141, 0.000000e+00
  br i1 %6142, label %6143, label %6167

; <label>:6143                                    ; preds = %6137
  %6144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6145 = extractvalue %dx.types.CBufRet.f32 %6144, 0
  %6146 = extractvalue %dx.types.CBufRet.f32 %6144, 1
  %6147 = fsub fast float %6128, %6145
  %6148 = fsub fast float %6129, %6146
  %6149 = fcmp fast olt float %6147, 0.000000e+00
  %6150 = fcmp fast olt float %6148, 0.000000e+00
  %6151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6152 = extractvalue %dx.types.CBufRet.f32 %6151, 0
  %6153 = extractvalue %dx.types.CBufRet.f32 %6151, 1
  %6154 = extractvalue %dx.types.CBufRet.f32 %6151, 2
  %6155 = extractvalue %dx.types.CBufRet.f32 %6151, 3
  %6156 = select i1 %6149, float %6152, float %6154
  %6157 = select i1 %6150, float %6153, float %6155
  %6158 = fmul fast float %6156, %6147
  %6159 = fmul fast float %6157, %6148
  %6160 = call float @dx.op.unary.f32(i32 6, float %6158)  ; FAbs(value)
  %6161 = call float @dx.op.unary.f32(i32 6, float %6159)  ; FAbs(value)
  %6162 = extractvalue %dx.types.CBufRet.f32 %6074, 0
  %6163 = call float @dx.op.binary.f32(i32 35, float %6160, float %6161)  ; FMax(a,b)
  %6164 = fsub fast float %6162, %6163
  %6165 = call float @dx.op.unary.f32(i32 7, float %6164)  ; Saturate(value)
  %6166 = fmul fast float %6165, %6136
  br label %6167

; <label>:6167                                    ; preds = %6143, %6137
  %6168 = phi float [ %6166, %6143 ], [ 0.000000e+00, %6137 ]
  %6169 = extractvalue %dx.types.CBufRet.f32 %6114, 2
  %6170 = extractvalue %dx.types.CBufRet.f32 %6139, 1
  %6171 = fadd fast float %6170, %6169
  %6172 = fcmp fast ogt float %6171, 0.000000e+00
  br i1 %6172, label %6173, label %6197

; <label>:6173                                    ; preds = %6167
  %6174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6175 = extractvalue %dx.types.CBufRet.f32 %6174, 0
  %6176 = extractvalue %dx.types.CBufRet.f32 %6174, 1
  %6177 = fsub fast float %6120, %6175
  %6178 = fsub fast float %6121, %6176
  %6179 = fcmp fast olt float %6177, 0.000000e+00
  %6180 = fcmp fast olt float %6178, 0.000000e+00
  %6181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6182 = extractvalue %dx.types.CBufRet.f32 %6181, 0
  %6183 = extractvalue %dx.types.CBufRet.f32 %6181, 1
  %6184 = extractvalue %dx.types.CBufRet.f32 %6181, 2
  %6185 = extractvalue %dx.types.CBufRet.f32 %6181, 3
  %6186 = select i1 %6179, float %6182, float %6184
  %6187 = select i1 %6180, float %6183, float %6185
  %6188 = fmul fast float %6186, %6177
  %6189 = fmul fast float %6187, %6178
  %6190 = call float @dx.op.unary.f32(i32 6, float %6188)  ; FAbs(value)
  %6191 = call float @dx.op.unary.f32(i32 6, float %6189)  ; FAbs(value)
  %6192 = extractvalue %dx.types.CBufRet.f32 %6074, 0
  %6193 = call float @dx.op.binary.f32(i32 35, float %6190, float %6191)  ; FMax(a,b)
  %6194 = fsub fast float %6192, %6193
  %6195 = call float @dx.op.unary.f32(i32 7, float %6194)  ; Saturate(value)
  %6196 = fmul fast float %6195, %6136
  br label %6197

; <label>:6197                                    ; preds = %6173, %6167, %6083
  %6198 = phi float [ 0.000000e+00, %6083 ], [ %6196, %6173 ], [ 0.000000e+00, %6167 ]
  %6199 = phi float [ 0.000000e+00, %6083 ], [ %6168, %6173 ], [ %6168, %6167 ]
  %6200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6201 = extractvalue %dx.types.CBufRet.f32 %6200, 1
  %6202 = call float @dx.op.unary.f32(i32 7, float %6201)  ; Saturate(value)
  %6203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6204 = extractvalue %dx.types.CBufRet.f32 %6203, 0
  %6205 = extractvalue %dx.types.CBufRet.f32 %6203, 1
  %6206 = fsub fast float %6102, %6204
  %6207 = fsub fast float %6106, %6205
  %6208 = fcmp fast olt float %6206, 0.000000e+00
  %6209 = fcmp fast olt float %6207, 0.000000e+00
  %6210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6211 = extractvalue %dx.types.CBufRet.f32 %6210, 0
  %6212 = extractvalue %dx.types.CBufRet.f32 %6210, 1
  %6213 = extractvalue %dx.types.CBufRet.f32 %6210, 2
  %6214 = extractvalue %dx.types.CBufRet.f32 %6210, 3
  %6215 = select i1 %6208, float %6211, float %6213
  %6216 = select i1 %6209, float %6212, float %6214
  %6217 = fmul fast float %6215, %6206
  %6218 = fmul fast float %6216, %6207
  %6219 = call float @dx.op.unary.f32(i32 6, float %6217)  ; FAbs(value)
  %6220 = call float @dx.op.unary.f32(i32 6, float %6218)  ; FAbs(value)
  %6221 = extractvalue %dx.types.CBufRet.f32 %6074, 0
  %6222 = call float @dx.op.binary.f32(i32 35, float %6219, float %6220)  ; FMax(a,b)
  %6223 = fsub fast float %6221, %6222
  %6224 = call float @dx.op.unary.f32(i32 7, float %6223)  ; Saturate(value)
  %6225 = call float @dx.op.binary.f32(i32 36, float %6224, float %6202)  ; FMin(a,b)
  %6226 = fmul fast float %6225, %6136
  %6227 = fsub fast float %6198, %6226
  %6228 = fsub fast float %6199, %6198
  %6229 = fsub fast float %6228, %6226
  %6230 = call float @dx.op.binary.f32(i32 35, float %6198, float %6199)  ; FMax(a,b)
  %6231 = call float @dx.op.binary.f32(i32 35, float %6226, float %6230)  ; FMax(a,b)
  %6232 = fcmp fast olt float %6231, 1.000000e+00
  br i1 %6232, label %6233, label %6631, !dx.controlflow.hints !106

; <label>:6233                                    ; preds = %6197
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 0
  %6236 = fcmp fast une float %6235, 0.000000e+00
  br i1 %6236, label %6237, label %6631, !dx.controlflow.hints !107

; <label>:6237                                    ; preds = %6233
  %6238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6239 = extractvalue %dx.types.CBufRet.f32 %6238, 0
  %6240 = extractvalue %dx.types.CBufRet.f32 %6238, 1
  %6241 = extractvalue %dx.types.CBufRet.f32 %6238, 2
  %6242 = extractvalue %dx.types.CBufRet.f32 %6238, 3
  %6243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6244 = extractvalue %dx.types.CBufRet.f32 %6243, 0
  %6245 = extractvalue %dx.types.CBufRet.f32 %6243, 1
  %6246 = extractvalue %dx.types.CBufRet.f32 %6243, 2
  %6247 = extractvalue %dx.types.CBufRet.f32 %6243, 3
  %6248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6249 = extractvalue %dx.types.CBufRet.f32 %6248, 0
  %6250 = extractvalue %dx.types.CBufRet.f32 %6248, 1
  %6251 = extractvalue %dx.types.CBufRet.f32 %6248, 2
  %6252 = extractvalue %dx.types.CBufRet.f32 %6248, 3
  %6253 = fmul fast float %6239, %6079
  %6254 = call float @dx.op.tertiary.f32(i32 46, float %6080, float %6240, float %6253)  ; FMad(a,b,c)
  %6255 = call float @dx.op.tertiary.f32(i32 46, float %6081, float %6241, float %6254)  ; FMad(a,b,c)
  %6256 = fadd fast float %6255, %6242
  %6257 = fmul fast float %6244, %6079
  %6258 = call float @dx.op.tertiary.f32(i32 46, float %6080, float %6245, float %6257)  ; FMad(a,b,c)
  %6259 = call float @dx.op.tertiary.f32(i32 46, float %6081, float %6246, float %6258)  ; FMad(a,b,c)
  %6260 = fadd fast float %6259, %6247
  %6261 = fmul fast float %6249, %6079
  %6262 = call float @dx.op.tertiary.f32(i32 46, float %6080, float %6250, float %6261)  ; FMad(a,b,c)
  %6263 = call float @dx.op.tertiary.f32(i32 46, float %6081, float %6251, float %6262)  ; FMad(a,b,c)
  %6264 = fadd fast float %6263, %6252
  %6265 = fcmp fast oge float %6256, 1.000000e+00
  %6266 = fcmp fast oge float %6260, 1.000000e+00
  %6267 = or i1 %6265, %6266
  %6268 = fcmp fast olt float %6256, 0.000000e+00
  %6269 = fcmp fast olt float %6260, 0.000000e+00
  %6270 = or i1 %6268, %6269
  %6271 = or i1 %6267, %6270
  br i1 %6271, label %6631, label %6272, !dx.controlflow.hints !108

; <label>:6272                                    ; preds = %6237
  %6273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6274 = extractvalue %dx.types.CBufRet.f32 %6273, 0
  %6275 = extractvalue %dx.types.CBufRet.f32 %6273, 1
  %6276 = extractvalue %dx.types.CBufRet.f32 %6273, 2
  %6277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6278 = extractvalue %dx.types.CBufRet.i32 %6277, 2
  %6279 = uitofp i32 %6278 to float
  %6280 = extractvalue %dx.types.CBufRet.i32 %6277, 3
  %6281 = uitofp i32 %6280 to float
  %6282 = extractvalue %dx.types.CBufRet.f32 %6273, 3
  %6283 = fmul fast float %6282, 2.000000e+00
  %6284 = fsub fast float %6256, %6274
  %6285 = fsub fast float %6260, %6275
  %6286 = fmul fast float %6283, %6284
  %6287 = fmul fast float %6283, %6285
  %6288 = fdiv fast float 1.000000e+00, %6062
  %6289 = fmul fast float %6287, %6288
  %6290 = call float @dx.op.unary.f32(i32 6, float %6289)  ; FAbs(value)
  %6291 = fmul fast float %6276, %6081
  %6292 = fmul fast float %6291, %6283
  %6293 = call float @dx.op.unary.f32(i32 6, float %6292)  ; FAbs(value)
  %6294 = call float @dx.op.unary.f32(i32 6, float %6286)  ; FAbs(value)
  %6295 = call float @dx.op.binary.f32(i32 35, float %6293, float %6290)  ; FMax(a,b)
  %6296 = call float @dx.op.binary.f32(i32 35, float %6294, float %6295)  ; FMax(a,b)
  %6297 = fmul fast float %6296, 2.000000e+00
  %6298 = call float @dx.op.unary.f32(i32 23, float %6297)  ; Log(value)
  %6299 = call float @dx.op.binary.f32(i32 35, float %6298, float %6279)  ; FMax(a,b)
  %6300 = call float @dx.op.unary.f32(i32 22, float %6299)  ; Frc(value)
  %6301 = fadd fast float %6300, 0xBFEA666660000000
  %6302 = fmul fast float %6301, 8.000000e+00
  %6303 = call float @dx.op.unary.f32(i32 7, float %6302)  ; Saturate(value)
  %6304 = call float @dx.op.unary.f32(i32 27, float %6299)  ; Round_ni(value)
  %6305 = fadd fast float %6304, %6303
  %6306 = call float @dx.op.binary.f32(i32 36, float %6305, float %6281)  ; FMin(a,b)
  %6307 = call float @dx.op.unary.f32(i32 27, float %6306)  ; Round_ni(value)
  %6308 = fsub fast float -0.000000e+00, %6307
  %6309 = call float @dx.op.unary.f32(i32 21, float %6308)  ; Exp(value)
  %6310 = fmul fast float %6309, %6283
  %6311 = fmul fast float %6310, %6256
  %6312 = fmul fast float %6310, %6260
  %6313 = fmul fast float %6311, 2.500000e-01
  %6314 = fmul fast float %6312, 2.500000e-01
  %6315 = fadd fast float %6313, 5.000000e-01
  %6316 = fadd fast float %6314, 5.000000e-01
  %6317 = fsub fast float %6281, %6279
  %6318 = fptoui float %6317 to i32
  %6319 = add i32 %6318, 320
  %6320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %6319)  ; CBufferLoadLegacy(handle,regIndex)
  %6321 = extractvalue %dx.types.CBufRet.f32 %6320, 0
  %6322 = extractvalue %dx.types.CBufRet.f32 %6320, 1
  %6323 = fcmp fast une float %6306, %6281
  %6324 = fsub fast float %6256, %6321
  %6325 = fsub fast float %6260, %6322
  %6326 = call float @dx.op.unary.f32(i32 6, float %6324)  ; FAbs(value)
  %6327 = call float @dx.op.unary.f32(i32 6, float %6325)  ; FAbs(value)
  %6328 = fmul fast float %6326, %6310
  %6329 = fmul fast float %6327, %6310
  %6330 = fcmp fast olt float %6328, 1.000000e+00
  %6331 = fcmp fast olt float %6329, 1.000000e+00
  %6332 = and i1 %6330, %6331
  %6333 = or i1 %6323, %6332
  br i1 %6333, label %6334, label %6631, !dx.controlflow.hints !109

; <label>:6334                                    ; preds = %6272
  %6335 = fmul fast float %6312, 5.000000e-01
  %6336 = fmul fast float %6311, 5.000000e-01
  %6337 = fadd fast float %6335, 5.000000e-01
  %6338 = fadd fast float %6336, 5.000000e-01
  %6339 = sitofp i32 %6278 to float
  %6340 = fsub fast float %6306, %6339
  %6341 = call float @dx.op.unary.f32(i32 27, float %6340)  ; Round_ni(value)
  %6342 = call float @dx.op.unary.f32(i32 22, float %6306)  ; Frc(value)
  %6343 = call float @dx.op.unary.f32(i32 22, float %6338)  ; Frc(value)
  %6344 = call float @dx.op.unary.f32(i32 22, float %6337)  ; Frc(value)
  %6345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %6343, float %6344, float %6341, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6346 = extractvalue %dx.types.ResRet.f32 %6345, 0
  %6347 = extractvalue %dx.types.ResRet.f32 %6345, 1
  %6348 = extractvalue %dx.types.ResRet.f32 %6345, 2
  %6349 = extractvalue %dx.types.ResRet.f32 %6345, 3
  %6350 = fcmp fast ogt float %6342, 0.000000e+00
  br i1 %6350, label %6351, label %6372, !dx.controlflow.hints !110

; <label>:6351                                    ; preds = %6334
  %6352 = fadd fast float %6341, 1.000000e+00
  %6353 = call float @dx.op.unary.f32(i32 22, float %6315)  ; Frc(value)
  %6354 = call float @dx.op.unary.f32(i32 22, float %6316)  ; Frc(value)
  %6355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %6353, float %6354, float %6352, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6356 = extractvalue %dx.types.ResRet.f32 %6355, 0
  %6357 = extractvalue %dx.types.ResRet.f32 %6355, 1
  %6358 = extractvalue %dx.types.ResRet.f32 %6355, 2
  %6359 = extractvalue %dx.types.ResRet.f32 %6355, 3
  %6360 = fsub fast float %6356, %6346
  %6361 = fsub fast float %6357, %6347
  %6362 = fsub fast float %6358, %6348
  %6363 = fsub fast float %6359, %6349
  %6364 = fmul fast float %6360, %6342
  %6365 = fmul fast float %6361, %6342
  %6366 = fmul fast float %6362, %6342
  %6367 = fmul fast float %6363, %6342
  %6368 = fadd fast float %6364, %6346
  %6369 = fadd fast float %6365, %6347
  %6370 = fadd fast float %6366, %6348
  %6371 = fadd fast float %6367, %6349
  br label %6372

; <label>:6372                                    ; preds = %6351, %6334
  %6373 = phi float [ %6368, %6351 ], [ %6346, %6334 ]
  %6374 = phi float [ %6369, %6351 ], [ %6347, %6334 ]
  %6375 = phi float [ %6370, %6351 ], [ %6348, %6334 ]
  %6376 = phi float [ %6371, %6351 ], [ %6349, %6334 ]
  %6377 = fadd fast float %6373, -5.000000e-01
  %6378 = fadd fast float %6375, -5.000000e-01
  %6379 = fmul fast float %6377, 0xBFD5555560000000
  %6380 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6378, float %6379)  ; FMad(a,b,c)
  %6381 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6374, float 0.000000e+00)  ; FMad(a,b,c)
  %6382 = fadd fast float %6381, %6376
  %6383 = fmul fast float %6377, -7.500000e-01
  %6384 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6378, float %6383)  ; FMad(a,b,c)
  %6385 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6374, float 0.000000e+00)  ; FMad(a,b,c)
  %6386 = fadd fast float %6385, %6376
  %6387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6388 = extractvalue %dx.types.CBufRet.f32 %6387, 0
  %6389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6389, 0
  %6391 = extractvalue %dx.types.CBufRet.f32 %6389, 1
  %6392 = extractvalue %dx.types.CBufRet.f32 %6389, 2
  %6393 = extractvalue %dx.types.CBufRet.f32 %6389, 3
  %6394 = fsub fast float %6390, %6380
  %6395 = fsub fast float %6391, %6382
  %6396 = fsub fast float %6392, %6384
  %6397 = fsub fast float %6393, %6386
  %6398 = fmul fast float %6394, %6388
  %6399 = fmul fast float %6395, %6388
  %6400 = fmul fast float %6396, %6388
  %6401 = fmul fast float %6397, %6388
  %6402 = fadd fast float %6398, %6380
  %6403 = fadd fast float %6399, %6382
  %6404 = fadd fast float %6400, %6384
  %6405 = fadd fast float %6401, %6386
  %6406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6407 = extractvalue %dx.types.ResRet.i32 %6406, 0
  %6408 = and i32 %6407, 536870911
  %6409 = uitofp i32 %6408 to float
  %6410 = fmul fast float %6409, %6256
  %6411 = fmul fast float %6409, %6260
  %6412 = fptoui float %6410 to i32
  %6413 = fptoui float %6411 to i32
  %6414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6415 = extractvalue %dx.types.ResRet.i32 %6414, 0
  %6416 = and i32 %6415, 31
  %6417 = lshr i32 %6412, %6416
  %6418 = lshr i32 %6413, %6416
  %6419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6420 = extractvalue %dx.types.ResRet.i32 %6419, 0
  %6421 = and i32 %6420, 31
  %6422 = shl i32 1, %6421
  %6423 = call i32 @dx.op.binary.i32(i32 40, i32 %6422, i32 4)  ; UMin(a,b)
  %6424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6425 = extractvalue %dx.types.ResRet.i32 %6424, 0
  %6426 = extractvalue %dx.types.ResRet.i32 %6424, 1
  %6427 = icmp eq i32 %6423, 0
  br i1 %6427, label %6469, label %6428

; <label>:6428                                    ; preds = %6372
  br label %6429

; <label>:6429                                    ; preds = %6457, %6428
  %6430 = phi i32 [ %6460, %6457 ], [ 0, %6428 ]
  %6431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6432 = extractvalue %dx.types.ResRet.i32 %6431, 0
  %6433 = lshr i32 %6432, 16
  %6434 = and i32 %6433, 31
  %6435 = shl i32 %6418, %6434
  %6436 = add i32 %6435, %6417
  %6437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6438 = extractvalue %dx.types.ResRet.i32 %6437, 0
  %6439 = and i32 %6438, 31
  %6440 = shl i32 %6436, %6439
  %6441 = add i32 %6440, %6430
  %6442 = shl i32 %6441, 2
  %6443 = add i32 %6442, 32
  %6444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6443, i32 undef)  ; BufferLoad(srv,index,wot)
  %6445 = extractvalue %dx.types.ResRet.i32 %6444, 0
  %6446 = icmp slt i32 %6445, 0
  %6447 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6430
  %6448 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6430
  %6449 = bitcast float* %6447 to i32*
  %6450 = bitcast float* %6448 to i32*
  br i1 %6446, label %6451, label %6457

; <label>:6451                                    ; preds = %6429
  %6452 = and i32 %6445, 1073741823
  %6453 = add nuw nsw i32 %6452, 20
  %6454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6453, i32 undef)  ; BufferLoad(srv,index,wot)
  %6455 = extractvalue %dx.types.ResRet.i32 %6454, 0
  %6456 = extractvalue %dx.types.ResRet.i32 %6454, 1
  br label %6457

; <label>:6457                                    ; preds = %6451, %6429
  %6458 = phi i32 [ %6455, %6451 ], [ %6425, %6429 ]
  %6459 = phi i32 [ %6456, %6451 ], [ %6426, %6429 ]
  store i32 %6458, i32* %6449, align 4
  store i32 %6459, i32* %6450, align 4
  %6460 = add nuw i32 %6430, 1
  %6461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6462 = extractvalue %dx.types.CBufRet.i32 %6461, 2
  %6463 = icmp eq i32 %6462, 0
  %6464 = icmp ugt i32 %6445, -1073741825
  %6465 = and i1 %6464, %6463
  %6466 = icmp ult i32 %6460, %6423
  %6467 = and i1 %6465, %6466
  br i1 %6467, label %6429, label %6468

; <label>:6468                                    ; preds = %6457
  br label %6469

; <label>:6469                                    ; preds = %6468, %6372
  %6470 = phi i32 [ 0, %6372 ], [ %6460, %6468 ]
  %6471 = extractvalue %dx.types.CBufRet.f32 %6234, 2
  %6472 = fptoui float %6471 to i32
  %6473 = icmp eq i32 %6472, 0
  br i1 %6473, label %6525, label %6474

; <label>:6474                                    ; preds = %6469
  br label %6475

; <label>:6475                                    ; preds = %6520, %6474
  %6476 = phi i32 [ %6521, %6520 ], [ %6470, %6474 ]
  %6477 = phi i32 [ %6522, %6520 ], [ 0, %6474 ]
  %6478 = lshr i32 %6477, 2
  %6479 = and i32 %6477, 3
  %6480 = add nuw nsw i32 %6478, 83
  %6481 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 %6480)  ; CBufferLoadLegacy(handle,regIndex)
  %6482 = extractvalue %dx.types.CBufRet.i32 %6481, 0
  %6483 = extractvalue %dx.types.CBufRet.i32 %6481, 1
  %6484 = extractvalue %dx.types.CBufRet.i32 %6481, 2
  %6485 = extractvalue %dx.types.CBufRet.i32 %6481, 3
  %6486 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 0
  store i32 %6482, i32* %6486, align 4
  %6487 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 1
  store i32 %6483, i32* %6487, align 4
  %6488 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 2
  store i32 %6484, i32* %6488, align 4
  %6489 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 3
  store i32 %6485, i32* %6489, align 4
  %6490 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 %6479
  %6491 = load i32, i32* %6490, align 4, !tbaa !111, !noalias !115
  %6492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6493 = extractvalue %dx.types.ResRet.i32 %6492, 0
  %6494 = lshr i32 %6493, 16
  %6495 = and i32 %6494, 31
  %6496 = shl i32 %6418, %6495
  %6497 = add i32 %6496, %6417
  %6498 = shl i32 %6497, 2
  %6499 = add i32 %6498, %6491
  %6500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6499, i32 undef)  ; BufferLoad(srv,index,wot)
  %6501 = extractvalue %dx.types.ResRet.i32 %6500, 0
  %6502 = icmp eq i32 %6501, 0
  br i1 %6502, label %6520, label %6503

; <label>:6503                                    ; preds = %6475
  %6504 = icmp slt i32 %6501, 0
  %6505 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6476
  %6506 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6476
  %6507 = bitcast float* %6505 to i32*
  %6508 = bitcast float* %6506 to i32*
  br i1 %6504, label %6509, label %6516

; <label>:6509                                    ; preds = %6503
  %6510 = and i32 %6501, 1073741823
  %6511 = add i32 %6491, 20
  %6512 = add i32 %6511, %6510
  %6513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6512, i32 undef)  ; BufferLoad(srv,index,wot)
  %6514 = extractvalue %dx.types.ResRet.i32 %6513, 0
  %6515 = extractvalue %dx.types.ResRet.i32 %6513, 1
  br label %6516

; <label>:6516                                    ; preds = %6509, %6503
  %6517 = phi i32 [ %6514, %6509 ], [ %6425, %6503 ]
  %6518 = phi i32 [ %6515, %6509 ], [ %6426, %6503 ]
  store i32 %6517, i32* %6507, align 4
  store i32 %6518, i32* %6508, align 4
  %6519 = add i32 %6476, 1
  br label %6520

; <label>:6520                                    ; preds = %6516, %6475
  %6521 = phi i32 [ %6476, %6475 ], [ %6519, %6516 ]
  %6522 = add nuw i32 %6477, 1
  %6523 = icmp eq i32 %6522, %6472
  br i1 %6523, label %6524, label %6475

; <label>:6524                                    ; preds = %6520
  br label %6525

; <label>:6525                                    ; preds = %6524, %6469
  %6526 = phi i32 [ %6470, %6469 ], [ %6521, %6524 ]
  %6527 = icmp eq i32 %6526, 1
  %6528 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 0
  %6529 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 0
  br i1 %6527, label %6530, label %6533

; <label>:6530                                    ; preds = %6525
  %6531 = load float, float* %6528, align 4
  %6532 = load float, float* %6529, align 4
  br label %6560

; <label>:6533                                    ; preds = %6525
  %6534 = load float, float* %6528, align 4
  %6535 = load float, float* %6529, align 4
  %6536 = fdiv fast float 1.000000e+00, %6535
  %6537 = fsub fast float %6534, %6536
  %6538 = icmp ugt i32 %6526, 1
  br i1 %6538, label %6539, label %6555

; <label>:6539                                    ; preds = %6533
  br label %6540

; <label>:6540                                    ; preds = %6540, %6539
  %6541 = phi float [ %6550, %6540 ], [ %6537, %6539 ]
  %6542 = phi float [ %6551, %6540 ], [ %6534, %6539 ]
  %6543 = phi i32 [ %6552, %6540 ], [ 1, %6539 ]
  %6544 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6543
  %6545 = load float, float* %6544, align 4
  %6546 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6543
  %6547 = load float, float* %6546, align 4
  %6548 = fdiv fast float 1.000000e+00, %6547
  %6549 = fsub fast float %6545, %6548
  %6550 = call float @dx.op.binary.f32(i32 36, float %6541, float %6549)  ; FMin(a,b)
  %6551 = call float @dx.op.binary.f32(i32 35, float %6542, float %6545)  ; FMax(a,b)
  %6552 = add nuw i32 %6543, 1
  %6553 = icmp eq i32 %6552, %6526
  br i1 %6553, label %6554, label %6540

; <label>:6554                                    ; preds = %6540
  br label %6555

; <label>:6555                                    ; preds = %6554, %6533
  %6556 = phi float [ %6537, %6533 ], [ %6550, %6554 ]
  %6557 = phi float [ %6534, %6533 ], [ %6551, %6554 ]
  %6558 = fsub fast float %6557, %6556
  %6559 = fdiv fast float 1.000000e+00, %6558
  br label %6560

; <label>:6560                                    ; preds = %6555, %6530
  %6561 = phi float [ %6531, %6530 ], [ %6557, %6555 ]
  %6562 = phi float [ %6532, %6530 ], [ %6559, %6555 ]
  %6563 = fadd fast float %6264, %6561
  %6564 = fmul fast float %6563, %6562
  %6565 = call float @dx.op.unary.f32(i32 7, float %6564)  ; Saturate(value)
  %6566 = fmul fast float %6565, 2.000000e+00
  %6567 = fsub fast float 1.000000e+00, %6566
  %6568 = fmul fast float %6402, %6402
  %6569 = fsub fast float %6403, %6568
  %6570 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6569)  ; FMax(a,b)
  %6571 = fdiv fast float 1.000000e+00, %6570
  %6572 = fmul fast float %6403, %6402
  %6573 = fsub fast float %6404, %6572
  %6574 = fsub fast float %6567, %6402
  %6575 = fmul fast float %6567, %6567
  %6576 = fsub fast float %6575, %6403
  %6577 = fmul fast float %6571, %6573
  %6578 = fmul fast float %6577, %6574
  %6579 = fsub fast float %6576, %6578
  %6580 = fmul fast float %6403, %6403
  %6581 = fsub fast float %6405, %6580
  %6582 = fmul fast float %6573, %6573
  %6583 = fmul fast float %6582, %6571
  %6584 = fsub fast float %6581, %6583
  %6585 = fdiv fast float %6579, %6584
  %6586 = fmul fast float %6585, %6573
  %6587 = fsub fast float %6574, %6586
  %6588 = fmul fast float %6587, %6571
  %6589 = fmul fast float %6588, %6402
  %6590 = fsub fast float 1.000000e+00, %6589
  %6591 = fmul fast float %6585, %6403
  %6592 = fsub fast float %6590, %6591
  %6593 = fmul fast float %6588, %6588
  %6594 = fmul fast float %6585, 4.000000e+00
  %6595 = fmul fast float %6594, %6592
  %6596 = fsub fast float %6593, %6595
  %6597 = call float @dx.op.unary.f32(i32 24, float %6596)  ; Sqrt(value)
  %6598 = fcmp fast oge float %6588, 0.000000e+00
  %6599 = fsub fast float -0.000000e+00, %6597
  %6600 = select i1 %6598, float %6599, float %6597
  %6601 = fsub fast float %6600, %6588
  %6602 = fdiv fast float %6601, %6585
  %6603 = fdiv fast float %6592, %6601
  %6604 = fmul fast float %6602, 5.000000e-01
  %6605 = fmul fast float %6603, 2.000000e+00
  %6606 = select i1 %6598, float %6604, float %6605
  %6607 = select i1 %6598, float %6605, float %6604
  %6608 = call float @dx.op.binary.f32(i32 35, float %6606, float %6607)  ; FMax(a,b)
  %6609 = call float @dx.op.binary.f32(i32 36, float %6606, float %6607)  ; FMin(a,b)
  %6610 = fcmp fast ogt float %6567, %6608
  %6611 = fsub fast float %6567, %6609
  %6612 = fsub fast float %6567, %6608
  %6613 = fsub fast float %6608, %6609
  %6614 = select i1 %6610, float %6612, float %6613
  %6615 = fmul float %6611, %6614
  %6616 = select i1 %6610, float %6609, float %6567
  %6617 = fcmp fast ogt float %6567, %6609
  %6618 = fmul fast float %6616, %6608
  %6619 = fadd fast float %6616, %6608
  %6620 = fmul fast float %6619, %6402
  %6621 = fadd fast float %6618, %6403
  %6622 = fsub fast float %6621, %6620
  %6623 = fdiv fast float %6622, %6615
  %6624 = select i1 %6617, float %6623, float 0.000000e+00
  %6625 = fsub fast float 1.000000e+00, %6624
  %6626 = select i1 %6610, float %6625, float %6624
  %6627 = call float @dx.op.unary.f32(i32 7, float %6626)  ; Saturate(value)
  %6628 = extractvalue %dx.types.CBufRet.f32 %6387, 3
  %6629 = fmul fast float %6628, %6627
  %6630 = fsub fast float 1.000000e+00, %6629
  br label %6631

; <label>:6631                                    ; preds = %6560, %6272, %6237, %6233, %6197
  %6632 = phi float [ 1.000000e+00, %6197 ], [ %6630, %6560 ], [ 1.000000e+00, %6237 ], [ 1.000000e+00, %6272 ], [ 1.000000e+00, %6233 ]
  %6633 = fcmp fast ogt float %6229, 0.000000e+00
  br i1 %6633, label %6634, label %6798, !dx.controlflow.hints !124

; <label>:6634                                    ; preds = %6631
  %6635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6636 = extractvalue %dx.types.CBufRet.f32 %6635, 2
  %6637 = fadd fast float %6636, %6110
  %6638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6639 = extractvalue %dx.types.CBufRet.f32 %6638, 2
  %6640 = extractvalue %dx.types.CBufRet.f32 %6638, 3
  %6641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6642 = extractvalue %dx.types.CBufRet.f32 %6641, 2
  %6643 = call float @dx.op.binary.f32(i32 35, float %6637, float 0.000000e+00)  ; FMax(a,b)
  %6644 = fadd fast float %6643, 0x3F10000000000000
  %6645 = fcmp fast oeq float %6642, 0.000000e+00
  br i1 %6645, label %6646, label %6713

; <label>:6646                                    ; preds = %6634
  %6647 = extractvalue %dx.types.CBufRet.f32 %6638, 1
  %6648 = extractvalue %dx.types.CBufRet.f32 %6638, 0
  %6649 = fmul fast float %6648, %6128
  %6650 = fmul fast float %6647, %6129
  %6651 = fadd fast float %6649, 5.000000e-01
  %6652 = call float @dx.op.unary.f32(i32 27, float %6651)  ; Round_ni(value)
  %6653 = fadd fast float %6650, 5.000000e-01
  %6654 = call float @dx.op.unary.f32(i32 27, float %6653)  ; Round_ni(value)
  %6655 = fsub fast float %6651, %6652
  %6656 = fsub fast float %6653, %6654
  %6657 = fadd fast float %6652, -5.000000e-01
  %6658 = fadd fast float %6654, -5.000000e-01
  %6659 = fmul fast float %6655, 2.000000e+00
  %6660 = fsub fast float 3.000000e+00, %6659
  %6661 = fadd fast float %6659, 1.000000e+00
  %6662 = fsub fast float 2.000000e+00, %6655
  %6663 = bitcast float %6660 to i32
  %6664 = sub nsw i32 2129859010, %6663
  %6665 = bitcast i32 %6664 to float
  %6666 = fmul fast float %6665, %6662
  %6667 = fadd fast float %6666, -1.000000e+00
  %6668 = bitcast float %6661 to i32
  %6669 = sub nsw i32 2129859010, %6668
  %6670 = bitcast i32 %6669 to float
  %6671 = fmul fast float %6670, %6655
  %6672 = fadd fast float %6671, 1.000000e+00
  %6673 = fmul fast float %6656, 2.000000e+00
  %6674 = fsub fast float 3.000000e+00, %6673
  %6675 = fadd fast float %6673, 1.000000e+00
  %6676 = fsub fast float 2.000000e+00, %6656
  %6677 = bitcast float %6674 to i32
  %6678 = sub nsw i32 2129859010, %6677
  %6679 = bitcast i32 %6678 to float
  %6680 = fmul fast float %6679, %6676
  %6681 = fadd fast float %6680, -1.000000e+00
  %6682 = bitcast float %6675 to i32
  %6683 = sub nsw i32 2129859010, %6682
  %6684 = bitcast i32 %6683 to float
  %6685 = fmul fast float %6684, %6656
  %6686 = fadd fast float %6685, 1.000000e+00
  %6687 = fadd fast float %6667, %6657
  %6688 = fmul fast float %6687, %6639
  %6689 = fadd fast float %6681, %6658
  %6690 = fmul fast float %6689, %6640
  %6691 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6688, float %6690, float undef, float undef, i32 0, i32 0, i32 undef, float %6644)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6692 = extractvalue %dx.types.ResRet.f32 %6691, 0
  %6693 = fmul fast float %6692, %6660
  %6694 = fadd fast float %6672, %6657
  %6695 = fmul fast float %6694, %6639
  %6696 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6695, float %6690, float undef, float undef, i32 0, i32 0, i32 undef, float %6644)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6697 = extractvalue %dx.types.ResRet.f32 %6696, 0
  %6698 = fmul fast float %6697, %6661
  %6699 = fadd fast float %6686, %6658
  %6700 = fmul fast float %6699, %6640
  %6701 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6688, float %6700, float undef, float undef, i32 0, i32 0, i32 undef, float %6644)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6702 = extractvalue %dx.types.ResRet.f32 %6701, 0
  %6703 = fmul fast float %6702, %6660
  %6704 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %6695, float %6700, float undef, float undef, i32 0, i32 0, i32 undef, float %6644)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6705 = extractvalue %dx.types.ResRet.f32 %6704, 0
  %6706 = fmul fast float %6705, %6661
  %6707 = fadd fast float %6706, %6703
  %6708 = fmul fast float %6707, %6675
  %6709 = fadd fast float %6698, %6693
  %6710 = fmul fast float %6709, %6674
  %6711 = fadd fast float %6710, %6708
  %6712 = fmul fast float %6711, 6.250000e-02
  br label %6798

; <label>:6713                                    ; preds = %6634
  %6714 = fmul fast float %288, 0x401921FB60000000
  %6715 = call float @dx.op.unary.f32(i32 13, float %6714)  ; Sin(value)
  %6716 = call float @dx.op.unary.f32(i32 12, float %6714)  ; Cos(value)
  %6717 = fsub fast float -0.000000e+00, %6715
  br label %6718

; <label>:6718                                    ; preds = %6767, %6713
  %6719 = phi float [ 0.000000e+00, %6713 ], [ %6762, %6767 ]
  %6720 = phi float [ 0.000000e+00, %6713 ], [ %6764, %6767 ]
  %6721 = phi i32 [ 0, %6713 ], [ %6768, %6767 ]
  %6722 = mul i32 %6721, 2
  %6723 = add i32 0, %6722
  %6724 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6723
  %6725 = load float, float* %6724, align 4
  %6726 = mul i32 %6721, 2
  %6727 = add i32 1, %6726
  %6728 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6727
  %6729 = load float, float* %6728, align 4
  %6730 = fmul fast float %6725, %6716
  %6731 = call float @dx.op.tertiary.f32(i32 46, float %6729, float %6717, float %6730)  ; FMad(a,b,c)
  %6732 = fmul fast float %6725, %6715
  %6733 = call float @dx.op.tertiary.f32(i32 46, float %6729, float %6716, float %6732)  ; FMad(a,b,c)
  %6734 = fmul fast float %6731, %6642
  %6735 = fmul fast float %6733, %6642
  %6736 = fadd fast float %6734, %6128
  %6737 = fadd fast float %6735, %6129
  %6738 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %57, float %6736, float %6737, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6739 = extractvalue %dx.types.ResRet.f32 %6738, 0
  %6740 = extractvalue %dx.types.ResRet.f32 %6738, 1
  %6741 = extractvalue %dx.types.ResRet.f32 %6738, 2
  %6742 = extractvalue %dx.types.ResRet.f32 %6738, 3
  %6743 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 0
  store float %6739, float* %6743, align 4
  %6744 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 1
  store float %6740, float* %6744, align 4
  %6745 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 2
  store float %6741, float* %6745, align 4
  %6746 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 3
  store float %6742, float* %6746, align 4
  %6747 = fsub fast float %6739, %6644
  %6748 = fcmp fast olt float %6747, 0.000000e+00
  %6749 = select i1 %6748, float 0.000000e+00, float 1.000000e+00
  %6750 = fadd fast float %6749, %6719
  %6751 = fmul fast float %6749, %6747
  %6752 = fadd fast float %6751, %6720
  br label %6753

; <label>:6753                                    ; preds = %6753, %6718
  %6754 = phi i32 [ 1, %6718 ], [ %6765, %6753 ]
  %6755 = phi float [ %6752, %6718 ], [ %6764, %6753 ]
  %6756 = phi float [ %6750, %6718 ], [ %6762, %6753 ]
  %6757 = getelementptr [4 x float], [4 x float]* %111, i32 0, i32 %6754
  %6758 = load float, float* %6757, align 4, !tbaa !125, !noalias !115
  %6759 = fsub fast float %6758, %6644
  %6760 = fcmp fast olt float %6759, 0.000000e+00
  %6761 = select i1 %6760, float 0.000000e+00, float 1.000000e+00
  %6762 = fadd fast float %6761, %6756
  %6763 = fmul fast float %6761, %6759
  %6764 = fadd fast float %6763, %6755
  %6765 = add nuw nsw i32 %6754, 1
  %6766 = icmp eq i32 %6765, 4
  br i1 %6766, label %6767, label %6753, !llvm.loop !127

; <label>:6767                                    ; preds = %6753
  %6768 = add nuw nsw i32 %6721, 1
  %6769 = icmp eq i32 %6768, 8
  br i1 %6769, label %6770, label %6718, !llvm.loop !128

; <label>:6770                                    ; preds = %6767
  %6771 = fdiv fast float 1.000000e+00, %6762
  %6772 = fmul fast float %6771, %6764
  %6773 = fdiv fast float 1.000000e+00, %6644
  %6774 = fmul fast float %6772, %6773
  %6775 = call float @dx.op.unary.f32(i32 7, float %6774)  ; Saturate(value)
  %6776 = call float @dx.op.binary.f32(i32 35, float %6775, float 0.000000e+00)  ; FMax(a,b)
  %6777 = fmul fast float %6762, 3.125000e-02
  %6778 = call float @dx.op.unary.f32(i32 7, float %6777)  ; Saturate(value)
  %6779 = fmul fast float %6778, 2.000000e+00
  %6780 = fadd fast float %6779, -1.000000e+00
  %6781 = fcmp fast ogt float %6780, 0.000000e+00
  %6782 = fcmp fast olt float %6780, 0.000000e+00
  %6783 = zext i1 %6781 to i32
  %6784 = zext i1 %6782 to i32
  %6785 = sub nsw i32 %6783, %6784
  %6786 = sitofp i32 %6785 to float
  %6787 = fmul fast float %6786, %6780
  %6788 = fsub fast float 1.000000e+00, %6787
  %6789 = fmul fast float %6788, %6788
  %6790 = fmul fast float %6789, %6788
  %6791 = fsub fast float %6788, %6790
  %6792 = fmul fast float %6791, %6776
  %6793 = fsub fast float 1.000000e+00, %6790
  %6794 = fsub fast float %6793, %6792
  %6795 = fmul fast float %6786, 5.000000e-01
  %6796 = fmul fast float %6795, %6794
  %6797 = fsub fast float 5.000000e-01, %6796
  br label %6798

; <label>:6798                                    ; preds = %6770, %6646, %6631
  %6799 = phi float [ 1.000000e+00, %6631 ], [ %6712, %6646 ], [ %6797, %6770 ]
  %6800 = fcmp fast ogt float %6227, 0.000000e+00
  br i1 %6800, label %6801, label %6965, !dx.controlflow.hints !129

; <label>:6801                                    ; preds = %6798
  %6802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6803 = extractvalue %dx.types.CBufRet.f32 %6802, 1
  %6804 = fadd fast float %6803, %6110
  %6805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6806 = extractvalue %dx.types.CBufRet.f32 %6805, 2
  %6807 = extractvalue %dx.types.CBufRet.f32 %6805, 3
  %6808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6809 = extractvalue %dx.types.CBufRet.f32 %6808, 1
  %6810 = call float @dx.op.binary.f32(i32 35, float %6804, float 0.000000e+00)  ; FMax(a,b)
  %6811 = fadd fast float %6810, 0x3F10000000000000
  %6812 = fcmp fast oeq float %6809, 0.000000e+00
  br i1 %6812, label %6813, label %6880

; <label>:6813                                    ; preds = %6801
  %6814 = extractvalue %dx.types.CBufRet.f32 %6805, 1
  %6815 = extractvalue %dx.types.CBufRet.f32 %6805, 0
  %6816 = fmul fast float %6815, %6120
  %6817 = fmul fast float %6814, %6121
  %6818 = fadd fast float %6816, 5.000000e-01
  %6819 = call float @dx.op.unary.f32(i32 27, float %6818)  ; Round_ni(value)
  %6820 = fadd fast float %6817, 5.000000e-01
  %6821 = call float @dx.op.unary.f32(i32 27, float %6820)  ; Round_ni(value)
  %6822 = fsub fast float %6818, %6819
  %6823 = fsub fast float %6820, %6821
  %6824 = fadd fast float %6819, -5.000000e-01
  %6825 = fadd fast float %6821, -5.000000e-01
  %6826 = fmul fast float %6822, 2.000000e+00
  %6827 = fsub fast float 3.000000e+00, %6826
  %6828 = fadd fast float %6826, 1.000000e+00
  %6829 = fsub fast float 2.000000e+00, %6822
  %6830 = bitcast float %6827 to i32
  %6831 = sub nsw i32 2129859010, %6830
  %6832 = bitcast i32 %6831 to float
  %6833 = fmul fast float %6832, %6829
  %6834 = fadd fast float %6833, -1.000000e+00
  %6835 = bitcast float %6828 to i32
  %6836 = sub nsw i32 2129859010, %6835
  %6837 = bitcast i32 %6836 to float
  %6838 = fmul fast float %6837, %6822
  %6839 = fadd fast float %6838, 1.000000e+00
  %6840 = fmul fast float %6823, 2.000000e+00
  %6841 = fsub fast float 3.000000e+00, %6840
  %6842 = fadd fast float %6840, 1.000000e+00
  %6843 = fsub fast float 2.000000e+00, %6823
  %6844 = bitcast float %6841 to i32
  %6845 = sub nsw i32 2129859010, %6844
  %6846 = bitcast i32 %6845 to float
  %6847 = fmul fast float %6846, %6843
  %6848 = fadd fast float %6847, -1.000000e+00
  %6849 = bitcast float %6842 to i32
  %6850 = sub nsw i32 2129859010, %6849
  %6851 = bitcast i32 %6850 to float
  %6852 = fmul fast float %6851, %6823
  %6853 = fadd fast float %6852, 1.000000e+00
  %6854 = fadd fast float %6834, %6824
  %6855 = fmul fast float %6854, %6806
  %6856 = fadd fast float %6848, %6825
  %6857 = fmul fast float %6856, %6807
  %6858 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %6855, float %6857, float undef, float undef, i32 0, i32 0, i32 undef, float %6811)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6859 = extractvalue %dx.types.ResRet.f32 %6858, 0
  %6860 = fmul fast float %6859, %6827
  %6861 = fadd fast float %6839, %6824
  %6862 = fmul fast float %6861, %6806
  %6863 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %6862, float %6857, float undef, float undef, i32 0, i32 0, i32 undef, float %6811)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6864 = extractvalue %dx.types.ResRet.f32 %6863, 0
  %6865 = fmul fast float %6864, %6828
  %6866 = fadd fast float %6853, %6825
  %6867 = fmul fast float %6866, %6807
  %6868 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %6855, float %6867, float undef, float undef, i32 0, i32 0, i32 undef, float %6811)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6869 = extractvalue %dx.types.ResRet.f32 %6868, 0
  %6870 = fmul fast float %6869, %6827
  %6871 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %6862, float %6867, float undef, float undef, i32 0, i32 0, i32 undef, float %6811)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6872 = extractvalue %dx.types.ResRet.f32 %6871, 0
  %6873 = fmul fast float %6872, %6828
  %6874 = fadd fast float %6873, %6870
  %6875 = fmul fast float %6874, %6842
  %6876 = fadd fast float %6865, %6860
  %6877 = fmul fast float %6876, %6841
  %6878 = fadd fast float %6877, %6875
  %6879 = fmul fast float %6878, 6.250000e-02
  br label %6965

; <label>:6880                                    ; preds = %6801
  %6881 = fmul fast float %288, 0x401921FB60000000
  %6882 = call float @dx.op.unary.f32(i32 13, float %6881)  ; Sin(value)
  %6883 = call float @dx.op.unary.f32(i32 12, float %6881)  ; Cos(value)
  %6884 = fsub fast float -0.000000e+00, %6882
  br label %6885

; <label>:6885                                    ; preds = %6934, %6880
  %6886 = phi float [ 0.000000e+00, %6880 ], [ %6929, %6934 ]
  %6887 = phi float [ 0.000000e+00, %6880 ], [ %6931, %6934 ]
  %6888 = phi i32 [ 0, %6880 ], [ %6935, %6934 ]
  %6889 = mul i32 %6888, 2
  %6890 = add i32 0, %6889
  %6891 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6890
  %6892 = load float, float* %6891, align 4
  %6893 = mul i32 %6888, 2
  %6894 = add i32 1, %6893
  %6895 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6894
  %6896 = load float, float* %6895, align 4
  %6897 = fmul fast float %6892, %6883
  %6898 = call float @dx.op.tertiary.f32(i32 46, float %6896, float %6884, float %6897)  ; FMad(a,b,c)
  %6899 = fmul fast float %6892, %6882
  %6900 = call float @dx.op.tertiary.f32(i32 46, float %6896, float %6883, float %6899)  ; FMad(a,b,c)
  %6901 = fmul fast float %6898, %6809
  %6902 = fmul fast float %6900, %6809
  %6903 = fadd fast float %6901, %6120
  %6904 = fadd fast float %6902, %6121
  %6905 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %57, float %6903, float %6904, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6906 = extractvalue %dx.types.ResRet.f32 %6905, 0
  %6907 = extractvalue %dx.types.ResRet.f32 %6905, 1
  %6908 = extractvalue %dx.types.ResRet.f32 %6905, 2
  %6909 = extractvalue %dx.types.ResRet.f32 %6905, 3
  %6910 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 0
  store float %6906, float* %6910, align 4
  %6911 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 1
  store float %6907, float* %6911, align 4
  %6912 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 2
  store float %6908, float* %6912, align 4
  %6913 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 3
  store float %6909, float* %6913, align 4
  %6914 = fsub fast float %6906, %6811
  %6915 = fcmp fast olt float %6914, 0.000000e+00
  %6916 = select i1 %6915, float 0.000000e+00, float 1.000000e+00
  %6917 = fadd fast float %6916, %6886
  %6918 = fmul fast float %6916, %6914
  %6919 = fadd fast float %6918, %6887
  br label %6920

; <label>:6920                                    ; preds = %6920, %6885
  %6921 = phi i32 [ 1, %6885 ], [ %6932, %6920 ]
  %6922 = phi float [ %6919, %6885 ], [ %6931, %6920 ]
  %6923 = phi float [ %6917, %6885 ], [ %6929, %6920 ]
  %6924 = getelementptr [4 x float], [4 x float]* %110, i32 0, i32 %6921
  %6925 = load float, float* %6924, align 4, !tbaa !125, !noalias !115
  %6926 = fsub fast float %6925, %6811
  %6927 = fcmp fast olt float %6926, 0.000000e+00
  %6928 = select i1 %6927, float 0.000000e+00, float 1.000000e+00
  %6929 = fadd fast float %6928, %6923
  %6930 = fmul fast float %6928, %6926
  %6931 = fadd fast float %6930, %6922
  %6932 = add nuw nsw i32 %6921, 1
  %6933 = icmp eq i32 %6932, 4
  br i1 %6933, label %6934, label %6920, !llvm.loop !127

; <label>:6934                                    ; preds = %6920
  %6935 = add nuw nsw i32 %6888, 1
  %6936 = icmp eq i32 %6935, 8
  br i1 %6936, label %6937, label %6885, !llvm.loop !128

; <label>:6937                                    ; preds = %6934
  %6938 = fdiv fast float 1.000000e+00, %6929
  %6939 = fmul fast float %6938, %6931
  %6940 = fdiv fast float 1.000000e+00, %6811
  %6941 = fmul fast float %6939, %6940
  %6942 = call float @dx.op.unary.f32(i32 7, float %6941)  ; Saturate(value)
  %6943 = call float @dx.op.binary.f32(i32 35, float %6942, float 0.000000e+00)  ; FMax(a,b)
  %6944 = fmul fast float %6929, 3.125000e-02
  %6945 = call float @dx.op.unary.f32(i32 7, float %6944)  ; Saturate(value)
  %6946 = fmul fast float %6945, 2.000000e+00
  %6947 = fadd fast float %6946, -1.000000e+00
  %6948 = fcmp fast ogt float %6947, 0.000000e+00
  %6949 = fcmp fast olt float %6947, 0.000000e+00
  %6950 = zext i1 %6948 to i32
  %6951 = zext i1 %6949 to i32
  %6952 = sub nsw i32 %6950, %6951
  %6953 = sitofp i32 %6952 to float
  %6954 = fmul fast float %6953, %6947
  %6955 = fsub fast float 1.000000e+00, %6954
  %6956 = fmul fast float %6955, %6955
  %6957 = fmul fast float %6956, %6955
  %6958 = fsub fast float %6955, %6957
  %6959 = fmul fast float %6958, %6943
  %6960 = fsub fast float 1.000000e+00, %6957
  %6961 = fsub fast float %6960, %6959
  %6962 = fmul fast float %6953, 5.000000e-01
  %6963 = fmul fast float %6962, %6961
  %6964 = fsub fast float 5.000000e-01, %6963
  br label %6965

; <label>:6965                                    ; preds = %6937, %6813, %6798
  %6966 = phi float [ 1.000000e+00, %6798 ], [ %6879, %6813 ], [ %6964, %6937 ]
  %6967 = fcmp fast ogt float %6226, 0.000000e+00
  br i1 %6967, label %6968, label %7286, !dx.controlflow.hints !130

; <label>:6968                                    ; preds = %6965
  %6969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6970 = extractvalue %dx.types.CBufRet.f32 %6969, 0
  %6971 = fadd fast float %6970, %6110
  %6972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6973 = extractvalue %dx.types.CBufRet.f32 %6972, 2
  %6974 = extractvalue %dx.types.CBufRet.f32 %6972, 3
  %6975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6976 = extractvalue %dx.types.CBufRet.f32 %6975, 0
  %6977 = call float @dx.op.binary.f32(i32 35, float %6971, float 0.000000e+00)  ; FMax(a,b)
  %6978 = fadd fast float %6977, 0x3F10000000000000
  %6979 = fcmp fast oeq float %6976, 0.000000e+00
  br i1 %6113, label %6980, label %7133, !dx.controlflow.hints !131

; <label>:6980                                    ; preds = %6968
  br i1 %6979, label %6981, label %7048

; <label>:6981                                    ; preds = %6980
  %6982 = extractvalue %dx.types.CBufRet.f32 %6972, 1
  %6983 = extractvalue %dx.types.CBufRet.f32 %6972, 0
  %6984 = fmul fast float %6983, %6102
  %6985 = fmul fast float %6982, %6106
  %6986 = fadd fast float %6984, 5.000000e-01
  %6987 = call float @dx.op.unary.f32(i32 27, float %6986)  ; Round_ni(value)
  %6988 = fadd fast float %6985, 5.000000e-01
  %6989 = call float @dx.op.unary.f32(i32 27, float %6988)  ; Round_ni(value)
  %6990 = fsub fast float %6986, %6987
  %6991 = fsub fast float %6988, %6989
  %6992 = fadd fast float %6987, -5.000000e-01
  %6993 = fadd fast float %6989, -5.000000e-01
  %6994 = fmul fast float %6990, 2.000000e+00
  %6995 = fsub fast float 3.000000e+00, %6994
  %6996 = fadd fast float %6994, 1.000000e+00
  %6997 = fsub fast float 2.000000e+00, %6990
  %6998 = bitcast float %6995 to i32
  %6999 = sub nsw i32 2129859010, %6998
  %7000 = bitcast i32 %6999 to float
  %7001 = fmul fast float %7000, %6997
  %7002 = fadd fast float %7001, -1.000000e+00
  %7003 = bitcast float %6996 to i32
  %7004 = sub nsw i32 2129859010, %7003
  %7005 = bitcast i32 %7004 to float
  %7006 = fmul fast float %7005, %6990
  %7007 = fadd fast float %7006, 1.000000e+00
  %7008 = fmul fast float %6991, 2.000000e+00
  %7009 = fsub fast float 3.000000e+00, %7008
  %7010 = fadd fast float %7008, 1.000000e+00
  %7011 = fsub fast float 2.000000e+00, %6991
  %7012 = bitcast float %7009 to i32
  %7013 = sub nsw i32 2129859010, %7012
  %7014 = bitcast i32 %7013 to float
  %7015 = fmul fast float %7014, %7011
  %7016 = fadd fast float %7015, -1.000000e+00
  %7017 = bitcast float %7010 to i32
  %7018 = sub nsw i32 2129859010, %7017
  %7019 = bitcast i32 %7018 to float
  %7020 = fmul fast float %7019, %6991
  %7021 = fadd fast float %7020, 1.000000e+00
  %7022 = fadd fast float %7002, %6992
  %7023 = fmul fast float %7022, %6973
  %7024 = fadd fast float %7016, %6993
  %7025 = fmul fast float %7024, %6974
  %7026 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7023, float %7025, float undef, float undef, i32 0, i32 0, i32 undef, float %6978)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7027 = extractvalue %dx.types.ResRet.f32 %7026, 0
  %7028 = fmul fast float %7027, %6995
  %7029 = fadd fast float %7007, %6992
  %7030 = fmul fast float %7029, %6973
  %7031 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7030, float %7025, float undef, float undef, i32 0, i32 0, i32 undef, float %6978)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7032 = extractvalue %dx.types.ResRet.f32 %7031, 0
  %7033 = fmul fast float %7032, %6996
  %7034 = fadd fast float %7021, %6993
  %7035 = fmul fast float %7034, %6974
  %7036 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7023, float %7035, float undef, float undef, i32 0, i32 0, i32 undef, float %6978)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7037 = extractvalue %dx.types.ResRet.f32 %7036, 0
  %7038 = fmul fast float %7037, %6995
  %7039 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %7030, float %7035, float undef, float undef, i32 0, i32 0, i32 undef, float %6978)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7040 = extractvalue %dx.types.ResRet.f32 %7039, 0
  %7041 = fmul fast float %7040, %6996
  %7042 = fadd fast float %7041, %7038
  %7043 = fmul fast float %7042, %7010
  %7044 = fadd fast float %7033, %7028
  %7045 = fmul fast float %7044, %7009
  %7046 = fadd fast float %7045, %7043
  %7047 = fmul fast float %7046, 6.250000e-02
  br label %7286

; <label>:7048                                    ; preds = %6980
  %7049 = fmul fast float %288, 0x401921FB60000000
  %7050 = call float @dx.op.unary.f32(i32 13, float %7049)  ; Sin(value)
  %7051 = call float @dx.op.unary.f32(i32 12, float %7049)  ; Cos(value)
  %7052 = fsub fast float -0.000000e+00, %7050
  br label %7053

; <label>:7053                                    ; preds = %7102, %7048
  %7054 = phi float [ 0.000000e+00, %7048 ], [ %7097, %7102 ]
  %7055 = phi float [ 0.000000e+00, %7048 ], [ %7099, %7102 ]
  %7056 = phi i32 [ 0, %7048 ], [ %7103, %7102 ]
  %7057 = mul i32 %7056, 2
  %7058 = add i32 0, %7057
  %7059 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7058
  %7060 = load float, float* %7059, align 4
  %7061 = mul i32 %7056, 2
  %7062 = add i32 1, %7061
  %7063 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7062
  %7064 = load float, float* %7063, align 4
  %7065 = fmul fast float %7060, %7051
  %7066 = call float @dx.op.tertiary.f32(i32 46, float %7064, float %7052, float %7065)  ; FMad(a,b,c)
  %7067 = fmul fast float %7060, %7050
  %7068 = call float @dx.op.tertiary.f32(i32 46, float %7064, float %7051, float %7067)  ; FMad(a,b,c)
  %7069 = fmul fast float %7066, %6976
  %7070 = fmul fast float %7068, %6976
  %7071 = fadd fast float %7069, %6102
  %7072 = fadd fast float %7070, %6106
  %7073 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %57, float %7071, float %7072, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7074 = extractvalue %dx.types.ResRet.f32 %7073, 0
  %7075 = extractvalue %dx.types.ResRet.f32 %7073, 1
  %7076 = extractvalue %dx.types.ResRet.f32 %7073, 2
  %7077 = extractvalue %dx.types.ResRet.f32 %7073, 3
  %7078 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 0
  store float %7074, float* %7078, align 4
  %7079 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 1
  store float %7075, float* %7079, align 4
  %7080 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 2
  store float %7076, float* %7080, align 4
  %7081 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 3
  store float %7077, float* %7081, align 4
  %7082 = fsub fast float %7074, %6978
  %7083 = fcmp fast olt float %7082, 0.000000e+00
  %7084 = select i1 %7083, float 0.000000e+00, float 1.000000e+00
  %7085 = fadd fast float %7084, %7054
  %7086 = fmul fast float %7084, %7082
  %7087 = fadd fast float %7086, %7055
  br label %7088

; <label>:7088                                    ; preds = %7088, %7053
  %7089 = phi i32 [ 1, %7053 ], [ %7100, %7088 ]
  %7090 = phi float [ %7087, %7053 ], [ %7099, %7088 ]
  %7091 = phi float [ %7085, %7053 ], [ %7097, %7088 ]
  %7092 = getelementptr [4 x float], [4 x float]* %109, i32 0, i32 %7089
  %7093 = load float, float* %7092, align 4, !tbaa !125, !noalias !115
  %7094 = fsub fast float %7093, %6978
  %7095 = fcmp fast olt float %7094, 0.000000e+00
  %7096 = select i1 %7095, float 0.000000e+00, float 1.000000e+00
  %7097 = fadd fast float %7096, %7091
  %7098 = fmul fast float %7096, %7094
  %7099 = fadd fast float %7098, %7090
  %7100 = add nuw nsw i32 %7089, 1
  %7101 = icmp eq i32 %7100, 4
  br i1 %7101, label %7102, label %7088, !llvm.loop !127

; <label>:7102                                    ; preds = %7088
  %7103 = add nuw nsw i32 %7056, 1
  %7104 = icmp eq i32 %7103, 8
  br i1 %7104, label %7105, label %7053, !llvm.loop !128

; <label>:7105                                    ; preds = %7102
  %7106 = fdiv fast float 1.000000e+00, %7097
  %7107 = fmul fast float %7106, %7099
  %7108 = fdiv fast float 1.000000e+00, %6978
  %7109 = fmul fast float %7107, %7108
  %7110 = call float @dx.op.unary.f32(i32 7, float %7109)  ; Saturate(value)
  %7111 = call float @dx.op.binary.f32(i32 35, float %7110, float 0.000000e+00)  ; FMax(a,b)
  %7112 = fmul fast float %7097, 3.125000e-02
  %7113 = call float @dx.op.unary.f32(i32 7, float %7112)  ; Saturate(value)
  %7114 = fmul fast float %7113, 2.000000e+00
  %7115 = fadd fast float %7114, -1.000000e+00
  %7116 = fcmp fast ogt float %7115, 0.000000e+00
  %7117 = fcmp fast olt float %7115, 0.000000e+00
  %7118 = zext i1 %7116 to i32
  %7119 = zext i1 %7117 to i32
  %7120 = sub nsw i32 %7118, %7119
  %7121 = sitofp i32 %7120 to float
  %7122 = fmul fast float %7121, %7115
  %7123 = fsub fast float 1.000000e+00, %7122
  %7124 = fmul fast float %7123, %7123
  %7125 = fmul fast float %7124, %7123
  %7126 = fsub fast float %7123, %7125
  %7127 = fmul fast float %7126, %7111
  %7128 = fsub fast float 1.000000e+00, %7125
  %7129 = fsub fast float %7128, %7127
  %7130 = fmul fast float %7121, 5.000000e-01
  %7131 = fmul fast float %7130, %7129
  %7132 = fsub fast float 5.000000e-01, %7131
  br label %7286

; <label>:7133                                    ; preds = %6968
  br i1 %6979, label %7134, label %7201

; <label>:7134                                    ; preds = %7133
  %7135 = extractvalue %dx.types.CBufRet.f32 %6972, 1
  %7136 = extractvalue %dx.types.CBufRet.f32 %6972, 0
  %7137 = fmul fast float %7136, %6102
  %7138 = fmul fast float %7135, %6106
  %7139 = fadd fast float %7137, 5.000000e-01
  %7140 = call float @dx.op.unary.f32(i32 27, float %7139)  ; Round_ni(value)
  %7141 = fadd fast float %7138, 5.000000e-01
  %7142 = call float @dx.op.unary.f32(i32 27, float %7141)  ; Round_ni(value)
  %7143 = fsub fast float %7139, %7140
  %7144 = fsub fast float %7141, %7142
  %7145 = fadd fast float %7140, -5.000000e-01
  %7146 = fadd fast float %7142, -5.000000e-01
  %7147 = fmul fast float %7143, 2.000000e+00
  %7148 = fsub fast float 3.000000e+00, %7147
  %7149 = fadd fast float %7147, 1.000000e+00
  %7150 = fsub fast float 2.000000e+00, %7143
  %7151 = bitcast float %7148 to i32
  %7152 = sub nsw i32 2129859010, %7151
  %7153 = bitcast i32 %7152 to float
  %7154 = fmul fast float %7153, %7150
  %7155 = fadd fast float %7154, -1.000000e+00
  %7156 = bitcast float %7149 to i32
  %7157 = sub nsw i32 2129859010, %7156
  %7158 = bitcast i32 %7157 to float
  %7159 = fmul fast float %7158, %7143
  %7160 = fadd fast float %7159, 1.000000e+00
  %7161 = fmul fast float %7144, 2.000000e+00
  %7162 = fsub fast float 3.000000e+00, %7161
  %7163 = fadd fast float %7161, 1.000000e+00
  %7164 = fsub fast float 2.000000e+00, %7144
  %7165 = bitcast float %7162 to i32
  %7166 = sub nsw i32 2129859010, %7165
  %7167 = bitcast i32 %7166 to float
  %7168 = fmul fast float %7167, %7164
  %7169 = fadd fast float %7168, -1.000000e+00
  %7170 = bitcast float %7163 to i32
  %7171 = sub nsw i32 2129859010, %7170
  %7172 = bitcast i32 %7171 to float
  %7173 = fmul fast float %7172, %7144
  %7174 = fadd fast float %7173, 1.000000e+00
  %7175 = fadd fast float %7155, %7145
  %7176 = fmul fast float %7175, %6973
  %7177 = fadd fast float %7169, %7146
  %7178 = fmul fast float %7177, %6974
  %7179 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7176, float %7178, float undef, float undef, i32 0, i32 0, i32 undef, float %6978)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7180 = extractvalue %dx.types.ResRet.f32 %7179, 0
  %7181 = fmul fast float %7180, %7148
  %7182 = fadd fast float %7160, %7145
  %7183 = fmul fast float %7182, %6973
  %7184 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7183, float %7178, float undef, float undef, i32 0, i32 0, i32 undef, float %6978)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7185 = extractvalue %dx.types.ResRet.f32 %7184, 0
  %7186 = fmul fast float %7185, %7149
  %7187 = fadd fast float %7174, %7146
  %7188 = fmul fast float %7187, %6974
  %7189 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7176, float %7188, float undef, float undef, i32 0, i32 0, i32 undef, float %6978)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7190 = extractvalue %dx.types.ResRet.f32 %7189, 0
  %7191 = fmul fast float %7190, %7148
  %7192 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7183, float %7188, float undef, float undef, i32 0, i32 0, i32 undef, float %6978)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7193 = extractvalue %dx.types.ResRet.f32 %7192, 0
  %7194 = fmul fast float %7193, %7149
  %7195 = fadd fast float %7194, %7191
  %7196 = fmul fast float %7195, %7163
  %7197 = fadd fast float %7186, %7181
  %7198 = fmul fast float %7197, %7162
  %7199 = fadd fast float %7198, %7196
  %7200 = fmul fast float %7199, 6.250000e-02
  br label %7286

; <label>:7201                                    ; preds = %7133
  %7202 = fmul fast float %288, 0x401921FB60000000
  %7203 = call float @dx.op.unary.f32(i32 13, float %7202)  ; Sin(value)
  %7204 = call float @dx.op.unary.f32(i32 12, float %7202)  ; Cos(value)
  %7205 = fsub fast float -0.000000e+00, %7203
  br label %7206

; <label>:7206                                    ; preds = %7255, %7201
  %7207 = phi float [ 0.000000e+00, %7201 ], [ %7250, %7255 ]
  %7208 = phi float [ 0.000000e+00, %7201 ], [ %7252, %7255 ]
  %7209 = phi i32 [ 0, %7201 ], [ %7256, %7255 ]
  %7210 = mul i32 %7209, 2
  %7211 = add i32 0, %7210
  %7212 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7211
  %7213 = load float, float* %7212, align 4
  %7214 = mul i32 %7209, 2
  %7215 = add i32 1, %7214
  %7216 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7215
  %7217 = load float, float* %7216, align 4
  %7218 = fmul fast float %7213, %7204
  %7219 = call float @dx.op.tertiary.f32(i32 46, float %7217, float %7205, float %7218)  ; FMad(a,b,c)
  %7220 = fmul fast float %7213, %7203
  %7221 = call float @dx.op.tertiary.f32(i32 46, float %7217, float %7204, float %7220)  ; FMad(a,b,c)
  %7222 = fmul fast float %7219, %6976
  %7223 = fmul fast float %7221, %6976
  %7224 = fadd fast float %7222, %6102
  %7225 = fadd fast float %7223, %6106
  %7226 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %57, float %7224, float %7225, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7227 = extractvalue %dx.types.ResRet.f32 %7226, 0
  %7228 = extractvalue %dx.types.ResRet.f32 %7226, 1
  %7229 = extractvalue %dx.types.ResRet.f32 %7226, 2
  %7230 = extractvalue %dx.types.ResRet.f32 %7226, 3
  %7231 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 0
  store float %7227, float* %7231, align 4
  %7232 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 1
  store float %7228, float* %7232, align 4
  %7233 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 2
  store float %7229, float* %7233, align 4
  %7234 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 3
  store float %7230, float* %7234, align 4
  %7235 = fsub fast float %7227, %6978
  %7236 = fcmp fast olt float %7235, 0.000000e+00
  %7237 = select i1 %7236, float 0.000000e+00, float 1.000000e+00
  %7238 = fadd fast float %7237, %7207
  %7239 = fmul fast float %7237, %7235
  %7240 = fadd fast float %7239, %7208
  br label %7241

; <label>:7241                                    ; preds = %7241, %7206
  %7242 = phi i32 [ 1, %7206 ], [ %7253, %7241 ]
  %7243 = phi float [ %7240, %7206 ], [ %7252, %7241 ]
  %7244 = phi float [ %7238, %7206 ], [ %7250, %7241 ]
  %7245 = getelementptr [4 x float], [4 x float]* %108, i32 0, i32 %7242
  %7246 = load float, float* %7245, align 4, !tbaa !125, !noalias !115
  %7247 = fsub fast float %7246, %6978
  %7248 = fcmp fast olt float %7247, 0.000000e+00
  %7249 = select i1 %7248, float 0.000000e+00, float 1.000000e+00
  %7250 = fadd fast float %7249, %7244
  %7251 = fmul fast float %7249, %7247
  %7252 = fadd fast float %7251, %7243
  %7253 = add nuw nsw i32 %7242, 1
  %7254 = icmp eq i32 %7253, 4
  br i1 %7254, label %7255, label %7241, !llvm.loop !127

; <label>:7255                                    ; preds = %7241
  %7256 = add nuw nsw i32 %7209, 1
  %7257 = icmp eq i32 %7256, 8
  br i1 %7257, label %7258, label %7206, !llvm.loop !128

; <label>:7258                                    ; preds = %7255
  %7259 = fdiv fast float 1.000000e+00, %7250
  %7260 = fmul fast float %7259, %7252
  %7261 = fdiv fast float 1.000000e+00, %6978
  %7262 = fmul fast float %7260, %7261
  %7263 = call float @dx.op.unary.f32(i32 7, float %7262)  ; Saturate(value)
  %7264 = call float @dx.op.binary.f32(i32 35, float %7263, float 0.000000e+00)  ; FMax(a,b)
  %7265 = fmul fast float %7250, 3.125000e-02
  %7266 = call float @dx.op.unary.f32(i32 7, float %7265)  ; Saturate(value)
  %7267 = fmul fast float %7266, 2.000000e+00
  %7268 = fadd fast float %7267, -1.000000e+00
  %7269 = fcmp fast ogt float %7268, 0.000000e+00
  %7270 = fcmp fast olt float %7268, 0.000000e+00
  %7271 = zext i1 %7269 to i32
  %7272 = zext i1 %7270 to i32
  %7273 = sub nsw i32 %7271, %7272
  %7274 = sitofp i32 %7273 to float
  %7275 = fmul fast float %7274, %7268
  %7276 = fsub fast float 1.000000e+00, %7275
  %7277 = fmul fast float %7276, %7276
  %7278 = fmul fast float %7277, %7276
  %7279 = fsub fast float %7276, %7278
  %7280 = fmul fast float %7279, %7264
  %7281 = fsub fast float 1.000000e+00, %7278
  %7282 = fsub fast float %7281, %7280
  %7283 = fmul fast float %7274, 5.000000e-01
  %7284 = fmul fast float %7283, %7282
  %7285 = fsub fast float 5.000000e-01, %7284
  br label %7286

; <label>:7286                                    ; preds = %7258, %7134, %7105, %6981, %6965
  %7287 = phi float [ 1.000000e+00, %6965 ], [ %7047, %6981 ], [ %7132, %7105 ], [ %7200, %7134 ], [ %7285, %7258 ]
  %7288 = fsub fast float %6799, %6632
  %7289 = fmul fast float %7288, %6199
  %7290 = fadd fast float %7289, %6632
  %7291 = fsub fast float %6966, %7290
  %7292 = fmul fast float %7291, %6198
  %7293 = fadd fast float %7292, %7290
  %7294 = fsub fast float %7287, %7293
  %7295 = fmul fast float %7294, %6226
  %7296 = fadd fast float %7295, %7293
  %7297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7298 = extractvalue %dx.types.CBufRet.f32 %7297, 2
  %7299 = fcmp fast ogt float %7298, 0.000000e+00
  br i1 %7299, label %7300, label %7340, !dx.controlflow.hints !132

; <label>:7300                                    ; preds = %7286
  %7301 = fcmp fast ugt float %7298, 0.000000e+00
  br i1 %7301, label %7302, label %7337

; <label>:7302                                    ; preds = %7300
  %7303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7304 = extractvalue %dx.types.CBufRet.f32 %7303, 0
  %7305 = extractvalue %dx.types.CBufRet.f32 %7303, 1
  %7306 = extractvalue %dx.types.CBufRet.f32 %7303, 2
  %7307 = extractvalue %dx.types.CBufRet.f32 %7303, 3
  %7308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7309 = extractvalue %dx.types.CBufRet.f32 %7308, 0
  %7310 = extractvalue %dx.types.CBufRet.f32 %7308, 1
  %7311 = extractvalue %dx.types.CBufRet.f32 %7308, 2
  %7312 = extractvalue %dx.types.CBufRet.f32 %7308, 3
  %7313 = extractvalue %dx.types.CBufRet.f32 %7297, 0
  %7314 = extractvalue %dx.types.CBufRet.f32 %7297, 1
  %7315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7316 = extractvalue %dx.types.CBufRet.f32 %7315, 0
  %7317 = extractvalue %dx.types.CBufRet.f32 %7315, 1
  %7318 = extractvalue %dx.types.CBufRet.f32 %7315, 2
  %7319 = fadd fast float %7316, %6079
  %7320 = fadd fast float %7317, %6080
  %7321 = fadd fast float %7318, %6081
  %7322 = fmul fast float %7319, %7304
  %7323 = call float @dx.op.tertiary.f32(i32 46, float %7305, float %7320, float %7322)  ; FMad(a,b,c)
  %7324 = call float @dx.op.tertiary.f32(i32 46, float %7306, float %7321, float %7323)  ; FMad(a,b,c)
  %7325 = fadd fast float %7324, %7307
  %7326 = fmul fast float %7319, %7309
  %7327 = call float @dx.op.tertiary.f32(i32 46, float %7310, float %7320, float %7326)  ; FMad(a,b,c)
  %7328 = call float @dx.op.tertiary.f32(i32 46, float %7311, float %7321, float %7327)  ; FMad(a,b,c)
  %7329 = fadd fast float %7328, %7312
  %7330 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %53, float %7325, float %7329, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7331 = extractvalue %dx.types.ResRet.f32 %7330, 0
  %7332 = fmul fast float %7331, %7314
  %7333 = fadd fast float %7332, %7313
  %7334 = call float @dx.op.unary.f32(i32 7, float %7333)  ; Saturate(value)
  %7335 = fmul fast float %7334, %7298
  %7336 = fsub fast float 1.000000e+00, %7335
  br label %7337

; <label>:7337                                    ; preds = %7302, %7300
  %7338 = phi float [ %7336, %7302 ], [ 1.000000e+00, %7300 ]
  %7339 = fmul fast float %7338, %7296
  br label %7340

; <label>:7340                                    ; preds = %7337, %7286, %6059
  %7341 = phi float [ 1.000000e+00, %6059 ], [ %7339, %7337 ], [ %7296, %7286 ]
  %7342 = call float @dx.op.binary.f32(i32 36, float %7341, float %7341)  ; FMin(a,b)
  %7343 = call float @dx.op.binary.f32(i32 36, float %7341, float %7342)  ; FMin(a,b)
  %7344 = fcmp fast ogt float %7343, 0.000000e+00
  br i1 %7344, label %7345, label %7510, !dx.controlflow.hints !133

; <label>:7345                                    ; preds = %7340
  %7346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7347 = extractvalue %dx.types.CBufRet.f32 %7346, 0
  %7348 = extractvalue %dx.types.CBufRet.f32 %7346, 1
  %7349 = extractvalue %dx.types.CBufRet.f32 %7346, 2
  %7350 = extractvalue %dx.types.CBufRet.f32 %7346, 3
  %7351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7352 = extractvalue %dx.types.CBufRet.f32 %7351, 0
  %7353 = extractvalue %dx.types.CBufRet.f32 %7351, 1
  %7354 = extractvalue %dx.types.CBufRet.f32 %7351, 2
  %7355 = extractvalue %dx.types.CBufRet.f32 %7351, 3
  %7356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7357 = extractvalue %dx.types.CBufRet.f32 %7356, 0
  %7358 = extractvalue %dx.types.CBufRet.f32 %7356, 1
  %7359 = extractvalue %dx.types.CBufRet.f32 %7356, 2
  %7360 = extractvalue %dx.types.CBufRet.f32 %7356, 3
  %7361 = fmul fast float %7347, %6079
  %7362 = call float @dx.op.tertiary.f32(i32 46, float %6080, float %7348, float %7361)  ; FMad(a,b,c)
  %7363 = call float @dx.op.tertiary.f32(i32 46, float %6081, float %7349, float %7362)  ; FMad(a,b,c)
  %7364 = fadd fast float %7363, %7350
  %7365 = fmul fast float %7352, %6079
  %7366 = call float @dx.op.tertiary.f32(i32 46, float %6080, float %7353, float %7365)  ; FMad(a,b,c)
  %7367 = call float @dx.op.tertiary.f32(i32 46, float %6081, float %7354, float %7366)  ; FMad(a,b,c)
  %7368 = fadd fast float %7367, %7355
  %7369 = fmul fast float %7357, %6079
  %7370 = call float @dx.op.tertiary.f32(i32 46, float %6080, float %7358, float %7369)  ; FMad(a,b,c)
  %7371 = call float @dx.op.tertiary.f32(i32 46, float %6081, float %7359, float %7370)  ; FMad(a,b,c)
  %7372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7373 = extractvalue %dx.types.CBufRet.f32 %7372, 0
  %7374 = extractvalue %dx.types.CBufRet.f32 %7372, 1
  %7375 = extractvalue %dx.types.CBufRet.f32 %7372, 3
  %7376 = fmul fast float %7375, %7364
  %7377 = fmul fast float %7375, %7368
  %7378 = fadd fast float %7376, %7373
  %7379 = fadd fast float %7377, %7374
  %7380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7381 = extractvalue %dx.types.CBufRet.f32 %7380, 0
  %7382 = extractvalue %dx.types.CBufRet.f32 %7380, 1
  %7383 = fsub fast float %7378, %7381
  %7384 = fsub fast float %7379, %7382
  %7385 = fcmp fast olt float %7383, 0.000000e+00
  %7386 = fcmp fast olt float %7384, 0.000000e+00
  %7387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7388 = extractvalue %dx.types.CBufRet.f32 %7387, 0
  %7389 = extractvalue %dx.types.CBufRet.f32 %7387, 1
  %7390 = extractvalue %dx.types.CBufRet.f32 %7387, 2
  %7391 = extractvalue %dx.types.CBufRet.f32 %7387, 3
  %7392 = select i1 %7385, float %7388, float %7390
  %7393 = select i1 %7386, float %7389, float %7391
  %7394 = fmul fast float %7392, %7383
  %7395 = fmul fast float %7393, %7384
  %7396 = call float @dx.op.unary.f32(i32 6, float %7394)  ; FAbs(value)
  %7397 = call float @dx.op.unary.f32(i32 6, float %7395)  ; FAbs(value)
  %7398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7399 = extractvalue %dx.types.CBufRet.f32 %7398, 0
  %7400 = call float @dx.op.binary.f32(i32 35, float %7396, float %7397)  ; FMax(a,b)
  %7401 = fsub fast float %7399, %7400
  %7402 = call float @dx.op.unary.f32(i32 7, float %7401)  ; Saturate(value)
  %7403 = fcmp fast ogt float %7402, 0.000000e+00
  br i1 %7403, label %7404, label %7445, !dx.controlflow.hints !134

; <label>:7404                                    ; preds = %7345
  %7405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %56, float %7378, float %7379, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7406 = extractvalue %dx.types.ResRet.f32 %7405, 1
  %7407 = fcmp fast ogt float %7406, 0.000000e+00
  br i1 %7407, label %7408, label %7440

; <label>:7408                                    ; preds = %7404
  %7409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %56, float %7378, float %7379, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7410 = extractvalue %dx.types.ResRet.f32 %7409, 0
  %7411 = extractvalue %dx.types.ResRet.f32 %7409, 1
  %7412 = extractvalue %dx.types.ResRet.f32 %7409, 2
  %7413 = extractvalue %dx.types.ResRet.f32 %7409, 3
  %7414 = fsub fast float 1.000000e+00, %7360
  %7415 = fsub fast float %7414, %7371
  %7416 = fmul fast float %7415, 0x400921FB60000000
  %7417 = fadd fast float %7416, 0x3FF921FB60000000
  %7418 = call float @dx.op.unary.f32(i32 13, float %7417)  ; Sin(value)
  %7419 = fadd fast float %7418, -1.000000e+00
  %7420 = fmul fast float %7419, 0x3FD45F3060000000
  %7421 = fmul fast float %7415, 0x401921FB60000000
  %7422 = fadd fast float %7421, 0x400921FB60000000
  %7423 = call float @dx.op.unary.f32(i32 13, float %7422)  ; Sin(value)
  %7424 = fadd fast float %7423, 0x3E7777A5C0000000
  %7425 = fmul fast float %7424, 0x3FC45F3060000000
  %7426 = fmul fast float %7415, 0x4022D97C80000000
  %7427 = fadd fast float %7426, 0x4012D97C80000000
  %7428 = call float @dx.op.unary.f32(i32 13, float %7427)  ; Sin(value)
  %7429 = fadd fast float %7428, 1.000000e+00
  %7430 = fmul fast float %7429, 0x3FBB2995E0000000
  %7431 = fmul fast float %7415, 0x402921FB60000000
  %7432 = fadd fast float %7431, 0x401921FB60000000
  %7433 = call float @dx.op.unary.f32(i32 13, float %7432)  ; Sin(value)
  %7434 = fadd fast float %7433, 0xBE8777A5C0000000
  %7435 = fmul fast float %7434, 0x3FB45F3060000000
  %7436 = call float @dx.op.dot4.f32(i32 56, float %7410, float %7411, float %7412, float %7413, float %7420, float %7425, float %7430, float %7435)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7437 = fmul fast float %7436, 0xBFF7154760000000
  %7438 = call float @dx.op.unary.f32(i32 21, float %7437)  ; Exp(value)
  %7439 = call float @dx.op.unary.f32(i32 7, float %7438)  ; Saturate(value)
  br label %7440

; <label>:7440                                    ; preds = %7408, %7404
  %7441 = phi float [ %7439, %7408 ], [ 1.000000e+00, %7404 ]
  %7442 = fadd fast float %7441, -1.000000e+00
  %7443 = fmul fast float %7442, %7402
  %7444 = fadd fast float %7443, 1.000000e+00
  br label %7445

; <label>:7445                                    ; preds = %7440, %7345
  %7446 = phi float [ %7444, %7440 ], [ 1.000000e+00, %7345 ]
  %7447 = fmul fast float %7446, %7341
  %7448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7449 = extractvalue %dx.types.CBufRet.f32 %7448, 0
  %7450 = extractvalue %dx.types.CBufRet.f32 %7448, 1
  %7451 = extractvalue %dx.types.CBufRet.f32 %7448, 2
  %7452 = fadd fast float %7449, %205
  %7453 = fadd fast float %7450, %206
  %7454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7455 = extractvalue %dx.types.CBufRet.f32 %7454, 1
  %7456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7457 = extractvalue %dx.types.CBufRet.f32 %7456, 0
  %7458 = extractvalue %dx.types.CBufRet.f32 %7456, 1
  %7459 = extractvalue %dx.types.CBufRet.f32 %7456, 2
  %7460 = fsub fast float -0.000000e+00, %7452
  %7461 = fsub fast float -0.000000e+00, %7453
  %7462 = fsub fast float %5331, %7451
  %7463 = fadd fast float %7462, %7455
  %7464 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7460, float %7461, float %7463)  ; Dot3(ax,ay,az,bx,by,bz)
  %7465 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7457, float %7458, float %7459)  ; Dot3(ax,ay,az,bx,by,bz)
  %7466 = fdiv fast float 1.000000e+00, %7465
  %7467 = fmul fast float %7466, %7464
  %7468 = fmul fast float %7457, %7467
  %7469 = fmul fast float %7458, %7467
  %7470 = fadd fast float %7468, %7452
  %7471 = fadd fast float %7469, %7453
  %7472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7473 = extractvalue %dx.types.CBufRet.f32 %7472, 0
  %7474 = extractvalue %dx.types.CBufRet.f32 %7472, 1
  %7475 = fsub fast float %7470, %7473
  %7476 = fsub fast float %7471, %7474
  %7477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7478 = extractvalue %dx.types.CBufRet.f32 %7477, 2
  %7479 = extractvalue %dx.types.CBufRet.f32 %7477, 3
  %7480 = fmul fast float %7475, %7478
  %7481 = fmul fast float %7476, %7479
  %7482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7483 = extractvalue %dx.types.CBufRet.i32 %7482, 3
  %7484 = icmp eq i32 %7483, 0
  br i1 %7484, label %7490, label %7485

; <label>:7485                                    ; preds = %7445
  %7486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %7480, float %7481, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7487 = extractvalue %dx.types.ResRet.f32 %7486, 0
  %7488 = extractvalue %dx.types.ResRet.f32 %7486, 1
  %7489 = extractvalue %dx.types.ResRet.f32 %7486, 2
  br label %7495

; <label>:7490                                    ; preds = %7445
  %7491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %56, float %7480, float %7481, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7492 = extractvalue %dx.types.ResRet.f32 %7491, 0
  %7493 = extractvalue %dx.types.ResRet.f32 %7491, 1
  %7494 = extractvalue %dx.types.ResRet.f32 %7491, 2
  br label %7495

; <label>:7495                                    ; preds = %7490, %7485
  %7496 = phi float [ %7487, %7485 ], [ %7492, %7490 ]
  %7497 = phi float [ %7488, %7485 ], [ %7493, %7490 ]
  %7498 = phi float [ %7489, %7485 ], [ %7494, %7490 ]
  %7499 = extractvalue %dx.types.CBufRet.f32 %7454, 2
  %7500 = fmul fast float %7499, %7496
  %7501 = extractvalue %dx.types.CBufRet.f32 %7454, 0
  %7502 = fsub fast float %7467, %7501
  %7503 = fsub fast float %7502, %7500
  %7504 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7503)  ; FMax(a,b)
  %7505 = fmul fast float %7504, %7497
  %7506 = call float @dx.op.binary.f32(i32 36, float %7498, float %7505)  ; FMin(a,b)
  %7507 = fmul fast float %7506, 0xBFF7154760000000
  %7508 = call float @dx.op.unary.f32(i32 21, float %7507)  ; Exp(value)
  %7509 = fmul fast float %7447, %7508
  br label %7510

; <label>:7510                                    ; preds = %7495, %7340
  %7511 = phi float [ %7509, %7495 ], [ %7341, %7340 ]
  %7512 = call float @dx.op.binary.f32(i32 36, float %7511, float %7511)  ; FMin(a,b)
  %7513 = call float @dx.op.binary.f32(i32 36, float %7511, float %7512)  ; FMin(a,b)
  %7514 = fcmp fast ogt float %7513, 0.000000e+00
  br i1 %7514, label %7515, label %7762, !dx.controlflow.hints !135

; <label>:7515                                    ; preds = %7510
  %7516 = fmul fast float %7511, %6071
  %7517 = fmul fast float %7511, %6072
  %7518 = fmul fast float %7511, %6073
  %7519 = fsub fast float %207, %4508
  %7520 = fcmp fast ogt float %7519, 0.000000e+00
  %7521 = fmul fast float %6060, 5.120000e+02
  %7522 = fmul fast float %6061, 5.120000e+02
  %7523 = fmul fast float %6062, 5.120000e+02
  %7524 = fadd fast float %7523, %207
  %7525 = fsub fast float %4508, %7524
  %7526 = fmul fast float %7525, 2.000000e+00
  %7527 = fadd fast float %7526, %7524
  %7528 = select i1 %7520, float %7527, float %7524
  %7529 = fsub fast float %7528, %207
  %7530 = call float @dx.op.dot3.f32(i32 55, float %7521, float %7522, float %7529, float %7521, float %7522, float %7529)  ; Dot3(ax,ay,az,bx,by,bz)
  %7531 = call float @dx.op.unary.f32(i32 25, float %7530)  ; Rsqrt(value)
  %7532 = fmul fast float %7531, %7521
  %7533 = fmul fast float %7531, %7522
  %7534 = fmul fast float %7531, %7529
  %7535 = fsub fast float %4508, %207
  %7536 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7535)  ; Dot3(ax,ay,az,bx,by,bz)
  %7537 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7532, float %7533, float %7534)  ; Dot3(ax,ay,az,bx,by,bz)
  %7538 = fdiv fast float 1.000000e+00, %7537
  %7539 = fmul fast float %7538, %7536
  %7540 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7519, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7541 = fcmp fast ogt float %7540, 0.000000e+00
  %7542 = fcmp fast olt float %7540, 0.000000e+00
  %7543 = zext i1 %7541 to i32
  %7544 = zext i1 %7542 to i32
  %7545 = sub nsw i32 %7543, %7544
  %7546 = sitofp i32 %7545 to float
  %7547 = fsub fast float %7528, %4508
  %7548 = call float @dx.op.dot3.f32(i32 55, float %7521, float %7522, float %7547, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7549 = fcmp fast ogt float %7548, 0.000000e+00
  %7550 = fcmp fast olt float %7548, 0.000000e+00
  %7551 = zext i1 %7549 to i32
  %7552 = zext i1 %7550 to i32
  %7553 = sub nsw i32 %7551, %7552
  %7554 = sitofp i32 %7553 to float
  %7555 = fcmp fast une float %7546, %7554
  br i1 %7555, label %7556, label %7566

; <label>:7556                                    ; preds = %7515
  %7557 = fmul fast float %7539, %7534
  %7558 = fmul fast float %7539, %7533
  %7559 = fmul fast float %7539, %7532
  %7560 = fmul fast float %7559, %7559
  %7561 = fmul fast float %7558, %7558
  %7562 = fadd fast float %7560, %7561
  %7563 = fmul fast float %7557, %7557
  %7564 = fadd fast float %7562, %7563
  %7565 = call float @dx.op.unary.f32(i32 24, float %7564)  ; Sqrt(value)
  br label %7576

; <label>:7566                                    ; preds = %7515
  %7567 = icmp slt i32 %7545, 0
  br i1 %7567, label %7568, label %7576

; <label>:7568                                    ; preds = %7566
  %7569 = fsub fast float %207, %7528
  %7570 = fmul fast float %7521, %7521
  %7571 = fmul fast float %7522, %7522
  %7572 = fadd fast float %7570, %7571
  %7573 = fmul fast float %7569, %7569
  %7574 = fadd fast float %7572, %7573
  %7575 = call float @dx.op.unary.f32(i32 24, float %7574)  ; Sqrt(value)
  br label %7576

; <label>:7576                                    ; preds = %7568, %7566, %7556
  %7577 = phi float [ %7565, %7556 ], [ %7575, %7568 ], [ 0.000000e+00, %7566 ]
  %7578 = fsub fast float -0.000000e+00, %7577
  %7579 = select i1 %7520, float -0.000000e+00, float %7578
  %7580 = fmul fast float %4509, 0x3FF7154760000000
  %7581 = fmul fast float %7580, %7579
  %7582 = fmul fast float %4510, 0x3FF7154760000000
  %7583 = fmul fast float %7582, %7579
  %7584 = fmul fast float %4511, 0x3FF7154760000000
  %7585 = fmul fast float %7584, %7579
  %7586 = call float @dx.op.unary.f32(i32 21, float %7581)  ; Exp(value)
  %7587 = call float @dx.op.unary.f32(i32 21, float %7583)  ; Exp(value)
  %7588 = call float @dx.op.unary.f32(i32 21, float %7585)  ; Exp(value)
  %7589 = call float @dx.op.unary.f32(i32 7, float %7586)  ; Saturate(value)
  %7590 = call float @dx.op.unary.f32(i32 7, float %7587)  ; Saturate(value)
  %7591 = call float @dx.op.unary.f32(i32 7, float %7588)  ; Saturate(value)
  %7592 = fmul fast float %7516, %7589
  %7593 = fmul fast float %7517, %7590
  %7594 = fmul fast float %7518, %7591
  %7595 = fsub fast float %6060, %5334
  %7596 = fsub fast float %6061, %5335
  %7597 = fsub fast float %6062, %5336
  %7598 = call float @dx.op.dot3.f32(i32 55, float %7595, float %7596, float %7597, float %7595, float %7596, float %7597)  ; Dot3(ax,ay,az,bx,by,bz)
  %7599 = call float @dx.op.unary.f32(i32 25, float %7598)  ; Rsqrt(value)
  %7600 = fmul fast float %7599, %7595
  %7601 = fmul fast float %7599, %7596
  %7602 = fmul fast float %7599, %7597
  %7603 = call float @dx.op.dot3.f32(i32 55, float %6060, float %6061, float %6062, float %5294, float %5295, float %5296)  ; Dot3(ax,ay,az,bx,by,bz)
  %7604 = call float @dx.op.dot3.f32(i32 55, float %5337, float %5338, float %5339, float %7600, float %7601, float %7602)  ; Dot3(ax,ay,az,bx,by,bz)
  %7605 = call float @dx.op.unary.f32(i32 7, float %7603)  ; Saturate(value)
  %7606 = fmul fast float %7605, %7605
  %7607 = fmul fast float %7606, %5367
  %7608 = call float @dx.op.unary.f32(i32 7, float %7607)  ; Saturate(value)
  %7609 = fmul fast float %7608, %7605
  %7610 = call float @dx.op.dot3.f32(i32 55, float %5294, float %5295, float %5296, float %7600, float %7601, float %7602)  ; Dot3(ax,ay,az,bx,by,bz)
  %7611 = fmul fast float %7610, %7610
  %7612 = call float @dx.op.unary.f32(i32 6, float %7603)  ; FAbs(value)
  %7613 = fsub fast float 1.000000e+00, %5360
  %7614 = fmul fast float %5342, %5342
  %7615 = fmul fast float %7614, %7613
  %7616 = fadd fast float %7615, %5360
  %7617 = bitcast float %7616 to i32
  %7618 = ashr i32 %7617, 1
  %7619 = add nsw i32 %7618, 532487669
  %7620 = bitcast i32 %7619 to float
  %7621 = fadd fast float %7620, %5342
  %7622 = fmul fast float %5360, %7611
  %7623 = fsub fast float 1.000000e+00, %7611
  %7624 = fadd fast float %7623, %7622
  %7625 = fmul fast float %7612, %7612
  %7626 = fmul fast float %7625, %7613
  %7627 = fadd fast float %7626, %5360
  %7628 = bitcast float %7627 to i32
  %7629 = ashr i32 %7628, 1
  %7630 = add nsw i32 %7629, 532487669
  %7631 = bitcast i32 %7630 to float
  %7632 = fadd fast float %7631, %7612
  %7633 = fmul fast float %7624, %7624
  %7634 = fmul fast float %7633, %7621
  %7635 = fmul fast float %7634, %7632
  %7636 = fdiv fast float 0x3FF0A00000000000, %7635
  %7637 = fmul fast float %7636, %5360
  %7638 = call float @dx.op.unary.f32(i32 6, float %7604)  ; FAbs(value)
  %7639 = fsub fast float 1.000000e+00, %7638
  %7640 = bitcast float %7639 to i32
  %7641 = sitofp i32 %7640 to float
  %7642 = fmul fast float %7641, 5.000000e+00
  %7643 = fadd fast float %7642, 0xC1EFBF8940000000
  %7644 = fptosi float %7643 to i32
  %7645 = bitcast i32 %7644 to float
  %7646 = fsub fast float 1.000000e+00, %5291
  %7647 = fsub fast float 1.000000e+00, %5292
  %7648 = fsub fast float 1.000000e+00, %5340
  %7649 = fmul fast float %7645, %7646
  %7650 = fmul fast float %7645, %7647
  %7651 = fmul fast float %7645, %7648
  %7652 = fadd fast float %7649, %5291
  %7653 = fadd fast float %7650, %5292
  %7654 = fadd fast float %7651, %5340
  br i1 %5479, label %7655, label %7678

; <label>:7655                                    ; preds = %7576
  %7656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4106, float %7638, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7657 = extractvalue %dx.types.ResRet.f32 %7656, 0
  %7658 = extractvalue %dx.types.ResRet.f32 %7656, 1
  %7659 = extractvalue %dx.types.ResRet.f32 %7656, 2
  %7660 = fadd fast float %7657, -5.000000e-01
  %7661 = fadd fast float %7658, -5.000000e-01
  %7662 = fadd fast float %7659, -5.000000e-01
  %7663 = fmul fast float %5291, 4.000000e+00
  %7664 = fmul fast float %7663, %7646
  %7665 = fmul fast float %7664, %7660
  %7666 = fmul fast float %5292, 4.000000e+00
  %7667 = fmul fast float %7666, %7647
  %7668 = fmul fast float %7667, %7661
  %7669 = fmul fast float %5340, 4.000000e+00
  %7670 = fmul fast float %7669, %7648
  %7671 = fmul fast float %7670, %7662
  %7672 = fadd fast float %7665, %7652
  %7673 = fadd fast float %7668, %7653
  %7674 = fadd fast float %7671, %7654
  %7675 = call float @dx.op.unary.f32(i32 7, float %7672)  ; Saturate(value)
  %7676 = call float @dx.op.unary.f32(i32 7, float %7673)  ; Saturate(value)
  %7677 = call float @dx.op.unary.f32(i32 7, float %7674)  ; Saturate(value)
  br label %7678

; <label>:7678                                    ; preds = %7655, %7576
  %7679 = phi float [ %7675, %7655 ], [ %7652, %7576 ]
  %7680 = phi float [ %7676, %7655 ], [ %7653, %7576 ]
  %7681 = phi float [ %7677, %7655 ], [ %7654, %7576 ]
  %7682 = fmul fast float %7603, 9.843750e-01
  %7683 = fadd fast float %7682, 7.812500e-03
  %7684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %7683, float %5469, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7685 = extractvalue %dx.types.ResRet.f32 %7684, 2
  %7686 = extractvalue %dx.types.ResRet.f32 %7684, 3
  %7687 = fmul fast float %7685, %5291
  %7688 = fmul fast float %7685, %5292
  %7689 = fmul fast float %7685, %5340
  %7690 = fadd fast float %7687, %7686
  %7691 = fadd fast float %7688, %7686
  %7692 = fadd fast float %7689, %7686
  br i1 %5479, label %7693, label %7716

; <label>:7693                                    ; preds = %7678
  %7694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4106, float %7603, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7695 = extractvalue %dx.types.ResRet.f32 %7694, 0
  %7696 = extractvalue %dx.types.ResRet.f32 %7694, 1
  %7697 = extractvalue %dx.types.ResRet.f32 %7694, 2
  %7698 = fadd fast float %7695, -5.000000e-01
  %7699 = fadd fast float %7696, -5.000000e-01
  %7700 = fadd fast float %7697, -5.000000e-01
  %7701 = fmul fast float %5291, 4.000000e+00
  %7702 = fmul fast float %7701, %7646
  %7703 = fmul fast float %7702, %7698
  %7704 = fmul fast float %5292, 4.000000e+00
  %7705 = fmul fast float %7704, %7647
  %7706 = fmul fast float %7705, %7699
  %7707 = fmul fast float %5340, 4.000000e+00
  %7708 = fmul fast float %7707, %7648
  %7709 = fmul fast float %7708, %7700
  %7710 = fadd fast float %7703, %7690
  %7711 = fadd fast float %7706, %7691
  %7712 = fadd fast float %7709, %7692
  %7713 = call float @dx.op.unary.f32(i32 7, float %7710)  ; Saturate(value)
  %7714 = call float @dx.op.unary.f32(i32 7, float %7711)  ; Saturate(value)
  %7715 = call float @dx.op.unary.f32(i32 7, float %7712)  ; Saturate(value)
  br label %7716

; <label>:7716                                    ; preds = %7693, %7678
  %7717 = phi float [ %7713, %7693 ], [ %7690, %7678 ]
  %7718 = phi float [ %7714, %7693 ], [ %7691, %7678 ]
  %7719 = phi float [ %7715, %7693 ], [ %7692, %7678 ]
  %7720 = call float @dx.op.binary.f32(i32 35, float %7718, float %7719)  ; FMax(a,b)
  %7721 = call float @dx.op.binary.f32(i32 35, float %7717, float %7720)  ; FMax(a,b)
  %7722 = fsub fast float 1.000000e+00, %7721
  %7723 = fmul fast float %7679, %7637
  %7724 = fmul fast float %7680, %7637
  %7725 = fmul fast float %7681, %7637
  %7726 = fsub fast float 1.000000e+00, %7604
  %7727 = bitcast float %7726 to i32
  %7728 = sitofp i32 %7727 to float
  %7729 = fmul fast float %7728, 5.000000e+00
  %7730 = fadd fast float %7729, 0xC1EFBF8940000000
  %7731 = fptosi float %7730 to i32
  %7732 = bitcast i32 %7731 to float
  %7733 = fmul fast float %7732, %4107
  %7734 = fmul fast float %7722, %7733
  %7735 = fmul fast float %7734, %6021
  %7736 = fmul fast float %7734, %6022
  %7737 = fmul fast float %7734, %6023
  %7738 = fadd fast float %7735, %7723
  %7739 = fadd fast float %7736, %7724
  %7740 = fadd fast float %7737, %7725
  %7741 = fmul fast float %7609, %7592
  %7742 = fmul fast float %7741, %7722
  %7743 = fmul fast float %7609, %7593
  %7744 = fmul fast float %7743, %7722
  %7745 = fmul fast float %7609, %7594
  %7746 = fmul fast float %7745, %7722
  %7747 = fmul fast float %7741, %7738
  %7748 = fmul fast float %7743, %7739
  %7749 = fmul fast float %7745, %7740
  %7750 = fadd fast float %7742, %6005
  %7751 = fmul fast float %7750, %4103
  %7752 = fadd fast float %7744, %6006
  %7753 = fmul fast float %7752, %4103
  %7754 = fadd fast float %7746, %6007
  %7755 = fmul fast float %7754, %4103
  %7756 = fadd fast float %7747, %6048
  %7757 = fmul fast float %7756, %4103
  %7758 = fadd fast float %7748, %6051
  %7759 = fmul fast float %7758, %4103
  %7760 = fadd fast float %7749, %6054
  %7761 = fmul fast float %7760, %4103
  br label %7762

; <label>:7762                                    ; preds = %7716, %7510, %6001
  %7763 = phi float [ %6049, %6001 ], [ %6049, %7510 ], [ %7757, %7716 ]
  %7764 = phi float [ %6052, %6001 ], [ %6052, %7510 ], [ %7759, %7716 ]
  %7765 = phi float [ %6055, %6001 ], [ %6055, %7510 ], [ %7761, %7716 ]
  %7766 = phi float [ %6044, %6001 ], [ %6044, %7510 ], [ %7751, %7716 ]
  %7767 = phi float [ %6045, %6001 ], [ %6045, %7510 ], [ %7753, %7716 ]
  %7768 = phi float [ %6046, %6001 ], [ %6046, %7510 ], [ %7755, %7716 ]
  %7769 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7770 = extractvalue %dx.types.CBufRet.i32 %7769, 0
  %7771 = icmp eq i32 %7770, 0
  br i1 %7771, label %8434, label %7772

; <label>:7772                                    ; preds = %7762
  %7773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7774 = extractvalue %dx.types.CBufRet.f32 %7773, 2
  %7775 = extractvalue %dx.types.CBufRet.f32 %7773, 3
  %7776 = fmul fast float %7774, %118
  %7777 = fmul fast float %7775, %119
  %7778 = fptoui float %7776 to i32
  %7779 = fptoui float %7777 to i32
  %7780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7781 = extractvalue %dx.types.CBufRet.f32 %7780, 0
  %7782 = extractvalue %dx.types.CBufRet.f32 %7780, 2
  %7783 = extractvalue %dx.types.CBufRet.f32 %7780, 3
  %7784 = fadd fast float %105, -4.000000e+00
  %7785 = call float @dx.op.binary.f32(i32 35, float %7784, float 0.000000e+00)  ; FMax(a,b)
  %7786 = fadd fast float %7785, %7781
  %7787 = fmul fast float %7786, %7782
  %7788 = call float @dx.op.unary.f32(i32 23, float %7787)  ; Log(value)
  %7789 = fmul fast float %7788, %7783
  %7790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7791 = extractvalue %dx.types.CBufRet.f32 %7790, 2
  %7792 = fmul fast float %7789, %7791
  %7793 = call float @dx.op.unary.f32(i32 7, float %7792)  ; Saturate(value)
  %7794 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7795 = extractvalue %dx.types.CBufRet.i32 %7794, 1
  %7796 = add i32 %7795, -1
  %7797 = uitofp i32 %7795 to float
  %7798 = fmul fast float %7797, %7793
  %7799 = fptoui float %7798 to i32
  %7800 = call i32 @dx.op.binary.i32(i32 40, i32 %7799, i32 %7796)  ; UMin(a,b)
  %7801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7802 = extractvalue %dx.types.CBufRet.i32 %7801, 2
  %7803 = extractvalue %dx.types.CBufRet.i32 %7801, 3
  %7804 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7779, i32 %7802, i32 %7778)  ; UMad(a,b,c)
  %7805 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7800, i32 %7803, i32 %7804)  ; UMad(a,b,c)
  %7806 = add nsw i32 %7770, -1
  %7807 = call i32 @dx.op.binary.i32(i32 37, i32 %7806, i32 0)  ; IMax(a,b)
  %7808 = call float @dx.op.binary.f32(i32 35, float %105, float 0.000000e+00)  ; FMax(a,b)
  %7809 = fptoui float %7808 to i32
  %7810 = lshr i32 %7809, 5
  %7811 = call i32 @dx.op.binary.i32(i32 40, i32 %7810, i32 8191)  ; UMin(a,b)
  %7812 = shl i32 %7811, 2
  %7813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7812, i32 undef)  ; BufferLoad(srv,index,wot)
  %7814 = extractvalue %dx.types.ResRet.i32 %7813, 0
  %7815 = lshr i32 %7814, 16
  %7816 = and i32 %7814, 65535
  %7817 = lshr i32 %7814, 21
  %7818 = lshr i32 %7816, 5
  %7819 = call i32 @dx.op.binary.i32(i32 40, i32 %7818, i32 %7807)  ; UMin(a,b)
  %7820 = icmp ugt i32 %7817, %7819
  br i1 %7820, label %8434, label %7821

; <label>:7821                                    ; preds = %7772
  br label %7822

; <label>:7822                                    ; preds = %8424, %7821
  %7823 = phi i32 [ %8431, %8424 ], [ %7817, %7821 ]
  %7824 = phi float [ %8425, %8424 ], [ %7763, %7821 ]
  %7825 = phi float [ %8426, %8424 ], [ %7764, %7821 ]
  %7826 = phi float [ %8427, %8424 ], [ %7765, %7821 ]
  %7827 = phi float [ %8428, %8424 ], [ %7766, %7821 ]
  %7828 = phi float [ %8429, %8424 ], [ %7767, %7821 ]
  %7829 = phi float [ %8430, %8424 ], [ %7768, %7821 ]
  %7830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7831 = extractvalue %dx.types.CBufRet.i32 %7830, 0
  %7832 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7805, i32 %7831, i32 %7823)  ; UMad(a,b,c)
  %7833 = shl i32 %7832, 2
  %7834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7833, i32 undef)  ; BufferLoad(srv,index,wot)
  %7835 = extractvalue %dx.types.ResRet.i32 %7834, 0
  %7836 = shl i32 %7823, 5
  %7837 = sub nsw i32 %7815, %7836
  %7838 = call i32 @dx.op.binary.i32(i32 37, i32 %7837, i32 0)  ; IMax(a,b)
  %7839 = call i32 @dx.op.binary.i32(i32 38, i32 %7838, i32 31)  ; IMin(a,b)
  %7840 = sub nsw i32 1, %7815
  %7841 = add nsw i32 %7840, %7816
  %7842 = call i32 @dx.op.binary.i32(i32 37, i32 %7841, i32 0)  ; IMax(a,b)
  %7843 = call i32 @dx.op.binary.i32(i32 38, i32 %7842, i32 32)  ; IMin(a,b)
  %7844 = and i32 %7843, 31
  %7845 = shl i32 -1, %7844
  %7846 = xor i32 %7845, -1
  %7847 = and i32 %7839, 31
  %7848 = shl i32 %7846, %7847
  %7849 = icmp eq i32 %7843, 32
  %7850 = select i1 %7849, i32 -1, i32 %7848
  %7851 = and i32 %7850, %7835
  %7852 = icmp eq i32 %7851, 0
  br i1 %7852, label %8424, label %7853

; <label>:7853                                    ; preds = %7822
  br label %7854

; <label>:7854                                    ; preds = %7988, %7853
  %7855 = phi i32 [ %7866, %7988 ], [ %7851, %7853 ]
  %7856 = phi float [ %7989, %7988 ], [ %7824, %7853 ]
  %7857 = phi float [ %7990, %7988 ], [ %7825, %7853 ]
  %7858 = phi float [ %7991, %7988 ], [ %7826, %7853 ]
  %7859 = phi float [ %7992, %7988 ], [ %7827, %7853 ]
  %7860 = phi float [ %7993, %7988 ], [ %7828, %7853 ]
  %7861 = phi float [ %7994, %7988 ], [ %7829, %7853 ]
  %7862 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7855)  ; FirstbitLo(value)
  %7863 = add i32 %7862, %7836
  %7864 = and i32 %7862, 31
  %7865 = shl i32 1, %7864
  %7866 = xor i32 %7865, %7855
  %7867 = mul i32 %7863, 112
  %7868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7867, i32 undef)  ; BufferLoad(srv,index,wot)
  %7869 = extractvalue %dx.types.ResRet.f32 %7868, 0
  %7870 = extractvalue %dx.types.ResRet.f32 %7868, 1
  %7871 = extractvalue %dx.types.ResRet.f32 %7868, 2
  %7872 = or i32 %7867, 12
  %7873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7872, i32 undef)  ; BufferLoad(srv,index,wot)
  %7874 = extractvalue %dx.types.ResRet.f32 %7873, 0
  %7875 = add i32 %7867, 16
  %7876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7875, i32 undef)  ; BufferLoad(srv,index,wot)
  %7877 = extractvalue %dx.types.ResRet.f32 %7876, 0
  %7878 = extractvalue %dx.types.ResRet.f32 %7876, 1
  %7879 = extractvalue %dx.types.ResRet.f32 %7876, 2
  %7880 = add i32 %7867, 28
  %7881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7880, i32 undef)  ; BufferLoad(srv,index,wot)
  %7882 = extractvalue %dx.types.ResRet.i32 %7881, 0
  %7883 = add i32 %7867, 44
  %7884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7883, i32 undef)  ; BufferLoad(srv,index,wot)
  %7885 = extractvalue %dx.types.ResRet.f32 %7884, 0
  %7886 = add i32 %7867, 48
  %7887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7886, i32 undef)  ; BufferLoad(srv,index,wot)
  %7888 = extractvalue %dx.types.ResRet.f32 %7887, 0
  %7889 = extractvalue %dx.types.ResRet.f32 %7887, 1
  %7890 = extractvalue %dx.types.ResRet.f32 %7887, 2
  %7891 = extractvalue %dx.types.ResRet.f32 %7887, 3
  %7892 = add i32 %7867, 64
  %7893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7892, i32 undef)  ; BufferLoad(srv,index,wot)
  %7894 = extractvalue %dx.types.ResRet.f32 %7893, 0
  %7895 = extractvalue %dx.types.ResRet.f32 %7893, 1
  %7896 = extractvalue %dx.types.ResRet.f32 %7893, 2
  %7897 = extractvalue %dx.types.ResRet.f32 %7893, 3
  %7898 = add i32 %7867, 80
  %7899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7898, i32 undef)  ; BufferLoad(srv,index,wot)
  %7900 = extractvalue %dx.types.ResRet.f32 %7899, 1
  %7901 = extractvalue %dx.types.ResRet.f32 %7899, 2
  %7902 = add i32 %7867, 92
  %7903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7902, i32 undef)  ; BufferLoad(srv,index,wot)
  %7904 = extractvalue %dx.types.ResRet.i32 %7903, 0
  %7905 = call float @dx.op.dot3.f32(i32 55, float %7869, float %7870, float %7871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7906 = select i1 %277, float %7900, float %7869
  %7907 = select i1 %277, float %7905, float %7870
  %7908 = select i1 %277, float %7901, float %7871
  %7909 = and i32 %7904, 65535
  %7910 = uitofp i32 %7909 to float
  %7911 = lshr i32 %7904, 16
  %7912 = uitofp i32 %7911 to float
  %7913 = and i32 %7882, 65535
  %7914 = and i32 %7882, 50331648
  %7915 = icmp eq i32 %7914, 33554432
  %7916 = fsub fast float %7888, %205
  %7917 = fsub fast float %7889, %206
  %7918 = fsub fast float %7890, %207
  %7919 = call float @dx.op.dot3.f32(i32 55, float %7916, float %7917, float %7918, float %7916, float %7917, float %7918)  ; Dot3(ax,ay,az,bx,by,bz)
  %7920 = call float @dx.op.unary.f32(i32 24, float %7919)  ; Sqrt(value)
  %7921 = fdiv fast float 1.000000e+00, %7920
  %7922 = fmul fast float %7921, %7916
  %7923 = fmul fast float %7921, %7917
  %7924 = fmul fast float %7921, %7918
  %7925 = fadd fast float %7920, %7874
  %7926 = fdiv fast float 1.000000e+00, %7925
  %7927 = fmul float %7885, %7926
  %7928 = fmul float %7927, %7927
  %7929 = call float @dx.op.unary.f32(i32 7, float %7928)  ; Saturate(value)
  br i1 %7915, label %7930, label %7951

; <label>:7930                                    ; preds = %7854
  %7931 = fmul fast float %7896, %7877
  %7932 = fmul fast float %7896, %7878
  %7933 = fmul fast float %7896, %7879
  %7934 = fadd fast float %7916, %7931
  %7935 = fadd fast float %7917, %7932
  %7936 = fadd fast float %7918, %7933
  %7937 = call float @dx.op.dot3.f32(i32 55, float %7934, float %7935, float %7936, float %7934, float %7935, float %7936)  ; Dot3(ax,ay,az,bx,by,bz)
  %7938 = call float @dx.op.unary.f32(i32 25, float %7937)  ; Rsqrt(value)
  %7939 = fmul fast float %7938, %7934
  %7940 = fmul fast float %7938, %7935
  %7941 = fmul fast float %7938, %7936
  %7942 = fsub fast float %205, %7888
  %7943 = fsub fast float %206, %7889
  %7944 = fsub fast float %207, %7890
  %7945 = fsub fast float -0.000000e+00, %7942
  %7946 = fsub fast float -0.000000e+00, %7943
  %7947 = fsub fast float -0.000000e+00, %7944
  %7948 = call float @dx.op.dot3.f32(i32 55, float %7945, float %7946, float %7947, float %7877, float %7878, float %7879)  ; Dot3(ax,ay,az,bx,by,bz)
  %7949 = fcmp fast ogt float %7948, 0.000000e+00
  %7950 = uitofp i1 %7949 to float
  br label %7951

; <label>:7951                                    ; preds = %7930, %7854
  %7952 = phi float [ %7950, %7930 ], [ 1.000000e+00, %7854 ]
  %7953 = phi float [ %7939, %7930 ], [ %7922, %7854 ]
  %7954 = phi float [ %7940, %7930 ], [ %7923, %7854 ]
  %7955 = phi float [ %7941, %7930 ], [ %7924, %7854 ]
  %7956 = call float @dx.op.dot3.f32(i32 55, float %7877, float %7878, float %7879, float %7953, float %7954, float %7955)  ; Dot3(ax,ay,az,bx,by,bz)
  %7957 = fmul fast float %7956, %7956
  %7958 = call float @dx.op.unary.f32(i32 7, float %7957)  ; Saturate(value)
  %7959 = fsub fast float 1.000000e+00, %7958
  %7960 = fmul fast float %7959, 5.000000e-01
  %7961 = fcmp fast ogt float %7956, 0.000000e+00
  %7962 = fsub fast float 1.000000e+00, %7960
  %7963 = select i1 %7961, float %7960, float %7962
  %7964 = fmul fast float %7963, %7912
  %7965 = fadd fast float %7964, %7910
  %7966 = fmul fast float %7965, 0x3EF0001000000000
  %7967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %56, float %7966, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7968 = extractvalue %dx.types.ResRet.f32 %7967, 0
  %7969 = fmul fast float %7956, %7894
  %7970 = fadd fast float %7969, %7895
  %7971 = call float @dx.op.unary.f32(i32 7, float %7970)  ; Saturate(value)
  %7972 = select i1 %7915, float 1.000000e+00, float %7971
  %7973 = select i1 %7915, float %7971, float 1.000000e+00
  %7974 = fmul fast float %7920, %7891
  %7975 = fsub fast float 1.000000e+00, %7974
  %7976 = fmul fast float %7975, %7897
  %7977 = call float @dx.op.unary.f32(i32 7, float %7976)  ; Saturate(value)
  %7978 = fmul fast float %7977, %7973
  %7979 = fmul fast float %7978, 2.000000e+00
  %7980 = fsub fast float 3.000000e+00, %7979
  %7981 = fmul fast float %7968, %7952
  %7982 = fmul fast float %7978, %7978
  %7983 = fmul fast float %7982, %7981
  %7984 = fmul fast float %7983, %7980
  %7985 = call float @dx.op.binary.f32(i32 36, float %7984, float %7984)  ; FMin(a,b)
  %7986 = call float @dx.op.binary.f32(i32 36, float %7984, float %7985)  ; FMin(a,b)
  %7987 = fcmp fast ogt float %7986, 0.000000e+00
  br i1 %7987, label %7996, label %7988, !dx.controlflow.hints !136

; <label>:7988                                    ; preds = %8380, %8142, %7951
  %7989 = phi float [ %7856, %8142 ], [ %7856, %7951 ], [ %8420, %8380 ]
  %7990 = phi float [ %7857, %8142 ], [ %7857, %7951 ], [ %8421, %8380 ]
  %7991 = phi float [ %7858, %8142 ], [ %7858, %7951 ], [ %8422, %8380 ]
  %7992 = phi float [ %7859, %8142 ], [ %7859, %7951 ], [ %8414, %8380 ]
  %7993 = phi float [ %7860, %8142 ], [ %7860, %7951 ], [ %8415, %8380 ]
  %7994 = phi float [ %7861, %8142 ], [ %7861, %7951 ], [ %8416, %8380 ]
  %7995 = icmp eq i32 %7855, %7865
  br i1 %7995, label %8423, label %7854

; <label>:7996                                    ; preds = %7951
  %7997 = icmp eq i32 %7913, 255
  br i1 %7997, label %8142, label %7998, !dx.controlflow.hints !137

; <label>:7998                                    ; preds = %7996
  %7999 = mul nuw nsw i32 %7913, 176
  %8000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7999, i32 undef)  ; BufferLoad(srv,index,wot)
  %8001 = extractvalue %dx.types.ResRet.f32 %8000, 0
  %8002 = extractvalue %dx.types.ResRet.f32 %8000, 1
  %8003 = extractvalue %dx.types.ResRet.f32 %8000, 2
  %8004 = extractvalue %dx.types.ResRet.f32 %8000, 3
  %8005 = add nuw nsw i32 %7999, 16
  %8006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8005, i32 undef)  ; BufferLoad(srv,index,wot)
  %8007 = extractvalue %dx.types.ResRet.f32 %8006, 0
  %8008 = extractvalue %dx.types.ResRet.f32 %8006, 1
  %8009 = add nuw nsw i32 %7999, 32
  %8010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8009, i32 undef)  ; BufferLoad(srv,index,wot)
  %8011 = extractvalue %dx.types.ResRet.f32 %8010, 0
  %8012 = extractvalue %dx.types.ResRet.f32 %8010, 1
  %8013 = extractvalue %dx.types.ResRet.f32 %8010, 2
  %8014 = add nuw nsw i32 %7999, 48
  %8015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8014, i32 undef)  ; BufferLoad(srv,index,wot)
  %8016 = extractvalue %dx.types.ResRet.f32 %8015, 0
  %8017 = extractvalue %dx.types.ResRet.f32 %8015, 1
  %8018 = extractvalue %dx.types.ResRet.f32 %8015, 2
  %8019 = extractvalue %dx.types.ResRet.f32 %8015, 3
  %8020 = add nuw nsw i32 %7999, 64
  %8021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8020, i32 undef)  ; BufferLoad(srv,index,wot)
  %8022 = extractvalue %dx.types.ResRet.f32 %8021, 0
  %8023 = extractvalue %dx.types.ResRet.f32 %8021, 1
  %8024 = extractvalue %dx.types.ResRet.f32 %8021, 2
  %8025 = extractvalue %dx.types.ResRet.f32 %8021, 3
  %8026 = add nuw nsw i32 %7999, 80
  %8027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8026, i32 undef)  ; BufferLoad(srv,index,wot)
  %8028 = extractvalue %dx.types.ResRet.f32 %8027, 0
  %8029 = extractvalue %dx.types.ResRet.f32 %8027, 1
  %8030 = extractvalue %dx.types.ResRet.f32 %8027, 2
  %8031 = extractvalue %dx.types.ResRet.f32 %8027, 3
  %8032 = add nuw nsw i32 %7999, 96
  %8033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8032, i32 undef)  ; BufferLoad(srv,index,wot)
  %8034 = extractvalue %dx.types.ResRet.f32 %8033, 0
  %8035 = extractvalue %dx.types.ResRet.f32 %8033, 1
  %8036 = extractvalue %dx.types.ResRet.f32 %8033, 2
  %8037 = extractvalue %dx.types.ResRet.f32 %8033, 3
  %8038 = bitcast float %8008 to i32
  %8039 = fmul fast float %8013, %125
  %8040 = fmul fast float %8013, %126
  %8041 = fmul fast float %8013, %127
  %8042 = fadd fast float %8039, %205
  %8043 = fadd fast float %8040, %206
  %8044 = fadd fast float %8041, %207
  %8045 = fmul fast float %8042, %8016
  %8046 = call float @dx.op.tertiary.f32(i32 46, float %8043, float %8022, float %8045)  ; FMad(a,b,c)
  %8047 = call float @dx.op.tertiary.f32(i32 46, float %8044, float %8028, float %8046)  ; FMad(a,b,c)
  %8048 = fadd fast float %8047, %8034
  %8049 = fmul fast float %8042, %8017
  %8050 = call float @dx.op.tertiary.f32(i32 46, float %8043, float %8023, float %8049)  ; FMad(a,b,c)
  %8051 = call float @dx.op.tertiary.f32(i32 46, float %8044, float %8029, float %8050)  ; FMad(a,b,c)
  %8052 = fadd fast float %8051, %8035
  %8053 = fmul fast float %8042, %8018
  %8054 = call float @dx.op.tertiary.f32(i32 46, float %8043, float %8024, float %8053)  ; FMad(a,b,c)
  %8055 = call float @dx.op.tertiary.f32(i32 46, float %8044, float %8030, float %8054)  ; FMad(a,b,c)
  %8056 = fadd fast float %8055, %8036
  %8057 = fmul fast float %8042, %8019
  %8058 = call float @dx.op.tertiary.f32(i32 46, float %8043, float %8025, float %8057)  ; FMad(a,b,c)
  %8059 = call float @dx.op.tertiary.f32(i32 46, float %8044, float %8031, float %8058)  ; FMad(a,b,c)
  %8060 = fadd fast float %8059, %8037
  %8061 = fdiv fast float %8048, %8060
  %8062 = fdiv fast float %8052, %8060
  %8063 = fdiv fast float %8056, %8060
  %8064 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8063)  ; FMax(a,b)
  %8065 = fmul fast float %288, 0x401921FB60000000
  %8066 = call float @dx.op.unary.f32(i32 13, float %8065)  ; Sin(value)
  %8067 = call float @dx.op.unary.f32(i32 12, float %8065)  ; Cos(value)
  %8068 = fmul fast float %8067, %8012
  %8069 = call float @dx.op.tertiary.f32(i32 46, float %8066, float %8012, float 0.000000e+00)  ; FMad(a,b,c)
  %8070 = fmul fast float %8012, %8066
  %8071 = fsub fast float -0.000000e+00, %8070
  %8072 = call float @dx.op.tertiary.f32(i32 46, float %8067, float %8012, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8073

; <label>:8073                                    ; preds = %8073, %7998
  %8074 = phi float [ 0.000000e+00, %7998 ], [ %8106, %8073 ]
  %8075 = phi float [ 0.000000e+00, %7998 ], [ %8108, %8073 ]
  %8076 = phi i32 [ 0, %7998 ], [ %8109, %8073 ]
  %8077 = mul i32 %8076, 2
  %8078 = add i32 0, %8077
  %8079 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8078
  %8080 = load float, float* %8079, align 4
  %8081 = mul i32 %8076, 2
  %8082 = add i32 1, %8081
  %8083 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8082
  %8084 = load float, float* %8083, align 4
  %8085 = fmul fast float %8068, %8080
  %8086 = call float @dx.op.tertiary.f32(i32 46, float %8084, float %8071, float %8085)  ; FMad(a,b,c)
  %8087 = fmul fast float %8080, %8069
  %8088 = call float @dx.op.tertiary.f32(i32 46, float %8084, float %8072, float %8087)  ; FMad(a,b,c)
  %8089 = fadd fast float %8086, %8061
  %8090 = fadd fast float %8088, %8062
  %8091 = fmul fast float %8089, %8007
  %8092 = fmul fast float %8090, %8007
  %8093 = call float @dx.op.binary.f32(i32 35, float %8091, float %8003)  ; FMax(a,b)
  %8094 = call float @dx.op.binary.f32(i32 35, float %8092, float %8003)  ; FMax(a,b)
  %8095 = call float @dx.op.binary.f32(i32 36, float %8093, float %8004)  ; FMin(a,b)
  %8096 = call float @dx.op.binary.f32(i32 36, float %8094, float %8004)  ; FMin(a,b)
  %8097 = fadd fast float %8095, %8001
  %8098 = fadd fast float %8096, %8002
  %8099 = uitofp i32 %8038 to float
  %8100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %57, float %8097, float %8098, float %8099, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8101 = extractvalue %dx.types.ResRet.f32 %8100, 0
  %8102 = fsub fast float %8101, %8064
  %8103 = fsub fast float %8102, %8011
  %8104 = fcmp fast ogt float %8103, 0.000000e+00
  %8105 = select i1 %8104, float 1.000000e+00, float 0.000000e+00
  %8106 = fadd fast float %8105, %8074
  %8107 = select i1 %8104, float %8103, float 0.000000e+00
  %8108 = fadd fast float %8107, %8075
  %8109 = add nuw nsw i32 %8076, 1
  %8110 = icmp eq i32 %8109, 8
  br i1 %8110, label %8111, label %8073

; <label>:8111                                    ; preds = %8073
  %8112 = fdiv fast float 1.000000e+00, %8106
  %8113 = fmul fast float %8112, %8108
  %8114 = fdiv fast float 1.000000e+00, %8064
  %8115 = fmul fast float %8113, %8114
  %8116 = call float @dx.op.unary.f32(i32 7, float %8115)  ; Saturate(value)
  %8117 = call float @dx.op.binary.f32(i32 35, float %8116, float 0.000000e+00)  ; FMax(a,b)
  %8118 = fmul fast float %8106, 1.250000e-01
  %8119 = call float @dx.op.unary.f32(i32 7, float %8118)  ; Saturate(value)
  %8120 = fmul fast float %8119, 2.000000e+00
  %8121 = fadd fast float %8120, -1.000000e+00
  %8122 = fcmp fast ogt float %8121, 0.000000e+00
  %8123 = fcmp fast olt float %8121, 0.000000e+00
  %8124 = zext i1 %8122 to i32
  %8125 = zext i1 %8123 to i32
  %8126 = sub nsw i32 %8124, %8125
  %8127 = sitofp i32 %8126 to float
  %8128 = fmul fast float %8127, %8121
  %8129 = fsub fast float 1.000000e+00, %8128
  %8130 = fmul fast float %8129, %8129
  %8131 = fmul fast float %8130, %8129
  %8132 = fsub fast float %8129, %8131
  %8133 = fmul fast float %8132, %8117
  %8134 = fsub fast float 1.000000e+00, %8131
  %8135 = fsub fast float %8134, %8133
  %8136 = fmul fast float %8127, 5.000000e-01
  %8137 = fmul fast float %8136, %8135
  %8138 = fsub fast float -5.000000e-01, %8137
  %8139 = fmul fast float %8138, %7972
  %8140 = fadd fast float %8139, 1.000000e+00
  %8141 = fmul fast float %8140, %7984
  br label %8142

; <label>:8142                                    ; preds = %8111, %7996
  %8143 = phi float [ %8141, %8111 ], [ %7984, %7996 ]
  %8144 = call float @dx.op.binary.f32(i32 36, float %8143, float %8143)  ; FMin(a,b)
  %8145 = call float @dx.op.binary.f32(i32 36, float %8143, float %8144)  ; FMin(a,b)
  %8146 = fcmp fast ogt float %8145, 0.000000e+00
  br i1 %8146, label %8147, label %7988, !dx.controlflow.hints !138

; <label>:8147                                    ; preds = %8142
  %8148 = fmul fast float %8143, %7906
  %8149 = fmul fast float %8143, %7907
  %8150 = fmul fast float %8143, %7908
  %8151 = fsub fast float %7890, %4508
  %8152 = fcmp fast ogt float %8151, 0.000000e+00
  %8153 = fsub fast float %207, %4508
  %8154 = fcmp fast ogt float %8153, 0.000000e+00
  %8155 = xor i1 %8154, %8152
  %8156 = fsub fast float %4508, %7890
  %8157 = fmul fast float %8156, 2.000000e+00
  %8158 = fadd fast float %8157, %7890
  %8159 = select i1 %8155, float %7890, float %8158
  %8160 = fsub fast float %8159, %207
  %8161 = call float @dx.op.dot3.f32(i32 55, float %7916, float %7917, float %8160, float %7916, float %7917, float %8160)  ; Dot3(ax,ay,az,bx,by,bz)
  %8162 = call float @dx.op.unary.f32(i32 25, float %8161)  ; Rsqrt(value)
  %8163 = fmul fast float %8162, %7916
  %8164 = fmul fast float %8162, %7917
  %8165 = fmul fast float %8162, %8160
  %8166 = fsub fast float %4508, %207
  %8167 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8166)  ; Dot3(ax,ay,az,bx,by,bz)
  %8168 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8163, float %8164, float %8165)  ; Dot3(ax,ay,az,bx,by,bz)
  %8169 = fdiv fast float 1.000000e+00, %8168
  %8170 = fmul fast float %8169, %8167
  %8171 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8153, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8172 = fcmp fast ogt float %8171, 0.000000e+00
  %8173 = fcmp fast olt float %8171, 0.000000e+00
  %8174 = zext i1 %8172 to i32
  %8175 = zext i1 %8173 to i32
  %8176 = sub nsw i32 %8174, %8175
  %8177 = sitofp i32 %8176 to float
  %8178 = fsub fast float %8159, %4508
  %8179 = call float @dx.op.dot3.f32(i32 55, float %7916, float %7917, float %8178, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8180 = fcmp fast ogt float %8179, 0.000000e+00
  %8181 = fcmp fast olt float %8179, 0.000000e+00
  %8182 = zext i1 %8180 to i32
  %8183 = zext i1 %8181 to i32
  %8184 = sub nsw i32 %8182, %8183
  %8185 = sitofp i32 %8184 to float
  %8186 = fcmp fast une float %8177, %8185
  br i1 %8186, label %8187, label %8197

; <label>:8187                                    ; preds = %8147
  %8188 = fmul fast float %8170, %8165
  %8189 = fmul fast float %8170, %8164
  %8190 = fmul fast float %8170, %8163
  %8191 = fmul fast float %8190, %8190
  %8192 = fmul fast float %8189, %8189
  %8193 = fadd fast float %8191, %8192
  %8194 = fmul fast float %8188, %8188
  %8195 = fadd fast float %8193, %8194
  %8196 = call float @dx.op.unary.f32(i32 24, float %8195)  ; Sqrt(value)
  br label %8209

; <label>:8197                                    ; preds = %8147
  %8198 = icmp slt i32 %8176, 0
  br i1 %8198, label %8199, label %8209

; <label>:8199                                    ; preds = %8197
  %8200 = fsub fast float %205, %7888
  %8201 = fsub fast float %206, %7889
  %8202 = fsub fast float %207, %8159
  %8203 = fmul fast float %8200, %8200
  %8204 = fmul fast float %8201, %8201
  %8205 = fadd fast float %8203, %8204
  %8206 = fmul fast float %8202, %8202
  %8207 = fadd fast float %8205, %8206
  %8208 = call float @dx.op.unary.f32(i32 24, float %8207)  ; Sqrt(value)
  br label %8209

; <label>:8209                                    ; preds = %8199, %8197, %8187
  %8210 = phi float [ %8196, %8187 ], [ %8208, %8199 ], [ 0.000000e+00, %8197 ]
  %8211 = and i1 %8154, %8152
  %8212 = fsub fast float -0.000000e+00, %8210
  %8213 = select i1 %8211, float -0.000000e+00, float %8212
  %8214 = fmul fast float %4509, 0x3FF7154760000000
  %8215 = fmul fast float %8214, %8213
  %8216 = fmul fast float %4510, 0x3FF7154760000000
  %8217 = fmul fast float %8216, %8213
  %8218 = fmul fast float %4511, 0x3FF7154760000000
  %8219 = fmul fast float %8218, %8213
  %8220 = call float @dx.op.unary.f32(i32 21, float %8215)  ; Exp(value)
  %8221 = call float @dx.op.unary.f32(i32 21, float %8217)  ; Exp(value)
  %8222 = call float @dx.op.unary.f32(i32 21, float %8219)  ; Exp(value)
  %8223 = call float @dx.op.unary.f32(i32 7, float %8220)  ; Saturate(value)
  %8224 = call float @dx.op.unary.f32(i32 7, float %8221)  ; Saturate(value)
  %8225 = call float @dx.op.unary.f32(i32 7, float %8222)  ; Saturate(value)
  %8226 = fmul fast float %8148, %8223
  %8227 = fmul fast float %8149, %8224
  %8228 = fmul fast float %8150, %8225
  %8229 = fsub fast float %7922, %5334
  %8230 = fsub fast float %7923, %5335
  %8231 = fsub fast float %7924, %5336
  %8232 = call float @dx.op.dot3.f32(i32 55, float %8229, float %8230, float %8231, float %8229, float %8230, float %8231)  ; Dot3(ax,ay,az,bx,by,bz)
  %8233 = call float @dx.op.unary.f32(i32 25, float %8232)  ; Rsqrt(value)
  %8234 = fmul fast float %8233, %8229
  %8235 = fmul fast float %8233, %8230
  %8236 = fmul fast float %8233, %8231
  %8237 = call float @dx.op.dot3.f32(i32 55, float %7922, float %7923, float %7924, float %5294, float %5295, float %5296)  ; Dot3(ax,ay,az,bx,by,bz)
  %8238 = call float @dx.op.dot3.f32(i32 55, float %5337, float %5338, float %5339, float %8234, float %8235, float %8236)  ; Dot3(ax,ay,az,bx,by,bz)
  %8239 = call float @dx.op.unary.f32(i32 7, float %8237)  ; Saturate(value)
  %8240 = fmul fast float %8239, %7929
  %8241 = fmul fast float %8239, %8239
  %8242 = fmul fast float %8241, %5367
  %8243 = call float @dx.op.unary.f32(i32 7, float %8242)  ; Saturate(value)
  %8244 = fmul fast float %8240, %8243
  %8245 = bitcast float %7919 to i32
  %8246 = ashr i32 %8245, 1
  %8247 = sub nsw i32 1597463007, %8246
  %8248 = bitcast i32 %8247 to float
  %8249 = fmul fast float %8248, %7916
  %8250 = fmul fast float %8248, %7917
  %8251 = fmul fast float %8248, %7918
  %8252 = fsub fast float %8249, %5334
  %8253 = fsub fast float %8250, %5335
  %8254 = fsub fast float %8251, %5336
  %8255 = call float @dx.op.dot3.f32(i32 55, float %8252, float %8253, float %8254, float %8252, float %8253, float %8254)  ; Dot3(ax,ay,az,bx,by,bz)
  %8256 = call float @dx.op.unary.f32(i32 25, float %8255)  ; Rsqrt(value)
  %8257 = fmul fast float %8252, %8256
  %8258 = fmul fast float %8253, %8256
  %8259 = fmul fast float %8254, %8256
  %8260 = call float @dx.op.dot3.f32(i32 55, float %5294, float %5295, float %5296, float %8257, float %8258, float %8259)  ; Dot3(ax,ay,az,bx,by,bz)
  %8261 = fmul fast float %8260, %8260
  %8262 = call float @dx.op.unary.f32(i32 6, float %8237)  ; FAbs(value)
  %8263 = fsub fast float 1.000000e+00, %5360
  %8264 = fmul fast float %5342, %5342
  %8265 = fmul fast float %8264, %8263
  %8266 = fadd fast float %8265, %5360
  %8267 = bitcast float %8266 to i32
  %8268 = ashr i32 %8267, 1
  %8269 = add nsw i32 %8268, 532487669
  %8270 = bitcast i32 %8269 to float
  %8271 = fadd fast float %8270, %5342
  %8272 = fmul fast float %5360, %8261
  %8273 = fsub fast float 1.000000e+00, %8261
  %8274 = fadd fast float %8273, %8272
  %8275 = fmul fast float %8262, %8262
  %8276 = fmul fast float %8275, %8263
  %8277 = fadd fast float %8276, %5360
  %8278 = bitcast float %8277 to i32
  %8279 = ashr i32 %8278, 1
  %8280 = add nsw i32 %8279, 532487669
  %8281 = bitcast i32 %8280 to float
  %8282 = fadd fast float %8281, %8262
  %8283 = fmul fast float %8274, %8274
  %8284 = fmul fast float %8283, %8271
  %8285 = fmul fast float %8284, %8282
  %8286 = fdiv fast float 1.000000e+00, %8285
  %8287 = bitcast float %5360 to i32
  %8288 = sitofp i32 %8287 to float
  %8289 = fmul fast float %8288, 0x3FE7F73180000000
  %8290 = fadd fast float %8289, 0x41AFE27C40000000
  %8291 = fptosi float %8290 to i32
  %8292 = bitcast i32 %8291 to float
  %8293 = fmul fast float %7885, 0x3FD80E9D60000000
  %8294 = fmul fast float %8293, %8248
  %8295 = fadd fast float %8292, %8294
  %8296 = bitcast float %8295 to i32
  %8297 = sub nsw i32 2129859010, %8296
  %8298 = bitcast i32 %8297 to float
  %8299 = fmul fast float %5360, %8286
  %8300 = fmul fast float %8299, %8292
  %8301 = fmul fast float %8300, %8298
  %8302 = call float @dx.op.unary.f32(i32 6, float %8238)  ; FAbs(value)
  %8303 = fsub fast float 1.000000e+00, %8302
  %8304 = bitcast float %8303 to i32
  %8305 = sitofp i32 %8304 to float
  %8306 = fmul fast float %8305, 5.000000e+00
  %8307 = fadd fast float %8306, 0xC1EFBF8940000000
  %8308 = fptosi float %8307 to i32
  %8309 = bitcast i32 %8308 to float
  %8310 = fsub fast float 1.000000e+00, %5291
  %8311 = fsub fast float 1.000000e+00, %5292
  %8312 = fsub fast float 1.000000e+00, %5340
  %8313 = fmul fast float %8309, %8310
  %8314 = fmul fast float %8309, %8311
  %8315 = fmul fast float %8309, %8312
  %8316 = fadd fast float %8313, %5291
  %8317 = fadd fast float %8314, %5292
  %8318 = fadd fast float %8315, %5340
  br i1 %5479, label %8319, label %8342

; <label>:8319                                    ; preds = %8209
  %8320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4106, float %8302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8321 = extractvalue %dx.types.ResRet.f32 %8320, 0
  %8322 = extractvalue %dx.types.ResRet.f32 %8320, 1
  %8323 = extractvalue %dx.types.ResRet.f32 %8320, 2
  %8324 = fadd fast float %8321, -5.000000e-01
  %8325 = fadd fast float %8322, -5.000000e-01
  %8326 = fadd fast float %8323, -5.000000e-01
  %8327 = fmul fast float %5291, 4.000000e+00
  %8328 = fmul fast float %8327, %8310
  %8329 = fmul fast float %8328, %8324
  %8330 = fmul fast float %5292, 4.000000e+00
  %8331 = fmul fast float %8330, %8311
  %8332 = fmul fast float %8331, %8325
  %8333 = fmul fast float %5340, 4.000000e+00
  %8334 = fmul fast float %8333, %8312
  %8335 = fmul fast float %8334, %8326
  %8336 = fadd fast float %8329, %8316
  %8337 = fadd fast float %8332, %8317
  %8338 = fadd fast float %8335, %8318
  %8339 = call float @dx.op.unary.f32(i32 7, float %8336)  ; Saturate(value)
  %8340 = call float @dx.op.unary.f32(i32 7, float %8337)  ; Saturate(value)
  %8341 = call float @dx.op.unary.f32(i32 7, float %8338)  ; Saturate(value)
  br label %8342

; <label>:8342                                    ; preds = %8319, %8209
  %8343 = phi float [ %8339, %8319 ], [ %8316, %8209 ]
  %8344 = phi float [ %8340, %8319 ], [ %8317, %8209 ]
  %8345 = phi float [ %8341, %8319 ], [ %8318, %8209 ]
  %8346 = fmul fast float %8237, 9.843750e-01
  %8347 = fadd fast float %8346, 7.812500e-03
  %8348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %56, float %8347, float %5469, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8349 = extractvalue %dx.types.ResRet.f32 %8348, 2
  %8350 = extractvalue %dx.types.ResRet.f32 %8348, 3
  %8351 = fmul fast float %8349, %5291
  %8352 = fmul fast float %8349, %5292
  %8353 = fmul fast float %8349, %5340
  %8354 = fadd fast float %8351, %8350
  %8355 = fadd fast float %8352, %8350
  %8356 = fadd fast float %8353, %8350
  br i1 %5479, label %8357, label %8380

; <label>:8357                                    ; preds = %8342
  %8358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4106, float %8237, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8359 = extractvalue %dx.types.ResRet.f32 %8358, 0
  %8360 = extractvalue %dx.types.ResRet.f32 %8358, 1
  %8361 = extractvalue %dx.types.ResRet.f32 %8358, 2
  %8362 = fadd fast float %8359, -5.000000e-01
  %8363 = fadd fast float %8360, -5.000000e-01
  %8364 = fadd fast float %8361, -5.000000e-01
  %8365 = fmul fast float %5291, 4.000000e+00
  %8366 = fmul fast float %8365, %8310
  %8367 = fmul fast float %8366, %8362
  %8368 = fmul fast float %5292, 4.000000e+00
  %8369 = fmul fast float %8368, %8311
  %8370 = fmul fast float %8369, %8363
  %8371 = fmul fast float %5340, 4.000000e+00
  %8372 = fmul fast float %8371, %8312
  %8373 = fmul fast float %8372, %8364
  %8374 = fadd fast float %8367, %8354
  %8375 = fadd fast float %8370, %8355
  %8376 = fadd fast float %8373, %8356
  %8377 = call float @dx.op.unary.f32(i32 7, float %8374)  ; Saturate(value)
  %8378 = call float @dx.op.unary.f32(i32 7, float %8375)  ; Saturate(value)
  %8379 = call float @dx.op.unary.f32(i32 7, float %8376)  ; Saturate(value)
  br label %8380

; <label>:8380                                    ; preds = %8357, %8342
  %8381 = phi float [ %8377, %8357 ], [ %8354, %8342 ]
  %8382 = phi float [ %8378, %8357 ], [ %8355, %8342 ]
  %8383 = phi float [ %8379, %8357 ], [ %8356, %8342 ]
  %8384 = call float @dx.op.binary.f32(i32 35, float %8382, float %8383)  ; FMax(a,b)
  %8385 = call float @dx.op.binary.f32(i32 35, float %8381, float %8384)  ; FMax(a,b)
  %8386 = fsub fast float 1.000000e+00, %8385
  %8387 = fmul fast float %8343, %8301
  %8388 = fmul fast float %8344, %8301
  %8389 = fmul fast float %8345, %8301
  %8390 = fsub fast float 1.000000e+00, %8238
  %8391 = bitcast float %8390 to i32
  %8392 = sitofp i32 %8391 to float
  %8393 = fmul fast float %8392, 5.000000e+00
  %8394 = fadd fast float %8393, 0xC1EFBF8940000000
  %8395 = fptosi float %8394 to i32
  %8396 = bitcast i32 %8395 to float
  %8397 = fmul fast float %8396, %4107
  %8398 = fmul fast float %8386, %8397
  %8399 = fmul fast float %8398, %6021
  %8400 = fmul fast float %8398, %6022
  %8401 = fmul fast float %8398, %6023
  %8402 = fadd fast float %8399, %8387
  %8403 = fadd fast float %8400, %8388
  %8404 = fadd fast float %8401, %8389
  %8405 = fmul fast float %8226, %4103
  %8406 = fmul fast float %8405, %8244
  %8407 = fmul fast float %8406, %8386
  %8408 = fmul fast float %8227, %4103
  %8409 = fmul fast float %8408, %8244
  %8410 = fmul fast float %8409, %8386
  %8411 = fmul fast float %8228, %4103
  %8412 = fmul fast float %8411, %8244
  %8413 = fmul fast float %8412, %8386
  %8414 = fadd fast float %8407, %7859
  %8415 = fadd fast float %8410, %7860
  %8416 = fadd fast float %8413, %7861
  %8417 = fmul fast float %8406, %8402
  %8418 = fmul fast float %8409, %8403
  %8419 = fmul fast float %8412, %8404
  %8420 = fadd fast float %8417, %7856
  %8421 = fadd fast float %8418, %7857
  %8422 = fadd fast float %8419, %7858
  br label %7988

; <label>:8423                                    ; preds = %7988
  br label %8424

; <label>:8424                                    ; preds = %8423, %7822
  %8425 = phi float [ %7824, %7822 ], [ %7989, %8423 ]
  %8426 = phi float [ %7825, %7822 ], [ %7990, %8423 ]
  %8427 = phi float [ %7826, %7822 ], [ %7991, %8423 ]
  %8428 = phi float [ %7827, %7822 ], [ %7992, %8423 ]
  %8429 = phi float [ %7828, %7822 ], [ %7993, %8423 ]
  %8430 = phi float [ %7829, %7822 ], [ %7994, %8423 ]
  %8431 = add i32 %7823, 1
  %8432 = icmp ugt i32 %8431, %7819
  br i1 %8432, label %8433, label %7822

; <label>:8433                                    ; preds = %8424
  br label %8434

; <label>:8434                                    ; preds = %8433, %7772, %7762
  %8435 = phi float [ %7763, %7762 ], [ %7763, %7772 ], [ %8425, %8433 ]
  %8436 = phi float [ %7764, %7762 ], [ %7764, %7772 ], [ %8426, %8433 ]
  %8437 = phi float [ %7765, %7762 ], [ %7765, %7772 ], [ %8427, %8433 ]
  %8438 = phi float [ %7766, %7762 ], [ %7766, %7772 ], [ %8428, %8433 ]
  %8439 = phi float [ %7767, %7762 ], [ %7767, %7772 ], [ %8429, %8433 ]
  %8440 = phi float [ %7768, %7762 ], [ %7768, %7772 ], [ %8430, %8433 ]
  %8441 = fmul fast float %4103, %4103
  %8442 = fsub fast float 1.000000e+00, %8441
  %8443 = call float @dx.op.dot3.f32(i32 55, float %8442, float %8442, float %8442, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8444 = fsub fast float 1.000000e+00, %8443
  %8445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8446 = extractvalue %dx.types.CBufRet.f32 %8445, 0
  %8447 = fmul fast float %8446, %6027
  %8448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8449 = extractvalue %dx.types.CBufRet.f32 %8448, 3
  %8450 = fsub fast float 1.000000e+00, %4111
  %8451 = call float @dx.op.unary.f32(i32 7, float %8450)  ; Saturate(value)
  %8452 = fadd fast float %8440, %4109
  %8453 = fmul fast float %8452, %4111
  %8454 = fmul fast float %8451, %8449
  %8455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8456 = extractvalue %dx.types.CBufRet.f32 %8455, 3
  %8457 = fmul fast float %8438, %5288
  %8458 = fmul fast float %8439, %5289
  %8459 = fmul fast float %8440, %5290
  %8460 = fcmp fast ogt float %105, %240
  %8461 = and i1 %8460, %4514
  %8462 = or i1 %4520, %8461
  %8463 = icmp eq i32 %4513, 2
  %8464 = fcmp fast ole float %105, %240
  %8465 = and i1 %8464, %8463
  %8466 = or i1 %8465, %8462
  br i1 %8461, label %8467, label %8724

; <label>:8467                                    ; preds = %8434
  %8468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8469 = extractvalue %dx.types.CBufRet.f32 %8468, 2
  %8470 = extractvalue %dx.types.CBufRet.f32 %8468, 3
  %8471 = fmul fast float %8469, %118
  %8472 = fmul fast float %8470, %119
  %8473 = call float @dx.op.unary.f32(i32 7, float %8471)  ; Saturate(value)
  %8474 = call float @dx.op.unary.f32(i32 7, float %8472)  ; Saturate(value)
  %8475 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %8473, float %8474, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8476 = extractvalue %dx.types.ResRet.f32 %8475, 0
  %8477 = extractvalue %dx.types.ResRet.f32 %8475, 1
  %8478 = extractvalue %dx.types.ResRet.f32 %8475, 2
  %8479 = extractvalue %dx.types.ResRet.f32 %8475, 3
  %8480 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %8473, float %8474, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8481 = extractvalue %dx.types.ResRet.f32 %8480, 0
  %8482 = extractvalue %dx.types.ResRet.f32 %8480, 1
  %8483 = extractvalue %dx.types.ResRet.f32 %8480, 2
  %8484 = extractvalue %dx.types.ResRet.f32 %8480, 3
  %8485 = call float @dx.op.binary.f32(i32 35, float %8477, float %8478)  ; FMax(a,b)
  %8486 = call float @dx.op.binary.f32(i32 35, float %8476, float %8485)  ; FMax(a,b)
  %8487 = call float @dx.op.binary.f32(i32 35, float %8486, float %8479)  ; FMax(a,b)
  %8488 = call float @dx.op.binary.f32(i32 36, float %8482, float %8483)  ; FMin(a,b)
  %8489 = call float @dx.op.binary.f32(i32 36, float %8481, float %8488)  ; FMin(a,b)
  %8490 = call float @dx.op.binary.f32(i32 36, float %8489, float %8484)  ; FMin(a,b)
  %8491 = fmul fast float %8487, 2.550000e+02
  %8492 = fadd fast float %8491, 0x3F70101020000000
  %8493 = fptoui float %8492 to i32
  %8494 = fmul fast float %8490, 2.550000e+02
  %8495 = fadd fast float %8494, 0x3F70101020000000
  %8496 = fptoui float %8495 to i32
  %8497 = icmp ult i32 %8493, %8496
  br i1 %8497, label %8498, label %8666

; <label>:8498                                    ; preds = %8467
  %8499 = fcmp fast ogt float %104, 9.843750e-01
  %8500 = fadd fast float %105, -4.000000e+00
  %8501 = select i1 %8499, float -4.000000e+00, float %8500
  %8502 = call float @dx.op.binary.f32(i32 35, float %8501, float 0.000000e+00)  ; FMax(a,b)
  %8503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8504 = extractvalue %dx.types.CBufRet.f32 %8503, 0
  %8505 = fadd fast float %8504, %8502
  %8506 = extractvalue %dx.types.CBufRet.f32 %8503, 2
  %8507 = fmul fast float %8505, %8506
  %8508 = call float @dx.op.unary.f32(i32 23, float %8507)  ; Log(value)
  %8509 = extractvalue %dx.types.CBufRet.f32 %8503, 3
  %8510 = fmul fast float %8509, %8508
  %8511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8512 = extractvalue %dx.types.CBufRet.f32 %8511, 2
  %8513 = fmul fast float %8510, %8512
  %8514 = call float @dx.op.unary.f32(i32 7, float %8513)  ; Saturate(value)
  %8515 = uitofp i32 %8493 to float
  %8516 = uitofp i32 %8496 to float
  %8517 = fadd fast float %8515, 5.000000e-01
  %8518 = fadd fast float %8516, 5.000000e-01
  %8519 = fmul fast float %8512, %8517
  %8520 = fmul fast float %8512, %8518
  %8521 = fadd fast float %8519, 0x3F0FFB4800000000
  %8522 = fadd fast float %8520, 0xBF0FFB4800000000
  %8523 = call float @dx.op.binary.f32(i32 35, float %8514, float %8521)  ; FMax(a,b)
  %8524 = call float @dx.op.binary.f32(i32 36, float %8523, float %8522)  ; FMin(a,b)
  %8525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8526 = extractvalue %dx.types.CBufRet.f32 %8525, 1
  %8527 = extractvalue %dx.types.CBufRet.f32 %8525, 2
  %8528 = extractvalue %dx.types.CBufRet.f32 %8525, 0
  %8529 = fmul fast float %8526, %8524
  %8530 = fadd fast float %8528, %8529
  %8531 = fadd fast float %8528, %8527
  %8532 = fsub fast float %8526, %8527
  %8533 = fadd fast float %8532, %8528
  %8534 = call float @dx.op.binary.f32(i32 35, float %8530, float %8531)  ; FMax(a,b)
  %8535 = call float @dx.op.binary.f32(i32 36, float %8534, float %8533)  ; FMin(a,b)
  %8536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %8473, float %8474, float %8535, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8537 = extractvalue %dx.types.ResRet.f32 %8536, 0
  %8538 = extractvalue %dx.types.ResRet.f32 %8536, 1
  %8539 = extractvalue %dx.types.ResRet.f32 %8536, 2
  %8540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8541 = extractvalue %dx.types.CBufRet.i32 %8540, 0
  %8542 = extractvalue %dx.types.CBufRet.i32 %8540, 1
  %8543 = uitofp i32 %8541 to float
  %8544 = uitofp i32 %8542 to float
  %8545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8546 = extractvalue %dx.types.CBufRet.f32 %8545, 0
  %8547 = extractvalue %dx.types.CBufRet.f32 %8545, 1
  %8548 = fmul fast float %8543, %8473
  %8549 = fmul fast float %8544, %8474
  %8550 = fadd fast float %8548, -5.000000e-01
  %8551 = fadd fast float %8549, -5.000000e-01
  %8552 = call float @dx.op.unary.f32(i32 22, float %8550)  ; Frc(value)
  %8553 = call float @dx.op.unary.f32(i32 22, float %8551)  ; Frc(value)
  %8554 = fmul fast float %8552, %8552
  %8555 = fmul fast float %8554, %8552
  %8556 = fsub fast float 3.000000e+00, %8552
  %8557 = fmul fast float %8554, %8556
  %8558 = fmul fast float %8552, 3.000000e+00
  %8559 = fmul fast float %8555, 3.000000e+00
  %8560 = fmul fast float %8554, 6.000000e+00
  %8561 = fsub fast float %8559, %8560
  %8562 = fadd fast float %8561, 4.000000e+00
  %8563 = fmul fast float %8562, 0x3FC5555560000000
  %8564 = fmul fast float %8555, -3.000000e+00
  %8565 = fadd fast float %8554, %8552
  %8566 = fmul fast float %8565, 3.000000e+00
  %8567 = fadd fast float %8564, 1.000000e+00
  %8568 = fadd fast float %8567, %8566
  %8569 = fmul fast float %8555, 0x3FC5555560000000
  %8570 = fmul fast float %8553, %8553
  %8571 = fmul fast float %8570, %8553
  %8572 = fsub fast float 3.000000e+00, %8553
  %8573 = fmul fast float %8570, %8572
  %8574 = fmul fast float %8553, 3.000000e+00
  %8575 = fmul fast float %8571, 3.000000e+00
  %8576 = fmul fast float %8570, 6.000000e+00
  %8577 = fsub fast float %8575, %8576
  %8578 = fadd fast float %8577, 4.000000e+00
  %8579 = fmul fast float %8578, 0x3FC5555560000000
  %8580 = fmul fast float %8571, -3.000000e+00
  %8581 = fadd fast float %8570, %8553
  %8582 = fmul fast float %8581, 3.000000e+00
  %8583 = fadd fast float %8580, 1.000000e+00
  %8584 = fadd fast float %8583, %8582
  %8585 = fmul fast float %8571, 0x3FC5555560000000
  %8586 = fadd fast float %8552, 1.000000e+00
  %8587 = fsub fast float 1.000000e+00, %8558
  %8588 = fadd fast float %8587, %8557
  %8589 = fadd fast float %8588, %8562
  %8590 = fmul fast float %8589, 0x3FC5555560000000
  %8591 = fdiv fast float %8563, %8590
  %8592 = fsub fast float %8586, %8591
  %8593 = fsub fast float 1.000000e+00, %8552
  %8594 = fadd fast float %8568, %8555
  %8595 = fmul fast float %8594, 0x3FC5555560000000
  %8596 = fdiv fast float %8569, %8595
  %8597 = fadd fast float %8593, %8596
  %8598 = fadd fast float %8553, 1.000000e+00
  %8599 = fsub fast float 1.000000e+00, %8574
  %8600 = fadd fast float %8599, %8573
  %8601 = fadd fast float %8600, %8578
  %8602 = fmul fast float %8601, 0x3FC5555560000000
  %8603 = fdiv fast float %8579, %8602
  %8604 = fsub fast float %8598, %8603
  %8605 = fsub fast float 1.000000e+00, %8553
  %8606 = fadd fast float %8584, %8571
  %8607 = fmul fast float %8606, 0x3FC5555560000000
  %8608 = fdiv fast float %8585, %8607
  %8609 = fadd fast float %8608, %8605
  %8610 = fmul fast float %8592, %8546
  %8611 = fsub fast float %8473, %8610
  %8612 = fmul fast float %8597, %8546
  %8613 = fadd fast float %8612, %8473
  %8614 = fmul fast float %8609, %8547
  %8615 = fadd fast float %8614, %8474
  %8616 = fmul fast float %8604, %8547
  %8617 = fsub fast float %8474, %8616
  %8618 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8611, float %8617, float %8535, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8619 = extractvalue %dx.types.ResRet.f32 %8618, 0
  %8620 = extractvalue %dx.types.ResRet.f32 %8618, 1
  %8621 = extractvalue %dx.types.ResRet.f32 %8618, 2
  %8622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8613, float %8617, float %8535, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8623 = extractvalue %dx.types.ResRet.f32 %8622, 0
  %8624 = extractvalue %dx.types.ResRet.f32 %8622, 1
  %8625 = extractvalue %dx.types.ResRet.f32 %8622, 2
  %8626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8611, float %8615, float %8535, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8627 = extractvalue %dx.types.ResRet.f32 %8626, 0
  %8628 = extractvalue %dx.types.ResRet.f32 %8626, 1
  %8629 = extractvalue %dx.types.ResRet.f32 %8626, 2
  %8630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %8613, float %8615, float %8535, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8631 = extractvalue %dx.types.ResRet.f32 %8630, 0
  %8632 = extractvalue %dx.types.ResRet.f32 %8630, 1
  %8633 = extractvalue %dx.types.ResRet.f32 %8630, 2
  %8634 = fsub fast float %8627, %8619
  %8635 = fsub fast float %8628, %8620
  %8636 = fsub fast float %8629, %8621
  %8637 = fmul fast float %8634, %8607
  %8638 = fmul fast float %8635, %8607
  %8639 = fmul fast float %8636, %8607
  %8640 = fadd fast float %8637, %8619
  %8641 = fadd fast float %8638, %8620
  %8642 = fadd fast float %8639, %8621
  %8643 = fsub fast float %8631, %8623
  %8644 = fsub fast float %8632, %8624
  %8645 = fsub fast float %8633, %8625
  %8646 = fmul fast float %8643, %8607
  %8647 = fmul fast float %8644, %8607
  %8648 = fmul fast float %8645, %8607
  %8649 = fsub fast float %8623, %8640
  %8650 = fadd fast float %8649, %8646
  %8651 = fsub fast float %8624, %8641
  %8652 = fadd fast float %8651, %8647
  %8653 = fsub fast float %8625, %8642
  %8654 = fadd fast float %8653, %8648
  %8655 = fmul fast float %8650, %8595
  %8656 = fmul fast float %8652, %8595
  %8657 = fmul fast float %8654, %8595
  %8658 = fadd fast float %8655, %8640
  %8659 = fadd fast float %8656, %8641
  %8660 = fadd fast float %8657, %8642
  %8661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8662 = extractvalue %dx.types.CBufRet.f32 %8661, 1
  %8663 = fmul fast float %8658, %8662
  %8664 = fmul fast float %8659, %8662
  %8665 = fmul fast float %8660, %8662
  br label %8666

; <label>:8666                                    ; preds = %8498, %8467
  %8667 = phi float [ %8537, %8498 ], [ 1.000000e+00, %8467 ]
  %8668 = phi float [ %8538, %8498 ], [ 1.000000e+00, %8467 ]
  %8669 = phi float [ %8539, %8498 ], [ 1.000000e+00, %8467 ]
  %8670 = phi float [ %8663, %8498 ], [ 0.000000e+00, %8467 ]
  %8671 = phi float [ %8664, %8498 ], [ 0.000000e+00, %8467 ]
  %8672 = phi float [ %8665, %8498 ], [ 0.000000e+00, %8467 ]
  %8673 = fmul fast float %8670, %8444
  %8674 = fmul fast float %8671, %8444
  %8675 = fmul fast float %8672, %8444
  %8676 = call float @dx.op.dot3.f32(i32 55, float %8667, float %8668, float %8669, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8677 = call float @dx.op.dot3.f32(i32 55, float %8673, float %8674, float %8675, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8678 = select i1 %277, float %8676, float %8667
  %8679 = select i1 %277, float %8676, float %8668
  %8680 = select i1 %277, float 1.000000e+00, float %8669
  %8681 = select i1 %277, float %8677, float %8673
  %8682 = select i1 %277, float 0.000000e+00, float %8674
  %8683 = select i1 %277, float 0.000000e+00, float %8675
  %8684 = fmul fast float %8678, %8457
  %8685 = fmul fast float %8679, %8458
  %8686 = fmul fast float %8680, %8459
  %8687 = fadd fast float %8684, %8681
  %8688 = fadd fast float %8685, %8682
  %8689 = fadd fast float %8683, %8686
  %8690 = fmul fast float %8678, %8435
  %8691 = fmul fast float %8679, %8436
  %8692 = fmul fast float %8680, %8437
  %8693 = fmul fast float %154, %8469
  %8694 = fmul fast float %156, %8470
  %8695 = fsub fast float 1.000000e+00, %8693
  %8696 = fsub fast float 1.000000e+00, %8694
  %8697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8698 = extractvalue %dx.types.CBufRet.f32 %8697, 0
  %8699 = extractvalue %dx.types.CBufRet.f32 %8697, 1
  %8700 = extractvalue %dx.types.CBufRet.f32 %8697, 2
  %8701 = fmul fast float %8695, %8698
  %8702 = fmul fast float %8695, %8699
  %8703 = fmul fast float %8695, %8700
  %8704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8705 = extractvalue %dx.types.CBufRet.f32 %8704, 0
  %8706 = extractvalue %dx.types.CBufRet.f32 %8704, 1
  %8707 = extractvalue %dx.types.CBufRet.f32 %8704, 2
  %8708 = fmul fast float %8696, %8705
  %8709 = fmul fast float %8696, %8706
  %8710 = fmul fast float %8696, %8707
  %8711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8712 = extractvalue %dx.types.CBufRet.f32 %8711, 0
  %8713 = extractvalue %dx.types.CBufRet.f32 %8711, 1
  %8714 = extractvalue %dx.types.CBufRet.f32 %8711, 2
  %8715 = fadd fast float %8708, %8712
  %8716 = fadd fast float %8715, %8701
  %8717 = fadd fast float %8709, %8713
  %8718 = fadd fast float %8717, %8702
  %8719 = fadd fast float %8710, %8714
  %8720 = fadd fast float %8719, %8703
  %8721 = fmul fast float %8716, %240
  %8722 = fmul fast float %8718, %240
  %8723 = fmul fast float %8720, %240
  br label %8724

; <label>:8724                                    ; preds = %8666, %8434
  %8725 = phi float [ %8721, %8666 ], [ %205, %8434 ]
  %8726 = phi float [ %8722, %8666 ], [ %206, %8434 ]
  %8727 = phi float [ %8723, %8666 ], [ %207, %8434 ]
  %8728 = phi float [ %240, %8666 ], [ %105, %8434 ]
  %8729 = phi float [ %8687, %8666 ], [ %8457, %8434 ]
  %8730 = phi float [ %8688, %8666 ], [ %8458, %8434 ]
  %8731 = phi float [ %8689, %8666 ], [ %8459, %8434 ]
  %8732 = phi float [ %8690, %8666 ], [ %8435, %8434 ]
  %8733 = phi float [ %8691, %8666 ], [ %8436, %8434 ]
  %8734 = phi float [ %8692, %8666 ], [ %8437, %8434 ]
  %8735 = phi float [ %8667, %8666 ], [ 1.000000e+00, %8434 ]
  br i1 %8466, label %9890, label %8736

; <label>:8736                                    ; preds = %8724
  %8737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8738 = extractvalue %dx.types.CBufRet.f32 %8737, 0
  %8739 = extractvalue %dx.types.CBufRet.f32 %8737, 1
  %8740 = extractvalue %dx.types.CBufRet.f32 %8737, 2
  %8741 = extractvalue %dx.types.CBufRet.f32 %8737, 3
  %8742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8743 = extractvalue %dx.types.CBufRet.f32 %8742, 0
  %8744 = extractvalue %dx.types.CBufRet.f32 %8742, 1
  %8745 = extractvalue %dx.types.CBufRet.f32 %8742, 2
  %8746 = extractvalue %dx.types.CBufRet.f32 %8742, 3
  %8747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8748 = extractvalue %dx.types.CBufRet.f32 %8747, 0
  %8749 = extractvalue %dx.types.CBufRet.f32 %8747, 1
  %8750 = extractvalue %dx.types.CBufRet.f32 %8747, 2
  %8751 = extractvalue %dx.types.CBufRet.f32 %8747, 3
  %8752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8753 = extractvalue %dx.types.CBufRet.f32 %8752, 0
  %8754 = extractvalue %dx.types.CBufRet.f32 %8752, 1
  %8755 = extractvalue %dx.types.CBufRet.f32 %8752, 2
  %8756 = extractvalue %dx.types.CBufRet.f32 %8752, 3
  %8757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8758 = extractvalue %dx.types.CBufRet.f32 %8757, 3
  %8759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8760 = extractvalue %dx.types.CBufRet.f32 %8759, 3
  %8761 = extractvalue %dx.types.CBufRet.f32 %8759, 0
  %8762 = extractvalue %dx.types.CBufRet.f32 %8759, 1
  %8763 = extractvalue %dx.types.CBufRet.f32 %8759, 2
  %8764 = fcmp fast olt float %8763, -5.000000e-01
  %8765 = call float @dx.op.dot3.f32(i32 55, float %8725, float %8726, float %8727, float %8725, float %8726, float %8727)  ; Dot3(ax,ay,az,bx,by,bz)
  %8766 = call float @dx.op.unary.f32(i32 25, float %8765)  ; Rsqrt(value)
  %8767 = fmul fast float %8766, %8765
  %8768 = fmul fast float %8766, %8725
  %8769 = fmul fast float %8766, %8726
  %8770 = fmul fast float %8766, %8727
  %8771 = fadd fast float %8767, %8741
  %8772 = call float @dx.op.dot3.f32(i32 55, float %8768, float %8769, float %8770, float %8738, float %8739, float %8740)  ; Dot3(ax,ay,az,bx,by,bz)
  %8773 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8774 = extractvalue %dx.types.CBufRet.i32 %8773, 1
  %8775 = and i32 %8774, 1
  %8776 = icmp ne i32 %8775, 0
  %8777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8778 = extractvalue %dx.types.CBufRet.f32 %8777, 2
  %8779 = fcmp fast ogt float %8778, 0.000000e+00
  %8780 = and i1 %8776, %8779
  br i1 %8780, label %8781, label %9187, !dx.controlflow.hints !139

; <label>:8781                                    ; preds = %8736
  %8782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8783 = extractvalue %dx.types.CBufRet.f32 %8782, 3
  %8784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8785 = extractvalue %dx.types.CBufRet.f32 %8784, 2
  %8786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8787 = extractvalue %dx.types.CBufRet.f32 %8786, 2
  %8788 = fsub fast float %8785, %8787
  %8789 = and i32 %8774, 2
  %8790 = extractvalue %dx.types.CBufRet.i32 %8773, 0
  %8791 = call i32 @dx.op.binary.i32(i32 40, i32 %8790, i32 3)  ; UMin(a,b)
  %8792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8793 = extractvalue %dx.types.CBufRet.f32 %8792, 0
  %8794 = extractvalue %dx.types.CBufRet.f32 %8792, 1
  %8795 = extractvalue %dx.types.CBufRet.f32 %8786, 0
  %8796 = extractvalue %dx.types.CBufRet.f32 %8786, 1
  %8797 = fsub fast float %8793, %8795
  %8798 = fsub fast float %8794, %8796
  %8799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8800 = extractvalue %dx.types.CBufRet.f32 %8799, 0
  %8801 = fcmp fast ogt float %8800, 0.000000e+00
  %8802 = fsub fast float -0.000000e+00, %8797
  %8803 = fsub fast float -0.000000e+00, %8798
  %8804 = call float @dx.op.dot2.f32(i32 54, float %8768, float %8769, float %8768, float %8769)  ; Dot2(ax,ay,bx,by)
  %8805 = call float @dx.op.dot2.f32(i32 54, float %8768, float %8769, float %8802, float %8803)  ; Dot2(ax,ay,bx,by)
  %8806 = fmul fast float %8805, 2.000000e+00
  %8807 = call float @dx.op.dot2.f32(i32 54, float %8802, float %8803, float %8802, float %8803)  ; Dot2(ax,ay,bx,by)
  %8808 = fmul fast float %8800, %8800
  %8809 = fsub fast float %8807, %8808
  %8810 = fmul fast float %8806, %8806
  %8811 = fmul fast float %8804, 4.000000e+00
  %8812 = fmul fast float %8811, %8809
  %8813 = fsub fast float %8810, %8812
  %8814 = fcmp fast ogt float %8813, 0.000000e+00
  br i1 %8814, label %8815, label %8830

; <label>:8815                                    ; preds = %8781
  %8816 = fcmp fast ogt float %8806, 0.000000e+00
  %8817 = call float @dx.op.unary.f32(i32 24, float %8813)  ; Sqrt(value)
  %8818 = fsub fast float -0.000000e+00, %8817
  %8819 = select i1 %8816, float %8817, float %8818
  %8820 = fadd fast float %8819, %8806
  %8821 = fmul float %8820, -5.000000e-01
  %8822 = fdiv fast float %8821, %8804
  %8823 = call float @dx.op.binary.f32(i32 35, float %8822, float 0.000000e+00)  ; FMax(a,b)
  %8824 = call float @dx.op.binary.f32(i32 36, float %8767, float %8823)  ; FMin(a,b)
  %8825 = fdiv fast float %8809, %8821
  %8826 = call float @dx.op.binary.f32(i32 35, float %8825, float 0.000000e+00)  ; FMax(a,b)
  %8827 = call float @dx.op.binary.f32(i32 36, float %8767, float %8826)  ; FMin(a,b)
  %8828 = call float @dx.op.binary.f32(i32 36, float %8824, float %8827)  ; FMin(a,b)
  %8829 = call float @dx.op.binary.f32(i32 35, float %8824, float %8827)  ; FMax(a,b)
  br label %8830

; <label>:8830                                    ; preds = %8815, %8781
  %8831 = phi float [ %8829, %8815 ], [ -1.000000e+00, %8781 ]
  %8832 = phi float [ %8828, %8815 ], [ -1.000000e+00, %8781 ]
  %8833 = phi i1 [ true, %8815 ], [ false, %8781 ]
  %8834 = and i1 %8801, %8833
  br i1 %8834, label %8835, label %8837

; <label>:8835                                    ; preds = %8830
  %8836 = fcmp fast oeq float %8832, %8831
  br i1 %8836, label %9140, label %8838

; <label>:8837                                    ; preds = %8830
  br i1 %8801, label %9140, label %8838

; <label>:8838                                    ; preds = %8837, %8835
  %8839 = phi float [ %8767, %8837 ], [ %8831, %8835 ]
  %8840 = phi float [ 0.000000e+00, %8837 ], [ %8832, %8835 ]
  %8841 = icmp ne i32 %8789, 0
  %8842 = fmul fast float %8839, %8770
  %8843 = fadd fast float %8842, %8783
  %8844 = fmul fast float %8843, %8839
  %8845 = select i1 %8841, float 0.000000e+00, float %8844
  %8846 = fcmp fast oeq float %8770, 0.000000e+00
  %8847 = fdiv fast float %8788, %8770
  %8848 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8847)  ; FMax(a,b)
  %8849 = select i1 %8846, float %8839, float %8848
  %8850 = call float @dx.op.binary.f32(i32 36, float %8839, float %8849)  ; FMin(a,b)
  %8851 = fcmp fast ogt float %8770, 0.000000e+00
  %8852 = fcmp fast olt float %8788, 0.000000e+00
  br i1 %8851, label %8853, label %8910

; <label>:8853                                    ; preds = %8838
  %8854 = icmp eq i32 %8789, 0
  br i1 %8852, label %8855, label %8899

; <label>:8855                                    ; preds = %8853
  %8856 = select i1 %8854, float %8839, float 0.000000e+00
  %8857 = fsub fast float -0.000000e+00, %8856
  %8858 = call float @dx.op.unary.f32(i32 6, float %8857)  ; FAbs(value)
  %8859 = fmul fast float %8856, %8770
  %8860 = fadd fast float %8859, %8783
  %8861 = fmul fast float %8858, %8860
  %8862 = fsub fast float %8845, %8861
  %8863 = fsub fast float %8839, %8858
  %8864 = select i1 %8854, float %8863, float 0.000000e+00
  %8865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8866 = extractvalue %dx.types.CBufRet.f32 %8865, 0
  %8867 = extractvalue %dx.types.CBufRet.f32 %8865, 1
  %8868 = extractvalue %dx.types.CBufRet.f32 %8865, 2
  %8869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8870 = extractvalue %dx.types.CBufRet.f32 %8869, 0
  %8871 = extractvalue %dx.types.CBufRet.f32 %8869, 1
  %8872 = extractvalue %dx.types.CBufRet.f32 %8869, 2
  %8873 = extractvalue %dx.types.CBufRet.f32 %8869, 3
  %8874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8875 = extractvalue %dx.types.CBufRet.f32 %8874, 3
  %8876 = call float @dx.op.binary.f32(i32 36, float %8862, float %8875)  ; FMin(a,b)
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
  %8888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  br label %9140

; <label>:8899                                    ; preds = %8853
  br i1 %8854, label %8900, label %8921

; <label>:8900                                    ; preds = %8899
  %8901 = call float @dx.op.binary.f32(i32 36, float %8850, float %8840)  ; FMin(a,b)
  %8902 = fsub fast float %8850, %8901
  %8903 = fsub fast float %8902, %8839
  %8904 = call float @dx.op.unary.f32(i32 6, float %8903)  ; FAbs(value)
  %8905 = fadd fast float %8902, %8839
  %8906 = fmul fast float %8905, %8770
  %8907 = fadd fast float %8906, %8783
  %8908 = fmul fast float %8907, %8904
  %8909 = fsub fast float %8845, %8908
  br label %8921

; <label>:8910                                    ; preds = %8838
  br i1 %8852, label %8911, label %8921

; <label>:8911                                    ; preds = %8910
  %8912 = call float @dx.op.binary.f32(i32 35, float %8840, float %8850)  ; FMax(a,b)
  %8913 = icmp eq i32 %8789, 0
  %8914 = select i1 %8913, float %8850, float 0.000000e+00
  %8915 = fsub fast float -0.000000e+00, %8914
  %8916 = call float @dx.op.unary.f32(i32 6, float %8915)  ; FAbs(value)
  %8917 = fmul fast float %8914, %8770
  %8918 = fadd fast float %8917, %8783
  %8919 = fmul fast float %8916, %8918
  %8920 = fsub fast float %8845, %8919
  br label %8921

; <label>:8921                                    ; preds = %8911, %8910, %8900, %8899
  %8922 = phi float [ %8840, %8899 ], [ %8840, %8900 ], [ %8912, %8911 ], [ %8840, %8910 ]
  %8923 = phi float [ 0.000000e+00, %8899 ], [ %8904, %8900 ], [ %8916, %8911 ], [ 0.000000e+00, %8910 ]
  %8924 = phi float [ %8845, %8899 ], [ %8909, %8900 ], [ %8920, %8911 ], [ %8845, %8910 ]
  %8925 = phi float [ %8850, %8899 ], [ %8850, %8900 ], [ %8839, %8911 ], [ %8839, %8910 ]
  %8926 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 0
  store float -1.000000e+00, float* %8926, align 4, !tbaa !125, !noalias !140
  %8927 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 1
  store float -1.000000e+00, float* %8927, align 4, !tbaa !125, !noalias !140
  %8928 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 2
  store float -1.000000e+00, float* %8928, align 4, !tbaa !125, !noalias !140
  %8929 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 0
  store float -1.000000e+00, float* %8929, align 4, !tbaa !125, !noalias !140
  %8930 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 1
  store float -1.000000e+00, float* %8930, align 4, !tbaa !125, !noalias !140
  %8931 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 2
  store float -1.000000e+00, float* %8931, align 4, !tbaa !125, !noalias !140
  %8932 = icmp sgt i32 %8791, 0
  br i1 %8932, label %8933, label %8994

; <label>:8933                                    ; preds = %8921
  br label %8934

; <label>:8934                                    ; preds = %8983, %8933
  %8935 = phi i32 [ %8984, %8983 ], [ 0, %8933 ]
  %8936 = phi i32 [ %8985, %8983 ], [ 0, %8933 ]
  %8937 = add nuw i32 %8936, 171
  %8938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %8937)  ; CBufferLoadLegacy(handle,regIndex)
  %8939 = extractvalue %dx.types.CBufRet.f32 %8938, 0
  %8940 = extractvalue %dx.types.CBufRet.f32 %8938, 1
  %8941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8942 = extractvalue %dx.types.CBufRet.f32 %8941, 0
  %8943 = extractvalue %dx.types.CBufRet.f32 %8941, 1
  %8944 = fsub fast float %8939, %8942
  %8945 = fsub fast float %8940, %8943
  %8946 = extractvalue %dx.types.CBufRet.f32 %8938, 2
  %8947 = fsub fast float -0.000000e+00, %8944
  %8948 = fsub fast float -0.000000e+00, %8945
  %8949 = call float @dx.op.dot2.f32(i32 54, float %8768, float %8769, float %8947, float %8948)  ; Dot2(ax,ay,bx,by)
  %8950 = fmul fast float %8949, 2.000000e+00
  %8951 = call float @dx.op.dot2.f32(i32 54, float %8947, float %8948, float %8947, float %8948)  ; Dot2(ax,ay,bx,by)
  %8952 = fmul fast float %8946, %8946
  %8953 = fsub fast float %8951, %8952
  %8954 = fmul fast float %8950, %8950
  %8955 = fmul fast float %8811, %8953
  %8956 = fsub fast float %8954, %8955
  %8957 = fcmp fast ogt float %8956, 0.000000e+00
  br i1 %8957, label %8958, label %8973

; <label>:8958                                    ; preds = %8934
  %8959 = fcmp fast ogt float %8950, 0.000000e+00
  %8960 = call float @dx.op.unary.f32(i32 24, float %8956)  ; Sqrt(value)
  %8961 = fsub fast float -0.000000e+00, %8960
  %8962 = select i1 %8959, float %8960, float %8961
  %8963 = fadd fast float %8962, %8950
  %8964 = fmul float %8963, -5.000000e-01
  %8965 = fdiv fast float %8964, %8804
  %8966 = call float @dx.op.binary.f32(i32 35, float %8965, float 0.000000e+00)  ; FMax(a,b)
  %8967 = call float @dx.op.binary.f32(i32 36, float %8839, float %8966)  ; FMin(a,b)
  %8968 = fdiv fast float %8953, %8964
  %8969 = call float @dx.op.binary.f32(i32 35, float %8968, float 0.000000e+00)  ; FMax(a,b)
  %8970 = call float @dx.op.binary.f32(i32 36, float %8839, float %8969)  ; FMin(a,b)
  %8971 = call float @dx.op.binary.f32(i32 36, float %8967, float %8970)  ; FMin(a,b)
  %8972 = call float @dx.op.binary.f32(i32 35, float %8967, float %8970)  ; FMax(a,b)
  br label %8973

; <label>:8973                                    ; preds = %8958, %8934
  %8974 = phi float [ %8972, %8958 ], [ -1.000000e+00, %8934 ]
  %8975 = phi float [ %8971, %8958 ], [ -1.000000e+00, %8934 ]
  %8976 = phi i1 [ true, %8958 ], [ false, %8934 ]
  br i1 %8976, label %8977, label %8983

; <label>:8977                                    ; preds = %8973
  %8978 = call float @dx.op.binary.f32(i32 35, float %8922, float %8975)  ; FMax(a,b)
  %8979 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 %8936
  store float %8978, float* %8979, align 4, !tbaa !125, !noalias !140
  %8980 = call float @dx.op.binary.f32(i32 35, float %8922, float %8974)  ; FMax(a,b)
  %8981 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 %8936
  store float %8980, float* %8981, align 4, !tbaa !125, !noalias !140
  %8982 = add nsw i32 %8935, 1
  br label %8983

; <label>:8983                                    ; preds = %8977, %8973
  %8984 = phi i32 [ %8982, %8977 ], [ %8935, %8973 ]
  %8985 = add nuw nsw i32 %8936, 1
  %8986 = icmp eq i32 %8985, %8791
  br i1 %8986, label %8987, label %8934

; <label>:8987                                    ; preds = %8983
  %8988 = load float, float* %8928, align 4, !tbaa !125, !alias.scope !156, !noalias !159
  %8989 = load float, float* %8927, align 4, !tbaa !125, !alias.scope !162, !noalias !163
  %8990 = load float, float* %8926, align 4, !tbaa !125, !alias.scope !164, !noalias !165
  %8991 = load float, float* %8931, align 4, !tbaa !125, !alias.scope !166, !noalias !169
  %8992 = load float, float* %8930, align 4, !tbaa !125, !alias.scope !172, !noalias !173
  %8993 = load float, float* %8929, align 4, !tbaa !125, !alias.scope !174, !noalias !175
  br label %8994

; <label>:8994                                    ; preds = %8987, %8921
  %8995 = phi float [ -1.000000e+00, %8921 ], [ %8993, %8987 ]
  %8996 = phi float [ -1.000000e+00, %8921 ], [ %8992, %8987 ]
  %8997 = phi float [ -1.000000e+00, %8921 ], [ %8991, %8987 ]
  %8998 = phi float [ -1.000000e+00, %8921 ], [ %8990, %8987 ]
  %8999 = phi float [ -1.000000e+00, %8921 ], [ %8989, %8987 ]
  %9000 = phi float [ -1.000000e+00, %8921 ], [ %8988, %8987 ]
  %9001 = phi i32 [ 0, %8921 ], [ %8984, %8987 ]
  %9002 = call float @dx.op.binary.f32(i32 36, float %8999, float %9000)  ; FMin(a,b)
  %9003 = call float @dx.op.binary.f32(i32 36, float %8998, float %9002)  ; FMin(a,b)
  %9004 = call float @dx.op.binary.f32(i32 35, float %8998, float %8999)  ; FMax(a,b)
  %9005 = call float @dx.op.binary.f32(i32 36, float %9004, float %9000)  ; FMin(a,b)
  %9006 = call float @dx.op.binary.f32(i32 36, float %8998, float %8999)  ; FMin(a,b)
  %9007 = call float @dx.op.binary.f32(i32 35, float %9006, float %9005)  ; FMax(a,b)
  %9008 = call float @dx.op.binary.f32(i32 35, float %8999, float %9000)  ; FMax(a,b)
  %9009 = call float @dx.op.binary.f32(i32 35, float %8998, float %9008)  ; FMax(a,b)
  store float %9003, float* %8926, align 4, !tbaa !125, !alias.scope !164, !noalias !165
  store float %9007, float* %8927, align 4, !tbaa !125, !alias.scope !162, !noalias !163
  store float %9009, float* %8928, align 4, !tbaa !125, !alias.scope !156, !noalias !159
  %9010 = call float @dx.op.binary.f32(i32 36, float %8996, float %8997)  ; FMin(a,b)
  %9011 = call float @dx.op.binary.f32(i32 36, float %8995, float %9010)  ; FMin(a,b)
  %9012 = call float @dx.op.binary.f32(i32 35, float %8995, float %8996)  ; FMax(a,b)
  %9013 = call float @dx.op.binary.f32(i32 36, float %9012, float %8997)  ; FMin(a,b)
  %9014 = call float @dx.op.binary.f32(i32 36, float %8995, float %8996)  ; FMin(a,b)
  %9015 = call float @dx.op.binary.f32(i32 35, float %9014, float %9013)  ; FMax(a,b)
  %9016 = call float @dx.op.binary.f32(i32 35, float %8996, float %8997)  ; FMax(a,b)
  %9017 = call float @dx.op.binary.f32(i32 35, float %8995, float %9016)  ; FMax(a,b)
  store float %9011, float* %8929, align 4, !tbaa !125, !alias.scope !174, !noalias !175
  store float %9015, float* %8930, align 4, !tbaa !125, !alias.scope !172, !noalias !173
  store float %9017, float* %8931, align 4, !tbaa !125, !alias.scope !166, !noalias !169
  %9018 = sub nsw i32 3, %9001
  %9019 = icmp sgt i32 %9018, 2
  br i1 %9019, label %9020, label %9058

; <label>:9020                                    ; preds = %8994
  %9021 = icmp eq i32 %8789, 0
  %9022 = fsub fast float %8839, %8923
  %9023 = select i1 %9021, float %9022, float %8923
  %9024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9025 = extractvalue %dx.types.CBufRet.f32 %9024, 0
  %9026 = extractvalue %dx.types.CBufRet.f32 %9024, 1
  %9027 = extractvalue %dx.types.CBufRet.f32 %9024, 2
  %9028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9029 = extractvalue %dx.types.CBufRet.f32 %9028, 0
  %9030 = extractvalue %dx.types.CBufRet.f32 %9028, 1
  %9031 = extractvalue %dx.types.CBufRet.f32 %9028, 2
  %9032 = extractvalue %dx.types.CBufRet.f32 %9028, 3
  %9033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9034 = extractvalue %dx.types.CBufRet.f32 %9033, 3
  %9035 = call float @dx.op.binary.f32(i32 36, float %8924, float %9034)  ; FMin(a,b)
  %9036 = fmul fast float %9032, %9023
  %9037 = call float @dx.op.unary.f32(i32 7, float %9036)  ; Saturate(value)
  %9038 = fsub fast float %9029, %9025
  %9039 = fsub fast float %9030, %9026
  %9040 = fsub fast float %9031, %9027
  %9041 = fmul fast float %9037, %9038
  %9042 = fmul fast float %9037, %9039
  %9043 = fmul fast float %9037, %9040
  %9044 = fadd fast float %9041, %9025
  %9045 = fadd fast float %9042, %9026
  %9046 = fadd fast float %9043, %9027
  %9047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9048 = extractvalue %dx.types.CBufRet.f32 %9047, 0
  %9049 = extractvalue %dx.types.CBufRet.f32 %9047, 1
  %9050 = fadd fast float %9049, %9048
  %9051 = call float @dx.op.unary.f32(i32 7, float %9050)  ; Saturate(value)
  %9052 = extractvalue %dx.types.CBufRet.f32 %9047, 2
  %9053 = extractvalue %dx.types.CBufRet.f32 %9047, 3
  %9054 = fadd fast float %9053, %9052
  %9055 = call float @dx.op.unary.f32(i32 7, float %9054)  ; Saturate(value)
  %9056 = fmul fast float %9051, %9035
  %9057 = fmul fast float %9056, %9055
  br label %9140

; <label>:9058                                    ; preds = %8994
  %9059 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 %9018
  %9060 = load float, float* %9059, align 4, !tbaa !125, !noalias !140
  %9061 = fcmp fast olt float %9060, %8925
  %9062 = icmp sgt i32 %9001, 0
  %9063 = and i1 %9062, %9061
  br i1 %9063, label %9064, label %9101

; <label>:9064                                    ; preds = %9058
  br label %9065

; <label>:9065                                    ; preds = %9094, %9064
  %9066 = phi float [ %9095, %9094 ], [ %8923, %9064 ]
  %9067 = phi float [ %9096, %9094 ], [ %8924, %9064 ]
  %9068 = phi float [ %9076, %9094 ], [ %9060, %9064 ]
  %9069 = phi i32 [ %9073, %9094 ], [ %9018, %9064 ]
  %9070 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 %9069
  %9071 = load float, float* %9070, align 4, !tbaa !125, !noalias !140
  %9072 = icmp slt i32 %9069, 2
  %9073 = add nsw i32 %9069, 1
  %9074 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 %9073
  %9075 = load float, float* %9074, align 4, !tbaa !125, !noalias !140
  %9076 = select i1 %9072, float %9075, float %8839
  %9077 = call float @dx.op.binary.f32(i32 36, float %9076, float %9071)  ; FMin(a,b)
  %9078 = call float @dx.op.binary.f32(i32 36, float %8925, float %9077)  ; FMin(a,b)
  %9079 = icmp eq i32 %8789, 0
  %9080 = fadd fast float %9078, %9068
  %9081 = fmul fast float %9080, %8770
  %9082 = fadd fast float %9081, %8783
  br i1 %9079, label %9088, label %9083

; <label>:9083                                    ; preds = %9065
  %9084 = fsub fast float %9078, %9068
  %9085 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9084)  ; FMax(a,b)
  %9086 = fmul fast float %9085, %9082
  %9087 = fadd fast float %9086, %9067
  br label %9094

; <label>:9088                                    ; preds = %9065
  %9089 = fsub fast float %9068, %9078
  %9090 = call float @dx.op.unary.f32(i32 6, float %9089)  ; FAbs(value)
  %9091 = fadd fast float %9090, %9066
  %9092 = fmul fast float %9090, %9082
  %9093 = fsub fast float %9067, %9092
  br label %9094

; <label>:9094                                    ; preds = %9088, %9083
  %9095 = phi float [ %9085, %9083 ], [ %9091, %9088 ]
  %9096 = phi float [ %9087, %9083 ], [ %9093, %9088 ]
  %9097 = fcmp fast olt float %9076, %8925
  %9098 = icmp slt i32 %9073, 3
  %9099 = and i1 %9098, %9097
  br i1 %9099, label %9065, label %9100

; <label>:9100                                    ; preds = %9094
  br label %9101

; <label>:9101                                    ; preds = %9100, %9058
  %9102 = phi float [ %8923, %9058 ], [ %9095, %9100 ]
  %9103 = phi float [ %8924, %9058 ], [ %9096, %9100 ]
  %9104 = fsub fast float %8839, %9102
  %9105 = select i1 %8841, float %9102, float %9104
  %9106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9107 = extractvalue %dx.types.CBufRet.f32 %9106, 0
  %9108 = extractvalue %dx.types.CBufRet.f32 %9106, 1
  %9109 = extractvalue %dx.types.CBufRet.f32 %9106, 2
  %9110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9111 = extractvalue %dx.types.CBufRet.f32 %9110, 0
  %9112 = extractvalue %dx.types.CBufRet.f32 %9110, 1
  %9113 = extractvalue %dx.types.CBufRet.f32 %9110, 2
  %9114 = extractvalue %dx.types.CBufRet.f32 %9110, 3
  %9115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9116 = extractvalue %dx.types.CBufRet.f32 %9115, 3
  %9117 = call float @dx.op.binary.f32(i32 36, float %9103, float %9116)  ; FMin(a,b)
  %9118 = fmul fast float %9114, %9105
  %9119 = call float @dx.op.unary.f32(i32 7, float %9118)  ; Saturate(value)
  %9120 = fsub fast float %9111, %9107
  %9121 = fsub fast float %9112, %9108
  %9122 = fsub fast float %9113, %9109
  %9123 = fmul fast float %9119, %9120
  %9124 = fmul fast float %9119, %9121
  %9125 = fmul fast float %9119, %9122
  %9126 = fadd fast float %9123, %9107
  %9127 = fadd fast float %9124, %9108
  %9128 = fadd fast float %9125, %9109
  %9129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9130 = extractvalue %dx.types.CBufRet.f32 %9129, 0
  %9131 = extractvalue %dx.types.CBufRet.f32 %9129, 1
  %9132 = fadd fast float %9131, %9130
  %9133 = call float @dx.op.unary.f32(i32 7, float %9132)  ; Saturate(value)
  %9134 = extractvalue %dx.types.CBufRet.f32 %9129, 2
  %9135 = extractvalue %dx.types.CBufRet.f32 %9129, 3
  %9136 = fadd fast float %9135, %9134
  %9137 = call float @dx.op.unary.f32(i32 7, float %9136)  ; Saturate(value)
  %9138 = fmul fast float %9133, %9117
  %9139 = fmul fast float %9138, %9137
  br label %9140

; <label>:9140                                    ; preds = %9101, %9020, %8855, %8837, %8835
  %9141 = phi float [ %8864, %8855 ], [ %9023, %9020 ], [ %9105, %9101 ], [ 0.000000e+00, %8835 ], [ 0.000000e+00, %8837 ]
  %9142 = phi float [ %8898, %8855 ], [ %9057, %9020 ], [ %9139, %9101 ], [ 0.000000e+00, %8835 ], [ 0.000000e+00, %8837 ]
  %9143 = phi float [ %8885, %8855 ], [ %9044, %9020 ], [ %9126, %9101 ], [ 0.000000e+00, %8835 ], [ 0.000000e+00, %8837 ]
  %9144 = phi float [ %8886, %8855 ], [ %9045, %9020 ], [ %9127, %9101 ], [ 0.000000e+00, %8835 ], [ 0.000000e+00, %8837 ]
  %9145 = phi float [ %8887, %8855 ], [ %9046, %9020 ], [ %9128, %9101 ], [ 0.000000e+00, %8835 ], [ 0.000000e+00, %8837 ]
  %9146 = fmul fast float %8778, %9142
  %9147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9148 = extractvalue %dx.types.CBufRet.f32 %9147, 2
  %9149 = fsub fast float %8785, %9148
  %9150 = fcmp fast olt float %9146, -2.000000e+01
  %9151 = call float @dx.op.unary.f32(i32 21, float %9146)  ; Exp(value)
  %9152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9153 = extractvalue %dx.types.CBufRet.f32 %9152, 2
  %9154 = extractvalue %dx.types.CBufRet.f32 %9152, 3
  %9155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9156 = extractvalue %dx.types.CBufRet.f32 %9155, 2
  %9157 = fmul fast float %9154, %9149
  %9158 = call float @dx.op.unary.f32(i32 7, float %9157)  ; Saturate(value)
  %9159 = fsub fast float 1.000000e+00, %9158
  %9160 = fmul fast float %8770, 5.000000e-01
  %9161 = fadd fast float %9160, 5.000000e-01
  %9162 = call float @dx.op.unary.f32(i32 7, float %9161)  ; Saturate(value)
  %9163 = fsub fast float 1.000000e+00, %9162
  %9164 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9159)  ; FMax(a,b)
  %9165 = fdiv fast float %9163, %9164
  %9166 = fsub fast float %9149, %8727
  %9167 = call float @dx.op.unary.f32(i32 6, float %9166)  ; FAbs(value)
  %9168 = fmul fast float %9167, %9153
  %9169 = call float @dx.op.unary.f32(i32 7, float %9165)  ; Saturate(value)
  %9170 = fsub fast float 1.000000e+00, %9168
  %9171 = fmul fast float %9170, %9169
  %9172 = fadd fast float %9171, %9168
  %9173 = fmul fast float %9156, %9149
  %9174 = call float @dx.op.unary.f32(i32 7, float %9173)  ; Saturate(value)
  %9175 = fsub fast float 1.000000e+00, %9172
  %9176 = fmul fast float %9175, %9174
  %9177 = fadd fast float %9176, %9172
  %9178 = call float @dx.op.unary.f32(i32 7, float %9177)  ; Saturate(value)
  %9179 = fadd fast float %9151, -1.000000e+00
  %9180 = select i1 %9150, float -1.000000e+00, float %9179
  %9181 = fmul fast float %9178, %9180
  %9182 = fadd fast float %9181, 1.000000e+00
  %9183 = fsub fast float -0.000000e+00, %9181
  %9184 = fmul fast float %9143, %9183
  %9185 = fmul fast float %9144, %9183
  %9186 = fmul fast float %9145, %9183
  br label %9187

; <label>:9187                                    ; preds = %9140, %8736
  %9188 = phi float [ %9141, %9140 ], [ 0.000000e+00, %8736 ]
  %9189 = phi float [ %9182, %9140 ], [ 1.000000e+00, %8736 ]
  %9190 = phi float [ %9184, %9140 ], [ 0.000000e+00, %8736 ]
  %9191 = phi float [ %9185, %9140 ], [ 0.000000e+00, %8736 ]
  %9192 = phi float [ %9186, %9140 ], [ 0.000000e+00, %8736 ]
  %9193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9194 = extractvalue %dx.types.CBufRet.f32 %9193, 1
  %9195 = fsub fast float 1.000000e+00, %9189
  %9196 = fmul fast float %9195, %8771
  %9197 = fmul fast float %9196, %9194
  %9198 = fsub fast float %8771, %9197
  br i1 %8764, label %9199, label %9228, !dx.controlflow.hints !176

; <label>:9199                                    ; preds = %9187
  %9200 = fmul fast float %8772, %8761
  %9201 = fadd fast float %9200, %8762
  %9202 = call float @dx.op.unary.f32(i32 7, float %9201)  ; Saturate(value)
  %9203 = fmul fast float %8743, %9198
  %9204 = fsub fast float -0.000000e+00, %9203
  %9205 = fmul fast float %8744, %9198
  %9206 = fsub fast float -0.000000e+00, %9205
  %9207 = call float @dx.op.unary.f32(i32 21, float %9204)  ; Exp(value)
  %9208 = call float @dx.op.unary.f32(i32 21, float %9206)  ; Exp(value)
  %9209 = call float @dx.op.binary.f32(i32 35, float %8751, float %9207)  ; FMax(a,b)
  %9210 = call float @dx.op.binary.f32(i32 35, float %8751, float %9208)  ; FMax(a,b)
  %9211 = fsub fast float %9210, %9209
  %9212 = fmul fast float %9211, %9202
  %9213 = fadd fast float %9212, %9209
  %9214 = call float @dx.op.unary.f32(i32 7, float %9213)  ; Saturate(value)
  %9215 = fsub fast float %8748, %8753
  %9216 = fsub fast float %8749, %8754
  %9217 = fsub fast float %8750, %8755
  %9218 = fmul fast float %9202, %9215
  %9219 = fmul fast float %9202, %9216
  %9220 = fmul fast float %9202, %9217
  %9221 = fadd fast float %9218, %8753
  %9222 = fadd fast float %9219, %8754
  %9223 = fadd fast float %9220, %8755
  %9224 = fsub fast float 1.000000e+00, %9214
  %9225 = fmul fast float %9224, %9221
  %9226 = fmul fast float %9224, %9222
  %9227 = fmul fast float %9224, %9223
  br label %9287

; <label>:9228                                    ; preds = %9187
  %9229 = fmul fast float %9198, %8760
  %9230 = call float @dx.op.unary.f32(i32 7, float %9229)  ; Saturate(value)
  %9231 = fsub fast float 2.000000e+00, %9230
  %9232 = fmul fast float %9230, 9.921875e-01
  %9233 = fmul fast float %9232, %9231
  %9234 = fadd fast float %9233, 3.906250e-03
  %9235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %56, float %9234, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9236 = extractvalue %dx.types.ResRet.f32 %9235, 0
  %9237 = fsub fast float %9230, %9236
  %9238 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9237)  ; FMax(a,b)
  %9239 = fmul fast float %8746, %8727
  %9240 = call float @dx.op.unary.f32(i32 6, float %9239)  ; FAbs(value)
  %9241 = fcmp fast ogt float %9240, 0x3EB0C6F7A0000000
  br i1 %9241, label %9242, label %9248, !dx.controlflow.hints !177

; <label>:9242                                    ; preds = %9228
  %9243 = fmul fast float %9239, 0xBFF7154760000000
  %9244 = call float @dx.op.unary.f32(i32 21, float %9243)  ; Exp(value)
  %9245 = fsub fast float 1.000000e+00, %9244
  %9246 = fdiv fast float %9245, %9239
  %9247 = fmul fast float %9246, %8756
  br label %9248

; <label>:9248                                    ; preds = %9242, %9228
  %9249 = phi float [ %9247, %9242 ], [ %8756, %9228 ]
  %9250 = fadd fast float %9249, %8758
  %9251 = fmul fast float %9250, %9238
  %9252 = fmul fast float %8743, %9251
  %9253 = fsub fast float -0.000000e+00, %9252
  %9254 = fmul fast float %8744, %9251
  %9255 = fsub fast float -0.000000e+00, %9254
  %9256 = fmul fast float %8745, %9251
  %9257 = fsub fast float -0.000000e+00, %9256
  %9258 = call float @dx.op.unary.f32(i32 21, float %9253)  ; Exp(value)
  %9259 = call float @dx.op.unary.f32(i32 21, float %9255)  ; Exp(value)
  %9260 = call float @dx.op.unary.f32(i32 21, float %9257)  ; Exp(value)
  %9261 = fmul fast float %8772, %8772
  %9262 = fadd fast float %9261, 1.000000e+00
  %9263 = fmul fast float %9262, 0x3FAE8EC8A0000000
  %9264 = fmul fast float %9263, %8753
  %9265 = fmul fast float %9263, %8754
  %9266 = fmul fast float %9263, %8755
  %9267 = fmul fast float %8772, %8751
  %9268 = fsub fast float 1.000000e+00, %9267
  %9269 = fmul fast float %8751, %8751
  %9270 = fsub fast float 1.000000e+00, %9269
  %9271 = fmul fast float %9270, 0x3FB45F3060000000
  %9272 = fmul fast float %9268, %9268
  %9273 = fdiv fast float 1.000000e+00, %9272
  %9274 = fmul fast float %9271, %9273
  %9275 = fmul fast float %9274, %8748
  %9276 = fmul fast float %9274, %8749
  %9277 = fmul fast float %9274, %8750
  %9278 = fadd fast float %9275, %9264
  %9279 = fadd fast float %9276, %9265
  %9280 = fadd fast float %9277, %9266
  %9281 = fsub fast float 1.000000e+00, %9258
  %9282 = fsub fast float 1.000000e+00, %9259
  %9283 = fsub fast float 1.000000e+00, %9260
  %9284 = fmul fast float %9278, %9281
  %9285 = fmul fast float %9279, %9282
  %9286 = fmul fast float %9280, %9283
  br label %9287

; <label>:9287                                    ; preds = %9248, %9199
  %9288 = phi float [ %9225, %9199 ], [ %9284, %9248 ]
  %9289 = phi float [ %9226, %9199 ], [ %9285, %9248 ]
  %9290 = phi float [ %9227, %9199 ], [ %9286, %9248 ]
  %9291 = phi float [ %9214, %9199 ], [ %9258, %9248 ]
  %9292 = phi float [ %9214, %9199 ], [ %9259, %9248 ]
  %9293 = phi float [ %9214, %9199 ], [ %9260, %9248 ]
  br i1 %8780, label %9294, label %9492, !dx.controlflow.hints !178

; <label>:9294                                    ; preds = %9287
  %9295 = extractvalue %dx.types.CBufRet.f32 %9193, 0
  %9296 = fmul fast float %9295, %9195
  %9297 = fsub fast float %9190, %9288
  %9298 = fsub fast float %9191, %9289
  %9299 = fsub fast float %9192, %9290
  %9300 = fmul fast float %9296, %9297
  %9301 = fmul fast float %9296, %9298
  %9302 = fmul fast float %9296, %9299
  %9303 = fadd fast float %9300, %9288
  %9304 = fadd fast float %9301, %9289
  %9305 = fadd fast float %9302, %9290
  %9306 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9291)  ; FMax(a,b)
  %9307 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9292)  ; FMax(a,b)
  %9308 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9293)  ; FMax(a,b)
  %9309 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9189)  ; FMax(a,b)
  %9310 = call float @dx.op.binary.f32(i32 35, float %9188, float %9198)  ; FMax(a,b)
  %9311 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9310)  ; FMax(a,b)
  %9312 = fdiv fast float %9188, %9311
  %9313 = call float @dx.op.unary.f32(i32 7, float %9312)  ; Saturate(value)
  %9314 = fdiv fast float %9198, %9311
  %9315 = call float @dx.op.unary.f32(i32 7, float %9314)  ; Saturate(value)
  %9316 = fcmp fast une float %9309, 1.000000e+00
  br i1 %9316, label %9317, label %9330, !dx.controlflow.hints !179

; <label>:9317                                    ; preds = %9294
  %9318 = call float @dx.op.unary.f32(i32 23, float %9309)  ; Log(value)
  %9319 = fmul fast float %9318, 0x3FE62E4300000000
  %9320 = fmul fast float %9190, %9319
  %9321 = fsub fast float -0.000000e+00, %9320
  %9322 = fmul fast float %9191, %9319
  %9323 = fsub fast float -0.000000e+00, %9322
  %9324 = fmul fast float %9192, %9319
  %9325 = fsub fast float -0.000000e+00, %9324
  %9326 = fsub fast float 1.000000e+00, %9309
  %9327 = fdiv fast float %9321, %9326
  %9328 = fdiv fast float %9323, %9326
  %9329 = fdiv fast float %9325, %9326
  br label %9330

; <label>:9330                                    ; preds = %9317, %9294
  %9331 = phi float [ %9327, %9317 ], [ %9190, %9294 ]
  %9332 = phi float [ %9328, %9317 ], [ %9191, %9294 ]
  %9333 = phi float [ %9329, %9317 ], [ %9192, %9294 ]
  %9334 = phi float [ %9319, %9317 ], [ 0.000000e+00, %9294 ]
  %9335 = fcmp fast une float %9306, 1.000000e+00
  br i1 %9335, label %9336, label %9343, !dx.controlflow.hints !180

; <label>:9336                                    ; preds = %9330
  %9337 = call float @dx.op.unary.f32(i32 23, float %9306)  ; Log(value)
  %9338 = fmul fast float %9337, 0x3FE62E4300000000
  %9339 = fmul fast float %9303, %9338
  %9340 = fsub fast float -0.000000e+00, %9339
  %9341 = fsub fast float 1.000000e+00, %9306
  %9342 = fdiv fast float %9340, %9341
  br label %9343

; <label>:9343                                    ; preds = %9336, %9330
  %9344 = phi float [ %9342, %9336 ], [ %9303, %9330 ]
  %9345 = phi float [ %9338, %9336 ], [ 0.000000e+00, %9330 ]
  %9346 = fcmp fast une float %9307, 1.000000e+00
  br i1 %9346, label %9347, label %9354, !dx.controlflow.hints !180

; <label>:9347                                    ; preds = %9343
  %9348 = call float @dx.op.unary.f32(i32 23, float %9307)  ; Log(value)
  %9349 = fmul fast float %9348, 0x3FE62E4300000000
  %9350 = fmul fast float %9304, %9349
  %9351 = fsub fast float -0.000000e+00, %9350
  %9352 = fsub fast float 1.000000e+00, %9307
  %9353 = fdiv fast float %9351, %9352
  br label %9354

; <label>:9354                                    ; preds = %9347, %9343
  %9355 = phi float [ %9353, %9347 ], [ %9304, %9343 ]
  %9356 = phi float [ %9349, %9347 ], [ 0.000000e+00, %9343 ]
  %9357 = fcmp fast une float %9308, 1.000000e+00
  br i1 %9357, label %9358, label %9365, !dx.controlflow.hints !180

; <label>:9358                                    ; preds = %9354
  %9359 = call float @dx.op.unary.f32(i32 23, float %9308)  ; Log(value)
  %9360 = fmul fast float %9359, 0x3FE62E4300000000
  %9361 = fmul fast float %9305, %9360
  %9362 = fsub fast float -0.000000e+00, %9361
  %9363 = fsub fast float 1.000000e+00, %9308
  %9364 = fdiv fast float %9362, %9363
  br label %9365

; <label>:9365                                    ; preds = %9358, %9354
  %9366 = phi float [ %9364, %9358 ], [ %9305, %9354 ]
  %9367 = phi float [ %9360, %9358 ], [ 0.000000e+00, %9354 ]
  %9368 = fmul fast float %9331, %9315
  %9369 = fmul fast float %9332, %9315
  %9370 = fmul fast float %9333, %9315
  %9371 = fmul fast float %9334, %9315
  %9372 = fmul fast float %9344, %9313
  %9373 = fmul fast float %9355, %9313
  %9374 = fmul fast float %9366, %9313
  %9375 = fmul fast float %9345, %9313
  %9376 = fmul fast float %9356, %9313
  %9377 = fmul fast float %9367, %9313
  %9378 = fadd fast float %9372, %9368
  %9379 = fadd fast float %9373, %9369
  %9380 = fadd fast float %9374, %9370
  %9381 = fadd fast float %9375, %9371
  %9382 = fadd fast float %9376, %9371
  %9383 = fadd fast float %9377, %9371
  %9384 = fcmp fast une float %9381, 0.000000e+00
  br i1 %9384, label %9385, label %9392, !dx.controlflow.hints !181

; <label>:9385                                    ; preds = %9365
  %9386 = fmul fast float %9381, 0x3FF7154760000000
  %9387 = call float @dx.op.unary.f32(i32 21, float %9386)  ; Exp(value)
  %9388 = fsub fast float 1.000000e+00, %9387
  %9389 = fmul fast float %9378, %9388
  %9390 = fsub fast float -0.000000e+00, %9389
  %9391 = fdiv fast float %9390, %9381
  br label %9392

; <label>:9392                                    ; preds = %9385, %9365
  %9393 = phi float [ %9387, %9385 ], [ 1.000000e+00, %9365 ]
  %9394 = phi float [ %9391, %9385 ], [ %9378, %9365 ]
  %9395 = fcmp fast une float %9382, 0.000000e+00
  br i1 %9395, label %9396, label %9403, !dx.controlflow.hints !181

; <label>:9396                                    ; preds = %9392
  %9397 = fmul fast float %9382, 0x3FF7154760000000
  %9398 = call float @dx.op.unary.f32(i32 21, float %9397)  ; Exp(value)
  %9399 = fsub fast float 1.000000e+00, %9398
  %9400 = fmul fast float %9379, %9399
  %9401 = fsub fast float -0.000000e+00, %9400
  %9402 = fdiv fast float %9401, %9382
  br label %9403

; <label>:9403                                    ; preds = %9396, %9392
  %9404 = phi float [ %9398, %9396 ], [ 1.000000e+00, %9392 ]
  %9405 = phi float [ %9402, %9396 ], [ %9379, %9392 ]
  %9406 = fcmp fast une float %9383, 0.000000e+00
  br i1 %9406, label %9407, label %9414, !dx.controlflow.hints !181

; <label>:9407                                    ; preds = %9403
  %9408 = fmul fast float %9383, 0x3FF7154760000000
  %9409 = call float @dx.op.unary.f32(i32 21, float %9408)  ; Exp(value)
  %9410 = fsub fast float 1.000000e+00, %9409
  %9411 = fmul fast float %9380, %9410
  %9412 = fsub fast float -0.000000e+00, %9411
  %9413 = fdiv fast float %9412, %9383
  br label %9414

; <label>:9414                                    ; preds = %9407, %9403
  %9415 = phi float [ %9409, %9407 ], [ 1.000000e+00, %9403 ]
  %9416 = phi float [ %9413, %9407 ], [ %9380, %9403 ]
  %9417 = fcmp fast ogt float %9313, %9315
  br i1 %9417, label %9418, label %9438

; <label>:9418                                    ; preds = %9414
  %9419 = fsub fast float 1.000000e+00, %9315
  %9420 = fmul fast float %9331, %9419
  %9421 = fmul fast float %9332, %9419
  %9422 = fmul fast float %9333, %9419
  %9423 = fmul fast float %9334, %9419
  %9424 = fcmp fast une float %9423, 0.000000e+00
  br i1 %9424, label %9425, label %9476, !dx.controlflow.hints !182

; <label>:9425                                    ; preds = %9418
  %9426 = fmul fast float %9423, 0x3FF7154760000000
  %9427 = call float @dx.op.unary.f32(i32 21, float %9426)  ; Exp(value)
  %9428 = fsub fast float 1.000000e+00, %9427
  %9429 = fmul fast float %9420, %9428
  %9430 = fsub fast float -0.000000e+00, %9429
  %9431 = fmul fast float %9421, %9428
  %9432 = fsub fast float -0.000000e+00, %9431
  %9433 = fmul fast float %9422, %9428
  %9434 = fsub fast float -0.000000e+00, %9433
  %9435 = fdiv fast float %9430, %9423
  %9436 = fdiv fast float %9432, %9423
  %9437 = fdiv fast float %9434, %9423
  br label %9476

; <label>:9438                                    ; preds = %9414
  %9439 = fsub fast float 1.000000e+00, %9313
  %9440 = fmul fast float %9344, %9439
  %9441 = fmul fast float %9355, %9439
  %9442 = fmul fast float %9366, %9439
  %9443 = fmul fast float %9345, %9439
  %9444 = fmul fast float %9356, %9439
  %9445 = fmul fast float %9367, %9439
  %9446 = fcmp fast une float %9443, 0.000000e+00
  br i1 %9446, label %9447, label %9454, !dx.controlflow.hints !181

; <label>:9447                                    ; preds = %9438
  %9448 = fmul fast float %9443, 0x3FF7154760000000
  %9449 = call float @dx.op.unary.f32(i32 21, float %9448)  ; Exp(value)
  %9450 = fsub fast float 1.000000e+00, %9449
  %9451 = fmul fast float %9440, %9450
  %9452 = fsub fast float -0.000000e+00, %9451
  %9453 = fdiv fast float %9452, %9443
  br label %9454

; <label>:9454                                    ; preds = %9447, %9438
  %9455 = phi float [ %9453, %9447 ], [ %9440, %9438 ]
  %9456 = phi float [ %9449, %9447 ], [ 1.000000e+00, %9438 ]
  %9457 = fcmp fast une float %9444, 0.000000e+00
  br i1 %9457, label %9458, label %9465, !dx.controlflow.hints !181

; <label>:9458                                    ; preds = %9454
  %9459 = fmul fast float %9444, 0x3FF7154760000000
  %9460 = call float @dx.op.unary.f32(i32 21, float %9459)  ; Exp(value)
  %9461 = fsub fast float 1.000000e+00, %9460
  %9462 = fmul fast float %9441, %9461
  %9463 = fsub fast float -0.000000e+00, %9462
  %9464 = fdiv fast float %9463, %9444
  br label %9465

; <label>:9465                                    ; preds = %9458, %9454
  %9466 = phi float [ %9464, %9458 ], [ %9441, %9454 ]
  %9467 = phi float [ %9460, %9458 ], [ 1.000000e+00, %9454 ]
  %9468 = fcmp fast une float %9445, 0.000000e+00
  br i1 %9468, label %9469, label %9476, !dx.controlflow.hints !181

; <label>:9469                                    ; preds = %9465
  %9470 = fmul fast float %9445, 0x3FF7154760000000
  %9471 = call float @dx.op.unary.f32(i32 21, float %9470)  ; Exp(value)
  %9472 = fsub fast float 1.000000e+00, %9471
  %9473 = fmul fast float %9442, %9472
  %9474 = fsub fast float -0.000000e+00, %9473
  %9475 = fdiv fast float %9474, %9445
  br label %9476

; <label>:9476                                    ; preds = %9469, %9465, %9425, %9418
  %9477 = phi float [ %9475, %9469 ], [ %9437, %9425 ], [ %9422, %9418 ], [ %9442, %9465 ]
  %9478 = phi float [ %9466, %9469 ], [ %9436, %9425 ], [ %9421, %9418 ], [ %9466, %9465 ]
  %9479 = phi float [ %9455, %9469 ], [ %9435, %9425 ], [ %9420, %9418 ], [ %9455, %9465 ]
  %9480 = phi float [ %9471, %9469 ], [ %9427, %9425 ], [ 1.000000e+00, %9418 ], [ 1.000000e+00, %9465 ]
  %9481 = phi float [ %9467, %9469 ], [ %9427, %9425 ], [ 1.000000e+00, %9418 ], [ %9467, %9465 ]
  %9482 = phi float [ %9456, %9469 ], [ %9427, %9425 ], [ 1.000000e+00, %9418 ], [ %9456, %9465 ]
  %9483 = fmul fast float %9482, %9394
  %9484 = fmul fast float %9481, %9405
  %9485 = fmul fast float %9480, %9416
  %9486 = fadd fast float %9483, %9479
  %9487 = fadd fast float %9484, %9478
  %9488 = fadd fast float %9485, %9477
  %9489 = fmul fast float %9482, %9393
  %9490 = fmul fast float %9481, %9404
  %9491 = fmul fast float %9480, %9415
  br label %9492

; <label>:9492                                    ; preds = %9476, %9287
  %9493 = phi float [ %9491, %9476 ], [ %9293, %9287 ]
  %9494 = phi float [ %9490, %9476 ], [ %9292, %9287 ]
  %9495 = phi float [ %9489, %9476 ], [ %9291, %9287 ]
  %9496 = phi float [ %9488, %9476 ], [ %9290, %9287 ]
  %9497 = phi float [ %9487, %9476 ], [ %9289, %9287 ]
  %9498 = phi float [ %9486, %9476 ], [ %9288, %9287 ]
  %9499 = fmul fast float %9498, %8444
  %9500 = fmul fast float %9497, %8444
  %9501 = fmul fast float %9496, %8444
  %9502 = fmul fast float %9495, %8735
  %9503 = call float @dx.op.dot3.f32(i32 55, float %9495, float %9494, float %9493, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9504 = call float @dx.op.dot3.f32(i32 55, float %9499, float %9500, float %9501, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9505 = select i1 %277, float %9503, float %9495
  %9506 = select i1 %277, float %9503, float %9494
  %9507 = select i1 %277, float 1.000000e+00, float %9493
  %9508 = select i1 %277, float %9504, float %9499
  %9509 = select i1 %277, float 0.000000e+00, float %9500
  %9510 = select i1 %277, float 0.000000e+00, float %9501
  %9511 = fmul fast float %9505, %8729
  %9512 = fmul fast float %9506, %8730
  %9513 = fmul fast float %9507, %8731
  %9514 = fadd fast float %9511, %9508
  %9515 = fadd fast float %9512, %9509
  %9516 = fadd fast float %9510, %9513
  %9517 = fmul fast float %9505, %8732
  %9518 = fmul fast float %9506, %8733
  %9519 = fmul fast float %9507, %8734
  %9520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9521 = extractvalue %dx.types.CBufRet.i32 %9520, 0
  %9522 = icmp eq i32 %9521, 0
  br i1 %9522, label %9890, label %9523, !dx.controlflow.hints !183

; <label>:9523                                    ; preds = %9492
  %9524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9525 = extractvalue %dx.types.CBufRet.f32 %9524, 2
  %9526 = extractvalue %dx.types.CBufRet.f32 %9524, 3
  %9527 = fmul fast float %9525, %118
  %9528 = fmul fast float %9526, %119
  %9529 = fmul fast float %9527, 2.000000e+00
  %9530 = fmul fast float %9528, 2.000000e+00
  %9531 = fsub fast float 1.000000e+00, %9529
  %9532 = fsub fast float 1.000000e+00, %9530
  %9533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9534 = extractvalue %dx.types.CBufRet.f32 %9533, 0
  %9535 = extractvalue %dx.types.CBufRet.f32 %9533, 1
  %9536 = extractvalue %dx.types.CBufRet.f32 %9533, 2
  %9537 = fmul fast float %9531, %9534
  %9538 = fmul fast float %9531, %9535
  %9539 = fmul fast float %9531, %9536
  %9540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9541 = extractvalue %dx.types.CBufRet.f32 %9540, 0
  %9542 = extractvalue %dx.types.CBufRet.f32 %9540, 1
  %9543 = extractvalue %dx.types.CBufRet.f32 %9540, 2
  %9544 = fmul fast float %9532, %9541
  %9545 = fmul fast float %9532, %9542
  %9546 = fmul fast float %9532, %9543
  %9547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9548 = extractvalue %dx.types.CBufRet.f32 %9547, 0
  %9549 = extractvalue %dx.types.CBufRet.f32 %9547, 1
  %9550 = extractvalue %dx.types.CBufRet.f32 %9547, 2
  %9551 = fadd fast float %9544, %9548
  %9552 = fadd fast float %9551, %9537
  %9553 = fadd fast float %9545, %9549
  %9554 = fadd fast float %9553, %9538
  %9555 = fadd fast float %9546, %9550
  %9556 = fadd fast float %9555, %9539
  %9557 = fmul fast float %9552, %8728
  %9558 = fmul fast float %9554, %8728
  %9559 = fmul fast float %9556, %8728
  %9560 = fmul fast float %9557, %9557
  %9561 = fmul fast float %9558, %9558
  %9562 = fadd fast float %9560, %9561
  %9563 = fmul fast float %9559, %9559
  %9564 = fadd fast float %9562, %9563
  %9565 = call float @dx.op.unary.f32(i32 24, float %9564)  ; Sqrt(value)
  %9566 = extractvalue %dx.types.CBufRet.f32 %8455, 0
  %9567 = fsub fast float %9565, %9566
  %9568 = extractvalue %dx.types.CBufRet.f32 %8455, 2
  %9569 = fmul fast float %9567, %9568
  %9570 = call float @dx.op.unary.f32(i32 7, float %9569)  ; Saturate(value)
  %9571 = fadd fast float %9570, -5.000000e-01
  %9572 = fmul fast float %9571, 2.000000e+00
  %9573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9574 = extractvalue %dx.types.CBufRet.f32 %9573, 2
  %9575 = call float @dx.op.binary.f32(i32 36, float %9574, float %9572)  ; FMin(a,b)
  %9576 = fsub fast float -0.000000e+00, %9574
  %9577 = fcmp fast ogt float %9575, %9576
  br i1 %9577, label %9578, label %9890, !dx.controlflow.hints !184

; <label>:9578                                    ; preds = %9523
  %9579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9580 = extractvalue %dx.types.CBufRet.f32 %9579, 3
  %9581 = fcmp fast ogt float %9580, 0.000000e+00
  br i1 %9581, label %9582, label %9657, !dx.controlflow.hints !185

; <label>:9582                                    ; preds = %9578
  %9583 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9584 = extractvalue %dx.types.Dimensions %9583, 0
  %9585 = sitofp i32 %9584 to float
  %9586 = extractvalue %dx.types.Dimensions %9583, 1
  %9587 = sitofp i32 %9586 to float
  %9588 = fmul fast float %9527, %9585
  %9589 = fmul fast float %9528, %9587
  %9590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9591 = extractvalue %dx.types.CBufRet.f32 %9590, 1
  %9592 = fsub fast float -0.000000e+00, %9591
  %9593 = fptoui float %9592 to i32
  %9594 = fptoui float %9588 to i32
  %9595 = fptoui float %9589 to i32
  %9596 = and i32 %9593, 31
  %9597 = lshr i32 %9594, %9596
  %9598 = lshr i32 %9595, %9596
  %9599 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9593, i32 %9597, i32 %9598, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9600 = extractvalue %dx.types.ResRet.f32 %9599, 0
  %9601 = fcmp fast olt float %9600, -1.000000e+00
  %9602 = fcmp fast ogt float %9600, -1.000000e+00
  %9603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9604 = extractvalue %dx.types.CBufRet.f32 %9603, 1
  %9605 = select i1 %9602, float %9604, float 1.000000e+00
  %9606 = fadd fast float %9600, 1.000000e+00
  %9607 = fmul fast float %9605, %9606
  %9608 = call float @dx.op.unary.f32(i32 6, float %9607)  ; FAbs(value)
  %9609 = extractvalue %dx.types.CBufRet.f32 %9603, 3
  %9610 = fcmp fast oge float %9608, %9609
  %9611 = select i1 %9610, float 0x4197782600000000, float %9608
  %9612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9613 = extractvalue %dx.types.CBufRet.f32 %9612, 0
  %9614 = extractvalue %dx.types.CBufRet.f32 %9612, 1
  %9615 = extractvalue %dx.types.CBufRet.f32 %9612, 2
  %9616 = select i1 %9601, float %9613, float %9534
  %9617 = select i1 %9601, float %9614, float %9535
  %9618 = select i1 %9601, float %9615, float %9536
  %9619 = fmul fast float %9616, %9531
  %9620 = fmul fast float %9617, %9531
  %9621 = fmul fast float %9618, %9531
  %9622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9623 = extractvalue %dx.types.CBufRet.f32 %9622, 0
  %9624 = extractvalue %dx.types.CBufRet.f32 %9622, 1
  %9625 = extractvalue %dx.types.CBufRet.f32 %9622, 2
  %9626 = select i1 %9601, float %9623, float %9541
  %9627 = select i1 %9601, float %9624, float %9542
  %9628 = select i1 %9601, float %9625, float %9543
  %9629 = fmul fast float %9626, %9532
  %9630 = fmul fast float %9627, %9532
  %9631 = fmul fast float %9628, %9532
  %9632 = fadd fast float %9629, %9619
  %9633 = fadd fast float %9630, %9620
  %9634 = fadd fast float %9631, %9621
  %9635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9636 = extractvalue %dx.types.CBufRet.f32 %9635, 0
  %9637 = extractvalue %dx.types.CBufRet.f32 %9635, 1
  %9638 = extractvalue %dx.types.CBufRet.f32 %9635, 2
  %9639 = select i1 %9601, float %9636, float %9548
  %9640 = select i1 %9601, float %9637, float %9549
  %9641 = select i1 %9601, float %9638, float %9550
  %9642 = fadd fast float %9632, %9639
  %9643 = fadd fast float %9633, %9640
  %9644 = fadd fast float %9634, %9641
  %9645 = fmul fast float %9642, %9611
  %9646 = fmul fast float %9643, %9611
  %9647 = fmul fast float %9644, %9611
  %9648 = fmul fast float %9645, %9645
  %9649 = fmul fast float %9646, %9646
  %9650 = fadd fast float %9648, %9649
  %9651 = fmul fast float %9647, %9647
  %9652 = fadd fast float %9650, %9651
  %9653 = call float @dx.op.unary.f32(i32 24, float %9652)  ; Sqrt(value)
  %9654 = fsub fast float %9653, %9566
  %9655 = fmul fast float %9654, %9568
  %9656 = call float @dx.op.unary.f32(i32 7, float %9655)  ; Saturate(value)
  br label %9657

; <label>:9657                                    ; preds = %9582, %9578
  %9658 = phi float [ %9656, %9582 ], [ 1.000000e+00, %9578 ]
  %9659 = fmul fast float %9575, 5.000000e-01
  %9660 = fadd fast float %9659, 5.000000e-01
  %9661 = call float @dx.op.unary.f32(i32 22, float %9660)  ; Frc(value)
  %9662 = call float @dx.op.unary.f32(i32 27, float %9661)  ; Round_ni(value)
  %9663 = call float @dx.op.unary.f32(i32 22, float %9661)  ; Frc(value)
  %9664 = fmul fast float %9663, 2.000000e+00
  %9665 = fadd fast float %9664, -1.000000e+00
  %9666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %56, float %9527, float %9528, float %9662, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9667 = extractvalue %dx.types.ResRet.f32 %9666, 0
  %9668 = extractvalue %dx.types.ResRet.f32 %9666, 1
  %9669 = extractvalue %dx.types.ResRet.f32 %9666, 2
  %9670 = extractvalue %dx.types.ResRet.f32 %9666, 3
  %9671 = fadd fast float %9667, -5.000000e-01
  %9672 = fadd fast float %9669, -5.000000e-01
  %9673 = fmul fast float %9671, 0xBFD5555560000000
  %9674 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9672, float %9673)  ; FMad(a,b,c)
  %9675 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9668, float 0.000000e+00)  ; FMad(a,b,c)
  %9676 = fadd fast float %9675, %9670
  %9677 = fmul fast float %9671, -7.500000e-01
  %9678 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9672, float %9677)  ; FMad(a,b,c)
  %9679 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9668, float 0.000000e+00)  ; FMad(a,b,c)
  %9680 = fadd fast float %9679, %9670
  %9681 = call float @dx.op.binary.f32(i32 35, float %9674, float -1.000000e+00)  ; FMax(a,b)
  %9682 = call float @dx.op.binary.f32(i32 35, float %9676, float -1.000000e+00)  ; FMax(a,b)
  %9683 = call float @dx.op.binary.f32(i32 35, float %9678, float -1.000000e+00)  ; FMax(a,b)
  %9684 = call float @dx.op.binary.f32(i32 35, float %9680, float -1.000000e+00)  ; FMax(a,b)
  %9685 = call float @dx.op.binary.f32(i32 36, float %9681, float 1.000000e+00)  ; FMin(a,b)
  %9686 = call float @dx.op.binary.f32(i32 36, float %9682, float 1.000000e+00)  ; FMin(a,b)
  %9687 = call float @dx.op.binary.f32(i32 36, float %9683, float 1.000000e+00)  ; FMin(a,b)
  %9688 = call float @dx.op.binary.f32(i32 36, float %9684, float 1.000000e+00)  ; FMin(a,b)
  %9689 = fcmp fast olt float %9685, 0x3FEFFF8020000000
  br i1 %9689, label %9690, label %9805, !dx.controlflow.hints !186

; <label>:9690                                    ; preds = %9657
  %9691 = extractvalue %dx.types.CBufRet.f32 %9573, 3
  %9692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9693 = extractvalue %dx.types.CBufRet.f32 %9692, 0
  %9694 = extractvalue %dx.types.CBufRet.f32 %9692, 1
  %9695 = extractvalue %dx.types.CBufRet.f32 %9692, 2
  %9696 = extractvalue %dx.types.CBufRet.f32 %9692, 3
  %9697 = fsub fast float %9693, %9685
  %9698 = fsub fast float %9694, %9686
  %9699 = fsub fast float %9695, %9687
  %9700 = fsub fast float %9696, %9688
  %9701 = fmul fast float %9697, %9691
  %9702 = fmul fast float %9698, %9691
  %9703 = fmul fast float %9699, %9691
  %9704 = fmul fast float %9700, %9691
  %9705 = fadd fast float %9701, %9685
  %9706 = fadd fast float %9702, %9686
  %9707 = fsub fast float -0.000000e+00, %9706
  %9708 = fadd fast float %9703, %9687
  %9709 = fadd fast float %9704, %9688
  %9710 = fmul fast float %9705, %9705
  %9711 = fsub fast float %9706, %9710
  %9712 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9711)  ; FMax(a,b)
  %9713 = fdiv fast float 1.000000e+00, %9712
  %9714 = fmul fast float %9706, %9705
  %9715 = fsub fast float %9708, %9714
  %9716 = fsub fast float %9665, %9705
  %9717 = fmul fast float %9665, %9665
  %9718 = fsub fast float %9717, %9706
  %9719 = fmul fast float %9716, %9713
  %9720 = fmul fast float %9719, %9715
  %9721 = fsub fast float %9718, %9720
  %9722 = fmul fast float %9706, %9706
  %9723 = fsub fast float %9709, %9722
  %9724 = fmul fast float %9715, %9715
  %9725 = fmul fast float %9724, %9713
  %9726 = fsub fast float %9723, %9725
  %9727 = fdiv fast float %9721, %9726
  %9728 = fmul fast float %9715, %9727
  %9729 = fsub fast float %9716, %9728
  %9730 = fmul fast float %9729, %9713
  %9731 = fmul fast float %9730, %9705
  %9732 = fsub fast float 1.000000e+00, %9731
  %9733 = fmul fast float %9706, %9727
  %9734 = fsub fast float %9732, %9733
  %9735 = fmul fast float %9730, %9730
  %9736 = fmul fast float %9727, 4.000000e+00
  %9737 = fmul fast float %9736, %9734
  %9738 = fsub fast float %9735, %9737
  %9739 = call float @dx.op.unary.f32(i32 24, float %9738)  ; Sqrt(value)
  %9740 = fcmp fast oge float %9730, 0.000000e+00
  %9741 = fsub fast float -0.000000e+00, %9739
  %9742 = select i1 %9740, float %9741, float %9739
  %9743 = fsub fast float %9742, %9730
  %9744 = fdiv fast float %9743, %9727
  %9745 = fdiv fast float %9734, %9743
  %9746 = fmul fast float %9744, 5.000000e-01
  %9747 = fmul fast float %9745, 2.000000e+00
  %9748 = select i1 %9740, float %9746, float %9747
  %9749 = select i1 %9740, float %9747, float %9746
  %9750 = call float @dx.op.binary.f32(i32 35, float %9748, float %9749)  ; FMax(a,b)
  %9751 = call float @dx.op.binary.f32(i32 36, float %9748, float %9749)  ; FMin(a,b)
  %9752 = fcmp fast ogt float %9665, %9751
  br i1 %9752, label %9753, label %9763

; <label>:9753                                    ; preds = %9690
  %9754 = fsub fast float %9665, %9751
  %9755 = fsub fast float %9750, %9751
  %9756 = fmul fast float %9754, %9755
  %9757 = fmul fast float %9750, %9665
  %9758 = fadd fast float %9750, %9665
  %9759 = fmul fast float %9758, %9705
  %9760 = fadd fast float %9757, %9706
  %9761 = fsub fast float %9760, %9759
  %9762 = fdiv fast float %9761, %9756
  br label %9763

; <label>:9763                                    ; preds = %9753, %9690
  %9764 = phi float [ %9762, %9753 ], [ 0.000000e+00, %9690 ]
  %9765 = fcmp fast ogt float %9665, %9750
  %9766 = fsub fast float %9665, %9750
  br i1 %9765, label %9767, label %9777

; <label>:9767                                    ; preds = %9763
  %9768 = fsub fast float %9750, %9751
  %9769 = fmul fast float %9768, %9766
  %9770 = fmul fast float %9751, %9665
  %9771 = fadd fast float %9751, %9665
  %9772 = fmul fast float %9771, %9705
  %9773 = fsub fast float %9707, %9770
  %9774 = fadd fast float %9773, %9772
  %9775 = fdiv fast float %9774, %9769
  %9776 = fadd fast float %9775, %9764
  br label %9777

; <label>:9777                                    ; preds = %9767, %9763
  %9778 = phi float [ %9776, %9767 ], [ %9764, %9763 ]
  %9779 = fsub fast float %9665, %9751
  %9780 = fmul fast float %9779, %9766
  %9781 = fmul fast float %9751, %9750
  %9782 = fadd fast float %9751, %9750
  %9783 = fmul fast float %9782, %9705
  %9784 = fadd fast float %9781, %9706
  %9785 = fsub fast float %9784, %9783
  %9786 = fdiv fast float %9785, %9780
  %9787 = call float @dx.op.unary.f32(i32 7, float %9778)  ; Saturate(value)
  %9788 = fcmp fast oeq float %8456, 0.000000e+00
  %9789 = extractvalue %dx.types.CBufRet.f32 %9573, 0
  %9790 = fcmp fast oeq float %9789, 0.000000e+00
  %9791 = or i1 %9788, %9790
  %9792 = fmul fast float %9789, 2.000000e+00
  %9793 = fadd fast float %9574, %9575
  %9794 = fdiv fast float %9793, %9792
  %9795 = call float @dx.op.unary.f32(i32 7, float %9794)  ; Saturate(value)
  %9796 = fmul fast float %9795, 2.000000e+00
  %9797 = fsub fast float 3.000000e+00, %9796
  %9798 = fmul fast float %9795, %9795
  %9799 = fmul fast float %9798, %9797
  %9800 = select i1 %9791, float 1.000000e+00, float %9799
  %9801 = fmul fast float %9786, %8456
  %9802 = fadd fast float %9787, %9801
  %9803 = call float @dx.op.unary.f32(i32 7, float %9802)  ; Saturate(value)
  %9804 = fmul fast float %9800, %9803
  br label %9805

; <label>:9805                                    ; preds = %9777, %9657
  %9806 = phi float [ %9804, %9777 ], [ 0.000000e+00, %9657 ]
  %9807 = fsub fast float 1.000000e+00, %9806
  %9808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %56, float %9527, float %9528, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9809 = extractvalue %dx.types.ResRet.f32 %9808, 0
  %9810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9811 = extractvalue %dx.types.CBufRet.i32 %9810, 2
  %9812 = icmp eq i32 %9811, 0
  br i1 %9812, label %9818, label %9813

; <label>:9813                                    ; preds = %9805
  %9814 = call float @dx.op.unary.f32(i32 7, float %9806)  ; Saturate(value)
  %9815 = fadd fast float %9809, -1.000000e+00
  %9816 = fmul fast float %9814, %9815
  %9817 = fadd fast float %9816, 1.000000e+00
  br label %9818

; <label>:9818                                    ; preds = %9813, %9805
  %9819 = phi float [ %9817, %9813 ], [ %9807, %9805 ]
  br i1 %9581, label %9820, label %9838

; <label>:9820                                    ; preds = %9818
  %9821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9822 = extractvalue %dx.types.CBufRet.f32 %9821, 1
  %9823 = fsub fast float %9658, %9822
  %9824 = call float @dx.op.unary.f32(i32 7, float %9823)  ; Saturate(value)
  %9825 = fsub fast float %9658, %9580
  %9826 = call float @dx.op.unary.f32(i32 7, float %9825)  ; Saturate(value)
  %9827 = fsub fast float %9824, %9826
  %9828 = fsub fast float %9660, %9826
  %9829 = fdiv fast float %9828, %9827
  %9830 = call float @dx.op.unary.f32(i32 7, float %9829)  ; Saturate(value)
  %9831 = fmul fast float %9830, 2.000000e+00
  %9832 = fsub fast float 3.000000e+00, %9831
  %9833 = fsub fast float %9809, %9819
  %9834 = fmul fast float %9830, %9830
  %9835 = fmul fast float %9834, %9833
  %9836 = fmul fast float %9835, %9832
  %9837 = fadd fast float %9836, %9819
  br label %9838

; <label>:9838                                    ; preds = %9820, %9818
  %9839 = phi float [ %9837, %9820 ], [ %9819, %9818 ]
  %9840 = call float @dx.op.binary.f32(i32 35, float %9809, float %9839)  ; FMax(a,b)
  %9841 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9842 = extractvalue %dx.types.CBufRet.i32 %9841, 2
  %9843 = and i32 %9842, 1
  %9844 = icmp eq i32 %9843, 0
  %9845 = fcmp fast une float %9840, 1.000000e+00
  %9846 = and i1 %9845, %9844
  br i1 %9846, label %9847, label %9866

; <label>:9847                                    ; preds = %9838
  %9848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %56, float %9527, float %9528, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9849 = extractvalue %dx.types.ResRet.f32 %9848, 0
  %9850 = extractvalue %dx.types.ResRet.f32 %9848, 1
  %9851 = extractvalue %dx.types.ResRet.f32 %9848, 2
  %9852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9853 = extractvalue %dx.types.CBufRet.f32 %9852, 1
  %9854 = fmul fast float %9853, %9849
  %9855 = fmul fast float %9853, %9850
  %9856 = fmul fast float %9853, %9851
  %9857 = fcmp fast ogt float %9809, 0x3FEFFF2E40000000
  %9858 = fsub fast float 1.000000e+00, %9840
  %9859 = fsub fast float 1.000000e+00, %9809
  %9860 = fdiv fast float %9858, %9859
  %9861 = call float @dx.op.unary.f32(i32 7, float %9860)  ; Saturate(value)
  %9862 = select i1 %9857, float 0.000000e+00, float %9861
  %9863 = fmul fast float %9854, %9862
  %9864 = fmul fast float %9855, %9862
  %9865 = fmul fast float %9856, %9862
  br label %9866

; <label>:9866                                    ; preds = %9847, %9838
  %9867 = phi float [ 0.000000e+00, %9838 ], [ %9863, %9847 ]
  %9868 = phi float [ 0.000000e+00, %9838 ], [ %9864, %9847 ]
  %9869 = phi float [ 0.000000e+00, %9838 ], [ %9865, %9847 ]
  %9870 = fmul fast float %9867, %8444
  %9871 = fmul fast float %9868, %8444
  %9872 = fmul fast float %9869, %8444
  %9873 = fmul fast float %9840, %9502
  %9874 = call float @dx.op.dot3.f32(i32 55, float %9840, float %9840, float %9840, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9875 = call float @dx.op.dot3.f32(i32 55, float %9870, float %9871, float %9872, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9876 = select i1 %277, float %9874, float %9840
  %9877 = select i1 %277, float 1.000000e+00, float %9840
  %9878 = select i1 %277, float %9875, float %9870
  %9879 = select i1 %277, float 0.000000e+00, float %9871
  %9880 = select i1 %277, float 0.000000e+00, float %9872
  %9881 = fmul fast float %9876, %9514
  %9882 = fmul fast float %9876, %9515
  %9883 = fmul fast float %9877, %9516
  %9884 = fadd fast float %9881, %9878
  %9885 = fadd fast float %9882, %9879
  %9886 = fadd fast float %9880, %9883
  %9887 = fmul fast float %9876, %9517
  %9888 = fmul fast float %9876, %9518
  %9889 = fmul fast float %9877, %9519
  br label %9890

; <label>:9890                                    ; preds = %9866, %9523, %9492, %8724
  %9891 = phi float [ %8729, %8724 ], [ %9514, %9492 ], [ %9884, %9866 ], [ %9514, %9523 ]
  %9892 = phi float [ %8730, %8724 ], [ %9515, %9492 ], [ %9885, %9866 ], [ %9515, %9523 ]
  %9893 = phi float [ %8731, %8724 ], [ %9516, %9492 ], [ %9886, %9866 ], [ %9516, %9523 ]
  %9894 = phi float [ %8732, %8724 ], [ %9517, %9492 ], [ %9887, %9866 ], [ %9517, %9523 ]
  %9895 = phi float [ %8733, %8724 ], [ %9518, %9492 ], [ %9888, %9866 ], [ %9518, %9523 ]
  %9896 = phi float [ %8734, %8724 ], [ %9519, %9492 ], [ %9889, %9866 ], [ %9519, %9523 ]
  %9897 = phi float [ %8735, %8724 ], [ %9502, %9492 ], [ %9873, %9866 ], [ %9502, %9523 ]
  %9898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9899 = extractvalue %dx.types.CBufRet.f32 %9898, 2
  %9900 = extractvalue %dx.types.CBufRet.f32 %9898, 3
  %9901 = fmul fast float %9899, %118
  %9902 = fmul fast float %9900, %119
  %9903 = call float @dx.op.unary.f32(i32 7, float %9901)  ; Saturate(value)
  %9904 = call float @dx.op.unary.f32(i32 7, float %9902)  ; Saturate(value)
  %9905 = select i1 %8466, i32 2, i32 0
  %9906 = or i32 %9905, 1
  %9907 = uitofp i32 %9906 to float
  %9908 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %9903, float %9904, float %9907, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9909 = extractvalue %dx.types.ResRet.f32 %9908, 0
  %9910 = extractvalue %dx.types.ResRet.f32 %9908, 1
  %9911 = extractvalue %dx.types.ResRet.f32 %9908, 2
  %9912 = extractvalue %dx.types.ResRet.f32 %9908, 3
  %9913 = add nuw nsw i32 %9905, 2
  %9914 = uitofp i32 %9913 to float
  %9915 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %9903, float %9904, float %9914, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9916 = extractvalue %dx.types.ResRet.f32 %9915, 0
  %9917 = extractvalue %dx.types.ResRet.f32 %9915, 1
  %9918 = extractvalue %dx.types.ResRet.f32 %9915, 2
  %9919 = extractvalue %dx.types.ResRet.f32 %9915, 3
  %9920 = call float @dx.op.binary.f32(i32 35, float %9910, float %9911)  ; FMax(a,b)
  %9921 = call float @dx.op.binary.f32(i32 35, float %9909, float %9920)  ; FMax(a,b)
  %9922 = call float @dx.op.binary.f32(i32 35, float %9921, float %9912)  ; FMax(a,b)
  %9923 = call float @dx.op.binary.f32(i32 36, float %9917, float %9918)  ; FMin(a,b)
  %9924 = call float @dx.op.binary.f32(i32 36, float %9916, float %9923)  ; FMin(a,b)
  %9925 = call float @dx.op.binary.f32(i32 36, float %9924, float %9919)  ; FMin(a,b)
  %9926 = fmul fast float %9922, 2.550000e+02
  %9927 = fadd fast float %9926, 0x3F70101020000000
  %9928 = fptoui float %9927 to i32
  %9929 = fmul fast float %9925, 2.550000e+02
  %9930 = fadd fast float %9929, 0x3F70101020000000
  %9931 = fptoui float %9930 to i32
  %9932 = icmp ult i32 %9928, %9931
  br i1 %9932, label %9933, label %10102

; <label>:9933                                    ; preds = %9890
  %9934 = fcmp fast ogt float %104, 9.843750e-01
  %9935 = fadd fast float %8728, -4.000000e+00
  %9936 = select i1 %9934, float -4.000000e+00, float %9935
  %9937 = call float @dx.op.binary.f32(i32 35, float %9936, float 0.000000e+00)  ; FMax(a,b)
  %9938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9939 = extractvalue %dx.types.CBufRet.f32 %9938, 0
  %9940 = fadd fast float %9939, %9937
  %9941 = extractvalue %dx.types.CBufRet.f32 %9938, 2
  %9942 = fmul fast float %9940, %9941
  %9943 = call float @dx.op.unary.f32(i32 23, float %9942)  ; Log(value)
  %9944 = extractvalue %dx.types.CBufRet.f32 %9938, 3
  %9945 = fmul fast float %9944, %9943
  %9946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9947 = extractvalue %dx.types.CBufRet.f32 %9946, 2
  %9948 = fmul fast float %9945, %9947
  %9949 = call float @dx.op.unary.f32(i32 7, float %9948)  ; Saturate(value)
  %9950 = uitofp i32 %9928 to float
  %9951 = uitofp i32 %9931 to float
  %9952 = fadd fast float %9950, 5.000000e-01
  %9953 = fadd fast float %9951, 5.000000e-01
  %9954 = fmul fast float %9947, %9952
  %9955 = fmul fast float %9947, %9953
  %9956 = fadd fast float %9954, 0x3F0FFB4800000000
  %9957 = fadd fast float %9955, 0xBF0FFB4800000000
  %9958 = call float @dx.op.binary.f32(i32 35, float %9949, float %9956)  ; FMax(a,b)
  %9959 = call float @dx.op.binary.f32(i32 36, float %9958, float %9957)  ; FMin(a,b)
  %9960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9961 = extractvalue %dx.types.CBufRet.f32 %9960, 1
  %9962 = extractvalue %dx.types.CBufRet.f32 %9960, 2
  %9963 = extractvalue %dx.types.CBufRet.f32 %9960, 0
  %9964 = select i1 %8466, float %9963, float 0.000000e+00
  %9965 = fmul fast float %9961, %9959
  %9966 = fadd fast float %9964, %9965
  %9967 = fadd fast float %9964, %9962
  %9968 = fsub fast float %9961, %9962
  %9969 = fadd fast float %9968, %9964
  %9970 = call float @dx.op.binary.f32(i32 35, float %9966, float %9967)  ; FMax(a,b)
  %9971 = call float @dx.op.binary.f32(i32 36, float %9970, float %9969)  ; FMin(a,b)
  %9972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %9903, float %9904, float %9971, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9973 = extractvalue %dx.types.ResRet.f32 %9972, 0
  %9974 = extractvalue %dx.types.ResRet.f32 %9972, 1
  %9975 = extractvalue %dx.types.ResRet.f32 %9972, 2
  %9976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9977 = extractvalue %dx.types.CBufRet.i32 %9976, 0
  %9978 = extractvalue %dx.types.CBufRet.i32 %9976, 1
  %9979 = uitofp i32 %9977 to float
  %9980 = uitofp i32 %9978 to float
  %9981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9982 = extractvalue %dx.types.CBufRet.f32 %9981, 0
  %9983 = extractvalue %dx.types.CBufRet.f32 %9981, 1
  %9984 = fmul fast float %9979, %9903
  %9985 = fmul fast float %9980, %9904
  %9986 = fadd fast float %9984, -5.000000e-01
  %9987 = fadd fast float %9985, -5.000000e-01
  %9988 = call float @dx.op.unary.f32(i32 22, float %9986)  ; Frc(value)
  %9989 = call float @dx.op.unary.f32(i32 22, float %9987)  ; Frc(value)
  %9990 = fmul fast float %9988, %9988
  %9991 = fmul fast float %9990, %9988
  %9992 = fsub fast float 3.000000e+00, %9988
  %9993 = fmul fast float %9990, %9992
  %9994 = fmul fast float %9988, 3.000000e+00
  %9995 = fmul fast float %9991, 3.000000e+00
  %9996 = fmul fast float %9990, 6.000000e+00
  %9997 = fsub fast float %9995, %9996
  %9998 = fadd fast float %9997, 4.000000e+00
  %9999 = fmul fast float %9998, 0x3FC5555560000000
  %10000 = fmul fast float %9991, -3.000000e+00
  %10001 = fadd fast float %9990, %9988
  %10002 = fmul fast float %10001, 3.000000e+00
  %10003 = fadd fast float %10000, 1.000000e+00
  %10004 = fadd fast float %10003, %10002
  %10005 = fmul fast float %9991, 0x3FC5555560000000
  %10006 = fmul fast float %9989, %9989
  %10007 = fmul fast float %10006, %9989
  %10008 = fsub fast float 3.000000e+00, %9989
  %10009 = fmul fast float %10006, %10008
  %10010 = fmul fast float %9989, 3.000000e+00
  %10011 = fmul fast float %10007, 3.000000e+00
  %10012 = fmul fast float %10006, 6.000000e+00
  %10013 = fsub fast float %10011, %10012
  %10014 = fadd fast float %10013, 4.000000e+00
  %10015 = fmul fast float %10014, 0x3FC5555560000000
  %10016 = fmul fast float %10007, -3.000000e+00
  %10017 = fadd fast float %10006, %9989
  %10018 = fmul fast float %10017, 3.000000e+00
  %10019 = fadd fast float %10016, 1.000000e+00
  %10020 = fadd fast float %10019, %10018
  %10021 = fmul fast float %10007, 0x3FC5555560000000
  %10022 = fadd fast float %9988, 1.000000e+00
  %10023 = fsub fast float 1.000000e+00, %9994
  %10024 = fadd fast float %10023, %9993
  %10025 = fadd fast float %10024, %9998
  %10026 = fmul fast float %10025, 0x3FC5555560000000
  %10027 = fdiv fast float %9999, %10026
  %10028 = fsub fast float %10022, %10027
  %10029 = fsub fast float 1.000000e+00, %9988
  %10030 = fadd fast float %10004, %9991
  %10031 = fmul fast float %10030, 0x3FC5555560000000
  %10032 = fdiv fast float %10005, %10031
  %10033 = fadd fast float %10029, %10032
  %10034 = fadd fast float %9989, 1.000000e+00
  %10035 = fsub fast float 1.000000e+00, %10010
  %10036 = fadd fast float %10035, %10009
  %10037 = fadd fast float %10036, %10014
  %10038 = fmul fast float %10037, 0x3FC5555560000000
  %10039 = fdiv fast float %10015, %10038
  %10040 = fsub fast float %10034, %10039
  %10041 = fsub fast float 1.000000e+00, %9989
  %10042 = fadd fast float %10020, %10007
  %10043 = fmul fast float %10042, 0x3FC5555560000000
  %10044 = fdiv fast float %10021, %10043
  %10045 = fadd fast float %10044, %10041
  %10046 = fmul fast float %10028, %9982
  %10047 = fsub fast float %9903, %10046
  %10048 = fmul fast float %10033, %9982
  %10049 = fadd fast float %10048, %9903
  %10050 = fmul fast float %10045, %9983
  %10051 = fadd fast float %10050, %9904
  %10052 = fmul fast float %10040, %9983
  %10053 = fsub fast float %9904, %10052
  %10054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10047, float %10053, float %9971, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10055 = extractvalue %dx.types.ResRet.f32 %10054, 0
  %10056 = extractvalue %dx.types.ResRet.f32 %10054, 1
  %10057 = extractvalue %dx.types.ResRet.f32 %10054, 2
  %10058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10049, float %10053, float %9971, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10059 = extractvalue %dx.types.ResRet.f32 %10058, 0
  %10060 = extractvalue %dx.types.ResRet.f32 %10058, 1
  %10061 = extractvalue %dx.types.ResRet.f32 %10058, 2
  %10062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10047, float %10051, float %9971, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10063 = extractvalue %dx.types.ResRet.f32 %10062, 0
  %10064 = extractvalue %dx.types.ResRet.f32 %10062, 1
  %10065 = extractvalue %dx.types.ResRet.f32 %10062, 2
  %10066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10049, float %10051, float %9971, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10067 = extractvalue %dx.types.ResRet.f32 %10066, 0
  %10068 = extractvalue %dx.types.ResRet.f32 %10066, 1
  %10069 = extractvalue %dx.types.ResRet.f32 %10066, 2
  %10070 = fsub fast float %10063, %10055
  %10071 = fsub fast float %10064, %10056
  %10072 = fsub fast float %10065, %10057
  %10073 = fmul fast float %10070, %10043
  %10074 = fmul fast float %10071, %10043
  %10075 = fmul fast float %10072, %10043
  %10076 = fadd fast float %10073, %10055
  %10077 = fadd fast float %10074, %10056
  %10078 = fadd fast float %10075, %10057
  %10079 = fsub fast float %10067, %10059
  %10080 = fsub fast float %10068, %10060
  %10081 = fsub fast float %10069, %10061
  %10082 = fmul fast float %10079, %10043
  %10083 = fmul fast float %10080, %10043
  %10084 = fmul fast float %10081, %10043
  %10085 = fsub fast float %10059, %10076
  %10086 = fadd fast float %10085, %10082
  %10087 = fsub fast float %10060, %10077
  %10088 = fadd fast float %10087, %10083
  %10089 = fsub fast float %10061, %10078
  %10090 = fadd fast float %10089, %10084
  %10091 = fmul fast float %10086, %10031
  %10092 = fmul fast float %10088, %10031
  %10093 = fmul fast float %10090, %10031
  %10094 = fadd fast float %10091, %10076
  %10095 = fadd fast float %10092, %10077
  %10096 = fadd fast float %10093, %10078
  %10097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10098 = extractvalue %dx.types.CBufRet.f32 %10097, 1
  %10099 = fmul fast float %10094, %10098
  %10100 = fmul fast float %10095, %10098
  %10101 = fmul fast float %10096, %10098
  br label %10102

; <label>:10102                                   ; preds = %9933, %9890
  %10103 = phi float [ %9973, %9933 ], [ 1.000000e+00, %9890 ]
  %10104 = phi float [ %9974, %9933 ], [ 1.000000e+00, %9890 ]
  %10105 = phi float [ %9975, %9933 ], [ 1.000000e+00, %9890 ]
  %10106 = phi float [ %10099, %9933 ], [ 0.000000e+00, %9890 ]
  %10107 = phi float [ %10100, %9933 ], [ 0.000000e+00, %9890 ]
  %10108 = phi float [ %10101, %9933 ], [ 0.000000e+00, %9890 ]
  %10109 = fmul fast float %10106, %8444
  %10110 = fmul fast float %10107, %8444
  %10111 = fmul fast float %10108, %8444
  %10112 = fmul fast float %10103, %9897
  %10113 = call float @dx.op.dot3.f32(i32 55, float %10103, float %10104, float %10105, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10114 = call float @dx.op.dot3.f32(i32 55, float %10109, float %10110, float %10111, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10115 = select i1 %277, float %10113, float %10103
  %10116 = select i1 %277, float %10113, float %10104
  %10117 = select i1 %277, float 1.000000e+00, float %10105
  %10118 = select i1 %277, float %10114, float %10109
  %10119 = select i1 %277, float 0.000000e+00, float %10110
  %10120 = select i1 %277, float 0.000000e+00, float %10111
  %10121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10122 = extractvalue %dx.types.CBufRet.i32 %10121, 3
  %10123 = and i32 %10122, 3
  %10124 = icmp ne i32 %10123, 0
  %10125 = and i32 %10122, 4
  %10126 = icmp ne i32 %10125, 0
  %10127 = and i1 %10124, %10126
  %10128 = and i1 %277, %10127
  br i1 %10128, label %10129, label %10135

; <label>:10129                                   ; preds = %10102
  %10130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10131 = extractvalue %dx.types.CBufRet.f32 %10130, 1
  %10132 = fadd fast float %10112, -1.000000e+00
  %10133 = fmul fast float %10131, %10132
  %10134 = fadd fast float %10133, 1.000000e+00
  br label %10135

; <label>:10135                                   ; preds = %10129, %10102
  %10136 = phi float [ %10134, %10129 ], [ %10112, %10102 ]
  %10137 = fadd fast float %9894, %9891
  %10138 = fmul fast float %10115, %10137
  %10139 = fadd fast float %10138, %10118
  %10140 = fadd fast float %9895, %9892
  %10141 = fmul fast float %10116, %10140
  %10142 = fadd fast float %10141, %10119
  %10143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10144 = extractvalue %dx.types.CBufRet.f32 %10143, 0
  br i1 %277, label %10145, label %10169

; <label>:10145                                   ; preds = %10135
  %10146 = fadd fast float %10139, %10142
  %10147 = fmul fast float %10144, %10146
  %10148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10149 = extractvalue %dx.types.CBufRet.f32 %10148, 3
  %10150 = extractvalue %dx.types.CBufRet.f32 %8448, 1
  %10151 = fsub fast float %8453, %8447
  %10152 = fadd fast float %10151, %8454
  %10153 = fsub fast float %10152, %10150
  %10154 = extractvalue %dx.types.CBufRet.f32 %8448, 2
  %10155 = fmul fast float %10153, %10154
  %10156 = call float @dx.op.unary.f32(i32 7, float %10155)  ; Saturate(value)
  %10157 = fsub fast float %10156, %10149
  %10158 = fmul fast float %10157, %10136
  %10159 = fadd fast float %10158, %10149
  %10160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10161 = extractvalue %dx.types.CBufRet.f32 %10160, 0
  %10162 = fsub fast float %10159, %10161
  %10163 = fmul fast float %10162, 1.000000e+01
  %10164 = call float @dx.op.unary.f32(i32 7, float %10163)  ; Saturate(value)
  %10165 = fsub fast float %4110, %8444
  %10166 = fmul fast float %10164, %10165
  %10167 = fadd fast float %10166, %8444
  %10168 = fmul fast float %10167, %10159
  br label %10193

; <label>:10169                                   ; preds = %10135
  %10170 = fadd fast float %9896, %9893
  %10171 = fmul fast float %10117, %10170
  %10172 = fadd fast float %10171, %10120
  %10173 = fmul fast float %10144, %10139
  %10174 = fmul fast float %10144, %10142
  %10175 = fmul fast float %10144, %10172
  %10176 = call float @dx.op.binary.f32(i32 35, float %10174, float %10175)  ; FMax(a,b)
  %10177 = call float @dx.op.binary.f32(i32 35, float %10173, float %10176)  ; FMax(a,b)
  %10178 = call float @dx.op.binary.f32(i32 35, float %10177, float %8444)  ; FMax(a,b)
  %10179 = fcmp fast ugt float %10178, 0x3F10000000000000
  br i1 %10179, label %10181, label %10180

; <label>:10180                                   ; preds = %10169
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10181

; <label>:10181                                   ; preds = %10180, %10169
  %10182 = add i32 %62, 356
  %10183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %10182, i32 undef)  ; BufferLoad(srv,index,wot)
  %10184 = extractvalue %dx.types.ResRet.i32 %10183, 0
  %10185 = and i32 %10184, 32
  %10186 = icmp eq i32 %10185, 0
  br i1 %10186, label %10193, label %10187

; <label>:10187                                   ; preds = %10181
  %10188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10189 = extractvalue %dx.types.CBufRet.f32 %10188, 0
  %10190 = fmul fast float %10189, 0x3FE99999A0000000
  %10191 = fadd fast float %10189, %10173
  %10192 = fadd fast float %10190, %10175
  br label %10193

; <label>:10193                                   ; preds = %10187, %10181, %10145
  %10194 = phi float [ %10147, %10145 ], [ %10191, %10187 ], [ %10173, %10181 ]
  %10195 = phi float [ %10168, %10145 ], [ %10174, %10187 ], [ %10174, %10181 ]
  %10196 = phi float [ %10167, %10145 ], [ %10192, %10187 ], [ %10175, %10181 ]
  %10197 = phi float [ %10167, %10145 ], [ %8444, %10187 ], [ %8444, %10181 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10198 = call float @dx.op.binary.f32(i32 36, float %10194, float 3.225500e+04)  ; FMin(a,b)
  %10199 = call float @dx.op.binary.f32(i32 36, float %10195, float 3.225500e+04)  ; FMin(a,b)
  %10200 = call float @dx.op.binary.f32(i32 36, float %10196, float 3.225500e+04)  ; FMin(a,b)
  %10201 = call float @dx.op.binary.f32(i32 36, float %10197, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10198)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10199)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10200)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10201)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!75}
!dx.entryPoints = !{!76}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !64, !67}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!32 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!33 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!34 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!35 = !{i32 28, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !36}
!36 = !{i32 0, i32 5}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!43 = !{i32 35, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!44 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!47 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!48 = !{i32 40, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !49}
!49 = !{i32 0, i32 14}
!50 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!51 = !{i32 42, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!54 = !{i32 45, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!55 = !{i32 46, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!56 = !{i32 47, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!57 = !{i32 48, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!58 = !{i32 49, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!59 = !{i32 50, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!60 = !{i32 51, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!61 = !{i32 52, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !49}
!62 = !{i32 53, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!63 = !{i32 54, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!64 = !{!65, !66}
!65 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!66 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!67 = !{!68, !69, !70, !71, !72, !73, !74}
!68 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!69 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!70 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!71 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!72 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!73 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!74 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!75 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0]}
!76 = !{void ()* @ps_main, !"ps_main", !77, !4, !102}
!77 = !{!78, !100, null}
!78 = !{!79, !82, !83, !85, !87, !88, !89, !90, !91, !92, !93, !94, !95, !97, !98, !99}
!79 = !{i32 0, !"SV_Position", i8 9, i8 3, !80, i8 4, i32 1, i8 4, i32 0, i8 0, !81}
!80 = !{i32 0}
!81 = !{i32 3, i32 15}
!82 = !{i32 1, !"COLOR", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 1, i8 0, !81}
!83 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 2, i8 0, !84}
!84 = !{i32 3, i32 3}
!85 = !{i32 3, !"NORMAL", i8 9, i8 0, !80, i8 2, i32 1, i8 3, i32 3, i8 0, !86}
!86 = !{i32 3, i32 7}
!87 = !{i32 4, !"TANGENT", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 4, i8 0, !81}
!88 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !80, i8 2, i32 1, i8 3, i32 5, i8 0, !86}
!89 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 6, i8 0, !81}
!90 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !80, i8 2, i32 1, i8 3, i32 7, i8 0, !86}
!91 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 8, i8 0, !81}
!92 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !80, i8 2, i32 1, i8 2, i32 9, i8 0, !84}
!93 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 10, i8 0, !81}
!94 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 11, i8 0, !86}
!95 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !80, i8 1, i32 1, i8 1, i32 12, i8 0, !96}
!96 = !{i32 3, i32 1}
!97 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !80, i8 1, i32 1, i8 2, i32 12, i8 1, !84}
!98 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !80, i8 1, i32 1, i8 4, i32 13, i8 0, !96}
!99 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !80, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!100 = !{!101}
!101 = !{i32 0, !"SV_Target", i8 9, i8 16, !80, i8 0, i32 1, i8 4, i32 0, i8 0, !81}
!102 = !{i32 0, i64 16}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !105}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = !{!112, !112, i64 0}
!112 = !{!"int", !113, i64 0}
!113 = !{!"omnipotent char", !114, i64 0}
!114 = !{!"Simple C/C++ TBAA"}
!115 = !{!116, !118, !120, !122}
!116 = distinct !{!116, !117, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!117 = distinct !{!117, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!118 = distinct !{!118, !119, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!119 = distinct !{!119, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!120 = distinct !{!120, !121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!121 = distinct !{!121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!122 = distinct !{!122, !123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!123 = distinct !{!123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = !{!126, !126, i64 0}
!126 = !{!"float", !113, i64 0}
!127 = distinct !{!127, !105}
!128 = distinct !{!128, !105}
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
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = !{!141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!141 = distinct !{!141, !142, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!142 = distinct !{!142, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!143 = distinct !{!143, !144, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!144 = distinct !{!144, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!145 = distinct !{!145, !144, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!146 = distinct !{!146, !147, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!147 = distinct !{!147, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!148 = distinct !{!148, !147, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!149 = distinct !{!149, !147, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!150 = distinct !{!150, !151, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!151 = distinct !{!151, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!152 = distinct !{!152, !151, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!153 = distinct !{!153, !151, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!154 = distinct !{!154, !155, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!155 = distinct !{!155, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"\01?sort@@YAXAIAM00@Z: %c"}
!158 = distinct !{!158, !"\01?sort@@YAXAIAM00@Z"}
!159 = !{!160, !161, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!160 = distinct !{!160, !158, !"\01?sort@@YAXAIAM00@Z: %a"}
!161 = distinct !{!161, !158, !"\01?sort@@YAXAIAM00@Z: %b"}
!162 = !{!161}
!163 = !{!160, !157, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!164 = !{!160}
!165 = !{!161, !157, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!166 = !{!167}
!167 = distinct !{!167, !168, !"\01?sort@@YAXAIAM00@Z: %c"}
!168 = distinct !{!168, !"\01?sort@@YAXAIAM00@Z"}
!169 = !{!170, !171, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!170 = distinct !{!170, !168, !"\01?sort@@YAXAIAM00@Z: %a"}
!171 = distinct !{!171, !168, !"\01?sort@@YAXAIAM00@Z: %b"}
!172 = !{!171}
!173 = !{!170, !167, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!174 = !{!170}
!175 = !{!171, !167, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 2}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 1}

