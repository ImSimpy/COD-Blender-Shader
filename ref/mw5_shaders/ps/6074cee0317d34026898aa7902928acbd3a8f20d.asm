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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: deb57a02f38ed4e2cf4fe5d88c7097a5
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
; Number of inputs: 56, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
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
  %216 = extractvalue %dx.types.ResRet.i32 %214, 1
  %217 = bitcast i32 %215 to float
  %218 = bitcast i32 %216 to float
  %219 = fmul fast float %116, 5.000000e-01
  %220 = fmul fast float %117, 5.000000e-01
  %221 = fptosi float %219 to i32
  %222 = fptosi float %220 to i32
  %223 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %221, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = lshr i32 %224, 18
  %226 = uitofp i32 %225 to float
  %227 = fmul fast float %226, 0x3F4C00EBA0000000
  %228 = call float @dx.op.unary.f32(i32 21, float %227)  ; Exp(value)
  %229 = fadd fast float %228, -1.000000e+00
  %230 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %231 = extractvalue %dx.types.Dimensions %230, 0
  %232 = sitofp i32 %231 to float
  %233 = extractvalue %dx.types.Dimensions %230, 1
  %234 = sitofp i32 %233 to float
  %235 = fcmp fast oge float %219, %232
  %236 = fcmp fast oge float %220, %234
  %237 = or i1 %235, %236
  %238 = select i1 %237, float 0x4197782600000000, float %229
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %241 = extractvalue %dx.types.CBufRet.f32 %239, 3
  %242 = fmul fast float %240, %116
  %243 = fmul fast float %241, %117
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 114688
  %247 = icmp ne i32 %246, 0
  %248 = select i1 %247, float %242, float 0.000000e+00
  %249 = select i1 %247, float %243, float 0.000000e+00
  %250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %56, float %248, float %249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = fmul fast float %251, 2.550000e+02
  %253 = fptoui float %252 to i32
  %254 = select i1 %247, i32 %253, i32 0
  %255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.i32 %255, 3
  %257 = and i32 %256, 3
  %258 = icmp ne i32 %257, 0
  %259 = and i32 %256, 4
  %260 = icmp ne i32 %259, 0
  %261 = and i1 %258, %260
  br i1 %261, label %262, label %271

; <label>:262                                     ; preds = %0
  %263 = fmul fast float %151, %117
  %264 = fmul fast float %150, %116
  %265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %55, float %264, float %263, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = fsub fast float 1.000000e+00, %266
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 0
  %270 = fcmp fast olt float %267, %269
  br label %274

; <label>:271                                     ; preds = %0
  %272 = icmp eq i32 %259, 0
  %273 = and i1 %258, %272
  br label %274

; <label>:274                                     ; preds = %271, %262
  %275 = phi i1 [ %270, %262 ], [ %273, %271 ]
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 2
  %278 = fmul fast float %277, 0x3FE3C6EF40000000
  %279 = frem fast float %116, 2.560000e+02
  %280 = frem fast float %117, 2.560000e+02
  %281 = fptoui float %279 to i32
  %282 = fptoui float %280 to i32
  %283 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %281, i32 %282, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = fadd fast float %284, %278
  %286 = call float @dx.op.unary.f32(i32 22, float %285)  ; Frc(value)
  %287 = add i32 %61, 156
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = shl i32 %289, 4
  %291 = and i32 %290, 32752
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %289, 7
  %294 = and i32 %293, 32752
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %289, 22
  %297 = shl nuw nsw i32 %296, 5
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = add i32 %61, 216
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 255
  %303 = uitofp i32 %302 to float
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = lshr i32 %301, 8
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = lshr i32 %301, 16
  %310 = and i32 %309, 255
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %311, 0x3F70101020000000
  %313 = add i32 %61, 36
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 65535
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %315, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = add i32 %61, 288
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %322, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = fmul fast float %324, 0x3F50624DE0000000
  %328 = fmul fast float %326, 0x3F50624DE0000000
  %329 = add i32 %61, 172
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = shl i32 %331, 4
  %333 = and i32 %332, 32752
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %331, 7
  %336 = and i32 %335, 32752
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = lshr i32 %331, 22
  %339 = shl nuw nsw i32 %338, 5
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = add i32 %61, 232
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 255
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %345, 0x3F70101020000000
  %347 = lshr i32 %343, 8
  %348 = and i32 %347, 255
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %349, 0x3F70101020000000
  %351 = lshr i32 %343, 16
  %352 = and i32 %351, 255
  %353 = uitofp i32 %352 to float
  %354 = fmul fast float %353, 0x3F70101020000000
  %355 = add i32 %61, 52
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = and i32 %357, 65535
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %357, 16
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = add i32 %61, 304
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 65535
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %364, 16
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = fmul fast float %366, 0x3F50624DE0000000
  %370 = fmul fast float %368, 0x3F50624DE0000000
  %371 = add i32 %61, 188
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = shl i32 %373, 4
  %375 = and i32 %374, 32752
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %373, 7
  %378 = and i32 %377, 32752
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = lshr i32 %373, 22
  %381 = shl nuw nsw i32 %380, 5
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = add i32 %61, 248
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 255
  %387 = uitofp i32 %386 to float
  %388 = fmul fast float %387, 0x3F70101020000000
  %389 = lshr i32 %385, 8
  %390 = and i32 %389, 255
  %391 = uitofp i32 %390 to float
  %392 = fmul fast float %391, 0x3F70101020000000
  %393 = lshr i32 %385, 16
  %394 = and i32 %393, 255
  %395 = uitofp i32 %394 to float
  %396 = fmul fast float %395, 0x3F70101020000000
  %397 = add i32 %61, 68
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 65535
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = lshr i32 %399, 16
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = add i32 %61, 320
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 65535
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = lshr i32 %406, 16
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = fmul fast float %408, 0x3F50624DE0000000
  %412 = fmul fast float %410, 0x3F50624DE0000000
  %413 = add i32 %61, 204
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = shl i32 %415, 4
  %417 = and i32 %416, 32752
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = lshr i32 %415, 7
  %420 = and i32 %419, 32752
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = lshr i32 %415, 22
  %423 = shl nuw nsw i32 %422, 5
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = add i32 %61, 264
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = and i32 %427, 255
  %429 = uitofp i32 %428 to float
  %430 = fmul fast float %429, 0x3F70101020000000
  %431 = lshr i32 %427, 8
  %432 = and i32 %431, 255
  %433 = uitofp i32 %432 to float
  %434 = fmul fast float %433, 0x3F70101020000000
  %435 = lshr i32 %427, 16
  %436 = and i32 %435, 255
  %437 = uitofp i32 %436 to float
  %438 = fmul fast float %437, 0x3F70101020000000
  %439 = add i32 %61, 84
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 65535
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = lshr i32 %441, 16
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = add i32 %61, 336
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 65535
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = lshr i32 %448, 16
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = fmul fast float %450, 0x3F50624DE0000000
  %454 = fmul fast float %452, 0x3F50624DE0000000
  %455 = add i32 %61, 348
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %457, 32
  %459 = icmp eq i32 %458, 0
  %460 = and i32 %457, 64
  %461 = icmp eq i32 %460, 0
  %462 = and i32 %457, 128
  %463 = icmp eq i32 %462, 0
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = and i32 %465, 2
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %483, label %468

; <label>:468                                     ; preds = %274
  %469 = add i32 %61, 508
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = add i32 %471, 0
  %473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %472, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %474 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %473, %dx.types.Handle %113, float %94, float %95, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = extractvalue %dx.types.ResRet.f32 %474, 2
  %478 = extractvalue %dx.types.ResRet.f32 %474, 3
  %479 = fmul fast float %478, %96
  %480 = fmul fast float %475, %97
  %481 = fmul fast float %476, %98
  %482 = fmul fast float %477, %99
  br label %483

; <label>:483                                     ; preds = %468, %274
  %484 = phi float [ %99, %274 ], [ %482, %468 ]
  %485 = phi float [ %98, %274 ], [ %481, %468 ]
  %486 = phi float [ %97, %274 ], [ %480, %468 ]
  %487 = phi float [ %96, %274 ], [ %479, %468 ]
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = and i32 %489, 2
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %511, label %492

; <label>:492                                     ; preds = %483
  %493 = add i32 %61, 44
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = and i32 %495, 1
  %497 = icmp ne i32 %496, 0
  %498 = select i1 %497, float %486, float 1.000000e+00
  %499 = add i32 %61, 60
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = and i32 %501, 1
  %503 = icmp ne i32 %502, 0
  %504 = select i1 %503, float %485, float 1.000000e+00
  %505 = add i32 %61, 76
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = and i32 %507, 1
  %509 = icmp ne i32 %508, 0
  %510 = select i1 %509, float %484, float 1.000000e+00
  br label %511

; <label>:511                                     ; preds = %492, %483
  %512 = phi float [ %484, %483 ], [ %510, %492 ]
  %513 = phi float [ %485, %483 ], [ %504, %492 ]
  %514 = phi float [ %486, %483 ], [ %498, %492 ]
  %515 = lshr i32 %489, 20
  %516 = and i32 %515, 3
  %517 = add nuw nsw i32 %516, 1
  %518 = add i32 %61, 24
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = add i32 %61, 28
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = or i32 %523, %520
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %1144, label %526

; <label>:526                                     ; preds = %511
  %527 = and i32 %520, 262144
  %528 = icmp ne i32 %527, 0
  %529 = select i1 %528, float %67, float 1.000000e+00
  %530 = select i1 %528, float %68, float 0.000000e+00
  %531 = select i1 %528, float %69, float 0.000000e+00
  %532 = select i1 %528, float %70, float 1.000000e+00
  %533 = select i1 %528, float %71, float %94
  %534 = select i1 %528, float %72, float %95
  %535 = add i32 %61, 284
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = lshr i32 %537, 16
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = fmul fast float %539, 0x3F50624DE0000000
  %541 = add i32 %61, 88
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = lshr i32 %543, 16
  %545 = and i32 %544, 255
  %546 = lshr i32 %543, 24
  %547 = add i32 %61, 292
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = and i32 %549, 65535
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = lshr i32 %549, 16
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = add i32 %61, 32
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = lshr i32 %556, 22
  %558 = shl nuw nsw i32 %557, 5
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = shl i32 %556, 4
  %561 = and i32 %560, 32752
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = lshr i32 %556, 7
  %564 = and i32 %563, 32752
  %565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %564)  ; LegacyF16ToF32(value)
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 3
  %568 = fmul fast float %567, 1.000000e+03
  %569 = fmul fast float %327, %568
  %570 = call float @dx.op.unary.f32(i32 22, float %569)  ; Frc(value)
  %571 = fadd fast float %570, %317
  %572 = fmul fast float %328, %568
  %573 = call float @dx.op.unary.f32(i32 22, float %572)  ; Frc(value)
  %574 = fadd fast float %573, %319
  %575 = fmul fast float %540, %568
  %576 = call float @dx.op.unary.f32(i32 22, float %575)  ; Frc(value)
  %577 = fmul fast float %576, 0x401921FB60000000
  %578 = fadd fast float %577, %559
  %579 = call float @dx.op.unary.f32(i32 13, float %578)  ; Sin(value)
  %580 = call float @dx.op.unary.f32(i32 12, float %578)  ; Cos(value)
  %581 = fsub fast float -0.000000e+00, %579
  %582 = fadd fast float %533, -5.000000e-01
  %583 = fadd fast float %534, -5.000000e-01
  %584 = fmul fast float %551, %582
  %585 = fmul fast float %553, %583
  %586 = fadd fast float %584, 5.000000e-01
  %587 = fadd fast float %585, 5.000000e-01
  %588 = fmul fast float %562, %586
  %589 = fmul fast float %565, %587
  %590 = fmul fast float %580, %588
  %591 = call float @dx.op.tertiary.f32(i32 46, float %581, float %589, float %590)  ; FMad(a,b,c)
  %592 = fmul fast float %579, %588
  %593 = call float @dx.op.tertiary.f32(i32 46, float %580, float %589, float %592)  ; FMad(a,b,c)
  %594 = fadd fast float %571, %591
  %595 = fadd fast float %574, %593
  %596 = icmp ugt i32 %545, 1
  %597 = icmp ugt i32 %543, 33554431
  %598 = or i1 %597, %596
  br i1 %598, label %599, label %624

; <label>:599                                     ; preds = %526
  %600 = add i32 %61, 228
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = lshr i32 %602, 16
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = fmul fast float %567, %604
  %606 = call float @dx.op.unary.f32(i32 22, float %605)  ; Frc(value)
  %607 = mul nuw nsw i32 %545, %546
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %606, %608
  %610 = call float @dx.op.unary.f32(i32 27, float %609)  ; Round_ni(value)
  %611 = fptoui float %610 to i32
  %612 = urem i32 %611, %545
  %613 = udiv i32 %611, %546
  %614 = call float @dx.op.unary.f32(i32 22, float %594)  ; Frc(value)
  %615 = call float @dx.op.unary.f32(i32 22, float %595)  ; Frc(value)
  %616 = uitofp i32 %612 to float
  %617 = uitofp i32 %613 to float
  %618 = fadd fast float %614, %616
  %619 = fadd fast float %615, %617
  %620 = uitofp i32 %545 to float
  %621 = uitofp i32 %546 to float
  %622 = fdiv fast float %618, %620
  %623 = fdiv fast float %619, %621
  br label %624

; <label>:624                                     ; preds = %599, %526
  %625 = phi float [ %622, %599 ], [ %594, %526 ]
  %626 = phi float [ %623, %599 ], [ %595, %526 ]
  %627 = and i32 %520, 256
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %675, label %629

; <label>:629                                     ; preds = %624
  %630 = add i32 %61, 440
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = add i32 %632, 0
  %634 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %633, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %635 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %634, %dx.types.Handle %113, float %625, float %626, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %636 = extractvalue %dx.types.ResRet.f32 %635, 0
  %637 = add i32 %61, 100
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = shl i32 %639, 4
  %641 = and i32 %640, 32752
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  %643 = lshr i32 %639, 7
  %644 = and i32 %643, 32752
  %645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %644)  ; LegacyF16ToF32(value)
  %646 = fsub fast float 1.000000e+00, %487
  %647 = call float @dx.op.binary.f32(i32 35, float %646, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %648 = bitcast float %487 to i32
  %649 = sitofp i32 %648 to float
  %650 = fadd fast float %649, 0xC1CFBF8940000000
  %651 = fmul fast float %645, %650
  %652 = fadd fast float %651, 0x41CFBF8940000000
  %653 = fptosi float %652 to i32
  %654 = bitcast i32 %653 to float
  %655 = bitcast float %647 to i32
  %656 = sitofp i32 %655 to float
  %657 = fadd fast float %656, 0xC1CFBF8940000000
  %658 = fmul fast float %657, %645
  %659 = fadd fast float %658, 0x41CFBF8940000000
  %660 = fptosi float %659 to i32
  %661 = bitcast i32 %660 to float
  %662 = fmul fast float %654, %642
  %663 = fmul fast float %661, %642
  %664 = fsub fast float %647, %662
  %665 = fadd fast float %663, %647
  %666 = call float @dx.op.unary.f32(i32 7, float %664)  ; Saturate(value)
  %667 = call float @dx.op.unary.f32(i32 7, float %665)  ; Saturate(value)
  %668 = fsub fast float %636, %666
  %669 = fsub fast float %667, %666
  %670 = bitcast float %669 to i32
  %671 = sub nsw i32 2129859010, %670
  %672 = bitcast i32 %671 to float
  %673 = fmul fast float %672, %668
  %674 = call float @dx.op.unary.f32(i32 7, float %673)  ; Saturate(value)
  br label %675

; <label>:675                                     ; preds = %629, %624
  %676 = phi float [ %674, %629 ], [ %487, %624 ]
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = and i32 %678, 128
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %697, label %681

; <label>:681                                     ; preds = %675
  %682 = add i32 %61, 424
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %682, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = add i32 %684, 0
  %686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %685, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %687 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %686, %dx.types.Handle %113, float %625, float %626, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %688 = extractvalue %dx.types.ResRet.f32 %687, 0
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = and i32 %690, 524288
  %692 = icmp ne i32 %691, 0
  %693 = fcmp fast ogt float %688, 0x3FE0101020000000
  %694 = select i1 %693, float 1.000000e+00, float 0.000000e+00
  %695 = select i1 %692, float %694, float %688
  %696 = fmul fast float %695, %676
  br label %697

; <label>:697                                     ; preds = %681, %675
  %698 = phi float [ %696, %681 ], [ %676, %675 ]
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = and i32 %700, 16
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %901, label %703

; <label>:703                                     ; preds = %697
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = add i32 %61, 376
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = add i32 %708, 0
  %710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %709, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %711 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %710, %dx.types.Handle %112, float %625, float %626, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %712 = extractvalue %dx.types.ResRet.f32 %711, 0
  %713 = extractvalue %dx.types.ResRet.f32 %711, 1
  %714 = extractvalue %dx.types.ResRet.f32 %711, 2
  %715 = extractvalue %dx.types.ResRet.f32 %711, 3
  %716 = and i32 %705, 255
  %717 = uitofp i32 %716 to float
  %718 = lshr i32 %705, 8
  %719 = and i32 %718, 255
  %720 = uitofp i32 %719 to float
  %721 = fmul fast float %715, %717
  %722 = fadd fast float %721, %720
  %723 = fmul fast float %722, 0x3F70101000000000
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = and i32 %725, 512
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %736, label %728

; <label>:728                                     ; preds = %703
  %729 = add i32 %61, 460
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = add i32 %731, 0
  %733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %732, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %734 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %733, %dx.types.Handle %113, float %625, float %626, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %735 = extractvalue %dx.types.ResRet.f32 %734, 0
  br label %736

; <label>:736                                     ; preds = %728, %703
  %737 = phi float [ %735, %728 ], [ 1.000000e+00, %703 ]
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 33554432
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %848, label %742

; <label>:742                                     ; preds = %736
  %743 = add i32 %61, 224
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = and i32 %745, 65535
  %747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %746)  ; LegacyF16ToF32(value)
  %748 = lshr i32 %745, 16
  %749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %748)  ; LegacyF16ToF32(value)
  %750 = add i32 %61, 228
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = and i32 %752, 65535
  %754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %753)  ; LegacyF16ToF32(value)
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = lshr i32 %756, 24
  %758 = uitofp i32 %757 to float
  %759 = fmul fast float %758, 0x3F70101020000000
  %760 = and i32 %756, 255
  %761 = uitofp i32 %760 to float
  %762 = fmul fast float %761, 0x3F70101020000000
  %763 = lshr i32 %756, 8
  %764 = and i32 %763, 255
  %765 = uitofp i32 %764 to float
  %766 = fmul fast float %765, 0x3F70101020000000
  %767 = lshr i32 %756, 16
  %768 = and i32 %767, 255
  %769 = uitofp i32 %768 to float
  %770 = fmul fast float %769, 0x3F70101020000000
  %771 = add i32 %61, 220
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = lshr i32 %773, 24
  %775 = uitofp i32 %774 to float
  %776 = fmul fast float %775, 0x3F70101020000000
  %777 = and i32 %773, 255
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %778, 0x3F70101020000000
  %780 = lshr i32 %773, 8
  %781 = and i32 %780, 255
  %782 = uitofp i32 %781 to float
  %783 = fmul fast float %782, 0x3F70101020000000
  %784 = lshr i32 %773, 16
  %785 = and i32 %784, 255
  %786 = uitofp i32 %785 to float
  %787 = fmul fast float %786, 0x3F70101020000000
  %788 = bitcast float %712 to i32
  %789 = ashr i32 %788, 1
  %790 = sub nsw i32 1597463174, %789
  %791 = bitcast i32 %790 to float
  %792 = fmul fast float %712, 5.000000e-01
  %793 = fmul fast float %791, %791
  %794 = fmul fast float %793, %792
  %795 = fsub fast float 1.500000e+00, %794
  %796 = fmul fast float %791, %712
  %797 = fmul fast float %796, %795
  %798 = bitcast float %713 to i32
  %799 = ashr i32 %798, 1
  %800 = sub nsw i32 1597463174, %799
  %801 = bitcast i32 %800 to float
  %802 = fmul fast float %713, 5.000000e-01
  %803 = fmul fast float %801, %801
  %804 = fmul fast float %803, %802
  %805 = fsub fast float 1.500000e+00, %804
  %806 = fmul fast float %801, %713
  %807 = fmul fast float %806, %805
  %808 = bitcast float %714 to i32
  %809 = ashr i32 %808, 1
  %810 = sub nsw i32 1597463174, %809
  %811 = bitcast i32 %810 to float
  %812 = fmul fast float %714, 5.000000e-01
  %813 = fmul fast float %811, %811
  %814 = fmul fast float %813, %812
  %815 = fsub fast float 1.500000e+00, %814
  %816 = fmul fast float %811, %714
  %817 = fmul fast float %816, %815
  %818 = fsub fast float %797, %779
  %819 = fsub fast float %807, %783
  %820 = fsub fast float %817, %787
  %821 = fmul fast float %818, %747
  %822 = fmul fast float %819, %749
  %823 = fmul fast float %820, %754
  %824 = fadd fast float %821, %762
  %825 = fadd fast float %822, %766
  %826 = fadd fast float %823, %770
  %827 = call float @dx.op.unary.f32(i32 7, float %824)  ; Saturate(value)
  %828 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  %829 = call float @dx.op.unary.f32(i32 7, float %826)  ; Saturate(value)
  %830 = fmul fast float %827, %827
  %831 = fmul fast float %828, %828
  %832 = fmul fast float %829, %829
  %833 = fsub fast float %830, %712
  %834 = fsub fast float %831, %713
  %835 = fsub fast float %832, %714
  %836 = fmul fast float %833, %737
  %837 = fmul fast float %834, %737
  %838 = fmul fast float %835, %737
  %839 = fadd fast float %836, %712
  %840 = fadd fast float %837, %713
  %841 = fadd fast float %838, %714
  %842 = fadd fast float %759, %723
  %843 = fsub fast float %842, %776
  %844 = call float @dx.op.unary.f32(i32 7, float %843)  ; Saturate(value)
  %845 = fsub fast float %844, %723
  %846 = fmul fast float %845, %737
  %847 = fadd fast float %846, %723
  br label %901

; <label>:848                                     ; preds = %736
  %849 = and i32 %739, 134217728
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %885, label %851

; <label>:851                                     ; preds = %848
  %852 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %853 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %854 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %855 = fadd fast float %852, -5.000000e-01
  %856 = fadd fast float %853, -5.000000e-01
  %857 = fadd fast float %854, -5.000000e-01
  %858 = fmul fast float %855, %737
  %859 = fmul fast float %856, %737
  %860 = fmul fast float %857, %737
  %861 = fadd fast float %858, 5.000000e-01
  %862 = fadd fast float %859, 5.000000e-01
  %863 = fadd fast float %860, 5.000000e-01
  %864 = call float @dx.op.unary.f32(i32 24, float %712)  ; Sqrt(value)
  %865 = call float @dx.op.unary.f32(i32 24, float %713)  ; Sqrt(value)
  %866 = call float @dx.op.unary.f32(i32 24, float %714)  ; Sqrt(value)
  %867 = fmul fast float %861, 2.000000e+00
  %868 = fsub fast float 1.000000e+00, %867
  %869 = fmul fast float %868, %864
  %870 = fadd fast float %869, %867
  %871 = fmul fast float %870, %864
  %872 = fmul fast float %862, 2.000000e+00
  %873 = fsub fast float 1.000000e+00, %872
  %874 = fmul fast float %873, %865
  %875 = fadd fast float %874, %872
  %876 = fmul fast float %875, %865
  %877 = fmul fast float %863, 2.000000e+00
  %878 = fsub fast float 1.000000e+00, %877
  %879 = fmul fast float %878, %866
  %880 = fadd fast float %879, %877
  %881 = fmul fast float %880, %866
  %882 = fmul fast float %871, %871
  %883 = fmul fast float %876, %876
  %884 = fmul fast float %881, %881
  br label %901

; <label>:885                                     ; preds = %848
  %886 = fmul fast float %304, %304
  %887 = fmul fast float %308, %308
  %888 = fmul fast float %312, %312
  %889 = fadd fast float %886, -1.000000e+00
  %890 = fadd fast float %887, -1.000000e+00
  %891 = fadd fast float %888, -1.000000e+00
  %892 = fmul fast float %737, %889
  %893 = fmul fast float %737, %890
  %894 = fmul fast float %737, %891
  %895 = fadd fast float %892, 1.000000e+00
  %896 = fadd fast float %893, 1.000000e+00
  %897 = fadd fast float %894, 1.000000e+00
  %898 = fmul fast float %895, %712
  %899 = fmul fast float %896, %713
  %900 = fmul fast float %897, %714
  br label %901

; <label>:901                                     ; preds = %885, %851, %742, %697
  %902 = phi float [ %847, %742 ], [ %723, %851 ], [ %723, %885 ], [ 0x3FA23C0BE0000000, %697 ]
  %903 = phi float [ %839, %742 ], [ %882, %851 ], [ %898, %885 ], [ 1.000000e+00, %697 ]
  %904 = phi float [ %840, %742 ], [ %883, %851 ], [ %899, %885 ], [ 1.000000e+00, %697 ]
  %905 = phi float [ %841, %742 ], [ %884, %851 ], [ %900, %885 ], [ 1.000000e+00, %697 ]
  %906 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.i32 %906, 1
  %908 = and i32 %907, 1
  %909 = icmp ne i32 %908, 0
  %910 = add i32 %61, 356
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = and i32 %912, 32
  %914 = icmp ne i32 %913, 0
  %915 = and i1 %909, %914
  %916 = select i1 %915, float 1.000000e+00, float %903
  %917 = select i1 %915, float 0x3FD3333340000000, float %904
  %918 = select i1 %915, float 0x3FD3333340000000, float %905
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = and i32 %920, 32
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %995, label %923

; <label>:923                                     ; preds = %901
  %924 = add i32 %61, 92
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = add i32 %61, 392
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = add i32 %929, 0
  %931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %930, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %932 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %931, %dx.types.Handle %112, float %625, float %626, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %933 = extractvalue %dx.types.ResRet.f32 %932, 0
  %934 = extractvalue %dx.types.ResRet.f32 %932, 1
  %935 = extractvalue %dx.types.ResRet.f32 %932, 2
  %936 = extractvalue %dx.types.ResRet.f32 %932, 3
  %937 = and i32 %926, 255
  %938 = uitofp i32 %937 to float
  %939 = lshr i32 %926, 8
  %940 = and i32 %939, 255
  %941 = uitofp i32 %940 to float
  %942 = lshr i32 %926, 16
  %943 = and i32 %942, 255
  %944 = uitofp i32 %943 to float
  %945 = fmul fast float %944, 0x3F70101000000000
  %946 = fmul fast float %933, %938
  %947 = fadd fast float %946, %941
  %948 = fmul fast float %947, 0x3F70101000000000
  %949 = fadd fast float %934, -5.000000e-01
  %950 = fadd fast float %936, -5.000000e-01
  %951 = fmul fast float %949, %945
  %952 = fmul fast float %950, %945
  %953 = fadd fast float %951, 5.000000e-01
  %954 = fadd fast float %952, 5.000000e-01
  %955 = fmul fast float %953, 2.000000e+00
  %956 = fadd fast float %955, -1.000000e+00
  %957 = fmul fast float %954, 2.000000e+00
  %958 = fadd fast float %957, -1.000000e+00
  %959 = fadd fast float %956, %958
  %960 = fmul fast float %959, 5.000000e-01
  %961 = fsub fast float %956, %958
  %962 = fmul fast float %961, 5.000000e-01
  %963 = call float @dx.op.unary.f32(i32 6, float %960)  ; FAbs(value)
  %964 = fsub fast float 1.000000e+00, %963
  %965 = call float @dx.op.unary.f32(i32 6, float %962)  ; FAbs(value)
  %966 = fsub fast float %964, %965
  %967 = call float @dx.op.dot3.f32(i32 55, float %960, float %962, float %966, float %960, float %962, float %966)  ; Dot3(ax,ay,az,bx,by,bz)
  %968 = call float @dx.op.unary.f32(i32 25, float %967)  ; Rsqrt(value)
  %969 = fmul fast float %960, %968
  %970 = fmul fast float %962, %968
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 67108864
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %991, label %975

; <label>:975                                     ; preds = %923
  %976 = add i32 %61, 280
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = and i32 %978, 65535
  %980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %979)  ; LegacyF16ToF32(value)
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = and i32 %982, 65535
  %984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %983)  ; LegacyF16ToF32(value)
  %985 = lshr i32 %978, 16
  %986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %985)  ; LegacyF16ToF32(value)
  %987 = fsub fast float %948, %986
  %988 = fmul fast float %987, %980
  %989 = fadd fast float %988, %984
  %990 = call float @dx.op.unary.f32(i32 7, float %989)  ; Saturate(value)
  br label %991

; <label>:991                                     ; preds = %975, %923
  %992 = phi float [ %990, %975 ], [ %948, %923 ]
  %993 = call float @dx.op.dot2.f32(i32 54, float %969, float %970, float %529, float %530)  ; Dot2(ax,ay,bx,by)
  %994 = call float @dx.op.dot2.f32(i32 54, float %969, float %970, float %531, float %532)  ; Dot2(ax,ay,bx,by)
  br label %995

; <label>:995                                     ; preds = %991, %901
  %996 = phi float [ %992, %991 ], [ 0x3FD6666660000000, %901 ]
  %997 = phi float [ %993, %991 ], [ 0.000000e+00, %901 ]
  %998 = phi float [ %994, %991 ], [ 0.000000e+00, %901 ]
  %999 = phi float [ %935, %991 ], [ 1.000000e+00, %901 ]
  %1000 = add i32 %61, 160
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = lshr i32 %1002, 22
  %1004 = shl nuw nsw i32 %1003, 5
  %1005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1004)  ; LegacyF16ToF32(value)
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = and i32 %1007, 64
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1043, label %1010

; <label>:1010                                    ; preds = %995
  %1011 = add i32 %61, 408
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = add i32 %1013, 0
  %1015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1014, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = and i32 %1017, 131072
  %1019 = icmp eq i32 %1018, 0
  %1020 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1015, %dx.types.Handle %112, float %625, float %626, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.ResRet.f32 %1020, 2
  %1024 = fmul fast float %1021, %292
  %1025 = fmul fast float %1022, %295
  %1026 = fmul fast float %1023, %298
  br i1 %1019, label %1033, label %1027

; <label>:1027                                    ; preds = %1010
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 0
  %1030 = fmul fast float %1029, %1024
  %1031 = fmul fast float %1029, %1025
  %1032 = fmul fast float %1029, %1026
  br label %1033

; <label>:1033                                    ; preds = %1027, %1010
  %1034 = phi float [ %1030, %1027 ], [ %1024, %1010 ]
  %1035 = phi float [ %1031, %1027 ], [ %1025, %1010 ]
  %1036 = phi float [ %1032, %1027 ], [ %1026, %1010 ]
  %1037 = fmul fast float %1034, %1005
  %1038 = select i1 %275, float %1037, float %1034
  %1039 = call float @dx.op.dot3.f32(i32 55, float %1038, float %1035, float %1036, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1040 = select i1 %275, float 0.000000e+00, float %1034
  %1041 = select i1 %275, float %1039, float %1035
  %1042 = select i1 %275, float 0.000000e+00, float %1036
  br label %1043

; <label>:1043                                    ; preds = %1033, %995
  %1044 = phi float [ %1040, %1033 ], [ 0.000000e+00, %995 ]
  %1045 = phi float [ %1041, %1033 ], [ 0.000000e+00, %995 ]
  %1046 = phi float [ %1042, %1033 ], [ 0.000000e+00, %995 ]
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = and i32 %1048, 1024
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1081, label %1051

; <label>:1051                                    ; preds = %1043
  %1052 = add i32 %61, 152
  %1053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.i32 %1053, 0
  %1055 = and i32 %1054, 255
  %1056 = uitofp i32 %1055 to float
  %1057 = fmul fast float %1056, 0x3F70101020000000
  %1058 = lshr i32 %1054, 8
  %1059 = and i32 %1058, 255
  %1060 = uitofp i32 %1059 to float
  %1061 = fmul fast float %1060, 0x3F70101020000000
  %1062 = lshr i32 %1054, 16
  %1063 = and i32 %1062, 255
  %1064 = uitofp i32 %1063 to float
  %1065 = fmul fast float %1064, 0x3F70101020000000
  %1066 = fmul fast float %1057, %1057
  %1067 = fmul fast float %1061, %1061
  %1068 = fmul fast float %1065, %1065
  %1069 = add i32 %61, 476
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = add i32 %1071, 0
  %1073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1072, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1074 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1073, %dx.types.Handle %113, float %625, float %626, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1076 = extractvalue %dx.types.ResRet.f32 %1074, 1
  %1077 = extractvalue %dx.types.ResRet.f32 %1074, 2
  %1078 = fmul fast float %1066, %1075
  %1079 = fmul fast float %1067, %1076
  %1080 = fmul fast float %1068, %1077
  br label %1081

; <label>:1081                                    ; preds = %1051, %1043
  %1082 = phi float [ %1078, %1051 ], [ 0.000000e+00, %1043 ]
  %1083 = phi float [ %1079, %1051 ], [ 0.000000e+00, %1043 ]
  %1084 = phi float [ %1080, %1051 ], [ 0.000000e+00, %1043 ]
  %1085 = fcmp fast ogt float %1082, 0.000000e+00
  %1086 = fcmp fast ogt float %1083, 0.000000e+00
  %1087 = fcmp fast ogt float %1084, 0.000000e+00
  %1088 = call float @dx.op.unary.f32(i32 23, float %1082)  ; Log(value)
  %1089 = call float @dx.op.unary.f32(i32 23, float %1083)  ; Log(value)
  %1090 = call float @dx.op.unary.f32(i32 23, float %1084)  ; Log(value)
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = lshr i32 %1092, 7
  %1094 = and i32 %1093, 32752
  %1095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1094)  ; LegacyF16ToF32(value)
  %1096 = fmul fast float %1088, 0xBFE62E4300000000
  %1097 = fmul fast float %1096, %1095
  %1098 = fmul fast float %1089, 0xBFE62E4300000000
  %1099 = fmul fast float %1098, %1095
  %1100 = fmul fast float %1090, 0xBFE62E4300000000
  %1101 = fmul fast float %1100, %1095
  %1102 = select i1 %1085, float %1097, float 1.270000e+02
  %1103 = select i1 %1086, float %1099, float 1.270000e+02
  %1104 = select i1 %1087, float %1101, float 1.270000e+02
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = and i32 %1106, 10240
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1129, label %1109

; <label>:1109                                    ; preds = %1081
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 2048
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1129, label %1114

; <label>:1114                                    ; preds = %1109
  %1115 = add i32 %61, 492
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = add i32 %1117, 0
  %1119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1120 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1119, %dx.types.Handle %113, float %625, float %626, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 3
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = shl i32 %1123, 4
  %1125 = and i32 %1124, 32752
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = fmul fast float %1126, %1121
  %1128 = call float @dx.op.binary.f32(i32 35, float %1127, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1129

; <label>:1129                                    ; preds = %1114, %1109, %1081
  %1130 = phi float [ %1128, %1114 ], [ 0x3F70101020000000, %1109 ], [ 0x3F70101020000000, %1081 ]
  %1131 = add i32 %61, 96
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = and i32 %1133, 255
  %1135 = uitofp i32 %1134 to float
  %1136 = lshr i32 %1133, 8
  %1137 = and i32 %1136, 255
  %1138 = uitofp i32 %1137 to float
  %1139 = call float @dx.op.dot3.f32(i32 55, float %916, float %917, float %918, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1140 = fmul fast float %1138, %1139
  %1141 = fadd fast float %1140, %1135
  %1142 = fmul fast float %1141, 0x3F70101020000000
  %1143 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  br label %1144

; <label>:1144                                    ; preds = %1129, %511
  %1145 = phi float [ 0.000000e+00, %511 ], [ %997, %1129 ]
  %1146 = phi float [ 0.000000e+00, %511 ], [ %998, %1129 ]
  %1147 = phi float [ 0.000000e+00, %511 ], [ %916, %1129 ]
  %1148 = phi float [ 0.000000e+00, %511 ], [ %917, %1129 ]
  %1149 = phi float [ 0.000000e+00, %511 ], [ %918, %1129 ]
  %1150 = phi float [ 0.000000e+00, %511 ], [ %1044, %1129 ]
  %1151 = phi float [ 0.000000e+00, %511 ], [ %1045, %1129 ]
  %1152 = phi float [ 0.000000e+00, %511 ], [ %1046, %1129 ]
  %1153 = phi float [ 0.000000e+00, %511 ], [ %1102, %1129 ]
  %1154 = phi float [ 0.000000e+00, %511 ], [ %1103, %1129 ]
  %1155 = phi float [ 0.000000e+00, %511 ], [ %1104, %1129 ]
  %1156 = phi float [ 0.000000e+00, %511 ], [ %902, %1129 ]
  %1157 = phi float [ 0.000000e+00, %511 ], [ %698, %1129 ]
  %1158 = phi float [ 0.000000e+00, %511 ], [ %996, %1129 ]
  %1159 = phi float [ 0.000000e+00, %511 ], [ %999, %1129 ]
  %1160 = phi float [ 0.000000e+00, %511 ], [ %1130, %1129 ]
  %1161 = phi float [ 0.000000e+00, %511 ], [ %1143, %1129 ]
  br i1 %459, label %2033, label %1162

; <label>:1162                                    ; preds = %1144
  %1163 = icmp ult i32 %517, 2
  %1164 = add i32 %61, 40
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = add i32 %61, 44
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = or i32 %1169, %1166
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %2033, label %1172

; <label>:1172                                    ; preds = %1162
  %1173 = and i32 %1166, 262144
  %1174 = icmp ne i32 %1173, 0
  %1175 = select i1 %1174, float %67, float 1.000000e+00
  %1176 = select i1 %1174, float %68, float 0.000000e+00
  %1177 = select i1 %1174, float %69, float 0.000000e+00
  %1178 = select i1 %1174, float %70, float 1.000000e+00
  %1179 = select i1 %1174, float %71, float %94
  %1180 = select i1 %1174, float %72, float %95
  %1181 = add i32 %61, 300
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = lshr i32 %1183, 16
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1184)  ; LegacyF16ToF32(value)
  %1186 = fmul fast float %1185, 0x3F50624DE0000000
  %1187 = add i32 %61, 104
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = lshr i32 %1189, 16
  %1191 = and i32 %1190, 255
  %1192 = lshr i32 %1189, 24
  %1193 = add i32 %61, 308
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = and i32 %1195, 65535
  %1197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1196)  ; LegacyF16ToF32(value)
  %1198 = lshr i32 %1195, 16
  %1199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1198)  ; LegacyF16ToF32(value)
  %1200 = add i32 %61, 48
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = lshr i32 %1202, 22
  %1204 = shl nuw nsw i32 %1203, 5
  %1205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1204)  ; LegacyF16ToF32(value)
  %1206 = shl i32 %1202, 4
  %1207 = and i32 %1206, 32752
  %1208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1207)  ; LegacyF16ToF32(value)
  %1209 = lshr i32 %1202, 7
  %1210 = and i32 %1209, 32752
  %1211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1210)  ; LegacyF16ToF32(value)
  %1212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1213 = extractvalue %dx.types.CBufRet.f32 %1212, 3
  %1214 = fmul fast float %1213, 1.000000e+03
  %1215 = fmul fast float %369, %1214
  %1216 = call float @dx.op.unary.f32(i32 22, float %1215)  ; Frc(value)
  %1217 = fadd fast float %1216, %359
  %1218 = fmul fast float %370, %1214
  %1219 = call float @dx.op.unary.f32(i32 22, float %1218)  ; Frc(value)
  %1220 = fadd fast float %1219, %361
  %1221 = fmul fast float %1186, %1214
  %1222 = call float @dx.op.unary.f32(i32 22, float %1221)  ; Frc(value)
  %1223 = fmul fast float %1222, 0x401921FB60000000
  %1224 = fadd fast float %1223, %1205
  %1225 = call float @dx.op.unary.f32(i32 13, float %1224)  ; Sin(value)
  %1226 = call float @dx.op.unary.f32(i32 12, float %1224)  ; Cos(value)
  %1227 = fsub fast float -0.000000e+00, %1225
  %1228 = fadd fast float %1179, -5.000000e-01
  %1229 = fadd fast float %1180, -5.000000e-01
  %1230 = fmul fast float %1197, %1228
  %1231 = fmul fast float %1199, %1229
  %1232 = fadd fast float %1230, 5.000000e-01
  %1233 = fadd fast float %1231, 5.000000e-01
  %1234 = fmul fast float %1208, %1232
  %1235 = fmul fast float %1211, %1233
  %1236 = fmul fast float %1226, %1234
  %1237 = call float @dx.op.tertiary.f32(i32 46, float %1227, float %1235, float %1236)  ; FMad(a,b,c)
  %1238 = fmul fast float %1225, %1234
  %1239 = call float @dx.op.tertiary.f32(i32 46, float %1226, float %1235, float %1238)  ; FMad(a,b,c)
  %1240 = fadd fast float %1217, %1237
  %1241 = fadd fast float %1220, %1239
  %1242 = icmp ugt i32 %1191, 1
  %1243 = icmp ugt i32 %1189, 33554431
  %1244 = or i1 %1243, %1242
  br i1 %1244, label %1245, label %1270

; <label>:1245                                    ; preds = %1172
  %1246 = add i32 %61, 244
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1246, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = lshr i32 %1248, 16
  %1250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1249)  ; LegacyF16ToF32(value)
  %1251 = fmul fast float %1213, %1250
  %1252 = call float @dx.op.unary.f32(i32 22, float %1251)  ; Frc(value)
  %1253 = mul nuw nsw i32 %1191, %1192
  %1254 = uitofp i32 %1253 to float
  %1255 = fmul fast float %1252, %1254
  %1256 = call float @dx.op.unary.f32(i32 27, float %1255)  ; Round_ni(value)
  %1257 = fptoui float %1256 to i32
  %1258 = urem i32 %1257, %1191
  %1259 = udiv i32 %1257, %1192
  %1260 = call float @dx.op.unary.f32(i32 22, float %1240)  ; Frc(value)
  %1261 = call float @dx.op.unary.f32(i32 22, float %1241)  ; Frc(value)
  %1262 = uitofp i32 %1258 to float
  %1263 = uitofp i32 %1259 to float
  %1264 = fadd fast float %1260, %1262
  %1265 = fadd fast float %1261, %1263
  %1266 = uitofp i32 %1191 to float
  %1267 = uitofp i32 %1192 to float
  %1268 = fdiv fast float %1264, %1266
  %1269 = fdiv fast float %1265, %1267
  br label %1270

; <label>:1270                                    ; preds = %1245, %1172
  %1271 = phi float [ %1268, %1245 ], [ %1240, %1172 ]
  %1272 = phi float [ %1269, %1245 ], [ %1241, %1172 ]
  %1273 = and i32 %1166, 256
  %1274 = icmp eq i32 %1273, 0
  br i1 %1274, label %1321, label %1275

; <label>:1275                                    ; preds = %1270
  %1276 = add i32 %61, 444
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = add i32 %1278, 0
  %1280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1279, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1281 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1280, %dx.types.Handle %113, float %1271, float %1272, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1282 = extractvalue %dx.types.ResRet.f32 %1281, 0
  %1283 = add i32 %61, 116
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = shl i32 %1285, 4
  %1287 = and i32 %1286, 32752
  %1288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1287)  ; LegacyF16ToF32(value)
  %1289 = lshr i32 %1285, 7
  %1290 = and i32 %1289, 32752
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = fsub fast float 1.000000e+00, %514
  %1293 = call float @dx.op.binary.f32(i32 35, float %1292, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1294 = bitcast float %514 to i32
  %1295 = sitofp i32 %1294 to float
  %1296 = fadd fast float %1295, 0xC1CFBF8940000000
  %1297 = fmul fast float %1291, %1296
  %1298 = fadd fast float %1297, 0x41CFBF8940000000
  %1299 = fptosi float %1298 to i32
  %1300 = bitcast i32 %1299 to float
  %1301 = bitcast float %1293 to i32
  %1302 = sitofp i32 %1301 to float
  %1303 = fadd fast float %1302, 0xC1CFBF8940000000
  %1304 = fmul fast float %1303, %1291
  %1305 = fadd fast float %1304, 0x41CFBF8940000000
  %1306 = fptosi float %1305 to i32
  %1307 = bitcast i32 %1306 to float
  %1308 = fmul fast float %1300, %1288
  %1309 = fmul fast float %1307, %1288
  %1310 = fsub fast float %1293, %1308
  %1311 = fadd fast float %1309, %1293
  %1312 = call float @dx.op.unary.f32(i32 7, float %1310)  ; Saturate(value)
  %1313 = call float @dx.op.unary.f32(i32 7, float %1311)  ; Saturate(value)
  %1314 = fsub fast float %1282, %1312
  %1315 = fsub fast float %1313, %1312
  %1316 = bitcast float %1315 to i32
  %1317 = sub nsw i32 2129859010, %1316
  %1318 = bitcast i32 %1317 to float
  %1319 = fmul fast float %1318, %1314
  %1320 = call float @dx.op.unary.f32(i32 7, float %1319)  ; Saturate(value)
  br label %1321

; <label>:1321                                    ; preds = %1275, %1270
  %1322 = phi float [ %1320, %1275 ], [ %514, %1270 ]
  %1323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1324 = extractvalue %dx.types.ResRet.i32 %1323, 0
  %1325 = and i32 %1324, 128
  %1326 = icmp eq i32 %1325, 0
  br i1 %1326, label %1343, label %1327

; <label>:1327                                    ; preds = %1321
  %1328 = add i32 %61, 428
  %1329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1328, i32 undef)  ; BufferLoad(srv,index,wot)
  %1330 = extractvalue %dx.types.ResRet.i32 %1329, 0
  %1331 = add i32 %1330, 0
  %1332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1331, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1333 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1332, %dx.types.Handle %113, float %1271, float %1272, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1334 = extractvalue %dx.types.ResRet.f32 %1333, 0
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = and i32 %1336, 524288
  %1338 = icmp ne i32 %1337, 0
  %1339 = fcmp fast ogt float %1334, 0x3FE0101020000000
  %1340 = select i1 %1339, float 1.000000e+00, float 0.000000e+00
  %1341 = select i1 %1338, float %1340, float %1334
  %1342 = fmul fast float %1341, %1322
  br label %1343

; <label>:1343                                    ; preds = %1327, %1321
  %1344 = phi float [ %1342, %1327 ], [ %1322, %1321 ]
  %1345 = fcmp fast ult float %1344, 0x3F70101020000000
  br i1 %1345, label %2033, label %1346

; <label>:1346                                    ; preds = %1343
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = and i32 %1348, 16
  %1350 = icmp eq i32 %1349, 0
  br i1 %1350, label %1549, label %1351

; <label>:1351                                    ; preds = %1346
  %1352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1353 = extractvalue %dx.types.ResRet.i32 %1352, 0
  %1354 = add i32 %61, 380
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = add i32 %1356, 0
  %1358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1357, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1359 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1358, %dx.types.Handle %112, float %1271, float %1272, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1360 = extractvalue %dx.types.ResRet.f32 %1359, 0
  %1361 = extractvalue %dx.types.ResRet.f32 %1359, 1
  %1362 = extractvalue %dx.types.ResRet.f32 %1359, 2
  %1363 = extractvalue %dx.types.ResRet.f32 %1359, 3
  %1364 = and i32 %1353, 255
  %1365 = uitofp i32 %1364 to float
  %1366 = lshr i32 %1353, 8
  %1367 = and i32 %1366, 255
  %1368 = uitofp i32 %1367 to float
  %1369 = fmul fast float %1363, %1365
  %1370 = fadd fast float %1369, %1368
  %1371 = fmul fast float %1370, 0x3F70101000000000
  %1372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.i32 %1372, 0
  %1374 = and i32 %1373, 512
  %1375 = icmp eq i32 %1374, 0
  br i1 %1375, label %1384, label %1376

; <label>:1376                                    ; preds = %1351
  %1377 = add i32 %61, 464
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = add i32 %1379, 0
  %1381 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1380, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1382 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1381, %dx.types.Handle %113, float %1271, float %1272, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 0
  br label %1384

; <label>:1384                                    ; preds = %1376, %1351
  %1385 = phi float [ %1383, %1376 ], [ 1.000000e+00, %1351 ]
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = and i32 %1387, 33554432
  %1389 = icmp eq i32 %1388, 0
  br i1 %1389, label %1496, label %1390

; <label>:1390                                    ; preds = %1384
  %1391 = add i32 %61, 240
  %1392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.i32 %1392, 0
  %1394 = and i32 %1393, 65535
  %1395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1394)  ; LegacyF16ToF32(value)
  %1396 = lshr i32 %1393, 16
  %1397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1396)  ; LegacyF16ToF32(value)
  %1398 = add i32 %61, 244
  %1399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1398, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.i32 %1399, 0
  %1401 = and i32 %1400, 65535
  %1402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1401)  ; LegacyF16ToF32(value)
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = lshr i32 %1404, 24
  %1406 = uitofp i32 %1405 to float
  %1407 = fmul fast float %1406, 0x3F70101020000000
  %1408 = and i32 %1404, 255
  %1409 = uitofp i32 %1408 to float
  %1410 = fmul fast float %1409, 0x3F70101020000000
  %1411 = lshr i32 %1404, 8
  %1412 = and i32 %1411, 255
  %1413 = uitofp i32 %1412 to float
  %1414 = fmul fast float %1413, 0x3F70101020000000
  %1415 = lshr i32 %1404, 16
  %1416 = and i32 %1415, 255
  %1417 = uitofp i32 %1416 to float
  %1418 = fmul fast float %1417, 0x3F70101020000000
  %1419 = add i32 %61, 236
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = lshr i32 %1421, 24
  %1423 = uitofp i32 %1422 to float
  %1424 = fmul fast float %1423, 0x3F70101020000000
  %1425 = and i32 %1421, 255
  %1426 = uitofp i32 %1425 to float
  %1427 = fmul fast float %1426, 0x3F70101020000000
  %1428 = lshr i32 %1421, 8
  %1429 = and i32 %1428, 255
  %1430 = uitofp i32 %1429 to float
  %1431 = fmul fast float %1430, 0x3F70101020000000
  %1432 = lshr i32 %1421, 16
  %1433 = and i32 %1432, 255
  %1434 = uitofp i32 %1433 to float
  %1435 = fmul fast float %1434, 0x3F70101020000000
  %1436 = bitcast float %1360 to i32
  %1437 = ashr i32 %1436, 1
  %1438 = sub nsw i32 1597463174, %1437
  %1439 = bitcast i32 %1438 to float
  %1440 = fmul fast float %1360, 5.000000e-01
  %1441 = fmul fast float %1439, %1439
  %1442 = fmul fast float %1441, %1440
  %1443 = fsub fast float 1.500000e+00, %1442
  %1444 = fmul fast float %1439, %1360
  %1445 = fmul fast float %1444, %1443
  %1446 = bitcast float %1361 to i32
  %1447 = ashr i32 %1446, 1
  %1448 = sub nsw i32 1597463174, %1447
  %1449 = bitcast i32 %1448 to float
  %1450 = fmul fast float %1361, 5.000000e-01
  %1451 = fmul fast float %1449, %1449
  %1452 = fmul fast float %1451, %1450
  %1453 = fsub fast float 1.500000e+00, %1452
  %1454 = fmul fast float %1449, %1361
  %1455 = fmul fast float %1454, %1453
  %1456 = bitcast float %1362 to i32
  %1457 = ashr i32 %1456, 1
  %1458 = sub nsw i32 1597463174, %1457
  %1459 = bitcast i32 %1458 to float
  %1460 = fmul fast float %1362, 5.000000e-01
  %1461 = fmul fast float %1459, %1459
  %1462 = fmul fast float %1461, %1460
  %1463 = fsub fast float 1.500000e+00, %1462
  %1464 = fmul fast float %1459, %1362
  %1465 = fmul fast float %1464, %1463
  %1466 = fsub fast float %1445, %1427
  %1467 = fsub fast float %1455, %1431
  %1468 = fsub fast float %1465, %1435
  %1469 = fmul fast float %1466, %1395
  %1470 = fmul fast float %1467, %1397
  %1471 = fmul fast float %1468, %1402
  %1472 = fadd fast float %1469, %1410
  %1473 = fadd fast float %1470, %1414
  %1474 = fadd fast float %1471, %1418
  %1475 = call float @dx.op.unary.f32(i32 7, float %1472)  ; Saturate(value)
  %1476 = call float @dx.op.unary.f32(i32 7, float %1473)  ; Saturate(value)
  %1477 = call float @dx.op.unary.f32(i32 7, float %1474)  ; Saturate(value)
  %1478 = fmul fast float %1475, %1475
  %1479 = fmul fast float %1476, %1476
  %1480 = fmul fast float %1477, %1477
  %1481 = fsub fast float %1478, %1360
  %1482 = fsub fast float %1479, %1361
  %1483 = fsub fast float %1480, %1362
  %1484 = fmul fast float %1481, %1385
  %1485 = fmul fast float %1482, %1385
  %1486 = fmul fast float %1483, %1385
  %1487 = fadd fast float %1484, %1360
  %1488 = fadd fast float %1485, %1361
  %1489 = fadd fast float %1486, %1362
  %1490 = fadd fast float %1407, %1371
  %1491 = fsub fast float %1490, %1424
  %1492 = call float @dx.op.unary.f32(i32 7, float %1491)  ; Saturate(value)
  %1493 = fsub fast float %1492, %1371
  %1494 = fmul fast float %1493, %1385
  %1495 = fadd fast float %1494, %1371
  br label %1549

; <label>:1496                                    ; preds = %1384
  %1497 = and i32 %1387, 134217728
  %1498 = icmp eq i32 %1497, 0
  br i1 %1498, label %1533, label %1499

; <label>:1499                                    ; preds = %1496
  %1500 = call float @dx.op.unary.f32(i32 24, float %346)  ; Sqrt(value)
  %1501 = call float @dx.op.unary.f32(i32 24, float %350)  ; Sqrt(value)
  %1502 = call float @dx.op.unary.f32(i32 24, float %354)  ; Sqrt(value)
  %1503 = fadd fast float %1500, -5.000000e-01
  %1504 = fadd fast float %1501, -5.000000e-01
  %1505 = fadd fast float %1502, -5.000000e-01
  %1506 = fmul fast float %1503, %1385
  %1507 = fmul fast float %1504, %1385
  %1508 = fmul fast float %1505, %1385
  %1509 = fadd fast float %1506, 5.000000e-01
  %1510 = fadd fast float %1507, 5.000000e-01
  %1511 = fadd fast float %1508, 5.000000e-01
  %1512 = call float @dx.op.unary.f32(i32 24, float %1360)  ; Sqrt(value)
  %1513 = call float @dx.op.unary.f32(i32 24, float %1361)  ; Sqrt(value)
  %1514 = call float @dx.op.unary.f32(i32 24, float %1362)  ; Sqrt(value)
  %1515 = fmul fast float %1509, 2.000000e+00
  %1516 = fsub fast float 1.000000e+00, %1515
  %1517 = fmul fast float %1516, %1512
  %1518 = fadd fast float %1517, %1515
  %1519 = fmul fast float %1518, %1512
  %1520 = fmul fast float %1510, 2.000000e+00
  %1521 = fsub fast float 1.000000e+00, %1520
  %1522 = fmul fast float %1521, %1513
  %1523 = fadd fast float %1522, %1520
  %1524 = fmul fast float %1523, %1513
  %1525 = fmul fast float %1511, 2.000000e+00
  %1526 = fsub fast float 1.000000e+00, %1525
  %1527 = fmul fast float %1526, %1514
  %1528 = fadd fast float %1527, %1525
  %1529 = fmul fast float %1528, %1514
  %1530 = fmul fast float %1519, %1519
  %1531 = fmul fast float %1524, %1524
  %1532 = fmul fast float %1529, %1529
  br label %1549

; <label>:1533                                    ; preds = %1496
  %1534 = fmul fast float %346, %346
  %1535 = fmul fast float %350, %350
  %1536 = fmul fast float %354, %354
  %1537 = fadd fast float %1534, -1.000000e+00
  %1538 = fadd fast float %1535, -1.000000e+00
  %1539 = fadd fast float %1536, -1.000000e+00
  %1540 = fmul fast float %1385, %1537
  %1541 = fmul fast float %1385, %1538
  %1542 = fmul fast float %1385, %1539
  %1543 = fadd fast float %1540, 1.000000e+00
  %1544 = fadd fast float %1541, 1.000000e+00
  %1545 = fadd fast float %1542, 1.000000e+00
  %1546 = fmul fast float %1543, %1360
  %1547 = fmul fast float %1544, %1361
  %1548 = fmul fast float %1545, %1362
  br label %1549

; <label>:1549                                    ; preds = %1533, %1499, %1390, %1346
  %1550 = phi float [ %1495, %1390 ], [ %1371, %1499 ], [ %1371, %1533 ], [ 0x3FA23C0BE0000000, %1346 ]
  %1551 = phi float [ %1487, %1390 ], [ %1530, %1499 ], [ %1546, %1533 ], [ 1.000000e+00, %1346 ]
  %1552 = phi float [ %1488, %1390 ], [ %1531, %1499 ], [ %1547, %1533 ], [ 1.000000e+00, %1346 ]
  %1553 = phi float [ %1489, %1390 ], [ %1532, %1499 ], [ %1548, %1533 ], [ 1.000000e+00, %1346 ]
  %1554 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1555 = extractvalue %dx.types.CBufRet.i32 %1554, 1
  %1556 = and i32 %1555, 1
  %1557 = icmp ne i32 %1556, 0
  %1558 = add i32 %61, 356
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1558, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = and i32 %1560, 32
  %1562 = icmp ne i32 %1561, 0
  %1563 = and i1 %1557, %1562
  %1564 = select i1 %1563, float 1.000000e+00, float %1551
  %1565 = select i1 %1563, float 0x3FD3333340000000, float %1552
  %1566 = select i1 %1563, float 0x3FD3333340000000, float %1553
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = and i32 %1568, 32
  %1570 = icmp eq i32 %1569, 0
  br i1 %1570, label %1643, label %1571

; <label>:1571                                    ; preds = %1549
  %1572 = add i32 %61, 108
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1572, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = add i32 %61, 396
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = add i32 %1577, 0
  %1579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1578, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1580 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1579, %dx.types.Handle %112, float %1271, float %1272, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1581 = extractvalue %dx.types.ResRet.f32 %1580, 0
  %1582 = extractvalue %dx.types.ResRet.f32 %1580, 1
  %1583 = extractvalue %dx.types.ResRet.f32 %1580, 2
  %1584 = extractvalue %dx.types.ResRet.f32 %1580, 3
  %1585 = and i32 %1574, 255
  %1586 = uitofp i32 %1585 to float
  %1587 = lshr i32 %1574, 8
  %1588 = and i32 %1587, 255
  %1589 = uitofp i32 %1588 to float
  %1590 = lshr i32 %1574, 16
  %1591 = and i32 %1590, 255
  %1592 = uitofp i32 %1591 to float
  %1593 = fmul fast float %1592, 0x3F70101000000000
  %1594 = fmul fast float %1581, %1586
  %1595 = fadd fast float %1594, %1589
  %1596 = fmul fast float %1595, 0x3F70101000000000
  %1597 = fadd fast float %1582, -5.000000e-01
  %1598 = fadd fast float %1584, -5.000000e-01
  %1599 = fmul fast float %1597, %1593
  %1600 = fmul fast float %1598, %1593
  %1601 = fadd fast float %1599, 5.000000e-01
  %1602 = fadd fast float %1600, 5.000000e-01
  %1603 = fmul fast float %1601, 2.000000e+00
  %1604 = fadd fast float %1603, -1.000000e+00
  %1605 = fmul fast float %1602, 2.000000e+00
  %1606 = fadd fast float %1605, -1.000000e+00
  %1607 = fadd fast float %1604, %1606
  %1608 = fmul fast float %1607, 5.000000e-01
  %1609 = fsub fast float %1604, %1606
  %1610 = fmul fast float %1609, 5.000000e-01
  %1611 = call float @dx.op.unary.f32(i32 6, float %1608)  ; FAbs(value)
  %1612 = fsub fast float 1.000000e+00, %1611
  %1613 = call float @dx.op.unary.f32(i32 6, float %1610)  ; FAbs(value)
  %1614 = fsub fast float %1612, %1613
  %1615 = call float @dx.op.dot3.f32(i32 55, float %1608, float %1610, float %1614, float %1608, float %1610, float %1614)  ; Dot3(ax,ay,az,bx,by,bz)
  %1616 = call float @dx.op.unary.f32(i32 25, float %1615)  ; Rsqrt(value)
  %1617 = fmul fast float %1608, %1616
  %1618 = fmul fast float %1610, %1616
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = and i32 %1620, 67108864
  %1622 = icmp eq i32 %1621, 0
  br i1 %1622, label %1639, label %1623

; <label>:1623                                    ; preds = %1571
  %1624 = add i32 %61, 296
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1624, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = and i32 %1626, 65535
  %1628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1627)  ; LegacyF16ToF32(value)
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = and i32 %1630, 65535
  %1632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1631)  ; LegacyF16ToF32(value)
  %1633 = lshr i32 %1626, 16
  %1634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1633)  ; LegacyF16ToF32(value)
  %1635 = fsub fast float %1596, %1634
  %1636 = fmul fast float %1635, %1628
  %1637 = fadd fast float %1636, %1632
  %1638 = call float @dx.op.unary.f32(i32 7, float %1637)  ; Saturate(value)
  br label %1639

; <label>:1639                                    ; preds = %1623, %1571
  %1640 = phi float [ %1638, %1623 ], [ %1596, %1571 ]
  %1641 = call float @dx.op.dot2.f32(i32 54, float %1617, float %1618, float %1175, float %1176)  ; Dot2(ax,ay,bx,by)
  %1642 = call float @dx.op.dot2.f32(i32 54, float %1617, float %1618, float %1177, float %1178)  ; Dot2(ax,ay,bx,by)
  br label %1643

; <label>:1643                                    ; preds = %1639, %1549
  %1644 = phi float [ %1640, %1639 ], [ 0x3FD6666660000000, %1549 ]
  %1645 = phi float [ %1641, %1639 ], [ 0.000000e+00, %1549 ]
  %1646 = phi float [ %1642, %1639 ], [ 0.000000e+00, %1549 ]
  %1647 = phi float [ %1583, %1639 ], [ 1.000000e+00, %1549 ]
  %1648 = add i32 %61, 176
  %1649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1648, i32 undef)  ; BufferLoad(srv,index,wot)
  %1650 = extractvalue %dx.types.ResRet.i32 %1649, 0
  %1651 = lshr i32 %1650, 22
  %1652 = shl nuw nsw i32 %1651, 5
  %1653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1652)  ; LegacyF16ToF32(value)
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = and i32 %1655, 64
  %1657 = icmp eq i32 %1656, 0
  br i1 %1657, label %1691, label %1658

; <label>:1658                                    ; preds = %1643
  %1659 = add i32 %61, 412
  %1660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1659, i32 undef)  ; BufferLoad(srv,index,wot)
  %1661 = extractvalue %dx.types.ResRet.i32 %1660, 0
  %1662 = add i32 %1661, 0
  %1663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.i32 %1664, 0
  %1666 = and i32 %1665, 131072
  %1667 = icmp eq i32 %1666, 0
  %1668 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1663, %dx.types.Handle %112, float %1271, float %1272, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1669 = extractvalue %dx.types.ResRet.f32 %1668, 0
  %1670 = extractvalue %dx.types.ResRet.f32 %1668, 1
  %1671 = extractvalue %dx.types.ResRet.f32 %1668, 2
  %1672 = fmul fast float %1669, %334
  %1673 = fmul fast float %1670, %337
  %1674 = fmul fast float %1671, %340
  br i1 %1667, label %1681, label %1675

; <label>:1675                                    ; preds = %1658
  %1676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.f32 %1676, 0
  %1678 = fmul fast float %1677, %1672
  %1679 = fmul fast float %1677, %1673
  %1680 = fmul fast float %1677, %1674
  br label %1681

; <label>:1681                                    ; preds = %1675, %1658
  %1682 = phi float [ %1678, %1675 ], [ %1672, %1658 ]
  %1683 = phi float [ %1679, %1675 ], [ %1673, %1658 ]
  %1684 = phi float [ %1680, %1675 ], [ %1674, %1658 ]
  %1685 = fmul fast float %1682, %1653
  %1686 = select i1 %275, float %1685, float %1682
  %1687 = call float @dx.op.dot3.f32(i32 55, float %1686, float %1683, float %1684, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1688 = select i1 %275, float 0.000000e+00, float %1682
  %1689 = select i1 %275, float %1687, float %1683
  %1690 = select i1 %275, float 0.000000e+00, float %1684
  br label %1691

; <label>:1691                                    ; preds = %1681, %1643
  %1692 = phi float [ %1688, %1681 ], [ 0.000000e+00, %1643 ]
  %1693 = phi float [ %1689, %1681 ], [ 0.000000e+00, %1643 ]
  %1694 = phi float [ %1690, %1681 ], [ 0.000000e+00, %1643 ]
  %1695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1696 = extractvalue %dx.types.ResRet.i32 %1695, 0
  %1697 = and i32 %1696, 1024
  %1698 = icmp eq i32 %1697, 0
  br i1 %1698, label %1729, label %1699

; <label>:1699                                    ; preds = %1691
  %1700 = add i32 %61, 168
  %1701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1702 = extractvalue %dx.types.ResRet.i32 %1701, 0
  %1703 = and i32 %1702, 255
  %1704 = uitofp i32 %1703 to float
  %1705 = fmul fast float %1704, 0x3F70101020000000
  %1706 = lshr i32 %1702, 8
  %1707 = and i32 %1706, 255
  %1708 = uitofp i32 %1707 to float
  %1709 = fmul fast float %1708, 0x3F70101020000000
  %1710 = lshr i32 %1702, 16
  %1711 = and i32 %1710, 255
  %1712 = uitofp i32 %1711 to float
  %1713 = fmul fast float %1712, 0x3F70101020000000
  %1714 = fmul fast float %1705, %1705
  %1715 = fmul fast float %1709, %1709
  %1716 = fmul fast float %1713, %1713
  %1717 = add i32 %61, 480
  %1718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1717, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.i32 %1718, 0
  %1720 = add i32 %1719, 0
  %1721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1720, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1722 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1721, %dx.types.Handle %113, float %1271, float %1272, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1723 = extractvalue %dx.types.ResRet.f32 %1722, 0
  %1724 = extractvalue %dx.types.ResRet.f32 %1722, 1
  %1725 = extractvalue %dx.types.ResRet.f32 %1722, 2
  %1726 = fmul fast float %1714, %1723
  %1727 = fmul fast float %1715, %1724
  %1728 = fmul fast float %1716, %1725
  br label %1729

; <label>:1729                                    ; preds = %1699, %1691
  %1730 = phi float [ %1726, %1699 ], [ 0.000000e+00, %1691 ]
  %1731 = phi float [ %1727, %1699 ], [ 0.000000e+00, %1691 ]
  %1732 = phi float [ %1728, %1699 ], [ 0.000000e+00, %1691 ]
  %1733 = fcmp fast ogt float %1730, 0.000000e+00
  %1734 = fcmp fast ogt float %1731, 0.000000e+00
  %1735 = fcmp fast ogt float %1732, 0.000000e+00
  %1736 = call float @dx.op.unary.f32(i32 23, float %1730)  ; Log(value)
  %1737 = call float @dx.op.unary.f32(i32 23, float %1731)  ; Log(value)
  %1738 = call float @dx.op.unary.f32(i32 23, float %1732)  ; Log(value)
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1648, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = lshr i32 %1740, 7
  %1742 = and i32 %1741, 32752
  %1743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1742)  ; LegacyF16ToF32(value)
  %1744 = fmul fast float %1736, 0xBFE62E4300000000
  %1745 = fmul fast float %1744, %1743
  %1746 = fmul fast float %1737, 0xBFE62E4300000000
  %1747 = fmul fast float %1746, %1743
  %1748 = fmul fast float %1738, 0xBFE62E4300000000
  %1749 = fmul fast float %1748, %1743
  %1750 = select i1 %1733, float %1745, float 1.270000e+02
  %1751 = select i1 %1734, float %1747, float 1.270000e+02
  %1752 = select i1 %1735, float %1749, float 1.270000e+02
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = and i32 %1754, 10240
  %1756 = icmp eq i32 %1755, 0
  br i1 %1756, label %1777, label %1757

; <label>:1757                                    ; preds = %1729
  %1758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = and i32 %1759, 2048
  %1761 = icmp eq i32 %1760, 0
  br i1 %1761, label %1777, label %1762

; <label>:1762                                    ; preds = %1757
  %1763 = add i32 %61, 496
  %1764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.i32 %1764, 0
  %1766 = add i32 %1765, 0
  %1767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1766, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1768 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1767, %dx.types.Handle %113, float %1271, float %1272, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1769 = extractvalue %dx.types.ResRet.f32 %1768, 3
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1648, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = shl i32 %1771, 4
  %1773 = and i32 %1772, 32752
  %1774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1773)  ; LegacyF16ToF32(value)
  %1775 = fmul fast float %1774, %1769
  %1776 = call float @dx.op.binary.f32(i32 35, float %1775, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1777

; <label>:1777                                    ; preds = %1762, %1757, %1729
  %1778 = phi float [ %1776, %1762 ], [ 0x3F70101020000000, %1757 ], [ 0x3F70101020000000, %1729 ]
  %1779 = add i32 %61, 112
  %1780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.i32 %1780, 0
  %1782 = and i32 %1781, 255
  %1783 = uitofp i32 %1782 to float
  %1784 = lshr i32 %1781, 8
  %1785 = and i32 %1784, 255
  %1786 = uitofp i32 %1785 to float
  %1787 = call float @dx.op.dot3.f32(i32 55, float %1564, float %1565, float %1566, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1788 = fmul fast float %1786, %1787
  %1789 = fadd fast float %1788, %1783
  %1790 = fmul fast float %1789, 0x3F70101020000000
  %1791 = call float @dx.op.unary.f32(i32 7, float %1790)  ; Saturate(value)
  br i1 %1163, label %1792, label %1827

; <label>:1792                                    ; preds = %1777
  %1793 = fmul fast float %1778, 2.000000e+00
  %1794 = fcmp fast olt float %1750, 1.270000e+02
  %1795 = fcmp fast olt float %1751, 1.270000e+02
  %1796 = fcmp fast olt float %1752, 1.270000e+02
  %1797 = fmul fast float %1750, 0xBFF7154760000000
  %1798 = fmul fast float %1797, %1793
  %1799 = fmul fast float %1751, 0xBFF7154760000000
  %1800 = fmul fast float %1799, %1793
  %1801 = fmul fast float %1752, 0xBFF7154760000000
  %1802 = fmul fast float %1801, %1793
  %1803 = call float @dx.op.unary.f32(i32 21, float %1798)  ; Exp(value)
  %1804 = call float @dx.op.unary.f32(i32 21, float %1800)  ; Exp(value)
  %1805 = call float @dx.op.unary.f32(i32 21, float %1802)  ; Exp(value)
  %1806 = call float @dx.op.unary.f32(i32 7, float %1803)  ; Saturate(value)
  %1807 = call float @dx.op.unary.f32(i32 7, float %1804)  ; Saturate(value)
  %1808 = call float @dx.op.unary.f32(i32 7, float %1805)  ; Saturate(value)
  %1809 = fadd fast float %1806, -1.000000e+00
  %1810 = select i1 %1794, float %1809, float -1.000000e+00
  %1811 = fadd fast float %1807, -1.000000e+00
  %1812 = select i1 %1795, float %1811, float -1.000000e+00
  %1813 = fadd fast float %1808, -1.000000e+00
  %1814 = select i1 %1796, float %1813, float -1.000000e+00
  %1815 = fmul fast float %1810, %1344
  %1816 = fmul fast float %1812, %1344
  %1817 = fmul fast float %1814, %1344
  %1818 = fadd fast float %1815, 1.000000e+00
  %1819 = fadd fast float %1816, 1.000000e+00
  %1820 = fadd fast float %1817, 1.000000e+00
  %1821 = fmul fast float %1818, %1147
  %1822 = fmul fast float %1819, %1148
  %1823 = fmul fast float %1820, %1149
  %1824 = fmul fast float %1818, %1150
  %1825 = fmul fast float %1819, %1151
  %1826 = fmul fast float %1820, %1152
  br label %1827

; <label>:1827                                    ; preds = %1792, %1777
  %1828 = phi float [ %1821, %1792 ], [ %1147, %1777 ]
  %1829 = phi float [ %1822, %1792 ], [ %1148, %1777 ]
  %1830 = phi float [ %1823, %1792 ], [ %1149, %1777 ]
  %1831 = phi float [ %1824, %1792 ], [ %1150, %1777 ]
  %1832 = phi float [ %1825, %1792 ], [ %1151, %1777 ]
  %1833 = phi float [ %1826, %1792 ], [ %1152, %1777 ]
  %1834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.i32 %1834, 0
  %1836 = and i32 %1835, 3
  %1837 = icmp eq i32 %1836, 3
  br i1 %1837, label %1916, label %1838

; <label>:1838                                    ; preds = %1827
  %1839 = and i32 %1835, 16
  %1840 = icmp ne i32 %1839, 0
  %1841 = select i1 %1840, float %1344, float 0.000000e+00
  %1842 = icmp eq i32 %1836, 0
  br i1 %1842, label %1843, label %1871

; <label>:1843                                    ; preds = %1838
  %1844 = and i32 %1835, 64
  %1845 = icmp ne i32 %1844, 0
  %1846 = select i1 %1845, float %1344, float 0.000000e+00
  %1847 = fsub fast float %1564, %1828
  %1848 = fsub fast float %1565, %1829
  %1849 = fsub fast float %1566, %1830
  %1850 = fmul fast float %1841, %1847
  %1851 = fmul fast float %1841, %1848
  %1852 = fmul fast float %1841, %1849
  %1853 = fadd fast float %1850, %1828
  %1854 = fadd fast float %1851, %1829
  %1855 = fadd fast float %1852, %1830
  %1856 = fsub fast float %1550, %1156
  %1857 = fmul fast float %1841, %1856
  %1858 = fadd fast float %1857, %1156
  %1859 = fsub fast float %1692, %1831
  %1860 = fsub fast float %1693, %1832
  %1861 = fsub fast float %1694, %1833
  %1862 = fmul fast float %1846, %1859
  %1863 = fmul fast float %1846, %1860
  %1864 = fmul fast float %1846, %1861
  %1865 = fadd fast float %1862, %1831
  %1866 = fadd fast float %1863, %1832
  %1867 = fadd fast float %1864, %1833
  %1868 = fsub fast float %1791, %1161
  %1869 = fmul fast float %1841, %1868
  %1870 = fadd fast float %1869, %1161
  br label %1916

; <label>:1871                                    ; preds = %1838
  %1872 = icmp eq i32 %1836, 1
  br i1 %1872, label %1873, label %1886

; <label>:1873                                    ; preds = %1871
  %1874 = fadd fast float %1564, -1.000000e+00
  %1875 = fadd fast float %1565, -1.000000e+00
  %1876 = fadd fast float %1566, -1.000000e+00
  %1877 = fmul fast float %1841, %1874
  %1878 = fmul fast float %1841, %1875
  %1879 = fmul fast float %1841, %1876
  %1880 = fadd fast float %1877, 1.000000e+00
  %1881 = fadd fast float %1878, 1.000000e+00
  %1882 = fadd fast float %1879, 1.000000e+00
  %1883 = fmul fast float %1880, %1828
  %1884 = fmul fast float %1881, %1829
  %1885 = fmul fast float %1882, %1830
  br label %1916

; <label>:1886                                    ; preds = %1871
  %1887 = icmp eq i32 %1836, 2
  br i1 %1887, label %1888, label %1916

; <label>:1888                                    ; preds = %1886
  %1889 = call float @dx.op.unary.f32(i32 24, float %1564)  ; Sqrt(value)
  %1890 = call float @dx.op.unary.f32(i32 24, float %1565)  ; Sqrt(value)
  %1891 = call float @dx.op.unary.f32(i32 24, float %1566)  ; Sqrt(value)
  %1892 = fadd fast float %1889, -5.000000e-01
  %1893 = fadd fast float %1890, -5.000000e-01
  %1894 = fadd fast float %1891, -5.000000e-01
  %1895 = fmul fast float %1892, %1841
  %1896 = fmul fast float %1893, %1841
  %1897 = fmul fast float %1894, %1841
  %1898 = fadd fast float %1895, 5.000000e-01
  %1899 = fadd fast float %1896, 5.000000e-01
  %1900 = fadd fast float %1897, 5.000000e-01
  %1901 = fmul fast float %1898, 2.000000e+00
  %1902 = fsub fast float 1.000000e+00, %1901
  %1903 = fmul fast float %1902, %1828
  %1904 = fadd fast float %1903, %1901
  %1905 = fmul fast float %1904, %1828
  %1906 = fmul fast float %1899, 2.000000e+00
  %1907 = fsub fast float 1.000000e+00, %1906
  %1908 = fmul fast float %1907, %1829
  %1909 = fadd fast float %1908, %1906
  %1910 = fmul fast float %1909, %1829
  %1911 = fmul fast float %1900, 2.000000e+00
  %1912 = fsub fast float 1.000000e+00, %1911
  %1913 = fmul fast float %1912, %1830
  %1914 = fadd fast float %1913, %1911
  %1915 = fmul fast float %1914, %1830
  br label %1916

; <label>:1916                                    ; preds = %1888, %1886, %1873, %1843, %1827
  %1917 = phi float [ %1828, %1827 ], [ %1905, %1888 ], [ %1828, %1886 ], [ %1883, %1873 ], [ %1853, %1843 ]
  %1918 = phi float [ %1829, %1827 ], [ %1910, %1888 ], [ %1829, %1886 ], [ %1884, %1873 ], [ %1854, %1843 ]
  %1919 = phi float [ %1830, %1827 ], [ %1915, %1888 ], [ %1830, %1886 ], [ %1885, %1873 ], [ %1855, %1843 ]
  %1920 = phi float [ %1831, %1827 ], [ %1831, %1888 ], [ %1831, %1886 ], [ %1831, %1873 ], [ %1865, %1843 ]
  %1921 = phi float [ %1832, %1827 ], [ %1832, %1888 ], [ %1832, %1886 ], [ %1832, %1873 ], [ %1866, %1843 ]
  %1922 = phi float [ %1833, %1827 ], [ %1833, %1888 ], [ %1833, %1886 ], [ %1833, %1873 ], [ %1867, %1843 ]
  %1923 = phi float [ %1156, %1827 ], [ %1156, %1888 ], [ %1156, %1886 ], [ %1156, %1873 ], [ %1858, %1843 ]
  %1924 = phi float [ %1161, %1827 ], [ %1161, %1888 ], [ %1161, %1886 ], [ %1161, %1873 ], [ %1870, %1843 ]
  %1925 = and i32 %1835, 12
  %1926 = icmp eq i32 %1925, 12
  br i1 %1926, label %2033, label %1927

; <label>:1927                                    ; preds = %1916
  %1928 = and i32 %1835, 2097184
  %1929 = icmp eq i32 %1928, 2097184
  %1930 = select i1 %1929, float %1344, float 0.000000e+00
  %1931 = and i32 %1835, 4194336
  %1932 = icmp eq i32 %1931, 4194336
  %1933 = select i1 %1932, float %1344, float 0.000000e+00
  %1934 = and i32 %1835, 8388640
  %1935 = icmp eq i32 %1934, 8388640
  %1936 = select i1 %1935, float %1344, float 0.000000e+00
  %1937 = and i32 %1835, 1024
  %1938 = icmp ne i32 %1937, 0
  %1939 = select i1 %1938, float %1344, float 0.000000e+00
  %1940 = and i32 %1835, 2048
  %1941 = icmp ne i32 %1940, 0
  %1942 = select i1 %1941, float %1344, float 0.000000e+00
  %1943 = icmp eq i32 %1925, 0
  br i1 %1943, label %1944, label %1969

; <label>:1944                                    ; preds = %1927
  %1945 = fsub fast float %1645, %1145
  %1946 = fsub fast float %1646, %1146
  %1947 = fmul fast float %1930, %1945
  %1948 = fmul fast float %1930, %1946
  %1949 = fadd fast float %1947, %1145
  %1950 = fadd fast float %1948, %1146
  %1951 = fsub fast float %1647, %1159
  %1952 = fmul fast float %1933, %1951
  %1953 = fadd fast float %1952, %1159
  %1954 = fsub fast float %1644, %1158
  %1955 = fmul fast float %1936, %1954
  %1956 = fadd fast float %1955, %1158
  %1957 = fsub fast float %1750, %1153
  %1958 = fsub fast float %1751, %1154
  %1959 = fsub fast float %1752, %1155
  %1960 = fmul fast float %1939, %1957
  %1961 = fmul fast float %1939, %1958
  %1962 = fmul fast float %1939, %1959
  %1963 = fadd fast float %1960, %1153
  %1964 = fadd fast float %1961, %1154
  %1965 = fadd fast float %1962, %1155
  %1966 = fsub fast float %1778, %1160
  %1967 = fmul fast float %1942, %1966
  %1968 = fadd fast float %1967, %1160
  br label %2033

; <label>:1969                                    ; preds = %1927
  %1970 = icmp eq i32 %1925, 4
  br i1 %1970, label %1971, label %2011

; <label>:1971                                    ; preds = %1969
  %1972 = fmul fast float %1930, %1645
  %1973 = fmul fast float %1930, %1646
  %1974 = fadd fast float %1972, %1145
  %1975 = fadd fast float %1973, %1146
  %1976 = call float @dx.op.binary.f32(i32 36, float %1159, float %1647)  ; FMin(a,b)
  %1977 = fsub fast float %1976, %1159
  %1978 = fmul fast float %1977, %1933
  %1979 = fadd fast float %1978, %1159
  %1980 = fadd fast float %1644, %1158
  %1981 = fmul fast float %1980, 0x3FF337FAE0000000
  %1982 = fmul fast float %1158, %1158
  %1983 = fmul fast float %1644, %1644
  %1984 = fadd fast float %1983, %1982
  %1985 = fmul fast float %1984, 0x3FE5152B00000000
  %1986 = fmul fast float %1158, 0xBFCC1F85E0000000
  %1987 = fmul fast float %1986, %1644
  %1988 = fadd fast float %1987, 0xBFE1363700000000
  %1989 = fadd fast float %1988, %1981
  %1990 = fsub fast float %1989, %1985
  %1991 = fmul fast float %1980, 0x3FBA6F0D00000000
  %1992 = fmul fast float %1984, 0x3FD0432880000000
  %1993 = fmul fast float %1158, 0xBFEF110800000000
  %1994 = fmul fast float %1993, %1644
  %1995 = fadd fast float %1994, 1.000000e+00
  %1996 = fsub fast float %1995, %1991
  %1997 = fadd fast float %1996, %1992
  %1998 = fdiv fast float %1990, %1997
  %1999 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  %2000 = fsub fast float %1999, %1158
  %2001 = fmul fast float %2000, %1936
  %2002 = fadd fast float %2001, %1158
  %2003 = fmul fast float %1939, %1750
  %2004 = fmul fast float %1939, %1751
  %2005 = fmul fast float %1939, %1752
  %2006 = fadd fast float %2003, %1153
  %2007 = fadd fast float %2004, %1154
  %2008 = fadd fast float %2005, %1155
  %2009 = fmul fast float %1942, %1778
  %2010 = fadd fast float %2009, %1160
  br label %2033

; <label>:2011                                    ; preds = %1969
  %2012 = icmp eq i32 %1925, 8
  br i1 %2012, label %2013, label %2033

; <label>:2013                                    ; preds = %2011
  %2014 = fmul fast float %1930, %1645
  %2015 = fmul fast float %1930, %1646
  %2016 = fadd fast float %2014, %1145
  %2017 = fadd fast float %2015, %1146
  %2018 = call float @dx.op.binary.f32(i32 36, float %1159, float %1647)  ; FMin(a,b)
  %2019 = fsub fast float %2018, %1159
  %2020 = fmul fast float %2019, %1933
  %2021 = fadd fast float %2020, %1159
  %2022 = fsub fast float %1644, %1158
  %2023 = fmul fast float %1936, %2022
  %2024 = fadd fast float %2023, %1158
  %2025 = fmul fast float %1939, %1750
  %2026 = fmul fast float %1939, %1751
  %2027 = fmul fast float %1939, %1752
  %2028 = fadd fast float %2025, %1153
  %2029 = fadd fast float %2026, %1154
  %2030 = fadd fast float %2027, %1155
  %2031 = fmul fast float %1942, %1778
  %2032 = fadd fast float %2031, %1160
  br label %2033

; <label>:2033                                    ; preds = %2013, %2011, %1971, %1944, %1916, %1343, %1162, %1144
  %2034 = phi float [ %1145, %1916 ], [ %1145, %1343 ], [ %1145, %1144 ], [ %2016, %2013 ], [ %1145, %2011 ], [ %1974, %1971 ], [ %1949, %1944 ], [ %1145, %1162 ]
  %2035 = phi float [ %1146, %1916 ], [ %1146, %1343 ], [ %1146, %1144 ], [ %2017, %2013 ], [ %1146, %2011 ], [ %1975, %1971 ], [ %1950, %1944 ], [ %1146, %1162 ]
  %2036 = phi float [ %1917, %1916 ], [ %1147, %1343 ], [ %1147, %1144 ], [ %1917, %2013 ], [ %1917, %2011 ], [ %1917, %1971 ], [ %1917, %1944 ], [ %1147, %1162 ]
  %2037 = phi float [ %1918, %1916 ], [ %1148, %1343 ], [ %1148, %1144 ], [ %1918, %2013 ], [ %1918, %2011 ], [ %1918, %1971 ], [ %1918, %1944 ], [ %1148, %1162 ]
  %2038 = phi float [ %1919, %1916 ], [ %1149, %1343 ], [ %1149, %1144 ], [ %1919, %2013 ], [ %1919, %2011 ], [ %1919, %1971 ], [ %1919, %1944 ], [ %1149, %1162 ]
  %2039 = phi float [ %1920, %1916 ], [ %1150, %1343 ], [ %1150, %1144 ], [ %1920, %2013 ], [ %1920, %2011 ], [ %1920, %1971 ], [ %1920, %1944 ], [ %1150, %1162 ]
  %2040 = phi float [ %1921, %1916 ], [ %1151, %1343 ], [ %1151, %1144 ], [ %1921, %2013 ], [ %1921, %2011 ], [ %1921, %1971 ], [ %1921, %1944 ], [ %1151, %1162 ]
  %2041 = phi float [ %1922, %1916 ], [ %1152, %1343 ], [ %1152, %1144 ], [ %1922, %2013 ], [ %1922, %2011 ], [ %1922, %1971 ], [ %1922, %1944 ], [ %1152, %1162 ]
  %2042 = phi float [ %1153, %1916 ], [ %1153, %1343 ], [ %1153, %1144 ], [ %2028, %2013 ], [ %1153, %2011 ], [ %2006, %1971 ], [ %1963, %1944 ], [ %1153, %1162 ]
  %2043 = phi float [ %1154, %1916 ], [ %1154, %1343 ], [ %1154, %1144 ], [ %2029, %2013 ], [ %1154, %2011 ], [ %2007, %1971 ], [ %1964, %1944 ], [ %1154, %1162 ]
  %2044 = phi float [ %1155, %1916 ], [ %1155, %1343 ], [ %1155, %1144 ], [ %2030, %2013 ], [ %1155, %2011 ], [ %2008, %1971 ], [ %1965, %1944 ], [ %1155, %1162 ]
  %2045 = phi float [ %1923, %1916 ], [ %1156, %1343 ], [ %1156, %1144 ], [ %1923, %2013 ], [ %1923, %2011 ], [ %1923, %1971 ], [ %1923, %1944 ], [ %1156, %1162 ]
  %2046 = phi float [ %1158, %1916 ], [ %1158, %1343 ], [ %1158, %1144 ], [ %2024, %2013 ], [ %1158, %2011 ], [ %2002, %1971 ], [ %1956, %1944 ], [ %1158, %1162 ]
  %2047 = phi float [ %1159, %1916 ], [ %1159, %1343 ], [ %1159, %1144 ], [ %2021, %2013 ], [ %1159, %2011 ], [ %1979, %1971 ], [ %1953, %1944 ], [ %1159, %1162 ]
  %2048 = phi float [ %1160, %1916 ], [ %1160, %1343 ], [ %1160, %1144 ], [ %2032, %2013 ], [ %1160, %2011 ], [ %2010, %1971 ], [ %1968, %1944 ], [ %1160, %1162 ]
  %2049 = phi float [ %1924, %1916 ], [ %1161, %1343 ], [ %1161, %1144 ], [ %1924, %2013 ], [ %1924, %2011 ], [ %1924, %1971 ], [ %1924, %1944 ], [ %1161, %1162 ]
  br i1 %461, label %2921, label %2050

; <label>:2050                                    ; preds = %2033
  %2051 = icmp ult i32 %517, 3
  %2052 = add i32 %61, 56
  %2053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = add i32 %61, 60
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2055, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = or i32 %2057, %2054
  %2059 = icmp eq i32 %2058, 0
  br i1 %2059, label %2921, label %2060

; <label>:2060                                    ; preds = %2050
  %2061 = and i32 %2054, 262144
  %2062 = icmp ne i32 %2061, 0
  %2063 = select i1 %2062, float %67, float 1.000000e+00
  %2064 = select i1 %2062, float %68, float 0.000000e+00
  %2065 = select i1 %2062, float %69, float 0.000000e+00
  %2066 = select i1 %2062, float %70, float 1.000000e+00
  %2067 = select i1 %2062, float %71, float %94
  %2068 = select i1 %2062, float %72, float %95
  %2069 = add i32 %61, 316
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2069, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = lshr i32 %2071, 16
  %2073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2072)  ; LegacyF16ToF32(value)
  %2074 = fmul fast float %2073, 0x3F50624DE0000000
  %2075 = add i32 %61, 120
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = lshr i32 %2077, 16
  %2079 = and i32 %2078, 255
  %2080 = lshr i32 %2077, 24
  %2081 = add i32 %61, 324
  %2082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2081, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.i32 %2082, 0
  %2084 = and i32 %2083, 65535
  %2085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2084)  ; LegacyF16ToF32(value)
  %2086 = lshr i32 %2083, 16
  %2087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2086)  ; LegacyF16ToF32(value)
  %2088 = add i32 %61, 64
  %2089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.i32 %2089, 0
  %2091 = lshr i32 %2090, 22
  %2092 = shl nuw nsw i32 %2091, 5
  %2093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2092)  ; LegacyF16ToF32(value)
  %2094 = shl i32 %2090, 4
  %2095 = and i32 %2094, 32752
  %2096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2095)  ; LegacyF16ToF32(value)
  %2097 = lshr i32 %2090, 7
  %2098 = and i32 %2097, 32752
  %2099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2098)  ; LegacyF16ToF32(value)
  %2100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2101 = extractvalue %dx.types.CBufRet.f32 %2100, 3
  %2102 = fmul fast float %2101, 1.000000e+03
  %2103 = fmul fast float %411, %2102
  %2104 = call float @dx.op.unary.f32(i32 22, float %2103)  ; Frc(value)
  %2105 = fadd fast float %2104, %401
  %2106 = fmul fast float %412, %2102
  %2107 = call float @dx.op.unary.f32(i32 22, float %2106)  ; Frc(value)
  %2108 = fadd fast float %2107, %403
  %2109 = fmul fast float %2074, %2102
  %2110 = call float @dx.op.unary.f32(i32 22, float %2109)  ; Frc(value)
  %2111 = fmul fast float %2110, 0x401921FB60000000
  %2112 = fadd fast float %2111, %2093
  %2113 = call float @dx.op.unary.f32(i32 13, float %2112)  ; Sin(value)
  %2114 = call float @dx.op.unary.f32(i32 12, float %2112)  ; Cos(value)
  %2115 = fsub fast float -0.000000e+00, %2113
  %2116 = fadd fast float %2067, -5.000000e-01
  %2117 = fadd fast float %2068, -5.000000e-01
  %2118 = fmul fast float %2085, %2116
  %2119 = fmul fast float %2087, %2117
  %2120 = fadd fast float %2118, 5.000000e-01
  %2121 = fadd fast float %2119, 5.000000e-01
  %2122 = fmul fast float %2096, %2120
  %2123 = fmul fast float %2099, %2121
  %2124 = fmul fast float %2114, %2122
  %2125 = call float @dx.op.tertiary.f32(i32 46, float %2115, float %2123, float %2124)  ; FMad(a,b,c)
  %2126 = fmul fast float %2113, %2122
  %2127 = call float @dx.op.tertiary.f32(i32 46, float %2114, float %2123, float %2126)  ; FMad(a,b,c)
  %2128 = fadd fast float %2105, %2125
  %2129 = fadd fast float %2108, %2127
  %2130 = icmp ugt i32 %2079, 1
  %2131 = icmp ugt i32 %2077, 33554431
  %2132 = or i1 %2131, %2130
  br i1 %2132, label %2133, label %2158

; <label>:2133                                    ; preds = %2060
  %2134 = add i32 %61, 260
  %2135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2134, i32 undef)  ; BufferLoad(srv,index,wot)
  %2136 = extractvalue %dx.types.ResRet.i32 %2135, 0
  %2137 = lshr i32 %2136, 16
  %2138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2137)  ; LegacyF16ToF32(value)
  %2139 = fmul fast float %2101, %2138
  %2140 = call float @dx.op.unary.f32(i32 22, float %2139)  ; Frc(value)
  %2141 = mul nuw nsw i32 %2079, %2080
  %2142 = uitofp i32 %2141 to float
  %2143 = fmul fast float %2140, %2142
  %2144 = call float @dx.op.unary.f32(i32 27, float %2143)  ; Round_ni(value)
  %2145 = fptoui float %2144 to i32
  %2146 = urem i32 %2145, %2079
  %2147 = udiv i32 %2145, %2080
  %2148 = call float @dx.op.unary.f32(i32 22, float %2128)  ; Frc(value)
  %2149 = call float @dx.op.unary.f32(i32 22, float %2129)  ; Frc(value)
  %2150 = uitofp i32 %2146 to float
  %2151 = uitofp i32 %2147 to float
  %2152 = fadd fast float %2148, %2150
  %2153 = fadd fast float %2149, %2151
  %2154 = uitofp i32 %2079 to float
  %2155 = uitofp i32 %2080 to float
  %2156 = fdiv fast float %2152, %2154
  %2157 = fdiv fast float %2153, %2155
  br label %2158

; <label>:2158                                    ; preds = %2133, %2060
  %2159 = phi float [ %2156, %2133 ], [ %2128, %2060 ]
  %2160 = phi float [ %2157, %2133 ], [ %2129, %2060 ]
  %2161 = and i32 %2054, 256
  %2162 = icmp eq i32 %2161, 0
  br i1 %2162, label %2209, label %2163

; <label>:2163                                    ; preds = %2158
  %2164 = add i32 %61, 448
  %2165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2164, i32 undef)  ; BufferLoad(srv,index,wot)
  %2166 = extractvalue %dx.types.ResRet.i32 %2165, 0
  %2167 = add i32 %2166, 0
  %2168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2167, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2169 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2168, %dx.types.Handle %113, float %2159, float %2160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2170 = extractvalue %dx.types.ResRet.f32 %2169, 0
  %2171 = add i32 %61, 132
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2171, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = shl i32 %2173, 4
  %2175 = and i32 %2174, 32752
  %2176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2175)  ; LegacyF16ToF32(value)
  %2177 = lshr i32 %2173, 7
  %2178 = and i32 %2177, 32752
  %2179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2178)  ; LegacyF16ToF32(value)
  %2180 = fsub fast float 1.000000e+00, %513
  %2181 = call float @dx.op.binary.f32(i32 35, float %2180, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2182 = bitcast float %513 to i32
  %2183 = sitofp i32 %2182 to float
  %2184 = fadd fast float %2183, 0xC1CFBF8940000000
  %2185 = fmul fast float %2179, %2184
  %2186 = fadd fast float %2185, 0x41CFBF8940000000
  %2187 = fptosi float %2186 to i32
  %2188 = bitcast i32 %2187 to float
  %2189 = bitcast float %2181 to i32
  %2190 = sitofp i32 %2189 to float
  %2191 = fadd fast float %2190, 0xC1CFBF8940000000
  %2192 = fmul fast float %2191, %2179
  %2193 = fadd fast float %2192, 0x41CFBF8940000000
  %2194 = fptosi float %2193 to i32
  %2195 = bitcast i32 %2194 to float
  %2196 = fmul fast float %2188, %2176
  %2197 = fmul fast float %2195, %2176
  %2198 = fsub fast float %2181, %2196
  %2199 = fadd fast float %2197, %2181
  %2200 = call float @dx.op.unary.f32(i32 7, float %2198)  ; Saturate(value)
  %2201 = call float @dx.op.unary.f32(i32 7, float %2199)  ; Saturate(value)
  %2202 = fsub fast float %2170, %2200
  %2203 = fsub fast float %2201, %2200
  %2204 = bitcast float %2203 to i32
  %2205 = sub nsw i32 2129859010, %2204
  %2206 = bitcast i32 %2205 to float
  %2207 = fmul fast float %2206, %2202
  %2208 = call float @dx.op.unary.f32(i32 7, float %2207)  ; Saturate(value)
  br label %2209

; <label>:2209                                    ; preds = %2163, %2158
  %2210 = phi float [ %2208, %2163 ], [ %513, %2158 ]
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = and i32 %2212, 128
  %2214 = icmp eq i32 %2213, 0
  br i1 %2214, label %2231, label %2215

; <label>:2215                                    ; preds = %2209
  %2216 = add i32 %61, 432
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2216, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = add i32 %2218, 0
  %2220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2219, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2221 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2220, %dx.types.Handle %113, float %2159, float %2160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2222 = extractvalue %dx.types.ResRet.f32 %2221, 0
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = and i32 %2224, 524288
  %2226 = icmp ne i32 %2225, 0
  %2227 = fcmp fast ogt float %2222, 0x3FE0101020000000
  %2228 = select i1 %2227, float 1.000000e+00, float 0.000000e+00
  %2229 = select i1 %2226, float %2228, float %2222
  %2230 = fmul fast float %2229, %2210
  br label %2231

; <label>:2231                                    ; preds = %2215, %2209
  %2232 = phi float [ %2230, %2215 ], [ %2210, %2209 ]
  %2233 = fcmp fast ult float %2232, 0x3F70101020000000
  br i1 %2233, label %2921, label %2234

; <label>:2234                                    ; preds = %2231
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = and i32 %2236, 16
  %2238 = icmp eq i32 %2237, 0
  br i1 %2238, label %2437, label %2239

; <label>:2239                                    ; preds = %2234
  %2240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2241 = extractvalue %dx.types.ResRet.i32 %2240, 0
  %2242 = add i32 %61, 384
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = add i32 %2244, 0
  %2246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2245, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2247 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2246, %dx.types.Handle %112, float %2159, float %2160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2248 = extractvalue %dx.types.ResRet.f32 %2247, 0
  %2249 = extractvalue %dx.types.ResRet.f32 %2247, 1
  %2250 = extractvalue %dx.types.ResRet.f32 %2247, 2
  %2251 = extractvalue %dx.types.ResRet.f32 %2247, 3
  %2252 = and i32 %2241, 255
  %2253 = uitofp i32 %2252 to float
  %2254 = lshr i32 %2241, 8
  %2255 = and i32 %2254, 255
  %2256 = uitofp i32 %2255 to float
  %2257 = fmul fast float %2251, %2253
  %2258 = fadd fast float %2257, %2256
  %2259 = fmul fast float %2258, 0x3F70101000000000
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = and i32 %2261, 512
  %2263 = icmp eq i32 %2262, 0
  br i1 %2263, label %2272, label %2264

; <label>:2264                                    ; preds = %2239
  %2265 = add i32 %61, 468
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = add i32 %2267, 0
  %2269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2270 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2269, %dx.types.Handle %113, float %2159, float %2160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2271 = extractvalue %dx.types.ResRet.f32 %2270, 0
  br label %2272

; <label>:2272                                    ; preds = %2264, %2239
  %2273 = phi float [ %2271, %2264 ], [ 1.000000e+00, %2239 ]
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = and i32 %2275, 33554432
  %2277 = icmp eq i32 %2276, 0
  br i1 %2277, label %2384, label %2278

; <label>:2278                                    ; preds = %2272
  %2279 = add i32 %61, 256
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = and i32 %2281, 65535
  %2283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2282)  ; LegacyF16ToF32(value)
  %2284 = lshr i32 %2281, 16
  %2285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2284)  ; LegacyF16ToF32(value)
  %2286 = add i32 %61, 260
  %2287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2286, i32 undef)  ; BufferLoad(srv,index,wot)
  %2288 = extractvalue %dx.types.ResRet.i32 %2287, 0
  %2289 = and i32 %2288, 65535
  %2290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2289)  ; LegacyF16ToF32(value)
  %2291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2292 = extractvalue %dx.types.ResRet.i32 %2291, 0
  %2293 = lshr i32 %2292, 24
  %2294 = uitofp i32 %2293 to float
  %2295 = fmul fast float %2294, 0x3F70101020000000
  %2296 = and i32 %2292, 255
  %2297 = uitofp i32 %2296 to float
  %2298 = fmul fast float %2297, 0x3F70101020000000
  %2299 = lshr i32 %2292, 8
  %2300 = and i32 %2299, 255
  %2301 = uitofp i32 %2300 to float
  %2302 = fmul fast float %2301, 0x3F70101020000000
  %2303 = lshr i32 %2292, 16
  %2304 = and i32 %2303, 255
  %2305 = uitofp i32 %2304 to float
  %2306 = fmul fast float %2305, 0x3F70101020000000
  %2307 = add i32 %61, 252
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = lshr i32 %2309, 24
  %2311 = uitofp i32 %2310 to float
  %2312 = fmul fast float %2311, 0x3F70101020000000
  %2313 = and i32 %2309, 255
  %2314 = uitofp i32 %2313 to float
  %2315 = fmul fast float %2314, 0x3F70101020000000
  %2316 = lshr i32 %2309, 8
  %2317 = and i32 %2316, 255
  %2318 = uitofp i32 %2317 to float
  %2319 = fmul fast float %2318, 0x3F70101020000000
  %2320 = lshr i32 %2309, 16
  %2321 = and i32 %2320, 255
  %2322 = uitofp i32 %2321 to float
  %2323 = fmul fast float %2322, 0x3F70101020000000
  %2324 = bitcast float %2248 to i32
  %2325 = ashr i32 %2324, 1
  %2326 = sub nsw i32 1597463174, %2325
  %2327 = bitcast i32 %2326 to float
  %2328 = fmul fast float %2248, 5.000000e-01
  %2329 = fmul fast float %2327, %2327
  %2330 = fmul fast float %2329, %2328
  %2331 = fsub fast float 1.500000e+00, %2330
  %2332 = fmul fast float %2327, %2248
  %2333 = fmul fast float %2332, %2331
  %2334 = bitcast float %2249 to i32
  %2335 = ashr i32 %2334, 1
  %2336 = sub nsw i32 1597463174, %2335
  %2337 = bitcast i32 %2336 to float
  %2338 = fmul fast float %2249, 5.000000e-01
  %2339 = fmul fast float %2337, %2337
  %2340 = fmul fast float %2339, %2338
  %2341 = fsub fast float 1.500000e+00, %2340
  %2342 = fmul fast float %2337, %2249
  %2343 = fmul fast float %2342, %2341
  %2344 = bitcast float %2250 to i32
  %2345 = ashr i32 %2344, 1
  %2346 = sub nsw i32 1597463174, %2345
  %2347 = bitcast i32 %2346 to float
  %2348 = fmul fast float %2250, 5.000000e-01
  %2349 = fmul fast float %2347, %2347
  %2350 = fmul fast float %2349, %2348
  %2351 = fsub fast float 1.500000e+00, %2350
  %2352 = fmul fast float %2347, %2250
  %2353 = fmul fast float %2352, %2351
  %2354 = fsub fast float %2333, %2315
  %2355 = fsub fast float %2343, %2319
  %2356 = fsub fast float %2353, %2323
  %2357 = fmul fast float %2354, %2283
  %2358 = fmul fast float %2355, %2285
  %2359 = fmul fast float %2356, %2290
  %2360 = fadd fast float %2357, %2298
  %2361 = fadd fast float %2358, %2302
  %2362 = fadd fast float %2359, %2306
  %2363 = call float @dx.op.unary.f32(i32 7, float %2360)  ; Saturate(value)
  %2364 = call float @dx.op.unary.f32(i32 7, float %2361)  ; Saturate(value)
  %2365 = call float @dx.op.unary.f32(i32 7, float %2362)  ; Saturate(value)
  %2366 = fmul fast float %2363, %2363
  %2367 = fmul fast float %2364, %2364
  %2368 = fmul fast float %2365, %2365
  %2369 = fsub fast float %2366, %2248
  %2370 = fsub fast float %2367, %2249
  %2371 = fsub fast float %2368, %2250
  %2372 = fmul fast float %2369, %2273
  %2373 = fmul fast float %2370, %2273
  %2374 = fmul fast float %2371, %2273
  %2375 = fadd fast float %2372, %2248
  %2376 = fadd fast float %2373, %2249
  %2377 = fadd fast float %2374, %2250
  %2378 = fadd fast float %2295, %2259
  %2379 = fsub fast float %2378, %2312
  %2380 = call float @dx.op.unary.f32(i32 7, float %2379)  ; Saturate(value)
  %2381 = fsub fast float %2380, %2259
  %2382 = fmul fast float %2381, %2273
  %2383 = fadd fast float %2382, %2259
  br label %2437

; <label>:2384                                    ; preds = %2272
  %2385 = and i32 %2275, 134217728
  %2386 = icmp eq i32 %2385, 0
  br i1 %2386, label %2421, label %2387

; <label>:2387                                    ; preds = %2384
  %2388 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %2389 = call float @dx.op.unary.f32(i32 24, float %392)  ; Sqrt(value)
  %2390 = call float @dx.op.unary.f32(i32 24, float %396)  ; Sqrt(value)
  %2391 = fadd fast float %2388, -5.000000e-01
  %2392 = fadd fast float %2389, -5.000000e-01
  %2393 = fadd fast float %2390, -5.000000e-01
  %2394 = fmul fast float %2391, %2273
  %2395 = fmul fast float %2392, %2273
  %2396 = fmul fast float %2393, %2273
  %2397 = fadd fast float %2394, 5.000000e-01
  %2398 = fadd fast float %2395, 5.000000e-01
  %2399 = fadd fast float %2396, 5.000000e-01
  %2400 = call float @dx.op.unary.f32(i32 24, float %2248)  ; Sqrt(value)
  %2401 = call float @dx.op.unary.f32(i32 24, float %2249)  ; Sqrt(value)
  %2402 = call float @dx.op.unary.f32(i32 24, float %2250)  ; Sqrt(value)
  %2403 = fmul fast float %2397, 2.000000e+00
  %2404 = fsub fast float 1.000000e+00, %2403
  %2405 = fmul fast float %2404, %2400
  %2406 = fadd fast float %2405, %2403
  %2407 = fmul fast float %2406, %2400
  %2408 = fmul fast float %2398, 2.000000e+00
  %2409 = fsub fast float 1.000000e+00, %2408
  %2410 = fmul fast float %2409, %2401
  %2411 = fadd fast float %2410, %2408
  %2412 = fmul fast float %2411, %2401
  %2413 = fmul fast float %2399, 2.000000e+00
  %2414 = fsub fast float 1.000000e+00, %2413
  %2415 = fmul fast float %2414, %2402
  %2416 = fadd fast float %2415, %2413
  %2417 = fmul fast float %2416, %2402
  %2418 = fmul fast float %2407, %2407
  %2419 = fmul fast float %2412, %2412
  %2420 = fmul fast float %2417, %2417
  br label %2437

; <label>:2421                                    ; preds = %2384
  %2422 = fmul fast float %388, %388
  %2423 = fmul fast float %392, %392
  %2424 = fmul fast float %396, %396
  %2425 = fadd fast float %2422, -1.000000e+00
  %2426 = fadd fast float %2423, -1.000000e+00
  %2427 = fadd fast float %2424, -1.000000e+00
  %2428 = fmul fast float %2273, %2425
  %2429 = fmul fast float %2273, %2426
  %2430 = fmul fast float %2273, %2427
  %2431 = fadd fast float %2428, 1.000000e+00
  %2432 = fadd fast float %2429, 1.000000e+00
  %2433 = fadd fast float %2430, 1.000000e+00
  %2434 = fmul fast float %2431, %2248
  %2435 = fmul fast float %2432, %2249
  %2436 = fmul fast float %2433, %2250
  br label %2437

; <label>:2437                                    ; preds = %2421, %2387, %2278, %2234
  %2438 = phi float [ %2383, %2278 ], [ %2259, %2387 ], [ %2259, %2421 ], [ 0x3FA23C0BE0000000, %2234 ]
  %2439 = phi float [ %2375, %2278 ], [ %2418, %2387 ], [ %2434, %2421 ], [ 1.000000e+00, %2234 ]
  %2440 = phi float [ %2376, %2278 ], [ %2419, %2387 ], [ %2435, %2421 ], [ 1.000000e+00, %2234 ]
  %2441 = phi float [ %2377, %2278 ], [ %2420, %2387 ], [ %2436, %2421 ], [ 1.000000e+00, %2234 ]
  %2442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2443 = extractvalue %dx.types.CBufRet.i32 %2442, 1
  %2444 = and i32 %2443, 1
  %2445 = icmp ne i32 %2444, 0
  %2446 = add i32 %61, 356
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2446, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.i32 %2447, 0
  %2449 = and i32 %2448, 32
  %2450 = icmp ne i32 %2449, 0
  %2451 = and i1 %2445, %2450
  %2452 = select i1 %2451, float 1.000000e+00, float %2439
  %2453 = select i1 %2451, float 0x3FD3333340000000, float %2440
  %2454 = select i1 %2451, float 0x3FD3333340000000, float %2441
  %2455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.i32 %2455, 0
  %2457 = and i32 %2456, 32
  %2458 = icmp eq i32 %2457, 0
  br i1 %2458, label %2531, label %2459

; <label>:2459                                    ; preds = %2437
  %2460 = add i32 %61, 124
  %2461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2460, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.i32 %2461, 0
  %2463 = add i32 %61, 400
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2463, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = add i32 %2465, 0
  %2467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2466, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2468 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2467, %dx.types.Handle %112, float %2159, float %2160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2469 = extractvalue %dx.types.ResRet.f32 %2468, 0
  %2470 = extractvalue %dx.types.ResRet.f32 %2468, 1
  %2471 = extractvalue %dx.types.ResRet.f32 %2468, 2
  %2472 = extractvalue %dx.types.ResRet.f32 %2468, 3
  %2473 = and i32 %2462, 255
  %2474 = uitofp i32 %2473 to float
  %2475 = lshr i32 %2462, 8
  %2476 = and i32 %2475, 255
  %2477 = uitofp i32 %2476 to float
  %2478 = lshr i32 %2462, 16
  %2479 = and i32 %2478, 255
  %2480 = uitofp i32 %2479 to float
  %2481 = fmul fast float %2480, 0x3F70101000000000
  %2482 = fmul fast float %2469, %2474
  %2483 = fadd fast float %2482, %2477
  %2484 = fmul fast float %2483, 0x3F70101000000000
  %2485 = fadd fast float %2470, -5.000000e-01
  %2486 = fadd fast float %2472, -5.000000e-01
  %2487 = fmul fast float %2485, %2481
  %2488 = fmul fast float %2486, %2481
  %2489 = fadd fast float %2487, 5.000000e-01
  %2490 = fadd fast float %2488, 5.000000e-01
  %2491 = fmul fast float %2489, 2.000000e+00
  %2492 = fadd fast float %2491, -1.000000e+00
  %2493 = fmul fast float %2490, 2.000000e+00
  %2494 = fadd fast float %2493, -1.000000e+00
  %2495 = fadd fast float %2492, %2494
  %2496 = fmul fast float %2495, 5.000000e-01
  %2497 = fsub fast float %2492, %2494
  %2498 = fmul fast float %2497, 5.000000e-01
  %2499 = call float @dx.op.unary.f32(i32 6, float %2496)  ; FAbs(value)
  %2500 = fsub fast float 1.000000e+00, %2499
  %2501 = call float @dx.op.unary.f32(i32 6, float %2498)  ; FAbs(value)
  %2502 = fsub fast float %2500, %2501
  %2503 = call float @dx.op.dot3.f32(i32 55, float %2496, float %2498, float %2502, float %2496, float %2498, float %2502)  ; Dot3(ax,ay,az,bx,by,bz)
  %2504 = call float @dx.op.unary.f32(i32 25, float %2503)  ; Rsqrt(value)
  %2505 = fmul fast float %2496, %2504
  %2506 = fmul fast float %2498, %2504
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = and i32 %2508, 67108864
  %2510 = icmp eq i32 %2509, 0
  br i1 %2510, label %2527, label %2511

; <label>:2511                                    ; preds = %2459
  %2512 = add i32 %61, 312
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = and i32 %2514, 65535
  %2516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2515)  ; LegacyF16ToF32(value)
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2069, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = and i32 %2518, 65535
  %2520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2519)  ; LegacyF16ToF32(value)
  %2521 = lshr i32 %2514, 16
  %2522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2521)  ; LegacyF16ToF32(value)
  %2523 = fsub fast float %2484, %2522
  %2524 = fmul fast float %2523, %2516
  %2525 = fadd fast float %2524, %2520
  %2526 = call float @dx.op.unary.f32(i32 7, float %2525)  ; Saturate(value)
  br label %2527

; <label>:2527                                    ; preds = %2511, %2459
  %2528 = phi float [ %2526, %2511 ], [ %2484, %2459 ]
  %2529 = call float @dx.op.dot2.f32(i32 54, float %2505, float %2506, float %2063, float %2064)  ; Dot2(ax,ay,bx,by)
  %2530 = call float @dx.op.dot2.f32(i32 54, float %2505, float %2506, float %2065, float %2066)  ; Dot2(ax,ay,bx,by)
  br label %2531

; <label>:2531                                    ; preds = %2527, %2437
  %2532 = phi float [ %2528, %2527 ], [ 0x3FD6666660000000, %2437 ]
  %2533 = phi float [ %2529, %2527 ], [ 0.000000e+00, %2437 ]
  %2534 = phi float [ %2530, %2527 ], [ 0.000000e+00, %2437 ]
  %2535 = phi float [ %2471, %2527 ], [ 1.000000e+00, %2437 ]
  %2536 = add i32 %61, 192
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2536, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = lshr i32 %2538, 22
  %2540 = shl nuw nsw i32 %2539, 5
  %2541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2540)  ; LegacyF16ToF32(value)
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = and i32 %2543, 64
  %2545 = icmp eq i32 %2544, 0
  br i1 %2545, label %2579, label %2546

; <label>:2546                                    ; preds = %2531
  %2547 = add i32 %61, 416
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = add i32 %2549, 0
  %2551 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2550, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = and i32 %2553, 131072
  %2555 = icmp eq i32 %2554, 0
  %2556 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2551, %dx.types.Handle %112, float %2159, float %2160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2557 = extractvalue %dx.types.ResRet.f32 %2556, 0
  %2558 = extractvalue %dx.types.ResRet.f32 %2556, 1
  %2559 = extractvalue %dx.types.ResRet.f32 %2556, 2
  %2560 = fmul fast float %2557, %376
  %2561 = fmul fast float %2558, %379
  %2562 = fmul fast float %2559, %382
  br i1 %2555, label %2569, label %2563

; <label>:2563                                    ; preds = %2546
  %2564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2565 = extractvalue %dx.types.CBufRet.f32 %2564, 0
  %2566 = fmul fast float %2565, %2560
  %2567 = fmul fast float %2565, %2561
  %2568 = fmul fast float %2565, %2562
  br label %2569

; <label>:2569                                    ; preds = %2563, %2546
  %2570 = phi float [ %2566, %2563 ], [ %2560, %2546 ]
  %2571 = phi float [ %2567, %2563 ], [ %2561, %2546 ]
  %2572 = phi float [ %2568, %2563 ], [ %2562, %2546 ]
  %2573 = fmul fast float %2570, %2541
  %2574 = select i1 %275, float %2573, float %2570
  %2575 = call float @dx.op.dot3.f32(i32 55, float %2574, float %2571, float %2572, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2576 = select i1 %275, float 0.000000e+00, float %2570
  %2577 = select i1 %275, float %2575, float %2571
  %2578 = select i1 %275, float 0.000000e+00, float %2572
  br label %2579

; <label>:2579                                    ; preds = %2569, %2531
  %2580 = phi float [ %2576, %2569 ], [ 0.000000e+00, %2531 ]
  %2581 = phi float [ %2577, %2569 ], [ 0.000000e+00, %2531 ]
  %2582 = phi float [ %2578, %2569 ], [ 0.000000e+00, %2531 ]
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = and i32 %2584, 1024
  %2586 = icmp eq i32 %2585, 0
  br i1 %2586, label %2617, label %2587

; <label>:2587                                    ; preds = %2579
  %2588 = add i32 %61, 184
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = and i32 %2590, 255
  %2592 = uitofp i32 %2591 to float
  %2593 = fmul fast float %2592, 0x3F70101020000000
  %2594 = lshr i32 %2590, 8
  %2595 = and i32 %2594, 255
  %2596 = uitofp i32 %2595 to float
  %2597 = fmul fast float %2596, 0x3F70101020000000
  %2598 = lshr i32 %2590, 16
  %2599 = and i32 %2598, 255
  %2600 = uitofp i32 %2599 to float
  %2601 = fmul fast float %2600, 0x3F70101020000000
  %2602 = fmul fast float %2593, %2593
  %2603 = fmul fast float %2597, %2597
  %2604 = fmul fast float %2601, %2601
  %2605 = add i32 %61, 484
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2605, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = add i32 %2607, 0
  %2609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2610 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2609, %dx.types.Handle %113, float %2159, float %2160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2611 = extractvalue %dx.types.ResRet.f32 %2610, 0
  %2612 = extractvalue %dx.types.ResRet.f32 %2610, 1
  %2613 = extractvalue %dx.types.ResRet.f32 %2610, 2
  %2614 = fmul fast float %2602, %2611
  %2615 = fmul fast float %2603, %2612
  %2616 = fmul fast float %2604, %2613
  br label %2617

; <label>:2617                                    ; preds = %2587, %2579
  %2618 = phi float [ %2614, %2587 ], [ 0.000000e+00, %2579 ]
  %2619 = phi float [ %2615, %2587 ], [ 0.000000e+00, %2579 ]
  %2620 = phi float [ %2616, %2587 ], [ 0.000000e+00, %2579 ]
  %2621 = fcmp fast ogt float %2618, 0.000000e+00
  %2622 = fcmp fast ogt float %2619, 0.000000e+00
  %2623 = fcmp fast ogt float %2620, 0.000000e+00
  %2624 = call float @dx.op.unary.f32(i32 23, float %2618)  ; Log(value)
  %2625 = call float @dx.op.unary.f32(i32 23, float %2619)  ; Log(value)
  %2626 = call float @dx.op.unary.f32(i32 23, float %2620)  ; Log(value)
  %2627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2536, i32 undef)  ; BufferLoad(srv,index,wot)
  %2628 = extractvalue %dx.types.ResRet.i32 %2627, 0
  %2629 = lshr i32 %2628, 7
  %2630 = and i32 %2629, 32752
  %2631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2630)  ; LegacyF16ToF32(value)
  %2632 = fmul fast float %2624, 0xBFE62E4300000000
  %2633 = fmul fast float %2632, %2631
  %2634 = fmul fast float %2625, 0xBFE62E4300000000
  %2635 = fmul fast float %2634, %2631
  %2636 = fmul fast float %2626, 0xBFE62E4300000000
  %2637 = fmul fast float %2636, %2631
  %2638 = select i1 %2621, float %2633, float 1.270000e+02
  %2639 = select i1 %2622, float %2635, float 1.270000e+02
  %2640 = select i1 %2623, float %2637, float 1.270000e+02
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = and i32 %2642, 10240
  %2644 = icmp eq i32 %2643, 0
  br i1 %2644, label %2665, label %2645

; <label>:2645                                    ; preds = %2617
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 2048
  %2649 = icmp eq i32 %2648, 0
  br i1 %2649, label %2665, label %2650

; <label>:2650                                    ; preds = %2645
  %2651 = add i32 %61, 500
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = add i32 %2653, 0
  %2655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2656 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2655, %dx.types.Handle %113, float %2159, float %2160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2657 = extractvalue %dx.types.ResRet.f32 %2656, 3
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2536, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = shl i32 %2659, 4
  %2661 = and i32 %2660, 32752
  %2662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2661)  ; LegacyF16ToF32(value)
  %2663 = fmul fast float %2662, %2657
  %2664 = call float @dx.op.binary.f32(i32 35, float %2663, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2665

; <label>:2665                                    ; preds = %2650, %2645, %2617
  %2666 = phi float [ %2664, %2650 ], [ 0x3F70101020000000, %2645 ], [ 0x3F70101020000000, %2617 ]
  %2667 = add i32 %61, 128
  %2668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2667, i32 undef)  ; BufferLoad(srv,index,wot)
  %2669 = extractvalue %dx.types.ResRet.i32 %2668, 0
  %2670 = and i32 %2669, 255
  %2671 = uitofp i32 %2670 to float
  %2672 = lshr i32 %2669, 8
  %2673 = and i32 %2672, 255
  %2674 = uitofp i32 %2673 to float
  %2675 = call float @dx.op.dot3.f32(i32 55, float %2452, float %2453, float %2454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2676 = fmul fast float %2674, %2675
  %2677 = fadd fast float %2676, %2671
  %2678 = fmul fast float %2677, 0x3F70101020000000
  %2679 = call float @dx.op.unary.f32(i32 7, float %2678)  ; Saturate(value)
  br i1 %2051, label %2680, label %2715

; <label>:2680                                    ; preds = %2665
  %2681 = fmul fast float %2666, 2.000000e+00
  %2682 = fcmp fast olt float %2638, 1.270000e+02
  %2683 = fcmp fast olt float %2639, 1.270000e+02
  %2684 = fcmp fast olt float %2640, 1.270000e+02
  %2685 = fmul fast float %2638, 0xBFF7154760000000
  %2686 = fmul fast float %2685, %2681
  %2687 = fmul fast float %2639, 0xBFF7154760000000
  %2688 = fmul fast float %2687, %2681
  %2689 = fmul fast float %2640, 0xBFF7154760000000
  %2690 = fmul fast float %2689, %2681
  %2691 = call float @dx.op.unary.f32(i32 21, float %2686)  ; Exp(value)
  %2692 = call float @dx.op.unary.f32(i32 21, float %2688)  ; Exp(value)
  %2693 = call float @dx.op.unary.f32(i32 21, float %2690)  ; Exp(value)
  %2694 = call float @dx.op.unary.f32(i32 7, float %2691)  ; Saturate(value)
  %2695 = call float @dx.op.unary.f32(i32 7, float %2692)  ; Saturate(value)
  %2696 = call float @dx.op.unary.f32(i32 7, float %2693)  ; Saturate(value)
  %2697 = fadd fast float %2694, -1.000000e+00
  %2698 = select i1 %2682, float %2697, float -1.000000e+00
  %2699 = fadd fast float %2695, -1.000000e+00
  %2700 = select i1 %2683, float %2699, float -1.000000e+00
  %2701 = fadd fast float %2696, -1.000000e+00
  %2702 = select i1 %2684, float %2701, float -1.000000e+00
  %2703 = fmul fast float %2698, %2232
  %2704 = fmul fast float %2700, %2232
  %2705 = fmul fast float %2702, %2232
  %2706 = fadd fast float %2703, 1.000000e+00
  %2707 = fadd fast float %2704, 1.000000e+00
  %2708 = fadd fast float %2705, 1.000000e+00
  %2709 = fmul fast float %2706, %2036
  %2710 = fmul fast float %2707, %2037
  %2711 = fmul fast float %2708, %2038
  %2712 = fmul fast float %2706, %2039
  %2713 = fmul fast float %2707, %2040
  %2714 = fmul fast float %2708, %2041
  br label %2715

; <label>:2715                                    ; preds = %2680, %2665
  %2716 = phi float [ %2709, %2680 ], [ %2036, %2665 ]
  %2717 = phi float [ %2710, %2680 ], [ %2037, %2665 ]
  %2718 = phi float [ %2711, %2680 ], [ %2038, %2665 ]
  %2719 = phi float [ %2712, %2680 ], [ %2039, %2665 ]
  %2720 = phi float [ %2713, %2680 ], [ %2040, %2665 ]
  %2721 = phi float [ %2714, %2680 ], [ %2041, %2665 ]
  %2722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.i32 %2722, 0
  %2724 = and i32 %2723, 3
  %2725 = icmp eq i32 %2724, 3
  br i1 %2725, label %2804, label %2726

; <label>:2726                                    ; preds = %2715
  %2727 = and i32 %2723, 16
  %2728 = icmp ne i32 %2727, 0
  %2729 = select i1 %2728, float %2232, float 0.000000e+00
  %2730 = icmp eq i32 %2724, 0
  br i1 %2730, label %2731, label %2759

; <label>:2731                                    ; preds = %2726
  %2732 = and i32 %2723, 64
  %2733 = icmp ne i32 %2732, 0
  %2734 = select i1 %2733, float %2232, float 0.000000e+00
  %2735 = fsub fast float %2452, %2716
  %2736 = fsub fast float %2453, %2717
  %2737 = fsub fast float %2454, %2718
  %2738 = fmul fast float %2729, %2735
  %2739 = fmul fast float %2729, %2736
  %2740 = fmul fast float %2729, %2737
  %2741 = fadd fast float %2738, %2716
  %2742 = fadd fast float %2739, %2717
  %2743 = fadd fast float %2740, %2718
  %2744 = fsub fast float %2438, %2045
  %2745 = fmul fast float %2729, %2744
  %2746 = fadd fast float %2745, %2045
  %2747 = fsub fast float %2580, %2719
  %2748 = fsub fast float %2581, %2720
  %2749 = fsub fast float %2582, %2721
  %2750 = fmul fast float %2734, %2747
  %2751 = fmul fast float %2734, %2748
  %2752 = fmul fast float %2734, %2749
  %2753 = fadd fast float %2750, %2719
  %2754 = fadd fast float %2751, %2720
  %2755 = fadd fast float %2752, %2721
  %2756 = fsub fast float %2679, %2049
  %2757 = fmul fast float %2729, %2756
  %2758 = fadd fast float %2757, %2049
  br label %2804

; <label>:2759                                    ; preds = %2726
  %2760 = icmp eq i32 %2724, 1
  br i1 %2760, label %2761, label %2774

; <label>:2761                                    ; preds = %2759
  %2762 = fadd fast float %2452, -1.000000e+00
  %2763 = fadd fast float %2453, -1.000000e+00
  %2764 = fadd fast float %2454, -1.000000e+00
  %2765 = fmul fast float %2729, %2762
  %2766 = fmul fast float %2729, %2763
  %2767 = fmul fast float %2729, %2764
  %2768 = fadd fast float %2765, 1.000000e+00
  %2769 = fadd fast float %2766, 1.000000e+00
  %2770 = fadd fast float %2767, 1.000000e+00
  %2771 = fmul fast float %2768, %2716
  %2772 = fmul fast float %2769, %2717
  %2773 = fmul fast float %2770, %2718
  br label %2804

; <label>:2774                                    ; preds = %2759
  %2775 = icmp eq i32 %2724, 2
  br i1 %2775, label %2776, label %2804

; <label>:2776                                    ; preds = %2774
  %2777 = call float @dx.op.unary.f32(i32 24, float %2452)  ; Sqrt(value)
  %2778 = call float @dx.op.unary.f32(i32 24, float %2453)  ; Sqrt(value)
  %2779 = call float @dx.op.unary.f32(i32 24, float %2454)  ; Sqrt(value)
  %2780 = fadd fast float %2777, -5.000000e-01
  %2781 = fadd fast float %2778, -5.000000e-01
  %2782 = fadd fast float %2779, -5.000000e-01
  %2783 = fmul fast float %2780, %2729
  %2784 = fmul fast float %2781, %2729
  %2785 = fmul fast float %2782, %2729
  %2786 = fadd fast float %2783, 5.000000e-01
  %2787 = fadd fast float %2784, 5.000000e-01
  %2788 = fadd fast float %2785, 5.000000e-01
  %2789 = fmul fast float %2786, 2.000000e+00
  %2790 = fsub fast float 1.000000e+00, %2789
  %2791 = fmul fast float %2790, %2716
  %2792 = fadd fast float %2791, %2789
  %2793 = fmul fast float %2792, %2716
  %2794 = fmul fast float %2787, 2.000000e+00
  %2795 = fsub fast float 1.000000e+00, %2794
  %2796 = fmul fast float %2795, %2717
  %2797 = fadd fast float %2796, %2794
  %2798 = fmul fast float %2797, %2717
  %2799 = fmul fast float %2788, 2.000000e+00
  %2800 = fsub fast float 1.000000e+00, %2799
  %2801 = fmul fast float %2800, %2718
  %2802 = fadd fast float %2801, %2799
  %2803 = fmul fast float %2802, %2718
  br label %2804

; <label>:2804                                    ; preds = %2776, %2774, %2761, %2731, %2715
  %2805 = phi float [ %2716, %2715 ], [ %2793, %2776 ], [ %2716, %2774 ], [ %2771, %2761 ], [ %2741, %2731 ]
  %2806 = phi float [ %2717, %2715 ], [ %2798, %2776 ], [ %2717, %2774 ], [ %2772, %2761 ], [ %2742, %2731 ]
  %2807 = phi float [ %2718, %2715 ], [ %2803, %2776 ], [ %2718, %2774 ], [ %2773, %2761 ], [ %2743, %2731 ]
  %2808 = phi float [ %2719, %2715 ], [ %2719, %2776 ], [ %2719, %2774 ], [ %2719, %2761 ], [ %2753, %2731 ]
  %2809 = phi float [ %2720, %2715 ], [ %2720, %2776 ], [ %2720, %2774 ], [ %2720, %2761 ], [ %2754, %2731 ]
  %2810 = phi float [ %2721, %2715 ], [ %2721, %2776 ], [ %2721, %2774 ], [ %2721, %2761 ], [ %2755, %2731 ]
  %2811 = phi float [ %2045, %2715 ], [ %2045, %2776 ], [ %2045, %2774 ], [ %2045, %2761 ], [ %2746, %2731 ]
  %2812 = phi float [ %2049, %2715 ], [ %2049, %2776 ], [ %2049, %2774 ], [ %2049, %2761 ], [ %2758, %2731 ]
  %2813 = and i32 %2723, 12
  %2814 = icmp eq i32 %2813, 12
  br i1 %2814, label %2921, label %2815

; <label>:2815                                    ; preds = %2804
  %2816 = and i32 %2723, 2097184
  %2817 = icmp eq i32 %2816, 2097184
  %2818 = select i1 %2817, float %2232, float 0.000000e+00
  %2819 = and i32 %2723, 4194336
  %2820 = icmp eq i32 %2819, 4194336
  %2821 = select i1 %2820, float %2232, float 0.000000e+00
  %2822 = and i32 %2723, 8388640
  %2823 = icmp eq i32 %2822, 8388640
  %2824 = select i1 %2823, float %2232, float 0.000000e+00
  %2825 = and i32 %2723, 1024
  %2826 = icmp ne i32 %2825, 0
  %2827 = select i1 %2826, float %2232, float 0.000000e+00
  %2828 = and i32 %2723, 2048
  %2829 = icmp ne i32 %2828, 0
  %2830 = select i1 %2829, float %2232, float 0.000000e+00
  %2831 = icmp eq i32 %2813, 0
  br i1 %2831, label %2832, label %2857

; <label>:2832                                    ; preds = %2815
  %2833 = fsub fast float %2533, %2034
  %2834 = fsub fast float %2534, %2035
  %2835 = fmul fast float %2818, %2833
  %2836 = fmul fast float %2818, %2834
  %2837 = fadd fast float %2835, %2034
  %2838 = fadd fast float %2836, %2035
  %2839 = fsub fast float %2535, %2047
  %2840 = fmul fast float %2821, %2839
  %2841 = fadd fast float %2840, %2047
  %2842 = fsub fast float %2532, %2046
  %2843 = fmul fast float %2824, %2842
  %2844 = fadd fast float %2843, %2046
  %2845 = fsub fast float %2638, %2042
  %2846 = fsub fast float %2639, %2043
  %2847 = fsub fast float %2640, %2044
  %2848 = fmul fast float %2827, %2845
  %2849 = fmul fast float %2827, %2846
  %2850 = fmul fast float %2827, %2847
  %2851 = fadd fast float %2848, %2042
  %2852 = fadd fast float %2849, %2043
  %2853 = fadd fast float %2850, %2044
  %2854 = fsub fast float %2666, %2048
  %2855 = fmul fast float %2830, %2854
  %2856 = fadd fast float %2855, %2048
  br label %2921

; <label>:2857                                    ; preds = %2815
  %2858 = icmp eq i32 %2813, 4
  br i1 %2858, label %2859, label %2899

; <label>:2859                                    ; preds = %2857
  %2860 = fmul fast float %2818, %2533
  %2861 = fmul fast float %2818, %2534
  %2862 = fadd fast float %2860, %2034
  %2863 = fadd fast float %2861, %2035
  %2864 = call float @dx.op.binary.f32(i32 36, float %2047, float %2535)  ; FMin(a,b)
  %2865 = fsub fast float %2864, %2047
  %2866 = fmul fast float %2865, %2821
  %2867 = fadd fast float %2866, %2047
  %2868 = fadd fast float %2532, %2046
  %2869 = fmul fast float %2868, 0x3FF337FAE0000000
  %2870 = fmul fast float %2046, %2046
  %2871 = fmul fast float %2532, %2532
  %2872 = fadd fast float %2871, %2870
  %2873 = fmul fast float %2872, 0x3FE5152B00000000
  %2874 = fmul fast float %2046, 0xBFCC1F85E0000000
  %2875 = fmul fast float %2874, %2532
  %2876 = fadd fast float %2875, 0xBFE1363700000000
  %2877 = fadd fast float %2876, %2869
  %2878 = fsub fast float %2877, %2873
  %2879 = fmul fast float %2868, 0x3FBA6F0D00000000
  %2880 = fmul fast float %2872, 0x3FD0432880000000
  %2881 = fmul fast float %2046, 0xBFEF110800000000
  %2882 = fmul fast float %2881, %2532
  %2883 = fadd fast float %2882, 1.000000e+00
  %2884 = fsub fast float %2883, %2879
  %2885 = fadd fast float %2884, %2880
  %2886 = fdiv fast float %2878, %2885
  %2887 = call float @dx.op.unary.f32(i32 7, float %2886)  ; Saturate(value)
  %2888 = fsub fast float %2887, %2046
  %2889 = fmul fast float %2888, %2824
  %2890 = fadd fast float %2889, %2046
  %2891 = fmul fast float %2827, %2638
  %2892 = fmul fast float %2827, %2639
  %2893 = fmul fast float %2827, %2640
  %2894 = fadd fast float %2891, %2042
  %2895 = fadd fast float %2892, %2043
  %2896 = fadd fast float %2893, %2044
  %2897 = fmul fast float %2830, %2666
  %2898 = fadd fast float %2897, %2048
  br label %2921

; <label>:2899                                    ; preds = %2857
  %2900 = icmp eq i32 %2813, 8
  br i1 %2900, label %2901, label %2921

; <label>:2901                                    ; preds = %2899
  %2902 = fmul fast float %2818, %2533
  %2903 = fmul fast float %2818, %2534
  %2904 = fadd fast float %2902, %2034
  %2905 = fadd fast float %2903, %2035
  %2906 = call float @dx.op.binary.f32(i32 36, float %2047, float %2535)  ; FMin(a,b)
  %2907 = fsub fast float %2906, %2047
  %2908 = fmul fast float %2907, %2821
  %2909 = fadd fast float %2908, %2047
  %2910 = fsub fast float %2532, %2046
  %2911 = fmul fast float %2824, %2910
  %2912 = fadd fast float %2911, %2046
  %2913 = fmul fast float %2827, %2638
  %2914 = fmul fast float %2827, %2639
  %2915 = fmul fast float %2827, %2640
  %2916 = fadd fast float %2913, %2042
  %2917 = fadd fast float %2914, %2043
  %2918 = fadd fast float %2915, %2044
  %2919 = fmul fast float %2830, %2666
  %2920 = fadd fast float %2919, %2048
  br label %2921

; <label>:2921                                    ; preds = %2901, %2899, %2859, %2832, %2804, %2231, %2050, %2033
  %2922 = phi float [ %2034, %2804 ], [ %2034, %2231 ], [ %2034, %2033 ], [ %2904, %2901 ], [ %2034, %2899 ], [ %2862, %2859 ], [ %2837, %2832 ], [ %2034, %2050 ]
  %2923 = phi float [ %2035, %2804 ], [ %2035, %2231 ], [ %2035, %2033 ], [ %2905, %2901 ], [ %2035, %2899 ], [ %2863, %2859 ], [ %2838, %2832 ], [ %2035, %2050 ]
  %2924 = phi float [ %2805, %2804 ], [ %2036, %2231 ], [ %2036, %2033 ], [ %2805, %2901 ], [ %2805, %2899 ], [ %2805, %2859 ], [ %2805, %2832 ], [ %2036, %2050 ]
  %2925 = phi float [ %2806, %2804 ], [ %2037, %2231 ], [ %2037, %2033 ], [ %2806, %2901 ], [ %2806, %2899 ], [ %2806, %2859 ], [ %2806, %2832 ], [ %2037, %2050 ]
  %2926 = phi float [ %2807, %2804 ], [ %2038, %2231 ], [ %2038, %2033 ], [ %2807, %2901 ], [ %2807, %2899 ], [ %2807, %2859 ], [ %2807, %2832 ], [ %2038, %2050 ]
  %2927 = phi float [ %2808, %2804 ], [ %2039, %2231 ], [ %2039, %2033 ], [ %2808, %2901 ], [ %2808, %2899 ], [ %2808, %2859 ], [ %2808, %2832 ], [ %2039, %2050 ]
  %2928 = phi float [ %2809, %2804 ], [ %2040, %2231 ], [ %2040, %2033 ], [ %2809, %2901 ], [ %2809, %2899 ], [ %2809, %2859 ], [ %2809, %2832 ], [ %2040, %2050 ]
  %2929 = phi float [ %2810, %2804 ], [ %2041, %2231 ], [ %2041, %2033 ], [ %2810, %2901 ], [ %2810, %2899 ], [ %2810, %2859 ], [ %2810, %2832 ], [ %2041, %2050 ]
  %2930 = phi float [ %2042, %2804 ], [ %2042, %2231 ], [ %2042, %2033 ], [ %2916, %2901 ], [ %2042, %2899 ], [ %2894, %2859 ], [ %2851, %2832 ], [ %2042, %2050 ]
  %2931 = phi float [ %2043, %2804 ], [ %2043, %2231 ], [ %2043, %2033 ], [ %2917, %2901 ], [ %2043, %2899 ], [ %2895, %2859 ], [ %2852, %2832 ], [ %2043, %2050 ]
  %2932 = phi float [ %2044, %2804 ], [ %2044, %2231 ], [ %2044, %2033 ], [ %2918, %2901 ], [ %2044, %2899 ], [ %2896, %2859 ], [ %2853, %2832 ], [ %2044, %2050 ]
  %2933 = phi float [ %2811, %2804 ], [ %2045, %2231 ], [ %2045, %2033 ], [ %2811, %2901 ], [ %2811, %2899 ], [ %2811, %2859 ], [ %2811, %2832 ], [ %2045, %2050 ]
  %2934 = phi float [ %2046, %2804 ], [ %2046, %2231 ], [ %2046, %2033 ], [ %2912, %2901 ], [ %2046, %2899 ], [ %2890, %2859 ], [ %2844, %2832 ], [ %2046, %2050 ]
  %2935 = phi float [ %2047, %2804 ], [ %2047, %2231 ], [ %2047, %2033 ], [ %2909, %2901 ], [ %2047, %2899 ], [ %2867, %2859 ], [ %2841, %2832 ], [ %2047, %2050 ]
  %2936 = phi float [ %2048, %2804 ], [ %2048, %2231 ], [ %2048, %2033 ], [ %2920, %2901 ], [ %2048, %2899 ], [ %2898, %2859 ], [ %2856, %2832 ], [ %2048, %2050 ]
  %2937 = phi float [ %2812, %2804 ], [ %2049, %2231 ], [ %2049, %2033 ], [ %2812, %2901 ], [ %2812, %2899 ], [ %2812, %2859 ], [ %2812, %2832 ], [ %2049, %2050 ]
  br i1 %463, label %3809, label %2938

; <label>:2938                                    ; preds = %2921
  %2939 = icmp ult i32 %517, 4
  %2940 = add i32 %61, 72
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = add i32 %61, 76
  %2944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2945 = extractvalue %dx.types.ResRet.i32 %2944, 0
  %2946 = or i32 %2945, %2942
  %2947 = icmp eq i32 %2946, 0
  br i1 %2947, label %3809, label %2948

; <label>:2948                                    ; preds = %2938
  %2949 = and i32 %2942, 262144
  %2950 = icmp ne i32 %2949, 0
  %2951 = select i1 %2950, float %67, float 1.000000e+00
  %2952 = select i1 %2950, float %68, float 0.000000e+00
  %2953 = select i1 %2950, float %69, float 0.000000e+00
  %2954 = select i1 %2950, float %70, float 1.000000e+00
  %2955 = select i1 %2950, float %71, float %94
  %2956 = select i1 %2950, float %72, float %95
  %2957 = add i32 %61, 332
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = lshr i32 %2959, 16
  %2961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2960)  ; LegacyF16ToF32(value)
  %2962 = fmul fast float %2961, 0x3F50624DE0000000
  %2963 = add i32 %61, 136
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = lshr i32 %2965, 16
  %2967 = and i32 %2966, 255
  %2968 = lshr i32 %2965, 24
  %2969 = add i32 %61, 340
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = and i32 %2971, 65535
  %2973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2972)  ; LegacyF16ToF32(value)
  %2974 = lshr i32 %2971, 16
  %2975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2974)  ; LegacyF16ToF32(value)
  %2976 = add i32 %61, 80
  %2977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.i32 %2977, 0
  %2979 = lshr i32 %2978, 22
  %2980 = shl nuw nsw i32 %2979, 5
  %2981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2980)  ; LegacyF16ToF32(value)
  %2982 = shl i32 %2978, 4
  %2983 = and i32 %2982, 32752
  %2984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2983)  ; LegacyF16ToF32(value)
  %2985 = lshr i32 %2978, 7
  %2986 = and i32 %2985, 32752
  %2987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2986)  ; LegacyF16ToF32(value)
  %2988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2989 = extractvalue %dx.types.CBufRet.f32 %2988, 3
  %2990 = fmul fast float %2989, 1.000000e+03
  %2991 = fmul fast float %453, %2990
  %2992 = call float @dx.op.unary.f32(i32 22, float %2991)  ; Frc(value)
  %2993 = fadd fast float %2992, %443
  %2994 = fmul fast float %454, %2990
  %2995 = call float @dx.op.unary.f32(i32 22, float %2994)  ; Frc(value)
  %2996 = fadd fast float %2995, %445
  %2997 = fmul fast float %2962, %2990
  %2998 = call float @dx.op.unary.f32(i32 22, float %2997)  ; Frc(value)
  %2999 = fmul fast float %2998, 0x401921FB60000000
  %3000 = fadd fast float %2999, %2981
  %3001 = call float @dx.op.unary.f32(i32 13, float %3000)  ; Sin(value)
  %3002 = call float @dx.op.unary.f32(i32 12, float %3000)  ; Cos(value)
  %3003 = fsub fast float -0.000000e+00, %3001
  %3004 = fadd fast float %2955, -5.000000e-01
  %3005 = fadd fast float %2956, -5.000000e-01
  %3006 = fmul fast float %2973, %3004
  %3007 = fmul fast float %2975, %3005
  %3008 = fadd fast float %3006, 5.000000e-01
  %3009 = fadd fast float %3007, 5.000000e-01
  %3010 = fmul fast float %2984, %3008
  %3011 = fmul fast float %2987, %3009
  %3012 = fmul fast float %3002, %3010
  %3013 = call float @dx.op.tertiary.f32(i32 46, float %3003, float %3011, float %3012)  ; FMad(a,b,c)
  %3014 = fmul fast float %3001, %3010
  %3015 = call float @dx.op.tertiary.f32(i32 46, float %3002, float %3011, float %3014)  ; FMad(a,b,c)
  %3016 = fadd fast float %2993, %3013
  %3017 = fadd fast float %2996, %3015
  %3018 = icmp ugt i32 %2967, 1
  %3019 = icmp ugt i32 %2965, 33554431
  %3020 = or i1 %3019, %3018
  br i1 %3020, label %3021, label %3046

; <label>:3021                                    ; preds = %2948
  %3022 = add i32 %61, 276
  %3023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3022, i32 undef)  ; BufferLoad(srv,index,wot)
  %3024 = extractvalue %dx.types.ResRet.i32 %3023, 0
  %3025 = lshr i32 %3024, 16
  %3026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3025)  ; LegacyF16ToF32(value)
  %3027 = fmul fast float %2989, %3026
  %3028 = call float @dx.op.unary.f32(i32 22, float %3027)  ; Frc(value)
  %3029 = mul nuw nsw i32 %2967, %2968
  %3030 = uitofp i32 %3029 to float
  %3031 = fmul fast float %3028, %3030
  %3032 = call float @dx.op.unary.f32(i32 27, float %3031)  ; Round_ni(value)
  %3033 = fptoui float %3032 to i32
  %3034 = urem i32 %3033, %2967
  %3035 = udiv i32 %3033, %2968
  %3036 = call float @dx.op.unary.f32(i32 22, float %3016)  ; Frc(value)
  %3037 = call float @dx.op.unary.f32(i32 22, float %3017)  ; Frc(value)
  %3038 = uitofp i32 %3034 to float
  %3039 = uitofp i32 %3035 to float
  %3040 = fadd fast float %3036, %3038
  %3041 = fadd fast float %3037, %3039
  %3042 = uitofp i32 %2967 to float
  %3043 = uitofp i32 %2968 to float
  %3044 = fdiv fast float %3040, %3042
  %3045 = fdiv fast float %3041, %3043
  br label %3046

; <label>:3046                                    ; preds = %3021, %2948
  %3047 = phi float [ %3044, %3021 ], [ %3016, %2948 ]
  %3048 = phi float [ %3045, %3021 ], [ %3017, %2948 ]
  %3049 = and i32 %2942, 256
  %3050 = icmp eq i32 %3049, 0
  br i1 %3050, label %3097, label %3051

; <label>:3051                                    ; preds = %3046
  %3052 = add i32 %61, 452
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = add i32 %3054, 0
  %3056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3055, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3057 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3056, %dx.types.Handle %113, float %3047, float %3048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3058 = extractvalue %dx.types.ResRet.f32 %3057, 0
  %3059 = add i32 %61, 148
  %3060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3061 = extractvalue %dx.types.ResRet.i32 %3060, 0
  %3062 = shl i32 %3061, 4
  %3063 = and i32 %3062, 32752
  %3064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3063)  ; LegacyF16ToF32(value)
  %3065 = lshr i32 %3061, 7
  %3066 = and i32 %3065, 32752
  %3067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3066)  ; LegacyF16ToF32(value)
  %3068 = fsub fast float 1.000000e+00, %512
  %3069 = call float @dx.op.binary.f32(i32 35, float %3068, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3070 = bitcast float %512 to i32
  %3071 = sitofp i32 %3070 to float
  %3072 = fadd fast float %3071, 0xC1CFBF8940000000
  %3073 = fmul fast float %3067, %3072
  %3074 = fadd fast float %3073, 0x41CFBF8940000000
  %3075 = fptosi float %3074 to i32
  %3076 = bitcast i32 %3075 to float
  %3077 = bitcast float %3069 to i32
  %3078 = sitofp i32 %3077 to float
  %3079 = fadd fast float %3078, 0xC1CFBF8940000000
  %3080 = fmul fast float %3079, %3067
  %3081 = fadd fast float %3080, 0x41CFBF8940000000
  %3082 = fptosi float %3081 to i32
  %3083 = bitcast i32 %3082 to float
  %3084 = fmul fast float %3076, %3064
  %3085 = fmul fast float %3083, %3064
  %3086 = fsub fast float %3069, %3084
  %3087 = fadd fast float %3085, %3069
  %3088 = call float @dx.op.unary.f32(i32 7, float %3086)  ; Saturate(value)
  %3089 = call float @dx.op.unary.f32(i32 7, float %3087)  ; Saturate(value)
  %3090 = fsub fast float %3058, %3088
  %3091 = fsub fast float %3089, %3088
  %3092 = bitcast float %3091 to i32
  %3093 = sub nsw i32 2129859010, %3092
  %3094 = bitcast i32 %3093 to float
  %3095 = fmul fast float %3094, %3090
  %3096 = call float @dx.op.unary.f32(i32 7, float %3095)  ; Saturate(value)
  br label %3097

; <label>:3097                                    ; preds = %3051, %3046
  %3098 = phi float [ %3096, %3051 ], [ %512, %3046 ]
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = and i32 %3100, 128
  %3102 = icmp eq i32 %3101, 0
  br i1 %3102, label %3119, label %3103

; <label>:3103                                    ; preds = %3097
  %3104 = add i32 %61, 436
  %3105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3104, i32 undef)  ; BufferLoad(srv,index,wot)
  %3106 = extractvalue %dx.types.ResRet.i32 %3105, 0
  %3107 = add i32 %3106, 0
  %3108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3107, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3109 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3108, %dx.types.Handle %113, float %3047, float %3048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3110 = extractvalue %dx.types.ResRet.f32 %3109, 0
  %3111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.i32 %3111, 0
  %3113 = and i32 %3112, 524288
  %3114 = icmp ne i32 %3113, 0
  %3115 = fcmp fast ogt float %3110, 0x3FE0101020000000
  %3116 = select i1 %3115, float 1.000000e+00, float 0.000000e+00
  %3117 = select i1 %3114, float %3116, float %3110
  %3118 = fmul fast float %3117, %3098
  br label %3119

; <label>:3119                                    ; preds = %3103, %3097
  %3120 = phi float [ %3118, %3103 ], [ %3098, %3097 ]
  %3121 = fcmp fast ult float %3120, 0x3F70101020000000
  br i1 %3121, label %3809, label %3122

; <label>:3122                                    ; preds = %3119
  %3123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = and i32 %3124, 16
  %3126 = icmp eq i32 %3125, 0
  br i1 %3126, label %3325, label %3127

; <label>:3127                                    ; preds = %3122
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = add i32 %61, 388
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = add i32 %3132, 0
  %3134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3133, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3135 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3134, %dx.types.Handle %112, float %3047, float %3048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3136 = extractvalue %dx.types.ResRet.f32 %3135, 0
  %3137 = extractvalue %dx.types.ResRet.f32 %3135, 1
  %3138 = extractvalue %dx.types.ResRet.f32 %3135, 2
  %3139 = extractvalue %dx.types.ResRet.f32 %3135, 3
  %3140 = and i32 %3129, 255
  %3141 = uitofp i32 %3140 to float
  %3142 = lshr i32 %3129, 8
  %3143 = and i32 %3142, 255
  %3144 = uitofp i32 %3143 to float
  %3145 = fmul fast float %3139, %3141
  %3146 = fadd fast float %3145, %3144
  %3147 = fmul fast float %3146, 0x3F70101000000000
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = and i32 %3149, 512
  %3151 = icmp eq i32 %3150, 0
  br i1 %3151, label %3160, label %3152

; <label>:3152                                    ; preds = %3127
  %3153 = add i32 %61, 472
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = add i32 %3155, 0
  %3157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3156, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3158 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3157, %dx.types.Handle %113, float %3047, float %3048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3159 = extractvalue %dx.types.ResRet.f32 %3158, 0
  br label %3160

; <label>:3160                                    ; preds = %3152, %3127
  %3161 = phi float [ %3159, %3152 ], [ 1.000000e+00, %3127 ]
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, 33554432
  %3165 = icmp eq i32 %3164, 0
  br i1 %3165, label %3272, label %3166

; <label>:3166                                    ; preds = %3160
  %3167 = add i32 %61, 272
  %3168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3167, i32 undef)  ; BufferLoad(srv,index,wot)
  %3169 = extractvalue %dx.types.ResRet.i32 %3168, 0
  %3170 = and i32 %3169, 65535
  %3171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3170)  ; LegacyF16ToF32(value)
  %3172 = lshr i32 %3169, 16
  %3173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3172)  ; LegacyF16ToF32(value)
  %3174 = add i32 %61, 276
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3174, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = and i32 %3176, 65535
  %3178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3177)  ; LegacyF16ToF32(value)
  %3179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.i32 %3179, 0
  %3181 = lshr i32 %3180, 24
  %3182 = uitofp i32 %3181 to float
  %3183 = fmul fast float %3182, 0x3F70101020000000
  %3184 = and i32 %3180, 255
  %3185 = uitofp i32 %3184 to float
  %3186 = fmul fast float %3185, 0x3F70101020000000
  %3187 = lshr i32 %3180, 8
  %3188 = and i32 %3187, 255
  %3189 = uitofp i32 %3188 to float
  %3190 = fmul fast float %3189, 0x3F70101020000000
  %3191 = lshr i32 %3180, 16
  %3192 = and i32 %3191, 255
  %3193 = uitofp i32 %3192 to float
  %3194 = fmul fast float %3193, 0x3F70101020000000
  %3195 = add i32 %61, 268
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = lshr i32 %3197, 24
  %3199 = uitofp i32 %3198 to float
  %3200 = fmul fast float %3199, 0x3F70101020000000
  %3201 = and i32 %3197, 255
  %3202 = uitofp i32 %3201 to float
  %3203 = fmul fast float %3202, 0x3F70101020000000
  %3204 = lshr i32 %3197, 8
  %3205 = and i32 %3204, 255
  %3206 = uitofp i32 %3205 to float
  %3207 = fmul fast float %3206, 0x3F70101020000000
  %3208 = lshr i32 %3197, 16
  %3209 = and i32 %3208, 255
  %3210 = uitofp i32 %3209 to float
  %3211 = fmul fast float %3210, 0x3F70101020000000
  %3212 = bitcast float %3136 to i32
  %3213 = ashr i32 %3212, 1
  %3214 = sub nsw i32 1597463174, %3213
  %3215 = bitcast i32 %3214 to float
  %3216 = fmul fast float %3136, 5.000000e-01
  %3217 = fmul fast float %3215, %3215
  %3218 = fmul fast float %3217, %3216
  %3219 = fsub fast float 1.500000e+00, %3218
  %3220 = fmul fast float %3215, %3136
  %3221 = fmul fast float %3220, %3219
  %3222 = bitcast float %3137 to i32
  %3223 = ashr i32 %3222, 1
  %3224 = sub nsw i32 1597463174, %3223
  %3225 = bitcast i32 %3224 to float
  %3226 = fmul fast float %3137, 5.000000e-01
  %3227 = fmul fast float %3225, %3225
  %3228 = fmul fast float %3227, %3226
  %3229 = fsub fast float 1.500000e+00, %3228
  %3230 = fmul fast float %3225, %3137
  %3231 = fmul fast float %3230, %3229
  %3232 = bitcast float %3138 to i32
  %3233 = ashr i32 %3232, 1
  %3234 = sub nsw i32 1597463174, %3233
  %3235 = bitcast i32 %3234 to float
  %3236 = fmul fast float %3138, 5.000000e-01
  %3237 = fmul fast float %3235, %3235
  %3238 = fmul fast float %3237, %3236
  %3239 = fsub fast float 1.500000e+00, %3238
  %3240 = fmul fast float %3235, %3138
  %3241 = fmul fast float %3240, %3239
  %3242 = fsub fast float %3221, %3203
  %3243 = fsub fast float %3231, %3207
  %3244 = fsub fast float %3241, %3211
  %3245 = fmul fast float %3242, %3171
  %3246 = fmul fast float %3243, %3173
  %3247 = fmul fast float %3244, %3178
  %3248 = fadd fast float %3245, %3186
  %3249 = fadd fast float %3246, %3190
  %3250 = fadd fast float %3247, %3194
  %3251 = call float @dx.op.unary.f32(i32 7, float %3248)  ; Saturate(value)
  %3252 = call float @dx.op.unary.f32(i32 7, float %3249)  ; Saturate(value)
  %3253 = call float @dx.op.unary.f32(i32 7, float %3250)  ; Saturate(value)
  %3254 = fmul fast float %3251, %3251
  %3255 = fmul fast float %3252, %3252
  %3256 = fmul fast float %3253, %3253
  %3257 = fsub fast float %3254, %3136
  %3258 = fsub fast float %3255, %3137
  %3259 = fsub fast float %3256, %3138
  %3260 = fmul fast float %3257, %3161
  %3261 = fmul fast float %3258, %3161
  %3262 = fmul fast float %3259, %3161
  %3263 = fadd fast float %3260, %3136
  %3264 = fadd fast float %3261, %3137
  %3265 = fadd fast float %3262, %3138
  %3266 = fadd fast float %3183, %3147
  %3267 = fsub fast float %3266, %3200
  %3268 = call float @dx.op.unary.f32(i32 7, float %3267)  ; Saturate(value)
  %3269 = fsub fast float %3268, %3147
  %3270 = fmul fast float %3269, %3161
  %3271 = fadd fast float %3270, %3147
  br label %3325

; <label>:3272                                    ; preds = %3160
  %3273 = and i32 %3163, 134217728
  %3274 = icmp eq i32 %3273, 0
  br i1 %3274, label %3309, label %3275

; <label>:3275                                    ; preds = %3272
  %3276 = call float @dx.op.unary.f32(i32 24, float %430)  ; Sqrt(value)
  %3277 = call float @dx.op.unary.f32(i32 24, float %434)  ; Sqrt(value)
  %3278 = call float @dx.op.unary.f32(i32 24, float %438)  ; Sqrt(value)
  %3279 = fadd fast float %3276, -5.000000e-01
  %3280 = fadd fast float %3277, -5.000000e-01
  %3281 = fadd fast float %3278, -5.000000e-01
  %3282 = fmul fast float %3279, %3161
  %3283 = fmul fast float %3280, %3161
  %3284 = fmul fast float %3281, %3161
  %3285 = fadd fast float %3282, 5.000000e-01
  %3286 = fadd fast float %3283, 5.000000e-01
  %3287 = fadd fast float %3284, 5.000000e-01
  %3288 = call float @dx.op.unary.f32(i32 24, float %3136)  ; Sqrt(value)
  %3289 = call float @dx.op.unary.f32(i32 24, float %3137)  ; Sqrt(value)
  %3290 = call float @dx.op.unary.f32(i32 24, float %3138)  ; Sqrt(value)
  %3291 = fmul fast float %3285, 2.000000e+00
  %3292 = fsub fast float 1.000000e+00, %3291
  %3293 = fmul fast float %3292, %3288
  %3294 = fadd fast float %3293, %3291
  %3295 = fmul fast float %3294, %3288
  %3296 = fmul fast float %3286, 2.000000e+00
  %3297 = fsub fast float 1.000000e+00, %3296
  %3298 = fmul fast float %3297, %3289
  %3299 = fadd fast float %3298, %3296
  %3300 = fmul fast float %3299, %3289
  %3301 = fmul fast float %3287, 2.000000e+00
  %3302 = fsub fast float 1.000000e+00, %3301
  %3303 = fmul fast float %3302, %3290
  %3304 = fadd fast float %3303, %3301
  %3305 = fmul fast float %3304, %3290
  %3306 = fmul fast float %3295, %3295
  %3307 = fmul fast float %3300, %3300
  %3308 = fmul fast float %3305, %3305
  br label %3325

; <label>:3309                                    ; preds = %3272
  %3310 = fmul fast float %430, %430
  %3311 = fmul fast float %434, %434
  %3312 = fmul fast float %438, %438
  %3313 = fadd fast float %3310, -1.000000e+00
  %3314 = fadd fast float %3311, -1.000000e+00
  %3315 = fadd fast float %3312, -1.000000e+00
  %3316 = fmul fast float %3161, %3313
  %3317 = fmul fast float %3161, %3314
  %3318 = fmul fast float %3161, %3315
  %3319 = fadd fast float %3316, 1.000000e+00
  %3320 = fadd fast float %3317, 1.000000e+00
  %3321 = fadd fast float %3318, 1.000000e+00
  %3322 = fmul fast float %3319, %3136
  %3323 = fmul fast float %3320, %3137
  %3324 = fmul fast float %3321, %3138
  br label %3325

; <label>:3325                                    ; preds = %3309, %3275, %3166, %3122
  %3326 = phi float [ %3271, %3166 ], [ %3147, %3275 ], [ %3147, %3309 ], [ 0x3FA23C0BE0000000, %3122 ]
  %3327 = phi float [ %3263, %3166 ], [ %3306, %3275 ], [ %3322, %3309 ], [ 1.000000e+00, %3122 ]
  %3328 = phi float [ %3264, %3166 ], [ %3307, %3275 ], [ %3323, %3309 ], [ 1.000000e+00, %3122 ]
  %3329 = phi float [ %3265, %3166 ], [ %3308, %3275 ], [ %3324, %3309 ], [ 1.000000e+00, %3122 ]
  %3330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3331 = extractvalue %dx.types.CBufRet.i32 %3330, 1
  %3332 = and i32 %3331, 1
  %3333 = icmp ne i32 %3332, 0
  %3334 = add i32 %61, 356
  %3335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3334, i32 undef)  ; BufferLoad(srv,index,wot)
  %3336 = extractvalue %dx.types.ResRet.i32 %3335, 0
  %3337 = and i32 %3336, 32
  %3338 = icmp ne i32 %3337, 0
  %3339 = and i1 %3333, %3338
  %3340 = select i1 %3339, float 1.000000e+00, float %3327
  %3341 = select i1 %3339, float 0x3FD3333340000000, float %3328
  %3342 = select i1 %3339, float 0x3FD3333340000000, float %3329
  %3343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.i32 %3343, 0
  %3345 = and i32 %3344, 32
  %3346 = icmp eq i32 %3345, 0
  br i1 %3346, label %3419, label %3347

; <label>:3347                                    ; preds = %3325
  %3348 = add i32 %61, 140
  %3349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3348, i32 undef)  ; BufferLoad(srv,index,wot)
  %3350 = extractvalue %dx.types.ResRet.i32 %3349, 0
  %3351 = add i32 %61, 404
  %3352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3351, i32 undef)  ; BufferLoad(srv,index,wot)
  %3353 = extractvalue %dx.types.ResRet.i32 %3352, 0
  %3354 = add i32 %3353, 0
  %3355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3354, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3356 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3355, %dx.types.Handle %112, float %3047, float %3048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3357 = extractvalue %dx.types.ResRet.f32 %3356, 0
  %3358 = extractvalue %dx.types.ResRet.f32 %3356, 1
  %3359 = extractvalue %dx.types.ResRet.f32 %3356, 2
  %3360 = extractvalue %dx.types.ResRet.f32 %3356, 3
  %3361 = and i32 %3350, 255
  %3362 = uitofp i32 %3361 to float
  %3363 = lshr i32 %3350, 8
  %3364 = and i32 %3363, 255
  %3365 = uitofp i32 %3364 to float
  %3366 = lshr i32 %3350, 16
  %3367 = and i32 %3366, 255
  %3368 = uitofp i32 %3367 to float
  %3369 = fmul fast float %3368, 0x3F70101000000000
  %3370 = fmul fast float %3357, %3362
  %3371 = fadd fast float %3370, %3365
  %3372 = fmul fast float %3371, 0x3F70101000000000
  %3373 = fadd fast float %3358, -5.000000e-01
  %3374 = fadd fast float %3360, -5.000000e-01
  %3375 = fmul fast float %3373, %3369
  %3376 = fmul fast float %3374, %3369
  %3377 = fadd fast float %3375, 5.000000e-01
  %3378 = fadd fast float %3376, 5.000000e-01
  %3379 = fmul fast float %3377, 2.000000e+00
  %3380 = fadd fast float %3379, -1.000000e+00
  %3381 = fmul fast float %3378, 2.000000e+00
  %3382 = fadd fast float %3381, -1.000000e+00
  %3383 = fadd fast float %3380, %3382
  %3384 = fmul fast float %3383, 5.000000e-01
  %3385 = fsub fast float %3380, %3382
  %3386 = fmul fast float %3385, 5.000000e-01
  %3387 = call float @dx.op.unary.f32(i32 6, float %3384)  ; FAbs(value)
  %3388 = fsub fast float 1.000000e+00, %3387
  %3389 = call float @dx.op.unary.f32(i32 6, float %3386)  ; FAbs(value)
  %3390 = fsub fast float %3388, %3389
  %3391 = call float @dx.op.dot3.f32(i32 55, float %3384, float %3386, float %3390, float %3384, float %3386, float %3390)  ; Dot3(ax,ay,az,bx,by,bz)
  %3392 = call float @dx.op.unary.f32(i32 25, float %3391)  ; Rsqrt(value)
  %3393 = fmul fast float %3384, %3392
  %3394 = fmul fast float %3386, %3392
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 67108864
  %3398 = icmp eq i32 %3397, 0
  br i1 %3398, label %3415, label %3399

; <label>:3399                                    ; preds = %3347
  %3400 = add i32 %61, 328
  %3401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.i32 %3401, 0
  %3403 = and i32 %3402, 65535
  %3404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3403)  ; LegacyF16ToF32(value)
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2957, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = and i32 %3406, 65535
  %3408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3407)  ; LegacyF16ToF32(value)
  %3409 = lshr i32 %3402, 16
  %3410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3409)  ; LegacyF16ToF32(value)
  %3411 = fsub fast float %3372, %3410
  %3412 = fmul fast float %3411, %3404
  %3413 = fadd fast float %3412, %3408
  %3414 = call float @dx.op.unary.f32(i32 7, float %3413)  ; Saturate(value)
  br label %3415

; <label>:3415                                    ; preds = %3399, %3347
  %3416 = phi float [ %3414, %3399 ], [ %3372, %3347 ]
  %3417 = call float @dx.op.dot2.f32(i32 54, float %3393, float %3394, float %2951, float %2952)  ; Dot2(ax,ay,bx,by)
  %3418 = call float @dx.op.dot2.f32(i32 54, float %3393, float %3394, float %2953, float %2954)  ; Dot2(ax,ay,bx,by)
  br label %3419

; <label>:3419                                    ; preds = %3415, %3325
  %3420 = phi float [ %3416, %3415 ], [ 0x3FD6666660000000, %3325 ]
  %3421 = phi float [ %3417, %3415 ], [ 0.000000e+00, %3325 ]
  %3422 = phi float [ %3418, %3415 ], [ 0.000000e+00, %3325 ]
  %3423 = phi float [ %3359, %3415 ], [ 1.000000e+00, %3325 ]
  %3424 = add i32 %61, 208
  %3425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.i32 %3425, 0
  %3427 = lshr i32 %3426, 22
  %3428 = shl nuw nsw i32 %3427, 5
  %3429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3428)  ; LegacyF16ToF32(value)
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = and i32 %3431, 64
  %3433 = icmp eq i32 %3432, 0
  br i1 %3433, label %3467, label %3434

; <label>:3434                                    ; preds = %3419
  %3435 = add i32 %61, 420
  %3436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3435, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.i32 %3436, 0
  %3438 = add i32 %3437, 0
  %3439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3438, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = and i32 %3441, 131072
  %3443 = icmp eq i32 %3442, 0
  %3444 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3439, %dx.types.Handle %112, float %3047, float %3048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3445 = extractvalue %dx.types.ResRet.f32 %3444, 0
  %3446 = extractvalue %dx.types.ResRet.f32 %3444, 1
  %3447 = extractvalue %dx.types.ResRet.f32 %3444, 2
  %3448 = fmul fast float %3445, %418
  %3449 = fmul fast float %3446, %421
  %3450 = fmul fast float %3447, %424
  br i1 %3443, label %3457, label %3451

; <label>:3451                                    ; preds = %3434
  %3452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3453 = extractvalue %dx.types.CBufRet.f32 %3452, 0
  %3454 = fmul fast float %3453, %3448
  %3455 = fmul fast float %3453, %3449
  %3456 = fmul fast float %3453, %3450
  br label %3457

; <label>:3457                                    ; preds = %3451, %3434
  %3458 = phi float [ %3454, %3451 ], [ %3448, %3434 ]
  %3459 = phi float [ %3455, %3451 ], [ %3449, %3434 ]
  %3460 = phi float [ %3456, %3451 ], [ %3450, %3434 ]
  %3461 = fmul fast float %3458, %3429
  %3462 = select i1 %275, float %3461, float %3458
  %3463 = call float @dx.op.dot3.f32(i32 55, float %3462, float %3459, float %3460, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3464 = select i1 %275, float 0.000000e+00, float %3458
  %3465 = select i1 %275, float %3463, float %3459
  %3466 = select i1 %275, float 0.000000e+00, float %3460
  br label %3467

; <label>:3467                                    ; preds = %3457, %3419
  %3468 = phi float [ %3464, %3457 ], [ 0.000000e+00, %3419 ]
  %3469 = phi float [ %3465, %3457 ], [ 0.000000e+00, %3419 ]
  %3470 = phi float [ %3466, %3457 ], [ 0.000000e+00, %3419 ]
  %3471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.i32 %3471, 0
  %3473 = and i32 %3472, 1024
  %3474 = icmp eq i32 %3473, 0
  br i1 %3474, label %3505, label %3475

; <label>:3475                                    ; preds = %3467
  %3476 = add i32 %61, 200
  %3477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.i32 %3477, 0
  %3479 = and i32 %3478, 255
  %3480 = uitofp i32 %3479 to float
  %3481 = fmul fast float %3480, 0x3F70101020000000
  %3482 = lshr i32 %3478, 8
  %3483 = and i32 %3482, 255
  %3484 = uitofp i32 %3483 to float
  %3485 = fmul fast float %3484, 0x3F70101020000000
  %3486 = lshr i32 %3478, 16
  %3487 = and i32 %3486, 255
  %3488 = uitofp i32 %3487 to float
  %3489 = fmul fast float %3488, 0x3F70101020000000
  %3490 = fmul fast float %3481, %3481
  %3491 = fmul fast float %3485, %3485
  %3492 = fmul fast float %3489, %3489
  %3493 = add i32 %61, 488
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = add i32 %3495, 0
  %3497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3496, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3498 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3497, %dx.types.Handle %113, float %3047, float %3048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3499 = extractvalue %dx.types.ResRet.f32 %3498, 0
  %3500 = extractvalue %dx.types.ResRet.f32 %3498, 1
  %3501 = extractvalue %dx.types.ResRet.f32 %3498, 2
  %3502 = fmul fast float %3490, %3499
  %3503 = fmul fast float %3491, %3500
  %3504 = fmul fast float %3492, %3501
  br label %3505

; <label>:3505                                    ; preds = %3475, %3467
  %3506 = phi float [ %3502, %3475 ], [ 0.000000e+00, %3467 ]
  %3507 = phi float [ %3503, %3475 ], [ 0.000000e+00, %3467 ]
  %3508 = phi float [ %3504, %3475 ], [ 0.000000e+00, %3467 ]
  %3509 = fcmp fast ogt float %3506, 0.000000e+00
  %3510 = fcmp fast ogt float %3507, 0.000000e+00
  %3511 = fcmp fast ogt float %3508, 0.000000e+00
  %3512 = call float @dx.op.unary.f32(i32 23, float %3506)  ; Log(value)
  %3513 = call float @dx.op.unary.f32(i32 23, float %3507)  ; Log(value)
  %3514 = call float @dx.op.unary.f32(i32 23, float %3508)  ; Log(value)
  %3515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.i32 %3515, 0
  %3517 = lshr i32 %3516, 7
  %3518 = and i32 %3517, 32752
  %3519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3518)  ; LegacyF16ToF32(value)
  %3520 = fmul fast float %3512, 0xBFE62E4300000000
  %3521 = fmul fast float %3520, %3519
  %3522 = fmul fast float %3513, 0xBFE62E4300000000
  %3523 = fmul fast float %3522, %3519
  %3524 = fmul fast float %3514, 0xBFE62E4300000000
  %3525 = fmul fast float %3524, %3519
  %3526 = select i1 %3509, float %3521, float 1.270000e+02
  %3527 = select i1 %3510, float %3523, float 1.270000e+02
  %3528 = select i1 %3511, float %3525, float 1.270000e+02
  %3529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.i32 %3529, 0
  %3531 = and i32 %3530, 10240
  %3532 = icmp eq i32 %3531, 0
  br i1 %3532, label %3553, label %3533

; <label>:3533                                    ; preds = %3505
  %3534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3535 = extractvalue %dx.types.ResRet.i32 %3534, 0
  %3536 = and i32 %3535, 2048
  %3537 = icmp eq i32 %3536, 0
  br i1 %3537, label %3553, label %3538

; <label>:3538                                    ; preds = %3533
  %3539 = add i32 %61, 504
  %3540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.i32 %3540, 0
  %3542 = add i32 %3541, 0
  %3543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3544 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3543, %dx.types.Handle %113, float %3047, float %3048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3545 = extractvalue %dx.types.ResRet.f32 %3544, 3
  %3546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3547 = extractvalue %dx.types.ResRet.i32 %3546, 0
  %3548 = shl i32 %3547, 4
  %3549 = and i32 %3548, 32752
  %3550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3549)  ; LegacyF16ToF32(value)
  %3551 = fmul fast float %3550, %3545
  %3552 = call float @dx.op.binary.f32(i32 35, float %3551, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3553

; <label>:3553                                    ; preds = %3538, %3533, %3505
  %3554 = phi float [ %3552, %3538 ], [ 0x3F70101020000000, %3533 ], [ 0x3F70101020000000, %3505 ]
  %3555 = add i32 %61, 144
  %3556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3555, i32 undef)  ; BufferLoad(srv,index,wot)
  %3557 = extractvalue %dx.types.ResRet.i32 %3556, 0
  %3558 = and i32 %3557, 255
  %3559 = uitofp i32 %3558 to float
  %3560 = lshr i32 %3557, 8
  %3561 = and i32 %3560, 255
  %3562 = uitofp i32 %3561 to float
  %3563 = call float @dx.op.dot3.f32(i32 55, float %3340, float %3341, float %3342, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3564 = fmul fast float %3562, %3563
  %3565 = fadd fast float %3564, %3559
  %3566 = fmul fast float %3565, 0x3F70101020000000
  %3567 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  br i1 %2939, label %3568, label %3603

; <label>:3568                                    ; preds = %3553
  %3569 = fmul fast float %3554, 2.000000e+00
  %3570 = fcmp fast olt float %3526, 1.270000e+02
  %3571 = fcmp fast olt float %3527, 1.270000e+02
  %3572 = fcmp fast olt float %3528, 1.270000e+02
  %3573 = fmul fast float %3526, 0xBFF7154760000000
  %3574 = fmul fast float %3573, %3569
  %3575 = fmul fast float %3527, 0xBFF7154760000000
  %3576 = fmul fast float %3575, %3569
  %3577 = fmul fast float %3528, 0xBFF7154760000000
  %3578 = fmul fast float %3577, %3569
  %3579 = call float @dx.op.unary.f32(i32 21, float %3574)  ; Exp(value)
  %3580 = call float @dx.op.unary.f32(i32 21, float %3576)  ; Exp(value)
  %3581 = call float @dx.op.unary.f32(i32 21, float %3578)  ; Exp(value)
  %3582 = call float @dx.op.unary.f32(i32 7, float %3579)  ; Saturate(value)
  %3583 = call float @dx.op.unary.f32(i32 7, float %3580)  ; Saturate(value)
  %3584 = call float @dx.op.unary.f32(i32 7, float %3581)  ; Saturate(value)
  %3585 = fadd fast float %3582, -1.000000e+00
  %3586 = select i1 %3570, float %3585, float -1.000000e+00
  %3587 = fadd fast float %3583, -1.000000e+00
  %3588 = select i1 %3571, float %3587, float -1.000000e+00
  %3589 = fadd fast float %3584, -1.000000e+00
  %3590 = select i1 %3572, float %3589, float -1.000000e+00
  %3591 = fmul fast float %3586, %3120
  %3592 = fmul fast float %3588, %3120
  %3593 = fmul fast float %3590, %3120
  %3594 = fadd fast float %3591, 1.000000e+00
  %3595 = fadd fast float %3592, 1.000000e+00
  %3596 = fadd fast float %3593, 1.000000e+00
  %3597 = fmul fast float %3594, %2924
  %3598 = fmul fast float %3595, %2925
  %3599 = fmul fast float %3596, %2926
  %3600 = fmul fast float %3594, %2927
  %3601 = fmul fast float %3595, %2928
  %3602 = fmul fast float %3596, %2929
  br label %3603

; <label>:3603                                    ; preds = %3568, %3553
  %3604 = phi float [ %3597, %3568 ], [ %2924, %3553 ]
  %3605 = phi float [ %3598, %3568 ], [ %2925, %3553 ]
  %3606 = phi float [ %3599, %3568 ], [ %2926, %3553 ]
  %3607 = phi float [ %3600, %3568 ], [ %2927, %3553 ]
  %3608 = phi float [ %3601, %3568 ], [ %2928, %3553 ]
  %3609 = phi float [ %3602, %3568 ], [ %2929, %3553 ]
  %3610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3611 = extractvalue %dx.types.ResRet.i32 %3610, 0
  %3612 = and i32 %3611, 3
  %3613 = icmp eq i32 %3612, 3
  br i1 %3613, label %3692, label %3614

; <label>:3614                                    ; preds = %3603
  %3615 = and i32 %3611, 16
  %3616 = icmp ne i32 %3615, 0
  %3617 = select i1 %3616, float %3120, float 0.000000e+00
  %3618 = icmp eq i32 %3612, 0
  br i1 %3618, label %3619, label %3647

; <label>:3619                                    ; preds = %3614
  %3620 = and i32 %3611, 64
  %3621 = icmp ne i32 %3620, 0
  %3622 = select i1 %3621, float %3120, float 0.000000e+00
  %3623 = fsub fast float %3340, %3604
  %3624 = fsub fast float %3341, %3605
  %3625 = fsub fast float %3342, %3606
  %3626 = fmul fast float %3617, %3623
  %3627 = fmul fast float %3617, %3624
  %3628 = fmul fast float %3617, %3625
  %3629 = fadd fast float %3626, %3604
  %3630 = fadd fast float %3627, %3605
  %3631 = fadd fast float %3628, %3606
  %3632 = fsub fast float %3326, %2933
  %3633 = fmul fast float %3617, %3632
  %3634 = fadd fast float %3633, %2933
  %3635 = fsub fast float %3468, %3607
  %3636 = fsub fast float %3469, %3608
  %3637 = fsub fast float %3470, %3609
  %3638 = fmul fast float %3622, %3635
  %3639 = fmul fast float %3622, %3636
  %3640 = fmul fast float %3622, %3637
  %3641 = fadd fast float %3638, %3607
  %3642 = fadd fast float %3639, %3608
  %3643 = fadd fast float %3640, %3609
  %3644 = fsub fast float %3567, %2937
  %3645 = fmul fast float %3617, %3644
  %3646 = fadd fast float %3645, %2937
  br label %3692

; <label>:3647                                    ; preds = %3614
  %3648 = icmp eq i32 %3612, 1
  br i1 %3648, label %3649, label %3662

; <label>:3649                                    ; preds = %3647
  %3650 = fadd fast float %3340, -1.000000e+00
  %3651 = fadd fast float %3341, -1.000000e+00
  %3652 = fadd fast float %3342, -1.000000e+00
  %3653 = fmul fast float %3617, %3650
  %3654 = fmul fast float %3617, %3651
  %3655 = fmul fast float %3617, %3652
  %3656 = fadd fast float %3653, 1.000000e+00
  %3657 = fadd fast float %3654, 1.000000e+00
  %3658 = fadd fast float %3655, 1.000000e+00
  %3659 = fmul fast float %3656, %3604
  %3660 = fmul fast float %3657, %3605
  %3661 = fmul fast float %3658, %3606
  br label %3692

; <label>:3662                                    ; preds = %3647
  %3663 = icmp eq i32 %3612, 2
  br i1 %3663, label %3664, label %3692

; <label>:3664                                    ; preds = %3662
  %3665 = call float @dx.op.unary.f32(i32 24, float %3340)  ; Sqrt(value)
  %3666 = call float @dx.op.unary.f32(i32 24, float %3341)  ; Sqrt(value)
  %3667 = call float @dx.op.unary.f32(i32 24, float %3342)  ; Sqrt(value)
  %3668 = fadd fast float %3665, -5.000000e-01
  %3669 = fadd fast float %3666, -5.000000e-01
  %3670 = fadd fast float %3667, -5.000000e-01
  %3671 = fmul fast float %3668, %3617
  %3672 = fmul fast float %3669, %3617
  %3673 = fmul fast float %3670, %3617
  %3674 = fadd fast float %3671, 5.000000e-01
  %3675 = fadd fast float %3672, 5.000000e-01
  %3676 = fadd fast float %3673, 5.000000e-01
  %3677 = fmul fast float %3674, 2.000000e+00
  %3678 = fsub fast float 1.000000e+00, %3677
  %3679 = fmul fast float %3678, %3604
  %3680 = fadd fast float %3679, %3677
  %3681 = fmul fast float %3680, %3604
  %3682 = fmul fast float %3675, 2.000000e+00
  %3683 = fsub fast float 1.000000e+00, %3682
  %3684 = fmul fast float %3683, %3605
  %3685 = fadd fast float %3684, %3682
  %3686 = fmul fast float %3685, %3605
  %3687 = fmul fast float %3676, 2.000000e+00
  %3688 = fsub fast float 1.000000e+00, %3687
  %3689 = fmul fast float %3688, %3606
  %3690 = fadd fast float %3689, %3687
  %3691 = fmul fast float %3690, %3606
  br label %3692

; <label>:3692                                    ; preds = %3664, %3662, %3649, %3619, %3603
  %3693 = phi float [ %3604, %3603 ], [ %3681, %3664 ], [ %3604, %3662 ], [ %3659, %3649 ], [ %3629, %3619 ]
  %3694 = phi float [ %3605, %3603 ], [ %3686, %3664 ], [ %3605, %3662 ], [ %3660, %3649 ], [ %3630, %3619 ]
  %3695 = phi float [ %3606, %3603 ], [ %3691, %3664 ], [ %3606, %3662 ], [ %3661, %3649 ], [ %3631, %3619 ]
  %3696 = phi float [ %3607, %3603 ], [ %3607, %3664 ], [ %3607, %3662 ], [ %3607, %3649 ], [ %3641, %3619 ]
  %3697 = phi float [ %3608, %3603 ], [ %3608, %3664 ], [ %3608, %3662 ], [ %3608, %3649 ], [ %3642, %3619 ]
  %3698 = phi float [ %3609, %3603 ], [ %3609, %3664 ], [ %3609, %3662 ], [ %3609, %3649 ], [ %3643, %3619 ]
  %3699 = phi float [ %2933, %3603 ], [ %2933, %3664 ], [ %2933, %3662 ], [ %2933, %3649 ], [ %3634, %3619 ]
  %3700 = phi float [ %2937, %3603 ], [ %2937, %3664 ], [ %2937, %3662 ], [ %2937, %3649 ], [ %3646, %3619 ]
  %3701 = and i32 %3611, 12
  %3702 = icmp eq i32 %3701, 12
  br i1 %3702, label %3809, label %3703

; <label>:3703                                    ; preds = %3692
  %3704 = and i32 %3611, 2097184
  %3705 = icmp eq i32 %3704, 2097184
  %3706 = select i1 %3705, float %3120, float 0.000000e+00
  %3707 = and i32 %3611, 4194336
  %3708 = icmp eq i32 %3707, 4194336
  %3709 = select i1 %3708, float %3120, float 0.000000e+00
  %3710 = and i32 %3611, 8388640
  %3711 = icmp eq i32 %3710, 8388640
  %3712 = select i1 %3711, float %3120, float 0.000000e+00
  %3713 = and i32 %3611, 1024
  %3714 = icmp ne i32 %3713, 0
  %3715 = select i1 %3714, float %3120, float 0.000000e+00
  %3716 = and i32 %3611, 2048
  %3717 = icmp ne i32 %3716, 0
  %3718 = select i1 %3717, float %3120, float 0.000000e+00
  %3719 = icmp eq i32 %3701, 0
  br i1 %3719, label %3720, label %3745

; <label>:3720                                    ; preds = %3703
  %3721 = fsub fast float %3421, %2922
  %3722 = fsub fast float %3422, %2923
  %3723 = fmul fast float %3706, %3721
  %3724 = fmul fast float %3706, %3722
  %3725 = fadd fast float %3723, %2922
  %3726 = fadd fast float %3724, %2923
  %3727 = fsub fast float %3423, %2935
  %3728 = fmul fast float %3709, %3727
  %3729 = fadd fast float %3728, %2935
  %3730 = fsub fast float %3420, %2934
  %3731 = fmul fast float %3712, %3730
  %3732 = fadd fast float %3731, %2934
  %3733 = fsub fast float %3526, %2930
  %3734 = fsub fast float %3527, %2931
  %3735 = fsub fast float %3528, %2932
  %3736 = fmul fast float %3715, %3733
  %3737 = fmul fast float %3715, %3734
  %3738 = fmul fast float %3715, %3735
  %3739 = fadd fast float %3736, %2930
  %3740 = fadd fast float %3737, %2931
  %3741 = fadd fast float %3738, %2932
  %3742 = fsub fast float %3554, %2936
  %3743 = fmul fast float %3718, %3742
  %3744 = fadd fast float %3743, %2936
  br label %3809

; <label>:3745                                    ; preds = %3703
  %3746 = icmp eq i32 %3701, 4
  br i1 %3746, label %3747, label %3787

; <label>:3747                                    ; preds = %3745
  %3748 = fmul fast float %3706, %3421
  %3749 = fmul fast float %3706, %3422
  %3750 = fadd fast float %3748, %2922
  %3751 = fadd fast float %3749, %2923
  %3752 = call float @dx.op.binary.f32(i32 36, float %2935, float %3423)  ; FMin(a,b)
  %3753 = fsub fast float %3752, %2935
  %3754 = fmul fast float %3753, %3709
  %3755 = fadd fast float %3754, %2935
  %3756 = fadd fast float %3420, %2934
  %3757 = fmul fast float %3756, 0x3FF337FAE0000000
  %3758 = fmul fast float %2934, %2934
  %3759 = fmul fast float %3420, %3420
  %3760 = fadd fast float %3759, %3758
  %3761 = fmul fast float %3760, 0x3FE5152B00000000
  %3762 = fmul fast float %2934, 0xBFCC1F85E0000000
  %3763 = fmul fast float %3762, %3420
  %3764 = fadd fast float %3763, 0xBFE1363700000000
  %3765 = fadd fast float %3764, %3757
  %3766 = fsub fast float %3765, %3761
  %3767 = fmul fast float %3756, 0x3FBA6F0D00000000
  %3768 = fmul fast float %3760, 0x3FD0432880000000
  %3769 = fmul fast float %2934, 0xBFEF110800000000
  %3770 = fmul fast float %3769, %3420
  %3771 = fadd fast float %3770, 1.000000e+00
  %3772 = fsub fast float %3771, %3767
  %3773 = fadd fast float %3772, %3768
  %3774 = fdiv fast float %3766, %3773
  %3775 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3776 = fsub fast float %3775, %2934
  %3777 = fmul fast float %3776, %3712
  %3778 = fadd fast float %3777, %2934
  %3779 = fmul fast float %3715, %3526
  %3780 = fmul fast float %3715, %3527
  %3781 = fmul fast float %3715, %3528
  %3782 = fadd fast float %3779, %2930
  %3783 = fadd fast float %3780, %2931
  %3784 = fadd fast float %3781, %2932
  %3785 = fmul fast float %3718, %3554
  %3786 = fadd fast float %3785, %2936
  br label %3809

; <label>:3787                                    ; preds = %3745
  %3788 = icmp eq i32 %3701, 8
  br i1 %3788, label %3789, label %3809

; <label>:3789                                    ; preds = %3787
  %3790 = fmul fast float %3706, %3421
  %3791 = fmul fast float %3706, %3422
  %3792 = fadd fast float %3790, %2922
  %3793 = fadd fast float %3791, %2923
  %3794 = call float @dx.op.binary.f32(i32 36, float %2935, float %3423)  ; FMin(a,b)
  %3795 = fsub fast float %3794, %2935
  %3796 = fmul fast float %3795, %3709
  %3797 = fadd fast float %3796, %2935
  %3798 = fsub fast float %3420, %2934
  %3799 = fmul fast float %3712, %3798
  %3800 = fadd fast float %3799, %2934
  %3801 = fmul fast float %3715, %3526
  %3802 = fmul fast float %3715, %3527
  %3803 = fmul fast float %3715, %3528
  %3804 = fadd fast float %3801, %2930
  %3805 = fadd fast float %3802, %2931
  %3806 = fadd fast float %3803, %2932
  %3807 = fmul fast float %3718, %3554
  %3808 = fadd fast float %3807, %2936
  br label %3809

; <label>:3809                                    ; preds = %3789, %3787, %3747, %3720, %3692, %3119, %2938, %2921
  %3810 = phi float [ %2922, %3692 ], [ %2922, %3119 ], [ %2922, %2921 ], [ %2922, %2938 ], [ %3725, %3720 ], [ %3750, %3747 ], [ %2922, %3787 ], [ %3792, %3789 ]
  %3811 = phi float [ %2923, %3692 ], [ %2923, %3119 ], [ %2923, %2921 ], [ %2923, %2938 ], [ %3726, %3720 ], [ %3751, %3747 ], [ %2923, %3787 ], [ %3793, %3789 ]
  %3812 = phi float [ %3693, %3692 ], [ %2924, %3119 ], [ %2924, %2921 ], [ %2924, %2938 ], [ %3693, %3720 ], [ %3693, %3747 ], [ %3693, %3787 ], [ %3693, %3789 ]
  %3813 = phi float [ %3694, %3692 ], [ %2925, %3119 ], [ %2925, %2921 ], [ %2925, %2938 ], [ %3694, %3720 ], [ %3694, %3747 ], [ %3694, %3787 ], [ %3694, %3789 ]
  %3814 = phi float [ %3695, %3692 ], [ %2926, %3119 ], [ %2926, %2921 ], [ %2926, %2938 ], [ %3695, %3720 ], [ %3695, %3747 ], [ %3695, %3787 ], [ %3695, %3789 ]
  %3815 = phi float [ %3696, %3692 ], [ %2927, %3119 ], [ %2927, %2921 ], [ %2927, %2938 ], [ %3696, %3720 ], [ %3696, %3747 ], [ %3696, %3787 ], [ %3696, %3789 ]
  %3816 = phi float [ %3697, %3692 ], [ %2928, %3119 ], [ %2928, %2921 ], [ %2928, %2938 ], [ %3697, %3720 ], [ %3697, %3747 ], [ %3697, %3787 ], [ %3697, %3789 ]
  %3817 = phi float [ %3698, %3692 ], [ %2929, %3119 ], [ %2929, %2921 ], [ %2929, %2938 ], [ %3698, %3720 ], [ %3698, %3747 ], [ %3698, %3787 ], [ %3698, %3789 ]
  %3818 = phi float [ %2930, %3692 ], [ %2930, %3119 ], [ %2930, %2921 ], [ %2930, %2938 ], [ %3739, %3720 ], [ %3782, %3747 ], [ %2930, %3787 ], [ %3804, %3789 ]
  %3819 = phi float [ %2931, %3692 ], [ %2931, %3119 ], [ %2931, %2921 ], [ %2931, %2938 ], [ %3740, %3720 ], [ %3783, %3747 ], [ %2931, %3787 ], [ %3805, %3789 ]
  %3820 = phi float [ %2932, %3692 ], [ %2932, %3119 ], [ %2932, %2921 ], [ %2932, %2938 ], [ %3741, %3720 ], [ %3784, %3747 ], [ %2932, %3787 ], [ %3806, %3789 ]
  %3821 = phi float [ %3699, %3692 ], [ %2933, %3119 ], [ %2933, %2921 ], [ %2933, %2938 ], [ %3699, %3720 ], [ %3699, %3747 ], [ %3699, %3787 ], [ %3699, %3789 ]
  %3822 = phi float [ %2934, %3692 ], [ %2934, %3119 ], [ %2934, %2921 ], [ %2934, %2938 ], [ %3732, %3720 ], [ %3778, %3747 ], [ %2934, %3787 ], [ %3800, %3789 ]
  %3823 = phi float [ %2935, %3692 ], [ %2935, %3119 ], [ %2935, %2921 ], [ %2935, %2938 ], [ %3729, %3720 ], [ %3755, %3747 ], [ %2935, %3787 ], [ %3797, %3789 ]
  %3824 = phi float [ %2936, %3692 ], [ %2936, %3119 ], [ %2936, %2921 ], [ %2936, %2938 ], [ %3744, %3720 ], [ %3786, %3747 ], [ %2936, %3787 ], [ %3808, %3789 ]
  %3825 = phi float [ %3700, %3692 ], [ %2937, %3119 ], [ %2937, %2921 ], [ %2937, %2938 ], [ %3700, %3720 ], [ %3700, %3747 ], [ %3700, %3787 ], [ %3700, %3789 ]
  %3826 = add i32 %61, 360
  %3827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3828 = extractvalue %dx.types.ResRet.i32 %3827, 0
  %3829 = extractvalue %dx.types.ResRet.i32 %3827, 1
  %3830 = bitcast i32 %3828 to float
  %3831 = bitcast i32 %3829 to float
  %3832 = fcmp fast oge float %3830, 0.000000e+00
  %3833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3834 = extractvalue %dx.types.CBufRet.f32 %3833, 0
  %3835 = select i1 %3832, float %3830, float %3834
  %3836 = fadd fast float %3835, %217
  %3837 = fmul fast float %3831, %218
  %3838 = add i32 %61, 456
  %3839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3840 = extractvalue %dx.types.ResRet.i32 %3839, 0
  %3841 = add i32 %3840, 0
  %3842 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3841, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3843 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3842, %dx.types.Handle %113, float %94, float %95, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 0
  %3845 = fmul fast float %3837, %3844
  %3846 = fadd fast float %3836, %3845
  %3847 = and i32 %209, 65535
  %3848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3847)  ; LegacyF16ToF32(value)
  %3849 = lshr i32 %209, 16
  %3850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3849)  ; LegacyF16ToF32(value)
  %3851 = and i32 %210, 65535
  %3852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3851)  ; LegacyF16ToF32(value)
  %3853 = fmul fast float %3848, %3812
  %3854 = fmul fast float %3850, %3813
  %3855 = fmul fast float %3852, %3814
  %3856 = shl i32 %211, 4
  %3857 = and i32 %3856, 32752
  %3858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3857)  ; LegacyF16ToF32(value)
  %3859 = lshr i32 %211, 7
  %3860 = and i32 %3859, 32752
  %3861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3860)  ; LegacyF16ToF32(value)
  %3862 = lshr i32 %211, 22
  %3863 = shl nuw nsw i32 %3862, 5
  %3864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3863)  ; LegacyF16ToF32(value)
  %3865 = and i32 %212, 65535
  %3866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3865)  ; LegacyF16ToF32(value)
  %3867 = fmul fast float %3858, %3815
  %3868 = fmul fast float %3867, %3866
  %3869 = fmul fast float %3861, %3816
  %3870 = fmul fast float %3869, %3866
  %3871 = fmul fast float %3864, %3817
  %3872 = fmul fast float %3871, %3866
  %3873 = call float @dx.op.dot2.f32(i32 54, float %3810, float %3811, float %3810, float %3811)  ; Dot2(ax,ay,bx,by)
  %3874 = fmul fast float %3873, 0x3FE3333340000000
  %3875 = fsub fast float 1.000000e+00, %3874
  %3876 = call float @dx.op.dot3.f32(i32 55, float %3810, float %3811, float %3875, float %3810, float %3811, float %3875)  ; Dot3(ax,ay,az,bx,by,bz)
  %3877 = call float @dx.op.unary.f32(i32 25, float %3876)  ; Rsqrt(value)
  %3878 = fmul fast float %3877, %3810
  %3879 = fmul fast float %3877, %3811
  %3880 = fmul fast float %3875, %3877
  %3881 = fmul fast float %3880, %123
  %3882 = fmul fast float %3880, %124
  %3883 = fmul fast float %3880, %125
  %3884 = fmul fast float %3878, %87
  %3885 = fmul fast float %3878, %88
  %3886 = fmul fast float %3878, %89
  %3887 = fadd fast float %3881, %3884
  %3888 = fadd fast float %3882, %3885
  %3889 = fadd fast float %3883, %3886
  %3890 = fmul fast float %135, %3879
  %3891 = fmul fast float %136, %3879
  %3892 = fmul fast float %137, %3879
  %3893 = fadd fast float %3887, %3890
  %3894 = fadd fast float %3888, %3891
  %3895 = fadd fast float %3889, %3892
  %3896 = call float @dx.op.dot3.f32(i32 55, float %3893, float %3894, float %3895, float %3893, float %3894, float %3895)  ; Dot3(ax,ay,az,bx,by,bz)
  %3897 = call float @dx.op.unary.f32(i32 25, float %3896)  ; Rsqrt(value)
  %3898 = fmul fast float %3893, %3897
  %3899 = fmul fast float %3894, %3897
  %3900 = fmul fast float %3895, %3897
  %3901 = icmp eq i32 %63, 65535
  br i1 %3901, label %4447, label %3902

; <label>:3902                                    ; preds = %3809
  %3903 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3904 = call float @dx.op.unary.f32(i32 83, float %65)  ; DerivCoarseX(value)
  %3905 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %3906 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3907 = call float @dx.op.unary.f32(i32 84, float %65)  ; DerivCoarseY(value)
  %3908 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %3909 = fadd fast float %3903, %64
  %3910 = fadd fast float %3904, %65
  %3911 = fadd fast float %3905, %66
  %3912 = fadd fast float %3906, %64
  %3913 = fadd fast float %3907, %65
  %3914 = fadd fast float %3908, %66
  %3915 = mul i32 %63, 48
  %3916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3917 = extractvalue %dx.types.ResRet.f32 %3916, 0
  %3918 = extractvalue %dx.types.ResRet.f32 %3916, 1
  %3919 = extractvalue %dx.types.ResRet.f32 %3916, 2
  %3920 = add i32 %3915, 16
  %3921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.f32 %3921, 0
  %3923 = extractvalue %dx.types.ResRet.f32 %3921, 1
  %3924 = extractvalue %dx.types.ResRet.f32 %3921, 2
  %3925 = add i32 %3915, 32
  %3926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3927 = extractvalue %dx.types.ResRet.f32 %3926, 0
  %3928 = extractvalue %dx.types.ResRet.f32 %3926, 1
  %3929 = extractvalue %dx.types.ResRet.f32 %3926, 2
  %3930 = extractvalue %dx.types.ResRet.f32 %3926, 3
  %3931 = bitcast float %3930 to i32
  %3932 = fmul fast float %3917, %64
  %3933 = fmul fast float %3918, %65
  %3934 = fmul fast float %3919, %66
  %3935 = fsub fast float %3932, %3922
  %3936 = fsub fast float %3933, %3923
  %3937 = fsub fast float %3934, %3924
  %3938 = call float @dx.op.unary.f32(i32 7, float %3935)  ; Saturate(value)
  %3939 = call float @dx.op.unary.f32(i32 7, float %3936)  ; Saturate(value)
  %3940 = call float @dx.op.unary.f32(i32 7, float %3937)  ; Saturate(value)
  %3941 = fmul fast float %3938, %3927
  %3942 = fmul fast float %3939, %3928
  %3943 = fmul fast float %3940, %3929
  %3944 = fadd fast float %3927, -1.000000e+00
  %3945 = fadd fast float %3928, -1.000000e+00
  %3946 = fadd fast float %3929, -1.000000e+00
  %3947 = call float @dx.op.unary.f32(i32 27, float %3941)  ; Round_ni(value)
  %3948 = call float @dx.op.unary.f32(i32 27, float %3942)  ; Round_ni(value)
  %3949 = call float @dx.op.unary.f32(i32 27, float %3943)  ; Round_ni(value)
  %3950 = call float @dx.op.binary.f32(i32 36, float %3947, float %3944)  ; FMin(a,b)
  %3951 = call float @dx.op.binary.f32(i32 36, float %3948, float %3945)  ; FMin(a,b)
  %3952 = call float @dx.op.binary.f32(i32 36, float %3949, float %3946)  ; FMin(a,b)
  %3953 = fmul fast float %3952, %3928
  %3954 = fadd fast float %3953, %3951
  %3955 = fmul fast float %3954, %3927
  %3956 = fadd fast float %3955, %3950
  %3957 = fptosi float %3956 to i32
  %3958 = add nsw i32 %3957, %3931
  %3959 = shl nsw i32 %3958, 2
  %3960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3959, i32 undef)  ; BufferLoad(srv,index,wot)
  %3961 = extractvalue %dx.types.ResRet.i32 %3960, 0
  %3962 = lshr i32 %3961, 16
  %3963 = icmp eq i32 %3962, 0
  br i1 %3963, label %4413, label %3964

; <label>:3964                                    ; preds = %3902
  br label %3965

; <label>:3965                                    ; preds = %4089, %3964
  %3966 = phi i32 [ %3991, %4089 ], [ %3962, %3964 ]
  %3967 = phi float [ %4090, %4089 ], [ 0.000000e+00, %3964 ]
  %3968 = phi float [ %4091, %4089 ], [ %3846, %3964 ]
  %3969 = phi float [ %4092, %4089 ], [ %3825, %3964 ]
  %3970 = phi float [ %4093, %4089 ], [ %3818, %3964 ]
  %3971 = phi float [ %4094, %4089 ], [ %3819, %3964 ]
  %3972 = phi float [ %4095, %4089 ], [ %3820, %3964 ]
  %3973 = phi float [ %4096, %4089 ], [ 0.000000e+00, %3964 ]
  %3974 = phi float [ %4097, %4089 ], [ 0.000000e+00, %3964 ]
  %3975 = phi float [ %4098, %4089 ], [ %3868, %3964 ]
  %3976 = phi float [ %4099, %4089 ], [ %3870, %3964 ]
  %3977 = phi float [ %4100, %4089 ], [ %3872, %3964 ]
  %3978 = phi float [ %4101, %4089 ], [ %3898, %3964 ]
  %3979 = phi float [ %4102, %4089 ], [ %3899, %3964 ]
  %3980 = phi float [ %4103, %4089 ], [ %3900, %3964 ]
  %3981 = phi float [ %4104, %4089 ], [ %3823, %3964 ]
  %3982 = phi float [ %4105, %4089 ], [ %3822, %3964 ]
  %3983 = phi float [ %4106, %4089 ], [ 0.000000e+00, %3964 ]
  %3984 = phi float [ %4107, %4089 ], [ %3821, %3964 ]
  %3985 = phi float [ %4108, %4089 ], [ %3853, %3964 ]
  %3986 = phi float [ %4109, %4089 ], [ %3854, %3964 ]
  %3987 = phi float [ %4110, %4089 ], [ %3855, %3964 ]
  %3988 = shl nuw nsw i32 %3966, 2
  %3989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3988, i32 undef)  ; BufferLoad(srv,index,wot)
  %3990 = extractvalue %dx.types.ResRet.i32 %3989, 0
  %3991 = lshr i32 %3990, 16
  %3992 = shl i32 %3990, 8
  %3993 = and i32 %3992, 16776960
  %3994 = or i32 %3993, 48
  %3995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3994, i32 undef)  ; BufferLoad(srv,index,wot)
  %3996 = extractvalue %dx.types.ResRet.f32 %3995, 0
  %3997 = extractvalue %dx.types.ResRet.f32 %3995, 1
  %3998 = extractvalue %dx.types.ResRet.f32 %3995, 2
  %3999 = or i32 %3993, 64
  %4000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3999, i32 undef)  ; BufferLoad(srv,index,wot)
  %4001 = extractvalue %dx.types.ResRet.i32 %4000, 0
  %4002 = extractvalue %dx.types.ResRet.i32 %4000, 1
  %4003 = or i32 %3993, 80
  %4004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4003, i32 undef)  ; BufferLoad(srv,index,wot)
  %4005 = extractvalue %dx.types.ResRet.f32 %4004, 2
  %4006 = extractvalue %dx.types.ResRet.f32 %4004, 3
  %4007 = or i32 %3993, 96
  %4008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4007, i32 undef)  ; BufferLoad(srv,index,wot)
  %4009 = extractvalue %dx.types.ResRet.f32 %4008, 0
  %4010 = extractvalue %dx.types.ResRet.f32 %4008, 1
  %4011 = extractvalue %dx.types.ResRet.f32 %4008, 2
  %4012 = extractvalue %dx.types.ResRet.f32 %4008, 3
  %4013 = or i32 %3993, 112
  %4014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4013, i32 undef)  ; BufferLoad(srv,index,wot)
  %4015 = extractvalue %dx.types.ResRet.f32 %4014, 2
  %4016 = or i32 %3993, 128
  %4017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4016, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.f32 %4017, 0
  %4019 = extractvalue %dx.types.ResRet.f32 %4017, 1
  %4020 = extractvalue %dx.types.ResRet.f32 %4017, 2
  %4021 = extractvalue %dx.types.ResRet.f32 %4017, 3
  %4022 = or i32 %3993, 144
  %4023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4022, i32 undef)  ; BufferLoad(srv,index,wot)
  %4024 = extractvalue %dx.types.ResRet.f32 %4023, 0
  %4025 = extractvalue %dx.types.ResRet.f32 %4023, 1
  %4026 = extractvalue %dx.types.ResRet.f32 %4023, 2
  %4027 = extractvalue %dx.types.ResRet.f32 %4023, 3
  %4028 = or i32 %3993, 160
  %4029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4028, i32 undef)  ; BufferLoad(srv,index,wot)
  %4030 = extractvalue %dx.types.ResRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.ResRet.f32 %4029, 1
  %4032 = extractvalue %dx.types.ResRet.f32 %4029, 2
  %4033 = extractvalue %dx.types.ResRet.f32 %4029, 3
  %4034 = or i32 %3993, 192
  %4035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4034, i32 undef)  ; BufferLoad(srv,index,wot)
  %4036 = extractvalue %dx.types.ResRet.i32 %4035, 0
  %4037 = or i32 %3993, 208
  %4038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4037, i32 undef)  ; BufferLoad(srv,index,wot)
  %4039 = extractvalue %dx.types.ResRet.f32 %4038, 0
  %4040 = or i32 %3993, 248
  %4041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = extractvalue %dx.types.ResRet.f32 %4041, 1
  %4044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3993, i32 undef)  ; BufferLoad(srv,index,wot)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.ResRet.f32 %4044, 1
  %4047 = extractvalue %dx.types.ResRet.f32 %4044, 2
  %4048 = extractvalue %dx.types.ResRet.f32 %4044, 3
  %4049 = call float @dx.op.dot4.f32(i32 56, float %4045, float %4046, float %4047, float %4048, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4050 = or i32 %3993, 16
  %4051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4050, i32 undef)  ; BufferLoad(srv,index,wot)
  %4052 = extractvalue %dx.types.ResRet.f32 %4051, 0
  %4053 = extractvalue %dx.types.ResRet.f32 %4051, 1
  %4054 = extractvalue %dx.types.ResRet.f32 %4051, 2
  %4055 = extractvalue %dx.types.ResRet.f32 %4051, 3
  %4056 = call float @dx.op.dot4.f32(i32 56, float %4052, float %4053, float %4054, float %4055, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4057 = or i32 %3993, 32
  %4058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4057, i32 undef)  ; BufferLoad(srv,index,wot)
  %4059 = extractvalue %dx.types.ResRet.f32 %4058, 0
  %4060 = extractvalue %dx.types.ResRet.f32 %4058, 1
  %4061 = extractvalue %dx.types.ResRet.f32 %4058, 2
  %4062 = extractvalue %dx.types.ResRet.f32 %4058, 3
  %4063 = call float @dx.op.dot4.f32(i32 56, float %4059, float %4060, float %4061, float %4062, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4064 = call float @dx.op.unary.f32(i32 27, float %4049)  ; Round_ni(value)
  %4065 = call float @dx.op.unary.f32(i32 6, float %4064)  ; FAbs(value)
  %4066 = call float @dx.op.unary.f32(i32 27, float %4056)  ; Round_ni(value)
  %4067 = call float @dx.op.unary.f32(i32 6, float %4066)  ; FAbs(value)
  %4068 = call float @dx.op.unary.f32(i32 6, float %4063)  ; FAbs(value)
  %4069 = call float @dx.op.unary.f32(i32 27, float %4068)  ; Round_ni(value)
  %4070 = fadd fast float %4067, %4065
  %4071 = fadd fast float %4070, %4069
  %4072 = fcmp fast oeq float %4071, 0.000000e+00
  %4073 = call float @dx.op.dot4.f32(i32 56, float %4045, float %4046, float %4047, float %4048, float %3909, float %3910, float %3911, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4074 = call float @dx.op.dot4.f32(i32 56, float %4052, float %4053, float %4054, float %4055, float %3909, float %3910, float %3911, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4075 = call float @dx.op.dot4.f32(i32 56, float %4045, float %4046, float %4047, float %4048, float %3912, float %3913, float %3914, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4076 = call float @dx.op.dot4.f32(i32 56, float %4052, float %4053, float %4054, float %4055, float %3912, float %3913, float %3914, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4077 = fsub fast float %4073, %4049
  %4078 = fsub fast float %4075, %4049
  %4079 = fsub fast float %4074, %4056
  %4080 = fsub fast float %4076, %4056
  %4081 = call float @dx.op.dot3.f32(i32 55, float %3996, float %3997, float %3998, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 2
  %4084 = fadd fast float %4083, %4081
  %4085 = call float @dx.op.unary.f32(i32 7, float %4084)  ; Saturate(value)
  %4086 = extractvalue %dx.types.CBufRet.f32 %4082, 0
  %4087 = fcmp fast ogt float %4085, %4086
  %4088 = and i1 %4072, %4087
  br i1 %4088, label %4112, label %4089

; <label>:4089                                    ; preds = %4399, %4195, %4112, %3965
  %4090 = phi float [ %3967, %4112 ], [ %4198, %4195 ], [ %4198, %4399 ], [ %3967, %3965 ]
  %4091 = phi float [ %3968, %4112 ], [ %3968, %4195 ], [ %4375, %4399 ], [ %3968, %3965 ]
  %4092 = phi float [ %3969, %4112 ], [ %3969, %4195 ], [ %4373, %4399 ], [ %3969, %3965 ]
  %4093 = phi float [ %3970, %4112 ], [ %3970, %4195 ], [ %4351, %4399 ], [ %3970, %3965 ]
  %4094 = phi float [ %3971, %4112 ], [ %3971, %4195 ], [ %4352, %4399 ], [ %3971, %3965 ]
  %4095 = phi float [ %3972, %4112 ], [ %3972, %4195 ], [ %4353, %4399 ], [ %3972, %3965 ]
  %4096 = phi float [ %3973, %4112 ], [ %3973, %4195 ], [ %4322, %4399 ], [ %3973, %3965 ]
  %4097 = phi float [ %3974, %4112 ], [ %3974, %4195 ], [ %4320, %4399 ], [ %3974, %3965 ]
  %4098 = phi float [ %3975, %4112 ], [ %3975, %4195 ], [ %4409, %4399 ], [ %3975, %3965 ]
  %4099 = phi float [ %3976, %4112 ], [ %3976, %4195 ], [ %4410, %4399 ], [ %3976, %3965 ]
  %4100 = phi float [ %3977, %4112 ], [ %3977, %4195 ], [ %4411, %4399 ], [ %3977, %3965 ]
  %4101 = phi float [ %3978, %4112 ], [ %3978, %4195 ], [ %4301, %4399 ], [ %3978, %3965 ]
  %4102 = phi float [ %3979, %4112 ], [ %3979, %4195 ], [ %4302, %4399 ], [ %3979, %3965 ]
  %4103 = phi float [ %3980, %4112 ], [ %3980, %4195 ], [ %4303, %4399 ], [ %3980, %3965 ]
  %4104 = phi float [ %3981, %4112 ], [ %3981, %4195 ], [ %4331, %4399 ], [ %3981, %3965 ]
  %4105 = phi float [ %3982, %4112 ], [ %3982, %4195 ], [ %4328, %4399 ], [ %3982, %3965 ]
  %4106 = phi float [ %3983, %4112 ], [ %3983, %4195 ], [ %4325, %4399 ], [ %3983, %3965 ]
  %4107 = phi float [ %3984, %4112 ], [ %3984, %4195 ], [ %4318, %4399 ], [ %3984, %3965 ]
  %4108 = phi float [ %3985, %4112 ], [ %3985, %4195 ], [ %4313, %4399 ], [ %3985, %3965 ]
  %4109 = phi float [ %3986, %4112 ], [ %3986, %4195 ], [ %4314, %4399 ], [ %3986, %3965 ]
  %4110 = phi float [ %3987, %4112 ], [ %3987, %4195 ], [ %4315, %4399 ], [ %3987, %3965 ]
  %4111 = icmp eq i32 %3991, 0
  br i1 %4111, label %4412, label %3965

; <label>:4112                                    ; preds = %3965
  %4113 = extractvalue %dx.types.ResRet.f32 %3995, 3
  %4114 = extractvalue %dx.types.ResRet.f32 %4014, 3
  %4115 = extractvalue %dx.types.ResRet.f32 %4014, 1
  %4116 = extractvalue %dx.types.ResRet.f32 %4014, 0
  %4117 = extractvalue %dx.types.ResRet.f32 %4004, 1
  %4118 = extractvalue %dx.types.ResRet.f32 %4004, 0
  %4119 = extractvalue %dx.types.ResRet.i32 %4000, 3
  %4120 = extractvalue %dx.types.ResRet.i32 %4000, 2
  %4121 = bitcast float %4113 to i32
  %4122 = add i32 %4119, 0
  %4123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4122, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4125 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4123, %dx.types.Handle %4124, float %4049, float %4056, float undef, float undef, i32 0, i32 0, i32 undef, float %4077, float %4079, float undef, float %4078, float %4080, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4127 = fmul fast float %4126, %4118
  %4128 = fadd fast float %4127, %4117
  %4129 = call float @dx.op.unary.f32(i32 7, float %4128)  ; Saturate(value)
  %4130 = fmul fast float %4049, %4009
  %4131 = call float @dx.op.tertiary.f32(i32 46, float %4010, float %4056, float %4130)  ; FMad(a,b,c)
  %4132 = fadd fast float %4131, %4116
  %4133 = fmul fast float %4049, %4011
  %4134 = call float @dx.op.tertiary.f32(i32 46, float %4012, float %4056, float %4133)  ; FMad(a,b,c)
  %4135 = fadd fast float %4134, %4115
  %4136 = fmul fast float %4077, %4009
  %4137 = call float @dx.op.tertiary.f32(i32 46, float %4010, float %4079, float %4136)  ; FMad(a,b,c)
  %4138 = fmul fast float %4077, %4011
  %4139 = call float @dx.op.tertiary.f32(i32 46, float %4012, float %4079, float %4138)  ; FMad(a,b,c)
  %4140 = fmul fast float %4078, %4009
  %4141 = call float @dx.op.tertiary.f32(i32 46, float %4010, float %4080, float %4140)  ; FMad(a,b,c)
  %4142 = fmul fast float %4078, %4011
  %4143 = call float @dx.op.tertiary.f32(i32 46, float %4012, float %4080, float %4142)  ; FMad(a,b,c)
  %4144 = add i32 %4120, 0
  %4145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4144, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4146 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4145, %dx.types.Handle %4124, float %4132, float %4135, float undef, float undef, i32 0, i32 0, i32 undef, float %4137, float %4139, float undef, float %4141, float %4143, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4147 = extractvalue %dx.types.ResRet.f32 %4146, 0
  %4148 = and i32 %4121, 1024
  %4149 = icmp ne i32 %4148, 0
  %4150 = fcmp fast ogt float %4147, 0x3FE0101020000000
  %4151 = uitofp i1 %4150 to float
  %4152 = select i1 %4149, float %4151, float %4147
  %4153 = and i32 %4121, 8192
  %4154 = icmp ne i32 %4153, 0
  %4155 = select i1 %4154, float %4114, float 1.000000e+00
  %4156 = fmul fast float %4049, 2.000000e+00
  %4157 = fadd fast float %4156, -1.000000e+00
  %4158 = call float @dx.op.unary.f32(i32 6, float %4157)  ; FAbs(value)
  %4159 = fmul fast float %4158, %4042
  %4160 = fsub fast float %4159, %4042
  %4161 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4162 = fmul fast float %4056, 2.000000e+00
  %4163 = fadd fast float %4162, -1.000000e+00
  %4164 = call float @dx.op.unary.f32(i32 6, float %4163)  ; FAbs(value)
  %4165 = fmul fast float %4164, %4043
  %4166 = fsub fast float %4165, %4043
  %4167 = call float @dx.op.unary.f32(i32 7, float %4166)  ; Saturate(value)
  %4168 = fmul fast float %4068, %4005
  %4169 = fsub fast float %4168, %4005
  %4170 = call float @dx.op.unary.f32(i32 7, float %4169)  ; Saturate(value)
  %4171 = fmul fast float %4129, %4155
  %4172 = fmul fast float %4171, %4126
  %4173 = fmul fast float %4172, %4161
  %4174 = fmul fast float %4173, %4152
  %4175 = fmul fast float %4174, %4167
  %4176 = fmul fast float %4175, %4170
  %4177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4178 = extractvalue %dx.types.CBufRet.f32 %4177, 1
  %4179 = extractvalue %dx.types.CBufRet.f32 %4177, 0
  %4180 = fsub fast float %4085, %4179
  %4181 = fmul fast float %4180, %4178
  %4182 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4183 = fmul fast float %4176, %4006
  %4184 = fadd fast float %4176, %4006
  %4185 = fmul fast float %4184, %4015
  %4186 = fsub fast float %4185, %4015
  %4187 = call float @dx.op.unary.f32(i32 7, float %4186)  ; Saturate(value)
  %4188 = and i32 %4121, 128
  %4189 = icmp ne i32 %4188, 0
  %4190 = select i1 %4189, float %4187, float %4183
  %4191 = fmul fast float %4190, %4182
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 0
  %4194 = fcmp fast ugt float %4191, %4193
  br i1 %4194, label %4195, label %4089

; <label>:4195                                    ; preds = %4112
  %4196 = select i1 %4154, float %4191, float 0.000000e+00
  %4197 = fadd fast float %4196, %3967
  %4198 = call float @dx.op.unary.f32(i32 7, float %4197)  ; Saturate(value)
  br i1 %4154, label %4089, label %4199

; <label>:4199                                    ; preds = %4195
  %4200 = and i32 %4121, 4
  %4201 = and i32 %4121, 8
  %4202 = add i32 %4001, 0
  %4203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4202, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4205 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4203, %dx.types.Handle %4204, float %4132, float %4135, float undef, float undef, i32 0, i32 0, i32 undef, float %4137, float %4139, float undef, float %4141, float %4143, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4206 = extractvalue %dx.types.ResRet.f32 %4205, 0
  %4207 = extractvalue %dx.types.ResRet.f32 %4205, 1
  %4208 = extractvalue %dx.types.ResRet.f32 %4205, 2
  %4209 = extractvalue %dx.types.ResRet.f32 %4205, 3
  %4210 = bitcast float %4027 to i32
  %4211 = and i32 %4210, 255
  %4212 = uitofp i32 %4211 to float
  %4213 = lshr i32 %4210, 8
  %4214 = and i32 %4213, 255
  %4215 = uitofp i32 %4214 to float
  %4216 = fmul fast float %4209, %4212
  %4217 = fadd fast float %4216, %4215
  %4218 = fmul fast float %4217, 0x3F70101000000000
  %4219 = add i32 %4002, 0
  %4220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4219, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4221 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4220, %dx.types.Handle %4204, float %4132, float %4135, float undef, float undef, i32 0, i32 0, i32 undef, float %4137, float %4139, float undef, float %4141, float %4143, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = extractvalue %dx.types.ResRet.f32 %4221, 1
  %4224 = extractvalue %dx.types.ResRet.f32 %4221, 2
  %4225 = extractvalue %dx.types.ResRet.f32 %4221, 3
  %4226 = bitcast float %4021 to i32
  %4227 = and i32 %4226, 255
  %4228 = uitofp i32 %4227 to float
  %4229 = lshr i32 %4226, 8
  %4230 = and i32 %4229, 255
  %4231 = uitofp i32 %4230 to float
  %4232 = lshr i32 %4226, 16
  %4233 = and i32 %4232, 255
  %4234 = uitofp i32 %4233 to float
  %4235 = fmul fast float %4234, 0x3F70101000000000
  %4236 = fmul fast float %4222, %4228
  %4237 = fadd fast float %4236, %4231
  %4238 = fmul fast float %4237, 0x3F70101000000000
  %4239 = fadd fast float %4223, -5.000000e-01
  %4240 = fadd fast float %4225, -5.000000e-01
  %4241 = fmul fast float %4239, %4235
  %4242 = fmul fast float %4240, %4235
  %4243 = fadd fast float %4241, 5.000000e-01
  %4244 = fadd fast float %4242, 5.000000e-01
  %4245 = fmul fast float %4206, %4030
  %4246 = fmul fast float %4207, %4031
  %4247 = fmul fast float %4208, %4032
  %4248 = fmul fast float %4243, 2.000000e+00
  %4249 = fadd fast float %4248, -1.000000e+00
  %4250 = fmul fast float %4244, 2.000000e+00
  %4251 = fadd fast float %4250, -1.000000e+00
  %4252 = fadd fast float %4249, %4251
  %4253 = fmul fast float %4252, 5.000000e-01
  %4254 = fsub fast float %4249, %4251
  %4255 = fmul fast float %4254, 5.000000e-01
  %4256 = call float @dx.op.unary.f32(i32 6, float %4253)  ; FAbs(value)
  %4257 = fsub fast float 1.000000e+00, %4256
  %4258 = call float @dx.op.unary.f32(i32 6, float %4255)  ; FAbs(value)
  %4259 = fsub fast float %4257, %4258
  %4260 = call float @dx.op.dot3.f32(i32 55, float %4253, float %4255, float %4259, float %4253, float %4255, float %4259)  ; Dot3(ax,ay,az,bx,by,bz)
  %4261 = call float @dx.op.unary.f32(i32 25, float %4260)  ; Rsqrt(value)
  %4262 = fmul fast float %4253, %4261
  %4263 = fmul fast float %4255, %4261
  %4264 = fmul fast float %4261, %4259
  %4265 = fmul fast float %4264, %3996
  %4266 = fmul fast float %4264, %3997
  %4267 = fmul fast float %4264, %3998
  %4268 = fmul fast float %4262, %4018
  %4269 = fmul fast float %4262, %4019
  %4270 = fmul fast float %4262, %4020
  %4271 = fadd fast float %4268, %4265
  %4272 = fadd fast float %4269, %4266
  %4273 = fadd fast float %4270, %4267
  %4274 = fmul fast float %4263, %4024
  %4275 = fmul fast float %4263, %4025
  %4276 = fmul fast float %4263, %4026
  %4277 = fadd fast float %4271, %4274
  %4278 = fadd fast float %4272, %4275
  %4279 = fadd fast float %4273, %4276
  %4280 = call float @dx.op.dot3.f32(i32 55, float %4277, float %4278, float %4279, float %4277, float %4278, float %4279)  ; Dot3(ax,ay,az,bx,by,bz)
  %4281 = call float @dx.op.unary.f32(i32 25, float %4280)  ; Rsqrt(value)
  %4282 = fmul fast float %4277, %4281
  %4283 = fmul fast float %4278, %4281
  %4284 = fmul fast float %4279, %4281
  %4285 = icmp ne i32 %4201, 0
  %4286 = select i1 %4285, float 1.000000e+00, float 0.000000e+00
  %4287 = fmul fast float %4191, %4286
  %4288 = and i32 %4121, 1
  %4289 = icmp eq i32 %4288, 0
  br i1 %4289, label %4290, label %4294

; <label>:4290                                    ; preds = %4199
  %4291 = fsub fast float %4282, %3978
  %4292 = fsub fast float %4283, %3979
  %4293 = fsub fast float %4284, %3980
  br label %4294

; <label>:4294                                    ; preds = %4290, %4199
  %4295 = phi float [ %4291, %4290 ], [ %4282, %4199 ]
  %4296 = phi float [ %4292, %4290 ], [ %4283, %4199 ]
  %4297 = phi float [ %4293, %4290 ], [ %4284, %4199 ]
  %4298 = fmul float %4297, %4287
  %4299 = fmul float %4296, %4287
  %4300 = fmul float %4295, %4287
  %4301 = fadd fast float %4300, %3978
  %4302 = fadd fast float %4299, %3979
  %4303 = fadd fast float %4298, %3980
  %4304 = icmp ne i32 %4200, 0
  %4305 = select i1 %4304, float 1.000000e+00, float 0.000000e+00
  %4306 = fmul fast float %4191, %4305
  %4307 = fsub fast float %4245, %3985
  %4308 = fsub fast float %4246, %3986
  %4309 = fsub fast float %4247, %3987
  %4310 = fmul fast float %4307, %4306
  %4311 = fmul fast float %4308, %4306
  %4312 = fmul fast float %4309, %4306
  %4313 = fadd fast float %4310, %3985
  %4314 = fadd fast float %4311, %3986
  %4315 = fadd fast float %4312, %3987
  %4316 = fsub fast float %4218, %3984
  %4317 = fmul fast float %4316, %4306
  %4318 = fadd fast float %4317, %3984
  %4319 = fmul fast float %4306, %3974
  %4320 = fsub fast float %3974, %4319
  %4321 = fmul fast float %4306, %3973
  %4322 = fsub fast float %3973, %4321
  %4323 = bitcast float %4039 to i32
  %4324 = fadd fast float %4191, %3983
  %4325 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4326 = fsub fast float %4238, %3982
  %4327 = fmul fast float %4326, %4287
  %4328 = fadd fast float %4327, %3982
  %4329 = fsub fast float %4224, %3981
  %4330 = fmul fast float %4329, %4287
  %4331 = fadd fast float %4330, %3981
  br i1 %4289, label %4340, label %4332

; <label>:4332                                    ; preds = %4294
  %4333 = and i32 %4121, 32768
  %4334 = icmp eq i32 %4333, 0
  br i1 %4334, label %4350, label %4335

; <label>:4335                                    ; preds = %4332
  %4336 = fmul fast float %4287, 1.270000e+02
  %4337 = fadd fast float %4336, %3970
  %4338 = fadd fast float %4336, %3971
  %4339 = fadd fast float %4336, %3972
  br label %4350

; <label>:4340                                    ; preds = %4294
  %4341 = fsub fast float 1.270000e+02, %3970
  %4342 = fsub fast float 1.270000e+02, %3971
  %4343 = fsub fast float 1.270000e+02, %3972
  %4344 = fmul fast float %4287, %4341
  %4345 = fmul fast float %4287, %4342
  %4346 = fmul fast float %4287, %4343
  %4347 = fadd fast float %4344, %3970
  %4348 = fadd fast float %4345, %3971
  %4349 = fadd fast float %4346, %3972
  br label %4350

; <label>:4350                                    ; preds = %4340, %4335, %4332
  %4351 = phi float [ %4337, %4335 ], [ %3970, %4332 ], [ %4347, %4340 ]
  %4352 = phi float [ %4338, %4335 ], [ %3971, %4332 ], [ %4348, %4340 ]
  %4353 = phi float [ %4339, %4335 ], [ %3972, %4332 ], [ %4349, %4340 ]
  %4354 = call float @dx.op.dot3.f32(i32 55, float %4245, float %4246, float %4247, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 0
  %4357 = extractvalue %dx.types.CBufRet.f32 %4355, 1
  %4358 = fmul fast float %4357, %4354
  %4359 = fadd fast float %4358, %4356
  %4360 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4361 = bitcast float %4033 to i32
  %4362 = and i32 %4361, 65535
  %4363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4362)  ; LegacyF16ToF32(value)
  %4364 = lshr i32 %4361, 16
  %4365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4364)  ; LegacyF16ToF32(value)
  %4366 = fcmp fast oge float %4363, 0.000000e+00
  %4367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.f32 %4367, 0
  %4369 = select i1 %4366, float %4363, float %4368
  %4370 = fadd fast float %4369, %4365
  %4371 = fsub fast float %4360, %3969
  %4372 = fmul fast float %4371, %4191
  %4373 = fadd fast float %4372, %3969
  %4374 = fmul fast float %4370, %4191
  %4375 = call float @dx.op.binary.f32(i32 35, float %3968, float %4374)  ; FMax(a,b)
  %4376 = and i32 %4121, 16
  %4377 = icmp eq i32 %4376, 0
  br i1 %4377, label %4399, label %4378

; <label>:4378                                    ; preds = %4350
  %4379 = add i32 %4036, 0
  %4380 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4379, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4381 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4380, %dx.types.Handle %4204, float %4132, float %4135, float undef, float undef, i32 0, i32 0, i32 undef, float %4137, float %4139, float undef, float %4141, float %4143, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4382 = extractvalue %dx.types.ResRet.f32 %4381, 0
  %4383 = extractvalue %dx.types.ResRet.f32 %4381, 1
  %4384 = extractvalue %dx.types.ResRet.f32 %4381, 2
  %4385 = and i32 %4323, 65535
  %4386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4385)  ; LegacyF16ToF32(value)
  %4387 = fmul fast float %4382, %4030
  %4388 = fmul fast float %4383, %4031
  %4389 = fmul fast float %4384, %4032
  %4390 = and i32 %4121, 16384
  %4391 = icmp ne i32 %4390, 0
  %4392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.f32 %4392, 0
  %4394 = select i1 %4391, float %4393, float 1.000000e+00
  %4395 = fmul fast float %4394, %4386
  %4396 = fmul fast float %4387, %4395
  %4397 = fmul fast float %4388, %4395
  %4398 = fmul fast float %4389, %4395
  br label %4399

; <label>:4399                                    ; preds = %4378, %4350
  %4400 = phi float [ %4396, %4378 ], [ 0.000000e+00, %4350 ]
  %4401 = phi float [ %4397, %4378 ], [ 0.000000e+00, %4350 ]
  %4402 = phi float [ %4398, %4378 ], [ 0.000000e+00, %4350 ]
  %4403 = fsub fast float %4400, %3975
  %4404 = fsub fast float %4401, %3976
  %4405 = fsub fast float %4402, %3977
  %4406 = fmul fast float %4403, %4191
  %4407 = fmul fast float %4404, %4191
  %4408 = fmul fast float %4405, %4191
  %4409 = fadd fast float %4406, %3975
  %4410 = fadd fast float %4407, %3976
  %4411 = fadd fast float %4408, %3977
  br label %4089

; <label>:4412                                    ; preds = %4089
  br label %4413

; <label>:4413                                    ; preds = %4412, %3902
  %4414 = phi float [ 0.000000e+00, %3902 ], [ %4090, %4412 ]
  %4415 = phi float [ %3846, %3902 ], [ %4091, %4412 ]
  %4416 = phi float [ %3825, %3902 ], [ %4092, %4412 ]
  %4417 = phi float [ %3818, %3902 ], [ %4093, %4412 ]
  %4418 = phi float [ %3819, %3902 ], [ %4094, %4412 ]
  %4419 = phi float [ %3820, %3902 ], [ %4095, %4412 ]
  %4420 = phi float [ 0.000000e+00, %3902 ], [ %4096, %4412 ]
  %4421 = phi float [ 0.000000e+00, %3902 ], [ %4097, %4412 ]
  %4422 = phi float [ %3868, %3902 ], [ %4098, %4412 ]
  %4423 = phi float [ %3870, %3902 ], [ %4099, %4412 ]
  %4424 = phi float [ %3872, %3902 ], [ %4100, %4412 ]
  %4425 = phi float [ %3898, %3902 ], [ %4101, %4412 ]
  %4426 = phi float [ %3899, %3902 ], [ %4102, %4412 ]
  %4427 = phi float [ %3900, %3902 ], [ %4103, %4412 ]
  %4428 = phi float [ %3823, %3902 ], [ %4104, %4412 ]
  %4429 = phi float [ %3822, %3902 ], [ %4105, %4412 ]
  %4430 = phi float [ 0.000000e+00, %3902 ], [ %4106, %4412 ]
  %4431 = phi float [ %3821, %3902 ], [ %4107, %4412 ]
  %4432 = phi float [ %3853, %3902 ], [ %4108, %4412 ]
  %4433 = phi float [ %3854, %3902 ], [ %4109, %4412 ]
  %4434 = phi float [ %3855, %3902 ], [ %4110, %4412 ]
  %4435 = call float @dx.op.dot3.f32(i32 55, float %4425, float %4426, float %4427, float %4425, float %4426, float %4427)  ; Dot3(ax,ay,az,bx,by,bz)
  %4436 = call float @dx.op.unary.f32(i32 25, float %4435)  ; Rsqrt(value)
  %4437 = fmul fast float %4436, %4425
  %4438 = fmul fast float %4436, %4426
  %4439 = fmul fast float %4436, %4427
  %4440 = fadd fast float %4430, %1157
  %4441 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4442 = call float @dx.op.dot3.f32(i32 55, float %4437, float %4438, float %4439, float %4437, float %4438, float %4439)  ; Dot3(ax,ay,az,bx,by,bz)
  %4443 = call float @dx.op.unary.f32(i32 25, float %4442)  ; Rsqrt(value)
  %4444 = fmul fast float %4443, %4437
  %4445 = fmul fast float %4443, %4438
  %4446 = fmul fast float %4443, %4439
  br label %4447

; <label>:4447                                    ; preds = %4413, %3809
  %4448 = phi float [ %4417, %4413 ], [ %3818, %3809 ]
  %4449 = phi float [ %4418, %4413 ], [ %3819, %3809 ]
  %4450 = phi float [ %4419, %4413 ], [ %3820, %3809 ]
  %4451 = phi float [ %4444, %4413 ], [ %3898, %3809 ]
  %4452 = phi float [ %4445, %4413 ], [ %3899, %3809 ]
  %4453 = phi float [ %4446, %4413 ], [ %3900, %3809 ]
  %4454 = phi float [ %4432, %4413 ], [ %3853, %3809 ]
  %4455 = phi float [ %4433, %4413 ], [ %3854, %3809 ]
  %4456 = phi float [ %4434, %4413 ], [ %3855, %3809 ]
  %4457 = phi float [ %4422, %4413 ], [ %3868, %3809 ]
  %4458 = phi float [ %4423, %4413 ], [ %3870, %3809 ]
  %4459 = phi float [ %4424, %4413 ], [ %3872, %3809 ]
  %4460 = phi float [ %4431, %4413 ], [ %3821, %3809 ]
  %4461 = phi float [ %4441, %4413 ], [ %1157, %3809 ]
  %4462 = phi float [ %4429, %4413 ], [ %3822, %3809 ]
  %4463 = phi float [ %4428, %4413 ], [ %3823, %3809 ]
  %4464 = phi float [ %4421, %4413 ], [ 0.000000e+00, %3809 ]
  %4465 = phi float [ %4420, %4413 ], [ 0.000000e+00, %3809 ]
  %4466 = phi float [ %4414, %4413 ], [ 0.000000e+00, %3809 ]
  %4467 = phi float [ %4415, %4413 ], [ %3846, %3809 ]
  %4468 = phi float [ %4416, %4413 ], [ %3825, %3809 ]
  %4469 = fadd fast float %4460, 0xBFB99999A0000000
  %4470 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4471 = fmul fast float %4470, 0x3FF1C71C80000000
  %4472 = call float @dx.op.binary.f32(i32 36, float %4460, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4473 = fsub fast float 1.000000e+00, %4471
  %4474 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4475 = fmul fast float %4474, %4454
  %4476 = fmul fast float %4474, %4455
  %4477 = fmul fast float %4474, %4456
  %4478 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4479 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4480 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4481 = fmul fast float %4471, %4454
  %4482 = fmul fast float %4471, %4455
  %4483 = fmul fast float %4471, %4456
  %4484 = fadd fast float %4481, %4472
  %4485 = fadd fast float %4482, %4472
  %4486 = fadd fast float %4483, %4472
  %4487 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4488 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4489 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4490 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4491 = call float @dx.op.binary.f32(i32 36, float %4448, float 1.270000e+02)  ; FMin(a,b)
  %4492 = call float @dx.op.binary.f32(i32 36, float %4449, float 1.270000e+02)  ; FMin(a,b)
  %4493 = call float @dx.op.binary.f32(i32 36, float %4450, float 1.270000e+02)  ; FMin(a,b)
  %4494 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4495 = extractvalue %dx.types.CBufRet.i32 %4494, 3
  %4496 = and i32 %4495, 8
  %4497 = icmp ne i32 %4496, 0
  %4498 = call float @dx.op.binary.f32(i32 35, float %4478, float %4454)  ; FMax(a,b)
  %4499 = call float @dx.op.binary.f32(i32 35, float %4479, float %4454)  ; FMax(a,b)
  %4500 = call float @dx.op.binary.f32(i32 35, float %4480, float %4454)  ; FMax(a,b)
  %4501 = call float @dx.op.dot3.f32(i32 55, float %4478, float %4479, float %4480, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4502 = select i1 %275, float %4454, float %4478
  %4503 = select i1 %275, float %4501, float %4479
  %4504 = select i1 %275, float 1.000000e+00, float %4480
  %4505 = select i1 %4497, float %4498, float %4502
  %4506 = select i1 %4497, float %4499, float %4503
  %4507 = select i1 %4497, float %4500, float %4504
  %4508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4509 = extractvalue %dx.types.CBufRet.f32 %4508, 0
  %4510 = extractvalue %dx.types.CBufRet.f32 %4508, 1
  %4511 = extractvalue %dx.types.CBufRet.f32 %4508, 2
  %4512 = fadd fast float %4509, %203
  %4513 = fadd fast float %4510, %204
  %4514 = fadd fast float %4511, %205
  %4515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4516 = extractvalue %dx.types.CBufRet.f32 %4515, 0
  %4517 = extractvalue %dx.types.CBufRet.f32 %4515, 1
  %4518 = fsub fast float %4512, %4516
  %4519 = fsub fast float %4513, %4517
  %4520 = fmul fast float %4518, %4518
  %4521 = fmul fast float %4519, %4519
  %4522 = fadd fast float %4520, %4521
  %4523 = call float @dx.op.unary.f32(i32 24, float %4522)  ; Sqrt(value)
  %4524 = extractvalue %dx.types.CBufRet.f32 %4515, 2
  %4525 = fcmp fast olt float %4523, %4524
  br i1 %4525, label %4526, label %4593

; <label>:4526                                    ; preds = %4447
  %4527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.f32 %4527, 0
  %4529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4530 = extractvalue %dx.types.CBufRet.f32 %4529, 0
  %4531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.f32 %4531, 0
  %4533 = extractvalue %dx.types.CBufRet.f32 %4527, 1
  %4534 = extractvalue %dx.types.CBufRet.f32 %4529, 1
  %4535 = extractvalue %dx.types.CBufRet.f32 %4531, 1
  %4536 = extractvalue %dx.types.CBufRet.f32 %4527, 3
  %4537 = extractvalue %dx.types.CBufRet.f32 %4529, 3
  %4538 = extractvalue %dx.types.CBufRet.f32 %4531, 3
  %4539 = fadd fast float %4536, %4512
  %4540 = fadd fast float %4537, %4513
  %4541 = fadd fast float %4538, %4514
  %4542 = fmul fast float %4539, %4528
  %4543 = call float @dx.op.tertiary.f32(i32 46, float %4540, float %4530, float %4542)  ; FMad(a,b,c)
  %4544 = call float @dx.op.tertiary.f32(i32 46, float %4541, float %4532, float %4543)  ; FMad(a,b,c)
  %4545 = fmul fast float %4539, %4533
  %4546 = call float @dx.op.tertiary.f32(i32 46, float %4540, float %4534, float %4545)  ; FMad(a,b,c)
  %4547 = call float @dx.op.tertiary.f32(i32 46, float %4541, float %4535, float %4546)  ; FMad(a,b,c)
  %4548 = fsub fast float %4544, %4536
  %4549 = fsub fast float %4547, %4537
  %4550 = fsub fast float %4548, %4516
  %4551 = fadd fast float %4550, %4524
  %4552 = fsub fast float %4549, %4517
  %4553 = fadd fast float %4552, %4524
  %4554 = extractvalue %dx.types.CBufRet.f32 %4515, 3
  %4555 = fmul fast float %4551, %4554
  %4556 = fmul fast float %4553, %4554
  %4557 = call float @dx.op.unary.f32(i32 7, float %4555)  ; Saturate(value)
  %4558 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  %4559 = fsub fast float 1.000000e+00, %4557
  %4560 = fsub fast float 1.000000e+00, %4558
  %4561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %55, float %4559, float %4560, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4562 = extractvalue %dx.types.ResRet.f32 %4561, 0
  %4563 = fcmp fast ugt float %4562, 0.000000e+00
  br i1 %4563, label %4564, label %4867

; <label>:4564                                    ; preds = %4526
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 2
  %4567 = fmul fast float %4566, %4562
  %4568 = extractvalue %dx.types.CBufRet.f32 %4565, 3
  %4569 = fadd fast float %4568, %4567
  %4570 = extractvalue %dx.types.CBufRet.f32 %4531, 2
  %4571 = fadd fast float %4569, %4538
  %4572 = fmul fast float %4544, %4532
  %4573 = call float @dx.op.tertiary.f32(i32 46, float %4547, float %4535, float %4572)  ; FMad(a,b,c)
  %4574 = call float @dx.op.tertiary.f32(i32 46, float %4571, float %4570, float %4573)  ; FMad(a,b,c)
  %4575 = fsub fast float %4574, %4538
  %4576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4577 = extractvalue %dx.types.CBufRet.f32 %4576, 2
  %4578 = fsub fast float %4575, %4577
  %4579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %55, float %4559, float %4560, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4580 = extractvalue %dx.types.ResRet.f32 %4579, 0
  %4581 = extractvalue %dx.types.ResRet.f32 %4579, 1
  %4582 = extractvalue %dx.types.ResRet.f32 %4579, 2
  %4583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %55, float %4559, float %4560, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4584 = extractvalue %dx.types.ResRet.f32 %4583, 0
  %4585 = extractvalue %dx.types.ResRet.f32 %4583, 1
  %4586 = extractvalue %dx.types.ResRet.f32 %4583, 2
  %4587 = fadd fast float %4584, %4580
  %4588 = fmul fast float %4587, 0x3F847AE140000000
  %4589 = fadd fast float %4585, %4581
  %4590 = fmul fast float %4589, 0x3F847AE140000000
  %4591 = fadd fast float %4586, %4582
  %4592 = fmul fast float %4591, 0x3F847AE140000000
  br label %4867

; <label>:4593                                    ; preds = %4447
  %4594 = and i32 %254, 1
  %4595 = icmp eq i32 %4594, 0
  br i1 %4595, label %4867, label %4596

; <label>:4596                                    ; preds = %4593
  %4597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4598 = extractvalue %dx.types.CBufRet.f32 %4597, 0
  %4599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4600 = extractvalue %dx.types.CBufRet.f32 %4599, 0
  %4601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4602 = extractvalue %dx.types.CBufRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.CBufRet.f32 %4597, 1
  %4604 = extractvalue %dx.types.CBufRet.f32 %4599, 1
  %4605 = extractvalue %dx.types.CBufRet.f32 %4601, 1
  %4606 = extractvalue %dx.types.CBufRet.f32 %4597, 3
  %4607 = extractvalue %dx.types.CBufRet.f32 %4599, 3
  %4608 = extractvalue %dx.types.CBufRet.f32 %4601, 3
  %4609 = fadd fast float %4606, %4512
  %4610 = fadd fast float %4607, %4513
  %4611 = fadd fast float %4608, %4514
  %4612 = fmul fast float %4609, %4598
  %4613 = call float @dx.op.tertiary.f32(i32 46, float %4610, float %4600, float %4612)  ; FMad(a,b,c)
  %4614 = call float @dx.op.tertiary.f32(i32 46, float %4611, float %4602, float %4613)  ; FMad(a,b,c)
  %4615 = fmul fast float %4609, %4603
  %4616 = call float @dx.op.tertiary.f32(i32 46, float %4610, float %4604, float %4615)  ; FMad(a,b,c)
  %4617 = call float @dx.op.tertiary.f32(i32 46, float %4611, float %4605, float %4616)  ; FMad(a,b,c)
  %4618 = fsub fast float %4614, %4606
  %4619 = fsub fast float %4617, %4607
  %4620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.f32 %4620, 0
  %4622 = extractvalue %dx.types.CBufRet.f32 %4620, 1
  %4623 = extractvalue %dx.types.CBufRet.f32 %4620, 2
  %4624 = extractvalue %dx.types.CBufRet.f32 %4620, 3
  %4625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.f32 %4625, 3
  %4627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4628 = extractvalue %dx.types.CBufRet.i32 %4627, 0
  %4629 = extractvalue %dx.types.CBufRet.i32 %4627, 1
  %4630 = udiv i32 %4629, %4628
  %4631 = fsub fast float %4618, %4621
  %4632 = fsub fast float %4619, %4622
  %4633 = call float @dx.op.binary.f32(i32 35, float %4631, float 0.000000e+00)  ; FMax(a,b)
  %4634 = call float @dx.op.binary.f32(i32 35, float %4632, float 0.000000e+00)  ; FMax(a,b)
  %4635 = call float @dx.op.binary.f32(i32 36, float %4633, float %4623)  ; FMin(a,b)
  %4636 = call float @dx.op.binary.f32(i32 36, float %4634, float %4624)  ; FMin(a,b)
  %4637 = add i32 %4628, -1
  %4638 = add i32 %4630, -1
  %4639 = fmul fast float %4635, %4626
  %4640 = fmul fast float %4636, %4626
  %4641 = fptoui float %4639 to i32
  %4642 = fptoui float %4640 to i32
  %4643 = call i32 @dx.op.binary.i32(i32 40, i32 %4641, i32 %4637)  ; UMin(a,b)
  %4644 = call i32 @dx.op.binary.i32(i32 40, i32 %4642, i32 %4638)  ; UMin(a,b)
  %4645 = mul i32 %4644, %4628
  %4646 = add i32 %4645, %4643
  %4647 = shl i32 %4646, 2
  %4648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4647, i32 undef)  ; BufferLoad(srv,index,wot)
  %4649 = extractvalue %dx.types.ResRet.i32 %4648, 0
  %4650 = icmp eq i32 %4649, -1
  br i1 %4650, label %4867, label %4651

; <label>:4651                                    ; preds = %4596
  %4652 = mul i32 %4649, 148
  %4653 = add i32 %4652, 4
  %4654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4653, i32 undef)  ; BufferLoad(srv,index,wot)
  %4655 = extractvalue %dx.types.ResRet.f32 %4654, 0
  %4656 = add i32 %4652, 8
  %4657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4656, i32 undef)  ; BufferLoad(srv,index,wot)
  %4658 = extractvalue %dx.types.ResRet.f32 %4657, 0
  %4659 = add i32 %4652, 36
  %4660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4659, i32 undef)  ; BufferLoad(srv,index,wot)
  %4661 = extractvalue %dx.types.ResRet.f32 %4660, 0
  %4662 = add i32 %4652, 60
  %4663 = add i32 %4652, 92
  %4664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4663, i32 undef)  ; BufferLoad(srv,index,wot)
  %4665 = extractvalue %dx.types.ResRet.i32 %4664, 0
  %4666 = add i32 %4652, 116
  %4667 = fsub fast float %4618, %4655
  %4668 = fsub fast float %4619, %4658
  %4669 = fmul fast float %4626, %4667
  %4670 = fmul fast float %4626, %4668
  %4671 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4672 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4673 = fsub fast float 1.000000e+00, %4672
  %4674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4675 = extractvalue %dx.types.CBufRet.f32 %4674, 2
  %4676 = call float @dx.op.unary.f32(i32 83, float %4671)  ; DerivCoarseX(value)
  %4677 = call float @dx.op.unary.f32(i32 83, float %4673)  ; DerivCoarseX(value)
  %4678 = call float @dx.op.unary.f32(i32 84, float %4671)  ; DerivCoarseY(value)
  %4679 = call float @dx.op.unary.f32(i32 84, float %4673)  ; DerivCoarseY(value)
  %4680 = fmul fast float %4676, %4675
  %4681 = fmul fast float %4677, %4675
  %4682 = fmul fast float %4678, %4675
  %4683 = fmul fast float %4679, %4675
  %4684 = call float @dx.op.dot2.f32(i32 54, float %4682, float %4683, float %4682, float %4683)  ; Dot2(ax,ay,bx,by)
  %4685 = call float @dx.op.dot2.f32(i32 54, float %4680, float %4681, float %4680, float %4681)  ; Dot2(ax,ay,bx,by)
  %4686 = call float @dx.op.binary.f32(i32 35, float %4685, float %4684)  ; FMax(a,b)
  %4687 = call float @dx.op.unary.f32(i32 23, float %4686)  ; Log(value)
  %4688 = fmul fast float %4687, 5.000000e-01
  %4689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4690 = extractvalue %dx.types.CBufRet.f32 %4689, 1
  %4691 = fadd fast float %4690, %4688
  %4692 = call float @dx.op.binary.f32(i32 35, float %4691, float 0.000000e+00)  ; FMax(a,b)
  %4693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4694 = extractvalue %dx.types.CBufRet.f32 %4693, 3
  %4695 = fadd fast float %4694, %4692
  %4696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4697 = extractvalue %dx.types.CBufRet.f32 %4696, 3
  %4698 = fadd fast float %4695, %4697
  %4699 = add i32 %4665, 0
  %4700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4699, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4701 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4700, i32 0)  ; GetDimensions(handle,mipLevel)
  %4702 = extractvalue %dx.types.Dimensions %4701, 0
  %4703 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4702)  ; FirstbitLo(value)
  %4704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4705 = extractvalue %dx.types.CBufRet.i32 %4704, 1
  %4706 = sub nsw i32 %4705, %4703
  %4707 = sitofp i32 %4706 to float
  %4708 = fsub fast float %4698, %4707
  %4709 = call float @dx.op.binary.f32(i32 35, float %4708, float 0.000000e+00)  ; FMax(a,b)
  %4710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4700, %dx.types.Handle %53, float %4671, float %4673, float %4661, float undef, i32 0, i32 0, i32 undef, float %4709)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4711 = extractvalue %dx.types.ResRet.f32 %4710, 0
  %4712 = fcmp ule float %4711, 0x3FE0101020000000
  %4713 = extractvalue %dx.types.CBufRet.i32 %4704, 0
  %4714 = and i32 %4713, 128
  %4715 = icmp ne i32 %4714, 0
  %4716 = and i1 %4712, %4715
  br i1 %4716, label %4867, label %4717

; <label>:4717                                    ; preds = %4651
  %4718 = add i32 %4652, 20
  %4719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4718, i32 undef)  ; BufferLoad(srv,index,wot)
  %4720 = extractvalue %dx.types.ResRet.f32 %4719, 0
  %4721 = add i32 %4652, 24
  %4722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4721, i32 undef)  ; BufferLoad(srv,index,wot)
  %4723 = extractvalue %dx.types.ResRet.f32 %4722, 0
  %4724 = add i32 %4652, 40
  %4725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4724, i32 undef)  ; BufferLoad(srv,index,wot)
  %4726 = extractvalue %dx.types.ResRet.f32 %4725, 0
  %4727 = add i32 %4652, 96
  %4728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4727, i32 undef)  ; BufferLoad(srv,index,wot)
  %4729 = extractvalue %dx.types.ResRet.i32 %4728, 0
  %4730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4731 = extractvalue %dx.types.CBufRet.f32 %4730, 2
  %4732 = fmul fast float %4731, %4671
  %4733 = fmul fast float %4731, %4673
  %4734 = extractvalue %dx.types.CBufRet.f32 %4730, 3
  %4735 = fadd fast float %4732, %4734
  %4736 = fadd fast float %4733, %4734
  %4737 = add i32 %4729, 0
  %4738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4737, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4739 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4738, i32 0)  ; GetDimensions(handle,mipLevel)
  %4740 = extractvalue %dx.types.Dimensions %4739, 0
  %4741 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4740)  ; FirstbitLo(value)
  %4742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.i32 %4742, 1
  %4744 = sub nsw i32 %4743, %4741
  %4745 = sitofp i32 %4744 to float
  %4746 = fsub fast float %4695, %4745
  %4747 = call float @dx.op.binary.f32(i32 35, float %4746, float 0.000000e+00)  ; FMax(a,b)
  %4748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4738, %dx.types.Handle %53, float %4735, float %4736, float %4726, float undef, i32 0, i32 0, i32 undef, float %4747)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4749 = extractvalue %dx.types.ResRet.f32 %4748, 0
  %4750 = fmul fast float %4749, %4720
  %4751 = fadd fast float %4750, %4723
  %4752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4753 = extractvalue %dx.types.CBufRet.f32 %4752, 0
  %4754 = extractvalue %dx.types.CBufRet.f32 %4752, 1
  %4755 = extractvalue %dx.types.CBufRet.f32 %4752, 2
  %4756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4757 = extractvalue %dx.types.CBufRet.f32 %4756, 3
  %4758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4759 = extractvalue %dx.types.CBufRet.f32 %4758, 3
  %4760 = extractvalue %dx.types.CBufRet.f32 %4752, 3
  %4761 = fadd fast float %4757, %4618
  %4762 = fadd fast float %4759, %4619
  %4763 = fadd fast float %4751, %4760
  %4764 = fmul fast float %4761, %4753
  %4765 = call float @dx.op.tertiary.f32(i32 46, float %4762, float %4754, float %4764)  ; FMad(a,b,c)
  %4766 = call float @dx.op.tertiary.f32(i32 46, float %4763, float %4755, float %4765)  ; FMad(a,b,c)
  %4767 = fsub fast float %4766, %4760
  %4768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4769 = extractvalue %dx.types.CBufRet.f32 %4768, 2
  %4770 = fsub fast float %4767, %4769
  %4771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4772 = extractvalue %dx.types.CBufRet.i32 %4771, 0
  %4773 = call i32 @dx.op.binary.i32(i32 40, i32 %4649, i32 %4772)  ; UMin(a,b)
  %4774 = mul i32 %4773, 36
  %4775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4774, i32 undef)  ; BufferLoad(srv,index,wot)
  %4776 = extractvalue %dx.types.ResRet.i32 %4775, 0
  %4777 = add i32 %4774, 4
  %4778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4779 = extractvalue %dx.types.CBufRet.f32 %4778, 0
  %4780 = fmul fast float %4779, %4671
  %4781 = fmul fast float %4779, %4673
  %4782 = extractvalue %dx.types.CBufRet.f32 %4778, 1
  %4783 = fadd fast float %4780, %4782
  %4784 = fadd fast float %4781, %4782
  %4785 = icmp eq i32 %4776, 0
  br i1 %4785, label %4854, label %4786

; <label>:4786                                    ; preds = %4717
  br label %4787

; <label>:4787                                    ; preds = %4844, %4786
  %4788 = phi float [ %4845, %4844 ], [ 0.000000e+00, %4786 ]
  %4789 = phi float [ %4846, %4844 ], [ 0.000000e+00, %4786 ]
  %4790 = phi float [ %4847, %4844 ], [ 0.000000e+00, %4786 ]
  %4791 = phi float [ %4848, %4844 ], [ 0.000000e+00, %4786 ]
  %4792 = phi float [ %4849, %4844 ], [ 0.000000e+00, %4786 ]
  %4793 = phi float [ %4850, %4844 ], [ 0.000000e+00, %4786 ]
  %4794 = phi i32 [ %4851, %4844 ], [ 0, %4786 ]
  %4795 = shl i32 %4794, 2
  %4796 = add i32 %4662, %4795
  %4797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4796, i32 undef)  ; BufferLoad(srv,index,wot)
  %4798 = extractvalue %dx.types.ResRet.f32 %4797, 0
  %4799 = add i32 %4666, %4795
  %4800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4799, i32 undef)  ; BufferLoad(srv,index,wot)
  %4801 = extractvalue %dx.types.ResRet.i32 %4800, 0
  %4802 = add i32 %4801, 0
  %4803 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4802, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4804 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4803, i32 0)  ; GetDimensions(handle,mipLevel)
  %4805 = extractvalue %dx.types.Dimensions %4804, 0
  %4806 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4805)  ; FirstbitLo(value)
  %4807 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4808 = extractvalue %dx.types.CBufRet.i32 %4807, 1
  %4809 = sub nsw i32 %4808, %4806
  %4810 = sitofp i32 %4809 to float
  %4811 = fsub fast float %4695, %4810
  %4812 = call float @dx.op.binary.f32(i32 35, float %4811, float 0.000000e+00)  ; FMax(a,b)
  %4813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4803, %dx.types.Handle %53, float %4783, float %4784, float %4798, float undef, i32 0, i32 0, i32 undef, float %4812)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4814 = extractvalue %dx.types.ResRet.f32 %4813, 0
  %4815 = fcmp fast ogt float %4814, 0.000000e+00
  br i1 %4815, label %4816, label %4844

; <label>:4816                                    ; preds = %4787
  %4817 = add i32 %4777, %4795
  %4818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4817, i32 undef)  ; BufferLoad(srv,index,wot)
  %4819 = extractvalue %dx.types.ResRet.i32 %4818, 0
  %4820 = and i32 %4819, 32767
  %4821 = mul nuw nsw i32 %4820, 928
  %4822 = add nuw nsw i32 %4821, 48
  %4823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4822, i32 undef)  ; BufferLoad(srv,index,wot)
  %4824 = extractvalue %dx.types.ResRet.f32 %4823, 0
  %4825 = extractvalue %dx.types.ResRet.f32 %4823, 1
  %4826 = extractvalue %dx.types.ResRet.f32 %4823, 2
  %4827 = add nuw nsw i32 %4821, 60
  %4828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4827, i32 undef)  ; BufferLoad(srv,index,wot)
  %4829 = extractvalue %dx.types.ResRet.f32 %4828, 0
  %4830 = extractvalue %dx.types.ResRet.f32 %4828, 1
  %4831 = extractvalue %dx.types.ResRet.f32 %4828, 2
  %4832 = fmul fast float %4824, %4814
  %4833 = fmul fast float %4825, %4814
  %4834 = fmul fast float %4826, %4814
  %4835 = fadd fast float %4832, %4788
  %4836 = fadd fast float %4833, %4789
  %4837 = fadd fast float %4834, %4790
  %4838 = fmul fast float %4829, %4814
  %4839 = fmul fast float %4830, %4814
  %4840 = fmul fast float %4831, %4814
  %4841 = fadd fast float %4838, %4791
  %4842 = fadd fast float %4839, %4792
  %4843 = fadd fast float %4840, %4793
  br label %4844

; <label>:4844                                    ; preds = %4816, %4787
  %4845 = phi float [ %4835, %4816 ], [ %4788, %4787 ]
  %4846 = phi float [ %4836, %4816 ], [ %4789, %4787 ]
  %4847 = phi float [ %4837, %4816 ], [ %4790, %4787 ]
  %4848 = phi float [ %4841, %4816 ], [ %4791, %4787 ]
  %4849 = phi float [ %4842, %4816 ], [ %4792, %4787 ]
  %4850 = phi float [ %4843, %4816 ], [ %4793, %4787 ]
  %4851 = add nuw i32 %4794, 1
  %4852 = icmp eq i32 %4851, %4776
  br i1 %4852, label %4853, label %4787

; <label>:4853                                    ; preds = %4844
  br label %4854

; <label>:4854                                    ; preds = %4853, %4717
  %4855 = phi float [ 0.000000e+00, %4717 ], [ %4845, %4853 ]
  %4856 = phi float [ 0.000000e+00, %4717 ], [ %4846, %4853 ]
  %4857 = phi float [ 0.000000e+00, %4717 ], [ %4847, %4853 ]
  %4858 = phi float [ 0.000000e+00, %4717 ], [ %4848, %4853 ]
  %4859 = phi float [ 0.000000e+00, %4717 ], [ %4849, %4853 ]
  %4860 = phi float [ 0.000000e+00, %4717 ], [ %4850, %4853 ]
  %4861 = fadd fast float %4858, %4855
  %4862 = fmul fast float %4861, 0x3F847AE140000000
  %4863 = fadd fast float %4859, %4856
  %4864 = fmul fast float %4863, 0x3F847AE140000000
  %4865 = fadd fast float %4860, %4857
  %4866 = fmul fast float %4865, 0x3F847AE140000000
  br label %4867

; <label>:4867                                    ; preds = %4854, %4651, %4596, %4593, %4564, %4526
  %4868 = phi float [ %4588, %4564 ], [ 0.000000e+00, %4526 ], [ %4862, %4854 ], [ 0.000000e+00, %4596 ], [ 0.000000e+00, %4651 ], [ 0.000000e+00, %4593 ]
  %4869 = phi float [ %4590, %4564 ], [ 0.000000e+00, %4526 ], [ %4864, %4854 ], [ 0.000000e+00, %4596 ], [ 0.000000e+00, %4651 ], [ 0.000000e+00, %4593 ]
  %4870 = phi float [ %4592, %4564 ], [ 0.000000e+00, %4526 ], [ %4866, %4854 ], [ 0.000000e+00, %4596 ], [ 0.000000e+00, %4651 ], [ 0.000000e+00, %4593 ]
  %4871 = phi float [ %4578, %4564 ], [ -1.310720e+05, %4526 ], [ %4770, %4854 ], [ -1.310720e+05, %4596 ], [ -1.310720e+05, %4651 ], [ -1.310720e+05, %4593 ]
  %4872 = phi i1 [ true, %4564 ], [ false, %4526 ], [ true, %4854 ], [ false, %4596 ], [ false, %4651 ], [ false, %4593 ]
  %4873 = and i32 %254, 3
  %4874 = icmp eq i32 %4873, 1
  %4875 = select i1 %4874, float 1.000000e+00, float 0.000000e+00
  %4876 = fsub fast float %4871, %205
  %4877 = call float @dx.op.unary.f32(i32 7, float %4876)  ; Saturate(value)
  %4878 = select i1 %4872, float %4877, float 1.000000e+00
  %4879 = fmul fast float %4878, %4875
  %4880 = icmp eq i32 %4873, 3
  %4881 = select i1 %4880, float 1.000000e+00, float %4879
  %4882 = call float @dx.op.binary.f32(i32 35, float %4466, float %4881)  ; FMax(a,b)
  %4883 = fcmp fast olt float %4881, 1.000000e+00
  %4884 = fcmp uge float %77, 0.000000e+00
  %4885 = and i1 %4884, %4883
  br i1 %4885, label %4886, label %4896

; <label>:4886                                    ; preds = %4867
  %4887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %53, float %77, float %78, float %79, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4888 = extractvalue %dx.types.ResRet.f32 %4887, 0
  %4889 = extractvalue %dx.types.ResRet.f32 %4887, 1
  %4890 = extractvalue %dx.types.ResRet.f32 %4887, 2
  %4891 = fadd fast float %4888, %4882
  %4892 = fcmp ule float %76, 0.000000e+00
  %4893 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4894 = select i1 %4892, float %4893, float 1.000000e+00
  %4895 = fmul fast float %4894, %4890
  br label %4896

; <label>:4896                                    ; preds = %4886, %4867
  %4897 = phi float [ %4891, %4886 ], [ %4882, %4867 ]
  %4898 = phi float [ %4889, %4886 ], [ 0.000000e+00, %4867 ]
  %4899 = phi float [ %4895, %4886 ], [ 0.000000e+00, %4867 ]
  %4900 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4901 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4902 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4903 = fcmp fast une float %4901, 0.000000e+00
  %4904 = fcmp fast une float %4902, 0.000000e+00
  %4905 = or i1 %4903, %4904
  br i1 %4905, label %4906, label %5465

; <label>:4906                                    ; preds = %4896
  br i1 %4903, label %4907, label %5180

; <label>:4907                                    ; preds = %4906
  %4908 = call float @dx.op.unary.f32(i32 23, float %4463)  ; Log(value)
  %4909 = fmul fast float %4908, 4.000000e+00
  %4910 = call float @dx.op.unary.f32(i32 21, float %4909)  ; Exp(value)
  %4911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4912 = extractvalue %dx.types.CBufRet.f32 %4911, 0
  %4913 = fmul fast float %4912, %64
  %4914 = fmul fast float %4912, %65
  %4915 = fmul fast float %4912, %66
  %4916 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4917 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4918 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4919 = call float @dx.op.unary.f32(i32 23, float %4916)  ; Log(value)
  %4920 = call float @dx.op.unary.f32(i32 23, float %4917)  ; Log(value)
  %4921 = call float @dx.op.unary.f32(i32 23, float %4918)  ; Log(value)
  %4922 = fmul fast float %4919, 4.000000e+00
  %4923 = fmul fast float %4920, 4.000000e+00
  %4924 = fmul fast float %4921, 4.000000e+00
  %4925 = call float @dx.op.unary.f32(i32 21, float %4922)  ; Exp(value)
  %4926 = call float @dx.op.unary.f32(i32 21, float %4923)  ; Exp(value)
  %4927 = call float @dx.op.unary.f32(i32 21, float %4924)  ; Exp(value)
  %4928 = fadd fast float %4926, %4925
  %4929 = fadd fast float %4928, %4927
  %4930 = fdiv fast float 1.000000e+00, %4929
  %4931 = fmul fast float %4930, %4925
  %4932 = fcmp fast ogt float %73, 0.000000e+00
  %4933 = fcmp fast ogt float %74, 0.000000e+00
  %4934 = fcmp fast ogt float %75, 0.000000e+00
  %4935 = fcmp fast olt float %73, 0.000000e+00
  %4936 = fcmp fast olt float %74, 0.000000e+00
  %4937 = fcmp fast olt float %75, 0.000000e+00
  %4938 = zext i1 %4932 to i32
  %4939 = zext i1 %4933 to i32
  %4940 = zext i1 %4934 to i32
  %4941 = zext i1 %4935 to i32
  %4942 = zext i1 %4936 to i32
  %4943 = zext i1 %4937 to i32
  %4944 = sub nsw i32 %4938, %4941
  %4945 = sub nsw i32 %4939, %4942
  %4946 = sub nsw i32 %4940, %4943
  %4947 = call float @dx.op.unary.f32(i32 83, float %4913)  ; DerivCoarseX(value)
  %4948 = call float @dx.op.unary.f32(i32 83, float %4914)  ; DerivCoarseX(value)
  %4949 = call float @dx.op.unary.f32(i32 83, float %4915)  ; DerivCoarseX(value)
  %4950 = call float @dx.op.unary.f32(i32 84, float %4913)  ; DerivCoarseY(value)
  %4951 = call float @dx.op.unary.f32(i32 84, float %4914)  ; DerivCoarseY(value)
  %4952 = call float @dx.op.unary.f32(i32 84, float %4915)  ; DerivCoarseY(value)
  %4953 = fcmp fast ole float %286, %4931
  %4954 = fmul fast float %4930, %4928
  %4955 = fcmp fast ole float %286, %4954
  %4956 = select i1 %4955, float %4915, float %4913
  %4957 = select i1 %4955, float %4913, float %4914
  %4958 = select i1 %4953, float %4914, float %4956
  %4959 = select i1 %4953, float %4915, float %4957
  %4960 = select i1 %4955, float %4949, float %4947
  %4961 = select i1 %4955, float %4947, float %4948
  %4962 = select i1 %4953, float %4948, float %4960
  %4963 = select i1 %4953, float %4949, float %4961
  %4964 = select i1 %4955, float %4952, float %4950
  %4965 = select i1 %4955, float %4950, float %4951
  %4966 = select i1 %4953, float %4951, float %4964
  %4967 = select i1 %4953, float %4952, float %4965
  %4968 = call float @dx.op.unary.f32(i32 27, float %4958)  ; Round_ni(value)
  %4969 = call float @dx.op.unary.f32(i32 27, float %4959)  ; Round_ni(value)
  %4970 = fptosi float %4968 to i32
  %4971 = fptosi float %4969 to i32
  %4972 = xor i32 %4971, %4970
  %4973 = sitofp i32 %4972 to float
  %4974 = fptosi float %4973 to i32
  %4975 = sitofp i32 %4974 to float
  %4976 = fmul fast float %4975, 0x3FE3C6EF40000000
  %4977 = frem fast float %4968, 2.560000e+02
  %4978 = frem fast float %4969, 2.560000e+02
  %4979 = fptoui float %4977 to i32
  %4980 = fptoui float %4978 to i32
  %4981 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4979, i32 %4980, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4982 = extractvalue %dx.types.ResRet.f32 %4981, 0
  %4983 = extractvalue %dx.types.ResRet.f32 %4981, 1
  %4984 = extractvalue %dx.types.ResRet.f32 %4981, 2
  %4985 = fadd fast float %4982, %4976
  %4986 = fadd fast float %4983, %4976
  %4987 = fadd fast float %4984, %4976
  %4988 = call float @dx.op.unary.f32(i32 22, float %4985)  ; Frc(value)
  %4989 = call float @dx.op.unary.f32(i32 22, float %4986)  ; Frc(value)
  %4990 = call float @dx.op.unary.f32(i32 22, float %4987)  ; Frc(value)
  %4991 = fmul fast float %4990, 0x401921FB60000000
  %4992 = call float @dx.op.unary.f32(i32 13, float %4991)  ; Sin(value)
  %4993 = call float @dx.op.unary.f32(i32 12, float %4991)  ; Cos(value)
  %4994 = fsub fast float -0.000000e+00, %4993
  %4995 = fmul fast float %4993, %4958
  %4996 = call float @dx.op.tertiary.f32(i32 46, float %4992, float %4959, float %4995)  ; FMad(a,b,c)
  %4997 = fmul fast float %4992, %4958
  %4998 = call float @dx.op.tertiary.f32(i32 46, float %4994, float %4959, float %4997)  ; FMad(a,b,c)
  %4999 = fadd fast float %4996, %4988
  %5000 = fadd fast float %4998, %4989
  %5001 = extractvalue %dx.types.CBufRet.f32 %4911, 3
  %5002 = bitcast float %5001 to i32
  %5003 = icmp eq i32 %5002, 0
  br i1 %5003, label %5042, label %5004

; <label>:5004                                    ; preds = %4907
  %5005 = add i32 %5002, 0
  %5006 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5005, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5007 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5006, %dx.types.Handle %113, float %4999, float %5000, float undef, float undef, i32 0, i32 0, i32 undef, float %4962, float %4963, float undef, float %4966, float %4967, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5008 = extractvalue %dx.types.ResRet.f32 %5007, 0
  %5009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5010 = extractvalue %dx.types.CBufRet.f32 %5009, 1
  %5011 = extractvalue %dx.types.CBufRet.f32 %5009, 2
  %5012 = fsub fast float 1.000000e+00, %4901
  %5013 = call float @dx.op.binary.f32(i32 35, float %5012, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5014 = bitcast float %4901 to i32
  %5015 = sitofp i32 %5014 to float
  %5016 = fadd fast float %5015, 0xC1CFBF8940000000
  %5017 = fmul fast float %5011, %5016
  %5018 = fadd fast float %5017, 0x41CFBF8940000000
  %5019 = fptosi float %5018 to i32
  %5020 = bitcast i32 %5019 to float
  %5021 = bitcast float %5013 to i32
  %5022 = sitofp i32 %5021 to float
  %5023 = fadd fast float %5022, 0xC1CFBF8940000000
  %5024 = fmul fast float %5023, %5011
  %5025 = fadd fast float %5024, 0x41CFBF8940000000
  %5026 = fptosi float %5025 to i32
  %5027 = bitcast i32 %5026 to float
  %5028 = fmul fast float %5020, %5010
  %5029 = fmul fast float %5027, %5010
  %5030 = fsub fast float %5013, %5028
  %5031 = fadd fast float %5029, %5013
  %5032 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5033 = call float @dx.op.unary.f32(i32 7, float %5031)  ; Saturate(value)
  %5034 = fsub fast float %5008, %5032
  %5035 = fsub fast float %5033, %5032
  %5036 = bitcast float %5035 to i32
  %5037 = sub nsw i32 2129859010, %5036
  %5038 = bitcast i32 %5037 to float
  %5039 = fmul fast float %5038, %5034
  %5040 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5041 = fcmp fast olt float %5040, 0x3F70101020000000
  br i1 %5041, label %5180, label %5042

; <label>:5042                                    ; preds = %5004, %4907
  %5043 = phi float [ %5040, %5004 ], [ %4901, %4907 ]
  %5044 = fmul fast float %5043, %4910
  %5045 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5046 = extractvalue %dx.types.CBufRet.i32 %5045, 1
  %5047 = extractvalue %dx.types.CBufRet.i32 %5045, 0
  %5048 = add i32 %5047, 0
  %5049 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5048, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5050 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5049, %dx.types.Handle %112, float %4999, float %5000, float undef, float undef, i32 0, i32 0, i32 undef, float %4962, float %4963, float undef, float %4966, float %4967, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5051 = extractvalue %dx.types.ResRet.f32 %5050, 0
  %5052 = extractvalue %dx.types.ResRet.f32 %5050, 1
  %5053 = extractvalue %dx.types.ResRet.f32 %5050, 2
  %5054 = extractvalue %dx.types.ResRet.f32 %5050, 3
  %5055 = and i32 %5046, 255
  %5056 = uitofp i32 %5055 to float
  %5057 = lshr i32 %5046, 8
  %5058 = and i32 %5057, 255
  %5059 = uitofp i32 %5058 to float
  %5060 = fmul fast float %5054, %5056
  %5061 = fadd fast float %5060, %5059
  %5062 = fmul fast float %5061, 0x3F70101000000000
  %5063 = fadd fast float %5062, 0xBFB99999A0000000
  %5064 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5065 = fmul fast float %5064, 0x3FF1C71C80000000
  %5066 = call float @dx.op.binary.f32(i32 36, float %5062, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5067 = fsub fast float 1.000000e+00, %5065
  %5068 = call float @dx.op.unary.f32(i32 7, float %5067)  ; Saturate(value)
  %5069 = fmul fast float %5068, %5051
  %5070 = fmul fast float %5068, %5052
  %5071 = fmul fast float %5068, %5053
  %5072 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5073 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5074 = call float @dx.op.unary.f32(i32 7, float %5071)  ; Saturate(value)
  %5075 = fmul fast float %5065, %5051
  %5076 = fmul fast float %5065, %5052
  %5077 = fmul fast float %5065, %5053
  %5078 = fadd fast float %5075, %5066
  %5079 = fadd fast float %5076, %5066
  %5080 = fadd fast float %5077, %5066
  %5081 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5082 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5083 = call float @dx.op.unary.f32(i32 7, float %5080)  ; Saturate(value)
  %5084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.i32 %5084, 3
  %5086 = extractvalue %dx.types.CBufRet.i32 %5084, 2
  %5087 = add i32 %5086, 0
  %5088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5087, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5089 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5088, %dx.types.Handle %112, float %4999, float %5000, float undef, float undef, i32 0, i32 0, i32 undef, float %4962, float %4963, float undef, float %4966, float %4967, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5090 = extractvalue %dx.types.ResRet.f32 %5089, 0
  %5091 = extractvalue %dx.types.ResRet.f32 %5089, 1
  %5092 = extractvalue %dx.types.ResRet.f32 %5089, 2
  %5093 = extractvalue %dx.types.ResRet.f32 %5089, 3
  %5094 = and i32 %5085, 255
  %5095 = uitofp i32 %5094 to float
  %5096 = lshr i32 %5085, 8
  %5097 = and i32 %5096, 255
  %5098 = uitofp i32 %5097 to float
  %5099 = lshr i32 %5085, 16
  %5100 = and i32 %5099, 255
  %5101 = uitofp i32 %5100 to float
  %5102 = fmul fast float %5101, 0x3F70101000000000
  %5103 = fmul fast float %5090, %5095
  %5104 = fadd fast float %5103, %5098
  %5105 = fmul fast float %5104, 0x3F70101000000000
  %5106 = fadd fast float %5091, -5.000000e-01
  %5107 = fadd fast float %5093, -5.000000e-01
  %5108 = fmul fast float %5106, %5102
  %5109 = fmul fast float %5107, %5102
  %5110 = fadd fast float %5108, 5.000000e-01
  %5111 = fadd fast float %5109, 5.000000e-01
  %5112 = fmul fast float %5110, 2.000000e+00
  %5113 = fadd fast float %5112, -1.000000e+00
  %5114 = fmul fast float %5111, 2.000000e+00
  %5115 = fadd fast float %5114, -1.000000e+00
  %5116 = fadd fast float %5113, %5115
  %5117 = fmul fast float %5116, 5.000000e-01
  %5118 = fsub fast float %5113, %5115
  %5119 = fmul fast float %5118, 5.000000e-01
  %5120 = call float @dx.op.unary.f32(i32 6, float %5117)  ; FAbs(value)
  %5121 = fsub fast float 1.000000e+00, %5120
  %5122 = call float @dx.op.unary.f32(i32 6, float %5119)  ; FAbs(value)
  %5123 = fsub fast float %5121, %5122
  %5124 = call float @dx.op.dot3.f32(i32 55, float %5117, float %5119, float %5123, float %5117, float %5119, float %5123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5125 = call float @dx.op.unary.f32(i32 25, float %5124)  ; Rsqrt(value)
  %5126 = fmul fast float %5117, %5125
  %5127 = fmul fast float %5119, %5125
  %5128 = select i1 %4955, i32 %4945, i32 %4946
  %5129 = select i1 %4953, i32 %4944, i32 %5128
  %5130 = sitofp i32 %5129 to float
  %5131 = fmul fast float %5123, %5130
  %5132 = fmul fast float %5131, %5125
  %5133 = select i1 %4955, float %5132, float %5127
  %5134 = select i1 %4955, float %5127, float %5132
  %5135 = select i1 %4953, float %5132, float %5126
  %5136 = select i1 %4953, float %5127, float %5133
  %5137 = select i1 %4953, float %5126, float %5134
  %5138 = fsub fast float %5072, %4505
  %5139 = fsub fast float %5073, %4506
  %5140 = fsub fast float %5074, %4507
  %5141 = fmul fast float %5138, %5044
  %5142 = fmul fast float %5139, %5044
  %5143 = fmul fast float %5140, %5044
  %5144 = fadd fast float %5141, %4505
  %5145 = fadd fast float %5142, %4506
  %5146 = fadd fast float %5143, %4507
  %5147 = fsub fast float %5081, %4487
  %5148 = fsub fast float %5082, %4488
  %5149 = fsub fast float %5083, %4489
  %5150 = fmul fast float %5147, %5044
  %5151 = fmul fast float %5148, %5044
  %5152 = fmul fast float %5149, %5044
  %5153 = fadd fast float %5150, %4487
  %5154 = fadd fast float %5151, %4488
  %5155 = fadd fast float %5152, %4489
  %5156 = fadd fast float %5135, %4451
  %5157 = fadd fast float %5136, %4452
  %5158 = fadd fast float %5137, %4453
  %5159 = call float @dx.op.dot3.f32(i32 55, float %5156, float %5157, float %5158, float %5156, float %5157, float %5158)  ; Dot3(ax,ay,az,bx,by,bz)
  %5160 = call float @dx.op.unary.f32(i32 25, float %5159)  ; Rsqrt(value)
  %5161 = fmul fast float %5156, %5160
  %5162 = fmul fast float %5157, %5160
  %5163 = fmul fast float %5158, %5160
  %5164 = fsub fast float %5161, %4451
  %5165 = fsub fast float %5162, %4452
  %5166 = fsub fast float %5163, %4453
  %5167 = fmul fast float %5164, %5044
  %5168 = fmul fast float %5165, %5044
  %5169 = fmul fast float %5166, %5044
  %5170 = fadd fast float %5167, %4451
  %5171 = fadd fast float %5168, %4452
  %5172 = fadd fast float %5169, %4453
  %5173 = call float @dx.op.binary.f32(i32 36, float %4463, float %5092)  ; FMin(a,b)
  %5174 = fsub fast float %5173, %4463
  %5175 = fmul fast float %5174, %5044
  %5176 = fadd fast float %5175, %4463
  %5177 = fsub fast float %5105, %4490
  %5178 = fmul fast float %5177, %5044
  %5179 = fadd fast float %5178, %4490
  br label %5180

; <label>:5180                                    ; preds = %5042, %5004, %4906
  %5181 = phi float [ %5153, %5042 ], [ %4487, %5004 ], [ %4487, %4906 ]
  %5182 = phi float [ %5154, %5042 ], [ %4488, %5004 ], [ %4488, %4906 ]
  %5183 = phi float [ %5155, %5042 ], [ %4489, %5004 ], [ %4489, %4906 ]
  %5184 = phi float [ %5170, %5042 ], [ %4451, %5004 ], [ %4451, %4906 ]
  %5185 = phi float [ %5171, %5042 ], [ %4452, %5004 ], [ %4452, %4906 ]
  %5186 = phi float [ %5172, %5042 ], [ %4453, %5004 ], [ %4453, %4906 ]
  %5187 = phi float [ %5144, %5042 ], [ %4505, %5004 ], [ %4505, %4906 ]
  %5188 = phi float [ %5145, %5042 ], [ %4506, %5004 ], [ %4506, %4906 ]
  %5189 = phi float [ %5146, %5042 ], [ %4507, %5004 ], [ %4507, %4906 ]
  %5190 = phi float [ %5179, %5042 ], [ %4490, %5004 ], [ %4490, %4906 ]
  %5191 = phi float [ %5176, %5042 ], [ %4463, %5004 ], [ %4463, %4906 ]
  br i1 %4904, label %5192, label %5465

; <label>:5192                                    ; preds = %5180
  %5193 = call float @dx.op.unary.f32(i32 23, float %5191)  ; Log(value)
  %5194 = fmul fast float %5193, 4.000000e+00
  %5195 = call float @dx.op.unary.f32(i32 21, float %5194)  ; Exp(value)
  %5196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5197 = extractvalue %dx.types.CBufRet.f32 %5196, 0
  %5198 = fmul fast float %5197, %64
  %5199 = fmul fast float %5197, %65
  %5200 = fmul fast float %5197, %66
  %5201 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %5202 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %5203 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %5204 = call float @dx.op.unary.f32(i32 23, float %5201)  ; Log(value)
  %5205 = call float @dx.op.unary.f32(i32 23, float %5202)  ; Log(value)
  %5206 = call float @dx.op.unary.f32(i32 23, float %5203)  ; Log(value)
  %5207 = fmul fast float %5204, 4.000000e+00
  %5208 = fmul fast float %5205, 4.000000e+00
  %5209 = fmul fast float %5206, 4.000000e+00
  %5210 = call float @dx.op.unary.f32(i32 21, float %5207)  ; Exp(value)
  %5211 = call float @dx.op.unary.f32(i32 21, float %5208)  ; Exp(value)
  %5212 = call float @dx.op.unary.f32(i32 21, float %5209)  ; Exp(value)
  %5213 = fadd fast float %5211, %5210
  %5214 = fadd fast float %5213, %5212
  %5215 = fdiv fast float 1.000000e+00, %5214
  %5216 = fmul fast float %5215, %5210
  %5217 = fcmp fast ogt float %73, 0.000000e+00
  %5218 = fcmp fast ogt float %74, 0.000000e+00
  %5219 = fcmp fast ogt float %75, 0.000000e+00
  %5220 = fcmp fast olt float %73, 0.000000e+00
  %5221 = fcmp fast olt float %74, 0.000000e+00
  %5222 = fcmp fast olt float %75, 0.000000e+00
  %5223 = zext i1 %5217 to i32
  %5224 = zext i1 %5218 to i32
  %5225 = zext i1 %5219 to i32
  %5226 = zext i1 %5220 to i32
  %5227 = zext i1 %5221 to i32
  %5228 = zext i1 %5222 to i32
  %5229 = sub nsw i32 %5223, %5226
  %5230 = sub nsw i32 %5224, %5227
  %5231 = sub nsw i32 %5225, %5228
  %5232 = call float @dx.op.unary.f32(i32 83, float %5198)  ; DerivCoarseX(value)
  %5233 = call float @dx.op.unary.f32(i32 83, float %5199)  ; DerivCoarseX(value)
  %5234 = call float @dx.op.unary.f32(i32 83, float %5200)  ; DerivCoarseX(value)
  %5235 = call float @dx.op.unary.f32(i32 84, float %5198)  ; DerivCoarseY(value)
  %5236 = call float @dx.op.unary.f32(i32 84, float %5199)  ; DerivCoarseY(value)
  %5237 = call float @dx.op.unary.f32(i32 84, float %5200)  ; DerivCoarseY(value)
  %5238 = fcmp fast ole float %286, %5216
  %5239 = fmul fast float %5215, %5213
  %5240 = fcmp fast ole float %286, %5239
  %5241 = select i1 %5240, float %5200, float %5198
  %5242 = select i1 %5240, float %5198, float %5199
  %5243 = select i1 %5238, float %5199, float %5241
  %5244 = select i1 %5238, float %5200, float %5242
  %5245 = select i1 %5240, float %5234, float %5232
  %5246 = select i1 %5240, float %5232, float %5233
  %5247 = select i1 %5238, float %5233, float %5245
  %5248 = select i1 %5238, float %5234, float %5246
  %5249 = select i1 %5240, float %5237, float %5235
  %5250 = select i1 %5240, float %5235, float %5236
  %5251 = select i1 %5238, float %5236, float %5249
  %5252 = select i1 %5238, float %5237, float %5250
  %5253 = call float @dx.op.unary.f32(i32 27, float %5243)  ; Round_ni(value)
  %5254 = call float @dx.op.unary.f32(i32 27, float %5244)  ; Round_ni(value)
  %5255 = fptosi float %5253 to i32
  %5256 = fptosi float %5254 to i32
  %5257 = xor i32 %5256, %5255
  %5258 = sitofp i32 %5257 to float
  %5259 = fptosi float %5258 to i32
  %5260 = sitofp i32 %5259 to float
  %5261 = fmul fast float %5260, 0x3FE3C6EF40000000
  %5262 = frem fast float %5253, 2.560000e+02
  %5263 = frem fast float %5254, 2.560000e+02
  %5264 = fptoui float %5262 to i32
  %5265 = fptoui float %5263 to i32
  %5266 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %5264, i32 %5265, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5267 = extractvalue %dx.types.ResRet.f32 %5266, 0
  %5268 = extractvalue %dx.types.ResRet.f32 %5266, 1
  %5269 = extractvalue %dx.types.ResRet.f32 %5266, 2
  %5270 = fadd fast float %5267, %5261
  %5271 = fadd fast float %5268, %5261
  %5272 = fadd fast float %5269, %5261
  %5273 = call float @dx.op.unary.f32(i32 22, float %5270)  ; Frc(value)
  %5274 = call float @dx.op.unary.f32(i32 22, float %5271)  ; Frc(value)
  %5275 = call float @dx.op.unary.f32(i32 22, float %5272)  ; Frc(value)
  %5276 = fmul fast float %5275, 0x401921FB60000000
  %5277 = call float @dx.op.unary.f32(i32 13, float %5276)  ; Sin(value)
  %5278 = call float @dx.op.unary.f32(i32 12, float %5276)  ; Cos(value)
  %5279 = fsub fast float -0.000000e+00, %5278
  %5280 = fmul fast float %5278, %5243
  %5281 = call float @dx.op.tertiary.f32(i32 46, float %5277, float %5244, float %5280)  ; FMad(a,b,c)
  %5282 = fmul fast float %5277, %5243
  %5283 = call float @dx.op.tertiary.f32(i32 46, float %5279, float %5244, float %5282)  ; FMad(a,b,c)
  %5284 = fadd fast float %5281, %5273
  %5285 = fadd fast float %5283, %5274
  %5286 = extractvalue %dx.types.CBufRet.f32 %5196, 3
  %5287 = bitcast float %5286 to i32
  %5288 = icmp eq i32 %5287, 0
  br i1 %5288, label %5327, label %5289

; <label>:5289                                    ; preds = %5192
  %5290 = add i32 %5287, 0
  %5291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5290, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5292 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5291, %dx.types.Handle %113, float %5284, float %5285, float undef, float undef, i32 0, i32 0, i32 undef, float %5247, float %5248, float undef, float %5251, float %5252, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5293 = extractvalue %dx.types.ResRet.f32 %5292, 0
  %5294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5295 = extractvalue %dx.types.CBufRet.f32 %5294, 1
  %5296 = extractvalue %dx.types.CBufRet.f32 %5294, 2
  %5297 = fsub fast float 1.000000e+00, %4902
  %5298 = call float @dx.op.binary.f32(i32 35, float %5297, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5299 = bitcast float %4902 to i32
  %5300 = sitofp i32 %5299 to float
  %5301 = fadd fast float %5300, 0xC1CFBF8940000000
  %5302 = fmul fast float %5296, %5301
  %5303 = fadd fast float %5302, 0x41CFBF8940000000
  %5304 = fptosi float %5303 to i32
  %5305 = bitcast i32 %5304 to float
  %5306 = bitcast float %5298 to i32
  %5307 = sitofp i32 %5306 to float
  %5308 = fadd fast float %5307, 0xC1CFBF8940000000
  %5309 = fmul fast float %5308, %5296
  %5310 = fadd fast float %5309, 0x41CFBF8940000000
  %5311 = fptosi float %5310 to i32
  %5312 = bitcast i32 %5311 to float
  %5313 = fmul fast float %5305, %5295
  %5314 = fmul fast float %5312, %5295
  %5315 = fsub fast float %5298, %5313
  %5316 = fadd fast float %5314, %5298
  %5317 = call float @dx.op.unary.f32(i32 7, float %5315)  ; Saturate(value)
  %5318 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5319 = fsub fast float %5293, %5317
  %5320 = fsub fast float %5318, %5317
  %5321 = bitcast float %5320 to i32
  %5322 = sub nsw i32 2129859010, %5321
  %5323 = bitcast i32 %5322 to float
  %5324 = fmul fast float %5323, %5319
  %5325 = call float @dx.op.unary.f32(i32 7, float %5324)  ; Saturate(value)
  %5326 = fcmp fast olt float %5325, 0x3F70101020000000
  br i1 %5326, label %5465, label %5327

; <label>:5327                                    ; preds = %5289, %5192
  %5328 = phi float [ %5325, %5289 ], [ %4902, %5192 ]
  %5329 = fmul fast float %5328, %5195
  %5330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5331 = extractvalue %dx.types.CBufRet.i32 %5330, 1
  %5332 = extractvalue %dx.types.CBufRet.i32 %5330, 0
  %5333 = add i32 %5332, 0
  %5334 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5333, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5335 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5334, %dx.types.Handle %112, float %5284, float %5285, float undef, float undef, i32 0, i32 0, i32 undef, float %5247, float %5248, float undef, float %5251, float %5252, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5336 = extractvalue %dx.types.ResRet.f32 %5335, 0
  %5337 = extractvalue %dx.types.ResRet.f32 %5335, 1
  %5338 = extractvalue %dx.types.ResRet.f32 %5335, 2
  %5339 = extractvalue %dx.types.ResRet.f32 %5335, 3
  %5340 = and i32 %5331, 255
  %5341 = uitofp i32 %5340 to float
  %5342 = lshr i32 %5331, 8
  %5343 = and i32 %5342, 255
  %5344 = uitofp i32 %5343 to float
  %5345 = fmul fast float %5339, %5341
  %5346 = fadd fast float %5345, %5344
  %5347 = fmul fast float %5346, 0x3F70101000000000
  %5348 = fadd fast float %5347, 0xBFB99999A0000000
  %5349 = call float @dx.op.unary.f32(i32 7, float %5348)  ; Saturate(value)
  %5350 = fmul fast float %5349, 0x3FF1C71C80000000
  %5351 = call float @dx.op.binary.f32(i32 36, float %5347, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5352 = fsub fast float 1.000000e+00, %5350
  %5353 = call float @dx.op.unary.f32(i32 7, float %5352)  ; Saturate(value)
  %5354 = fmul fast float %5353, %5336
  %5355 = fmul fast float %5353, %5337
  %5356 = fmul fast float %5353, %5338
  %5357 = call float @dx.op.unary.f32(i32 7, float %5354)  ; Saturate(value)
  %5358 = call float @dx.op.unary.f32(i32 7, float %5355)  ; Saturate(value)
  %5359 = call float @dx.op.unary.f32(i32 7, float %5356)  ; Saturate(value)
  %5360 = fmul fast float %5350, %5336
  %5361 = fmul fast float %5350, %5337
  %5362 = fmul fast float %5350, %5338
  %5363 = fadd fast float %5360, %5351
  %5364 = fadd fast float %5361, %5351
  %5365 = fadd fast float %5362, %5351
  %5366 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  %5367 = call float @dx.op.unary.f32(i32 7, float %5364)  ; Saturate(value)
  %5368 = call float @dx.op.unary.f32(i32 7, float %5365)  ; Saturate(value)
  %5369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5370 = extractvalue %dx.types.CBufRet.i32 %5369, 3
  %5371 = extractvalue %dx.types.CBufRet.i32 %5369, 2
  %5372 = add i32 %5371, 0
  %5373 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5372, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5374 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5373, %dx.types.Handle %112, float %5284, float %5285, float undef, float undef, i32 0, i32 0, i32 undef, float %5247, float %5248, float undef, float %5251, float %5252, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5375 = extractvalue %dx.types.ResRet.f32 %5374, 0
  %5376 = extractvalue %dx.types.ResRet.f32 %5374, 1
  %5377 = extractvalue %dx.types.ResRet.f32 %5374, 2
  %5378 = extractvalue %dx.types.ResRet.f32 %5374, 3
  %5379 = and i32 %5370, 255
  %5380 = uitofp i32 %5379 to float
  %5381 = lshr i32 %5370, 8
  %5382 = and i32 %5381, 255
  %5383 = uitofp i32 %5382 to float
  %5384 = lshr i32 %5370, 16
  %5385 = and i32 %5384, 255
  %5386 = uitofp i32 %5385 to float
  %5387 = fmul fast float %5386, 0x3F70101000000000
  %5388 = fmul fast float %5375, %5380
  %5389 = fadd fast float %5388, %5383
  %5390 = fmul fast float %5389, 0x3F70101000000000
  %5391 = fadd fast float %5376, -5.000000e-01
  %5392 = fadd fast float %5378, -5.000000e-01
  %5393 = fmul fast float %5391, %5387
  %5394 = fmul fast float %5392, %5387
  %5395 = fadd fast float %5393, 5.000000e-01
  %5396 = fadd fast float %5394, 5.000000e-01
  %5397 = fmul fast float %5395, 2.000000e+00
  %5398 = fadd fast float %5397, -1.000000e+00
  %5399 = fmul fast float %5396, 2.000000e+00
  %5400 = fadd fast float %5399, -1.000000e+00
  %5401 = fadd fast float %5398, %5400
  %5402 = fmul fast float %5401, 5.000000e-01
  %5403 = fsub fast float %5398, %5400
  %5404 = fmul fast float %5403, 5.000000e-01
  %5405 = call float @dx.op.unary.f32(i32 6, float %5402)  ; FAbs(value)
  %5406 = fsub fast float 1.000000e+00, %5405
  %5407 = call float @dx.op.unary.f32(i32 6, float %5404)  ; FAbs(value)
  %5408 = fsub fast float %5406, %5407
  %5409 = call float @dx.op.dot3.f32(i32 55, float %5402, float %5404, float %5408, float %5402, float %5404, float %5408)  ; Dot3(ax,ay,az,bx,by,bz)
  %5410 = call float @dx.op.unary.f32(i32 25, float %5409)  ; Rsqrt(value)
  %5411 = fmul fast float %5402, %5410
  %5412 = fmul fast float %5404, %5410
  %5413 = select i1 %5240, i32 %5230, i32 %5231
  %5414 = select i1 %5238, i32 %5229, i32 %5413
  %5415 = sitofp i32 %5414 to float
  %5416 = fmul fast float %5408, %5415
  %5417 = fmul fast float %5416, %5410
  %5418 = select i1 %5240, float %5417, float %5412
  %5419 = select i1 %5240, float %5412, float %5417
  %5420 = select i1 %5238, float %5417, float %5411
  %5421 = select i1 %5238, float %5412, float %5418
  %5422 = select i1 %5238, float %5411, float %5419
  %5423 = fsub fast float %5357, %5187
  %5424 = fsub fast float %5358, %5188
  %5425 = fsub fast float %5359, %5189
  %5426 = fmul fast float %5423, %5329
  %5427 = fmul fast float %5424, %5329
  %5428 = fmul fast float %5425, %5329
  %5429 = fadd fast float %5426, %5187
  %5430 = fadd fast float %5427, %5188
  %5431 = fadd fast float %5428, %5189
  %5432 = fsub fast float %5366, %5181
  %5433 = fsub fast float %5367, %5182
  %5434 = fsub fast float %5368, %5183
  %5435 = fmul fast float %5432, %5329
  %5436 = fmul fast float %5433, %5329
  %5437 = fmul fast float %5434, %5329
  %5438 = fadd fast float %5435, %5181
  %5439 = fadd fast float %5436, %5182
  %5440 = fadd fast float %5437, %5183
  %5441 = fadd fast float %5420, %5184
  %5442 = fadd fast float %5421, %5185
  %5443 = fadd fast float %5422, %5186
  %5444 = call float @dx.op.dot3.f32(i32 55, float %5441, float %5442, float %5443, float %5441, float %5442, float %5443)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = call float @dx.op.unary.f32(i32 25, float %5444)  ; Rsqrt(value)
  %5446 = fmul fast float %5441, %5445
  %5447 = fmul fast float %5442, %5445
  %5448 = fmul fast float %5443, %5445
  %5449 = fsub fast float %5446, %5184
  %5450 = fsub fast float %5447, %5185
  %5451 = fsub fast float %5448, %5186
  %5452 = fmul fast float %5449, %5329
  %5453 = fmul fast float %5450, %5329
  %5454 = fmul fast float %5451, %5329
  %5455 = fadd fast float %5452, %5184
  %5456 = fadd fast float %5453, %5185
  %5457 = fadd fast float %5454, %5186
  %5458 = call float @dx.op.binary.f32(i32 36, float %5191, float %5377)  ; FMin(a,b)
  %5459 = fsub fast float %5458, %5191
  %5460 = fmul fast float %5459, %5329
  %5461 = fadd fast float %5460, %5191
  %5462 = fsub fast float %5390, %5190
  %5463 = fmul fast float %5462, %5329
  %5464 = fadd fast float %5463, %5190
  br label %5465

; <label>:5465                                    ; preds = %5327, %5289, %5180, %4896
  %5466 = phi float [ %5438, %5327 ], [ %5181, %5289 ], [ %5181, %5180 ], [ %4487, %4896 ]
  %5467 = phi float [ %5439, %5327 ], [ %5182, %5289 ], [ %5182, %5180 ], [ %4488, %4896 ]
  %5468 = phi float [ %5440, %5327 ], [ %5183, %5289 ], [ %5183, %5180 ], [ %4489, %4896 ]
  %5469 = phi float [ %5455, %5327 ], [ %5184, %5289 ], [ %5184, %5180 ], [ %4451, %4896 ]
  %5470 = phi float [ %5456, %5327 ], [ %5185, %5289 ], [ %5185, %5180 ], [ %4452, %4896 ]
  %5471 = phi float [ %5457, %5327 ], [ %5186, %5289 ], [ %5186, %5180 ], [ %4453, %4896 ]
  %5472 = phi float [ %5429, %5327 ], [ %5187, %5289 ], [ %5187, %5180 ], [ %4505, %4896 ]
  %5473 = phi float [ %5430, %5327 ], [ %5188, %5289 ], [ %5188, %5180 ], [ %4506, %4896 ]
  %5474 = phi float [ %5431, %5327 ], [ %5189, %5289 ], [ %5189, %5180 ], [ %4507, %4896 ]
  %5475 = phi float [ %5464, %5327 ], [ %5190, %5289 ], [ %5190, %5180 ], [ %4490, %4896 ]
  %5476 = phi float [ %5461, %5327 ], [ %5191, %5289 ], [ %5191, %5180 ], [ %4463, %4896 ]
  %5477 = fcmp fast une float %4900, 0.000000e+00
  %5478 = call float @dx.op.dot3.f32(i32 55, float %203, float %204, float %205, float %203, float %204, float %205)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = call float @dx.op.unary.f32(i32 25, float %5478)  ; Rsqrt(value)
  br i1 %5477, label %5487, label %5480

; <label>:5480                                    ; preds = %5465
  %5481 = fmul fast float %5479, %203
  %5482 = fmul fast float %5479, %204
  %5483 = fmul fast float %5479, %205
  %5484 = fsub fast float -0.000000e+00, %5481
  %5485 = fsub fast float -0.000000e+00, %5482
  %5486 = fsub fast float -0.000000e+00, %5483
  br label %5654

; <label>:5487                                    ; preds = %5465
  %5488 = fmul fast float %203, %5479
  %5489 = fsub fast float -0.000000e+00, %5488
  %5490 = fmul fast float %204, %5479
  %5491 = fsub fast float -0.000000e+00, %5490
  %5492 = fmul fast float %205, %5479
  %5493 = fsub fast float -0.000000e+00, %5492
  %5494 = call float @dx.op.dot3.f32(i32 55, float %5489, float %5491, float %5493, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5495 = fmul fast float %4900, 2.500000e+00
  %5496 = call float @dx.op.unary.f32(i32 7, float %5495)  ; Saturate(value)
  %5497 = fmul fast float %4900, 0x4013FFFFE0000000
  %5498 = fadd fast float %5497, 0xBFFFFFFFE0000000
  %5499 = call float @dx.op.unary.f32(i32 7, float %5498)  ; Saturate(value)
  %5500 = fmul fast float %4900, 0x4004000020000000
  %5501 = fadd fast float %5500, 0xBFF8000040000000
  %5502 = call float @dx.op.unary.f32(i32 7, float %5501)  ; Saturate(value)
  %5503 = fmul fast float %4469, 1.000000e+01
  %5504 = call float @dx.op.unary.f32(i32 7, float %5503)  ; Saturate(value)
  %5505 = fmul fast float %5504, 2.000000e+00
  %5506 = fsub fast float 3.000000e+00, %5505
  %5507 = fmul fast float %5504, %5504
  %5508 = fmul fast float %5507, %5506
  %5509 = fsub fast float 1.000000e+00, %5508
  %5510 = fsub fast float 0x3FE3333340000000, %5475
  %5511 = fmul fast float %5510, 0x400AAAAAA0000000
  %5512 = call float @dx.op.unary.f32(i32 7, float %5511)  ; Saturate(value)
  %5513 = fmul fast float %5509, %5512
  %5514 = fmul fast float %5472, 0x3FEA2B8620000000
  %5515 = fmul fast float %5473, 0x3FEA2B8620000000
  %5516 = fmul fast float %5474, 0x3FEA2B8620000000
  %5517 = fadd fast float %5514, 0x3FC81DFBA0000000
  %5518 = fmul fast float %5517, %5472
  %5519 = fadd fast float %5518, 0x3F910E6020000000
  %5520 = fadd fast float %5515, 0x3FC81DFBA0000000
  %5521 = fmul fast float %5520, %5473
  %5522 = fadd fast float %5521, 0x3F910E6020000000
  %5523 = fadd fast float %5516, 0x3FC81DFBA0000000
  %5524 = fmul fast float %5523, %5474
  %5525 = fadd fast float %5524, 0x3F910E6020000000
  %5526 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5527 = call float @dx.op.unary.f32(i32 7, float %5522)  ; Saturate(value)
  %5528 = call float @dx.op.unary.f32(i32 7, float %5525)  ; Saturate(value)
  %5529 = fsub fast float %5526, %5472
  %5530 = fsub fast float %5527, %5473
  %5531 = fsub fast float %5528, %5474
  %5532 = fmul fast float %5529, %5496
  %5533 = fmul fast float %5532, %5513
  %5534 = fmul fast float %5530, %5496
  %5535 = fmul fast float %5534, %5513
  %5536 = fmul fast float %5531, %5496
  %5537 = fmul fast float %5536, %5513
  %5538 = fadd fast float %5533, %5472
  %5539 = fadd fast float %5535, %5473
  %5540 = fadd fast float %5537, %5474
  %5541 = fmul fast float %5476, %5476
  %5542 = fmul fast float %5541, %5541
  %5543 = fadd fast float %5499, 1.000000e+00
  %5544 = fsub fast float %5543, %5513
  %5545 = call float @dx.op.unary.f32(i32 7, float %5544)  ; Saturate(value)
  %5546 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5547 = call float @dx.op.unary.f32(i32 7, float %5546)  ; Saturate(value)
  %5548 = fsub fast float 1.000000e+00, %5542
  %5549 = call float @dx.op.binary.f32(i32 36, float %5545, float %5548)  ; FMin(a,b)
  %5550 = call float @dx.op.unary.f32(i32 7, float %5502)  ; Saturate(value)
  %5551 = call float @dx.op.binary.f32(i32 35, float %5549, float %5550)  ; FMax(a,b)
  %5552 = fadd fast float %5547, 0xBFE4CCCCC0000000
  %5553 = fmul fast float %5552, 0x4006DB6DA0000000
  %5554 = call float @dx.op.unary.f32(i32 7, float %5553)  ; Saturate(value)
  %5555 = fmul fast float %5554, 2.000000e+00
  %5556 = fsub fast float 3.000000e+00, %5555
  %5557 = bitcast float %5466 to i32
  %5558 = ashr i32 %5557, 1
  %5559 = add nsw i32 %5558, 532487669
  %5560 = bitcast i32 %5559 to float
  %5561 = fsub fast float 1.000000e+00, %5560
  %5562 = bitcast float %5561 to i32
  %5563 = sub nsw i32 2129859010, %5562
  %5564 = bitcast i32 %5563 to float
  %5565 = fmul fast float %5564, 2.000000e+00
  %5566 = bitcast float %5467 to i32
  %5567 = ashr i32 %5566, 1
  %5568 = add nsw i32 %5567, 532487669
  %5569 = bitcast i32 %5568 to float
  %5570 = fsub fast float 1.000000e+00, %5569
  %5571 = bitcast float %5570 to i32
  %5572 = sub nsw i32 2129859010, %5571
  %5573 = bitcast i32 %5572 to float
  %5574 = fmul fast float %5573, 2.000000e+00
  %5575 = bitcast float %5468 to i32
  %5576 = ashr i32 %5575, 1
  %5577 = add nsw i32 %5576, 532487669
  %5578 = bitcast i32 %5577 to float
  %5579 = fsub fast float 1.000000e+00, %5578
  %5580 = bitcast float %5579 to i32
  %5581 = sub nsw i32 2129859010, %5580
  %5582 = bitcast i32 %5581 to float
  %5583 = fmul fast float %5582, 2.000000e+00
  %5584 = fsub fast float 0x4002A9FBE0000000, %5565
  %5585 = fadd fast float %5565, 0x3FD54FDF00000000
  %5586 = bitcast float %5585 to i32
  %5587 = sub nsw i32 2129859010, %5586
  %5588 = bitcast i32 %5587 to float
  %5589 = fmul fast float %5588, %5584
  %5590 = fmul fast float %5589, %5589
  %5591 = fsub fast float 0x4002A9FBE0000000, %5574
  %5592 = fadd fast float %5574, 0x3FD54FDF00000000
  %5593 = bitcast float %5592 to i32
  %5594 = sub nsw i32 2129859010, %5593
  %5595 = bitcast i32 %5594 to float
  %5596 = fmul fast float %5595, %5591
  %5597 = fmul fast float %5596, %5596
  %5598 = fsub fast float 0x4002A9FBE0000000, %5583
  %5599 = fadd fast float %5583, 0x3FD54FDF00000000
  %5600 = bitcast float %5599 to i32
  %5601 = sub nsw i32 2129859010, %5600
  %5602 = bitcast i32 %5601 to float
  %5603 = fmul fast float %5602, %5598
  %5604 = fmul fast float %5603, %5603
  %5605 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5590)  ; FMax(a,b)
  %5606 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5597)  ; FMax(a,b)
  %5607 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5604)  ; FMax(a,b)
  %5608 = fsub fast float 1.000000e+00, %5494
  %5609 = fadd fast float %5608, %5509
  %5610 = call float @dx.op.unary.f32(i32 7, float %5609)  ; Saturate(value)
  %5611 = fsub fast float 1.000000e+00, %4881
  %5612 = fmul fast float %5551, %5611
  %5613 = fmul fast float %5554, %5554
  %5614 = fmul fast float %5613, %5612
  %5615 = fmul fast float %5614, %5556
  %5616 = fmul fast float %5611, 0xBFE99999A0000000
  %5617 = fmul fast float %5616, %5496
  %5618 = fmul fast float %5617, %5513
  %5619 = fadd fast float %5618, 1.000000e+00
  %5620 = fadd fast float %5475, -1.000000e+00
  %5621 = fmul fast float %5619, %5620
  %5622 = fadd fast float %5621, 1.000000e+00
  %5623 = fsub fast float %5605, %5466
  %5624 = fsub fast float %5606, %5467
  %5625 = fsub fast float %5607, %5468
  %5626 = fmul fast float %5615, %5623
  %5627 = fmul fast float %5615, %5624
  %5628 = fmul fast float %5615, %5625
  %5629 = fadd fast float %5626, %5466
  %5630 = fadd fast float %5627, %5467
  %5631 = fadd fast float %5628, %5468
  %5632 = fsub fast float %123, %5469
  %5633 = fsub fast float %124, %5470
  %5634 = fsub fast float %125, %5471
  %5635 = fmul fast float %5615, %5632
  %5636 = fmul fast float %5615, %5633
  %5637 = fmul fast float %5615, %5634
  %5638 = fadd fast float %5635, %5469
  %5639 = fadd fast float %5636, %5470
  %5640 = fadd fast float %5637, %5471
  %5641 = fmul fast float %5615, %5610
  %5642 = call float @dx.op.unary.f32(i32 7, float %5622)  ; Saturate(value)
  %5643 = fsub fast float 1.000000e+00, %5642
  %5644 = fmul fast float %5641, %5643
  %5645 = fadd fast float %5644, %5642
  %5646 = fsub fast float 1.000000e+00, %5476
  %5647 = fmul fast float %5615, %5646
  %5648 = fadd fast float %5647, %5476
  %5649 = call float @dx.op.dot3.f32(i32 55, float %5638, float %5639, float %5640, float %5638, float %5639, float %5640)  ; Dot3(ax,ay,az,bx,by,bz)
  %5650 = call float @dx.op.unary.f32(i32 25, float %5649)  ; Rsqrt(value)
  %5651 = fmul fast float %5638, %5650
  %5652 = fmul fast float %5639, %5650
  %5653 = fmul fast float %5640, %5650
  br label %5654

; <label>:5654                                    ; preds = %5487, %5480
  %5655 = phi float [ %5486, %5480 ], [ %5493, %5487 ]
  %5656 = phi float [ %5485, %5480 ], [ %5491, %5487 ]
  %5657 = phi float [ %5484, %5480 ], [ %5489, %5487 ]
  %5658 = phi float [ %5483, %5480 ], [ %5492, %5487 ]
  %5659 = phi float [ %5482, %5480 ], [ %5490, %5487 ]
  %5660 = phi float [ %5481, %5480 ], [ %5488, %5487 ]
  %5661 = phi float [ %5466, %5480 ], [ %5629, %5487 ]
  %5662 = phi float [ %5467, %5480 ], [ %5630, %5487 ]
  %5663 = phi float [ %5468, %5480 ], [ %5631, %5487 ]
  %5664 = phi float [ %5469, %5480 ], [ %5651, %5487 ]
  %5665 = phi float [ %5470, %5480 ], [ %5652, %5487 ]
  %5666 = phi float [ %5471, %5480 ], [ %5653, %5487 ]
  %5667 = phi float [ %5472, %5480 ], [ %5538, %5487 ]
  %5668 = phi float [ %5473, %5480 ], [ %5539, %5487 ]
  %5669 = phi float [ %5474, %5480 ], [ %5540, %5487 ]
  %5670 = phi float [ %5475, %5480 ], [ %5645, %5487 ]
  %5671 = phi float [ %5476, %5480 ], [ %5648, %5487 ]
  %5672 = fsub fast float -0.000000e+00, %205
  %5673 = select i1 %275, float 0.000000e+00, float %5663
  %5674 = call float @dx.op.dot3.f32(i32 55, float %5664, float %5665, float %5666, float %5657, float %5656, float %5655)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = call float @dx.op.unary.f32(i32 7, float %5674)  ; Saturate(value)
  %5676 = call float @dx.op.dot3.f32(i32 55, float %5660, float %5659, float %5658, float %5664, float %5665, float %5666)  ; Dot3(ax,ay,az,bx,by,bz)
  %5677 = fmul fast float %5676, 2.000000e+00
  %5678 = fmul fast float %5677, %5664
  %5679 = fmul fast float %5677, %5665
  %5680 = fmul fast float %5677, %5666
  %5681 = fsub fast float %5660, %5678
  %5682 = fsub fast float %5659, %5679
  %5683 = fsub fast float %5658, %5680
  %5684 = call float @dx.op.binary.f32(i32 36, float %5671, float 1.000000e+00)  ; FMin(a,b)
  %5685 = fsub fast float 1.000000e+00, %5684
  %5686 = bitcast float %5685 to i32
  %5687 = ashr i32 %5686, 1
  %5688 = add nsw i32 %5687, 532487669
  %5689 = bitcast i32 %5688 to float
  %5690 = fsub fast float 1.000000e+00, %5670
  %5691 = call float @dx.op.binary.f32(i32 35, float %5690, float 0x3F847AE140000000)  ; FMax(a,b)
  %5692 = fmul fast float %5691, %5691
  %5693 = fmul fast float %5692, %5692
  %5694 = call float @dx.op.unary.f32(i32 7, float %5675)  ; Saturate(value)
  %5695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5689, float %5693, float %5694, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5696 = extractvalue %dx.types.ResRet.f32 %5695, 0
  %5697 = fsub fast float 1.000000e+00, %5671
  %5698 = bitcast float %5697 to i32
  %5699 = sub nsw i32 2129859010, %5698
  %5700 = fsub fast float 1.000000e+00, %83
  %5701 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5702 = call float @dx.op.binary.f32(i32 35, float %5701, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5703 = fdiv fast float %5700, %5702
  %5704 = call float @dx.op.dot3.f32(i32 55, float %5664, float %5665, float %5666, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5705 = call float @dx.op.unary.f32(i32 7, float %5704)  ; Saturate(value)
  %5706 = fmul fast float %5705, 5.000000e-01
  %5707 = fadd fast float %5706, 5.000000e-01
  %5708 = fmul fast float %5707, %83
  %5709 = call float @dx.op.dot3.f32(i32 55, float %5664, float %5665, float %5666, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %5710 = call float @dx.op.unary.f32(i32 7, float %5709)  ; Saturate(value)
  %5711 = fmul fast float %5710, %5703
  %5712 = fadd fast float %5708, %5711
  %5713 = fsub fast float 5.000000e-01, %5706
  %5714 = fmul fast float %5713, %5667
  %5715 = fmul fast float %5713, %5668
  %5716 = fmul fast float %5713, %5669
  %5717 = fadd fast float %5712, %5714
  %5718 = fadd fast float %5712, %5715
  %5719 = fadd fast float %5712, %5716
  %5720 = call float @dx.op.dot3.f32(i32 55, float %5681, float %5682, float %5683, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5721 = call float @dx.op.unary.f32(i32 7, float %5720)  ; Saturate(value)
  %5722 = fmul fast float %5721, 5.000000e-01
  %5723 = fadd fast float %5722, 5.000000e-01
  %5724 = fmul fast float %5723, %83
  %5725 = call float @dx.op.dot3.f32(i32 55, float %5681, float %5682, float %5683, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %5726 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  %5727 = fmul fast float %5726, %5703
  %5728 = fadd fast float %5724, %5727
  %5729 = fsub fast float 5.000000e-01, %5722
  %5730 = fmul fast float %5729, %5667
  %5731 = fmul fast float %5729, %5668
  %5732 = fmul fast float %5729, %5669
  %5733 = fadd fast float %5728, %5730
  %5734 = fadd fast float %5728, %5731
  %5735 = fadd fast float %5728, %5732
  %5736 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5738 = extractvalue %dx.types.CBufRet.f32 %5737, 0
  %5739 = call float @dx.op.binary.f32(i32 36, float %5667, float %5738)  ; FMin(a,b)
  %5740 = fmul fast float %5739, %5685
  %5741 = fsub fast float 1.000000e+00, %5740
  %5742 = bitcast float %5741 to i32
  %5743 = sub nsw i32 2129859010, %5742
  %5744 = bitcast i32 %5743 to float
  %5745 = call float @dx.op.binary.f32(i32 36, float %5668, float %5738)  ; FMin(a,b)
  %5746 = fmul fast float %5745, %5685
  %5747 = fsub fast float 1.000000e+00, %5746
  %5748 = bitcast float %5747 to i32
  %5749 = sub nsw i32 2129859010, %5748
  %5750 = bitcast i32 %5749 to float
  %5751 = call float @dx.op.binary.f32(i32 36, float %5669, float %5738)  ; FMin(a,b)
  %5752 = fmul fast float %5751, %5685
  %5753 = fsub fast float 1.000000e+00, %5752
  %5754 = bitcast float %5753 to i32
  %5755 = sub nsw i32 2129859010, %5754
  %5756 = bitcast i32 %5755 to float
  %5757 = fmul fast float %5684, %84
  %5758 = fmul fast float %5757, %5717
  %5759 = fmul fast float %5758, %5744
  %5760 = fmul fast float %5684, %85
  %5761 = fmul fast float %5760, %5718
  %5762 = fmul fast float %5761, %5750
  %5763 = fmul fast float %5684, %86
  %5764 = fmul fast float %5763, %5719
  %5765 = fmul fast float %5764, %5756
  %5766 = call float @dx.op.binary.f32(i32 36, float %5661, float %5738)  ; FMin(a,b)
  %5767 = fmul fast float %5766, %5685
  %5768 = fsub fast float 1.000000e+00, %5767
  %5769 = bitcast float %5768 to i32
  %5770 = sub nsw i32 2129859010, %5769
  %5771 = bitcast i32 %5770 to float
  %5772 = call float @dx.op.binary.f32(i32 36, float %5662, float %5738)  ; FMin(a,b)
  %5773 = fmul fast float %5772, %5685
  %5774 = fsub fast float 1.000000e+00, %5773
  %5775 = bitcast float %5774 to i32
  %5776 = sub nsw i32 2129859010, %5775
  %5777 = bitcast i32 %5776 to float
  %5778 = call float @dx.op.binary.f32(i32 36, float %5673, float %5738)  ; FMin(a,b)
  %5779 = fmul fast float %5778, %5685
  %5780 = fsub fast float 1.000000e+00, %5779
  %5781 = bitcast float %5780 to i32
  %5782 = sub nsw i32 2129859010, %5781
  %5783 = bitcast i32 %5782 to float
  %5784 = fmul fast float %5757, %5733
  %5785 = fmul fast float %5784, %5771
  %5786 = fmul fast float %5760, %5734
  %5787 = fmul fast float %5786, %5777
  %5788 = fmul fast float %5763, %5735
  %5789 = fmul fast float %5788, %5783
  %5790 = call float @dx.op.dot3.f32(i32 55, float %5759, float %5762, float %5765, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5791 = select i1 %275, float 0.000000e+00, float %5759
  %5792 = select i1 %275, float %5790, float %5762
  %5793 = select i1 %275, float 0.000000e+00, float %5765
  %5794 = call float @dx.op.dot3.f32(i32 55, float %5785, float %5787, float %5789, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5795 = select i1 %275, float 0.000000e+00, float %5785
  %5796 = select i1 %275, float %5794, float %5787
  %5797 = select i1 %275, float 0.000000e+00, float %5789
  %5798 = fmul fast float %3824, %3824
  %5799 = call float @dx.op.unary.f32(i32 7, float %5798)  ; Saturate(value)
  %5800 = fmul fast float %5675, 9.843750e-01
  %5801 = fmul fast float %5670, 9.843750e-01
  %5802 = fadd fast float %5800, 7.812500e-03
  %5803 = fadd fast float %5801, 7.812500e-03
  %5804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %5802, float %5803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5805 = extractvalue %dx.types.ResRet.f32 %5804, 0
  %5806 = extractvalue %dx.types.ResRet.f32 %5804, 1
  %5807 = extractvalue %dx.types.ResRet.f32 %5804, 2
  %5808 = extractvalue %dx.types.ResRet.f32 %5804, 3
  %5809 = fsub fast float 1.000000e+00, %5799
  %5810 = fsub fast float %5807, %5805
  %5811 = fsub fast float %5808, %5806
  %5812 = fmul fast float %5810, %5809
  %5813 = fmul fast float %5811, %5809
  %5814 = fadd fast float %5812, %5805
  %5815 = fadd fast float %5813, %5806
  %5816 = fmul fast float %5814, %5661
  %5817 = fmul fast float %5814, %5662
  %5818 = fmul fast float %5814, %5673
  %5819 = fadd fast float %5816, %5815
  %5820 = fadd fast float %5817, %5815
  %5821 = fadd fast float %5818, %5815
  %5822 = fcmp fast ogt float %4464, 0.000000e+00
  br i1 %5822, label %5823, label %5849

; <label>:5823                                    ; preds = %5654
  %5824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4464, float %5675, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5825 = extractvalue %dx.types.ResRet.f32 %5824, 0
  %5826 = extractvalue %dx.types.ResRet.f32 %5824, 1
  %5827 = extractvalue %dx.types.ResRet.f32 %5824, 2
  %5828 = fadd fast float %5825, -5.000000e-01
  %5829 = fadd fast float %5826, -5.000000e-01
  %5830 = fadd fast float %5827, -5.000000e-01
  %5831 = fsub fast float 1.000000e+00, %5661
  %5832 = fsub fast float 1.000000e+00, %5662
  %5833 = fsub fast float 1.000000e+00, %5673
  %5834 = fmul fast float %5661, 4.000000e+00
  %5835 = fmul fast float %5834, %5831
  %5836 = fmul fast float %5835, %5828
  %5837 = fmul fast float %5662, 4.000000e+00
  %5838 = fmul fast float %5837, %5832
  %5839 = fmul fast float %5838, %5829
  %5840 = fmul fast float %5673, 4.000000e+00
  %5841 = fmul fast float %5840, %5833
  %5842 = fmul fast float %5841, %5830
  %5843 = fadd fast float %5836, %5819
  %5844 = fadd fast float %5839, %5820
  %5845 = fadd fast float %5842, %5821
  %5846 = call float @dx.op.unary.f32(i32 7, float %5843)  ; Saturate(value)
  %5847 = call float @dx.op.unary.f32(i32 7, float %5844)  ; Saturate(value)
  %5848 = call float @dx.op.unary.f32(i32 7, float %5845)  ; Saturate(value)
  br label %5849

; <label>:5849                                    ; preds = %5823, %5654
  %5850 = phi float [ %5846, %5823 ], [ %5819, %5654 ]
  %5851 = phi float [ %5847, %5823 ], [ %5820, %5654 ]
  %5852 = phi float [ %5848, %5823 ], [ %5821, %5654 ]
  %5853 = call float @dx.op.binary.f32(i32 35, float %5851, float %5852)  ; FMax(a,b)
  %5854 = call float @dx.op.binary.f32(i32 35, float %5850, float %5853)  ; FMax(a,b)
  %5855 = fsub fast float 1.000000e+00, %5854
  %5856 = fmul fast float %5854, %5670
  %5857 = fadd fast float %5856, %5670
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 2
  %5860 = extractvalue %dx.types.CBufRet.f32 %5858, 3
  %5861 = fmul fast float %5857, %5859
  %5862 = fadd fast float %5861, %5860
  %5863 = call float @dx.op.unary.f32(i32 7, float %5862)  ; Saturate(value)
  %5864 = fsub fast float 1.000000e+00, %5696
  %5865 = fadd fast float %5864, %5863
  %5866 = call float @dx.op.unary.f32(i32 7, float %5865)  ; Saturate(value)
  %5867 = fcmp fast olt float %5866, 1.000000e+00
  br i1 %5867, label %5868, label %6344

; <label>:5868                                    ; preds = %5849
  %5869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5870 = extractvalue %dx.types.CBufRet.f32 %5869, 2
  %5871 = extractvalue %dx.types.CBufRet.f32 %5869, 3
  %5872 = fmul fast float %5870, %116
  %5873 = fmul fast float %5871, %117
  %5874 = fptoui float %5872 to i32
  %5875 = fptoui float %5873 to i32
  %5876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5876, 0
  %5878 = extractvalue %dx.types.CBufRet.f32 %5876, 2
  %5879 = extractvalue %dx.types.CBufRet.f32 %5876, 3
  %5880 = fadd fast float %103, -4.000000e+00
  %5881 = call float @dx.op.binary.f32(i32 35, float %5880, float 0.000000e+00)  ; FMax(a,b)
  %5882 = fadd fast float %5881, %5877
  %5883 = fmul fast float %5882, %5878
  %5884 = call float @dx.op.unary.f32(i32 23, float %5883)  ; Log(value)
  %5885 = fmul fast float %5884, %5879
  %5886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5887 = extractvalue %dx.types.CBufRet.f32 %5886, 2
  %5888 = fmul fast float %5885, %5887
  %5889 = call float @dx.op.unary.f32(i32 7, float %5888)  ; Saturate(value)
  %5890 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5891 = extractvalue %dx.types.CBufRet.i32 %5890, 1
  %5892 = add i32 %5891, -1
  %5893 = uitofp i32 %5891 to float
  %5894 = fmul fast float %5893, %5889
  %5895 = fptoui float %5894 to i32
  %5896 = call i32 @dx.op.binary.i32(i32 40, i32 %5895, i32 %5892)  ; UMin(a,b)
  %5897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5898 = extractvalue %dx.types.CBufRet.i32 %5897, 2
  %5899 = extractvalue %dx.types.CBufRet.i32 %5897, 3
  %5900 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5875, i32 %5898, i32 %5874)  ; UMad(a,b,c)
  %5901 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5896, i32 %5899, i32 %5900)  ; UMad(a,b,c)
  %5902 = call float @dx.op.binary.f32(i32 35, float %103, float 0.000000e+00)  ; FMax(a,b)
  %5903 = fptoui float %5902 to i32
  %5904 = lshr i32 %5903, 5
  %5905 = call i32 @dx.op.binary.i32(i32 40, i32 %5904, i32 8191)  ; UMin(a,b)
  %5906 = fsub fast float %4871, %205
  %5907 = call float @dx.op.unary.f32(i32 7, float %5906)  ; Saturate(value)
  %5908 = fcmp fast ogt float %5907, 0.000000e+00
  %5909 = fcmp fast ogt float %5683, 0.000000e+00
  %5910 = and i1 %5909, %5908
  br i1 %5910, label %5911, label %5940

; <label>:5911                                    ; preds = %5868
  %5912 = call float @dx.op.dot3.f32(i32 55, float %5681, float %5682, float %5683, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5913 = call float @dx.op.binary.f32(i32 35, float %5912, float -1.000000e+00)  ; FMax(a,b)
  %5914 = call float @dx.op.binary.f32(i32 36, float %5913, float 1.000000e+00)  ; FMin(a,b)
  %5915 = fmul fast float %5914, %5914
  %5916 = fsub fast float 1.000000e+00, %5915
  %5917 = fmul fast float %5916, 0x3FFC6E2300000000
  %5918 = fsub fast float 1.000000e+00, %5917
  %5919 = fcmp fast ogt float %5918, 0.000000e+00
  %5920 = call float @dx.op.unary.f32(i32 24, float %5918)  ; Sqrt(value)
  %5921 = fsub fast float 1.000000e+00, %5920
  %5922 = call float @dx.op.unary.f32(i32 23, float %5921)  ; Log(value)
  %5923 = fmul fast float %5922, 5.000000e+00
  %5924 = call float @dx.op.unary.f32(i32 21, float %5923)  ; Exp(value)
  %5925 = fmul fast float %5924, 0x3FEF591A60000000
  %5926 = fadd fast float %5925, 0x3F94DCB540000000
  %5927 = select i1 %5919, float %5926, float 1.000000e+00
  %5928 = fcmp fast oge float %5927, 1.000000e+00
  %5929 = fmul fast float %5912, 2.000000e+00
  %5930 = fadd fast float %5929, %5683
  %5931 = select i1 %5928, float %5930, float %5683
  %5932 = fsub fast float %5931, %5683
  %5933 = fmul fast float %5932, %5907
  %5934 = fadd fast float %5933, %5683
  %5935 = call float @dx.op.dot3.f32(i32 55, float %5681, float %5682, float %5934, float %5681, float %5682, float %5934)  ; Dot3(ax,ay,az,bx,by,bz)
  %5936 = call float @dx.op.unary.f32(i32 25, float %5935)  ; Rsqrt(value)
  %5937 = fmul fast float %5936, %5681
  %5938 = fmul fast float %5936, %5682
  %5939 = fmul fast float %5934, %5936
  br label %5940

; <label>:5940                                    ; preds = %5911, %5868
  %5941 = phi float [ %5937, %5911 ], [ %5681, %5868 ]
  %5942 = phi float [ %5938, %5911 ], [ %5682, %5868 ]
  %5943 = phi float [ %5939, %5911 ], [ %5683, %5868 ]
  %5944 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5945 = extractvalue %dx.types.CBufRet.i32 %5944, 2
  %5946 = add nsw i32 %5945, -1
  %5947 = call i32 @dx.op.binary.i32(i32 37, i32 %5946, i32 0)  ; IMax(a,b)
  %5948 = shl i32 %5905, 2
  %5949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5948, i32 undef)  ; BufferLoad(srv,index,wot)
  %5950 = extractvalue %dx.types.ResRet.i32 %5949, 0
  %5951 = lshr i32 %5950, 16
  %5952 = and i32 %5950, 65535
  %5953 = lshr i32 %5950, 21
  %5954 = lshr i32 %5952, 5
  %5955 = call i32 @dx.op.binary.i32(i32 40, i32 %5954, i32 %5947)  ; UMin(a,b)
  %5956 = icmp ugt i32 %5953, %5955
  br i1 %5956, label %6320, label %5957

; <label>:5957                                    ; preds = %5940
  br label %5958

; <label>:5958                                    ; preds = %6312, %5957
  %5959 = phi float [ %6313, %6312 ], [ 0.000000e+00, %5957 ]
  %5960 = phi float [ %6314, %6312 ], [ 0.000000e+00, %5957 ]
  %5961 = phi float [ %6315, %6312 ], [ 0.000000e+00, %5957 ]
  %5962 = phi float [ %6316, %6312 ], [ 1.000000e+00, %5957 ]
  %5963 = phi i32 [ %6317, %6312 ], [ %5953, %5957 ]
  %5964 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5965 = extractvalue %dx.types.CBufRet.i32 %5964, 2
  %5966 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5901, i32 %5965, i32 %5963)  ; UMad(a,b,c)
  %5967 = shl i32 %5966, 2
  %5968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5967, i32 undef)  ; BufferLoad(srv,index,wot)
  %5969 = extractvalue %dx.types.ResRet.i32 %5968, 0
  %5970 = shl i32 %5963, 5
  %5971 = sub nsw i32 %5951, %5970
  %5972 = call i32 @dx.op.binary.i32(i32 37, i32 %5971, i32 0)  ; IMax(a,b)
  %5973 = call i32 @dx.op.binary.i32(i32 38, i32 %5972, i32 31)  ; IMin(a,b)
  %5974 = sub nsw i32 1, %5951
  %5975 = add nsw i32 %5974, %5952
  %5976 = call i32 @dx.op.binary.i32(i32 37, i32 %5975, i32 0)  ; IMax(a,b)
  %5977 = call i32 @dx.op.binary.i32(i32 38, i32 %5976, i32 32)  ; IMin(a,b)
  %5978 = and i32 %5977, 31
  %5979 = shl i32 -1, %5978
  %5980 = xor i32 %5979, -1
  %5981 = and i32 %5973, 31
  %5982 = shl i32 %5980, %5981
  %5983 = icmp eq i32 %5977, 32
  %5984 = select i1 %5983, i32 -1, i32 %5982
  %5985 = and i32 %5984, %5969
  %5986 = icmp eq i32 %5985, 0
  br i1 %5986, label %6312, label %5987

; <label>:5987                                    ; preds = %5958
  br label %5988

; <label>:5988                                    ; preds = %6095, %5987
  %5989 = phi float [ %6096, %6095 ], [ %5959, %5987 ]
  %5990 = phi float [ %6097, %6095 ], [ %5960, %5987 ]
  %5991 = phi float [ %6098, %6095 ], [ %5961, %5987 ]
  %5992 = phi float [ %6099, %6095 ], [ %5962, %5987 ]
  %5993 = phi i32 [ %5998, %6095 ], [ %5985, %5987 ]
  %5994 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5993)  ; FirstbitLo(value)
  %5995 = add i32 %5994, %5970
  %5996 = and i32 %5994, 31
  %5997 = shl i32 1, %5996
  %5998 = xor i32 %5997, %5993
  %5999 = mul i32 %5995, 72
  %6000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5999, i32 undef)  ; BufferLoad(srv,index,wot)
  %6001 = extractvalue %dx.types.ResRet.f32 %6000, 0
  %6002 = extractvalue %dx.types.ResRet.f32 %6000, 1
  %6003 = extractvalue %dx.types.ResRet.f32 %6000, 2
  %6004 = add i32 %5999, 12
  %6005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %6004, i32 undef)  ; BufferLoad(srv,index,wot)
  %6006 = extractvalue %dx.types.ResRet.i32 %6005, 0
  %6007 = add i32 %5999, 16
  %6008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6007, i32 undef)  ; BufferLoad(srv,index,wot)
  %6009 = extractvalue %dx.types.ResRet.f32 %6008, 0
  %6010 = extractvalue %dx.types.ResRet.f32 %6008, 1
  %6011 = extractvalue %dx.types.ResRet.f32 %6008, 2
  %6012 = add i32 %5999, 28
  %6013 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6012, i32 undef)  ; BufferLoad(srv,index,wot)
  %6014 = extractvalue %dx.types.ResRet.f32 %6013, 0
  %6015 = add i32 %5999, 32
  %6016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6015, i32 undef)  ; BufferLoad(srv,index,wot)
  %6017 = extractvalue %dx.types.ResRet.f32 %6016, 0
  %6018 = extractvalue %dx.types.ResRet.f32 %6016, 1
  %6019 = extractvalue %dx.types.ResRet.f32 %6016, 2
  %6020 = extractvalue %dx.types.ResRet.f32 %6016, 3
  %6021 = add i32 %5999, 48
  %6022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6021, i32 undef)  ; BufferLoad(srv,index,wot)
  %6023 = extractvalue %dx.types.ResRet.f32 %6022, 0
  %6024 = extractvalue %dx.types.ResRet.f32 %6022, 1
  %6025 = add i32 %5999, 56
  %6026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6025, i32 undef)  ; BufferLoad(srv,index,wot)
  %6027 = extractvalue %dx.types.ResRet.f32 %6026, 0
  %6028 = extractvalue %dx.types.ResRet.f32 %6026, 1
  %6029 = add i32 %5999, 64
  %6030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6029, i32 undef)  ; BufferLoad(srv,index,wot)
  %6031 = extractvalue %dx.types.ResRet.f32 %6030, 0
  %6032 = extractvalue %dx.types.ResRet.f32 %6030, 1
  %6033 = mul i32 %5995, 60
  %6034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6033, i32 undef)  ; BufferLoad(srv,index,wot)
  %6035 = extractvalue %dx.types.ResRet.f32 %6034, 0
  %6036 = extractvalue %dx.types.ResRet.f32 %6034, 1
  %6037 = extractvalue %dx.types.ResRet.f32 %6034, 2
  %6038 = add i32 %6033, 12
  %6039 = add i32 %6033, 48
  %6040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6039, i32 undef)  ; BufferLoad(srv,index,wot)
  %6041 = extractvalue %dx.types.ResRet.f32 %6040, 0
  %6042 = extractvalue %dx.types.ResRet.f32 %6040, 1
  %6043 = extractvalue %dx.types.ResRet.f32 %6040, 2
  %6044 = and i32 %6006, 32767
  %6045 = bitcast float %6001 to i32
  %6046 = icmp eq i32 %6045, -1
  %6047 = bitcast float %6002 to i32
  %6048 = and i32 %6006, 32768
  %6049 = icmp ne i32 %6048, 0
  %6050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6051 = extractvalue %dx.types.CBufRet.f32 %6050, 0
  %6052 = extractvalue %dx.types.CBufRet.f32 %6050, 1
  %6053 = extractvalue %dx.types.CBufRet.f32 %6050, 2
  %6054 = fsub fast float %6035, %6051
  %6055 = fsub fast float %6036, %6052
  %6056 = fsub fast float %6037, %6053
  %6057 = fsub fast float %203, %6054
  %6058 = fsub fast float %204, %6055
  %6059 = fsub fast float %205, %6056
  %6060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6038, i32 undef)  ; BufferLoad(srv,index,wot)
  %6061 = extractvalue %dx.types.ResRet.f32 %6060, 0
  %6062 = extractvalue %dx.types.ResRet.f32 %6060, 1
  %6063 = extractvalue %dx.types.ResRet.f32 %6060, 2
  %6064 = call float @dx.op.dot3.f32(i32 55, float %6057, float %6058, float %6059, float %6061, float %6062, float %6063)  ; Dot3(ax,ay,az,bx,by,bz)
  %6065 = add i32 %6033, 24
  %6066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6065, i32 undef)  ; BufferLoad(srv,index,wot)
  %6067 = extractvalue %dx.types.ResRet.f32 %6066, 0
  %6068 = extractvalue %dx.types.ResRet.f32 %6066, 1
  %6069 = extractvalue %dx.types.ResRet.f32 %6066, 2
  %6070 = call float @dx.op.dot3.f32(i32 55, float %6057, float %6058, float %6059, float %6067, float %6068, float %6069)  ; Dot3(ax,ay,az,bx,by,bz)
  %6071 = add i32 %6033, 36
  %6072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6071, i32 undef)  ; BufferLoad(srv,index,wot)
  %6073 = extractvalue %dx.types.ResRet.f32 %6072, 0
  %6074 = extractvalue %dx.types.ResRet.f32 %6072, 1
  %6075 = extractvalue %dx.types.ResRet.f32 %6072, 2
  %6076 = call float @dx.op.dot3.f32(i32 55, float %6057, float %6058, float %6059, float %6073, float %6074, float %6075)  ; Dot3(ax,ay,az,bx,by,bz)
  %6077 = call float @dx.op.unary.f32(i32 6, float %6064)  ; FAbs(value)
  %6078 = call float @dx.op.unary.f32(i32 6, float %6070)  ; FAbs(value)
  %6079 = call float @dx.op.unary.f32(i32 6, float %6076)  ; FAbs(value)
  %6080 = fsub fast float %6041, %6077
  %6081 = fsub fast float %6042, %6078
  %6082 = fsub fast float %6043, %6079
  %6083 = fmul fast float %6080, %6009
  %6084 = fmul fast float %6081, %6010
  %6085 = fmul fast float %6082, %6011
  %6086 = call float @dx.op.binary.f32(i32 36, float %6084, float %6085)  ; FMin(a,b)
  %6087 = call float @dx.op.binary.f32(i32 36, float %6083, float %6086)  ; FMin(a,b)
  %6088 = call float @dx.op.unary.f32(i32 7, float %6087)  ; Saturate(value)
  %6089 = call float @dx.op.binary.f32(i32 36, float %5992, float %6088)  ; FMin(a,b)
  %6090 = uitofp i1 %6049 to float
  %6091 = fadd fast float %5907, 1.000000e+00
  %6092 = fsub fast float %6091, %6090
  %6093 = fmul fast float %6089, %6092
  %6094 = fcmp fast ogt float %6093, 0.000000e+00
  br i1 %6094, label %6101, label %6095

; <label>:6095                                    ; preds = %6243, %5988
  %6096 = phi float [ %6307, %6243 ], [ %5989, %5988 ]
  %6097 = phi float [ %6308, %6243 ], [ %5990, %5988 ]
  %6098 = phi float [ %6309, %6243 ], [ %5991, %5988 ]
  %6099 = phi float [ %6310, %6243 ], [ %5992, %5988 ]
  %6100 = icmp eq i32 %5993, %5997
  br i1 %6100, label %6311, label %5988

; <label>:6101                                    ; preds = %5988
  br i1 %6046, label %6159, label %6102

; <label>:6102                                    ; preds = %6101
  %6103 = fsub fast float -0.000000e+00, %6061
  %6104 = fsub fast float -0.000000e+00, %6062
  %6105 = fsub fast float -0.000000e+00, %6063
  %6106 = call float @dx.op.dot3.f32(i32 55, float %5941, float %5942, float %5943, float %6103, float %6104, float %6105)  ; Dot3(ax,ay,az,bx,by,bz)
  %6107 = fsub fast float -0.000000e+00, %6106
  %6108 = call float @dx.op.dot3.f32(i32 55, float %6057, float %6058, float %6059, float %6103, float %6104, float %6105)  ; Dot3(ax,ay,az,bx,by,bz)
  %6109 = fadd fast float %6108, %6024
  %6110 = fadd fast float %6023, %6108
  %6111 = fsub fast float -0.000000e+00, %6110
  %6112 = fcmp ogt float %6106, -0.000000e+00
  %6113 = select i1 %6112, float %6111, float %6109
  %6114 = call float @dx.op.unary.f32(i32 6, float %6107)  ; FAbs(value)
  %6115 = fdiv fast float 1.000000e+00, %6114
  %6116 = fmul fast float %6113, %6115
  %6117 = call float @dx.op.binary.f32(i32 35, float %6116, float 0.000000e+00)  ; FMax(a,b)
  %6118 = fsub fast float -0.000000e+00, %6067
  %6119 = fsub fast float -0.000000e+00, %6068
  %6120 = fsub fast float -0.000000e+00, %6069
  %6121 = call float @dx.op.dot3.f32(i32 55, float %5941, float %5942, float %5943, float %6118, float %6119, float %6120)  ; Dot3(ax,ay,az,bx,by,bz)
  %6122 = fsub fast float -0.000000e+00, %6121
  %6123 = call float @dx.op.dot3.f32(i32 55, float %6057, float %6058, float %6059, float %6118, float %6119, float %6120)  ; Dot3(ax,ay,az,bx,by,bz)
  %6124 = fadd fast float %6123, %6028
  %6125 = fadd fast float %6027, %6123
  %6126 = fsub fast float -0.000000e+00, %6125
  %6127 = fcmp ogt float %6121, -0.000000e+00
  %6128 = select i1 %6127, float %6126, float %6124
  %6129 = call float @dx.op.unary.f32(i32 6, float %6122)  ; FAbs(value)
  %6130 = fdiv fast float 1.000000e+00, %6129
  %6131 = fmul fast float %6128, %6130
  %6132 = call float @dx.op.binary.f32(i32 35, float %6131, float 0.000000e+00)  ; FMax(a,b)
  %6133 = fsub fast float -0.000000e+00, %6073
  %6134 = fsub fast float -0.000000e+00, %6074
  %6135 = fsub fast float -0.000000e+00, %6075
  %6136 = call float @dx.op.dot3.f32(i32 55, float %5941, float %5942, float %5943, float %6133, float %6134, float %6135)  ; Dot3(ax,ay,az,bx,by,bz)
  %6137 = fsub fast float -0.000000e+00, %6136
  %6138 = call float @dx.op.dot3.f32(i32 55, float %6057, float %6058, float %6059, float %6133, float %6134, float %6135)  ; Dot3(ax,ay,az,bx,by,bz)
  %6139 = fadd fast float %6138, %6032
  %6140 = fadd fast float %6031, %6138
  %6141 = fsub fast float -0.000000e+00, %6140
  %6142 = fcmp ogt float %6136, -0.000000e+00
  %6143 = select i1 %6142, float %6141, float %6139
  %6144 = call float @dx.op.unary.f32(i32 6, float %6137)  ; FAbs(value)
  %6145 = fdiv fast float 1.000000e+00, %6144
  %6146 = fmul fast float %6143, %6145
  %6147 = call float @dx.op.binary.f32(i32 35, float %6146, float 0.000000e+00)  ; FMax(a,b)
  %6148 = call float @dx.op.binary.f32(i32 36, float %6132, float %6147)  ; FMin(a,b)
  %6149 = call float @dx.op.binary.f32(i32 36, float %6117, float %6148)  ; FMin(a,b)
  %6150 = fmul fast float %6149, %5941
  %6151 = fmul fast float %6149, %5942
  %6152 = fmul fast float %6149, %5943
  %6153 = fadd fast float %6150, %203
  %6154 = fadd fast float %6151, %204
  %6155 = fadd fast float %6152, %205
  %6156 = fsub fast float %6153, %6001
  %6157 = fsub fast float %6154, %6002
  %6158 = fsub fast float %6155, %6003
  br label %6166

; <label>:6159                                    ; preds = %6101
  %6160 = fmul fast float %5941, 8.096000e+03
  %6161 = fmul fast float %5942, 8.096000e+03
  %6162 = fmul fast float %5943, 8.096000e+03
  %6163 = fadd fast float %6160, %203
  %6164 = fadd fast float %6161, %204
  %6165 = fadd fast float %6162, %205
  br label %6166

; <label>:6166                                    ; preds = %6159, %6102
  %6167 = phi float [ %5941, %6159 ], [ %6156, %6102 ]
  %6168 = phi float [ %5942, %6159 ], [ %6157, %6102 ]
  %6169 = phi float [ %5943, %6159 ], [ %6158, %6102 ]
  %6170 = phi float [ %6163, %6159 ], [ %6153, %6102 ]
  %6171 = phi float [ %6164, %6159 ], [ %6154, %6102 ]
  %6172 = phi float [ %6165, %6159 ], [ %6155, %6102 ]
  %6173 = fcmp fast olt float %6020, 1.000000e+00
  br i1 %6173, label %6174, label %6205, !dx.controlflow.hints !104

; <label>:6174                                    ; preds = %6166
  %6175 = fmul fast float %6169, %6018
  %6176 = fmul fast float %6168, %6019
  %6177 = fsub fast float %6175, %6176
  %6178 = fmul fast float %6167, %6019
  %6179 = fmul fast float %6169, %6017
  %6180 = fsub fast float %6178, %6179
  %6181 = fmul fast float %6168, %6017
  %6182 = fmul fast float %6167, %6018
  %6183 = fsub fast float %6181, %6182
  %6184 = fmul fast float %6177, 2.000000e+00
  %6185 = fmul fast float %6180, 2.000000e+00
  %6186 = fmul fast float %6183, 2.000000e+00
  %6187 = fmul fast float %6184, %6020
  %6188 = fmul fast float %6185, %6020
  %6189 = fmul fast float %6186, %6020
  %6190 = fmul fast float %6186, %6018
  %6191 = fmul fast float %6185, %6019
  %6192 = fmul fast float %6184, %6019
  %6193 = fmul fast float %6186, %6017
  %6194 = fmul fast float %6185, %6017
  %6195 = fmul fast float %6184, %6018
  %6196 = fadd fast float %6190, %6167
  %6197 = fadd fast float %6196, %6187
  %6198 = fsub fast float %6197, %6191
  %6199 = fsub fast float %6168, %6193
  %6200 = fadd fast float %6199, %6188
  %6201 = fadd fast float %6200, %6192
  %6202 = fadd fast float %6189, %6169
  %6203 = fsub fast float %6202, %6195
  %6204 = fadd fast float %6203, %6194
  br label %6205

; <label>:6205                                    ; preds = %6174, %6166
  %6206 = phi float [ %6198, %6174 ], [ %6167, %6166 ]
  %6207 = phi float [ %6201, %6174 ], [ %6168, %6166 ]
  %6208 = phi float [ %6204, %6174 ], [ %6169, %6166 ]
  br i1 %6046, label %6240, label %6209

; <label>:6209                                    ; preds = %6205
  %6210 = fmul fast float %5670, 0x400187C840000000
  %6211 = fadd fast float %6210, 0xC00EFC2120000000
  %6212 = fmul fast float %6211, %5670
  %6213 = fadd fast float %6212, 0x3FE5D16340000000
  %6214 = fmul fast float %6213, %5670
  %6215 = fadd fast float %6214, 1.000000e+00
  %6216 = call float @dx.op.unary.f32(i32 7, float %6215)  ; Saturate(value)
  %6217 = fsub fast float %6170, %203
  %6218 = fsub fast float %6171, %204
  %6219 = fsub fast float %6172, %205
  %6220 = fsub fast float %6170, %6001
  %6221 = fsub fast float %6171, %6002
  %6222 = fsub fast float %6172, %6003
  %6223 = call float @dx.op.dot3.f32(i32 55, float %6217, float %6218, float %6219, float %6217, float %6218, float %6219)  ; Dot3(ax,ay,az,bx,by,bz)
  %6224 = call float @dx.op.dot3.f32(i32 55, float %6220, float %6221, float %6222, float %6220, float %6221, float %6222)  ; Dot3(ax,ay,az,bx,by,bz)
  %6225 = fadd fast float %6224, 0x3EE4F8B580000000
  %6226 = fdiv fast float %6223, %6225
  %6227 = bitcast float %6226 to i32
  %6228 = ashr i32 %6227, 1
  %6229 = add nsw i32 %6228, 532487669
  %6230 = bitcast i32 %6229 to float
  %6231 = fmul fast float %6230, %6216
  %6232 = call float @dx.op.unary.f32(i32 7, float %6231)  ; Saturate(value)
  %6233 = fmul fast float %6232, 0x4009981AE0000000
  %6234 = fsub fast float 0x40111BBD80000000, %6233
  %6235 = fmul fast float %6234, %6232
  %6236 = fadd fast float %6235, 0xC0009F6020000000
  %6237 = fmul fast float %6236, %6232
  %6238 = fadd fast float %6237, 1.000000e+00
  %6239 = call float @dx.op.unary.f32(i32 7, float %6238)  ; Saturate(value)
  br label %6243

; <label>:6240                                    ; preds = %6205
  %6241 = icmp ne i32 %6047, -1
  %6242 = zext i1 %6241 to i32
  br label %6243

; <label>:6243                                    ; preds = %6240, %6209
  %6244 = phi float [ %5670, %6240 ], [ %6239, %6209 ]
  %6245 = phi i32 [ %6242, %6240 ], [ 0, %6209 ]
  %6246 = fmul float %6244, 5.000000e+00
  %6247 = fsub float 5.000000e+00, %6246
  %6248 = icmp ne i32 %6245, 0
  %6249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.f32 %6249, 3
  %6251 = fadd fast float %6250, %6247
  %6252 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6251)  ; FMax(a,b)
  %6253 = call float @dx.op.unary.f32(i32 6, float %6206)  ; FAbs(value)
  %6254 = call float @dx.op.unary.f32(i32 6, float %6207)  ; FAbs(value)
  %6255 = fadd fast float %6254, %6253
  %6256 = call float @dx.op.unary.f32(i32 6, float %6208)  ; FAbs(value)
  %6257 = fadd fast float %6255, %6256
  %6258 = fcmp fast oeq float %6257, 0.000000e+00
  %6259 = fdiv fast float 1.000000e+00, %6257
  %6260 = select i1 %6258, float 1.000000e+00, float %6259
  %6261 = fmul fast float %6260, %6206
  %6262 = fmul fast float %6260, %6207
  %6263 = call float @dx.op.unary.f32(i32 6, float %6262)  ; FAbs(value)
  %6264 = call float @dx.op.unary.f32(i32 6, float %6261)  ; FAbs(value)
  %6265 = fsub fast float 1.000000e+00, %6263
  %6266 = fsub fast float 1.000000e+00, %6264
  %6267 = fcmp fast oge float %6261, 0.000000e+00
  %6268 = fcmp fast oge float %6262, 0.000000e+00
  %6269 = select i1 %6267, float 1.000000e+00, float -1.000000e+00
  %6270 = select i1 %6268, float 1.000000e+00, float -1.000000e+00
  %6271 = fcmp fast ole float %6208, 0.000000e+00
  %6272 = fmul fast float %6269, %6265
  %6273 = fmul fast float %6270, %6266
  %6274 = select i1 %6271, float %6272, float %6261
  %6275 = select i1 %6271, float %6273, float %6262
  %6276 = fmul fast float %6274, 5.000000e-01
  %6277 = fmul fast float %6275, 5.000000e-01
  %6278 = fadd fast float %6276, 5.000000e-01
  %6279 = fadd fast float %6277, 5.000000e-01
  %6280 = uitofp i32 %6044 to float
  %6281 = call float @dx.op.binary.f32(i32 36, float %6252, float 3.000000e+00)  ; FMin(a,b)
  %6282 = fadd fast float %6281, 2.000000e+00
  %6283 = call float @dx.op.unary.f32(i32 21, float %6282)  ; Exp(value)
  %6284 = extractvalue %dx.types.CBufRet.f32 %6249, 1
  %6285 = fmul fast float %6284, %6283
  %6286 = fmul fast float %6285, 2.000000e+00
  %6287 = fsub fast float 1.000000e+00, %6286
  %6288 = fmul fast float %6278, %6287
  %6289 = fmul fast float %6279, %6287
  %6290 = fadd fast float %6288, %6285
  %6291 = fadd fast float %6289, %6285
  %6292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %53, float %6290, float %6291, float %6280, float undef, i32 0, i32 0, i32 undef, float %6252)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6293 = extractvalue %dx.types.ResRet.f32 %6292, 0
  %6294 = extractvalue %dx.types.ResRet.f32 %6292, 1
  %6295 = extractvalue %dx.types.ResRet.f32 %6292, 2
  %6296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6297 = extractvalue %dx.types.CBufRet.f32 %6296, 3
  %6298 = fmul fast float %6297, %6014
  %6299 = call float @dx.op.binary.f32(i32 36, float %5736, float %6298)  ; FMin(a,b)
  %6300 = select i1 %6248, float %6299, float %6298
  %6301 = fmul fast float %6293, %6093
  %6302 = fmul fast float %6301, %6300
  %6303 = fmul fast float %6294, %6093
  %6304 = fmul fast float %6303, %6300
  %6305 = fmul fast float %6295, %6093
  %6306 = fmul fast float %6305, %6300
  %6307 = fadd fast float %6302, %5989
  %6308 = fadd fast float %6304, %5990
  %6309 = fadd fast float %6306, %5991
  %6310 = fsub fast float %5992, %6093
  br label %6095

; <label>:6311                                    ; preds = %6095
  br label %6312

; <label>:6312                                    ; preds = %6311, %5958
  %6313 = phi float [ %5959, %5958 ], [ %6096, %6311 ]
  %6314 = phi float [ %5960, %5958 ], [ %6097, %6311 ]
  %6315 = phi float [ %5961, %5958 ], [ %6098, %6311 ]
  %6316 = phi float [ %5962, %5958 ], [ %6099, %6311 ]
  %6317 = add i32 %5963, 1
  %6318 = icmp ugt i32 %6317, %5955
  br i1 %6318, label %6319, label %5958, !llvm.loop !105

; <label>:6319                                    ; preds = %6312
  br label %6320

; <label>:6320                                    ; preds = %6319, %5940
  %6321 = phi float [ 0.000000e+00, %5940 ], [ %6313, %6319 ]
  %6322 = phi float [ 0.000000e+00, %5940 ], [ %6314, %6319 ]
  %6323 = phi float [ 0.000000e+00, %5940 ], [ %6315, %6319 ]
  %6324 = call float @dx.op.dot3.f32(i32 55, float %6321, float %6322, float %6323, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6325 = select i1 %275, float 0.000000e+00, float %6321
  %6326 = select i1 %275, float %6324, float %6322
  %6327 = select i1 %275, float 0.000000e+00, float %6323
  %6328 = fcmp fast olt float %5866, 0.000000e+00
  %6329 = call float @dx.op.unary.f32(i32 6, float %5866)  ; FAbs(value)
  %6330 = fmul fast float %6329, %5795
  %6331 = fmul fast float %6329, %5796
  %6332 = fmul fast float %6329, %5797
  %6333 = select i1 %6328, float %5795, float %6330
  %6334 = select i1 %6328, float %5796, float %6331
  %6335 = select i1 %6328, float %5797, float %6332
  %6336 = fsub fast float 1.000000e+00, %6329
  %6337 = call float @dx.op.unary.f32(i32 7, float %6336)  ; Saturate(value)
  %6338 = fmul fast float %6337, %6325
  %6339 = fmul fast float %6337, %6326
  %6340 = fmul fast float %6337, %6327
  %6341 = fadd fast float %6333, %6338
  %6342 = fadd fast float %6334, %6339
  %6343 = fadd fast float %6335, %6340
  br label %6344

; <label>:6344                                    ; preds = %6320, %5849
  %6345 = phi float [ %5795, %5849 ], [ %6341, %6320 ]
  %6346 = phi float [ %5796, %5849 ], [ %6342, %6320 ]
  %6347 = phi float [ %5797, %5849 ], [ %6343, %6320 ]
  %6348 = fmul fast float %5855, %5791
  %6349 = fmul fast float %5855, %5792
  %6350 = fmul fast float %5855, %5793
  %6351 = call float @dx.op.dot3.f32(i32 55, float %5667, float %5668, float %5669, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6352 = fcmp fast ogt float %6351, 0x3E7FF19E20000000
  %6353 = fdiv fast float 1.000000e+00, %6351
  %6354 = select i1 %6352, float %6353, float 0.000000e+00
  %6355 = fmul fast float %6354, %5667
  %6356 = fmul fast float %6354, %5668
  %6357 = fmul fast float %6354, %5669
  %6358 = fadd fast float %6355, -1.000000e+00
  %6359 = fadd fast float %6356, -1.000000e+00
  %6360 = fadd fast float %6357, -1.000000e+00
  %6361 = fmul fast float %6358, 5.000000e-01
  %6362 = fmul fast float %6359, 5.000000e-01
  %6363 = fmul fast float %6360, 5.000000e-01
  %6364 = fadd fast float %6361, 1.000000e+00
  %6365 = fadd fast float %6362, 1.000000e+00
  %6366 = fadd fast float %6363, 1.000000e+00
  %6367 = call float @dx.op.binary.f32(i32 35, float %5675, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6368 = fdiv fast float %3824, %6367
  %6369 = fcmp fast olt float %4491, 1.270000e+02
  %6370 = fcmp fast olt float %4492, 1.270000e+02
  %6371 = fcmp fast olt float %4493, 1.270000e+02
  %6372 = fmul fast float %4491, 0xBFF7154760000000
  %6373 = fmul fast float %6372, %6368
  %6374 = fmul fast float %4492, 0xBFF7154760000000
  %6375 = fmul fast float %6374, %6368
  %6376 = fmul fast float %4493, 0xBFF7154760000000
  %6377 = fmul fast float %6376, %6368
  %6378 = call float @dx.op.unary.f32(i32 21, float %6373)  ; Exp(value)
  %6379 = call float @dx.op.unary.f32(i32 21, float %6375)  ; Exp(value)
  %6380 = call float @dx.op.unary.f32(i32 21, float %6377)  ; Exp(value)
  %6381 = call float @dx.op.unary.f32(i32 7, float %6378)  ; Saturate(value)
  %6382 = call float @dx.op.unary.f32(i32 7, float %6379)  ; Saturate(value)
  %6383 = call float @dx.op.unary.f32(i32 7, float %6380)  ; Saturate(value)
  %6384 = select i1 %6369, float %6381, float 0.000000e+00
  %6385 = select i1 %6370, float %6382, float 0.000000e+00
  %6386 = select i1 %6371, float %6383, float 0.000000e+00
  %6387 = fmul fast float %6384, %5855
  %6388 = fmul fast float %6385, %5855
  %6389 = fmul fast float %6386, %5855
  %6390 = fadd fast float %6387, -1.000000e+00
  %6391 = fadd fast float %6388, -1.000000e+00
  %6392 = fadd fast float %6389, -1.000000e+00
  %6393 = fmul fast float %6345, %5850
  %6394 = fmul fast float %6346, %5851
  %6395 = fmul fast float %6347, %5852
  %6396 = fsub fast float 1.000000e+00, %5675
  %6397 = bitcast float %6396 to i32
  %6398 = sitofp i32 %6397 to float
  %6399 = fmul fast float %6398, 5.000000e+00
  %6400 = fadd fast float %6399, 0xC1EFBF8940000000
  %6401 = fptosi float %6400 to i32
  %6402 = bitcast i32 %6401 to float
  %6403 = fmul fast float %6402, %4465
  %6404 = fmul fast float %5791, %6403
  %6405 = fmul fast float %6404, %5855
  %6406 = fmul fast float %6405, %6364
  %6407 = fmul fast float %5792, %6403
  %6408 = fmul fast float %6407, %5855
  %6409 = fmul fast float %6408, %6365
  %6410 = fmul fast float %5793, %6403
  %6411 = fmul fast float %6410, %5855
  %6412 = fmul fast float %6411, %6366
  %6413 = fmul fast float %6348, %4461
  %6414 = fmul fast float %6349, %4461
  %6415 = fmul fast float %6350, %4461
  %6416 = fadd fast float %6393, %4457
  %6417 = fadd fast float %6416, %6406
  %6418 = fmul fast float %6417, %4461
  %6419 = fadd fast float %6394, %4458
  %6420 = fadd fast float %6419, %6409
  %6421 = fmul fast float %6420, %4461
  %6422 = fadd fast float %6395, %4459
  %6423 = fadd fast float %6422, %6412
  %6424 = fmul fast float %6423, %4461
  %6425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6426 = extractvalue %dx.types.CBufRet.f32 %6425, 3
  %6427 = fcmp fast oeq float %6426, 0.000000e+00
  br i1 %6427, label %8144, label %6428

; <label>:6428                                    ; preds = %6344
  %6429 = extractvalue %dx.types.CBufRet.f32 %6425, 0
  %6430 = extractvalue %dx.types.CBufRet.f32 %6425, 1
  %6431 = extractvalue %dx.types.CBufRet.f32 %6425, 2
  %6432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6433 = extractvalue %dx.types.CBufRet.f32 %6432, 0
  %6434 = extractvalue %dx.types.CBufRet.f32 %6432, 1
  %6435 = extractvalue %dx.types.CBufRet.f32 %6432, 2
  %6436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6437 = extractvalue %dx.types.CBufRet.f32 %6436, 0
  %6438 = extractvalue %dx.types.CBufRet.f32 %6436, 1
  %6439 = call float @dx.op.dot3.f32(i32 55, float %6433, float %6434, float %6435, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6440 = select i1 %275, float %6437, float %6433
  %6441 = select i1 %275, float %6439, float %6434
  %6442 = select i1 %275, float %6438, float %6435
  %6443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6444 = extractvalue %dx.types.CBufRet.f32 %6443, 2
  %6445 = fmul fast float %6444, %123
  %6446 = fmul fast float %6444, %124
  %6447 = fmul fast float %6444, %125
  %6448 = fadd fast float %6445, %203
  %6449 = fadd fast float %6446, %204
  %6450 = fadd fast float %6447, %205
  %6451 = fcmp fast olt float %6426, 0.000000e+00
  br i1 %6451, label %7709, label %6452

; <label>:6452                                    ; preds = %6428
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 0
  %6455 = extractvalue %dx.types.CBufRet.f32 %6453, 1
  %6456 = extractvalue %dx.types.CBufRet.f32 %6453, 2
  %6457 = extractvalue %dx.types.CBufRet.f32 %6453, 3
  %6458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6459 = extractvalue %dx.types.CBufRet.f32 %6458, 0
  %6460 = extractvalue %dx.types.CBufRet.f32 %6458, 1
  %6461 = extractvalue %dx.types.CBufRet.f32 %6458, 2
  %6462 = extractvalue %dx.types.CBufRet.f32 %6458, 3
  %6463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6464 = extractvalue %dx.types.CBufRet.f32 %6463, 0
  %6465 = extractvalue %dx.types.CBufRet.f32 %6463, 1
  %6466 = extractvalue %dx.types.CBufRet.f32 %6463, 2
  %6467 = extractvalue %dx.types.CBufRet.f32 %6463, 3
  %6468 = fmul fast float %6454, %6448
  %6469 = call float @dx.op.tertiary.f32(i32 46, float %6449, float %6455, float %6468)  ; FMad(a,b,c)
  %6470 = call float @dx.op.tertiary.f32(i32 46, float %6450, float %6456, float %6469)  ; FMad(a,b,c)
  %6471 = fadd fast float %6470, %6457
  %6472 = fmul fast float %6459, %6448
  %6473 = call float @dx.op.tertiary.f32(i32 46, float %6449, float %6460, float %6472)  ; FMad(a,b,c)
  %6474 = call float @dx.op.tertiary.f32(i32 46, float %6450, float %6461, float %6473)  ; FMad(a,b,c)
  %6475 = fadd fast float %6474, %6462
  %6476 = fmul fast float %6464, %6448
  %6477 = call float @dx.op.tertiary.f32(i32 46, float %6449, float %6465, float %6476)  ; FMad(a,b,c)
  %6478 = call float @dx.op.tertiary.f32(i32 46, float %6450, float %6466, float %6477)  ; FMad(a,b,c)
  %6479 = fadd fast float %6478, %6467
  %6480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6481 = extractvalue %dx.types.CBufRet.f32 %6480, 0
  %6482 = fcmp fast une float %6481, 0.000000e+00
  %6483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6484 = extractvalue %dx.types.CBufRet.f32 %6483, 0
  %6485 = extractvalue %dx.types.CBufRet.f32 %6483, 1
  %6486 = extractvalue %dx.types.CBufRet.f32 %6483, 3
  %6487 = fmul fast float %6486, %6471
  %6488 = fmul fast float %6486, %6475
  %6489 = fadd fast float %6487, %6484
  %6490 = fadd fast float %6488, %6485
  %6491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6492 = extractvalue %dx.types.CBufRet.f32 %6491, 0
  %6493 = extractvalue %dx.types.CBufRet.f32 %6491, 1
  %6494 = extractvalue %dx.types.CBufRet.f32 %6491, 3
  %6495 = fmul fast float %6494, %6471
  %6496 = fmul fast float %6494, %6475
  %6497 = fadd fast float %6495, %6492
  %6498 = fadd fast float %6496, %6493
  %6499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6500 = extractvalue %dx.types.CBufRet.f32 %6499, 1
  %6501 = fsub fast float %6500, %6479
  %6502 = extractvalue %dx.types.CBufRet.f32 %6499, 2
  %6503 = fmul fast float %6501, %6502
  %6504 = fsub fast float 1.000000e+00, %6503
  %6505 = call float @dx.op.unary.f32(i32 7, float %6504)  ; Saturate(value)
  br i1 %6482, label %6566, label %6506

; <label>:6506                                    ; preds = %6452
  %6507 = extractvalue %dx.types.CBufRet.f32 %6491, 2
  %6508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6509 = extractvalue %dx.types.CBufRet.f32 %6508, 2
  %6510 = fadd fast float %6509, %6507
  %6511 = fcmp fast ogt float %6510, 0.000000e+00
  br i1 %6511, label %6512, label %6536

; <label>:6512                                    ; preds = %6506
  %6513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6514 = extractvalue %dx.types.CBufRet.f32 %6513, 0
  %6515 = extractvalue %dx.types.CBufRet.f32 %6513, 1
  %6516 = fsub fast float %6497, %6514
  %6517 = fsub fast float %6498, %6515
  %6518 = fcmp fast olt float %6516, 0.000000e+00
  %6519 = fcmp fast olt float %6517, 0.000000e+00
  %6520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6521 = extractvalue %dx.types.CBufRet.f32 %6520, 0
  %6522 = extractvalue %dx.types.CBufRet.f32 %6520, 1
  %6523 = extractvalue %dx.types.CBufRet.f32 %6520, 2
  %6524 = extractvalue %dx.types.CBufRet.f32 %6520, 3
  %6525 = select i1 %6518, float %6521, float %6523
  %6526 = select i1 %6519, float %6522, float %6524
  %6527 = fmul fast float %6525, %6516
  %6528 = fmul fast float %6526, %6517
  %6529 = call float @dx.op.unary.f32(i32 6, float %6527)  ; FAbs(value)
  %6530 = call float @dx.op.unary.f32(i32 6, float %6528)  ; FAbs(value)
  %6531 = extractvalue %dx.types.CBufRet.f32 %6443, 0
  %6532 = call float @dx.op.binary.f32(i32 35, float %6529, float %6530)  ; FMax(a,b)
  %6533 = fsub fast float %6531, %6532
  %6534 = call float @dx.op.unary.f32(i32 7, float %6533)  ; Saturate(value)
  %6535 = fmul fast float %6534, %6505
  br label %6536

; <label>:6536                                    ; preds = %6512, %6506
  %6537 = phi float [ %6535, %6512 ], [ 0.000000e+00, %6506 ]
  %6538 = extractvalue %dx.types.CBufRet.f32 %6483, 2
  %6539 = extractvalue %dx.types.CBufRet.f32 %6508, 1
  %6540 = fadd fast float %6539, %6538
  %6541 = fcmp fast ogt float %6540, 0.000000e+00
  br i1 %6541, label %6542, label %6566

; <label>:6542                                    ; preds = %6536
  %6543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6544 = extractvalue %dx.types.CBufRet.f32 %6543, 0
  %6545 = extractvalue %dx.types.CBufRet.f32 %6543, 1
  %6546 = fsub fast float %6489, %6544
  %6547 = fsub fast float %6490, %6545
  %6548 = fcmp fast olt float %6546, 0.000000e+00
  %6549 = fcmp fast olt float %6547, 0.000000e+00
  %6550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6551 = extractvalue %dx.types.CBufRet.f32 %6550, 0
  %6552 = extractvalue %dx.types.CBufRet.f32 %6550, 1
  %6553 = extractvalue %dx.types.CBufRet.f32 %6550, 2
  %6554 = extractvalue %dx.types.CBufRet.f32 %6550, 3
  %6555 = select i1 %6548, float %6551, float %6553
  %6556 = select i1 %6549, float %6552, float %6554
  %6557 = fmul fast float %6555, %6546
  %6558 = fmul fast float %6556, %6547
  %6559 = call float @dx.op.unary.f32(i32 6, float %6557)  ; FAbs(value)
  %6560 = call float @dx.op.unary.f32(i32 6, float %6558)  ; FAbs(value)
  %6561 = extractvalue %dx.types.CBufRet.f32 %6443, 0
  %6562 = call float @dx.op.binary.f32(i32 35, float %6559, float %6560)  ; FMax(a,b)
  %6563 = fsub fast float %6561, %6562
  %6564 = call float @dx.op.unary.f32(i32 7, float %6563)  ; Saturate(value)
  %6565 = fmul fast float %6564, %6505
  br label %6566

; <label>:6566                                    ; preds = %6542, %6536, %6452
  %6567 = phi float [ 0.000000e+00, %6452 ], [ %6565, %6542 ], [ 0.000000e+00, %6536 ]
  %6568 = phi float [ 0.000000e+00, %6452 ], [ %6537, %6542 ], [ %6537, %6536 ]
  %6569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6570 = extractvalue %dx.types.CBufRet.f32 %6569, 1
  %6571 = call float @dx.op.unary.f32(i32 7, float %6570)  ; Saturate(value)
  %6572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6573 = extractvalue %dx.types.CBufRet.f32 %6572, 0
  %6574 = extractvalue %dx.types.CBufRet.f32 %6572, 1
  %6575 = fsub fast float %6471, %6573
  %6576 = fsub fast float %6475, %6574
  %6577 = fcmp fast olt float %6575, 0.000000e+00
  %6578 = fcmp fast olt float %6576, 0.000000e+00
  %6579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6580 = extractvalue %dx.types.CBufRet.f32 %6579, 0
  %6581 = extractvalue %dx.types.CBufRet.f32 %6579, 1
  %6582 = extractvalue %dx.types.CBufRet.f32 %6579, 2
  %6583 = extractvalue %dx.types.CBufRet.f32 %6579, 3
  %6584 = select i1 %6577, float %6580, float %6582
  %6585 = select i1 %6578, float %6581, float %6583
  %6586 = fmul fast float %6584, %6575
  %6587 = fmul fast float %6585, %6576
  %6588 = call float @dx.op.unary.f32(i32 6, float %6586)  ; FAbs(value)
  %6589 = call float @dx.op.unary.f32(i32 6, float %6587)  ; FAbs(value)
  %6590 = extractvalue %dx.types.CBufRet.f32 %6443, 0
  %6591 = call float @dx.op.binary.f32(i32 35, float %6588, float %6589)  ; FMax(a,b)
  %6592 = fsub fast float %6590, %6591
  %6593 = call float @dx.op.unary.f32(i32 7, float %6592)  ; Saturate(value)
  %6594 = call float @dx.op.binary.f32(i32 36, float %6593, float %6571)  ; FMin(a,b)
  %6595 = fmul fast float %6594, %6505
  %6596 = fsub fast float %6567, %6595
  %6597 = fsub fast float %6568, %6567
  %6598 = fsub fast float %6597, %6595
  %6599 = call float @dx.op.binary.f32(i32 35, float %6567, float %6568)  ; FMax(a,b)
  %6600 = call float @dx.op.binary.f32(i32 35, float %6595, float %6599)  ; FMax(a,b)
  %6601 = fcmp fast olt float %6600, 1.000000e+00
  br i1 %6601, label %6602, label %7000, !dx.controlflow.hints !107

; <label>:6602                                    ; preds = %6566
  %6603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6604 = extractvalue %dx.types.CBufRet.f32 %6603, 0
  %6605 = fcmp fast une float %6604, 0.000000e+00
  br i1 %6605, label %6606, label %7000, !dx.controlflow.hints !108

; <label>:6606                                    ; preds = %6602
  %6607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6608 = extractvalue %dx.types.CBufRet.f32 %6607, 0
  %6609 = extractvalue %dx.types.CBufRet.f32 %6607, 1
  %6610 = extractvalue %dx.types.CBufRet.f32 %6607, 2
  %6611 = extractvalue %dx.types.CBufRet.f32 %6607, 3
  %6612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6613 = extractvalue %dx.types.CBufRet.f32 %6612, 0
  %6614 = extractvalue %dx.types.CBufRet.f32 %6612, 1
  %6615 = extractvalue %dx.types.CBufRet.f32 %6612, 2
  %6616 = extractvalue %dx.types.CBufRet.f32 %6612, 3
  %6617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6618 = extractvalue %dx.types.CBufRet.f32 %6617, 0
  %6619 = extractvalue %dx.types.CBufRet.f32 %6617, 1
  %6620 = extractvalue %dx.types.CBufRet.f32 %6617, 2
  %6621 = extractvalue %dx.types.CBufRet.f32 %6617, 3
  %6622 = fmul fast float %6608, %6448
  %6623 = call float @dx.op.tertiary.f32(i32 46, float %6449, float %6609, float %6622)  ; FMad(a,b,c)
  %6624 = call float @dx.op.tertiary.f32(i32 46, float %6450, float %6610, float %6623)  ; FMad(a,b,c)
  %6625 = fadd fast float %6624, %6611
  %6626 = fmul fast float %6613, %6448
  %6627 = call float @dx.op.tertiary.f32(i32 46, float %6449, float %6614, float %6626)  ; FMad(a,b,c)
  %6628 = call float @dx.op.tertiary.f32(i32 46, float %6450, float %6615, float %6627)  ; FMad(a,b,c)
  %6629 = fadd fast float %6628, %6616
  %6630 = fmul fast float %6618, %6448
  %6631 = call float @dx.op.tertiary.f32(i32 46, float %6449, float %6619, float %6630)  ; FMad(a,b,c)
  %6632 = call float @dx.op.tertiary.f32(i32 46, float %6450, float %6620, float %6631)  ; FMad(a,b,c)
  %6633 = fadd fast float %6632, %6621
  %6634 = fcmp fast oge float %6625, 1.000000e+00
  %6635 = fcmp fast oge float %6629, 1.000000e+00
  %6636 = or i1 %6634, %6635
  %6637 = fcmp fast olt float %6625, 0.000000e+00
  %6638 = fcmp fast olt float %6629, 0.000000e+00
  %6639 = or i1 %6637, %6638
  %6640 = or i1 %6636, %6639
  br i1 %6640, label %7000, label %6641, !dx.controlflow.hints !109

; <label>:6641                                    ; preds = %6606
  %6642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6643 = extractvalue %dx.types.CBufRet.f32 %6642, 0
  %6644 = extractvalue %dx.types.CBufRet.f32 %6642, 1
  %6645 = extractvalue %dx.types.CBufRet.f32 %6642, 2
  %6646 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6647 = extractvalue %dx.types.CBufRet.i32 %6646, 2
  %6648 = uitofp i32 %6647 to float
  %6649 = extractvalue %dx.types.CBufRet.i32 %6646, 3
  %6650 = uitofp i32 %6649 to float
  %6651 = extractvalue %dx.types.CBufRet.f32 %6642, 3
  %6652 = fmul fast float %6651, 2.000000e+00
  %6653 = fsub fast float %6625, %6643
  %6654 = fsub fast float %6629, %6644
  %6655 = fmul fast float %6652, %6653
  %6656 = fmul fast float %6652, %6654
  %6657 = fdiv fast float 1.000000e+00, %6431
  %6658 = fmul fast float %6656, %6657
  %6659 = call float @dx.op.unary.f32(i32 6, float %6658)  ; FAbs(value)
  %6660 = fmul fast float %6645, %6450
  %6661 = fmul fast float %6660, %6652
  %6662 = call float @dx.op.unary.f32(i32 6, float %6661)  ; FAbs(value)
  %6663 = call float @dx.op.unary.f32(i32 6, float %6655)  ; FAbs(value)
  %6664 = call float @dx.op.binary.f32(i32 35, float %6662, float %6659)  ; FMax(a,b)
  %6665 = call float @dx.op.binary.f32(i32 35, float %6663, float %6664)  ; FMax(a,b)
  %6666 = fmul fast float %6665, 2.000000e+00
  %6667 = call float @dx.op.unary.f32(i32 23, float %6666)  ; Log(value)
  %6668 = call float @dx.op.binary.f32(i32 35, float %6667, float %6648)  ; FMax(a,b)
  %6669 = call float @dx.op.unary.f32(i32 22, float %6668)  ; Frc(value)
  %6670 = fadd fast float %6669, 0xBFEA666660000000
  %6671 = fmul fast float %6670, 8.000000e+00
  %6672 = call float @dx.op.unary.f32(i32 7, float %6671)  ; Saturate(value)
  %6673 = call float @dx.op.unary.f32(i32 27, float %6668)  ; Round_ni(value)
  %6674 = fadd fast float %6673, %6672
  %6675 = call float @dx.op.binary.f32(i32 36, float %6674, float %6650)  ; FMin(a,b)
  %6676 = call float @dx.op.unary.f32(i32 27, float %6675)  ; Round_ni(value)
  %6677 = fsub fast float -0.000000e+00, %6676
  %6678 = call float @dx.op.unary.f32(i32 21, float %6677)  ; Exp(value)
  %6679 = fmul fast float %6678, %6652
  %6680 = fmul fast float %6679, %6625
  %6681 = fmul fast float %6679, %6629
  %6682 = fmul fast float %6680, 2.500000e-01
  %6683 = fmul fast float %6681, 2.500000e-01
  %6684 = fadd fast float %6682, 5.000000e-01
  %6685 = fadd fast float %6683, 5.000000e-01
  %6686 = fsub fast float %6650, %6648
  %6687 = fptoui float %6686 to i32
  %6688 = add i32 %6687, 320
  %6689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %6688)  ; CBufferLoadLegacy(handle,regIndex)
  %6690 = extractvalue %dx.types.CBufRet.f32 %6689, 0
  %6691 = extractvalue %dx.types.CBufRet.f32 %6689, 1
  %6692 = fcmp fast une float %6675, %6650
  %6693 = fsub fast float %6625, %6690
  %6694 = fsub fast float %6629, %6691
  %6695 = call float @dx.op.unary.f32(i32 6, float %6693)  ; FAbs(value)
  %6696 = call float @dx.op.unary.f32(i32 6, float %6694)  ; FAbs(value)
  %6697 = fmul fast float %6695, %6679
  %6698 = fmul fast float %6696, %6679
  %6699 = fcmp fast olt float %6697, 1.000000e+00
  %6700 = fcmp fast olt float %6698, 1.000000e+00
  %6701 = and i1 %6699, %6700
  %6702 = or i1 %6692, %6701
  br i1 %6702, label %6703, label %7000, !dx.controlflow.hints !110

; <label>:6703                                    ; preds = %6641
  %6704 = fmul fast float %6681, 5.000000e-01
  %6705 = fmul fast float %6680, 5.000000e-01
  %6706 = fadd fast float %6704, 5.000000e-01
  %6707 = fadd fast float %6705, 5.000000e-01
  %6708 = sitofp i32 %6647 to float
  %6709 = fsub fast float %6675, %6708
  %6710 = call float @dx.op.unary.f32(i32 27, float %6709)  ; Round_ni(value)
  %6711 = call float @dx.op.unary.f32(i32 22, float %6675)  ; Frc(value)
  %6712 = call float @dx.op.unary.f32(i32 22, float %6707)  ; Frc(value)
  %6713 = call float @dx.op.unary.f32(i32 22, float %6706)  ; Frc(value)
  %6714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6712, float %6713, float %6710, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6715 = extractvalue %dx.types.ResRet.f32 %6714, 0
  %6716 = extractvalue %dx.types.ResRet.f32 %6714, 1
  %6717 = extractvalue %dx.types.ResRet.f32 %6714, 2
  %6718 = extractvalue %dx.types.ResRet.f32 %6714, 3
  %6719 = fcmp fast ogt float %6711, 0.000000e+00
  br i1 %6719, label %6720, label %6741, !dx.controlflow.hints !111

; <label>:6720                                    ; preds = %6703
  %6721 = fadd fast float %6710, 1.000000e+00
  %6722 = call float @dx.op.unary.f32(i32 22, float %6684)  ; Frc(value)
  %6723 = call float @dx.op.unary.f32(i32 22, float %6685)  ; Frc(value)
  %6724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6722, float %6723, float %6721, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6725 = extractvalue %dx.types.ResRet.f32 %6724, 0
  %6726 = extractvalue %dx.types.ResRet.f32 %6724, 1
  %6727 = extractvalue %dx.types.ResRet.f32 %6724, 2
  %6728 = extractvalue %dx.types.ResRet.f32 %6724, 3
  %6729 = fsub fast float %6725, %6715
  %6730 = fsub fast float %6726, %6716
  %6731 = fsub fast float %6727, %6717
  %6732 = fsub fast float %6728, %6718
  %6733 = fmul fast float %6729, %6711
  %6734 = fmul fast float %6730, %6711
  %6735 = fmul fast float %6731, %6711
  %6736 = fmul fast float %6732, %6711
  %6737 = fadd fast float %6733, %6715
  %6738 = fadd fast float %6734, %6716
  %6739 = fadd fast float %6735, %6717
  %6740 = fadd fast float %6736, %6718
  br label %6741

; <label>:6741                                    ; preds = %6720, %6703
  %6742 = phi float [ %6737, %6720 ], [ %6715, %6703 ]
  %6743 = phi float [ %6738, %6720 ], [ %6716, %6703 ]
  %6744 = phi float [ %6739, %6720 ], [ %6717, %6703 ]
  %6745 = phi float [ %6740, %6720 ], [ %6718, %6703 ]
  %6746 = fadd fast float %6742, -5.000000e-01
  %6747 = fadd fast float %6744, -5.000000e-01
  %6748 = fmul fast float %6746, 0xBFD5555560000000
  %6749 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6747, float %6748)  ; FMad(a,b,c)
  %6750 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6743, float 0.000000e+00)  ; FMad(a,b,c)
  %6751 = fadd fast float %6750, %6745
  %6752 = fmul fast float %6746, -7.500000e-01
  %6753 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6747, float %6752)  ; FMad(a,b,c)
  %6754 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6743, float 0.000000e+00)  ; FMad(a,b,c)
  %6755 = fadd fast float %6754, %6745
  %6756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6757 = extractvalue %dx.types.CBufRet.f32 %6756, 0
  %6758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6759 = extractvalue %dx.types.CBufRet.f32 %6758, 0
  %6760 = extractvalue %dx.types.CBufRet.f32 %6758, 1
  %6761 = extractvalue %dx.types.CBufRet.f32 %6758, 2
  %6762 = extractvalue %dx.types.CBufRet.f32 %6758, 3
  %6763 = fsub fast float %6759, %6749
  %6764 = fsub fast float %6760, %6751
  %6765 = fsub fast float %6761, %6753
  %6766 = fsub fast float %6762, %6755
  %6767 = fmul fast float %6763, %6757
  %6768 = fmul fast float %6764, %6757
  %6769 = fmul fast float %6765, %6757
  %6770 = fmul fast float %6766, %6757
  %6771 = fadd fast float %6767, %6749
  %6772 = fadd fast float %6768, %6751
  %6773 = fadd fast float %6769, %6753
  %6774 = fadd fast float %6770, %6755
  %6775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6776 = extractvalue %dx.types.ResRet.i32 %6775, 0
  %6777 = and i32 %6776, 536870911
  %6778 = uitofp i32 %6777 to float
  %6779 = fmul fast float %6778, %6625
  %6780 = fmul fast float %6778, %6629
  %6781 = fptoui float %6779 to i32
  %6782 = fptoui float %6780 to i32
  %6783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6784 = extractvalue %dx.types.ResRet.i32 %6783, 0
  %6785 = and i32 %6784, 31
  %6786 = lshr i32 %6781, %6785
  %6787 = lshr i32 %6782, %6785
  %6788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6789 = extractvalue %dx.types.ResRet.i32 %6788, 0
  %6790 = and i32 %6789, 31
  %6791 = shl i32 1, %6790
  %6792 = call i32 @dx.op.binary.i32(i32 40, i32 %6791, i32 4)  ; UMin(a,b)
  %6793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6794 = extractvalue %dx.types.ResRet.i32 %6793, 0
  %6795 = extractvalue %dx.types.ResRet.i32 %6793, 1
  %6796 = icmp eq i32 %6792, 0
  br i1 %6796, label %6838, label %6797

; <label>:6797                                    ; preds = %6741
  br label %6798

; <label>:6798                                    ; preds = %6826, %6797
  %6799 = phi i32 [ %6829, %6826 ], [ 0, %6797 ]
  %6800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6801 = extractvalue %dx.types.ResRet.i32 %6800, 0
  %6802 = lshr i32 %6801, 16
  %6803 = and i32 %6802, 31
  %6804 = shl i32 %6787, %6803
  %6805 = add i32 %6804, %6786
  %6806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6807 = extractvalue %dx.types.ResRet.i32 %6806, 0
  %6808 = and i32 %6807, 31
  %6809 = shl i32 %6805, %6808
  %6810 = add i32 %6809, %6799
  %6811 = shl i32 %6810, 2
  %6812 = add i32 %6811, 32
  %6813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6812, i32 undef)  ; BufferLoad(srv,index,wot)
  %6814 = extractvalue %dx.types.ResRet.i32 %6813, 0
  %6815 = icmp slt i32 %6814, 0
  %6816 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6799
  %6817 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6799
  %6818 = bitcast float* %6816 to i32*
  %6819 = bitcast float* %6817 to i32*
  br i1 %6815, label %6820, label %6826

; <label>:6820                                    ; preds = %6798
  %6821 = and i32 %6814, 1073741823
  %6822 = add nuw nsw i32 %6821, 20
  %6823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6822, i32 undef)  ; BufferLoad(srv,index,wot)
  %6824 = extractvalue %dx.types.ResRet.i32 %6823, 0
  %6825 = extractvalue %dx.types.ResRet.i32 %6823, 1
  br label %6826

; <label>:6826                                    ; preds = %6820, %6798
  %6827 = phi i32 [ %6824, %6820 ], [ %6794, %6798 ]
  %6828 = phi i32 [ %6825, %6820 ], [ %6795, %6798 ]
  store i32 %6827, i32* %6818, align 4
  store i32 %6828, i32* %6819, align 4
  %6829 = add nuw i32 %6799, 1
  %6830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6831 = extractvalue %dx.types.CBufRet.i32 %6830, 2
  %6832 = icmp eq i32 %6831, 0
  %6833 = icmp ugt i32 %6814, -1073741825
  %6834 = and i1 %6833, %6832
  %6835 = icmp ult i32 %6829, %6792
  %6836 = and i1 %6834, %6835
  br i1 %6836, label %6798, label %6837

; <label>:6837                                    ; preds = %6826
  br label %6838

; <label>:6838                                    ; preds = %6837, %6741
  %6839 = phi i32 [ 0, %6741 ], [ %6829, %6837 ]
  %6840 = extractvalue %dx.types.CBufRet.f32 %6603, 2
  %6841 = fptoui float %6840 to i32
  %6842 = icmp eq i32 %6841, 0
  br i1 %6842, label %6894, label %6843

; <label>:6843                                    ; preds = %6838
  br label %6844

; <label>:6844                                    ; preds = %6889, %6843
  %6845 = phi i32 [ %6890, %6889 ], [ %6839, %6843 ]
  %6846 = phi i32 [ %6891, %6889 ], [ 0, %6843 ]
  %6847 = lshr i32 %6846, 2
  %6848 = and i32 %6846, 3
  %6849 = add nuw nsw i32 %6847, 83
  %6850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 %6849)  ; CBufferLoadLegacy(handle,regIndex)
  %6851 = extractvalue %dx.types.CBufRet.i32 %6850, 0
  %6852 = extractvalue %dx.types.CBufRet.i32 %6850, 1
  %6853 = extractvalue %dx.types.CBufRet.i32 %6850, 2
  %6854 = extractvalue %dx.types.CBufRet.i32 %6850, 3
  %6855 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 0
  store i32 %6851, i32* %6855, align 4
  %6856 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 1
  store i32 %6852, i32* %6856, align 4
  %6857 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 2
  store i32 %6853, i32* %6857, align 4
  %6858 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 3
  store i32 %6854, i32* %6858, align 4
  %6859 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 %6848
  %6860 = load i32, i32* %6859, align 4, !tbaa !112, !noalias !116
  %6861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6862 = extractvalue %dx.types.ResRet.i32 %6861, 0
  %6863 = lshr i32 %6862, 16
  %6864 = and i32 %6863, 31
  %6865 = shl i32 %6787, %6864
  %6866 = add i32 %6865, %6786
  %6867 = shl i32 %6866, 2
  %6868 = add i32 %6867, %6860
  %6869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6868, i32 undef)  ; BufferLoad(srv,index,wot)
  %6870 = extractvalue %dx.types.ResRet.i32 %6869, 0
  %6871 = icmp eq i32 %6870, 0
  br i1 %6871, label %6889, label %6872

; <label>:6872                                    ; preds = %6844
  %6873 = icmp slt i32 %6870, 0
  %6874 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6845
  %6875 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6845
  %6876 = bitcast float* %6874 to i32*
  %6877 = bitcast float* %6875 to i32*
  br i1 %6873, label %6878, label %6885

; <label>:6878                                    ; preds = %6872
  %6879 = and i32 %6870, 1073741823
  %6880 = add i32 %6860, 20
  %6881 = add i32 %6880, %6879
  %6882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6881, i32 undef)  ; BufferLoad(srv,index,wot)
  %6883 = extractvalue %dx.types.ResRet.i32 %6882, 0
  %6884 = extractvalue %dx.types.ResRet.i32 %6882, 1
  br label %6885

; <label>:6885                                    ; preds = %6878, %6872
  %6886 = phi i32 [ %6883, %6878 ], [ %6794, %6872 ]
  %6887 = phi i32 [ %6884, %6878 ], [ %6795, %6872 ]
  store i32 %6886, i32* %6876, align 4
  store i32 %6887, i32* %6877, align 4
  %6888 = add i32 %6845, 1
  br label %6889

; <label>:6889                                    ; preds = %6885, %6844
  %6890 = phi i32 [ %6845, %6844 ], [ %6888, %6885 ]
  %6891 = add nuw i32 %6846, 1
  %6892 = icmp eq i32 %6891, %6841
  br i1 %6892, label %6893, label %6844

; <label>:6893                                    ; preds = %6889
  br label %6894

; <label>:6894                                    ; preds = %6893, %6838
  %6895 = phi i32 [ %6839, %6838 ], [ %6890, %6893 ]
  %6896 = icmp eq i32 %6895, 1
  %6897 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 0
  %6898 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 0
  br i1 %6896, label %6899, label %6902

; <label>:6899                                    ; preds = %6894
  %6900 = load float, float* %6897, align 4
  %6901 = load float, float* %6898, align 4
  br label %6929

; <label>:6902                                    ; preds = %6894
  %6903 = load float, float* %6897, align 4
  %6904 = load float, float* %6898, align 4
  %6905 = fdiv fast float 1.000000e+00, %6904
  %6906 = fsub fast float %6903, %6905
  %6907 = icmp ugt i32 %6895, 1
  br i1 %6907, label %6908, label %6924

; <label>:6908                                    ; preds = %6902
  br label %6909

; <label>:6909                                    ; preds = %6909, %6908
  %6910 = phi float [ %6919, %6909 ], [ %6906, %6908 ]
  %6911 = phi float [ %6920, %6909 ], [ %6903, %6908 ]
  %6912 = phi i32 [ %6921, %6909 ], [ 1, %6908 ]
  %6913 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6912
  %6914 = load float, float* %6913, align 4
  %6915 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6912
  %6916 = load float, float* %6915, align 4
  %6917 = fdiv fast float 1.000000e+00, %6916
  %6918 = fsub fast float %6914, %6917
  %6919 = call float @dx.op.binary.f32(i32 36, float %6910, float %6918)  ; FMin(a,b)
  %6920 = call float @dx.op.binary.f32(i32 35, float %6911, float %6914)  ; FMax(a,b)
  %6921 = add nuw i32 %6912, 1
  %6922 = icmp eq i32 %6921, %6895
  br i1 %6922, label %6923, label %6909

; <label>:6923                                    ; preds = %6909
  br label %6924

; <label>:6924                                    ; preds = %6923, %6902
  %6925 = phi float [ %6906, %6902 ], [ %6919, %6923 ]
  %6926 = phi float [ %6903, %6902 ], [ %6920, %6923 ]
  %6927 = fsub fast float %6926, %6925
  %6928 = fdiv fast float 1.000000e+00, %6927
  br label %6929

; <label>:6929                                    ; preds = %6924, %6899
  %6930 = phi float [ %6900, %6899 ], [ %6926, %6924 ]
  %6931 = phi float [ %6901, %6899 ], [ %6928, %6924 ]
  %6932 = fadd fast float %6633, %6930
  %6933 = fmul fast float %6932, %6931
  %6934 = call float @dx.op.unary.f32(i32 7, float %6933)  ; Saturate(value)
  %6935 = fmul fast float %6934, 2.000000e+00
  %6936 = fsub fast float 1.000000e+00, %6935
  %6937 = fmul fast float %6771, %6771
  %6938 = fsub fast float %6772, %6937
  %6939 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6938)  ; FMax(a,b)
  %6940 = fdiv fast float 1.000000e+00, %6939
  %6941 = fmul fast float %6772, %6771
  %6942 = fsub fast float %6773, %6941
  %6943 = fsub fast float %6936, %6771
  %6944 = fmul fast float %6936, %6936
  %6945 = fsub fast float %6944, %6772
  %6946 = fmul fast float %6940, %6942
  %6947 = fmul fast float %6946, %6943
  %6948 = fsub fast float %6945, %6947
  %6949 = fmul fast float %6772, %6772
  %6950 = fsub fast float %6774, %6949
  %6951 = fmul fast float %6942, %6942
  %6952 = fmul fast float %6951, %6940
  %6953 = fsub fast float %6950, %6952
  %6954 = fdiv fast float %6948, %6953
  %6955 = fmul fast float %6954, %6942
  %6956 = fsub fast float %6943, %6955
  %6957 = fmul fast float %6956, %6940
  %6958 = fmul fast float %6957, %6771
  %6959 = fsub fast float 1.000000e+00, %6958
  %6960 = fmul fast float %6954, %6772
  %6961 = fsub fast float %6959, %6960
  %6962 = fmul fast float %6957, %6957
  %6963 = fmul fast float %6954, 4.000000e+00
  %6964 = fmul fast float %6963, %6961
  %6965 = fsub fast float %6962, %6964
  %6966 = call float @dx.op.unary.f32(i32 24, float %6965)  ; Sqrt(value)
  %6967 = fcmp fast oge float %6957, 0.000000e+00
  %6968 = fsub fast float -0.000000e+00, %6966
  %6969 = select i1 %6967, float %6968, float %6966
  %6970 = fsub fast float %6969, %6957
  %6971 = fdiv fast float %6970, %6954
  %6972 = fdiv fast float %6961, %6970
  %6973 = fmul fast float %6971, 5.000000e-01
  %6974 = fmul fast float %6972, 2.000000e+00
  %6975 = select i1 %6967, float %6973, float %6974
  %6976 = select i1 %6967, float %6974, float %6973
  %6977 = call float @dx.op.binary.f32(i32 35, float %6975, float %6976)  ; FMax(a,b)
  %6978 = call float @dx.op.binary.f32(i32 36, float %6975, float %6976)  ; FMin(a,b)
  %6979 = fcmp fast ogt float %6936, %6977
  %6980 = fsub fast float %6936, %6978
  %6981 = fsub fast float %6936, %6977
  %6982 = fsub fast float %6977, %6978
  %6983 = select i1 %6979, float %6981, float %6982
  %6984 = fmul float %6980, %6983
  %6985 = select i1 %6979, float %6978, float %6936
  %6986 = fcmp fast ogt float %6936, %6978
  %6987 = fmul fast float %6985, %6977
  %6988 = fadd fast float %6985, %6977
  %6989 = fmul fast float %6988, %6771
  %6990 = fadd fast float %6987, %6772
  %6991 = fsub fast float %6990, %6989
  %6992 = fdiv fast float %6991, %6984
  %6993 = select i1 %6986, float %6992, float 0.000000e+00
  %6994 = fsub fast float 1.000000e+00, %6993
  %6995 = select i1 %6979, float %6994, float %6993
  %6996 = call float @dx.op.unary.f32(i32 7, float %6995)  ; Saturate(value)
  %6997 = extractvalue %dx.types.CBufRet.f32 %6756, 3
  %6998 = fmul fast float %6997, %6996
  %6999 = fsub fast float 1.000000e+00, %6998
  br label %7000

; <label>:7000                                    ; preds = %6929, %6641, %6606, %6602, %6566
  %7001 = phi float [ 1.000000e+00, %6566 ], [ %6999, %6929 ], [ 1.000000e+00, %6606 ], [ 1.000000e+00, %6641 ], [ 1.000000e+00, %6602 ]
  %7002 = fcmp fast ogt float %6598, 0.000000e+00
  br i1 %7002, label %7003, label %7167, !dx.controlflow.hints !125

; <label>:7003                                    ; preds = %7000
  %7004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7005 = extractvalue %dx.types.CBufRet.f32 %7004, 2
  %7006 = fadd fast float %7005, %6479
  %7007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7008 = extractvalue %dx.types.CBufRet.f32 %7007, 2
  %7009 = extractvalue %dx.types.CBufRet.f32 %7007, 3
  %7010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7011 = extractvalue %dx.types.CBufRet.f32 %7010, 2
  %7012 = call float @dx.op.binary.f32(i32 35, float %7006, float 0.000000e+00)  ; FMax(a,b)
  %7013 = fadd fast float %7012, 0x3F10000000000000
  %7014 = fcmp fast oeq float %7011, 0.000000e+00
  br i1 %7014, label %7015, label %7082

; <label>:7015                                    ; preds = %7003
  %7016 = extractvalue %dx.types.CBufRet.f32 %7007, 1
  %7017 = extractvalue %dx.types.CBufRet.f32 %7007, 0
  %7018 = fmul fast float %7017, %6497
  %7019 = fmul fast float %7016, %6498
  %7020 = fadd fast float %7018, 5.000000e-01
  %7021 = call float @dx.op.unary.f32(i32 27, float %7020)  ; Round_ni(value)
  %7022 = fadd fast float %7019, 5.000000e-01
  %7023 = call float @dx.op.unary.f32(i32 27, float %7022)  ; Round_ni(value)
  %7024 = fsub fast float %7020, %7021
  %7025 = fsub fast float %7022, %7023
  %7026 = fadd fast float %7021, -5.000000e-01
  %7027 = fadd fast float %7023, -5.000000e-01
  %7028 = fmul fast float %7024, 2.000000e+00
  %7029 = fsub fast float 3.000000e+00, %7028
  %7030 = fadd fast float %7028, 1.000000e+00
  %7031 = fsub fast float 2.000000e+00, %7024
  %7032 = bitcast float %7029 to i32
  %7033 = sub nsw i32 2129859010, %7032
  %7034 = bitcast i32 %7033 to float
  %7035 = fmul fast float %7034, %7031
  %7036 = fadd fast float %7035, -1.000000e+00
  %7037 = bitcast float %7030 to i32
  %7038 = sub nsw i32 2129859010, %7037
  %7039 = bitcast i32 %7038 to float
  %7040 = fmul fast float %7039, %7024
  %7041 = fadd fast float %7040, 1.000000e+00
  %7042 = fmul fast float %7025, 2.000000e+00
  %7043 = fsub fast float 3.000000e+00, %7042
  %7044 = fadd fast float %7042, 1.000000e+00
  %7045 = fsub fast float 2.000000e+00, %7025
  %7046 = bitcast float %7043 to i32
  %7047 = sub nsw i32 2129859010, %7046
  %7048 = bitcast i32 %7047 to float
  %7049 = fmul fast float %7048, %7045
  %7050 = fadd fast float %7049, -1.000000e+00
  %7051 = bitcast float %7044 to i32
  %7052 = sub nsw i32 2129859010, %7051
  %7053 = bitcast i32 %7052 to float
  %7054 = fmul fast float %7053, %7025
  %7055 = fadd fast float %7054, 1.000000e+00
  %7056 = fadd fast float %7036, %7026
  %7057 = fmul fast float %7056, %7008
  %7058 = fadd fast float %7050, %7027
  %7059 = fmul fast float %7058, %7009
  %7060 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7057, float %7059, float undef, float undef, i32 0, i32 0, i32 undef, float %7013)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7061 = extractvalue %dx.types.ResRet.f32 %7060, 0
  %7062 = fmul fast float %7061, %7029
  %7063 = fadd fast float %7041, %7026
  %7064 = fmul fast float %7063, %7008
  %7065 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7064, float %7059, float undef, float undef, i32 0, i32 0, i32 undef, float %7013)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7066 = extractvalue %dx.types.ResRet.f32 %7065, 0
  %7067 = fmul fast float %7066, %7030
  %7068 = fadd fast float %7055, %7027
  %7069 = fmul fast float %7068, %7009
  %7070 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7057, float %7069, float undef, float undef, i32 0, i32 0, i32 undef, float %7013)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7071 = extractvalue %dx.types.ResRet.f32 %7070, 0
  %7072 = fmul fast float %7071, %7029
  %7073 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7064, float %7069, float undef, float undef, i32 0, i32 0, i32 undef, float %7013)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7074 = extractvalue %dx.types.ResRet.f32 %7073, 0
  %7075 = fmul fast float %7074, %7030
  %7076 = fadd fast float %7075, %7072
  %7077 = fmul fast float %7076, %7044
  %7078 = fadd fast float %7067, %7062
  %7079 = fmul fast float %7078, %7043
  %7080 = fadd fast float %7079, %7077
  %7081 = fmul fast float %7080, 6.250000e-02
  br label %7167

; <label>:7082                                    ; preds = %7003
  %7083 = fmul fast float %286, 0x401921FB60000000
  %7084 = call float @dx.op.unary.f32(i32 13, float %7083)  ; Sin(value)
  %7085 = call float @dx.op.unary.f32(i32 12, float %7083)  ; Cos(value)
  %7086 = fsub fast float -0.000000e+00, %7084
  br label %7087

; <label>:7087                                    ; preds = %7136, %7082
  %7088 = phi float [ 0.000000e+00, %7082 ], [ %7131, %7136 ]
  %7089 = phi float [ 0.000000e+00, %7082 ], [ %7133, %7136 ]
  %7090 = phi i32 [ 0, %7082 ], [ %7137, %7136 ]
  %7091 = mul i32 %7090, 2
  %7092 = add i32 0, %7091
  %7093 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7092
  %7094 = load float, float* %7093, align 4
  %7095 = mul i32 %7090, 2
  %7096 = add i32 1, %7095
  %7097 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7096
  %7098 = load float, float* %7097, align 4
  %7099 = fmul fast float %7094, %7085
  %7100 = call float @dx.op.tertiary.f32(i32 46, float %7098, float %7086, float %7099)  ; FMad(a,b,c)
  %7101 = fmul fast float %7094, %7084
  %7102 = call float @dx.op.tertiary.f32(i32 46, float %7098, float %7085, float %7101)  ; FMad(a,b,c)
  %7103 = fmul fast float %7100, %7011
  %7104 = fmul fast float %7102, %7011
  %7105 = fadd fast float %7103, %6497
  %7106 = fadd fast float %7104, %6498
  %7107 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %56, float %7105, float %7106, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7108 = extractvalue %dx.types.ResRet.f32 %7107, 0
  %7109 = extractvalue %dx.types.ResRet.f32 %7107, 1
  %7110 = extractvalue %dx.types.ResRet.f32 %7107, 2
  %7111 = extractvalue %dx.types.ResRet.f32 %7107, 3
  %7112 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 0
  store float %7108, float* %7112, align 4
  %7113 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 1
  store float %7109, float* %7113, align 4
  %7114 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 2
  store float %7110, float* %7114, align 4
  %7115 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 3
  store float %7111, float* %7115, align 4
  %7116 = fsub fast float %7108, %7013
  %7117 = fcmp fast olt float %7116, 0.000000e+00
  %7118 = select i1 %7117, float 0.000000e+00, float 1.000000e+00
  %7119 = fadd fast float %7118, %7088
  %7120 = fmul fast float %7118, %7116
  %7121 = fadd fast float %7120, %7089
  br label %7122

; <label>:7122                                    ; preds = %7122, %7087
  %7123 = phi i32 [ 1, %7087 ], [ %7134, %7122 ]
  %7124 = phi float [ %7121, %7087 ], [ %7133, %7122 ]
  %7125 = phi float [ %7119, %7087 ], [ %7131, %7122 ]
  %7126 = getelementptr [4 x float], [4 x float]* %109, i32 0, i32 %7123
  %7127 = load float, float* %7126, align 4, !tbaa !126, !noalias !116
  %7128 = fsub fast float %7127, %7013
  %7129 = fcmp fast olt float %7128, 0.000000e+00
  %7130 = select i1 %7129, float 0.000000e+00, float 1.000000e+00
  %7131 = fadd fast float %7130, %7125
  %7132 = fmul fast float %7130, %7128
  %7133 = fadd fast float %7132, %7124
  %7134 = add nuw nsw i32 %7123, 1
  %7135 = icmp eq i32 %7134, 4
  br i1 %7135, label %7136, label %7122, !llvm.loop !128

; <label>:7136                                    ; preds = %7122
  %7137 = add nuw nsw i32 %7090, 1
  %7138 = icmp eq i32 %7137, 8
  br i1 %7138, label %7139, label %7087, !llvm.loop !129

; <label>:7139                                    ; preds = %7136
  %7140 = fdiv fast float 1.000000e+00, %7131
  %7141 = fmul fast float %7140, %7133
  %7142 = fdiv fast float 1.000000e+00, %7013
  %7143 = fmul fast float %7141, %7142
  %7144 = call float @dx.op.unary.f32(i32 7, float %7143)  ; Saturate(value)
  %7145 = call float @dx.op.binary.f32(i32 35, float %7144, float 0.000000e+00)  ; FMax(a,b)
  %7146 = fmul fast float %7131, 3.125000e-02
  %7147 = call float @dx.op.unary.f32(i32 7, float %7146)  ; Saturate(value)
  %7148 = fmul fast float %7147, 2.000000e+00
  %7149 = fadd fast float %7148, -1.000000e+00
  %7150 = fcmp fast ogt float %7149, 0.000000e+00
  %7151 = fcmp fast olt float %7149, 0.000000e+00
  %7152 = zext i1 %7150 to i32
  %7153 = zext i1 %7151 to i32
  %7154 = sub nsw i32 %7152, %7153
  %7155 = sitofp i32 %7154 to float
  %7156 = fmul fast float %7155, %7149
  %7157 = fsub fast float 1.000000e+00, %7156
  %7158 = fmul fast float %7157, %7157
  %7159 = fmul fast float %7158, %7157
  %7160 = fsub fast float %7157, %7159
  %7161 = fmul fast float %7160, %7145
  %7162 = fsub fast float 1.000000e+00, %7159
  %7163 = fsub fast float %7162, %7161
  %7164 = fmul fast float %7155, 5.000000e-01
  %7165 = fmul fast float %7164, %7163
  %7166 = fsub fast float 5.000000e-01, %7165
  br label %7167

; <label>:7167                                    ; preds = %7139, %7015, %7000
  %7168 = phi float [ 1.000000e+00, %7000 ], [ %7081, %7015 ], [ %7166, %7139 ]
  %7169 = fcmp fast ogt float %6596, 0.000000e+00
  br i1 %7169, label %7170, label %7334, !dx.controlflow.hints !130

; <label>:7170                                    ; preds = %7167
  %7171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7172 = extractvalue %dx.types.CBufRet.f32 %7171, 1
  %7173 = fadd fast float %7172, %6479
  %7174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7174, 2
  %7176 = extractvalue %dx.types.CBufRet.f32 %7174, 3
  %7177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7178 = extractvalue %dx.types.CBufRet.f32 %7177, 1
  %7179 = call float @dx.op.binary.f32(i32 35, float %7173, float 0.000000e+00)  ; FMax(a,b)
  %7180 = fadd fast float %7179, 0x3F10000000000000
  %7181 = fcmp fast oeq float %7178, 0.000000e+00
  br i1 %7181, label %7182, label %7249

; <label>:7182                                    ; preds = %7170
  %7183 = extractvalue %dx.types.CBufRet.f32 %7174, 1
  %7184 = extractvalue %dx.types.CBufRet.f32 %7174, 0
  %7185 = fmul fast float %7184, %6489
  %7186 = fmul fast float %7183, %6490
  %7187 = fadd fast float %7185, 5.000000e-01
  %7188 = call float @dx.op.unary.f32(i32 27, float %7187)  ; Round_ni(value)
  %7189 = fadd fast float %7186, 5.000000e-01
  %7190 = call float @dx.op.unary.f32(i32 27, float %7189)  ; Round_ni(value)
  %7191 = fsub fast float %7187, %7188
  %7192 = fsub fast float %7189, %7190
  %7193 = fadd fast float %7188, -5.000000e-01
  %7194 = fadd fast float %7190, -5.000000e-01
  %7195 = fmul fast float %7191, 2.000000e+00
  %7196 = fsub fast float 3.000000e+00, %7195
  %7197 = fadd fast float %7195, 1.000000e+00
  %7198 = fsub fast float 2.000000e+00, %7191
  %7199 = bitcast float %7196 to i32
  %7200 = sub nsw i32 2129859010, %7199
  %7201 = bitcast i32 %7200 to float
  %7202 = fmul fast float %7201, %7198
  %7203 = fadd fast float %7202, -1.000000e+00
  %7204 = bitcast float %7197 to i32
  %7205 = sub nsw i32 2129859010, %7204
  %7206 = bitcast i32 %7205 to float
  %7207 = fmul fast float %7206, %7191
  %7208 = fadd fast float %7207, 1.000000e+00
  %7209 = fmul fast float %7192, 2.000000e+00
  %7210 = fsub fast float 3.000000e+00, %7209
  %7211 = fadd fast float %7209, 1.000000e+00
  %7212 = fsub fast float 2.000000e+00, %7192
  %7213 = bitcast float %7210 to i32
  %7214 = sub nsw i32 2129859010, %7213
  %7215 = bitcast i32 %7214 to float
  %7216 = fmul fast float %7215, %7212
  %7217 = fadd fast float %7216, -1.000000e+00
  %7218 = bitcast float %7211 to i32
  %7219 = sub nsw i32 2129859010, %7218
  %7220 = bitcast i32 %7219 to float
  %7221 = fmul fast float %7220, %7192
  %7222 = fadd fast float %7221, 1.000000e+00
  %7223 = fadd fast float %7203, %7193
  %7224 = fmul fast float %7223, %7175
  %7225 = fadd fast float %7217, %7194
  %7226 = fmul fast float %7225, %7176
  %7227 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7224, float %7226, float undef, float undef, i32 0, i32 0, i32 undef, float %7180)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7228 = extractvalue %dx.types.ResRet.f32 %7227, 0
  %7229 = fmul fast float %7228, %7196
  %7230 = fadd fast float %7208, %7193
  %7231 = fmul fast float %7230, %7175
  %7232 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7231, float %7226, float undef, float undef, i32 0, i32 0, i32 undef, float %7180)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7233 = extractvalue %dx.types.ResRet.f32 %7232, 0
  %7234 = fmul fast float %7233, %7197
  %7235 = fadd fast float %7222, %7194
  %7236 = fmul fast float %7235, %7176
  %7237 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7224, float %7236, float undef, float undef, i32 0, i32 0, i32 undef, float %7180)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7238 = extractvalue %dx.types.ResRet.f32 %7237, 0
  %7239 = fmul fast float %7238, %7196
  %7240 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7231, float %7236, float undef, float undef, i32 0, i32 0, i32 undef, float %7180)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7241 = extractvalue %dx.types.ResRet.f32 %7240, 0
  %7242 = fmul fast float %7241, %7197
  %7243 = fadd fast float %7242, %7239
  %7244 = fmul fast float %7243, %7211
  %7245 = fadd fast float %7234, %7229
  %7246 = fmul fast float %7245, %7210
  %7247 = fadd fast float %7246, %7244
  %7248 = fmul fast float %7247, 6.250000e-02
  br label %7334

; <label>:7249                                    ; preds = %7170
  %7250 = fmul fast float %286, 0x401921FB60000000
  %7251 = call float @dx.op.unary.f32(i32 13, float %7250)  ; Sin(value)
  %7252 = call float @dx.op.unary.f32(i32 12, float %7250)  ; Cos(value)
  %7253 = fsub fast float -0.000000e+00, %7251
  br label %7254

; <label>:7254                                    ; preds = %7303, %7249
  %7255 = phi float [ 0.000000e+00, %7249 ], [ %7298, %7303 ]
  %7256 = phi float [ 0.000000e+00, %7249 ], [ %7300, %7303 ]
  %7257 = phi i32 [ 0, %7249 ], [ %7304, %7303 ]
  %7258 = mul i32 %7257, 2
  %7259 = add i32 0, %7258
  %7260 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7259
  %7261 = load float, float* %7260, align 4
  %7262 = mul i32 %7257, 2
  %7263 = add i32 1, %7262
  %7264 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7263
  %7265 = load float, float* %7264, align 4
  %7266 = fmul fast float %7261, %7252
  %7267 = call float @dx.op.tertiary.f32(i32 46, float %7265, float %7253, float %7266)  ; FMad(a,b,c)
  %7268 = fmul fast float %7261, %7251
  %7269 = call float @dx.op.tertiary.f32(i32 46, float %7265, float %7252, float %7268)  ; FMad(a,b,c)
  %7270 = fmul fast float %7267, %7178
  %7271 = fmul fast float %7269, %7178
  %7272 = fadd fast float %7270, %6489
  %7273 = fadd fast float %7271, %6490
  %7274 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %56, float %7272, float %7273, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7275 = extractvalue %dx.types.ResRet.f32 %7274, 0
  %7276 = extractvalue %dx.types.ResRet.f32 %7274, 1
  %7277 = extractvalue %dx.types.ResRet.f32 %7274, 2
  %7278 = extractvalue %dx.types.ResRet.f32 %7274, 3
  %7279 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 0
  store float %7275, float* %7279, align 4
  %7280 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 1
  store float %7276, float* %7280, align 4
  %7281 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 2
  store float %7277, float* %7281, align 4
  %7282 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 3
  store float %7278, float* %7282, align 4
  %7283 = fsub fast float %7275, %7180
  %7284 = fcmp fast olt float %7283, 0.000000e+00
  %7285 = select i1 %7284, float 0.000000e+00, float 1.000000e+00
  %7286 = fadd fast float %7285, %7255
  %7287 = fmul fast float %7285, %7283
  %7288 = fadd fast float %7287, %7256
  br label %7289

; <label>:7289                                    ; preds = %7289, %7254
  %7290 = phi i32 [ 1, %7254 ], [ %7301, %7289 ]
  %7291 = phi float [ %7288, %7254 ], [ %7300, %7289 ]
  %7292 = phi float [ %7286, %7254 ], [ %7298, %7289 ]
  %7293 = getelementptr [4 x float], [4 x float]* %108, i32 0, i32 %7290
  %7294 = load float, float* %7293, align 4, !tbaa !126, !noalias !116
  %7295 = fsub fast float %7294, %7180
  %7296 = fcmp fast olt float %7295, 0.000000e+00
  %7297 = select i1 %7296, float 0.000000e+00, float 1.000000e+00
  %7298 = fadd fast float %7297, %7292
  %7299 = fmul fast float %7297, %7295
  %7300 = fadd fast float %7299, %7291
  %7301 = add nuw nsw i32 %7290, 1
  %7302 = icmp eq i32 %7301, 4
  br i1 %7302, label %7303, label %7289, !llvm.loop !128

; <label>:7303                                    ; preds = %7289
  %7304 = add nuw nsw i32 %7257, 1
  %7305 = icmp eq i32 %7304, 8
  br i1 %7305, label %7306, label %7254, !llvm.loop !129

; <label>:7306                                    ; preds = %7303
  %7307 = fdiv fast float 1.000000e+00, %7298
  %7308 = fmul fast float %7307, %7300
  %7309 = fdiv fast float 1.000000e+00, %7180
  %7310 = fmul fast float %7308, %7309
  %7311 = call float @dx.op.unary.f32(i32 7, float %7310)  ; Saturate(value)
  %7312 = call float @dx.op.binary.f32(i32 35, float %7311, float 0.000000e+00)  ; FMax(a,b)
  %7313 = fmul fast float %7298, 3.125000e-02
  %7314 = call float @dx.op.unary.f32(i32 7, float %7313)  ; Saturate(value)
  %7315 = fmul fast float %7314, 2.000000e+00
  %7316 = fadd fast float %7315, -1.000000e+00
  %7317 = fcmp fast ogt float %7316, 0.000000e+00
  %7318 = fcmp fast olt float %7316, 0.000000e+00
  %7319 = zext i1 %7317 to i32
  %7320 = zext i1 %7318 to i32
  %7321 = sub nsw i32 %7319, %7320
  %7322 = sitofp i32 %7321 to float
  %7323 = fmul fast float %7322, %7316
  %7324 = fsub fast float 1.000000e+00, %7323
  %7325 = fmul fast float %7324, %7324
  %7326 = fmul fast float %7325, %7324
  %7327 = fsub fast float %7324, %7326
  %7328 = fmul fast float %7327, %7312
  %7329 = fsub fast float 1.000000e+00, %7326
  %7330 = fsub fast float %7329, %7328
  %7331 = fmul fast float %7322, 5.000000e-01
  %7332 = fmul fast float %7331, %7330
  %7333 = fsub fast float 5.000000e-01, %7332
  br label %7334

; <label>:7334                                    ; preds = %7306, %7182, %7167
  %7335 = phi float [ 1.000000e+00, %7167 ], [ %7248, %7182 ], [ %7333, %7306 ]
  %7336 = fcmp fast ogt float %6595, 0.000000e+00
  br i1 %7336, label %7337, label %7655, !dx.controlflow.hints !131

; <label>:7337                                    ; preds = %7334
  %7338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7339 = extractvalue %dx.types.CBufRet.f32 %7338, 0
  %7340 = fadd fast float %7339, %6479
  %7341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7342 = extractvalue %dx.types.CBufRet.f32 %7341, 2
  %7343 = extractvalue %dx.types.CBufRet.f32 %7341, 3
  %7344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7345 = extractvalue %dx.types.CBufRet.f32 %7344, 0
  %7346 = call float @dx.op.binary.f32(i32 35, float %7340, float 0.000000e+00)  ; FMax(a,b)
  %7347 = fadd fast float %7346, 0x3F10000000000000
  %7348 = fcmp fast oeq float %7345, 0.000000e+00
  br i1 %6482, label %7349, label %7502, !dx.controlflow.hints !132

; <label>:7349                                    ; preds = %7337
  br i1 %7348, label %7350, label %7417

; <label>:7350                                    ; preds = %7349
  %7351 = extractvalue %dx.types.CBufRet.f32 %7341, 1
  %7352 = extractvalue %dx.types.CBufRet.f32 %7341, 0
  %7353 = fmul fast float %7352, %6471
  %7354 = fmul fast float %7351, %6475
  %7355 = fadd fast float %7353, 5.000000e-01
  %7356 = call float @dx.op.unary.f32(i32 27, float %7355)  ; Round_ni(value)
  %7357 = fadd fast float %7354, 5.000000e-01
  %7358 = call float @dx.op.unary.f32(i32 27, float %7357)  ; Round_ni(value)
  %7359 = fsub fast float %7355, %7356
  %7360 = fsub fast float %7357, %7358
  %7361 = fadd fast float %7356, -5.000000e-01
  %7362 = fadd fast float %7358, -5.000000e-01
  %7363 = fmul fast float %7359, 2.000000e+00
  %7364 = fsub fast float 3.000000e+00, %7363
  %7365 = fadd fast float %7363, 1.000000e+00
  %7366 = fsub fast float 2.000000e+00, %7359
  %7367 = bitcast float %7364 to i32
  %7368 = sub nsw i32 2129859010, %7367
  %7369 = bitcast i32 %7368 to float
  %7370 = fmul fast float %7369, %7366
  %7371 = fadd fast float %7370, -1.000000e+00
  %7372 = bitcast float %7365 to i32
  %7373 = sub nsw i32 2129859010, %7372
  %7374 = bitcast i32 %7373 to float
  %7375 = fmul fast float %7374, %7359
  %7376 = fadd fast float %7375, 1.000000e+00
  %7377 = fmul fast float %7360, 2.000000e+00
  %7378 = fsub fast float 3.000000e+00, %7377
  %7379 = fadd fast float %7377, 1.000000e+00
  %7380 = fsub fast float 2.000000e+00, %7360
  %7381 = bitcast float %7378 to i32
  %7382 = sub nsw i32 2129859010, %7381
  %7383 = bitcast i32 %7382 to float
  %7384 = fmul fast float %7383, %7380
  %7385 = fadd fast float %7384, -1.000000e+00
  %7386 = bitcast float %7379 to i32
  %7387 = sub nsw i32 2129859010, %7386
  %7388 = bitcast i32 %7387 to float
  %7389 = fmul fast float %7388, %7360
  %7390 = fadd fast float %7389, 1.000000e+00
  %7391 = fadd fast float %7371, %7361
  %7392 = fmul fast float %7391, %7342
  %7393 = fadd fast float %7385, %7362
  %7394 = fmul fast float %7393, %7343
  %7395 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %7392, float %7394, float undef, float undef, i32 0, i32 0, i32 undef, float %7347)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7396 = extractvalue %dx.types.ResRet.f32 %7395, 0
  %7397 = fmul fast float %7396, %7364
  %7398 = fadd fast float %7376, %7361
  %7399 = fmul fast float %7398, %7342
  %7400 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %7399, float %7394, float undef, float undef, i32 0, i32 0, i32 undef, float %7347)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7401 = extractvalue %dx.types.ResRet.f32 %7400, 0
  %7402 = fmul fast float %7401, %7365
  %7403 = fadd fast float %7390, %7362
  %7404 = fmul fast float %7403, %7343
  %7405 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %7392, float %7404, float undef, float undef, i32 0, i32 0, i32 undef, float %7347)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7406 = extractvalue %dx.types.ResRet.f32 %7405, 0
  %7407 = fmul fast float %7406, %7364
  %7408 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %7399, float %7404, float undef, float undef, i32 0, i32 0, i32 undef, float %7347)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7409 = extractvalue %dx.types.ResRet.f32 %7408, 0
  %7410 = fmul fast float %7409, %7365
  %7411 = fadd fast float %7410, %7407
  %7412 = fmul fast float %7411, %7379
  %7413 = fadd fast float %7402, %7397
  %7414 = fmul fast float %7413, %7378
  %7415 = fadd fast float %7414, %7412
  %7416 = fmul fast float %7415, 6.250000e-02
  br label %7655

; <label>:7417                                    ; preds = %7349
  %7418 = fmul fast float %286, 0x401921FB60000000
  %7419 = call float @dx.op.unary.f32(i32 13, float %7418)  ; Sin(value)
  %7420 = call float @dx.op.unary.f32(i32 12, float %7418)  ; Cos(value)
  %7421 = fsub fast float -0.000000e+00, %7419
  br label %7422

; <label>:7422                                    ; preds = %7471, %7417
  %7423 = phi float [ 0.000000e+00, %7417 ], [ %7466, %7471 ]
  %7424 = phi float [ 0.000000e+00, %7417 ], [ %7468, %7471 ]
  %7425 = phi i32 [ 0, %7417 ], [ %7472, %7471 ]
  %7426 = mul i32 %7425, 2
  %7427 = add i32 0, %7426
  %7428 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7427
  %7429 = load float, float* %7428, align 4
  %7430 = mul i32 %7425, 2
  %7431 = add i32 1, %7430
  %7432 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7431
  %7433 = load float, float* %7432, align 4
  %7434 = fmul fast float %7429, %7420
  %7435 = call float @dx.op.tertiary.f32(i32 46, float %7433, float %7421, float %7434)  ; FMad(a,b,c)
  %7436 = fmul fast float %7429, %7419
  %7437 = call float @dx.op.tertiary.f32(i32 46, float %7433, float %7420, float %7436)  ; FMad(a,b,c)
  %7438 = fmul fast float %7435, %7345
  %7439 = fmul fast float %7437, %7345
  %7440 = fadd fast float %7438, %6471
  %7441 = fadd fast float %7439, %6475
  %7442 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %56, float %7440, float %7441, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7443 = extractvalue %dx.types.ResRet.f32 %7442, 0
  %7444 = extractvalue %dx.types.ResRet.f32 %7442, 1
  %7445 = extractvalue %dx.types.ResRet.f32 %7442, 2
  %7446 = extractvalue %dx.types.ResRet.f32 %7442, 3
  %7447 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %7443, float* %7447, align 4
  %7448 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %7444, float* %7448, align 4
  %7449 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %7445, float* %7449, align 4
  %7450 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %7446, float* %7450, align 4
  %7451 = fsub fast float %7443, %7347
  %7452 = fcmp fast olt float %7451, 0.000000e+00
  %7453 = select i1 %7452, float 0.000000e+00, float 1.000000e+00
  %7454 = fadd fast float %7453, %7423
  %7455 = fmul fast float %7453, %7451
  %7456 = fadd fast float %7455, %7424
  br label %7457

; <label>:7457                                    ; preds = %7457, %7422
  %7458 = phi i32 [ 1, %7422 ], [ %7469, %7457 ]
  %7459 = phi float [ %7456, %7422 ], [ %7468, %7457 ]
  %7460 = phi float [ %7454, %7422 ], [ %7466, %7457 ]
  %7461 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %7458
  %7462 = load float, float* %7461, align 4, !tbaa !126, !noalias !116
  %7463 = fsub fast float %7462, %7347
  %7464 = fcmp fast olt float %7463, 0.000000e+00
  %7465 = select i1 %7464, float 0.000000e+00, float 1.000000e+00
  %7466 = fadd fast float %7465, %7460
  %7467 = fmul fast float %7465, %7463
  %7468 = fadd fast float %7467, %7459
  %7469 = add nuw nsw i32 %7458, 1
  %7470 = icmp eq i32 %7469, 4
  br i1 %7470, label %7471, label %7457, !llvm.loop !128

; <label>:7471                                    ; preds = %7457
  %7472 = add nuw nsw i32 %7425, 1
  %7473 = icmp eq i32 %7472, 8
  br i1 %7473, label %7474, label %7422, !llvm.loop !129

; <label>:7474                                    ; preds = %7471
  %7475 = fdiv fast float 1.000000e+00, %7466
  %7476 = fmul fast float %7475, %7468
  %7477 = fdiv fast float 1.000000e+00, %7347
  %7478 = fmul fast float %7476, %7477
  %7479 = call float @dx.op.unary.f32(i32 7, float %7478)  ; Saturate(value)
  %7480 = call float @dx.op.binary.f32(i32 35, float %7479, float 0.000000e+00)  ; FMax(a,b)
  %7481 = fmul fast float %7466, 3.125000e-02
  %7482 = call float @dx.op.unary.f32(i32 7, float %7481)  ; Saturate(value)
  %7483 = fmul fast float %7482, 2.000000e+00
  %7484 = fadd fast float %7483, -1.000000e+00
  %7485 = fcmp fast ogt float %7484, 0.000000e+00
  %7486 = fcmp fast olt float %7484, 0.000000e+00
  %7487 = zext i1 %7485 to i32
  %7488 = zext i1 %7486 to i32
  %7489 = sub nsw i32 %7487, %7488
  %7490 = sitofp i32 %7489 to float
  %7491 = fmul fast float %7490, %7484
  %7492 = fsub fast float 1.000000e+00, %7491
  %7493 = fmul fast float %7492, %7492
  %7494 = fmul fast float %7493, %7492
  %7495 = fsub fast float %7492, %7494
  %7496 = fmul fast float %7495, %7480
  %7497 = fsub fast float 1.000000e+00, %7494
  %7498 = fsub fast float %7497, %7496
  %7499 = fmul fast float %7490, 5.000000e-01
  %7500 = fmul fast float %7499, %7498
  %7501 = fsub fast float 5.000000e-01, %7500
  br label %7655

; <label>:7502                                    ; preds = %7337
  br i1 %7348, label %7503, label %7570

; <label>:7503                                    ; preds = %7502
  %7504 = extractvalue %dx.types.CBufRet.f32 %7341, 1
  %7505 = extractvalue %dx.types.CBufRet.f32 %7341, 0
  %7506 = fmul fast float %7505, %6471
  %7507 = fmul fast float %7504, %6475
  %7508 = fadd fast float %7506, 5.000000e-01
  %7509 = call float @dx.op.unary.f32(i32 27, float %7508)  ; Round_ni(value)
  %7510 = fadd fast float %7507, 5.000000e-01
  %7511 = call float @dx.op.unary.f32(i32 27, float %7510)  ; Round_ni(value)
  %7512 = fsub fast float %7508, %7509
  %7513 = fsub fast float %7510, %7511
  %7514 = fadd fast float %7509, -5.000000e-01
  %7515 = fadd fast float %7511, -5.000000e-01
  %7516 = fmul fast float %7512, 2.000000e+00
  %7517 = fsub fast float 3.000000e+00, %7516
  %7518 = fadd fast float %7516, 1.000000e+00
  %7519 = fsub fast float 2.000000e+00, %7512
  %7520 = bitcast float %7517 to i32
  %7521 = sub nsw i32 2129859010, %7520
  %7522 = bitcast i32 %7521 to float
  %7523 = fmul fast float %7522, %7519
  %7524 = fadd fast float %7523, -1.000000e+00
  %7525 = bitcast float %7518 to i32
  %7526 = sub nsw i32 2129859010, %7525
  %7527 = bitcast i32 %7526 to float
  %7528 = fmul fast float %7527, %7512
  %7529 = fadd fast float %7528, 1.000000e+00
  %7530 = fmul fast float %7513, 2.000000e+00
  %7531 = fsub fast float 3.000000e+00, %7530
  %7532 = fadd fast float %7530, 1.000000e+00
  %7533 = fsub fast float 2.000000e+00, %7513
  %7534 = bitcast float %7531 to i32
  %7535 = sub nsw i32 2129859010, %7534
  %7536 = bitcast i32 %7535 to float
  %7537 = fmul fast float %7536, %7533
  %7538 = fadd fast float %7537, -1.000000e+00
  %7539 = bitcast float %7532 to i32
  %7540 = sub nsw i32 2129859010, %7539
  %7541 = bitcast i32 %7540 to float
  %7542 = fmul fast float %7541, %7513
  %7543 = fadd fast float %7542, 1.000000e+00
  %7544 = fadd fast float %7524, %7514
  %7545 = fmul fast float %7544, %7342
  %7546 = fadd fast float %7538, %7515
  %7547 = fmul fast float %7546, %7343
  %7548 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7545, float %7547, float undef, float undef, i32 0, i32 0, i32 undef, float %7347)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7549 = extractvalue %dx.types.ResRet.f32 %7548, 0
  %7550 = fmul fast float %7549, %7517
  %7551 = fadd fast float %7529, %7514
  %7552 = fmul fast float %7551, %7342
  %7553 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7552, float %7547, float undef, float undef, i32 0, i32 0, i32 undef, float %7347)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7554 = extractvalue %dx.types.ResRet.f32 %7553, 0
  %7555 = fmul fast float %7554, %7518
  %7556 = fadd fast float %7543, %7515
  %7557 = fmul fast float %7556, %7343
  %7558 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7545, float %7557, float undef, float undef, i32 0, i32 0, i32 undef, float %7347)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7559 = extractvalue %dx.types.ResRet.f32 %7558, 0
  %7560 = fmul fast float %7559, %7517
  %7561 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7552, float %7557, float undef, float undef, i32 0, i32 0, i32 undef, float %7347)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7562 = extractvalue %dx.types.ResRet.f32 %7561, 0
  %7563 = fmul fast float %7562, %7518
  %7564 = fadd fast float %7563, %7560
  %7565 = fmul fast float %7564, %7532
  %7566 = fadd fast float %7555, %7550
  %7567 = fmul fast float %7566, %7531
  %7568 = fadd fast float %7567, %7565
  %7569 = fmul fast float %7568, 6.250000e-02
  br label %7655

; <label>:7570                                    ; preds = %7502
  %7571 = fmul fast float %286, 0x401921FB60000000
  %7572 = call float @dx.op.unary.f32(i32 13, float %7571)  ; Sin(value)
  %7573 = call float @dx.op.unary.f32(i32 12, float %7571)  ; Cos(value)
  %7574 = fsub fast float -0.000000e+00, %7572
  br label %7575

; <label>:7575                                    ; preds = %7624, %7570
  %7576 = phi float [ 0.000000e+00, %7570 ], [ %7619, %7624 ]
  %7577 = phi float [ 0.000000e+00, %7570 ], [ %7621, %7624 ]
  %7578 = phi i32 [ 0, %7570 ], [ %7625, %7624 ]
  %7579 = mul i32 %7578, 2
  %7580 = add i32 0, %7579
  %7581 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7580
  %7582 = load float, float* %7581, align 4
  %7583 = mul i32 %7578, 2
  %7584 = add i32 1, %7583
  %7585 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7584
  %7586 = load float, float* %7585, align 4
  %7587 = fmul fast float %7582, %7573
  %7588 = call float @dx.op.tertiary.f32(i32 46, float %7586, float %7574, float %7587)  ; FMad(a,b,c)
  %7589 = fmul fast float %7582, %7572
  %7590 = call float @dx.op.tertiary.f32(i32 46, float %7586, float %7573, float %7589)  ; FMad(a,b,c)
  %7591 = fmul fast float %7588, %7345
  %7592 = fmul fast float %7590, %7345
  %7593 = fadd fast float %7591, %6471
  %7594 = fadd fast float %7592, %6475
  %7595 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %56, float %7593, float %7594, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7596 = extractvalue %dx.types.ResRet.f32 %7595, 0
  %7597 = extractvalue %dx.types.ResRet.f32 %7595, 1
  %7598 = extractvalue %dx.types.ResRet.f32 %7595, 2
  %7599 = extractvalue %dx.types.ResRet.f32 %7595, 3
  %7600 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %7596, float* %7600, align 4
  %7601 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %7597, float* %7601, align 4
  %7602 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %7598, float* %7602, align 4
  %7603 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %7599, float* %7603, align 4
  %7604 = fsub fast float %7596, %7347
  %7605 = fcmp fast olt float %7604, 0.000000e+00
  %7606 = select i1 %7605, float 0.000000e+00, float 1.000000e+00
  %7607 = fadd fast float %7606, %7576
  %7608 = fmul fast float %7606, %7604
  %7609 = fadd fast float %7608, %7577
  br label %7610

; <label>:7610                                    ; preds = %7610, %7575
  %7611 = phi i32 [ 1, %7575 ], [ %7622, %7610 ]
  %7612 = phi float [ %7609, %7575 ], [ %7621, %7610 ]
  %7613 = phi float [ %7607, %7575 ], [ %7619, %7610 ]
  %7614 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %7611
  %7615 = load float, float* %7614, align 4, !tbaa !126, !noalias !116
  %7616 = fsub fast float %7615, %7347
  %7617 = fcmp fast olt float %7616, 0.000000e+00
  %7618 = select i1 %7617, float 0.000000e+00, float 1.000000e+00
  %7619 = fadd fast float %7618, %7613
  %7620 = fmul fast float %7618, %7616
  %7621 = fadd fast float %7620, %7612
  %7622 = add nuw nsw i32 %7611, 1
  %7623 = icmp eq i32 %7622, 4
  br i1 %7623, label %7624, label %7610, !llvm.loop !128

; <label>:7624                                    ; preds = %7610
  %7625 = add nuw nsw i32 %7578, 1
  %7626 = icmp eq i32 %7625, 8
  br i1 %7626, label %7627, label %7575, !llvm.loop !129

; <label>:7627                                    ; preds = %7624
  %7628 = fdiv fast float 1.000000e+00, %7619
  %7629 = fmul fast float %7628, %7621
  %7630 = fdiv fast float 1.000000e+00, %7347
  %7631 = fmul fast float %7629, %7630
  %7632 = call float @dx.op.unary.f32(i32 7, float %7631)  ; Saturate(value)
  %7633 = call float @dx.op.binary.f32(i32 35, float %7632, float 0.000000e+00)  ; FMax(a,b)
  %7634 = fmul fast float %7619, 3.125000e-02
  %7635 = call float @dx.op.unary.f32(i32 7, float %7634)  ; Saturate(value)
  %7636 = fmul fast float %7635, 2.000000e+00
  %7637 = fadd fast float %7636, -1.000000e+00
  %7638 = fcmp fast ogt float %7637, 0.000000e+00
  %7639 = fcmp fast olt float %7637, 0.000000e+00
  %7640 = zext i1 %7638 to i32
  %7641 = zext i1 %7639 to i32
  %7642 = sub nsw i32 %7640, %7641
  %7643 = sitofp i32 %7642 to float
  %7644 = fmul fast float %7643, %7637
  %7645 = fsub fast float 1.000000e+00, %7644
  %7646 = fmul fast float %7645, %7645
  %7647 = fmul fast float %7646, %7645
  %7648 = fsub fast float %7645, %7647
  %7649 = fmul fast float %7648, %7633
  %7650 = fsub fast float 1.000000e+00, %7647
  %7651 = fsub fast float %7650, %7649
  %7652 = fmul fast float %7643, 5.000000e-01
  %7653 = fmul fast float %7652, %7651
  %7654 = fsub fast float 5.000000e-01, %7653
  br label %7655

; <label>:7655                                    ; preds = %7627, %7503, %7474, %7350, %7334
  %7656 = phi float [ 1.000000e+00, %7334 ], [ %7416, %7350 ], [ %7501, %7474 ], [ %7569, %7503 ], [ %7654, %7627 ]
  %7657 = fsub fast float %7168, %7001
  %7658 = fmul fast float %7657, %6568
  %7659 = fadd fast float %7658, %7001
  %7660 = fsub fast float %7335, %7659
  %7661 = fmul fast float %7660, %6567
  %7662 = fadd fast float %7661, %7659
  %7663 = fsub fast float %7656, %7662
  %7664 = fmul fast float %7663, %6595
  %7665 = fadd fast float %7664, %7662
  %7666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7667 = extractvalue %dx.types.CBufRet.f32 %7666, 2
  %7668 = fcmp fast ogt float %7667, 0.000000e+00
  br i1 %7668, label %7669, label %7709, !dx.controlflow.hints !133

; <label>:7669                                    ; preds = %7655
  %7670 = fcmp fast ugt float %7667, 0.000000e+00
  br i1 %7670, label %7671, label %7706

; <label>:7671                                    ; preds = %7669
  %7672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7673 = extractvalue %dx.types.CBufRet.f32 %7672, 0
  %7674 = extractvalue %dx.types.CBufRet.f32 %7672, 1
  %7675 = extractvalue %dx.types.CBufRet.f32 %7672, 2
  %7676 = extractvalue %dx.types.CBufRet.f32 %7672, 3
  %7677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7678 = extractvalue %dx.types.CBufRet.f32 %7677, 0
  %7679 = extractvalue %dx.types.CBufRet.f32 %7677, 1
  %7680 = extractvalue %dx.types.CBufRet.f32 %7677, 2
  %7681 = extractvalue %dx.types.CBufRet.f32 %7677, 3
  %7682 = extractvalue %dx.types.CBufRet.f32 %7666, 0
  %7683 = extractvalue %dx.types.CBufRet.f32 %7666, 1
  %7684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7685 = extractvalue %dx.types.CBufRet.f32 %7684, 0
  %7686 = extractvalue %dx.types.CBufRet.f32 %7684, 1
  %7687 = extractvalue %dx.types.CBufRet.f32 %7684, 2
  %7688 = fadd fast float %7685, %6448
  %7689 = fadd fast float %7686, %6449
  %7690 = fadd fast float %7687, %6450
  %7691 = fmul fast float %7688, %7673
  %7692 = call float @dx.op.tertiary.f32(i32 46, float %7674, float %7689, float %7691)  ; FMad(a,b,c)
  %7693 = call float @dx.op.tertiary.f32(i32 46, float %7675, float %7690, float %7692)  ; FMad(a,b,c)
  %7694 = fadd fast float %7693, %7676
  %7695 = fmul fast float %7688, %7678
  %7696 = call float @dx.op.tertiary.f32(i32 46, float %7679, float %7689, float %7695)  ; FMad(a,b,c)
  %7697 = call float @dx.op.tertiary.f32(i32 46, float %7680, float %7690, float %7696)  ; FMad(a,b,c)
  %7698 = fadd fast float %7697, %7681
  %7699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %52, float %7694, float %7698, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7700 = extractvalue %dx.types.ResRet.f32 %7699, 0
  %7701 = fmul fast float %7700, %7683
  %7702 = fadd fast float %7701, %7682
  %7703 = call float @dx.op.unary.f32(i32 7, float %7702)  ; Saturate(value)
  %7704 = fmul fast float %7703, %7667
  %7705 = fsub fast float 1.000000e+00, %7704
  br label %7706

; <label>:7706                                    ; preds = %7671, %7669
  %7707 = phi float [ %7705, %7671 ], [ 1.000000e+00, %7669 ]
  %7708 = fmul fast float %7707, %7665
  br label %7709

; <label>:7709                                    ; preds = %7706, %7655, %6428
  %7710 = phi float [ 1.000000e+00, %6428 ], [ %7708, %7706 ], [ %7665, %7655 ]
  %7711 = call float @dx.op.binary.f32(i32 36, float %7710, float %7710)  ; FMin(a,b)
  %7712 = call float @dx.op.binary.f32(i32 36, float %7710, float %7711)  ; FMin(a,b)
  %7713 = fcmp fast ogt float %7712, 0.000000e+00
  br i1 %7713, label %7714, label %7879, !dx.controlflow.hints !134

; <label>:7714                                    ; preds = %7709
  %7715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7716 = extractvalue %dx.types.CBufRet.f32 %7715, 0
  %7717 = extractvalue %dx.types.CBufRet.f32 %7715, 1
  %7718 = extractvalue %dx.types.CBufRet.f32 %7715, 2
  %7719 = extractvalue %dx.types.CBufRet.f32 %7715, 3
  %7720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7721 = extractvalue %dx.types.CBufRet.f32 %7720, 0
  %7722 = extractvalue %dx.types.CBufRet.f32 %7720, 1
  %7723 = extractvalue %dx.types.CBufRet.f32 %7720, 2
  %7724 = extractvalue %dx.types.CBufRet.f32 %7720, 3
  %7725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7726 = extractvalue %dx.types.CBufRet.f32 %7725, 0
  %7727 = extractvalue %dx.types.CBufRet.f32 %7725, 1
  %7728 = extractvalue %dx.types.CBufRet.f32 %7725, 2
  %7729 = extractvalue %dx.types.CBufRet.f32 %7725, 3
  %7730 = fmul fast float %7716, %6448
  %7731 = call float @dx.op.tertiary.f32(i32 46, float %6449, float %7717, float %7730)  ; FMad(a,b,c)
  %7732 = call float @dx.op.tertiary.f32(i32 46, float %6450, float %7718, float %7731)  ; FMad(a,b,c)
  %7733 = fadd fast float %7732, %7719
  %7734 = fmul fast float %7721, %6448
  %7735 = call float @dx.op.tertiary.f32(i32 46, float %6449, float %7722, float %7734)  ; FMad(a,b,c)
  %7736 = call float @dx.op.tertiary.f32(i32 46, float %6450, float %7723, float %7735)  ; FMad(a,b,c)
  %7737 = fadd fast float %7736, %7724
  %7738 = fmul fast float %7726, %6448
  %7739 = call float @dx.op.tertiary.f32(i32 46, float %6449, float %7727, float %7738)  ; FMad(a,b,c)
  %7740 = call float @dx.op.tertiary.f32(i32 46, float %6450, float %7728, float %7739)  ; FMad(a,b,c)
  %7741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7742 = extractvalue %dx.types.CBufRet.f32 %7741, 0
  %7743 = extractvalue %dx.types.CBufRet.f32 %7741, 1
  %7744 = extractvalue %dx.types.CBufRet.f32 %7741, 3
  %7745 = fmul fast float %7744, %7733
  %7746 = fmul fast float %7744, %7737
  %7747 = fadd fast float %7745, %7742
  %7748 = fadd fast float %7746, %7743
  %7749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7750 = extractvalue %dx.types.CBufRet.f32 %7749, 0
  %7751 = extractvalue %dx.types.CBufRet.f32 %7749, 1
  %7752 = fsub fast float %7747, %7750
  %7753 = fsub fast float %7748, %7751
  %7754 = fcmp fast olt float %7752, 0.000000e+00
  %7755 = fcmp fast olt float %7753, 0.000000e+00
  %7756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7757 = extractvalue %dx.types.CBufRet.f32 %7756, 0
  %7758 = extractvalue %dx.types.CBufRet.f32 %7756, 1
  %7759 = extractvalue %dx.types.CBufRet.f32 %7756, 2
  %7760 = extractvalue %dx.types.CBufRet.f32 %7756, 3
  %7761 = select i1 %7754, float %7757, float %7759
  %7762 = select i1 %7755, float %7758, float %7760
  %7763 = fmul fast float %7761, %7752
  %7764 = fmul fast float %7762, %7753
  %7765 = call float @dx.op.unary.f32(i32 6, float %7763)  ; FAbs(value)
  %7766 = call float @dx.op.unary.f32(i32 6, float %7764)  ; FAbs(value)
  %7767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7768 = extractvalue %dx.types.CBufRet.f32 %7767, 0
  %7769 = call float @dx.op.binary.f32(i32 35, float %7765, float %7766)  ; FMax(a,b)
  %7770 = fsub fast float %7768, %7769
  %7771 = call float @dx.op.unary.f32(i32 7, float %7770)  ; Saturate(value)
  %7772 = fcmp fast ogt float %7771, 0.000000e+00
  br i1 %7772, label %7773, label %7814, !dx.controlflow.hints !135

; <label>:7773                                    ; preds = %7714
  %7774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %55, float %7747, float %7748, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7775 = extractvalue %dx.types.ResRet.f32 %7774, 1
  %7776 = fcmp fast ogt float %7775, 0.000000e+00
  br i1 %7776, label %7777, label %7809

; <label>:7777                                    ; preds = %7773
  %7778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %55, float %7747, float %7748, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7779 = extractvalue %dx.types.ResRet.f32 %7778, 0
  %7780 = extractvalue %dx.types.ResRet.f32 %7778, 1
  %7781 = extractvalue %dx.types.ResRet.f32 %7778, 2
  %7782 = extractvalue %dx.types.ResRet.f32 %7778, 3
  %7783 = fsub fast float 1.000000e+00, %7729
  %7784 = fsub fast float %7783, %7740
  %7785 = fmul fast float %7784, 0x400921FB60000000
  %7786 = fadd fast float %7785, 0x3FF921FB60000000
  %7787 = call float @dx.op.unary.f32(i32 13, float %7786)  ; Sin(value)
  %7788 = fadd fast float %7787, -1.000000e+00
  %7789 = fmul fast float %7788, 0x3FD45F3060000000
  %7790 = fmul fast float %7784, 0x401921FB60000000
  %7791 = fadd fast float %7790, 0x400921FB60000000
  %7792 = call float @dx.op.unary.f32(i32 13, float %7791)  ; Sin(value)
  %7793 = fadd fast float %7792, 0x3E7777A5C0000000
  %7794 = fmul fast float %7793, 0x3FC45F3060000000
  %7795 = fmul fast float %7784, 0x4022D97C80000000
  %7796 = fadd fast float %7795, 0x4012D97C80000000
  %7797 = call float @dx.op.unary.f32(i32 13, float %7796)  ; Sin(value)
  %7798 = fadd fast float %7797, 1.000000e+00
  %7799 = fmul fast float %7798, 0x3FBB2995E0000000
  %7800 = fmul fast float %7784, 0x402921FB60000000
  %7801 = fadd fast float %7800, 0x401921FB60000000
  %7802 = call float @dx.op.unary.f32(i32 13, float %7801)  ; Sin(value)
  %7803 = fadd fast float %7802, 0xBE8777A5C0000000
  %7804 = fmul fast float %7803, 0x3FB45F3060000000
  %7805 = call float @dx.op.dot4.f32(i32 56, float %7779, float %7780, float %7781, float %7782, float %7789, float %7794, float %7799, float %7804)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7806 = fmul fast float %7805, 0xBFF7154760000000
  %7807 = call float @dx.op.unary.f32(i32 21, float %7806)  ; Exp(value)
  %7808 = call float @dx.op.unary.f32(i32 7, float %7807)  ; Saturate(value)
  br label %7809

; <label>:7809                                    ; preds = %7777, %7773
  %7810 = phi float [ %7808, %7777 ], [ 1.000000e+00, %7773 ]
  %7811 = fadd fast float %7810, -1.000000e+00
  %7812 = fmul fast float %7811, %7771
  %7813 = fadd fast float %7812, 1.000000e+00
  br label %7814

; <label>:7814                                    ; preds = %7809, %7714
  %7815 = phi float [ %7813, %7809 ], [ 1.000000e+00, %7714 ]
  %7816 = fmul fast float %7815, %7710
  %7817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7818 = extractvalue %dx.types.CBufRet.f32 %7817, 0
  %7819 = extractvalue %dx.types.CBufRet.f32 %7817, 1
  %7820 = extractvalue %dx.types.CBufRet.f32 %7817, 2
  %7821 = fadd fast float %7818, %203
  %7822 = fadd fast float %7819, %204
  %7823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7824 = extractvalue %dx.types.CBufRet.f32 %7823, 1
  %7825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7826 = extractvalue %dx.types.CBufRet.f32 %7825, 0
  %7827 = extractvalue %dx.types.CBufRet.f32 %7825, 1
  %7828 = extractvalue %dx.types.CBufRet.f32 %7825, 2
  %7829 = fsub fast float -0.000000e+00, %7821
  %7830 = fsub fast float -0.000000e+00, %7822
  %7831 = fsub fast float %5672, %7820
  %7832 = fadd fast float %7831, %7824
  %7833 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7829, float %7830, float %7832)  ; Dot3(ax,ay,az,bx,by,bz)
  %7834 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7826, float %7827, float %7828)  ; Dot3(ax,ay,az,bx,by,bz)
  %7835 = fdiv fast float 1.000000e+00, %7834
  %7836 = fmul fast float %7835, %7833
  %7837 = fmul fast float %7826, %7836
  %7838 = fmul fast float %7827, %7836
  %7839 = fadd fast float %7837, %7821
  %7840 = fadd fast float %7838, %7822
  %7841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7842 = extractvalue %dx.types.CBufRet.f32 %7841, 0
  %7843 = extractvalue %dx.types.CBufRet.f32 %7841, 1
  %7844 = fsub fast float %7839, %7842
  %7845 = fsub fast float %7840, %7843
  %7846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7847 = extractvalue %dx.types.CBufRet.f32 %7846, 2
  %7848 = extractvalue %dx.types.CBufRet.f32 %7846, 3
  %7849 = fmul fast float %7844, %7847
  %7850 = fmul fast float %7845, %7848
  %7851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7852 = extractvalue %dx.types.CBufRet.i32 %7851, 3
  %7853 = icmp eq i32 %7852, 0
  br i1 %7853, label %7859, label %7854

; <label>:7854                                    ; preds = %7814
  %7855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7849, float %7850, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7856 = extractvalue %dx.types.ResRet.f32 %7855, 0
  %7857 = extractvalue %dx.types.ResRet.f32 %7855, 1
  %7858 = extractvalue %dx.types.ResRet.f32 %7855, 2
  br label %7864

; <label>:7859                                    ; preds = %7814
  %7860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %7849, float %7850, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7861 = extractvalue %dx.types.ResRet.f32 %7860, 0
  %7862 = extractvalue %dx.types.ResRet.f32 %7860, 1
  %7863 = extractvalue %dx.types.ResRet.f32 %7860, 2
  br label %7864

; <label>:7864                                    ; preds = %7859, %7854
  %7865 = phi float [ %7856, %7854 ], [ %7861, %7859 ]
  %7866 = phi float [ %7857, %7854 ], [ %7862, %7859 ]
  %7867 = phi float [ %7858, %7854 ], [ %7863, %7859 ]
  %7868 = extractvalue %dx.types.CBufRet.f32 %7823, 2
  %7869 = fmul fast float %7868, %7865
  %7870 = extractvalue %dx.types.CBufRet.f32 %7823, 0
  %7871 = fsub fast float %7836, %7870
  %7872 = fsub fast float %7871, %7869
  %7873 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7872)  ; FMax(a,b)
  %7874 = fmul fast float %7873, %7866
  %7875 = call float @dx.op.binary.f32(i32 36, float %7867, float %7874)  ; FMin(a,b)
  %7876 = fmul fast float %7875, 0xBFF7154760000000
  %7877 = call float @dx.op.unary.f32(i32 21, float %7876)  ; Exp(value)
  %7878 = fmul fast float %7816, %7877
  br label %7879

; <label>:7879                                    ; preds = %7864, %7709
  %7880 = phi float [ %7878, %7864 ], [ %7710, %7709 ]
  %7881 = call float @dx.op.binary.f32(i32 36, float %7880, float %7880)  ; FMin(a,b)
  %7882 = call float @dx.op.binary.f32(i32 36, float %7880, float %7881)  ; FMin(a,b)
  %7883 = fcmp fast ogt float %7882, 0.000000e+00
  br i1 %7883, label %7884, label %8144, !dx.controlflow.hints !136

; <label>:7884                                    ; preds = %7879
  %7885 = fmul fast float %7880, %6440
  %7886 = fmul fast float %7880, %6441
  %7887 = fmul fast float %7880, %6442
  %7888 = fsub fast float %205, %4871
  %7889 = fcmp fast ogt float %7888, 0.000000e+00
  %7890 = fmul fast float %6429, 5.120000e+02
  %7891 = fmul fast float %6430, 5.120000e+02
  %7892 = fmul fast float %6431, 5.120000e+02
  %7893 = fadd fast float %7892, %205
  %7894 = fsub fast float %4871, %7893
  %7895 = fmul fast float %7894, 2.000000e+00
  %7896 = fadd fast float %7895, %7893
  %7897 = select i1 %7889, float %7896, float %7893
  %7898 = fsub fast float %7897, %205
  %7899 = call float @dx.op.dot3.f32(i32 55, float %7890, float %7891, float %7898, float %7890, float %7891, float %7898)  ; Dot3(ax,ay,az,bx,by,bz)
  %7900 = call float @dx.op.unary.f32(i32 25, float %7899)  ; Rsqrt(value)
  %7901 = fmul fast float %7900, %7890
  %7902 = fmul fast float %7900, %7891
  %7903 = fmul fast float %7900, %7898
  %7904 = fsub fast float %4871, %205
  %7905 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7904)  ; Dot3(ax,ay,az,bx,by,bz)
  %7906 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7901, float %7902, float %7903)  ; Dot3(ax,ay,az,bx,by,bz)
  %7907 = fdiv fast float 1.000000e+00, %7906
  %7908 = fmul fast float %7907, %7905
  %7909 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7888, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7910 = fcmp fast ogt float %7909, 0.000000e+00
  %7911 = fcmp fast olt float %7909, 0.000000e+00
  %7912 = zext i1 %7910 to i32
  %7913 = zext i1 %7911 to i32
  %7914 = sub nsw i32 %7912, %7913
  %7915 = sitofp i32 %7914 to float
  %7916 = fsub fast float %7897, %4871
  %7917 = call float @dx.op.dot3.f32(i32 55, float %7890, float %7891, float %7916, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7918 = fcmp fast ogt float %7917, 0.000000e+00
  %7919 = fcmp fast olt float %7917, 0.000000e+00
  %7920 = zext i1 %7918 to i32
  %7921 = zext i1 %7919 to i32
  %7922 = sub nsw i32 %7920, %7921
  %7923 = sitofp i32 %7922 to float
  %7924 = fcmp fast une float %7915, %7923
  br i1 %7924, label %7925, label %7935

; <label>:7925                                    ; preds = %7884
  %7926 = fmul fast float %7908, %7903
  %7927 = fmul fast float %7908, %7902
  %7928 = fmul fast float %7908, %7901
  %7929 = fmul fast float %7928, %7928
  %7930 = fmul fast float %7927, %7927
  %7931 = fadd fast float %7929, %7930
  %7932 = fmul fast float %7926, %7926
  %7933 = fadd fast float %7931, %7932
  %7934 = call float @dx.op.unary.f32(i32 24, float %7933)  ; Sqrt(value)
  br label %7945

; <label>:7935                                    ; preds = %7884
  %7936 = icmp slt i32 %7914, 0
  br i1 %7936, label %7937, label %7945

; <label>:7937                                    ; preds = %7935
  %7938 = fsub fast float %205, %7897
  %7939 = fmul fast float %7890, %7890
  %7940 = fmul fast float %7891, %7891
  %7941 = fadd fast float %7939, %7940
  %7942 = fmul fast float %7938, %7938
  %7943 = fadd fast float %7941, %7942
  %7944 = call float @dx.op.unary.f32(i32 24, float %7943)  ; Sqrt(value)
  br label %7945

; <label>:7945                                    ; preds = %7937, %7935, %7925
  %7946 = phi float [ %7934, %7925 ], [ %7944, %7937 ], [ 0.000000e+00, %7935 ]
  %7947 = fsub fast float -0.000000e+00, %7946
  %7948 = select i1 %7889, float -0.000000e+00, float %7947
  %7949 = fmul fast float %4868, 0x3FF7154760000000
  %7950 = fmul fast float %7949, %7948
  %7951 = fmul fast float %4869, 0x3FF7154760000000
  %7952 = fmul fast float %7951, %7948
  %7953 = fmul fast float %4870, 0x3FF7154760000000
  %7954 = fmul fast float %7953, %7948
  %7955 = call float @dx.op.unary.f32(i32 21, float %7950)  ; Exp(value)
  %7956 = call float @dx.op.unary.f32(i32 21, float %7952)  ; Exp(value)
  %7957 = call float @dx.op.unary.f32(i32 21, float %7954)  ; Exp(value)
  %7958 = call float @dx.op.unary.f32(i32 7, float %7955)  ; Saturate(value)
  %7959 = call float @dx.op.unary.f32(i32 7, float %7956)  ; Saturate(value)
  %7960 = call float @dx.op.unary.f32(i32 7, float %7957)  ; Saturate(value)
  %7961 = fmul fast float %7885, %7958
  %7962 = fmul fast float %7886, %7959
  %7963 = fmul fast float %7887, %7960
  %7964 = fsub fast float %6429, %5660
  %7965 = fsub fast float %6430, %5659
  %7966 = fsub fast float %6431, %5658
  %7967 = call float @dx.op.dot3.f32(i32 55, float %7964, float %7965, float %7966, float %7964, float %7965, float %7966)  ; Dot3(ax,ay,az,bx,by,bz)
  %7968 = call float @dx.op.unary.f32(i32 25, float %7967)  ; Rsqrt(value)
  %7969 = fmul fast float %7968, %7964
  %7970 = fmul fast float %7968, %7965
  %7971 = fmul fast float %7968, %7966
  %7972 = call float @dx.op.dot3.f32(i32 55, float %6429, float %6430, float %6431, float %5664, float %5665, float %5666)  ; Dot3(ax,ay,az,bx,by,bz)
  %7973 = call float @dx.op.dot3.f32(i32 55, float %5657, float %5656, float %5655, float %7969, float %7970, float %7971)  ; Dot3(ax,ay,az,bx,by,bz)
  %7974 = call float @dx.op.unary.f32(i32 7, float %7972)  ; Saturate(value)
  %7975 = bitcast i32 %5699 to float
  %7976 = fmul fast float %7974, %7974
  %7977 = fmul fast float %7976, %7975
  %7978 = call float @dx.op.unary.f32(i32 7, float %7977)  ; Saturate(value)
  %7979 = fmul fast float %7978, %7974
  %7980 = call float @dx.op.dot3.f32(i32 55, float %5664, float %5665, float %5666, float %7969, float %7970, float %7971)  ; Dot3(ax,ay,az,bx,by,bz)
  %7981 = fmul fast float %7980, %7980
  %7982 = call float @dx.op.unary.f32(i32 6, float %7972)  ; FAbs(value)
  %7983 = fsub fast float 1.000000e+00, %5693
  %7984 = fmul fast float %5675, %5675
  %7985 = fmul fast float %7984, %7983
  %7986 = fadd fast float %7985, %5693
  %7987 = bitcast float %7986 to i32
  %7988 = ashr i32 %7987, 1
  %7989 = add nsw i32 %7988, 532487669
  %7990 = bitcast i32 %7989 to float
  %7991 = fadd fast float %7990, %5675
  %7992 = fmul fast float %5693, %7981
  %7993 = fsub fast float 1.000000e+00, %7981
  %7994 = fadd fast float %7993, %7992
  %7995 = fmul fast float %7982, %7982
  %7996 = fmul fast float %7995, %7983
  %7997 = fadd fast float %7996, %5693
  %7998 = bitcast float %7997 to i32
  %7999 = ashr i32 %7998, 1
  %8000 = add nsw i32 %7999, 532487669
  %8001 = bitcast i32 %8000 to float
  %8002 = fadd fast float %8001, %7982
  %8003 = fmul fast float %7994, %7994
  %8004 = fmul fast float %8003, %7991
  %8005 = fmul fast float %8004, %8002
  %8006 = fdiv fast float 0x3FF0A00000000000, %8005
  %8007 = fmul fast float %8006, %5693
  %8008 = fmul fast float %5799, 0x3FF9999980000000
  %8009 = fsub fast float 5.000000e+00, %8008
  %8010 = call float @dx.op.unary.f32(i32 6, float %7973)  ; FAbs(value)
  %8011 = fsub fast float 1.000000e+00, %8010
  %8012 = fmul fast float %5799, 0x41D9660740000000
  %8013 = fadd fast float %8012, 0xC1EFBF8940000000
  %8014 = bitcast float %8011 to i32
  %8015 = sitofp i32 %8014 to float
  %8016 = fmul fast float %8015, %8009
  %8017 = fadd fast float %8013, %8016
  %8018 = fptosi float %8017 to i32
  %8019 = bitcast i32 %8018 to float
  %8020 = fsub fast float 1.000000e+00, %5661
  %8021 = fsub fast float 1.000000e+00, %5662
  %8022 = fsub fast float 1.000000e+00, %5673
  %8023 = fmul fast float %8019, %8020
  %8024 = fmul fast float %8019, %8021
  %8025 = fmul fast float %8019, %8022
  %8026 = fadd fast float %8023, %5661
  %8027 = fadd fast float %8024, %5662
  %8028 = fadd fast float %8025, %5673
  br i1 %5822, label %8029, label %8052

; <label>:8029                                    ; preds = %7945
  %8030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4464, float %8010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8031 = extractvalue %dx.types.ResRet.f32 %8030, 0
  %8032 = extractvalue %dx.types.ResRet.f32 %8030, 1
  %8033 = extractvalue %dx.types.ResRet.f32 %8030, 2
  %8034 = fadd fast float %8031, -5.000000e-01
  %8035 = fadd fast float %8032, -5.000000e-01
  %8036 = fadd fast float %8033, -5.000000e-01
  %8037 = fmul fast float %5661, 4.000000e+00
  %8038 = fmul fast float %8037, %8020
  %8039 = fmul fast float %8038, %8034
  %8040 = fmul fast float %5662, 4.000000e+00
  %8041 = fmul fast float %8040, %8021
  %8042 = fmul fast float %8041, %8035
  %8043 = fmul fast float %5673, 4.000000e+00
  %8044 = fmul fast float %8043, %8022
  %8045 = fmul fast float %8044, %8036
  %8046 = fadd fast float %8039, %8026
  %8047 = fadd fast float %8042, %8027
  %8048 = fadd fast float %8045, %8028
  %8049 = call float @dx.op.unary.f32(i32 7, float %8046)  ; Saturate(value)
  %8050 = call float @dx.op.unary.f32(i32 7, float %8047)  ; Saturate(value)
  %8051 = call float @dx.op.unary.f32(i32 7, float %8048)  ; Saturate(value)
  br label %8052

; <label>:8052                                    ; preds = %8029, %7945
  %8053 = phi float [ %8049, %8029 ], [ %8026, %7945 ]
  %8054 = phi float [ %8050, %8029 ], [ %8027, %7945 ]
  %8055 = phi float [ %8051, %8029 ], [ %8028, %7945 ]
  %8056 = fmul fast float %7972, 9.843750e-01
  %8057 = fadd fast float %8056, 7.812500e-03
  %8058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %8057, float %5803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8059 = extractvalue %dx.types.ResRet.f32 %8058, 0
  %8060 = extractvalue %dx.types.ResRet.f32 %8058, 1
  %8061 = extractvalue %dx.types.ResRet.f32 %8058, 2
  %8062 = extractvalue %dx.types.ResRet.f32 %8058, 3
  %8063 = fsub fast float %8061, %8059
  %8064 = fsub fast float %8062, %8060
  %8065 = fmul fast float %8063, %5809
  %8066 = fmul fast float %8064, %5809
  %8067 = fadd fast float %8065, %8059
  %8068 = fadd fast float %8066, %8060
  %8069 = fmul fast float %8067, %5661
  %8070 = fmul fast float %8067, %5662
  %8071 = fmul fast float %8067, %5673
  %8072 = fadd fast float %8069, %8068
  %8073 = fadd fast float %8070, %8068
  %8074 = fadd fast float %8071, %8068
  br i1 %5822, label %8075, label %8098

; <label>:8075                                    ; preds = %8052
  %8076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4464, float %7972, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8077 = extractvalue %dx.types.ResRet.f32 %8076, 0
  %8078 = extractvalue %dx.types.ResRet.f32 %8076, 1
  %8079 = extractvalue %dx.types.ResRet.f32 %8076, 2
  %8080 = fadd fast float %8077, -5.000000e-01
  %8081 = fadd fast float %8078, -5.000000e-01
  %8082 = fadd fast float %8079, -5.000000e-01
  %8083 = fmul fast float %5661, 4.000000e+00
  %8084 = fmul fast float %8083, %8020
  %8085 = fmul fast float %8084, %8080
  %8086 = fmul fast float %5662, 4.000000e+00
  %8087 = fmul fast float %8086, %8021
  %8088 = fmul fast float %8087, %8081
  %8089 = fmul fast float %5673, 4.000000e+00
  %8090 = fmul fast float %8089, %8022
  %8091 = fmul fast float %8090, %8082
  %8092 = fadd fast float %8085, %8072
  %8093 = fadd fast float %8088, %8073
  %8094 = fadd fast float %8091, %8074
  %8095 = call float @dx.op.unary.f32(i32 7, float %8092)  ; Saturate(value)
  %8096 = call float @dx.op.unary.f32(i32 7, float %8093)  ; Saturate(value)
  %8097 = call float @dx.op.unary.f32(i32 7, float %8094)  ; Saturate(value)
  br label %8098

; <label>:8098                                    ; preds = %8075, %8052
  %8099 = phi float [ %8095, %8075 ], [ %8072, %8052 ]
  %8100 = phi float [ %8096, %8075 ], [ %8073, %8052 ]
  %8101 = phi float [ %8097, %8075 ], [ %8074, %8052 ]
  %8102 = call float @dx.op.binary.f32(i32 35, float %8100, float %8101)  ; FMax(a,b)
  %8103 = call float @dx.op.binary.f32(i32 35, float %8099, float %8102)  ; FMax(a,b)
  %8104 = fsub fast float 1.000000e+00, %8103
  %8105 = fmul fast float %8053, %8007
  %8106 = fmul fast float %8054, %8007
  %8107 = fmul fast float %8055, %8007
  %8108 = fsub fast float 1.000000e+00, %7973
  %8109 = bitcast float %8108 to i32
  %8110 = sitofp i32 %8109 to float
  %8111 = fmul fast float %8110, 5.000000e+00
  %8112 = fadd fast float %8111, 0xC1EFBF8940000000
  %8113 = fptosi float %8112 to i32
  %8114 = bitcast i32 %8113 to float
  %8115 = fmul fast float %8114, %4465
  %8116 = fmul fast float %8104, %8115
  %8117 = fmul fast float %8116, %6364
  %8118 = fmul fast float %8116, %6365
  %8119 = fmul fast float %8116, %6366
  %8120 = fadd fast float %8117, %8105
  %8121 = fadd fast float %8118, %8106
  %8122 = fadd fast float %8119, %8107
  %8123 = fmul fast float %7979, %7961
  %8124 = fmul fast float %8123, %8104
  %8125 = fmul fast float %7979, %7962
  %8126 = fmul fast float %8125, %8104
  %8127 = fmul fast float %7979, %7963
  %8128 = fmul fast float %8127, %8104
  %8129 = fmul fast float %8123, %8120
  %8130 = fmul fast float %8125, %8121
  %8131 = fmul fast float %8127, %8122
  %8132 = fadd fast float %8124, %6348
  %8133 = fmul fast float %8132, %4461
  %8134 = fadd fast float %8126, %6349
  %8135 = fmul fast float %8134, %4461
  %8136 = fadd fast float %8128, %6350
  %8137 = fmul fast float %8136, %4461
  %8138 = fadd fast float %8129, %6417
  %8139 = fmul fast float %8138, %4461
  %8140 = fadd fast float %8130, %6420
  %8141 = fmul fast float %8140, %4461
  %8142 = fadd fast float %8131, %6423
  %8143 = fmul fast float %8142, %4461
  br label %8144

; <label>:8144                                    ; preds = %8098, %7879, %6344
  %8145 = phi float [ %6418, %6344 ], [ %6418, %7879 ], [ %8139, %8098 ]
  %8146 = phi float [ %6421, %6344 ], [ %6421, %7879 ], [ %8141, %8098 ]
  %8147 = phi float [ %6424, %6344 ], [ %6424, %7879 ], [ %8143, %8098 ]
  %8148 = phi float [ %6413, %6344 ], [ %6413, %7879 ], [ %8133, %8098 ]
  %8149 = phi float [ %6414, %6344 ], [ %6414, %7879 ], [ %8135, %8098 ]
  %8150 = phi float [ %6415, %6344 ], [ %6415, %7879 ], [ %8137, %8098 ]
  %8151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8152 = extractvalue %dx.types.CBufRet.i32 %8151, 0
  %8153 = icmp eq i32 %8152, 0
  br i1 %8153, label %8829, label %8154

; <label>:8154                                    ; preds = %8144
  %8155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8156 = extractvalue %dx.types.CBufRet.f32 %8155, 2
  %8157 = extractvalue %dx.types.CBufRet.f32 %8155, 3
  %8158 = fmul fast float %8156, %116
  %8159 = fmul fast float %8157, %117
  %8160 = fptoui float %8158 to i32
  %8161 = fptoui float %8159 to i32
  %8162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8163 = extractvalue %dx.types.CBufRet.f32 %8162, 0
  %8164 = extractvalue %dx.types.CBufRet.f32 %8162, 2
  %8165 = extractvalue %dx.types.CBufRet.f32 %8162, 3
  %8166 = fadd fast float %103, -4.000000e+00
  %8167 = call float @dx.op.binary.f32(i32 35, float %8166, float 0.000000e+00)  ; FMax(a,b)
  %8168 = fadd fast float %8167, %8163
  %8169 = fmul fast float %8168, %8164
  %8170 = call float @dx.op.unary.f32(i32 23, float %8169)  ; Log(value)
  %8171 = fmul fast float %8170, %8165
  %8172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8173 = extractvalue %dx.types.CBufRet.f32 %8172, 2
  %8174 = fmul fast float %8171, %8173
  %8175 = call float @dx.op.unary.f32(i32 7, float %8174)  ; Saturate(value)
  %8176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8177 = extractvalue %dx.types.CBufRet.i32 %8176, 1
  %8178 = add i32 %8177, -1
  %8179 = uitofp i32 %8177 to float
  %8180 = fmul fast float %8179, %8175
  %8181 = fptoui float %8180 to i32
  %8182 = call i32 @dx.op.binary.i32(i32 40, i32 %8181, i32 %8178)  ; UMin(a,b)
  %8183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8184 = extractvalue %dx.types.CBufRet.i32 %8183, 2
  %8185 = extractvalue %dx.types.CBufRet.i32 %8183, 3
  %8186 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8161, i32 %8184, i32 %8160)  ; UMad(a,b,c)
  %8187 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8182, i32 %8185, i32 %8186)  ; UMad(a,b,c)
  %8188 = add nsw i32 %8152, -1
  %8189 = call i32 @dx.op.binary.i32(i32 37, i32 %8188, i32 0)  ; IMax(a,b)
  %8190 = call float @dx.op.binary.f32(i32 35, float %103, float 0.000000e+00)  ; FMax(a,b)
  %8191 = fptoui float %8190 to i32
  %8192 = lshr i32 %8191, 5
  %8193 = call i32 @dx.op.binary.i32(i32 40, i32 %8192, i32 8191)  ; UMin(a,b)
  %8194 = shl i32 %8193, 2
  %8195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8194, i32 undef)  ; BufferLoad(srv,index,wot)
  %8196 = extractvalue %dx.types.ResRet.i32 %8195, 0
  %8197 = lshr i32 %8196, 16
  %8198 = and i32 %8196, 65535
  %8199 = lshr i32 %8196, 21
  %8200 = lshr i32 %8198, 5
  %8201 = call i32 @dx.op.binary.i32(i32 40, i32 %8200, i32 %8189)  ; UMin(a,b)
  %8202 = icmp ugt i32 %8199, %8201
  br i1 %8202, label %8829, label %8203

; <label>:8203                                    ; preds = %8154
  br label %8204

; <label>:8204                                    ; preds = %8819, %8203
  %8205 = phi i32 [ %8826, %8819 ], [ %8199, %8203 ]
  %8206 = phi float [ %8820, %8819 ], [ %8145, %8203 ]
  %8207 = phi float [ %8821, %8819 ], [ %8146, %8203 ]
  %8208 = phi float [ %8822, %8819 ], [ %8147, %8203 ]
  %8209 = phi float [ %8823, %8819 ], [ %8148, %8203 ]
  %8210 = phi float [ %8824, %8819 ], [ %8149, %8203 ]
  %8211 = phi float [ %8825, %8819 ], [ %8150, %8203 ]
  %8212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8213 = extractvalue %dx.types.CBufRet.i32 %8212, 0
  %8214 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8187, i32 %8213, i32 %8205)  ; UMad(a,b,c)
  %8215 = shl i32 %8214, 2
  %8216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8215, i32 undef)  ; BufferLoad(srv,index,wot)
  %8217 = extractvalue %dx.types.ResRet.i32 %8216, 0
  %8218 = shl i32 %8205, 5
  %8219 = sub nsw i32 %8197, %8218
  %8220 = call i32 @dx.op.binary.i32(i32 37, i32 %8219, i32 0)  ; IMax(a,b)
  %8221 = call i32 @dx.op.binary.i32(i32 38, i32 %8220, i32 31)  ; IMin(a,b)
  %8222 = sub nsw i32 1, %8197
  %8223 = add nsw i32 %8222, %8198
  %8224 = call i32 @dx.op.binary.i32(i32 37, i32 %8223, i32 0)  ; IMax(a,b)
  %8225 = call i32 @dx.op.binary.i32(i32 38, i32 %8224, i32 32)  ; IMin(a,b)
  %8226 = and i32 %8225, 31
  %8227 = shl i32 -1, %8226
  %8228 = xor i32 %8227, -1
  %8229 = and i32 %8221, 31
  %8230 = shl i32 %8228, %8229
  %8231 = icmp eq i32 %8225, 32
  %8232 = select i1 %8231, i32 -1, i32 %8230
  %8233 = and i32 %8232, %8217
  %8234 = icmp eq i32 %8233, 0
  br i1 %8234, label %8819, label %8235

; <label>:8235                                    ; preds = %8204
  br label %8236

; <label>:8236                                    ; preds = %8370, %8235
  %8237 = phi i32 [ %8248, %8370 ], [ %8233, %8235 ]
  %8238 = phi float [ %8371, %8370 ], [ %8206, %8235 ]
  %8239 = phi float [ %8372, %8370 ], [ %8207, %8235 ]
  %8240 = phi float [ %8373, %8370 ], [ %8208, %8235 ]
  %8241 = phi float [ %8374, %8370 ], [ %8209, %8235 ]
  %8242 = phi float [ %8375, %8370 ], [ %8210, %8235 ]
  %8243 = phi float [ %8376, %8370 ], [ %8211, %8235 ]
  %8244 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8237)  ; FirstbitLo(value)
  %8245 = add i32 %8244, %8218
  %8246 = and i32 %8244, 31
  %8247 = shl i32 1, %8246
  %8248 = xor i32 %8247, %8237
  %8249 = mul i32 %8245, 112
  %8250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8249, i32 undef)  ; BufferLoad(srv,index,wot)
  %8251 = extractvalue %dx.types.ResRet.f32 %8250, 0
  %8252 = extractvalue %dx.types.ResRet.f32 %8250, 1
  %8253 = extractvalue %dx.types.ResRet.f32 %8250, 2
  %8254 = or i32 %8249, 12
  %8255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8254, i32 undef)  ; BufferLoad(srv,index,wot)
  %8256 = extractvalue %dx.types.ResRet.f32 %8255, 0
  %8257 = add i32 %8249, 16
  %8258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8257, i32 undef)  ; BufferLoad(srv,index,wot)
  %8259 = extractvalue %dx.types.ResRet.f32 %8258, 0
  %8260 = extractvalue %dx.types.ResRet.f32 %8258, 1
  %8261 = extractvalue %dx.types.ResRet.f32 %8258, 2
  %8262 = add i32 %8249, 28
  %8263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8262, i32 undef)  ; BufferLoad(srv,index,wot)
  %8264 = extractvalue %dx.types.ResRet.i32 %8263, 0
  %8265 = add i32 %8249, 44
  %8266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8265, i32 undef)  ; BufferLoad(srv,index,wot)
  %8267 = extractvalue %dx.types.ResRet.f32 %8266, 0
  %8268 = add i32 %8249, 48
  %8269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8268, i32 undef)  ; BufferLoad(srv,index,wot)
  %8270 = extractvalue %dx.types.ResRet.f32 %8269, 0
  %8271 = extractvalue %dx.types.ResRet.f32 %8269, 1
  %8272 = extractvalue %dx.types.ResRet.f32 %8269, 2
  %8273 = extractvalue %dx.types.ResRet.f32 %8269, 3
  %8274 = add i32 %8249, 64
  %8275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8274, i32 undef)  ; BufferLoad(srv,index,wot)
  %8276 = extractvalue %dx.types.ResRet.f32 %8275, 0
  %8277 = extractvalue %dx.types.ResRet.f32 %8275, 1
  %8278 = extractvalue %dx.types.ResRet.f32 %8275, 2
  %8279 = extractvalue %dx.types.ResRet.f32 %8275, 3
  %8280 = add i32 %8249, 80
  %8281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8280, i32 undef)  ; BufferLoad(srv,index,wot)
  %8282 = extractvalue %dx.types.ResRet.f32 %8281, 1
  %8283 = extractvalue %dx.types.ResRet.f32 %8281, 2
  %8284 = add i32 %8249, 92
  %8285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8284, i32 undef)  ; BufferLoad(srv,index,wot)
  %8286 = extractvalue %dx.types.ResRet.i32 %8285, 0
  %8287 = call float @dx.op.dot3.f32(i32 55, float %8251, float %8252, float %8253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8288 = select i1 %275, float %8282, float %8251
  %8289 = select i1 %275, float %8287, float %8252
  %8290 = select i1 %275, float %8283, float %8253
  %8291 = and i32 %8286, 65535
  %8292 = uitofp i32 %8291 to float
  %8293 = lshr i32 %8286, 16
  %8294 = uitofp i32 %8293 to float
  %8295 = and i32 %8264, 65535
  %8296 = and i32 %8264, 50331648
  %8297 = icmp eq i32 %8296, 33554432
  %8298 = fsub fast float %8270, %203
  %8299 = fsub fast float %8271, %204
  %8300 = fsub fast float %8272, %205
  %8301 = call float @dx.op.dot3.f32(i32 55, float %8298, float %8299, float %8300, float %8298, float %8299, float %8300)  ; Dot3(ax,ay,az,bx,by,bz)
  %8302 = call float @dx.op.unary.f32(i32 24, float %8301)  ; Sqrt(value)
  %8303 = fdiv fast float 1.000000e+00, %8302
  %8304 = fmul fast float %8303, %8298
  %8305 = fmul fast float %8303, %8299
  %8306 = fmul fast float %8303, %8300
  %8307 = fadd fast float %8302, %8256
  %8308 = fdiv fast float 1.000000e+00, %8307
  %8309 = fmul float %8267, %8308
  %8310 = fmul float %8309, %8309
  %8311 = call float @dx.op.unary.f32(i32 7, float %8310)  ; Saturate(value)
  br i1 %8297, label %8312, label %8333

; <label>:8312                                    ; preds = %8236
  %8313 = fmul fast float %8278, %8259
  %8314 = fmul fast float %8278, %8260
  %8315 = fmul fast float %8278, %8261
  %8316 = fadd fast float %8298, %8313
  %8317 = fadd fast float %8299, %8314
  %8318 = fadd fast float %8300, %8315
  %8319 = call float @dx.op.dot3.f32(i32 55, float %8316, float %8317, float %8318, float %8316, float %8317, float %8318)  ; Dot3(ax,ay,az,bx,by,bz)
  %8320 = call float @dx.op.unary.f32(i32 25, float %8319)  ; Rsqrt(value)
  %8321 = fmul fast float %8320, %8316
  %8322 = fmul fast float %8320, %8317
  %8323 = fmul fast float %8320, %8318
  %8324 = fsub fast float %203, %8270
  %8325 = fsub fast float %204, %8271
  %8326 = fsub fast float %205, %8272
  %8327 = fsub fast float -0.000000e+00, %8324
  %8328 = fsub fast float -0.000000e+00, %8325
  %8329 = fsub fast float -0.000000e+00, %8326
  %8330 = call float @dx.op.dot3.f32(i32 55, float %8327, float %8328, float %8329, float %8259, float %8260, float %8261)  ; Dot3(ax,ay,az,bx,by,bz)
  %8331 = fcmp fast ogt float %8330, 0.000000e+00
  %8332 = uitofp i1 %8331 to float
  br label %8333

; <label>:8333                                    ; preds = %8312, %8236
  %8334 = phi float [ %8332, %8312 ], [ 1.000000e+00, %8236 ]
  %8335 = phi float [ %8321, %8312 ], [ %8304, %8236 ]
  %8336 = phi float [ %8322, %8312 ], [ %8305, %8236 ]
  %8337 = phi float [ %8323, %8312 ], [ %8306, %8236 ]
  %8338 = call float @dx.op.dot3.f32(i32 55, float %8259, float %8260, float %8261, float %8335, float %8336, float %8337)  ; Dot3(ax,ay,az,bx,by,bz)
  %8339 = fmul fast float %8338, %8338
  %8340 = call float @dx.op.unary.f32(i32 7, float %8339)  ; Saturate(value)
  %8341 = fsub fast float 1.000000e+00, %8340
  %8342 = fmul fast float %8341, 5.000000e-01
  %8343 = fcmp fast ogt float %8338, 0.000000e+00
  %8344 = fsub fast float 1.000000e+00, %8342
  %8345 = select i1 %8343, float %8342, float %8344
  %8346 = fmul fast float %8345, %8294
  %8347 = fadd fast float %8346, %8292
  %8348 = fmul fast float %8347, 0x3EF0001000000000
  %8349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %55, float %8348, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8350 = extractvalue %dx.types.ResRet.f32 %8349, 0
  %8351 = fmul fast float %8338, %8276
  %8352 = fadd fast float %8351, %8277
  %8353 = call float @dx.op.unary.f32(i32 7, float %8352)  ; Saturate(value)
  %8354 = select i1 %8297, float 1.000000e+00, float %8353
  %8355 = select i1 %8297, float %8353, float 1.000000e+00
  %8356 = fmul fast float %8302, %8273
  %8357 = fsub fast float 1.000000e+00, %8356
  %8358 = fmul fast float %8357, %8279
  %8359 = call float @dx.op.unary.f32(i32 7, float %8358)  ; Saturate(value)
  %8360 = fmul fast float %8359, %8355
  %8361 = fmul fast float %8360, 2.000000e+00
  %8362 = fsub fast float 3.000000e+00, %8361
  %8363 = fmul fast float %8350, %8334
  %8364 = fmul fast float %8360, %8360
  %8365 = fmul fast float %8364, %8363
  %8366 = fmul fast float %8365, %8362
  %8367 = call float @dx.op.binary.f32(i32 36, float %8366, float %8366)  ; FMin(a,b)
  %8368 = call float @dx.op.binary.f32(i32 36, float %8366, float %8367)  ; FMin(a,b)
  %8369 = fcmp fast ogt float %8368, 0.000000e+00
  br i1 %8369, label %8378, label %8370, !dx.controlflow.hints !137

; <label>:8370                                    ; preds = %8775, %8524, %8333
  %8371 = phi float [ %8238, %8524 ], [ %8238, %8333 ], [ %8815, %8775 ]
  %8372 = phi float [ %8239, %8524 ], [ %8239, %8333 ], [ %8816, %8775 ]
  %8373 = phi float [ %8240, %8524 ], [ %8240, %8333 ], [ %8817, %8775 ]
  %8374 = phi float [ %8241, %8524 ], [ %8241, %8333 ], [ %8809, %8775 ]
  %8375 = phi float [ %8242, %8524 ], [ %8242, %8333 ], [ %8810, %8775 ]
  %8376 = phi float [ %8243, %8524 ], [ %8243, %8333 ], [ %8811, %8775 ]
  %8377 = icmp eq i32 %8237, %8247
  br i1 %8377, label %8818, label %8236

; <label>:8378                                    ; preds = %8333
  %8379 = icmp eq i32 %8295, 255
  br i1 %8379, label %8524, label %8380, !dx.controlflow.hints !138

; <label>:8380                                    ; preds = %8378
  %8381 = mul nuw nsw i32 %8295, 176
  %8382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8381, i32 undef)  ; BufferLoad(srv,index,wot)
  %8383 = extractvalue %dx.types.ResRet.f32 %8382, 0
  %8384 = extractvalue %dx.types.ResRet.f32 %8382, 1
  %8385 = extractvalue %dx.types.ResRet.f32 %8382, 2
  %8386 = extractvalue %dx.types.ResRet.f32 %8382, 3
  %8387 = add nuw nsw i32 %8381, 16
  %8388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8387, i32 undef)  ; BufferLoad(srv,index,wot)
  %8389 = extractvalue %dx.types.ResRet.f32 %8388, 0
  %8390 = extractvalue %dx.types.ResRet.f32 %8388, 1
  %8391 = add nuw nsw i32 %8381, 32
  %8392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8391, i32 undef)  ; BufferLoad(srv,index,wot)
  %8393 = extractvalue %dx.types.ResRet.f32 %8392, 0
  %8394 = extractvalue %dx.types.ResRet.f32 %8392, 1
  %8395 = extractvalue %dx.types.ResRet.f32 %8392, 2
  %8396 = add nuw nsw i32 %8381, 48
  %8397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8396, i32 undef)  ; BufferLoad(srv,index,wot)
  %8398 = extractvalue %dx.types.ResRet.f32 %8397, 0
  %8399 = extractvalue %dx.types.ResRet.f32 %8397, 1
  %8400 = extractvalue %dx.types.ResRet.f32 %8397, 2
  %8401 = extractvalue %dx.types.ResRet.f32 %8397, 3
  %8402 = add nuw nsw i32 %8381, 64
  %8403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8402, i32 undef)  ; BufferLoad(srv,index,wot)
  %8404 = extractvalue %dx.types.ResRet.f32 %8403, 0
  %8405 = extractvalue %dx.types.ResRet.f32 %8403, 1
  %8406 = extractvalue %dx.types.ResRet.f32 %8403, 2
  %8407 = extractvalue %dx.types.ResRet.f32 %8403, 3
  %8408 = add nuw nsw i32 %8381, 80
  %8409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8408, i32 undef)  ; BufferLoad(srv,index,wot)
  %8410 = extractvalue %dx.types.ResRet.f32 %8409, 0
  %8411 = extractvalue %dx.types.ResRet.f32 %8409, 1
  %8412 = extractvalue %dx.types.ResRet.f32 %8409, 2
  %8413 = extractvalue %dx.types.ResRet.f32 %8409, 3
  %8414 = add nuw nsw i32 %8381, 96
  %8415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8414, i32 undef)  ; BufferLoad(srv,index,wot)
  %8416 = extractvalue %dx.types.ResRet.f32 %8415, 0
  %8417 = extractvalue %dx.types.ResRet.f32 %8415, 1
  %8418 = extractvalue %dx.types.ResRet.f32 %8415, 2
  %8419 = extractvalue %dx.types.ResRet.f32 %8415, 3
  %8420 = bitcast float %8390 to i32
  %8421 = fmul fast float %8395, %123
  %8422 = fmul fast float %8395, %124
  %8423 = fmul fast float %8395, %125
  %8424 = fadd fast float %8421, %203
  %8425 = fadd fast float %8422, %204
  %8426 = fadd fast float %8423, %205
  %8427 = fmul fast float %8424, %8398
  %8428 = call float @dx.op.tertiary.f32(i32 46, float %8425, float %8404, float %8427)  ; FMad(a,b,c)
  %8429 = call float @dx.op.tertiary.f32(i32 46, float %8426, float %8410, float %8428)  ; FMad(a,b,c)
  %8430 = fadd fast float %8429, %8416
  %8431 = fmul fast float %8424, %8399
  %8432 = call float @dx.op.tertiary.f32(i32 46, float %8425, float %8405, float %8431)  ; FMad(a,b,c)
  %8433 = call float @dx.op.tertiary.f32(i32 46, float %8426, float %8411, float %8432)  ; FMad(a,b,c)
  %8434 = fadd fast float %8433, %8417
  %8435 = fmul fast float %8424, %8400
  %8436 = call float @dx.op.tertiary.f32(i32 46, float %8425, float %8406, float %8435)  ; FMad(a,b,c)
  %8437 = call float @dx.op.tertiary.f32(i32 46, float %8426, float %8412, float %8436)  ; FMad(a,b,c)
  %8438 = fadd fast float %8437, %8418
  %8439 = fmul fast float %8424, %8401
  %8440 = call float @dx.op.tertiary.f32(i32 46, float %8425, float %8407, float %8439)  ; FMad(a,b,c)
  %8441 = call float @dx.op.tertiary.f32(i32 46, float %8426, float %8413, float %8440)  ; FMad(a,b,c)
  %8442 = fadd fast float %8441, %8419
  %8443 = fdiv fast float %8430, %8442
  %8444 = fdiv fast float %8434, %8442
  %8445 = fdiv fast float %8438, %8442
  %8446 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8445)  ; FMax(a,b)
  %8447 = fmul fast float %286, 0x401921FB60000000
  %8448 = call float @dx.op.unary.f32(i32 13, float %8447)  ; Sin(value)
  %8449 = call float @dx.op.unary.f32(i32 12, float %8447)  ; Cos(value)
  %8450 = fmul fast float %8449, %8394
  %8451 = call float @dx.op.tertiary.f32(i32 46, float %8448, float %8394, float 0.000000e+00)  ; FMad(a,b,c)
  %8452 = fmul fast float %8394, %8448
  %8453 = fsub fast float -0.000000e+00, %8452
  %8454 = call float @dx.op.tertiary.f32(i32 46, float %8449, float %8394, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8455

; <label>:8455                                    ; preds = %8455, %8380
  %8456 = phi float [ 0.000000e+00, %8380 ], [ %8488, %8455 ]
  %8457 = phi float [ 0.000000e+00, %8380 ], [ %8490, %8455 ]
  %8458 = phi i32 [ 0, %8380 ], [ %8491, %8455 ]
  %8459 = mul i32 %8458, 2
  %8460 = add i32 0, %8459
  %8461 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8460
  %8462 = load float, float* %8461, align 4
  %8463 = mul i32 %8458, 2
  %8464 = add i32 1, %8463
  %8465 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8464
  %8466 = load float, float* %8465, align 4
  %8467 = fmul fast float %8450, %8462
  %8468 = call float @dx.op.tertiary.f32(i32 46, float %8466, float %8453, float %8467)  ; FMad(a,b,c)
  %8469 = fmul fast float %8462, %8451
  %8470 = call float @dx.op.tertiary.f32(i32 46, float %8466, float %8454, float %8469)  ; FMad(a,b,c)
  %8471 = fadd fast float %8468, %8443
  %8472 = fadd fast float %8470, %8444
  %8473 = fmul fast float %8471, %8389
  %8474 = fmul fast float %8472, %8389
  %8475 = call float @dx.op.binary.f32(i32 35, float %8473, float %8385)  ; FMax(a,b)
  %8476 = call float @dx.op.binary.f32(i32 35, float %8474, float %8385)  ; FMax(a,b)
  %8477 = call float @dx.op.binary.f32(i32 36, float %8475, float %8386)  ; FMin(a,b)
  %8478 = call float @dx.op.binary.f32(i32 36, float %8476, float %8386)  ; FMin(a,b)
  %8479 = fadd fast float %8477, %8383
  %8480 = fadd fast float %8478, %8384
  %8481 = uitofp i32 %8420 to float
  %8482 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %8479, float %8480, float %8481, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8483 = extractvalue %dx.types.ResRet.f32 %8482, 0
  %8484 = fsub fast float %8483, %8446
  %8485 = fsub fast float %8484, %8393
  %8486 = fcmp fast ogt float %8485, 0.000000e+00
  %8487 = select i1 %8486, float 1.000000e+00, float 0.000000e+00
  %8488 = fadd fast float %8487, %8456
  %8489 = select i1 %8486, float %8485, float 0.000000e+00
  %8490 = fadd fast float %8489, %8457
  %8491 = add nuw nsw i32 %8458, 1
  %8492 = icmp eq i32 %8491, 8
  br i1 %8492, label %8493, label %8455

; <label>:8493                                    ; preds = %8455
  %8494 = fdiv fast float 1.000000e+00, %8488
  %8495 = fmul fast float %8494, %8490
  %8496 = fdiv fast float 1.000000e+00, %8446
  %8497 = fmul fast float %8495, %8496
  %8498 = call float @dx.op.unary.f32(i32 7, float %8497)  ; Saturate(value)
  %8499 = call float @dx.op.binary.f32(i32 35, float %8498, float 0.000000e+00)  ; FMax(a,b)
  %8500 = fmul fast float %8488, 1.250000e-01
  %8501 = call float @dx.op.unary.f32(i32 7, float %8500)  ; Saturate(value)
  %8502 = fmul fast float %8501, 2.000000e+00
  %8503 = fadd fast float %8502, -1.000000e+00
  %8504 = fcmp fast ogt float %8503, 0.000000e+00
  %8505 = fcmp fast olt float %8503, 0.000000e+00
  %8506 = zext i1 %8504 to i32
  %8507 = zext i1 %8505 to i32
  %8508 = sub nsw i32 %8506, %8507
  %8509 = sitofp i32 %8508 to float
  %8510 = fmul fast float %8509, %8503
  %8511 = fsub fast float 1.000000e+00, %8510
  %8512 = fmul fast float %8511, %8511
  %8513 = fmul fast float %8512, %8511
  %8514 = fsub fast float %8511, %8513
  %8515 = fmul fast float %8514, %8499
  %8516 = fsub fast float 1.000000e+00, %8513
  %8517 = fsub fast float %8516, %8515
  %8518 = fmul fast float %8509, 5.000000e-01
  %8519 = fmul fast float %8518, %8517
  %8520 = fsub fast float -5.000000e-01, %8519
  %8521 = fmul fast float %8520, %8354
  %8522 = fadd fast float %8521, 1.000000e+00
  %8523 = fmul fast float %8522, %8366
  br label %8524

; <label>:8524                                    ; preds = %8493, %8378
  %8525 = phi float [ %8523, %8493 ], [ %8366, %8378 ]
  %8526 = call float @dx.op.binary.f32(i32 36, float %8525, float %8525)  ; FMin(a,b)
  %8527 = call float @dx.op.binary.f32(i32 36, float %8525, float %8526)  ; FMin(a,b)
  %8528 = fcmp fast ogt float %8527, 0.000000e+00
  br i1 %8528, label %8529, label %8370, !dx.controlflow.hints !139

; <label>:8529                                    ; preds = %8524
  %8530 = fmul fast float %8525, %8288
  %8531 = fmul fast float %8525, %8289
  %8532 = fmul fast float %8525, %8290
  %8533 = fsub fast float %8272, %4871
  %8534 = fcmp fast ogt float %8533, 0.000000e+00
  %8535 = fsub fast float %205, %4871
  %8536 = fcmp fast ogt float %8535, 0.000000e+00
  %8537 = xor i1 %8536, %8534
  %8538 = fsub fast float %4871, %8272
  %8539 = fmul fast float %8538, 2.000000e+00
  %8540 = fadd fast float %8539, %8272
  %8541 = select i1 %8537, float %8272, float %8540
  %8542 = fsub fast float %8541, %205
  %8543 = call float @dx.op.dot3.f32(i32 55, float %8298, float %8299, float %8542, float %8298, float %8299, float %8542)  ; Dot3(ax,ay,az,bx,by,bz)
  %8544 = call float @dx.op.unary.f32(i32 25, float %8543)  ; Rsqrt(value)
  %8545 = fmul fast float %8544, %8298
  %8546 = fmul fast float %8544, %8299
  %8547 = fmul fast float %8544, %8542
  %8548 = fsub fast float %4871, %205
  %8549 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8548)  ; Dot3(ax,ay,az,bx,by,bz)
  %8550 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8545, float %8546, float %8547)  ; Dot3(ax,ay,az,bx,by,bz)
  %8551 = fdiv fast float 1.000000e+00, %8550
  %8552 = fmul fast float %8551, %8549
  %8553 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8535, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8554 = fcmp fast ogt float %8553, 0.000000e+00
  %8555 = fcmp fast olt float %8553, 0.000000e+00
  %8556 = zext i1 %8554 to i32
  %8557 = zext i1 %8555 to i32
  %8558 = sub nsw i32 %8556, %8557
  %8559 = sitofp i32 %8558 to float
  %8560 = fsub fast float %8541, %4871
  %8561 = call float @dx.op.dot3.f32(i32 55, float %8298, float %8299, float %8560, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8562 = fcmp fast ogt float %8561, 0.000000e+00
  %8563 = fcmp fast olt float %8561, 0.000000e+00
  %8564 = zext i1 %8562 to i32
  %8565 = zext i1 %8563 to i32
  %8566 = sub nsw i32 %8564, %8565
  %8567 = sitofp i32 %8566 to float
  %8568 = fcmp fast une float %8559, %8567
  br i1 %8568, label %8569, label %8579

; <label>:8569                                    ; preds = %8529
  %8570 = fmul fast float %8552, %8547
  %8571 = fmul fast float %8552, %8546
  %8572 = fmul fast float %8552, %8545
  %8573 = fmul fast float %8572, %8572
  %8574 = fmul fast float %8571, %8571
  %8575 = fadd fast float %8573, %8574
  %8576 = fmul fast float %8570, %8570
  %8577 = fadd fast float %8575, %8576
  %8578 = call float @dx.op.unary.f32(i32 24, float %8577)  ; Sqrt(value)
  br label %8591

; <label>:8579                                    ; preds = %8529
  %8580 = icmp slt i32 %8558, 0
  br i1 %8580, label %8581, label %8591

; <label>:8581                                    ; preds = %8579
  %8582 = fsub fast float %203, %8270
  %8583 = fsub fast float %204, %8271
  %8584 = fsub fast float %205, %8541
  %8585 = fmul fast float %8582, %8582
  %8586 = fmul fast float %8583, %8583
  %8587 = fadd fast float %8585, %8586
  %8588 = fmul fast float %8584, %8584
  %8589 = fadd fast float %8587, %8588
  %8590 = call float @dx.op.unary.f32(i32 24, float %8589)  ; Sqrt(value)
  br label %8591

; <label>:8591                                    ; preds = %8581, %8579, %8569
  %8592 = phi float [ %8578, %8569 ], [ %8590, %8581 ], [ 0.000000e+00, %8579 ]
  %8593 = and i1 %8536, %8534
  %8594 = fsub fast float -0.000000e+00, %8592
  %8595 = select i1 %8593, float -0.000000e+00, float %8594
  %8596 = fmul fast float %4868, 0x3FF7154760000000
  %8597 = fmul fast float %8596, %8595
  %8598 = fmul fast float %4869, 0x3FF7154760000000
  %8599 = fmul fast float %8598, %8595
  %8600 = fmul fast float %4870, 0x3FF7154760000000
  %8601 = fmul fast float %8600, %8595
  %8602 = call float @dx.op.unary.f32(i32 21, float %8597)  ; Exp(value)
  %8603 = call float @dx.op.unary.f32(i32 21, float %8599)  ; Exp(value)
  %8604 = call float @dx.op.unary.f32(i32 21, float %8601)  ; Exp(value)
  %8605 = call float @dx.op.unary.f32(i32 7, float %8602)  ; Saturate(value)
  %8606 = call float @dx.op.unary.f32(i32 7, float %8603)  ; Saturate(value)
  %8607 = call float @dx.op.unary.f32(i32 7, float %8604)  ; Saturate(value)
  %8608 = fmul fast float %8530, %8605
  %8609 = fmul fast float %8531, %8606
  %8610 = fmul fast float %8532, %8607
  %8611 = fsub fast float %8304, %5660
  %8612 = fsub fast float %8305, %5659
  %8613 = fsub fast float %8306, %5658
  %8614 = call float @dx.op.dot3.f32(i32 55, float %8611, float %8612, float %8613, float %8611, float %8612, float %8613)  ; Dot3(ax,ay,az,bx,by,bz)
  %8615 = call float @dx.op.unary.f32(i32 25, float %8614)  ; Rsqrt(value)
  %8616 = fmul fast float %8615, %8611
  %8617 = fmul fast float %8615, %8612
  %8618 = fmul fast float %8615, %8613
  %8619 = call float @dx.op.dot3.f32(i32 55, float %8304, float %8305, float %8306, float %5664, float %5665, float %5666)  ; Dot3(ax,ay,az,bx,by,bz)
  %8620 = call float @dx.op.dot3.f32(i32 55, float %5657, float %5656, float %5655, float %8616, float %8617, float %8618)  ; Dot3(ax,ay,az,bx,by,bz)
  %8621 = call float @dx.op.unary.f32(i32 7, float %8619)  ; Saturate(value)
  %8622 = fmul fast float %8621, %8311
  %8623 = bitcast i32 %5699 to float
  %8624 = fmul fast float %8621, %8621
  %8625 = fmul fast float %8624, %8623
  %8626 = call float @dx.op.unary.f32(i32 7, float %8625)  ; Saturate(value)
  %8627 = fmul fast float %8622, %8626
  %8628 = bitcast float %8301 to i32
  %8629 = ashr i32 %8628, 1
  %8630 = sub nsw i32 1597463007, %8629
  %8631 = bitcast i32 %8630 to float
  %8632 = fmul fast float %8631, %8298
  %8633 = fmul fast float %8631, %8299
  %8634 = fmul fast float %8631, %8300
  %8635 = fsub fast float %8632, %5660
  %8636 = fsub fast float %8633, %5659
  %8637 = fsub fast float %8634, %5658
  %8638 = call float @dx.op.dot3.f32(i32 55, float %8635, float %8636, float %8637, float %8635, float %8636, float %8637)  ; Dot3(ax,ay,az,bx,by,bz)
  %8639 = call float @dx.op.unary.f32(i32 25, float %8638)  ; Rsqrt(value)
  %8640 = fmul fast float %8635, %8639
  %8641 = fmul fast float %8636, %8639
  %8642 = fmul fast float %8637, %8639
  %8643 = call float @dx.op.dot3.f32(i32 55, float %5664, float %5665, float %5666, float %8640, float %8641, float %8642)  ; Dot3(ax,ay,az,bx,by,bz)
  %8644 = fmul fast float %8643, %8643
  %8645 = call float @dx.op.unary.f32(i32 6, float %8619)  ; FAbs(value)
  %8646 = fsub fast float 1.000000e+00, %5693
  %8647 = fmul fast float %5675, %5675
  %8648 = fmul fast float %8647, %8646
  %8649 = fadd fast float %8648, %5693
  %8650 = bitcast float %8649 to i32
  %8651 = ashr i32 %8650, 1
  %8652 = add nsw i32 %8651, 532487669
  %8653 = bitcast i32 %8652 to float
  %8654 = fadd fast float %8653, %5675
  %8655 = fmul fast float %5693, %8644
  %8656 = fsub fast float 1.000000e+00, %8644
  %8657 = fadd fast float %8656, %8655
  %8658 = fmul fast float %8645, %8645
  %8659 = fmul fast float %8658, %8646
  %8660 = fadd fast float %8659, %5693
  %8661 = bitcast float %8660 to i32
  %8662 = ashr i32 %8661, 1
  %8663 = add nsw i32 %8662, 532487669
  %8664 = bitcast i32 %8663 to float
  %8665 = fadd fast float %8664, %8645
  %8666 = fmul fast float %8657, %8657
  %8667 = fmul fast float %8666, %8654
  %8668 = fmul fast float %8667, %8665
  %8669 = fdiv fast float 1.000000e+00, %8668
  %8670 = bitcast float %5693 to i32
  %8671 = sitofp i32 %8670 to float
  %8672 = fmul fast float %8671, 0x3FE7F73180000000
  %8673 = fadd fast float %8672, 0x41AFE27C40000000
  %8674 = fptosi float %8673 to i32
  %8675 = bitcast i32 %8674 to float
  %8676 = fmul fast float %8267, 0x3FD80E9D60000000
  %8677 = fmul fast float %8676, %8631
  %8678 = fadd fast float %8675, %8677
  %8679 = bitcast float %8678 to i32
  %8680 = sub nsw i32 2129859010, %8679
  %8681 = bitcast i32 %8680 to float
  %8682 = fmul fast float %5693, %8669
  %8683 = fmul fast float %8682, %8675
  %8684 = fmul fast float %8683, %8681
  %8685 = fmul fast float %5799, 0x3FF9999980000000
  %8686 = fsub fast float 5.000000e+00, %8685
  %8687 = call float @dx.op.unary.f32(i32 6, float %8620)  ; FAbs(value)
  %8688 = fsub fast float 1.000000e+00, %8687
  %8689 = fmul fast float %5799, 0x41D9660740000000
  %8690 = fadd fast float %8689, 0xC1EFBF8940000000
  %8691 = bitcast float %8688 to i32
  %8692 = sitofp i32 %8691 to float
  %8693 = fmul fast float %8692, %8686
  %8694 = fadd fast float %8690, %8693
  %8695 = fptosi float %8694 to i32
  %8696 = bitcast i32 %8695 to float
  %8697 = fsub fast float 1.000000e+00, %5661
  %8698 = fsub fast float 1.000000e+00, %5662
  %8699 = fsub fast float 1.000000e+00, %5673
  %8700 = fmul fast float %8696, %8697
  %8701 = fmul fast float %8696, %8698
  %8702 = fmul fast float %8696, %8699
  %8703 = fadd fast float %8700, %5661
  %8704 = fadd fast float %8701, %5662
  %8705 = fadd fast float %8702, %5673
  br i1 %5822, label %8706, label %8729

; <label>:8706                                    ; preds = %8591
  %8707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4464, float %8687, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8708 = extractvalue %dx.types.ResRet.f32 %8707, 0
  %8709 = extractvalue %dx.types.ResRet.f32 %8707, 1
  %8710 = extractvalue %dx.types.ResRet.f32 %8707, 2
  %8711 = fadd fast float %8708, -5.000000e-01
  %8712 = fadd fast float %8709, -5.000000e-01
  %8713 = fadd fast float %8710, -5.000000e-01
  %8714 = fmul fast float %5661, 4.000000e+00
  %8715 = fmul fast float %8714, %8697
  %8716 = fmul fast float %8715, %8711
  %8717 = fmul fast float %5662, 4.000000e+00
  %8718 = fmul fast float %8717, %8698
  %8719 = fmul fast float %8718, %8712
  %8720 = fmul fast float %5673, 4.000000e+00
  %8721 = fmul fast float %8720, %8699
  %8722 = fmul fast float %8721, %8713
  %8723 = fadd fast float %8716, %8703
  %8724 = fadd fast float %8719, %8704
  %8725 = fadd fast float %8722, %8705
  %8726 = call float @dx.op.unary.f32(i32 7, float %8723)  ; Saturate(value)
  %8727 = call float @dx.op.unary.f32(i32 7, float %8724)  ; Saturate(value)
  %8728 = call float @dx.op.unary.f32(i32 7, float %8725)  ; Saturate(value)
  br label %8729

; <label>:8729                                    ; preds = %8706, %8591
  %8730 = phi float [ %8726, %8706 ], [ %8703, %8591 ]
  %8731 = phi float [ %8727, %8706 ], [ %8704, %8591 ]
  %8732 = phi float [ %8728, %8706 ], [ %8705, %8591 ]
  %8733 = fmul fast float %8619, 9.843750e-01
  %8734 = fadd fast float %8733, 7.812500e-03
  %8735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %8734, float %5803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8736 = extractvalue %dx.types.ResRet.f32 %8735, 0
  %8737 = extractvalue %dx.types.ResRet.f32 %8735, 1
  %8738 = extractvalue %dx.types.ResRet.f32 %8735, 2
  %8739 = extractvalue %dx.types.ResRet.f32 %8735, 3
  %8740 = fsub fast float %8738, %8736
  %8741 = fsub fast float %8739, %8737
  %8742 = fmul fast float %8740, %5809
  %8743 = fmul fast float %8741, %5809
  %8744 = fadd fast float %8742, %8736
  %8745 = fadd fast float %8743, %8737
  %8746 = fmul fast float %8744, %5661
  %8747 = fmul fast float %8744, %5662
  %8748 = fmul fast float %8744, %5673
  %8749 = fadd fast float %8746, %8745
  %8750 = fadd fast float %8747, %8745
  %8751 = fadd fast float %8748, %8745
  br i1 %5822, label %8752, label %8775

; <label>:8752                                    ; preds = %8729
  %8753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4464, float %8619, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8754 = extractvalue %dx.types.ResRet.f32 %8753, 0
  %8755 = extractvalue %dx.types.ResRet.f32 %8753, 1
  %8756 = extractvalue %dx.types.ResRet.f32 %8753, 2
  %8757 = fadd fast float %8754, -5.000000e-01
  %8758 = fadd fast float %8755, -5.000000e-01
  %8759 = fadd fast float %8756, -5.000000e-01
  %8760 = fmul fast float %5661, 4.000000e+00
  %8761 = fmul fast float %8760, %8697
  %8762 = fmul fast float %8761, %8757
  %8763 = fmul fast float %5662, 4.000000e+00
  %8764 = fmul fast float %8763, %8698
  %8765 = fmul fast float %8764, %8758
  %8766 = fmul fast float %5673, 4.000000e+00
  %8767 = fmul fast float %8766, %8699
  %8768 = fmul fast float %8767, %8759
  %8769 = fadd fast float %8762, %8749
  %8770 = fadd fast float %8765, %8750
  %8771 = fadd fast float %8768, %8751
  %8772 = call float @dx.op.unary.f32(i32 7, float %8769)  ; Saturate(value)
  %8773 = call float @dx.op.unary.f32(i32 7, float %8770)  ; Saturate(value)
  %8774 = call float @dx.op.unary.f32(i32 7, float %8771)  ; Saturate(value)
  br label %8775

; <label>:8775                                    ; preds = %8752, %8729
  %8776 = phi float [ %8772, %8752 ], [ %8749, %8729 ]
  %8777 = phi float [ %8773, %8752 ], [ %8750, %8729 ]
  %8778 = phi float [ %8774, %8752 ], [ %8751, %8729 ]
  %8779 = call float @dx.op.binary.f32(i32 35, float %8777, float %8778)  ; FMax(a,b)
  %8780 = call float @dx.op.binary.f32(i32 35, float %8776, float %8779)  ; FMax(a,b)
  %8781 = fsub fast float 1.000000e+00, %8780
  %8782 = fmul fast float %8730, %8684
  %8783 = fmul fast float %8731, %8684
  %8784 = fmul fast float %8732, %8684
  %8785 = fsub fast float 1.000000e+00, %8620
  %8786 = bitcast float %8785 to i32
  %8787 = sitofp i32 %8786 to float
  %8788 = fmul fast float %8787, 5.000000e+00
  %8789 = fadd fast float %8788, 0xC1EFBF8940000000
  %8790 = fptosi float %8789 to i32
  %8791 = bitcast i32 %8790 to float
  %8792 = fmul fast float %8791, %4465
  %8793 = fmul fast float %8781, %8792
  %8794 = fmul fast float %8793, %6364
  %8795 = fmul fast float %8793, %6365
  %8796 = fmul fast float %8793, %6366
  %8797 = fadd fast float %8794, %8782
  %8798 = fadd fast float %8795, %8783
  %8799 = fadd fast float %8796, %8784
  %8800 = fmul fast float %8608, %4461
  %8801 = fmul fast float %8800, %8627
  %8802 = fmul fast float %8801, %8781
  %8803 = fmul fast float %8609, %4461
  %8804 = fmul fast float %8803, %8627
  %8805 = fmul fast float %8804, %8781
  %8806 = fmul fast float %8610, %4461
  %8807 = fmul fast float %8806, %8627
  %8808 = fmul fast float %8807, %8781
  %8809 = fadd fast float %8802, %8241
  %8810 = fadd fast float %8805, %8242
  %8811 = fadd fast float %8808, %8243
  %8812 = fmul fast float %8801, %8797
  %8813 = fmul fast float %8804, %8798
  %8814 = fmul fast float %8807, %8799
  %8815 = fadd fast float %8812, %8238
  %8816 = fadd fast float %8813, %8239
  %8817 = fadd fast float %8814, %8240
  br label %8370

; <label>:8818                                    ; preds = %8370
  br label %8819

; <label>:8819                                    ; preds = %8818, %8204
  %8820 = phi float [ %8206, %8204 ], [ %8371, %8818 ]
  %8821 = phi float [ %8207, %8204 ], [ %8372, %8818 ]
  %8822 = phi float [ %8208, %8204 ], [ %8373, %8818 ]
  %8823 = phi float [ %8209, %8204 ], [ %8374, %8818 ]
  %8824 = phi float [ %8210, %8204 ], [ %8375, %8818 ]
  %8825 = phi float [ %8211, %8204 ], [ %8376, %8818 ]
  %8826 = add i32 %8205, 1
  %8827 = icmp ugt i32 %8826, %8201
  br i1 %8827, label %8828, label %8204

; <label>:8828                                    ; preds = %8819
  br label %8829

; <label>:8829                                    ; preds = %8828, %8154, %8144
  %8830 = phi float [ %8145, %8144 ], [ %8145, %8154 ], [ %8820, %8828 ]
  %8831 = phi float [ %8146, %8144 ], [ %8146, %8154 ], [ %8821, %8828 ]
  %8832 = phi float [ %8147, %8144 ], [ %8147, %8154 ], [ %8822, %8828 ]
  %8833 = phi float [ %8148, %8144 ], [ %8148, %8154 ], [ %8823, %8828 ]
  %8834 = phi float [ %8149, %8144 ], [ %8149, %8154 ], [ %8824, %8828 ]
  %8835 = phi float [ %8150, %8144 ], [ %8150, %8154 ], [ %8825, %8828 ]
  %8836 = fmul fast float %4461, %4461
  %8837 = fmul fast float %8836, %6390
  %8838 = fsub fast float -0.000000e+00, %8837
  %8839 = fmul fast float %8836, %6391
  %8840 = fsub fast float -0.000000e+00, %8839
  %8841 = fmul fast float %8836, %6392
  %8842 = fsub fast float -0.000000e+00, %8841
  %8843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8844 = extractvalue %dx.types.CBufRet.f32 %8843, 0
  %8845 = fmul fast float %8844, %6396
  %8846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8847 = extractvalue %dx.types.CBufRet.f32 %8846, 3
  %8848 = fsub fast float 1.000000e+00, %4468
  %8849 = call float @dx.op.unary.f32(i32 7, float %8848)  ; Saturate(value)
  %8850 = fadd fast float %8835, %4467
  %8851 = fmul fast float %8850, %4468
  %8852 = fmul fast float %8849, %8847
  %8853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8854 = extractvalue %dx.types.CBufRet.f32 %8853, 3
  %8855 = fmul fast float %8833, %5667
  %8856 = fmul fast float %8834, %5668
  %8857 = fmul fast float %8835, %5669
  %8858 = fcmp fast ogt float %103, %238
  %8859 = and i1 %8858, %4874
  %8860 = or i1 %4880, %8859
  %8861 = icmp eq i32 %4873, 2
  %8862 = fcmp fast ole float %103, %238
  %8863 = and i1 %8862, %8861
  %8864 = or i1 %8863, %8860
  br i1 %8859, label %8865, label %9122

; <label>:8865                                    ; preds = %8829
  %8866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8867 = extractvalue %dx.types.CBufRet.f32 %8866, 2
  %8868 = extractvalue %dx.types.CBufRet.f32 %8866, 3
  %8869 = fmul fast float %8867, %116
  %8870 = fmul fast float %8868, %117
  %8871 = call float @dx.op.unary.f32(i32 7, float %8869)  ; Saturate(value)
  %8872 = call float @dx.op.unary.f32(i32 7, float %8870)  ; Saturate(value)
  %8873 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8871, float %8872, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8874 = extractvalue %dx.types.ResRet.f32 %8873, 0
  %8875 = extractvalue %dx.types.ResRet.f32 %8873, 1
  %8876 = extractvalue %dx.types.ResRet.f32 %8873, 2
  %8877 = extractvalue %dx.types.ResRet.f32 %8873, 3
  %8878 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8871, float %8872, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8879 = extractvalue %dx.types.ResRet.f32 %8878, 0
  %8880 = extractvalue %dx.types.ResRet.f32 %8878, 1
  %8881 = extractvalue %dx.types.ResRet.f32 %8878, 2
  %8882 = extractvalue %dx.types.ResRet.f32 %8878, 3
  %8883 = call float @dx.op.binary.f32(i32 35, float %8875, float %8876)  ; FMax(a,b)
  %8884 = call float @dx.op.binary.f32(i32 35, float %8874, float %8883)  ; FMax(a,b)
  %8885 = call float @dx.op.binary.f32(i32 35, float %8884, float %8877)  ; FMax(a,b)
  %8886 = call float @dx.op.binary.f32(i32 36, float %8880, float %8881)  ; FMin(a,b)
  %8887 = call float @dx.op.binary.f32(i32 36, float %8879, float %8886)  ; FMin(a,b)
  %8888 = call float @dx.op.binary.f32(i32 36, float %8887, float %8882)  ; FMin(a,b)
  %8889 = fmul fast float %8885, 2.550000e+02
  %8890 = fadd fast float %8889, 0x3F70101020000000
  %8891 = fptoui float %8890 to i32
  %8892 = fmul fast float %8888, 2.550000e+02
  %8893 = fadd fast float %8892, 0x3F70101020000000
  %8894 = fptoui float %8893 to i32
  %8895 = icmp ult i32 %8891, %8894
  br i1 %8895, label %8896, label %9064

; <label>:8896                                    ; preds = %8865
  %8897 = fcmp fast ogt float %102, 9.843750e-01
  %8898 = fadd fast float %103, -4.000000e+00
  %8899 = select i1 %8897, float -4.000000e+00, float %8898
  %8900 = call float @dx.op.binary.f32(i32 35, float %8899, float 0.000000e+00)  ; FMax(a,b)
  %8901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8902 = extractvalue %dx.types.CBufRet.f32 %8901, 0
  %8903 = fadd fast float %8902, %8900
  %8904 = extractvalue %dx.types.CBufRet.f32 %8901, 2
  %8905 = fmul fast float %8903, %8904
  %8906 = call float @dx.op.unary.f32(i32 23, float %8905)  ; Log(value)
  %8907 = extractvalue %dx.types.CBufRet.f32 %8901, 3
  %8908 = fmul fast float %8907, %8906
  %8909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8910 = extractvalue %dx.types.CBufRet.f32 %8909, 2
  %8911 = fmul fast float %8908, %8910
  %8912 = call float @dx.op.unary.f32(i32 7, float %8911)  ; Saturate(value)
  %8913 = uitofp i32 %8891 to float
  %8914 = uitofp i32 %8894 to float
  %8915 = fadd fast float %8913, 5.000000e-01
  %8916 = fadd fast float %8914, 5.000000e-01
  %8917 = fmul fast float %8910, %8915
  %8918 = fmul fast float %8910, %8916
  %8919 = fadd fast float %8917, 0x3F0FFB4800000000
  %8920 = fadd fast float %8918, 0xBF0FFB4800000000
  %8921 = call float @dx.op.binary.f32(i32 35, float %8912, float %8919)  ; FMax(a,b)
  %8922 = call float @dx.op.binary.f32(i32 36, float %8921, float %8920)  ; FMin(a,b)
  %8923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8924 = extractvalue %dx.types.CBufRet.f32 %8923, 1
  %8925 = extractvalue %dx.types.CBufRet.f32 %8923, 2
  %8926 = extractvalue %dx.types.CBufRet.f32 %8923, 0
  %8927 = fmul fast float %8924, %8922
  %8928 = fadd fast float %8926, %8927
  %8929 = fadd fast float %8926, %8925
  %8930 = fsub fast float %8924, %8925
  %8931 = fadd fast float %8930, %8926
  %8932 = call float @dx.op.binary.f32(i32 35, float %8928, float %8929)  ; FMax(a,b)
  %8933 = call float @dx.op.binary.f32(i32 36, float %8932, float %8931)  ; FMin(a,b)
  %8934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %8871, float %8872, float %8933, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8935 = extractvalue %dx.types.ResRet.f32 %8934, 0
  %8936 = extractvalue %dx.types.ResRet.f32 %8934, 1
  %8937 = extractvalue %dx.types.ResRet.f32 %8934, 2
  %8938 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8939 = extractvalue %dx.types.CBufRet.i32 %8938, 0
  %8940 = extractvalue %dx.types.CBufRet.i32 %8938, 1
  %8941 = uitofp i32 %8939 to float
  %8942 = uitofp i32 %8940 to float
  %8943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8944 = extractvalue %dx.types.CBufRet.f32 %8943, 0
  %8945 = extractvalue %dx.types.CBufRet.f32 %8943, 1
  %8946 = fmul fast float %8941, %8871
  %8947 = fmul fast float %8942, %8872
  %8948 = fadd fast float %8946, -5.000000e-01
  %8949 = fadd fast float %8947, -5.000000e-01
  %8950 = call float @dx.op.unary.f32(i32 22, float %8948)  ; Frc(value)
  %8951 = call float @dx.op.unary.f32(i32 22, float %8949)  ; Frc(value)
  %8952 = fmul fast float %8950, %8950
  %8953 = fmul fast float %8952, %8950
  %8954 = fsub fast float 3.000000e+00, %8950
  %8955 = fmul fast float %8952, %8954
  %8956 = fmul fast float %8950, 3.000000e+00
  %8957 = fmul fast float %8953, 3.000000e+00
  %8958 = fmul fast float %8952, 6.000000e+00
  %8959 = fsub fast float %8957, %8958
  %8960 = fadd fast float %8959, 4.000000e+00
  %8961 = fmul fast float %8960, 0x3FC5555560000000
  %8962 = fmul fast float %8953, -3.000000e+00
  %8963 = fadd fast float %8952, %8950
  %8964 = fmul fast float %8963, 3.000000e+00
  %8965 = fadd fast float %8962, 1.000000e+00
  %8966 = fadd fast float %8965, %8964
  %8967 = fmul fast float %8953, 0x3FC5555560000000
  %8968 = fmul fast float %8951, %8951
  %8969 = fmul fast float %8968, %8951
  %8970 = fsub fast float 3.000000e+00, %8951
  %8971 = fmul fast float %8968, %8970
  %8972 = fmul fast float %8951, 3.000000e+00
  %8973 = fmul fast float %8969, 3.000000e+00
  %8974 = fmul fast float %8968, 6.000000e+00
  %8975 = fsub fast float %8973, %8974
  %8976 = fadd fast float %8975, 4.000000e+00
  %8977 = fmul fast float %8976, 0x3FC5555560000000
  %8978 = fmul fast float %8969, -3.000000e+00
  %8979 = fadd fast float %8968, %8951
  %8980 = fmul fast float %8979, 3.000000e+00
  %8981 = fadd fast float %8978, 1.000000e+00
  %8982 = fadd fast float %8981, %8980
  %8983 = fmul fast float %8969, 0x3FC5555560000000
  %8984 = fadd fast float %8950, 1.000000e+00
  %8985 = fsub fast float 1.000000e+00, %8956
  %8986 = fadd fast float %8985, %8955
  %8987 = fadd fast float %8986, %8960
  %8988 = fmul fast float %8987, 0x3FC5555560000000
  %8989 = fdiv fast float %8961, %8988
  %8990 = fsub fast float %8984, %8989
  %8991 = fsub fast float 1.000000e+00, %8950
  %8992 = fadd fast float %8966, %8953
  %8993 = fmul fast float %8992, 0x3FC5555560000000
  %8994 = fdiv fast float %8967, %8993
  %8995 = fadd fast float %8991, %8994
  %8996 = fadd fast float %8951, 1.000000e+00
  %8997 = fsub fast float 1.000000e+00, %8972
  %8998 = fadd fast float %8997, %8971
  %8999 = fadd fast float %8998, %8976
  %9000 = fmul fast float %8999, 0x3FC5555560000000
  %9001 = fdiv fast float %8977, %9000
  %9002 = fsub fast float %8996, %9001
  %9003 = fsub fast float 1.000000e+00, %8951
  %9004 = fadd fast float %8982, %8969
  %9005 = fmul fast float %9004, 0x3FC5555560000000
  %9006 = fdiv fast float %8983, %9005
  %9007 = fadd fast float %9006, %9003
  %9008 = fmul fast float %8990, %8944
  %9009 = fsub fast float %8871, %9008
  %9010 = fmul fast float %8995, %8944
  %9011 = fadd fast float %9010, %8871
  %9012 = fmul fast float %9007, %8945
  %9013 = fadd fast float %9012, %8872
  %9014 = fmul fast float %9002, %8945
  %9015 = fsub fast float %8872, %9014
  %9016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9009, float %9015, float %8933, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9017 = extractvalue %dx.types.ResRet.f32 %9016, 0
  %9018 = extractvalue %dx.types.ResRet.f32 %9016, 1
  %9019 = extractvalue %dx.types.ResRet.f32 %9016, 2
  %9020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9011, float %9015, float %8933, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9021 = extractvalue %dx.types.ResRet.f32 %9020, 0
  %9022 = extractvalue %dx.types.ResRet.f32 %9020, 1
  %9023 = extractvalue %dx.types.ResRet.f32 %9020, 2
  %9024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9009, float %9013, float %8933, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9025 = extractvalue %dx.types.ResRet.f32 %9024, 0
  %9026 = extractvalue %dx.types.ResRet.f32 %9024, 1
  %9027 = extractvalue %dx.types.ResRet.f32 %9024, 2
  %9028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9011, float %9013, float %8933, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9029 = extractvalue %dx.types.ResRet.f32 %9028, 0
  %9030 = extractvalue %dx.types.ResRet.f32 %9028, 1
  %9031 = extractvalue %dx.types.ResRet.f32 %9028, 2
  %9032 = fsub fast float %9025, %9017
  %9033 = fsub fast float %9026, %9018
  %9034 = fsub fast float %9027, %9019
  %9035 = fmul fast float %9032, %9005
  %9036 = fmul fast float %9033, %9005
  %9037 = fmul fast float %9034, %9005
  %9038 = fadd fast float %9035, %9017
  %9039 = fadd fast float %9036, %9018
  %9040 = fadd fast float %9037, %9019
  %9041 = fsub fast float %9029, %9021
  %9042 = fsub fast float %9030, %9022
  %9043 = fsub fast float %9031, %9023
  %9044 = fmul fast float %9041, %9005
  %9045 = fmul fast float %9042, %9005
  %9046 = fmul fast float %9043, %9005
  %9047 = fsub fast float %9021, %9038
  %9048 = fadd fast float %9047, %9044
  %9049 = fsub fast float %9022, %9039
  %9050 = fadd fast float %9049, %9045
  %9051 = fsub fast float %9023, %9040
  %9052 = fadd fast float %9051, %9046
  %9053 = fmul fast float %9048, %8993
  %9054 = fmul fast float %9050, %8993
  %9055 = fmul fast float %9052, %8993
  %9056 = fadd fast float %9053, %9038
  %9057 = fadd fast float %9054, %9039
  %9058 = fadd fast float %9055, %9040
  %9059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9060 = extractvalue %dx.types.CBufRet.f32 %9059, 1
  %9061 = fmul fast float %9056, %9060
  %9062 = fmul fast float %9057, %9060
  %9063 = fmul fast float %9058, %9060
  br label %9064

; <label>:9064                                    ; preds = %8896, %8865
  %9065 = phi float [ %8935, %8896 ], [ 1.000000e+00, %8865 ]
  %9066 = phi float [ %8936, %8896 ], [ 1.000000e+00, %8865 ]
  %9067 = phi float [ %8937, %8896 ], [ 1.000000e+00, %8865 ]
  %9068 = phi float [ %9061, %8896 ], [ 0.000000e+00, %8865 ]
  %9069 = phi float [ %9062, %8896 ], [ 0.000000e+00, %8865 ]
  %9070 = phi float [ %9063, %8896 ], [ 0.000000e+00, %8865 ]
  %9071 = fmul fast float %9068, %8838
  %9072 = fmul fast float %9069, %8840
  %9073 = fmul fast float %9070, %8842
  %9074 = call float @dx.op.dot3.f32(i32 55, float %9065, float %9066, float %9067, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9075 = call float @dx.op.dot3.f32(i32 55, float %9071, float %9072, float %9073, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9076 = select i1 %275, float %9074, float %9065
  %9077 = select i1 %275, float %9074, float %9066
  %9078 = select i1 %275, float 1.000000e+00, float %9067
  %9079 = select i1 %275, float %9075, float %9071
  %9080 = select i1 %275, float 0.000000e+00, float %9072
  %9081 = select i1 %275, float 0.000000e+00, float %9073
  %9082 = fmul fast float %9076, %8855
  %9083 = fmul fast float %9077, %8856
  %9084 = fmul fast float %9078, %8857
  %9085 = fadd fast float %9082, %9079
  %9086 = fadd fast float %9083, %9080
  %9087 = fadd fast float %9081, %9084
  %9088 = fmul fast float %9076, %8830
  %9089 = fmul fast float %9077, %8831
  %9090 = fmul fast float %9078, %8832
  %9091 = fmul fast float %152, %8867
  %9092 = fmul fast float %154, %8868
  %9093 = fsub fast float 1.000000e+00, %9091
  %9094 = fsub fast float 1.000000e+00, %9092
  %9095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9096 = extractvalue %dx.types.CBufRet.f32 %9095, 0
  %9097 = extractvalue %dx.types.CBufRet.f32 %9095, 1
  %9098 = extractvalue %dx.types.CBufRet.f32 %9095, 2
  %9099 = fmul fast float %9093, %9096
  %9100 = fmul fast float %9093, %9097
  %9101 = fmul fast float %9093, %9098
  %9102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9103 = extractvalue %dx.types.CBufRet.f32 %9102, 0
  %9104 = extractvalue %dx.types.CBufRet.f32 %9102, 1
  %9105 = extractvalue %dx.types.CBufRet.f32 %9102, 2
  %9106 = fmul fast float %9094, %9103
  %9107 = fmul fast float %9094, %9104
  %9108 = fmul fast float %9094, %9105
  %9109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9110 = extractvalue %dx.types.CBufRet.f32 %9109, 0
  %9111 = extractvalue %dx.types.CBufRet.f32 %9109, 1
  %9112 = extractvalue %dx.types.CBufRet.f32 %9109, 2
  %9113 = fadd fast float %9106, %9110
  %9114 = fadd fast float %9113, %9099
  %9115 = fadd fast float %9107, %9111
  %9116 = fadd fast float %9115, %9100
  %9117 = fadd fast float %9108, %9112
  %9118 = fadd fast float %9117, %9101
  %9119 = fmul fast float %9114, %238
  %9120 = fmul fast float %9116, %238
  %9121 = fmul fast float %9118, %238
  br label %9122

; <label>:9122                                    ; preds = %9064, %8829
  %9123 = phi float [ %9119, %9064 ], [ %203, %8829 ]
  %9124 = phi float [ %9120, %9064 ], [ %204, %8829 ]
  %9125 = phi float [ %9121, %9064 ], [ %205, %8829 ]
  %9126 = phi float [ %238, %9064 ], [ %103, %8829 ]
  %9127 = phi float [ %9085, %9064 ], [ %8855, %8829 ]
  %9128 = phi float [ %9086, %9064 ], [ %8856, %8829 ]
  %9129 = phi float [ %9087, %9064 ], [ %8857, %8829 ]
  %9130 = phi float [ %9088, %9064 ], [ %8830, %8829 ]
  %9131 = phi float [ %9089, %9064 ], [ %8831, %8829 ]
  %9132 = phi float [ %9090, %9064 ], [ %8832, %8829 ]
  %9133 = phi float [ %9065, %9064 ], [ 1.000000e+00, %8829 ]
  br i1 %8864, label %10288, label %9134

; <label>:9134                                    ; preds = %9122
  %9135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9136 = extractvalue %dx.types.CBufRet.f32 %9135, 0
  %9137 = extractvalue %dx.types.CBufRet.f32 %9135, 1
  %9138 = extractvalue %dx.types.CBufRet.f32 %9135, 2
  %9139 = extractvalue %dx.types.CBufRet.f32 %9135, 3
  %9140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9141 = extractvalue %dx.types.CBufRet.f32 %9140, 0
  %9142 = extractvalue %dx.types.CBufRet.f32 %9140, 1
  %9143 = extractvalue %dx.types.CBufRet.f32 %9140, 2
  %9144 = extractvalue %dx.types.CBufRet.f32 %9140, 3
  %9145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9146 = extractvalue %dx.types.CBufRet.f32 %9145, 0
  %9147 = extractvalue %dx.types.CBufRet.f32 %9145, 1
  %9148 = extractvalue %dx.types.CBufRet.f32 %9145, 2
  %9149 = extractvalue %dx.types.CBufRet.f32 %9145, 3
  %9150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9151 = extractvalue %dx.types.CBufRet.f32 %9150, 0
  %9152 = extractvalue %dx.types.CBufRet.f32 %9150, 1
  %9153 = extractvalue %dx.types.CBufRet.f32 %9150, 2
  %9154 = extractvalue %dx.types.CBufRet.f32 %9150, 3
  %9155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9156 = extractvalue %dx.types.CBufRet.f32 %9155, 3
  %9157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9158 = extractvalue %dx.types.CBufRet.f32 %9157, 3
  %9159 = extractvalue %dx.types.CBufRet.f32 %9157, 0
  %9160 = extractvalue %dx.types.CBufRet.f32 %9157, 1
  %9161 = extractvalue %dx.types.CBufRet.f32 %9157, 2
  %9162 = fcmp fast olt float %9161, -5.000000e-01
  %9163 = call float @dx.op.dot3.f32(i32 55, float %9123, float %9124, float %9125, float %9123, float %9124, float %9125)  ; Dot3(ax,ay,az,bx,by,bz)
  %9164 = call float @dx.op.unary.f32(i32 25, float %9163)  ; Rsqrt(value)
  %9165 = fmul fast float %9164, %9163
  %9166 = fmul fast float %9164, %9123
  %9167 = fmul fast float %9164, %9124
  %9168 = fmul fast float %9164, %9125
  %9169 = fadd fast float %9165, %9139
  %9170 = call float @dx.op.dot3.f32(i32 55, float %9166, float %9167, float %9168, float %9136, float %9137, float %9138)  ; Dot3(ax,ay,az,bx,by,bz)
  %9171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9172 = extractvalue %dx.types.CBufRet.i32 %9171, 1
  %9173 = and i32 %9172, 1
  %9174 = icmp ne i32 %9173, 0
  %9175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9176 = extractvalue %dx.types.CBufRet.f32 %9175, 2
  %9177 = fcmp fast ogt float %9176, 0.000000e+00
  %9178 = and i1 %9174, %9177
  br i1 %9178, label %9179, label %9585, !dx.controlflow.hints !140

; <label>:9179                                    ; preds = %9134
  %9180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9181 = extractvalue %dx.types.CBufRet.f32 %9180, 3
  %9182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9183 = extractvalue %dx.types.CBufRet.f32 %9182, 2
  %9184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9185 = extractvalue %dx.types.CBufRet.f32 %9184, 2
  %9186 = fsub fast float %9183, %9185
  %9187 = and i32 %9172, 2
  %9188 = extractvalue %dx.types.CBufRet.i32 %9171, 0
  %9189 = call i32 @dx.op.binary.i32(i32 40, i32 %9188, i32 3)  ; UMin(a,b)
  %9190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9191 = extractvalue %dx.types.CBufRet.f32 %9190, 0
  %9192 = extractvalue %dx.types.CBufRet.f32 %9190, 1
  %9193 = extractvalue %dx.types.CBufRet.f32 %9184, 0
  %9194 = extractvalue %dx.types.CBufRet.f32 %9184, 1
  %9195 = fsub fast float %9191, %9193
  %9196 = fsub fast float %9192, %9194
  %9197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9198 = extractvalue %dx.types.CBufRet.f32 %9197, 0
  %9199 = fcmp fast ogt float %9198, 0.000000e+00
  %9200 = fsub fast float -0.000000e+00, %9195
  %9201 = fsub fast float -0.000000e+00, %9196
  %9202 = call float @dx.op.dot2.f32(i32 54, float %9166, float %9167, float %9166, float %9167)  ; Dot2(ax,ay,bx,by)
  %9203 = call float @dx.op.dot2.f32(i32 54, float %9166, float %9167, float %9200, float %9201)  ; Dot2(ax,ay,bx,by)
  %9204 = fmul fast float %9203, 2.000000e+00
  %9205 = call float @dx.op.dot2.f32(i32 54, float %9200, float %9201, float %9200, float %9201)  ; Dot2(ax,ay,bx,by)
  %9206 = fmul fast float %9198, %9198
  %9207 = fsub fast float %9205, %9206
  %9208 = fmul fast float %9204, %9204
  %9209 = fmul fast float %9202, 4.000000e+00
  %9210 = fmul fast float %9209, %9207
  %9211 = fsub fast float %9208, %9210
  %9212 = fcmp fast ogt float %9211, 0.000000e+00
  br i1 %9212, label %9213, label %9228

; <label>:9213                                    ; preds = %9179
  %9214 = fcmp fast ogt float %9204, 0.000000e+00
  %9215 = call float @dx.op.unary.f32(i32 24, float %9211)  ; Sqrt(value)
  %9216 = fsub fast float -0.000000e+00, %9215
  %9217 = select i1 %9214, float %9215, float %9216
  %9218 = fadd fast float %9217, %9204
  %9219 = fmul float %9218, -5.000000e-01
  %9220 = fdiv fast float %9219, %9202
  %9221 = call float @dx.op.binary.f32(i32 35, float %9220, float 0.000000e+00)  ; FMax(a,b)
  %9222 = call float @dx.op.binary.f32(i32 36, float %9165, float %9221)  ; FMin(a,b)
  %9223 = fdiv fast float %9207, %9219
  %9224 = call float @dx.op.binary.f32(i32 35, float %9223, float 0.000000e+00)  ; FMax(a,b)
  %9225 = call float @dx.op.binary.f32(i32 36, float %9165, float %9224)  ; FMin(a,b)
  %9226 = call float @dx.op.binary.f32(i32 36, float %9222, float %9225)  ; FMin(a,b)
  %9227 = call float @dx.op.binary.f32(i32 35, float %9222, float %9225)  ; FMax(a,b)
  br label %9228

; <label>:9228                                    ; preds = %9213, %9179
  %9229 = phi float [ %9227, %9213 ], [ -1.000000e+00, %9179 ]
  %9230 = phi float [ %9226, %9213 ], [ -1.000000e+00, %9179 ]
  %9231 = phi i1 [ true, %9213 ], [ false, %9179 ]
  %9232 = and i1 %9199, %9231
  br i1 %9232, label %9233, label %9235

; <label>:9233                                    ; preds = %9228
  %9234 = fcmp fast oeq float %9230, %9229
  br i1 %9234, label %9538, label %9236

; <label>:9235                                    ; preds = %9228
  br i1 %9199, label %9538, label %9236

; <label>:9236                                    ; preds = %9235, %9233
  %9237 = phi float [ %9165, %9235 ], [ %9229, %9233 ]
  %9238 = phi float [ 0.000000e+00, %9235 ], [ %9230, %9233 ]
  %9239 = icmp ne i32 %9187, 0
  %9240 = fmul fast float %9237, %9168
  %9241 = fadd fast float %9240, %9181
  %9242 = fmul fast float %9241, %9237
  %9243 = select i1 %9239, float 0.000000e+00, float %9242
  %9244 = fcmp fast oeq float %9168, 0.000000e+00
  %9245 = fdiv fast float %9186, %9168
  %9246 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9245)  ; FMax(a,b)
  %9247 = select i1 %9244, float %9237, float %9246
  %9248 = call float @dx.op.binary.f32(i32 36, float %9237, float %9247)  ; FMin(a,b)
  %9249 = fcmp fast ogt float %9168, 0.000000e+00
  %9250 = fcmp fast olt float %9186, 0.000000e+00
  br i1 %9249, label %9251, label %9308

; <label>:9251                                    ; preds = %9236
  %9252 = icmp eq i32 %9187, 0
  br i1 %9250, label %9253, label %9297

; <label>:9253                                    ; preds = %9251
  %9254 = select i1 %9252, float %9237, float 0.000000e+00
  %9255 = fsub fast float -0.000000e+00, %9254
  %9256 = call float @dx.op.unary.f32(i32 6, float %9255)  ; FAbs(value)
  %9257 = fmul fast float %9254, %9168
  %9258 = fadd fast float %9257, %9181
  %9259 = fmul fast float %9256, %9258
  %9260 = fsub fast float %9243, %9259
  %9261 = fsub fast float %9237, %9256
  %9262 = select i1 %9252, float %9261, float 0.000000e+00
  %9263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9264 = extractvalue %dx.types.CBufRet.f32 %9263, 0
  %9265 = extractvalue %dx.types.CBufRet.f32 %9263, 1
  %9266 = extractvalue %dx.types.CBufRet.f32 %9263, 2
  %9267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9268 = extractvalue %dx.types.CBufRet.f32 %9267, 0
  %9269 = extractvalue %dx.types.CBufRet.f32 %9267, 1
  %9270 = extractvalue %dx.types.CBufRet.f32 %9267, 2
  %9271 = extractvalue %dx.types.CBufRet.f32 %9267, 3
  %9272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9273 = extractvalue %dx.types.CBufRet.f32 %9272, 3
  %9274 = call float @dx.op.binary.f32(i32 36, float %9260, float %9273)  ; FMin(a,b)
  %9275 = fmul fast float %9271, %9262
  %9276 = call float @dx.op.unary.f32(i32 7, float %9275)  ; Saturate(value)
  %9277 = fsub fast float %9268, %9264
  %9278 = fsub fast float %9269, %9265
  %9279 = fsub fast float %9270, %9266
  %9280 = fmul fast float %9276, %9277
  %9281 = fmul fast float %9276, %9278
  %9282 = fmul fast float %9276, %9279
  %9283 = fadd fast float %9280, %9264
  %9284 = fadd fast float %9281, %9265
  %9285 = fadd fast float %9282, %9266
  %9286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9287 = extractvalue %dx.types.CBufRet.f32 %9286, 0
  %9288 = extractvalue %dx.types.CBufRet.f32 %9286, 1
  %9289 = fadd fast float %9288, %9287
  %9290 = call float @dx.op.unary.f32(i32 7, float %9289)  ; Saturate(value)
  %9291 = extractvalue %dx.types.CBufRet.f32 %9286, 2
  %9292 = extractvalue %dx.types.CBufRet.f32 %9286, 3
  %9293 = fadd fast float %9292, %9291
  %9294 = call float @dx.op.unary.f32(i32 7, float %9293)  ; Saturate(value)
  %9295 = fmul fast float %9290, %9274
  %9296 = fmul fast float %9295, %9294
  br label %9538

; <label>:9297                                    ; preds = %9251
  br i1 %9252, label %9298, label %9319

; <label>:9298                                    ; preds = %9297
  %9299 = call float @dx.op.binary.f32(i32 36, float %9248, float %9238)  ; FMin(a,b)
  %9300 = fsub fast float %9248, %9299
  %9301 = fsub fast float %9300, %9237
  %9302 = call float @dx.op.unary.f32(i32 6, float %9301)  ; FAbs(value)
  %9303 = fadd fast float %9300, %9237
  %9304 = fmul fast float %9303, %9168
  %9305 = fadd fast float %9304, %9181
  %9306 = fmul fast float %9305, %9302
  %9307 = fsub fast float %9243, %9306
  br label %9319

; <label>:9308                                    ; preds = %9236
  br i1 %9250, label %9309, label %9319

; <label>:9309                                    ; preds = %9308
  %9310 = call float @dx.op.binary.f32(i32 35, float %9238, float %9248)  ; FMax(a,b)
  %9311 = icmp eq i32 %9187, 0
  %9312 = select i1 %9311, float %9248, float 0.000000e+00
  %9313 = fsub fast float -0.000000e+00, %9312
  %9314 = call float @dx.op.unary.f32(i32 6, float %9313)  ; FAbs(value)
  %9315 = fmul fast float %9312, %9168
  %9316 = fadd fast float %9315, %9181
  %9317 = fmul fast float %9314, %9316
  %9318 = fsub fast float %9243, %9317
  br label %9319

; <label>:9319                                    ; preds = %9309, %9308, %9298, %9297
  %9320 = phi float [ %9238, %9297 ], [ %9238, %9298 ], [ %9310, %9309 ], [ %9238, %9308 ]
  %9321 = phi float [ 0.000000e+00, %9297 ], [ %9302, %9298 ], [ %9314, %9309 ], [ 0.000000e+00, %9308 ]
  %9322 = phi float [ %9243, %9297 ], [ %9307, %9298 ], [ %9318, %9309 ], [ %9243, %9308 ]
  %9323 = phi float [ %9248, %9297 ], [ %9248, %9298 ], [ %9237, %9309 ], [ %9237, %9308 ]
  %9324 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 0
  store float -1.000000e+00, float* %9324, align 4, !tbaa !126, !noalias !141
  %9325 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 1
  store float -1.000000e+00, float* %9325, align 4, !tbaa !126, !noalias !141
  %9326 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 2
  store float -1.000000e+00, float* %9326, align 4, !tbaa !126, !noalias !141
  %9327 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 0
  store float -1.000000e+00, float* %9327, align 4, !tbaa !126, !noalias !141
  %9328 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 1
  store float -1.000000e+00, float* %9328, align 4, !tbaa !126, !noalias !141
  %9329 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 2
  store float -1.000000e+00, float* %9329, align 4, !tbaa !126, !noalias !141
  %9330 = icmp sgt i32 %9189, 0
  br i1 %9330, label %9331, label %9392

; <label>:9331                                    ; preds = %9319
  br label %9332

; <label>:9332                                    ; preds = %9381, %9331
  %9333 = phi i32 [ %9382, %9381 ], [ 0, %9331 ]
  %9334 = phi i32 [ %9383, %9381 ], [ 0, %9331 ]
  %9335 = add nuw i32 %9334, 171
  %9336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %9335)  ; CBufferLoadLegacy(handle,regIndex)
  %9337 = extractvalue %dx.types.CBufRet.f32 %9336, 0
  %9338 = extractvalue %dx.types.CBufRet.f32 %9336, 1
  %9339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9340 = extractvalue %dx.types.CBufRet.f32 %9339, 0
  %9341 = extractvalue %dx.types.CBufRet.f32 %9339, 1
  %9342 = fsub fast float %9337, %9340
  %9343 = fsub fast float %9338, %9341
  %9344 = extractvalue %dx.types.CBufRet.f32 %9336, 2
  %9345 = fsub fast float -0.000000e+00, %9342
  %9346 = fsub fast float -0.000000e+00, %9343
  %9347 = call float @dx.op.dot2.f32(i32 54, float %9166, float %9167, float %9345, float %9346)  ; Dot2(ax,ay,bx,by)
  %9348 = fmul fast float %9347, 2.000000e+00
  %9349 = call float @dx.op.dot2.f32(i32 54, float %9345, float %9346, float %9345, float %9346)  ; Dot2(ax,ay,bx,by)
  %9350 = fmul fast float %9344, %9344
  %9351 = fsub fast float %9349, %9350
  %9352 = fmul fast float %9348, %9348
  %9353 = fmul fast float %9209, %9351
  %9354 = fsub fast float %9352, %9353
  %9355 = fcmp fast ogt float %9354, 0.000000e+00
  br i1 %9355, label %9356, label %9371

; <label>:9356                                    ; preds = %9332
  %9357 = fcmp fast ogt float %9348, 0.000000e+00
  %9358 = call float @dx.op.unary.f32(i32 24, float %9354)  ; Sqrt(value)
  %9359 = fsub fast float -0.000000e+00, %9358
  %9360 = select i1 %9357, float %9358, float %9359
  %9361 = fadd fast float %9360, %9348
  %9362 = fmul float %9361, -5.000000e-01
  %9363 = fdiv fast float %9362, %9202
  %9364 = call float @dx.op.binary.f32(i32 35, float %9363, float 0.000000e+00)  ; FMax(a,b)
  %9365 = call float @dx.op.binary.f32(i32 36, float %9237, float %9364)  ; FMin(a,b)
  %9366 = fdiv fast float %9351, %9362
  %9367 = call float @dx.op.binary.f32(i32 35, float %9366, float 0.000000e+00)  ; FMax(a,b)
  %9368 = call float @dx.op.binary.f32(i32 36, float %9237, float %9367)  ; FMin(a,b)
  %9369 = call float @dx.op.binary.f32(i32 36, float %9365, float %9368)  ; FMin(a,b)
  %9370 = call float @dx.op.binary.f32(i32 35, float %9365, float %9368)  ; FMax(a,b)
  br label %9371

; <label>:9371                                    ; preds = %9356, %9332
  %9372 = phi float [ %9370, %9356 ], [ -1.000000e+00, %9332 ]
  %9373 = phi float [ %9369, %9356 ], [ -1.000000e+00, %9332 ]
  %9374 = phi i1 [ true, %9356 ], [ false, %9332 ]
  br i1 %9374, label %9375, label %9381

; <label>:9375                                    ; preds = %9371
  %9376 = call float @dx.op.binary.f32(i32 35, float %9320, float %9373)  ; FMax(a,b)
  %9377 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %9334
  store float %9376, float* %9377, align 4, !tbaa !126, !noalias !141
  %9378 = call float @dx.op.binary.f32(i32 35, float %9320, float %9372)  ; FMax(a,b)
  %9379 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %9334
  store float %9378, float* %9379, align 4, !tbaa !126, !noalias !141
  %9380 = add nsw i32 %9333, 1
  br label %9381

; <label>:9381                                    ; preds = %9375, %9371
  %9382 = phi i32 [ %9380, %9375 ], [ %9333, %9371 ]
  %9383 = add nuw nsw i32 %9334, 1
  %9384 = icmp eq i32 %9383, %9189
  br i1 %9384, label %9385, label %9332

; <label>:9385                                    ; preds = %9381
  %9386 = load float, float* %9326, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %9387 = load float, float* %9325, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  %9388 = load float, float* %9324, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  %9389 = load float, float* %9329, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %9390 = load float, float* %9328, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  %9391 = load float, float* %9327, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  br label %9392

; <label>:9392                                    ; preds = %9385, %9319
  %9393 = phi float [ -1.000000e+00, %9319 ], [ %9391, %9385 ]
  %9394 = phi float [ -1.000000e+00, %9319 ], [ %9390, %9385 ]
  %9395 = phi float [ -1.000000e+00, %9319 ], [ %9389, %9385 ]
  %9396 = phi float [ -1.000000e+00, %9319 ], [ %9388, %9385 ]
  %9397 = phi float [ -1.000000e+00, %9319 ], [ %9387, %9385 ]
  %9398 = phi float [ -1.000000e+00, %9319 ], [ %9386, %9385 ]
  %9399 = phi i32 [ 0, %9319 ], [ %9382, %9385 ]
  %9400 = call float @dx.op.binary.f32(i32 36, float %9397, float %9398)  ; FMin(a,b)
  %9401 = call float @dx.op.binary.f32(i32 36, float %9396, float %9400)  ; FMin(a,b)
  %9402 = call float @dx.op.binary.f32(i32 35, float %9396, float %9397)  ; FMax(a,b)
  %9403 = call float @dx.op.binary.f32(i32 36, float %9402, float %9398)  ; FMin(a,b)
  %9404 = call float @dx.op.binary.f32(i32 36, float %9396, float %9397)  ; FMin(a,b)
  %9405 = call float @dx.op.binary.f32(i32 35, float %9404, float %9403)  ; FMax(a,b)
  %9406 = call float @dx.op.binary.f32(i32 35, float %9397, float %9398)  ; FMax(a,b)
  %9407 = call float @dx.op.binary.f32(i32 35, float %9396, float %9406)  ; FMax(a,b)
  store float %9401, float* %9324, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  store float %9405, float* %9325, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  store float %9407, float* %9326, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %9408 = call float @dx.op.binary.f32(i32 36, float %9394, float %9395)  ; FMin(a,b)
  %9409 = call float @dx.op.binary.f32(i32 36, float %9393, float %9408)  ; FMin(a,b)
  %9410 = call float @dx.op.binary.f32(i32 35, float %9393, float %9394)  ; FMax(a,b)
  %9411 = call float @dx.op.binary.f32(i32 36, float %9410, float %9395)  ; FMin(a,b)
  %9412 = call float @dx.op.binary.f32(i32 36, float %9393, float %9394)  ; FMin(a,b)
  %9413 = call float @dx.op.binary.f32(i32 35, float %9412, float %9411)  ; FMax(a,b)
  %9414 = call float @dx.op.binary.f32(i32 35, float %9394, float %9395)  ; FMax(a,b)
  %9415 = call float @dx.op.binary.f32(i32 35, float %9393, float %9414)  ; FMax(a,b)
  store float %9409, float* %9327, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  store float %9413, float* %9328, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  store float %9415, float* %9329, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %9416 = sub nsw i32 3, %9399
  %9417 = icmp sgt i32 %9416, 2
  br i1 %9417, label %9418, label %9456

; <label>:9418                                    ; preds = %9392
  %9419 = icmp eq i32 %9187, 0
  %9420 = fsub fast float %9237, %9321
  %9421 = select i1 %9419, float %9420, float %9321
  %9422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9423 = extractvalue %dx.types.CBufRet.f32 %9422, 0
  %9424 = extractvalue %dx.types.CBufRet.f32 %9422, 1
  %9425 = extractvalue %dx.types.CBufRet.f32 %9422, 2
  %9426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9427 = extractvalue %dx.types.CBufRet.f32 %9426, 0
  %9428 = extractvalue %dx.types.CBufRet.f32 %9426, 1
  %9429 = extractvalue %dx.types.CBufRet.f32 %9426, 2
  %9430 = extractvalue %dx.types.CBufRet.f32 %9426, 3
  %9431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9432 = extractvalue %dx.types.CBufRet.f32 %9431, 3
  %9433 = call float @dx.op.binary.f32(i32 36, float %9322, float %9432)  ; FMin(a,b)
  %9434 = fmul fast float %9430, %9421
  %9435 = call float @dx.op.unary.f32(i32 7, float %9434)  ; Saturate(value)
  %9436 = fsub fast float %9427, %9423
  %9437 = fsub fast float %9428, %9424
  %9438 = fsub fast float %9429, %9425
  %9439 = fmul fast float %9435, %9436
  %9440 = fmul fast float %9435, %9437
  %9441 = fmul fast float %9435, %9438
  %9442 = fadd fast float %9439, %9423
  %9443 = fadd fast float %9440, %9424
  %9444 = fadd fast float %9441, %9425
  %9445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9446 = extractvalue %dx.types.CBufRet.f32 %9445, 0
  %9447 = extractvalue %dx.types.CBufRet.f32 %9445, 1
  %9448 = fadd fast float %9447, %9446
  %9449 = call float @dx.op.unary.f32(i32 7, float %9448)  ; Saturate(value)
  %9450 = extractvalue %dx.types.CBufRet.f32 %9445, 2
  %9451 = extractvalue %dx.types.CBufRet.f32 %9445, 3
  %9452 = fadd fast float %9451, %9450
  %9453 = call float @dx.op.unary.f32(i32 7, float %9452)  ; Saturate(value)
  %9454 = fmul fast float %9449, %9433
  %9455 = fmul fast float %9454, %9453
  br label %9538

; <label>:9456                                    ; preds = %9392
  %9457 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %9416
  %9458 = load float, float* %9457, align 4, !tbaa !126, !noalias !141
  %9459 = fcmp fast olt float %9458, %9323
  %9460 = icmp sgt i32 %9399, 0
  %9461 = and i1 %9460, %9459
  br i1 %9461, label %9462, label %9499

; <label>:9462                                    ; preds = %9456
  br label %9463

; <label>:9463                                    ; preds = %9492, %9462
  %9464 = phi float [ %9493, %9492 ], [ %9321, %9462 ]
  %9465 = phi float [ %9494, %9492 ], [ %9322, %9462 ]
  %9466 = phi float [ %9474, %9492 ], [ %9458, %9462 ]
  %9467 = phi i32 [ %9471, %9492 ], [ %9416, %9462 ]
  %9468 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %9467
  %9469 = load float, float* %9468, align 4, !tbaa !126, !noalias !141
  %9470 = icmp slt i32 %9467, 2
  %9471 = add nsw i32 %9467, 1
  %9472 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %9471
  %9473 = load float, float* %9472, align 4, !tbaa !126, !noalias !141
  %9474 = select i1 %9470, float %9473, float %9237
  %9475 = call float @dx.op.binary.f32(i32 36, float %9474, float %9469)  ; FMin(a,b)
  %9476 = call float @dx.op.binary.f32(i32 36, float %9323, float %9475)  ; FMin(a,b)
  %9477 = icmp eq i32 %9187, 0
  %9478 = fadd fast float %9476, %9466
  %9479 = fmul fast float %9478, %9168
  %9480 = fadd fast float %9479, %9181
  br i1 %9477, label %9486, label %9481

; <label>:9481                                    ; preds = %9463
  %9482 = fsub fast float %9476, %9466
  %9483 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9482)  ; FMax(a,b)
  %9484 = fmul fast float %9483, %9480
  %9485 = fadd fast float %9484, %9465
  br label %9492

; <label>:9486                                    ; preds = %9463
  %9487 = fsub fast float %9466, %9476
  %9488 = call float @dx.op.unary.f32(i32 6, float %9487)  ; FAbs(value)
  %9489 = fadd fast float %9488, %9464
  %9490 = fmul fast float %9488, %9480
  %9491 = fsub fast float %9465, %9490
  br label %9492

; <label>:9492                                    ; preds = %9486, %9481
  %9493 = phi float [ %9483, %9481 ], [ %9489, %9486 ]
  %9494 = phi float [ %9485, %9481 ], [ %9491, %9486 ]
  %9495 = fcmp fast olt float %9474, %9323
  %9496 = icmp slt i32 %9471, 3
  %9497 = and i1 %9496, %9495
  br i1 %9497, label %9463, label %9498

; <label>:9498                                    ; preds = %9492
  br label %9499

; <label>:9499                                    ; preds = %9498, %9456
  %9500 = phi float [ %9321, %9456 ], [ %9493, %9498 ]
  %9501 = phi float [ %9322, %9456 ], [ %9494, %9498 ]
  %9502 = fsub fast float %9237, %9500
  %9503 = select i1 %9239, float %9500, float %9502
  %9504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9505 = extractvalue %dx.types.CBufRet.f32 %9504, 0
  %9506 = extractvalue %dx.types.CBufRet.f32 %9504, 1
  %9507 = extractvalue %dx.types.CBufRet.f32 %9504, 2
  %9508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9509 = extractvalue %dx.types.CBufRet.f32 %9508, 0
  %9510 = extractvalue %dx.types.CBufRet.f32 %9508, 1
  %9511 = extractvalue %dx.types.CBufRet.f32 %9508, 2
  %9512 = extractvalue %dx.types.CBufRet.f32 %9508, 3
  %9513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9514 = extractvalue %dx.types.CBufRet.f32 %9513, 3
  %9515 = call float @dx.op.binary.f32(i32 36, float %9501, float %9514)  ; FMin(a,b)
  %9516 = fmul fast float %9512, %9503
  %9517 = call float @dx.op.unary.f32(i32 7, float %9516)  ; Saturate(value)
  %9518 = fsub fast float %9509, %9505
  %9519 = fsub fast float %9510, %9506
  %9520 = fsub fast float %9511, %9507
  %9521 = fmul fast float %9517, %9518
  %9522 = fmul fast float %9517, %9519
  %9523 = fmul fast float %9517, %9520
  %9524 = fadd fast float %9521, %9505
  %9525 = fadd fast float %9522, %9506
  %9526 = fadd fast float %9523, %9507
  %9527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9528 = extractvalue %dx.types.CBufRet.f32 %9527, 0
  %9529 = extractvalue %dx.types.CBufRet.f32 %9527, 1
  %9530 = fadd fast float %9529, %9528
  %9531 = call float @dx.op.unary.f32(i32 7, float %9530)  ; Saturate(value)
  %9532 = extractvalue %dx.types.CBufRet.f32 %9527, 2
  %9533 = extractvalue %dx.types.CBufRet.f32 %9527, 3
  %9534 = fadd fast float %9533, %9532
  %9535 = call float @dx.op.unary.f32(i32 7, float %9534)  ; Saturate(value)
  %9536 = fmul fast float %9531, %9515
  %9537 = fmul fast float %9536, %9535
  br label %9538

; <label>:9538                                    ; preds = %9499, %9418, %9253, %9235, %9233
  %9539 = phi float [ %9262, %9253 ], [ %9421, %9418 ], [ %9503, %9499 ], [ 0.000000e+00, %9233 ], [ 0.000000e+00, %9235 ]
  %9540 = phi float [ %9296, %9253 ], [ %9455, %9418 ], [ %9537, %9499 ], [ 0.000000e+00, %9233 ], [ 0.000000e+00, %9235 ]
  %9541 = phi float [ %9283, %9253 ], [ %9442, %9418 ], [ %9524, %9499 ], [ 0.000000e+00, %9233 ], [ 0.000000e+00, %9235 ]
  %9542 = phi float [ %9284, %9253 ], [ %9443, %9418 ], [ %9525, %9499 ], [ 0.000000e+00, %9233 ], [ 0.000000e+00, %9235 ]
  %9543 = phi float [ %9285, %9253 ], [ %9444, %9418 ], [ %9526, %9499 ], [ 0.000000e+00, %9233 ], [ 0.000000e+00, %9235 ]
  %9544 = fmul fast float %9176, %9540
  %9545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9546 = extractvalue %dx.types.CBufRet.f32 %9545, 2
  %9547 = fsub fast float %9183, %9546
  %9548 = fcmp fast olt float %9544, -2.000000e+01
  %9549 = call float @dx.op.unary.f32(i32 21, float %9544)  ; Exp(value)
  %9550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9551 = extractvalue %dx.types.CBufRet.f32 %9550, 2
  %9552 = extractvalue %dx.types.CBufRet.f32 %9550, 3
  %9553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9554 = extractvalue %dx.types.CBufRet.f32 %9553, 2
  %9555 = fmul fast float %9552, %9547
  %9556 = call float @dx.op.unary.f32(i32 7, float %9555)  ; Saturate(value)
  %9557 = fsub fast float 1.000000e+00, %9556
  %9558 = fmul fast float %9168, 5.000000e-01
  %9559 = fadd fast float %9558, 5.000000e-01
  %9560 = call float @dx.op.unary.f32(i32 7, float %9559)  ; Saturate(value)
  %9561 = fsub fast float 1.000000e+00, %9560
  %9562 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9557)  ; FMax(a,b)
  %9563 = fdiv fast float %9561, %9562
  %9564 = fsub fast float %9547, %9125
  %9565 = call float @dx.op.unary.f32(i32 6, float %9564)  ; FAbs(value)
  %9566 = fmul fast float %9565, %9551
  %9567 = call float @dx.op.unary.f32(i32 7, float %9563)  ; Saturate(value)
  %9568 = fsub fast float 1.000000e+00, %9566
  %9569 = fmul fast float %9568, %9567
  %9570 = fadd fast float %9569, %9566
  %9571 = fmul fast float %9554, %9547
  %9572 = call float @dx.op.unary.f32(i32 7, float %9571)  ; Saturate(value)
  %9573 = fsub fast float 1.000000e+00, %9570
  %9574 = fmul fast float %9573, %9572
  %9575 = fadd fast float %9574, %9570
  %9576 = call float @dx.op.unary.f32(i32 7, float %9575)  ; Saturate(value)
  %9577 = fadd fast float %9549, -1.000000e+00
  %9578 = select i1 %9548, float -1.000000e+00, float %9577
  %9579 = fmul fast float %9576, %9578
  %9580 = fadd fast float %9579, 1.000000e+00
  %9581 = fsub fast float -0.000000e+00, %9579
  %9582 = fmul fast float %9541, %9581
  %9583 = fmul fast float %9542, %9581
  %9584 = fmul fast float %9543, %9581
  br label %9585

; <label>:9585                                    ; preds = %9538, %9134
  %9586 = phi float [ %9539, %9538 ], [ 0.000000e+00, %9134 ]
  %9587 = phi float [ %9580, %9538 ], [ 1.000000e+00, %9134 ]
  %9588 = phi float [ %9582, %9538 ], [ 0.000000e+00, %9134 ]
  %9589 = phi float [ %9583, %9538 ], [ 0.000000e+00, %9134 ]
  %9590 = phi float [ %9584, %9538 ], [ 0.000000e+00, %9134 ]
  %9591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9592 = extractvalue %dx.types.CBufRet.f32 %9591, 1
  %9593 = fsub fast float 1.000000e+00, %9587
  %9594 = fmul fast float %9593, %9169
  %9595 = fmul fast float %9594, %9592
  %9596 = fsub fast float %9169, %9595
  br i1 %9162, label %9597, label %9626, !dx.controlflow.hints !177

; <label>:9597                                    ; preds = %9585
  %9598 = fmul fast float %9170, %9159
  %9599 = fadd fast float %9598, %9160
  %9600 = call float @dx.op.unary.f32(i32 7, float %9599)  ; Saturate(value)
  %9601 = fmul fast float %9141, %9596
  %9602 = fsub fast float -0.000000e+00, %9601
  %9603 = fmul fast float %9142, %9596
  %9604 = fsub fast float -0.000000e+00, %9603
  %9605 = call float @dx.op.unary.f32(i32 21, float %9602)  ; Exp(value)
  %9606 = call float @dx.op.unary.f32(i32 21, float %9604)  ; Exp(value)
  %9607 = call float @dx.op.binary.f32(i32 35, float %9149, float %9605)  ; FMax(a,b)
  %9608 = call float @dx.op.binary.f32(i32 35, float %9149, float %9606)  ; FMax(a,b)
  %9609 = fsub fast float %9608, %9607
  %9610 = fmul fast float %9609, %9600
  %9611 = fadd fast float %9610, %9607
  %9612 = call float @dx.op.unary.f32(i32 7, float %9611)  ; Saturate(value)
  %9613 = fsub fast float %9146, %9151
  %9614 = fsub fast float %9147, %9152
  %9615 = fsub fast float %9148, %9153
  %9616 = fmul fast float %9600, %9613
  %9617 = fmul fast float %9600, %9614
  %9618 = fmul fast float %9600, %9615
  %9619 = fadd fast float %9616, %9151
  %9620 = fadd fast float %9617, %9152
  %9621 = fadd fast float %9618, %9153
  %9622 = fsub fast float 1.000000e+00, %9612
  %9623 = fmul fast float %9622, %9619
  %9624 = fmul fast float %9622, %9620
  %9625 = fmul fast float %9622, %9621
  br label %9685

; <label>:9626                                    ; preds = %9585
  %9627 = fmul fast float %9596, %9158
  %9628 = call float @dx.op.unary.f32(i32 7, float %9627)  ; Saturate(value)
  %9629 = fsub fast float 2.000000e+00, %9628
  %9630 = fmul fast float %9628, 9.921875e-01
  %9631 = fmul fast float %9630, %9629
  %9632 = fadd fast float %9631, 3.906250e-03
  %9633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %9632, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9634 = extractvalue %dx.types.ResRet.f32 %9633, 0
  %9635 = fsub fast float %9628, %9634
  %9636 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9635)  ; FMax(a,b)
  %9637 = fmul fast float %9144, %9125
  %9638 = call float @dx.op.unary.f32(i32 6, float %9637)  ; FAbs(value)
  %9639 = fcmp fast ogt float %9638, 0x3EB0C6F7A0000000
  br i1 %9639, label %9640, label %9646, !dx.controlflow.hints !178

; <label>:9640                                    ; preds = %9626
  %9641 = fmul fast float %9637, 0xBFF7154760000000
  %9642 = call float @dx.op.unary.f32(i32 21, float %9641)  ; Exp(value)
  %9643 = fsub fast float 1.000000e+00, %9642
  %9644 = fdiv fast float %9643, %9637
  %9645 = fmul fast float %9644, %9154
  br label %9646

; <label>:9646                                    ; preds = %9640, %9626
  %9647 = phi float [ %9645, %9640 ], [ %9154, %9626 ]
  %9648 = fadd fast float %9647, %9156
  %9649 = fmul fast float %9648, %9636
  %9650 = fmul fast float %9141, %9649
  %9651 = fsub fast float -0.000000e+00, %9650
  %9652 = fmul fast float %9142, %9649
  %9653 = fsub fast float -0.000000e+00, %9652
  %9654 = fmul fast float %9143, %9649
  %9655 = fsub fast float -0.000000e+00, %9654
  %9656 = call float @dx.op.unary.f32(i32 21, float %9651)  ; Exp(value)
  %9657 = call float @dx.op.unary.f32(i32 21, float %9653)  ; Exp(value)
  %9658 = call float @dx.op.unary.f32(i32 21, float %9655)  ; Exp(value)
  %9659 = fmul fast float %9170, %9170
  %9660 = fadd fast float %9659, 1.000000e+00
  %9661 = fmul fast float %9660, 0x3FAE8EC8A0000000
  %9662 = fmul fast float %9661, %9151
  %9663 = fmul fast float %9661, %9152
  %9664 = fmul fast float %9661, %9153
  %9665 = fmul fast float %9170, %9149
  %9666 = fsub fast float 1.000000e+00, %9665
  %9667 = fmul fast float %9149, %9149
  %9668 = fsub fast float 1.000000e+00, %9667
  %9669 = fmul fast float %9668, 0x3FB45F3060000000
  %9670 = fmul fast float %9666, %9666
  %9671 = fdiv fast float 1.000000e+00, %9670
  %9672 = fmul fast float %9669, %9671
  %9673 = fmul fast float %9672, %9146
  %9674 = fmul fast float %9672, %9147
  %9675 = fmul fast float %9672, %9148
  %9676 = fadd fast float %9673, %9662
  %9677 = fadd fast float %9674, %9663
  %9678 = fadd fast float %9675, %9664
  %9679 = fsub fast float 1.000000e+00, %9656
  %9680 = fsub fast float 1.000000e+00, %9657
  %9681 = fsub fast float 1.000000e+00, %9658
  %9682 = fmul fast float %9676, %9679
  %9683 = fmul fast float %9677, %9680
  %9684 = fmul fast float %9678, %9681
  br label %9685

; <label>:9685                                    ; preds = %9646, %9597
  %9686 = phi float [ %9623, %9597 ], [ %9682, %9646 ]
  %9687 = phi float [ %9624, %9597 ], [ %9683, %9646 ]
  %9688 = phi float [ %9625, %9597 ], [ %9684, %9646 ]
  %9689 = phi float [ %9612, %9597 ], [ %9656, %9646 ]
  %9690 = phi float [ %9612, %9597 ], [ %9657, %9646 ]
  %9691 = phi float [ %9612, %9597 ], [ %9658, %9646 ]
  br i1 %9178, label %9692, label %9890, !dx.controlflow.hints !179

; <label>:9692                                    ; preds = %9685
  %9693 = extractvalue %dx.types.CBufRet.f32 %9591, 0
  %9694 = fmul fast float %9693, %9593
  %9695 = fsub fast float %9588, %9686
  %9696 = fsub fast float %9589, %9687
  %9697 = fsub fast float %9590, %9688
  %9698 = fmul fast float %9694, %9695
  %9699 = fmul fast float %9694, %9696
  %9700 = fmul fast float %9694, %9697
  %9701 = fadd fast float %9698, %9686
  %9702 = fadd fast float %9699, %9687
  %9703 = fadd fast float %9700, %9688
  %9704 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9689)  ; FMax(a,b)
  %9705 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9690)  ; FMax(a,b)
  %9706 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9691)  ; FMax(a,b)
  %9707 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9587)  ; FMax(a,b)
  %9708 = call float @dx.op.binary.f32(i32 35, float %9586, float %9596)  ; FMax(a,b)
  %9709 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9708)  ; FMax(a,b)
  %9710 = fdiv fast float %9586, %9709
  %9711 = call float @dx.op.unary.f32(i32 7, float %9710)  ; Saturate(value)
  %9712 = fdiv fast float %9596, %9709
  %9713 = call float @dx.op.unary.f32(i32 7, float %9712)  ; Saturate(value)
  %9714 = fcmp fast une float %9707, 1.000000e+00
  br i1 %9714, label %9715, label %9728, !dx.controlflow.hints !180

; <label>:9715                                    ; preds = %9692
  %9716 = call float @dx.op.unary.f32(i32 23, float %9707)  ; Log(value)
  %9717 = fmul fast float %9716, 0x3FE62E4300000000
  %9718 = fmul fast float %9588, %9717
  %9719 = fsub fast float -0.000000e+00, %9718
  %9720 = fmul fast float %9589, %9717
  %9721 = fsub fast float -0.000000e+00, %9720
  %9722 = fmul fast float %9590, %9717
  %9723 = fsub fast float -0.000000e+00, %9722
  %9724 = fsub fast float 1.000000e+00, %9707
  %9725 = fdiv fast float %9719, %9724
  %9726 = fdiv fast float %9721, %9724
  %9727 = fdiv fast float %9723, %9724
  br label %9728

; <label>:9728                                    ; preds = %9715, %9692
  %9729 = phi float [ %9725, %9715 ], [ %9588, %9692 ]
  %9730 = phi float [ %9726, %9715 ], [ %9589, %9692 ]
  %9731 = phi float [ %9727, %9715 ], [ %9590, %9692 ]
  %9732 = phi float [ %9717, %9715 ], [ 0.000000e+00, %9692 ]
  %9733 = fcmp fast une float %9704, 1.000000e+00
  br i1 %9733, label %9734, label %9741, !dx.controlflow.hints !181

; <label>:9734                                    ; preds = %9728
  %9735 = call float @dx.op.unary.f32(i32 23, float %9704)  ; Log(value)
  %9736 = fmul fast float %9735, 0x3FE62E4300000000
  %9737 = fmul fast float %9701, %9736
  %9738 = fsub fast float -0.000000e+00, %9737
  %9739 = fsub fast float 1.000000e+00, %9704
  %9740 = fdiv fast float %9738, %9739
  br label %9741

; <label>:9741                                    ; preds = %9734, %9728
  %9742 = phi float [ %9740, %9734 ], [ %9701, %9728 ]
  %9743 = phi float [ %9736, %9734 ], [ 0.000000e+00, %9728 ]
  %9744 = fcmp fast une float %9705, 1.000000e+00
  br i1 %9744, label %9745, label %9752, !dx.controlflow.hints !181

; <label>:9745                                    ; preds = %9741
  %9746 = call float @dx.op.unary.f32(i32 23, float %9705)  ; Log(value)
  %9747 = fmul fast float %9746, 0x3FE62E4300000000
  %9748 = fmul fast float %9702, %9747
  %9749 = fsub fast float -0.000000e+00, %9748
  %9750 = fsub fast float 1.000000e+00, %9705
  %9751 = fdiv fast float %9749, %9750
  br label %9752

; <label>:9752                                    ; preds = %9745, %9741
  %9753 = phi float [ %9751, %9745 ], [ %9702, %9741 ]
  %9754 = phi float [ %9747, %9745 ], [ 0.000000e+00, %9741 ]
  %9755 = fcmp fast une float %9706, 1.000000e+00
  br i1 %9755, label %9756, label %9763, !dx.controlflow.hints !181

; <label>:9756                                    ; preds = %9752
  %9757 = call float @dx.op.unary.f32(i32 23, float %9706)  ; Log(value)
  %9758 = fmul fast float %9757, 0x3FE62E4300000000
  %9759 = fmul fast float %9703, %9758
  %9760 = fsub fast float -0.000000e+00, %9759
  %9761 = fsub fast float 1.000000e+00, %9706
  %9762 = fdiv fast float %9760, %9761
  br label %9763

; <label>:9763                                    ; preds = %9756, %9752
  %9764 = phi float [ %9762, %9756 ], [ %9703, %9752 ]
  %9765 = phi float [ %9758, %9756 ], [ 0.000000e+00, %9752 ]
  %9766 = fmul fast float %9729, %9713
  %9767 = fmul fast float %9730, %9713
  %9768 = fmul fast float %9731, %9713
  %9769 = fmul fast float %9732, %9713
  %9770 = fmul fast float %9742, %9711
  %9771 = fmul fast float %9753, %9711
  %9772 = fmul fast float %9764, %9711
  %9773 = fmul fast float %9743, %9711
  %9774 = fmul fast float %9754, %9711
  %9775 = fmul fast float %9765, %9711
  %9776 = fadd fast float %9770, %9766
  %9777 = fadd fast float %9771, %9767
  %9778 = fadd fast float %9772, %9768
  %9779 = fadd fast float %9773, %9769
  %9780 = fadd fast float %9774, %9769
  %9781 = fadd fast float %9775, %9769
  %9782 = fcmp fast une float %9779, 0.000000e+00
  br i1 %9782, label %9783, label %9790, !dx.controlflow.hints !182

; <label>:9783                                    ; preds = %9763
  %9784 = fmul fast float %9779, 0x3FF7154760000000
  %9785 = call float @dx.op.unary.f32(i32 21, float %9784)  ; Exp(value)
  %9786 = fsub fast float 1.000000e+00, %9785
  %9787 = fmul fast float %9776, %9786
  %9788 = fsub fast float -0.000000e+00, %9787
  %9789 = fdiv fast float %9788, %9779
  br label %9790

; <label>:9790                                    ; preds = %9783, %9763
  %9791 = phi float [ %9785, %9783 ], [ 1.000000e+00, %9763 ]
  %9792 = phi float [ %9789, %9783 ], [ %9776, %9763 ]
  %9793 = fcmp fast une float %9780, 0.000000e+00
  br i1 %9793, label %9794, label %9801, !dx.controlflow.hints !182

; <label>:9794                                    ; preds = %9790
  %9795 = fmul fast float %9780, 0x3FF7154760000000
  %9796 = call float @dx.op.unary.f32(i32 21, float %9795)  ; Exp(value)
  %9797 = fsub fast float 1.000000e+00, %9796
  %9798 = fmul fast float %9777, %9797
  %9799 = fsub fast float -0.000000e+00, %9798
  %9800 = fdiv fast float %9799, %9780
  br label %9801

; <label>:9801                                    ; preds = %9794, %9790
  %9802 = phi float [ %9796, %9794 ], [ 1.000000e+00, %9790 ]
  %9803 = phi float [ %9800, %9794 ], [ %9777, %9790 ]
  %9804 = fcmp fast une float %9781, 0.000000e+00
  br i1 %9804, label %9805, label %9812, !dx.controlflow.hints !182

; <label>:9805                                    ; preds = %9801
  %9806 = fmul fast float %9781, 0x3FF7154760000000
  %9807 = call float @dx.op.unary.f32(i32 21, float %9806)  ; Exp(value)
  %9808 = fsub fast float 1.000000e+00, %9807
  %9809 = fmul fast float %9778, %9808
  %9810 = fsub fast float -0.000000e+00, %9809
  %9811 = fdiv fast float %9810, %9781
  br label %9812

; <label>:9812                                    ; preds = %9805, %9801
  %9813 = phi float [ %9807, %9805 ], [ 1.000000e+00, %9801 ]
  %9814 = phi float [ %9811, %9805 ], [ %9778, %9801 ]
  %9815 = fcmp fast ogt float %9711, %9713
  br i1 %9815, label %9816, label %9836

; <label>:9816                                    ; preds = %9812
  %9817 = fsub fast float 1.000000e+00, %9713
  %9818 = fmul fast float %9729, %9817
  %9819 = fmul fast float %9730, %9817
  %9820 = fmul fast float %9731, %9817
  %9821 = fmul fast float %9732, %9817
  %9822 = fcmp fast une float %9821, 0.000000e+00
  br i1 %9822, label %9823, label %9874, !dx.controlflow.hints !183

; <label>:9823                                    ; preds = %9816
  %9824 = fmul fast float %9821, 0x3FF7154760000000
  %9825 = call float @dx.op.unary.f32(i32 21, float %9824)  ; Exp(value)
  %9826 = fsub fast float 1.000000e+00, %9825
  %9827 = fmul fast float %9818, %9826
  %9828 = fsub fast float -0.000000e+00, %9827
  %9829 = fmul fast float %9819, %9826
  %9830 = fsub fast float -0.000000e+00, %9829
  %9831 = fmul fast float %9820, %9826
  %9832 = fsub fast float -0.000000e+00, %9831
  %9833 = fdiv fast float %9828, %9821
  %9834 = fdiv fast float %9830, %9821
  %9835 = fdiv fast float %9832, %9821
  br label %9874

; <label>:9836                                    ; preds = %9812
  %9837 = fsub fast float 1.000000e+00, %9711
  %9838 = fmul fast float %9742, %9837
  %9839 = fmul fast float %9753, %9837
  %9840 = fmul fast float %9764, %9837
  %9841 = fmul fast float %9743, %9837
  %9842 = fmul fast float %9754, %9837
  %9843 = fmul fast float %9765, %9837
  %9844 = fcmp fast une float %9841, 0.000000e+00
  br i1 %9844, label %9845, label %9852, !dx.controlflow.hints !182

; <label>:9845                                    ; preds = %9836
  %9846 = fmul fast float %9841, 0x3FF7154760000000
  %9847 = call float @dx.op.unary.f32(i32 21, float %9846)  ; Exp(value)
  %9848 = fsub fast float 1.000000e+00, %9847
  %9849 = fmul fast float %9838, %9848
  %9850 = fsub fast float -0.000000e+00, %9849
  %9851 = fdiv fast float %9850, %9841
  br label %9852

; <label>:9852                                    ; preds = %9845, %9836
  %9853 = phi float [ %9851, %9845 ], [ %9838, %9836 ]
  %9854 = phi float [ %9847, %9845 ], [ 1.000000e+00, %9836 ]
  %9855 = fcmp fast une float %9842, 0.000000e+00
  br i1 %9855, label %9856, label %9863, !dx.controlflow.hints !182

; <label>:9856                                    ; preds = %9852
  %9857 = fmul fast float %9842, 0x3FF7154760000000
  %9858 = call float @dx.op.unary.f32(i32 21, float %9857)  ; Exp(value)
  %9859 = fsub fast float 1.000000e+00, %9858
  %9860 = fmul fast float %9839, %9859
  %9861 = fsub fast float -0.000000e+00, %9860
  %9862 = fdiv fast float %9861, %9842
  br label %9863

; <label>:9863                                    ; preds = %9856, %9852
  %9864 = phi float [ %9862, %9856 ], [ %9839, %9852 ]
  %9865 = phi float [ %9858, %9856 ], [ 1.000000e+00, %9852 ]
  %9866 = fcmp fast une float %9843, 0.000000e+00
  br i1 %9866, label %9867, label %9874, !dx.controlflow.hints !182

; <label>:9867                                    ; preds = %9863
  %9868 = fmul fast float %9843, 0x3FF7154760000000
  %9869 = call float @dx.op.unary.f32(i32 21, float %9868)  ; Exp(value)
  %9870 = fsub fast float 1.000000e+00, %9869
  %9871 = fmul fast float %9840, %9870
  %9872 = fsub fast float -0.000000e+00, %9871
  %9873 = fdiv fast float %9872, %9843
  br label %9874

; <label>:9874                                    ; preds = %9867, %9863, %9823, %9816
  %9875 = phi float [ %9873, %9867 ], [ %9835, %9823 ], [ %9820, %9816 ], [ %9840, %9863 ]
  %9876 = phi float [ %9864, %9867 ], [ %9834, %9823 ], [ %9819, %9816 ], [ %9864, %9863 ]
  %9877 = phi float [ %9853, %9867 ], [ %9833, %9823 ], [ %9818, %9816 ], [ %9853, %9863 ]
  %9878 = phi float [ %9869, %9867 ], [ %9825, %9823 ], [ 1.000000e+00, %9816 ], [ 1.000000e+00, %9863 ]
  %9879 = phi float [ %9865, %9867 ], [ %9825, %9823 ], [ 1.000000e+00, %9816 ], [ %9865, %9863 ]
  %9880 = phi float [ %9854, %9867 ], [ %9825, %9823 ], [ 1.000000e+00, %9816 ], [ %9854, %9863 ]
  %9881 = fmul fast float %9880, %9792
  %9882 = fmul fast float %9879, %9803
  %9883 = fmul fast float %9878, %9814
  %9884 = fadd fast float %9881, %9877
  %9885 = fadd fast float %9882, %9876
  %9886 = fadd fast float %9883, %9875
  %9887 = fmul fast float %9880, %9791
  %9888 = fmul fast float %9879, %9802
  %9889 = fmul fast float %9878, %9813
  br label %9890

; <label>:9890                                    ; preds = %9874, %9685
  %9891 = phi float [ %9889, %9874 ], [ %9691, %9685 ]
  %9892 = phi float [ %9888, %9874 ], [ %9690, %9685 ]
  %9893 = phi float [ %9887, %9874 ], [ %9689, %9685 ]
  %9894 = phi float [ %9886, %9874 ], [ %9688, %9685 ]
  %9895 = phi float [ %9885, %9874 ], [ %9687, %9685 ]
  %9896 = phi float [ %9884, %9874 ], [ %9686, %9685 ]
  %9897 = fmul fast float %9896, %8838
  %9898 = fmul fast float %9895, %8840
  %9899 = fmul fast float %9894, %8842
  %9900 = fmul fast float %9893, %9133
  %9901 = call float @dx.op.dot3.f32(i32 55, float %9893, float %9892, float %9891, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9902 = call float @dx.op.dot3.f32(i32 55, float %9897, float %9898, float %9899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9903 = select i1 %275, float %9901, float %9893
  %9904 = select i1 %275, float %9901, float %9892
  %9905 = select i1 %275, float 1.000000e+00, float %9891
  %9906 = select i1 %275, float %9902, float %9897
  %9907 = select i1 %275, float 0.000000e+00, float %9898
  %9908 = select i1 %275, float 0.000000e+00, float %9899
  %9909 = fmul fast float %9903, %9127
  %9910 = fmul fast float %9904, %9128
  %9911 = fmul fast float %9905, %9129
  %9912 = fadd fast float %9909, %9906
  %9913 = fadd fast float %9910, %9907
  %9914 = fadd fast float %9908, %9911
  %9915 = fmul fast float %9903, %9130
  %9916 = fmul fast float %9904, %9131
  %9917 = fmul fast float %9905, %9132
  %9918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9919 = extractvalue %dx.types.CBufRet.i32 %9918, 0
  %9920 = icmp eq i32 %9919, 0
  br i1 %9920, label %10288, label %9921, !dx.controlflow.hints !184

; <label>:9921                                    ; preds = %9890
  %9922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9923 = extractvalue %dx.types.CBufRet.f32 %9922, 2
  %9924 = extractvalue %dx.types.CBufRet.f32 %9922, 3
  %9925 = fmul fast float %9923, %116
  %9926 = fmul fast float %9924, %117
  %9927 = fmul fast float %9925, 2.000000e+00
  %9928 = fmul fast float %9926, 2.000000e+00
  %9929 = fsub fast float 1.000000e+00, %9927
  %9930 = fsub fast float 1.000000e+00, %9928
  %9931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9932 = extractvalue %dx.types.CBufRet.f32 %9931, 0
  %9933 = extractvalue %dx.types.CBufRet.f32 %9931, 1
  %9934 = extractvalue %dx.types.CBufRet.f32 %9931, 2
  %9935 = fmul fast float %9929, %9932
  %9936 = fmul fast float %9929, %9933
  %9937 = fmul fast float %9929, %9934
  %9938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9939 = extractvalue %dx.types.CBufRet.f32 %9938, 0
  %9940 = extractvalue %dx.types.CBufRet.f32 %9938, 1
  %9941 = extractvalue %dx.types.CBufRet.f32 %9938, 2
  %9942 = fmul fast float %9930, %9939
  %9943 = fmul fast float %9930, %9940
  %9944 = fmul fast float %9930, %9941
  %9945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9946 = extractvalue %dx.types.CBufRet.f32 %9945, 0
  %9947 = extractvalue %dx.types.CBufRet.f32 %9945, 1
  %9948 = extractvalue %dx.types.CBufRet.f32 %9945, 2
  %9949 = fadd fast float %9942, %9946
  %9950 = fadd fast float %9949, %9935
  %9951 = fadd fast float %9943, %9947
  %9952 = fadd fast float %9951, %9936
  %9953 = fadd fast float %9944, %9948
  %9954 = fadd fast float %9953, %9937
  %9955 = fmul fast float %9950, %9126
  %9956 = fmul fast float %9952, %9126
  %9957 = fmul fast float %9954, %9126
  %9958 = fmul fast float %9955, %9955
  %9959 = fmul fast float %9956, %9956
  %9960 = fadd fast float %9958, %9959
  %9961 = fmul fast float %9957, %9957
  %9962 = fadd fast float %9960, %9961
  %9963 = call float @dx.op.unary.f32(i32 24, float %9962)  ; Sqrt(value)
  %9964 = extractvalue %dx.types.CBufRet.f32 %8853, 0
  %9965 = fsub fast float %9963, %9964
  %9966 = extractvalue %dx.types.CBufRet.f32 %8853, 2
  %9967 = fmul fast float %9965, %9966
  %9968 = call float @dx.op.unary.f32(i32 7, float %9967)  ; Saturate(value)
  %9969 = fadd fast float %9968, -5.000000e-01
  %9970 = fmul fast float %9969, 2.000000e+00
  %9971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9972 = extractvalue %dx.types.CBufRet.f32 %9971, 2
  %9973 = call float @dx.op.binary.f32(i32 36, float %9972, float %9970)  ; FMin(a,b)
  %9974 = fsub fast float -0.000000e+00, %9972
  %9975 = fcmp fast ogt float %9973, %9974
  br i1 %9975, label %9976, label %10288, !dx.controlflow.hints !185

; <label>:9976                                    ; preds = %9921
  %9977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9978 = extractvalue %dx.types.CBufRet.f32 %9977, 3
  %9979 = fcmp fast ogt float %9978, 0.000000e+00
  br i1 %9979, label %9980, label %10055, !dx.controlflow.hints !186

; <label>:9980                                    ; preds = %9976
  %9981 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9982 = extractvalue %dx.types.Dimensions %9981, 0
  %9983 = sitofp i32 %9982 to float
  %9984 = extractvalue %dx.types.Dimensions %9981, 1
  %9985 = sitofp i32 %9984 to float
  %9986 = fmul fast float %9925, %9983
  %9987 = fmul fast float %9926, %9985
  %9988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9989 = extractvalue %dx.types.CBufRet.f32 %9988, 1
  %9990 = fsub fast float -0.000000e+00, %9989
  %9991 = fptoui float %9990 to i32
  %9992 = fptoui float %9986 to i32
  %9993 = fptoui float %9987 to i32
  %9994 = and i32 %9991, 31
  %9995 = lshr i32 %9992, %9994
  %9996 = lshr i32 %9993, %9994
  %9997 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9991, i32 %9995, i32 %9996, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9998 = extractvalue %dx.types.ResRet.f32 %9997, 0
  %9999 = fcmp fast olt float %9998, -1.000000e+00
  %10000 = fcmp fast ogt float %9998, -1.000000e+00
  %10001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10002 = extractvalue %dx.types.CBufRet.f32 %10001, 1
  %10003 = select i1 %10000, float %10002, float 1.000000e+00
  %10004 = fadd fast float %9998, 1.000000e+00
  %10005 = fmul fast float %10003, %10004
  %10006 = call float @dx.op.unary.f32(i32 6, float %10005)  ; FAbs(value)
  %10007 = extractvalue %dx.types.CBufRet.f32 %10001, 3
  %10008 = fcmp fast oge float %10006, %10007
  %10009 = select i1 %10008, float 0x4197782600000000, float %10006
  %10010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10011 = extractvalue %dx.types.CBufRet.f32 %10010, 0
  %10012 = extractvalue %dx.types.CBufRet.f32 %10010, 1
  %10013 = extractvalue %dx.types.CBufRet.f32 %10010, 2
  %10014 = select i1 %9999, float %10011, float %9932
  %10015 = select i1 %9999, float %10012, float %9933
  %10016 = select i1 %9999, float %10013, float %9934
  %10017 = fmul fast float %10014, %9929
  %10018 = fmul fast float %10015, %9929
  %10019 = fmul fast float %10016, %9929
  %10020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10021 = extractvalue %dx.types.CBufRet.f32 %10020, 0
  %10022 = extractvalue %dx.types.CBufRet.f32 %10020, 1
  %10023 = extractvalue %dx.types.CBufRet.f32 %10020, 2
  %10024 = select i1 %9999, float %10021, float %9939
  %10025 = select i1 %9999, float %10022, float %9940
  %10026 = select i1 %9999, float %10023, float %9941
  %10027 = fmul fast float %10024, %9930
  %10028 = fmul fast float %10025, %9930
  %10029 = fmul fast float %10026, %9930
  %10030 = fadd fast float %10027, %10017
  %10031 = fadd fast float %10028, %10018
  %10032 = fadd fast float %10029, %10019
  %10033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10034 = extractvalue %dx.types.CBufRet.f32 %10033, 0
  %10035 = extractvalue %dx.types.CBufRet.f32 %10033, 1
  %10036 = extractvalue %dx.types.CBufRet.f32 %10033, 2
  %10037 = select i1 %9999, float %10034, float %9946
  %10038 = select i1 %9999, float %10035, float %9947
  %10039 = select i1 %9999, float %10036, float %9948
  %10040 = fadd fast float %10030, %10037
  %10041 = fadd fast float %10031, %10038
  %10042 = fadd fast float %10032, %10039
  %10043 = fmul fast float %10040, %10009
  %10044 = fmul fast float %10041, %10009
  %10045 = fmul fast float %10042, %10009
  %10046 = fmul fast float %10043, %10043
  %10047 = fmul fast float %10044, %10044
  %10048 = fadd fast float %10046, %10047
  %10049 = fmul fast float %10045, %10045
  %10050 = fadd fast float %10048, %10049
  %10051 = call float @dx.op.unary.f32(i32 24, float %10050)  ; Sqrt(value)
  %10052 = fsub fast float %10051, %9964
  %10053 = fmul fast float %10052, %9966
  %10054 = call float @dx.op.unary.f32(i32 7, float %10053)  ; Saturate(value)
  br label %10055

; <label>:10055                                   ; preds = %9980, %9976
  %10056 = phi float [ %10054, %9980 ], [ 1.000000e+00, %9976 ]
  %10057 = fmul fast float %9973, 5.000000e-01
  %10058 = fadd fast float %10057, 5.000000e-01
  %10059 = call float @dx.op.unary.f32(i32 22, float %10058)  ; Frc(value)
  %10060 = call float @dx.op.unary.f32(i32 27, float %10059)  ; Round_ni(value)
  %10061 = call float @dx.op.unary.f32(i32 22, float %10059)  ; Frc(value)
  %10062 = fmul fast float %10061, 2.000000e+00
  %10063 = fadd fast float %10062, -1.000000e+00
  %10064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %55, float %9925, float %9926, float %10060, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10065 = extractvalue %dx.types.ResRet.f32 %10064, 0
  %10066 = extractvalue %dx.types.ResRet.f32 %10064, 1
  %10067 = extractvalue %dx.types.ResRet.f32 %10064, 2
  %10068 = extractvalue %dx.types.ResRet.f32 %10064, 3
  %10069 = fadd fast float %10065, -5.000000e-01
  %10070 = fadd fast float %10067, -5.000000e-01
  %10071 = fmul fast float %10069, 0xBFD5555560000000
  %10072 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10070, float %10071)  ; FMad(a,b,c)
  %10073 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10066, float 0.000000e+00)  ; FMad(a,b,c)
  %10074 = fadd fast float %10073, %10068
  %10075 = fmul fast float %10069, -7.500000e-01
  %10076 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10070, float %10075)  ; FMad(a,b,c)
  %10077 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10066, float 0.000000e+00)  ; FMad(a,b,c)
  %10078 = fadd fast float %10077, %10068
  %10079 = call float @dx.op.binary.f32(i32 35, float %10072, float -1.000000e+00)  ; FMax(a,b)
  %10080 = call float @dx.op.binary.f32(i32 35, float %10074, float -1.000000e+00)  ; FMax(a,b)
  %10081 = call float @dx.op.binary.f32(i32 35, float %10076, float -1.000000e+00)  ; FMax(a,b)
  %10082 = call float @dx.op.binary.f32(i32 35, float %10078, float -1.000000e+00)  ; FMax(a,b)
  %10083 = call float @dx.op.binary.f32(i32 36, float %10079, float 1.000000e+00)  ; FMin(a,b)
  %10084 = call float @dx.op.binary.f32(i32 36, float %10080, float 1.000000e+00)  ; FMin(a,b)
  %10085 = call float @dx.op.binary.f32(i32 36, float %10081, float 1.000000e+00)  ; FMin(a,b)
  %10086 = call float @dx.op.binary.f32(i32 36, float %10082, float 1.000000e+00)  ; FMin(a,b)
  %10087 = fcmp fast olt float %10083, 0x3FEFFF8020000000
  br i1 %10087, label %10088, label %10203, !dx.controlflow.hints !187

; <label>:10088                                   ; preds = %10055
  %10089 = extractvalue %dx.types.CBufRet.f32 %9971, 3
  %10090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10091 = extractvalue %dx.types.CBufRet.f32 %10090, 0
  %10092 = extractvalue %dx.types.CBufRet.f32 %10090, 1
  %10093 = extractvalue %dx.types.CBufRet.f32 %10090, 2
  %10094 = extractvalue %dx.types.CBufRet.f32 %10090, 3
  %10095 = fsub fast float %10091, %10083
  %10096 = fsub fast float %10092, %10084
  %10097 = fsub fast float %10093, %10085
  %10098 = fsub fast float %10094, %10086
  %10099 = fmul fast float %10095, %10089
  %10100 = fmul fast float %10096, %10089
  %10101 = fmul fast float %10097, %10089
  %10102 = fmul fast float %10098, %10089
  %10103 = fadd fast float %10099, %10083
  %10104 = fadd fast float %10100, %10084
  %10105 = fsub fast float -0.000000e+00, %10104
  %10106 = fadd fast float %10101, %10085
  %10107 = fadd fast float %10102, %10086
  %10108 = fmul fast float %10103, %10103
  %10109 = fsub fast float %10104, %10108
  %10110 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10109)  ; FMax(a,b)
  %10111 = fdiv fast float 1.000000e+00, %10110
  %10112 = fmul fast float %10104, %10103
  %10113 = fsub fast float %10106, %10112
  %10114 = fsub fast float %10063, %10103
  %10115 = fmul fast float %10063, %10063
  %10116 = fsub fast float %10115, %10104
  %10117 = fmul fast float %10114, %10111
  %10118 = fmul fast float %10117, %10113
  %10119 = fsub fast float %10116, %10118
  %10120 = fmul fast float %10104, %10104
  %10121 = fsub fast float %10107, %10120
  %10122 = fmul fast float %10113, %10113
  %10123 = fmul fast float %10122, %10111
  %10124 = fsub fast float %10121, %10123
  %10125 = fdiv fast float %10119, %10124
  %10126 = fmul fast float %10113, %10125
  %10127 = fsub fast float %10114, %10126
  %10128 = fmul fast float %10127, %10111
  %10129 = fmul fast float %10128, %10103
  %10130 = fsub fast float 1.000000e+00, %10129
  %10131 = fmul fast float %10104, %10125
  %10132 = fsub fast float %10130, %10131
  %10133 = fmul fast float %10128, %10128
  %10134 = fmul fast float %10125, 4.000000e+00
  %10135 = fmul fast float %10134, %10132
  %10136 = fsub fast float %10133, %10135
  %10137 = call float @dx.op.unary.f32(i32 24, float %10136)  ; Sqrt(value)
  %10138 = fcmp fast oge float %10128, 0.000000e+00
  %10139 = fsub fast float -0.000000e+00, %10137
  %10140 = select i1 %10138, float %10139, float %10137
  %10141 = fsub fast float %10140, %10128
  %10142 = fdiv fast float %10141, %10125
  %10143 = fdiv fast float %10132, %10141
  %10144 = fmul fast float %10142, 5.000000e-01
  %10145 = fmul fast float %10143, 2.000000e+00
  %10146 = select i1 %10138, float %10144, float %10145
  %10147 = select i1 %10138, float %10145, float %10144
  %10148 = call float @dx.op.binary.f32(i32 35, float %10146, float %10147)  ; FMax(a,b)
  %10149 = call float @dx.op.binary.f32(i32 36, float %10146, float %10147)  ; FMin(a,b)
  %10150 = fcmp fast ogt float %10063, %10149
  br i1 %10150, label %10151, label %10161

; <label>:10151                                   ; preds = %10088
  %10152 = fsub fast float %10063, %10149
  %10153 = fsub fast float %10148, %10149
  %10154 = fmul fast float %10152, %10153
  %10155 = fmul fast float %10148, %10063
  %10156 = fadd fast float %10148, %10063
  %10157 = fmul fast float %10156, %10103
  %10158 = fadd fast float %10155, %10104
  %10159 = fsub fast float %10158, %10157
  %10160 = fdiv fast float %10159, %10154
  br label %10161

; <label>:10161                                   ; preds = %10151, %10088
  %10162 = phi float [ %10160, %10151 ], [ 0.000000e+00, %10088 ]
  %10163 = fcmp fast ogt float %10063, %10148
  %10164 = fsub fast float %10063, %10148
  br i1 %10163, label %10165, label %10175

; <label>:10165                                   ; preds = %10161
  %10166 = fsub fast float %10148, %10149
  %10167 = fmul fast float %10166, %10164
  %10168 = fmul fast float %10149, %10063
  %10169 = fadd fast float %10149, %10063
  %10170 = fmul fast float %10169, %10103
  %10171 = fsub fast float %10105, %10168
  %10172 = fadd fast float %10171, %10170
  %10173 = fdiv fast float %10172, %10167
  %10174 = fadd fast float %10173, %10162
  br label %10175

; <label>:10175                                   ; preds = %10165, %10161
  %10176 = phi float [ %10174, %10165 ], [ %10162, %10161 ]
  %10177 = fsub fast float %10063, %10149
  %10178 = fmul fast float %10177, %10164
  %10179 = fmul fast float %10149, %10148
  %10180 = fadd fast float %10149, %10148
  %10181 = fmul fast float %10180, %10103
  %10182 = fadd fast float %10179, %10104
  %10183 = fsub fast float %10182, %10181
  %10184 = fdiv fast float %10183, %10178
  %10185 = call float @dx.op.unary.f32(i32 7, float %10176)  ; Saturate(value)
  %10186 = fcmp fast oeq float %8854, 0.000000e+00
  %10187 = extractvalue %dx.types.CBufRet.f32 %9971, 0
  %10188 = fcmp fast oeq float %10187, 0.000000e+00
  %10189 = or i1 %10186, %10188
  %10190 = fmul fast float %10187, 2.000000e+00
  %10191 = fadd fast float %9972, %9973
  %10192 = fdiv fast float %10191, %10190
  %10193 = call float @dx.op.unary.f32(i32 7, float %10192)  ; Saturate(value)
  %10194 = fmul fast float %10193, 2.000000e+00
  %10195 = fsub fast float 3.000000e+00, %10194
  %10196 = fmul fast float %10193, %10193
  %10197 = fmul fast float %10196, %10195
  %10198 = select i1 %10189, float 1.000000e+00, float %10197
  %10199 = fmul fast float %10184, %8854
  %10200 = fadd fast float %10185, %10199
  %10201 = call float @dx.op.unary.f32(i32 7, float %10200)  ; Saturate(value)
  %10202 = fmul fast float %10198, %10201
  br label %10203

; <label>:10203                                   ; preds = %10175, %10055
  %10204 = phi float [ %10202, %10175 ], [ 0.000000e+00, %10055 ]
  %10205 = fsub fast float 1.000000e+00, %10204
  %10206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %55, float %9925, float %9926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10207 = extractvalue %dx.types.ResRet.f32 %10206, 0
  %10208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10209 = extractvalue %dx.types.CBufRet.i32 %10208, 2
  %10210 = icmp eq i32 %10209, 0
  br i1 %10210, label %10216, label %10211

; <label>:10211                                   ; preds = %10203
  %10212 = call float @dx.op.unary.f32(i32 7, float %10204)  ; Saturate(value)
  %10213 = fadd fast float %10207, -1.000000e+00
  %10214 = fmul fast float %10212, %10213
  %10215 = fadd fast float %10214, 1.000000e+00
  br label %10216

; <label>:10216                                   ; preds = %10211, %10203
  %10217 = phi float [ %10215, %10211 ], [ %10205, %10203 ]
  br i1 %9979, label %10218, label %10236

; <label>:10218                                   ; preds = %10216
  %10219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10220 = extractvalue %dx.types.CBufRet.f32 %10219, 1
  %10221 = fsub fast float %10056, %10220
  %10222 = call float @dx.op.unary.f32(i32 7, float %10221)  ; Saturate(value)
  %10223 = fsub fast float %10056, %9978
  %10224 = call float @dx.op.unary.f32(i32 7, float %10223)  ; Saturate(value)
  %10225 = fsub fast float %10222, %10224
  %10226 = fsub fast float %10058, %10224
  %10227 = fdiv fast float %10226, %10225
  %10228 = call float @dx.op.unary.f32(i32 7, float %10227)  ; Saturate(value)
  %10229 = fmul fast float %10228, 2.000000e+00
  %10230 = fsub fast float 3.000000e+00, %10229
  %10231 = fsub fast float %10207, %10217
  %10232 = fmul fast float %10228, %10228
  %10233 = fmul fast float %10232, %10231
  %10234 = fmul fast float %10233, %10230
  %10235 = fadd fast float %10234, %10217
  br label %10236

; <label>:10236                                   ; preds = %10218, %10216
  %10237 = phi float [ %10235, %10218 ], [ %10217, %10216 ]
  %10238 = call float @dx.op.binary.f32(i32 35, float %10207, float %10237)  ; FMax(a,b)
  %10239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10240 = extractvalue %dx.types.CBufRet.i32 %10239, 2
  %10241 = and i32 %10240, 1
  %10242 = icmp eq i32 %10241, 0
  %10243 = fcmp fast une float %10238, 1.000000e+00
  %10244 = and i1 %10243, %10242
  br i1 %10244, label %10245, label %10264

; <label>:10245                                   ; preds = %10236
  %10246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %55, float %9925, float %9926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10247 = extractvalue %dx.types.ResRet.f32 %10246, 0
  %10248 = extractvalue %dx.types.ResRet.f32 %10246, 1
  %10249 = extractvalue %dx.types.ResRet.f32 %10246, 2
  %10250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10251 = extractvalue %dx.types.CBufRet.f32 %10250, 1
  %10252 = fmul fast float %10251, %10247
  %10253 = fmul fast float %10251, %10248
  %10254 = fmul fast float %10251, %10249
  %10255 = fcmp fast ogt float %10207, 0x3FEFFF2E40000000
  %10256 = fsub fast float 1.000000e+00, %10238
  %10257 = fsub fast float 1.000000e+00, %10207
  %10258 = fdiv fast float %10256, %10257
  %10259 = call float @dx.op.unary.f32(i32 7, float %10258)  ; Saturate(value)
  %10260 = select i1 %10255, float 0.000000e+00, float %10259
  %10261 = fmul fast float %10252, %10260
  %10262 = fmul fast float %10253, %10260
  %10263 = fmul fast float %10254, %10260
  br label %10264

; <label>:10264                                   ; preds = %10245, %10236
  %10265 = phi float [ 0.000000e+00, %10236 ], [ %10261, %10245 ]
  %10266 = phi float [ 0.000000e+00, %10236 ], [ %10262, %10245 ]
  %10267 = phi float [ 0.000000e+00, %10236 ], [ %10263, %10245 ]
  %10268 = fmul fast float %10265, %8838
  %10269 = fmul fast float %10266, %8840
  %10270 = fmul fast float %10267, %8842
  %10271 = fmul fast float %10238, %9900
  %10272 = call float @dx.op.dot3.f32(i32 55, float %10238, float %10238, float %10238, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10273 = call float @dx.op.dot3.f32(i32 55, float %10268, float %10269, float %10270, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10274 = select i1 %275, float %10272, float %10238
  %10275 = select i1 %275, float 1.000000e+00, float %10238
  %10276 = select i1 %275, float %10273, float %10268
  %10277 = select i1 %275, float 0.000000e+00, float %10269
  %10278 = select i1 %275, float 0.000000e+00, float %10270
  %10279 = fmul fast float %10274, %9912
  %10280 = fmul fast float %10274, %9913
  %10281 = fmul fast float %10275, %9914
  %10282 = fadd fast float %10279, %10276
  %10283 = fadd fast float %10280, %10277
  %10284 = fadd fast float %10278, %10281
  %10285 = fmul fast float %10274, %9915
  %10286 = fmul fast float %10274, %9916
  %10287 = fmul fast float %10275, %9917
  br label %10288

; <label>:10288                                   ; preds = %10264, %9921, %9890, %9122
  %10289 = phi float [ %9127, %9122 ], [ %9912, %9890 ], [ %10282, %10264 ], [ %9912, %9921 ]
  %10290 = phi float [ %9128, %9122 ], [ %9913, %9890 ], [ %10283, %10264 ], [ %9913, %9921 ]
  %10291 = phi float [ %9129, %9122 ], [ %9914, %9890 ], [ %10284, %10264 ], [ %9914, %9921 ]
  %10292 = phi float [ %9130, %9122 ], [ %9915, %9890 ], [ %10285, %10264 ], [ %9915, %9921 ]
  %10293 = phi float [ %9131, %9122 ], [ %9916, %9890 ], [ %10286, %10264 ], [ %9916, %9921 ]
  %10294 = phi float [ %9132, %9122 ], [ %9917, %9890 ], [ %10287, %10264 ], [ %9917, %9921 ]
  %10295 = phi float [ %9133, %9122 ], [ %9900, %9890 ], [ %10271, %10264 ], [ %9900, %9921 ]
  %10296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10297 = extractvalue %dx.types.CBufRet.f32 %10296, 2
  %10298 = extractvalue %dx.types.CBufRet.f32 %10296, 3
  %10299 = fmul fast float %10297, %116
  %10300 = fmul fast float %10298, %117
  %10301 = call float @dx.op.unary.f32(i32 7, float %10299)  ; Saturate(value)
  %10302 = call float @dx.op.unary.f32(i32 7, float %10300)  ; Saturate(value)
  %10303 = select i1 %8864, i32 2, i32 0
  %10304 = or i32 %10303, 1
  %10305 = uitofp i32 %10304 to float
  %10306 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %10301, float %10302, float %10305, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10307 = extractvalue %dx.types.ResRet.f32 %10306, 0
  %10308 = extractvalue %dx.types.ResRet.f32 %10306, 1
  %10309 = extractvalue %dx.types.ResRet.f32 %10306, 2
  %10310 = extractvalue %dx.types.ResRet.f32 %10306, 3
  %10311 = add nuw nsw i32 %10303, 2
  %10312 = uitofp i32 %10311 to float
  %10313 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %10301, float %10302, float %10312, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10314 = extractvalue %dx.types.ResRet.f32 %10313, 0
  %10315 = extractvalue %dx.types.ResRet.f32 %10313, 1
  %10316 = extractvalue %dx.types.ResRet.f32 %10313, 2
  %10317 = extractvalue %dx.types.ResRet.f32 %10313, 3
  %10318 = call float @dx.op.binary.f32(i32 35, float %10308, float %10309)  ; FMax(a,b)
  %10319 = call float @dx.op.binary.f32(i32 35, float %10307, float %10318)  ; FMax(a,b)
  %10320 = call float @dx.op.binary.f32(i32 35, float %10319, float %10310)  ; FMax(a,b)
  %10321 = call float @dx.op.binary.f32(i32 36, float %10315, float %10316)  ; FMin(a,b)
  %10322 = call float @dx.op.binary.f32(i32 36, float %10314, float %10321)  ; FMin(a,b)
  %10323 = call float @dx.op.binary.f32(i32 36, float %10322, float %10317)  ; FMin(a,b)
  %10324 = fmul fast float %10320, 2.550000e+02
  %10325 = fadd fast float %10324, 0x3F70101020000000
  %10326 = fptoui float %10325 to i32
  %10327 = fmul fast float %10323, 2.550000e+02
  %10328 = fadd fast float %10327, 0x3F70101020000000
  %10329 = fptoui float %10328 to i32
  %10330 = icmp ult i32 %10326, %10329
  br i1 %10330, label %10331, label %10500

; <label>:10331                                   ; preds = %10288
  %10332 = fcmp fast ogt float %102, 9.843750e-01
  %10333 = fadd fast float %9126, -4.000000e+00
  %10334 = select i1 %10332, float -4.000000e+00, float %10333
  %10335 = call float @dx.op.binary.f32(i32 35, float %10334, float 0.000000e+00)  ; FMax(a,b)
  %10336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10337 = extractvalue %dx.types.CBufRet.f32 %10336, 0
  %10338 = fadd fast float %10337, %10335
  %10339 = extractvalue %dx.types.CBufRet.f32 %10336, 2
  %10340 = fmul fast float %10338, %10339
  %10341 = call float @dx.op.unary.f32(i32 23, float %10340)  ; Log(value)
  %10342 = extractvalue %dx.types.CBufRet.f32 %10336, 3
  %10343 = fmul fast float %10342, %10341
  %10344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10345 = extractvalue %dx.types.CBufRet.f32 %10344, 2
  %10346 = fmul fast float %10343, %10345
  %10347 = call float @dx.op.unary.f32(i32 7, float %10346)  ; Saturate(value)
  %10348 = uitofp i32 %10326 to float
  %10349 = uitofp i32 %10329 to float
  %10350 = fadd fast float %10348, 5.000000e-01
  %10351 = fadd fast float %10349, 5.000000e-01
  %10352 = fmul fast float %10345, %10350
  %10353 = fmul fast float %10345, %10351
  %10354 = fadd fast float %10352, 0x3F0FFB4800000000
  %10355 = fadd fast float %10353, 0xBF0FFB4800000000
  %10356 = call float @dx.op.binary.f32(i32 35, float %10347, float %10354)  ; FMax(a,b)
  %10357 = call float @dx.op.binary.f32(i32 36, float %10356, float %10355)  ; FMin(a,b)
  %10358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10359 = extractvalue %dx.types.CBufRet.f32 %10358, 1
  %10360 = extractvalue %dx.types.CBufRet.f32 %10358, 2
  %10361 = extractvalue %dx.types.CBufRet.f32 %10358, 0
  %10362 = select i1 %8864, float %10361, float 0.000000e+00
  %10363 = fmul fast float %10359, %10357
  %10364 = fadd fast float %10362, %10363
  %10365 = fadd fast float %10362, %10360
  %10366 = fsub fast float %10359, %10360
  %10367 = fadd fast float %10366, %10362
  %10368 = call float @dx.op.binary.f32(i32 35, float %10364, float %10365)  ; FMax(a,b)
  %10369 = call float @dx.op.binary.f32(i32 36, float %10368, float %10367)  ; FMin(a,b)
  %10370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %10301, float %10302, float %10369, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10371 = extractvalue %dx.types.ResRet.f32 %10370, 0
  %10372 = extractvalue %dx.types.ResRet.f32 %10370, 1
  %10373 = extractvalue %dx.types.ResRet.f32 %10370, 2
  %10374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10375 = extractvalue %dx.types.CBufRet.i32 %10374, 0
  %10376 = extractvalue %dx.types.CBufRet.i32 %10374, 1
  %10377 = uitofp i32 %10375 to float
  %10378 = uitofp i32 %10376 to float
  %10379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10380 = extractvalue %dx.types.CBufRet.f32 %10379, 0
  %10381 = extractvalue %dx.types.CBufRet.f32 %10379, 1
  %10382 = fmul fast float %10377, %10301
  %10383 = fmul fast float %10378, %10302
  %10384 = fadd fast float %10382, -5.000000e-01
  %10385 = fadd fast float %10383, -5.000000e-01
  %10386 = call float @dx.op.unary.f32(i32 22, float %10384)  ; Frc(value)
  %10387 = call float @dx.op.unary.f32(i32 22, float %10385)  ; Frc(value)
  %10388 = fmul fast float %10386, %10386
  %10389 = fmul fast float %10388, %10386
  %10390 = fsub fast float 3.000000e+00, %10386
  %10391 = fmul fast float %10388, %10390
  %10392 = fmul fast float %10386, 3.000000e+00
  %10393 = fmul fast float %10389, 3.000000e+00
  %10394 = fmul fast float %10388, 6.000000e+00
  %10395 = fsub fast float %10393, %10394
  %10396 = fadd fast float %10395, 4.000000e+00
  %10397 = fmul fast float %10396, 0x3FC5555560000000
  %10398 = fmul fast float %10389, -3.000000e+00
  %10399 = fadd fast float %10388, %10386
  %10400 = fmul fast float %10399, 3.000000e+00
  %10401 = fadd fast float %10398, 1.000000e+00
  %10402 = fadd fast float %10401, %10400
  %10403 = fmul fast float %10389, 0x3FC5555560000000
  %10404 = fmul fast float %10387, %10387
  %10405 = fmul fast float %10404, %10387
  %10406 = fsub fast float 3.000000e+00, %10387
  %10407 = fmul fast float %10404, %10406
  %10408 = fmul fast float %10387, 3.000000e+00
  %10409 = fmul fast float %10405, 3.000000e+00
  %10410 = fmul fast float %10404, 6.000000e+00
  %10411 = fsub fast float %10409, %10410
  %10412 = fadd fast float %10411, 4.000000e+00
  %10413 = fmul fast float %10412, 0x3FC5555560000000
  %10414 = fmul fast float %10405, -3.000000e+00
  %10415 = fadd fast float %10404, %10387
  %10416 = fmul fast float %10415, 3.000000e+00
  %10417 = fadd fast float %10414, 1.000000e+00
  %10418 = fadd fast float %10417, %10416
  %10419 = fmul fast float %10405, 0x3FC5555560000000
  %10420 = fadd fast float %10386, 1.000000e+00
  %10421 = fsub fast float 1.000000e+00, %10392
  %10422 = fadd fast float %10421, %10391
  %10423 = fadd fast float %10422, %10396
  %10424 = fmul fast float %10423, 0x3FC5555560000000
  %10425 = fdiv fast float %10397, %10424
  %10426 = fsub fast float %10420, %10425
  %10427 = fsub fast float 1.000000e+00, %10386
  %10428 = fadd fast float %10402, %10389
  %10429 = fmul fast float %10428, 0x3FC5555560000000
  %10430 = fdiv fast float %10403, %10429
  %10431 = fadd fast float %10427, %10430
  %10432 = fadd fast float %10387, 1.000000e+00
  %10433 = fsub fast float 1.000000e+00, %10408
  %10434 = fadd fast float %10433, %10407
  %10435 = fadd fast float %10434, %10412
  %10436 = fmul fast float %10435, 0x3FC5555560000000
  %10437 = fdiv fast float %10413, %10436
  %10438 = fsub fast float %10432, %10437
  %10439 = fsub fast float 1.000000e+00, %10387
  %10440 = fadd fast float %10418, %10405
  %10441 = fmul fast float %10440, 0x3FC5555560000000
  %10442 = fdiv fast float %10419, %10441
  %10443 = fadd fast float %10442, %10439
  %10444 = fmul fast float %10426, %10380
  %10445 = fsub fast float %10301, %10444
  %10446 = fmul fast float %10431, %10380
  %10447 = fadd fast float %10446, %10301
  %10448 = fmul fast float %10443, %10381
  %10449 = fadd fast float %10448, %10302
  %10450 = fmul fast float %10438, %10381
  %10451 = fsub fast float %10302, %10450
  %10452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10445, float %10451, float %10369, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10453 = extractvalue %dx.types.ResRet.f32 %10452, 0
  %10454 = extractvalue %dx.types.ResRet.f32 %10452, 1
  %10455 = extractvalue %dx.types.ResRet.f32 %10452, 2
  %10456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10447, float %10451, float %10369, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10457 = extractvalue %dx.types.ResRet.f32 %10456, 0
  %10458 = extractvalue %dx.types.ResRet.f32 %10456, 1
  %10459 = extractvalue %dx.types.ResRet.f32 %10456, 2
  %10460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10445, float %10449, float %10369, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10461 = extractvalue %dx.types.ResRet.f32 %10460, 0
  %10462 = extractvalue %dx.types.ResRet.f32 %10460, 1
  %10463 = extractvalue %dx.types.ResRet.f32 %10460, 2
  %10464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10447, float %10449, float %10369, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10465 = extractvalue %dx.types.ResRet.f32 %10464, 0
  %10466 = extractvalue %dx.types.ResRet.f32 %10464, 1
  %10467 = extractvalue %dx.types.ResRet.f32 %10464, 2
  %10468 = fsub fast float %10461, %10453
  %10469 = fsub fast float %10462, %10454
  %10470 = fsub fast float %10463, %10455
  %10471 = fmul fast float %10468, %10441
  %10472 = fmul fast float %10469, %10441
  %10473 = fmul fast float %10470, %10441
  %10474 = fadd fast float %10471, %10453
  %10475 = fadd fast float %10472, %10454
  %10476 = fadd fast float %10473, %10455
  %10477 = fsub fast float %10465, %10457
  %10478 = fsub fast float %10466, %10458
  %10479 = fsub fast float %10467, %10459
  %10480 = fmul fast float %10477, %10441
  %10481 = fmul fast float %10478, %10441
  %10482 = fmul fast float %10479, %10441
  %10483 = fsub fast float %10457, %10474
  %10484 = fadd fast float %10483, %10480
  %10485 = fsub fast float %10458, %10475
  %10486 = fadd fast float %10485, %10481
  %10487 = fsub fast float %10459, %10476
  %10488 = fadd fast float %10487, %10482
  %10489 = fmul fast float %10484, %10429
  %10490 = fmul fast float %10486, %10429
  %10491 = fmul fast float %10488, %10429
  %10492 = fadd fast float %10489, %10474
  %10493 = fadd fast float %10490, %10475
  %10494 = fadd fast float %10491, %10476
  %10495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10496 = extractvalue %dx.types.CBufRet.f32 %10495, 1
  %10497 = fmul fast float %10492, %10496
  %10498 = fmul fast float %10493, %10496
  %10499 = fmul fast float %10494, %10496
  br label %10500

; <label>:10500                                   ; preds = %10331, %10288
  %10501 = phi float [ %10371, %10331 ], [ 1.000000e+00, %10288 ]
  %10502 = phi float [ %10372, %10331 ], [ 1.000000e+00, %10288 ]
  %10503 = phi float [ %10373, %10331 ], [ 1.000000e+00, %10288 ]
  %10504 = phi float [ %10497, %10331 ], [ 0.000000e+00, %10288 ]
  %10505 = phi float [ %10498, %10331 ], [ 0.000000e+00, %10288 ]
  %10506 = phi float [ %10499, %10331 ], [ 0.000000e+00, %10288 ]
  %10507 = fmul fast float %10504, %8838
  %10508 = fmul fast float %10505, %8840
  %10509 = fmul fast float %10506, %8842
  %10510 = fmul fast float %10501, %10295
  %10511 = call float @dx.op.dot3.f32(i32 55, float %10501, float %10502, float %10503, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10512 = call float @dx.op.dot3.f32(i32 55, float %10507, float %10508, float %10509, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10513 = select i1 %275, float %10511, float %10501
  %10514 = select i1 %275, float %10511, float %10502
  %10515 = select i1 %275, float 1.000000e+00, float %10503
  %10516 = select i1 %275, float %10512, float %10507
  %10517 = select i1 %275, float 0.000000e+00, float %10508
  %10518 = select i1 %275, float 0.000000e+00, float %10509
  %10519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10520 = extractvalue %dx.types.CBufRet.i32 %10519, 3
  %10521 = and i32 %10520, 3
  %10522 = icmp ne i32 %10521, 0
  %10523 = and i32 %10520, 4
  %10524 = icmp ne i32 %10523, 0
  %10525 = and i1 %10522, %10524
  %10526 = and i1 %275, %10525
  br i1 %10526, label %10527, label %10533

; <label>:10527                                   ; preds = %10500
  %10528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10529 = extractvalue %dx.types.CBufRet.f32 %10528, 1
  %10530 = fadd fast float %10510, -1.000000e+00
  %10531 = fmul fast float %10529, %10530
  %10532 = fadd fast float %10531, 1.000000e+00
  br label %10533

; <label>:10533                                   ; preds = %10527, %10500
  %10534 = phi float [ %10532, %10527 ], [ %10510, %10500 ]
  %10535 = fadd fast float %10292, %10289
  %10536 = fmul fast float %10513, %10535
  %10537 = fadd fast float %10536, %10516
  %10538 = fadd fast float %10293, %10290
  %10539 = fmul fast float %10514, %10538
  %10540 = fadd fast float %10539, %10517
  %10541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10542 = extractvalue %dx.types.CBufRet.f32 %10541, 0
  br i1 %275, label %10543, label %10558

; <label>:10543                                   ; preds = %10533
  %10544 = fadd fast float %10537, %10540
  %10545 = fmul fast float %10542, %10544
  %10546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10547 = extractvalue %dx.types.CBufRet.f32 %10546, 3
  %10548 = extractvalue %dx.types.CBufRet.f32 %8846, 1
  %10549 = fsub fast float %8851, %8845
  %10550 = fadd fast float %10549, %8852
  %10551 = fsub fast float %10550, %10548
  %10552 = extractvalue %dx.types.CBufRet.f32 %8846, 2
  %10553 = fmul fast float %10551, %10552
  %10554 = call float @dx.op.unary.f32(i32 7, float %10553)  ; Saturate(value)
  %10555 = fsub fast float %10554, %10547
  %10556 = fmul fast float %10555, %10534
  %10557 = fadd fast float %10556, %10547
  br label %10584

; <label>:10558                                   ; preds = %10533
  %10559 = fadd fast float %10294, %10291
  %10560 = fmul fast float %10515, %10559
  %10561 = fadd fast float %10560, %10518
  %10562 = fmul fast float %10542, %10537
  %10563 = fmul fast float %10542, %10540
  %10564 = fmul fast float %10542, %10561
  %10565 = call float @dx.op.binary.f32(i32 35, float %10563, float %10564)  ; FMax(a,b)
  %10566 = call float @dx.op.binary.f32(i32 35, float %10562, float %10565)  ; FMax(a,b)
  %10567 = call float @dx.op.binary.f32(i32 35, float %8840, float %8842)  ; FMax(a,b)
  %10568 = call float @dx.op.binary.f32(i32 35, float %8838, float %10567)  ; FMax(a,b)
  %10569 = call float @dx.op.binary.f32(i32 35, float %10566, float %10568)  ; FMax(a,b)
  %10570 = fcmp fast ugt float %10569, 0x3F10000000000000
  br i1 %10570, label %10572, label %10571

; <label>:10571                                   ; preds = %10558
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10572

; <label>:10572                                   ; preds = %10571, %10558
  %10573 = add i32 %61, 356
  %10574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %10573, i32 undef)  ; BufferLoad(srv,index,wot)
  %10575 = extractvalue %dx.types.ResRet.i32 %10574, 0
  %10576 = and i32 %10575, 32
  %10577 = icmp eq i32 %10576, 0
  br i1 %10577, label %10584, label %10578

; <label>:10578                                   ; preds = %10572
  %10579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10580 = extractvalue %dx.types.CBufRet.f32 %10579, 0
  %10581 = fmul fast float %10580, 0x3FE99999A0000000
  %10582 = fadd fast float %10580, %10562
  %10583 = fadd fast float %10581, %10564
  br label %10584

; <label>:10584                                   ; preds = %10578, %10572, %10543
  %10585 = phi float [ 1.000000e+00, %10543 ], [ %8840, %10578 ], [ %8840, %10572 ]
  %10586 = phi float [ 1.000000e+00, %10543 ], [ %8842, %10578 ], [ %8842, %10572 ]
  %10587 = phi float [ %10545, %10543 ], [ %10582, %10578 ], [ %10562, %10572 ]
  %10588 = phi float [ %10557, %10543 ], [ %10563, %10578 ], [ %10563, %10572 ]
  %10589 = phi float [ 1.000000e+00, %10543 ], [ %10583, %10578 ], [ %10564, %10572 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10590 = call float @dx.op.binary.f32(i32 36, float %10587, float 3.225500e+04)  ; FMin(a,b)
  %10591 = call float @dx.op.binary.f32(i32 36, float %10588, float 3.225500e+04)  ; FMin(a,b)
  %10592 = call float @dx.op.binary.f32(i32 36, float %10589, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10590)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10591)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10592)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10593 = call float @dx.op.binary.f32(i32 36, float %8838, float 3.225500e+04)  ; FMin(a,b)
  %10594 = call float @dx.op.binary.f32(i32 36, float %10585, float 3.225500e+04)  ; FMin(a,b)
  %10595 = call float @dx.op.binary.f32(i32 36, float %10586, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10593)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10594)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10595)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!74 = !{[58 x i32] [i32 56, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!75 = !{void ()* @ps_main, !"ps_main", !76, !4, !103}
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
!99 = !{!100, !101}
!100 = !{i32 0, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 0, i8 0, !80}
!101 = !{i32 1, !"SV_Target", i8 9, i8 16, !102, i8 0, i32 1, i8 4, i32 1, i8 0, !80}
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

