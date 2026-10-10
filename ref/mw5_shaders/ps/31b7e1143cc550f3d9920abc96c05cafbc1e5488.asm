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
; ENTITY_IDS               0    yz        12     NONE    uint     z 
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
; shader hash: 892fe6f7620504cc6d43cf435a430966
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 50, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 50, 52 }
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
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = alloca [4 x i32], align 4
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = fcmp fast une float %149, 0.000000e+00
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 3
  %154 = fmul fast float %118, 2.000000e+00
  %155 = fmul fast float %154, %152
  %156 = fmul fast float %119, 2.000000e+00
  %157 = fmul fast float %156, %153
  %158 = fsub fast float 1.000000e+00, %155
  %159 = fsub fast float 1.000000e+00, %157
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = select i1 %150, float %161, float %165
  %169 = select i1 %150, float %162, float %166
  %170 = select i1 %150, float %163, float %167
  %171 = fmul fast float %168, %158
  %172 = fmul fast float %169, %158
  %173 = fmul fast float %170, %158
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %193 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %194 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %208 = fmul fast float %118, 5.000000e-01
  %209 = fmul fast float %119, 5.000000e-01
  %210 = fptosi float %208 to i32
  %211 = fptosi float %209 to i32
  %212 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %210, i32 %211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = lshr i32 %213, 18
  %215 = uitofp i32 %214 to float
  %216 = fmul fast float %215, 0x3F4C00EBA0000000
  %217 = call float @dx.op.unary.f32(i32 21, float %216)  ; Exp(value)
  %218 = fadd fast float %217, -1.000000e+00
  %219 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %220 = extractvalue %dx.types.Dimensions %219, 0
  %221 = sitofp i32 %220 to float
  %222 = extractvalue %dx.types.Dimensions %219, 1
  %223 = sitofp i32 %222 to float
  %224 = fcmp fast oge float %208, %221
  %225 = fcmp fast oge float %209, %223
  %226 = or i1 %224, %225
  %227 = select i1 %226, float 0x4197782600000000, float %218
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 2
  %230 = extractvalue %dx.types.CBufRet.f32 %228, 3
  %231 = fmul fast float %229, %118
  %232 = fmul fast float %230, %119
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = and i32 %234, 114688
  %236 = icmp ne i32 %235, 0
  %237 = select i1 %236, float %231, float 0.000000e+00
  %238 = select i1 %236, float %232, float 0.000000e+00
  %239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %56, float %237, float %238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = fmul fast float %240, 2.550000e+02
  %242 = fptoui float %241 to i32
  %243 = select i1 %236, i32 %242, i32 0
  %244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.i32 %244, 3
  %246 = and i32 %245, 3
  %247 = icmp ne i32 %246, 0
  %248 = and i32 %245, 4
  %249 = icmp ne i32 %248, 0
  %250 = and i1 %247, %249
  br i1 %250, label %251, label %260

; <label>:251                                     ; preds = %0
  %252 = fmul fast float %153, %119
  %253 = fmul fast float %152, %118
  %254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %55, float %253, float %252, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 0
  %256 = fsub fast float 1.000000e+00, %255
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 0
  %259 = fcmp fast olt float %256, %258
  br label %263

; <label>:260                                     ; preds = %0
  %261 = icmp eq i32 %248, 0
  %262 = and i1 %247, %261
  br label %263

; <label>:263                                     ; preds = %260, %251
  %264 = phi i1 [ %259, %251 ], [ %262, %260 ]
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 2
  %267 = fmul fast float %266, 0x3FE3C6EF40000000
  %268 = frem fast float %118, 2.560000e+02
  %269 = frem fast float %119, 2.560000e+02
  %270 = fptoui float %268 to i32
  %271 = fptoui float %269 to i32
  %272 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %270, i32 %271, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = fadd fast float %273, %267
  %275 = call float @dx.op.unary.f32(i32 22, float %274)  ; Frc(value)
  %276 = add i32 %61, 156
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = shl i32 %278, 4
  %280 = and i32 %279, 32752
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %278, 7
  %283 = and i32 %282, 32752
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %278, 22
  %286 = shl nuw nsw i32 %285, 5
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = add i32 %61, 216
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = lshr i32 %290, 8
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = lshr i32 %290, 16
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = add i32 %61, 36
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 65535
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %304, 16
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = add i32 %61, 288
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %311, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = fmul fast float %313, 0x3F50624DE0000000
  %317 = fmul fast float %315, 0x3F50624DE0000000
  %318 = mul i32 %62, 100
  %319 = add i32 %318, 28
  %320 = add i32 %318, 40
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = add i32 %61, 172
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = shl i32 %325, 4
  %327 = and i32 %326, 32752
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %325, 7
  %330 = and i32 %329, 32752
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %325, 22
  %333 = shl nuw nsw i32 %332, 5
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = add i32 %61, 232
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = lshr i32 %337, 8
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = lshr i32 %337, 16
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %347, 0x3F70101020000000
  %349 = add i32 %61, 52
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 65535
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %351, 16
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = add i32 %61, 304
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = and i32 %358, 65535
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %358, 16
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = shl i32 %364, 4
  %366 = and i32 %365, 32752
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = lshr i32 %364, 7
  %369 = and i32 %368, 32752
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %364, 22
  %372 = shl nuw nsw i32 %371, 5
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = and i32 %322, 1
  %375 = icmp ne i32 %374, 0
  %376 = select i1 %375, float %367, float %328
  %377 = select i1 %375, float %370, float %331
  %378 = select i1 %375, float %373, float %334
  %379 = add i32 %318, 44
  %380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.f32 %380, 0
  %382 = fmul fast float %381, %376
  %383 = fmul fast float %381, %377
  %384 = fmul fast float %381, %378
  %385 = add i32 %318, 48
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = shl i32 %387, 4
  %389 = and i32 %388, 32752
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %387, 7
  %392 = and i32 %391, 32752
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %387, 22
  %395 = shl nuw nsw i32 %394, 5
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = and i32 %322, 8
  %398 = icmp ne i32 %397, 0
  %399 = select i1 %398, float %390, float %340
  %400 = select i1 %398, float %393, float %344
  %401 = select i1 %398, float %396, float %348
  %402 = add i32 %318, 52
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 65535
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = lshr i32 %404, 16
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = and i32 %322, 2
  %410 = icmp ne i32 %409, 0
  %411 = select i1 %410, float %406, float %353
  %412 = select i1 %410, float %408, float %355
  %413 = add i32 %318, 56
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 65535
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = lshr i32 %415, 16
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = and i32 %322, 4
  %421 = icmp ne i32 %420, 0
  %422 = select i1 %421, float %417, float %360
  %423 = fmul float %422, 0x3F50624DE0000000
  %424 = select i1 %421, float %419, float %362
  %425 = fmul float %424, 0x3F50624DE0000000
  %426 = add i32 %318, 60
  %427 = add i32 %318, 32
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = add i32 %61, 188
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = shl i32 %432, 4
  %434 = and i32 %433, 32752
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %432, 7
  %437 = and i32 %436, 32752
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = lshr i32 %432, 22
  %440 = shl nuw nsw i32 %439, 5
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = add i32 %61, 248
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 255
  %446 = uitofp i32 %445 to float
  %447 = fmul fast float %446, 0x3F70101020000000
  %448 = lshr i32 %444, 8
  %449 = and i32 %448, 255
  %450 = uitofp i32 %449 to float
  %451 = fmul fast float %450, 0x3F70101020000000
  %452 = lshr i32 %444, 16
  %453 = and i32 %452, 255
  %454 = uitofp i32 %453 to float
  %455 = fmul fast float %454, 0x3F70101020000000
  %456 = add i32 %61, 68
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = and i32 %458, 65535
  %460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %459)  ; LegacyF16ToF32(value)
  %461 = lshr i32 %458, 16
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = add i32 %61, 320
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = and i32 %465, 65535
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = lshr i32 %465, 16
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = shl i32 %471, 4
  %473 = and i32 %472, 32752
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = lshr i32 %471, 7
  %476 = and i32 %475, 32752
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = lshr i32 %471, 22
  %479 = shl nuw nsw i32 %478, 5
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = and i32 %429, 1
  %482 = icmp ne i32 %481, 0
  %483 = select i1 %482, float %474, float %435
  %484 = select i1 %482, float %477, float %438
  %485 = select i1 %482, float %480, float %441
  %486 = add i32 %318, 64
  %487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = fmul fast float %488, %483
  %490 = fmul fast float %488, %484
  %491 = fmul fast float %488, %485
  %492 = add i32 %318, 68
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = shl i32 %494, 4
  %496 = and i32 %495, 32752
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = lshr i32 %494, 7
  %499 = and i32 %498, 32752
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = lshr i32 %494, 22
  %502 = shl nuw nsw i32 %501, 5
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = and i32 %429, 8
  %505 = icmp ne i32 %504, 0
  %506 = select i1 %505, float %497, float %447
  %507 = select i1 %505, float %500, float %451
  %508 = select i1 %505, float %503, float %455
  %509 = add i32 %318, 72
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = and i32 %511, 65535
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = lshr i32 %511, 16
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = and i32 %429, 2
  %517 = icmp ne i32 %516, 0
  %518 = select i1 %517, float %513, float %460
  %519 = select i1 %517, float %515, float %462
  %520 = add i32 %318, 76
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = and i32 %522, 65535
  %524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %523)  ; LegacyF16ToF32(value)
  %525 = lshr i32 %522, 16
  %526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %525)  ; LegacyF16ToF32(value)
  %527 = and i32 %429, 4
  %528 = icmp ne i32 %527, 0
  %529 = select i1 %528, float %524, float %467
  %530 = fmul float %529, 0x3F50624DE0000000
  %531 = select i1 %528, float %526, float %469
  %532 = fmul float %531, 0x3F50624DE0000000
  %533 = add i32 %318, 80
  %534 = add i32 %318, 36
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = add i32 %61, 204
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = shl i32 %539, 4
  %541 = and i32 %540, 32752
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = lshr i32 %539, 7
  %544 = and i32 %543, 32752
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = lshr i32 %539, 22
  %547 = shl nuw nsw i32 %546, 5
  %548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %547)  ; LegacyF16ToF32(value)
  %549 = add i32 %61, 264
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = and i32 %551, 255
  %553 = uitofp i32 %552 to float
  %554 = fmul fast float %553, 0x3F70101020000000
  %555 = lshr i32 %551, 8
  %556 = and i32 %555, 255
  %557 = uitofp i32 %556 to float
  %558 = fmul fast float %557, 0x3F70101020000000
  %559 = lshr i32 %551, 16
  %560 = and i32 %559, 255
  %561 = uitofp i32 %560 to float
  %562 = fmul fast float %561, 0x3F70101020000000
  %563 = add i32 %61, 84
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = and i32 %565, 65535
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = lshr i32 %565, 16
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = add i32 %61, 336
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = and i32 %572, 65535
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = lshr i32 %572, 16
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = shl i32 %578, 4
  %580 = and i32 %579, 32752
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = lshr i32 %578, 7
  %583 = and i32 %582, 32752
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = lshr i32 %578, 22
  %586 = shl nuw nsw i32 %585, 5
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = and i32 %536, 1
  %589 = icmp ne i32 %588, 0
  %590 = select i1 %589, float %581, float %542
  %591 = select i1 %589, float %584, float %545
  %592 = select i1 %589, float %587, float %548
  %593 = add i32 %318, 84
  %594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.f32 %594, 0
  %596 = fmul fast float %595, %590
  %597 = fmul fast float %595, %591
  %598 = fmul fast float %595, %592
  %599 = add i32 %318, 88
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = shl i32 %601, 4
  %603 = and i32 %602, 32752
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = lshr i32 %601, 7
  %606 = and i32 %605, 32752
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = lshr i32 %601, 22
  %609 = shl nuw nsw i32 %608, 5
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = and i32 %536, 8
  %612 = icmp ne i32 %611, 0
  %613 = select i1 %612, float %604, float %554
  %614 = select i1 %612, float %607, float %558
  %615 = select i1 %612, float %610, float %562
  %616 = add i32 %318, 92
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = and i32 %618, 65535
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = lshr i32 %618, 16
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = and i32 %536, 2
  %624 = icmp ne i32 %623, 0
  %625 = select i1 %624, float %620, float %567
  %626 = select i1 %624, float %622, float %569
  %627 = add i32 %318, 96
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = and i32 %629, 65535
  %631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %630)  ; LegacyF16ToF32(value)
  %632 = lshr i32 %629, 16
  %633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %632)  ; LegacyF16ToF32(value)
  %634 = and i32 %536, 4
  %635 = icmp ne i32 %634, 0
  %636 = select i1 %635, float %631, float %574
  %637 = fmul float %636, 0x3F50624DE0000000
  %638 = select i1 %635, float %633, float %576
  %639 = fmul float %638, 0x3F50624DE0000000
  %640 = add i32 %61, 348
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = and i32 %642, 32
  %644 = icmp eq i32 %643, 0
  %645 = and i32 %642, 64
  %646 = icmp eq i32 %645, 0
  %647 = and i32 %642, 128
  %648 = icmp eq i32 %647, 0
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = and i32 %650, 2
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %668, label %653

; <label>:653                                     ; preds = %263
  %654 = add i32 %61, 524
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = add i32 %656, 0
  %658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %657, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %659 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %658, %dx.types.Handle %115, float %96, float %97, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %660 = extractvalue %dx.types.ResRet.f32 %659, 0
  %661 = extractvalue %dx.types.ResRet.f32 %659, 1
  %662 = extractvalue %dx.types.ResRet.f32 %659, 2
  %663 = extractvalue %dx.types.ResRet.f32 %659, 3
  %664 = fmul fast float %663, %98
  %665 = fmul fast float %660, %99
  %666 = fmul fast float %661, %100
  %667 = fmul fast float %662, %101
  br label %668

; <label>:668                                     ; preds = %653, %263
  %669 = phi float [ %101, %263 ], [ %667, %653 ]
  %670 = phi float [ %100, %263 ], [ %666, %653 ]
  %671 = phi float [ %99, %263 ], [ %665, %653 ]
  %672 = phi float [ %98, %263 ], [ %664, %653 ]
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = and i32 %674, 2
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %696, label %677

; <label>:677                                     ; preds = %668
  %678 = add i32 %61, 44
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = and i32 %680, 1
  %682 = icmp ne i32 %681, 0
  %683 = select i1 %682, float %671, float 1.000000e+00
  %684 = add i32 %61, 60
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %684, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = and i32 %686, 1
  %688 = icmp ne i32 %687, 0
  %689 = select i1 %688, float %670, float 1.000000e+00
  %690 = add i32 %61, 76
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = and i32 %692, 1
  %694 = icmp ne i32 %693, 0
  %695 = select i1 %694, float %669, float 1.000000e+00
  br label %696

; <label>:696                                     ; preds = %677, %668
  %697 = phi float [ %669, %668 ], [ %695, %677 ]
  %698 = phi float [ %670, %668 ], [ %689, %677 ]
  %699 = phi float [ %671, %668 ], [ %683, %677 ]
  %700 = lshr i32 %674, 20
  %701 = and i32 %700, 3
  %702 = add nuw nsw i32 %701, 1
  %703 = add i32 %61, 24
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = add i32 %61, 28
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = or i32 %708, %705
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %1245, label %711

; <label>:711                                     ; preds = %696
  %712 = and i32 %705, 262144
  %713 = icmp ne i32 %712, 0
  %714 = select i1 %713, float %68, float 1.000000e+00
  %715 = select i1 %713, float %69, float 0.000000e+00
  %716 = select i1 %713, float %70, float 0.000000e+00
  %717 = select i1 %713, float %71, float 1.000000e+00
  %718 = select i1 %713, float %72, float %96
  %719 = select i1 %713, float %73, float %97
  %720 = add i32 %61, 284
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = lshr i32 %722, 16
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = fmul fast float %724, 0x3F50624DE0000000
  %726 = add i32 %61, 88
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = lshr i32 %728, 16
  %730 = and i32 %729, 255
  %731 = lshr i32 %728, 24
  %732 = add i32 %61, 292
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = and i32 %734, 65535
  %736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %735)  ; LegacyF16ToF32(value)
  %737 = lshr i32 %734, 16
  %738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %737)  ; LegacyF16ToF32(value)
  %739 = add i32 %61, 32
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %739, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = lshr i32 %741, 22
  %743 = shl nuw nsw i32 %742, 5
  %744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %743)  ; LegacyF16ToF32(value)
  %745 = shl i32 %741, 4
  %746 = and i32 %745, 32752
  %747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %746)  ; LegacyF16ToF32(value)
  %748 = lshr i32 %741, 7
  %749 = and i32 %748, 32752
  %750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %749)  ; LegacyF16ToF32(value)
  %751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.f32 %751, 3
  %753 = fmul fast float %752, 1.000000e+03
  %754 = fmul fast float %316, %753
  %755 = call float @dx.op.unary.f32(i32 22, float %754)  ; Frc(value)
  %756 = fadd fast float %755, %306
  %757 = fmul fast float %317, %753
  %758 = call float @dx.op.unary.f32(i32 22, float %757)  ; Frc(value)
  %759 = fadd fast float %758, %308
  %760 = fmul fast float %725, %753
  %761 = call float @dx.op.unary.f32(i32 22, float %760)  ; Frc(value)
  %762 = fmul fast float %761, 0x401921FB60000000
  %763 = fadd fast float %762, %744
  %764 = call float @dx.op.unary.f32(i32 13, float %763)  ; Sin(value)
  %765 = call float @dx.op.unary.f32(i32 12, float %763)  ; Cos(value)
  %766 = fsub fast float -0.000000e+00, %764
  %767 = fadd fast float %718, -5.000000e-01
  %768 = fadd fast float %719, -5.000000e-01
  %769 = fmul fast float %736, %767
  %770 = fmul fast float %738, %768
  %771 = fadd fast float %769, 5.000000e-01
  %772 = fadd fast float %770, 5.000000e-01
  %773 = fmul fast float %747, %771
  %774 = fmul fast float %750, %772
  %775 = fmul fast float %765, %773
  %776 = call float @dx.op.tertiary.f32(i32 46, float %766, float %774, float %775)  ; FMad(a,b,c)
  %777 = fmul fast float %764, %773
  %778 = call float @dx.op.tertiary.f32(i32 46, float %765, float %774, float %777)  ; FMad(a,b,c)
  %779 = fadd fast float %756, %776
  %780 = fadd fast float %759, %778
  %781 = icmp ugt i32 %730, 1
  %782 = icmp ugt i32 %728, 33554431
  %783 = or i1 %782, %781
  br i1 %783, label %784, label %809

; <label>:784                                     ; preds = %711
  %785 = add i32 %61, 228
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = lshr i32 %787, 16
  %789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %788)  ; LegacyF16ToF32(value)
  %790 = fmul fast float %752, %789
  %791 = call float @dx.op.unary.f32(i32 22, float %790)  ; Frc(value)
  %792 = mul nuw nsw i32 %730, %731
  %793 = uitofp i32 %792 to float
  %794 = fmul fast float %791, %793
  %795 = call float @dx.op.unary.f32(i32 27, float %794)  ; Round_ni(value)
  %796 = fptoui float %795 to i32
  %797 = urem i32 %796, %730
  %798 = udiv i32 %796, %731
  %799 = call float @dx.op.unary.f32(i32 22, float %779)  ; Frc(value)
  %800 = call float @dx.op.unary.f32(i32 22, float %780)  ; Frc(value)
  %801 = uitofp i32 %797 to float
  %802 = uitofp i32 %798 to float
  %803 = fadd fast float %799, %801
  %804 = fadd fast float %800, %802
  %805 = uitofp i32 %730 to float
  %806 = uitofp i32 %731 to float
  %807 = fdiv fast float %803, %805
  %808 = fdiv fast float %804, %806
  br label %809

; <label>:809                                     ; preds = %784, %711
  %810 = phi float [ %807, %784 ], [ %779, %711 ]
  %811 = phi float [ %808, %784 ], [ %780, %711 ]
  %812 = and i32 %705, 256
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %860, label %814

; <label>:814                                     ; preds = %809
  %815 = add i32 %61, 472
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = add i32 %817, 0
  %819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %818, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %820 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %819, %dx.types.Handle %115, float %810, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = add i32 %61, 100
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = shl i32 %824, 4
  %826 = and i32 %825, 32752
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = lshr i32 %824, 7
  %829 = and i32 %828, 32752
  %830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %829)  ; LegacyF16ToF32(value)
  %831 = fsub fast float 1.000000e+00, %672
  %832 = call float @dx.op.binary.f32(i32 35, float %831, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %833 = bitcast float %672 to i32
  %834 = sitofp i32 %833 to float
  %835 = fadd fast float %834, 0xC1CFBF8940000000
  %836 = fmul fast float %830, %835
  %837 = fadd fast float %836, 0x41CFBF8940000000
  %838 = fptosi float %837 to i32
  %839 = bitcast i32 %838 to float
  %840 = bitcast float %832 to i32
  %841 = sitofp i32 %840 to float
  %842 = fadd fast float %841, 0xC1CFBF8940000000
  %843 = fmul fast float %842, %830
  %844 = fadd fast float %843, 0x41CFBF8940000000
  %845 = fptosi float %844 to i32
  %846 = bitcast i32 %845 to float
  %847 = fmul fast float %839, %827
  %848 = fmul fast float %846, %827
  %849 = fsub fast float %832, %847
  %850 = fadd fast float %848, %832
  %851 = call float @dx.op.unary.f32(i32 7, float %849)  ; Saturate(value)
  %852 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  %853 = fsub fast float %821, %851
  %854 = fsub fast float %852, %851
  %855 = bitcast float %854 to i32
  %856 = sub nsw i32 2129859010, %855
  %857 = bitcast i32 %856 to float
  %858 = fmul fast float %857, %853
  %859 = call float @dx.op.unary.f32(i32 7, float %858)  ; Saturate(value)
  br label %860

; <label>:860                                     ; preds = %814, %809
  %861 = phi float [ %859, %814 ], [ %672, %809 ]
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = and i32 %863, 128
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %882, label %866

; <label>:866                                     ; preds = %860
  %867 = add i32 %61, 456
  %868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.i32 %868, 0
  %870 = add i32 %869, 0
  %871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %870, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %872 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %871, %dx.types.Handle %115, float %810, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %873 = extractvalue %dx.types.ResRet.f32 %872, 0
  %874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.i32 %874, 0
  %876 = and i32 %875, 524288
  %877 = icmp ne i32 %876, 0
  %878 = fcmp fast ogt float %873, 0x3FE0101020000000
  %879 = select i1 %878, float 1.000000e+00, float 0.000000e+00
  %880 = select i1 %877, float %879, float %873
  %881 = fmul fast float %880, %861
  br label %882

; <label>:882                                     ; preds = %866, %860
  %883 = phi float [ %881, %866 ], [ %861, %860 ]
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = and i32 %885, 16
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %1086, label %888

; <label>:888                                     ; preds = %882
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = add i32 %61, 408
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = add i32 %893, 0
  %895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %894, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %896 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %895, %dx.types.Handle %114, float %810, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = extractvalue %dx.types.ResRet.f32 %896, 1
  %899 = extractvalue %dx.types.ResRet.f32 %896, 2
  %900 = extractvalue %dx.types.ResRet.f32 %896, 3
  %901 = and i32 %890, 255
  %902 = uitofp i32 %901 to float
  %903 = lshr i32 %890, 8
  %904 = and i32 %903, 255
  %905 = uitofp i32 %904 to float
  %906 = fmul fast float %900, %902
  %907 = fadd fast float %906, %905
  %908 = fmul fast float %907, 0x3F70101000000000
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = and i32 %910, 512
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %921, label %913

; <label>:913                                     ; preds = %888
  %914 = add i32 %61, 492
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = add i32 %916, 0
  %918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %917, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %919 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %918, %dx.types.Handle %115, float %810, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %920 = extractvalue %dx.types.ResRet.f32 %919, 0
  br label %921

; <label>:921                                     ; preds = %913, %888
  %922 = phi float [ %920, %913 ], [ 1.000000e+00, %888 ]
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = and i32 %924, 33554432
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %1033, label %927

; <label>:927                                     ; preds = %921
  %928 = add i32 %61, 224
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = and i32 %930, 65535
  %932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %931)  ; LegacyF16ToF32(value)
  %933 = lshr i32 %930, 16
  %934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %933)  ; LegacyF16ToF32(value)
  %935 = add i32 %61, 228
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = and i32 %937, 65535
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = lshr i32 %941, 24
  %943 = uitofp i32 %942 to float
  %944 = fmul fast float %943, 0x3F70101020000000
  %945 = and i32 %941, 255
  %946 = uitofp i32 %945 to float
  %947 = fmul fast float %946, 0x3F70101020000000
  %948 = lshr i32 %941, 8
  %949 = and i32 %948, 255
  %950 = uitofp i32 %949 to float
  %951 = fmul fast float %950, 0x3F70101020000000
  %952 = lshr i32 %941, 16
  %953 = and i32 %952, 255
  %954 = uitofp i32 %953 to float
  %955 = fmul fast float %954, 0x3F70101020000000
  %956 = add i32 %61, 220
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = lshr i32 %958, 24
  %960 = uitofp i32 %959 to float
  %961 = fmul fast float %960, 0x3F70101020000000
  %962 = and i32 %958, 255
  %963 = uitofp i32 %962 to float
  %964 = fmul fast float %963, 0x3F70101020000000
  %965 = lshr i32 %958, 8
  %966 = and i32 %965, 255
  %967 = uitofp i32 %966 to float
  %968 = fmul fast float %967, 0x3F70101020000000
  %969 = lshr i32 %958, 16
  %970 = and i32 %969, 255
  %971 = uitofp i32 %970 to float
  %972 = fmul fast float %971, 0x3F70101020000000
  %973 = bitcast float %897 to i32
  %974 = ashr i32 %973, 1
  %975 = sub nsw i32 1597463174, %974
  %976 = bitcast i32 %975 to float
  %977 = fmul fast float %897, 5.000000e-01
  %978 = fmul fast float %976, %976
  %979 = fmul fast float %978, %977
  %980 = fsub fast float 1.500000e+00, %979
  %981 = fmul fast float %976, %897
  %982 = fmul fast float %981, %980
  %983 = bitcast float %898 to i32
  %984 = ashr i32 %983, 1
  %985 = sub nsw i32 1597463174, %984
  %986 = bitcast i32 %985 to float
  %987 = fmul fast float %898, 5.000000e-01
  %988 = fmul fast float %986, %986
  %989 = fmul fast float %988, %987
  %990 = fsub fast float 1.500000e+00, %989
  %991 = fmul fast float %986, %898
  %992 = fmul fast float %991, %990
  %993 = bitcast float %899 to i32
  %994 = ashr i32 %993, 1
  %995 = sub nsw i32 1597463174, %994
  %996 = bitcast i32 %995 to float
  %997 = fmul fast float %899, 5.000000e-01
  %998 = fmul fast float %996, %996
  %999 = fmul fast float %998, %997
  %1000 = fsub fast float 1.500000e+00, %999
  %1001 = fmul fast float %996, %899
  %1002 = fmul fast float %1001, %1000
  %1003 = fsub fast float %982, %964
  %1004 = fsub fast float %992, %968
  %1005 = fsub fast float %1002, %972
  %1006 = fmul fast float %1003, %932
  %1007 = fmul fast float %1004, %934
  %1008 = fmul fast float %1005, %939
  %1009 = fadd fast float %1006, %947
  %1010 = fadd fast float %1007, %951
  %1011 = fadd fast float %1008, %955
  %1012 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  %1013 = call float @dx.op.unary.f32(i32 7, float %1010)  ; Saturate(value)
  %1014 = call float @dx.op.unary.f32(i32 7, float %1011)  ; Saturate(value)
  %1015 = fmul fast float %1012, %1012
  %1016 = fmul fast float %1013, %1013
  %1017 = fmul fast float %1014, %1014
  %1018 = fsub fast float %1015, %897
  %1019 = fsub fast float %1016, %898
  %1020 = fsub fast float %1017, %899
  %1021 = fmul fast float %1018, %922
  %1022 = fmul fast float %1019, %922
  %1023 = fmul fast float %1020, %922
  %1024 = fadd fast float %1021, %897
  %1025 = fadd fast float %1022, %898
  %1026 = fadd fast float %1023, %899
  %1027 = fadd fast float %944, %908
  %1028 = fsub fast float %1027, %961
  %1029 = call float @dx.op.unary.f32(i32 7, float %1028)  ; Saturate(value)
  %1030 = fsub fast float %1029, %908
  %1031 = fmul fast float %1030, %922
  %1032 = fadd fast float %1031, %908
  br label %1086

; <label>:1033                                    ; preds = %921
  %1034 = and i32 %924, 134217728
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1070, label %1036

; <label>:1036                                    ; preds = %1033
  %1037 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %1038 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %1039 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %1040 = fadd fast float %1037, -5.000000e-01
  %1041 = fadd fast float %1038, -5.000000e-01
  %1042 = fadd fast float %1039, -5.000000e-01
  %1043 = fmul fast float %1040, %922
  %1044 = fmul fast float %1041, %922
  %1045 = fmul fast float %1042, %922
  %1046 = fadd fast float %1043, 5.000000e-01
  %1047 = fadd fast float %1044, 5.000000e-01
  %1048 = fadd fast float %1045, 5.000000e-01
  %1049 = call float @dx.op.unary.f32(i32 24, float %897)  ; Sqrt(value)
  %1050 = call float @dx.op.unary.f32(i32 24, float %898)  ; Sqrt(value)
  %1051 = call float @dx.op.unary.f32(i32 24, float %899)  ; Sqrt(value)
  %1052 = fmul fast float %1046, 2.000000e+00
  %1053 = fsub fast float 1.000000e+00, %1052
  %1054 = fmul fast float %1053, %1049
  %1055 = fadd fast float %1054, %1052
  %1056 = fmul fast float %1055, %1049
  %1057 = fmul fast float %1047, 2.000000e+00
  %1058 = fsub fast float 1.000000e+00, %1057
  %1059 = fmul fast float %1058, %1050
  %1060 = fadd fast float %1059, %1057
  %1061 = fmul fast float %1060, %1050
  %1062 = fmul fast float %1048, 2.000000e+00
  %1063 = fsub fast float 1.000000e+00, %1062
  %1064 = fmul fast float %1063, %1051
  %1065 = fadd fast float %1064, %1062
  %1066 = fmul fast float %1065, %1051
  %1067 = fmul fast float %1056, %1056
  %1068 = fmul fast float %1061, %1061
  %1069 = fmul fast float %1066, %1066
  br label %1086

; <label>:1070                                    ; preds = %1033
  %1071 = fmul fast float %293, %293
  %1072 = fmul fast float %297, %297
  %1073 = fmul fast float %301, %301
  %1074 = fadd fast float %1071, -1.000000e+00
  %1075 = fadd fast float %1072, -1.000000e+00
  %1076 = fadd fast float %1073, -1.000000e+00
  %1077 = fmul fast float %922, %1074
  %1078 = fmul fast float %922, %1075
  %1079 = fmul fast float %922, %1076
  %1080 = fadd fast float %1077, 1.000000e+00
  %1081 = fadd fast float %1078, 1.000000e+00
  %1082 = fadd fast float %1079, 1.000000e+00
  %1083 = fmul fast float %1080, %897
  %1084 = fmul fast float %1081, %898
  %1085 = fmul fast float %1082, %899
  br label %1086

; <label>:1086                                    ; preds = %1070, %1036, %927, %882
  %1087 = phi float [ %1032, %927 ], [ %908, %1036 ], [ %908, %1070 ], [ 0x3FA23C0BE0000000, %882 ]
  %1088 = phi float [ %1024, %927 ], [ %1067, %1036 ], [ %1083, %1070 ], [ 1.000000e+00, %882 ]
  %1089 = phi float [ %1025, %927 ], [ %1068, %1036 ], [ %1084, %1070 ], [ 1.000000e+00, %882 ]
  %1090 = phi float [ %1026, %927 ], [ %1069, %1036 ], [ %1085, %1070 ], [ 1.000000e+00, %882 ]
  %1091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.i32 %1091, 1
  %1093 = and i32 %1092, 1
  %1094 = icmp ne i32 %1093, 0
  %1095 = add i32 %61, 356
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1095, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = and i32 %1097, 32
  %1099 = icmp ne i32 %1098, 0
  %1100 = and i1 %1094, %1099
  %1101 = select i1 %1100, float 1.000000e+00, float %1088
  %1102 = select i1 %1100, float 0x3FD3333340000000, float %1089
  %1103 = select i1 %1100, float 0x3FD3333340000000, float %1090
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = and i32 %1105, 32
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1180, label %1108

; <label>:1108                                    ; preds = %1086
  %1109 = add i32 %61, 92
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = add i32 %61, 424
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = add i32 %1114, 0
  %1116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1115, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1117 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1116, %dx.types.Handle %114, float %810, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.ResRet.f32 %1117, 1
  %1120 = extractvalue %dx.types.ResRet.f32 %1117, 2
  %1121 = extractvalue %dx.types.ResRet.f32 %1117, 3
  %1122 = and i32 %1111, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = lshr i32 %1111, 8
  %1125 = and i32 %1124, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = lshr i32 %1111, 16
  %1128 = and i32 %1127, 255
  %1129 = uitofp i32 %1128 to float
  %1130 = fmul fast float %1129, 0x3F70101000000000
  %1131 = fmul fast float %1118, %1123
  %1132 = fadd fast float %1131, %1126
  %1133 = fmul fast float %1132, 0x3F70101000000000
  %1134 = fadd fast float %1119, -5.000000e-01
  %1135 = fadd fast float %1121, -5.000000e-01
  %1136 = fmul fast float %1134, %1130
  %1137 = fmul fast float %1135, %1130
  %1138 = fadd fast float %1136, 5.000000e-01
  %1139 = fadd fast float %1137, 5.000000e-01
  %1140 = fmul fast float %1138, 2.000000e+00
  %1141 = fadd fast float %1140, -1.000000e+00
  %1142 = fmul fast float %1139, 2.000000e+00
  %1143 = fadd fast float %1142, -1.000000e+00
  %1144 = fadd fast float %1141, %1143
  %1145 = fmul fast float %1144, 5.000000e-01
  %1146 = fsub fast float %1141, %1143
  %1147 = fmul fast float %1146, 5.000000e-01
  %1148 = call float @dx.op.unary.f32(i32 6, float %1145)  ; FAbs(value)
  %1149 = fsub fast float 1.000000e+00, %1148
  %1150 = call float @dx.op.unary.f32(i32 6, float %1147)  ; FAbs(value)
  %1151 = fsub fast float %1149, %1150
  %1152 = call float @dx.op.dot3.f32(i32 55, float %1145, float %1147, float %1151, float %1145, float %1147, float %1151)  ; Dot3(ax,ay,az,bx,by,bz)
  %1153 = call float @dx.op.unary.f32(i32 25, float %1152)  ; Rsqrt(value)
  %1154 = fmul fast float %1145, %1153
  %1155 = fmul fast float %1147, %1153
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = and i32 %1157, 67108864
  %1159 = icmp eq i32 %1158, 0
  br i1 %1159, label %1176, label %1160

; <label>:1160                                    ; preds = %1108
  %1161 = add i32 %61, 280
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = and i32 %1163, 65535
  %1165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1164)  ; LegacyF16ToF32(value)
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = and i32 %1167, 65535
  %1169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1168)  ; LegacyF16ToF32(value)
  %1170 = lshr i32 %1163, 16
  %1171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1170)  ; LegacyF16ToF32(value)
  %1172 = fsub fast float %1133, %1171
  %1173 = fmul fast float %1172, %1165
  %1174 = fadd fast float %1173, %1169
  %1175 = call float @dx.op.unary.f32(i32 7, float %1174)  ; Saturate(value)
  br label %1176

; <label>:1176                                    ; preds = %1160, %1108
  %1177 = phi float [ %1175, %1160 ], [ %1133, %1108 ]
  %1178 = call float @dx.op.dot2.f32(i32 54, float %1154, float %1155, float %714, float %715)  ; Dot2(ax,ay,bx,by)
  %1179 = call float @dx.op.dot2.f32(i32 54, float %1154, float %1155, float %716, float %717)  ; Dot2(ax,ay,bx,by)
  br label %1180

; <label>:1180                                    ; preds = %1176, %1086
  %1181 = phi float [ %1177, %1176 ], [ 0x3FD6666660000000, %1086 ]
  %1182 = phi float [ %1178, %1176 ], [ 0.000000e+00, %1086 ]
  %1183 = phi float [ %1179, %1176 ], [ 0.000000e+00, %1086 ]
  %1184 = phi float [ %1120, %1176 ], [ 1.000000e+00, %1086 ]
  %1185 = add i32 %61, 160
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = lshr i32 %1187, 22
  %1189 = shl nuw nsw i32 %1188, 5
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = and i32 %1192, 64
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1228, label %1195

; <label>:1195                                    ; preds = %1180
  %1196 = add i32 %61, 440
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = add i32 %1198, 0
  %1200 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1199, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = and i32 %1202, 131072
  %1204 = icmp eq i32 %1203, 0
  %1205 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1200, %dx.types.Handle %114, float %810, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.ResRet.f32 %1205, 1
  %1208 = extractvalue %dx.types.ResRet.f32 %1205, 2
  %1209 = fmul fast float %1206, %281
  %1210 = fmul fast float %1207, %284
  %1211 = fmul fast float %1208, %287
  br i1 %1204, label %1218, label %1212

; <label>:1212                                    ; preds = %1195
  %1213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.f32 %1213, 0
  %1215 = fmul fast float %1214, %1209
  %1216 = fmul fast float %1214, %1210
  %1217 = fmul fast float %1214, %1211
  br label %1218

; <label>:1218                                    ; preds = %1212, %1195
  %1219 = phi float [ %1215, %1212 ], [ %1209, %1195 ]
  %1220 = phi float [ %1216, %1212 ], [ %1210, %1195 ]
  %1221 = phi float [ %1217, %1212 ], [ %1211, %1195 ]
  %1222 = fmul fast float %1219, %1190
  %1223 = select i1 %264, float %1222, float %1219
  %1224 = call float @dx.op.dot3.f32(i32 55, float %1223, float %1220, float %1221, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1225 = select i1 %264, float 0.000000e+00, float %1219
  %1226 = select i1 %264, float %1224, float %1220
  %1227 = select i1 %264, float 0.000000e+00, float %1221
  br label %1228

; <label>:1228                                    ; preds = %1218, %1180
  %1229 = phi float [ %1225, %1218 ], [ 0.000000e+00, %1180 ]
  %1230 = phi float [ %1226, %1218 ], [ 0.000000e+00, %1180 ]
  %1231 = phi float [ %1227, %1218 ], [ 0.000000e+00, %1180 ]
  %1232 = add i32 %61, 96
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = and i32 %1234, 255
  %1236 = uitofp i32 %1235 to float
  %1237 = lshr i32 %1234, 8
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = call float @dx.op.dot3.f32(i32 55, float %1101, float %1102, float %1103, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1241 = fmul fast float %1239, %1240
  %1242 = fadd fast float %1241, %1236
  %1243 = fmul fast float %1242, 0x3F70101020000000
  %1244 = call float @dx.op.unary.f32(i32 7, float %1243)  ; Saturate(value)
  br label %1245

; <label>:1245                                    ; preds = %1228, %696
  %1246 = phi float [ 0.000000e+00, %696 ], [ %1182, %1228 ]
  %1247 = phi float [ 0.000000e+00, %696 ], [ %1183, %1228 ]
  %1248 = phi float [ 0.000000e+00, %696 ], [ %1101, %1228 ]
  %1249 = phi float [ 0.000000e+00, %696 ], [ %1102, %1228 ]
  %1250 = phi float [ 0.000000e+00, %696 ], [ %1103, %1228 ]
  %1251 = phi float [ 0.000000e+00, %696 ], [ %1229, %1228 ]
  %1252 = phi float [ 0.000000e+00, %696 ], [ %1230, %1228 ]
  %1253 = phi float [ 0.000000e+00, %696 ], [ %1231, %1228 ]
  %1254 = phi float [ 0.000000e+00, %696 ], [ %1087, %1228 ]
  %1255 = phi float [ 0.000000e+00, %696 ], [ %883, %1228 ]
  %1256 = phi float [ 0.000000e+00, %696 ], [ %1181, %1228 ]
  %1257 = phi float [ 0.000000e+00, %696 ], [ %1184, %1228 ]
  %1258 = phi float [ 0.000000e+00, %696 ], [ %1244, %1228 ]
  br i1 %644, label %1985, label %1259

; <label>:1259                                    ; preds = %1245
  %1260 = icmp ult i32 %702, 2
  %1261 = add i32 %61, 40
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = add i32 %61, 44
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = or i32 %1266, %1263
  %1268 = icmp eq i32 %1267, 0
  br i1 %1268, label %1985, label %1269

; <label>:1269                                    ; preds = %1259
  %1270 = and i32 %1263, 262144
  %1271 = icmp ne i32 %1270, 0
  %1272 = select i1 %1271, float %68, float 1.000000e+00
  %1273 = select i1 %1271, float %69, float 0.000000e+00
  %1274 = select i1 %1271, float %70, float 0.000000e+00
  %1275 = select i1 %1271, float %71, float 1.000000e+00
  %1276 = select i1 %1271, float %72, float %96
  %1277 = select i1 %1271, float %73, float %97
  %1278 = add i32 %61, 300
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = lshr i32 %1280, 16
  %1282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1281)  ; LegacyF16ToF32(value)
  %1283 = fmul fast float %1282, 0x3F50624DE0000000
  %1284 = add i32 %61, 104
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = lshr i32 %1286, 16
  %1288 = and i32 %1287, 255
  %1289 = lshr i32 %1286, 24
  %1290 = add i32 %61, 308
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = and i32 %1292, 65535
  %1294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1293)  ; LegacyF16ToF32(value)
  %1295 = lshr i32 %1292, 16
  %1296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1295)  ; LegacyF16ToF32(value)
  %1297 = add i32 %61, 48
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = lshr i32 %1299, 22
  %1301 = shl nuw nsw i32 %1300, 5
  %1302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1301)  ; LegacyF16ToF32(value)
  %1303 = shl i32 %1299, 4
  %1304 = and i32 %1303, 32752
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = lshr i32 %1299, 7
  %1307 = and i32 %1306, 32752
  %1308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1307)  ; LegacyF16ToF32(value)
  %1309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.f32 %1309, 3
  %1311 = fmul fast float %1310, 1.000000e+03
  %1312 = fmul fast float %1311, %423
  %1313 = call float @dx.op.unary.f32(i32 22, float %1312)  ; Frc(value)
  %1314 = fadd fast float %1313, %411
  %1315 = fmul fast float %1311, %425
  %1316 = call float @dx.op.unary.f32(i32 22, float %1315)  ; Frc(value)
  %1317 = fadd fast float %1316, %412
  %1318 = fmul fast float %1283, %1311
  %1319 = call float @dx.op.unary.f32(i32 22, float %1318)  ; Frc(value)
  %1320 = fmul fast float %1319, 0x401921FB60000000
  %1321 = fadd fast float %1320, %1302
  %1322 = call float @dx.op.unary.f32(i32 13, float %1321)  ; Sin(value)
  %1323 = call float @dx.op.unary.f32(i32 12, float %1321)  ; Cos(value)
  %1324 = fsub fast float -0.000000e+00, %1322
  %1325 = fadd fast float %1276, -5.000000e-01
  %1326 = fadd fast float %1277, -5.000000e-01
  %1327 = fmul fast float %1294, %1325
  %1328 = fmul fast float %1296, %1326
  %1329 = fadd fast float %1327, 5.000000e-01
  %1330 = fadd fast float %1328, 5.000000e-01
  %1331 = fmul fast float %1305, %1329
  %1332 = fmul fast float %1308, %1330
  %1333 = fmul fast float %1323, %1331
  %1334 = call float @dx.op.tertiary.f32(i32 46, float %1324, float %1332, float %1333)  ; FMad(a,b,c)
  %1335 = fmul fast float %1322, %1331
  %1336 = call float @dx.op.tertiary.f32(i32 46, float %1323, float %1332, float %1335)  ; FMad(a,b,c)
  %1337 = fadd fast float %1314, %1334
  %1338 = fadd fast float %1317, %1336
  %1339 = icmp ugt i32 %1288, 1
  %1340 = icmp ugt i32 %1286, 33554431
  %1341 = or i1 %1340, %1339
  br i1 %1341, label %1342, label %1367

; <label>:1342                                    ; preds = %1269
  %1343 = add i32 %61, 244
  %1344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1343, i32 undef)  ; BufferLoad(srv,index,wot)
  %1345 = extractvalue %dx.types.ResRet.i32 %1344, 0
  %1346 = lshr i32 %1345, 16
  %1347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1346)  ; LegacyF16ToF32(value)
  %1348 = fmul fast float %1310, %1347
  %1349 = call float @dx.op.unary.f32(i32 22, float %1348)  ; Frc(value)
  %1350 = mul nuw nsw i32 %1288, %1289
  %1351 = uitofp i32 %1350 to float
  %1352 = fmul fast float %1349, %1351
  %1353 = call float @dx.op.unary.f32(i32 27, float %1352)  ; Round_ni(value)
  %1354 = fptoui float %1353 to i32
  %1355 = urem i32 %1354, %1288
  %1356 = udiv i32 %1354, %1289
  %1357 = call float @dx.op.unary.f32(i32 22, float %1337)  ; Frc(value)
  %1358 = call float @dx.op.unary.f32(i32 22, float %1338)  ; Frc(value)
  %1359 = uitofp i32 %1355 to float
  %1360 = uitofp i32 %1356 to float
  %1361 = fadd fast float %1357, %1359
  %1362 = fadd fast float %1358, %1360
  %1363 = uitofp i32 %1288 to float
  %1364 = uitofp i32 %1289 to float
  %1365 = fdiv fast float %1361, %1363
  %1366 = fdiv fast float %1362, %1364
  br label %1367

; <label>:1367                                    ; preds = %1342, %1269
  %1368 = phi float [ %1365, %1342 ], [ %1337, %1269 ]
  %1369 = phi float [ %1366, %1342 ], [ %1338, %1269 ]
  %1370 = and i32 %1263, 256
  %1371 = icmp eq i32 %1370, 0
  br i1 %1371, label %1418, label %1372

; <label>:1372                                    ; preds = %1367
  %1373 = add i32 %61, 476
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = add i32 %1375, 0
  %1377 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1376, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1378 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1377, %dx.types.Handle %115, float %1368, float %1369, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1379 = extractvalue %dx.types.ResRet.f32 %1378, 0
  %1380 = add i32 %61, 116
  %1381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1380, i32 undef)  ; BufferLoad(srv,index,wot)
  %1382 = extractvalue %dx.types.ResRet.i32 %1381, 0
  %1383 = shl i32 %1382, 4
  %1384 = and i32 %1383, 32752
  %1385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1384)  ; LegacyF16ToF32(value)
  %1386 = lshr i32 %1382, 7
  %1387 = and i32 %1386, 32752
  %1388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1387)  ; LegacyF16ToF32(value)
  %1389 = fsub fast float 1.000000e+00, %699
  %1390 = call float @dx.op.binary.f32(i32 35, float %1389, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1391 = bitcast float %699 to i32
  %1392 = sitofp i32 %1391 to float
  %1393 = fadd fast float %1392, 0xC1CFBF8940000000
  %1394 = fmul fast float %1388, %1393
  %1395 = fadd fast float %1394, 0x41CFBF8940000000
  %1396 = fptosi float %1395 to i32
  %1397 = bitcast i32 %1396 to float
  %1398 = bitcast float %1390 to i32
  %1399 = sitofp i32 %1398 to float
  %1400 = fadd fast float %1399, 0xC1CFBF8940000000
  %1401 = fmul fast float %1400, %1388
  %1402 = fadd fast float %1401, 0x41CFBF8940000000
  %1403 = fptosi float %1402 to i32
  %1404 = bitcast i32 %1403 to float
  %1405 = fmul fast float %1397, %1385
  %1406 = fmul fast float %1404, %1385
  %1407 = fsub fast float %1390, %1405
  %1408 = fadd fast float %1406, %1390
  %1409 = call float @dx.op.unary.f32(i32 7, float %1407)  ; Saturate(value)
  %1410 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1411 = fsub fast float %1379, %1409
  %1412 = fsub fast float %1410, %1409
  %1413 = bitcast float %1412 to i32
  %1414 = sub nsw i32 2129859010, %1413
  %1415 = bitcast i32 %1414 to float
  %1416 = fmul fast float %1415, %1411
  %1417 = call float @dx.op.unary.f32(i32 7, float %1416)  ; Saturate(value)
  br label %1418

; <label>:1418                                    ; preds = %1372, %1367
  %1419 = phi float [ %1417, %1372 ], [ %699, %1367 ]
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = and i32 %1421, 128
  %1423 = icmp eq i32 %1422, 0
  br i1 %1423, label %1440, label %1424

; <label>:1424                                    ; preds = %1418
  %1425 = add i32 %61, 460
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = add i32 %1427, 0
  %1429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1429, %dx.types.Handle %115, float %1368, float %1369, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = and i32 %1433, 524288
  %1435 = icmp ne i32 %1434, 0
  %1436 = fcmp fast ogt float %1431, 0x3FE0101020000000
  %1437 = select i1 %1436, float 1.000000e+00, float 0.000000e+00
  %1438 = select i1 %1435, float %1437, float %1431
  %1439 = fmul fast float %1438, %1419
  br label %1440

; <label>:1440                                    ; preds = %1424, %1418
  %1441 = phi float [ %1439, %1424 ], [ %1419, %1418 ]
  %1442 = fcmp fast ult float %1441, 0x3F70101020000000
  br i1 %1442, label %1985, label %1443

; <label>:1443                                    ; preds = %1440
  %1444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.i32 %1444, 0
  %1446 = and i32 %1445, 16
  %1447 = icmp eq i32 %1446, 0
  br i1 %1447, label %1646, label %1448

; <label>:1448                                    ; preds = %1443
  %1449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.i32 %1449, 0
  %1451 = add i32 %61, 412
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1451, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = add i32 %1453, 0
  %1455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1454, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1456 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1455, %dx.types.Handle %114, float %1368, float %1369, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1457 = extractvalue %dx.types.ResRet.f32 %1456, 0
  %1458 = extractvalue %dx.types.ResRet.f32 %1456, 1
  %1459 = extractvalue %dx.types.ResRet.f32 %1456, 2
  %1460 = extractvalue %dx.types.ResRet.f32 %1456, 3
  %1461 = and i32 %1450, 255
  %1462 = uitofp i32 %1461 to float
  %1463 = lshr i32 %1450, 8
  %1464 = and i32 %1463, 255
  %1465 = uitofp i32 %1464 to float
  %1466 = fmul fast float %1460, %1462
  %1467 = fadd fast float %1466, %1465
  %1468 = fmul fast float %1467, 0x3F70101000000000
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 512
  %1472 = icmp eq i32 %1471, 0
  br i1 %1472, label %1481, label %1473

; <label>:1473                                    ; preds = %1448
  %1474 = add i32 %61, 496
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = add i32 %1476, 0
  %1478 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1477, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1479 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1478, %dx.types.Handle %115, float %1368, float %1369, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1480 = extractvalue %dx.types.ResRet.f32 %1479, 0
  br label %1481

; <label>:1481                                    ; preds = %1473, %1448
  %1482 = phi float [ %1480, %1473 ], [ 1.000000e+00, %1448 ]
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = and i32 %1484, 33554432
  %1486 = icmp eq i32 %1485, 0
  br i1 %1486, label %1593, label %1487

; <label>:1487                                    ; preds = %1481
  %1488 = add i32 %61, 240
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 65535
  %1492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1491)  ; LegacyF16ToF32(value)
  %1493 = lshr i32 %1490, 16
  %1494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1493)  ; LegacyF16ToF32(value)
  %1495 = add i32 %61, 244
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = and i32 %1497, 65535
  %1499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1498)  ; LegacyF16ToF32(value)
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = lshr i32 %1501, 24
  %1503 = uitofp i32 %1502 to float
  %1504 = fmul fast float %1503, 0x3F70101020000000
  %1505 = and i32 %1501, 255
  %1506 = uitofp i32 %1505 to float
  %1507 = fmul fast float %1506, 0x3F70101020000000
  %1508 = lshr i32 %1501, 8
  %1509 = and i32 %1508, 255
  %1510 = uitofp i32 %1509 to float
  %1511 = fmul fast float %1510, 0x3F70101020000000
  %1512 = lshr i32 %1501, 16
  %1513 = and i32 %1512, 255
  %1514 = uitofp i32 %1513 to float
  %1515 = fmul fast float %1514, 0x3F70101020000000
  %1516 = add i32 %61, 236
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1516, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = lshr i32 %1518, 24
  %1520 = uitofp i32 %1519 to float
  %1521 = fmul fast float %1520, 0x3F70101020000000
  %1522 = and i32 %1518, 255
  %1523 = uitofp i32 %1522 to float
  %1524 = fmul fast float %1523, 0x3F70101020000000
  %1525 = lshr i32 %1518, 8
  %1526 = and i32 %1525, 255
  %1527 = uitofp i32 %1526 to float
  %1528 = fmul fast float %1527, 0x3F70101020000000
  %1529 = lshr i32 %1518, 16
  %1530 = and i32 %1529, 255
  %1531 = uitofp i32 %1530 to float
  %1532 = fmul fast float %1531, 0x3F70101020000000
  %1533 = bitcast float %1457 to i32
  %1534 = ashr i32 %1533, 1
  %1535 = sub nsw i32 1597463174, %1534
  %1536 = bitcast i32 %1535 to float
  %1537 = fmul fast float %1457, 5.000000e-01
  %1538 = fmul fast float %1536, %1536
  %1539 = fmul fast float %1538, %1537
  %1540 = fsub fast float 1.500000e+00, %1539
  %1541 = fmul fast float %1536, %1457
  %1542 = fmul fast float %1541, %1540
  %1543 = bitcast float %1458 to i32
  %1544 = ashr i32 %1543, 1
  %1545 = sub nsw i32 1597463174, %1544
  %1546 = bitcast i32 %1545 to float
  %1547 = fmul fast float %1458, 5.000000e-01
  %1548 = fmul fast float %1546, %1546
  %1549 = fmul fast float %1548, %1547
  %1550 = fsub fast float 1.500000e+00, %1549
  %1551 = fmul fast float %1546, %1458
  %1552 = fmul fast float %1551, %1550
  %1553 = bitcast float %1459 to i32
  %1554 = ashr i32 %1553, 1
  %1555 = sub nsw i32 1597463174, %1554
  %1556 = bitcast i32 %1555 to float
  %1557 = fmul fast float %1459, 5.000000e-01
  %1558 = fmul fast float %1556, %1556
  %1559 = fmul fast float %1558, %1557
  %1560 = fsub fast float 1.500000e+00, %1559
  %1561 = fmul fast float %1556, %1459
  %1562 = fmul fast float %1561, %1560
  %1563 = fsub fast float %1542, %1524
  %1564 = fsub fast float %1552, %1528
  %1565 = fsub fast float %1562, %1532
  %1566 = fmul fast float %1563, %1492
  %1567 = fmul fast float %1564, %1494
  %1568 = fmul fast float %1565, %1499
  %1569 = fadd fast float %1566, %1507
  %1570 = fadd fast float %1567, %1511
  %1571 = fadd fast float %1568, %1515
  %1572 = call float @dx.op.unary.f32(i32 7, float %1569)  ; Saturate(value)
  %1573 = call float @dx.op.unary.f32(i32 7, float %1570)  ; Saturate(value)
  %1574 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  %1575 = fmul fast float %1572, %1572
  %1576 = fmul fast float %1573, %1573
  %1577 = fmul fast float %1574, %1574
  %1578 = fsub fast float %1575, %1457
  %1579 = fsub fast float %1576, %1458
  %1580 = fsub fast float %1577, %1459
  %1581 = fmul fast float %1578, %1482
  %1582 = fmul fast float %1579, %1482
  %1583 = fmul fast float %1580, %1482
  %1584 = fadd fast float %1581, %1457
  %1585 = fadd fast float %1582, %1458
  %1586 = fadd fast float %1583, %1459
  %1587 = fadd fast float %1504, %1468
  %1588 = fsub fast float %1587, %1521
  %1589 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  %1590 = fsub fast float %1589, %1468
  %1591 = fmul fast float %1590, %1482
  %1592 = fadd fast float %1591, %1468
  br label %1646

; <label>:1593                                    ; preds = %1481
  %1594 = and i32 %1484, 134217728
  %1595 = icmp eq i32 %1594, 0
  br i1 %1595, label %1630, label %1596

; <label>:1596                                    ; preds = %1593
  %1597 = call float @dx.op.unary.f32(i32 24, float %399)  ; Sqrt(value)
  %1598 = call float @dx.op.unary.f32(i32 24, float %400)  ; Sqrt(value)
  %1599 = call float @dx.op.unary.f32(i32 24, float %401)  ; Sqrt(value)
  %1600 = fadd fast float %1597, -5.000000e-01
  %1601 = fadd fast float %1598, -5.000000e-01
  %1602 = fadd fast float %1599, -5.000000e-01
  %1603 = fmul fast float %1600, %1482
  %1604 = fmul fast float %1601, %1482
  %1605 = fmul fast float %1602, %1482
  %1606 = fadd fast float %1603, 5.000000e-01
  %1607 = fadd fast float %1604, 5.000000e-01
  %1608 = fadd fast float %1605, 5.000000e-01
  %1609 = call float @dx.op.unary.f32(i32 24, float %1457)  ; Sqrt(value)
  %1610 = call float @dx.op.unary.f32(i32 24, float %1458)  ; Sqrt(value)
  %1611 = call float @dx.op.unary.f32(i32 24, float %1459)  ; Sqrt(value)
  %1612 = fmul fast float %1606, 2.000000e+00
  %1613 = fsub fast float 1.000000e+00, %1612
  %1614 = fmul fast float %1613, %1609
  %1615 = fadd fast float %1614, %1612
  %1616 = fmul fast float %1615, %1609
  %1617 = fmul fast float %1607, 2.000000e+00
  %1618 = fsub fast float 1.000000e+00, %1617
  %1619 = fmul fast float %1618, %1610
  %1620 = fadd fast float %1619, %1617
  %1621 = fmul fast float %1620, %1610
  %1622 = fmul fast float %1608, 2.000000e+00
  %1623 = fsub fast float 1.000000e+00, %1622
  %1624 = fmul fast float %1623, %1611
  %1625 = fadd fast float %1624, %1622
  %1626 = fmul fast float %1625, %1611
  %1627 = fmul fast float %1616, %1616
  %1628 = fmul fast float %1621, %1621
  %1629 = fmul fast float %1626, %1626
  br label %1646

; <label>:1630                                    ; preds = %1593
  %1631 = fmul fast float %399, %399
  %1632 = fmul fast float %400, %400
  %1633 = fmul fast float %401, %401
  %1634 = fadd fast float %1631, -1.000000e+00
  %1635 = fadd fast float %1632, -1.000000e+00
  %1636 = fadd fast float %1633, -1.000000e+00
  %1637 = fmul fast float %1482, %1634
  %1638 = fmul fast float %1482, %1635
  %1639 = fmul fast float %1482, %1636
  %1640 = fadd fast float %1637, 1.000000e+00
  %1641 = fadd fast float %1638, 1.000000e+00
  %1642 = fadd fast float %1639, 1.000000e+00
  %1643 = fmul fast float %1640, %1457
  %1644 = fmul fast float %1641, %1458
  %1645 = fmul fast float %1642, %1459
  br label %1646

; <label>:1646                                    ; preds = %1630, %1596, %1487, %1443
  %1647 = phi float [ %1592, %1487 ], [ %1468, %1596 ], [ %1468, %1630 ], [ 0x3FA23C0BE0000000, %1443 ]
  %1648 = phi float [ %1584, %1487 ], [ %1627, %1596 ], [ %1643, %1630 ], [ 1.000000e+00, %1443 ]
  %1649 = phi float [ %1585, %1487 ], [ %1628, %1596 ], [ %1644, %1630 ], [ 1.000000e+00, %1443 ]
  %1650 = phi float [ %1586, %1487 ], [ %1629, %1596 ], [ %1645, %1630 ], [ 1.000000e+00, %1443 ]
  %1651 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.i32 %1651, 1
  %1653 = and i32 %1652, 1
  %1654 = icmp ne i32 %1653, 0
  %1655 = add i32 %61, 356
  %1656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1655, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.i32 %1656, 0
  %1658 = and i32 %1657, 32
  %1659 = icmp ne i32 %1658, 0
  %1660 = and i1 %1654, %1659
  %1661 = select i1 %1660, float 1.000000e+00, float %1648
  %1662 = select i1 %1660, float 0x3FD3333340000000, float %1649
  %1663 = select i1 %1660, float 0x3FD3333340000000, float %1650
  %1664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.i32 %1664, 0
  %1666 = and i32 %1665, 32
  %1667 = icmp eq i32 %1666, 0
  br i1 %1667, label %1740, label %1668

; <label>:1668                                    ; preds = %1646
  %1669 = add i32 %61, 108
  %1670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %1671 = extractvalue %dx.types.ResRet.i32 %1670, 0
  %1672 = add i32 %61, 428
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = add i32 %1674, 0
  %1676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1675, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1677 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1676, %dx.types.Handle %114, float %1368, float %1369, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1678 = extractvalue %dx.types.ResRet.f32 %1677, 0
  %1679 = extractvalue %dx.types.ResRet.f32 %1677, 1
  %1680 = extractvalue %dx.types.ResRet.f32 %1677, 2
  %1681 = extractvalue %dx.types.ResRet.f32 %1677, 3
  %1682 = and i32 %1671, 255
  %1683 = uitofp i32 %1682 to float
  %1684 = lshr i32 %1671, 8
  %1685 = and i32 %1684, 255
  %1686 = uitofp i32 %1685 to float
  %1687 = lshr i32 %1671, 16
  %1688 = and i32 %1687, 255
  %1689 = uitofp i32 %1688 to float
  %1690 = fmul fast float %1689, 0x3F70101000000000
  %1691 = fmul fast float %1678, %1683
  %1692 = fadd fast float %1691, %1686
  %1693 = fmul fast float %1692, 0x3F70101000000000
  %1694 = fadd fast float %1679, -5.000000e-01
  %1695 = fadd fast float %1681, -5.000000e-01
  %1696 = fmul fast float %1694, %1690
  %1697 = fmul fast float %1695, %1690
  %1698 = fadd fast float %1696, 5.000000e-01
  %1699 = fadd fast float %1697, 5.000000e-01
  %1700 = fmul fast float %1698, 2.000000e+00
  %1701 = fadd fast float %1700, -1.000000e+00
  %1702 = fmul fast float %1699, 2.000000e+00
  %1703 = fadd fast float %1702, -1.000000e+00
  %1704 = fadd fast float %1701, %1703
  %1705 = fmul fast float %1704, 5.000000e-01
  %1706 = fsub fast float %1701, %1703
  %1707 = fmul fast float %1706, 5.000000e-01
  %1708 = call float @dx.op.unary.f32(i32 6, float %1705)  ; FAbs(value)
  %1709 = fsub fast float 1.000000e+00, %1708
  %1710 = call float @dx.op.unary.f32(i32 6, float %1707)  ; FAbs(value)
  %1711 = fsub fast float %1709, %1710
  %1712 = call float @dx.op.dot3.f32(i32 55, float %1705, float %1707, float %1711, float %1705, float %1707, float %1711)  ; Dot3(ax,ay,az,bx,by,bz)
  %1713 = call float @dx.op.unary.f32(i32 25, float %1712)  ; Rsqrt(value)
  %1714 = fmul fast float %1705, %1713
  %1715 = fmul fast float %1707, %1713
  %1716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.i32 %1716, 0
  %1718 = and i32 %1717, 67108864
  %1719 = icmp eq i32 %1718, 0
  br i1 %1719, label %1736, label %1720

; <label>:1720                                    ; preds = %1668
  %1721 = add i32 %61, 296
  %1722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1721, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.i32 %1722, 0
  %1724 = and i32 %1723, 65535
  %1725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1724)  ; LegacyF16ToF32(value)
  %1726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.i32 %1726, 0
  %1728 = and i32 %1727, 65535
  %1729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1728)  ; LegacyF16ToF32(value)
  %1730 = lshr i32 %1723, 16
  %1731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1730)  ; LegacyF16ToF32(value)
  %1732 = fsub fast float %1693, %1731
  %1733 = fmul fast float %1732, %1725
  %1734 = fadd fast float %1733, %1729
  %1735 = call float @dx.op.unary.f32(i32 7, float %1734)  ; Saturate(value)
  br label %1736

; <label>:1736                                    ; preds = %1720, %1668
  %1737 = phi float [ %1735, %1720 ], [ %1693, %1668 ]
  %1738 = call float @dx.op.dot2.f32(i32 54, float %1714, float %1715, float %1272, float %1273)  ; Dot2(ax,ay,bx,by)
  %1739 = call float @dx.op.dot2.f32(i32 54, float %1714, float %1715, float %1274, float %1275)  ; Dot2(ax,ay,bx,by)
  br label %1740

; <label>:1740                                    ; preds = %1736, %1646
  %1741 = phi float [ %1737, %1736 ], [ 0x3FD6666660000000, %1646 ]
  %1742 = phi float [ %1738, %1736 ], [ 0.000000e+00, %1646 ]
  %1743 = phi float [ %1739, %1736 ], [ 0.000000e+00, %1646 ]
  %1744 = phi float [ %1680, %1736 ], [ 1.000000e+00, %1646 ]
  %1745 = add i32 %61, 176
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = lshr i32 %1747, 22
  %1749 = shl nuw nsw i32 %1748, 5
  %1750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1749)  ; LegacyF16ToF32(value)
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = and i32 %1752, 64
  %1754 = icmp eq i32 %1753, 0
  br i1 %1754, label %1788, label %1755

; <label>:1755                                    ; preds = %1740
  %1756 = add i32 %61, 444
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = add i32 %1758, 0
  %1760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1759, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = and i32 %1762, 131072
  %1764 = icmp eq i32 %1763, 0
  %1765 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1760, %dx.types.Handle %114, float %1368, float %1369, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1766 = extractvalue %dx.types.ResRet.f32 %1765, 0
  %1767 = extractvalue %dx.types.ResRet.f32 %1765, 1
  %1768 = extractvalue %dx.types.ResRet.f32 %1765, 2
  %1769 = fmul fast float %382, %1766
  %1770 = fmul fast float %383, %1767
  %1771 = fmul fast float %384, %1768
  br i1 %1764, label %1778, label %1772

; <label>:1772                                    ; preds = %1755
  %1773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1774 = extractvalue %dx.types.CBufRet.f32 %1773, 0
  %1775 = fmul fast float %1774, %1769
  %1776 = fmul fast float %1774, %1770
  %1777 = fmul fast float %1774, %1771
  br label %1778

; <label>:1778                                    ; preds = %1772, %1755
  %1779 = phi float [ %1775, %1772 ], [ %1769, %1755 ]
  %1780 = phi float [ %1776, %1772 ], [ %1770, %1755 ]
  %1781 = phi float [ %1777, %1772 ], [ %1771, %1755 ]
  %1782 = fmul fast float %1779, %1750
  %1783 = select i1 %264, float %1782, float %1779
  %1784 = call float @dx.op.dot3.f32(i32 55, float %1783, float %1780, float %1781, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1785 = select i1 %264, float 0.000000e+00, float %1779
  %1786 = select i1 %264, float %1784, float %1780
  %1787 = select i1 %264, float 0.000000e+00, float %1781
  br label %1788

; <label>:1788                                    ; preds = %1778, %1740
  %1789 = phi float [ %1785, %1778 ], [ 0.000000e+00, %1740 ]
  %1790 = phi float [ %1786, %1778 ], [ 0.000000e+00, %1740 ]
  %1791 = phi float [ %1787, %1778 ], [ 0.000000e+00, %1740 ]
  %1792 = add i32 %61, 112
  %1793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1794 = extractvalue %dx.types.ResRet.i32 %1793, 0
  %1795 = and i32 %1794, 255
  %1796 = uitofp i32 %1795 to float
  %1797 = lshr i32 %1794, 8
  %1798 = and i32 %1797, 255
  %1799 = uitofp i32 %1798 to float
  %1800 = call float @dx.op.dot3.f32(i32 55, float %1661, float %1662, float %1663, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1801 = fmul fast float %1799, %1800
  %1802 = fadd fast float %1801, %1796
  %1803 = fmul fast float %1802, 0x3F70101020000000
  %1804 = call float @dx.op.unary.f32(i32 7, float %1803)  ; Saturate(value)
  br i1 %1260, label %1805, label %1813

; <label>:1805                                    ; preds = %1788
  %1806 = fsub fast float 1.000000e+00, %1441
  %1807 = fmul fast float %1806, %1248
  %1808 = fmul fast float %1806, %1249
  %1809 = fmul fast float %1806, %1250
  %1810 = fmul fast float %1806, %1251
  %1811 = fmul fast float %1806, %1252
  %1812 = fmul fast float %1806, %1253
  br label %1813

; <label>:1813                                    ; preds = %1805, %1788
  %1814 = phi float [ %1807, %1805 ], [ %1248, %1788 ]
  %1815 = phi float [ %1808, %1805 ], [ %1249, %1788 ]
  %1816 = phi float [ %1809, %1805 ], [ %1250, %1788 ]
  %1817 = phi float [ %1810, %1805 ], [ %1251, %1788 ]
  %1818 = phi float [ %1811, %1805 ], [ %1252, %1788 ]
  %1819 = phi float [ %1812, %1805 ], [ %1253, %1788 ]
  %1820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.i32 %1820, 0
  %1822 = and i32 %1821, 3
  %1823 = icmp eq i32 %1822, 3
  br i1 %1823, label %1902, label %1824

; <label>:1824                                    ; preds = %1813
  %1825 = and i32 %1821, 16
  %1826 = icmp ne i32 %1825, 0
  %1827 = select i1 %1826, float %1441, float 0.000000e+00
  %1828 = icmp eq i32 %1822, 0
  br i1 %1828, label %1829, label %1857

; <label>:1829                                    ; preds = %1824
  %1830 = and i32 %1821, 64
  %1831 = icmp ne i32 %1830, 0
  %1832 = select i1 %1831, float %1441, float 0.000000e+00
  %1833 = fsub fast float %1661, %1814
  %1834 = fsub fast float %1662, %1815
  %1835 = fsub fast float %1663, %1816
  %1836 = fmul fast float %1827, %1833
  %1837 = fmul fast float %1827, %1834
  %1838 = fmul fast float %1827, %1835
  %1839 = fadd fast float %1836, %1814
  %1840 = fadd fast float %1837, %1815
  %1841 = fadd fast float %1838, %1816
  %1842 = fsub fast float %1647, %1254
  %1843 = fmul fast float %1827, %1842
  %1844 = fadd fast float %1843, %1254
  %1845 = fsub fast float %1789, %1817
  %1846 = fsub fast float %1790, %1818
  %1847 = fsub fast float %1791, %1819
  %1848 = fmul fast float %1832, %1845
  %1849 = fmul fast float %1832, %1846
  %1850 = fmul fast float %1832, %1847
  %1851 = fadd fast float %1848, %1817
  %1852 = fadd fast float %1849, %1818
  %1853 = fadd fast float %1850, %1819
  %1854 = fsub fast float %1804, %1258
  %1855 = fmul fast float %1827, %1854
  %1856 = fadd fast float %1855, %1258
  br label %1902

; <label>:1857                                    ; preds = %1824
  %1858 = icmp eq i32 %1822, 1
  br i1 %1858, label %1859, label %1872

; <label>:1859                                    ; preds = %1857
  %1860 = fadd fast float %1661, -1.000000e+00
  %1861 = fadd fast float %1662, -1.000000e+00
  %1862 = fadd fast float %1663, -1.000000e+00
  %1863 = fmul fast float %1827, %1860
  %1864 = fmul fast float %1827, %1861
  %1865 = fmul fast float %1827, %1862
  %1866 = fadd fast float %1863, 1.000000e+00
  %1867 = fadd fast float %1864, 1.000000e+00
  %1868 = fadd fast float %1865, 1.000000e+00
  %1869 = fmul fast float %1866, %1814
  %1870 = fmul fast float %1867, %1815
  %1871 = fmul fast float %1868, %1816
  br label %1902

; <label>:1872                                    ; preds = %1857
  %1873 = icmp eq i32 %1822, 2
  br i1 %1873, label %1874, label %1902

; <label>:1874                                    ; preds = %1872
  %1875 = call float @dx.op.unary.f32(i32 24, float %1661)  ; Sqrt(value)
  %1876 = call float @dx.op.unary.f32(i32 24, float %1662)  ; Sqrt(value)
  %1877 = call float @dx.op.unary.f32(i32 24, float %1663)  ; Sqrt(value)
  %1878 = fadd fast float %1875, -5.000000e-01
  %1879 = fadd fast float %1876, -5.000000e-01
  %1880 = fadd fast float %1877, -5.000000e-01
  %1881 = fmul fast float %1878, %1827
  %1882 = fmul fast float %1879, %1827
  %1883 = fmul fast float %1880, %1827
  %1884 = fadd fast float %1881, 5.000000e-01
  %1885 = fadd fast float %1882, 5.000000e-01
  %1886 = fadd fast float %1883, 5.000000e-01
  %1887 = fmul fast float %1884, 2.000000e+00
  %1888 = fsub fast float 1.000000e+00, %1887
  %1889 = fmul fast float %1888, %1814
  %1890 = fadd fast float %1889, %1887
  %1891 = fmul fast float %1890, %1814
  %1892 = fmul fast float %1885, 2.000000e+00
  %1893 = fsub fast float 1.000000e+00, %1892
  %1894 = fmul fast float %1893, %1815
  %1895 = fadd fast float %1894, %1892
  %1896 = fmul fast float %1895, %1815
  %1897 = fmul fast float %1886, 2.000000e+00
  %1898 = fsub fast float 1.000000e+00, %1897
  %1899 = fmul fast float %1898, %1816
  %1900 = fadd fast float %1899, %1897
  %1901 = fmul fast float %1900, %1816
  br label %1902

; <label>:1902                                    ; preds = %1874, %1872, %1859, %1829, %1813
  %1903 = phi float [ %1814, %1813 ], [ %1891, %1874 ], [ %1814, %1872 ], [ %1869, %1859 ], [ %1839, %1829 ]
  %1904 = phi float [ %1815, %1813 ], [ %1896, %1874 ], [ %1815, %1872 ], [ %1870, %1859 ], [ %1840, %1829 ]
  %1905 = phi float [ %1816, %1813 ], [ %1901, %1874 ], [ %1816, %1872 ], [ %1871, %1859 ], [ %1841, %1829 ]
  %1906 = phi float [ %1817, %1813 ], [ %1817, %1874 ], [ %1817, %1872 ], [ %1817, %1859 ], [ %1851, %1829 ]
  %1907 = phi float [ %1818, %1813 ], [ %1818, %1874 ], [ %1818, %1872 ], [ %1818, %1859 ], [ %1852, %1829 ]
  %1908 = phi float [ %1819, %1813 ], [ %1819, %1874 ], [ %1819, %1872 ], [ %1819, %1859 ], [ %1853, %1829 ]
  %1909 = phi float [ %1254, %1813 ], [ %1254, %1874 ], [ %1254, %1872 ], [ %1254, %1859 ], [ %1844, %1829 ]
  %1910 = phi float [ %1258, %1813 ], [ %1258, %1874 ], [ %1258, %1872 ], [ %1258, %1859 ], [ %1856, %1829 ]
  %1911 = and i32 %1821, 12
  %1912 = icmp eq i32 %1911, 12
  br i1 %1912, label %1985, label %1913

; <label>:1913                                    ; preds = %1902
  %1914 = and i32 %1821, 2097184
  %1915 = icmp eq i32 %1914, 2097184
  %1916 = select i1 %1915, float %1441, float 0.000000e+00
  %1917 = and i32 %1821, 4194336
  %1918 = icmp eq i32 %1917, 4194336
  %1919 = select i1 %1918, float %1441, float 0.000000e+00
  %1920 = and i32 %1821, 8388640
  %1921 = icmp eq i32 %1920, 8388640
  %1922 = select i1 %1921, float %1441, float 0.000000e+00
  %1923 = icmp eq i32 %1911, 0
  br i1 %1923, label %1924, label %1937

; <label>:1924                                    ; preds = %1913
  %1925 = fsub fast float %1742, %1246
  %1926 = fsub fast float %1743, %1247
  %1927 = fmul fast float %1916, %1925
  %1928 = fmul fast float %1916, %1926
  %1929 = fadd fast float %1927, %1246
  %1930 = fadd fast float %1928, %1247
  %1931 = fsub fast float %1744, %1257
  %1932 = fmul fast float %1919, %1931
  %1933 = fadd fast float %1932, %1257
  %1934 = fsub fast float %1741, %1256
  %1935 = fmul fast float %1922, %1934
  %1936 = fadd fast float %1935, %1256
  br label %1985

; <label>:1937                                    ; preds = %1913
  %1938 = icmp eq i32 %1911, 4
  br i1 %1938, label %1939, label %1971

; <label>:1939                                    ; preds = %1937
  %1940 = fmul fast float %1916, %1742
  %1941 = fmul fast float %1916, %1743
  %1942 = fadd fast float %1940, %1246
  %1943 = fadd fast float %1941, %1247
  %1944 = call float @dx.op.binary.f32(i32 36, float %1257, float %1744)  ; FMin(a,b)
  %1945 = fsub fast float %1944, %1257
  %1946 = fmul fast float %1945, %1919
  %1947 = fadd fast float %1946, %1257
  %1948 = fadd fast float %1741, %1256
  %1949 = fmul fast float %1948, 0x3FF337FAE0000000
  %1950 = fmul fast float %1256, %1256
  %1951 = fmul fast float %1741, %1741
  %1952 = fadd fast float %1951, %1950
  %1953 = fmul fast float %1952, 0x3FE5152B00000000
  %1954 = fmul fast float %1256, 0xBFCC1F85E0000000
  %1955 = fmul fast float %1954, %1741
  %1956 = fadd fast float %1955, 0xBFE1363700000000
  %1957 = fadd fast float %1956, %1949
  %1958 = fsub fast float %1957, %1953
  %1959 = fmul fast float %1948, 0x3FBA6F0D00000000
  %1960 = fmul fast float %1952, 0x3FD0432880000000
  %1961 = fmul fast float %1256, 0xBFEF110800000000
  %1962 = fmul fast float %1961, %1741
  %1963 = fadd fast float %1962, 1.000000e+00
  %1964 = fsub fast float %1963, %1959
  %1965 = fadd fast float %1964, %1960
  %1966 = fdiv fast float %1958, %1965
  %1967 = call float @dx.op.unary.f32(i32 7, float %1966)  ; Saturate(value)
  %1968 = fsub fast float %1967, %1256
  %1969 = fmul fast float %1968, %1922
  %1970 = fadd fast float %1969, %1256
  br label %1985

; <label>:1971                                    ; preds = %1937
  %1972 = icmp eq i32 %1911, 8
  br i1 %1972, label %1973, label %1985

; <label>:1973                                    ; preds = %1971
  %1974 = fmul fast float %1916, %1742
  %1975 = fmul fast float %1916, %1743
  %1976 = fadd fast float %1974, %1246
  %1977 = fadd fast float %1975, %1247
  %1978 = call float @dx.op.binary.f32(i32 36, float %1257, float %1744)  ; FMin(a,b)
  %1979 = fsub fast float %1978, %1257
  %1980 = fmul fast float %1979, %1919
  %1981 = fadd fast float %1980, %1257
  %1982 = fsub fast float %1741, %1256
  %1983 = fmul fast float %1922, %1982
  %1984 = fadd fast float %1983, %1256
  br label %1985

; <label>:1985                                    ; preds = %1973, %1971, %1939, %1924, %1902, %1440, %1259, %1245
  %1986 = phi float [ %1246, %1902 ], [ %1246, %1440 ], [ %1246, %1245 ], [ %1976, %1973 ], [ %1246, %1971 ], [ %1942, %1939 ], [ %1929, %1924 ], [ %1246, %1259 ]
  %1987 = phi float [ %1247, %1902 ], [ %1247, %1440 ], [ %1247, %1245 ], [ %1977, %1973 ], [ %1247, %1971 ], [ %1943, %1939 ], [ %1930, %1924 ], [ %1247, %1259 ]
  %1988 = phi float [ %1903, %1902 ], [ %1248, %1440 ], [ %1248, %1245 ], [ %1903, %1973 ], [ %1903, %1971 ], [ %1903, %1939 ], [ %1903, %1924 ], [ %1248, %1259 ]
  %1989 = phi float [ %1904, %1902 ], [ %1249, %1440 ], [ %1249, %1245 ], [ %1904, %1973 ], [ %1904, %1971 ], [ %1904, %1939 ], [ %1904, %1924 ], [ %1249, %1259 ]
  %1990 = phi float [ %1905, %1902 ], [ %1250, %1440 ], [ %1250, %1245 ], [ %1905, %1973 ], [ %1905, %1971 ], [ %1905, %1939 ], [ %1905, %1924 ], [ %1250, %1259 ]
  %1991 = phi float [ %1906, %1902 ], [ %1251, %1440 ], [ %1251, %1245 ], [ %1906, %1973 ], [ %1906, %1971 ], [ %1906, %1939 ], [ %1906, %1924 ], [ %1251, %1259 ]
  %1992 = phi float [ %1907, %1902 ], [ %1252, %1440 ], [ %1252, %1245 ], [ %1907, %1973 ], [ %1907, %1971 ], [ %1907, %1939 ], [ %1907, %1924 ], [ %1252, %1259 ]
  %1993 = phi float [ %1908, %1902 ], [ %1253, %1440 ], [ %1253, %1245 ], [ %1908, %1973 ], [ %1908, %1971 ], [ %1908, %1939 ], [ %1908, %1924 ], [ %1253, %1259 ]
  %1994 = phi float [ %1909, %1902 ], [ %1254, %1440 ], [ %1254, %1245 ], [ %1909, %1973 ], [ %1909, %1971 ], [ %1909, %1939 ], [ %1909, %1924 ], [ %1254, %1259 ]
  %1995 = phi float [ %1256, %1902 ], [ %1256, %1440 ], [ %1256, %1245 ], [ %1984, %1973 ], [ %1256, %1971 ], [ %1970, %1939 ], [ %1936, %1924 ], [ %1256, %1259 ]
  %1996 = phi float [ %1257, %1902 ], [ %1257, %1440 ], [ %1257, %1245 ], [ %1981, %1973 ], [ %1257, %1971 ], [ %1947, %1939 ], [ %1933, %1924 ], [ %1257, %1259 ]
  %1997 = phi float [ %1910, %1902 ], [ %1258, %1440 ], [ %1258, %1245 ], [ %1910, %1973 ], [ %1910, %1971 ], [ %1910, %1939 ], [ %1910, %1924 ], [ %1258, %1259 ]
  br i1 %646, label %2724, label %1998

; <label>:1998                                    ; preds = %1985
  %1999 = icmp ult i32 %702, 3
  %2000 = add i32 %61, 56
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = add i32 %61, 60
  %2004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.i32 %2004, 0
  %2006 = or i32 %2005, %2002
  %2007 = icmp eq i32 %2006, 0
  br i1 %2007, label %2724, label %2008

; <label>:2008                                    ; preds = %1998
  %2009 = and i32 %2002, 262144
  %2010 = icmp ne i32 %2009, 0
  %2011 = select i1 %2010, float %68, float 1.000000e+00
  %2012 = select i1 %2010, float %69, float 0.000000e+00
  %2013 = select i1 %2010, float %70, float 0.000000e+00
  %2014 = select i1 %2010, float %71, float 1.000000e+00
  %2015 = select i1 %2010, float %72, float %96
  %2016 = select i1 %2010, float %73, float %97
  %2017 = add i32 %61, 316
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = lshr i32 %2019, 16
  %2021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2020)  ; LegacyF16ToF32(value)
  %2022 = fmul fast float %2021, 0x3F50624DE0000000
  %2023 = add i32 %61, 120
  %2024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.i32 %2024, 0
  %2026 = lshr i32 %2025, 16
  %2027 = and i32 %2026, 255
  %2028 = lshr i32 %2025, 24
  %2029 = add i32 %61, 324
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = and i32 %2031, 65535
  %2033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2032)  ; LegacyF16ToF32(value)
  %2034 = lshr i32 %2031, 16
  %2035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2034)  ; LegacyF16ToF32(value)
  %2036 = add i32 %61, 64
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2036, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = lshr i32 %2038, 22
  %2040 = shl nuw nsw i32 %2039, 5
  %2041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2040)  ; LegacyF16ToF32(value)
  %2042 = shl i32 %2038, 4
  %2043 = and i32 %2042, 32752
  %2044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2043)  ; LegacyF16ToF32(value)
  %2045 = lshr i32 %2038, 7
  %2046 = and i32 %2045, 32752
  %2047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2046)  ; LegacyF16ToF32(value)
  %2048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2049 = extractvalue %dx.types.CBufRet.f32 %2048, 3
  %2050 = fmul fast float %2049, 1.000000e+03
  %2051 = fmul fast float %2050, %530
  %2052 = call float @dx.op.unary.f32(i32 22, float %2051)  ; Frc(value)
  %2053 = fadd fast float %2052, %518
  %2054 = fmul fast float %2050, %532
  %2055 = call float @dx.op.unary.f32(i32 22, float %2054)  ; Frc(value)
  %2056 = fadd fast float %2055, %519
  %2057 = fmul fast float %2022, %2050
  %2058 = call float @dx.op.unary.f32(i32 22, float %2057)  ; Frc(value)
  %2059 = fmul fast float %2058, 0x401921FB60000000
  %2060 = fadd fast float %2059, %2041
  %2061 = call float @dx.op.unary.f32(i32 13, float %2060)  ; Sin(value)
  %2062 = call float @dx.op.unary.f32(i32 12, float %2060)  ; Cos(value)
  %2063 = fsub fast float -0.000000e+00, %2061
  %2064 = fadd fast float %2015, -5.000000e-01
  %2065 = fadd fast float %2016, -5.000000e-01
  %2066 = fmul fast float %2033, %2064
  %2067 = fmul fast float %2035, %2065
  %2068 = fadd fast float %2066, 5.000000e-01
  %2069 = fadd fast float %2067, 5.000000e-01
  %2070 = fmul fast float %2044, %2068
  %2071 = fmul fast float %2047, %2069
  %2072 = fmul fast float %2062, %2070
  %2073 = call float @dx.op.tertiary.f32(i32 46, float %2063, float %2071, float %2072)  ; FMad(a,b,c)
  %2074 = fmul fast float %2061, %2070
  %2075 = call float @dx.op.tertiary.f32(i32 46, float %2062, float %2071, float %2074)  ; FMad(a,b,c)
  %2076 = fadd fast float %2053, %2073
  %2077 = fadd fast float %2056, %2075
  %2078 = icmp ugt i32 %2027, 1
  %2079 = icmp ugt i32 %2025, 33554431
  %2080 = or i1 %2079, %2078
  br i1 %2080, label %2081, label %2106

; <label>:2081                                    ; preds = %2008
  %2082 = add i32 %61, 260
  %2083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2082, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.i32 %2083, 0
  %2085 = lshr i32 %2084, 16
  %2086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2085)  ; LegacyF16ToF32(value)
  %2087 = fmul fast float %2049, %2086
  %2088 = call float @dx.op.unary.f32(i32 22, float %2087)  ; Frc(value)
  %2089 = mul nuw nsw i32 %2027, %2028
  %2090 = uitofp i32 %2089 to float
  %2091 = fmul fast float %2088, %2090
  %2092 = call float @dx.op.unary.f32(i32 27, float %2091)  ; Round_ni(value)
  %2093 = fptoui float %2092 to i32
  %2094 = urem i32 %2093, %2027
  %2095 = udiv i32 %2093, %2028
  %2096 = call float @dx.op.unary.f32(i32 22, float %2076)  ; Frc(value)
  %2097 = call float @dx.op.unary.f32(i32 22, float %2077)  ; Frc(value)
  %2098 = uitofp i32 %2094 to float
  %2099 = uitofp i32 %2095 to float
  %2100 = fadd fast float %2096, %2098
  %2101 = fadd fast float %2097, %2099
  %2102 = uitofp i32 %2027 to float
  %2103 = uitofp i32 %2028 to float
  %2104 = fdiv fast float %2100, %2102
  %2105 = fdiv fast float %2101, %2103
  br label %2106

; <label>:2106                                    ; preds = %2081, %2008
  %2107 = phi float [ %2104, %2081 ], [ %2076, %2008 ]
  %2108 = phi float [ %2105, %2081 ], [ %2077, %2008 ]
  %2109 = and i32 %2002, 256
  %2110 = icmp eq i32 %2109, 0
  br i1 %2110, label %2157, label %2111

; <label>:2111                                    ; preds = %2106
  %2112 = add i32 %61, 480
  %2113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2112, i32 undef)  ; BufferLoad(srv,index,wot)
  %2114 = extractvalue %dx.types.ResRet.i32 %2113, 0
  %2115 = add i32 %2114, 0
  %2116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2115, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2117 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2116, %dx.types.Handle %115, float %2107, float %2108, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2118 = extractvalue %dx.types.ResRet.f32 %2117, 0
  %2119 = add i32 %61, 132
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = shl i32 %2121, 4
  %2123 = and i32 %2122, 32752
  %2124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2123)  ; LegacyF16ToF32(value)
  %2125 = lshr i32 %2121, 7
  %2126 = and i32 %2125, 32752
  %2127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2126)  ; LegacyF16ToF32(value)
  %2128 = fsub fast float 1.000000e+00, %698
  %2129 = call float @dx.op.binary.f32(i32 35, float %2128, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2130 = bitcast float %698 to i32
  %2131 = sitofp i32 %2130 to float
  %2132 = fadd fast float %2131, 0xC1CFBF8940000000
  %2133 = fmul fast float %2127, %2132
  %2134 = fadd fast float %2133, 0x41CFBF8940000000
  %2135 = fptosi float %2134 to i32
  %2136 = bitcast i32 %2135 to float
  %2137 = bitcast float %2129 to i32
  %2138 = sitofp i32 %2137 to float
  %2139 = fadd fast float %2138, 0xC1CFBF8940000000
  %2140 = fmul fast float %2139, %2127
  %2141 = fadd fast float %2140, 0x41CFBF8940000000
  %2142 = fptosi float %2141 to i32
  %2143 = bitcast i32 %2142 to float
  %2144 = fmul fast float %2136, %2124
  %2145 = fmul fast float %2143, %2124
  %2146 = fsub fast float %2129, %2144
  %2147 = fadd fast float %2145, %2129
  %2148 = call float @dx.op.unary.f32(i32 7, float %2146)  ; Saturate(value)
  %2149 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2150 = fsub fast float %2118, %2148
  %2151 = fsub fast float %2149, %2148
  %2152 = bitcast float %2151 to i32
  %2153 = sub nsw i32 2129859010, %2152
  %2154 = bitcast i32 %2153 to float
  %2155 = fmul fast float %2154, %2150
  %2156 = call float @dx.op.unary.f32(i32 7, float %2155)  ; Saturate(value)
  br label %2157

; <label>:2157                                    ; preds = %2111, %2106
  %2158 = phi float [ %2156, %2111 ], [ %698, %2106 ]
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = and i32 %2160, 128
  %2162 = icmp eq i32 %2161, 0
  br i1 %2162, label %2179, label %2163

; <label>:2163                                    ; preds = %2157
  %2164 = add i32 %61, 464
  %2165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2164, i32 undef)  ; BufferLoad(srv,index,wot)
  %2166 = extractvalue %dx.types.ResRet.i32 %2165, 0
  %2167 = add i32 %2166, 0
  %2168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2167, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2169 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2168, %dx.types.Handle %115, float %2107, float %2108, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2170 = extractvalue %dx.types.ResRet.f32 %2169, 0
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = and i32 %2172, 524288
  %2174 = icmp ne i32 %2173, 0
  %2175 = fcmp fast ogt float %2170, 0x3FE0101020000000
  %2176 = select i1 %2175, float 1.000000e+00, float 0.000000e+00
  %2177 = select i1 %2174, float %2176, float %2170
  %2178 = fmul fast float %2177, %2158
  br label %2179

; <label>:2179                                    ; preds = %2163, %2157
  %2180 = phi float [ %2178, %2163 ], [ %2158, %2157 ]
  %2181 = fcmp fast ult float %2180, 0x3F70101020000000
  br i1 %2181, label %2724, label %2182

; <label>:2182                                    ; preds = %2179
  %2183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2184 = extractvalue %dx.types.ResRet.i32 %2183, 0
  %2185 = and i32 %2184, 16
  %2186 = icmp eq i32 %2185, 0
  br i1 %2186, label %2385, label %2187

; <label>:2187                                    ; preds = %2182
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = add i32 %61, 416
  %2191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2192 = extractvalue %dx.types.ResRet.i32 %2191, 0
  %2193 = add i32 %2192, 0
  %2194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2193, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2195 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2194, %dx.types.Handle %114, float %2107, float %2108, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2196 = extractvalue %dx.types.ResRet.f32 %2195, 0
  %2197 = extractvalue %dx.types.ResRet.f32 %2195, 1
  %2198 = extractvalue %dx.types.ResRet.f32 %2195, 2
  %2199 = extractvalue %dx.types.ResRet.f32 %2195, 3
  %2200 = and i32 %2189, 255
  %2201 = uitofp i32 %2200 to float
  %2202 = lshr i32 %2189, 8
  %2203 = and i32 %2202, 255
  %2204 = uitofp i32 %2203 to float
  %2205 = fmul fast float %2199, %2201
  %2206 = fadd fast float %2205, %2204
  %2207 = fmul fast float %2206, 0x3F70101000000000
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = and i32 %2209, 512
  %2211 = icmp eq i32 %2210, 0
  br i1 %2211, label %2220, label %2212

; <label>:2212                                    ; preds = %2187
  %2213 = add i32 %61, 500
  %2214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2213, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.i32 %2214, 0
  %2216 = add i32 %2215, 0
  %2217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2218 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2217, %dx.types.Handle %115, float %2107, float %2108, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2219 = extractvalue %dx.types.ResRet.f32 %2218, 0
  br label %2220

; <label>:2220                                    ; preds = %2212, %2187
  %2221 = phi float [ %2219, %2212 ], [ 1.000000e+00, %2187 ]
  %2222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2223 = extractvalue %dx.types.ResRet.i32 %2222, 0
  %2224 = and i32 %2223, 33554432
  %2225 = icmp eq i32 %2224, 0
  br i1 %2225, label %2332, label %2226

; <label>:2226                                    ; preds = %2220
  %2227 = add i32 %61, 256
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = and i32 %2229, 65535
  %2231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2230)  ; LegacyF16ToF32(value)
  %2232 = lshr i32 %2229, 16
  %2233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2232)  ; LegacyF16ToF32(value)
  %2234 = add i32 %61, 260
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2234, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = and i32 %2236, 65535
  %2238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2237)  ; LegacyF16ToF32(value)
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = lshr i32 %2240, 24
  %2242 = uitofp i32 %2241 to float
  %2243 = fmul fast float %2242, 0x3F70101020000000
  %2244 = and i32 %2240, 255
  %2245 = uitofp i32 %2244 to float
  %2246 = fmul fast float %2245, 0x3F70101020000000
  %2247 = lshr i32 %2240, 8
  %2248 = and i32 %2247, 255
  %2249 = uitofp i32 %2248 to float
  %2250 = fmul fast float %2249, 0x3F70101020000000
  %2251 = lshr i32 %2240, 16
  %2252 = and i32 %2251, 255
  %2253 = uitofp i32 %2252 to float
  %2254 = fmul fast float %2253, 0x3F70101020000000
  %2255 = add i32 %61, 252
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = lshr i32 %2257, 24
  %2259 = uitofp i32 %2258 to float
  %2260 = fmul fast float %2259, 0x3F70101020000000
  %2261 = and i32 %2257, 255
  %2262 = uitofp i32 %2261 to float
  %2263 = fmul fast float %2262, 0x3F70101020000000
  %2264 = lshr i32 %2257, 8
  %2265 = and i32 %2264, 255
  %2266 = uitofp i32 %2265 to float
  %2267 = fmul fast float %2266, 0x3F70101020000000
  %2268 = lshr i32 %2257, 16
  %2269 = and i32 %2268, 255
  %2270 = uitofp i32 %2269 to float
  %2271 = fmul fast float %2270, 0x3F70101020000000
  %2272 = bitcast float %2196 to i32
  %2273 = ashr i32 %2272, 1
  %2274 = sub nsw i32 1597463174, %2273
  %2275 = bitcast i32 %2274 to float
  %2276 = fmul fast float %2196, 5.000000e-01
  %2277 = fmul fast float %2275, %2275
  %2278 = fmul fast float %2277, %2276
  %2279 = fsub fast float 1.500000e+00, %2278
  %2280 = fmul fast float %2275, %2196
  %2281 = fmul fast float %2280, %2279
  %2282 = bitcast float %2197 to i32
  %2283 = ashr i32 %2282, 1
  %2284 = sub nsw i32 1597463174, %2283
  %2285 = bitcast i32 %2284 to float
  %2286 = fmul fast float %2197, 5.000000e-01
  %2287 = fmul fast float %2285, %2285
  %2288 = fmul fast float %2287, %2286
  %2289 = fsub fast float 1.500000e+00, %2288
  %2290 = fmul fast float %2285, %2197
  %2291 = fmul fast float %2290, %2289
  %2292 = bitcast float %2198 to i32
  %2293 = ashr i32 %2292, 1
  %2294 = sub nsw i32 1597463174, %2293
  %2295 = bitcast i32 %2294 to float
  %2296 = fmul fast float %2198, 5.000000e-01
  %2297 = fmul fast float %2295, %2295
  %2298 = fmul fast float %2297, %2296
  %2299 = fsub fast float 1.500000e+00, %2298
  %2300 = fmul fast float %2295, %2198
  %2301 = fmul fast float %2300, %2299
  %2302 = fsub fast float %2281, %2263
  %2303 = fsub fast float %2291, %2267
  %2304 = fsub fast float %2301, %2271
  %2305 = fmul fast float %2302, %2231
  %2306 = fmul fast float %2303, %2233
  %2307 = fmul fast float %2304, %2238
  %2308 = fadd fast float %2305, %2246
  %2309 = fadd fast float %2306, %2250
  %2310 = fadd fast float %2307, %2254
  %2311 = call float @dx.op.unary.f32(i32 7, float %2308)  ; Saturate(value)
  %2312 = call float @dx.op.unary.f32(i32 7, float %2309)  ; Saturate(value)
  %2313 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2314 = fmul fast float %2311, %2311
  %2315 = fmul fast float %2312, %2312
  %2316 = fmul fast float %2313, %2313
  %2317 = fsub fast float %2314, %2196
  %2318 = fsub fast float %2315, %2197
  %2319 = fsub fast float %2316, %2198
  %2320 = fmul fast float %2317, %2221
  %2321 = fmul fast float %2318, %2221
  %2322 = fmul fast float %2319, %2221
  %2323 = fadd fast float %2320, %2196
  %2324 = fadd fast float %2321, %2197
  %2325 = fadd fast float %2322, %2198
  %2326 = fadd fast float %2243, %2207
  %2327 = fsub fast float %2326, %2260
  %2328 = call float @dx.op.unary.f32(i32 7, float %2327)  ; Saturate(value)
  %2329 = fsub fast float %2328, %2207
  %2330 = fmul fast float %2329, %2221
  %2331 = fadd fast float %2330, %2207
  br label %2385

; <label>:2332                                    ; preds = %2220
  %2333 = and i32 %2223, 134217728
  %2334 = icmp eq i32 %2333, 0
  br i1 %2334, label %2369, label %2335

; <label>:2335                                    ; preds = %2332
  %2336 = call float @dx.op.unary.f32(i32 24, float %506)  ; Sqrt(value)
  %2337 = call float @dx.op.unary.f32(i32 24, float %507)  ; Sqrt(value)
  %2338 = call float @dx.op.unary.f32(i32 24, float %508)  ; Sqrt(value)
  %2339 = fadd fast float %2336, -5.000000e-01
  %2340 = fadd fast float %2337, -5.000000e-01
  %2341 = fadd fast float %2338, -5.000000e-01
  %2342 = fmul fast float %2339, %2221
  %2343 = fmul fast float %2340, %2221
  %2344 = fmul fast float %2341, %2221
  %2345 = fadd fast float %2342, 5.000000e-01
  %2346 = fadd fast float %2343, 5.000000e-01
  %2347 = fadd fast float %2344, 5.000000e-01
  %2348 = call float @dx.op.unary.f32(i32 24, float %2196)  ; Sqrt(value)
  %2349 = call float @dx.op.unary.f32(i32 24, float %2197)  ; Sqrt(value)
  %2350 = call float @dx.op.unary.f32(i32 24, float %2198)  ; Sqrt(value)
  %2351 = fmul fast float %2345, 2.000000e+00
  %2352 = fsub fast float 1.000000e+00, %2351
  %2353 = fmul fast float %2352, %2348
  %2354 = fadd fast float %2353, %2351
  %2355 = fmul fast float %2354, %2348
  %2356 = fmul fast float %2346, 2.000000e+00
  %2357 = fsub fast float 1.000000e+00, %2356
  %2358 = fmul fast float %2357, %2349
  %2359 = fadd fast float %2358, %2356
  %2360 = fmul fast float %2359, %2349
  %2361 = fmul fast float %2347, 2.000000e+00
  %2362 = fsub fast float 1.000000e+00, %2361
  %2363 = fmul fast float %2362, %2350
  %2364 = fadd fast float %2363, %2361
  %2365 = fmul fast float %2364, %2350
  %2366 = fmul fast float %2355, %2355
  %2367 = fmul fast float %2360, %2360
  %2368 = fmul fast float %2365, %2365
  br label %2385

; <label>:2369                                    ; preds = %2332
  %2370 = fmul fast float %506, %506
  %2371 = fmul fast float %507, %507
  %2372 = fmul fast float %508, %508
  %2373 = fadd fast float %2370, -1.000000e+00
  %2374 = fadd fast float %2371, -1.000000e+00
  %2375 = fadd fast float %2372, -1.000000e+00
  %2376 = fmul fast float %2221, %2373
  %2377 = fmul fast float %2221, %2374
  %2378 = fmul fast float %2221, %2375
  %2379 = fadd fast float %2376, 1.000000e+00
  %2380 = fadd fast float %2377, 1.000000e+00
  %2381 = fadd fast float %2378, 1.000000e+00
  %2382 = fmul fast float %2379, %2196
  %2383 = fmul fast float %2380, %2197
  %2384 = fmul fast float %2381, %2198
  br label %2385

; <label>:2385                                    ; preds = %2369, %2335, %2226, %2182
  %2386 = phi float [ %2331, %2226 ], [ %2207, %2335 ], [ %2207, %2369 ], [ 0x3FA23C0BE0000000, %2182 ]
  %2387 = phi float [ %2323, %2226 ], [ %2366, %2335 ], [ %2382, %2369 ], [ 1.000000e+00, %2182 ]
  %2388 = phi float [ %2324, %2226 ], [ %2367, %2335 ], [ %2383, %2369 ], [ 1.000000e+00, %2182 ]
  %2389 = phi float [ %2325, %2226 ], [ %2368, %2335 ], [ %2384, %2369 ], [ 1.000000e+00, %2182 ]
  %2390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2391 = extractvalue %dx.types.CBufRet.i32 %2390, 1
  %2392 = and i32 %2391, 1
  %2393 = icmp ne i32 %2392, 0
  %2394 = add i32 %61, 356
  %2395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %2396 = extractvalue %dx.types.ResRet.i32 %2395, 0
  %2397 = and i32 %2396, 32
  %2398 = icmp ne i32 %2397, 0
  %2399 = and i1 %2393, %2398
  %2400 = select i1 %2399, float 1.000000e+00, float %2387
  %2401 = select i1 %2399, float 0x3FD3333340000000, float %2388
  %2402 = select i1 %2399, float 0x3FD3333340000000, float %2389
  %2403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2404 = extractvalue %dx.types.ResRet.i32 %2403, 0
  %2405 = and i32 %2404, 32
  %2406 = icmp eq i32 %2405, 0
  br i1 %2406, label %2479, label %2407

; <label>:2407                                    ; preds = %2385
  %2408 = add i32 %61, 124
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = add i32 %61, 432
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = add i32 %2413, 0
  %2415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2415, %dx.types.Handle %114, float %2107, float %2108, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2417 = extractvalue %dx.types.ResRet.f32 %2416, 0
  %2418 = extractvalue %dx.types.ResRet.f32 %2416, 1
  %2419 = extractvalue %dx.types.ResRet.f32 %2416, 2
  %2420 = extractvalue %dx.types.ResRet.f32 %2416, 3
  %2421 = and i32 %2410, 255
  %2422 = uitofp i32 %2421 to float
  %2423 = lshr i32 %2410, 8
  %2424 = and i32 %2423, 255
  %2425 = uitofp i32 %2424 to float
  %2426 = lshr i32 %2410, 16
  %2427 = and i32 %2426, 255
  %2428 = uitofp i32 %2427 to float
  %2429 = fmul fast float %2428, 0x3F70101000000000
  %2430 = fmul fast float %2417, %2422
  %2431 = fadd fast float %2430, %2425
  %2432 = fmul fast float %2431, 0x3F70101000000000
  %2433 = fadd fast float %2418, -5.000000e-01
  %2434 = fadd fast float %2420, -5.000000e-01
  %2435 = fmul fast float %2433, %2429
  %2436 = fmul fast float %2434, %2429
  %2437 = fadd fast float %2435, 5.000000e-01
  %2438 = fadd fast float %2436, 5.000000e-01
  %2439 = fmul fast float %2437, 2.000000e+00
  %2440 = fadd fast float %2439, -1.000000e+00
  %2441 = fmul fast float %2438, 2.000000e+00
  %2442 = fadd fast float %2441, -1.000000e+00
  %2443 = fadd fast float %2440, %2442
  %2444 = fmul fast float %2443, 5.000000e-01
  %2445 = fsub fast float %2440, %2442
  %2446 = fmul fast float %2445, 5.000000e-01
  %2447 = call float @dx.op.unary.f32(i32 6, float %2444)  ; FAbs(value)
  %2448 = fsub fast float 1.000000e+00, %2447
  %2449 = call float @dx.op.unary.f32(i32 6, float %2446)  ; FAbs(value)
  %2450 = fsub fast float %2448, %2449
  %2451 = call float @dx.op.dot3.f32(i32 55, float %2444, float %2446, float %2450, float %2444, float %2446, float %2450)  ; Dot3(ax,ay,az,bx,by,bz)
  %2452 = call float @dx.op.unary.f32(i32 25, float %2451)  ; Rsqrt(value)
  %2453 = fmul fast float %2444, %2452
  %2454 = fmul fast float %2446, %2452
  %2455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.i32 %2455, 0
  %2457 = and i32 %2456, 67108864
  %2458 = icmp eq i32 %2457, 0
  br i1 %2458, label %2475, label %2459

; <label>:2459                                    ; preds = %2407
  %2460 = add i32 %61, 312
  %2461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2460, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.i32 %2461, 0
  %2463 = and i32 %2462, 65535
  %2464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2463)  ; LegacyF16ToF32(value)
  %2465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2466 = extractvalue %dx.types.ResRet.i32 %2465, 0
  %2467 = and i32 %2466, 65535
  %2468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2467)  ; LegacyF16ToF32(value)
  %2469 = lshr i32 %2462, 16
  %2470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2469)  ; LegacyF16ToF32(value)
  %2471 = fsub fast float %2432, %2470
  %2472 = fmul fast float %2471, %2464
  %2473 = fadd fast float %2472, %2468
  %2474 = call float @dx.op.unary.f32(i32 7, float %2473)  ; Saturate(value)
  br label %2475

; <label>:2475                                    ; preds = %2459, %2407
  %2476 = phi float [ %2474, %2459 ], [ %2432, %2407 ]
  %2477 = call float @dx.op.dot2.f32(i32 54, float %2453, float %2454, float %2011, float %2012)  ; Dot2(ax,ay,bx,by)
  %2478 = call float @dx.op.dot2.f32(i32 54, float %2453, float %2454, float %2013, float %2014)  ; Dot2(ax,ay,bx,by)
  br label %2479

; <label>:2479                                    ; preds = %2475, %2385
  %2480 = phi float [ %2476, %2475 ], [ 0x3FD6666660000000, %2385 ]
  %2481 = phi float [ %2477, %2475 ], [ 0.000000e+00, %2385 ]
  %2482 = phi float [ %2478, %2475 ], [ 0.000000e+00, %2385 ]
  %2483 = phi float [ %2419, %2475 ], [ 1.000000e+00, %2385 ]
  %2484 = add i32 %61, 192
  %2485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2484, i32 undef)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.i32 %2485, 0
  %2487 = lshr i32 %2486, 22
  %2488 = shl nuw nsw i32 %2487, 5
  %2489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2488)  ; LegacyF16ToF32(value)
  %2490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.i32 %2490, 0
  %2492 = and i32 %2491, 64
  %2493 = icmp eq i32 %2492, 0
  br i1 %2493, label %2527, label %2494

; <label>:2494                                    ; preds = %2479
  %2495 = add i32 %61, 448
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2495, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = add i32 %2497, 0
  %2499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2498, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = and i32 %2501, 131072
  %2503 = icmp eq i32 %2502, 0
  %2504 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2499, %dx.types.Handle %114, float %2107, float %2108, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2505 = extractvalue %dx.types.ResRet.f32 %2504, 0
  %2506 = extractvalue %dx.types.ResRet.f32 %2504, 1
  %2507 = extractvalue %dx.types.ResRet.f32 %2504, 2
  %2508 = fmul fast float %489, %2505
  %2509 = fmul fast float %490, %2506
  %2510 = fmul fast float %491, %2507
  br i1 %2503, label %2517, label %2511

; <label>:2511                                    ; preds = %2494
  %2512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2513 = extractvalue %dx.types.CBufRet.f32 %2512, 0
  %2514 = fmul fast float %2513, %2508
  %2515 = fmul fast float %2513, %2509
  %2516 = fmul fast float %2513, %2510
  br label %2517

; <label>:2517                                    ; preds = %2511, %2494
  %2518 = phi float [ %2514, %2511 ], [ %2508, %2494 ]
  %2519 = phi float [ %2515, %2511 ], [ %2509, %2494 ]
  %2520 = phi float [ %2516, %2511 ], [ %2510, %2494 ]
  %2521 = fmul fast float %2518, %2489
  %2522 = select i1 %264, float %2521, float %2518
  %2523 = call float @dx.op.dot3.f32(i32 55, float %2522, float %2519, float %2520, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2524 = select i1 %264, float 0.000000e+00, float %2518
  %2525 = select i1 %264, float %2523, float %2519
  %2526 = select i1 %264, float 0.000000e+00, float %2520
  br label %2527

; <label>:2527                                    ; preds = %2517, %2479
  %2528 = phi float [ %2524, %2517 ], [ 0.000000e+00, %2479 ]
  %2529 = phi float [ %2525, %2517 ], [ 0.000000e+00, %2479 ]
  %2530 = phi float [ %2526, %2517 ], [ 0.000000e+00, %2479 ]
  %2531 = add i32 %61, 128
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = and i32 %2533, 255
  %2535 = uitofp i32 %2534 to float
  %2536 = lshr i32 %2533, 8
  %2537 = and i32 %2536, 255
  %2538 = uitofp i32 %2537 to float
  %2539 = call float @dx.op.dot3.f32(i32 55, float %2400, float %2401, float %2402, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2540 = fmul fast float %2538, %2539
  %2541 = fadd fast float %2540, %2535
  %2542 = fmul fast float %2541, 0x3F70101020000000
  %2543 = call float @dx.op.unary.f32(i32 7, float %2542)  ; Saturate(value)
  br i1 %1999, label %2544, label %2552

; <label>:2544                                    ; preds = %2527
  %2545 = fsub fast float 1.000000e+00, %2180
  %2546 = fmul fast float %2545, %1988
  %2547 = fmul fast float %2545, %1989
  %2548 = fmul fast float %2545, %1990
  %2549 = fmul fast float %2545, %1991
  %2550 = fmul fast float %2545, %1992
  %2551 = fmul fast float %2545, %1993
  br label %2552

; <label>:2552                                    ; preds = %2544, %2527
  %2553 = phi float [ %2546, %2544 ], [ %1988, %2527 ]
  %2554 = phi float [ %2547, %2544 ], [ %1989, %2527 ]
  %2555 = phi float [ %2548, %2544 ], [ %1990, %2527 ]
  %2556 = phi float [ %2549, %2544 ], [ %1991, %2527 ]
  %2557 = phi float [ %2550, %2544 ], [ %1992, %2527 ]
  %2558 = phi float [ %2551, %2544 ], [ %1993, %2527 ]
  %2559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.i32 %2559, 0
  %2561 = and i32 %2560, 3
  %2562 = icmp eq i32 %2561, 3
  br i1 %2562, label %2641, label %2563

; <label>:2563                                    ; preds = %2552
  %2564 = and i32 %2560, 16
  %2565 = icmp ne i32 %2564, 0
  %2566 = select i1 %2565, float %2180, float 0.000000e+00
  %2567 = icmp eq i32 %2561, 0
  br i1 %2567, label %2568, label %2596

; <label>:2568                                    ; preds = %2563
  %2569 = and i32 %2560, 64
  %2570 = icmp ne i32 %2569, 0
  %2571 = select i1 %2570, float %2180, float 0.000000e+00
  %2572 = fsub fast float %2400, %2553
  %2573 = fsub fast float %2401, %2554
  %2574 = fsub fast float %2402, %2555
  %2575 = fmul fast float %2566, %2572
  %2576 = fmul fast float %2566, %2573
  %2577 = fmul fast float %2566, %2574
  %2578 = fadd fast float %2575, %2553
  %2579 = fadd fast float %2576, %2554
  %2580 = fadd fast float %2577, %2555
  %2581 = fsub fast float %2386, %1994
  %2582 = fmul fast float %2566, %2581
  %2583 = fadd fast float %2582, %1994
  %2584 = fsub fast float %2528, %2556
  %2585 = fsub fast float %2529, %2557
  %2586 = fsub fast float %2530, %2558
  %2587 = fmul fast float %2571, %2584
  %2588 = fmul fast float %2571, %2585
  %2589 = fmul fast float %2571, %2586
  %2590 = fadd fast float %2587, %2556
  %2591 = fadd fast float %2588, %2557
  %2592 = fadd fast float %2589, %2558
  %2593 = fsub fast float %2543, %1997
  %2594 = fmul fast float %2566, %2593
  %2595 = fadd fast float %2594, %1997
  br label %2641

; <label>:2596                                    ; preds = %2563
  %2597 = icmp eq i32 %2561, 1
  br i1 %2597, label %2598, label %2611

; <label>:2598                                    ; preds = %2596
  %2599 = fadd fast float %2400, -1.000000e+00
  %2600 = fadd fast float %2401, -1.000000e+00
  %2601 = fadd fast float %2402, -1.000000e+00
  %2602 = fmul fast float %2566, %2599
  %2603 = fmul fast float %2566, %2600
  %2604 = fmul fast float %2566, %2601
  %2605 = fadd fast float %2602, 1.000000e+00
  %2606 = fadd fast float %2603, 1.000000e+00
  %2607 = fadd fast float %2604, 1.000000e+00
  %2608 = fmul fast float %2605, %2553
  %2609 = fmul fast float %2606, %2554
  %2610 = fmul fast float %2607, %2555
  br label %2641

; <label>:2611                                    ; preds = %2596
  %2612 = icmp eq i32 %2561, 2
  br i1 %2612, label %2613, label %2641

; <label>:2613                                    ; preds = %2611
  %2614 = call float @dx.op.unary.f32(i32 24, float %2400)  ; Sqrt(value)
  %2615 = call float @dx.op.unary.f32(i32 24, float %2401)  ; Sqrt(value)
  %2616 = call float @dx.op.unary.f32(i32 24, float %2402)  ; Sqrt(value)
  %2617 = fadd fast float %2614, -5.000000e-01
  %2618 = fadd fast float %2615, -5.000000e-01
  %2619 = fadd fast float %2616, -5.000000e-01
  %2620 = fmul fast float %2617, %2566
  %2621 = fmul fast float %2618, %2566
  %2622 = fmul fast float %2619, %2566
  %2623 = fadd fast float %2620, 5.000000e-01
  %2624 = fadd fast float %2621, 5.000000e-01
  %2625 = fadd fast float %2622, 5.000000e-01
  %2626 = fmul fast float %2623, 2.000000e+00
  %2627 = fsub fast float 1.000000e+00, %2626
  %2628 = fmul fast float %2627, %2553
  %2629 = fadd fast float %2628, %2626
  %2630 = fmul fast float %2629, %2553
  %2631 = fmul fast float %2624, 2.000000e+00
  %2632 = fsub fast float 1.000000e+00, %2631
  %2633 = fmul fast float %2632, %2554
  %2634 = fadd fast float %2633, %2631
  %2635 = fmul fast float %2634, %2554
  %2636 = fmul fast float %2625, 2.000000e+00
  %2637 = fsub fast float 1.000000e+00, %2636
  %2638 = fmul fast float %2637, %2555
  %2639 = fadd fast float %2638, %2636
  %2640 = fmul fast float %2639, %2555
  br label %2641

; <label>:2641                                    ; preds = %2613, %2611, %2598, %2568, %2552
  %2642 = phi float [ %2553, %2552 ], [ %2630, %2613 ], [ %2553, %2611 ], [ %2608, %2598 ], [ %2578, %2568 ]
  %2643 = phi float [ %2554, %2552 ], [ %2635, %2613 ], [ %2554, %2611 ], [ %2609, %2598 ], [ %2579, %2568 ]
  %2644 = phi float [ %2555, %2552 ], [ %2640, %2613 ], [ %2555, %2611 ], [ %2610, %2598 ], [ %2580, %2568 ]
  %2645 = phi float [ %2556, %2552 ], [ %2556, %2613 ], [ %2556, %2611 ], [ %2556, %2598 ], [ %2590, %2568 ]
  %2646 = phi float [ %2557, %2552 ], [ %2557, %2613 ], [ %2557, %2611 ], [ %2557, %2598 ], [ %2591, %2568 ]
  %2647 = phi float [ %2558, %2552 ], [ %2558, %2613 ], [ %2558, %2611 ], [ %2558, %2598 ], [ %2592, %2568 ]
  %2648 = phi float [ %1994, %2552 ], [ %1994, %2613 ], [ %1994, %2611 ], [ %1994, %2598 ], [ %2583, %2568 ]
  %2649 = phi float [ %1997, %2552 ], [ %1997, %2613 ], [ %1997, %2611 ], [ %1997, %2598 ], [ %2595, %2568 ]
  %2650 = and i32 %2560, 12
  %2651 = icmp eq i32 %2650, 12
  br i1 %2651, label %2724, label %2652

; <label>:2652                                    ; preds = %2641
  %2653 = and i32 %2560, 2097184
  %2654 = icmp eq i32 %2653, 2097184
  %2655 = select i1 %2654, float %2180, float 0.000000e+00
  %2656 = and i32 %2560, 4194336
  %2657 = icmp eq i32 %2656, 4194336
  %2658 = select i1 %2657, float %2180, float 0.000000e+00
  %2659 = and i32 %2560, 8388640
  %2660 = icmp eq i32 %2659, 8388640
  %2661 = select i1 %2660, float %2180, float 0.000000e+00
  %2662 = icmp eq i32 %2650, 0
  br i1 %2662, label %2663, label %2676

; <label>:2663                                    ; preds = %2652
  %2664 = fsub fast float %2481, %1986
  %2665 = fsub fast float %2482, %1987
  %2666 = fmul fast float %2655, %2664
  %2667 = fmul fast float %2655, %2665
  %2668 = fadd fast float %2666, %1986
  %2669 = fadd fast float %2667, %1987
  %2670 = fsub fast float %2483, %1996
  %2671 = fmul fast float %2658, %2670
  %2672 = fadd fast float %2671, %1996
  %2673 = fsub fast float %2480, %1995
  %2674 = fmul fast float %2661, %2673
  %2675 = fadd fast float %2674, %1995
  br label %2724

; <label>:2676                                    ; preds = %2652
  %2677 = icmp eq i32 %2650, 4
  br i1 %2677, label %2678, label %2710

; <label>:2678                                    ; preds = %2676
  %2679 = fmul fast float %2655, %2481
  %2680 = fmul fast float %2655, %2482
  %2681 = fadd fast float %2679, %1986
  %2682 = fadd fast float %2680, %1987
  %2683 = call float @dx.op.binary.f32(i32 36, float %1996, float %2483)  ; FMin(a,b)
  %2684 = fsub fast float %2683, %1996
  %2685 = fmul fast float %2684, %2658
  %2686 = fadd fast float %2685, %1996
  %2687 = fadd fast float %2480, %1995
  %2688 = fmul fast float %2687, 0x3FF337FAE0000000
  %2689 = fmul fast float %1995, %1995
  %2690 = fmul fast float %2480, %2480
  %2691 = fadd fast float %2690, %2689
  %2692 = fmul fast float %2691, 0x3FE5152B00000000
  %2693 = fmul fast float %1995, 0xBFCC1F85E0000000
  %2694 = fmul fast float %2693, %2480
  %2695 = fadd fast float %2694, 0xBFE1363700000000
  %2696 = fadd fast float %2695, %2688
  %2697 = fsub fast float %2696, %2692
  %2698 = fmul fast float %2687, 0x3FBA6F0D00000000
  %2699 = fmul fast float %2691, 0x3FD0432880000000
  %2700 = fmul fast float %1995, 0xBFEF110800000000
  %2701 = fmul fast float %2700, %2480
  %2702 = fadd fast float %2701, 1.000000e+00
  %2703 = fsub fast float %2702, %2698
  %2704 = fadd fast float %2703, %2699
  %2705 = fdiv fast float %2697, %2704
  %2706 = call float @dx.op.unary.f32(i32 7, float %2705)  ; Saturate(value)
  %2707 = fsub fast float %2706, %1995
  %2708 = fmul fast float %2707, %2661
  %2709 = fadd fast float %2708, %1995
  br label %2724

; <label>:2710                                    ; preds = %2676
  %2711 = icmp eq i32 %2650, 8
  br i1 %2711, label %2712, label %2724

; <label>:2712                                    ; preds = %2710
  %2713 = fmul fast float %2655, %2481
  %2714 = fmul fast float %2655, %2482
  %2715 = fadd fast float %2713, %1986
  %2716 = fadd fast float %2714, %1987
  %2717 = call float @dx.op.binary.f32(i32 36, float %1996, float %2483)  ; FMin(a,b)
  %2718 = fsub fast float %2717, %1996
  %2719 = fmul fast float %2718, %2658
  %2720 = fadd fast float %2719, %1996
  %2721 = fsub fast float %2480, %1995
  %2722 = fmul fast float %2661, %2721
  %2723 = fadd fast float %2722, %1995
  br label %2724

; <label>:2724                                    ; preds = %2712, %2710, %2678, %2663, %2641, %2179, %1998, %1985
  %2725 = phi float [ %1986, %2641 ], [ %1986, %2179 ], [ %1986, %1985 ], [ %2715, %2712 ], [ %1986, %2710 ], [ %2681, %2678 ], [ %2668, %2663 ], [ %1986, %1998 ]
  %2726 = phi float [ %1987, %2641 ], [ %1987, %2179 ], [ %1987, %1985 ], [ %2716, %2712 ], [ %1987, %2710 ], [ %2682, %2678 ], [ %2669, %2663 ], [ %1987, %1998 ]
  %2727 = phi float [ %2642, %2641 ], [ %1988, %2179 ], [ %1988, %1985 ], [ %2642, %2712 ], [ %2642, %2710 ], [ %2642, %2678 ], [ %2642, %2663 ], [ %1988, %1998 ]
  %2728 = phi float [ %2643, %2641 ], [ %1989, %2179 ], [ %1989, %1985 ], [ %2643, %2712 ], [ %2643, %2710 ], [ %2643, %2678 ], [ %2643, %2663 ], [ %1989, %1998 ]
  %2729 = phi float [ %2644, %2641 ], [ %1990, %2179 ], [ %1990, %1985 ], [ %2644, %2712 ], [ %2644, %2710 ], [ %2644, %2678 ], [ %2644, %2663 ], [ %1990, %1998 ]
  %2730 = phi float [ %2645, %2641 ], [ %1991, %2179 ], [ %1991, %1985 ], [ %2645, %2712 ], [ %2645, %2710 ], [ %2645, %2678 ], [ %2645, %2663 ], [ %1991, %1998 ]
  %2731 = phi float [ %2646, %2641 ], [ %1992, %2179 ], [ %1992, %1985 ], [ %2646, %2712 ], [ %2646, %2710 ], [ %2646, %2678 ], [ %2646, %2663 ], [ %1992, %1998 ]
  %2732 = phi float [ %2647, %2641 ], [ %1993, %2179 ], [ %1993, %1985 ], [ %2647, %2712 ], [ %2647, %2710 ], [ %2647, %2678 ], [ %2647, %2663 ], [ %1993, %1998 ]
  %2733 = phi float [ %2648, %2641 ], [ %1994, %2179 ], [ %1994, %1985 ], [ %2648, %2712 ], [ %2648, %2710 ], [ %2648, %2678 ], [ %2648, %2663 ], [ %1994, %1998 ]
  %2734 = phi float [ %1995, %2641 ], [ %1995, %2179 ], [ %1995, %1985 ], [ %2723, %2712 ], [ %1995, %2710 ], [ %2709, %2678 ], [ %2675, %2663 ], [ %1995, %1998 ]
  %2735 = phi float [ %1996, %2641 ], [ %1996, %2179 ], [ %1996, %1985 ], [ %2720, %2712 ], [ %1996, %2710 ], [ %2686, %2678 ], [ %2672, %2663 ], [ %1996, %1998 ]
  %2736 = phi float [ %2649, %2641 ], [ %1997, %2179 ], [ %1997, %1985 ], [ %2649, %2712 ], [ %2649, %2710 ], [ %2649, %2678 ], [ %2649, %2663 ], [ %1997, %1998 ]
  br i1 %648, label %3463, label %2737

; <label>:2737                                    ; preds = %2724
  %2738 = icmp ult i32 %702, 4
  %2739 = add i32 %61, 72
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = add i32 %61, 76
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = or i32 %2744, %2741
  %2746 = icmp eq i32 %2745, 0
  br i1 %2746, label %3463, label %2747

; <label>:2747                                    ; preds = %2737
  %2748 = and i32 %2741, 262144
  %2749 = icmp ne i32 %2748, 0
  %2750 = select i1 %2749, float %68, float 1.000000e+00
  %2751 = select i1 %2749, float %69, float 0.000000e+00
  %2752 = select i1 %2749, float %70, float 0.000000e+00
  %2753 = select i1 %2749, float %71, float 1.000000e+00
  %2754 = select i1 %2749, float %72, float %96
  %2755 = select i1 %2749, float %73, float %97
  %2756 = add i32 %61, 332
  %2757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2756, i32 undef)  ; BufferLoad(srv,index,wot)
  %2758 = extractvalue %dx.types.ResRet.i32 %2757, 0
  %2759 = lshr i32 %2758, 16
  %2760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2759)  ; LegacyF16ToF32(value)
  %2761 = fmul fast float %2760, 0x3F50624DE0000000
  %2762 = add i32 %61, 136
  %2763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2764 = extractvalue %dx.types.ResRet.i32 %2763, 0
  %2765 = lshr i32 %2764, 16
  %2766 = and i32 %2765, 255
  %2767 = lshr i32 %2764, 24
  %2768 = add i32 %61, 340
  %2769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2768, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.i32 %2769, 0
  %2771 = and i32 %2770, 65535
  %2772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2771)  ; LegacyF16ToF32(value)
  %2773 = lshr i32 %2770, 16
  %2774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2773)  ; LegacyF16ToF32(value)
  %2775 = add i32 %61, 80
  %2776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2777 = extractvalue %dx.types.ResRet.i32 %2776, 0
  %2778 = lshr i32 %2777, 22
  %2779 = shl nuw nsw i32 %2778, 5
  %2780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2779)  ; LegacyF16ToF32(value)
  %2781 = shl i32 %2777, 4
  %2782 = and i32 %2781, 32752
  %2783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2782)  ; LegacyF16ToF32(value)
  %2784 = lshr i32 %2777, 7
  %2785 = and i32 %2784, 32752
  %2786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2785)  ; LegacyF16ToF32(value)
  %2787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2788 = extractvalue %dx.types.CBufRet.f32 %2787, 3
  %2789 = fmul fast float %2788, 1.000000e+03
  %2790 = fmul fast float %2789, %637
  %2791 = call float @dx.op.unary.f32(i32 22, float %2790)  ; Frc(value)
  %2792 = fadd fast float %2791, %625
  %2793 = fmul fast float %2789, %639
  %2794 = call float @dx.op.unary.f32(i32 22, float %2793)  ; Frc(value)
  %2795 = fadd fast float %2794, %626
  %2796 = fmul fast float %2761, %2789
  %2797 = call float @dx.op.unary.f32(i32 22, float %2796)  ; Frc(value)
  %2798 = fmul fast float %2797, 0x401921FB60000000
  %2799 = fadd fast float %2798, %2780
  %2800 = call float @dx.op.unary.f32(i32 13, float %2799)  ; Sin(value)
  %2801 = call float @dx.op.unary.f32(i32 12, float %2799)  ; Cos(value)
  %2802 = fsub fast float -0.000000e+00, %2800
  %2803 = fadd fast float %2754, -5.000000e-01
  %2804 = fadd fast float %2755, -5.000000e-01
  %2805 = fmul fast float %2772, %2803
  %2806 = fmul fast float %2774, %2804
  %2807 = fadd fast float %2805, 5.000000e-01
  %2808 = fadd fast float %2806, 5.000000e-01
  %2809 = fmul fast float %2783, %2807
  %2810 = fmul fast float %2786, %2808
  %2811 = fmul fast float %2801, %2809
  %2812 = call float @dx.op.tertiary.f32(i32 46, float %2802, float %2810, float %2811)  ; FMad(a,b,c)
  %2813 = fmul fast float %2800, %2809
  %2814 = call float @dx.op.tertiary.f32(i32 46, float %2801, float %2810, float %2813)  ; FMad(a,b,c)
  %2815 = fadd fast float %2792, %2812
  %2816 = fadd fast float %2795, %2814
  %2817 = icmp ugt i32 %2766, 1
  %2818 = icmp ugt i32 %2764, 33554431
  %2819 = or i1 %2818, %2817
  br i1 %2819, label %2820, label %2845

; <label>:2820                                    ; preds = %2747
  %2821 = add i32 %61, 276
  %2822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %2823 = extractvalue %dx.types.ResRet.i32 %2822, 0
  %2824 = lshr i32 %2823, 16
  %2825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2824)  ; LegacyF16ToF32(value)
  %2826 = fmul fast float %2788, %2825
  %2827 = call float @dx.op.unary.f32(i32 22, float %2826)  ; Frc(value)
  %2828 = mul nuw nsw i32 %2766, %2767
  %2829 = uitofp i32 %2828 to float
  %2830 = fmul fast float %2827, %2829
  %2831 = call float @dx.op.unary.f32(i32 27, float %2830)  ; Round_ni(value)
  %2832 = fptoui float %2831 to i32
  %2833 = urem i32 %2832, %2766
  %2834 = udiv i32 %2832, %2767
  %2835 = call float @dx.op.unary.f32(i32 22, float %2815)  ; Frc(value)
  %2836 = call float @dx.op.unary.f32(i32 22, float %2816)  ; Frc(value)
  %2837 = uitofp i32 %2833 to float
  %2838 = uitofp i32 %2834 to float
  %2839 = fadd fast float %2835, %2837
  %2840 = fadd fast float %2836, %2838
  %2841 = uitofp i32 %2766 to float
  %2842 = uitofp i32 %2767 to float
  %2843 = fdiv fast float %2839, %2841
  %2844 = fdiv fast float %2840, %2842
  br label %2845

; <label>:2845                                    ; preds = %2820, %2747
  %2846 = phi float [ %2843, %2820 ], [ %2815, %2747 ]
  %2847 = phi float [ %2844, %2820 ], [ %2816, %2747 ]
  %2848 = and i32 %2741, 256
  %2849 = icmp eq i32 %2848, 0
  br i1 %2849, label %2896, label %2850

; <label>:2850                                    ; preds = %2845
  %2851 = add i32 %61, 484
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = add i32 %2853, 0
  %2855 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2854, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2856 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2855, %dx.types.Handle %115, float %2846, float %2847, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2857 = extractvalue %dx.types.ResRet.f32 %2856, 0
  %2858 = add i32 %61, 148
  %2859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2860 = extractvalue %dx.types.ResRet.i32 %2859, 0
  %2861 = shl i32 %2860, 4
  %2862 = and i32 %2861, 32752
  %2863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2862)  ; LegacyF16ToF32(value)
  %2864 = lshr i32 %2860, 7
  %2865 = and i32 %2864, 32752
  %2866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2865)  ; LegacyF16ToF32(value)
  %2867 = fsub fast float 1.000000e+00, %697
  %2868 = call float @dx.op.binary.f32(i32 35, float %2867, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2869 = bitcast float %697 to i32
  %2870 = sitofp i32 %2869 to float
  %2871 = fadd fast float %2870, 0xC1CFBF8940000000
  %2872 = fmul fast float %2866, %2871
  %2873 = fadd fast float %2872, 0x41CFBF8940000000
  %2874 = fptosi float %2873 to i32
  %2875 = bitcast i32 %2874 to float
  %2876 = bitcast float %2868 to i32
  %2877 = sitofp i32 %2876 to float
  %2878 = fadd fast float %2877, 0xC1CFBF8940000000
  %2879 = fmul fast float %2878, %2866
  %2880 = fadd fast float %2879, 0x41CFBF8940000000
  %2881 = fptosi float %2880 to i32
  %2882 = bitcast i32 %2881 to float
  %2883 = fmul fast float %2875, %2863
  %2884 = fmul fast float %2882, %2863
  %2885 = fsub fast float %2868, %2883
  %2886 = fadd fast float %2884, %2868
  %2887 = call float @dx.op.unary.f32(i32 7, float %2885)  ; Saturate(value)
  %2888 = call float @dx.op.unary.f32(i32 7, float %2886)  ; Saturate(value)
  %2889 = fsub fast float %2857, %2887
  %2890 = fsub fast float %2888, %2887
  %2891 = bitcast float %2890 to i32
  %2892 = sub nsw i32 2129859010, %2891
  %2893 = bitcast i32 %2892 to float
  %2894 = fmul fast float %2893, %2889
  %2895 = call float @dx.op.unary.f32(i32 7, float %2894)  ; Saturate(value)
  br label %2896

; <label>:2896                                    ; preds = %2850, %2845
  %2897 = phi float [ %2895, %2850 ], [ %697, %2845 ]
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = and i32 %2899, 128
  %2901 = icmp eq i32 %2900, 0
  br i1 %2901, label %2918, label %2902

; <label>:2902                                    ; preds = %2896
  %2903 = add i32 %61, 468
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = add i32 %2905, 0
  %2907 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2906, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2908 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2907, %dx.types.Handle %115, float %2846, float %2847, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2909 = extractvalue %dx.types.ResRet.f32 %2908, 0
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = and i32 %2911, 524288
  %2913 = icmp ne i32 %2912, 0
  %2914 = fcmp fast ogt float %2909, 0x3FE0101020000000
  %2915 = select i1 %2914, float 1.000000e+00, float 0.000000e+00
  %2916 = select i1 %2913, float %2915, float %2909
  %2917 = fmul fast float %2916, %2897
  br label %2918

; <label>:2918                                    ; preds = %2902, %2896
  %2919 = phi float [ %2917, %2902 ], [ %2897, %2896 ]
  %2920 = fcmp fast ult float %2919, 0x3F70101020000000
  br i1 %2920, label %3463, label %2921

; <label>:2921                                    ; preds = %2918
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = and i32 %2923, 16
  %2925 = icmp eq i32 %2924, 0
  br i1 %2925, label %3124, label %2926

; <label>:2926                                    ; preds = %2921
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = add i32 %61, 420
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = add i32 %2931, 0
  %2933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2933, %dx.types.Handle %114, float %2846, float %2847, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2935 = extractvalue %dx.types.ResRet.f32 %2934, 0
  %2936 = extractvalue %dx.types.ResRet.f32 %2934, 1
  %2937 = extractvalue %dx.types.ResRet.f32 %2934, 2
  %2938 = extractvalue %dx.types.ResRet.f32 %2934, 3
  %2939 = and i32 %2928, 255
  %2940 = uitofp i32 %2939 to float
  %2941 = lshr i32 %2928, 8
  %2942 = and i32 %2941, 255
  %2943 = uitofp i32 %2942 to float
  %2944 = fmul fast float %2938, %2940
  %2945 = fadd fast float %2944, %2943
  %2946 = fmul fast float %2945, 0x3F70101000000000
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = and i32 %2948, 512
  %2950 = icmp eq i32 %2949, 0
  br i1 %2950, label %2959, label %2951

; <label>:2951                                    ; preds = %2926
  %2952 = add i32 %61, 504
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2952, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = add i32 %2954, 0
  %2956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2955, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2957 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2956, %dx.types.Handle %115, float %2846, float %2847, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2958 = extractvalue %dx.types.ResRet.f32 %2957, 0
  br label %2959

; <label>:2959                                    ; preds = %2951, %2926
  %2960 = phi float [ %2958, %2951 ], [ 1.000000e+00, %2926 ]
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = and i32 %2962, 33554432
  %2964 = icmp eq i32 %2963, 0
  br i1 %2964, label %3071, label %2965

; <label>:2965                                    ; preds = %2959
  %2966 = add i32 %61, 272
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = and i32 %2968, 65535
  %2970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2969)  ; LegacyF16ToF32(value)
  %2971 = lshr i32 %2968, 16
  %2972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2971)  ; LegacyF16ToF32(value)
  %2973 = add i32 %61, 276
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = and i32 %2975, 65535
  %2977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2976)  ; LegacyF16ToF32(value)
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = lshr i32 %2979, 24
  %2981 = uitofp i32 %2980 to float
  %2982 = fmul fast float %2981, 0x3F70101020000000
  %2983 = and i32 %2979, 255
  %2984 = uitofp i32 %2983 to float
  %2985 = fmul fast float %2984, 0x3F70101020000000
  %2986 = lshr i32 %2979, 8
  %2987 = and i32 %2986, 255
  %2988 = uitofp i32 %2987 to float
  %2989 = fmul fast float %2988, 0x3F70101020000000
  %2990 = lshr i32 %2979, 16
  %2991 = and i32 %2990, 255
  %2992 = uitofp i32 %2991 to float
  %2993 = fmul fast float %2992, 0x3F70101020000000
  %2994 = add i32 %61, 268
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = lshr i32 %2996, 24
  %2998 = uitofp i32 %2997 to float
  %2999 = fmul fast float %2998, 0x3F70101020000000
  %3000 = and i32 %2996, 255
  %3001 = uitofp i32 %3000 to float
  %3002 = fmul fast float %3001, 0x3F70101020000000
  %3003 = lshr i32 %2996, 8
  %3004 = and i32 %3003, 255
  %3005 = uitofp i32 %3004 to float
  %3006 = fmul fast float %3005, 0x3F70101020000000
  %3007 = lshr i32 %2996, 16
  %3008 = and i32 %3007, 255
  %3009 = uitofp i32 %3008 to float
  %3010 = fmul fast float %3009, 0x3F70101020000000
  %3011 = bitcast float %2935 to i32
  %3012 = ashr i32 %3011, 1
  %3013 = sub nsw i32 1597463174, %3012
  %3014 = bitcast i32 %3013 to float
  %3015 = fmul fast float %2935, 5.000000e-01
  %3016 = fmul fast float %3014, %3014
  %3017 = fmul fast float %3016, %3015
  %3018 = fsub fast float 1.500000e+00, %3017
  %3019 = fmul fast float %3014, %2935
  %3020 = fmul fast float %3019, %3018
  %3021 = bitcast float %2936 to i32
  %3022 = ashr i32 %3021, 1
  %3023 = sub nsw i32 1597463174, %3022
  %3024 = bitcast i32 %3023 to float
  %3025 = fmul fast float %2936, 5.000000e-01
  %3026 = fmul fast float %3024, %3024
  %3027 = fmul fast float %3026, %3025
  %3028 = fsub fast float 1.500000e+00, %3027
  %3029 = fmul fast float %3024, %2936
  %3030 = fmul fast float %3029, %3028
  %3031 = bitcast float %2937 to i32
  %3032 = ashr i32 %3031, 1
  %3033 = sub nsw i32 1597463174, %3032
  %3034 = bitcast i32 %3033 to float
  %3035 = fmul fast float %2937, 5.000000e-01
  %3036 = fmul fast float %3034, %3034
  %3037 = fmul fast float %3036, %3035
  %3038 = fsub fast float 1.500000e+00, %3037
  %3039 = fmul fast float %3034, %2937
  %3040 = fmul fast float %3039, %3038
  %3041 = fsub fast float %3020, %3002
  %3042 = fsub fast float %3030, %3006
  %3043 = fsub fast float %3040, %3010
  %3044 = fmul fast float %3041, %2970
  %3045 = fmul fast float %3042, %2972
  %3046 = fmul fast float %3043, %2977
  %3047 = fadd fast float %3044, %2985
  %3048 = fadd fast float %3045, %2989
  %3049 = fadd fast float %3046, %2993
  %3050 = call float @dx.op.unary.f32(i32 7, float %3047)  ; Saturate(value)
  %3051 = call float @dx.op.unary.f32(i32 7, float %3048)  ; Saturate(value)
  %3052 = call float @dx.op.unary.f32(i32 7, float %3049)  ; Saturate(value)
  %3053 = fmul fast float %3050, %3050
  %3054 = fmul fast float %3051, %3051
  %3055 = fmul fast float %3052, %3052
  %3056 = fsub fast float %3053, %2935
  %3057 = fsub fast float %3054, %2936
  %3058 = fsub fast float %3055, %2937
  %3059 = fmul fast float %3056, %2960
  %3060 = fmul fast float %3057, %2960
  %3061 = fmul fast float %3058, %2960
  %3062 = fadd fast float %3059, %2935
  %3063 = fadd fast float %3060, %2936
  %3064 = fadd fast float %3061, %2937
  %3065 = fadd fast float %2982, %2946
  %3066 = fsub fast float %3065, %2999
  %3067 = call float @dx.op.unary.f32(i32 7, float %3066)  ; Saturate(value)
  %3068 = fsub fast float %3067, %2946
  %3069 = fmul fast float %3068, %2960
  %3070 = fadd fast float %3069, %2946
  br label %3124

; <label>:3071                                    ; preds = %2959
  %3072 = and i32 %2962, 134217728
  %3073 = icmp eq i32 %3072, 0
  br i1 %3073, label %3108, label %3074

; <label>:3074                                    ; preds = %3071
  %3075 = call float @dx.op.unary.f32(i32 24, float %613)  ; Sqrt(value)
  %3076 = call float @dx.op.unary.f32(i32 24, float %614)  ; Sqrt(value)
  %3077 = call float @dx.op.unary.f32(i32 24, float %615)  ; Sqrt(value)
  %3078 = fadd fast float %3075, -5.000000e-01
  %3079 = fadd fast float %3076, -5.000000e-01
  %3080 = fadd fast float %3077, -5.000000e-01
  %3081 = fmul fast float %3078, %2960
  %3082 = fmul fast float %3079, %2960
  %3083 = fmul fast float %3080, %2960
  %3084 = fadd fast float %3081, 5.000000e-01
  %3085 = fadd fast float %3082, 5.000000e-01
  %3086 = fadd fast float %3083, 5.000000e-01
  %3087 = call float @dx.op.unary.f32(i32 24, float %2935)  ; Sqrt(value)
  %3088 = call float @dx.op.unary.f32(i32 24, float %2936)  ; Sqrt(value)
  %3089 = call float @dx.op.unary.f32(i32 24, float %2937)  ; Sqrt(value)
  %3090 = fmul fast float %3084, 2.000000e+00
  %3091 = fsub fast float 1.000000e+00, %3090
  %3092 = fmul fast float %3091, %3087
  %3093 = fadd fast float %3092, %3090
  %3094 = fmul fast float %3093, %3087
  %3095 = fmul fast float %3085, 2.000000e+00
  %3096 = fsub fast float 1.000000e+00, %3095
  %3097 = fmul fast float %3096, %3088
  %3098 = fadd fast float %3097, %3095
  %3099 = fmul fast float %3098, %3088
  %3100 = fmul fast float %3086, 2.000000e+00
  %3101 = fsub fast float 1.000000e+00, %3100
  %3102 = fmul fast float %3101, %3089
  %3103 = fadd fast float %3102, %3100
  %3104 = fmul fast float %3103, %3089
  %3105 = fmul fast float %3094, %3094
  %3106 = fmul fast float %3099, %3099
  %3107 = fmul fast float %3104, %3104
  br label %3124

; <label>:3108                                    ; preds = %3071
  %3109 = fmul fast float %613, %613
  %3110 = fmul fast float %614, %614
  %3111 = fmul fast float %615, %615
  %3112 = fadd fast float %3109, -1.000000e+00
  %3113 = fadd fast float %3110, -1.000000e+00
  %3114 = fadd fast float %3111, -1.000000e+00
  %3115 = fmul fast float %2960, %3112
  %3116 = fmul fast float %2960, %3113
  %3117 = fmul fast float %2960, %3114
  %3118 = fadd fast float %3115, 1.000000e+00
  %3119 = fadd fast float %3116, 1.000000e+00
  %3120 = fadd fast float %3117, 1.000000e+00
  %3121 = fmul fast float %3118, %2935
  %3122 = fmul fast float %3119, %2936
  %3123 = fmul fast float %3120, %2937
  br label %3124

; <label>:3124                                    ; preds = %3108, %3074, %2965, %2921
  %3125 = phi float [ %3070, %2965 ], [ %2946, %3074 ], [ %2946, %3108 ], [ 0x3FA23C0BE0000000, %2921 ]
  %3126 = phi float [ %3062, %2965 ], [ %3105, %3074 ], [ %3121, %3108 ], [ 1.000000e+00, %2921 ]
  %3127 = phi float [ %3063, %2965 ], [ %3106, %3074 ], [ %3122, %3108 ], [ 1.000000e+00, %2921 ]
  %3128 = phi float [ %3064, %2965 ], [ %3107, %3074 ], [ %3123, %3108 ], [ 1.000000e+00, %2921 ]
  %3129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3130 = extractvalue %dx.types.CBufRet.i32 %3129, 1
  %3131 = and i32 %3130, 1
  %3132 = icmp ne i32 %3131, 0
  %3133 = add i32 %61, 356
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = and i32 %3135, 32
  %3137 = icmp ne i32 %3136, 0
  %3138 = and i1 %3132, %3137
  %3139 = select i1 %3138, float 1.000000e+00, float %3126
  %3140 = select i1 %3138, float 0x3FD3333340000000, float %3127
  %3141 = select i1 %3138, float 0x3FD3333340000000, float %3128
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = and i32 %3143, 32
  %3145 = icmp eq i32 %3144, 0
  br i1 %3145, label %3218, label %3146

; <label>:3146                                    ; preds = %3124
  %3147 = add i32 %61, 140
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3147, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = add i32 %61, 436
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3150, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = add i32 %3152, 0
  %3154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3155 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3154, %dx.types.Handle %114, float %2846, float %2847, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3156 = extractvalue %dx.types.ResRet.f32 %3155, 0
  %3157 = extractvalue %dx.types.ResRet.f32 %3155, 1
  %3158 = extractvalue %dx.types.ResRet.f32 %3155, 2
  %3159 = extractvalue %dx.types.ResRet.f32 %3155, 3
  %3160 = and i32 %3149, 255
  %3161 = uitofp i32 %3160 to float
  %3162 = lshr i32 %3149, 8
  %3163 = and i32 %3162, 255
  %3164 = uitofp i32 %3163 to float
  %3165 = lshr i32 %3149, 16
  %3166 = and i32 %3165, 255
  %3167 = uitofp i32 %3166 to float
  %3168 = fmul fast float %3167, 0x3F70101000000000
  %3169 = fmul fast float %3156, %3161
  %3170 = fadd fast float %3169, %3164
  %3171 = fmul fast float %3170, 0x3F70101000000000
  %3172 = fadd fast float %3157, -5.000000e-01
  %3173 = fadd fast float %3159, -5.000000e-01
  %3174 = fmul fast float %3172, %3168
  %3175 = fmul fast float %3173, %3168
  %3176 = fadd fast float %3174, 5.000000e-01
  %3177 = fadd fast float %3175, 5.000000e-01
  %3178 = fmul fast float %3176, 2.000000e+00
  %3179 = fadd fast float %3178, -1.000000e+00
  %3180 = fmul fast float %3177, 2.000000e+00
  %3181 = fadd fast float %3180, -1.000000e+00
  %3182 = fadd fast float %3179, %3181
  %3183 = fmul fast float %3182, 5.000000e-01
  %3184 = fsub fast float %3179, %3181
  %3185 = fmul fast float %3184, 5.000000e-01
  %3186 = call float @dx.op.unary.f32(i32 6, float %3183)  ; FAbs(value)
  %3187 = fsub fast float 1.000000e+00, %3186
  %3188 = call float @dx.op.unary.f32(i32 6, float %3185)  ; FAbs(value)
  %3189 = fsub fast float %3187, %3188
  %3190 = call float @dx.op.dot3.f32(i32 55, float %3183, float %3185, float %3189, float %3183, float %3185, float %3189)  ; Dot3(ax,ay,az,bx,by,bz)
  %3191 = call float @dx.op.unary.f32(i32 25, float %3190)  ; Rsqrt(value)
  %3192 = fmul fast float %3183, %3191
  %3193 = fmul fast float %3185, %3191
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = and i32 %3195, 67108864
  %3197 = icmp eq i32 %3196, 0
  br i1 %3197, label %3214, label %3198

; <label>:3198                                    ; preds = %3146
  %3199 = add i32 %61, 328
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3199, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = and i32 %3201, 65535
  %3203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3202)  ; LegacyF16ToF32(value)
  %3204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2756, i32 undef)  ; BufferLoad(srv,index,wot)
  %3205 = extractvalue %dx.types.ResRet.i32 %3204, 0
  %3206 = and i32 %3205, 65535
  %3207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3206)  ; LegacyF16ToF32(value)
  %3208 = lshr i32 %3201, 16
  %3209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3208)  ; LegacyF16ToF32(value)
  %3210 = fsub fast float %3171, %3209
  %3211 = fmul fast float %3210, %3203
  %3212 = fadd fast float %3211, %3207
  %3213 = call float @dx.op.unary.f32(i32 7, float %3212)  ; Saturate(value)
  br label %3214

; <label>:3214                                    ; preds = %3198, %3146
  %3215 = phi float [ %3213, %3198 ], [ %3171, %3146 ]
  %3216 = call float @dx.op.dot2.f32(i32 54, float %3192, float %3193, float %2750, float %2751)  ; Dot2(ax,ay,bx,by)
  %3217 = call float @dx.op.dot2.f32(i32 54, float %3192, float %3193, float %2752, float %2753)  ; Dot2(ax,ay,bx,by)
  br label %3218

; <label>:3218                                    ; preds = %3214, %3124
  %3219 = phi float [ %3215, %3214 ], [ 0x3FD6666660000000, %3124 ]
  %3220 = phi float [ %3216, %3214 ], [ 0.000000e+00, %3124 ]
  %3221 = phi float [ %3217, %3214 ], [ 0.000000e+00, %3124 ]
  %3222 = phi float [ %3158, %3214 ], [ 1.000000e+00, %3124 ]
  %3223 = add i32 %61, 208
  %3224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3223, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.i32 %3224, 0
  %3226 = lshr i32 %3225, 22
  %3227 = shl nuw nsw i32 %3226, 5
  %3228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3227)  ; LegacyF16ToF32(value)
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = and i32 %3230, 64
  %3232 = icmp eq i32 %3231, 0
  br i1 %3232, label %3266, label %3233

; <label>:3233                                    ; preds = %3218
  %3234 = add i32 %61, 452
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = add i32 %3236, 0
  %3238 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3237, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = and i32 %3240, 131072
  %3242 = icmp eq i32 %3241, 0
  %3243 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3238, %dx.types.Handle %114, float %2846, float %2847, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3244 = extractvalue %dx.types.ResRet.f32 %3243, 0
  %3245 = extractvalue %dx.types.ResRet.f32 %3243, 1
  %3246 = extractvalue %dx.types.ResRet.f32 %3243, 2
  %3247 = fmul fast float %596, %3244
  %3248 = fmul fast float %597, %3245
  %3249 = fmul fast float %598, %3246
  br i1 %3242, label %3256, label %3250

; <label>:3250                                    ; preds = %3233
  %3251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3252 = extractvalue %dx.types.CBufRet.f32 %3251, 0
  %3253 = fmul fast float %3252, %3247
  %3254 = fmul fast float %3252, %3248
  %3255 = fmul fast float %3252, %3249
  br label %3256

; <label>:3256                                    ; preds = %3250, %3233
  %3257 = phi float [ %3253, %3250 ], [ %3247, %3233 ]
  %3258 = phi float [ %3254, %3250 ], [ %3248, %3233 ]
  %3259 = phi float [ %3255, %3250 ], [ %3249, %3233 ]
  %3260 = fmul fast float %3257, %3228
  %3261 = select i1 %264, float %3260, float %3257
  %3262 = call float @dx.op.dot3.f32(i32 55, float %3261, float %3258, float %3259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3263 = select i1 %264, float 0.000000e+00, float %3257
  %3264 = select i1 %264, float %3262, float %3258
  %3265 = select i1 %264, float 0.000000e+00, float %3259
  br label %3266

; <label>:3266                                    ; preds = %3256, %3218
  %3267 = phi float [ %3263, %3256 ], [ 0.000000e+00, %3218 ]
  %3268 = phi float [ %3264, %3256 ], [ 0.000000e+00, %3218 ]
  %3269 = phi float [ %3265, %3256 ], [ 0.000000e+00, %3218 ]
  %3270 = add i32 %61, 144
  %3271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3270, i32 undef)  ; BufferLoad(srv,index,wot)
  %3272 = extractvalue %dx.types.ResRet.i32 %3271, 0
  %3273 = and i32 %3272, 255
  %3274 = uitofp i32 %3273 to float
  %3275 = lshr i32 %3272, 8
  %3276 = and i32 %3275, 255
  %3277 = uitofp i32 %3276 to float
  %3278 = call float @dx.op.dot3.f32(i32 55, float %3139, float %3140, float %3141, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3279 = fmul fast float %3277, %3278
  %3280 = fadd fast float %3279, %3274
  %3281 = fmul fast float %3280, 0x3F70101020000000
  %3282 = call float @dx.op.unary.f32(i32 7, float %3281)  ; Saturate(value)
  br i1 %2738, label %3283, label %3291

; <label>:3283                                    ; preds = %3266
  %3284 = fsub fast float 1.000000e+00, %2919
  %3285 = fmul fast float %3284, %2727
  %3286 = fmul fast float %3284, %2728
  %3287 = fmul fast float %3284, %2729
  %3288 = fmul fast float %3284, %2730
  %3289 = fmul fast float %3284, %2731
  %3290 = fmul fast float %3284, %2732
  br label %3291

; <label>:3291                                    ; preds = %3283, %3266
  %3292 = phi float [ %3285, %3283 ], [ %2727, %3266 ]
  %3293 = phi float [ %3286, %3283 ], [ %2728, %3266 ]
  %3294 = phi float [ %3287, %3283 ], [ %2729, %3266 ]
  %3295 = phi float [ %3288, %3283 ], [ %2730, %3266 ]
  %3296 = phi float [ %3289, %3283 ], [ %2731, %3266 ]
  %3297 = phi float [ %3290, %3283 ], [ %2732, %3266 ]
  %3298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.i32 %3298, 0
  %3300 = and i32 %3299, 3
  %3301 = icmp eq i32 %3300, 3
  br i1 %3301, label %3380, label %3302

; <label>:3302                                    ; preds = %3291
  %3303 = and i32 %3299, 16
  %3304 = icmp ne i32 %3303, 0
  %3305 = select i1 %3304, float %2919, float 0.000000e+00
  %3306 = icmp eq i32 %3300, 0
  br i1 %3306, label %3307, label %3335

; <label>:3307                                    ; preds = %3302
  %3308 = and i32 %3299, 64
  %3309 = icmp ne i32 %3308, 0
  %3310 = select i1 %3309, float %2919, float 0.000000e+00
  %3311 = fsub fast float %3139, %3292
  %3312 = fsub fast float %3140, %3293
  %3313 = fsub fast float %3141, %3294
  %3314 = fmul fast float %3305, %3311
  %3315 = fmul fast float %3305, %3312
  %3316 = fmul fast float %3305, %3313
  %3317 = fadd fast float %3314, %3292
  %3318 = fadd fast float %3315, %3293
  %3319 = fadd fast float %3316, %3294
  %3320 = fsub fast float %3125, %2733
  %3321 = fmul fast float %3305, %3320
  %3322 = fadd fast float %3321, %2733
  %3323 = fsub fast float %3267, %3295
  %3324 = fsub fast float %3268, %3296
  %3325 = fsub fast float %3269, %3297
  %3326 = fmul fast float %3310, %3323
  %3327 = fmul fast float %3310, %3324
  %3328 = fmul fast float %3310, %3325
  %3329 = fadd fast float %3326, %3295
  %3330 = fadd fast float %3327, %3296
  %3331 = fadd fast float %3328, %3297
  %3332 = fsub fast float %3282, %2736
  %3333 = fmul fast float %3305, %3332
  %3334 = fadd fast float %3333, %2736
  br label %3380

; <label>:3335                                    ; preds = %3302
  %3336 = icmp eq i32 %3300, 1
  br i1 %3336, label %3337, label %3350

; <label>:3337                                    ; preds = %3335
  %3338 = fadd fast float %3139, -1.000000e+00
  %3339 = fadd fast float %3140, -1.000000e+00
  %3340 = fadd fast float %3141, -1.000000e+00
  %3341 = fmul fast float %3305, %3338
  %3342 = fmul fast float %3305, %3339
  %3343 = fmul fast float %3305, %3340
  %3344 = fadd fast float %3341, 1.000000e+00
  %3345 = fadd fast float %3342, 1.000000e+00
  %3346 = fadd fast float %3343, 1.000000e+00
  %3347 = fmul fast float %3344, %3292
  %3348 = fmul fast float %3345, %3293
  %3349 = fmul fast float %3346, %3294
  br label %3380

; <label>:3350                                    ; preds = %3335
  %3351 = icmp eq i32 %3300, 2
  br i1 %3351, label %3352, label %3380

; <label>:3352                                    ; preds = %3350
  %3353 = call float @dx.op.unary.f32(i32 24, float %3139)  ; Sqrt(value)
  %3354 = call float @dx.op.unary.f32(i32 24, float %3140)  ; Sqrt(value)
  %3355 = call float @dx.op.unary.f32(i32 24, float %3141)  ; Sqrt(value)
  %3356 = fadd fast float %3353, -5.000000e-01
  %3357 = fadd fast float %3354, -5.000000e-01
  %3358 = fadd fast float %3355, -5.000000e-01
  %3359 = fmul fast float %3356, %3305
  %3360 = fmul fast float %3357, %3305
  %3361 = fmul fast float %3358, %3305
  %3362 = fadd fast float %3359, 5.000000e-01
  %3363 = fadd fast float %3360, 5.000000e-01
  %3364 = fadd fast float %3361, 5.000000e-01
  %3365 = fmul fast float %3362, 2.000000e+00
  %3366 = fsub fast float 1.000000e+00, %3365
  %3367 = fmul fast float %3366, %3292
  %3368 = fadd fast float %3367, %3365
  %3369 = fmul fast float %3368, %3292
  %3370 = fmul fast float %3363, 2.000000e+00
  %3371 = fsub fast float 1.000000e+00, %3370
  %3372 = fmul fast float %3371, %3293
  %3373 = fadd fast float %3372, %3370
  %3374 = fmul fast float %3373, %3293
  %3375 = fmul fast float %3364, 2.000000e+00
  %3376 = fsub fast float 1.000000e+00, %3375
  %3377 = fmul fast float %3376, %3294
  %3378 = fadd fast float %3377, %3375
  %3379 = fmul fast float %3378, %3294
  br label %3380

; <label>:3380                                    ; preds = %3352, %3350, %3337, %3307, %3291
  %3381 = phi float [ %3292, %3291 ], [ %3369, %3352 ], [ %3292, %3350 ], [ %3347, %3337 ], [ %3317, %3307 ]
  %3382 = phi float [ %3293, %3291 ], [ %3374, %3352 ], [ %3293, %3350 ], [ %3348, %3337 ], [ %3318, %3307 ]
  %3383 = phi float [ %3294, %3291 ], [ %3379, %3352 ], [ %3294, %3350 ], [ %3349, %3337 ], [ %3319, %3307 ]
  %3384 = phi float [ %3295, %3291 ], [ %3295, %3352 ], [ %3295, %3350 ], [ %3295, %3337 ], [ %3329, %3307 ]
  %3385 = phi float [ %3296, %3291 ], [ %3296, %3352 ], [ %3296, %3350 ], [ %3296, %3337 ], [ %3330, %3307 ]
  %3386 = phi float [ %3297, %3291 ], [ %3297, %3352 ], [ %3297, %3350 ], [ %3297, %3337 ], [ %3331, %3307 ]
  %3387 = phi float [ %2733, %3291 ], [ %2733, %3352 ], [ %2733, %3350 ], [ %2733, %3337 ], [ %3322, %3307 ]
  %3388 = phi float [ %2736, %3291 ], [ %2736, %3352 ], [ %2736, %3350 ], [ %2736, %3337 ], [ %3334, %3307 ]
  %3389 = and i32 %3299, 12
  %3390 = icmp eq i32 %3389, 12
  br i1 %3390, label %3463, label %3391

; <label>:3391                                    ; preds = %3380
  %3392 = and i32 %3299, 2097184
  %3393 = icmp eq i32 %3392, 2097184
  %3394 = select i1 %3393, float %2919, float 0.000000e+00
  %3395 = and i32 %3299, 4194336
  %3396 = icmp eq i32 %3395, 4194336
  %3397 = select i1 %3396, float %2919, float 0.000000e+00
  %3398 = and i32 %3299, 8388640
  %3399 = icmp eq i32 %3398, 8388640
  %3400 = select i1 %3399, float %2919, float 0.000000e+00
  %3401 = icmp eq i32 %3389, 0
  br i1 %3401, label %3402, label %3415

; <label>:3402                                    ; preds = %3391
  %3403 = fsub fast float %3220, %2725
  %3404 = fsub fast float %3221, %2726
  %3405 = fmul fast float %3394, %3403
  %3406 = fmul fast float %3394, %3404
  %3407 = fadd fast float %3405, %2725
  %3408 = fadd fast float %3406, %2726
  %3409 = fsub fast float %3222, %2735
  %3410 = fmul fast float %3397, %3409
  %3411 = fadd fast float %3410, %2735
  %3412 = fsub fast float %3219, %2734
  %3413 = fmul fast float %3400, %3412
  %3414 = fadd fast float %3413, %2734
  br label %3463

; <label>:3415                                    ; preds = %3391
  %3416 = icmp eq i32 %3389, 4
  br i1 %3416, label %3417, label %3449

; <label>:3417                                    ; preds = %3415
  %3418 = fmul fast float %3394, %3220
  %3419 = fmul fast float %3394, %3221
  %3420 = fadd fast float %3418, %2725
  %3421 = fadd fast float %3419, %2726
  %3422 = call float @dx.op.binary.f32(i32 36, float %2735, float %3222)  ; FMin(a,b)
  %3423 = fsub fast float %3422, %2735
  %3424 = fmul fast float %3423, %3397
  %3425 = fadd fast float %3424, %2735
  %3426 = fadd fast float %3219, %2734
  %3427 = fmul fast float %3426, 0x3FF337FAE0000000
  %3428 = fmul fast float %2734, %2734
  %3429 = fmul fast float %3219, %3219
  %3430 = fadd fast float %3429, %3428
  %3431 = fmul fast float %3430, 0x3FE5152B00000000
  %3432 = fmul fast float %2734, 0xBFCC1F85E0000000
  %3433 = fmul fast float %3432, %3219
  %3434 = fadd fast float %3433, 0xBFE1363700000000
  %3435 = fadd fast float %3434, %3427
  %3436 = fsub fast float %3435, %3431
  %3437 = fmul fast float %3426, 0x3FBA6F0D00000000
  %3438 = fmul fast float %3430, 0x3FD0432880000000
  %3439 = fmul fast float %2734, 0xBFEF110800000000
  %3440 = fmul fast float %3439, %3219
  %3441 = fadd fast float %3440, 1.000000e+00
  %3442 = fsub fast float %3441, %3437
  %3443 = fadd fast float %3442, %3438
  %3444 = fdiv fast float %3436, %3443
  %3445 = call float @dx.op.unary.f32(i32 7, float %3444)  ; Saturate(value)
  %3446 = fsub fast float %3445, %2734
  %3447 = fmul fast float %3446, %3400
  %3448 = fadd fast float %3447, %2734
  br label %3463

; <label>:3449                                    ; preds = %3415
  %3450 = icmp eq i32 %3389, 8
  br i1 %3450, label %3451, label %3463

; <label>:3451                                    ; preds = %3449
  %3452 = fmul fast float %3394, %3220
  %3453 = fmul fast float %3394, %3221
  %3454 = fadd fast float %3452, %2725
  %3455 = fadd fast float %3453, %2726
  %3456 = call float @dx.op.binary.f32(i32 36, float %2735, float %3222)  ; FMin(a,b)
  %3457 = fsub fast float %3456, %2735
  %3458 = fmul fast float %3457, %3397
  %3459 = fadd fast float %3458, %2735
  %3460 = fsub fast float %3219, %2734
  %3461 = fmul fast float %3400, %3460
  %3462 = fadd fast float %3461, %2734
  br label %3463

; <label>:3463                                    ; preds = %3451, %3449, %3417, %3402, %3380, %2918, %2737, %2724
  %3464 = phi float [ %2725, %3380 ], [ %2725, %2918 ], [ %2725, %2724 ], [ %2725, %2737 ], [ %3407, %3402 ], [ %3420, %3417 ], [ %2725, %3449 ], [ %3454, %3451 ]
  %3465 = phi float [ %2726, %3380 ], [ %2726, %2918 ], [ %2726, %2724 ], [ %2726, %2737 ], [ %3408, %3402 ], [ %3421, %3417 ], [ %2726, %3449 ], [ %3455, %3451 ]
  %3466 = phi float [ %3381, %3380 ], [ %2727, %2918 ], [ %2727, %2724 ], [ %2727, %2737 ], [ %3381, %3402 ], [ %3381, %3417 ], [ %3381, %3449 ], [ %3381, %3451 ]
  %3467 = phi float [ %3382, %3380 ], [ %2728, %2918 ], [ %2728, %2724 ], [ %2728, %2737 ], [ %3382, %3402 ], [ %3382, %3417 ], [ %3382, %3449 ], [ %3382, %3451 ]
  %3468 = phi float [ %3383, %3380 ], [ %2729, %2918 ], [ %2729, %2724 ], [ %2729, %2737 ], [ %3383, %3402 ], [ %3383, %3417 ], [ %3383, %3449 ], [ %3383, %3451 ]
  %3469 = phi float [ %3384, %3380 ], [ %2730, %2918 ], [ %2730, %2724 ], [ %2730, %2737 ], [ %3384, %3402 ], [ %3384, %3417 ], [ %3384, %3449 ], [ %3384, %3451 ]
  %3470 = phi float [ %3385, %3380 ], [ %2731, %2918 ], [ %2731, %2724 ], [ %2731, %2737 ], [ %3385, %3402 ], [ %3385, %3417 ], [ %3385, %3449 ], [ %3385, %3451 ]
  %3471 = phi float [ %3386, %3380 ], [ %2732, %2918 ], [ %2732, %2724 ], [ %2732, %2737 ], [ %3386, %3402 ], [ %3386, %3417 ], [ %3386, %3449 ], [ %3386, %3451 ]
  %3472 = phi float [ %3387, %3380 ], [ %2733, %2918 ], [ %2733, %2724 ], [ %2733, %2737 ], [ %3387, %3402 ], [ %3387, %3417 ], [ %3387, %3449 ], [ %3387, %3451 ]
  %3473 = phi float [ %2734, %3380 ], [ %2734, %2918 ], [ %2734, %2724 ], [ %2734, %2737 ], [ %3414, %3402 ], [ %3448, %3417 ], [ %2734, %3449 ], [ %3462, %3451 ]
  %3474 = phi float [ %2735, %3380 ], [ %2735, %2918 ], [ %2735, %2724 ], [ %2735, %2737 ], [ %3411, %3402 ], [ %3425, %3417 ], [ %2735, %3449 ], [ %3459, %3451 ]
  %3475 = phi float [ %3388, %3380 ], [ %2736, %2918 ], [ %2736, %2724 ], [ %2736, %2737 ], [ %3388, %3402 ], [ %3388, %3417 ], [ %3388, %3449 ], [ %3388, %3451 ]
  %3476 = add i32 %61, 360
  %3477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.i32 %3477, 0
  %3479 = extractvalue %dx.types.ResRet.i32 %3477, 1
  %3480 = bitcast i32 %3478 to float
  %3481 = bitcast i32 %3479 to float
  %3482 = fcmp fast oge float %3480, 0.000000e+00
  %3483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.f32 %3483, 0
  %3485 = select i1 %3482, float %3480, float %3484
  %3486 = add i32 %61, 488
  %3487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3486, i32 undef)  ; BufferLoad(srv,index,wot)
  %3488 = extractvalue %dx.types.ResRet.i32 %3487, 0
  %3489 = add i32 %3488, 0
  %3490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3491 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3490, %dx.types.Handle %115, float %96, float %97, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3492 = extractvalue %dx.types.ResRet.f32 %3491, 0
  %3493 = fmul fast float %3492, %3481
  %3494 = fadd fast float %3493, %3485
  %3495 = call float @dx.op.dot2.f32(i32 54, float %3464, float %3465, float %3464, float %3465)  ; Dot2(ax,ay,bx,by)
  %3496 = fmul fast float %3495, 0x3FE3333340000000
  %3497 = fsub fast float 1.000000e+00, %3496
  %3498 = call float @dx.op.dot3.f32(i32 55, float %3464, float %3465, float %3497, float %3464, float %3465, float %3497)  ; Dot3(ax,ay,az,bx,by,bz)
  %3499 = call float @dx.op.unary.f32(i32 25, float %3498)  ; Rsqrt(value)
  %3500 = fmul fast float %3499, %3464
  %3501 = fmul fast float %3499, %3465
  %3502 = fmul fast float %3497, %3499
  %3503 = fmul fast float %3502, %125
  %3504 = fmul fast float %3502, %126
  %3505 = fmul fast float %3502, %127
  %3506 = fmul fast float %3500, %89
  %3507 = fmul fast float %3500, %90
  %3508 = fmul fast float %3500, %91
  %3509 = fadd fast float %3503, %3506
  %3510 = fadd fast float %3504, %3507
  %3511 = fadd fast float %3505, %3508
  %3512 = fmul fast float %137, %3501
  %3513 = fmul fast float %138, %3501
  %3514 = fmul fast float %139, %3501
  %3515 = fadd fast float %3509, %3512
  %3516 = fadd fast float %3510, %3513
  %3517 = fadd fast float %3511, %3514
  %3518 = call float @dx.op.dot3.f32(i32 55, float %3515, float %3516, float %3517, float %3515, float %3516, float %3517)  ; Dot3(ax,ay,az,bx,by,bz)
  %3519 = call float @dx.op.unary.f32(i32 25, float %3518)  ; Rsqrt(value)
  %3520 = fmul fast float %3515, %3519
  %3521 = fmul fast float %3516, %3519
  %3522 = fmul fast float %3517, %3519
  %3523 = icmp eq i32 %63, 65535
  br i1 %3523, label %4042, label %3524

; <label>:3524                                    ; preds = %3463
  %3525 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3526 = call float @dx.op.unary.f32(i32 83, float %65)  ; DerivCoarseX(value)
  %3527 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %3528 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3529 = call float @dx.op.unary.f32(i32 84, float %65)  ; DerivCoarseY(value)
  %3530 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %3531 = fadd fast float %3525, %64
  %3532 = fadd fast float %3526, %65
  %3533 = fadd fast float %3527, %66
  %3534 = fadd fast float %3528, %64
  %3535 = fadd fast float %3529, %65
  %3536 = fadd fast float %3530, %66
  %3537 = mul i32 %63, 48
  %3538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3537, i32 undef)  ; BufferLoad(srv,index,wot)
  %3539 = extractvalue %dx.types.ResRet.f32 %3538, 0
  %3540 = extractvalue %dx.types.ResRet.f32 %3538, 1
  %3541 = extractvalue %dx.types.ResRet.f32 %3538, 2
  %3542 = add i32 %3537, 16
  %3543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3544 = extractvalue %dx.types.ResRet.f32 %3543, 0
  %3545 = extractvalue %dx.types.ResRet.f32 %3543, 1
  %3546 = extractvalue %dx.types.ResRet.f32 %3543, 2
  %3547 = add i32 %3537, 32
  %3548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.f32 %3548, 0
  %3550 = extractvalue %dx.types.ResRet.f32 %3548, 1
  %3551 = extractvalue %dx.types.ResRet.f32 %3548, 2
  %3552 = extractvalue %dx.types.ResRet.f32 %3548, 3
  %3553 = bitcast float %3552 to i32
  %3554 = fmul fast float %3539, %64
  %3555 = fmul fast float %3540, %65
  %3556 = fmul fast float %3541, %66
  %3557 = fsub fast float %3554, %3544
  %3558 = fsub fast float %3555, %3545
  %3559 = fsub fast float %3556, %3546
  %3560 = call float @dx.op.unary.f32(i32 7, float %3557)  ; Saturate(value)
  %3561 = call float @dx.op.unary.f32(i32 7, float %3558)  ; Saturate(value)
  %3562 = call float @dx.op.unary.f32(i32 7, float %3559)  ; Saturate(value)
  %3563 = fmul fast float %3560, %3549
  %3564 = fmul fast float %3561, %3550
  %3565 = fmul fast float %3562, %3551
  %3566 = fadd fast float %3549, -1.000000e+00
  %3567 = fadd fast float %3550, -1.000000e+00
  %3568 = fadd fast float %3551, -1.000000e+00
  %3569 = call float @dx.op.unary.f32(i32 27, float %3563)  ; Round_ni(value)
  %3570 = call float @dx.op.unary.f32(i32 27, float %3564)  ; Round_ni(value)
  %3571 = call float @dx.op.unary.f32(i32 27, float %3565)  ; Round_ni(value)
  %3572 = call float @dx.op.binary.f32(i32 36, float %3569, float %3566)  ; FMin(a,b)
  %3573 = call float @dx.op.binary.f32(i32 36, float %3570, float %3567)  ; FMin(a,b)
  %3574 = call float @dx.op.binary.f32(i32 36, float %3571, float %3568)  ; FMin(a,b)
  %3575 = fmul fast float %3574, %3550
  %3576 = fadd fast float %3575, %3573
  %3577 = fmul fast float %3576, %3549
  %3578 = fadd fast float %3577, %3572
  %3579 = fptosi float %3578 to i32
  %3580 = add nsw i32 %3579, %3553
  %3581 = shl nsw i32 %3580, 2
  %3582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.i32 %3582, 0
  %3584 = lshr i32 %3583, 16
  %3585 = icmp eq i32 %3584, 0
  br i1 %3585, label %4010, label %3586

; <label>:3586                                    ; preds = %3524
  br label %3587

; <label>:3587                                    ; preds = %3709, %3586
  %3588 = phi i32 [ %3611, %3709 ], [ %3584, %3586 ]
  %3589 = phi float [ %3710, %3709 ], [ 0.000000e+00, %3586 ]
  %3590 = phi float [ %3711, %3709 ], [ %1255, %3586 ]
  %3591 = phi float [ %3712, %3709 ], [ %3494, %3586 ]
  %3592 = phi float [ %3713, %3709 ], [ %3475, %3586 ]
  %3593 = phi float [ %3714, %3709 ], [ 0.000000e+00, %3586 ]
  %3594 = phi float [ %3715, %3709 ], [ 0.000000e+00, %3586 ]
  %3595 = phi float [ %3716, %3709 ], [ %3469, %3586 ]
  %3596 = phi float [ %3717, %3709 ], [ %3470, %3586 ]
  %3597 = phi float [ %3718, %3709 ], [ %3471, %3586 ]
  %3598 = phi float [ %3719, %3709 ], [ %3520, %3586 ]
  %3599 = phi float [ %3720, %3709 ], [ %3521, %3586 ]
  %3600 = phi float [ %3721, %3709 ], [ %3522, %3586 ]
  %3601 = phi float [ %3722, %3709 ], [ %3474, %3586 ]
  %3602 = phi float [ %3723, %3709 ], [ %3473, %3586 ]
  %3603 = phi float [ %3724, %3709 ], [ 0.000000e+00, %3586 ]
  %3604 = phi float [ %3725, %3709 ], [ %3472, %3586 ]
  %3605 = phi float [ %3726, %3709 ], [ %3466, %3586 ]
  %3606 = phi float [ %3727, %3709 ], [ %3467, %3586 ]
  %3607 = phi float [ %3728, %3709 ], [ %3468, %3586 ]
  %3608 = shl nuw nsw i32 %3588, 2
  %3609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.i32 %3609, 0
  %3611 = lshr i32 %3610, 16
  %3612 = shl i32 %3610, 8
  %3613 = and i32 %3612, 16776960
  %3614 = or i32 %3613, 48
  %3615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3617 = extractvalue %dx.types.ResRet.f32 %3615, 1
  %3618 = extractvalue %dx.types.ResRet.f32 %3615, 2
  %3619 = or i32 %3613, 64
  %3620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3621 = extractvalue %dx.types.ResRet.i32 %3620, 0
  %3622 = extractvalue %dx.types.ResRet.i32 %3620, 1
  %3623 = or i32 %3613, 80
  %3624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.f32 %3624, 2
  %3626 = extractvalue %dx.types.ResRet.f32 %3624, 3
  %3627 = or i32 %3613, 96
  %3628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.ResRet.f32 %3628, 1
  %3631 = extractvalue %dx.types.ResRet.f32 %3628, 2
  %3632 = extractvalue %dx.types.ResRet.f32 %3628, 3
  %3633 = or i32 %3613, 112
  %3634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.f32 %3634, 2
  %3636 = or i32 %3613, 128
  %3637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3636, i32 undef)  ; BufferLoad(srv,index,wot)
  %3638 = extractvalue %dx.types.ResRet.f32 %3637, 0
  %3639 = extractvalue %dx.types.ResRet.f32 %3637, 1
  %3640 = extractvalue %dx.types.ResRet.f32 %3637, 2
  %3641 = extractvalue %dx.types.ResRet.f32 %3637, 3
  %3642 = or i32 %3613, 144
  %3643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3642, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.f32 %3643, 0
  %3645 = extractvalue %dx.types.ResRet.f32 %3643, 1
  %3646 = extractvalue %dx.types.ResRet.f32 %3643, 2
  %3647 = extractvalue %dx.types.ResRet.f32 %3643, 3
  %3648 = or i32 %3613, 160
  %3649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = extractvalue %dx.types.ResRet.f32 %3649, 1
  %3652 = extractvalue %dx.types.ResRet.f32 %3649, 2
  %3653 = extractvalue %dx.types.ResRet.f32 %3649, 3
  %3654 = or i32 %3613, 192
  %3655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3654, i32 undef)  ; BufferLoad(srv,index,wot)
  %3656 = extractvalue %dx.types.ResRet.i32 %3655, 0
  %3657 = or i32 %3613, 208
  %3658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.f32 %3658, 0
  %3660 = or i32 %3613, 248
  %3661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.f32 %3661, 0
  %3663 = extractvalue %dx.types.ResRet.f32 %3661, 1
  %3664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.f32 %3664, 0
  %3666 = extractvalue %dx.types.ResRet.f32 %3664, 1
  %3667 = extractvalue %dx.types.ResRet.f32 %3664, 2
  %3668 = extractvalue %dx.types.ResRet.f32 %3664, 3
  %3669 = call float @dx.op.dot4.f32(i32 56, float %3665, float %3666, float %3667, float %3668, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3670 = or i32 %3613, 16
  %3671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.f32 %3671, 0
  %3673 = extractvalue %dx.types.ResRet.f32 %3671, 1
  %3674 = extractvalue %dx.types.ResRet.f32 %3671, 2
  %3675 = extractvalue %dx.types.ResRet.f32 %3671, 3
  %3676 = call float @dx.op.dot4.f32(i32 56, float %3672, float %3673, float %3674, float %3675, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3677 = or i32 %3613, 32
  %3678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3677, i32 undef)  ; BufferLoad(srv,index,wot)
  %3679 = extractvalue %dx.types.ResRet.f32 %3678, 0
  %3680 = extractvalue %dx.types.ResRet.f32 %3678, 1
  %3681 = extractvalue %dx.types.ResRet.f32 %3678, 2
  %3682 = extractvalue %dx.types.ResRet.f32 %3678, 3
  %3683 = call float @dx.op.dot4.f32(i32 56, float %3679, float %3680, float %3681, float %3682, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3684 = call float @dx.op.unary.f32(i32 27, float %3669)  ; Round_ni(value)
  %3685 = call float @dx.op.unary.f32(i32 6, float %3684)  ; FAbs(value)
  %3686 = call float @dx.op.unary.f32(i32 27, float %3676)  ; Round_ni(value)
  %3687 = call float @dx.op.unary.f32(i32 6, float %3686)  ; FAbs(value)
  %3688 = call float @dx.op.unary.f32(i32 6, float %3683)  ; FAbs(value)
  %3689 = call float @dx.op.unary.f32(i32 27, float %3688)  ; Round_ni(value)
  %3690 = fadd fast float %3687, %3685
  %3691 = fadd fast float %3690, %3689
  %3692 = fcmp fast oeq float %3691, 0.000000e+00
  %3693 = call float @dx.op.dot4.f32(i32 56, float %3665, float %3666, float %3667, float %3668, float %3531, float %3532, float %3533, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3694 = call float @dx.op.dot4.f32(i32 56, float %3672, float %3673, float %3674, float %3675, float %3531, float %3532, float %3533, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3695 = call float @dx.op.dot4.f32(i32 56, float %3665, float %3666, float %3667, float %3668, float %3534, float %3535, float %3536, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3696 = call float @dx.op.dot4.f32(i32 56, float %3672, float %3673, float %3674, float %3675, float %3534, float %3535, float %3536, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3697 = fsub fast float %3693, %3669
  %3698 = fsub fast float %3695, %3669
  %3699 = fsub fast float %3694, %3676
  %3700 = fsub fast float %3696, %3676
  %3701 = call float @dx.op.dot3.f32(i32 55, float %3616, float %3617, float %3618, float %125, float %126, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %3702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3703 = extractvalue %dx.types.CBufRet.f32 %3702, 2
  %3704 = fadd fast float %3703, %3701
  %3705 = call float @dx.op.unary.f32(i32 7, float %3704)  ; Saturate(value)
  %3706 = extractvalue %dx.types.CBufRet.f32 %3702, 0
  %3707 = fcmp fast ogt float %3705, %3706
  %3708 = and i1 %3692, %3707
  br i1 %3708, label %3730, label %3709

; <label>:3709                                    ; preds = %3996, %3813, %3730, %3587
  %3710 = phi float [ %3589, %3730 ], [ %3816, %3813 ], [ %3816, %3996 ], [ %3589, %3587 ]
  %3711 = phi float [ %3590, %3730 ], [ %3590, %3813 ], [ %3971, %3996 ], [ %3590, %3587 ]
  %3712 = phi float [ %3591, %3730 ], [ %3591, %3813 ], [ %3970, %3996 ], [ %3591, %3587 ]
  %3713 = phi float [ %3592, %3730 ], [ %3592, %3813 ], [ %3968, %3996 ], [ %3592, %3587 ]
  %3714 = phi float [ %3593, %3730 ], [ %3593, %3813 ], [ %3940, %3996 ], [ %3593, %3587 ]
  %3715 = phi float [ %3594, %3730 ], [ %3594, %3813 ], [ %3938, %3996 ], [ %3594, %3587 ]
  %3716 = phi float [ %3595, %3730 ], [ %3595, %3813 ], [ %4006, %3996 ], [ %3595, %3587 ]
  %3717 = phi float [ %3596, %3730 ], [ %3596, %3813 ], [ %4007, %3996 ], [ %3596, %3587 ]
  %3718 = phi float [ %3597, %3730 ], [ %3597, %3813 ], [ %4008, %3996 ], [ %3597, %3587 ]
  %3719 = phi float [ %3598, %3730 ], [ %3598, %3813 ], [ %3919, %3996 ], [ %3598, %3587 ]
  %3720 = phi float [ %3599, %3730 ], [ %3599, %3813 ], [ %3920, %3996 ], [ %3599, %3587 ]
  %3721 = phi float [ %3600, %3730 ], [ %3600, %3813 ], [ %3921, %3996 ], [ %3600, %3587 ]
  %3722 = phi float [ %3601, %3730 ], [ %3601, %3813 ], [ %3948, %3996 ], [ %3601, %3587 ]
  %3723 = phi float [ %3602, %3730 ], [ %3602, %3813 ], [ %3945, %3996 ], [ %3602, %3587 ]
  %3724 = phi float [ %3603, %3730 ], [ %3603, %3813 ], [ %3942, %3996 ], [ %3603, %3587 ]
  %3725 = phi float [ %3604, %3730 ], [ %3604, %3813 ], [ %3936, %3996 ], [ %3604, %3587 ]
  %3726 = phi float [ %3605, %3730 ], [ %3605, %3813 ], [ %3931, %3996 ], [ %3605, %3587 ]
  %3727 = phi float [ %3606, %3730 ], [ %3606, %3813 ], [ %3932, %3996 ], [ %3606, %3587 ]
  %3728 = phi float [ %3607, %3730 ], [ %3607, %3813 ], [ %3933, %3996 ], [ %3607, %3587 ]
  %3729 = icmp eq i32 %3611, 0
  br i1 %3729, label %4009, label %3587

; <label>:3730                                    ; preds = %3587
  %3731 = extractvalue %dx.types.ResRet.f32 %3615, 3
  %3732 = extractvalue %dx.types.ResRet.f32 %3634, 3
  %3733 = extractvalue %dx.types.ResRet.f32 %3634, 1
  %3734 = extractvalue %dx.types.ResRet.f32 %3634, 0
  %3735 = extractvalue %dx.types.ResRet.f32 %3624, 1
  %3736 = extractvalue %dx.types.ResRet.f32 %3624, 0
  %3737 = extractvalue %dx.types.ResRet.i32 %3620, 3
  %3738 = extractvalue %dx.types.ResRet.i32 %3620, 2
  %3739 = bitcast float %3731 to i32
  %3740 = add i32 %3737, 0
  %3741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3740, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3743 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3741, %dx.types.Handle %3742, float %3669, float %3676, float undef, float undef, i32 0, i32 0, i32 undef, float %3697, float %3699, float undef, float %3698, float %3700, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3744 = extractvalue %dx.types.ResRet.f32 %3743, 0
  %3745 = fmul fast float %3744, %3736
  %3746 = fadd fast float %3745, %3735
  %3747 = call float @dx.op.unary.f32(i32 7, float %3746)  ; Saturate(value)
  %3748 = fmul fast float %3669, %3629
  %3749 = call float @dx.op.tertiary.f32(i32 46, float %3630, float %3676, float %3748)  ; FMad(a,b,c)
  %3750 = fadd fast float %3749, %3734
  %3751 = fmul fast float %3669, %3631
  %3752 = call float @dx.op.tertiary.f32(i32 46, float %3632, float %3676, float %3751)  ; FMad(a,b,c)
  %3753 = fadd fast float %3752, %3733
  %3754 = fmul fast float %3697, %3629
  %3755 = call float @dx.op.tertiary.f32(i32 46, float %3630, float %3699, float %3754)  ; FMad(a,b,c)
  %3756 = fmul fast float %3697, %3631
  %3757 = call float @dx.op.tertiary.f32(i32 46, float %3632, float %3699, float %3756)  ; FMad(a,b,c)
  %3758 = fmul fast float %3698, %3629
  %3759 = call float @dx.op.tertiary.f32(i32 46, float %3630, float %3700, float %3758)  ; FMad(a,b,c)
  %3760 = fmul fast float %3698, %3631
  %3761 = call float @dx.op.tertiary.f32(i32 46, float %3632, float %3700, float %3760)  ; FMad(a,b,c)
  %3762 = add i32 %3738, 0
  %3763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3762, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3764 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3763, %dx.types.Handle %3742, float %3750, float %3753, float undef, float undef, i32 0, i32 0, i32 undef, float %3755, float %3757, float undef, float %3759, float %3761, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3765 = extractvalue %dx.types.ResRet.f32 %3764, 0
  %3766 = and i32 %3739, 1024
  %3767 = icmp ne i32 %3766, 0
  %3768 = fcmp fast ogt float %3765, 0x3FE0101020000000
  %3769 = uitofp i1 %3768 to float
  %3770 = select i1 %3767, float %3769, float %3765
  %3771 = and i32 %3739, 8192
  %3772 = icmp ne i32 %3771, 0
  %3773 = select i1 %3772, float %3732, float 1.000000e+00
  %3774 = fmul fast float %3669, 2.000000e+00
  %3775 = fadd fast float %3774, -1.000000e+00
  %3776 = call float @dx.op.unary.f32(i32 6, float %3775)  ; FAbs(value)
  %3777 = fmul fast float %3776, %3662
  %3778 = fsub fast float %3777, %3662
  %3779 = call float @dx.op.unary.f32(i32 7, float %3778)  ; Saturate(value)
  %3780 = fmul fast float %3676, 2.000000e+00
  %3781 = fadd fast float %3780, -1.000000e+00
  %3782 = call float @dx.op.unary.f32(i32 6, float %3781)  ; FAbs(value)
  %3783 = fmul fast float %3782, %3663
  %3784 = fsub fast float %3783, %3663
  %3785 = call float @dx.op.unary.f32(i32 7, float %3784)  ; Saturate(value)
  %3786 = fmul fast float %3688, %3625
  %3787 = fsub fast float %3786, %3625
  %3788 = call float @dx.op.unary.f32(i32 7, float %3787)  ; Saturate(value)
  %3789 = fmul fast float %3747, %3773
  %3790 = fmul fast float %3789, %3744
  %3791 = fmul fast float %3790, %3779
  %3792 = fmul fast float %3791, %3770
  %3793 = fmul fast float %3792, %3785
  %3794 = fmul fast float %3793, %3788
  %3795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3796 = extractvalue %dx.types.CBufRet.f32 %3795, 1
  %3797 = extractvalue %dx.types.CBufRet.f32 %3795, 0
  %3798 = fsub fast float %3705, %3797
  %3799 = fmul fast float %3798, %3796
  %3800 = call float @dx.op.unary.f32(i32 7, float %3799)  ; Saturate(value)
  %3801 = fmul fast float %3794, %3626
  %3802 = fadd fast float %3794, %3626
  %3803 = fmul fast float %3802, %3635
  %3804 = fsub fast float %3803, %3635
  %3805 = call float @dx.op.unary.f32(i32 7, float %3804)  ; Saturate(value)
  %3806 = and i32 %3739, 128
  %3807 = icmp ne i32 %3806, 0
  %3808 = select i1 %3807, float %3805, float %3801
  %3809 = fmul fast float %3808, %3800
  %3810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3811 = extractvalue %dx.types.CBufRet.f32 %3810, 0
  %3812 = fcmp fast ugt float %3809, %3811
  br i1 %3812, label %3813, label %3709

; <label>:3813                                    ; preds = %3730
  %3814 = select i1 %3772, float %3809, float 0.000000e+00
  %3815 = fadd fast float %3814, %3589
  %3816 = call float @dx.op.unary.f32(i32 7, float %3815)  ; Saturate(value)
  br i1 %3772, label %3709, label %3817

; <label>:3817                                    ; preds = %3813
  %3818 = and i32 %3739, 4
  %3819 = and i32 %3739, 8
  %3820 = add i32 %3621, 0
  %3821 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3820, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3823 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3821, %dx.types.Handle %3822, float %3750, float %3753, float undef, float undef, i32 0, i32 0, i32 undef, float %3755, float %3757, float undef, float %3759, float %3761, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3824 = extractvalue %dx.types.ResRet.f32 %3823, 0
  %3825 = extractvalue %dx.types.ResRet.f32 %3823, 1
  %3826 = extractvalue %dx.types.ResRet.f32 %3823, 2
  %3827 = extractvalue %dx.types.ResRet.f32 %3823, 3
  %3828 = bitcast float %3647 to i32
  %3829 = and i32 %3828, 255
  %3830 = uitofp i32 %3829 to float
  %3831 = lshr i32 %3828, 8
  %3832 = and i32 %3831, 255
  %3833 = uitofp i32 %3832 to float
  %3834 = fmul fast float %3827, %3830
  %3835 = fadd fast float %3834, %3833
  %3836 = fmul fast float %3835, 0x3F70101000000000
  %3837 = add i32 %3622, 0
  %3838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3837, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3839 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3838, %dx.types.Handle %3822, float %3750, float %3753, float undef, float undef, i32 0, i32 0, i32 undef, float %3755, float %3757, float undef, float %3759, float %3761, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3840 = extractvalue %dx.types.ResRet.f32 %3839, 0
  %3841 = extractvalue %dx.types.ResRet.f32 %3839, 1
  %3842 = extractvalue %dx.types.ResRet.f32 %3839, 2
  %3843 = extractvalue %dx.types.ResRet.f32 %3839, 3
  %3844 = bitcast float %3641 to i32
  %3845 = and i32 %3844, 255
  %3846 = uitofp i32 %3845 to float
  %3847 = lshr i32 %3844, 8
  %3848 = and i32 %3847, 255
  %3849 = uitofp i32 %3848 to float
  %3850 = lshr i32 %3844, 16
  %3851 = and i32 %3850, 255
  %3852 = uitofp i32 %3851 to float
  %3853 = fmul fast float %3852, 0x3F70101000000000
  %3854 = fmul fast float %3840, %3846
  %3855 = fadd fast float %3854, %3849
  %3856 = fmul fast float %3855, 0x3F70101000000000
  %3857 = fadd fast float %3841, -5.000000e-01
  %3858 = fadd fast float %3843, -5.000000e-01
  %3859 = fmul fast float %3857, %3853
  %3860 = fmul fast float %3858, %3853
  %3861 = fadd fast float %3859, 5.000000e-01
  %3862 = fadd fast float %3860, 5.000000e-01
  %3863 = fmul fast float %3824, %3650
  %3864 = fmul fast float %3825, %3651
  %3865 = fmul fast float %3826, %3652
  %3866 = fmul fast float %3861, 2.000000e+00
  %3867 = fadd fast float %3866, -1.000000e+00
  %3868 = fmul fast float %3862, 2.000000e+00
  %3869 = fadd fast float %3868, -1.000000e+00
  %3870 = fadd fast float %3867, %3869
  %3871 = fmul fast float %3870, 5.000000e-01
  %3872 = fsub fast float %3867, %3869
  %3873 = fmul fast float %3872, 5.000000e-01
  %3874 = call float @dx.op.unary.f32(i32 6, float %3871)  ; FAbs(value)
  %3875 = fsub fast float 1.000000e+00, %3874
  %3876 = call float @dx.op.unary.f32(i32 6, float %3873)  ; FAbs(value)
  %3877 = fsub fast float %3875, %3876
  %3878 = call float @dx.op.dot3.f32(i32 55, float %3871, float %3873, float %3877, float %3871, float %3873, float %3877)  ; Dot3(ax,ay,az,bx,by,bz)
  %3879 = call float @dx.op.unary.f32(i32 25, float %3878)  ; Rsqrt(value)
  %3880 = fmul fast float %3871, %3879
  %3881 = fmul fast float %3873, %3879
  %3882 = fmul fast float %3879, %3877
  %3883 = fmul fast float %3882, %3616
  %3884 = fmul fast float %3882, %3617
  %3885 = fmul fast float %3882, %3618
  %3886 = fmul fast float %3880, %3638
  %3887 = fmul fast float %3880, %3639
  %3888 = fmul fast float %3880, %3640
  %3889 = fadd fast float %3886, %3883
  %3890 = fadd fast float %3887, %3884
  %3891 = fadd fast float %3888, %3885
  %3892 = fmul fast float %3881, %3644
  %3893 = fmul fast float %3881, %3645
  %3894 = fmul fast float %3881, %3646
  %3895 = fadd fast float %3889, %3892
  %3896 = fadd fast float %3890, %3893
  %3897 = fadd fast float %3891, %3894
  %3898 = call float @dx.op.dot3.f32(i32 55, float %3895, float %3896, float %3897, float %3895, float %3896, float %3897)  ; Dot3(ax,ay,az,bx,by,bz)
  %3899 = call float @dx.op.unary.f32(i32 25, float %3898)  ; Rsqrt(value)
  %3900 = fmul fast float %3895, %3899
  %3901 = fmul fast float %3896, %3899
  %3902 = fmul fast float %3897, %3899
  %3903 = icmp ne i32 %3819, 0
  %3904 = select i1 %3903, float 1.000000e+00, float 0.000000e+00
  %3905 = fmul fast float %3809, %3904
  %3906 = and i32 %3739, 1
  %3907 = icmp eq i32 %3906, 0
  br i1 %3907, label %3908, label %3912

; <label>:3908                                    ; preds = %3817
  %3909 = fsub fast float %3900, %3598
  %3910 = fsub fast float %3901, %3599
  %3911 = fsub fast float %3902, %3600
  br label %3912

; <label>:3912                                    ; preds = %3908, %3817
  %3913 = phi float [ %3909, %3908 ], [ %3900, %3817 ]
  %3914 = phi float [ %3910, %3908 ], [ %3901, %3817 ]
  %3915 = phi float [ %3911, %3908 ], [ %3902, %3817 ]
  %3916 = fmul float %3915, %3905
  %3917 = fmul float %3914, %3905
  %3918 = fmul float %3913, %3905
  %3919 = fadd fast float %3918, %3598
  %3920 = fadd fast float %3917, %3599
  %3921 = fadd fast float %3916, %3600
  %3922 = icmp ne i32 %3818, 0
  %3923 = select i1 %3922, float 1.000000e+00, float 0.000000e+00
  %3924 = fmul fast float %3809, %3923
  %3925 = fsub fast float %3863, %3605
  %3926 = fsub fast float %3864, %3606
  %3927 = fsub fast float %3865, %3607
  %3928 = fmul fast float %3925, %3924
  %3929 = fmul fast float %3926, %3924
  %3930 = fmul fast float %3927, %3924
  %3931 = fadd fast float %3928, %3605
  %3932 = fadd fast float %3929, %3606
  %3933 = fadd fast float %3930, %3607
  %3934 = fsub fast float %3836, %3604
  %3935 = fmul fast float %3934, %3924
  %3936 = fadd fast float %3935, %3604
  %3937 = fmul fast float %3924, %3594
  %3938 = fsub fast float %3594, %3937
  %3939 = fmul fast float %3924, %3593
  %3940 = fsub fast float %3593, %3939
  %3941 = fadd fast float %3809, %3603
  %3942 = call float @dx.op.unary.f32(i32 7, float %3941)  ; Saturate(value)
  %3943 = fsub fast float %3856, %3602
  %3944 = fmul fast float %3943, %3905
  %3945 = fadd fast float %3944, %3602
  %3946 = fsub fast float %3842, %3601
  %3947 = fmul fast float %3946, %3905
  %3948 = fadd fast float %3947, %3601
  %3949 = call float @dx.op.dot3.f32(i32 55, float %3863, float %3864, float %3865, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3951 = extractvalue %dx.types.CBufRet.f32 %3950, 0
  %3952 = extractvalue %dx.types.CBufRet.f32 %3950, 1
  %3953 = fmul fast float %3952, %3949
  %3954 = fadd fast float %3953, %3951
  %3955 = call float @dx.op.unary.f32(i32 7, float %3954)  ; Saturate(value)
  %3956 = bitcast float %3653 to i32
  %3957 = and i32 %3956, 65535
  %3958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3957)  ; LegacyF16ToF32(value)
  %3959 = lshr i32 %3956, 16
  %3960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3959)  ; LegacyF16ToF32(value)
  %3961 = fcmp fast oge float %3958, 0.000000e+00
  %3962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3963 = extractvalue %dx.types.CBufRet.f32 %3962, 0
  %3964 = select i1 %3961, float %3958, float %3963
  %3965 = fadd fast float %3964, %3960
  %3966 = fsub fast float %3955, %3592
  %3967 = fmul fast float %3966, %3809
  %3968 = fadd fast float %3967, %3592
  %3969 = fmul fast float %3965, %3809
  %3970 = call float @dx.op.binary.f32(i32 35, float %3591, float %3969)  ; FMax(a,b)
  %3971 = call float @dx.op.binary.f32(i32 35, float %3590, float %3809)  ; FMax(a,b)
  %3972 = and i32 %3739, 16
  %3973 = icmp eq i32 %3972, 0
  br i1 %3973, label %3996, label %3974

; <label>:3974                                    ; preds = %3912
  %3975 = bitcast float %3659 to i32
  %3976 = add i32 %3656, 0
  %3977 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3976, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3978 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3977, %dx.types.Handle %3822, float %3750, float %3753, float undef, float undef, i32 0, i32 0, i32 undef, float %3755, float %3757, float undef, float %3759, float %3761, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3979 = extractvalue %dx.types.ResRet.f32 %3978, 0
  %3980 = extractvalue %dx.types.ResRet.f32 %3978, 1
  %3981 = extractvalue %dx.types.ResRet.f32 %3978, 2
  %3982 = and i32 %3975, 65535
  %3983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3982)  ; LegacyF16ToF32(value)
  %3984 = fmul fast float %3979, %3650
  %3985 = fmul fast float %3980, %3651
  %3986 = fmul fast float %3981, %3652
  %3987 = and i32 %3739, 16384
  %3988 = icmp ne i32 %3987, 0
  %3989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3990 = extractvalue %dx.types.CBufRet.f32 %3989, 0
  %3991 = select i1 %3988, float %3990, float 1.000000e+00
  %3992 = fmul fast float %3991, %3983
  %3993 = fmul fast float %3984, %3992
  %3994 = fmul fast float %3985, %3992
  %3995 = fmul fast float %3986, %3992
  br label %3996

; <label>:3996                                    ; preds = %3974, %3912
  %3997 = phi float [ %3993, %3974 ], [ 0.000000e+00, %3912 ]
  %3998 = phi float [ %3994, %3974 ], [ 0.000000e+00, %3912 ]
  %3999 = phi float [ %3995, %3974 ], [ 0.000000e+00, %3912 ]
  %4000 = fsub fast float %3997, %3595
  %4001 = fsub fast float %3998, %3596
  %4002 = fsub fast float %3999, %3597
  %4003 = fmul fast float %4000, %3809
  %4004 = fmul fast float %4001, %3809
  %4005 = fmul fast float %4002, %3809
  %4006 = fadd fast float %4003, %3595
  %4007 = fadd fast float %4004, %3596
  %4008 = fadd fast float %4005, %3597
  br label %3709

; <label>:4009                                    ; preds = %3709
  br label %4010

; <label>:4010                                    ; preds = %4009, %3524
  %4011 = phi float [ 0.000000e+00, %3524 ], [ %3710, %4009 ]
  %4012 = phi float [ %1255, %3524 ], [ %3711, %4009 ]
  %4013 = phi float [ %3494, %3524 ], [ %3712, %4009 ]
  %4014 = phi float [ %3475, %3524 ], [ %3713, %4009 ]
  %4015 = phi float [ 0.000000e+00, %3524 ], [ %3714, %4009 ]
  %4016 = phi float [ 0.000000e+00, %3524 ], [ %3715, %4009 ]
  %4017 = phi float [ %3469, %3524 ], [ %3716, %4009 ]
  %4018 = phi float [ %3470, %3524 ], [ %3717, %4009 ]
  %4019 = phi float [ %3471, %3524 ], [ %3718, %4009 ]
  %4020 = phi float [ %3520, %3524 ], [ %3719, %4009 ]
  %4021 = phi float [ %3521, %3524 ], [ %3720, %4009 ]
  %4022 = phi float [ %3522, %3524 ], [ %3721, %4009 ]
  %4023 = phi float [ %3474, %3524 ], [ %3722, %4009 ]
  %4024 = phi float [ %3473, %3524 ], [ %3723, %4009 ]
  %4025 = phi float [ 0.000000e+00, %3524 ], [ %3724, %4009 ]
  %4026 = phi float [ %3472, %3524 ], [ %3725, %4009 ]
  %4027 = phi float [ %3466, %3524 ], [ %3726, %4009 ]
  %4028 = phi float [ %3467, %3524 ], [ %3727, %4009 ]
  %4029 = phi float [ %3468, %3524 ], [ %3728, %4009 ]
  %4030 = call float @dx.op.dot3.f32(i32 55, float %4020, float %4021, float %4022, float %4020, float %4021, float %4022)  ; Dot3(ax,ay,az,bx,by,bz)
  %4031 = call float @dx.op.unary.f32(i32 25, float %4030)  ; Rsqrt(value)
  %4032 = fmul fast float %4031, %4020
  %4033 = fmul fast float %4031, %4021
  %4034 = fmul fast float %4031, %4022
  %4035 = fadd fast float %4025, %1255
  %4036 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4037 = call float @dx.op.dot3.f32(i32 55, float %4032, float %4033, float %4034, float %4032, float %4033, float %4034)  ; Dot3(ax,ay,az,bx,by,bz)
  %4038 = call float @dx.op.unary.f32(i32 25, float %4037)  ; Rsqrt(value)
  %4039 = fmul fast float %4038, %4032
  %4040 = fmul fast float %4038, %4033
  %4041 = fmul fast float %4038, %4034
  br label %4042

; <label>:4042                                    ; preds = %4010, %3463
  %4043 = phi float [ %4039, %4010 ], [ %3520, %3463 ]
  %4044 = phi float [ %4040, %4010 ], [ %3521, %3463 ]
  %4045 = phi float [ %4041, %4010 ], [ %3522, %3463 ]
  %4046 = phi float [ %4027, %4010 ], [ %3466, %3463 ]
  %4047 = phi float [ %4028, %4010 ], [ %3467, %3463 ]
  %4048 = phi float [ %4029, %4010 ], [ %3468, %3463 ]
  %4049 = phi float [ %4017, %4010 ], [ %3469, %3463 ]
  %4050 = phi float [ %4018, %4010 ], [ %3470, %3463 ]
  %4051 = phi float [ %4019, %4010 ], [ %3471, %3463 ]
  %4052 = phi float [ %4026, %4010 ], [ %3472, %3463 ]
  %4053 = phi float [ %4036, %4010 ], [ %1255, %3463 ]
  %4054 = phi float [ %4024, %4010 ], [ %3473, %3463 ]
  %4055 = phi float [ %4023, %4010 ], [ %3474, %3463 ]
  %4056 = phi float [ %4016, %4010 ], [ 0.000000e+00, %3463 ]
  %4057 = phi float [ %4015, %4010 ], [ 0.000000e+00, %3463 ]
  %4058 = phi float [ %4011, %4010 ], [ 0.000000e+00, %3463 ]
  %4059 = phi float [ %4013, %4010 ], [ %3494, %3463 ]
  %4060 = phi float [ %4012, %4010 ], [ %1255, %3463 ]
  %4061 = phi float [ %4014, %4010 ], [ %3475, %3463 ]
  %4062 = fadd fast float %4052, 0xBFB99999A0000000
  %4063 = call float @dx.op.unary.f32(i32 7, float %4062)  ; Saturate(value)
  %4064 = fmul fast float %4063, 0x3FF1C71C80000000
  %4065 = call float @dx.op.binary.f32(i32 36, float %4052, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4066 = fsub fast float 1.000000e+00, %4064
  %4067 = call float @dx.op.unary.f32(i32 7, float %4066)  ; Saturate(value)
  %4068 = fmul fast float %4067, %4046
  %4069 = fmul fast float %4067, %4047
  %4070 = fmul fast float %4067, %4048
  %4071 = call float @dx.op.unary.f32(i32 7, float %4068)  ; Saturate(value)
  %4072 = call float @dx.op.unary.f32(i32 7, float %4069)  ; Saturate(value)
  %4073 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4074 = fmul fast float %4064, %4046
  %4075 = fmul fast float %4064, %4047
  %4076 = fmul fast float %4064, %4048
  %4077 = fadd fast float %4074, %4065
  %4078 = fadd fast float %4075, %4065
  %4079 = fadd fast float %4076, %4065
  %4080 = call float @dx.op.unary.f32(i32 7, float %4077)  ; Saturate(value)
  %4081 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4082 = call float @dx.op.unary.f32(i32 7, float %4079)  ; Saturate(value)
  %4083 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.i32 %4084, 3
  %4086 = and i32 %4085, 8
  %4087 = icmp ne i32 %4086, 0
  %4088 = call float @dx.op.binary.f32(i32 35, float %4071, float %4046)  ; FMax(a,b)
  %4089 = call float @dx.op.binary.f32(i32 35, float %4072, float %4046)  ; FMax(a,b)
  %4090 = call float @dx.op.binary.f32(i32 35, float %4073, float %4046)  ; FMax(a,b)
  %4091 = call float @dx.op.dot3.f32(i32 55, float %4071, float %4072, float %4073, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4092 = select i1 %264, float %4046, float %4071
  %4093 = select i1 %264, float %4091, float %4072
  %4094 = select i1 %264, float 1.000000e+00, float %4073
  %4095 = select i1 %4087, float %4088, float %4092
  %4096 = select i1 %4087, float %4089, float %4093
  %4097 = select i1 %4087, float %4090, float %4094
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 0
  %4100 = extractvalue %dx.types.CBufRet.f32 %4098, 1
  %4101 = extractvalue %dx.types.CBufRet.f32 %4098, 2
  %4102 = fadd fast float %4099, %205
  %4103 = fadd fast float %4100, %206
  %4104 = fadd fast float %4101, %207
  %4105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4106 = extractvalue %dx.types.CBufRet.f32 %4105, 0
  %4107 = extractvalue %dx.types.CBufRet.f32 %4105, 1
  %4108 = fsub fast float %4102, %4106
  %4109 = fsub fast float %4103, %4107
  %4110 = fmul fast float %4108, %4108
  %4111 = fmul fast float %4109, %4109
  %4112 = fadd fast float %4110, %4111
  %4113 = call float @dx.op.unary.f32(i32 24, float %4112)  ; Sqrt(value)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4105, 2
  %4115 = fcmp fast olt float %4113, %4114
  br i1 %4115, label %4116, label %4183

; <label>:4116                                    ; preds = %4042
  %4117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.f32 %4117, 0
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 0
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 0
  %4123 = extractvalue %dx.types.CBufRet.f32 %4117, 1
  %4124 = extractvalue %dx.types.CBufRet.f32 %4119, 1
  %4125 = extractvalue %dx.types.CBufRet.f32 %4121, 1
  %4126 = extractvalue %dx.types.CBufRet.f32 %4117, 3
  %4127 = extractvalue %dx.types.CBufRet.f32 %4119, 3
  %4128 = extractvalue %dx.types.CBufRet.f32 %4121, 3
  %4129 = fadd fast float %4126, %4102
  %4130 = fadd fast float %4127, %4103
  %4131 = fadd fast float %4128, %4104
  %4132 = fmul fast float %4129, %4118
  %4133 = call float @dx.op.tertiary.f32(i32 46, float %4130, float %4120, float %4132)  ; FMad(a,b,c)
  %4134 = call float @dx.op.tertiary.f32(i32 46, float %4131, float %4122, float %4133)  ; FMad(a,b,c)
  %4135 = fmul fast float %4129, %4123
  %4136 = call float @dx.op.tertiary.f32(i32 46, float %4130, float %4124, float %4135)  ; FMad(a,b,c)
  %4137 = call float @dx.op.tertiary.f32(i32 46, float %4131, float %4125, float %4136)  ; FMad(a,b,c)
  %4138 = fsub fast float %4134, %4126
  %4139 = fsub fast float %4137, %4127
  %4140 = fsub fast float %4138, %4106
  %4141 = fadd fast float %4140, %4114
  %4142 = fsub fast float %4139, %4107
  %4143 = fadd fast float %4142, %4114
  %4144 = extractvalue %dx.types.CBufRet.f32 %4105, 3
  %4145 = fmul fast float %4141, %4144
  %4146 = fmul fast float %4143, %4144
  %4147 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4148 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4149 = fsub fast float 1.000000e+00, %4147
  %4150 = fsub fast float 1.000000e+00, %4148
  %4151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %55, float %4149, float %4150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = fcmp fast ugt float %4152, 0.000000e+00
  br i1 %4153, label %4154, label %4457

; <label>:4154                                    ; preds = %4116
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 2
  %4157 = fmul fast float %4156, %4152
  %4158 = extractvalue %dx.types.CBufRet.f32 %4155, 3
  %4159 = fadd fast float %4158, %4157
  %4160 = extractvalue %dx.types.CBufRet.f32 %4121, 2
  %4161 = fadd fast float %4159, %4128
  %4162 = fmul fast float %4134, %4122
  %4163 = call float @dx.op.tertiary.f32(i32 46, float %4137, float %4125, float %4162)  ; FMad(a,b,c)
  %4164 = call float @dx.op.tertiary.f32(i32 46, float %4161, float %4160, float %4163)  ; FMad(a,b,c)
  %4165 = fsub fast float %4164, %4128
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 2
  %4168 = fsub fast float %4165, %4167
  %4169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %55, float %4149, float %4150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.ResRet.f32 %4169, 1
  %4172 = extractvalue %dx.types.ResRet.f32 %4169, 2
  %4173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %55, float %4149, float %4150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4175 = extractvalue %dx.types.ResRet.f32 %4173, 1
  %4176 = extractvalue %dx.types.ResRet.f32 %4173, 2
  %4177 = fadd fast float %4174, %4170
  %4178 = fmul fast float %4177, 0x3F847AE140000000
  %4179 = fadd fast float %4175, %4171
  %4180 = fmul fast float %4179, 0x3F847AE140000000
  %4181 = fadd fast float %4176, %4172
  %4182 = fmul fast float %4181, 0x3F847AE140000000
  br label %4457

; <label>:4183                                    ; preds = %4042
  %4184 = and i32 %243, 1
  %4185 = icmp eq i32 %4184, 0
  br i1 %4185, label %4457, label %4186

; <label>:4186                                    ; preds = %4183
  %4187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4188 = extractvalue %dx.types.CBufRet.f32 %4187, 0
  %4189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4190 = extractvalue %dx.types.CBufRet.f32 %4189, 0
  %4191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4191, 0
  %4193 = extractvalue %dx.types.CBufRet.f32 %4187, 1
  %4194 = extractvalue %dx.types.CBufRet.f32 %4189, 1
  %4195 = extractvalue %dx.types.CBufRet.f32 %4191, 1
  %4196 = extractvalue %dx.types.CBufRet.f32 %4187, 3
  %4197 = extractvalue %dx.types.CBufRet.f32 %4189, 3
  %4198 = extractvalue %dx.types.CBufRet.f32 %4191, 3
  %4199 = fadd fast float %4196, %4102
  %4200 = fadd fast float %4197, %4103
  %4201 = fadd fast float %4198, %4104
  %4202 = fmul fast float %4199, %4188
  %4203 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4190, float %4202)  ; FMad(a,b,c)
  %4204 = call float @dx.op.tertiary.f32(i32 46, float %4201, float %4192, float %4203)  ; FMad(a,b,c)
  %4205 = fmul fast float %4199, %4193
  %4206 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4194, float %4205)  ; FMad(a,b,c)
  %4207 = call float @dx.op.tertiary.f32(i32 46, float %4201, float %4195, float %4206)  ; FMad(a,b,c)
  %4208 = fsub fast float %4204, %4196
  %4209 = fsub fast float %4207, %4197
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4212 = extractvalue %dx.types.CBufRet.f32 %4210, 1
  %4213 = extractvalue %dx.types.CBufRet.f32 %4210, 2
  %4214 = extractvalue %dx.types.CBufRet.f32 %4210, 3
  %4215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4216 = extractvalue %dx.types.CBufRet.f32 %4215, 3
  %4217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4218 = extractvalue %dx.types.CBufRet.i32 %4217, 0
  %4219 = extractvalue %dx.types.CBufRet.i32 %4217, 1
  %4220 = udiv i32 %4219, %4218
  %4221 = fsub fast float %4208, %4211
  %4222 = fsub fast float %4209, %4212
  %4223 = call float @dx.op.binary.f32(i32 35, float %4221, float 0.000000e+00)  ; FMax(a,b)
  %4224 = call float @dx.op.binary.f32(i32 35, float %4222, float 0.000000e+00)  ; FMax(a,b)
  %4225 = call float @dx.op.binary.f32(i32 36, float %4223, float %4213)  ; FMin(a,b)
  %4226 = call float @dx.op.binary.f32(i32 36, float %4224, float %4214)  ; FMin(a,b)
  %4227 = add i32 %4218, -1
  %4228 = add i32 %4220, -1
  %4229 = fmul fast float %4225, %4216
  %4230 = fmul fast float %4226, %4216
  %4231 = fptoui float %4229 to i32
  %4232 = fptoui float %4230 to i32
  %4233 = call i32 @dx.op.binary.i32(i32 40, i32 %4231, i32 %4227)  ; UMin(a,b)
  %4234 = call i32 @dx.op.binary.i32(i32 40, i32 %4232, i32 %4228)  ; UMin(a,b)
  %4235 = mul i32 %4234, %4218
  %4236 = add i32 %4235, %4233
  %4237 = shl i32 %4236, 2
  %4238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4237, i32 undef)  ; BufferLoad(srv,index,wot)
  %4239 = extractvalue %dx.types.ResRet.i32 %4238, 0
  %4240 = icmp eq i32 %4239, -1
  br i1 %4240, label %4457, label %4241

; <label>:4241                                    ; preds = %4186
  %4242 = mul i32 %4239, 148
  %4243 = add i32 %4242, 4
  %4244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4243, i32 undef)  ; BufferLoad(srv,index,wot)
  %4245 = extractvalue %dx.types.ResRet.f32 %4244, 0
  %4246 = add i32 %4242, 8
  %4247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4246, i32 undef)  ; BufferLoad(srv,index,wot)
  %4248 = extractvalue %dx.types.ResRet.f32 %4247, 0
  %4249 = add i32 %4242, 36
  %4250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4249, i32 undef)  ; BufferLoad(srv,index,wot)
  %4251 = extractvalue %dx.types.ResRet.f32 %4250, 0
  %4252 = add i32 %4242, 60
  %4253 = add i32 %4242, 92
  %4254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4253, i32 undef)  ; BufferLoad(srv,index,wot)
  %4255 = extractvalue %dx.types.ResRet.i32 %4254, 0
  %4256 = add i32 %4242, 116
  %4257 = fsub fast float %4208, %4245
  %4258 = fsub fast float %4209, %4248
  %4259 = fmul fast float %4216, %4257
  %4260 = fmul fast float %4216, %4258
  %4261 = call float @dx.op.unary.f32(i32 7, float %4259)  ; Saturate(value)
  %4262 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4263 = fsub fast float 1.000000e+00, %4262
  %4264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.f32 %4264, 2
  %4266 = call float @dx.op.unary.f32(i32 83, float %4261)  ; DerivCoarseX(value)
  %4267 = call float @dx.op.unary.f32(i32 83, float %4263)  ; DerivCoarseX(value)
  %4268 = call float @dx.op.unary.f32(i32 84, float %4261)  ; DerivCoarseY(value)
  %4269 = call float @dx.op.unary.f32(i32 84, float %4263)  ; DerivCoarseY(value)
  %4270 = fmul fast float %4266, %4265
  %4271 = fmul fast float %4267, %4265
  %4272 = fmul fast float %4268, %4265
  %4273 = fmul fast float %4269, %4265
  %4274 = call float @dx.op.dot2.f32(i32 54, float %4272, float %4273, float %4272, float %4273)  ; Dot2(ax,ay,bx,by)
  %4275 = call float @dx.op.dot2.f32(i32 54, float %4270, float %4271, float %4270, float %4271)  ; Dot2(ax,ay,bx,by)
  %4276 = call float @dx.op.binary.f32(i32 35, float %4275, float %4274)  ; FMax(a,b)
  %4277 = call float @dx.op.unary.f32(i32 23, float %4276)  ; Log(value)
  %4278 = fmul fast float %4277, 5.000000e-01
  %4279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.f32 %4279, 1
  %4281 = fadd fast float %4280, %4278
  %4282 = call float @dx.op.binary.f32(i32 35, float %4281, float 0.000000e+00)  ; FMax(a,b)
  %4283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4284 = extractvalue %dx.types.CBufRet.f32 %4283, 3
  %4285 = fadd fast float %4284, %4282
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 3
  %4288 = fadd fast float %4285, %4287
  %4289 = add i32 %4255, 0
  %4290 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4289, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4291 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4290, i32 0)  ; GetDimensions(handle,mipLevel)
  %4292 = extractvalue %dx.types.Dimensions %4291, 0
  %4293 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4292)  ; FirstbitLo(value)
  %4294 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4295 = extractvalue %dx.types.CBufRet.i32 %4294, 1
  %4296 = sub nsw i32 %4295, %4293
  %4297 = sitofp i32 %4296 to float
  %4298 = fsub fast float %4288, %4297
  %4299 = call float @dx.op.binary.f32(i32 35, float %4298, float 0.000000e+00)  ; FMax(a,b)
  %4300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4290, %dx.types.Handle %53, float %4261, float %4263, float %4251, float undef, i32 0, i32 0, i32 undef, float %4299)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4301 = extractvalue %dx.types.ResRet.f32 %4300, 0
  %4302 = fcmp ule float %4301, 0x3FE0101020000000
  %4303 = extractvalue %dx.types.CBufRet.i32 %4294, 0
  %4304 = and i32 %4303, 128
  %4305 = icmp ne i32 %4304, 0
  %4306 = and i1 %4302, %4305
  br i1 %4306, label %4457, label %4307

; <label>:4307                                    ; preds = %4241
  %4308 = add i32 %4242, 20
  %4309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4308, i32 undef)  ; BufferLoad(srv,index,wot)
  %4310 = extractvalue %dx.types.ResRet.f32 %4309, 0
  %4311 = add i32 %4242, 24
  %4312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4311, i32 undef)  ; BufferLoad(srv,index,wot)
  %4313 = extractvalue %dx.types.ResRet.f32 %4312, 0
  %4314 = add i32 %4242, 40
  %4315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4314, i32 undef)  ; BufferLoad(srv,index,wot)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = add i32 %4242, 96
  %4318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4317, i32 undef)  ; BufferLoad(srv,index,wot)
  %4319 = extractvalue %dx.types.ResRet.i32 %4318, 0
  %4320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.f32 %4320, 2
  %4322 = fmul fast float %4321, %4261
  %4323 = fmul fast float %4321, %4263
  %4324 = extractvalue %dx.types.CBufRet.f32 %4320, 3
  %4325 = fadd fast float %4322, %4324
  %4326 = fadd fast float %4323, %4324
  %4327 = add i32 %4319, 0
  %4328 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4327, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4329 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4328, i32 0)  ; GetDimensions(handle,mipLevel)
  %4330 = extractvalue %dx.types.Dimensions %4329, 0
  %4331 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4330)  ; FirstbitLo(value)
  %4332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.i32 %4332, 1
  %4334 = sub nsw i32 %4333, %4331
  %4335 = sitofp i32 %4334 to float
  %4336 = fsub fast float %4285, %4335
  %4337 = call float @dx.op.binary.f32(i32 35, float %4336, float 0.000000e+00)  ; FMax(a,b)
  %4338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4328, %dx.types.Handle %53, float %4325, float %4326, float %4316, float undef, i32 0, i32 0, i32 undef, float %4337)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = fmul fast float %4339, %4310
  %4341 = fadd fast float %4340, %4313
  %4342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.f32 %4342, 0
  %4344 = extractvalue %dx.types.CBufRet.f32 %4342, 1
  %4345 = extractvalue %dx.types.CBufRet.f32 %4342, 2
  %4346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4347 = extractvalue %dx.types.CBufRet.f32 %4346, 3
  %4348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.f32 %4348, 3
  %4350 = extractvalue %dx.types.CBufRet.f32 %4342, 3
  %4351 = fadd fast float %4347, %4208
  %4352 = fadd fast float %4349, %4209
  %4353 = fadd fast float %4341, %4350
  %4354 = fmul fast float %4351, %4343
  %4355 = call float @dx.op.tertiary.f32(i32 46, float %4352, float %4344, float %4354)  ; FMad(a,b,c)
  %4356 = call float @dx.op.tertiary.f32(i32 46, float %4353, float %4345, float %4355)  ; FMad(a,b,c)
  %4357 = fsub fast float %4356, %4350
  %4358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4359 = extractvalue %dx.types.CBufRet.f32 %4358, 2
  %4360 = fsub fast float %4357, %4359
  %4361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4362 = extractvalue %dx.types.CBufRet.i32 %4361, 0
  %4363 = call i32 @dx.op.binary.i32(i32 40, i32 %4239, i32 %4362)  ; UMin(a,b)
  %4364 = mul i32 %4363, 36
  %4365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4364, i32 undef)  ; BufferLoad(srv,index,wot)
  %4366 = extractvalue %dx.types.ResRet.i32 %4365, 0
  %4367 = add i32 %4364, 4
  %4368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4369 = extractvalue %dx.types.CBufRet.f32 %4368, 0
  %4370 = fmul fast float %4369, %4261
  %4371 = fmul fast float %4369, %4263
  %4372 = extractvalue %dx.types.CBufRet.f32 %4368, 1
  %4373 = fadd fast float %4370, %4372
  %4374 = fadd fast float %4371, %4372
  %4375 = icmp eq i32 %4366, 0
  br i1 %4375, label %4444, label %4376

; <label>:4376                                    ; preds = %4307
  br label %4377

; <label>:4377                                    ; preds = %4434, %4376
  %4378 = phi float [ %4435, %4434 ], [ 0.000000e+00, %4376 ]
  %4379 = phi float [ %4436, %4434 ], [ 0.000000e+00, %4376 ]
  %4380 = phi float [ %4437, %4434 ], [ 0.000000e+00, %4376 ]
  %4381 = phi float [ %4438, %4434 ], [ 0.000000e+00, %4376 ]
  %4382 = phi float [ %4439, %4434 ], [ 0.000000e+00, %4376 ]
  %4383 = phi float [ %4440, %4434 ], [ 0.000000e+00, %4376 ]
  %4384 = phi i32 [ %4441, %4434 ], [ 0, %4376 ]
  %4385 = shl i32 %4384, 2
  %4386 = add i32 %4252, %4385
  %4387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4386, i32 undef)  ; BufferLoad(srv,index,wot)
  %4388 = extractvalue %dx.types.ResRet.f32 %4387, 0
  %4389 = add i32 %4256, %4385
  %4390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4391 = extractvalue %dx.types.ResRet.i32 %4390, 0
  %4392 = add i32 %4391, 0
  %4393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4392, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4394 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4393, i32 0)  ; GetDimensions(handle,mipLevel)
  %4395 = extractvalue %dx.types.Dimensions %4394, 0
  %4396 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4395)  ; FirstbitLo(value)
  %4397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4398 = extractvalue %dx.types.CBufRet.i32 %4397, 1
  %4399 = sub nsw i32 %4398, %4396
  %4400 = sitofp i32 %4399 to float
  %4401 = fsub fast float %4285, %4400
  %4402 = call float @dx.op.binary.f32(i32 35, float %4401, float 0.000000e+00)  ; FMax(a,b)
  %4403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4393, %dx.types.Handle %53, float %4373, float %4374, float %4388, float undef, i32 0, i32 0, i32 undef, float %4402)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4404 = extractvalue %dx.types.ResRet.f32 %4403, 0
  %4405 = fcmp fast ogt float %4404, 0.000000e+00
  br i1 %4405, label %4406, label %4434

; <label>:4406                                    ; preds = %4377
  %4407 = add i32 %4367, %4385
  %4408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4407, i32 undef)  ; BufferLoad(srv,index,wot)
  %4409 = extractvalue %dx.types.ResRet.i32 %4408, 0
  %4410 = and i32 %4409, 32767
  %4411 = mul nuw nsw i32 %4410, 928
  %4412 = add nuw nsw i32 %4411, 48
  %4413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4414 = extractvalue %dx.types.ResRet.f32 %4413, 0
  %4415 = extractvalue %dx.types.ResRet.f32 %4413, 1
  %4416 = extractvalue %dx.types.ResRet.f32 %4413, 2
  %4417 = add nuw nsw i32 %4411, 60
  %4418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4417, i32 undef)  ; BufferLoad(srv,index,wot)
  %4419 = extractvalue %dx.types.ResRet.f32 %4418, 0
  %4420 = extractvalue %dx.types.ResRet.f32 %4418, 1
  %4421 = extractvalue %dx.types.ResRet.f32 %4418, 2
  %4422 = fmul fast float %4414, %4404
  %4423 = fmul fast float %4415, %4404
  %4424 = fmul fast float %4416, %4404
  %4425 = fadd fast float %4422, %4378
  %4426 = fadd fast float %4423, %4379
  %4427 = fadd fast float %4424, %4380
  %4428 = fmul fast float %4419, %4404
  %4429 = fmul fast float %4420, %4404
  %4430 = fmul fast float %4421, %4404
  %4431 = fadd fast float %4428, %4381
  %4432 = fadd fast float %4429, %4382
  %4433 = fadd fast float %4430, %4383
  br label %4434

; <label>:4434                                    ; preds = %4406, %4377
  %4435 = phi float [ %4425, %4406 ], [ %4378, %4377 ]
  %4436 = phi float [ %4426, %4406 ], [ %4379, %4377 ]
  %4437 = phi float [ %4427, %4406 ], [ %4380, %4377 ]
  %4438 = phi float [ %4431, %4406 ], [ %4381, %4377 ]
  %4439 = phi float [ %4432, %4406 ], [ %4382, %4377 ]
  %4440 = phi float [ %4433, %4406 ], [ %4383, %4377 ]
  %4441 = add nuw i32 %4384, 1
  %4442 = icmp eq i32 %4441, %4366
  br i1 %4442, label %4443, label %4377

; <label>:4443                                    ; preds = %4434
  br label %4444

; <label>:4444                                    ; preds = %4443, %4307
  %4445 = phi float [ 0.000000e+00, %4307 ], [ %4435, %4443 ]
  %4446 = phi float [ 0.000000e+00, %4307 ], [ %4436, %4443 ]
  %4447 = phi float [ 0.000000e+00, %4307 ], [ %4437, %4443 ]
  %4448 = phi float [ 0.000000e+00, %4307 ], [ %4438, %4443 ]
  %4449 = phi float [ 0.000000e+00, %4307 ], [ %4439, %4443 ]
  %4450 = phi float [ 0.000000e+00, %4307 ], [ %4440, %4443 ]
  %4451 = fadd fast float %4448, %4445
  %4452 = fmul fast float %4451, 0x3F847AE140000000
  %4453 = fadd fast float %4449, %4446
  %4454 = fmul fast float %4453, 0x3F847AE140000000
  %4455 = fadd fast float %4450, %4447
  %4456 = fmul fast float %4455, 0x3F847AE140000000
  br label %4457

; <label>:4457                                    ; preds = %4444, %4241, %4186, %4183, %4154, %4116
  %4458 = phi float [ %4168, %4154 ], [ -1.310720e+05, %4116 ], [ %4360, %4444 ], [ -1.310720e+05, %4186 ], [ -1.310720e+05, %4241 ], [ -1.310720e+05, %4183 ]
  %4459 = phi float [ %4178, %4154 ], [ 0.000000e+00, %4116 ], [ %4452, %4444 ], [ 0.000000e+00, %4186 ], [ 0.000000e+00, %4241 ], [ 0.000000e+00, %4183 ]
  %4460 = phi float [ %4180, %4154 ], [ 0.000000e+00, %4116 ], [ %4454, %4444 ], [ 0.000000e+00, %4186 ], [ 0.000000e+00, %4241 ], [ 0.000000e+00, %4183 ]
  %4461 = phi float [ %4182, %4154 ], [ 0.000000e+00, %4116 ], [ %4456, %4444 ], [ 0.000000e+00, %4186 ], [ 0.000000e+00, %4241 ], [ 0.000000e+00, %4183 ]
  %4462 = phi i1 [ true, %4154 ], [ false, %4116 ], [ true, %4444 ], [ false, %4186 ], [ false, %4241 ], [ false, %4183 ]
  %4463 = and i32 %243, 3
  %4464 = icmp eq i32 %4463, 1
  %4465 = select i1 %4464, float 1.000000e+00, float 0.000000e+00
  %4466 = fsub fast float %4458, %207
  %4467 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4468 = select i1 %4462, float %4467, float 1.000000e+00
  %4469 = fmul fast float %4468, %4465
  %4470 = icmp eq i32 %4463, 3
  %4471 = select i1 %4470, float 1.000000e+00, float %4469
  %4472 = call float @dx.op.binary.f32(i32 35, float %4058, float %4471)  ; FMax(a,b)
  %4473 = fcmp fast olt float %4471, 1.000000e+00
  %4474 = fcmp uge float %78, 0.000000e+00
  %4475 = and i1 %4474, %4473
  br i1 %4475, label %4476, label %4486

; <label>:4476                                    ; preds = %4457
  %4477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %53, float %78, float %79, float %80, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4478 = extractvalue %dx.types.ResRet.f32 %4477, 0
  %4479 = extractvalue %dx.types.ResRet.f32 %4477, 1
  %4480 = extractvalue %dx.types.ResRet.f32 %4477, 2
  %4481 = fadd fast float %4478, %4472
  %4482 = fcmp ule float %77, 0.000000e+00
  %4483 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4484 = select i1 %4482, float %4483, float 1.000000e+00
  %4485 = fmul fast float %4484, %4480
  br label %4486

; <label>:4486                                    ; preds = %4476, %4457
  %4487 = phi float [ %4481, %4476 ], [ %4472, %4457 ]
  %4488 = phi float [ %4479, %4476 ], [ 0.000000e+00, %4457 ]
  %4489 = phi float [ %4485, %4476 ], [ 0.000000e+00, %4457 ]
  %4490 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4491 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4492 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4493 = fcmp fast une float %4491, 0.000000e+00
  %4494 = fcmp fast une float %4492, 0.000000e+00
  %4495 = or i1 %4493, %4494
  br i1 %4495, label %4496, label %5055

; <label>:4496                                    ; preds = %4486
  br i1 %4493, label %4497, label %4770

; <label>:4497                                    ; preds = %4496
  %4498 = call float @dx.op.unary.f32(i32 23, float %4055)  ; Log(value)
  %4499 = fmul fast float %4498, 4.000000e+00
  %4500 = call float @dx.op.unary.f32(i32 21, float %4499)  ; Exp(value)
  %4501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4502 = extractvalue %dx.types.CBufRet.f32 %4501, 0
  %4503 = fmul fast float %4502, %64
  %4504 = fmul fast float %4502, %65
  %4505 = fmul fast float %4502, %66
  %4506 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4507 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4508 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %4509 = call float @dx.op.unary.f32(i32 23, float %4506)  ; Log(value)
  %4510 = call float @dx.op.unary.f32(i32 23, float %4507)  ; Log(value)
  %4511 = call float @dx.op.unary.f32(i32 23, float %4508)  ; Log(value)
  %4512 = fmul fast float %4509, 4.000000e+00
  %4513 = fmul fast float %4510, 4.000000e+00
  %4514 = fmul fast float %4511, 4.000000e+00
  %4515 = call float @dx.op.unary.f32(i32 21, float %4512)  ; Exp(value)
  %4516 = call float @dx.op.unary.f32(i32 21, float %4513)  ; Exp(value)
  %4517 = call float @dx.op.unary.f32(i32 21, float %4514)  ; Exp(value)
  %4518 = fadd fast float %4516, %4515
  %4519 = fadd fast float %4518, %4517
  %4520 = fdiv fast float 1.000000e+00, %4519
  %4521 = fmul fast float %4520, %4515
  %4522 = fcmp fast ogt float %74, 0.000000e+00
  %4523 = fcmp fast ogt float %75, 0.000000e+00
  %4524 = fcmp fast ogt float %76, 0.000000e+00
  %4525 = fcmp fast olt float %74, 0.000000e+00
  %4526 = fcmp fast olt float %75, 0.000000e+00
  %4527 = fcmp fast olt float %76, 0.000000e+00
  %4528 = zext i1 %4522 to i32
  %4529 = zext i1 %4523 to i32
  %4530 = zext i1 %4524 to i32
  %4531 = zext i1 %4525 to i32
  %4532 = zext i1 %4526 to i32
  %4533 = zext i1 %4527 to i32
  %4534 = sub nsw i32 %4528, %4531
  %4535 = sub nsw i32 %4529, %4532
  %4536 = sub nsw i32 %4530, %4533
  %4537 = call float @dx.op.unary.f32(i32 83, float %4503)  ; DerivCoarseX(value)
  %4538 = call float @dx.op.unary.f32(i32 83, float %4504)  ; DerivCoarseX(value)
  %4539 = call float @dx.op.unary.f32(i32 83, float %4505)  ; DerivCoarseX(value)
  %4540 = call float @dx.op.unary.f32(i32 84, float %4503)  ; DerivCoarseY(value)
  %4541 = call float @dx.op.unary.f32(i32 84, float %4504)  ; DerivCoarseY(value)
  %4542 = call float @dx.op.unary.f32(i32 84, float %4505)  ; DerivCoarseY(value)
  %4543 = fcmp fast ole float %275, %4521
  %4544 = fmul fast float %4520, %4518
  %4545 = fcmp fast ole float %275, %4544
  %4546 = select i1 %4545, float %4505, float %4503
  %4547 = select i1 %4545, float %4503, float %4504
  %4548 = select i1 %4543, float %4504, float %4546
  %4549 = select i1 %4543, float %4505, float %4547
  %4550 = select i1 %4545, float %4539, float %4537
  %4551 = select i1 %4545, float %4537, float %4538
  %4552 = select i1 %4543, float %4538, float %4550
  %4553 = select i1 %4543, float %4539, float %4551
  %4554 = select i1 %4545, float %4542, float %4540
  %4555 = select i1 %4545, float %4540, float %4541
  %4556 = select i1 %4543, float %4541, float %4554
  %4557 = select i1 %4543, float %4542, float %4555
  %4558 = call float @dx.op.unary.f32(i32 27, float %4548)  ; Round_ni(value)
  %4559 = call float @dx.op.unary.f32(i32 27, float %4549)  ; Round_ni(value)
  %4560 = fptosi float %4558 to i32
  %4561 = fptosi float %4559 to i32
  %4562 = xor i32 %4561, %4560
  %4563 = sitofp i32 %4562 to float
  %4564 = fptosi float %4563 to i32
  %4565 = sitofp i32 %4564 to float
  %4566 = fmul fast float %4565, 0x3FE3C6EF40000000
  %4567 = frem fast float %4558, 2.560000e+02
  %4568 = frem fast float %4559, 2.560000e+02
  %4569 = fptoui float %4567 to i32
  %4570 = fptoui float %4568 to i32
  %4571 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4569, i32 %4570, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4572 = extractvalue %dx.types.ResRet.f32 %4571, 0
  %4573 = extractvalue %dx.types.ResRet.f32 %4571, 1
  %4574 = extractvalue %dx.types.ResRet.f32 %4571, 2
  %4575 = fadd fast float %4572, %4566
  %4576 = fadd fast float %4573, %4566
  %4577 = fadd fast float %4574, %4566
  %4578 = call float @dx.op.unary.f32(i32 22, float %4575)  ; Frc(value)
  %4579 = call float @dx.op.unary.f32(i32 22, float %4576)  ; Frc(value)
  %4580 = call float @dx.op.unary.f32(i32 22, float %4577)  ; Frc(value)
  %4581 = fmul fast float %4580, 0x401921FB60000000
  %4582 = call float @dx.op.unary.f32(i32 13, float %4581)  ; Sin(value)
  %4583 = call float @dx.op.unary.f32(i32 12, float %4581)  ; Cos(value)
  %4584 = fsub fast float -0.000000e+00, %4583
  %4585 = fmul fast float %4583, %4548
  %4586 = call float @dx.op.tertiary.f32(i32 46, float %4582, float %4549, float %4585)  ; FMad(a,b,c)
  %4587 = fmul fast float %4582, %4548
  %4588 = call float @dx.op.tertiary.f32(i32 46, float %4584, float %4549, float %4587)  ; FMad(a,b,c)
  %4589 = fadd fast float %4586, %4578
  %4590 = fadd fast float %4588, %4579
  %4591 = extractvalue %dx.types.CBufRet.f32 %4501, 3
  %4592 = bitcast float %4591 to i32
  %4593 = icmp eq i32 %4592, 0
  br i1 %4593, label %4632, label %4594

; <label>:4594                                    ; preds = %4497
  %4595 = add i32 %4592, 0
  %4596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4597 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4596, %dx.types.Handle %115, float %4589, float %4590, float undef, float undef, i32 0, i32 0, i32 undef, float %4552, float %4553, float undef, float %4556, float %4557, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4600 = extractvalue %dx.types.CBufRet.f32 %4599, 1
  %4601 = extractvalue %dx.types.CBufRet.f32 %4599, 2
  %4602 = fsub fast float 1.000000e+00, %4491
  %4603 = call float @dx.op.binary.f32(i32 35, float %4602, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4604 = bitcast float %4491 to i32
  %4605 = sitofp i32 %4604 to float
  %4606 = fadd fast float %4605, 0xC1CFBF8940000000
  %4607 = fmul fast float %4601, %4606
  %4608 = fadd fast float %4607, 0x41CFBF8940000000
  %4609 = fptosi float %4608 to i32
  %4610 = bitcast i32 %4609 to float
  %4611 = bitcast float %4603 to i32
  %4612 = sitofp i32 %4611 to float
  %4613 = fadd fast float %4612, 0xC1CFBF8940000000
  %4614 = fmul fast float %4613, %4601
  %4615 = fadd fast float %4614, 0x41CFBF8940000000
  %4616 = fptosi float %4615 to i32
  %4617 = bitcast i32 %4616 to float
  %4618 = fmul fast float %4610, %4600
  %4619 = fmul fast float %4617, %4600
  %4620 = fsub fast float %4603, %4618
  %4621 = fadd fast float %4619, %4603
  %4622 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4623 = call float @dx.op.unary.f32(i32 7, float %4621)  ; Saturate(value)
  %4624 = fsub fast float %4598, %4622
  %4625 = fsub fast float %4623, %4622
  %4626 = bitcast float %4625 to i32
  %4627 = sub nsw i32 2129859010, %4626
  %4628 = bitcast i32 %4627 to float
  %4629 = fmul fast float %4628, %4624
  %4630 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4631 = fcmp fast olt float %4630, 0x3F70101020000000
  br i1 %4631, label %4770, label %4632

; <label>:4632                                    ; preds = %4594, %4497
  %4633 = phi float [ %4630, %4594 ], [ %4491, %4497 ]
  %4634 = fmul fast float %4633, %4500
  %4635 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4636 = extractvalue %dx.types.CBufRet.i32 %4635, 1
  %4637 = extractvalue %dx.types.CBufRet.i32 %4635, 0
  %4638 = add i32 %4637, 0
  %4639 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4638, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4640 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4639, %dx.types.Handle %114, float %4589, float %4590, float undef, float undef, i32 0, i32 0, i32 undef, float %4552, float %4553, float undef, float %4556, float %4557, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4641 = extractvalue %dx.types.ResRet.f32 %4640, 0
  %4642 = extractvalue %dx.types.ResRet.f32 %4640, 1
  %4643 = extractvalue %dx.types.ResRet.f32 %4640, 2
  %4644 = extractvalue %dx.types.ResRet.f32 %4640, 3
  %4645 = and i32 %4636, 255
  %4646 = uitofp i32 %4645 to float
  %4647 = lshr i32 %4636, 8
  %4648 = and i32 %4647, 255
  %4649 = uitofp i32 %4648 to float
  %4650 = fmul fast float %4644, %4646
  %4651 = fadd fast float %4650, %4649
  %4652 = fmul fast float %4651, 0x3F70101000000000
  %4653 = fadd fast float %4652, 0xBFB99999A0000000
  %4654 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4655 = fmul fast float %4654, 0x3FF1C71C80000000
  %4656 = call float @dx.op.binary.f32(i32 36, float %4652, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4657 = fsub fast float 1.000000e+00, %4655
  %4658 = call float @dx.op.unary.f32(i32 7, float %4657)  ; Saturate(value)
  %4659 = fmul fast float %4658, %4641
  %4660 = fmul fast float %4658, %4642
  %4661 = fmul fast float %4658, %4643
  %4662 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4663 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4664 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4665 = fmul fast float %4655, %4641
  %4666 = fmul fast float %4655, %4642
  %4667 = fmul fast float %4655, %4643
  %4668 = fadd fast float %4665, %4656
  %4669 = fadd fast float %4666, %4656
  %4670 = fadd fast float %4667, %4656
  %4671 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4672 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4673 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4674 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4675 = extractvalue %dx.types.CBufRet.i32 %4674, 3
  %4676 = extractvalue %dx.types.CBufRet.i32 %4674, 2
  %4677 = add i32 %4676, 0
  %4678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4677, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4679 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4678, %dx.types.Handle %114, float %4589, float %4590, float undef, float undef, i32 0, i32 0, i32 undef, float %4552, float %4553, float undef, float %4556, float %4557, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4680 = extractvalue %dx.types.ResRet.f32 %4679, 0
  %4681 = extractvalue %dx.types.ResRet.f32 %4679, 1
  %4682 = extractvalue %dx.types.ResRet.f32 %4679, 2
  %4683 = extractvalue %dx.types.ResRet.f32 %4679, 3
  %4684 = and i32 %4675, 255
  %4685 = uitofp i32 %4684 to float
  %4686 = lshr i32 %4675, 8
  %4687 = and i32 %4686, 255
  %4688 = uitofp i32 %4687 to float
  %4689 = lshr i32 %4675, 16
  %4690 = and i32 %4689, 255
  %4691 = uitofp i32 %4690 to float
  %4692 = fmul fast float %4691, 0x3F70101000000000
  %4693 = fmul fast float %4680, %4685
  %4694 = fadd fast float %4693, %4688
  %4695 = fmul fast float %4694, 0x3F70101000000000
  %4696 = fadd fast float %4681, -5.000000e-01
  %4697 = fadd fast float %4683, -5.000000e-01
  %4698 = fmul fast float %4696, %4692
  %4699 = fmul fast float %4697, %4692
  %4700 = fadd fast float %4698, 5.000000e-01
  %4701 = fadd fast float %4699, 5.000000e-01
  %4702 = fmul fast float %4700, 2.000000e+00
  %4703 = fadd fast float %4702, -1.000000e+00
  %4704 = fmul fast float %4701, 2.000000e+00
  %4705 = fadd fast float %4704, -1.000000e+00
  %4706 = fadd fast float %4703, %4705
  %4707 = fmul fast float %4706, 5.000000e-01
  %4708 = fsub fast float %4703, %4705
  %4709 = fmul fast float %4708, 5.000000e-01
  %4710 = call float @dx.op.unary.f32(i32 6, float %4707)  ; FAbs(value)
  %4711 = fsub fast float 1.000000e+00, %4710
  %4712 = call float @dx.op.unary.f32(i32 6, float %4709)  ; FAbs(value)
  %4713 = fsub fast float %4711, %4712
  %4714 = call float @dx.op.dot3.f32(i32 55, float %4707, float %4709, float %4713, float %4707, float %4709, float %4713)  ; Dot3(ax,ay,az,bx,by,bz)
  %4715 = call float @dx.op.unary.f32(i32 25, float %4714)  ; Rsqrt(value)
  %4716 = fmul fast float %4707, %4715
  %4717 = fmul fast float %4709, %4715
  %4718 = select i1 %4545, i32 %4535, i32 %4536
  %4719 = select i1 %4543, i32 %4534, i32 %4718
  %4720 = sitofp i32 %4719 to float
  %4721 = fmul fast float %4713, %4720
  %4722 = fmul fast float %4721, %4715
  %4723 = select i1 %4545, float %4722, float %4717
  %4724 = select i1 %4545, float %4717, float %4722
  %4725 = select i1 %4543, float %4722, float %4716
  %4726 = select i1 %4543, float %4717, float %4723
  %4727 = select i1 %4543, float %4716, float %4724
  %4728 = fsub fast float %4662, %4095
  %4729 = fsub fast float %4663, %4096
  %4730 = fsub fast float %4664, %4097
  %4731 = fmul fast float %4728, %4634
  %4732 = fmul fast float %4729, %4634
  %4733 = fmul fast float %4730, %4634
  %4734 = fadd fast float %4731, %4095
  %4735 = fadd fast float %4732, %4096
  %4736 = fadd fast float %4733, %4097
  %4737 = fsub fast float %4671, %4080
  %4738 = fsub fast float %4672, %4081
  %4739 = fsub fast float %4673, %4082
  %4740 = fmul fast float %4737, %4634
  %4741 = fmul fast float %4738, %4634
  %4742 = fmul fast float %4739, %4634
  %4743 = fadd fast float %4740, %4080
  %4744 = fadd fast float %4741, %4081
  %4745 = fadd fast float %4742, %4082
  %4746 = fadd fast float %4725, %4043
  %4747 = fadd fast float %4726, %4044
  %4748 = fadd fast float %4727, %4045
  %4749 = call float @dx.op.dot3.f32(i32 55, float %4746, float %4747, float %4748, float %4746, float %4747, float %4748)  ; Dot3(ax,ay,az,bx,by,bz)
  %4750 = call float @dx.op.unary.f32(i32 25, float %4749)  ; Rsqrt(value)
  %4751 = fmul fast float %4746, %4750
  %4752 = fmul fast float %4747, %4750
  %4753 = fmul fast float %4748, %4750
  %4754 = fsub fast float %4751, %4043
  %4755 = fsub fast float %4752, %4044
  %4756 = fsub fast float %4753, %4045
  %4757 = fmul fast float %4754, %4634
  %4758 = fmul fast float %4755, %4634
  %4759 = fmul fast float %4756, %4634
  %4760 = fadd fast float %4757, %4043
  %4761 = fadd fast float %4758, %4044
  %4762 = fadd fast float %4759, %4045
  %4763 = call float @dx.op.binary.f32(i32 36, float %4055, float %4682)  ; FMin(a,b)
  %4764 = fsub fast float %4763, %4055
  %4765 = fmul fast float %4764, %4634
  %4766 = fadd fast float %4765, %4055
  %4767 = fsub fast float %4695, %4083
  %4768 = fmul fast float %4767, %4634
  %4769 = fadd fast float %4768, %4083
  br label %4770

; <label>:4770                                    ; preds = %4632, %4594, %4496
  %4771 = phi float [ %4734, %4632 ], [ %4095, %4594 ], [ %4095, %4496 ]
  %4772 = phi float [ %4735, %4632 ], [ %4096, %4594 ], [ %4096, %4496 ]
  %4773 = phi float [ %4736, %4632 ], [ %4097, %4594 ], [ %4097, %4496 ]
  %4774 = phi float [ %4743, %4632 ], [ %4080, %4594 ], [ %4080, %4496 ]
  %4775 = phi float [ %4744, %4632 ], [ %4081, %4594 ], [ %4081, %4496 ]
  %4776 = phi float [ %4745, %4632 ], [ %4082, %4594 ], [ %4082, %4496 ]
  %4777 = phi float [ %4760, %4632 ], [ %4043, %4594 ], [ %4043, %4496 ]
  %4778 = phi float [ %4761, %4632 ], [ %4044, %4594 ], [ %4044, %4496 ]
  %4779 = phi float [ %4762, %4632 ], [ %4045, %4594 ], [ %4045, %4496 ]
  %4780 = phi float [ %4769, %4632 ], [ %4083, %4594 ], [ %4083, %4496 ]
  %4781 = phi float [ %4766, %4632 ], [ %4055, %4594 ], [ %4055, %4496 ]
  br i1 %4494, label %4782, label %5055

; <label>:4782                                    ; preds = %4770
  %4783 = call float @dx.op.unary.f32(i32 23, float %4781)  ; Log(value)
  %4784 = fmul fast float %4783, 4.000000e+00
  %4785 = call float @dx.op.unary.f32(i32 21, float %4784)  ; Exp(value)
  %4786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.f32 %4786, 0
  %4788 = fmul fast float %4787, %64
  %4789 = fmul fast float %4787, %65
  %4790 = fmul fast float %4787, %66
  %4791 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4792 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4793 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %4794 = call float @dx.op.unary.f32(i32 23, float %4791)  ; Log(value)
  %4795 = call float @dx.op.unary.f32(i32 23, float %4792)  ; Log(value)
  %4796 = call float @dx.op.unary.f32(i32 23, float %4793)  ; Log(value)
  %4797 = fmul fast float %4794, 4.000000e+00
  %4798 = fmul fast float %4795, 4.000000e+00
  %4799 = fmul fast float %4796, 4.000000e+00
  %4800 = call float @dx.op.unary.f32(i32 21, float %4797)  ; Exp(value)
  %4801 = call float @dx.op.unary.f32(i32 21, float %4798)  ; Exp(value)
  %4802 = call float @dx.op.unary.f32(i32 21, float %4799)  ; Exp(value)
  %4803 = fadd fast float %4801, %4800
  %4804 = fadd fast float %4803, %4802
  %4805 = fdiv fast float 1.000000e+00, %4804
  %4806 = fmul fast float %4805, %4800
  %4807 = fcmp fast ogt float %74, 0.000000e+00
  %4808 = fcmp fast ogt float %75, 0.000000e+00
  %4809 = fcmp fast ogt float %76, 0.000000e+00
  %4810 = fcmp fast olt float %74, 0.000000e+00
  %4811 = fcmp fast olt float %75, 0.000000e+00
  %4812 = fcmp fast olt float %76, 0.000000e+00
  %4813 = zext i1 %4807 to i32
  %4814 = zext i1 %4808 to i32
  %4815 = zext i1 %4809 to i32
  %4816 = zext i1 %4810 to i32
  %4817 = zext i1 %4811 to i32
  %4818 = zext i1 %4812 to i32
  %4819 = sub nsw i32 %4813, %4816
  %4820 = sub nsw i32 %4814, %4817
  %4821 = sub nsw i32 %4815, %4818
  %4822 = call float @dx.op.unary.f32(i32 83, float %4788)  ; DerivCoarseX(value)
  %4823 = call float @dx.op.unary.f32(i32 83, float %4789)  ; DerivCoarseX(value)
  %4824 = call float @dx.op.unary.f32(i32 83, float %4790)  ; DerivCoarseX(value)
  %4825 = call float @dx.op.unary.f32(i32 84, float %4788)  ; DerivCoarseY(value)
  %4826 = call float @dx.op.unary.f32(i32 84, float %4789)  ; DerivCoarseY(value)
  %4827 = call float @dx.op.unary.f32(i32 84, float %4790)  ; DerivCoarseY(value)
  %4828 = fcmp fast ole float %275, %4806
  %4829 = fmul fast float %4805, %4803
  %4830 = fcmp fast ole float %275, %4829
  %4831 = select i1 %4830, float %4790, float %4788
  %4832 = select i1 %4830, float %4788, float %4789
  %4833 = select i1 %4828, float %4789, float %4831
  %4834 = select i1 %4828, float %4790, float %4832
  %4835 = select i1 %4830, float %4824, float %4822
  %4836 = select i1 %4830, float %4822, float %4823
  %4837 = select i1 %4828, float %4823, float %4835
  %4838 = select i1 %4828, float %4824, float %4836
  %4839 = select i1 %4830, float %4827, float %4825
  %4840 = select i1 %4830, float %4825, float %4826
  %4841 = select i1 %4828, float %4826, float %4839
  %4842 = select i1 %4828, float %4827, float %4840
  %4843 = call float @dx.op.unary.f32(i32 27, float %4833)  ; Round_ni(value)
  %4844 = call float @dx.op.unary.f32(i32 27, float %4834)  ; Round_ni(value)
  %4845 = fptosi float %4843 to i32
  %4846 = fptosi float %4844 to i32
  %4847 = xor i32 %4846, %4845
  %4848 = sitofp i32 %4847 to float
  %4849 = fptosi float %4848 to i32
  %4850 = sitofp i32 %4849 to float
  %4851 = fmul fast float %4850, 0x3FE3C6EF40000000
  %4852 = frem fast float %4843, 2.560000e+02
  %4853 = frem fast float %4844, 2.560000e+02
  %4854 = fptoui float %4852 to i32
  %4855 = fptoui float %4853 to i32
  %4856 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4854, i32 %4855, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4857 = extractvalue %dx.types.ResRet.f32 %4856, 0
  %4858 = extractvalue %dx.types.ResRet.f32 %4856, 1
  %4859 = extractvalue %dx.types.ResRet.f32 %4856, 2
  %4860 = fadd fast float %4857, %4851
  %4861 = fadd fast float %4858, %4851
  %4862 = fadd fast float %4859, %4851
  %4863 = call float @dx.op.unary.f32(i32 22, float %4860)  ; Frc(value)
  %4864 = call float @dx.op.unary.f32(i32 22, float %4861)  ; Frc(value)
  %4865 = call float @dx.op.unary.f32(i32 22, float %4862)  ; Frc(value)
  %4866 = fmul fast float %4865, 0x401921FB60000000
  %4867 = call float @dx.op.unary.f32(i32 13, float %4866)  ; Sin(value)
  %4868 = call float @dx.op.unary.f32(i32 12, float %4866)  ; Cos(value)
  %4869 = fsub fast float -0.000000e+00, %4868
  %4870 = fmul fast float %4868, %4833
  %4871 = call float @dx.op.tertiary.f32(i32 46, float %4867, float %4834, float %4870)  ; FMad(a,b,c)
  %4872 = fmul fast float %4867, %4833
  %4873 = call float @dx.op.tertiary.f32(i32 46, float %4869, float %4834, float %4872)  ; FMad(a,b,c)
  %4874 = fadd fast float %4871, %4863
  %4875 = fadd fast float %4873, %4864
  %4876 = extractvalue %dx.types.CBufRet.f32 %4786, 3
  %4877 = bitcast float %4876 to i32
  %4878 = icmp eq i32 %4877, 0
  br i1 %4878, label %4917, label %4879

; <label>:4879                                    ; preds = %4782
  %4880 = add i32 %4877, 0
  %4881 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4880, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4882 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4881, %dx.types.Handle %115, float %4874, float %4875, float undef, float undef, i32 0, i32 0, i32 undef, float %4837, float %4838, float undef, float %4841, float %4842, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4883 = extractvalue %dx.types.ResRet.f32 %4882, 0
  %4884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = extractvalue %dx.types.CBufRet.f32 %4884, 1
  %4886 = extractvalue %dx.types.CBufRet.f32 %4884, 2
  %4887 = fsub fast float 1.000000e+00, %4492
  %4888 = call float @dx.op.binary.f32(i32 35, float %4887, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4889 = bitcast float %4492 to i32
  %4890 = sitofp i32 %4889 to float
  %4891 = fadd fast float %4890, 0xC1CFBF8940000000
  %4892 = fmul fast float %4886, %4891
  %4893 = fadd fast float %4892, 0x41CFBF8940000000
  %4894 = fptosi float %4893 to i32
  %4895 = bitcast i32 %4894 to float
  %4896 = bitcast float %4888 to i32
  %4897 = sitofp i32 %4896 to float
  %4898 = fadd fast float %4897, 0xC1CFBF8940000000
  %4899 = fmul fast float %4898, %4886
  %4900 = fadd fast float %4899, 0x41CFBF8940000000
  %4901 = fptosi float %4900 to i32
  %4902 = bitcast i32 %4901 to float
  %4903 = fmul fast float %4895, %4885
  %4904 = fmul fast float %4902, %4885
  %4905 = fsub fast float %4888, %4903
  %4906 = fadd fast float %4904, %4888
  %4907 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4908 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4909 = fsub fast float %4883, %4907
  %4910 = fsub fast float %4908, %4907
  %4911 = bitcast float %4910 to i32
  %4912 = sub nsw i32 2129859010, %4911
  %4913 = bitcast i32 %4912 to float
  %4914 = fmul fast float %4913, %4909
  %4915 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4916 = fcmp fast olt float %4915, 0x3F70101020000000
  br i1 %4916, label %5055, label %4917

; <label>:4917                                    ; preds = %4879, %4782
  %4918 = phi float [ %4915, %4879 ], [ %4492, %4782 ]
  %4919 = fmul fast float %4918, %4785
  %4920 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4921 = extractvalue %dx.types.CBufRet.i32 %4920, 1
  %4922 = extractvalue %dx.types.CBufRet.i32 %4920, 0
  %4923 = add i32 %4922, 0
  %4924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4923, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4925 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4924, %dx.types.Handle %114, float %4874, float %4875, float undef, float undef, i32 0, i32 0, i32 undef, float %4837, float %4838, float undef, float %4841, float %4842, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4926 = extractvalue %dx.types.ResRet.f32 %4925, 0
  %4927 = extractvalue %dx.types.ResRet.f32 %4925, 1
  %4928 = extractvalue %dx.types.ResRet.f32 %4925, 2
  %4929 = extractvalue %dx.types.ResRet.f32 %4925, 3
  %4930 = and i32 %4921, 255
  %4931 = uitofp i32 %4930 to float
  %4932 = lshr i32 %4921, 8
  %4933 = and i32 %4932, 255
  %4934 = uitofp i32 %4933 to float
  %4935 = fmul fast float %4929, %4931
  %4936 = fadd fast float %4935, %4934
  %4937 = fmul fast float %4936, 0x3F70101000000000
  %4938 = fadd fast float %4937, 0xBFB99999A0000000
  %4939 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4940 = fmul fast float %4939, 0x3FF1C71C80000000
  %4941 = call float @dx.op.binary.f32(i32 36, float %4937, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4942 = fsub fast float 1.000000e+00, %4940
  %4943 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4944 = fmul fast float %4943, %4926
  %4945 = fmul fast float %4943, %4927
  %4946 = fmul fast float %4943, %4928
  %4947 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4948 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4949 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4950 = fmul fast float %4940, %4926
  %4951 = fmul fast float %4940, %4927
  %4952 = fmul fast float %4940, %4928
  %4953 = fadd fast float %4950, %4941
  %4954 = fadd fast float %4951, %4941
  %4955 = fadd fast float %4952, %4941
  %4956 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %4957 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4958 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4959 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.i32 %4959, 3
  %4961 = extractvalue %dx.types.CBufRet.i32 %4959, 2
  %4962 = add i32 %4961, 0
  %4963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4964 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4963, %dx.types.Handle %114, float %4874, float %4875, float undef, float undef, i32 0, i32 0, i32 undef, float %4837, float %4838, float undef, float %4841, float %4842, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4965 = extractvalue %dx.types.ResRet.f32 %4964, 0
  %4966 = extractvalue %dx.types.ResRet.f32 %4964, 1
  %4967 = extractvalue %dx.types.ResRet.f32 %4964, 2
  %4968 = extractvalue %dx.types.ResRet.f32 %4964, 3
  %4969 = and i32 %4960, 255
  %4970 = uitofp i32 %4969 to float
  %4971 = lshr i32 %4960, 8
  %4972 = and i32 %4971, 255
  %4973 = uitofp i32 %4972 to float
  %4974 = lshr i32 %4960, 16
  %4975 = and i32 %4974, 255
  %4976 = uitofp i32 %4975 to float
  %4977 = fmul fast float %4976, 0x3F70101000000000
  %4978 = fmul fast float %4965, %4970
  %4979 = fadd fast float %4978, %4973
  %4980 = fmul fast float %4979, 0x3F70101000000000
  %4981 = fadd fast float %4966, -5.000000e-01
  %4982 = fadd fast float %4968, -5.000000e-01
  %4983 = fmul fast float %4981, %4977
  %4984 = fmul fast float %4982, %4977
  %4985 = fadd fast float %4983, 5.000000e-01
  %4986 = fadd fast float %4984, 5.000000e-01
  %4987 = fmul fast float %4985, 2.000000e+00
  %4988 = fadd fast float %4987, -1.000000e+00
  %4989 = fmul fast float %4986, 2.000000e+00
  %4990 = fadd fast float %4989, -1.000000e+00
  %4991 = fadd fast float %4988, %4990
  %4992 = fmul fast float %4991, 5.000000e-01
  %4993 = fsub fast float %4988, %4990
  %4994 = fmul fast float %4993, 5.000000e-01
  %4995 = call float @dx.op.unary.f32(i32 6, float %4992)  ; FAbs(value)
  %4996 = fsub fast float 1.000000e+00, %4995
  %4997 = call float @dx.op.unary.f32(i32 6, float %4994)  ; FAbs(value)
  %4998 = fsub fast float %4996, %4997
  %4999 = call float @dx.op.dot3.f32(i32 55, float %4992, float %4994, float %4998, float %4992, float %4994, float %4998)  ; Dot3(ax,ay,az,bx,by,bz)
  %5000 = call float @dx.op.unary.f32(i32 25, float %4999)  ; Rsqrt(value)
  %5001 = fmul fast float %4992, %5000
  %5002 = fmul fast float %4994, %5000
  %5003 = select i1 %4830, i32 %4820, i32 %4821
  %5004 = select i1 %4828, i32 %4819, i32 %5003
  %5005 = sitofp i32 %5004 to float
  %5006 = fmul fast float %4998, %5005
  %5007 = fmul fast float %5006, %5000
  %5008 = select i1 %4830, float %5007, float %5002
  %5009 = select i1 %4830, float %5002, float %5007
  %5010 = select i1 %4828, float %5007, float %5001
  %5011 = select i1 %4828, float %5002, float %5008
  %5012 = select i1 %4828, float %5001, float %5009
  %5013 = fsub fast float %4947, %4771
  %5014 = fsub fast float %4948, %4772
  %5015 = fsub fast float %4949, %4773
  %5016 = fmul fast float %5013, %4919
  %5017 = fmul fast float %5014, %4919
  %5018 = fmul fast float %5015, %4919
  %5019 = fadd fast float %5016, %4771
  %5020 = fadd fast float %5017, %4772
  %5021 = fadd fast float %5018, %4773
  %5022 = fsub fast float %4956, %4774
  %5023 = fsub fast float %4957, %4775
  %5024 = fsub fast float %4958, %4776
  %5025 = fmul fast float %5022, %4919
  %5026 = fmul fast float %5023, %4919
  %5027 = fmul fast float %5024, %4919
  %5028 = fadd fast float %5025, %4774
  %5029 = fadd fast float %5026, %4775
  %5030 = fadd fast float %5027, %4776
  %5031 = fadd fast float %5010, %4777
  %5032 = fadd fast float %5011, %4778
  %5033 = fadd fast float %5012, %4779
  %5034 = call float @dx.op.dot3.f32(i32 55, float %5031, float %5032, float %5033, float %5031, float %5032, float %5033)  ; Dot3(ax,ay,az,bx,by,bz)
  %5035 = call float @dx.op.unary.f32(i32 25, float %5034)  ; Rsqrt(value)
  %5036 = fmul fast float %5031, %5035
  %5037 = fmul fast float %5032, %5035
  %5038 = fmul fast float %5033, %5035
  %5039 = fsub fast float %5036, %4777
  %5040 = fsub fast float %5037, %4778
  %5041 = fsub fast float %5038, %4779
  %5042 = fmul fast float %5039, %4919
  %5043 = fmul fast float %5040, %4919
  %5044 = fmul fast float %5041, %4919
  %5045 = fadd fast float %5042, %4777
  %5046 = fadd fast float %5043, %4778
  %5047 = fadd fast float %5044, %4779
  %5048 = call float @dx.op.binary.f32(i32 36, float %4781, float %4967)  ; FMin(a,b)
  %5049 = fsub fast float %5048, %4781
  %5050 = fmul fast float %5049, %4919
  %5051 = fadd fast float %5050, %4781
  %5052 = fsub fast float %4980, %4780
  %5053 = fmul fast float %5052, %4919
  %5054 = fadd fast float %5053, %4780
  br label %5055

; <label>:5055                                    ; preds = %4917, %4879, %4770, %4486
  %5056 = phi float [ %5019, %4917 ], [ %4771, %4879 ], [ %4771, %4770 ], [ %4095, %4486 ]
  %5057 = phi float [ %5020, %4917 ], [ %4772, %4879 ], [ %4772, %4770 ], [ %4096, %4486 ]
  %5058 = phi float [ %5021, %4917 ], [ %4773, %4879 ], [ %4773, %4770 ], [ %4097, %4486 ]
  %5059 = phi float [ %5028, %4917 ], [ %4774, %4879 ], [ %4774, %4770 ], [ %4080, %4486 ]
  %5060 = phi float [ %5029, %4917 ], [ %4775, %4879 ], [ %4775, %4770 ], [ %4081, %4486 ]
  %5061 = phi float [ %5030, %4917 ], [ %4776, %4879 ], [ %4776, %4770 ], [ %4082, %4486 ]
  %5062 = phi float [ %5045, %4917 ], [ %4777, %4879 ], [ %4777, %4770 ], [ %4043, %4486 ]
  %5063 = phi float [ %5046, %4917 ], [ %4778, %4879 ], [ %4778, %4770 ], [ %4044, %4486 ]
  %5064 = phi float [ %5047, %4917 ], [ %4779, %4879 ], [ %4779, %4770 ], [ %4045, %4486 ]
  %5065 = phi float [ %5054, %4917 ], [ %4780, %4879 ], [ %4780, %4770 ], [ %4083, %4486 ]
  %5066 = phi float [ %5051, %4917 ], [ %4781, %4879 ], [ %4781, %4770 ], [ %4055, %4486 ]
  %5067 = fcmp fast une float %4490, 0.000000e+00
  br i1 %5067, label %5068, label %5237

; <label>:5068                                    ; preds = %5055
  %5069 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %205, float %206, float %207)  ; Dot3(ax,ay,az,bx,by,bz)
  %5070 = call float @dx.op.unary.f32(i32 25, float %5069)  ; Rsqrt(value)
  %5071 = fmul fast float %205, %5070
  %5072 = fsub fast float -0.000000e+00, %5071
  %5073 = fmul fast float %206, %5070
  %5074 = fsub fast float -0.000000e+00, %5073
  %5075 = fmul fast float %207, %5070
  %5076 = fsub fast float -0.000000e+00, %5075
  %5077 = call float @dx.op.dot3.f32(i32 55, float %5072, float %5074, float %5076, float %125, float %126, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %5078 = fmul fast float %4490, 2.500000e+00
  %5079 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5080 = fmul fast float %4490, 0x4013FFFFE0000000
  %5081 = fadd fast float %5080, 0xBFFFFFFFE0000000
  %5082 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5083 = fmul fast float %4490, 0x4004000020000000
  %5084 = fadd fast float %5083, 0xBFF8000040000000
  %5085 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5086 = fmul fast float %4062, 1.000000e+01
  %5087 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5088 = fmul fast float %5087, 2.000000e+00
  %5089 = fsub fast float 3.000000e+00, %5088
  %5090 = fmul fast float %5087, %5087
  %5091 = fmul fast float %5090, %5089
  %5092 = fsub fast float 1.000000e+00, %5091
  %5093 = fsub fast float 0x3FE3333340000000, %5065
  %5094 = fmul fast float %5093, 0x400AAAAAA0000000
  %5095 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5096 = fmul fast float %5092, %5095
  %5097 = fmul fast float %5056, 0x3FEA2B8620000000
  %5098 = fmul fast float %5057, 0x3FEA2B8620000000
  %5099 = fmul fast float %5058, 0x3FEA2B8620000000
  %5100 = fadd fast float %5097, 0x3FC81DFBA0000000
  %5101 = fmul fast float %5100, %5056
  %5102 = fadd fast float %5101, 0x3F910E6020000000
  %5103 = fadd fast float %5098, 0x3FC81DFBA0000000
  %5104 = fmul fast float %5103, %5057
  %5105 = fadd fast float %5104, 0x3F910E6020000000
  %5106 = fadd fast float %5099, 0x3FC81DFBA0000000
  %5107 = fmul fast float %5106, %5058
  %5108 = fadd fast float %5107, 0x3F910E6020000000
  %5109 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5110 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5111 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5112 = fsub fast float %5109, %5056
  %5113 = fsub fast float %5110, %5057
  %5114 = fsub fast float %5111, %5058
  %5115 = fmul fast float %5112, %5079
  %5116 = fmul fast float %5115, %5096
  %5117 = fmul fast float %5113, %5079
  %5118 = fmul fast float %5117, %5096
  %5119 = fmul fast float %5114, %5079
  %5120 = fmul fast float %5119, %5096
  %5121 = fadd fast float %5116, %5056
  %5122 = fadd fast float %5118, %5057
  %5123 = fadd fast float %5120, %5058
  %5124 = fmul fast float %5066, %5066
  %5125 = fmul fast float %5124, %5124
  %5126 = fadd fast float %5082, 1.000000e+00
  %5127 = fsub fast float %5126, %5096
  %5128 = call float @dx.op.unary.f32(i32 7, float %5127)  ; Saturate(value)
  %5129 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = fsub fast float 1.000000e+00, %5125
  %5132 = call float @dx.op.binary.f32(i32 36, float %5128, float %5131)  ; FMin(a,b)
  %5133 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5134 = call float @dx.op.binary.f32(i32 35, float %5132, float %5133)  ; FMax(a,b)
  %5135 = fadd fast float %5130, 0xBFE4CCCCC0000000
  %5136 = fmul fast float %5135, 0x4006DB6DA0000000
  %5137 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5138 = fmul fast float %5137, 2.000000e+00
  %5139 = fsub fast float 3.000000e+00, %5138
  %5140 = bitcast float %5059 to i32
  %5141 = ashr i32 %5140, 1
  %5142 = add nsw i32 %5141, 532487669
  %5143 = bitcast i32 %5142 to float
  %5144 = fsub fast float 1.000000e+00, %5143
  %5145 = bitcast float %5144 to i32
  %5146 = sub nsw i32 2129859010, %5145
  %5147 = bitcast i32 %5146 to float
  %5148 = fmul fast float %5147, 2.000000e+00
  %5149 = bitcast float %5060 to i32
  %5150 = ashr i32 %5149, 1
  %5151 = add nsw i32 %5150, 532487669
  %5152 = bitcast i32 %5151 to float
  %5153 = fsub fast float 1.000000e+00, %5152
  %5154 = bitcast float %5153 to i32
  %5155 = sub nsw i32 2129859010, %5154
  %5156 = bitcast i32 %5155 to float
  %5157 = fmul fast float %5156, 2.000000e+00
  %5158 = bitcast float %5061 to i32
  %5159 = ashr i32 %5158, 1
  %5160 = add nsw i32 %5159, 532487669
  %5161 = bitcast i32 %5160 to float
  %5162 = fsub fast float 1.000000e+00, %5161
  %5163 = bitcast float %5162 to i32
  %5164 = sub nsw i32 2129859010, %5163
  %5165 = bitcast i32 %5164 to float
  %5166 = fmul fast float %5165, 2.000000e+00
  %5167 = fsub fast float 0x4002A9FBE0000000, %5148
  %5168 = fadd fast float %5148, 0x3FD54FDF00000000
  %5169 = bitcast float %5168 to i32
  %5170 = sub nsw i32 2129859010, %5169
  %5171 = bitcast i32 %5170 to float
  %5172 = fmul fast float %5171, %5167
  %5173 = fmul fast float %5172, %5172
  %5174 = fsub fast float 0x4002A9FBE0000000, %5157
  %5175 = fadd fast float %5157, 0x3FD54FDF00000000
  %5176 = bitcast float %5175 to i32
  %5177 = sub nsw i32 2129859010, %5176
  %5178 = bitcast i32 %5177 to float
  %5179 = fmul fast float %5178, %5174
  %5180 = fmul fast float %5179, %5179
  %5181 = fsub fast float 0x4002A9FBE0000000, %5166
  %5182 = fadd fast float %5166, 0x3FD54FDF00000000
  %5183 = bitcast float %5182 to i32
  %5184 = sub nsw i32 2129859010, %5183
  %5185 = bitcast i32 %5184 to float
  %5186 = fmul fast float %5185, %5181
  %5187 = fmul fast float %5186, %5186
  %5188 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5173)  ; FMax(a,b)
  %5189 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5180)  ; FMax(a,b)
  %5190 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5187)  ; FMax(a,b)
  %5191 = fsub fast float 1.000000e+00, %5077
  %5192 = fadd fast float %5191, %5092
  %5193 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5194 = fsub fast float 1.000000e+00, %4471
  %5195 = fmul fast float %5134, %5194
  %5196 = fmul fast float %5137, %5137
  %5197 = fmul fast float %5196, %5195
  %5198 = fmul fast float %5197, %5139
  %5199 = fmul fast float %5194, 0xBFE99999A0000000
  %5200 = fmul fast float %5199, %5079
  %5201 = fmul fast float %5200, %5096
  %5202 = fadd fast float %5201, 1.000000e+00
  %5203 = fadd fast float %5065, -1.000000e+00
  %5204 = fmul fast float %5202, %5203
  %5205 = fadd fast float %5204, 1.000000e+00
  %5206 = fsub fast float %5188, %5059
  %5207 = fsub fast float %5189, %5060
  %5208 = fsub fast float %5190, %5061
  %5209 = fmul fast float %5198, %5206
  %5210 = fmul fast float %5198, %5207
  %5211 = fmul fast float %5198, %5208
  %5212 = fadd fast float %5209, %5059
  %5213 = fadd fast float %5210, %5060
  %5214 = fadd fast float %5211, %5061
  %5215 = fsub fast float %125, %5062
  %5216 = fsub fast float %126, %5063
  %5217 = fsub fast float %127, %5064
  %5218 = fmul fast float %5198, %5215
  %5219 = fmul fast float %5198, %5216
  %5220 = fmul fast float %5198, %5217
  %5221 = fadd fast float %5218, %5062
  %5222 = fadd fast float %5219, %5063
  %5223 = fadd fast float %5220, %5064
  %5224 = fmul fast float %5198, %5193
  %5225 = call float @dx.op.unary.f32(i32 7, float %5205)  ; Saturate(value)
  %5226 = fsub fast float 1.000000e+00, %5225
  %5227 = fmul fast float %5224, %5226
  %5228 = fadd fast float %5227, %5225
  %5229 = fsub fast float 1.000000e+00, %5066
  %5230 = fmul fast float %5198, %5229
  %5231 = fadd fast float %5230, %5066
  %5232 = call float @dx.op.dot3.f32(i32 55, float %5221, float %5222, float %5223, float %5221, float %5222, float %5223)  ; Dot3(ax,ay,az,bx,by,bz)
  %5233 = call float @dx.op.unary.f32(i32 25, float %5232)  ; Rsqrt(value)
  %5234 = fmul fast float %5221, %5233
  %5235 = fmul fast float %5222, %5233
  %5236 = fmul fast float %5223, %5233
  br label %5237

; <label>:5237                                    ; preds = %5068, %5055
  %5238 = phi float [ %5121, %5068 ], [ %5056, %5055 ]
  %5239 = phi float [ %5122, %5068 ], [ %5057, %5055 ]
  %5240 = phi float [ %5123, %5068 ], [ %5058, %5055 ]
  %5241 = phi float [ %5212, %5068 ], [ %5059, %5055 ]
  %5242 = phi float [ %5213, %5068 ], [ %5060, %5055 ]
  %5243 = phi float [ %5214, %5068 ], [ %5061, %5055 ]
  %5244 = phi float [ %5234, %5068 ], [ %5062, %5055 ]
  %5245 = phi float [ %5235, %5068 ], [ %5063, %5055 ]
  %5246 = phi float [ %5236, %5068 ], [ %5064, %5055 ]
  %5247 = phi float [ %5228, %5068 ], [ %5065, %5055 ]
  %5248 = phi float [ %5231, %5068 ], [ %5066, %5055 ]
  %5249 = icmp eq i32 %62, 0
  br i1 %5249, label %5280, label %5250

; <label>:5250                                    ; preds = %5237
  %5251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5252 = extractvalue %dx.types.CBufRet.f32 %5251, 2
  %5253 = extractvalue %dx.types.CBufRet.f32 %5251, 3
  %5254 = fmul fast float %5252, %118
  %5255 = fmul fast float %5253, %119
  %5256 = fmul fast float %5254, 1.024000e+03
  %5257 = fmul fast float %5255, 1.024000e+03
  %5258 = fadd fast float %5256, -5.120000e+02
  %5259 = fadd fast float %5257, -5.120000e+02
  %5260 = fmul fast float %5254, 0x4081BEDF00000000
  %5261 = fadd fast float %5260, 0xC071BEDF00000000
  %5262 = call float @dx.op.unary.f32(i32 22, float %5261)  ; Frc(value)
  %5263 = fmul fast float %5258, %5262
  %5264 = fadd fast float %5263, %5259
  %5265 = fmul fast float %5255, 0x4073BEBE20000000
  %5266 = fadd fast float %5265, 0xC063BEBE20000000
  %5267 = call float @dx.op.unary.f32(i32 22, float %5266)  ; Frc(value)
  %5268 = fmul fast float %5259, %5267
  %5269 = fadd fast float %5268, %5258
  %5270 = fmul fast float %5264, %5269
  %5271 = call float @dx.op.unary.f32(i32 22, float %5270)  ; Frc(value)
  %5272 = add i32 %318, 12
  %5273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %5272, i32 undef)  ; BufferLoad(srv,index,wot)
  %5274 = extractvalue %dx.types.ResRet.i32 %5273, 0
  %5275 = and i32 %5274, 255
  %5276 = uitofp i32 %5275 to float
  %5277 = fmul fast float %5276, 0x3F70101020000000
  %5278 = fcmp fast olt float %5271, %5277
  br i1 %5278, label %5279, label %5280

; <label>:5279                                    ; preds = %5250
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5280

; <label>:5280                                    ; preds = %5279, %5250, %5237
  %5281 = fsub fast float -0.000000e+00, %207
  %5282 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %205, float %206, float %207)  ; Dot3(ax,ay,az,bx,by,bz)
  %5283 = call float @dx.op.unary.f32(i32 25, float %5282)  ; Rsqrt(value)
  %5284 = fmul fast float %5283, %205
  %5285 = fmul fast float %5283, %206
  %5286 = fmul fast float %5283, %207
  %5287 = fsub fast float -0.000000e+00, %5284
  %5288 = fsub fast float -0.000000e+00, %5285
  %5289 = fsub fast float -0.000000e+00, %5286
  %5290 = select i1 %264, float 0.000000e+00, float %5243
  %5291 = call float @dx.op.dot3.f32(i32 55, float %5244, float %5245, float %5246, float %5287, float %5288, float %5289)  ; Dot3(ax,ay,az,bx,by,bz)
  %5292 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5293 = call float @dx.op.dot3.f32(i32 55, float %5284, float %5285, float %5286, float %5244, float %5245, float %5246)  ; Dot3(ax,ay,az,bx,by,bz)
  %5294 = fmul fast float %5293, 2.000000e+00
  %5295 = fmul fast float %5294, %5244
  %5296 = fmul fast float %5294, %5245
  %5297 = fmul fast float %5294, %5246
  %5298 = fsub fast float %5284, %5295
  %5299 = fsub fast float %5285, %5296
  %5300 = fsub fast float %5286, %5297
  %5301 = call float @dx.op.binary.f32(i32 36, float %5248, float 1.000000e+00)  ; FMin(a,b)
  %5302 = fsub fast float 1.000000e+00, %5301
  %5303 = bitcast float %5302 to i32
  %5304 = ashr i32 %5303, 1
  %5305 = add nsw i32 %5304, 532487669
  %5306 = bitcast i32 %5305 to float
  %5307 = fsub fast float 1.000000e+00, %5247
  %5308 = call float @dx.op.binary.f32(i32 35, float %5307, float 0x3F847AE140000000)  ; FMax(a,b)
  %5309 = fmul fast float %5308, %5308
  %5310 = fmul fast float %5309, %5309
  %5311 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5306, float %5310, float %5311, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5313 = extractvalue %dx.types.ResRet.f32 %5312, 0
  %5314 = fsub fast float 1.000000e+00, %5248
  %5315 = bitcast float %5314 to i32
  %5316 = sub nsw i32 2129859010, %5315
  %5317 = fsub fast float 1.000000e+00, %85
  %5318 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %125, float %126, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %5319 = call float @dx.op.binary.f32(i32 35, float %5318, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5320 = fdiv fast float %5317, %5319
  %5321 = call float @dx.op.dot3.f32(i32 55, float %5244, float %5245, float %5246, float %125, float %126, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %5322 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5323 = fmul fast float %5322, 5.000000e-01
  %5324 = fadd fast float %5323, 5.000000e-01
  %5325 = fmul fast float %5324, %85
  %5326 = call float @dx.op.dot3.f32(i32 55, float %5244, float %5245, float %5246, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = call float @dx.op.unary.f32(i32 7, float %5326)  ; Saturate(value)
  %5328 = fmul fast float %5327, %5320
  %5329 = fadd fast float %5325, %5328
  %5330 = fsub fast float 5.000000e-01, %5323
  %5331 = fmul fast float %5330, %5238
  %5332 = fmul fast float %5330, %5239
  %5333 = fmul fast float %5330, %5240
  %5334 = fadd fast float %5329, %5331
  %5335 = fadd fast float %5329, %5332
  %5336 = fadd fast float %5329, %5333
  %5337 = call float @dx.op.dot3.f32(i32 55, float %5298, float %5299, float %5300, float %125, float %126, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %5338 = call float @dx.op.unary.f32(i32 7, float %5337)  ; Saturate(value)
  %5339 = fmul fast float %5338, 5.000000e-01
  %5340 = fadd fast float %5339, 5.000000e-01
  %5341 = fmul fast float %5340, %85
  %5342 = call float @dx.op.dot3.f32(i32 55, float %5298, float %5299, float %5300, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %5343 = call float @dx.op.unary.f32(i32 7, float %5342)  ; Saturate(value)
  %5344 = fmul fast float %5343, %5320
  %5345 = fadd fast float %5341, %5344
  %5346 = fsub fast float 5.000000e-01, %5339
  %5347 = fmul fast float %5346, %5238
  %5348 = fmul fast float %5346, %5239
  %5349 = fmul fast float %5346, %5240
  %5350 = fadd fast float %5345, %5347
  %5351 = fadd fast float %5345, %5348
  %5352 = fadd fast float %5345, %5349
  %5353 = call float @dx.op.dot3.f32(i32 55, float %86, float %87, float %88, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5355 = extractvalue %dx.types.CBufRet.f32 %5354, 0
  %5356 = call float @dx.op.binary.f32(i32 36, float %5238, float %5355)  ; FMin(a,b)
  %5357 = fmul fast float %5356, %5302
  %5358 = fsub fast float 1.000000e+00, %5357
  %5359 = bitcast float %5358 to i32
  %5360 = sub nsw i32 2129859010, %5359
  %5361 = bitcast i32 %5360 to float
  %5362 = call float @dx.op.binary.f32(i32 36, float %5239, float %5355)  ; FMin(a,b)
  %5363 = fmul fast float %5362, %5302
  %5364 = fsub fast float 1.000000e+00, %5363
  %5365 = bitcast float %5364 to i32
  %5366 = sub nsw i32 2129859010, %5365
  %5367 = bitcast i32 %5366 to float
  %5368 = call float @dx.op.binary.f32(i32 36, float %5240, float %5355)  ; FMin(a,b)
  %5369 = fmul fast float %5368, %5302
  %5370 = fsub fast float 1.000000e+00, %5369
  %5371 = bitcast float %5370 to i32
  %5372 = sub nsw i32 2129859010, %5371
  %5373 = bitcast i32 %5372 to float
  %5374 = fmul fast float %5301, %86
  %5375 = fmul fast float %5374, %5334
  %5376 = fmul fast float %5375, %5361
  %5377 = fmul fast float %5301, %87
  %5378 = fmul fast float %5377, %5335
  %5379 = fmul fast float %5378, %5367
  %5380 = fmul fast float %5301, %88
  %5381 = fmul fast float %5380, %5336
  %5382 = fmul fast float %5381, %5373
  %5383 = call float @dx.op.binary.f32(i32 36, float %5241, float %5355)  ; FMin(a,b)
  %5384 = fmul fast float %5383, %5302
  %5385 = fsub fast float 1.000000e+00, %5384
  %5386 = bitcast float %5385 to i32
  %5387 = sub nsw i32 2129859010, %5386
  %5388 = bitcast i32 %5387 to float
  %5389 = call float @dx.op.binary.f32(i32 36, float %5242, float %5355)  ; FMin(a,b)
  %5390 = fmul fast float %5389, %5302
  %5391 = fsub fast float 1.000000e+00, %5390
  %5392 = bitcast float %5391 to i32
  %5393 = sub nsw i32 2129859010, %5392
  %5394 = bitcast i32 %5393 to float
  %5395 = call float @dx.op.binary.f32(i32 36, float %5290, float %5355)  ; FMin(a,b)
  %5396 = fmul fast float %5395, %5302
  %5397 = fsub fast float 1.000000e+00, %5396
  %5398 = bitcast float %5397 to i32
  %5399 = sub nsw i32 2129859010, %5398
  %5400 = bitcast i32 %5399 to float
  %5401 = fmul fast float %5374, %5350
  %5402 = fmul fast float %5401, %5388
  %5403 = fmul fast float %5377, %5351
  %5404 = fmul fast float %5403, %5394
  %5405 = fmul fast float %5380, %5352
  %5406 = fmul fast float %5405, %5400
  %5407 = call float @dx.op.dot3.f32(i32 55, float %5376, float %5379, float %5382, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5408 = select i1 %264, float 0.000000e+00, float %5376
  %5409 = select i1 %264, float %5407, float %5379
  %5410 = select i1 %264, float 0.000000e+00, float %5382
  %5411 = call float @dx.op.dot3.f32(i32 55, float %5402, float %5404, float %5406, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5412 = select i1 %264, float 0.000000e+00, float %5402
  %5413 = select i1 %264, float %5411, float %5404
  %5414 = select i1 %264, float 0.000000e+00, float %5406
  %5415 = call float @dx.op.unary.f32(i32 6, float %81)  ; FAbs(value)
  %5416 = fmul fast float %5415, %5408
  %5417 = fmul fast float %5415, %5409
  %5418 = fmul fast float %5410, %5415
  %5419 = fmul fast float %5292, 9.843750e-01
  %5420 = fmul fast float %5247, 9.843750e-01
  %5421 = fadd fast float %5419, 7.812500e-03
  %5422 = fadd fast float %5420, 7.812500e-03
  %5423 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %5421, float %5422, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5424 = extractvalue %dx.types.ResRet.f32 %5423, 2
  %5425 = extractvalue %dx.types.ResRet.f32 %5423, 3
  %5426 = fmul fast float %5424, %5241
  %5427 = fmul fast float %5424, %5242
  %5428 = fmul fast float %5424, %5290
  %5429 = fadd fast float %5426, %5425
  %5430 = fadd fast float %5427, %5425
  %5431 = fadd fast float %5428, %5425
  %5432 = fcmp fast ogt float %4056, 0.000000e+00
  br i1 %5432, label %5433, label %5459

; <label>:5433                                    ; preds = %5280
  %5434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4056, float %5292, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5435 = extractvalue %dx.types.ResRet.f32 %5434, 0
  %5436 = extractvalue %dx.types.ResRet.f32 %5434, 1
  %5437 = extractvalue %dx.types.ResRet.f32 %5434, 2
  %5438 = fadd fast float %5435, -5.000000e-01
  %5439 = fadd fast float %5436, -5.000000e-01
  %5440 = fadd fast float %5437, -5.000000e-01
  %5441 = fsub fast float 1.000000e+00, %5241
  %5442 = fsub fast float 1.000000e+00, %5242
  %5443 = fsub fast float 1.000000e+00, %5290
  %5444 = fmul fast float %5241, 4.000000e+00
  %5445 = fmul fast float %5444, %5441
  %5446 = fmul fast float %5445, %5438
  %5447 = fmul fast float %5242, 4.000000e+00
  %5448 = fmul fast float %5447, %5442
  %5449 = fmul fast float %5448, %5439
  %5450 = fmul fast float %5290, 4.000000e+00
  %5451 = fmul fast float %5450, %5443
  %5452 = fmul fast float %5451, %5440
  %5453 = fadd fast float %5446, %5429
  %5454 = fadd fast float %5449, %5430
  %5455 = fadd fast float %5452, %5431
  %5456 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  %5457 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  %5458 = call float @dx.op.unary.f32(i32 7, float %5455)  ; Saturate(value)
  br label %5459

; <label>:5459                                    ; preds = %5433, %5280
  %5460 = phi float [ %5456, %5433 ], [ %5429, %5280 ]
  %5461 = phi float [ %5457, %5433 ], [ %5430, %5280 ]
  %5462 = phi float [ %5458, %5433 ], [ %5431, %5280 ]
  %5463 = call float @dx.op.binary.f32(i32 35, float %5461, float %5462)  ; FMax(a,b)
  %5464 = call float @dx.op.binary.f32(i32 35, float %5460, float %5463)  ; FMax(a,b)
  %5465 = fsub fast float 1.000000e+00, %5464
  %5466 = fmul fast float %5464, %5247
  %5467 = fadd fast float %5466, %5247
  %5468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5469 = extractvalue %dx.types.CBufRet.f32 %5468, 2
  %5470 = extractvalue %dx.types.CBufRet.f32 %5468, 3
  %5471 = fmul fast float %5467, %5469
  %5472 = fadd fast float %5471, %5470
  %5473 = call float @dx.op.unary.f32(i32 7, float %5472)  ; Saturate(value)
  %5474 = fsub fast float 1.000000e+00, %5313
  %5475 = fadd fast float %5474, %5473
  %5476 = call float @dx.op.unary.f32(i32 7, float %5475)  ; Saturate(value)
  %5477 = fcmp fast olt float %5476, 1.000000e+00
  br i1 %5477, label %5478, label %5954

; <label>:5478                                    ; preds = %5459
  %5479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5480 = extractvalue %dx.types.CBufRet.f32 %5479, 2
  %5481 = extractvalue %dx.types.CBufRet.f32 %5479, 3
  %5482 = fmul fast float %5480, %118
  %5483 = fmul fast float %5481, %119
  %5484 = fptoui float %5482 to i32
  %5485 = fptoui float %5483 to i32
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %5488 = extractvalue %dx.types.CBufRet.f32 %5486, 2
  %5489 = extractvalue %dx.types.CBufRet.f32 %5486, 3
  %5490 = fadd fast float %105, -4.000000e+00
  %5491 = call float @dx.op.binary.f32(i32 35, float %5490, float 0.000000e+00)  ; FMax(a,b)
  %5492 = fadd fast float %5491, %5487
  %5493 = fmul fast float %5492, %5488
  %5494 = call float @dx.op.unary.f32(i32 23, float %5493)  ; Log(value)
  %5495 = fmul fast float %5494, %5489
  %5496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5497 = extractvalue %dx.types.CBufRet.f32 %5496, 2
  %5498 = fmul fast float %5495, %5497
  %5499 = call float @dx.op.unary.f32(i32 7, float %5498)  ; Saturate(value)
  %5500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5501 = extractvalue %dx.types.CBufRet.i32 %5500, 1
  %5502 = add i32 %5501, -1
  %5503 = uitofp i32 %5501 to float
  %5504 = fmul fast float %5503, %5499
  %5505 = fptoui float %5504 to i32
  %5506 = call i32 @dx.op.binary.i32(i32 40, i32 %5505, i32 %5502)  ; UMin(a,b)
  %5507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5508 = extractvalue %dx.types.CBufRet.i32 %5507, 2
  %5509 = extractvalue %dx.types.CBufRet.i32 %5507, 3
  %5510 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5485, i32 %5508, i32 %5484)  ; UMad(a,b,c)
  %5511 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5506, i32 %5509, i32 %5510)  ; UMad(a,b,c)
  %5512 = call float @dx.op.binary.f32(i32 35, float %105, float 0.000000e+00)  ; FMax(a,b)
  %5513 = fptoui float %5512 to i32
  %5514 = lshr i32 %5513, 5
  %5515 = call i32 @dx.op.binary.i32(i32 40, i32 %5514, i32 8191)  ; UMin(a,b)
  %5516 = fsub fast float %4458, %207
  %5517 = call float @dx.op.unary.f32(i32 7, float %5516)  ; Saturate(value)
  %5518 = fcmp fast ogt float %5517, 0.000000e+00
  %5519 = fcmp fast ogt float %5300, 0.000000e+00
  %5520 = and i1 %5519, %5518
  br i1 %5520, label %5521, label %5550

; <label>:5521                                    ; preds = %5478
  %5522 = call float @dx.op.dot3.f32(i32 55, float %5298, float %5299, float %5300, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5523 = call float @dx.op.binary.f32(i32 35, float %5522, float -1.000000e+00)  ; FMax(a,b)
  %5524 = call float @dx.op.binary.f32(i32 36, float %5523, float 1.000000e+00)  ; FMin(a,b)
  %5525 = fmul fast float %5524, %5524
  %5526 = fsub fast float 1.000000e+00, %5525
  %5527 = fmul fast float %5526, 0x3FFC6E2300000000
  %5528 = fsub fast float 1.000000e+00, %5527
  %5529 = fcmp fast ogt float %5528, 0.000000e+00
  %5530 = call float @dx.op.unary.f32(i32 24, float %5528)  ; Sqrt(value)
  %5531 = fsub fast float 1.000000e+00, %5530
  %5532 = call float @dx.op.unary.f32(i32 23, float %5531)  ; Log(value)
  %5533 = fmul fast float %5532, 5.000000e+00
  %5534 = call float @dx.op.unary.f32(i32 21, float %5533)  ; Exp(value)
  %5535 = fmul fast float %5534, 0x3FEF591A60000000
  %5536 = fadd fast float %5535, 0x3F94DCB540000000
  %5537 = select i1 %5529, float %5536, float 1.000000e+00
  %5538 = fcmp fast oge float %5537, 1.000000e+00
  %5539 = fmul fast float %5522, 2.000000e+00
  %5540 = fadd fast float %5539, %5300
  %5541 = select i1 %5538, float %5540, float %5300
  %5542 = fsub fast float %5541, %5300
  %5543 = fmul fast float %5542, %5517
  %5544 = fadd fast float %5543, %5300
  %5545 = call float @dx.op.dot3.f32(i32 55, float %5298, float %5299, float %5544, float %5298, float %5299, float %5544)  ; Dot3(ax,ay,az,bx,by,bz)
  %5546 = call float @dx.op.unary.f32(i32 25, float %5545)  ; Rsqrt(value)
  %5547 = fmul fast float %5546, %5298
  %5548 = fmul fast float %5546, %5299
  %5549 = fmul fast float %5544, %5546
  br label %5550

; <label>:5550                                    ; preds = %5521, %5478
  %5551 = phi float [ %5547, %5521 ], [ %5298, %5478 ]
  %5552 = phi float [ %5548, %5521 ], [ %5299, %5478 ]
  %5553 = phi float [ %5549, %5521 ], [ %5300, %5478 ]
  %5554 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5555 = extractvalue %dx.types.CBufRet.i32 %5554, 2
  %5556 = add nsw i32 %5555, -1
  %5557 = call i32 @dx.op.binary.i32(i32 37, i32 %5556, i32 0)  ; IMax(a,b)
  %5558 = shl i32 %5515, 2
  %5559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5558, i32 undef)  ; BufferLoad(srv,index,wot)
  %5560 = extractvalue %dx.types.ResRet.i32 %5559, 0
  %5561 = lshr i32 %5560, 16
  %5562 = and i32 %5560, 65535
  %5563 = lshr i32 %5560, 21
  %5564 = lshr i32 %5562, 5
  %5565 = call i32 @dx.op.binary.i32(i32 40, i32 %5564, i32 %5557)  ; UMin(a,b)
  %5566 = icmp ugt i32 %5563, %5565
  br i1 %5566, label %5930, label %5567

; <label>:5567                                    ; preds = %5550
  br label %5568

; <label>:5568                                    ; preds = %5922, %5567
  %5569 = phi float [ %5923, %5922 ], [ 0.000000e+00, %5567 ]
  %5570 = phi float [ %5924, %5922 ], [ 0.000000e+00, %5567 ]
  %5571 = phi float [ %5925, %5922 ], [ 0.000000e+00, %5567 ]
  %5572 = phi float [ %5926, %5922 ], [ 1.000000e+00, %5567 ]
  %5573 = phi i32 [ %5927, %5922 ], [ %5563, %5567 ]
  %5574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5575 = extractvalue %dx.types.CBufRet.i32 %5574, 2
  %5576 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5511, i32 %5575, i32 %5573)  ; UMad(a,b,c)
  %5577 = shl i32 %5576, 2
  %5578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5577, i32 undef)  ; BufferLoad(srv,index,wot)
  %5579 = extractvalue %dx.types.ResRet.i32 %5578, 0
  %5580 = shl i32 %5573, 5
  %5581 = sub nsw i32 %5561, %5580
  %5582 = call i32 @dx.op.binary.i32(i32 37, i32 %5581, i32 0)  ; IMax(a,b)
  %5583 = call i32 @dx.op.binary.i32(i32 38, i32 %5582, i32 31)  ; IMin(a,b)
  %5584 = sub nsw i32 1, %5561
  %5585 = add nsw i32 %5584, %5562
  %5586 = call i32 @dx.op.binary.i32(i32 37, i32 %5585, i32 0)  ; IMax(a,b)
  %5587 = call i32 @dx.op.binary.i32(i32 38, i32 %5586, i32 32)  ; IMin(a,b)
  %5588 = and i32 %5587, 31
  %5589 = shl i32 -1, %5588
  %5590 = xor i32 %5589, -1
  %5591 = and i32 %5583, 31
  %5592 = shl i32 %5590, %5591
  %5593 = icmp eq i32 %5587, 32
  %5594 = select i1 %5593, i32 -1, i32 %5592
  %5595 = and i32 %5594, %5579
  %5596 = icmp eq i32 %5595, 0
  br i1 %5596, label %5922, label %5597

; <label>:5597                                    ; preds = %5568
  br label %5598

; <label>:5598                                    ; preds = %5705, %5597
  %5599 = phi float [ %5706, %5705 ], [ %5569, %5597 ]
  %5600 = phi float [ %5707, %5705 ], [ %5570, %5597 ]
  %5601 = phi float [ %5708, %5705 ], [ %5571, %5597 ]
  %5602 = phi float [ %5709, %5705 ], [ %5572, %5597 ]
  %5603 = phi i32 [ %5608, %5705 ], [ %5595, %5597 ]
  %5604 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5603)  ; FirstbitLo(value)
  %5605 = add i32 %5604, %5580
  %5606 = and i32 %5604, 31
  %5607 = shl i32 1, %5606
  %5608 = xor i32 %5607, %5603
  %5609 = mul i32 %5605, 72
  %5610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5609, i32 undef)  ; BufferLoad(srv,index,wot)
  %5611 = extractvalue %dx.types.ResRet.f32 %5610, 0
  %5612 = extractvalue %dx.types.ResRet.f32 %5610, 1
  %5613 = extractvalue %dx.types.ResRet.f32 %5610, 2
  %5614 = add i32 %5609, 12
  %5615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5614, i32 undef)  ; BufferLoad(srv,index,wot)
  %5616 = extractvalue %dx.types.ResRet.i32 %5615, 0
  %5617 = add i32 %5609, 16
  %5618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5617, i32 undef)  ; BufferLoad(srv,index,wot)
  %5619 = extractvalue %dx.types.ResRet.f32 %5618, 0
  %5620 = extractvalue %dx.types.ResRet.f32 %5618, 1
  %5621 = extractvalue %dx.types.ResRet.f32 %5618, 2
  %5622 = add i32 %5609, 28
  %5623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5622, i32 undef)  ; BufferLoad(srv,index,wot)
  %5624 = extractvalue %dx.types.ResRet.f32 %5623, 0
  %5625 = add i32 %5609, 32
  %5626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5625, i32 undef)  ; BufferLoad(srv,index,wot)
  %5627 = extractvalue %dx.types.ResRet.f32 %5626, 0
  %5628 = extractvalue %dx.types.ResRet.f32 %5626, 1
  %5629 = extractvalue %dx.types.ResRet.f32 %5626, 2
  %5630 = extractvalue %dx.types.ResRet.f32 %5626, 3
  %5631 = add i32 %5609, 48
  %5632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5631, i32 undef)  ; BufferLoad(srv,index,wot)
  %5633 = extractvalue %dx.types.ResRet.f32 %5632, 0
  %5634 = extractvalue %dx.types.ResRet.f32 %5632, 1
  %5635 = add i32 %5609, 56
  %5636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5635, i32 undef)  ; BufferLoad(srv,index,wot)
  %5637 = extractvalue %dx.types.ResRet.f32 %5636, 0
  %5638 = extractvalue %dx.types.ResRet.f32 %5636, 1
  %5639 = add i32 %5609, 64
  %5640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5639, i32 undef)  ; BufferLoad(srv,index,wot)
  %5641 = extractvalue %dx.types.ResRet.f32 %5640, 0
  %5642 = extractvalue %dx.types.ResRet.f32 %5640, 1
  %5643 = mul i32 %5605, 60
  %5644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5643, i32 undef)  ; BufferLoad(srv,index,wot)
  %5645 = extractvalue %dx.types.ResRet.f32 %5644, 0
  %5646 = extractvalue %dx.types.ResRet.f32 %5644, 1
  %5647 = extractvalue %dx.types.ResRet.f32 %5644, 2
  %5648 = add i32 %5643, 12
  %5649 = add i32 %5643, 48
  %5650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5649, i32 undef)  ; BufferLoad(srv,index,wot)
  %5651 = extractvalue %dx.types.ResRet.f32 %5650, 0
  %5652 = extractvalue %dx.types.ResRet.f32 %5650, 1
  %5653 = extractvalue %dx.types.ResRet.f32 %5650, 2
  %5654 = and i32 %5616, 32767
  %5655 = bitcast float %5611 to i32
  %5656 = icmp eq i32 %5655, -1
  %5657 = bitcast float %5612 to i32
  %5658 = and i32 %5616, 32768
  %5659 = icmp ne i32 %5658, 0
  %5660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5661 = extractvalue %dx.types.CBufRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.CBufRet.f32 %5660, 1
  %5663 = extractvalue %dx.types.CBufRet.f32 %5660, 2
  %5664 = fsub fast float %5645, %5661
  %5665 = fsub fast float %5646, %5662
  %5666 = fsub fast float %5647, %5663
  %5667 = fsub fast float %205, %5664
  %5668 = fsub fast float %206, %5665
  %5669 = fsub fast float %207, %5666
  %5670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5648, i32 undef)  ; BufferLoad(srv,index,wot)
  %5671 = extractvalue %dx.types.ResRet.f32 %5670, 0
  %5672 = extractvalue %dx.types.ResRet.f32 %5670, 1
  %5673 = extractvalue %dx.types.ResRet.f32 %5670, 2
  %5674 = call float @dx.op.dot3.f32(i32 55, float %5667, float %5668, float %5669, float %5671, float %5672, float %5673)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = add i32 %5643, 24
  %5676 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5675, i32 undef)  ; BufferLoad(srv,index,wot)
  %5677 = extractvalue %dx.types.ResRet.f32 %5676, 0
  %5678 = extractvalue %dx.types.ResRet.f32 %5676, 1
  %5679 = extractvalue %dx.types.ResRet.f32 %5676, 2
  %5680 = call float @dx.op.dot3.f32(i32 55, float %5667, float %5668, float %5669, float %5677, float %5678, float %5679)  ; Dot3(ax,ay,az,bx,by,bz)
  %5681 = add i32 %5643, 36
  %5682 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5681, i32 undef)  ; BufferLoad(srv,index,wot)
  %5683 = extractvalue %dx.types.ResRet.f32 %5682, 0
  %5684 = extractvalue %dx.types.ResRet.f32 %5682, 1
  %5685 = extractvalue %dx.types.ResRet.f32 %5682, 2
  %5686 = call float @dx.op.dot3.f32(i32 55, float %5667, float %5668, float %5669, float %5683, float %5684, float %5685)  ; Dot3(ax,ay,az,bx,by,bz)
  %5687 = call float @dx.op.unary.f32(i32 6, float %5674)  ; FAbs(value)
  %5688 = call float @dx.op.unary.f32(i32 6, float %5680)  ; FAbs(value)
  %5689 = call float @dx.op.unary.f32(i32 6, float %5686)  ; FAbs(value)
  %5690 = fsub fast float %5651, %5687
  %5691 = fsub fast float %5652, %5688
  %5692 = fsub fast float %5653, %5689
  %5693 = fmul fast float %5690, %5619
  %5694 = fmul fast float %5691, %5620
  %5695 = fmul fast float %5692, %5621
  %5696 = call float @dx.op.binary.f32(i32 36, float %5694, float %5695)  ; FMin(a,b)
  %5697 = call float @dx.op.binary.f32(i32 36, float %5693, float %5696)  ; FMin(a,b)
  %5698 = call float @dx.op.unary.f32(i32 7, float %5697)  ; Saturate(value)
  %5699 = call float @dx.op.binary.f32(i32 36, float %5602, float %5698)  ; FMin(a,b)
  %5700 = uitofp i1 %5659 to float
  %5701 = fadd fast float %5517, 1.000000e+00
  %5702 = fsub fast float %5701, %5700
  %5703 = fmul fast float %5699, %5702
  %5704 = fcmp fast ogt float %5703, 0.000000e+00
  br i1 %5704, label %5711, label %5705

; <label>:5705                                    ; preds = %5853, %5598
  %5706 = phi float [ %5917, %5853 ], [ %5599, %5598 ]
  %5707 = phi float [ %5918, %5853 ], [ %5600, %5598 ]
  %5708 = phi float [ %5919, %5853 ], [ %5601, %5598 ]
  %5709 = phi float [ %5920, %5853 ], [ %5602, %5598 ]
  %5710 = icmp eq i32 %5603, %5607
  br i1 %5710, label %5921, label %5598

; <label>:5711                                    ; preds = %5598
  br i1 %5656, label %5769, label %5712

; <label>:5712                                    ; preds = %5711
  %5713 = fsub fast float -0.000000e+00, %5671
  %5714 = fsub fast float -0.000000e+00, %5672
  %5715 = fsub fast float -0.000000e+00, %5673
  %5716 = call float @dx.op.dot3.f32(i32 55, float %5551, float %5552, float %5553, float %5713, float %5714, float %5715)  ; Dot3(ax,ay,az,bx,by,bz)
  %5717 = fsub fast float -0.000000e+00, %5716
  %5718 = call float @dx.op.dot3.f32(i32 55, float %5667, float %5668, float %5669, float %5713, float %5714, float %5715)  ; Dot3(ax,ay,az,bx,by,bz)
  %5719 = fadd fast float %5718, %5634
  %5720 = fadd fast float %5633, %5718
  %5721 = fsub fast float -0.000000e+00, %5720
  %5722 = fcmp ogt float %5716, -0.000000e+00
  %5723 = select i1 %5722, float %5721, float %5719
  %5724 = call float @dx.op.unary.f32(i32 6, float %5717)  ; FAbs(value)
  %5725 = fdiv fast float 1.000000e+00, %5724
  %5726 = fmul fast float %5723, %5725
  %5727 = call float @dx.op.binary.f32(i32 35, float %5726, float 0.000000e+00)  ; FMax(a,b)
  %5728 = fsub fast float -0.000000e+00, %5677
  %5729 = fsub fast float -0.000000e+00, %5678
  %5730 = fsub fast float -0.000000e+00, %5679
  %5731 = call float @dx.op.dot3.f32(i32 55, float %5551, float %5552, float %5553, float %5728, float %5729, float %5730)  ; Dot3(ax,ay,az,bx,by,bz)
  %5732 = fsub fast float -0.000000e+00, %5731
  %5733 = call float @dx.op.dot3.f32(i32 55, float %5667, float %5668, float %5669, float %5728, float %5729, float %5730)  ; Dot3(ax,ay,az,bx,by,bz)
  %5734 = fadd fast float %5733, %5638
  %5735 = fadd fast float %5637, %5733
  %5736 = fsub fast float -0.000000e+00, %5735
  %5737 = fcmp ogt float %5731, -0.000000e+00
  %5738 = select i1 %5737, float %5736, float %5734
  %5739 = call float @dx.op.unary.f32(i32 6, float %5732)  ; FAbs(value)
  %5740 = fdiv fast float 1.000000e+00, %5739
  %5741 = fmul fast float %5738, %5740
  %5742 = call float @dx.op.binary.f32(i32 35, float %5741, float 0.000000e+00)  ; FMax(a,b)
  %5743 = fsub fast float -0.000000e+00, %5683
  %5744 = fsub fast float -0.000000e+00, %5684
  %5745 = fsub fast float -0.000000e+00, %5685
  %5746 = call float @dx.op.dot3.f32(i32 55, float %5551, float %5552, float %5553, float %5743, float %5744, float %5745)  ; Dot3(ax,ay,az,bx,by,bz)
  %5747 = fsub fast float -0.000000e+00, %5746
  %5748 = call float @dx.op.dot3.f32(i32 55, float %5667, float %5668, float %5669, float %5743, float %5744, float %5745)  ; Dot3(ax,ay,az,bx,by,bz)
  %5749 = fadd fast float %5748, %5642
  %5750 = fadd fast float %5641, %5748
  %5751 = fsub fast float -0.000000e+00, %5750
  %5752 = fcmp ogt float %5746, -0.000000e+00
  %5753 = select i1 %5752, float %5751, float %5749
  %5754 = call float @dx.op.unary.f32(i32 6, float %5747)  ; FAbs(value)
  %5755 = fdiv fast float 1.000000e+00, %5754
  %5756 = fmul fast float %5753, %5755
  %5757 = call float @dx.op.binary.f32(i32 35, float %5756, float 0.000000e+00)  ; FMax(a,b)
  %5758 = call float @dx.op.binary.f32(i32 36, float %5742, float %5757)  ; FMin(a,b)
  %5759 = call float @dx.op.binary.f32(i32 36, float %5727, float %5758)  ; FMin(a,b)
  %5760 = fmul fast float %5759, %5551
  %5761 = fmul fast float %5759, %5552
  %5762 = fmul fast float %5759, %5553
  %5763 = fadd fast float %5760, %205
  %5764 = fadd fast float %5761, %206
  %5765 = fadd fast float %5762, %207
  %5766 = fsub fast float %5763, %5611
  %5767 = fsub fast float %5764, %5612
  %5768 = fsub fast float %5765, %5613
  br label %5776

; <label>:5769                                    ; preds = %5711
  %5770 = fmul fast float %5551, 8.096000e+03
  %5771 = fmul fast float %5552, 8.096000e+03
  %5772 = fmul fast float %5553, 8.096000e+03
  %5773 = fadd fast float %5770, %205
  %5774 = fadd fast float %5771, %206
  %5775 = fadd fast float %5772, %207
  br label %5776

; <label>:5776                                    ; preds = %5769, %5712
  %5777 = phi float [ %5551, %5769 ], [ %5766, %5712 ]
  %5778 = phi float [ %5552, %5769 ], [ %5767, %5712 ]
  %5779 = phi float [ %5553, %5769 ], [ %5768, %5712 ]
  %5780 = phi float [ %5773, %5769 ], [ %5763, %5712 ]
  %5781 = phi float [ %5774, %5769 ], [ %5764, %5712 ]
  %5782 = phi float [ %5775, %5769 ], [ %5765, %5712 ]
  %5783 = fcmp fast olt float %5630, 1.000000e+00
  br i1 %5783, label %5784, label %5815, !dx.controlflow.hints !104

; <label>:5784                                    ; preds = %5776
  %5785 = fmul fast float %5779, %5628
  %5786 = fmul fast float %5778, %5629
  %5787 = fsub fast float %5785, %5786
  %5788 = fmul fast float %5777, %5629
  %5789 = fmul fast float %5779, %5627
  %5790 = fsub fast float %5788, %5789
  %5791 = fmul fast float %5778, %5627
  %5792 = fmul fast float %5777, %5628
  %5793 = fsub fast float %5791, %5792
  %5794 = fmul fast float %5787, 2.000000e+00
  %5795 = fmul fast float %5790, 2.000000e+00
  %5796 = fmul fast float %5793, 2.000000e+00
  %5797 = fmul fast float %5794, %5630
  %5798 = fmul fast float %5795, %5630
  %5799 = fmul fast float %5796, %5630
  %5800 = fmul fast float %5796, %5628
  %5801 = fmul fast float %5795, %5629
  %5802 = fmul fast float %5794, %5629
  %5803 = fmul fast float %5796, %5627
  %5804 = fmul fast float %5795, %5627
  %5805 = fmul fast float %5794, %5628
  %5806 = fadd fast float %5800, %5777
  %5807 = fadd fast float %5806, %5797
  %5808 = fsub fast float %5807, %5801
  %5809 = fsub fast float %5778, %5803
  %5810 = fadd fast float %5809, %5798
  %5811 = fadd fast float %5810, %5802
  %5812 = fadd fast float %5799, %5779
  %5813 = fsub fast float %5812, %5805
  %5814 = fadd fast float %5813, %5804
  br label %5815

; <label>:5815                                    ; preds = %5784, %5776
  %5816 = phi float [ %5808, %5784 ], [ %5777, %5776 ]
  %5817 = phi float [ %5811, %5784 ], [ %5778, %5776 ]
  %5818 = phi float [ %5814, %5784 ], [ %5779, %5776 ]
  br i1 %5656, label %5850, label %5819

; <label>:5819                                    ; preds = %5815
  %5820 = fmul fast float %5247, 0x400187C840000000
  %5821 = fadd fast float %5820, 0xC00EFC2120000000
  %5822 = fmul fast float %5821, %5247
  %5823 = fadd fast float %5822, 0x3FE5D16340000000
  %5824 = fmul fast float %5823, %5247
  %5825 = fadd fast float %5824, 1.000000e+00
  %5826 = call float @dx.op.unary.f32(i32 7, float %5825)  ; Saturate(value)
  %5827 = fsub fast float %5780, %205
  %5828 = fsub fast float %5781, %206
  %5829 = fsub fast float %5782, %207
  %5830 = fsub fast float %5780, %5611
  %5831 = fsub fast float %5781, %5612
  %5832 = fsub fast float %5782, %5613
  %5833 = call float @dx.op.dot3.f32(i32 55, float %5827, float %5828, float %5829, float %5827, float %5828, float %5829)  ; Dot3(ax,ay,az,bx,by,bz)
  %5834 = call float @dx.op.dot3.f32(i32 55, float %5830, float %5831, float %5832, float %5830, float %5831, float %5832)  ; Dot3(ax,ay,az,bx,by,bz)
  %5835 = fadd fast float %5834, 0x3EE4F8B580000000
  %5836 = fdiv fast float %5833, %5835
  %5837 = bitcast float %5836 to i32
  %5838 = ashr i32 %5837, 1
  %5839 = add nsw i32 %5838, 532487669
  %5840 = bitcast i32 %5839 to float
  %5841 = fmul fast float %5840, %5826
  %5842 = call float @dx.op.unary.f32(i32 7, float %5841)  ; Saturate(value)
  %5843 = fmul fast float %5842, 0x4009981AE0000000
  %5844 = fsub fast float 0x40111BBD80000000, %5843
  %5845 = fmul fast float %5844, %5842
  %5846 = fadd fast float %5845, 0xC0009F6020000000
  %5847 = fmul fast float %5846, %5842
  %5848 = fadd fast float %5847, 1.000000e+00
  %5849 = call float @dx.op.unary.f32(i32 7, float %5848)  ; Saturate(value)
  br label %5853

; <label>:5850                                    ; preds = %5815
  %5851 = icmp ne i32 %5657, -1
  %5852 = zext i1 %5851 to i32
  br label %5853

; <label>:5853                                    ; preds = %5850, %5819
  %5854 = phi float [ %5247, %5850 ], [ %5849, %5819 ]
  %5855 = phi i32 [ %5852, %5850 ], [ 0, %5819 ]
  %5856 = fmul float %5854, 5.000000e+00
  %5857 = fsub float 5.000000e+00, %5856
  %5858 = icmp ne i32 %5855, 0
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 3
  %5861 = fadd fast float %5860, %5857
  %5862 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5861)  ; FMax(a,b)
  %5863 = call float @dx.op.unary.f32(i32 6, float %5816)  ; FAbs(value)
  %5864 = call float @dx.op.unary.f32(i32 6, float %5817)  ; FAbs(value)
  %5865 = fadd fast float %5864, %5863
  %5866 = call float @dx.op.unary.f32(i32 6, float %5818)  ; FAbs(value)
  %5867 = fadd fast float %5865, %5866
  %5868 = fcmp fast oeq float %5867, 0.000000e+00
  %5869 = fdiv fast float 1.000000e+00, %5867
  %5870 = select i1 %5868, float 1.000000e+00, float %5869
  %5871 = fmul fast float %5870, %5816
  %5872 = fmul fast float %5870, %5817
  %5873 = call float @dx.op.unary.f32(i32 6, float %5872)  ; FAbs(value)
  %5874 = call float @dx.op.unary.f32(i32 6, float %5871)  ; FAbs(value)
  %5875 = fsub fast float 1.000000e+00, %5873
  %5876 = fsub fast float 1.000000e+00, %5874
  %5877 = fcmp fast oge float %5871, 0.000000e+00
  %5878 = fcmp fast oge float %5872, 0.000000e+00
  %5879 = select i1 %5877, float 1.000000e+00, float -1.000000e+00
  %5880 = select i1 %5878, float 1.000000e+00, float -1.000000e+00
  %5881 = fcmp fast ole float %5818, 0.000000e+00
  %5882 = fmul fast float %5879, %5875
  %5883 = fmul fast float %5880, %5876
  %5884 = select i1 %5881, float %5882, float %5871
  %5885 = select i1 %5881, float %5883, float %5872
  %5886 = fmul fast float %5884, 5.000000e-01
  %5887 = fmul fast float %5885, 5.000000e-01
  %5888 = fadd fast float %5886, 5.000000e-01
  %5889 = fadd fast float %5887, 5.000000e-01
  %5890 = uitofp i32 %5654 to float
  %5891 = call float @dx.op.binary.f32(i32 36, float %5862, float 3.000000e+00)  ; FMin(a,b)
  %5892 = fadd fast float %5891, 2.000000e+00
  %5893 = call float @dx.op.unary.f32(i32 21, float %5892)  ; Exp(value)
  %5894 = extractvalue %dx.types.CBufRet.f32 %5859, 1
  %5895 = fmul fast float %5894, %5893
  %5896 = fmul fast float %5895, 2.000000e+00
  %5897 = fsub fast float 1.000000e+00, %5896
  %5898 = fmul fast float %5888, %5897
  %5899 = fmul fast float %5889, %5897
  %5900 = fadd fast float %5898, %5895
  %5901 = fadd fast float %5899, %5895
  %5902 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %53, float %5900, float %5901, float %5890, float undef, i32 0, i32 0, i32 undef, float %5862)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5903 = extractvalue %dx.types.ResRet.f32 %5902, 0
  %5904 = extractvalue %dx.types.ResRet.f32 %5902, 1
  %5905 = extractvalue %dx.types.ResRet.f32 %5902, 2
  %5906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5907 = extractvalue %dx.types.CBufRet.f32 %5906, 3
  %5908 = fmul fast float %5907, %5624
  %5909 = call float @dx.op.binary.f32(i32 36, float %5353, float %5908)  ; FMin(a,b)
  %5910 = select i1 %5858, float %5909, float %5908
  %5911 = fmul fast float %5903, %5703
  %5912 = fmul fast float %5911, %5910
  %5913 = fmul fast float %5904, %5703
  %5914 = fmul fast float %5913, %5910
  %5915 = fmul fast float %5905, %5703
  %5916 = fmul fast float %5915, %5910
  %5917 = fadd fast float %5912, %5599
  %5918 = fadd fast float %5914, %5600
  %5919 = fadd fast float %5916, %5601
  %5920 = fsub fast float %5602, %5703
  br label %5705

; <label>:5921                                    ; preds = %5705
  br label %5922

; <label>:5922                                    ; preds = %5921, %5568
  %5923 = phi float [ %5569, %5568 ], [ %5706, %5921 ]
  %5924 = phi float [ %5570, %5568 ], [ %5707, %5921 ]
  %5925 = phi float [ %5571, %5568 ], [ %5708, %5921 ]
  %5926 = phi float [ %5572, %5568 ], [ %5709, %5921 ]
  %5927 = add i32 %5573, 1
  %5928 = icmp ugt i32 %5927, %5565
  br i1 %5928, label %5929, label %5568, !llvm.loop !105

; <label>:5929                                    ; preds = %5922
  br label %5930

; <label>:5930                                    ; preds = %5929, %5550
  %5931 = phi float [ 0.000000e+00, %5550 ], [ %5923, %5929 ]
  %5932 = phi float [ 0.000000e+00, %5550 ], [ %5924, %5929 ]
  %5933 = phi float [ 0.000000e+00, %5550 ], [ %5925, %5929 ]
  %5934 = call float @dx.op.dot3.f32(i32 55, float %5931, float %5932, float %5933, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5935 = select i1 %264, float 0.000000e+00, float %5931
  %5936 = select i1 %264, float %5934, float %5932
  %5937 = select i1 %264, float 0.000000e+00, float %5933
  %5938 = fcmp fast olt float %5476, 0.000000e+00
  %5939 = call float @dx.op.unary.f32(i32 6, float %5476)  ; FAbs(value)
  %5940 = fmul fast float %5939, %5412
  %5941 = fmul fast float %5939, %5413
  %5942 = fmul fast float %5939, %5414
  %5943 = select i1 %5938, float %5412, float %5940
  %5944 = select i1 %5938, float %5413, float %5941
  %5945 = select i1 %5938, float %5414, float %5942
  %5946 = fsub fast float 1.000000e+00, %5939
  %5947 = call float @dx.op.unary.f32(i32 7, float %5946)  ; Saturate(value)
  %5948 = fmul fast float %5947, %5935
  %5949 = fmul fast float %5947, %5936
  %5950 = fmul fast float %5947, %5937
  %5951 = fadd fast float %5943, %5948
  %5952 = fadd fast float %5944, %5949
  %5953 = fadd fast float %5945, %5950
  br label %5954

; <label>:5954                                    ; preds = %5930, %5459
  %5955 = phi float [ %5951, %5930 ], [ %5412, %5459 ]
  %5956 = phi float [ %5952, %5930 ], [ %5413, %5459 ]
  %5957 = phi float [ %5953, %5930 ], [ %5414, %5459 ]
  %5958 = fmul fast float %205, %205
  %5959 = fmul fast float %206, %206
  %5960 = fadd fast float %5959, %5958
  %5961 = fmul fast float %207, %207
  %5962 = fadd fast float %5960, %5961
  %5963 = call float @dx.op.unary.f32(i32 24, float %5962)  ; Sqrt(value)
  %5964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5965 = extractvalue %dx.types.CBufRet.f32 %5964, 1
  %5966 = fsub fast float %5963, %5965
  %5967 = extractvalue %dx.types.CBufRet.f32 %5964, 2
  %5968 = fmul fast float %5966, %5967
  %5969 = call float @dx.op.unary.f32(i32 7, float %5968)  ; Saturate(value)
  %5970 = extractvalue %dx.types.CBufRet.f32 %5964, 0
  %5971 = extractvalue %dx.types.CBufRet.f32 %5964, 3
  %5972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %5973 = extractvalue %dx.types.ResRet.i32 %5972, 0
  %5974 = and i32 %5973, 4194304
  %5975 = icmp ne i32 %5974, 0
  %5976 = and i32 %5973, 8388608
  %5977 = icmp ne i32 %5976, 0
  %5978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.f32 %5978, 0
  %5980 = extractvalue %dx.types.CBufRet.f32 %5978, 1
  %5981 = extractvalue %dx.types.CBufRet.f32 %5978, 2
  %5982 = extractvalue %dx.types.CBufRet.f32 %5978, 3
  %5983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.f32 %5983, 0
  %5985 = extractvalue %dx.types.CBufRet.f32 %5983, 1
  %5986 = extractvalue %dx.types.CBufRet.f32 %5983, 2
  %5987 = extractvalue %dx.types.CBufRet.f32 %5983, 3
  %5988 = select i1 %5975, float %5979, float %5984
  %5989 = select i1 %5975, float %5980, float %5985
  %5990 = select i1 %5975, float %5981, float %5986
  %5991 = select i1 %5975, float %5982, float %5987
  %5992 = select i1 %5977, float 0.000000e+00, float %5991
  %5993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5994 = extractvalue %dx.types.CBufRet.f32 %5993, 0
  %5995 = extractvalue %dx.types.CBufRet.f32 %5993, 1
  %5996 = select i1 %5975, float %5994, float %5995
  %5997 = select i1 %5977, float 0.000000e+00, float %5996
  %5998 = extractvalue %dx.types.CBufRet.f32 %5993, 2
  %5999 = extractvalue %dx.types.CBufRet.f32 %5993, 3
  %6000 = select i1 %5975, float %5998, float %5999
  %6001 = select i1 %5977, float 0.000000e+00, float %6000
  %6002 = fmul fast float %5969, %67
  %6003 = fmul fast float %6002, %5970
  %6004 = fmul fast float %6003, %5997
  %6005 = fmul fast float %6002, %5971
  %6006 = fmul fast float %6005, %6001
  %6007 = fadd fast float %6006, 1.000000e+00
  %6008 = fmul fast float %5465, %5416
  %6009 = fmul fast float %6008, %6007
  %6010 = fmul fast float %5465, %5417
  %6011 = fmul fast float %6010, %6007
  %6012 = fmul fast float %5465, %5418
  %6013 = fmul fast float %6012, %6007
  %6014 = call float @dx.op.dot3.f32(i32 55, float %5238, float %5239, float %5240, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6015 = fcmp fast ogt float %6014, 0x3E7FF19E20000000
  %6016 = fdiv fast float 1.000000e+00, %6014
  %6017 = select i1 %6015, float %6016, float 0.000000e+00
  %6018 = fmul fast float %6017, %5238
  %6019 = fmul fast float %6017, %5239
  %6020 = fmul fast float %6017, %5240
  %6021 = fadd fast float %6018, -1.000000e+00
  %6022 = fadd fast float %6019, -1.000000e+00
  %6023 = fadd fast float %6020, -1.000000e+00
  %6024 = fmul fast float %6021, 5.000000e-01
  %6025 = fmul fast float %6022, 5.000000e-01
  %6026 = fmul fast float %6023, 5.000000e-01
  %6027 = fadd fast float %6024, 1.000000e+00
  %6028 = fadd fast float %6025, 1.000000e+00
  %6029 = fadd fast float %6026, 1.000000e+00
  %6030 = fadd fast float %6004, %4057
  %6031 = fsub fast float %5988, %6027
  %6032 = fsub fast float %5989, %6028
  %6033 = fsub fast float %5990, %6029
  %6034 = fmul fast float %6031, %5992
  %6035 = fmul fast float %6032, %5992
  %6036 = fmul fast float %6033, %5992
  %6037 = fadd fast float %6034, %6027
  %6038 = fadd fast float %6035, %6028
  %6039 = fadd fast float %6036, %6029
  %6040 = fmul fast float %5955, %5460
  %6041 = fmul fast float %5956, %5461
  %6042 = fmul fast float %5957, %5462
  %6043 = fsub fast float 1.000000e+00, %5292
  %6044 = bitcast float %6043 to i32
  %6045 = sitofp i32 %6044 to float
  %6046 = fmul fast float %6045, 5.000000e+00
  %6047 = fadd fast float %6046, 0xC1EFBF8940000000
  %6048 = fptosi float %6047 to i32
  %6049 = bitcast i32 %6048 to float
  %6050 = fmul fast float %6030, %6049
  %6051 = fmul fast float %6008, %6050
  %6052 = fmul fast float %6051, %6037
  %6053 = fmul fast float %6010, %6050
  %6054 = fmul fast float %6053, %6038
  %6055 = fmul fast float %6012, %6050
  %6056 = fmul fast float %6055, %6039
  %6057 = fmul fast float %6009, %4053
  %6058 = fmul fast float %6011, %4053
  %6059 = fmul fast float %6013, %4053
  %6060 = fadd fast float %6040, %4049
  %6061 = fadd fast float %6060, %6052
  %6062 = fmul fast float %6061, %4053
  %6063 = fadd fast float %6041, %4050
  %6064 = fadd fast float %6063, %6054
  %6065 = fmul fast float %6064, %4053
  %6066 = fadd fast float %6042, %4051
  %6067 = fadd fast float %6066, %6056
  %6068 = fmul fast float %6067, %4053
  %6069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6070 = extractvalue %dx.types.CBufRet.f32 %6069, 3
  %6071 = fcmp fast oeq float %6070, 0.000000e+00
  br i1 %6071, label %7776, label %6072

; <label>:6072                                    ; preds = %5954
  %6073 = extractvalue %dx.types.CBufRet.f32 %6069, 0
  %6074 = extractvalue %dx.types.CBufRet.f32 %6069, 1
  %6075 = extractvalue %dx.types.CBufRet.f32 %6069, 2
  %6076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.f32 %6076, 0
  %6078 = extractvalue %dx.types.CBufRet.f32 %6076, 1
  %6079 = extractvalue %dx.types.CBufRet.f32 %6076, 2
  %6080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6081 = extractvalue %dx.types.CBufRet.f32 %6080, 0
  %6082 = extractvalue %dx.types.CBufRet.f32 %6080, 1
  %6083 = call float @dx.op.dot3.f32(i32 55, float %6077, float %6078, float %6079, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6084 = select i1 %264, float %6081, float %6077
  %6085 = select i1 %264, float %6083, float %6078
  %6086 = select i1 %264, float %6082, float %6079
  %6087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6088 = extractvalue %dx.types.CBufRet.f32 %6087, 2
  %6089 = fmul fast float %6088, %125
  %6090 = fmul fast float %6088, %126
  %6091 = fmul fast float %6088, %127
  %6092 = fadd fast float %6089, %205
  %6093 = fadd fast float %6090, %206
  %6094 = fadd fast float %6091, %207
  %6095 = fcmp fast olt float %6070, 0.000000e+00
  br i1 %6095, label %7353, label %6096

; <label>:6096                                    ; preds = %6072
  %6097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6098 = extractvalue %dx.types.CBufRet.f32 %6097, 0
  %6099 = extractvalue %dx.types.CBufRet.f32 %6097, 1
  %6100 = extractvalue %dx.types.CBufRet.f32 %6097, 2
  %6101 = extractvalue %dx.types.CBufRet.f32 %6097, 3
  %6102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6103 = extractvalue %dx.types.CBufRet.f32 %6102, 0
  %6104 = extractvalue %dx.types.CBufRet.f32 %6102, 1
  %6105 = extractvalue %dx.types.CBufRet.f32 %6102, 2
  %6106 = extractvalue %dx.types.CBufRet.f32 %6102, 3
  %6107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6108 = extractvalue %dx.types.CBufRet.f32 %6107, 0
  %6109 = extractvalue %dx.types.CBufRet.f32 %6107, 1
  %6110 = extractvalue %dx.types.CBufRet.f32 %6107, 2
  %6111 = extractvalue %dx.types.CBufRet.f32 %6107, 3
  %6112 = fmul fast float %6098, %6092
  %6113 = call float @dx.op.tertiary.f32(i32 46, float %6093, float %6099, float %6112)  ; FMad(a,b,c)
  %6114 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6100, float %6113)  ; FMad(a,b,c)
  %6115 = fadd fast float %6114, %6101
  %6116 = fmul fast float %6103, %6092
  %6117 = call float @dx.op.tertiary.f32(i32 46, float %6093, float %6104, float %6116)  ; FMad(a,b,c)
  %6118 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6105, float %6117)  ; FMad(a,b,c)
  %6119 = fadd fast float %6118, %6106
  %6120 = fmul fast float %6108, %6092
  %6121 = call float @dx.op.tertiary.f32(i32 46, float %6093, float %6109, float %6120)  ; FMad(a,b,c)
  %6122 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6110, float %6121)  ; FMad(a,b,c)
  %6123 = fadd fast float %6122, %6111
  %6124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6125 = extractvalue %dx.types.CBufRet.f32 %6124, 0
  %6126 = fcmp fast une float %6125, 0.000000e+00
  %6127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6128 = extractvalue %dx.types.CBufRet.f32 %6127, 0
  %6129 = extractvalue %dx.types.CBufRet.f32 %6127, 1
  %6130 = extractvalue %dx.types.CBufRet.f32 %6127, 3
  %6131 = fmul fast float %6130, %6115
  %6132 = fmul fast float %6130, %6119
  %6133 = fadd fast float %6131, %6128
  %6134 = fadd fast float %6132, %6129
  %6135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6136 = extractvalue %dx.types.CBufRet.f32 %6135, 0
  %6137 = extractvalue %dx.types.CBufRet.f32 %6135, 1
  %6138 = extractvalue %dx.types.CBufRet.f32 %6135, 3
  %6139 = fmul fast float %6138, %6115
  %6140 = fmul fast float %6138, %6119
  %6141 = fadd fast float %6139, %6136
  %6142 = fadd fast float %6140, %6137
  %6143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6144 = extractvalue %dx.types.CBufRet.f32 %6143, 1
  %6145 = fsub fast float %6144, %6123
  %6146 = extractvalue %dx.types.CBufRet.f32 %6143, 2
  %6147 = fmul fast float %6145, %6146
  %6148 = fsub fast float 1.000000e+00, %6147
  %6149 = call float @dx.op.unary.f32(i32 7, float %6148)  ; Saturate(value)
  br i1 %6126, label %6210, label %6150

; <label>:6150                                    ; preds = %6096
  %6151 = extractvalue %dx.types.CBufRet.f32 %6135, 2
  %6152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6153 = extractvalue %dx.types.CBufRet.f32 %6152, 2
  %6154 = fadd fast float %6153, %6151
  %6155 = fcmp fast ogt float %6154, 0.000000e+00
  br i1 %6155, label %6156, label %6180

; <label>:6156                                    ; preds = %6150
  %6157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.f32 %6157, 0
  %6159 = extractvalue %dx.types.CBufRet.f32 %6157, 1
  %6160 = fsub fast float %6141, %6158
  %6161 = fsub fast float %6142, %6159
  %6162 = fcmp fast olt float %6160, 0.000000e+00
  %6163 = fcmp fast olt float %6161, 0.000000e+00
  %6164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6165 = extractvalue %dx.types.CBufRet.f32 %6164, 0
  %6166 = extractvalue %dx.types.CBufRet.f32 %6164, 1
  %6167 = extractvalue %dx.types.CBufRet.f32 %6164, 2
  %6168 = extractvalue %dx.types.CBufRet.f32 %6164, 3
  %6169 = select i1 %6162, float %6165, float %6167
  %6170 = select i1 %6163, float %6166, float %6168
  %6171 = fmul fast float %6169, %6160
  %6172 = fmul fast float %6170, %6161
  %6173 = call float @dx.op.unary.f32(i32 6, float %6171)  ; FAbs(value)
  %6174 = call float @dx.op.unary.f32(i32 6, float %6172)  ; FAbs(value)
  %6175 = extractvalue %dx.types.CBufRet.f32 %6087, 0
  %6176 = call float @dx.op.binary.f32(i32 35, float %6173, float %6174)  ; FMax(a,b)
  %6177 = fsub fast float %6175, %6176
  %6178 = call float @dx.op.unary.f32(i32 7, float %6177)  ; Saturate(value)
  %6179 = fmul fast float %6178, %6149
  br label %6180

; <label>:6180                                    ; preds = %6156, %6150
  %6181 = phi float [ %6179, %6156 ], [ 0.000000e+00, %6150 ]
  %6182 = extractvalue %dx.types.CBufRet.f32 %6127, 2
  %6183 = extractvalue %dx.types.CBufRet.f32 %6152, 1
  %6184 = fadd fast float %6183, %6182
  %6185 = fcmp fast ogt float %6184, 0.000000e+00
  br i1 %6185, label %6186, label %6210

; <label>:6186                                    ; preds = %6180
  %6187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.f32 %6187, 0
  %6189 = extractvalue %dx.types.CBufRet.f32 %6187, 1
  %6190 = fsub fast float %6133, %6188
  %6191 = fsub fast float %6134, %6189
  %6192 = fcmp fast olt float %6190, 0.000000e+00
  %6193 = fcmp fast olt float %6191, 0.000000e+00
  %6194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6195 = extractvalue %dx.types.CBufRet.f32 %6194, 0
  %6196 = extractvalue %dx.types.CBufRet.f32 %6194, 1
  %6197 = extractvalue %dx.types.CBufRet.f32 %6194, 2
  %6198 = extractvalue %dx.types.CBufRet.f32 %6194, 3
  %6199 = select i1 %6192, float %6195, float %6197
  %6200 = select i1 %6193, float %6196, float %6198
  %6201 = fmul fast float %6199, %6190
  %6202 = fmul fast float %6200, %6191
  %6203 = call float @dx.op.unary.f32(i32 6, float %6201)  ; FAbs(value)
  %6204 = call float @dx.op.unary.f32(i32 6, float %6202)  ; FAbs(value)
  %6205 = extractvalue %dx.types.CBufRet.f32 %6087, 0
  %6206 = call float @dx.op.binary.f32(i32 35, float %6203, float %6204)  ; FMax(a,b)
  %6207 = fsub fast float %6205, %6206
  %6208 = call float @dx.op.unary.f32(i32 7, float %6207)  ; Saturate(value)
  %6209 = fmul fast float %6208, %6149
  br label %6210

; <label>:6210                                    ; preds = %6186, %6180, %6096
  %6211 = phi float [ 0.000000e+00, %6096 ], [ %6209, %6186 ], [ 0.000000e+00, %6180 ]
  %6212 = phi float [ 0.000000e+00, %6096 ], [ %6181, %6186 ], [ %6181, %6180 ]
  %6213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6214 = extractvalue %dx.types.CBufRet.f32 %6213, 1
  %6215 = call float @dx.op.unary.f32(i32 7, float %6214)  ; Saturate(value)
  %6216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6217 = extractvalue %dx.types.CBufRet.f32 %6216, 0
  %6218 = extractvalue %dx.types.CBufRet.f32 %6216, 1
  %6219 = fsub fast float %6115, %6217
  %6220 = fsub fast float %6119, %6218
  %6221 = fcmp fast olt float %6219, 0.000000e+00
  %6222 = fcmp fast olt float %6220, 0.000000e+00
  %6223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6224 = extractvalue %dx.types.CBufRet.f32 %6223, 0
  %6225 = extractvalue %dx.types.CBufRet.f32 %6223, 1
  %6226 = extractvalue %dx.types.CBufRet.f32 %6223, 2
  %6227 = extractvalue %dx.types.CBufRet.f32 %6223, 3
  %6228 = select i1 %6221, float %6224, float %6226
  %6229 = select i1 %6222, float %6225, float %6227
  %6230 = fmul fast float %6228, %6219
  %6231 = fmul fast float %6229, %6220
  %6232 = call float @dx.op.unary.f32(i32 6, float %6230)  ; FAbs(value)
  %6233 = call float @dx.op.unary.f32(i32 6, float %6231)  ; FAbs(value)
  %6234 = extractvalue %dx.types.CBufRet.f32 %6087, 0
  %6235 = call float @dx.op.binary.f32(i32 35, float %6232, float %6233)  ; FMax(a,b)
  %6236 = fsub fast float %6234, %6235
  %6237 = call float @dx.op.unary.f32(i32 7, float %6236)  ; Saturate(value)
  %6238 = call float @dx.op.binary.f32(i32 36, float %6237, float %6215)  ; FMin(a,b)
  %6239 = fmul fast float %6238, %6149
  %6240 = fsub fast float %6211, %6239
  %6241 = fsub fast float %6212, %6211
  %6242 = fsub fast float %6241, %6239
  %6243 = call float @dx.op.binary.f32(i32 35, float %6211, float %6212)  ; FMax(a,b)
  %6244 = call float @dx.op.binary.f32(i32 35, float %6239, float %6243)  ; FMax(a,b)
  %6245 = fcmp fast olt float %6244, 1.000000e+00
  br i1 %6245, label %6246, label %6644, !dx.controlflow.hints !107

; <label>:6246                                    ; preds = %6210
  %6247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6248 = extractvalue %dx.types.CBufRet.f32 %6247, 0
  %6249 = fcmp fast une float %6248, 0.000000e+00
  br i1 %6249, label %6250, label %6644, !dx.controlflow.hints !108

; <label>:6250                                    ; preds = %6246
  %6251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6252 = extractvalue %dx.types.CBufRet.f32 %6251, 0
  %6253 = extractvalue %dx.types.CBufRet.f32 %6251, 1
  %6254 = extractvalue %dx.types.CBufRet.f32 %6251, 2
  %6255 = extractvalue %dx.types.CBufRet.f32 %6251, 3
  %6256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6257 = extractvalue %dx.types.CBufRet.f32 %6256, 0
  %6258 = extractvalue %dx.types.CBufRet.f32 %6256, 1
  %6259 = extractvalue %dx.types.CBufRet.f32 %6256, 2
  %6260 = extractvalue %dx.types.CBufRet.f32 %6256, 3
  %6261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6262 = extractvalue %dx.types.CBufRet.f32 %6261, 0
  %6263 = extractvalue %dx.types.CBufRet.f32 %6261, 1
  %6264 = extractvalue %dx.types.CBufRet.f32 %6261, 2
  %6265 = extractvalue %dx.types.CBufRet.f32 %6261, 3
  %6266 = fmul fast float %6252, %6092
  %6267 = call float @dx.op.tertiary.f32(i32 46, float %6093, float %6253, float %6266)  ; FMad(a,b,c)
  %6268 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6254, float %6267)  ; FMad(a,b,c)
  %6269 = fadd fast float %6268, %6255
  %6270 = fmul fast float %6257, %6092
  %6271 = call float @dx.op.tertiary.f32(i32 46, float %6093, float %6258, float %6270)  ; FMad(a,b,c)
  %6272 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6259, float %6271)  ; FMad(a,b,c)
  %6273 = fadd fast float %6272, %6260
  %6274 = fmul fast float %6262, %6092
  %6275 = call float @dx.op.tertiary.f32(i32 46, float %6093, float %6263, float %6274)  ; FMad(a,b,c)
  %6276 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6264, float %6275)  ; FMad(a,b,c)
  %6277 = fadd fast float %6276, %6265
  %6278 = fcmp fast oge float %6269, 1.000000e+00
  %6279 = fcmp fast oge float %6273, 1.000000e+00
  %6280 = or i1 %6278, %6279
  %6281 = fcmp fast olt float %6269, 0.000000e+00
  %6282 = fcmp fast olt float %6273, 0.000000e+00
  %6283 = or i1 %6281, %6282
  %6284 = or i1 %6280, %6283
  br i1 %6284, label %6644, label %6285, !dx.controlflow.hints !109

; <label>:6285                                    ; preds = %6250
  %6286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6287 = extractvalue %dx.types.CBufRet.f32 %6286, 0
  %6288 = extractvalue %dx.types.CBufRet.f32 %6286, 1
  %6289 = extractvalue %dx.types.CBufRet.f32 %6286, 2
  %6290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6291 = extractvalue %dx.types.CBufRet.i32 %6290, 2
  %6292 = uitofp i32 %6291 to float
  %6293 = extractvalue %dx.types.CBufRet.i32 %6290, 3
  %6294 = uitofp i32 %6293 to float
  %6295 = extractvalue %dx.types.CBufRet.f32 %6286, 3
  %6296 = fmul fast float %6295, 2.000000e+00
  %6297 = fsub fast float %6269, %6287
  %6298 = fsub fast float %6273, %6288
  %6299 = fmul fast float %6296, %6297
  %6300 = fmul fast float %6296, %6298
  %6301 = fdiv fast float 1.000000e+00, %6075
  %6302 = fmul fast float %6300, %6301
  %6303 = call float @dx.op.unary.f32(i32 6, float %6302)  ; FAbs(value)
  %6304 = fmul fast float %6289, %6094
  %6305 = fmul fast float %6304, %6296
  %6306 = call float @dx.op.unary.f32(i32 6, float %6305)  ; FAbs(value)
  %6307 = call float @dx.op.unary.f32(i32 6, float %6299)  ; FAbs(value)
  %6308 = call float @dx.op.binary.f32(i32 35, float %6306, float %6303)  ; FMax(a,b)
  %6309 = call float @dx.op.binary.f32(i32 35, float %6307, float %6308)  ; FMax(a,b)
  %6310 = fmul fast float %6309, 2.000000e+00
  %6311 = call float @dx.op.unary.f32(i32 23, float %6310)  ; Log(value)
  %6312 = call float @dx.op.binary.f32(i32 35, float %6311, float %6292)  ; FMax(a,b)
  %6313 = call float @dx.op.unary.f32(i32 22, float %6312)  ; Frc(value)
  %6314 = fadd fast float %6313, 0xBFEA666660000000
  %6315 = fmul fast float %6314, 8.000000e+00
  %6316 = call float @dx.op.unary.f32(i32 7, float %6315)  ; Saturate(value)
  %6317 = call float @dx.op.unary.f32(i32 27, float %6312)  ; Round_ni(value)
  %6318 = fadd fast float %6317, %6316
  %6319 = call float @dx.op.binary.f32(i32 36, float %6318, float %6294)  ; FMin(a,b)
  %6320 = call float @dx.op.unary.f32(i32 27, float %6319)  ; Round_ni(value)
  %6321 = fsub fast float -0.000000e+00, %6320
  %6322 = call float @dx.op.unary.f32(i32 21, float %6321)  ; Exp(value)
  %6323 = fmul fast float %6322, %6296
  %6324 = fmul fast float %6323, %6269
  %6325 = fmul fast float %6323, %6273
  %6326 = fmul fast float %6324, 2.500000e-01
  %6327 = fmul fast float %6325, 2.500000e-01
  %6328 = fadd fast float %6326, 5.000000e-01
  %6329 = fadd fast float %6327, 5.000000e-01
  %6330 = fsub fast float %6294, %6292
  %6331 = fptoui float %6330 to i32
  %6332 = add i32 %6331, 320
  %6333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %6332)  ; CBufferLoadLegacy(handle,regIndex)
  %6334 = extractvalue %dx.types.CBufRet.f32 %6333, 0
  %6335 = extractvalue %dx.types.CBufRet.f32 %6333, 1
  %6336 = fcmp fast une float %6319, %6294
  %6337 = fsub fast float %6269, %6334
  %6338 = fsub fast float %6273, %6335
  %6339 = call float @dx.op.unary.f32(i32 6, float %6337)  ; FAbs(value)
  %6340 = call float @dx.op.unary.f32(i32 6, float %6338)  ; FAbs(value)
  %6341 = fmul fast float %6339, %6323
  %6342 = fmul fast float %6340, %6323
  %6343 = fcmp fast olt float %6341, 1.000000e+00
  %6344 = fcmp fast olt float %6342, 1.000000e+00
  %6345 = and i1 %6343, %6344
  %6346 = or i1 %6336, %6345
  br i1 %6346, label %6347, label %6644, !dx.controlflow.hints !110

; <label>:6347                                    ; preds = %6285
  %6348 = fmul fast float %6325, 5.000000e-01
  %6349 = fmul fast float %6324, 5.000000e-01
  %6350 = fadd fast float %6348, 5.000000e-01
  %6351 = fadd fast float %6349, 5.000000e-01
  %6352 = sitofp i32 %6291 to float
  %6353 = fsub fast float %6319, %6352
  %6354 = call float @dx.op.unary.f32(i32 27, float %6353)  ; Round_ni(value)
  %6355 = call float @dx.op.unary.f32(i32 22, float %6319)  ; Frc(value)
  %6356 = call float @dx.op.unary.f32(i32 22, float %6351)  ; Frc(value)
  %6357 = call float @dx.op.unary.f32(i32 22, float %6350)  ; Frc(value)
  %6358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6356, float %6357, float %6354, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6359 = extractvalue %dx.types.ResRet.f32 %6358, 0
  %6360 = extractvalue %dx.types.ResRet.f32 %6358, 1
  %6361 = extractvalue %dx.types.ResRet.f32 %6358, 2
  %6362 = extractvalue %dx.types.ResRet.f32 %6358, 3
  %6363 = fcmp fast ogt float %6355, 0.000000e+00
  br i1 %6363, label %6364, label %6385, !dx.controlflow.hints !111

; <label>:6364                                    ; preds = %6347
  %6365 = fadd fast float %6354, 1.000000e+00
  %6366 = call float @dx.op.unary.f32(i32 22, float %6328)  ; Frc(value)
  %6367 = call float @dx.op.unary.f32(i32 22, float %6329)  ; Frc(value)
  %6368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6366, float %6367, float %6365, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6369 = extractvalue %dx.types.ResRet.f32 %6368, 0
  %6370 = extractvalue %dx.types.ResRet.f32 %6368, 1
  %6371 = extractvalue %dx.types.ResRet.f32 %6368, 2
  %6372 = extractvalue %dx.types.ResRet.f32 %6368, 3
  %6373 = fsub fast float %6369, %6359
  %6374 = fsub fast float %6370, %6360
  %6375 = fsub fast float %6371, %6361
  %6376 = fsub fast float %6372, %6362
  %6377 = fmul fast float %6373, %6355
  %6378 = fmul fast float %6374, %6355
  %6379 = fmul fast float %6375, %6355
  %6380 = fmul fast float %6376, %6355
  %6381 = fadd fast float %6377, %6359
  %6382 = fadd fast float %6378, %6360
  %6383 = fadd fast float %6379, %6361
  %6384 = fadd fast float %6380, %6362
  br label %6385

; <label>:6385                                    ; preds = %6364, %6347
  %6386 = phi float [ %6381, %6364 ], [ %6359, %6347 ]
  %6387 = phi float [ %6382, %6364 ], [ %6360, %6347 ]
  %6388 = phi float [ %6383, %6364 ], [ %6361, %6347 ]
  %6389 = phi float [ %6384, %6364 ], [ %6362, %6347 ]
  %6390 = fadd fast float %6386, -5.000000e-01
  %6391 = fadd fast float %6388, -5.000000e-01
  %6392 = fmul fast float %6390, 0xBFD5555560000000
  %6393 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6391, float %6392)  ; FMad(a,b,c)
  %6394 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6387, float 0.000000e+00)  ; FMad(a,b,c)
  %6395 = fadd fast float %6394, %6389
  %6396 = fmul fast float %6390, -7.500000e-01
  %6397 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6391, float %6396)  ; FMad(a,b,c)
  %6398 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6387, float 0.000000e+00)  ; FMad(a,b,c)
  %6399 = fadd fast float %6398, %6389
  %6400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6401 = extractvalue %dx.types.CBufRet.f32 %6400, 0
  %6402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6403 = extractvalue %dx.types.CBufRet.f32 %6402, 0
  %6404 = extractvalue %dx.types.CBufRet.f32 %6402, 1
  %6405 = extractvalue %dx.types.CBufRet.f32 %6402, 2
  %6406 = extractvalue %dx.types.CBufRet.f32 %6402, 3
  %6407 = fsub fast float %6403, %6393
  %6408 = fsub fast float %6404, %6395
  %6409 = fsub fast float %6405, %6397
  %6410 = fsub fast float %6406, %6399
  %6411 = fmul fast float %6407, %6401
  %6412 = fmul fast float %6408, %6401
  %6413 = fmul fast float %6409, %6401
  %6414 = fmul fast float %6410, %6401
  %6415 = fadd fast float %6411, %6393
  %6416 = fadd fast float %6412, %6395
  %6417 = fadd fast float %6413, %6397
  %6418 = fadd fast float %6414, %6399
  %6419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6420 = extractvalue %dx.types.ResRet.i32 %6419, 0
  %6421 = and i32 %6420, 536870911
  %6422 = uitofp i32 %6421 to float
  %6423 = fmul fast float %6422, %6269
  %6424 = fmul fast float %6422, %6273
  %6425 = fptoui float %6423 to i32
  %6426 = fptoui float %6424 to i32
  %6427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6428 = extractvalue %dx.types.ResRet.i32 %6427, 0
  %6429 = and i32 %6428, 31
  %6430 = lshr i32 %6425, %6429
  %6431 = lshr i32 %6426, %6429
  %6432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6433 = extractvalue %dx.types.ResRet.i32 %6432, 0
  %6434 = and i32 %6433, 31
  %6435 = shl i32 1, %6434
  %6436 = call i32 @dx.op.binary.i32(i32 40, i32 %6435, i32 4)  ; UMin(a,b)
  %6437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6438 = extractvalue %dx.types.ResRet.i32 %6437, 0
  %6439 = extractvalue %dx.types.ResRet.i32 %6437, 1
  %6440 = icmp eq i32 %6436, 0
  br i1 %6440, label %6482, label %6441

; <label>:6441                                    ; preds = %6385
  br label %6442

; <label>:6442                                    ; preds = %6470, %6441
  %6443 = phi i32 [ %6473, %6470 ], [ 0, %6441 ]
  %6444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6445 = extractvalue %dx.types.ResRet.i32 %6444, 0
  %6446 = lshr i32 %6445, 16
  %6447 = and i32 %6446, 31
  %6448 = shl i32 %6431, %6447
  %6449 = add i32 %6448, %6430
  %6450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6451 = extractvalue %dx.types.ResRet.i32 %6450, 0
  %6452 = and i32 %6451, 31
  %6453 = shl i32 %6449, %6452
  %6454 = add i32 %6453, %6443
  %6455 = shl i32 %6454, 2
  %6456 = add i32 %6455, 32
  %6457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6456, i32 undef)  ; BufferLoad(srv,index,wot)
  %6458 = extractvalue %dx.types.ResRet.i32 %6457, 0
  %6459 = icmp slt i32 %6458, 0
  %6460 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6443
  %6461 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6443
  %6462 = bitcast float* %6460 to i32*
  %6463 = bitcast float* %6461 to i32*
  br i1 %6459, label %6464, label %6470

; <label>:6464                                    ; preds = %6442
  %6465 = and i32 %6458, 1073741823
  %6466 = add nuw nsw i32 %6465, 20
  %6467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6466, i32 undef)  ; BufferLoad(srv,index,wot)
  %6468 = extractvalue %dx.types.ResRet.i32 %6467, 0
  %6469 = extractvalue %dx.types.ResRet.i32 %6467, 1
  br label %6470

; <label>:6470                                    ; preds = %6464, %6442
  %6471 = phi i32 [ %6468, %6464 ], [ %6438, %6442 ]
  %6472 = phi i32 [ %6469, %6464 ], [ %6439, %6442 ]
  store i32 %6471, i32* %6462, align 4
  store i32 %6472, i32* %6463, align 4
  %6473 = add nuw i32 %6443, 1
  %6474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6475 = extractvalue %dx.types.CBufRet.i32 %6474, 2
  %6476 = icmp eq i32 %6475, 0
  %6477 = icmp ugt i32 %6458, -1073741825
  %6478 = and i1 %6477, %6476
  %6479 = icmp ult i32 %6473, %6436
  %6480 = and i1 %6478, %6479
  br i1 %6480, label %6442, label %6481

; <label>:6481                                    ; preds = %6470
  br label %6482

; <label>:6482                                    ; preds = %6481, %6385
  %6483 = phi i32 [ 0, %6385 ], [ %6473, %6481 ]
  %6484 = extractvalue %dx.types.CBufRet.f32 %6247, 2
  %6485 = fptoui float %6484 to i32
  %6486 = icmp eq i32 %6485, 0
  br i1 %6486, label %6538, label %6487

; <label>:6487                                    ; preds = %6482
  br label %6488

; <label>:6488                                    ; preds = %6533, %6487
  %6489 = phi i32 [ %6534, %6533 ], [ %6483, %6487 ]
  %6490 = phi i32 [ %6535, %6533 ], [ 0, %6487 ]
  %6491 = lshr i32 %6490, 2
  %6492 = and i32 %6490, 3
  %6493 = add nuw nsw i32 %6491, 83
  %6494 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 %6493)  ; CBufferLoadLegacy(handle,regIndex)
  %6495 = extractvalue %dx.types.CBufRet.i32 %6494, 0
  %6496 = extractvalue %dx.types.CBufRet.i32 %6494, 1
  %6497 = extractvalue %dx.types.CBufRet.i32 %6494, 2
  %6498 = extractvalue %dx.types.CBufRet.i32 %6494, 3
  %6499 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 0
  store i32 %6495, i32* %6499, align 4
  %6500 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 1
  store i32 %6496, i32* %6500, align 4
  %6501 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 2
  store i32 %6497, i32* %6501, align 4
  %6502 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 3
  store i32 %6498, i32* %6502, align 4
  %6503 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 %6492
  %6504 = load i32, i32* %6503, align 4, !tbaa !112, !noalias !116
  %6505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6506 = extractvalue %dx.types.ResRet.i32 %6505, 0
  %6507 = lshr i32 %6506, 16
  %6508 = and i32 %6507, 31
  %6509 = shl i32 %6431, %6508
  %6510 = add i32 %6509, %6430
  %6511 = shl i32 %6510, 2
  %6512 = add i32 %6511, %6504
  %6513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6512, i32 undef)  ; BufferLoad(srv,index,wot)
  %6514 = extractvalue %dx.types.ResRet.i32 %6513, 0
  %6515 = icmp eq i32 %6514, 0
  br i1 %6515, label %6533, label %6516

; <label>:6516                                    ; preds = %6488
  %6517 = icmp slt i32 %6514, 0
  %6518 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6489
  %6519 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6489
  %6520 = bitcast float* %6518 to i32*
  %6521 = bitcast float* %6519 to i32*
  br i1 %6517, label %6522, label %6529

; <label>:6522                                    ; preds = %6516
  %6523 = and i32 %6514, 1073741823
  %6524 = add i32 %6504, 20
  %6525 = add i32 %6524, %6523
  %6526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6525, i32 undef)  ; BufferLoad(srv,index,wot)
  %6527 = extractvalue %dx.types.ResRet.i32 %6526, 0
  %6528 = extractvalue %dx.types.ResRet.i32 %6526, 1
  br label %6529

; <label>:6529                                    ; preds = %6522, %6516
  %6530 = phi i32 [ %6527, %6522 ], [ %6438, %6516 ]
  %6531 = phi i32 [ %6528, %6522 ], [ %6439, %6516 ]
  store i32 %6530, i32* %6520, align 4
  store i32 %6531, i32* %6521, align 4
  %6532 = add i32 %6489, 1
  br label %6533

; <label>:6533                                    ; preds = %6529, %6488
  %6534 = phi i32 [ %6489, %6488 ], [ %6532, %6529 ]
  %6535 = add nuw i32 %6490, 1
  %6536 = icmp eq i32 %6535, %6485
  br i1 %6536, label %6537, label %6488

; <label>:6537                                    ; preds = %6533
  br label %6538

; <label>:6538                                    ; preds = %6537, %6482
  %6539 = phi i32 [ %6483, %6482 ], [ %6534, %6537 ]
  %6540 = icmp eq i32 %6539, 1
  %6541 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 0
  %6542 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 0
  br i1 %6540, label %6543, label %6546

; <label>:6543                                    ; preds = %6538
  %6544 = load float, float* %6541, align 4
  %6545 = load float, float* %6542, align 4
  br label %6573

; <label>:6546                                    ; preds = %6538
  %6547 = load float, float* %6541, align 4
  %6548 = load float, float* %6542, align 4
  %6549 = fdiv fast float 1.000000e+00, %6548
  %6550 = fsub fast float %6547, %6549
  %6551 = icmp ugt i32 %6539, 1
  br i1 %6551, label %6552, label %6568

; <label>:6552                                    ; preds = %6546
  br label %6553

; <label>:6553                                    ; preds = %6553, %6552
  %6554 = phi float [ %6563, %6553 ], [ %6550, %6552 ]
  %6555 = phi float [ %6564, %6553 ], [ %6547, %6552 ]
  %6556 = phi i32 [ %6565, %6553 ], [ 1, %6552 ]
  %6557 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6556
  %6558 = load float, float* %6557, align 4
  %6559 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6556
  %6560 = load float, float* %6559, align 4
  %6561 = fdiv fast float 1.000000e+00, %6560
  %6562 = fsub fast float %6558, %6561
  %6563 = call float @dx.op.binary.f32(i32 36, float %6554, float %6562)  ; FMin(a,b)
  %6564 = call float @dx.op.binary.f32(i32 35, float %6555, float %6558)  ; FMax(a,b)
  %6565 = add nuw i32 %6556, 1
  %6566 = icmp eq i32 %6565, %6539
  br i1 %6566, label %6567, label %6553

; <label>:6567                                    ; preds = %6553
  br label %6568

; <label>:6568                                    ; preds = %6567, %6546
  %6569 = phi float [ %6550, %6546 ], [ %6563, %6567 ]
  %6570 = phi float [ %6547, %6546 ], [ %6564, %6567 ]
  %6571 = fsub fast float %6570, %6569
  %6572 = fdiv fast float 1.000000e+00, %6571
  br label %6573

; <label>:6573                                    ; preds = %6568, %6543
  %6574 = phi float [ %6544, %6543 ], [ %6570, %6568 ]
  %6575 = phi float [ %6545, %6543 ], [ %6572, %6568 ]
  %6576 = fadd fast float %6277, %6574
  %6577 = fmul fast float %6576, %6575
  %6578 = call float @dx.op.unary.f32(i32 7, float %6577)  ; Saturate(value)
  %6579 = fmul fast float %6578, 2.000000e+00
  %6580 = fsub fast float 1.000000e+00, %6579
  %6581 = fmul fast float %6415, %6415
  %6582 = fsub fast float %6416, %6581
  %6583 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6582)  ; FMax(a,b)
  %6584 = fdiv fast float 1.000000e+00, %6583
  %6585 = fmul fast float %6416, %6415
  %6586 = fsub fast float %6417, %6585
  %6587 = fsub fast float %6580, %6415
  %6588 = fmul fast float %6580, %6580
  %6589 = fsub fast float %6588, %6416
  %6590 = fmul fast float %6584, %6586
  %6591 = fmul fast float %6590, %6587
  %6592 = fsub fast float %6589, %6591
  %6593 = fmul fast float %6416, %6416
  %6594 = fsub fast float %6418, %6593
  %6595 = fmul fast float %6586, %6586
  %6596 = fmul fast float %6595, %6584
  %6597 = fsub fast float %6594, %6596
  %6598 = fdiv fast float %6592, %6597
  %6599 = fmul fast float %6598, %6586
  %6600 = fsub fast float %6587, %6599
  %6601 = fmul fast float %6600, %6584
  %6602 = fmul fast float %6601, %6415
  %6603 = fsub fast float 1.000000e+00, %6602
  %6604 = fmul fast float %6598, %6416
  %6605 = fsub fast float %6603, %6604
  %6606 = fmul fast float %6601, %6601
  %6607 = fmul fast float %6598, 4.000000e+00
  %6608 = fmul fast float %6607, %6605
  %6609 = fsub fast float %6606, %6608
  %6610 = call float @dx.op.unary.f32(i32 24, float %6609)  ; Sqrt(value)
  %6611 = fcmp fast oge float %6601, 0.000000e+00
  %6612 = fsub fast float -0.000000e+00, %6610
  %6613 = select i1 %6611, float %6612, float %6610
  %6614 = fsub fast float %6613, %6601
  %6615 = fdiv fast float %6614, %6598
  %6616 = fdiv fast float %6605, %6614
  %6617 = fmul fast float %6615, 5.000000e-01
  %6618 = fmul fast float %6616, 2.000000e+00
  %6619 = select i1 %6611, float %6617, float %6618
  %6620 = select i1 %6611, float %6618, float %6617
  %6621 = call float @dx.op.binary.f32(i32 35, float %6619, float %6620)  ; FMax(a,b)
  %6622 = call float @dx.op.binary.f32(i32 36, float %6619, float %6620)  ; FMin(a,b)
  %6623 = fcmp fast ogt float %6580, %6621
  %6624 = fsub fast float %6580, %6622
  %6625 = fsub fast float %6580, %6621
  %6626 = fsub fast float %6621, %6622
  %6627 = select i1 %6623, float %6625, float %6626
  %6628 = fmul float %6624, %6627
  %6629 = select i1 %6623, float %6622, float %6580
  %6630 = fcmp fast ogt float %6580, %6622
  %6631 = fmul fast float %6629, %6621
  %6632 = fadd fast float %6629, %6621
  %6633 = fmul fast float %6632, %6415
  %6634 = fadd fast float %6631, %6416
  %6635 = fsub fast float %6634, %6633
  %6636 = fdiv fast float %6635, %6628
  %6637 = select i1 %6630, float %6636, float 0.000000e+00
  %6638 = fsub fast float 1.000000e+00, %6637
  %6639 = select i1 %6623, float %6638, float %6637
  %6640 = call float @dx.op.unary.f32(i32 7, float %6639)  ; Saturate(value)
  %6641 = extractvalue %dx.types.CBufRet.f32 %6400, 3
  %6642 = fmul fast float %6641, %6640
  %6643 = fsub fast float 1.000000e+00, %6642
  br label %6644

; <label>:6644                                    ; preds = %6573, %6285, %6250, %6246, %6210
  %6645 = phi float [ 1.000000e+00, %6210 ], [ %6643, %6573 ], [ 1.000000e+00, %6250 ], [ 1.000000e+00, %6285 ], [ 1.000000e+00, %6246 ]
  %6646 = fcmp fast ogt float %6242, 0.000000e+00
  br i1 %6646, label %6647, label %6811, !dx.controlflow.hints !125

; <label>:6647                                    ; preds = %6644
  %6648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6649 = extractvalue %dx.types.CBufRet.f32 %6648, 2
  %6650 = fadd fast float %6649, %6123
  %6651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6652 = extractvalue %dx.types.CBufRet.f32 %6651, 2
  %6653 = extractvalue %dx.types.CBufRet.f32 %6651, 3
  %6654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6655 = extractvalue %dx.types.CBufRet.f32 %6654, 2
  %6656 = call float @dx.op.binary.f32(i32 35, float %6650, float 0.000000e+00)  ; FMax(a,b)
  %6657 = fadd fast float %6656, 0x3F10000000000000
  %6658 = fcmp fast oeq float %6655, 0.000000e+00
  br i1 %6658, label %6659, label %6726

; <label>:6659                                    ; preds = %6647
  %6660 = extractvalue %dx.types.CBufRet.f32 %6651, 1
  %6661 = extractvalue %dx.types.CBufRet.f32 %6651, 0
  %6662 = fmul fast float %6661, %6141
  %6663 = fmul fast float %6660, %6142
  %6664 = fadd fast float %6662, 5.000000e-01
  %6665 = call float @dx.op.unary.f32(i32 27, float %6664)  ; Round_ni(value)
  %6666 = fadd fast float %6663, 5.000000e-01
  %6667 = call float @dx.op.unary.f32(i32 27, float %6666)  ; Round_ni(value)
  %6668 = fsub fast float %6664, %6665
  %6669 = fsub fast float %6666, %6667
  %6670 = fadd fast float %6665, -5.000000e-01
  %6671 = fadd fast float %6667, -5.000000e-01
  %6672 = fmul fast float %6668, 2.000000e+00
  %6673 = fsub fast float 3.000000e+00, %6672
  %6674 = fadd fast float %6672, 1.000000e+00
  %6675 = fsub fast float 2.000000e+00, %6668
  %6676 = bitcast float %6673 to i32
  %6677 = sub nsw i32 2129859010, %6676
  %6678 = bitcast i32 %6677 to float
  %6679 = fmul fast float %6678, %6675
  %6680 = fadd fast float %6679, -1.000000e+00
  %6681 = bitcast float %6674 to i32
  %6682 = sub nsw i32 2129859010, %6681
  %6683 = bitcast i32 %6682 to float
  %6684 = fmul fast float %6683, %6668
  %6685 = fadd fast float %6684, 1.000000e+00
  %6686 = fmul fast float %6669, 2.000000e+00
  %6687 = fsub fast float 3.000000e+00, %6686
  %6688 = fadd fast float %6686, 1.000000e+00
  %6689 = fsub fast float 2.000000e+00, %6669
  %6690 = bitcast float %6687 to i32
  %6691 = sub nsw i32 2129859010, %6690
  %6692 = bitcast i32 %6691 to float
  %6693 = fmul fast float %6692, %6689
  %6694 = fadd fast float %6693, -1.000000e+00
  %6695 = bitcast float %6688 to i32
  %6696 = sub nsw i32 2129859010, %6695
  %6697 = bitcast i32 %6696 to float
  %6698 = fmul fast float %6697, %6669
  %6699 = fadd fast float %6698, 1.000000e+00
  %6700 = fadd fast float %6680, %6670
  %6701 = fmul fast float %6700, %6652
  %6702 = fadd fast float %6694, %6671
  %6703 = fmul fast float %6702, %6653
  %6704 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6701, float %6703, float undef, float undef, i32 0, i32 0, i32 undef, float %6657)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6705 = extractvalue %dx.types.ResRet.f32 %6704, 0
  %6706 = fmul fast float %6705, %6673
  %6707 = fadd fast float %6685, %6670
  %6708 = fmul fast float %6707, %6652
  %6709 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6708, float %6703, float undef, float undef, i32 0, i32 0, i32 undef, float %6657)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6710 = extractvalue %dx.types.ResRet.f32 %6709, 0
  %6711 = fmul fast float %6710, %6674
  %6712 = fadd fast float %6699, %6671
  %6713 = fmul fast float %6712, %6653
  %6714 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6701, float %6713, float undef, float undef, i32 0, i32 0, i32 undef, float %6657)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6715 = extractvalue %dx.types.ResRet.f32 %6714, 0
  %6716 = fmul fast float %6715, %6673
  %6717 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6708, float %6713, float undef, float undef, i32 0, i32 0, i32 undef, float %6657)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6718 = extractvalue %dx.types.ResRet.f32 %6717, 0
  %6719 = fmul fast float %6718, %6674
  %6720 = fadd fast float %6719, %6716
  %6721 = fmul fast float %6720, %6688
  %6722 = fadd fast float %6711, %6706
  %6723 = fmul fast float %6722, %6687
  %6724 = fadd fast float %6723, %6721
  %6725 = fmul fast float %6724, 6.250000e-02
  br label %6811

; <label>:6726                                    ; preds = %6647
  %6727 = fmul fast float %275, 0x401921FB60000000
  %6728 = call float @dx.op.unary.f32(i32 13, float %6727)  ; Sin(value)
  %6729 = call float @dx.op.unary.f32(i32 12, float %6727)  ; Cos(value)
  %6730 = fsub fast float -0.000000e+00, %6728
  br label %6731

; <label>:6731                                    ; preds = %6780, %6726
  %6732 = phi float [ 0.000000e+00, %6726 ], [ %6775, %6780 ]
  %6733 = phi float [ 0.000000e+00, %6726 ], [ %6777, %6780 ]
  %6734 = phi i32 [ 0, %6726 ], [ %6781, %6780 ]
  %6735 = mul i32 %6734, 2
  %6736 = add i32 0, %6735
  %6737 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6736
  %6738 = load float, float* %6737, align 4
  %6739 = mul i32 %6734, 2
  %6740 = add i32 1, %6739
  %6741 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6740
  %6742 = load float, float* %6741, align 4
  %6743 = fmul fast float %6738, %6729
  %6744 = call float @dx.op.tertiary.f32(i32 46, float %6742, float %6730, float %6743)  ; FMad(a,b,c)
  %6745 = fmul fast float %6738, %6728
  %6746 = call float @dx.op.tertiary.f32(i32 46, float %6742, float %6729, float %6745)  ; FMad(a,b,c)
  %6747 = fmul fast float %6744, %6655
  %6748 = fmul fast float %6746, %6655
  %6749 = fadd fast float %6747, %6141
  %6750 = fadd fast float %6748, %6142
  %6751 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %56, float %6749, float %6750, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6752 = extractvalue %dx.types.ResRet.f32 %6751, 0
  %6753 = extractvalue %dx.types.ResRet.f32 %6751, 1
  %6754 = extractvalue %dx.types.ResRet.f32 %6751, 2
  %6755 = extractvalue %dx.types.ResRet.f32 %6751, 3
  %6756 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 0
  store float %6752, float* %6756, align 4
  %6757 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 1
  store float %6753, float* %6757, align 4
  %6758 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 2
  store float %6754, float* %6758, align 4
  %6759 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 3
  store float %6755, float* %6759, align 4
  %6760 = fsub fast float %6752, %6657
  %6761 = fcmp fast olt float %6760, 0.000000e+00
  %6762 = select i1 %6761, float 0.000000e+00, float 1.000000e+00
  %6763 = fadd fast float %6762, %6732
  %6764 = fmul fast float %6762, %6760
  %6765 = fadd fast float %6764, %6733
  br label %6766

; <label>:6766                                    ; preds = %6766, %6731
  %6767 = phi i32 [ 1, %6731 ], [ %6778, %6766 ]
  %6768 = phi float [ %6765, %6731 ], [ %6777, %6766 ]
  %6769 = phi float [ %6763, %6731 ], [ %6775, %6766 ]
  %6770 = getelementptr [4 x float], [4 x float]* %111, i32 0, i32 %6767
  %6771 = load float, float* %6770, align 4, !tbaa !126, !noalias !116
  %6772 = fsub fast float %6771, %6657
  %6773 = fcmp fast olt float %6772, 0.000000e+00
  %6774 = select i1 %6773, float 0.000000e+00, float 1.000000e+00
  %6775 = fadd fast float %6774, %6769
  %6776 = fmul fast float %6774, %6772
  %6777 = fadd fast float %6776, %6768
  %6778 = add nuw nsw i32 %6767, 1
  %6779 = icmp eq i32 %6778, 4
  br i1 %6779, label %6780, label %6766, !llvm.loop !128

; <label>:6780                                    ; preds = %6766
  %6781 = add nuw nsw i32 %6734, 1
  %6782 = icmp eq i32 %6781, 8
  br i1 %6782, label %6783, label %6731, !llvm.loop !129

; <label>:6783                                    ; preds = %6780
  %6784 = fdiv fast float 1.000000e+00, %6775
  %6785 = fmul fast float %6784, %6777
  %6786 = fdiv fast float 1.000000e+00, %6657
  %6787 = fmul fast float %6785, %6786
  %6788 = call float @dx.op.unary.f32(i32 7, float %6787)  ; Saturate(value)
  %6789 = call float @dx.op.binary.f32(i32 35, float %6788, float 0.000000e+00)  ; FMax(a,b)
  %6790 = fmul fast float %6775, 3.125000e-02
  %6791 = call float @dx.op.unary.f32(i32 7, float %6790)  ; Saturate(value)
  %6792 = fmul fast float %6791, 2.000000e+00
  %6793 = fadd fast float %6792, -1.000000e+00
  %6794 = fcmp fast ogt float %6793, 0.000000e+00
  %6795 = fcmp fast olt float %6793, 0.000000e+00
  %6796 = zext i1 %6794 to i32
  %6797 = zext i1 %6795 to i32
  %6798 = sub nsw i32 %6796, %6797
  %6799 = sitofp i32 %6798 to float
  %6800 = fmul fast float %6799, %6793
  %6801 = fsub fast float 1.000000e+00, %6800
  %6802 = fmul fast float %6801, %6801
  %6803 = fmul fast float %6802, %6801
  %6804 = fsub fast float %6801, %6803
  %6805 = fmul fast float %6804, %6789
  %6806 = fsub fast float 1.000000e+00, %6803
  %6807 = fsub fast float %6806, %6805
  %6808 = fmul fast float %6799, 5.000000e-01
  %6809 = fmul fast float %6808, %6807
  %6810 = fsub fast float 5.000000e-01, %6809
  br label %6811

; <label>:6811                                    ; preds = %6783, %6659, %6644
  %6812 = phi float [ 1.000000e+00, %6644 ], [ %6725, %6659 ], [ %6810, %6783 ]
  %6813 = fcmp fast ogt float %6240, 0.000000e+00
  br i1 %6813, label %6814, label %6978, !dx.controlflow.hints !130

; <label>:6814                                    ; preds = %6811
  %6815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6816 = extractvalue %dx.types.CBufRet.f32 %6815, 1
  %6817 = fadd fast float %6816, %6123
  %6818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6819 = extractvalue %dx.types.CBufRet.f32 %6818, 2
  %6820 = extractvalue %dx.types.CBufRet.f32 %6818, 3
  %6821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6822 = extractvalue %dx.types.CBufRet.f32 %6821, 1
  %6823 = call float @dx.op.binary.f32(i32 35, float %6817, float 0.000000e+00)  ; FMax(a,b)
  %6824 = fadd fast float %6823, 0x3F10000000000000
  %6825 = fcmp fast oeq float %6822, 0.000000e+00
  br i1 %6825, label %6826, label %6893

; <label>:6826                                    ; preds = %6814
  %6827 = extractvalue %dx.types.CBufRet.f32 %6818, 1
  %6828 = extractvalue %dx.types.CBufRet.f32 %6818, 0
  %6829 = fmul fast float %6828, %6133
  %6830 = fmul fast float %6827, %6134
  %6831 = fadd fast float %6829, 5.000000e-01
  %6832 = call float @dx.op.unary.f32(i32 27, float %6831)  ; Round_ni(value)
  %6833 = fadd fast float %6830, 5.000000e-01
  %6834 = call float @dx.op.unary.f32(i32 27, float %6833)  ; Round_ni(value)
  %6835 = fsub fast float %6831, %6832
  %6836 = fsub fast float %6833, %6834
  %6837 = fadd fast float %6832, -5.000000e-01
  %6838 = fadd fast float %6834, -5.000000e-01
  %6839 = fmul fast float %6835, 2.000000e+00
  %6840 = fsub fast float 3.000000e+00, %6839
  %6841 = fadd fast float %6839, 1.000000e+00
  %6842 = fsub fast float 2.000000e+00, %6835
  %6843 = bitcast float %6840 to i32
  %6844 = sub nsw i32 2129859010, %6843
  %6845 = bitcast i32 %6844 to float
  %6846 = fmul fast float %6845, %6842
  %6847 = fadd fast float %6846, -1.000000e+00
  %6848 = bitcast float %6841 to i32
  %6849 = sub nsw i32 2129859010, %6848
  %6850 = bitcast i32 %6849 to float
  %6851 = fmul fast float %6850, %6835
  %6852 = fadd fast float %6851, 1.000000e+00
  %6853 = fmul fast float %6836, 2.000000e+00
  %6854 = fsub fast float 3.000000e+00, %6853
  %6855 = fadd fast float %6853, 1.000000e+00
  %6856 = fsub fast float 2.000000e+00, %6836
  %6857 = bitcast float %6854 to i32
  %6858 = sub nsw i32 2129859010, %6857
  %6859 = bitcast i32 %6858 to float
  %6860 = fmul fast float %6859, %6856
  %6861 = fadd fast float %6860, -1.000000e+00
  %6862 = bitcast float %6855 to i32
  %6863 = sub nsw i32 2129859010, %6862
  %6864 = bitcast i32 %6863 to float
  %6865 = fmul fast float %6864, %6836
  %6866 = fadd fast float %6865, 1.000000e+00
  %6867 = fadd fast float %6847, %6837
  %6868 = fmul fast float %6867, %6819
  %6869 = fadd fast float %6861, %6838
  %6870 = fmul fast float %6869, %6820
  %6871 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6868, float %6870, float undef, float undef, i32 0, i32 0, i32 undef, float %6824)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6872 = extractvalue %dx.types.ResRet.f32 %6871, 0
  %6873 = fmul fast float %6872, %6840
  %6874 = fadd fast float %6852, %6837
  %6875 = fmul fast float %6874, %6819
  %6876 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6875, float %6870, float undef, float undef, i32 0, i32 0, i32 undef, float %6824)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6877 = extractvalue %dx.types.ResRet.f32 %6876, 0
  %6878 = fmul fast float %6877, %6841
  %6879 = fadd fast float %6866, %6838
  %6880 = fmul fast float %6879, %6820
  %6881 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6868, float %6880, float undef, float undef, i32 0, i32 0, i32 undef, float %6824)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6882 = extractvalue %dx.types.ResRet.f32 %6881, 0
  %6883 = fmul fast float %6882, %6840
  %6884 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6875, float %6880, float undef, float undef, i32 0, i32 0, i32 undef, float %6824)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6885 = extractvalue %dx.types.ResRet.f32 %6884, 0
  %6886 = fmul fast float %6885, %6841
  %6887 = fadd fast float %6886, %6883
  %6888 = fmul fast float %6887, %6855
  %6889 = fadd fast float %6878, %6873
  %6890 = fmul fast float %6889, %6854
  %6891 = fadd fast float %6890, %6888
  %6892 = fmul fast float %6891, 6.250000e-02
  br label %6978

; <label>:6893                                    ; preds = %6814
  %6894 = fmul fast float %275, 0x401921FB60000000
  %6895 = call float @dx.op.unary.f32(i32 13, float %6894)  ; Sin(value)
  %6896 = call float @dx.op.unary.f32(i32 12, float %6894)  ; Cos(value)
  %6897 = fsub fast float -0.000000e+00, %6895
  br label %6898

; <label>:6898                                    ; preds = %6947, %6893
  %6899 = phi float [ 0.000000e+00, %6893 ], [ %6942, %6947 ]
  %6900 = phi float [ 0.000000e+00, %6893 ], [ %6944, %6947 ]
  %6901 = phi i32 [ 0, %6893 ], [ %6948, %6947 ]
  %6902 = mul i32 %6901, 2
  %6903 = add i32 0, %6902
  %6904 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6903
  %6905 = load float, float* %6904, align 4
  %6906 = mul i32 %6901, 2
  %6907 = add i32 1, %6906
  %6908 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6907
  %6909 = load float, float* %6908, align 4
  %6910 = fmul fast float %6905, %6896
  %6911 = call float @dx.op.tertiary.f32(i32 46, float %6909, float %6897, float %6910)  ; FMad(a,b,c)
  %6912 = fmul fast float %6905, %6895
  %6913 = call float @dx.op.tertiary.f32(i32 46, float %6909, float %6896, float %6912)  ; FMad(a,b,c)
  %6914 = fmul fast float %6911, %6822
  %6915 = fmul fast float %6913, %6822
  %6916 = fadd fast float %6914, %6133
  %6917 = fadd fast float %6915, %6134
  %6918 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %56, float %6916, float %6917, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6919 = extractvalue %dx.types.ResRet.f32 %6918, 0
  %6920 = extractvalue %dx.types.ResRet.f32 %6918, 1
  %6921 = extractvalue %dx.types.ResRet.f32 %6918, 2
  %6922 = extractvalue %dx.types.ResRet.f32 %6918, 3
  %6923 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 0
  store float %6919, float* %6923, align 4
  %6924 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 1
  store float %6920, float* %6924, align 4
  %6925 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 2
  store float %6921, float* %6925, align 4
  %6926 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 3
  store float %6922, float* %6926, align 4
  %6927 = fsub fast float %6919, %6824
  %6928 = fcmp fast olt float %6927, 0.000000e+00
  %6929 = select i1 %6928, float 0.000000e+00, float 1.000000e+00
  %6930 = fadd fast float %6929, %6899
  %6931 = fmul fast float %6929, %6927
  %6932 = fadd fast float %6931, %6900
  br label %6933

; <label>:6933                                    ; preds = %6933, %6898
  %6934 = phi i32 [ 1, %6898 ], [ %6945, %6933 ]
  %6935 = phi float [ %6932, %6898 ], [ %6944, %6933 ]
  %6936 = phi float [ %6930, %6898 ], [ %6942, %6933 ]
  %6937 = getelementptr [4 x float], [4 x float]* %110, i32 0, i32 %6934
  %6938 = load float, float* %6937, align 4, !tbaa !126, !noalias !116
  %6939 = fsub fast float %6938, %6824
  %6940 = fcmp fast olt float %6939, 0.000000e+00
  %6941 = select i1 %6940, float 0.000000e+00, float 1.000000e+00
  %6942 = fadd fast float %6941, %6936
  %6943 = fmul fast float %6941, %6939
  %6944 = fadd fast float %6943, %6935
  %6945 = add nuw nsw i32 %6934, 1
  %6946 = icmp eq i32 %6945, 4
  br i1 %6946, label %6947, label %6933, !llvm.loop !128

; <label>:6947                                    ; preds = %6933
  %6948 = add nuw nsw i32 %6901, 1
  %6949 = icmp eq i32 %6948, 8
  br i1 %6949, label %6950, label %6898, !llvm.loop !129

; <label>:6950                                    ; preds = %6947
  %6951 = fdiv fast float 1.000000e+00, %6942
  %6952 = fmul fast float %6951, %6944
  %6953 = fdiv fast float 1.000000e+00, %6824
  %6954 = fmul fast float %6952, %6953
  %6955 = call float @dx.op.unary.f32(i32 7, float %6954)  ; Saturate(value)
  %6956 = call float @dx.op.binary.f32(i32 35, float %6955, float 0.000000e+00)  ; FMax(a,b)
  %6957 = fmul fast float %6942, 3.125000e-02
  %6958 = call float @dx.op.unary.f32(i32 7, float %6957)  ; Saturate(value)
  %6959 = fmul fast float %6958, 2.000000e+00
  %6960 = fadd fast float %6959, -1.000000e+00
  %6961 = fcmp fast ogt float %6960, 0.000000e+00
  %6962 = fcmp fast olt float %6960, 0.000000e+00
  %6963 = zext i1 %6961 to i32
  %6964 = zext i1 %6962 to i32
  %6965 = sub nsw i32 %6963, %6964
  %6966 = sitofp i32 %6965 to float
  %6967 = fmul fast float %6966, %6960
  %6968 = fsub fast float 1.000000e+00, %6967
  %6969 = fmul fast float %6968, %6968
  %6970 = fmul fast float %6969, %6968
  %6971 = fsub fast float %6968, %6970
  %6972 = fmul fast float %6971, %6956
  %6973 = fsub fast float 1.000000e+00, %6970
  %6974 = fsub fast float %6973, %6972
  %6975 = fmul fast float %6966, 5.000000e-01
  %6976 = fmul fast float %6975, %6974
  %6977 = fsub fast float 5.000000e-01, %6976
  br label %6978

; <label>:6978                                    ; preds = %6950, %6826, %6811
  %6979 = phi float [ 1.000000e+00, %6811 ], [ %6892, %6826 ], [ %6977, %6950 ]
  %6980 = fcmp fast ogt float %6239, 0.000000e+00
  br i1 %6980, label %6981, label %7299, !dx.controlflow.hints !131

; <label>:6981                                    ; preds = %6978
  %6982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6983 = extractvalue %dx.types.CBufRet.f32 %6982, 0
  %6984 = fadd fast float %6983, %6123
  %6985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6986 = extractvalue %dx.types.CBufRet.f32 %6985, 2
  %6987 = extractvalue %dx.types.CBufRet.f32 %6985, 3
  %6988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6989 = extractvalue %dx.types.CBufRet.f32 %6988, 0
  %6990 = call float @dx.op.binary.f32(i32 35, float %6984, float 0.000000e+00)  ; FMax(a,b)
  %6991 = fadd fast float %6990, 0x3F10000000000000
  %6992 = fcmp fast oeq float %6989, 0.000000e+00
  br i1 %6126, label %6993, label %7146, !dx.controlflow.hints !132

; <label>:6993                                    ; preds = %6981
  br i1 %6992, label %6994, label %7061

; <label>:6994                                    ; preds = %6993
  %6995 = extractvalue %dx.types.CBufRet.f32 %6985, 1
  %6996 = extractvalue %dx.types.CBufRet.f32 %6985, 0
  %6997 = fmul fast float %6996, %6115
  %6998 = fmul fast float %6995, %6119
  %6999 = fadd fast float %6997, 5.000000e-01
  %7000 = call float @dx.op.unary.f32(i32 27, float %6999)  ; Round_ni(value)
  %7001 = fadd fast float %6998, 5.000000e-01
  %7002 = call float @dx.op.unary.f32(i32 27, float %7001)  ; Round_ni(value)
  %7003 = fsub fast float %6999, %7000
  %7004 = fsub fast float %7001, %7002
  %7005 = fadd fast float %7000, -5.000000e-01
  %7006 = fadd fast float %7002, -5.000000e-01
  %7007 = fmul fast float %7003, 2.000000e+00
  %7008 = fsub fast float 3.000000e+00, %7007
  %7009 = fadd fast float %7007, 1.000000e+00
  %7010 = fsub fast float 2.000000e+00, %7003
  %7011 = bitcast float %7008 to i32
  %7012 = sub nsw i32 2129859010, %7011
  %7013 = bitcast i32 %7012 to float
  %7014 = fmul fast float %7013, %7010
  %7015 = fadd fast float %7014, -1.000000e+00
  %7016 = bitcast float %7009 to i32
  %7017 = sub nsw i32 2129859010, %7016
  %7018 = bitcast i32 %7017 to float
  %7019 = fmul fast float %7018, %7003
  %7020 = fadd fast float %7019, 1.000000e+00
  %7021 = fmul fast float %7004, 2.000000e+00
  %7022 = fsub fast float 3.000000e+00, %7021
  %7023 = fadd fast float %7021, 1.000000e+00
  %7024 = fsub fast float 2.000000e+00, %7004
  %7025 = bitcast float %7022 to i32
  %7026 = sub nsw i32 2129859010, %7025
  %7027 = bitcast i32 %7026 to float
  %7028 = fmul fast float %7027, %7024
  %7029 = fadd fast float %7028, -1.000000e+00
  %7030 = bitcast float %7023 to i32
  %7031 = sub nsw i32 2129859010, %7030
  %7032 = bitcast i32 %7031 to float
  %7033 = fmul fast float %7032, %7004
  %7034 = fadd fast float %7033, 1.000000e+00
  %7035 = fadd fast float %7015, %7005
  %7036 = fmul fast float %7035, %6986
  %7037 = fadd fast float %7029, %7006
  %7038 = fmul fast float %7037, %6987
  %7039 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %7036, float %7038, float undef, float undef, i32 0, i32 0, i32 undef, float %6991)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7040 = extractvalue %dx.types.ResRet.f32 %7039, 0
  %7041 = fmul fast float %7040, %7008
  %7042 = fadd fast float %7020, %7005
  %7043 = fmul fast float %7042, %6986
  %7044 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %7043, float %7038, float undef, float undef, i32 0, i32 0, i32 undef, float %6991)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7045 = extractvalue %dx.types.ResRet.f32 %7044, 0
  %7046 = fmul fast float %7045, %7009
  %7047 = fadd fast float %7034, %7006
  %7048 = fmul fast float %7047, %6987
  %7049 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %7036, float %7048, float undef, float undef, i32 0, i32 0, i32 undef, float %6991)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7050 = extractvalue %dx.types.ResRet.f32 %7049, 0
  %7051 = fmul fast float %7050, %7008
  %7052 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %7043, float %7048, float undef, float undef, i32 0, i32 0, i32 undef, float %6991)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7053 = extractvalue %dx.types.ResRet.f32 %7052, 0
  %7054 = fmul fast float %7053, %7009
  %7055 = fadd fast float %7054, %7051
  %7056 = fmul fast float %7055, %7023
  %7057 = fadd fast float %7046, %7041
  %7058 = fmul fast float %7057, %7022
  %7059 = fadd fast float %7058, %7056
  %7060 = fmul fast float %7059, 6.250000e-02
  br label %7299

; <label>:7061                                    ; preds = %6993
  %7062 = fmul fast float %275, 0x401921FB60000000
  %7063 = call float @dx.op.unary.f32(i32 13, float %7062)  ; Sin(value)
  %7064 = call float @dx.op.unary.f32(i32 12, float %7062)  ; Cos(value)
  %7065 = fsub fast float -0.000000e+00, %7063
  br label %7066

; <label>:7066                                    ; preds = %7115, %7061
  %7067 = phi float [ 0.000000e+00, %7061 ], [ %7110, %7115 ]
  %7068 = phi float [ 0.000000e+00, %7061 ], [ %7112, %7115 ]
  %7069 = phi i32 [ 0, %7061 ], [ %7116, %7115 ]
  %7070 = mul i32 %7069, 2
  %7071 = add i32 0, %7070
  %7072 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7071
  %7073 = load float, float* %7072, align 4
  %7074 = mul i32 %7069, 2
  %7075 = add i32 1, %7074
  %7076 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7075
  %7077 = load float, float* %7076, align 4
  %7078 = fmul fast float %7073, %7064
  %7079 = call float @dx.op.tertiary.f32(i32 46, float %7077, float %7065, float %7078)  ; FMad(a,b,c)
  %7080 = fmul fast float %7073, %7063
  %7081 = call float @dx.op.tertiary.f32(i32 46, float %7077, float %7064, float %7080)  ; FMad(a,b,c)
  %7082 = fmul fast float %7079, %6989
  %7083 = fmul fast float %7081, %6989
  %7084 = fadd fast float %7082, %6115
  %7085 = fadd fast float %7083, %6119
  %7086 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %56, float %7084, float %7085, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7087 = extractvalue %dx.types.ResRet.f32 %7086, 0
  %7088 = extractvalue %dx.types.ResRet.f32 %7086, 1
  %7089 = extractvalue %dx.types.ResRet.f32 %7086, 2
  %7090 = extractvalue %dx.types.ResRet.f32 %7086, 3
  %7091 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 0
  store float %7087, float* %7091, align 4
  %7092 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 1
  store float %7088, float* %7092, align 4
  %7093 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 2
  store float %7089, float* %7093, align 4
  %7094 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 3
  store float %7090, float* %7094, align 4
  %7095 = fsub fast float %7087, %6991
  %7096 = fcmp fast olt float %7095, 0.000000e+00
  %7097 = select i1 %7096, float 0.000000e+00, float 1.000000e+00
  %7098 = fadd fast float %7097, %7067
  %7099 = fmul fast float %7097, %7095
  %7100 = fadd fast float %7099, %7068
  br label %7101

; <label>:7101                                    ; preds = %7101, %7066
  %7102 = phi i32 [ 1, %7066 ], [ %7113, %7101 ]
  %7103 = phi float [ %7100, %7066 ], [ %7112, %7101 ]
  %7104 = phi float [ %7098, %7066 ], [ %7110, %7101 ]
  %7105 = getelementptr [4 x float], [4 x float]* %109, i32 0, i32 %7102
  %7106 = load float, float* %7105, align 4, !tbaa !126, !noalias !116
  %7107 = fsub fast float %7106, %6991
  %7108 = fcmp fast olt float %7107, 0.000000e+00
  %7109 = select i1 %7108, float 0.000000e+00, float 1.000000e+00
  %7110 = fadd fast float %7109, %7104
  %7111 = fmul fast float %7109, %7107
  %7112 = fadd fast float %7111, %7103
  %7113 = add nuw nsw i32 %7102, 1
  %7114 = icmp eq i32 %7113, 4
  br i1 %7114, label %7115, label %7101, !llvm.loop !128

; <label>:7115                                    ; preds = %7101
  %7116 = add nuw nsw i32 %7069, 1
  %7117 = icmp eq i32 %7116, 8
  br i1 %7117, label %7118, label %7066, !llvm.loop !129

; <label>:7118                                    ; preds = %7115
  %7119 = fdiv fast float 1.000000e+00, %7110
  %7120 = fmul fast float %7119, %7112
  %7121 = fdiv fast float 1.000000e+00, %6991
  %7122 = fmul fast float %7120, %7121
  %7123 = call float @dx.op.unary.f32(i32 7, float %7122)  ; Saturate(value)
  %7124 = call float @dx.op.binary.f32(i32 35, float %7123, float 0.000000e+00)  ; FMax(a,b)
  %7125 = fmul fast float %7110, 3.125000e-02
  %7126 = call float @dx.op.unary.f32(i32 7, float %7125)  ; Saturate(value)
  %7127 = fmul fast float %7126, 2.000000e+00
  %7128 = fadd fast float %7127, -1.000000e+00
  %7129 = fcmp fast ogt float %7128, 0.000000e+00
  %7130 = fcmp fast olt float %7128, 0.000000e+00
  %7131 = zext i1 %7129 to i32
  %7132 = zext i1 %7130 to i32
  %7133 = sub nsw i32 %7131, %7132
  %7134 = sitofp i32 %7133 to float
  %7135 = fmul fast float %7134, %7128
  %7136 = fsub fast float 1.000000e+00, %7135
  %7137 = fmul fast float %7136, %7136
  %7138 = fmul fast float %7137, %7136
  %7139 = fsub fast float %7136, %7138
  %7140 = fmul fast float %7139, %7124
  %7141 = fsub fast float 1.000000e+00, %7138
  %7142 = fsub fast float %7141, %7140
  %7143 = fmul fast float %7134, 5.000000e-01
  %7144 = fmul fast float %7143, %7142
  %7145 = fsub fast float 5.000000e-01, %7144
  br label %7299

; <label>:7146                                    ; preds = %6981
  br i1 %6992, label %7147, label %7214

; <label>:7147                                    ; preds = %7146
  %7148 = extractvalue %dx.types.CBufRet.f32 %6985, 1
  %7149 = extractvalue %dx.types.CBufRet.f32 %6985, 0
  %7150 = fmul fast float %7149, %6115
  %7151 = fmul fast float %7148, %6119
  %7152 = fadd fast float %7150, 5.000000e-01
  %7153 = call float @dx.op.unary.f32(i32 27, float %7152)  ; Round_ni(value)
  %7154 = fadd fast float %7151, 5.000000e-01
  %7155 = call float @dx.op.unary.f32(i32 27, float %7154)  ; Round_ni(value)
  %7156 = fsub fast float %7152, %7153
  %7157 = fsub fast float %7154, %7155
  %7158 = fadd fast float %7153, -5.000000e-01
  %7159 = fadd fast float %7155, -5.000000e-01
  %7160 = fmul fast float %7156, 2.000000e+00
  %7161 = fsub fast float 3.000000e+00, %7160
  %7162 = fadd fast float %7160, 1.000000e+00
  %7163 = fsub fast float 2.000000e+00, %7156
  %7164 = bitcast float %7161 to i32
  %7165 = sub nsw i32 2129859010, %7164
  %7166 = bitcast i32 %7165 to float
  %7167 = fmul fast float %7166, %7163
  %7168 = fadd fast float %7167, -1.000000e+00
  %7169 = bitcast float %7162 to i32
  %7170 = sub nsw i32 2129859010, %7169
  %7171 = bitcast i32 %7170 to float
  %7172 = fmul fast float %7171, %7156
  %7173 = fadd fast float %7172, 1.000000e+00
  %7174 = fmul fast float %7157, 2.000000e+00
  %7175 = fsub fast float 3.000000e+00, %7174
  %7176 = fadd fast float %7174, 1.000000e+00
  %7177 = fsub fast float 2.000000e+00, %7157
  %7178 = bitcast float %7175 to i32
  %7179 = sub nsw i32 2129859010, %7178
  %7180 = bitcast i32 %7179 to float
  %7181 = fmul fast float %7180, %7177
  %7182 = fadd fast float %7181, -1.000000e+00
  %7183 = bitcast float %7176 to i32
  %7184 = sub nsw i32 2129859010, %7183
  %7185 = bitcast i32 %7184 to float
  %7186 = fmul fast float %7185, %7157
  %7187 = fadd fast float %7186, 1.000000e+00
  %7188 = fadd fast float %7168, %7158
  %7189 = fmul fast float %7188, %6986
  %7190 = fadd fast float %7182, %7159
  %7191 = fmul fast float %7190, %6987
  %7192 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7189, float %7191, float undef, float undef, i32 0, i32 0, i32 undef, float %6991)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7193 = extractvalue %dx.types.ResRet.f32 %7192, 0
  %7194 = fmul fast float %7193, %7161
  %7195 = fadd fast float %7173, %7158
  %7196 = fmul fast float %7195, %6986
  %7197 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7196, float %7191, float undef, float undef, i32 0, i32 0, i32 undef, float %6991)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7198 = extractvalue %dx.types.ResRet.f32 %7197, 0
  %7199 = fmul fast float %7198, %7162
  %7200 = fadd fast float %7187, %7159
  %7201 = fmul fast float %7200, %6987
  %7202 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7189, float %7201, float undef, float undef, i32 0, i32 0, i32 undef, float %6991)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7203 = extractvalue %dx.types.ResRet.f32 %7202, 0
  %7204 = fmul fast float %7203, %7161
  %7205 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7196, float %7201, float undef, float undef, i32 0, i32 0, i32 undef, float %6991)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7206 = extractvalue %dx.types.ResRet.f32 %7205, 0
  %7207 = fmul fast float %7206, %7162
  %7208 = fadd fast float %7207, %7204
  %7209 = fmul fast float %7208, %7176
  %7210 = fadd fast float %7199, %7194
  %7211 = fmul fast float %7210, %7175
  %7212 = fadd fast float %7211, %7209
  %7213 = fmul fast float %7212, 6.250000e-02
  br label %7299

; <label>:7214                                    ; preds = %7146
  %7215 = fmul fast float %275, 0x401921FB60000000
  %7216 = call float @dx.op.unary.f32(i32 13, float %7215)  ; Sin(value)
  %7217 = call float @dx.op.unary.f32(i32 12, float %7215)  ; Cos(value)
  %7218 = fsub fast float -0.000000e+00, %7216
  br label %7219

; <label>:7219                                    ; preds = %7268, %7214
  %7220 = phi float [ 0.000000e+00, %7214 ], [ %7263, %7268 ]
  %7221 = phi float [ 0.000000e+00, %7214 ], [ %7265, %7268 ]
  %7222 = phi i32 [ 0, %7214 ], [ %7269, %7268 ]
  %7223 = mul i32 %7222, 2
  %7224 = add i32 0, %7223
  %7225 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7224
  %7226 = load float, float* %7225, align 4
  %7227 = mul i32 %7222, 2
  %7228 = add i32 1, %7227
  %7229 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7228
  %7230 = load float, float* %7229, align 4
  %7231 = fmul fast float %7226, %7217
  %7232 = call float @dx.op.tertiary.f32(i32 46, float %7230, float %7218, float %7231)  ; FMad(a,b,c)
  %7233 = fmul fast float %7226, %7216
  %7234 = call float @dx.op.tertiary.f32(i32 46, float %7230, float %7217, float %7233)  ; FMad(a,b,c)
  %7235 = fmul fast float %7232, %6989
  %7236 = fmul fast float %7234, %6989
  %7237 = fadd fast float %7235, %6115
  %7238 = fadd fast float %7236, %6119
  %7239 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %56, float %7237, float %7238, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7240 = extractvalue %dx.types.ResRet.f32 %7239, 0
  %7241 = extractvalue %dx.types.ResRet.f32 %7239, 1
  %7242 = extractvalue %dx.types.ResRet.f32 %7239, 2
  %7243 = extractvalue %dx.types.ResRet.f32 %7239, 3
  %7244 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 0
  store float %7240, float* %7244, align 4
  %7245 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 1
  store float %7241, float* %7245, align 4
  %7246 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 2
  store float %7242, float* %7246, align 4
  %7247 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 3
  store float %7243, float* %7247, align 4
  %7248 = fsub fast float %7240, %6991
  %7249 = fcmp fast olt float %7248, 0.000000e+00
  %7250 = select i1 %7249, float 0.000000e+00, float 1.000000e+00
  %7251 = fadd fast float %7250, %7220
  %7252 = fmul fast float %7250, %7248
  %7253 = fadd fast float %7252, %7221
  br label %7254

; <label>:7254                                    ; preds = %7254, %7219
  %7255 = phi i32 [ 1, %7219 ], [ %7266, %7254 ]
  %7256 = phi float [ %7253, %7219 ], [ %7265, %7254 ]
  %7257 = phi float [ %7251, %7219 ], [ %7263, %7254 ]
  %7258 = getelementptr [4 x float], [4 x float]* %108, i32 0, i32 %7255
  %7259 = load float, float* %7258, align 4, !tbaa !126, !noalias !116
  %7260 = fsub fast float %7259, %6991
  %7261 = fcmp fast olt float %7260, 0.000000e+00
  %7262 = select i1 %7261, float 0.000000e+00, float 1.000000e+00
  %7263 = fadd fast float %7262, %7257
  %7264 = fmul fast float %7262, %7260
  %7265 = fadd fast float %7264, %7256
  %7266 = add nuw nsw i32 %7255, 1
  %7267 = icmp eq i32 %7266, 4
  br i1 %7267, label %7268, label %7254, !llvm.loop !128

; <label>:7268                                    ; preds = %7254
  %7269 = add nuw nsw i32 %7222, 1
  %7270 = icmp eq i32 %7269, 8
  br i1 %7270, label %7271, label %7219, !llvm.loop !129

; <label>:7271                                    ; preds = %7268
  %7272 = fdiv fast float 1.000000e+00, %7263
  %7273 = fmul fast float %7272, %7265
  %7274 = fdiv fast float 1.000000e+00, %6991
  %7275 = fmul fast float %7273, %7274
  %7276 = call float @dx.op.unary.f32(i32 7, float %7275)  ; Saturate(value)
  %7277 = call float @dx.op.binary.f32(i32 35, float %7276, float 0.000000e+00)  ; FMax(a,b)
  %7278 = fmul fast float %7263, 3.125000e-02
  %7279 = call float @dx.op.unary.f32(i32 7, float %7278)  ; Saturate(value)
  %7280 = fmul fast float %7279, 2.000000e+00
  %7281 = fadd fast float %7280, -1.000000e+00
  %7282 = fcmp fast ogt float %7281, 0.000000e+00
  %7283 = fcmp fast olt float %7281, 0.000000e+00
  %7284 = zext i1 %7282 to i32
  %7285 = zext i1 %7283 to i32
  %7286 = sub nsw i32 %7284, %7285
  %7287 = sitofp i32 %7286 to float
  %7288 = fmul fast float %7287, %7281
  %7289 = fsub fast float 1.000000e+00, %7288
  %7290 = fmul fast float %7289, %7289
  %7291 = fmul fast float %7290, %7289
  %7292 = fsub fast float %7289, %7291
  %7293 = fmul fast float %7292, %7277
  %7294 = fsub fast float 1.000000e+00, %7291
  %7295 = fsub fast float %7294, %7293
  %7296 = fmul fast float %7287, 5.000000e-01
  %7297 = fmul fast float %7296, %7295
  %7298 = fsub fast float 5.000000e-01, %7297
  br label %7299

; <label>:7299                                    ; preds = %7271, %7147, %7118, %6994, %6978
  %7300 = phi float [ 1.000000e+00, %6978 ], [ %7060, %6994 ], [ %7145, %7118 ], [ %7213, %7147 ], [ %7298, %7271 ]
  %7301 = fsub fast float %6812, %6645
  %7302 = fmul fast float %7301, %6212
  %7303 = fadd fast float %7302, %6645
  %7304 = fsub fast float %6979, %7303
  %7305 = fmul fast float %7304, %6211
  %7306 = fadd fast float %7305, %7303
  %7307 = fsub fast float %7300, %7306
  %7308 = fmul fast float %7307, %6239
  %7309 = fadd fast float %7308, %7306
  %7310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7311 = extractvalue %dx.types.CBufRet.f32 %7310, 2
  %7312 = fcmp fast ogt float %7311, 0.000000e+00
  br i1 %7312, label %7313, label %7353, !dx.controlflow.hints !133

; <label>:7313                                    ; preds = %7299
  %7314 = fcmp fast ugt float %7311, 0.000000e+00
  br i1 %7314, label %7315, label %7350

; <label>:7315                                    ; preds = %7313
  %7316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7317 = extractvalue %dx.types.CBufRet.f32 %7316, 0
  %7318 = extractvalue %dx.types.CBufRet.f32 %7316, 1
  %7319 = extractvalue %dx.types.CBufRet.f32 %7316, 2
  %7320 = extractvalue %dx.types.CBufRet.f32 %7316, 3
  %7321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7322 = extractvalue %dx.types.CBufRet.f32 %7321, 0
  %7323 = extractvalue %dx.types.CBufRet.f32 %7321, 1
  %7324 = extractvalue %dx.types.CBufRet.f32 %7321, 2
  %7325 = extractvalue %dx.types.CBufRet.f32 %7321, 3
  %7326 = extractvalue %dx.types.CBufRet.f32 %7310, 0
  %7327 = extractvalue %dx.types.CBufRet.f32 %7310, 1
  %7328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7329 = extractvalue %dx.types.CBufRet.f32 %7328, 0
  %7330 = extractvalue %dx.types.CBufRet.f32 %7328, 1
  %7331 = extractvalue %dx.types.CBufRet.f32 %7328, 2
  %7332 = fadd fast float %7329, %6092
  %7333 = fadd fast float %7330, %6093
  %7334 = fadd fast float %7331, %6094
  %7335 = fmul fast float %7332, %7317
  %7336 = call float @dx.op.tertiary.f32(i32 46, float %7318, float %7333, float %7335)  ; FMad(a,b,c)
  %7337 = call float @dx.op.tertiary.f32(i32 46, float %7319, float %7334, float %7336)  ; FMad(a,b,c)
  %7338 = fadd fast float %7337, %7320
  %7339 = fmul fast float %7332, %7322
  %7340 = call float @dx.op.tertiary.f32(i32 46, float %7323, float %7333, float %7339)  ; FMad(a,b,c)
  %7341 = call float @dx.op.tertiary.f32(i32 46, float %7324, float %7334, float %7340)  ; FMad(a,b,c)
  %7342 = fadd fast float %7341, %7325
  %7343 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %52, float %7338, float %7342, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7344 = extractvalue %dx.types.ResRet.f32 %7343, 0
  %7345 = fmul fast float %7344, %7327
  %7346 = fadd fast float %7345, %7326
  %7347 = call float @dx.op.unary.f32(i32 7, float %7346)  ; Saturate(value)
  %7348 = fmul fast float %7347, %7311
  %7349 = fsub fast float 1.000000e+00, %7348
  br label %7350

; <label>:7350                                    ; preds = %7315, %7313
  %7351 = phi float [ %7349, %7315 ], [ 1.000000e+00, %7313 ]
  %7352 = fmul fast float %7351, %7309
  br label %7353

; <label>:7353                                    ; preds = %7350, %7299, %6072
  %7354 = phi float [ 1.000000e+00, %6072 ], [ %7352, %7350 ], [ %7309, %7299 ]
  %7355 = call float @dx.op.binary.f32(i32 36, float %7354, float %7354)  ; FMin(a,b)
  %7356 = call float @dx.op.binary.f32(i32 36, float %7354, float %7355)  ; FMin(a,b)
  %7357 = fcmp fast ogt float %7356, 0.000000e+00
  br i1 %7357, label %7358, label %7523, !dx.controlflow.hints !134

; <label>:7358                                    ; preds = %7353
  %7359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7360 = extractvalue %dx.types.CBufRet.f32 %7359, 0
  %7361 = extractvalue %dx.types.CBufRet.f32 %7359, 1
  %7362 = extractvalue %dx.types.CBufRet.f32 %7359, 2
  %7363 = extractvalue %dx.types.CBufRet.f32 %7359, 3
  %7364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7365 = extractvalue %dx.types.CBufRet.f32 %7364, 0
  %7366 = extractvalue %dx.types.CBufRet.f32 %7364, 1
  %7367 = extractvalue %dx.types.CBufRet.f32 %7364, 2
  %7368 = extractvalue %dx.types.CBufRet.f32 %7364, 3
  %7369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7370 = extractvalue %dx.types.CBufRet.f32 %7369, 0
  %7371 = extractvalue %dx.types.CBufRet.f32 %7369, 1
  %7372 = extractvalue %dx.types.CBufRet.f32 %7369, 2
  %7373 = extractvalue %dx.types.CBufRet.f32 %7369, 3
  %7374 = fmul fast float %7360, %6092
  %7375 = call float @dx.op.tertiary.f32(i32 46, float %6093, float %7361, float %7374)  ; FMad(a,b,c)
  %7376 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %7362, float %7375)  ; FMad(a,b,c)
  %7377 = fadd fast float %7376, %7363
  %7378 = fmul fast float %7365, %6092
  %7379 = call float @dx.op.tertiary.f32(i32 46, float %6093, float %7366, float %7378)  ; FMad(a,b,c)
  %7380 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %7367, float %7379)  ; FMad(a,b,c)
  %7381 = fadd fast float %7380, %7368
  %7382 = fmul fast float %7370, %6092
  %7383 = call float @dx.op.tertiary.f32(i32 46, float %6093, float %7371, float %7382)  ; FMad(a,b,c)
  %7384 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %7372, float %7383)  ; FMad(a,b,c)
  %7385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7386 = extractvalue %dx.types.CBufRet.f32 %7385, 0
  %7387 = extractvalue %dx.types.CBufRet.f32 %7385, 1
  %7388 = extractvalue %dx.types.CBufRet.f32 %7385, 3
  %7389 = fmul fast float %7388, %7377
  %7390 = fmul fast float %7388, %7381
  %7391 = fadd fast float %7389, %7386
  %7392 = fadd fast float %7390, %7387
  %7393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7394 = extractvalue %dx.types.CBufRet.f32 %7393, 0
  %7395 = extractvalue %dx.types.CBufRet.f32 %7393, 1
  %7396 = fsub fast float %7391, %7394
  %7397 = fsub fast float %7392, %7395
  %7398 = fcmp fast olt float %7396, 0.000000e+00
  %7399 = fcmp fast olt float %7397, 0.000000e+00
  %7400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7401 = extractvalue %dx.types.CBufRet.f32 %7400, 0
  %7402 = extractvalue %dx.types.CBufRet.f32 %7400, 1
  %7403 = extractvalue %dx.types.CBufRet.f32 %7400, 2
  %7404 = extractvalue %dx.types.CBufRet.f32 %7400, 3
  %7405 = select i1 %7398, float %7401, float %7403
  %7406 = select i1 %7399, float %7402, float %7404
  %7407 = fmul fast float %7405, %7396
  %7408 = fmul fast float %7406, %7397
  %7409 = call float @dx.op.unary.f32(i32 6, float %7407)  ; FAbs(value)
  %7410 = call float @dx.op.unary.f32(i32 6, float %7408)  ; FAbs(value)
  %7411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7412 = extractvalue %dx.types.CBufRet.f32 %7411, 0
  %7413 = call float @dx.op.binary.f32(i32 35, float %7409, float %7410)  ; FMax(a,b)
  %7414 = fsub fast float %7412, %7413
  %7415 = call float @dx.op.unary.f32(i32 7, float %7414)  ; Saturate(value)
  %7416 = fcmp fast ogt float %7415, 0.000000e+00
  br i1 %7416, label %7417, label %7458, !dx.controlflow.hints !135

; <label>:7417                                    ; preds = %7358
  %7418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %55, float %7391, float %7392, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7419 = extractvalue %dx.types.ResRet.f32 %7418, 1
  %7420 = fcmp fast ogt float %7419, 0.000000e+00
  br i1 %7420, label %7421, label %7453

; <label>:7421                                    ; preds = %7417
  %7422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %55, float %7391, float %7392, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7423 = extractvalue %dx.types.ResRet.f32 %7422, 0
  %7424 = extractvalue %dx.types.ResRet.f32 %7422, 1
  %7425 = extractvalue %dx.types.ResRet.f32 %7422, 2
  %7426 = extractvalue %dx.types.ResRet.f32 %7422, 3
  %7427 = fsub fast float 1.000000e+00, %7373
  %7428 = fsub fast float %7427, %7384
  %7429 = fmul fast float %7428, 0x400921FB60000000
  %7430 = fadd fast float %7429, 0x3FF921FB60000000
  %7431 = call float @dx.op.unary.f32(i32 13, float %7430)  ; Sin(value)
  %7432 = fadd fast float %7431, -1.000000e+00
  %7433 = fmul fast float %7432, 0x3FD45F3060000000
  %7434 = fmul fast float %7428, 0x401921FB60000000
  %7435 = fadd fast float %7434, 0x400921FB60000000
  %7436 = call float @dx.op.unary.f32(i32 13, float %7435)  ; Sin(value)
  %7437 = fadd fast float %7436, 0x3E7777A5C0000000
  %7438 = fmul fast float %7437, 0x3FC45F3060000000
  %7439 = fmul fast float %7428, 0x4022D97C80000000
  %7440 = fadd fast float %7439, 0x4012D97C80000000
  %7441 = call float @dx.op.unary.f32(i32 13, float %7440)  ; Sin(value)
  %7442 = fadd fast float %7441, 1.000000e+00
  %7443 = fmul fast float %7442, 0x3FBB2995E0000000
  %7444 = fmul fast float %7428, 0x402921FB60000000
  %7445 = fadd fast float %7444, 0x401921FB60000000
  %7446 = call float @dx.op.unary.f32(i32 13, float %7445)  ; Sin(value)
  %7447 = fadd fast float %7446, 0xBE8777A5C0000000
  %7448 = fmul fast float %7447, 0x3FB45F3060000000
  %7449 = call float @dx.op.dot4.f32(i32 56, float %7423, float %7424, float %7425, float %7426, float %7433, float %7438, float %7443, float %7448)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7450 = fmul fast float %7449, 0xBFF7154760000000
  %7451 = call float @dx.op.unary.f32(i32 21, float %7450)  ; Exp(value)
  %7452 = call float @dx.op.unary.f32(i32 7, float %7451)  ; Saturate(value)
  br label %7453

; <label>:7453                                    ; preds = %7421, %7417
  %7454 = phi float [ %7452, %7421 ], [ 1.000000e+00, %7417 ]
  %7455 = fadd fast float %7454, -1.000000e+00
  %7456 = fmul fast float %7455, %7415
  %7457 = fadd fast float %7456, 1.000000e+00
  br label %7458

; <label>:7458                                    ; preds = %7453, %7358
  %7459 = phi float [ %7457, %7453 ], [ 1.000000e+00, %7358 ]
  %7460 = fmul fast float %7459, %7354
  %7461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7462 = extractvalue %dx.types.CBufRet.f32 %7461, 0
  %7463 = extractvalue %dx.types.CBufRet.f32 %7461, 1
  %7464 = extractvalue %dx.types.CBufRet.f32 %7461, 2
  %7465 = fadd fast float %7462, %205
  %7466 = fadd fast float %7463, %206
  %7467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7468 = extractvalue %dx.types.CBufRet.f32 %7467, 1
  %7469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7470 = extractvalue %dx.types.CBufRet.f32 %7469, 0
  %7471 = extractvalue %dx.types.CBufRet.f32 %7469, 1
  %7472 = extractvalue %dx.types.CBufRet.f32 %7469, 2
  %7473 = fsub fast float -0.000000e+00, %7465
  %7474 = fsub fast float -0.000000e+00, %7466
  %7475 = fsub fast float %5281, %7464
  %7476 = fadd fast float %7475, %7468
  %7477 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7473, float %7474, float %7476)  ; Dot3(ax,ay,az,bx,by,bz)
  %7478 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7470, float %7471, float %7472)  ; Dot3(ax,ay,az,bx,by,bz)
  %7479 = fdiv fast float 1.000000e+00, %7478
  %7480 = fmul fast float %7479, %7477
  %7481 = fmul fast float %7470, %7480
  %7482 = fmul fast float %7471, %7480
  %7483 = fadd fast float %7481, %7465
  %7484 = fadd fast float %7482, %7466
  %7485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7486 = extractvalue %dx.types.CBufRet.f32 %7485, 0
  %7487 = extractvalue %dx.types.CBufRet.f32 %7485, 1
  %7488 = fsub fast float %7483, %7486
  %7489 = fsub fast float %7484, %7487
  %7490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7491 = extractvalue %dx.types.CBufRet.f32 %7490, 2
  %7492 = extractvalue %dx.types.CBufRet.f32 %7490, 3
  %7493 = fmul fast float %7488, %7491
  %7494 = fmul fast float %7489, %7492
  %7495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7496 = extractvalue %dx.types.CBufRet.i32 %7495, 3
  %7497 = icmp eq i32 %7496, 0
  br i1 %7497, label %7503, label %7498

; <label>:7498                                    ; preds = %7458
  %7499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7493, float %7494, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7500 = extractvalue %dx.types.ResRet.f32 %7499, 0
  %7501 = extractvalue %dx.types.ResRet.f32 %7499, 1
  %7502 = extractvalue %dx.types.ResRet.f32 %7499, 2
  br label %7508

; <label>:7503                                    ; preds = %7458
  %7504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %7493, float %7494, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7505 = extractvalue %dx.types.ResRet.f32 %7504, 0
  %7506 = extractvalue %dx.types.ResRet.f32 %7504, 1
  %7507 = extractvalue %dx.types.ResRet.f32 %7504, 2
  br label %7508

; <label>:7508                                    ; preds = %7503, %7498
  %7509 = phi float [ %7500, %7498 ], [ %7505, %7503 ]
  %7510 = phi float [ %7501, %7498 ], [ %7506, %7503 ]
  %7511 = phi float [ %7502, %7498 ], [ %7507, %7503 ]
  %7512 = extractvalue %dx.types.CBufRet.f32 %7467, 2
  %7513 = fmul fast float %7512, %7509
  %7514 = extractvalue %dx.types.CBufRet.f32 %7467, 0
  %7515 = fsub fast float %7480, %7514
  %7516 = fsub fast float %7515, %7513
  %7517 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7516)  ; FMax(a,b)
  %7518 = fmul fast float %7517, %7510
  %7519 = call float @dx.op.binary.f32(i32 36, float %7511, float %7518)  ; FMin(a,b)
  %7520 = fmul fast float %7519, 0xBFF7154760000000
  %7521 = call float @dx.op.unary.f32(i32 21, float %7520)  ; Exp(value)
  %7522 = fmul fast float %7460, %7521
  br label %7523

; <label>:7523                                    ; preds = %7508, %7353
  %7524 = phi float [ %7522, %7508 ], [ %7354, %7353 ]
  %7525 = call float @dx.op.binary.f32(i32 36, float %7524, float %7524)  ; FMin(a,b)
  %7526 = call float @dx.op.binary.f32(i32 36, float %7524, float %7525)  ; FMin(a,b)
  %7527 = fcmp fast ogt float %7526, 0.000000e+00
  br i1 %7527, label %7528, label %7776, !dx.controlflow.hints !136

; <label>:7528                                    ; preds = %7523
  %7529 = fmul fast float %7524, %6084
  %7530 = fmul fast float %7524, %6085
  %7531 = fmul fast float %7524, %6086
  %7532 = fsub fast float %207, %4458
  %7533 = fcmp fast ogt float %7532, 0.000000e+00
  %7534 = fmul fast float %6073, 5.120000e+02
  %7535 = fmul fast float %6074, 5.120000e+02
  %7536 = fmul fast float %6075, 5.120000e+02
  %7537 = fadd fast float %7536, %207
  %7538 = fsub fast float %4458, %7537
  %7539 = fmul fast float %7538, 2.000000e+00
  %7540 = fadd fast float %7539, %7537
  %7541 = select i1 %7533, float %7540, float %7537
  %7542 = fsub fast float %7541, %207
  %7543 = call float @dx.op.dot3.f32(i32 55, float %7534, float %7535, float %7542, float %7534, float %7535, float %7542)  ; Dot3(ax,ay,az,bx,by,bz)
  %7544 = call float @dx.op.unary.f32(i32 25, float %7543)  ; Rsqrt(value)
  %7545 = fmul fast float %7544, %7534
  %7546 = fmul fast float %7544, %7535
  %7547 = fmul fast float %7544, %7542
  %7548 = fsub fast float %4458, %207
  %7549 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7548)  ; Dot3(ax,ay,az,bx,by,bz)
  %7550 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7545, float %7546, float %7547)  ; Dot3(ax,ay,az,bx,by,bz)
  %7551 = fdiv fast float 1.000000e+00, %7550
  %7552 = fmul fast float %7551, %7549
  %7553 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7532, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7554 = fcmp fast ogt float %7553, 0.000000e+00
  %7555 = fcmp fast olt float %7553, 0.000000e+00
  %7556 = zext i1 %7554 to i32
  %7557 = zext i1 %7555 to i32
  %7558 = sub nsw i32 %7556, %7557
  %7559 = sitofp i32 %7558 to float
  %7560 = fsub fast float %7541, %4458
  %7561 = call float @dx.op.dot3.f32(i32 55, float %7534, float %7535, float %7560, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7562 = fcmp fast ogt float %7561, 0.000000e+00
  %7563 = fcmp fast olt float %7561, 0.000000e+00
  %7564 = zext i1 %7562 to i32
  %7565 = zext i1 %7563 to i32
  %7566 = sub nsw i32 %7564, %7565
  %7567 = sitofp i32 %7566 to float
  %7568 = fcmp fast une float %7559, %7567
  br i1 %7568, label %7569, label %7579

; <label>:7569                                    ; preds = %7528
  %7570 = fmul fast float %7552, %7547
  %7571 = fmul fast float %7552, %7546
  %7572 = fmul fast float %7552, %7545
  %7573 = fmul fast float %7572, %7572
  %7574 = fmul fast float %7571, %7571
  %7575 = fadd fast float %7573, %7574
  %7576 = fmul fast float %7570, %7570
  %7577 = fadd fast float %7575, %7576
  %7578 = call float @dx.op.unary.f32(i32 24, float %7577)  ; Sqrt(value)
  br label %7589

; <label>:7579                                    ; preds = %7528
  %7580 = icmp slt i32 %7558, 0
  br i1 %7580, label %7581, label %7589

; <label>:7581                                    ; preds = %7579
  %7582 = fsub fast float %207, %7541
  %7583 = fmul fast float %7534, %7534
  %7584 = fmul fast float %7535, %7535
  %7585 = fadd fast float %7583, %7584
  %7586 = fmul fast float %7582, %7582
  %7587 = fadd fast float %7585, %7586
  %7588 = call float @dx.op.unary.f32(i32 24, float %7587)  ; Sqrt(value)
  br label %7589

; <label>:7589                                    ; preds = %7581, %7579, %7569
  %7590 = phi float [ %7578, %7569 ], [ %7588, %7581 ], [ 0.000000e+00, %7579 ]
  %7591 = fsub fast float -0.000000e+00, %7590
  %7592 = select i1 %7533, float -0.000000e+00, float %7591
  %7593 = fmul fast float %4459, 0x3FF7154760000000
  %7594 = fmul fast float %7593, %7592
  %7595 = fmul fast float %4460, 0x3FF7154760000000
  %7596 = fmul fast float %7595, %7592
  %7597 = fmul fast float %4461, 0x3FF7154760000000
  %7598 = fmul fast float %7597, %7592
  %7599 = call float @dx.op.unary.f32(i32 21, float %7594)  ; Exp(value)
  %7600 = call float @dx.op.unary.f32(i32 21, float %7596)  ; Exp(value)
  %7601 = call float @dx.op.unary.f32(i32 21, float %7598)  ; Exp(value)
  %7602 = call float @dx.op.unary.f32(i32 7, float %7599)  ; Saturate(value)
  %7603 = call float @dx.op.unary.f32(i32 7, float %7600)  ; Saturate(value)
  %7604 = call float @dx.op.unary.f32(i32 7, float %7601)  ; Saturate(value)
  %7605 = fmul fast float %7529, %7602
  %7606 = fmul fast float %7530, %7603
  %7607 = fmul fast float %7531, %7604
  %7608 = fsub fast float %6073, %5284
  %7609 = fsub fast float %6074, %5285
  %7610 = fsub fast float %6075, %5286
  %7611 = call float @dx.op.dot3.f32(i32 55, float %7608, float %7609, float %7610, float %7608, float %7609, float %7610)  ; Dot3(ax,ay,az,bx,by,bz)
  %7612 = call float @dx.op.unary.f32(i32 25, float %7611)  ; Rsqrt(value)
  %7613 = fmul fast float %7612, %7608
  %7614 = fmul fast float %7612, %7609
  %7615 = fmul fast float %7612, %7610
  %7616 = call float @dx.op.dot3.f32(i32 55, float %6073, float %6074, float %6075, float %5244, float %5245, float %5246)  ; Dot3(ax,ay,az,bx,by,bz)
  %7617 = call float @dx.op.dot3.f32(i32 55, float %5287, float %5288, float %5289, float %7613, float %7614, float %7615)  ; Dot3(ax,ay,az,bx,by,bz)
  %7618 = call float @dx.op.unary.f32(i32 7, float %7616)  ; Saturate(value)
  %7619 = bitcast i32 %5316 to float
  %7620 = fmul fast float %7618, %7618
  %7621 = fmul fast float %7620, %7619
  %7622 = call float @dx.op.unary.f32(i32 7, float %7621)  ; Saturate(value)
  %7623 = fmul fast float %7622, %7618
  %7624 = call float @dx.op.dot3.f32(i32 55, float %5244, float %5245, float %5246, float %7613, float %7614, float %7615)  ; Dot3(ax,ay,az,bx,by,bz)
  %7625 = fmul fast float %7624, %7624
  %7626 = call float @dx.op.unary.f32(i32 6, float %7616)  ; FAbs(value)
  %7627 = fsub fast float 1.000000e+00, %5310
  %7628 = fmul fast float %5292, %5292
  %7629 = fmul fast float %7628, %7627
  %7630 = fadd fast float %7629, %5310
  %7631 = bitcast float %7630 to i32
  %7632 = ashr i32 %7631, 1
  %7633 = add nsw i32 %7632, 532487669
  %7634 = bitcast i32 %7633 to float
  %7635 = fadd fast float %7634, %5292
  %7636 = fmul fast float %5310, %7625
  %7637 = fsub fast float 1.000000e+00, %7625
  %7638 = fadd fast float %7637, %7636
  %7639 = fmul fast float %7626, %7626
  %7640 = fmul fast float %7639, %7627
  %7641 = fadd fast float %7640, %5310
  %7642 = bitcast float %7641 to i32
  %7643 = ashr i32 %7642, 1
  %7644 = add nsw i32 %7643, 532487669
  %7645 = bitcast i32 %7644 to float
  %7646 = fadd fast float %7645, %7626
  %7647 = fmul fast float %7638, %7638
  %7648 = fmul fast float %7647, %7635
  %7649 = fmul fast float %7648, %7646
  %7650 = fdiv fast float 0x3FF0A00000000000, %7649
  %7651 = fmul fast float %7650, %5310
  %7652 = call float @dx.op.unary.f32(i32 6, float %7617)  ; FAbs(value)
  %7653 = fsub fast float 1.000000e+00, %7652
  %7654 = bitcast float %7653 to i32
  %7655 = sitofp i32 %7654 to float
  %7656 = fmul fast float %7655, 5.000000e+00
  %7657 = fadd fast float %7656, 0xC1EFBF8940000000
  %7658 = fptosi float %7657 to i32
  %7659 = bitcast i32 %7658 to float
  %7660 = fsub fast float 1.000000e+00, %5241
  %7661 = fsub fast float 1.000000e+00, %5242
  %7662 = fsub fast float 1.000000e+00, %5290
  %7663 = fmul fast float %7659, %7660
  %7664 = fmul fast float %7659, %7661
  %7665 = fmul fast float %7659, %7662
  %7666 = fadd fast float %7663, %5241
  %7667 = fadd fast float %7664, %5242
  %7668 = fadd fast float %7665, %5290
  br i1 %5432, label %7669, label %7692

; <label>:7669                                    ; preds = %7589
  %7670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4056, float %7652, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7671 = extractvalue %dx.types.ResRet.f32 %7670, 0
  %7672 = extractvalue %dx.types.ResRet.f32 %7670, 1
  %7673 = extractvalue %dx.types.ResRet.f32 %7670, 2
  %7674 = fadd fast float %7671, -5.000000e-01
  %7675 = fadd fast float %7672, -5.000000e-01
  %7676 = fadd fast float %7673, -5.000000e-01
  %7677 = fmul fast float %5241, 4.000000e+00
  %7678 = fmul fast float %7677, %7660
  %7679 = fmul fast float %7678, %7674
  %7680 = fmul fast float %5242, 4.000000e+00
  %7681 = fmul fast float %7680, %7661
  %7682 = fmul fast float %7681, %7675
  %7683 = fmul fast float %5290, 4.000000e+00
  %7684 = fmul fast float %7683, %7662
  %7685 = fmul fast float %7684, %7676
  %7686 = fadd fast float %7679, %7666
  %7687 = fadd fast float %7682, %7667
  %7688 = fadd fast float %7685, %7668
  %7689 = call float @dx.op.unary.f32(i32 7, float %7686)  ; Saturate(value)
  %7690 = call float @dx.op.unary.f32(i32 7, float %7687)  ; Saturate(value)
  %7691 = call float @dx.op.unary.f32(i32 7, float %7688)  ; Saturate(value)
  br label %7692

; <label>:7692                                    ; preds = %7669, %7589
  %7693 = phi float [ %7689, %7669 ], [ %7666, %7589 ]
  %7694 = phi float [ %7690, %7669 ], [ %7667, %7589 ]
  %7695 = phi float [ %7691, %7669 ], [ %7668, %7589 ]
  %7696 = fmul fast float %7616, 9.843750e-01
  %7697 = fadd fast float %7696, 7.812500e-03
  %7698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %7697, float %5422, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7699 = extractvalue %dx.types.ResRet.f32 %7698, 2
  %7700 = extractvalue %dx.types.ResRet.f32 %7698, 3
  %7701 = fmul fast float %7699, %5241
  %7702 = fmul fast float %7699, %5242
  %7703 = fmul fast float %7699, %5290
  %7704 = fadd fast float %7701, %7700
  %7705 = fadd fast float %7702, %7700
  %7706 = fadd fast float %7703, %7700
  br i1 %5432, label %7707, label %7730

; <label>:7707                                    ; preds = %7692
  %7708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4056, float %7616, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7709 = extractvalue %dx.types.ResRet.f32 %7708, 0
  %7710 = extractvalue %dx.types.ResRet.f32 %7708, 1
  %7711 = extractvalue %dx.types.ResRet.f32 %7708, 2
  %7712 = fadd fast float %7709, -5.000000e-01
  %7713 = fadd fast float %7710, -5.000000e-01
  %7714 = fadd fast float %7711, -5.000000e-01
  %7715 = fmul fast float %5241, 4.000000e+00
  %7716 = fmul fast float %7715, %7660
  %7717 = fmul fast float %7716, %7712
  %7718 = fmul fast float %5242, 4.000000e+00
  %7719 = fmul fast float %7718, %7661
  %7720 = fmul fast float %7719, %7713
  %7721 = fmul fast float %5290, 4.000000e+00
  %7722 = fmul fast float %7721, %7662
  %7723 = fmul fast float %7722, %7714
  %7724 = fadd fast float %7717, %7704
  %7725 = fadd fast float %7720, %7705
  %7726 = fadd fast float %7723, %7706
  %7727 = call float @dx.op.unary.f32(i32 7, float %7724)  ; Saturate(value)
  %7728 = call float @dx.op.unary.f32(i32 7, float %7725)  ; Saturate(value)
  %7729 = call float @dx.op.unary.f32(i32 7, float %7726)  ; Saturate(value)
  br label %7730

; <label>:7730                                    ; preds = %7707, %7692
  %7731 = phi float [ %7727, %7707 ], [ %7704, %7692 ]
  %7732 = phi float [ %7728, %7707 ], [ %7705, %7692 ]
  %7733 = phi float [ %7729, %7707 ], [ %7706, %7692 ]
  %7734 = call float @dx.op.binary.f32(i32 35, float %7732, float %7733)  ; FMax(a,b)
  %7735 = call float @dx.op.binary.f32(i32 35, float %7731, float %7734)  ; FMax(a,b)
  %7736 = fsub fast float 1.000000e+00, %7735
  %7737 = fmul fast float %7693, %7651
  %7738 = fmul fast float %7694, %7651
  %7739 = fmul fast float %7695, %7651
  %7740 = fsub fast float 1.000000e+00, %7617
  %7741 = bitcast float %7740 to i32
  %7742 = sitofp i32 %7741 to float
  %7743 = fmul fast float %7742, 5.000000e+00
  %7744 = fadd fast float %7743, 0xC1EFBF8940000000
  %7745 = fptosi float %7744 to i32
  %7746 = bitcast i32 %7745 to float
  %7747 = fmul fast float %7746, %4057
  %7748 = fmul fast float %7736, %7747
  %7749 = fmul fast float %7748, %6027
  %7750 = fmul fast float %7748, %6028
  %7751 = fmul fast float %7748, %6029
  %7752 = fadd fast float %7749, %7737
  %7753 = fadd fast float %7750, %7738
  %7754 = fadd fast float %7751, %7739
  %7755 = fmul fast float %7623, %7605
  %7756 = fmul fast float %7755, %7736
  %7757 = fmul fast float %7623, %7606
  %7758 = fmul fast float %7757, %7736
  %7759 = fmul fast float %7623, %7607
  %7760 = fmul fast float %7759, %7736
  %7761 = fmul fast float %7755, %7752
  %7762 = fmul fast float %7757, %7753
  %7763 = fmul fast float %7759, %7754
  %7764 = fadd fast float %7756, %6009
  %7765 = fmul fast float %7764, %4053
  %7766 = fadd fast float %7758, %6011
  %7767 = fmul fast float %7766, %4053
  %7768 = fadd fast float %7760, %6013
  %7769 = fmul fast float %7768, %4053
  %7770 = fadd fast float %7761, %6061
  %7771 = fmul fast float %7770, %4053
  %7772 = fadd fast float %7762, %6064
  %7773 = fmul fast float %7772, %4053
  %7774 = fadd fast float %7763, %6067
  %7775 = fmul fast float %7774, %4053
  br label %7776

; <label>:7776                                    ; preds = %7730, %7523, %5954
  %7777 = phi float [ %6062, %5954 ], [ %6062, %7523 ], [ %7771, %7730 ]
  %7778 = phi float [ %6065, %5954 ], [ %6065, %7523 ], [ %7773, %7730 ]
  %7779 = phi float [ %6068, %5954 ], [ %6068, %7523 ], [ %7775, %7730 ]
  %7780 = phi float [ %6057, %5954 ], [ %6057, %7523 ], [ %7765, %7730 ]
  %7781 = phi float [ %6058, %5954 ], [ %6058, %7523 ], [ %7767, %7730 ]
  %7782 = phi float [ %6059, %5954 ], [ %6059, %7523 ], [ %7769, %7730 ]
  %7783 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7784 = extractvalue %dx.types.CBufRet.i32 %7783, 0
  %7785 = icmp eq i32 %7784, 0
  br i1 %7785, label %8449, label %7786

; <label>:7786                                    ; preds = %7776
  %7787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7788 = extractvalue %dx.types.CBufRet.f32 %7787, 2
  %7789 = extractvalue %dx.types.CBufRet.f32 %7787, 3
  %7790 = fmul fast float %7788, %118
  %7791 = fmul fast float %7789, %119
  %7792 = fptoui float %7790 to i32
  %7793 = fptoui float %7791 to i32
  %7794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7795 = extractvalue %dx.types.CBufRet.f32 %7794, 0
  %7796 = extractvalue %dx.types.CBufRet.f32 %7794, 2
  %7797 = extractvalue %dx.types.CBufRet.f32 %7794, 3
  %7798 = fadd fast float %105, -4.000000e+00
  %7799 = call float @dx.op.binary.f32(i32 35, float %7798, float 0.000000e+00)  ; FMax(a,b)
  %7800 = fadd fast float %7799, %7795
  %7801 = fmul fast float %7800, %7796
  %7802 = call float @dx.op.unary.f32(i32 23, float %7801)  ; Log(value)
  %7803 = fmul fast float %7802, %7797
  %7804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7805 = extractvalue %dx.types.CBufRet.f32 %7804, 2
  %7806 = fmul fast float %7803, %7805
  %7807 = call float @dx.op.unary.f32(i32 7, float %7806)  ; Saturate(value)
  %7808 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7809 = extractvalue %dx.types.CBufRet.i32 %7808, 1
  %7810 = add i32 %7809, -1
  %7811 = uitofp i32 %7809 to float
  %7812 = fmul fast float %7811, %7807
  %7813 = fptoui float %7812 to i32
  %7814 = call i32 @dx.op.binary.i32(i32 40, i32 %7813, i32 %7810)  ; UMin(a,b)
  %7815 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7816 = extractvalue %dx.types.CBufRet.i32 %7815, 2
  %7817 = extractvalue %dx.types.CBufRet.i32 %7815, 3
  %7818 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7793, i32 %7816, i32 %7792)  ; UMad(a,b,c)
  %7819 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7814, i32 %7817, i32 %7818)  ; UMad(a,b,c)
  %7820 = add nsw i32 %7784, -1
  %7821 = call i32 @dx.op.binary.i32(i32 37, i32 %7820, i32 0)  ; IMax(a,b)
  %7822 = call float @dx.op.binary.f32(i32 35, float %105, float 0.000000e+00)  ; FMax(a,b)
  %7823 = fptoui float %7822 to i32
  %7824 = lshr i32 %7823, 5
  %7825 = call i32 @dx.op.binary.i32(i32 40, i32 %7824, i32 8191)  ; UMin(a,b)
  %7826 = shl i32 %7825, 2
  %7827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7826, i32 undef)  ; BufferLoad(srv,index,wot)
  %7828 = extractvalue %dx.types.ResRet.i32 %7827, 0
  %7829 = lshr i32 %7828, 16
  %7830 = and i32 %7828, 65535
  %7831 = lshr i32 %7828, 21
  %7832 = lshr i32 %7830, 5
  %7833 = call i32 @dx.op.binary.i32(i32 40, i32 %7832, i32 %7821)  ; UMin(a,b)
  %7834 = icmp ugt i32 %7831, %7833
  br i1 %7834, label %8449, label %7835

; <label>:7835                                    ; preds = %7786
  br label %7836

; <label>:7836                                    ; preds = %8439, %7835
  %7837 = phi i32 [ %8446, %8439 ], [ %7831, %7835 ]
  %7838 = phi float [ %8440, %8439 ], [ %7777, %7835 ]
  %7839 = phi float [ %8441, %8439 ], [ %7778, %7835 ]
  %7840 = phi float [ %8442, %8439 ], [ %7779, %7835 ]
  %7841 = phi float [ %8443, %8439 ], [ %7780, %7835 ]
  %7842 = phi float [ %8444, %8439 ], [ %7781, %7835 ]
  %7843 = phi float [ %8445, %8439 ], [ %7782, %7835 ]
  %7844 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7845 = extractvalue %dx.types.CBufRet.i32 %7844, 0
  %7846 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7819, i32 %7845, i32 %7837)  ; UMad(a,b,c)
  %7847 = shl i32 %7846, 2
  %7848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7847, i32 undef)  ; BufferLoad(srv,index,wot)
  %7849 = extractvalue %dx.types.ResRet.i32 %7848, 0
  %7850 = shl i32 %7837, 5
  %7851 = sub nsw i32 %7829, %7850
  %7852 = call i32 @dx.op.binary.i32(i32 37, i32 %7851, i32 0)  ; IMax(a,b)
  %7853 = call i32 @dx.op.binary.i32(i32 38, i32 %7852, i32 31)  ; IMin(a,b)
  %7854 = sub nsw i32 1, %7829
  %7855 = add nsw i32 %7854, %7830
  %7856 = call i32 @dx.op.binary.i32(i32 37, i32 %7855, i32 0)  ; IMax(a,b)
  %7857 = call i32 @dx.op.binary.i32(i32 38, i32 %7856, i32 32)  ; IMin(a,b)
  %7858 = and i32 %7857, 31
  %7859 = shl i32 -1, %7858
  %7860 = xor i32 %7859, -1
  %7861 = and i32 %7853, 31
  %7862 = shl i32 %7860, %7861
  %7863 = icmp eq i32 %7857, 32
  %7864 = select i1 %7863, i32 -1, i32 %7862
  %7865 = and i32 %7864, %7849
  %7866 = icmp eq i32 %7865, 0
  br i1 %7866, label %8439, label %7867

; <label>:7867                                    ; preds = %7836
  br label %7868

; <label>:7868                                    ; preds = %8002, %7867
  %7869 = phi i32 [ %7880, %8002 ], [ %7865, %7867 ]
  %7870 = phi float [ %8003, %8002 ], [ %7838, %7867 ]
  %7871 = phi float [ %8004, %8002 ], [ %7839, %7867 ]
  %7872 = phi float [ %8005, %8002 ], [ %7840, %7867 ]
  %7873 = phi float [ %8006, %8002 ], [ %7841, %7867 ]
  %7874 = phi float [ %8007, %8002 ], [ %7842, %7867 ]
  %7875 = phi float [ %8008, %8002 ], [ %7843, %7867 ]
  %7876 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7869)  ; FirstbitLo(value)
  %7877 = add i32 %7876, %7850
  %7878 = and i32 %7876, 31
  %7879 = shl i32 1, %7878
  %7880 = xor i32 %7879, %7869
  %7881 = mul i32 %7877, 112
  %7882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7881, i32 undef)  ; BufferLoad(srv,index,wot)
  %7883 = extractvalue %dx.types.ResRet.f32 %7882, 0
  %7884 = extractvalue %dx.types.ResRet.f32 %7882, 1
  %7885 = extractvalue %dx.types.ResRet.f32 %7882, 2
  %7886 = or i32 %7881, 12
  %7887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7886, i32 undef)  ; BufferLoad(srv,index,wot)
  %7888 = extractvalue %dx.types.ResRet.f32 %7887, 0
  %7889 = add i32 %7881, 16
  %7890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7889, i32 undef)  ; BufferLoad(srv,index,wot)
  %7891 = extractvalue %dx.types.ResRet.f32 %7890, 0
  %7892 = extractvalue %dx.types.ResRet.f32 %7890, 1
  %7893 = extractvalue %dx.types.ResRet.f32 %7890, 2
  %7894 = add i32 %7881, 28
  %7895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7894, i32 undef)  ; BufferLoad(srv,index,wot)
  %7896 = extractvalue %dx.types.ResRet.i32 %7895, 0
  %7897 = add i32 %7881, 44
  %7898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7897, i32 undef)  ; BufferLoad(srv,index,wot)
  %7899 = extractvalue %dx.types.ResRet.f32 %7898, 0
  %7900 = add i32 %7881, 48
  %7901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7900, i32 undef)  ; BufferLoad(srv,index,wot)
  %7902 = extractvalue %dx.types.ResRet.f32 %7901, 0
  %7903 = extractvalue %dx.types.ResRet.f32 %7901, 1
  %7904 = extractvalue %dx.types.ResRet.f32 %7901, 2
  %7905 = extractvalue %dx.types.ResRet.f32 %7901, 3
  %7906 = add i32 %7881, 64
  %7907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7906, i32 undef)  ; BufferLoad(srv,index,wot)
  %7908 = extractvalue %dx.types.ResRet.f32 %7907, 0
  %7909 = extractvalue %dx.types.ResRet.f32 %7907, 1
  %7910 = extractvalue %dx.types.ResRet.f32 %7907, 2
  %7911 = extractvalue %dx.types.ResRet.f32 %7907, 3
  %7912 = add i32 %7881, 80
  %7913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7912, i32 undef)  ; BufferLoad(srv,index,wot)
  %7914 = extractvalue %dx.types.ResRet.f32 %7913, 1
  %7915 = extractvalue %dx.types.ResRet.f32 %7913, 2
  %7916 = add i32 %7881, 92
  %7917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7916, i32 undef)  ; BufferLoad(srv,index,wot)
  %7918 = extractvalue %dx.types.ResRet.i32 %7917, 0
  %7919 = call float @dx.op.dot3.f32(i32 55, float %7883, float %7884, float %7885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7920 = select i1 %264, float %7914, float %7883
  %7921 = select i1 %264, float %7919, float %7884
  %7922 = select i1 %264, float %7915, float %7885
  %7923 = and i32 %7918, 65535
  %7924 = uitofp i32 %7923 to float
  %7925 = lshr i32 %7918, 16
  %7926 = uitofp i32 %7925 to float
  %7927 = and i32 %7896, 65535
  %7928 = and i32 %7896, 50331648
  %7929 = icmp eq i32 %7928, 33554432
  %7930 = fsub fast float %7902, %205
  %7931 = fsub fast float %7903, %206
  %7932 = fsub fast float %7904, %207
  %7933 = call float @dx.op.dot3.f32(i32 55, float %7930, float %7931, float %7932, float %7930, float %7931, float %7932)  ; Dot3(ax,ay,az,bx,by,bz)
  %7934 = call float @dx.op.unary.f32(i32 24, float %7933)  ; Sqrt(value)
  %7935 = fdiv fast float 1.000000e+00, %7934
  %7936 = fmul fast float %7935, %7930
  %7937 = fmul fast float %7935, %7931
  %7938 = fmul fast float %7935, %7932
  %7939 = fadd fast float %7934, %7888
  %7940 = fdiv fast float 1.000000e+00, %7939
  %7941 = fmul float %7899, %7940
  %7942 = fmul float %7941, %7941
  %7943 = call float @dx.op.unary.f32(i32 7, float %7942)  ; Saturate(value)
  br i1 %7929, label %7944, label %7965

; <label>:7944                                    ; preds = %7868
  %7945 = fmul fast float %7910, %7891
  %7946 = fmul fast float %7910, %7892
  %7947 = fmul fast float %7910, %7893
  %7948 = fadd fast float %7930, %7945
  %7949 = fadd fast float %7931, %7946
  %7950 = fadd fast float %7932, %7947
  %7951 = call float @dx.op.dot3.f32(i32 55, float %7948, float %7949, float %7950, float %7948, float %7949, float %7950)  ; Dot3(ax,ay,az,bx,by,bz)
  %7952 = call float @dx.op.unary.f32(i32 25, float %7951)  ; Rsqrt(value)
  %7953 = fmul fast float %7952, %7948
  %7954 = fmul fast float %7952, %7949
  %7955 = fmul fast float %7952, %7950
  %7956 = fsub fast float %205, %7902
  %7957 = fsub fast float %206, %7903
  %7958 = fsub fast float %207, %7904
  %7959 = fsub fast float -0.000000e+00, %7956
  %7960 = fsub fast float -0.000000e+00, %7957
  %7961 = fsub fast float -0.000000e+00, %7958
  %7962 = call float @dx.op.dot3.f32(i32 55, float %7959, float %7960, float %7961, float %7891, float %7892, float %7893)  ; Dot3(ax,ay,az,bx,by,bz)
  %7963 = fcmp fast ogt float %7962, 0.000000e+00
  %7964 = uitofp i1 %7963 to float
  br label %7965

; <label>:7965                                    ; preds = %7944, %7868
  %7966 = phi float [ %7964, %7944 ], [ 1.000000e+00, %7868 ]
  %7967 = phi float [ %7953, %7944 ], [ %7936, %7868 ]
  %7968 = phi float [ %7954, %7944 ], [ %7937, %7868 ]
  %7969 = phi float [ %7955, %7944 ], [ %7938, %7868 ]
  %7970 = call float @dx.op.dot3.f32(i32 55, float %7891, float %7892, float %7893, float %7967, float %7968, float %7969)  ; Dot3(ax,ay,az,bx,by,bz)
  %7971 = fmul fast float %7970, %7970
  %7972 = call float @dx.op.unary.f32(i32 7, float %7971)  ; Saturate(value)
  %7973 = fsub fast float 1.000000e+00, %7972
  %7974 = fmul fast float %7973, 5.000000e-01
  %7975 = fcmp fast ogt float %7970, 0.000000e+00
  %7976 = fsub fast float 1.000000e+00, %7974
  %7977 = select i1 %7975, float %7974, float %7976
  %7978 = fmul fast float %7977, %7926
  %7979 = fadd fast float %7978, %7924
  %7980 = fmul fast float %7979, 0x3EF0001000000000
  %7981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %55, float %7980, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7982 = extractvalue %dx.types.ResRet.f32 %7981, 0
  %7983 = fmul fast float %7970, %7908
  %7984 = fadd fast float %7983, %7909
  %7985 = call float @dx.op.unary.f32(i32 7, float %7984)  ; Saturate(value)
  %7986 = select i1 %7929, float 1.000000e+00, float %7985
  %7987 = select i1 %7929, float %7985, float 1.000000e+00
  %7988 = fmul fast float %7934, %7905
  %7989 = fsub fast float 1.000000e+00, %7988
  %7990 = fmul fast float %7989, %7911
  %7991 = call float @dx.op.unary.f32(i32 7, float %7990)  ; Saturate(value)
  %7992 = fmul fast float %7991, %7987
  %7993 = fmul fast float %7992, 2.000000e+00
  %7994 = fsub fast float 3.000000e+00, %7993
  %7995 = fmul fast float %7982, %7966
  %7996 = fmul fast float %7992, %7992
  %7997 = fmul fast float %7996, %7995
  %7998 = fmul fast float %7997, %7994
  %7999 = call float @dx.op.binary.f32(i32 36, float %7998, float %7998)  ; FMin(a,b)
  %8000 = call float @dx.op.binary.f32(i32 36, float %7998, float %7999)  ; FMin(a,b)
  %8001 = fcmp fast ogt float %8000, 0.000000e+00
  br i1 %8001, label %8010, label %8002, !dx.controlflow.hints !137

; <label>:8002                                    ; preds = %8395, %8156, %7965
  %8003 = phi float [ %7870, %8156 ], [ %7870, %7965 ], [ %8435, %8395 ]
  %8004 = phi float [ %7871, %8156 ], [ %7871, %7965 ], [ %8436, %8395 ]
  %8005 = phi float [ %7872, %8156 ], [ %7872, %7965 ], [ %8437, %8395 ]
  %8006 = phi float [ %7873, %8156 ], [ %7873, %7965 ], [ %8429, %8395 ]
  %8007 = phi float [ %7874, %8156 ], [ %7874, %7965 ], [ %8430, %8395 ]
  %8008 = phi float [ %7875, %8156 ], [ %7875, %7965 ], [ %8431, %8395 ]
  %8009 = icmp eq i32 %7869, %7879
  br i1 %8009, label %8438, label %7868

; <label>:8010                                    ; preds = %7965
  %8011 = icmp eq i32 %7927, 255
  br i1 %8011, label %8156, label %8012, !dx.controlflow.hints !138

; <label>:8012                                    ; preds = %8010
  %8013 = mul nuw nsw i32 %7927, 176
  %8014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8013, i32 undef)  ; BufferLoad(srv,index,wot)
  %8015 = extractvalue %dx.types.ResRet.f32 %8014, 0
  %8016 = extractvalue %dx.types.ResRet.f32 %8014, 1
  %8017 = extractvalue %dx.types.ResRet.f32 %8014, 2
  %8018 = extractvalue %dx.types.ResRet.f32 %8014, 3
  %8019 = add nuw nsw i32 %8013, 16
  %8020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8019, i32 undef)  ; BufferLoad(srv,index,wot)
  %8021 = extractvalue %dx.types.ResRet.f32 %8020, 0
  %8022 = extractvalue %dx.types.ResRet.f32 %8020, 1
  %8023 = add nuw nsw i32 %8013, 32
  %8024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8023, i32 undef)  ; BufferLoad(srv,index,wot)
  %8025 = extractvalue %dx.types.ResRet.f32 %8024, 0
  %8026 = extractvalue %dx.types.ResRet.f32 %8024, 1
  %8027 = extractvalue %dx.types.ResRet.f32 %8024, 2
  %8028 = add nuw nsw i32 %8013, 48
  %8029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8028, i32 undef)  ; BufferLoad(srv,index,wot)
  %8030 = extractvalue %dx.types.ResRet.f32 %8029, 0
  %8031 = extractvalue %dx.types.ResRet.f32 %8029, 1
  %8032 = extractvalue %dx.types.ResRet.f32 %8029, 2
  %8033 = extractvalue %dx.types.ResRet.f32 %8029, 3
  %8034 = add nuw nsw i32 %8013, 64
  %8035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8034, i32 undef)  ; BufferLoad(srv,index,wot)
  %8036 = extractvalue %dx.types.ResRet.f32 %8035, 0
  %8037 = extractvalue %dx.types.ResRet.f32 %8035, 1
  %8038 = extractvalue %dx.types.ResRet.f32 %8035, 2
  %8039 = extractvalue %dx.types.ResRet.f32 %8035, 3
  %8040 = add nuw nsw i32 %8013, 80
  %8041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8040, i32 undef)  ; BufferLoad(srv,index,wot)
  %8042 = extractvalue %dx.types.ResRet.f32 %8041, 0
  %8043 = extractvalue %dx.types.ResRet.f32 %8041, 1
  %8044 = extractvalue %dx.types.ResRet.f32 %8041, 2
  %8045 = extractvalue %dx.types.ResRet.f32 %8041, 3
  %8046 = add nuw nsw i32 %8013, 96
  %8047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8046, i32 undef)  ; BufferLoad(srv,index,wot)
  %8048 = extractvalue %dx.types.ResRet.f32 %8047, 0
  %8049 = extractvalue %dx.types.ResRet.f32 %8047, 1
  %8050 = extractvalue %dx.types.ResRet.f32 %8047, 2
  %8051 = extractvalue %dx.types.ResRet.f32 %8047, 3
  %8052 = bitcast float %8022 to i32
  %8053 = fmul fast float %8027, %125
  %8054 = fmul fast float %8027, %126
  %8055 = fmul fast float %8027, %127
  %8056 = fadd fast float %8053, %205
  %8057 = fadd fast float %8054, %206
  %8058 = fadd fast float %8055, %207
  %8059 = fmul fast float %8056, %8030
  %8060 = call float @dx.op.tertiary.f32(i32 46, float %8057, float %8036, float %8059)  ; FMad(a,b,c)
  %8061 = call float @dx.op.tertiary.f32(i32 46, float %8058, float %8042, float %8060)  ; FMad(a,b,c)
  %8062 = fadd fast float %8061, %8048
  %8063 = fmul fast float %8056, %8031
  %8064 = call float @dx.op.tertiary.f32(i32 46, float %8057, float %8037, float %8063)  ; FMad(a,b,c)
  %8065 = call float @dx.op.tertiary.f32(i32 46, float %8058, float %8043, float %8064)  ; FMad(a,b,c)
  %8066 = fadd fast float %8065, %8049
  %8067 = fmul fast float %8056, %8032
  %8068 = call float @dx.op.tertiary.f32(i32 46, float %8057, float %8038, float %8067)  ; FMad(a,b,c)
  %8069 = call float @dx.op.tertiary.f32(i32 46, float %8058, float %8044, float %8068)  ; FMad(a,b,c)
  %8070 = fadd fast float %8069, %8050
  %8071 = fmul fast float %8056, %8033
  %8072 = call float @dx.op.tertiary.f32(i32 46, float %8057, float %8039, float %8071)  ; FMad(a,b,c)
  %8073 = call float @dx.op.tertiary.f32(i32 46, float %8058, float %8045, float %8072)  ; FMad(a,b,c)
  %8074 = fadd fast float %8073, %8051
  %8075 = fdiv fast float %8062, %8074
  %8076 = fdiv fast float %8066, %8074
  %8077 = fdiv fast float %8070, %8074
  %8078 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8077)  ; FMax(a,b)
  %8079 = fmul fast float %275, 0x401921FB60000000
  %8080 = call float @dx.op.unary.f32(i32 13, float %8079)  ; Sin(value)
  %8081 = call float @dx.op.unary.f32(i32 12, float %8079)  ; Cos(value)
  %8082 = fmul fast float %8081, %8026
  %8083 = call float @dx.op.tertiary.f32(i32 46, float %8080, float %8026, float 0.000000e+00)  ; FMad(a,b,c)
  %8084 = fmul fast float %8026, %8080
  %8085 = fsub fast float -0.000000e+00, %8084
  %8086 = call float @dx.op.tertiary.f32(i32 46, float %8081, float %8026, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8087

; <label>:8087                                    ; preds = %8087, %8012
  %8088 = phi float [ 0.000000e+00, %8012 ], [ %8120, %8087 ]
  %8089 = phi float [ 0.000000e+00, %8012 ], [ %8122, %8087 ]
  %8090 = phi i32 [ 0, %8012 ], [ %8123, %8087 ]
  %8091 = mul i32 %8090, 2
  %8092 = add i32 0, %8091
  %8093 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8092
  %8094 = load float, float* %8093, align 4
  %8095 = mul i32 %8090, 2
  %8096 = add i32 1, %8095
  %8097 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8096
  %8098 = load float, float* %8097, align 4
  %8099 = fmul fast float %8082, %8094
  %8100 = call float @dx.op.tertiary.f32(i32 46, float %8098, float %8085, float %8099)  ; FMad(a,b,c)
  %8101 = fmul fast float %8094, %8083
  %8102 = call float @dx.op.tertiary.f32(i32 46, float %8098, float %8086, float %8101)  ; FMad(a,b,c)
  %8103 = fadd fast float %8100, %8075
  %8104 = fadd fast float %8102, %8076
  %8105 = fmul fast float %8103, %8021
  %8106 = fmul fast float %8104, %8021
  %8107 = call float @dx.op.binary.f32(i32 35, float %8105, float %8017)  ; FMax(a,b)
  %8108 = call float @dx.op.binary.f32(i32 35, float %8106, float %8017)  ; FMax(a,b)
  %8109 = call float @dx.op.binary.f32(i32 36, float %8107, float %8018)  ; FMin(a,b)
  %8110 = call float @dx.op.binary.f32(i32 36, float %8108, float %8018)  ; FMin(a,b)
  %8111 = fadd fast float %8109, %8015
  %8112 = fadd fast float %8110, %8016
  %8113 = uitofp i32 %8052 to float
  %8114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %8111, float %8112, float %8113, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8115 = extractvalue %dx.types.ResRet.f32 %8114, 0
  %8116 = fsub fast float %8115, %8078
  %8117 = fsub fast float %8116, %8025
  %8118 = fcmp fast ogt float %8117, 0.000000e+00
  %8119 = select i1 %8118, float 1.000000e+00, float 0.000000e+00
  %8120 = fadd fast float %8119, %8088
  %8121 = select i1 %8118, float %8117, float 0.000000e+00
  %8122 = fadd fast float %8121, %8089
  %8123 = add nuw nsw i32 %8090, 1
  %8124 = icmp eq i32 %8123, 8
  br i1 %8124, label %8125, label %8087

; <label>:8125                                    ; preds = %8087
  %8126 = fdiv fast float 1.000000e+00, %8120
  %8127 = fmul fast float %8126, %8122
  %8128 = fdiv fast float 1.000000e+00, %8078
  %8129 = fmul fast float %8127, %8128
  %8130 = call float @dx.op.unary.f32(i32 7, float %8129)  ; Saturate(value)
  %8131 = call float @dx.op.binary.f32(i32 35, float %8130, float 0.000000e+00)  ; FMax(a,b)
  %8132 = fmul fast float %8120, 1.250000e-01
  %8133 = call float @dx.op.unary.f32(i32 7, float %8132)  ; Saturate(value)
  %8134 = fmul fast float %8133, 2.000000e+00
  %8135 = fadd fast float %8134, -1.000000e+00
  %8136 = fcmp fast ogt float %8135, 0.000000e+00
  %8137 = fcmp fast olt float %8135, 0.000000e+00
  %8138 = zext i1 %8136 to i32
  %8139 = zext i1 %8137 to i32
  %8140 = sub nsw i32 %8138, %8139
  %8141 = sitofp i32 %8140 to float
  %8142 = fmul fast float %8141, %8135
  %8143 = fsub fast float 1.000000e+00, %8142
  %8144 = fmul fast float %8143, %8143
  %8145 = fmul fast float %8144, %8143
  %8146 = fsub fast float %8143, %8145
  %8147 = fmul fast float %8146, %8131
  %8148 = fsub fast float 1.000000e+00, %8145
  %8149 = fsub fast float %8148, %8147
  %8150 = fmul fast float %8141, 5.000000e-01
  %8151 = fmul fast float %8150, %8149
  %8152 = fsub fast float -5.000000e-01, %8151
  %8153 = fmul fast float %8152, %7986
  %8154 = fadd fast float %8153, 1.000000e+00
  %8155 = fmul fast float %8154, %7998
  br label %8156

; <label>:8156                                    ; preds = %8125, %8010
  %8157 = phi float [ %8155, %8125 ], [ %7998, %8010 ]
  %8158 = call float @dx.op.binary.f32(i32 36, float %8157, float %8157)  ; FMin(a,b)
  %8159 = call float @dx.op.binary.f32(i32 36, float %8157, float %8158)  ; FMin(a,b)
  %8160 = fcmp fast ogt float %8159, 0.000000e+00
  br i1 %8160, label %8161, label %8002, !dx.controlflow.hints !139

; <label>:8161                                    ; preds = %8156
  %8162 = fmul fast float %8157, %7920
  %8163 = fmul fast float %8157, %7921
  %8164 = fmul fast float %8157, %7922
  %8165 = fsub fast float %7904, %4458
  %8166 = fcmp fast ogt float %8165, 0.000000e+00
  %8167 = fsub fast float %207, %4458
  %8168 = fcmp fast ogt float %8167, 0.000000e+00
  %8169 = xor i1 %8168, %8166
  %8170 = fsub fast float %4458, %7904
  %8171 = fmul fast float %8170, 2.000000e+00
  %8172 = fadd fast float %8171, %7904
  %8173 = select i1 %8169, float %7904, float %8172
  %8174 = fsub fast float %8173, %207
  %8175 = call float @dx.op.dot3.f32(i32 55, float %7930, float %7931, float %8174, float %7930, float %7931, float %8174)  ; Dot3(ax,ay,az,bx,by,bz)
  %8176 = call float @dx.op.unary.f32(i32 25, float %8175)  ; Rsqrt(value)
  %8177 = fmul fast float %8176, %7930
  %8178 = fmul fast float %8176, %7931
  %8179 = fmul fast float %8176, %8174
  %8180 = fsub fast float %4458, %207
  %8181 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8180)  ; Dot3(ax,ay,az,bx,by,bz)
  %8182 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8177, float %8178, float %8179)  ; Dot3(ax,ay,az,bx,by,bz)
  %8183 = fdiv fast float 1.000000e+00, %8182
  %8184 = fmul fast float %8183, %8181
  %8185 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8167, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8186 = fcmp fast ogt float %8185, 0.000000e+00
  %8187 = fcmp fast olt float %8185, 0.000000e+00
  %8188 = zext i1 %8186 to i32
  %8189 = zext i1 %8187 to i32
  %8190 = sub nsw i32 %8188, %8189
  %8191 = sitofp i32 %8190 to float
  %8192 = fsub fast float %8173, %4458
  %8193 = call float @dx.op.dot3.f32(i32 55, float %7930, float %7931, float %8192, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8194 = fcmp fast ogt float %8193, 0.000000e+00
  %8195 = fcmp fast olt float %8193, 0.000000e+00
  %8196 = zext i1 %8194 to i32
  %8197 = zext i1 %8195 to i32
  %8198 = sub nsw i32 %8196, %8197
  %8199 = sitofp i32 %8198 to float
  %8200 = fcmp fast une float %8191, %8199
  br i1 %8200, label %8201, label %8211

; <label>:8201                                    ; preds = %8161
  %8202 = fmul fast float %8184, %8179
  %8203 = fmul fast float %8184, %8178
  %8204 = fmul fast float %8184, %8177
  %8205 = fmul fast float %8204, %8204
  %8206 = fmul fast float %8203, %8203
  %8207 = fadd fast float %8205, %8206
  %8208 = fmul fast float %8202, %8202
  %8209 = fadd fast float %8207, %8208
  %8210 = call float @dx.op.unary.f32(i32 24, float %8209)  ; Sqrt(value)
  br label %8223

; <label>:8211                                    ; preds = %8161
  %8212 = icmp slt i32 %8190, 0
  br i1 %8212, label %8213, label %8223

; <label>:8213                                    ; preds = %8211
  %8214 = fsub fast float %205, %7902
  %8215 = fsub fast float %206, %7903
  %8216 = fsub fast float %207, %8173
  %8217 = fmul fast float %8214, %8214
  %8218 = fmul fast float %8215, %8215
  %8219 = fadd fast float %8217, %8218
  %8220 = fmul fast float %8216, %8216
  %8221 = fadd fast float %8219, %8220
  %8222 = call float @dx.op.unary.f32(i32 24, float %8221)  ; Sqrt(value)
  br label %8223

; <label>:8223                                    ; preds = %8213, %8211, %8201
  %8224 = phi float [ %8210, %8201 ], [ %8222, %8213 ], [ 0.000000e+00, %8211 ]
  %8225 = and i1 %8168, %8166
  %8226 = fsub fast float -0.000000e+00, %8224
  %8227 = select i1 %8225, float -0.000000e+00, float %8226
  %8228 = fmul fast float %4459, 0x3FF7154760000000
  %8229 = fmul fast float %8228, %8227
  %8230 = fmul fast float %4460, 0x3FF7154760000000
  %8231 = fmul fast float %8230, %8227
  %8232 = fmul fast float %4461, 0x3FF7154760000000
  %8233 = fmul fast float %8232, %8227
  %8234 = call float @dx.op.unary.f32(i32 21, float %8229)  ; Exp(value)
  %8235 = call float @dx.op.unary.f32(i32 21, float %8231)  ; Exp(value)
  %8236 = call float @dx.op.unary.f32(i32 21, float %8233)  ; Exp(value)
  %8237 = call float @dx.op.unary.f32(i32 7, float %8234)  ; Saturate(value)
  %8238 = call float @dx.op.unary.f32(i32 7, float %8235)  ; Saturate(value)
  %8239 = call float @dx.op.unary.f32(i32 7, float %8236)  ; Saturate(value)
  %8240 = fmul fast float %8162, %8237
  %8241 = fmul fast float %8163, %8238
  %8242 = fmul fast float %8164, %8239
  %8243 = fsub fast float %7936, %5284
  %8244 = fsub fast float %7937, %5285
  %8245 = fsub fast float %7938, %5286
  %8246 = call float @dx.op.dot3.f32(i32 55, float %8243, float %8244, float %8245, float %8243, float %8244, float %8245)  ; Dot3(ax,ay,az,bx,by,bz)
  %8247 = call float @dx.op.unary.f32(i32 25, float %8246)  ; Rsqrt(value)
  %8248 = fmul fast float %8247, %8243
  %8249 = fmul fast float %8247, %8244
  %8250 = fmul fast float %8247, %8245
  %8251 = call float @dx.op.dot3.f32(i32 55, float %7936, float %7937, float %7938, float %5244, float %5245, float %5246)  ; Dot3(ax,ay,az,bx,by,bz)
  %8252 = call float @dx.op.dot3.f32(i32 55, float %5287, float %5288, float %5289, float %8248, float %8249, float %8250)  ; Dot3(ax,ay,az,bx,by,bz)
  %8253 = call float @dx.op.unary.f32(i32 7, float %8251)  ; Saturate(value)
  %8254 = fmul fast float %8253, %7943
  %8255 = bitcast i32 %5316 to float
  %8256 = fmul fast float %8253, %8253
  %8257 = fmul fast float %8256, %8255
  %8258 = call float @dx.op.unary.f32(i32 7, float %8257)  ; Saturate(value)
  %8259 = fmul fast float %8254, %8258
  %8260 = bitcast float %7933 to i32
  %8261 = ashr i32 %8260, 1
  %8262 = sub nsw i32 1597463007, %8261
  %8263 = bitcast i32 %8262 to float
  %8264 = fmul fast float %8263, %7930
  %8265 = fmul fast float %8263, %7931
  %8266 = fmul fast float %8263, %7932
  %8267 = fsub fast float %8264, %5284
  %8268 = fsub fast float %8265, %5285
  %8269 = fsub fast float %8266, %5286
  %8270 = call float @dx.op.dot3.f32(i32 55, float %8267, float %8268, float %8269, float %8267, float %8268, float %8269)  ; Dot3(ax,ay,az,bx,by,bz)
  %8271 = call float @dx.op.unary.f32(i32 25, float %8270)  ; Rsqrt(value)
  %8272 = fmul fast float %8267, %8271
  %8273 = fmul fast float %8268, %8271
  %8274 = fmul fast float %8269, %8271
  %8275 = call float @dx.op.dot3.f32(i32 55, float %5244, float %5245, float %5246, float %8272, float %8273, float %8274)  ; Dot3(ax,ay,az,bx,by,bz)
  %8276 = fmul fast float %8275, %8275
  %8277 = call float @dx.op.unary.f32(i32 6, float %8251)  ; FAbs(value)
  %8278 = fsub fast float 1.000000e+00, %5310
  %8279 = fmul fast float %5292, %5292
  %8280 = fmul fast float %8279, %8278
  %8281 = fadd fast float %8280, %5310
  %8282 = bitcast float %8281 to i32
  %8283 = ashr i32 %8282, 1
  %8284 = add nsw i32 %8283, 532487669
  %8285 = bitcast i32 %8284 to float
  %8286 = fadd fast float %8285, %5292
  %8287 = fmul fast float %5310, %8276
  %8288 = fsub fast float 1.000000e+00, %8276
  %8289 = fadd fast float %8288, %8287
  %8290 = fmul fast float %8277, %8277
  %8291 = fmul fast float %8290, %8278
  %8292 = fadd fast float %8291, %5310
  %8293 = bitcast float %8292 to i32
  %8294 = ashr i32 %8293, 1
  %8295 = add nsw i32 %8294, 532487669
  %8296 = bitcast i32 %8295 to float
  %8297 = fadd fast float %8296, %8277
  %8298 = fmul fast float %8289, %8289
  %8299 = fmul fast float %8298, %8286
  %8300 = fmul fast float %8299, %8297
  %8301 = fdiv fast float 1.000000e+00, %8300
  %8302 = bitcast float %5310 to i32
  %8303 = sitofp i32 %8302 to float
  %8304 = fmul fast float %8303, 0x3FE7F73180000000
  %8305 = fadd fast float %8304, 0x41AFE27C40000000
  %8306 = fptosi float %8305 to i32
  %8307 = bitcast i32 %8306 to float
  %8308 = fmul fast float %7899, 0x3FD80E9D60000000
  %8309 = fmul fast float %8308, %8263
  %8310 = fadd fast float %8307, %8309
  %8311 = bitcast float %8310 to i32
  %8312 = sub nsw i32 2129859010, %8311
  %8313 = bitcast i32 %8312 to float
  %8314 = fmul fast float %5310, %8301
  %8315 = fmul fast float %8314, %8307
  %8316 = fmul fast float %8315, %8313
  %8317 = call float @dx.op.unary.f32(i32 6, float %8252)  ; FAbs(value)
  %8318 = fsub fast float 1.000000e+00, %8317
  %8319 = bitcast float %8318 to i32
  %8320 = sitofp i32 %8319 to float
  %8321 = fmul fast float %8320, 5.000000e+00
  %8322 = fadd fast float %8321, 0xC1EFBF8940000000
  %8323 = fptosi float %8322 to i32
  %8324 = bitcast i32 %8323 to float
  %8325 = fsub fast float 1.000000e+00, %5241
  %8326 = fsub fast float 1.000000e+00, %5242
  %8327 = fsub fast float 1.000000e+00, %5290
  %8328 = fmul fast float %8324, %8325
  %8329 = fmul fast float %8324, %8326
  %8330 = fmul fast float %8324, %8327
  %8331 = fadd fast float %8328, %5241
  %8332 = fadd fast float %8329, %5242
  %8333 = fadd fast float %8330, %5290
  br i1 %5432, label %8334, label %8357

; <label>:8334                                    ; preds = %8223
  %8335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4056, float %8317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8336 = extractvalue %dx.types.ResRet.f32 %8335, 0
  %8337 = extractvalue %dx.types.ResRet.f32 %8335, 1
  %8338 = extractvalue %dx.types.ResRet.f32 %8335, 2
  %8339 = fadd fast float %8336, -5.000000e-01
  %8340 = fadd fast float %8337, -5.000000e-01
  %8341 = fadd fast float %8338, -5.000000e-01
  %8342 = fmul fast float %5241, 4.000000e+00
  %8343 = fmul fast float %8342, %8325
  %8344 = fmul fast float %8343, %8339
  %8345 = fmul fast float %5242, 4.000000e+00
  %8346 = fmul fast float %8345, %8326
  %8347 = fmul fast float %8346, %8340
  %8348 = fmul fast float %5290, 4.000000e+00
  %8349 = fmul fast float %8348, %8327
  %8350 = fmul fast float %8349, %8341
  %8351 = fadd fast float %8344, %8331
  %8352 = fadd fast float %8347, %8332
  %8353 = fadd fast float %8350, %8333
  %8354 = call float @dx.op.unary.f32(i32 7, float %8351)  ; Saturate(value)
  %8355 = call float @dx.op.unary.f32(i32 7, float %8352)  ; Saturate(value)
  %8356 = call float @dx.op.unary.f32(i32 7, float %8353)  ; Saturate(value)
  br label %8357

; <label>:8357                                    ; preds = %8334, %8223
  %8358 = phi float [ %8354, %8334 ], [ %8331, %8223 ]
  %8359 = phi float [ %8355, %8334 ], [ %8332, %8223 ]
  %8360 = phi float [ %8356, %8334 ], [ %8333, %8223 ]
  %8361 = fmul fast float %8251, 9.843750e-01
  %8362 = fadd fast float %8361, 7.812500e-03
  %8363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %8362, float %5422, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8364 = extractvalue %dx.types.ResRet.f32 %8363, 2
  %8365 = extractvalue %dx.types.ResRet.f32 %8363, 3
  %8366 = fmul fast float %8364, %5241
  %8367 = fmul fast float %8364, %5242
  %8368 = fmul fast float %8364, %5290
  %8369 = fadd fast float %8366, %8365
  %8370 = fadd fast float %8367, %8365
  %8371 = fadd fast float %8368, %8365
  br i1 %5432, label %8372, label %8395

; <label>:8372                                    ; preds = %8357
  %8373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4056, float %8251, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8374 = extractvalue %dx.types.ResRet.f32 %8373, 0
  %8375 = extractvalue %dx.types.ResRet.f32 %8373, 1
  %8376 = extractvalue %dx.types.ResRet.f32 %8373, 2
  %8377 = fadd fast float %8374, -5.000000e-01
  %8378 = fadd fast float %8375, -5.000000e-01
  %8379 = fadd fast float %8376, -5.000000e-01
  %8380 = fmul fast float %5241, 4.000000e+00
  %8381 = fmul fast float %8380, %8325
  %8382 = fmul fast float %8381, %8377
  %8383 = fmul fast float %5242, 4.000000e+00
  %8384 = fmul fast float %8383, %8326
  %8385 = fmul fast float %8384, %8378
  %8386 = fmul fast float %5290, 4.000000e+00
  %8387 = fmul fast float %8386, %8327
  %8388 = fmul fast float %8387, %8379
  %8389 = fadd fast float %8382, %8369
  %8390 = fadd fast float %8385, %8370
  %8391 = fadd fast float %8388, %8371
  %8392 = call float @dx.op.unary.f32(i32 7, float %8389)  ; Saturate(value)
  %8393 = call float @dx.op.unary.f32(i32 7, float %8390)  ; Saturate(value)
  %8394 = call float @dx.op.unary.f32(i32 7, float %8391)  ; Saturate(value)
  br label %8395

; <label>:8395                                    ; preds = %8372, %8357
  %8396 = phi float [ %8392, %8372 ], [ %8369, %8357 ]
  %8397 = phi float [ %8393, %8372 ], [ %8370, %8357 ]
  %8398 = phi float [ %8394, %8372 ], [ %8371, %8357 ]
  %8399 = call float @dx.op.binary.f32(i32 35, float %8397, float %8398)  ; FMax(a,b)
  %8400 = call float @dx.op.binary.f32(i32 35, float %8396, float %8399)  ; FMax(a,b)
  %8401 = fsub fast float 1.000000e+00, %8400
  %8402 = fmul fast float %8358, %8316
  %8403 = fmul fast float %8359, %8316
  %8404 = fmul fast float %8360, %8316
  %8405 = fsub fast float 1.000000e+00, %8252
  %8406 = bitcast float %8405 to i32
  %8407 = sitofp i32 %8406 to float
  %8408 = fmul fast float %8407, 5.000000e+00
  %8409 = fadd fast float %8408, 0xC1EFBF8940000000
  %8410 = fptosi float %8409 to i32
  %8411 = bitcast i32 %8410 to float
  %8412 = fmul fast float %8411, %4057
  %8413 = fmul fast float %8401, %8412
  %8414 = fmul fast float %8413, %6027
  %8415 = fmul fast float %8413, %6028
  %8416 = fmul fast float %8413, %6029
  %8417 = fadd fast float %8414, %8402
  %8418 = fadd fast float %8415, %8403
  %8419 = fadd fast float %8416, %8404
  %8420 = fmul fast float %8240, %4053
  %8421 = fmul fast float %8420, %8259
  %8422 = fmul fast float %8421, %8401
  %8423 = fmul fast float %8241, %4053
  %8424 = fmul fast float %8423, %8259
  %8425 = fmul fast float %8424, %8401
  %8426 = fmul fast float %8242, %4053
  %8427 = fmul fast float %8426, %8259
  %8428 = fmul fast float %8427, %8401
  %8429 = fadd fast float %8422, %7873
  %8430 = fadd fast float %8425, %7874
  %8431 = fadd fast float %8428, %7875
  %8432 = fmul fast float %8421, %8417
  %8433 = fmul fast float %8424, %8418
  %8434 = fmul fast float %8427, %8419
  %8435 = fadd fast float %8432, %7870
  %8436 = fadd fast float %8433, %7871
  %8437 = fadd fast float %8434, %7872
  br label %8002

; <label>:8438                                    ; preds = %8002
  br label %8439

; <label>:8439                                    ; preds = %8438, %7836
  %8440 = phi float [ %7838, %7836 ], [ %8003, %8438 ]
  %8441 = phi float [ %7839, %7836 ], [ %8004, %8438 ]
  %8442 = phi float [ %7840, %7836 ], [ %8005, %8438 ]
  %8443 = phi float [ %7841, %7836 ], [ %8006, %8438 ]
  %8444 = phi float [ %7842, %7836 ], [ %8007, %8438 ]
  %8445 = phi float [ %7843, %7836 ], [ %8008, %8438 ]
  %8446 = add i32 %7837, 1
  %8447 = icmp ugt i32 %8446, %7833
  br i1 %8447, label %8448, label %7836

; <label>:8448                                    ; preds = %8439
  br label %8449

; <label>:8449                                    ; preds = %8448, %7786, %7776
  %8450 = phi float [ %7777, %7776 ], [ %7777, %7786 ], [ %8440, %8448 ]
  %8451 = phi float [ %7778, %7776 ], [ %7778, %7786 ], [ %8441, %8448 ]
  %8452 = phi float [ %7779, %7776 ], [ %7779, %7786 ], [ %8442, %8448 ]
  %8453 = phi float [ %7780, %7776 ], [ %7780, %7786 ], [ %8443, %8448 ]
  %8454 = phi float [ %7781, %7776 ], [ %7781, %7786 ], [ %8444, %8448 ]
  %8455 = phi float [ %7782, %7776 ], [ %7782, %7786 ], [ %8445, %8448 ]
  %8456 = fmul fast float %4053, %4053
  %8457 = fsub fast float 1.000000e+00, %8456
  %8458 = call float @dx.op.dot3.f32(i32 55, float %8457, float %8457, float %8457, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8459 = fsub fast float 1.000000e+00, %8458
  %8460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8461 = extractvalue %dx.types.CBufRet.f32 %8460, 0
  %8462 = fmul fast float %8461, %6043
  %8463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8464 = extractvalue %dx.types.CBufRet.f32 %8463, 3
  %8465 = fsub fast float 1.000000e+00, %4061
  %8466 = call float @dx.op.unary.f32(i32 7, float %8465)  ; Saturate(value)
  %8467 = fadd fast float %8455, %4059
  %8468 = fmul fast float %8467, %4061
  %8469 = fmul fast float %8466, %8464
  %8470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8471 = extractvalue %dx.types.CBufRet.f32 %8470, 3
  %8472 = fmul fast float %8453, %5238
  %8473 = fmul fast float %8454, %5239
  %8474 = fmul fast float %8455, %5240
  %8475 = fcmp fast ogt float %105, %227
  %8476 = and i1 %8475, %4464
  %8477 = or i1 %4470, %8476
  %8478 = icmp eq i32 %4463, 2
  %8479 = fcmp fast ole float %105, %227
  %8480 = and i1 %8479, %8478
  %8481 = or i1 %8480, %8477
  br i1 %8476, label %8482, label %8739

; <label>:8482                                    ; preds = %8449
  %8483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8484 = extractvalue %dx.types.CBufRet.f32 %8483, 2
  %8485 = extractvalue %dx.types.CBufRet.f32 %8483, 3
  %8486 = fmul fast float %8484, %118
  %8487 = fmul fast float %8485, %119
  %8488 = call float @dx.op.unary.f32(i32 7, float %8486)  ; Saturate(value)
  %8489 = call float @dx.op.unary.f32(i32 7, float %8487)  ; Saturate(value)
  %8490 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8488, float %8489, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8491 = extractvalue %dx.types.ResRet.f32 %8490, 0
  %8492 = extractvalue %dx.types.ResRet.f32 %8490, 1
  %8493 = extractvalue %dx.types.ResRet.f32 %8490, 2
  %8494 = extractvalue %dx.types.ResRet.f32 %8490, 3
  %8495 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8488, float %8489, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8496 = extractvalue %dx.types.ResRet.f32 %8495, 0
  %8497 = extractvalue %dx.types.ResRet.f32 %8495, 1
  %8498 = extractvalue %dx.types.ResRet.f32 %8495, 2
  %8499 = extractvalue %dx.types.ResRet.f32 %8495, 3
  %8500 = call float @dx.op.binary.f32(i32 35, float %8492, float %8493)  ; FMax(a,b)
  %8501 = call float @dx.op.binary.f32(i32 35, float %8491, float %8500)  ; FMax(a,b)
  %8502 = call float @dx.op.binary.f32(i32 35, float %8501, float %8494)  ; FMax(a,b)
  %8503 = call float @dx.op.binary.f32(i32 36, float %8497, float %8498)  ; FMin(a,b)
  %8504 = call float @dx.op.binary.f32(i32 36, float %8496, float %8503)  ; FMin(a,b)
  %8505 = call float @dx.op.binary.f32(i32 36, float %8504, float %8499)  ; FMin(a,b)
  %8506 = fmul fast float %8502, 2.550000e+02
  %8507 = fadd fast float %8506, 0x3F70101020000000
  %8508 = fptoui float %8507 to i32
  %8509 = fmul fast float %8505, 2.550000e+02
  %8510 = fadd fast float %8509, 0x3F70101020000000
  %8511 = fptoui float %8510 to i32
  %8512 = icmp ult i32 %8508, %8511
  br i1 %8512, label %8513, label %8681

; <label>:8513                                    ; preds = %8482
  %8514 = fcmp fast ogt float %104, 9.843750e-01
  %8515 = fadd fast float %105, -4.000000e+00
  %8516 = select i1 %8514, float -4.000000e+00, float %8515
  %8517 = call float @dx.op.binary.f32(i32 35, float %8516, float 0.000000e+00)  ; FMax(a,b)
  %8518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8519 = extractvalue %dx.types.CBufRet.f32 %8518, 0
  %8520 = fadd fast float %8519, %8517
  %8521 = extractvalue %dx.types.CBufRet.f32 %8518, 2
  %8522 = fmul fast float %8520, %8521
  %8523 = call float @dx.op.unary.f32(i32 23, float %8522)  ; Log(value)
  %8524 = extractvalue %dx.types.CBufRet.f32 %8518, 3
  %8525 = fmul fast float %8524, %8523
  %8526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8527 = extractvalue %dx.types.CBufRet.f32 %8526, 2
  %8528 = fmul fast float %8525, %8527
  %8529 = call float @dx.op.unary.f32(i32 7, float %8528)  ; Saturate(value)
  %8530 = uitofp i32 %8508 to float
  %8531 = uitofp i32 %8511 to float
  %8532 = fadd fast float %8530, 5.000000e-01
  %8533 = fadd fast float %8531, 5.000000e-01
  %8534 = fmul fast float %8527, %8532
  %8535 = fmul fast float %8527, %8533
  %8536 = fadd fast float %8534, 0x3F0FFB4800000000
  %8537 = fadd fast float %8535, 0xBF0FFB4800000000
  %8538 = call float @dx.op.binary.f32(i32 35, float %8529, float %8536)  ; FMax(a,b)
  %8539 = call float @dx.op.binary.f32(i32 36, float %8538, float %8537)  ; FMin(a,b)
  %8540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8541 = extractvalue %dx.types.CBufRet.f32 %8540, 1
  %8542 = extractvalue %dx.types.CBufRet.f32 %8540, 2
  %8543 = extractvalue %dx.types.CBufRet.f32 %8540, 0
  %8544 = fmul fast float %8541, %8539
  %8545 = fadd fast float %8543, %8544
  %8546 = fadd fast float %8543, %8542
  %8547 = fsub fast float %8541, %8542
  %8548 = fadd fast float %8547, %8543
  %8549 = call float @dx.op.binary.f32(i32 35, float %8545, float %8546)  ; FMax(a,b)
  %8550 = call float @dx.op.binary.f32(i32 36, float %8549, float %8548)  ; FMin(a,b)
  %8551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %8488, float %8489, float %8550, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8552 = extractvalue %dx.types.ResRet.f32 %8551, 0
  %8553 = extractvalue %dx.types.ResRet.f32 %8551, 1
  %8554 = extractvalue %dx.types.ResRet.f32 %8551, 2
  %8555 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8556 = extractvalue %dx.types.CBufRet.i32 %8555, 0
  %8557 = extractvalue %dx.types.CBufRet.i32 %8555, 1
  %8558 = uitofp i32 %8556 to float
  %8559 = uitofp i32 %8557 to float
  %8560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8561 = extractvalue %dx.types.CBufRet.f32 %8560, 0
  %8562 = extractvalue %dx.types.CBufRet.f32 %8560, 1
  %8563 = fmul fast float %8558, %8488
  %8564 = fmul fast float %8559, %8489
  %8565 = fadd fast float %8563, -5.000000e-01
  %8566 = fadd fast float %8564, -5.000000e-01
  %8567 = call float @dx.op.unary.f32(i32 22, float %8565)  ; Frc(value)
  %8568 = call float @dx.op.unary.f32(i32 22, float %8566)  ; Frc(value)
  %8569 = fmul fast float %8567, %8567
  %8570 = fmul fast float %8569, %8567
  %8571 = fsub fast float 3.000000e+00, %8567
  %8572 = fmul fast float %8569, %8571
  %8573 = fmul fast float %8567, 3.000000e+00
  %8574 = fmul fast float %8570, 3.000000e+00
  %8575 = fmul fast float %8569, 6.000000e+00
  %8576 = fsub fast float %8574, %8575
  %8577 = fadd fast float %8576, 4.000000e+00
  %8578 = fmul fast float %8577, 0x3FC5555560000000
  %8579 = fmul fast float %8570, -3.000000e+00
  %8580 = fadd fast float %8569, %8567
  %8581 = fmul fast float %8580, 3.000000e+00
  %8582 = fadd fast float %8579, 1.000000e+00
  %8583 = fadd fast float %8582, %8581
  %8584 = fmul fast float %8570, 0x3FC5555560000000
  %8585 = fmul fast float %8568, %8568
  %8586 = fmul fast float %8585, %8568
  %8587 = fsub fast float 3.000000e+00, %8568
  %8588 = fmul fast float %8585, %8587
  %8589 = fmul fast float %8568, 3.000000e+00
  %8590 = fmul fast float %8586, 3.000000e+00
  %8591 = fmul fast float %8585, 6.000000e+00
  %8592 = fsub fast float %8590, %8591
  %8593 = fadd fast float %8592, 4.000000e+00
  %8594 = fmul fast float %8593, 0x3FC5555560000000
  %8595 = fmul fast float %8586, -3.000000e+00
  %8596 = fadd fast float %8585, %8568
  %8597 = fmul fast float %8596, 3.000000e+00
  %8598 = fadd fast float %8595, 1.000000e+00
  %8599 = fadd fast float %8598, %8597
  %8600 = fmul fast float %8586, 0x3FC5555560000000
  %8601 = fadd fast float %8567, 1.000000e+00
  %8602 = fsub fast float 1.000000e+00, %8573
  %8603 = fadd fast float %8602, %8572
  %8604 = fadd fast float %8603, %8577
  %8605 = fmul fast float %8604, 0x3FC5555560000000
  %8606 = fdiv fast float %8578, %8605
  %8607 = fsub fast float %8601, %8606
  %8608 = fsub fast float 1.000000e+00, %8567
  %8609 = fadd fast float %8583, %8570
  %8610 = fmul fast float %8609, 0x3FC5555560000000
  %8611 = fdiv fast float %8584, %8610
  %8612 = fadd fast float %8608, %8611
  %8613 = fadd fast float %8568, 1.000000e+00
  %8614 = fsub fast float 1.000000e+00, %8589
  %8615 = fadd fast float %8614, %8588
  %8616 = fadd fast float %8615, %8593
  %8617 = fmul fast float %8616, 0x3FC5555560000000
  %8618 = fdiv fast float %8594, %8617
  %8619 = fsub fast float %8613, %8618
  %8620 = fsub fast float 1.000000e+00, %8568
  %8621 = fadd fast float %8599, %8586
  %8622 = fmul fast float %8621, 0x3FC5555560000000
  %8623 = fdiv fast float %8600, %8622
  %8624 = fadd fast float %8623, %8620
  %8625 = fmul fast float %8607, %8561
  %8626 = fsub fast float %8488, %8625
  %8627 = fmul fast float %8612, %8561
  %8628 = fadd fast float %8627, %8488
  %8629 = fmul fast float %8624, %8562
  %8630 = fadd fast float %8629, %8489
  %8631 = fmul fast float %8619, %8562
  %8632 = fsub fast float %8489, %8631
  %8633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8626, float %8632, float %8550, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8634 = extractvalue %dx.types.ResRet.f32 %8633, 0
  %8635 = extractvalue %dx.types.ResRet.f32 %8633, 1
  %8636 = extractvalue %dx.types.ResRet.f32 %8633, 2
  %8637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8628, float %8632, float %8550, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8638 = extractvalue %dx.types.ResRet.f32 %8637, 0
  %8639 = extractvalue %dx.types.ResRet.f32 %8637, 1
  %8640 = extractvalue %dx.types.ResRet.f32 %8637, 2
  %8641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8626, float %8630, float %8550, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8642 = extractvalue %dx.types.ResRet.f32 %8641, 0
  %8643 = extractvalue %dx.types.ResRet.f32 %8641, 1
  %8644 = extractvalue %dx.types.ResRet.f32 %8641, 2
  %8645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8628, float %8630, float %8550, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8646 = extractvalue %dx.types.ResRet.f32 %8645, 0
  %8647 = extractvalue %dx.types.ResRet.f32 %8645, 1
  %8648 = extractvalue %dx.types.ResRet.f32 %8645, 2
  %8649 = fsub fast float %8642, %8634
  %8650 = fsub fast float %8643, %8635
  %8651 = fsub fast float %8644, %8636
  %8652 = fmul fast float %8649, %8622
  %8653 = fmul fast float %8650, %8622
  %8654 = fmul fast float %8651, %8622
  %8655 = fadd fast float %8652, %8634
  %8656 = fadd fast float %8653, %8635
  %8657 = fadd fast float %8654, %8636
  %8658 = fsub fast float %8646, %8638
  %8659 = fsub fast float %8647, %8639
  %8660 = fsub fast float %8648, %8640
  %8661 = fmul fast float %8658, %8622
  %8662 = fmul fast float %8659, %8622
  %8663 = fmul fast float %8660, %8622
  %8664 = fsub fast float %8638, %8655
  %8665 = fadd fast float %8664, %8661
  %8666 = fsub fast float %8639, %8656
  %8667 = fadd fast float %8666, %8662
  %8668 = fsub fast float %8640, %8657
  %8669 = fadd fast float %8668, %8663
  %8670 = fmul fast float %8665, %8610
  %8671 = fmul fast float %8667, %8610
  %8672 = fmul fast float %8669, %8610
  %8673 = fadd fast float %8670, %8655
  %8674 = fadd fast float %8671, %8656
  %8675 = fadd fast float %8672, %8657
  %8676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8677 = extractvalue %dx.types.CBufRet.f32 %8676, 1
  %8678 = fmul fast float %8673, %8677
  %8679 = fmul fast float %8674, %8677
  %8680 = fmul fast float %8675, %8677
  br label %8681

; <label>:8681                                    ; preds = %8513, %8482
  %8682 = phi float [ %8552, %8513 ], [ 1.000000e+00, %8482 ]
  %8683 = phi float [ %8553, %8513 ], [ 1.000000e+00, %8482 ]
  %8684 = phi float [ %8554, %8513 ], [ 1.000000e+00, %8482 ]
  %8685 = phi float [ %8678, %8513 ], [ 0.000000e+00, %8482 ]
  %8686 = phi float [ %8679, %8513 ], [ 0.000000e+00, %8482 ]
  %8687 = phi float [ %8680, %8513 ], [ 0.000000e+00, %8482 ]
  %8688 = fmul fast float %8685, %8459
  %8689 = fmul fast float %8686, %8459
  %8690 = fmul fast float %8687, %8459
  %8691 = call float @dx.op.dot3.f32(i32 55, float %8682, float %8683, float %8684, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8692 = call float @dx.op.dot3.f32(i32 55, float %8688, float %8689, float %8690, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8693 = select i1 %264, float %8691, float %8682
  %8694 = select i1 %264, float %8691, float %8683
  %8695 = select i1 %264, float 1.000000e+00, float %8684
  %8696 = select i1 %264, float %8692, float %8688
  %8697 = select i1 %264, float 0.000000e+00, float %8689
  %8698 = select i1 %264, float 0.000000e+00, float %8690
  %8699 = fmul fast float %8693, %8472
  %8700 = fmul fast float %8694, %8473
  %8701 = fmul fast float %8695, %8474
  %8702 = fadd fast float %8699, %8696
  %8703 = fadd fast float %8700, %8697
  %8704 = fadd fast float %8698, %8701
  %8705 = fmul fast float %8693, %8450
  %8706 = fmul fast float %8694, %8451
  %8707 = fmul fast float %8695, %8452
  %8708 = fmul fast float %154, %8484
  %8709 = fmul fast float %156, %8485
  %8710 = fsub fast float 1.000000e+00, %8708
  %8711 = fsub fast float 1.000000e+00, %8709
  %8712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8713 = extractvalue %dx.types.CBufRet.f32 %8712, 0
  %8714 = extractvalue %dx.types.CBufRet.f32 %8712, 1
  %8715 = extractvalue %dx.types.CBufRet.f32 %8712, 2
  %8716 = fmul fast float %8710, %8713
  %8717 = fmul fast float %8710, %8714
  %8718 = fmul fast float %8710, %8715
  %8719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8720 = extractvalue %dx.types.CBufRet.f32 %8719, 0
  %8721 = extractvalue %dx.types.CBufRet.f32 %8719, 1
  %8722 = extractvalue %dx.types.CBufRet.f32 %8719, 2
  %8723 = fmul fast float %8711, %8720
  %8724 = fmul fast float %8711, %8721
  %8725 = fmul fast float %8711, %8722
  %8726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8727 = extractvalue %dx.types.CBufRet.f32 %8726, 0
  %8728 = extractvalue %dx.types.CBufRet.f32 %8726, 1
  %8729 = extractvalue %dx.types.CBufRet.f32 %8726, 2
  %8730 = fadd fast float %8723, %8727
  %8731 = fadd fast float %8730, %8716
  %8732 = fadd fast float %8724, %8728
  %8733 = fadd fast float %8732, %8717
  %8734 = fadd fast float %8725, %8729
  %8735 = fadd fast float %8734, %8718
  %8736 = fmul fast float %8731, %227
  %8737 = fmul fast float %8733, %227
  %8738 = fmul fast float %8735, %227
  br label %8739

; <label>:8739                                    ; preds = %8681, %8449
  %8740 = phi float [ %8736, %8681 ], [ %205, %8449 ]
  %8741 = phi float [ %8737, %8681 ], [ %206, %8449 ]
  %8742 = phi float [ %8738, %8681 ], [ %207, %8449 ]
  %8743 = phi float [ %227, %8681 ], [ %105, %8449 ]
  %8744 = phi float [ %8702, %8681 ], [ %8472, %8449 ]
  %8745 = phi float [ %8703, %8681 ], [ %8473, %8449 ]
  %8746 = phi float [ %8704, %8681 ], [ %8474, %8449 ]
  %8747 = phi float [ %8705, %8681 ], [ %8450, %8449 ]
  %8748 = phi float [ %8706, %8681 ], [ %8451, %8449 ]
  %8749 = phi float [ %8707, %8681 ], [ %8452, %8449 ]
  %8750 = phi float [ %8682, %8681 ], [ 1.000000e+00, %8449 ]
  br i1 %8481, label %9905, label %8751

; <label>:8751                                    ; preds = %8739
  %8752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8753 = extractvalue %dx.types.CBufRet.f32 %8752, 0
  %8754 = extractvalue %dx.types.CBufRet.f32 %8752, 1
  %8755 = extractvalue %dx.types.CBufRet.f32 %8752, 2
  %8756 = extractvalue %dx.types.CBufRet.f32 %8752, 3
  %8757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8758 = extractvalue %dx.types.CBufRet.f32 %8757, 0
  %8759 = extractvalue %dx.types.CBufRet.f32 %8757, 1
  %8760 = extractvalue %dx.types.CBufRet.f32 %8757, 2
  %8761 = extractvalue %dx.types.CBufRet.f32 %8757, 3
  %8762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8763 = extractvalue %dx.types.CBufRet.f32 %8762, 0
  %8764 = extractvalue %dx.types.CBufRet.f32 %8762, 1
  %8765 = extractvalue %dx.types.CBufRet.f32 %8762, 2
  %8766 = extractvalue %dx.types.CBufRet.f32 %8762, 3
  %8767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8768 = extractvalue %dx.types.CBufRet.f32 %8767, 0
  %8769 = extractvalue %dx.types.CBufRet.f32 %8767, 1
  %8770 = extractvalue %dx.types.CBufRet.f32 %8767, 2
  %8771 = extractvalue %dx.types.CBufRet.f32 %8767, 3
  %8772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8773 = extractvalue %dx.types.CBufRet.f32 %8772, 3
  %8774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8775 = extractvalue %dx.types.CBufRet.f32 %8774, 3
  %8776 = extractvalue %dx.types.CBufRet.f32 %8774, 0
  %8777 = extractvalue %dx.types.CBufRet.f32 %8774, 1
  %8778 = extractvalue %dx.types.CBufRet.f32 %8774, 2
  %8779 = fcmp fast olt float %8778, -5.000000e-01
  %8780 = call float @dx.op.dot3.f32(i32 55, float %8740, float %8741, float %8742, float %8740, float %8741, float %8742)  ; Dot3(ax,ay,az,bx,by,bz)
  %8781 = call float @dx.op.unary.f32(i32 25, float %8780)  ; Rsqrt(value)
  %8782 = fmul fast float %8781, %8780
  %8783 = fmul fast float %8781, %8740
  %8784 = fmul fast float %8781, %8741
  %8785 = fmul fast float %8781, %8742
  %8786 = fadd fast float %8782, %8756
  %8787 = call float @dx.op.dot3.f32(i32 55, float %8783, float %8784, float %8785, float %8753, float %8754, float %8755)  ; Dot3(ax,ay,az,bx,by,bz)
  %8788 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8789 = extractvalue %dx.types.CBufRet.i32 %8788, 1
  %8790 = and i32 %8789, 1
  %8791 = icmp ne i32 %8790, 0
  %8792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8793 = extractvalue %dx.types.CBufRet.f32 %8792, 2
  %8794 = fcmp fast ogt float %8793, 0.000000e+00
  %8795 = and i1 %8791, %8794
  br i1 %8795, label %8796, label %9202, !dx.controlflow.hints !140

; <label>:8796                                    ; preds = %8751
  %8797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8798 = extractvalue %dx.types.CBufRet.f32 %8797, 3
  %8799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8800 = extractvalue %dx.types.CBufRet.f32 %8799, 2
  %8801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8802 = extractvalue %dx.types.CBufRet.f32 %8801, 2
  %8803 = fsub fast float %8800, %8802
  %8804 = and i32 %8789, 2
  %8805 = extractvalue %dx.types.CBufRet.i32 %8788, 0
  %8806 = call i32 @dx.op.binary.i32(i32 40, i32 %8805, i32 3)  ; UMin(a,b)
  %8807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8808 = extractvalue %dx.types.CBufRet.f32 %8807, 0
  %8809 = extractvalue %dx.types.CBufRet.f32 %8807, 1
  %8810 = extractvalue %dx.types.CBufRet.f32 %8801, 0
  %8811 = extractvalue %dx.types.CBufRet.f32 %8801, 1
  %8812 = fsub fast float %8808, %8810
  %8813 = fsub fast float %8809, %8811
  %8814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8815 = extractvalue %dx.types.CBufRet.f32 %8814, 0
  %8816 = fcmp fast ogt float %8815, 0.000000e+00
  %8817 = fsub fast float -0.000000e+00, %8812
  %8818 = fsub fast float -0.000000e+00, %8813
  %8819 = call float @dx.op.dot2.f32(i32 54, float %8783, float %8784, float %8783, float %8784)  ; Dot2(ax,ay,bx,by)
  %8820 = call float @dx.op.dot2.f32(i32 54, float %8783, float %8784, float %8817, float %8818)  ; Dot2(ax,ay,bx,by)
  %8821 = fmul fast float %8820, 2.000000e+00
  %8822 = call float @dx.op.dot2.f32(i32 54, float %8817, float %8818, float %8817, float %8818)  ; Dot2(ax,ay,bx,by)
  %8823 = fmul fast float %8815, %8815
  %8824 = fsub fast float %8822, %8823
  %8825 = fmul fast float %8821, %8821
  %8826 = fmul fast float %8819, 4.000000e+00
  %8827 = fmul fast float %8826, %8824
  %8828 = fsub fast float %8825, %8827
  %8829 = fcmp fast ogt float %8828, 0.000000e+00
  br i1 %8829, label %8830, label %8845

; <label>:8830                                    ; preds = %8796
  %8831 = fcmp fast ogt float %8821, 0.000000e+00
  %8832 = call float @dx.op.unary.f32(i32 24, float %8828)  ; Sqrt(value)
  %8833 = fsub fast float -0.000000e+00, %8832
  %8834 = select i1 %8831, float %8832, float %8833
  %8835 = fadd fast float %8834, %8821
  %8836 = fmul float %8835, -5.000000e-01
  %8837 = fdiv fast float %8836, %8819
  %8838 = call float @dx.op.binary.f32(i32 35, float %8837, float 0.000000e+00)  ; FMax(a,b)
  %8839 = call float @dx.op.binary.f32(i32 36, float %8782, float %8838)  ; FMin(a,b)
  %8840 = fdiv fast float %8824, %8836
  %8841 = call float @dx.op.binary.f32(i32 35, float %8840, float 0.000000e+00)  ; FMax(a,b)
  %8842 = call float @dx.op.binary.f32(i32 36, float %8782, float %8841)  ; FMin(a,b)
  %8843 = call float @dx.op.binary.f32(i32 36, float %8839, float %8842)  ; FMin(a,b)
  %8844 = call float @dx.op.binary.f32(i32 35, float %8839, float %8842)  ; FMax(a,b)
  br label %8845

; <label>:8845                                    ; preds = %8830, %8796
  %8846 = phi float [ %8844, %8830 ], [ -1.000000e+00, %8796 ]
  %8847 = phi float [ %8843, %8830 ], [ -1.000000e+00, %8796 ]
  %8848 = phi i1 [ true, %8830 ], [ false, %8796 ]
  %8849 = and i1 %8816, %8848
  br i1 %8849, label %8850, label %8852

; <label>:8850                                    ; preds = %8845
  %8851 = fcmp fast oeq float %8847, %8846
  br i1 %8851, label %9155, label %8853

; <label>:8852                                    ; preds = %8845
  br i1 %8816, label %9155, label %8853

; <label>:8853                                    ; preds = %8852, %8850
  %8854 = phi float [ %8782, %8852 ], [ %8846, %8850 ]
  %8855 = phi float [ 0.000000e+00, %8852 ], [ %8847, %8850 ]
  %8856 = icmp ne i32 %8804, 0
  %8857 = fmul fast float %8854, %8785
  %8858 = fadd fast float %8857, %8798
  %8859 = fmul fast float %8858, %8854
  %8860 = select i1 %8856, float 0.000000e+00, float %8859
  %8861 = fcmp fast oeq float %8785, 0.000000e+00
  %8862 = fdiv fast float %8803, %8785
  %8863 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8862)  ; FMax(a,b)
  %8864 = select i1 %8861, float %8854, float %8863
  %8865 = call float @dx.op.binary.f32(i32 36, float %8854, float %8864)  ; FMin(a,b)
  %8866 = fcmp fast ogt float %8785, 0.000000e+00
  %8867 = fcmp fast olt float %8803, 0.000000e+00
  br i1 %8866, label %8868, label %8925

; <label>:8868                                    ; preds = %8853
  %8869 = icmp eq i32 %8804, 0
  br i1 %8867, label %8870, label %8914

; <label>:8870                                    ; preds = %8868
  %8871 = select i1 %8869, float %8854, float 0.000000e+00
  %8872 = fsub fast float -0.000000e+00, %8871
  %8873 = call float @dx.op.unary.f32(i32 6, float %8872)  ; FAbs(value)
  %8874 = fmul fast float %8871, %8785
  %8875 = fadd fast float %8874, %8798
  %8876 = fmul fast float %8873, %8875
  %8877 = fsub fast float %8860, %8876
  %8878 = fsub fast float %8854, %8873
  %8879 = select i1 %8869, float %8878, float 0.000000e+00
  %8880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8881 = extractvalue %dx.types.CBufRet.f32 %8880, 0
  %8882 = extractvalue %dx.types.CBufRet.f32 %8880, 1
  %8883 = extractvalue %dx.types.CBufRet.f32 %8880, 2
  %8884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8885 = extractvalue %dx.types.CBufRet.f32 %8884, 0
  %8886 = extractvalue %dx.types.CBufRet.f32 %8884, 1
  %8887 = extractvalue %dx.types.CBufRet.f32 %8884, 2
  %8888 = extractvalue %dx.types.CBufRet.f32 %8884, 3
  %8889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8890 = extractvalue %dx.types.CBufRet.f32 %8889, 3
  %8891 = call float @dx.op.binary.f32(i32 36, float %8877, float %8890)  ; FMin(a,b)
  %8892 = fmul fast float %8888, %8879
  %8893 = call float @dx.op.unary.f32(i32 7, float %8892)  ; Saturate(value)
  %8894 = fsub fast float %8885, %8881
  %8895 = fsub fast float %8886, %8882
  %8896 = fsub fast float %8887, %8883
  %8897 = fmul fast float %8893, %8894
  %8898 = fmul fast float %8893, %8895
  %8899 = fmul fast float %8893, %8896
  %8900 = fadd fast float %8897, %8881
  %8901 = fadd fast float %8898, %8882
  %8902 = fadd fast float %8899, %8883
  %8903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8904 = extractvalue %dx.types.CBufRet.f32 %8903, 0
  %8905 = extractvalue %dx.types.CBufRet.f32 %8903, 1
  %8906 = fadd fast float %8905, %8904
  %8907 = call float @dx.op.unary.f32(i32 7, float %8906)  ; Saturate(value)
  %8908 = extractvalue %dx.types.CBufRet.f32 %8903, 2
  %8909 = extractvalue %dx.types.CBufRet.f32 %8903, 3
  %8910 = fadd fast float %8909, %8908
  %8911 = call float @dx.op.unary.f32(i32 7, float %8910)  ; Saturate(value)
  %8912 = fmul fast float %8907, %8891
  %8913 = fmul fast float %8912, %8911
  br label %9155

; <label>:8914                                    ; preds = %8868
  br i1 %8869, label %8915, label %8936

; <label>:8915                                    ; preds = %8914
  %8916 = call float @dx.op.binary.f32(i32 36, float %8865, float %8855)  ; FMin(a,b)
  %8917 = fsub fast float %8865, %8916
  %8918 = fsub fast float %8917, %8854
  %8919 = call float @dx.op.unary.f32(i32 6, float %8918)  ; FAbs(value)
  %8920 = fadd fast float %8917, %8854
  %8921 = fmul fast float %8920, %8785
  %8922 = fadd fast float %8921, %8798
  %8923 = fmul fast float %8922, %8919
  %8924 = fsub fast float %8860, %8923
  br label %8936

; <label>:8925                                    ; preds = %8853
  br i1 %8867, label %8926, label %8936

; <label>:8926                                    ; preds = %8925
  %8927 = call float @dx.op.binary.f32(i32 35, float %8855, float %8865)  ; FMax(a,b)
  %8928 = icmp eq i32 %8804, 0
  %8929 = select i1 %8928, float %8865, float 0.000000e+00
  %8930 = fsub fast float -0.000000e+00, %8929
  %8931 = call float @dx.op.unary.f32(i32 6, float %8930)  ; FAbs(value)
  %8932 = fmul fast float %8929, %8785
  %8933 = fadd fast float %8932, %8798
  %8934 = fmul fast float %8931, %8933
  %8935 = fsub fast float %8860, %8934
  br label %8936

; <label>:8936                                    ; preds = %8926, %8925, %8915, %8914
  %8937 = phi float [ %8855, %8914 ], [ %8855, %8915 ], [ %8927, %8926 ], [ %8855, %8925 ]
  %8938 = phi float [ 0.000000e+00, %8914 ], [ %8919, %8915 ], [ %8931, %8926 ], [ 0.000000e+00, %8925 ]
  %8939 = phi float [ %8860, %8914 ], [ %8924, %8915 ], [ %8935, %8926 ], [ %8860, %8925 ]
  %8940 = phi float [ %8865, %8914 ], [ %8865, %8915 ], [ %8854, %8926 ], [ %8854, %8925 ]
  %8941 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 0
  store float -1.000000e+00, float* %8941, align 4, !tbaa !126, !noalias !141
  %8942 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 1
  store float -1.000000e+00, float* %8942, align 4, !tbaa !126, !noalias !141
  %8943 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 2
  store float -1.000000e+00, float* %8943, align 4, !tbaa !126, !noalias !141
  %8944 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 0
  store float -1.000000e+00, float* %8944, align 4, !tbaa !126, !noalias !141
  %8945 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 1
  store float -1.000000e+00, float* %8945, align 4, !tbaa !126, !noalias !141
  %8946 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 2
  store float -1.000000e+00, float* %8946, align 4, !tbaa !126, !noalias !141
  %8947 = icmp sgt i32 %8806, 0
  br i1 %8947, label %8948, label %9009

; <label>:8948                                    ; preds = %8936
  br label %8949

; <label>:8949                                    ; preds = %8998, %8948
  %8950 = phi i32 [ %8999, %8998 ], [ 0, %8948 ]
  %8951 = phi i32 [ %9000, %8998 ], [ 0, %8948 ]
  %8952 = add nuw i32 %8951, 171
  %8953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %8952)  ; CBufferLoadLegacy(handle,regIndex)
  %8954 = extractvalue %dx.types.CBufRet.f32 %8953, 0
  %8955 = extractvalue %dx.types.CBufRet.f32 %8953, 1
  %8956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8957 = extractvalue %dx.types.CBufRet.f32 %8956, 0
  %8958 = extractvalue %dx.types.CBufRet.f32 %8956, 1
  %8959 = fsub fast float %8954, %8957
  %8960 = fsub fast float %8955, %8958
  %8961 = extractvalue %dx.types.CBufRet.f32 %8953, 2
  %8962 = fsub fast float -0.000000e+00, %8959
  %8963 = fsub fast float -0.000000e+00, %8960
  %8964 = call float @dx.op.dot2.f32(i32 54, float %8783, float %8784, float %8962, float %8963)  ; Dot2(ax,ay,bx,by)
  %8965 = fmul fast float %8964, 2.000000e+00
  %8966 = call float @dx.op.dot2.f32(i32 54, float %8962, float %8963, float %8962, float %8963)  ; Dot2(ax,ay,bx,by)
  %8967 = fmul fast float %8961, %8961
  %8968 = fsub fast float %8966, %8967
  %8969 = fmul fast float %8965, %8965
  %8970 = fmul fast float %8826, %8968
  %8971 = fsub fast float %8969, %8970
  %8972 = fcmp fast ogt float %8971, 0.000000e+00
  br i1 %8972, label %8973, label %8988

; <label>:8973                                    ; preds = %8949
  %8974 = fcmp fast ogt float %8965, 0.000000e+00
  %8975 = call float @dx.op.unary.f32(i32 24, float %8971)  ; Sqrt(value)
  %8976 = fsub fast float -0.000000e+00, %8975
  %8977 = select i1 %8974, float %8975, float %8976
  %8978 = fadd fast float %8977, %8965
  %8979 = fmul float %8978, -5.000000e-01
  %8980 = fdiv fast float %8979, %8819
  %8981 = call float @dx.op.binary.f32(i32 35, float %8980, float 0.000000e+00)  ; FMax(a,b)
  %8982 = call float @dx.op.binary.f32(i32 36, float %8854, float %8981)  ; FMin(a,b)
  %8983 = fdiv fast float %8968, %8979
  %8984 = call float @dx.op.binary.f32(i32 35, float %8983, float 0.000000e+00)  ; FMax(a,b)
  %8985 = call float @dx.op.binary.f32(i32 36, float %8854, float %8984)  ; FMin(a,b)
  %8986 = call float @dx.op.binary.f32(i32 36, float %8982, float %8985)  ; FMin(a,b)
  %8987 = call float @dx.op.binary.f32(i32 35, float %8982, float %8985)  ; FMax(a,b)
  br label %8988

; <label>:8988                                    ; preds = %8973, %8949
  %8989 = phi float [ %8987, %8973 ], [ -1.000000e+00, %8949 ]
  %8990 = phi float [ %8986, %8973 ], [ -1.000000e+00, %8949 ]
  %8991 = phi i1 [ true, %8973 ], [ false, %8949 ]
  br i1 %8991, label %8992, label %8998

; <label>:8992                                    ; preds = %8988
  %8993 = call float @dx.op.binary.f32(i32 35, float %8937, float %8990)  ; FMax(a,b)
  %8994 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 %8951
  store float %8993, float* %8994, align 4, !tbaa !126, !noalias !141
  %8995 = call float @dx.op.binary.f32(i32 35, float %8937, float %8989)  ; FMax(a,b)
  %8996 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 %8951
  store float %8995, float* %8996, align 4, !tbaa !126, !noalias !141
  %8997 = add nsw i32 %8950, 1
  br label %8998

; <label>:8998                                    ; preds = %8992, %8988
  %8999 = phi i32 [ %8997, %8992 ], [ %8950, %8988 ]
  %9000 = add nuw nsw i32 %8951, 1
  %9001 = icmp eq i32 %9000, %8806
  br i1 %9001, label %9002, label %8949

; <label>:9002                                    ; preds = %8998
  %9003 = load float, float* %8943, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %9004 = load float, float* %8942, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  %9005 = load float, float* %8941, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  %9006 = load float, float* %8946, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %9007 = load float, float* %8945, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  %9008 = load float, float* %8944, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  br label %9009

; <label>:9009                                    ; preds = %9002, %8936
  %9010 = phi float [ -1.000000e+00, %8936 ], [ %9008, %9002 ]
  %9011 = phi float [ -1.000000e+00, %8936 ], [ %9007, %9002 ]
  %9012 = phi float [ -1.000000e+00, %8936 ], [ %9006, %9002 ]
  %9013 = phi float [ -1.000000e+00, %8936 ], [ %9005, %9002 ]
  %9014 = phi float [ -1.000000e+00, %8936 ], [ %9004, %9002 ]
  %9015 = phi float [ -1.000000e+00, %8936 ], [ %9003, %9002 ]
  %9016 = phi i32 [ 0, %8936 ], [ %8999, %9002 ]
  %9017 = call float @dx.op.binary.f32(i32 36, float %9014, float %9015)  ; FMin(a,b)
  %9018 = call float @dx.op.binary.f32(i32 36, float %9013, float %9017)  ; FMin(a,b)
  %9019 = call float @dx.op.binary.f32(i32 35, float %9013, float %9014)  ; FMax(a,b)
  %9020 = call float @dx.op.binary.f32(i32 36, float %9019, float %9015)  ; FMin(a,b)
  %9021 = call float @dx.op.binary.f32(i32 36, float %9013, float %9014)  ; FMin(a,b)
  %9022 = call float @dx.op.binary.f32(i32 35, float %9021, float %9020)  ; FMax(a,b)
  %9023 = call float @dx.op.binary.f32(i32 35, float %9014, float %9015)  ; FMax(a,b)
  %9024 = call float @dx.op.binary.f32(i32 35, float %9013, float %9023)  ; FMax(a,b)
  store float %9018, float* %8941, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  store float %9022, float* %8942, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  store float %9024, float* %8943, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %9025 = call float @dx.op.binary.f32(i32 36, float %9011, float %9012)  ; FMin(a,b)
  %9026 = call float @dx.op.binary.f32(i32 36, float %9010, float %9025)  ; FMin(a,b)
  %9027 = call float @dx.op.binary.f32(i32 35, float %9010, float %9011)  ; FMax(a,b)
  %9028 = call float @dx.op.binary.f32(i32 36, float %9027, float %9012)  ; FMin(a,b)
  %9029 = call float @dx.op.binary.f32(i32 36, float %9010, float %9011)  ; FMin(a,b)
  %9030 = call float @dx.op.binary.f32(i32 35, float %9029, float %9028)  ; FMax(a,b)
  %9031 = call float @dx.op.binary.f32(i32 35, float %9011, float %9012)  ; FMax(a,b)
  %9032 = call float @dx.op.binary.f32(i32 35, float %9010, float %9031)  ; FMax(a,b)
  store float %9026, float* %8944, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  store float %9030, float* %8945, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  store float %9032, float* %8946, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %9033 = sub nsw i32 3, %9016
  %9034 = icmp sgt i32 %9033, 2
  br i1 %9034, label %9035, label %9073

; <label>:9035                                    ; preds = %9009
  %9036 = icmp eq i32 %8804, 0
  %9037 = fsub fast float %8854, %8938
  %9038 = select i1 %9036, float %9037, float %8938
  %9039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9040 = extractvalue %dx.types.CBufRet.f32 %9039, 0
  %9041 = extractvalue %dx.types.CBufRet.f32 %9039, 1
  %9042 = extractvalue %dx.types.CBufRet.f32 %9039, 2
  %9043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9044 = extractvalue %dx.types.CBufRet.f32 %9043, 0
  %9045 = extractvalue %dx.types.CBufRet.f32 %9043, 1
  %9046 = extractvalue %dx.types.CBufRet.f32 %9043, 2
  %9047 = extractvalue %dx.types.CBufRet.f32 %9043, 3
  %9048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9049 = extractvalue %dx.types.CBufRet.f32 %9048, 3
  %9050 = call float @dx.op.binary.f32(i32 36, float %8939, float %9049)  ; FMin(a,b)
  %9051 = fmul fast float %9047, %9038
  %9052 = call float @dx.op.unary.f32(i32 7, float %9051)  ; Saturate(value)
  %9053 = fsub fast float %9044, %9040
  %9054 = fsub fast float %9045, %9041
  %9055 = fsub fast float %9046, %9042
  %9056 = fmul fast float %9052, %9053
  %9057 = fmul fast float %9052, %9054
  %9058 = fmul fast float %9052, %9055
  %9059 = fadd fast float %9056, %9040
  %9060 = fadd fast float %9057, %9041
  %9061 = fadd fast float %9058, %9042
  %9062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9063 = extractvalue %dx.types.CBufRet.f32 %9062, 0
  %9064 = extractvalue %dx.types.CBufRet.f32 %9062, 1
  %9065 = fadd fast float %9064, %9063
  %9066 = call float @dx.op.unary.f32(i32 7, float %9065)  ; Saturate(value)
  %9067 = extractvalue %dx.types.CBufRet.f32 %9062, 2
  %9068 = extractvalue %dx.types.CBufRet.f32 %9062, 3
  %9069 = fadd fast float %9068, %9067
  %9070 = call float @dx.op.unary.f32(i32 7, float %9069)  ; Saturate(value)
  %9071 = fmul fast float %9066, %9050
  %9072 = fmul fast float %9071, %9070
  br label %9155

; <label>:9073                                    ; preds = %9009
  %9074 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 %9033
  %9075 = load float, float* %9074, align 4, !tbaa !126, !noalias !141
  %9076 = fcmp fast olt float %9075, %8940
  %9077 = icmp sgt i32 %9016, 0
  %9078 = and i1 %9077, %9076
  br i1 %9078, label %9079, label %9116

; <label>:9079                                    ; preds = %9073
  br label %9080

; <label>:9080                                    ; preds = %9109, %9079
  %9081 = phi float [ %9110, %9109 ], [ %8938, %9079 ]
  %9082 = phi float [ %9111, %9109 ], [ %8939, %9079 ]
  %9083 = phi float [ %9091, %9109 ], [ %9075, %9079 ]
  %9084 = phi i32 [ %9088, %9109 ], [ %9033, %9079 ]
  %9085 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 %9084
  %9086 = load float, float* %9085, align 4, !tbaa !126, !noalias !141
  %9087 = icmp slt i32 %9084, 2
  %9088 = add nsw i32 %9084, 1
  %9089 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 %9088
  %9090 = load float, float* %9089, align 4, !tbaa !126, !noalias !141
  %9091 = select i1 %9087, float %9090, float %8854
  %9092 = call float @dx.op.binary.f32(i32 36, float %9091, float %9086)  ; FMin(a,b)
  %9093 = call float @dx.op.binary.f32(i32 36, float %8940, float %9092)  ; FMin(a,b)
  %9094 = icmp eq i32 %8804, 0
  %9095 = fadd fast float %9093, %9083
  %9096 = fmul fast float %9095, %8785
  %9097 = fadd fast float %9096, %8798
  br i1 %9094, label %9103, label %9098

; <label>:9098                                    ; preds = %9080
  %9099 = fsub fast float %9093, %9083
  %9100 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9099)  ; FMax(a,b)
  %9101 = fmul fast float %9100, %9097
  %9102 = fadd fast float %9101, %9082
  br label %9109

; <label>:9103                                    ; preds = %9080
  %9104 = fsub fast float %9083, %9093
  %9105 = call float @dx.op.unary.f32(i32 6, float %9104)  ; FAbs(value)
  %9106 = fadd fast float %9105, %9081
  %9107 = fmul fast float %9105, %9097
  %9108 = fsub fast float %9082, %9107
  br label %9109

; <label>:9109                                    ; preds = %9103, %9098
  %9110 = phi float [ %9100, %9098 ], [ %9106, %9103 ]
  %9111 = phi float [ %9102, %9098 ], [ %9108, %9103 ]
  %9112 = fcmp fast olt float %9091, %8940
  %9113 = icmp slt i32 %9088, 3
  %9114 = and i1 %9113, %9112
  br i1 %9114, label %9080, label %9115

; <label>:9115                                    ; preds = %9109
  br label %9116

; <label>:9116                                    ; preds = %9115, %9073
  %9117 = phi float [ %8938, %9073 ], [ %9110, %9115 ]
  %9118 = phi float [ %8939, %9073 ], [ %9111, %9115 ]
  %9119 = fsub fast float %8854, %9117
  %9120 = select i1 %8856, float %9117, float %9119
  %9121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9122 = extractvalue %dx.types.CBufRet.f32 %9121, 0
  %9123 = extractvalue %dx.types.CBufRet.f32 %9121, 1
  %9124 = extractvalue %dx.types.CBufRet.f32 %9121, 2
  %9125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9126 = extractvalue %dx.types.CBufRet.f32 %9125, 0
  %9127 = extractvalue %dx.types.CBufRet.f32 %9125, 1
  %9128 = extractvalue %dx.types.CBufRet.f32 %9125, 2
  %9129 = extractvalue %dx.types.CBufRet.f32 %9125, 3
  %9130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9131 = extractvalue %dx.types.CBufRet.f32 %9130, 3
  %9132 = call float @dx.op.binary.f32(i32 36, float %9118, float %9131)  ; FMin(a,b)
  %9133 = fmul fast float %9129, %9120
  %9134 = call float @dx.op.unary.f32(i32 7, float %9133)  ; Saturate(value)
  %9135 = fsub fast float %9126, %9122
  %9136 = fsub fast float %9127, %9123
  %9137 = fsub fast float %9128, %9124
  %9138 = fmul fast float %9134, %9135
  %9139 = fmul fast float %9134, %9136
  %9140 = fmul fast float %9134, %9137
  %9141 = fadd fast float %9138, %9122
  %9142 = fadd fast float %9139, %9123
  %9143 = fadd fast float %9140, %9124
  %9144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9145 = extractvalue %dx.types.CBufRet.f32 %9144, 0
  %9146 = extractvalue %dx.types.CBufRet.f32 %9144, 1
  %9147 = fadd fast float %9146, %9145
  %9148 = call float @dx.op.unary.f32(i32 7, float %9147)  ; Saturate(value)
  %9149 = extractvalue %dx.types.CBufRet.f32 %9144, 2
  %9150 = extractvalue %dx.types.CBufRet.f32 %9144, 3
  %9151 = fadd fast float %9150, %9149
  %9152 = call float @dx.op.unary.f32(i32 7, float %9151)  ; Saturate(value)
  %9153 = fmul fast float %9148, %9132
  %9154 = fmul fast float %9153, %9152
  br label %9155

; <label>:9155                                    ; preds = %9116, %9035, %8870, %8852, %8850
  %9156 = phi float [ %8879, %8870 ], [ %9038, %9035 ], [ %9120, %9116 ], [ 0.000000e+00, %8850 ], [ 0.000000e+00, %8852 ]
  %9157 = phi float [ %8913, %8870 ], [ %9072, %9035 ], [ %9154, %9116 ], [ 0.000000e+00, %8850 ], [ 0.000000e+00, %8852 ]
  %9158 = phi float [ %8900, %8870 ], [ %9059, %9035 ], [ %9141, %9116 ], [ 0.000000e+00, %8850 ], [ 0.000000e+00, %8852 ]
  %9159 = phi float [ %8901, %8870 ], [ %9060, %9035 ], [ %9142, %9116 ], [ 0.000000e+00, %8850 ], [ 0.000000e+00, %8852 ]
  %9160 = phi float [ %8902, %8870 ], [ %9061, %9035 ], [ %9143, %9116 ], [ 0.000000e+00, %8850 ], [ 0.000000e+00, %8852 ]
  %9161 = fmul fast float %8793, %9157
  %9162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9163 = extractvalue %dx.types.CBufRet.f32 %9162, 2
  %9164 = fsub fast float %8800, %9163
  %9165 = fcmp fast olt float %9161, -2.000000e+01
  %9166 = call float @dx.op.unary.f32(i32 21, float %9161)  ; Exp(value)
  %9167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9168 = extractvalue %dx.types.CBufRet.f32 %9167, 2
  %9169 = extractvalue %dx.types.CBufRet.f32 %9167, 3
  %9170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9171 = extractvalue %dx.types.CBufRet.f32 %9170, 2
  %9172 = fmul fast float %9169, %9164
  %9173 = call float @dx.op.unary.f32(i32 7, float %9172)  ; Saturate(value)
  %9174 = fsub fast float 1.000000e+00, %9173
  %9175 = fmul fast float %8785, 5.000000e-01
  %9176 = fadd fast float %9175, 5.000000e-01
  %9177 = call float @dx.op.unary.f32(i32 7, float %9176)  ; Saturate(value)
  %9178 = fsub fast float 1.000000e+00, %9177
  %9179 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9174)  ; FMax(a,b)
  %9180 = fdiv fast float %9178, %9179
  %9181 = fsub fast float %9164, %8742
  %9182 = call float @dx.op.unary.f32(i32 6, float %9181)  ; FAbs(value)
  %9183 = fmul fast float %9182, %9168
  %9184 = call float @dx.op.unary.f32(i32 7, float %9180)  ; Saturate(value)
  %9185 = fsub fast float 1.000000e+00, %9183
  %9186 = fmul fast float %9185, %9184
  %9187 = fadd fast float %9186, %9183
  %9188 = fmul fast float %9171, %9164
  %9189 = call float @dx.op.unary.f32(i32 7, float %9188)  ; Saturate(value)
  %9190 = fsub fast float 1.000000e+00, %9187
  %9191 = fmul fast float %9190, %9189
  %9192 = fadd fast float %9191, %9187
  %9193 = call float @dx.op.unary.f32(i32 7, float %9192)  ; Saturate(value)
  %9194 = fadd fast float %9166, -1.000000e+00
  %9195 = select i1 %9165, float -1.000000e+00, float %9194
  %9196 = fmul fast float %9193, %9195
  %9197 = fadd fast float %9196, 1.000000e+00
  %9198 = fsub fast float -0.000000e+00, %9196
  %9199 = fmul fast float %9158, %9198
  %9200 = fmul fast float %9159, %9198
  %9201 = fmul fast float %9160, %9198
  br label %9202

; <label>:9202                                    ; preds = %9155, %8751
  %9203 = phi float [ %9156, %9155 ], [ 0.000000e+00, %8751 ]
  %9204 = phi float [ %9197, %9155 ], [ 1.000000e+00, %8751 ]
  %9205 = phi float [ %9199, %9155 ], [ 0.000000e+00, %8751 ]
  %9206 = phi float [ %9200, %9155 ], [ 0.000000e+00, %8751 ]
  %9207 = phi float [ %9201, %9155 ], [ 0.000000e+00, %8751 ]
  %9208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9209 = extractvalue %dx.types.CBufRet.f32 %9208, 1
  %9210 = fsub fast float 1.000000e+00, %9204
  %9211 = fmul fast float %9210, %8786
  %9212 = fmul fast float %9211, %9209
  %9213 = fsub fast float %8786, %9212
  br i1 %8779, label %9214, label %9243, !dx.controlflow.hints !177

; <label>:9214                                    ; preds = %9202
  %9215 = fmul fast float %8787, %8776
  %9216 = fadd fast float %9215, %8777
  %9217 = call float @dx.op.unary.f32(i32 7, float %9216)  ; Saturate(value)
  %9218 = fmul fast float %8758, %9213
  %9219 = fsub fast float -0.000000e+00, %9218
  %9220 = fmul fast float %8759, %9213
  %9221 = fsub fast float -0.000000e+00, %9220
  %9222 = call float @dx.op.unary.f32(i32 21, float %9219)  ; Exp(value)
  %9223 = call float @dx.op.unary.f32(i32 21, float %9221)  ; Exp(value)
  %9224 = call float @dx.op.binary.f32(i32 35, float %8766, float %9222)  ; FMax(a,b)
  %9225 = call float @dx.op.binary.f32(i32 35, float %8766, float %9223)  ; FMax(a,b)
  %9226 = fsub fast float %9225, %9224
  %9227 = fmul fast float %9226, %9217
  %9228 = fadd fast float %9227, %9224
  %9229 = call float @dx.op.unary.f32(i32 7, float %9228)  ; Saturate(value)
  %9230 = fsub fast float %8763, %8768
  %9231 = fsub fast float %8764, %8769
  %9232 = fsub fast float %8765, %8770
  %9233 = fmul fast float %9217, %9230
  %9234 = fmul fast float %9217, %9231
  %9235 = fmul fast float %9217, %9232
  %9236 = fadd fast float %9233, %8768
  %9237 = fadd fast float %9234, %8769
  %9238 = fadd fast float %9235, %8770
  %9239 = fsub fast float 1.000000e+00, %9229
  %9240 = fmul fast float %9239, %9236
  %9241 = fmul fast float %9239, %9237
  %9242 = fmul fast float %9239, %9238
  br label %9302

; <label>:9243                                    ; preds = %9202
  %9244 = fmul fast float %9213, %8775
  %9245 = call float @dx.op.unary.f32(i32 7, float %9244)  ; Saturate(value)
  %9246 = fsub fast float 2.000000e+00, %9245
  %9247 = fmul fast float %9245, 9.921875e-01
  %9248 = fmul fast float %9247, %9246
  %9249 = fadd fast float %9248, 3.906250e-03
  %9250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %9249, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9251 = extractvalue %dx.types.ResRet.f32 %9250, 0
  %9252 = fsub fast float %9245, %9251
  %9253 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9252)  ; FMax(a,b)
  %9254 = fmul fast float %8761, %8742
  %9255 = call float @dx.op.unary.f32(i32 6, float %9254)  ; FAbs(value)
  %9256 = fcmp fast ogt float %9255, 0x3EB0C6F7A0000000
  br i1 %9256, label %9257, label %9263, !dx.controlflow.hints !178

; <label>:9257                                    ; preds = %9243
  %9258 = fmul fast float %9254, 0xBFF7154760000000
  %9259 = call float @dx.op.unary.f32(i32 21, float %9258)  ; Exp(value)
  %9260 = fsub fast float 1.000000e+00, %9259
  %9261 = fdiv fast float %9260, %9254
  %9262 = fmul fast float %9261, %8771
  br label %9263

; <label>:9263                                    ; preds = %9257, %9243
  %9264 = phi float [ %9262, %9257 ], [ %8771, %9243 ]
  %9265 = fadd fast float %9264, %8773
  %9266 = fmul fast float %9265, %9253
  %9267 = fmul fast float %8758, %9266
  %9268 = fsub fast float -0.000000e+00, %9267
  %9269 = fmul fast float %8759, %9266
  %9270 = fsub fast float -0.000000e+00, %9269
  %9271 = fmul fast float %8760, %9266
  %9272 = fsub fast float -0.000000e+00, %9271
  %9273 = call float @dx.op.unary.f32(i32 21, float %9268)  ; Exp(value)
  %9274 = call float @dx.op.unary.f32(i32 21, float %9270)  ; Exp(value)
  %9275 = call float @dx.op.unary.f32(i32 21, float %9272)  ; Exp(value)
  %9276 = fmul fast float %8787, %8787
  %9277 = fadd fast float %9276, 1.000000e+00
  %9278 = fmul fast float %9277, 0x3FAE8EC8A0000000
  %9279 = fmul fast float %9278, %8768
  %9280 = fmul fast float %9278, %8769
  %9281 = fmul fast float %9278, %8770
  %9282 = fmul fast float %8787, %8766
  %9283 = fsub fast float 1.000000e+00, %9282
  %9284 = fmul fast float %8766, %8766
  %9285 = fsub fast float 1.000000e+00, %9284
  %9286 = fmul fast float %9285, 0x3FB45F3060000000
  %9287 = fmul fast float %9283, %9283
  %9288 = fdiv fast float 1.000000e+00, %9287
  %9289 = fmul fast float %9286, %9288
  %9290 = fmul fast float %9289, %8763
  %9291 = fmul fast float %9289, %8764
  %9292 = fmul fast float %9289, %8765
  %9293 = fadd fast float %9290, %9279
  %9294 = fadd fast float %9291, %9280
  %9295 = fadd fast float %9292, %9281
  %9296 = fsub fast float 1.000000e+00, %9273
  %9297 = fsub fast float 1.000000e+00, %9274
  %9298 = fsub fast float 1.000000e+00, %9275
  %9299 = fmul fast float %9293, %9296
  %9300 = fmul fast float %9294, %9297
  %9301 = fmul fast float %9295, %9298
  br label %9302

; <label>:9302                                    ; preds = %9263, %9214
  %9303 = phi float [ %9240, %9214 ], [ %9299, %9263 ]
  %9304 = phi float [ %9241, %9214 ], [ %9300, %9263 ]
  %9305 = phi float [ %9242, %9214 ], [ %9301, %9263 ]
  %9306 = phi float [ %9229, %9214 ], [ %9273, %9263 ]
  %9307 = phi float [ %9229, %9214 ], [ %9274, %9263 ]
  %9308 = phi float [ %9229, %9214 ], [ %9275, %9263 ]
  br i1 %8795, label %9309, label %9507, !dx.controlflow.hints !179

; <label>:9309                                    ; preds = %9302
  %9310 = extractvalue %dx.types.CBufRet.f32 %9208, 0
  %9311 = fmul fast float %9310, %9210
  %9312 = fsub fast float %9205, %9303
  %9313 = fsub fast float %9206, %9304
  %9314 = fsub fast float %9207, %9305
  %9315 = fmul fast float %9311, %9312
  %9316 = fmul fast float %9311, %9313
  %9317 = fmul fast float %9311, %9314
  %9318 = fadd fast float %9315, %9303
  %9319 = fadd fast float %9316, %9304
  %9320 = fadd fast float %9317, %9305
  %9321 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9306)  ; FMax(a,b)
  %9322 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9307)  ; FMax(a,b)
  %9323 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9308)  ; FMax(a,b)
  %9324 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9204)  ; FMax(a,b)
  %9325 = call float @dx.op.binary.f32(i32 35, float %9203, float %9213)  ; FMax(a,b)
  %9326 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9325)  ; FMax(a,b)
  %9327 = fdiv fast float %9203, %9326
  %9328 = call float @dx.op.unary.f32(i32 7, float %9327)  ; Saturate(value)
  %9329 = fdiv fast float %9213, %9326
  %9330 = call float @dx.op.unary.f32(i32 7, float %9329)  ; Saturate(value)
  %9331 = fcmp fast une float %9324, 1.000000e+00
  br i1 %9331, label %9332, label %9345, !dx.controlflow.hints !180

; <label>:9332                                    ; preds = %9309
  %9333 = call float @dx.op.unary.f32(i32 23, float %9324)  ; Log(value)
  %9334 = fmul fast float %9333, 0x3FE62E4300000000
  %9335 = fmul fast float %9205, %9334
  %9336 = fsub fast float -0.000000e+00, %9335
  %9337 = fmul fast float %9206, %9334
  %9338 = fsub fast float -0.000000e+00, %9337
  %9339 = fmul fast float %9207, %9334
  %9340 = fsub fast float -0.000000e+00, %9339
  %9341 = fsub fast float 1.000000e+00, %9324
  %9342 = fdiv fast float %9336, %9341
  %9343 = fdiv fast float %9338, %9341
  %9344 = fdiv fast float %9340, %9341
  br label %9345

; <label>:9345                                    ; preds = %9332, %9309
  %9346 = phi float [ %9342, %9332 ], [ %9205, %9309 ]
  %9347 = phi float [ %9343, %9332 ], [ %9206, %9309 ]
  %9348 = phi float [ %9344, %9332 ], [ %9207, %9309 ]
  %9349 = phi float [ %9334, %9332 ], [ 0.000000e+00, %9309 ]
  %9350 = fcmp fast une float %9321, 1.000000e+00
  br i1 %9350, label %9351, label %9358, !dx.controlflow.hints !181

; <label>:9351                                    ; preds = %9345
  %9352 = call float @dx.op.unary.f32(i32 23, float %9321)  ; Log(value)
  %9353 = fmul fast float %9352, 0x3FE62E4300000000
  %9354 = fmul fast float %9318, %9353
  %9355 = fsub fast float -0.000000e+00, %9354
  %9356 = fsub fast float 1.000000e+00, %9321
  %9357 = fdiv fast float %9355, %9356
  br label %9358

; <label>:9358                                    ; preds = %9351, %9345
  %9359 = phi float [ %9357, %9351 ], [ %9318, %9345 ]
  %9360 = phi float [ %9353, %9351 ], [ 0.000000e+00, %9345 ]
  %9361 = fcmp fast une float %9322, 1.000000e+00
  br i1 %9361, label %9362, label %9369, !dx.controlflow.hints !181

; <label>:9362                                    ; preds = %9358
  %9363 = call float @dx.op.unary.f32(i32 23, float %9322)  ; Log(value)
  %9364 = fmul fast float %9363, 0x3FE62E4300000000
  %9365 = fmul fast float %9319, %9364
  %9366 = fsub fast float -0.000000e+00, %9365
  %9367 = fsub fast float 1.000000e+00, %9322
  %9368 = fdiv fast float %9366, %9367
  br label %9369

; <label>:9369                                    ; preds = %9362, %9358
  %9370 = phi float [ %9368, %9362 ], [ %9319, %9358 ]
  %9371 = phi float [ %9364, %9362 ], [ 0.000000e+00, %9358 ]
  %9372 = fcmp fast une float %9323, 1.000000e+00
  br i1 %9372, label %9373, label %9380, !dx.controlflow.hints !181

; <label>:9373                                    ; preds = %9369
  %9374 = call float @dx.op.unary.f32(i32 23, float %9323)  ; Log(value)
  %9375 = fmul fast float %9374, 0x3FE62E4300000000
  %9376 = fmul fast float %9320, %9375
  %9377 = fsub fast float -0.000000e+00, %9376
  %9378 = fsub fast float 1.000000e+00, %9323
  %9379 = fdiv fast float %9377, %9378
  br label %9380

; <label>:9380                                    ; preds = %9373, %9369
  %9381 = phi float [ %9379, %9373 ], [ %9320, %9369 ]
  %9382 = phi float [ %9375, %9373 ], [ 0.000000e+00, %9369 ]
  %9383 = fmul fast float %9346, %9330
  %9384 = fmul fast float %9347, %9330
  %9385 = fmul fast float %9348, %9330
  %9386 = fmul fast float %9349, %9330
  %9387 = fmul fast float %9359, %9328
  %9388 = fmul fast float %9370, %9328
  %9389 = fmul fast float %9381, %9328
  %9390 = fmul fast float %9360, %9328
  %9391 = fmul fast float %9371, %9328
  %9392 = fmul fast float %9382, %9328
  %9393 = fadd fast float %9387, %9383
  %9394 = fadd fast float %9388, %9384
  %9395 = fadd fast float %9389, %9385
  %9396 = fadd fast float %9390, %9386
  %9397 = fadd fast float %9391, %9386
  %9398 = fadd fast float %9392, %9386
  %9399 = fcmp fast une float %9396, 0.000000e+00
  br i1 %9399, label %9400, label %9407, !dx.controlflow.hints !182

; <label>:9400                                    ; preds = %9380
  %9401 = fmul fast float %9396, 0x3FF7154760000000
  %9402 = call float @dx.op.unary.f32(i32 21, float %9401)  ; Exp(value)
  %9403 = fsub fast float 1.000000e+00, %9402
  %9404 = fmul fast float %9393, %9403
  %9405 = fsub fast float -0.000000e+00, %9404
  %9406 = fdiv fast float %9405, %9396
  br label %9407

; <label>:9407                                    ; preds = %9400, %9380
  %9408 = phi float [ %9402, %9400 ], [ 1.000000e+00, %9380 ]
  %9409 = phi float [ %9406, %9400 ], [ %9393, %9380 ]
  %9410 = fcmp fast une float %9397, 0.000000e+00
  br i1 %9410, label %9411, label %9418, !dx.controlflow.hints !182

; <label>:9411                                    ; preds = %9407
  %9412 = fmul fast float %9397, 0x3FF7154760000000
  %9413 = call float @dx.op.unary.f32(i32 21, float %9412)  ; Exp(value)
  %9414 = fsub fast float 1.000000e+00, %9413
  %9415 = fmul fast float %9394, %9414
  %9416 = fsub fast float -0.000000e+00, %9415
  %9417 = fdiv fast float %9416, %9397
  br label %9418

; <label>:9418                                    ; preds = %9411, %9407
  %9419 = phi float [ %9413, %9411 ], [ 1.000000e+00, %9407 ]
  %9420 = phi float [ %9417, %9411 ], [ %9394, %9407 ]
  %9421 = fcmp fast une float %9398, 0.000000e+00
  br i1 %9421, label %9422, label %9429, !dx.controlflow.hints !182

; <label>:9422                                    ; preds = %9418
  %9423 = fmul fast float %9398, 0x3FF7154760000000
  %9424 = call float @dx.op.unary.f32(i32 21, float %9423)  ; Exp(value)
  %9425 = fsub fast float 1.000000e+00, %9424
  %9426 = fmul fast float %9395, %9425
  %9427 = fsub fast float -0.000000e+00, %9426
  %9428 = fdiv fast float %9427, %9398
  br label %9429

; <label>:9429                                    ; preds = %9422, %9418
  %9430 = phi float [ %9424, %9422 ], [ 1.000000e+00, %9418 ]
  %9431 = phi float [ %9428, %9422 ], [ %9395, %9418 ]
  %9432 = fcmp fast ogt float %9328, %9330
  br i1 %9432, label %9433, label %9453

; <label>:9433                                    ; preds = %9429
  %9434 = fsub fast float 1.000000e+00, %9330
  %9435 = fmul fast float %9346, %9434
  %9436 = fmul fast float %9347, %9434
  %9437 = fmul fast float %9348, %9434
  %9438 = fmul fast float %9349, %9434
  %9439 = fcmp fast une float %9438, 0.000000e+00
  br i1 %9439, label %9440, label %9491, !dx.controlflow.hints !183

; <label>:9440                                    ; preds = %9433
  %9441 = fmul fast float %9438, 0x3FF7154760000000
  %9442 = call float @dx.op.unary.f32(i32 21, float %9441)  ; Exp(value)
  %9443 = fsub fast float 1.000000e+00, %9442
  %9444 = fmul fast float %9435, %9443
  %9445 = fsub fast float -0.000000e+00, %9444
  %9446 = fmul fast float %9436, %9443
  %9447 = fsub fast float -0.000000e+00, %9446
  %9448 = fmul fast float %9437, %9443
  %9449 = fsub fast float -0.000000e+00, %9448
  %9450 = fdiv fast float %9445, %9438
  %9451 = fdiv fast float %9447, %9438
  %9452 = fdiv fast float %9449, %9438
  br label %9491

; <label>:9453                                    ; preds = %9429
  %9454 = fsub fast float 1.000000e+00, %9328
  %9455 = fmul fast float %9359, %9454
  %9456 = fmul fast float %9370, %9454
  %9457 = fmul fast float %9381, %9454
  %9458 = fmul fast float %9360, %9454
  %9459 = fmul fast float %9371, %9454
  %9460 = fmul fast float %9382, %9454
  %9461 = fcmp fast une float %9458, 0.000000e+00
  br i1 %9461, label %9462, label %9469, !dx.controlflow.hints !182

; <label>:9462                                    ; preds = %9453
  %9463 = fmul fast float %9458, 0x3FF7154760000000
  %9464 = call float @dx.op.unary.f32(i32 21, float %9463)  ; Exp(value)
  %9465 = fsub fast float 1.000000e+00, %9464
  %9466 = fmul fast float %9455, %9465
  %9467 = fsub fast float -0.000000e+00, %9466
  %9468 = fdiv fast float %9467, %9458
  br label %9469

; <label>:9469                                    ; preds = %9462, %9453
  %9470 = phi float [ %9468, %9462 ], [ %9455, %9453 ]
  %9471 = phi float [ %9464, %9462 ], [ 1.000000e+00, %9453 ]
  %9472 = fcmp fast une float %9459, 0.000000e+00
  br i1 %9472, label %9473, label %9480, !dx.controlflow.hints !182

; <label>:9473                                    ; preds = %9469
  %9474 = fmul fast float %9459, 0x3FF7154760000000
  %9475 = call float @dx.op.unary.f32(i32 21, float %9474)  ; Exp(value)
  %9476 = fsub fast float 1.000000e+00, %9475
  %9477 = fmul fast float %9456, %9476
  %9478 = fsub fast float -0.000000e+00, %9477
  %9479 = fdiv fast float %9478, %9459
  br label %9480

; <label>:9480                                    ; preds = %9473, %9469
  %9481 = phi float [ %9479, %9473 ], [ %9456, %9469 ]
  %9482 = phi float [ %9475, %9473 ], [ 1.000000e+00, %9469 ]
  %9483 = fcmp fast une float %9460, 0.000000e+00
  br i1 %9483, label %9484, label %9491, !dx.controlflow.hints !182

; <label>:9484                                    ; preds = %9480
  %9485 = fmul fast float %9460, 0x3FF7154760000000
  %9486 = call float @dx.op.unary.f32(i32 21, float %9485)  ; Exp(value)
  %9487 = fsub fast float 1.000000e+00, %9486
  %9488 = fmul fast float %9457, %9487
  %9489 = fsub fast float -0.000000e+00, %9488
  %9490 = fdiv fast float %9489, %9460
  br label %9491

; <label>:9491                                    ; preds = %9484, %9480, %9440, %9433
  %9492 = phi float [ %9490, %9484 ], [ %9452, %9440 ], [ %9437, %9433 ], [ %9457, %9480 ]
  %9493 = phi float [ %9481, %9484 ], [ %9451, %9440 ], [ %9436, %9433 ], [ %9481, %9480 ]
  %9494 = phi float [ %9470, %9484 ], [ %9450, %9440 ], [ %9435, %9433 ], [ %9470, %9480 ]
  %9495 = phi float [ %9486, %9484 ], [ %9442, %9440 ], [ 1.000000e+00, %9433 ], [ 1.000000e+00, %9480 ]
  %9496 = phi float [ %9482, %9484 ], [ %9442, %9440 ], [ 1.000000e+00, %9433 ], [ %9482, %9480 ]
  %9497 = phi float [ %9471, %9484 ], [ %9442, %9440 ], [ 1.000000e+00, %9433 ], [ %9471, %9480 ]
  %9498 = fmul fast float %9497, %9409
  %9499 = fmul fast float %9496, %9420
  %9500 = fmul fast float %9495, %9431
  %9501 = fadd fast float %9498, %9494
  %9502 = fadd fast float %9499, %9493
  %9503 = fadd fast float %9500, %9492
  %9504 = fmul fast float %9497, %9408
  %9505 = fmul fast float %9496, %9419
  %9506 = fmul fast float %9495, %9430
  br label %9507

; <label>:9507                                    ; preds = %9491, %9302
  %9508 = phi float [ %9506, %9491 ], [ %9308, %9302 ]
  %9509 = phi float [ %9505, %9491 ], [ %9307, %9302 ]
  %9510 = phi float [ %9504, %9491 ], [ %9306, %9302 ]
  %9511 = phi float [ %9503, %9491 ], [ %9305, %9302 ]
  %9512 = phi float [ %9502, %9491 ], [ %9304, %9302 ]
  %9513 = phi float [ %9501, %9491 ], [ %9303, %9302 ]
  %9514 = fmul fast float %9513, %8459
  %9515 = fmul fast float %9512, %8459
  %9516 = fmul fast float %9511, %8459
  %9517 = fmul fast float %9510, %8750
  %9518 = call float @dx.op.dot3.f32(i32 55, float %9510, float %9509, float %9508, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9519 = call float @dx.op.dot3.f32(i32 55, float %9514, float %9515, float %9516, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9520 = select i1 %264, float %9518, float %9510
  %9521 = select i1 %264, float %9518, float %9509
  %9522 = select i1 %264, float 1.000000e+00, float %9508
  %9523 = select i1 %264, float %9519, float %9514
  %9524 = select i1 %264, float 0.000000e+00, float %9515
  %9525 = select i1 %264, float 0.000000e+00, float %9516
  %9526 = fmul fast float %9520, %8744
  %9527 = fmul fast float %9521, %8745
  %9528 = fmul fast float %9522, %8746
  %9529 = fadd fast float %9526, %9523
  %9530 = fadd fast float %9527, %9524
  %9531 = fadd fast float %9525, %9528
  %9532 = fmul fast float %9520, %8747
  %9533 = fmul fast float %9521, %8748
  %9534 = fmul fast float %9522, %8749
  %9535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9536 = extractvalue %dx.types.CBufRet.i32 %9535, 0
  %9537 = icmp eq i32 %9536, 0
  br i1 %9537, label %9905, label %9538, !dx.controlflow.hints !184

; <label>:9538                                    ; preds = %9507
  %9539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9540 = extractvalue %dx.types.CBufRet.f32 %9539, 2
  %9541 = extractvalue %dx.types.CBufRet.f32 %9539, 3
  %9542 = fmul fast float %9540, %118
  %9543 = fmul fast float %9541, %119
  %9544 = fmul fast float %9542, 2.000000e+00
  %9545 = fmul fast float %9543, 2.000000e+00
  %9546 = fsub fast float 1.000000e+00, %9544
  %9547 = fsub fast float 1.000000e+00, %9545
  %9548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9549 = extractvalue %dx.types.CBufRet.f32 %9548, 0
  %9550 = extractvalue %dx.types.CBufRet.f32 %9548, 1
  %9551 = extractvalue %dx.types.CBufRet.f32 %9548, 2
  %9552 = fmul fast float %9546, %9549
  %9553 = fmul fast float %9546, %9550
  %9554 = fmul fast float %9546, %9551
  %9555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9556 = extractvalue %dx.types.CBufRet.f32 %9555, 0
  %9557 = extractvalue %dx.types.CBufRet.f32 %9555, 1
  %9558 = extractvalue %dx.types.CBufRet.f32 %9555, 2
  %9559 = fmul fast float %9547, %9556
  %9560 = fmul fast float %9547, %9557
  %9561 = fmul fast float %9547, %9558
  %9562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9563 = extractvalue %dx.types.CBufRet.f32 %9562, 0
  %9564 = extractvalue %dx.types.CBufRet.f32 %9562, 1
  %9565 = extractvalue %dx.types.CBufRet.f32 %9562, 2
  %9566 = fadd fast float %9559, %9563
  %9567 = fadd fast float %9566, %9552
  %9568 = fadd fast float %9560, %9564
  %9569 = fadd fast float %9568, %9553
  %9570 = fadd fast float %9561, %9565
  %9571 = fadd fast float %9570, %9554
  %9572 = fmul fast float %9567, %8743
  %9573 = fmul fast float %9569, %8743
  %9574 = fmul fast float %9571, %8743
  %9575 = fmul fast float %9572, %9572
  %9576 = fmul fast float %9573, %9573
  %9577 = fadd fast float %9575, %9576
  %9578 = fmul fast float %9574, %9574
  %9579 = fadd fast float %9577, %9578
  %9580 = call float @dx.op.unary.f32(i32 24, float %9579)  ; Sqrt(value)
  %9581 = extractvalue %dx.types.CBufRet.f32 %8470, 0
  %9582 = fsub fast float %9580, %9581
  %9583 = extractvalue %dx.types.CBufRet.f32 %8470, 2
  %9584 = fmul fast float %9582, %9583
  %9585 = call float @dx.op.unary.f32(i32 7, float %9584)  ; Saturate(value)
  %9586 = fadd fast float %9585, -5.000000e-01
  %9587 = fmul fast float %9586, 2.000000e+00
  %9588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9589 = extractvalue %dx.types.CBufRet.f32 %9588, 2
  %9590 = call float @dx.op.binary.f32(i32 36, float %9589, float %9587)  ; FMin(a,b)
  %9591 = fsub fast float -0.000000e+00, %9589
  %9592 = fcmp fast ogt float %9590, %9591
  br i1 %9592, label %9593, label %9905, !dx.controlflow.hints !185

; <label>:9593                                    ; preds = %9538
  %9594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9595 = extractvalue %dx.types.CBufRet.f32 %9594, 3
  %9596 = fcmp fast ogt float %9595, 0.000000e+00
  br i1 %9596, label %9597, label %9672, !dx.controlflow.hints !186

; <label>:9597                                    ; preds = %9593
  %9598 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9599 = extractvalue %dx.types.Dimensions %9598, 0
  %9600 = sitofp i32 %9599 to float
  %9601 = extractvalue %dx.types.Dimensions %9598, 1
  %9602 = sitofp i32 %9601 to float
  %9603 = fmul fast float %9542, %9600
  %9604 = fmul fast float %9543, %9602
  %9605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9606 = extractvalue %dx.types.CBufRet.f32 %9605, 1
  %9607 = fsub fast float -0.000000e+00, %9606
  %9608 = fptoui float %9607 to i32
  %9609 = fptoui float %9603 to i32
  %9610 = fptoui float %9604 to i32
  %9611 = and i32 %9608, 31
  %9612 = lshr i32 %9609, %9611
  %9613 = lshr i32 %9610, %9611
  %9614 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9608, i32 %9612, i32 %9613, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9615 = extractvalue %dx.types.ResRet.f32 %9614, 0
  %9616 = fcmp fast olt float %9615, -1.000000e+00
  %9617 = fcmp fast ogt float %9615, -1.000000e+00
  %9618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9619 = extractvalue %dx.types.CBufRet.f32 %9618, 1
  %9620 = select i1 %9617, float %9619, float 1.000000e+00
  %9621 = fadd fast float %9615, 1.000000e+00
  %9622 = fmul fast float %9620, %9621
  %9623 = call float @dx.op.unary.f32(i32 6, float %9622)  ; FAbs(value)
  %9624 = extractvalue %dx.types.CBufRet.f32 %9618, 3
  %9625 = fcmp fast oge float %9623, %9624
  %9626 = select i1 %9625, float 0x4197782600000000, float %9623
  %9627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9628 = extractvalue %dx.types.CBufRet.f32 %9627, 0
  %9629 = extractvalue %dx.types.CBufRet.f32 %9627, 1
  %9630 = extractvalue %dx.types.CBufRet.f32 %9627, 2
  %9631 = select i1 %9616, float %9628, float %9549
  %9632 = select i1 %9616, float %9629, float %9550
  %9633 = select i1 %9616, float %9630, float %9551
  %9634 = fmul fast float %9631, %9546
  %9635 = fmul fast float %9632, %9546
  %9636 = fmul fast float %9633, %9546
  %9637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9638 = extractvalue %dx.types.CBufRet.f32 %9637, 0
  %9639 = extractvalue %dx.types.CBufRet.f32 %9637, 1
  %9640 = extractvalue %dx.types.CBufRet.f32 %9637, 2
  %9641 = select i1 %9616, float %9638, float %9556
  %9642 = select i1 %9616, float %9639, float %9557
  %9643 = select i1 %9616, float %9640, float %9558
  %9644 = fmul fast float %9641, %9547
  %9645 = fmul fast float %9642, %9547
  %9646 = fmul fast float %9643, %9547
  %9647 = fadd fast float %9644, %9634
  %9648 = fadd fast float %9645, %9635
  %9649 = fadd fast float %9646, %9636
  %9650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9651 = extractvalue %dx.types.CBufRet.f32 %9650, 0
  %9652 = extractvalue %dx.types.CBufRet.f32 %9650, 1
  %9653 = extractvalue %dx.types.CBufRet.f32 %9650, 2
  %9654 = select i1 %9616, float %9651, float %9563
  %9655 = select i1 %9616, float %9652, float %9564
  %9656 = select i1 %9616, float %9653, float %9565
  %9657 = fadd fast float %9647, %9654
  %9658 = fadd fast float %9648, %9655
  %9659 = fadd fast float %9649, %9656
  %9660 = fmul fast float %9657, %9626
  %9661 = fmul fast float %9658, %9626
  %9662 = fmul fast float %9659, %9626
  %9663 = fmul fast float %9660, %9660
  %9664 = fmul fast float %9661, %9661
  %9665 = fadd fast float %9663, %9664
  %9666 = fmul fast float %9662, %9662
  %9667 = fadd fast float %9665, %9666
  %9668 = call float @dx.op.unary.f32(i32 24, float %9667)  ; Sqrt(value)
  %9669 = fsub fast float %9668, %9581
  %9670 = fmul fast float %9669, %9583
  %9671 = call float @dx.op.unary.f32(i32 7, float %9670)  ; Saturate(value)
  br label %9672

; <label>:9672                                    ; preds = %9597, %9593
  %9673 = phi float [ %9671, %9597 ], [ 1.000000e+00, %9593 ]
  %9674 = fmul fast float %9590, 5.000000e-01
  %9675 = fadd fast float %9674, 5.000000e-01
  %9676 = call float @dx.op.unary.f32(i32 22, float %9675)  ; Frc(value)
  %9677 = call float @dx.op.unary.f32(i32 27, float %9676)  ; Round_ni(value)
  %9678 = call float @dx.op.unary.f32(i32 22, float %9676)  ; Frc(value)
  %9679 = fmul fast float %9678, 2.000000e+00
  %9680 = fadd fast float %9679, -1.000000e+00
  %9681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %55, float %9542, float %9543, float %9677, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9682 = extractvalue %dx.types.ResRet.f32 %9681, 0
  %9683 = extractvalue %dx.types.ResRet.f32 %9681, 1
  %9684 = extractvalue %dx.types.ResRet.f32 %9681, 2
  %9685 = extractvalue %dx.types.ResRet.f32 %9681, 3
  %9686 = fadd fast float %9682, -5.000000e-01
  %9687 = fadd fast float %9684, -5.000000e-01
  %9688 = fmul fast float %9686, 0xBFD5555560000000
  %9689 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9687, float %9688)  ; FMad(a,b,c)
  %9690 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9683, float 0.000000e+00)  ; FMad(a,b,c)
  %9691 = fadd fast float %9690, %9685
  %9692 = fmul fast float %9686, -7.500000e-01
  %9693 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9687, float %9692)  ; FMad(a,b,c)
  %9694 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9683, float 0.000000e+00)  ; FMad(a,b,c)
  %9695 = fadd fast float %9694, %9685
  %9696 = call float @dx.op.binary.f32(i32 35, float %9689, float -1.000000e+00)  ; FMax(a,b)
  %9697 = call float @dx.op.binary.f32(i32 35, float %9691, float -1.000000e+00)  ; FMax(a,b)
  %9698 = call float @dx.op.binary.f32(i32 35, float %9693, float -1.000000e+00)  ; FMax(a,b)
  %9699 = call float @dx.op.binary.f32(i32 35, float %9695, float -1.000000e+00)  ; FMax(a,b)
  %9700 = call float @dx.op.binary.f32(i32 36, float %9696, float 1.000000e+00)  ; FMin(a,b)
  %9701 = call float @dx.op.binary.f32(i32 36, float %9697, float 1.000000e+00)  ; FMin(a,b)
  %9702 = call float @dx.op.binary.f32(i32 36, float %9698, float 1.000000e+00)  ; FMin(a,b)
  %9703 = call float @dx.op.binary.f32(i32 36, float %9699, float 1.000000e+00)  ; FMin(a,b)
  %9704 = fcmp fast olt float %9700, 0x3FEFFF8020000000
  br i1 %9704, label %9705, label %9820, !dx.controlflow.hints !187

; <label>:9705                                    ; preds = %9672
  %9706 = extractvalue %dx.types.CBufRet.f32 %9588, 3
  %9707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9708 = extractvalue %dx.types.CBufRet.f32 %9707, 0
  %9709 = extractvalue %dx.types.CBufRet.f32 %9707, 1
  %9710 = extractvalue %dx.types.CBufRet.f32 %9707, 2
  %9711 = extractvalue %dx.types.CBufRet.f32 %9707, 3
  %9712 = fsub fast float %9708, %9700
  %9713 = fsub fast float %9709, %9701
  %9714 = fsub fast float %9710, %9702
  %9715 = fsub fast float %9711, %9703
  %9716 = fmul fast float %9712, %9706
  %9717 = fmul fast float %9713, %9706
  %9718 = fmul fast float %9714, %9706
  %9719 = fmul fast float %9715, %9706
  %9720 = fadd fast float %9716, %9700
  %9721 = fadd fast float %9717, %9701
  %9722 = fsub fast float -0.000000e+00, %9721
  %9723 = fadd fast float %9718, %9702
  %9724 = fadd fast float %9719, %9703
  %9725 = fmul fast float %9720, %9720
  %9726 = fsub fast float %9721, %9725
  %9727 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9726)  ; FMax(a,b)
  %9728 = fdiv fast float 1.000000e+00, %9727
  %9729 = fmul fast float %9721, %9720
  %9730 = fsub fast float %9723, %9729
  %9731 = fsub fast float %9680, %9720
  %9732 = fmul fast float %9680, %9680
  %9733 = fsub fast float %9732, %9721
  %9734 = fmul fast float %9731, %9728
  %9735 = fmul fast float %9734, %9730
  %9736 = fsub fast float %9733, %9735
  %9737 = fmul fast float %9721, %9721
  %9738 = fsub fast float %9724, %9737
  %9739 = fmul fast float %9730, %9730
  %9740 = fmul fast float %9739, %9728
  %9741 = fsub fast float %9738, %9740
  %9742 = fdiv fast float %9736, %9741
  %9743 = fmul fast float %9730, %9742
  %9744 = fsub fast float %9731, %9743
  %9745 = fmul fast float %9744, %9728
  %9746 = fmul fast float %9745, %9720
  %9747 = fsub fast float 1.000000e+00, %9746
  %9748 = fmul fast float %9721, %9742
  %9749 = fsub fast float %9747, %9748
  %9750 = fmul fast float %9745, %9745
  %9751 = fmul fast float %9742, 4.000000e+00
  %9752 = fmul fast float %9751, %9749
  %9753 = fsub fast float %9750, %9752
  %9754 = call float @dx.op.unary.f32(i32 24, float %9753)  ; Sqrt(value)
  %9755 = fcmp fast oge float %9745, 0.000000e+00
  %9756 = fsub fast float -0.000000e+00, %9754
  %9757 = select i1 %9755, float %9756, float %9754
  %9758 = fsub fast float %9757, %9745
  %9759 = fdiv fast float %9758, %9742
  %9760 = fdiv fast float %9749, %9758
  %9761 = fmul fast float %9759, 5.000000e-01
  %9762 = fmul fast float %9760, 2.000000e+00
  %9763 = select i1 %9755, float %9761, float %9762
  %9764 = select i1 %9755, float %9762, float %9761
  %9765 = call float @dx.op.binary.f32(i32 35, float %9763, float %9764)  ; FMax(a,b)
  %9766 = call float @dx.op.binary.f32(i32 36, float %9763, float %9764)  ; FMin(a,b)
  %9767 = fcmp fast ogt float %9680, %9766
  br i1 %9767, label %9768, label %9778

; <label>:9768                                    ; preds = %9705
  %9769 = fsub fast float %9680, %9766
  %9770 = fsub fast float %9765, %9766
  %9771 = fmul fast float %9769, %9770
  %9772 = fmul fast float %9765, %9680
  %9773 = fadd fast float %9765, %9680
  %9774 = fmul fast float %9773, %9720
  %9775 = fadd fast float %9772, %9721
  %9776 = fsub fast float %9775, %9774
  %9777 = fdiv fast float %9776, %9771
  br label %9778

; <label>:9778                                    ; preds = %9768, %9705
  %9779 = phi float [ %9777, %9768 ], [ 0.000000e+00, %9705 ]
  %9780 = fcmp fast ogt float %9680, %9765
  %9781 = fsub fast float %9680, %9765
  br i1 %9780, label %9782, label %9792

; <label>:9782                                    ; preds = %9778
  %9783 = fsub fast float %9765, %9766
  %9784 = fmul fast float %9783, %9781
  %9785 = fmul fast float %9766, %9680
  %9786 = fadd fast float %9766, %9680
  %9787 = fmul fast float %9786, %9720
  %9788 = fsub fast float %9722, %9785
  %9789 = fadd fast float %9788, %9787
  %9790 = fdiv fast float %9789, %9784
  %9791 = fadd fast float %9790, %9779
  br label %9792

; <label>:9792                                    ; preds = %9782, %9778
  %9793 = phi float [ %9791, %9782 ], [ %9779, %9778 ]
  %9794 = fsub fast float %9680, %9766
  %9795 = fmul fast float %9794, %9781
  %9796 = fmul fast float %9766, %9765
  %9797 = fadd fast float %9766, %9765
  %9798 = fmul fast float %9797, %9720
  %9799 = fadd fast float %9796, %9721
  %9800 = fsub fast float %9799, %9798
  %9801 = fdiv fast float %9800, %9795
  %9802 = call float @dx.op.unary.f32(i32 7, float %9793)  ; Saturate(value)
  %9803 = fcmp fast oeq float %8471, 0.000000e+00
  %9804 = extractvalue %dx.types.CBufRet.f32 %9588, 0
  %9805 = fcmp fast oeq float %9804, 0.000000e+00
  %9806 = or i1 %9803, %9805
  %9807 = fmul fast float %9804, 2.000000e+00
  %9808 = fadd fast float %9589, %9590
  %9809 = fdiv fast float %9808, %9807
  %9810 = call float @dx.op.unary.f32(i32 7, float %9809)  ; Saturate(value)
  %9811 = fmul fast float %9810, 2.000000e+00
  %9812 = fsub fast float 3.000000e+00, %9811
  %9813 = fmul fast float %9810, %9810
  %9814 = fmul fast float %9813, %9812
  %9815 = select i1 %9806, float 1.000000e+00, float %9814
  %9816 = fmul fast float %9801, %8471
  %9817 = fadd fast float %9802, %9816
  %9818 = call float @dx.op.unary.f32(i32 7, float %9817)  ; Saturate(value)
  %9819 = fmul fast float %9815, %9818
  br label %9820

; <label>:9820                                    ; preds = %9792, %9672
  %9821 = phi float [ %9819, %9792 ], [ 0.000000e+00, %9672 ]
  %9822 = fsub fast float 1.000000e+00, %9821
  %9823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %55, float %9542, float %9543, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9824 = extractvalue %dx.types.ResRet.f32 %9823, 0
  %9825 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9826 = extractvalue %dx.types.CBufRet.i32 %9825, 2
  %9827 = icmp eq i32 %9826, 0
  br i1 %9827, label %9833, label %9828

; <label>:9828                                    ; preds = %9820
  %9829 = call float @dx.op.unary.f32(i32 7, float %9821)  ; Saturate(value)
  %9830 = fadd fast float %9824, -1.000000e+00
  %9831 = fmul fast float %9829, %9830
  %9832 = fadd fast float %9831, 1.000000e+00
  br label %9833

; <label>:9833                                    ; preds = %9828, %9820
  %9834 = phi float [ %9832, %9828 ], [ %9822, %9820 ]
  br i1 %9596, label %9835, label %9853

; <label>:9835                                    ; preds = %9833
  %9836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9837 = extractvalue %dx.types.CBufRet.f32 %9836, 1
  %9838 = fsub fast float %9673, %9837
  %9839 = call float @dx.op.unary.f32(i32 7, float %9838)  ; Saturate(value)
  %9840 = fsub fast float %9673, %9595
  %9841 = call float @dx.op.unary.f32(i32 7, float %9840)  ; Saturate(value)
  %9842 = fsub fast float %9839, %9841
  %9843 = fsub fast float %9675, %9841
  %9844 = fdiv fast float %9843, %9842
  %9845 = call float @dx.op.unary.f32(i32 7, float %9844)  ; Saturate(value)
  %9846 = fmul fast float %9845, 2.000000e+00
  %9847 = fsub fast float 3.000000e+00, %9846
  %9848 = fsub fast float %9824, %9834
  %9849 = fmul fast float %9845, %9845
  %9850 = fmul fast float %9849, %9848
  %9851 = fmul fast float %9850, %9847
  %9852 = fadd fast float %9851, %9834
  br label %9853

; <label>:9853                                    ; preds = %9835, %9833
  %9854 = phi float [ %9852, %9835 ], [ %9834, %9833 ]
  %9855 = call float @dx.op.binary.f32(i32 35, float %9824, float %9854)  ; FMax(a,b)
  %9856 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9857 = extractvalue %dx.types.CBufRet.i32 %9856, 2
  %9858 = and i32 %9857, 1
  %9859 = icmp eq i32 %9858, 0
  %9860 = fcmp fast une float %9855, 1.000000e+00
  %9861 = and i1 %9860, %9859
  br i1 %9861, label %9862, label %9881

; <label>:9862                                    ; preds = %9853
  %9863 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %55, float %9542, float %9543, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9864 = extractvalue %dx.types.ResRet.f32 %9863, 0
  %9865 = extractvalue %dx.types.ResRet.f32 %9863, 1
  %9866 = extractvalue %dx.types.ResRet.f32 %9863, 2
  %9867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9868 = extractvalue %dx.types.CBufRet.f32 %9867, 1
  %9869 = fmul fast float %9868, %9864
  %9870 = fmul fast float %9868, %9865
  %9871 = fmul fast float %9868, %9866
  %9872 = fcmp fast ogt float %9824, 0x3FEFFF2E40000000
  %9873 = fsub fast float 1.000000e+00, %9855
  %9874 = fsub fast float 1.000000e+00, %9824
  %9875 = fdiv fast float %9873, %9874
  %9876 = call float @dx.op.unary.f32(i32 7, float %9875)  ; Saturate(value)
  %9877 = select i1 %9872, float 0.000000e+00, float %9876
  %9878 = fmul fast float %9869, %9877
  %9879 = fmul fast float %9870, %9877
  %9880 = fmul fast float %9871, %9877
  br label %9881

; <label>:9881                                    ; preds = %9862, %9853
  %9882 = phi float [ 0.000000e+00, %9853 ], [ %9878, %9862 ]
  %9883 = phi float [ 0.000000e+00, %9853 ], [ %9879, %9862 ]
  %9884 = phi float [ 0.000000e+00, %9853 ], [ %9880, %9862 ]
  %9885 = fmul fast float %9882, %8459
  %9886 = fmul fast float %9883, %8459
  %9887 = fmul fast float %9884, %8459
  %9888 = fmul fast float %9855, %9517
  %9889 = call float @dx.op.dot3.f32(i32 55, float %9855, float %9855, float %9855, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9890 = call float @dx.op.dot3.f32(i32 55, float %9885, float %9886, float %9887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9891 = select i1 %264, float %9889, float %9855
  %9892 = select i1 %264, float 1.000000e+00, float %9855
  %9893 = select i1 %264, float %9890, float %9885
  %9894 = select i1 %264, float 0.000000e+00, float %9886
  %9895 = select i1 %264, float 0.000000e+00, float %9887
  %9896 = fmul fast float %9891, %9529
  %9897 = fmul fast float %9891, %9530
  %9898 = fmul fast float %9892, %9531
  %9899 = fadd fast float %9896, %9893
  %9900 = fadd fast float %9897, %9894
  %9901 = fadd fast float %9895, %9898
  %9902 = fmul fast float %9891, %9532
  %9903 = fmul fast float %9891, %9533
  %9904 = fmul fast float %9892, %9534
  br label %9905

; <label>:9905                                    ; preds = %9881, %9538, %9507, %8739
  %9906 = phi float [ %8744, %8739 ], [ %9529, %9507 ], [ %9899, %9881 ], [ %9529, %9538 ]
  %9907 = phi float [ %8745, %8739 ], [ %9530, %9507 ], [ %9900, %9881 ], [ %9530, %9538 ]
  %9908 = phi float [ %8746, %8739 ], [ %9531, %9507 ], [ %9901, %9881 ], [ %9531, %9538 ]
  %9909 = phi float [ %8747, %8739 ], [ %9532, %9507 ], [ %9902, %9881 ], [ %9532, %9538 ]
  %9910 = phi float [ %8748, %8739 ], [ %9533, %9507 ], [ %9903, %9881 ], [ %9533, %9538 ]
  %9911 = phi float [ %8749, %8739 ], [ %9534, %9507 ], [ %9904, %9881 ], [ %9534, %9538 ]
  %9912 = phi float [ %8750, %8739 ], [ %9517, %9507 ], [ %9888, %9881 ], [ %9517, %9538 ]
  %9913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9914 = extractvalue %dx.types.CBufRet.f32 %9913, 2
  %9915 = extractvalue %dx.types.CBufRet.f32 %9913, 3
  %9916 = fmul fast float %9914, %118
  %9917 = fmul fast float %9915, %119
  %9918 = call float @dx.op.unary.f32(i32 7, float %9916)  ; Saturate(value)
  %9919 = call float @dx.op.unary.f32(i32 7, float %9917)  ; Saturate(value)
  %9920 = select i1 %8481, i32 2, i32 0
  %9921 = or i32 %9920, 1
  %9922 = uitofp i32 %9921 to float
  %9923 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9918, float %9919, float %9922, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9924 = extractvalue %dx.types.ResRet.f32 %9923, 0
  %9925 = extractvalue %dx.types.ResRet.f32 %9923, 1
  %9926 = extractvalue %dx.types.ResRet.f32 %9923, 2
  %9927 = extractvalue %dx.types.ResRet.f32 %9923, 3
  %9928 = add nuw nsw i32 %9920, 2
  %9929 = uitofp i32 %9928 to float
  %9930 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9918, float %9919, float %9929, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9931 = extractvalue %dx.types.ResRet.f32 %9930, 0
  %9932 = extractvalue %dx.types.ResRet.f32 %9930, 1
  %9933 = extractvalue %dx.types.ResRet.f32 %9930, 2
  %9934 = extractvalue %dx.types.ResRet.f32 %9930, 3
  %9935 = call float @dx.op.binary.f32(i32 35, float %9925, float %9926)  ; FMax(a,b)
  %9936 = call float @dx.op.binary.f32(i32 35, float %9924, float %9935)  ; FMax(a,b)
  %9937 = call float @dx.op.binary.f32(i32 35, float %9936, float %9927)  ; FMax(a,b)
  %9938 = call float @dx.op.binary.f32(i32 36, float %9932, float %9933)  ; FMin(a,b)
  %9939 = call float @dx.op.binary.f32(i32 36, float %9931, float %9938)  ; FMin(a,b)
  %9940 = call float @dx.op.binary.f32(i32 36, float %9939, float %9934)  ; FMin(a,b)
  %9941 = fmul fast float %9937, 2.550000e+02
  %9942 = fadd fast float %9941, 0x3F70101020000000
  %9943 = fptoui float %9942 to i32
  %9944 = fmul fast float %9940, 2.550000e+02
  %9945 = fadd fast float %9944, 0x3F70101020000000
  %9946 = fptoui float %9945 to i32
  %9947 = icmp ult i32 %9943, %9946
  br i1 %9947, label %9948, label %10117

; <label>:9948                                    ; preds = %9905
  %9949 = fcmp fast ogt float %104, 9.843750e-01
  %9950 = fadd fast float %8743, -4.000000e+00
  %9951 = select i1 %9949, float -4.000000e+00, float %9950
  %9952 = call float @dx.op.binary.f32(i32 35, float %9951, float 0.000000e+00)  ; FMax(a,b)
  %9953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9954 = extractvalue %dx.types.CBufRet.f32 %9953, 0
  %9955 = fadd fast float %9954, %9952
  %9956 = extractvalue %dx.types.CBufRet.f32 %9953, 2
  %9957 = fmul fast float %9955, %9956
  %9958 = call float @dx.op.unary.f32(i32 23, float %9957)  ; Log(value)
  %9959 = extractvalue %dx.types.CBufRet.f32 %9953, 3
  %9960 = fmul fast float %9959, %9958
  %9961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9962 = extractvalue %dx.types.CBufRet.f32 %9961, 2
  %9963 = fmul fast float %9960, %9962
  %9964 = call float @dx.op.unary.f32(i32 7, float %9963)  ; Saturate(value)
  %9965 = uitofp i32 %9943 to float
  %9966 = uitofp i32 %9946 to float
  %9967 = fadd fast float %9965, 5.000000e-01
  %9968 = fadd fast float %9966, 5.000000e-01
  %9969 = fmul fast float %9962, %9967
  %9970 = fmul fast float %9962, %9968
  %9971 = fadd fast float %9969, 0x3F0FFB4800000000
  %9972 = fadd fast float %9970, 0xBF0FFB4800000000
  %9973 = call float @dx.op.binary.f32(i32 35, float %9964, float %9971)  ; FMax(a,b)
  %9974 = call float @dx.op.binary.f32(i32 36, float %9973, float %9972)  ; FMin(a,b)
  %9975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9976 = extractvalue %dx.types.CBufRet.f32 %9975, 1
  %9977 = extractvalue %dx.types.CBufRet.f32 %9975, 2
  %9978 = extractvalue %dx.types.CBufRet.f32 %9975, 0
  %9979 = select i1 %8481, float %9978, float 0.000000e+00
  %9980 = fmul fast float %9976, %9974
  %9981 = fadd fast float %9979, %9980
  %9982 = fadd fast float %9979, %9977
  %9983 = fsub fast float %9976, %9977
  %9984 = fadd fast float %9983, %9979
  %9985 = call float @dx.op.binary.f32(i32 35, float %9981, float %9982)  ; FMax(a,b)
  %9986 = call float @dx.op.binary.f32(i32 36, float %9985, float %9984)  ; FMin(a,b)
  %9987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %9918, float %9919, float %9986, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9988 = extractvalue %dx.types.ResRet.f32 %9987, 0
  %9989 = extractvalue %dx.types.ResRet.f32 %9987, 1
  %9990 = extractvalue %dx.types.ResRet.f32 %9987, 2
  %9991 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9992 = extractvalue %dx.types.CBufRet.i32 %9991, 0
  %9993 = extractvalue %dx.types.CBufRet.i32 %9991, 1
  %9994 = uitofp i32 %9992 to float
  %9995 = uitofp i32 %9993 to float
  %9996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9997 = extractvalue %dx.types.CBufRet.f32 %9996, 0
  %9998 = extractvalue %dx.types.CBufRet.f32 %9996, 1
  %9999 = fmul fast float %9994, %9918
  %10000 = fmul fast float %9995, %9919
  %10001 = fadd fast float %9999, -5.000000e-01
  %10002 = fadd fast float %10000, -5.000000e-01
  %10003 = call float @dx.op.unary.f32(i32 22, float %10001)  ; Frc(value)
  %10004 = call float @dx.op.unary.f32(i32 22, float %10002)  ; Frc(value)
  %10005 = fmul fast float %10003, %10003
  %10006 = fmul fast float %10005, %10003
  %10007 = fsub fast float 3.000000e+00, %10003
  %10008 = fmul fast float %10005, %10007
  %10009 = fmul fast float %10003, 3.000000e+00
  %10010 = fmul fast float %10006, 3.000000e+00
  %10011 = fmul fast float %10005, 6.000000e+00
  %10012 = fsub fast float %10010, %10011
  %10013 = fadd fast float %10012, 4.000000e+00
  %10014 = fmul fast float %10013, 0x3FC5555560000000
  %10015 = fmul fast float %10006, -3.000000e+00
  %10016 = fadd fast float %10005, %10003
  %10017 = fmul fast float %10016, 3.000000e+00
  %10018 = fadd fast float %10015, 1.000000e+00
  %10019 = fadd fast float %10018, %10017
  %10020 = fmul fast float %10006, 0x3FC5555560000000
  %10021 = fmul fast float %10004, %10004
  %10022 = fmul fast float %10021, %10004
  %10023 = fsub fast float 3.000000e+00, %10004
  %10024 = fmul fast float %10021, %10023
  %10025 = fmul fast float %10004, 3.000000e+00
  %10026 = fmul fast float %10022, 3.000000e+00
  %10027 = fmul fast float %10021, 6.000000e+00
  %10028 = fsub fast float %10026, %10027
  %10029 = fadd fast float %10028, 4.000000e+00
  %10030 = fmul fast float %10029, 0x3FC5555560000000
  %10031 = fmul fast float %10022, -3.000000e+00
  %10032 = fadd fast float %10021, %10004
  %10033 = fmul fast float %10032, 3.000000e+00
  %10034 = fadd fast float %10031, 1.000000e+00
  %10035 = fadd fast float %10034, %10033
  %10036 = fmul fast float %10022, 0x3FC5555560000000
  %10037 = fadd fast float %10003, 1.000000e+00
  %10038 = fsub fast float 1.000000e+00, %10009
  %10039 = fadd fast float %10038, %10008
  %10040 = fadd fast float %10039, %10013
  %10041 = fmul fast float %10040, 0x3FC5555560000000
  %10042 = fdiv fast float %10014, %10041
  %10043 = fsub fast float %10037, %10042
  %10044 = fsub fast float 1.000000e+00, %10003
  %10045 = fadd fast float %10019, %10006
  %10046 = fmul fast float %10045, 0x3FC5555560000000
  %10047 = fdiv fast float %10020, %10046
  %10048 = fadd fast float %10044, %10047
  %10049 = fadd fast float %10004, 1.000000e+00
  %10050 = fsub fast float 1.000000e+00, %10025
  %10051 = fadd fast float %10050, %10024
  %10052 = fadd fast float %10051, %10029
  %10053 = fmul fast float %10052, 0x3FC5555560000000
  %10054 = fdiv fast float %10030, %10053
  %10055 = fsub fast float %10049, %10054
  %10056 = fsub fast float 1.000000e+00, %10004
  %10057 = fadd fast float %10035, %10022
  %10058 = fmul fast float %10057, 0x3FC5555560000000
  %10059 = fdiv fast float %10036, %10058
  %10060 = fadd fast float %10059, %10056
  %10061 = fmul fast float %10043, %9997
  %10062 = fsub fast float %9918, %10061
  %10063 = fmul fast float %10048, %9997
  %10064 = fadd fast float %10063, %9918
  %10065 = fmul fast float %10060, %9998
  %10066 = fadd fast float %10065, %9919
  %10067 = fmul fast float %10055, %9998
  %10068 = fsub fast float %9919, %10067
  %10069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10062, float %10068, float %9986, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10070 = extractvalue %dx.types.ResRet.f32 %10069, 0
  %10071 = extractvalue %dx.types.ResRet.f32 %10069, 1
  %10072 = extractvalue %dx.types.ResRet.f32 %10069, 2
  %10073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10064, float %10068, float %9986, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10074 = extractvalue %dx.types.ResRet.f32 %10073, 0
  %10075 = extractvalue %dx.types.ResRet.f32 %10073, 1
  %10076 = extractvalue %dx.types.ResRet.f32 %10073, 2
  %10077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10062, float %10066, float %9986, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10078 = extractvalue %dx.types.ResRet.f32 %10077, 0
  %10079 = extractvalue %dx.types.ResRet.f32 %10077, 1
  %10080 = extractvalue %dx.types.ResRet.f32 %10077, 2
  %10081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10064, float %10066, float %9986, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10082 = extractvalue %dx.types.ResRet.f32 %10081, 0
  %10083 = extractvalue %dx.types.ResRet.f32 %10081, 1
  %10084 = extractvalue %dx.types.ResRet.f32 %10081, 2
  %10085 = fsub fast float %10078, %10070
  %10086 = fsub fast float %10079, %10071
  %10087 = fsub fast float %10080, %10072
  %10088 = fmul fast float %10085, %10058
  %10089 = fmul fast float %10086, %10058
  %10090 = fmul fast float %10087, %10058
  %10091 = fadd fast float %10088, %10070
  %10092 = fadd fast float %10089, %10071
  %10093 = fadd fast float %10090, %10072
  %10094 = fsub fast float %10082, %10074
  %10095 = fsub fast float %10083, %10075
  %10096 = fsub fast float %10084, %10076
  %10097 = fmul fast float %10094, %10058
  %10098 = fmul fast float %10095, %10058
  %10099 = fmul fast float %10096, %10058
  %10100 = fsub fast float %10074, %10091
  %10101 = fadd fast float %10100, %10097
  %10102 = fsub fast float %10075, %10092
  %10103 = fadd fast float %10102, %10098
  %10104 = fsub fast float %10076, %10093
  %10105 = fadd fast float %10104, %10099
  %10106 = fmul fast float %10101, %10046
  %10107 = fmul fast float %10103, %10046
  %10108 = fmul fast float %10105, %10046
  %10109 = fadd fast float %10106, %10091
  %10110 = fadd fast float %10107, %10092
  %10111 = fadd fast float %10108, %10093
  %10112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10113 = extractvalue %dx.types.CBufRet.f32 %10112, 1
  %10114 = fmul fast float %10109, %10113
  %10115 = fmul fast float %10110, %10113
  %10116 = fmul fast float %10111, %10113
  br label %10117

; <label>:10117                                   ; preds = %9948, %9905
  %10118 = phi float [ %9988, %9948 ], [ 1.000000e+00, %9905 ]
  %10119 = phi float [ %9989, %9948 ], [ 1.000000e+00, %9905 ]
  %10120 = phi float [ %9990, %9948 ], [ 1.000000e+00, %9905 ]
  %10121 = phi float [ %10114, %9948 ], [ 0.000000e+00, %9905 ]
  %10122 = phi float [ %10115, %9948 ], [ 0.000000e+00, %9905 ]
  %10123 = phi float [ %10116, %9948 ], [ 0.000000e+00, %9905 ]
  %10124 = fmul fast float %10121, %8459
  %10125 = fmul fast float %10122, %8459
  %10126 = fmul fast float %10123, %8459
  %10127 = fmul fast float %10118, %9912
  %10128 = call float @dx.op.dot3.f32(i32 55, float %10118, float %10119, float %10120, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10129 = call float @dx.op.dot3.f32(i32 55, float %10124, float %10125, float %10126, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10130 = select i1 %264, float %10128, float %10118
  %10131 = select i1 %264, float %10128, float %10119
  %10132 = select i1 %264, float 1.000000e+00, float %10120
  %10133 = select i1 %264, float %10129, float %10124
  %10134 = select i1 %264, float 0.000000e+00, float %10125
  %10135 = select i1 %264, float 0.000000e+00, float %10126
  %10136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10137 = extractvalue %dx.types.CBufRet.i32 %10136, 3
  %10138 = and i32 %10137, 3
  %10139 = icmp ne i32 %10138, 0
  %10140 = and i32 %10137, 4
  %10141 = icmp ne i32 %10140, 0
  %10142 = and i1 %10139, %10141
  %10143 = and i1 %264, %10142
  br i1 %10143, label %10144, label %10150

; <label>:10144                                   ; preds = %10117
  %10145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10146 = extractvalue %dx.types.CBufRet.f32 %10145, 1
  %10147 = fadd fast float %10127, -1.000000e+00
  %10148 = fmul fast float %10146, %10147
  %10149 = fadd fast float %10148, 1.000000e+00
  br label %10150

; <label>:10150                                   ; preds = %10144, %10117
  %10151 = phi float [ %10149, %10144 ], [ %10127, %10117 ]
  %10152 = fadd fast float %9909, %9906
  %10153 = fmul fast float %10130, %10152
  %10154 = fadd fast float %10153, %10133
  %10155 = fadd fast float %9910, %9907
  %10156 = fmul fast float %10131, %10155
  %10157 = fadd fast float %10156, %10134
  %10158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10159 = extractvalue %dx.types.CBufRet.f32 %10158, 0
  br i1 %264, label %10160, label %10184

; <label>:10160                                   ; preds = %10150
  %10161 = fadd fast float %10154, %10157
  %10162 = fmul fast float %10159, %10161
  %10163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10164 = extractvalue %dx.types.CBufRet.f32 %10163, 3
  %10165 = extractvalue %dx.types.CBufRet.f32 %8463, 1
  %10166 = fsub fast float %8468, %8462
  %10167 = fadd fast float %10166, %8469
  %10168 = fsub fast float %10167, %10165
  %10169 = extractvalue %dx.types.CBufRet.f32 %8463, 2
  %10170 = fmul fast float %10168, %10169
  %10171 = call float @dx.op.unary.f32(i32 7, float %10170)  ; Saturate(value)
  %10172 = fsub fast float %10171, %10164
  %10173 = fmul fast float %10172, %10151
  %10174 = fadd fast float %10173, %10164
  %10175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10176 = extractvalue %dx.types.CBufRet.f32 %10175, 0
  %10177 = fsub fast float %10174, %10176
  %10178 = fmul fast float %10177, 1.000000e+01
  %10179 = call float @dx.op.unary.f32(i32 7, float %10178)  ; Saturate(value)
  %10180 = fsub fast float %4060, %8459
  %10181 = fmul fast float %10179, %10180
  %10182 = fadd fast float %10181, %8459
  %10183 = fmul fast float %10182, %10174
  br label %10208

; <label>:10184                                   ; preds = %10150
  %10185 = fadd fast float %9911, %9908
  %10186 = fmul fast float %10132, %10185
  %10187 = fadd fast float %10186, %10135
  %10188 = fmul fast float %10159, %10154
  %10189 = fmul fast float %10159, %10157
  %10190 = fmul fast float %10159, %10187
  %10191 = call float @dx.op.binary.f32(i32 35, float %10189, float %10190)  ; FMax(a,b)
  %10192 = call float @dx.op.binary.f32(i32 35, float %10188, float %10191)  ; FMax(a,b)
  %10193 = call float @dx.op.binary.f32(i32 35, float %10192, float %8459)  ; FMax(a,b)
  %10194 = fcmp fast ugt float %10193, 0x3F10000000000000
  br i1 %10194, label %10196, label %10195

; <label>:10195                                   ; preds = %10184
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10196

; <label>:10196                                   ; preds = %10195, %10184
  %10197 = add i32 %61, 356
  %10198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10197, i32 undef)  ; BufferLoad(srv,index,wot)
  %10199 = extractvalue %dx.types.ResRet.i32 %10198, 0
  %10200 = and i32 %10199, 32
  %10201 = icmp eq i32 %10200, 0
  br i1 %10201, label %10208, label %10202

; <label>:10202                                   ; preds = %10196
  %10203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10204 = extractvalue %dx.types.CBufRet.f32 %10203, 0
  %10205 = fmul fast float %10204, 0x3FE99999A0000000
  %10206 = fadd fast float %10204, %10188
  %10207 = fadd fast float %10205, %10190
  br label %10208

; <label>:10208                                   ; preds = %10202, %10196, %10160
  %10209 = phi float [ %10162, %10160 ], [ %10206, %10202 ], [ %10188, %10196 ]
  %10210 = phi float [ %10183, %10160 ], [ %10189, %10202 ], [ %10189, %10196 ]
  %10211 = phi float [ %10182, %10160 ], [ %10207, %10202 ], [ %10190, %10196 ]
  %10212 = phi float [ %10182, %10160 ], [ %8459, %10202 ], [ %8459, %10196 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10213 = call float @dx.op.binary.f32(i32 36, float %10209, float 3.225500e+04)  ; FMin(a,b)
  %10214 = call float @dx.op.binary.f32(i32 36, float %10210, float 3.225500e+04)  ; FMin(a,b)
  %10215 = call float @dx.op.binary.f32(i32 36, float %10211, float 3.225500e+04)  ; FMin(a,b)
  %10216 = call float @dx.op.binary.f32(i32 36, float %10212, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10213)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10214)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10215)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10216)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
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
!74 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0]}
!75 = !{void ()* @ps_main, !"ps_main", !76, !4, !103}
!76 = !{!77, !101, null}
!77 = !{!78, !81, !82, !84, !86, !87, !88, !89, !91, !92, !93, !94, !95, !96, !97, !99, !100}
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
!89 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !79, i8 2, i32 1, i8 1, i32 3, i8 3, !90}
!90 = !{i32 3, i32 1}
!91 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !79, i8 2, i32 1, i8 3, i32 7, i8 0, !85}
!92 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 8, i8 0, !80}
!93 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 2, i32 9, i8 0, !83}
!94 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 10, i8 0, !80}
!95 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 11, i8 0, !80}
!96 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !79, i8 1, i32 1, i8 1, i32 12, i8 0, !90}
!97 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !79, i8 1, i32 1, i8 2, i32 12, i8 1, !98}
!98 = !{i32 3, i32 2}
!99 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !79, i8 1, i32 1, i8 4, i32 13, i8 0, !90}
!100 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !79, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
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

