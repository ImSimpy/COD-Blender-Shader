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
; shader hash: 3be29d2ffcd2748f27742cb533b56c68
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
  %469 = add i32 %61, 492
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
  br i1 %525, label %1060, label %526

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
  %1047 = add i32 %61, 96
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = and i32 %1049, 255
  %1051 = uitofp i32 %1050 to float
  %1052 = lshr i32 %1049, 8
  %1053 = and i32 %1052, 255
  %1054 = uitofp i32 %1053 to float
  %1055 = call float @dx.op.dot3.f32(i32 55, float %916, float %917, float %918, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1056 = fmul fast float %1054, %1055
  %1057 = fadd fast float %1056, %1051
  %1058 = fmul fast float %1057, 0x3F70101020000000
  %1059 = call float @dx.op.unary.f32(i32 7, float %1058)  ; Saturate(value)
  br label %1060

; <label>:1060                                    ; preds = %1043, %511
  %1061 = phi float [ 0.000000e+00, %511 ], [ %997, %1043 ]
  %1062 = phi float [ 0.000000e+00, %511 ], [ %998, %1043 ]
  %1063 = phi float [ 0.000000e+00, %511 ], [ %916, %1043 ]
  %1064 = phi float [ 0.000000e+00, %511 ], [ %917, %1043 ]
  %1065 = phi float [ 0.000000e+00, %511 ], [ %918, %1043 ]
  %1066 = phi float [ 0.000000e+00, %511 ], [ %1044, %1043 ]
  %1067 = phi float [ 0.000000e+00, %511 ], [ %1045, %1043 ]
  %1068 = phi float [ 0.000000e+00, %511 ], [ %1046, %1043 ]
  %1069 = phi float [ 0.000000e+00, %511 ], [ %902, %1043 ]
  %1070 = phi float [ 0.000000e+00, %511 ], [ %698, %1043 ]
  %1071 = phi float [ 0.000000e+00, %511 ], [ %996, %1043 ]
  %1072 = phi float [ 0.000000e+00, %511 ], [ %999, %1043 ]
  %1073 = phi float [ 0.000000e+00, %511 ], [ %1059, %1043 ]
  br i1 %459, label %1800, label %1074

; <label>:1074                                    ; preds = %1060
  %1075 = icmp ult i32 %517, 2
  %1076 = add i32 %61, 40
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = add i32 %61, 44
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = or i32 %1081, %1078
  %1083 = icmp eq i32 %1082, 0
  br i1 %1083, label %1800, label %1084

; <label>:1084                                    ; preds = %1074
  %1085 = and i32 %1078, 262144
  %1086 = icmp ne i32 %1085, 0
  %1087 = select i1 %1086, float %67, float 1.000000e+00
  %1088 = select i1 %1086, float %68, float 0.000000e+00
  %1089 = select i1 %1086, float %69, float 0.000000e+00
  %1090 = select i1 %1086, float %70, float 1.000000e+00
  %1091 = select i1 %1086, float %71, float %94
  %1092 = select i1 %1086, float %72, float %95
  %1093 = add i32 %61, 300
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = lshr i32 %1095, 16
  %1097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1096)  ; LegacyF16ToF32(value)
  %1098 = fmul fast float %1097, 0x3F50624DE0000000
  %1099 = add i32 %61, 104
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = lshr i32 %1101, 16
  %1103 = and i32 %1102, 255
  %1104 = lshr i32 %1101, 24
  %1105 = add i32 %61, 308
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = and i32 %1107, 65535
  %1109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1108)  ; LegacyF16ToF32(value)
  %1110 = lshr i32 %1107, 16
  %1111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1110)  ; LegacyF16ToF32(value)
  %1112 = add i32 %61, 48
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 3
  %1126 = fmul fast float %1125, 1.000000e+03
  %1127 = fmul fast float %369, %1126
  %1128 = call float @dx.op.unary.f32(i32 22, float %1127)  ; Frc(value)
  %1129 = fadd fast float %1128, %359
  %1130 = fmul fast float %370, %1126
  %1131 = call float @dx.op.unary.f32(i32 22, float %1130)  ; Frc(value)
  %1132 = fadd fast float %1131, %361
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
  %1158 = add i32 %61, 244
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1188 = add i32 %61, 444
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = add i32 %1190, 0
  %1192 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1191, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1193 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1192, %dx.types.Handle %113, float %1183, float %1184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = add i32 %61, 116
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1195, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = shl i32 %1197, 4
  %1199 = and i32 %1198, 32752
  %1200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1199)  ; LegacyF16ToF32(value)
  %1201 = lshr i32 %1197, 7
  %1202 = and i32 %1201, 32752
  %1203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1202)  ; LegacyF16ToF32(value)
  %1204 = fsub fast float 1.000000e+00, %514
  %1205 = call float @dx.op.binary.f32(i32 35, float %1204, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1206 = bitcast float %514 to i32
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
  %1234 = phi float [ %1232, %1187 ], [ %514, %1182 ]
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = and i32 %1236, 128
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1255, label %1239

; <label>:1239                                    ; preds = %1233
  %1240 = add i32 %61, 428
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = add i32 %1242, 0
  %1244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1243, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1245 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1244, %dx.types.Handle %113, float %1183, float %1184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %1257, label %1800, label %1258

; <label>:1258                                    ; preds = %1255
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = and i32 %1260, 16
  %1262 = icmp eq i32 %1261, 0
  br i1 %1262, label %1461, label %1263

; <label>:1263                                    ; preds = %1258
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = add i32 %61, 380
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = add i32 %1268, 0
  %1270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1269, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1271 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1270, %dx.types.Handle %112, float %1183, float %1184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  %1273 = extractvalue %dx.types.ResRet.f32 %1271, 1
  %1274 = extractvalue %dx.types.ResRet.f32 %1271, 2
  %1275 = extractvalue %dx.types.ResRet.f32 %1271, 3
  %1276 = and i32 %1265, 255
  %1277 = uitofp i32 %1276 to float
  %1278 = lshr i32 %1265, 8
  %1279 = and i32 %1278, 255
  %1280 = uitofp i32 %1279 to float
  %1281 = fmul fast float %1275, %1277
  %1282 = fadd fast float %1281, %1280
  %1283 = fmul fast float %1282, 0x3F70101000000000
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = and i32 %1285, 512
  %1287 = icmp eq i32 %1286, 0
  br i1 %1287, label %1296, label %1288

; <label>:1288                                    ; preds = %1263
  %1289 = add i32 %61, 464
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = add i32 %1291, 0
  %1293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1292, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1294 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1293, %dx.types.Handle %113, float %1183, float %1184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1295 = extractvalue %dx.types.ResRet.f32 %1294, 0
  br label %1296

; <label>:1296                                    ; preds = %1288, %1263
  %1297 = phi float [ %1295, %1288 ], [ 1.000000e+00, %1263 ]
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = and i32 %1299, 33554432
  %1301 = icmp eq i32 %1300, 0
  br i1 %1301, label %1408, label %1302

; <label>:1302                                    ; preds = %1296
  %1303 = add i32 %61, 240
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = and i32 %1305, 65535
  %1307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1306)  ; LegacyF16ToF32(value)
  %1308 = lshr i32 %1305, 16
  %1309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1308)  ; LegacyF16ToF32(value)
  %1310 = add i32 %61, 244
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = and i32 %1312, 65535
  %1314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1313)  ; LegacyF16ToF32(value)
  %1315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.i32 %1315, 0
  %1317 = lshr i32 %1316, 24
  %1318 = uitofp i32 %1317 to float
  %1319 = fmul fast float %1318, 0x3F70101020000000
  %1320 = and i32 %1316, 255
  %1321 = uitofp i32 %1320 to float
  %1322 = fmul fast float %1321, 0x3F70101020000000
  %1323 = lshr i32 %1316, 8
  %1324 = and i32 %1323, 255
  %1325 = uitofp i32 %1324 to float
  %1326 = fmul fast float %1325, 0x3F70101020000000
  %1327 = lshr i32 %1316, 16
  %1328 = and i32 %1327, 255
  %1329 = uitofp i32 %1328 to float
  %1330 = fmul fast float %1329, 0x3F70101020000000
  %1331 = add i32 %61, 236
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = lshr i32 %1333, 24
  %1335 = uitofp i32 %1334 to float
  %1336 = fmul fast float %1335, 0x3F70101020000000
  %1337 = and i32 %1333, 255
  %1338 = uitofp i32 %1337 to float
  %1339 = fmul fast float %1338, 0x3F70101020000000
  %1340 = lshr i32 %1333, 8
  %1341 = and i32 %1340, 255
  %1342 = uitofp i32 %1341 to float
  %1343 = fmul fast float %1342, 0x3F70101020000000
  %1344 = lshr i32 %1333, 16
  %1345 = and i32 %1344, 255
  %1346 = uitofp i32 %1345 to float
  %1347 = fmul fast float %1346, 0x3F70101020000000
  %1348 = bitcast float %1272 to i32
  %1349 = ashr i32 %1348, 1
  %1350 = sub nsw i32 1597463174, %1349
  %1351 = bitcast i32 %1350 to float
  %1352 = fmul fast float %1272, 5.000000e-01
  %1353 = fmul fast float %1351, %1351
  %1354 = fmul fast float %1353, %1352
  %1355 = fsub fast float 1.500000e+00, %1354
  %1356 = fmul fast float %1351, %1272
  %1357 = fmul fast float %1356, %1355
  %1358 = bitcast float %1273 to i32
  %1359 = ashr i32 %1358, 1
  %1360 = sub nsw i32 1597463174, %1359
  %1361 = bitcast i32 %1360 to float
  %1362 = fmul fast float %1273, 5.000000e-01
  %1363 = fmul fast float %1361, %1361
  %1364 = fmul fast float %1363, %1362
  %1365 = fsub fast float 1.500000e+00, %1364
  %1366 = fmul fast float %1361, %1273
  %1367 = fmul fast float %1366, %1365
  %1368 = bitcast float %1274 to i32
  %1369 = ashr i32 %1368, 1
  %1370 = sub nsw i32 1597463174, %1369
  %1371 = bitcast i32 %1370 to float
  %1372 = fmul fast float %1274, 5.000000e-01
  %1373 = fmul fast float %1371, %1371
  %1374 = fmul fast float %1373, %1372
  %1375 = fsub fast float 1.500000e+00, %1374
  %1376 = fmul fast float %1371, %1274
  %1377 = fmul fast float %1376, %1375
  %1378 = fsub fast float %1357, %1339
  %1379 = fsub fast float %1367, %1343
  %1380 = fsub fast float %1377, %1347
  %1381 = fmul fast float %1378, %1307
  %1382 = fmul fast float %1379, %1309
  %1383 = fmul fast float %1380, %1314
  %1384 = fadd fast float %1381, %1322
  %1385 = fadd fast float %1382, %1326
  %1386 = fadd fast float %1383, %1330
  %1387 = call float @dx.op.unary.f32(i32 7, float %1384)  ; Saturate(value)
  %1388 = call float @dx.op.unary.f32(i32 7, float %1385)  ; Saturate(value)
  %1389 = call float @dx.op.unary.f32(i32 7, float %1386)  ; Saturate(value)
  %1390 = fmul fast float %1387, %1387
  %1391 = fmul fast float %1388, %1388
  %1392 = fmul fast float %1389, %1389
  %1393 = fsub fast float %1390, %1272
  %1394 = fsub fast float %1391, %1273
  %1395 = fsub fast float %1392, %1274
  %1396 = fmul fast float %1393, %1297
  %1397 = fmul fast float %1394, %1297
  %1398 = fmul fast float %1395, %1297
  %1399 = fadd fast float %1396, %1272
  %1400 = fadd fast float %1397, %1273
  %1401 = fadd fast float %1398, %1274
  %1402 = fadd fast float %1319, %1283
  %1403 = fsub fast float %1402, %1336
  %1404 = call float @dx.op.unary.f32(i32 7, float %1403)  ; Saturate(value)
  %1405 = fsub fast float %1404, %1283
  %1406 = fmul fast float %1405, %1297
  %1407 = fadd fast float %1406, %1283
  br label %1461

; <label>:1408                                    ; preds = %1296
  %1409 = and i32 %1299, 134217728
  %1410 = icmp eq i32 %1409, 0
  br i1 %1410, label %1445, label %1411

; <label>:1411                                    ; preds = %1408
  %1412 = call float @dx.op.unary.f32(i32 24, float %346)  ; Sqrt(value)
  %1413 = call float @dx.op.unary.f32(i32 24, float %350)  ; Sqrt(value)
  %1414 = call float @dx.op.unary.f32(i32 24, float %354)  ; Sqrt(value)
  %1415 = fadd fast float %1412, -5.000000e-01
  %1416 = fadd fast float %1413, -5.000000e-01
  %1417 = fadd fast float %1414, -5.000000e-01
  %1418 = fmul fast float %1415, %1297
  %1419 = fmul fast float %1416, %1297
  %1420 = fmul fast float %1417, %1297
  %1421 = fadd fast float %1418, 5.000000e-01
  %1422 = fadd fast float %1419, 5.000000e-01
  %1423 = fadd fast float %1420, 5.000000e-01
  %1424 = call float @dx.op.unary.f32(i32 24, float %1272)  ; Sqrt(value)
  %1425 = call float @dx.op.unary.f32(i32 24, float %1273)  ; Sqrt(value)
  %1426 = call float @dx.op.unary.f32(i32 24, float %1274)  ; Sqrt(value)
  %1427 = fmul fast float %1421, 2.000000e+00
  %1428 = fsub fast float 1.000000e+00, %1427
  %1429 = fmul fast float %1428, %1424
  %1430 = fadd fast float %1429, %1427
  %1431 = fmul fast float %1430, %1424
  %1432 = fmul fast float %1422, 2.000000e+00
  %1433 = fsub fast float 1.000000e+00, %1432
  %1434 = fmul fast float %1433, %1425
  %1435 = fadd fast float %1434, %1432
  %1436 = fmul fast float %1435, %1425
  %1437 = fmul fast float %1423, 2.000000e+00
  %1438 = fsub fast float 1.000000e+00, %1437
  %1439 = fmul fast float %1438, %1426
  %1440 = fadd fast float %1439, %1437
  %1441 = fmul fast float %1440, %1426
  %1442 = fmul fast float %1431, %1431
  %1443 = fmul fast float %1436, %1436
  %1444 = fmul fast float %1441, %1441
  br label %1461

; <label>:1445                                    ; preds = %1408
  %1446 = fmul fast float %346, %346
  %1447 = fmul fast float %350, %350
  %1448 = fmul fast float %354, %354
  %1449 = fadd fast float %1446, -1.000000e+00
  %1450 = fadd fast float %1447, -1.000000e+00
  %1451 = fadd fast float %1448, -1.000000e+00
  %1452 = fmul fast float %1297, %1449
  %1453 = fmul fast float %1297, %1450
  %1454 = fmul fast float %1297, %1451
  %1455 = fadd fast float %1452, 1.000000e+00
  %1456 = fadd fast float %1453, 1.000000e+00
  %1457 = fadd fast float %1454, 1.000000e+00
  %1458 = fmul fast float %1455, %1272
  %1459 = fmul fast float %1456, %1273
  %1460 = fmul fast float %1457, %1274
  br label %1461

; <label>:1461                                    ; preds = %1445, %1411, %1302, %1258
  %1462 = phi float [ %1407, %1302 ], [ %1283, %1411 ], [ %1283, %1445 ], [ 0x3FA23C0BE0000000, %1258 ]
  %1463 = phi float [ %1399, %1302 ], [ %1442, %1411 ], [ %1458, %1445 ], [ 1.000000e+00, %1258 ]
  %1464 = phi float [ %1400, %1302 ], [ %1443, %1411 ], [ %1459, %1445 ], [ 1.000000e+00, %1258 ]
  %1465 = phi float [ %1401, %1302 ], [ %1444, %1411 ], [ %1460, %1445 ], [ 1.000000e+00, %1258 ]
  %1466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.i32 %1466, 1
  %1468 = and i32 %1467, 1
  %1469 = icmp ne i32 %1468, 0
  %1470 = add i32 %61, 356
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = and i32 %1472, 32
  %1474 = icmp ne i32 %1473, 0
  %1475 = and i1 %1469, %1474
  %1476 = select i1 %1475, float 1.000000e+00, float %1463
  %1477 = select i1 %1475, float 0x3FD3333340000000, float %1464
  %1478 = select i1 %1475, float 0x3FD3333340000000, float %1465
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = and i32 %1480, 32
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %1555, label %1483

; <label>:1483                                    ; preds = %1461
  %1484 = add i32 %61, 108
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = add i32 %61, 396
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = add i32 %1489, 0
  %1491 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1490, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1492 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1491, %dx.types.Handle %112, float %1183, float %1184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1493 = extractvalue %dx.types.ResRet.f32 %1492, 0
  %1494 = extractvalue %dx.types.ResRet.f32 %1492, 1
  %1495 = extractvalue %dx.types.ResRet.f32 %1492, 2
  %1496 = extractvalue %dx.types.ResRet.f32 %1492, 3
  %1497 = and i32 %1486, 255
  %1498 = uitofp i32 %1497 to float
  %1499 = lshr i32 %1486, 8
  %1500 = and i32 %1499, 255
  %1501 = uitofp i32 %1500 to float
  %1502 = lshr i32 %1486, 16
  %1503 = and i32 %1502, 255
  %1504 = uitofp i32 %1503 to float
  %1505 = fmul fast float %1504, 0x3F70101000000000
  %1506 = fmul fast float %1493, %1498
  %1507 = fadd fast float %1506, %1501
  %1508 = fmul fast float %1507, 0x3F70101000000000
  %1509 = fadd fast float %1494, -5.000000e-01
  %1510 = fadd fast float %1496, -5.000000e-01
  %1511 = fmul fast float %1509, %1505
  %1512 = fmul fast float %1510, %1505
  %1513 = fadd fast float %1511, 5.000000e-01
  %1514 = fadd fast float %1512, 5.000000e-01
  %1515 = fmul fast float %1513, 2.000000e+00
  %1516 = fadd fast float %1515, -1.000000e+00
  %1517 = fmul fast float %1514, 2.000000e+00
  %1518 = fadd fast float %1517, -1.000000e+00
  %1519 = fadd fast float %1516, %1518
  %1520 = fmul fast float %1519, 5.000000e-01
  %1521 = fsub fast float %1516, %1518
  %1522 = fmul fast float %1521, 5.000000e-01
  %1523 = call float @dx.op.unary.f32(i32 6, float %1520)  ; FAbs(value)
  %1524 = fsub fast float 1.000000e+00, %1523
  %1525 = call float @dx.op.unary.f32(i32 6, float %1522)  ; FAbs(value)
  %1526 = fsub fast float %1524, %1525
  %1527 = call float @dx.op.dot3.f32(i32 55, float %1520, float %1522, float %1526, float %1520, float %1522, float %1526)  ; Dot3(ax,ay,az,bx,by,bz)
  %1528 = call float @dx.op.unary.f32(i32 25, float %1527)  ; Rsqrt(value)
  %1529 = fmul fast float %1520, %1528
  %1530 = fmul fast float %1522, %1528
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 67108864
  %1534 = icmp eq i32 %1533, 0
  br i1 %1534, label %1551, label %1535

; <label>:1535                                    ; preds = %1483
  %1536 = add i32 %61, 296
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = and i32 %1538, 65535
  %1540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1539)  ; LegacyF16ToF32(value)
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = and i32 %1542, 65535
  %1544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1543)  ; LegacyF16ToF32(value)
  %1545 = lshr i32 %1538, 16
  %1546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1545)  ; LegacyF16ToF32(value)
  %1547 = fsub fast float %1508, %1546
  %1548 = fmul fast float %1547, %1540
  %1549 = fadd fast float %1548, %1544
  %1550 = call float @dx.op.unary.f32(i32 7, float %1549)  ; Saturate(value)
  br label %1551

; <label>:1551                                    ; preds = %1535, %1483
  %1552 = phi float [ %1550, %1535 ], [ %1508, %1483 ]
  %1553 = call float @dx.op.dot2.f32(i32 54, float %1529, float %1530, float %1087, float %1088)  ; Dot2(ax,ay,bx,by)
  %1554 = call float @dx.op.dot2.f32(i32 54, float %1529, float %1530, float %1089, float %1090)  ; Dot2(ax,ay,bx,by)
  br label %1555

; <label>:1555                                    ; preds = %1551, %1461
  %1556 = phi float [ %1552, %1551 ], [ 0x3FD6666660000000, %1461 ]
  %1557 = phi float [ %1553, %1551 ], [ 0.000000e+00, %1461 ]
  %1558 = phi float [ %1554, %1551 ], [ 0.000000e+00, %1461 ]
  %1559 = phi float [ %1495, %1551 ], [ 1.000000e+00, %1461 ]
  %1560 = add i32 %61, 176
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = lshr i32 %1562, 22
  %1564 = shl nuw nsw i32 %1563, 5
  %1565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1564)  ; LegacyF16ToF32(value)
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = and i32 %1567, 64
  %1569 = icmp eq i32 %1568, 0
  br i1 %1569, label %1603, label %1570

; <label>:1570                                    ; preds = %1555
  %1571 = add i32 %61, 412
  %1572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1571, i32 undef)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.i32 %1572, 0
  %1574 = add i32 %1573, 0
  %1575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1574, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = and i32 %1577, 131072
  %1579 = icmp eq i32 %1578, 0
  %1580 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1575, %dx.types.Handle %112, float %1183, float %1184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1581 = extractvalue %dx.types.ResRet.f32 %1580, 0
  %1582 = extractvalue %dx.types.ResRet.f32 %1580, 1
  %1583 = extractvalue %dx.types.ResRet.f32 %1580, 2
  %1584 = fmul fast float %1581, %334
  %1585 = fmul fast float %1582, %337
  %1586 = fmul fast float %1583, %340
  br i1 %1579, label %1593, label %1587

; <label>:1587                                    ; preds = %1570
  %1588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1589 = extractvalue %dx.types.CBufRet.f32 %1588, 0
  %1590 = fmul fast float %1589, %1584
  %1591 = fmul fast float %1589, %1585
  %1592 = fmul fast float %1589, %1586
  br label %1593

; <label>:1593                                    ; preds = %1587, %1570
  %1594 = phi float [ %1590, %1587 ], [ %1584, %1570 ]
  %1595 = phi float [ %1591, %1587 ], [ %1585, %1570 ]
  %1596 = phi float [ %1592, %1587 ], [ %1586, %1570 ]
  %1597 = fmul fast float %1594, %1565
  %1598 = select i1 %275, float %1597, float %1594
  %1599 = call float @dx.op.dot3.f32(i32 55, float %1598, float %1595, float %1596, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1600 = select i1 %275, float 0.000000e+00, float %1594
  %1601 = select i1 %275, float %1599, float %1595
  %1602 = select i1 %275, float 0.000000e+00, float %1596
  br label %1603

; <label>:1603                                    ; preds = %1593, %1555
  %1604 = phi float [ %1600, %1593 ], [ 0.000000e+00, %1555 ]
  %1605 = phi float [ %1601, %1593 ], [ 0.000000e+00, %1555 ]
  %1606 = phi float [ %1602, %1593 ], [ 0.000000e+00, %1555 ]
  %1607 = add i32 %61, 112
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1607, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = and i32 %1609, 255
  %1611 = uitofp i32 %1610 to float
  %1612 = lshr i32 %1609, 8
  %1613 = and i32 %1612, 255
  %1614 = uitofp i32 %1613 to float
  %1615 = call float @dx.op.dot3.f32(i32 55, float %1476, float %1477, float %1478, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1616 = fmul fast float %1614, %1615
  %1617 = fadd fast float %1616, %1611
  %1618 = fmul fast float %1617, 0x3F70101020000000
  %1619 = call float @dx.op.unary.f32(i32 7, float %1618)  ; Saturate(value)
  br i1 %1075, label %1620, label %1628

; <label>:1620                                    ; preds = %1603
  %1621 = fsub fast float 1.000000e+00, %1256
  %1622 = fmul fast float %1621, %1063
  %1623 = fmul fast float %1621, %1064
  %1624 = fmul fast float %1621, %1065
  %1625 = fmul fast float %1621, %1066
  %1626 = fmul fast float %1621, %1067
  %1627 = fmul fast float %1621, %1068
  br label %1628

; <label>:1628                                    ; preds = %1620, %1603
  %1629 = phi float [ %1622, %1620 ], [ %1063, %1603 ]
  %1630 = phi float [ %1623, %1620 ], [ %1064, %1603 ]
  %1631 = phi float [ %1624, %1620 ], [ %1065, %1603 ]
  %1632 = phi float [ %1625, %1620 ], [ %1066, %1603 ]
  %1633 = phi float [ %1626, %1620 ], [ %1067, %1603 ]
  %1634 = phi float [ %1627, %1620 ], [ %1068, %1603 ]
  %1635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1636 = extractvalue %dx.types.ResRet.i32 %1635, 0
  %1637 = and i32 %1636, 3
  %1638 = icmp eq i32 %1637, 3
  br i1 %1638, label %1717, label %1639

; <label>:1639                                    ; preds = %1628
  %1640 = and i32 %1636, 16
  %1641 = icmp ne i32 %1640, 0
  %1642 = select i1 %1641, float %1256, float 0.000000e+00
  %1643 = icmp eq i32 %1637, 0
  br i1 %1643, label %1644, label %1672

; <label>:1644                                    ; preds = %1639
  %1645 = and i32 %1636, 64
  %1646 = icmp ne i32 %1645, 0
  %1647 = select i1 %1646, float %1256, float 0.000000e+00
  %1648 = fsub fast float %1476, %1629
  %1649 = fsub fast float %1477, %1630
  %1650 = fsub fast float %1478, %1631
  %1651 = fmul fast float %1642, %1648
  %1652 = fmul fast float %1642, %1649
  %1653 = fmul fast float %1642, %1650
  %1654 = fadd fast float %1651, %1629
  %1655 = fadd fast float %1652, %1630
  %1656 = fadd fast float %1653, %1631
  %1657 = fsub fast float %1462, %1069
  %1658 = fmul fast float %1642, %1657
  %1659 = fadd fast float %1658, %1069
  %1660 = fsub fast float %1604, %1632
  %1661 = fsub fast float %1605, %1633
  %1662 = fsub fast float %1606, %1634
  %1663 = fmul fast float %1647, %1660
  %1664 = fmul fast float %1647, %1661
  %1665 = fmul fast float %1647, %1662
  %1666 = fadd fast float %1663, %1632
  %1667 = fadd fast float %1664, %1633
  %1668 = fadd fast float %1665, %1634
  %1669 = fsub fast float %1619, %1073
  %1670 = fmul fast float %1642, %1669
  %1671 = fadd fast float %1670, %1073
  br label %1717

; <label>:1672                                    ; preds = %1639
  %1673 = icmp eq i32 %1637, 1
  br i1 %1673, label %1674, label %1687

; <label>:1674                                    ; preds = %1672
  %1675 = fadd fast float %1476, -1.000000e+00
  %1676 = fadd fast float %1477, -1.000000e+00
  %1677 = fadd fast float %1478, -1.000000e+00
  %1678 = fmul fast float %1642, %1675
  %1679 = fmul fast float %1642, %1676
  %1680 = fmul fast float %1642, %1677
  %1681 = fadd fast float %1678, 1.000000e+00
  %1682 = fadd fast float %1679, 1.000000e+00
  %1683 = fadd fast float %1680, 1.000000e+00
  %1684 = fmul fast float %1681, %1629
  %1685 = fmul fast float %1682, %1630
  %1686 = fmul fast float %1683, %1631
  br label %1717

; <label>:1687                                    ; preds = %1672
  %1688 = icmp eq i32 %1637, 2
  br i1 %1688, label %1689, label %1717

; <label>:1689                                    ; preds = %1687
  %1690 = call float @dx.op.unary.f32(i32 24, float %1476)  ; Sqrt(value)
  %1691 = call float @dx.op.unary.f32(i32 24, float %1477)  ; Sqrt(value)
  %1692 = call float @dx.op.unary.f32(i32 24, float %1478)  ; Sqrt(value)
  %1693 = fadd fast float %1690, -5.000000e-01
  %1694 = fadd fast float %1691, -5.000000e-01
  %1695 = fadd fast float %1692, -5.000000e-01
  %1696 = fmul fast float %1693, %1642
  %1697 = fmul fast float %1694, %1642
  %1698 = fmul fast float %1695, %1642
  %1699 = fadd fast float %1696, 5.000000e-01
  %1700 = fadd fast float %1697, 5.000000e-01
  %1701 = fadd fast float %1698, 5.000000e-01
  %1702 = fmul fast float %1699, 2.000000e+00
  %1703 = fsub fast float 1.000000e+00, %1702
  %1704 = fmul fast float %1703, %1629
  %1705 = fadd fast float %1704, %1702
  %1706 = fmul fast float %1705, %1629
  %1707 = fmul fast float %1700, 2.000000e+00
  %1708 = fsub fast float 1.000000e+00, %1707
  %1709 = fmul fast float %1708, %1630
  %1710 = fadd fast float %1709, %1707
  %1711 = fmul fast float %1710, %1630
  %1712 = fmul fast float %1701, 2.000000e+00
  %1713 = fsub fast float 1.000000e+00, %1712
  %1714 = fmul fast float %1713, %1631
  %1715 = fadd fast float %1714, %1712
  %1716 = fmul fast float %1715, %1631
  br label %1717

; <label>:1717                                    ; preds = %1689, %1687, %1674, %1644, %1628
  %1718 = phi float [ %1629, %1628 ], [ %1706, %1689 ], [ %1629, %1687 ], [ %1684, %1674 ], [ %1654, %1644 ]
  %1719 = phi float [ %1630, %1628 ], [ %1711, %1689 ], [ %1630, %1687 ], [ %1685, %1674 ], [ %1655, %1644 ]
  %1720 = phi float [ %1631, %1628 ], [ %1716, %1689 ], [ %1631, %1687 ], [ %1686, %1674 ], [ %1656, %1644 ]
  %1721 = phi float [ %1632, %1628 ], [ %1632, %1689 ], [ %1632, %1687 ], [ %1632, %1674 ], [ %1666, %1644 ]
  %1722 = phi float [ %1633, %1628 ], [ %1633, %1689 ], [ %1633, %1687 ], [ %1633, %1674 ], [ %1667, %1644 ]
  %1723 = phi float [ %1634, %1628 ], [ %1634, %1689 ], [ %1634, %1687 ], [ %1634, %1674 ], [ %1668, %1644 ]
  %1724 = phi float [ %1069, %1628 ], [ %1069, %1689 ], [ %1069, %1687 ], [ %1069, %1674 ], [ %1659, %1644 ]
  %1725 = phi float [ %1073, %1628 ], [ %1073, %1689 ], [ %1073, %1687 ], [ %1073, %1674 ], [ %1671, %1644 ]
  %1726 = and i32 %1636, 12
  %1727 = icmp eq i32 %1726, 12
  br i1 %1727, label %1800, label %1728

; <label>:1728                                    ; preds = %1717
  %1729 = and i32 %1636, 2097184
  %1730 = icmp eq i32 %1729, 2097184
  %1731 = select i1 %1730, float %1256, float 0.000000e+00
  %1732 = and i32 %1636, 4194336
  %1733 = icmp eq i32 %1732, 4194336
  %1734 = select i1 %1733, float %1256, float 0.000000e+00
  %1735 = and i32 %1636, 8388640
  %1736 = icmp eq i32 %1735, 8388640
  %1737 = select i1 %1736, float %1256, float 0.000000e+00
  %1738 = icmp eq i32 %1726, 0
  br i1 %1738, label %1739, label %1752

; <label>:1739                                    ; preds = %1728
  %1740 = fsub fast float %1557, %1061
  %1741 = fsub fast float %1558, %1062
  %1742 = fmul fast float %1731, %1740
  %1743 = fmul fast float %1731, %1741
  %1744 = fadd fast float %1742, %1061
  %1745 = fadd fast float %1743, %1062
  %1746 = fsub fast float %1559, %1072
  %1747 = fmul fast float %1734, %1746
  %1748 = fadd fast float %1747, %1072
  %1749 = fsub fast float %1556, %1071
  %1750 = fmul fast float %1737, %1749
  %1751 = fadd fast float %1750, %1071
  br label %1800

; <label>:1752                                    ; preds = %1728
  %1753 = icmp eq i32 %1726, 4
  br i1 %1753, label %1754, label %1786

; <label>:1754                                    ; preds = %1752
  %1755 = fmul fast float %1731, %1557
  %1756 = fmul fast float %1731, %1558
  %1757 = fadd fast float %1755, %1061
  %1758 = fadd fast float %1756, %1062
  %1759 = call float @dx.op.binary.f32(i32 36, float %1072, float %1559)  ; FMin(a,b)
  %1760 = fsub fast float %1759, %1072
  %1761 = fmul fast float %1760, %1734
  %1762 = fadd fast float %1761, %1072
  %1763 = fadd fast float %1556, %1071
  %1764 = fmul fast float %1763, 0x3FF337FAE0000000
  %1765 = fmul fast float %1071, %1071
  %1766 = fmul fast float %1556, %1556
  %1767 = fadd fast float %1766, %1765
  %1768 = fmul fast float %1767, 0x3FE5152B00000000
  %1769 = fmul fast float %1071, 0xBFCC1F85E0000000
  %1770 = fmul fast float %1769, %1556
  %1771 = fadd fast float %1770, 0xBFE1363700000000
  %1772 = fadd fast float %1771, %1764
  %1773 = fsub fast float %1772, %1768
  %1774 = fmul fast float %1763, 0x3FBA6F0D00000000
  %1775 = fmul fast float %1767, 0x3FD0432880000000
  %1776 = fmul fast float %1071, 0xBFEF110800000000
  %1777 = fmul fast float %1776, %1556
  %1778 = fadd fast float %1777, 1.000000e+00
  %1779 = fsub fast float %1778, %1774
  %1780 = fadd fast float %1779, %1775
  %1781 = fdiv fast float %1773, %1780
  %1782 = call float @dx.op.unary.f32(i32 7, float %1781)  ; Saturate(value)
  %1783 = fsub fast float %1782, %1071
  %1784 = fmul fast float %1783, %1737
  %1785 = fadd fast float %1784, %1071
  br label %1800

; <label>:1786                                    ; preds = %1752
  %1787 = icmp eq i32 %1726, 8
  br i1 %1787, label %1788, label %1800

; <label>:1788                                    ; preds = %1786
  %1789 = fmul fast float %1731, %1557
  %1790 = fmul fast float %1731, %1558
  %1791 = fadd fast float %1789, %1061
  %1792 = fadd fast float %1790, %1062
  %1793 = call float @dx.op.binary.f32(i32 36, float %1072, float %1559)  ; FMin(a,b)
  %1794 = fsub fast float %1793, %1072
  %1795 = fmul fast float %1794, %1734
  %1796 = fadd fast float %1795, %1072
  %1797 = fsub fast float %1556, %1071
  %1798 = fmul fast float %1737, %1797
  %1799 = fadd fast float %1798, %1071
  br label %1800

; <label>:1800                                    ; preds = %1788, %1786, %1754, %1739, %1717, %1255, %1074, %1060
  %1801 = phi float [ %1061, %1717 ], [ %1061, %1255 ], [ %1061, %1060 ], [ %1791, %1788 ], [ %1061, %1786 ], [ %1757, %1754 ], [ %1744, %1739 ], [ %1061, %1074 ]
  %1802 = phi float [ %1062, %1717 ], [ %1062, %1255 ], [ %1062, %1060 ], [ %1792, %1788 ], [ %1062, %1786 ], [ %1758, %1754 ], [ %1745, %1739 ], [ %1062, %1074 ]
  %1803 = phi float [ %1718, %1717 ], [ %1063, %1255 ], [ %1063, %1060 ], [ %1718, %1788 ], [ %1718, %1786 ], [ %1718, %1754 ], [ %1718, %1739 ], [ %1063, %1074 ]
  %1804 = phi float [ %1719, %1717 ], [ %1064, %1255 ], [ %1064, %1060 ], [ %1719, %1788 ], [ %1719, %1786 ], [ %1719, %1754 ], [ %1719, %1739 ], [ %1064, %1074 ]
  %1805 = phi float [ %1720, %1717 ], [ %1065, %1255 ], [ %1065, %1060 ], [ %1720, %1788 ], [ %1720, %1786 ], [ %1720, %1754 ], [ %1720, %1739 ], [ %1065, %1074 ]
  %1806 = phi float [ %1721, %1717 ], [ %1066, %1255 ], [ %1066, %1060 ], [ %1721, %1788 ], [ %1721, %1786 ], [ %1721, %1754 ], [ %1721, %1739 ], [ %1066, %1074 ]
  %1807 = phi float [ %1722, %1717 ], [ %1067, %1255 ], [ %1067, %1060 ], [ %1722, %1788 ], [ %1722, %1786 ], [ %1722, %1754 ], [ %1722, %1739 ], [ %1067, %1074 ]
  %1808 = phi float [ %1723, %1717 ], [ %1068, %1255 ], [ %1068, %1060 ], [ %1723, %1788 ], [ %1723, %1786 ], [ %1723, %1754 ], [ %1723, %1739 ], [ %1068, %1074 ]
  %1809 = phi float [ %1724, %1717 ], [ %1069, %1255 ], [ %1069, %1060 ], [ %1724, %1788 ], [ %1724, %1786 ], [ %1724, %1754 ], [ %1724, %1739 ], [ %1069, %1074 ]
  %1810 = phi float [ %1071, %1717 ], [ %1071, %1255 ], [ %1071, %1060 ], [ %1799, %1788 ], [ %1071, %1786 ], [ %1785, %1754 ], [ %1751, %1739 ], [ %1071, %1074 ]
  %1811 = phi float [ %1072, %1717 ], [ %1072, %1255 ], [ %1072, %1060 ], [ %1796, %1788 ], [ %1072, %1786 ], [ %1762, %1754 ], [ %1748, %1739 ], [ %1072, %1074 ]
  %1812 = phi float [ %1725, %1717 ], [ %1073, %1255 ], [ %1073, %1060 ], [ %1725, %1788 ], [ %1725, %1786 ], [ %1725, %1754 ], [ %1725, %1739 ], [ %1073, %1074 ]
  br i1 %461, label %2539, label %1813

; <label>:1813                                    ; preds = %1800
  %1814 = icmp ult i32 %517, 3
  %1815 = add i32 %61, 56
  %1816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.i32 %1816, 0
  %1818 = add i32 %61, 60
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = or i32 %1820, %1817
  %1822 = icmp eq i32 %1821, 0
  br i1 %1822, label %2539, label %1823

; <label>:1823                                    ; preds = %1813
  %1824 = and i32 %1817, 262144
  %1825 = icmp ne i32 %1824, 0
  %1826 = select i1 %1825, float %67, float 1.000000e+00
  %1827 = select i1 %1825, float %68, float 0.000000e+00
  %1828 = select i1 %1825, float %69, float 0.000000e+00
  %1829 = select i1 %1825, float %70, float 1.000000e+00
  %1830 = select i1 %1825, float %71, float %94
  %1831 = select i1 %1825, float %72, float %95
  %1832 = add i32 %61, 316
  %1833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.i32 %1833, 0
  %1835 = lshr i32 %1834, 16
  %1836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1835)  ; LegacyF16ToF32(value)
  %1837 = fmul fast float %1836, 0x3F50624DE0000000
  %1838 = add i32 %61, 120
  %1839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1838, i32 undef)  ; BufferLoad(srv,index,wot)
  %1840 = extractvalue %dx.types.ResRet.i32 %1839, 0
  %1841 = lshr i32 %1840, 16
  %1842 = and i32 %1841, 255
  %1843 = lshr i32 %1840, 24
  %1844 = add i32 %61, 324
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1844, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = and i32 %1846, 65535
  %1848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1847)  ; LegacyF16ToF32(value)
  %1849 = lshr i32 %1846, 16
  %1850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1849)  ; LegacyF16ToF32(value)
  %1851 = add i32 %61, 64
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = lshr i32 %1853, 22
  %1855 = shl nuw nsw i32 %1854, 5
  %1856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1855)  ; LegacyF16ToF32(value)
  %1857 = shl i32 %1853, 4
  %1858 = and i32 %1857, 32752
  %1859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1858)  ; LegacyF16ToF32(value)
  %1860 = lshr i32 %1853, 7
  %1861 = and i32 %1860, 32752
  %1862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1861)  ; LegacyF16ToF32(value)
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 3
  %1865 = fmul fast float %1864, 1.000000e+03
  %1866 = fmul fast float %411, %1865
  %1867 = call float @dx.op.unary.f32(i32 22, float %1866)  ; Frc(value)
  %1868 = fadd fast float %1867, %401
  %1869 = fmul fast float %412, %1865
  %1870 = call float @dx.op.unary.f32(i32 22, float %1869)  ; Frc(value)
  %1871 = fadd fast float %1870, %403
  %1872 = fmul fast float %1837, %1865
  %1873 = call float @dx.op.unary.f32(i32 22, float %1872)  ; Frc(value)
  %1874 = fmul fast float %1873, 0x401921FB60000000
  %1875 = fadd fast float %1874, %1856
  %1876 = call float @dx.op.unary.f32(i32 13, float %1875)  ; Sin(value)
  %1877 = call float @dx.op.unary.f32(i32 12, float %1875)  ; Cos(value)
  %1878 = fsub fast float -0.000000e+00, %1876
  %1879 = fadd fast float %1830, -5.000000e-01
  %1880 = fadd fast float %1831, -5.000000e-01
  %1881 = fmul fast float %1848, %1879
  %1882 = fmul fast float %1850, %1880
  %1883 = fadd fast float %1881, 5.000000e-01
  %1884 = fadd fast float %1882, 5.000000e-01
  %1885 = fmul fast float %1859, %1883
  %1886 = fmul fast float %1862, %1884
  %1887 = fmul fast float %1877, %1885
  %1888 = call float @dx.op.tertiary.f32(i32 46, float %1878, float %1886, float %1887)  ; FMad(a,b,c)
  %1889 = fmul fast float %1876, %1885
  %1890 = call float @dx.op.tertiary.f32(i32 46, float %1877, float %1886, float %1889)  ; FMad(a,b,c)
  %1891 = fadd fast float %1868, %1888
  %1892 = fadd fast float %1871, %1890
  %1893 = icmp ugt i32 %1842, 1
  %1894 = icmp ugt i32 %1840, 33554431
  %1895 = or i1 %1894, %1893
  br i1 %1895, label %1896, label %1921

; <label>:1896                                    ; preds = %1823
  %1897 = add i32 %61, 260
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = lshr i32 %1899, 16
  %1901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1900)  ; LegacyF16ToF32(value)
  %1902 = fmul fast float %1864, %1901
  %1903 = call float @dx.op.unary.f32(i32 22, float %1902)  ; Frc(value)
  %1904 = mul nuw nsw i32 %1842, %1843
  %1905 = uitofp i32 %1904 to float
  %1906 = fmul fast float %1903, %1905
  %1907 = call float @dx.op.unary.f32(i32 27, float %1906)  ; Round_ni(value)
  %1908 = fptoui float %1907 to i32
  %1909 = urem i32 %1908, %1842
  %1910 = udiv i32 %1908, %1843
  %1911 = call float @dx.op.unary.f32(i32 22, float %1891)  ; Frc(value)
  %1912 = call float @dx.op.unary.f32(i32 22, float %1892)  ; Frc(value)
  %1913 = uitofp i32 %1909 to float
  %1914 = uitofp i32 %1910 to float
  %1915 = fadd fast float %1911, %1913
  %1916 = fadd fast float %1912, %1914
  %1917 = uitofp i32 %1842 to float
  %1918 = uitofp i32 %1843 to float
  %1919 = fdiv fast float %1915, %1917
  %1920 = fdiv fast float %1916, %1918
  br label %1921

; <label>:1921                                    ; preds = %1896, %1823
  %1922 = phi float [ %1919, %1896 ], [ %1891, %1823 ]
  %1923 = phi float [ %1920, %1896 ], [ %1892, %1823 ]
  %1924 = and i32 %1817, 256
  %1925 = icmp eq i32 %1924, 0
  br i1 %1925, label %1972, label %1926

; <label>:1926                                    ; preds = %1921
  %1927 = add i32 %61, 448
  %1928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1929 = extractvalue %dx.types.ResRet.i32 %1928, 0
  %1930 = add i32 %1929, 0
  %1931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1930, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1932 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1931, %dx.types.Handle %113, float %1922, float %1923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1933 = extractvalue %dx.types.ResRet.f32 %1932, 0
  %1934 = add i32 %61, 132
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = shl i32 %1936, 4
  %1938 = and i32 %1937, 32752
  %1939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1938)  ; LegacyF16ToF32(value)
  %1940 = lshr i32 %1936, 7
  %1941 = and i32 %1940, 32752
  %1942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1941)  ; LegacyF16ToF32(value)
  %1943 = fsub fast float 1.000000e+00, %513
  %1944 = call float @dx.op.binary.f32(i32 35, float %1943, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1945 = bitcast float %513 to i32
  %1946 = sitofp i32 %1945 to float
  %1947 = fadd fast float %1946, 0xC1CFBF8940000000
  %1948 = fmul fast float %1942, %1947
  %1949 = fadd fast float %1948, 0x41CFBF8940000000
  %1950 = fptosi float %1949 to i32
  %1951 = bitcast i32 %1950 to float
  %1952 = bitcast float %1944 to i32
  %1953 = sitofp i32 %1952 to float
  %1954 = fadd fast float %1953, 0xC1CFBF8940000000
  %1955 = fmul fast float %1954, %1942
  %1956 = fadd fast float %1955, 0x41CFBF8940000000
  %1957 = fptosi float %1956 to i32
  %1958 = bitcast i32 %1957 to float
  %1959 = fmul fast float %1951, %1939
  %1960 = fmul fast float %1958, %1939
  %1961 = fsub fast float %1944, %1959
  %1962 = fadd fast float %1960, %1944
  %1963 = call float @dx.op.unary.f32(i32 7, float %1961)  ; Saturate(value)
  %1964 = call float @dx.op.unary.f32(i32 7, float %1962)  ; Saturate(value)
  %1965 = fsub fast float %1933, %1963
  %1966 = fsub fast float %1964, %1963
  %1967 = bitcast float %1966 to i32
  %1968 = sub nsw i32 2129859010, %1967
  %1969 = bitcast i32 %1968 to float
  %1970 = fmul fast float %1969, %1965
  %1971 = call float @dx.op.unary.f32(i32 7, float %1970)  ; Saturate(value)
  br label %1972

; <label>:1972                                    ; preds = %1926, %1921
  %1973 = phi float [ %1971, %1926 ], [ %513, %1921 ]
  %1974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.i32 %1974, 0
  %1976 = and i32 %1975, 128
  %1977 = icmp eq i32 %1976, 0
  br i1 %1977, label %1994, label %1978

; <label>:1978                                    ; preds = %1972
  %1979 = add i32 %61, 432
  %1980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.i32 %1980, 0
  %1982 = add i32 %1981, 0
  %1983 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1982, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1984 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1983, %dx.types.Handle %113, float %1922, float %1923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1985 = extractvalue %dx.types.ResRet.f32 %1984, 0
  %1986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.i32 %1986, 0
  %1988 = and i32 %1987, 524288
  %1989 = icmp ne i32 %1988, 0
  %1990 = fcmp fast ogt float %1985, 0x3FE0101020000000
  %1991 = select i1 %1990, float 1.000000e+00, float 0.000000e+00
  %1992 = select i1 %1989, float %1991, float %1985
  %1993 = fmul fast float %1992, %1973
  br label %1994

; <label>:1994                                    ; preds = %1978, %1972
  %1995 = phi float [ %1993, %1978 ], [ %1973, %1972 ]
  %1996 = fcmp fast ult float %1995, 0x3F70101020000000
  br i1 %1996, label %2539, label %1997

; <label>:1997                                    ; preds = %1994
  %1998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.i32 %1998, 0
  %2000 = and i32 %1999, 16
  %2001 = icmp eq i32 %2000, 0
  br i1 %2001, label %2200, label %2002

; <label>:2002                                    ; preds = %1997
  %2003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1838, i32 undef)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.i32 %2003, 0
  %2005 = add i32 %61, 384
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = add i32 %2007, 0
  %2009 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2008, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2010 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2009, %dx.types.Handle %112, float %1922, float %1923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2011 = extractvalue %dx.types.ResRet.f32 %2010, 0
  %2012 = extractvalue %dx.types.ResRet.f32 %2010, 1
  %2013 = extractvalue %dx.types.ResRet.f32 %2010, 2
  %2014 = extractvalue %dx.types.ResRet.f32 %2010, 3
  %2015 = and i32 %2004, 255
  %2016 = uitofp i32 %2015 to float
  %2017 = lshr i32 %2004, 8
  %2018 = and i32 %2017, 255
  %2019 = uitofp i32 %2018 to float
  %2020 = fmul fast float %2014, %2016
  %2021 = fadd fast float %2020, %2019
  %2022 = fmul fast float %2021, 0x3F70101000000000
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = and i32 %2024, 512
  %2026 = icmp eq i32 %2025, 0
  br i1 %2026, label %2035, label %2027

; <label>:2027                                    ; preds = %2002
  %2028 = add i32 %61, 468
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = add i32 %2030, 0
  %2032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2031, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2033 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2032, %dx.types.Handle %113, float %1922, float %1923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2034 = extractvalue %dx.types.ResRet.f32 %2033, 0
  br label %2035

; <label>:2035                                    ; preds = %2027, %2002
  %2036 = phi float [ %2034, %2027 ], [ 1.000000e+00, %2002 ]
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = and i32 %2038, 33554432
  %2040 = icmp eq i32 %2039, 0
  br i1 %2040, label %2147, label %2041

; <label>:2041                                    ; preds = %2035
  %2042 = add i32 %61, 256
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = and i32 %2044, 65535
  %2046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2045)  ; LegacyF16ToF32(value)
  %2047 = lshr i32 %2044, 16
  %2048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2047)  ; LegacyF16ToF32(value)
  %2049 = add i32 %61, 260
  %2050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2049, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.i32 %2050, 0
  %2052 = and i32 %2051, 65535
  %2053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2052)  ; LegacyF16ToF32(value)
  %2054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2055 = extractvalue %dx.types.ResRet.i32 %2054, 0
  %2056 = lshr i32 %2055, 24
  %2057 = uitofp i32 %2056 to float
  %2058 = fmul fast float %2057, 0x3F70101020000000
  %2059 = and i32 %2055, 255
  %2060 = uitofp i32 %2059 to float
  %2061 = fmul fast float %2060, 0x3F70101020000000
  %2062 = lshr i32 %2055, 8
  %2063 = and i32 %2062, 255
  %2064 = uitofp i32 %2063 to float
  %2065 = fmul fast float %2064, 0x3F70101020000000
  %2066 = lshr i32 %2055, 16
  %2067 = and i32 %2066, 255
  %2068 = uitofp i32 %2067 to float
  %2069 = fmul fast float %2068, 0x3F70101020000000
  %2070 = add i32 %61, 252
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2070, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = lshr i32 %2072, 24
  %2074 = uitofp i32 %2073 to float
  %2075 = fmul fast float %2074, 0x3F70101020000000
  %2076 = and i32 %2072, 255
  %2077 = uitofp i32 %2076 to float
  %2078 = fmul fast float %2077, 0x3F70101020000000
  %2079 = lshr i32 %2072, 8
  %2080 = and i32 %2079, 255
  %2081 = uitofp i32 %2080 to float
  %2082 = fmul fast float %2081, 0x3F70101020000000
  %2083 = lshr i32 %2072, 16
  %2084 = and i32 %2083, 255
  %2085 = uitofp i32 %2084 to float
  %2086 = fmul fast float %2085, 0x3F70101020000000
  %2087 = bitcast float %2011 to i32
  %2088 = ashr i32 %2087, 1
  %2089 = sub nsw i32 1597463174, %2088
  %2090 = bitcast i32 %2089 to float
  %2091 = fmul fast float %2011, 5.000000e-01
  %2092 = fmul fast float %2090, %2090
  %2093 = fmul fast float %2092, %2091
  %2094 = fsub fast float 1.500000e+00, %2093
  %2095 = fmul fast float %2090, %2011
  %2096 = fmul fast float %2095, %2094
  %2097 = bitcast float %2012 to i32
  %2098 = ashr i32 %2097, 1
  %2099 = sub nsw i32 1597463174, %2098
  %2100 = bitcast i32 %2099 to float
  %2101 = fmul fast float %2012, 5.000000e-01
  %2102 = fmul fast float %2100, %2100
  %2103 = fmul fast float %2102, %2101
  %2104 = fsub fast float 1.500000e+00, %2103
  %2105 = fmul fast float %2100, %2012
  %2106 = fmul fast float %2105, %2104
  %2107 = bitcast float %2013 to i32
  %2108 = ashr i32 %2107, 1
  %2109 = sub nsw i32 1597463174, %2108
  %2110 = bitcast i32 %2109 to float
  %2111 = fmul fast float %2013, 5.000000e-01
  %2112 = fmul fast float %2110, %2110
  %2113 = fmul fast float %2112, %2111
  %2114 = fsub fast float 1.500000e+00, %2113
  %2115 = fmul fast float %2110, %2013
  %2116 = fmul fast float %2115, %2114
  %2117 = fsub fast float %2096, %2078
  %2118 = fsub fast float %2106, %2082
  %2119 = fsub fast float %2116, %2086
  %2120 = fmul fast float %2117, %2046
  %2121 = fmul fast float %2118, %2048
  %2122 = fmul fast float %2119, %2053
  %2123 = fadd fast float %2120, %2061
  %2124 = fadd fast float %2121, %2065
  %2125 = fadd fast float %2122, %2069
  %2126 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  %2127 = call float @dx.op.unary.f32(i32 7, float %2124)  ; Saturate(value)
  %2128 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  %2129 = fmul fast float %2126, %2126
  %2130 = fmul fast float %2127, %2127
  %2131 = fmul fast float %2128, %2128
  %2132 = fsub fast float %2129, %2011
  %2133 = fsub fast float %2130, %2012
  %2134 = fsub fast float %2131, %2013
  %2135 = fmul fast float %2132, %2036
  %2136 = fmul fast float %2133, %2036
  %2137 = fmul fast float %2134, %2036
  %2138 = fadd fast float %2135, %2011
  %2139 = fadd fast float %2136, %2012
  %2140 = fadd fast float %2137, %2013
  %2141 = fadd fast float %2058, %2022
  %2142 = fsub fast float %2141, %2075
  %2143 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2144 = fsub fast float %2143, %2022
  %2145 = fmul fast float %2144, %2036
  %2146 = fadd fast float %2145, %2022
  br label %2200

; <label>:2147                                    ; preds = %2035
  %2148 = and i32 %2038, 134217728
  %2149 = icmp eq i32 %2148, 0
  br i1 %2149, label %2184, label %2150

; <label>:2150                                    ; preds = %2147
  %2151 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %2152 = call float @dx.op.unary.f32(i32 24, float %392)  ; Sqrt(value)
  %2153 = call float @dx.op.unary.f32(i32 24, float %396)  ; Sqrt(value)
  %2154 = fadd fast float %2151, -5.000000e-01
  %2155 = fadd fast float %2152, -5.000000e-01
  %2156 = fadd fast float %2153, -5.000000e-01
  %2157 = fmul fast float %2154, %2036
  %2158 = fmul fast float %2155, %2036
  %2159 = fmul fast float %2156, %2036
  %2160 = fadd fast float %2157, 5.000000e-01
  %2161 = fadd fast float %2158, 5.000000e-01
  %2162 = fadd fast float %2159, 5.000000e-01
  %2163 = call float @dx.op.unary.f32(i32 24, float %2011)  ; Sqrt(value)
  %2164 = call float @dx.op.unary.f32(i32 24, float %2012)  ; Sqrt(value)
  %2165 = call float @dx.op.unary.f32(i32 24, float %2013)  ; Sqrt(value)
  %2166 = fmul fast float %2160, 2.000000e+00
  %2167 = fsub fast float 1.000000e+00, %2166
  %2168 = fmul fast float %2167, %2163
  %2169 = fadd fast float %2168, %2166
  %2170 = fmul fast float %2169, %2163
  %2171 = fmul fast float %2161, 2.000000e+00
  %2172 = fsub fast float 1.000000e+00, %2171
  %2173 = fmul fast float %2172, %2164
  %2174 = fadd fast float %2173, %2171
  %2175 = fmul fast float %2174, %2164
  %2176 = fmul fast float %2162, 2.000000e+00
  %2177 = fsub fast float 1.000000e+00, %2176
  %2178 = fmul fast float %2177, %2165
  %2179 = fadd fast float %2178, %2176
  %2180 = fmul fast float %2179, %2165
  %2181 = fmul fast float %2170, %2170
  %2182 = fmul fast float %2175, %2175
  %2183 = fmul fast float %2180, %2180
  br label %2200

; <label>:2184                                    ; preds = %2147
  %2185 = fmul fast float %388, %388
  %2186 = fmul fast float %392, %392
  %2187 = fmul fast float %396, %396
  %2188 = fadd fast float %2185, -1.000000e+00
  %2189 = fadd fast float %2186, -1.000000e+00
  %2190 = fadd fast float %2187, -1.000000e+00
  %2191 = fmul fast float %2036, %2188
  %2192 = fmul fast float %2036, %2189
  %2193 = fmul fast float %2036, %2190
  %2194 = fadd fast float %2191, 1.000000e+00
  %2195 = fadd fast float %2192, 1.000000e+00
  %2196 = fadd fast float %2193, 1.000000e+00
  %2197 = fmul fast float %2194, %2011
  %2198 = fmul fast float %2195, %2012
  %2199 = fmul fast float %2196, %2013
  br label %2200

; <label>:2200                                    ; preds = %2184, %2150, %2041, %1997
  %2201 = phi float [ %2146, %2041 ], [ %2022, %2150 ], [ %2022, %2184 ], [ 0x3FA23C0BE0000000, %1997 ]
  %2202 = phi float [ %2138, %2041 ], [ %2181, %2150 ], [ %2197, %2184 ], [ 1.000000e+00, %1997 ]
  %2203 = phi float [ %2139, %2041 ], [ %2182, %2150 ], [ %2198, %2184 ], [ 1.000000e+00, %1997 ]
  %2204 = phi float [ %2140, %2041 ], [ %2183, %2150 ], [ %2199, %2184 ], [ 1.000000e+00, %1997 ]
  %2205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2206 = extractvalue %dx.types.CBufRet.i32 %2205, 1
  %2207 = and i32 %2206, 1
  %2208 = icmp ne i32 %2207, 0
  %2209 = add i32 %61, 356
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2209, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = and i32 %2211, 32
  %2213 = icmp ne i32 %2212, 0
  %2214 = and i1 %2208, %2213
  %2215 = select i1 %2214, float 1.000000e+00, float %2202
  %2216 = select i1 %2214, float 0x3FD3333340000000, float %2203
  %2217 = select i1 %2214, float 0x3FD3333340000000, float %2204
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = and i32 %2219, 32
  %2221 = icmp eq i32 %2220, 0
  br i1 %2221, label %2294, label %2222

; <label>:2222                                    ; preds = %2200
  %2223 = add i32 %61, 124
  %2224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2225 = extractvalue %dx.types.ResRet.i32 %2224, 0
  %2226 = add i32 %61, 400
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2226, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = add i32 %2228, 0
  %2230 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2229, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2231 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2230, %dx.types.Handle %112, float %1922, float %1923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2232 = extractvalue %dx.types.ResRet.f32 %2231, 0
  %2233 = extractvalue %dx.types.ResRet.f32 %2231, 1
  %2234 = extractvalue %dx.types.ResRet.f32 %2231, 2
  %2235 = extractvalue %dx.types.ResRet.f32 %2231, 3
  %2236 = and i32 %2225, 255
  %2237 = uitofp i32 %2236 to float
  %2238 = lshr i32 %2225, 8
  %2239 = and i32 %2238, 255
  %2240 = uitofp i32 %2239 to float
  %2241 = lshr i32 %2225, 16
  %2242 = and i32 %2241, 255
  %2243 = uitofp i32 %2242 to float
  %2244 = fmul fast float %2243, 0x3F70101000000000
  %2245 = fmul fast float %2232, %2237
  %2246 = fadd fast float %2245, %2240
  %2247 = fmul fast float %2246, 0x3F70101000000000
  %2248 = fadd fast float %2233, -5.000000e-01
  %2249 = fadd fast float %2235, -5.000000e-01
  %2250 = fmul fast float %2248, %2244
  %2251 = fmul fast float %2249, %2244
  %2252 = fadd fast float %2250, 5.000000e-01
  %2253 = fadd fast float %2251, 5.000000e-01
  %2254 = fmul fast float %2252, 2.000000e+00
  %2255 = fadd fast float %2254, -1.000000e+00
  %2256 = fmul fast float %2253, 2.000000e+00
  %2257 = fadd fast float %2256, -1.000000e+00
  %2258 = fadd fast float %2255, %2257
  %2259 = fmul fast float %2258, 5.000000e-01
  %2260 = fsub fast float %2255, %2257
  %2261 = fmul fast float %2260, 5.000000e-01
  %2262 = call float @dx.op.unary.f32(i32 6, float %2259)  ; FAbs(value)
  %2263 = fsub fast float 1.000000e+00, %2262
  %2264 = call float @dx.op.unary.f32(i32 6, float %2261)  ; FAbs(value)
  %2265 = fsub fast float %2263, %2264
  %2266 = call float @dx.op.dot3.f32(i32 55, float %2259, float %2261, float %2265, float %2259, float %2261, float %2265)  ; Dot3(ax,ay,az,bx,by,bz)
  %2267 = call float @dx.op.unary.f32(i32 25, float %2266)  ; Rsqrt(value)
  %2268 = fmul fast float %2259, %2267
  %2269 = fmul fast float %2261, %2267
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = and i32 %2271, 67108864
  %2273 = icmp eq i32 %2272, 0
  br i1 %2273, label %2290, label %2274

; <label>:2274                                    ; preds = %2222
  %2275 = add i32 %61, 312
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2275, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = and i32 %2277, 65535
  %2279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2278)  ; LegacyF16ToF32(value)
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = and i32 %2281, 65535
  %2283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2282)  ; LegacyF16ToF32(value)
  %2284 = lshr i32 %2277, 16
  %2285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2284)  ; LegacyF16ToF32(value)
  %2286 = fsub fast float %2247, %2285
  %2287 = fmul fast float %2286, %2279
  %2288 = fadd fast float %2287, %2283
  %2289 = call float @dx.op.unary.f32(i32 7, float %2288)  ; Saturate(value)
  br label %2290

; <label>:2290                                    ; preds = %2274, %2222
  %2291 = phi float [ %2289, %2274 ], [ %2247, %2222 ]
  %2292 = call float @dx.op.dot2.f32(i32 54, float %2268, float %2269, float %1826, float %1827)  ; Dot2(ax,ay,bx,by)
  %2293 = call float @dx.op.dot2.f32(i32 54, float %2268, float %2269, float %1828, float %1829)  ; Dot2(ax,ay,bx,by)
  br label %2294

; <label>:2294                                    ; preds = %2290, %2200
  %2295 = phi float [ %2291, %2290 ], [ 0x3FD6666660000000, %2200 ]
  %2296 = phi float [ %2292, %2290 ], [ 0.000000e+00, %2200 ]
  %2297 = phi float [ %2293, %2290 ], [ 0.000000e+00, %2200 ]
  %2298 = phi float [ %2234, %2290 ], [ 1.000000e+00, %2200 ]
  %2299 = add i32 %61, 192
  %2300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2299, i32 undef)  ; BufferLoad(srv,index,wot)
  %2301 = extractvalue %dx.types.ResRet.i32 %2300, 0
  %2302 = lshr i32 %2301, 22
  %2303 = shl nuw nsw i32 %2302, 5
  %2304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2303)  ; LegacyF16ToF32(value)
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = and i32 %2306, 64
  %2308 = icmp eq i32 %2307, 0
  br i1 %2308, label %2342, label %2309

; <label>:2309                                    ; preds = %2294
  %2310 = add i32 %61, 416
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2310, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = add i32 %2312, 0
  %2314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2313, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.i32 %2315, 0
  %2317 = and i32 %2316, 131072
  %2318 = icmp eq i32 %2317, 0
  %2319 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2314, %dx.types.Handle %112, float %1922, float %1923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2320 = extractvalue %dx.types.ResRet.f32 %2319, 0
  %2321 = extractvalue %dx.types.ResRet.f32 %2319, 1
  %2322 = extractvalue %dx.types.ResRet.f32 %2319, 2
  %2323 = fmul fast float %2320, %376
  %2324 = fmul fast float %2321, %379
  %2325 = fmul fast float %2322, %382
  br i1 %2318, label %2332, label %2326

; <label>:2326                                    ; preds = %2309
  %2327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2328 = extractvalue %dx.types.CBufRet.f32 %2327, 0
  %2329 = fmul fast float %2328, %2323
  %2330 = fmul fast float %2328, %2324
  %2331 = fmul fast float %2328, %2325
  br label %2332

; <label>:2332                                    ; preds = %2326, %2309
  %2333 = phi float [ %2329, %2326 ], [ %2323, %2309 ]
  %2334 = phi float [ %2330, %2326 ], [ %2324, %2309 ]
  %2335 = phi float [ %2331, %2326 ], [ %2325, %2309 ]
  %2336 = fmul fast float %2333, %2304
  %2337 = select i1 %275, float %2336, float %2333
  %2338 = call float @dx.op.dot3.f32(i32 55, float %2337, float %2334, float %2335, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2339 = select i1 %275, float 0.000000e+00, float %2333
  %2340 = select i1 %275, float %2338, float %2334
  %2341 = select i1 %275, float 0.000000e+00, float %2335
  br label %2342

; <label>:2342                                    ; preds = %2332, %2294
  %2343 = phi float [ %2339, %2332 ], [ 0.000000e+00, %2294 ]
  %2344 = phi float [ %2340, %2332 ], [ 0.000000e+00, %2294 ]
  %2345 = phi float [ %2341, %2332 ], [ 0.000000e+00, %2294 ]
  %2346 = add i32 %61, 128
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = and i32 %2348, 255
  %2350 = uitofp i32 %2349 to float
  %2351 = lshr i32 %2348, 8
  %2352 = and i32 %2351, 255
  %2353 = uitofp i32 %2352 to float
  %2354 = call float @dx.op.dot3.f32(i32 55, float %2215, float %2216, float %2217, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2355 = fmul fast float %2353, %2354
  %2356 = fadd fast float %2355, %2350
  %2357 = fmul fast float %2356, 0x3F70101020000000
  %2358 = call float @dx.op.unary.f32(i32 7, float %2357)  ; Saturate(value)
  br i1 %1814, label %2359, label %2367

; <label>:2359                                    ; preds = %2342
  %2360 = fsub fast float 1.000000e+00, %1995
  %2361 = fmul fast float %2360, %1803
  %2362 = fmul fast float %2360, %1804
  %2363 = fmul fast float %2360, %1805
  %2364 = fmul fast float %2360, %1806
  %2365 = fmul fast float %2360, %1807
  %2366 = fmul fast float %2360, %1808
  br label %2367

; <label>:2367                                    ; preds = %2359, %2342
  %2368 = phi float [ %2361, %2359 ], [ %1803, %2342 ]
  %2369 = phi float [ %2362, %2359 ], [ %1804, %2342 ]
  %2370 = phi float [ %2363, %2359 ], [ %1805, %2342 ]
  %2371 = phi float [ %2364, %2359 ], [ %1806, %2342 ]
  %2372 = phi float [ %2365, %2359 ], [ %1807, %2342 ]
  %2373 = phi float [ %2366, %2359 ], [ %1808, %2342 ]
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = and i32 %2375, 3
  %2377 = icmp eq i32 %2376, 3
  br i1 %2377, label %2456, label %2378

; <label>:2378                                    ; preds = %2367
  %2379 = and i32 %2375, 16
  %2380 = icmp ne i32 %2379, 0
  %2381 = select i1 %2380, float %1995, float 0.000000e+00
  %2382 = icmp eq i32 %2376, 0
  br i1 %2382, label %2383, label %2411

; <label>:2383                                    ; preds = %2378
  %2384 = and i32 %2375, 64
  %2385 = icmp ne i32 %2384, 0
  %2386 = select i1 %2385, float %1995, float 0.000000e+00
  %2387 = fsub fast float %2215, %2368
  %2388 = fsub fast float %2216, %2369
  %2389 = fsub fast float %2217, %2370
  %2390 = fmul fast float %2381, %2387
  %2391 = fmul fast float %2381, %2388
  %2392 = fmul fast float %2381, %2389
  %2393 = fadd fast float %2390, %2368
  %2394 = fadd fast float %2391, %2369
  %2395 = fadd fast float %2392, %2370
  %2396 = fsub fast float %2201, %1809
  %2397 = fmul fast float %2381, %2396
  %2398 = fadd fast float %2397, %1809
  %2399 = fsub fast float %2343, %2371
  %2400 = fsub fast float %2344, %2372
  %2401 = fsub fast float %2345, %2373
  %2402 = fmul fast float %2386, %2399
  %2403 = fmul fast float %2386, %2400
  %2404 = fmul fast float %2386, %2401
  %2405 = fadd fast float %2402, %2371
  %2406 = fadd fast float %2403, %2372
  %2407 = fadd fast float %2404, %2373
  %2408 = fsub fast float %2358, %1812
  %2409 = fmul fast float %2381, %2408
  %2410 = fadd fast float %2409, %1812
  br label %2456

; <label>:2411                                    ; preds = %2378
  %2412 = icmp eq i32 %2376, 1
  br i1 %2412, label %2413, label %2426

; <label>:2413                                    ; preds = %2411
  %2414 = fadd fast float %2215, -1.000000e+00
  %2415 = fadd fast float %2216, -1.000000e+00
  %2416 = fadd fast float %2217, -1.000000e+00
  %2417 = fmul fast float %2381, %2414
  %2418 = fmul fast float %2381, %2415
  %2419 = fmul fast float %2381, %2416
  %2420 = fadd fast float %2417, 1.000000e+00
  %2421 = fadd fast float %2418, 1.000000e+00
  %2422 = fadd fast float %2419, 1.000000e+00
  %2423 = fmul fast float %2420, %2368
  %2424 = fmul fast float %2421, %2369
  %2425 = fmul fast float %2422, %2370
  br label %2456

; <label>:2426                                    ; preds = %2411
  %2427 = icmp eq i32 %2376, 2
  br i1 %2427, label %2428, label %2456

; <label>:2428                                    ; preds = %2426
  %2429 = call float @dx.op.unary.f32(i32 24, float %2215)  ; Sqrt(value)
  %2430 = call float @dx.op.unary.f32(i32 24, float %2216)  ; Sqrt(value)
  %2431 = call float @dx.op.unary.f32(i32 24, float %2217)  ; Sqrt(value)
  %2432 = fadd fast float %2429, -5.000000e-01
  %2433 = fadd fast float %2430, -5.000000e-01
  %2434 = fadd fast float %2431, -5.000000e-01
  %2435 = fmul fast float %2432, %2381
  %2436 = fmul fast float %2433, %2381
  %2437 = fmul fast float %2434, %2381
  %2438 = fadd fast float %2435, 5.000000e-01
  %2439 = fadd fast float %2436, 5.000000e-01
  %2440 = fadd fast float %2437, 5.000000e-01
  %2441 = fmul fast float %2438, 2.000000e+00
  %2442 = fsub fast float 1.000000e+00, %2441
  %2443 = fmul fast float %2442, %2368
  %2444 = fadd fast float %2443, %2441
  %2445 = fmul fast float %2444, %2368
  %2446 = fmul fast float %2439, 2.000000e+00
  %2447 = fsub fast float 1.000000e+00, %2446
  %2448 = fmul fast float %2447, %2369
  %2449 = fadd fast float %2448, %2446
  %2450 = fmul fast float %2449, %2369
  %2451 = fmul fast float %2440, 2.000000e+00
  %2452 = fsub fast float 1.000000e+00, %2451
  %2453 = fmul fast float %2452, %2370
  %2454 = fadd fast float %2453, %2451
  %2455 = fmul fast float %2454, %2370
  br label %2456

; <label>:2456                                    ; preds = %2428, %2426, %2413, %2383, %2367
  %2457 = phi float [ %2368, %2367 ], [ %2445, %2428 ], [ %2368, %2426 ], [ %2423, %2413 ], [ %2393, %2383 ]
  %2458 = phi float [ %2369, %2367 ], [ %2450, %2428 ], [ %2369, %2426 ], [ %2424, %2413 ], [ %2394, %2383 ]
  %2459 = phi float [ %2370, %2367 ], [ %2455, %2428 ], [ %2370, %2426 ], [ %2425, %2413 ], [ %2395, %2383 ]
  %2460 = phi float [ %2371, %2367 ], [ %2371, %2428 ], [ %2371, %2426 ], [ %2371, %2413 ], [ %2405, %2383 ]
  %2461 = phi float [ %2372, %2367 ], [ %2372, %2428 ], [ %2372, %2426 ], [ %2372, %2413 ], [ %2406, %2383 ]
  %2462 = phi float [ %2373, %2367 ], [ %2373, %2428 ], [ %2373, %2426 ], [ %2373, %2413 ], [ %2407, %2383 ]
  %2463 = phi float [ %1809, %2367 ], [ %1809, %2428 ], [ %1809, %2426 ], [ %1809, %2413 ], [ %2398, %2383 ]
  %2464 = phi float [ %1812, %2367 ], [ %1812, %2428 ], [ %1812, %2426 ], [ %1812, %2413 ], [ %2410, %2383 ]
  %2465 = and i32 %2375, 12
  %2466 = icmp eq i32 %2465, 12
  br i1 %2466, label %2539, label %2467

; <label>:2467                                    ; preds = %2456
  %2468 = and i32 %2375, 2097184
  %2469 = icmp eq i32 %2468, 2097184
  %2470 = select i1 %2469, float %1995, float 0.000000e+00
  %2471 = and i32 %2375, 4194336
  %2472 = icmp eq i32 %2471, 4194336
  %2473 = select i1 %2472, float %1995, float 0.000000e+00
  %2474 = and i32 %2375, 8388640
  %2475 = icmp eq i32 %2474, 8388640
  %2476 = select i1 %2475, float %1995, float 0.000000e+00
  %2477 = icmp eq i32 %2465, 0
  br i1 %2477, label %2478, label %2491

; <label>:2478                                    ; preds = %2467
  %2479 = fsub fast float %2296, %1801
  %2480 = fsub fast float %2297, %1802
  %2481 = fmul fast float %2470, %2479
  %2482 = fmul fast float %2470, %2480
  %2483 = fadd fast float %2481, %1801
  %2484 = fadd fast float %2482, %1802
  %2485 = fsub fast float %2298, %1811
  %2486 = fmul fast float %2473, %2485
  %2487 = fadd fast float %2486, %1811
  %2488 = fsub fast float %2295, %1810
  %2489 = fmul fast float %2476, %2488
  %2490 = fadd fast float %2489, %1810
  br label %2539

; <label>:2491                                    ; preds = %2467
  %2492 = icmp eq i32 %2465, 4
  br i1 %2492, label %2493, label %2525

; <label>:2493                                    ; preds = %2491
  %2494 = fmul fast float %2470, %2296
  %2495 = fmul fast float %2470, %2297
  %2496 = fadd fast float %2494, %1801
  %2497 = fadd fast float %2495, %1802
  %2498 = call float @dx.op.binary.f32(i32 36, float %1811, float %2298)  ; FMin(a,b)
  %2499 = fsub fast float %2498, %1811
  %2500 = fmul fast float %2499, %2473
  %2501 = fadd fast float %2500, %1811
  %2502 = fadd fast float %2295, %1810
  %2503 = fmul fast float %2502, 0x3FF337FAE0000000
  %2504 = fmul fast float %1810, %1810
  %2505 = fmul fast float %2295, %2295
  %2506 = fadd fast float %2505, %2504
  %2507 = fmul fast float %2506, 0x3FE5152B00000000
  %2508 = fmul fast float %1810, 0xBFCC1F85E0000000
  %2509 = fmul fast float %2508, %2295
  %2510 = fadd fast float %2509, 0xBFE1363700000000
  %2511 = fadd fast float %2510, %2503
  %2512 = fsub fast float %2511, %2507
  %2513 = fmul fast float %2502, 0x3FBA6F0D00000000
  %2514 = fmul fast float %2506, 0x3FD0432880000000
  %2515 = fmul fast float %1810, 0xBFEF110800000000
  %2516 = fmul fast float %2515, %2295
  %2517 = fadd fast float %2516, 1.000000e+00
  %2518 = fsub fast float %2517, %2513
  %2519 = fadd fast float %2518, %2514
  %2520 = fdiv fast float %2512, %2519
  %2521 = call float @dx.op.unary.f32(i32 7, float %2520)  ; Saturate(value)
  %2522 = fsub fast float %2521, %1810
  %2523 = fmul fast float %2522, %2476
  %2524 = fadd fast float %2523, %1810
  br label %2539

; <label>:2525                                    ; preds = %2491
  %2526 = icmp eq i32 %2465, 8
  br i1 %2526, label %2527, label %2539

; <label>:2527                                    ; preds = %2525
  %2528 = fmul fast float %2470, %2296
  %2529 = fmul fast float %2470, %2297
  %2530 = fadd fast float %2528, %1801
  %2531 = fadd fast float %2529, %1802
  %2532 = call float @dx.op.binary.f32(i32 36, float %1811, float %2298)  ; FMin(a,b)
  %2533 = fsub fast float %2532, %1811
  %2534 = fmul fast float %2533, %2473
  %2535 = fadd fast float %2534, %1811
  %2536 = fsub fast float %2295, %1810
  %2537 = fmul fast float %2476, %2536
  %2538 = fadd fast float %2537, %1810
  br label %2539

; <label>:2539                                    ; preds = %2527, %2525, %2493, %2478, %2456, %1994, %1813, %1800
  %2540 = phi float [ %1801, %2456 ], [ %1801, %1994 ], [ %1801, %1800 ], [ %2530, %2527 ], [ %1801, %2525 ], [ %2496, %2493 ], [ %2483, %2478 ], [ %1801, %1813 ]
  %2541 = phi float [ %1802, %2456 ], [ %1802, %1994 ], [ %1802, %1800 ], [ %2531, %2527 ], [ %1802, %2525 ], [ %2497, %2493 ], [ %2484, %2478 ], [ %1802, %1813 ]
  %2542 = phi float [ %2457, %2456 ], [ %1803, %1994 ], [ %1803, %1800 ], [ %2457, %2527 ], [ %2457, %2525 ], [ %2457, %2493 ], [ %2457, %2478 ], [ %1803, %1813 ]
  %2543 = phi float [ %2458, %2456 ], [ %1804, %1994 ], [ %1804, %1800 ], [ %2458, %2527 ], [ %2458, %2525 ], [ %2458, %2493 ], [ %2458, %2478 ], [ %1804, %1813 ]
  %2544 = phi float [ %2459, %2456 ], [ %1805, %1994 ], [ %1805, %1800 ], [ %2459, %2527 ], [ %2459, %2525 ], [ %2459, %2493 ], [ %2459, %2478 ], [ %1805, %1813 ]
  %2545 = phi float [ %2460, %2456 ], [ %1806, %1994 ], [ %1806, %1800 ], [ %2460, %2527 ], [ %2460, %2525 ], [ %2460, %2493 ], [ %2460, %2478 ], [ %1806, %1813 ]
  %2546 = phi float [ %2461, %2456 ], [ %1807, %1994 ], [ %1807, %1800 ], [ %2461, %2527 ], [ %2461, %2525 ], [ %2461, %2493 ], [ %2461, %2478 ], [ %1807, %1813 ]
  %2547 = phi float [ %2462, %2456 ], [ %1808, %1994 ], [ %1808, %1800 ], [ %2462, %2527 ], [ %2462, %2525 ], [ %2462, %2493 ], [ %2462, %2478 ], [ %1808, %1813 ]
  %2548 = phi float [ %2463, %2456 ], [ %1809, %1994 ], [ %1809, %1800 ], [ %2463, %2527 ], [ %2463, %2525 ], [ %2463, %2493 ], [ %2463, %2478 ], [ %1809, %1813 ]
  %2549 = phi float [ %1810, %2456 ], [ %1810, %1994 ], [ %1810, %1800 ], [ %2538, %2527 ], [ %1810, %2525 ], [ %2524, %2493 ], [ %2490, %2478 ], [ %1810, %1813 ]
  %2550 = phi float [ %1811, %2456 ], [ %1811, %1994 ], [ %1811, %1800 ], [ %2535, %2527 ], [ %1811, %2525 ], [ %2501, %2493 ], [ %2487, %2478 ], [ %1811, %1813 ]
  %2551 = phi float [ %2464, %2456 ], [ %1812, %1994 ], [ %1812, %1800 ], [ %2464, %2527 ], [ %2464, %2525 ], [ %2464, %2493 ], [ %2464, %2478 ], [ %1812, %1813 ]
  br i1 %463, label %3278, label %2552

; <label>:2552                                    ; preds = %2539
  %2553 = icmp ult i32 %517, 4
  %2554 = add i32 %61, 72
  %2555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %2556 = extractvalue %dx.types.ResRet.i32 %2555, 0
  %2557 = add i32 %61, 76
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = or i32 %2559, %2556
  %2561 = icmp eq i32 %2560, 0
  br i1 %2561, label %3278, label %2562

; <label>:2562                                    ; preds = %2552
  %2563 = and i32 %2556, 262144
  %2564 = icmp ne i32 %2563, 0
  %2565 = select i1 %2564, float %67, float 1.000000e+00
  %2566 = select i1 %2564, float %68, float 0.000000e+00
  %2567 = select i1 %2564, float %69, float 0.000000e+00
  %2568 = select i1 %2564, float %70, float 1.000000e+00
  %2569 = select i1 %2564, float %71, float %94
  %2570 = select i1 %2564, float %72, float %95
  %2571 = add i32 %61, 332
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = lshr i32 %2573, 16
  %2575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2574)  ; LegacyF16ToF32(value)
  %2576 = fmul fast float %2575, 0x3F50624DE0000000
  %2577 = add i32 %61, 136
  %2578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.i32 %2578, 0
  %2580 = lshr i32 %2579, 16
  %2581 = and i32 %2580, 255
  %2582 = lshr i32 %2579, 24
  %2583 = add i32 %61, 340
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = and i32 %2585, 65535
  %2587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2586)  ; LegacyF16ToF32(value)
  %2588 = lshr i32 %2585, 16
  %2589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2588)  ; LegacyF16ToF32(value)
  %2590 = add i32 %61, 80
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = lshr i32 %2592, 22
  %2594 = shl nuw nsw i32 %2593, 5
  %2595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2594)  ; LegacyF16ToF32(value)
  %2596 = shl i32 %2592, 4
  %2597 = and i32 %2596, 32752
  %2598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2597)  ; LegacyF16ToF32(value)
  %2599 = lshr i32 %2592, 7
  %2600 = and i32 %2599, 32752
  %2601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2600)  ; LegacyF16ToF32(value)
  %2602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2603 = extractvalue %dx.types.CBufRet.f32 %2602, 3
  %2604 = fmul fast float %2603, 1.000000e+03
  %2605 = fmul fast float %453, %2604
  %2606 = call float @dx.op.unary.f32(i32 22, float %2605)  ; Frc(value)
  %2607 = fadd fast float %2606, %443
  %2608 = fmul fast float %454, %2604
  %2609 = call float @dx.op.unary.f32(i32 22, float %2608)  ; Frc(value)
  %2610 = fadd fast float %2609, %445
  %2611 = fmul fast float %2576, %2604
  %2612 = call float @dx.op.unary.f32(i32 22, float %2611)  ; Frc(value)
  %2613 = fmul fast float %2612, 0x401921FB60000000
  %2614 = fadd fast float %2613, %2595
  %2615 = call float @dx.op.unary.f32(i32 13, float %2614)  ; Sin(value)
  %2616 = call float @dx.op.unary.f32(i32 12, float %2614)  ; Cos(value)
  %2617 = fsub fast float -0.000000e+00, %2615
  %2618 = fadd fast float %2569, -5.000000e-01
  %2619 = fadd fast float %2570, -5.000000e-01
  %2620 = fmul fast float %2587, %2618
  %2621 = fmul fast float %2589, %2619
  %2622 = fadd fast float %2620, 5.000000e-01
  %2623 = fadd fast float %2621, 5.000000e-01
  %2624 = fmul fast float %2598, %2622
  %2625 = fmul fast float %2601, %2623
  %2626 = fmul fast float %2616, %2624
  %2627 = call float @dx.op.tertiary.f32(i32 46, float %2617, float %2625, float %2626)  ; FMad(a,b,c)
  %2628 = fmul fast float %2615, %2624
  %2629 = call float @dx.op.tertiary.f32(i32 46, float %2616, float %2625, float %2628)  ; FMad(a,b,c)
  %2630 = fadd fast float %2607, %2627
  %2631 = fadd fast float %2610, %2629
  %2632 = icmp ugt i32 %2581, 1
  %2633 = icmp ugt i32 %2579, 33554431
  %2634 = or i1 %2633, %2632
  br i1 %2634, label %2635, label %2660

; <label>:2635                                    ; preds = %2562
  %2636 = add i32 %61, 276
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = lshr i32 %2638, 16
  %2640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2639)  ; LegacyF16ToF32(value)
  %2641 = fmul fast float %2603, %2640
  %2642 = call float @dx.op.unary.f32(i32 22, float %2641)  ; Frc(value)
  %2643 = mul nuw nsw i32 %2581, %2582
  %2644 = uitofp i32 %2643 to float
  %2645 = fmul fast float %2642, %2644
  %2646 = call float @dx.op.unary.f32(i32 27, float %2645)  ; Round_ni(value)
  %2647 = fptoui float %2646 to i32
  %2648 = urem i32 %2647, %2581
  %2649 = udiv i32 %2647, %2582
  %2650 = call float @dx.op.unary.f32(i32 22, float %2630)  ; Frc(value)
  %2651 = call float @dx.op.unary.f32(i32 22, float %2631)  ; Frc(value)
  %2652 = uitofp i32 %2648 to float
  %2653 = uitofp i32 %2649 to float
  %2654 = fadd fast float %2650, %2652
  %2655 = fadd fast float %2651, %2653
  %2656 = uitofp i32 %2581 to float
  %2657 = uitofp i32 %2582 to float
  %2658 = fdiv fast float %2654, %2656
  %2659 = fdiv fast float %2655, %2657
  br label %2660

; <label>:2660                                    ; preds = %2635, %2562
  %2661 = phi float [ %2658, %2635 ], [ %2630, %2562 ]
  %2662 = phi float [ %2659, %2635 ], [ %2631, %2562 ]
  %2663 = and i32 %2556, 256
  %2664 = icmp eq i32 %2663, 0
  br i1 %2664, label %2711, label %2665

; <label>:2665                                    ; preds = %2660
  %2666 = add i32 %61, 452
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = add i32 %2668, 0
  %2670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2671 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2670, %dx.types.Handle %113, float %2661, float %2662, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2672 = extractvalue %dx.types.ResRet.f32 %2671, 0
  %2673 = add i32 %61, 148
  %2674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2673, i32 undef)  ; BufferLoad(srv,index,wot)
  %2675 = extractvalue %dx.types.ResRet.i32 %2674, 0
  %2676 = shl i32 %2675, 4
  %2677 = and i32 %2676, 32752
  %2678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2677)  ; LegacyF16ToF32(value)
  %2679 = lshr i32 %2675, 7
  %2680 = and i32 %2679, 32752
  %2681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2680)  ; LegacyF16ToF32(value)
  %2682 = fsub fast float 1.000000e+00, %512
  %2683 = call float @dx.op.binary.f32(i32 35, float %2682, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2684 = bitcast float %512 to i32
  %2685 = sitofp i32 %2684 to float
  %2686 = fadd fast float %2685, 0xC1CFBF8940000000
  %2687 = fmul fast float %2681, %2686
  %2688 = fadd fast float %2687, 0x41CFBF8940000000
  %2689 = fptosi float %2688 to i32
  %2690 = bitcast i32 %2689 to float
  %2691 = bitcast float %2683 to i32
  %2692 = sitofp i32 %2691 to float
  %2693 = fadd fast float %2692, 0xC1CFBF8940000000
  %2694 = fmul fast float %2693, %2681
  %2695 = fadd fast float %2694, 0x41CFBF8940000000
  %2696 = fptosi float %2695 to i32
  %2697 = bitcast i32 %2696 to float
  %2698 = fmul fast float %2690, %2678
  %2699 = fmul fast float %2697, %2678
  %2700 = fsub fast float %2683, %2698
  %2701 = fadd fast float %2699, %2683
  %2702 = call float @dx.op.unary.f32(i32 7, float %2700)  ; Saturate(value)
  %2703 = call float @dx.op.unary.f32(i32 7, float %2701)  ; Saturate(value)
  %2704 = fsub fast float %2672, %2702
  %2705 = fsub fast float %2703, %2702
  %2706 = bitcast float %2705 to i32
  %2707 = sub nsw i32 2129859010, %2706
  %2708 = bitcast i32 %2707 to float
  %2709 = fmul fast float %2708, %2704
  %2710 = call float @dx.op.unary.f32(i32 7, float %2709)  ; Saturate(value)
  br label %2711

; <label>:2711                                    ; preds = %2665, %2660
  %2712 = phi float [ %2710, %2665 ], [ %512, %2660 ]
  %2713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %2714 = extractvalue %dx.types.ResRet.i32 %2713, 0
  %2715 = and i32 %2714, 128
  %2716 = icmp eq i32 %2715, 0
  br i1 %2716, label %2733, label %2717

; <label>:2717                                    ; preds = %2711
  %2718 = add i32 %61, 436
  %2719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2718, i32 undef)  ; BufferLoad(srv,index,wot)
  %2720 = extractvalue %dx.types.ResRet.i32 %2719, 0
  %2721 = add i32 %2720, 0
  %2722 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2721, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2723 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2722, %dx.types.Handle %113, float %2661, float %2662, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2724 = extractvalue %dx.types.ResRet.f32 %2723, 0
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = and i32 %2726, 524288
  %2728 = icmp ne i32 %2727, 0
  %2729 = fcmp fast ogt float %2724, 0x3FE0101020000000
  %2730 = select i1 %2729, float 1.000000e+00, float 0.000000e+00
  %2731 = select i1 %2728, float %2730, float %2724
  %2732 = fmul fast float %2731, %2712
  br label %2733

; <label>:2733                                    ; preds = %2717, %2711
  %2734 = phi float [ %2732, %2717 ], [ %2712, %2711 ]
  %2735 = fcmp fast ult float %2734, 0x3F70101020000000
  br i1 %2735, label %3278, label %2736

; <label>:2736                                    ; preds = %2733
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = and i32 %2738, 16
  %2740 = icmp eq i32 %2739, 0
  br i1 %2740, label %2939, label %2741

; <label>:2741                                    ; preds = %2736
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = add i32 %61, 388
  %2745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.i32 %2745, 0
  %2747 = add i32 %2746, 0
  %2748 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2747, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2749 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2748, %dx.types.Handle %112, float %2661, float %2662, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2750 = extractvalue %dx.types.ResRet.f32 %2749, 0
  %2751 = extractvalue %dx.types.ResRet.f32 %2749, 1
  %2752 = extractvalue %dx.types.ResRet.f32 %2749, 2
  %2753 = extractvalue %dx.types.ResRet.f32 %2749, 3
  %2754 = and i32 %2743, 255
  %2755 = uitofp i32 %2754 to float
  %2756 = lshr i32 %2743, 8
  %2757 = and i32 %2756, 255
  %2758 = uitofp i32 %2757 to float
  %2759 = fmul fast float %2753, %2755
  %2760 = fadd fast float %2759, %2758
  %2761 = fmul fast float %2760, 0x3F70101000000000
  %2762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.i32 %2762, 0
  %2764 = and i32 %2763, 512
  %2765 = icmp eq i32 %2764, 0
  br i1 %2765, label %2774, label %2766

; <label>:2766                                    ; preds = %2741
  %2767 = add i32 %61, 472
  %2768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2767, i32 undef)  ; BufferLoad(srv,index,wot)
  %2769 = extractvalue %dx.types.ResRet.i32 %2768, 0
  %2770 = add i32 %2769, 0
  %2771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2770, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2772 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2771, %dx.types.Handle %113, float %2661, float %2662, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2773 = extractvalue %dx.types.ResRet.f32 %2772, 0
  br label %2774

; <label>:2774                                    ; preds = %2766, %2741
  %2775 = phi float [ %2773, %2766 ], [ 1.000000e+00, %2741 ]
  %2776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %2777 = extractvalue %dx.types.ResRet.i32 %2776, 0
  %2778 = and i32 %2777, 33554432
  %2779 = icmp eq i32 %2778, 0
  br i1 %2779, label %2886, label %2780

; <label>:2780                                    ; preds = %2774
  %2781 = add i32 %61, 272
  %2782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2781, i32 undef)  ; BufferLoad(srv,index,wot)
  %2783 = extractvalue %dx.types.ResRet.i32 %2782, 0
  %2784 = and i32 %2783, 65535
  %2785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2784)  ; LegacyF16ToF32(value)
  %2786 = lshr i32 %2783, 16
  %2787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2786)  ; LegacyF16ToF32(value)
  %2788 = add i32 %61, 276
  %2789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2788, i32 undef)  ; BufferLoad(srv,index,wot)
  %2790 = extractvalue %dx.types.ResRet.i32 %2789, 0
  %2791 = and i32 %2790, 65535
  %2792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2791)  ; LegacyF16ToF32(value)
  %2793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %2794 = extractvalue %dx.types.ResRet.i32 %2793, 0
  %2795 = lshr i32 %2794, 24
  %2796 = uitofp i32 %2795 to float
  %2797 = fmul fast float %2796, 0x3F70101020000000
  %2798 = and i32 %2794, 255
  %2799 = uitofp i32 %2798 to float
  %2800 = fmul fast float %2799, 0x3F70101020000000
  %2801 = lshr i32 %2794, 8
  %2802 = and i32 %2801, 255
  %2803 = uitofp i32 %2802 to float
  %2804 = fmul fast float %2803, 0x3F70101020000000
  %2805 = lshr i32 %2794, 16
  %2806 = and i32 %2805, 255
  %2807 = uitofp i32 %2806 to float
  %2808 = fmul fast float %2807, 0x3F70101020000000
  %2809 = add i32 %61, 268
  %2810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2809, i32 undef)  ; BufferLoad(srv,index,wot)
  %2811 = extractvalue %dx.types.ResRet.i32 %2810, 0
  %2812 = lshr i32 %2811, 24
  %2813 = uitofp i32 %2812 to float
  %2814 = fmul fast float %2813, 0x3F70101020000000
  %2815 = and i32 %2811, 255
  %2816 = uitofp i32 %2815 to float
  %2817 = fmul fast float %2816, 0x3F70101020000000
  %2818 = lshr i32 %2811, 8
  %2819 = and i32 %2818, 255
  %2820 = uitofp i32 %2819 to float
  %2821 = fmul fast float %2820, 0x3F70101020000000
  %2822 = lshr i32 %2811, 16
  %2823 = and i32 %2822, 255
  %2824 = uitofp i32 %2823 to float
  %2825 = fmul fast float %2824, 0x3F70101020000000
  %2826 = bitcast float %2750 to i32
  %2827 = ashr i32 %2826, 1
  %2828 = sub nsw i32 1597463174, %2827
  %2829 = bitcast i32 %2828 to float
  %2830 = fmul fast float %2750, 5.000000e-01
  %2831 = fmul fast float %2829, %2829
  %2832 = fmul fast float %2831, %2830
  %2833 = fsub fast float 1.500000e+00, %2832
  %2834 = fmul fast float %2829, %2750
  %2835 = fmul fast float %2834, %2833
  %2836 = bitcast float %2751 to i32
  %2837 = ashr i32 %2836, 1
  %2838 = sub nsw i32 1597463174, %2837
  %2839 = bitcast i32 %2838 to float
  %2840 = fmul fast float %2751, 5.000000e-01
  %2841 = fmul fast float %2839, %2839
  %2842 = fmul fast float %2841, %2840
  %2843 = fsub fast float 1.500000e+00, %2842
  %2844 = fmul fast float %2839, %2751
  %2845 = fmul fast float %2844, %2843
  %2846 = bitcast float %2752 to i32
  %2847 = ashr i32 %2846, 1
  %2848 = sub nsw i32 1597463174, %2847
  %2849 = bitcast i32 %2848 to float
  %2850 = fmul fast float %2752, 5.000000e-01
  %2851 = fmul fast float %2849, %2849
  %2852 = fmul fast float %2851, %2850
  %2853 = fsub fast float 1.500000e+00, %2852
  %2854 = fmul fast float %2849, %2752
  %2855 = fmul fast float %2854, %2853
  %2856 = fsub fast float %2835, %2817
  %2857 = fsub fast float %2845, %2821
  %2858 = fsub fast float %2855, %2825
  %2859 = fmul fast float %2856, %2785
  %2860 = fmul fast float %2857, %2787
  %2861 = fmul fast float %2858, %2792
  %2862 = fadd fast float %2859, %2800
  %2863 = fadd fast float %2860, %2804
  %2864 = fadd fast float %2861, %2808
  %2865 = call float @dx.op.unary.f32(i32 7, float %2862)  ; Saturate(value)
  %2866 = call float @dx.op.unary.f32(i32 7, float %2863)  ; Saturate(value)
  %2867 = call float @dx.op.unary.f32(i32 7, float %2864)  ; Saturate(value)
  %2868 = fmul fast float %2865, %2865
  %2869 = fmul fast float %2866, %2866
  %2870 = fmul fast float %2867, %2867
  %2871 = fsub fast float %2868, %2750
  %2872 = fsub fast float %2869, %2751
  %2873 = fsub fast float %2870, %2752
  %2874 = fmul fast float %2871, %2775
  %2875 = fmul fast float %2872, %2775
  %2876 = fmul fast float %2873, %2775
  %2877 = fadd fast float %2874, %2750
  %2878 = fadd fast float %2875, %2751
  %2879 = fadd fast float %2876, %2752
  %2880 = fadd fast float %2797, %2761
  %2881 = fsub fast float %2880, %2814
  %2882 = call float @dx.op.unary.f32(i32 7, float %2881)  ; Saturate(value)
  %2883 = fsub fast float %2882, %2761
  %2884 = fmul fast float %2883, %2775
  %2885 = fadd fast float %2884, %2761
  br label %2939

; <label>:2886                                    ; preds = %2774
  %2887 = and i32 %2777, 134217728
  %2888 = icmp eq i32 %2887, 0
  br i1 %2888, label %2923, label %2889

; <label>:2889                                    ; preds = %2886
  %2890 = call float @dx.op.unary.f32(i32 24, float %430)  ; Sqrt(value)
  %2891 = call float @dx.op.unary.f32(i32 24, float %434)  ; Sqrt(value)
  %2892 = call float @dx.op.unary.f32(i32 24, float %438)  ; Sqrt(value)
  %2893 = fadd fast float %2890, -5.000000e-01
  %2894 = fadd fast float %2891, -5.000000e-01
  %2895 = fadd fast float %2892, -5.000000e-01
  %2896 = fmul fast float %2893, %2775
  %2897 = fmul fast float %2894, %2775
  %2898 = fmul fast float %2895, %2775
  %2899 = fadd fast float %2896, 5.000000e-01
  %2900 = fadd fast float %2897, 5.000000e-01
  %2901 = fadd fast float %2898, 5.000000e-01
  %2902 = call float @dx.op.unary.f32(i32 24, float %2750)  ; Sqrt(value)
  %2903 = call float @dx.op.unary.f32(i32 24, float %2751)  ; Sqrt(value)
  %2904 = call float @dx.op.unary.f32(i32 24, float %2752)  ; Sqrt(value)
  %2905 = fmul fast float %2899, 2.000000e+00
  %2906 = fsub fast float 1.000000e+00, %2905
  %2907 = fmul fast float %2906, %2902
  %2908 = fadd fast float %2907, %2905
  %2909 = fmul fast float %2908, %2902
  %2910 = fmul fast float %2900, 2.000000e+00
  %2911 = fsub fast float 1.000000e+00, %2910
  %2912 = fmul fast float %2911, %2903
  %2913 = fadd fast float %2912, %2910
  %2914 = fmul fast float %2913, %2903
  %2915 = fmul fast float %2901, 2.000000e+00
  %2916 = fsub fast float 1.000000e+00, %2915
  %2917 = fmul fast float %2916, %2904
  %2918 = fadd fast float %2917, %2915
  %2919 = fmul fast float %2918, %2904
  %2920 = fmul fast float %2909, %2909
  %2921 = fmul fast float %2914, %2914
  %2922 = fmul fast float %2919, %2919
  br label %2939

; <label>:2923                                    ; preds = %2886
  %2924 = fmul fast float %430, %430
  %2925 = fmul fast float %434, %434
  %2926 = fmul fast float %438, %438
  %2927 = fadd fast float %2924, -1.000000e+00
  %2928 = fadd fast float %2925, -1.000000e+00
  %2929 = fadd fast float %2926, -1.000000e+00
  %2930 = fmul fast float %2775, %2927
  %2931 = fmul fast float %2775, %2928
  %2932 = fmul fast float %2775, %2929
  %2933 = fadd fast float %2930, 1.000000e+00
  %2934 = fadd fast float %2931, 1.000000e+00
  %2935 = fadd fast float %2932, 1.000000e+00
  %2936 = fmul fast float %2933, %2750
  %2937 = fmul fast float %2934, %2751
  %2938 = fmul fast float %2935, %2752
  br label %2939

; <label>:2939                                    ; preds = %2923, %2889, %2780, %2736
  %2940 = phi float [ %2885, %2780 ], [ %2761, %2889 ], [ %2761, %2923 ], [ 0x3FA23C0BE0000000, %2736 ]
  %2941 = phi float [ %2877, %2780 ], [ %2920, %2889 ], [ %2936, %2923 ], [ 1.000000e+00, %2736 ]
  %2942 = phi float [ %2878, %2780 ], [ %2921, %2889 ], [ %2937, %2923 ], [ 1.000000e+00, %2736 ]
  %2943 = phi float [ %2879, %2780 ], [ %2922, %2889 ], [ %2938, %2923 ], [ 1.000000e+00, %2736 ]
  %2944 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2945 = extractvalue %dx.types.CBufRet.i32 %2944, 1
  %2946 = and i32 %2945, 1
  %2947 = icmp ne i32 %2946, 0
  %2948 = add i32 %61, 356
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = and i32 %2950, 32
  %2952 = icmp ne i32 %2951, 0
  %2953 = and i1 %2947, %2952
  %2954 = select i1 %2953, float 1.000000e+00, float %2941
  %2955 = select i1 %2953, float 0x3FD3333340000000, float %2942
  %2956 = select i1 %2953, float 0x3FD3333340000000, float %2943
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = and i32 %2958, 32
  %2960 = icmp eq i32 %2959, 0
  br i1 %2960, label %3033, label %2961

; <label>:2961                                    ; preds = %2939
  %2962 = add i32 %61, 140
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = add i32 %61, 404
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = add i32 %2967, 0
  %2969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2970 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2969, %dx.types.Handle %112, float %2661, float %2662, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2971 = extractvalue %dx.types.ResRet.f32 %2970, 0
  %2972 = extractvalue %dx.types.ResRet.f32 %2970, 1
  %2973 = extractvalue %dx.types.ResRet.f32 %2970, 2
  %2974 = extractvalue %dx.types.ResRet.f32 %2970, 3
  %2975 = and i32 %2964, 255
  %2976 = uitofp i32 %2975 to float
  %2977 = lshr i32 %2964, 8
  %2978 = and i32 %2977, 255
  %2979 = uitofp i32 %2978 to float
  %2980 = lshr i32 %2964, 16
  %2981 = and i32 %2980, 255
  %2982 = uitofp i32 %2981 to float
  %2983 = fmul fast float %2982, 0x3F70101000000000
  %2984 = fmul fast float %2971, %2976
  %2985 = fadd fast float %2984, %2979
  %2986 = fmul fast float %2985, 0x3F70101000000000
  %2987 = fadd fast float %2972, -5.000000e-01
  %2988 = fadd fast float %2974, -5.000000e-01
  %2989 = fmul fast float %2987, %2983
  %2990 = fmul fast float %2988, %2983
  %2991 = fadd fast float %2989, 5.000000e-01
  %2992 = fadd fast float %2990, 5.000000e-01
  %2993 = fmul fast float %2991, 2.000000e+00
  %2994 = fadd fast float %2993, -1.000000e+00
  %2995 = fmul fast float %2992, 2.000000e+00
  %2996 = fadd fast float %2995, -1.000000e+00
  %2997 = fadd fast float %2994, %2996
  %2998 = fmul fast float %2997, 5.000000e-01
  %2999 = fsub fast float %2994, %2996
  %3000 = fmul fast float %2999, 5.000000e-01
  %3001 = call float @dx.op.unary.f32(i32 6, float %2998)  ; FAbs(value)
  %3002 = fsub fast float 1.000000e+00, %3001
  %3003 = call float @dx.op.unary.f32(i32 6, float %3000)  ; FAbs(value)
  %3004 = fsub fast float %3002, %3003
  %3005 = call float @dx.op.dot3.f32(i32 55, float %2998, float %3000, float %3004, float %2998, float %3000, float %3004)  ; Dot3(ax,ay,az,bx,by,bz)
  %3006 = call float @dx.op.unary.f32(i32 25, float %3005)  ; Rsqrt(value)
  %3007 = fmul fast float %2998, %3006
  %3008 = fmul fast float %3000, %3006
  %3009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3010 = extractvalue %dx.types.ResRet.i32 %3009, 0
  %3011 = and i32 %3010, 67108864
  %3012 = icmp eq i32 %3011, 0
  br i1 %3012, label %3029, label %3013

; <label>:3013                                    ; preds = %2961
  %3014 = add i32 %61, 328
  %3015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3014, i32 undef)  ; BufferLoad(srv,index,wot)
  %3016 = extractvalue %dx.types.ResRet.i32 %3015, 0
  %3017 = and i32 %3016, 65535
  %3018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3017)  ; LegacyF16ToF32(value)
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = and i32 %3020, 65535
  %3022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3021)  ; LegacyF16ToF32(value)
  %3023 = lshr i32 %3016, 16
  %3024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3023)  ; LegacyF16ToF32(value)
  %3025 = fsub fast float %2986, %3024
  %3026 = fmul fast float %3025, %3018
  %3027 = fadd fast float %3026, %3022
  %3028 = call float @dx.op.unary.f32(i32 7, float %3027)  ; Saturate(value)
  br label %3029

; <label>:3029                                    ; preds = %3013, %2961
  %3030 = phi float [ %3028, %3013 ], [ %2986, %2961 ]
  %3031 = call float @dx.op.dot2.f32(i32 54, float %3007, float %3008, float %2565, float %2566)  ; Dot2(ax,ay,bx,by)
  %3032 = call float @dx.op.dot2.f32(i32 54, float %3007, float %3008, float %2567, float %2568)  ; Dot2(ax,ay,bx,by)
  br label %3033

; <label>:3033                                    ; preds = %3029, %2939
  %3034 = phi float [ %3030, %3029 ], [ 0x3FD6666660000000, %2939 ]
  %3035 = phi float [ %3031, %3029 ], [ 0.000000e+00, %2939 ]
  %3036 = phi float [ %3032, %3029 ], [ 0.000000e+00, %2939 ]
  %3037 = phi float [ %2973, %3029 ], [ 1.000000e+00, %2939 ]
  %3038 = add i32 %61, 208
  %3039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3038, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.i32 %3039, 0
  %3041 = lshr i32 %3040, 22
  %3042 = shl nuw nsw i32 %3041, 5
  %3043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3042)  ; LegacyF16ToF32(value)
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = and i32 %3045, 64
  %3047 = icmp eq i32 %3046, 0
  br i1 %3047, label %3081, label %3048

; <label>:3048                                    ; preds = %3033
  %3049 = add i32 %61, 420
  %3050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3049, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.i32 %3050, 0
  %3052 = add i32 %3051, 0
  %3053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = and i32 %3055, 131072
  %3057 = icmp eq i32 %3056, 0
  %3058 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3053, %dx.types.Handle %112, float %2661, float %2662, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3059 = extractvalue %dx.types.ResRet.f32 %3058, 0
  %3060 = extractvalue %dx.types.ResRet.f32 %3058, 1
  %3061 = extractvalue %dx.types.ResRet.f32 %3058, 2
  %3062 = fmul fast float %3059, %418
  %3063 = fmul fast float %3060, %421
  %3064 = fmul fast float %3061, %424
  br i1 %3057, label %3071, label %3065

; <label>:3065                                    ; preds = %3048
  %3066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3067 = extractvalue %dx.types.CBufRet.f32 %3066, 0
  %3068 = fmul fast float %3067, %3062
  %3069 = fmul fast float %3067, %3063
  %3070 = fmul fast float %3067, %3064
  br label %3071

; <label>:3071                                    ; preds = %3065, %3048
  %3072 = phi float [ %3068, %3065 ], [ %3062, %3048 ]
  %3073 = phi float [ %3069, %3065 ], [ %3063, %3048 ]
  %3074 = phi float [ %3070, %3065 ], [ %3064, %3048 ]
  %3075 = fmul fast float %3072, %3043
  %3076 = select i1 %275, float %3075, float %3072
  %3077 = call float @dx.op.dot3.f32(i32 55, float %3076, float %3073, float %3074, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3078 = select i1 %275, float 0.000000e+00, float %3072
  %3079 = select i1 %275, float %3077, float %3073
  %3080 = select i1 %275, float 0.000000e+00, float %3074
  br label %3081

; <label>:3081                                    ; preds = %3071, %3033
  %3082 = phi float [ %3078, %3071 ], [ 0.000000e+00, %3033 ]
  %3083 = phi float [ %3079, %3071 ], [ 0.000000e+00, %3033 ]
  %3084 = phi float [ %3080, %3071 ], [ 0.000000e+00, %3033 ]
  %3085 = add i32 %61, 144
  %3086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3085, i32 undef)  ; BufferLoad(srv,index,wot)
  %3087 = extractvalue %dx.types.ResRet.i32 %3086, 0
  %3088 = and i32 %3087, 255
  %3089 = uitofp i32 %3088 to float
  %3090 = lshr i32 %3087, 8
  %3091 = and i32 %3090, 255
  %3092 = uitofp i32 %3091 to float
  %3093 = call float @dx.op.dot3.f32(i32 55, float %2954, float %2955, float %2956, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3094 = fmul fast float %3092, %3093
  %3095 = fadd fast float %3094, %3089
  %3096 = fmul fast float %3095, 0x3F70101020000000
  %3097 = call float @dx.op.unary.f32(i32 7, float %3096)  ; Saturate(value)
  br i1 %2553, label %3098, label %3106

; <label>:3098                                    ; preds = %3081
  %3099 = fsub fast float 1.000000e+00, %2734
  %3100 = fmul fast float %3099, %2542
  %3101 = fmul fast float %3099, %2543
  %3102 = fmul fast float %3099, %2544
  %3103 = fmul fast float %3099, %2545
  %3104 = fmul fast float %3099, %2546
  %3105 = fmul fast float %3099, %2547
  br label %3106

; <label>:3106                                    ; preds = %3098, %3081
  %3107 = phi float [ %3100, %3098 ], [ %2542, %3081 ]
  %3108 = phi float [ %3101, %3098 ], [ %2543, %3081 ]
  %3109 = phi float [ %3102, %3098 ], [ %2544, %3081 ]
  %3110 = phi float [ %3103, %3098 ], [ %2545, %3081 ]
  %3111 = phi float [ %3104, %3098 ], [ %2546, %3081 ]
  %3112 = phi float [ %3105, %3098 ], [ %2547, %3081 ]
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = and i32 %3114, 3
  %3116 = icmp eq i32 %3115, 3
  br i1 %3116, label %3195, label %3117

; <label>:3117                                    ; preds = %3106
  %3118 = and i32 %3114, 16
  %3119 = icmp ne i32 %3118, 0
  %3120 = select i1 %3119, float %2734, float 0.000000e+00
  %3121 = icmp eq i32 %3115, 0
  br i1 %3121, label %3122, label %3150

; <label>:3122                                    ; preds = %3117
  %3123 = and i32 %3114, 64
  %3124 = icmp ne i32 %3123, 0
  %3125 = select i1 %3124, float %2734, float 0.000000e+00
  %3126 = fsub fast float %2954, %3107
  %3127 = fsub fast float %2955, %3108
  %3128 = fsub fast float %2956, %3109
  %3129 = fmul fast float %3120, %3126
  %3130 = fmul fast float %3120, %3127
  %3131 = fmul fast float %3120, %3128
  %3132 = fadd fast float %3129, %3107
  %3133 = fadd fast float %3130, %3108
  %3134 = fadd fast float %3131, %3109
  %3135 = fsub fast float %2940, %2548
  %3136 = fmul fast float %3120, %3135
  %3137 = fadd fast float %3136, %2548
  %3138 = fsub fast float %3082, %3110
  %3139 = fsub fast float %3083, %3111
  %3140 = fsub fast float %3084, %3112
  %3141 = fmul fast float %3125, %3138
  %3142 = fmul fast float %3125, %3139
  %3143 = fmul fast float %3125, %3140
  %3144 = fadd fast float %3141, %3110
  %3145 = fadd fast float %3142, %3111
  %3146 = fadd fast float %3143, %3112
  %3147 = fsub fast float %3097, %2551
  %3148 = fmul fast float %3120, %3147
  %3149 = fadd fast float %3148, %2551
  br label %3195

; <label>:3150                                    ; preds = %3117
  %3151 = icmp eq i32 %3115, 1
  br i1 %3151, label %3152, label %3165

; <label>:3152                                    ; preds = %3150
  %3153 = fadd fast float %2954, -1.000000e+00
  %3154 = fadd fast float %2955, -1.000000e+00
  %3155 = fadd fast float %2956, -1.000000e+00
  %3156 = fmul fast float %3120, %3153
  %3157 = fmul fast float %3120, %3154
  %3158 = fmul fast float %3120, %3155
  %3159 = fadd fast float %3156, 1.000000e+00
  %3160 = fadd fast float %3157, 1.000000e+00
  %3161 = fadd fast float %3158, 1.000000e+00
  %3162 = fmul fast float %3159, %3107
  %3163 = fmul fast float %3160, %3108
  %3164 = fmul fast float %3161, %3109
  br label %3195

; <label>:3165                                    ; preds = %3150
  %3166 = icmp eq i32 %3115, 2
  br i1 %3166, label %3167, label %3195

; <label>:3167                                    ; preds = %3165
  %3168 = call float @dx.op.unary.f32(i32 24, float %2954)  ; Sqrt(value)
  %3169 = call float @dx.op.unary.f32(i32 24, float %2955)  ; Sqrt(value)
  %3170 = call float @dx.op.unary.f32(i32 24, float %2956)  ; Sqrt(value)
  %3171 = fadd fast float %3168, -5.000000e-01
  %3172 = fadd fast float %3169, -5.000000e-01
  %3173 = fadd fast float %3170, -5.000000e-01
  %3174 = fmul fast float %3171, %3120
  %3175 = fmul fast float %3172, %3120
  %3176 = fmul fast float %3173, %3120
  %3177 = fadd fast float %3174, 5.000000e-01
  %3178 = fadd fast float %3175, 5.000000e-01
  %3179 = fadd fast float %3176, 5.000000e-01
  %3180 = fmul fast float %3177, 2.000000e+00
  %3181 = fsub fast float 1.000000e+00, %3180
  %3182 = fmul fast float %3181, %3107
  %3183 = fadd fast float %3182, %3180
  %3184 = fmul fast float %3183, %3107
  %3185 = fmul fast float %3178, 2.000000e+00
  %3186 = fsub fast float 1.000000e+00, %3185
  %3187 = fmul fast float %3186, %3108
  %3188 = fadd fast float %3187, %3185
  %3189 = fmul fast float %3188, %3108
  %3190 = fmul fast float %3179, 2.000000e+00
  %3191 = fsub fast float 1.000000e+00, %3190
  %3192 = fmul fast float %3191, %3109
  %3193 = fadd fast float %3192, %3190
  %3194 = fmul fast float %3193, %3109
  br label %3195

; <label>:3195                                    ; preds = %3167, %3165, %3152, %3122, %3106
  %3196 = phi float [ %3107, %3106 ], [ %3184, %3167 ], [ %3107, %3165 ], [ %3162, %3152 ], [ %3132, %3122 ]
  %3197 = phi float [ %3108, %3106 ], [ %3189, %3167 ], [ %3108, %3165 ], [ %3163, %3152 ], [ %3133, %3122 ]
  %3198 = phi float [ %3109, %3106 ], [ %3194, %3167 ], [ %3109, %3165 ], [ %3164, %3152 ], [ %3134, %3122 ]
  %3199 = phi float [ %3110, %3106 ], [ %3110, %3167 ], [ %3110, %3165 ], [ %3110, %3152 ], [ %3144, %3122 ]
  %3200 = phi float [ %3111, %3106 ], [ %3111, %3167 ], [ %3111, %3165 ], [ %3111, %3152 ], [ %3145, %3122 ]
  %3201 = phi float [ %3112, %3106 ], [ %3112, %3167 ], [ %3112, %3165 ], [ %3112, %3152 ], [ %3146, %3122 ]
  %3202 = phi float [ %2548, %3106 ], [ %2548, %3167 ], [ %2548, %3165 ], [ %2548, %3152 ], [ %3137, %3122 ]
  %3203 = phi float [ %2551, %3106 ], [ %2551, %3167 ], [ %2551, %3165 ], [ %2551, %3152 ], [ %3149, %3122 ]
  %3204 = and i32 %3114, 12
  %3205 = icmp eq i32 %3204, 12
  br i1 %3205, label %3278, label %3206

; <label>:3206                                    ; preds = %3195
  %3207 = and i32 %3114, 2097184
  %3208 = icmp eq i32 %3207, 2097184
  %3209 = select i1 %3208, float %2734, float 0.000000e+00
  %3210 = and i32 %3114, 4194336
  %3211 = icmp eq i32 %3210, 4194336
  %3212 = select i1 %3211, float %2734, float 0.000000e+00
  %3213 = and i32 %3114, 8388640
  %3214 = icmp eq i32 %3213, 8388640
  %3215 = select i1 %3214, float %2734, float 0.000000e+00
  %3216 = icmp eq i32 %3204, 0
  br i1 %3216, label %3217, label %3230

; <label>:3217                                    ; preds = %3206
  %3218 = fsub fast float %3035, %2540
  %3219 = fsub fast float %3036, %2541
  %3220 = fmul fast float %3209, %3218
  %3221 = fmul fast float %3209, %3219
  %3222 = fadd fast float %3220, %2540
  %3223 = fadd fast float %3221, %2541
  %3224 = fsub fast float %3037, %2550
  %3225 = fmul fast float %3212, %3224
  %3226 = fadd fast float %3225, %2550
  %3227 = fsub fast float %3034, %2549
  %3228 = fmul fast float %3215, %3227
  %3229 = fadd fast float %3228, %2549
  br label %3278

; <label>:3230                                    ; preds = %3206
  %3231 = icmp eq i32 %3204, 4
  br i1 %3231, label %3232, label %3264

; <label>:3232                                    ; preds = %3230
  %3233 = fmul fast float %3209, %3035
  %3234 = fmul fast float %3209, %3036
  %3235 = fadd fast float %3233, %2540
  %3236 = fadd fast float %3234, %2541
  %3237 = call float @dx.op.binary.f32(i32 36, float %2550, float %3037)  ; FMin(a,b)
  %3238 = fsub fast float %3237, %2550
  %3239 = fmul fast float %3238, %3212
  %3240 = fadd fast float %3239, %2550
  %3241 = fadd fast float %3034, %2549
  %3242 = fmul fast float %3241, 0x3FF337FAE0000000
  %3243 = fmul fast float %2549, %2549
  %3244 = fmul fast float %3034, %3034
  %3245 = fadd fast float %3244, %3243
  %3246 = fmul fast float %3245, 0x3FE5152B00000000
  %3247 = fmul fast float %2549, 0xBFCC1F85E0000000
  %3248 = fmul fast float %3247, %3034
  %3249 = fadd fast float %3248, 0xBFE1363700000000
  %3250 = fadd fast float %3249, %3242
  %3251 = fsub fast float %3250, %3246
  %3252 = fmul fast float %3241, 0x3FBA6F0D00000000
  %3253 = fmul fast float %3245, 0x3FD0432880000000
  %3254 = fmul fast float %2549, 0xBFEF110800000000
  %3255 = fmul fast float %3254, %3034
  %3256 = fadd fast float %3255, 1.000000e+00
  %3257 = fsub fast float %3256, %3252
  %3258 = fadd fast float %3257, %3253
  %3259 = fdiv fast float %3251, %3258
  %3260 = call float @dx.op.unary.f32(i32 7, float %3259)  ; Saturate(value)
  %3261 = fsub fast float %3260, %2549
  %3262 = fmul fast float %3261, %3215
  %3263 = fadd fast float %3262, %2549
  br label %3278

; <label>:3264                                    ; preds = %3230
  %3265 = icmp eq i32 %3204, 8
  br i1 %3265, label %3266, label %3278

; <label>:3266                                    ; preds = %3264
  %3267 = fmul fast float %3209, %3035
  %3268 = fmul fast float %3209, %3036
  %3269 = fadd fast float %3267, %2540
  %3270 = fadd fast float %3268, %2541
  %3271 = call float @dx.op.binary.f32(i32 36, float %2550, float %3037)  ; FMin(a,b)
  %3272 = fsub fast float %3271, %2550
  %3273 = fmul fast float %3272, %3212
  %3274 = fadd fast float %3273, %2550
  %3275 = fsub fast float %3034, %2549
  %3276 = fmul fast float %3215, %3275
  %3277 = fadd fast float %3276, %2549
  br label %3278

; <label>:3278                                    ; preds = %3266, %3264, %3232, %3217, %3195, %2733, %2552, %2539
  %3279 = phi float [ %2540, %3195 ], [ %2540, %2733 ], [ %2540, %2539 ], [ %2540, %2552 ], [ %3222, %3217 ], [ %3235, %3232 ], [ %2540, %3264 ], [ %3269, %3266 ]
  %3280 = phi float [ %2541, %3195 ], [ %2541, %2733 ], [ %2541, %2539 ], [ %2541, %2552 ], [ %3223, %3217 ], [ %3236, %3232 ], [ %2541, %3264 ], [ %3270, %3266 ]
  %3281 = phi float [ %3196, %3195 ], [ %2542, %2733 ], [ %2542, %2539 ], [ %2542, %2552 ], [ %3196, %3217 ], [ %3196, %3232 ], [ %3196, %3264 ], [ %3196, %3266 ]
  %3282 = phi float [ %3197, %3195 ], [ %2543, %2733 ], [ %2543, %2539 ], [ %2543, %2552 ], [ %3197, %3217 ], [ %3197, %3232 ], [ %3197, %3264 ], [ %3197, %3266 ]
  %3283 = phi float [ %3198, %3195 ], [ %2544, %2733 ], [ %2544, %2539 ], [ %2544, %2552 ], [ %3198, %3217 ], [ %3198, %3232 ], [ %3198, %3264 ], [ %3198, %3266 ]
  %3284 = phi float [ %3199, %3195 ], [ %2545, %2733 ], [ %2545, %2539 ], [ %2545, %2552 ], [ %3199, %3217 ], [ %3199, %3232 ], [ %3199, %3264 ], [ %3199, %3266 ]
  %3285 = phi float [ %3200, %3195 ], [ %2546, %2733 ], [ %2546, %2539 ], [ %2546, %2552 ], [ %3200, %3217 ], [ %3200, %3232 ], [ %3200, %3264 ], [ %3200, %3266 ]
  %3286 = phi float [ %3201, %3195 ], [ %2547, %2733 ], [ %2547, %2539 ], [ %2547, %2552 ], [ %3201, %3217 ], [ %3201, %3232 ], [ %3201, %3264 ], [ %3201, %3266 ]
  %3287 = phi float [ %3202, %3195 ], [ %2548, %2733 ], [ %2548, %2539 ], [ %2548, %2552 ], [ %3202, %3217 ], [ %3202, %3232 ], [ %3202, %3264 ], [ %3202, %3266 ]
  %3288 = phi float [ %2549, %3195 ], [ %2549, %2733 ], [ %2549, %2539 ], [ %2549, %2552 ], [ %3229, %3217 ], [ %3263, %3232 ], [ %2549, %3264 ], [ %3277, %3266 ]
  %3289 = phi float [ %2550, %3195 ], [ %2550, %2733 ], [ %2550, %2539 ], [ %2550, %2552 ], [ %3226, %3217 ], [ %3240, %3232 ], [ %2550, %3264 ], [ %3274, %3266 ]
  %3290 = phi float [ %3203, %3195 ], [ %2551, %2733 ], [ %2551, %2539 ], [ %2551, %2552 ], [ %3203, %3217 ], [ %3203, %3232 ], [ %3203, %3264 ], [ %3203, %3266 ]
  %3291 = add i32 %61, 360
  %3292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3291, i32 undef)  ; BufferLoad(srv,index,wot)
  %3293 = extractvalue %dx.types.ResRet.i32 %3292, 0
  %3294 = extractvalue %dx.types.ResRet.i32 %3292, 1
  %3295 = bitcast i32 %3293 to float
  %3296 = bitcast i32 %3294 to float
  %3297 = fcmp fast oge float %3295, 0.000000e+00
  %3298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3299 = extractvalue %dx.types.CBufRet.f32 %3298, 0
  %3300 = select i1 %3297, float %3295, float %3299
  %3301 = fadd fast float %3300, %217
  %3302 = fmul fast float %3296, %218
  %3303 = add i32 %61, 456
  %3304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3303, i32 undef)  ; BufferLoad(srv,index,wot)
  %3305 = extractvalue %dx.types.ResRet.i32 %3304, 0
  %3306 = add i32 %3305, 0
  %3307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3306, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3308 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3307, %dx.types.Handle %113, float %94, float %95, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3309 = extractvalue %dx.types.ResRet.f32 %3308, 0
  %3310 = fmul fast float %3302, %3309
  %3311 = fadd fast float %3301, %3310
  %3312 = and i32 %209, 65535
  %3313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3312)  ; LegacyF16ToF32(value)
  %3314 = lshr i32 %209, 16
  %3315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3314)  ; LegacyF16ToF32(value)
  %3316 = and i32 %210, 65535
  %3317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3316)  ; LegacyF16ToF32(value)
  %3318 = fmul fast float %3313, %3281
  %3319 = fmul fast float %3315, %3282
  %3320 = fmul fast float %3317, %3283
  %3321 = shl i32 %211, 4
  %3322 = and i32 %3321, 32752
  %3323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3322)  ; LegacyF16ToF32(value)
  %3324 = lshr i32 %211, 7
  %3325 = and i32 %3324, 32752
  %3326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3325)  ; LegacyF16ToF32(value)
  %3327 = lshr i32 %211, 22
  %3328 = shl nuw nsw i32 %3327, 5
  %3329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3328)  ; LegacyF16ToF32(value)
  %3330 = and i32 %212, 65535
  %3331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3330)  ; LegacyF16ToF32(value)
  %3332 = fmul fast float %3323, %3284
  %3333 = fmul fast float %3332, %3331
  %3334 = fmul fast float %3326, %3285
  %3335 = fmul fast float %3334, %3331
  %3336 = fmul fast float %3329, %3286
  %3337 = fmul fast float %3336, %3331
  %3338 = call float @dx.op.dot2.f32(i32 54, float %3279, float %3280, float %3279, float %3280)  ; Dot2(ax,ay,bx,by)
  %3339 = fmul fast float %3338, 0x3FE3333340000000
  %3340 = fsub fast float 1.000000e+00, %3339
  %3341 = call float @dx.op.dot3.f32(i32 55, float %3279, float %3280, float %3340, float %3279, float %3280, float %3340)  ; Dot3(ax,ay,az,bx,by,bz)
  %3342 = call float @dx.op.unary.f32(i32 25, float %3341)  ; Rsqrt(value)
  %3343 = fmul fast float %3342, %3279
  %3344 = fmul fast float %3342, %3280
  %3345 = fmul fast float %3340, %3342
  %3346 = fmul fast float %3345, %123
  %3347 = fmul fast float %3345, %124
  %3348 = fmul fast float %3345, %125
  %3349 = fmul fast float %3343, %87
  %3350 = fmul fast float %3343, %88
  %3351 = fmul fast float %3343, %89
  %3352 = fadd fast float %3346, %3349
  %3353 = fadd fast float %3347, %3350
  %3354 = fadd fast float %3348, %3351
  %3355 = fmul fast float %135, %3344
  %3356 = fmul fast float %136, %3344
  %3357 = fmul fast float %137, %3344
  %3358 = fadd fast float %3352, %3355
  %3359 = fadd fast float %3353, %3356
  %3360 = fadd fast float %3354, %3357
  %3361 = call float @dx.op.dot3.f32(i32 55, float %3358, float %3359, float %3360, float %3358, float %3359, float %3360)  ; Dot3(ax,ay,az,bx,by,bz)
  %3362 = call float @dx.op.unary.f32(i32 25, float %3361)  ; Rsqrt(value)
  %3363 = fmul fast float %3358, %3362
  %3364 = fmul fast float %3359, %3362
  %3365 = fmul fast float %3360, %3362
  %3366 = icmp eq i32 %63, 65535
  br i1 %3366, label %3885, label %3367

; <label>:3367                                    ; preds = %3278
  %3368 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3369 = call float @dx.op.unary.f32(i32 83, float %65)  ; DerivCoarseX(value)
  %3370 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %3371 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3372 = call float @dx.op.unary.f32(i32 84, float %65)  ; DerivCoarseY(value)
  %3373 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %3374 = fadd fast float %3368, %64
  %3375 = fadd fast float %3369, %65
  %3376 = fadd fast float %3370, %66
  %3377 = fadd fast float %3371, %64
  %3378 = fadd fast float %3372, %65
  %3379 = fadd fast float %3373, %66
  %3380 = mul i32 %63, 48
  %3381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.f32 %3381, 0
  %3383 = extractvalue %dx.types.ResRet.f32 %3381, 1
  %3384 = extractvalue %dx.types.ResRet.f32 %3381, 2
  %3385 = add i32 %3380, 16
  %3386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.f32 %3386, 0
  %3388 = extractvalue %dx.types.ResRet.f32 %3386, 1
  %3389 = extractvalue %dx.types.ResRet.f32 %3386, 2
  %3390 = add i32 %3380, 32
  %3391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.f32 %3391, 0
  %3393 = extractvalue %dx.types.ResRet.f32 %3391, 1
  %3394 = extractvalue %dx.types.ResRet.f32 %3391, 2
  %3395 = extractvalue %dx.types.ResRet.f32 %3391, 3
  %3396 = bitcast float %3395 to i32
  %3397 = fmul fast float %3382, %64
  %3398 = fmul fast float %3383, %65
  %3399 = fmul fast float %3384, %66
  %3400 = fsub fast float %3397, %3387
  %3401 = fsub fast float %3398, %3388
  %3402 = fsub fast float %3399, %3389
  %3403 = call float @dx.op.unary.f32(i32 7, float %3400)  ; Saturate(value)
  %3404 = call float @dx.op.unary.f32(i32 7, float %3401)  ; Saturate(value)
  %3405 = call float @dx.op.unary.f32(i32 7, float %3402)  ; Saturate(value)
  %3406 = fmul fast float %3403, %3392
  %3407 = fmul fast float %3404, %3393
  %3408 = fmul fast float %3405, %3394
  %3409 = fadd fast float %3392, -1.000000e+00
  %3410 = fadd fast float %3393, -1.000000e+00
  %3411 = fadd fast float %3394, -1.000000e+00
  %3412 = call float @dx.op.unary.f32(i32 27, float %3406)  ; Round_ni(value)
  %3413 = call float @dx.op.unary.f32(i32 27, float %3407)  ; Round_ni(value)
  %3414 = call float @dx.op.unary.f32(i32 27, float %3408)  ; Round_ni(value)
  %3415 = call float @dx.op.binary.f32(i32 36, float %3412, float %3409)  ; FMin(a,b)
  %3416 = call float @dx.op.binary.f32(i32 36, float %3413, float %3410)  ; FMin(a,b)
  %3417 = call float @dx.op.binary.f32(i32 36, float %3414, float %3411)  ; FMin(a,b)
  %3418 = fmul fast float %3417, %3393
  %3419 = fadd fast float %3418, %3416
  %3420 = fmul fast float %3419, %3392
  %3421 = fadd fast float %3420, %3415
  %3422 = fptosi float %3421 to i32
  %3423 = add nsw i32 %3422, %3396
  %3424 = shl nsw i32 %3423, 2
  %3425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.i32 %3425, 0
  %3427 = lshr i32 %3426, 16
  %3428 = icmp eq i32 %3427, 0
  br i1 %3428, label %3853, label %3429

; <label>:3429                                    ; preds = %3367
  br label %3430

; <label>:3430                                    ; preds = %3552, %3429
  %3431 = phi i32 [ %3454, %3552 ], [ %3427, %3429 ]
  %3432 = phi float [ %3553, %3552 ], [ 0.000000e+00, %3429 ]
  %3433 = phi float [ %3554, %3552 ], [ %1070, %3429 ]
  %3434 = phi float [ %3555, %3552 ], [ %3311, %3429 ]
  %3435 = phi float [ %3556, %3552 ], [ %3290, %3429 ]
  %3436 = phi float [ %3557, %3552 ], [ 0.000000e+00, %3429 ]
  %3437 = phi float [ %3558, %3552 ], [ 0.000000e+00, %3429 ]
  %3438 = phi float [ %3559, %3552 ], [ %3333, %3429 ]
  %3439 = phi float [ %3560, %3552 ], [ %3335, %3429 ]
  %3440 = phi float [ %3561, %3552 ], [ %3337, %3429 ]
  %3441 = phi float [ %3562, %3552 ], [ %3363, %3429 ]
  %3442 = phi float [ %3563, %3552 ], [ %3364, %3429 ]
  %3443 = phi float [ %3564, %3552 ], [ %3365, %3429 ]
  %3444 = phi float [ %3565, %3552 ], [ %3289, %3429 ]
  %3445 = phi float [ %3566, %3552 ], [ %3288, %3429 ]
  %3446 = phi float [ %3567, %3552 ], [ 0.000000e+00, %3429 ]
  %3447 = phi float [ %3568, %3552 ], [ %3287, %3429 ]
  %3448 = phi float [ %3569, %3552 ], [ %3318, %3429 ]
  %3449 = phi float [ %3570, %3552 ], [ %3319, %3429 ]
  %3450 = phi float [ %3571, %3552 ], [ %3320, %3429 ]
  %3451 = shl nuw nsw i32 %3431, 2
  %3452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3451, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.i32 %3452, 0
  %3454 = lshr i32 %3453, 16
  %3455 = shl i32 %3453, 8
  %3456 = and i32 %3455, 16776960
  %3457 = or i32 %3456, 48
  %3458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3457, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.f32 %3458, 0
  %3460 = extractvalue %dx.types.ResRet.f32 %3458, 1
  %3461 = extractvalue %dx.types.ResRet.f32 %3458, 2
  %3462 = or i32 %3456, 64
  %3463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3462, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.i32 %3463, 0
  %3465 = extractvalue %dx.types.ResRet.i32 %3463, 1
  %3466 = or i32 %3456, 80
  %3467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3466, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.f32 %3467, 2
  %3469 = extractvalue %dx.types.ResRet.f32 %3467, 3
  %3470 = or i32 %3456, 96
  %3471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3470, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.f32 %3471, 0
  %3473 = extractvalue %dx.types.ResRet.f32 %3471, 1
  %3474 = extractvalue %dx.types.ResRet.f32 %3471, 2
  %3475 = extractvalue %dx.types.ResRet.f32 %3471, 3
  %3476 = or i32 %3456, 112
  %3477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.f32 %3477, 2
  %3479 = or i32 %3456, 128
  %3480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3479, i32 undef)  ; BufferLoad(srv,index,wot)
  %3481 = extractvalue %dx.types.ResRet.f32 %3480, 0
  %3482 = extractvalue %dx.types.ResRet.f32 %3480, 1
  %3483 = extractvalue %dx.types.ResRet.f32 %3480, 2
  %3484 = extractvalue %dx.types.ResRet.f32 %3480, 3
  %3485 = or i32 %3456, 144
  %3486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3485, i32 undef)  ; BufferLoad(srv,index,wot)
  %3487 = extractvalue %dx.types.ResRet.f32 %3486, 0
  %3488 = extractvalue %dx.types.ResRet.f32 %3486, 1
  %3489 = extractvalue %dx.types.ResRet.f32 %3486, 2
  %3490 = extractvalue %dx.types.ResRet.f32 %3486, 3
  %3491 = or i32 %3456, 160
  %3492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.f32 %3492, 0
  %3494 = extractvalue %dx.types.ResRet.f32 %3492, 1
  %3495 = extractvalue %dx.types.ResRet.f32 %3492, 2
  %3496 = extractvalue %dx.types.ResRet.f32 %3492, 3
  %3497 = or i32 %3456, 192
  %3498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3497, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.i32 %3498, 0
  %3500 = or i32 %3456, 208
  %3501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3500, i32 undef)  ; BufferLoad(srv,index,wot)
  %3502 = extractvalue %dx.types.ResRet.f32 %3501, 0
  %3503 = or i32 %3456, 248
  %3504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3503, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.f32 %3504, 0
  %3506 = extractvalue %dx.types.ResRet.f32 %3504, 1
  %3507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.f32 %3507, 0
  %3509 = extractvalue %dx.types.ResRet.f32 %3507, 1
  %3510 = extractvalue %dx.types.ResRet.f32 %3507, 2
  %3511 = extractvalue %dx.types.ResRet.f32 %3507, 3
  %3512 = call float @dx.op.dot4.f32(i32 56, float %3508, float %3509, float %3510, float %3511, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3513 = or i32 %3456, 16
  %3514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3513, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.f32 %3514, 0
  %3516 = extractvalue %dx.types.ResRet.f32 %3514, 1
  %3517 = extractvalue %dx.types.ResRet.f32 %3514, 2
  %3518 = extractvalue %dx.types.ResRet.f32 %3514, 3
  %3519 = call float @dx.op.dot4.f32(i32 56, float %3515, float %3516, float %3517, float %3518, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3520 = or i32 %3456, 32
  %3521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3520, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.f32 %3521, 0
  %3523 = extractvalue %dx.types.ResRet.f32 %3521, 1
  %3524 = extractvalue %dx.types.ResRet.f32 %3521, 2
  %3525 = extractvalue %dx.types.ResRet.f32 %3521, 3
  %3526 = call float @dx.op.dot4.f32(i32 56, float %3522, float %3523, float %3524, float %3525, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3527 = call float @dx.op.unary.f32(i32 27, float %3512)  ; Round_ni(value)
  %3528 = call float @dx.op.unary.f32(i32 6, float %3527)  ; FAbs(value)
  %3529 = call float @dx.op.unary.f32(i32 27, float %3519)  ; Round_ni(value)
  %3530 = call float @dx.op.unary.f32(i32 6, float %3529)  ; FAbs(value)
  %3531 = call float @dx.op.unary.f32(i32 6, float %3526)  ; FAbs(value)
  %3532 = call float @dx.op.unary.f32(i32 27, float %3531)  ; Round_ni(value)
  %3533 = fadd fast float %3530, %3528
  %3534 = fadd fast float %3533, %3532
  %3535 = fcmp fast oeq float %3534, 0.000000e+00
  %3536 = call float @dx.op.dot4.f32(i32 56, float %3508, float %3509, float %3510, float %3511, float %3374, float %3375, float %3376, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3537 = call float @dx.op.dot4.f32(i32 56, float %3515, float %3516, float %3517, float %3518, float %3374, float %3375, float %3376, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3538 = call float @dx.op.dot4.f32(i32 56, float %3508, float %3509, float %3510, float %3511, float %3377, float %3378, float %3379, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3539 = call float @dx.op.dot4.f32(i32 56, float %3515, float %3516, float %3517, float %3518, float %3377, float %3378, float %3379, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3540 = fsub fast float %3536, %3512
  %3541 = fsub fast float %3538, %3512
  %3542 = fsub fast float %3537, %3519
  %3543 = fsub fast float %3539, %3519
  %3544 = call float @dx.op.dot3.f32(i32 55, float %3459, float %3460, float %3461, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %3545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3546 = extractvalue %dx.types.CBufRet.f32 %3545, 2
  %3547 = fadd fast float %3546, %3544
  %3548 = call float @dx.op.unary.f32(i32 7, float %3547)  ; Saturate(value)
  %3549 = extractvalue %dx.types.CBufRet.f32 %3545, 0
  %3550 = fcmp fast ogt float %3548, %3549
  %3551 = and i1 %3535, %3550
  br i1 %3551, label %3573, label %3552

; <label>:3552                                    ; preds = %3839, %3656, %3573, %3430
  %3553 = phi float [ %3432, %3573 ], [ %3659, %3656 ], [ %3659, %3839 ], [ %3432, %3430 ]
  %3554 = phi float [ %3433, %3573 ], [ %3433, %3656 ], [ %3814, %3839 ], [ %3433, %3430 ]
  %3555 = phi float [ %3434, %3573 ], [ %3434, %3656 ], [ %3813, %3839 ], [ %3434, %3430 ]
  %3556 = phi float [ %3435, %3573 ], [ %3435, %3656 ], [ %3811, %3839 ], [ %3435, %3430 ]
  %3557 = phi float [ %3436, %3573 ], [ %3436, %3656 ], [ %3783, %3839 ], [ %3436, %3430 ]
  %3558 = phi float [ %3437, %3573 ], [ %3437, %3656 ], [ %3781, %3839 ], [ %3437, %3430 ]
  %3559 = phi float [ %3438, %3573 ], [ %3438, %3656 ], [ %3849, %3839 ], [ %3438, %3430 ]
  %3560 = phi float [ %3439, %3573 ], [ %3439, %3656 ], [ %3850, %3839 ], [ %3439, %3430 ]
  %3561 = phi float [ %3440, %3573 ], [ %3440, %3656 ], [ %3851, %3839 ], [ %3440, %3430 ]
  %3562 = phi float [ %3441, %3573 ], [ %3441, %3656 ], [ %3762, %3839 ], [ %3441, %3430 ]
  %3563 = phi float [ %3442, %3573 ], [ %3442, %3656 ], [ %3763, %3839 ], [ %3442, %3430 ]
  %3564 = phi float [ %3443, %3573 ], [ %3443, %3656 ], [ %3764, %3839 ], [ %3443, %3430 ]
  %3565 = phi float [ %3444, %3573 ], [ %3444, %3656 ], [ %3791, %3839 ], [ %3444, %3430 ]
  %3566 = phi float [ %3445, %3573 ], [ %3445, %3656 ], [ %3788, %3839 ], [ %3445, %3430 ]
  %3567 = phi float [ %3446, %3573 ], [ %3446, %3656 ], [ %3785, %3839 ], [ %3446, %3430 ]
  %3568 = phi float [ %3447, %3573 ], [ %3447, %3656 ], [ %3779, %3839 ], [ %3447, %3430 ]
  %3569 = phi float [ %3448, %3573 ], [ %3448, %3656 ], [ %3774, %3839 ], [ %3448, %3430 ]
  %3570 = phi float [ %3449, %3573 ], [ %3449, %3656 ], [ %3775, %3839 ], [ %3449, %3430 ]
  %3571 = phi float [ %3450, %3573 ], [ %3450, %3656 ], [ %3776, %3839 ], [ %3450, %3430 ]
  %3572 = icmp eq i32 %3454, 0
  br i1 %3572, label %3852, label %3430

; <label>:3573                                    ; preds = %3430
  %3574 = extractvalue %dx.types.ResRet.f32 %3458, 3
  %3575 = extractvalue %dx.types.ResRet.f32 %3477, 3
  %3576 = extractvalue %dx.types.ResRet.f32 %3477, 1
  %3577 = extractvalue %dx.types.ResRet.f32 %3477, 0
  %3578 = extractvalue %dx.types.ResRet.f32 %3467, 1
  %3579 = extractvalue %dx.types.ResRet.f32 %3467, 0
  %3580 = extractvalue %dx.types.ResRet.i32 %3463, 3
  %3581 = extractvalue %dx.types.ResRet.i32 %3463, 2
  %3582 = bitcast float %3574 to i32
  %3583 = add i32 %3580, 0
  %3584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3583, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3585 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3586 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3584, %dx.types.Handle %3585, float %3512, float %3519, float undef, float undef, i32 0, i32 0, i32 undef, float %3540, float %3542, float undef, float %3541, float %3543, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3587 = extractvalue %dx.types.ResRet.f32 %3586, 0
  %3588 = fmul fast float %3587, %3579
  %3589 = fadd fast float %3588, %3578
  %3590 = call float @dx.op.unary.f32(i32 7, float %3589)  ; Saturate(value)
  %3591 = fmul fast float %3512, %3472
  %3592 = call float @dx.op.tertiary.f32(i32 46, float %3473, float %3519, float %3591)  ; FMad(a,b,c)
  %3593 = fadd fast float %3592, %3577
  %3594 = fmul fast float %3512, %3474
  %3595 = call float @dx.op.tertiary.f32(i32 46, float %3475, float %3519, float %3594)  ; FMad(a,b,c)
  %3596 = fadd fast float %3595, %3576
  %3597 = fmul fast float %3540, %3472
  %3598 = call float @dx.op.tertiary.f32(i32 46, float %3473, float %3542, float %3597)  ; FMad(a,b,c)
  %3599 = fmul fast float %3540, %3474
  %3600 = call float @dx.op.tertiary.f32(i32 46, float %3475, float %3542, float %3599)  ; FMad(a,b,c)
  %3601 = fmul fast float %3541, %3472
  %3602 = call float @dx.op.tertiary.f32(i32 46, float %3473, float %3543, float %3601)  ; FMad(a,b,c)
  %3603 = fmul fast float %3541, %3474
  %3604 = call float @dx.op.tertiary.f32(i32 46, float %3475, float %3543, float %3603)  ; FMad(a,b,c)
  %3605 = add i32 %3581, 0
  %3606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3605, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3607 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3606, %dx.types.Handle %3585, float %3593, float %3596, float undef, float undef, i32 0, i32 0, i32 undef, float %3598, float %3600, float undef, float %3602, float %3604, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3608 = extractvalue %dx.types.ResRet.f32 %3607, 0
  %3609 = and i32 %3582, 1024
  %3610 = icmp ne i32 %3609, 0
  %3611 = fcmp fast ogt float %3608, 0x3FE0101020000000
  %3612 = uitofp i1 %3611 to float
  %3613 = select i1 %3610, float %3612, float %3608
  %3614 = and i32 %3582, 8192
  %3615 = icmp ne i32 %3614, 0
  %3616 = select i1 %3615, float %3575, float 1.000000e+00
  %3617 = fmul fast float %3512, 2.000000e+00
  %3618 = fadd fast float %3617, -1.000000e+00
  %3619 = call float @dx.op.unary.f32(i32 6, float %3618)  ; FAbs(value)
  %3620 = fmul fast float %3619, %3505
  %3621 = fsub fast float %3620, %3505
  %3622 = call float @dx.op.unary.f32(i32 7, float %3621)  ; Saturate(value)
  %3623 = fmul fast float %3519, 2.000000e+00
  %3624 = fadd fast float %3623, -1.000000e+00
  %3625 = call float @dx.op.unary.f32(i32 6, float %3624)  ; FAbs(value)
  %3626 = fmul fast float %3625, %3506
  %3627 = fsub fast float %3626, %3506
  %3628 = call float @dx.op.unary.f32(i32 7, float %3627)  ; Saturate(value)
  %3629 = fmul fast float %3531, %3468
  %3630 = fsub fast float %3629, %3468
  %3631 = call float @dx.op.unary.f32(i32 7, float %3630)  ; Saturate(value)
  %3632 = fmul fast float %3590, %3616
  %3633 = fmul fast float %3632, %3587
  %3634 = fmul fast float %3633, %3622
  %3635 = fmul fast float %3634, %3613
  %3636 = fmul fast float %3635, %3628
  %3637 = fmul fast float %3636, %3631
  %3638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3639 = extractvalue %dx.types.CBufRet.f32 %3638, 1
  %3640 = extractvalue %dx.types.CBufRet.f32 %3638, 0
  %3641 = fsub fast float %3548, %3640
  %3642 = fmul fast float %3641, %3639
  %3643 = call float @dx.op.unary.f32(i32 7, float %3642)  ; Saturate(value)
  %3644 = fmul fast float %3637, %3469
  %3645 = fadd fast float %3637, %3469
  %3646 = fmul fast float %3645, %3478
  %3647 = fsub fast float %3646, %3478
  %3648 = call float @dx.op.unary.f32(i32 7, float %3647)  ; Saturate(value)
  %3649 = and i32 %3582, 128
  %3650 = icmp ne i32 %3649, 0
  %3651 = select i1 %3650, float %3648, float %3644
  %3652 = fmul fast float %3651, %3643
  %3653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3654 = extractvalue %dx.types.CBufRet.f32 %3653, 0
  %3655 = fcmp fast ugt float %3652, %3654
  br i1 %3655, label %3656, label %3552

; <label>:3656                                    ; preds = %3573
  %3657 = select i1 %3615, float %3652, float 0.000000e+00
  %3658 = fadd fast float %3657, %3432
  %3659 = call float @dx.op.unary.f32(i32 7, float %3658)  ; Saturate(value)
  br i1 %3615, label %3552, label %3660

; <label>:3660                                    ; preds = %3656
  %3661 = and i32 %3582, 4
  %3662 = and i32 %3582, 8
  %3663 = add i32 %3464, 0
  %3664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3663, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3666 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3664, %dx.types.Handle %3665, float %3593, float %3596, float undef, float undef, i32 0, i32 0, i32 undef, float %3598, float %3600, float undef, float %3602, float %3604, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3667 = extractvalue %dx.types.ResRet.f32 %3666, 0
  %3668 = extractvalue %dx.types.ResRet.f32 %3666, 1
  %3669 = extractvalue %dx.types.ResRet.f32 %3666, 2
  %3670 = extractvalue %dx.types.ResRet.f32 %3666, 3
  %3671 = bitcast float %3490 to i32
  %3672 = and i32 %3671, 255
  %3673 = uitofp i32 %3672 to float
  %3674 = lshr i32 %3671, 8
  %3675 = and i32 %3674, 255
  %3676 = uitofp i32 %3675 to float
  %3677 = fmul fast float %3670, %3673
  %3678 = fadd fast float %3677, %3676
  %3679 = fmul fast float %3678, 0x3F70101000000000
  %3680 = add i32 %3465, 0
  %3681 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3680, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3682 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3681, %dx.types.Handle %3665, float %3593, float %3596, float undef, float undef, i32 0, i32 0, i32 undef, float %3598, float %3600, float undef, float %3602, float %3604, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3683 = extractvalue %dx.types.ResRet.f32 %3682, 0
  %3684 = extractvalue %dx.types.ResRet.f32 %3682, 1
  %3685 = extractvalue %dx.types.ResRet.f32 %3682, 2
  %3686 = extractvalue %dx.types.ResRet.f32 %3682, 3
  %3687 = bitcast float %3484 to i32
  %3688 = and i32 %3687, 255
  %3689 = uitofp i32 %3688 to float
  %3690 = lshr i32 %3687, 8
  %3691 = and i32 %3690, 255
  %3692 = uitofp i32 %3691 to float
  %3693 = lshr i32 %3687, 16
  %3694 = and i32 %3693, 255
  %3695 = uitofp i32 %3694 to float
  %3696 = fmul fast float %3695, 0x3F70101000000000
  %3697 = fmul fast float %3683, %3689
  %3698 = fadd fast float %3697, %3692
  %3699 = fmul fast float %3698, 0x3F70101000000000
  %3700 = fadd fast float %3684, -5.000000e-01
  %3701 = fadd fast float %3686, -5.000000e-01
  %3702 = fmul fast float %3700, %3696
  %3703 = fmul fast float %3701, %3696
  %3704 = fadd fast float %3702, 5.000000e-01
  %3705 = fadd fast float %3703, 5.000000e-01
  %3706 = fmul fast float %3667, %3493
  %3707 = fmul fast float %3668, %3494
  %3708 = fmul fast float %3669, %3495
  %3709 = fmul fast float %3704, 2.000000e+00
  %3710 = fadd fast float %3709, -1.000000e+00
  %3711 = fmul fast float %3705, 2.000000e+00
  %3712 = fadd fast float %3711, -1.000000e+00
  %3713 = fadd fast float %3710, %3712
  %3714 = fmul fast float %3713, 5.000000e-01
  %3715 = fsub fast float %3710, %3712
  %3716 = fmul fast float %3715, 5.000000e-01
  %3717 = call float @dx.op.unary.f32(i32 6, float %3714)  ; FAbs(value)
  %3718 = fsub fast float 1.000000e+00, %3717
  %3719 = call float @dx.op.unary.f32(i32 6, float %3716)  ; FAbs(value)
  %3720 = fsub fast float %3718, %3719
  %3721 = call float @dx.op.dot3.f32(i32 55, float %3714, float %3716, float %3720, float %3714, float %3716, float %3720)  ; Dot3(ax,ay,az,bx,by,bz)
  %3722 = call float @dx.op.unary.f32(i32 25, float %3721)  ; Rsqrt(value)
  %3723 = fmul fast float %3714, %3722
  %3724 = fmul fast float %3716, %3722
  %3725 = fmul fast float %3722, %3720
  %3726 = fmul fast float %3725, %3459
  %3727 = fmul fast float %3725, %3460
  %3728 = fmul fast float %3725, %3461
  %3729 = fmul fast float %3723, %3481
  %3730 = fmul fast float %3723, %3482
  %3731 = fmul fast float %3723, %3483
  %3732 = fadd fast float %3729, %3726
  %3733 = fadd fast float %3730, %3727
  %3734 = fadd fast float %3731, %3728
  %3735 = fmul fast float %3724, %3487
  %3736 = fmul fast float %3724, %3488
  %3737 = fmul fast float %3724, %3489
  %3738 = fadd fast float %3732, %3735
  %3739 = fadd fast float %3733, %3736
  %3740 = fadd fast float %3734, %3737
  %3741 = call float @dx.op.dot3.f32(i32 55, float %3738, float %3739, float %3740, float %3738, float %3739, float %3740)  ; Dot3(ax,ay,az,bx,by,bz)
  %3742 = call float @dx.op.unary.f32(i32 25, float %3741)  ; Rsqrt(value)
  %3743 = fmul fast float %3738, %3742
  %3744 = fmul fast float %3739, %3742
  %3745 = fmul fast float %3740, %3742
  %3746 = icmp ne i32 %3662, 0
  %3747 = select i1 %3746, float 1.000000e+00, float 0.000000e+00
  %3748 = fmul fast float %3652, %3747
  %3749 = and i32 %3582, 1
  %3750 = icmp eq i32 %3749, 0
  br i1 %3750, label %3751, label %3755

; <label>:3751                                    ; preds = %3660
  %3752 = fsub fast float %3743, %3441
  %3753 = fsub fast float %3744, %3442
  %3754 = fsub fast float %3745, %3443
  br label %3755

; <label>:3755                                    ; preds = %3751, %3660
  %3756 = phi float [ %3752, %3751 ], [ %3743, %3660 ]
  %3757 = phi float [ %3753, %3751 ], [ %3744, %3660 ]
  %3758 = phi float [ %3754, %3751 ], [ %3745, %3660 ]
  %3759 = fmul float %3758, %3748
  %3760 = fmul float %3757, %3748
  %3761 = fmul float %3756, %3748
  %3762 = fadd fast float %3761, %3441
  %3763 = fadd fast float %3760, %3442
  %3764 = fadd fast float %3759, %3443
  %3765 = icmp ne i32 %3661, 0
  %3766 = select i1 %3765, float 1.000000e+00, float 0.000000e+00
  %3767 = fmul fast float %3652, %3766
  %3768 = fsub fast float %3706, %3448
  %3769 = fsub fast float %3707, %3449
  %3770 = fsub fast float %3708, %3450
  %3771 = fmul fast float %3768, %3767
  %3772 = fmul fast float %3769, %3767
  %3773 = fmul fast float %3770, %3767
  %3774 = fadd fast float %3771, %3448
  %3775 = fadd fast float %3772, %3449
  %3776 = fadd fast float %3773, %3450
  %3777 = fsub fast float %3679, %3447
  %3778 = fmul fast float %3777, %3767
  %3779 = fadd fast float %3778, %3447
  %3780 = fmul fast float %3767, %3437
  %3781 = fsub fast float %3437, %3780
  %3782 = fmul fast float %3767, %3436
  %3783 = fsub fast float %3436, %3782
  %3784 = fadd fast float %3652, %3446
  %3785 = call float @dx.op.unary.f32(i32 7, float %3784)  ; Saturate(value)
  %3786 = fsub fast float %3699, %3445
  %3787 = fmul fast float %3786, %3748
  %3788 = fadd fast float %3787, %3445
  %3789 = fsub fast float %3685, %3444
  %3790 = fmul fast float %3789, %3748
  %3791 = fadd fast float %3790, %3444
  %3792 = call float @dx.op.dot3.f32(i32 55, float %3706, float %3707, float %3708, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3794 = extractvalue %dx.types.CBufRet.f32 %3793, 0
  %3795 = extractvalue %dx.types.CBufRet.f32 %3793, 1
  %3796 = fmul fast float %3795, %3792
  %3797 = fadd fast float %3796, %3794
  %3798 = call float @dx.op.unary.f32(i32 7, float %3797)  ; Saturate(value)
  %3799 = bitcast float %3496 to i32
  %3800 = and i32 %3799, 65535
  %3801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3800)  ; LegacyF16ToF32(value)
  %3802 = lshr i32 %3799, 16
  %3803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3802)  ; LegacyF16ToF32(value)
  %3804 = fcmp fast oge float %3801, 0.000000e+00
  %3805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3806 = extractvalue %dx.types.CBufRet.f32 %3805, 0
  %3807 = select i1 %3804, float %3801, float %3806
  %3808 = fadd fast float %3807, %3803
  %3809 = fsub fast float %3798, %3435
  %3810 = fmul fast float %3809, %3652
  %3811 = fadd fast float %3810, %3435
  %3812 = fmul fast float %3808, %3652
  %3813 = call float @dx.op.binary.f32(i32 35, float %3434, float %3812)  ; FMax(a,b)
  %3814 = call float @dx.op.binary.f32(i32 35, float %3433, float %3652)  ; FMax(a,b)
  %3815 = and i32 %3582, 16
  %3816 = icmp eq i32 %3815, 0
  br i1 %3816, label %3839, label %3817

; <label>:3817                                    ; preds = %3755
  %3818 = bitcast float %3502 to i32
  %3819 = add i32 %3499, 0
  %3820 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3819, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3821 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3820, %dx.types.Handle %3665, float %3593, float %3596, float undef, float undef, i32 0, i32 0, i32 undef, float %3598, float %3600, float undef, float %3602, float %3604, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3822 = extractvalue %dx.types.ResRet.f32 %3821, 0
  %3823 = extractvalue %dx.types.ResRet.f32 %3821, 1
  %3824 = extractvalue %dx.types.ResRet.f32 %3821, 2
  %3825 = and i32 %3818, 65535
  %3826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3825)  ; LegacyF16ToF32(value)
  %3827 = fmul fast float %3822, %3493
  %3828 = fmul fast float %3823, %3494
  %3829 = fmul fast float %3824, %3495
  %3830 = and i32 %3582, 16384
  %3831 = icmp ne i32 %3830, 0
  %3832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3833 = extractvalue %dx.types.CBufRet.f32 %3832, 0
  %3834 = select i1 %3831, float %3833, float 1.000000e+00
  %3835 = fmul fast float %3834, %3826
  %3836 = fmul fast float %3827, %3835
  %3837 = fmul fast float %3828, %3835
  %3838 = fmul fast float %3829, %3835
  br label %3839

; <label>:3839                                    ; preds = %3817, %3755
  %3840 = phi float [ %3836, %3817 ], [ 0.000000e+00, %3755 ]
  %3841 = phi float [ %3837, %3817 ], [ 0.000000e+00, %3755 ]
  %3842 = phi float [ %3838, %3817 ], [ 0.000000e+00, %3755 ]
  %3843 = fsub fast float %3840, %3438
  %3844 = fsub fast float %3841, %3439
  %3845 = fsub fast float %3842, %3440
  %3846 = fmul fast float %3843, %3652
  %3847 = fmul fast float %3844, %3652
  %3848 = fmul fast float %3845, %3652
  %3849 = fadd fast float %3846, %3438
  %3850 = fadd fast float %3847, %3439
  %3851 = fadd fast float %3848, %3440
  br label %3552

; <label>:3852                                    ; preds = %3552
  br label %3853

; <label>:3853                                    ; preds = %3852, %3367
  %3854 = phi float [ 0.000000e+00, %3367 ], [ %3553, %3852 ]
  %3855 = phi float [ %1070, %3367 ], [ %3554, %3852 ]
  %3856 = phi float [ %3311, %3367 ], [ %3555, %3852 ]
  %3857 = phi float [ %3290, %3367 ], [ %3556, %3852 ]
  %3858 = phi float [ 0.000000e+00, %3367 ], [ %3557, %3852 ]
  %3859 = phi float [ 0.000000e+00, %3367 ], [ %3558, %3852 ]
  %3860 = phi float [ %3333, %3367 ], [ %3559, %3852 ]
  %3861 = phi float [ %3335, %3367 ], [ %3560, %3852 ]
  %3862 = phi float [ %3337, %3367 ], [ %3561, %3852 ]
  %3863 = phi float [ %3363, %3367 ], [ %3562, %3852 ]
  %3864 = phi float [ %3364, %3367 ], [ %3563, %3852 ]
  %3865 = phi float [ %3365, %3367 ], [ %3564, %3852 ]
  %3866 = phi float [ %3289, %3367 ], [ %3565, %3852 ]
  %3867 = phi float [ %3288, %3367 ], [ %3566, %3852 ]
  %3868 = phi float [ 0.000000e+00, %3367 ], [ %3567, %3852 ]
  %3869 = phi float [ %3287, %3367 ], [ %3568, %3852 ]
  %3870 = phi float [ %3318, %3367 ], [ %3569, %3852 ]
  %3871 = phi float [ %3319, %3367 ], [ %3570, %3852 ]
  %3872 = phi float [ %3320, %3367 ], [ %3571, %3852 ]
  %3873 = call float @dx.op.dot3.f32(i32 55, float %3863, float %3864, float %3865, float %3863, float %3864, float %3865)  ; Dot3(ax,ay,az,bx,by,bz)
  %3874 = call float @dx.op.unary.f32(i32 25, float %3873)  ; Rsqrt(value)
  %3875 = fmul fast float %3874, %3863
  %3876 = fmul fast float %3874, %3864
  %3877 = fmul fast float %3874, %3865
  %3878 = fadd fast float %3868, %1070
  %3879 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3880 = call float @dx.op.dot3.f32(i32 55, float %3875, float %3876, float %3877, float %3875, float %3876, float %3877)  ; Dot3(ax,ay,az,bx,by,bz)
  %3881 = call float @dx.op.unary.f32(i32 25, float %3880)  ; Rsqrt(value)
  %3882 = fmul fast float %3881, %3875
  %3883 = fmul fast float %3881, %3876
  %3884 = fmul fast float %3881, %3877
  br label %3885

; <label>:3885                                    ; preds = %3853, %3278
  %3886 = phi float [ %3882, %3853 ], [ %3363, %3278 ]
  %3887 = phi float [ %3883, %3853 ], [ %3364, %3278 ]
  %3888 = phi float [ %3884, %3853 ], [ %3365, %3278 ]
  %3889 = phi float [ %3870, %3853 ], [ %3318, %3278 ]
  %3890 = phi float [ %3871, %3853 ], [ %3319, %3278 ]
  %3891 = phi float [ %3872, %3853 ], [ %3320, %3278 ]
  %3892 = phi float [ %3860, %3853 ], [ %3333, %3278 ]
  %3893 = phi float [ %3861, %3853 ], [ %3335, %3278 ]
  %3894 = phi float [ %3862, %3853 ], [ %3337, %3278 ]
  %3895 = phi float [ %3869, %3853 ], [ %3287, %3278 ]
  %3896 = phi float [ %3879, %3853 ], [ %1070, %3278 ]
  %3897 = phi float [ %3867, %3853 ], [ %3288, %3278 ]
  %3898 = phi float [ %3866, %3853 ], [ %3289, %3278 ]
  %3899 = phi float [ %3859, %3853 ], [ 0.000000e+00, %3278 ]
  %3900 = phi float [ %3858, %3853 ], [ 0.000000e+00, %3278 ]
  %3901 = phi float [ %3854, %3853 ], [ 0.000000e+00, %3278 ]
  %3902 = phi float [ %3856, %3853 ], [ %3311, %3278 ]
  %3903 = phi float [ %3855, %3853 ], [ %1070, %3278 ]
  %3904 = phi float [ %3857, %3853 ], [ %3290, %3278 ]
  %3905 = fadd fast float %3895, 0xBFB99999A0000000
  %3906 = call float @dx.op.unary.f32(i32 7, float %3905)  ; Saturate(value)
  %3907 = fmul fast float %3906, 0x3FF1C71C80000000
  %3908 = call float @dx.op.binary.f32(i32 36, float %3895, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3909 = fsub fast float 1.000000e+00, %3907
  %3910 = call float @dx.op.unary.f32(i32 7, float %3909)  ; Saturate(value)
  %3911 = fmul fast float %3910, %3889
  %3912 = fmul fast float %3910, %3890
  %3913 = fmul fast float %3910, %3891
  %3914 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3915 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3916 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3917 = fmul fast float %3907, %3889
  %3918 = fmul fast float %3907, %3890
  %3919 = fmul fast float %3907, %3891
  %3920 = fadd fast float %3917, %3908
  %3921 = fadd fast float %3918, %3908
  %3922 = fadd fast float %3919, %3908
  %3923 = call float @dx.op.unary.f32(i32 7, float %3920)  ; Saturate(value)
  %3924 = call float @dx.op.unary.f32(i32 7, float %3921)  ; Saturate(value)
  %3925 = call float @dx.op.unary.f32(i32 7, float %3922)  ; Saturate(value)
  %3926 = call float @dx.op.unary.f32(i32 7, float %3897)  ; Saturate(value)
  %3927 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3928 = extractvalue %dx.types.CBufRet.i32 %3927, 3
  %3929 = and i32 %3928, 8
  %3930 = icmp ne i32 %3929, 0
  %3931 = call float @dx.op.binary.f32(i32 35, float %3914, float %3889)  ; FMax(a,b)
  %3932 = call float @dx.op.binary.f32(i32 35, float %3915, float %3889)  ; FMax(a,b)
  %3933 = call float @dx.op.binary.f32(i32 35, float %3916, float %3889)  ; FMax(a,b)
  %3934 = call float @dx.op.dot3.f32(i32 55, float %3914, float %3915, float %3916, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3935 = select i1 %275, float %3889, float %3914
  %3936 = select i1 %275, float %3934, float %3915
  %3937 = select i1 %275, float 1.000000e+00, float %3916
  %3938 = select i1 %3930, float %3931, float %3935
  %3939 = select i1 %3930, float %3932, float %3936
  %3940 = select i1 %3930, float %3933, float %3937
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 0
  %3943 = extractvalue %dx.types.CBufRet.f32 %3941, 1
  %3944 = extractvalue %dx.types.CBufRet.f32 %3941, 2
  %3945 = fadd fast float %3942, %203
  %3946 = fadd fast float %3943, %204
  %3947 = fadd fast float %3944, %205
  %3948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3949 = extractvalue %dx.types.CBufRet.f32 %3948, 0
  %3950 = extractvalue %dx.types.CBufRet.f32 %3948, 1
  %3951 = fsub fast float %3945, %3949
  %3952 = fsub fast float %3946, %3950
  %3953 = fmul fast float %3951, %3951
  %3954 = fmul fast float %3952, %3952
  %3955 = fadd fast float %3953, %3954
  %3956 = call float @dx.op.unary.f32(i32 24, float %3955)  ; Sqrt(value)
  %3957 = extractvalue %dx.types.CBufRet.f32 %3948, 2
  %3958 = fcmp fast olt float %3956, %3957
  br i1 %3958, label %3959, label %4026

; <label>:3959                                    ; preds = %3885
  %3960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.f32 %3960, 0
  %3962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3963 = extractvalue %dx.types.CBufRet.f32 %3962, 0
  %3964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3965 = extractvalue %dx.types.CBufRet.f32 %3964, 0
  %3966 = extractvalue %dx.types.CBufRet.f32 %3960, 1
  %3967 = extractvalue %dx.types.CBufRet.f32 %3962, 1
  %3968 = extractvalue %dx.types.CBufRet.f32 %3964, 1
  %3969 = extractvalue %dx.types.CBufRet.f32 %3960, 3
  %3970 = extractvalue %dx.types.CBufRet.f32 %3962, 3
  %3971 = extractvalue %dx.types.CBufRet.f32 %3964, 3
  %3972 = fadd fast float %3969, %3945
  %3973 = fadd fast float %3970, %3946
  %3974 = fadd fast float %3971, %3947
  %3975 = fmul fast float %3972, %3961
  %3976 = call float @dx.op.tertiary.f32(i32 46, float %3973, float %3963, float %3975)  ; FMad(a,b,c)
  %3977 = call float @dx.op.tertiary.f32(i32 46, float %3974, float %3965, float %3976)  ; FMad(a,b,c)
  %3978 = fmul fast float %3972, %3966
  %3979 = call float @dx.op.tertiary.f32(i32 46, float %3973, float %3967, float %3978)  ; FMad(a,b,c)
  %3980 = call float @dx.op.tertiary.f32(i32 46, float %3974, float %3968, float %3979)  ; FMad(a,b,c)
  %3981 = fsub fast float %3977, %3969
  %3982 = fsub fast float %3980, %3970
  %3983 = fsub fast float %3981, %3949
  %3984 = fadd fast float %3983, %3957
  %3985 = fsub fast float %3982, %3950
  %3986 = fadd fast float %3985, %3957
  %3987 = extractvalue %dx.types.CBufRet.f32 %3948, 3
  %3988 = fmul fast float %3984, %3987
  %3989 = fmul fast float %3986, %3987
  %3990 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3991 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3992 = fsub fast float 1.000000e+00, %3990
  %3993 = fsub fast float 1.000000e+00, %3991
  %3994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %55, float %3992, float %3993, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3995 = extractvalue %dx.types.ResRet.f32 %3994, 0
  %3996 = fcmp fast ugt float %3995, 0.000000e+00
  br i1 %3996, label %3997, label %4300

; <label>:3997                                    ; preds = %3959
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 2
  %4000 = fmul fast float %3999, %3995
  %4001 = extractvalue %dx.types.CBufRet.f32 %3998, 3
  %4002 = fadd fast float %4001, %4000
  %4003 = extractvalue %dx.types.CBufRet.f32 %3964, 2
  %4004 = fadd fast float %4002, %3971
  %4005 = fmul fast float %3977, %3965
  %4006 = call float @dx.op.tertiary.f32(i32 46, float %3980, float %3968, float %4005)  ; FMad(a,b,c)
  %4007 = call float @dx.op.tertiary.f32(i32 46, float %4004, float %4003, float %4006)  ; FMad(a,b,c)
  %4008 = fsub fast float %4007, %3971
  %4009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4010 = extractvalue %dx.types.CBufRet.f32 %4009, 2
  %4011 = fsub fast float %4008, %4010
  %4012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %55, float %3992, float %3993, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4013 = extractvalue %dx.types.ResRet.f32 %4012, 0
  %4014 = extractvalue %dx.types.ResRet.f32 %4012, 1
  %4015 = extractvalue %dx.types.ResRet.f32 %4012, 2
  %4016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %55, float %3992, float %3993, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4017 = extractvalue %dx.types.ResRet.f32 %4016, 0
  %4018 = extractvalue %dx.types.ResRet.f32 %4016, 1
  %4019 = extractvalue %dx.types.ResRet.f32 %4016, 2
  %4020 = fadd fast float %4017, %4013
  %4021 = fmul fast float %4020, 0x3F847AE140000000
  %4022 = fadd fast float %4018, %4014
  %4023 = fmul fast float %4022, 0x3F847AE140000000
  %4024 = fadd fast float %4019, %4015
  %4025 = fmul fast float %4024, 0x3F847AE140000000
  br label %4300

; <label>:4026                                    ; preds = %3885
  %4027 = and i32 %254, 1
  %4028 = icmp eq i32 %4027, 0
  br i1 %4028, label %4300, label %4029

; <label>:4029                                    ; preds = %4026
  %4030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4031 = extractvalue %dx.types.CBufRet.f32 %4030, 0
  %4032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4033 = extractvalue %dx.types.CBufRet.f32 %4032, 0
  %4034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4035 = extractvalue %dx.types.CBufRet.f32 %4034, 0
  %4036 = extractvalue %dx.types.CBufRet.f32 %4030, 1
  %4037 = extractvalue %dx.types.CBufRet.f32 %4032, 1
  %4038 = extractvalue %dx.types.CBufRet.f32 %4034, 1
  %4039 = extractvalue %dx.types.CBufRet.f32 %4030, 3
  %4040 = extractvalue %dx.types.CBufRet.f32 %4032, 3
  %4041 = extractvalue %dx.types.CBufRet.f32 %4034, 3
  %4042 = fadd fast float %4039, %3945
  %4043 = fadd fast float %4040, %3946
  %4044 = fadd fast float %4041, %3947
  %4045 = fmul fast float %4042, %4031
  %4046 = call float @dx.op.tertiary.f32(i32 46, float %4043, float %4033, float %4045)  ; FMad(a,b,c)
  %4047 = call float @dx.op.tertiary.f32(i32 46, float %4044, float %4035, float %4046)  ; FMad(a,b,c)
  %4048 = fmul fast float %4042, %4036
  %4049 = call float @dx.op.tertiary.f32(i32 46, float %4043, float %4037, float %4048)  ; FMad(a,b,c)
  %4050 = call float @dx.op.tertiary.f32(i32 46, float %4044, float %4038, float %4049)  ; FMad(a,b,c)
  %4051 = fsub fast float %4047, %4039
  %4052 = fsub fast float %4050, %4040
  %4053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.f32 %4053, 0
  %4055 = extractvalue %dx.types.CBufRet.f32 %4053, 1
  %4056 = extractvalue %dx.types.CBufRet.f32 %4053, 2
  %4057 = extractvalue %dx.types.CBufRet.f32 %4053, 3
  %4058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.f32 %4058, 3
  %4060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.i32 %4060, 0
  %4062 = extractvalue %dx.types.CBufRet.i32 %4060, 1
  %4063 = udiv i32 %4062, %4061
  %4064 = fsub fast float %4051, %4054
  %4065 = fsub fast float %4052, %4055
  %4066 = call float @dx.op.binary.f32(i32 35, float %4064, float 0.000000e+00)  ; FMax(a,b)
  %4067 = call float @dx.op.binary.f32(i32 35, float %4065, float 0.000000e+00)  ; FMax(a,b)
  %4068 = call float @dx.op.binary.f32(i32 36, float %4066, float %4056)  ; FMin(a,b)
  %4069 = call float @dx.op.binary.f32(i32 36, float %4067, float %4057)  ; FMin(a,b)
  %4070 = add i32 %4061, -1
  %4071 = add i32 %4063, -1
  %4072 = fmul fast float %4068, %4059
  %4073 = fmul fast float %4069, %4059
  %4074 = fptoui float %4072 to i32
  %4075 = fptoui float %4073 to i32
  %4076 = call i32 @dx.op.binary.i32(i32 40, i32 %4074, i32 %4070)  ; UMin(a,b)
  %4077 = call i32 @dx.op.binary.i32(i32 40, i32 %4075, i32 %4071)  ; UMin(a,b)
  %4078 = mul i32 %4077, %4061
  %4079 = add i32 %4078, %4076
  %4080 = shl i32 %4079, 2
  %4081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4080, i32 undef)  ; BufferLoad(srv,index,wot)
  %4082 = extractvalue %dx.types.ResRet.i32 %4081, 0
  %4083 = icmp eq i32 %4082, -1
  br i1 %4083, label %4300, label %4084

; <label>:4084                                    ; preds = %4029
  %4085 = mul i32 %4082, 148
  %4086 = add i32 %4085, 4
  %4087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4086, i32 undef)  ; BufferLoad(srv,index,wot)
  %4088 = extractvalue %dx.types.ResRet.f32 %4087, 0
  %4089 = add i32 %4085, 8
  %4090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.f32 %4090, 0
  %4092 = add i32 %4085, 36
  %4093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4092, i32 undef)  ; BufferLoad(srv,index,wot)
  %4094 = extractvalue %dx.types.ResRet.f32 %4093, 0
  %4095 = add i32 %4085, 60
  %4096 = add i32 %4085, 92
  %4097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4096, i32 undef)  ; BufferLoad(srv,index,wot)
  %4098 = extractvalue %dx.types.ResRet.i32 %4097, 0
  %4099 = add i32 %4085, 116
  %4100 = fsub fast float %4051, %4088
  %4101 = fsub fast float %4052, %4091
  %4102 = fmul fast float %4059, %4100
  %4103 = fmul fast float %4059, %4101
  %4104 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4105 = call float @dx.op.unary.f32(i32 7, float %4103)  ; Saturate(value)
  %4106 = fsub fast float 1.000000e+00, %4105
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 2
  %4109 = call float @dx.op.unary.f32(i32 83, float %4104)  ; DerivCoarseX(value)
  %4110 = call float @dx.op.unary.f32(i32 83, float %4106)  ; DerivCoarseX(value)
  %4111 = call float @dx.op.unary.f32(i32 84, float %4104)  ; DerivCoarseY(value)
  %4112 = call float @dx.op.unary.f32(i32 84, float %4106)  ; DerivCoarseY(value)
  %4113 = fmul fast float %4109, %4108
  %4114 = fmul fast float %4110, %4108
  %4115 = fmul fast float %4111, %4108
  %4116 = fmul fast float %4112, %4108
  %4117 = call float @dx.op.dot2.f32(i32 54, float %4115, float %4116, float %4115, float %4116)  ; Dot2(ax,ay,bx,by)
  %4118 = call float @dx.op.dot2.f32(i32 54, float %4113, float %4114, float %4113, float %4114)  ; Dot2(ax,ay,bx,by)
  %4119 = call float @dx.op.binary.f32(i32 35, float %4118, float %4117)  ; FMax(a,b)
  %4120 = call float @dx.op.unary.f32(i32 23, float %4119)  ; Log(value)
  %4121 = fmul fast float %4120, 5.000000e-01
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 1
  %4124 = fadd fast float %4123, %4121
  %4125 = call float @dx.op.binary.f32(i32 35, float %4124, float 0.000000e+00)  ; FMax(a,b)
  %4126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4127 = extractvalue %dx.types.CBufRet.f32 %4126, 3
  %4128 = fadd fast float %4127, %4125
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 3
  %4131 = fadd fast float %4128, %4130
  %4132 = add i32 %4098, 0
  %4133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4132, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4134 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4133, i32 0)  ; GetDimensions(handle,mipLevel)
  %4135 = extractvalue %dx.types.Dimensions %4134, 0
  %4136 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4135)  ; FirstbitLo(value)
  %4137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4138 = extractvalue %dx.types.CBufRet.i32 %4137, 1
  %4139 = sub nsw i32 %4138, %4136
  %4140 = sitofp i32 %4139 to float
  %4141 = fsub fast float %4131, %4140
  %4142 = call float @dx.op.binary.f32(i32 35, float %4141, float 0.000000e+00)  ; FMax(a,b)
  %4143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4133, %dx.types.Handle %53, float %4104, float %4106, float %4094, float undef, i32 0, i32 0, i32 undef, float %4142)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4144 = extractvalue %dx.types.ResRet.f32 %4143, 0
  %4145 = fcmp ule float %4144, 0x3FE0101020000000
  %4146 = extractvalue %dx.types.CBufRet.i32 %4137, 0
  %4147 = and i32 %4146, 128
  %4148 = icmp ne i32 %4147, 0
  %4149 = and i1 %4145, %4148
  br i1 %4149, label %4300, label %4150

; <label>:4150                                    ; preds = %4084
  %4151 = add i32 %4085, 20
  %4152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4151, i32 undef)  ; BufferLoad(srv,index,wot)
  %4153 = extractvalue %dx.types.ResRet.f32 %4152, 0
  %4154 = add i32 %4085, 24
  %4155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4154, i32 undef)  ; BufferLoad(srv,index,wot)
  %4156 = extractvalue %dx.types.ResRet.f32 %4155, 0
  %4157 = add i32 %4085, 40
  %4158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4157, i32 undef)  ; BufferLoad(srv,index,wot)
  %4159 = extractvalue %dx.types.ResRet.f32 %4158, 0
  %4160 = add i32 %4085, 96
  %4161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4160, i32 undef)  ; BufferLoad(srv,index,wot)
  %4162 = extractvalue %dx.types.ResRet.i32 %4161, 0
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 2
  %4165 = fmul fast float %4164, %4104
  %4166 = fmul fast float %4164, %4106
  %4167 = extractvalue %dx.types.CBufRet.f32 %4163, 3
  %4168 = fadd fast float %4165, %4167
  %4169 = fadd fast float %4166, %4167
  %4170 = add i32 %4162, 0
  %4171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4170, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4172 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4171, i32 0)  ; GetDimensions(handle,mipLevel)
  %4173 = extractvalue %dx.types.Dimensions %4172, 0
  %4174 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4173)  ; FirstbitLo(value)
  %4175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.i32 %4175, 1
  %4177 = sub nsw i32 %4176, %4174
  %4178 = sitofp i32 %4177 to float
  %4179 = fsub fast float %4128, %4178
  %4180 = call float @dx.op.binary.f32(i32 35, float %4179, float 0.000000e+00)  ; FMax(a,b)
  %4181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4171, %dx.types.Handle %53, float %4168, float %4169, float %4159, float undef, i32 0, i32 0, i32 undef, float %4180)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 0
  %4183 = fmul fast float %4182, %4153
  %4184 = fadd fast float %4183, %4156
  %4185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4186 = extractvalue %dx.types.CBufRet.f32 %4185, 0
  %4187 = extractvalue %dx.types.CBufRet.f32 %4185, 1
  %4188 = extractvalue %dx.types.CBufRet.f32 %4185, 2
  %4189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4190 = extractvalue %dx.types.CBufRet.f32 %4189, 3
  %4191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4191, 3
  %4193 = extractvalue %dx.types.CBufRet.f32 %4185, 3
  %4194 = fadd fast float %4190, %4051
  %4195 = fadd fast float %4192, %4052
  %4196 = fadd fast float %4184, %4193
  %4197 = fmul fast float %4194, %4186
  %4198 = call float @dx.op.tertiary.f32(i32 46, float %4195, float %4187, float %4197)  ; FMad(a,b,c)
  %4199 = call float @dx.op.tertiary.f32(i32 46, float %4196, float %4188, float %4198)  ; FMad(a,b,c)
  %4200 = fsub fast float %4199, %4193
  %4201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.f32 %4201, 2
  %4203 = fsub fast float %4200, %4202
  %4204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.i32 %4204, 0
  %4206 = call i32 @dx.op.binary.i32(i32 40, i32 %4082, i32 %4205)  ; UMin(a,b)
  %4207 = mul i32 %4206, 36
  %4208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4207, i32 undef)  ; BufferLoad(srv,index,wot)
  %4209 = extractvalue %dx.types.ResRet.i32 %4208, 0
  %4210 = add i32 %4207, 4
  %4211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4212 = extractvalue %dx.types.CBufRet.f32 %4211, 0
  %4213 = fmul fast float %4212, %4104
  %4214 = fmul fast float %4212, %4106
  %4215 = extractvalue %dx.types.CBufRet.f32 %4211, 1
  %4216 = fadd fast float %4213, %4215
  %4217 = fadd fast float %4214, %4215
  %4218 = icmp eq i32 %4209, 0
  br i1 %4218, label %4287, label %4219

; <label>:4219                                    ; preds = %4150
  br label %4220

; <label>:4220                                    ; preds = %4277, %4219
  %4221 = phi float [ %4278, %4277 ], [ 0.000000e+00, %4219 ]
  %4222 = phi float [ %4279, %4277 ], [ 0.000000e+00, %4219 ]
  %4223 = phi float [ %4280, %4277 ], [ 0.000000e+00, %4219 ]
  %4224 = phi float [ %4281, %4277 ], [ 0.000000e+00, %4219 ]
  %4225 = phi float [ %4282, %4277 ], [ 0.000000e+00, %4219 ]
  %4226 = phi float [ %4283, %4277 ], [ 0.000000e+00, %4219 ]
  %4227 = phi i32 [ %4284, %4277 ], [ 0, %4219 ]
  %4228 = shl i32 %4227, 2
  %4229 = add i32 %4095, %4228
  %4230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4229, i32 undef)  ; BufferLoad(srv,index,wot)
  %4231 = extractvalue %dx.types.ResRet.f32 %4230, 0
  %4232 = add i32 %4099, %4228
  %4233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4232, i32 undef)  ; BufferLoad(srv,index,wot)
  %4234 = extractvalue %dx.types.ResRet.i32 %4233, 0
  %4235 = add i32 %4234, 0
  %4236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4235, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4237 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4236, i32 0)  ; GetDimensions(handle,mipLevel)
  %4238 = extractvalue %dx.types.Dimensions %4237, 0
  %4239 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4238)  ; FirstbitLo(value)
  %4240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.i32 %4240, 1
  %4242 = sub nsw i32 %4241, %4239
  %4243 = sitofp i32 %4242 to float
  %4244 = fsub fast float %4128, %4243
  %4245 = call float @dx.op.binary.f32(i32 35, float %4244, float 0.000000e+00)  ; FMax(a,b)
  %4246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4236, %dx.types.Handle %53, float %4216, float %4217, float %4231, float undef, i32 0, i32 0, i32 undef, float %4245)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4247 = extractvalue %dx.types.ResRet.f32 %4246, 0
  %4248 = fcmp fast ogt float %4247, 0.000000e+00
  br i1 %4248, label %4249, label %4277

; <label>:4249                                    ; preds = %4220
  %4250 = add i32 %4210, %4228
  %4251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4250, i32 undef)  ; BufferLoad(srv,index,wot)
  %4252 = extractvalue %dx.types.ResRet.i32 %4251, 0
  %4253 = and i32 %4252, 32767
  %4254 = mul nuw nsw i32 %4253, 928
  %4255 = add nuw nsw i32 %4254, 48
  %4256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4255, i32 undef)  ; BufferLoad(srv,index,wot)
  %4257 = extractvalue %dx.types.ResRet.f32 %4256, 0
  %4258 = extractvalue %dx.types.ResRet.f32 %4256, 1
  %4259 = extractvalue %dx.types.ResRet.f32 %4256, 2
  %4260 = add nuw nsw i32 %4254, 60
  %4261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4260, i32 undef)  ; BufferLoad(srv,index,wot)
  %4262 = extractvalue %dx.types.ResRet.f32 %4261, 0
  %4263 = extractvalue %dx.types.ResRet.f32 %4261, 1
  %4264 = extractvalue %dx.types.ResRet.f32 %4261, 2
  %4265 = fmul fast float %4257, %4247
  %4266 = fmul fast float %4258, %4247
  %4267 = fmul fast float %4259, %4247
  %4268 = fadd fast float %4265, %4221
  %4269 = fadd fast float %4266, %4222
  %4270 = fadd fast float %4267, %4223
  %4271 = fmul fast float %4262, %4247
  %4272 = fmul fast float %4263, %4247
  %4273 = fmul fast float %4264, %4247
  %4274 = fadd fast float %4271, %4224
  %4275 = fadd fast float %4272, %4225
  %4276 = fadd fast float %4273, %4226
  br label %4277

; <label>:4277                                    ; preds = %4249, %4220
  %4278 = phi float [ %4268, %4249 ], [ %4221, %4220 ]
  %4279 = phi float [ %4269, %4249 ], [ %4222, %4220 ]
  %4280 = phi float [ %4270, %4249 ], [ %4223, %4220 ]
  %4281 = phi float [ %4274, %4249 ], [ %4224, %4220 ]
  %4282 = phi float [ %4275, %4249 ], [ %4225, %4220 ]
  %4283 = phi float [ %4276, %4249 ], [ %4226, %4220 ]
  %4284 = add nuw i32 %4227, 1
  %4285 = icmp eq i32 %4284, %4209
  br i1 %4285, label %4286, label %4220

; <label>:4286                                    ; preds = %4277
  br label %4287

; <label>:4287                                    ; preds = %4286, %4150
  %4288 = phi float [ 0.000000e+00, %4150 ], [ %4278, %4286 ]
  %4289 = phi float [ 0.000000e+00, %4150 ], [ %4279, %4286 ]
  %4290 = phi float [ 0.000000e+00, %4150 ], [ %4280, %4286 ]
  %4291 = phi float [ 0.000000e+00, %4150 ], [ %4281, %4286 ]
  %4292 = phi float [ 0.000000e+00, %4150 ], [ %4282, %4286 ]
  %4293 = phi float [ 0.000000e+00, %4150 ], [ %4283, %4286 ]
  %4294 = fadd fast float %4291, %4288
  %4295 = fmul fast float %4294, 0x3F847AE140000000
  %4296 = fadd fast float %4292, %4289
  %4297 = fmul fast float %4296, 0x3F847AE140000000
  %4298 = fadd fast float %4293, %4290
  %4299 = fmul fast float %4298, 0x3F847AE140000000
  br label %4300

; <label>:4300                                    ; preds = %4287, %4084, %4029, %4026, %3997, %3959
  %4301 = phi float [ %4021, %3997 ], [ 0.000000e+00, %3959 ], [ %4295, %4287 ], [ 0.000000e+00, %4029 ], [ 0.000000e+00, %4084 ], [ 0.000000e+00, %4026 ]
  %4302 = phi float [ %4023, %3997 ], [ 0.000000e+00, %3959 ], [ %4297, %4287 ], [ 0.000000e+00, %4029 ], [ 0.000000e+00, %4084 ], [ 0.000000e+00, %4026 ]
  %4303 = phi float [ %4025, %3997 ], [ 0.000000e+00, %3959 ], [ %4299, %4287 ], [ 0.000000e+00, %4029 ], [ 0.000000e+00, %4084 ], [ 0.000000e+00, %4026 ]
  %4304 = phi float [ %4011, %3997 ], [ -1.310720e+05, %3959 ], [ %4203, %4287 ], [ -1.310720e+05, %4029 ], [ -1.310720e+05, %4084 ], [ -1.310720e+05, %4026 ]
  %4305 = phi i1 [ true, %3997 ], [ false, %3959 ], [ true, %4287 ], [ false, %4029 ], [ false, %4084 ], [ false, %4026 ]
  %4306 = and i32 %254, 3
  %4307 = icmp eq i32 %4306, 1
  %4308 = select i1 %4307, float 1.000000e+00, float 0.000000e+00
  %4309 = fsub fast float %4304, %205
  %4310 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  %4311 = select i1 %4305, float %4310, float 1.000000e+00
  %4312 = fmul fast float %4311, %4308
  %4313 = icmp eq i32 %4306, 3
  %4314 = select i1 %4313, float 1.000000e+00, float %4312
  %4315 = call float @dx.op.binary.f32(i32 35, float %3901, float %4314)  ; FMax(a,b)
  %4316 = fcmp fast olt float %4314, 1.000000e+00
  %4317 = fcmp uge float %77, 0.000000e+00
  %4318 = and i1 %4317, %4316
  br i1 %4318, label %4319, label %4329

; <label>:4319                                    ; preds = %4300
  %4320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %53, float %77, float %78, float %79, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4321 = extractvalue %dx.types.ResRet.f32 %4320, 0
  %4322 = extractvalue %dx.types.ResRet.f32 %4320, 1
  %4323 = extractvalue %dx.types.ResRet.f32 %4320, 2
  %4324 = fadd fast float %4321, %4315
  %4325 = fcmp ule float %76, 0.000000e+00
  %4326 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4327 = select i1 %4325, float %4326, float 1.000000e+00
  %4328 = fmul fast float %4327, %4323
  br label %4329

; <label>:4329                                    ; preds = %4319, %4300
  %4330 = phi float [ %4324, %4319 ], [ %4315, %4300 ]
  %4331 = phi float [ %4322, %4319 ], [ 0.000000e+00, %4300 ]
  %4332 = phi float [ %4328, %4319 ], [ 0.000000e+00, %4300 ]
  %4333 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4334 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4335 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4336 = fcmp fast une float %4334, 0.000000e+00
  %4337 = fcmp fast une float %4335, 0.000000e+00
  %4338 = or i1 %4336, %4337
  br i1 %4338, label %4339, label %4898

; <label>:4339                                    ; preds = %4329
  br i1 %4336, label %4340, label %4613

; <label>:4340                                    ; preds = %4339
  %4341 = call float @dx.op.unary.f32(i32 23, float %3898)  ; Log(value)
  %4342 = fmul fast float %4341, 4.000000e+00
  %4343 = call float @dx.op.unary.f32(i32 21, float %4342)  ; Exp(value)
  %4344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4345 = extractvalue %dx.types.CBufRet.f32 %4344, 0
  %4346 = fmul fast float %4345, %64
  %4347 = fmul fast float %4345, %65
  %4348 = fmul fast float %4345, %66
  %4349 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4350 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4351 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4352 = call float @dx.op.unary.f32(i32 23, float %4349)  ; Log(value)
  %4353 = call float @dx.op.unary.f32(i32 23, float %4350)  ; Log(value)
  %4354 = call float @dx.op.unary.f32(i32 23, float %4351)  ; Log(value)
  %4355 = fmul fast float %4352, 4.000000e+00
  %4356 = fmul fast float %4353, 4.000000e+00
  %4357 = fmul fast float %4354, 4.000000e+00
  %4358 = call float @dx.op.unary.f32(i32 21, float %4355)  ; Exp(value)
  %4359 = call float @dx.op.unary.f32(i32 21, float %4356)  ; Exp(value)
  %4360 = call float @dx.op.unary.f32(i32 21, float %4357)  ; Exp(value)
  %4361 = fadd fast float %4359, %4358
  %4362 = fadd fast float %4361, %4360
  %4363 = fdiv fast float 1.000000e+00, %4362
  %4364 = fmul fast float %4363, %4358
  %4365 = fcmp fast ogt float %73, 0.000000e+00
  %4366 = fcmp fast ogt float %74, 0.000000e+00
  %4367 = fcmp fast ogt float %75, 0.000000e+00
  %4368 = fcmp fast olt float %73, 0.000000e+00
  %4369 = fcmp fast olt float %74, 0.000000e+00
  %4370 = fcmp fast olt float %75, 0.000000e+00
  %4371 = zext i1 %4365 to i32
  %4372 = zext i1 %4366 to i32
  %4373 = zext i1 %4367 to i32
  %4374 = zext i1 %4368 to i32
  %4375 = zext i1 %4369 to i32
  %4376 = zext i1 %4370 to i32
  %4377 = sub nsw i32 %4371, %4374
  %4378 = sub nsw i32 %4372, %4375
  %4379 = sub nsw i32 %4373, %4376
  %4380 = call float @dx.op.unary.f32(i32 83, float %4346)  ; DerivCoarseX(value)
  %4381 = call float @dx.op.unary.f32(i32 83, float %4347)  ; DerivCoarseX(value)
  %4382 = call float @dx.op.unary.f32(i32 83, float %4348)  ; DerivCoarseX(value)
  %4383 = call float @dx.op.unary.f32(i32 84, float %4346)  ; DerivCoarseY(value)
  %4384 = call float @dx.op.unary.f32(i32 84, float %4347)  ; DerivCoarseY(value)
  %4385 = call float @dx.op.unary.f32(i32 84, float %4348)  ; DerivCoarseY(value)
  %4386 = fcmp fast ole float %286, %4364
  %4387 = fmul fast float %4363, %4361
  %4388 = fcmp fast ole float %286, %4387
  %4389 = select i1 %4388, float %4348, float %4346
  %4390 = select i1 %4388, float %4346, float %4347
  %4391 = select i1 %4386, float %4347, float %4389
  %4392 = select i1 %4386, float %4348, float %4390
  %4393 = select i1 %4388, float %4382, float %4380
  %4394 = select i1 %4388, float %4380, float %4381
  %4395 = select i1 %4386, float %4381, float %4393
  %4396 = select i1 %4386, float %4382, float %4394
  %4397 = select i1 %4388, float %4385, float %4383
  %4398 = select i1 %4388, float %4383, float %4384
  %4399 = select i1 %4386, float %4384, float %4397
  %4400 = select i1 %4386, float %4385, float %4398
  %4401 = call float @dx.op.unary.f32(i32 27, float %4391)  ; Round_ni(value)
  %4402 = call float @dx.op.unary.f32(i32 27, float %4392)  ; Round_ni(value)
  %4403 = fptosi float %4401 to i32
  %4404 = fptosi float %4402 to i32
  %4405 = xor i32 %4404, %4403
  %4406 = sitofp i32 %4405 to float
  %4407 = fptosi float %4406 to i32
  %4408 = sitofp i32 %4407 to float
  %4409 = fmul fast float %4408, 0x3FE3C6EF40000000
  %4410 = frem fast float %4401, 2.560000e+02
  %4411 = frem fast float %4402, 2.560000e+02
  %4412 = fptoui float %4410 to i32
  %4413 = fptoui float %4411 to i32
  %4414 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4412, i32 %4413, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4415 = extractvalue %dx.types.ResRet.f32 %4414, 0
  %4416 = extractvalue %dx.types.ResRet.f32 %4414, 1
  %4417 = extractvalue %dx.types.ResRet.f32 %4414, 2
  %4418 = fadd fast float %4415, %4409
  %4419 = fadd fast float %4416, %4409
  %4420 = fadd fast float %4417, %4409
  %4421 = call float @dx.op.unary.f32(i32 22, float %4418)  ; Frc(value)
  %4422 = call float @dx.op.unary.f32(i32 22, float %4419)  ; Frc(value)
  %4423 = call float @dx.op.unary.f32(i32 22, float %4420)  ; Frc(value)
  %4424 = fmul fast float %4423, 0x401921FB60000000
  %4425 = call float @dx.op.unary.f32(i32 13, float %4424)  ; Sin(value)
  %4426 = call float @dx.op.unary.f32(i32 12, float %4424)  ; Cos(value)
  %4427 = fsub fast float -0.000000e+00, %4426
  %4428 = fmul fast float %4426, %4391
  %4429 = call float @dx.op.tertiary.f32(i32 46, float %4425, float %4392, float %4428)  ; FMad(a,b,c)
  %4430 = fmul fast float %4425, %4391
  %4431 = call float @dx.op.tertiary.f32(i32 46, float %4427, float %4392, float %4430)  ; FMad(a,b,c)
  %4432 = fadd fast float %4429, %4421
  %4433 = fadd fast float %4431, %4422
  %4434 = extractvalue %dx.types.CBufRet.f32 %4344, 3
  %4435 = bitcast float %4434 to i32
  %4436 = icmp eq i32 %4435, 0
  br i1 %4436, label %4475, label %4437

; <label>:4437                                    ; preds = %4340
  %4438 = add i32 %4435, 0
  %4439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4438, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4440 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4439, %dx.types.Handle %113, float %4432, float %4433, float undef, float undef, i32 0, i32 0, i32 undef, float %4395, float %4396, float undef, float %4399, float %4400, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4441 = extractvalue %dx.types.ResRet.f32 %4440, 0
  %4442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.f32 %4442, 1
  %4444 = extractvalue %dx.types.CBufRet.f32 %4442, 2
  %4445 = fsub fast float 1.000000e+00, %4334
  %4446 = call float @dx.op.binary.f32(i32 35, float %4445, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4447 = bitcast float %4334 to i32
  %4448 = sitofp i32 %4447 to float
  %4449 = fadd fast float %4448, 0xC1CFBF8940000000
  %4450 = fmul fast float %4444, %4449
  %4451 = fadd fast float %4450, 0x41CFBF8940000000
  %4452 = fptosi float %4451 to i32
  %4453 = bitcast i32 %4452 to float
  %4454 = bitcast float %4446 to i32
  %4455 = sitofp i32 %4454 to float
  %4456 = fadd fast float %4455, 0xC1CFBF8940000000
  %4457 = fmul fast float %4456, %4444
  %4458 = fadd fast float %4457, 0x41CFBF8940000000
  %4459 = fptosi float %4458 to i32
  %4460 = bitcast i32 %4459 to float
  %4461 = fmul fast float %4453, %4443
  %4462 = fmul fast float %4460, %4443
  %4463 = fsub fast float %4446, %4461
  %4464 = fadd fast float %4462, %4446
  %4465 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4466 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4467 = fsub fast float %4441, %4465
  %4468 = fsub fast float %4466, %4465
  %4469 = bitcast float %4468 to i32
  %4470 = sub nsw i32 2129859010, %4469
  %4471 = bitcast i32 %4470 to float
  %4472 = fmul fast float %4471, %4467
  %4473 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4474 = fcmp fast olt float %4473, 0x3F70101020000000
  br i1 %4474, label %4613, label %4475

; <label>:4475                                    ; preds = %4437, %4340
  %4476 = phi float [ %4473, %4437 ], [ %4334, %4340 ]
  %4477 = fmul fast float %4476, %4343
  %4478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.i32 %4478, 1
  %4480 = extractvalue %dx.types.CBufRet.i32 %4478, 0
  %4481 = add i32 %4480, 0
  %4482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4483 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4482, %dx.types.Handle %112, float %4432, float %4433, float undef, float undef, i32 0, i32 0, i32 undef, float %4395, float %4396, float undef, float %4399, float %4400, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4484 = extractvalue %dx.types.ResRet.f32 %4483, 0
  %4485 = extractvalue %dx.types.ResRet.f32 %4483, 1
  %4486 = extractvalue %dx.types.ResRet.f32 %4483, 2
  %4487 = extractvalue %dx.types.ResRet.f32 %4483, 3
  %4488 = and i32 %4479, 255
  %4489 = uitofp i32 %4488 to float
  %4490 = lshr i32 %4479, 8
  %4491 = and i32 %4490, 255
  %4492 = uitofp i32 %4491 to float
  %4493 = fmul fast float %4487, %4489
  %4494 = fadd fast float %4493, %4492
  %4495 = fmul fast float %4494, 0x3F70101000000000
  %4496 = fadd fast float %4495, 0xBFB99999A0000000
  %4497 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4498 = fmul fast float %4497, 0x3FF1C71C80000000
  %4499 = call float @dx.op.binary.f32(i32 36, float %4495, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4500 = fsub fast float 1.000000e+00, %4498
  %4501 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4502 = fmul fast float %4501, %4484
  %4503 = fmul fast float %4501, %4485
  %4504 = fmul fast float %4501, %4486
  %4505 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4506 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4507 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4508 = fmul fast float %4498, %4484
  %4509 = fmul fast float %4498, %4485
  %4510 = fmul fast float %4498, %4486
  %4511 = fadd fast float %4508, %4499
  %4512 = fadd fast float %4509, %4499
  %4513 = fadd fast float %4510, %4499
  %4514 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4515 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4516 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4517 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4518 = extractvalue %dx.types.CBufRet.i32 %4517, 3
  %4519 = extractvalue %dx.types.CBufRet.i32 %4517, 2
  %4520 = add i32 %4519, 0
  %4521 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4520, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4522 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4521, %dx.types.Handle %112, float %4432, float %4433, float undef, float undef, i32 0, i32 0, i32 undef, float %4395, float %4396, float undef, float %4399, float %4400, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4523 = extractvalue %dx.types.ResRet.f32 %4522, 0
  %4524 = extractvalue %dx.types.ResRet.f32 %4522, 1
  %4525 = extractvalue %dx.types.ResRet.f32 %4522, 2
  %4526 = extractvalue %dx.types.ResRet.f32 %4522, 3
  %4527 = and i32 %4518, 255
  %4528 = uitofp i32 %4527 to float
  %4529 = lshr i32 %4518, 8
  %4530 = and i32 %4529, 255
  %4531 = uitofp i32 %4530 to float
  %4532 = lshr i32 %4518, 16
  %4533 = and i32 %4532, 255
  %4534 = uitofp i32 %4533 to float
  %4535 = fmul fast float %4534, 0x3F70101000000000
  %4536 = fmul fast float %4523, %4528
  %4537 = fadd fast float %4536, %4531
  %4538 = fmul fast float %4537, 0x3F70101000000000
  %4539 = fadd fast float %4524, -5.000000e-01
  %4540 = fadd fast float %4526, -5.000000e-01
  %4541 = fmul fast float %4539, %4535
  %4542 = fmul fast float %4540, %4535
  %4543 = fadd fast float %4541, 5.000000e-01
  %4544 = fadd fast float %4542, 5.000000e-01
  %4545 = fmul fast float %4543, 2.000000e+00
  %4546 = fadd fast float %4545, -1.000000e+00
  %4547 = fmul fast float %4544, 2.000000e+00
  %4548 = fadd fast float %4547, -1.000000e+00
  %4549 = fadd fast float %4546, %4548
  %4550 = fmul fast float %4549, 5.000000e-01
  %4551 = fsub fast float %4546, %4548
  %4552 = fmul fast float %4551, 5.000000e-01
  %4553 = call float @dx.op.unary.f32(i32 6, float %4550)  ; FAbs(value)
  %4554 = fsub fast float 1.000000e+00, %4553
  %4555 = call float @dx.op.unary.f32(i32 6, float %4552)  ; FAbs(value)
  %4556 = fsub fast float %4554, %4555
  %4557 = call float @dx.op.dot3.f32(i32 55, float %4550, float %4552, float %4556, float %4550, float %4552, float %4556)  ; Dot3(ax,ay,az,bx,by,bz)
  %4558 = call float @dx.op.unary.f32(i32 25, float %4557)  ; Rsqrt(value)
  %4559 = fmul fast float %4550, %4558
  %4560 = fmul fast float %4552, %4558
  %4561 = select i1 %4388, i32 %4378, i32 %4379
  %4562 = select i1 %4386, i32 %4377, i32 %4561
  %4563 = sitofp i32 %4562 to float
  %4564 = fmul fast float %4556, %4563
  %4565 = fmul fast float %4564, %4558
  %4566 = select i1 %4388, float %4565, float %4560
  %4567 = select i1 %4388, float %4560, float %4565
  %4568 = select i1 %4386, float %4565, float %4559
  %4569 = select i1 %4386, float %4560, float %4566
  %4570 = select i1 %4386, float %4559, float %4567
  %4571 = fsub fast float %4505, %3938
  %4572 = fsub fast float %4506, %3939
  %4573 = fsub fast float %4507, %3940
  %4574 = fmul fast float %4571, %4477
  %4575 = fmul fast float %4572, %4477
  %4576 = fmul fast float %4573, %4477
  %4577 = fadd fast float %4574, %3938
  %4578 = fadd fast float %4575, %3939
  %4579 = fadd fast float %4576, %3940
  %4580 = fsub fast float %4514, %3923
  %4581 = fsub fast float %4515, %3924
  %4582 = fsub fast float %4516, %3925
  %4583 = fmul fast float %4580, %4477
  %4584 = fmul fast float %4581, %4477
  %4585 = fmul fast float %4582, %4477
  %4586 = fadd fast float %4583, %3923
  %4587 = fadd fast float %4584, %3924
  %4588 = fadd fast float %4585, %3925
  %4589 = fadd fast float %4568, %3886
  %4590 = fadd fast float %4569, %3887
  %4591 = fadd fast float %4570, %3888
  %4592 = call float @dx.op.dot3.f32(i32 55, float %4589, float %4590, float %4591, float %4589, float %4590, float %4591)  ; Dot3(ax,ay,az,bx,by,bz)
  %4593 = call float @dx.op.unary.f32(i32 25, float %4592)  ; Rsqrt(value)
  %4594 = fmul fast float %4589, %4593
  %4595 = fmul fast float %4590, %4593
  %4596 = fmul fast float %4591, %4593
  %4597 = fsub fast float %4594, %3886
  %4598 = fsub fast float %4595, %3887
  %4599 = fsub fast float %4596, %3888
  %4600 = fmul fast float %4597, %4477
  %4601 = fmul fast float %4598, %4477
  %4602 = fmul fast float %4599, %4477
  %4603 = fadd fast float %4600, %3886
  %4604 = fadd fast float %4601, %3887
  %4605 = fadd fast float %4602, %3888
  %4606 = call float @dx.op.binary.f32(i32 36, float %3898, float %4525)  ; FMin(a,b)
  %4607 = fsub fast float %4606, %3898
  %4608 = fmul fast float %4607, %4477
  %4609 = fadd fast float %4608, %3898
  %4610 = fsub fast float %4538, %3926
  %4611 = fmul fast float %4610, %4477
  %4612 = fadd fast float %4611, %3926
  br label %4613

; <label>:4613                                    ; preds = %4475, %4437, %4339
  %4614 = phi float [ %4577, %4475 ], [ %3938, %4437 ], [ %3938, %4339 ]
  %4615 = phi float [ %4578, %4475 ], [ %3939, %4437 ], [ %3939, %4339 ]
  %4616 = phi float [ %4579, %4475 ], [ %3940, %4437 ], [ %3940, %4339 ]
  %4617 = phi float [ %4586, %4475 ], [ %3923, %4437 ], [ %3923, %4339 ]
  %4618 = phi float [ %4587, %4475 ], [ %3924, %4437 ], [ %3924, %4339 ]
  %4619 = phi float [ %4588, %4475 ], [ %3925, %4437 ], [ %3925, %4339 ]
  %4620 = phi float [ %4603, %4475 ], [ %3886, %4437 ], [ %3886, %4339 ]
  %4621 = phi float [ %4604, %4475 ], [ %3887, %4437 ], [ %3887, %4339 ]
  %4622 = phi float [ %4605, %4475 ], [ %3888, %4437 ], [ %3888, %4339 ]
  %4623 = phi float [ %4612, %4475 ], [ %3926, %4437 ], [ %3926, %4339 ]
  %4624 = phi float [ %4609, %4475 ], [ %3898, %4437 ], [ %3898, %4339 ]
  br i1 %4337, label %4625, label %4898

; <label>:4625                                    ; preds = %4613
  %4626 = call float @dx.op.unary.f32(i32 23, float %4624)  ; Log(value)
  %4627 = fmul fast float %4626, 4.000000e+00
  %4628 = call float @dx.op.unary.f32(i32 21, float %4627)  ; Exp(value)
  %4629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4630 = extractvalue %dx.types.CBufRet.f32 %4629, 0
  %4631 = fmul fast float %4630, %64
  %4632 = fmul fast float %4630, %65
  %4633 = fmul fast float %4630, %66
  %4634 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4635 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4636 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4637 = call float @dx.op.unary.f32(i32 23, float %4634)  ; Log(value)
  %4638 = call float @dx.op.unary.f32(i32 23, float %4635)  ; Log(value)
  %4639 = call float @dx.op.unary.f32(i32 23, float %4636)  ; Log(value)
  %4640 = fmul fast float %4637, 4.000000e+00
  %4641 = fmul fast float %4638, 4.000000e+00
  %4642 = fmul fast float %4639, 4.000000e+00
  %4643 = call float @dx.op.unary.f32(i32 21, float %4640)  ; Exp(value)
  %4644 = call float @dx.op.unary.f32(i32 21, float %4641)  ; Exp(value)
  %4645 = call float @dx.op.unary.f32(i32 21, float %4642)  ; Exp(value)
  %4646 = fadd fast float %4644, %4643
  %4647 = fadd fast float %4646, %4645
  %4648 = fdiv fast float 1.000000e+00, %4647
  %4649 = fmul fast float %4648, %4643
  %4650 = fcmp fast ogt float %73, 0.000000e+00
  %4651 = fcmp fast ogt float %74, 0.000000e+00
  %4652 = fcmp fast ogt float %75, 0.000000e+00
  %4653 = fcmp fast olt float %73, 0.000000e+00
  %4654 = fcmp fast olt float %74, 0.000000e+00
  %4655 = fcmp fast olt float %75, 0.000000e+00
  %4656 = zext i1 %4650 to i32
  %4657 = zext i1 %4651 to i32
  %4658 = zext i1 %4652 to i32
  %4659 = zext i1 %4653 to i32
  %4660 = zext i1 %4654 to i32
  %4661 = zext i1 %4655 to i32
  %4662 = sub nsw i32 %4656, %4659
  %4663 = sub nsw i32 %4657, %4660
  %4664 = sub nsw i32 %4658, %4661
  %4665 = call float @dx.op.unary.f32(i32 83, float %4631)  ; DerivCoarseX(value)
  %4666 = call float @dx.op.unary.f32(i32 83, float %4632)  ; DerivCoarseX(value)
  %4667 = call float @dx.op.unary.f32(i32 83, float %4633)  ; DerivCoarseX(value)
  %4668 = call float @dx.op.unary.f32(i32 84, float %4631)  ; DerivCoarseY(value)
  %4669 = call float @dx.op.unary.f32(i32 84, float %4632)  ; DerivCoarseY(value)
  %4670 = call float @dx.op.unary.f32(i32 84, float %4633)  ; DerivCoarseY(value)
  %4671 = fcmp fast ole float %286, %4649
  %4672 = fmul fast float %4648, %4646
  %4673 = fcmp fast ole float %286, %4672
  %4674 = select i1 %4673, float %4633, float %4631
  %4675 = select i1 %4673, float %4631, float %4632
  %4676 = select i1 %4671, float %4632, float %4674
  %4677 = select i1 %4671, float %4633, float %4675
  %4678 = select i1 %4673, float %4667, float %4665
  %4679 = select i1 %4673, float %4665, float %4666
  %4680 = select i1 %4671, float %4666, float %4678
  %4681 = select i1 %4671, float %4667, float %4679
  %4682 = select i1 %4673, float %4670, float %4668
  %4683 = select i1 %4673, float %4668, float %4669
  %4684 = select i1 %4671, float %4669, float %4682
  %4685 = select i1 %4671, float %4670, float %4683
  %4686 = call float @dx.op.unary.f32(i32 27, float %4676)  ; Round_ni(value)
  %4687 = call float @dx.op.unary.f32(i32 27, float %4677)  ; Round_ni(value)
  %4688 = fptosi float %4686 to i32
  %4689 = fptosi float %4687 to i32
  %4690 = xor i32 %4689, %4688
  %4691 = sitofp i32 %4690 to float
  %4692 = fptosi float %4691 to i32
  %4693 = sitofp i32 %4692 to float
  %4694 = fmul fast float %4693, 0x3FE3C6EF40000000
  %4695 = frem fast float %4686, 2.560000e+02
  %4696 = frem fast float %4687, 2.560000e+02
  %4697 = fptoui float %4695 to i32
  %4698 = fptoui float %4696 to i32
  %4699 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4697, i32 %4698, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4700 = extractvalue %dx.types.ResRet.f32 %4699, 0
  %4701 = extractvalue %dx.types.ResRet.f32 %4699, 1
  %4702 = extractvalue %dx.types.ResRet.f32 %4699, 2
  %4703 = fadd fast float %4700, %4694
  %4704 = fadd fast float %4701, %4694
  %4705 = fadd fast float %4702, %4694
  %4706 = call float @dx.op.unary.f32(i32 22, float %4703)  ; Frc(value)
  %4707 = call float @dx.op.unary.f32(i32 22, float %4704)  ; Frc(value)
  %4708 = call float @dx.op.unary.f32(i32 22, float %4705)  ; Frc(value)
  %4709 = fmul fast float %4708, 0x401921FB60000000
  %4710 = call float @dx.op.unary.f32(i32 13, float %4709)  ; Sin(value)
  %4711 = call float @dx.op.unary.f32(i32 12, float %4709)  ; Cos(value)
  %4712 = fsub fast float -0.000000e+00, %4711
  %4713 = fmul fast float %4711, %4676
  %4714 = call float @dx.op.tertiary.f32(i32 46, float %4710, float %4677, float %4713)  ; FMad(a,b,c)
  %4715 = fmul fast float %4710, %4676
  %4716 = call float @dx.op.tertiary.f32(i32 46, float %4712, float %4677, float %4715)  ; FMad(a,b,c)
  %4717 = fadd fast float %4714, %4706
  %4718 = fadd fast float %4716, %4707
  %4719 = extractvalue %dx.types.CBufRet.f32 %4629, 3
  %4720 = bitcast float %4719 to i32
  %4721 = icmp eq i32 %4720, 0
  br i1 %4721, label %4760, label %4722

; <label>:4722                                    ; preds = %4625
  %4723 = add i32 %4720, 0
  %4724 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4723, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4725 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4724, %dx.types.Handle %113, float %4717, float %4718, float undef, float undef, i32 0, i32 0, i32 undef, float %4680, float %4681, float undef, float %4684, float %4685, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4726 = extractvalue %dx.types.ResRet.f32 %4725, 0
  %4727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4728 = extractvalue %dx.types.CBufRet.f32 %4727, 1
  %4729 = extractvalue %dx.types.CBufRet.f32 %4727, 2
  %4730 = fsub fast float 1.000000e+00, %4335
  %4731 = call float @dx.op.binary.f32(i32 35, float %4730, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4732 = bitcast float %4335 to i32
  %4733 = sitofp i32 %4732 to float
  %4734 = fadd fast float %4733, 0xC1CFBF8940000000
  %4735 = fmul fast float %4729, %4734
  %4736 = fadd fast float %4735, 0x41CFBF8940000000
  %4737 = fptosi float %4736 to i32
  %4738 = bitcast i32 %4737 to float
  %4739 = bitcast float %4731 to i32
  %4740 = sitofp i32 %4739 to float
  %4741 = fadd fast float %4740, 0xC1CFBF8940000000
  %4742 = fmul fast float %4741, %4729
  %4743 = fadd fast float %4742, 0x41CFBF8940000000
  %4744 = fptosi float %4743 to i32
  %4745 = bitcast i32 %4744 to float
  %4746 = fmul fast float %4738, %4728
  %4747 = fmul fast float %4745, %4728
  %4748 = fsub fast float %4731, %4746
  %4749 = fadd fast float %4747, %4731
  %4750 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4751 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4752 = fsub fast float %4726, %4750
  %4753 = fsub fast float %4751, %4750
  %4754 = bitcast float %4753 to i32
  %4755 = sub nsw i32 2129859010, %4754
  %4756 = bitcast i32 %4755 to float
  %4757 = fmul fast float %4756, %4752
  %4758 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  %4759 = fcmp fast olt float %4758, 0x3F70101020000000
  br i1 %4759, label %4898, label %4760

; <label>:4760                                    ; preds = %4722, %4625
  %4761 = phi float [ %4758, %4722 ], [ %4335, %4625 ]
  %4762 = fmul fast float %4761, %4628
  %4763 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4764 = extractvalue %dx.types.CBufRet.i32 %4763, 1
  %4765 = extractvalue %dx.types.CBufRet.i32 %4763, 0
  %4766 = add i32 %4765, 0
  %4767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4766, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4768 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4767, %dx.types.Handle %112, float %4717, float %4718, float undef, float undef, i32 0, i32 0, i32 undef, float %4680, float %4681, float undef, float %4684, float %4685, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4769 = extractvalue %dx.types.ResRet.f32 %4768, 0
  %4770 = extractvalue %dx.types.ResRet.f32 %4768, 1
  %4771 = extractvalue %dx.types.ResRet.f32 %4768, 2
  %4772 = extractvalue %dx.types.ResRet.f32 %4768, 3
  %4773 = and i32 %4764, 255
  %4774 = uitofp i32 %4773 to float
  %4775 = lshr i32 %4764, 8
  %4776 = and i32 %4775, 255
  %4777 = uitofp i32 %4776 to float
  %4778 = fmul fast float %4772, %4774
  %4779 = fadd fast float %4778, %4777
  %4780 = fmul fast float %4779, 0x3F70101000000000
  %4781 = fadd fast float %4780, 0xBFB99999A0000000
  %4782 = call float @dx.op.unary.f32(i32 7, float %4781)  ; Saturate(value)
  %4783 = fmul fast float %4782, 0x3FF1C71C80000000
  %4784 = call float @dx.op.binary.f32(i32 36, float %4780, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4785 = fsub fast float 1.000000e+00, %4783
  %4786 = call float @dx.op.unary.f32(i32 7, float %4785)  ; Saturate(value)
  %4787 = fmul fast float %4786, %4769
  %4788 = fmul fast float %4786, %4770
  %4789 = fmul fast float %4786, %4771
  %4790 = call float @dx.op.unary.f32(i32 7, float %4787)  ; Saturate(value)
  %4791 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4792 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  %4793 = fmul fast float %4783, %4769
  %4794 = fmul fast float %4783, %4770
  %4795 = fmul fast float %4783, %4771
  %4796 = fadd fast float %4793, %4784
  %4797 = fadd fast float %4794, %4784
  %4798 = fadd fast float %4795, %4784
  %4799 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4800 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4801 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4803 = extractvalue %dx.types.CBufRet.i32 %4802, 3
  %4804 = extractvalue %dx.types.CBufRet.i32 %4802, 2
  %4805 = add i32 %4804, 0
  %4806 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4805, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4807 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4806, %dx.types.Handle %112, float %4717, float %4718, float undef, float undef, i32 0, i32 0, i32 undef, float %4680, float %4681, float undef, float %4684, float %4685, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4808 = extractvalue %dx.types.ResRet.f32 %4807, 0
  %4809 = extractvalue %dx.types.ResRet.f32 %4807, 1
  %4810 = extractvalue %dx.types.ResRet.f32 %4807, 2
  %4811 = extractvalue %dx.types.ResRet.f32 %4807, 3
  %4812 = and i32 %4803, 255
  %4813 = uitofp i32 %4812 to float
  %4814 = lshr i32 %4803, 8
  %4815 = and i32 %4814, 255
  %4816 = uitofp i32 %4815 to float
  %4817 = lshr i32 %4803, 16
  %4818 = and i32 %4817, 255
  %4819 = uitofp i32 %4818 to float
  %4820 = fmul fast float %4819, 0x3F70101000000000
  %4821 = fmul fast float %4808, %4813
  %4822 = fadd fast float %4821, %4816
  %4823 = fmul fast float %4822, 0x3F70101000000000
  %4824 = fadd fast float %4809, -5.000000e-01
  %4825 = fadd fast float %4811, -5.000000e-01
  %4826 = fmul fast float %4824, %4820
  %4827 = fmul fast float %4825, %4820
  %4828 = fadd fast float %4826, 5.000000e-01
  %4829 = fadd fast float %4827, 5.000000e-01
  %4830 = fmul fast float %4828, 2.000000e+00
  %4831 = fadd fast float %4830, -1.000000e+00
  %4832 = fmul fast float %4829, 2.000000e+00
  %4833 = fadd fast float %4832, -1.000000e+00
  %4834 = fadd fast float %4831, %4833
  %4835 = fmul fast float %4834, 5.000000e-01
  %4836 = fsub fast float %4831, %4833
  %4837 = fmul fast float %4836, 5.000000e-01
  %4838 = call float @dx.op.unary.f32(i32 6, float %4835)  ; FAbs(value)
  %4839 = fsub fast float 1.000000e+00, %4838
  %4840 = call float @dx.op.unary.f32(i32 6, float %4837)  ; FAbs(value)
  %4841 = fsub fast float %4839, %4840
  %4842 = call float @dx.op.dot3.f32(i32 55, float %4835, float %4837, float %4841, float %4835, float %4837, float %4841)  ; Dot3(ax,ay,az,bx,by,bz)
  %4843 = call float @dx.op.unary.f32(i32 25, float %4842)  ; Rsqrt(value)
  %4844 = fmul fast float %4835, %4843
  %4845 = fmul fast float %4837, %4843
  %4846 = select i1 %4673, i32 %4663, i32 %4664
  %4847 = select i1 %4671, i32 %4662, i32 %4846
  %4848 = sitofp i32 %4847 to float
  %4849 = fmul fast float %4841, %4848
  %4850 = fmul fast float %4849, %4843
  %4851 = select i1 %4673, float %4850, float %4845
  %4852 = select i1 %4673, float %4845, float %4850
  %4853 = select i1 %4671, float %4850, float %4844
  %4854 = select i1 %4671, float %4845, float %4851
  %4855 = select i1 %4671, float %4844, float %4852
  %4856 = fsub fast float %4790, %4614
  %4857 = fsub fast float %4791, %4615
  %4858 = fsub fast float %4792, %4616
  %4859 = fmul fast float %4856, %4762
  %4860 = fmul fast float %4857, %4762
  %4861 = fmul fast float %4858, %4762
  %4862 = fadd fast float %4859, %4614
  %4863 = fadd fast float %4860, %4615
  %4864 = fadd fast float %4861, %4616
  %4865 = fsub fast float %4799, %4617
  %4866 = fsub fast float %4800, %4618
  %4867 = fsub fast float %4801, %4619
  %4868 = fmul fast float %4865, %4762
  %4869 = fmul fast float %4866, %4762
  %4870 = fmul fast float %4867, %4762
  %4871 = fadd fast float %4868, %4617
  %4872 = fadd fast float %4869, %4618
  %4873 = fadd fast float %4870, %4619
  %4874 = fadd fast float %4853, %4620
  %4875 = fadd fast float %4854, %4621
  %4876 = fadd fast float %4855, %4622
  %4877 = call float @dx.op.dot3.f32(i32 55, float %4874, float %4875, float %4876, float %4874, float %4875, float %4876)  ; Dot3(ax,ay,az,bx,by,bz)
  %4878 = call float @dx.op.unary.f32(i32 25, float %4877)  ; Rsqrt(value)
  %4879 = fmul fast float %4874, %4878
  %4880 = fmul fast float %4875, %4878
  %4881 = fmul fast float %4876, %4878
  %4882 = fsub fast float %4879, %4620
  %4883 = fsub fast float %4880, %4621
  %4884 = fsub fast float %4881, %4622
  %4885 = fmul fast float %4882, %4762
  %4886 = fmul fast float %4883, %4762
  %4887 = fmul fast float %4884, %4762
  %4888 = fadd fast float %4885, %4620
  %4889 = fadd fast float %4886, %4621
  %4890 = fadd fast float %4887, %4622
  %4891 = call float @dx.op.binary.f32(i32 36, float %4624, float %4810)  ; FMin(a,b)
  %4892 = fsub fast float %4891, %4624
  %4893 = fmul fast float %4892, %4762
  %4894 = fadd fast float %4893, %4624
  %4895 = fsub fast float %4823, %4623
  %4896 = fmul fast float %4895, %4762
  %4897 = fadd fast float %4896, %4623
  br label %4898

; <label>:4898                                    ; preds = %4760, %4722, %4613, %4329
  %4899 = phi float [ %4862, %4760 ], [ %4614, %4722 ], [ %4614, %4613 ], [ %3938, %4329 ]
  %4900 = phi float [ %4863, %4760 ], [ %4615, %4722 ], [ %4615, %4613 ], [ %3939, %4329 ]
  %4901 = phi float [ %4864, %4760 ], [ %4616, %4722 ], [ %4616, %4613 ], [ %3940, %4329 ]
  %4902 = phi float [ %4871, %4760 ], [ %4617, %4722 ], [ %4617, %4613 ], [ %3923, %4329 ]
  %4903 = phi float [ %4872, %4760 ], [ %4618, %4722 ], [ %4618, %4613 ], [ %3924, %4329 ]
  %4904 = phi float [ %4873, %4760 ], [ %4619, %4722 ], [ %4619, %4613 ], [ %3925, %4329 ]
  %4905 = phi float [ %4888, %4760 ], [ %4620, %4722 ], [ %4620, %4613 ], [ %3886, %4329 ]
  %4906 = phi float [ %4889, %4760 ], [ %4621, %4722 ], [ %4621, %4613 ], [ %3887, %4329 ]
  %4907 = phi float [ %4890, %4760 ], [ %4622, %4722 ], [ %4622, %4613 ], [ %3888, %4329 ]
  %4908 = phi float [ %4897, %4760 ], [ %4623, %4722 ], [ %4623, %4613 ], [ %3926, %4329 ]
  %4909 = phi float [ %4894, %4760 ], [ %4624, %4722 ], [ %4624, %4613 ], [ %3898, %4329 ]
  %4910 = fcmp fast une float %4333, 0.000000e+00
  %4911 = call float @dx.op.dot3.f32(i32 55, float %203, float %204, float %205, float %203, float %204, float %205)  ; Dot3(ax,ay,az,bx,by,bz)
  %4912 = call float @dx.op.unary.f32(i32 25, float %4911)  ; Rsqrt(value)
  br i1 %4910, label %4920, label %4913

; <label>:4913                                    ; preds = %4898
  %4914 = fmul fast float %4912, %203
  %4915 = fmul fast float %4912, %204
  %4916 = fmul fast float %4912, %205
  %4917 = fsub fast float -0.000000e+00, %4914
  %4918 = fsub fast float -0.000000e+00, %4915
  %4919 = fsub fast float -0.000000e+00, %4916
  br label %5087

; <label>:4920                                    ; preds = %4898
  %4921 = fmul fast float %203, %4912
  %4922 = fsub fast float -0.000000e+00, %4921
  %4923 = fmul fast float %204, %4912
  %4924 = fsub fast float -0.000000e+00, %4923
  %4925 = fmul fast float %205, %4912
  %4926 = fsub fast float -0.000000e+00, %4925
  %4927 = call float @dx.op.dot3.f32(i32 55, float %4922, float %4924, float %4926, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %4928 = fmul fast float %4333, 2.500000e+00
  %4929 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4930 = fmul fast float %4333, 0x4013FFFFE0000000
  %4931 = fadd fast float %4930, 0xBFFFFFFFE0000000
  %4932 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4933 = fmul fast float %4333, 0x4004000020000000
  %4934 = fadd fast float %4933, 0xBFF8000040000000
  %4935 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4936 = fmul fast float %3905, 1.000000e+01
  %4937 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4938 = fmul fast float %4937, 2.000000e+00
  %4939 = fsub fast float 3.000000e+00, %4938
  %4940 = fmul fast float %4937, %4937
  %4941 = fmul fast float %4940, %4939
  %4942 = fsub fast float 1.000000e+00, %4941
  %4943 = fsub fast float 0x3FE3333340000000, %4908
  %4944 = fmul fast float %4943, 0x400AAAAAA0000000
  %4945 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4946 = fmul fast float %4942, %4945
  %4947 = fmul fast float %4899, 0x3FEA2B8620000000
  %4948 = fmul fast float %4900, 0x3FEA2B8620000000
  %4949 = fmul fast float %4901, 0x3FEA2B8620000000
  %4950 = fadd fast float %4947, 0x3FC81DFBA0000000
  %4951 = fmul fast float %4950, %4899
  %4952 = fadd fast float %4951, 0x3F910E6020000000
  %4953 = fadd fast float %4948, 0x3FC81DFBA0000000
  %4954 = fmul fast float %4953, %4900
  %4955 = fadd fast float %4954, 0x3F910E6020000000
  %4956 = fadd fast float %4949, 0x3FC81DFBA0000000
  %4957 = fmul fast float %4956, %4901
  %4958 = fadd fast float %4957, 0x3F910E6020000000
  %4959 = call float @dx.op.unary.f32(i32 7, float %4952)  ; Saturate(value)
  %4960 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4961 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4962 = fsub fast float %4959, %4899
  %4963 = fsub fast float %4960, %4900
  %4964 = fsub fast float %4961, %4901
  %4965 = fmul fast float %4962, %4929
  %4966 = fmul fast float %4965, %4946
  %4967 = fmul fast float %4963, %4929
  %4968 = fmul fast float %4967, %4946
  %4969 = fmul fast float %4964, %4929
  %4970 = fmul fast float %4969, %4946
  %4971 = fadd fast float %4966, %4899
  %4972 = fadd fast float %4968, %4900
  %4973 = fadd fast float %4970, %4901
  %4974 = fmul fast float %4909, %4909
  %4975 = fmul fast float %4974, %4974
  %4976 = fadd fast float %4932, 1.000000e+00
  %4977 = fsub fast float %4976, %4946
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4980 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4981 = fsub fast float 1.000000e+00, %4975
  %4982 = call float @dx.op.binary.f32(i32 36, float %4978, float %4981)  ; FMin(a,b)
  %4983 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4984 = call float @dx.op.binary.f32(i32 35, float %4982, float %4983)  ; FMax(a,b)
  %4985 = fadd fast float %4980, 0xBFE4CCCCC0000000
  %4986 = fmul fast float %4985, 0x4006DB6DA0000000
  %4987 = call float @dx.op.unary.f32(i32 7, float %4986)  ; Saturate(value)
  %4988 = fmul fast float %4987, 2.000000e+00
  %4989 = fsub fast float 3.000000e+00, %4988
  %4990 = bitcast float %4902 to i32
  %4991 = ashr i32 %4990, 1
  %4992 = add nsw i32 %4991, 532487669
  %4993 = bitcast i32 %4992 to float
  %4994 = fsub fast float 1.000000e+00, %4993
  %4995 = bitcast float %4994 to i32
  %4996 = sub nsw i32 2129859010, %4995
  %4997 = bitcast i32 %4996 to float
  %4998 = fmul fast float %4997, 2.000000e+00
  %4999 = bitcast float %4903 to i32
  %5000 = ashr i32 %4999, 1
  %5001 = add nsw i32 %5000, 532487669
  %5002 = bitcast i32 %5001 to float
  %5003 = fsub fast float 1.000000e+00, %5002
  %5004 = bitcast float %5003 to i32
  %5005 = sub nsw i32 2129859010, %5004
  %5006 = bitcast i32 %5005 to float
  %5007 = fmul fast float %5006, 2.000000e+00
  %5008 = bitcast float %4904 to i32
  %5009 = ashr i32 %5008, 1
  %5010 = add nsw i32 %5009, 532487669
  %5011 = bitcast i32 %5010 to float
  %5012 = fsub fast float 1.000000e+00, %5011
  %5013 = bitcast float %5012 to i32
  %5014 = sub nsw i32 2129859010, %5013
  %5015 = bitcast i32 %5014 to float
  %5016 = fmul fast float %5015, 2.000000e+00
  %5017 = fsub fast float 0x4002A9FBE0000000, %4998
  %5018 = fadd fast float %4998, 0x3FD54FDF00000000
  %5019 = bitcast float %5018 to i32
  %5020 = sub nsw i32 2129859010, %5019
  %5021 = bitcast i32 %5020 to float
  %5022 = fmul fast float %5021, %5017
  %5023 = fmul fast float %5022, %5022
  %5024 = fsub fast float 0x4002A9FBE0000000, %5007
  %5025 = fadd fast float %5007, 0x3FD54FDF00000000
  %5026 = bitcast float %5025 to i32
  %5027 = sub nsw i32 2129859010, %5026
  %5028 = bitcast i32 %5027 to float
  %5029 = fmul fast float %5028, %5024
  %5030 = fmul fast float %5029, %5029
  %5031 = fsub fast float 0x4002A9FBE0000000, %5016
  %5032 = fadd fast float %5016, 0x3FD54FDF00000000
  %5033 = bitcast float %5032 to i32
  %5034 = sub nsw i32 2129859010, %5033
  %5035 = bitcast i32 %5034 to float
  %5036 = fmul fast float %5035, %5031
  %5037 = fmul fast float %5036, %5036
  %5038 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5023)  ; FMax(a,b)
  %5039 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5030)  ; FMax(a,b)
  %5040 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5037)  ; FMax(a,b)
  %5041 = fsub fast float 1.000000e+00, %4927
  %5042 = fadd fast float %5041, %4942
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = fsub fast float 1.000000e+00, %4314
  %5045 = fmul fast float %4984, %5044
  %5046 = fmul fast float %4987, %4987
  %5047 = fmul fast float %5046, %5045
  %5048 = fmul fast float %5047, %4989
  %5049 = fmul fast float %5044, 0xBFE99999A0000000
  %5050 = fmul fast float %5049, %4929
  %5051 = fmul fast float %5050, %4946
  %5052 = fadd fast float %5051, 1.000000e+00
  %5053 = fadd fast float %4908, -1.000000e+00
  %5054 = fmul fast float %5052, %5053
  %5055 = fadd fast float %5054, 1.000000e+00
  %5056 = fsub fast float %5038, %4902
  %5057 = fsub fast float %5039, %4903
  %5058 = fsub fast float %5040, %4904
  %5059 = fmul fast float %5048, %5056
  %5060 = fmul fast float %5048, %5057
  %5061 = fmul fast float %5048, %5058
  %5062 = fadd fast float %5059, %4902
  %5063 = fadd fast float %5060, %4903
  %5064 = fadd fast float %5061, %4904
  %5065 = fsub fast float %123, %4905
  %5066 = fsub fast float %124, %4906
  %5067 = fsub fast float %125, %4907
  %5068 = fmul fast float %5048, %5065
  %5069 = fmul fast float %5048, %5066
  %5070 = fmul fast float %5048, %5067
  %5071 = fadd fast float %5068, %4905
  %5072 = fadd fast float %5069, %4906
  %5073 = fadd fast float %5070, %4907
  %5074 = fmul fast float %5048, %5043
  %5075 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5076 = fsub fast float 1.000000e+00, %5075
  %5077 = fmul fast float %5074, %5076
  %5078 = fadd fast float %5077, %5075
  %5079 = fsub fast float 1.000000e+00, %4909
  %5080 = fmul fast float %5048, %5079
  %5081 = fadd fast float %5080, %4909
  %5082 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5072, float %5073, float %5071, float %5072, float %5073)  ; Dot3(ax,ay,az,bx,by,bz)
  %5083 = call float @dx.op.unary.f32(i32 25, float %5082)  ; Rsqrt(value)
  %5084 = fmul fast float %5071, %5083
  %5085 = fmul fast float %5072, %5083
  %5086 = fmul fast float %5073, %5083
  br label %5087

; <label>:5087                                    ; preds = %4920, %4913
  %5088 = phi float [ %4919, %4913 ], [ %4926, %4920 ]
  %5089 = phi float [ %4918, %4913 ], [ %4924, %4920 ]
  %5090 = phi float [ %4917, %4913 ], [ %4922, %4920 ]
  %5091 = phi float [ %4916, %4913 ], [ %4925, %4920 ]
  %5092 = phi float [ %4915, %4913 ], [ %4923, %4920 ]
  %5093 = phi float [ %4914, %4913 ], [ %4921, %4920 ]
  %5094 = phi float [ %4899, %4913 ], [ %4971, %4920 ]
  %5095 = phi float [ %4900, %4913 ], [ %4972, %4920 ]
  %5096 = phi float [ %4901, %4913 ], [ %4973, %4920 ]
  %5097 = phi float [ %4902, %4913 ], [ %5062, %4920 ]
  %5098 = phi float [ %4903, %4913 ], [ %5063, %4920 ]
  %5099 = phi float [ %4904, %4913 ], [ %5064, %4920 ]
  %5100 = phi float [ %4905, %4913 ], [ %5084, %4920 ]
  %5101 = phi float [ %4906, %4913 ], [ %5085, %4920 ]
  %5102 = phi float [ %4907, %4913 ], [ %5086, %4920 ]
  %5103 = phi float [ %4908, %4913 ], [ %5078, %4920 ]
  %5104 = phi float [ %4909, %4913 ], [ %5081, %4920 ]
  %5105 = fsub fast float -0.000000e+00, %205
  %5106 = select i1 %275, float 0.000000e+00, float %5099
  %5107 = call float @dx.op.dot3.f32(i32 55, float %5100, float %5101, float %5102, float %5090, float %5089, float %5088)  ; Dot3(ax,ay,az,bx,by,bz)
  %5108 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5109 = call float @dx.op.dot3.f32(i32 55, float %5093, float %5092, float %5091, float %5100, float %5101, float %5102)  ; Dot3(ax,ay,az,bx,by,bz)
  %5110 = fmul fast float %5109, 2.000000e+00
  %5111 = fmul fast float %5110, %5100
  %5112 = fmul fast float %5110, %5101
  %5113 = fmul fast float %5110, %5102
  %5114 = fsub fast float %5093, %5111
  %5115 = fsub fast float %5092, %5112
  %5116 = fsub fast float %5091, %5113
  %5117 = call float @dx.op.binary.f32(i32 36, float %5104, float 1.000000e+00)  ; FMin(a,b)
  %5118 = fsub fast float 1.000000e+00, %5117
  %5119 = bitcast float %5118 to i32
  %5120 = ashr i32 %5119, 1
  %5121 = add nsw i32 %5120, 532487669
  %5122 = bitcast i32 %5121 to float
  %5123 = fsub fast float 1.000000e+00, %5103
  %5124 = call float @dx.op.binary.f32(i32 35, float %5123, float 0x3F847AE140000000)  ; FMax(a,b)
  %5125 = fmul fast float %5124, %5124
  %5126 = fmul fast float %5125, %5125
  %5127 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5122, float %5126, float %5127, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5129 = extractvalue %dx.types.ResRet.f32 %5128, 0
  %5130 = fsub fast float 1.000000e+00, %5104
  %5131 = bitcast float %5130 to i32
  %5132 = sub nsw i32 2129859010, %5131
  %5133 = bitcast i32 %5132 to float
  %5134 = fsub fast float 1.000000e+00, %83
  %5135 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5136 = call float @dx.op.binary.f32(i32 35, float %5135, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5137 = fdiv fast float %5134, %5136
  %5138 = call float @dx.op.dot3.f32(i32 55, float %5100, float %5101, float %5102, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5140 = fmul fast float %5139, 5.000000e-01
  %5141 = fadd fast float %5140, 5.000000e-01
  %5142 = fmul fast float %5141, %83
  %5143 = call float @dx.op.dot3.f32(i32 55, float %5100, float %5101, float %5102, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %5144 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5145 = fmul fast float %5144, %5137
  %5146 = fadd fast float %5142, %5145
  %5147 = fsub fast float 5.000000e-01, %5140
  %5148 = fmul fast float %5147, %5094
  %5149 = fmul fast float %5147, %5095
  %5150 = fmul fast float %5147, %5096
  %5151 = fadd fast float %5146, %5148
  %5152 = fadd fast float %5146, %5149
  %5153 = fadd fast float %5146, %5150
  %5154 = call float @dx.op.dot3.f32(i32 55, float %5114, float %5115, float %5116, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5155 = call float @dx.op.unary.f32(i32 7, float %5154)  ; Saturate(value)
  %5156 = fmul fast float %5155, 5.000000e-01
  %5157 = fadd fast float %5156, 5.000000e-01
  %5158 = fmul fast float %5157, %83
  %5159 = call float @dx.op.dot3.f32(i32 55, float %5114, float %5115, float %5116, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %5160 = call float @dx.op.unary.f32(i32 7, float %5159)  ; Saturate(value)
  %5161 = fmul fast float %5160, %5137
  %5162 = fadd fast float %5158, %5161
  %5163 = fsub fast float 5.000000e-01, %5156
  %5164 = fmul fast float %5163, %5094
  %5165 = fmul fast float %5163, %5095
  %5166 = fmul fast float %5163, %5096
  %5167 = fadd fast float %5162, %5164
  %5168 = fadd fast float %5162, %5165
  %5169 = fadd fast float %5162, %5166
  %5170 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5172 = extractvalue %dx.types.CBufRet.f32 %5171, 0
  %5173 = call float @dx.op.binary.f32(i32 36, float %5094, float %5172)  ; FMin(a,b)
  %5174 = fmul fast float %5173, %5118
  %5175 = fsub fast float 1.000000e+00, %5174
  %5176 = bitcast float %5175 to i32
  %5177 = sub nsw i32 2129859010, %5176
  %5178 = bitcast i32 %5177 to float
  %5179 = call float @dx.op.binary.f32(i32 36, float %5095, float %5172)  ; FMin(a,b)
  %5180 = fmul fast float %5179, %5118
  %5181 = fsub fast float 1.000000e+00, %5180
  %5182 = bitcast float %5181 to i32
  %5183 = sub nsw i32 2129859010, %5182
  %5184 = bitcast i32 %5183 to float
  %5185 = call float @dx.op.binary.f32(i32 36, float %5096, float %5172)  ; FMin(a,b)
  %5186 = fmul fast float %5185, %5118
  %5187 = fsub fast float 1.000000e+00, %5186
  %5188 = bitcast float %5187 to i32
  %5189 = sub nsw i32 2129859010, %5188
  %5190 = bitcast i32 %5189 to float
  %5191 = fmul fast float %5117, %84
  %5192 = fmul fast float %5191, %5151
  %5193 = fmul fast float %5192, %5178
  %5194 = fmul fast float %5117, %85
  %5195 = fmul fast float %5194, %5152
  %5196 = fmul fast float %5195, %5184
  %5197 = fmul fast float %5117, %86
  %5198 = fmul fast float %5197, %5153
  %5199 = fmul fast float %5198, %5190
  %5200 = call float @dx.op.binary.f32(i32 36, float %5097, float %5172)  ; FMin(a,b)
  %5201 = fmul fast float %5200, %5118
  %5202 = fsub fast float 1.000000e+00, %5201
  %5203 = bitcast float %5202 to i32
  %5204 = sub nsw i32 2129859010, %5203
  %5205 = bitcast i32 %5204 to float
  %5206 = call float @dx.op.binary.f32(i32 36, float %5098, float %5172)  ; FMin(a,b)
  %5207 = fmul fast float %5206, %5118
  %5208 = fsub fast float 1.000000e+00, %5207
  %5209 = bitcast float %5208 to i32
  %5210 = sub nsw i32 2129859010, %5209
  %5211 = bitcast i32 %5210 to float
  %5212 = call float @dx.op.binary.f32(i32 36, float %5106, float %5172)  ; FMin(a,b)
  %5213 = fmul fast float %5212, %5118
  %5214 = fsub fast float 1.000000e+00, %5213
  %5215 = bitcast float %5214 to i32
  %5216 = sub nsw i32 2129859010, %5215
  %5217 = bitcast i32 %5216 to float
  %5218 = fmul fast float %5191, %5167
  %5219 = fmul fast float %5218, %5205
  %5220 = fmul fast float %5194, %5168
  %5221 = fmul fast float %5220, %5211
  %5222 = fmul fast float %5197, %5169
  %5223 = fmul fast float %5222, %5217
  %5224 = call float @dx.op.dot3.f32(i32 55, float %5193, float %5196, float %5199, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5225 = select i1 %275, float 0.000000e+00, float %5193
  %5226 = select i1 %275, float %5224, float %5196
  %5227 = select i1 %275, float 0.000000e+00, float %5199
  %5228 = call float @dx.op.dot3.f32(i32 55, float %5219, float %5221, float %5223, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = select i1 %275, float 0.000000e+00, float %5219
  %5230 = select i1 %275, float %5228, float %5221
  %5231 = select i1 %275, float 0.000000e+00, float %5223
  %5232 = fmul fast float %5108, 9.843750e-01
  %5233 = fmul fast float %5103, 9.843750e-01
  %5234 = fadd fast float %5232, 7.812500e-03
  %5235 = fadd fast float %5233, 7.812500e-03
  %5236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %5234, float %5235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5237 = extractvalue %dx.types.ResRet.f32 %5236, 2
  %5238 = extractvalue %dx.types.ResRet.f32 %5236, 3
  %5239 = fmul fast float %5237, %5097
  %5240 = fmul fast float %5237, %5098
  %5241 = fmul fast float %5237, %5106
  %5242 = fadd fast float %5239, %5238
  %5243 = fadd fast float %5240, %5238
  %5244 = fadd fast float %5241, %5238
  %5245 = fcmp fast ogt float %3899, 0.000000e+00
  br i1 %5245, label %5246, label %5272

; <label>:5246                                    ; preds = %5087
  %5247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3899, float %5108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5248 = extractvalue %dx.types.ResRet.f32 %5247, 0
  %5249 = extractvalue %dx.types.ResRet.f32 %5247, 1
  %5250 = extractvalue %dx.types.ResRet.f32 %5247, 2
  %5251 = fadd fast float %5248, -5.000000e-01
  %5252 = fadd fast float %5249, -5.000000e-01
  %5253 = fadd fast float %5250, -5.000000e-01
  %5254 = fsub fast float 1.000000e+00, %5097
  %5255 = fsub fast float 1.000000e+00, %5098
  %5256 = fsub fast float 1.000000e+00, %5106
  %5257 = fmul fast float %5097, 4.000000e+00
  %5258 = fmul fast float %5257, %5254
  %5259 = fmul fast float %5258, %5251
  %5260 = fmul fast float %5098, 4.000000e+00
  %5261 = fmul fast float %5260, %5255
  %5262 = fmul fast float %5261, %5252
  %5263 = fmul fast float %5106, 4.000000e+00
  %5264 = fmul fast float %5263, %5256
  %5265 = fmul fast float %5264, %5253
  %5266 = fadd fast float %5259, %5242
  %5267 = fadd fast float %5262, %5243
  %5268 = fadd fast float %5265, %5244
  %5269 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5270 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5271 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  br label %5272

; <label>:5272                                    ; preds = %5246, %5087
  %5273 = phi float [ %5269, %5246 ], [ %5242, %5087 ]
  %5274 = phi float [ %5270, %5246 ], [ %5243, %5087 ]
  %5275 = phi float [ %5271, %5246 ], [ %5244, %5087 ]
  %5276 = call float @dx.op.binary.f32(i32 35, float %5274, float %5275)  ; FMax(a,b)
  %5277 = call float @dx.op.binary.f32(i32 35, float %5273, float %5276)  ; FMax(a,b)
  %5278 = fsub fast float 1.000000e+00, %5277
  %5279 = fmul fast float %5277, %5103
  %5280 = fadd fast float %5279, %5103
  %5281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5282 = extractvalue %dx.types.CBufRet.f32 %5281, 2
  %5283 = extractvalue %dx.types.CBufRet.f32 %5281, 3
  %5284 = fmul fast float %5280, %5282
  %5285 = fadd fast float %5284, %5283
  %5286 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5287 = fsub fast float 1.000000e+00, %5129
  %5288 = fadd fast float %5287, %5286
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = fcmp fast olt float %5289, 1.000000e+00
  br i1 %5290, label %5291, label %5767

; <label>:5291                                    ; preds = %5272
  %5292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5293 = extractvalue %dx.types.CBufRet.f32 %5292, 2
  %5294 = extractvalue %dx.types.CBufRet.f32 %5292, 3
  %5295 = fmul fast float %5293, %116
  %5296 = fmul fast float %5294, %117
  %5297 = fptoui float %5295 to i32
  %5298 = fptoui float %5296 to i32
  %5299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5300 = extractvalue %dx.types.CBufRet.f32 %5299, 0
  %5301 = extractvalue %dx.types.CBufRet.f32 %5299, 2
  %5302 = extractvalue %dx.types.CBufRet.f32 %5299, 3
  %5303 = fadd fast float %103, -4.000000e+00
  %5304 = call float @dx.op.binary.f32(i32 35, float %5303, float 0.000000e+00)  ; FMax(a,b)
  %5305 = fadd fast float %5304, %5300
  %5306 = fmul fast float %5305, %5301
  %5307 = call float @dx.op.unary.f32(i32 23, float %5306)  ; Log(value)
  %5308 = fmul fast float %5307, %5302
  %5309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5309, 2
  %5311 = fmul fast float %5308, %5310
  %5312 = call float @dx.op.unary.f32(i32 7, float %5311)  ; Saturate(value)
  %5313 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5314 = extractvalue %dx.types.CBufRet.i32 %5313, 1
  %5315 = add i32 %5314, -1
  %5316 = uitofp i32 %5314 to float
  %5317 = fmul fast float %5316, %5312
  %5318 = fptoui float %5317 to i32
  %5319 = call i32 @dx.op.binary.i32(i32 40, i32 %5318, i32 %5315)  ; UMin(a,b)
  %5320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5321 = extractvalue %dx.types.CBufRet.i32 %5320, 2
  %5322 = extractvalue %dx.types.CBufRet.i32 %5320, 3
  %5323 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5298, i32 %5321, i32 %5297)  ; UMad(a,b,c)
  %5324 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5319, i32 %5322, i32 %5323)  ; UMad(a,b,c)
  %5325 = call float @dx.op.binary.f32(i32 35, float %103, float 0.000000e+00)  ; FMax(a,b)
  %5326 = fptoui float %5325 to i32
  %5327 = lshr i32 %5326, 5
  %5328 = call i32 @dx.op.binary.i32(i32 40, i32 %5327, i32 8191)  ; UMin(a,b)
  %5329 = fsub fast float %4304, %205
  %5330 = call float @dx.op.unary.f32(i32 7, float %5329)  ; Saturate(value)
  %5331 = fcmp fast ogt float %5330, 0.000000e+00
  %5332 = fcmp fast ogt float %5116, 0.000000e+00
  %5333 = and i1 %5332, %5331
  br i1 %5333, label %5334, label %5363

; <label>:5334                                    ; preds = %5291
  %5335 = call float @dx.op.dot3.f32(i32 55, float %5114, float %5115, float %5116, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5336 = call float @dx.op.binary.f32(i32 35, float %5335, float -1.000000e+00)  ; FMax(a,b)
  %5337 = call float @dx.op.binary.f32(i32 36, float %5336, float 1.000000e+00)  ; FMin(a,b)
  %5338 = fmul fast float %5337, %5337
  %5339 = fsub fast float 1.000000e+00, %5338
  %5340 = fmul fast float %5339, 0x3FFC6E2300000000
  %5341 = fsub fast float 1.000000e+00, %5340
  %5342 = fcmp fast ogt float %5341, 0.000000e+00
  %5343 = call float @dx.op.unary.f32(i32 24, float %5341)  ; Sqrt(value)
  %5344 = fsub fast float 1.000000e+00, %5343
  %5345 = call float @dx.op.unary.f32(i32 23, float %5344)  ; Log(value)
  %5346 = fmul fast float %5345, 5.000000e+00
  %5347 = call float @dx.op.unary.f32(i32 21, float %5346)  ; Exp(value)
  %5348 = fmul fast float %5347, 0x3FEF591A60000000
  %5349 = fadd fast float %5348, 0x3F94DCB540000000
  %5350 = select i1 %5342, float %5349, float 1.000000e+00
  %5351 = fcmp fast oge float %5350, 1.000000e+00
  %5352 = fmul fast float %5335, 2.000000e+00
  %5353 = fadd fast float %5352, %5116
  %5354 = select i1 %5351, float %5353, float %5116
  %5355 = fsub fast float %5354, %5116
  %5356 = fmul fast float %5355, %5330
  %5357 = fadd fast float %5356, %5116
  %5358 = call float @dx.op.dot3.f32(i32 55, float %5114, float %5115, float %5357, float %5114, float %5115, float %5357)  ; Dot3(ax,ay,az,bx,by,bz)
  %5359 = call float @dx.op.unary.f32(i32 25, float %5358)  ; Rsqrt(value)
  %5360 = fmul fast float %5359, %5114
  %5361 = fmul fast float %5359, %5115
  %5362 = fmul fast float %5357, %5359
  br label %5363

; <label>:5363                                    ; preds = %5334, %5291
  %5364 = phi float [ %5360, %5334 ], [ %5114, %5291 ]
  %5365 = phi float [ %5361, %5334 ], [ %5115, %5291 ]
  %5366 = phi float [ %5362, %5334 ], [ %5116, %5291 ]
  %5367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5368 = extractvalue %dx.types.CBufRet.i32 %5367, 2
  %5369 = add nsw i32 %5368, -1
  %5370 = call i32 @dx.op.binary.i32(i32 37, i32 %5369, i32 0)  ; IMax(a,b)
  %5371 = shl i32 %5328, 2
  %5372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5371, i32 undef)  ; BufferLoad(srv,index,wot)
  %5373 = extractvalue %dx.types.ResRet.i32 %5372, 0
  %5374 = lshr i32 %5373, 16
  %5375 = and i32 %5373, 65535
  %5376 = lshr i32 %5373, 21
  %5377 = lshr i32 %5375, 5
  %5378 = call i32 @dx.op.binary.i32(i32 40, i32 %5377, i32 %5370)  ; UMin(a,b)
  %5379 = icmp ugt i32 %5376, %5378
  br i1 %5379, label %5743, label %5380

; <label>:5380                                    ; preds = %5363
  br label %5381

; <label>:5381                                    ; preds = %5735, %5380
  %5382 = phi float [ %5736, %5735 ], [ 0.000000e+00, %5380 ]
  %5383 = phi float [ %5737, %5735 ], [ 0.000000e+00, %5380 ]
  %5384 = phi float [ %5738, %5735 ], [ 0.000000e+00, %5380 ]
  %5385 = phi float [ %5739, %5735 ], [ 1.000000e+00, %5380 ]
  %5386 = phi i32 [ %5740, %5735 ], [ %5376, %5380 ]
  %5387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5388 = extractvalue %dx.types.CBufRet.i32 %5387, 2
  %5389 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5324, i32 %5388, i32 %5386)  ; UMad(a,b,c)
  %5390 = shl i32 %5389, 2
  %5391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5390, i32 undef)  ; BufferLoad(srv,index,wot)
  %5392 = extractvalue %dx.types.ResRet.i32 %5391, 0
  %5393 = shl i32 %5386, 5
  %5394 = sub nsw i32 %5374, %5393
  %5395 = call i32 @dx.op.binary.i32(i32 37, i32 %5394, i32 0)  ; IMax(a,b)
  %5396 = call i32 @dx.op.binary.i32(i32 38, i32 %5395, i32 31)  ; IMin(a,b)
  %5397 = sub nsw i32 1, %5374
  %5398 = add nsw i32 %5397, %5375
  %5399 = call i32 @dx.op.binary.i32(i32 37, i32 %5398, i32 0)  ; IMax(a,b)
  %5400 = call i32 @dx.op.binary.i32(i32 38, i32 %5399, i32 32)  ; IMin(a,b)
  %5401 = and i32 %5400, 31
  %5402 = shl i32 -1, %5401
  %5403 = xor i32 %5402, -1
  %5404 = and i32 %5396, 31
  %5405 = shl i32 %5403, %5404
  %5406 = icmp eq i32 %5400, 32
  %5407 = select i1 %5406, i32 -1, i32 %5405
  %5408 = and i32 %5407, %5392
  %5409 = icmp eq i32 %5408, 0
  br i1 %5409, label %5735, label %5410

; <label>:5410                                    ; preds = %5381
  br label %5411

; <label>:5411                                    ; preds = %5518, %5410
  %5412 = phi float [ %5519, %5518 ], [ %5382, %5410 ]
  %5413 = phi float [ %5520, %5518 ], [ %5383, %5410 ]
  %5414 = phi float [ %5521, %5518 ], [ %5384, %5410 ]
  %5415 = phi float [ %5522, %5518 ], [ %5385, %5410 ]
  %5416 = phi i32 [ %5421, %5518 ], [ %5408, %5410 ]
  %5417 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5416)  ; FirstbitLo(value)
  %5418 = add i32 %5417, %5393
  %5419 = and i32 %5417, 31
  %5420 = shl i32 1, %5419
  %5421 = xor i32 %5420, %5416
  %5422 = mul i32 %5418, 72
  %5423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5422, i32 undef)  ; BufferLoad(srv,index,wot)
  %5424 = extractvalue %dx.types.ResRet.f32 %5423, 0
  %5425 = extractvalue %dx.types.ResRet.f32 %5423, 1
  %5426 = extractvalue %dx.types.ResRet.f32 %5423, 2
  %5427 = add i32 %5422, 12
  %5428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5427, i32 undef)  ; BufferLoad(srv,index,wot)
  %5429 = extractvalue %dx.types.ResRet.i32 %5428, 0
  %5430 = add i32 %5422, 16
  %5431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5430, i32 undef)  ; BufferLoad(srv,index,wot)
  %5432 = extractvalue %dx.types.ResRet.f32 %5431, 0
  %5433 = extractvalue %dx.types.ResRet.f32 %5431, 1
  %5434 = extractvalue %dx.types.ResRet.f32 %5431, 2
  %5435 = add i32 %5422, 28
  %5436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5435, i32 undef)  ; BufferLoad(srv,index,wot)
  %5437 = extractvalue %dx.types.ResRet.f32 %5436, 0
  %5438 = add i32 %5422, 32
  %5439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5438, i32 undef)  ; BufferLoad(srv,index,wot)
  %5440 = extractvalue %dx.types.ResRet.f32 %5439, 0
  %5441 = extractvalue %dx.types.ResRet.f32 %5439, 1
  %5442 = extractvalue %dx.types.ResRet.f32 %5439, 2
  %5443 = extractvalue %dx.types.ResRet.f32 %5439, 3
  %5444 = add i32 %5422, 48
  %5445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5444, i32 undef)  ; BufferLoad(srv,index,wot)
  %5446 = extractvalue %dx.types.ResRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.ResRet.f32 %5445, 1
  %5448 = add i32 %5422, 56
  %5449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5448, i32 undef)  ; BufferLoad(srv,index,wot)
  %5450 = extractvalue %dx.types.ResRet.f32 %5449, 0
  %5451 = extractvalue %dx.types.ResRet.f32 %5449, 1
  %5452 = add i32 %5422, 64
  %5453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5452, i32 undef)  ; BufferLoad(srv,index,wot)
  %5454 = extractvalue %dx.types.ResRet.f32 %5453, 0
  %5455 = extractvalue %dx.types.ResRet.f32 %5453, 1
  %5456 = mul i32 %5418, 60
  %5457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5456, i32 undef)  ; BufferLoad(srv,index,wot)
  %5458 = extractvalue %dx.types.ResRet.f32 %5457, 0
  %5459 = extractvalue %dx.types.ResRet.f32 %5457, 1
  %5460 = extractvalue %dx.types.ResRet.f32 %5457, 2
  %5461 = add i32 %5456, 12
  %5462 = add i32 %5456, 48
  %5463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5462, i32 undef)  ; BufferLoad(srv,index,wot)
  %5464 = extractvalue %dx.types.ResRet.f32 %5463, 0
  %5465 = extractvalue %dx.types.ResRet.f32 %5463, 1
  %5466 = extractvalue %dx.types.ResRet.f32 %5463, 2
  %5467 = and i32 %5429, 32767
  %5468 = bitcast float %5424 to i32
  %5469 = icmp eq i32 %5468, -1
  %5470 = bitcast float %5425 to i32
  %5471 = and i32 %5429, 32768
  %5472 = icmp ne i32 %5471, 0
  %5473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5474 = extractvalue %dx.types.CBufRet.f32 %5473, 0
  %5475 = extractvalue %dx.types.CBufRet.f32 %5473, 1
  %5476 = extractvalue %dx.types.CBufRet.f32 %5473, 2
  %5477 = fsub fast float %5458, %5474
  %5478 = fsub fast float %5459, %5475
  %5479 = fsub fast float %5460, %5476
  %5480 = fsub fast float %203, %5477
  %5481 = fsub fast float %204, %5478
  %5482 = fsub fast float %205, %5479
  %5483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5461, i32 undef)  ; BufferLoad(srv,index,wot)
  %5484 = extractvalue %dx.types.ResRet.f32 %5483, 0
  %5485 = extractvalue %dx.types.ResRet.f32 %5483, 1
  %5486 = extractvalue %dx.types.ResRet.f32 %5483, 2
  %5487 = call float @dx.op.dot3.f32(i32 55, float %5480, float %5481, float %5482, float %5484, float %5485, float %5486)  ; Dot3(ax,ay,az,bx,by,bz)
  %5488 = add i32 %5456, 24
  %5489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5488, i32 undef)  ; BufferLoad(srv,index,wot)
  %5490 = extractvalue %dx.types.ResRet.f32 %5489, 0
  %5491 = extractvalue %dx.types.ResRet.f32 %5489, 1
  %5492 = extractvalue %dx.types.ResRet.f32 %5489, 2
  %5493 = call float @dx.op.dot3.f32(i32 55, float %5480, float %5481, float %5482, float %5490, float %5491, float %5492)  ; Dot3(ax,ay,az,bx,by,bz)
  %5494 = add i32 %5456, 36
  %5495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5494, i32 undef)  ; BufferLoad(srv,index,wot)
  %5496 = extractvalue %dx.types.ResRet.f32 %5495, 0
  %5497 = extractvalue %dx.types.ResRet.f32 %5495, 1
  %5498 = extractvalue %dx.types.ResRet.f32 %5495, 2
  %5499 = call float @dx.op.dot3.f32(i32 55, float %5480, float %5481, float %5482, float %5496, float %5497, float %5498)  ; Dot3(ax,ay,az,bx,by,bz)
  %5500 = call float @dx.op.unary.f32(i32 6, float %5487)  ; FAbs(value)
  %5501 = call float @dx.op.unary.f32(i32 6, float %5493)  ; FAbs(value)
  %5502 = call float @dx.op.unary.f32(i32 6, float %5499)  ; FAbs(value)
  %5503 = fsub fast float %5464, %5500
  %5504 = fsub fast float %5465, %5501
  %5505 = fsub fast float %5466, %5502
  %5506 = fmul fast float %5503, %5432
  %5507 = fmul fast float %5504, %5433
  %5508 = fmul fast float %5505, %5434
  %5509 = call float @dx.op.binary.f32(i32 36, float %5507, float %5508)  ; FMin(a,b)
  %5510 = call float @dx.op.binary.f32(i32 36, float %5506, float %5509)  ; FMin(a,b)
  %5511 = call float @dx.op.unary.f32(i32 7, float %5510)  ; Saturate(value)
  %5512 = call float @dx.op.binary.f32(i32 36, float %5415, float %5511)  ; FMin(a,b)
  %5513 = uitofp i1 %5472 to float
  %5514 = fadd fast float %5330, 1.000000e+00
  %5515 = fsub fast float %5514, %5513
  %5516 = fmul fast float %5512, %5515
  %5517 = fcmp fast ogt float %5516, 0.000000e+00
  br i1 %5517, label %5524, label %5518

; <label>:5518                                    ; preds = %5666, %5411
  %5519 = phi float [ %5730, %5666 ], [ %5412, %5411 ]
  %5520 = phi float [ %5731, %5666 ], [ %5413, %5411 ]
  %5521 = phi float [ %5732, %5666 ], [ %5414, %5411 ]
  %5522 = phi float [ %5733, %5666 ], [ %5415, %5411 ]
  %5523 = icmp eq i32 %5416, %5420
  br i1 %5523, label %5734, label %5411

; <label>:5524                                    ; preds = %5411
  br i1 %5469, label %5582, label %5525

; <label>:5525                                    ; preds = %5524
  %5526 = fsub fast float -0.000000e+00, %5484
  %5527 = fsub fast float -0.000000e+00, %5485
  %5528 = fsub fast float -0.000000e+00, %5486
  %5529 = call float @dx.op.dot3.f32(i32 55, float %5364, float %5365, float %5366, float %5526, float %5527, float %5528)  ; Dot3(ax,ay,az,bx,by,bz)
  %5530 = fsub fast float -0.000000e+00, %5529
  %5531 = call float @dx.op.dot3.f32(i32 55, float %5480, float %5481, float %5482, float %5526, float %5527, float %5528)  ; Dot3(ax,ay,az,bx,by,bz)
  %5532 = fadd fast float %5531, %5447
  %5533 = fadd fast float %5446, %5531
  %5534 = fsub fast float -0.000000e+00, %5533
  %5535 = fcmp ogt float %5529, -0.000000e+00
  %5536 = select i1 %5535, float %5534, float %5532
  %5537 = call float @dx.op.unary.f32(i32 6, float %5530)  ; FAbs(value)
  %5538 = fdiv fast float 1.000000e+00, %5537
  %5539 = fmul fast float %5536, %5538
  %5540 = call float @dx.op.binary.f32(i32 35, float %5539, float 0.000000e+00)  ; FMax(a,b)
  %5541 = fsub fast float -0.000000e+00, %5490
  %5542 = fsub fast float -0.000000e+00, %5491
  %5543 = fsub fast float -0.000000e+00, %5492
  %5544 = call float @dx.op.dot3.f32(i32 55, float %5364, float %5365, float %5366, float %5541, float %5542, float %5543)  ; Dot3(ax,ay,az,bx,by,bz)
  %5545 = fsub fast float -0.000000e+00, %5544
  %5546 = call float @dx.op.dot3.f32(i32 55, float %5480, float %5481, float %5482, float %5541, float %5542, float %5543)  ; Dot3(ax,ay,az,bx,by,bz)
  %5547 = fadd fast float %5546, %5451
  %5548 = fadd fast float %5450, %5546
  %5549 = fsub fast float -0.000000e+00, %5548
  %5550 = fcmp ogt float %5544, -0.000000e+00
  %5551 = select i1 %5550, float %5549, float %5547
  %5552 = call float @dx.op.unary.f32(i32 6, float %5545)  ; FAbs(value)
  %5553 = fdiv fast float 1.000000e+00, %5552
  %5554 = fmul fast float %5551, %5553
  %5555 = call float @dx.op.binary.f32(i32 35, float %5554, float 0.000000e+00)  ; FMax(a,b)
  %5556 = fsub fast float -0.000000e+00, %5496
  %5557 = fsub fast float -0.000000e+00, %5497
  %5558 = fsub fast float -0.000000e+00, %5498
  %5559 = call float @dx.op.dot3.f32(i32 55, float %5364, float %5365, float %5366, float %5556, float %5557, float %5558)  ; Dot3(ax,ay,az,bx,by,bz)
  %5560 = fsub fast float -0.000000e+00, %5559
  %5561 = call float @dx.op.dot3.f32(i32 55, float %5480, float %5481, float %5482, float %5556, float %5557, float %5558)  ; Dot3(ax,ay,az,bx,by,bz)
  %5562 = fadd fast float %5561, %5455
  %5563 = fadd fast float %5454, %5561
  %5564 = fsub fast float -0.000000e+00, %5563
  %5565 = fcmp ogt float %5559, -0.000000e+00
  %5566 = select i1 %5565, float %5564, float %5562
  %5567 = call float @dx.op.unary.f32(i32 6, float %5560)  ; FAbs(value)
  %5568 = fdiv fast float 1.000000e+00, %5567
  %5569 = fmul fast float %5566, %5568
  %5570 = call float @dx.op.binary.f32(i32 35, float %5569, float 0.000000e+00)  ; FMax(a,b)
  %5571 = call float @dx.op.binary.f32(i32 36, float %5555, float %5570)  ; FMin(a,b)
  %5572 = call float @dx.op.binary.f32(i32 36, float %5540, float %5571)  ; FMin(a,b)
  %5573 = fmul fast float %5572, %5364
  %5574 = fmul fast float %5572, %5365
  %5575 = fmul fast float %5572, %5366
  %5576 = fadd fast float %5573, %203
  %5577 = fadd fast float %5574, %204
  %5578 = fadd fast float %5575, %205
  %5579 = fsub fast float %5576, %5424
  %5580 = fsub fast float %5577, %5425
  %5581 = fsub fast float %5578, %5426
  br label %5589

; <label>:5582                                    ; preds = %5524
  %5583 = fmul fast float %5364, 8.096000e+03
  %5584 = fmul fast float %5365, 8.096000e+03
  %5585 = fmul fast float %5366, 8.096000e+03
  %5586 = fadd fast float %5583, %203
  %5587 = fadd fast float %5584, %204
  %5588 = fadd fast float %5585, %205
  br label %5589

; <label>:5589                                    ; preds = %5582, %5525
  %5590 = phi float [ %5364, %5582 ], [ %5579, %5525 ]
  %5591 = phi float [ %5365, %5582 ], [ %5580, %5525 ]
  %5592 = phi float [ %5366, %5582 ], [ %5581, %5525 ]
  %5593 = phi float [ %5586, %5582 ], [ %5576, %5525 ]
  %5594 = phi float [ %5587, %5582 ], [ %5577, %5525 ]
  %5595 = phi float [ %5588, %5582 ], [ %5578, %5525 ]
  %5596 = fcmp fast olt float %5443, 1.000000e+00
  br i1 %5596, label %5597, label %5628, !dx.controlflow.hints !102

; <label>:5597                                    ; preds = %5589
  %5598 = fmul fast float %5592, %5441
  %5599 = fmul fast float %5591, %5442
  %5600 = fsub fast float %5598, %5599
  %5601 = fmul fast float %5590, %5442
  %5602 = fmul fast float %5592, %5440
  %5603 = fsub fast float %5601, %5602
  %5604 = fmul fast float %5591, %5440
  %5605 = fmul fast float %5590, %5441
  %5606 = fsub fast float %5604, %5605
  %5607 = fmul fast float %5600, 2.000000e+00
  %5608 = fmul fast float %5603, 2.000000e+00
  %5609 = fmul fast float %5606, 2.000000e+00
  %5610 = fmul fast float %5607, %5443
  %5611 = fmul fast float %5608, %5443
  %5612 = fmul fast float %5609, %5443
  %5613 = fmul fast float %5609, %5441
  %5614 = fmul fast float %5608, %5442
  %5615 = fmul fast float %5607, %5442
  %5616 = fmul fast float %5609, %5440
  %5617 = fmul fast float %5608, %5440
  %5618 = fmul fast float %5607, %5441
  %5619 = fadd fast float %5613, %5590
  %5620 = fadd fast float %5619, %5610
  %5621 = fsub fast float %5620, %5614
  %5622 = fsub fast float %5591, %5616
  %5623 = fadd fast float %5622, %5611
  %5624 = fadd fast float %5623, %5615
  %5625 = fadd fast float %5612, %5592
  %5626 = fsub fast float %5625, %5618
  %5627 = fadd fast float %5626, %5617
  br label %5628

; <label>:5628                                    ; preds = %5597, %5589
  %5629 = phi float [ %5621, %5597 ], [ %5590, %5589 ]
  %5630 = phi float [ %5624, %5597 ], [ %5591, %5589 ]
  %5631 = phi float [ %5627, %5597 ], [ %5592, %5589 ]
  br i1 %5469, label %5663, label %5632

; <label>:5632                                    ; preds = %5628
  %5633 = fmul fast float %5103, 0x400187C840000000
  %5634 = fadd fast float %5633, 0xC00EFC2120000000
  %5635 = fmul fast float %5634, %5103
  %5636 = fadd fast float %5635, 0x3FE5D16340000000
  %5637 = fmul fast float %5636, %5103
  %5638 = fadd fast float %5637, 1.000000e+00
  %5639 = call float @dx.op.unary.f32(i32 7, float %5638)  ; Saturate(value)
  %5640 = fsub fast float %5593, %203
  %5641 = fsub fast float %5594, %204
  %5642 = fsub fast float %5595, %205
  %5643 = fsub fast float %5593, %5424
  %5644 = fsub fast float %5594, %5425
  %5645 = fsub fast float %5595, %5426
  %5646 = call float @dx.op.dot3.f32(i32 55, float %5640, float %5641, float %5642, float %5640, float %5641, float %5642)  ; Dot3(ax,ay,az,bx,by,bz)
  %5647 = call float @dx.op.dot3.f32(i32 55, float %5643, float %5644, float %5645, float %5643, float %5644, float %5645)  ; Dot3(ax,ay,az,bx,by,bz)
  %5648 = fadd fast float %5647, 0x3EE4F8B580000000
  %5649 = fdiv fast float %5646, %5648
  %5650 = bitcast float %5649 to i32
  %5651 = ashr i32 %5650, 1
  %5652 = add nsw i32 %5651, 532487669
  %5653 = bitcast i32 %5652 to float
  %5654 = fmul fast float %5653, %5639
  %5655 = call float @dx.op.unary.f32(i32 7, float %5654)  ; Saturate(value)
  %5656 = fmul fast float %5655, 0x4009981AE0000000
  %5657 = fsub fast float 0x40111BBD80000000, %5656
  %5658 = fmul fast float %5657, %5655
  %5659 = fadd fast float %5658, 0xC0009F6020000000
  %5660 = fmul fast float %5659, %5655
  %5661 = fadd fast float %5660, 1.000000e+00
  %5662 = call float @dx.op.unary.f32(i32 7, float %5661)  ; Saturate(value)
  br label %5666

; <label>:5663                                    ; preds = %5628
  %5664 = icmp ne i32 %5470, -1
  %5665 = zext i1 %5664 to i32
  br label %5666

; <label>:5666                                    ; preds = %5663, %5632
  %5667 = phi float [ %5103, %5663 ], [ %5662, %5632 ]
  %5668 = phi i32 [ %5665, %5663 ], [ 0, %5632 ]
  %5669 = fmul float %5667, 5.000000e+00
  %5670 = fsub float 5.000000e+00, %5669
  %5671 = icmp ne i32 %5668, 0
  %5672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5673 = extractvalue %dx.types.CBufRet.f32 %5672, 3
  %5674 = fadd fast float %5673, %5670
  %5675 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5674)  ; FMax(a,b)
  %5676 = call float @dx.op.unary.f32(i32 6, float %5629)  ; FAbs(value)
  %5677 = call float @dx.op.unary.f32(i32 6, float %5630)  ; FAbs(value)
  %5678 = fadd fast float %5677, %5676
  %5679 = call float @dx.op.unary.f32(i32 6, float %5631)  ; FAbs(value)
  %5680 = fadd fast float %5678, %5679
  %5681 = fcmp fast oeq float %5680, 0.000000e+00
  %5682 = fdiv fast float 1.000000e+00, %5680
  %5683 = select i1 %5681, float 1.000000e+00, float %5682
  %5684 = fmul fast float %5683, %5629
  %5685 = fmul fast float %5683, %5630
  %5686 = call float @dx.op.unary.f32(i32 6, float %5685)  ; FAbs(value)
  %5687 = call float @dx.op.unary.f32(i32 6, float %5684)  ; FAbs(value)
  %5688 = fsub fast float 1.000000e+00, %5686
  %5689 = fsub fast float 1.000000e+00, %5687
  %5690 = fcmp fast oge float %5684, 0.000000e+00
  %5691 = fcmp fast oge float %5685, 0.000000e+00
  %5692 = select i1 %5690, float 1.000000e+00, float -1.000000e+00
  %5693 = select i1 %5691, float 1.000000e+00, float -1.000000e+00
  %5694 = fcmp fast ole float %5631, 0.000000e+00
  %5695 = fmul fast float %5692, %5688
  %5696 = fmul fast float %5693, %5689
  %5697 = select i1 %5694, float %5695, float %5684
  %5698 = select i1 %5694, float %5696, float %5685
  %5699 = fmul fast float %5697, 5.000000e-01
  %5700 = fmul fast float %5698, 5.000000e-01
  %5701 = fadd fast float %5699, 5.000000e-01
  %5702 = fadd fast float %5700, 5.000000e-01
  %5703 = uitofp i32 %5467 to float
  %5704 = call float @dx.op.binary.f32(i32 36, float %5675, float 3.000000e+00)  ; FMin(a,b)
  %5705 = fadd fast float %5704, 2.000000e+00
  %5706 = call float @dx.op.unary.f32(i32 21, float %5705)  ; Exp(value)
  %5707 = extractvalue %dx.types.CBufRet.f32 %5672, 1
  %5708 = fmul fast float %5707, %5706
  %5709 = fmul fast float %5708, 2.000000e+00
  %5710 = fsub fast float 1.000000e+00, %5709
  %5711 = fmul fast float %5701, %5710
  %5712 = fmul fast float %5702, %5710
  %5713 = fadd fast float %5711, %5708
  %5714 = fadd fast float %5712, %5708
  %5715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %53, float %5713, float %5714, float %5703, float undef, i32 0, i32 0, i32 undef, float %5675)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5716 = extractvalue %dx.types.ResRet.f32 %5715, 0
  %5717 = extractvalue %dx.types.ResRet.f32 %5715, 1
  %5718 = extractvalue %dx.types.ResRet.f32 %5715, 2
  %5719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5720 = extractvalue %dx.types.CBufRet.f32 %5719, 3
  %5721 = fmul fast float %5720, %5437
  %5722 = call float @dx.op.binary.f32(i32 36, float %5170, float %5721)  ; FMin(a,b)
  %5723 = select i1 %5671, float %5722, float %5721
  %5724 = fmul fast float %5716, %5516
  %5725 = fmul fast float %5724, %5723
  %5726 = fmul fast float %5717, %5516
  %5727 = fmul fast float %5726, %5723
  %5728 = fmul fast float %5718, %5516
  %5729 = fmul fast float %5728, %5723
  %5730 = fadd fast float %5725, %5412
  %5731 = fadd fast float %5727, %5413
  %5732 = fadd fast float %5729, %5414
  %5733 = fsub fast float %5415, %5516
  br label %5518

; <label>:5734                                    ; preds = %5518
  br label %5735

; <label>:5735                                    ; preds = %5734, %5381
  %5736 = phi float [ %5382, %5381 ], [ %5519, %5734 ]
  %5737 = phi float [ %5383, %5381 ], [ %5520, %5734 ]
  %5738 = phi float [ %5384, %5381 ], [ %5521, %5734 ]
  %5739 = phi float [ %5385, %5381 ], [ %5522, %5734 ]
  %5740 = add i32 %5386, 1
  %5741 = icmp ugt i32 %5740, %5378
  br i1 %5741, label %5742, label %5381, !llvm.loop !103

; <label>:5742                                    ; preds = %5735
  br label %5743

; <label>:5743                                    ; preds = %5742, %5363
  %5744 = phi float [ 0.000000e+00, %5363 ], [ %5736, %5742 ]
  %5745 = phi float [ 0.000000e+00, %5363 ], [ %5737, %5742 ]
  %5746 = phi float [ 0.000000e+00, %5363 ], [ %5738, %5742 ]
  %5747 = call float @dx.op.dot3.f32(i32 55, float %5744, float %5745, float %5746, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5748 = select i1 %275, float 0.000000e+00, float %5744
  %5749 = select i1 %275, float %5747, float %5745
  %5750 = select i1 %275, float 0.000000e+00, float %5746
  %5751 = fcmp fast olt float %5289, 0.000000e+00
  %5752 = call float @dx.op.unary.f32(i32 6, float %5289)  ; FAbs(value)
  %5753 = fmul fast float %5752, %5229
  %5754 = fmul fast float %5752, %5230
  %5755 = fmul fast float %5752, %5231
  %5756 = select i1 %5751, float %5229, float %5753
  %5757 = select i1 %5751, float %5230, float %5754
  %5758 = select i1 %5751, float %5231, float %5755
  %5759 = fsub fast float 1.000000e+00, %5752
  %5760 = call float @dx.op.unary.f32(i32 7, float %5759)  ; Saturate(value)
  %5761 = fmul fast float %5760, %5748
  %5762 = fmul fast float %5760, %5749
  %5763 = fmul fast float %5760, %5750
  %5764 = fadd fast float %5756, %5761
  %5765 = fadd fast float %5757, %5762
  %5766 = fadd fast float %5758, %5763
  br label %5767

; <label>:5767                                    ; preds = %5743, %5272
  %5768 = phi float [ %5229, %5272 ], [ %5764, %5743 ]
  %5769 = phi float [ %5230, %5272 ], [ %5765, %5743 ]
  %5770 = phi float [ %5231, %5272 ], [ %5766, %5743 ]
  %5771 = fmul fast float %5278, %5225
  %5772 = fmul fast float %5278, %5226
  %5773 = fmul fast float %5278, %5227
  %5774 = call float @dx.op.dot3.f32(i32 55, float %5094, float %5095, float %5096, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5775 = fcmp fast ogt float %5774, 0x3E7FF19E20000000
  %5776 = fdiv fast float 1.000000e+00, %5774
  %5777 = select i1 %5775, float %5776, float 0.000000e+00
  %5778 = fmul fast float %5777, %5094
  %5779 = fmul fast float %5777, %5095
  %5780 = fmul fast float %5777, %5096
  %5781 = fadd fast float %5778, -1.000000e+00
  %5782 = fadd fast float %5779, -1.000000e+00
  %5783 = fadd fast float %5780, -1.000000e+00
  %5784 = fmul fast float %5781, 5.000000e-01
  %5785 = fmul fast float %5782, 5.000000e-01
  %5786 = fmul fast float %5783, 5.000000e-01
  %5787 = fadd fast float %5784, 1.000000e+00
  %5788 = fadd fast float %5785, 1.000000e+00
  %5789 = fadd fast float %5786, 1.000000e+00
  %5790 = fmul fast float %5768, %5273
  %5791 = fmul fast float %5769, %5274
  %5792 = fmul fast float %5770, %5275
  %5793 = fsub fast float 1.000000e+00, %5108
  %5794 = bitcast float %5793 to i32
  %5795 = sitofp i32 %5794 to float
  %5796 = fmul fast float %5795, 5.000000e+00
  %5797 = fadd fast float %5796, 0xC1EFBF8940000000
  %5798 = fptosi float %5797 to i32
  %5799 = bitcast i32 %5798 to float
  %5800 = fmul fast float %5799, %3900
  %5801 = fmul fast float %5225, %5800
  %5802 = fmul fast float %5801, %5278
  %5803 = fmul fast float %5802, %5787
  %5804 = fmul fast float %5226, %5800
  %5805 = fmul fast float %5804, %5278
  %5806 = fmul fast float %5805, %5788
  %5807 = fmul fast float %5227, %5800
  %5808 = fmul fast float %5807, %5278
  %5809 = fmul fast float %5808, %5789
  %5810 = fmul fast float %5771, %3896
  %5811 = fmul fast float %5772, %3896
  %5812 = fmul fast float %5773, %3896
  %5813 = fadd fast float %5790, %3892
  %5814 = fadd fast float %5813, %5803
  %5815 = fmul fast float %5814, %3896
  %5816 = fadd fast float %5791, %3893
  %5817 = fadd fast float %5816, %5806
  %5818 = fmul fast float %5817, %3896
  %5819 = fadd fast float %5792, %3894
  %5820 = fadd fast float %5819, %5809
  %5821 = fmul fast float %5820, %3896
  %5822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5823 = extractvalue %dx.types.CBufRet.f32 %5822, 3
  %5824 = fcmp fast oeq float %5823, 0.000000e+00
  br i1 %5824, label %7528, label %5825

; <label>:5825                                    ; preds = %5767
  %5826 = extractvalue %dx.types.CBufRet.f32 %5822, 0
  %5827 = extractvalue %dx.types.CBufRet.f32 %5822, 1
  %5828 = extractvalue %dx.types.CBufRet.f32 %5822, 2
  %5829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5830 = extractvalue %dx.types.CBufRet.f32 %5829, 0
  %5831 = extractvalue %dx.types.CBufRet.f32 %5829, 1
  %5832 = extractvalue %dx.types.CBufRet.f32 %5829, 2
  %5833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5834 = extractvalue %dx.types.CBufRet.f32 %5833, 0
  %5835 = extractvalue %dx.types.CBufRet.f32 %5833, 1
  %5836 = call float @dx.op.dot3.f32(i32 55, float %5830, float %5831, float %5832, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5837 = select i1 %275, float %5834, float %5830
  %5838 = select i1 %275, float %5836, float %5831
  %5839 = select i1 %275, float %5835, float %5832
  %5840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5841 = extractvalue %dx.types.CBufRet.f32 %5840, 2
  %5842 = fmul fast float %5841, %123
  %5843 = fmul fast float %5841, %124
  %5844 = fmul fast float %5841, %125
  %5845 = fadd fast float %5842, %203
  %5846 = fadd fast float %5843, %204
  %5847 = fadd fast float %5844, %205
  %5848 = fcmp fast olt float %5823, 0.000000e+00
  br i1 %5848, label %7106, label %5849

; <label>:5849                                    ; preds = %5825
  %5850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5851 = extractvalue %dx.types.CBufRet.f32 %5850, 0
  %5852 = extractvalue %dx.types.CBufRet.f32 %5850, 1
  %5853 = extractvalue %dx.types.CBufRet.f32 %5850, 2
  %5854 = extractvalue %dx.types.CBufRet.f32 %5850, 3
  %5855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5856 = extractvalue %dx.types.CBufRet.f32 %5855, 0
  %5857 = extractvalue %dx.types.CBufRet.f32 %5855, 1
  %5858 = extractvalue %dx.types.CBufRet.f32 %5855, 2
  %5859 = extractvalue %dx.types.CBufRet.f32 %5855, 3
  %5860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5861 = extractvalue %dx.types.CBufRet.f32 %5860, 0
  %5862 = extractvalue %dx.types.CBufRet.f32 %5860, 1
  %5863 = extractvalue %dx.types.CBufRet.f32 %5860, 2
  %5864 = extractvalue %dx.types.CBufRet.f32 %5860, 3
  %5865 = fmul fast float %5851, %5845
  %5866 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %5852, float %5865)  ; FMad(a,b,c)
  %5867 = call float @dx.op.tertiary.f32(i32 46, float %5847, float %5853, float %5866)  ; FMad(a,b,c)
  %5868 = fadd fast float %5867, %5854
  %5869 = fmul fast float %5856, %5845
  %5870 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %5857, float %5869)  ; FMad(a,b,c)
  %5871 = call float @dx.op.tertiary.f32(i32 46, float %5847, float %5858, float %5870)  ; FMad(a,b,c)
  %5872 = fadd fast float %5871, %5859
  %5873 = fmul fast float %5861, %5845
  %5874 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %5862, float %5873)  ; FMad(a,b,c)
  %5875 = call float @dx.op.tertiary.f32(i32 46, float %5847, float %5863, float %5874)  ; FMad(a,b,c)
  %5876 = fadd fast float %5875, %5864
  %5877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5878 = extractvalue %dx.types.CBufRet.f32 %5877, 0
  %5879 = fcmp fast une float %5878, 0.000000e+00
  %5880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.f32 %5880, 0
  %5882 = extractvalue %dx.types.CBufRet.f32 %5880, 1
  %5883 = extractvalue %dx.types.CBufRet.f32 %5880, 3
  %5884 = fmul fast float %5883, %5868
  %5885 = fmul fast float %5883, %5872
  %5886 = fadd fast float %5884, %5881
  %5887 = fadd fast float %5885, %5882
  %5888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5889 = extractvalue %dx.types.CBufRet.f32 %5888, 0
  %5890 = extractvalue %dx.types.CBufRet.f32 %5888, 1
  %5891 = extractvalue %dx.types.CBufRet.f32 %5888, 3
  %5892 = fmul fast float %5891, %5868
  %5893 = fmul fast float %5891, %5872
  %5894 = fadd fast float %5892, %5889
  %5895 = fadd fast float %5893, %5890
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 1
  %5898 = fsub fast float %5897, %5876
  %5899 = extractvalue %dx.types.CBufRet.f32 %5896, 2
  %5900 = fmul fast float %5898, %5899
  %5901 = fsub fast float 1.000000e+00, %5900
  %5902 = call float @dx.op.unary.f32(i32 7, float %5901)  ; Saturate(value)
  br i1 %5879, label %5963, label %5903

; <label>:5903                                    ; preds = %5849
  %5904 = extractvalue %dx.types.CBufRet.f32 %5888, 2
  %5905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5906 = extractvalue %dx.types.CBufRet.f32 %5905, 2
  %5907 = fadd fast float %5906, %5904
  %5908 = fcmp fast ogt float %5907, 0.000000e+00
  br i1 %5908, label %5909, label %5933

; <label>:5909                                    ; preds = %5903
  %5910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5911 = extractvalue %dx.types.CBufRet.f32 %5910, 0
  %5912 = extractvalue %dx.types.CBufRet.f32 %5910, 1
  %5913 = fsub fast float %5894, %5911
  %5914 = fsub fast float %5895, %5912
  %5915 = fcmp fast olt float %5913, 0.000000e+00
  %5916 = fcmp fast olt float %5914, 0.000000e+00
  %5917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5918 = extractvalue %dx.types.CBufRet.f32 %5917, 0
  %5919 = extractvalue %dx.types.CBufRet.f32 %5917, 1
  %5920 = extractvalue %dx.types.CBufRet.f32 %5917, 2
  %5921 = extractvalue %dx.types.CBufRet.f32 %5917, 3
  %5922 = select i1 %5915, float %5918, float %5920
  %5923 = select i1 %5916, float %5919, float %5921
  %5924 = fmul fast float %5922, %5913
  %5925 = fmul fast float %5923, %5914
  %5926 = call float @dx.op.unary.f32(i32 6, float %5924)  ; FAbs(value)
  %5927 = call float @dx.op.unary.f32(i32 6, float %5925)  ; FAbs(value)
  %5928 = extractvalue %dx.types.CBufRet.f32 %5840, 0
  %5929 = call float @dx.op.binary.f32(i32 35, float %5926, float %5927)  ; FMax(a,b)
  %5930 = fsub fast float %5928, %5929
  %5931 = call float @dx.op.unary.f32(i32 7, float %5930)  ; Saturate(value)
  %5932 = fmul fast float %5931, %5902
  br label %5933

; <label>:5933                                    ; preds = %5909, %5903
  %5934 = phi float [ %5932, %5909 ], [ 0.000000e+00, %5903 ]
  %5935 = extractvalue %dx.types.CBufRet.f32 %5880, 2
  %5936 = extractvalue %dx.types.CBufRet.f32 %5905, 1
  %5937 = fadd fast float %5936, %5935
  %5938 = fcmp fast ogt float %5937, 0.000000e+00
  br i1 %5938, label %5939, label %5963

; <label>:5939                                    ; preds = %5933
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.CBufRet.f32 %5940, 1
  %5943 = fsub fast float %5886, %5941
  %5944 = fsub fast float %5887, %5942
  %5945 = fcmp fast olt float %5943, 0.000000e+00
  %5946 = fcmp fast olt float %5944, 0.000000e+00
  %5947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5948 = extractvalue %dx.types.CBufRet.f32 %5947, 0
  %5949 = extractvalue %dx.types.CBufRet.f32 %5947, 1
  %5950 = extractvalue %dx.types.CBufRet.f32 %5947, 2
  %5951 = extractvalue %dx.types.CBufRet.f32 %5947, 3
  %5952 = select i1 %5945, float %5948, float %5950
  %5953 = select i1 %5946, float %5949, float %5951
  %5954 = fmul fast float %5952, %5943
  %5955 = fmul fast float %5953, %5944
  %5956 = call float @dx.op.unary.f32(i32 6, float %5954)  ; FAbs(value)
  %5957 = call float @dx.op.unary.f32(i32 6, float %5955)  ; FAbs(value)
  %5958 = extractvalue %dx.types.CBufRet.f32 %5840, 0
  %5959 = call float @dx.op.binary.f32(i32 35, float %5956, float %5957)  ; FMax(a,b)
  %5960 = fsub fast float %5958, %5959
  %5961 = call float @dx.op.unary.f32(i32 7, float %5960)  ; Saturate(value)
  %5962 = fmul fast float %5961, %5902
  br label %5963

; <label>:5963                                    ; preds = %5939, %5933, %5849
  %5964 = phi float [ 0.000000e+00, %5849 ], [ %5962, %5939 ], [ 0.000000e+00, %5933 ]
  %5965 = phi float [ 0.000000e+00, %5849 ], [ %5934, %5939 ], [ %5934, %5933 ]
  %5966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5967 = extractvalue %dx.types.CBufRet.f32 %5966, 1
  %5968 = call float @dx.op.unary.f32(i32 7, float %5967)  ; Saturate(value)
  %5969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5970 = extractvalue %dx.types.CBufRet.f32 %5969, 0
  %5971 = extractvalue %dx.types.CBufRet.f32 %5969, 1
  %5972 = fsub fast float %5868, %5970
  %5973 = fsub fast float %5872, %5971
  %5974 = fcmp fast olt float %5972, 0.000000e+00
  %5975 = fcmp fast olt float %5973, 0.000000e+00
  %5976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5977 = extractvalue %dx.types.CBufRet.f32 %5976, 0
  %5978 = extractvalue %dx.types.CBufRet.f32 %5976, 1
  %5979 = extractvalue %dx.types.CBufRet.f32 %5976, 2
  %5980 = extractvalue %dx.types.CBufRet.f32 %5976, 3
  %5981 = select i1 %5974, float %5977, float %5979
  %5982 = select i1 %5975, float %5978, float %5980
  %5983 = fmul fast float %5981, %5972
  %5984 = fmul fast float %5982, %5973
  %5985 = call float @dx.op.unary.f32(i32 6, float %5983)  ; FAbs(value)
  %5986 = call float @dx.op.unary.f32(i32 6, float %5984)  ; FAbs(value)
  %5987 = extractvalue %dx.types.CBufRet.f32 %5840, 0
  %5988 = call float @dx.op.binary.f32(i32 35, float %5985, float %5986)  ; FMax(a,b)
  %5989 = fsub fast float %5987, %5988
  %5990 = call float @dx.op.unary.f32(i32 7, float %5989)  ; Saturate(value)
  %5991 = call float @dx.op.binary.f32(i32 36, float %5990, float %5968)  ; FMin(a,b)
  %5992 = fmul fast float %5991, %5902
  %5993 = fsub fast float %5964, %5992
  %5994 = fsub fast float %5965, %5964
  %5995 = fsub fast float %5994, %5992
  %5996 = call float @dx.op.binary.f32(i32 35, float %5964, float %5965)  ; FMax(a,b)
  %5997 = call float @dx.op.binary.f32(i32 35, float %5992, float %5996)  ; FMax(a,b)
  %5998 = fcmp fast olt float %5997, 1.000000e+00
  br i1 %5998, label %5999, label %6397, !dx.controlflow.hints !105

; <label>:5999                                    ; preds = %5963
  %6000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.f32 %6000, 0
  %6002 = fcmp fast une float %6001, 0.000000e+00
  br i1 %6002, label %6003, label %6397, !dx.controlflow.hints !106

; <label>:6003                                    ; preds = %5999
  %6004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6005 = extractvalue %dx.types.CBufRet.f32 %6004, 0
  %6006 = extractvalue %dx.types.CBufRet.f32 %6004, 1
  %6007 = extractvalue %dx.types.CBufRet.f32 %6004, 2
  %6008 = extractvalue %dx.types.CBufRet.f32 %6004, 3
  %6009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6010 = extractvalue %dx.types.CBufRet.f32 %6009, 0
  %6011 = extractvalue %dx.types.CBufRet.f32 %6009, 1
  %6012 = extractvalue %dx.types.CBufRet.f32 %6009, 2
  %6013 = extractvalue %dx.types.CBufRet.f32 %6009, 3
  %6014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6015 = extractvalue %dx.types.CBufRet.f32 %6014, 0
  %6016 = extractvalue %dx.types.CBufRet.f32 %6014, 1
  %6017 = extractvalue %dx.types.CBufRet.f32 %6014, 2
  %6018 = extractvalue %dx.types.CBufRet.f32 %6014, 3
  %6019 = fmul fast float %6005, %5845
  %6020 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %6006, float %6019)  ; FMad(a,b,c)
  %6021 = call float @dx.op.tertiary.f32(i32 46, float %5847, float %6007, float %6020)  ; FMad(a,b,c)
  %6022 = fadd fast float %6021, %6008
  %6023 = fmul fast float %6010, %5845
  %6024 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %6011, float %6023)  ; FMad(a,b,c)
  %6025 = call float @dx.op.tertiary.f32(i32 46, float %5847, float %6012, float %6024)  ; FMad(a,b,c)
  %6026 = fadd fast float %6025, %6013
  %6027 = fmul fast float %6015, %5845
  %6028 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %6016, float %6027)  ; FMad(a,b,c)
  %6029 = call float @dx.op.tertiary.f32(i32 46, float %5847, float %6017, float %6028)  ; FMad(a,b,c)
  %6030 = fadd fast float %6029, %6018
  %6031 = fcmp fast oge float %6022, 1.000000e+00
  %6032 = fcmp fast oge float %6026, 1.000000e+00
  %6033 = or i1 %6031, %6032
  %6034 = fcmp fast olt float %6022, 0.000000e+00
  %6035 = fcmp fast olt float %6026, 0.000000e+00
  %6036 = or i1 %6034, %6035
  %6037 = or i1 %6033, %6036
  br i1 %6037, label %6397, label %6038, !dx.controlflow.hints !107

; <label>:6038                                    ; preds = %6003
  %6039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6040 = extractvalue %dx.types.CBufRet.f32 %6039, 0
  %6041 = extractvalue %dx.types.CBufRet.f32 %6039, 1
  %6042 = extractvalue %dx.types.CBufRet.f32 %6039, 2
  %6043 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6044 = extractvalue %dx.types.CBufRet.i32 %6043, 2
  %6045 = uitofp i32 %6044 to float
  %6046 = extractvalue %dx.types.CBufRet.i32 %6043, 3
  %6047 = uitofp i32 %6046 to float
  %6048 = extractvalue %dx.types.CBufRet.f32 %6039, 3
  %6049 = fmul fast float %6048, 2.000000e+00
  %6050 = fsub fast float %6022, %6040
  %6051 = fsub fast float %6026, %6041
  %6052 = fmul fast float %6049, %6050
  %6053 = fmul fast float %6049, %6051
  %6054 = fdiv fast float 1.000000e+00, %5828
  %6055 = fmul fast float %6053, %6054
  %6056 = call float @dx.op.unary.f32(i32 6, float %6055)  ; FAbs(value)
  %6057 = fmul fast float %6042, %5847
  %6058 = fmul fast float %6057, %6049
  %6059 = call float @dx.op.unary.f32(i32 6, float %6058)  ; FAbs(value)
  %6060 = call float @dx.op.unary.f32(i32 6, float %6052)  ; FAbs(value)
  %6061 = call float @dx.op.binary.f32(i32 35, float %6059, float %6056)  ; FMax(a,b)
  %6062 = call float @dx.op.binary.f32(i32 35, float %6060, float %6061)  ; FMax(a,b)
  %6063 = fmul fast float %6062, 2.000000e+00
  %6064 = call float @dx.op.unary.f32(i32 23, float %6063)  ; Log(value)
  %6065 = call float @dx.op.binary.f32(i32 35, float %6064, float %6045)  ; FMax(a,b)
  %6066 = call float @dx.op.unary.f32(i32 22, float %6065)  ; Frc(value)
  %6067 = fadd fast float %6066, 0xBFEA666660000000
  %6068 = fmul fast float %6067, 8.000000e+00
  %6069 = call float @dx.op.unary.f32(i32 7, float %6068)  ; Saturate(value)
  %6070 = call float @dx.op.unary.f32(i32 27, float %6065)  ; Round_ni(value)
  %6071 = fadd fast float %6070, %6069
  %6072 = call float @dx.op.binary.f32(i32 36, float %6071, float %6047)  ; FMin(a,b)
  %6073 = call float @dx.op.unary.f32(i32 27, float %6072)  ; Round_ni(value)
  %6074 = fsub fast float -0.000000e+00, %6073
  %6075 = call float @dx.op.unary.f32(i32 21, float %6074)  ; Exp(value)
  %6076 = fmul fast float %6075, %6049
  %6077 = fmul fast float %6076, %6022
  %6078 = fmul fast float %6076, %6026
  %6079 = fmul fast float %6077, 2.500000e-01
  %6080 = fmul fast float %6078, 2.500000e-01
  %6081 = fadd fast float %6079, 5.000000e-01
  %6082 = fadd fast float %6080, 5.000000e-01
  %6083 = fsub fast float %6047, %6045
  %6084 = fptoui float %6083 to i32
  %6085 = add i32 %6084, 320
  %6086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %6085)  ; CBufferLoadLegacy(handle,regIndex)
  %6087 = extractvalue %dx.types.CBufRet.f32 %6086, 0
  %6088 = extractvalue %dx.types.CBufRet.f32 %6086, 1
  %6089 = fcmp fast une float %6072, %6047
  %6090 = fsub fast float %6022, %6087
  %6091 = fsub fast float %6026, %6088
  %6092 = call float @dx.op.unary.f32(i32 6, float %6090)  ; FAbs(value)
  %6093 = call float @dx.op.unary.f32(i32 6, float %6091)  ; FAbs(value)
  %6094 = fmul fast float %6092, %6076
  %6095 = fmul fast float %6093, %6076
  %6096 = fcmp fast olt float %6094, 1.000000e+00
  %6097 = fcmp fast olt float %6095, 1.000000e+00
  %6098 = and i1 %6096, %6097
  %6099 = or i1 %6089, %6098
  br i1 %6099, label %6100, label %6397, !dx.controlflow.hints !108

; <label>:6100                                    ; preds = %6038
  %6101 = fmul fast float %6078, 5.000000e-01
  %6102 = fmul fast float %6077, 5.000000e-01
  %6103 = fadd fast float %6101, 5.000000e-01
  %6104 = fadd fast float %6102, 5.000000e-01
  %6105 = sitofp i32 %6044 to float
  %6106 = fsub fast float %6072, %6105
  %6107 = call float @dx.op.unary.f32(i32 27, float %6106)  ; Round_ni(value)
  %6108 = call float @dx.op.unary.f32(i32 22, float %6072)  ; Frc(value)
  %6109 = call float @dx.op.unary.f32(i32 22, float %6104)  ; Frc(value)
  %6110 = call float @dx.op.unary.f32(i32 22, float %6103)  ; Frc(value)
  %6111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6109, float %6110, float %6107, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6112 = extractvalue %dx.types.ResRet.f32 %6111, 0
  %6113 = extractvalue %dx.types.ResRet.f32 %6111, 1
  %6114 = extractvalue %dx.types.ResRet.f32 %6111, 2
  %6115 = extractvalue %dx.types.ResRet.f32 %6111, 3
  %6116 = fcmp fast ogt float %6108, 0.000000e+00
  br i1 %6116, label %6117, label %6138, !dx.controlflow.hints !109

; <label>:6117                                    ; preds = %6100
  %6118 = fadd fast float %6107, 1.000000e+00
  %6119 = call float @dx.op.unary.f32(i32 22, float %6081)  ; Frc(value)
  %6120 = call float @dx.op.unary.f32(i32 22, float %6082)  ; Frc(value)
  %6121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6119, float %6120, float %6118, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6122 = extractvalue %dx.types.ResRet.f32 %6121, 0
  %6123 = extractvalue %dx.types.ResRet.f32 %6121, 1
  %6124 = extractvalue %dx.types.ResRet.f32 %6121, 2
  %6125 = extractvalue %dx.types.ResRet.f32 %6121, 3
  %6126 = fsub fast float %6122, %6112
  %6127 = fsub fast float %6123, %6113
  %6128 = fsub fast float %6124, %6114
  %6129 = fsub fast float %6125, %6115
  %6130 = fmul fast float %6126, %6108
  %6131 = fmul fast float %6127, %6108
  %6132 = fmul fast float %6128, %6108
  %6133 = fmul fast float %6129, %6108
  %6134 = fadd fast float %6130, %6112
  %6135 = fadd fast float %6131, %6113
  %6136 = fadd fast float %6132, %6114
  %6137 = fadd fast float %6133, %6115
  br label %6138

; <label>:6138                                    ; preds = %6117, %6100
  %6139 = phi float [ %6134, %6117 ], [ %6112, %6100 ]
  %6140 = phi float [ %6135, %6117 ], [ %6113, %6100 ]
  %6141 = phi float [ %6136, %6117 ], [ %6114, %6100 ]
  %6142 = phi float [ %6137, %6117 ], [ %6115, %6100 ]
  %6143 = fadd fast float %6139, -5.000000e-01
  %6144 = fadd fast float %6141, -5.000000e-01
  %6145 = fmul fast float %6143, 0xBFD5555560000000
  %6146 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6144, float %6145)  ; FMad(a,b,c)
  %6147 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6140, float 0.000000e+00)  ; FMad(a,b,c)
  %6148 = fadd fast float %6147, %6142
  %6149 = fmul fast float %6143, -7.500000e-01
  %6150 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6144, float %6149)  ; FMad(a,b,c)
  %6151 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6140, float 0.000000e+00)  ; FMad(a,b,c)
  %6152 = fadd fast float %6151, %6142
  %6153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6154 = extractvalue %dx.types.CBufRet.f32 %6153, 0
  %6155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6156 = extractvalue %dx.types.CBufRet.f32 %6155, 0
  %6157 = extractvalue %dx.types.CBufRet.f32 %6155, 1
  %6158 = extractvalue %dx.types.CBufRet.f32 %6155, 2
  %6159 = extractvalue %dx.types.CBufRet.f32 %6155, 3
  %6160 = fsub fast float %6156, %6146
  %6161 = fsub fast float %6157, %6148
  %6162 = fsub fast float %6158, %6150
  %6163 = fsub fast float %6159, %6152
  %6164 = fmul fast float %6160, %6154
  %6165 = fmul fast float %6161, %6154
  %6166 = fmul fast float %6162, %6154
  %6167 = fmul fast float %6163, %6154
  %6168 = fadd fast float %6164, %6146
  %6169 = fadd fast float %6165, %6148
  %6170 = fadd fast float %6166, %6150
  %6171 = fadd fast float %6167, %6152
  %6172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6173 = extractvalue %dx.types.ResRet.i32 %6172, 0
  %6174 = and i32 %6173, 536870911
  %6175 = uitofp i32 %6174 to float
  %6176 = fmul fast float %6175, %6022
  %6177 = fmul fast float %6175, %6026
  %6178 = fptoui float %6176 to i32
  %6179 = fptoui float %6177 to i32
  %6180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6181 = extractvalue %dx.types.ResRet.i32 %6180, 0
  %6182 = and i32 %6181, 31
  %6183 = lshr i32 %6178, %6182
  %6184 = lshr i32 %6179, %6182
  %6185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6186 = extractvalue %dx.types.ResRet.i32 %6185, 0
  %6187 = and i32 %6186, 31
  %6188 = shl i32 1, %6187
  %6189 = call i32 @dx.op.binary.i32(i32 40, i32 %6188, i32 4)  ; UMin(a,b)
  %6190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6191 = extractvalue %dx.types.ResRet.i32 %6190, 0
  %6192 = extractvalue %dx.types.ResRet.i32 %6190, 1
  %6193 = icmp eq i32 %6189, 0
  br i1 %6193, label %6235, label %6194

; <label>:6194                                    ; preds = %6138
  br label %6195

; <label>:6195                                    ; preds = %6223, %6194
  %6196 = phi i32 [ %6226, %6223 ], [ 0, %6194 ]
  %6197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6198 = extractvalue %dx.types.ResRet.i32 %6197, 0
  %6199 = lshr i32 %6198, 16
  %6200 = and i32 %6199, 31
  %6201 = shl i32 %6184, %6200
  %6202 = add i32 %6201, %6183
  %6203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6204 = extractvalue %dx.types.ResRet.i32 %6203, 0
  %6205 = and i32 %6204, 31
  %6206 = shl i32 %6202, %6205
  %6207 = add i32 %6206, %6196
  %6208 = shl i32 %6207, 2
  %6209 = add i32 %6208, 32
  %6210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6209, i32 undef)  ; BufferLoad(srv,index,wot)
  %6211 = extractvalue %dx.types.ResRet.i32 %6210, 0
  %6212 = icmp slt i32 %6211, 0
  %6213 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6196
  %6214 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6196
  %6215 = bitcast float* %6213 to i32*
  %6216 = bitcast float* %6214 to i32*
  br i1 %6212, label %6217, label %6223

; <label>:6217                                    ; preds = %6195
  %6218 = and i32 %6211, 1073741823
  %6219 = add nuw nsw i32 %6218, 20
  %6220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6219, i32 undef)  ; BufferLoad(srv,index,wot)
  %6221 = extractvalue %dx.types.ResRet.i32 %6220, 0
  %6222 = extractvalue %dx.types.ResRet.i32 %6220, 1
  br label %6223

; <label>:6223                                    ; preds = %6217, %6195
  %6224 = phi i32 [ %6221, %6217 ], [ %6191, %6195 ]
  %6225 = phi i32 [ %6222, %6217 ], [ %6192, %6195 ]
  store i32 %6224, i32* %6215, align 4
  store i32 %6225, i32* %6216, align 4
  %6226 = add nuw i32 %6196, 1
  %6227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6228 = extractvalue %dx.types.CBufRet.i32 %6227, 2
  %6229 = icmp eq i32 %6228, 0
  %6230 = icmp ugt i32 %6211, -1073741825
  %6231 = and i1 %6230, %6229
  %6232 = icmp ult i32 %6226, %6189
  %6233 = and i1 %6231, %6232
  br i1 %6233, label %6195, label %6234

; <label>:6234                                    ; preds = %6223
  br label %6235

; <label>:6235                                    ; preds = %6234, %6138
  %6236 = phi i32 [ 0, %6138 ], [ %6226, %6234 ]
  %6237 = extractvalue %dx.types.CBufRet.f32 %6000, 2
  %6238 = fptoui float %6237 to i32
  %6239 = icmp eq i32 %6238, 0
  br i1 %6239, label %6291, label %6240

; <label>:6240                                    ; preds = %6235
  br label %6241

; <label>:6241                                    ; preds = %6286, %6240
  %6242 = phi i32 [ %6287, %6286 ], [ %6236, %6240 ]
  %6243 = phi i32 [ %6288, %6286 ], [ 0, %6240 ]
  %6244 = lshr i32 %6243, 2
  %6245 = and i32 %6243, 3
  %6246 = add nuw nsw i32 %6244, 83
  %6247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 %6246)  ; CBufferLoadLegacy(handle,regIndex)
  %6248 = extractvalue %dx.types.CBufRet.i32 %6247, 0
  %6249 = extractvalue %dx.types.CBufRet.i32 %6247, 1
  %6250 = extractvalue %dx.types.CBufRet.i32 %6247, 2
  %6251 = extractvalue %dx.types.CBufRet.i32 %6247, 3
  %6252 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 0
  store i32 %6248, i32* %6252, align 4
  %6253 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 1
  store i32 %6249, i32* %6253, align 4
  %6254 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 2
  store i32 %6250, i32* %6254, align 4
  %6255 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 3
  store i32 %6251, i32* %6255, align 4
  %6256 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 %6245
  %6257 = load i32, i32* %6256, align 4, !tbaa !110, !noalias !114
  %6258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6259 = extractvalue %dx.types.ResRet.i32 %6258, 0
  %6260 = lshr i32 %6259, 16
  %6261 = and i32 %6260, 31
  %6262 = shl i32 %6184, %6261
  %6263 = add i32 %6262, %6183
  %6264 = shl i32 %6263, 2
  %6265 = add i32 %6264, %6257
  %6266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6265, i32 undef)  ; BufferLoad(srv,index,wot)
  %6267 = extractvalue %dx.types.ResRet.i32 %6266, 0
  %6268 = icmp eq i32 %6267, 0
  br i1 %6268, label %6286, label %6269

; <label>:6269                                    ; preds = %6241
  %6270 = icmp slt i32 %6267, 0
  %6271 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6242
  %6272 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6242
  %6273 = bitcast float* %6271 to i32*
  %6274 = bitcast float* %6272 to i32*
  br i1 %6270, label %6275, label %6282

; <label>:6275                                    ; preds = %6269
  %6276 = and i32 %6267, 1073741823
  %6277 = add i32 %6257, 20
  %6278 = add i32 %6277, %6276
  %6279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6278, i32 undef)  ; BufferLoad(srv,index,wot)
  %6280 = extractvalue %dx.types.ResRet.i32 %6279, 0
  %6281 = extractvalue %dx.types.ResRet.i32 %6279, 1
  br label %6282

; <label>:6282                                    ; preds = %6275, %6269
  %6283 = phi i32 [ %6280, %6275 ], [ %6191, %6269 ]
  %6284 = phi i32 [ %6281, %6275 ], [ %6192, %6269 ]
  store i32 %6283, i32* %6273, align 4
  store i32 %6284, i32* %6274, align 4
  %6285 = add i32 %6242, 1
  br label %6286

; <label>:6286                                    ; preds = %6282, %6241
  %6287 = phi i32 [ %6242, %6241 ], [ %6285, %6282 ]
  %6288 = add nuw i32 %6243, 1
  %6289 = icmp eq i32 %6288, %6238
  br i1 %6289, label %6290, label %6241

; <label>:6290                                    ; preds = %6286
  br label %6291

; <label>:6291                                    ; preds = %6290, %6235
  %6292 = phi i32 [ %6236, %6235 ], [ %6287, %6290 ]
  %6293 = icmp eq i32 %6292, 1
  %6294 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 0
  %6295 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 0
  br i1 %6293, label %6296, label %6299

; <label>:6296                                    ; preds = %6291
  %6297 = load float, float* %6294, align 4
  %6298 = load float, float* %6295, align 4
  br label %6326

; <label>:6299                                    ; preds = %6291
  %6300 = load float, float* %6294, align 4
  %6301 = load float, float* %6295, align 4
  %6302 = fdiv fast float 1.000000e+00, %6301
  %6303 = fsub fast float %6300, %6302
  %6304 = icmp ugt i32 %6292, 1
  br i1 %6304, label %6305, label %6321

; <label>:6305                                    ; preds = %6299
  br label %6306

; <label>:6306                                    ; preds = %6306, %6305
  %6307 = phi float [ %6316, %6306 ], [ %6303, %6305 ]
  %6308 = phi float [ %6317, %6306 ], [ %6300, %6305 ]
  %6309 = phi i32 [ %6318, %6306 ], [ 1, %6305 ]
  %6310 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6309
  %6311 = load float, float* %6310, align 4
  %6312 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6309
  %6313 = load float, float* %6312, align 4
  %6314 = fdiv fast float 1.000000e+00, %6313
  %6315 = fsub fast float %6311, %6314
  %6316 = call float @dx.op.binary.f32(i32 36, float %6307, float %6315)  ; FMin(a,b)
  %6317 = call float @dx.op.binary.f32(i32 35, float %6308, float %6311)  ; FMax(a,b)
  %6318 = add nuw i32 %6309, 1
  %6319 = icmp eq i32 %6318, %6292
  br i1 %6319, label %6320, label %6306

; <label>:6320                                    ; preds = %6306
  br label %6321

; <label>:6321                                    ; preds = %6320, %6299
  %6322 = phi float [ %6303, %6299 ], [ %6316, %6320 ]
  %6323 = phi float [ %6300, %6299 ], [ %6317, %6320 ]
  %6324 = fsub fast float %6323, %6322
  %6325 = fdiv fast float 1.000000e+00, %6324
  br label %6326

; <label>:6326                                    ; preds = %6321, %6296
  %6327 = phi float [ %6297, %6296 ], [ %6323, %6321 ]
  %6328 = phi float [ %6298, %6296 ], [ %6325, %6321 ]
  %6329 = fadd fast float %6030, %6327
  %6330 = fmul fast float %6329, %6328
  %6331 = call float @dx.op.unary.f32(i32 7, float %6330)  ; Saturate(value)
  %6332 = fmul fast float %6331, 2.000000e+00
  %6333 = fsub fast float 1.000000e+00, %6332
  %6334 = fmul fast float %6168, %6168
  %6335 = fsub fast float %6169, %6334
  %6336 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6335)  ; FMax(a,b)
  %6337 = fdiv fast float 1.000000e+00, %6336
  %6338 = fmul fast float %6169, %6168
  %6339 = fsub fast float %6170, %6338
  %6340 = fsub fast float %6333, %6168
  %6341 = fmul fast float %6333, %6333
  %6342 = fsub fast float %6341, %6169
  %6343 = fmul fast float %6337, %6339
  %6344 = fmul fast float %6343, %6340
  %6345 = fsub fast float %6342, %6344
  %6346 = fmul fast float %6169, %6169
  %6347 = fsub fast float %6171, %6346
  %6348 = fmul fast float %6339, %6339
  %6349 = fmul fast float %6348, %6337
  %6350 = fsub fast float %6347, %6349
  %6351 = fdiv fast float %6345, %6350
  %6352 = fmul fast float %6351, %6339
  %6353 = fsub fast float %6340, %6352
  %6354 = fmul fast float %6353, %6337
  %6355 = fmul fast float %6354, %6168
  %6356 = fsub fast float 1.000000e+00, %6355
  %6357 = fmul fast float %6351, %6169
  %6358 = fsub fast float %6356, %6357
  %6359 = fmul fast float %6354, %6354
  %6360 = fmul fast float %6351, 4.000000e+00
  %6361 = fmul fast float %6360, %6358
  %6362 = fsub fast float %6359, %6361
  %6363 = call float @dx.op.unary.f32(i32 24, float %6362)  ; Sqrt(value)
  %6364 = fcmp fast oge float %6354, 0.000000e+00
  %6365 = fsub fast float -0.000000e+00, %6363
  %6366 = select i1 %6364, float %6365, float %6363
  %6367 = fsub fast float %6366, %6354
  %6368 = fdiv fast float %6367, %6351
  %6369 = fdiv fast float %6358, %6367
  %6370 = fmul fast float %6368, 5.000000e-01
  %6371 = fmul fast float %6369, 2.000000e+00
  %6372 = select i1 %6364, float %6370, float %6371
  %6373 = select i1 %6364, float %6371, float %6370
  %6374 = call float @dx.op.binary.f32(i32 35, float %6372, float %6373)  ; FMax(a,b)
  %6375 = call float @dx.op.binary.f32(i32 36, float %6372, float %6373)  ; FMin(a,b)
  %6376 = fcmp fast ogt float %6333, %6374
  %6377 = fsub fast float %6333, %6375
  %6378 = fsub fast float %6333, %6374
  %6379 = fsub fast float %6374, %6375
  %6380 = select i1 %6376, float %6378, float %6379
  %6381 = fmul float %6377, %6380
  %6382 = select i1 %6376, float %6375, float %6333
  %6383 = fcmp fast ogt float %6333, %6375
  %6384 = fmul fast float %6382, %6374
  %6385 = fadd fast float %6382, %6374
  %6386 = fmul fast float %6385, %6168
  %6387 = fadd fast float %6384, %6169
  %6388 = fsub fast float %6387, %6386
  %6389 = fdiv fast float %6388, %6381
  %6390 = select i1 %6383, float %6389, float 0.000000e+00
  %6391 = fsub fast float 1.000000e+00, %6390
  %6392 = select i1 %6376, float %6391, float %6390
  %6393 = call float @dx.op.unary.f32(i32 7, float %6392)  ; Saturate(value)
  %6394 = extractvalue %dx.types.CBufRet.f32 %6153, 3
  %6395 = fmul fast float %6394, %6393
  %6396 = fsub fast float 1.000000e+00, %6395
  br label %6397

; <label>:6397                                    ; preds = %6326, %6038, %6003, %5999, %5963
  %6398 = phi float [ 1.000000e+00, %5963 ], [ %6396, %6326 ], [ 1.000000e+00, %6003 ], [ 1.000000e+00, %6038 ], [ 1.000000e+00, %5999 ]
  %6399 = fcmp fast ogt float %5995, 0.000000e+00
  br i1 %6399, label %6400, label %6564, !dx.controlflow.hints !123

; <label>:6400                                    ; preds = %6397
  %6401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6402 = extractvalue %dx.types.CBufRet.f32 %6401, 2
  %6403 = fadd fast float %6402, %5876
  %6404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6405 = extractvalue %dx.types.CBufRet.f32 %6404, 2
  %6406 = extractvalue %dx.types.CBufRet.f32 %6404, 3
  %6407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6408 = extractvalue %dx.types.CBufRet.f32 %6407, 2
  %6409 = call float @dx.op.binary.f32(i32 35, float %6403, float 0.000000e+00)  ; FMax(a,b)
  %6410 = fadd fast float %6409, 0x3F10000000000000
  %6411 = fcmp fast oeq float %6408, 0.000000e+00
  br i1 %6411, label %6412, label %6479

; <label>:6412                                    ; preds = %6400
  %6413 = extractvalue %dx.types.CBufRet.f32 %6404, 1
  %6414 = extractvalue %dx.types.CBufRet.f32 %6404, 0
  %6415 = fmul fast float %6414, %5894
  %6416 = fmul fast float %6413, %5895
  %6417 = fadd fast float %6415, 5.000000e-01
  %6418 = call float @dx.op.unary.f32(i32 27, float %6417)  ; Round_ni(value)
  %6419 = fadd fast float %6416, 5.000000e-01
  %6420 = call float @dx.op.unary.f32(i32 27, float %6419)  ; Round_ni(value)
  %6421 = fsub fast float %6417, %6418
  %6422 = fsub fast float %6419, %6420
  %6423 = fadd fast float %6418, -5.000000e-01
  %6424 = fadd fast float %6420, -5.000000e-01
  %6425 = fmul fast float %6421, 2.000000e+00
  %6426 = fsub fast float 3.000000e+00, %6425
  %6427 = fadd fast float %6425, 1.000000e+00
  %6428 = fsub fast float 2.000000e+00, %6421
  %6429 = bitcast float %6426 to i32
  %6430 = sub nsw i32 2129859010, %6429
  %6431 = bitcast i32 %6430 to float
  %6432 = fmul fast float %6431, %6428
  %6433 = fadd fast float %6432, -1.000000e+00
  %6434 = bitcast float %6427 to i32
  %6435 = sub nsw i32 2129859010, %6434
  %6436 = bitcast i32 %6435 to float
  %6437 = fmul fast float %6436, %6421
  %6438 = fadd fast float %6437, 1.000000e+00
  %6439 = fmul fast float %6422, 2.000000e+00
  %6440 = fsub fast float 3.000000e+00, %6439
  %6441 = fadd fast float %6439, 1.000000e+00
  %6442 = fsub fast float 2.000000e+00, %6422
  %6443 = bitcast float %6440 to i32
  %6444 = sub nsw i32 2129859010, %6443
  %6445 = bitcast i32 %6444 to float
  %6446 = fmul fast float %6445, %6442
  %6447 = fadd fast float %6446, -1.000000e+00
  %6448 = bitcast float %6441 to i32
  %6449 = sub nsw i32 2129859010, %6448
  %6450 = bitcast i32 %6449 to float
  %6451 = fmul fast float %6450, %6422
  %6452 = fadd fast float %6451, 1.000000e+00
  %6453 = fadd fast float %6433, %6423
  %6454 = fmul fast float %6453, %6405
  %6455 = fadd fast float %6447, %6424
  %6456 = fmul fast float %6455, %6406
  %6457 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6454, float %6456, float undef, float undef, i32 0, i32 0, i32 undef, float %6410)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6458 = extractvalue %dx.types.ResRet.f32 %6457, 0
  %6459 = fmul fast float %6458, %6426
  %6460 = fadd fast float %6438, %6423
  %6461 = fmul fast float %6460, %6405
  %6462 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6461, float %6456, float undef, float undef, i32 0, i32 0, i32 undef, float %6410)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6463 = extractvalue %dx.types.ResRet.f32 %6462, 0
  %6464 = fmul fast float %6463, %6427
  %6465 = fadd fast float %6452, %6424
  %6466 = fmul fast float %6465, %6406
  %6467 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6454, float %6466, float undef, float undef, i32 0, i32 0, i32 undef, float %6410)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6468 = extractvalue %dx.types.ResRet.f32 %6467, 0
  %6469 = fmul fast float %6468, %6426
  %6470 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6461, float %6466, float undef, float undef, i32 0, i32 0, i32 undef, float %6410)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6471 = extractvalue %dx.types.ResRet.f32 %6470, 0
  %6472 = fmul fast float %6471, %6427
  %6473 = fadd fast float %6472, %6469
  %6474 = fmul fast float %6473, %6441
  %6475 = fadd fast float %6464, %6459
  %6476 = fmul fast float %6475, %6440
  %6477 = fadd fast float %6476, %6474
  %6478 = fmul fast float %6477, 6.250000e-02
  br label %6564

; <label>:6479                                    ; preds = %6400
  %6480 = fmul fast float %286, 0x401921FB60000000
  %6481 = call float @dx.op.unary.f32(i32 13, float %6480)  ; Sin(value)
  %6482 = call float @dx.op.unary.f32(i32 12, float %6480)  ; Cos(value)
  %6483 = fsub fast float -0.000000e+00, %6481
  br label %6484

; <label>:6484                                    ; preds = %6533, %6479
  %6485 = phi float [ 0.000000e+00, %6479 ], [ %6528, %6533 ]
  %6486 = phi float [ 0.000000e+00, %6479 ], [ %6530, %6533 ]
  %6487 = phi i32 [ 0, %6479 ], [ %6534, %6533 ]
  %6488 = mul i32 %6487, 2
  %6489 = add i32 0, %6488
  %6490 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6489
  %6491 = load float, float* %6490, align 4
  %6492 = mul i32 %6487, 2
  %6493 = add i32 1, %6492
  %6494 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6493
  %6495 = load float, float* %6494, align 4
  %6496 = fmul fast float %6491, %6482
  %6497 = call float @dx.op.tertiary.f32(i32 46, float %6495, float %6483, float %6496)  ; FMad(a,b,c)
  %6498 = fmul fast float %6491, %6481
  %6499 = call float @dx.op.tertiary.f32(i32 46, float %6495, float %6482, float %6498)  ; FMad(a,b,c)
  %6500 = fmul fast float %6497, %6408
  %6501 = fmul fast float %6499, %6408
  %6502 = fadd fast float %6500, %5894
  %6503 = fadd fast float %6501, %5895
  %6504 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %56, float %6502, float %6503, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6505 = extractvalue %dx.types.ResRet.f32 %6504, 0
  %6506 = extractvalue %dx.types.ResRet.f32 %6504, 1
  %6507 = extractvalue %dx.types.ResRet.f32 %6504, 2
  %6508 = extractvalue %dx.types.ResRet.f32 %6504, 3
  %6509 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 0
  store float %6505, float* %6509, align 4
  %6510 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 1
  store float %6506, float* %6510, align 4
  %6511 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 2
  store float %6507, float* %6511, align 4
  %6512 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 3
  store float %6508, float* %6512, align 4
  %6513 = fsub fast float %6505, %6410
  %6514 = fcmp fast olt float %6513, 0.000000e+00
  %6515 = select i1 %6514, float 0.000000e+00, float 1.000000e+00
  %6516 = fadd fast float %6515, %6485
  %6517 = fmul fast float %6515, %6513
  %6518 = fadd fast float %6517, %6486
  br label %6519

; <label>:6519                                    ; preds = %6519, %6484
  %6520 = phi i32 [ 1, %6484 ], [ %6531, %6519 ]
  %6521 = phi float [ %6518, %6484 ], [ %6530, %6519 ]
  %6522 = phi float [ %6516, %6484 ], [ %6528, %6519 ]
  %6523 = getelementptr [4 x float], [4 x float]* %109, i32 0, i32 %6520
  %6524 = load float, float* %6523, align 4, !tbaa !124, !noalias !114
  %6525 = fsub fast float %6524, %6410
  %6526 = fcmp fast olt float %6525, 0.000000e+00
  %6527 = select i1 %6526, float 0.000000e+00, float 1.000000e+00
  %6528 = fadd fast float %6527, %6522
  %6529 = fmul fast float %6527, %6525
  %6530 = fadd fast float %6529, %6521
  %6531 = add nuw nsw i32 %6520, 1
  %6532 = icmp eq i32 %6531, 4
  br i1 %6532, label %6533, label %6519, !llvm.loop !126

; <label>:6533                                    ; preds = %6519
  %6534 = add nuw nsw i32 %6487, 1
  %6535 = icmp eq i32 %6534, 8
  br i1 %6535, label %6536, label %6484, !llvm.loop !127

; <label>:6536                                    ; preds = %6533
  %6537 = fdiv fast float 1.000000e+00, %6528
  %6538 = fmul fast float %6537, %6530
  %6539 = fdiv fast float 1.000000e+00, %6410
  %6540 = fmul fast float %6538, %6539
  %6541 = call float @dx.op.unary.f32(i32 7, float %6540)  ; Saturate(value)
  %6542 = call float @dx.op.binary.f32(i32 35, float %6541, float 0.000000e+00)  ; FMax(a,b)
  %6543 = fmul fast float %6528, 3.125000e-02
  %6544 = call float @dx.op.unary.f32(i32 7, float %6543)  ; Saturate(value)
  %6545 = fmul fast float %6544, 2.000000e+00
  %6546 = fadd fast float %6545, -1.000000e+00
  %6547 = fcmp fast ogt float %6546, 0.000000e+00
  %6548 = fcmp fast olt float %6546, 0.000000e+00
  %6549 = zext i1 %6547 to i32
  %6550 = zext i1 %6548 to i32
  %6551 = sub nsw i32 %6549, %6550
  %6552 = sitofp i32 %6551 to float
  %6553 = fmul fast float %6552, %6546
  %6554 = fsub fast float 1.000000e+00, %6553
  %6555 = fmul fast float %6554, %6554
  %6556 = fmul fast float %6555, %6554
  %6557 = fsub fast float %6554, %6556
  %6558 = fmul fast float %6557, %6542
  %6559 = fsub fast float 1.000000e+00, %6556
  %6560 = fsub fast float %6559, %6558
  %6561 = fmul fast float %6552, 5.000000e-01
  %6562 = fmul fast float %6561, %6560
  %6563 = fsub fast float 5.000000e-01, %6562
  br label %6564

; <label>:6564                                    ; preds = %6536, %6412, %6397
  %6565 = phi float [ 1.000000e+00, %6397 ], [ %6478, %6412 ], [ %6563, %6536 ]
  %6566 = fcmp fast ogt float %5993, 0.000000e+00
  br i1 %6566, label %6567, label %6731, !dx.controlflow.hints !128

; <label>:6567                                    ; preds = %6564
  %6568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6569 = extractvalue %dx.types.CBufRet.f32 %6568, 1
  %6570 = fadd fast float %6569, %5876
  %6571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6572 = extractvalue %dx.types.CBufRet.f32 %6571, 2
  %6573 = extractvalue %dx.types.CBufRet.f32 %6571, 3
  %6574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6575 = extractvalue %dx.types.CBufRet.f32 %6574, 1
  %6576 = call float @dx.op.binary.f32(i32 35, float %6570, float 0.000000e+00)  ; FMax(a,b)
  %6577 = fadd fast float %6576, 0x3F10000000000000
  %6578 = fcmp fast oeq float %6575, 0.000000e+00
  br i1 %6578, label %6579, label %6646

; <label>:6579                                    ; preds = %6567
  %6580 = extractvalue %dx.types.CBufRet.f32 %6571, 1
  %6581 = extractvalue %dx.types.CBufRet.f32 %6571, 0
  %6582 = fmul fast float %6581, %5886
  %6583 = fmul fast float %6580, %5887
  %6584 = fadd fast float %6582, 5.000000e-01
  %6585 = call float @dx.op.unary.f32(i32 27, float %6584)  ; Round_ni(value)
  %6586 = fadd fast float %6583, 5.000000e-01
  %6587 = call float @dx.op.unary.f32(i32 27, float %6586)  ; Round_ni(value)
  %6588 = fsub fast float %6584, %6585
  %6589 = fsub fast float %6586, %6587
  %6590 = fadd fast float %6585, -5.000000e-01
  %6591 = fadd fast float %6587, -5.000000e-01
  %6592 = fmul fast float %6588, 2.000000e+00
  %6593 = fsub fast float 3.000000e+00, %6592
  %6594 = fadd fast float %6592, 1.000000e+00
  %6595 = fsub fast float 2.000000e+00, %6588
  %6596 = bitcast float %6593 to i32
  %6597 = sub nsw i32 2129859010, %6596
  %6598 = bitcast i32 %6597 to float
  %6599 = fmul fast float %6598, %6595
  %6600 = fadd fast float %6599, -1.000000e+00
  %6601 = bitcast float %6594 to i32
  %6602 = sub nsw i32 2129859010, %6601
  %6603 = bitcast i32 %6602 to float
  %6604 = fmul fast float %6603, %6588
  %6605 = fadd fast float %6604, 1.000000e+00
  %6606 = fmul fast float %6589, 2.000000e+00
  %6607 = fsub fast float 3.000000e+00, %6606
  %6608 = fadd fast float %6606, 1.000000e+00
  %6609 = fsub fast float 2.000000e+00, %6589
  %6610 = bitcast float %6607 to i32
  %6611 = sub nsw i32 2129859010, %6610
  %6612 = bitcast i32 %6611 to float
  %6613 = fmul fast float %6612, %6609
  %6614 = fadd fast float %6613, -1.000000e+00
  %6615 = bitcast float %6608 to i32
  %6616 = sub nsw i32 2129859010, %6615
  %6617 = bitcast i32 %6616 to float
  %6618 = fmul fast float %6617, %6589
  %6619 = fadd fast float %6618, 1.000000e+00
  %6620 = fadd fast float %6600, %6590
  %6621 = fmul fast float %6620, %6572
  %6622 = fadd fast float %6614, %6591
  %6623 = fmul fast float %6622, %6573
  %6624 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6621, float %6623, float undef, float undef, i32 0, i32 0, i32 undef, float %6577)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6625 = extractvalue %dx.types.ResRet.f32 %6624, 0
  %6626 = fmul fast float %6625, %6593
  %6627 = fadd fast float %6605, %6590
  %6628 = fmul fast float %6627, %6572
  %6629 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6628, float %6623, float undef, float undef, i32 0, i32 0, i32 undef, float %6577)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6630 = extractvalue %dx.types.ResRet.f32 %6629, 0
  %6631 = fmul fast float %6630, %6594
  %6632 = fadd fast float %6619, %6591
  %6633 = fmul fast float %6632, %6573
  %6634 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6621, float %6633, float undef, float undef, i32 0, i32 0, i32 undef, float %6577)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6635 = extractvalue %dx.types.ResRet.f32 %6634, 0
  %6636 = fmul fast float %6635, %6593
  %6637 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6628, float %6633, float undef, float undef, i32 0, i32 0, i32 undef, float %6577)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6638 = extractvalue %dx.types.ResRet.f32 %6637, 0
  %6639 = fmul fast float %6638, %6594
  %6640 = fadd fast float %6639, %6636
  %6641 = fmul fast float %6640, %6608
  %6642 = fadd fast float %6631, %6626
  %6643 = fmul fast float %6642, %6607
  %6644 = fadd fast float %6643, %6641
  %6645 = fmul fast float %6644, 6.250000e-02
  br label %6731

; <label>:6646                                    ; preds = %6567
  %6647 = fmul fast float %286, 0x401921FB60000000
  %6648 = call float @dx.op.unary.f32(i32 13, float %6647)  ; Sin(value)
  %6649 = call float @dx.op.unary.f32(i32 12, float %6647)  ; Cos(value)
  %6650 = fsub fast float -0.000000e+00, %6648
  br label %6651

; <label>:6651                                    ; preds = %6700, %6646
  %6652 = phi float [ 0.000000e+00, %6646 ], [ %6695, %6700 ]
  %6653 = phi float [ 0.000000e+00, %6646 ], [ %6697, %6700 ]
  %6654 = phi i32 [ 0, %6646 ], [ %6701, %6700 ]
  %6655 = mul i32 %6654, 2
  %6656 = add i32 0, %6655
  %6657 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6656
  %6658 = load float, float* %6657, align 4
  %6659 = mul i32 %6654, 2
  %6660 = add i32 1, %6659
  %6661 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6660
  %6662 = load float, float* %6661, align 4
  %6663 = fmul fast float %6658, %6649
  %6664 = call float @dx.op.tertiary.f32(i32 46, float %6662, float %6650, float %6663)  ; FMad(a,b,c)
  %6665 = fmul fast float %6658, %6648
  %6666 = call float @dx.op.tertiary.f32(i32 46, float %6662, float %6649, float %6665)  ; FMad(a,b,c)
  %6667 = fmul fast float %6664, %6575
  %6668 = fmul fast float %6666, %6575
  %6669 = fadd fast float %6667, %5886
  %6670 = fadd fast float %6668, %5887
  %6671 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %56, float %6669, float %6670, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6672 = extractvalue %dx.types.ResRet.f32 %6671, 0
  %6673 = extractvalue %dx.types.ResRet.f32 %6671, 1
  %6674 = extractvalue %dx.types.ResRet.f32 %6671, 2
  %6675 = extractvalue %dx.types.ResRet.f32 %6671, 3
  %6676 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 0
  store float %6672, float* %6676, align 4
  %6677 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 1
  store float %6673, float* %6677, align 4
  %6678 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 2
  store float %6674, float* %6678, align 4
  %6679 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 3
  store float %6675, float* %6679, align 4
  %6680 = fsub fast float %6672, %6577
  %6681 = fcmp fast olt float %6680, 0.000000e+00
  %6682 = select i1 %6681, float 0.000000e+00, float 1.000000e+00
  %6683 = fadd fast float %6682, %6652
  %6684 = fmul fast float %6682, %6680
  %6685 = fadd fast float %6684, %6653
  br label %6686

; <label>:6686                                    ; preds = %6686, %6651
  %6687 = phi i32 [ 1, %6651 ], [ %6698, %6686 ]
  %6688 = phi float [ %6685, %6651 ], [ %6697, %6686 ]
  %6689 = phi float [ %6683, %6651 ], [ %6695, %6686 ]
  %6690 = getelementptr [4 x float], [4 x float]* %108, i32 0, i32 %6687
  %6691 = load float, float* %6690, align 4, !tbaa !124, !noalias !114
  %6692 = fsub fast float %6691, %6577
  %6693 = fcmp fast olt float %6692, 0.000000e+00
  %6694 = select i1 %6693, float 0.000000e+00, float 1.000000e+00
  %6695 = fadd fast float %6694, %6689
  %6696 = fmul fast float %6694, %6692
  %6697 = fadd fast float %6696, %6688
  %6698 = add nuw nsw i32 %6687, 1
  %6699 = icmp eq i32 %6698, 4
  br i1 %6699, label %6700, label %6686, !llvm.loop !126

; <label>:6700                                    ; preds = %6686
  %6701 = add nuw nsw i32 %6654, 1
  %6702 = icmp eq i32 %6701, 8
  br i1 %6702, label %6703, label %6651, !llvm.loop !127

; <label>:6703                                    ; preds = %6700
  %6704 = fdiv fast float 1.000000e+00, %6695
  %6705 = fmul fast float %6704, %6697
  %6706 = fdiv fast float 1.000000e+00, %6577
  %6707 = fmul fast float %6705, %6706
  %6708 = call float @dx.op.unary.f32(i32 7, float %6707)  ; Saturate(value)
  %6709 = call float @dx.op.binary.f32(i32 35, float %6708, float 0.000000e+00)  ; FMax(a,b)
  %6710 = fmul fast float %6695, 3.125000e-02
  %6711 = call float @dx.op.unary.f32(i32 7, float %6710)  ; Saturate(value)
  %6712 = fmul fast float %6711, 2.000000e+00
  %6713 = fadd fast float %6712, -1.000000e+00
  %6714 = fcmp fast ogt float %6713, 0.000000e+00
  %6715 = fcmp fast olt float %6713, 0.000000e+00
  %6716 = zext i1 %6714 to i32
  %6717 = zext i1 %6715 to i32
  %6718 = sub nsw i32 %6716, %6717
  %6719 = sitofp i32 %6718 to float
  %6720 = fmul fast float %6719, %6713
  %6721 = fsub fast float 1.000000e+00, %6720
  %6722 = fmul fast float %6721, %6721
  %6723 = fmul fast float %6722, %6721
  %6724 = fsub fast float %6721, %6723
  %6725 = fmul fast float %6724, %6709
  %6726 = fsub fast float 1.000000e+00, %6723
  %6727 = fsub fast float %6726, %6725
  %6728 = fmul fast float %6719, 5.000000e-01
  %6729 = fmul fast float %6728, %6727
  %6730 = fsub fast float 5.000000e-01, %6729
  br label %6731

; <label>:6731                                    ; preds = %6703, %6579, %6564
  %6732 = phi float [ 1.000000e+00, %6564 ], [ %6645, %6579 ], [ %6730, %6703 ]
  %6733 = fcmp fast ogt float %5992, 0.000000e+00
  br i1 %6733, label %6734, label %7052, !dx.controlflow.hints !129

; <label>:6734                                    ; preds = %6731
  %6735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6736 = extractvalue %dx.types.CBufRet.f32 %6735, 0
  %6737 = fadd fast float %6736, %5876
  %6738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6739 = extractvalue %dx.types.CBufRet.f32 %6738, 2
  %6740 = extractvalue %dx.types.CBufRet.f32 %6738, 3
  %6741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6742 = extractvalue %dx.types.CBufRet.f32 %6741, 0
  %6743 = call float @dx.op.binary.f32(i32 35, float %6737, float 0.000000e+00)  ; FMax(a,b)
  %6744 = fadd fast float %6743, 0x3F10000000000000
  %6745 = fcmp fast oeq float %6742, 0.000000e+00
  br i1 %5879, label %6746, label %6899, !dx.controlflow.hints !130

; <label>:6746                                    ; preds = %6734
  br i1 %6745, label %6747, label %6814

; <label>:6747                                    ; preds = %6746
  %6748 = extractvalue %dx.types.CBufRet.f32 %6738, 1
  %6749 = extractvalue %dx.types.CBufRet.f32 %6738, 0
  %6750 = fmul fast float %6749, %5868
  %6751 = fmul fast float %6748, %5872
  %6752 = fadd fast float %6750, 5.000000e-01
  %6753 = call float @dx.op.unary.f32(i32 27, float %6752)  ; Round_ni(value)
  %6754 = fadd fast float %6751, 5.000000e-01
  %6755 = call float @dx.op.unary.f32(i32 27, float %6754)  ; Round_ni(value)
  %6756 = fsub fast float %6752, %6753
  %6757 = fsub fast float %6754, %6755
  %6758 = fadd fast float %6753, -5.000000e-01
  %6759 = fadd fast float %6755, -5.000000e-01
  %6760 = fmul fast float %6756, 2.000000e+00
  %6761 = fsub fast float 3.000000e+00, %6760
  %6762 = fadd fast float %6760, 1.000000e+00
  %6763 = fsub fast float 2.000000e+00, %6756
  %6764 = bitcast float %6761 to i32
  %6765 = sub nsw i32 2129859010, %6764
  %6766 = bitcast i32 %6765 to float
  %6767 = fmul fast float %6766, %6763
  %6768 = fadd fast float %6767, -1.000000e+00
  %6769 = bitcast float %6762 to i32
  %6770 = sub nsw i32 2129859010, %6769
  %6771 = bitcast i32 %6770 to float
  %6772 = fmul fast float %6771, %6756
  %6773 = fadd fast float %6772, 1.000000e+00
  %6774 = fmul fast float %6757, 2.000000e+00
  %6775 = fsub fast float 3.000000e+00, %6774
  %6776 = fadd fast float %6774, 1.000000e+00
  %6777 = fsub fast float 2.000000e+00, %6757
  %6778 = bitcast float %6775 to i32
  %6779 = sub nsw i32 2129859010, %6778
  %6780 = bitcast i32 %6779 to float
  %6781 = fmul fast float %6780, %6777
  %6782 = fadd fast float %6781, -1.000000e+00
  %6783 = bitcast float %6776 to i32
  %6784 = sub nsw i32 2129859010, %6783
  %6785 = bitcast i32 %6784 to float
  %6786 = fmul fast float %6785, %6757
  %6787 = fadd fast float %6786, 1.000000e+00
  %6788 = fadd fast float %6768, %6758
  %6789 = fmul fast float %6788, %6739
  %6790 = fadd fast float %6782, %6759
  %6791 = fmul fast float %6790, %6740
  %6792 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6789, float %6791, float undef, float undef, i32 0, i32 0, i32 undef, float %6744)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6793 = extractvalue %dx.types.ResRet.f32 %6792, 0
  %6794 = fmul fast float %6793, %6761
  %6795 = fadd fast float %6773, %6758
  %6796 = fmul fast float %6795, %6739
  %6797 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6796, float %6791, float undef, float undef, i32 0, i32 0, i32 undef, float %6744)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6798 = extractvalue %dx.types.ResRet.f32 %6797, 0
  %6799 = fmul fast float %6798, %6762
  %6800 = fadd fast float %6787, %6759
  %6801 = fmul fast float %6800, %6740
  %6802 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6789, float %6801, float undef, float undef, i32 0, i32 0, i32 undef, float %6744)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6803 = extractvalue %dx.types.ResRet.f32 %6802, 0
  %6804 = fmul fast float %6803, %6761
  %6805 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6796, float %6801, float undef, float undef, i32 0, i32 0, i32 undef, float %6744)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6806 = extractvalue %dx.types.ResRet.f32 %6805, 0
  %6807 = fmul fast float %6806, %6762
  %6808 = fadd fast float %6807, %6804
  %6809 = fmul fast float %6808, %6776
  %6810 = fadd fast float %6799, %6794
  %6811 = fmul fast float %6810, %6775
  %6812 = fadd fast float %6811, %6809
  %6813 = fmul fast float %6812, 6.250000e-02
  br label %7052

; <label>:6814                                    ; preds = %6746
  %6815 = fmul fast float %286, 0x401921FB60000000
  %6816 = call float @dx.op.unary.f32(i32 13, float %6815)  ; Sin(value)
  %6817 = call float @dx.op.unary.f32(i32 12, float %6815)  ; Cos(value)
  %6818 = fsub fast float -0.000000e+00, %6816
  br label %6819

; <label>:6819                                    ; preds = %6868, %6814
  %6820 = phi float [ 0.000000e+00, %6814 ], [ %6863, %6868 ]
  %6821 = phi float [ 0.000000e+00, %6814 ], [ %6865, %6868 ]
  %6822 = phi i32 [ 0, %6814 ], [ %6869, %6868 ]
  %6823 = mul i32 %6822, 2
  %6824 = add i32 0, %6823
  %6825 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6824
  %6826 = load float, float* %6825, align 4
  %6827 = mul i32 %6822, 2
  %6828 = add i32 1, %6827
  %6829 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6828
  %6830 = load float, float* %6829, align 4
  %6831 = fmul fast float %6826, %6817
  %6832 = call float @dx.op.tertiary.f32(i32 46, float %6830, float %6818, float %6831)  ; FMad(a,b,c)
  %6833 = fmul fast float %6826, %6816
  %6834 = call float @dx.op.tertiary.f32(i32 46, float %6830, float %6817, float %6833)  ; FMad(a,b,c)
  %6835 = fmul fast float %6832, %6742
  %6836 = fmul fast float %6834, %6742
  %6837 = fadd fast float %6835, %5868
  %6838 = fadd fast float %6836, %5872
  %6839 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %56, float %6837, float %6838, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6840 = extractvalue %dx.types.ResRet.f32 %6839, 0
  %6841 = extractvalue %dx.types.ResRet.f32 %6839, 1
  %6842 = extractvalue %dx.types.ResRet.f32 %6839, 2
  %6843 = extractvalue %dx.types.ResRet.f32 %6839, 3
  %6844 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %6840, float* %6844, align 4
  %6845 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %6841, float* %6845, align 4
  %6846 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %6842, float* %6846, align 4
  %6847 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %6843, float* %6847, align 4
  %6848 = fsub fast float %6840, %6744
  %6849 = fcmp fast olt float %6848, 0.000000e+00
  %6850 = select i1 %6849, float 0.000000e+00, float 1.000000e+00
  %6851 = fadd fast float %6850, %6820
  %6852 = fmul fast float %6850, %6848
  %6853 = fadd fast float %6852, %6821
  br label %6854

; <label>:6854                                    ; preds = %6854, %6819
  %6855 = phi i32 [ 1, %6819 ], [ %6866, %6854 ]
  %6856 = phi float [ %6853, %6819 ], [ %6865, %6854 ]
  %6857 = phi float [ %6851, %6819 ], [ %6863, %6854 ]
  %6858 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %6855
  %6859 = load float, float* %6858, align 4, !tbaa !124, !noalias !114
  %6860 = fsub fast float %6859, %6744
  %6861 = fcmp fast olt float %6860, 0.000000e+00
  %6862 = select i1 %6861, float 0.000000e+00, float 1.000000e+00
  %6863 = fadd fast float %6862, %6857
  %6864 = fmul fast float %6862, %6860
  %6865 = fadd fast float %6864, %6856
  %6866 = add nuw nsw i32 %6855, 1
  %6867 = icmp eq i32 %6866, 4
  br i1 %6867, label %6868, label %6854, !llvm.loop !126

; <label>:6868                                    ; preds = %6854
  %6869 = add nuw nsw i32 %6822, 1
  %6870 = icmp eq i32 %6869, 8
  br i1 %6870, label %6871, label %6819, !llvm.loop !127

; <label>:6871                                    ; preds = %6868
  %6872 = fdiv fast float 1.000000e+00, %6863
  %6873 = fmul fast float %6872, %6865
  %6874 = fdiv fast float 1.000000e+00, %6744
  %6875 = fmul fast float %6873, %6874
  %6876 = call float @dx.op.unary.f32(i32 7, float %6875)  ; Saturate(value)
  %6877 = call float @dx.op.binary.f32(i32 35, float %6876, float 0.000000e+00)  ; FMax(a,b)
  %6878 = fmul fast float %6863, 3.125000e-02
  %6879 = call float @dx.op.unary.f32(i32 7, float %6878)  ; Saturate(value)
  %6880 = fmul fast float %6879, 2.000000e+00
  %6881 = fadd fast float %6880, -1.000000e+00
  %6882 = fcmp fast ogt float %6881, 0.000000e+00
  %6883 = fcmp fast olt float %6881, 0.000000e+00
  %6884 = zext i1 %6882 to i32
  %6885 = zext i1 %6883 to i32
  %6886 = sub nsw i32 %6884, %6885
  %6887 = sitofp i32 %6886 to float
  %6888 = fmul fast float %6887, %6881
  %6889 = fsub fast float 1.000000e+00, %6888
  %6890 = fmul fast float %6889, %6889
  %6891 = fmul fast float %6890, %6889
  %6892 = fsub fast float %6889, %6891
  %6893 = fmul fast float %6892, %6877
  %6894 = fsub fast float 1.000000e+00, %6891
  %6895 = fsub fast float %6894, %6893
  %6896 = fmul fast float %6887, 5.000000e-01
  %6897 = fmul fast float %6896, %6895
  %6898 = fsub fast float 5.000000e-01, %6897
  br label %7052

; <label>:6899                                    ; preds = %6734
  br i1 %6745, label %6900, label %6967

; <label>:6900                                    ; preds = %6899
  %6901 = extractvalue %dx.types.CBufRet.f32 %6738, 1
  %6902 = extractvalue %dx.types.CBufRet.f32 %6738, 0
  %6903 = fmul fast float %6902, %5868
  %6904 = fmul fast float %6901, %5872
  %6905 = fadd fast float %6903, 5.000000e-01
  %6906 = call float @dx.op.unary.f32(i32 27, float %6905)  ; Round_ni(value)
  %6907 = fadd fast float %6904, 5.000000e-01
  %6908 = call float @dx.op.unary.f32(i32 27, float %6907)  ; Round_ni(value)
  %6909 = fsub fast float %6905, %6906
  %6910 = fsub fast float %6907, %6908
  %6911 = fadd fast float %6906, -5.000000e-01
  %6912 = fadd fast float %6908, -5.000000e-01
  %6913 = fmul fast float %6909, 2.000000e+00
  %6914 = fsub fast float 3.000000e+00, %6913
  %6915 = fadd fast float %6913, 1.000000e+00
  %6916 = fsub fast float 2.000000e+00, %6909
  %6917 = bitcast float %6914 to i32
  %6918 = sub nsw i32 2129859010, %6917
  %6919 = bitcast i32 %6918 to float
  %6920 = fmul fast float %6919, %6916
  %6921 = fadd fast float %6920, -1.000000e+00
  %6922 = bitcast float %6915 to i32
  %6923 = sub nsw i32 2129859010, %6922
  %6924 = bitcast i32 %6923 to float
  %6925 = fmul fast float %6924, %6909
  %6926 = fadd fast float %6925, 1.000000e+00
  %6927 = fmul fast float %6910, 2.000000e+00
  %6928 = fsub fast float 3.000000e+00, %6927
  %6929 = fadd fast float %6927, 1.000000e+00
  %6930 = fsub fast float 2.000000e+00, %6910
  %6931 = bitcast float %6928 to i32
  %6932 = sub nsw i32 2129859010, %6931
  %6933 = bitcast i32 %6932 to float
  %6934 = fmul fast float %6933, %6930
  %6935 = fadd fast float %6934, -1.000000e+00
  %6936 = bitcast float %6929 to i32
  %6937 = sub nsw i32 2129859010, %6936
  %6938 = bitcast i32 %6937 to float
  %6939 = fmul fast float %6938, %6910
  %6940 = fadd fast float %6939, 1.000000e+00
  %6941 = fadd fast float %6921, %6911
  %6942 = fmul fast float %6941, %6739
  %6943 = fadd fast float %6935, %6912
  %6944 = fmul fast float %6943, %6740
  %6945 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6942, float %6944, float undef, float undef, i32 0, i32 0, i32 undef, float %6744)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6946 = extractvalue %dx.types.ResRet.f32 %6945, 0
  %6947 = fmul fast float %6946, %6914
  %6948 = fadd fast float %6926, %6911
  %6949 = fmul fast float %6948, %6739
  %6950 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6949, float %6944, float undef, float undef, i32 0, i32 0, i32 undef, float %6744)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6951 = extractvalue %dx.types.ResRet.f32 %6950, 0
  %6952 = fmul fast float %6951, %6915
  %6953 = fadd fast float %6940, %6912
  %6954 = fmul fast float %6953, %6740
  %6955 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6942, float %6954, float undef, float undef, i32 0, i32 0, i32 undef, float %6744)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6956 = extractvalue %dx.types.ResRet.f32 %6955, 0
  %6957 = fmul fast float %6956, %6914
  %6958 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6949, float %6954, float undef, float undef, i32 0, i32 0, i32 undef, float %6744)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6959 = extractvalue %dx.types.ResRet.f32 %6958, 0
  %6960 = fmul fast float %6959, %6915
  %6961 = fadd fast float %6960, %6957
  %6962 = fmul fast float %6961, %6929
  %6963 = fadd fast float %6952, %6947
  %6964 = fmul fast float %6963, %6928
  %6965 = fadd fast float %6964, %6962
  %6966 = fmul fast float %6965, 6.250000e-02
  br label %7052

; <label>:6967                                    ; preds = %6899
  %6968 = fmul fast float %286, 0x401921FB60000000
  %6969 = call float @dx.op.unary.f32(i32 13, float %6968)  ; Sin(value)
  %6970 = call float @dx.op.unary.f32(i32 12, float %6968)  ; Cos(value)
  %6971 = fsub fast float -0.000000e+00, %6969
  br label %6972

; <label>:6972                                    ; preds = %7021, %6967
  %6973 = phi float [ 0.000000e+00, %6967 ], [ %7016, %7021 ]
  %6974 = phi float [ 0.000000e+00, %6967 ], [ %7018, %7021 ]
  %6975 = phi i32 [ 0, %6967 ], [ %7022, %7021 ]
  %6976 = mul i32 %6975, 2
  %6977 = add i32 0, %6976
  %6978 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6977
  %6979 = load float, float* %6978, align 4
  %6980 = mul i32 %6975, 2
  %6981 = add i32 1, %6980
  %6982 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6981
  %6983 = load float, float* %6982, align 4
  %6984 = fmul fast float %6979, %6970
  %6985 = call float @dx.op.tertiary.f32(i32 46, float %6983, float %6971, float %6984)  ; FMad(a,b,c)
  %6986 = fmul fast float %6979, %6969
  %6987 = call float @dx.op.tertiary.f32(i32 46, float %6983, float %6970, float %6986)  ; FMad(a,b,c)
  %6988 = fmul fast float %6985, %6742
  %6989 = fmul fast float %6987, %6742
  %6990 = fadd fast float %6988, %5868
  %6991 = fadd fast float %6989, %5872
  %6992 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %56, float %6990, float %6991, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6993 = extractvalue %dx.types.ResRet.f32 %6992, 0
  %6994 = extractvalue %dx.types.ResRet.f32 %6992, 1
  %6995 = extractvalue %dx.types.ResRet.f32 %6992, 2
  %6996 = extractvalue %dx.types.ResRet.f32 %6992, 3
  %6997 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %6993, float* %6997, align 4
  %6998 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %6994, float* %6998, align 4
  %6999 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %6995, float* %6999, align 4
  %7000 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %6996, float* %7000, align 4
  %7001 = fsub fast float %6993, %6744
  %7002 = fcmp fast olt float %7001, 0.000000e+00
  %7003 = select i1 %7002, float 0.000000e+00, float 1.000000e+00
  %7004 = fadd fast float %7003, %6973
  %7005 = fmul fast float %7003, %7001
  %7006 = fadd fast float %7005, %6974
  br label %7007

; <label>:7007                                    ; preds = %7007, %6972
  %7008 = phi i32 [ 1, %6972 ], [ %7019, %7007 ]
  %7009 = phi float [ %7006, %6972 ], [ %7018, %7007 ]
  %7010 = phi float [ %7004, %6972 ], [ %7016, %7007 ]
  %7011 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %7008
  %7012 = load float, float* %7011, align 4, !tbaa !124, !noalias !114
  %7013 = fsub fast float %7012, %6744
  %7014 = fcmp fast olt float %7013, 0.000000e+00
  %7015 = select i1 %7014, float 0.000000e+00, float 1.000000e+00
  %7016 = fadd fast float %7015, %7010
  %7017 = fmul fast float %7015, %7013
  %7018 = fadd fast float %7017, %7009
  %7019 = add nuw nsw i32 %7008, 1
  %7020 = icmp eq i32 %7019, 4
  br i1 %7020, label %7021, label %7007, !llvm.loop !126

; <label>:7021                                    ; preds = %7007
  %7022 = add nuw nsw i32 %6975, 1
  %7023 = icmp eq i32 %7022, 8
  br i1 %7023, label %7024, label %6972, !llvm.loop !127

; <label>:7024                                    ; preds = %7021
  %7025 = fdiv fast float 1.000000e+00, %7016
  %7026 = fmul fast float %7025, %7018
  %7027 = fdiv fast float 1.000000e+00, %6744
  %7028 = fmul fast float %7026, %7027
  %7029 = call float @dx.op.unary.f32(i32 7, float %7028)  ; Saturate(value)
  %7030 = call float @dx.op.binary.f32(i32 35, float %7029, float 0.000000e+00)  ; FMax(a,b)
  %7031 = fmul fast float %7016, 3.125000e-02
  %7032 = call float @dx.op.unary.f32(i32 7, float %7031)  ; Saturate(value)
  %7033 = fmul fast float %7032, 2.000000e+00
  %7034 = fadd fast float %7033, -1.000000e+00
  %7035 = fcmp fast ogt float %7034, 0.000000e+00
  %7036 = fcmp fast olt float %7034, 0.000000e+00
  %7037 = zext i1 %7035 to i32
  %7038 = zext i1 %7036 to i32
  %7039 = sub nsw i32 %7037, %7038
  %7040 = sitofp i32 %7039 to float
  %7041 = fmul fast float %7040, %7034
  %7042 = fsub fast float 1.000000e+00, %7041
  %7043 = fmul fast float %7042, %7042
  %7044 = fmul fast float %7043, %7042
  %7045 = fsub fast float %7042, %7044
  %7046 = fmul fast float %7045, %7030
  %7047 = fsub fast float 1.000000e+00, %7044
  %7048 = fsub fast float %7047, %7046
  %7049 = fmul fast float %7040, 5.000000e-01
  %7050 = fmul fast float %7049, %7048
  %7051 = fsub fast float 5.000000e-01, %7050
  br label %7052

; <label>:7052                                    ; preds = %7024, %6900, %6871, %6747, %6731
  %7053 = phi float [ 1.000000e+00, %6731 ], [ %6813, %6747 ], [ %6898, %6871 ], [ %6966, %6900 ], [ %7051, %7024 ]
  %7054 = fsub fast float %6565, %6398
  %7055 = fmul fast float %7054, %5965
  %7056 = fadd fast float %7055, %6398
  %7057 = fsub fast float %6732, %7056
  %7058 = fmul fast float %7057, %5964
  %7059 = fadd fast float %7058, %7056
  %7060 = fsub fast float %7053, %7059
  %7061 = fmul fast float %7060, %5992
  %7062 = fadd fast float %7061, %7059
  %7063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7064 = extractvalue %dx.types.CBufRet.f32 %7063, 2
  %7065 = fcmp fast ogt float %7064, 0.000000e+00
  br i1 %7065, label %7066, label %7106, !dx.controlflow.hints !131

; <label>:7066                                    ; preds = %7052
  %7067 = fcmp fast ugt float %7064, 0.000000e+00
  br i1 %7067, label %7068, label %7103

; <label>:7068                                    ; preds = %7066
  %7069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7070 = extractvalue %dx.types.CBufRet.f32 %7069, 0
  %7071 = extractvalue %dx.types.CBufRet.f32 %7069, 1
  %7072 = extractvalue %dx.types.CBufRet.f32 %7069, 2
  %7073 = extractvalue %dx.types.CBufRet.f32 %7069, 3
  %7074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7075 = extractvalue %dx.types.CBufRet.f32 %7074, 0
  %7076 = extractvalue %dx.types.CBufRet.f32 %7074, 1
  %7077 = extractvalue %dx.types.CBufRet.f32 %7074, 2
  %7078 = extractvalue %dx.types.CBufRet.f32 %7074, 3
  %7079 = extractvalue %dx.types.CBufRet.f32 %7063, 0
  %7080 = extractvalue %dx.types.CBufRet.f32 %7063, 1
  %7081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7082 = extractvalue %dx.types.CBufRet.f32 %7081, 0
  %7083 = extractvalue %dx.types.CBufRet.f32 %7081, 1
  %7084 = extractvalue %dx.types.CBufRet.f32 %7081, 2
  %7085 = fadd fast float %7082, %5845
  %7086 = fadd fast float %7083, %5846
  %7087 = fadd fast float %7084, %5847
  %7088 = fmul fast float %7085, %7070
  %7089 = call float @dx.op.tertiary.f32(i32 46, float %7071, float %7086, float %7088)  ; FMad(a,b,c)
  %7090 = call float @dx.op.tertiary.f32(i32 46, float %7072, float %7087, float %7089)  ; FMad(a,b,c)
  %7091 = fadd fast float %7090, %7073
  %7092 = fmul fast float %7085, %7075
  %7093 = call float @dx.op.tertiary.f32(i32 46, float %7076, float %7086, float %7092)  ; FMad(a,b,c)
  %7094 = call float @dx.op.tertiary.f32(i32 46, float %7077, float %7087, float %7093)  ; FMad(a,b,c)
  %7095 = fadd fast float %7094, %7078
  %7096 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %52, float %7091, float %7095, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7097 = extractvalue %dx.types.ResRet.f32 %7096, 0
  %7098 = fmul fast float %7097, %7080
  %7099 = fadd fast float %7098, %7079
  %7100 = call float @dx.op.unary.f32(i32 7, float %7099)  ; Saturate(value)
  %7101 = fmul fast float %7100, %7064
  %7102 = fsub fast float 1.000000e+00, %7101
  br label %7103

; <label>:7103                                    ; preds = %7068, %7066
  %7104 = phi float [ %7102, %7068 ], [ 1.000000e+00, %7066 ]
  %7105 = fmul fast float %7104, %7062
  br label %7106

; <label>:7106                                    ; preds = %7103, %7052, %5825
  %7107 = phi float [ 1.000000e+00, %5825 ], [ %7105, %7103 ], [ %7062, %7052 ]
  %7108 = call float @dx.op.binary.f32(i32 36, float %7107, float %7107)  ; FMin(a,b)
  %7109 = call float @dx.op.binary.f32(i32 36, float %7107, float %7108)  ; FMin(a,b)
  %7110 = fcmp fast ogt float %7109, 0.000000e+00
  br i1 %7110, label %7111, label %7276, !dx.controlflow.hints !132

; <label>:7111                                    ; preds = %7106
  %7112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7113 = extractvalue %dx.types.CBufRet.f32 %7112, 0
  %7114 = extractvalue %dx.types.CBufRet.f32 %7112, 1
  %7115 = extractvalue %dx.types.CBufRet.f32 %7112, 2
  %7116 = extractvalue %dx.types.CBufRet.f32 %7112, 3
  %7117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7118 = extractvalue %dx.types.CBufRet.f32 %7117, 0
  %7119 = extractvalue %dx.types.CBufRet.f32 %7117, 1
  %7120 = extractvalue %dx.types.CBufRet.f32 %7117, 2
  %7121 = extractvalue %dx.types.CBufRet.f32 %7117, 3
  %7122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7123 = extractvalue %dx.types.CBufRet.f32 %7122, 0
  %7124 = extractvalue %dx.types.CBufRet.f32 %7122, 1
  %7125 = extractvalue %dx.types.CBufRet.f32 %7122, 2
  %7126 = extractvalue %dx.types.CBufRet.f32 %7122, 3
  %7127 = fmul fast float %7113, %5845
  %7128 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %7114, float %7127)  ; FMad(a,b,c)
  %7129 = call float @dx.op.tertiary.f32(i32 46, float %5847, float %7115, float %7128)  ; FMad(a,b,c)
  %7130 = fadd fast float %7129, %7116
  %7131 = fmul fast float %7118, %5845
  %7132 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %7119, float %7131)  ; FMad(a,b,c)
  %7133 = call float @dx.op.tertiary.f32(i32 46, float %5847, float %7120, float %7132)  ; FMad(a,b,c)
  %7134 = fadd fast float %7133, %7121
  %7135 = fmul fast float %7123, %5845
  %7136 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %7124, float %7135)  ; FMad(a,b,c)
  %7137 = call float @dx.op.tertiary.f32(i32 46, float %5847, float %7125, float %7136)  ; FMad(a,b,c)
  %7138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7139 = extractvalue %dx.types.CBufRet.f32 %7138, 0
  %7140 = extractvalue %dx.types.CBufRet.f32 %7138, 1
  %7141 = extractvalue %dx.types.CBufRet.f32 %7138, 3
  %7142 = fmul fast float %7141, %7130
  %7143 = fmul fast float %7141, %7134
  %7144 = fadd fast float %7142, %7139
  %7145 = fadd fast float %7143, %7140
  %7146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7147 = extractvalue %dx.types.CBufRet.f32 %7146, 0
  %7148 = extractvalue %dx.types.CBufRet.f32 %7146, 1
  %7149 = fsub fast float %7144, %7147
  %7150 = fsub fast float %7145, %7148
  %7151 = fcmp fast olt float %7149, 0.000000e+00
  %7152 = fcmp fast olt float %7150, 0.000000e+00
  %7153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7154 = extractvalue %dx.types.CBufRet.f32 %7153, 0
  %7155 = extractvalue %dx.types.CBufRet.f32 %7153, 1
  %7156 = extractvalue %dx.types.CBufRet.f32 %7153, 2
  %7157 = extractvalue %dx.types.CBufRet.f32 %7153, 3
  %7158 = select i1 %7151, float %7154, float %7156
  %7159 = select i1 %7152, float %7155, float %7157
  %7160 = fmul fast float %7158, %7149
  %7161 = fmul fast float %7159, %7150
  %7162 = call float @dx.op.unary.f32(i32 6, float %7160)  ; FAbs(value)
  %7163 = call float @dx.op.unary.f32(i32 6, float %7161)  ; FAbs(value)
  %7164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7165 = extractvalue %dx.types.CBufRet.f32 %7164, 0
  %7166 = call float @dx.op.binary.f32(i32 35, float %7162, float %7163)  ; FMax(a,b)
  %7167 = fsub fast float %7165, %7166
  %7168 = call float @dx.op.unary.f32(i32 7, float %7167)  ; Saturate(value)
  %7169 = fcmp fast ogt float %7168, 0.000000e+00
  br i1 %7169, label %7170, label %7211, !dx.controlflow.hints !133

; <label>:7170                                    ; preds = %7111
  %7171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %55, float %7144, float %7145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7172 = extractvalue %dx.types.ResRet.f32 %7171, 1
  %7173 = fcmp fast ogt float %7172, 0.000000e+00
  br i1 %7173, label %7174, label %7206

; <label>:7174                                    ; preds = %7170
  %7175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %55, float %7144, float %7145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7176 = extractvalue %dx.types.ResRet.f32 %7175, 0
  %7177 = extractvalue %dx.types.ResRet.f32 %7175, 1
  %7178 = extractvalue %dx.types.ResRet.f32 %7175, 2
  %7179 = extractvalue %dx.types.ResRet.f32 %7175, 3
  %7180 = fsub fast float 1.000000e+00, %7126
  %7181 = fsub fast float %7180, %7137
  %7182 = fmul fast float %7181, 0x400921FB60000000
  %7183 = fadd fast float %7182, 0x3FF921FB60000000
  %7184 = call float @dx.op.unary.f32(i32 13, float %7183)  ; Sin(value)
  %7185 = fadd fast float %7184, -1.000000e+00
  %7186 = fmul fast float %7185, 0x3FD45F3060000000
  %7187 = fmul fast float %7181, 0x401921FB60000000
  %7188 = fadd fast float %7187, 0x400921FB60000000
  %7189 = call float @dx.op.unary.f32(i32 13, float %7188)  ; Sin(value)
  %7190 = fadd fast float %7189, 0x3E7777A5C0000000
  %7191 = fmul fast float %7190, 0x3FC45F3060000000
  %7192 = fmul fast float %7181, 0x4022D97C80000000
  %7193 = fadd fast float %7192, 0x4012D97C80000000
  %7194 = call float @dx.op.unary.f32(i32 13, float %7193)  ; Sin(value)
  %7195 = fadd fast float %7194, 1.000000e+00
  %7196 = fmul fast float %7195, 0x3FBB2995E0000000
  %7197 = fmul fast float %7181, 0x402921FB60000000
  %7198 = fadd fast float %7197, 0x401921FB60000000
  %7199 = call float @dx.op.unary.f32(i32 13, float %7198)  ; Sin(value)
  %7200 = fadd fast float %7199, 0xBE8777A5C0000000
  %7201 = fmul fast float %7200, 0x3FB45F3060000000
  %7202 = call float @dx.op.dot4.f32(i32 56, float %7176, float %7177, float %7178, float %7179, float %7186, float %7191, float %7196, float %7201)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7203 = fmul fast float %7202, 0xBFF7154760000000
  %7204 = call float @dx.op.unary.f32(i32 21, float %7203)  ; Exp(value)
  %7205 = call float @dx.op.unary.f32(i32 7, float %7204)  ; Saturate(value)
  br label %7206

; <label>:7206                                    ; preds = %7174, %7170
  %7207 = phi float [ %7205, %7174 ], [ 1.000000e+00, %7170 ]
  %7208 = fadd fast float %7207, -1.000000e+00
  %7209 = fmul fast float %7208, %7168
  %7210 = fadd fast float %7209, 1.000000e+00
  br label %7211

; <label>:7211                                    ; preds = %7206, %7111
  %7212 = phi float [ %7210, %7206 ], [ 1.000000e+00, %7111 ]
  %7213 = fmul fast float %7212, %7107
  %7214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7215 = extractvalue %dx.types.CBufRet.f32 %7214, 0
  %7216 = extractvalue %dx.types.CBufRet.f32 %7214, 1
  %7217 = extractvalue %dx.types.CBufRet.f32 %7214, 2
  %7218 = fadd fast float %7215, %203
  %7219 = fadd fast float %7216, %204
  %7220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7221 = extractvalue %dx.types.CBufRet.f32 %7220, 1
  %7222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7223 = extractvalue %dx.types.CBufRet.f32 %7222, 0
  %7224 = extractvalue %dx.types.CBufRet.f32 %7222, 1
  %7225 = extractvalue %dx.types.CBufRet.f32 %7222, 2
  %7226 = fsub fast float -0.000000e+00, %7218
  %7227 = fsub fast float -0.000000e+00, %7219
  %7228 = fsub fast float %5105, %7217
  %7229 = fadd fast float %7228, %7221
  %7230 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7226, float %7227, float %7229)  ; Dot3(ax,ay,az,bx,by,bz)
  %7231 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7223, float %7224, float %7225)  ; Dot3(ax,ay,az,bx,by,bz)
  %7232 = fdiv fast float 1.000000e+00, %7231
  %7233 = fmul fast float %7232, %7230
  %7234 = fmul fast float %7223, %7233
  %7235 = fmul fast float %7224, %7233
  %7236 = fadd fast float %7234, %7218
  %7237 = fadd fast float %7235, %7219
  %7238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7239 = extractvalue %dx.types.CBufRet.f32 %7238, 0
  %7240 = extractvalue %dx.types.CBufRet.f32 %7238, 1
  %7241 = fsub fast float %7236, %7239
  %7242 = fsub fast float %7237, %7240
  %7243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7244 = extractvalue %dx.types.CBufRet.f32 %7243, 2
  %7245 = extractvalue %dx.types.CBufRet.f32 %7243, 3
  %7246 = fmul fast float %7241, %7244
  %7247 = fmul fast float %7242, %7245
  %7248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7249 = extractvalue %dx.types.CBufRet.i32 %7248, 3
  %7250 = icmp eq i32 %7249, 0
  br i1 %7250, label %7256, label %7251

; <label>:7251                                    ; preds = %7211
  %7252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7246, float %7247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7253 = extractvalue %dx.types.ResRet.f32 %7252, 0
  %7254 = extractvalue %dx.types.ResRet.f32 %7252, 1
  %7255 = extractvalue %dx.types.ResRet.f32 %7252, 2
  br label %7261

; <label>:7256                                    ; preds = %7211
  %7257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %7246, float %7247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7258 = extractvalue %dx.types.ResRet.f32 %7257, 0
  %7259 = extractvalue %dx.types.ResRet.f32 %7257, 1
  %7260 = extractvalue %dx.types.ResRet.f32 %7257, 2
  br label %7261

; <label>:7261                                    ; preds = %7256, %7251
  %7262 = phi float [ %7253, %7251 ], [ %7258, %7256 ]
  %7263 = phi float [ %7254, %7251 ], [ %7259, %7256 ]
  %7264 = phi float [ %7255, %7251 ], [ %7260, %7256 ]
  %7265 = extractvalue %dx.types.CBufRet.f32 %7220, 2
  %7266 = fmul fast float %7265, %7262
  %7267 = extractvalue %dx.types.CBufRet.f32 %7220, 0
  %7268 = fsub fast float %7233, %7267
  %7269 = fsub fast float %7268, %7266
  %7270 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7269)  ; FMax(a,b)
  %7271 = fmul fast float %7270, %7263
  %7272 = call float @dx.op.binary.f32(i32 36, float %7264, float %7271)  ; FMin(a,b)
  %7273 = fmul fast float %7272, 0xBFF7154760000000
  %7274 = call float @dx.op.unary.f32(i32 21, float %7273)  ; Exp(value)
  %7275 = fmul fast float %7213, %7274
  br label %7276

; <label>:7276                                    ; preds = %7261, %7106
  %7277 = phi float [ %7275, %7261 ], [ %7107, %7106 ]
  %7278 = call float @dx.op.binary.f32(i32 36, float %7277, float %7277)  ; FMin(a,b)
  %7279 = call float @dx.op.binary.f32(i32 36, float %7277, float %7278)  ; FMin(a,b)
  %7280 = fcmp fast ogt float %7279, 0.000000e+00
  br i1 %7280, label %7281, label %7528, !dx.controlflow.hints !134

; <label>:7281                                    ; preds = %7276
  %7282 = fmul fast float %7277, %5837
  %7283 = fmul fast float %7277, %5838
  %7284 = fmul fast float %7277, %5839
  %7285 = fsub fast float %205, %4304
  %7286 = fcmp fast ogt float %7285, 0.000000e+00
  %7287 = fmul fast float %5826, 5.120000e+02
  %7288 = fmul fast float %5827, 5.120000e+02
  %7289 = fmul fast float %5828, 5.120000e+02
  %7290 = fadd fast float %7289, %205
  %7291 = fsub fast float %4304, %7290
  %7292 = fmul fast float %7291, 2.000000e+00
  %7293 = fadd fast float %7292, %7290
  %7294 = select i1 %7286, float %7293, float %7290
  %7295 = fsub fast float %7294, %205
  %7296 = call float @dx.op.dot3.f32(i32 55, float %7287, float %7288, float %7295, float %7287, float %7288, float %7295)  ; Dot3(ax,ay,az,bx,by,bz)
  %7297 = call float @dx.op.unary.f32(i32 25, float %7296)  ; Rsqrt(value)
  %7298 = fmul fast float %7297, %7287
  %7299 = fmul fast float %7297, %7288
  %7300 = fmul fast float %7297, %7295
  %7301 = fsub fast float %4304, %205
  %7302 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7301)  ; Dot3(ax,ay,az,bx,by,bz)
  %7303 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7298, float %7299, float %7300)  ; Dot3(ax,ay,az,bx,by,bz)
  %7304 = fdiv fast float 1.000000e+00, %7303
  %7305 = fmul fast float %7304, %7302
  %7306 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7285, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7307 = fcmp fast ogt float %7306, 0.000000e+00
  %7308 = fcmp fast olt float %7306, 0.000000e+00
  %7309 = zext i1 %7307 to i32
  %7310 = zext i1 %7308 to i32
  %7311 = sub nsw i32 %7309, %7310
  %7312 = sitofp i32 %7311 to float
  %7313 = fsub fast float %7294, %4304
  %7314 = call float @dx.op.dot3.f32(i32 55, float %7287, float %7288, float %7313, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7315 = fcmp fast ogt float %7314, 0.000000e+00
  %7316 = fcmp fast olt float %7314, 0.000000e+00
  %7317 = zext i1 %7315 to i32
  %7318 = zext i1 %7316 to i32
  %7319 = sub nsw i32 %7317, %7318
  %7320 = sitofp i32 %7319 to float
  %7321 = fcmp fast une float %7312, %7320
  br i1 %7321, label %7322, label %7332

; <label>:7322                                    ; preds = %7281
  %7323 = fmul fast float %7305, %7300
  %7324 = fmul fast float %7305, %7299
  %7325 = fmul fast float %7305, %7298
  %7326 = fmul fast float %7325, %7325
  %7327 = fmul fast float %7324, %7324
  %7328 = fadd fast float %7326, %7327
  %7329 = fmul fast float %7323, %7323
  %7330 = fadd fast float %7328, %7329
  %7331 = call float @dx.op.unary.f32(i32 24, float %7330)  ; Sqrt(value)
  br label %7342

; <label>:7332                                    ; preds = %7281
  %7333 = icmp slt i32 %7311, 0
  br i1 %7333, label %7334, label %7342

; <label>:7334                                    ; preds = %7332
  %7335 = fsub fast float %205, %7294
  %7336 = fmul fast float %7287, %7287
  %7337 = fmul fast float %7288, %7288
  %7338 = fadd fast float %7336, %7337
  %7339 = fmul fast float %7335, %7335
  %7340 = fadd fast float %7338, %7339
  %7341 = call float @dx.op.unary.f32(i32 24, float %7340)  ; Sqrt(value)
  br label %7342

; <label>:7342                                    ; preds = %7334, %7332, %7322
  %7343 = phi float [ %7331, %7322 ], [ %7341, %7334 ], [ 0.000000e+00, %7332 ]
  %7344 = fsub fast float -0.000000e+00, %7343
  %7345 = select i1 %7286, float -0.000000e+00, float %7344
  %7346 = fmul fast float %4301, 0x3FF7154760000000
  %7347 = fmul fast float %7346, %7345
  %7348 = fmul fast float %4302, 0x3FF7154760000000
  %7349 = fmul fast float %7348, %7345
  %7350 = fmul fast float %4303, 0x3FF7154760000000
  %7351 = fmul fast float %7350, %7345
  %7352 = call float @dx.op.unary.f32(i32 21, float %7347)  ; Exp(value)
  %7353 = call float @dx.op.unary.f32(i32 21, float %7349)  ; Exp(value)
  %7354 = call float @dx.op.unary.f32(i32 21, float %7351)  ; Exp(value)
  %7355 = call float @dx.op.unary.f32(i32 7, float %7352)  ; Saturate(value)
  %7356 = call float @dx.op.unary.f32(i32 7, float %7353)  ; Saturate(value)
  %7357 = call float @dx.op.unary.f32(i32 7, float %7354)  ; Saturate(value)
  %7358 = fmul fast float %7282, %7355
  %7359 = fmul fast float %7283, %7356
  %7360 = fmul fast float %7284, %7357
  %7361 = fsub fast float %5826, %5093
  %7362 = fsub fast float %5827, %5092
  %7363 = fsub fast float %5828, %5091
  %7364 = call float @dx.op.dot3.f32(i32 55, float %7361, float %7362, float %7363, float %7361, float %7362, float %7363)  ; Dot3(ax,ay,az,bx,by,bz)
  %7365 = call float @dx.op.unary.f32(i32 25, float %7364)  ; Rsqrt(value)
  %7366 = fmul fast float %7365, %7361
  %7367 = fmul fast float %7365, %7362
  %7368 = fmul fast float %7365, %7363
  %7369 = call float @dx.op.dot3.f32(i32 55, float %5826, float %5827, float %5828, float %5100, float %5101, float %5102)  ; Dot3(ax,ay,az,bx,by,bz)
  %7370 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5089, float %5088, float %7366, float %7367, float %7368)  ; Dot3(ax,ay,az,bx,by,bz)
  %7371 = call float @dx.op.unary.f32(i32 7, float %7369)  ; Saturate(value)
  %7372 = fmul fast float %7371, %7371
  %7373 = fmul fast float %7372, %5133
  %7374 = call float @dx.op.unary.f32(i32 7, float %7373)  ; Saturate(value)
  %7375 = fmul fast float %7374, %7371
  %7376 = call float @dx.op.dot3.f32(i32 55, float %5100, float %5101, float %5102, float %7366, float %7367, float %7368)  ; Dot3(ax,ay,az,bx,by,bz)
  %7377 = fmul fast float %7376, %7376
  %7378 = call float @dx.op.unary.f32(i32 6, float %7369)  ; FAbs(value)
  %7379 = fsub fast float 1.000000e+00, %5126
  %7380 = fmul fast float %5108, %5108
  %7381 = fmul fast float %7380, %7379
  %7382 = fadd fast float %7381, %5126
  %7383 = bitcast float %7382 to i32
  %7384 = ashr i32 %7383, 1
  %7385 = add nsw i32 %7384, 532487669
  %7386 = bitcast i32 %7385 to float
  %7387 = fadd fast float %7386, %5108
  %7388 = fmul fast float %5126, %7377
  %7389 = fsub fast float 1.000000e+00, %7377
  %7390 = fadd fast float %7389, %7388
  %7391 = fmul fast float %7378, %7378
  %7392 = fmul fast float %7391, %7379
  %7393 = fadd fast float %7392, %5126
  %7394 = bitcast float %7393 to i32
  %7395 = ashr i32 %7394, 1
  %7396 = add nsw i32 %7395, 532487669
  %7397 = bitcast i32 %7396 to float
  %7398 = fadd fast float %7397, %7378
  %7399 = fmul fast float %7390, %7390
  %7400 = fmul fast float %7399, %7387
  %7401 = fmul fast float %7400, %7398
  %7402 = fdiv fast float 0x3FF0A00000000000, %7401
  %7403 = fmul fast float %7402, %5126
  %7404 = call float @dx.op.unary.f32(i32 6, float %7370)  ; FAbs(value)
  %7405 = fsub fast float 1.000000e+00, %7404
  %7406 = bitcast float %7405 to i32
  %7407 = sitofp i32 %7406 to float
  %7408 = fmul fast float %7407, 5.000000e+00
  %7409 = fadd fast float %7408, 0xC1EFBF8940000000
  %7410 = fptosi float %7409 to i32
  %7411 = bitcast i32 %7410 to float
  %7412 = fsub fast float 1.000000e+00, %5097
  %7413 = fsub fast float 1.000000e+00, %5098
  %7414 = fsub fast float 1.000000e+00, %5106
  %7415 = fmul fast float %7411, %7412
  %7416 = fmul fast float %7411, %7413
  %7417 = fmul fast float %7411, %7414
  %7418 = fadd fast float %7415, %5097
  %7419 = fadd fast float %7416, %5098
  %7420 = fadd fast float %7417, %5106
  br i1 %5245, label %7421, label %7444

; <label>:7421                                    ; preds = %7342
  %7422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3899, float %7404, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7423 = extractvalue %dx.types.ResRet.f32 %7422, 0
  %7424 = extractvalue %dx.types.ResRet.f32 %7422, 1
  %7425 = extractvalue %dx.types.ResRet.f32 %7422, 2
  %7426 = fadd fast float %7423, -5.000000e-01
  %7427 = fadd fast float %7424, -5.000000e-01
  %7428 = fadd fast float %7425, -5.000000e-01
  %7429 = fmul fast float %5097, 4.000000e+00
  %7430 = fmul fast float %7429, %7412
  %7431 = fmul fast float %7430, %7426
  %7432 = fmul fast float %5098, 4.000000e+00
  %7433 = fmul fast float %7432, %7413
  %7434 = fmul fast float %7433, %7427
  %7435 = fmul fast float %5106, 4.000000e+00
  %7436 = fmul fast float %7435, %7414
  %7437 = fmul fast float %7436, %7428
  %7438 = fadd fast float %7431, %7418
  %7439 = fadd fast float %7434, %7419
  %7440 = fadd fast float %7437, %7420
  %7441 = call float @dx.op.unary.f32(i32 7, float %7438)  ; Saturate(value)
  %7442 = call float @dx.op.unary.f32(i32 7, float %7439)  ; Saturate(value)
  %7443 = call float @dx.op.unary.f32(i32 7, float %7440)  ; Saturate(value)
  br label %7444

; <label>:7444                                    ; preds = %7421, %7342
  %7445 = phi float [ %7441, %7421 ], [ %7418, %7342 ]
  %7446 = phi float [ %7442, %7421 ], [ %7419, %7342 ]
  %7447 = phi float [ %7443, %7421 ], [ %7420, %7342 ]
  %7448 = fmul fast float %7369, 9.843750e-01
  %7449 = fadd fast float %7448, 7.812500e-03
  %7450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %7449, float %5235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7451 = extractvalue %dx.types.ResRet.f32 %7450, 2
  %7452 = extractvalue %dx.types.ResRet.f32 %7450, 3
  %7453 = fmul fast float %7451, %5097
  %7454 = fmul fast float %7451, %5098
  %7455 = fmul fast float %7451, %5106
  %7456 = fadd fast float %7453, %7452
  %7457 = fadd fast float %7454, %7452
  %7458 = fadd fast float %7455, %7452
  br i1 %5245, label %7459, label %7482

; <label>:7459                                    ; preds = %7444
  %7460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3899, float %7369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7461 = extractvalue %dx.types.ResRet.f32 %7460, 0
  %7462 = extractvalue %dx.types.ResRet.f32 %7460, 1
  %7463 = extractvalue %dx.types.ResRet.f32 %7460, 2
  %7464 = fadd fast float %7461, -5.000000e-01
  %7465 = fadd fast float %7462, -5.000000e-01
  %7466 = fadd fast float %7463, -5.000000e-01
  %7467 = fmul fast float %5097, 4.000000e+00
  %7468 = fmul fast float %7467, %7412
  %7469 = fmul fast float %7468, %7464
  %7470 = fmul fast float %5098, 4.000000e+00
  %7471 = fmul fast float %7470, %7413
  %7472 = fmul fast float %7471, %7465
  %7473 = fmul fast float %5106, 4.000000e+00
  %7474 = fmul fast float %7473, %7414
  %7475 = fmul fast float %7474, %7466
  %7476 = fadd fast float %7469, %7456
  %7477 = fadd fast float %7472, %7457
  %7478 = fadd fast float %7475, %7458
  %7479 = call float @dx.op.unary.f32(i32 7, float %7476)  ; Saturate(value)
  %7480 = call float @dx.op.unary.f32(i32 7, float %7477)  ; Saturate(value)
  %7481 = call float @dx.op.unary.f32(i32 7, float %7478)  ; Saturate(value)
  br label %7482

; <label>:7482                                    ; preds = %7459, %7444
  %7483 = phi float [ %7479, %7459 ], [ %7456, %7444 ]
  %7484 = phi float [ %7480, %7459 ], [ %7457, %7444 ]
  %7485 = phi float [ %7481, %7459 ], [ %7458, %7444 ]
  %7486 = call float @dx.op.binary.f32(i32 35, float %7484, float %7485)  ; FMax(a,b)
  %7487 = call float @dx.op.binary.f32(i32 35, float %7483, float %7486)  ; FMax(a,b)
  %7488 = fsub fast float 1.000000e+00, %7487
  %7489 = fmul fast float %7445, %7403
  %7490 = fmul fast float %7446, %7403
  %7491 = fmul fast float %7447, %7403
  %7492 = fsub fast float 1.000000e+00, %7370
  %7493 = bitcast float %7492 to i32
  %7494 = sitofp i32 %7493 to float
  %7495 = fmul fast float %7494, 5.000000e+00
  %7496 = fadd fast float %7495, 0xC1EFBF8940000000
  %7497 = fptosi float %7496 to i32
  %7498 = bitcast i32 %7497 to float
  %7499 = fmul fast float %7498, %3900
  %7500 = fmul fast float %7488, %7499
  %7501 = fmul fast float %7500, %5787
  %7502 = fmul fast float %7500, %5788
  %7503 = fmul fast float %7500, %5789
  %7504 = fadd fast float %7501, %7489
  %7505 = fadd fast float %7502, %7490
  %7506 = fadd fast float %7503, %7491
  %7507 = fmul fast float %7375, %7358
  %7508 = fmul fast float %7507, %7488
  %7509 = fmul fast float %7375, %7359
  %7510 = fmul fast float %7509, %7488
  %7511 = fmul fast float %7375, %7360
  %7512 = fmul fast float %7511, %7488
  %7513 = fmul fast float %7507, %7504
  %7514 = fmul fast float %7509, %7505
  %7515 = fmul fast float %7511, %7506
  %7516 = fadd fast float %7508, %5771
  %7517 = fmul fast float %7516, %3896
  %7518 = fadd fast float %7510, %5772
  %7519 = fmul fast float %7518, %3896
  %7520 = fadd fast float %7512, %5773
  %7521 = fmul fast float %7520, %3896
  %7522 = fadd fast float %7513, %5814
  %7523 = fmul fast float %7522, %3896
  %7524 = fadd fast float %7514, %5817
  %7525 = fmul fast float %7524, %3896
  %7526 = fadd fast float %7515, %5820
  %7527 = fmul fast float %7526, %3896
  br label %7528

; <label>:7528                                    ; preds = %7482, %7276, %5767
  %7529 = phi float [ %5815, %5767 ], [ %5815, %7276 ], [ %7523, %7482 ]
  %7530 = phi float [ %5818, %5767 ], [ %5818, %7276 ], [ %7525, %7482 ]
  %7531 = phi float [ %5821, %5767 ], [ %5821, %7276 ], [ %7527, %7482 ]
  %7532 = phi float [ %5810, %5767 ], [ %5810, %7276 ], [ %7517, %7482 ]
  %7533 = phi float [ %5811, %5767 ], [ %5811, %7276 ], [ %7519, %7482 ]
  %7534 = phi float [ %5812, %5767 ], [ %5812, %7276 ], [ %7521, %7482 ]
  %7535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7536 = extractvalue %dx.types.CBufRet.i32 %7535, 0
  %7537 = icmp eq i32 %7536, 0
  br i1 %7537, label %8200, label %7538

; <label>:7538                                    ; preds = %7528
  %7539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7540 = extractvalue %dx.types.CBufRet.f32 %7539, 2
  %7541 = extractvalue %dx.types.CBufRet.f32 %7539, 3
  %7542 = fmul fast float %7540, %116
  %7543 = fmul fast float %7541, %117
  %7544 = fptoui float %7542 to i32
  %7545 = fptoui float %7543 to i32
  %7546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7547 = extractvalue %dx.types.CBufRet.f32 %7546, 0
  %7548 = extractvalue %dx.types.CBufRet.f32 %7546, 2
  %7549 = extractvalue %dx.types.CBufRet.f32 %7546, 3
  %7550 = fadd fast float %103, -4.000000e+00
  %7551 = call float @dx.op.binary.f32(i32 35, float %7550, float 0.000000e+00)  ; FMax(a,b)
  %7552 = fadd fast float %7551, %7547
  %7553 = fmul fast float %7552, %7548
  %7554 = call float @dx.op.unary.f32(i32 23, float %7553)  ; Log(value)
  %7555 = fmul fast float %7554, %7549
  %7556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7557 = extractvalue %dx.types.CBufRet.f32 %7556, 2
  %7558 = fmul fast float %7555, %7557
  %7559 = call float @dx.op.unary.f32(i32 7, float %7558)  ; Saturate(value)
  %7560 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7561 = extractvalue %dx.types.CBufRet.i32 %7560, 1
  %7562 = add i32 %7561, -1
  %7563 = uitofp i32 %7561 to float
  %7564 = fmul fast float %7563, %7559
  %7565 = fptoui float %7564 to i32
  %7566 = call i32 @dx.op.binary.i32(i32 40, i32 %7565, i32 %7562)  ; UMin(a,b)
  %7567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7568 = extractvalue %dx.types.CBufRet.i32 %7567, 2
  %7569 = extractvalue %dx.types.CBufRet.i32 %7567, 3
  %7570 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7545, i32 %7568, i32 %7544)  ; UMad(a,b,c)
  %7571 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7566, i32 %7569, i32 %7570)  ; UMad(a,b,c)
  %7572 = add nsw i32 %7536, -1
  %7573 = call i32 @dx.op.binary.i32(i32 37, i32 %7572, i32 0)  ; IMax(a,b)
  %7574 = call float @dx.op.binary.f32(i32 35, float %103, float 0.000000e+00)  ; FMax(a,b)
  %7575 = fptoui float %7574 to i32
  %7576 = lshr i32 %7575, 5
  %7577 = call i32 @dx.op.binary.i32(i32 40, i32 %7576, i32 8191)  ; UMin(a,b)
  %7578 = shl i32 %7577, 2
  %7579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7578, i32 undef)  ; BufferLoad(srv,index,wot)
  %7580 = extractvalue %dx.types.ResRet.i32 %7579, 0
  %7581 = lshr i32 %7580, 16
  %7582 = and i32 %7580, 65535
  %7583 = lshr i32 %7580, 21
  %7584 = lshr i32 %7582, 5
  %7585 = call i32 @dx.op.binary.i32(i32 40, i32 %7584, i32 %7573)  ; UMin(a,b)
  %7586 = icmp ugt i32 %7583, %7585
  br i1 %7586, label %8200, label %7587

; <label>:7587                                    ; preds = %7538
  br label %7588

; <label>:7588                                    ; preds = %8190, %7587
  %7589 = phi i32 [ %8197, %8190 ], [ %7583, %7587 ]
  %7590 = phi float [ %8191, %8190 ], [ %7529, %7587 ]
  %7591 = phi float [ %8192, %8190 ], [ %7530, %7587 ]
  %7592 = phi float [ %8193, %8190 ], [ %7531, %7587 ]
  %7593 = phi float [ %8194, %8190 ], [ %7532, %7587 ]
  %7594 = phi float [ %8195, %8190 ], [ %7533, %7587 ]
  %7595 = phi float [ %8196, %8190 ], [ %7534, %7587 ]
  %7596 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7597 = extractvalue %dx.types.CBufRet.i32 %7596, 0
  %7598 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7571, i32 %7597, i32 %7589)  ; UMad(a,b,c)
  %7599 = shl i32 %7598, 2
  %7600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7599, i32 undef)  ; BufferLoad(srv,index,wot)
  %7601 = extractvalue %dx.types.ResRet.i32 %7600, 0
  %7602 = shl i32 %7589, 5
  %7603 = sub nsw i32 %7581, %7602
  %7604 = call i32 @dx.op.binary.i32(i32 37, i32 %7603, i32 0)  ; IMax(a,b)
  %7605 = call i32 @dx.op.binary.i32(i32 38, i32 %7604, i32 31)  ; IMin(a,b)
  %7606 = sub nsw i32 1, %7581
  %7607 = add nsw i32 %7606, %7582
  %7608 = call i32 @dx.op.binary.i32(i32 37, i32 %7607, i32 0)  ; IMax(a,b)
  %7609 = call i32 @dx.op.binary.i32(i32 38, i32 %7608, i32 32)  ; IMin(a,b)
  %7610 = and i32 %7609, 31
  %7611 = shl i32 -1, %7610
  %7612 = xor i32 %7611, -1
  %7613 = and i32 %7605, 31
  %7614 = shl i32 %7612, %7613
  %7615 = icmp eq i32 %7609, 32
  %7616 = select i1 %7615, i32 -1, i32 %7614
  %7617 = and i32 %7616, %7601
  %7618 = icmp eq i32 %7617, 0
  br i1 %7618, label %8190, label %7619

; <label>:7619                                    ; preds = %7588
  br label %7620

; <label>:7620                                    ; preds = %7754, %7619
  %7621 = phi i32 [ %7632, %7754 ], [ %7617, %7619 ]
  %7622 = phi float [ %7755, %7754 ], [ %7590, %7619 ]
  %7623 = phi float [ %7756, %7754 ], [ %7591, %7619 ]
  %7624 = phi float [ %7757, %7754 ], [ %7592, %7619 ]
  %7625 = phi float [ %7758, %7754 ], [ %7593, %7619 ]
  %7626 = phi float [ %7759, %7754 ], [ %7594, %7619 ]
  %7627 = phi float [ %7760, %7754 ], [ %7595, %7619 ]
  %7628 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7621)  ; FirstbitLo(value)
  %7629 = add i32 %7628, %7602
  %7630 = and i32 %7628, 31
  %7631 = shl i32 1, %7630
  %7632 = xor i32 %7631, %7621
  %7633 = mul i32 %7629, 112
  %7634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7633, i32 undef)  ; BufferLoad(srv,index,wot)
  %7635 = extractvalue %dx.types.ResRet.f32 %7634, 0
  %7636 = extractvalue %dx.types.ResRet.f32 %7634, 1
  %7637 = extractvalue %dx.types.ResRet.f32 %7634, 2
  %7638 = or i32 %7633, 12
  %7639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7638, i32 undef)  ; BufferLoad(srv,index,wot)
  %7640 = extractvalue %dx.types.ResRet.f32 %7639, 0
  %7641 = add i32 %7633, 16
  %7642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7641, i32 undef)  ; BufferLoad(srv,index,wot)
  %7643 = extractvalue %dx.types.ResRet.f32 %7642, 0
  %7644 = extractvalue %dx.types.ResRet.f32 %7642, 1
  %7645 = extractvalue %dx.types.ResRet.f32 %7642, 2
  %7646 = add i32 %7633, 28
  %7647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7646, i32 undef)  ; BufferLoad(srv,index,wot)
  %7648 = extractvalue %dx.types.ResRet.i32 %7647, 0
  %7649 = add i32 %7633, 44
  %7650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7649, i32 undef)  ; BufferLoad(srv,index,wot)
  %7651 = extractvalue %dx.types.ResRet.f32 %7650, 0
  %7652 = add i32 %7633, 48
  %7653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7652, i32 undef)  ; BufferLoad(srv,index,wot)
  %7654 = extractvalue %dx.types.ResRet.f32 %7653, 0
  %7655 = extractvalue %dx.types.ResRet.f32 %7653, 1
  %7656 = extractvalue %dx.types.ResRet.f32 %7653, 2
  %7657 = extractvalue %dx.types.ResRet.f32 %7653, 3
  %7658 = add i32 %7633, 64
  %7659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7658, i32 undef)  ; BufferLoad(srv,index,wot)
  %7660 = extractvalue %dx.types.ResRet.f32 %7659, 0
  %7661 = extractvalue %dx.types.ResRet.f32 %7659, 1
  %7662 = extractvalue %dx.types.ResRet.f32 %7659, 2
  %7663 = extractvalue %dx.types.ResRet.f32 %7659, 3
  %7664 = add i32 %7633, 80
  %7665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7664, i32 undef)  ; BufferLoad(srv,index,wot)
  %7666 = extractvalue %dx.types.ResRet.f32 %7665, 1
  %7667 = extractvalue %dx.types.ResRet.f32 %7665, 2
  %7668 = add i32 %7633, 92
  %7669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7668, i32 undef)  ; BufferLoad(srv,index,wot)
  %7670 = extractvalue %dx.types.ResRet.i32 %7669, 0
  %7671 = call float @dx.op.dot3.f32(i32 55, float %7635, float %7636, float %7637, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7672 = select i1 %275, float %7666, float %7635
  %7673 = select i1 %275, float %7671, float %7636
  %7674 = select i1 %275, float %7667, float %7637
  %7675 = and i32 %7670, 65535
  %7676 = uitofp i32 %7675 to float
  %7677 = lshr i32 %7670, 16
  %7678 = uitofp i32 %7677 to float
  %7679 = and i32 %7648, 65535
  %7680 = and i32 %7648, 50331648
  %7681 = icmp eq i32 %7680, 33554432
  %7682 = fsub fast float %7654, %203
  %7683 = fsub fast float %7655, %204
  %7684 = fsub fast float %7656, %205
  %7685 = call float @dx.op.dot3.f32(i32 55, float %7682, float %7683, float %7684, float %7682, float %7683, float %7684)  ; Dot3(ax,ay,az,bx,by,bz)
  %7686 = call float @dx.op.unary.f32(i32 24, float %7685)  ; Sqrt(value)
  %7687 = fdiv fast float 1.000000e+00, %7686
  %7688 = fmul fast float %7687, %7682
  %7689 = fmul fast float %7687, %7683
  %7690 = fmul fast float %7687, %7684
  %7691 = fadd fast float %7686, %7640
  %7692 = fdiv fast float 1.000000e+00, %7691
  %7693 = fmul float %7651, %7692
  %7694 = fmul float %7693, %7693
  %7695 = call float @dx.op.unary.f32(i32 7, float %7694)  ; Saturate(value)
  br i1 %7681, label %7696, label %7717

; <label>:7696                                    ; preds = %7620
  %7697 = fmul fast float %7662, %7643
  %7698 = fmul fast float %7662, %7644
  %7699 = fmul fast float %7662, %7645
  %7700 = fadd fast float %7682, %7697
  %7701 = fadd fast float %7683, %7698
  %7702 = fadd fast float %7684, %7699
  %7703 = call float @dx.op.dot3.f32(i32 55, float %7700, float %7701, float %7702, float %7700, float %7701, float %7702)  ; Dot3(ax,ay,az,bx,by,bz)
  %7704 = call float @dx.op.unary.f32(i32 25, float %7703)  ; Rsqrt(value)
  %7705 = fmul fast float %7704, %7700
  %7706 = fmul fast float %7704, %7701
  %7707 = fmul fast float %7704, %7702
  %7708 = fsub fast float %203, %7654
  %7709 = fsub fast float %204, %7655
  %7710 = fsub fast float %205, %7656
  %7711 = fsub fast float -0.000000e+00, %7708
  %7712 = fsub fast float -0.000000e+00, %7709
  %7713 = fsub fast float -0.000000e+00, %7710
  %7714 = call float @dx.op.dot3.f32(i32 55, float %7711, float %7712, float %7713, float %7643, float %7644, float %7645)  ; Dot3(ax,ay,az,bx,by,bz)
  %7715 = fcmp fast ogt float %7714, 0.000000e+00
  %7716 = uitofp i1 %7715 to float
  br label %7717

; <label>:7717                                    ; preds = %7696, %7620
  %7718 = phi float [ %7716, %7696 ], [ 1.000000e+00, %7620 ]
  %7719 = phi float [ %7705, %7696 ], [ %7688, %7620 ]
  %7720 = phi float [ %7706, %7696 ], [ %7689, %7620 ]
  %7721 = phi float [ %7707, %7696 ], [ %7690, %7620 ]
  %7722 = call float @dx.op.dot3.f32(i32 55, float %7643, float %7644, float %7645, float %7719, float %7720, float %7721)  ; Dot3(ax,ay,az,bx,by,bz)
  %7723 = fmul fast float %7722, %7722
  %7724 = call float @dx.op.unary.f32(i32 7, float %7723)  ; Saturate(value)
  %7725 = fsub fast float 1.000000e+00, %7724
  %7726 = fmul fast float %7725, 5.000000e-01
  %7727 = fcmp fast ogt float %7722, 0.000000e+00
  %7728 = fsub fast float 1.000000e+00, %7726
  %7729 = select i1 %7727, float %7726, float %7728
  %7730 = fmul fast float %7729, %7678
  %7731 = fadd fast float %7730, %7676
  %7732 = fmul fast float %7731, 0x3EF0001000000000
  %7733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %55, float %7732, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7734 = extractvalue %dx.types.ResRet.f32 %7733, 0
  %7735 = fmul fast float %7722, %7660
  %7736 = fadd fast float %7735, %7661
  %7737 = call float @dx.op.unary.f32(i32 7, float %7736)  ; Saturate(value)
  %7738 = select i1 %7681, float 1.000000e+00, float %7737
  %7739 = select i1 %7681, float %7737, float 1.000000e+00
  %7740 = fmul fast float %7686, %7657
  %7741 = fsub fast float 1.000000e+00, %7740
  %7742 = fmul fast float %7741, %7663
  %7743 = call float @dx.op.unary.f32(i32 7, float %7742)  ; Saturate(value)
  %7744 = fmul fast float %7743, %7739
  %7745 = fmul fast float %7744, 2.000000e+00
  %7746 = fsub fast float 3.000000e+00, %7745
  %7747 = fmul fast float %7734, %7718
  %7748 = fmul fast float %7744, %7744
  %7749 = fmul fast float %7748, %7747
  %7750 = fmul fast float %7749, %7746
  %7751 = call float @dx.op.binary.f32(i32 36, float %7750, float %7750)  ; FMin(a,b)
  %7752 = call float @dx.op.binary.f32(i32 36, float %7750, float %7751)  ; FMin(a,b)
  %7753 = fcmp fast ogt float %7752, 0.000000e+00
  br i1 %7753, label %7762, label %7754, !dx.controlflow.hints !135

; <label>:7754                                    ; preds = %8146, %7908, %7717
  %7755 = phi float [ %7622, %7908 ], [ %7622, %7717 ], [ %8186, %8146 ]
  %7756 = phi float [ %7623, %7908 ], [ %7623, %7717 ], [ %8187, %8146 ]
  %7757 = phi float [ %7624, %7908 ], [ %7624, %7717 ], [ %8188, %8146 ]
  %7758 = phi float [ %7625, %7908 ], [ %7625, %7717 ], [ %8180, %8146 ]
  %7759 = phi float [ %7626, %7908 ], [ %7626, %7717 ], [ %8181, %8146 ]
  %7760 = phi float [ %7627, %7908 ], [ %7627, %7717 ], [ %8182, %8146 ]
  %7761 = icmp eq i32 %7621, %7631
  br i1 %7761, label %8189, label %7620

; <label>:7762                                    ; preds = %7717
  %7763 = icmp eq i32 %7679, 255
  br i1 %7763, label %7908, label %7764, !dx.controlflow.hints !136

; <label>:7764                                    ; preds = %7762
  %7765 = mul nuw nsw i32 %7679, 176
  %7766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7765, i32 undef)  ; BufferLoad(srv,index,wot)
  %7767 = extractvalue %dx.types.ResRet.f32 %7766, 0
  %7768 = extractvalue %dx.types.ResRet.f32 %7766, 1
  %7769 = extractvalue %dx.types.ResRet.f32 %7766, 2
  %7770 = extractvalue %dx.types.ResRet.f32 %7766, 3
  %7771 = add nuw nsw i32 %7765, 16
  %7772 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7771, i32 undef)  ; BufferLoad(srv,index,wot)
  %7773 = extractvalue %dx.types.ResRet.f32 %7772, 0
  %7774 = extractvalue %dx.types.ResRet.f32 %7772, 1
  %7775 = add nuw nsw i32 %7765, 32
  %7776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7775, i32 undef)  ; BufferLoad(srv,index,wot)
  %7777 = extractvalue %dx.types.ResRet.f32 %7776, 0
  %7778 = extractvalue %dx.types.ResRet.f32 %7776, 1
  %7779 = extractvalue %dx.types.ResRet.f32 %7776, 2
  %7780 = add nuw nsw i32 %7765, 48
  %7781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7780, i32 undef)  ; BufferLoad(srv,index,wot)
  %7782 = extractvalue %dx.types.ResRet.f32 %7781, 0
  %7783 = extractvalue %dx.types.ResRet.f32 %7781, 1
  %7784 = extractvalue %dx.types.ResRet.f32 %7781, 2
  %7785 = extractvalue %dx.types.ResRet.f32 %7781, 3
  %7786 = add nuw nsw i32 %7765, 64
  %7787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7786, i32 undef)  ; BufferLoad(srv,index,wot)
  %7788 = extractvalue %dx.types.ResRet.f32 %7787, 0
  %7789 = extractvalue %dx.types.ResRet.f32 %7787, 1
  %7790 = extractvalue %dx.types.ResRet.f32 %7787, 2
  %7791 = extractvalue %dx.types.ResRet.f32 %7787, 3
  %7792 = add nuw nsw i32 %7765, 80
  %7793 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7792, i32 undef)  ; BufferLoad(srv,index,wot)
  %7794 = extractvalue %dx.types.ResRet.f32 %7793, 0
  %7795 = extractvalue %dx.types.ResRet.f32 %7793, 1
  %7796 = extractvalue %dx.types.ResRet.f32 %7793, 2
  %7797 = extractvalue %dx.types.ResRet.f32 %7793, 3
  %7798 = add nuw nsw i32 %7765, 96
  %7799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7798, i32 undef)  ; BufferLoad(srv,index,wot)
  %7800 = extractvalue %dx.types.ResRet.f32 %7799, 0
  %7801 = extractvalue %dx.types.ResRet.f32 %7799, 1
  %7802 = extractvalue %dx.types.ResRet.f32 %7799, 2
  %7803 = extractvalue %dx.types.ResRet.f32 %7799, 3
  %7804 = bitcast float %7774 to i32
  %7805 = fmul fast float %7779, %123
  %7806 = fmul fast float %7779, %124
  %7807 = fmul fast float %7779, %125
  %7808 = fadd fast float %7805, %203
  %7809 = fadd fast float %7806, %204
  %7810 = fadd fast float %7807, %205
  %7811 = fmul fast float %7808, %7782
  %7812 = call float @dx.op.tertiary.f32(i32 46, float %7809, float %7788, float %7811)  ; FMad(a,b,c)
  %7813 = call float @dx.op.tertiary.f32(i32 46, float %7810, float %7794, float %7812)  ; FMad(a,b,c)
  %7814 = fadd fast float %7813, %7800
  %7815 = fmul fast float %7808, %7783
  %7816 = call float @dx.op.tertiary.f32(i32 46, float %7809, float %7789, float %7815)  ; FMad(a,b,c)
  %7817 = call float @dx.op.tertiary.f32(i32 46, float %7810, float %7795, float %7816)  ; FMad(a,b,c)
  %7818 = fadd fast float %7817, %7801
  %7819 = fmul fast float %7808, %7784
  %7820 = call float @dx.op.tertiary.f32(i32 46, float %7809, float %7790, float %7819)  ; FMad(a,b,c)
  %7821 = call float @dx.op.tertiary.f32(i32 46, float %7810, float %7796, float %7820)  ; FMad(a,b,c)
  %7822 = fadd fast float %7821, %7802
  %7823 = fmul fast float %7808, %7785
  %7824 = call float @dx.op.tertiary.f32(i32 46, float %7809, float %7791, float %7823)  ; FMad(a,b,c)
  %7825 = call float @dx.op.tertiary.f32(i32 46, float %7810, float %7797, float %7824)  ; FMad(a,b,c)
  %7826 = fadd fast float %7825, %7803
  %7827 = fdiv fast float %7814, %7826
  %7828 = fdiv fast float %7818, %7826
  %7829 = fdiv fast float %7822, %7826
  %7830 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7829)  ; FMax(a,b)
  %7831 = fmul fast float %286, 0x401921FB60000000
  %7832 = call float @dx.op.unary.f32(i32 13, float %7831)  ; Sin(value)
  %7833 = call float @dx.op.unary.f32(i32 12, float %7831)  ; Cos(value)
  %7834 = fmul fast float %7833, %7778
  %7835 = call float @dx.op.tertiary.f32(i32 46, float %7832, float %7778, float 0.000000e+00)  ; FMad(a,b,c)
  %7836 = fmul fast float %7778, %7832
  %7837 = fsub fast float -0.000000e+00, %7836
  %7838 = call float @dx.op.tertiary.f32(i32 46, float %7833, float %7778, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7839

; <label>:7839                                    ; preds = %7839, %7764
  %7840 = phi float [ 0.000000e+00, %7764 ], [ %7872, %7839 ]
  %7841 = phi float [ 0.000000e+00, %7764 ], [ %7874, %7839 ]
  %7842 = phi i32 [ 0, %7764 ], [ %7875, %7839 ]
  %7843 = mul i32 %7842, 2
  %7844 = add i32 0, %7843
  %7845 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7844
  %7846 = load float, float* %7845, align 4
  %7847 = mul i32 %7842, 2
  %7848 = add i32 1, %7847
  %7849 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7848
  %7850 = load float, float* %7849, align 4
  %7851 = fmul fast float %7834, %7846
  %7852 = call float @dx.op.tertiary.f32(i32 46, float %7850, float %7837, float %7851)  ; FMad(a,b,c)
  %7853 = fmul fast float %7846, %7835
  %7854 = call float @dx.op.tertiary.f32(i32 46, float %7850, float %7838, float %7853)  ; FMad(a,b,c)
  %7855 = fadd fast float %7852, %7827
  %7856 = fadd fast float %7854, %7828
  %7857 = fmul fast float %7855, %7773
  %7858 = fmul fast float %7856, %7773
  %7859 = call float @dx.op.binary.f32(i32 35, float %7857, float %7769)  ; FMax(a,b)
  %7860 = call float @dx.op.binary.f32(i32 35, float %7858, float %7769)  ; FMax(a,b)
  %7861 = call float @dx.op.binary.f32(i32 36, float %7859, float %7770)  ; FMin(a,b)
  %7862 = call float @dx.op.binary.f32(i32 36, float %7860, float %7770)  ; FMin(a,b)
  %7863 = fadd fast float %7861, %7767
  %7864 = fadd fast float %7862, %7768
  %7865 = uitofp i32 %7804 to float
  %7866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %7863, float %7864, float %7865, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7867 = extractvalue %dx.types.ResRet.f32 %7866, 0
  %7868 = fsub fast float %7867, %7830
  %7869 = fsub fast float %7868, %7777
  %7870 = fcmp fast ogt float %7869, 0.000000e+00
  %7871 = select i1 %7870, float 1.000000e+00, float 0.000000e+00
  %7872 = fadd fast float %7871, %7840
  %7873 = select i1 %7870, float %7869, float 0.000000e+00
  %7874 = fadd fast float %7873, %7841
  %7875 = add nuw nsw i32 %7842, 1
  %7876 = icmp eq i32 %7875, 8
  br i1 %7876, label %7877, label %7839

; <label>:7877                                    ; preds = %7839
  %7878 = fdiv fast float 1.000000e+00, %7872
  %7879 = fmul fast float %7878, %7874
  %7880 = fdiv fast float 1.000000e+00, %7830
  %7881 = fmul fast float %7879, %7880
  %7882 = call float @dx.op.unary.f32(i32 7, float %7881)  ; Saturate(value)
  %7883 = call float @dx.op.binary.f32(i32 35, float %7882, float 0.000000e+00)  ; FMax(a,b)
  %7884 = fmul fast float %7872, 1.250000e-01
  %7885 = call float @dx.op.unary.f32(i32 7, float %7884)  ; Saturate(value)
  %7886 = fmul fast float %7885, 2.000000e+00
  %7887 = fadd fast float %7886, -1.000000e+00
  %7888 = fcmp fast ogt float %7887, 0.000000e+00
  %7889 = fcmp fast olt float %7887, 0.000000e+00
  %7890 = zext i1 %7888 to i32
  %7891 = zext i1 %7889 to i32
  %7892 = sub nsw i32 %7890, %7891
  %7893 = sitofp i32 %7892 to float
  %7894 = fmul fast float %7893, %7887
  %7895 = fsub fast float 1.000000e+00, %7894
  %7896 = fmul fast float %7895, %7895
  %7897 = fmul fast float %7896, %7895
  %7898 = fsub fast float %7895, %7897
  %7899 = fmul fast float %7898, %7883
  %7900 = fsub fast float 1.000000e+00, %7897
  %7901 = fsub fast float %7900, %7899
  %7902 = fmul fast float %7893, 5.000000e-01
  %7903 = fmul fast float %7902, %7901
  %7904 = fsub fast float -5.000000e-01, %7903
  %7905 = fmul fast float %7904, %7738
  %7906 = fadd fast float %7905, 1.000000e+00
  %7907 = fmul fast float %7906, %7750
  br label %7908

; <label>:7908                                    ; preds = %7877, %7762
  %7909 = phi float [ %7907, %7877 ], [ %7750, %7762 ]
  %7910 = call float @dx.op.binary.f32(i32 36, float %7909, float %7909)  ; FMin(a,b)
  %7911 = call float @dx.op.binary.f32(i32 36, float %7909, float %7910)  ; FMin(a,b)
  %7912 = fcmp fast ogt float %7911, 0.000000e+00
  br i1 %7912, label %7913, label %7754, !dx.controlflow.hints !137

; <label>:7913                                    ; preds = %7908
  %7914 = fmul fast float %7909, %7672
  %7915 = fmul fast float %7909, %7673
  %7916 = fmul fast float %7909, %7674
  %7917 = fsub fast float %7656, %4304
  %7918 = fcmp fast ogt float %7917, 0.000000e+00
  %7919 = fsub fast float %205, %4304
  %7920 = fcmp fast ogt float %7919, 0.000000e+00
  %7921 = xor i1 %7920, %7918
  %7922 = fsub fast float %4304, %7656
  %7923 = fmul fast float %7922, 2.000000e+00
  %7924 = fadd fast float %7923, %7656
  %7925 = select i1 %7921, float %7656, float %7924
  %7926 = fsub fast float %7925, %205
  %7927 = call float @dx.op.dot3.f32(i32 55, float %7682, float %7683, float %7926, float %7682, float %7683, float %7926)  ; Dot3(ax,ay,az,bx,by,bz)
  %7928 = call float @dx.op.unary.f32(i32 25, float %7927)  ; Rsqrt(value)
  %7929 = fmul fast float %7928, %7682
  %7930 = fmul fast float %7928, %7683
  %7931 = fmul fast float %7928, %7926
  %7932 = fsub fast float %4304, %205
  %7933 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7932)  ; Dot3(ax,ay,az,bx,by,bz)
  %7934 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7929, float %7930, float %7931)  ; Dot3(ax,ay,az,bx,by,bz)
  %7935 = fdiv fast float 1.000000e+00, %7934
  %7936 = fmul fast float %7935, %7933
  %7937 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7919, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7938 = fcmp fast ogt float %7937, 0.000000e+00
  %7939 = fcmp fast olt float %7937, 0.000000e+00
  %7940 = zext i1 %7938 to i32
  %7941 = zext i1 %7939 to i32
  %7942 = sub nsw i32 %7940, %7941
  %7943 = sitofp i32 %7942 to float
  %7944 = fsub fast float %7925, %4304
  %7945 = call float @dx.op.dot3.f32(i32 55, float %7682, float %7683, float %7944, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7946 = fcmp fast ogt float %7945, 0.000000e+00
  %7947 = fcmp fast olt float %7945, 0.000000e+00
  %7948 = zext i1 %7946 to i32
  %7949 = zext i1 %7947 to i32
  %7950 = sub nsw i32 %7948, %7949
  %7951 = sitofp i32 %7950 to float
  %7952 = fcmp fast une float %7943, %7951
  br i1 %7952, label %7953, label %7963

; <label>:7953                                    ; preds = %7913
  %7954 = fmul fast float %7936, %7931
  %7955 = fmul fast float %7936, %7930
  %7956 = fmul fast float %7936, %7929
  %7957 = fmul fast float %7956, %7956
  %7958 = fmul fast float %7955, %7955
  %7959 = fadd fast float %7957, %7958
  %7960 = fmul fast float %7954, %7954
  %7961 = fadd fast float %7959, %7960
  %7962 = call float @dx.op.unary.f32(i32 24, float %7961)  ; Sqrt(value)
  br label %7975

; <label>:7963                                    ; preds = %7913
  %7964 = icmp slt i32 %7942, 0
  br i1 %7964, label %7965, label %7975

; <label>:7965                                    ; preds = %7963
  %7966 = fsub fast float %203, %7654
  %7967 = fsub fast float %204, %7655
  %7968 = fsub fast float %205, %7925
  %7969 = fmul fast float %7966, %7966
  %7970 = fmul fast float %7967, %7967
  %7971 = fadd fast float %7969, %7970
  %7972 = fmul fast float %7968, %7968
  %7973 = fadd fast float %7971, %7972
  %7974 = call float @dx.op.unary.f32(i32 24, float %7973)  ; Sqrt(value)
  br label %7975

; <label>:7975                                    ; preds = %7965, %7963, %7953
  %7976 = phi float [ %7962, %7953 ], [ %7974, %7965 ], [ 0.000000e+00, %7963 ]
  %7977 = and i1 %7920, %7918
  %7978 = fsub fast float -0.000000e+00, %7976
  %7979 = select i1 %7977, float -0.000000e+00, float %7978
  %7980 = fmul fast float %4301, 0x3FF7154760000000
  %7981 = fmul fast float %7980, %7979
  %7982 = fmul fast float %4302, 0x3FF7154760000000
  %7983 = fmul fast float %7982, %7979
  %7984 = fmul fast float %4303, 0x3FF7154760000000
  %7985 = fmul fast float %7984, %7979
  %7986 = call float @dx.op.unary.f32(i32 21, float %7981)  ; Exp(value)
  %7987 = call float @dx.op.unary.f32(i32 21, float %7983)  ; Exp(value)
  %7988 = call float @dx.op.unary.f32(i32 21, float %7985)  ; Exp(value)
  %7989 = call float @dx.op.unary.f32(i32 7, float %7986)  ; Saturate(value)
  %7990 = call float @dx.op.unary.f32(i32 7, float %7987)  ; Saturate(value)
  %7991 = call float @dx.op.unary.f32(i32 7, float %7988)  ; Saturate(value)
  %7992 = fmul fast float %7914, %7989
  %7993 = fmul fast float %7915, %7990
  %7994 = fmul fast float %7916, %7991
  %7995 = fsub fast float %7688, %5093
  %7996 = fsub fast float %7689, %5092
  %7997 = fsub fast float %7690, %5091
  %7998 = call float @dx.op.dot3.f32(i32 55, float %7995, float %7996, float %7997, float %7995, float %7996, float %7997)  ; Dot3(ax,ay,az,bx,by,bz)
  %7999 = call float @dx.op.unary.f32(i32 25, float %7998)  ; Rsqrt(value)
  %8000 = fmul fast float %7999, %7995
  %8001 = fmul fast float %7999, %7996
  %8002 = fmul fast float %7999, %7997
  %8003 = call float @dx.op.dot3.f32(i32 55, float %7688, float %7689, float %7690, float %5100, float %5101, float %5102)  ; Dot3(ax,ay,az,bx,by,bz)
  %8004 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5089, float %5088, float %8000, float %8001, float %8002)  ; Dot3(ax,ay,az,bx,by,bz)
  %8005 = call float @dx.op.unary.f32(i32 7, float %8003)  ; Saturate(value)
  %8006 = fmul fast float %8005, %7695
  %8007 = fmul fast float %8005, %8005
  %8008 = fmul fast float %8007, %5133
  %8009 = call float @dx.op.unary.f32(i32 7, float %8008)  ; Saturate(value)
  %8010 = fmul fast float %8006, %8009
  %8011 = bitcast float %7685 to i32
  %8012 = ashr i32 %8011, 1
  %8013 = sub nsw i32 1597463007, %8012
  %8014 = bitcast i32 %8013 to float
  %8015 = fmul fast float %8014, %7682
  %8016 = fmul fast float %8014, %7683
  %8017 = fmul fast float %8014, %7684
  %8018 = fsub fast float %8015, %5093
  %8019 = fsub fast float %8016, %5092
  %8020 = fsub fast float %8017, %5091
  %8021 = call float @dx.op.dot3.f32(i32 55, float %8018, float %8019, float %8020, float %8018, float %8019, float %8020)  ; Dot3(ax,ay,az,bx,by,bz)
  %8022 = call float @dx.op.unary.f32(i32 25, float %8021)  ; Rsqrt(value)
  %8023 = fmul fast float %8018, %8022
  %8024 = fmul fast float %8019, %8022
  %8025 = fmul fast float %8020, %8022
  %8026 = call float @dx.op.dot3.f32(i32 55, float %5100, float %5101, float %5102, float %8023, float %8024, float %8025)  ; Dot3(ax,ay,az,bx,by,bz)
  %8027 = fmul fast float %8026, %8026
  %8028 = call float @dx.op.unary.f32(i32 6, float %8003)  ; FAbs(value)
  %8029 = fsub fast float 1.000000e+00, %5126
  %8030 = fmul fast float %5108, %5108
  %8031 = fmul fast float %8030, %8029
  %8032 = fadd fast float %8031, %5126
  %8033 = bitcast float %8032 to i32
  %8034 = ashr i32 %8033, 1
  %8035 = add nsw i32 %8034, 532487669
  %8036 = bitcast i32 %8035 to float
  %8037 = fadd fast float %8036, %5108
  %8038 = fmul fast float %5126, %8027
  %8039 = fsub fast float 1.000000e+00, %8027
  %8040 = fadd fast float %8039, %8038
  %8041 = fmul fast float %8028, %8028
  %8042 = fmul fast float %8041, %8029
  %8043 = fadd fast float %8042, %5126
  %8044 = bitcast float %8043 to i32
  %8045 = ashr i32 %8044, 1
  %8046 = add nsw i32 %8045, 532487669
  %8047 = bitcast i32 %8046 to float
  %8048 = fadd fast float %8047, %8028
  %8049 = fmul fast float %8040, %8040
  %8050 = fmul fast float %8049, %8037
  %8051 = fmul fast float %8050, %8048
  %8052 = fdiv fast float 1.000000e+00, %8051
  %8053 = bitcast float %5126 to i32
  %8054 = sitofp i32 %8053 to float
  %8055 = fmul fast float %8054, 0x3FE7F73180000000
  %8056 = fadd fast float %8055, 0x41AFE27C40000000
  %8057 = fptosi float %8056 to i32
  %8058 = bitcast i32 %8057 to float
  %8059 = fmul fast float %7651, 0x3FD80E9D60000000
  %8060 = fmul fast float %8059, %8014
  %8061 = fadd fast float %8058, %8060
  %8062 = bitcast float %8061 to i32
  %8063 = sub nsw i32 2129859010, %8062
  %8064 = bitcast i32 %8063 to float
  %8065 = fmul fast float %5126, %8052
  %8066 = fmul fast float %8065, %8058
  %8067 = fmul fast float %8066, %8064
  %8068 = call float @dx.op.unary.f32(i32 6, float %8004)  ; FAbs(value)
  %8069 = fsub fast float 1.000000e+00, %8068
  %8070 = bitcast float %8069 to i32
  %8071 = sitofp i32 %8070 to float
  %8072 = fmul fast float %8071, 5.000000e+00
  %8073 = fadd fast float %8072, 0xC1EFBF8940000000
  %8074 = fptosi float %8073 to i32
  %8075 = bitcast i32 %8074 to float
  %8076 = fsub fast float 1.000000e+00, %5097
  %8077 = fsub fast float 1.000000e+00, %5098
  %8078 = fsub fast float 1.000000e+00, %5106
  %8079 = fmul fast float %8075, %8076
  %8080 = fmul fast float %8075, %8077
  %8081 = fmul fast float %8075, %8078
  %8082 = fadd fast float %8079, %5097
  %8083 = fadd fast float %8080, %5098
  %8084 = fadd fast float %8081, %5106
  br i1 %5245, label %8085, label %8108

; <label>:8085                                    ; preds = %7975
  %8086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3899, float %8068, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8087 = extractvalue %dx.types.ResRet.f32 %8086, 0
  %8088 = extractvalue %dx.types.ResRet.f32 %8086, 1
  %8089 = extractvalue %dx.types.ResRet.f32 %8086, 2
  %8090 = fadd fast float %8087, -5.000000e-01
  %8091 = fadd fast float %8088, -5.000000e-01
  %8092 = fadd fast float %8089, -5.000000e-01
  %8093 = fmul fast float %5097, 4.000000e+00
  %8094 = fmul fast float %8093, %8076
  %8095 = fmul fast float %8094, %8090
  %8096 = fmul fast float %5098, 4.000000e+00
  %8097 = fmul fast float %8096, %8077
  %8098 = fmul fast float %8097, %8091
  %8099 = fmul fast float %5106, 4.000000e+00
  %8100 = fmul fast float %8099, %8078
  %8101 = fmul fast float %8100, %8092
  %8102 = fadd fast float %8095, %8082
  %8103 = fadd fast float %8098, %8083
  %8104 = fadd fast float %8101, %8084
  %8105 = call float @dx.op.unary.f32(i32 7, float %8102)  ; Saturate(value)
  %8106 = call float @dx.op.unary.f32(i32 7, float %8103)  ; Saturate(value)
  %8107 = call float @dx.op.unary.f32(i32 7, float %8104)  ; Saturate(value)
  br label %8108

; <label>:8108                                    ; preds = %8085, %7975
  %8109 = phi float [ %8105, %8085 ], [ %8082, %7975 ]
  %8110 = phi float [ %8106, %8085 ], [ %8083, %7975 ]
  %8111 = phi float [ %8107, %8085 ], [ %8084, %7975 ]
  %8112 = fmul fast float %8003, 9.843750e-01
  %8113 = fadd fast float %8112, 7.812500e-03
  %8114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %8113, float %5235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8115 = extractvalue %dx.types.ResRet.f32 %8114, 2
  %8116 = extractvalue %dx.types.ResRet.f32 %8114, 3
  %8117 = fmul fast float %8115, %5097
  %8118 = fmul fast float %8115, %5098
  %8119 = fmul fast float %8115, %5106
  %8120 = fadd fast float %8117, %8116
  %8121 = fadd fast float %8118, %8116
  %8122 = fadd fast float %8119, %8116
  br i1 %5245, label %8123, label %8146

; <label>:8123                                    ; preds = %8108
  %8124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3899, float %8003, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8125 = extractvalue %dx.types.ResRet.f32 %8124, 0
  %8126 = extractvalue %dx.types.ResRet.f32 %8124, 1
  %8127 = extractvalue %dx.types.ResRet.f32 %8124, 2
  %8128 = fadd fast float %8125, -5.000000e-01
  %8129 = fadd fast float %8126, -5.000000e-01
  %8130 = fadd fast float %8127, -5.000000e-01
  %8131 = fmul fast float %5097, 4.000000e+00
  %8132 = fmul fast float %8131, %8076
  %8133 = fmul fast float %8132, %8128
  %8134 = fmul fast float %5098, 4.000000e+00
  %8135 = fmul fast float %8134, %8077
  %8136 = fmul fast float %8135, %8129
  %8137 = fmul fast float %5106, 4.000000e+00
  %8138 = fmul fast float %8137, %8078
  %8139 = fmul fast float %8138, %8130
  %8140 = fadd fast float %8133, %8120
  %8141 = fadd fast float %8136, %8121
  %8142 = fadd fast float %8139, %8122
  %8143 = call float @dx.op.unary.f32(i32 7, float %8140)  ; Saturate(value)
  %8144 = call float @dx.op.unary.f32(i32 7, float %8141)  ; Saturate(value)
  %8145 = call float @dx.op.unary.f32(i32 7, float %8142)  ; Saturate(value)
  br label %8146

; <label>:8146                                    ; preds = %8123, %8108
  %8147 = phi float [ %8143, %8123 ], [ %8120, %8108 ]
  %8148 = phi float [ %8144, %8123 ], [ %8121, %8108 ]
  %8149 = phi float [ %8145, %8123 ], [ %8122, %8108 ]
  %8150 = call float @dx.op.binary.f32(i32 35, float %8148, float %8149)  ; FMax(a,b)
  %8151 = call float @dx.op.binary.f32(i32 35, float %8147, float %8150)  ; FMax(a,b)
  %8152 = fsub fast float 1.000000e+00, %8151
  %8153 = fmul fast float %8109, %8067
  %8154 = fmul fast float %8110, %8067
  %8155 = fmul fast float %8111, %8067
  %8156 = fsub fast float 1.000000e+00, %8004
  %8157 = bitcast float %8156 to i32
  %8158 = sitofp i32 %8157 to float
  %8159 = fmul fast float %8158, 5.000000e+00
  %8160 = fadd fast float %8159, 0xC1EFBF8940000000
  %8161 = fptosi float %8160 to i32
  %8162 = bitcast i32 %8161 to float
  %8163 = fmul fast float %8162, %3900
  %8164 = fmul fast float %8152, %8163
  %8165 = fmul fast float %8164, %5787
  %8166 = fmul fast float %8164, %5788
  %8167 = fmul fast float %8164, %5789
  %8168 = fadd fast float %8165, %8153
  %8169 = fadd fast float %8166, %8154
  %8170 = fadd fast float %8167, %8155
  %8171 = fmul fast float %7992, %3896
  %8172 = fmul fast float %8171, %8010
  %8173 = fmul fast float %8172, %8152
  %8174 = fmul fast float %7993, %3896
  %8175 = fmul fast float %8174, %8010
  %8176 = fmul fast float %8175, %8152
  %8177 = fmul fast float %7994, %3896
  %8178 = fmul fast float %8177, %8010
  %8179 = fmul fast float %8178, %8152
  %8180 = fadd fast float %8173, %7625
  %8181 = fadd fast float %8176, %7626
  %8182 = fadd fast float %8179, %7627
  %8183 = fmul fast float %8172, %8168
  %8184 = fmul fast float %8175, %8169
  %8185 = fmul fast float %8178, %8170
  %8186 = fadd fast float %8183, %7622
  %8187 = fadd fast float %8184, %7623
  %8188 = fadd fast float %8185, %7624
  br label %7754

; <label>:8189                                    ; preds = %7754
  br label %8190

; <label>:8190                                    ; preds = %8189, %7588
  %8191 = phi float [ %7590, %7588 ], [ %7755, %8189 ]
  %8192 = phi float [ %7591, %7588 ], [ %7756, %8189 ]
  %8193 = phi float [ %7592, %7588 ], [ %7757, %8189 ]
  %8194 = phi float [ %7593, %7588 ], [ %7758, %8189 ]
  %8195 = phi float [ %7594, %7588 ], [ %7759, %8189 ]
  %8196 = phi float [ %7595, %7588 ], [ %7760, %8189 ]
  %8197 = add i32 %7589, 1
  %8198 = icmp ugt i32 %8197, %7585
  br i1 %8198, label %8199, label %7588

; <label>:8199                                    ; preds = %8190
  br label %8200

; <label>:8200                                    ; preds = %8199, %7538, %7528
  %8201 = phi float [ %7529, %7528 ], [ %7529, %7538 ], [ %8191, %8199 ]
  %8202 = phi float [ %7530, %7528 ], [ %7530, %7538 ], [ %8192, %8199 ]
  %8203 = phi float [ %7531, %7528 ], [ %7531, %7538 ], [ %8193, %8199 ]
  %8204 = phi float [ %7532, %7528 ], [ %7532, %7538 ], [ %8194, %8199 ]
  %8205 = phi float [ %7533, %7528 ], [ %7533, %7538 ], [ %8195, %8199 ]
  %8206 = phi float [ %7534, %7528 ], [ %7534, %7538 ], [ %8196, %8199 ]
  %8207 = fmul fast float %3896, %3896
  %8208 = fsub fast float 1.000000e+00, %8207
  %8209 = call float @dx.op.dot3.f32(i32 55, float %8208, float %8208, float %8208, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8210 = fsub fast float 1.000000e+00, %8209
  %8211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8212 = extractvalue %dx.types.CBufRet.f32 %8211, 0
  %8213 = fmul fast float %8212, %5793
  %8214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8215 = extractvalue %dx.types.CBufRet.f32 %8214, 3
  %8216 = fsub fast float 1.000000e+00, %3904
  %8217 = call float @dx.op.unary.f32(i32 7, float %8216)  ; Saturate(value)
  %8218 = fadd fast float %8206, %3902
  %8219 = fmul fast float %8218, %3904
  %8220 = fmul fast float %8217, %8215
  %8221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8222 = extractvalue %dx.types.CBufRet.f32 %8221, 3
  %8223 = fmul fast float %8204, %5094
  %8224 = fmul fast float %8205, %5095
  %8225 = fmul fast float %8206, %5096
  %8226 = fcmp fast ogt float %103, %238
  %8227 = and i1 %8226, %4307
  %8228 = or i1 %4313, %8227
  %8229 = icmp eq i32 %4306, 2
  %8230 = fcmp fast ole float %103, %238
  %8231 = and i1 %8230, %8229
  %8232 = or i1 %8231, %8228
  br i1 %8227, label %8233, label %8490

; <label>:8233                                    ; preds = %8200
  %8234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8235 = extractvalue %dx.types.CBufRet.f32 %8234, 2
  %8236 = extractvalue %dx.types.CBufRet.f32 %8234, 3
  %8237 = fmul fast float %8235, %116
  %8238 = fmul fast float %8236, %117
  %8239 = call float @dx.op.unary.f32(i32 7, float %8237)  ; Saturate(value)
  %8240 = call float @dx.op.unary.f32(i32 7, float %8238)  ; Saturate(value)
  %8241 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8239, float %8240, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8242 = extractvalue %dx.types.ResRet.f32 %8241, 0
  %8243 = extractvalue %dx.types.ResRet.f32 %8241, 1
  %8244 = extractvalue %dx.types.ResRet.f32 %8241, 2
  %8245 = extractvalue %dx.types.ResRet.f32 %8241, 3
  %8246 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8239, float %8240, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8247 = extractvalue %dx.types.ResRet.f32 %8246, 0
  %8248 = extractvalue %dx.types.ResRet.f32 %8246, 1
  %8249 = extractvalue %dx.types.ResRet.f32 %8246, 2
  %8250 = extractvalue %dx.types.ResRet.f32 %8246, 3
  %8251 = call float @dx.op.binary.f32(i32 35, float %8243, float %8244)  ; FMax(a,b)
  %8252 = call float @dx.op.binary.f32(i32 35, float %8242, float %8251)  ; FMax(a,b)
  %8253 = call float @dx.op.binary.f32(i32 35, float %8252, float %8245)  ; FMax(a,b)
  %8254 = call float @dx.op.binary.f32(i32 36, float %8248, float %8249)  ; FMin(a,b)
  %8255 = call float @dx.op.binary.f32(i32 36, float %8247, float %8254)  ; FMin(a,b)
  %8256 = call float @dx.op.binary.f32(i32 36, float %8255, float %8250)  ; FMin(a,b)
  %8257 = fmul fast float %8253, 2.550000e+02
  %8258 = fadd fast float %8257, 0x3F70101020000000
  %8259 = fptoui float %8258 to i32
  %8260 = fmul fast float %8256, 2.550000e+02
  %8261 = fadd fast float %8260, 0x3F70101020000000
  %8262 = fptoui float %8261 to i32
  %8263 = icmp ult i32 %8259, %8262
  br i1 %8263, label %8264, label %8432

; <label>:8264                                    ; preds = %8233
  %8265 = fcmp fast ogt float %102, 9.843750e-01
  %8266 = fadd fast float %103, -4.000000e+00
  %8267 = select i1 %8265, float -4.000000e+00, float %8266
  %8268 = call float @dx.op.binary.f32(i32 35, float %8267, float 0.000000e+00)  ; FMax(a,b)
  %8269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8270 = extractvalue %dx.types.CBufRet.f32 %8269, 0
  %8271 = fadd fast float %8270, %8268
  %8272 = extractvalue %dx.types.CBufRet.f32 %8269, 2
  %8273 = fmul fast float %8271, %8272
  %8274 = call float @dx.op.unary.f32(i32 23, float %8273)  ; Log(value)
  %8275 = extractvalue %dx.types.CBufRet.f32 %8269, 3
  %8276 = fmul fast float %8275, %8274
  %8277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8278 = extractvalue %dx.types.CBufRet.f32 %8277, 2
  %8279 = fmul fast float %8276, %8278
  %8280 = call float @dx.op.unary.f32(i32 7, float %8279)  ; Saturate(value)
  %8281 = uitofp i32 %8259 to float
  %8282 = uitofp i32 %8262 to float
  %8283 = fadd fast float %8281, 5.000000e-01
  %8284 = fadd fast float %8282, 5.000000e-01
  %8285 = fmul fast float %8278, %8283
  %8286 = fmul fast float %8278, %8284
  %8287 = fadd fast float %8285, 0x3F0FFB4800000000
  %8288 = fadd fast float %8286, 0xBF0FFB4800000000
  %8289 = call float @dx.op.binary.f32(i32 35, float %8280, float %8287)  ; FMax(a,b)
  %8290 = call float @dx.op.binary.f32(i32 36, float %8289, float %8288)  ; FMin(a,b)
  %8291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8292 = extractvalue %dx.types.CBufRet.f32 %8291, 1
  %8293 = extractvalue %dx.types.CBufRet.f32 %8291, 2
  %8294 = extractvalue %dx.types.CBufRet.f32 %8291, 0
  %8295 = fmul fast float %8292, %8290
  %8296 = fadd fast float %8294, %8295
  %8297 = fadd fast float %8294, %8293
  %8298 = fsub fast float %8292, %8293
  %8299 = fadd fast float %8298, %8294
  %8300 = call float @dx.op.binary.f32(i32 35, float %8296, float %8297)  ; FMax(a,b)
  %8301 = call float @dx.op.binary.f32(i32 36, float %8300, float %8299)  ; FMin(a,b)
  %8302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %8239, float %8240, float %8301, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8303 = extractvalue %dx.types.ResRet.f32 %8302, 0
  %8304 = extractvalue %dx.types.ResRet.f32 %8302, 1
  %8305 = extractvalue %dx.types.ResRet.f32 %8302, 2
  %8306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8307 = extractvalue %dx.types.CBufRet.i32 %8306, 0
  %8308 = extractvalue %dx.types.CBufRet.i32 %8306, 1
  %8309 = uitofp i32 %8307 to float
  %8310 = uitofp i32 %8308 to float
  %8311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8312 = extractvalue %dx.types.CBufRet.f32 %8311, 0
  %8313 = extractvalue %dx.types.CBufRet.f32 %8311, 1
  %8314 = fmul fast float %8309, %8239
  %8315 = fmul fast float %8310, %8240
  %8316 = fadd fast float %8314, -5.000000e-01
  %8317 = fadd fast float %8315, -5.000000e-01
  %8318 = call float @dx.op.unary.f32(i32 22, float %8316)  ; Frc(value)
  %8319 = call float @dx.op.unary.f32(i32 22, float %8317)  ; Frc(value)
  %8320 = fmul fast float %8318, %8318
  %8321 = fmul fast float %8320, %8318
  %8322 = fsub fast float 3.000000e+00, %8318
  %8323 = fmul fast float %8320, %8322
  %8324 = fmul fast float %8318, 3.000000e+00
  %8325 = fmul fast float %8321, 3.000000e+00
  %8326 = fmul fast float %8320, 6.000000e+00
  %8327 = fsub fast float %8325, %8326
  %8328 = fadd fast float %8327, 4.000000e+00
  %8329 = fmul fast float %8328, 0x3FC5555560000000
  %8330 = fmul fast float %8321, -3.000000e+00
  %8331 = fadd fast float %8320, %8318
  %8332 = fmul fast float %8331, 3.000000e+00
  %8333 = fadd fast float %8330, 1.000000e+00
  %8334 = fadd fast float %8333, %8332
  %8335 = fmul fast float %8321, 0x3FC5555560000000
  %8336 = fmul fast float %8319, %8319
  %8337 = fmul fast float %8336, %8319
  %8338 = fsub fast float 3.000000e+00, %8319
  %8339 = fmul fast float %8336, %8338
  %8340 = fmul fast float %8319, 3.000000e+00
  %8341 = fmul fast float %8337, 3.000000e+00
  %8342 = fmul fast float %8336, 6.000000e+00
  %8343 = fsub fast float %8341, %8342
  %8344 = fadd fast float %8343, 4.000000e+00
  %8345 = fmul fast float %8344, 0x3FC5555560000000
  %8346 = fmul fast float %8337, -3.000000e+00
  %8347 = fadd fast float %8336, %8319
  %8348 = fmul fast float %8347, 3.000000e+00
  %8349 = fadd fast float %8346, 1.000000e+00
  %8350 = fadd fast float %8349, %8348
  %8351 = fmul fast float %8337, 0x3FC5555560000000
  %8352 = fadd fast float %8318, 1.000000e+00
  %8353 = fsub fast float 1.000000e+00, %8324
  %8354 = fadd fast float %8353, %8323
  %8355 = fadd fast float %8354, %8328
  %8356 = fmul fast float %8355, 0x3FC5555560000000
  %8357 = fdiv fast float %8329, %8356
  %8358 = fsub fast float %8352, %8357
  %8359 = fsub fast float 1.000000e+00, %8318
  %8360 = fadd fast float %8334, %8321
  %8361 = fmul fast float %8360, 0x3FC5555560000000
  %8362 = fdiv fast float %8335, %8361
  %8363 = fadd fast float %8359, %8362
  %8364 = fadd fast float %8319, 1.000000e+00
  %8365 = fsub fast float 1.000000e+00, %8340
  %8366 = fadd fast float %8365, %8339
  %8367 = fadd fast float %8366, %8344
  %8368 = fmul fast float %8367, 0x3FC5555560000000
  %8369 = fdiv fast float %8345, %8368
  %8370 = fsub fast float %8364, %8369
  %8371 = fsub fast float 1.000000e+00, %8319
  %8372 = fadd fast float %8350, %8337
  %8373 = fmul fast float %8372, 0x3FC5555560000000
  %8374 = fdiv fast float %8351, %8373
  %8375 = fadd fast float %8374, %8371
  %8376 = fmul fast float %8358, %8312
  %8377 = fsub fast float %8239, %8376
  %8378 = fmul fast float %8363, %8312
  %8379 = fadd fast float %8378, %8239
  %8380 = fmul fast float %8375, %8313
  %8381 = fadd fast float %8380, %8240
  %8382 = fmul fast float %8370, %8313
  %8383 = fsub fast float %8240, %8382
  %8384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8377, float %8383, float %8301, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8385 = extractvalue %dx.types.ResRet.f32 %8384, 0
  %8386 = extractvalue %dx.types.ResRet.f32 %8384, 1
  %8387 = extractvalue %dx.types.ResRet.f32 %8384, 2
  %8388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8379, float %8383, float %8301, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8389 = extractvalue %dx.types.ResRet.f32 %8388, 0
  %8390 = extractvalue %dx.types.ResRet.f32 %8388, 1
  %8391 = extractvalue %dx.types.ResRet.f32 %8388, 2
  %8392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8377, float %8381, float %8301, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8393 = extractvalue %dx.types.ResRet.f32 %8392, 0
  %8394 = extractvalue %dx.types.ResRet.f32 %8392, 1
  %8395 = extractvalue %dx.types.ResRet.f32 %8392, 2
  %8396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8379, float %8381, float %8301, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8397 = extractvalue %dx.types.ResRet.f32 %8396, 0
  %8398 = extractvalue %dx.types.ResRet.f32 %8396, 1
  %8399 = extractvalue %dx.types.ResRet.f32 %8396, 2
  %8400 = fsub fast float %8393, %8385
  %8401 = fsub fast float %8394, %8386
  %8402 = fsub fast float %8395, %8387
  %8403 = fmul fast float %8400, %8373
  %8404 = fmul fast float %8401, %8373
  %8405 = fmul fast float %8402, %8373
  %8406 = fadd fast float %8403, %8385
  %8407 = fadd fast float %8404, %8386
  %8408 = fadd fast float %8405, %8387
  %8409 = fsub fast float %8397, %8389
  %8410 = fsub fast float %8398, %8390
  %8411 = fsub fast float %8399, %8391
  %8412 = fmul fast float %8409, %8373
  %8413 = fmul fast float %8410, %8373
  %8414 = fmul fast float %8411, %8373
  %8415 = fsub fast float %8389, %8406
  %8416 = fadd fast float %8415, %8412
  %8417 = fsub fast float %8390, %8407
  %8418 = fadd fast float %8417, %8413
  %8419 = fsub fast float %8391, %8408
  %8420 = fadd fast float %8419, %8414
  %8421 = fmul fast float %8416, %8361
  %8422 = fmul fast float %8418, %8361
  %8423 = fmul fast float %8420, %8361
  %8424 = fadd fast float %8421, %8406
  %8425 = fadd fast float %8422, %8407
  %8426 = fadd fast float %8423, %8408
  %8427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8428 = extractvalue %dx.types.CBufRet.f32 %8427, 1
  %8429 = fmul fast float %8424, %8428
  %8430 = fmul fast float %8425, %8428
  %8431 = fmul fast float %8426, %8428
  br label %8432

; <label>:8432                                    ; preds = %8264, %8233
  %8433 = phi float [ %8303, %8264 ], [ 1.000000e+00, %8233 ]
  %8434 = phi float [ %8304, %8264 ], [ 1.000000e+00, %8233 ]
  %8435 = phi float [ %8305, %8264 ], [ 1.000000e+00, %8233 ]
  %8436 = phi float [ %8429, %8264 ], [ 0.000000e+00, %8233 ]
  %8437 = phi float [ %8430, %8264 ], [ 0.000000e+00, %8233 ]
  %8438 = phi float [ %8431, %8264 ], [ 0.000000e+00, %8233 ]
  %8439 = fmul fast float %8436, %8210
  %8440 = fmul fast float %8437, %8210
  %8441 = fmul fast float %8438, %8210
  %8442 = call float @dx.op.dot3.f32(i32 55, float %8433, float %8434, float %8435, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8443 = call float @dx.op.dot3.f32(i32 55, float %8439, float %8440, float %8441, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8444 = select i1 %275, float %8442, float %8433
  %8445 = select i1 %275, float %8442, float %8434
  %8446 = select i1 %275, float 1.000000e+00, float %8435
  %8447 = select i1 %275, float %8443, float %8439
  %8448 = select i1 %275, float 0.000000e+00, float %8440
  %8449 = select i1 %275, float 0.000000e+00, float %8441
  %8450 = fmul fast float %8444, %8223
  %8451 = fmul fast float %8445, %8224
  %8452 = fmul fast float %8446, %8225
  %8453 = fadd fast float %8450, %8447
  %8454 = fadd fast float %8451, %8448
  %8455 = fadd fast float %8449, %8452
  %8456 = fmul fast float %8444, %8201
  %8457 = fmul fast float %8445, %8202
  %8458 = fmul fast float %8446, %8203
  %8459 = fmul fast float %152, %8235
  %8460 = fmul fast float %154, %8236
  %8461 = fsub fast float 1.000000e+00, %8459
  %8462 = fsub fast float 1.000000e+00, %8460
  %8463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8464 = extractvalue %dx.types.CBufRet.f32 %8463, 0
  %8465 = extractvalue %dx.types.CBufRet.f32 %8463, 1
  %8466 = extractvalue %dx.types.CBufRet.f32 %8463, 2
  %8467 = fmul fast float %8461, %8464
  %8468 = fmul fast float %8461, %8465
  %8469 = fmul fast float %8461, %8466
  %8470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8471 = extractvalue %dx.types.CBufRet.f32 %8470, 0
  %8472 = extractvalue %dx.types.CBufRet.f32 %8470, 1
  %8473 = extractvalue %dx.types.CBufRet.f32 %8470, 2
  %8474 = fmul fast float %8462, %8471
  %8475 = fmul fast float %8462, %8472
  %8476 = fmul fast float %8462, %8473
  %8477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8478 = extractvalue %dx.types.CBufRet.f32 %8477, 0
  %8479 = extractvalue %dx.types.CBufRet.f32 %8477, 1
  %8480 = extractvalue %dx.types.CBufRet.f32 %8477, 2
  %8481 = fadd fast float %8474, %8478
  %8482 = fadd fast float %8481, %8467
  %8483 = fadd fast float %8475, %8479
  %8484 = fadd fast float %8483, %8468
  %8485 = fadd fast float %8476, %8480
  %8486 = fadd fast float %8485, %8469
  %8487 = fmul fast float %8482, %238
  %8488 = fmul fast float %8484, %238
  %8489 = fmul fast float %8486, %238
  br label %8490

; <label>:8490                                    ; preds = %8432, %8200
  %8491 = phi float [ %8487, %8432 ], [ %203, %8200 ]
  %8492 = phi float [ %8488, %8432 ], [ %204, %8200 ]
  %8493 = phi float [ %8489, %8432 ], [ %205, %8200 ]
  %8494 = phi float [ %238, %8432 ], [ %103, %8200 ]
  %8495 = phi float [ %8453, %8432 ], [ %8223, %8200 ]
  %8496 = phi float [ %8454, %8432 ], [ %8224, %8200 ]
  %8497 = phi float [ %8455, %8432 ], [ %8225, %8200 ]
  %8498 = phi float [ %8456, %8432 ], [ %8201, %8200 ]
  %8499 = phi float [ %8457, %8432 ], [ %8202, %8200 ]
  %8500 = phi float [ %8458, %8432 ], [ %8203, %8200 ]
  %8501 = phi float [ %8433, %8432 ], [ 1.000000e+00, %8200 ]
  br i1 %8232, label %9656, label %8502

; <label>:8502                                    ; preds = %8490
  %8503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8504 = extractvalue %dx.types.CBufRet.f32 %8503, 0
  %8505 = extractvalue %dx.types.CBufRet.f32 %8503, 1
  %8506 = extractvalue %dx.types.CBufRet.f32 %8503, 2
  %8507 = extractvalue %dx.types.CBufRet.f32 %8503, 3
  %8508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8509 = extractvalue %dx.types.CBufRet.f32 %8508, 0
  %8510 = extractvalue %dx.types.CBufRet.f32 %8508, 1
  %8511 = extractvalue %dx.types.CBufRet.f32 %8508, 2
  %8512 = extractvalue %dx.types.CBufRet.f32 %8508, 3
  %8513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8514 = extractvalue %dx.types.CBufRet.f32 %8513, 0
  %8515 = extractvalue %dx.types.CBufRet.f32 %8513, 1
  %8516 = extractvalue %dx.types.CBufRet.f32 %8513, 2
  %8517 = extractvalue %dx.types.CBufRet.f32 %8513, 3
  %8518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8519 = extractvalue %dx.types.CBufRet.f32 %8518, 0
  %8520 = extractvalue %dx.types.CBufRet.f32 %8518, 1
  %8521 = extractvalue %dx.types.CBufRet.f32 %8518, 2
  %8522 = extractvalue %dx.types.CBufRet.f32 %8518, 3
  %8523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8524 = extractvalue %dx.types.CBufRet.f32 %8523, 3
  %8525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8526 = extractvalue %dx.types.CBufRet.f32 %8525, 3
  %8527 = extractvalue %dx.types.CBufRet.f32 %8525, 0
  %8528 = extractvalue %dx.types.CBufRet.f32 %8525, 1
  %8529 = extractvalue %dx.types.CBufRet.f32 %8525, 2
  %8530 = fcmp fast olt float %8529, -5.000000e-01
  %8531 = call float @dx.op.dot3.f32(i32 55, float %8491, float %8492, float %8493, float %8491, float %8492, float %8493)  ; Dot3(ax,ay,az,bx,by,bz)
  %8532 = call float @dx.op.unary.f32(i32 25, float %8531)  ; Rsqrt(value)
  %8533 = fmul fast float %8532, %8531
  %8534 = fmul fast float %8532, %8491
  %8535 = fmul fast float %8532, %8492
  %8536 = fmul fast float %8532, %8493
  %8537 = fadd fast float %8533, %8507
  %8538 = call float @dx.op.dot3.f32(i32 55, float %8534, float %8535, float %8536, float %8504, float %8505, float %8506)  ; Dot3(ax,ay,az,bx,by,bz)
  %8539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8540 = extractvalue %dx.types.CBufRet.i32 %8539, 1
  %8541 = and i32 %8540, 1
  %8542 = icmp ne i32 %8541, 0
  %8543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8544 = extractvalue %dx.types.CBufRet.f32 %8543, 2
  %8545 = fcmp fast ogt float %8544, 0.000000e+00
  %8546 = and i1 %8542, %8545
  br i1 %8546, label %8547, label %8953, !dx.controlflow.hints !138

; <label>:8547                                    ; preds = %8502
  %8548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8549 = extractvalue %dx.types.CBufRet.f32 %8548, 3
  %8550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8551 = extractvalue %dx.types.CBufRet.f32 %8550, 2
  %8552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8553 = extractvalue %dx.types.CBufRet.f32 %8552, 2
  %8554 = fsub fast float %8551, %8553
  %8555 = and i32 %8540, 2
  %8556 = extractvalue %dx.types.CBufRet.i32 %8539, 0
  %8557 = call i32 @dx.op.binary.i32(i32 40, i32 %8556, i32 3)  ; UMin(a,b)
  %8558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8559 = extractvalue %dx.types.CBufRet.f32 %8558, 0
  %8560 = extractvalue %dx.types.CBufRet.f32 %8558, 1
  %8561 = extractvalue %dx.types.CBufRet.f32 %8552, 0
  %8562 = extractvalue %dx.types.CBufRet.f32 %8552, 1
  %8563 = fsub fast float %8559, %8561
  %8564 = fsub fast float %8560, %8562
  %8565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8566 = extractvalue %dx.types.CBufRet.f32 %8565, 0
  %8567 = fcmp fast ogt float %8566, 0.000000e+00
  %8568 = fsub fast float -0.000000e+00, %8563
  %8569 = fsub fast float -0.000000e+00, %8564
  %8570 = call float @dx.op.dot2.f32(i32 54, float %8534, float %8535, float %8534, float %8535)  ; Dot2(ax,ay,bx,by)
  %8571 = call float @dx.op.dot2.f32(i32 54, float %8534, float %8535, float %8568, float %8569)  ; Dot2(ax,ay,bx,by)
  %8572 = fmul fast float %8571, 2.000000e+00
  %8573 = call float @dx.op.dot2.f32(i32 54, float %8568, float %8569, float %8568, float %8569)  ; Dot2(ax,ay,bx,by)
  %8574 = fmul fast float %8566, %8566
  %8575 = fsub fast float %8573, %8574
  %8576 = fmul fast float %8572, %8572
  %8577 = fmul fast float %8570, 4.000000e+00
  %8578 = fmul fast float %8577, %8575
  %8579 = fsub fast float %8576, %8578
  %8580 = fcmp fast ogt float %8579, 0.000000e+00
  br i1 %8580, label %8581, label %8596

; <label>:8581                                    ; preds = %8547
  %8582 = fcmp fast ogt float %8572, 0.000000e+00
  %8583 = call float @dx.op.unary.f32(i32 24, float %8579)  ; Sqrt(value)
  %8584 = fsub fast float -0.000000e+00, %8583
  %8585 = select i1 %8582, float %8583, float %8584
  %8586 = fadd fast float %8585, %8572
  %8587 = fmul float %8586, -5.000000e-01
  %8588 = fdiv fast float %8587, %8570
  %8589 = call float @dx.op.binary.f32(i32 35, float %8588, float 0.000000e+00)  ; FMax(a,b)
  %8590 = call float @dx.op.binary.f32(i32 36, float %8533, float %8589)  ; FMin(a,b)
  %8591 = fdiv fast float %8575, %8587
  %8592 = call float @dx.op.binary.f32(i32 35, float %8591, float 0.000000e+00)  ; FMax(a,b)
  %8593 = call float @dx.op.binary.f32(i32 36, float %8533, float %8592)  ; FMin(a,b)
  %8594 = call float @dx.op.binary.f32(i32 36, float %8590, float %8593)  ; FMin(a,b)
  %8595 = call float @dx.op.binary.f32(i32 35, float %8590, float %8593)  ; FMax(a,b)
  br label %8596

; <label>:8596                                    ; preds = %8581, %8547
  %8597 = phi float [ %8595, %8581 ], [ -1.000000e+00, %8547 ]
  %8598 = phi float [ %8594, %8581 ], [ -1.000000e+00, %8547 ]
  %8599 = phi i1 [ true, %8581 ], [ false, %8547 ]
  %8600 = and i1 %8567, %8599
  br i1 %8600, label %8601, label %8603

; <label>:8601                                    ; preds = %8596
  %8602 = fcmp fast oeq float %8598, %8597
  br i1 %8602, label %8906, label %8604

; <label>:8603                                    ; preds = %8596
  br i1 %8567, label %8906, label %8604

; <label>:8604                                    ; preds = %8603, %8601
  %8605 = phi float [ %8533, %8603 ], [ %8597, %8601 ]
  %8606 = phi float [ 0.000000e+00, %8603 ], [ %8598, %8601 ]
  %8607 = icmp ne i32 %8555, 0
  %8608 = fmul fast float %8605, %8536
  %8609 = fadd fast float %8608, %8549
  %8610 = fmul fast float %8609, %8605
  %8611 = select i1 %8607, float 0.000000e+00, float %8610
  %8612 = fcmp fast oeq float %8536, 0.000000e+00
  %8613 = fdiv fast float %8554, %8536
  %8614 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8613)  ; FMax(a,b)
  %8615 = select i1 %8612, float %8605, float %8614
  %8616 = call float @dx.op.binary.f32(i32 36, float %8605, float %8615)  ; FMin(a,b)
  %8617 = fcmp fast ogt float %8536, 0.000000e+00
  %8618 = fcmp fast olt float %8554, 0.000000e+00
  br i1 %8617, label %8619, label %8676

; <label>:8619                                    ; preds = %8604
  %8620 = icmp eq i32 %8555, 0
  br i1 %8618, label %8621, label %8665

; <label>:8621                                    ; preds = %8619
  %8622 = select i1 %8620, float %8605, float 0.000000e+00
  %8623 = fsub fast float -0.000000e+00, %8622
  %8624 = call float @dx.op.unary.f32(i32 6, float %8623)  ; FAbs(value)
  %8625 = fmul fast float %8622, %8536
  %8626 = fadd fast float %8625, %8549
  %8627 = fmul fast float %8624, %8626
  %8628 = fsub fast float %8611, %8627
  %8629 = fsub fast float %8605, %8624
  %8630 = select i1 %8620, float %8629, float 0.000000e+00
  %8631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8632 = extractvalue %dx.types.CBufRet.f32 %8631, 0
  %8633 = extractvalue %dx.types.CBufRet.f32 %8631, 1
  %8634 = extractvalue %dx.types.CBufRet.f32 %8631, 2
  %8635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8636 = extractvalue %dx.types.CBufRet.f32 %8635, 0
  %8637 = extractvalue %dx.types.CBufRet.f32 %8635, 1
  %8638 = extractvalue %dx.types.CBufRet.f32 %8635, 2
  %8639 = extractvalue %dx.types.CBufRet.f32 %8635, 3
  %8640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8641 = extractvalue %dx.types.CBufRet.f32 %8640, 3
  %8642 = call float @dx.op.binary.f32(i32 36, float %8628, float %8641)  ; FMin(a,b)
  %8643 = fmul fast float %8639, %8630
  %8644 = call float @dx.op.unary.f32(i32 7, float %8643)  ; Saturate(value)
  %8645 = fsub fast float %8636, %8632
  %8646 = fsub fast float %8637, %8633
  %8647 = fsub fast float %8638, %8634
  %8648 = fmul fast float %8644, %8645
  %8649 = fmul fast float %8644, %8646
  %8650 = fmul fast float %8644, %8647
  %8651 = fadd fast float %8648, %8632
  %8652 = fadd fast float %8649, %8633
  %8653 = fadd fast float %8650, %8634
  %8654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8655 = extractvalue %dx.types.CBufRet.f32 %8654, 0
  %8656 = extractvalue %dx.types.CBufRet.f32 %8654, 1
  %8657 = fadd fast float %8656, %8655
  %8658 = call float @dx.op.unary.f32(i32 7, float %8657)  ; Saturate(value)
  %8659 = extractvalue %dx.types.CBufRet.f32 %8654, 2
  %8660 = extractvalue %dx.types.CBufRet.f32 %8654, 3
  %8661 = fadd fast float %8660, %8659
  %8662 = call float @dx.op.unary.f32(i32 7, float %8661)  ; Saturate(value)
  %8663 = fmul fast float %8658, %8642
  %8664 = fmul fast float %8663, %8662
  br label %8906

; <label>:8665                                    ; preds = %8619
  br i1 %8620, label %8666, label %8687

; <label>:8666                                    ; preds = %8665
  %8667 = call float @dx.op.binary.f32(i32 36, float %8616, float %8606)  ; FMin(a,b)
  %8668 = fsub fast float %8616, %8667
  %8669 = fsub fast float %8668, %8605
  %8670 = call float @dx.op.unary.f32(i32 6, float %8669)  ; FAbs(value)
  %8671 = fadd fast float %8668, %8605
  %8672 = fmul fast float %8671, %8536
  %8673 = fadd fast float %8672, %8549
  %8674 = fmul fast float %8673, %8670
  %8675 = fsub fast float %8611, %8674
  br label %8687

; <label>:8676                                    ; preds = %8604
  br i1 %8618, label %8677, label %8687

; <label>:8677                                    ; preds = %8676
  %8678 = call float @dx.op.binary.f32(i32 35, float %8606, float %8616)  ; FMax(a,b)
  %8679 = icmp eq i32 %8555, 0
  %8680 = select i1 %8679, float %8616, float 0.000000e+00
  %8681 = fsub fast float -0.000000e+00, %8680
  %8682 = call float @dx.op.unary.f32(i32 6, float %8681)  ; FAbs(value)
  %8683 = fmul fast float %8680, %8536
  %8684 = fadd fast float %8683, %8549
  %8685 = fmul fast float %8682, %8684
  %8686 = fsub fast float %8611, %8685
  br label %8687

; <label>:8687                                    ; preds = %8677, %8676, %8666, %8665
  %8688 = phi float [ %8606, %8665 ], [ %8606, %8666 ], [ %8678, %8677 ], [ %8606, %8676 ]
  %8689 = phi float [ 0.000000e+00, %8665 ], [ %8670, %8666 ], [ %8682, %8677 ], [ 0.000000e+00, %8676 ]
  %8690 = phi float [ %8611, %8665 ], [ %8675, %8666 ], [ %8686, %8677 ], [ %8611, %8676 ]
  %8691 = phi float [ %8616, %8665 ], [ %8616, %8666 ], [ %8605, %8677 ], [ %8605, %8676 ]
  %8692 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 0
  store float -1.000000e+00, float* %8692, align 4, !tbaa !124, !noalias !139
  %8693 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 1
  store float -1.000000e+00, float* %8693, align 4, !tbaa !124, !noalias !139
  %8694 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 2
  store float -1.000000e+00, float* %8694, align 4, !tbaa !124, !noalias !139
  %8695 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 0
  store float -1.000000e+00, float* %8695, align 4, !tbaa !124, !noalias !139
  %8696 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 1
  store float -1.000000e+00, float* %8696, align 4, !tbaa !124, !noalias !139
  %8697 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 2
  store float -1.000000e+00, float* %8697, align 4, !tbaa !124, !noalias !139
  %8698 = icmp sgt i32 %8557, 0
  br i1 %8698, label %8699, label %8760

; <label>:8699                                    ; preds = %8687
  br label %8700

; <label>:8700                                    ; preds = %8749, %8699
  %8701 = phi i32 [ %8750, %8749 ], [ 0, %8699 ]
  %8702 = phi i32 [ %8751, %8749 ], [ 0, %8699 ]
  %8703 = add nuw i32 %8702, 171
  %8704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %8703)  ; CBufferLoadLegacy(handle,regIndex)
  %8705 = extractvalue %dx.types.CBufRet.f32 %8704, 0
  %8706 = extractvalue %dx.types.CBufRet.f32 %8704, 1
  %8707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8708 = extractvalue %dx.types.CBufRet.f32 %8707, 0
  %8709 = extractvalue %dx.types.CBufRet.f32 %8707, 1
  %8710 = fsub fast float %8705, %8708
  %8711 = fsub fast float %8706, %8709
  %8712 = extractvalue %dx.types.CBufRet.f32 %8704, 2
  %8713 = fsub fast float -0.000000e+00, %8710
  %8714 = fsub fast float -0.000000e+00, %8711
  %8715 = call float @dx.op.dot2.f32(i32 54, float %8534, float %8535, float %8713, float %8714)  ; Dot2(ax,ay,bx,by)
  %8716 = fmul fast float %8715, 2.000000e+00
  %8717 = call float @dx.op.dot2.f32(i32 54, float %8713, float %8714, float %8713, float %8714)  ; Dot2(ax,ay,bx,by)
  %8718 = fmul fast float %8712, %8712
  %8719 = fsub fast float %8717, %8718
  %8720 = fmul fast float %8716, %8716
  %8721 = fmul fast float %8577, %8719
  %8722 = fsub fast float %8720, %8721
  %8723 = fcmp fast ogt float %8722, 0.000000e+00
  br i1 %8723, label %8724, label %8739

; <label>:8724                                    ; preds = %8700
  %8725 = fcmp fast ogt float %8716, 0.000000e+00
  %8726 = call float @dx.op.unary.f32(i32 24, float %8722)  ; Sqrt(value)
  %8727 = fsub fast float -0.000000e+00, %8726
  %8728 = select i1 %8725, float %8726, float %8727
  %8729 = fadd fast float %8728, %8716
  %8730 = fmul float %8729, -5.000000e-01
  %8731 = fdiv fast float %8730, %8570
  %8732 = call float @dx.op.binary.f32(i32 35, float %8731, float 0.000000e+00)  ; FMax(a,b)
  %8733 = call float @dx.op.binary.f32(i32 36, float %8605, float %8732)  ; FMin(a,b)
  %8734 = fdiv fast float %8719, %8730
  %8735 = call float @dx.op.binary.f32(i32 35, float %8734, float 0.000000e+00)  ; FMax(a,b)
  %8736 = call float @dx.op.binary.f32(i32 36, float %8605, float %8735)  ; FMin(a,b)
  %8737 = call float @dx.op.binary.f32(i32 36, float %8733, float %8736)  ; FMin(a,b)
  %8738 = call float @dx.op.binary.f32(i32 35, float %8733, float %8736)  ; FMax(a,b)
  br label %8739

; <label>:8739                                    ; preds = %8724, %8700
  %8740 = phi float [ %8738, %8724 ], [ -1.000000e+00, %8700 ]
  %8741 = phi float [ %8737, %8724 ], [ -1.000000e+00, %8700 ]
  %8742 = phi i1 [ true, %8724 ], [ false, %8700 ]
  br i1 %8742, label %8743, label %8749

; <label>:8743                                    ; preds = %8739
  %8744 = call float @dx.op.binary.f32(i32 35, float %8688, float %8741)  ; FMax(a,b)
  %8745 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8702
  store float %8744, float* %8745, align 4, !tbaa !124, !noalias !139
  %8746 = call float @dx.op.binary.f32(i32 35, float %8688, float %8740)  ; FMax(a,b)
  %8747 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8702
  store float %8746, float* %8747, align 4, !tbaa !124, !noalias !139
  %8748 = add nsw i32 %8701, 1
  br label %8749

; <label>:8749                                    ; preds = %8743, %8739
  %8750 = phi i32 [ %8748, %8743 ], [ %8701, %8739 ]
  %8751 = add nuw nsw i32 %8702, 1
  %8752 = icmp eq i32 %8751, %8557
  br i1 %8752, label %8753, label %8700

; <label>:8753                                    ; preds = %8749
  %8754 = load float, float* %8694, align 4, !tbaa !124, !alias.scope !155, !noalias !158
  %8755 = load float, float* %8693, align 4, !tbaa !124, !alias.scope !161, !noalias !162
  %8756 = load float, float* %8692, align 4, !tbaa !124, !alias.scope !163, !noalias !164
  %8757 = load float, float* %8697, align 4, !tbaa !124, !alias.scope !165, !noalias !168
  %8758 = load float, float* %8696, align 4, !tbaa !124, !alias.scope !171, !noalias !172
  %8759 = load float, float* %8695, align 4, !tbaa !124, !alias.scope !173, !noalias !174
  br label %8760

; <label>:8760                                    ; preds = %8753, %8687
  %8761 = phi float [ -1.000000e+00, %8687 ], [ %8759, %8753 ]
  %8762 = phi float [ -1.000000e+00, %8687 ], [ %8758, %8753 ]
  %8763 = phi float [ -1.000000e+00, %8687 ], [ %8757, %8753 ]
  %8764 = phi float [ -1.000000e+00, %8687 ], [ %8756, %8753 ]
  %8765 = phi float [ -1.000000e+00, %8687 ], [ %8755, %8753 ]
  %8766 = phi float [ -1.000000e+00, %8687 ], [ %8754, %8753 ]
  %8767 = phi i32 [ 0, %8687 ], [ %8750, %8753 ]
  %8768 = call float @dx.op.binary.f32(i32 36, float %8765, float %8766)  ; FMin(a,b)
  %8769 = call float @dx.op.binary.f32(i32 36, float %8764, float %8768)  ; FMin(a,b)
  %8770 = call float @dx.op.binary.f32(i32 35, float %8764, float %8765)  ; FMax(a,b)
  %8771 = call float @dx.op.binary.f32(i32 36, float %8770, float %8766)  ; FMin(a,b)
  %8772 = call float @dx.op.binary.f32(i32 36, float %8764, float %8765)  ; FMin(a,b)
  %8773 = call float @dx.op.binary.f32(i32 35, float %8772, float %8771)  ; FMax(a,b)
  %8774 = call float @dx.op.binary.f32(i32 35, float %8765, float %8766)  ; FMax(a,b)
  %8775 = call float @dx.op.binary.f32(i32 35, float %8764, float %8774)  ; FMax(a,b)
  store float %8769, float* %8692, align 4, !tbaa !124, !alias.scope !163, !noalias !164
  store float %8773, float* %8693, align 4, !tbaa !124, !alias.scope !161, !noalias !162
  store float %8775, float* %8694, align 4, !tbaa !124, !alias.scope !155, !noalias !158
  %8776 = call float @dx.op.binary.f32(i32 36, float %8762, float %8763)  ; FMin(a,b)
  %8777 = call float @dx.op.binary.f32(i32 36, float %8761, float %8776)  ; FMin(a,b)
  %8778 = call float @dx.op.binary.f32(i32 35, float %8761, float %8762)  ; FMax(a,b)
  %8779 = call float @dx.op.binary.f32(i32 36, float %8778, float %8763)  ; FMin(a,b)
  %8780 = call float @dx.op.binary.f32(i32 36, float %8761, float %8762)  ; FMin(a,b)
  %8781 = call float @dx.op.binary.f32(i32 35, float %8780, float %8779)  ; FMax(a,b)
  %8782 = call float @dx.op.binary.f32(i32 35, float %8762, float %8763)  ; FMax(a,b)
  %8783 = call float @dx.op.binary.f32(i32 35, float %8761, float %8782)  ; FMax(a,b)
  store float %8777, float* %8695, align 4, !tbaa !124, !alias.scope !173, !noalias !174
  store float %8781, float* %8696, align 4, !tbaa !124, !alias.scope !171, !noalias !172
  store float %8783, float* %8697, align 4, !tbaa !124, !alias.scope !165, !noalias !168
  %8784 = sub nsw i32 3, %8767
  %8785 = icmp sgt i32 %8784, 2
  br i1 %8785, label %8786, label %8824

; <label>:8786                                    ; preds = %8760
  %8787 = icmp eq i32 %8555, 0
  %8788 = fsub fast float %8605, %8689
  %8789 = select i1 %8787, float %8788, float %8689
  %8790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8791 = extractvalue %dx.types.CBufRet.f32 %8790, 0
  %8792 = extractvalue %dx.types.CBufRet.f32 %8790, 1
  %8793 = extractvalue %dx.types.CBufRet.f32 %8790, 2
  %8794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8795 = extractvalue %dx.types.CBufRet.f32 %8794, 0
  %8796 = extractvalue %dx.types.CBufRet.f32 %8794, 1
  %8797 = extractvalue %dx.types.CBufRet.f32 %8794, 2
  %8798 = extractvalue %dx.types.CBufRet.f32 %8794, 3
  %8799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8800 = extractvalue %dx.types.CBufRet.f32 %8799, 3
  %8801 = call float @dx.op.binary.f32(i32 36, float %8690, float %8800)  ; FMin(a,b)
  %8802 = fmul fast float %8798, %8789
  %8803 = call float @dx.op.unary.f32(i32 7, float %8802)  ; Saturate(value)
  %8804 = fsub fast float %8795, %8791
  %8805 = fsub fast float %8796, %8792
  %8806 = fsub fast float %8797, %8793
  %8807 = fmul fast float %8803, %8804
  %8808 = fmul fast float %8803, %8805
  %8809 = fmul fast float %8803, %8806
  %8810 = fadd fast float %8807, %8791
  %8811 = fadd fast float %8808, %8792
  %8812 = fadd fast float %8809, %8793
  %8813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8814 = extractvalue %dx.types.CBufRet.f32 %8813, 0
  %8815 = extractvalue %dx.types.CBufRet.f32 %8813, 1
  %8816 = fadd fast float %8815, %8814
  %8817 = call float @dx.op.unary.f32(i32 7, float %8816)  ; Saturate(value)
  %8818 = extractvalue %dx.types.CBufRet.f32 %8813, 2
  %8819 = extractvalue %dx.types.CBufRet.f32 %8813, 3
  %8820 = fadd fast float %8819, %8818
  %8821 = call float @dx.op.unary.f32(i32 7, float %8820)  ; Saturate(value)
  %8822 = fmul fast float %8817, %8801
  %8823 = fmul fast float %8822, %8821
  br label %8906

; <label>:8824                                    ; preds = %8760
  %8825 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8784
  %8826 = load float, float* %8825, align 4, !tbaa !124, !noalias !139
  %8827 = fcmp fast olt float %8826, %8691
  %8828 = icmp sgt i32 %8767, 0
  %8829 = and i1 %8828, %8827
  br i1 %8829, label %8830, label %8867

; <label>:8830                                    ; preds = %8824
  br label %8831

; <label>:8831                                    ; preds = %8860, %8830
  %8832 = phi float [ %8861, %8860 ], [ %8689, %8830 ]
  %8833 = phi float [ %8862, %8860 ], [ %8690, %8830 ]
  %8834 = phi float [ %8842, %8860 ], [ %8826, %8830 ]
  %8835 = phi i32 [ %8839, %8860 ], [ %8784, %8830 ]
  %8836 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8835
  %8837 = load float, float* %8836, align 4, !tbaa !124, !noalias !139
  %8838 = icmp slt i32 %8835, 2
  %8839 = add nsw i32 %8835, 1
  %8840 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8839
  %8841 = load float, float* %8840, align 4, !tbaa !124, !noalias !139
  %8842 = select i1 %8838, float %8841, float %8605
  %8843 = call float @dx.op.binary.f32(i32 36, float %8842, float %8837)  ; FMin(a,b)
  %8844 = call float @dx.op.binary.f32(i32 36, float %8691, float %8843)  ; FMin(a,b)
  %8845 = icmp eq i32 %8555, 0
  %8846 = fadd fast float %8844, %8834
  %8847 = fmul fast float %8846, %8536
  %8848 = fadd fast float %8847, %8549
  br i1 %8845, label %8854, label %8849

; <label>:8849                                    ; preds = %8831
  %8850 = fsub fast float %8844, %8834
  %8851 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8850)  ; FMax(a,b)
  %8852 = fmul fast float %8851, %8848
  %8853 = fadd fast float %8852, %8833
  br label %8860

; <label>:8854                                    ; preds = %8831
  %8855 = fsub fast float %8834, %8844
  %8856 = call float @dx.op.unary.f32(i32 6, float %8855)  ; FAbs(value)
  %8857 = fadd fast float %8856, %8832
  %8858 = fmul fast float %8856, %8848
  %8859 = fsub fast float %8833, %8858
  br label %8860

; <label>:8860                                    ; preds = %8854, %8849
  %8861 = phi float [ %8851, %8849 ], [ %8857, %8854 ]
  %8862 = phi float [ %8853, %8849 ], [ %8859, %8854 ]
  %8863 = fcmp fast olt float %8842, %8691
  %8864 = icmp slt i32 %8839, 3
  %8865 = and i1 %8864, %8863
  br i1 %8865, label %8831, label %8866

; <label>:8866                                    ; preds = %8860
  br label %8867

; <label>:8867                                    ; preds = %8866, %8824
  %8868 = phi float [ %8689, %8824 ], [ %8861, %8866 ]
  %8869 = phi float [ %8690, %8824 ], [ %8862, %8866 ]
  %8870 = fsub fast float %8605, %8868
  %8871 = select i1 %8607, float %8868, float %8870
  %8872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8873 = extractvalue %dx.types.CBufRet.f32 %8872, 0
  %8874 = extractvalue %dx.types.CBufRet.f32 %8872, 1
  %8875 = extractvalue %dx.types.CBufRet.f32 %8872, 2
  %8876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8877 = extractvalue %dx.types.CBufRet.f32 %8876, 0
  %8878 = extractvalue %dx.types.CBufRet.f32 %8876, 1
  %8879 = extractvalue %dx.types.CBufRet.f32 %8876, 2
  %8880 = extractvalue %dx.types.CBufRet.f32 %8876, 3
  %8881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8882 = extractvalue %dx.types.CBufRet.f32 %8881, 3
  %8883 = call float @dx.op.binary.f32(i32 36, float %8869, float %8882)  ; FMin(a,b)
  %8884 = fmul fast float %8880, %8871
  %8885 = call float @dx.op.unary.f32(i32 7, float %8884)  ; Saturate(value)
  %8886 = fsub fast float %8877, %8873
  %8887 = fsub fast float %8878, %8874
  %8888 = fsub fast float %8879, %8875
  %8889 = fmul fast float %8885, %8886
  %8890 = fmul fast float %8885, %8887
  %8891 = fmul fast float %8885, %8888
  %8892 = fadd fast float %8889, %8873
  %8893 = fadd fast float %8890, %8874
  %8894 = fadd fast float %8891, %8875
  %8895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8896 = extractvalue %dx.types.CBufRet.f32 %8895, 0
  %8897 = extractvalue %dx.types.CBufRet.f32 %8895, 1
  %8898 = fadd fast float %8897, %8896
  %8899 = call float @dx.op.unary.f32(i32 7, float %8898)  ; Saturate(value)
  %8900 = extractvalue %dx.types.CBufRet.f32 %8895, 2
  %8901 = extractvalue %dx.types.CBufRet.f32 %8895, 3
  %8902 = fadd fast float %8901, %8900
  %8903 = call float @dx.op.unary.f32(i32 7, float %8902)  ; Saturate(value)
  %8904 = fmul fast float %8899, %8883
  %8905 = fmul fast float %8904, %8903
  br label %8906

; <label>:8906                                    ; preds = %8867, %8786, %8621, %8603, %8601
  %8907 = phi float [ %8630, %8621 ], [ %8789, %8786 ], [ %8871, %8867 ], [ 0.000000e+00, %8601 ], [ 0.000000e+00, %8603 ]
  %8908 = phi float [ %8664, %8621 ], [ %8823, %8786 ], [ %8905, %8867 ], [ 0.000000e+00, %8601 ], [ 0.000000e+00, %8603 ]
  %8909 = phi float [ %8651, %8621 ], [ %8810, %8786 ], [ %8892, %8867 ], [ 0.000000e+00, %8601 ], [ 0.000000e+00, %8603 ]
  %8910 = phi float [ %8652, %8621 ], [ %8811, %8786 ], [ %8893, %8867 ], [ 0.000000e+00, %8601 ], [ 0.000000e+00, %8603 ]
  %8911 = phi float [ %8653, %8621 ], [ %8812, %8786 ], [ %8894, %8867 ], [ 0.000000e+00, %8601 ], [ 0.000000e+00, %8603 ]
  %8912 = fmul fast float %8544, %8908
  %8913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8914 = extractvalue %dx.types.CBufRet.f32 %8913, 2
  %8915 = fsub fast float %8551, %8914
  %8916 = fcmp fast olt float %8912, -2.000000e+01
  %8917 = call float @dx.op.unary.f32(i32 21, float %8912)  ; Exp(value)
  %8918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8919 = extractvalue %dx.types.CBufRet.f32 %8918, 2
  %8920 = extractvalue %dx.types.CBufRet.f32 %8918, 3
  %8921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8922 = extractvalue %dx.types.CBufRet.f32 %8921, 2
  %8923 = fmul fast float %8920, %8915
  %8924 = call float @dx.op.unary.f32(i32 7, float %8923)  ; Saturate(value)
  %8925 = fsub fast float 1.000000e+00, %8924
  %8926 = fmul fast float %8536, 5.000000e-01
  %8927 = fadd fast float %8926, 5.000000e-01
  %8928 = call float @dx.op.unary.f32(i32 7, float %8927)  ; Saturate(value)
  %8929 = fsub fast float 1.000000e+00, %8928
  %8930 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8925)  ; FMax(a,b)
  %8931 = fdiv fast float %8929, %8930
  %8932 = fsub fast float %8915, %8493
  %8933 = call float @dx.op.unary.f32(i32 6, float %8932)  ; FAbs(value)
  %8934 = fmul fast float %8933, %8919
  %8935 = call float @dx.op.unary.f32(i32 7, float %8931)  ; Saturate(value)
  %8936 = fsub fast float 1.000000e+00, %8934
  %8937 = fmul fast float %8936, %8935
  %8938 = fadd fast float %8937, %8934
  %8939 = fmul fast float %8922, %8915
  %8940 = call float @dx.op.unary.f32(i32 7, float %8939)  ; Saturate(value)
  %8941 = fsub fast float 1.000000e+00, %8938
  %8942 = fmul fast float %8941, %8940
  %8943 = fadd fast float %8942, %8938
  %8944 = call float @dx.op.unary.f32(i32 7, float %8943)  ; Saturate(value)
  %8945 = fadd fast float %8917, -1.000000e+00
  %8946 = select i1 %8916, float -1.000000e+00, float %8945
  %8947 = fmul fast float %8944, %8946
  %8948 = fadd fast float %8947, 1.000000e+00
  %8949 = fsub fast float -0.000000e+00, %8947
  %8950 = fmul fast float %8909, %8949
  %8951 = fmul fast float %8910, %8949
  %8952 = fmul fast float %8911, %8949
  br label %8953

; <label>:8953                                    ; preds = %8906, %8502
  %8954 = phi float [ %8907, %8906 ], [ 0.000000e+00, %8502 ]
  %8955 = phi float [ %8948, %8906 ], [ 1.000000e+00, %8502 ]
  %8956 = phi float [ %8950, %8906 ], [ 0.000000e+00, %8502 ]
  %8957 = phi float [ %8951, %8906 ], [ 0.000000e+00, %8502 ]
  %8958 = phi float [ %8952, %8906 ], [ 0.000000e+00, %8502 ]
  %8959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8960 = extractvalue %dx.types.CBufRet.f32 %8959, 1
  %8961 = fsub fast float 1.000000e+00, %8955
  %8962 = fmul fast float %8961, %8537
  %8963 = fmul fast float %8962, %8960
  %8964 = fsub fast float %8537, %8963
  br i1 %8530, label %8965, label %8994, !dx.controlflow.hints !175

; <label>:8965                                    ; preds = %8953
  %8966 = fmul fast float %8538, %8527
  %8967 = fadd fast float %8966, %8528
  %8968 = call float @dx.op.unary.f32(i32 7, float %8967)  ; Saturate(value)
  %8969 = fmul fast float %8509, %8964
  %8970 = fsub fast float -0.000000e+00, %8969
  %8971 = fmul fast float %8510, %8964
  %8972 = fsub fast float -0.000000e+00, %8971
  %8973 = call float @dx.op.unary.f32(i32 21, float %8970)  ; Exp(value)
  %8974 = call float @dx.op.unary.f32(i32 21, float %8972)  ; Exp(value)
  %8975 = call float @dx.op.binary.f32(i32 35, float %8517, float %8973)  ; FMax(a,b)
  %8976 = call float @dx.op.binary.f32(i32 35, float %8517, float %8974)  ; FMax(a,b)
  %8977 = fsub fast float %8976, %8975
  %8978 = fmul fast float %8977, %8968
  %8979 = fadd fast float %8978, %8975
  %8980 = call float @dx.op.unary.f32(i32 7, float %8979)  ; Saturate(value)
  %8981 = fsub fast float %8514, %8519
  %8982 = fsub fast float %8515, %8520
  %8983 = fsub fast float %8516, %8521
  %8984 = fmul fast float %8968, %8981
  %8985 = fmul fast float %8968, %8982
  %8986 = fmul fast float %8968, %8983
  %8987 = fadd fast float %8984, %8519
  %8988 = fadd fast float %8985, %8520
  %8989 = fadd fast float %8986, %8521
  %8990 = fsub fast float 1.000000e+00, %8980
  %8991 = fmul fast float %8990, %8987
  %8992 = fmul fast float %8990, %8988
  %8993 = fmul fast float %8990, %8989
  br label %9053

; <label>:8994                                    ; preds = %8953
  %8995 = fmul fast float %8964, %8526
  %8996 = call float @dx.op.unary.f32(i32 7, float %8995)  ; Saturate(value)
  %8997 = fsub fast float 2.000000e+00, %8996
  %8998 = fmul fast float %8996, 9.921875e-01
  %8999 = fmul fast float %8998, %8997
  %9000 = fadd fast float %8999, 3.906250e-03
  %9001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %9000, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9002 = extractvalue %dx.types.ResRet.f32 %9001, 0
  %9003 = fsub fast float %8996, %9002
  %9004 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9003)  ; FMax(a,b)
  %9005 = fmul fast float %8512, %8493
  %9006 = call float @dx.op.unary.f32(i32 6, float %9005)  ; FAbs(value)
  %9007 = fcmp fast ogt float %9006, 0x3EB0C6F7A0000000
  br i1 %9007, label %9008, label %9014, !dx.controlflow.hints !176

; <label>:9008                                    ; preds = %8994
  %9009 = fmul fast float %9005, 0xBFF7154760000000
  %9010 = call float @dx.op.unary.f32(i32 21, float %9009)  ; Exp(value)
  %9011 = fsub fast float 1.000000e+00, %9010
  %9012 = fdiv fast float %9011, %9005
  %9013 = fmul fast float %9012, %8522
  br label %9014

; <label>:9014                                    ; preds = %9008, %8994
  %9015 = phi float [ %9013, %9008 ], [ %8522, %8994 ]
  %9016 = fadd fast float %9015, %8524
  %9017 = fmul fast float %9016, %9004
  %9018 = fmul fast float %8509, %9017
  %9019 = fsub fast float -0.000000e+00, %9018
  %9020 = fmul fast float %8510, %9017
  %9021 = fsub fast float -0.000000e+00, %9020
  %9022 = fmul fast float %8511, %9017
  %9023 = fsub fast float -0.000000e+00, %9022
  %9024 = call float @dx.op.unary.f32(i32 21, float %9019)  ; Exp(value)
  %9025 = call float @dx.op.unary.f32(i32 21, float %9021)  ; Exp(value)
  %9026 = call float @dx.op.unary.f32(i32 21, float %9023)  ; Exp(value)
  %9027 = fmul fast float %8538, %8538
  %9028 = fadd fast float %9027, 1.000000e+00
  %9029 = fmul fast float %9028, 0x3FAE8EC8A0000000
  %9030 = fmul fast float %9029, %8519
  %9031 = fmul fast float %9029, %8520
  %9032 = fmul fast float %9029, %8521
  %9033 = fmul fast float %8538, %8517
  %9034 = fsub fast float 1.000000e+00, %9033
  %9035 = fmul fast float %8517, %8517
  %9036 = fsub fast float 1.000000e+00, %9035
  %9037 = fmul fast float %9036, 0x3FB45F3060000000
  %9038 = fmul fast float %9034, %9034
  %9039 = fdiv fast float 1.000000e+00, %9038
  %9040 = fmul fast float %9037, %9039
  %9041 = fmul fast float %9040, %8514
  %9042 = fmul fast float %9040, %8515
  %9043 = fmul fast float %9040, %8516
  %9044 = fadd fast float %9041, %9030
  %9045 = fadd fast float %9042, %9031
  %9046 = fadd fast float %9043, %9032
  %9047 = fsub fast float 1.000000e+00, %9024
  %9048 = fsub fast float 1.000000e+00, %9025
  %9049 = fsub fast float 1.000000e+00, %9026
  %9050 = fmul fast float %9044, %9047
  %9051 = fmul fast float %9045, %9048
  %9052 = fmul fast float %9046, %9049
  br label %9053

; <label>:9053                                    ; preds = %9014, %8965
  %9054 = phi float [ %8991, %8965 ], [ %9050, %9014 ]
  %9055 = phi float [ %8992, %8965 ], [ %9051, %9014 ]
  %9056 = phi float [ %8993, %8965 ], [ %9052, %9014 ]
  %9057 = phi float [ %8980, %8965 ], [ %9024, %9014 ]
  %9058 = phi float [ %8980, %8965 ], [ %9025, %9014 ]
  %9059 = phi float [ %8980, %8965 ], [ %9026, %9014 ]
  br i1 %8546, label %9060, label %9258, !dx.controlflow.hints !177

; <label>:9060                                    ; preds = %9053
  %9061 = extractvalue %dx.types.CBufRet.f32 %8959, 0
  %9062 = fmul fast float %9061, %8961
  %9063 = fsub fast float %8956, %9054
  %9064 = fsub fast float %8957, %9055
  %9065 = fsub fast float %8958, %9056
  %9066 = fmul fast float %9062, %9063
  %9067 = fmul fast float %9062, %9064
  %9068 = fmul fast float %9062, %9065
  %9069 = fadd fast float %9066, %9054
  %9070 = fadd fast float %9067, %9055
  %9071 = fadd fast float %9068, %9056
  %9072 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9057)  ; FMax(a,b)
  %9073 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9058)  ; FMax(a,b)
  %9074 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9059)  ; FMax(a,b)
  %9075 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8955)  ; FMax(a,b)
  %9076 = call float @dx.op.binary.f32(i32 35, float %8954, float %8964)  ; FMax(a,b)
  %9077 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9076)  ; FMax(a,b)
  %9078 = fdiv fast float %8954, %9077
  %9079 = call float @dx.op.unary.f32(i32 7, float %9078)  ; Saturate(value)
  %9080 = fdiv fast float %8964, %9077
  %9081 = call float @dx.op.unary.f32(i32 7, float %9080)  ; Saturate(value)
  %9082 = fcmp fast une float %9075, 1.000000e+00
  br i1 %9082, label %9083, label %9096, !dx.controlflow.hints !178

; <label>:9083                                    ; preds = %9060
  %9084 = call float @dx.op.unary.f32(i32 23, float %9075)  ; Log(value)
  %9085 = fmul fast float %9084, 0x3FE62E4300000000
  %9086 = fmul fast float %8956, %9085
  %9087 = fsub fast float -0.000000e+00, %9086
  %9088 = fmul fast float %8957, %9085
  %9089 = fsub fast float -0.000000e+00, %9088
  %9090 = fmul fast float %8958, %9085
  %9091 = fsub fast float -0.000000e+00, %9090
  %9092 = fsub fast float 1.000000e+00, %9075
  %9093 = fdiv fast float %9087, %9092
  %9094 = fdiv fast float %9089, %9092
  %9095 = fdiv fast float %9091, %9092
  br label %9096

; <label>:9096                                    ; preds = %9083, %9060
  %9097 = phi float [ %9093, %9083 ], [ %8956, %9060 ]
  %9098 = phi float [ %9094, %9083 ], [ %8957, %9060 ]
  %9099 = phi float [ %9095, %9083 ], [ %8958, %9060 ]
  %9100 = phi float [ %9085, %9083 ], [ 0.000000e+00, %9060 ]
  %9101 = fcmp fast une float %9072, 1.000000e+00
  br i1 %9101, label %9102, label %9109, !dx.controlflow.hints !179

; <label>:9102                                    ; preds = %9096
  %9103 = call float @dx.op.unary.f32(i32 23, float %9072)  ; Log(value)
  %9104 = fmul fast float %9103, 0x3FE62E4300000000
  %9105 = fmul fast float %9069, %9104
  %9106 = fsub fast float -0.000000e+00, %9105
  %9107 = fsub fast float 1.000000e+00, %9072
  %9108 = fdiv fast float %9106, %9107
  br label %9109

; <label>:9109                                    ; preds = %9102, %9096
  %9110 = phi float [ %9108, %9102 ], [ %9069, %9096 ]
  %9111 = phi float [ %9104, %9102 ], [ 0.000000e+00, %9096 ]
  %9112 = fcmp fast une float %9073, 1.000000e+00
  br i1 %9112, label %9113, label %9120, !dx.controlflow.hints !179

; <label>:9113                                    ; preds = %9109
  %9114 = call float @dx.op.unary.f32(i32 23, float %9073)  ; Log(value)
  %9115 = fmul fast float %9114, 0x3FE62E4300000000
  %9116 = fmul fast float %9070, %9115
  %9117 = fsub fast float -0.000000e+00, %9116
  %9118 = fsub fast float 1.000000e+00, %9073
  %9119 = fdiv fast float %9117, %9118
  br label %9120

; <label>:9120                                    ; preds = %9113, %9109
  %9121 = phi float [ %9119, %9113 ], [ %9070, %9109 ]
  %9122 = phi float [ %9115, %9113 ], [ 0.000000e+00, %9109 ]
  %9123 = fcmp fast une float %9074, 1.000000e+00
  br i1 %9123, label %9124, label %9131, !dx.controlflow.hints !179

; <label>:9124                                    ; preds = %9120
  %9125 = call float @dx.op.unary.f32(i32 23, float %9074)  ; Log(value)
  %9126 = fmul fast float %9125, 0x3FE62E4300000000
  %9127 = fmul fast float %9071, %9126
  %9128 = fsub fast float -0.000000e+00, %9127
  %9129 = fsub fast float 1.000000e+00, %9074
  %9130 = fdiv fast float %9128, %9129
  br label %9131

; <label>:9131                                    ; preds = %9124, %9120
  %9132 = phi float [ %9130, %9124 ], [ %9071, %9120 ]
  %9133 = phi float [ %9126, %9124 ], [ 0.000000e+00, %9120 ]
  %9134 = fmul fast float %9097, %9081
  %9135 = fmul fast float %9098, %9081
  %9136 = fmul fast float %9099, %9081
  %9137 = fmul fast float %9100, %9081
  %9138 = fmul fast float %9110, %9079
  %9139 = fmul fast float %9121, %9079
  %9140 = fmul fast float %9132, %9079
  %9141 = fmul fast float %9111, %9079
  %9142 = fmul fast float %9122, %9079
  %9143 = fmul fast float %9133, %9079
  %9144 = fadd fast float %9138, %9134
  %9145 = fadd fast float %9139, %9135
  %9146 = fadd fast float %9140, %9136
  %9147 = fadd fast float %9141, %9137
  %9148 = fadd fast float %9142, %9137
  %9149 = fadd fast float %9143, %9137
  %9150 = fcmp fast une float %9147, 0.000000e+00
  br i1 %9150, label %9151, label %9158, !dx.controlflow.hints !180

; <label>:9151                                    ; preds = %9131
  %9152 = fmul fast float %9147, 0x3FF7154760000000
  %9153 = call float @dx.op.unary.f32(i32 21, float %9152)  ; Exp(value)
  %9154 = fsub fast float 1.000000e+00, %9153
  %9155 = fmul fast float %9144, %9154
  %9156 = fsub fast float -0.000000e+00, %9155
  %9157 = fdiv fast float %9156, %9147
  br label %9158

; <label>:9158                                    ; preds = %9151, %9131
  %9159 = phi float [ %9153, %9151 ], [ 1.000000e+00, %9131 ]
  %9160 = phi float [ %9157, %9151 ], [ %9144, %9131 ]
  %9161 = fcmp fast une float %9148, 0.000000e+00
  br i1 %9161, label %9162, label %9169, !dx.controlflow.hints !180

; <label>:9162                                    ; preds = %9158
  %9163 = fmul fast float %9148, 0x3FF7154760000000
  %9164 = call float @dx.op.unary.f32(i32 21, float %9163)  ; Exp(value)
  %9165 = fsub fast float 1.000000e+00, %9164
  %9166 = fmul fast float %9145, %9165
  %9167 = fsub fast float -0.000000e+00, %9166
  %9168 = fdiv fast float %9167, %9148
  br label %9169

; <label>:9169                                    ; preds = %9162, %9158
  %9170 = phi float [ %9164, %9162 ], [ 1.000000e+00, %9158 ]
  %9171 = phi float [ %9168, %9162 ], [ %9145, %9158 ]
  %9172 = fcmp fast une float %9149, 0.000000e+00
  br i1 %9172, label %9173, label %9180, !dx.controlflow.hints !180

; <label>:9173                                    ; preds = %9169
  %9174 = fmul fast float %9149, 0x3FF7154760000000
  %9175 = call float @dx.op.unary.f32(i32 21, float %9174)  ; Exp(value)
  %9176 = fsub fast float 1.000000e+00, %9175
  %9177 = fmul fast float %9146, %9176
  %9178 = fsub fast float -0.000000e+00, %9177
  %9179 = fdiv fast float %9178, %9149
  br label %9180

; <label>:9180                                    ; preds = %9173, %9169
  %9181 = phi float [ %9175, %9173 ], [ 1.000000e+00, %9169 ]
  %9182 = phi float [ %9179, %9173 ], [ %9146, %9169 ]
  %9183 = fcmp fast ogt float %9079, %9081
  br i1 %9183, label %9184, label %9204

; <label>:9184                                    ; preds = %9180
  %9185 = fsub fast float 1.000000e+00, %9081
  %9186 = fmul fast float %9097, %9185
  %9187 = fmul fast float %9098, %9185
  %9188 = fmul fast float %9099, %9185
  %9189 = fmul fast float %9100, %9185
  %9190 = fcmp fast une float %9189, 0.000000e+00
  br i1 %9190, label %9191, label %9242, !dx.controlflow.hints !181

; <label>:9191                                    ; preds = %9184
  %9192 = fmul fast float %9189, 0x3FF7154760000000
  %9193 = call float @dx.op.unary.f32(i32 21, float %9192)  ; Exp(value)
  %9194 = fsub fast float 1.000000e+00, %9193
  %9195 = fmul fast float %9186, %9194
  %9196 = fsub fast float -0.000000e+00, %9195
  %9197 = fmul fast float %9187, %9194
  %9198 = fsub fast float -0.000000e+00, %9197
  %9199 = fmul fast float %9188, %9194
  %9200 = fsub fast float -0.000000e+00, %9199
  %9201 = fdiv fast float %9196, %9189
  %9202 = fdiv fast float %9198, %9189
  %9203 = fdiv fast float %9200, %9189
  br label %9242

; <label>:9204                                    ; preds = %9180
  %9205 = fsub fast float 1.000000e+00, %9079
  %9206 = fmul fast float %9110, %9205
  %9207 = fmul fast float %9121, %9205
  %9208 = fmul fast float %9132, %9205
  %9209 = fmul fast float %9111, %9205
  %9210 = fmul fast float %9122, %9205
  %9211 = fmul fast float %9133, %9205
  %9212 = fcmp fast une float %9209, 0.000000e+00
  br i1 %9212, label %9213, label %9220, !dx.controlflow.hints !180

; <label>:9213                                    ; preds = %9204
  %9214 = fmul fast float %9209, 0x3FF7154760000000
  %9215 = call float @dx.op.unary.f32(i32 21, float %9214)  ; Exp(value)
  %9216 = fsub fast float 1.000000e+00, %9215
  %9217 = fmul fast float %9206, %9216
  %9218 = fsub fast float -0.000000e+00, %9217
  %9219 = fdiv fast float %9218, %9209
  br label %9220

; <label>:9220                                    ; preds = %9213, %9204
  %9221 = phi float [ %9219, %9213 ], [ %9206, %9204 ]
  %9222 = phi float [ %9215, %9213 ], [ 1.000000e+00, %9204 ]
  %9223 = fcmp fast une float %9210, 0.000000e+00
  br i1 %9223, label %9224, label %9231, !dx.controlflow.hints !180

; <label>:9224                                    ; preds = %9220
  %9225 = fmul fast float %9210, 0x3FF7154760000000
  %9226 = call float @dx.op.unary.f32(i32 21, float %9225)  ; Exp(value)
  %9227 = fsub fast float 1.000000e+00, %9226
  %9228 = fmul fast float %9207, %9227
  %9229 = fsub fast float -0.000000e+00, %9228
  %9230 = fdiv fast float %9229, %9210
  br label %9231

; <label>:9231                                    ; preds = %9224, %9220
  %9232 = phi float [ %9230, %9224 ], [ %9207, %9220 ]
  %9233 = phi float [ %9226, %9224 ], [ 1.000000e+00, %9220 ]
  %9234 = fcmp fast une float %9211, 0.000000e+00
  br i1 %9234, label %9235, label %9242, !dx.controlflow.hints !180

; <label>:9235                                    ; preds = %9231
  %9236 = fmul fast float %9211, 0x3FF7154760000000
  %9237 = call float @dx.op.unary.f32(i32 21, float %9236)  ; Exp(value)
  %9238 = fsub fast float 1.000000e+00, %9237
  %9239 = fmul fast float %9208, %9238
  %9240 = fsub fast float -0.000000e+00, %9239
  %9241 = fdiv fast float %9240, %9211
  br label %9242

; <label>:9242                                    ; preds = %9235, %9231, %9191, %9184
  %9243 = phi float [ %9241, %9235 ], [ %9203, %9191 ], [ %9188, %9184 ], [ %9208, %9231 ]
  %9244 = phi float [ %9232, %9235 ], [ %9202, %9191 ], [ %9187, %9184 ], [ %9232, %9231 ]
  %9245 = phi float [ %9221, %9235 ], [ %9201, %9191 ], [ %9186, %9184 ], [ %9221, %9231 ]
  %9246 = phi float [ %9237, %9235 ], [ %9193, %9191 ], [ 1.000000e+00, %9184 ], [ 1.000000e+00, %9231 ]
  %9247 = phi float [ %9233, %9235 ], [ %9193, %9191 ], [ 1.000000e+00, %9184 ], [ %9233, %9231 ]
  %9248 = phi float [ %9222, %9235 ], [ %9193, %9191 ], [ 1.000000e+00, %9184 ], [ %9222, %9231 ]
  %9249 = fmul fast float %9248, %9160
  %9250 = fmul fast float %9247, %9171
  %9251 = fmul fast float %9246, %9182
  %9252 = fadd fast float %9249, %9245
  %9253 = fadd fast float %9250, %9244
  %9254 = fadd fast float %9251, %9243
  %9255 = fmul fast float %9248, %9159
  %9256 = fmul fast float %9247, %9170
  %9257 = fmul fast float %9246, %9181
  br label %9258

; <label>:9258                                    ; preds = %9242, %9053
  %9259 = phi float [ %9257, %9242 ], [ %9059, %9053 ]
  %9260 = phi float [ %9256, %9242 ], [ %9058, %9053 ]
  %9261 = phi float [ %9255, %9242 ], [ %9057, %9053 ]
  %9262 = phi float [ %9254, %9242 ], [ %9056, %9053 ]
  %9263 = phi float [ %9253, %9242 ], [ %9055, %9053 ]
  %9264 = phi float [ %9252, %9242 ], [ %9054, %9053 ]
  %9265 = fmul fast float %9264, %8210
  %9266 = fmul fast float %9263, %8210
  %9267 = fmul fast float %9262, %8210
  %9268 = fmul fast float %9261, %8501
  %9269 = call float @dx.op.dot3.f32(i32 55, float %9261, float %9260, float %9259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9270 = call float @dx.op.dot3.f32(i32 55, float %9265, float %9266, float %9267, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9271 = select i1 %275, float %9269, float %9261
  %9272 = select i1 %275, float %9269, float %9260
  %9273 = select i1 %275, float 1.000000e+00, float %9259
  %9274 = select i1 %275, float %9270, float %9265
  %9275 = select i1 %275, float 0.000000e+00, float %9266
  %9276 = select i1 %275, float 0.000000e+00, float %9267
  %9277 = fmul fast float %9271, %8495
  %9278 = fmul fast float %9272, %8496
  %9279 = fmul fast float %9273, %8497
  %9280 = fadd fast float %9277, %9274
  %9281 = fadd fast float %9278, %9275
  %9282 = fadd fast float %9276, %9279
  %9283 = fmul fast float %9271, %8498
  %9284 = fmul fast float %9272, %8499
  %9285 = fmul fast float %9273, %8500
  %9286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9287 = extractvalue %dx.types.CBufRet.i32 %9286, 0
  %9288 = icmp eq i32 %9287, 0
  br i1 %9288, label %9656, label %9289, !dx.controlflow.hints !182

; <label>:9289                                    ; preds = %9258
  %9290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9291 = extractvalue %dx.types.CBufRet.f32 %9290, 2
  %9292 = extractvalue %dx.types.CBufRet.f32 %9290, 3
  %9293 = fmul fast float %9291, %116
  %9294 = fmul fast float %9292, %117
  %9295 = fmul fast float %9293, 2.000000e+00
  %9296 = fmul fast float %9294, 2.000000e+00
  %9297 = fsub fast float 1.000000e+00, %9295
  %9298 = fsub fast float 1.000000e+00, %9296
  %9299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9300 = extractvalue %dx.types.CBufRet.f32 %9299, 0
  %9301 = extractvalue %dx.types.CBufRet.f32 %9299, 1
  %9302 = extractvalue %dx.types.CBufRet.f32 %9299, 2
  %9303 = fmul fast float %9297, %9300
  %9304 = fmul fast float %9297, %9301
  %9305 = fmul fast float %9297, %9302
  %9306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9307 = extractvalue %dx.types.CBufRet.f32 %9306, 0
  %9308 = extractvalue %dx.types.CBufRet.f32 %9306, 1
  %9309 = extractvalue %dx.types.CBufRet.f32 %9306, 2
  %9310 = fmul fast float %9298, %9307
  %9311 = fmul fast float %9298, %9308
  %9312 = fmul fast float %9298, %9309
  %9313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9314 = extractvalue %dx.types.CBufRet.f32 %9313, 0
  %9315 = extractvalue %dx.types.CBufRet.f32 %9313, 1
  %9316 = extractvalue %dx.types.CBufRet.f32 %9313, 2
  %9317 = fadd fast float %9310, %9314
  %9318 = fadd fast float %9317, %9303
  %9319 = fadd fast float %9311, %9315
  %9320 = fadd fast float %9319, %9304
  %9321 = fadd fast float %9312, %9316
  %9322 = fadd fast float %9321, %9305
  %9323 = fmul fast float %9318, %8494
  %9324 = fmul fast float %9320, %8494
  %9325 = fmul fast float %9322, %8494
  %9326 = fmul fast float %9323, %9323
  %9327 = fmul fast float %9324, %9324
  %9328 = fadd fast float %9326, %9327
  %9329 = fmul fast float %9325, %9325
  %9330 = fadd fast float %9328, %9329
  %9331 = call float @dx.op.unary.f32(i32 24, float %9330)  ; Sqrt(value)
  %9332 = extractvalue %dx.types.CBufRet.f32 %8221, 0
  %9333 = fsub fast float %9331, %9332
  %9334 = extractvalue %dx.types.CBufRet.f32 %8221, 2
  %9335 = fmul fast float %9333, %9334
  %9336 = call float @dx.op.unary.f32(i32 7, float %9335)  ; Saturate(value)
  %9337 = fadd fast float %9336, -5.000000e-01
  %9338 = fmul fast float %9337, 2.000000e+00
  %9339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9340 = extractvalue %dx.types.CBufRet.f32 %9339, 2
  %9341 = call float @dx.op.binary.f32(i32 36, float %9340, float %9338)  ; FMin(a,b)
  %9342 = fsub fast float -0.000000e+00, %9340
  %9343 = fcmp fast ogt float %9341, %9342
  br i1 %9343, label %9344, label %9656, !dx.controlflow.hints !183

; <label>:9344                                    ; preds = %9289
  %9345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9346 = extractvalue %dx.types.CBufRet.f32 %9345, 3
  %9347 = fcmp fast ogt float %9346, 0.000000e+00
  br i1 %9347, label %9348, label %9423, !dx.controlflow.hints !184

; <label>:9348                                    ; preds = %9344
  %9349 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9350 = extractvalue %dx.types.Dimensions %9349, 0
  %9351 = sitofp i32 %9350 to float
  %9352 = extractvalue %dx.types.Dimensions %9349, 1
  %9353 = sitofp i32 %9352 to float
  %9354 = fmul fast float %9293, %9351
  %9355 = fmul fast float %9294, %9353
  %9356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9357 = extractvalue %dx.types.CBufRet.f32 %9356, 1
  %9358 = fsub fast float -0.000000e+00, %9357
  %9359 = fptoui float %9358 to i32
  %9360 = fptoui float %9354 to i32
  %9361 = fptoui float %9355 to i32
  %9362 = and i32 %9359, 31
  %9363 = lshr i32 %9360, %9362
  %9364 = lshr i32 %9361, %9362
  %9365 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9359, i32 %9363, i32 %9364, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9366 = extractvalue %dx.types.ResRet.f32 %9365, 0
  %9367 = fcmp fast olt float %9366, -1.000000e+00
  %9368 = fcmp fast ogt float %9366, -1.000000e+00
  %9369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9370 = extractvalue %dx.types.CBufRet.f32 %9369, 1
  %9371 = select i1 %9368, float %9370, float 1.000000e+00
  %9372 = fadd fast float %9366, 1.000000e+00
  %9373 = fmul fast float %9371, %9372
  %9374 = call float @dx.op.unary.f32(i32 6, float %9373)  ; FAbs(value)
  %9375 = extractvalue %dx.types.CBufRet.f32 %9369, 3
  %9376 = fcmp fast oge float %9374, %9375
  %9377 = select i1 %9376, float 0x4197782600000000, float %9374
  %9378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9379 = extractvalue %dx.types.CBufRet.f32 %9378, 0
  %9380 = extractvalue %dx.types.CBufRet.f32 %9378, 1
  %9381 = extractvalue %dx.types.CBufRet.f32 %9378, 2
  %9382 = select i1 %9367, float %9379, float %9300
  %9383 = select i1 %9367, float %9380, float %9301
  %9384 = select i1 %9367, float %9381, float %9302
  %9385 = fmul fast float %9382, %9297
  %9386 = fmul fast float %9383, %9297
  %9387 = fmul fast float %9384, %9297
  %9388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9389 = extractvalue %dx.types.CBufRet.f32 %9388, 0
  %9390 = extractvalue %dx.types.CBufRet.f32 %9388, 1
  %9391 = extractvalue %dx.types.CBufRet.f32 %9388, 2
  %9392 = select i1 %9367, float %9389, float %9307
  %9393 = select i1 %9367, float %9390, float %9308
  %9394 = select i1 %9367, float %9391, float %9309
  %9395 = fmul fast float %9392, %9298
  %9396 = fmul fast float %9393, %9298
  %9397 = fmul fast float %9394, %9298
  %9398 = fadd fast float %9395, %9385
  %9399 = fadd fast float %9396, %9386
  %9400 = fadd fast float %9397, %9387
  %9401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9402 = extractvalue %dx.types.CBufRet.f32 %9401, 0
  %9403 = extractvalue %dx.types.CBufRet.f32 %9401, 1
  %9404 = extractvalue %dx.types.CBufRet.f32 %9401, 2
  %9405 = select i1 %9367, float %9402, float %9314
  %9406 = select i1 %9367, float %9403, float %9315
  %9407 = select i1 %9367, float %9404, float %9316
  %9408 = fadd fast float %9398, %9405
  %9409 = fadd fast float %9399, %9406
  %9410 = fadd fast float %9400, %9407
  %9411 = fmul fast float %9408, %9377
  %9412 = fmul fast float %9409, %9377
  %9413 = fmul fast float %9410, %9377
  %9414 = fmul fast float %9411, %9411
  %9415 = fmul fast float %9412, %9412
  %9416 = fadd fast float %9414, %9415
  %9417 = fmul fast float %9413, %9413
  %9418 = fadd fast float %9416, %9417
  %9419 = call float @dx.op.unary.f32(i32 24, float %9418)  ; Sqrt(value)
  %9420 = fsub fast float %9419, %9332
  %9421 = fmul fast float %9420, %9334
  %9422 = call float @dx.op.unary.f32(i32 7, float %9421)  ; Saturate(value)
  br label %9423

; <label>:9423                                    ; preds = %9348, %9344
  %9424 = phi float [ %9422, %9348 ], [ 1.000000e+00, %9344 ]
  %9425 = fmul fast float %9341, 5.000000e-01
  %9426 = fadd fast float %9425, 5.000000e-01
  %9427 = call float @dx.op.unary.f32(i32 22, float %9426)  ; Frc(value)
  %9428 = call float @dx.op.unary.f32(i32 27, float %9427)  ; Round_ni(value)
  %9429 = call float @dx.op.unary.f32(i32 22, float %9427)  ; Frc(value)
  %9430 = fmul fast float %9429, 2.000000e+00
  %9431 = fadd fast float %9430, -1.000000e+00
  %9432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %55, float %9293, float %9294, float %9428, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9433 = extractvalue %dx.types.ResRet.f32 %9432, 0
  %9434 = extractvalue %dx.types.ResRet.f32 %9432, 1
  %9435 = extractvalue %dx.types.ResRet.f32 %9432, 2
  %9436 = extractvalue %dx.types.ResRet.f32 %9432, 3
  %9437 = fadd fast float %9433, -5.000000e-01
  %9438 = fadd fast float %9435, -5.000000e-01
  %9439 = fmul fast float %9437, 0xBFD5555560000000
  %9440 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9438, float %9439)  ; FMad(a,b,c)
  %9441 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9434, float 0.000000e+00)  ; FMad(a,b,c)
  %9442 = fadd fast float %9441, %9436
  %9443 = fmul fast float %9437, -7.500000e-01
  %9444 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9438, float %9443)  ; FMad(a,b,c)
  %9445 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9434, float 0.000000e+00)  ; FMad(a,b,c)
  %9446 = fadd fast float %9445, %9436
  %9447 = call float @dx.op.binary.f32(i32 35, float %9440, float -1.000000e+00)  ; FMax(a,b)
  %9448 = call float @dx.op.binary.f32(i32 35, float %9442, float -1.000000e+00)  ; FMax(a,b)
  %9449 = call float @dx.op.binary.f32(i32 35, float %9444, float -1.000000e+00)  ; FMax(a,b)
  %9450 = call float @dx.op.binary.f32(i32 35, float %9446, float -1.000000e+00)  ; FMax(a,b)
  %9451 = call float @dx.op.binary.f32(i32 36, float %9447, float 1.000000e+00)  ; FMin(a,b)
  %9452 = call float @dx.op.binary.f32(i32 36, float %9448, float 1.000000e+00)  ; FMin(a,b)
  %9453 = call float @dx.op.binary.f32(i32 36, float %9449, float 1.000000e+00)  ; FMin(a,b)
  %9454 = call float @dx.op.binary.f32(i32 36, float %9450, float 1.000000e+00)  ; FMin(a,b)
  %9455 = fcmp fast olt float %9451, 0x3FEFFF8020000000
  br i1 %9455, label %9456, label %9571, !dx.controlflow.hints !185

; <label>:9456                                    ; preds = %9423
  %9457 = extractvalue %dx.types.CBufRet.f32 %9339, 3
  %9458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9459 = extractvalue %dx.types.CBufRet.f32 %9458, 0
  %9460 = extractvalue %dx.types.CBufRet.f32 %9458, 1
  %9461 = extractvalue %dx.types.CBufRet.f32 %9458, 2
  %9462 = extractvalue %dx.types.CBufRet.f32 %9458, 3
  %9463 = fsub fast float %9459, %9451
  %9464 = fsub fast float %9460, %9452
  %9465 = fsub fast float %9461, %9453
  %9466 = fsub fast float %9462, %9454
  %9467 = fmul fast float %9463, %9457
  %9468 = fmul fast float %9464, %9457
  %9469 = fmul fast float %9465, %9457
  %9470 = fmul fast float %9466, %9457
  %9471 = fadd fast float %9467, %9451
  %9472 = fadd fast float %9468, %9452
  %9473 = fsub fast float -0.000000e+00, %9472
  %9474 = fadd fast float %9469, %9453
  %9475 = fadd fast float %9470, %9454
  %9476 = fmul fast float %9471, %9471
  %9477 = fsub fast float %9472, %9476
  %9478 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9477)  ; FMax(a,b)
  %9479 = fdiv fast float 1.000000e+00, %9478
  %9480 = fmul fast float %9472, %9471
  %9481 = fsub fast float %9474, %9480
  %9482 = fsub fast float %9431, %9471
  %9483 = fmul fast float %9431, %9431
  %9484 = fsub fast float %9483, %9472
  %9485 = fmul fast float %9482, %9479
  %9486 = fmul fast float %9485, %9481
  %9487 = fsub fast float %9484, %9486
  %9488 = fmul fast float %9472, %9472
  %9489 = fsub fast float %9475, %9488
  %9490 = fmul fast float %9481, %9481
  %9491 = fmul fast float %9490, %9479
  %9492 = fsub fast float %9489, %9491
  %9493 = fdiv fast float %9487, %9492
  %9494 = fmul fast float %9481, %9493
  %9495 = fsub fast float %9482, %9494
  %9496 = fmul fast float %9495, %9479
  %9497 = fmul fast float %9496, %9471
  %9498 = fsub fast float 1.000000e+00, %9497
  %9499 = fmul fast float %9472, %9493
  %9500 = fsub fast float %9498, %9499
  %9501 = fmul fast float %9496, %9496
  %9502 = fmul fast float %9493, 4.000000e+00
  %9503 = fmul fast float %9502, %9500
  %9504 = fsub fast float %9501, %9503
  %9505 = call float @dx.op.unary.f32(i32 24, float %9504)  ; Sqrt(value)
  %9506 = fcmp fast oge float %9496, 0.000000e+00
  %9507 = fsub fast float -0.000000e+00, %9505
  %9508 = select i1 %9506, float %9507, float %9505
  %9509 = fsub fast float %9508, %9496
  %9510 = fdiv fast float %9509, %9493
  %9511 = fdiv fast float %9500, %9509
  %9512 = fmul fast float %9510, 5.000000e-01
  %9513 = fmul fast float %9511, 2.000000e+00
  %9514 = select i1 %9506, float %9512, float %9513
  %9515 = select i1 %9506, float %9513, float %9512
  %9516 = call float @dx.op.binary.f32(i32 35, float %9514, float %9515)  ; FMax(a,b)
  %9517 = call float @dx.op.binary.f32(i32 36, float %9514, float %9515)  ; FMin(a,b)
  %9518 = fcmp fast ogt float %9431, %9517
  br i1 %9518, label %9519, label %9529

; <label>:9519                                    ; preds = %9456
  %9520 = fsub fast float %9431, %9517
  %9521 = fsub fast float %9516, %9517
  %9522 = fmul fast float %9520, %9521
  %9523 = fmul fast float %9516, %9431
  %9524 = fadd fast float %9516, %9431
  %9525 = fmul fast float %9524, %9471
  %9526 = fadd fast float %9523, %9472
  %9527 = fsub fast float %9526, %9525
  %9528 = fdiv fast float %9527, %9522
  br label %9529

; <label>:9529                                    ; preds = %9519, %9456
  %9530 = phi float [ %9528, %9519 ], [ 0.000000e+00, %9456 ]
  %9531 = fcmp fast ogt float %9431, %9516
  %9532 = fsub fast float %9431, %9516
  br i1 %9531, label %9533, label %9543

; <label>:9533                                    ; preds = %9529
  %9534 = fsub fast float %9516, %9517
  %9535 = fmul fast float %9534, %9532
  %9536 = fmul fast float %9517, %9431
  %9537 = fadd fast float %9517, %9431
  %9538 = fmul fast float %9537, %9471
  %9539 = fsub fast float %9473, %9536
  %9540 = fadd fast float %9539, %9538
  %9541 = fdiv fast float %9540, %9535
  %9542 = fadd fast float %9541, %9530
  br label %9543

; <label>:9543                                    ; preds = %9533, %9529
  %9544 = phi float [ %9542, %9533 ], [ %9530, %9529 ]
  %9545 = fsub fast float %9431, %9517
  %9546 = fmul fast float %9545, %9532
  %9547 = fmul fast float %9517, %9516
  %9548 = fadd fast float %9517, %9516
  %9549 = fmul fast float %9548, %9471
  %9550 = fadd fast float %9547, %9472
  %9551 = fsub fast float %9550, %9549
  %9552 = fdiv fast float %9551, %9546
  %9553 = call float @dx.op.unary.f32(i32 7, float %9544)  ; Saturate(value)
  %9554 = fcmp fast oeq float %8222, 0.000000e+00
  %9555 = extractvalue %dx.types.CBufRet.f32 %9339, 0
  %9556 = fcmp fast oeq float %9555, 0.000000e+00
  %9557 = or i1 %9554, %9556
  %9558 = fmul fast float %9555, 2.000000e+00
  %9559 = fadd fast float %9340, %9341
  %9560 = fdiv fast float %9559, %9558
  %9561 = call float @dx.op.unary.f32(i32 7, float %9560)  ; Saturate(value)
  %9562 = fmul fast float %9561, 2.000000e+00
  %9563 = fsub fast float 3.000000e+00, %9562
  %9564 = fmul fast float %9561, %9561
  %9565 = fmul fast float %9564, %9563
  %9566 = select i1 %9557, float 1.000000e+00, float %9565
  %9567 = fmul fast float %9552, %8222
  %9568 = fadd fast float %9553, %9567
  %9569 = call float @dx.op.unary.f32(i32 7, float %9568)  ; Saturate(value)
  %9570 = fmul fast float %9566, %9569
  br label %9571

; <label>:9571                                    ; preds = %9543, %9423
  %9572 = phi float [ %9570, %9543 ], [ 0.000000e+00, %9423 ]
  %9573 = fsub fast float 1.000000e+00, %9572
  %9574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %55, float %9293, float %9294, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9575 = extractvalue %dx.types.ResRet.f32 %9574, 0
  %9576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9577 = extractvalue %dx.types.CBufRet.i32 %9576, 2
  %9578 = icmp eq i32 %9577, 0
  br i1 %9578, label %9584, label %9579

; <label>:9579                                    ; preds = %9571
  %9580 = call float @dx.op.unary.f32(i32 7, float %9572)  ; Saturate(value)
  %9581 = fadd fast float %9575, -1.000000e+00
  %9582 = fmul fast float %9580, %9581
  %9583 = fadd fast float %9582, 1.000000e+00
  br label %9584

; <label>:9584                                    ; preds = %9579, %9571
  %9585 = phi float [ %9583, %9579 ], [ %9573, %9571 ]
  br i1 %9347, label %9586, label %9604

; <label>:9586                                    ; preds = %9584
  %9587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9588 = extractvalue %dx.types.CBufRet.f32 %9587, 1
  %9589 = fsub fast float %9424, %9588
  %9590 = call float @dx.op.unary.f32(i32 7, float %9589)  ; Saturate(value)
  %9591 = fsub fast float %9424, %9346
  %9592 = call float @dx.op.unary.f32(i32 7, float %9591)  ; Saturate(value)
  %9593 = fsub fast float %9590, %9592
  %9594 = fsub fast float %9426, %9592
  %9595 = fdiv fast float %9594, %9593
  %9596 = call float @dx.op.unary.f32(i32 7, float %9595)  ; Saturate(value)
  %9597 = fmul fast float %9596, 2.000000e+00
  %9598 = fsub fast float 3.000000e+00, %9597
  %9599 = fsub fast float %9575, %9585
  %9600 = fmul fast float %9596, %9596
  %9601 = fmul fast float %9600, %9599
  %9602 = fmul fast float %9601, %9598
  %9603 = fadd fast float %9602, %9585
  br label %9604

; <label>:9604                                    ; preds = %9586, %9584
  %9605 = phi float [ %9603, %9586 ], [ %9585, %9584 ]
  %9606 = call float @dx.op.binary.f32(i32 35, float %9575, float %9605)  ; FMax(a,b)
  %9607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9608 = extractvalue %dx.types.CBufRet.i32 %9607, 2
  %9609 = and i32 %9608, 1
  %9610 = icmp eq i32 %9609, 0
  %9611 = fcmp fast une float %9606, 1.000000e+00
  %9612 = and i1 %9611, %9610
  br i1 %9612, label %9613, label %9632

; <label>:9613                                    ; preds = %9604
  %9614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %55, float %9293, float %9294, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9615 = extractvalue %dx.types.ResRet.f32 %9614, 0
  %9616 = extractvalue %dx.types.ResRet.f32 %9614, 1
  %9617 = extractvalue %dx.types.ResRet.f32 %9614, 2
  %9618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9619 = extractvalue %dx.types.CBufRet.f32 %9618, 1
  %9620 = fmul fast float %9619, %9615
  %9621 = fmul fast float %9619, %9616
  %9622 = fmul fast float %9619, %9617
  %9623 = fcmp fast ogt float %9575, 0x3FEFFF2E40000000
  %9624 = fsub fast float 1.000000e+00, %9606
  %9625 = fsub fast float 1.000000e+00, %9575
  %9626 = fdiv fast float %9624, %9625
  %9627 = call float @dx.op.unary.f32(i32 7, float %9626)  ; Saturate(value)
  %9628 = select i1 %9623, float 0.000000e+00, float %9627
  %9629 = fmul fast float %9620, %9628
  %9630 = fmul fast float %9621, %9628
  %9631 = fmul fast float %9622, %9628
  br label %9632

; <label>:9632                                    ; preds = %9613, %9604
  %9633 = phi float [ 0.000000e+00, %9604 ], [ %9629, %9613 ]
  %9634 = phi float [ 0.000000e+00, %9604 ], [ %9630, %9613 ]
  %9635 = phi float [ 0.000000e+00, %9604 ], [ %9631, %9613 ]
  %9636 = fmul fast float %9633, %8210
  %9637 = fmul fast float %9634, %8210
  %9638 = fmul fast float %9635, %8210
  %9639 = fmul fast float %9606, %9268
  %9640 = call float @dx.op.dot3.f32(i32 55, float %9606, float %9606, float %9606, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9641 = call float @dx.op.dot3.f32(i32 55, float %9636, float %9637, float %9638, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9642 = select i1 %275, float %9640, float %9606
  %9643 = select i1 %275, float 1.000000e+00, float %9606
  %9644 = select i1 %275, float %9641, float %9636
  %9645 = select i1 %275, float 0.000000e+00, float %9637
  %9646 = select i1 %275, float 0.000000e+00, float %9638
  %9647 = fmul fast float %9642, %9280
  %9648 = fmul fast float %9642, %9281
  %9649 = fmul fast float %9643, %9282
  %9650 = fadd fast float %9647, %9644
  %9651 = fadd fast float %9648, %9645
  %9652 = fadd fast float %9646, %9649
  %9653 = fmul fast float %9642, %9283
  %9654 = fmul fast float %9642, %9284
  %9655 = fmul fast float %9643, %9285
  br label %9656

; <label>:9656                                    ; preds = %9632, %9289, %9258, %8490
  %9657 = phi float [ %8495, %8490 ], [ %9280, %9258 ], [ %9650, %9632 ], [ %9280, %9289 ]
  %9658 = phi float [ %8496, %8490 ], [ %9281, %9258 ], [ %9651, %9632 ], [ %9281, %9289 ]
  %9659 = phi float [ %8497, %8490 ], [ %9282, %9258 ], [ %9652, %9632 ], [ %9282, %9289 ]
  %9660 = phi float [ %8498, %8490 ], [ %9283, %9258 ], [ %9653, %9632 ], [ %9283, %9289 ]
  %9661 = phi float [ %8499, %8490 ], [ %9284, %9258 ], [ %9654, %9632 ], [ %9284, %9289 ]
  %9662 = phi float [ %8500, %8490 ], [ %9285, %9258 ], [ %9655, %9632 ], [ %9285, %9289 ]
  %9663 = phi float [ %8501, %8490 ], [ %9268, %9258 ], [ %9639, %9632 ], [ %9268, %9289 ]
  %9664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9665 = extractvalue %dx.types.CBufRet.f32 %9664, 2
  %9666 = extractvalue %dx.types.CBufRet.f32 %9664, 3
  %9667 = fmul fast float %9665, %116
  %9668 = fmul fast float %9666, %117
  %9669 = call float @dx.op.unary.f32(i32 7, float %9667)  ; Saturate(value)
  %9670 = call float @dx.op.unary.f32(i32 7, float %9668)  ; Saturate(value)
  %9671 = select i1 %8232, i32 2, i32 0
  %9672 = or i32 %9671, 1
  %9673 = uitofp i32 %9672 to float
  %9674 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9669, float %9670, float %9673, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9675 = extractvalue %dx.types.ResRet.f32 %9674, 0
  %9676 = extractvalue %dx.types.ResRet.f32 %9674, 1
  %9677 = extractvalue %dx.types.ResRet.f32 %9674, 2
  %9678 = extractvalue %dx.types.ResRet.f32 %9674, 3
  %9679 = add nuw nsw i32 %9671, 2
  %9680 = uitofp i32 %9679 to float
  %9681 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9669, float %9670, float %9680, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9682 = extractvalue %dx.types.ResRet.f32 %9681, 0
  %9683 = extractvalue %dx.types.ResRet.f32 %9681, 1
  %9684 = extractvalue %dx.types.ResRet.f32 %9681, 2
  %9685 = extractvalue %dx.types.ResRet.f32 %9681, 3
  %9686 = call float @dx.op.binary.f32(i32 35, float %9676, float %9677)  ; FMax(a,b)
  %9687 = call float @dx.op.binary.f32(i32 35, float %9675, float %9686)  ; FMax(a,b)
  %9688 = call float @dx.op.binary.f32(i32 35, float %9687, float %9678)  ; FMax(a,b)
  %9689 = call float @dx.op.binary.f32(i32 36, float %9683, float %9684)  ; FMin(a,b)
  %9690 = call float @dx.op.binary.f32(i32 36, float %9682, float %9689)  ; FMin(a,b)
  %9691 = call float @dx.op.binary.f32(i32 36, float %9690, float %9685)  ; FMin(a,b)
  %9692 = fmul fast float %9688, 2.550000e+02
  %9693 = fadd fast float %9692, 0x3F70101020000000
  %9694 = fptoui float %9693 to i32
  %9695 = fmul fast float %9691, 2.550000e+02
  %9696 = fadd fast float %9695, 0x3F70101020000000
  %9697 = fptoui float %9696 to i32
  %9698 = icmp ult i32 %9694, %9697
  br i1 %9698, label %9699, label %9868

; <label>:9699                                    ; preds = %9656
  %9700 = fcmp fast ogt float %102, 9.843750e-01
  %9701 = fadd fast float %8494, -4.000000e+00
  %9702 = select i1 %9700, float -4.000000e+00, float %9701
  %9703 = call float @dx.op.binary.f32(i32 35, float %9702, float 0.000000e+00)  ; FMax(a,b)
  %9704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9705 = extractvalue %dx.types.CBufRet.f32 %9704, 0
  %9706 = fadd fast float %9705, %9703
  %9707 = extractvalue %dx.types.CBufRet.f32 %9704, 2
  %9708 = fmul fast float %9706, %9707
  %9709 = call float @dx.op.unary.f32(i32 23, float %9708)  ; Log(value)
  %9710 = extractvalue %dx.types.CBufRet.f32 %9704, 3
  %9711 = fmul fast float %9710, %9709
  %9712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9713 = extractvalue %dx.types.CBufRet.f32 %9712, 2
  %9714 = fmul fast float %9711, %9713
  %9715 = call float @dx.op.unary.f32(i32 7, float %9714)  ; Saturate(value)
  %9716 = uitofp i32 %9694 to float
  %9717 = uitofp i32 %9697 to float
  %9718 = fadd fast float %9716, 5.000000e-01
  %9719 = fadd fast float %9717, 5.000000e-01
  %9720 = fmul fast float %9713, %9718
  %9721 = fmul fast float %9713, %9719
  %9722 = fadd fast float %9720, 0x3F0FFB4800000000
  %9723 = fadd fast float %9721, 0xBF0FFB4800000000
  %9724 = call float @dx.op.binary.f32(i32 35, float %9715, float %9722)  ; FMax(a,b)
  %9725 = call float @dx.op.binary.f32(i32 36, float %9724, float %9723)  ; FMin(a,b)
  %9726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9727 = extractvalue %dx.types.CBufRet.f32 %9726, 1
  %9728 = extractvalue %dx.types.CBufRet.f32 %9726, 2
  %9729 = extractvalue %dx.types.CBufRet.f32 %9726, 0
  %9730 = select i1 %8232, float %9729, float 0.000000e+00
  %9731 = fmul fast float %9727, %9725
  %9732 = fadd fast float %9730, %9731
  %9733 = fadd fast float %9730, %9728
  %9734 = fsub fast float %9727, %9728
  %9735 = fadd fast float %9734, %9730
  %9736 = call float @dx.op.binary.f32(i32 35, float %9732, float %9733)  ; FMax(a,b)
  %9737 = call float @dx.op.binary.f32(i32 36, float %9736, float %9735)  ; FMin(a,b)
  %9738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %9669, float %9670, float %9737, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9739 = extractvalue %dx.types.ResRet.f32 %9738, 0
  %9740 = extractvalue %dx.types.ResRet.f32 %9738, 1
  %9741 = extractvalue %dx.types.ResRet.f32 %9738, 2
  %9742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9743 = extractvalue %dx.types.CBufRet.i32 %9742, 0
  %9744 = extractvalue %dx.types.CBufRet.i32 %9742, 1
  %9745 = uitofp i32 %9743 to float
  %9746 = uitofp i32 %9744 to float
  %9747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9748 = extractvalue %dx.types.CBufRet.f32 %9747, 0
  %9749 = extractvalue %dx.types.CBufRet.f32 %9747, 1
  %9750 = fmul fast float %9745, %9669
  %9751 = fmul fast float %9746, %9670
  %9752 = fadd fast float %9750, -5.000000e-01
  %9753 = fadd fast float %9751, -5.000000e-01
  %9754 = call float @dx.op.unary.f32(i32 22, float %9752)  ; Frc(value)
  %9755 = call float @dx.op.unary.f32(i32 22, float %9753)  ; Frc(value)
  %9756 = fmul fast float %9754, %9754
  %9757 = fmul fast float %9756, %9754
  %9758 = fsub fast float 3.000000e+00, %9754
  %9759 = fmul fast float %9756, %9758
  %9760 = fmul fast float %9754, 3.000000e+00
  %9761 = fmul fast float %9757, 3.000000e+00
  %9762 = fmul fast float %9756, 6.000000e+00
  %9763 = fsub fast float %9761, %9762
  %9764 = fadd fast float %9763, 4.000000e+00
  %9765 = fmul fast float %9764, 0x3FC5555560000000
  %9766 = fmul fast float %9757, -3.000000e+00
  %9767 = fadd fast float %9756, %9754
  %9768 = fmul fast float %9767, 3.000000e+00
  %9769 = fadd fast float %9766, 1.000000e+00
  %9770 = fadd fast float %9769, %9768
  %9771 = fmul fast float %9757, 0x3FC5555560000000
  %9772 = fmul fast float %9755, %9755
  %9773 = fmul fast float %9772, %9755
  %9774 = fsub fast float 3.000000e+00, %9755
  %9775 = fmul fast float %9772, %9774
  %9776 = fmul fast float %9755, 3.000000e+00
  %9777 = fmul fast float %9773, 3.000000e+00
  %9778 = fmul fast float %9772, 6.000000e+00
  %9779 = fsub fast float %9777, %9778
  %9780 = fadd fast float %9779, 4.000000e+00
  %9781 = fmul fast float %9780, 0x3FC5555560000000
  %9782 = fmul fast float %9773, -3.000000e+00
  %9783 = fadd fast float %9772, %9755
  %9784 = fmul fast float %9783, 3.000000e+00
  %9785 = fadd fast float %9782, 1.000000e+00
  %9786 = fadd fast float %9785, %9784
  %9787 = fmul fast float %9773, 0x3FC5555560000000
  %9788 = fadd fast float %9754, 1.000000e+00
  %9789 = fsub fast float 1.000000e+00, %9760
  %9790 = fadd fast float %9789, %9759
  %9791 = fadd fast float %9790, %9764
  %9792 = fmul fast float %9791, 0x3FC5555560000000
  %9793 = fdiv fast float %9765, %9792
  %9794 = fsub fast float %9788, %9793
  %9795 = fsub fast float 1.000000e+00, %9754
  %9796 = fadd fast float %9770, %9757
  %9797 = fmul fast float %9796, 0x3FC5555560000000
  %9798 = fdiv fast float %9771, %9797
  %9799 = fadd fast float %9795, %9798
  %9800 = fadd fast float %9755, 1.000000e+00
  %9801 = fsub fast float 1.000000e+00, %9776
  %9802 = fadd fast float %9801, %9775
  %9803 = fadd fast float %9802, %9780
  %9804 = fmul fast float %9803, 0x3FC5555560000000
  %9805 = fdiv fast float %9781, %9804
  %9806 = fsub fast float %9800, %9805
  %9807 = fsub fast float 1.000000e+00, %9755
  %9808 = fadd fast float %9786, %9773
  %9809 = fmul fast float %9808, 0x3FC5555560000000
  %9810 = fdiv fast float %9787, %9809
  %9811 = fadd fast float %9810, %9807
  %9812 = fmul fast float %9794, %9748
  %9813 = fsub fast float %9669, %9812
  %9814 = fmul fast float %9799, %9748
  %9815 = fadd fast float %9814, %9669
  %9816 = fmul fast float %9811, %9749
  %9817 = fadd fast float %9816, %9670
  %9818 = fmul fast float %9806, %9749
  %9819 = fsub fast float %9670, %9818
  %9820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9813, float %9819, float %9737, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9821 = extractvalue %dx.types.ResRet.f32 %9820, 0
  %9822 = extractvalue %dx.types.ResRet.f32 %9820, 1
  %9823 = extractvalue %dx.types.ResRet.f32 %9820, 2
  %9824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9815, float %9819, float %9737, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9825 = extractvalue %dx.types.ResRet.f32 %9824, 0
  %9826 = extractvalue %dx.types.ResRet.f32 %9824, 1
  %9827 = extractvalue %dx.types.ResRet.f32 %9824, 2
  %9828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9813, float %9817, float %9737, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9829 = extractvalue %dx.types.ResRet.f32 %9828, 0
  %9830 = extractvalue %dx.types.ResRet.f32 %9828, 1
  %9831 = extractvalue %dx.types.ResRet.f32 %9828, 2
  %9832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9815, float %9817, float %9737, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9833 = extractvalue %dx.types.ResRet.f32 %9832, 0
  %9834 = extractvalue %dx.types.ResRet.f32 %9832, 1
  %9835 = extractvalue %dx.types.ResRet.f32 %9832, 2
  %9836 = fsub fast float %9829, %9821
  %9837 = fsub fast float %9830, %9822
  %9838 = fsub fast float %9831, %9823
  %9839 = fmul fast float %9836, %9809
  %9840 = fmul fast float %9837, %9809
  %9841 = fmul fast float %9838, %9809
  %9842 = fadd fast float %9839, %9821
  %9843 = fadd fast float %9840, %9822
  %9844 = fadd fast float %9841, %9823
  %9845 = fsub fast float %9833, %9825
  %9846 = fsub fast float %9834, %9826
  %9847 = fsub fast float %9835, %9827
  %9848 = fmul fast float %9845, %9809
  %9849 = fmul fast float %9846, %9809
  %9850 = fmul fast float %9847, %9809
  %9851 = fsub fast float %9825, %9842
  %9852 = fadd fast float %9851, %9848
  %9853 = fsub fast float %9826, %9843
  %9854 = fadd fast float %9853, %9849
  %9855 = fsub fast float %9827, %9844
  %9856 = fadd fast float %9855, %9850
  %9857 = fmul fast float %9852, %9797
  %9858 = fmul fast float %9854, %9797
  %9859 = fmul fast float %9856, %9797
  %9860 = fadd fast float %9857, %9842
  %9861 = fadd fast float %9858, %9843
  %9862 = fadd fast float %9859, %9844
  %9863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9864 = extractvalue %dx.types.CBufRet.f32 %9863, 1
  %9865 = fmul fast float %9860, %9864
  %9866 = fmul fast float %9861, %9864
  %9867 = fmul fast float %9862, %9864
  br label %9868

; <label>:9868                                    ; preds = %9699, %9656
  %9869 = phi float [ %9739, %9699 ], [ 1.000000e+00, %9656 ]
  %9870 = phi float [ %9740, %9699 ], [ 1.000000e+00, %9656 ]
  %9871 = phi float [ %9741, %9699 ], [ 1.000000e+00, %9656 ]
  %9872 = phi float [ %9865, %9699 ], [ 0.000000e+00, %9656 ]
  %9873 = phi float [ %9866, %9699 ], [ 0.000000e+00, %9656 ]
  %9874 = phi float [ %9867, %9699 ], [ 0.000000e+00, %9656 ]
  %9875 = fmul fast float %9872, %8210
  %9876 = fmul fast float %9873, %8210
  %9877 = fmul fast float %9874, %8210
  %9878 = fmul fast float %9869, %9663
  %9879 = call float @dx.op.dot3.f32(i32 55, float %9869, float %9870, float %9871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9880 = call float @dx.op.dot3.f32(i32 55, float %9875, float %9876, float %9877, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9881 = select i1 %275, float %9879, float %9869
  %9882 = select i1 %275, float %9879, float %9870
  %9883 = select i1 %275, float 1.000000e+00, float %9871
  %9884 = select i1 %275, float %9880, float %9875
  %9885 = select i1 %275, float 0.000000e+00, float %9876
  %9886 = select i1 %275, float 0.000000e+00, float %9877
  %9887 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9888 = extractvalue %dx.types.CBufRet.i32 %9887, 3
  %9889 = and i32 %9888, 3
  %9890 = icmp ne i32 %9889, 0
  %9891 = and i32 %9888, 4
  %9892 = icmp ne i32 %9891, 0
  %9893 = and i1 %9890, %9892
  %9894 = and i1 %275, %9893
  br i1 %9894, label %9895, label %9901

; <label>:9895                                    ; preds = %9868
  %9896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9897 = extractvalue %dx.types.CBufRet.f32 %9896, 1
  %9898 = fadd fast float %9878, -1.000000e+00
  %9899 = fmul fast float %9897, %9898
  %9900 = fadd fast float %9899, 1.000000e+00
  br label %9901

; <label>:9901                                    ; preds = %9895, %9868
  %9902 = phi float [ %9900, %9895 ], [ %9878, %9868 ]
  %9903 = fadd fast float %9660, %9657
  %9904 = fmul fast float %9881, %9903
  %9905 = fadd fast float %9904, %9884
  %9906 = fadd fast float %9661, %9658
  %9907 = fmul fast float %9882, %9906
  %9908 = fadd fast float %9907, %9885
  %9909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9910 = extractvalue %dx.types.CBufRet.f32 %9909, 0
  br i1 %275, label %9911, label %9935

; <label>:9911                                    ; preds = %9901
  %9912 = fadd fast float %9905, %9908
  %9913 = fmul fast float %9910, %9912
  %9914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9915 = extractvalue %dx.types.CBufRet.f32 %9914, 3
  %9916 = extractvalue %dx.types.CBufRet.f32 %8214, 1
  %9917 = fsub fast float %8219, %8213
  %9918 = fadd fast float %9917, %8220
  %9919 = fsub fast float %9918, %9916
  %9920 = extractvalue %dx.types.CBufRet.f32 %8214, 2
  %9921 = fmul fast float %9919, %9920
  %9922 = call float @dx.op.unary.f32(i32 7, float %9921)  ; Saturate(value)
  %9923 = fsub fast float %9922, %9915
  %9924 = fmul fast float %9923, %9902
  %9925 = fadd fast float %9924, %9915
  %9926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9927 = extractvalue %dx.types.CBufRet.f32 %9926, 0
  %9928 = fsub fast float %9925, %9927
  %9929 = fmul fast float %9928, 1.000000e+01
  %9930 = call float @dx.op.unary.f32(i32 7, float %9929)  ; Saturate(value)
  %9931 = fsub fast float %3903, %8210
  %9932 = fmul fast float %9930, %9931
  %9933 = fadd fast float %9932, %8210
  %9934 = fmul fast float %9933, %9925
  br label %9959

; <label>:9935                                    ; preds = %9901
  %9936 = fadd fast float %9662, %9659
  %9937 = fmul fast float %9883, %9936
  %9938 = fadd fast float %9937, %9886
  %9939 = fmul fast float %9910, %9905
  %9940 = fmul fast float %9910, %9908
  %9941 = fmul fast float %9910, %9938
  %9942 = call float @dx.op.binary.f32(i32 35, float %9940, float %9941)  ; FMax(a,b)
  %9943 = call float @dx.op.binary.f32(i32 35, float %9939, float %9942)  ; FMax(a,b)
  %9944 = call float @dx.op.binary.f32(i32 35, float %9943, float %8210)  ; FMax(a,b)
  %9945 = fcmp fast ugt float %9944, 0x3F10000000000000
  br i1 %9945, label %9947, label %9946

; <label>:9946                                    ; preds = %9935
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9947

; <label>:9947                                    ; preds = %9946, %9935
  %9948 = add i32 %61, 356
  %9949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %9948, i32 undef)  ; BufferLoad(srv,index,wot)
  %9950 = extractvalue %dx.types.ResRet.i32 %9949, 0
  %9951 = and i32 %9950, 32
  %9952 = icmp eq i32 %9951, 0
  br i1 %9952, label %9959, label %9953

; <label>:9953                                    ; preds = %9947
  %9954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9955 = extractvalue %dx.types.CBufRet.f32 %9954, 0
  %9956 = fmul fast float %9955, 0x3FE99999A0000000
  %9957 = fadd fast float %9955, %9939
  %9958 = fadd fast float %9956, %9941
  br label %9959

; <label>:9959                                    ; preds = %9953, %9947, %9911
  %9960 = phi float [ %9913, %9911 ], [ %9957, %9953 ], [ %9939, %9947 ]
  %9961 = phi float [ %9934, %9911 ], [ %9940, %9953 ], [ %9940, %9947 ]
  %9962 = phi float [ %9933, %9911 ], [ %9958, %9953 ], [ %9941, %9947 ]
  %9963 = phi float [ %9933, %9911 ], [ %8210, %9953 ], [ %8210, %9947 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9964 = call float @dx.op.binary.f32(i32 36, float %9960, float 3.225500e+04)  ; FMin(a,b)
  %9965 = call float @dx.op.binary.f32(i32 36, float %9961, float 3.225500e+04)  ; FMin(a,b)
  %9966 = call float @dx.op.binary.f32(i32 36, float %9962, float 3.225500e+04)  ; FMin(a,b)
  %9967 = call float @dx.op.binary.f32(i32 36, float %9963, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9964)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9965)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9966)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9967)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

