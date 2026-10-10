;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; COMP_FACTOR              0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyzw
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
; shader hash: e8585d75132ff580c3fad817ed703fb9
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
; COMP_FACTOR              0                 linear       
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
;                                   texture     f32          2d     T55             t1     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 55, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = alloca [4 x i32], align 4
  %63 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = fmul fast float %120, %105
  %122 = fmul fast float %120, %106
  %123 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %124 = bitcast float %123 to i32
  %125 = ashr i32 %124, 1
  %126 = sub nsw i32 1597250115, %125
  %127 = bitcast i32 %126 to float
  %128 = fmul fast float %127, %96
  %129 = fmul fast float %127, %97
  %130 = fmul fast float %127, %98
  %131 = fmul fast float %97, %94
  %132 = fmul fast float %98, %93
  %133 = fsub fast float %131, %132
  %134 = fmul fast float %98, %92
  %135 = fmul fast float %96, %94
  %136 = fsub fast float %134, %135
  %137 = fmul fast float %96, %93
  %138 = fmul fast float %97, %92
  %139 = fsub fast float %137, %138
  %140 = fmul fast float %133, %95
  %141 = fmul fast float %136, %95
  %142 = fmul fast float %139, %95
  %143 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %144 = bitcast float %143 to i32
  %145 = ashr i32 %144, 1
  %146 = sub nsw i32 1597250115, %145
  %147 = bitcast i32 %146 to float
  %148 = fmul fast float %147, %85
  %149 = fmul fast float %147, %86
  %150 = fmul fast float %147, %87
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = fcmp fast une float %152, 0.000000e+00
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 3
  %157 = fmul fast float %121, 2.000000e+00
  %158 = fmul fast float %157, %155
  %159 = fmul fast float %122, 2.000000e+00
  %160 = fmul fast float %159, %156
  %161 = fsub fast float 1.000000e+00, %158
  %162 = fsub fast float 1.000000e+00, %160
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %166 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %170 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %171 = select i1 %153, float %164, float %168
  %172 = select i1 %153, float %165, float %169
  %173 = select i1 %153, float %166, float %170
  %174 = fmul fast float %171, %161
  %175 = fmul fast float %172, %161
  %176 = fmul fast float %173, %161
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %180 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %185 = select i1 %153, float %178, float %182
  %186 = select i1 %153, float %179, float %183
  %187 = select i1 %153, float %180, float %184
  %188 = fmul fast float %185, %162
  %189 = fmul fast float %186, %162
  %190 = fmul fast float %187, %162
  %191 = fadd fast float %188, %174
  %192 = fadd fast float %189, %175
  %193 = fadd fast float %190, %176
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 0
  %196 = extractvalue %dx.types.CBufRet.f32 %194, 1
  %197 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 0
  %200 = extractvalue %dx.types.CBufRet.f32 %198, 1
  %201 = extractvalue %dx.types.CBufRet.f32 %198, 2
  %202 = select i1 %153, float %195, float %199
  %203 = select i1 %153, float %196, float %200
  %204 = select i1 %153, float %197, float %201
  %205 = fadd fast float %191, %202
  %206 = fadd fast float %192, %203
  %207 = fadd fast float %193, %204
  %208 = fmul fast float %205, %108
  %209 = fmul fast float %206, %108
  %210 = fmul fast float %207, %108
  %211 = shl i32 %64, 5
  %212 = add i32 %211, 4194304
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = extractvalue %dx.types.ResRet.i32 %213, 1
  %216 = extractvalue %dx.types.ResRet.i32 %213, 2
  %217 = extractvalue %dx.types.ResRet.i32 %213, 3
  %218 = add i32 %211, 4194320
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = bitcast i32 %220 to float
  %222 = fmul fast float %121, 5.000000e-01
  %223 = fmul fast float %122, 5.000000e-01
  %224 = fptosi float %222 to i32
  %225 = fptosi float %223 to i32
  %226 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %28, i32 0, i32 %224, i32 %225, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = lshr i32 %227, 18
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %229, 0x3F4C00EBA0000000
  %231 = call float @dx.op.unary.f32(i32 21, float %230)  ; Exp(value)
  %232 = fadd fast float %231, -1.000000e+00
  %233 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %28, i32 0)  ; GetDimensions(handle,mipLevel)
  %234 = extractvalue %dx.types.Dimensions %233, 0
  %235 = sitofp i32 %234 to float
  %236 = extractvalue %dx.types.Dimensions %233, 1
  %237 = sitofp i32 %236 to float
  %238 = fcmp fast oge float %222, %235
  %239 = fcmp fast oge float %223, %237
  %240 = or i1 %238, %239
  %241 = select i1 %240, float 0x4197782600000000, float %232
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %244 = extractvalue %dx.types.CBufRet.f32 %242, 3
  %245 = fmul fast float %243, %121
  %246 = fmul fast float %244, %122
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = and i32 %248, 114688
  %250 = icmp ne i32 %249, 0
  %251 = select i1 %250, float %245, float 0.000000e+00
  %252 = select i1 %250, float %246, float 0.000000e+00
  %253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %58, float %251, float %252, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = fmul fast float %254, 2.550000e+02
  %256 = fptoui float %255 to i32
  %257 = select i1 %250, i32 %256, i32 0
  %258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.i32 %258, 3
  %260 = and i32 %259, 3
  %261 = icmp ne i32 %260, 0
  %262 = and i32 %259, 4
  %263 = icmp ne i32 %262, 0
  %264 = and i1 %261, %263
  br i1 %264, label %265, label %274

; <label>:265                                     ; preds = %0
  %266 = fmul fast float %156, %122
  %267 = fmul fast float %155, %121
  %268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %57, float %267, float %266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = fsub fast float 1.000000e+00, %269
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 0
  %273 = fcmp fast olt float %270, %272
  br label %277

; <label>:274                                     ; preds = %0
  %275 = icmp eq i32 %262, 0
  %276 = and i1 %261, %275
  br label %277

; <label>:277                                     ; preds = %274, %265
  %278 = phi i1 [ %273, %265 ], [ %276, %274 ]
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 2
  %281 = fmul fast float %280, 0x3FE3C6EF40000000
  %282 = frem fast float %121, 2.560000e+02
  %283 = frem fast float %122, 2.560000e+02
  %284 = fptoui float %282 to i32
  %285 = fptoui float %283 to i32
  %286 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %39, i32 0, i32 %284, i32 %285, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = fadd fast float %287, %281
  %289 = call float @dx.op.unary.f32(i32 22, float %288)  ; Frc(value)
  %290 = add i32 %63, 216
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = lshr i32 %292, 8
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = lshr i32 %292, 16
  %301 = and i32 %300, 255
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 0x3F70101020000000
  %304 = add i32 %63, 36
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = add i32 %63, 288
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = fmul fast float %315, 0x3F50624DE0000000
  %319 = fmul fast float %317, 0x3F50624DE0000000
  %320 = mul i32 %65, 100
  %321 = add i32 %320, 28
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = add i32 %63, 232
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = lshr i32 %326, 8
  %331 = and i32 %330, 255
  %332 = uitofp i32 %331 to float
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = lshr i32 %326, 16
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = add i32 %63, 52
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = and i32 %340, 65535
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %340, 16
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = add i32 %63, 304
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = add i32 %320, 48
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = shl i32 %354, 4
  %356 = and i32 %355, 32752
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %354, 7
  %359 = and i32 %358, 32752
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %354, 22
  %362 = shl nuw nsw i32 %361, 5
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = and i32 %323, 8
  %365 = icmp ne i32 %364, 0
  %366 = select i1 %365, float %357, float %329
  %367 = select i1 %365, float %360, float %333
  %368 = select i1 %365, float %363, float %337
  %369 = add i32 %320, 52
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 65535
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %371, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = and i32 %323, 2
  %377 = icmp ne i32 %376, 0
  %378 = select i1 %377, float %373, float %342
  %379 = select i1 %377, float %375, float %344
  %380 = add i32 %320, 56
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = and i32 %382, 65535
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = lshr i32 %382, 16
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = and i32 %323, 4
  %388 = icmp ne i32 %387, 0
  %389 = select i1 %388, float %384, float %349
  %390 = fmul float %389, 0x3F50624DE0000000
  %391 = select i1 %388, float %386, float %351
  %392 = fmul float %391, 0x3F50624DE0000000
  %393 = add i32 %320, 32
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = add i32 %63, 248
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 255
  %400 = uitofp i32 %399 to float
  %401 = fmul fast float %400, 0x3F70101020000000
  %402 = lshr i32 %398, 8
  %403 = and i32 %402, 255
  %404 = uitofp i32 %403 to float
  %405 = fmul fast float %404, 0x3F70101020000000
  %406 = lshr i32 %398, 16
  %407 = and i32 %406, 255
  %408 = uitofp i32 %407 to float
  %409 = fmul fast float %408, 0x3F70101020000000
  %410 = add i32 %63, 68
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 65535
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = lshr i32 %412, 16
  %416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %415)  ; LegacyF16ToF32(value)
  %417 = add i32 %63, 320
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 65535
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = lshr i32 %419, 16
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = add i32 %320, 68
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = shl i32 %426, 4
  %428 = and i32 %427, 32752
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = lshr i32 %426, 7
  %431 = and i32 %430, 32752
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = lshr i32 %426, 22
  %434 = shl nuw nsw i32 %433, 5
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = and i32 %395, 8
  %437 = icmp ne i32 %436, 0
  %438 = select i1 %437, float %429, float %401
  %439 = select i1 %437, float %432, float %405
  %440 = select i1 %437, float %435, float %409
  %441 = add i32 %320, 72
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 65535
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = lshr i32 %443, 16
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = and i32 %395, 2
  %449 = icmp ne i32 %448, 0
  %450 = select i1 %449, float %445, float %414
  %451 = select i1 %449, float %447, float %416
  %452 = add i32 %320, 76
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = and i32 %454, 65535
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = lshr i32 %454, 16
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = and i32 %395, 4
  %460 = icmp ne i32 %459, 0
  %461 = select i1 %460, float %456, float %421
  %462 = fmul float %461, 0x3F50624DE0000000
  %463 = select i1 %460, float %458, float %423
  %464 = fmul float %463, 0x3F50624DE0000000
  %465 = add i32 %320, 36
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = add i32 %63, 264
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, 255
  %472 = uitofp i32 %471 to float
  %473 = fmul fast float %472, 0x3F70101020000000
  %474 = lshr i32 %470, 8
  %475 = and i32 %474, 255
  %476 = uitofp i32 %475 to float
  %477 = fmul fast float %476, 0x3F70101020000000
  %478 = lshr i32 %470, 16
  %479 = and i32 %478, 255
  %480 = uitofp i32 %479 to float
  %481 = fmul fast float %480, 0x3F70101020000000
  %482 = add i32 %63, 84
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = and i32 %484, 65535
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = lshr i32 %484, 16
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = add i32 %63, 336
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = and i32 %491, 65535
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = lshr i32 %491, 16
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = add i32 %320, 88
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = shl i32 %498, 4
  %500 = and i32 %499, 32752
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = lshr i32 %498, 7
  %503 = and i32 %502, 32752
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = lshr i32 %498, 22
  %506 = shl nuw nsw i32 %505, 5
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = and i32 %467, 8
  %509 = icmp ne i32 %508, 0
  %510 = select i1 %509, float %501, float %473
  %511 = select i1 %509, float %504, float %477
  %512 = select i1 %509, float %507, float %481
  %513 = add i32 %320, 92
  %514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.i32 %514, 0
  %516 = and i32 %515, 65535
  %517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %516)  ; LegacyF16ToF32(value)
  %518 = lshr i32 %515, 16
  %519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %518)  ; LegacyF16ToF32(value)
  %520 = and i32 %467, 2
  %521 = icmp ne i32 %520, 0
  %522 = select i1 %521, float %517, float %486
  %523 = select i1 %521, float %519, float %488
  %524 = add i32 %320, 96
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = and i32 %526, 65535
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = lshr i32 %526, 16
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = and i32 %467, 4
  %532 = icmp ne i32 %531, 0
  %533 = select i1 %532, float %528, float %493
  %534 = fmul float %533, 0x3F50624DE0000000
  %535 = select i1 %532, float %530, float %495
  %536 = fmul float %535, 0x3F50624DE0000000
  %537 = add i32 %63, 348
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = and i32 %539, 32
  %541 = icmp eq i32 %540, 0
  %542 = and i32 %539, 64
  %543 = icmp eq i32 %542, 0
  %544 = and i32 %539, 128
  %545 = icmp eq i32 %544, 0
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = and i32 %547, 2
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %565, label %550

; <label>:550                                     ; preds = %277
  %551 = add i32 %63, 536
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = add i32 %553, 0
  %555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %554, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %556 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %555, %dx.types.Handle %118, float %99, float %100, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 0
  %558 = extractvalue %dx.types.ResRet.f32 %556, 1
  %559 = extractvalue %dx.types.ResRet.f32 %556, 2
  %560 = extractvalue %dx.types.ResRet.f32 %556, 3
  %561 = fmul fast float %560, %101
  %562 = fmul fast float %557, %102
  %563 = fmul fast float %558, %103
  %564 = fmul fast float %559, %104
  br label %565

; <label>:565                                     ; preds = %550, %277
  %566 = phi float [ %104, %277 ], [ %564, %550 ]
  %567 = phi float [ %103, %277 ], [ %563, %550 ]
  %568 = phi float [ %102, %277 ], [ %562, %550 ]
  %569 = phi float [ %101, %277 ], [ %561, %550 ]
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = and i32 %571, 2
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %593, label %574

; <label>:574                                     ; preds = %565
  %575 = add i32 %63, 44
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = and i32 %577, 1
  %579 = icmp ne i32 %578, 0
  %580 = select i1 %579, float %568, float 1.000000e+00
  %581 = add i32 %63, 60
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = and i32 %583, 1
  %585 = icmp ne i32 %584, 0
  %586 = select i1 %585, float %567, float 1.000000e+00
  %587 = add i32 %63, 76
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = and i32 %589, 1
  %591 = icmp ne i32 %590, 0
  %592 = select i1 %591, float %566, float 1.000000e+00
  br label %593

; <label>:593                                     ; preds = %574, %565
  %594 = phi float [ %566, %565 ], [ %592, %574 ]
  %595 = phi float [ %567, %565 ], [ %586, %574 ]
  %596 = phi float [ %568, %565 ], [ %580, %574 ]
  %597 = add i32 %63, 24
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = add i32 %63, 28
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = or i32 %602, %599
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %1068, label %605

; <label>:605                                     ; preds = %593
  %606 = and i32 %599, 262144
  %607 = icmp ne i32 %606, 0
  %608 = select i1 %607, float %71, float 1.000000e+00
  %609 = select i1 %607, float %72, float 0.000000e+00
  %610 = select i1 %607, float %73, float 0.000000e+00
  %611 = select i1 %607, float %74, float 1.000000e+00
  %612 = select i1 %607, float %75, float %99
  %613 = select i1 %607, float %76, float %100
  %614 = add i32 %63, 284
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = lshr i32 %616, 16
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = fmul fast float %618, 0x3F50624DE0000000
  %620 = add i32 %63, 88
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = lshr i32 %622, 16
  %624 = and i32 %623, 255
  %625 = lshr i32 %622, 24
  %626 = add i32 %63, 292
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = and i32 %628, 65535
  %630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %629)  ; LegacyF16ToF32(value)
  %631 = lshr i32 %628, 16
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = add i32 %63, 32
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = lshr i32 %635, 22
  %637 = shl nuw nsw i32 %636, 5
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = shl i32 %635, 4
  %640 = and i32 %639, 32752
  %641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %640)  ; LegacyF16ToF32(value)
  %642 = lshr i32 %635, 7
  %643 = and i32 %642, 32752
  %644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %643)  ; LegacyF16ToF32(value)
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 3
  %647 = fmul fast float %646, 1.000000e+03
  %648 = fmul fast float %318, %647
  %649 = call float @dx.op.unary.f32(i32 22, float %648)  ; Frc(value)
  %650 = fadd fast float %649, %308
  %651 = fmul fast float %319, %647
  %652 = call float @dx.op.unary.f32(i32 22, float %651)  ; Frc(value)
  %653 = fadd fast float %652, %310
  %654 = fmul fast float %619, %647
  %655 = call float @dx.op.unary.f32(i32 22, float %654)  ; Frc(value)
  %656 = fmul fast float %655, 0x401921FB60000000
  %657 = fadd fast float %656, %638
  %658 = call float @dx.op.unary.f32(i32 13, float %657)  ; Sin(value)
  %659 = call float @dx.op.unary.f32(i32 12, float %657)  ; Cos(value)
  %660 = fsub fast float -0.000000e+00, %658
  %661 = fadd fast float %612, -5.000000e-01
  %662 = fadd fast float %613, -5.000000e-01
  %663 = fmul fast float %630, %661
  %664 = fmul fast float %632, %662
  %665 = fadd fast float %663, 5.000000e-01
  %666 = fadd fast float %664, 5.000000e-01
  %667 = fmul fast float %641, %665
  %668 = fmul fast float %644, %666
  %669 = fmul fast float %659, %667
  %670 = call float @dx.op.tertiary.f32(i32 46, float %660, float %668, float %669)  ; FMad(a,b,c)
  %671 = fmul fast float %658, %667
  %672 = call float @dx.op.tertiary.f32(i32 46, float %659, float %668, float %671)  ; FMad(a,b,c)
  %673 = fadd fast float %650, %670
  %674 = fadd fast float %653, %672
  %675 = icmp ugt i32 %624, 1
  %676 = icmp ugt i32 %622, 33554431
  %677 = or i1 %676, %675
  br i1 %677, label %678, label %703

; <label>:678                                     ; preds = %605
  %679 = add i32 %63, 228
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = lshr i32 %681, 16
  %683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %682)  ; LegacyF16ToF32(value)
  %684 = fmul fast float %646, %683
  %685 = call float @dx.op.unary.f32(i32 22, float %684)  ; Frc(value)
  %686 = mul nuw nsw i32 %624, %625
  %687 = uitofp i32 %686 to float
  %688 = fmul fast float %685, %687
  %689 = call float @dx.op.unary.f32(i32 27, float %688)  ; Round_ni(value)
  %690 = fptoui float %689 to i32
  %691 = urem i32 %690, %624
  %692 = udiv i32 %690, %625
  %693 = call float @dx.op.unary.f32(i32 22, float %673)  ; Frc(value)
  %694 = call float @dx.op.unary.f32(i32 22, float %674)  ; Frc(value)
  %695 = uitofp i32 %691 to float
  %696 = uitofp i32 %692 to float
  %697 = fadd fast float %693, %695
  %698 = fadd fast float %694, %696
  %699 = uitofp i32 %624 to float
  %700 = uitofp i32 %625 to float
  %701 = fdiv fast float %697, %699
  %702 = fdiv fast float %698, %700
  br label %703

; <label>:703                                     ; preds = %678, %605
  %704 = phi float [ %701, %678 ], [ %673, %605 ]
  %705 = phi float [ %702, %678 ], [ %674, %605 ]
  %706 = and i32 %599, 256
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %754, label %708

; <label>:708                                     ; preds = %703
  %709 = add i32 %63, 488
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = add i32 %711, 0
  %713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %712, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %714 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %713, %dx.types.Handle %118, float %704, float %705, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  %716 = add i32 %63, 100
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = shl i32 %718, 4
  %720 = and i32 %719, 32752
  %721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %720)  ; LegacyF16ToF32(value)
  %722 = lshr i32 %718, 7
  %723 = and i32 %722, 32752
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = fsub fast float 1.000000e+00, %569
  %726 = call float @dx.op.binary.f32(i32 35, float %725, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %727 = bitcast float %569 to i32
  %728 = sitofp i32 %727 to float
  %729 = fadd fast float %728, 0xC1CFBF8940000000
  %730 = fmul fast float %724, %729
  %731 = fadd fast float %730, 0x41CFBF8940000000
  %732 = fptosi float %731 to i32
  %733 = bitcast i32 %732 to float
  %734 = bitcast float %726 to i32
  %735 = sitofp i32 %734 to float
  %736 = fadd fast float %735, 0xC1CFBF8940000000
  %737 = fmul fast float %736, %724
  %738 = fadd fast float %737, 0x41CFBF8940000000
  %739 = fptosi float %738 to i32
  %740 = bitcast i32 %739 to float
  %741 = fmul fast float %733, %721
  %742 = fmul fast float %740, %721
  %743 = fsub fast float %726, %741
  %744 = fadd fast float %742, %726
  %745 = call float @dx.op.unary.f32(i32 7, float %743)  ; Saturate(value)
  %746 = call float @dx.op.unary.f32(i32 7, float %744)  ; Saturate(value)
  %747 = fsub fast float %715, %745
  %748 = fsub fast float %746, %745
  %749 = bitcast float %748 to i32
  %750 = sub nsw i32 2129859010, %749
  %751 = bitcast i32 %750 to float
  %752 = fmul fast float %751, %747
  %753 = call float @dx.op.unary.f32(i32 7, float %752)  ; Saturate(value)
  br label %754

; <label>:754                                     ; preds = %708, %703
  %755 = phi float [ %753, %708 ], [ %569, %703 ]
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = and i32 %757, 128
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %776, label %760

; <label>:760                                     ; preds = %754
  %761 = add i32 %63, 472
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = add i32 %763, 0
  %765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %764, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %766 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %765, %dx.types.Handle %118, float %704, float %705, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = and i32 %769, 524288
  %771 = icmp ne i32 %770, 0
  %772 = fcmp fast ogt float %767, 0x3FE0101020000000
  %773 = select i1 %772, float 1.000000e+00, float 0.000000e+00
  %774 = select i1 %771, float %773, float %767
  %775 = fmul fast float %774, %755
  br label %776

; <label>:776                                     ; preds = %760, %754
  %777 = phi float [ %775, %760 ], [ %755, %754 ]
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = and i32 %779, 16
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %957, label %782

; <label>:782                                     ; preds = %776
  %783 = add i32 %63, 424
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = add i32 %785, 0
  %787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %786, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %788 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %787, %dx.types.Handle %117, float %704, float %705, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %789 = extractvalue %dx.types.ResRet.f32 %788, 0
  %790 = extractvalue %dx.types.ResRet.f32 %788, 1
  %791 = extractvalue %dx.types.ResRet.f32 %788, 2
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = and i32 %793, 512
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %804, label %796

; <label>:796                                     ; preds = %782
  %797 = add i32 %63, 504
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %797, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = add i32 %799, 0
  %801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %800, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %802 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %801, %dx.types.Handle %118, float %704, float %705, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %803 = extractvalue %dx.types.ResRet.f32 %802, 0
  br label %804

; <label>:804                                     ; preds = %796, %782
  %805 = phi float [ %803, %796 ], [ 1.000000e+00, %782 ]
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = and i32 %807, 33554432
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %904, label %810

; <label>:810                                     ; preds = %804
  %811 = add i32 %63, 224
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = and i32 %813, 65535
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = lshr i32 %813, 16
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = add i32 %63, 228
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = and i32 %820, 65535
  %822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %821)  ; LegacyF16ToF32(value)
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 255
  %826 = uitofp i32 %825 to float
  %827 = fmul fast float %826, 0x3F70101020000000
  %828 = lshr i32 %824, 8
  %829 = and i32 %828, 255
  %830 = uitofp i32 %829 to float
  %831 = fmul fast float %830, 0x3F70101020000000
  %832 = lshr i32 %824, 16
  %833 = and i32 %832, 255
  %834 = uitofp i32 %833 to float
  %835 = fmul fast float %834, 0x3F70101020000000
  %836 = add i32 %63, 220
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = and i32 %838, 255
  %840 = uitofp i32 %839 to float
  %841 = fmul fast float %840, 0x3F70101020000000
  %842 = lshr i32 %838, 8
  %843 = and i32 %842, 255
  %844 = uitofp i32 %843 to float
  %845 = fmul fast float %844, 0x3F70101020000000
  %846 = lshr i32 %838, 16
  %847 = and i32 %846, 255
  %848 = uitofp i32 %847 to float
  %849 = fmul fast float %848, 0x3F70101020000000
  %850 = bitcast float %789 to i32
  %851 = ashr i32 %850, 1
  %852 = sub nsw i32 1597463174, %851
  %853 = bitcast i32 %852 to float
  %854 = fmul fast float %789, 5.000000e-01
  %855 = fmul fast float %853, %853
  %856 = fmul fast float %855, %854
  %857 = fsub fast float 1.500000e+00, %856
  %858 = fmul fast float %853, %789
  %859 = fmul fast float %858, %857
  %860 = bitcast float %790 to i32
  %861 = ashr i32 %860, 1
  %862 = sub nsw i32 1597463174, %861
  %863 = bitcast i32 %862 to float
  %864 = fmul fast float %790, 5.000000e-01
  %865 = fmul fast float %863, %863
  %866 = fmul fast float %865, %864
  %867 = fsub fast float 1.500000e+00, %866
  %868 = fmul fast float %863, %790
  %869 = fmul fast float %868, %867
  %870 = bitcast float %791 to i32
  %871 = ashr i32 %870, 1
  %872 = sub nsw i32 1597463174, %871
  %873 = bitcast i32 %872 to float
  %874 = fmul fast float %791, 5.000000e-01
  %875 = fmul fast float %873, %873
  %876 = fmul fast float %875, %874
  %877 = fsub fast float 1.500000e+00, %876
  %878 = fmul fast float %873, %791
  %879 = fmul fast float %878, %877
  %880 = fsub fast float %859, %841
  %881 = fsub fast float %869, %845
  %882 = fsub fast float %879, %849
  %883 = fmul fast float %880, %815
  %884 = fmul fast float %881, %817
  %885 = fmul fast float %882, %822
  %886 = fadd fast float %883, %827
  %887 = fadd fast float %884, %831
  %888 = fadd fast float %885, %835
  %889 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  %890 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  %891 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  %892 = fmul fast float %889, %889
  %893 = fmul fast float %890, %890
  %894 = fmul fast float %891, %891
  %895 = fsub fast float %892, %789
  %896 = fsub fast float %893, %790
  %897 = fsub fast float %894, %791
  %898 = fmul fast float %895, %805
  %899 = fmul fast float %896, %805
  %900 = fmul fast float %897, %805
  %901 = fadd fast float %898, %789
  %902 = fadd fast float %899, %790
  %903 = fadd fast float %900, %791
  br label %957

; <label>:904                                     ; preds = %804
  %905 = and i32 %807, 134217728
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %941, label %907

; <label>:907                                     ; preds = %904
  %908 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %909 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %910 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %911 = fadd fast float %908, -5.000000e-01
  %912 = fadd fast float %909, -5.000000e-01
  %913 = fadd fast float %910, -5.000000e-01
  %914 = fmul fast float %911, %805
  %915 = fmul fast float %912, %805
  %916 = fmul fast float %913, %805
  %917 = fadd fast float %914, 5.000000e-01
  %918 = fadd fast float %915, 5.000000e-01
  %919 = fadd fast float %916, 5.000000e-01
  %920 = call float @dx.op.unary.f32(i32 24, float %789)  ; Sqrt(value)
  %921 = call float @dx.op.unary.f32(i32 24, float %790)  ; Sqrt(value)
  %922 = call float @dx.op.unary.f32(i32 24, float %791)  ; Sqrt(value)
  %923 = fmul fast float %917, 2.000000e+00
  %924 = fsub fast float 1.000000e+00, %923
  %925 = fmul fast float %924, %920
  %926 = fadd fast float %925, %923
  %927 = fmul fast float %926, %920
  %928 = fmul fast float %918, 2.000000e+00
  %929 = fsub fast float 1.000000e+00, %928
  %930 = fmul fast float %929, %921
  %931 = fadd fast float %930, %928
  %932 = fmul fast float %931, %921
  %933 = fmul fast float %919, 2.000000e+00
  %934 = fsub fast float 1.000000e+00, %933
  %935 = fmul fast float %934, %922
  %936 = fadd fast float %935, %933
  %937 = fmul fast float %936, %922
  %938 = fmul fast float %927, %927
  %939 = fmul fast float %932, %932
  %940 = fmul fast float %937, %937
  br label %957

; <label>:941                                     ; preds = %904
  %942 = fmul fast float %295, %295
  %943 = fmul fast float %299, %299
  %944 = fmul fast float %303, %303
  %945 = fadd fast float %942, -1.000000e+00
  %946 = fadd fast float %943, -1.000000e+00
  %947 = fadd fast float %944, -1.000000e+00
  %948 = fmul fast float %805, %945
  %949 = fmul fast float %805, %946
  %950 = fmul fast float %805, %947
  %951 = fadd fast float %948, 1.000000e+00
  %952 = fadd fast float %949, 1.000000e+00
  %953 = fadd fast float %950, 1.000000e+00
  %954 = fmul fast float %951, %789
  %955 = fmul fast float %952, %790
  %956 = fmul fast float %953, %791
  br label %957

; <label>:957                                     ; preds = %941, %907, %810, %776
  %958 = phi float [ %901, %810 ], [ %938, %907 ], [ %954, %941 ], [ 1.000000e+00, %776 ]
  %959 = phi float [ %902, %810 ], [ %939, %907 ], [ %955, %941 ], [ 1.000000e+00, %776 ]
  %960 = phi float [ %903, %810 ], [ %940, %907 ], [ %956, %941 ], [ 1.000000e+00, %776 ]
  %961 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.i32 %961, 1
  %963 = and i32 %962, 1
  %964 = icmp ne i32 %963, 0
  %965 = add i32 %63, 356
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = and i32 %967, 32
  %969 = icmp ne i32 %968, 0
  %970 = and i1 %964, %969
  %971 = select i1 %970, float 1.000000e+00, float %958
  %972 = select i1 %970, float 0x3FD3333340000000, float %959
  %973 = select i1 %970, float 0x3FD3333340000000, float %960
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = and i32 %975, 32
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %1050, label %978

; <label>:978                                     ; preds = %957
  %979 = add i32 %63, 92
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = add i32 %63, 440
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = add i32 %984, 0
  %986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %985, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %987 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %986, %dx.types.Handle %117, float %704, float %705, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %988 = extractvalue %dx.types.ResRet.f32 %987, 0
  %989 = extractvalue %dx.types.ResRet.f32 %987, 1
  %990 = extractvalue %dx.types.ResRet.f32 %987, 2
  %991 = extractvalue %dx.types.ResRet.f32 %987, 3
  %992 = and i32 %981, 255
  %993 = uitofp i32 %992 to float
  %994 = lshr i32 %981, 8
  %995 = and i32 %994, 255
  %996 = uitofp i32 %995 to float
  %997 = lshr i32 %981, 16
  %998 = and i32 %997, 255
  %999 = uitofp i32 %998 to float
  %1000 = fmul fast float %999, 0x3F70101000000000
  %1001 = fmul fast float %988, %993
  %1002 = fadd fast float %1001, %996
  %1003 = fmul fast float %1002, 0x3F70101000000000
  %1004 = fadd fast float %989, -5.000000e-01
  %1005 = fadd fast float %991, -5.000000e-01
  %1006 = fmul fast float %1004, %1000
  %1007 = fmul fast float %1005, %1000
  %1008 = fadd fast float %1006, 5.000000e-01
  %1009 = fadd fast float %1007, 5.000000e-01
  %1010 = fmul fast float %1008, 2.000000e+00
  %1011 = fadd fast float %1010, -1.000000e+00
  %1012 = fmul fast float %1009, 2.000000e+00
  %1013 = fadd fast float %1012, -1.000000e+00
  %1014 = fadd fast float %1011, %1013
  %1015 = fmul fast float %1014, 5.000000e-01
  %1016 = fsub fast float %1011, %1013
  %1017 = fmul fast float %1016, 5.000000e-01
  %1018 = call float @dx.op.unary.f32(i32 6, float %1015)  ; FAbs(value)
  %1019 = fsub fast float 1.000000e+00, %1018
  %1020 = call float @dx.op.unary.f32(i32 6, float %1017)  ; FAbs(value)
  %1021 = fsub fast float %1019, %1020
  %1022 = call float @dx.op.dot3.f32(i32 55, float %1015, float %1017, float %1021, float %1015, float %1017, float %1021)  ; Dot3(ax,ay,az,bx,by,bz)
  %1023 = call float @dx.op.unary.f32(i32 25, float %1022)  ; Rsqrt(value)
  %1024 = fmul fast float %1015, %1023
  %1025 = fmul fast float %1017, %1023
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = and i32 %1027, 67108864
  %1029 = icmp eq i32 %1028, 0
  br i1 %1029, label %1046, label %1030

; <label>:1030                                    ; preds = %978
  %1031 = add i32 %63, 280
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = and i32 %1033, 65535
  %1035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1034)  ; LegacyF16ToF32(value)
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = and i32 %1037, 65535
  %1039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1038)  ; LegacyF16ToF32(value)
  %1040 = lshr i32 %1033, 16
  %1041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1040)  ; LegacyF16ToF32(value)
  %1042 = fsub fast float %1003, %1041
  %1043 = fmul fast float %1042, %1035
  %1044 = fadd fast float %1043, %1039
  %1045 = call float @dx.op.unary.f32(i32 7, float %1044)  ; Saturate(value)
  br label %1046

; <label>:1046                                    ; preds = %1030, %978
  %1047 = phi float [ %1045, %1030 ], [ %1003, %978 ]
  %1048 = call float @dx.op.dot2.f32(i32 54, float %1024, float %1025, float %608, float %609)  ; Dot2(ax,ay,bx,by)
  %1049 = call float @dx.op.dot2.f32(i32 54, float %1024, float %1025, float %610, float %611)  ; Dot2(ax,ay,bx,by)
  br label %1050

; <label>:1050                                    ; preds = %1046, %957
  %1051 = phi float [ %1047, %1046 ], [ 0x3FD6666660000000, %957 ]
  %1052 = phi float [ %1048, %1046 ], [ 0.000000e+00, %957 ]
  %1053 = phi float [ %1049, %1046 ], [ 0.000000e+00, %957 ]
  %1054 = phi float [ %990, %1046 ], [ 1.000000e+00, %957 ]
  %1055 = add i32 %63, 96
  %1056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.i32 %1056, 0
  %1058 = and i32 %1057, 255
  %1059 = uitofp i32 %1058 to float
  %1060 = lshr i32 %1057, 8
  %1061 = and i32 %1060, 255
  %1062 = uitofp i32 %1061 to float
  %1063 = call float @dx.op.dot3.f32(i32 55, float %971, float %972, float %973, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1064 = fmul fast float %1062, %1063
  %1065 = fadd fast float %1064, %1059
  %1066 = fmul fast float %1065, 0x3F70101020000000
  %1067 = call float @dx.op.unary.f32(i32 7, float %1066)  ; Saturate(value)
  br label %1068

; <label>:1068                                    ; preds = %1050, %593
  %1069 = phi float [ 0.000000e+00, %593 ], [ %1052, %1050 ]
  %1070 = phi float [ 0.000000e+00, %593 ], [ %1053, %1050 ]
  %1071 = phi float [ 0.000000e+00, %593 ], [ %777, %1050 ]
  %1072 = phi float [ 0.000000e+00, %593 ], [ %1051, %1050 ]
  %1073 = phi float [ 0.000000e+00, %593 ], [ %1054, %1050 ]
  %1074 = phi float [ 0.000000e+00, %593 ], [ %1067, %1050 ]
  br i1 %541, label %1636, label %1075

; <label>:1075                                    ; preds = %1068
  %1076 = add i32 %63, 40
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = add i32 %63, 44
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = or i32 %1081, %1078
  %1083 = icmp eq i32 %1082, 0
  br i1 %1083, label %1636, label %1084

; <label>:1084                                    ; preds = %1075
  %1085 = and i32 %1078, 262144
  %1086 = icmp ne i32 %1085, 0
  %1087 = select i1 %1086, float %71, float 1.000000e+00
  %1088 = select i1 %1086, float %72, float 0.000000e+00
  %1089 = select i1 %1086, float %73, float 0.000000e+00
  %1090 = select i1 %1086, float %74, float 1.000000e+00
  %1091 = select i1 %1086, float %75, float %99
  %1092 = select i1 %1086, float %76, float %100
  %1093 = add i32 %63, 300
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = lshr i32 %1095, 16
  %1097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1096)  ; LegacyF16ToF32(value)
  %1098 = fmul fast float %1097, 0x3F50624DE0000000
  %1099 = add i32 %63, 104
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = lshr i32 %1101, 16
  %1103 = and i32 %1102, 255
  %1104 = lshr i32 %1101, 24
  %1105 = add i32 %63, 308
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = and i32 %1107, 65535
  %1109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1108)  ; LegacyF16ToF32(value)
  %1110 = lshr i32 %1107, 16
  %1111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1110)  ; LegacyF16ToF32(value)
  %1112 = add i32 %63, 48
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = lshr i32 %1114, 22
  %1116 = shl nuw nsw i32 %1115, 5
  %1117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1116)  ; LegacyF16ToF32(value)
  %1118 = shl i32 %1114, 4
  %1119 = and i32 %1118, 32752
  %1120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1119)  ; LegacyF16ToF32(value)
  %1121 = lshr i32 %1114, 7
  %1122 = and i32 %1121, 32752
  %1123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1122)  ; LegacyF16ToF32(value)
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 3
  %1126 = fmul fast float %1125, 1.000000e+03
  %1127 = fmul fast float %1126, %390
  %1128 = call float @dx.op.unary.f32(i32 22, float %1127)  ; Frc(value)
  %1129 = fadd fast float %1128, %378
  %1130 = fmul fast float %1126, %392
  %1131 = call float @dx.op.unary.f32(i32 22, float %1130)  ; Frc(value)
  %1132 = fadd fast float %1131, %379
  %1133 = fmul fast float %1098, %1126
  %1134 = call float @dx.op.unary.f32(i32 22, float %1133)  ; Frc(value)
  %1135 = fmul fast float %1134, 0x401921FB60000000
  %1136 = fadd fast float %1135, %1117
  %1137 = call float @dx.op.unary.f32(i32 13, float %1136)  ; Sin(value)
  %1138 = call float @dx.op.unary.f32(i32 12, float %1136)  ; Cos(value)
  %1139 = fsub fast float -0.000000e+00, %1137
  %1140 = fadd fast float %1091, -5.000000e-01
  %1141 = fadd fast float %1092, -5.000000e-01
  %1142 = fmul fast float %1109, %1140
  %1143 = fmul fast float %1111, %1141
  %1144 = fadd fast float %1142, 5.000000e-01
  %1145 = fadd fast float %1143, 5.000000e-01
  %1146 = fmul fast float %1120, %1144
  %1147 = fmul fast float %1123, %1145
  %1148 = fmul fast float %1138, %1146
  %1149 = call float @dx.op.tertiary.f32(i32 46, float %1139, float %1147, float %1148)  ; FMad(a,b,c)
  %1150 = fmul fast float %1137, %1146
  %1151 = call float @dx.op.tertiary.f32(i32 46, float %1138, float %1147, float %1150)  ; FMad(a,b,c)
  %1152 = fadd fast float %1129, %1149
  %1153 = fadd fast float %1132, %1151
  %1154 = icmp ugt i32 %1103, 1
  %1155 = icmp ugt i32 %1101, 33554431
  %1156 = or i1 %1155, %1154
  br i1 %1156, label %1157, label %1182

; <label>:1157                                    ; preds = %1084
  %1158 = add i32 %63, 244
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = lshr i32 %1160, 16
  %1162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1161)  ; LegacyF16ToF32(value)
  %1163 = fmul fast float %1125, %1162
  %1164 = call float @dx.op.unary.f32(i32 22, float %1163)  ; Frc(value)
  %1165 = mul nuw nsw i32 %1103, %1104
  %1166 = uitofp i32 %1165 to float
  %1167 = fmul fast float %1164, %1166
  %1168 = call float @dx.op.unary.f32(i32 27, float %1167)  ; Round_ni(value)
  %1169 = fptoui float %1168 to i32
  %1170 = urem i32 %1169, %1103
  %1171 = udiv i32 %1169, %1104
  %1172 = call float @dx.op.unary.f32(i32 22, float %1152)  ; Frc(value)
  %1173 = call float @dx.op.unary.f32(i32 22, float %1153)  ; Frc(value)
  %1174 = uitofp i32 %1170 to float
  %1175 = uitofp i32 %1171 to float
  %1176 = fadd fast float %1172, %1174
  %1177 = fadd fast float %1173, %1175
  %1178 = uitofp i32 %1103 to float
  %1179 = uitofp i32 %1104 to float
  %1180 = fdiv fast float %1176, %1178
  %1181 = fdiv fast float %1177, %1179
  br label %1182

; <label>:1182                                    ; preds = %1157, %1084
  %1183 = phi float [ %1180, %1157 ], [ %1152, %1084 ]
  %1184 = phi float [ %1181, %1157 ], [ %1153, %1084 ]
  %1185 = and i32 %1078, 256
  %1186 = icmp eq i32 %1185, 0
  br i1 %1186, label %1233, label %1187

; <label>:1187                                    ; preds = %1182
  %1188 = add i32 %63, 492
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = add i32 %1190, 0
  %1192 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1191, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1193 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1192, %dx.types.Handle %118, float %1183, float %1184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = add i32 %63, 116
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1195, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = shl i32 %1197, 4
  %1199 = and i32 %1198, 32752
  %1200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1199)  ; LegacyF16ToF32(value)
  %1201 = lshr i32 %1197, 7
  %1202 = and i32 %1201, 32752
  %1203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1202)  ; LegacyF16ToF32(value)
  %1204 = fsub fast float 1.000000e+00, %596
  %1205 = call float @dx.op.binary.f32(i32 35, float %1204, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1206 = bitcast float %596 to i32
  %1207 = sitofp i32 %1206 to float
  %1208 = fadd fast float %1207, 0xC1CFBF8940000000
  %1209 = fmul fast float %1203, %1208
  %1210 = fadd fast float %1209, 0x41CFBF8940000000
  %1211 = fptosi float %1210 to i32
  %1212 = bitcast i32 %1211 to float
  %1213 = bitcast float %1205 to i32
  %1214 = sitofp i32 %1213 to float
  %1215 = fadd fast float %1214, 0xC1CFBF8940000000
  %1216 = fmul fast float %1215, %1203
  %1217 = fadd fast float %1216, 0x41CFBF8940000000
  %1218 = fptosi float %1217 to i32
  %1219 = bitcast i32 %1218 to float
  %1220 = fmul fast float %1212, %1200
  %1221 = fmul fast float %1219, %1200
  %1222 = fsub fast float %1205, %1220
  %1223 = fadd fast float %1221, %1205
  %1224 = call float @dx.op.unary.f32(i32 7, float %1222)  ; Saturate(value)
  %1225 = call float @dx.op.unary.f32(i32 7, float %1223)  ; Saturate(value)
  %1226 = fsub fast float %1194, %1224
  %1227 = fsub fast float %1225, %1224
  %1228 = bitcast float %1227 to i32
  %1229 = sub nsw i32 2129859010, %1228
  %1230 = bitcast i32 %1229 to float
  %1231 = fmul fast float %1230, %1226
  %1232 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  br label %1233

; <label>:1233                                    ; preds = %1187, %1182
  %1234 = phi float [ %1232, %1187 ], [ %596, %1182 ]
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = and i32 %1236, 128
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1255, label %1239

; <label>:1239                                    ; preds = %1233
  %1240 = add i32 %63, 476
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = add i32 %1242, 0
  %1244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1243, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1245 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1244, %dx.types.Handle %118, float %1183, float %1184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = and i32 %1248, 524288
  %1250 = icmp ne i32 %1249, 0
  %1251 = fcmp fast ogt float %1246, 0x3FE0101020000000
  %1252 = select i1 %1251, float 1.000000e+00, float 0.000000e+00
  %1253 = select i1 %1250, float %1252, float %1246
  %1254 = fmul fast float %1253, %1234
  br label %1255

; <label>:1255                                    ; preds = %1239, %1233
  %1256 = phi float [ %1254, %1239 ], [ %1234, %1233 ]
  %1257 = fcmp fast ult float %1256, 0x3F70101020000000
  br i1 %1257, label %1636, label %1258

; <label>:1258                                    ; preds = %1255
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = and i32 %1260, 16
  %1262 = icmp eq i32 %1261, 0
  br i1 %1262, label %1438, label %1263

; <label>:1263                                    ; preds = %1258
  %1264 = add i32 %63, 428
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = add i32 %1266, 0
  %1268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1268, %dx.types.Handle %117, float %1183, float %1184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  %1271 = extractvalue %dx.types.ResRet.f32 %1269, 1
  %1272 = extractvalue %dx.types.ResRet.f32 %1269, 2
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = and i32 %1274, 512
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1285, label %1277

; <label>:1277                                    ; preds = %1263
  %1278 = add i32 %63, 508
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = add i32 %1280, 0
  %1282 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1281, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1283 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1282, %dx.types.Handle %118, float %1183, float %1184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1284 = extractvalue %dx.types.ResRet.f32 %1283, 0
  br label %1285

; <label>:1285                                    ; preds = %1277, %1263
  %1286 = phi float [ %1284, %1277 ], [ 1.000000e+00, %1263 ]
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = and i32 %1288, 33554432
  %1290 = icmp eq i32 %1289, 0
  br i1 %1290, label %1385, label %1291

; <label>:1291                                    ; preds = %1285
  %1292 = add i32 %63, 240
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = and i32 %1294, 65535
  %1296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1295)  ; LegacyF16ToF32(value)
  %1297 = lshr i32 %1294, 16
  %1298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1297)  ; LegacyF16ToF32(value)
  %1299 = add i32 %63, 244
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = and i32 %1301, 65535
  %1303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1302)  ; LegacyF16ToF32(value)
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = and i32 %1305, 255
  %1307 = uitofp i32 %1306 to float
  %1308 = fmul fast float %1307, 0x3F70101020000000
  %1309 = lshr i32 %1305, 8
  %1310 = and i32 %1309, 255
  %1311 = uitofp i32 %1310 to float
  %1312 = fmul fast float %1311, 0x3F70101020000000
  %1313 = lshr i32 %1305, 16
  %1314 = and i32 %1313, 255
  %1315 = uitofp i32 %1314 to float
  %1316 = fmul fast float %1315, 0x3F70101020000000
  %1317 = add i32 %63, 236
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = and i32 %1319, 255
  %1321 = uitofp i32 %1320 to float
  %1322 = fmul fast float %1321, 0x3F70101020000000
  %1323 = lshr i32 %1319, 8
  %1324 = and i32 %1323, 255
  %1325 = uitofp i32 %1324 to float
  %1326 = fmul fast float %1325, 0x3F70101020000000
  %1327 = lshr i32 %1319, 16
  %1328 = and i32 %1327, 255
  %1329 = uitofp i32 %1328 to float
  %1330 = fmul fast float %1329, 0x3F70101020000000
  %1331 = bitcast float %1270 to i32
  %1332 = ashr i32 %1331, 1
  %1333 = sub nsw i32 1597463174, %1332
  %1334 = bitcast i32 %1333 to float
  %1335 = fmul fast float %1270, 5.000000e-01
  %1336 = fmul fast float %1334, %1334
  %1337 = fmul fast float %1336, %1335
  %1338 = fsub fast float 1.500000e+00, %1337
  %1339 = fmul fast float %1334, %1270
  %1340 = fmul fast float %1339, %1338
  %1341 = bitcast float %1271 to i32
  %1342 = ashr i32 %1341, 1
  %1343 = sub nsw i32 1597463174, %1342
  %1344 = bitcast i32 %1343 to float
  %1345 = fmul fast float %1271, 5.000000e-01
  %1346 = fmul fast float %1344, %1344
  %1347 = fmul fast float %1346, %1345
  %1348 = fsub fast float 1.500000e+00, %1347
  %1349 = fmul fast float %1344, %1271
  %1350 = fmul fast float %1349, %1348
  %1351 = bitcast float %1272 to i32
  %1352 = ashr i32 %1351, 1
  %1353 = sub nsw i32 1597463174, %1352
  %1354 = bitcast i32 %1353 to float
  %1355 = fmul fast float %1272, 5.000000e-01
  %1356 = fmul fast float %1354, %1354
  %1357 = fmul fast float %1356, %1355
  %1358 = fsub fast float 1.500000e+00, %1357
  %1359 = fmul fast float %1354, %1272
  %1360 = fmul fast float %1359, %1358
  %1361 = fsub fast float %1340, %1322
  %1362 = fsub fast float %1350, %1326
  %1363 = fsub fast float %1360, %1330
  %1364 = fmul fast float %1361, %1296
  %1365 = fmul fast float %1362, %1298
  %1366 = fmul fast float %1363, %1303
  %1367 = fadd fast float %1364, %1308
  %1368 = fadd fast float %1365, %1312
  %1369 = fadd fast float %1366, %1316
  %1370 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1371 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  %1372 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1373 = fmul fast float %1370, %1370
  %1374 = fmul fast float %1371, %1371
  %1375 = fmul fast float %1372, %1372
  %1376 = fsub fast float %1373, %1270
  %1377 = fsub fast float %1374, %1271
  %1378 = fsub fast float %1375, %1272
  %1379 = fmul fast float %1376, %1286
  %1380 = fmul fast float %1377, %1286
  %1381 = fmul fast float %1378, %1286
  %1382 = fadd fast float %1379, %1270
  %1383 = fadd fast float %1380, %1271
  %1384 = fadd fast float %1381, %1272
  br label %1438

; <label>:1385                                    ; preds = %1285
  %1386 = and i32 %1288, 134217728
  %1387 = icmp eq i32 %1386, 0
  br i1 %1387, label %1422, label %1388

; <label>:1388                                    ; preds = %1385
  %1389 = call float @dx.op.unary.f32(i32 24, float %366)  ; Sqrt(value)
  %1390 = call float @dx.op.unary.f32(i32 24, float %367)  ; Sqrt(value)
  %1391 = call float @dx.op.unary.f32(i32 24, float %368)  ; Sqrt(value)
  %1392 = fadd fast float %1389, -5.000000e-01
  %1393 = fadd fast float %1390, -5.000000e-01
  %1394 = fadd fast float %1391, -5.000000e-01
  %1395 = fmul fast float %1392, %1286
  %1396 = fmul fast float %1393, %1286
  %1397 = fmul fast float %1394, %1286
  %1398 = fadd fast float %1395, 5.000000e-01
  %1399 = fadd fast float %1396, 5.000000e-01
  %1400 = fadd fast float %1397, 5.000000e-01
  %1401 = call float @dx.op.unary.f32(i32 24, float %1270)  ; Sqrt(value)
  %1402 = call float @dx.op.unary.f32(i32 24, float %1271)  ; Sqrt(value)
  %1403 = call float @dx.op.unary.f32(i32 24, float %1272)  ; Sqrt(value)
  %1404 = fmul fast float %1398, 2.000000e+00
  %1405 = fsub fast float 1.000000e+00, %1404
  %1406 = fmul fast float %1405, %1401
  %1407 = fadd fast float %1406, %1404
  %1408 = fmul fast float %1407, %1401
  %1409 = fmul fast float %1399, 2.000000e+00
  %1410 = fsub fast float 1.000000e+00, %1409
  %1411 = fmul fast float %1410, %1402
  %1412 = fadd fast float %1411, %1409
  %1413 = fmul fast float %1412, %1402
  %1414 = fmul fast float %1400, 2.000000e+00
  %1415 = fsub fast float 1.000000e+00, %1414
  %1416 = fmul fast float %1415, %1403
  %1417 = fadd fast float %1416, %1414
  %1418 = fmul fast float %1417, %1403
  %1419 = fmul fast float %1408, %1408
  %1420 = fmul fast float %1413, %1413
  %1421 = fmul fast float %1418, %1418
  br label %1438

; <label>:1422                                    ; preds = %1385
  %1423 = fmul fast float %366, %366
  %1424 = fmul fast float %367, %367
  %1425 = fmul fast float %368, %368
  %1426 = fadd fast float %1423, -1.000000e+00
  %1427 = fadd fast float %1424, -1.000000e+00
  %1428 = fadd fast float %1425, -1.000000e+00
  %1429 = fmul fast float %1286, %1426
  %1430 = fmul fast float %1286, %1427
  %1431 = fmul fast float %1286, %1428
  %1432 = fadd fast float %1429, 1.000000e+00
  %1433 = fadd fast float %1430, 1.000000e+00
  %1434 = fadd fast float %1431, 1.000000e+00
  %1435 = fmul fast float %1432, %1270
  %1436 = fmul fast float %1433, %1271
  %1437 = fmul fast float %1434, %1272
  br label %1438

; <label>:1438                                    ; preds = %1422, %1388, %1291, %1258
  %1439 = phi float [ %1382, %1291 ], [ %1419, %1388 ], [ %1435, %1422 ], [ 1.000000e+00, %1258 ]
  %1440 = phi float [ %1383, %1291 ], [ %1420, %1388 ], [ %1436, %1422 ], [ 1.000000e+00, %1258 ]
  %1441 = phi float [ %1384, %1291 ], [ %1421, %1388 ], [ %1437, %1422 ], [ 1.000000e+00, %1258 ]
  %1442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1443 = extractvalue %dx.types.CBufRet.i32 %1442, 1
  %1444 = and i32 %1443, 1
  %1445 = icmp ne i32 %1444, 0
  %1446 = add i32 %63, 356
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1446, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = and i32 %1448, 32
  %1450 = icmp ne i32 %1449, 0
  %1451 = and i1 %1445, %1450
  %1452 = select i1 %1451, float 1.000000e+00, float %1439
  %1453 = select i1 %1451, float 0x3FD3333340000000, float %1440
  %1454 = select i1 %1451, float 0x3FD3333340000000, float %1441
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = and i32 %1456, 32
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1531, label %1459

; <label>:1459                                    ; preds = %1438
  %1460 = add i32 %63, 108
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = add i32 %63, 444
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = add i32 %1465, 0
  %1467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1466, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1468 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1467, %dx.types.Handle %117, float %1183, float %1184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1469 = extractvalue %dx.types.ResRet.f32 %1468, 0
  %1470 = extractvalue %dx.types.ResRet.f32 %1468, 1
  %1471 = extractvalue %dx.types.ResRet.f32 %1468, 2
  %1472 = extractvalue %dx.types.ResRet.f32 %1468, 3
  %1473 = and i32 %1462, 255
  %1474 = uitofp i32 %1473 to float
  %1475 = lshr i32 %1462, 8
  %1476 = and i32 %1475, 255
  %1477 = uitofp i32 %1476 to float
  %1478 = lshr i32 %1462, 16
  %1479 = and i32 %1478, 255
  %1480 = uitofp i32 %1479 to float
  %1481 = fmul fast float %1480, 0x3F70101000000000
  %1482 = fmul fast float %1469, %1474
  %1483 = fadd fast float %1482, %1477
  %1484 = fmul fast float %1483, 0x3F70101000000000
  %1485 = fadd fast float %1470, -5.000000e-01
  %1486 = fadd fast float %1472, -5.000000e-01
  %1487 = fmul fast float %1485, %1481
  %1488 = fmul fast float %1486, %1481
  %1489 = fadd fast float %1487, 5.000000e-01
  %1490 = fadd fast float %1488, 5.000000e-01
  %1491 = fmul fast float %1489, 2.000000e+00
  %1492 = fadd fast float %1491, -1.000000e+00
  %1493 = fmul fast float %1490, 2.000000e+00
  %1494 = fadd fast float %1493, -1.000000e+00
  %1495 = fadd fast float %1492, %1494
  %1496 = fmul fast float %1495, 5.000000e-01
  %1497 = fsub fast float %1492, %1494
  %1498 = fmul fast float %1497, 5.000000e-01
  %1499 = call float @dx.op.unary.f32(i32 6, float %1496)  ; FAbs(value)
  %1500 = fsub fast float 1.000000e+00, %1499
  %1501 = call float @dx.op.unary.f32(i32 6, float %1498)  ; FAbs(value)
  %1502 = fsub fast float %1500, %1501
  %1503 = call float @dx.op.dot3.f32(i32 55, float %1496, float %1498, float %1502, float %1496, float %1498, float %1502)  ; Dot3(ax,ay,az,bx,by,bz)
  %1504 = call float @dx.op.unary.f32(i32 25, float %1503)  ; Rsqrt(value)
  %1505 = fmul fast float %1496, %1504
  %1506 = fmul fast float %1498, %1504
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = and i32 %1508, 67108864
  %1510 = icmp eq i32 %1509, 0
  br i1 %1510, label %1527, label %1511

; <label>:1511                                    ; preds = %1459
  %1512 = add i32 %63, 296
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = and i32 %1514, 65535
  %1516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1515)  ; LegacyF16ToF32(value)
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = and i32 %1518, 65535
  %1520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1519)  ; LegacyF16ToF32(value)
  %1521 = lshr i32 %1514, 16
  %1522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1521)  ; LegacyF16ToF32(value)
  %1523 = fsub fast float %1484, %1522
  %1524 = fmul fast float %1523, %1516
  %1525 = fadd fast float %1524, %1520
  %1526 = call float @dx.op.unary.f32(i32 7, float %1525)  ; Saturate(value)
  br label %1527

; <label>:1527                                    ; preds = %1511, %1459
  %1528 = phi float [ %1526, %1511 ], [ %1484, %1459 ]
  %1529 = call float @dx.op.dot2.f32(i32 54, float %1505, float %1506, float %1087, float %1088)  ; Dot2(ax,ay,bx,by)
  %1530 = call float @dx.op.dot2.f32(i32 54, float %1505, float %1506, float %1089, float %1090)  ; Dot2(ax,ay,bx,by)
  br label %1531

; <label>:1531                                    ; preds = %1527, %1438
  %1532 = phi float [ %1528, %1527 ], [ 0x3FD6666660000000, %1438 ]
  %1533 = phi float [ %1529, %1527 ], [ 0.000000e+00, %1438 ]
  %1534 = phi float [ %1530, %1527 ], [ 0.000000e+00, %1438 ]
  %1535 = phi float [ %1471, %1527 ], [ 1.000000e+00, %1438 ]
  %1536 = add i32 %63, 112
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = and i32 %1540, 3
  %1542 = icmp eq i32 %1541, 0
  br i1 %1542, label %1543, label %1560

; <label>:1543                                    ; preds = %1531
  %1544 = lshr i32 %1538, 8
  %1545 = and i32 %1544, 255
  %1546 = uitofp i32 %1545 to float
  %1547 = call float @dx.op.dot3.f32(i32 55, float %1452, float %1453, float %1454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1548 = fmul fast float %1546, %1547
  %1549 = and i32 %1538, 255
  %1550 = uitofp i32 %1549 to float
  %1551 = fadd fast float %1548, %1550
  %1552 = fmul fast float %1551, 0x3F70101020000000
  %1553 = call float @dx.op.unary.f32(i32 7, float %1552)  ; Saturate(value)
  %1554 = and i32 %1540, 16
  %1555 = icmp ne i32 %1554, 0
  %1556 = select i1 %1555, float %1256, float 0.000000e+00
  %1557 = fsub fast float %1553, %1074
  %1558 = fmul fast float %1556, %1557
  %1559 = fadd fast float %1558, %1074
  br label %1560

; <label>:1560                                    ; preds = %1543, %1531
  %1561 = phi float [ %1074, %1531 ], [ %1559, %1543 ]
  %1562 = and i32 %1540, 12
  %1563 = icmp eq i32 %1562, 12
  br i1 %1563, label %1636, label %1564

; <label>:1564                                    ; preds = %1560
  %1565 = and i32 %1540, 2097184
  %1566 = icmp eq i32 %1565, 2097184
  %1567 = select i1 %1566, float %1256, float 0.000000e+00
  %1568 = and i32 %1540, 4194336
  %1569 = icmp eq i32 %1568, 4194336
  %1570 = select i1 %1569, float %1256, float 0.000000e+00
  %1571 = and i32 %1540, 8388640
  %1572 = icmp eq i32 %1571, 8388640
  %1573 = select i1 %1572, float %1256, float 0.000000e+00
  %1574 = icmp eq i32 %1562, 0
  br i1 %1574, label %1575, label %1588

; <label>:1575                                    ; preds = %1564
  %1576 = fsub fast float %1533, %1069
  %1577 = fsub fast float %1534, %1070
  %1578 = fmul fast float %1567, %1576
  %1579 = fmul fast float %1567, %1577
  %1580 = fadd fast float %1578, %1069
  %1581 = fadd fast float %1579, %1070
  %1582 = fsub fast float %1535, %1073
  %1583 = fmul fast float %1570, %1582
  %1584 = fadd fast float %1583, %1073
  %1585 = fsub fast float %1532, %1072
  %1586 = fmul fast float %1573, %1585
  %1587 = fadd fast float %1586, %1072
  br label %1636

; <label>:1588                                    ; preds = %1564
  %1589 = icmp eq i32 %1562, 4
  br i1 %1589, label %1590, label %1622

; <label>:1590                                    ; preds = %1588
  %1591 = fmul fast float %1567, %1533
  %1592 = fmul fast float %1567, %1534
  %1593 = fadd fast float %1591, %1069
  %1594 = fadd fast float %1592, %1070
  %1595 = call float @dx.op.binary.f32(i32 36, float %1073, float %1535)  ; FMin(a,b)
  %1596 = fsub fast float %1595, %1073
  %1597 = fmul fast float %1596, %1570
  %1598 = fadd fast float %1597, %1073
  %1599 = fadd fast float %1532, %1072
  %1600 = fmul fast float %1599, 0x3FF337FAE0000000
  %1601 = fmul fast float %1072, %1072
  %1602 = fmul fast float %1532, %1532
  %1603 = fadd fast float %1602, %1601
  %1604 = fmul fast float %1603, 0x3FE5152B00000000
  %1605 = fmul fast float %1072, 0xBFCC1F85E0000000
  %1606 = fmul fast float %1605, %1532
  %1607 = fadd fast float %1606, 0xBFE1363700000000
  %1608 = fadd fast float %1607, %1600
  %1609 = fsub fast float %1608, %1604
  %1610 = fmul fast float %1599, 0x3FBA6F0D00000000
  %1611 = fmul fast float %1603, 0x3FD0432880000000
  %1612 = fmul fast float %1072, 0xBFEF110800000000
  %1613 = fmul fast float %1612, %1532
  %1614 = fadd fast float %1613, 1.000000e+00
  %1615 = fsub fast float %1614, %1610
  %1616 = fadd fast float %1615, %1611
  %1617 = fdiv fast float %1609, %1616
  %1618 = call float @dx.op.unary.f32(i32 7, float %1617)  ; Saturate(value)
  %1619 = fsub fast float %1618, %1072
  %1620 = fmul fast float %1619, %1573
  %1621 = fadd fast float %1620, %1072
  br label %1636

; <label>:1622                                    ; preds = %1588
  %1623 = icmp eq i32 %1562, 8
  br i1 %1623, label %1624, label %1636

; <label>:1624                                    ; preds = %1622
  %1625 = fmul fast float %1567, %1533
  %1626 = fmul fast float %1567, %1534
  %1627 = fadd fast float %1625, %1069
  %1628 = fadd fast float %1626, %1070
  %1629 = call float @dx.op.binary.f32(i32 36, float %1073, float %1535)  ; FMin(a,b)
  %1630 = fsub fast float %1629, %1073
  %1631 = fmul fast float %1630, %1570
  %1632 = fadd fast float %1631, %1073
  %1633 = fsub fast float %1532, %1072
  %1634 = fmul fast float %1573, %1633
  %1635 = fadd fast float %1634, %1072
  br label %1636

; <label>:1636                                    ; preds = %1624, %1622, %1590, %1575, %1560, %1255, %1075, %1068
  %1637 = phi float [ %1069, %1560 ], [ %1069, %1255 ], [ %1069, %1068 ], [ %1627, %1624 ], [ %1069, %1622 ], [ %1593, %1590 ], [ %1580, %1575 ], [ %1069, %1075 ]
  %1638 = phi float [ %1070, %1560 ], [ %1070, %1255 ], [ %1070, %1068 ], [ %1628, %1624 ], [ %1070, %1622 ], [ %1594, %1590 ], [ %1581, %1575 ], [ %1070, %1075 ]
  %1639 = phi float [ %1072, %1560 ], [ %1072, %1255 ], [ %1072, %1068 ], [ %1635, %1624 ], [ %1072, %1622 ], [ %1621, %1590 ], [ %1587, %1575 ], [ %1072, %1075 ]
  %1640 = phi float [ %1073, %1560 ], [ %1073, %1255 ], [ %1073, %1068 ], [ %1632, %1624 ], [ %1073, %1622 ], [ %1598, %1590 ], [ %1584, %1575 ], [ %1073, %1075 ]
  %1641 = phi float [ %1561, %1560 ], [ %1074, %1255 ], [ %1074, %1068 ], [ %1561, %1624 ], [ %1561, %1622 ], [ %1561, %1590 ], [ %1561, %1575 ], [ %1074, %1075 ]
  br i1 %543, label %2203, label %1642

; <label>:1642                                    ; preds = %1636
  %1643 = add i32 %63, 56
  %1644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1643, i32 undef)  ; BufferLoad(srv,index,wot)
  %1645 = extractvalue %dx.types.ResRet.i32 %1644, 0
  %1646 = add i32 %63, 60
  %1647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1646, i32 undef)  ; BufferLoad(srv,index,wot)
  %1648 = extractvalue %dx.types.ResRet.i32 %1647, 0
  %1649 = or i32 %1648, %1645
  %1650 = icmp eq i32 %1649, 0
  br i1 %1650, label %2203, label %1651

; <label>:1651                                    ; preds = %1642
  %1652 = and i32 %1645, 262144
  %1653 = icmp ne i32 %1652, 0
  %1654 = select i1 %1653, float %71, float 1.000000e+00
  %1655 = select i1 %1653, float %72, float 0.000000e+00
  %1656 = select i1 %1653, float %73, float 0.000000e+00
  %1657 = select i1 %1653, float %74, float 1.000000e+00
  %1658 = select i1 %1653, float %75, float %99
  %1659 = select i1 %1653, float %76, float %100
  %1660 = add i32 %63, 316
  %1661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.i32 %1661, 0
  %1663 = lshr i32 %1662, 16
  %1664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1663)  ; LegacyF16ToF32(value)
  %1665 = fmul fast float %1664, 0x3F50624DE0000000
  %1666 = add i32 %63, 120
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = lshr i32 %1668, 16
  %1670 = and i32 %1669, 255
  %1671 = lshr i32 %1668, 24
  %1672 = add i32 %63, 324
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = and i32 %1674, 65535
  %1676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1675)  ; LegacyF16ToF32(value)
  %1677 = lshr i32 %1674, 16
  %1678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1677)  ; LegacyF16ToF32(value)
  %1679 = add i32 %63, 64
  %1680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1679, i32 undef)  ; BufferLoad(srv,index,wot)
  %1681 = extractvalue %dx.types.ResRet.i32 %1680, 0
  %1682 = lshr i32 %1681, 22
  %1683 = shl nuw nsw i32 %1682, 5
  %1684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1683)  ; LegacyF16ToF32(value)
  %1685 = shl i32 %1681, 4
  %1686 = and i32 %1685, 32752
  %1687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1686)  ; LegacyF16ToF32(value)
  %1688 = lshr i32 %1681, 7
  %1689 = and i32 %1688, 32752
  %1690 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1689)  ; LegacyF16ToF32(value)
  %1691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1692 = extractvalue %dx.types.CBufRet.f32 %1691, 3
  %1693 = fmul fast float %1692, 1.000000e+03
  %1694 = fmul fast float %1693, %462
  %1695 = call float @dx.op.unary.f32(i32 22, float %1694)  ; Frc(value)
  %1696 = fadd fast float %1695, %450
  %1697 = fmul fast float %1693, %464
  %1698 = call float @dx.op.unary.f32(i32 22, float %1697)  ; Frc(value)
  %1699 = fadd fast float %1698, %451
  %1700 = fmul fast float %1665, %1693
  %1701 = call float @dx.op.unary.f32(i32 22, float %1700)  ; Frc(value)
  %1702 = fmul fast float %1701, 0x401921FB60000000
  %1703 = fadd fast float %1702, %1684
  %1704 = call float @dx.op.unary.f32(i32 13, float %1703)  ; Sin(value)
  %1705 = call float @dx.op.unary.f32(i32 12, float %1703)  ; Cos(value)
  %1706 = fsub fast float -0.000000e+00, %1704
  %1707 = fadd fast float %1658, -5.000000e-01
  %1708 = fadd fast float %1659, -5.000000e-01
  %1709 = fmul fast float %1676, %1707
  %1710 = fmul fast float %1678, %1708
  %1711 = fadd fast float %1709, 5.000000e-01
  %1712 = fadd fast float %1710, 5.000000e-01
  %1713 = fmul fast float %1687, %1711
  %1714 = fmul fast float %1690, %1712
  %1715 = fmul fast float %1705, %1713
  %1716 = call float @dx.op.tertiary.f32(i32 46, float %1706, float %1714, float %1715)  ; FMad(a,b,c)
  %1717 = fmul fast float %1704, %1713
  %1718 = call float @dx.op.tertiary.f32(i32 46, float %1705, float %1714, float %1717)  ; FMad(a,b,c)
  %1719 = fadd fast float %1696, %1716
  %1720 = fadd fast float %1699, %1718
  %1721 = icmp ugt i32 %1670, 1
  %1722 = icmp ugt i32 %1668, 33554431
  %1723 = or i1 %1722, %1721
  br i1 %1723, label %1724, label %1749

; <label>:1724                                    ; preds = %1651
  %1725 = add i32 %63, 260
  %1726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.i32 %1726, 0
  %1728 = lshr i32 %1727, 16
  %1729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1728)  ; LegacyF16ToF32(value)
  %1730 = fmul fast float %1692, %1729
  %1731 = call float @dx.op.unary.f32(i32 22, float %1730)  ; Frc(value)
  %1732 = mul nuw nsw i32 %1670, %1671
  %1733 = uitofp i32 %1732 to float
  %1734 = fmul fast float %1731, %1733
  %1735 = call float @dx.op.unary.f32(i32 27, float %1734)  ; Round_ni(value)
  %1736 = fptoui float %1735 to i32
  %1737 = urem i32 %1736, %1670
  %1738 = udiv i32 %1736, %1671
  %1739 = call float @dx.op.unary.f32(i32 22, float %1719)  ; Frc(value)
  %1740 = call float @dx.op.unary.f32(i32 22, float %1720)  ; Frc(value)
  %1741 = uitofp i32 %1737 to float
  %1742 = uitofp i32 %1738 to float
  %1743 = fadd fast float %1739, %1741
  %1744 = fadd fast float %1740, %1742
  %1745 = uitofp i32 %1670 to float
  %1746 = uitofp i32 %1671 to float
  %1747 = fdiv fast float %1743, %1745
  %1748 = fdiv fast float %1744, %1746
  br label %1749

; <label>:1749                                    ; preds = %1724, %1651
  %1750 = phi float [ %1747, %1724 ], [ %1719, %1651 ]
  %1751 = phi float [ %1748, %1724 ], [ %1720, %1651 ]
  %1752 = and i32 %1645, 256
  %1753 = icmp eq i32 %1752, 0
  br i1 %1753, label %1800, label %1754

; <label>:1754                                    ; preds = %1749
  %1755 = add i32 %63, 496
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = add i32 %1757, 0
  %1759 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1758, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1760 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1759, %dx.types.Handle %118, float %1750, float %1751, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1761 = extractvalue %dx.types.ResRet.f32 %1760, 0
  %1762 = add i32 %63, 132
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = shl i32 %1764, 4
  %1766 = and i32 %1765, 32752
  %1767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1766)  ; LegacyF16ToF32(value)
  %1768 = lshr i32 %1764, 7
  %1769 = and i32 %1768, 32752
  %1770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1769)  ; LegacyF16ToF32(value)
  %1771 = fsub fast float 1.000000e+00, %595
  %1772 = call float @dx.op.binary.f32(i32 35, float %1771, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1773 = bitcast float %595 to i32
  %1774 = sitofp i32 %1773 to float
  %1775 = fadd fast float %1774, 0xC1CFBF8940000000
  %1776 = fmul fast float %1770, %1775
  %1777 = fadd fast float %1776, 0x41CFBF8940000000
  %1778 = fptosi float %1777 to i32
  %1779 = bitcast i32 %1778 to float
  %1780 = bitcast float %1772 to i32
  %1781 = sitofp i32 %1780 to float
  %1782 = fadd fast float %1781, 0xC1CFBF8940000000
  %1783 = fmul fast float %1782, %1770
  %1784 = fadd fast float %1783, 0x41CFBF8940000000
  %1785 = fptosi float %1784 to i32
  %1786 = bitcast i32 %1785 to float
  %1787 = fmul fast float %1779, %1767
  %1788 = fmul fast float %1786, %1767
  %1789 = fsub fast float %1772, %1787
  %1790 = fadd fast float %1788, %1772
  %1791 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1792 = call float @dx.op.unary.f32(i32 7, float %1790)  ; Saturate(value)
  %1793 = fsub fast float %1761, %1791
  %1794 = fsub fast float %1792, %1791
  %1795 = bitcast float %1794 to i32
  %1796 = sub nsw i32 2129859010, %1795
  %1797 = bitcast i32 %1796 to float
  %1798 = fmul fast float %1797, %1793
  %1799 = call float @dx.op.unary.f32(i32 7, float %1798)  ; Saturate(value)
  br label %1800

; <label>:1800                                    ; preds = %1754, %1749
  %1801 = phi float [ %1799, %1754 ], [ %595, %1749 ]
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1643, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = and i32 %1803, 128
  %1805 = icmp eq i32 %1804, 0
  br i1 %1805, label %1822, label %1806

; <label>:1806                                    ; preds = %1800
  %1807 = add i32 %63, 480
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = add i32 %1809, 0
  %1811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1810, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1812 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1811, %dx.types.Handle %118, float %1750, float %1751, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1813 = extractvalue %dx.types.ResRet.f32 %1812, 0
  %1814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1643, i32 undef)  ; BufferLoad(srv,index,wot)
  %1815 = extractvalue %dx.types.ResRet.i32 %1814, 0
  %1816 = and i32 %1815, 524288
  %1817 = icmp ne i32 %1816, 0
  %1818 = fcmp fast ogt float %1813, 0x3FE0101020000000
  %1819 = select i1 %1818, float 1.000000e+00, float 0.000000e+00
  %1820 = select i1 %1817, float %1819, float %1813
  %1821 = fmul fast float %1820, %1801
  br label %1822

; <label>:1822                                    ; preds = %1806, %1800
  %1823 = phi float [ %1821, %1806 ], [ %1801, %1800 ]
  %1824 = fcmp fast ult float %1823, 0x3F70101020000000
  br i1 %1824, label %2203, label %1825

; <label>:1825                                    ; preds = %1822
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1643, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = and i32 %1827, 16
  %1829 = icmp eq i32 %1828, 0
  br i1 %1829, label %2005, label %1830

; <label>:1830                                    ; preds = %1825
  %1831 = add i32 %63, 432
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = add i32 %1833, 0
  %1835 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1834, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1836 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1835, %dx.types.Handle %117, float %1750, float %1751, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1837 = extractvalue %dx.types.ResRet.f32 %1836, 0
  %1838 = extractvalue %dx.types.ResRet.f32 %1836, 1
  %1839 = extractvalue %dx.types.ResRet.f32 %1836, 2
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1643, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = and i32 %1841, 512
  %1843 = icmp eq i32 %1842, 0
  br i1 %1843, label %1852, label %1844

; <label>:1844                                    ; preds = %1830
  %1845 = add i32 %63, 512
  %1846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1845, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.i32 %1846, 0
  %1848 = add i32 %1847, 0
  %1849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1848, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1850 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1849, %dx.types.Handle %118, float %1750, float %1751, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1851 = extractvalue %dx.types.ResRet.f32 %1850, 0
  br label %1852

; <label>:1852                                    ; preds = %1844, %1830
  %1853 = phi float [ %1851, %1844 ], [ 1.000000e+00, %1830 ]
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1643, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = and i32 %1855, 33554432
  %1857 = icmp eq i32 %1856, 0
  br i1 %1857, label %1952, label %1858

; <label>:1858                                    ; preds = %1852
  %1859 = add i32 %63, 256
  %1860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.i32 %1860, 0
  %1862 = and i32 %1861, 65535
  %1863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1862)  ; LegacyF16ToF32(value)
  %1864 = lshr i32 %1861, 16
  %1865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1864)  ; LegacyF16ToF32(value)
  %1866 = add i32 %63, 260
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = and i32 %1868, 65535
  %1870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1869)  ; LegacyF16ToF32(value)
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = and i32 %1872, 255
  %1874 = uitofp i32 %1873 to float
  %1875 = fmul fast float %1874, 0x3F70101020000000
  %1876 = lshr i32 %1872, 8
  %1877 = and i32 %1876, 255
  %1878 = uitofp i32 %1877 to float
  %1879 = fmul fast float %1878, 0x3F70101020000000
  %1880 = lshr i32 %1872, 16
  %1881 = and i32 %1880, 255
  %1882 = uitofp i32 %1881 to float
  %1883 = fmul fast float %1882, 0x3F70101020000000
  %1884 = add i32 %63, 252
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = and i32 %1886, 255
  %1888 = uitofp i32 %1887 to float
  %1889 = fmul fast float %1888, 0x3F70101020000000
  %1890 = lshr i32 %1886, 8
  %1891 = and i32 %1890, 255
  %1892 = uitofp i32 %1891 to float
  %1893 = fmul fast float %1892, 0x3F70101020000000
  %1894 = lshr i32 %1886, 16
  %1895 = and i32 %1894, 255
  %1896 = uitofp i32 %1895 to float
  %1897 = fmul fast float %1896, 0x3F70101020000000
  %1898 = bitcast float %1837 to i32
  %1899 = ashr i32 %1898, 1
  %1900 = sub nsw i32 1597463174, %1899
  %1901 = bitcast i32 %1900 to float
  %1902 = fmul fast float %1837, 5.000000e-01
  %1903 = fmul fast float %1901, %1901
  %1904 = fmul fast float %1903, %1902
  %1905 = fsub fast float 1.500000e+00, %1904
  %1906 = fmul fast float %1901, %1837
  %1907 = fmul fast float %1906, %1905
  %1908 = bitcast float %1838 to i32
  %1909 = ashr i32 %1908, 1
  %1910 = sub nsw i32 1597463174, %1909
  %1911 = bitcast i32 %1910 to float
  %1912 = fmul fast float %1838, 5.000000e-01
  %1913 = fmul fast float %1911, %1911
  %1914 = fmul fast float %1913, %1912
  %1915 = fsub fast float 1.500000e+00, %1914
  %1916 = fmul fast float %1911, %1838
  %1917 = fmul fast float %1916, %1915
  %1918 = bitcast float %1839 to i32
  %1919 = ashr i32 %1918, 1
  %1920 = sub nsw i32 1597463174, %1919
  %1921 = bitcast i32 %1920 to float
  %1922 = fmul fast float %1839, 5.000000e-01
  %1923 = fmul fast float %1921, %1921
  %1924 = fmul fast float %1923, %1922
  %1925 = fsub fast float 1.500000e+00, %1924
  %1926 = fmul fast float %1921, %1839
  %1927 = fmul fast float %1926, %1925
  %1928 = fsub fast float %1907, %1889
  %1929 = fsub fast float %1917, %1893
  %1930 = fsub fast float %1927, %1897
  %1931 = fmul fast float %1928, %1863
  %1932 = fmul fast float %1929, %1865
  %1933 = fmul fast float %1930, %1870
  %1934 = fadd fast float %1931, %1875
  %1935 = fadd fast float %1932, %1879
  %1936 = fadd fast float %1933, %1883
  %1937 = call float @dx.op.unary.f32(i32 7, float %1934)  ; Saturate(value)
  %1938 = call float @dx.op.unary.f32(i32 7, float %1935)  ; Saturate(value)
  %1939 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1940 = fmul fast float %1937, %1937
  %1941 = fmul fast float %1938, %1938
  %1942 = fmul fast float %1939, %1939
  %1943 = fsub fast float %1940, %1837
  %1944 = fsub fast float %1941, %1838
  %1945 = fsub fast float %1942, %1839
  %1946 = fmul fast float %1943, %1853
  %1947 = fmul fast float %1944, %1853
  %1948 = fmul fast float %1945, %1853
  %1949 = fadd fast float %1946, %1837
  %1950 = fadd fast float %1947, %1838
  %1951 = fadd fast float %1948, %1839
  br label %2005

; <label>:1952                                    ; preds = %1852
  %1953 = and i32 %1855, 134217728
  %1954 = icmp eq i32 %1953, 0
  br i1 %1954, label %1989, label %1955

; <label>:1955                                    ; preds = %1952
  %1956 = call float @dx.op.unary.f32(i32 24, float %438)  ; Sqrt(value)
  %1957 = call float @dx.op.unary.f32(i32 24, float %439)  ; Sqrt(value)
  %1958 = call float @dx.op.unary.f32(i32 24, float %440)  ; Sqrt(value)
  %1959 = fadd fast float %1956, -5.000000e-01
  %1960 = fadd fast float %1957, -5.000000e-01
  %1961 = fadd fast float %1958, -5.000000e-01
  %1962 = fmul fast float %1959, %1853
  %1963 = fmul fast float %1960, %1853
  %1964 = fmul fast float %1961, %1853
  %1965 = fadd fast float %1962, 5.000000e-01
  %1966 = fadd fast float %1963, 5.000000e-01
  %1967 = fadd fast float %1964, 5.000000e-01
  %1968 = call float @dx.op.unary.f32(i32 24, float %1837)  ; Sqrt(value)
  %1969 = call float @dx.op.unary.f32(i32 24, float %1838)  ; Sqrt(value)
  %1970 = call float @dx.op.unary.f32(i32 24, float %1839)  ; Sqrt(value)
  %1971 = fmul fast float %1965, 2.000000e+00
  %1972 = fsub fast float 1.000000e+00, %1971
  %1973 = fmul fast float %1972, %1968
  %1974 = fadd fast float %1973, %1971
  %1975 = fmul fast float %1974, %1968
  %1976 = fmul fast float %1966, 2.000000e+00
  %1977 = fsub fast float 1.000000e+00, %1976
  %1978 = fmul fast float %1977, %1969
  %1979 = fadd fast float %1978, %1976
  %1980 = fmul fast float %1979, %1969
  %1981 = fmul fast float %1967, 2.000000e+00
  %1982 = fsub fast float 1.000000e+00, %1981
  %1983 = fmul fast float %1982, %1970
  %1984 = fadd fast float %1983, %1981
  %1985 = fmul fast float %1984, %1970
  %1986 = fmul fast float %1975, %1975
  %1987 = fmul fast float %1980, %1980
  %1988 = fmul fast float %1985, %1985
  br label %2005

; <label>:1989                                    ; preds = %1952
  %1990 = fmul fast float %438, %438
  %1991 = fmul fast float %439, %439
  %1992 = fmul fast float %440, %440
  %1993 = fadd fast float %1990, -1.000000e+00
  %1994 = fadd fast float %1991, -1.000000e+00
  %1995 = fadd fast float %1992, -1.000000e+00
  %1996 = fmul fast float %1853, %1993
  %1997 = fmul fast float %1853, %1994
  %1998 = fmul fast float %1853, %1995
  %1999 = fadd fast float %1996, 1.000000e+00
  %2000 = fadd fast float %1997, 1.000000e+00
  %2001 = fadd fast float %1998, 1.000000e+00
  %2002 = fmul fast float %1999, %1837
  %2003 = fmul fast float %2000, %1838
  %2004 = fmul fast float %2001, %1839
  br label %2005

; <label>:2005                                    ; preds = %1989, %1955, %1858, %1825
  %2006 = phi float [ %1949, %1858 ], [ %1986, %1955 ], [ %2002, %1989 ], [ 1.000000e+00, %1825 ]
  %2007 = phi float [ %1950, %1858 ], [ %1987, %1955 ], [ %2003, %1989 ], [ 1.000000e+00, %1825 ]
  %2008 = phi float [ %1951, %1858 ], [ %1988, %1955 ], [ %2004, %1989 ], [ 1.000000e+00, %1825 ]
  %2009 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2010 = extractvalue %dx.types.CBufRet.i32 %2009, 1
  %2011 = and i32 %2010, 1
  %2012 = icmp ne i32 %2011, 0
  %2013 = add i32 %63, 356
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = and i32 %2015, 32
  %2017 = icmp ne i32 %2016, 0
  %2018 = and i1 %2012, %2017
  %2019 = select i1 %2018, float 1.000000e+00, float %2006
  %2020 = select i1 %2018, float 0x3FD3333340000000, float %2007
  %2021 = select i1 %2018, float 0x3FD3333340000000, float %2008
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = and i32 %2023, 32
  %2025 = icmp eq i32 %2024, 0
  br i1 %2025, label %2098, label %2026

; <label>:2026                                    ; preds = %2005
  %2027 = add i32 %63, 124
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = add i32 %63, 448
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = add i32 %2032, 0
  %2034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2035 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2034, %dx.types.Handle %117, float %1750, float %1751, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2036 = extractvalue %dx.types.ResRet.f32 %2035, 0
  %2037 = extractvalue %dx.types.ResRet.f32 %2035, 1
  %2038 = extractvalue %dx.types.ResRet.f32 %2035, 2
  %2039 = extractvalue %dx.types.ResRet.f32 %2035, 3
  %2040 = and i32 %2029, 255
  %2041 = uitofp i32 %2040 to float
  %2042 = lshr i32 %2029, 8
  %2043 = and i32 %2042, 255
  %2044 = uitofp i32 %2043 to float
  %2045 = lshr i32 %2029, 16
  %2046 = and i32 %2045, 255
  %2047 = uitofp i32 %2046 to float
  %2048 = fmul fast float %2047, 0x3F70101000000000
  %2049 = fmul fast float %2036, %2041
  %2050 = fadd fast float %2049, %2044
  %2051 = fmul fast float %2050, 0x3F70101000000000
  %2052 = fadd fast float %2037, -5.000000e-01
  %2053 = fadd fast float %2039, -5.000000e-01
  %2054 = fmul fast float %2052, %2048
  %2055 = fmul fast float %2053, %2048
  %2056 = fadd fast float %2054, 5.000000e-01
  %2057 = fadd fast float %2055, 5.000000e-01
  %2058 = fmul fast float %2056, 2.000000e+00
  %2059 = fadd fast float %2058, -1.000000e+00
  %2060 = fmul fast float %2057, 2.000000e+00
  %2061 = fadd fast float %2060, -1.000000e+00
  %2062 = fadd fast float %2059, %2061
  %2063 = fmul fast float %2062, 5.000000e-01
  %2064 = fsub fast float %2059, %2061
  %2065 = fmul fast float %2064, 5.000000e-01
  %2066 = call float @dx.op.unary.f32(i32 6, float %2063)  ; FAbs(value)
  %2067 = fsub fast float 1.000000e+00, %2066
  %2068 = call float @dx.op.unary.f32(i32 6, float %2065)  ; FAbs(value)
  %2069 = fsub fast float %2067, %2068
  %2070 = call float @dx.op.dot3.f32(i32 55, float %2063, float %2065, float %2069, float %2063, float %2065, float %2069)  ; Dot3(ax,ay,az,bx,by,bz)
  %2071 = call float @dx.op.unary.f32(i32 25, float %2070)  ; Rsqrt(value)
  %2072 = fmul fast float %2063, %2071
  %2073 = fmul fast float %2065, %2071
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = and i32 %2075, 67108864
  %2077 = icmp eq i32 %2076, 0
  br i1 %2077, label %2094, label %2078

; <label>:2078                                    ; preds = %2026
  %2079 = add i32 %63, 312
  %2080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.i32 %2080, 0
  %2082 = and i32 %2081, 65535
  %2083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2082)  ; LegacyF16ToF32(value)
  %2084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.i32 %2084, 0
  %2086 = and i32 %2085, 65535
  %2087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2086)  ; LegacyF16ToF32(value)
  %2088 = lshr i32 %2081, 16
  %2089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2088)  ; LegacyF16ToF32(value)
  %2090 = fsub fast float %2051, %2089
  %2091 = fmul fast float %2090, %2083
  %2092 = fadd fast float %2091, %2087
  %2093 = call float @dx.op.unary.f32(i32 7, float %2092)  ; Saturate(value)
  br label %2094

; <label>:2094                                    ; preds = %2078, %2026
  %2095 = phi float [ %2093, %2078 ], [ %2051, %2026 ]
  %2096 = call float @dx.op.dot2.f32(i32 54, float %2072, float %2073, float %1654, float %1655)  ; Dot2(ax,ay,bx,by)
  %2097 = call float @dx.op.dot2.f32(i32 54, float %2072, float %2073, float %1656, float %1657)  ; Dot2(ax,ay,bx,by)
  br label %2098

; <label>:2098                                    ; preds = %2094, %2005
  %2099 = phi float [ %2095, %2094 ], [ 0x3FD6666660000000, %2005 ]
  %2100 = phi float [ %2096, %2094 ], [ 0.000000e+00, %2005 ]
  %2101 = phi float [ %2097, %2094 ], [ 0.000000e+00, %2005 ]
  %2102 = phi float [ %2038, %2094 ], [ 1.000000e+00, %2005 ]
  %2103 = add i32 %63, 128
  %2104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2103, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.i32 %2104, 0
  %2106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2107 = extractvalue %dx.types.ResRet.i32 %2106, 0
  %2108 = and i32 %2107, 3
  %2109 = icmp eq i32 %2108, 0
  br i1 %2109, label %2110, label %2127

; <label>:2110                                    ; preds = %2098
  %2111 = lshr i32 %2105, 8
  %2112 = and i32 %2111, 255
  %2113 = uitofp i32 %2112 to float
  %2114 = call float @dx.op.dot3.f32(i32 55, float %2019, float %2020, float %2021, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2115 = fmul fast float %2113, %2114
  %2116 = and i32 %2105, 255
  %2117 = uitofp i32 %2116 to float
  %2118 = fadd fast float %2115, %2117
  %2119 = fmul fast float %2118, 0x3F70101020000000
  %2120 = call float @dx.op.unary.f32(i32 7, float %2119)  ; Saturate(value)
  %2121 = and i32 %2107, 16
  %2122 = icmp ne i32 %2121, 0
  %2123 = select i1 %2122, float %1823, float 0.000000e+00
  %2124 = fsub fast float %2120, %1641
  %2125 = fmul fast float %2123, %2124
  %2126 = fadd fast float %2125, %1641
  br label %2127

; <label>:2127                                    ; preds = %2110, %2098
  %2128 = phi float [ %1641, %2098 ], [ %2126, %2110 ]
  %2129 = and i32 %2107, 12
  %2130 = icmp eq i32 %2129, 12
  br i1 %2130, label %2203, label %2131

; <label>:2131                                    ; preds = %2127
  %2132 = and i32 %2107, 2097184
  %2133 = icmp eq i32 %2132, 2097184
  %2134 = select i1 %2133, float %1823, float 0.000000e+00
  %2135 = and i32 %2107, 4194336
  %2136 = icmp eq i32 %2135, 4194336
  %2137 = select i1 %2136, float %1823, float 0.000000e+00
  %2138 = and i32 %2107, 8388640
  %2139 = icmp eq i32 %2138, 8388640
  %2140 = select i1 %2139, float %1823, float 0.000000e+00
  %2141 = icmp eq i32 %2129, 0
  br i1 %2141, label %2142, label %2155

; <label>:2142                                    ; preds = %2131
  %2143 = fsub fast float %2100, %1637
  %2144 = fsub fast float %2101, %1638
  %2145 = fmul fast float %2134, %2143
  %2146 = fmul fast float %2134, %2144
  %2147 = fadd fast float %2145, %1637
  %2148 = fadd fast float %2146, %1638
  %2149 = fsub fast float %2102, %1640
  %2150 = fmul fast float %2137, %2149
  %2151 = fadd fast float %2150, %1640
  %2152 = fsub fast float %2099, %1639
  %2153 = fmul fast float %2140, %2152
  %2154 = fadd fast float %2153, %1639
  br label %2203

; <label>:2155                                    ; preds = %2131
  %2156 = icmp eq i32 %2129, 4
  br i1 %2156, label %2157, label %2189

; <label>:2157                                    ; preds = %2155
  %2158 = fmul fast float %2134, %2100
  %2159 = fmul fast float %2134, %2101
  %2160 = fadd fast float %2158, %1637
  %2161 = fadd fast float %2159, %1638
  %2162 = call float @dx.op.binary.f32(i32 36, float %1640, float %2102)  ; FMin(a,b)
  %2163 = fsub fast float %2162, %1640
  %2164 = fmul fast float %2163, %2137
  %2165 = fadd fast float %2164, %1640
  %2166 = fadd fast float %2099, %1639
  %2167 = fmul fast float %2166, 0x3FF337FAE0000000
  %2168 = fmul fast float %1639, %1639
  %2169 = fmul fast float %2099, %2099
  %2170 = fadd fast float %2169, %2168
  %2171 = fmul fast float %2170, 0x3FE5152B00000000
  %2172 = fmul fast float %1639, 0xBFCC1F85E0000000
  %2173 = fmul fast float %2172, %2099
  %2174 = fadd fast float %2173, 0xBFE1363700000000
  %2175 = fadd fast float %2174, %2167
  %2176 = fsub fast float %2175, %2171
  %2177 = fmul fast float %2166, 0x3FBA6F0D00000000
  %2178 = fmul fast float %2170, 0x3FD0432880000000
  %2179 = fmul fast float %1639, 0xBFEF110800000000
  %2180 = fmul fast float %2179, %2099
  %2181 = fadd fast float %2180, 1.000000e+00
  %2182 = fsub fast float %2181, %2177
  %2183 = fadd fast float %2182, %2178
  %2184 = fdiv fast float %2176, %2183
  %2185 = call float @dx.op.unary.f32(i32 7, float %2184)  ; Saturate(value)
  %2186 = fsub fast float %2185, %1639
  %2187 = fmul fast float %2186, %2140
  %2188 = fadd fast float %2187, %1639
  br label %2203

; <label>:2189                                    ; preds = %2155
  %2190 = icmp eq i32 %2129, 8
  br i1 %2190, label %2191, label %2203

; <label>:2191                                    ; preds = %2189
  %2192 = fmul fast float %2134, %2100
  %2193 = fmul fast float %2134, %2101
  %2194 = fadd fast float %2192, %1637
  %2195 = fadd fast float %2193, %1638
  %2196 = call float @dx.op.binary.f32(i32 36, float %1640, float %2102)  ; FMin(a,b)
  %2197 = fsub fast float %2196, %1640
  %2198 = fmul fast float %2197, %2137
  %2199 = fadd fast float %2198, %1640
  %2200 = fsub fast float %2099, %1639
  %2201 = fmul fast float %2140, %2200
  %2202 = fadd fast float %2201, %1639
  br label %2203

; <label>:2203                                    ; preds = %2191, %2189, %2157, %2142, %2127, %1822, %1642, %1636
  %2204 = phi float [ %1637, %2127 ], [ %1637, %1822 ], [ %1637, %1636 ], [ %2194, %2191 ], [ %1637, %2189 ], [ %2160, %2157 ], [ %2147, %2142 ], [ %1637, %1642 ]
  %2205 = phi float [ %1638, %2127 ], [ %1638, %1822 ], [ %1638, %1636 ], [ %2195, %2191 ], [ %1638, %2189 ], [ %2161, %2157 ], [ %2148, %2142 ], [ %1638, %1642 ]
  %2206 = phi float [ %1639, %2127 ], [ %1639, %1822 ], [ %1639, %1636 ], [ %2202, %2191 ], [ %1639, %2189 ], [ %2188, %2157 ], [ %2154, %2142 ], [ %1639, %1642 ]
  %2207 = phi float [ %1640, %2127 ], [ %1640, %1822 ], [ %1640, %1636 ], [ %2199, %2191 ], [ %1640, %2189 ], [ %2165, %2157 ], [ %2151, %2142 ], [ %1640, %1642 ]
  %2208 = phi float [ %2128, %2127 ], [ %1641, %1822 ], [ %1641, %1636 ], [ %2128, %2191 ], [ %2128, %2189 ], [ %2128, %2157 ], [ %2128, %2142 ], [ %1641, %1642 ]
  br i1 %545, label %2770, label %2209

; <label>:2209                                    ; preds = %2203
  %2210 = add i32 %63, 72
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = add i32 %63, 76
  %2214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2213, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.i32 %2214, 0
  %2216 = or i32 %2215, %2212
  %2217 = icmp eq i32 %2216, 0
  br i1 %2217, label %2770, label %2218

; <label>:2218                                    ; preds = %2209
  %2219 = and i32 %2212, 262144
  %2220 = icmp ne i32 %2219, 0
  %2221 = select i1 %2220, float %71, float 1.000000e+00
  %2222 = select i1 %2220, float %72, float 0.000000e+00
  %2223 = select i1 %2220, float %73, float 0.000000e+00
  %2224 = select i1 %2220, float %74, float 1.000000e+00
  %2225 = select i1 %2220, float %75, float %99
  %2226 = select i1 %2220, float %76, float %100
  %2227 = add i32 %63, 332
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = lshr i32 %2229, 16
  %2231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2230)  ; LegacyF16ToF32(value)
  %2232 = fmul fast float %2231, 0x3F50624DE0000000
  %2233 = add i32 %63, 136
  %2234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2233, i32 undef)  ; BufferLoad(srv,index,wot)
  %2235 = extractvalue %dx.types.ResRet.i32 %2234, 0
  %2236 = lshr i32 %2235, 16
  %2237 = and i32 %2236, 255
  %2238 = lshr i32 %2235, 24
  %2239 = add i32 %63, 340
  %2240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2241 = extractvalue %dx.types.ResRet.i32 %2240, 0
  %2242 = and i32 %2241, 65535
  %2243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2242)  ; LegacyF16ToF32(value)
  %2244 = lshr i32 %2241, 16
  %2245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2244)  ; LegacyF16ToF32(value)
  %2246 = add i32 %63, 80
  %2247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2246, i32 undef)  ; BufferLoad(srv,index,wot)
  %2248 = extractvalue %dx.types.ResRet.i32 %2247, 0
  %2249 = lshr i32 %2248, 22
  %2250 = shl nuw nsw i32 %2249, 5
  %2251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2250)  ; LegacyF16ToF32(value)
  %2252 = shl i32 %2248, 4
  %2253 = and i32 %2252, 32752
  %2254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2253)  ; LegacyF16ToF32(value)
  %2255 = lshr i32 %2248, 7
  %2256 = and i32 %2255, 32752
  %2257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2256)  ; LegacyF16ToF32(value)
  %2258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2259 = extractvalue %dx.types.CBufRet.f32 %2258, 3
  %2260 = fmul fast float %2259, 1.000000e+03
  %2261 = fmul fast float %2260, %534
  %2262 = call float @dx.op.unary.f32(i32 22, float %2261)  ; Frc(value)
  %2263 = fadd fast float %2262, %522
  %2264 = fmul fast float %2260, %536
  %2265 = call float @dx.op.unary.f32(i32 22, float %2264)  ; Frc(value)
  %2266 = fadd fast float %2265, %523
  %2267 = fmul fast float %2232, %2260
  %2268 = call float @dx.op.unary.f32(i32 22, float %2267)  ; Frc(value)
  %2269 = fmul fast float %2268, 0x401921FB60000000
  %2270 = fadd fast float %2269, %2251
  %2271 = call float @dx.op.unary.f32(i32 13, float %2270)  ; Sin(value)
  %2272 = call float @dx.op.unary.f32(i32 12, float %2270)  ; Cos(value)
  %2273 = fsub fast float -0.000000e+00, %2271
  %2274 = fadd fast float %2225, -5.000000e-01
  %2275 = fadd fast float %2226, -5.000000e-01
  %2276 = fmul fast float %2243, %2274
  %2277 = fmul fast float %2245, %2275
  %2278 = fadd fast float %2276, 5.000000e-01
  %2279 = fadd fast float %2277, 5.000000e-01
  %2280 = fmul fast float %2254, %2278
  %2281 = fmul fast float %2257, %2279
  %2282 = fmul fast float %2272, %2280
  %2283 = call float @dx.op.tertiary.f32(i32 46, float %2273, float %2281, float %2282)  ; FMad(a,b,c)
  %2284 = fmul fast float %2271, %2280
  %2285 = call float @dx.op.tertiary.f32(i32 46, float %2272, float %2281, float %2284)  ; FMad(a,b,c)
  %2286 = fadd fast float %2263, %2283
  %2287 = fadd fast float %2266, %2285
  %2288 = icmp ugt i32 %2237, 1
  %2289 = icmp ugt i32 %2235, 33554431
  %2290 = or i1 %2289, %2288
  br i1 %2290, label %2291, label %2316

; <label>:2291                                    ; preds = %2218
  %2292 = add i32 %63, 276
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = lshr i32 %2294, 16
  %2296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2295)  ; LegacyF16ToF32(value)
  %2297 = fmul fast float %2259, %2296
  %2298 = call float @dx.op.unary.f32(i32 22, float %2297)  ; Frc(value)
  %2299 = mul nuw nsw i32 %2237, %2238
  %2300 = uitofp i32 %2299 to float
  %2301 = fmul fast float %2298, %2300
  %2302 = call float @dx.op.unary.f32(i32 27, float %2301)  ; Round_ni(value)
  %2303 = fptoui float %2302 to i32
  %2304 = urem i32 %2303, %2237
  %2305 = udiv i32 %2303, %2238
  %2306 = call float @dx.op.unary.f32(i32 22, float %2286)  ; Frc(value)
  %2307 = call float @dx.op.unary.f32(i32 22, float %2287)  ; Frc(value)
  %2308 = uitofp i32 %2304 to float
  %2309 = uitofp i32 %2305 to float
  %2310 = fadd fast float %2306, %2308
  %2311 = fadd fast float %2307, %2309
  %2312 = uitofp i32 %2237 to float
  %2313 = uitofp i32 %2238 to float
  %2314 = fdiv fast float %2310, %2312
  %2315 = fdiv fast float %2311, %2313
  br label %2316

; <label>:2316                                    ; preds = %2291, %2218
  %2317 = phi float [ %2314, %2291 ], [ %2286, %2218 ]
  %2318 = phi float [ %2315, %2291 ], [ %2287, %2218 ]
  %2319 = and i32 %2212, 256
  %2320 = icmp eq i32 %2319, 0
  br i1 %2320, label %2367, label %2321

; <label>:2321                                    ; preds = %2316
  %2322 = add i32 %63, 500
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = add i32 %2324, 0
  %2326 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2325, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2327 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2326, %dx.types.Handle %118, float %2317, float %2318, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2328 = extractvalue %dx.types.ResRet.f32 %2327, 0
  %2329 = add i32 %63, 148
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2329, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = shl i32 %2331, 4
  %2333 = and i32 %2332, 32752
  %2334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2333)  ; LegacyF16ToF32(value)
  %2335 = lshr i32 %2331, 7
  %2336 = and i32 %2335, 32752
  %2337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2336)  ; LegacyF16ToF32(value)
  %2338 = fsub fast float 1.000000e+00, %594
  %2339 = call float @dx.op.binary.f32(i32 35, float %2338, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2340 = bitcast float %594 to i32
  %2341 = sitofp i32 %2340 to float
  %2342 = fadd fast float %2341, 0xC1CFBF8940000000
  %2343 = fmul fast float %2337, %2342
  %2344 = fadd fast float %2343, 0x41CFBF8940000000
  %2345 = fptosi float %2344 to i32
  %2346 = bitcast i32 %2345 to float
  %2347 = bitcast float %2339 to i32
  %2348 = sitofp i32 %2347 to float
  %2349 = fadd fast float %2348, 0xC1CFBF8940000000
  %2350 = fmul fast float %2349, %2337
  %2351 = fadd fast float %2350, 0x41CFBF8940000000
  %2352 = fptosi float %2351 to i32
  %2353 = bitcast i32 %2352 to float
  %2354 = fmul fast float %2346, %2334
  %2355 = fmul fast float %2353, %2334
  %2356 = fsub fast float %2339, %2354
  %2357 = fadd fast float %2355, %2339
  %2358 = call float @dx.op.unary.f32(i32 7, float %2356)  ; Saturate(value)
  %2359 = call float @dx.op.unary.f32(i32 7, float %2357)  ; Saturate(value)
  %2360 = fsub fast float %2328, %2358
  %2361 = fsub fast float %2359, %2358
  %2362 = bitcast float %2361 to i32
  %2363 = sub nsw i32 2129859010, %2362
  %2364 = bitcast i32 %2363 to float
  %2365 = fmul fast float %2364, %2360
  %2366 = call float @dx.op.unary.f32(i32 7, float %2365)  ; Saturate(value)
  br label %2367

; <label>:2367                                    ; preds = %2321, %2316
  %2368 = phi float [ %2366, %2321 ], [ %594, %2316 ]
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = and i32 %2370, 128
  %2372 = icmp eq i32 %2371, 0
  br i1 %2372, label %2389, label %2373

; <label>:2373                                    ; preds = %2367
  %2374 = add i32 %63, 484
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2374, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = add i32 %2376, 0
  %2378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2377, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2379 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2378, %dx.types.Handle %118, float %2317, float %2318, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2380 = extractvalue %dx.types.ResRet.f32 %2379, 0
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = and i32 %2382, 524288
  %2384 = icmp ne i32 %2383, 0
  %2385 = fcmp fast ogt float %2380, 0x3FE0101020000000
  %2386 = select i1 %2385, float 1.000000e+00, float 0.000000e+00
  %2387 = select i1 %2384, float %2386, float %2380
  %2388 = fmul fast float %2387, %2368
  br label %2389

; <label>:2389                                    ; preds = %2373, %2367
  %2390 = phi float [ %2388, %2373 ], [ %2368, %2367 ]
  %2391 = fcmp fast ult float %2390, 0x3F70101020000000
  br i1 %2391, label %2770, label %2392

; <label>:2392                                    ; preds = %2389
  %2393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2394 = extractvalue %dx.types.ResRet.i32 %2393, 0
  %2395 = and i32 %2394, 16
  %2396 = icmp eq i32 %2395, 0
  br i1 %2396, label %2572, label %2397

; <label>:2397                                    ; preds = %2392
  %2398 = add i32 %63, 436
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2398, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = add i32 %2400, 0
  %2402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2401, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2403 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2402, %dx.types.Handle %117, float %2317, float %2318, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2404 = extractvalue %dx.types.ResRet.f32 %2403, 0
  %2405 = extractvalue %dx.types.ResRet.f32 %2403, 1
  %2406 = extractvalue %dx.types.ResRet.f32 %2403, 2
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = and i32 %2408, 512
  %2410 = icmp eq i32 %2409, 0
  br i1 %2410, label %2419, label %2411

; <label>:2411                                    ; preds = %2397
  %2412 = add i32 %63, 516
  %2413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2412, i32 undef)  ; BufferLoad(srv,index,wot)
  %2414 = extractvalue %dx.types.ResRet.i32 %2413, 0
  %2415 = add i32 %2414, 0
  %2416 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2415, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2417 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2416, %dx.types.Handle %118, float %2317, float %2318, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2418 = extractvalue %dx.types.ResRet.f32 %2417, 0
  br label %2419

; <label>:2419                                    ; preds = %2411, %2397
  %2420 = phi float [ %2418, %2411 ], [ 1.000000e+00, %2397 ]
  %2421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2422 = extractvalue %dx.types.ResRet.i32 %2421, 0
  %2423 = and i32 %2422, 33554432
  %2424 = icmp eq i32 %2423, 0
  br i1 %2424, label %2519, label %2425

; <label>:2425                                    ; preds = %2419
  %2426 = add i32 %63, 272
  %2427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2426, i32 undef)  ; BufferLoad(srv,index,wot)
  %2428 = extractvalue %dx.types.ResRet.i32 %2427, 0
  %2429 = and i32 %2428, 65535
  %2430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2429)  ; LegacyF16ToF32(value)
  %2431 = lshr i32 %2428, 16
  %2432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2431)  ; LegacyF16ToF32(value)
  %2433 = add i32 %63, 276
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = and i32 %2435, 65535
  %2437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2436)  ; LegacyF16ToF32(value)
  %2438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %2439 = extractvalue %dx.types.ResRet.i32 %2438, 0
  %2440 = and i32 %2439, 255
  %2441 = uitofp i32 %2440 to float
  %2442 = fmul fast float %2441, 0x3F70101020000000
  %2443 = lshr i32 %2439, 8
  %2444 = and i32 %2443, 255
  %2445 = uitofp i32 %2444 to float
  %2446 = fmul fast float %2445, 0x3F70101020000000
  %2447 = lshr i32 %2439, 16
  %2448 = and i32 %2447, 255
  %2449 = uitofp i32 %2448 to float
  %2450 = fmul fast float %2449, 0x3F70101020000000
  %2451 = add i32 %63, 268
  %2452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2451, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.i32 %2452, 0
  %2454 = and i32 %2453, 255
  %2455 = uitofp i32 %2454 to float
  %2456 = fmul fast float %2455, 0x3F70101020000000
  %2457 = lshr i32 %2453, 8
  %2458 = and i32 %2457, 255
  %2459 = uitofp i32 %2458 to float
  %2460 = fmul fast float %2459, 0x3F70101020000000
  %2461 = lshr i32 %2453, 16
  %2462 = and i32 %2461, 255
  %2463 = uitofp i32 %2462 to float
  %2464 = fmul fast float %2463, 0x3F70101020000000
  %2465 = bitcast float %2404 to i32
  %2466 = ashr i32 %2465, 1
  %2467 = sub nsw i32 1597463174, %2466
  %2468 = bitcast i32 %2467 to float
  %2469 = fmul fast float %2404, 5.000000e-01
  %2470 = fmul fast float %2468, %2468
  %2471 = fmul fast float %2470, %2469
  %2472 = fsub fast float 1.500000e+00, %2471
  %2473 = fmul fast float %2468, %2404
  %2474 = fmul fast float %2473, %2472
  %2475 = bitcast float %2405 to i32
  %2476 = ashr i32 %2475, 1
  %2477 = sub nsw i32 1597463174, %2476
  %2478 = bitcast i32 %2477 to float
  %2479 = fmul fast float %2405, 5.000000e-01
  %2480 = fmul fast float %2478, %2478
  %2481 = fmul fast float %2480, %2479
  %2482 = fsub fast float 1.500000e+00, %2481
  %2483 = fmul fast float %2478, %2405
  %2484 = fmul fast float %2483, %2482
  %2485 = bitcast float %2406 to i32
  %2486 = ashr i32 %2485, 1
  %2487 = sub nsw i32 1597463174, %2486
  %2488 = bitcast i32 %2487 to float
  %2489 = fmul fast float %2406, 5.000000e-01
  %2490 = fmul fast float %2488, %2488
  %2491 = fmul fast float %2490, %2489
  %2492 = fsub fast float 1.500000e+00, %2491
  %2493 = fmul fast float %2488, %2406
  %2494 = fmul fast float %2493, %2492
  %2495 = fsub fast float %2474, %2456
  %2496 = fsub fast float %2484, %2460
  %2497 = fsub fast float %2494, %2464
  %2498 = fmul fast float %2495, %2430
  %2499 = fmul fast float %2496, %2432
  %2500 = fmul fast float %2497, %2437
  %2501 = fadd fast float %2498, %2442
  %2502 = fadd fast float %2499, %2446
  %2503 = fadd fast float %2500, %2450
  %2504 = call float @dx.op.unary.f32(i32 7, float %2501)  ; Saturate(value)
  %2505 = call float @dx.op.unary.f32(i32 7, float %2502)  ; Saturate(value)
  %2506 = call float @dx.op.unary.f32(i32 7, float %2503)  ; Saturate(value)
  %2507 = fmul fast float %2504, %2504
  %2508 = fmul fast float %2505, %2505
  %2509 = fmul fast float %2506, %2506
  %2510 = fsub fast float %2507, %2404
  %2511 = fsub fast float %2508, %2405
  %2512 = fsub fast float %2509, %2406
  %2513 = fmul fast float %2510, %2420
  %2514 = fmul fast float %2511, %2420
  %2515 = fmul fast float %2512, %2420
  %2516 = fadd fast float %2513, %2404
  %2517 = fadd fast float %2514, %2405
  %2518 = fadd fast float %2515, %2406
  br label %2572

; <label>:2519                                    ; preds = %2419
  %2520 = and i32 %2422, 134217728
  %2521 = icmp eq i32 %2520, 0
  br i1 %2521, label %2556, label %2522

; <label>:2522                                    ; preds = %2519
  %2523 = call float @dx.op.unary.f32(i32 24, float %510)  ; Sqrt(value)
  %2524 = call float @dx.op.unary.f32(i32 24, float %511)  ; Sqrt(value)
  %2525 = call float @dx.op.unary.f32(i32 24, float %512)  ; Sqrt(value)
  %2526 = fadd fast float %2523, -5.000000e-01
  %2527 = fadd fast float %2524, -5.000000e-01
  %2528 = fadd fast float %2525, -5.000000e-01
  %2529 = fmul fast float %2526, %2420
  %2530 = fmul fast float %2527, %2420
  %2531 = fmul fast float %2528, %2420
  %2532 = fadd fast float %2529, 5.000000e-01
  %2533 = fadd fast float %2530, 5.000000e-01
  %2534 = fadd fast float %2531, 5.000000e-01
  %2535 = call float @dx.op.unary.f32(i32 24, float %2404)  ; Sqrt(value)
  %2536 = call float @dx.op.unary.f32(i32 24, float %2405)  ; Sqrt(value)
  %2537 = call float @dx.op.unary.f32(i32 24, float %2406)  ; Sqrt(value)
  %2538 = fmul fast float %2532, 2.000000e+00
  %2539 = fsub fast float 1.000000e+00, %2538
  %2540 = fmul fast float %2539, %2535
  %2541 = fadd fast float %2540, %2538
  %2542 = fmul fast float %2541, %2535
  %2543 = fmul fast float %2533, 2.000000e+00
  %2544 = fsub fast float 1.000000e+00, %2543
  %2545 = fmul fast float %2544, %2536
  %2546 = fadd fast float %2545, %2543
  %2547 = fmul fast float %2546, %2536
  %2548 = fmul fast float %2534, 2.000000e+00
  %2549 = fsub fast float 1.000000e+00, %2548
  %2550 = fmul fast float %2549, %2537
  %2551 = fadd fast float %2550, %2548
  %2552 = fmul fast float %2551, %2537
  %2553 = fmul fast float %2542, %2542
  %2554 = fmul fast float %2547, %2547
  %2555 = fmul fast float %2552, %2552
  br label %2572

; <label>:2556                                    ; preds = %2519
  %2557 = fmul fast float %510, %510
  %2558 = fmul fast float %511, %511
  %2559 = fmul fast float %512, %512
  %2560 = fadd fast float %2557, -1.000000e+00
  %2561 = fadd fast float %2558, -1.000000e+00
  %2562 = fadd fast float %2559, -1.000000e+00
  %2563 = fmul fast float %2420, %2560
  %2564 = fmul fast float %2420, %2561
  %2565 = fmul fast float %2420, %2562
  %2566 = fadd fast float %2563, 1.000000e+00
  %2567 = fadd fast float %2564, 1.000000e+00
  %2568 = fadd fast float %2565, 1.000000e+00
  %2569 = fmul fast float %2566, %2404
  %2570 = fmul fast float %2567, %2405
  %2571 = fmul fast float %2568, %2406
  br label %2572

; <label>:2572                                    ; preds = %2556, %2522, %2425, %2392
  %2573 = phi float [ %2516, %2425 ], [ %2553, %2522 ], [ %2569, %2556 ], [ 1.000000e+00, %2392 ]
  %2574 = phi float [ %2517, %2425 ], [ %2554, %2522 ], [ %2570, %2556 ], [ 1.000000e+00, %2392 ]
  %2575 = phi float [ %2518, %2425 ], [ %2555, %2522 ], [ %2571, %2556 ], [ 1.000000e+00, %2392 ]
  %2576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2577 = extractvalue %dx.types.CBufRet.i32 %2576, 1
  %2578 = and i32 %2577, 1
  %2579 = icmp ne i32 %2578, 0
  %2580 = add i32 %63, 356
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = and i32 %2582, 32
  %2584 = icmp ne i32 %2583, 0
  %2585 = and i1 %2579, %2584
  %2586 = select i1 %2585, float 1.000000e+00, float %2573
  %2587 = select i1 %2585, float 0x3FD3333340000000, float %2574
  %2588 = select i1 %2585, float 0x3FD3333340000000, float %2575
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = and i32 %2590, 32
  %2592 = icmp eq i32 %2591, 0
  br i1 %2592, label %2665, label %2593

; <label>:2593                                    ; preds = %2572
  %2594 = add i32 %63, 140
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = add i32 %63, 452
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = add i32 %2599, 0
  %2601 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2600, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2602 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2601, %dx.types.Handle %117, float %2317, float %2318, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2603 = extractvalue %dx.types.ResRet.f32 %2602, 0
  %2604 = extractvalue %dx.types.ResRet.f32 %2602, 1
  %2605 = extractvalue %dx.types.ResRet.f32 %2602, 2
  %2606 = extractvalue %dx.types.ResRet.f32 %2602, 3
  %2607 = and i32 %2596, 255
  %2608 = uitofp i32 %2607 to float
  %2609 = lshr i32 %2596, 8
  %2610 = and i32 %2609, 255
  %2611 = uitofp i32 %2610 to float
  %2612 = lshr i32 %2596, 16
  %2613 = and i32 %2612, 255
  %2614 = uitofp i32 %2613 to float
  %2615 = fmul fast float %2614, 0x3F70101000000000
  %2616 = fmul fast float %2603, %2608
  %2617 = fadd fast float %2616, %2611
  %2618 = fmul fast float %2617, 0x3F70101000000000
  %2619 = fadd fast float %2604, -5.000000e-01
  %2620 = fadd fast float %2606, -5.000000e-01
  %2621 = fmul fast float %2619, %2615
  %2622 = fmul fast float %2620, %2615
  %2623 = fadd fast float %2621, 5.000000e-01
  %2624 = fadd fast float %2622, 5.000000e-01
  %2625 = fmul fast float %2623, 2.000000e+00
  %2626 = fadd fast float %2625, -1.000000e+00
  %2627 = fmul fast float %2624, 2.000000e+00
  %2628 = fadd fast float %2627, -1.000000e+00
  %2629 = fadd fast float %2626, %2628
  %2630 = fmul fast float %2629, 5.000000e-01
  %2631 = fsub fast float %2626, %2628
  %2632 = fmul fast float %2631, 5.000000e-01
  %2633 = call float @dx.op.unary.f32(i32 6, float %2630)  ; FAbs(value)
  %2634 = fsub fast float 1.000000e+00, %2633
  %2635 = call float @dx.op.unary.f32(i32 6, float %2632)  ; FAbs(value)
  %2636 = fsub fast float %2634, %2635
  %2637 = call float @dx.op.dot3.f32(i32 55, float %2630, float %2632, float %2636, float %2630, float %2632, float %2636)  ; Dot3(ax,ay,az,bx,by,bz)
  %2638 = call float @dx.op.unary.f32(i32 25, float %2637)  ; Rsqrt(value)
  %2639 = fmul fast float %2630, %2638
  %2640 = fmul fast float %2632, %2638
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = and i32 %2642, 67108864
  %2644 = icmp eq i32 %2643, 0
  br i1 %2644, label %2661, label %2645

; <label>:2645                                    ; preds = %2593
  %2646 = add i32 %63, 328
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2646, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = and i32 %2648, 65535
  %2650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2649)  ; LegacyF16ToF32(value)
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = and i32 %2652, 65535
  %2654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2653)  ; LegacyF16ToF32(value)
  %2655 = lshr i32 %2648, 16
  %2656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2655)  ; LegacyF16ToF32(value)
  %2657 = fsub fast float %2618, %2656
  %2658 = fmul fast float %2657, %2650
  %2659 = fadd fast float %2658, %2654
  %2660 = call float @dx.op.unary.f32(i32 7, float %2659)  ; Saturate(value)
  br label %2661

; <label>:2661                                    ; preds = %2645, %2593
  %2662 = phi float [ %2660, %2645 ], [ %2618, %2593 ]
  %2663 = call float @dx.op.dot2.f32(i32 54, float %2639, float %2640, float %2221, float %2222)  ; Dot2(ax,ay,bx,by)
  %2664 = call float @dx.op.dot2.f32(i32 54, float %2639, float %2640, float %2223, float %2224)  ; Dot2(ax,ay,bx,by)
  br label %2665

; <label>:2665                                    ; preds = %2661, %2572
  %2666 = phi float [ %2662, %2661 ], [ 0x3FD6666660000000, %2572 ]
  %2667 = phi float [ %2663, %2661 ], [ 0.000000e+00, %2572 ]
  %2668 = phi float [ %2664, %2661 ], [ 0.000000e+00, %2572 ]
  %2669 = phi float [ %2605, %2661 ], [ 1.000000e+00, %2572 ]
  %2670 = add i32 %63, 144
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2674 = extractvalue %dx.types.ResRet.i32 %2673, 0
  %2675 = and i32 %2674, 3
  %2676 = icmp eq i32 %2675, 0
  br i1 %2676, label %2677, label %2694

; <label>:2677                                    ; preds = %2665
  %2678 = lshr i32 %2672, 8
  %2679 = and i32 %2678, 255
  %2680 = uitofp i32 %2679 to float
  %2681 = call float @dx.op.dot3.f32(i32 55, float %2586, float %2587, float %2588, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2682 = fmul fast float %2680, %2681
  %2683 = and i32 %2672, 255
  %2684 = uitofp i32 %2683 to float
  %2685 = fadd fast float %2682, %2684
  %2686 = fmul fast float %2685, 0x3F70101020000000
  %2687 = call float @dx.op.unary.f32(i32 7, float %2686)  ; Saturate(value)
  %2688 = and i32 %2674, 16
  %2689 = icmp ne i32 %2688, 0
  %2690 = select i1 %2689, float %2390, float 0.000000e+00
  %2691 = fsub fast float %2687, %2208
  %2692 = fmul fast float %2690, %2691
  %2693 = fadd fast float %2692, %2208
  br label %2694

; <label>:2694                                    ; preds = %2677, %2665
  %2695 = phi float [ %2208, %2665 ], [ %2693, %2677 ]
  %2696 = and i32 %2674, 12
  %2697 = icmp eq i32 %2696, 12
  br i1 %2697, label %2770, label %2698

; <label>:2698                                    ; preds = %2694
  %2699 = and i32 %2674, 2097184
  %2700 = icmp eq i32 %2699, 2097184
  %2701 = select i1 %2700, float %2390, float 0.000000e+00
  %2702 = and i32 %2674, 4194336
  %2703 = icmp eq i32 %2702, 4194336
  %2704 = select i1 %2703, float %2390, float 0.000000e+00
  %2705 = and i32 %2674, 8388640
  %2706 = icmp eq i32 %2705, 8388640
  %2707 = select i1 %2706, float %2390, float 0.000000e+00
  %2708 = icmp eq i32 %2696, 0
  br i1 %2708, label %2709, label %2722

; <label>:2709                                    ; preds = %2698
  %2710 = fsub fast float %2667, %2204
  %2711 = fsub fast float %2668, %2205
  %2712 = fmul fast float %2701, %2710
  %2713 = fmul fast float %2701, %2711
  %2714 = fadd fast float %2712, %2204
  %2715 = fadd fast float %2713, %2205
  %2716 = fsub fast float %2669, %2207
  %2717 = fmul fast float %2704, %2716
  %2718 = fadd fast float %2717, %2207
  %2719 = fsub fast float %2666, %2206
  %2720 = fmul fast float %2707, %2719
  %2721 = fadd fast float %2720, %2206
  br label %2770

; <label>:2722                                    ; preds = %2698
  %2723 = icmp eq i32 %2696, 4
  br i1 %2723, label %2724, label %2756

; <label>:2724                                    ; preds = %2722
  %2725 = fmul fast float %2701, %2667
  %2726 = fmul fast float %2701, %2668
  %2727 = fadd fast float %2725, %2204
  %2728 = fadd fast float %2726, %2205
  %2729 = call float @dx.op.binary.f32(i32 36, float %2207, float %2669)  ; FMin(a,b)
  %2730 = fsub fast float %2729, %2207
  %2731 = fmul fast float %2730, %2704
  %2732 = fadd fast float %2731, %2207
  %2733 = fadd fast float %2666, %2206
  %2734 = fmul fast float %2733, 0x3FF337FAE0000000
  %2735 = fmul fast float %2206, %2206
  %2736 = fmul fast float %2666, %2666
  %2737 = fadd fast float %2736, %2735
  %2738 = fmul fast float %2737, 0x3FE5152B00000000
  %2739 = fmul fast float %2206, 0xBFCC1F85E0000000
  %2740 = fmul fast float %2739, %2666
  %2741 = fadd fast float %2740, 0xBFE1363700000000
  %2742 = fadd fast float %2741, %2734
  %2743 = fsub fast float %2742, %2738
  %2744 = fmul fast float %2733, 0x3FBA6F0D00000000
  %2745 = fmul fast float %2737, 0x3FD0432880000000
  %2746 = fmul fast float %2206, 0xBFEF110800000000
  %2747 = fmul fast float %2746, %2666
  %2748 = fadd fast float %2747, 1.000000e+00
  %2749 = fsub fast float %2748, %2744
  %2750 = fadd fast float %2749, %2745
  %2751 = fdiv fast float %2743, %2750
  %2752 = call float @dx.op.unary.f32(i32 7, float %2751)  ; Saturate(value)
  %2753 = fsub fast float %2752, %2206
  %2754 = fmul fast float %2753, %2707
  %2755 = fadd fast float %2754, %2206
  br label %2770

; <label>:2756                                    ; preds = %2722
  %2757 = icmp eq i32 %2696, 8
  br i1 %2757, label %2758, label %2770

; <label>:2758                                    ; preds = %2756
  %2759 = fmul fast float %2701, %2667
  %2760 = fmul fast float %2701, %2668
  %2761 = fadd fast float %2759, %2204
  %2762 = fadd fast float %2760, %2205
  %2763 = call float @dx.op.binary.f32(i32 36, float %2207, float %2669)  ; FMin(a,b)
  %2764 = fsub fast float %2763, %2207
  %2765 = fmul fast float %2764, %2704
  %2766 = fadd fast float %2765, %2207
  %2767 = fsub fast float %2666, %2206
  %2768 = fmul fast float %2707, %2767
  %2769 = fadd fast float %2768, %2206
  br label %2770

; <label>:2770                                    ; preds = %2758, %2756, %2724, %2709, %2694, %2389, %2209, %2203
  %2771 = phi float [ %2204, %2694 ], [ %2204, %2389 ], [ %2204, %2203 ], [ %2204, %2209 ], [ %2714, %2709 ], [ %2727, %2724 ], [ %2204, %2756 ], [ %2761, %2758 ]
  %2772 = phi float [ %2205, %2694 ], [ %2205, %2389 ], [ %2205, %2203 ], [ %2205, %2209 ], [ %2715, %2709 ], [ %2728, %2724 ], [ %2205, %2756 ], [ %2762, %2758 ]
  %2773 = phi float [ %2206, %2694 ], [ %2206, %2389 ], [ %2206, %2203 ], [ %2206, %2209 ], [ %2721, %2709 ], [ %2755, %2724 ], [ %2206, %2756 ], [ %2769, %2758 ]
  %2774 = phi float [ %2207, %2694 ], [ %2207, %2389 ], [ %2207, %2203 ], [ %2207, %2209 ], [ %2718, %2709 ], [ %2732, %2724 ], [ %2207, %2756 ], [ %2766, %2758 ]
  %2775 = phi float [ %2695, %2694 ], [ %2208, %2389 ], [ %2208, %2203 ], [ %2208, %2209 ], [ %2695, %2709 ], [ %2695, %2724 ], [ %2695, %2756 ], [ %2695, %2758 ]
  %2776 = add i32 %63, 360
  %2777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2776, i32 undef)  ; BufferLoad(srv,index,wot)
  %2778 = extractvalue %dx.types.ResRet.i32 %2777, 0
  %2779 = bitcast i32 %2778 to float
  %2780 = fcmp fast oge float %2779, 0.000000e+00
  %2781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2782 = extractvalue %dx.types.CBufRet.f32 %2781, 0
  %2783 = select i1 %2780, float %2779, float %2782
  %2784 = fadd fast float %2783, %221
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 2
  %2787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2788 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %1, %dx.types.Handle %2787, float %99, float %100, float undef, float undef, i32 0, i32 0, i32 undef, float %2786, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %2789 = extractvalue %dx.types.ResRet.f32 %2788, 0
  %2790 = extractvalue %dx.types.ResRet.f32 %2788, 1
  %2791 = extractvalue %dx.types.ResRet.f32 %2788, 2
  %2792 = extractvalue %dx.types.ResRet.f32 %2788, 3
  %2793 = add i32 %63, 376
  %2794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %2793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2795 = extractvalue %dx.types.ResRet.i32 %2794, 0
  %2796 = extractvalue %dx.types.ResRet.i32 %2794, 1
  %2797 = extractvalue %dx.types.ResRet.i32 %2794, 2
  %2798 = bitcast i32 %2795 to float
  %2799 = bitcast i32 %2796 to float
  %2800 = bitcast i32 %2797 to float
  %2801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2802 = extractvalue %dx.types.CBufRet.f32 %2801, 0
  %2803 = and i32 %214, 65535
  %2804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2803)  ; LegacyF16ToF32(value)
  %2805 = lshr i32 %214, 16
  %2806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2805)  ; LegacyF16ToF32(value)
  %2807 = and i32 %215, 65535
  %2808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2807)  ; LegacyF16ToF32(value)
  %2809 = fmul fast float %2804, %2789
  %2810 = fmul fast float %2806, %2790
  %2811 = fmul fast float %2808, %2791
  %2812 = shl i32 %216, 4
  %2813 = and i32 %2812, 32752
  %2814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2813)  ; LegacyF16ToF32(value)
  %2815 = lshr i32 %216, 7
  %2816 = and i32 %2815, 32752
  %2817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2816)  ; LegacyF16ToF32(value)
  %2818 = lshr i32 %216, 22
  %2819 = shl nuw nsw i32 %2818, 5
  %2820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2819)  ; LegacyF16ToF32(value)
  %2821 = and i32 %217, 65535
  %2822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2821)  ; LegacyF16ToF32(value)
  %2823 = fmul fast float %2798, %2789
  %2824 = fmul fast float %2823, %2802
  %2825 = fmul fast float %2824, %2814
  %2826 = fmul fast float %2825, %2822
  %2827 = fmul fast float %2799, %2790
  %2828 = fmul fast float %2827, %2802
  %2829 = fmul fast float %2828, %2817
  %2830 = fmul fast float %2829, %2822
  %2831 = fmul fast float %2800, %2791
  %2832 = fmul fast float %2831, %2802
  %2833 = fmul fast float %2832, %2820
  %2834 = fmul fast float %2833, %2822
  %2835 = call float @dx.op.dot2.f32(i32 54, float %2771, float %2772, float %2771, float %2772)  ; Dot2(ax,ay,bx,by)
  %2836 = fmul fast float %2835, 0x3FE3333340000000
  %2837 = fsub fast float 1.000000e+00, %2836
  %2838 = call float @dx.op.dot3.f32(i32 55, float %2771, float %2772, float %2837, float %2771, float %2772, float %2837)  ; Dot3(ax,ay,az,bx,by,bz)
  %2839 = call float @dx.op.unary.f32(i32 25, float %2838)  ; Rsqrt(value)
  %2840 = fmul fast float %2839, %2771
  %2841 = fmul fast float %2839, %2772
  %2842 = fmul fast float %2837, %2839
  %2843 = fmul fast float %2842, %128
  %2844 = fmul fast float %2842, %129
  %2845 = fmul fast float %2842, %130
  %2846 = fmul fast float %2840, %92
  %2847 = fmul fast float %2840, %93
  %2848 = fmul fast float %2840, %94
  %2849 = fadd fast float %2843, %2846
  %2850 = fadd fast float %2844, %2847
  %2851 = fadd fast float %2845, %2848
  %2852 = fmul fast float %140, %2841
  %2853 = fmul fast float %141, %2841
  %2854 = fmul fast float %142, %2841
  %2855 = fadd fast float %2849, %2852
  %2856 = fadd fast float %2850, %2853
  %2857 = fadd fast float %2851, %2854
  %2858 = call float @dx.op.dot3.f32(i32 55, float %2855, float %2856, float %2857, float %2855, float %2856, float %2857)  ; Dot3(ax,ay,az,bx,by,bz)
  %2859 = call float @dx.op.unary.f32(i32 25, float %2858)  ; Rsqrt(value)
  %2860 = fmul fast float %2855, %2859
  %2861 = fmul fast float %2856, %2859
  %2862 = fmul fast float %2857, %2859
  %2863 = icmp eq i32 %66, 65535
  br i1 %2863, label %3382, label %2864

; <label>:2864                                    ; preds = %2770
  %2865 = call float @dx.op.unary.f32(i32 83, float %67)  ; DerivCoarseX(value)
  %2866 = call float @dx.op.unary.f32(i32 83, float %68)  ; DerivCoarseX(value)
  %2867 = call float @dx.op.unary.f32(i32 83, float %69)  ; DerivCoarseX(value)
  %2868 = call float @dx.op.unary.f32(i32 84, float %67)  ; DerivCoarseY(value)
  %2869 = call float @dx.op.unary.f32(i32 84, float %68)  ; DerivCoarseY(value)
  %2870 = call float @dx.op.unary.f32(i32 84, float %69)  ; DerivCoarseY(value)
  %2871 = fadd fast float %2865, %67
  %2872 = fadd fast float %2866, %68
  %2873 = fadd fast float %2867, %69
  %2874 = fadd fast float %2868, %67
  %2875 = fadd fast float %2869, %68
  %2876 = fadd fast float %2870, %69
  %2877 = mul i32 %66, 48
  %2878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.f32 %2878, 0
  %2880 = extractvalue %dx.types.ResRet.f32 %2878, 1
  %2881 = extractvalue %dx.types.ResRet.f32 %2878, 2
  %2882 = add i32 %2877, 16
  %2883 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.f32 %2883, 0
  %2885 = extractvalue %dx.types.ResRet.f32 %2883, 1
  %2886 = extractvalue %dx.types.ResRet.f32 %2883, 2
  %2887 = add i32 %2877, 32
  %2888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.f32 %2888, 0
  %2890 = extractvalue %dx.types.ResRet.f32 %2888, 1
  %2891 = extractvalue %dx.types.ResRet.f32 %2888, 2
  %2892 = extractvalue %dx.types.ResRet.f32 %2888, 3
  %2893 = bitcast float %2892 to i32
  %2894 = fmul fast float %2879, %67
  %2895 = fmul fast float %2880, %68
  %2896 = fmul fast float %2881, %69
  %2897 = fsub fast float %2894, %2884
  %2898 = fsub fast float %2895, %2885
  %2899 = fsub fast float %2896, %2886
  %2900 = call float @dx.op.unary.f32(i32 7, float %2897)  ; Saturate(value)
  %2901 = call float @dx.op.unary.f32(i32 7, float %2898)  ; Saturate(value)
  %2902 = call float @dx.op.unary.f32(i32 7, float %2899)  ; Saturate(value)
  %2903 = fmul fast float %2900, %2889
  %2904 = fmul fast float %2901, %2890
  %2905 = fmul fast float %2902, %2891
  %2906 = fadd fast float %2889, -1.000000e+00
  %2907 = fadd fast float %2890, -1.000000e+00
  %2908 = fadd fast float %2891, -1.000000e+00
  %2909 = call float @dx.op.unary.f32(i32 27, float %2903)  ; Round_ni(value)
  %2910 = call float @dx.op.unary.f32(i32 27, float %2904)  ; Round_ni(value)
  %2911 = call float @dx.op.unary.f32(i32 27, float %2905)  ; Round_ni(value)
  %2912 = call float @dx.op.binary.f32(i32 36, float %2909, float %2906)  ; FMin(a,b)
  %2913 = call float @dx.op.binary.f32(i32 36, float %2910, float %2907)  ; FMin(a,b)
  %2914 = call float @dx.op.binary.f32(i32 36, float %2911, float %2908)  ; FMin(a,b)
  %2915 = fmul fast float %2914, %2890
  %2916 = fadd fast float %2915, %2913
  %2917 = fmul fast float %2916, %2889
  %2918 = fadd fast float %2917, %2912
  %2919 = fptosi float %2918 to i32
  %2920 = add nsw i32 %2919, %2893
  %2921 = shl nsw i32 %2920, 2
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2921, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = lshr i32 %2923, 16
  %2925 = icmp eq i32 %2924, 0
  br i1 %2925, label %3350, label %2926

; <label>:2926                                    ; preds = %2864
  br label %2927

; <label>:2927                                    ; preds = %3049, %2926
  %2928 = phi i32 [ %2951, %3049 ], [ %2924, %2926 ]
  %2929 = phi float [ %3050, %3049 ], [ 0.000000e+00, %2926 ]
  %2930 = phi float [ %3051, %3049 ], [ %1071, %2926 ]
  %2931 = phi float [ %3052, %3049 ], [ %2784, %2926 ]
  %2932 = phi float [ %3053, %3049 ], [ %2775, %2926 ]
  %2933 = phi float [ %3054, %3049 ], [ 0.000000e+00, %2926 ]
  %2934 = phi float [ %3055, %3049 ], [ 0.000000e+00, %2926 ]
  %2935 = phi float [ %3056, %3049 ], [ %2826, %2926 ]
  %2936 = phi float [ %3057, %3049 ], [ %2830, %2926 ]
  %2937 = phi float [ %3058, %3049 ], [ %2834, %2926 ]
  %2938 = phi float [ %3059, %3049 ], [ %2860, %2926 ]
  %2939 = phi float [ %3060, %3049 ], [ %2861, %2926 ]
  %2940 = phi float [ %3061, %3049 ], [ %2862, %2926 ]
  %2941 = phi float [ %3062, %3049 ], [ %2774, %2926 ]
  %2942 = phi float [ %3063, %3049 ], [ %2773, %2926 ]
  %2943 = phi float [ %3064, %3049 ], [ 0.000000e+00, %2926 ]
  %2944 = phi float [ %3065, %3049 ], [ 0x3FA23C0BE0000000, %2926 ]
  %2945 = phi float [ %3066, %3049 ], [ %2809, %2926 ]
  %2946 = phi float [ %3067, %3049 ], [ %2810, %2926 ]
  %2947 = phi float [ %3068, %3049 ], [ %2811, %2926 ]
  %2948 = shl nuw nsw i32 %2928, 2
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = lshr i32 %2950, 16
  %2952 = shl i32 %2950, 8
  %2953 = and i32 %2952, 16776960
  %2954 = or i32 %2953, 48
  %2955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.f32 %2955, 0
  %2957 = extractvalue %dx.types.ResRet.f32 %2955, 1
  %2958 = extractvalue %dx.types.ResRet.f32 %2955, 2
  %2959 = or i32 %2953, 64
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = extractvalue %dx.types.ResRet.i32 %2960, 1
  %2963 = or i32 %2953, 80
  %2964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.f32 %2964, 2
  %2966 = extractvalue %dx.types.ResRet.f32 %2964, 3
  %2967 = or i32 %2953, 96
  %2968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2967, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.f32 %2968, 0
  %2970 = extractvalue %dx.types.ResRet.f32 %2968, 1
  %2971 = extractvalue %dx.types.ResRet.f32 %2968, 2
  %2972 = extractvalue %dx.types.ResRet.f32 %2968, 3
  %2973 = or i32 %2953, 112
  %2974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.f32 %2974, 2
  %2976 = or i32 %2953, 128
  %2977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.f32 %2977, 0
  %2979 = extractvalue %dx.types.ResRet.f32 %2977, 1
  %2980 = extractvalue %dx.types.ResRet.f32 %2977, 2
  %2981 = extractvalue %dx.types.ResRet.f32 %2977, 3
  %2982 = or i32 %2953, 144
  %2983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.f32 %2983, 0
  %2985 = extractvalue %dx.types.ResRet.f32 %2983, 1
  %2986 = extractvalue %dx.types.ResRet.f32 %2983, 2
  %2987 = extractvalue %dx.types.ResRet.f32 %2983, 3
  %2988 = or i32 %2953, 160
  %2989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.f32 %2989, 0
  %2991 = extractvalue %dx.types.ResRet.f32 %2989, 1
  %2992 = extractvalue %dx.types.ResRet.f32 %2989, 2
  %2993 = extractvalue %dx.types.ResRet.f32 %2989, 3
  %2994 = or i32 %2953, 192
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = or i32 %2953, 208
  %2998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.f32 %2998, 0
  %3000 = or i32 %2953, 248
  %3001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.f32 %3001, 0
  %3003 = extractvalue %dx.types.ResRet.f32 %3001, 1
  %3004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3005 = extractvalue %dx.types.ResRet.f32 %3004, 0
  %3006 = extractvalue %dx.types.ResRet.f32 %3004, 1
  %3007 = extractvalue %dx.types.ResRet.f32 %3004, 2
  %3008 = extractvalue %dx.types.ResRet.f32 %3004, 3
  %3009 = call float @dx.op.dot4.f32(i32 56, float %3005, float %3006, float %3007, float %3008, float %67, float %68, float %69, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3010 = or i32 %2953, 16
  %3011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3010, i32 undef)  ; BufferLoad(srv,index,wot)
  %3012 = extractvalue %dx.types.ResRet.f32 %3011, 0
  %3013 = extractvalue %dx.types.ResRet.f32 %3011, 1
  %3014 = extractvalue %dx.types.ResRet.f32 %3011, 2
  %3015 = extractvalue %dx.types.ResRet.f32 %3011, 3
  %3016 = call float @dx.op.dot4.f32(i32 56, float %3012, float %3013, float %3014, float %3015, float %67, float %68, float %69, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3017 = or i32 %2953, 32
  %3018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.f32 %3018, 0
  %3020 = extractvalue %dx.types.ResRet.f32 %3018, 1
  %3021 = extractvalue %dx.types.ResRet.f32 %3018, 2
  %3022 = extractvalue %dx.types.ResRet.f32 %3018, 3
  %3023 = call float @dx.op.dot4.f32(i32 56, float %3019, float %3020, float %3021, float %3022, float %67, float %68, float %69, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3024 = call float @dx.op.unary.f32(i32 27, float %3009)  ; Round_ni(value)
  %3025 = call float @dx.op.unary.f32(i32 6, float %3024)  ; FAbs(value)
  %3026 = call float @dx.op.unary.f32(i32 27, float %3016)  ; Round_ni(value)
  %3027 = call float @dx.op.unary.f32(i32 6, float %3026)  ; FAbs(value)
  %3028 = call float @dx.op.unary.f32(i32 6, float %3023)  ; FAbs(value)
  %3029 = call float @dx.op.unary.f32(i32 27, float %3028)  ; Round_ni(value)
  %3030 = fadd fast float %3027, %3025
  %3031 = fadd fast float %3030, %3029
  %3032 = fcmp fast oeq float %3031, 0.000000e+00
  %3033 = call float @dx.op.dot4.f32(i32 56, float %3005, float %3006, float %3007, float %3008, float %2871, float %2872, float %2873, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3034 = call float @dx.op.dot4.f32(i32 56, float %3012, float %3013, float %3014, float %3015, float %2871, float %2872, float %2873, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3035 = call float @dx.op.dot4.f32(i32 56, float %3005, float %3006, float %3007, float %3008, float %2874, float %2875, float %2876, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3036 = call float @dx.op.dot4.f32(i32 56, float %3012, float %3013, float %3014, float %3015, float %2874, float %2875, float %2876, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3037 = fsub fast float %3033, %3009
  %3038 = fsub fast float %3035, %3009
  %3039 = fsub fast float %3034, %3016
  %3040 = fsub fast float %3036, %3016
  %3041 = call float @dx.op.dot3.f32(i32 55, float %2956, float %2957, float %2958, float %128, float %129, float %130)  ; Dot3(ax,ay,az,bx,by,bz)
  %3042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3043 = extractvalue %dx.types.CBufRet.f32 %3042, 2
  %3044 = fadd fast float %3043, %3041
  %3045 = call float @dx.op.unary.f32(i32 7, float %3044)  ; Saturate(value)
  %3046 = extractvalue %dx.types.CBufRet.f32 %3042, 0
  %3047 = fcmp fast ogt float %3045, %3046
  %3048 = and i1 %3032, %3047
  br i1 %3048, label %3070, label %3049

; <label>:3049                                    ; preds = %3336, %3153, %3070, %2927
  %3050 = phi float [ %2929, %3070 ], [ %3156, %3153 ], [ %3156, %3336 ], [ %2929, %2927 ]
  %3051 = phi float [ %2930, %3070 ], [ %2930, %3153 ], [ %3311, %3336 ], [ %2930, %2927 ]
  %3052 = phi float [ %2931, %3070 ], [ %2931, %3153 ], [ %3310, %3336 ], [ %2931, %2927 ]
  %3053 = phi float [ %2932, %3070 ], [ %2932, %3153 ], [ %3308, %3336 ], [ %2932, %2927 ]
  %3054 = phi float [ %2933, %3070 ], [ %2933, %3153 ], [ %3280, %3336 ], [ %2933, %2927 ]
  %3055 = phi float [ %2934, %3070 ], [ %2934, %3153 ], [ %3278, %3336 ], [ %2934, %2927 ]
  %3056 = phi float [ %2935, %3070 ], [ %2935, %3153 ], [ %3346, %3336 ], [ %2935, %2927 ]
  %3057 = phi float [ %2936, %3070 ], [ %2936, %3153 ], [ %3347, %3336 ], [ %2936, %2927 ]
  %3058 = phi float [ %2937, %3070 ], [ %2937, %3153 ], [ %3348, %3336 ], [ %2937, %2927 ]
  %3059 = phi float [ %2938, %3070 ], [ %2938, %3153 ], [ %3259, %3336 ], [ %2938, %2927 ]
  %3060 = phi float [ %2939, %3070 ], [ %2939, %3153 ], [ %3260, %3336 ], [ %2939, %2927 ]
  %3061 = phi float [ %2940, %3070 ], [ %2940, %3153 ], [ %3261, %3336 ], [ %2940, %2927 ]
  %3062 = phi float [ %2941, %3070 ], [ %2941, %3153 ], [ %3288, %3336 ], [ %2941, %2927 ]
  %3063 = phi float [ %2942, %3070 ], [ %2942, %3153 ], [ %3285, %3336 ], [ %2942, %2927 ]
  %3064 = phi float [ %2943, %3070 ], [ %2943, %3153 ], [ %3282, %3336 ], [ %2943, %2927 ]
  %3065 = phi float [ %2944, %3070 ], [ %2944, %3153 ], [ %3276, %3336 ], [ %2944, %2927 ]
  %3066 = phi float [ %2945, %3070 ], [ %2945, %3153 ], [ %3271, %3336 ], [ %2945, %2927 ]
  %3067 = phi float [ %2946, %3070 ], [ %2946, %3153 ], [ %3272, %3336 ], [ %2946, %2927 ]
  %3068 = phi float [ %2947, %3070 ], [ %2947, %3153 ], [ %3273, %3336 ], [ %2947, %2927 ]
  %3069 = icmp eq i32 %2951, 0
  br i1 %3069, label %3349, label %2927

; <label>:3070                                    ; preds = %2927
  %3071 = extractvalue %dx.types.ResRet.f32 %2955, 3
  %3072 = extractvalue %dx.types.ResRet.f32 %2974, 3
  %3073 = extractvalue %dx.types.ResRet.f32 %2974, 1
  %3074 = extractvalue %dx.types.ResRet.f32 %2974, 0
  %3075 = extractvalue %dx.types.ResRet.f32 %2964, 1
  %3076 = extractvalue %dx.types.ResRet.f32 %2964, 0
  %3077 = extractvalue %dx.types.ResRet.i32 %2960, 3
  %3078 = extractvalue %dx.types.ResRet.i32 %2960, 2
  %3079 = bitcast float %3071 to i32
  %3080 = add i32 %3077, 0
  %3081 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3080, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3083 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3081, %dx.types.Handle %3082, float %3009, float %3016, float undef, float undef, i32 0, i32 0, i32 undef, float %3037, float %3039, float undef, float %3038, float %3040, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3084 = extractvalue %dx.types.ResRet.f32 %3083, 0
  %3085 = fmul fast float %3084, %3076
  %3086 = fadd fast float %3085, %3075
  %3087 = call float @dx.op.unary.f32(i32 7, float %3086)  ; Saturate(value)
  %3088 = fmul fast float %3009, %2969
  %3089 = call float @dx.op.tertiary.f32(i32 46, float %2970, float %3016, float %3088)  ; FMad(a,b,c)
  %3090 = fadd fast float %3089, %3074
  %3091 = fmul fast float %3009, %2971
  %3092 = call float @dx.op.tertiary.f32(i32 46, float %2972, float %3016, float %3091)  ; FMad(a,b,c)
  %3093 = fadd fast float %3092, %3073
  %3094 = fmul fast float %3037, %2969
  %3095 = call float @dx.op.tertiary.f32(i32 46, float %2970, float %3039, float %3094)  ; FMad(a,b,c)
  %3096 = fmul fast float %3037, %2971
  %3097 = call float @dx.op.tertiary.f32(i32 46, float %2972, float %3039, float %3096)  ; FMad(a,b,c)
  %3098 = fmul fast float %3038, %2969
  %3099 = call float @dx.op.tertiary.f32(i32 46, float %2970, float %3040, float %3098)  ; FMad(a,b,c)
  %3100 = fmul fast float %3038, %2971
  %3101 = call float @dx.op.tertiary.f32(i32 46, float %2972, float %3040, float %3100)  ; FMad(a,b,c)
  %3102 = add i32 %3078, 0
  %3103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3102, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3104 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3103, %dx.types.Handle %3082, float %3090, float %3093, float undef, float undef, i32 0, i32 0, i32 undef, float %3095, float %3097, float undef, float %3099, float %3101, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3105 = extractvalue %dx.types.ResRet.f32 %3104, 0
  %3106 = and i32 %3079, 1024
  %3107 = icmp ne i32 %3106, 0
  %3108 = fcmp fast ogt float %3105, 0x3FE0101020000000
  %3109 = uitofp i1 %3108 to float
  %3110 = select i1 %3107, float %3109, float %3105
  %3111 = and i32 %3079, 8192
  %3112 = icmp ne i32 %3111, 0
  %3113 = select i1 %3112, float %3072, float 1.000000e+00
  %3114 = fmul fast float %3009, 2.000000e+00
  %3115 = fadd fast float %3114, -1.000000e+00
  %3116 = call float @dx.op.unary.f32(i32 6, float %3115)  ; FAbs(value)
  %3117 = fmul fast float %3116, %3002
  %3118 = fsub fast float %3117, %3002
  %3119 = call float @dx.op.unary.f32(i32 7, float %3118)  ; Saturate(value)
  %3120 = fmul fast float %3016, 2.000000e+00
  %3121 = fadd fast float %3120, -1.000000e+00
  %3122 = call float @dx.op.unary.f32(i32 6, float %3121)  ; FAbs(value)
  %3123 = fmul fast float %3122, %3003
  %3124 = fsub fast float %3123, %3003
  %3125 = call float @dx.op.unary.f32(i32 7, float %3124)  ; Saturate(value)
  %3126 = fmul fast float %3028, %2965
  %3127 = fsub fast float %3126, %2965
  %3128 = call float @dx.op.unary.f32(i32 7, float %3127)  ; Saturate(value)
  %3129 = fmul fast float %3087, %3113
  %3130 = fmul fast float %3129, %3084
  %3131 = fmul fast float %3130, %3119
  %3132 = fmul fast float %3131, %3110
  %3133 = fmul fast float %3132, %3125
  %3134 = fmul fast float %3133, %3128
  %3135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3136 = extractvalue %dx.types.CBufRet.f32 %3135, 1
  %3137 = extractvalue %dx.types.CBufRet.f32 %3135, 0
  %3138 = fsub fast float %3045, %3137
  %3139 = fmul fast float %3138, %3136
  %3140 = call float @dx.op.unary.f32(i32 7, float %3139)  ; Saturate(value)
  %3141 = fmul fast float %3134, %2966
  %3142 = fadd fast float %3134, %2966
  %3143 = fmul fast float %3142, %2975
  %3144 = fsub fast float %3143, %2975
  %3145 = call float @dx.op.unary.f32(i32 7, float %3144)  ; Saturate(value)
  %3146 = and i32 %3079, 128
  %3147 = icmp ne i32 %3146, 0
  %3148 = select i1 %3147, float %3145, float %3141
  %3149 = fmul fast float %3148, %3140
  %3150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3151 = extractvalue %dx.types.CBufRet.f32 %3150, 0
  %3152 = fcmp fast ugt float %3149, %3151
  br i1 %3152, label %3153, label %3049

; <label>:3153                                    ; preds = %3070
  %3154 = select i1 %3112, float %3149, float 0.000000e+00
  %3155 = fadd fast float %3154, %2929
  %3156 = call float @dx.op.unary.f32(i32 7, float %3155)  ; Saturate(value)
  br i1 %3112, label %3049, label %3157

; <label>:3157                                    ; preds = %3153
  %3158 = and i32 %3079, 4
  %3159 = and i32 %3079, 8
  %3160 = add i32 %2961, 0
  %3161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3160, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3163 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3161, %dx.types.Handle %3162, float %3090, float %3093, float undef, float undef, i32 0, i32 0, i32 undef, float %3095, float %3097, float undef, float %3099, float %3101, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3164 = extractvalue %dx.types.ResRet.f32 %3163, 0
  %3165 = extractvalue %dx.types.ResRet.f32 %3163, 1
  %3166 = extractvalue %dx.types.ResRet.f32 %3163, 2
  %3167 = extractvalue %dx.types.ResRet.f32 %3163, 3
  %3168 = bitcast float %2987 to i32
  %3169 = and i32 %3168, 255
  %3170 = uitofp i32 %3169 to float
  %3171 = lshr i32 %3168, 8
  %3172 = and i32 %3171, 255
  %3173 = uitofp i32 %3172 to float
  %3174 = fmul fast float %3167, %3170
  %3175 = fadd fast float %3174, %3173
  %3176 = fmul fast float %3175, 0x3F70101000000000
  %3177 = add i32 %2962, 0
  %3178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3177, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3179 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3178, %dx.types.Handle %3162, float %3090, float %3093, float undef, float undef, i32 0, i32 0, i32 undef, float %3095, float %3097, float undef, float %3099, float %3101, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3180 = extractvalue %dx.types.ResRet.f32 %3179, 0
  %3181 = extractvalue %dx.types.ResRet.f32 %3179, 1
  %3182 = extractvalue %dx.types.ResRet.f32 %3179, 2
  %3183 = extractvalue %dx.types.ResRet.f32 %3179, 3
  %3184 = bitcast float %2981 to i32
  %3185 = and i32 %3184, 255
  %3186 = uitofp i32 %3185 to float
  %3187 = lshr i32 %3184, 8
  %3188 = and i32 %3187, 255
  %3189 = uitofp i32 %3188 to float
  %3190 = lshr i32 %3184, 16
  %3191 = and i32 %3190, 255
  %3192 = uitofp i32 %3191 to float
  %3193 = fmul fast float %3192, 0x3F70101000000000
  %3194 = fmul fast float %3180, %3186
  %3195 = fadd fast float %3194, %3189
  %3196 = fmul fast float %3195, 0x3F70101000000000
  %3197 = fadd fast float %3181, -5.000000e-01
  %3198 = fadd fast float %3183, -5.000000e-01
  %3199 = fmul fast float %3197, %3193
  %3200 = fmul fast float %3198, %3193
  %3201 = fadd fast float %3199, 5.000000e-01
  %3202 = fadd fast float %3200, 5.000000e-01
  %3203 = fmul fast float %3164, %2990
  %3204 = fmul fast float %3165, %2991
  %3205 = fmul fast float %3166, %2992
  %3206 = fmul fast float %3201, 2.000000e+00
  %3207 = fadd fast float %3206, -1.000000e+00
  %3208 = fmul fast float %3202, 2.000000e+00
  %3209 = fadd fast float %3208, -1.000000e+00
  %3210 = fadd fast float %3207, %3209
  %3211 = fmul fast float %3210, 5.000000e-01
  %3212 = fsub fast float %3207, %3209
  %3213 = fmul fast float %3212, 5.000000e-01
  %3214 = call float @dx.op.unary.f32(i32 6, float %3211)  ; FAbs(value)
  %3215 = fsub fast float 1.000000e+00, %3214
  %3216 = call float @dx.op.unary.f32(i32 6, float %3213)  ; FAbs(value)
  %3217 = fsub fast float %3215, %3216
  %3218 = call float @dx.op.dot3.f32(i32 55, float %3211, float %3213, float %3217, float %3211, float %3213, float %3217)  ; Dot3(ax,ay,az,bx,by,bz)
  %3219 = call float @dx.op.unary.f32(i32 25, float %3218)  ; Rsqrt(value)
  %3220 = fmul fast float %3211, %3219
  %3221 = fmul fast float %3213, %3219
  %3222 = fmul fast float %3219, %3217
  %3223 = fmul fast float %3222, %2956
  %3224 = fmul fast float %3222, %2957
  %3225 = fmul fast float %3222, %2958
  %3226 = fmul fast float %3220, %2978
  %3227 = fmul fast float %3220, %2979
  %3228 = fmul fast float %3220, %2980
  %3229 = fadd fast float %3226, %3223
  %3230 = fadd fast float %3227, %3224
  %3231 = fadd fast float %3228, %3225
  %3232 = fmul fast float %3221, %2984
  %3233 = fmul fast float %3221, %2985
  %3234 = fmul fast float %3221, %2986
  %3235 = fadd fast float %3229, %3232
  %3236 = fadd fast float %3230, %3233
  %3237 = fadd fast float %3231, %3234
  %3238 = call float @dx.op.dot3.f32(i32 55, float %3235, float %3236, float %3237, float %3235, float %3236, float %3237)  ; Dot3(ax,ay,az,bx,by,bz)
  %3239 = call float @dx.op.unary.f32(i32 25, float %3238)  ; Rsqrt(value)
  %3240 = fmul fast float %3235, %3239
  %3241 = fmul fast float %3236, %3239
  %3242 = fmul fast float %3237, %3239
  %3243 = icmp ne i32 %3159, 0
  %3244 = select i1 %3243, float 1.000000e+00, float 0.000000e+00
  %3245 = fmul fast float %3149, %3244
  %3246 = and i32 %3079, 1
  %3247 = icmp eq i32 %3246, 0
  br i1 %3247, label %3248, label %3252

; <label>:3248                                    ; preds = %3157
  %3249 = fsub fast float %3240, %2938
  %3250 = fsub fast float %3241, %2939
  %3251 = fsub fast float %3242, %2940
  br label %3252

; <label>:3252                                    ; preds = %3248, %3157
  %3253 = phi float [ %3249, %3248 ], [ %3240, %3157 ]
  %3254 = phi float [ %3250, %3248 ], [ %3241, %3157 ]
  %3255 = phi float [ %3251, %3248 ], [ %3242, %3157 ]
  %3256 = fmul float %3255, %3245
  %3257 = fmul float %3254, %3245
  %3258 = fmul float %3253, %3245
  %3259 = fadd fast float %3258, %2938
  %3260 = fadd fast float %3257, %2939
  %3261 = fadd fast float %3256, %2940
  %3262 = icmp ne i32 %3158, 0
  %3263 = select i1 %3262, float 1.000000e+00, float 0.000000e+00
  %3264 = fmul fast float %3149, %3263
  %3265 = fsub fast float %3203, %2945
  %3266 = fsub fast float %3204, %2946
  %3267 = fsub fast float %3205, %2947
  %3268 = fmul fast float %3265, %3264
  %3269 = fmul fast float %3266, %3264
  %3270 = fmul fast float %3267, %3264
  %3271 = fadd fast float %3268, %2945
  %3272 = fadd fast float %3269, %2946
  %3273 = fadd fast float %3270, %2947
  %3274 = fsub fast float %3176, %2944
  %3275 = fmul fast float %3274, %3264
  %3276 = fadd fast float %3275, %2944
  %3277 = fmul fast float %3264, %2934
  %3278 = fsub fast float %2934, %3277
  %3279 = fmul fast float %3264, %2933
  %3280 = fsub fast float %2933, %3279
  %3281 = fadd fast float %3149, %2943
  %3282 = call float @dx.op.unary.f32(i32 7, float %3281)  ; Saturate(value)
  %3283 = fsub fast float %3196, %2942
  %3284 = fmul fast float %3283, %3245
  %3285 = fadd fast float %3284, %2942
  %3286 = fsub fast float %3182, %2941
  %3287 = fmul fast float %3286, %3245
  %3288 = fadd fast float %3287, %2941
  %3289 = call float @dx.op.dot3.f32(i32 55, float %3203, float %3204, float %3205, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3291 = extractvalue %dx.types.CBufRet.f32 %3290, 0
  %3292 = extractvalue %dx.types.CBufRet.f32 %3290, 1
  %3293 = fmul fast float %3292, %3289
  %3294 = fadd fast float %3293, %3291
  %3295 = call float @dx.op.unary.f32(i32 7, float %3294)  ; Saturate(value)
  %3296 = bitcast float %2993 to i32
  %3297 = and i32 %3296, 65535
  %3298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3297)  ; LegacyF16ToF32(value)
  %3299 = lshr i32 %3296, 16
  %3300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3299)  ; LegacyF16ToF32(value)
  %3301 = fcmp fast oge float %3298, 0.000000e+00
  %3302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3303 = extractvalue %dx.types.CBufRet.f32 %3302, 0
  %3304 = select i1 %3301, float %3298, float %3303
  %3305 = fadd fast float %3304, %3300
  %3306 = fsub fast float %3295, %2932
  %3307 = fmul fast float %3306, %3149
  %3308 = fadd fast float %3307, %2932
  %3309 = fmul fast float %3305, %3149
  %3310 = call float @dx.op.binary.f32(i32 35, float %2931, float %3309)  ; FMax(a,b)
  %3311 = call float @dx.op.binary.f32(i32 35, float %2930, float %3149)  ; FMax(a,b)
  %3312 = and i32 %3079, 16
  %3313 = icmp eq i32 %3312, 0
  br i1 %3313, label %3336, label %3314

; <label>:3314                                    ; preds = %3252
  %3315 = bitcast float %2999 to i32
  %3316 = add i32 %2996, 0
  %3317 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3316, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3318 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3317, %dx.types.Handle %3162, float %3090, float %3093, float undef, float undef, i32 0, i32 0, i32 undef, float %3095, float %3097, float undef, float %3099, float %3101, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3319 = extractvalue %dx.types.ResRet.f32 %3318, 0
  %3320 = extractvalue %dx.types.ResRet.f32 %3318, 1
  %3321 = extractvalue %dx.types.ResRet.f32 %3318, 2
  %3322 = and i32 %3315, 65535
  %3323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3322)  ; LegacyF16ToF32(value)
  %3324 = fmul fast float %3319, %2990
  %3325 = fmul fast float %3320, %2991
  %3326 = fmul fast float %3321, %2992
  %3327 = and i32 %3079, 16384
  %3328 = icmp ne i32 %3327, 0
  %3329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3330 = extractvalue %dx.types.CBufRet.f32 %3329, 0
  %3331 = select i1 %3328, float %3330, float 1.000000e+00
  %3332 = fmul fast float %3331, %3323
  %3333 = fmul fast float %3324, %3332
  %3334 = fmul fast float %3325, %3332
  %3335 = fmul fast float %3326, %3332
  br label %3336

; <label>:3336                                    ; preds = %3314, %3252
  %3337 = phi float [ %3333, %3314 ], [ 0.000000e+00, %3252 ]
  %3338 = phi float [ %3334, %3314 ], [ 0.000000e+00, %3252 ]
  %3339 = phi float [ %3335, %3314 ], [ 0.000000e+00, %3252 ]
  %3340 = fsub fast float %3337, %2935
  %3341 = fsub fast float %3338, %2936
  %3342 = fsub fast float %3339, %2937
  %3343 = fmul fast float %3340, %3149
  %3344 = fmul fast float %3341, %3149
  %3345 = fmul fast float %3342, %3149
  %3346 = fadd fast float %3343, %2935
  %3347 = fadd fast float %3344, %2936
  %3348 = fadd fast float %3345, %2937
  br label %3049

; <label>:3349                                    ; preds = %3049
  br label %3350

; <label>:3350                                    ; preds = %3349, %2864
  %3351 = phi float [ 0.000000e+00, %2864 ], [ %3050, %3349 ]
  %3352 = phi float [ %1071, %2864 ], [ %3051, %3349 ]
  %3353 = phi float [ %2784, %2864 ], [ %3052, %3349 ]
  %3354 = phi float [ %2775, %2864 ], [ %3053, %3349 ]
  %3355 = phi float [ 0.000000e+00, %2864 ], [ %3054, %3349 ]
  %3356 = phi float [ 0.000000e+00, %2864 ], [ %3055, %3349 ]
  %3357 = phi float [ %2826, %2864 ], [ %3056, %3349 ]
  %3358 = phi float [ %2830, %2864 ], [ %3057, %3349 ]
  %3359 = phi float [ %2834, %2864 ], [ %3058, %3349 ]
  %3360 = phi float [ %2860, %2864 ], [ %3059, %3349 ]
  %3361 = phi float [ %2861, %2864 ], [ %3060, %3349 ]
  %3362 = phi float [ %2862, %2864 ], [ %3061, %3349 ]
  %3363 = phi float [ %2774, %2864 ], [ %3062, %3349 ]
  %3364 = phi float [ %2773, %2864 ], [ %3063, %3349 ]
  %3365 = phi float [ 0.000000e+00, %2864 ], [ %3064, %3349 ]
  %3366 = phi float [ 0x3FA23C0BE0000000, %2864 ], [ %3065, %3349 ]
  %3367 = phi float [ %2809, %2864 ], [ %3066, %3349 ]
  %3368 = phi float [ %2810, %2864 ], [ %3067, %3349 ]
  %3369 = phi float [ %2811, %2864 ], [ %3068, %3349 ]
  %3370 = call float @dx.op.dot3.f32(i32 55, float %3360, float %3361, float %3362, float %3360, float %3361, float %3362)  ; Dot3(ax,ay,az,bx,by,bz)
  %3371 = call float @dx.op.unary.f32(i32 25, float %3370)  ; Rsqrt(value)
  %3372 = fmul fast float %3371, %3360
  %3373 = fmul fast float %3371, %3361
  %3374 = fmul fast float %3371, %3362
  %3375 = fadd fast float %3365, %2792
  %3376 = call float @dx.op.unary.f32(i32 7, float %3375)  ; Saturate(value)
  %3377 = call float @dx.op.dot3.f32(i32 55, float %3372, float %3373, float %3374, float %3372, float %3373, float %3374)  ; Dot3(ax,ay,az,bx,by,bz)
  %3378 = call float @dx.op.unary.f32(i32 25, float %3377)  ; Rsqrt(value)
  %3379 = fmul fast float %3378, %3372
  %3380 = fmul fast float %3378, %3373
  %3381 = fmul fast float %3378, %3374
  br label %3382

; <label>:3382                                    ; preds = %3350, %2770
  %3383 = phi float [ %3379, %3350 ], [ %2860, %2770 ]
  %3384 = phi float [ %3380, %3350 ], [ %2861, %2770 ]
  %3385 = phi float [ %3381, %3350 ], [ %2862, %2770 ]
  %3386 = phi float [ %3367, %3350 ], [ %2809, %2770 ]
  %3387 = phi float [ %3368, %3350 ], [ %2810, %2770 ]
  %3388 = phi float [ %3369, %3350 ], [ %2811, %2770 ]
  %3389 = phi float [ %3357, %3350 ], [ %2826, %2770 ]
  %3390 = phi float [ %3358, %3350 ], [ %2830, %2770 ]
  %3391 = phi float [ %3359, %3350 ], [ %2834, %2770 ]
  %3392 = phi float [ %3366, %3350 ], [ 0x3FA23C0BE0000000, %2770 ]
  %3393 = phi float [ %3376, %3350 ], [ %2792, %2770 ]
  %3394 = phi float [ %3364, %3350 ], [ %2773, %2770 ]
  %3395 = phi float [ %3363, %3350 ], [ %2774, %2770 ]
  %3396 = phi float [ %3356, %3350 ], [ 0.000000e+00, %2770 ]
  %3397 = phi float [ %3355, %3350 ], [ 0.000000e+00, %2770 ]
  %3398 = phi float [ %3351, %3350 ], [ 0.000000e+00, %2770 ]
  %3399 = phi float [ %3353, %3350 ], [ %2784, %2770 ]
  %3400 = phi float [ %3352, %3350 ], [ %1071, %2770 ]
  %3401 = phi float [ %3354, %3350 ], [ %2775, %2770 ]
  %3402 = fadd fast float %3392, 0xBFB99999A0000000
  %3403 = call float @dx.op.unary.f32(i32 7, float %3402)  ; Saturate(value)
  %3404 = fmul fast float %3403, 0x3FF1C71C80000000
  %3405 = call float @dx.op.binary.f32(i32 36, float %3392, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3406 = fsub fast float 1.000000e+00, %3404
  %3407 = call float @dx.op.unary.f32(i32 7, float %3406)  ; Saturate(value)
  %3408 = fmul fast float %3407, %3386
  %3409 = fmul fast float %3407, %3387
  %3410 = fmul fast float %3407, %3388
  %3411 = call float @dx.op.unary.f32(i32 7, float %3408)  ; Saturate(value)
  %3412 = call float @dx.op.unary.f32(i32 7, float %3409)  ; Saturate(value)
  %3413 = call float @dx.op.unary.f32(i32 7, float %3410)  ; Saturate(value)
  %3414 = fmul fast float %3404, %3386
  %3415 = fmul fast float %3404, %3387
  %3416 = fmul fast float %3404, %3388
  %3417 = fadd fast float %3414, %3405
  %3418 = fadd fast float %3415, %3405
  %3419 = fadd fast float %3416, %3405
  %3420 = call float @dx.op.unary.f32(i32 7, float %3417)  ; Saturate(value)
  %3421 = call float @dx.op.unary.f32(i32 7, float %3418)  ; Saturate(value)
  %3422 = call float @dx.op.unary.f32(i32 7, float %3419)  ; Saturate(value)
  %3423 = call float @dx.op.unary.f32(i32 7, float %3394)  ; Saturate(value)
  %3424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3425 = extractvalue %dx.types.CBufRet.i32 %3424, 3
  %3426 = and i32 %3425, 8
  %3427 = icmp ne i32 %3426, 0
  %3428 = call float @dx.op.binary.f32(i32 35, float %3411, float %3386)  ; FMax(a,b)
  %3429 = call float @dx.op.binary.f32(i32 35, float %3412, float %3386)  ; FMax(a,b)
  %3430 = call float @dx.op.binary.f32(i32 35, float %3413, float %3386)  ; FMax(a,b)
  %3431 = call float @dx.op.dot3.f32(i32 55, float %3411, float %3412, float %3413, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3432 = select i1 %278, float %3386, float %3411
  %3433 = select i1 %278, float %3431, float %3412
  %3434 = select i1 %278, float 1.000000e+00, float %3413
  %3435 = select i1 %3427, float %3428, float %3432
  %3436 = select i1 %3427, float %3429, float %3433
  %3437 = select i1 %3427, float %3430, float %3434
  %3438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3439 = extractvalue %dx.types.CBufRet.f32 %3438, 0
  %3440 = extractvalue %dx.types.CBufRet.f32 %3438, 1
  %3441 = extractvalue %dx.types.CBufRet.f32 %3438, 2
  %3442 = fadd fast float %3439, %208
  %3443 = fadd fast float %3440, %209
  %3444 = fadd fast float %3441, %210
  %3445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3446 = extractvalue %dx.types.CBufRet.f32 %3445, 0
  %3447 = extractvalue %dx.types.CBufRet.f32 %3445, 1
  %3448 = fsub fast float %3442, %3446
  %3449 = fsub fast float %3443, %3447
  %3450 = fmul fast float %3448, %3448
  %3451 = fmul fast float %3449, %3449
  %3452 = fadd fast float %3450, %3451
  %3453 = call float @dx.op.unary.f32(i32 24, float %3452)  ; Sqrt(value)
  %3454 = extractvalue %dx.types.CBufRet.f32 %3445, 2
  %3455 = fcmp fast olt float %3453, %3454
  br i1 %3455, label %3456, label %3523

; <label>:3456                                    ; preds = %3382
  %3457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3458 = extractvalue %dx.types.CBufRet.f32 %3457, 0
  %3459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3460 = extractvalue %dx.types.CBufRet.f32 %3459, 0
  %3461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3462 = extractvalue %dx.types.CBufRet.f32 %3461, 0
  %3463 = extractvalue %dx.types.CBufRet.f32 %3457, 1
  %3464 = extractvalue %dx.types.CBufRet.f32 %3459, 1
  %3465 = extractvalue %dx.types.CBufRet.f32 %3461, 1
  %3466 = extractvalue %dx.types.CBufRet.f32 %3457, 3
  %3467 = extractvalue %dx.types.CBufRet.f32 %3459, 3
  %3468 = extractvalue %dx.types.CBufRet.f32 %3461, 3
  %3469 = fadd fast float %3466, %3442
  %3470 = fadd fast float %3467, %3443
  %3471 = fadd fast float %3468, %3444
  %3472 = fmul fast float %3469, %3458
  %3473 = call float @dx.op.tertiary.f32(i32 46, float %3470, float %3460, float %3472)  ; FMad(a,b,c)
  %3474 = call float @dx.op.tertiary.f32(i32 46, float %3471, float %3462, float %3473)  ; FMad(a,b,c)
  %3475 = fmul fast float %3469, %3463
  %3476 = call float @dx.op.tertiary.f32(i32 46, float %3470, float %3464, float %3475)  ; FMad(a,b,c)
  %3477 = call float @dx.op.tertiary.f32(i32 46, float %3471, float %3465, float %3476)  ; FMad(a,b,c)
  %3478 = fsub fast float %3474, %3466
  %3479 = fsub fast float %3477, %3467
  %3480 = fsub fast float %3478, %3446
  %3481 = fadd fast float %3480, %3454
  %3482 = fsub fast float %3479, %3447
  %3483 = fadd fast float %3482, %3454
  %3484 = extractvalue %dx.types.CBufRet.f32 %3445, 3
  %3485 = fmul fast float %3481, %3484
  %3486 = fmul fast float %3483, %3484
  %3487 = call float @dx.op.unary.f32(i32 7, float %3485)  ; Saturate(value)
  %3488 = call float @dx.op.unary.f32(i32 7, float %3486)  ; Saturate(value)
  %3489 = fsub fast float 1.000000e+00, %3487
  %3490 = fsub fast float 1.000000e+00, %3488
  %3491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %57, float %3489, float %3490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3492 = extractvalue %dx.types.ResRet.f32 %3491, 0
  %3493 = fcmp fast ugt float %3492, 0.000000e+00
  br i1 %3493, label %3494, label %3797

; <label>:3494                                    ; preds = %3456
  %3495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3496 = extractvalue %dx.types.CBufRet.f32 %3495, 2
  %3497 = fmul fast float %3496, %3492
  %3498 = extractvalue %dx.types.CBufRet.f32 %3495, 3
  %3499 = fadd fast float %3498, %3497
  %3500 = extractvalue %dx.types.CBufRet.f32 %3461, 2
  %3501 = fadd fast float %3499, %3468
  %3502 = fmul fast float %3474, %3462
  %3503 = call float @dx.op.tertiary.f32(i32 46, float %3477, float %3465, float %3502)  ; FMad(a,b,c)
  %3504 = call float @dx.op.tertiary.f32(i32 46, float %3501, float %3500, float %3503)  ; FMad(a,b,c)
  %3505 = fsub fast float %3504, %3468
  %3506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3507 = extractvalue %dx.types.CBufRet.f32 %3506, 2
  %3508 = fsub fast float %3505, %3507
  %3509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %57, float %3489, float %3490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3510 = extractvalue %dx.types.ResRet.f32 %3509, 0
  %3511 = extractvalue %dx.types.ResRet.f32 %3509, 1
  %3512 = extractvalue %dx.types.ResRet.f32 %3509, 2
  %3513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %57, float %3489, float %3490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3514 = extractvalue %dx.types.ResRet.f32 %3513, 0
  %3515 = extractvalue %dx.types.ResRet.f32 %3513, 1
  %3516 = extractvalue %dx.types.ResRet.f32 %3513, 2
  %3517 = fadd fast float %3514, %3510
  %3518 = fmul fast float %3517, 0x3F847AE140000000
  %3519 = fadd fast float %3515, %3511
  %3520 = fmul fast float %3519, 0x3F847AE140000000
  %3521 = fadd fast float %3516, %3512
  %3522 = fmul fast float %3521, 0x3F847AE140000000
  br label %3797

; <label>:3523                                    ; preds = %3382
  %3524 = and i32 %257, 1
  %3525 = icmp eq i32 %3524, 0
  br i1 %3525, label %3797, label %3526

; <label>:3526                                    ; preds = %3523
  %3527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3528 = extractvalue %dx.types.CBufRet.f32 %3527, 0
  %3529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3530 = extractvalue %dx.types.CBufRet.f32 %3529, 0
  %3531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3532 = extractvalue %dx.types.CBufRet.f32 %3531, 0
  %3533 = extractvalue %dx.types.CBufRet.f32 %3527, 1
  %3534 = extractvalue %dx.types.CBufRet.f32 %3529, 1
  %3535 = extractvalue %dx.types.CBufRet.f32 %3531, 1
  %3536 = extractvalue %dx.types.CBufRet.f32 %3527, 3
  %3537 = extractvalue %dx.types.CBufRet.f32 %3529, 3
  %3538 = extractvalue %dx.types.CBufRet.f32 %3531, 3
  %3539 = fadd fast float %3536, %3442
  %3540 = fadd fast float %3537, %3443
  %3541 = fadd fast float %3538, %3444
  %3542 = fmul fast float %3539, %3528
  %3543 = call float @dx.op.tertiary.f32(i32 46, float %3540, float %3530, float %3542)  ; FMad(a,b,c)
  %3544 = call float @dx.op.tertiary.f32(i32 46, float %3541, float %3532, float %3543)  ; FMad(a,b,c)
  %3545 = fmul fast float %3539, %3533
  %3546 = call float @dx.op.tertiary.f32(i32 46, float %3540, float %3534, float %3545)  ; FMad(a,b,c)
  %3547 = call float @dx.op.tertiary.f32(i32 46, float %3541, float %3535, float %3546)  ; FMad(a,b,c)
  %3548 = fsub fast float %3544, %3536
  %3549 = fsub fast float %3547, %3537
  %3550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3551 = extractvalue %dx.types.CBufRet.f32 %3550, 0
  %3552 = extractvalue %dx.types.CBufRet.f32 %3550, 1
  %3553 = extractvalue %dx.types.CBufRet.f32 %3550, 2
  %3554 = extractvalue %dx.types.CBufRet.f32 %3550, 3
  %3555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3556 = extractvalue %dx.types.CBufRet.f32 %3555, 3
  %3557 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3558 = extractvalue %dx.types.CBufRet.i32 %3557, 0
  %3559 = extractvalue %dx.types.CBufRet.i32 %3557, 1
  %3560 = udiv i32 %3559, %3558
  %3561 = fsub fast float %3548, %3551
  %3562 = fsub fast float %3549, %3552
  %3563 = call float @dx.op.binary.f32(i32 35, float %3561, float 0.000000e+00)  ; FMax(a,b)
  %3564 = call float @dx.op.binary.f32(i32 35, float %3562, float 0.000000e+00)  ; FMax(a,b)
  %3565 = call float @dx.op.binary.f32(i32 36, float %3563, float %3553)  ; FMin(a,b)
  %3566 = call float @dx.op.binary.f32(i32 36, float %3564, float %3554)  ; FMin(a,b)
  %3567 = add i32 %3558, -1
  %3568 = add i32 %3560, -1
  %3569 = fmul fast float %3565, %3556
  %3570 = fmul fast float %3566, %3556
  %3571 = fptoui float %3569 to i32
  %3572 = fptoui float %3570 to i32
  %3573 = call i32 @dx.op.binary.i32(i32 40, i32 %3571, i32 %3567)  ; UMin(a,b)
  %3574 = call i32 @dx.op.binary.i32(i32 40, i32 %3572, i32 %3568)  ; UMin(a,b)
  %3575 = mul i32 %3574, %3558
  %3576 = add i32 %3575, %3573
  %3577 = shl i32 %3576, 2
  %3578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.i32 %3578, 0
  %3580 = icmp eq i32 %3579, -1
  br i1 %3580, label %3797, label %3581

; <label>:3581                                    ; preds = %3526
  %3582 = mul i32 %3579, 148
  %3583 = add i32 %3582, 4
  %3584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.f32 %3584, 0
  %3586 = add i32 %3582, 8
  %3587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.f32 %3587, 0
  %3589 = add i32 %3582, 36
  %3590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3589, i32 undef)  ; BufferLoad(srv,index,wot)
  %3591 = extractvalue %dx.types.ResRet.f32 %3590, 0
  %3592 = add i32 %3582, 60
  %3593 = add i32 %3582, 92
  %3594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.i32 %3594, 0
  %3596 = add i32 %3582, 116
  %3597 = fsub fast float %3548, %3585
  %3598 = fsub fast float %3549, %3588
  %3599 = fmul fast float %3556, %3597
  %3600 = fmul fast float %3556, %3598
  %3601 = call float @dx.op.unary.f32(i32 7, float %3599)  ; Saturate(value)
  %3602 = call float @dx.op.unary.f32(i32 7, float %3600)  ; Saturate(value)
  %3603 = fsub fast float 1.000000e+00, %3602
  %3604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3605 = extractvalue %dx.types.CBufRet.f32 %3604, 2
  %3606 = call float @dx.op.unary.f32(i32 83, float %3601)  ; DerivCoarseX(value)
  %3607 = call float @dx.op.unary.f32(i32 83, float %3603)  ; DerivCoarseX(value)
  %3608 = call float @dx.op.unary.f32(i32 84, float %3601)  ; DerivCoarseY(value)
  %3609 = call float @dx.op.unary.f32(i32 84, float %3603)  ; DerivCoarseY(value)
  %3610 = fmul fast float %3606, %3605
  %3611 = fmul fast float %3607, %3605
  %3612 = fmul fast float %3608, %3605
  %3613 = fmul fast float %3609, %3605
  %3614 = call float @dx.op.dot2.f32(i32 54, float %3612, float %3613, float %3612, float %3613)  ; Dot2(ax,ay,bx,by)
  %3615 = call float @dx.op.dot2.f32(i32 54, float %3610, float %3611, float %3610, float %3611)  ; Dot2(ax,ay,bx,by)
  %3616 = call float @dx.op.binary.f32(i32 35, float %3615, float %3614)  ; FMax(a,b)
  %3617 = call float @dx.op.unary.f32(i32 23, float %3616)  ; Log(value)
  %3618 = fmul fast float %3617, 5.000000e-01
  %3619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3620 = extractvalue %dx.types.CBufRet.f32 %3619, 1
  %3621 = fadd fast float %3620, %3618
  %3622 = call float @dx.op.binary.f32(i32 35, float %3621, float 0.000000e+00)  ; FMax(a,b)
  %3623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3624 = extractvalue %dx.types.CBufRet.f32 %3623, 3
  %3625 = fadd fast float %3624, %3622
  %3626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3627 = extractvalue %dx.types.CBufRet.f32 %3626, 3
  %3628 = fadd fast float %3625, %3627
  %3629 = add i32 %3595, 0
  %3630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3629, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3631 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3630, i32 0)  ; GetDimensions(handle,mipLevel)
  %3632 = extractvalue %dx.types.Dimensions %3631, 0
  %3633 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3632)  ; FirstbitLo(value)
  %3634 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3635 = extractvalue %dx.types.CBufRet.i32 %3634, 1
  %3636 = sub nsw i32 %3635, %3633
  %3637 = sitofp i32 %3636 to float
  %3638 = fsub fast float %3628, %3637
  %3639 = call float @dx.op.binary.f32(i32 35, float %3638, float 0.000000e+00)  ; FMax(a,b)
  %3640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3630, %dx.types.Handle %55, float %3601, float %3603, float %3591, float undef, i32 0, i32 0, i32 undef, float %3639)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3641 = extractvalue %dx.types.ResRet.f32 %3640, 0
  %3642 = fcmp ule float %3641, 0x3FE0101020000000
  %3643 = extractvalue %dx.types.CBufRet.i32 %3634, 0
  %3644 = and i32 %3643, 128
  %3645 = icmp ne i32 %3644, 0
  %3646 = and i1 %3642, %3645
  br i1 %3646, label %3797, label %3647

; <label>:3647                                    ; preds = %3581
  %3648 = add i32 %3582, 20
  %3649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = add i32 %3582, 24
  %3652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.f32 %3652, 0
  %3654 = add i32 %3582, 40
  %3655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3654, i32 undef)  ; BufferLoad(srv,index,wot)
  %3656 = extractvalue %dx.types.ResRet.f32 %3655, 0
  %3657 = add i32 %3582, 96
  %3658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.i32 %3658, 0
  %3660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3661 = extractvalue %dx.types.CBufRet.f32 %3660, 2
  %3662 = fmul fast float %3661, %3601
  %3663 = fmul fast float %3661, %3603
  %3664 = extractvalue %dx.types.CBufRet.f32 %3660, 3
  %3665 = fadd fast float %3662, %3664
  %3666 = fadd fast float %3663, %3664
  %3667 = add i32 %3659, 0
  %3668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3667, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3669 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3668, i32 0)  ; GetDimensions(handle,mipLevel)
  %3670 = extractvalue %dx.types.Dimensions %3669, 0
  %3671 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3670)  ; FirstbitLo(value)
  %3672 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3673 = extractvalue %dx.types.CBufRet.i32 %3672, 1
  %3674 = sub nsw i32 %3673, %3671
  %3675 = sitofp i32 %3674 to float
  %3676 = fsub fast float %3625, %3675
  %3677 = call float @dx.op.binary.f32(i32 35, float %3676, float 0.000000e+00)  ; FMax(a,b)
  %3678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3668, %dx.types.Handle %55, float %3665, float %3666, float %3656, float undef, i32 0, i32 0, i32 undef, float %3677)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3679 = extractvalue %dx.types.ResRet.f32 %3678, 0
  %3680 = fmul fast float %3679, %3650
  %3681 = fadd fast float %3680, %3653
  %3682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3683 = extractvalue %dx.types.CBufRet.f32 %3682, 0
  %3684 = extractvalue %dx.types.CBufRet.f32 %3682, 1
  %3685 = extractvalue %dx.types.CBufRet.f32 %3682, 2
  %3686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3687 = extractvalue %dx.types.CBufRet.f32 %3686, 3
  %3688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3689 = extractvalue %dx.types.CBufRet.f32 %3688, 3
  %3690 = extractvalue %dx.types.CBufRet.f32 %3682, 3
  %3691 = fadd fast float %3687, %3548
  %3692 = fadd fast float %3689, %3549
  %3693 = fadd fast float %3681, %3690
  %3694 = fmul fast float %3691, %3683
  %3695 = call float @dx.op.tertiary.f32(i32 46, float %3692, float %3684, float %3694)  ; FMad(a,b,c)
  %3696 = call float @dx.op.tertiary.f32(i32 46, float %3693, float %3685, float %3695)  ; FMad(a,b,c)
  %3697 = fsub fast float %3696, %3690
  %3698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3699 = extractvalue %dx.types.CBufRet.f32 %3698, 2
  %3700 = fsub fast float %3697, %3699
  %3701 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3702 = extractvalue %dx.types.CBufRet.i32 %3701, 0
  %3703 = call i32 @dx.op.binary.i32(i32 40, i32 %3579, i32 %3702)  ; UMin(a,b)
  %3704 = mul i32 %3703, 36
  %3705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.i32 %3705, 0
  %3707 = add i32 %3704, 4
  %3708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3709 = extractvalue %dx.types.CBufRet.f32 %3708, 0
  %3710 = fmul fast float %3709, %3601
  %3711 = fmul fast float %3709, %3603
  %3712 = extractvalue %dx.types.CBufRet.f32 %3708, 1
  %3713 = fadd fast float %3710, %3712
  %3714 = fadd fast float %3711, %3712
  %3715 = icmp eq i32 %3706, 0
  br i1 %3715, label %3784, label %3716

; <label>:3716                                    ; preds = %3647
  br label %3717

; <label>:3717                                    ; preds = %3774, %3716
  %3718 = phi float [ %3775, %3774 ], [ 0.000000e+00, %3716 ]
  %3719 = phi float [ %3776, %3774 ], [ 0.000000e+00, %3716 ]
  %3720 = phi float [ %3777, %3774 ], [ 0.000000e+00, %3716 ]
  %3721 = phi float [ %3778, %3774 ], [ 0.000000e+00, %3716 ]
  %3722 = phi float [ %3779, %3774 ], [ 0.000000e+00, %3716 ]
  %3723 = phi float [ %3780, %3774 ], [ 0.000000e+00, %3716 ]
  %3724 = phi i32 [ %3781, %3774 ], [ 0, %3716 ]
  %3725 = shl i32 %3724, 2
  %3726 = add i32 %3592, %3725
  %3727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.f32 %3727, 0
  %3729 = add i32 %3596, %3725
  %3730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3731 = extractvalue %dx.types.ResRet.i32 %3730, 0
  %3732 = add i32 %3731, 0
  %3733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3732, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3734 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3733, i32 0)  ; GetDimensions(handle,mipLevel)
  %3735 = extractvalue %dx.types.Dimensions %3734, 0
  %3736 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3735)  ; FirstbitLo(value)
  %3737 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3738 = extractvalue %dx.types.CBufRet.i32 %3737, 1
  %3739 = sub nsw i32 %3738, %3736
  %3740 = sitofp i32 %3739 to float
  %3741 = fsub fast float %3625, %3740
  %3742 = call float @dx.op.binary.f32(i32 35, float %3741, float 0.000000e+00)  ; FMax(a,b)
  %3743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3733, %dx.types.Handle %55, float %3713, float %3714, float %3728, float undef, i32 0, i32 0, i32 undef, float %3742)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3744 = extractvalue %dx.types.ResRet.f32 %3743, 0
  %3745 = fcmp fast ogt float %3744, 0.000000e+00
  br i1 %3745, label %3746, label %3774

; <label>:3746                                    ; preds = %3717
  %3747 = add i32 %3707, %3725
  %3748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3747, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.i32 %3748, 0
  %3750 = and i32 %3749, 32767
  %3751 = mul nuw nsw i32 %3750, 928
  %3752 = add nuw nsw i32 %3751, 48
  %3753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %3752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3754 = extractvalue %dx.types.ResRet.f32 %3753, 0
  %3755 = extractvalue %dx.types.ResRet.f32 %3753, 1
  %3756 = extractvalue %dx.types.ResRet.f32 %3753, 2
  %3757 = add nuw nsw i32 %3751, 60
  %3758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %3757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3759 = extractvalue %dx.types.ResRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.ResRet.f32 %3758, 1
  %3761 = extractvalue %dx.types.ResRet.f32 %3758, 2
  %3762 = fmul fast float %3754, %3744
  %3763 = fmul fast float %3755, %3744
  %3764 = fmul fast float %3756, %3744
  %3765 = fadd fast float %3762, %3718
  %3766 = fadd fast float %3763, %3719
  %3767 = fadd fast float %3764, %3720
  %3768 = fmul fast float %3759, %3744
  %3769 = fmul fast float %3760, %3744
  %3770 = fmul fast float %3761, %3744
  %3771 = fadd fast float %3768, %3721
  %3772 = fadd fast float %3769, %3722
  %3773 = fadd fast float %3770, %3723
  br label %3774

; <label>:3774                                    ; preds = %3746, %3717
  %3775 = phi float [ %3765, %3746 ], [ %3718, %3717 ]
  %3776 = phi float [ %3766, %3746 ], [ %3719, %3717 ]
  %3777 = phi float [ %3767, %3746 ], [ %3720, %3717 ]
  %3778 = phi float [ %3771, %3746 ], [ %3721, %3717 ]
  %3779 = phi float [ %3772, %3746 ], [ %3722, %3717 ]
  %3780 = phi float [ %3773, %3746 ], [ %3723, %3717 ]
  %3781 = add nuw i32 %3724, 1
  %3782 = icmp eq i32 %3781, %3706
  br i1 %3782, label %3783, label %3717

; <label>:3783                                    ; preds = %3774
  br label %3784

; <label>:3784                                    ; preds = %3783, %3647
  %3785 = phi float [ 0.000000e+00, %3647 ], [ %3775, %3783 ]
  %3786 = phi float [ 0.000000e+00, %3647 ], [ %3776, %3783 ]
  %3787 = phi float [ 0.000000e+00, %3647 ], [ %3777, %3783 ]
  %3788 = phi float [ 0.000000e+00, %3647 ], [ %3778, %3783 ]
  %3789 = phi float [ 0.000000e+00, %3647 ], [ %3779, %3783 ]
  %3790 = phi float [ 0.000000e+00, %3647 ], [ %3780, %3783 ]
  %3791 = fadd fast float %3788, %3785
  %3792 = fmul fast float %3791, 0x3F847AE140000000
  %3793 = fadd fast float %3789, %3786
  %3794 = fmul fast float %3793, 0x3F847AE140000000
  %3795 = fadd fast float %3790, %3787
  %3796 = fmul fast float %3795, 0x3F847AE140000000
  br label %3797

; <label>:3797                                    ; preds = %3784, %3581, %3526, %3523, %3494, %3456
  %3798 = phi float [ %3508, %3494 ], [ -1.310720e+05, %3456 ], [ %3700, %3784 ], [ -1.310720e+05, %3526 ], [ -1.310720e+05, %3581 ], [ -1.310720e+05, %3523 ]
  %3799 = phi float [ %3518, %3494 ], [ 0.000000e+00, %3456 ], [ %3792, %3784 ], [ 0.000000e+00, %3526 ], [ 0.000000e+00, %3581 ], [ 0.000000e+00, %3523 ]
  %3800 = phi float [ %3520, %3494 ], [ 0.000000e+00, %3456 ], [ %3794, %3784 ], [ 0.000000e+00, %3526 ], [ 0.000000e+00, %3581 ], [ 0.000000e+00, %3523 ]
  %3801 = phi float [ %3522, %3494 ], [ 0.000000e+00, %3456 ], [ %3796, %3784 ], [ 0.000000e+00, %3526 ], [ 0.000000e+00, %3581 ], [ 0.000000e+00, %3523 ]
  %3802 = phi i1 [ true, %3494 ], [ false, %3456 ], [ true, %3784 ], [ false, %3526 ], [ false, %3581 ], [ false, %3523 ]
  %3803 = and i32 %257, 3
  %3804 = icmp eq i32 %3803, 1
  %3805 = select i1 %3804, float 1.000000e+00, float 0.000000e+00
  %3806 = fsub fast float %3798, %210
  %3807 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3808 = select i1 %3802, float %3807, float 1.000000e+00
  %3809 = fmul fast float %3808, %3805
  %3810 = icmp eq i32 %3803, 3
  %3811 = select i1 %3810, float 1.000000e+00, float %3809
  %3812 = call float @dx.op.binary.f32(i32 35, float %3398, float %3811)  ; FMax(a,b)
  %3813 = fcmp fast olt float %3811, 1.000000e+00
  %3814 = fcmp uge float %81, 0.000000e+00
  %3815 = and i1 %3814, %3813
  br i1 %3815, label %3816, label %3826

; <label>:3816                                    ; preds = %3797
  %3817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %81, float %82, float %83, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3818 = extractvalue %dx.types.ResRet.f32 %3817, 0
  %3819 = extractvalue %dx.types.ResRet.f32 %3817, 1
  %3820 = extractvalue %dx.types.ResRet.f32 %3817, 2
  %3821 = fadd fast float %3818, %3812
  %3822 = fcmp ule float %80, 0.000000e+00
  %3823 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3824 = select i1 %3822, float %3823, float 1.000000e+00
  %3825 = fmul fast float %3824, %3820
  br label %3826

; <label>:3826                                    ; preds = %3816, %3797
  %3827 = phi float [ %3821, %3816 ], [ %3812, %3797 ]
  %3828 = phi float [ %3819, %3816 ], [ 0.000000e+00, %3797 ]
  %3829 = phi float [ %3825, %3816 ], [ 0.000000e+00, %3797 ]
  %3830 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  %3831 = call float @dx.op.unary.f32(i32 7, float %3828)  ; Saturate(value)
  %3832 = call float @dx.op.unary.f32(i32 7, float %3829)  ; Saturate(value)
  %3833 = fcmp fast une float %3831, 0.000000e+00
  %3834 = fcmp fast une float %3832, 0.000000e+00
  %3835 = or i1 %3833, %3834
  br i1 %3835, label %3836, label %4395

; <label>:3836                                    ; preds = %3826
  br i1 %3833, label %3837, label %4110

; <label>:3837                                    ; preds = %3836
  %3838 = call float @dx.op.unary.f32(i32 23, float %3395)  ; Log(value)
  %3839 = fmul fast float %3838, 4.000000e+00
  %3840 = call float @dx.op.unary.f32(i32 21, float %3839)  ; Exp(value)
  %3841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3842 = extractvalue %dx.types.CBufRet.f32 %3841, 0
  %3843 = fmul fast float %3842, %67
  %3844 = fmul fast float %3842, %68
  %3845 = fmul fast float %3842, %69
  %3846 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %3847 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %3848 = call float @dx.op.unary.f32(i32 6, float %79)  ; FAbs(value)
  %3849 = call float @dx.op.unary.f32(i32 23, float %3846)  ; Log(value)
  %3850 = call float @dx.op.unary.f32(i32 23, float %3847)  ; Log(value)
  %3851 = call float @dx.op.unary.f32(i32 23, float %3848)  ; Log(value)
  %3852 = fmul fast float %3849, 4.000000e+00
  %3853 = fmul fast float %3850, 4.000000e+00
  %3854 = fmul fast float %3851, 4.000000e+00
  %3855 = call float @dx.op.unary.f32(i32 21, float %3852)  ; Exp(value)
  %3856 = call float @dx.op.unary.f32(i32 21, float %3853)  ; Exp(value)
  %3857 = call float @dx.op.unary.f32(i32 21, float %3854)  ; Exp(value)
  %3858 = fadd fast float %3856, %3855
  %3859 = fadd fast float %3858, %3857
  %3860 = fdiv fast float 1.000000e+00, %3859
  %3861 = fmul fast float %3860, %3855
  %3862 = fcmp fast ogt float %77, 0.000000e+00
  %3863 = fcmp fast ogt float %78, 0.000000e+00
  %3864 = fcmp fast ogt float %79, 0.000000e+00
  %3865 = fcmp fast olt float %77, 0.000000e+00
  %3866 = fcmp fast olt float %78, 0.000000e+00
  %3867 = fcmp fast olt float %79, 0.000000e+00
  %3868 = zext i1 %3862 to i32
  %3869 = zext i1 %3863 to i32
  %3870 = zext i1 %3864 to i32
  %3871 = zext i1 %3865 to i32
  %3872 = zext i1 %3866 to i32
  %3873 = zext i1 %3867 to i32
  %3874 = sub nsw i32 %3868, %3871
  %3875 = sub nsw i32 %3869, %3872
  %3876 = sub nsw i32 %3870, %3873
  %3877 = call float @dx.op.unary.f32(i32 83, float %3843)  ; DerivCoarseX(value)
  %3878 = call float @dx.op.unary.f32(i32 83, float %3844)  ; DerivCoarseX(value)
  %3879 = call float @dx.op.unary.f32(i32 83, float %3845)  ; DerivCoarseX(value)
  %3880 = call float @dx.op.unary.f32(i32 84, float %3843)  ; DerivCoarseY(value)
  %3881 = call float @dx.op.unary.f32(i32 84, float %3844)  ; DerivCoarseY(value)
  %3882 = call float @dx.op.unary.f32(i32 84, float %3845)  ; DerivCoarseY(value)
  %3883 = fcmp fast ole float %289, %3861
  %3884 = fmul fast float %3860, %3858
  %3885 = fcmp fast ole float %289, %3884
  %3886 = select i1 %3885, float %3845, float %3843
  %3887 = select i1 %3885, float %3843, float %3844
  %3888 = select i1 %3883, float %3844, float %3886
  %3889 = select i1 %3883, float %3845, float %3887
  %3890 = select i1 %3885, float %3879, float %3877
  %3891 = select i1 %3885, float %3877, float %3878
  %3892 = select i1 %3883, float %3878, float %3890
  %3893 = select i1 %3883, float %3879, float %3891
  %3894 = select i1 %3885, float %3882, float %3880
  %3895 = select i1 %3885, float %3880, float %3881
  %3896 = select i1 %3883, float %3881, float %3894
  %3897 = select i1 %3883, float %3882, float %3895
  %3898 = call float @dx.op.unary.f32(i32 27, float %3888)  ; Round_ni(value)
  %3899 = call float @dx.op.unary.f32(i32 27, float %3889)  ; Round_ni(value)
  %3900 = fptosi float %3898 to i32
  %3901 = fptosi float %3899 to i32
  %3902 = xor i32 %3901, %3900
  %3903 = sitofp i32 %3902 to float
  %3904 = fptosi float %3903 to i32
  %3905 = sitofp i32 %3904 to float
  %3906 = fmul fast float %3905, 0x3FE3C6EF40000000
  %3907 = frem fast float %3898, 2.560000e+02
  %3908 = frem fast float %3899, 2.560000e+02
  %3909 = fptoui float %3907 to i32
  %3910 = fptoui float %3908 to i32
  %3911 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %39, i32 0, i32 %3909, i32 %3910, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3912 = extractvalue %dx.types.ResRet.f32 %3911, 0
  %3913 = extractvalue %dx.types.ResRet.f32 %3911, 1
  %3914 = extractvalue %dx.types.ResRet.f32 %3911, 2
  %3915 = fadd fast float %3912, %3906
  %3916 = fadd fast float %3913, %3906
  %3917 = fadd fast float %3914, %3906
  %3918 = call float @dx.op.unary.f32(i32 22, float %3915)  ; Frc(value)
  %3919 = call float @dx.op.unary.f32(i32 22, float %3916)  ; Frc(value)
  %3920 = call float @dx.op.unary.f32(i32 22, float %3917)  ; Frc(value)
  %3921 = fmul fast float %3920, 0x401921FB60000000
  %3922 = call float @dx.op.unary.f32(i32 13, float %3921)  ; Sin(value)
  %3923 = call float @dx.op.unary.f32(i32 12, float %3921)  ; Cos(value)
  %3924 = fsub fast float -0.000000e+00, %3923
  %3925 = fmul fast float %3923, %3888
  %3926 = call float @dx.op.tertiary.f32(i32 46, float %3922, float %3889, float %3925)  ; FMad(a,b,c)
  %3927 = fmul fast float %3922, %3888
  %3928 = call float @dx.op.tertiary.f32(i32 46, float %3924, float %3889, float %3927)  ; FMad(a,b,c)
  %3929 = fadd fast float %3926, %3918
  %3930 = fadd fast float %3928, %3919
  %3931 = extractvalue %dx.types.CBufRet.f32 %3841, 3
  %3932 = bitcast float %3931 to i32
  %3933 = icmp eq i32 %3932, 0
  br i1 %3933, label %3972, label %3934

; <label>:3934                                    ; preds = %3837
  %3935 = add i32 %3932, 0
  %3936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3937 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3936, %dx.types.Handle %118, float %3929, float %3930, float undef, float undef, i32 0, i32 0, i32 undef, float %3892, float %3893, float undef, float %3896, float %3897, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3938 = extractvalue %dx.types.ResRet.f32 %3937, 0
  %3939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3940 = extractvalue %dx.types.CBufRet.f32 %3939, 1
  %3941 = extractvalue %dx.types.CBufRet.f32 %3939, 2
  %3942 = fsub fast float 1.000000e+00, %3831
  %3943 = call float @dx.op.binary.f32(i32 35, float %3942, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3944 = bitcast float %3831 to i32
  %3945 = sitofp i32 %3944 to float
  %3946 = fadd fast float %3945, 0xC1CFBF8940000000
  %3947 = fmul fast float %3941, %3946
  %3948 = fadd fast float %3947, 0x41CFBF8940000000
  %3949 = fptosi float %3948 to i32
  %3950 = bitcast i32 %3949 to float
  %3951 = bitcast float %3943 to i32
  %3952 = sitofp i32 %3951 to float
  %3953 = fadd fast float %3952, 0xC1CFBF8940000000
  %3954 = fmul fast float %3953, %3941
  %3955 = fadd fast float %3954, 0x41CFBF8940000000
  %3956 = fptosi float %3955 to i32
  %3957 = bitcast i32 %3956 to float
  %3958 = fmul fast float %3950, %3940
  %3959 = fmul fast float %3957, %3940
  %3960 = fsub fast float %3943, %3958
  %3961 = fadd fast float %3959, %3943
  %3962 = call float @dx.op.unary.f32(i32 7, float %3960)  ; Saturate(value)
  %3963 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  %3964 = fsub fast float %3938, %3962
  %3965 = fsub fast float %3963, %3962
  %3966 = bitcast float %3965 to i32
  %3967 = sub nsw i32 2129859010, %3966
  %3968 = bitcast i32 %3967 to float
  %3969 = fmul fast float %3968, %3964
  %3970 = call float @dx.op.unary.f32(i32 7, float %3969)  ; Saturate(value)
  %3971 = fcmp fast olt float %3970, 0x3F70101020000000
  br i1 %3971, label %4110, label %3972

; <label>:3972                                    ; preds = %3934, %3837
  %3973 = phi float [ %3970, %3934 ], [ %3831, %3837 ]
  %3974 = fmul fast float %3973, %3840
  %3975 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3976 = extractvalue %dx.types.CBufRet.i32 %3975, 1
  %3977 = extractvalue %dx.types.CBufRet.i32 %3975, 0
  %3978 = add i32 %3977, 0
  %3979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3978, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3980 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3979, %dx.types.Handle %117, float %3929, float %3930, float undef, float undef, i32 0, i32 0, i32 undef, float %3892, float %3893, float undef, float %3896, float %3897, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = extractvalue %dx.types.ResRet.f32 %3980, 1
  %3983 = extractvalue %dx.types.ResRet.f32 %3980, 2
  %3984 = extractvalue %dx.types.ResRet.f32 %3980, 3
  %3985 = and i32 %3976, 255
  %3986 = uitofp i32 %3985 to float
  %3987 = lshr i32 %3976, 8
  %3988 = and i32 %3987, 255
  %3989 = uitofp i32 %3988 to float
  %3990 = fmul fast float %3984, %3986
  %3991 = fadd fast float %3990, %3989
  %3992 = fmul fast float %3991, 0x3F70101000000000
  %3993 = fadd fast float %3992, 0xBFB99999A0000000
  %3994 = call float @dx.op.unary.f32(i32 7, float %3993)  ; Saturate(value)
  %3995 = fmul fast float %3994, 0x3FF1C71C80000000
  %3996 = call float @dx.op.binary.f32(i32 36, float %3992, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3997 = fsub fast float 1.000000e+00, %3995
  %3998 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %3999 = fmul fast float %3998, %3981
  %4000 = fmul fast float %3998, %3982
  %4001 = fmul fast float %3998, %3983
  %4002 = call float @dx.op.unary.f32(i32 7, float %3999)  ; Saturate(value)
  %4003 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4004 = call float @dx.op.unary.f32(i32 7, float %4001)  ; Saturate(value)
  %4005 = fmul fast float %3995, %3981
  %4006 = fmul fast float %3995, %3982
  %4007 = fmul fast float %3995, %3983
  %4008 = fadd fast float %4005, %3996
  %4009 = fadd fast float %4006, %3996
  %4010 = fadd fast float %4007, %3996
  %4011 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  %4012 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4013 = call float @dx.op.unary.f32(i32 7, float %4010)  ; Saturate(value)
  %4014 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.i32 %4014, 3
  %4016 = extractvalue %dx.types.CBufRet.i32 %4014, 2
  %4017 = add i32 %4016, 0
  %4018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4017, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4019 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4018, %dx.types.Handle %117, float %3929, float %3930, float undef, float undef, i32 0, i32 0, i32 undef, float %3892, float %3893, float undef, float %3896, float %3897, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4020 = extractvalue %dx.types.ResRet.f32 %4019, 0
  %4021 = extractvalue %dx.types.ResRet.f32 %4019, 1
  %4022 = extractvalue %dx.types.ResRet.f32 %4019, 2
  %4023 = extractvalue %dx.types.ResRet.f32 %4019, 3
  %4024 = and i32 %4015, 255
  %4025 = uitofp i32 %4024 to float
  %4026 = lshr i32 %4015, 8
  %4027 = and i32 %4026, 255
  %4028 = uitofp i32 %4027 to float
  %4029 = lshr i32 %4015, 16
  %4030 = and i32 %4029, 255
  %4031 = uitofp i32 %4030 to float
  %4032 = fmul fast float %4031, 0x3F70101000000000
  %4033 = fmul fast float %4020, %4025
  %4034 = fadd fast float %4033, %4028
  %4035 = fmul fast float %4034, 0x3F70101000000000
  %4036 = fadd fast float %4021, -5.000000e-01
  %4037 = fadd fast float %4023, -5.000000e-01
  %4038 = fmul fast float %4036, %4032
  %4039 = fmul fast float %4037, %4032
  %4040 = fadd fast float %4038, 5.000000e-01
  %4041 = fadd fast float %4039, 5.000000e-01
  %4042 = fmul fast float %4040, 2.000000e+00
  %4043 = fadd fast float %4042, -1.000000e+00
  %4044 = fmul fast float %4041, 2.000000e+00
  %4045 = fadd fast float %4044, -1.000000e+00
  %4046 = fadd fast float %4043, %4045
  %4047 = fmul fast float %4046, 5.000000e-01
  %4048 = fsub fast float %4043, %4045
  %4049 = fmul fast float %4048, 5.000000e-01
  %4050 = call float @dx.op.unary.f32(i32 6, float %4047)  ; FAbs(value)
  %4051 = fsub fast float 1.000000e+00, %4050
  %4052 = call float @dx.op.unary.f32(i32 6, float %4049)  ; FAbs(value)
  %4053 = fsub fast float %4051, %4052
  %4054 = call float @dx.op.dot3.f32(i32 55, float %4047, float %4049, float %4053, float %4047, float %4049, float %4053)  ; Dot3(ax,ay,az,bx,by,bz)
  %4055 = call float @dx.op.unary.f32(i32 25, float %4054)  ; Rsqrt(value)
  %4056 = fmul fast float %4047, %4055
  %4057 = fmul fast float %4049, %4055
  %4058 = select i1 %3885, i32 %3875, i32 %3876
  %4059 = select i1 %3883, i32 %3874, i32 %4058
  %4060 = sitofp i32 %4059 to float
  %4061 = fmul fast float %4053, %4060
  %4062 = fmul fast float %4061, %4055
  %4063 = select i1 %3885, float %4062, float %4057
  %4064 = select i1 %3885, float %4057, float %4062
  %4065 = select i1 %3883, float %4062, float %4056
  %4066 = select i1 %3883, float %4057, float %4063
  %4067 = select i1 %3883, float %4056, float %4064
  %4068 = fsub fast float %4002, %3435
  %4069 = fsub fast float %4003, %3436
  %4070 = fsub fast float %4004, %3437
  %4071 = fmul fast float %4068, %3974
  %4072 = fmul fast float %4069, %3974
  %4073 = fmul fast float %4070, %3974
  %4074 = fadd fast float %4071, %3435
  %4075 = fadd fast float %4072, %3436
  %4076 = fadd fast float %4073, %3437
  %4077 = fsub fast float %4011, %3420
  %4078 = fsub fast float %4012, %3421
  %4079 = fsub fast float %4013, %3422
  %4080 = fmul fast float %4077, %3974
  %4081 = fmul fast float %4078, %3974
  %4082 = fmul fast float %4079, %3974
  %4083 = fadd fast float %4080, %3420
  %4084 = fadd fast float %4081, %3421
  %4085 = fadd fast float %4082, %3422
  %4086 = fadd fast float %4065, %3383
  %4087 = fadd fast float %4066, %3384
  %4088 = fadd fast float %4067, %3385
  %4089 = call float @dx.op.dot3.f32(i32 55, float %4086, float %4087, float %4088, float %4086, float %4087, float %4088)  ; Dot3(ax,ay,az,bx,by,bz)
  %4090 = call float @dx.op.unary.f32(i32 25, float %4089)  ; Rsqrt(value)
  %4091 = fmul fast float %4086, %4090
  %4092 = fmul fast float %4087, %4090
  %4093 = fmul fast float %4088, %4090
  %4094 = fsub fast float %4091, %3383
  %4095 = fsub fast float %4092, %3384
  %4096 = fsub fast float %4093, %3385
  %4097 = fmul fast float %4094, %3974
  %4098 = fmul fast float %4095, %3974
  %4099 = fmul fast float %4096, %3974
  %4100 = fadd fast float %4097, %3383
  %4101 = fadd fast float %4098, %3384
  %4102 = fadd fast float %4099, %3385
  %4103 = call float @dx.op.binary.f32(i32 36, float %3395, float %4022)  ; FMin(a,b)
  %4104 = fsub fast float %4103, %3395
  %4105 = fmul fast float %4104, %3974
  %4106 = fadd fast float %4105, %3395
  %4107 = fsub fast float %4035, %3423
  %4108 = fmul fast float %4107, %3974
  %4109 = fadd fast float %4108, %3423
  br label %4110

; <label>:4110                                    ; preds = %3972, %3934, %3836
  %4111 = phi float [ %4074, %3972 ], [ %3435, %3934 ], [ %3435, %3836 ]
  %4112 = phi float [ %4075, %3972 ], [ %3436, %3934 ], [ %3436, %3836 ]
  %4113 = phi float [ %4076, %3972 ], [ %3437, %3934 ], [ %3437, %3836 ]
  %4114 = phi float [ %4100, %3972 ], [ %3383, %3934 ], [ %3383, %3836 ]
  %4115 = phi float [ %4101, %3972 ], [ %3384, %3934 ], [ %3384, %3836 ]
  %4116 = phi float [ %4102, %3972 ], [ %3385, %3934 ], [ %3385, %3836 ]
  %4117 = phi float [ %4083, %3972 ], [ %3420, %3934 ], [ %3420, %3836 ]
  %4118 = phi float [ %4084, %3972 ], [ %3421, %3934 ], [ %3421, %3836 ]
  %4119 = phi float [ %4085, %3972 ], [ %3422, %3934 ], [ %3422, %3836 ]
  %4120 = phi float [ %4109, %3972 ], [ %3423, %3934 ], [ %3423, %3836 ]
  %4121 = phi float [ %4106, %3972 ], [ %3395, %3934 ], [ %3395, %3836 ]
  br i1 %3834, label %4122, label %4395

; <label>:4122                                    ; preds = %4110
  %4123 = call float @dx.op.unary.f32(i32 23, float %4121)  ; Log(value)
  %4124 = fmul fast float %4123, 4.000000e+00
  %4125 = call float @dx.op.unary.f32(i32 21, float %4124)  ; Exp(value)
  %4126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4127 = extractvalue %dx.types.CBufRet.f32 %4126, 0
  %4128 = fmul fast float %4127, %67
  %4129 = fmul fast float %4127, %68
  %4130 = fmul fast float %4127, %69
  %4131 = call float @dx.op.unary.f32(i32 6, float %77)  ; FAbs(value)
  %4132 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %4133 = call float @dx.op.unary.f32(i32 6, float %79)  ; FAbs(value)
  %4134 = call float @dx.op.unary.f32(i32 23, float %4131)  ; Log(value)
  %4135 = call float @dx.op.unary.f32(i32 23, float %4132)  ; Log(value)
  %4136 = call float @dx.op.unary.f32(i32 23, float %4133)  ; Log(value)
  %4137 = fmul fast float %4134, 4.000000e+00
  %4138 = fmul fast float %4135, 4.000000e+00
  %4139 = fmul fast float %4136, 4.000000e+00
  %4140 = call float @dx.op.unary.f32(i32 21, float %4137)  ; Exp(value)
  %4141 = call float @dx.op.unary.f32(i32 21, float %4138)  ; Exp(value)
  %4142 = call float @dx.op.unary.f32(i32 21, float %4139)  ; Exp(value)
  %4143 = fadd fast float %4141, %4140
  %4144 = fadd fast float %4143, %4142
  %4145 = fdiv fast float 1.000000e+00, %4144
  %4146 = fmul fast float %4145, %4140
  %4147 = fcmp fast ogt float %77, 0.000000e+00
  %4148 = fcmp fast ogt float %78, 0.000000e+00
  %4149 = fcmp fast ogt float %79, 0.000000e+00
  %4150 = fcmp fast olt float %77, 0.000000e+00
  %4151 = fcmp fast olt float %78, 0.000000e+00
  %4152 = fcmp fast olt float %79, 0.000000e+00
  %4153 = zext i1 %4147 to i32
  %4154 = zext i1 %4148 to i32
  %4155 = zext i1 %4149 to i32
  %4156 = zext i1 %4150 to i32
  %4157 = zext i1 %4151 to i32
  %4158 = zext i1 %4152 to i32
  %4159 = sub nsw i32 %4153, %4156
  %4160 = sub nsw i32 %4154, %4157
  %4161 = sub nsw i32 %4155, %4158
  %4162 = call float @dx.op.unary.f32(i32 83, float %4128)  ; DerivCoarseX(value)
  %4163 = call float @dx.op.unary.f32(i32 83, float %4129)  ; DerivCoarseX(value)
  %4164 = call float @dx.op.unary.f32(i32 83, float %4130)  ; DerivCoarseX(value)
  %4165 = call float @dx.op.unary.f32(i32 84, float %4128)  ; DerivCoarseY(value)
  %4166 = call float @dx.op.unary.f32(i32 84, float %4129)  ; DerivCoarseY(value)
  %4167 = call float @dx.op.unary.f32(i32 84, float %4130)  ; DerivCoarseY(value)
  %4168 = fcmp fast ole float %289, %4146
  %4169 = fmul fast float %4145, %4143
  %4170 = fcmp fast ole float %289, %4169
  %4171 = select i1 %4170, float %4130, float %4128
  %4172 = select i1 %4170, float %4128, float %4129
  %4173 = select i1 %4168, float %4129, float %4171
  %4174 = select i1 %4168, float %4130, float %4172
  %4175 = select i1 %4170, float %4164, float %4162
  %4176 = select i1 %4170, float %4162, float %4163
  %4177 = select i1 %4168, float %4163, float %4175
  %4178 = select i1 %4168, float %4164, float %4176
  %4179 = select i1 %4170, float %4167, float %4165
  %4180 = select i1 %4170, float %4165, float %4166
  %4181 = select i1 %4168, float %4166, float %4179
  %4182 = select i1 %4168, float %4167, float %4180
  %4183 = call float @dx.op.unary.f32(i32 27, float %4173)  ; Round_ni(value)
  %4184 = call float @dx.op.unary.f32(i32 27, float %4174)  ; Round_ni(value)
  %4185 = fptosi float %4183 to i32
  %4186 = fptosi float %4184 to i32
  %4187 = xor i32 %4186, %4185
  %4188 = sitofp i32 %4187 to float
  %4189 = fptosi float %4188 to i32
  %4190 = sitofp i32 %4189 to float
  %4191 = fmul fast float %4190, 0x3FE3C6EF40000000
  %4192 = frem fast float %4183, 2.560000e+02
  %4193 = frem fast float %4184, 2.560000e+02
  %4194 = fptoui float %4192 to i32
  %4195 = fptoui float %4193 to i32
  %4196 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %39, i32 0, i32 %4194, i32 %4195, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4197 = extractvalue %dx.types.ResRet.f32 %4196, 0
  %4198 = extractvalue %dx.types.ResRet.f32 %4196, 1
  %4199 = extractvalue %dx.types.ResRet.f32 %4196, 2
  %4200 = fadd fast float %4197, %4191
  %4201 = fadd fast float %4198, %4191
  %4202 = fadd fast float %4199, %4191
  %4203 = call float @dx.op.unary.f32(i32 22, float %4200)  ; Frc(value)
  %4204 = call float @dx.op.unary.f32(i32 22, float %4201)  ; Frc(value)
  %4205 = call float @dx.op.unary.f32(i32 22, float %4202)  ; Frc(value)
  %4206 = fmul fast float %4205, 0x401921FB60000000
  %4207 = call float @dx.op.unary.f32(i32 13, float %4206)  ; Sin(value)
  %4208 = call float @dx.op.unary.f32(i32 12, float %4206)  ; Cos(value)
  %4209 = fsub fast float -0.000000e+00, %4208
  %4210 = fmul fast float %4208, %4173
  %4211 = call float @dx.op.tertiary.f32(i32 46, float %4207, float %4174, float %4210)  ; FMad(a,b,c)
  %4212 = fmul fast float %4207, %4173
  %4213 = call float @dx.op.tertiary.f32(i32 46, float %4209, float %4174, float %4212)  ; FMad(a,b,c)
  %4214 = fadd fast float %4211, %4203
  %4215 = fadd fast float %4213, %4204
  %4216 = extractvalue %dx.types.CBufRet.f32 %4126, 3
  %4217 = bitcast float %4216 to i32
  %4218 = icmp eq i32 %4217, 0
  br i1 %4218, label %4257, label %4219

; <label>:4219                                    ; preds = %4122
  %4220 = add i32 %4217, 0
  %4221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4222 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4221, %dx.types.Handle %118, float %4214, float %4215, float undef, float undef, i32 0, i32 0, i32 undef, float %4177, float %4178, float undef, float %4181, float %4182, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4223 = extractvalue %dx.types.ResRet.f32 %4222, 0
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 1
  %4226 = extractvalue %dx.types.CBufRet.f32 %4224, 2
  %4227 = fsub fast float 1.000000e+00, %3832
  %4228 = call float @dx.op.binary.f32(i32 35, float %4227, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4229 = bitcast float %3832 to i32
  %4230 = sitofp i32 %4229 to float
  %4231 = fadd fast float %4230, 0xC1CFBF8940000000
  %4232 = fmul fast float %4226, %4231
  %4233 = fadd fast float %4232, 0x41CFBF8940000000
  %4234 = fptosi float %4233 to i32
  %4235 = bitcast i32 %4234 to float
  %4236 = bitcast float %4228 to i32
  %4237 = sitofp i32 %4236 to float
  %4238 = fadd fast float %4237, 0xC1CFBF8940000000
  %4239 = fmul fast float %4238, %4226
  %4240 = fadd fast float %4239, 0x41CFBF8940000000
  %4241 = fptosi float %4240 to i32
  %4242 = bitcast i32 %4241 to float
  %4243 = fmul fast float %4235, %4225
  %4244 = fmul fast float %4242, %4225
  %4245 = fsub fast float %4228, %4243
  %4246 = fadd fast float %4244, %4228
  %4247 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4248 = call float @dx.op.unary.f32(i32 7, float %4246)  ; Saturate(value)
  %4249 = fsub fast float %4223, %4247
  %4250 = fsub fast float %4248, %4247
  %4251 = bitcast float %4250 to i32
  %4252 = sub nsw i32 2129859010, %4251
  %4253 = bitcast i32 %4252 to float
  %4254 = fmul fast float %4253, %4249
  %4255 = call float @dx.op.unary.f32(i32 7, float %4254)  ; Saturate(value)
  %4256 = fcmp fast olt float %4255, 0x3F70101020000000
  br i1 %4256, label %4395, label %4257

; <label>:4257                                    ; preds = %4219, %4122
  %4258 = phi float [ %4255, %4219 ], [ %3832, %4122 ]
  %4259 = fmul fast float %4258, %4125
  %4260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4261 = extractvalue %dx.types.CBufRet.i32 %4260, 1
  %4262 = extractvalue %dx.types.CBufRet.i32 %4260, 0
  %4263 = add i32 %4262, 0
  %4264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4263, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4265 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4264, %dx.types.Handle %117, float %4214, float %4215, float undef, float undef, i32 0, i32 0, i32 undef, float %4177, float %4178, float undef, float %4181, float %4182, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4266 = extractvalue %dx.types.ResRet.f32 %4265, 0
  %4267 = extractvalue %dx.types.ResRet.f32 %4265, 1
  %4268 = extractvalue %dx.types.ResRet.f32 %4265, 2
  %4269 = extractvalue %dx.types.ResRet.f32 %4265, 3
  %4270 = and i32 %4261, 255
  %4271 = uitofp i32 %4270 to float
  %4272 = lshr i32 %4261, 8
  %4273 = and i32 %4272, 255
  %4274 = uitofp i32 %4273 to float
  %4275 = fmul fast float %4269, %4271
  %4276 = fadd fast float %4275, %4274
  %4277 = fmul fast float %4276, 0x3F70101000000000
  %4278 = fadd fast float %4277, 0xBFB99999A0000000
  %4279 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4280 = fmul fast float %4279, 0x3FF1C71C80000000
  %4281 = call float @dx.op.binary.f32(i32 36, float %4277, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4282 = fsub fast float 1.000000e+00, %4280
  %4283 = call float @dx.op.unary.f32(i32 7, float %4282)  ; Saturate(value)
  %4284 = fmul fast float %4283, %4266
  %4285 = fmul fast float %4283, %4267
  %4286 = fmul fast float %4283, %4268
  %4287 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4288 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4289 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4290 = fmul fast float %4280, %4266
  %4291 = fmul fast float %4280, %4267
  %4292 = fmul fast float %4280, %4268
  %4293 = fadd fast float %4290, %4281
  %4294 = fadd fast float %4291, %4281
  %4295 = fadd fast float %4292, %4281
  %4296 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4297 = call float @dx.op.unary.f32(i32 7, float %4294)  ; Saturate(value)
  %4298 = call float @dx.op.unary.f32(i32 7, float %4295)  ; Saturate(value)
  %4299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4300 = extractvalue %dx.types.CBufRet.i32 %4299, 3
  %4301 = extractvalue %dx.types.CBufRet.i32 %4299, 2
  %4302 = add i32 %4301, 0
  %4303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4302, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4304 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4303, %dx.types.Handle %117, float %4214, float %4215, float undef, float undef, i32 0, i32 0, i32 undef, float %4177, float %4178, float undef, float %4181, float %4182, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4305 = extractvalue %dx.types.ResRet.f32 %4304, 0
  %4306 = extractvalue %dx.types.ResRet.f32 %4304, 1
  %4307 = extractvalue %dx.types.ResRet.f32 %4304, 2
  %4308 = extractvalue %dx.types.ResRet.f32 %4304, 3
  %4309 = and i32 %4300, 255
  %4310 = uitofp i32 %4309 to float
  %4311 = lshr i32 %4300, 8
  %4312 = and i32 %4311, 255
  %4313 = uitofp i32 %4312 to float
  %4314 = lshr i32 %4300, 16
  %4315 = and i32 %4314, 255
  %4316 = uitofp i32 %4315 to float
  %4317 = fmul fast float %4316, 0x3F70101000000000
  %4318 = fmul fast float %4305, %4310
  %4319 = fadd fast float %4318, %4313
  %4320 = fmul fast float %4319, 0x3F70101000000000
  %4321 = fadd fast float %4306, -5.000000e-01
  %4322 = fadd fast float %4308, -5.000000e-01
  %4323 = fmul fast float %4321, %4317
  %4324 = fmul fast float %4322, %4317
  %4325 = fadd fast float %4323, 5.000000e-01
  %4326 = fadd fast float %4324, 5.000000e-01
  %4327 = fmul fast float %4325, 2.000000e+00
  %4328 = fadd fast float %4327, -1.000000e+00
  %4329 = fmul fast float %4326, 2.000000e+00
  %4330 = fadd fast float %4329, -1.000000e+00
  %4331 = fadd fast float %4328, %4330
  %4332 = fmul fast float %4331, 5.000000e-01
  %4333 = fsub fast float %4328, %4330
  %4334 = fmul fast float %4333, 5.000000e-01
  %4335 = call float @dx.op.unary.f32(i32 6, float %4332)  ; FAbs(value)
  %4336 = fsub fast float 1.000000e+00, %4335
  %4337 = call float @dx.op.unary.f32(i32 6, float %4334)  ; FAbs(value)
  %4338 = fsub fast float %4336, %4337
  %4339 = call float @dx.op.dot3.f32(i32 55, float %4332, float %4334, float %4338, float %4332, float %4334, float %4338)  ; Dot3(ax,ay,az,bx,by,bz)
  %4340 = call float @dx.op.unary.f32(i32 25, float %4339)  ; Rsqrt(value)
  %4341 = fmul fast float %4332, %4340
  %4342 = fmul fast float %4334, %4340
  %4343 = select i1 %4170, i32 %4160, i32 %4161
  %4344 = select i1 %4168, i32 %4159, i32 %4343
  %4345 = sitofp i32 %4344 to float
  %4346 = fmul fast float %4338, %4345
  %4347 = fmul fast float %4346, %4340
  %4348 = select i1 %4170, float %4347, float %4342
  %4349 = select i1 %4170, float %4342, float %4347
  %4350 = select i1 %4168, float %4347, float %4341
  %4351 = select i1 %4168, float %4342, float %4348
  %4352 = select i1 %4168, float %4341, float %4349
  %4353 = fsub fast float %4287, %4111
  %4354 = fsub fast float %4288, %4112
  %4355 = fsub fast float %4289, %4113
  %4356 = fmul fast float %4353, %4259
  %4357 = fmul fast float %4354, %4259
  %4358 = fmul fast float %4355, %4259
  %4359 = fadd fast float %4356, %4111
  %4360 = fadd fast float %4357, %4112
  %4361 = fadd fast float %4358, %4113
  %4362 = fsub fast float %4296, %4117
  %4363 = fsub fast float %4297, %4118
  %4364 = fsub fast float %4298, %4119
  %4365 = fmul fast float %4362, %4259
  %4366 = fmul fast float %4363, %4259
  %4367 = fmul fast float %4364, %4259
  %4368 = fadd fast float %4365, %4117
  %4369 = fadd fast float %4366, %4118
  %4370 = fadd fast float %4367, %4119
  %4371 = fadd fast float %4350, %4114
  %4372 = fadd fast float %4351, %4115
  %4373 = fadd fast float %4352, %4116
  %4374 = call float @dx.op.dot3.f32(i32 55, float %4371, float %4372, float %4373, float %4371, float %4372, float %4373)  ; Dot3(ax,ay,az,bx,by,bz)
  %4375 = call float @dx.op.unary.f32(i32 25, float %4374)  ; Rsqrt(value)
  %4376 = fmul fast float %4371, %4375
  %4377 = fmul fast float %4372, %4375
  %4378 = fmul fast float %4373, %4375
  %4379 = fsub fast float %4376, %4114
  %4380 = fsub fast float %4377, %4115
  %4381 = fsub fast float %4378, %4116
  %4382 = fmul fast float %4379, %4259
  %4383 = fmul fast float %4380, %4259
  %4384 = fmul fast float %4381, %4259
  %4385 = fadd fast float %4382, %4114
  %4386 = fadd fast float %4383, %4115
  %4387 = fadd fast float %4384, %4116
  %4388 = call float @dx.op.binary.f32(i32 36, float %4121, float %4307)  ; FMin(a,b)
  %4389 = fsub fast float %4388, %4121
  %4390 = fmul fast float %4389, %4259
  %4391 = fadd fast float %4390, %4121
  %4392 = fsub fast float %4320, %4120
  %4393 = fmul fast float %4392, %4259
  %4394 = fadd fast float %4393, %4120
  br label %4395

; <label>:4395                                    ; preds = %4257, %4219, %4110, %3826
  %4396 = phi float [ %4359, %4257 ], [ %4111, %4219 ], [ %4111, %4110 ], [ %3435, %3826 ]
  %4397 = phi float [ %4360, %4257 ], [ %4112, %4219 ], [ %4112, %4110 ], [ %3436, %3826 ]
  %4398 = phi float [ %4361, %4257 ], [ %4113, %4219 ], [ %4113, %4110 ], [ %3437, %3826 ]
  %4399 = phi float [ %4385, %4257 ], [ %4114, %4219 ], [ %4114, %4110 ], [ %3383, %3826 ]
  %4400 = phi float [ %4386, %4257 ], [ %4115, %4219 ], [ %4115, %4110 ], [ %3384, %3826 ]
  %4401 = phi float [ %4387, %4257 ], [ %4116, %4219 ], [ %4116, %4110 ], [ %3385, %3826 ]
  %4402 = phi float [ %4368, %4257 ], [ %4117, %4219 ], [ %4117, %4110 ], [ %3420, %3826 ]
  %4403 = phi float [ %4369, %4257 ], [ %4118, %4219 ], [ %4118, %4110 ], [ %3421, %3826 ]
  %4404 = phi float [ %4370, %4257 ], [ %4119, %4219 ], [ %4119, %4110 ], [ %3422, %3826 ]
  %4405 = phi float [ %4394, %4257 ], [ %4120, %4219 ], [ %4120, %4110 ], [ %3423, %3826 ]
  %4406 = phi float [ %4391, %4257 ], [ %4121, %4219 ], [ %4121, %4110 ], [ %3395, %3826 ]
  %4407 = fcmp fast une float %3830, 0.000000e+00
  br i1 %4407, label %4408, label %4577

; <label>:4408                                    ; preds = %4395
  %4409 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %208, float %209, float %210)  ; Dot3(ax,ay,az,bx,by,bz)
  %4410 = call float @dx.op.unary.f32(i32 25, float %4409)  ; Rsqrt(value)
  %4411 = fmul fast float %208, %4410
  %4412 = fsub fast float -0.000000e+00, %4411
  %4413 = fmul fast float %209, %4410
  %4414 = fsub fast float -0.000000e+00, %4413
  %4415 = fmul fast float %210, %4410
  %4416 = fsub fast float -0.000000e+00, %4415
  %4417 = call float @dx.op.dot3.f32(i32 55, float %4412, float %4414, float %4416, float %128, float %129, float %130)  ; Dot3(ax,ay,az,bx,by,bz)
  %4418 = fmul fast float %3830, 2.500000e+00
  %4419 = call float @dx.op.unary.f32(i32 7, float %4418)  ; Saturate(value)
  %4420 = fmul fast float %3830, 0x4013FFFFE0000000
  %4421 = fadd fast float %4420, 0xBFFFFFFFE0000000
  %4422 = call float @dx.op.unary.f32(i32 7, float %4421)  ; Saturate(value)
  %4423 = fmul fast float %3830, 0x4004000020000000
  %4424 = fadd fast float %4423, 0xBFF8000040000000
  %4425 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4426 = fmul fast float %3402, 1.000000e+01
  %4427 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4428 = fmul fast float %4427, 2.000000e+00
  %4429 = fsub fast float 3.000000e+00, %4428
  %4430 = fmul fast float %4427, %4427
  %4431 = fmul fast float %4430, %4429
  %4432 = fsub fast float 1.000000e+00, %4431
  %4433 = fsub fast float 0x3FE3333340000000, %4405
  %4434 = fmul fast float %4433, 0x400AAAAAA0000000
  %4435 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4436 = fmul fast float %4432, %4435
  %4437 = fmul fast float %4396, 0x3FEA2B8620000000
  %4438 = fmul fast float %4397, 0x3FEA2B8620000000
  %4439 = fmul fast float %4398, 0x3FEA2B8620000000
  %4440 = fadd fast float %4437, 0x3FC81DFBA0000000
  %4441 = fmul fast float %4440, %4396
  %4442 = fadd fast float %4441, 0x3F910E6020000000
  %4443 = fadd fast float %4438, 0x3FC81DFBA0000000
  %4444 = fmul fast float %4443, %4397
  %4445 = fadd fast float %4444, 0x3F910E6020000000
  %4446 = fadd fast float %4439, 0x3FC81DFBA0000000
  %4447 = fmul fast float %4446, %4398
  %4448 = fadd fast float %4447, 0x3F910E6020000000
  %4449 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4450 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4451 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4452 = fsub fast float %4449, %4396
  %4453 = fsub fast float %4450, %4397
  %4454 = fsub fast float %4451, %4398
  %4455 = fmul fast float %4452, %4419
  %4456 = fmul fast float %4455, %4436
  %4457 = fmul fast float %4453, %4419
  %4458 = fmul fast float %4457, %4436
  %4459 = fmul fast float %4454, %4419
  %4460 = fmul fast float %4459, %4436
  %4461 = fadd fast float %4456, %4396
  %4462 = fadd fast float %4458, %4397
  %4463 = fadd fast float %4460, %4398
  %4464 = fmul fast float %4406, %4406
  %4465 = fmul fast float %4464, %4464
  %4466 = fadd fast float %4422, 1.000000e+00
  %4467 = fsub fast float %4466, %4436
  %4468 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4469 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4470 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4471 = fsub fast float 1.000000e+00, %4465
  %4472 = call float @dx.op.binary.f32(i32 36, float %4468, float %4471)  ; FMin(a,b)
  %4473 = call float @dx.op.unary.f32(i32 7, float %4425)  ; Saturate(value)
  %4474 = call float @dx.op.binary.f32(i32 35, float %4472, float %4473)  ; FMax(a,b)
  %4475 = fadd fast float %4470, 0xBFE4CCCCC0000000
  %4476 = fmul fast float %4475, 0x4006DB6DA0000000
  %4477 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4478 = fmul fast float %4477, 2.000000e+00
  %4479 = fsub fast float 3.000000e+00, %4478
  %4480 = bitcast float %4402 to i32
  %4481 = ashr i32 %4480, 1
  %4482 = add nsw i32 %4481, 532487669
  %4483 = bitcast i32 %4482 to float
  %4484 = fsub fast float 1.000000e+00, %4483
  %4485 = bitcast float %4484 to i32
  %4486 = sub nsw i32 2129859010, %4485
  %4487 = bitcast i32 %4486 to float
  %4488 = fmul fast float %4487, 2.000000e+00
  %4489 = bitcast float %4403 to i32
  %4490 = ashr i32 %4489, 1
  %4491 = add nsw i32 %4490, 532487669
  %4492 = bitcast i32 %4491 to float
  %4493 = fsub fast float 1.000000e+00, %4492
  %4494 = bitcast float %4493 to i32
  %4495 = sub nsw i32 2129859010, %4494
  %4496 = bitcast i32 %4495 to float
  %4497 = fmul fast float %4496, 2.000000e+00
  %4498 = bitcast float %4404 to i32
  %4499 = ashr i32 %4498, 1
  %4500 = add nsw i32 %4499, 532487669
  %4501 = bitcast i32 %4500 to float
  %4502 = fsub fast float 1.000000e+00, %4501
  %4503 = bitcast float %4502 to i32
  %4504 = sub nsw i32 2129859010, %4503
  %4505 = bitcast i32 %4504 to float
  %4506 = fmul fast float %4505, 2.000000e+00
  %4507 = fsub fast float 0x4002A9FBE0000000, %4488
  %4508 = fadd fast float %4488, 0x3FD54FDF00000000
  %4509 = bitcast float %4508 to i32
  %4510 = sub nsw i32 2129859010, %4509
  %4511 = bitcast i32 %4510 to float
  %4512 = fmul fast float %4511, %4507
  %4513 = fmul fast float %4512, %4512
  %4514 = fsub fast float 0x4002A9FBE0000000, %4497
  %4515 = fadd fast float %4497, 0x3FD54FDF00000000
  %4516 = bitcast float %4515 to i32
  %4517 = sub nsw i32 2129859010, %4516
  %4518 = bitcast i32 %4517 to float
  %4519 = fmul fast float %4518, %4514
  %4520 = fmul fast float %4519, %4519
  %4521 = fsub fast float 0x4002A9FBE0000000, %4506
  %4522 = fadd fast float %4506, 0x3FD54FDF00000000
  %4523 = bitcast float %4522 to i32
  %4524 = sub nsw i32 2129859010, %4523
  %4525 = bitcast i32 %4524 to float
  %4526 = fmul fast float %4525, %4521
  %4527 = fmul fast float %4526, %4526
  %4528 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4513)  ; FMax(a,b)
  %4529 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4520)  ; FMax(a,b)
  %4530 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4527)  ; FMax(a,b)
  %4531 = fsub fast float 1.000000e+00, %4417
  %4532 = fadd fast float %4531, %4432
  %4533 = call float @dx.op.unary.f32(i32 7, float %4532)  ; Saturate(value)
  %4534 = fsub fast float 1.000000e+00, %3811
  %4535 = fmul fast float %4474, %4534
  %4536 = fmul fast float %4477, %4477
  %4537 = fmul fast float %4536, %4535
  %4538 = fmul fast float %4537, %4479
  %4539 = fmul fast float %4534, 0xBFE99999A0000000
  %4540 = fmul fast float %4539, %4419
  %4541 = fmul fast float %4540, %4436
  %4542 = fadd fast float %4541, 1.000000e+00
  %4543 = fadd fast float %4405, -1.000000e+00
  %4544 = fmul fast float %4542, %4543
  %4545 = fadd fast float %4544, 1.000000e+00
  %4546 = fsub fast float %4528, %4402
  %4547 = fsub fast float %4529, %4403
  %4548 = fsub fast float %4530, %4404
  %4549 = fmul fast float %4538, %4546
  %4550 = fmul fast float %4538, %4547
  %4551 = fmul fast float %4538, %4548
  %4552 = fadd fast float %4549, %4402
  %4553 = fadd fast float %4550, %4403
  %4554 = fadd fast float %4551, %4404
  %4555 = fsub fast float %128, %4399
  %4556 = fsub fast float %129, %4400
  %4557 = fsub fast float %130, %4401
  %4558 = fmul fast float %4538, %4555
  %4559 = fmul fast float %4538, %4556
  %4560 = fmul fast float %4538, %4557
  %4561 = fadd fast float %4558, %4399
  %4562 = fadd fast float %4559, %4400
  %4563 = fadd fast float %4560, %4401
  %4564 = fmul fast float %4538, %4533
  %4565 = call float @dx.op.unary.f32(i32 7, float %4545)  ; Saturate(value)
  %4566 = fsub fast float 1.000000e+00, %4565
  %4567 = fmul fast float %4564, %4566
  %4568 = fadd fast float %4567, %4565
  %4569 = fsub fast float 1.000000e+00, %4406
  %4570 = fmul fast float %4538, %4569
  %4571 = fadd fast float %4570, %4406
  %4572 = call float @dx.op.dot3.f32(i32 55, float %4561, float %4562, float %4563, float %4561, float %4562, float %4563)  ; Dot3(ax,ay,az,bx,by,bz)
  %4573 = call float @dx.op.unary.f32(i32 25, float %4572)  ; Rsqrt(value)
  %4574 = fmul fast float %4561, %4573
  %4575 = fmul fast float %4562, %4573
  %4576 = fmul fast float %4563, %4573
  br label %4577

; <label>:4577                                    ; preds = %4408, %4395
  %4578 = phi float [ %4461, %4408 ], [ %4396, %4395 ]
  %4579 = phi float [ %4462, %4408 ], [ %4397, %4395 ]
  %4580 = phi float [ %4463, %4408 ], [ %4398, %4395 ]
  %4581 = phi float [ %4574, %4408 ], [ %4399, %4395 ]
  %4582 = phi float [ %4575, %4408 ], [ %4400, %4395 ]
  %4583 = phi float [ %4576, %4408 ], [ %4401, %4395 ]
  %4584 = phi float [ %4552, %4408 ], [ %4402, %4395 ]
  %4585 = phi float [ %4553, %4408 ], [ %4403, %4395 ]
  %4586 = phi float [ %4554, %4408 ], [ %4404, %4395 ]
  %4587 = phi float [ %4568, %4408 ], [ %4405, %4395 ]
  %4588 = phi float [ %4571, %4408 ], [ %4406, %4395 ]
  %4589 = icmp eq i32 %65, 0
  br i1 %4589, label %4620, label %4590

; <label>:4590                                    ; preds = %4577
  %4591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4592 = extractvalue %dx.types.CBufRet.f32 %4591, 2
  %4593 = extractvalue %dx.types.CBufRet.f32 %4591, 3
  %4594 = fmul fast float %4592, %121
  %4595 = fmul fast float %4593, %122
  %4596 = fmul fast float %4594, 1.024000e+03
  %4597 = fmul fast float %4595, 1.024000e+03
  %4598 = fadd fast float %4596, -5.120000e+02
  %4599 = fadd fast float %4597, -5.120000e+02
  %4600 = fmul fast float %4594, 0x4081BEDF00000000
  %4601 = fadd fast float %4600, 0xC071BEDF00000000
  %4602 = call float @dx.op.unary.f32(i32 22, float %4601)  ; Frc(value)
  %4603 = fmul fast float %4598, %4602
  %4604 = fadd fast float %4603, %4599
  %4605 = fmul fast float %4595, 0x4073BEBE20000000
  %4606 = fadd fast float %4605, 0xC063BEBE20000000
  %4607 = call float @dx.op.unary.f32(i32 22, float %4606)  ; Frc(value)
  %4608 = fmul fast float %4599, %4607
  %4609 = fadd fast float %4608, %4598
  %4610 = fmul fast float %4604, %4609
  %4611 = call float @dx.op.unary.f32(i32 22, float %4610)  ; Frc(value)
  %4612 = add i32 %320, 12
  %4613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %4612, i32 undef)  ; BufferLoad(srv,index,wot)
  %4614 = extractvalue %dx.types.ResRet.i32 %4613, 0
  %4615 = and i32 %4614, 255
  %4616 = uitofp i32 %4615 to float
  %4617 = fmul fast float %4616, 0x3F70101020000000
  %4618 = fcmp fast olt float %4611, %4617
  br i1 %4618, label %4619, label %4620

; <label>:4619                                    ; preds = %4590
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %4620

; <label>:4620                                    ; preds = %4619, %4590, %4577
  %4621 = fsub fast float -0.000000e+00, %210
  %4622 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %208, float %209, float %210)  ; Dot3(ax,ay,az,bx,by,bz)
  %4623 = call float @dx.op.unary.f32(i32 25, float %4622)  ; Rsqrt(value)
  %4624 = fmul fast float %4623, %208
  %4625 = fmul fast float %4623, %209
  %4626 = fmul fast float %4623, %210
  %4627 = fsub fast float -0.000000e+00, %4624
  %4628 = fsub fast float -0.000000e+00, %4625
  %4629 = fsub fast float -0.000000e+00, %4626
  %4630 = select i1 %278, float 0.000000e+00, float %4586
  %4631 = call float @dx.op.dot3.f32(i32 55, float %4581, float %4582, float %4583, float %4627, float %4628, float %4629)  ; Dot3(ax,ay,az,bx,by,bz)
  %4632 = call float @dx.op.unary.f32(i32 7, float %4631)  ; Saturate(value)
  %4633 = call float @dx.op.dot3.f32(i32 55, float %4624, float %4625, float %4626, float %4581, float %4582, float %4583)  ; Dot3(ax,ay,az,bx,by,bz)
  %4634 = fmul fast float %4633, 2.000000e+00
  %4635 = fmul fast float %4634, %4581
  %4636 = fmul fast float %4634, %4582
  %4637 = fmul fast float %4634, %4583
  %4638 = fsub fast float %4624, %4635
  %4639 = fsub fast float %4625, %4636
  %4640 = fsub fast float %4626, %4637
  %4641 = call float @dx.op.binary.f32(i32 36, float %4588, float 1.000000e+00)  ; FMin(a,b)
  %4642 = fsub fast float 1.000000e+00, %4641
  %4643 = bitcast float %4642 to i32
  %4644 = ashr i32 %4643, 1
  %4645 = add nsw i32 %4644, 532487669
  %4646 = bitcast i32 %4645 to float
  %4647 = fsub fast float 1.000000e+00, %4587
  %4648 = call float @dx.op.binary.f32(i32 35, float %4647, float 0x3F847AE140000000)  ; FMax(a,b)
  %4649 = fmul fast float %4648, %4648
  %4650 = fmul fast float %4649, %4649
  %4651 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %57, float %4646, float %4650, float %4651, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4653 = extractvalue %dx.types.ResRet.f32 %4652, 0
  %4654 = fsub fast float 1.000000e+00, %4588
  %4655 = bitcast float %4654 to i32
  %4656 = sub nsw i32 2129859010, %4655
  %4657 = fsub fast float 1.000000e+00, %88
  %4658 = call float @dx.op.dot3.f32(i32 55, float %148, float %149, float %150, float %128, float %129, float %130)  ; Dot3(ax,ay,az,bx,by,bz)
  %4659 = call float @dx.op.binary.f32(i32 35, float %4658, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4660 = fdiv fast float %4657, %4659
  %4661 = call float @dx.op.dot3.f32(i32 55, float %4581, float %4582, float %4583, float %128, float %129, float %130)  ; Dot3(ax,ay,az,bx,by,bz)
  %4662 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4663 = fmul fast float %4662, 5.000000e-01
  %4664 = fadd fast float %4663, 5.000000e-01
  %4665 = fmul fast float %4664, %88
  %4666 = call float @dx.op.dot3.f32(i32 55, float %4581, float %4582, float %4583, float %148, float %149, float %150)  ; Dot3(ax,ay,az,bx,by,bz)
  %4667 = call float @dx.op.unary.f32(i32 7, float %4666)  ; Saturate(value)
  %4668 = fmul fast float %4667, %4660
  %4669 = fadd fast float %4665, %4668
  %4670 = fsub fast float 5.000000e-01, %4663
  %4671 = fmul fast float %4670, %4578
  %4672 = fmul fast float %4670, %4579
  %4673 = fmul fast float %4670, %4580
  %4674 = fadd fast float %4669, %4671
  %4675 = fadd fast float %4669, %4672
  %4676 = fadd fast float %4669, %4673
  %4677 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %128, float %129, float %130)  ; Dot3(ax,ay,az,bx,by,bz)
  %4678 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4679 = fmul fast float %4678, 5.000000e-01
  %4680 = fadd fast float %4679, 5.000000e-01
  %4681 = fmul fast float %4680, %88
  %4682 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %148, float %149, float %150)  ; Dot3(ax,ay,az,bx,by,bz)
  %4683 = call float @dx.op.unary.f32(i32 7, float %4682)  ; Saturate(value)
  %4684 = fmul fast float %4683, %4660
  %4685 = fadd fast float %4681, %4684
  %4686 = fsub fast float 5.000000e-01, %4679
  %4687 = fmul fast float %4686, %4578
  %4688 = fmul fast float %4686, %4579
  %4689 = fmul fast float %4686, %4580
  %4690 = fadd fast float %4685, %4687
  %4691 = fadd fast float %4685, %4688
  %4692 = fadd fast float %4685, %4689
  %4693 = call float @dx.op.dot3.f32(i32 55, float %89, float %90, float %91, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4695 = extractvalue %dx.types.CBufRet.f32 %4694, 0
  %4696 = call float @dx.op.binary.f32(i32 36, float %4578, float %4695)  ; FMin(a,b)
  %4697 = fmul fast float %4696, %4642
  %4698 = fsub fast float 1.000000e+00, %4697
  %4699 = bitcast float %4698 to i32
  %4700 = sub nsw i32 2129859010, %4699
  %4701 = bitcast i32 %4700 to float
  %4702 = call float @dx.op.binary.f32(i32 36, float %4579, float %4695)  ; FMin(a,b)
  %4703 = fmul fast float %4702, %4642
  %4704 = fsub fast float 1.000000e+00, %4703
  %4705 = bitcast float %4704 to i32
  %4706 = sub nsw i32 2129859010, %4705
  %4707 = bitcast i32 %4706 to float
  %4708 = call float @dx.op.binary.f32(i32 36, float %4580, float %4695)  ; FMin(a,b)
  %4709 = fmul fast float %4708, %4642
  %4710 = fsub fast float 1.000000e+00, %4709
  %4711 = bitcast float %4710 to i32
  %4712 = sub nsw i32 2129859010, %4711
  %4713 = bitcast i32 %4712 to float
  %4714 = fmul fast float %4641, %89
  %4715 = fmul fast float %4714, %4674
  %4716 = fmul fast float %4715, %4701
  %4717 = fmul fast float %4641, %90
  %4718 = fmul fast float %4717, %4675
  %4719 = fmul fast float %4718, %4707
  %4720 = fmul fast float %4641, %91
  %4721 = fmul fast float %4720, %4676
  %4722 = fmul fast float %4721, %4713
  %4723 = call float @dx.op.binary.f32(i32 36, float %4584, float %4695)  ; FMin(a,b)
  %4724 = fmul fast float %4723, %4642
  %4725 = fsub fast float 1.000000e+00, %4724
  %4726 = bitcast float %4725 to i32
  %4727 = sub nsw i32 2129859010, %4726
  %4728 = bitcast i32 %4727 to float
  %4729 = call float @dx.op.binary.f32(i32 36, float %4585, float %4695)  ; FMin(a,b)
  %4730 = fmul fast float %4729, %4642
  %4731 = fsub fast float 1.000000e+00, %4730
  %4732 = bitcast float %4731 to i32
  %4733 = sub nsw i32 2129859010, %4732
  %4734 = bitcast i32 %4733 to float
  %4735 = call float @dx.op.binary.f32(i32 36, float %4630, float %4695)  ; FMin(a,b)
  %4736 = fmul fast float %4735, %4642
  %4737 = fsub fast float 1.000000e+00, %4736
  %4738 = bitcast float %4737 to i32
  %4739 = sub nsw i32 2129859010, %4738
  %4740 = bitcast i32 %4739 to float
  %4741 = fmul fast float %4714, %4690
  %4742 = fmul fast float %4741, %4728
  %4743 = fmul fast float %4717, %4691
  %4744 = fmul fast float %4743, %4734
  %4745 = fmul fast float %4720, %4692
  %4746 = fmul fast float %4745, %4740
  %4747 = call float @dx.op.dot3.f32(i32 55, float %4716, float %4719, float %4722, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4748 = select i1 %278, float 0.000000e+00, float %4716
  %4749 = select i1 %278, float %4747, float %4719
  %4750 = select i1 %278, float 0.000000e+00, float %4722
  %4751 = call float @dx.op.dot3.f32(i32 55, float %4742, float %4744, float %4746, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4752 = select i1 %278, float 0.000000e+00, float %4742
  %4753 = select i1 %278, float %4751, float %4744
  %4754 = select i1 %278, float 0.000000e+00, float %4746
  %4755 = call float @dx.op.unary.f32(i32 6, float %84)  ; FAbs(value)
  %4756 = fmul fast float %4755, %4748
  %4757 = fmul fast float %4755, %4749
  %4758 = fmul fast float %4750, %4755
  %4759 = fmul fast float %4632, 9.843750e-01
  %4760 = fmul fast float %4587, 9.843750e-01
  %4761 = fadd fast float %4759, 7.812500e-03
  %4762 = fadd fast float %4760, 7.812500e-03
  %4763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %57, float %4761, float %4762, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4764 = extractvalue %dx.types.ResRet.f32 %4763, 2
  %4765 = extractvalue %dx.types.ResRet.f32 %4763, 3
  %4766 = fmul fast float %4764, %4584
  %4767 = fmul fast float %4764, %4585
  %4768 = fmul fast float %4764, %4630
  %4769 = fadd fast float %4766, %4765
  %4770 = fadd fast float %4767, %4765
  %4771 = fadd fast float %4768, %4765
  %4772 = fcmp fast ogt float %3396, 0.000000e+00
  br i1 %4772, label %4773, label %4799

; <label>:4773                                    ; preds = %4620
  %4774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %57, float %3396, float %4632, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4775 = extractvalue %dx.types.ResRet.f32 %4774, 0
  %4776 = extractvalue %dx.types.ResRet.f32 %4774, 1
  %4777 = extractvalue %dx.types.ResRet.f32 %4774, 2
  %4778 = fadd fast float %4775, -5.000000e-01
  %4779 = fadd fast float %4776, -5.000000e-01
  %4780 = fadd fast float %4777, -5.000000e-01
  %4781 = fsub fast float 1.000000e+00, %4584
  %4782 = fsub fast float 1.000000e+00, %4585
  %4783 = fsub fast float 1.000000e+00, %4630
  %4784 = fmul fast float %4584, 4.000000e+00
  %4785 = fmul fast float %4784, %4781
  %4786 = fmul fast float %4785, %4778
  %4787 = fmul fast float %4585, 4.000000e+00
  %4788 = fmul fast float %4787, %4782
  %4789 = fmul fast float %4788, %4779
  %4790 = fmul fast float %4630, 4.000000e+00
  %4791 = fmul fast float %4790, %4783
  %4792 = fmul fast float %4791, %4780
  %4793 = fadd fast float %4786, %4769
  %4794 = fadd fast float %4789, %4770
  %4795 = fadd fast float %4792, %4771
  %4796 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  %4797 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4798 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  br label %4799

; <label>:4799                                    ; preds = %4773, %4620
  %4800 = phi float [ %4796, %4773 ], [ %4769, %4620 ]
  %4801 = phi float [ %4797, %4773 ], [ %4770, %4620 ]
  %4802 = phi float [ %4798, %4773 ], [ %4771, %4620 ]
  %4803 = call float @dx.op.binary.f32(i32 35, float %4801, float %4802)  ; FMax(a,b)
  %4804 = call float @dx.op.binary.f32(i32 35, float %4800, float %4803)  ; FMax(a,b)
  %4805 = fsub fast float 1.000000e+00, %4804
  %4806 = fmul fast float %4804, %4587
  %4807 = fadd fast float %4806, %4587
  %4808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4809 = extractvalue %dx.types.CBufRet.f32 %4808, 2
  %4810 = extractvalue %dx.types.CBufRet.f32 %4808, 3
  %4811 = fmul fast float %4807, %4809
  %4812 = fadd fast float %4811, %4810
  %4813 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4814 = fsub fast float 1.000000e+00, %4653
  %4815 = fadd fast float %4814, %4813
  %4816 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  %4817 = fcmp fast olt float %4816, 1.000000e+00
  br i1 %4817, label %4818, label %5294

; <label>:4818                                    ; preds = %4799
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 2
  %4821 = extractvalue %dx.types.CBufRet.f32 %4819, 3
  %4822 = fmul fast float %4820, %121
  %4823 = fmul fast float %4821, %122
  %4824 = fptoui float %4822 to i32
  %4825 = fptoui float %4823 to i32
  %4826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4826, 0
  %4828 = extractvalue %dx.types.CBufRet.f32 %4826, 2
  %4829 = extractvalue %dx.types.CBufRet.f32 %4826, 3
  %4830 = fadd fast float %108, -4.000000e+00
  %4831 = call float @dx.op.binary.f32(i32 35, float %4830, float 0.000000e+00)  ; FMax(a,b)
  %4832 = fadd fast float %4831, %4827
  %4833 = fmul fast float %4832, %4828
  %4834 = call float @dx.op.unary.f32(i32 23, float %4833)  ; Log(value)
  %4835 = fmul fast float %4834, %4829
  %4836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4837 = extractvalue %dx.types.CBufRet.f32 %4836, 2
  %4838 = fmul fast float %4835, %4837
  %4839 = call float @dx.op.unary.f32(i32 7, float %4838)  ; Saturate(value)
  %4840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4841 = extractvalue %dx.types.CBufRet.i32 %4840, 1
  %4842 = add i32 %4841, -1
  %4843 = uitofp i32 %4841 to float
  %4844 = fmul fast float %4843, %4839
  %4845 = fptoui float %4844 to i32
  %4846 = call i32 @dx.op.binary.i32(i32 40, i32 %4845, i32 %4842)  ; UMin(a,b)
  %4847 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.i32 %4847, 2
  %4849 = extractvalue %dx.types.CBufRet.i32 %4847, 3
  %4850 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4825, i32 %4848, i32 %4824)  ; UMad(a,b,c)
  %4851 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4846, i32 %4849, i32 %4850)  ; UMad(a,b,c)
  %4852 = call float @dx.op.binary.f32(i32 35, float %108, float 0.000000e+00)  ; FMax(a,b)
  %4853 = fptoui float %4852 to i32
  %4854 = lshr i32 %4853, 5
  %4855 = call i32 @dx.op.binary.i32(i32 40, i32 %4854, i32 8191)  ; UMin(a,b)
  %4856 = fsub fast float %3798, %210
  %4857 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4858 = fcmp fast ogt float %4857, 0.000000e+00
  %4859 = fcmp fast ogt float %4640, 0.000000e+00
  %4860 = and i1 %4859, %4858
  br i1 %4860, label %4861, label %4890

; <label>:4861                                    ; preds = %4818
  %4862 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4863 = call float @dx.op.binary.f32(i32 35, float %4862, float -1.000000e+00)  ; FMax(a,b)
  %4864 = call float @dx.op.binary.f32(i32 36, float %4863, float 1.000000e+00)  ; FMin(a,b)
  %4865 = fmul fast float %4864, %4864
  %4866 = fsub fast float 1.000000e+00, %4865
  %4867 = fmul fast float %4866, 0x3FFC6E2300000000
  %4868 = fsub fast float 1.000000e+00, %4867
  %4869 = fcmp fast ogt float %4868, 0.000000e+00
  %4870 = call float @dx.op.unary.f32(i32 24, float %4868)  ; Sqrt(value)
  %4871 = fsub fast float 1.000000e+00, %4870
  %4872 = call float @dx.op.unary.f32(i32 23, float %4871)  ; Log(value)
  %4873 = fmul fast float %4872, 5.000000e+00
  %4874 = call float @dx.op.unary.f32(i32 21, float %4873)  ; Exp(value)
  %4875 = fmul fast float %4874, 0x3FEF591A60000000
  %4876 = fadd fast float %4875, 0x3F94DCB540000000
  %4877 = select i1 %4869, float %4876, float 1.000000e+00
  %4878 = fcmp fast oge float %4877, 1.000000e+00
  %4879 = fmul fast float %4862, 2.000000e+00
  %4880 = fadd fast float %4879, %4640
  %4881 = select i1 %4878, float %4880, float %4640
  %4882 = fsub fast float %4881, %4640
  %4883 = fmul fast float %4882, %4857
  %4884 = fadd fast float %4883, %4640
  %4885 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4884, float %4638, float %4639, float %4884)  ; Dot3(ax,ay,az,bx,by,bz)
  %4886 = call float @dx.op.unary.f32(i32 25, float %4885)  ; Rsqrt(value)
  %4887 = fmul fast float %4886, %4638
  %4888 = fmul fast float %4886, %4639
  %4889 = fmul fast float %4884, %4886
  br label %4890

; <label>:4890                                    ; preds = %4861, %4818
  %4891 = phi float [ %4887, %4861 ], [ %4638, %4818 ]
  %4892 = phi float [ %4888, %4861 ], [ %4639, %4818 ]
  %4893 = phi float [ %4889, %4861 ], [ %4640, %4818 ]
  %4894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4895 = extractvalue %dx.types.CBufRet.i32 %4894, 2
  %4896 = add nsw i32 %4895, -1
  %4897 = call i32 @dx.op.binary.i32(i32 37, i32 %4896, i32 0)  ; IMax(a,b)
  %4898 = shl i32 %4855, 2
  %4899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4898, i32 undef)  ; BufferLoad(srv,index,wot)
  %4900 = extractvalue %dx.types.ResRet.i32 %4899, 0
  %4901 = lshr i32 %4900, 16
  %4902 = and i32 %4900, 65535
  %4903 = lshr i32 %4900, 21
  %4904 = lshr i32 %4902, 5
  %4905 = call i32 @dx.op.binary.i32(i32 40, i32 %4904, i32 %4897)  ; UMin(a,b)
  %4906 = icmp ugt i32 %4903, %4905
  br i1 %4906, label %5270, label %4907

; <label>:4907                                    ; preds = %4890
  br label %4908

; <label>:4908                                    ; preds = %5262, %4907
  %4909 = phi float [ %5263, %5262 ], [ 0.000000e+00, %4907 ]
  %4910 = phi float [ %5264, %5262 ], [ 0.000000e+00, %4907 ]
  %4911 = phi float [ %5265, %5262 ], [ 0.000000e+00, %4907 ]
  %4912 = phi float [ %5266, %5262 ], [ 1.000000e+00, %4907 ]
  %4913 = phi i32 [ %5267, %5262 ], [ %4903, %4907 ]
  %4914 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4915 = extractvalue %dx.types.CBufRet.i32 %4914, 2
  %4916 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4851, i32 %4915, i32 %4913)  ; UMad(a,b,c)
  %4917 = shl i32 %4916, 2
  %4918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %4917, i32 undef)  ; BufferLoad(srv,index,wot)
  %4919 = extractvalue %dx.types.ResRet.i32 %4918, 0
  %4920 = shl i32 %4913, 5
  %4921 = sub nsw i32 %4901, %4920
  %4922 = call i32 @dx.op.binary.i32(i32 37, i32 %4921, i32 0)  ; IMax(a,b)
  %4923 = call i32 @dx.op.binary.i32(i32 38, i32 %4922, i32 31)  ; IMin(a,b)
  %4924 = sub nsw i32 1, %4901
  %4925 = add nsw i32 %4924, %4902
  %4926 = call i32 @dx.op.binary.i32(i32 37, i32 %4925, i32 0)  ; IMax(a,b)
  %4927 = call i32 @dx.op.binary.i32(i32 38, i32 %4926, i32 32)  ; IMin(a,b)
  %4928 = and i32 %4927, 31
  %4929 = shl i32 -1, %4928
  %4930 = xor i32 %4929, -1
  %4931 = and i32 %4923, 31
  %4932 = shl i32 %4930, %4931
  %4933 = icmp eq i32 %4927, 32
  %4934 = select i1 %4933, i32 -1, i32 %4932
  %4935 = and i32 %4934, %4919
  %4936 = icmp eq i32 %4935, 0
  br i1 %4936, label %5262, label %4937

; <label>:4937                                    ; preds = %4908
  br label %4938

; <label>:4938                                    ; preds = %5045, %4937
  %4939 = phi float [ %5046, %5045 ], [ %4909, %4937 ]
  %4940 = phi float [ %5047, %5045 ], [ %4910, %4937 ]
  %4941 = phi float [ %5048, %5045 ], [ %4911, %4937 ]
  %4942 = phi float [ %5049, %5045 ], [ %4912, %4937 ]
  %4943 = phi i32 [ %4948, %5045 ], [ %4935, %4937 ]
  %4944 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4943)  ; FirstbitLo(value)
  %4945 = add i32 %4944, %4920
  %4946 = and i32 %4944, 31
  %4947 = shl i32 1, %4946
  %4948 = xor i32 %4947, %4943
  %4949 = mul i32 %4945, 72
  %4950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4949, i32 undef)  ; BufferLoad(srv,index,wot)
  %4951 = extractvalue %dx.types.ResRet.f32 %4950, 0
  %4952 = extractvalue %dx.types.ResRet.f32 %4950, 1
  %4953 = extractvalue %dx.types.ResRet.f32 %4950, 2
  %4954 = add i32 %4949, 12
  %4955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %4954, i32 undef)  ; BufferLoad(srv,index,wot)
  %4956 = extractvalue %dx.types.ResRet.i32 %4955, 0
  %4957 = add i32 %4949, 16
  %4958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4957, i32 undef)  ; BufferLoad(srv,index,wot)
  %4959 = extractvalue %dx.types.ResRet.f32 %4958, 0
  %4960 = extractvalue %dx.types.ResRet.f32 %4958, 1
  %4961 = extractvalue %dx.types.ResRet.f32 %4958, 2
  %4962 = add i32 %4949, 28
  %4963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4962, i32 undef)  ; BufferLoad(srv,index,wot)
  %4964 = extractvalue %dx.types.ResRet.f32 %4963, 0
  %4965 = add i32 %4949, 32
  %4966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4965, i32 undef)  ; BufferLoad(srv,index,wot)
  %4967 = extractvalue %dx.types.ResRet.f32 %4966, 0
  %4968 = extractvalue %dx.types.ResRet.f32 %4966, 1
  %4969 = extractvalue %dx.types.ResRet.f32 %4966, 2
  %4970 = extractvalue %dx.types.ResRet.f32 %4966, 3
  %4971 = add i32 %4949, 48
  %4972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4971, i32 undef)  ; BufferLoad(srv,index,wot)
  %4973 = extractvalue %dx.types.ResRet.f32 %4972, 0
  %4974 = extractvalue %dx.types.ResRet.f32 %4972, 1
  %4975 = add i32 %4949, 56
  %4976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4975, i32 undef)  ; BufferLoad(srv,index,wot)
  %4977 = extractvalue %dx.types.ResRet.f32 %4976, 0
  %4978 = extractvalue %dx.types.ResRet.f32 %4976, 1
  %4979 = add i32 %4949, 64
  %4980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4979, i32 undef)  ; BufferLoad(srv,index,wot)
  %4981 = extractvalue %dx.types.ResRet.f32 %4980, 0
  %4982 = extractvalue %dx.types.ResRet.f32 %4980, 1
  %4983 = mul i32 %4945, 60
  %4984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %4983, i32 undef)  ; BufferLoad(srv,index,wot)
  %4985 = extractvalue %dx.types.ResRet.f32 %4984, 0
  %4986 = extractvalue %dx.types.ResRet.f32 %4984, 1
  %4987 = extractvalue %dx.types.ResRet.f32 %4984, 2
  %4988 = add i32 %4983, 12
  %4989 = add i32 %4983, 48
  %4990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %4989, i32 undef)  ; BufferLoad(srv,index,wot)
  %4991 = extractvalue %dx.types.ResRet.f32 %4990, 0
  %4992 = extractvalue %dx.types.ResRet.f32 %4990, 1
  %4993 = extractvalue %dx.types.ResRet.f32 %4990, 2
  %4994 = and i32 %4956, 32767
  %4995 = bitcast float %4951 to i32
  %4996 = icmp eq i32 %4995, -1
  %4997 = bitcast float %4952 to i32
  %4998 = and i32 %4956, 32768
  %4999 = icmp ne i32 %4998, 0
  %5000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.f32 %5000, 0
  %5002 = extractvalue %dx.types.CBufRet.f32 %5000, 1
  %5003 = extractvalue %dx.types.CBufRet.f32 %5000, 2
  %5004 = fsub fast float %4985, %5001
  %5005 = fsub fast float %4986, %5002
  %5006 = fsub fast float %4987, %5003
  %5007 = fsub fast float %208, %5004
  %5008 = fsub fast float %209, %5005
  %5009 = fsub fast float %210, %5006
  %5010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %4988, i32 undef)  ; BufferLoad(srv,index,wot)
  %5011 = extractvalue %dx.types.ResRet.f32 %5010, 0
  %5012 = extractvalue %dx.types.ResRet.f32 %5010, 1
  %5013 = extractvalue %dx.types.ResRet.f32 %5010, 2
  %5014 = call float @dx.op.dot3.f32(i32 55, float %5007, float %5008, float %5009, float %5011, float %5012, float %5013)  ; Dot3(ax,ay,az,bx,by,bz)
  %5015 = add i32 %4983, 24
  %5016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5015, i32 undef)  ; BufferLoad(srv,index,wot)
  %5017 = extractvalue %dx.types.ResRet.f32 %5016, 0
  %5018 = extractvalue %dx.types.ResRet.f32 %5016, 1
  %5019 = extractvalue %dx.types.ResRet.f32 %5016, 2
  %5020 = call float @dx.op.dot3.f32(i32 55, float %5007, float %5008, float %5009, float %5017, float %5018, float %5019)  ; Dot3(ax,ay,az,bx,by,bz)
  %5021 = add i32 %4983, 36
  %5022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5021, i32 undef)  ; BufferLoad(srv,index,wot)
  %5023 = extractvalue %dx.types.ResRet.f32 %5022, 0
  %5024 = extractvalue %dx.types.ResRet.f32 %5022, 1
  %5025 = extractvalue %dx.types.ResRet.f32 %5022, 2
  %5026 = call float @dx.op.dot3.f32(i32 55, float %5007, float %5008, float %5009, float %5023, float %5024, float %5025)  ; Dot3(ax,ay,az,bx,by,bz)
  %5027 = call float @dx.op.unary.f32(i32 6, float %5014)  ; FAbs(value)
  %5028 = call float @dx.op.unary.f32(i32 6, float %5020)  ; FAbs(value)
  %5029 = call float @dx.op.unary.f32(i32 6, float %5026)  ; FAbs(value)
  %5030 = fsub fast float %4991, %5027
  %5031 = fsub fast float %4992, %5028
  %5032 = fsub fast float %4993, %5029
  %5033 = fmul fast float %5030, %4959
  %5034 = fmul fast float %5031, %4960
  %5035 = fmul fast float %5032, %4961
  %5036 = call float @dx.op.binary.f32(i32 36, float %5034, float %5035)  ; FMin(a,b)
  %5037 = call float @dx.op.binary.f32(i32 36, float %5033, float %5036)  ; FMin(a,b)
  %5038 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  %5039 = call float @dx.op.binary.f32(i32 36, float %4942, float %5038)  ; FMin(a,b)
  %5040 = uitofp i1 %4999 to float
  %5041 = fadd fast float %4857, 1.000000e+00
  %5042 = fsub fast float %5041, %5040
  %5043 = fmul fast float %5039, %5042
  %5044 = fcmp fast ogt float %5043, 0.000000e+00
  br i1 %5044, label %5051, label %5045

; <label>:5045                                    ; preds = %5193, %4938
  %5046 = phi float [ %5257, %5193 ], [ %4939, %4938 ]
  %5047 = phi float [ %5258, %5193 ], [ %4940, %4938 ]
  %5048 = phi float [ %5259, %5193 ], [ %4941, %4938 ]
  %5049 = phi float [ %5260, %5193 ], [ %4942, %4938 ]
  %5050 = icmp eq i32 %4943, %4947
  br i1 %5050, label %5261, label %4938

; <label>:5051                                    ; preds = %4938
  br i1 %4996, label %5109, label %5052

; <label>:5052                                    ; preds = %5051
  %5053 = fsub fast float -0.000000e+00, %5011
  %5054 = fsub fast float -0.000000e+00, %5012
  %5055 = fsub fast float -0.000000e+00, %5013
  %5056 = call float @dx.op.dot3.f32(i32 55, float %4891, float %4892, float %4893, float %5053, float %5054, float %5055)  ; Dot3(ax,ay,az,bx,by,bz)
  %5057 = fsub fast float -0.000000e+00, %5056
  %5058 = call float @dx.op.dot3.f32(i32 55, float %5007, float %5008, float %5009, float %5053, float %5054, float %5055)  ; Dot3(ax,ay,az,bx,by,bz)
  %5059 = fadd fast float %5058, %4974
  %5060 = fadd fast float %4973, %5058
  %5061 = fsub fast float -0.000000e+00, %5060
  %5062 = fcmp ogt float %5056, -0.000000e+00
  %5063 = select i1 %5062, float %5061, float %5059
  %5064 = call float @dx.op.unary.f32(i32 6, float %5057)  ; FAbs(value)
  %5065 = fdiv fast float 1.000000e+00, %5064
  %5066 = fmul fast float %5063, %5065
  %5067 = call float @dx.op.binary.f32(i32 35, float %5066, float 0.000000e+00)  ; FMax(a,b)
  %5068 = fsub fast float -0.000000e+00, %5017
  %5069 = fsub fast float -0.000000e+00, %5018
  %5070 = fsub fast float -0.000000e+00, %5019
  %5071 = call float @dx.op.dot3.f32(i32 55, float %4891, float %4892, float %4893, float %5068, float %5069, float %5070)  ; Dot3(ax,ay,az,bx,by,bz)
  %5072 = fsub fast float -0.000000e+00, %5071
  %5073 = call float @dx.op.dot3.f32(i32 55, float %5007, float %5008, float %5009, float %5068, float %5069, float %5070)  ; Dot3(ax,ay,az,bx,by,bz)
  %5074 = fadd fast float %5073, %4978
  %5075 = fadd fast float %4977, %5073
  %5076 = fsub fast float -0.000000e+00, %5075
  %5077 = fcmp ogt float %5071, -0.000000e+00
  %5078 = select i1 %5077, float %5076, float %5074
  %5079 = call float @dx.op.unary.f32(i32 6, float %5072)  ; FAbs(value)
  %5080 = fdiv fast float 1.000000e+00, %5079
  %5081 = fmul fast float %5078, %5080
  %5082 = call float @dx.op.binary.f32(i32 35, float %5081, float 0.000000e+00)  ; FMax(a,b)
  %5083 = fsub fast float -0.000000e+00, %5023
  %5084 = fsub fast float -0.000000e+00, %5024
  %5085 = fsub fast float -0.000000e+00, %5025
  %5086 = call float @dx.op.dot3.f32(i32 55, float %4891, float %4892, float %4893, float %5083, float %5084, float %5085)  ; Dot3(ax,ay,az,bx,by,bz)
  %5087 = fsub fast float -0.000000e+00, %5086
  %5088 = call float @dx.op.dot3.f32(i32 55, float %5007, float %5008, float %5009, float %5083, float %5084, float %5085)  ; Dot3(ax,ay,az,bx,by,bz)
  %5089 = fadd fast float %5088, %4982
  %5090 = fadd fast float %4981, %5088
  %5091 = fsub fast float -0.000000e+00, %5090
  %5092 = fcmp ogt float %5086, -0.000000e+00
  %5093 = select i1 %5092, float %5091, float %5089
  %5094 = call float @dx.op.unary.f32(i32 6, float %5087)  ; FAbs(value)
  %5095 = fdiv fast float 1.000000e+00, %5094
  %5096 = fmul fast float %5093, %5095
  %5097 = call float @dx.op.binary.f32(i32 35, float %5096, float 0.000000e+00)  ; FMax(a,b)
  %5098 = call float @dx.op.binary.f32(i32 36, float %5082, float %5097)  ; FMin(a,b)
  %5099 = call float @dx.op.binary.f32(i32 36, float %5067, float %5098)  ; FMin(a,b)
  %5100 = fmul fast float %5099, %4891
  %5101 = fmul fast float %5099, %4892
  %5102 = fmul fast float %5099, %4893
  %5103 = fadd fast float %5100, %208
  %5104 = fadd fast float %5101, %209
  %5105 = fadd fast float %5102, %210
  %5106 = fsub fast float %5103, %4951
  %5107 = fsub fast float %5104, %4952
  %5108 = fsub fast float %5105, %4953
  br label %5116

; <label>:5109                                    ; preds = %5051
  %5110 = fmul fast float %4891, 8.096000e+03
  %5111 = fmul fast float %4892, 8.096000e+03
  %5112 = fmul fast float %4893, 8.096000e+03
  %5113 = fadd fast float %5110, %208
  %5114 = fadd fast float %5111, %209
  %5115 = fadd fast float %5112, %210
  br label %5116

; <label>:5116                                    ; preds = %5109, %5052
  %5117 = phi float [ %4891, %5109 ], [ %5106, %5052 ]
  %5118 = phi float [ %4892, %5109 ], [ %5107, %5052 ]
  %5119 = phi float [ %4893, %5109 ], [ %5108, %5052 ]
  %5120 = phi float [ %5113, %5109 ], [ %5103, %5052 ]
  %5121 = phi float [ %5114, %5109 ], [ %5104, %5052 ]
  %5122 = phi float [ %5115, %5109 ], [ %5105, %5052 ]
  %5123 = fcmp fast olt float %4970, 1.000000e+00
  br i1 %5123, label %5124, label %5155, !dx.controlflow.hints !105

; <label>:5124                                    ; preds = %5116
  %5125 = fmul fast float %5119, %4968
  %5126 = fmul fast float %5118, %4969
  %5127 = fsub fast float %5125, %5126
  %5128 = fmul fast float %5117, %4969
  %5129 = fmul fast float %5119, %4967
  %5130 = fsub fast float %5128, %5129
  %5131 = fmul fast float %5118, %4967
  %5132 = fmul fast float %5117, %4968
  %5133 = fsub fast float %5131, %5132
  %5134 = fmul fast float %5127, 2.000000e+00
  %5135 = fmul fast float %5130, 2.000000e+00
  %5136 = fmul fast float %5133, 2.000000e+00
  %5137 = fmul fast float %5134, %4970
  %5138 = fmul fast float %5135, %4970
  %5139 = fmul fast float %5136, %4970
  %5140 = fmul fast float %5136, %4968
  %5141 = fmul fast float %5135, %4969
  %5142 = fmul fast float %5134, %4969
  %5143 = fmul fast float %5136, %4967
  %5144 = fmul fast float %5135, %4967
  %5145 = fmul fast float %5134, %4968
  %5146 = fadd fast float %5140, %5117
  %5147 = fadd fast float %5146, %5137
  %5148 = fsub fast float %5147, %5141
  %5149 = fsub fast float %5118, %5143
  %5150 = fadd fast float %5149, %5138
  %5151 = fadd fast float %5150, %5142
  %5152 = fadd fast float %5139, %5119
  %5153 = fsub fast float %5152, %5145
  %5154 = fadd fast float %5153, %5144
  br label %5155

; <label>:5155                                    ; preds = %5124, %5116
  %5156 = phi float [ %5148, %5124 ], [ %5117, %5116 ]
  %5157 = phi float [ %5151, %5124 ], [ %5118, %5116 ]
  %5158 = phi float [ %5154, %5124 ], [ %5119, %5116 ]
  br i1 %4996, label %5190, label %5159

; <label>:5159                                    ; preds = %5155
  %5160 = fmul fast float %4587, 0x400187C840000000
  %5161 = fadd fast float %5160, 0xC00EFC2120000000
  %5162 = fmul fast float %5161, %4587
  %5163 = fadd fast float %5162, 0x3FE5D16340000000
  %5164 = fmul fast float %5163, %4587
  %5165 = fadd fast float %5164, 1.000000e+00
  %5166 = call float @dx.op.unary.f32(i32 7, float %5165)  ; Saturate(value)
  %5167 = fsub fast float %5120, %208
  %5168 = fsub fast float %5121, %209
  %5169 = fsub fast float %5122, %210
  %5170 = fsub fast float %5120, %4951
  %5171 = fsub fast float %5121, %4952
  %5172 = fsub fast float %5122, %4953
  %5173 = call float @dx.op.dot3.f32(i32 55, float %5167, float %5168, float %5169, float %5167, float %5168, float %5169)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = call float @dx.op.dot3.f32(i32 55, float %5170, float %5171, float %5172, float %5170, float %5171, float %5172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5175 = fadd fast float %5174, 0x3EE4F8B580000000
  %5176 = fdiv fast float %5173, %5175
  %5177 = bitcast float %5176 to i32
  %5178 = ashr i32 %5177, 1
  %5179 = add nsw i32 %5178, 532487669
  %5180 = bitcast i32 %5179 to float
  %5181 = fmul fast float %5180, %5166
  %5182 = call float @dx.op.unary.f32(i32 7, float %5181)  ; Saturate(value)
  %5183 = fmul fast float %5182, 0x4009981AE0000000
  %5184 = fsub fast float 0x40111BBD80000000, %5183
  %5185 = fmul fast float %5184, %5182
  %5186 = fadd fast float %5185, 0xC0009F6020000000
  %5187 = fmul fast float %5186, %5182
  %5188 = fadd fast float %5187, 1.000000e+00
  %5189 = call float @dx.op.unary.f32(i32 7, float %5188)  ; Saturate(value)
  br label %5193

; <label>:5190                                    ; preds = %5155
  %5191 = icmp ne i32 %4997, -1
  %5192 = zext i1 %5191 to i32
  br label %5193

; <label>:5193                                    ; preds = %5190, %5159
  %5194 = phi float [ %4587, %5190 ], [ %5189, %5159 ]
  %5195 = phi i32 [ %5192, %5190 ], [ 0, %5159 ]
  %5196 = fmul float %5194, 5.000000e+00
  %5197 = fsub float 5.000000e+00, %5196
  %5198 = icmp ne i32 %5195, 0
  %5199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5200 = extractvalue %dx.types.CBufRet.f32 %5199, 3
  %5201 = fadd fast float %5200, %5197
  %5202 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5201)  ; FMax(a,b)
  %5203 = call float @dx.op.unary.f32(i32 6, float %5156)  ; FAbs(value)
  %5204 = call float @dx.op.unary.f32(i32 6, float %5157)  ; FAbs(value)
  %5205 = fadd fast float %5204, %5203
  %5206 = call float @dx.op.unary.f32(i32 6, float %5158)  ; FAbs(value)
  %5207 = fadd fast float %5205, %5206
  %5208 = fcmp fast oeq float %5207, 0.000000e+00
  %5209 = fdiv fast float 1.000000e+00, %5207
  %5210 = select i1 %5208, float 1.000000e+00, float %5209
  %5211 = fmul fast float %5210, %5156
  %5212 = fmul fast float %5210, %5157
  %5213 = call float @dx.op.unary.f32(i32 6, float %5212)  ; FAbs(value)
  %5214 = call float @dx.op.unary.f32(i32 6, float %5211)  ; FAbs(value)
  %5215 = fsub fast float 1.000000e+00, %5213
  %5216 = fsub fast float 1.000000e+00, %5214
  %5217 = fcmp fast oge float %5211, 0.000000e+00
  %5218 = fcmp fast oge float %5212, 0.000000e+00
  %5219 = select i1 %5217, float 1.000000e+00, float -1.000000e+00
  %5220 = select i1 %5218, float 1.000000e+00, float -1.000000e+00
  %5221 = fcmp fast ole float %5158, 0.000000e+00
  %5222 = fmul fast float %5219, %5215
  %5223 = fmul fast float %5220, %5216
  %5224 = select i1 %5221, float %5222, float %5211
  %5225 = select i1 %5221, float %5223, float %5212
  %5226 = fmul fast float %5224, 5.000000e-01
  %5227 = fmul fast float %5225, 5.000000e-01
  %5228 = fadd fast float %5226, 5.000000e-01
  %5229 = fadd fast float %5227, 5.000000e-01
  %5230 = uitofp i32 %4994 to float
  %5231 = call float @dx.op.binary.f32(i32 36, float %5202, float 3.000000e+00)  ; FMin(a,b)
  %5232 = fadd fast float %5231, 2.000000e+00
  %5233 = call float @dx.op.unary.f32(i32 21, float %5232)  ; Exp(value)
  %5234 = extractvalue %dx.types.CBufRet.f32 %5199, 1
  %5235 = fmul fast float %5234, %5233
  %5236 = fmul fast float %5235, 2.000000e+00
  %5237 = fsub fast float 1.000000e+00, %5236
  %5238 = fmul fast float %5228, %5237
  %5239 = fmul fast float %5229, %5237
  %5240 = fadd fast float %5238, %5235
  %5241 = fadd fast float %5239, %5235
  %5242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %55, float %5240, float %5241, float %5230, float undef, i32 0, i32 0, i32 undef, float %5202)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5243 = extractvalue %dx.types.ResRet.f32 %5242, 0
  %5244 = extractvalue %dx.types.ResRet.f32 %5242, 1
  %5245 = extractvalue %dx.types.ResRet.f32 %5242, 2
  %5246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5247 = extractvalue %dx.types.CBufRet.f32 %5246, 3
  %5248 = fmul fast float %5247, %4964
  %5249 = call float @dx.op.binary.f32(i32 36, float %4693, float %5248)  ; FMin(a,b)
  %5250 = select i1 %5198, float %5249, float %5248
  %5251 = fmul fast float %5243, %5043
  %5252 = fmul fast float %5251, %5250
  %5253 = fmul fast float %5244, %5043
  %5254 = fmul fast float %5253, %5250
  %5255 = fmul fast float %5245, %5043
  %5256 = fmul fast float %5255, %5250
  %5257 = fadd fast float %5252, %4939
  %5258 = fadd fast float %5254, %4940
  %5259 = fadd fast float %5256, %4941
  %5260 = fsub fast float %4942, %5043
  br label %5045

; <label>:5261                                    ; preds = %5045
  br label %5262

; <label>:5262                                    ; preds = %5261, %4908
  %5263 = phi float [ %4909, %4908 ], [ %5046, %5261 ]
  %5264 = phi float [ %4910, %4908 ], [ %5047, %5261 ]
  %5265 = phi float [ %4911, %4908 ], [ %5048, %5261 ]
  %5266 = phi float [ %4912, %4908 ], [ %5049, %5261 ]
  %5267 = add i32 %4913, 1
  %5268 = icmp ugt i32 %5267, %4905
  br i1 %5268, label %5269, label %4908, !llvm.loop !106

; <label>:5269                                    ; preds = %5262
  br label %5270

; <label>:5270                                    ; preds = %5269, %4890
  %5271 = phi float [ 0.000000e+00, %4890 ], [ %5263, %5269 ]
  %5272 = phi float [ 0.000000e+00, %4890 ], [ %5264, %5269 ]
  %5273 = phi float [ 0.000000e+00, %4890 ], [ %5265, %5269 ]
  %5274 = call float @dx.op.dot3.f32(i32 55, float %5271, float %5272, float %5273, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5275 = select i1 %278, float 0.000000e+00, float %5271
  %5276 = select i1 %278, float %5274, float %5272
  %5277 = select i1 %278, float 0.000000e+00, float %5273
  %5278 = fcmp fast olt float %4816, 0.000000e+00
  %5279 = call float @dx.op.unary.f32(i32 6, float %4816)  ; FAbs(value)
  %5280 = fmul fast float %5279, %4752
  %5281 = fmul fast float %5279, %4753
  %5282 = fmul fast float %5279, %4754
  %5283 = select i1 %5278, float %4752, float %5280
  %5284 = select i1 %5278, float %4753, float %5281
  %5285 = select i1 %5278, float %4754, float %5282
  %5286 = fsub fast float 1.000000e+00, %5279
  %5287 = call float @dx.op.unary.f32(i32 7, float %5286)  ; Saturate(value)
  %5288 = fmul fast float %5287, %5275
  %5289 = fmul fast float %5287, %5276
  %5290 = fmul fast float %5287, %5277
  %5291 = fadd fast float %5283, %5288
  %5292 = fadd fast float %5284, %5289
  %5293 = fadd fast float %5285, %5290
  br label %5294

; <label>:5294                                    ; preds = %5270, %4799
  %5295 = phi float [ %5291, %5270 ], [ %4752, %4799 ]
  %5296 = phi float [ %5292, %5270 ], [ %4753, %4799 ]
  %5297 = phi float [ %5293, %5270 ], [ %4754, %4799 ]
  %5298 = fmul fast float %208, %208
  %5299 = fmul fast float %209, %209
  %5300 = fadd fast float %5299, %5298
  %5301 = fmul fast float %210, %210
  %5302 = fadd fast float %5300, %5301
  %5303 = call float @dx.op.unary.f32(i32 24, float %5302)  ; Sqrt(value)
  %5304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5305 = extractvalue %dx.types.CBufRet.f32 %5304, 1
  %5306 = fsub fast float %5303, %5305
  %5307 = extractvalue %dx.types.CBufRet.f32 %5304, 2
  %5308 = fmul fast float %5306, %5307
  %5309 = call float @dx.op.unary.f32(i32 7, float %5308)  ; Saturate(value)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5304, 0
  %5311 = extractvalue %dx.types.CBufRet.f32 %5304, 3
  %5312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %5313 = extractvalue %dx.types.ResRet.i32 %5312, 0
  %5314 = and i32 %5313, 4194304
  %5315 = icmp ne i32 %5314, 0
  %5316 = and i32 %5313, 8388608
  %5317 = icmp ne i32 %5316, 0
  %5318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5319 = extractvalue %dx.types.CBufRet.f32 %5318, 0
  %5320 = extractvalue %dx.types.CBufRet.f32 %5318, 1
  %5321 = extractvalue %dx.types.CBufRet.f32 %5318, 2
  %5322 = extractvalue %dx.types.CBufRet.f32 %5318, 3
  %5323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5324 = extractvalue %dx.types.CBufRet.f32 %5323, 0
  %5325 = extractvalue %dx.types.CBufRet.f32 %5323, 1
  %5326 = extractvalue %dx.types.CBufRet.f32 %5323, 2
  %5327 = extractvalue %dx.types.CBufRet.f32 %5323, 3
  %5328 = select i1 %5315, float %5319, float %5324
  %5329 = select i1 %5315, float %5320, float %5325
  %5330 = select i1 %5315, float %5321, float %5326
  %5331 = select i1 %5315, float %5322, float %5327
  %5332 = select i1 %5317, float 0.000000e+00, float %5331
  %5333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5334 = extractvalue %dx.types.CBufRet.f32 %5333, 0
  %5335 = extractvalue %dx.types.CBufRet.f32 %5333, 1
  %5336 = select i1 %5315, float %5334, float %5335
  %5337 = select i1 %5317, float 0.000000e+00, float %5336
  %5338 = extractvalue %dx.types.CBufRet.f32 %5333, 2
  %5339 = extractvalue %dx.types.CBufRet.f32 %5333, 3
  %5340 = select i1 %5315, float %5338, float %5339
  %5341 = select i1 %5317, float 0.000000e+00, float %5340
  %5342 = fmul fast float %5309, %70
  %5343 = fmul fast float %5342, %5310
  %5344 = fmul fast float %5343, %5337
  %5345 = fmul fast float %5342, %5311
  %5346 = fmul fast float %5345, %5341
  %5347 = fadd fast float %5346, 1.000000e+00
  %5348 = fmul fast float %4805, %4756
  %5349 = fmul fast float %5348, %5347
  %5350 = fmul fast float %4805, %4757
  %5351 = fmul fast float %5350, %5347
  %5352 = fmul fast float %4805, %4758
  %5353 = fmul fast float %5352, %5347
  %5354 = call float @dx.op.dot3.f32(i32 55, float %4578, float %4579, float %4580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5355 = fcmp fast ogt float %5354, 0x3E7FF19E20000000
  %5356 = fdiv fast float 1.000000e+00, %5354
  %5357 = select i1 %5355, float %5356, float 0.000000e+00
  %5358 = fmul fast float %5357, %4578
  %5359 = fmul fast float %5357, %4579
  %5360 = fmul fast float %5357, %4580
  %5361 = fadd fast float %5358, -1.000000e+00
  %5362 = fadd fast float %5359, -1.000000e+00
  %5363 = fadd fast float %5360, -1.000000e+00
  %5364 = fmul fast float %5361, 5.000000e-01
  %5365 = fmul fast float %5362, 5.000000e-01
  %5366 = fmul fast float %5363, 5.000000e-01
  %5367 = fadd fast float %5364, 1.000000e+00
  %5368 = fadd fast float %5365, 1.000000e+00
  %5369 = fadd fast float %5366, 1.000000e+00
  %5370 = fadd fast float %5344, %3397
  %5371 = fsub fast float %5328, %5367
  %5372 = fsub fast float %5329, %5368
  %5373 = fsub fast float %5330, %5369
  %5374 = fmul fast float %5371, %5332
  %5375 = fmul fast float %5372, %5332
  %5376 = fmul fast float %5373, %5332
  %5377 = fadd fast float %5374, %5367
  %5378 = fadd fast float %5375, %5368
  %5379 = fadd fast float %5376, %5369
  %5380 = fmul fast float %5295, %4800
  %5381 = fmul fast float %5296, %4801
  %5382 = fmul fast float %5297, %4802
  %5383 = fsub fast float 1.000000e+00, %4632
  %5384 = bitcast float %5383 to i32
  %5385 = sitofp i32 %5384 to float
  %5386 = fmul fast float %5385, 5.000000e+00
  %5387 = fadd fast float %5386, 0xC1EFBF8940000000
  %5388 = fptosi float %5387 to i32
  %5389 = bitcast i32 %5388 to float
  %5390 = fmul fast float %5370, %5389
  %5391 = fmul fast float %5348, %5390
  %5392 = fmul fast float %5391, %5377
  %5393 = fmul fast float %5350, %5390
  %5394 = fmul fast float %5393, %5378
  %5395 = fmul fast float %5352, %5390
  %5396 = fmul fast float %5395, %5379
  %5397 = fmul fast float %5349, %3393
  %5398 = fmul fast float %5351, %3393
  %5399 = fmul fast float %5353, %3393
  %5400 = fadd fast float %5380, %3389
  %5401 = fadd fast float %5400, %5392
  %5402 = fmul fast float %5401, %3393
  %5403 = fadd fast float %5381, %3390
  %5404 = fadd fast float %5403, %5394
  %5405 = fmul fast float %5404, %3393
  %5406 = fadd fast float %5382, %3391
  %5407 = fadd fast float %5406, %5396
  %5408 = fmul fast float %5407, %3393
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 3
  %5411 = fcmp fast oeq float %5410, 0.000000e+00
  br i1 %5411, label %7116, label %5412

; <label>:5412                                    ; preds = %5294
  %5413 = extractvalue %dx.types.CBufRet.f32 %5409, 0
  %5414 = extractvalue %dx.types.CBufRet.f32 %5409, 1
  %5415 = extractvalue %dx.types.CBufRet.f32 %5409, 2
  %5416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5417 = extractvalue %dx.types.CBufRet.f32 %5416, 0
  %5418 = extractvalue %dx.types.CBufRet.f32 %5416, 1
  %5419 = extractvalue %dx.types.CBufRet.f32 %5416, 2
  %5420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5421 = extractvalue %dx.types.CBufRet.f32 %5420, 0
  %5422 = extractvalue %dx.types.CBufRet.f32 %5420, 1
  %5423 = call float @dx.op.dot3.f32(i32 55, float %5417, float %5418, float %5419, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5424 = select i1 %278, float %5421, float %5417
  %5425 = select i1 %278, float %5423, float %5418
  %5426 = select i1 %278, float %5422, float %5419
  %5427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5428 = extractvalue %dx.types.CBufRet.f32 %5427, 2
  %5429 = fmul fast float %5428, %128
  %5430 = fmul fast float %5428, %129
  %5431 = fmul fast float %5428, %130
  %5432 = fadd fast float %5429, %208
  %5433 = fadd fast float %5430, %209
  %5434 = fadd fast float %5431, %210
  %5435 = fcmp fast olt float %5410, 0.000000e+00
  br i1 %5435, label %6693, label %5436

; <label>:5436                                    ; preds = %5412
  %5437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.f32 %5437, 0
  %5439 = extractvalue %dx.types.CBufRet.f32 %5437, 1
  %5440 = extractvalue %dx.types.CBufRet.f32 %5437, 2
  %5441 = extractvalue %dx.types.CBufRet.f32 %5437, 3
  %5442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5443 = extractvalue %dx.types.CBufRet.f32 %5442, 0
  %5444 = extractvalue %dx.types.CBufRet.f32 %5442, 1
  %5445 = extractvalue %dx.types.CBufRet.f32 %5442, 2
  %5446 = extractvalue %dx.types.CBufRet.f32 %5442, 3
  %5447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5448 = extractvalue %dx.types.CBufRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.CBufRet.f32 %5447, 1
  %5450 = extractvalue %dx.types.CBufRet.f32 %5447, 2
  %5451 = extractvalue %dx.types.CBufRet.f32 %5447, 3
  %5452 = fmul fast float %5438, %5432
  %5453 = call float @dx.op.tertiary.f32(i32 46, float %5433, float %5439, float %5452)  ; FMad(a,b,c)
  %5454 = call float @dx.op.tertiary.f32(i32 46, float %5434, float %5440, float %5453)  ; FMad(a,b,c)
  %5455 = fadd fast float %5454, %5441
  %5456 = fmul fast float %5443, %5432
  %5457 = call float @dx.op.tertiary.f32(i32 46, float %5433, float %5444, float %5456)  ; FMad(a,b,c)
  %5458 = call float @dx.op.tertiary.f32(i32 46, float %5434, float %5445, float %5457)  ; FMad(a,b,c)
  %5459 = fadd fast float %5458, %5446
  %5460 = fmul fast float %5448, %5432
  %5461 = call float @dx.op.tertiary.f32(i32 46, float %5433, float %5449, float %5460)  ; FMad(a,b,c)
  %5462 = call float @dx.op.tertiary.f32(i32 46, float %5434, float %5450, float %5461)  ; FMad(a,b,c)
  %5463 = fadd fast float %5462, %5451
  %5464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5465 = extractvalue %dx.types.CBufRet.f32 %5464, 0
  %5466 = fcmp fast une float %5465, 0.000000e+00
  %5467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5468 = extractvalue %dx.types.CBufRet.f32 %5467, 0
  %5469 = extractvalue %dx.types.CBufRet.f32 %5467, 1
  %5470 = extractvalue %dx.types.CBufRet.f32 %5467, 3
  %5471 = fmul fast float %5470, %5455
  %5472 = fmul fast float %5470, %5459
  %5473 = fadd fast float %5471, %5468
  %5474 = fadd fast float %5472, %5469
  %5475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5476 = extractvalue %dx.types.CBufRet.f32 %5475, 0
  %5477 = extractvalue %dx.types.CBufRet.f32 %5475, 1
  %5478 = extractvalue %dx.types.CBufRet.f32 %5475, 3
  %5479 = fmul fast float %5478, %5455
  %5480 = fmul fast float %5478, %5459
  %5481 = fadd fast float %5479, %5476
  %5482 = fadd fast float %5480, %5477
  %5483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5484 = extractvalue %dx.types.CBufRet.f32 %5483, 1
  %5485 = fsub fast float %5484, %5463
  %5486 = extractvalue %dx.types.CBufRet.f32 %5483, 2
  %5487 = fmul fast float %5485, %5486
  %5488 = fsub fast float 1.000000e+00, %5487
  %5489 = call float @dx.op.unary.f32(i32 7, float %5488)  ; Saturate(value)
  br i1 %5466, label %5550, label %5490

; <label>:5490                                    ; preds = %5436
  %5491 = extractvalue %dx.types.CBufRet.f32 %5475, 2
  %5492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5493 = extractvalue %dx.types.CBufRet.f32 %5492, 2
  %5494 = fadd fast float %5493, %5491
  %5495 = fcmp fast ogt float %5494, 0.000000e+00
  br i1 %5495, label %5496, label %5520

; <label>:5496                                    ; preds = %5490
  %5497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5498 = extractvalue %dx.types.CBufRet.f32 %5497, 0
  %5499 = extractvalue %dx.types.CBufRet.f32 %5497, 1
  %5500 = fsub fast float %5481, %5498
  %5501 = fsub fast float %5482, %5499
  %5502 = fcmp fast olt float %5500, 0.000000e+00
  %5503 = fcmp fast olt float %5501, 0.000000e+00
  %5504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5505 = extractvalue %dx.types.CBufRet.f32 %5504, 0
  %5506 = extractvalue %dx.types.CBufRet.f32 %5504, 1
  %5507 = extractvalue %dx.types.CBufRet.f32 %5504, 2
  %5508 = extractvalue %dx.types.CBufRet.f32 %5504, 3
  %5509 = select i1 %5502, float %5505, float %5507
  %5510 = select i1 %5503, float %5506, float %5508
  %5511 = fmul fast float %5509, %5500
  %5512 = fmul fast float %5510, %5501
  %5513 = call float @dx.op.unary.f32(i32 6, float %5511)  ; FAbs(value)
  %5514 = call float @dx.op.unary.f32(i32 6, float %5512)  ; FAbs(value)
  %5515 = extractvalue %dx.types.CBufRet.f32 %5427, 0
  %5516 = call float @dx.op.binary.f32(i32 35, float %5513, float %5514)  ; FMax(a,b)
  %5517 = fsub fast float %5515, %5516
  %5518 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  %5519 = fmul fast float %5518, %5489
  br label %5520

; <label>:5520                                    ; preds = %5496, %5490
  %5521 = phi float [ %5519, %5496 ], [ 0.000000e+00, %5490 ]
  %5522 = extractvalue %dx.types.CBufRet.f32 %5467, 2
  %5523 = extractvalue %dx.types.CBufRet.f32 %5492, 1
  %5524 = fadd fast float %5523, %5522
  %5525 = fcmp fast ogt float %5524, 0.000000e+00
  br i1 %5525, label %5526, label %5550

; <label>:5526                                    ; preds = %5520
  %5527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5528 = extractvalue %dx.types.CBufRet.f32 %5527, 0
  %5529 = extractvalue %dx.types.CBufRet.f32 %5527, 1
  %5530 = fsub fast float %5473, %5528
  %5531 = fsub fast float %5474, %5529
  %5532 = fcmp fast olt float %5530, 0.000000e+00
  %5533 = fcmp fast olt float %5531, 0.000000e+00
  %5534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5535 = extractvalue %dx.types.CBufRet.f32 %5534, 0
  %5536 = extractvalue %dx.types.CBufRet.f32 %5534, 1
  %5537 = extractvalue %dx.types.CBufRet.f32 %5534, 2
  %5538 = extractvalue %dx.types.CBufRet.f32 %5534, 3
  %5539 = select i1 %5532, float %5535, float %5537
  %5540 = select i1 %5533, float %5536, float %5538
  %5541 = fmul fast float %5539, %5530
  %5542 = fmul fast float %5540, %5531
  %5543 = call float @dx.op.unary.f32(i32 6, float %5541)  ; FAbs(value)
  %5544 = call float @dx.op.unary.f32(i32 6, float %5542)  ; FAbs(value)
  %5545 = extractvalue %dx.types.CBufRet.f32 %5427, 0
  %5546 = call float @dx.op.binary.f32(i32 35, float %5543, float %5544)  ; FMax(a,b)
  %5547 = fsub fast float %5545, %5546
  %5548 = call float @dx.op.unary.f32(i32 7, float %5547)  ; Saturate(value)
  %5549 = fmul fast float %5548, %5489
  br label %5550

; <label>:5550                                    ; preds = %5526, %5520, %5436
  %5551 = phi float [ 0.000000e+00, %5436 ], [ %5549, %5526 ], [ 0.000000e+00, %5520 ]
  %5552 = phi float [ 0.000000e+00, %5436 ], [ %5521, %5526 ], [ %5521, %5520 ]
  %5553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5554 = extractvalue %dx.types.CBufRet.f32 %5553, 1
  %5555 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5557 = extractvalue %dx.types.CBufRet.f32 %5556, 0
  %5558 = extractvalue %dx.types.CBufRet.f32 %5556, 1
  %5559 = fsub fast float %5455, %5557
  %5560 = fsub fast float %5459, %5558
  %5561 = fcmp fast olt float %5559, 0.000000e+00
  %5562 = fcmp fast olt float %5560, 0.000000e+00
  %5563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5564 = extractvalue %dx.types.CBufRet.f32 %5563, 0
  %5565 = extractvalue %dx.types.CBufRet.f32 %5563, 1
  %5566 = extractvalue %dx.types.CBufRet.f32 %5563, 2
  %5567 = extractvalue %dx.types.CBufRet.f32 %5563, 3
  %5568 = select i1 %5561, float %5564, float %5566
  %5569 = select i1 %5562, float %5565, float %5567
  %5570 = fmul fast float %5568, %5559
  %5571 = fmul fast float %5569, %5560
  %5572 = call float @dx.op.unary.f32(i32 6, float %5570)  ; FAbs(value)
  %5573 = call float @dx.op.unary.f32(i32 6, float %5571)  ; FAbs(value)
  %5574 = extractvalue %dx.types.CBufRet.f32 %5427, 0
  %5575 = call float @dx.op.binary.f32(i32 35, float %5572, float %5573)  ; FMax(a,b)
  %5576 = fsub fast float %5574, %5575
  %5577 = call float @dx.op.unary.f32(i32 7, float %5576)  ; Saturate(value)
  %5578 = call float @dx.op.binary.f32(i32 36, float %5577, float %5555)  ; FMin(a,b)
  %5579 = fmul fast float %5578, %5489
  %5580 = fsub fast float %5551, %5579
  %5581 = fsub fast float %5552, %5551
  %5582 = fsub fast float %5581, %5579
  %5583 = call float @dx.op.binary.f32(i32 35, float %5551, float %5552)  ; FMax(a,b)
  %5584 = call float @dx.op.binary.f32(i32 35, float %5579, float %5583)  ; FMax(a,b)
  %5585 = fcmp fast olt float %5584, 1.000000e+00
  br i1 %5585, label %5586, label %5984, !dx.controlflow.hints !108

; <label>:5586                                    ; preds = %5550
  %5587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5588 = extractvalue %dx.types.CBufRet.f32 %5587, 0
  %5589 = fcmp fast une float %5588, 0.000000e+00
  br i1 %5589, label %5590, label %5984, !dx.controlflow.hints !109

; <label>:5590                                    ; preds = %5586
  %5591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5592 = extractvalue %dx.types.CBufRet.f32 %5591, 0
  %5593 = extractvalue %dx.types.CBufRet.f32 %5591, 1
  %5594 = extractvalue %dx.types.CBufRet.f32 %5591, 2
  %5595 = extractvalue %dx.types.CBufRet.f32 %5591, 3
  %5596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5597 = extractvalue %dx.types.CBufRet.f32 %5596, 0
  %5598 = extractvalue %dx.types.CBufRet.f32 %5596, 1
  %5599 = extractvalue %dx.types.CBufRet.f32 %5596, 2
  %5600 = extractvalue %dx.types.CBufRet.f32 %5596, 3
  %5601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5602 = extractvalue %dx.types.CBufRet.f32 %5601, 0
  %5603 = extractvalue %dx.types.CBufRet.f32 %5601, 1
  %5604 = extractvalue %dx.types.CBufRet.f32 %5601, 2
  %5605 = extractvalue %dx.types.CBufRet.f32 %5601, 3
  %5606 = fmul fast float %5592, %5432
  %5607 = call float @dx.op.tertiary.f32(i32 46, float %5433, float %5593, float %5606)  ; FMad(a,b,c)
  %5608 = call float @dx.op.tertiary.f32(i32 46, float %5434, float %5594, float %5607)  ; FMad(a,b,c)
  %5609 = fadd fast float %5608, %5595
  %5610 = fmul fast float %5597, %5432
  %5611 = call float @dx.op.tertiary.f32(i32 46, float %5433, float %5598, float %5610)  ; FMad(a,b,c)
  %5612 = call float @dx.op.tertiary.f32(i32 46, float %5434, float %5599, float %5611)  ; FMad(a,b,c)
  %5613 = fadd fast float %5612, %5600
  %5614 = fmul fast float %5602, %5432
  %5615 = call float @dx.op.tertiary.f32(i32 46, float %5433, float %5603, float %5614)  ; FMad(a,b,c)
  %5616 = call float @dx.op.tertiary.f32(i32 46, float %5434, float %5604, float %5615)  ; FMad(a,b,c)
  %5617 = fadd fast float %5616, %5605
  %5618 = fcmp fast oge float %5609, 1.000000e+00
  %5619 = fcmp fast oge float %5613, 1.000000e+00
  %5620 = or i1 %5618, %5619
  %5621 = fcmp fast olt float %5609, 0.000000e+00
  %5622 = fcmp fast olt float %5613, 0.000000e+00
  %5623 = or i1 %5621, %5622
  %5624 = or i1 %5620, %5623
  br i1 %5624, label %5984, label %5625, !dx.controlflow.hints !110

; <label>:5625                                    ; preds = %5590
  %5626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5627 = extractvalue %dx.types.CBufRet.f32 %5626, 0
  %5628 = extractvalue %dx.types.CBufRet.f32 %5626, 1
  %5629 = extractvalue %dx.types.CBufRet.f32 %5626, 2
  %5630 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5631 = extractvalue %dx.types.CBufRet.i32 %5630, 2
  %5632 = uitofp i32 %5631 to float
  %5633 = extractvalue %dx.types.CBufRet.i32 %5630, 3
  %5634 = uitofp i32 %5633 to float
  %5635 = extractvalue %dx.types.CBufRet.f32 %5626, 3
  %5636 = fmul fast float %5635, 2.000000e+00
  %5637 = fsub fast float %5609, %5627
  %5638 = fsub fast float %5613, %5628
  %5639 = fmul fast float %5636, %5637
  %5640 = fmul fast float %5636, %5638
  %5641 = fdiv fast float 1.000000e+00, %5415
  %5642 = fmul fast float %5640, %5641
  %5643 = call float @dx.op.unary.f32(i32 6, float %5642)  ; FAbs(value)
  %5644 = fmul fast float %5629, %5434
  %5645 = fmul fast float %5644, %5636
  %5646 = call float @dx.op.unary.f32(i32 6, float %5645)  ; FAbs(value)
  %5647 = call float @dx.op.unary.f32(i32 6, float %5639)  ; FAbs(value)
  %5648 = call float @dx.op.binary.f32(i32 35, float %5646, float %5643)  ; FMax(a,b)
  %5649 = call float @dx.op.binary.f32(i32 35, float %5647, float %5648)  ; FMax(a,b)
  %5650 = fmul fast float %5649, 2.000000e+00
  %5651 = call float @dx.op.unary.f32(i32 23, float %5650)  ; Log(value)
  %5652 = call float @dx.op.binary.f32(i32 35, float %5651, float %5632)  ; FMax(a,b)
  %5653 = call float @dx.op.unary.f32(i32 22, float %5652)  ; Frc(value)
  %5654 = fadd fast float %5653, 0xBFEA666660000000
  %5655 = fmul fast float %5654, 8.000000e+00
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = call float @dx.op.unary.f32(i32 27, float %5652)  ; Round_ni(value)
  %5658 = fadd fast float %5657, %5656
  %5659 = call float @dx.op.binary.f32(i32 36, float %5658, float %5634)  ; FMin(a,b)
  %5660 = call float @dx.op.unary.f32(i32 27, float %5659)  ; Round_ni(value)
  %5661 = fsub fast float -0.000000e+00, %5660
  %5662 = call float @dx.op.unary.f32(i32 21, float %5661)  ; Exp(value)
  %5663 = fmul fast float %5662, %5636
  %5664 = fmul fast float %5663, %5609
  %5665 = fmul fast float %5663, %5613
  %5666 = fmul fast float %5664, 2.500000e-01
  %5667 = fmul fast float %5665, 2.500000e-01
  %5668 = fadd fast float %5666, 5.000000e-01
  %5669 = fadd fast float %5667, 5.000000e-01
  %5670 = fsub fast float %5634, %5632
  %5671 = fptoui float %5670 to i32
  %5672 = add i32 %5671, 320
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 %5672)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 0
  %5675 = extractvalue %dx.types.CBufRet.f32 %5673, 1
  %5676 = fcmp fast une float %5659, %5634
  %5677 = fsub fast float %5609, %5674
  %5678 = fsub fast float %5613, %5675
  %5679 = call float @dx.op.unary.f32(i32 6, float %5677)  ; FAbs(value)
  %5680 = call float @dx.op.unary.f32(i32 6, float %5678)  ; FAbs(value)
  %5681 = fmul fast float %5679, %5663
  %5682 = fmul fast float %5680, %5663
  %5683 = fcmp fast olt float %5681, 1.000000e+00
  %5684 = fcmp fast olt float %5682, 1.000000e+00
  %5685 = and i1 %5683, %5684
  %5686 = or i1 %5676, %5685
  br i1 %5686, label %5687, label %5984, !dx.controlflow.hints !111

; <label>:5687                                    ; preds = %5625
  %5688 = fmul fast float %5665, 5.000000e-01
  %5689 = fmul fast float %5664, 5.000000e-01
  %5690 = fadd fast float %5688, 5.000000e-01
  %5691 = fadd fast float %5689, 5.000000e-01
  %5692 = sitofp i32 %5631 to float
  %5693 = fsub fast float %5659, %5692
  %5694 = call float @dx.op.unary.f32(i32 27, float %5693)  ; Round_ni(value)
  %5695 = call float @dx.op.unary.f32(i32 22, float %5659)  ; Frc(value)
  %5696 = call float @dx.op.unary.f32(i32 22, float %5691)  ; Frc(value)
  %5697 = call float @dx.op.unary.f32(i32 22, float %5690)  ; Frc(value)
  %5698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %56, float %5696, float %5697, float %5694, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5699 = extractvalue %dx.types.ResRet.f32 %5698, 0
  %5700 = extractvalue %dx.types.ResRet.f32 %5698, 1
  %5701 = extractvalue %dx.types.ResRet.f32 %5698, 2
  %5702 = extractvalue %dx.types.ResRet.f32 %5698, 3
  %5703 = fcmp fast ogt float %5695, 0.000000e+00
  br i1 %5703, label %5704, label %5725, !dx.controlflow.hints !112

; <label>:5704                                    ; preds = %5687
  %5705 = fadd fast float %5694, 1.000000e+00
  %5706 = call float @dx.op.unary.f32(i32 22, float %5668)  ; Frc(value)
  %5707 = call float @dx.op.unary.f32(i32 22, float %5669)  ; Frc(value)
  %5708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %56, float %5706, float %5707, float %5705, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5709 = extractvalue %dx.types.ResRet.f32 %5708, 0
  %5710 = extractvalue %dx.types.ResRet.f32 %5708, 1
  %5711 = extractvalue %dx.types.ResRet.f32 %5708, 2
  %5712 = extractvalue %dx.types.ResRet.f32 %5708, 3
  %5713 = fsub fast float %5709, %5699
  %5714 = fsub fast float %5710, %5700
  %5715 = fsub fast float %5711, %5701
  %5716 = fsub fast float %5712, %5702
  %5717 = fmul fast float %5713, %5695
  %5718 = fmul fast float %5714, %5695
  %5719 = fmul fast float %5715, %5695
  %5720 = fmul fast float %5716, %5695
  %5721 = fadd fast float %5717, %5699
  %5722 = fadd fast float %5718, %5700
  %5723 = fadd fast float %5719, %5701
  %5724 = fadd fast float %5720, %5702
  br label %5725

; <label>:5725                                    ; preds = %5704, %5687
  %5726 = phi float [ %5721, %5704 ], [ %5699, %5687 ]
  %5727 = phi float [ %5722, %5704 ], [ %5700, %5687 ]
  %5728 = phi float [ %5723, %5704 ], [ %5701, %5687 ]
  %5729 = phi float [ %5724, %5704 ], [ %5702, %5687 ]
  %5730 = fadd fast float %5726, -5.000000e-01
  %5731 = fadd fast float %5728, -5.000000e-01
  %5732 = fmul fast float %5730, 0xBFD5555560000000
  %5733 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5731, float %5732)  ; FMad(a,b,c)
  %5734 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5727, float 0.000000e+00)  ; FMad(a,b,c)
  %5735 = fadd fast float %5734, %5729
  %5736 = fmul fast float %5730, -7.500000e-01
  %5737 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5731, float %5736)  ; FMad(a,b,c)
  %5738 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5727, float 0.000000e+00)  ; FMad(a,b,c)
  %5739 = fadd fast float %5738, %5729
  %5740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = extractvalue %dx.types.CBufRet.f32 %5740, 0
  %5742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5743 = extractvalue %dx.types.CBufRet.f32 %5742, 0
  %5744 = extractvalue %dx.types.CBufRet.f32 %5742, 1
  %5745 = extractvalue %dx.types.CBufRet.f32 %5742, 2
  %5746 = extractvalue %dx.types.CBufRet.f32 %5742, 3
  %5747 = fsub fast float %5743, %5733
  %5748 = fsub fast float %5744, %5735
  %5749 = fsub fast float %5745, %5737
  %5750 = fsub fast float %5746, %5739
  %5751 = fmul fast float %5747, %5741
  %5752 = fmul fast float %5748, %5741
  %5753 = fmul fast float %5749, %5741
  %5754 = fmul fast float %5750, %5741
  %5755 = fadd fast float %5751, %5733
  %5756 = fadd fast float %5752, %5735
  %5757 = fadd fast float %5753, %5737
  %5758 = fadd fast float %5754, %5739
  %5759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5760 = extractvalue %dx.types.ResRet.i32 %5759, 0
  %5761 = and i32 %5760, 536870911
  %5762 = uitofp i32 %5761 to float
  %5763 = fmul fast float %5762, %5609
  %5764 = fmul fast float %5762, %5613
  %5765 = fptoui float %5763 to i32
  %5766 = fptoui float %5764 to i32
  %5767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5768 = extractvalue %dx.types.ResRet.i32 %5767, 0
  %5769 = and i32 %5768, 31
  %5770 = lshr i32 %5765, %5769
  %5771 = lshr i32 %5766, %5769
  %5772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5773 = extractvalue %dx.types.ResRet.i32 %5772, 0
  %5774 = and i32 %5773, 31
  %5775 = shl i32 1, %5774
  %5776 = call i32 @dx.op.binary.i32(i32 40, i32 %5775, i32 4)  ; UMin(a,b)
  %5777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5778 = extractvalue %dx.types.ResRet.i32 %5777, 0
  %5779 = extractvalue %dx.types.ResRet.i32 %5777, 1
  %5780 = icmp eq i32 %5776, 0
  br i1 %5780, label %5822, label %5781

; <label>:5781                                    ; preds = %5725
  br label %5782

; <label>:5782                                    ; preds = %5810, %5781
  %5783 = phi i32 [ %5813, %5810 ], [ 0, %5781 ]
  %5784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5785 = extractvalue %dx.types.ResRet.i32 %5784, 0
  %5786 = lshr i32 %5785, 16
  %5787 = and i32 %5786, 31
  %5788 = shl i32 %5771, %5787
  %5789 = add i32 %5788, %5770
  %5790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5791 = extractvalue %dx.types.ResRet.i32 %5790, 0
  %5792 = and i32 %5791, 31
  %5793 = shl i32 %5789, %5792
  %5794 = add i32 %5793, %5783
  %5795 = shl i32 %5794, 2
  %5796 = add i32 %5795, 32
  %5797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5796, i32 undef)  ; BufferLoad(srv,index,wot)
  %5798 = extractvalue %dx.types.ResRet.i32 %5797, 0
  %5799 = icmp slt i32 %5798, 0
  %5800 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %5783
  %5801 = getelementptr [12 x float], [12 x float]* %110, i32 0, i32 %5783
  %5802 = bitcast float* %5800 to i32*
  %5803 = bitcast float* %5801 to i32*
  br i1 %5799, label %5804, label %5810

; <label>:5804                                    ; preds = %5782
  %5805 = and i32 %5798, 1073741823
  %5806 = add nuw nsw i32 %5805, 20
  %5807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5806, i32 undef)  ; BufferLoad(srv,index,wot)
  %5808 = extractvalue %dx.types.ResRet.i32 %5807, 0
  %5809 = extractvalue %dx.types.ResRet.i32 %5807, 1
  br label %5810

; <label>:5810                                    ; preds = %5804, %5782
  %5811 = phi i32 [ %5808, %5804 ], [ %5778, %5782 ]
  %5812 = phi i32 [ %5809, %5804 ], [ %5779, %5782 ]
  store i32 %5811, i32* %5802, align 4
  store i32 %5812, i32* %5803, align 4
  %5813 = add nuw i32 %5783, 1
  %5814 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5815 = extractvalue %dx.types.CBufRet.i32 %5814, 2
  %5816 = icmp eq i32 %5815, 0
  %5817 = icmp ugt i32 %5798, -1073741825
  %5818 = and i1 %5817, %5816
  %5819 = icmp ult i32 %5813, %5776
  %5820 = and i1 %5818, %5819
  br i1 %5820, label %5782, label %5821

; <label>:5821                                    ; preds = %5810
  br label %5822

; <label>:5822                                    ; preds = %5821, %5725
  %5823 = phi i32 [ 0, %5725 ], [ %5813, %5821 ]
  %5824 = extractvalue %dx.types.CBufRet.f32 %5587, 2
  %5825 = fptoui float %5824 to i32
  %5826 = icmp eq i32 %5825, 0
  br i1 %5826, label %5878, label %5827

; <label>:5827                                    ; preds = %5822
  br label %5828

; <label>:5828                                    ; preds = %5873, %5827
  %5829 = phi i32 [ %5874, %5873 ], [ %5823, %5827 ]
  %5830 = phi i32 [ %5875, %5873 ], [ 0, %5827 ]
  %5831 = lshr i32 %5830, 2
  %5832 = and i32 %5830, 3
  %5833 = add nuw nsw i32 %5831, 83
  %5834 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 %5833)  ; CBufferLoadLegacy(handle,regIndex)
  %5835 = extractvalue %dx.types.CBufRet.i32 %5834, 0
  %5836 = extractvalue %dx.types.CBufRet.i32 %5834, 1
  %5837 = extractvalue %dx.types.CBufRet.i32 %5834, 2
  %5838 = extractvalue %dx.types.CBufRet.i32 %5834, 3
  %5839 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i32 0, i32 0
  store i32 %5835, i32* %5839, align 4
  %5840 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i32 0, i32 1
  store i32 %5836, i32* %5840, align 4
  %5841 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i32 0, i32 2
  store i32 %5837, i32* %5841, align 4
  %5842 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i32 0, i32 3
  store i32 %5838, i32* %5842, align 4
  %5843 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i32 0, i32 %5832
  %5844 = load i32, i32* %5843, align 4, !tbaa !113, !noalias !117
  %5845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5846 = extractvalue %dx.types.ResRet.i32 %5845, 0
  %5847 = lshr i32 %5846, 16
  %5848 = and i32 %5847, 31
  %5849 = shl i32 %5771, %5848
  %5850 = add i32 %5849, %5770
  %5851 = shl i32 %5850, 2
  %5852 = add i32 %5851, %5844
  %5853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5852, i32 undef)  ; BufferLoad(srv,index,wot)
  %5854 = extractvalue %dx.types.ResRet.i32 %5853, 0
  %5855 = icmp eq i32 %5854, 0
  br i1 %5855, label %5873, label %5856

; <label>:5856                                    ; preds = %5828
  %5857 = icmp slt i32 %5854, 0
  %5858 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %5829
  %5859 = getelementptr [12 x float], [12 x float]* %110, i32 0, i32 %5829
  %5860 = bitcast float* %5858 to i32*
  %5861 = bitcast float* %5859 to i32*
  br i1 %5857, label %5862, label %5869

; <label>:5862                                    ; preds = %5856
  %5863 = and i32 %5854, 1073741823
  %5864 = add i32 %5844, 20
  %5865 = add i32 %5864, %5863
  %5866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5865, i32 undef)  ; BufferLoad(srv,index,wot)
  %5867 = extractvalue %dx.types.ResRet.i32 %5866, 0
  %5868 = extractvalue %dx.types.ResRet.i32 %5866, 1
  br label %5869

; <label>:5869                                    ; preds = %5862, %5856
  %5870 = phi i32 [ %5867, %5862 ], [ %5778, %5856 ]
  %5871 = phi i32 [ %5868, %5862 ], [ %5779, %5856 ]
  store i32 %5870, i32* %5860, align 4
  store i32 %5871, i32* %5861, align 4
  %5872 = add i32 %5829, 1
  br label %5873

; <label>:5873                                    ; preds = %5869, %5828
  %5874 = phi i32 [ %5829, %5828 ], [ %5872, %5869 ]
  %5875 = add nuw i32 %5830, 1
  %5876 = icmp eq i32 %5875, %5825
  br i1 %5876, label %5877, label %5828

; <label>:5877                                    ; preds = %5873
  br label %5878

; <label>:5878                                    ; preds = %5877, %5822
  %5879 = phi i32 [ %5823, %5822 ], [ %5874, %5877 ]
  %5880 = icmp eq i32 %5879, 1
  %5881 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 0
  %5882 = getelementptr [12 x float], [12 x float]* %110, i32 0, i32 0
  br i1 %5880, label %5883, label %5886

; <label>:5883                                    ; preds = %5878
  %5884 = load float, float* %5881, align 4
  %5885 = load float, float* %5882, align 4
  br label %5913

; <label>:5886                                    ; preds = %5878
  %5887 = load float, float* %5881, align 4
  %5888 = load float, float* %5882, align 4
  %5889 = fdiv fast float 1.000000e+00, %5888
  %5890 = fsub fast float %5887, %5889
  %5891 = icmp ugt i32 %5879, 1
  br i1 %5891, label %5892, label %5908

; <label>:5892                                    ; preds = %5886
  br label %5893

; <label>:5893                                    ; preds = %5893, %5892
  %5894 = phi float [ %5903, %5893 ], [ %5890, %5892 ]
  %5895 = phi float [ %5904, %5893 ], [ %5887, %5892 ]
  %5896 = phi i32 [ %5905, %5893 ], [ 1, %5892 ]
  %5897 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %5896
  %5898 = load float, float* %5897, align 4
  %5899 = getelementptr [12 x float], [12 x float]* %110, i32 0, i32 %5896
  %5900 = load float, float* %5899, align 4
  %5901 = fdiv fast float 1.000000e+00, %5900
  %5902 = fsub fast float %5898, %5901
  %5903 = call float @dx.op.binary.f32(i32 36, float %5894, float %5902)  ; FMin(a,b)
  %5904 = call float @dx.op.binary.f32(i32 35, float %5895, float %5898)  ; FMax(a,b)
  %5905 = add nuw i32 %5896, 1
  %5906 = icmp eq i32 %5905, %5879
  br i1 %5906, label %5907, label %5893

; <label>:5907                                    ; preds = %5893
  br label %5908

; <label>:5908                                    ; preds = %5907, %5886
  %5909 = phi float [ %5890, %5886 ], [ %5903, %5907 ]
  %5910 = phi float [ %5887, %5886 ], [ %5904, %5907 ]
  %5911 = fsub fast float %5910, %5909
  %5912 = fdiv fast float 1.000000e+00, %5911
  br label %5913

; <label>:5913                                    ; preds = %5908, %5883
  %5914 = phi float [ %5884, %5883 ], [ %5910, %5908 ]
  %5915 = phi float [ %5885, %5883 ], [ %5912, %5908 ]
  %5916 = fadd fast float %5617, %5914
  %5917 = fmul fast float %5916, %5915
  %5918 = call float @dx.op.unary.f32(i32 7, float %5917)  ; Saturate(value)
  %5919 = fmul fast float %5918, 2.000000e+00
  %5920 = fsub fast float 1.000000e+00, %5919
  %5921 = fmul fast float %5755, %5755
  %5922 = fsub fast float %5756, %5921
  %5923 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5922)  ; FMax(a,b)
  %5924 = fdiv fast float 1.000000e+00, %5923
  %5925 = fmul fast float %5756, %5755
  %5926 = fsub fast float %5757, %5925
  %5927 = fsub fast float %5920, %5755
  %5928 = fmul fast float %5920, %5920
  %5929 = fsub fast float %5928, %5756
  %5930 = fmul fast float %5924, %5926
  %5931 = fmul fast float %5930, %5927
  %5932 = fsub fast float %5929, %5931
  %5933 = fmul fast float %5756, %5756
  %5934 = fsub fast float %5758, %5933
  %5935 = fmul fast float %5926, %5926
  %5936 = fmul fast float %5935, %5924
  %5937 = fsub fast float %5934, %5936
  %5938 = fdiv fast float %5932, %5937
  %5939 = fmul fast float %5938, %5926
  %5940 = fsub fast float %5927, %5939
  %5941 = fmul fast float %5940, %5924
  %5942 = fmul fast float %5941, %5755
  %5943 = fsub fast float 1.000000e+00, %5942
  %5944 = fmul fast float %5938, %5756
  %5945 = fsub fast float %5943, %5944
  %5946 = fmul fast float %5941, %5941
  %5947 = fmul fast float %5938, 4.000000e+00
  %5948 = fmul fast float %5947, %5945
  %5949 = fsub fast float %5946, %5948
  %5950 = call float @dx.op.unary.f32(i32 24, float %5949)  ; Sqrt(value)
  %5951 = fcmp fast oge float %5941, 0.000000e+00
  %5952 = fsub fast float -0.000000e+00, %5950
  %5953 = select i1 %5951, float %5952, float %5950
  %5954 = fsub fast float %5953, %5941
  %5955 = fdiv fast float %5954, %5938
  %5956 = fdiv fast float %5945, %5954
  %5957 = fmul fast float %5955, 5.000000e-01
  %5958 = fmul fast float %5956, 2.000000e+00
  %5959 = select i1 %5951, float %5957, float %5958
  %5960 = select i1 %5951, float %5958, float %5957
  %5961 = call float @dx.op.binary.f32(i32 35, float %5959, float %5960)  ; FMax(a,b)
  %5962 = call float @dx.op.binary.f32(i32 36, float %5959, float %5960)  ; FMin(a,b)
  %5963 = fcmp fast ogt float %5920, %5961
  %5964 = fsub fast float %5920, %5962
  %5965 = fsub fast float %5920, %5961
  %5966 = fsub fast float %5961, %5962
  %5967 = select i1 %5963, float %5965, float %5966
  %5968 = fmul float %5964, %5967
  %5969 = select i1 %5963, float %5962, float %5920
  %5970 = fcmp fast ogt float %5920, %5962
  %5971 = fmul fast float %5969, %5961
  %5972 = fadd fast float %5969, %5961
  %5973 = fmul fast float %5972, %5755
  %5974 = fadd fast float %5971, %5756
  %5975 = fsub fast float %5974, %5973
  %5976 = fdiv fast float %5975, %5968
  %5977 = select i1 %5970, float %5976, float 0.000000e+00
  %5978 = fsub fast float 1.000000e+00, %5977
  %5979 = select i1 %5963, float %5978, float %5977
  %5980 = call float @dx.op.unary.f32(i32 7, float %5979)  ; Saturate(value)
  %5981 = extractvalue %dx.types.CBufRet.f32 %5740, 3
  %5982 = fmul fast float %5981, %5980
  %5983 = fsub fast float 1.000000e+00, %5982
  br label %5984

; <label>:5984                                    ; preds = %5913, %5625, %5590, %5586, %5550
  %5985 = phi float [ 1.000000e+00, %5550 ], [ %5983, %5913 ], [ 1.000000e+00, %5590 ], [ 1.000000e+00, %5625 ], [ 1.000000e+00, %5586 ]
  %5986 = fcmp fast ogt float %5582, 0.000000e+00
  br i1 %5986, label %5987, label %6151, !dx.controlflow.hints !126

; <label>:5987                                    ; preds = %5984
  %5988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5989 = extractvalue %dx.types.CBufRet.f32 %5988, 2
  %5990 = fadd fast float %5989, %5463
  %5991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5992 = extractvalue %dx.types.CBufRet.f32 %5991, 2
  %5993 = extractvalue %dx.types.CBufRet.f32 %5991, 3
  %5994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5995 = extractvalue %dx.types.CBufRet.f32 %5994, 2
  %5996 = call float @dx.op.binary.f32(i32 35, float %5990, float 0.000000e+00)  ; FMax(a,b)
  %5997 = fadd fast float %5996, 0x3F10000000000000
  %5998 = fcmp fast oeq float %5995, 0.000000e+00
  br i1 %5998, label %5999, label %6066

; <label>:5999                                    ; preds = %5987
  %6000 = extractvalue %dx.types.CBufRet.f32 %5991, 1
  %6001 = extractvalue %dx.types.CBufRet.f32 %5991, 0
  %6002 = fmul fast float %6001, %5481
  %6003 = fmul fast float %6000, %5482
  %6004 = fadd fast float %6002, 5.000000e-01
  %6005 = call float @dx.op.unary.f32(i32 27, float %6004)  ; Round_ni(value)
  %6006 = fadd fast float %6003, 5.000000e-01
  %6007 = call float @dx.op.unary.f32(i32 27, float %6006)  ; Round_ni(value)
  %6008 = fsub fast float %6004, %6005
  %6009 = fsub fast float %6006, %6007
  %6010 = fadd fast float %6005, -5.000000e-01
  %6011 = fadd fast float %6007, -5.000000e-01
  %6012 = fmul fast float %6008, 2.000000e+00
  %6013 = fsub fast float 3.000000e+00, %6012
  %6014 = fadd fast float %6012, 1.000000e+00
  %6015 = fsub fast float 2.000000e+00, %6008
  %6016 = bitcast float %6013 to i32
  %6017 = sub nsw i32 2129859010, %6016
  %6018 = bitcast i32 %6017 to float
  %6019 = fmul fast float %6018, %6015
  %6020 = fadd fast float %6019, -1.000000e+00
  %6021 = bitcast float %6014 to i32
  %6022 = sub nsw i32 2129859010, %6021
  %6023 = bitcast i32 %6022 to float
  %6024 = fmul fast float %6023, %6008
  %6025 = fadd fast float %6024, 1.000000e+00
  %6026 = fmul fast float %6009, 2.000000e+00
  %6027 = fsub fast float 3.000000e+00, %6026
  %6028 = fadd fast float %6026, 1.000000e+00
  %6029 = fsub fast float 2.000000e+00, %6009
  %6030 = bitcast float %6027 to i32
  %6031 = sub nsw i32 2129859010, %6030
  %6032 = bitcast i32 %6031 to float
  %6033 = fmul fast float %6032, %6029
  %6034 = fadd fast float %6033, -1.000000e+00
  %6035 = bitcast float %6028 to i32
  %6036 = sub nsw i32 2129859010, %6035
  %6037 = bitcast i32 %6036 to float
  %6038 = fmul fast float %6037, %6009
  %6039 = fadd fast float %6038, 1.000000e+00
  %6040 = fadd fast float %6020, %6010
  %6041 = fmul fast float %6040, %5992
  %6042 = fadd fast float %6034, %6011
  %6043 = fmul fast float %6042, %5993
  %6044 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %59, float %6041, float %6043, float undef, float undef, i32 0, i32 0, i32 undef, float %5997)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6045 = extractvalue %dx.types.ResRet.f32 %6044, 0
  %6046 = fmul fast float %6045, %6013
  %6047 = fadd fast float %6025, %6010
  %6048 = fmul fast float %6047, %5992
  %6049 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %59, float %6048, float %6043, float undef, float undef, i32 0, i32 0, i32 undef, float %5997)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6050 = extractvalue %dx.types.ResRet.f32 %6049, 0
  %6051 = fmul fast float %6050, %6014
  %6052 = fadd fast float %6039, %6011
  %6053 = fmul fast float %6052, %5993
  %6054 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %59, float %6041, float %6053, float undef, float undef, i32 0, i32 0, i32 undef, float %5997)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6055 = extractvalue %dx.types.ResRet.f32 %6054, 0
  %6056 = fmul fast float %6055, %6013
  %6057 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %59, float %6048, float %6053, float undef, float undef, i32 0, i32 0, i32 undef, float %5997)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6058 = extractvalue %dx.types.ResRet.f32 %6057, 0
  %6059 = fmul fast float %6058, %6014
  %6060 = fadd fast float %6059, %6056
  %6061 = fmul fast float %6060, %6028
  %6062 = fadd fast float %6051, %6046
  %6063 = fmul fast float %6062, %6027
  %6064 = fadd fast float %6063, %6061
  %6065 = fmul fast float %6064, 6.250000e-02
  br label %6151

; <label>:6066                                    ; preds = %5987
  %6067 = fmul fast float %289, 0x401921FB60000000
  %6068 = call float @dx.op.unary.f32(i32 13, float %6067)  ; Sin(value)
  %6069 = call float @dx.op.unary.f32(i32 12, float %6067)  ; Cos(value)
  %6070 = fsub fast float -0.000000e+00, %6068
  br label %6071

; <label>:6071                                    ; preds = %6120, %6066
  %6072 = phi float [ 0.000000e+00, %6066 ], [ %6115, %6120 ]
  %6073 = phi float [ 0.000000e+00, %6066 ], [ %6117, %6120 ]
  %6074 = phi i32 [ 0, %6066 ], [ %6121, %6120 ]
  %6075 = mul i32 %6074, 2
  %6076 = add i32 0, %6075
  %6077 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6076
  %6078 = load float, float* %6077, align 4
  %6079 = mul i32 %6074, 2
  %6080 = add i32 1, %6079
  %6081 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6080
  %6082 = load float, float* %6081, align 4
  %6083 = fmul fast float %6078, %6069
  %6084 = call float @dx.op.tertiary.f32(i32 46, float %6082, float %6070, float %6083)  ; FMad(a,b,c)
  %6085 = fmul fast float %6078, %6068
  %6086 = call float @dx.op.tertiary.f32(i32 46, float %6082, float %6069, float %6085)  ; FMad(a,b,c)
  %6087 = fmul fast float %6084, %5995
  %6088 = fmul fast float %6086, %5995
  %6089 = fadd fast float %6087, %5481
  %6090 = fadd fast float %6088, %5482
  %6091 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %58, float %6089, float %6090, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6092 = extractvalue %dx.types.ResRet.f32 %6091, 0
  %6093 = extractvalue %dx.types.ResRet.f32 %6091, 1
  %6094 = extractvalue %dx.types.ResRet.f32 %6091, 2
  %6095 = extractvalue %dx.types.ResRet.f32 %6091, 3
  %6096 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 0
  store float %6092, float* %6096, align 4
  %6097 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 1
  store float %6093, float* %6097, align 4
  %6098 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 2
  store float %6094, float* %6098, align 4
  %6099 = getelementptr inbounds [4 x float], [4 x float]* %114, i32 0, i32 3
  store float %6095, float* %6099, align 4
  %6100 = fsub fast float %6092, %5997
  %6101 = fcmp fast olt float %6100, 0.000000e+00
  %6102 = select i1 %6101, float 0.000000e+00, float 1.000000e+00
  %6103 = fadd fast float %6102, %6072
  %6104 = fmul fast float %6102, %6100
  %6105 = fadd fast float %6104, %6073
  br label %6106

; <label>:6106                                    ; preds = %6106, %6071
  %6107 = phi i32 [ 1, %6071 ], [ %6118, %6106 ]
  %6108 = phi float [ %6105, %6071 ], [ %6117, %6106 ]
  %6109 = phi float [ %6103, %6071 ], [ %6115, %6106 ]
  %6110 = getelementptr [4 x float], [4 x float]* %114, i32 0, i32 %6107
  %6111 = load float, float* %6110, align 4, !tbaa !127, !noalias !117
  %6112 = fsub fast float %6111, %5997
  %6113 = fcmp fast olt float %6112, 0.000000e+00
  %6114 = select i1 %6113, float 0.000000e+00, float 1.000000e+00
  %6115 = fadd fast float %6114, %6109
  %6116 = fmul fast float %6114, %6112
  %6117 = fadd fast float %6116, %6108
  %6118 = add nuw nsw i32 %6107, 1
  %6119 = icmp eq i32 %6118, 4
  br i1 %6119, label %6120, label %6106, !llvm.loop !129

; <label>:6120                                    ; preds = %6106
  %6121 = add nuw nsw i32 %6074, 1
  %6122 = icmp eq i32 %6121, 8
  br i1 %6122, label %6123, label %6071, !llvm.loop !130

; <label>:6123                                    ; preds = %6120
  %6124 = fdiv fast float 1.000000e+00, %6115
  %6125 = fmul fast float %6124, %6117
  %6126 = fdiv fast float 1.000000e+00, %5997
  %6127 = fmul fast float %6125, %6126
  %6128 = call float @dx.op.unary.f32(i32 7, float %6127)  ; Saturate(value)
  %6129 = call float @dx.op.binary.f32(i32 35, float %6128, float 0.000000e+00)  ; FMax(a,b)
  %6130 = fmul fast float %6115, 3.125000e-02
  %6131 = call float @dx.op.unary.f32(i32 7, float %6130)  ; Saturate(value)
  %6132 = fmul fast float %6131, 2.000000e+00
  %6133 = fadd fast float %6132, -1.000000e+00
  %6134 = fcmp fast ogt float %6133, 0.000000e+00
  %6135 = fcmp fast olt float %6133, 0.000000e+00
  %6136 = zext i1 %6134 to i32
  %6137 = zext i1 %6135 to i32
  %6138 = sub nsw i32 %6136, %6137
  %6139 = sitofp i32 %6138 to float
  %6140 = fmul fast float %6139, %6133
  %6141 = fsub fast float 1.000000e+00, %6140
  %6142 = fmul fast float %6141, %6141
  %6143 = fmul fast float %6142, %6141
  %6144 = fsub fast float %6141, %6143
  %6145 = fmul fast float %6144, %6129
  %6146 = fsub fast float 1.000000e+00, %6143
  %6147 = fsub fast float %6146, %6145
  %6148 = fmul fast float %6139, 5.000000e-01
  %6149 = fmul fast float %6148, %6147
  %6150 = fsub fast float 5.000000e-01, %6149
  br label %6151

; <label>:6151                                    ; preds = %6123, %5999, %5984
  %6152 = phi float [ 1.000000e+00, %5984 ], [ %6065, %5999 ], [ %6150, %6123 ]
  %6153 = fcmp fast ogt float %5580, 0.000000e+00
  br i1 %6153, label %6154, label %6318, !dx.controlflow.hints !131

; <label>:6154                                    ; preds = %6151
  %6155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6156 = extractvalue %dx.types.CBufRet.f32 %6155, 1
  %6157 = fadd fast float %6156, %5463
  %6158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6159 = extractvalue %dx.types.CBufRet.f32 %6158, 2
  %6160 = extractvalue %dx.types.CBufRet.f32 %6158, 3
  %6161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6162 = extractvalue %dx.types.CBufRet.f32 %6161, 1
  %6163 = call float @dx.op.binary.f32(i32 35, float %6157, float 0.000000e+00)  ; FMax(a,b)
  %6164 = fadd fast float %6163, 0x3F10000000000000
  %6165 = fcmp fast oeq float %6162, 0.000000e+00
  br i1 %6165, label %6166, label %6233

; <label>:6166                                    ; preds = %6154
  %6167 = extractvalue %dx.types.CBufRet.f32 %6158, 1
  %6168 = extractvalue %dx.types.CBufRet.f32 %6158, 0
  %6169 = fmul fast float %6168, %5473
  %6170 = fmul fast float %6167, %5474
  %6171 = fadd fast float %6169, 5.000000e-01
  %6172 = call float @dx.op.unary.f32(i32 27, float %6171)  ; Round_ni(value)
  %6173 = fadd fast float %6170, 5.000000e-01
  %6174 = call float @dx.op.unary.f32(i32 27, float %6173)  ; Round_ni(value)
  %6175 = fsub fast float %6171, %6172
  %6176 = fsub fast float %6173, %6174
  %6177 = fadd fast float %6172, -5.000000e-01
  %6178 = fadd fast float %6174, -5.000000e-01
  %6179 = fmul fast float %6175, 2.000000e+00
  %6180 = fsub fast float 3.000000e+00, %6179
  %6181 = fadd fast float %6179, 1.000000e+00
  %6182 = fsub fast float 2.000000e+00, %6175
  %6183 = bitcast float %6180 to i32
  %6184 = sub nsw i32 2129859010, %6183
  %6185 = bitcast i32 %6184 to float
  %6186 = fmul fast float %6185, %6182
  %6187 = fadd fast float %6186, -1.000000e+00
  %6188 = bitcast float %6181 to i32
  %6189 = sub nsw i32 2129859010, %6188
  %6190 = bitcast i32 %6189 to float
  %6191 = fmul fast float %6190, %6175
  %6192 = fadd fast float %6191, 1.000000e+00
  %6193 = fmul fast float %6176, 2.000000e+00
  %6194 = fsub fast float 3.000000e+00, %6193
  %6195 = fadd fast float %6193, 1.000000e+00
  %6196 = fsub fast float 2.000000e+00, %6176
  %6197 = bitcast float %6194 to i32
  %6198 = sub nsw i32 2129859010, %6197
  %6199 = bitcast i32 %6198 to float
  %6200 = fmul fast float %6199, %6196
  %6201 = fadd fast float %6200, -1.000000e+00
  %6202 = bitcast float %6195 to i32
  %6203 = sub nsw i32 2129859010, %6202
  %6204 = bitcast i32 %6203 to float
  %6205 = fmul fast float %6204, %6176
  %6206 = fadd fast float %6205, 1.000000e+00
  %6207 = fadd fast float %6187, %6177
  %6208 = fmul fast float %6207, %6159
  %6209 = fadd fast float %6201, %6178
  %6210 = fmul fast float %6209, %6160
  %6211 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %59, float %6208, float %6210, float undef, float undef, i32 0, i32 0, i32 undef, float %6164)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6212 = extractvalue %dx.types.ResRet.f32 %6211, 0
  %6213 = fmul fast float %6212, %6180
  %6214 = fadd fast float %6192, %6177
  %6215 = fmul fast float %6214, %6159
  %6216 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %59, float %6215, float %6210, float undef, float undef, i32 0, i32 0, i32 undef, float %6164)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6217 = extractvalue %dx.types.ResRet.f32 %6216, 0
  %6218 = fmul fast float %6217, %6181
  %6219 = fadd fast float %6206, %6178
  %6220 = fmul fast float %6219, %6160
  %6221 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %59, float %6208, float %6220, float undef, float undef, i32 0, i32 0, i32 undef, float %6164)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6222 = extractvalue %dx.types.ResRet.f32 %6221, 0
  %6223 = fmul fast float %6222, %6180
  %6224 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %59, float %6215, float %6220, float undef, float undef, i32 0, i32 0, i32 undef, float %6164)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6225 = extractvalue %dx.types.ResRet.f32 %6224, 0
  %6226 = fmul fast float %6225, %6181
  %6227 = fadd fast float %6226, %6223
  %6228 = fmul fast float %6227, %6195
  %6229 = fadd fast float %6218, %6213
  %6230 = fmul fast float %6229, %6194
  %6231 = fadd fast float %6230, %6228
  %6232 = fmul fast float %6231, 6.250000e-02
  br label %6318

; <label>:6233                                    ; preds = %6154
  %6234 = fmul fast float %289, 0x401921FB60000000
  %6235 = call float @dx.op.unary.f32(i32 13, float %6234)  ; Sin(value)
  %6236 = call float @dx.op.unary.f32(i32 12, float %6234)  ; Cos(value)
  %6237 = fsub fast float -0.000000e+00, %6235
  br label %6238

; <label>:6238                                    ; preds = %6287, %6233
  %6239 = phi float [ 0.000000e+00, %6233 ], [ %6282, %6287 ]
  %6240 = phi float [ 0.000000e+00, %6233 ], [ %6284, %6287 ]
  %6241 = phi i32 [ 0, %6233 ], [ %6288, %6287 ]
  %6242 = mul i32 %6241, 2
  %6243 = add i32 0, %6242
  %6244 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6243
  %6245 = load float, float* %6244, align 4
  %6246 = mul i32 %6241, 2
  %6247 = add i32 1, %6246
  %6248 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6247
  %6249 = load float, float* %6248, align 4
  %6250 = fmul fast float %6245, %6236
  %6251 = call float @dx.op.tertiary.f32(i32 46, float %6249, float %6237, float %6250)  ; FMad(a,b,c)
  %6252 = fmul fast float %6245, %6235
  %6253 = call float @dx.op.tertiary.f32(i32 46, float %6249, float %6236, float %6252)  ; FMad(a,b,c)
  %6254 = fmul fast float %6251, %6162
  %6255 = fmul fast float %6253, %6162
  %6256 = fadd fast float %6254, %5473
  %6257 = fadd fast float %6255, %5474
  %6258 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %58, float %6256, float %6257, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6259 = extractvalue %dx.types.ResRet.f32 %6258, 0
  %6260 = extractvalue %dx.types.ResRet.f32 %6258, 1
  %6261 = extractvalue %dx.types.ResRet.f32 %6258, 2
  %6262 = extractvalue %dx.types.ResRet.f32 %6258, 3
  %6263 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 0
  store float %6259, float* %6263, align 4
  %6264 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 1
  store float %6260, float* %6264, align 4
  %6265 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 2
  store float %6261, float* %6265, align 4
  %6266 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 3
  store float %6262, float* %6266, align 4
  %6267 = fsub fast float %6259, %6164
  %6268 = fcmp fast olt float %6267, 0.000000e+00
  %6269 = select i1 %6268, float 0.000000e+00, float 1.000000e+00
  %6270 = fadd fast float %6269, %6239
  %6271 = fmul fast float %6269, %6267
  %6272 = fadd fast float %6271, %6240
  br label %6273

; <label>:6273                                    ; preds = %6273, %6238
  %6274 = phi i32 [ 1, %6238 ], [ %6285, %6273 ]
  %6275 = phi float [ %6272, %6238 ], [ %6284, %6273 ]
  %6276 = phi float [ %6270, %6238 ], [ %6282, %6273 ]
  %6277 = getelementptr [4 x float], [4 x float]* %113, i32 0, i32 %6274
  %6278 = load float, float* %6277, align 4, !tbaa !127, !noalias !117
  %6279 = fsub fast float %6278, %6164
  %6280 = fcmp fast olt float %6279, 0.000000e+00
  %6281 = select i1 %6280, float 0.000000e+00, float 1.000000e+00
  %6282 = fadd fast float %6281, %6276
  %6283 = fmul fast float %6281, %6279
  %6284 = fadd fast float %6283, %6275
  %6285 = add nuw nsw i32 %6274, 1
  %6286 = icmp eq i32 %6285, 4
  br i1 %6286, label %6287, label %6273, !llvm.loop !129

; <label>:6287                                    ; preds = %6273
  %6288 = add nuw nsw i32 %6241, 1
  %6289 = icmp eq i32 %6288, 8
  br i1 %6289, label %6290, label %6238, !llvm.loop !130

; <label>:6290                                    ; preds = %6287
  %6291 = fdiv fast float 1.000000e+00, %6282
  %6292 = fmul fast float %6291, %6284
  %6293 = fdiv fast float 1.000000e+00, %6164
  %6294 = fmul fast float %6292, %6293
  %6295 = call float @dx.op.unary.f32(i32 7, float %6294)  ; Saturate(value)
  %6296 = call float @dx.op.binary.f32(i32 35, float %6295, float 0.000000e+00)  ; FMax(a,b)
  %6297 = fmul fast float %6282, 3.125000e-02
  %6298 = call float @dx.op.unary.f32(i32 7, float %6297)  ; Saturate(value)
  %6299 = fmul fast float %6298, 2.000000e+00
  %6300 = fadd fast float %6299, -1.000000e+00
  %6301 = fcmp fast ogt float %6300, 0.000000e+00
  %6302 = fcmp fast olt float %6300, 0.000000e+00
  %6303 = zext i1 %6301 to i32
  %6304 = zext i1 %6302 to i32
  %6305 = sub nsw i32 %6303, %6304
  %6306 = sitofp i32 %6305 to float
  %6307 = fmul fast float %6306, %6300
  %6308 = fsub fast float 1.000000e+00, %6307
  %6309 = fmul fast float %6308, %6308
  %6310 = fmul fast float %6309, %6308
  %6311 = fsub fast float %6308, %6310
  %6312 = fmul fast float %6311, %6296
  %6313 = fsub fast float 1.000000e+00, %6310
  %6314 = fsub fast float %6313, %6312
  %6315 = fmul fast float %6306, 5.000000e-01
  %6316 = fmul fast float %6315, %6314
  %6317 = fsub fast float 5.000000e-01, %6316
  br label %6318

; <label>:6318                                    ; preds = %6290, %6166, %6151
  %6319 = phi float [ 1.000000e+00, %6151 ], [ %6232, %6166 ], [ %6317, %6290 ]
  %6320 = fcmp fast ogt float %5579, 0.000000e+00
  br i1 %6320, label %6321, label %6639, !dx.controlflow.hints !132

; <label>:6321                                    ; preds = %6318
  %6322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6323 = extractvalue %dx.types.CBufRet.f32 %6322, 0
  %6324 = fadd fast float %6323, %5463
  %6325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6325, 2
  %6327 = extractvalue %dx.types.CBufRet.f32 %6325, 3
  %6328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6329 = extractvalue %dx.types.CBufRet.f32 %6328, 0
  %6330 = call float @dx.op.binary.f32(i32 35, float %6324, float 0.000000e+00)  ; FMax(a,b)
  %6331 = fadd fast float %6330, 0x3F10000000000000
  %6332 = fcmp fast oeq float %6329, 0.000000e+00
  br i1 %5466, label %6333, label %6486, !dx.controlflow.hints !133

; <label>:6333                                    ; preds = %6321
  br i1 %6332, label %6334, label %6401

; <label>:6334                                    ; preds = %6333
  %6335 = extractvalue %dx.types.CBufRet.f32 %6325, 1
  %6336 = extractvalue %dx.types.CBufRet.f32 %6325, 0
  %6337 = fmul fast float %6336, %5455
  %6338 = fmul fast float %6335, %5459
  %6339 = fadd fast float %6337, 5.000000e-01
  %6340 = call float @dx.op.unary.f32(i32 27, float %6339)  ; Round_ni(value)
  %6341 = fadd fast float %6338, 5.000000e-01
  %6342 = call float @dx.op.unary.f32(i32 27, float %6341)  ; Round_ni(value)
  %6343 = fsub fast float %6339, %6340
  %6344 = fsub fast float %6341, %6342
  %6345 = fadd fast float %6340, -5.000000e-01
  %6346 = fadd fast float %6342, -5.000000e-01
  %6347 = fmul fast float %6343, 2.000000e+00
  %6348 = fsub fast float 3.000000e+00, %6347
  %6349 = fadd fast float %6347, 1.000000e+00
  %6350 = fsub fast float 2.000000e+00, %6343
  %6351 = bitcast float %6348 to i32
  %6352 = sub nsw i32 2129859010, %6351
  %6353 = bitcast i32 %6352 to float
  %6354 = fmul fast float %6353, %6350
  %6355 = fadd fast float %6354, -1.000000e+00
  %6356 = bitcast float %6349 to i32
  %6357 = sub nsw i32 2129859010, %6356
  %6358 = bitcast i32 %6357 to float
  %6359 = fmul fast float %6358, %6343
  %6360 = fadd fast float %6359, 1.000000e+00
  %6361 = fmul fast float %6344, 2.000000e+00
  %6362 = fsub fast float 3.000000e+00, %6361
  %6363 = fadd fast float %6361, 1.000000e+00
  %6364 = fsub fast float 2.000000e+00, %6344
  %6365 = bitcast float %6362 to i32
  %6366 = sub nsw i32 2129859010, %6365
  %6367 = bitcast i32 %6366 to float
  %6368 = fmul fast float %6367, %6364
  %6369 = fadd fast float %6368, -1.000000e+00
  %6370 = bitcast float %6363 to i32
  %6371 = sub nsw i32 2129859010, %6370
  %6372 = bitcast i32 %6371 to float
  %6373 = fmul fast float %6372, %6344
  %6374 = fadd fast float %6373, 1.000000e+00
  %6375 = fadd fast float %6355, %6345
  %6376 = fmul fast float %6375, %6326
  %6377 = fadd fast float %6369, %6346
  %6378 = fmul fast float %6377, %6327
  %6379 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %59, float %6376, float %6378, float undef, float undef, i32 0, i32 0, i32 undef, float %6331)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6380 = extractvalue %dx.types.ResRet.f32 %6379, 0
  %6381 = fmul fast float %6380, %6348
  %6382 = fadd fast float %6360, %6345
  %6383 = fmul fast float %6382, %6326
  %6384 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %59, float %6383, float %6378, float undef, float undef, i32 0, i32 0, i32 undef, float %6331)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6385 = extractvalue %dx.types.ResRet.f32 %6384, 0
  %6386 = fmul fast float %6385, %6349
  %6387 = fadd fast float %6374, %6346
  %6388 = fmul fast float %6387, %6327
  %6389 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %59, float %6376, float %6388, float undef, float undef, i32 0, i32 0, i32 undef, float %6331)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6390 = extractvalue %dx.types.ResRet.f32 %6389, 0
  %6391 = fmul fast float %6390, %6348
  %6392 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %59, float %6383, float %6388, float undef, float undef, i32 0, i32 0, i32 undef, float %6331)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6393 = extractvalue %dx.types.ResRet.f32 %6392, 0
  %6394 = fmul fast float %6393, %6349
  %6395 = fadd fast float %6394, %6391
  %6396 = fmul fast float %6395, %6363
  %6397 = fadd fast float %6386, %6381
  %6398 = fmul fast float %6397, %6362
  %6399 = fadd fast float %6398, %6396
  %6400 = fmul fast float %6399, 6.250000e-02
  br label %6639

; <label>:6401                                    ; preds = %6333
  %6402 = fmul fast float %289, 0x401921FB60000000
  %6403 = call float @dx.op.unary.f32(i32 13, float %6402)  ; Sin(value)
  %6404 = call float @dx.op.unary.f32(i32 12, float %6402)  ; Cos(value)
  %6405 = fsub fast float -0.000000e+00, %6403
  br label %6406

; <label>:6406                                    ; preds = %6455, %6401
  %6407 = phi float [ 0.000000e+00, %6401 ], [ %6450, %6455 ]
  %6408 = phi float [ 0.000000e+00, %6401 ], [ %6452, %6455 ]
  %6409 = phi i32 [ 0, %6401 ], [ %6456, %6455 ]
  %6410 = mul i32 %6409, 2
  %6411 = add i32 0, %6410
  %6412 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6411
  %6413 = load float, float* %6412, align 4
  %6414 = mul i32 %6409, 2
  %6415 = add i32 1, %6414
  %6416 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6415
  %6417 = load float, float* %6416, align 4
  %6418 = fmul fast float %6413, %6404
  %6419 = call float @dx.op.tertiary.f32(i32 46, float %6417, float %6405, float %6418)  ; FMad(a,b,c)
  %6420 = fmul fast float %6413, %6403
  %6421 = call float @dx.op.tertiary.f32(i32 46, float %6417, float %6404, float %6420)  ; FMad(a,b,c)
  %6422 = fmul fast float %6419, %6329
  %6423 = fmul fast float %6421, %6329
  %6424 = fadd fast float %6422, %5455
  %6425 = fadd fast float %6423, %5459
  %6426 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %58, float %6424, float %6425, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6427 = extractvalue %dx.types.ResRet.f32 %6426, 0
  %6428 = extractvalue %dx.types.ResRet.f32 %6426, 1
  %6429 = extractvalue %dx.types.ResRet.f32 %6426, 2
  %6430 = extractvalue %dx.types.ResRet.f32 %6426, 3
  %6431 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 0
  store float %6427, float* %6431, align 4
  %6432 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 1
  store float %6428, float* %6432, align 4
  %6433 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 2
  store float %6429, float* %6433, align 4
  %6434 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 3
  store float %6430, float* %6434, align 4
  %6435 = fsub fast float %6427, %6331
  %6436 = fcmp fast olt float %6435, 0.000000e+00
  %6437 = select i1 %6436, float 0.000000e+00, float 1.000000e+00
  %6438 = fadd fast float %6437, %6407
  %6439 = fmul fast float %6437, %6435
  %6440 = fadd fast float %6439, %6408
  br label %6441

; <label>:6441                                    ; preds = %6441, %6406
  %6442 = phi i32 [ 1, %6406 ], [ %6453, %6441 ]
  %6443 = phi float [ %6440, %6406 ], [ %6452, %6441 ]
  %6444 = phi float [ %6438, %6406 ], [ %6450, %6441 ]
  %6445 = getelementptr [4 x float], [4 x float]* %112, i32 0, i32 %6442
  %6446 = load float, float* %6445, align 4, !tbaa !127, !noalias !117
  %6447 = fsub fast float %6446, %6331
  %6448 = fcmp fast olt float %6447, 0.000000e+00
  %6449 = select i1 %6448, float 0.000000e+00, float 1.000000e+00
  %6450 = fadd fast float %6449, %6444
  %6451 = fmul fast float %6449, %6447
  %6452 = fadd fast float %6451, %6443
  %6453 = add nuw nsw i32 %6442, 1
  %6454 = icmp eq i32 %6453, 4
  br i1 %6454, label %6455, label %6441, !llvm.loop !129

; <label>:6455                                    ; preds = %6441
  %6456 = add nuw nsw i32 %6409, 1
  %6457 = icmp eq i32 %6456, 8
  br i1 %6457, label %6458, label %6406, !llvm.loop !130

; <label>:6458                                    ; preds = %6455
  %6459 = fdiv fast float 1.000000e+00, %6450
  %6460 = fmul fast float %6459, %6452
  %6461 = fdiv fast float 1.000000e+00, %6331
  %6462 = fmul fast float %6460, %6461
  %6463 = call float @dx.op.unary.f32(i32 7, float %6462)  ; Saturate(value)
  %6464 = call float @dx.op.binary.f32(i32 35, float %6463, float 0.000000e+00)  ; FMax(a,b)
  %6465 = fmul fast float %6450, 3.125000e-02
  %6466 = call float @dx.op.unary.f32(i32 7, float %6465)  ; Saturate(value)
  %6467 = fmul fast float %6466, 2.000000e+00
  %6468 = fadd fast float %6467, -1.000000e+00
  %6469 = fcmp fast ogt float %6468, 0.000000e+00
  %6470 = fcmp fast olt float %6468, 0.000000e+00
  %6471 = zext i1 %6469 to i32
  %6472 = zext i1 %6470 to i32
  %6473 = sub nsw i32 %6471, %6472
  %6474 = sitofp i32 %6473 to float
  %6475 = fmul fast float %6474, %6468
  %6476 = fsub fast float 1.000000e+00, %6475
  %6477 = fmul fast float %6476, %6476
  %6478 = fmul fast float %6477, %6476
  %6479 = fsub fast float %6476, %6478
  %6480 = fmul fast float %6479, %6464
  %6481 = fsub fast float 1.000000e+00, %6478
  %6482 = fsub fast float %6481, %6480
  %6483 = fmul fast float %6474, 5.000000e-01
  %6484 = fmul fast float %6483, %6482
  %6485 = fsub fast float 5.000000e-01, %6484
  br label %6639

; <label>:6486                                    ; preds = %6321
  br i1 %6332, label %6487, label %6554

; <label>:6487                                    ; preds = %6486
  %6488 = extractvalue %dx.types.CBufRet.f32 %6325, 1
  %6489 = extractvalue %dx.types.CBufRet.f32 %6325, 0
  %6490 = fmul fast float %6489, %5455
  %6491 = fmul fast float %6488, %5459
  %6492 = fadd fast float %6490, 5.000000e-01
  %6493 = call float @dx.op.unary.f32(i32 27, float %6492)  ; Round_ni(value)
  %6494 = fadd fast float %6491, 5.000000e-01
  %6495 = call float @dx.op.unary.f32(i32 27, float %6494)  ; Round_ni(value)
  %6496 = fsub fast float %6492, %6493
  %6497 = fsub fast float %6494, %6495
  %6498 = fadd fast float %6493, -5.000000e-01
  %6499 = fadd fast float %6495, -5.000000e-01
  %6500 = fmul fast float %6496, 2.000000e+00
  %6501 = fsub fast float 3.000000e+00, %6500
  %6502 = fadd fast float %6500, 1.000000e+00
  %6503 = fsub fast float 2.000000e+00, %6496
  %6504 = bitcast float %6501 to i32
  %6505 = sub nsw i32 2129859010, %6504
  %6506 = bitcast i32 %6505 to float
  %6507 = fmul fast float %6506, %6503
  %6508 = fadd fast float %6507, -1.000000e+00
  %6509 = bitcast float %6502 to i32
  %6510 = sub nsw i32 2129859010, %6509
  %6511 = bitcast i32 %6510 to float
  %6512 = fmul fast float %6511, %6496
  %6513 = fadd fast float %6512, 1.000000e+00
  %6514 = fmul fast float %6497, 2.000000e+00
  %6515 = fsub fast float 3.000000e+00, %6514
  %6516 = fadd fast float %6514, 1.000000e+00
  %6517 = fsub fast float 2.000000e+00, %6497
  %6518 = bitcast float %6515 to i32
  %6519 = sub nsw i32 2129859010, %6518
  %6520 = bitcast i32 %6519 to float
  %6521 = fmul fast float %6520, %6517
  %6522 = fadd fast float %6521, -1.000000e+00
  %6523 = bitcast float %6516 to i32
  %6524 = sub nsw i32 2129859010, %6523
  %6525 = bitcast i32 %6524 to float
  %6526 = fmul fast float %6525, %6497
  %6527 = fadd fast float %6526, 1.000000e+00
  %6528 = fadd fast float %6508, %6498
  %6529 = fmul fast float %6528, %6326
  %6530 = fadd fast float %6522, %6499
  %6531 = fmul fast float %6530, %6327
  %6532 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %59, float %6529, float %6531, float undef, float undef, i32 0, i32 0, i32 undef, float %6331)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6533 = extractvalue %dx.types.ResRet.f32 %6532, 0
  %6534 = fmul fast float %6533, %6501
  %6535 = fadd fast float %6513, %6498
  %6536 = fmul fast float %6535, %6326
  %6537 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %59, float %6536, float %6531, float undef, float undef, i32 0, i32 0, i32 undef, float %6331)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6538 = extractvalue %dx.types.ResRet.f32 %6537, 0
  %6539 = fmul fast float %6538, %6502
  %6540 = fadd fast float %6527, %6499
  %6541 = fmul fast float %6540, %6327
  %6542 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %59, float %6529, float %6541, float undef, float undef, i32 0, i32 0, i32 undef, float %6331)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6543 = extractvalue %dx.types.ResRet.f32 %6542, 0
  %6544 = fmul fast float %6543, %6501
  %6545 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %59, float %6536, float %6541, float undef, float undef, i32 0, i32 0, i32 undef, float %6331)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6546 = extractvalue %dx.types.ResRet.f32 %6545, 0
  %6547 = fmul fast float %6546, %6502
  %6548 = fadd fast float %6547, %6544
  %6549 = fmul fast float %6548, %6516
  %6550 = fadd fast float %6539, %6534
  %6551 = fmul fast float %6550, %6515
  %6552 = fadd fast float %6551, %6549
  %6553 = fmul fast float %6552, 6.250000e-02
  br label %6639

; <label>:6554                                    ; preds = %6486
  %6555 = fmul fast float %289, 0x401921FB60000000
  %6556 = call float @dx.op.unary.f32(i32 13, float %6555)  ; Sin(value)
  %6557 = call float @dx.op.unary.f32(i32 12, float %6555)  ; Cos(value)
  %6558 = fsub fast float -0.000000e+00, %6556
  br label %6559

; <label>:6559                                    ; preds = %6608, %6554
  %6560 = phi float [ 0.000000e+00, %6554 ], [ %6603, %6608 ]
  %6561 = phi float [ 0.000000e+00, %6554 ], [ %6605, %6608 ]
  %6562 = phi i32 [ 0, %6554 ], [ %6609, %6608 ]
  %6563 = mul i32 %6562, 2
  %6564 = add i32 0, %6563
  %6565 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6564
  %6566 = load float, float* %6565, align 4
  %6567 = mul i32 %6562, 2
  %6568 = add i32 1, %6567
  %6569 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6568
  %6570 = load float, float* %6569, align 4
  %6571 = fmul fast float %6566, %6557
  %6572 = call float @dx.op.tertiary.f32(i32 46, float %6570, float %6558, float %6571)  ; FMad(a,b,c)
  %6573 = fmul fast float %6566, %6556
  %6574 = call float @dx.op.tertiary.f32(i32 46, float %6570, float %6557, float %6573)  ; FMad(a,b,c)
  %6575 = fmul fast float %6572, %6329
  %6576 = fmul fast float %6574, %6329
  %6577 = fadd fast float %6575, %5455
  %6578 = fadd fast float %6576, %5459
  %6579 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %58, float %6577, float %6578, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6580 = extractvalue %dx.types.ResRet.f32 %6579, 0
  %6581 = extractvalue %dx.types.ResRet.f32 %6579, 1
  %6582 = extractvalue %dx.types.ResRet.f32 %6579, 2
  %6583 = extractvalue %dx.types.ResRet.f32 %6579, 3
  %6584 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 0
  store float %6580, float* %6584, align 4
  %6585 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 1
  store float %6581, float* %6585, align 4
  %6586 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 2
  store float %6582, float* %6586, align 4
  %6587 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 3
  store float %6583, float* %6587, align 4
  %6588 = fsub fast float %6580, %6331
  %6589 = fcmp fast olt float %6588, 0.000000e+00
  %6590 = select i1 %6589, float 0.000000e+00, float 1.000000e+00
  %6591 = fadd fast float %6590, %6560
  %6592 = fmul fast float %6590, %6588
  %6593 = fadd fast float %6592, %6561
  br label %6594

; <label>:6594                                    ; preds = %6594, %6559
  %6595 = phi i32 [ 1, %6559 ], [ %6606, %6594 ]
  %6596 = phi float [ %6593, %6559 ], [ %6605, %6594 ]
  %6597 = phi float [ %6591, %6559 ], [ %6603, %6594 ]
  %6598 = getelementptr [4 x float], [4 x float]* %111, i32 0, i32 %6595
  %6599 = load float, float* %6598, align 4, !tbaa !127, !noalias !117
  %6600 = fsub fast float %6599, %6331
  %6601 = fcmp fast olt float %6600, 0.000000e+00
  %6602 = select i1 %6601, float 0.000000e+00, float 1.000000e+00
  %6603 = fadd fast float %6602, %6597
  %6604 = fmul fast float %6602, %6600
  %6605 = fadd fast float %6604, %6596
  %6606 = add nuw nsw i32 %6595, 1
  %6607 = icmp eq i32 %6606, 4
  br i1 %6607, label %6608, label %6594, !llvm.loop !129

; <label>:6608                                    ; preds = %6594
  %6609 = add nuw nsw i32 %6562, 1
  %6610 = icmp eq i32 %6609, 8
  br i1 %6610, label %6611, label %6559, !llvm.loop !130

; <label>:6611                                    ; preds = %6608
  %6612 = fdiv fast float 1.000000e+00, %6603
  %6613 = fmul fast float %6612, %6605
  %6614 = fdiv fast float 1.000000e+00, %6331
  %6615 = fmul fast float %6613, %6614
  %6616 = call float @dx.op.unary.f32(i32 7, float %6615)  ; Saturate(value)
  %6617 = call float @dx.op.binary.f32(i32 35, float %6616, float 0.000000e+00)  ; FMax(a,b)
  %6618 = fmul fast float %6603, 3.125000e-02
  %6619 = call float @dx.op.unary.f32(i32 7, float %6618)  ; Saturate(value)
  %6620 = fmul fast float %6619, 2.000000e+00
  %6621 = fadd fast float %6620, -1.000000e+00
  %6622 = fcmp fast ogt float %6621, 0.000000e+00
  %6623 = fcmp fast olt float %6621, 0.000000e+00
  %6624 = zext i1 %6622 to i32
  %6625 = zext i1 %6623 to i32
  %6626 = sub nsw i32 %6624, %6625
  %6627 = sitofp i32 %6626 to float
  %6628 = fmul fast float %6627, %6621
  %6629 = fsub fast float 1.000000e+00, %6628
  %6630 = fmul fast float %6629, %6629
  %6631 = fmul fast float %6630, %6629
  %6632 = fsub fast float %6629, %6631
  %6633 = fmul fast float %6632, %6617
  %6634 = fsub fast float 1.000000e+00, %6631
  %6635 = fsub fast float %6634, %6633
  %6636 = fmul fast float %6627, 5.000000e-01
  %6637 = fmul fast float %6636, %6635
  %6638 = fsub fast float 5.000000e-01, %6637
  br label %6639

; <label>:6639                                    ; preds = %6611, %6487, %6458, %6334, %6318
  %6640 = phi float [ 1.000000e+00, %6318 ], [ %6400, %6334 ], [ %6485, %6458 ], [ %6553, %6487 ], [ %6638, %6611 ]
  %6641 = fsub fast float %6152, %5985
  %6642 = fmul fast float %6641, %5552
  %6643 = fadd fast float %6642, %5985
  %6644 = fsub fast float %6319, %6643
  %6645 = fmul fast float %6644, %5551
  %6646 = fadd fast float %6645, %6643
  %6647 = fsub fast float %6640, %6646
  %6648 = fmul fast float %6647, %5579
  %6649 = fadd fast float %6648, %6646
  %6650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6651 = extractvalue %dx.types.CBufRet.f32 %6650, 2
  %6652 = fcmp fast ogt float %6651, 0.000000e+00
  br i1 %6652, label %6653, label %6693, !dx.controlflow.hints !134

; <label>:6653                                    ; preds = %6639
  %6654 = fcmp fast ugt float %6651, 0.000000e+00
  br i1 %6654, label %6655, label %6690

; <label>:6655                                    ; preds = %6653
  %6656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6657 = extractvalue %dx.types.CBufRet.f32 %6656, 0
  %6658 = extractvalue %dx.types.CBufRet.f32 %6656, 1
  %6659 = extractvalue %dx.types.CBufRet.f32 %6656, 2
  %6660 = extractvalue %dx.types.CBufRet.f32 %6656, 3
  %6661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6662 = extractvalue %dx.types.CBufRet.f32 %6661, 0
  %6663 = extractvalue %dx.types.CBufRet.f32 %6661, 1
  %6664 = extractvalue %dx.types.CBufRet.f32 %6661, 2
  %6665 = extractvalue %dx.types.CBufRet.f32 %6661, 3
  %6666 = extractvalue %dx.types.CBufRet.f32 %6650, 0
  %6667 = extractvalue %dx.types.CBufRet.f32 %6650, 1
  %6668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6669 = extractvalue %dx.types.CBufRet.f32 %6668, 0
  %6670 = extractvalue %dx.types.CBufRet.f32 %6668, 1
  %6671 = extractvalue %dx.types.CBufRet.f32 %6668, 2
  %6672 = fadd fast float %6669, %5432
  %6673 = fadd fast float %6670, %5433
  %6674 = fadd fast float %6671, %5434
  %6675 = fmul fast float %6672, %6657
  %6676 = call float @dx.op.tertiary.f32(i32 46, float %6658, float %6673, float %6675)  ; FMad(a,b,c)
  %6677 = call float @dx.op.tertiary.f32(i32 46, float %6659, float %6674, float %6676)  ; FMad(a,b,c)
  %6678 = fadd fast float %6677, %6660
  %6679 = fmul fast float %6672, %6662
  %6680 = call float @dx.op.tertiary.f32(i32 46, float %6663, float %6673, float %6679)  ; FMad(a,b,c)
  %6681 = call float @dx.op.tertiary.f32(i32 46, float %6664, float %6674, float %6680)  ; FMad(a,b,c)
  %6682 = fadd fast float %6681, %6665
  %6683 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %14, %dx.types.Handle %54, float %6678, float %6682, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6684 = extractvalue %dx.types.ResRet.f32 %6683, 0
  %6685 = fmul fast float %6684, %6667
  %6686 = fadd fast float %6685, %6666
  %6687 = call float @dx.op.unary.f32(i32 7, float %6686)  ; Saturate(value)
  %6688 = fmul fast float %6687, %6651
  %6689 = fsub fast float 1.000000e+00, %6688
  br label %6690

; <label>:6690                                    ; preds = %6655, %6653
  %6691 = phi float [ %6689, %6655 ], [ 1.000000e+00, %6653 ]
  %6692 = fmul fast float %6691, %6649
  br label %6693

; <label>:6693                                    ; preds = %6690, %6639, %5412
  %6694 = phi float [ 1.000000e+00, %5412 ], [ %6692, %6690 ], [ %6649, %6639 ]
  %6695 = call float @dx.op.binary.f32(i32 36, float %6694, float %6694)  ; FMin(a,b)
  %6696 = call float @dx.op.binary.f32(i32 36, float %6694, float %6695)  ; FMin(a,b)
  %6697 = fcmp fast ogt float %6696, 0.000000e+00
  br i1 %6697, label %6698, label %6863, !dx.controlflow.hints !135

; <label>:6698                                    ; preds = %6693
  %6699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6700 = extractvalue %dx.types.CBufRet.f32 %6699, 0
  %6701 = extractvalue %dx.types.CBufRet.f32 %6699, 1
  %6702 = extractvalue %dx.types.CBufRet.f32 %6699, 2
  %6703 = extractvalue %dx.types.CBufRet.f32 %6699, 3
  %6704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6705 = extractvalue %dx.types.CBufRet.f32 %6704, 0
  %6706 = extractvalue %dx.types.CBufRet.f32 %6704, 1
  %6707 = extractvalue %dx.types.CBufRet.f32 %6704, 2
  %6708 = extractvalue %dx.types.CBufRet.f32 %6704, 3
  %6709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6710 = extractvalue %dx.types.CBufRet.f32 %6709, 0
  %6711 = extractvalue %dx.types.CBufRet.f32 %6709, 1
  %6712 = extractvalue %dx.types.CBufRet.f32 %6709, 2
  %6713 = extractvalue %dx.types.CBufRet.f32 %6709, 3
  %6714 = fmul fast float %6700, %5432
  %6715 = call float @dx.op.tertiary.f32(i32 46, float %5433, float %6701, float %6714)  ; FMad(a,b,c)
  %6716 = call float @dx.op.tertiary.f32(i32 46, float %5434, float %6702, float %6715)  ; FMad(a,b,c)
  %6717 = fadd fast float %6716, %6703
  %6718 = fmul fast float %6705, %5432
  %6719 = call float @dx.op.tertiary.f32(i32 46, float %5433, float %6706, float %6718)  ; FMad(a,b,c)
  %6720 = call float @dx.op.tertiary.f32(i32 46, float %5434, float %6707, float %6719)  ; FMad(a,b,c)
  %6721 = fadd fast float %6720, %6708
  %6722 = fmul fast float %6710, %5432
  %6723 = call float @dx.op.tertiary.f32(i32 46, float %5433, float %6711, float %6722)  ; FMad(a,b,c)
  %6724 = call float @dx.op.tertiary.f32(i32 46, float %5434, float %6712, float %6723)  ; FMad(a,b,c)
  %6725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6726 = extractvalue %dx.types.CBufRet.f32 %6725, 0
  %6727 = extractvalue %dx.types.CBufRet.f32 %6725, 1
  %6728 = extractvalue %dx.types.CBufRet.f32 %6725, 3
  %6729 = fmul fast float %6728, %6717
  %6730 = fmul fast float %6728, %6721
  %6731 = fadd fast float %6729, %6726
  %6732 = fadd fast float %6730, %6727
  %6733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6734 = extractvalue %dx.types.CBufRet.f32 %6733, 0
  %6735 = extractvalue %dx.types.CBufRet.f32 %6733, 1
  %6736 = fsub fast float %6731, %6734
  %6737 = fsub fast float %6732, %6735
  %6738 = fcmp fast olt float %6736, 0.000000e+00
  %6739 = fcmp fast olt float %6737, 0.000000e+00
  %6740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6741 = extractvalue %dx.types.CBufRet.f32 %6740, 0
  %6742 = extractvalue %dx.types.CBufRet.f32 %6740, 1
  %6743 = extractvalue %dx.types.CBufRet.f32 %6740, 2
  %6744 = extractvalue %dx.types.CBufRet.f32 %6740, 3
  %6745 = select i1 %6738, float %6741, float %6743
  %6746 = select i1 %6739, float %6742, float %6744
  %6747 = fmul fast float %6745, %6736
  %6748 = fmul fast float %6746, %6737
  %6749 = call float @dx.op.unary.f32(i32 6, float %6747)  ; FAbs(value)
  %6750 = call float @dx.op.unary.f32(i32 6, float %6748)  ; FAbs(value)
  %6751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6752 = extractvalue %dx.types.CBufRet.f32 %6751, 0
  %6753 = call float @dx.op.binary.f32(i32 35, float %6749, float %6750)  ; FMax(a,b)
  %6754 = fsub fast float %6752, %6753
  %6755 = call float @dx.op.unary.f32(i32 7, float %6754)  ; Saturate(value)
  %6756 = fcmp fast ogt float %6755, 0.000000e+00
  br i1 %6756, label %6757, label %6798, !dx.controlflow.hints !136

; <label>:6757                                    ; preds = %6698
  %6758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %57, float %6731, float %6732, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6759 = extractvalue %dx.types.ResRet.f32 %6758, 1
  %6760 = fcmp fast ogt float %6759, 0.000000e+00
  br i1 %6760, label %6761, label %6793

; <label>:6761                                    ; preds = %6757
  %6762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %57, float %6731, float %6732, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6763 = extractvalue %dx.types.ResRet.f32 %6762, 0
  %6764 = extractvalue %dx.types.ResRet.f32 %6762, 1
  %6765 = extractvalue %dx.types.ResRet.f32 %6762, 2
  %6766 = extractvalue %dx.types.ResRet.f32 %6762, 3
  %6767 = fsub fast float 1.000000e+00, %6713
  %6768 = fsub fast float %6767, %6724
  %6769 = fmul fast float %6768, 0x400921FB60000000
  %6770 = fadd fast float %6769, 0x3FF921FB60000000
  %6771 = call float @dx.op.unary.f32(i32 13, float %6770)  ; Sin(value)
  %6772 = fadd fast float %6771, -1.000000e+00
  %6773 = fmul fast float %6772, 0x3FD45F3060000000
  %6774 = fmul fast float %6768, 0x401921FB60000000
  %6775 = fadd fast float %6774, 0x400921FB60000000
  %6776 = call float @dx.op.unary.f32(i32 13, float %6775)  ; Sin(value)
  %6777 = fadd fast float %6776, 0x3E7777A5C0000000
  %6778 = fmul fast float %6777, 0x3FC45F3060000000
  %6779 = fmul fast float %6768, 0x4022D97C80000000
  %6780 = fadd fast float %6779, 0x4012D97C80000000
  %6781 = call float @dx.op.unary.f32(i32 13, float %6780)  ; Sin(value)
  %6782 = fadd fast float %6781, 1.000000e+00
  %6783 = fmul fast float %6782, 0x3FBB2995E0000000
  %6784 = fmul fast float %6768, 0x402921FB60000000
  %6785 = fadd fast float %6784, 0x401921FB60000000
  %6786 = call float @dx.op.unary.f32(i32 13, float %6785)  ; Sin(value)
  %6787 = fadd fast float %6786, 0xBE8777A5C0000000
  %6788 = fmul fast float %6787, 0x3FB45F3060000000
  %6789 = call float @dx.op.dot4.f32(i32 56, float %6763, float %6764, float %6765, float %6766, float %6773, float %6778, float %6783, float %6788)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6790 = fmul fast float %6789, 0xBFF7154760000000
  %6791 = call float @dx.op.unary.f32(i32 21, float %6790)  ; Exp(value)
  %6792 = call float @dx.op.unary.f32(i32 7, float %6791)  ; Saturate(value)
  br label %6793

; <label>:6793                                    ; preds = %6761, %6757
  %6794 = phi float [ %6792, %6761 ], [ 1.000000e+00, %6757 ]
  %6795 = fadd fast float %6794, -1.000000e+00
  %6796 = fmul fast float %6795, %6755
  %6797 = fadd fast float %6796, 1.000000e+00
  br label %6798

; <label>:6798                                    ; preds = %6793, %6698
  %6799 = phi float [ %6797, %6793 ], [ 1.000000e+00, %6698 ]
  %6800 = fmul fast float %6799, %6694
  %6801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6802 = extractvalue %dx.types.CBufRet.f32 %6801, 0
  %6803 = extractvalue %dx.types.CBufRet.f32 %6801, 1
  %6804 = extractvalue %dx.types.CBufRet.f32 %6801, 2
  %6805 = fadd fast float %6802, %208
  %6806 = fadd fast float %6803, %209
  %6807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6808 = extractvalue %dx.types.CBufRet.f32 %6807, 1
  %6809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6810 = extractvalue %dx.types.CBufRet.f32 %6809, 0
  %6811 = extractvalue %dx.types.CBufRet.f32 %6809, 1
  %6812 = extractvalue %dx.types.CBufRet.f32 %6809, 2
  %6813 = fsub fast float -0.000000e+00, %6805
  %6814 = fsub fast float -0.000000e+00, %6806
  %6815 = fsub fast float %4621, %6804
  %6816 = fadd fast float %6815, %6808
  %6817 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6813, float %6814, float %6816)  ; Dot3(ax,ay,az,bx,by,bz)
  %6818 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6810, float %6811, float %6812)  ; Dot3(ax,ay,az,bx,by,bz)
  %6819 = fdiv fast float 1.000000e+00, %6818
  %6820 = fmul fast float %6819, %6817
  %6821 = fmul fast float %6810, %6820
  %6822 = fmul fast float %6811, %6820
  %6823 = fadd fast float %6821, %6805
  %6824 = fadd fast float %6822, %6806
  %6825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6826 = extractvalue %dx.types.CBufRet.f32 %6825, 0
  %6827 = extractvalue %dx.types.CBufRet.f32 %6825, 1
  %6828 = fsub fast float %6823, %6826
  %6829 = fsub fast float %6824, %6827
  %6830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6831 = extractvalue %dx.types.CBufRet.f32 %6830, 2
  %6832 = extractvalue %dx.types.CBufRet.f32 %6830, 3
  %6833 = fmul fast float %6828, %6831
  %6834 = fmul fast float %6829, %6832
  %6835 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6836 = extractvalue %dx.types.CBufRet.i32 %6835, 3
  %6837 = icmp eq i32 %6836, 0
  br i1 %6837, label %6843, label %6838

; <label>:6838                                    ; preds = %6798
  %6839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %56, float %6833, float %6834, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6840 = extractvalue %dx.types.ResRet.f32 %6839, 0
  %6841 = extractvalue %dx.types.ResRet.f32 %6839, 1
  %6842 = extractvalue %dx.types.ResRet.f32 %6839, 2
  br label %6848

; <label>:6843                                    ; preds = %6798
  %6844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %57, float %6833, float %6834, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6845 = extractvalue %dx.types.ResRet.f32 %6844, 0
  %6846 = extractvalue %dx.types.ResRet.f32 %6844, 1
  %6847 = extractvalue %dx.types.ResRet.f32 %6844, 2
  br label %6848

; <label>:6848                                    ; preds = %6843, %6838
  %6849 = phi float [ %6840, %6838 ], [ %6845, %6843 ]
  %6850 = phi float [ %6841, %6838 ], [ %6846, %6843 ]
  %6851 = phi float [ %6842, %6838 ], [ %6847, %6843 ]
  %6852 = extractvalue %dx.types.CBufRet.f32 %6807, 2
  %6853 = fmul fast float %6852, %6849
  %6854 = extractvalue %dx.types.CBufRet.f32 %6807, 0
  %6855 = fsub fast float %6820, %6854
  %6856 = fsub fast float %6855, %6853
  %6857 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6856)  ; FMax(a,b)
  %6858 = fmul fast float %6857, %6850
  %6859 = call float @dx.op.binary.f32(i32 36, float %6851, float %6858)  ; FMin(a,b)
  %6860 = fmul fast float %6859, 0xBFF7154760000000
  %6861 = call float @dx.op.unary.f32(i32 21, float %6860)  ; Exp(value)
  %6862 = fmul fast float %6800, %6861
  br label %6863

; <label>:6863                                    ; preds = %6848, %6693
  %6864 = phi float [ %6862, %6848 ], [ %6694, %6693 ]
  %6865 = call float @dx.op.binary.f32(i32 36, float %6864, float %6864)  ; FMin(a,b)
  %6866 = call float @dx.op.binary.f32(i32 36, float %6864, float %6865)  ; FMin(a,b)
  %6867 = fcmp fast ogt float %6866, 0.000000e+00
  br i1 %6867, label %6868, label %7116, !dx.controlflow.hints !137

; <label>:6868                                    ; preds = %6863
  %6869 = fmul fast float %6864, %5424
  %6870 = fmul fast float %6864, %5425
  %6871 = fmul fast float %6864, %5426
  %6872 = fsub fast float %210, %3798
  %6873 = fcmp fast ogt float %6872, 0.000000e+00
  %6874 = fmul fast float %5413, 5.120000e+02
  %6875 = fmul fast float %5414, 5.120000e+02
  %6876 = fmul fast float %5415, 5.120000e+02
  %6877 = fadd fast float %6876, %210
  %6878 = fsub fast float %3798, %6877
  %6879 = fmul fast float %6878, 2.000000e+00
  %6880 = fadd fast float %6879, %6877
  %6881 = select i1 %6873, float %6880, float %6877
  %6882 = fsub fast float %6881, %210
  %6883 = call float @dx.op.dot3.f32(i32 55, float %6874, float %6875, float %6882, float %6874, float %6875, float %6882)  ; Dot3(ax,ay,az,bx,by,bz)
  %6884 = call float @dx.op.unary.f32(i32 25, float %6883)  ; Rsqrt(value)
  %6885 = fmul fast float %6884, %6874
  %6886 = fmul fast float %6884, %6875
  %6887 = fmul fast float %6884, %6882
  %6888 = fsub fast float %3798, %210
  %6889 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6888)  ; Dot3(ax,ay,az,bx,by,bz)
  %6890 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6885, float %6886, float %6887)  ; Dot3(ax,ay,az,bx,by,bz)
  %6891 = fdiv fast float 1.000000e+00, %6890
  %6892 = fmul fast float %6891, %6889
  %6893 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6872, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6894 = fcmp fast ogt float %6893, 0.000000e+00
  %6895 = fcmp fast olt float %6893, 0.000000e+00
  %6896 = zext i1 %6894 to i32
  %6897 = zext i1 %6895 to i32
  %6898 = sub nsw i32 %6896, %6897
  %6899 = sitofp i32 %6898 to float
  %6900 = fsub fast float %6881, %3798
  %6901 = call float @dx.op.dot3.f32(i32 55, float %6874, float %6875, float %6900, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6902 = fcmp fast ogt float %6901, 0.000000e+00
  %6903 = fcmp fast olt float %6901, 0.000000e+00
  %6904 = zext i1 %6902 to i32
  %6905 = zext i1 %6903 to i32
  %6906 = sub nsw i32 %6904, %6905
  %6907 = sitofp i32 %6906 to float
  %6908 = fcmp fast une float %6899, %6907
  br i1 %6908, label %6909, label %6919

; <label>:6909                                    ; preds = %6868
  %6910 = fmul fast float %6892, %6887
  %6911 = fmul fast float %6892, %6886
  %6912 = fmul fast float %6892, %6885
  %6913 = fmul fast float %6912, %6912
  %6914 = fmul fast float %6911, %6911
  %6915 = fadd fast float %6913, %6914
  %6916 = fmul fast float %6910, %6910
  %6917 = fadd fast float %6915, %6916
  %6918 = call float @dx.op.unary.f32(i32 24, float %6917)  ; Sqrt(value)
  br label %6929

; <label>:6919                                    ; preds = %6868
  %6920 = icmp slt i32 %6898, 0
  br i1 %6920, label %6921, label %6929

; <label>:6921                                    ; preds = %6919
  %6922 = fsub fast float %210, %6881
  %6923 = fmul fast float %6874, %6874
  %6924 = fmul fast float %6875, %6875
  %6925 = fadd fast float %6923, %6924
  %6926 = fmul fast float %6922, %6922
  %6927 = fadd fast float %6925, %6926
  %6928 = call float @dx.op.unary.f32(i32 24, float %6927)  ; Sqrt(value)
  br label %6929

; <label>:6929                                    ; preds = %6921, %6919, %6909
  %6930 = phi float [ %6918, %6909 ], [ %6928, %6921 ], [ 0.000000e+00, %6919 ]
  %6931 = fsub fast float -0.000000e+00, %6930
  %6932 = select i1 %6873, float -0.000000e+00, float %6931
  %6933 = fmul fast float %3799, 0x3FF7154760000000
  %6934 = fmul fast float %6933, %6932
  %6935 = fmul fast float %3800, 0x3FF7154760000000
  %6936 = fmul fast float %6935, %6932
  %6937 = fmul fast float %3801, 0x3FF7154760000000
  %6938 = fmul fast float %6937, %6932
  %6939 = call float @dx.op.unary.f32(i32 21, float %6934)  ; Exp(value)
  %6940 = call float @dx.op.unary.f32(i32 21, float %6936)  ; Exp(value)
  %6941 = call float @dx.op.unary.f32(i32 21, float %6938)  ; Exp(value)
  %6942 = call float @dx.op.unary.f32(i32 7, float %6939)  ; Saturate(value)
  %6943 = call float @dx.op.unary.f32(i32 7, float %6940)  ; Saturate(value)
  %6944 = call float @dx.op.unary.f32(i32 7, float %6941)  ; Saturate(value)
  %6945 = fmul fast float %6869, %6942
  %6946 = fmul fast float %6870, %6943
  %6947 = fmul fast float %6871, %6944
  %6948 = fsub fast float %5413, %4624
  %6949 = fsub fast float %5414, %4625
  %6950 = fsub fast float %5415, %4626
  %6951 = call float @dx.op.dot3.f32(i32 55, float %6948, float %6949, float %6950, float %6948, float %6949, float %6950)  ; Dot3(ax,ay,az,bx,by,bz)
  %6952 = call float @dx.op.unary.f32(i32 25, float %6951)  ; Rsqrt(value)
  %6953 = fmul fast float %6952, %6948
  %6954 = fmul fast float %6952, %6949
  %6955 = fmul fast float %6952, %6950
  %6956 = call float @dx.op.dot3.f32(i32 55, float %5413, float %5414, float %5415, float %4581, float %4582, float %4583)  ; Dot3(ax,ay,az,bx,by,bz)
  %6957 = call float @dx.op.dot3.f32(i32 55, float %4627, float %4628, float %4629, float %6953, float %6954, float %6955)  ; Dot3(ax,ay,az,bx,by,bz)
  %6958 = call float @dx.op.unary.f32(i32 7, float %6956)  ; Saturate(value)
  %6959 = bitcast i32 %4656 to float
  %6960 = fmul fast float %6958, %6958
  %6961 = fmul fast float %6960, %6959
  %6962 = call float @dx.op.unary.f32(i32 7, float %6961)  ; Saturate(value)
  %6963 = fmul fast float %6962, %6958
  %6964 = call float @dx.op.dot3.f32(i32 55, float %4581, float %4582, float %4583, float %6953, float %6954, float %6955)  ; Dot3(ax,ay,az,bx,by,bz)
  %6965 = fmul fast float %6964, %6964
  %6966 = call float @dx.op.unary.f32(i32 6, float %6956)  ; FAbs(value)
  %6967 = fsub fast float 1.000000e+00, %4650
  %6968 = fmul fast float %4632, %4632
  %6969 = fmul fast float %6968, %6967
  %6970 = fadd fast float %6969, %4650
  %6971 = bitcast float %6970 to i32
  %6972 = ashr i32 %6971, 1
  %6973 = add nsw i32 %6972, 532487669
  %6974 = bitcast i32 %6973 to float
  %6975 = fadd fast float %6974, %4632
  %6976 = fmul fast float %4650, %6965
  %6977 = fsub fast float 1.000000e+00, %6965
  %6978 = fadd fast float %6977, %6976
  %6979 = fmul fast float %6966, %6966
  %6980 = fmul fast float %6979, %6967
  %6981 = fadd fast float %6980, %4650
  %6982 = bitcast float %6981 to i32
  %6983 = ashr i32 %6982, 1
  %6984 = add nsw i32 %6983, 532487669
  %6985 = bitcast i32 %6984 to float
  %6986 = fadd fast float %6985, %6966
  %6987 = fmul fast float %6978, %6978
  %6988 = fmul fast float %6987, %6975
  %6989 = fmul fast float %6988, %6986
  %6990 = fdiv fast float 0x3FF0A00000000000, %6989
  %6991 = fmul fast float %6990, %4650
  %6992 = call float @dx.op.unary.f32(i32 6, float %6957)  ; FAbs(value)
  %6993 = fsub fast float 1.000000e+00, %6992
  %6994 = bitcast float %6993 to i32
  %6995 = sitofp i32 %6994 to float
  %6996 = fmul fast float %6995, 5.000000e+00
  %6997 = fadd fast float %6996, 0xC1EFBF8940000000
  %6998 = fptosi float %6997 to i32
  %6999 = bitcast i32 %6998 to float
  %7000 = fsub fast float 1.000000e+00, %4584
  %7001 = fsub fast float 1.000000e+00, %4585
  %7002 = fsub fast float 1.000000e+00, %4630
  %7003 = fmul fast float %6999, %7000
  %7004 = fmul fast float %6999, %7001
  %7005 = fmul fast float %6999, %7002
  %7006 = fadd fast float %7003, %4584
  %7007 = fadd fast float %7004, %4585
  %7008 = fadd fast float %7005, %4630
  br i1 %4772, label %7009, label %7032

; <label>:7009                                    ; preds = %6929
  %7010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %57, float %3396, float %6992, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7011 = extractvalue %dx.types.ResRet.f32 %7010, 0
  %7012 = extractvalue %dx.types.ResRet.f32 %7010, 1
  %7013 = extractvalue %dx.types.ResRet.f32 %7010, 2
  %7014 = fadd fast float %7011, -5.000000e-01
  %7015 = fadd fast float %7012, -5.000000e-01
  %7016 = fadd fast float %7013, -5.000000e-01
  %7017 = fmul fast float %4584, 4.000000e+00
  %7018 = fmul fast float %7017, %7000
  %7019 = fmul fast float %7018, %7014
  %7020 = fmul fast float %4585, 4.000000e+00
  %7021 = fmul fast float %7020, %7001
  %7022 = fmul fast float %7021, %7015
  %7023 = fmul fast float %4630, 4.000000e+00
  %7024 = fmul fast float %7023, %7002
  %7025 = fmul fast float %7024, %7016
  %7026 = fadd fast float %7019, %7006
  %7027 = fadd fast float %7022, %7007
  %7028 = fadd fast float %7025, %7008
  %7029 = call float @dx.op.unary.f32(i32 7, float %7026)  ; Saturate(value)
  %7030 = call float @dx.op.unary.f32(i32 7, float %7027)  ; Saturate(value)
  %7031 = call float @dx.op.unary.f32(i32 7, float %7028)  ; Saturate(value)
  br label %7032

; <label>:7032                                    ; preds = %7009, %6929
  %7033 = phi float [ %7029, %7009 ], [ %7006, %6929 ]
  %7034 = phi float [ %7030, %7009 ], [ %7007, %6929 ]
  %7035 = phi float [ %7031, %7009 ], [ %7008, %6929 ]
  %7036 = fmul fast float %6956, 9.843750e-01
  %7037 = fadd fast float %7036, 7.812500e-03
  %7038 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %57, float %7037, float %4762, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7039 = extractvalue %dx.types.ResRet.f32 %7038, 2
  %7040 = extractvalue %dx.types.ResRet.f32 %7038, 3
  %7041 = fmul fast float %7039, %4584
  %7042 = fmul fast float %7039, %4585
  %7043 = fmul fast float %7039, %4630
  %7044 = fadd fast float %7041, %7040
  %7045 = fadd fast float %7042, %7040
  %7046 = fadd fast float %7043, %7040
  br i1 %4772, label %7047, label %7070

; <label>:7047                                    ; preds = %7032
  %7048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %57, float %3396, float %6956, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7049 = extractvalue %dx.types.ResRet.f32 %7048, 0
  %7050 = extractvalue %dx.types.ResRet.f32 %7048, 1
  %7051 = extractvalue %dx.types.ResRet.f32 %7048, 2
  %7052 = fadd fast float %7049, -5.000000e-01
  %7053 = fadd fast float %7050, -5.000000e-01
  %7054 = fadd fast float %7051, -5.000000e-01
  %7055 = fmul fast float %4584, 4.000000e+00
  %7056 = fmul fast float %7055, %7000
  %7057 = fmul fast float %7056, %7052
  %7058 = fmul fast float %4585, 4.000000e+00
  %7059 = fmul fast float %7058, %7001
  %7060 = fmul fast float %7059, %7053
  %7061 = fmul fast float %4630, 4.000000e+00
  %7062 = fmul fast float %7061, %7002
  %7063 = fmul fast float %7062, %7054
  %7064 = fadd fast float %7057, %7044
  %7065 = fadd fast float %7060, %7045
  %7066 = fadd fast float %7063, %7046
  %7067 = call float @dx.op.unary.f32(i32 7, float %7064)  ; Saturate(value)
  %7068 = call float @dx.op.unary.f32(i32 7, float %7065)  ; Saturate(value)
  %7069 = call float @dx.op.unary.f32(i32 7, float %7066)  ; Saturate(value)
  br label %7070

; <label>:7070                                    ; preds = %7047, %7032
  %7071 = phi float [ %7067, %7047 ], [ %7044, %7032 ]
  %7072 = phi float [ %7068, %7047 ], [ %7045, %7032 ]
  %7073 = phi float [ %7069, %7047 ], [ %7046, %7032 ]
  %7074 = call float @dx.op.binary.f32(i32 35, float %7072, float %7073)  ; FMax(a,b)
  %7075 = call float @dx.op.binary.f32(i32 35, float %7071, float %7074)  ; FMax(a,b)
  %7076 = fsub fast float 1.000000e+00, %7075
  %7077 = fmul fast float %7033, %6991
  %7078 = fmul fast float %7034, %6991
  %7079 = fmul fast float %7035, %6991
  %7080 = fsub fast float 1.000000e+00, %6957
  %7081 = bitcast float %7080 to i32
  %7082 = sitofp i32 %7081 to float
  %7083 = fmul fast float %7082, 5.000000e+00
  %7084 = fadd fast float %7083, 0xC1EFBF8940000000
  %7085 = fptosi float %7084 to i32
  %7086 = bitcast i32 %7085 to float
  %7087 = fmul fast float %7086, %3397
  %7088 = fmul fast float %7076, %7087
  %7089 = fmul fast float %7088, %5367
  %7090 = fmul fast float %7088, %5368
  %7091 = fmul fast float %7088, %5369
  %7092 = fadd fast float %7089, %7077
  %7093 = fadd fast float %7090, %7078
  %7094 = fadd fast float %7091, %7079
  %7095 = fmul fast float %6963, %6945
  %7096 = fmul fast float %7095, %7076
  %7097 = fmul fast float %6963, %6946
  %7098 = fmul fast float %7097, %7076
  %7099 = fmul fast float %6963, %6947
  %7100 = fmul fast float %7099, %7076
  %7101 = fmul fast float %7095, %7092
  %7102 = fmul fast float %7097, %7093
  %7103 = fmul fast float %7099, %7094
  %7104 = fadd fast float %7096, %5349
  %7105 = fmul fast float %7104, %3393
  %7106 = fadd fast float %7098, %5351
  %7107 = fmul fast float %7106, %3393
  %7108 = fadd fast float %7100, %5353
  %7109 = fmul fast float %7108, %3393
  %7110 = fadd fast float %7101, %5401
  %7111 = fmul fast float %7110, %3393
  %7112 = fadd fast float %7102, %5404
  %7113 = fmul fast float %7112, %3393
  %7114 = fadd fast float %7103, %5407
  %7115 = fmul fast float %7114, %3393
  br label %7116

; <label>:7116                                    ; preds = %7070, %6863, %5294
  %7117 = phi float [ %5402, %5294 ], [ %5402, %6863 ], [ %7111, %7070 ]
  %7118 = phi float [ %5405, %5294 ], [ %5405, %6863 ], [ %7113, %7070 ]
  %7119 = phi float [ %5408, %5294 ], [ %5408, %6863 ], [ %7115, %7070 ]
  %7120 = phi float [ %5397, %5294 ], [ %5397, %6863 ], [ %7105, %7070 ]
  %7121 = phi float [ %5398, %5294 ], [ %5398, %6863 ], [ %7107, %7070 ]
  %7122 = phi float [ %5399, %5294 ], [ %5399, %6863 ], [ %7109, %7070 ]
  %7123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7124 = extractvalue %dx.types.CBufRet.i32 %7123, 0
  %7125 = icmp eq i32 %7124, 0
  br i1 %7125, label %7789, label %7126

; <label>:7126                                    ; preds = %7116
  %7127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7128 = extractvalue %dx.types.CBufRet.f32 %7127, 2
  %7129 = extractvalue %dx.types.CBufRet.f32 %7127, 3
  %7130 = fmul fast float %7128, %121
  %7131 = fmul fast float %7129, %122
  %7132 = fptoui float %7130 to i32
  %7133 = fptoui float %7131 to i32
  %7134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7135 = extractvalue %dx.types.CBufRet.f32 %7134, 0
  %7136 = extractvalue %dx.types.CBufRet.f32 %7134, 2
  %7137 = extractvalue %dx.types.CBufRet.f32 %7134, 3
  %7138 = fadd fast float %108, -4.000000e+00
  %7139 = call float @dx.op.binary.f32(i32 35, float %7138, float 0.000000e+00)  ; FMax(a,b)
  %7140 = fadd fast float %7139, %7135
  %7141 = fmul fast float %7140, %7136
  %7142 = call float @dx.op.unary.f32(i32 23, float %7141)  ; Log(value)
  %7143 = fmul fast float %7142, %7137
  %7144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7145 = extractvalue %dx.types.CBufRet.f32 %7144, 2
  %7146 = fmul fast float %7143, %7145
  %7147 = call float @dx.op.unary.f32(i32 7, float %7146)  ; Saturate(value)
  %7148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7149 = extractvalue %dx.types.CBufRet.i32 %7148, 1
  %7150 = add i32 %7149, -1
  %7151 = uitofp i32 %7149 to float
  %7152 = fmul fast float %7151, %7147
  %7153 = fptoui float %7152 to i32
  %7154 = call i32 @dx.op.binary.i32(i32 40, i32 %7153, i32 %7150)  ; UMin(a,b)
  %7155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7156 = extractvalue %dx.types.CBufRet.i32 %7155, 2
  %7157 = extractvalue %dx.types.CBufRet.i32 %7155, 3
  %7158 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7133, i32 %7156, i32 %7132)  ; UMad(a,b,c)
  %7159 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7154, i32 %7157, i32 %7158)  ; UMad(a,b,c)
  %7160 = add nsw i32 %7124, -1
  %7161 = call i32 @dx.op.binary.i32(i32 37, i32 %7160, i32 0)  ; IMax(a,b)
  %7162 = call float @dx.op.binary.f32(i32 35, float %108, float 0.000000e+00)  ; FMax(a,b)
  %7163 = fptoui float %7162 to i32
  %7164 = lshr i32 %7163, 5
  %7165 = call i32 @dx.op.binary.i32(i32 40, i32 %7164, i32 8191)  ; UMin(a,b)
  %7166 = shl i32 %7165, 2
  %7167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7166, i32 undef)  ; BufferLoad(srv,index,wot)
  %7168 = extractvalue %dx.types.ResRet.i32 %7167, 0
  %7169 = lshr i32 %7168, 16
  %7170 = and i32 %7168, 65535
  %7171 = lshr i32 %7168, 21
  %7172 = lshr i32 %7170, 5
  %7173 = call i32 @dx.op.binary.i32(i32 40, i32 %7172, i32 %7161)  ; UMin(a,b)
  %7174 = icmp ugt i32 %7171, %7173
  br i1 %7174, label %7789, label %7175

; <label>:7175                                    ; preds = %7126
  br label %7176

; <label>:7176                                    ; preds = %7779, %7175
  %7177 = phi i32 [ %7786, %7779 ], [ %7171, %7175 ]
  %7178 = phi float [ %7780, %7779 ], [ %7117, %7175 ]
  %7179 = phi float [ %7781, %7779 ], [ %7118, %7175 ]
  %7180 = phi float [ %7782, %7779 ], [ %7119, %7175 ]
  %7181 = phi float [ %7783, %7779 ], [ %7120, %7175 ]
  %7182 = phi float [ %7784, %7779 ], [ %7121, %7175 ]
  %7183 = phi float [ %7785, %7779 ], [ %7122, %7175 ]
  %7184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7185 = extractvalue %dx.types.CBufRet.i32 %7184, 0
  %7186 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7159, i32 %7185, i32 %7177)  ; UMad(a,b,c)
  %7187 = shl i32 %7186, 2
  %7188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %7187, i32 undef)  ; BufferLoad(srv,index,wot)
  %7189 = extractvalue %dx.types.ResRet.i32 %7188, 0
  %7190 = shl i32 %7177, 5
  %7191 = sub nsw i32 %7169, %7190
  %7192 = call i32 @dx.op.binary.i32(i32 37, i32 %7191, i32 0)  ; IMax(a,b)
  %7193 = call i32 @dx.op.binary.i32(i32 38, i32 %7192, i32 31)  ; IMin(a,b)
  %7194 = sub nsw i32 1, %7169
  %7195 = add nsw i32 %7194, %7170
  %7196 = call i32 @dx.op.binary.i32(i32 37, i32 %7195, i32 0)  ; IMax(a,b)
  %7197 = call i32 @dx.op.binary.i32(i32 38, i32 %7196, i32 32)  ; IMin(a,b)
  %7198 = and i32 %7197, 31
  %7199 = shl i32 -1, %7198
  %7200 = xor i32 %7199, -1
  %7201 = and i32 %7193, 31
  %7202 = shl i32 %7200, %7201
  %7203 = icmp eq i32 %7197, 32
  %7204 = select i1 %7203, i32 -1, i32 %7202
  %7205 = and i32 %7204, %7189
  %7206 = icmp eq i32 %7205, 0
  br i1 %7206, label %7779, label %7207

; <label>:7207                                    ; preds = %7176
  br label %7208

; <label>:7208                                    ; preds = %7342, %7207
  %7209 = phi i32 [ %7220, %7342 ], [ %7205, %7207 ]
  %7210 = phi float [ %7343, %7342 ], [ %7178, %7207 ]
  %7211 = phi float [ %7344, %7342 ], [ %7179, %7207 ]
  %7212 = phi float [ %7345, %7342 ], [ %7180, %7207 ]
  %7213 = phi float [ %7346, %7342 ], [ %7181, %7207 ]
  %7214 = phi float [ %7347, %7342 ], [ %7182, %7207 ]
  %7215 = phi float [ %7348, %7342 ], [ %7183, %7207 ]
  %7216 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7209)  ; FirstbitLo(value)
  %7217 = add i32 %7216, %7190
  %7218 = and i32 %7216, 31
  %7219 = shl i32 1, %7218
  %7220 = xor i32 %7219, %7209
  %7221 = mul i32 %7217, 112
  %7222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7221, i32 undef)  ; BufferLoad(srv,index,wot)
  %7223 = extractvalue %dx.types.ResRet.f32 %7222, 0
  %7224 = extractvalue %dx.types.ResRet.f32 %7222, 1
  %7225 = extractvalue %dx.types.ResRet.f32 %7222, 2
  %7226 = or i32 %7221, 12
  %7227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7226, i32 undef)  ; BufferLoad(srv,index,wot)
  %7228 = extractvalue %dx.types.ResRet.f32 %7227, 0
  %7229 = add i32 %7221, 16
  %7230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7229, i32 undef)  ; BufferLoad(srv,index,wot)
  %7231 = extractvalue %dx.types.ResRet.f32 %7230, 0
  %7232 = extractvalue %dx.types.ResRet.f32 %7230, 1
  %7233 = extractvalue %dx.types.ResRet.f32 %7230, 2
  %7234 = add i32 %7221, 28
  %7235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %7234, i32 undef)  ; BufferLoad(srv,index,wot)
  %7236 = extractvalue %dx.types.ResRet.i32 %7235, 0
  %7237 = add i32 %7221, 44
  %7238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7237, i32 undef)  ; BufferLoad(srv,index,wot)
  %7239 = extractvalue %dx.types.ResRet.f32 %7238, 0
  %7240 = add i32 %7221, 48
  %7241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7240, i32 undef)  ; BufferLoad(srv,index,wot)
  %7242 = extractvalue %dx.types.ResRet.f32 %7241, 0
  %7243 = extractvalue %dx.types.ResRet.f32 %7241, 1
  %7244 = extractvalue %dx.types.ResRet.f32 %7241, 2
  %7245 = extractvalue %dx.types.ResRet.f32 %7241, 3
  %7246 = add i32 %7221, 64
  %7247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7246, i32 undef)  ; BufferLoad(srv,index,wot)
  %7248 = extractvalue %dx.types.ResRet.f32 %7247, 0
  %7249 = extractvalue %dx.types.ResRet.f32 %7247, 1
  %7250 = extractvalue %dx.types.ResRet.f32 %7247, 2
  %7251 = extractvalue %dx.types.ResRet.f32 %7247, 3
  %7252 = add i32 %7221, 80
  %7253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7252, i32 undef)  ; BufferLoad(srv,index,wot)
  %7254 = extractvalue %dx.types.ResRet.f32 %7253, 1
  %7255 = extractvalue %dx.types.ResRet.f32 %7253, 2
  %7256 = add i32 %7221, 92
  %7257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %7256, i32 undef)  ; BufferLoad(srv,index,wot)
  %7258 = extractvalue %dx.types.ResRet.i32 %7257, 0
  %7259 = call float @dx.op.dot3.f32(i32 55, float %7223, float %7224, float %7225, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7260 = select i1 %278, float %7254, float %7223
  %7261 = select i1 %278, float %7259, float %7224
  %7262 = select i1 %278, float %7255, float %7225
  %7263 = and i32 %7258, 65535
  %7264 = uitofp i32 %7263 to float
  %7265 = lshr i32 %7258, 16
  %7266 = uitofp i32 %7265 to float
  %7267 = and i32 %7236, 65535
  %7268 = and i32 %7236, 50331648
  %7269 = icmp eq i32 %7268, 33554432
  %7270 = fsub fast float %7242, %208
  %7271 = fsub fast float %7243, %209
  %7272 = fsub fast float %7244, %210
  %7273 = call float @dx.op.dot3.f32(i32 55, float %7270, float %7271, float %7272, float %7270, float %7271, float %7272)  ; Dot3(ax,ay,az,bx,by,bz)
  %7274 = call float @dx.op.unary.f32(i32 24, float %7273)  ; Sqrt(value)
  %7275 = fdiv fast float 1.000000e+00, %7274
  %7276 = fmul fast float %7275, %7270
  %7277 = fmul fast float %7275, %7271
  %7278 = fmul fast float %7275, %7272
  %7279 = fadd fast float %7274, %7228
  %7280 = fdiv fast float 1.000000e+00, %7279
  %7281 = fmul float %7239, %7280
  %7282 = fmul float %7281, %7281
  %7283 = call float @dx.op.unary.f32(i32 7, float %7282)  ; Saturate(value)
  br i1 %7269, label %7284, label %7305

; <label>:7284                                    ; preds = %7208
  %7285 = fmul fast float %7250, %7231
  %7286 = fmul fast float %7250, %7232
  %7287 = fmul fast float %7250, %7233
  %7288 = fadd fast float %7270, %7285
  %7289 = fadd fast float %7271, %7286
  %7290 = fadd fast float %7272, %7287
  %7291 = call float @dx.op.dot3.f32(i32 55, float %7288, float %7289, float %7290, float %7288, float %7289, float %7290)  ; Dot3(ax,ay,az,bx,by,bz)
  %7292 = call float @dx.op.unary.f32(i32 25, float %7291)  ; Rsqrt(value)
  %7293 = fmul fast float %7292, %7288
  %7294 = fmul fast float %7292, %7289
  %7295 = fmul fast float %7292, %7290
  %7296 = fsub fast float %208, %7242
  %7297 = fsub fast float %209, %7243
  %7298 = fsub fast float %210, %7244
  %7299 = fsub fast float -0.000000e+00, %7296
  %7300 = fsub fast float -0.000000e+00, %7297
  %7301 = fsub fast float -0.000000e+00, %7298
  %7302 = call float @dx.op.dot3.f32(i32 55, float %7299, float %7300, float %7301, float %7231, float %7232, float %7233)  ; Dot3(ax,ay,az,bx,by,bz)
  %7303 = fcmp fast ogt float %7302, 0.000000e+00
  %7304 = uitofp i1 %7303 to float
  br label %7305

; <label>:7305                                    ; preds = %7284, %7208
  %7306 = phi float [ %7304, %7284 ], [ 1.000000e+00, %7208 ]
  %7307 = phi float [ %7293, %7284 ], [ %7276, %7208 ]
  %7308 = phi float [ %7294, %7284 ], [ %7277, %7208 ]
  %7309 = phi float [ %7295, %7284 ], [ %7278, %7208 ]
  %7310 = call float @dx.op.dot3.f32(i32 55, float %7231, float %7232, float %7233, float %7307, float %7308, float %7309)  ; Dot3(ax,ay,az,bx,by,bz)
  %7311 = fmul fast float %7310, %7310
  %7312 = call float @dx.op.unary.f32(i32 7, float %7311)  ; Saturate(value)
  %7313 = fsub fast float 1.000000e+00, %7312
  %7314 = fmul fast float %7313, 5.000000e-01
  %7315 = fcmp fast ogt float %7310, 0.000000e+00
  %7316 = fsub fast float 1.000000e+00, %7314
  %7317 = select i1 %7315, float %7314, float %7316
  %7318 = fmul fast float %7317, %7266
  %7319 = fadd fast float %7318, %7264
  %7320 = fmul fast float %7319, 0x3EF0001000000000
  %7321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %57, float %7320, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7322 = extractvalue %dx.types.ResRet.f32 %7321, 0
  %7323 = fmul fast float %7310, %7248
  %7324 = fadd fast float %7323, %7249
  %7325 = call float @dx.op.unary.f32(i32 7, float %7324)  ; Saturate(value)
  %7326 = select i1 %7269, float 1.000000e+00, float %7325
  %7327 = select i1 %7269, float %7325, float 1.000000e+00
  %7328 = fmul fast float %7274, %7245
  %7329 = fsub fast float 1.000000e+00, %7328
  %7330 = fmul fast float %7329, %7251
  %7331 = call float @dx.op.unary.f32(i32 7, float %7330)  ; Saturate(value)
  %7332 = fmul fast float %7331, %7327
  %7333 = fmul fast float %7332, 2.000000e+00
  %7334 = fsub fast float 3.000000e+00, %7333
  %7335 = fmul fast float %7322, %7306
  %7336 = fmul fast float %7332, %7332
  %7337 = fmul fast float %7336, %7335
  %7338 = fmul fast float %7337, %7334
  %7339 = call float @dx.op.binary.f32(i32 36, float %7338, float %7338)  ; FMin(a,b)
  %7340 = call float @dx.op.binary.f32(i32 36, float %7338, float %7339)  ; FMin(a,b)
  %7341 = fcmp fast ogt float %7340, 0.000000e+00
  br i1 %7341, label %7350, label %7342, !dx.controlflow.hints !138

; <label>:7342                                    ; preds = %7735, %7496, %7305
  %7343 = phi float [ %7210, %7496 ], [ %7210, %7305 ], [ %7775, %7735 ]
  %7344 = phi float [ %7211, %7496 ], [ %7211, %7305 ], [ %7776, %7735 ]
  %7345 = phi float [ %7212, %7496 ], [ %7212, %7305 ], [ %7777, %7735 ]
  %7346 = phi float [ %7213, %7496 ], [ %7213, %7305 ], [ %7769, %7735 ]
  %7347 = phi float [ %7214, %7496 ], [ %7214, %7305 ], [ %7770, %7735 ]
  %7348 = phi float [ %7215, %7496 ], [ %7215, %7305 ], [ %7771, %7735 ]
  %7349 = icmp eq i32 %7209, %7219
  br i1 %7349, label %7778, label %7208

; <label>:7350                                    ; preds = %7305
  %7351 = icmp eq i32 %7267, 255
  br i1 %7351, label %7496, label %7352, !dx.controlflow.hints !139

; <label>:7352                                    ; preds = %7350
  %7353 = mul nuw nsw i32 %7267, 176
  %7354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7353, i32 undef)  ; BufferLoad(srv,index,wot)
  %7355 = extractvalue %dx.types.ResRet.f32 %7354, 0
  %7356 = extractvalue %dx.types.ResRet.f32 %7354, 1
  %7357 = extractvalue %dx.types.ResRet.f32 %7354, 2
  %7358 = extractvalue %dx.types.ResRet.f32 %7354, 3
  %7359 = add nuw nsw i32 %7353, 16
  %7360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7359, i32 undef)  ; BufferLoad(srv,index,wot)
  %7361 = extractvalue %dx.types.ResRet.f32 %7360, 0
  %7362 = extractvalue %dx.types.ResRet.f32 %7360, 1
  %7363 = add nuw nsw i32 %7353, 32
  %7364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7363, i32 undef)  ; BufferLoad(srv,index,wot)
  %7365 = extractvalue %dx.types.ResRet.f32 %7364, 0
  %7366 = extractvalue %dx.types.ResRet.f32 %7364, 1
  %7367 = extractvalue %dx.types.ResRet.f32 %7364, 2
  %7368 = add nuw nsw i32 %7353, 48
  %7369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7368, i32 undef)  ; BufferLoad(srv,index,wot)
  %7370 = extractvalue %dx.types.ResRet.f32 %7369, 0
  %7371 = extractvalue %dx.types.ResRet.f32 %7369, 1
  %7372 = extractvalue %dx.types.ResRet.f32 %7369, 2
  %7373 = extractvalue %dx.types.ResRet.f32 %7369, 3
  %7374 = add nuw nsw i32 %7353, 64
  %7375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7374, i32 undef)  ; BufferLoad(srv,index,wot)
  %7376 = extractvalue %dx.types.ResRet.f32 %7375, 0
  %7377 = extractvalue %dx.types.ResRet.f32 %7375, 1
  %7378 = extractvalue %dx.types.ResRet.f32 %7375, 2
  %7379 = extractvalue %dx.types.ResRet.f32 %7375, 3
  %7380 = add nuw nsw i32 %7353, 80
  %7381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7380, i32 undef)  ; BufferLoad(srv,index,wot)
  %7382 = extractvalue %dx.types.ResRet.f32 %7381, 0
  %7383 = extractvalue %dx.types.ResRet.f32 %7381, 1
  %7384 = extractvalue %dx.types.ResRet.f32 %7381, 2
  %7385 = extractvalue %dx.types.ResRet.f32 %7381, 3
  %7386 = add nuw nsw i32 %7353, 96
  %7387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7386, i32 undef)  ; BufferLoad(srv,index,wot)
  %7388 = extractvalue %dx.types.ResRet.f32 %7387, 0
  %7389 = extractvalue %dx.types.ResRet.f32 %7387, 1
  %7390 = extractvalue %dx.types.ResRet.f32 %7387, 2
  %7391 = extractvalue %dx.types.ResRet.f32 %7387, 3
  %7392 = bitcast float %7362 to i32
  %7393 = fmul fast float %7367, %128
  %7394 = fmul fast float %7367, %129
  %7395 = fmul fast float %7367, %130
  %7396 = fadd fast float %7393, %208
  %7397 = fadd fast float %7394, %209
  %7398 = fadd fast float %7395, %210
  %7399 = fmul fast float %7396, %7370
  %7400 = call float @dx.op.tertiary.f32(i32 46, float %7397, float %7376, float %7399)  ; FMad(a,b,c)
  %7401 = call float @dx.op.tertiary.f32(i32 46, float %7398, float %7382, float %7400)  ; FMad(a,b,c)
  %7402 = fadd fast float %7401, %7388
  %7403 = fmul fast float %7396, %7371
  %7404 = call float @dx.op.tertiary.f32(i32 46, float %7397, float %7377, float %7403)  ; FMad(a,b,c)
  %7405 = call float @dx.op.tertiary.f32(i32 46, float %7398, float %7383, float %7404)  ; FMad(a,b,c)
  %7406 = fadd fast float %7405, %7389
  %7407 = fmul fast float %7396, %7372
  %7408 = call float @dx.op.tertiary.f32(i32 46, float %7397, float %7378, float %7407)  ; FMad(a,b,c)
  %7409 = call float @dx.op.tertiary.f32(i32 46, float %7398, float %7384, float %7408)  ; FMad(a,b,c)
  %7410 = fadd fast float %7409, %7390
  %7411 = fmul fast float %7396, %7373
  %7412 = call float @dx.op.tertiary.f32(i32 46, float %7397, float %7379, float %7411)  ; FMad(a,b,c)
  %7413 = call float @dx.op.tertiary.f32(i32 46, float %7398, float %7385, float %7412)  ; FMad(a,b,c)
  %7414 = fadd fast float %7413, %7391
  %7415 = fdiv fast float %7402, %7414
  %7416 = fdiv fast float %7406, %7414
  %7417 = fdiv fast float %7410, %7414
  %7418 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7417)  ; FMax(a,b)
  %7419 = fmul fast float %289, 0x401921FB60000000
  %7420 = call float @dx.op.unary.f32(i32 13, float %7419)  ; Sin(value)
  %7421 = call float @dx.op.unary.f32(i32 12, float %7419)  ; Cos(value)
  %7422 = fmul fast float %7421, %7366
  %7423 = call float @dx.op.tertiary.f32(i32 46, float %7420, float %7366, float 0.000000e+00)  ; FMad(a,b,c)
  %7424 = fmul fast float %7366, %7420
  %7425 = fsub fast float -0.000000e+00, %7424
  %7426 = call float @dx.op.tertiary.f32(i32 46, float %7421, float %7366, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7427

; <label>:7427                                    ; preds = %7427, %7352
  %7428 = phi float [ 0.000000e+00, %7352 ], [ %7460, %7427 ]
  %7429 = phi float [ 0.000000e+00, %7352 ], [ %7462, %7427 ]
  %7430 = phi i32 [ 0, %7352 ], [ %7463, %7427 ]
  %7431 = mul i32 %7430, 2
  %7432 = add i32 0, %7431
  %7433 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7432
  %7434 = load float, float* %7433, align 4
  %7435 = mul i32 %7430, 2
  %7436 = add i32 1, %7435
  %7437 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7436
  %7438 = load float, float* %7437, align 4
  %7439 = fmul fast float %7422, %7434
  %7440 = call float @dx.op.tertiary.f32(i32 46, float %7438, float %7425, float %7439)  ; FMad(a,b,c)
  %7441 = fmul fast float %7434, %7423
  %7442 = call float @dx.op.tertiary.f32(i32 46, float %7438, float %7426, float %7441)  ; FMad(a,b,c)
  %7443 = fadd fast float %7440, %7415
  %7444 = fadd fast float %7442, %7416
  %7445 = fmul fast float %7443, %7361
  %7446 = fmul fast float %7444, %7361
  %7447 = call float @dx.op.binary.f32(i32 35, float %7445, float %7357)  ; FMax(a,b)
  %7448 = call float @dx.op.binary.f32(i32 35, float %7446, float %7357)  ; FMax(a,b)
  %7449 = call float @dx.op.binary.f32(i32 36, float %7447, float %7358)  ; FMin(a,b)
  %7450 = call float @dx.op.binary.f32(i32 36, float %7448, float %7358)  ; FMin(a,b)
  %7451 = fadd fast float %7449, %7355
  %7452 = fadd fast float %7450, %7356
  %7453 = uitofp i32 %7392 to float
  %7454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %58, float %7451, float %7452, float %7453, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7455 = extractvalue %dx.types.ResRet.f32 %7454, 0
  %7456 = fsub fast float %7455, %7418
  %7457 = fsub fast float %7456, %7365
  %7458 = fcmp fast ogt float %7457, 0.000000e+00
  %7459 = select i1 %7458, float 1.000000e+00, float 0.000000e+00
  %7460 = fadd fast float %7459, %7428
  %7461 = select i1 %7458, float %7457, float 0.000000e+00
  %7462 = fadd fast float %7461, %7429
  %7463 = add nuw nsw i32 %7430, 1
  %7464 = icmp eq i32 %7463, 8
  br i1 %7464, label %7465, label %7427

; <label>:7465                                    ; preds = %7427
  %7466 = fdiv fast float 1.000000e+00, %7460
  %7467 = fmul fast float %7466, %7462
  %7468 = fdiv fast float 1.000000e+00, %7418
  %7469 = fmul fast float %7467, %7468
  %7470 = call float @dx.op.unary.f32(i32 7, float %7469)  ; Saturate(value)
  %7471 = call float @dx.op.binary.f32(i32 35, float %7470, float 0.000000e+00)  ; FMax(a,b)
  %7472 = fmul fast float %7460, 1.250000e-01
  %7473 = call float @dx.op.unary.f32(i32 7, float %7472)  ; Saturate(value)
  %7474 = fmul fast float %7473, 2.000000e+00
  %7475 = fadd fast float %7474, -1.000000e+00
  %7476 = fcmp fast ogt float %7475, 0.000000e+00
  %7477 = fcmp fast olt float %7475, 0.000000e+00
  %7478 = zext i1 %7476 to i32
  %7479 = zext i1 %7477 to i32
  %7480 = sub nsw i32 %7478, %7479
  %7481 = sitofp i32 %7480 to float
  %7482 = fmul fast float %7481, %7475
  %7483 = fsub fast float 1.000000e+00, %7482
  %7484 = fmul fast float %7483, %7483
  %7485 = fmul fast float %7484, %7483
  %7486 = fsub fast float %7483, %7485
  %7487 = fmul fast float %7486, %7471
  %7488 = fsub fast float 1.000000e+00, %7485
  %7489 = fsub fast float %7488, %7487
  %7490 = fmul fast float %7481, 5.000000e-01
  %7491 = fmul fast float %7490, %7489
  %7492 = fsub fast float -5.000000e-01, %7491
  %7493 = fmul fast float %7492, %7326
  %7494 = fadd fast float %7493, 1.000000e+00
  %7495 = fmul fast float %7494, %7338
  br label %7496

; <label>:7496                                    ; preds = %7465, %7350
  %7497 = phi float [ %7495, %7465 ], [ %7338, %7350 ]
  %7498 = call float @dx.op.binary.f32(i32 36, float %7497, float %7497)  ; FMin(a,b)
  %7499 = call float @dx.op.binary.f32(i32 36, float %7497, float %7498)  ; FMin(a,b)
  %7500 = fcmp fast ogt float %7499, 0.000000e+00
  br i1 %7500, label %7501, label %7342, !dx.controlflow.hints !140

; <label>:7501                                    ; preds = %7496
  %7502 = fmul fast float %7497, %7260
  %7503 = fmul fast float %7497, %7261
  %7504 = fmul fast float %7497, %7262
  %7505 = fsub fast float %7244, %3798
  %7506 = fcmp fast ogt float %7505, 0.000000e+00
  %7507 = fsub fast float %210, %3798
  %7508 = fcmp fast ogt float %7507, 0.000000e+00
  %7509 = xor i1 %7508, %7506
  %7510 = fsub fast float %3798, %7244
  %7511 = fmul fast float %7510, 2.000000e+00
  %7512 = fadd fast float %7511, %7244
  %7513 = select i1 %7509, float %7244, float %7512
  %7514 = fsub fast float %7513, %210
  %7515 = call float @dx.op.dot3.f32(i32 55, float %7270, float %7271, float %7514, float %7270, float %7271, float %7514)  ; Dot3(ax,ay,az,bx,by,bz)
  %7516 = call float @dx.op.unary.f32(i32 25, float %7515)  ; Rsqrt(value)
  %7517 = fmul fast float %7516, %7270
  %7518 = fmul fast float %7516, %7271
  %7519 = fmul fast float %7516, %7514
  %7520 = fsub fast float %3798, %210
  %7521 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7520)  ; Dot3(ax,ay,az,bx,by,bz)
  %7522 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7517, float %7518, float %7519)  ; Dot3(ax,ay,az,bx,by,bz)
  %7523 = fdiv fast float 1.000000e+00, %7522
  %7524 = fmul fast float %7523, %7521
  %7525 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7507, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7526 = fcmp fast ogt float %7525, 0.000000e+00
  %7527 = fcmp fast olt float %7525, 0.000000e+00
  %7528 = zext i1 %7526 to i32
  %7529 = zext i1 %7527 to i32
  %7530 = sub nsw i32 %7528, %7529
  %7531 = sitofp i32 %7530 to float
  %7532 = fsub fast float %7513, %3798
  %7533 = call float @dx.op.dot3.f32(i32 55, float %7270, float %7271, float %7532, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7534 = fcmp fast ogt float %7533, 0.000000e+00
  %7535 = fcmp fast olt float %7533, 0.000000e+00
  %7536 = zext i1 %7534 to i32
  %7537 = zext i1 %7535 to i32
  %7538 = sub nsw i32 %7536, %7537
  %7539 = sitofp i32 %7538 to float
  %7540 = fcmp fast une float %7531, %7539
  br i1 %7540, label %7541, label %7551

; <label>:7541                                    ; preds = %7501
  %7542 = fmul fast float %7524, %7519
  %7543 = fmul fast float %7524, %7518
  %7544 = fmul fast float %7524, %7517
  %7545 = fmul fast float %7544, %7544
  %7546 = fmul fast float %7543, %7543
  %7547 = fadd fast float %7545, %7546
  %7548 = fmul fast float %7542, %7542
  %7549 = fadd fast float %7547, %7548
  %7550 = call float @dx.op.unary.f32(i32 24, float %7549)  ; Sqrt(value)
  br label %7563

; <label>:7551                                    ; preds = %7501
  %7552 = icmp slt i32 %7530, 0
  br i1 %7552, label %7553, label %7563

; <label>:7553                                    ; preds = %7551
  %7554 = fsub fast float %208, %7242
  %7555 = fsub fast float %209, %7243
  %7556 = fsub fast float %210, %7513
  %7557 = fmul fast float %7554, %7554
  %7558 = fmul fast float %7555, %7555
  %7559 = fadd fast float %7557, %7558
  %7560 = fmul fast float %7556, %7556
  %7561 = fadd fast float %7559, %7560
  %7562 = call float @dx.op.unary.f32(i32 24, float %7561)  ; Sqrt(value)
  br label %7563

; <label>:7563                                    ; preds = %7553, %7551, %7541
  %7564 = phi float [ %7550, %7541 ], [ %7562, %7553 ], [ 0.000000e+00, %7551 ]
  %7565 = and i1 %7508, %7506
  %7566 = fsub fast float -0.000000e+00, %7564
  %7567 = select i1 %7565, float -0.000000e+00, float %7566
  %7568 = fmul fast float %3799, 0x3FF7154760000000
  %7569 = fmul fast float %7568, %7567
  %7570 = fmul fast float %3800, 0x3FF7154760000000
  %7571 = fmul fast float %7570, %7567
  %7572 = fmul fast float %3801, 0x3FF7154760000000
  %7573 = fmul fast float %7572, %7567
  %7574 = call float @dx.op.unary.f32(i32 21, float %7569)  ; Exp(value)
  %7575 = call float @dx.op.unary.f32(i32 21, float %7571)  ; Exp(value)
  %7576 = call float @dx.op.unary.f32(i32 21, float %7573)  ; Exp(value)
  %7577 = call float @dx.op.unary.f32(i32 7, float %7574)  ; Saturate(value)
  %7578 = call float @dx.op.unary.f32(i32 7, float %7575)  ; Saturate(value)
  %7579 = call float @dx.op.unary.f32(i32 7, float %7576)  ; Saturate(value)
  %7580 = fmul fast float %7502, %7577
  %7581 = fmul fast float %7503, %7578
  %7582 = fmul fast float %7504, %7579
  %7583 = fsub fast float %7276, %4624
  %7584 = fsub fast float %7277, %4625
  %7585 = fsub fast float %7278, %4626
  %7586 = call float @dx.op.dot3.f32(i32 55, float %7583, float %7584, float %7585, float %7583, float %7584, float %7585)  ; Dot3(ax,ay,az,bx,by,bz)
  %7587 = call float @dx.op.unary.f32(i32 25, float %7586)  ; Rsqrt(value)
  %7588 = fmul fast float %7587, %7583
  %7589 = fmul fast float %7587, %7584
  %7590 = fmul fast float %7587, %7585
  %7591 = call float @dx.op.dot3.f32(i32 55, float %7276, float %7277, float %7278, float %4581, float %4582, float %4583)  ; Dot3(ax,ay,az,bx,by,bz)
  %7592 = call float @dx.op.dot3.f32(i32 55, float %4627, float %4628, float %4629, float %7588, float %7589, float %7590)  ; Dot3(ax,ay,az,bx,by,bz)
  %7593 = call float @dx.op.unary.f32(i32 7, float %7591)  ; Saturate(value)
  %7594 = fmul fast float %7593, %7283
  %7595 = bitcast i32 %4656 to float
  %7596 = fmul fast float %7593, %7593
  %7597 = fmul fast float %7596, %7595
  %7598 = call float @dx.op.unary.f32(i32 7, float %7597)  ; Saturate(value)
  %7599 = fmul fast float %7594, %7598
  %7600 = bitcast float %7273 to i32
  %7601 = ashr i32 %7600, 1
  %7602 = sub nsw i32 1597463007, %7601
  %7603 = bitcast i32 %7602 to float
  %7604 = fmul fast float %7603, %7270
  %7605 = fmul fast float %7603, %7271
  %7606 = fmul fast float %7603, %7272
  %7607 = fsub fast float %7604, %4624
  %7608 = fsub fast float %7605, %4625
  %7609 = fsub fast float %7606, %4626
  %7610 = call float @dx.op.dot3.f32(i32 55, float %7607, float %7608, float %7609, float %7607, float %7608, float %7609)  ; Dot3(ax,ay,az,bx,by,bz)
  %7611 = call float @dx.op.unary.f32(i32 25, float %7610)  ; Rsqrt(value)
  %7612 = fmul fast float %7607, %7611
  %7613 = fmul fast float %7608, %7611
  %7614 = fmul fast float %7609, %7611
  %7615 = call float @dx.op.dot3.f32(i32 55, float %4581, float %4582, float %4583, float %7612, float %7613, float %7614)  ; Dot3(ax,ay,az,bx,by,bz)
  %7616 = fmul fast float %7615, %7615
  %7617 = call float @dx.op.unary.f32(i32 6, float %7591)  ; FAbs(value)
  %7618 = fsub fast float 1.000000e+00, %4650
  %7619 = fmul fast float %4632, %4632
  %7620 = fmul fast float %7619, %7618
  %7621 = fadd fast float %7620, %4650
  %7622 = bitcast float %7621 to i32
  %7623 = ashr i32 %7622, 1
  %7624 = add nsw i32 %7623, 532487669
  %7625 = bitcast i32 %7624 to float
  %7626 = fadd fast float %7625, %4632
  %7627 = fmul fast float %4650, %7616
  %7628 = fsub fast float 1.000000e+00, %7616
  %7629 = fadd fast float %7628, %7627
  %7630 = fmul fast float %7617, %7617
  %7631 = fmul fast float %7630, %7618
  %7632 = fadd fast float %7631, %4650
  %7633 = bitcast float %7632 to i32
  %7634 = ashr i32 %7633, 1
  %7635 = add nsw i32 %7634, 532487669
  %7636 = bitcast i32 %7635 to float
  %7637 = fadd fast float %7636, %7617
  %7638 = fmul fast float %7629, %7629
  %7639 = fmul fast float %7638, %7626
  %7640 = fmul fast float %7639, %7637
  %7641 = fdiv fast float 1.000000e+00, %7640
  %7642 = bitcast float %4650 to i32
  %7643 = sitofp i32 %7642 to float
  %7644 = fmul fast float %7643, 0x3FE7F73180000000
  %7645 = fadd fast float %7644, 0x41AFE27C40000000
  %7646 = fptosi float %7645 to i32
  %7647 = bitcast i32 %7646 to float
  %7648 = fmul fast float %7239, 0x3FD80E9D60000000
  %7649 = fmul fast float %7648, %7603
  %7650 = fadd fast float %7647, %7649
  %7651 = bitcast float %7650 to i32
  %7652 = sub nsw i32 2129859010, %7651
  %7653 = bitcast i32 %7652 to float
  %7654 = fmul fast float %4650, %7641
  %7655 = fmul fast float %7654, %7647
  %7656 = fmul fast float %7655, %7653
  %7657 = call float @dx.op.unary.f32(i32 6, float %7592)  ; FAbs(value)
  %7658 = fsub fast float 1.000000e+00, %7657
  %7659 = bitcast float %7658 to i32
  %7660 = sitofp i32 %7659 to float
  %7661 = fmul fast float %7660, 5.000000e+00
  %7662 = fadd fast float %7661, 0xC1EFBF8940000000
  %7663 = fptosi float %7662 to i32
  %7664 = bitcast i32 %7663 to float
  %7665 = fsub fast float 1.000000e+00, %4584
  %7666 = fsub fast float 1.000000e+00, %4585
  %7667 = fsub fast float 1.000000e+00, %4630
  %7668 = fmul fast float %7664, %7665
  %7669 = fmul fast float %7664, %7666
  %7670 = fmul fast float %7664, %7667
  %7671 = fadd fast float %7668, %4584
  %7672 = fadd fast float %7669, %4585
  %7673 = fadd fast float %7670, %4630
  br i1 %4772, label %7674, label %7697

; <label>:7674                                    ; preds = %7563
  %7675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %57, float %3396, float %7657, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7676 = extractvalue %dx.types.ResRet.f32 %7675, 0
  %7677 = extractvalue %dx.types.ResRet.f32 %7675, 1
  %7678 = extractvalue %dx.types.ResRet.f32 %7675, 2
  %7679 = fadd fast float %7676, -5.000000e-01
  %7680 = fadd fast float %7677, -5.000000e-01
  %7681 = fadd fast float %7678, -5.000000e-01
  %7682 = fmul fast float %4584, 4.000000e+00
  %7683 = fmul fast float %7682, %7665
  %7684 = fmul fast float %7683, %7679
  %7685 = fmul fast float %4585, 4.000000e+00
  %7686 = fmul fast float %7685, %7666
  %7687 = fmul fast float %7686, %7680
  %7688 = fmul fast float %4630, 4.000000e+00
  %7689 = fmul fast float %7688, %7667
  %7690 = fmul fast float %7689, %7681
  %7691 = fadd fast float %7684, %7671
  %7692 = fadd fast float %7687, %7672
  %7693 = fadd fast float %7690, %7673
  %7694 = call float @dx.op.unary.f32(i32 7, float %7691)  ; Saturate(value)
  %7695 = call float @dx.op.unary.f32(i32 7, float %7692)  ; Saturate(value)
  %7696 = call float @dx.op.unary.f32(i32 7, float %7693)  ; Saturate(value)
  br label %7697

; <label>:7697                                    ; preds = %7674, %7563
  %7698 = phi float [ %7694, %7674 ], [ %7671, %7563 ]
  %7699 = phi float [ %7695, %7674 ], [ %7672, %7563 ]
  %7700 = phi float [ %7696, %7674 ], [ %7673, %7563 ]
  %7701 = fmul fast float %7591, 9.843750e-01
  %7702 = fadd fast float %7701, 7.812500e-03
  %7703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %57, float %7702, float %4762, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7704 = extractvalue %dx.types.ResRet.f32 %7703, 2
  %7705 = extractvalue %dx.types.ResRet.f32 %7703, 3
  %7706 = fmul fast float %7704, %4584
  %7707 = fmul fast float %7704, %4585
  %7708 = fmul fast float %7704, %4630
  %7709 = fadd fast float %7706, %7705
  %7710 = fadd fast float %7707, %7705
  %7711 = fadd fast float %7708, %7705
  br i1 %4772, label %7712, label %7735

; <label>:7712                                    ; preds = %7697
  %7713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %57, float %3396, float %7591, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7714 = extractvalue %dx.types.ResRet.f32 %7713, 0
  %7715 = extractvalue %dx.types.ResRet.f32 %7713, 1
  %7716 = extractvalue %dx.types.ResRet.f32 %7713, 2
  %7717 = fadd fast float %7714, -5.000000e-01
  %7718 = fadd fast float %7715, -5.000000e-01
  %7719 = fadd fast float %7716, -5.000000e-01
  %7720 = fmul fast float %4584, 4.000000e+00
  %7721 = fmul fast float %7720, %7665
  %7722 = fmul fast float %7721, %7717
  %7723 = fmul fast float %4585, 4.000000e+00
  %7724 = fmul fast float %7723, %7666
  %7725 = fmul fast float %7724, %7718
  %7726 = fmul fast float %4630, 4.000000e+00
  %7727 = fmul fast float %7726, %7667
  %7728 = fmul fast float %7727, %7719
  %7729 = fadd fast float %7722, %7709
  %7730 = fadd fast float %7725, %7710
  %7731 = fadd fast float %7728, %7711
  %7732 = call float @dx.op.unary.f32(i32 7, float %7729)  ; Saturate(value)
  %7733 = call float @dx.op.unary.f32(i32 7, float %7730)  ; Saturate(value)
  %7734 = call float @dx.op.unary.f32(i32 7, float %7731)  ; Saturate(value)
  br label %7735

; <label>:7735                                    ; preds = %7712, %7697
  %7736 = phi float [ %7732, %7712 ], [ %7709, %7697 ]
  %7737 = phi float [ %7733, %7712 ], [ %7710, %7697 ]
  %7738 = phi float [ %7734, %7712 ], [ %7711, %7697 ]
  %7739 = call float @dx.op.binary.f32(i32 35, float %7737, float %7738)  ; FMax(a,b)
  %7740 = call float @dx.op.binary.f32(i32 35, float %7736, float %7739)  ; FMax(a,b)
  %7741 = fsub fast float 1.000000e+00, %7740
  %7742 = fmul fast float %7698, %7656
  %7743 = fmul fast float %7699, %7656
  %7744 = fmul fast float %7700, %7656
  %7745 = fsub fast float 1.000000e+00, %7592
  %7746 = bitcast float %7745 to i32
  %7747 = sitofp i32 %7746 to float
  %7748 = fmul fast float %7747, 5.000000e+00
  %7749 = fadd fast float %7748, 0xC1EFBF8940000000
  %7750 = fptosi float %7749 to i32
  %7751 = bitcast i32 %7750 to float
  %7752 = fmul fast float %7751, %3397
  %7753 = fmul fast float %7741, %7752
  %7754 = fmul fast float %7753, %5367
  %7755 = fmul fast float %7753, %5368
  %7756 = fmul fast float %7753, %5369
  %7757 = fadd fast float %7754, %7742
  %7758 = fadd fast float %7755, %7743
  %7759 = fadd fast float %7756, %7744
  %7760 = fmul fast float %7580, %3393
  %7761 = fmul fast float %7760, %7599
  %7762 = fmul fast float %7761, %7741
  %7763 = fmul fast float %7581, %3393
  %7764 = fmul fast float %7763, %7599
  %7765 = fmul fast float %7764, %7741
  %7766 = fmul fast float %7582, %3393
  %7767 = fmul fast float %7766, %7599
  %7768 = fmul fast float %7767, %7741
  %7769 = fadd fast float %7762, %7213
  %7770 = fadd fast float %7765, %7214
  %7771 = fadd fast float %7768, %7215
  %7772 = fmul fast float %7761, %7757
  %7773 = fmul fast float %7764, %7758
  %7774 = fmul fast float %7767, %7759
  %7775 = fadd fast float %7772, %7210
  %7776 = fadd fast float %7773, %7211
  %7777 = fadd fast float %7774, %7212
  br label %7342

; <label>:7778                                    ; preds = %7342
  br label %7779

; <label>:7779                                    ; preds = %7778, %7176
  %7780 = phi float [ %7178, %7176 ], [ %7343, %7778 ]
  %7781 = phi float [ %7179, %7176 ], [ %7344, %7778 ]
  %7782 = phi float [ %7180, %7176 ], [ %7345, %7778 ]
  %7783 = phi float [ %7181, %7176 ], [ %7346, %7778 ]
  %7784 = phi float [ %7182, %7176 ], [ %7347, %7778 ]
  %7785 = phi float [ %7183, %7176 ], [ %7348, %7778 ]
  %7786 = add i32 %7177, 1
  %7787 = icmp ugt i32 %7786, %7173
  br i1 %7787, label %7788, label %7176

; <label>:7788                                    ; preds = %7779
  br label %7789

; <label>:7789                                    ; preds = %7788, %7126, %7116
  %7790 = phi float [ %7117, %7116 ], [ %7117, %7126 ], [ %7780, %7788 ]
  %7791 = phi float [ %7118, %7116 ], [ %7118, %7126 ], [ %7781, %7788 ]
  %7792 = phi float [ %7119, %7116 ], [ %7119, %7126 ], [ %7782, %7788 ]
  %7793 = phi float [ %7120, %7116 ], [ %7120, %7126 ], [ %7783, %7788 ]
  %7794 = phi float [ %7121, %7116 ], [ %7121, %7126 ], [ %7784, %7788 ]
  %7795 = phi float [ %7122, %7116 ], [ %7122, %7126 ], [ %7785, %7788 ]
  %7796 = fmul fast float %3393, %3393
  %7797 = fsub fast float 1.000000e+00, %7796
  %7798 = call float @dx.op.dot3.f32(i32 55, float %7797, float %7797, float %7797, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7799 = fsub fast float 1.000000e+00, %7798
  %7800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7801 = extractvalue %dx.types.CBufRet.f32 %7800, 0
  %7802 = fmul fast float %7801, %5383
  %7803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7804 = extractvalue %dx.types.CBufRet.f32 %7803, 3
  %7805 = fsub fast float 1.000000e+00, %3401
  %7806 = call float @dx.op.unary.f32(i32 7, float %7805)  ; Saturate(value)
  %7807 = fadd fast float %7795, %3399
  %7808 = fmul fast float %7807, %3401
  %7809 = fmul fast float %7806, %7804
  %7810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7811 = extractvalue %dx.types.CBufRet.f32 %7810, 3
  %7812 = fmul fast float %7793, %4578
  %7813 = fmul fast float %7794, %4579
  %7814 = fmul fast float %7795, %4580
  %7815 = fcmp fast ogt float %108, %241
  %7816 = and i1 %7815, %3804
  %7817 = or i1 %3810, %7816
  %7818 = icmp eq i32 %3803, 2
  %7819 = fcmp fast ole float %108, %241
  %7820 = and i1 %7819, %7818
  %7821 = or i1 %7820, %7817
  br i1 %7816, label %7822, label %8079

; <label>:7822                                    ; preds = %7789
  %7823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7824 = extractvalue %dx.types.CBufRet.f32 %7823, 2
  %7825 = extractvalue %dx.types.CBufRet.f32 %7823, 3
  %7826 = fmul fast float %7824, %121
  %7827 = fmul fast float %7825, %122
  %7828 = call float @dx.op.unary.f32(i32 7, float %7826)  ; Saturate(value)
  %7829 = call float @dx.op.unary.f32(i32 7, float %7827)  ; Saturate(value)
  %7830 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %57, float %7828, float %7829, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7831 = extractvalue %dx.types.ResRet.f32 %7830, 0
  %7832 = extractvalue %dx.types.ResRet.f32 %7830, 1
  %7833 = extractvalue %dx.types.ResRet.f32 %7830, 2
  %7834 = extractvalue %dx.types.ResRet.f32 %7830, 3
  %7835 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %57, float %7828, float %7829, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7836 = extractvalue %dx.types.ResRet.f32 %7835, 0
  %7837 = extractvalue %dx.types.ResRet.f32 %7835, 1
  %7838 = extractvalue %dx.types.ResRet.f32 %7835, 2
  %7839 = extractvalue %dx.types.ResRet.f32 %7835, 3
  %7840 = call float @dx.op.binary.f32(i32 35, float %7832, float %7833)  ; FMax(a,b)
  %7841 = call float @dx.op.binary.f32(i32 35, float %7831, float %7840)  ; FMax(a,b)
  %7842 = call float @dx.op.binary.f32(i32 35, float %7841, float %7834)  ; FMax(a,b)
  %7843 = call float @dx.op.binary.f32(i32 36, float %7837, float %7838)  ; FMin(a,b)
  %7844 = call float @dx.op.binary.f32(i32 36, float %7836, float %7843)  ; FMin(a,b)
  %7845 = call float @dx.op.binary.f32(i32 36, float %7844, float %7839)  ; FMin(a,b)
  %7846 = fmul fast float %7842, 2.550000e+02
  %7847 = fadd fast float %7846, 0x3F70101020000000
  %7848 = fptoui float %7847 to i32
  %7849 = fmul fast float %7845, 2.550000e+02
  %7850 = fadd fast float %7849, 0x3F70101020000000
  %7851 = fptoui float %7850 to i32
  %7852 = icmp ult i32 %7848, %7851
  br i1 %7852, label %7853, label %8021

; <label>:7853                                    ; preds = %7822
  %7854 = fcmp fast ogt float %107, 9.843750e-01
  %7855 = fadd fast float %108, -4.000000e+00
  %7856 = select i1 %7854, float -4.000000e+00, float %7855
  %7857 = call float @dx.op.binary.f32(i32 35, float %7856, float 0.000000e+00)  ; FMax(a,b)
  %7858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7859 = extractvalue %dx.types.CBufRet.f32 %7858, 0
  %7860 = fadd fast float %7859, %7857
  %7861 = extractvalue %dx.types.CBufRet.f32 %7858, 2
  %7862 = fmul fast float %7860, %7861
  %7863 = call float @dx.op.unary.f32(i32 23, float %7862)  ; Log(value)
  %7864 = extractvalue %dx.types.CBufRet.f32 %7858, 3
  %7865 = fmul fast float %7864, %7863
  %7866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7867 = extractvalue %dx.types.CBufRet.f32 %7866, 2
  %7868 = fmul fast float %7865, %7867
  %7869 = call float @dx.op.unary.f32(i32 7, float %7868)  ; Saturate(value)
  %7870 = uitofp i32 %7848 to float
  %7871 = uitofp i32 %7851 to float
  %7872 = fadd fast float %7870, 5.000000e-01
  %7873 = fadd fast float %7871, 5.000000e-01
  %7874 = fmul fast float %7867, %7872
  %7875 = fmul fast float %7867, %7873
  %7876 = fadd fast float %7874, 0x3F0FFB4800000000
  %7877 = fadd fast float %7875, 0xBF0FFB4800000000
  %7878 = call float @dx.op.binary.f32(i32 35, float %7869, float %7876)  ; FMax(a,b)
  %7879 = call float @dx.op.binary.f32(i32 36, float %7878, float %7877)  ; FMin(a,b)
  %7880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7881 = extractvalue %dx.types.CBufRet.f32 %7880, 1
  %7882 = extractvalue %dx.types.CBufRet.f32 %7880, 2
  %7883 = extractvalue %dx.types.CBufRet.f32 %7880, 0
  %7884 = fmul fast float %7881, %7879
  %7885 = fadd fast float %7883, %7884
  %7886 = fadd fast float %7883, %7882
  %7887 = fsub fast float %7881, %7882
  %7888 = fadd fast float %7887, %7883
  %7889 = call float @dx.op.binary.f32(i32 35, float %7885, float %7886)  ; FMax(a,b)
  %7890 = call float @dx.op.binary.f32(i32 36, float %7889, float %7888)  ; FMin(a,b)
  %7891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %55, float %7828, float %7829, float %7890, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7892 = extractvalue %dx.types.ResRet.f32 %7891, 0
  %7893 = extractvalue %dx.types.ResRet.f32 %7891, 1
  %7894 = extractvalue %dx.types.ResRet.f32 %7891, 2
  %7895 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7896 = extractvalue %dx.types.CBufRet.i32 %7895, 0
  %7897 = extractvalue %dx.types.CBufRet.i32 %7895, 1
  %7898 = uitofp i32 %7896 to float
  %7899 = uitofp i32 %7897 to float
  %7900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7901 = extractvalue %dx.types.CBufRet.f32 %7900, 0
  %7902 = extractvalue %dx.types.CBufRet.f32 %7900, 1
  %7903 = fmul fast float %7898, %7828
  %7904 = fmul fast float %7899, %7829
  %7905 = fadd fast float %7903, -5.000000e-01
  %7906 = fadd fast float %7904, -5.000000e-01
  %7907 = call float @dx.op.unary.f32(i32 22, float %7905)  ; Frc(value)
  %7908 = call float @dx.op.unary.f32(i32 22, float %7906)  ; Frc(value)
  %7909 = fmul fast float %7907, %7907
  %7910 = fmul fast float %7909, %7907
  %7911 = fsub fast float 3.000000e+00, %7907
  %7912 = fmul fast float %7909, %7911
  %7913 = fmul fast float %7907, 3.000000e+00
  %7914 = fmul fast float %7910, 3.000000e+00
  %7915 = fmul fast float %7909, 6.000000e+00
  %7916 = fsub fast float %7914, %7915
  %7917 = fadd fast float %7916, 4.000000e+00
  %7918 = fmul fast float %7917, 0x3FC5555560000000
  %7919 = fmul fast float %7910, -3.000000e+00
  %7920 = fadd fast float %7909, %7907
  %7921 = fmul fast float %7920, 3.000000e+00
  %7922 = fadd fast float %7919, 1.000000e+00
  %7923 = fadd fast float %7922, %7921
  %7924 = fmul fast float %7910, 0x3FC5555560000000
  %7925 = fmul fast float %7908, %7908
  %7926 = fmul fast float %7925, %7908
  %7927 = fsub fast float 3.000000e+00, %7908
  %7928 = fmul fast float %7925, %7927
  %7929 = fmul fast float %7908, 3.000000e+00
  %7930 = fmul fast float %7926, 3.000000e+00
  %7931 = fmul fast float %7925, 6.000000e+00
  %7932 = fsub fast float %7930, %7931
  %7933 = fadd fast float %7932, 4.000000e+00
  %7934 = fmul fast float %7933, 0x3FC5555560000000
  %7935 = fmul fast float %7926, -3.000000e+00
  %7936 = fadd fast float %7925, %7908
  %7937 = fmul fast float %7936, 3.000000e+00
  %7938 = fadd fast float %7935, 1.000000e+00
  %7939 = fadd fast float %7938, %7937
  %7940 = fmul fast float %7926, 0x3FC5555560000000
  %7941 = fadd fast float %7907, 1.000000e+00
  %7942 = fsub fast float 1.000000e+00, %7913
  %7943 = fadd fast float %7942, %7912
  %7944 = fadd fast float %7943, %7917
  %7945 = fmul fast float %7944, 0x3FC5555560000000
  %7946 = fdiv fast float %7918, %7945
  %7947 = fsub fast float %7941, %7946
  %7948 = fsub fast float 1.000000e+00, %7907
  %7949 = fadd fast float %7923, %7910
  %7950 = fmul fast float %7949, 0x3FC5555560000000
  %7951 = fdiv fast float %7924, %7950
  %7952 = fadd fast float %7948, %7951
  %7953 = fadd fast float %7908, 1.000000e+00
  %7954 = fsub fast float 1.000000e+00, %7929
  %7955 = fadd fast float %7954, %7928
  %7956 = fadd fast float %7955, %7933
  %7957 = fmul fast float %7956, 0x3FC5555560000000
  %7958 = fdiv fast float %7934, %7957
  %7959 = fsub fast float %7953, %7958
  %7960 = fsub fast float 1.000000e+00, %7908
  %7961 = fadd fast float %7939, %7926
  %7962 = fmul fast float %7961, 0x3FC5555560000000
  %7963 = fdiv fast float %7940, %7962
  %7964 = fadd fast float %7963, %7960
  %7965 = fmul fast float %7947, %7901
  %7966 = fsub fast float %7828, %7965
  %7967 = fmul fast float %7952, %7901
  %7968 = fadd fast float %7967, %7828
  %7969 = fmul fast float %7964, %7902
  %7970 = fadd fast float %7969, %7829
  %7971 = fmul fast float %7959, %7902
  %7972 = fsub fast float %7829, %7971
  %7973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %7966, float %7972, float %7890, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7974 = extractvalue %dx.types.ResRet.f32 %7973, 0
  %7975 = extractvalue %dx.types.ResRet.f32 %7973, 1
  %7976 = extractvalue %dx.types.ResRet.f32 %7973, 2
  %7977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %7968, float %7972, float %7890, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7978 = extractvalue %dx.types.ResRet.f32 %7977, 0
  %7979 = extractvalue %dx.types.ResRet.f32 %7977, 1
  %7980 = extractvalue %dx.types.ResRet.f32 %7977, 2
  %7981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %7966, float %7970, float %7890, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7982 = extractvalue %dx.types.ResRet.f32 %7981, 0
  %7983 = extractvalue %dx.types.ResRet.f32 %7981, 1
  %7984 = extractvalue %dx.types.ResRet.f32 %7981, 2
  %7985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %7968, float %7970, float %7890, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7986 = extractvalue %dx.types.ResRet.f32 %7985, 0
  %7987 = extractvalue %dx.types.ResRet.f32 %7985, 1
  %7988 = extractvalue %dx.types.ResRet.f32 %7985, 2
  %7989 = fsub fast float %7982, %7974
  %7990 = fsub fast float %7983, %7975
  %7991 = fsub fast float %7984, %7976
  %7992 = fmul fast float %7989, %7962
  %7993 = fmul fast float %7990, %7962
  %7994 = fmul fast float %7991, %7962
  %7995 = fadd fast float %7992, %7974
  %7996 = fadd fast float %7993, %7975
  %7997 = fadd fast float %7994, %7976
  %7998 = fsub fast float %7986, %7978
  %7999 = fsub fast float %7987, %7979
  %8000 = fsub fast float %7988, %7980
  %8001 = fmul fast float %7998, %7962
  %8002 = fmul fast float %7999, %7962
  %8003 = fmul fast float %8000, %7962
  %8004 = fsub fast float %7978, %7995
  %8005 = fadd fast float %8004, %8001
  %8006 = fsub fast float %7979, %7996
  %8007 = fadd fast float %8006, %8002
  %8008 = fsub fast float %7980, %7997
  %8009 = fadd fast float %8008, %8003
  %8010 = fmul fast float %8005, %7950
  %8011 = fmul fast float %8007, %7950
  %8012 = fmul fast float %8009, %7950
  %8013 = fadd fast float %8010, %7995
  %8014 = fadd fast float %8011, %7996
  %8015 = fadd fast float %8012, %7997
  %8016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8017 = extractvalue %dx.types.CBufRet.f32 %8016, 1
  %8018 = fmul fast float %8013, %8017
  %8019 = fmul fast float %8014, %8017
  %8020 = fmul fast float %8015, %8017
  br label %8021

; <label>:8021                                    ; preds = %7853, %7822
  %8022 = phi float [ %7892, %7853 ], [ 1.000000e+00, %7822 ]
  %8023 = phi float [ %7893, %7853 ], [ 1.000000e+00, %7822 ]
  %8024 = phi float [ %7894, %7853 ], [ 1.000000e+00, %7822 ]
  %8025 = phi float [ %8018, %7853 ], [ 0.000000e+00, %7822 ]
  %8026 = phi float [ %8019, %7853 ], [ 0.000000e+00, %7822 ]
  %8027 = phi float [ %8020, %7853 ], [ 0.000000e+00, %7822 ]
  %8028 = fmul fast float %8025, %7799
  %8029 = fmul fast float %8026, %7799
  %8030 = fmul fast float %8027, %7799
  %8031 = call float @dx.op.dot3.f32(i32 55, float %8022, float %8023, float %8024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8032 = call float @dx.op.dot3.f32(i32 55, float %8028, float %8029, float %8030, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8033 = select i1 %278, float %8031, float %8022
  %8034 = select i1 %278, float %8031, float %8023
  %8035 = select i1 %278, float 1.000000e+00, float %8024
  %8036 = select i1 %278, float %8032, float %8028
  %8037 = select i1 %278, float 0.000000e+00, float %8029
  %8038 = select i1 %278, float 0.000000e+00, float %8030
  %8039 = fmul fast float %8033, %7812
  %8040 = fmul fast float %8034, %7813
  %8041 = fmul fast float %8035, %7814
  %8042 = fadd fast float %8039, %8036
  %8043 = fadd fast float %8040, %8037
  %8044 = fadd fast float %8038, %8041
  %8045 = fmul fast float %8033, %7790
  %8046 = fmul fast float %8034, %7791
  %8047 = fmul fast float %8035, %7792
  %8048 = fmul fast float %157, %7824
  %8049 = fmul fast float %159, %7825
  %8050 = fsub fast float 1.000000e+00, %8048
  %8051 = fsub fast float 1.000000e+00, %8049
  %8052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8053 = extractvalue %dx.types.CBufRet.f32 %8052, 0
  %8054 = extractvalue %dx.types.CBufRet.f32 %8052, 1
  %8055 = extractvalue %dx.types.CBufRet.f32 %8052, 2
  %8056 = fmul fast float %8050, %8053
  %8057 = fmul fast float %8050, %8054
  %8058 = fmul fast float %8050, %8055
  %8059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8060 = extractvalue %dx.types.CBufRet.f32 %8059, 0
  %8061 = extractvalue %dx.types.CBufRet.f32 %8059, 1
  %8062 = extractvalue %dx.types.CBufRet.f32 %8059, 2
  %8063 = fmul fast float %8051, %8060
  %8064 = fmul fast float %8051, %8061
  %8065 = fmul fast float %8051, %8062
  %8066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8067 = extractvalue %dx.types.CBufRet.f32 %8066, 0
  %8068 = extractvalue %dx.types.CBufRet.f32 %8066, 1
  %8069 = extractvalue %dx.types.CBufRet.f32 %8066, 2
  %8070 = fadd fast float %8063, %8067
  %8071 = fadd fast float %8070, %8056
  %8072 = fadd fast float %8064, %8068
  %8073 = fadd fast float %8072, %8057
  %8074 = fadd fast float %8065, %8069
  %8075 = fadd fast float %8074, %8058
  %8076 = fmul fast float %8071, %241
  %8077 = fmul fast float %8073, %241
  %8078 = fmul fast float %8075, %241
  br label %8079

; <label>:8079                                    ; preds = %8021, %7789
  %8080 = phi float [ %8076, %8021 ], [ %208, %7789 ]
  %8081 = phi float [ %8077, %8021 ], [ %209, %7789 ]
  %8082 = phi float [ %8078, %8021 ], [ %210, %7789 ]
  %8083 = phi float [ %241, %8021 ], [ %108, %7789 ]
  %8084 = phi float [ %8042, %8021 ], [ %7812, %7789 ]
  %8085 = phi float [ %8043, %8021 ], [ %7813, %7789 ]
  %8086 = phi float [ %8044, %8021 ], [ %7814, %7789 ]
  %8087 = phi float [ %8045, %8021 ], [ %7790, %7789 ]
  %8088 = phi float [ %8046, %8021 ], [ %7791, %7789 ]
  %8089 = phi float [ %8047, %8021 ], [ %7792, %7789 ]
  %8090 = phi float [ %8022, %8021 ], [ 1.000000e+00, %7789 ]
  br i1 %7821, label %9245, label %8091

; <label>:8091                                    ; preds = %8079
  %8092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8093 = extractvalue %dx.types.CBufRet.f32 %8092, 0
  %8094 = extractvalue %dx.types.CBufRet.f32 %8092, 1
  %8095 = extractvalue %dx.types.CBufRet.f32 %8092, 2
  %8096 = extractvalue %dx.types.CBufRet.f32 %8092, 3
  %8097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8098 = extractvalue %dx.types.CBufRet.f32 %8097, 0
  %8099 = extractvalue %dx.types.CBufRet.f32 %8097, 1
  %8100 = extractvalue %dx.types.CBufRet.f32 %8097, 2
  %8101 = extractvalue %dx.types.CBufRet.f32 %8097, 3
  %8102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8103 = extractvalue %dx.types.CBufRet.f32 %8102, 0
  %8104 = extractvalue %dx.types.CBufRet.f32 %8102, 1
  %8105 = extractvalue %dx.types.CBufRet.f32 %8102, 2
  %8106 = extractvalue %dx.types.CBufRet.f32 %8102, 3
  %8107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8108 = extractvalue %dx.types.CBufRet.f32 %8107, 0
  %8109 = extractvalue %dx.types.CBufRet.f32 %8107, 1
  %8110 = extractvalue %dx.types.CBufRet.f32 %8107, 2
  %8111 = extractvalue %dx.types.CBufRet.f32 %8107, 3
  %8112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8113 = extractvalue %dx.types.CBufRet.f32 %8112, 3
  %8114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8115 = extractvalue %dx.types.CBufRet.f32 %8114, 3
  %8116 = extractvalue %dx.types.CBufRet.f32 %8114, 0
  %8117 = extractvalue %dx.types.CBufRet.f32 %8114, 1
  %8118 = extractvalue %dx.types.CBufRet.f32 %8114, 2
  %8119 = fcmp fast olt float %8118, -5.000000e-01
  %8120 = call float @dx.op.dot3.f32(i32 55, float %8080, float %8081, float %8082, float %8080, float %8081, float %8082)  ; Dot3(ax,ay,az,bx,by,bz)
  %8121 = call float @dx.op.unary.f32(i32 25, float %8120)  ; Rsqrt(value)
  %8122 = fmul fast float %8121, %8120
  %8123 = fmul fast float %8121, %8080
  %8124 = fmul fast float %8121, %8081
  %8125 = fmul fast float %8121, %8082
  %8126 = fadd fast float %8122, %8096
  %8127 = call float @dx.op.dot3.f32(i32 55, float %8123, float %8124, float %8125, float %8093, float %8094, float %8095)  ; Dot3(ax,ay,az,bx,by,bz)
  %8128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8129 = extractvalue %dx.types.CBufRet.i32 %8128, 1
  %8130 = and i32 %8129, 1
  %8131 = icmp ne i32 %8130, 0
  %8132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8133 = extractvalue %dx.types.CBufRet.f32 %8132, 2
  %8134 = fcmp fast ogt float %8133, 0.000000e+00
  %8135 = and i1 %8131, %8134
  br i1 %8135, label %8136, label %8542, !dx.controlflow.hints !141

; <label>:8136                                    ; preds = %8091
  %8137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8138 = extractvalue %dx.types.CBufRet.f32 %8137, 3
  %8139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8140 = extractvalue %dx.types.CBufRet.f32 %8139, 2
  %8141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8142 = extractvalue %dx.types.CBufRet.f32 %8141, 2
  %8143 = fsub fast float %8140, %8142
  %8144 = and i32 %8129, 2
  %8145 = extractvalue %dx.types.CBufRet.i32 %8128, 0
  %8146 = call i32 @dx.op.binary.i32(i32 40, i32 %8145, i32 3)  ; UMin(a,b)
  %8147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8148 = extractvalue %dx.types.CBufRet.f32 %8147, 0
  %8149 = extractvalue %dx.types.CBufRet.f32 %8147, 1
  %8150 = extractvalue %dx.types.CBufRet.f32 %8141, 0
  %8151 = extractvalue %dx.types.CBufRet.f32 %8141, 1
  %8152 = fsub fast float %8148, %8150
  %8153 = fsub fast float %8149, %8151
  %8154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8155 = extractvalue %dx.types.CBufRet.f32 %8154, 0
  %8156 = fcmp fast ogt float %8155, 0.000000e+00
  %8157 = fsub fast float -0.000000e+00, %8152
  %8158 = fsub fast float -0.000000e+00, %8153
  %8159 = call float @dx.op.dot2.f32(i32 54, float %8123, float %8124, float %8123, float %8124)  ; Dot2(ax,ay,bx,by)
  %8160 = call float @dx.op.dot2.f32(i32 54, float %8123, float %8124, float %8157, float %8158)  ; Dot2(ax,ay,bx,by)
  %8161 = fmul fast float %8160, 2.000000e+00
  %8162 = call float @dx.op.dot2.f32(i32 54, float %8157, float %8158, float %8157, float %8158)  ; Dot2(ax,ay,bx,by)
  %8163 = fmul fast float %8155, %8155
  %8164 = fsub fast float %8162, %8163
  %8165 = fmul fast float %8161, %8161
  %8166 = fmul fast float %8159, 4.000000e+00
  %8167 = fmul fast float %8166, %8164
  %8168 = fsub fast float %8165, %8167
  %8169 = fcmp fast ogt float %8168, 0.000000e+00
  br i1 %8169, label %8170, label %8185

; <label>:8170                                    ; preds = %8136
  %8171 = fcmp fast ogt float %8161, 0.000000e+00
  %8172 = call float @dx.op.unary.f32(i32 24, float %8168)  ; Sqrt(value)
  %8173 = fsub fast float -0.000000e+00, %8172
  %8174 = select i1 %8171, float %8172, float %8173
  %8175 = fadd fast float %8174, %8161
  %8176 = fmul float %8175, -5.000000e-01
  %8177 = fdiv fast float %8176, %8159
  %8178 = call float @dx.op.binary.f32(i32 35, float %8177, float 0.000000e+00)  ; FMax(a,b)
  %8179 = call float @dx.op.binary.f32(i32 36, float %8122, float %8178)  ; FMin(a,b)
  %8180 = fdiv fast float %8164, %8176
  %8181 = call float @dx.op.binary.f32(i32 35, float %8180, float 0.000000e+00)  ; FMax(a,b)
  %8182 = call float @dx.op.binary.f32(i32 36, float %8122, float %8181)  ; FMin(a,b)
  %8183 = call float @dx.op.binary.f32(i32 36, float %8179, float %8182)  ; FMin(a,b)
  %8184 = call float @dx.op.binary.f32(i32 35, float %8179, float %8182)  ; FMax(a,b)
  br label %8185

; <label>:8185                                    ; preds = %8170, %8136
  %8186 = phi float [ %8184, %8170 ], [ -1.000000e+00, %8136 ]
  %8187 = phi float [ %8183, %8170 ], [ -1.000000e+00, %8136 ]
  %8188 = phi i1 [ true, %8170 ], [ false, %8136 ]
  %8189 = and i1 %8156, %8188
  br i1 %8189, label %8190, label %8192

; <label>:8190                                    ; preds = %8185
  %8191 = fcmp fast oeq float %8187, %8186
  br i1 %8191, label %8495, label %8193

; <label>:8192                                    ; preds = %8185
  br i1 %8156, label %8495, label %8193

; <label>:8193                                    ; preds = %8192, %8190
  %8194 = phi float [ %8122, %8192 ], [ %8186, %8190 ]
  %8195 = phi float [ 0.000000e+00, %8192 ], [ %8187, %8190 ]
  %8196 = icmp ne i32 %8144, 0
  %8197 = fmul fast float %8194, %8125
  %8198 = fadd fast float %8197, %8138
  %8199 = fmul fast float %8198, %8194
  %8200 = select i1 %8196, float 0.000000e+00, float %8199
  %8201 = fcmp fast oeq float %8125, 0.000000e+00
  %8202 = fdiv fast float %8143, %8125
  %8203 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8202)  ; FMax(a,b)
  %8204 = select i1 %8201, float %8194, float %8203
  %8205 = call float @dx.op.binary.f32(i32 36, float %8194, float %8204)  ; FMin(a,b)
  %8206 = fcmp fast ogt float %8125, 0.000000e+00
  %8207 = fcmp fast olt float %8143, 0.000000e+00
  br i1 %8206, label %8208, label %8265

; <label>:8208                                    ; preds = %8193
  %8209 = icmp eq i32 %8144, 0
  br i1 %8207, label %8210, label %8254

; <label>:8210                                    ; preds = %8208
  %8211 = select i1 %8209, float %8194, float 0.000000e+00
  %8212 = fsub fast float -0.000000e+00, %8211
  %8213 = call float @dx.op.unary.f32(i32 6, float %8212)  ; FAbs(value)
  %8214 = fmul fast float %8211, %8125
  %8215 = fadd fast float %8214, %8138
  %8216 = fmul fast float %8213, %8215
  %8217 = fsub fast float %8200, %8216
  %8218 = fsub fast float %8194, %8213
  %8219 = select i1 %8209, float %8218, float 0.000000e+00
  %8220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8221 = extractvalue %dx.types.CBufRet.f32 %8220, 0
  %8222 = extractvalue %dx.types.CBufRet.f32 %8220, 1
  %8223 = extractvalue %dx.types.CBufRet.f32 %8220, 2
  %8224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8225 = extractvalue %dx.types.CBufRet.f32 %8224, 0
  %8226 = extractvalue %dx.types.CBufRet.f32 %8224, 1
  %8227 = extractvalue %dx.types.CBufRet.f32 %8224, 2
  %8228 = extractvalue %dx.types.CBufRet.f32 %8224, 3
  %8229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8230 = extractvalue %dx.types.CBufRet.f32 %8229, 3
  %8231 = call float @dx.op.binary.f32(i32 36, float %8217, float %8230)  ; FMin(a,b)
  %8232 = fmul fast float %8228, %8219
  %8233 = call float @dx.op.unary.f32(i32 7, float %8232)  ; Saturate(value)
  %8234 = fsub fast float %8225, %8221
  %8235 = fsub fast float %8226, %8222
  %8236 = fsub fast float %8227, %8223
  %8237 = fmul fast float %8233, %8234
  %8238 = fmul fast float %8233, %8235
  %8239 = fmul fast float %8233, %8236
  %8240 = fadd fast float %8237, %8221
  %8241 = fadd fast float %8238, %8222
  %8242 = fadd fast float %8239, %8223
  %8243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8244 = extractvalue %dx.types.CBufRet.f32 %8243, 0
  %8245 = extractvalue %dx.types.CBufRet.f32 %8243, 1
  %8246 = fadd fast float %8245, %8244
  %8247 = call float @dx.op.unary.f32(i32 7, float %8246)  ; Saturate(value)
  %8248 = extractvalue %dx.types.CBufRet.f32 %8243, 2
  %8249 = extractvalue %dx.types.CBufRet.f32 %8243, 3
  %8250 = fadd fast float %8249, %8248
  %8251 = call float @dx.op.unary.f32(i32 7, float %8250)  ; Saturate(value)
  %8252 = fmul fast float %8247, %8231
  %8253 = fmul fast float %8252, %8251
  br label %8495

; <label>:8254                                    ; preds = %8208
  br i1 %8209, label %8255, label %8276

; <label>:8255                                    ; preds = %8254
  %8256 = call float @dx.op.binary.f32(i32 36, float %8205, float %8195)  ; FMin(a,b)
  %8257 = fsub fast float %8205, %8256
  %8258 = fsub fast float %8257, %8194
  %8259 = call float @dx.op.unary.f32(i32 6, float %8258)  ; FAbs(value)
  %8260 = fadd fast float %8257, %8194
  %8261 = fmul fast float %8260, %8125
  %8262 = fadd fast float %8261, %8138
  %8263 = fmul fast float %8262, %8259
  %8264 = fsub fast float %8200, %8263
  br label %8276

; <label>:8265                                    ; preds = %8193
  br i1 %8207, label %8266, label %8276

; <label>:8266                                    ; preds = %8265
  %8267 = call float @dx.op.binary.f32(i32 35, float %8195, float %8205)  ; FMax(a,b)
  %8268 = icmp eq i32 %8144, 0
  %8269 = select i1 %8268, float %8205, float 0.000000e+00
  %8270 = fsub fast float -0.000000e+00, %8269
  %8271 = call float @dx.op.unary.f32(i32 6, float %8270)  ; FAbs(value)
  %8272 = fmul fast float %8269, %8125
  %8273 = fadd fast float %8272, %8138
  %8274 = fmul fast float %8271, %8273
  %8275 = fsub fast float %8200, %8274
  br label %8276

; <label>:8276                                    ; preds = %8266, %8265, %8255, %8254
  %8277 = phi float [ %8195, %8254 ], [ %8195, %8255 ], [ %8267, %8266 ], [ %8195, %8265 ]
  %8278 = phi float [ 0.000000e+00, %8254 ], [ %8259, %8255 ], [ %8271, %8266 ], [ 0.000000e+00, %8265 ]
  %8279 = phi float [ %8200, %8254 ], [ %8264, %8255 ], [ %8275, %8266 ], [ %8200, %8265 ]
  %8280 = phi float [ %8205, %8254 ], [ %8205, %8255 ], [ %8194, %8266 ], [ %8194, %8265 ]
  %8281 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 0
  store float -1.000000e+00, float* %8281, align 4, !tbaa !127, !noalias !142
  %8282 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 1
  store float -1.000000e+00, float* %8282, align 4, !tbaa !127, !noalias !142
  %8283 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 2
  store float -1.000000e+00, float* %8283, align 4, !tbaa !127, !noalias !142
  %8284 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 0
  store float -1.000000e+00, float* %8284, align 4, !tbaa !127, !noalias !142
  %8285 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 1
  store float -1.000000e+00, float* %8285, align 4, !tbaa !127, !noalias !142
  %8286 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 2
  store float -1.000000e+00, float* %8286, align 4, !tbaa !127, !noalias !142
  %8287 = icmp sgt i32 %8146, 0
  br i1 %8287, label %8288, label %8349

; <label>:8288                                    ; preds = %8276
  br label %8289

; <label>:8289                                    ; preds = %8338, %8288
  %8290 = phi i32 [ %8339, %8338 ], [ 0, %8288 ]
  %8291 = phi i32 [ %8340, %8338 ], [ 0, %8288 ]
  %8292 = add nuw i32 %8291, 171
  %8293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 %8292)  ; CBufferLoadLegacy(handle,regIndex)
  %8294 = extractvalue %dx.types.CBufRet.f32 %8293, 0
  %8295 = extractvalue %dx.types.CBufRet.f32 %8293, 1
  %8296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8297 = extractvalue %dx.types.CBufRet.f32 %8296, 0
  %8298 = extractvalue %dx.types.CBufRet.f32 %8296, 1
  %8299 = fsub fast float %8294, %8297
  %8300 = fsub fast float %8295, %8298
  %8301 = extractvalue %dx.types.CBufRet.f32 %8293, 2
  %8302 = fsub fast float -0.000000e+00, %8299
  %8303 = fsub fast float -0.000000e+00, %8300
  %8304 = call float @dx.op.dot2.f32(i32 54, float %8123, float %8124, float %8302, float %8303)  ; Dot2(ax,ay,bx,by)
  %8305 = fmul fast float %8304, 2.000000e+00
  %8306 = call float @dx.op.dot2.f32(i32 54, float %8302, float %8303, float %8302, float %8303)  ; Dot2(ax,ay,bx,by)
  %8307 = fmul fast float %8301, %8301
  %8308 = fsub fast float %8306, %8307
  %8309 = fmul fast float %8305, %8305
  %8310 = fmul fast float %8166, %8308
  %8311 = fsub fast float %8309, %8310
  %8312 = fcmp fast ogt float %8311, 0.000000e+00
  br i1 %8312, label %8313, label %8328

; <label>:8313                                    ; preds = %8289
  %8314 = fcmp fast ogt float %8305, 0.000000e+00
  %8315 = call float @dx.op.unary.f32(i32 24, float %8311)  ; Sqrt(value)
  %8316 = fsub fast float -0.000000e+00, %8315
  %8317 = select i1 %8314, float %8315, float %8316
  %8318 = fadd fast float %8317, %8305
  %8319 = fmul float %8318, -5.000000e-01
  %8320 = fdiv fast float %8319, %8159
  %8321 = call float @dx.op.binary.f32(i32 35, float %8320, float 0.000000e+00)  ; FMax(a,b)
  %8322 = call float @dx.op.binary.f32(i32 36, float %8194, float %8321)  ; FMin(a,b)
  %8323 = fdiv fast float %8308, %8319
  %8324 = call float @dx.op.binary.f32(i32 35, float %8323, float 0.000000e+00)  ; FMax(a,b)
  %8325 = call float @dx.op.binary.f32(i32 36, float %8194, float %8324)  ; FMin(a,b)
  %8326 = call float @dx.op.binary.f32(i32 36, float %8322, float %8325)  ; FMin(a,b)
  %8327 = call float @dx.op.binary.f32(i32 35, float %8322, float %8325)  ; FMax(a,b)
  br label %8328

; <label>:8328                                    ; preds = %8313, %8289
  %8329 = phi float [ %8327, %8313 ], [ -1.000000e+00, %8289 ]
  %8330 = phi float [ %8326, %8313 ], [ -1.000000e+00, %8289 ]
  %8331 = phi i1 [ true, %8313 ], [ false, %8289 ]
  br i1 %8331, label %8332, label %8338

; <label>:8332                                    ; preds = %8328
  %8333 = call float @dx.op.binary.f32(i32 35, float %8277, float %8330)  ; FMax(a,b)
  %8334 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %8291
  store float %8333, float* %8334, align 4, !tbaa !127, !noalias !142
  %8335 = call float @dx.op.binary.f32(i32 35, float %8277, float %8329)  ; FMax(a,b)
  %8336 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 %8291
  store float %8335, float* %8336, align 4, !tbaa !127, !noalias !142
  %8337 = add nsw i32 %8290, 1
  br label %8338

; <label>:8338                                    ; preds = %8332, %8328
  %8339 = phi i32 [ %8337, %8332 ], [ %8290, %8328 ]
  %8340 = add nuw nsw i32 %8291, 1
  %8341 = icmp eq i32 %8340, %8146
  br i1 %8341, label %8342, label %8289

; <label>:8342                                    ; preds = %8338
  %8343 = load float, float* %8283, align 4, !tbaa !127, !alias.scope !158, !noalias !161
  %8344 = load float, float* %8282, align 4, !tbaa !127, !alias.scope !164, !noalias !165
  %8345 = load float, float* %8281, align 4, !tbaa !127, !alias.scope !166, !noalias !167
  %8346 = load float, float* %8286, align 4, !tbaa !127, !alias.scope !168, !noalias !171
  %8347 = load float, float* %8285, align 4, !tbaa !127, !alias.scope !174, !noalias !175
  %8348 = load float, float* %8284, align 4, !tbaa !127, !alias.scope !176, !noalias !177
  br label %8349

; <label>:8349                                    ; preds = %8342, %8276
  %8350 = phi float [ -1.000000e+00, %8276 ], [ %8348, %8342 ]
  %8351 = phi float [ -1.000000e+00, %8276 ], [ %8347, %8342 ]
  %8352 = phi float [ -1.000000e+00, %8276 ], [ %8346, %8342 ]
  %8353 = phi float [ -1.000000e+00, %8276 ], [ %8345, %8342 ]
  %8354 = phi float [ -1.000000e+00, %8276 ], [ %8344, %8342 ]
  %8355 = phi float [ -1.000000e+00, %8276 ], [ %8343, %8342 ]
  %8356 = phi i32 [ 0, %8276 ], [ %8339, %8342 ]
  %8357 = call float @dx.op.binary.f32(i32 36, float %8354, float %8355)  ; FMin(a,b)
  %8358 = call float @dx.op.binary.f32(i32 36, float %8353, float %8357)  ; FMin(a,b)
  %8359 = call float @dx.op.binary.f32(i32 35, float %8353, float %8354)  ; FMax(a,b)
  %8360 = call float @dx.op.binary.f32(i32 36, float %8359, float %8355)  ; FMin(a,b)
  %8361 = call float @dx.op.binary.f32(i32 36, float %8353, float %8354)  ; FMin(a,b)
  %8362 = call float @dx.op.binary.f32(i32 35, float %8361, float %8360)  ; FMax(a,b)
  %8363 = call float @dx.op.binary.f32(i32 35, float %8354, float %8355)  ; FMax(a,b)
  %8364 = call float @dx.op.binary.f32(i32 35, float %8353, float %8363)  ; FMax(a,b)
  store float %8358, float* %8281, align 4, !tbaa !127, !alias.scope !166, !noalias !167
  store float %8362, float* %8282, align 4, !tbaa !127, !alias.scope !164, !noalias !165
  store float %8364, float* %8283, align 4, !tbaa !127, !alias.scope !158, !noalias !161
  %8365 = call float @dx.op.binary.f32(i32 36, float %8351, float %8352)  ; FMin(a,b)
  %8366 = call float @dx.op.binary.f32(i32 36, float %8350, float %8365)  ; FMin(a,b)
  %8367 = call float @dx.op.binary.f32(i32 35, float %8350, float %8351)  ; FMax(a,b)
  %8368 = call float @dx.op.binary.f32(i32 36, float %8367, float %8352)  ; FMin(a,b)
  %8369 = call float @dx.op.binary.f32(i32 36, float %8350, float %8351)  ; FMin(a,b)
  %8370 = call float @dx.op.binary.f32(i32 35, float %8369, float %8368)  ; FMax(a,b)
  %8371 = call float @dx.op.binary.f32(i32 35, float %8351, float %8352)  ; FMax(a,b)
  %8372 = call float @dx.op.binary.f32(i32 35, float %8350, float %8371)  ; FMax(a,b)
  store float %8366, float* %8284, align 4, !tbaa !127, !alias.scope !176, !noalias !177
  store float %8370, float* %8285, align 4, !tbaa !127, !alias.scope !174, !noalias !175
  store float %8372, float* %8286, align 4, !tbaa !127, !alias.scope !168, !noalias !171
  %8373 = sub nsw i32 3, %8356
  %8374 = icmp sgt i32 %8373, 2
  br i1 %8374, label %8375, label %8413

; <label>:8375                                    ; preds = %8349
  %8376 = icmp eq i32 %8144, 0
  %8377 = fsub fast float %8194, %8278
  %8378 = select i1 %8376, float %8377, float %8278
  %8379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8380 = extractvalue %dx.types.CBufRet.f32 %8379, 0
  %8381 = extractvalue %dx.types.CBufRet.f32 %8379, 1
  %8382 = extractvalue %dx.types.CBufRet.f32 %8379, 2
  %8383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8384 = extractvalue %dx.types.CBufRet.f32 %8383, 0
  %8385 = extractvalue %dx.types.CBufRet.f32 %8383, 1
  %8386 = extractvalue %dx.types.CBufRet.f32 %8383, 2
  %8387 = extractvalue %dx.types.CBufRet.f32 %8383, 3
  %8388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8389 = extractvalue %dx.types.CBufRet.f32 %8388, 3
  %8390 = call float @dx.op.binary.f32(i32 36, float %8279, float %8389)  ; FMin(a,b)
  %8391 = fmul fast float %8387, %8378
  %8392 = call float @dx.op.unary.f32(i32 7, float %8391)  ; Saturate(value)
  %8393 = fsub fast float %8384, %8380
  %8394 = fsub fast float %8385, %8381
  %8395 = fsub fast float %8386, %8382
  %8396 = fmul fast float %8392, %8393
  %8397 = fmul fast float %8392, %8394
  %8398 = fmul fast float %8392, %8395
  %8399 = fadd fast float %8396, %8380
  %8400 = fadd fast float %8397, %8381
  %8401 = fadd fast float %8398, %8382
  %8402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8403 = extractvalue %dx.types.CBufRet.f32 %8402, 0
  %8404 = extractvalue %dx.types.CBufRet.f32 %8402, 1
  %8405 = fadd fast float %8404, %8403
  %8406 = call float @dx.op.unary.f32(i32 7, float %8405)  ; Saturate(value)
  %8407 = extractvalue %dx.types.CBufRet.f32 %8402, 2
  %8408 = extractvalue %dx.types.CBufRet.f32 %8402, 3
  %8409 = fadd fast float %8408, %8407
  %8410 = call float @dx.op.unary.f32(i32 7, float %8409)  ; Saturate(value)
  %8411 = fmul fast float %8406, %8390
  %8412 = fmul fast float %8411, %8410
  br label %8495

; <label>:8413                                    ; preds = %8349
  %8414 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %8373
  %8415 = load float, float* %8414, align 4, !tbaa !127, !noalias !142
  %8416 = fcmp fast olt float %8415, %8280
  %8417 = icmp sgt i32 %8356, 0
  %8418 = and i1 %8417, %8416
  br i1 %8418, label %8419, label %8456

; <label>:8419                                    ; preds = %8413
  br label %8420

; <label>:8420                                    ; preds = %8449, %8419
  %8421 = phi float [ %8450, %8449 ], [ %8278, %8419 ]
  %8422 = phi float [ %8451, %8449 ], [ %8279, %8419 ]
  %8423 = phi float [ %8431, %8449 ], [ %8415, %8419 ]
  %8424 = phi i32 [ %8428, %8449 ], [ %8373, %8419 ]
  %8425 = getelementptr inbounds [3 x float], [3 x float]* %116, i32 0, i32 %8424
  %8426 = load float, float* %8425, align 4, !tbaa !127, !noalias !142
  %8427 = icmp slt i32 %8424, 2
  %8428 = add nsw i32 %8424, 1
  %8429 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %8428
  %8430 = load float, float* %8429, align 4, !tbaa !127, !noalias !142
  %8431 = select i1 %8427, float %8430, float %8194
  %8432 = call float @dx.op.binary.f32(i32 36, float %8431, float %8426)  ; FMin(a,b)
  %8433 = call float @dx.op.binary.f32(i32 36, float %8280, float %8432)  ; FMin(a,b)
  %8434 = icmp eq i32 %8144, 0
  %8435 = fadd fast float %8433, %8423
  %8436 = fmul fast float %8435, %8125
  %8437 = fadd fast float %8436, %8138
  br i1 %8434, label %8443, label %8438

; <label>:8438                                    ; preds = %8420
  %8439 = fsub fast float %8433, %8423
  %8440 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8439)  ; FMax(a,b)
  %8441 = fmul fast float %8440, %8437
  %8442 = fadd fast float %8441, %8422
  br label %8449

; <label>:8443                                    ; preds = %8420
  %8444 = fsub fast float %8423, %8433
  %8445 = call float @dx.op.unary.f32(i32 6, float %8444)  ; FAbs(value)
  %8446 = fadd fast float %8445, %8421
  %8447 = fmul fast float %8445, %8437
  %8448 = fsub fast float %8422, %8447
  br label %8449

; <label>:8449                                    ; preds = %8443, %8438
  %8450 = phi float [ %8440, %8438 ], [ %8446, %8443 ]
  %8451 = phi float [ %8442, %8438 ], [ %8448, %8443 ]
  %8452 = fcmp fast olt float %8431, %8280
  %8453 = icmp slt i32 %8428, 3
  %8454 = and i1 %8453, %8452
  br i1 %8454, label %8420, label %8455

; <label>:8455                                    ; preds = %8449
  br label %8456

; <label>:8456                                    ; preds = %8455, %8413
  %8457 = phi float [ %8278, %8413 ], [ %8450, %8455 ]
  %8458 = phi float [ %8279, %8413 ], [ %8451, %8455 ]
  %8459 = fsub fast float %8194, %8457
  %8460 = select i1 %8196, float %8457, float %8459
  %8461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8462 = extractvalue %dx.types.CBufRet.f32 %8461, 0
  %8463 = extractvalue %dx.types.CBufRet.f32 %8461, 1
  %8464 = extractvalue %dx.types.CBufRet.f32 %8461, 2
  %8465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8466 = extractvalue %dx.types.CBufRet.f32 %8465, 0
  %8467 = extractvalue %dx.types.CBufRet.f32 %8465, 1
  %8468 = extractvalue %dx.types.CBufRet.f32 %8465, 2
  %8469 = extractvalue %dx.types.CBufRet.f32 %8465, 3
  %8470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8471 = extractvalue %dx.types.CBufRet.f32 %8470, 3
  %8472 = call float @dx.op.binary.f32(i32 36, float %8458, float %8471)  ; FMin(a,b)
  %8473 = fmul fast float %8469, %8460
  %8474 = call float @dx.op.unary.f32(i32 7, float %8473)  ; Saturate(value)
  %8475 = fsub fast float %8466, %8462
  %8476 = fsub fast float %8467, %8463
  %8477 = fsub fast float %8468, %8464
  %8478 = fmul fast float %8474, %8475
  %8479 = fmul fast float %8474, %8476
  %8480 = fmul fast float %8474, %8477
  %8481 = fadd fast float %8478, %8462
  %8482 = fadd fast float %8479, %8463
  %8483 = fadd fast float %8480, %8464
  %8484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8485 = extractvalue %dx.types.CBufRet.f32 %8484, 0
  %8486 = extractvalue %dx.types.CBufRet.f32 %8484, 1
  %8487 = fadd fast float %8486, %8485
  %8488 = call float @dx.op.unary.f32(i32 7, float %8487)  ; Saturate(value)
  %8489 = extractvalue %dx.types.CBufRet.f32 %8484, 2
  %8490 = extractvalue %dx.types.CBufRet.f32 %8484, 3
  %8491 = fadd fast float %8490, %8489
  %8492 = call float @dx.op.unary.f32(i32 7, float %8491)  ; Saturate(value)
  %8493 = fmul fast float %8488, %8472
  %8494 = fmul fast float %8493, %8492
  br label %8495

; <label>:8495                                    ; preds = %8456, %8375, %8210, %8192, %8190
  %8496 = phi float [ %8219, %8210 ], [ %8378, %8375 ], [ %8460, %8456 ], [ 0.000000e+00, %8190 ], [ 0.000000e+00, %8192 ]
  %8497 = phi float [ %8253, %8210 ], [ %8412, %8375 ], [ %8494, %8456 ], [ 0.000000e+00, %8190 ], [ 0.000000e+00, %8192 ]
  %8498 = phi float [ %8240, %8210 ], [ %8399, %8375 ], [ %8481, %8456 ], [ 0.000000e+00, %8190 ], [ 0.000000e+00, %8192 ]
  %8499 = phi float [ %8241, %8210 ], [ %8400, %8375 ], [ %8482, %8456 ], [ 0.000000e+00, %8190 ], [ 0.000000e+00, %8192 ]
  %8500 = phi float [ %8242, %8210 ], [ %8401, %8375 ], [ %8483, %8456 ], [ 0.000000e+00, %8190 ], [ 0.000000e+00, %8192 ]
  %8501 = fmul fast float %8133, %8497
  %8502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8503 = extractvalue %dx.types.CBufRet.f32 %8502, 2
  %8504 = fsub fast float %8140, %8503
  %8505 = fcmp fast olt float %8501, -2.000000e+01
  %8506 = call float @dx.op.unary.f32(i32 21, float %8501)  ; Exp(value)
  %8507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8508 = extractvalue %dx.types.CBufRet.f32 %8507, 2
  %8509 = extractvalue %dx.types.CBufRet.f32 %8507, 3
  %8510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8511 = extractvalue %dx.types.CBufRet.f32 %8510, 2
  %8512 = fmul fast float %8509, %8504
  %8513 = call float @dx.op.unary.f32(i32 7, float %8512)  ; Saturate(value)
  %8514 = fsub fast float 1.000000e+00, %8513
  %8515 = fmul fast float %8125, 5.000000e-01
  %8516 = fadd fast float %8515, 5.000000e-01
  %8517 = call float @dx.op.unary.f32(i32 7, float %8516)  ; Saturate(value)
  %8518 = fsub fast float 1.000000e+00, %8517
  %8519 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8514)  ; FMax(a,b)
  %8520 = fdiv fast float %8518, %8519
  %8521 = fsub fast float %8504, %8082
  %8522 = call float @dx.op.unary.f32(i32 6, float %8521)  ; FAbs(value)
  %8523 = fmul fast float %8522, %8508
  %8524 = call float @dx.op.unary.f32(i32 7, float %8520)  ; Saturate(value)
  %8525 = fsub fast float 1.000000e+00, %8523
  %8526 = fmul fast float %8525, %8524
  %8527 = fadd fast float %8526, %8523
  %8528 = fmul fast float %8511, %8504
  %8529 = call float @dx.op.unary.f32(i32 7, float %8528)  ; Saturate(value)
  %8530 = fsub fast float 1.000000e+00, %8527
  %8531 = fmul fast float %8530, %8529
  %8532 = fadd fast float %8531, %8527
  %8533 = call float @dx.op.unary.f32(i32 7, float %8532)  ; Saturate(value)
  %8534 = fadd fast float %8506, -1.000000e+00
  %8535 = select i1 %8505, float -1.000000e+00, float %8534
  %8536 = fmul fast float %8533, %8535
  %8537 = fadd fast float %8536, 1.000000e+00
  %8538 = fsub fast float -0.000000e+00, %8536
  %8539 = fmul fast float %8498, %8538
  %8540 = fmul fast float %8499, %8538
  %8541 = fmul fast float %8500, %8538
  br label %8542

; <label>:8542                                    ; preds = %8495, %8091
  %8543 = phi float [ %8496, %8495 ], [ 0.000000e+00, %8091 ]
  %8544 = phi float [ %8537, %8495 ], [ 1.000000e+00, %8091 ]
  %8545 = phi float [ %8539, %8495 ], [ 0.000000e+00, %8091 ]
  %8546 = phi float [ %8540, %8495 ], [ 0.000000e+00, %8091 ]
  %8547 = phi float [ %8541, %8495 ], [ 0.000000e+00, %8091 ]
  %8548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8549 = extractvalue %dx.types.CBufRet.f32 %8548, 1
  %8550 = fsub fast float 1.000000e+00, %8544
  %8551 = fmul fast float %8550, %8126
  %8552 = fmul fast float %8551, %8549
  %8553 = fsub fast float %8126, %8552
  br i1 %8119, label %8554, label %8583, !dx.controlflow.hints !178

; <label>:8554                                    ; preds = %8542
  %8555 = fmul fast float %8127, %8116
  %8556 = fadd fast float %8555, %8117
  %8557 = call float @dx.op.unary.f32(i32 7, float %8556)  ; Saturate(value)
  %8558 = fmul fast float %8098, %8553
  %8559 = fsub fast float -0.000000e+00, %8558
  %8560 = fmul fast float %8099, %8553
  %8561 = fsub fast float -0.000000e+00, %8560
  %8562 = call float @dx.op.unary.f32(i32 21, float %8559)  ; Exp(value)
  %8563 = call float @dx.op.unary.f32(i32 21, float %8561)  ; Exp(value)
  %8564 = call float @dx.op.binary.f32(i32 35, float %8106, float %8562)  ; FMax(a,b)
  %8565 = call float @dx.op.binary.f32(i32 35, float %8106, float %8563)  ; FMax(a,b)
  %8566 = fsub fast float %8565, %8564
  %8567 = fmul fast float %8566, %8557
  %8568 = fadd fast float %8567, %8564
  %8569 = call float @dx.op.unary.f32(i32 7, float %8568)  ; Saturate(value)
  %8570 = fsub fast float %8103, %8108
  %8571 = fsub fast float %8104, %8109
  %8572 = fsub fast float %8105, %8110
  %8573 = fmul fast float %8557, %8570
  %8574 = fmul fast float %8557, %8571
  %8575 = fmul fast float %8557, %8572
  %8576 = fadd fast float %8573, %8108
  %8577 = fadd fast float %8574, %8109
  %8578 = fadd fast float %8575, %8110
  %8579 = fsub fast float 1.000000e+00, %8569
  %8580 = fmul fast float %8579, %8576
  %8581 = fmul fast float %8579, %8577
  %8582 = fmul fast float %8579, %8578
  br label %8642

; <label>:8583                                    ; preds = %8542
  %8584 = fmul fast float %8553, %8115
  %8585 = call float @dx.op.unary.f32(i32 7, float %8584)  ; Saturate(value)
  %8586 = fsub fast float 2.000000e+00, %8585
  %8587 = fmul fast float %8585, 9.921875e-01
  %8588 = fmul fast float %8587, %8586
  %8589 = fadd fast float %8588, 3.906250e-03
  %8590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %57, float %8589, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8591 = extractvalue %dx.types.ResRet.f32 %8590, 0
  %8592 = fsub fast float %8585, %8591
  %8593 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8592)  ; FMax(a,b)
  %8594 = fmul fast float %8101, %8082
  %8595 = call float @dx.op.unary.f32(i32 6, float %8594)  ; FAbs(value)
  %8596 = fcmp fast ogt float %8595, 0x3EB0C6F7A0000000
  br i1 %8596, label %8597, label %8603, !dx.controlflow.hints !179

; <label>:8597                                    ; preds = %8583
  %8598 = fmul fast float %8594, 0xBFF7154760000000
  %8599 = call float @dx.op.unary.f32(i32 21, float %8598)  ; Exp(value)
  %8600 = fsub fast float 1.000000e+00, %8599
  %8601 = fdiv fast float %8600, %8594
  %8602 = fmul fast float %8601, %8111
  br label %8603

; <label>:8603                                    ; preds = %8597, %8583
  %8604 = phi float [ %8602, %8597 ], [ %8111, %8583 ]
  %8605 = fadd fast float %8604, %8113
  %8606 = fmul fast float %8605, %8593
  %8607 = fmul fast float %8098, %8606
  %8608 = fsub fast float -0.000000e+00, %8607
  %8609 = fmul fast float %8099, %8606
  %8610 = fsub fast float -0.000000e+00, %8609
  %8611 = fmul fast float %8100, %8606
  %8612 = fsub fast float -0.000000e+00, %8611
  %8613 = call float @dx.op.unary.f32(i32 21, float %8608)  ; Exp(value)
  %8614 = call float @dx.op.unary.f32(i32 21, float %8610)  ; Exp(value)
  %8615 = call float @dx.op.unary.f32(i32 21, float %8612)  ; Exp(value)
  %8616 = fmul fast float %8127, %8127
  %8617 = fadd fast float %8616, 1.000000e+00
  %8618 = fmul fast float %8617, 0x3FAE8EC8A0000000
  %8619 = fmul fast float %8618, %8108
  %8620 = fmul fast float %8618, %8109
  %8621 = fmul fast float %8618, %8110
  %8622 = fmul fast float %8127, %8106
  %8623 = fsub fast float 1.000000e+00, %8622
  %8624 = fmul fast float %8106, %8106
  %8625 = fsub fast float 1.000000e+00, %8624
  %8626 = fmul fast float %8625, 0x3FB45F3060000000
  %8627 = fmul fast float %8623, %8623
  %8628 = fdiv fast float 1.000000e+00, %8627
  %8629 = fmul fast float %8626, %8628
  %8630 = fmul fast float %8629, %8103
  %8631 = fmul fast float %8629, %8104
  %8632 = fmul fast float %8629, %8105
  %8633 = fadd fast float %8630, %8619
  %8634 = fadd fast float %8631, %8620
  %8635 = fadd fast float %8632, %8621
  %8636 = fsub fast float 1.000000e+00, %8613
  %8637 = fsub fast float 1.000000e+00, %8614
  %8638 = fsub fast float 1.000000e+00, %8615
  %8639 = fmul fast float %8633, %8636
  %8640 = fmul fast float %8634, %8637
  %8641 = fmul fast float %8635, %8638
  br label %8642

; <label>:8642                                    ; preds = %8603, %8554
  %8643 = phi float [ %8580, %8554 ], [ %8639, %8603 ]
  %8644 = phi float [ %8581, %8554 ], [ %8640, %8603 ]
  %8645 = phi float [ %8582, %8554 ], [ %8641, %8603 ]
  %8646 = phi float [ %8569, %8554 ], [ %8613, %8603 ]
  %8647 = phi float [ %8569, %8554 ], [ %8614, %8603 ]
  %8648 = phi float [ %8569, %8554 ], [ %8615, %8603 ]
  br i1 %8135, label %8649, label %8847, !dx.controlflow.hints !180

; <label>:8649                                    ; preds = %8642
  %8650 = extractvalue %dx.types.CBufRet.f32 %8548, 0
  %8651 = fmul fast float %8650, %8550
  %8652 = fsub fast float %8545, %8643
  %8653 = fsub fast float %8546, %8644
  %8654 = fsub fast float %8547, %8645
  %8655 = fmul fast float %8651, %8652
  %8656 = fmul fast float %8651, %8653
  %8657 = fmul fast float %8651, %8654
  %8658 = fadd fast float %8655, %8643
  %8659 = fadd fast float %8656, %8644
  %8660 = fadd fast float %8657, %8645
  %8661 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8646)  ; FMax(a,b)
  %8662 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8647)  ; FMax(a,b)
  %8663 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8648)  ; FMax(a,b)
  %8664 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8544)  ; FMax(a,b)
  %8665 = call float @dx.op.binary.f32(i32 35, float %8543, float %8553)  ; FMax(a,b)
  %8666 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8665)  ; FMax(a,b)
  %8667 = fdiv fast float %8543, %8666
  %8668 = call float @dx.op.unary.f32(i32 7, float %8667)  ; Saturate(value)
  %8669 = fdiv fast float %8553, %8666
  %8670 = call float @dx.op.unary.f32(i32 7, float %8669)  ; Saturate(value)
  %8671 = fcmp fast une float %8664, 1.000000e+00
  br i1 %8671, label %8672, label %8685, !dx.controlflow.hints !181

; <label>:8672                                    ; preds = %8649
  %8673 = call float @dx.op.unary.f32(i32 23, float %8664)  ; Log(value)
  %8674 = fmul fast float %8673, 0x3FE62E4300000000
  %8675 = fmul fast float %8545, %8674
  %8676 = fsub fast float -0.000000e+00, %8675
  %8677 = fmul fast float %8546, %8674
  %8678 = fsub fast float -0.000000e+00, %8677
  %8679 = fmul fast float %8547, %8674
  %8680 = fsub fast float -0.000000e+00, %8679
  %8681 = fsub fast float 1.000000e+00, %8664
  %8682 = fdiv fast float %8676, %8681
  %8683 = fdiv fast float %8678, %8681
  %8684 = fdiv fast float %8680, %8681
  br label %8685

; <label>:8685                                    ; preds = %8672, %8649
  %8686 = phi float [ %8682, %8672 ], [ %8545, %8649 ]
  %8687 = phi float [ %8683, %8672 ], [ %8546, %8649 ]
  %8688 = phi float [ %8684, %8672 ], [ %8547, %8649 ]
  %8689 = phi float [ %8674, %8672 ], [ 0.000000e+00, %8649 ]
  %8690 = fcmp fast une float %8661, 1.000000e+00
  br i1 %8690, label %8691, label %8698, !dx.controlflow.hints !182

; <label>:8691                                    ; preds = %8685
  %8692 = call float @dx.op.unary.f32(i32 23, float %8661)  ; Log(value)
  %8693 = fmul fast float %8692, 0x3FE62E4300000000
  %8694 = fmul fast float %8658, %8693
  %8695 = fsub fast float -0.000000e+00, %8694
  %8696 = fsub fast float 1.000000e+00, %8661
  %8697 = fdiv fast float %8695, %8696
  br label %8698

; <label>:8698                                    ; preds = %8691, %8685
  %8699 = phi float [ %8697, %8691 ], [ %8658, %8685 ]
  %8700 = phi float [ %8693, %8691 ], [ 0.000000e+00, %8685 ]
  %8701 = fcmp fast une float %8662, 1.000000e+00
  br i1 %8701, label %8702, label %8709, !dx.controlflow.hints !182

; <label>:8702                                    ; preds = %8698
  %8703 = call float @dx.op.unary.f32(i32 23, float %8662)  ; Log(value)
  %8704 = fmul fast float %8703, 0x3FE62E4300000000
  %8705 = fmul fast float %8659, %8704
  %8706 = fsub fast float -0.000000e+00, %8705
  %8707 = fsub fast float 1.000000e+00, %8662
  %8708 = fdiv fast float %8706, %8707
  br label %8709

; <label>:8709                                    ; preds = %8702, %8698
  %8710 = phi float [ %8708, %8702 ], [ %8659, %8698 ]
  %8711 = phi float [ %8704, %8702 ], [ 0.000000e+00, %8698 ]
  %8712 = fcmp fast une float %8663, 1.000000e+00
  br i1 %8712, label %8713, label %8720, !dx.controlflow.hints !182

; <label>:8713                                    ; preds = %8709
  %8714 = call float @dx.op.unary.f32(i32 23, float %8663)  ; Log(value)
  %8715 = fmul fast float %8714, 0x3FE62E4300000000
  %8716 = fmul fast float %8660, %8715
  %8717 = fsub fast float -0.000000e+00, %8716
  %8718 = fsub fast float 1.000000e+00, %8663
  %8719 = fdiv fast float %8717, %8718
  br label %8720

; <label>:8720                                    ; preds = %8713, %8709
  %8721 = phi float [ %8719, %8713 ], [ %8660, %8709 ]
  %8722 = phi float [ %8715, %8713 ], [ 0.000000e+00, %8709 ]
  %8723 = fmul fast float %8686, %8670
  %8724 = fmul fast float %8687, %8670
  %8725 = fmul fast float %8688, %8670
  %8726 = fmul fast float %8689, %8670
  %8727 = fmul fast float %8699, %8668
  %8728 = fmul fast float %8710, %8668
  %8729 = fmul fast float %8721, %8668
  %8730 = fmul fast float %8700, %8668
  %8731 = fmul fast float %8711, %8668
  %8732 = fmul fast float %8722, %8668
  %8733 = fadd fast float %8727, %8723
  %8734 = fadd fast float %8728, %8724
  %8735 = fadd fast float %8729, %8725
  %8736 = fadd fast float %8730, %8726
  %8737 = fadd fast float %8731, %8726
  %8738 = fadd fast float %8732, %8726
  %8739 = fcmp fast une float %8736, 0.000000e+00
  br i1 %8739, label %8740, label %8747, !dx.controlflow.hints !183

; <label>:8740                                    ; preds = %8720
  %8741 = fmul fast float %8736, 0x3FF7154760000000
  %8742 = call float @dx.op.unary.f32(i32 21, float %8741)  ; Exp(value)
  %8743 = fsub fast float 1.000000e+00, %8742
  %8744 = fmul fast float %8733, %8743
  %8745 = fsub fast float -0.000000e+00, %8744
  %8746 = fdiv fast float %8745, %8736
  br label %8747

; <label>:8747                                    ; preds = %8740, %8720
  %8748 = phi float [ %8742, %8740 ], [ 1.000000e+00, %8720 ]
  %8749 = phi float [ %8746, %8740 ], [ %8733, %8720 ]
  %8750 = fcmp fast une float %8737, 0.000000e+00
  br i1 %8750, label %8751, label %8758, !dx.controlflow.hints !183

; <label>:8751                                    ; preds = %8747
  %8752 = fmul fast float %8737, 0x3FF7154760000000
  %8753 = call float @dx.op.unary.f32(i32 21, float %8752)  ; Exp(value)
  %8754 = fsub fast float 1.000000e+00, %8753
  %8755 = fmul fast float %8734, %8754
  %8756 = fsub fast float -0.000000e+00, %8755
  %8757 = fdiv fast float %8756, %8737
  br label %8758

; <label>:8758                                    ; preds = %8751, %8747
  %8759 = phi float [ %8753, %8751 ], [ 1.000000e+00, %8747 ]
  %8760 = phi float [ %8757, %8751 ], [ %8734, %8747 ]
  %8761 = fcmp fast une float %8738, 0.000000e+00
  br i1 %8761, label %8762, label %8769, !dx.controlflow.hints !183

; <label>:8762                                    ; preds = %8758
  %8763 = fmul fast float %8738, 0x3FF7154760000000
  %8764 = call float @dx.op.unary.f32(i32 21, float %8763)  ; Exp(value)
  %8765 = fsub fast float 1.000000e+00, %8764
  %8766 = fmul fast float %8735, %8765
  %8767 = fsub fast float -0.000000e+00, %8766
  %8768 = fdiv fast float %8767, %8738
  br label %8769

; <label>:8769                                    ; preds = %8762, %8758
  %8770 = phi float [ %8764, %8762 ], [ 1.000000e+00, %8758 ]
  %8771 = phi float [ %8768, %8762 ], [ %8735, %8758 ]
  %8772 = fcmp fast ogt float %8668, %8670
  br i1 %8772, label %8773, label %8793

; <label>:8773                                    ; preds = %8769
  %8774 = fsub fast float 1.000000e+00, %8670
  %8775 = fmul fast float %8686, %8774
  %8776 = fmul fast float %8687, %8774
  %8777 = fmul fast float %8688, %8774
  %8778 = fmul fast float %8689, %8774
  %8779 = fcmp fast une float %8778, 0.000000e+00
  br i1 %8779, label %8780, label %8831, !dx.controlflow.hints !184

; <label>:8780                                    ; preds = %8773
  %8781 = fmul fast float %8778, 0x3FF7154760000000
  %8782 = call float @dx.op.unary.f32(i32 21, float %8781)  ; Exp(value)
  %8783 = fsub fast float 1.000000e+00, %8782
  %8784 = fmul fast float %8775, %8783
  %8785 = fsub fast float -0.000000e+00, %8784
  %8786 = fmul fast float %8776, %8783
  %8787 = fsub fast float -0.000000e+00, %8786
  %8788 = fmul fast float %8777, %8783
  %8789 = fsub fast float -0.000000e+00, %8788
  %8790 = fdiv fast float %8785, %8778
  %8791 = fdiv fast float %8787, %8778
  %8792 = fdiv fast float %8789, %8778
  br label %8831

; <label>:8793                                    ; preds = %8769
  %8794 = fsub fast float 1.000000e+00, %8668
  %8795 = fmul fast float %8699, %8794
  %8796 = fmul fast float %8710, %8794
  %8797 = fmul fast float %8721, %8794
  %8798 = fmul fast float %8700, %8794
  %8799 = fmul fast float %8711, %8794
  %8800 = fmul fast float %8722, %8794
  %8801 = fcmp fast une float %8798, 0.000000e+00
  br i1 %8801, label %8802, label %8809, !dx.controlflow.hints !183

; <label>:8802                                    ; preds = %8793
  %8803 = fmul fast float %8798, 0x3FF7154760000000
  %8804 = call float @dx.op.unary.f32(i32 21, float %8803)  ; Exp(value)
  %8805 = fsub fast float 1.000000e+00, %8804
  %8806 = fmul fast float %8795, %8805
  %8807 = fsub fast float -0.000000e+00, %8806
  %8808 = fdiv fast float %8807, %8798
  br label %8809

; <label>:8809                                    ; preds = %8802, %8793
  %8810 = phi float [ %8808, %8802 ], [ %8795, %8793 ]
  %8811 = phi float [ %8804, %8802 ], [ 1.000000e+00, %8793 ]
  %8812 = fcmp fast une float %8799, 0.000000e+00
  br i1 %8812, label %8813, label %8820, !dx.controlflow.hints !183

; <label>:8813                                    ; preds = %8809
  %8814 = fmul fast float %8799, 0x3FF7154760000000
  %8815 = call float @dx.op.unary.f32(i32 21, float %8814)  ; Exp(value)
  %8816 = fsub fast float 1.000000e+00, %8815
  %8817 = fmul fast float %8796, %8816
  %8818 = fsub fast float -0.000000e+00, %8817
  %8819 = fdiv fast float %8818, %8799
  br label %8820

; <label>:8820                                    ; preds = %8813, %8809
  %8821 = phi float [ %8819, %8813 ], [ %8796, %8809 ]
  %8822 = phi float [ %8815, %8813 ], [ 1.000000e+00, %8809 ]
  %8823 = fcmp fast une float %8800, 0.000000e+00
  br i1 %8823, label %8824, label %8831, !dx.controlflow.hints !183

; <label>:8824                                    ; preds = %8820
  %8825 = fmul fast float %8800, 0x3FF7154760000000
  %8826 = call float @dx.op.unary.f32(i32 21, float %8825)  ; Exp(value)
  %8827 = fsub fast float 1.000000e+00, %8826
  %8828 = fmul fast float %8797, %8827
  %8829 = fsub fast float -0.000000e+00, %8828
  %8830 = fdiv fast float %8829, %8800
  br label %8831

; <label>:8831                                    ; preds = %8824, %8820, %8780, %8773
  %8832 = phi float [ %8830, %8824 ], [ %8792, %8780 ], [ %8777, %8773 ], [ %8797, %8820 ]
  %8833 = phi float [ %8821, %8824 ], [ %8791, %8780 ], [ %8776, %8773 ], [ %8821, %8820 ]
  %8834 = phi float [ %8810, %8824 ], [ %8790, %8780 ], [ %8775, %8773 ], [ %8810, %8820 ]
  %8835 = phi float [ %8826, %8824 ], [ %8782, %8780 ], [ 1.000000e+00, %8773 ], [ 1.000000e+00, %8820 ]
  %8836 = phi float [ %8822, %8824 ], [ %8782, %8780 ], [ 1.000000e+00, %8773 ], [ %8822, %8820 ]
  %8837 = phi float [ %8811, %8824 ], [ %8782, %8780 ], [ 1.000000e+00, %8773 ], [ %8811, %8820 ]
  %8838 = fmul fast float %8837, %8749
  %8839 = fmul fast float %8836, %8760
  %8840 = fmul fast float %8835, %8771
  %8841 = fadd fast float %8838, %8834
  %8842 = fadd fast float %8839, %8833
  %8843 = fadd fast float %8840, %8832
  %8844 = fmul fast float %8837, %8748
  %8845 = fmul fast float %8836, %8759
  %8846 = fmul fast float %8835, %8770
  br label %8847

; <label>:8847                                    ; preds = %8831, %8642
  %8848 = phi float [ %8846, %8831 ], [ %8648, %8642 ]
  %8849 = phi float [ %8845, %8831 ], [ %8647, %8642 ]
  %8850 = phi float [ %8844, %8831 ], [ %8646, %8642 ]
  %8851 = phi float [ %8843, %8831 ], [ %8645, %8642 ]
  %8852 = phi float [ %8842, %8831 ], [ %8644, %8642 ]
  %8853 = phi float [ %8841, %8831 ], [ %8643, %8642 ]
  %8854 = fmul fast float %8853, %7799
  %8855 = fmul fast float %8852, %7799
  %8856 = fmul fast float %8851, %7799
  %8857 = fmul fast float %8850, %8090
  %8858 = call float @dx.op.dot3.f32(i32 55, float %8850, float %8849, float %8848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8859 = call float @dx.op.dot3.f32(i32 55, float %8854, float %8855, float %8856, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8860 = select i1 %278, float %8858, float %8850
  %8861 = select i1 %278, float %8858, float %8849
  %8862 = select i1 %278, float 1.000000e+00, float %8848
  %8863 = select i1 %278, float %8859, float %8854
  %8864 = select i1 %278, float 0.000000e+00, float %8855
  %8865 = select i1 %278, float 0.000000e+00, float %8856
  %8866 = fmul fast float %8860, %8084
  %8867 = fmul fast float %8861, %8085
  %8868 = fmul fast float %8862, %8086
  %8869 = fadd fast float %8866, %8863
  %8870 = fadd fast float %8867, %8864
  %8871 = fadd fast float %8865, %8868
  %8872 = fmul fast float %8860, %8087
  %8873 = fmul fast float %8861, %8088
  %8874 = fmul fast float %8862, %8089
  %8875 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8876 = extractvalue %dx.types.CBufRet.i32 %8875, 0
  %8877 = icmp eq i32 %8876, 0
  br i1 %8877, label %9245, label %8878, !dx.controlflow.hints !185

; <label>:8878                                    ; preds = %8847
  %8879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8880 = extractvalue %dx.types.CBufRet.f32 %8879, 2
  %8881 = extractvalue %dx.types.CBufRet.f32 %8879, 3
  %8882 = fmul fast float %8880, %121
  %8883 = fmul fast float %8881, %122
  %8884 = fmul fast float %8882, 2.000000e+00
  %8885 = fmul fast float %8883, 2.000000e+00
  %8886 = fsub fast float 1.000000e+00, %8884
  %8887 = fsub fast float 1.000000e+00, %8885
  %8888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8889 = extractvalue %dx.types.CBufRet.f32 %8888, 0
  %8890 = extractvalue %dx.types.CBufRet.f32 %8888, 1
  %8891 = extractvalue %dx.types.CBufRet.f32 %8888, 2
  %8892 = fmul fast float %8886, %8889
  %8893 = fmul fast float %8886, %8890
  %8894 = fmul fast float %8886, %8891
  %8895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8896 = extractvalue %dx.types.CBufRet.f32 %8895, 0
  %8897 = extractvalue %dx.types.CBufRet.f32 %8895, 1
  %8898 = extractvalue %dx.types.CBufRet.f32 %8895, 2
  %8899 = fmul fast float %8887, %8896
  %8900 = fmul fast float %8887, %8897
  %8901 = fmul fast float %8887, %8898
  %8902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8903 = extractvalue %dx.types.CBufRet.f32 %8902, 0
  %8904 = extractvalue %dx.types.CBufRet.f32 %8902, 1
  %8905 = extractvalue %dx.types.CBufRet.f32 %8902, 2
  %8906 = fadd fast float %8899, %8903
  %8907 = fadd fast float %8906, %8892
  %8908 = fadd fast float %8900, %8904
  %8909 = fadd fast float %8908, %8893
  %8910 = fadd fast float %8901, %8905
  %8911 = fadd fast float %8910, %8894
  %8912 = fmul fast float %8907, %8083
  %8913 = fmul fast float %8909, %8083
  %8914 = fmul fast float %8911, %8083
  %8915 = fmul fast float %8912, %8912
  %8916 = fmul fast float %8913, %8913
  %8917 = fadd fast float %8915, %8916
  %8918 = fmul fast float %8914, %8914
  %8919 = fadd fast float %8917, %8918
  %8920 = call float @dx.op.unary.f32(i32 24, float %8919)  ; Sqrt(value)
  %8921 = extractvalue %dx.types.CBufRet.f32 %7810, 0
  %8922 = fsub fast float %8920, %8921
  %8923 = extractvalue %dx.types.CBufRet.f32 %7810, 2
  %8924 = fmul fast float %8922, %8923
  %8925 = call float @dx.op.unary.f32(i32 7, float %8924)  ; Saturate(value)
  %8926 = fadd fast float %8925, -5.000000e-01
  %8927 = fmul fast float %8926, 2.000000e+00
  %8928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8929 = extractvalue %dx.types.CBufRet.f32 %8928, 2
  %8930 = call float @dx.op.binary.f32(i32 36, float %8929, float %8927)  ; FMin(a,b)
  %8931 = fsub fast float -0.000000e+00, %8929
  %8932 = fcmp fast ogt float %8930, %8931
  br i1 %8932, label %8933, label %9245, !dx.controlflow.hints !186

; <label>:8933                                    ; preds = %8878
  %8934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8935 = extractvalue %dx.types.CBufRet.f32 %8934, 3
  %8936 = fcmp fast ogt float %8935, 0.000000e+00
  br i1 %8936, label %8937, label %9012, !dx.controlflow.hints !187

; <label>:8937                                    ; preds = %8933
  %8938 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %38, i32 0)  ; GetDimensions(handle,mipLevel)
  %8939 = extractvalue %dx.types.Dimensions %8938, 0
  %8940 = sitofp i32 %8939 to float
  %8941 = extractvalue %dx.types.Dimensions %8938, 1
  %8942 = sitofp i32 %8941 to float
  %8943 = fmul fast float %8882, %8940
  %8944 = fmul fast float %8883, %8942
  %8945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8946 = extractvalue %dx.types.CBufRet.f32 %8945, 1
  %8947 = fsub fast float -0.000000e+00, %8946
  %8948 = fptoui float %8947 to i32
  %8949 = fptoui float %8943 to i32
  %8950 = fptoui float %8944 to i32
  %8951 = and i32 %8948, 31
  %8952 = lshr i32 %8949, %8951
  %8953 = lshr i32 %8950, %8951
  %8954 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 %8948, i32 %8952, i32 %8953, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8955 = extractvalue %dx.types.ResRet.f32 %8954, 0
  %8956 = fcmp fast olt float %8955, -1.000000e+00
  %8957 = fcmp fast ogt float %8955, -1.000000e+00
  %8958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8959 = extractvalue %dx.types.CBufRet.f32 %8958, 1
  %8960 = select i1 %8957, float %8959, float 1.000000e+00
  %8961 = fadd fast float %8955, 1.000000e+00
  %8962 = fmul fast float %8960, %8961
  %8963 = call float @dx.op.unary.f32(i32 6, float %8962)  ; FAbs(value)
  %8964 = extractvalue %dx.types.CBufRet.f32 %8958, 3
  %8965 = fcmp fast oge float %8963, %8964
  %8966 = select i1 %8965, float 0x4197782600000000, float %8963
  %8967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8968 = extractvalue %dx.types.CBufRet.f32 %8967, 0
  %8969 = extractvalue %dx.types.CBufRet.f32 %8967, 1
  %8970 = extractvalue %dx.types.CBufRet.f32 %8967, 2
  %8971 = select i1 %8956, float %8968, float %8889
  %8972 = select i1 %8956, float %8969, float %8890
  %8973 = select i1 %8956, float %8970, float %8891
  %8974 = fmul fast float %8971, %8886
  %8975 = fmul fast float %8972, %8886
  %8976 = fmul fast float %8973, %8886
  %8977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8978 = extractvalue %dx.types.CBufRet.f32 %8977, 0
  %8979 = extractvalue %dx.types.CBufRet.f32 %8977, 1
  %8980 = extractvalue %dx.types.CBufRet.f32 %8977, 2
  %8981 = select i1 %8956, float %8978, float %8896
  %8982 = select i1 %8956, float %8979, float %8897
  %8983 = select i1 %8956, float %8980, float %8898
  %8984 = fmul fast float %8981, %8887
  %8985 = fmul fast float %8982, %8887
  %8986 = fmul fast float %8983, %8887
  %8987 = fadd fast float %8984, %8974
  %8988 = fadd fast float %8985, %8975
  %8989 = fadd fast float %8986, %8976
  %8990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8991 = extractvalue %dx.types.CBufRet.f32 %8990, 0
  %8992 = extractvalue %dx.types.CBufRet.f32 %8990, 1
  %8993 = extractvalue %dx.types.CBufRet.f32 %8990, 2
  %8994 = select i1 %8956, float %8991, float %8903
  %8995 = select i1 %8956, float %8992, float %8904
  %8996 = select i1 %8956, float %8993, float %8905
  %8997 = fadd fast float %8987, %8994
  %8998 = fadd fast float %8988, %8995
  %8999 = fadd fast float %8989, %8996
  %9000 = fmul fast float %8997, %8966
  %9001 = fmul fast float %8998, %8966
  %9002 = fmul fast float %8999, %8966
  %9003 = fmul fast float %9000, %9000
  %9004 = fmul fast float %9001, %9001
  %9005 = fadd fast float %9003, %9004
  %9006 = fmul fast float %9002, %9002
  %9007 = fadd fast float %9005, %9006
  %9008 = call float @dx.op.unary.f32(i32 24, float %9007)  ; Sqrt(value)
  %9009 = fsub fast float %9008, %8921
  %9010 = fmul fast float %9009, %8923
  %9011 = call float @dx.op.unary.f32(i32 7, float %9010)  ; Saturate(value)
  br label %9012

; <label>:9012                                    ; preds = %8937, %8933
  %9013 = phi float [ %9011, %8937 ], [ 1.000000e+00, %8933 ]
  %9014 = fmul fast float %8930, 5.000000e-01
  %9015 = fadd fast float %9014, 5.000000e-01
  %9016 = call float @dx.op.unary.f32(i32 22, float %9015)  ; Frc(value)
  %9017 = call float @dx.op.unary.f32(i32 27, float %9016)  ; Round_ni(value)
  %9018 = call float @dx.op.unary.f32(i32 22, float %9016)  ; Frc(value)
  %9019 = fmul fast float %9018, 2.000000e+00
  %9020 = fadd fast float %9019, -1.000000e+00
  %9021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %57, float %8882, float %8883, float %9017, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9022 = extractvalue %dx.types.ResRet.f32 %9021, 0
  %9023 = extractvalue %dx.types.ResRet.f32 %9021, 1
  %9024 = extractvalue %dx.types.ResRet.f32 %9021, 2
  %9025 = extractvalue %dx.types.ResRet.f32 %9021, 3
  %9026 = fadd fast float %9022, -5.000000e-01
  %9027 = fadd fast float %9024, -5.000000e-01
  %9028 = fmul fast float %9026, 0xBFD5555560000000
  %9029 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9027, float %9028)  ; FMad(a,b,c)
  %9030 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9023, float 0.000000e+00)  ; FMad(a,b,c)
  %9031 = fadd fast float %9030, %9025
  %9032 = fmul fast float %9026, -7.500000e-01
  %9033 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9027, float %9032)  ; FMad(a,b,c)
  %9034 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9023, float 0.000000e+00)  ; FMad(a,b,c)
  %9035 = fadd fast float %9034, %9025
  %9036 = call float @dx.op.binary.f32(i32 35, float %9029, float -1.000000e+00)  ; FMax(a,b)
  %9037 = call float @dx.op.binary.f32(i32 35, float %9031, float -1.000000e+00)  ; FMax(a,b)
  %9038 = call float @dx.op.binary.f32(i32 35, float %9033, float -1.000000e+00)  ; FMax(a,b)
  %9039 = call float @dx.op.binary.f32(i32 35, float %9035, float -1.000000e+00)  ; FMax(a,b)
  %9040 = call float @dx.op.binary.f32(i32 36, float %9036, float 1.000000e+00)  ; FMin(a,b)
  %9041 = call float @dx.op.binary.f32(i32 36, float %9037, float 1.000000e+00)  ; FMin(a,b)
  %9042 = call float @dx.op.binary.f32(i32 36, float %9038, float 1.000000e+00)  ; FMin(a,b)
  %9043 = call float @dx.op.binary.f32(i32 36, float %9039, float 1.000000e+00)  ; FMin(a,b)
  %9044 = fcmp fast olt float %9040, 0x3FEFFF8020000000
  br i1 %9044, label %9045, label %9160, !dx.controlflow.hints !188

; <label>:9045                                    ; preds = %9012
  %9046 = extractvalue %dx.types.CBufRet.f32 %8928, 3
  %9047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9048 = extractvalue %dx.types.CBufRet.f32 %9047, 0
  %9049 = extractvalue %dx.types.CBufRet.f32 %9047, 1
  %9050 = extractvalue %dx.types.CBufRet.f32 %9047, 2
  %9051 = extractvalue %dx.types.CBufRet.f32 %9047, 3
  %9052 = fsub fast float %9048, %9040
  %9053 = fsub fast float %9049, %9041
  %9054 = fsub fast float %9050, %9042
  %9055 = fsub fast float %9051, %9043
  %9056 = fmul fast float %9052, %9046
  %9057 = fmul fast float %9053, %9046
  %9058 = fmul fast float %9054, %9046
  %9059 = fmul fast float %9055, %9046
  %9060 = fadd fast float %9056, %9040
  %9061 = fadd fast float %9057, %9041
  %9062 = fsub fast float -0.000000e+00, %9061
  %9063 = fadd fast float %9058, %9042
  %9064 = fadd fast float %9059, %9043
  %9065 = fmul fast float %9060, %9060
  %9066 = fsub fast float %9061, %9065
  %9067 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9066)  ; FMax(a,b)
  %9068 = fdiv fast float 1.000000e+00, %9067
  %9069 = fmul fast float %9061, %9060
  %9070 = fsub fast float %9063, %9069
  %9071 = fsub fast float %9020, %9060
  %9072 = fmul fast float %9020, %9020
  %9073 = fsub fast float %9072, %9061
  %9074 = fmul fast float %9071, %9068
  %9075 = fmul fast float %9074, %9070
  %9076 = fsub fast float %9073, %9075
  %9077 = fmul fast float %9061, %9061
  %9078 = fsub fast float %9064, %9077
  %9079 = fmul fast float %9070, %9070
  %9080 = fmul fast float %9079, %9068
  %9081 = fsub fast float %9078, %9080
  %9082 = fdiv fast float %9076, %9081
  %9083 = fmul fast float %9070, %9082
  %9084 = fsub fast float %9071, %9083
  %9085 = fmul fast float %9084, %9068
  %9086 = fmul fast float %9085, %9060
  %9087 = fsub fast float 1.000000e+00, %9086
  %9088 = fmul fast float %9061, %9082
  %9089 = fsub fast float %9087, %9088
  %9090 = fmul fast float %9085, %9085
  %9091 = fmul fast float %9082, 4.000000e+00
  %9092 = fmul fast float %9091, %9089
  %9093 = fsub fast float %9090, %9092
  %9094 = call float @dx.op.unary.f32(i32 24, float %9093)  ; Sqrt(value)
  %9095 = fcmp fast oge float %9085, 0.000000e+00
  %9096 = fsub fast float -0.000000e+00, %9094
  %9097 = select i1 %9095, float %9096, float %9094
  %9098 = fsub fast float %9097, %9085
  %9099 = fdiv fast float %9098, %9082
  %9100 = fdiv fast float %9089, %9098
  %9101 = fmul fast float %9099, 5.000000e-01
  %9102 = fmul fast float %9100, 2.000000e+00
  %9103 = select i1 %9095, float %9101, float %9102
  %9104 = select i1 %9095, float %9102, float %9101
  %9105 = call float @dx.op.binary.f32(i32 35, float %9103, float %9104)  ; FMax(a,b)
  %9106 = call float @dx.op.binary.f32(i32 36, float %9103, float %9104)  ; FMin(a,b)
  %9107 = fcmp fast ogt float %9020, %9106
  br i1 %9107, label %9108, label %9118

; <label>:9108                                    ; preds = %9045
  %9109 = fsub fast float %9020, %9106
  %9110 = fsub fast float %9105, %9106
  %9111 = fmul fast float %9109, %9110
  %9112 = fmul fast float %9105, %9020
  %9113 = fadd fast float %9105, %9020
  %9114 = fmul fast float %9113, %9060
  %9115 = fadd fast float %9112, %9061
  %9116 = fsub fast float %9115, %9114
  %9117 = fdiv fast float %9116, %9111
  br label %9118

; <label>:9118                                    ; preds = %9108, %9045
  %9119 = phi float [ %9117, %9108 ], [ 0.000000e+00, %9045 ]
  %9120 = fcmp fast ogt float %9020, %9105
  %9121 = fsub fast float %9020, %9105
  br i1 %9120, label %9122, label %9132

; <label>:9122                                    ; preds = %9118
  %9123 = fsub fast float %9105, %9106
  %9124 = fmul fast float %9123, %9121
  %9125 = fmul fast float %9106, %9020
  %9126 = fadd fast float %9106, %9020
  %9127 = fmul fast float %9126, %9060
  %9128 = fsub fast float %9062, %9125
  %9129 = fadd fast float %9128, %9127
  %9130 = fdiv fast float %9129, %9124
  %9131 = fadd fast float %9130, %9119
  br label %9132

; <label>:9132                                    ; preds = %9122, %9118
  %9133 = phi float [ %9131, %9122 ], [ %9119, %9118 ]
  %9134 = fsub fast float %9020, %9106
  %9135 = fmul fast float %9134, %9121
  %9136 = fmul fast float %9106, %9105
  %9137 = fadd fast float %9106, %9105
  %9138 = fmul fast float %9137, %9060
  %9139 = fadd fast float %9136, %9061
  %9140 = fsub fast float %9139, %9138
  %9141 = fdiv fast float %9140, %9135
  %9142 = call float @dx.op.unary.f32(i32 7, float %9133)  ; Saturate(value)
  %9143 = fcmp fast oeq float %7811, 0.000000e+00
  %9144 = extractvalue %dx.types.CBufRet.f32 %8928, 0
  %9145 = fcmp fast oeq float %9144, 0.000000e+00
  %9146 = or i1 %9143, %9145
  %9147 = fmul fast float %9144, 2.000000e+00
  %9148 = fadd fast float %8929, %8930
  %9149 = fdiv fast float %9148, %9147
  %9150 = call float @dx.op.unary.f32(i32 7, float %9149)  ; Saturate(value)
  %9151 = fmul fast float %9150, 2.000000e+00
  %9152 = fsub fast float 3.000000e+00, %9151
  %9153 = fmul fast float %9150, %9150
  %9154 = fmul fast float %9153, %9152
  %9155 = select i1 %9146, float 1.000000e+00, float %9154
  %9156 = fmul fast float %9141, %7811
  %9157 = fadd fast float %9142, %9156
  %9158 = call float @dx.op.unary.f32(i32 7, float %9157)  ; Saturate(value)
  %9159 = fmul fast float %9155, %9158
  br label %9160

; <label>:9160                                    ; preds = %9132, %9012
  %9161 = phi float [ %9159, %9132 ], [ 0.000000e+00, %9012 ]
  %9162 = fsub fast float 1.000000e+00, %9161
  %9163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %57, float %8882, float %8883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9164 = extractvalue %dx.types.ResRet.f32 %9163, 0
  %9165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9166 = extractvalue %dx.types.CBufRet.i32 %9165, 2
  %9167 = icmp eq i32 %9166, 0
  br i1 %9167, label %9173, label %9168

; <label>:9168                                    ; preds = %9160
  %9169 = call float @dx.op.unary.f32(i32 7, float %9161)  ; Saturate(value)
  %9170 = fadd fast float %9164, -1.000000e+00
  %9171 = fmul fast float %9169, %9170
  %9172 = fadd fast float %9171, 1.000000e+00
  br label %9173

; <label>:9173                                    ; preds = %9168, %9160
  %9174 = phi float [ %9172, %9168 ], [ %9162, %9160 ]
  br i1 %8936, label %9175, label %9193

; <label>:9175                                    ; preds = %9173
  %9176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9177 = extractvalue %dx.types.CBufRet.f32 %9176, 1
  %9178 = fsub fast float %9013, %9177
  %9179 = call float @dx.op.unary.f32(i32 7, float %9178)  ; Saturate(value)
  %9180 = fsub fast float %9013, %8935
  %9181 = call float @dx.op.unary.f32(i32 7, float %9180)  ; Saturate(value)
  %9182 = fsub fast float %9179, %9181
  %9183 = fsub fast float %9015, %9181
  %9184 = fdiv fast float %9183, %9182
  %9185 = call float @dx.op.unary.f32(i32 7, float %9184)  ; Saturate(value)
  %9186 = fmul fast float %9185, 2.000000e+00
  %9187 = fsub fast float 3.000000e+00, %9186
  %9188 = fsub fast float %9164, %9174
  %9189 = fmul fast float %9185, %9185
  %9190 = fmul fast float %9189, %9188
  %9191 = fmul fast float %9190, %9187
  %9192 = fadd fast float %9191, %9174
  br label %9193

; <label>:9193                                    ; preds = %9175, %9173
  %9194 = phi float [ %9192, %9175 ], [ %9174, %9173 ]
  %9195 = call float @dx.op.binary.f32(i32 35, float %9164, float %9194)  ; FMax(a,b)
  %9196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9197 = extractvalue %dx.types.CBufRet.i32 %9196, 2
  %9198 = and i32 %9197, 1
  %9199 = icmp eq i32 %9198, 0
  %9200 = fcmp fast une float %9195, 1.000000e+00
  %9201 = and i1 %9200, %9199
  br i1 %9201, label %9202, label %9221

; <label>:9202                                    ; preds = %9193
  %9203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %57, float %8882, float %8883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9204 = extractvalue %dx.types.ResRet.f32 %9203, 0
  %9205 = extractvalue %dx.types.ResRet.f32 %9203, 1
  %9206 = extractvalue %dx.types.ResRet.f32 %9203, 2
  %9207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9208 = extractvalue %dx.types.CBufRet.f32 %9207, 1
  %9209 = fmul fast float %9208, %9204
  %9210 = fmul fast float %9208, %9205
  %9211 = fmul fast float %9208, %9206
  %9212 = fcmp fast ogt float %9164, 0x3FEFFF2E40000000
  %9213 = fsub fast float 1.000000e+00, %9195
  %9214 = fsub fast float 1.000000e+00, %9164
  %9215 = fdiv fast float %9213, %9214
  %9216 = call float @dx.op.unary.f32(i32 7, float %9215)  ; Saturate(value)
  %9217 = select i1 %9212, float 0.000000e+00, float %9216
  %9218 = fmul fast float %9209, %9217
  %9219 = fmul fast float %9210, %9217
  %9220 = fmul fast float %9211, %9217
  br label %9221

; <label>:9221                                    ; preds = %9202, %9193
  %9222 = phi float [ 0.000000e+00, %9193 ], [ %9218, %9202 ]
  %9223 = phi float [ 0.000000e+00, %9193 ], [ %9219, %9202 ]
  %9224 = phi float [ 0.000000e+00, %9193 ], [ %9220, %9202 ]
  %9225 = fmul fast float %9222, %7799
  %9226 = fmul fast float %9223, %7799
  %9227 = fmul fast float %9224, %7799
  %9228 = fmul fast float %9195, %8857
  %9229 = call float @dx.op.dot3.f32(i32 55, float %9195, float %9195, float %9195, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9230 = call float @dx.op.dot3.f32(i32 55, float %9225, float %9226, float %9227, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9231 = select i1 %278, float %9229, float %9195
  %9232 = select i1 %278, float 1.000000e+00, float %9195
  %9233 = select i1 %278, float %9230, float %9225
  %9234 = select i1 %278, float 0.000000e+00, float %9226
  %9235 = select i1 %278, float 0.000000e+00, float %9227
  %9236 = fmul fast float %9231, %8869
  %9237 = fmul fast float %9231, %8870
  %9238 = fmul fast float %9232, %8871
  %9239 = fadd fast float %9236, %9233
  %9240 = fadd fast float %9237, %9234
  %9241 = fadd fast float %9235, %9238
  %9242 = fmul fast float %9231, %8872
  %9243 = fmul fast float %9231, %8873
  %9244 = fmul fast float %9232, %8874
  br label %9245

; <label>:9245                                    ; preds = %9221, %8878, %8847, %8079
  %9246 = phi float [ %8084, %8079 ], [ %8869, %8847 ], [ %9239, %9221 ], [ %8869, %8878 ]
  %9247 = phi float [ %8085, %8079 ], [ %8870, %8847 ], [ %9240, %9221 ], [ %8870, %8878 ]
  %9248 = phi float [ %8086, %8079 ], [ %8871, %8847 ], [ %9241, %9221 ], [ %8871, %8878 ]
  %9249 = phi float [ %8087, %8079 ], [ %8872, %8847 ], [ %9242, %9221 ], [ %8872, %8878 ]
  %9250 = phi float [ %8088, %8079 ], [ %8873, %8847 ], [ %9243, %9221 ], [ %8873, %8878 ]
  %9251 = phi float [ %8089, %8079 ], [ %8874, %8847 ], [ %9244, %9221 ], [ %8874, %8878 ]
  %9252 = phi float [ %8090, %8079 ], [ %8857, %8847 ], [ %9228, %9221 ], [ %8857, %8878 ]
  %9253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9254 = extractvalue %dx.types.CBufRet.f32 %9253, 2
  %9255 = extractvalue %dx.types.CBufRet.f32 %9253, 3
  %9256 = fmul fast float %9254, %121
  %9257 = fmul fast float %9255, %122
  %9258 = call float @dx.op.unary.f32(i32 7, float %9256)  ; Saturate(value)
  %9259 = call float @dx.op.unary.f32(i32 7, float %9257)  ; Saturate(value)
  %9260 = select i1 %7821, i32 2, i32 0
  %9261 = or i32 %9260, 1
  %9262 = uitofp i32 %9261 to float
  %9263 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %57, float %9258, float %9259, float %9262, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9264 = extractvalue %dx.types.ResRet.f32 %9263, 0
  %9265 = extractvalue %dx.types.ResRet.f32 %9263, 1
  %9266 = extractvalue %dx.types.ResRet.f32 %9263, 2
  %9267 = extractvalue %dx.types.ResRet.f32 %9263, 3
  %9268 = add nuw nsw i32 %9260, 2
  %9269 = uitofp i32 %9268 to float
  %9270 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %57, float %9258, float %9259, float %9269, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9271 = extractvalue %dx.types.ResRet.f32 %9270, 0
  %9272 = extractvalue %dx.types.ResRet.f32 %9270, 1
  %9273 = extractvalue %dx.types.ResRet.f32 %9270, 2
  %9274 = extractvalue %dx.types.ResRet.f32 %9270, 3
  %9275 = call float @dx.op.binary.f32(i32 35, float %9265, float %9266)  ; FMax(a,b)
  %9276 = call float @dx.op.binary.f32(i32 35, float %9264, float %9275)  ; FMax(a,b)
  %9277 = call float @dx.op.binary.f32(i32 35, float %9276, float %9267)  ; FMax(a,b)
  %9278 = call float @dx.op.binary.f32(i32 36, float %9272, float %9273)  ; FMin(a,b)
  %9279 = call float @dx.op.binary.f32(i32 36, float %9271, float %9278)  ; FMin(a,b)
  %9280 = call float @dx.op.binary.f32(i32 36, float %9279, float %9274)  ; FMin(a,b)
  %9281 = fmul fast float %9277, 2.550000e+02
  %9282 = fadd fast float %9281, 0x3F70101020000000
  %9283 = fptoui float %9282 to i32
  %9284 = fmul fast float %9280, 2.550000e+02
  %9285 = fadd fast float %9284, 0x3F70101020000000
  %9286 = fptoui float %9285 to i32
  %9287 = icmp ult i32 %9283, %9286
  br i1 %9287, label %9288, label %9457

; <label>:9288                                    ; preds = %9245
  %9289 = fcmp fast ogt float %107, 9.843750e-01
  %9290 = fadd fast float %8083, -4.000000e+00
  %9291 = select i1 %9289, float -4.000000e+00, float %9290
  %9292 = call float @dx.op.binary.f32(i32 35, float %9291, float 0.000000e+00)  ; FMax(a,b)
  %9293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9294 = extractvalue %dx.types.CBufRet.f32 %9293, 0
  %9295 = fadd fast float %9294, %9292
  %9296 = extractvalue %dx.types.CBufRet.f32 %9293, 2
  %9297 = fmul fast float %9295, %9296
  %9298 = call float @dx.op.unary.f32(i32 23, float %9297)  ; Log(value)
  %9299 = extractvalue %dx.types.CBufRet.f32 %9293, 3
  %9300 = fmul fast float %9299, %9298
  %9301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9302 = extractvalue %dx.types.CBufRet.f32 %9301, 2
  %9303 = fmul fast float %9300, %9302
  %9304 = call float @dx.op.unary.f32(i32 7, float %9303)  ; Saturate(value)
  %9305 = uitofp i32 %9283 to float
  %9306 = uitofp i32 %9286 to float
  %9307 = fadd fast float %9305, 5.000000e-01
  %9308 = fadd fast float %9306, 5.000000e-01
  %9309 = fmul fast float %9302, %9307
  %9310 = fmul fast float %9302, %9308
  %9311 = fadd fast float %9309, 0x3F0FFB4800000000
  %9312 = fadd fast float %9310, 0xBF0FFB4800000000
  %9313 = call float @dx.op.binary.f32(i32 35, float %9304, float %9311)  ; FMax(a,b)
  %9314 = call float @dx.op.binary.f32(i32 36, float %9313, float %9312)  ; FMin(a,b)
  %9315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9316 = extractvalue %dx.types.CBufRet.f32 %9315, 1
  %9317 = extractvalue %dx.types.CBufRet.f32 %9315, 2
  %9318 = extractvalue %dx.types.CBufRet.f32 %9315, 0
  %9319 = select i1 %7821, float %9318, float 0.000000e+00
  %9320 = fmul fast float %9316, %9314
  %9321 = fadd fast float %9319, %9320
  %9322 = fadd fast float %9319, %9317
  %9323 = fsub fast float %9316, %9317
  %9324 = fadd fast float %9323, %9319
  %9325 = call float @dx.op.binary.f32(i32 35, float %9321, float %9322)  ; FMax(a,b)
  %9326 = call float @dx.op.binary.f32(i32 36, float %9325, float %9324)  ; FMin(a,b)
  %9327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %55, float %9258, float %9259, float %9326, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9328 = extractvalue %dx.types.ResRet.f32 %9327, 0
  %9329 = extractvalue %dx.types.ResRet.f32 %9327, 1
  %9330 = extractvalue %dx.types.ResRet.f32 %9327, 2
  %9331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9332 = extractvalue %dx.types.CBufRet.i32 %9331, 0
  %9333 = extractvalue %dx.types.CBufRet.i32 %9331, 1
  %9334 = uitofp i32 %9332 to float
  %9335 = uitofp i32 %9333 to float
  %9336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9337 = extractvalue %dx.types.CBufRet.f32 %9336, 0
  %9338 = extractvalue %dx.types.CBufRet.f32 %9336, 1
  %9339 = fmul fast float %9334, %9258
  %9340 = fmul fast float %9335, %9259
  %9341 = fadd fast float %9339, -5.000000e-01
  %9342 = fadd fast float %9340, -5.000000e-01
  %9343 = call float @dx.op.unary.f32(i32 22, float %9341)  ; Frc(value)
  %9344 = call float @dx.op.unary.f32(i32 22, float %9342)  ; Frc(value)
  %9345 = fmul fast float %9343, %9343
  %9346 = fmul fast float %9345, %9343
  %9347 = fsub fast float 3.000000e+00, %9343
  %9348 = fmul fast float %9345, %9347
  %9349 = fmul fast float %9343, 3.000000e+00
  %9350 = fmul fast float %9346, 3.000000e+00
  %9351 = fmul fast float %9345, 6.000000e+00
  %9352 = fsub fast float %9350, %9351
  %9353 = fadd fast float %9352, 4.000000e+00
  %9354 = fmul fast float %9353, 0x3FC5555560000000
  %9355 = fmul fast float %9346, -3.000000e+00
  %9356 = fadd fast float %9345, %9343
  %9357 = fmul fast float %9356, 3.000000e+00
  %9358 = fadd fast float %9355, 1.000000e+00
  %9359 = fadd fast float %9358, %9357
  %9360 = fmul fast float %9346, 0x3FC5555560000000
  %9361 = fmul fast float %9344, %9344
  %9362 = fmul fast float %9361, %9344
  %9363 = fsub fast float 3.000000e+00, %9344
  %9364 = fmul fast float %9361, %9363
  %9365 = fmul fast float %9344, 3.000000e+00
  %9366 = fmul fast float %9362, 3.000000e+00
  %9367 = fmul fast float %9361, 6.000000e+00
  %9368 = fsub fast float %9366, %9367
  %9369 = fadd fast float %9368, 4.000000e+00
  %9370 = fmul fast float %9369, 0x3FC5555560000000
  %9371 = fmul fast float %9362, -3.000000e+00
  %9372 = fadd fast float %9361, %9344
  %9373 = fmul fast float %9372, 3.000000e+00
  %9374 = fadd fast float %9371, 1.000000e+00
  %9375 = fadd fast float %9374, %9373
  %9376 = fmul fast float %9362, 0x3FC5555560000000
  %9377 = fadd fast float %9343, 1.000000e+00
  %9378 = fsub fast float 1.000000e+00, %9349
  %9379 = fadd fast float %9378, %9348
  %9380 = fadd fast float %9379, %9353
  %9381 = fmul fast float %9380, 0x3FC5555560000000
  %9382 = fdiv fast float %9354, %9381
  %9383 = fsub fast float %9377, %9382
  %9384 = fsub fast float 1.000000e+00, %9343
  %9385 = fadd fast float %9359, %9346
  %9386 = fmul fast float %9385, 0x3FC5555560000000
  %9387 = fdiv fast float %9360, %9386
  %9388 = fadd fast float %9384, %9387
  %9389 = fadd fast float %9344, 1.000000e+00
  %9390 = fsub fast float 1.000000e+00, %9365
  %9391 = fadd fast float %9390, %9364
  %9392 = fadd fast float %9391, %9369
  %9393 = fmul fast float %9392, 0x3FC5555560000000
  %9394 = fdiv fast float %9370, %9393
  %9395 = fsub fast float %9389, %9394
  %9396 = fsub fast float 1.000000e+00, %9344
  %9397 = fadd fast float %9375, %9362
  %9398 = fmul fast float %9397, 0x3FC5555560000000
  %9399 = fdiv fast float %9376, %9398
  %9400 = fadd fast float %9399, %9396
  %9401 = fmul fast float %9383, %9337
  %9402 = fsub fast float %9258, %9401
  %9403 = fmul fast float %9388, %9337
  %9404 = fadd fast float %9403, %9258
  %9405 = fmul fast float %9400, %9338
  %9406 = fadd fast float %9405, %9259
  %9407 = fmul fast float %9395, %9338
  %9408 = fsub fast float %9259, %9407
  %9409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %9402, float %9408, float %9326, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9410 = extractvalue %dx.types.ResRet.f32 %9409, 0
  %9411 = extractvalue %dx.types.ResRet.f32 %9409, 1
  %9412 = extractvalue %dx.types.ResRet.f32 %9409, 2
  %9413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %9404, float %9408, float %9326, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9414 = extractvalue %dx.types.ResRet.f32 %9413, 0
  %9415 = extractvalue %dx.types.ResRet.f32 %9413, 1
  %9416 = extractvalue %dx.types.ResRet.f32 %9413, 2
  %9417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %9402, float %9406, float %9326, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9418 = extractvalue %dx.types.ResRet.f32 %9417, 0
  %9419 = extractvalue %dx.types.ResRet.f32 %9417, 1
  %9420 = extractvalue %dx.types.ResRet.f32 %9417, 2
  %9421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %9404, float %9406, float %9326, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9422 = extractvalue %dx.types.ResRet.f32 %9421, 0
  %9423 = extractvalue %dx.types.ResRet.f32 %9421, 1
  %9424 = extractvalue %dx.types.ResRet.f32 %9421, 2
  %9425 = fsub fast float %9418, %9410
  %9426 = fsub fast float %9419, %9411
  %9427 = fsub fast float %9420, %9412
  %9428 = fmul fast float %9425, %9398
  %9429 = fmul fast float %9426, %9398
  %9430 = fmul fast float %9427, %9398
  %9431 = fadd fast float %9428, %9410
  %9432 = fadd fast float %9429, %9411
  %9433 = fadd fast float %9430, %9412
  %9434 = fsub fast float %9422, %9414
  %9435 = fsub fast float %9423, %9415
  %9436 = fsub fast float %9424, %9416
  %9437 = fmul fast float %9434, %9398
  %9438 = fmul fast float %9435, %9398
  %9439 = fmul fast float %9436, %9398
  %9440 = fsub fast float %9414, %9431
  %9441 = fadd fast float %9440, %9437
  %9442 = fsub fast float %9415, %9432
  %9443 = fadd fast float %9442, %9438
  %9444 = fsub fast float %9416, %9433
  %9445 = fadd fast float %9444, %9439
  %9446 = fmul fast float %9441, %9386
  %9447 = fmul fast float %9443, %9386
  %9448 = fmul fast float %9445, %9386
  %9449 = fadd fast float %9446, %9431
  %9450 = fadd fast float %9447, %9432
  %9451 = fadd fast float %9448, %9433
  %9452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9453 = extractvalue %dx.types.CBufRet.f32 %9452, 1
  %9454 = fmul fast float %9449, %9453
  %9455 = fmul fast float %9450, %9453
  %9456 = fmul fast float %9451, %9453
  br label %9457

; <label>:9457                                    ; preds = %9288, %9245
  %9458 = phi float [ %9328, %9288 ], [ 1.000000e+00, %9245 ]
  %9459 = phi float [ %9329, %9288 ], [ 1.000000e+00, %9245 ]
  %9460 = phi float [ %9330, %9288 ], [ 1.000000e+00, %9245 ]
  %9461 = phi float [ %9454, %9288 ], [ 0.000000e+00, %9245 ]
  %9462 = phi float [ %9455, %9288 ], [ 0.000000e+00, %9245 ]
  %9463 = phi float [ %9456, %9288 ], [ 0.000000e+00, %9245 ]
  %9464 = fmul fast float %9461, %7799
  %9465 = fmul fast float %9462, %7799
  %9466 = fmul fast float %9463, %7799
  %9467 = fmul fast float %9458, %9252
  %9468 = call float @dx.op.dot3.f32(i32 55, float %9458, float %9459, float %9460, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9469 = call float @dx.op.dot3.f32(i32 55, float %9464, float %9465, float %9466, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9470 = select i1 %278, float %9468, float %9458
  %9471 = select i1 %278, float %9468, float %9459
  %9472 = select i1 %278, float 1.000000e+00, float %9460
  %9473 = select i1 %278, float %9469, float %9464
  %9474 = select i1 %278, float 0.000000e+00, float %9465
  %9475 = select i1 %278, float 0.000000e+00, float %9466
  %9476 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %61, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9477 = extractvalue %dx.types.CBufRet.i32 %9476, 3
  %9478 = and i32 %9477, 3
  %9479 = icmp ne i32 %9478, 0
  %9480 = and i32 %9477, 4
  %9481 = icmp ne i32 %9480, 0
  %9482 = and i1 %9479, %9481
  %9483 = and i1 %278, %9482
  br i1 %9483, label %9484, label %9490

; <label>:9484                                    ; preds = %9457
  %9485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9486 = extractvalue %dx.types.CBufRet.f32 %9485, 1
  %9487 = fadd fast float %9467, -1.000000e+00
  %9488 = fmul fast float %9486, %9487
  %9489 = fadd fast float %9488, 1.000000e+00
  br label %9490

; <label>:9490                                    ; preds = %9484, %9457
  %9491 = phi float [ %9489, %9484 ], [ %9467, %9457 ]
  %9492 = fadd fast float %9249, %9246
  %9493 = fmul fast float %9470, %9492
  %9494 = fadd fast float %9493, %9473
  %9495 = fadd fast float %9250, %9247
  %9496 = fmul fast float %9471, %9495
  %9497 = fadd fast float %9496, %9474
  %9498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9499 = extractvalue %dx.types.CBufRet.f32 %9498, 0
  br i1 %278, label %9500, label %9524

; <label>:9500                                    ; preds = %9490
  %9501 = fadd fast float %9494, %9497
  %9502 = fmul fast float %9499, %9501
  %9503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9504 = extractvalue %dx.types.CBufRet.f32 %9503, 3
  %9505 = extractvalue %dx.types.CBufRet.f32 %7803, 1
  %9506 = fsub fast float %7808, %7802
  %9507 = fadd fast float %9506, %7809
  %9508 = fsub fast float %9507, %9505
  %9509 = extractvalue %dx.types.CBufRet.f32 %7803, 2
  %9510 = fmul fast float %9508, %9509
  %9511 = call float @dx.op.unary.f32(i32 7, float %9510)  ; Saturate(value)
  %9512 = fsub fast float %9511, %9504
  %9513 = fmul fast float %9512, %9491
  %9514 = fadd fast float %9513, %9504
  %9515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9516 = extractvalue %dx.types.CBufRet.f32 %9515, 0
  %9517 = fsub fast float %9514, %9516
  %9518 = fmul fast float %9517, 1.000000e+01
  %9519 = call float @dx.op.unary.f32(i32 7, float %9518)  ; Saturate(value)
  %9520 = fsub fast float %3400, %7799
  %9521 = fmul fast float %9519, %9520
  %9522 = fadd fast float %9521, %7799
  %9523 = fmul fast float %9522, %9514
  br label %9548

; <label>:9524                                    ; preds = %9490
  %9525 = fadd fast float %9251, %9248
  %9526 = fmul fast float %9472, %9525
  %9527 = fadd fast float %9526, %9475
  %9528 = fmul fast float %9499, %9494
  %9529 = fmul fast float %9499, %9497
  %9530 = fmul fast float %9499, %9527
  %9531 = call float @dx.op.binary.f32(i32 35, float %9529, float %9530)  ; FMax(a,b)
  %9532 = call float @dx.op.binary.f32(i32 35, float %9528, float %9531)  ; FMax(a,b)
  %9533 = call float @dx.op.binary.f32(i32 35, float %9532, float %7799)  ; FMax(a,b)
  %9534 = fcmp fast ugt float %9533, 0x3F10000000000000
  br i1 %9534, label %9536, label %9535

; <label>:9535                                    ; preds = %9524
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9536

; <label>:9536                                    ; preds = %9535, %9524
  %9537 = add i32 %63, 356
  %9538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %9537, i32 undef)  ; BufferLoad(srv,index,wot)
  %9539 = extractvalue %dx.types.ResRet.i32 %9538, 0
  %9540 = and i32 %9539, 32
  %9541 = icmp eq i32 %9540, 0
  br i1 %9541, label %9548, label %9542

; <label>:9542                                    ; preds = %9536
  %9543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9544 = extractvalue %dx.types.CBufRet.f32 %9543, 0
  %9545 = fmul fast float %9544, 0x3FE99999A0000000
  %9546 = fadd fast float %9544, %9528
  %9547 = fadd fast float %9545, %9530
  br label %9548

; <label>:9548                                    ; preds = %9542, %9536, %9500
  %9549 = phi float [ %9502, %9500 ], [ %9546, %9542 ], [ %9528, %9536 ]
  %9550 = phi float [ %9523, %9500 ], [ %9529, %9542 ], [ %9529, %9536 ]
  %9551 = phi float [ %9522, %9500 ], [ %9547, %9542 ], [ %9530, %9536 ]
  %9552 = phi float [ %9522, %9500 ], [ %7799, %9542 ], [ %7799, %9536 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9553 = call float @dx.op.binary.f32(i32 36, float %9549, float 3.225500e+04)  ; FMin(a,b)
  %9554 = call float @dx.op.binary.f32(i32 36, float %9550, float 3.225500e+04)  ; FMin(a,b)
  %9555 = call float @dx.op.binary.f32(i32 36, float %9551, float 3.225500e+04)  ; FMin(a,b)
  %9556 = call float @dx.op.binary.f32(i32 36, float %9552, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9553)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9554)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9555)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9556)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

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
!dx.viewIdState = !{!76}
!dx.entryPoints = !{!77}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !65, !68}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
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
!64 = !{i32 55, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!65 = !{!66, !67}
!66 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!67 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!68 = !{!69, !70, !71, !72, !73, !74, !75}
!69 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!70 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!71 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!72 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!73 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!74 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!75 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!76 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 14, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0]}
!77 = !{void ()* @ps_main, !"ps_main", !78, !4, !104}
!78 = !{!79, !102, null}
!79 = !{!80, !83, !84, !86, !88, !89, !90, !91, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!80 = !{i32 0, !"SV_Position", i8 9, i8 3, !81, i8 4, i32 1, i8 4, i32 0, i8 0, !82}
!81 = !{i32 0}
!82 = !{i32 3, i32 15}
!83 = !{i32 1, !"COLOR", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 1, i8 0, !82}
!84 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 2, i8 0, !85}
!85 = !{i32 3, i32 3}
!86 = !{i32 3, !"NORMAL", i8 9, i8 0, !81, i8 2, i32 1, i8 3, i32 3, i8 0, !87}
!87 = !{i32 3, i32 7}
!88 = !{i32 4, !"TANGENT", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 4, i8 0, !82}
!89 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !81, i8 2, i32 1, i8 3, i32 5, i8 0, !87}
!90 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 6, i8 0, !82}
!91 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !81, i8 2, i32 1, i8 1, i32 3, i8 3, !92}
!92 = !{i32 3, i32 1}
!93 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !81, i8 2, i32 1, i8 3, i32 7, i8 0, !87}
!94 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 8, i8 0, !82}
!95 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !81, i8 2, i32 1, i8 2, i32 9, i8 0, !85}
!96 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 10, i8 0, !82}
!97 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 11, i8 0, !82}
!98 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !81, i8 1, i32 1, i8 1, i32 12, i8 0, !92}
!99 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !81, i8 1, i32 1, i8 2, i32 12, i8 1, !85}
!100 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !81, i8 1, i32 1, i8 4, i32 13, i8 0, !92}
!101 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !81, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!102 = !{!103}
!103 = !{i32 0, !"SV_Target", i8 9, i8 16, !81, i8 0, i32 1, i8 4, i32 0, i8 0, !82}
!104 = !{i32 0, i64 16}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !107}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = !{!114, !114, i64 0}
!114 = !{!"int", !115, i64 0}
!115 = !{!"omnipotent char", !116, i64 0}
!116 = !{!"Simple C/C++ TBAA"}
!117 = !{!118, !120, !122, !124}
!118 = distinct !{!118, !119, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!119 = distinct !{!119, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!120 = distinct !{!120, !121, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!121 = distinct !{!121, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!122 = distinct !{!122, !123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!123 = distinct !{!123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!124 = distinct !{!124, !125, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!125 = distinct !{!125, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = !{!128, !128, i64 0}
!128 = !{!"float", !115, i64 0}
!129 = distinct !{!129, !107}
!130 = distinct !{!130, !107}
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
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = !{!143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!143 = distinct !{!143, !144, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!144 = distinct !{!144, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!145 = distinct !{!145, !146, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!146 = distinct !{!146, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!147 = distinct !{!147, !146, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!148 = distinct !{!148, !149, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!149 = distinct !{!149, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!150 = distinct !{!150, !149, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!151 = distinct !{!151, !149, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!152 = distinct !{!152, !153, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!153 = distinct !{!153, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!154 = distinct !{!154, !153, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!155 = distinct !{!155, !153, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!156 = distinct !{!156, !157, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!157 = distinct !{!157, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"\01?sort@@YAXAIAM00@Z: %c"}
!160 = distinct !{!160, !"\01?sort@@YAXAIAM00@Z"}
!161 = !{!162, !163, !143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!162 = distinct !{!162, !160, !"\01?sort@@YAXAIAM00@Z: %a"}
!163 = distinct !{!163, !160, !"\01?sort@@YAXAIAM00@Z: %b"}
!164 = !{!163}
!165 = !{!162, !159, !143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!166 = !{!162}
!167 = !{!163, !159, !143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!168 = !{!169}
!169 = distinct !{!169, !170, !"\01?sort@@YAXAIAM00@Z: %c"}
!170 = distinct !{!170, !"\01?sort@@YAXAIAM00@Z"}
!171 = !{!172, !173, !143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!172 = distinct !{!172, !170, !"\01?sort@@YAXAIAM00@Z: %a"}
!173 = distinct !{!173, !170, !"\01?sort@@YAXAIAM00@Z: %b"}
!174 = !{!173}
!175 = !{!172, !169, !143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!176 = !{!172}
!177 = !{!173, !169, !143, !145, !147, !148, !150, !151, !152, !154, !155, !156}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 2}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 1}
!187 = distinct !{!187, !"dx.controlflow.hints", i32 1}
!188 = distinct !{!188, !"dx.controlflow.hints", i32 1}

