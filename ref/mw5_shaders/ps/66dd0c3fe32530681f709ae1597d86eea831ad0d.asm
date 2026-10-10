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
; shader hash: f27c494c884d688a36fb6085f9107974
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
;   output 4 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 36, 37, 44, 45, 46, 48, 52 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 36, 37, 44, 45, 46, 48, 52 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 36, 37, 44, 45, 46, 48, 52 }
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
  %219 = add i32 %61, 360
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = extractvalue %dx.types.ResRet.i32 %220, 1
  %223 = extractvalue %dx.types.ResRet.i32 %220, 2
  %224 = extractvalue %dx.types.ResRet.i32 %220, 3
  %225 = bitcast i32 %221 to float
  %226 = bitcast i32 %222 to float
  %227 = bitcast i32 %223 to float
  %228 = bitcast i32 %224 to float
  %229 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %230 = call float @dx.op.unary.f32(i32 25, float %229)  ; Rsqrt(value)
  %231 = fmul fast float %230, %123
  %232 = fmul fast float %230, %124
  %233 = fmul fast float %230, %125
  %234 = call float @dx.op.dot3.f32(i32 55, float %203, float %204, float %205, float %203, float %204, float %205)  ; Dot3(ax,ay,az,bx,by,bz)
  %235 = call float @dx.op.unary.f32(i32 25, float %234)  ; Rsqrt(value)
  %236 = fmul fast float %235, %203
  %237 = fmul fast float %235, %204
  %238 = fmul fast float %235, %205
  %239 = call float @dx.op.dot3.f32(i32 55, float %236, float %237, float %238, float %231, float %232, float %233)  ; Dot3(ax,ay,az,bx,by,bz)
  %240 = fmul fast float %239, %239
  %241 = fmul fast float %240, %227
  %242 = fadd fast float %241, %228
  %243 = call float @dx.op.unary.f32(i32 7, float %242)  ; Saturate(value)
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 3
  %246 = fmul fast float %245, %234
  %247 = fsub fast float %225, %246
  %248 = fmul fast float %247, %226
  %249 = call float @dx.op.unary.f32(i32 7, float %248)  ; Saturate(value)
  %250 = fmul fast float %249, %243
  %251 = fmul fast float %116, 5.000000e-01
  %252 = fmul fast float %117, 5.000000e-01
  %253 = fptosi float %251 to i32
  %254 = fptosi float %252 to i32
  %255 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %253, i32 %254, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = lshr i32 %256, 18
  %258 = uitofp i32 %257 to float
  %259 = fmul fast float %258, 0x3F4C00EBA0000000
  %260 = call float @dx.op.unary.f32(i32 21, float %259)  ; Exp(value)
  %261 = fadd fast float %260, -1.000000e+00
  %262 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %263 = extractvalue %dx.types.Dimensions %262, 0
  %264 = sitofp i32 %263 to float
  %265 = extractvalue %dx.types.Dimensions %262, 1
  %266 = sitofp i32 %265 to float
  %267 = fcmp fast oge float %251, %264
  %268 = fcmp fast oge float %252, %266
  %269 = or i1 %267, %268
  %270 = select i1 %269, float 0x4197782600000000, float %261
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %273 = extractvalue %dx.types.CBufRet.f32 %271, 3
  %274 = fmul fast float %272, %116
  %275 = fmul fast float %273, %117
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 114688
  %279 = icmp ne i32 %278, 0
  %280 = select i1 %279, float %274, float 0.000000e+00
  %281 = select i1 %279, float %275, float 0.000000e+00
  %282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %56, float %280, float %281, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = fmul fast float %283, 2.550000e+02
  %285 = fptoui float %284 to i32
  %286 = select i1 %279, i32 %285, i32 0
  %287 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.i32 %287, 3
  %289 = and i32 %288, 3
  %290 = icmp ne i32 %289, 0
  %291 = and i32 %288, 4
  %292 = icmp ne i32 %291, 0
  %293 = and i1 %290, %292
  br i1 %293, label %294, label %303

; <label>:294                                     ; preds = %0
  %295 = fmul fast float %151, %117
  %296 = fmul fast float %150, %116
  %297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %55, float %296, float %295, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  %299 = fsub fast float 1.000000e+00, %298
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 0
  %302 = fcmp fast olt float %299, %301
  br label %306

; <label>:303                                     ; preds = %0
  %304 = icmp eq i32 %291, 0
  %305 = and i1 %290, %304
  br label %306

; <label>:306                                     ; preds = %303, %294
  %307 = phi i1 [ %302, %294 ], [ %305, %303 ]
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 2
  %310 = fmul fast float %309, 0x3FE3C6EF40000000
  %311 = frem fast float %116, 2.560000e+02
  %312 = frem fast float %117, 2.560000e+02
  %313 = fptoui float %311 to i32
  %314 = fptoui float %312 to i32
  %315 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %313, i32 %314, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = fadd fast float %316, %310
  %318 = call float @dx.op.unary.f32(i32 22, float %317)  ; Frc(value)
  %319 = add i32 %61, 156
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = shl i32 %321, 4
  %323 = and i32 %322, 32752
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %321, 7
  %326 = and i32 %325, 32752
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %321, 22
  %329 = shl nuw nsw i32 %328, 5
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = add i32 %61, 216
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = lshr i32 %333, 8
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = lshr i32 %333, 16
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = add i32 %61, 36
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = add i32 %61, 288
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = fmul fast float %356, 0x3F50624DE0000000
  %360 = fmul fast float %358, 0x3F50624DE0000000
  %361 = add i32 %61, 172
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = shl i32 %363, 4
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %363, 7
  %368 = and i32 %367, 32752
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %363, 22
  %371 = shl nuw nsw i32 %370, 5
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = add i32 %61, 232
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F70101020000000
  %379 = lshr i32 %375, 8
  %380 = and i32 %379, 255
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %381, 0x3F70101020000000
  %383 = lshr i32 %375, 16
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = add i32 %61, 52
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 65535
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = lshr i32 %389, 16
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = add i32 %61, 304
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = and i32 %396, 65535
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %396, 16
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = fmul fast float %398, 0x3F50624DE0000000
  %402 = fmul fast float %400, 0x3F50624DE0000000
  %403 = add i32 %61, 188
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = shl i32 %405, 4
  %407 = and i32 %406, 32752
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = lshr i32 %405, 7
  %410 = and i32 %409, 32752
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = lshr i32 %405, 22
  %413 = shl nuw nsw i32 %412, 5
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = add i32 %61, 248
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 255
  %419 = uitofp i32 %418 to float
  %420 = fmul fast float %419, 0x3F70101020000000
  %421 = lshr i32 %417, 8
  %422 = and i32 %421, 255
  %423 = uitofp i32 %422 to float
  %424 = fmul fast float %423, 0x3F70101020000000
  %425 = lshr i32 %417, 16
  %426 = and i32 %425, 255
  %427 = uitofp i32 %426 to float
  %428 = fmul fast float %427, 0x3F70101020000000
  %429 = add i32 %61, 68
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 65535
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = lshr i32 %431, 16
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = add i32 %61, 320
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = and i32 %438, 65535
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = lshr i32 %438, 16
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = fmul fast float %440, 0x3F50624DE0000000
  %444 = fmul fast float %442, 0x3F50624DE0000000
  %445 = add i32 %61, 204
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = shl i32 %447, 4
  %449 = and i32 %448, 32752
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = lshr i32 %447, 7
  %452 = and i32 %451, 32752
  %453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %452)  ; LegacyF16ToF32(value)
  %454 = lshr i32 %447, 22
  %455 = shl nuw nsw i32 %454, 5
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = add i32 %61, 264
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 255
  %461 = uitofp i32 %460 to float
  %462 = fmul fast float %461, 0x3F70101020000000
  %463 = lshr i32 %459, 8
  %464 = and i32 %463, 255
  %465 = uitofp i32 %464 to float
  %466 = fmul fast float %465, 0x3F70101020000000
  %467 = lshr i32 %459, 16
  %468 = and i32 %467, 255
  %469 = uitofp i32 %468 to float
  %470 = fmul fast float %469, 0x3F70101020000000
  %471 = add i32 %61, 84
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = and i32 %473, 65535
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = lshr i32 %473, 16
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = add i32 %61, 336
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = and i32 %480, 65535
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = lshr i32 %480, 16
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = fmul fast float %482, 0x3F50624DE0000000
  %486 = fmul fast float %484, 0x3F50624DE0000000
  %487 = add i32 %61, 348
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = and i32 %489, 32
  %491 = icmp eq i32 %490, 0
  %492 = and i32 %489, 64
  %493 = icmp eq i32 %492, 0
  %494 = and i32 %489, 128
  %495 = icmp eq i32 %494, 0
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = and i32 %497, 2
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %515, label %500

; <label>:500                                     ; preds = %306
  %501 = add i32 %61, 540
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = add i32 %503, 0
  %505 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %504, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %506 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %505, %dx.types.Handle %113, float %94, float %95, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = extractvalue %dx.types.ResRet.f32 %506, 1
  %509 = extractvalue %dx.types.ResRet.f32 %506, 2
  %510 = extractvalue %dx.types.ResRet.f32 %506, 3
  %511 = fmul fast float %510, %96
  %512 = fmul fast float %507, %97
  %513 = fmul fast float %508, %98
  %514 = fmul fast float %509, %99
  br label %515

; <label>:515                                     ; preds = %500, %306
  %516 = phi float [ %99, %306 ], [ %514, %500 ]
  %517 = phi float [ %98, %306 ], [ %513, %500 ]
  %518 = phi float [ %97, %306 ], [ %512, %500 ]
  %519 = phi float [ %96, %306 ], [ %511, %500 ]
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = and i32 %521, 2
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %543, label %524

; <label>:524                                     ; preds = %515
  %525 = add i32 %61, 44
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = and i32 %527, 1
  %529 = icmp ne i32 %528, 0
  %530 = select i1 %529, float %518, float 1.000000e+00
  %531 = add i32 %61, 60
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = and i32 %533, 1
  %535 = icmp ne i32 %534, 0
  %536 = select i1 %535, float %517, float 1.000000e+00
  %537 = add i32 %61, 76
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = and i32 %539, 1
  %541 = icmp ne i32 %540, 0
  %542 = select i1 %541, float %516, float 1.000000e+00
  br label %543

; <label>:543                                     ; preds = %524, %515
  %544 = phi float [ %516, %515 ], [ %542, %524 ]
  %545 = phi float [ %517, %515 ], [ %536, %524 ]
  %546 = phi float [ %518, %515 ], [ %530, %524 ]
  %547 = lshr i32 %521, 20
  %548 = and i32 %547, 3
  %549 = add nuw nsw i32 %548, 1
  %550 = add i32 %61, 24
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = add i32 %61, 28
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = or i32 %555, %552
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %1092, label %558

; <label>:558                                     ; preds = %543
  %559 = and i32 %552, 262144
  %560 = icmp ne i32 %559, 0
  %561 = select i1 %560, float %67, float 1.000000e+00
  %562 = select i1 %560, float %68, float 0.000000e+00
  %563 = select i1 %560, float %69, float 0.000000e+00
  %564 = select i1 %560, float %70, float 1.000000e+00
  %565 = select i1 %560, float %71, float %94
  %566 = select i1 %560, float %72, float %95
  %567 = add i32 %61, 284
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = lshr i32 %569, 16
  %571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %570)  ; LegacyF16ToF32(value)
  %572 = fmul fast float %571, 0x3F50624DE0000000
  %573 = add i32 %61, 88
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = lshr i32 %575, 16
  %577 = and i32 %576, 255
  %578 = lshr i32 %575, 24
  %579 = add i32 %61, 292
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = and i32 %581, 65535
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = lshr i32 %581, 16
  %585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %584)  ; LegacyF16ToF32(value)
  %586 = add i32 %61, 32
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = lshr i32 %588, 22
  %590 = shl nuw nsw i32 %589, 5
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = shl i32 %588, 4
  %593 = and i32 %592, 32752
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = lshr i32 %588, 7
  %596 = and i32 %595, 32752
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 3
  %600 = fmul fast float %599, 1.000000e+03
  %601 = fmul fast float %359, %600
  %602 = call float @dx.op.unary.f32(i32 22, float %601)  ; Frc(value)
  %603 = fadd fast float %602, %349
  %604 = fmul fast float %360, %600
  %605 = call float @dx.op.unary.f32(i32 22, float %604)  ; Frc(value)
  %606 = fadd fast float %605, %351
  %607 = fmul fast float %572, %600
  %608 = call float @dx.op.unary.f32(i32 22, float %607)  ; Frc(value)
  %609 = fmul fast float %608, 0x401921FB60000000
  %610 = fadd fast float %609, %591
  %611 = call float @dx.op.unary.f32(i32 13, float %610)  ; Sin(value)
  %612 = call float @dx.op.unary.f32(i32 12, float %610)  ; Cos(value)
  %613 = fsub fast float -0.000000e+00, %611
  %614 = fadd fast float %565, -5.000000e-01
  %615 = fadd fast float %566, -5.000000e-01
  %616 = fmul fast float %583, %614
  %617 = fmul fast float %585, %615
  %618 = fadd fast float %616, 5.000000e-01
  %619 = fadd fast float %617, 5.000000e-01
  %620 = fmul fast float %594, %618
  %621 = fmul fast float %597, %619
  %622 = fmul fast float %612, %620
  %623 = call float @dx.op.tertiary.f32(i32 46, float %613, float %621, float %622)  ; FMad(a,b,c)
  %624 = fmul fast float %611, %620
  %625 = call float @dx.op.tertiary.f32(i32 46, float %612, float %621, float %624)  ; FMad(a,b,c)
  %626 = fadd fast float %603, %623
  %627 = fadd fast float %606, %625
  %628 = icmp ugt i32 %577, 1
  %629 = icmp ugt i32 %575, 33554431
  %630 = or i1 %629, %628
  br i1 %630, label %631, label %656

; <label>:631                                     ; preds = %558
  %632 = add i32 %61, 228
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = lshr i32 %634, 16
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = fmul fast float %599, %636
  %638 = call float @dx.op.unary.f32(i32 22, float %637)  ; Frc(value)
  %639 = mul nuw nsw i32 %577, %578
  %640 = uitofp i32 %639 to float
  %641 = fmul fast float %638, %640
  %642 = call float @dx.op.unary.f32(i32 27, float %641)  ; Round_ni(value)
  %643 = fptoui float %642 to i32
  %644 = urem i32 %643, %577
  %645 = udiv i32 %643, %578
  %646 = call float @dx.op.unary.f32(i32 22, float %626)  ; Frc(value)
  %647 = call float @dx.op.unary.f32(i32 22, float %627)  ; Frc(value)
  %648 = uitofp i32 %644 to float
  %649 = uitofp i32 %645 to float
  %650 = fadd fast float %646, %648
  %651 = fadd fast float %647, %649
  %652 = uitofp i32 %577 to float
  %653 = uitofp i32 %578 to float
  %654 = fdiv fast float %650, %652
  %655 = fdiv fast float %651, %653
  br label %656

; <label>:656                                     ; preds = %631, %558
  %657 = phi float [ %654, %631 ], [ %626, %558 ]
  %658 = phi float [ %655, %631 ], [ %627, %558 ]
  %659 = and i32 %552, 256
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %707, label %661

; <label>:661                                     ; preds = %656
  %662 = add i32 %61, 488
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %662, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = add i32 %664, 0
  %666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %667 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %666, %dx.types.Handle %113, float %657, float %658, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %668 = extractvalue %dx.types.ResRet.f32 %667, 0
  %669 = add i32 %61, 100
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = shl i32 %671, 4
  %673 = and i32 %672, 32752
  %674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %673)  ; LegacyF16ToF32(value)
  %675 = lshr i32 %671, 7
  %676 = and i32 %675, 32752
  %677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %676)  ; LegacyF16ToF32(value)
  %678 = fsub fast float 1.000000e+00, %519
  %679 = call float @dx.op.binary.f32(i32 35, float %678, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %680 = bitcast float %519 to i32
  %681 = sitofp i32 %680 to float
  %682 = fadd fast float %681, 0xC1CFBF8940000000
  %683 = fmul fast float %677, %682
  %684 = fadd fast float %683, 0x41CFBF8940000000
  %685 = fptosi float %684 to i32
  %686 = bitcast i32 %685 to float
  %687 = bitcast float %679 to i32
  %688 = sitofp i32 %687 to float
  %689 = fadd fast float %688, 0xC1CFBF8940000000
  %690 = fmul fast float %689, %677
  %691 = fadd fast float %690, 0x41CFBF8940000000
  %692 = fptosi float %691 to i32
  %693 = bitcast i32 %692 to float
  %694 = fmul fast float %686, %674
  %695 = fmul fast float %693, %674
  %696 = fsub fast float %679, %694
  %697 = fadd fast float %695, %679
  %698 = call float @dx.op.unary.f32(i32 7, float %696)  ; Saturate(value)
  %699 = call float @dx.op.unary.f32(i32 7, float %697)  ; Saturate(value)
  %700 = fsub fast float %668, %698
  %701 = fsub fast float %699, %698
  %702 = bitcast float %701 to i32
  %703 = sub nsw i32 2129859010, %702
  %704 = bitcast i32 %703 to float
  %705 = fmul fast float %704, %700
  %706 = call float @dx.op.unary.f32(i32 7, float %705)  ; Saturate(value)
  br label %707

; <label>:707                                     ; preds = %661, %656
  %708 = phi float [ %706, %661 ], [ %519, %656 ]
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = and i32 %710, 128
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %729, label %713

; <label>:713                                     ; preds = %707
  %714 = add i32 %61, 472
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = add i32 %716, 0
  %718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %717, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %719 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %718, %dx.types.Handle %113, float %657, float %658, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %720 = extractvalue %dx.types.ResRet.f32 %719, 0
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 524288
  %724 = icmp ne i32 %723, 0
  %725 = fcmp fast ogt float %720, 0x3FE0101020000000
  %726 = select i1 %725, float 1.000000e+00, float 0.000000e+00
  %727 = select i1 %724, float %726, float %720
  %728 = fmul fast float %727, %708
  br label %729

; <label>:729                                     ; preds = %713, %707
  %730 = phi float [ %728, %713 ], [ %708, %707 ]
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 16
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %933, label %735

; <label>:735                                     ; preds = %729
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = add i32 %61, 424
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %738, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = add i32 %740, 0
  %742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %743 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %742, %dx.types.Handle %112, float %657, float %658, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %744 = extractvalue %dx.types.ResRet.f32 %743, 0
  %745 = extractvalue %dx.types.ResRet.f32 %743, 1
  %746 = extractvalue %dx.types.ResRet.f32 %743, 2
  %747 = extractvalue %dx.types.ResRet.f32 %743, 3
  %748 = and i32 %737, 255
  %749 = uitofp i32 %748 to float
  %750 = lshr i32 %737, 8
  %751 = and i32 %750, 255
  %752 = uitofp i32 %751 to float
  %753 = fmul fast float %747, %749
  %754 = fadd fast float %753, %752
  %755 = fmul fast float %754, 0x3F70101000000000
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = and i32 %757, 512
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %768, label %760

; <label>:760                                     ; preds = %735
  %761 = add i32 %61, 508
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = add i32 %763, 0
  %765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %764, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %766 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %765, %dx.types.Handle %113, float %657, float %658, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  br label %768

; <label>:768                                     ; preds = %760, %735
  %769 = phi float [ %767, %760 ], [ 1.000000e+00, %735 ]
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = and i32 %771, 33554432
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %880, label %774

; <label>:774                                     ; preds = %768
  %775 = add i32 %61, 224
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = and i32 %777, 65535
  %779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %778)  ; LegacyF16ToF32(value)
  %780 = lshr i32 %777, 16
  %781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %780)  ; LegacyF16ToF32(value)
  %782 = add i32 %61, 228
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = and i32 %784, 65535
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = lshr i32 %788, 24
  %790 = uitofp i32 %789 to float
  %791 = fmul fast float %790, 0x3F70101020000000
  %792 = and i32 %788, 255
  %793 = uitofp i32 %792 to float
  %794 = fmul fast float %793, 0x3F70101020000000
  %795 = lshr i32 %788, 8
  %796 = and i32 %795, 255
  %797 = uitofp i32 %796 to float
  %798 = fmul fast float %797, 0x3F70101020000000
  %799 = lshr i32 %788, 16
  %800 = and i32 %799, 255
  %801 = uitofp i32 %800 to float
  %802 = fmul fast float %801, 0x3F70101020000000
  %803 = add i32 %61, 220
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = lshr i32 %805, 24
  %807 = uitofp i32 %806 to float
  %808 = fmul fast float %807, 0x3F70101020000000
  %809 = and i32 %805, 255
  %810 = uitofp i32 %809 to float
  %811 = fmul fast float %810, 0x3F70101020000000
  %812 = lshr i32 %805, 8
  %813 = and i32 %812, 255
  %814 = uitofp i32 %813 to float
  %815 = fmul fast float %814, 0x3F70101020000000
  %816 = lshr i32 %805, 16
  %817 = and i32 %816, 255
  %818 = uitofp i32 %817 to float
  %819 = fmul fast float %818, 0x3F70101020000000
  %820 = bitcast float %744 to i32
  %821 = ashr i32 %820, 1
  %822 = sub nsw i32 1597463174, %821
  %823 = bitcast i32 %822 to float
  %824 = fmul fast float %744, 5.000000e-01
  %825 = fmul fast float %823, %823
  %826 = fmul fast float %825, %824
  %827 = fsub fast float 1.500000e+00, %826
  %828 = fmul fast float %823, %744
  %829 = fmul fast float %828, %827
  %830 = bitcast float %745 to i32
  %831 = ashr i32 %830, 1
  %832 = sub nsw i32 1597463174, %831
  %833 = bitcast i32 %832 to float
  %834 = fmul fast float %745, 5.000000e-01
  %835 = fmul fast float %833, %833
  %836 = fmul fast float %835, %834
  %837 = fsub fast float 1.500000e+00, %836
  %838 = fmul fast float %833, %745
  %839 = fmul fast float %838, %837
  %840 = bitcast float %746 to i32
  %841 = ashr i32 %840, 1
  %842 = sub nsw i32 1597463174, %841
  %843 = bitcast i32 %842 to float
  %844 = fmul fast float %746, 5.000000e-01
  %845 = fmul fast float %843, %843
  %846 = fmul fast float %845, %844
  %847 = fsub fast float 1.500000e+00, %846
  %848 = fmul fast float %843, %746
  %849 = fmul fast float %848, %847
  %850 = fsub fast float %829, %811
  %851 = fsub fast float %839, %815
  %852 = fsub fast float %849, %819
  %853 = fmul fast float %850, %779
  %854 = fmul fast float %851, %781
  %855 = fmul fast float %852, %786
  %856 = fadd fast float %853, %794
  %857 = fadd fast float %854, %798
  %858 = fadd fast float %855, %802
  %859 = call float @dx.op.unary.f32(i32 7, float %856)  ; Saturate(value)
  %860 = call float @dx.op.unary.f32(i32 7, float %857)  ; Saturate(value)
  %861 = call float @dx.op.unary.f32(i32 7, float %858)  ; Saturate(value)
  %862 = fmul fast float %859, %859
  %863 = fmul fast float %860, %860
  %864 = fmul fast float %861, %861
  %865 = fsub fast float %862, %744
  %866 = fsub fast float %863, %745
  %867 = fsub fast float %864, %746
  %868 = fmul fast float %865, %769
  %869 = fmul fast float %866, %769
  %870 = fmul fast float %867, %769
  %871 = fadd fast float %868, %744
  %872 = fadd fast float %869, %745
  %873 = fadd fast float %870, %746
  %874 = fadd fast float %791, %755
  %875 = fsub fast float %874, %808
  %876 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  %877 = fsub fast float %876, %755
  %878 = fmul fast float %877, %769
  %879 = fadd fast float %878, %755
  br label %933

; <label>:880                                     ; preds = %768
  %881 = and i32 %771, 134217728
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %917, label %883

; <label>:883                                     ; preds = %880
  %884 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %885 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %886 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %887 = fadd fast float %884, -5.000000e-01
  %888 = fadd fast float %885, -5.000000e-01
  %889 = fadd fast float %886, -5.000000e-01
  %890 = fmul fast float %887, %769
  %891 = fmul fast float %888, %769
  %892 = fmul fast float %889, %769
  %893 = fadd fast float %890, 5.000000e-01
  %894 = fadd fast float %891, 5.000000e-01
  %895 = fadd fast float %892, 5.000000e-01
  %896 = call float @dx.op.unary.f32(i32 24, float %744)  ; Sqrt(value)
  %897 = call float @dx.op.unary.f32(i32 24, float %745)  ; Sqrt(value)
  %898 = call float @dx.op.unary.f32(i32 24, float %746)  ; Sqrt(value)
  %899 = fmul fast float %893, 2.000000e+00
  %900 = fsub fast float 1.000000e+00, %899
  %901 = fmul fast float %900, %896
  %902 = fadd fast float %901, %899
  %903 = fmul fast float %902, %896
  %904 = fmul fast float %894, 2.000000e+00
  %905 = fsub fast float 1.000000e+00, %904
  %906 = fmul fast float %905, %897
  %907 = fadd fast float %906, %904
  %908 = fmul fast float %907, %897
  %909 = fmul fast float %895, 2.000000e+00
  %910 = fsub fast float 1.000000e+00, %909
  %911 = fmul fast float %910, %898
  %912 = fadd fast float %911, %909
  %913 = fmul fast float %912, %898
  %914 = fmul fast float %903, %903
  %915 = fmul fast float %908, %908
  %916 = fmul fast float %913, %913
  br label %933

; <label>:917                                     ; preds = %880
  %918 = fmul fast float %336, %336
  %919 = fmul fast float %340, %340
  %920 = fmul fast float %344, %344
  %921 = fadd fast float %918, -1.000000e+00
  %922 = fadd fast float %919, -1.000000e+00
  %923 = fadd fast float %920, -1.000000e+00
  %924 = fmul fast float %769, %921
  %925 = fmul fast float %769, %922
  %926 = fmul fast float %769, %923
  %927 = fadd fast float %924, 1.000000e+00
  %928 = fadd fast float %925, 1.000000e+00
  %929 = fadd fast float %926, 1.000000e+00
  %930 = fmul fast float %927, %744
  %931 = fmul fast float %928, %745
  %932 = fmul fast float %929, %746
  br label %933

; <label>:933                                     ; preds = %917, %883, %774, %729
  %934 = phi float [ %879, %774 ], [ %755, %883 ], [ %755, %917 ], [ 0x3FA23C0BE0000000, %729 ]
  %935 = phi float [ %871, %774 ], [ %914, %883 ], [ %930, %917 ], [ 1.000000e+00, %729 ]
  %936 = phi float [ %872, %774 ], [ %915, %883 ], [ %931, %917 ], [ 1.000000e+00, %729 ]
  %937 = phi float [ %873, %774 ], [ %916, %883 ], [ %932, %917 ], [ 1.000000e+00, %729 ]
  %938 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.i32 %938, 1
  %940 = and i32 %939, 1
  %941 = icmp ne i32 %940, 0
  %942 = add i32 %61, 356
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = and i32 %944, 32
  %946 = icmp ne i32 %945, 0
  %947 = and i1 %941, %946
  %948 = select i1 %947, float 1.000000e+00, float %935
  %949 = select i1 %947, float 0x3FD3333340000000, float %936
  %950 = select i1 %947, float 0x3FD3333340000000, float %937
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = and i32 %952, 32
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %1027, label %955

; <label>:955                                     ; preds = %933
  %956 = add i32 %61, 92
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = add i32 %61, 440
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = add i32 %961, 0
  %963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %964 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %963, %dx.types.Handle %112, float %657, float %658, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %965 = extractvalue %dx.types.ResRet.f32 %964, 0
  %966 = extractvalue %dx.types.ResRet.f32 %964, 1
  %967 = extractvalue %dx.types.ResRet.f32 %964, 2
  %968 = extractvalue %dx.types.ResRet.f32 %964, 3
  %969 = and i32 %958, 255
  %970 = uitofp i32 %969 to float
  %971 = lshr i32 %958, 8
  %972 = and i32 %971, 255
  %973 = uitofp i32 %972 to float
  %974 = lshr i32 %958, 16
  %975 = and i32 %974, 255
  %976 = uitofp i32 %975 to float
  %977 = fmul fast float %976, 0x3F70101000000000
  %978 = fmul fast float %965, %970
  %979 = fadd fast float %978, %973
  %980 = fmul fast float %979, 0x3F70101000000000
  %981 = fadd fast float %966, -5.000000e-01
  %982 = fadd fast float %968, -5.000000e-01
  %983 = fmul fast float %981, %977
  %984 = fmul fast float %982, %977
  %985 = fadd fast float %983, 5.000000e-01
  %986 = fadd fast float %984, 5.000000e-01
  %987 = fmul fast float %985, 2.000000e+00
  %988 = fadd fast float %987, -1.000000e+00
  %989 = fmul fast float %986, 2.000000e+00
  %990 = fadd fast float %989, -1.000000e+00
  %991 = fadd fast float %988, %990
  %992 = fmul fast float %991, 5.000000e-01
  %993 = fsub fast float %988, %990
  %994 = fmul fast float %993, 5.000000e-01
  %995 = call float @dx.op.unary.f32(i32 6, float %992)  ; FAbs(value)
  %996 = fsub fast float 1.000000e+00, %995
  %997 = call float @dx.op.unary.f32(i32 6, float %994)  ; FAbs(value)
  %998 = fsub fast float %996, %997
  %999 = call float @dx.op.dot3.f32(i32 55, float %992, float %994, float %998, float %992, float %994, float %998)  ; Dot3(ax,ay,az,bx,by,bz)
  %1000 = call float @dx.op.unary.f32(i32 25, float %999)  ; Rsqrt(value)
  %1001 = fmul fast float %992, %1000
  %1002 = fmul fast float %994, %1000
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = and i32 %1004, 67108864
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1023, label %1007

; <label>:1007                                    ; preds = %955
  %1008 = add i32 %61, 280
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1008, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = and i32 %1010, 65535
  %1012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1011)  ; LegacyF16ToF32(value)
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %1014, 65535
  %1016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1015)  ; LegacyF16ToF32(value)
  %1017 = lshr i32 %1010, 16
  %1018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1017)  ; LegacyF16ToF32(value)
  %1019 = fsub fast float %980, %1018
  %1020 = fmul fast float %1019, %1012
  %1021 = fadd fast float %1020, %1016
  %1022 = call float @dx.op.unary.f32(i32 7, float %1021)  ; Saturate(value)
  br label %1023

; <label>:1023                                    ; preds = %1007, %955
  %1024 = phi float [ %1022, %1007 ], [ %980, %955 ]
  %1025 = call float @dx.op.dot2.f32(i32 54, float %1001, float %1002, float %561, float %562)  ; Dot2(ax,ay,bx,by)
  %1026 = call float @dx.op.dot2.f32(i32 54, float %1001, float %1002, float %563, float %564)  ; Dot2(ax,ay,bx,by)
  br label %1027

; <label>:1027                                    ; preds = %1023, %933
  %1028 = phi float [ %1024, %1023 ], [ 0x3FD6666660000000, %933 ]
  %1029 = phi float [ %1025, %1023 ], [ 0.000000e+00, %933 ]
  %1030 = phi float [ %1026, %1023 ], [ 0.000000e+00, %933 ]
  %1031 = phi float [ %967, %1023 ], [ 1.000000e+00, %933 ]
  %1032 = add i32 %61, 160
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = lshr i32 %1034, 22
  %1036 = shl nuw nsw i32 %1035, 5
  %1037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1036)  ; LegacyF16ToF32(value)
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = and i32 %1039, 64
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1075, label %1042

; <label>:1042                                    ; preds = %1027
  %1043 = add i32 %61, 456
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = add i32 %1045, 0
  %1047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = and i32 %1049, 131072
  %1051 = icmp eq i32 %1050, 0
  %1052 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1047, %dx.types.Handle %112, float %657, float %658, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.ResRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.ResRet.f32 %1052, 2
  %1056 = fmul fast float %1053, %324
  %1057 = fmul fast float %1054, %327
  %1058 = fmul fast float %1055, %330
  br i1 %1051, label %1065, label %1059

; <label>:1059                                    ; preds = %1042
  %1060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1060, 0
  %1062 = fmul fast float %1061, %1056
  %1063 = fmul fast float %1061, %1057
  %1064 = fmul fast float %1061, %1058
  br label %1065

; <label>:1065                                    ; preds = %1059, %1042
  %1066 = phi float [ %1062, %1059 ], [ %1056, %1042 ]
  %1067 = phi float [ %1063, %1059 ], [ %1057, %1042 ]
  %1068 = phi float [ %1064, %1059 ], [ %1058, %1042 ]
  %1069 = fmul fast float %1066, %1037
  %1070 = select i1 %307, float %1069, float %1066
  %1071 = call float @dx.op.dot3.f32(i32 55, float %1070, float %1067, float %1068, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1072 = select i1 %307, float 0.000000e+00, float %1066
  %1073 = select i1 %307, float %1071, float %1067
  %1074 = select i1 %307, float 0.000000e+00, float %1068
  br label %1075

; <label>:1075                                    ; preds = %1065, %1027
  %1076 = phi float [ %1072, %1065 ], [ 0.000000e+00, %1027 ]
  %1077 = phi float [ %1073, %1065 ], [ 0.000000e+00, %1027 ]
  %1078 = phi float [ %1074, %1065 ], [ 0.000000e+00, %1027 ]
  %1079 = add i32 %61, 96
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = and i32 %1081, 255
  %1083 = uitofp i32 %1082 to float
  %1084 = lshr i32 %1081, 8
  %1085 = and i32 %1084, 255
  %1086 = uitofp i32 %1085 to float
  %1087 = call float @dx.op.dot3.f32(i32 55, float %948, float %949, float %950, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1088 = fmul fast float %1086, %1087
  %1089 = fadd fast float %1088, %1083
  %1090 = fmul fast float %1089, 0x3F70101020000000
  %1091 = call float @dx.op.unary.f32(i32 7, float %1090)  ; Saturate(value)
  br label %1092

; <label>:1092                                    ; preds = %1075, %543
  %1093 = phi float [ 0.000000e+00, %543 ], [ %1029, %1075 ]
  %1094 = phi float [ 0.000000e+00, %543 ], [ %1030, %1075 ]
  %1095 = phi float [ 0.000000e+00, %543 ], [ %948, %1075 ]
  %1096 = phi float [ 0.000000e+00, %543 ], [ %949, %1075 ]
  %1097 = phi float [ 0.000000e+00, %543 ], [ %950, %1075 ]
  %1098 = phi float [ 0.000000e+00, %543 ], [ %1076, %1075 ]
  %1099 = phi float [ 0.000000e+00, %543 ], [ %1077, %1075 ]
  %1100 = phi float [ 0.000000e+00, %543 ], [ %1078, %1075 ]
  %1101 = phi float [ 0.000000e+00, %543 ], [ %934, %1075 ]
  %1102 = phi float [ 0.000000e+00, %543 ], [ %730, %1075 ]
  %1103 = phi float [ 0.000000e+00, %543 ], [ %1028, %1075 ]
  %1104 = phi float [ 0.000000e+00, %543 ], [ %1031, %1075 ]
  %1105 = phi float [ 0.000000e+00, %543 ], [ %1091, %1075 ]
  br i1 %491, label %1832, label %1106

; <label>:1106                                    ; preds = %1092
  %1107 = icmp ult i32 %549, 2
  %1108 = add i32 %61, 40
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = add i32 %61, 44
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = or i32 %1113, %1110
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1832, label %1116

; <label>:1116                                    ; preds = %1106
  %1117 = and i32 %1110, 262144
  %1118 = icmp ne i32 %1117, 0
  %1119 = select i1 %1118, float %67, float 1.000000e+00
  %1120 = select i1 %1118, float %68, float 0.000000e+00
  %1121 = select i1 %1118, float %69, float 0.000000e+00
  %1122 = select i1 %1118, float %70, float 1.000000e+00
  %1123 = select i1 %1118, float %71, float %94
  %1124 = select i1 %1118, float %72, float %95
  %1125 = add i32 %61, 300
  %1126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1125, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 0
  %1128 = lshr i32 %1127, 16
  %1129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1128)  ; LegacyF16ToF32(value)
  %1130 = fmul fast float %1129, 0x3F50624DE0000000
  %1131 = add i32 %61, 104
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = lshr i32 %1133, 16
  %1135 = and i32 %1134, 255
  %1136 = lshr i32 %1133, 24
  %1137 = add i32 %61, 308
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = and i32 %1139, 65535
  %1141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1140)  ; LegacyF16ToF32(value)
  %1142 = lshr i32 %1139, 16
  %1143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1142)  ; LegacyF16ToF32(value)
  %1144 = add i32 %61, 48
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = lshr i32 %1146, 22
  %1148 = shl nuw nsw i32 %1147, 5
  %1149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1148)  ; LegacyF16ToF32(value)
  %1150 = shl i32 %1146, 4
  %1151 = and i32 %1150, 32752
  %1152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1151)  ; LegacyF16ToF32(value)
  %1153 = lshr i32 %1146, 7
  %1154 = and i32 %1153, 32752
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 3
  %1158 = fmul fast float %1157, 1.000000e+03
  %1159 = fmul fast float %401, %1158
  %1160 = call float @dx.op.unary.f32(i32 22, float %1159)  ; Frc(value)
  %1161 = fadd fast float %1160, %391
  %1162 = fmul fast float %402, %1158
  %1163 = call float @dx.op.unary.f32(i32 22, float %1162)  ; Frc(value)
  %1164 = fadd fast float %1163, %393
  %1165 = fmul fast float %1130, %1158
  %1166 = call float @dx.op.unary.f32(i32 22, float %1165)  ; Frc(value)
  %1167 = fmul fast float %1166, 0x401921FB60000000
  %1168 = fadd fast float %1167, %1149
  %1169 = call float @dx.op.unary.f32(i32 13, float %1168)  ; Sin(value)
  %1170 = call float @dx.op.unary.f32(i32 12, float %1168)  ; Cos(value)
  %1171 = fsub fast float -0.000000e+00, %1169
  %1172 = fadd fast float %1123, -5.000000e-01
  %1173 = fadd fast float %1124, -5.000000e-01
  %1174 = fmul fast float %1141, %1172
  %1175 = fmul fast float %1143, %1173
  %1176 = fadd fast float %1174, 5.000000e-01
  %1177 = fadd fast float %1175, 5.000000e-01
  %1178 = fmul fast float %1152, %1176
  %1179 = fmul fast float %1155, %1177
  %1180 = fmul fast float %1170, %1178
  %1181 = call float @dx.op.tertiary.f32(i32 46, float %1171, float %1179, float %1180)  ; FMad(a,b,c)
  %1182 = fmul fast float %1169, %1178
  %1183 = call float @dx.op.tertiary.f32(i32 46, float %1170, float %1179, float %1182)  ; FMad(a,b,c)
  %1184 = fadd fast float %1161, %1181
  %1185 = fadd fast float %1164, %1183
  %1186 = icmp ugt i32 %1135, 1
  %1187 = icmp ugt i32 %1133, 33554431
  %1188 = or i1 %1187, %1186
  br i1 %1188, label %1189, label %1214

; <label>:1189                                    ; preds = %1116
  %1190 = add i32 %61, 244
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = lshr i32 %1192, 16
  %1194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1193)  ; LegacyF16ToF32(value)
  %1195 = fmul fast float %1157, %1194
  %1196 = call float @dx.op.unary.f32(i32 22, float %1195)  ; Frc(value)
  %1197 = mul nuw nsw i32 %1135, %1136
  %1198 = uitofp i32 %1197 to float
  %1199 = fmul fast float %1196, %1198
  %1200 = call float @dx.op.unary.f32(i32 27, float %1199)  ; Round_ni(value)
  %1201 = fptoui float %1200 to i32
  %1202 = urem i32 %1201, %1135
  %1203 = udiv i32 %1201, %1136
  %1204 = call float @dx.op.unary.f32(i32 22, float %1184)  ; Frc(value)
  %1205 = call float @dx.op.unary.f32(i32 22, float %1185)  ; Frc(value)
  %1206 = uitofp i32 %1202 to float
  %1207 = uitofp i32 %1203 to float
  %1208 = fadd fast float %1204, %1206
  %1209 = fadd fast float %1205, %1207
  %1210 = uitofp i32 %1135 to float
  %1211 = uitofp i32 %1136 to float
  %1212 = fdiv fast float %1208, %1210
  %1213 = fdiv fast float %1209, %1211
  br label %1214

; <label>:1214                                    ; preds = %1189, %1116
  %1215 = phi float [ %1212, %1189 ], [ %1184, %1116 ]
  %1216 = phi float [ %1213, %1189 ], [ %1185, %1116 ]
  %1217 = and i32 %1110, 256
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %1265, label %1219

; <label>:1219                                    ; preds = %1214
  %1220 = add i32 %61, 492
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = add i32 %1222, 0
  %1224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1225 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1224, %dx.types.Handle %113, float %1215, float %1216, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1226 = extractvalue %dx.types.ResRet.f32 %1225, 0
  %1227 = add i32 %61, 116
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = shl i32 %1229, 4
  %1231 = and i32 %1230, 32752
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = lshr i32 %1229, 7
  %1234 = and i32 %1233, 32752
  %1235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1234)  ; LegacyF16ToF32(value)
  %1236 = fsub fast float 1.000000e+00, %546
  %1237 = call float @dx.op.binary.f32(i32 35, float %1236, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1238 = bitcast float %546 to i32
  %1239 = sitofp i32 %1238 to float
  %1240 = fadd fast float %1239, 0xC1CFBF8940000000
  %1241 = fmul fast float %1235, %1240
  %1242 = fadd fast float %1241, 0x41CFBF8940000000
  %1243 = fptosi float %1242 to i32
  %1244 = bitcast i32 %1243 to float
  %1245 = bitcast float %1237 to i32
  %1246 = sitofp i32 %1245 to float
  %1247 = fadd fast float %1246, 0xC1CFBF8940000000
  %1248 = fmul fast float %1247, %1235
  %1249 = fadd fast float %1248, 0x41CFBF8940000000
  %1250 = fptosi float %1249 to i32
  %1251 = bitcast i32 %1250 to float
  %1252 = fmul fast float %1244, %1232
  %1253 = fmul fast float %1251, %1232
  %1254 = fsub fast float %1237, %1252
  %1255 = fadd fast float %1253, %1237
  %1256 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  %1257 = call float @dx.op.unary.f32(i32 7, float %1255)  ; Saturate(value)
  %1258 = fsub fast float %1226, %1256
  %1259 = fsub fast float %1257, %1256
  %1260 = bitcast float %1259 to i32
  %1261 = sub nsw i32 2129859010, %1260
  %1262 = bitcast i32 %1261 to float
  %1263 = fmul fast float %1262, %1258
  %1264 = call float @dx.op.unary.f32(i32 7, float %1263)  ; Saturate(value)
  br label %1265

; <label>:1265                                    ; preds = %1219, %1214
  %1266 = phi float [ %1264, %1219 ], [ %546, %1214 ]
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = and i32 %1268, 128
  %1270 = icmp eq i32 %1269, 0
  br i1 %1270, label %1287, label %1271

; <label>:1271                                    ; preds = %1265
  %1272 = add i32 %61, 476
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = add i32 %1274, 0
  %1276 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1275, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1277 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1276, %dx.types.Handle %113, float %1215, float %1216, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1278 = extractvalue %dx.types.ResRet.f32 %1277, 0
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = and i32 %1280, 524288
  %1282 = icmp ne i32 %1281, 0
  %1283 = fcmp fast ogt float %1278, 0x3FE0101020000000
  %1284 = select i1 %1283, float 1.000000e+00, float 0.000000e+00
  %1285 = select i1 %1282, float %1284, float %1278
  %1286 = fmul fast float %1285, %1266
  br label %1287

; <label>:1287                                    ; preds = %1271, %1265
  %1288 = phi float [ %1286, %1271 ], [ %1266, %1265 ]
  %1289 = fcmp fast ult float %1288, 0x3F70101020000000
  br i1 %1289, label %1832, label %1290

; <label>:1290                                    ; preds = %1287
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = and i32 %1292, 16
  %1294 = icmp eq i32 %1293, 0
  br i1 %1294, label %1493, label %1295

; <label>:1295                                    ; preds = %1290
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = add i32 %61, 428
  %1299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.i32 %1299, 0
  %1301 = add i32 %1300, 0
  %1302 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1301, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1303 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1302, %dx.types.Handle %112, float %1215, float %1216, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1304 = extractvalue %dx.types.ResRet.f32 %1303, 0
  %1305 = extractvalue %dx.types.ResRet.f32 %1303, 1
  %1306 = extractvalue %dx.types.ResRet.f32 %1303, 2
  %1307 = extractvalue %dx.types.ResRet.f32 %1303, 3
  %1308 = and i32 %1297, 255
  %1309 = uitofp i32 %1308 to float
  %1310 = lshr i32 %1297, 8
  %1311 = and i32 %1310, 255
  %1312 = uitofp i32 %1311 to float
  %1313 = fmul fast float %1307, %1309
  %1314 = fadd fast float %1313, %1312
  %1315 = fmul fast float %1314, 0x3F70101000000000
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = and i32 %1317, 512
  %1319 = icmp eq i32 %1318, 0
  br i1 %1319, label %1328, label %1320

; <label>:1320                                    ; preds = %1295
  %1321 = add i32 %61, 512
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1321, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = add i32 %1323, 0
  %1325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1324, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1326 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1325, %dx.types.Handle %113, float %1215, float %1216, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1327 = extractvalue %dx.types.ResRet.f32 %1326, 0
  br label %1328

; <label>:1328                                    ; preds = %1320, %1295
  %1329 = phi float [ %1327, %1320 ], [ 1.000000e+00, %1295 ]
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = and i32 %1331, 33554432
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1440, label %1334

; <label>:1334                                    ; preds = %1328
  %1335 = add i32 %61, 240
  %1336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1335, i32 undef)  ; BufferLoad(srv,index,wot)
  %1337 = extractvalue %dx.types.ResRet.i32 %1336, 0
  %1338 = and i32 %1337, 65535
  %1339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1338)  ; LegacyF16ToF32(value)
  %1340 = lshr i32 %1337, 16
  %1341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1340)  ; LegacyF16ToF32(value)
  %1342 = add i32 %61, 244
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = and i32 %1344, 65535
  %1346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1345)  ; LegacyF16ToF32(value)
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = lshr i32 %1348, 24
  %1350 = uitofp i32 %1349 to float
  %1351 = fmul fast float %1350, 0x3F70101020000000
  %1352 = and i32 %1348, 255
  %1353 = uitofp i32 %1352 to float
  %1354 = fmul fast float %1353, 0x3F70101020000000
  %1355 = lshr i32 %1348, 8
  %1356 = and i32 %1355, 255
  %1357 = uitofp i32 %1356 to float
  %1358 = fmul fast float %1357, 0x3F70101020000000
  %1359 = lshr i32 %1348, 16
  %1360 = and i32 %1359, 255
  %1361 = uitofp i32 %1360 to float
  %1362 = fmul fast float %1361, 0x3F70101020000000
  %1363 = add i32 %61, 236
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1363, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = lshr i32 %1365, 24
  %1367 = uitofp i32 %1366 to float
  %1368 = fmul fast float %1367, 0x3F70101020000000
  %1369 = and i32 %1365, 255
  %1370 = uitofp i32 %1369 to float
  %1371 = fmul fast float %1370, 0x3F70101020000000
  %1372 = lshr i32 %1365, 8
  %1373 = and i32 %1372, 255
  %1374 = uitofp i32 %1373 to float
  %1375 = fmul fast float %1374, 0x3F70101020000000
  %1376 = lshr i32 %1365, 16
  %1377 = and i32 %1376, 255
  %1378 = uitofp i32 %1377 to float
  %1379 = fmul fast float %1378, 0x3F70101020000000
  %1380 = bitcast float %1304 to i32
  %1381 = ashr i32 %1380, 1
  %1382 = sub nsw i32 1597463174, %1381
  %1383 = bitcast i32 %1382 to float
  %1384 = fmul fast float %1304, 5.000000e-01
  %1385 = fmul fast float %1383, %1383
  %1386 = fmul fast float %1385, %1384
  %1387 = fsub fast float 1.500000e+00, %1386
  %1388 = fmul fast float %1383, %1304
  %1389 = fmul fast float %1388, %1387
  %1390 = bitcast float %1305 to i32
  %1391 = ashr i32 %1390, 1
  %1392 = sub nsw i32 1597463174, %1391
  %1393 = bitcast i32 %1392 to float
  %1394 = fmul fast float %1305, 5.000000e-01
  %1395 = fmul fast float %1393, %1393
  %1396 = fmul fast float %1395, %1394
  %1397 = fsub fast float 1.500000e+00, %1396
  %1398 = fmul fast float %1393, %1305
  %1399 = fmul fast float %1398, %1397
  %1400 = bitcast float %1306 to i32
  %1401 = ashr i32 %1400, 1
  %1402 = sub nsw i32 1597463174, %1401
  %1403 = bitcast i32 %1402 to float
  %1404 = fmul fast float %1306, 5.000000e-01
  %1405 = fmul fast float %1403, %1403
  %1406 = fmul fast float %1405, %1404
  %1407 = fsub fast float 1.500000e+00, %1406
  %1408 = fmul fast float %1403, %1306
  %1409 = fmul fast float %1408, %1407
  %1410 = fsub fast float %1389, %1371
  %1411 = fsub fast float %1399, %1375
  %1412 = fsub fast float %1409, %1379
  %1413 = fmul fast float %1410, %1339
  %1414 = fmul fast float %1411, %1341
  %1415 = fmul fast float %1412, %1346
  %1416 = fadd fast float %1413, %1354
  %1417 = fadd fast float %1414, %1358
  %1418 = fadd fast float %1415, %1362
  %1419 = call float @dx.op.unary.f32(i32 7, float %1416)  ; Saturate(value)
  %1420 = call float @dx.op.unary.f32(i32 7, float %1417)  ; Saturate(value)
  %1421 = call float @dx.op.unary.f32(i32 7, float %1418)  ; Saturate(value)
  %1422 = fmul fast float %1419, %1419
  %1423 = fmul fast float %1420, %1420
  %1424 = fmul fast float %1421, %1421
  %1425 = fsub fast float %1422, %1304
  %1426 = fsub fast float %1423, %1305
  %1427 = fsub fast float %1424, %1306
  %1428 = fmul fast float %1425, %1329
  %1429 = fmul fast float %1426, %1329
  %1430 = fmul fast float %1427, %1329
  %1431 = fadd fast float %1428, %1304
  %1432 = fadd fast float %1429, %1305
  %1433 = fadd fast float %1430, %1306
  %1434 = fadd fast float %1351, %1315
  %1435 = fsub fast float %1434, %1368
  %1436 = call float @dx.op.unary.f32(i32 7, float %1435)  ; Saturate(value)
  %1437 = fsub fast float %1436, %1315
  %1438 = fmul fast float %1437, %1329
  %1439 = fadd fast float %1438, %1315
  br label %1493

; <label>:1440                                    ; preds = %1328
  %1441 = and i32 %1331, 134217728
  %1442 = icmp eq i32 %1441, 0
  br i1 %1442, label %1477, label %1443

; <label>:1443                                    ; preds = %1440
  %1444 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %1445 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %1446 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %1447 = fadd fast float %1444, -5.000000e-01
  %1448 = fadd fast float %1445, -5.000000e-01
  %1449 = fadd fast float %1446, -5.000000e-01
  %1450 = fmul fast float %1447, %1329
  %1451 = fmul fast float %1448, %1329
  %1452 = fmul fast float %1449, %1329
  %1453 = fadd fast float %1450, 5.000000e-01
  %1454 = fadd fast float %1451, 5.000000e-01
  %1455 = fadd fast float %1452, 5.000000e-01
  %1456 = call float @dx.op.unary.f32(i32 24, float %1304)  ; Sqrt(value)
  %1457 = call float @dx.op.unary.f32(i32 24, float %1305)  ; Sqrt(value)
  %1458 = call float @dx.op.unary.f32(i32 24, float %1306)  ; Sqrt(value)
  %1459 = fmul fast float %1453, 2.000000e+00
  %1460 = fsub fast float 1.000000e+00, %1459
  %1461 = fmul fast float %1460, %1456
  %1462 = fadd fast float %1461, %1459
  %1463 = fmul fast float %1462, %1456
  %1464 = fmul fast float %1454, 2.000000e+00
  %1465 = fsub fast float 1.000000e+00, %1464
  %1466 = fmul fast float %1465, %1457
  %1467 = fadd fast float %1466, %1464
  %1468 = fmul fast float %1467, %1457
  %1469 = fmul fast float %1455, 2.000000e+00
  %1470 = fsub fast float 1.000000e+00, %1469
  %1471 = fmul fast float %1470, %1458
  %1472 = fadd fast float %1471, %1469
  %1473 = fmul fast float %1472, %1458
  %1474 = fmul fast float %1463, %1463
  %1475 = fmul fast float %1468, %1468
  %1476 = fmul fast float %1473, %1473
  br label %1493

; <label>:1477                                    ; preds = %1440
  %1478 = fmul fast float %378, %378
  %1479 = fmul fast float %382, %382
  %1480 = fmul fast float %386, %386
  %1481 = fadd fast float %1478, -1.000000e+00
  %1482 = fadd fast float %1479, -1.000000e+00
  %1483 = fadd fast float %1480, -1.000000e+00
  %1484 = fmul fast float %1329, %1481
  %1485 = fmul fast float %1329, %1482
  %1486 = fmul fast float %1329, %1483
  %1487 = fadd fast float %1484, 1.000000e+00
  %1488 = fadd fast float %1485, 1.000000e+00
  %1489 = fadd fast float %1486, 1.000000e+00
  %1490 = fmul fast float %1487, %1304
  %1491 = fmul fast float %1488, %1305
  %1492 = fmul fast float %1489, %1306
  br label %1493

; <label>:1493                                    ; preds = %1477, %1443, %1334, %1290
  %1494 = phi float [ %1439, %1334 ], [ %1315, %1443 ], [ %1315, %1477 ], [ 0x3FA23C0BE0000000, %1290 ]
  %1495 = phi float [ %1431, %1334 ], [ %1474, %1443 ], [ %1490, %1477 ], [ 1.000000e+00, %1290 ]
  %1496 = phi float [ %1432, %1334 ], [ %1475, %1443 ], [ %1491, %1477 ], [ 1.000000e+00, %1290 ]
  %1497 = phi float [ %1433, %1334 ], [ %1476, %1443 ], [ %1492, %1477 ], [ 1.000000e+00, %1290 ]
  %1498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.i32 %1498, 1
  %1500 = and i32 %1499, 1
  %1501 = icmp ne i32 %1500, 0
  %1502 = add i32 %61, 356
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = and i32 %1504, 32
  %1506 = icmp ne i32 %1505, 0
  %1507 = and i1 %1501, %1506
  %1508 = select i1 %1507, float 1.000000e+00, float %1495
  %1509 = select i1 %1507, float 0x3FD3333340000000, float %1496
  %1510 = select i1 %1507, float 0x3FD3333340000000, float %1497
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = and i32 %1512, 32
  %1514 = icmp eq i32 %1513, 0
  br i1 %1514, label %1587, label %1515

; <label>:1515                                    ; preds = %1493
  %1516 = add i32 %61, 108
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1516, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = add i32 %61, 444
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1519, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = add i32 %1521, 0
  %1523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1524 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1523, %dx.types.Handle %112, float %1215, float %1216, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1525 = extractvalue %dx.types.ResRet.f32 %1524, 0
  %1526 = extractvalue %dx.types.ResRet.f32 %1524, 1
  %1527 = extractvalue %dx.types.ResRet.f32 %1524, 2
  %1528 = extractvalue %dx.types.ResRet.f32 %1524, 3
  %1529 = and i32 %1518, 255
  %1530 = uitofp i32 %1529 to float
  %1531 = lshr i32 %1518, 8
  %1532 = and i32 %1531, 255
  %1533 = uitofp i32 %1532 to float
  %1534 = lshr i32 %1518, 16
  %1535 = and i32 %1534, 255
  %1536 = uitofp i32 %1535 to float
  %1537 = fmul fast float %1536, 0x3F70101000000000
  %1538 = fmul fast float %1525, %1530
  %1539 = fadd fast float %1538, %1533
  %1540 = fmul fast float %1539, 0x3F70101000000000
  %1541 = fadd fast float %1526, -5.000000e-01
  %1542 = fadd fast float %1528, -5.000000e-01
  %1543 = fmul fast float %1541, %1537
  %1544 = fmul fast float %1542, %1537
  %1545 = fadd fast float %1543, 5.000000e-01
  %1546 = fadd fast float %1544, 5.000000e-01
  %1547 = fmul fast float %1545, 2.000000e+00
  %1548 = fadd fast float %1547, -1.000000e+00
  %1549 = fmul fast float %1546, 2.000000e+00
  %1550 = fadd fast float %1549, -1.000000e+00
  %1551 = fadd fast float %1548, %1550
  %1552 = fmul fast float %1551, 5.000000e-01
  %1553 = fsub fast float %1548, %1550
  %1554 = fmul fast float %1553, 5.000000e-01
  %1555 = call float @dx.op.unary.f32(i32 6, float %1552)  ; FAbs(value)
  %1556 = fsub fast float 1.000000e+00, %1555
  %1557 = call float @dx.op.unary.f32(i32 6, float %1554)  ; FAbs(value)
  %1558 = fsub fast float %1556, %1557
  %1559 = call float @dx.op.dot3.f32(i32 55, float %1552, float %1554, float %1558, float %1552, float %1554, float %1558)  ; Dot3(ax,ay,az,bx,by,bz)
  %1560 = call float @dx.op.unary.f32(i32 25, float %1559)  ; Rsqrt(value)
  %1561 = fmul fast float %1552, %1560
  %1562 = fmul fast float %1554, %1560
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = and i32 %1564, 67108864
  %1566 = icmp eq i32 %1565, 0
  br i1 %1566, label %1583, label %1567

; <label>:1567                                    ; preds = %1515
  %1568 = add i32 %61, 296
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1568, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = and i32 %1570, 65535
  %1572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1571)  ; LegacyF16ToF32(value)
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1125, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = and i32 %1574, 65535
  %1576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1575)  ; LegacyF16ToF32(value)
  %1577 = lshr i32 %1570, 16
  %1578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1577)  ; LegacyF16ToF32(value)
  %1579 = fsub fast float %1540, %1578
  %1580 = fmul fast float %1579, %1572
  %1581 = fadd fast float %1580, %1576
  %1582 = call float @dx.op.unary.f32(i32 7, float %1581)  ; Saturate(value)
  br label %1583

; <label>:1583                                    ; preds = %1567, %1515
  %1584 = phi float [ %1582, %1567 ], [ %1540, %1515 ]
  %1585 = call float @dx.op.dot2.f32(i32 54, float %1561, float %1562, float %1119, float %1120)  ; Dot2(ax,ay,bx,by)
  %1586 = call float @dx.op.dot2.f32(i32 54, float %1561, float %1562, float %1121, float %1122)  ; Dot2(ax,ay,bx,by)
  br label %1587

; <label>:1587                                    ; preds = %1583, %1493
  %1588 = phi float [ %1584, %1583 ], [ 0x3FD6666660000000, %1493 ]
  %1589 = phi float [ %1585, %1583 ], [ 0.000000e+00, %1493 ]
  %1590 = phi float [ %1586, %1583 ], [ 0.000000e+00, %1493 ]
  %1591 = phi float [ %1527, %1583 ], [ 1.000000e+00, %1493 ]
  %1592 = add i32 %61, 176
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1592, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = lshr i32 %1594, 22
  %1596 = shl nuw nsw i32 %1595, 5
  %1597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1596)  ; LegacyF16ToF32(value)
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = and i32 %1599, 64
  %1601 = icmp eq i32 %1600, 0
  br i1 %1601, label %1635, label %1602

; <label>:1602                                    ; preds = %1587
  %1603 = add i32 %61, 460
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1603, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = add i32 %1605, 0
  %1607 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1606, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = and i32 %1609, 131072
  %1611 = icmp eq i32 %1610, 0
  %1612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1607, %dx.types.Handle %112, float %1215, float %1216, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1613 = extractvalue %dx.types.ResRet.f32 %1612, 0
  %1614 = extractvalue %dx.types.ResRet.f32 %1612, 1
  %1615 = extractvalue %dx.types.ResRet.f32 %1612, 2
  %1616 = fmul fast float %1613, %366
  %1617 = fmul fast float %1614, %369
  %1618 = fmul fast float %1615, %372
  br i1 %1611, label %1625, label %1619

; <label>:1619                                    ; preds = %1602
  %1620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1621 = extractvalue %dx.types.CBufRet.f32 %1620, 0
  %1622 = fmul fast float %1621, %1616
  %1623 = fmul fast float %1621, %1617
  %1624 = fmul fast float %1621, %1618
  br label %1625

; <label>:1625                                    ; preds = %1619, %1602
  %1626 = phi float [ %1622, %1619 ], [ %1616, %1602 ]
  %1627 = phi float [ %1623, %1619 ], [ %1617, %1602 ]
  %1628 = phi float [ %1624, %1619 ], [ %1618, %1602 ]
  %1629 = fmul fast float %1626, %1597
  %1630 = select i1 %307, float %1629, float %1626
  %1631 = call float @dx.op.dot3.f32(i32 55, float %1630, float %1627, float %1628, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1632 = select i1 %307, float 0.000000e+00, float %1626
  %1633 = select i1 %307, float %1631, float %1627
  %1634 = select i1 %307, float 0.000000e+00, float %1628
  br label %1635

; <label>:1635                                    ; preds = %1625, %1587
  %1636 = phi float [ %1632, %1625 ], [ 0.000000e+00, %1587 ]
  %1637 = phi float [ %1633, %1625 ], [ 0.000000e+00, %1587 ]
  %1638 = phi float [ %1634, %1625 ], [ 0.000000e+00, %1587 ]
  %1639 = add i32 %61, 112
  %1640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1639, i32 undef)  ; BufferLoad(srv,index,wot)
  %1641 = extractvalue %dx.types.ResRet.i32 %1640, 0
  %1642 = and i32 %1641, 255
  %1643 = uitofp i32 %1642 to float
  %1644 = lshr i32 %1641, 8
  %1645 = and i32 %1644, 255
  %1646 = uitofp i32 %1645 to float
  %1647 = call float @dx.op.dot3.f32(i32 55, float %1508, float %1509, float %1510, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1648 = fmul fast float %1646, %1647
  %1649 = fadd fast float %1648, %1643
  %1650 = fmul fast float %1649, 0x3F70101020000000
  %1651 = call float @dx.op.unary.f32(i32 7, float %1650)  ; Saturate(value)
  br i1 %1107, label %1652, label %1660

; <label>:1652                                    ; preds = %1635
  %1653 = fsub fast float 1.000000e+00, %1288
  %1654 = fmul fast float %1653, %1095
  %1655 = fmul fast float %1653, %1096
  %1656 = fmul fast float %1653, %1097
  %1657 = fmul fast float %1653, %1098
  %1658 = fmul fast float %1653, %1099
  %1659 = fmul fast float %1653, %1100
  br label %1660

; <label>:1660                                    ; preds = %1652, %1635
  %1661 = phi float [ %1654, %1652 ], [ %1095, %1635 ]
  %1662 = phi float [ %1655, %1652 ], [ %1096, %1635 ]
  %1663 = phi float [ %1656, %1652 ], [ %1097, %1635 ]
  %1664 = phi float [ %1657, %1652 ], [ %1098, %1635 ]
  %1665 = phi float [ %1658, %1652 ], [ %1099, %1635 ]
  %1666 = phi float [ %1659, %1652 ], [ %1100, %1635 ]
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = and i32 %1668, 3
  %1670 = icmp eq i32 %1669, 3
  br i1 %1670, label %1749, label %1671

; <label>:1671                                    ; preds = %1660
  %1672 = and i32 %1668, 16
  %1673 = icmp ne i32 %1672, 0
  %1674 = select i1 %1673, float %1288, float 0.000000e+00
  %1675 = icmp eq i32 %1669, 0
  br i1 %1675, label %1676, label %1704

; <label>:1676                                    ; preds = %1671
  %1677 = and i32 %1668, 64
  %1678 = icmp ne i32 %1677, 0
  %1679 = select i1 %1678, float %1288, float 0.000000e+00
  %1680 = fsub fast float %1508, %1661
  %1681 = fsub fast float %1509, %1662
  %1682 = fsub fast float %1510, %1663
  %1683 = fmul fast float %1674, %1680
  %1684 = fmul fast float %1674, %1681
  %1685 = fmul fast float %1674, %1682
  %1686 = fadd fast float %1683, %1661
  %1687 = fadd fast float %1684, %1662
  %1688 = fadd fast float %1685, %1663
  %1689 = fsub fast float %1494, %1101
  %1690 = fmul fast float %1674, %1689
  %1691 = fadd fast float %1690, %1101
  %1692 = fsub fast float %1636, %1664
  %1693 = fsub fast float %1637, %1665
  %1694 = fsub fast float %1638, %1666
  %1695 = fmul fast float %1679, %1692
  %1696 = fmul fast float %1679, %1693
  %1697 = fmul fast float %1679, %1694
  %1698 = fadd fast float %1695, %1664
  %1699 = fadd fast float %1696, %1665
  %1700 = fadd fast float %1697, %1666
  %1701 = fsub fast float %1651, %1105
  %1702 = fmul fast float %1674, %1701
  %1703 = fadd fast float %1702, %1105
  br label %1749

; <label>:1704                                    ; preds = %1671
  %1705 = icmp eq i32 %1669, 1
  br i1 %1705, label %1706, label %1719

; <label>:1706                                    ; preds = %1704
  %1707 = fadd fast float %1508, -1.000000e+00
  %1708 = fadd fast float %1509, -1.000000e+00
  %1709 = fadd fast float %1510, -1.000000e+00
  %1710 = fmul fast float %1674, %1707
  %1711 = fmul fast float %1674, %1708
  %1712 = fmul fast float %1674, %1709
  %1713 = fadd fast float %1710, 1.000000e+00
  %1714 = fadd fast float %1711, 1.000000e+00
  %1715 = fadd fast float %1712, 1.000000e+00
  %1716 = fmul fast float %1713, %1661
  %1717 = fmul fast float %1714, %1662
  %1718 = fmul fast float %1715, %1663
  br label %1749

; <label>:1719                                    ; preds = %1704
  %1720 = icmp eq i32 %1669, 2
  br i1 %1720, label %1721, label %1749

; <label>:1721                                    ; preds = %1719
  %1722 = call float @dx.op.unary.f32(i32 24, float %1508)  ; Sqrt(value)
  %1723 = call float @dx.op.unary.f32(i32 24, float %1509)  ; Sqrt(value)
  %1724 = call float @dx.op.unary.f32(i32 24, float %1510)  ; Sqrt(value)
  %1725 = fadd fast float %1722, -5.000000e-01
  %1726 = fadd fast float %1723, -5.000000e-01
  %1727 = fadd fast float %1724, -5.000000e-01
  %1728 = fmul fast float %1725, %1674
  %1729 = fmul fast float %1726, %1674
  %1730 = fmul fast float %1727, %1674
  %1731 = fadd fast float %1728, 5.000000e-01
  %1732 = fadd fast float %1729, 5.000000e-01
  %1733 = fadd fast float %1730, 5.000000e-01
  %1734 = fmul fast float %1731, 2.000000e+00
  %1735 = fsub fast float 1.000000e+00, %1734
  %1736 = fmul fast float %1735, %1661
  %1737 = fadd fast float %1736, %1734
  %1738 = fmul fast float %1737, %1661
  %1739 = fmul fast float %1732, 2.000000e+00
  %1740 = fsub fast float 1.000000e+00, %1739
  %1741 = fmul fast float %1740, %1662
  %1742 = fadd fast float %1741, %1739
  %1743 = fmul fast float %1742, %1662
  %1744 = fmul fast float %1733, 2.000000e+00
  %1745 = fsub fast float 1.000000e+00, %1744
  %1746 = fmul fast float %1745, %1663
  %1747 = fadd fast float %1746, %1744
  %1748 = fmul fast float %1747, %1663
  br label %1749

; <label>:1749                                    ; preds = %1721, %1719, %1706, %1676, %1660
  %1750 = phi float [ %1661, %1660 ], [ %1738, %1721 ], [ %1661, %1719 ], [ %1716, %1706 ], [ %1686, %1676 ]
  %1751 = phi float [ %1662, %1660 ], [ %1743, %1721 ], [ %1662, %1719 ], [ %1717, %1706 ], [ %1687, %1676 ]
  %1752 = phi float [ %1663, %1660 ], [ %1748, %1721 ], [ %1663, %1719 ], [ %1718, %1706 ], [ %1688, %1676 ]
  %1753 = phi float [ %1664, %1660 ], [ %1664, %1721 ], [ %1664, %1719 ], [ %1664, %1706 ], [ %1698, %1676 ]
  %1754 = phi float [ %1665, %1660 ], [ %1665, %1721 ], [ %1665, %1719 ], [ %1665, %1706 ], [ %1699, %1676 ]
  %1755 = phi float [ %1666, %1660 ], [ %1666, %1721 ], [ %1666, %1719 ], [ %1666, %1706 ], [ %1700, %1676 ]
  %1756 = phi float [ %1101, %1660 ], [ %1101, %1721 ], [ %1101, %1719 ], [ %1101, %1706 ], [ %1691, %1676 ]
  %1757 = phi float [ %1105, %1660 ], [ %1105, %1721 ], [ %1105, %1719 ], [ %1105, %1706 ], [ %1703, %1676 ]
  %1758 = and i32 %1668, 12
  %1759 = icmp eq i32 %1758, 12
  br i1 %1759, label %1832, label %1760

; <label>:1760                                    ; preds = %1749
  %1761 = and i32 %1668, 2097184
  %1762 = icmp eq i32 %1761, 2097184
  %1763 = select i1 %1762, float %1288, float 0.000000e+00
  %1764 = and i32 %1668, 4194336
  %1765 = icmp eq i32 %1764, 4194336
  %1766 = select i1 %1765, float %1288, float 0.000000e+00
  %1767 = and i32 %1668, 8388640
  %1768 = icmp eq i32 %1767, 8388640
  %1769 = select i1 %1768, float %1288, float 0.000000e+00
  %1770 = icmp eq i32 %1758, 0
  br i1 %1770, label %1771, label %1784

; <label>:1771                                    ; preds = %1760
  %1772 = fsub fast float %1589, %1093
  %1773 = fsub fast float %1590, %1094
  %1774 = fmul fast float %1763, %1772
  %1775 = fmul fast float %1763, %1773
  %1776 = fadd fast float %1774, %1093
  %1777 = fadd fast float %1775, %1094
  %1778 = fsub fast float %1591, %1104
  %1779 = fmul fast float %1766, %1778
  %1780 = fadd fast float %1779, %1104
  %1781 = fsub fast float %1588, %1103
  %1782 = fmul fast float %1769, %1781
  %1783 = fadd fast float %1782, %1103
  br label %1832

; <label>:1784                                    ; preds = %1760
  %1785 = icmp eq i32 %1758, 4
  br i1 %1785, label %1786, label %1818

; <label>:1786                                    ; preds = %1784
  %1787 = fmul fast float %1763, %1589
  %1788 = fmul fast float %1763, %1590
  %1789 = fadd fast float %1787, %1093
  %1790 = fadd fast float %1788, %1094
  %1791 = call float @dx.op.binary.f32(i32 36, float %1104, float %1591)  ; FMin(a,b)
  %1792 = fsub fast float %1791, %1104
  %1793 = fmul fast float %1792, %1766
  %1794 = fadd fast float %1793, %1104
  %1795 = fadd fast float %1588, %1103
  %1796 = fmul fast float %1795, 0x3FF337FAE0000000
  %1797 = fmul fast float %1103, %1103
  %1798 = fmul fast float %1588, %1588
  %1799 = fadd fast float %1798, %1797
  %1800 = fmul fast float %1799, 0x3FE5152B00000000
  %1801 = fmul fast float %1103, 0xBFCC1F85E0000000
  %1802 = fmul fast float %1801, %1588
  %1803 = fadd fast float %1802, 0xBFE1363700000000
  %1804 = fadd fast float %1803, %1796
  %1805 = fsub fast float %1804, %1800
  %1806 = fmul fast float %1795, 0x3FBA6F0D00000000
  %1807 = fmul fast float %1799, 0x3FD0432880000000
  %1808 = fmul fast float %1103, 0xBFEF110800000000
  %1809 = fmul fast float %1808, %1588
  %1810 = fadd fast float %1809, 1.000000e+00
  %1811 = fsub fast float %1810, %1806
  %1812 = fadd fast float %1811, %1807
  %1813 = fdiv fast float %1805, %1812
  %1814 = call float @dx.op.unary.f32(i32 7, float %1813)  ; Saturate(value)
  %1815 = fsub fast float %1814, %1103
  %1816 = fmul fast float %1815, %1769
  %1817 = fadd fast float %1816, %1103
  br label %1832

; <label>:1818                                    ; preds = %1784
  %1819 = icmp eq i32 %1758, 8
  br i1 %1819, label %1820, label %1832

; <label>:1820                                    ; preds = %1818
  %1821 = fmul fast float %1763, %1589
  %1822 = fmul fast float %1763, %1590
  %1823 = fadd fast float %1821, %1093
  %1824 = fadd fast float %1822, %1094
  %1825 = call float @dx.op.binary.f32(i32 36, float %1104, float %1591)  ; FMin(a,b)
  %1826 = fsub fast float %1825, %1104
  %1827 = fmul fast float %1826, %1766
  %1828 = fadd fast float %1827, %1104
  %1829 = fsub fast float %1588, %1103
  %1830 = fmul fast float %1769, %1829
  %1831 = fadd fast float %1830, %1103
  br label %1832

; <label>:1832                                    ; preds = %1820, %1818, %1786, %1771, %1749, %1287, %1106, %1092
  %1833 = phi float [ %1093, %1749 ], [ %1093, %1287 ], [ %1093, %1092 ], [ %1823, %1820 ], [ %1093, %1818 ], [ %1789, %1786 ], [ %1776, %1771 ], [ %1093, %1106 ]
  %1834 = phi float [ %1094, %1749 ], [ %1094, %1287 ], [ %1094, %1092 ], [ %1824, %1820 ], [ %1094, %1818 ], [ %1790, %1786 ], [ %1777, %1771 ], [ %1094, %1106 ]
  %1835 = phi float [ %1750, %1749 ], [ %1095, %1287 ], [ %1095, %1092 ], [ %1750, %1820 ], [ %1750, %1818 ], [ %1750, %1786 ], [ %1750, %1771 ], [ %1095, %1106 ]
  %1836 = phi float [ %1751, %1749 ], [ %1096, %1287 ], [ %1096, %1092 ], [ %1751, %1820 ], [ %1751, %1818 ], [ %1751, %1786 ], [ %1751, %1771 ], [ %1096, %1106 ]
  %1837 = phi float [ %1752, %1749 ], [ %1097, %1287 ], [ %1097, %1092 ], [ %1752, %1820 ], [ %1752, %1818 ], [ %1752, %1786 ], [ %1752, %1771 ], [ %1097, %1106 ]
  %1838 = phi float [ %1753, %1749 ], [ %1098, %1287 ], [ %1098, %1092 ], [ %1753, %1820 ], [ %1753, %1818 ], [ %1753, %1786 ], [ %1753, %1771 ], [ %1098, %1106 ]
  %1839 = phi float [ %1754, %1749 ], [ %1099, %1287 ], [ %1099, %1092 ], [ %1754, %1820 ], [ %1754, %1818 ], [ %1754, %1786 ], [ %1754, %1771 ], [ %1099, %1106 ]
  %1840 = phi float [ %1755, %1749 ], [ %1100, %1287 ], [ %1100, %1092 ], [ %1755, %1820 ], [ %1755, %1818 ], [ %1755, %1786 ], [ %1755, %1771 ], [ %1100, %1106 ]
  %1841 = phi float [ %1756, %1749 ], [ %1101, %1287 ], [ %1101, %1092 ], [ %1756, %1820 ], [ %1756, %1818 ], [ %1756, %1786 ], [ %1756, %1771 ], [ %1101, %1106 ]
  %1842 = phi float [ %1103, %1749 ], [ %1103, %1287 ], [ %1103, %1092 ], [ %1831, %1820 ], [ %1103, %1818 ], [ %1817, %1786 ], [ %1783, %1771 ], [ %1103, %1106 ]
  %1843 = phi float [ %1104, %1749 ], [ %1104, %1287 ], [ %1104, %1092 ], [ %1828, %1820 ], [ %1104, %1818 ], [ %1794, %1786 ], [ %1780, %1771 ], [ %1104, %1106 ]
  %1844 = phi float [ %1757, %1749 ], [ %1105, %1287 ], [ %1105, %1092 ], [ %1757, %1820 ], [ %1757, %1818 ], [ %1757, %1786 ], [ %1757, %1771 ], [ %1105, %1106 ]
  br i1 %493, label %2571, label %1845

; <label>:1845                                    ; preds = %1832
  %1846 = icmp ult i32 %549, 3
  %1847 = add i32 %61, 56
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = add i32 %61, 60
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = or i32 %1852, %1849
  %1854 = icmp eq i32 %1853, 0
  br i1 %1854, label %2571, label %1855

; <label>:1855                                    ; preds = %1845
  %1856 = and i32 %1849, 262144
  %1857 = icmp ne i32 %1856, 0
  %1858 = select i1 %1857, float %67, float 1.000000e+00
  %1859 = select i1 %1857, float %68, float 0.000000e+00
  %1860 = select i1 %1857, float %69, float 0.000000e+00
  %1861 = select i1 %1857, float %70, float 1.000000e+00
  %1862 = select i1 %1857, float %71, float %94
  %1863 = select i1 %1857, float %72, float %95
  %1864 = add i32 %61, 316
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = lshr i32 %1866, 16
  %1868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1867)  ; LegacyF16ToF32(value)
  %1869 = fmul fast float %1868, 0x3F50624DE0000000
  %1870 = add i32 %61, 120
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = lshr i32 %1872, 16
  %1874 = and i32 %1873, 255
  %1875 = lshr i32 %1872, 24
  %1876 = add i32 %61, 324
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = and i32 %1878, 65535
  %1880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1879)  ; LegacyF16ToF32(value)
  %1881 = lshr i32 %1878, 16
  %1882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1881)  ; LegacyF16ToF32(value)
  %1883 = add i32 %61, 64
  %1884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.i32 %1884, 0
  %1886 = lshr i32 %1885, 22
  %1887 = shl nuw nsw i32 %1886, 5
  %1888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1887)  ; LegacyF16ToF32(value)
  %1889 = shl i32 %1885, 4
  %1890 = and i32 %1889, 32752
  %1891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1890)  ; LegacyF16ToF32(value)
  %1892 = lshr i32 %1885, 7
  %1893 = and i32 %1892, 32752
  %1894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1893)  ; LegacyF16ToF32(value)
  %1895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1896 = extractvalue %dx.types.CBufRet.f32 %1895, 3
  %1897 = fmul fast float %1896, 1.000000e+03
  %1898 = fmul fast float %443, %1897
  %1899 = call float @dx.op.unary.f32(i32 22, float %1898)  ; Frc(value)
  %1900 = fadd fast float %1899, %433
  %1901 = fmul fast float %444, %1897
  %1902 = call float @dx.op.unary.f32(i32 22, float %1901)  ; Frc(value)
  %1903 = fadd fast float %1902, %435
  %1904 = fmul fast float %1869, %1897
  %1905 = call float @dx.op.unary.f32(i32 22, float %1904)  ; Frc(value)
  %1906 = fmul fast float %1905, 0x401921FB60000000
  %1907 = fadd fast float %1906, %1888
  %1908 = call float @dx.op.unary.f32(i32 13, float %1907)  ; Sin(value)
  %1909 = call float @dx.op.unary.f32(i32 12, float %1907)  ; Cos(value)
  %1910 = fsub fast float -0.000000e+00, %1908
  %1911 = fadd fast float %1862, -5.000000e-01
  %1912 = fadd fast float %1863, -5.000000e-01
  %1913 = fmul fast float %1880, %1911
  %1914 = fmul fast float %1882, %1912
  %1915 = fadd fast float %1913, 5.000000e-01
  %1916 = fadd fast float %1914, 5.000000e-01
  %1917 = fmul fast float %1891, %1915
  %1918 = fmul fast float %1894, %1916
  %1919 = fmul fast float %1909, %1917
  %1920 = call float @dx.op.tertiary.f32(i32 46, float %1910, float %1918, float %1919)  ; FMad(a,b,c)
  %1921 = fmul fast float %1908, %1917
  %1922 = call float @dx.op.tertiary.f32(i32 46, float %1909, float %1918, float %1921)  ; FMad(a,b,c)
  %1923 = fadd fast float %1900, %1920
  %1924 = fadd fast float %1903, %1922
  %1925 = icmp ugt i32 %1874, 1
  %1926 = icmp ugt i32 %1872, 33554431
  %1927 = or i1 %1926, %1925
  br i1 %1927, label %1928, label %1953

; <label>:1928                                    ; preds = %1855
  %1929 = add i32 %61, 260
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = lshr i32 %1931, 16
  %1933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1932)  ; LegacyF16ToF32(value)
  %1934 = fmul fast float %1896, %1933
  %1935 = call float @dx.op.unary.f32(i32 22, float %1934)  ; Frc(value)
  %1936 = mul nuw nsw i32 %1874, %1875
  %1937 = uitofp i32 %1936 to float
  %1938 = fmul fast float %1935, %1937
  %1939 = call float @dx.op.unary.f32(i32 27, float %1938)  ; Round_ni(value)
  %1940 = fptoui float %1939 to i32
  %1941 = urem i32 %1940, %1874
  %1942 = udiv i32 %1940, %1875
  %1943 = call float @dx.op.unary.f32(i32 22, float %1923)  ; Frc(value)
  %1944 = call float @dx.op.unary.f32(i32 22, float %1924)  ; Frc(value)
  %1945 = uitofp i32 %1941 to float
  %1946 = uitofp i32 %1942 to float
  %1947 = fadd fast float %1943, %1945
  %1948 = fadd fast float %1944, %1946
  %1949 = uitofp i32 %1874 to float
  %1950 = uitofp i32 %1875 to float
  %1951 = fdiv fast float %1947, %1949
  %1952 = fdiv fast float %1948, %1950
  br label %1953

; <label>:1953                                    ; preds = %1928, %1855
  %1954 = phi float [ %1951, %1928 ], [ %1923, %1855 ]
  %1955 = phi float [ %1952, %1928 ], [ %1924, %1855 ]
  %1956 = and i32 %1849, 256
  %1957 = icmp eq i32 %1956, 0
  br i1 %1957, label %2004, label %1958

; <label>:1958                                    ; preds = %1953
  %1959 = add i32 %61, 496
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = add i32 %1961, 0
  %1963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1964 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1963, %dx.types.Handle %113, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1965 = extractvalue %dx.types.ResRet.f32 %1964, 0
  %1966 = add i32 %61, 132
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = shl i32 %1968, 4
  %1970 = and i32 %1969, 32752
  %1971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1970)  ; LegacyF16ToF32(value)
  %1972 = lshr i32 %1968, 7
  %1973 = and i32 %1972, 32752
  %1974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1973)  ; LegacyF16ToF32(value)
  %1975 = fsub fast float 1.000000e+00, %545
  %1976 = call float @dx.op.binary.f32(i32 35, float %1975, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1977 = bitcast float %545 to i32
  %1978 = sitofp i32 %1977 to float
  %1979 = fadd fast float %1978, 0xC1CFBF8940000000
  %1980 = fmul fast float %1974, %1979
  %1981 = fadd fast float %1980, 0x41CFBF8940000000
  %1982 = fptosi float %1981 to i32
  %1983 = bitcast i32 %1982 to float
  %1984 = bitcast float %1976 to i32
  %1985 = sitofp i32 %1984 to float
  %1986 = fadd fast float %1985, 0xC1CFBF8940000000
  %1987 = fmul fast float %1986, %1974
  %1988 = fadd fast float %1987, 0x41CFBF8940000000
  %1989 = fptosi float %1988 to i32
  %1990 = bitcast i32 %1989 to float
  %1991 = fmul fast float %1983, %1971
  %1992 = fmul fast float %1990, %1971
  %1993 = fsub fast float %1976, %1991
  %1994 = fadd fast float %1992, %1976
  %1995 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1996 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1997 = fsub fast float %1965, %1995
  %1998 = fsub fast float %1996, %1995
  %1999 = bitcast float %1998 to i32
  %2000 = sub nsw i32 2129859010, %1999
  %2001 = bitcast i32 %2000 to float
  %2002 = fmul fast float %2001, %1997
  %2003 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  br label %2004

; <label>:2004                                    ; preds = %1958, %1953
  %2005 = phi float [ %2003, %1958 ], [ %545, %1953 ]
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = and i32 %2007, 128
  %2009 = icmp eq i32 %2008, 0
  br i1 %2009, label %2026, label %2010

; <label>:2010                                    ; preds = %2004
  %2011 = add i32 %61, 480
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = add i32 %2013, 0
  %2015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2014, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2016 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2015, %dx.types.Handle %113, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2017 = extractvalue %dx.types.ResRet.f32 %2016, 0
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = and i32 %2019, 524288
  %2021 = icmp ne i32 %2020, 0
  %2022 = fcmp fast ogt float %2017, 0x3FE0101020000000
  %2023 = select i1 %2022, float 1.000000e+00, float 0.000000e+00
  %2024 = select i1 %2021, float %2023, float %2017
  %2025 = fmul fast float %2024, %2005
  br label %2026

; <label>:2026                                    ; preds = %2010, %2004
  %2027 = phi float [ %2025, %2010 ], [ %2005, %2004 ]
  %2028 = fcmp fast ult float %2027, 0x3F70101020000000
  br i1 %2028, label %2571, label %2029

; <label>:2029                                    ; preds = %2026
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = and i32 %2031, 16
  %2033 = icmp eq i32 %2032, 0
  br i1 %2033, label %2232, label %2034

; <label>:2034                                    ; preds = %2029
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = add i32 %61, 432
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = add i32 %2039, 0
  %2041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2040, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2042 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2041, %dx.types.Handle %112, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2043 = extractvalue %dx.types.ResRet.f32 %2042, 0
  %2044 = extractvalue %dx.types.ResRet.f32 %2042, 1
  %2045 = extractvalue %dx.types.ResRet.f32 %2042, 2
  %2046 = extractvalue %dx.types.ResRet.f32 %2042, 3
  %2047 = and i32 %2036, 255
  %2048 = uitofp i32 %2047 to float
  %2049 = lshr i32 %2036, 8
  %2050 = and i32 %2049, 255
  %2051 = uitofp i32 %2050 to float
  %2052 = fmul fast float %2046, %2048
  %2053 = fadd fast float %2052, %2051
  %2054 = fmul fast float %2053, 0x3F70101000000000
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = and i32 %2056, 512
  %2058 = icmp eq i32 %2057, 0
  br i1 %2058, label %2067, label %2059

; <label>:2059                                    ; preds = %2034
  %2060 = add i32 %61, 516
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = add i32 %2062, 0
  %2064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2063, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2065 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2064, %dx.types.Handle %113, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2066 = extractvalue %dx.types.ResRet.f32 %2065, 0
  br label %2067

; <label>:2067                                    ; preds = %2059, %2034
  %2068 = phi float [ %2066, %2059 ], [ 1.000000e+00, %2034 ]
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = and i32 %2070, 33554432
  %2072 = icmp eq i32 %2071, 0
  br i1 %2072, label %2179, label %2073

; <label>:2073                                    ; preds = %2067
  %2074 = add i32 %61, 256
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = and i32 %2076, 65535
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = lshr i32 %2076, 16
  %2080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2079)  ; LegacyF16ToF32(value)
  %2081 = add i32 %61, 260
  %2082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2081, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.i32 %2082, 0
  %2084 = and i32 %2083, 65535
  %2085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2084)  ; LegacyF16ToF32(value)
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = lshr i32 %2087, 24
  %2089 = uitofp i32 %2088 to float
  %2090 = fmul fast float %2089, 0x3F70101020000000
  %2091 = and i32 %2087, 255
  %2092 = uitofp i32 %2091 to float
  %2093 = fmul fast float %2092, 0x3F70101020000000
  %2094 = lshr i32 %2087, 8
  %2095 = and i32 %2094, 255
  %2096 = uitofp i32 %2095 to float
  %2097 = fmul fast float %2096, 0x3F70101020000000
  %2098 = lshr i32 %2087, 16
  %2099 = and i32 %2098, 255
  %2100 = uitofp i32 %2099 to float
  %2101 = fmul fast float %2100, 0x3F70101020000000
  %2102 = add i32 %61, 252
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = lshr i32 %2104, 24
  %2106 = uitofp i32 %2105 to float
  %2107 = fmul fast float %2106, 0x3F70101020000000
  %2108 = and i32 %2104, 255
  %2109 = uitofp i32 %2108 to float
  %2110 = fmul fast float %2109, 0x3F70101020000000
  %2111 = lshr i32 %2104, 8
  %2112 = and i32 %2111, 255
  %2113 = uitofp i32 %2112 to float
  %2114 = fmul fast float %2113, 0x3F70101020000000
  %2115 = lshr i32 %2104, 16
  %2116 = and i32 %2115, 255
  %2117 = uitofp i32 %2116 to float
  %2118 = fmul fast float %2117, 0x3F70101020000000
  %2119 = bitcast float %2043 to i32
  %2120 = ashr i32 %2119, 1
  %2121 = sub nsw i32 1597463174, %2120
  %2122 = bitcast i32 %2121 to float
  %2123 = fmul fast float %2043, 5.000000e-01
  %2124 = fmul fast float %2122, %2122
  %2125 = fmul fast float %2124, %2123
  %2126 = fsub fast float 1.500000e+00, %2125
  %2127 = fmul fast float %2122, %2043
  %2128 = fmul fast float %2127, %2126
  %2129 = bitcast float %2044 to i32
  %2130 = ashr i32 %2129, 1
  %2131 = sub nsw i32 1597463174, %2130
  %2132 = bitcast i32 %2131 to float
  %2133 = fmul fast float %2044, 5.000000e-01
  %2134 = fmul fast float %2132, %2132
  %2135 = fmul fast float %2134, %2133
  %2136 = fsub fast float 1.500000e+00, %2135
  %2137 = fmul fast float %2132, %2044
  %2138 = fmul fast float %2137, %2136
  %2139 = bitcast float %2045 to i32
  %2140 = ashr i32 %2139, 1
  %2141 = sub nsw i32 1597463174, %2140
  %2142 = bitcast i32 %2141 to float
  %2143 = fmul fast float %2045, 5.000000e-01
  %2144 = fmul fast float %2142, %2142
  %2145 = fmul fast float %2144, %2143
  %2146 = fsub fast float 1.500000e+00, %2145
  %2147 = fmul fast float %2142, %2045
  %2148 = fmul fast float %2147, %2146
  %2149 = fsub fast float %2128, %2110
  %2150 = fsub fast float %2138, %2114
  %2151 = fsub fast float %2148, %2118
  %2152 = fmul fast float %2149, %2078
  %2153 = fmul fast float %2150, %2080
  %2154 = fmul fast float %2151, %2085
  %2155 = fadd fast float %2152, %2093
  %2156 = fadd fast float %2153, %2097
  %2157 = fadd fast float %2154, %2101
  %2158 = call float @dx.op.unary.f32(i32 7, float %2155)  ; Saturate(value)
  %2159 = call float @dx.op.unary.f32(i32 7, float %2156)  ; Saturate(value)
  %2160 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2161 = fmul fast float %2158, %2158
  %2162 = fmul fast float %2159, %2159
  %2163 = fmul fast float %2160, %2160
  %2164 = fsub fast float %2161, %2043
  %2165 = fsub fast float %2162, %2044
  %2166 = fsub fast float %2163, %2045
  %2167 = fmul fast float %2164, %2068
  %2168 = fmul fast float %2165, %2068
  %2169 = fmul fast float %2166, %2068
  %2170 = fadd fast float %2167, %2043
  %2171 = fadd fast float %2168, %2044
  %2172 = fadd fast float %2169, %2045
  %2173 = fadd fast float %2090, %2054
  %2174 = fsub fast float %2173, %2107
  %2175 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2176 = fsub fast float %2175, %2054
  %2177 = fmul fast float %2176, %2068
  %2178 = fadd fast float %2177, %2054
  br label %2232

; <label>:2179                                    ; preds = %2067
  %2180 = and i32 %2070, 134217728
  %2181 = icmp eq i32 %2180, 0
  br i1 %2181, label %2216, label %2182

; <label>:2182                                    ; preds = %2179
  %2183 = call float @dx.op.unary.f32(i32 24, float %420)  ; Sqrt(value)
  %2184 = call float @dx.op.unary.f32(i32 24, float %424)  ; Sqrt(value)
  %2185 = call float @dx.op.unary.f32(i32 24, float %428)  ; Sqrt(value)
  %2186 = fadd fast float %2183, -5.000000e-01
  %2187 = fadd fast float %2184, -5.000000e-01
  %2188 = fadd fast float %2185, -5.000000e-01
  %2189 = fmul fast float %2186, %2068
  %2190 = fmul fast float %2187, %2068
  %2191 = fmul fast float %2188, %2068
  %2192 = fadd fast float %2189, 5.000000e-01
  %2193 = fadd fast float %2190, 5.000000e-01
  %2194 = fadd fast float %2191, 5.000000e-01
  %2195 = call float @dx.op.unary.f32(i32 24, float %2043)  ; Sqrt(value)
  %2196 = call float @dx.op.unary.f32(i32 24, float %2044)  ; Sqrt(value)
  %2197 = call float @dx.op.unary.f32(i32 24, float %2045)  ; Sqrt(value)
  %2198 = fmul fast float %2192, 2.000000e+00
  %2199 = fsub fast float 1.000000e+00, %2198
  %2200 = fmul fast float %2199, %2195
  %2201 = fadd fast float %2200, %2198
  %2202 = fmul fast float %2201, %2195
  %2203 = fmul fast float %2193, 2.000000e+00
  %2204 = fsub fast float 1.000000e+00, %2203
  %2205 = fmul fast float %2204, %2196
  %2206 = fadd fast float %2205, %2203
  %2207 = fmul fast float %2206, %2196
  %2208 = fmul fast float %2194, 2.000000e+00
  %2209 = fsub fast float 1.000000e+00, %2208
  %2210 = fmul fast float %2209, %2197
  %2211 = fadd fast float %2210, %2208
  %2212 = fmul fast float %2211, %2197
  %2213 = fmul fast float %2202, %2202
  %2214 = fmul fast float %2207, %2207
  %2215 = fmul fast float %2212, %2212
  br label %2232

; <label>:2216                                    ; preds = %2179
  %2217 = fmul fast float %420, %420
  %2218 = fmul fast float %424, %424
  %2219 = fmul fast float %428, %428
  %2220 = fadd fast float %2217, -1.000000e+00
  %2221 = fadd fast float %2218, -1.000000e+00
  %2222 = fadd fast float %2219, -1.000000e+00
  %2223 = fmul fast float %2068, %2220
  %2224 = fmul fast float %2068, %2221
  %2225 = fmul fast float %2068, %2222
  %2226 = fadd fast float %2223, 1.000000e+00
  %2227 = fadd fast float %2224, 1.000000e+00
  %2228 = fadd fast float %2225, 1.000000e+00
  %2229 = fmul fast float %2226, %2043
  %2230 = fmul fast float %2227, %2044
  %2231 = fmul fast float %2228, %2045
  br label %2232

; <label>:2232                                    ; preds = %2216, %2182, %2073, %2029
  %2233 = phi float [ %2178, %2073 ], [ %2054, %2182 ], [ %2054, %2216 ], [ 0x3FA23C0BE0000000, %2029 ]
  %2234 = phi float [ %2170, %2073 ], [ %2213, %2182 ], [ %2229, %2216 ], [ 1.000000e+00, %2029 ]
  %2235 = phi float [ %2171, %2073 ], [ %2214, %2182 ], [ %2230, %2216 ], [ 1.000000e+00, %2029 ]
  %2236 = phi float [ %2172, %2073 ], [ %2215, %2182 ], [ %2231, %2216 ], [ 1.000000e+00, %2029 ]
  %2237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.i32 %2237, 1
  %2239 = and i32 %2238, 1
  %2240 = icmp ne i32 %2239, 0
  %2241 = add i32 %61, 356
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2241, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = and i32 %2243, 32
  %2245 = icmp ne i32 %2244, 0
  %2246 = and i1 %2240, %2245
  %2247 = select i1 %2246, float 1.000000e+00, float %2234
  %2248 = select i1 %2246, float 0x3FD3333340000000, float %2235
  %2249 = select i1 %2246, float 0x3FD3333340000000, float %2236
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = and i32 %2251, 32
  %2253 = icmp eq i32 %2252, 0
  br i1 %2253, label %2326, label %2254

; <label>:2254                                    ; preds = %2232
  %2255 = add i32 %61, 124
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = add i32 %61, 448
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = add i32 %2260, 0
  %2262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2262, %dx.types.Handle %112, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2264 = extractvalue %dx.types.ResRet.f32 %2263, 0
  %2265 = extractvalue %dx.types.ResRet.f32 %2263, 1
  %2266 = extractvalue %dx.types.ResRet.f32 %2263, 2
  %2267 = extractvalue %dx.types.ResRet.f32 %2263, 3
  %2268 = and i32 %2257, 255
  %2269 = uitofp i32 %2268 to float
  %2270 = lshr i32 %2257, 8
  %2271 = and i32 %2270, 255
  %2272 = uitofp i32 %2271 to float
  %2273 = lshr i32 %2257, 16
  %2274 = and i32 %2273, 255
  %2275 = uitofp i32 %2274 to float
  %2276 = fmul fast float %2275, 0x3F70101000000000
  %2277 = fmul fast float %2264, %2269
  %2278 = fadd fast float %2277, %2272
  %2279 = fmul fast float %2278, 0x3F70101000000000
  %2280 = fadd fast float %2265, -5.000000e-01
  %2281 = fadd fast float %2267, -5.000000e-01
  %2282 = fmul fast float %2280, %2276
  %2283 = fmul fast float %2281, %2276
  %2284 = fadd fast float %2282, 5.000000e-01
  %2285 = fadd fast float %2283, 5.000000e-01
  %2286 = fmul fast float %2284, 2.000000e+00
  %2287 = fadd fast float %2286, -1.000000e+00
  %2288 = fmul fast float %2285, 2.000000e+00
  %2289 = fadd fast float %2288, -1.000000e+00
  %2290 = fadd fast float %2287, %2289
  %2291 = fmul fast float %2290, 5.000000e-01
  %2292 = fsub fast float %2287, %2289
  %2293 = fmul fast float %2292, 5.000000e-01
  %2294 = call float @dx.op.unary.f32(i32 6, float %2291)  ; FAbs(value)
  %2295 = fsub fast float 1.000000e+00, %2294
  %2296 = call float @dx.op.unary.f32(i32 6, float %2293)  ; FAbs(value)
  %2297 = fsub fast float %2295, %2296
  %2298 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2293, float %2297, float %2291, float %2293, float %2297)  ; Dot3(ax,ay,az,bx,by,bz)
  %2299 = call float @dx.op.unary.f32(i32 25, float %2298)  ; Rsqrt(value)
  %2300 = fmul fast float %2291, %2299
  %2301 = fmul fast float %2293, %2299
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = and i32 %2303, 67108864
  %2305 = icmp eq i32 %2304, 0
  br i1 %2305, label %2322, label %2306

; <label>:2306                                    ; preds = %2254
  %2307 = add i32 %61, 312
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 65535
  %2311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2310)  ; LegacyF16ToF32(value)
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = and i32 %2313, 65535
  %2315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2314)  ; LegacyF16ToF32(value)
  %2316 = lshr i32 %2309, 16
  %2317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2316)  ; LegacyF16ToF32(value)
  %2318 = fsub fast float %2279, %2317
  %2319 = fmul fast float %2318, %2311
  %2320 = fadd fast float %2319, %2315
  %2321 = call float @dx.op.unary.f32(i32 7, float %2320)  ; Saturate(value)
  br label %2322

; <label>:2322                                    ; preds = %2306, %2254
  %2323 = phi float [ %2321, %2306 ], [ %2279, %2254 ]
  %2324 = call float @dx.op.dot2.f32(i32 54, float %2300, float %2301, float %1858, float %1859)  ; Dot2(ax,ay,bx,by)
  %2325 = call float @dx.op.dot2.f32(i32 54, float %2300, float %2301, float %1860, float %1861)  ; Dot2(ax,ay,bx,by)
  br label %2326

; <label>:2326                                    ; preds = %2322, %2232
  %2327 = phi float [ %2323, %2322 ], [ 0x3FD6666660000000, %2232 ]
  %2328 = phi float [ %2324, %2322 ], [ 0.000000e+00, %2232 ]
  %2329 = phi float [ %2325, %2322 ], [ 0.000000e+00, %2232 ]
  %2330 = phi float [ %2266, %2322 ], [ 1.000000e+00, %2232 ]
  %2331 = add i32 %61, 192
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = lshr i32 %2333, 22
  %2335 = shl nuw nsw i32 %2334, 5
  %2336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2335)  ; LegacyF16ToF32(value)
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = and i32 %2338, 64
  %2340 = icmp eq i32 %2339, 0
  br i1 %2340, label %2374, label %2341

; <label>:2341                                    ; preds = %2326
  %2342 = add i32 %61, 464
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2342, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = add i32 %2344, 0
  %2346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2345, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = and i32 %2348, 131072
  %2350 = icmp eq i32 %2349, 0
  %2351 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2346, %dx.types.Handle %112, float %1954, float %1955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2352 = extractvalue %dx.types.ResRet.f32 %2351, 0
  %2353 = extractvalue %dx.types.ResRet.f32 %2351, 1
  %2354 = extractvalue %dx.types.ResRet.f32 %2351, 2
  %2355 = fmul fast float %2352, %408
  %2356 = fmul fast float %2353, %411
  %2357 = fmul fast float %2354, %414
  br i1 %2350, label %2364, label %2358

; <label>:2358                                    ; preds = %2341
  %2359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2359, 0
  %2361 = fmul fast float %2360, %2355
  %2362 = fmul fast float %2360, %2356
  %2363 = fmul fast float %2360, %2357
  br label %2364

; <label>:2364                                    ; preds = %2358, %2341
  %2365 = phi float [ %2361, %2358 ], [ %2355, %2341 ]
  %2366 = phi float [ %2362, %2358 ], [ %2356, %2341 ]
  %2367 = phi float [ %2363, %2358 ], [ %2357, %2341 ]
  %2368 = fmul fast float %2365, %2336
  %2369 = select i1 %307, float %2368, float %2365
  %2370 = call float @dx.op.dot3.f32(i32 55, float %2369, float %2366, float %2367, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2371 = select i1 %307, float 0.000000e+00, float %2365
  %2372 = select i1 %307, float %2370, float %2366
  %2373 = select i1 %307, float 0.000000e+00, float %2367
  br label %2374

; <label>:2374                                    ; preds = %2364, %2326
  %2375 = phi float [ %2371, %2364 ], [ 0.000000e+00, %2326 ]
  %2376 = phi float [ %2372, %2364 ], [ 0.000000e+00, %2326 ]
  %2377 = phi float [ %2373, %2364 ], [ 0.000000e+00, %2326 ]
  %2378 = add i32 %61, 128
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2378, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = and i32 %2380, 255
  %2382 = uitofp i32 %2381 to float
  %2383 = lshr i32 %2380, 8
  %2384 = and i32 %2383, 255
  %2385 = uitofp i32 %2384 to float
  %2386 = call float @dx.op.dot3.f32(i32 55, float %2247, float %2248, float %2249, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2387 = fmul fast float %2385, %2386
  %2388 = fadd fast float %2387, %2382
  %2389 = fmul fast float %2388, 0x3F70101020000000
  %2390 = call float @dx.op.unary.f32(i32 7, float %2389)  ; Saturate(value)
  br i1 %1846, label %2391, label %2399

; <label>:2391                                    ; preds = %2374
  %2392 = fsub fast float 1.000000e+00, %2027
  %2393 = fmul fast float %2392, %1835
  %2394 = fmul fast float %2392, %1836
  %2395 = fmul fast float %2392, %1837
  %2396 = fmul fast float %2392, %1838
  %2397 = fmul fast float %2392, %1839
  %2398 = fmul fast float %2392, %1840
  br label %2399

; <label>:2399                                    ; preds = %2391, %2374
  %2400 = phi float [ %2393, %2391 ], [ %1835, %2374 ]
  %2401 = phi float [ %2394, %2391 ], [ %1836, %2374 ]
  %2402 = phi float [ %2395, %2391 ], [ %1837, %2374 ]
  %2403 = phi float [ %2396, %2391 ], [ %1838, %2374 ]
  %2404 = phi float [ %2397, %2391 ], [ %1839, %2374 ]
  %2405 = phi float [ %2398, %2391 ], [ %1840, %2374 ]
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = and i32 %2407, 3
  %2409 = icmp eq i32 %2408, 3
  br i1 %2409, label %2488, label %2410

; <label>:2410                                    ; preds = %2399
  %2411 = and i32 %2407, 16
  %2412 = icmp ne i32 %2411, 0
  %2413 = select i1 %2412, float %2027, float 0.000000e+00
  %2414 = icmp eq i32 %2408, 0
  br i1 %2414, label %2415, label %2443

; <label>:2415                                    ; preds = %2410
  %2416 = and i32 %2407, 64
  %2417 = icmp ne i32 %2416, 0
  %2418 = select i1 %2417, float %2027, float 0.000000e+00
  %2419 = fsub fast float %2247, %2400
  %2420 = fsub fast float %2248, %2401
  %2421 = fsub fast float %2249, %2402
  %2422 = fmul fast float %2413, %2419
  %2423 = fmul fast float %2413, %2420
  %2424 = fmul fast float %2413, %2421
  %2425 = fadd fast float %2422, %2400
  %2426 = fadd fast float %2423, %2401
  %2427 = fadd fast float %2424, %2402
  %2428 = fsub fast float %2233, %1841
  %2429 = fmul fast float %2413, %2428
  %2430 = fadd fast float %2429, %1841
  %2431 = fsub fast float %2375, %2403
  %2432 = fsub fast float %2376, %2404
  %2433 = fsub fast float %2377, %2405
  %2434 = fmul fast float %2418, %2431
  %2435 = fmul fast float %2418, %2432
  %2436 = fmul fast float %2418, %2433
  %2437 = fadd fast float %2434, %2403
  %2438 = fadd fast float %2435, %2404
  %2439 = fadd fast float %2436, %2405
  %2440 = fsub fast float %2390, %1844
  %2441 = fmul fast float %2413, %2440
  %2442 = fadd fast float %2441, %1844
  br label %2488

; <label>:2443                                    ; preds = %2410
  %2444 = icmp eq i32 %2408, 1
  br i1 %2444, label %2445, label %2458

; <label>:2445                                    ; preds = %2443
  %2446 = fadd fast float %2247, -1.000000e+00
  %2447 = fadd fast float %2248, -1.000000e+00
  %2448 = fadd fast float %2249, -1.000000e+00
  %2449 = fmul fast float %2413, %2446
  %2450 = fmul fast float %2413, %2447
  %2451 = fmul fast float %2413, %2448
  %2452 = fadd fast float %2449, 1.000000e+00
  %2453 = fadd fast float %2450, 1.000000e+00
  %2454 = fadd fast float %2451, 1.000000e+00
  %2455 = fmul fast float %2452, %2400
  %2456 = fmul fast float %2453, %2401
  %2457 = fmul fast float %2454, %2402
  br label %2488

; <label>:2458                                    ; preds = %2443
  %2459 = icmp eq i32 %2408, 2
  br i1 %2459, label %2460, label %2488

; <label>:2460                                    ; preds = %2458
  %2461 = call float @dx.op.unary.f32(i32 24, float %2247)  ; Sqrt(value)
  %2462 = call float @dx.op.unary.f32(i32 24, float %2248)  ; Sqrt(value)
  %2463 = call float @dx.op.unary.f32(i32 24, float %2249)  ; Sqrt(value)
  %2464 = fadd fast float %2461, -5.000000e-01
  %2465 = fadd fast float %2462, -5.000000e-01
  %2466 = fadd fast float %2463, -5.000000e-01
  %2467 = fmul fast float %2464, %2413
  %2468 = fmul fast float %2465, %2413
  %2469 = fmul fast float %2466, %2413
  %2470 = fadd fast float %2467, 5.000000e-01
  %2471 = fadd fast float %2468, 5.000000e-01
  %2472 = fadd fast float %2469, 5.000000e-01
  %2473 = fmul fast float %2470, 2.000000e+00
  %2474 = fsub fast float 1.000000e+00, %2473
  %2475 = fmul fast float %2474, %2400
  %2476 = fadd fast float %2475, %2473
  %2477 = fmul fast float %2476, %2400
  %2478 = fmul fast float %2471, 2.000000e+00
  %2479 = fsub fast float 1.000000e+00, %2478
  %2480 = fmul fast float %2479, %2401
  %2481 = fadd fast float %2480, %2478
  %2482 = fmul fast float %2481, %2401
  %2483 = fmul fast float %2472, 2.000000e+00
  %2484 = fsub fast float 1.000000e+00, %2483
  %2485 = fmul fast float %2484, %2402
  %2486 = fadd fast float %2485, %2483
  %2487 = fmul fast float %2486, %2402
  br label %2488

; <label>:2488                                    ; preds = %2460, %2458, %2445, %2415, %2399
  %2489 = phi float [ %2400, %2399 ], [ %2477, %2460 ], [ %2400, %2458 ], [ %2455, %2445 ], [ %2425, %2415 ]
  %2490 = phi float [ %2401, %2399 ], [ %2482, %2460 ], [ %2401, %2458 ], [ %2456, %2445 ], [ %2426, %2415 ]
  %2491 = phi float [ %2402, %2399 ], [ %2487, %2460 ], [ %2402, %2458 ], [ %2457, %2445 ], [ %2427, %2415 ]
  %2492 = phi float [ %2403, %2399 ], [ %2403, %2460 ], [ %2403, %2458 ], [ %2403, %2445 ], [ %2437, %2415 ]
  %2493 = phi float [ %2404, %2399 ], [ %2404, %2460 ], [ %2404, %2458 ], [ %2404, %2445 ], [ %2438, %2415 ]
  %2494 = phi float [ %2405, %2399 ], [ %2405, %2460 ], [ %2405, %2458 ], [ %2405, %2445 ], [ %2439, %2415 ]
  %2495 = phi float [ %1841, %2399 ], [ %1841, %2460 ], [ %1841, %2458 ], [ %1841, %2445 ], [ %2430, %2415 ]
  %2496 = phi float [ %1844, %2399 ], [ %1844, %2460 ], [ %1844, %2458 ], [ %1844, %2445 ], [ %2442, %2415 ]
  %2497 = and i32 %2407, 12
  %2498 = icmp eq i32 %2497, 12
  br i1 %2498, label %2571, label %2499

; <label>:2499                                    ; preds = %2488
  %2500 = and i32 %2407, 2097184
  %2501 = icmp eq i32 %2500, 2097184
  %2502 = select i1 %2501, float %2027, float 0.000000e+00
  %2503 = and i32 %2407, 4194336
  %2504 = icmp eq i32 %2503, 4194336
  %2505 = select i1 %2504, float %2027, float 0.000000e+00
  %2506 = and i32 %2407, 8388640
  %2507 = icmp eq i32 %2506, 8388640
  %2508 = select i1 %2507, float %2027, float 0.000000e+00
  %2509 = icmp eq i32 %2497, 0
  br i1 %2509, label %2510, label %2523

; <label>:2510                                    ; preds = %2499
  %2511 = fsub fast float %2328, %1833
  %2512 = fsub fast float %2329, %1834
  %2513 = fmul fast float %2502, %2511
  %2514 = fmul fast float %2502, %2512
  %2515 = fadd fast float %2513, %1833
  %2516 = fadd fast float %2514, %1834
  %2517 = fsub fast float %2330, %1843
  %2518 = fmul fast float %2505, %2517
  %2519 = fadd fast float %2518, %1843
  %2520 = fsub fast float %2327, %1842
  %2521 = fmul fast float %2508, %2520
  %2522 = fadd fast float %2521, %1842
  br label %2571

; <label>:2523                                    ; preds = %2499
  %2524 = icmp eq i32 %2497, 4
  br i1 %2524, label %2525, label %2557

; <label>:2525                                    ; preds = %2523
  %2526 = fmul fast float %2502, %2328
  %2527 = fmul fast float %2502, %2329
  %2528 = fadd fast float %2526, %1833
  %2529 = fadd fast float %2527, %1834
  %2530 = call float @dx.op.binary.f32(i32 36, float %1843, float %2330)  ; FMin(a,b)
  %2531 = fsub fast float %2530, %1843
  %2532 = fmul fast float %2531, %2505
  %2533 = fadd fast float %2532, %1843
  %2534 = fadd fast float %2327, %1842
  %2535 = fmul fast float %2534, 0x3FF337FAE0000000
  %2536 = fmul fast float %1842, %1842
  %2537 = fmul fast float %2327, %2327
  %2538 = fadd fast float %2537, %2536
  %2539 = fmul fast float %2538, 0x3FE5152B00000000
  %2540 = fmul fast float %1842, 0xBFCC1F85E0000000
  %2541 = fmul fast float %2540, %2327
  %2542 = fadd fast float %2541, 0xBFE1363700000000
  %2543 = fadd fast float %2542, %2535
  %2544 = fsub fast float %2543, %2539
  %2545 = fmul fast float %2534, 0x3FBA6F0D00000000
  %2546 = fmul fast float %2538, 0x3FD0432880000000
  %2547 = fmul fast float %1842, 0xBFEF110800000000
  %2548 = fmul fast float %2547, %2327
  %2549 = fadd fast float %2548, 1.000000e+00
  %2550 = fsub fast float %2549, %2545
  %2551 = fadd fast float %2550, %2546
  %2552 = fdiv fast float %2544, %2551
  %2553 = call float @dx.op.unary.f32(i32 7, float %2552)  ; Saturate(value)
  %2554 = fsub fast float %2553, %1842
  %2555 = fmul fast float %2554, %2508
  %2556 = fadd fast float %2555, %1842
  br label %2571

; <label>:2557                                    ; preds = %2523
  %2558 = icmp eq i32 %2497, 8
  br i1 %2558, label %2559, label %2571

; <label>:2559                                    ; preds = %2557
  %2560 = fmul fast float %2502, %2328
  %2561 = fmul fast float %2502, %2329
  %2562 = fadd fast float %2560, %1833
  %2563 = fadd fast float %2561, %1834
  %2564 = call float @dx.op.binary.f32(i32 36, float %1843, float %2330)  ; FMin(a,b)
  %2565 = fsub fast float %2564, %1843
  %2566 = fmul fast float %2565, %2505
  %2567 = fadd fast float %2566, %1843
  %2568 = fsub fast float %2327, %1842
  %2569 = fmul fast float %2508, %2568
  %2570 = fadd fast float %2569, %1842
  br label %2571

; <label>:2571                                    ; preds = %2559, %2557, %2525, %2510, %2488, %2026, %1845, %1832
  %2572 = phi float [ %1833, %2488 ], [ %1833, %2026 ], [ %1833, %1832 ], [ %2562, %2559 ], [ %1833, %2557 ], [ %2528, %2525 ], [ %2515, %2510 ], [ %1833, %1845 ]
  %2573 = phi float [ %1834, %2488 ], [ %1834, %2026 ], [ %1834, %1832 ], [ %2563, %2559 ], [ %1834, %2557 ], [ %2529, %2525 ], [ %2516, %2510 ], [ %1834, %1845 ]
  %2574 = phi float [ %2489, %2488 ], [ %1835, %2026 ], [ %1835, %1832 ], [ %2489, %2559 ], [ %2489, %2557 ], [ %2489, %2525 ], [ %2489, %2510 ], [ %1835, %1845 ]
  %2575 = phi float [ %2490, %2488 ], [ %1836, %2026 ], [ %1836, %1832 ], [ %2490, %2559 ], [ %2490, %2557 ], [ %2490, %2525 ], [ %2490, %2510 ], [ %1836, %1845 ]
  %2576 = phi float [ %2491, %2488 ], [ %1837, %2026 ], [ %1837, %1832 ], [ %2491, %2559 ], [ %2491, %2557 ], [ %2491, %2525 ], [ %2491, %2510 ], [ %1837, %1845 ]
  %2577 = phi float [ %2492, %2488 ], [ %1838, %2026 ], [ %1838, %1832 ], [ %2492, %2559 ], [ %2492, %2557 ], [ %2492, %2525 ], [ %2492, %2510 ], [ %1838, %1845 ]
  %2578 = phi float [ %2493, %2488 ], [ %1839, %2026 ], [ %1839, %1832 ], [ %2493, %2559 ], [ %2493, %2557 ], [ %2493, %2525 ], [ %2493, %2510 ], [ %1839, %1845 ]
  %2579 = phi float [ %2494, %2488 ], [ %1840, %2026 ], [ %1840, %1832 ], [ %2494, %2559 ], [ %2494, %2557 ], [ %2494, %2525 ], [ %2494, %2510 ], [ %1840, %1845 ]
  %2580 = phi float [ %2495, %2488 ], [ %1841, %2026 ], [ %1841, %1832 ], [ %2495, %2559 ], [ %2495, %2557 ], [ %2495, %2525 ], [ %2495, %2510 ], [ %1841, %1845 ]
  %2581 = phi float [ %1842, %2488 ], [ %1842, %2026 ], [ %1842, %1832 ], [ %2570, %2559 ], [ %1842, %2557 ], [ %2556, %2525 ], [ %2522, %2510 ], [ %1842, %1845 ]
  %2582 = phi float [ %1843, %2488 ], [ %1843, %2026 ], [ %1843, %1832 ], [ %2567, %2559 ], [ %1843, %2557 ], [ %2533, %2525 ], [ %2519, %2510 ], [ %1843, %1845 ]
  %2583 = phi float [ %2496, %2488 ], [ %1844, %2026 ], [ %1844, %1832 ], [ %2496, %2559 ], [ %2496, %2557 ], [ %2496, %2525 ], [ %2496, %2510 ], [ %1844, %1845 ]
  br i1 %495, label %3310, label %2584

; <label>:2584                                    ; preds = %2571
  %2585 = icmp ult i32 %549, 4
  %2586 = add i32 %61, 72
  %2587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2588 = extractvalue %dx.types.ResRet.i32 %2587, 0
  %2589 = add i32 %61, 76
  %2590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2589, i32 undef)  ; BufferLoad(srv,index,wot)
  %2591 = extractvalue %dx.types.ResRet.i32 %2590, 0
  %2592 = or i32 %2591, %2588
  %2593 = icmp eq i32 %2592, 0
  br i1 %2593, label %3310, label %2594

; <label>:2594                                    ; preds = %2584
  %2595 = and i32 %2588, 262144
  %2596 = icmp ne i32 %2595, 0
  %2597 = select i1 %2596, float %67, float 1.000000e+00
  %2598 = select i1 %2596, float %68, float 0.000000e+00
  %2599 = select i1 %2596, float %69, float 0.000000e+00
  %2600 = select i1 %2596, float %70, float 1.000000e+00
  %2601 = select i1 %2596, float %71, float %94
  %2602 = select i1 %2596, float %72, float %95
  %2603 = add i32 %61, 332
  %2604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %2605 = extractvalue %dx.types.ResRet.i32 %2604, 0
  %2606 = lshr i32 %2605, 16
  %2607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2606)  ; LegacyF16ToF32(value)
  %2608 = fmul fast float %2607, 0x3F50624DE0000000
  %2609 = add i32 %61, 136
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = lshr i32 %2611, 16
  %2613 = and i32 %2612, 255
  %2614 = lshr i32 %2611, 24
  %2615 = add i32 %61, 340
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = and i32 %2617, 65535
  %2619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2618)  ; LegacyF16ToF32(value)
  %2620 = lshr i32 %2617, 16
  %2621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2620)  ; LegacyF16ToF32(value)
  %2622 = add i32 %61, 80
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2622, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = lshr i32 %2624, 22
  %2626 = shl nuw nsw i32 %2625, 5
  %2627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2626)  ; LegacyF16ToF32(value)
  %2628 = shl i32 %2624, 4
  %2629 = and i32 %2628, 32752
  %2630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2629)  ; LegacyF16ToF32(value)
  %2631 = lshr i32 %2624, 7
  %2632 = and i32 %2631, 32752
  %2633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2632)  ; LegacyF16ToF32(value)
  %2634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2635 = extractvalue %dx.types.CBufRet.f32 %2634, 3
  %2636 = fmul fast float %2635, 1.000000e+03
  %2637 = fmul fast float %485, %2636
  %2638 = call float @dx.op.unary.f32(i32 22, float %2637)  ; Frc(value)
  %2639 = fadd fast float %2638, %475
  %2640 = fmul fast float %486, %2636
  %2641 = call float @dx.op.unary.f32(i32 22, float %2640)  ; Frc(value)
  %2642 = fadd fast float %2641, %477
  %2643 = fmul fast float %2608, %2636
  %2644 = call float @dx.op.unary.f32(i32 22, float %2643)  ; Frc(value)
  %2645 = fmul fast float %2644, 0x401921FB60000000
  %2646 = fadd fast float %2645, %2627
  %2647 = call float @dx.op.unary.f32(i32 13, float %2646)  ; Sin(value)
  %2648 = call float @dx.op.unary.f32(i32 12, float %2646)  ; Cos(value)
  %2649 = fsub fast float -0.000000e+00, %2647
  %2650 = fadd fast float %2601, -5.000000e-01
  %2651 = fadd fast float %2602, -5.000000e-01
  %2652 = fmul fast float %2619, %2650
  %2653 = fmul fast float %2621, %2651
  %2654 = fadd fast float %2652, 5.000000e-01
  %2655 = fadd fast float %2653, 5.000000e-01
  %2656 = fmul fast float %2630, %2654
  %2657 = fmul fast float %2633, %2655
  %2658 = fmul fast float %2648, %2656
  %2659 = call float @dx.op.tertiary.f32(i32 46, float %2649, float %2657, float %2658)  ; FMad(a,b,c)
  %2660 = fmul fast float %2647, %2656
  %2661 = call float @dx.op.tertiary.f32(i32 46, float %2648, float %2657, float %2660)  ; FMad(a,b,c)
  %2662 = fadd fast float %2639, %2659
  %2663 = fadd fast float %2642, %2661
  %2664 = icmp ugt i32 %2613, 1
  %2665 = icmp ugt i32 %2611, 33554431
  %2666 = or i1 %2665, %2664
  br i1 %2666, label %2667, label %2692

; <label>:2667                                    ; preds = %2594
  %2668 = add i32 %61, 276
  %2669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2668, i32 undef)  ; BufferLoad(srv,index,wot)
  %2670 = extractvalue %dx.types.ResRet.i32 %2669, 0
  %2671 = lshr i32 %2670, 16
  %2672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2671)  ; LegacyF16ToF32(value)
  %2673 = fmul fast float %2635, %2672
  %2674 = call float @dx.op.unary.f32(i32 22, float %2673)  ; Frc(value)
  %2675 = mul nuw nsw i32 %2613, %2614
  %2676 = uitofp i32 %2675 to float
  %2677 = fmul fast float %2674, %2676
  %2678 = call float @dx.op.unary.f32(i32 27, float %2677)  ; Round_ni(value)
  %2679 = fptoui float %2678 to i32
  %2680 = urem i32 %2679, %2613
  %2681 = udiv i32 %2679, %2614
  %2682 = call float @dx.op.unary.f32(i32 22, float %2662)  ; Frc(value)
  %2683 = call float @dx.op.unary.f32(i32 22, float %2663)  ; Frc(value)
  %2684 = uitofp i32 %2680 to float
  %2685 = uitofp i32 %2681 to float
  %2686 = fadd fast float %2682, %2684
  %2687 = fadd fast float %2683, %2685
  %2688 = uitofp i32 %2613 to float
  %2689 = uitofp i32 %2614 to float
  %2690 = fdiv fast float %2686, %2688
  %2691 = fdiv fast float %2687, %2689
  br label %2692

; <label>:2692                                    ; preds = %2667, %2594
  %2693 = phi float [ %2690, %2667 ], [ %2662, %2594 ]
  %2694 = phi float [ %2691, %2667 ], [ %2663, %2594 ]
  %2695 = and i32 %2588, 256
  %2696 = icmp eq i32 %2695, 0
  br i1 %2696, label %2743, label %2697

; <label>:2697                                    ; preds = %2692
  %2698 = add i32 %61, 500
  %2699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2698, i32 undef)  ; BufferLoad(srv,index,wot)
  %2700 = extractvalue %dx.types.ResRet.i32 %2699, 0
  %2701 = add i32 %2700, 0
  %2702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2701, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2703 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2702, %dx.types.Handle %113, float %2693, float %2694, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2704 = extractvalue %dx.types.ResRet.f32 %2703, 0
  %2705 = add i32 %61, 148
  %2706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2707 = extractvalue %dx.types.ResRet.i32 %2706, 0
  %2708 = shl i32 %2707, 4
  %2709 = and i32 %2708, 32752
  %2710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2709)  ; LegacyF16ToF32(value)
  %2711 = lshr i32 %2707, 7
  %2712 = and i32 %2711, 32752
  %2713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2712)  ; LegacyF16ToF32(value)
  %2714 = fsub fast float 1.000000e+00, %544
  %2715 = call float @dx.op.binary.f32(i32 35, float %2714, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2716 = bitcast float %544 to i32
  %2717 = sitofp i32 %2716 to float
  %2718 = fadd fast float %2717, 0xC1CFBF8940000000
  %2719 = fmul fast float %2713, %2718
  %2720 = fadd fast float %2719, 0x41CFBF8940000000
  %2721 = fptosi float %2720 to i32
  %2722 = bitcast i32 %2721 to float
  %2723 = bitcast float %2715 to i32
  %2724 = sitofp i32 %2723 to float
  %2725 = fadd fast float %2724, 0xC1CFBF8940000000
  %2726 = fmul fast float %2725, %2713
  %2727 = fadd fast float %2726, 0x41CFBF8940000000
  %2728 = fptosi float %2727 to i32
  %2729 = bitcast i32 %2728 to float
  %2730 = fmul fast float %2722, %2710
  %2731 = fmul fast float %2729, %2710
  %2732 = fsub fast float %2715, %2730
  %2733 = fadd fast float %2731, %2715
  %2734 = call float @dx.op.unary.f32(i32 7, float %2732)  ; Saturate(value)
  %2735 = call float @dx.op.unary.f32(i32 7, float %2733)  ; Saturate(value)
  %2736 = fsub fast float %2704, %2734
  %2737 = fsub fast float %2735, %2734
  %2738 = bitcast float %2737 to i32
  %2739 = sub nsw i32 2129859010, %2738
  %2740 = bitcast i32 %2739 to float
  %2741 = fmul fast float %2740, %2736
  %2742 = call float @dx.op.unary.f32(i32 7, float %2741)  ; Saturate(value)
  br label %2743

; <label>:2743                                    ; preds = %2697, %2692
  %2744 = phi float [ %2742, %2697 ], [ %544, %2692 ]
  %2745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.i32 %2745, 0
  %2747 = and i32 %2746, 128
  %2748 = icmp eq i32 %2747, 0
  br i1 %2748, label %2765, label %2749

; <label>:2749                                    ; preds = %2743
  %2750 = add i32 %61, 484
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.i32 %2751, 0
  %2753 = add i32 %2752, 0
  %2754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2754, %dx.types.Handle %113, float %2693, float %2694, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2756 = extractvalue %dx.types.ResRet.f32 %2755, 0
  %2757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2758 = extractvalue %dx.types.ResRet.i32 %2757, 0
  %2759 = and i32 %2758, 524288
  %2760 = icmp ne i32 %2759, 0
  %2761 = fcmp fast ogt float %2756, 0x3FE0101020000000
  %2762 = select i1 %2761, float 1.000000e+00, float 0.000000e+00
  %2763 = select i1 %2760, float %2762, float %2756
  %2764 = fmul fast float %2763, %2744
  br label %2765

; <label>:2765                                    ; preds = %2749, %2743
  %2766 = phi float [ %2764, %2749 ], [ %2744, %2743 ]
  %2767 = fcmp fast ult float %2766, 0x3F70101020000000
  br i1 %2767, label %3310, label %2768

; <label>:2768                                    ; preds = %2765
  %2769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.i32 %2769, 0
  %2771 = and i32 %2770, 16
  %2772 = icmp eq i32 %2771, 0
  br i1 %2772, label %2971, label %2773

; <label>:2773                                    ; preds = %2768
  %2774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2775 = extractvalue %dx.types.ResRet.i32 %2774, 0
  %2776 = add i32 %61, 436
  %2777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2776, i32 undef)  ; BufferLoad(srv,index,wot)
  %2778 = extractvalue %dx.types.ResRet.i32 %2777, 0
  %2779 = add i32 %2778, 0
  %2780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2779, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2781 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2780, %dx.types.Handle %112, float %2693, float %2694, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2782 = extractvalue %dx.types.ResRet.f32 %2781, 0
  %2783 = extractvalue %dx.types.ResRet.f32 %2781, 1
  %2784 = extractvalue %dx.types.ResRet.f32 %2781, 2
  %2785 = extractvalue %dx.types.ResRet.f32 %2781, 3
  %2786 = and i32 %2775, 255
  %2787 = uitofp i32 %2786 to float
  %2788 = lshr i32 %2775, 8
  %2789 = and i32 %2788, 255
  %2790 = uitofp i32 %2789 to float
  %2791 = fmul fast float %2785, %2787
  %2792 = fadd fast float %2791, %2790
  %2793 = fmul fast float %2792, 0x3F70101000000000
  %2794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2795 = extractvalue %dx.types.ResRet.i32 %2794, 0
  %2796 = and i32 %2795, 512
  %2797 = icmp eq i32 %2796, 0
  br i1 %2797, label %2806, label %2798

; <label>:2798                                    ; preds = %2773
  %2799 = add i32 %61, 520
  %2800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %2801 = extractvalue %dx.types.ResRet.i32 %2800, 0
  %2802 = add i32 %2801, 0
  %2803 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2802, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2804 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2803, %dx.types.Handle %113, float %2693, float %2694, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2805 = extractvalue %dx.types.ResRet.f32 %2804, 0
  br label %2806

; <label>:2806                                    ; preds = %2798, %2773
  %2807 = phi float [ %2805, %2798 ], [ 1.000000e+00, %2773 ]
  %2808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2809 = extractvalue %dx.types.ResRet.i32 %2808, 0
  %2810 = and i32 %2809, 33554432
  %2811 = icmp eq i32 %2810, 0
  br i1 %2811, label %2918, label %2812

; <label>:2812                                    ; preds = %2806
  %2813 = add i32 %61, 272
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = and i32 %2815, 65535
  %2817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2816)  ; LegacyF16ToF32(value)
  %2818 = lshr i32 %2815, 16
  %2819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2818)  ; LegacyF16ToF32(value)
  %2820 = add i32 %61, 276
  %2821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2820, i32 undef)  ; BufferLoad(srv,index,wot)
  %2822 = extractvalue %dx.types.ResRet.i32 %2821, 0
  %2823 = and i32 %2822, 65535
  %2824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2823)  ; LegacyF16ToF32(value)
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = lshr i32 %2826, 24
  %2828 = uitofp i32 %2827 to float
  %2829 = fmul fast float %2828, 0x3F70101020000000
  %2830 = and i32 %2826, 255
  %2831 = uitofp i32 %2830 to float
  %2832 = fmul fast float %2831, 0x3F70101020000000
  %2833 = lshr i32 %2826, 8
  %2834 = and i32 %2833, 255
  %2835 = uitofp i32 %2834 to float
  %2836 = fmul fast float %2835, 0x3F70101020000000
  %2837 = lshr i32 %2826, 16
  %2838 = and i32 %2837, 255
  %2839 = uitofp i32 %2838 to float
  %2840 = fmul fast float %2839, 0x3F70101020000000
  %2841 = add i32 %61, 268
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = lshr i32 %2843, 24
  %2845 = uitofp i32 %2844 to float
  %2846 = fmul fast float %2845, 0x3F70101020000000
  %2847 = and i32 %2843, 255
  %2848 = uitofp i32 %2847 to float
  %2849 = fmul fast float %2848, 0x3F70101020000000
  %2850 = lshr i32 %2843, 8
  %2851 = and i32 %2850, 255
  %2852 = uitofp i32 %2851 to float
  %2853 = fmul fast float %2852, 0x3F70101020000000
  %2854 = lshr i32 %2843, 16
  %2855 = and i32 %2854, 255
  %2856 = uitofp i32 %2855 to float
  %2857 = fmul fast float %2856, 0x3F70101020000000
  %2858 = bitcast float %2782 to i32
  %2859 = ashr i32 %2858, 1
  %2860 = sub nsw i32 1597463174, %2859
  %2861 = bitcast i32 %2860 to float
  %2862 = fmul fast float %2782, 5.000000e-01
  %2863 = fmul fast float %2861, %2861
  %2864 = fmul fast float %2863, %2862
  %2865 = fsub fast float 1.500000e+00, %2864
  %2866 = fmul fast float %2861, %2782
  %2867 = fmul fast float %2866, %2865
  %2868 = bitcast float %2783 to i32
  %2869 = ashr i32 %2868, 1
  %2870 = sub nsw i32 1597463174, %2869
  %2871 = bitcast i32 %2870 to float
  %2872 = fmul fast float %2783, 5.000000e-01
  %2873 = fmul fast float %2871, %2871
  %2874 = fmul fast float %2873, %2872
  %2875 = fsub fast float 1.500000e+00, %2874
  %2876 = fmul fast float %2871, %2783
  %2877 = fmul fast float %2876, %2875
  %2878 = bitcast float %2784 to i32
  %2879 = ashr i32 %2878, 1
  %2880 = sub nsw i32 1597463174, %2879
  %2881 = bitcast i32 %2880 to float
  %2882 = fmul fast float %2784, 5.000000e-01
  %2883 = fmul fast float %2881, %2881
  %2884 = fmul fast float %2883, %2882
  %2885 = fsub fast float 1.500000e+00, %2884
  %2886 = fmul fast float %2881, %2784
  %2887 = fmul fast float %2886, %2885
  %2888 = fsub fast float %2867, %2849
  %2889 = fsub fast float %2877, %2853
  %2890 = fsub fast float %2887, %2857
  %2891 = fmul fast float %2888, %2817
  %2892 = fmul fast float %2889, %2819
  %2893 = fmul fast float %2890, %2824
  %2894 = fadd fast float %2891, %2832
  %2895 = fadd fast float %2892, %2836
  %2896 = fadd fast float %2893, %2840
  %2897 = call float @dx.op.unary.f32(i32 7, float %2894)  ; Saturate(value)
  %2898 = call float @dx.op.unary.f32(i32 7, float %2895)  ; Saturate(value)
  %2899 = call float @dx.op.unary.f32(i32 7, float %2896)  ; Saturate(value)
  %2900 = fmul fast float %2897, %2897
  %2901 = fmul fast float %2898, %2898
  %2902 = fmul fast float %2899, %2899
  %2903 = fsub fast float %2900, %2782
  %2904 = fsub fast float %2901, %2783
  %2905 = fsub fast float %2902, %2784
  %2906 = fmul fast float %2903, %2807
  %2907 = fmul fast float %2904, %2807
  %2908 = fmul fast float %2905, %2807
  %2909 = fadd fast float %2906, %2782
  %2910 = fadd fast float %2907, %2783
  %2911 = fadd fast float %2908, %2784
  %2912 = fadd fast float %2829, %2793
  %2913 = fsub fast float %2912, %2846
  %2914 = call float @dx.op.unary.f32(i32 7, float %2913)  ; Saturate(value)
  %2915 = fsub fast float %2914, %2793
  %2916 = fmul fast float %2915, %2807
  %2917 = fadd fast float %2916, %2793
  br label %2971

; <label>:2918                                    ; preds = %2806
  %2919 = and i32 %2809, 134217728
  %2920 = icmp eq i32 %2919, 0
  br i1 %2920, label %2955, label %2921

; <label>:2921                                    ; preds = %2918
  %2922 = call float @dx.op.unary.f32(i32 24, float %462)  ; Sqrt(value)
  %2923 = call float @dx.op.unary.f32(i32 24, float %466)  ; Sqrt(value)
  %2924 = call float @dx.op.unary.f32(i32 24, float %470)  ; Sqrt(value)
  %2925 = fadd fast float %2922, -5.000000e-01
  %2926 = fadd fast float %2923, -5.000000e-01
  %2927 = fadd fast float %2924, -5.000000e-01
  %2928 = fmul fast float %2925, %2807
  %2929 = fmul fast float %2926, %2807
  %2930 = fmul fast float %2927, %2807
  %2931 = fadd fast float %2928, 5.000000e-01
  %2932 = fadd fast float %2929, 5.000000e-01
  %2933 = fadd fast float %2930, 5.000000e-01
  %2934 = call float @dx.op.unary.f32(i32 24, float %2782)  ; Sqrt(value)
  %2935 = call float @dx.op.unary.f32(i32 24, float %2783)  ; Sqrt(value)
  %2936 = call float @dx.op.unary.f32(i32 24, float %2784)  ; Sqrt(value)
  %2937 = fmul fast float %2931, 2.000000e+00
  %2938 = fsub fast float 1.000000e+00, %2937
  %2939 = fmul fast float %2938, %2934
  %2940 = fadd fast float %2939, %2937
  %2941 = fmul fast float %2940, %2934
  %2942 = fmul fast float %2932, 2.000000e+00
  %2943 = fsub fast float 1.000000e+00, %2942
  %2944 = fmul fast float %2943, %2935
  %2945 = fadd fast float %2944, %2942
  %2946 = fmul fast float %2945, %2935
  %2947 = fmul fast float %2933, 2.000000e+00
  %2948 = fsub fast float 1.000000e+00, %2947
  %2949 = fmul fast float %2948, %2936
  %2950 = fadd fast float %2949, %2947
  %2951 = fmul fast float %2950, %2936
  %2952 = fmul fast float %2941, %2941
  %2953 = fmul fast float %2946, %2946
  %2954 = fmul fast float %2951, %2951
  br label %2971

; <label>:2955                                    ; preds = %2918
  %2956 = fmul fast float %462, %462
  %2957 = fmul fast float %466, %466
  %2958 = fmul fast float %470, %470
  %2959 = fadd fast float %2956, -1.000000e+00
  %2960 = fadd fast float %2957, -1.000000e+00
  %2961 = fadd fast float %2958, -1.000000e+00
  %2962 = fmul fast float %2807, %2959
  %2963 = fmul fast float %2807, %2960
  %2964 = fmul fast float %2807, %2961
  %2965 = fadd fast float %2962, 1.000000e+00
  %2966 = fadd fast float %2963, 1.000000e+00
  %2967 = fadd fast float %2964, 1.000000e+00
  %2968 = fmul fast float %2965, %2782
  %2969 = fmul fast float %2966, %2783
  %2970 = fmul fast float %2967, %2784
  br label %2971

; <label>:2971                                    ; preds = %2955, %2921, %2812, %2768
  %2972 = phi float [ %2917, %2812 ], [ %2793, %2921 ], [ %2793, %2955 ], [ 0x3FA23C0BE0000000, %2768 ]
  %2973 = phi float [ %2909, %2812 ], [ %2952, %2921 ], [ %2968, %2955 ], [ 1.000000e+00, %2768 ]
  %2974 = phi float [ %2910, %2812 ], [ %2953, %2921 ], [ %2969, %2955 ], [ 1.000000e+00, %2768 ]
  %2975 = phi float [ %2911, %2812 ], [ %2954, %2921 ], [ %2970, %2955 ], [ 1.000000e+00, %2768 ]
  %2976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2977 = extractvalue %dx.types.CBufRet.i32 %2976, 1
  %2978 = and i32 %2977, 1
  %2979 = icmp ne i32 %2978, 0
  %2980 = add i32 %61, 356
  %2981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.i32 %2981, 0
  %2983 = and i32 %2982, 32
  %2984 = icmp ne i32 %2983, 0
  %2985 = and i1 %2979, %2984
  %2986 = select i1 %2985, float 1.000000e+00, float %2973
  %2987 = select i1 %2985, float 0x3FD3333340000000, float %2974
  %2988 = select i1 %2985, float 0x3FD3333340000000, float %2975
  %2989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.i32 %2989, 0
  %2991 = and i32 %2990, 32
  %2992 = icmp eq i32 %2991, 0
  br i1 %2992, label %3065, label %2993

; <label>:2993                                    ; preds = %2971
  %2994 = add i32 %61, 140
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = add i32 %61, 452
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = add i32 %2999, 0
  %3001 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3000, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3002 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3001, %dx.types.Handle %112, float %2693, float %2694, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3003 = extractvalue %dx.types.ResRet.f32 %3002, 0
  %3004 = extractvalue %dx.types.ResRet.f32 %3002, 1
  %3005 = extractvalue %dx.types.ResRet.f32 %3002, 2
  %3006 = extractvalue %dx.types.ResRet.f32 %3002, 3
  %3007 = and i32 %2996, 255
  %3008 = uitofp i32 %3007 to float
  %3009 = lshr i32 %2996, 8
  %3010 = and i32 %3009, 255
  %3011 = uitofp i32 %3010 to float
  %3012 = lshr i32 %2996, 16
  %3013 = and i32 %3012, 255
  %3014 = uitofp i32 %3013 to float
  %3015 = fmul fast float %3014, 0x3F70101000000000
  %3016 = fmul fast float %3003, %3008
  %3017 = fadd fast float %3016, %3011
  %3018 = fmul fast float %3017, 0x3F70101000000000
  %3019 = fadd fast float %3004, -5.000000e-01
  %3020 = fadd fast float %3006, -5.000000e-01
  %3021 = fmul fast float %3019, %3015
  %3022 = fmul fast float %3020, %3015
  %3023 = fadd fast float %3021, 5.000000e-01
  %3024 = fadd fast float %3022, 5.000000e-01
  %3025 = fmul fast float %3023, 2.000000e+00
  %3026 = fadd fast float %3025, -1.000000e+00
  %3027 = fmul fast float %3024, 2.000000e+00
  %3028 = fadd fast float %3027, -1.000000e+00
  %3029 = fadd fast float %3026, %3028
  %3030 = fmul fast float %3029, 5.000000e-01
  %3031 = fsub fast float %3026, %3028
  %3032 = fmul fast float %3031, 5.000000e-01
  %3033 = call float @dx.op.unary.f32(i32 6, float %3030)  ; FAbs(value)
  %3034 = fsub fast float 1.000000e+00, %3033
  %3035 = call float @dx.op.unary.f32(i32 6, float %3032)  ; FAbs(value)
  %3036 = fsub fast float %3034, %3035
  %3037 = call float @dx.op.dot3.f32(i32 55, float %3030, float %3032, float %3036, float %3030, float %3032, float %3036)  ; Dot3(ax,ay,az,bx,by,bz)
  %3038 = call float @dx.op.unary.f32(i32 25, float %3037)  ; Rsqrt(value)
  %3039 = fmul fast float %3030, %3038
  %3040 = fmul fast float %3032, %3038
  %3041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3042 = extractvalue %dx.types.ResRet.i32 %3041, 0
  %3043 = and i32 %3042, 67108864
  %3044 = icmp eq i32 %3043, 0
  br i1 %3044, label %3061, label %3045

; <label>:3045                                    ; preds = %2993
  %3046 = add i32 %61, 328
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3046, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = and i32 %3048, 65535
  %3050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3049)  ; LegacyF16ToF32(value)
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = and i32 %3052, 65535
  %3054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3053)  ; LegacyF16ToF32(value)
  %3055 = lshr i32 %3048, 16
  %3056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3055)  ; LegacyF16ToF32(value)
  %3057 = fsub fast float %3018, %3056
  %3058 = fmul fast float %3057, %3050
  %3059 = fadd fast float %3058, %3054
  %3060 = call float @dx.op.unary.f32(i32 7, float %3059)  ; Saturate(value)
  br label %3061

; <label>:3061                                    ; preds = %3045, %2993
  %3062 = phi float [ %3060, %3045 ], [ %3018, %2993 ]
  %3063 = call float @dx.op.dot2.f32(i32 54, float %3039, float %3040, float %2597, float %2598)  ; Dot2(ax,ay,bx,by)
  %3064 = call float @dx.op.dot2.f32(i32 54, float %3039, float %3040, float %2599, float %2600)  ; Dot2(ax,ay,bx,by)
  br label %3065

; <label>:3065                                    ; preds = %3061, %2971
  %3066 = phi float [ %3062, %3061 ], [ 0x3FD6666660000000, %2971 ]
  %3067 = phi float [ %3063, %3061 ], [ 0.000000e+00, %2971 ]
  %3068 = phi float [ %3064, %3061 ], [ 0.000000e+00, %2971 ]
  %3069 = phi float [ %3005, %3061 ], [ 1.000000e+00, %2971 ]
  %3070 = add i32 %61, 208
  %3071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.i32 %3071, 0
  %3073 = lshr i32 %3072, 22
  %3074 = shl nuw nsw i32 %3073, 5
  %3075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3074)  ; LegacyF16ToF32(value)
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = and i32 %3077, 64
  %3079 = icmp eq i32 %3078, 0
  br i1 %3079, label %3113, label %3080

; <label>:3080                                    ; preds = %3065
  %3081 = add i32 %61, 468
  %3082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3083 = extractvalue %dx.types.ResRet.i32 %3082, 0
  %3084 = add i32 %3083, 0
  %3085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3084, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3087 = extractvalue %dx.types.ResRet.i32 %3086, 0
  %3088 = and i32 %3087, 131072
  %3089 = icmp eq i32 %3088, 0
  %3090 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3085, %dx.types.Handle %112, float %2693, float %2694, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3091 = extractvalue %dx.types.ResRet.f32 %3090, 0
  %3092 = extractvalue %dx.types.ResRet.f32 %3090, 1
  %3093 = extractvalue %dx.types.ResRet.f32 %3090, 2
  %3094 = fmul fast float %3091, %450
  %3095 = fmul fast float %3092, %453
  %3096 = fmul fast float %3093, %456
  br i1 %3089, label %3103, label %3097

; <label>:3097                                    ; preds = %3080
  %3098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3099 = extractvalue %dx.types.CBufRet.f32 %3098, 0
  %3100 = fmul fast float %3099, %3094
  %3101 = fmul fast float %3099, %3095
  %3102 = fmul fast float %3099, %3096
  br label %3103

; <label>:3103                                    ; preds = %3097, %3080
  %3104 = phi float [ %3100, %3097 ], [ %3094, %3080 ]
  %3105 = phi float [ %3101, %3097 ], [ %3095, %3080 ]
  %3106 = phi float [ %3102, %3097 ], [ %3096, %3080 ]
  %3107 = fmul fast float %3104, %3075
  %3108 = select i1 %307, float %3107, float %3104
  %3109 = call float @dx.op.dot3.f32(i32 55, float %3108, float %3105, float %3106, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3110 = select i1 %307, float 0.000000e+00, float %3104
  %3111 = select i1 %307, float %3109, float %3105
  %3112 = select i1 %307, float 0.000000e+00, float %3106
  br label %3113

; <label>:3113                                    ; preds = %3103, %3065
  %3114 = phi float [ %3110, %3103 ], [ 0.000000e+00, %3065 ]
  %3115 = phi float [ %3111, %3103 ], [ 0.000000e+00, %3065 ]
  %3116 = phi float [ %3112, %3103 ], [ 0.000000e+00, %3065 ]
  %3117 = add i32 %61, 144
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = and i32 %3119, 255
  %3121 = uitofp i32 %3120 to float
  %3122 = lshr i32 %3119, 8
  %3123 = and i32 %3122, 255
  %3124 = uitofp i32 %3123 to float
  %3125 = call float @dx.op.dot3.f32(i32 55, float %2986, float %2987, float %2988, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3126 = fmul fast float %3124, %3125
  %3127 = fadd fast float %3126, %3121
  %3128 = fmul fast float %3127, 0x3F70101020000000
  %3129 = call float @dx.op.unary.f32(i32 7, float %3128)  ; Saturate(value)
  br i1 %2585, label %3130, label %3138

; <label>:3130                                    ; preds = %3113
  %3131 = fsub fast float 1.000000e+00, %2766
  %3132 = fmul fast float %3131, %2574
  %3133 = fmul fast float %3131, %2575
  %3134 = fmul fast float %3131, %2576
  %3135 = fmul fast float %3131, %2577
  %3136 = fmul fast float %3131, %2578
  %3137 = fmul fast float %3131, %2579
  br label %3138

; <label>:3138                                    ; preds = %3130, %3113
  %3139 = phi float [ %3132, %3130 ], [ %2574, %3113 ]
  %3140 = phi float [ %3133, %3130 ], [ %2575, %3113 ]
  %3141 = phi float [ %3134, %3130 ], [ %2576, %3113 ]
  %3142 = phi float [ %3135, %3130 ], [ %2577, %3113 ]
  %3143 = phi float [ %3136, %3130 ], [ %2578, %3113 ]
  %3144 = phi float [ %3137, %3130 ], [ %2579, %3113 ]
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = and i32 %3146, 3
  %3148 = icmp eq i32 %3147, 3
  br i1 %3148, label %3227, label %3149

; <label>:3149                                    ; preds = %3138
  %3150 = and i32 %3146, 16
  %3151 = icmp ne i32 %3150, 0
  %3152 = select i1 %3151, float %2766, float 0.000000e+00
  %3153 = icmp eq i32 %3147, 0
  br i1 %3153, label %3154, label %3182

; <label>:3154                                    ; preds = %3149
  %3155 = and i32 %3146, 64
  %3156 = icmp ne i32 %3155, 0
  %3157 = select i1 %3156, float %2766, float 0.000000e+00
  %3158 = fsub fast float %2986, %3139
  %3159 = fsub fast float %2987, %3140
  %3160 = fsub fast float %2988, %3141
  %3161 = fmul fast float %3152, %3158
  %3162 = fmul fast float %3152, %3159
  %3163 = fmul fast float %3152, %3160
  %3164 = fadd fast float %3161, %3139
  %3165 = fadd fast float %3162, %3140
  %3166 = fadd fast float %3163, %3141
  %3167 = fsub fast float %2972, %2580
  %3168 = fmul fast float %3152, %3167
  %3169 = fadd fast float %3168, %2580
  %3170 = fsub fast float %3114, %3142
  %3171 = fsub fast float %3115, %3143
  %3172 = fsub fast float %3116, %3144
  %3173 = fmul fast float %3157, %3170
  %3174 = fmul fast float %3157, %3171
  %3175 = fmul fast float %3157, %3172
  %3176 = fadd fast float %3173, %3142
  %3177 = fadd fast float %3174, %3143
  %3178 = fadd fast float %3175, %3144
  %3179 = fsub fast float %3129, %2583
  %3180 = fmul fast float %3152, %3179
  %3181 = fadd fast float %3180, %2583
  br label %3227

; <label>:3182                                    ; preds = %3149
  %3183 = icmp eq i32 %3147, 1
  br i1 %3183, label %3184, label %3197

; <label>:3184                                    ; preds = %3182
  %3185 = fadd fast float %2986, -1.000000e+00
  %3186 = fadd fast float %2987, -1.000000e+00
  %3187 = fadd fast float %2988, -1.000000e+00
  %3188 = fmul fast float %3152, %3185
  %3189 = fmul fast float %3152, %3186
  %3190 = fmul fast float %3152, %3187
  %3191 = fadd fast float %3188, 1.000000e+00
  %3192 = fadd fast float %3189, 1.000000e+00
  %3193 = fadd fast float %3190, 1.000000e+00
  %3194 = fmul fast float %3191, %3139
  %3195 = fmul fast float %3192, %3140
  %3196 = fmul fast float %3193, %3141
  br label %3227

; <label>:3197                                    ; preds = %3182
  %3198 = icmp eq i32 %3147, 2
  br i1 %3198, label %3199, label %3227

; <label>:3199                                    ; preds = %3197
  %3200 = call float @dx.op.unary.f32(i32 24, float %2986)  ; Sqrt(value)
  %3201 = call float @dx.op.unary.f32(i32 24, float %2987)  ; Sqrt(value)
  %3202 = call float @dx.op.unary.f32(i32 24, float %2988)  ; Sqrt(value)
  %3203 = fadd fast float %3200, -5.000000e-01
  %3204 = fadd fast float %3201, -5.000000e-01
  %3205 = fadd fast float %3202, -5.000000e-01
  %3206 = fmul fast float %3203, %3152
  %3207 = fmul fast float %3204, %3152
  %3208 = fmul fast float %3205, %3152
  %3209 = fadd fast float %3206, 5.000000e-01
  %3210 = fadd fast float %3207, 5.000000e-01
  %3211 = fadd fast float %3208, 5.000000e-01
  %3212 = fmul fast float %3209, 2.000000e+00
  %3213 = fsub fast float 1.000000e+00, %3212
  %3214 = fmul fast float %3213, %3139
  %3215 = fadd fast float %3214, %3212
  %3216 = fmul fast float %3215, %3139
  %3217 = fmul fast float %3210, 2.000000e+00
  %3218 = fsub fast float 1.000000e+00, %3217
  %3219 = fmul fast float %3218, %3140
  %3220 = fadd fast float %3219, %3217
  %3221 = fmul fast float %3220, %3140
  %3222 = fmul fast float %3211, 2.000000e+00
  %3223 = fsub fast float 1.000000e+00, %3222
  %3224 = fmul fast float %3223, %3141
  %3225 = fadd fast float %3224, %3222
  %3226 = fmul fast float %3225, %3141
  br label %3227

; <label>:3227                                    ; preds = %3199, %3197, %3184, %3154, %3138
  %3228 = phi float [ %3139, %3138 ], [ %3216, %3199 ], [ %3139, %3197 ], [ %3194, %3184 ], [ %3164, %3154 ]
  %3229 = phi float [ %3140, %3138 ], [ %3221, %3199 ], [ %3140, %3197 ], [ %3195, %3184 ], [ %3165, %3154 ]
  %3230 = phi float [ %3141, %3138 ], [ %3226, %3199 ], [ %3141, %3197 ], [ %3196, %3184 ], [ %3166, %3154 ]
  %3231 = phi float [ %3142, %3138 ], [ %3142, %3199 ], [ %3142, %3197 ], [ %3142, %3184 ], [ %3176, %3154 ]
  %3232 = phi float [ %3143, %3138 ], [ %3143, %3199 ], [ %3143, %3197 ], [ %3143, %3184 ], [ %3177, %3154 ]
  %3233 = phi float [ %3144, %3138 ], [ %3144, %3199 ], [ %3144, %3197 ], [ %3144, %3184 ], [ %3178, %3154 ]
  %3234 = phi float [ %2580, %3138 ], [ %2580, %3199 ], [ %2580, %3197 ], [ %2580, %3184 ], [ %3169, %3154 ]
  %3235 = phi float [ %2583, %3138 ], [ %2583, %3199 ], [ %2583, %3197 ], [ %2583, %3184 ], [ %3181, %3154 ]
  %3236 = and i32 %3146, 12
  %3237 = icmp eq i32 %3236, 12
  br i1 %3237, label %3310, label %3238

; <label>:3238                                    ; preds = %3227
  %3239 = and i32 %3146, 2097184
  %3240 = icmp eq i32 %3239, 2097184
  %3241 = select i1 %3240, float %2766, float 0.000000e+00
  %3242 = and i32 %3146, 4194336
  %3243 = icmp eq i32 %3242, 4194336
  %3244 = select i1 %3243, float %2766, float 0.000000e+00
  %3245 = and i32 %3146, 8388640
  %3246 = icmp eq i32 %3245, 8388640
  %3247 = select i1 %3246, float %2766, float 0.000000e+00
  %3248 = icmp eq i32 %3236, 0
  br i1 %3248, label %3249, label %3262

; <label>:3249                                    ; preds = %3238
  %3250 = fsub fast float %3067, %2572
  %3251 = fsub fast float %3068, %2573
  %3252 = fmul fast float %3241, %3250
  %3253 = fmul fast float %3241, %3251
  %3254 = fadd fast float %3252, %2572
  %3255 = fadd fast float %3253, %2573
  %3256 = fsub fast float %3069, %2582
  %3257 = fmul fast float %3244, %3256
  %3258 = fadd fast float %3257, %2582
  %3259 = fsub fast float %3066, %2581
  %3260 = fmul fast float %3247, %3259
  %3261 = fadd fast float %3260, %2581
  br label %3310

; <label>:3262                                    ; preds = %3238
  %3263 = icmp eq i32 %3236, 4
  br i1 %3263, label %3264, label %3296

; <label>:3264                                    ; preds = %3262
  %3265 = fmul fast float %3241, %3067
  %3266 = fmul fast float %3241, %3068
  %3267 = fadd fast float %3265, %2572
  %3268 = fadd fast float %3266, %2573
  %3269 = call float @dx.op.binary.f32(i32 36, float %2582, float %3069)  ; FMin(a,b)
  %3270 = fsub fast float %3269, %2582
  %3271 = fmul fast float %3270, %3244
  %3272 = fadd fast float %3271, %2582
  %3273 = fadd fast float %3066, %2581
  %3274 = fmul fast float %3273, 0x3FF337FAE0000000
  %3275 = fmul fast float %2581, %2581
  %3276 = fmul fast float %3066, %3066
  %3277 = fadd fast float %3276, %3275
  %3278 = fmul fast float %3277, 0x3FE5152B00000000
  %3279 = fmul fast float %2581, 0xBFCC1F85E0000000
  %3280 = fmul fast float %3279, %3066
  %3281 = fadd fast float %3280, 0xBFE1363700000000
  %3282 = fadd fast float %3281, %3274
  %3283 = fsub fast float %3282, %3278
  %3284 = fmul fast float %3273, 0x3FBA6F0D00000000
  %3285 = fmul fast float %3277, 0x3FD0432880000000
  %3286 = fmul fast float %2581, 0xBFEF110800000000
  %3287 = fmul fast float %3286, %3066
  %3288 = fadd fast float %3287, 1.000000e+00
  %3289 = fsub fast float %3288, %3284
  %3290 = fadd fast float %3289, %3285
  %3291 = fdiv fast float %3283, %3290
  %3292 = call float @dx.op.unary.f32(i32 7, float %3291)  ; Saturate(value)
  %3293 = fsub fast float %3292, %2581
  %3294 = fmul fast float %3293, %3247
  %3295 = fadd fast float %3294, %2581
  br label %3310

; <label>:3296                                    ; preds = %3262
  %3297 = icmp eq i32 %3236, 8
  br i1 %3297, label %3298, label %3310

; <label>:3298                                    ; preds = %3296
  %3299 = fmul fast float %3241, %3067
  %3300 = fmul fast float %3241, %3068
  %3301 = fadd fast float %3299, %2572
  %3302 = fadd fast float %3300, %2573
  %3303 = call float @dx.op.binary.f32(i32 36, float %2582, float %3069)  ; FMin(a,b)
  %3304 = fsub fast float %3303, %2582
  %3305 = fmul fast float %3304, %3244
  %3306 = fadd fast float %3305, %2582
  %3307 = fsub fast float %3066, %2581
  %3308 = fmul fast float %3247, %3307
  %3309 = fadd fast float %3308, %2581
  br label %3310

; <label>:3310                                    ; preds = %3298, %3296, %3264, %3249, %3227, %2765, %2584, %2571
  %3311 = phi float [ %2572, %3227 ], [ %2572, %2765 ], [ %2572, %2571 ], [ %2572, %2584 ], [ %3254, %3249 ], [ %3267, %3264 ], [ %2572, %3296 ], [ %3301, %3298 ]
  %3312 = phi float [ %2573, %3227 ], [ %2573, %2765 ], [ %2573, %2571 ], [ %2573, %2584 ], [ %3255, %3249 ], [ %3268, %3264 ], [ %2573, %3296 ], [ %3302, %3298 ]
  %3313 = phi float [ %3228, %3227 ], [ %2574, %2765 ], [ %2574, %2571 ], [ %2574, %2584 ], [ %3228, %3249 ], [ %3228, %3264 ], [ %3228, %3296 ], [ %3228, %3298 ]
  %3314 = phi float [ %3229, %3227 ], [ %2575, %2765 ], [ %2575, %2571 ], [ %2575, %2584 ], [ %3229, %3249 ], [ %3229, %3264 ], [ %3229, %3296 ], [ %3229, %3298 ]
  %3315 = phi float [ %3230, %3227 ], [ %2576, %2765 ], [ %2576, %2571 ], [ %2576, %2584 ], [ %3230, %3249 ], [ %3230, %3264 ], [ %3230, %3296 ], [ %3230, %3298 ]
  %3316 = phi float [ %3231, %3227 ], [ %2577, %2765 ], [ %2577, %2571 ], [ %2577, %2584 ], [ %3231, %3249 ], [ %3231, %3264 ], [ %3231, %3296 ], [ %3231, %3298 ]
  %3317 = phi float [ %3232, %3227 ], [ %2578, %2765 ], [ %2578, %2571 ], [ %2578, %2584 ], [ %3232, %3249 ], [ %3232, %3264 ], [ %3232, %3296 ], [ %3232, %3298 ]
  %3318 = phi float [ %3233, %3227 ], [ %2579, %2765 ], [ %2579, %2571 ], [ %2579, %2584 ], [ %3233, %3249 ], [ %3233, %3264 ], [ %3233, %3296 ], [ %3233, %3298 ]
  %3319 = phi float [ %3234, %3227 ], [ %2580, %2765 ], [ %2580, %2571 ], [ %2580, %2584 ], [ %3234, %3249 ], [ %3234, %3264 ], [ %3234, %3296 ], [ %3234, %3298 ]
  %3320 = phi float [ %2581, %3227 ], [ %2581, %2765 ], [ %2581, %2571 ], [ %2581, %2584 ], [ %3261, %3249 ], [ %3295, %3264 ], [ %2581, %3296 ], [ %3309, %3298 ]
  %3321 = phi float [ %2582, %3227 ], [ %2582, %2765 ], [ %2582, %2571 ], [ %2582, %2584 ], [ %3258, %3249 ], [ %3272, %3264 ], [ %2582, %3296 ], [ %3306, %3298 ]
  %3322 = phi float [ %3235, %3227 ], [ %2583, %2765 ], [ %2583, %2571 ], [ %2583, %2584 ], [ %3235, %3249 ], [ %3235, %3264 ], [ %3235, %3296 ], [ %3235, %3298 ]
  %3323 = add i32 %61, 408
  %3324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3323, i32 undef)  ; BufferLoad(srv,index,wot)
  %3325 = extractvalue %dx.types.ResRet.i32 %3324, 0
  %3326 = extractvalue %dx.types.ResRet.i32 %3324, 1
  %3327 = bitcast i32 %3325 to float
  %3328 = bitcast i32 %3326 to float
  %3329 = fcmp fast oge float %3327, 0.000000e+00
  %3330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3331 = extractvalue %dx.types.CBufRet.f32 %3330, 0
  %3332 = select i1 %3329, float %3327, float %3331
  %3333 = fadd fast float %3332, %217
  %3334 = fmul fast float %3328, %218
  %3335 = add i32 %61, 504
  %3336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3335, i32 undef)  ; BufferLoad(srv,index,wot)
  %3337 = extractvalue %dx.types.ResRet.i32 %3336, 0
  %3338 = add i32 %3337, 0
  %3339 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3338, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3340 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3339, %dx.types.Handle %113, float %94, float %95, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3341 = extractvalue %dx.types.ResRet.f32 %3340, 0
  %3342 = fmul fast float %3334, %3341
  %3343 = fadd fast float %3333, %3342
  %3344 = and i32 %209, 65535
  %3345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3344)  ; LegacyF16ToF32(value)
  %3346 = lshr i32 %209, 16
  %3347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3346)  ; LegacyF16ToF32(value)
  %3348 = and i32 %210, 65535
  %3349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3348)  ; LegacyF16ToF32(value)
  %3350 = fmul fast float %3345, %3313
  %3351 = fmul fast float %3347, %3314
  %3352 = fmul fast float %3349, %3315
  %3353 = shl i32 %211, 4
  %3354 = and i32 %3353, 32752
  %3355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3354)  ; LegacyF16ToF32(value)
  %3356 = lshr i32 %211, 7
  %3357 = and i32 %3356, 32752
  %3358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3357)  ; LegacyF16ToF32(value)
  %3359 = lshr i32 %211, 22
  %3360 = shl nuw nsw i32 %3359, 5
  %3361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3360)  ; LegacyF16ToF32(value)
  %3362 = and i32 %212, 65535
  %3363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3362)  ; LegacyF16ToF32(value)
  %3364 = fmul fast float %3355, %3316
  %3365 = fmul fast float %3364, %3363
  %3366 = fmul fast float %3358, %3317
  %3367 = fmul fast float %3366, %3363
  %3368 = fmul fast float %3361, %3318
  %3369 = fmul fast float %3368, %3363
  %3370 = call float @dx.op.dot2.f32(i32 54, float %3311, float %3312, float %3311, float %3312)  ; Dot2(ax,ay,bx,by)
  %3371 = fmul fast float %3370, 0x3FE3333340000000
  %3372 = fsub fast float 1.000000e+00, %3371
  %3373 = call float @dx.op.dot3.f32(i32 55, float %3311, float %3312, float %3372, float %3311, float %3312, float %3372)  ; Dot3(ax,ay,az,bx,by,bz)
  %3374 = call float @dx.op.unary.f32(i32 25, float %3373)  ; Rsqrt(value)
  %3375 = fmul fast float %3374, %3311
  %3376 = fmul fast float %3374, %3312
  %3377 = fmul fast float %3372, %3374
  %3378 = fmul fast float %3377, %123
  %3379 = fmul fast float %3377, %124
  %3380 = fmul fast float %3377, %125
  %3381 = fmul fast float %3375, %87
  %3382 = fmul fast float %3375, %88
  %3383 = fmul fast float %3375, %89
  %3384 = fadd fast float %3378, %3381
  %3385 = fadd fast float %3379, %3382
  %3386 = fadd fast float %3380, %3383
  %3387 = fmul fast float %135, %3376
  %3388 = fmul fast float %136, %3376
  %3389 = fmul fast float %137, %3376
  %3390 = fadd fast float %3384, %3387
  %3391 = fadd fast float %3385, %3388
  %3392 = fadd fast float %3386, %3389
  %3393 = call float @dx.op.dot3.f32(i32 55, float %3390, float %3391, float %3392, float %3390, float %3391, float %3392)  ; Dot3(ax,ay,az,bx,by,bz)
  %3394 = call float @dx.op.unary.f32(i32 25, float %3393)  ; Rsqrt(value)
  %3395 = fmul fast float %3390, %3394
  %3396 = fmul fast float %3391, %3394
  %3397 = fmul fast float %3392, %3394
  %3398 = icmp eq i32 %63, 65535
  br i1 %3398, label %3913, label %3399

; <label>:3399                                    ; preds = %3310
  %3400 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3401 = call float @dx.op.unary.f32(i32 83, float %65)  ; DerivCoarseX(value)
  %3402 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %3403 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3404 = call float @dx.op.unary.f32(i32 84, float %65)  ; DerivCoarseY(value)
  %3405 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %3406 = fadd fast float %3400, %64
  %3407 = fadd fast float %3401, %65
  %3408 = fadd fast float %3402, %66
  %3409 = fadd fast float %3403, %64
  %3410 = fadd fast float %3404, %65
  %3411 = fadd fast float %3405, %66
  %3412 = mul i32 %63, 48
  %3413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.f32 %3413, 0
  %3415 = extractvalue %dx.types.ResRet.f32 %3413, 1
  %3416 = extractvalue %dx.types.ResRet.f32 %3413, 2
  %3417 = add i32 %3412, 16
  %3418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3417, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.f32 %3418, 0
  %3420 = extractvalue %dx.types.ResRet.f32 %3418, 1
  %3421 = extractvalue %dx.types.ResRet.f32 %3418, 2
  %3422 = add i32 %3412, 32
  %3423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3422, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.f32 %3423, 0
  %3425 = extractvalue %dx.types.ResRet.f32 %3423, 1
  %3426 = extractvalue %dx.types.ResRet.f32 %3423, 2
  %3427 = extractvalue %dx.types.ResRet.f32 %3423, 3
  %3428 = bitcast float %3427 to i32
  %3429 = fmul fast float %3414, %64
  %3430 = fmul fast float %3415, %65
  %3431 = fmul fast float %3416, %66
  %3432 = fsub fast float %3429, %3419
  %3433 = fsub fast float %3430, %3420
  %3434 = fsub fast float %3431, %3421
  %3435 = call float @dx.op.unary.f32(i32 7, float %3432)  ; Saturate(value)
  %3436 = call float @dx.op.unary.f32(i32 7, float %3433)  ; Saturate(value)
  %3437 = call float @dx.op.unary.f32(i32 7, float %3434)  ; Saturate(value)
  %3438 = fmul fast float %3435, %3424
  %3439 = fmul fast float %3436, %3425
  %3440 = fmul fast float %3437, %3426
  %3441 = fadd fast float %3424, -1.000000e+00
  %3442 = fadd fast float %3425, -1.000000e+00
  %3443 = fadd fast float %3426, -1.000000e+00
  %3444 = call float @dx.op.unary.f32(i32 27, float %3438)  ; Round_ni(value)
  %3445 = call float @dx.op.unary.f32(i32 27, float %3439)  ; Round_ni(value)
  %3446 = call float @dx.op.unary.f32(i32 27, float %3440)  ; Round_ni(value)
  %3447 = call float @dx.op.binary.f32(i32 36, float %3444, float %3441)  ; FMin(a,b)
  %3448 = call float @dx.op.binary.f32(i32 36, float %3445, float %3442)  ; FMin(a,b)
  %3449 = call float @dx.op.binary.f32(i32 36, float %3446, float %3443)  ; FMin(a,b)
  %3450 = fmul fast float %3449, %3425
  %3451 = fadd fast float %3450, %3448
  %3452 = fmul fast float %3451, %3424
  %3453 = fadd fast float %3452, %3447
  %3454 = fptosi float %3453 to i32
  %3455 = add nsw i32 %3454, %3428
  %3456 = shl nsw i32 %3455, 2
  %3457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.i32 %3457, 0
  %3459 = lshr i32 %3458, 16
  %3460 = icmp eq i32 %3459, 0
  br i1 %3460, label %3882, label %3461

; <label>:3461                                    ; preds = %3399
  br label %3462

; <label>:3462                                    ; preds = %3583, %3461
  %3463 = phi i32 [ %3485, %3583 ], [ %3459, %3461 ]
  %3464 = phi float [ %3584, %3583 ], [ 0.000000e+00, %3461 ]
  %3465 = phi float [ %3585, %3583 ], [ %3343, %3461 ]
  %3466 = phi float [ %3586, %3583 ], [ %3322, %3461 ]
  %3467 = phi float [ %3587, %3583 ], [ 0.000000e+00, %3461 ]
  %3468 = phi float [ %3588, %3583 ], [ 0.000000e+00, %3461 ]
  %3469 = phi float [ %3589, %3583 ], [ %3365, %3461 ]
  %3470 = phi float [ %3590, %3583 ], [ %3367, %3461 ]
  %3471 = phi float [ %3591, %3583 ], [ %3369, %3461 ]
  %3472 = phi float [ %3592, %3583 ], [ %3395, %3461 ]
  %3473 = phi float [ %3593, %3583 ], [ %3396, %3461 ]
  %3474 = phi float [ %3594, %3583 ], [ %3397, %3461 ]
  %3475 = phi float [ %3595, %3583 ], [ %3321, %3461 ]
  %3476 = phi float [ %3596, %3583 ], [ %3320, %3461 ]
  %3477 = phi float [ %3597, %3583 ], [ 0.000000e+00, %3461 ]
  %3478 = phi float [ %3598, %3583 ], [ %3319, %3461 ]
  %3479 = phi float [ %3599, %3583 ], [ %3350, %3461 ]
  %3480 = phi float [ %3600, %3583 ], [ %3351, %3461 ]
  %3481 = phi float [ %3601, %3583 ], [ %3352, %3461 ]
  %3482 = shl nuw nsw i32 %3463, 2
  %3483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3482, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.i32 %3483, 0
  %3485 = lshr i32 %3484, 16
  %3486 = shl i32 %3484, 8
  %3487 = and i32 %3486, 16776960
  %3488 = or i32 %3487, 48
  %3489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3488, i32 undef)  ; BufferLoad(srv,index,wot)
  %3490 = extractvalue %dx.types.ResRet.f32 %3489, 0
  %3491 = extractvalue %dx.types.ResRet.f32 %3489, 1
  %3492 = extractvalue %dx.types.ResRet.f32 %3489, 2
  %3493 = or i32 %3487, 64
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = extractvalue %dx.types.ResRet.i32 %3494, 1
  %3497 = or i32 %3487, 80
  %3498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3497, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.f32 %3498, 2
  %3500 = extractvalue %dx.types.ResRet.f32 %3498, 3
  %3501 = or i32 %3487, 96
  %3502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.f32 %3502, 0
  %3504 = extractvalue %dx.types.ResRet.f32 %3502, 1
  %3505 = extractvalue %dx.types.ResRet.f32 %3502, 2
  %3506 = extractvalue %dx.types.ResRet.f32 %3502, 3
  %3507 = or i32 %3487, 112
  %3508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3507, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.f32 %3508, 2
  %3510 = or i32 %3487, 128
  %3511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.ResRet.f32 %3511, 1
  %3514 = extractvalue %dx.types.ResRet.f32 %3511, 2
  %3515 = extractvalue %dx.types.ResRet.f32 %3511, 3
  %3516 = or i32 %3487, 144
  %3517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3516, i32 undef)  ; BufferLoad(srv,index,wot)
  %3518 = extractvalue %dx.types.ResRet.f32 %3517, 0
  %3519 = extractvalue %dx.types.ResRet.f32 %3517, 1
  %3520 = extractvalue %dx.types.ResRet.f32 %3517, 2
  %3521 = extractvalue %dx.types.ResRet.f32 %3517, 3
  %3522 = or i32 %3487, 160
  %3523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3522, i32 undef)  ; BufferLoad(srv,index,wot)
  %3524 = extractvalue %dx.types.ResRet.f32 %3523, 0
  %3525 = extractvalue %dx.types.ResRet.f32 %3523, 1
  %3526 = extractvalue %dx.types.ResRet.f32 %3523, 2
  %3527 = extractvalue %dx.types.ResRet.f32 %3523, 3
  %3528 = or i32 %3487, 192
  %3529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.i32 %3529, 0
  %3531 = or i32 %3487, 208
  %3532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3531, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.f32 %3532, 0
  %3534 = or i32 %3487, 248
  %3535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.f32 %3535, 0
  %3537 = extractvalue %dx.types.ResRet.f32 %3535, 1
  %3538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3487, i32 undef)  ; BufferLoad(srv,index,wot)
  %3539 = extractvalue %dx.types.ResRet.f32 %3538, 0
  %3540 = extractvalue %dx.types.ResRet.f32 %3538, 1
  %3541 = extractvalue %dx.types.ResRet.f32 %3538, 2
  %3542 = extractvalue %dx.types.ResRet.f32 %3538, 3
  %3543 = call float @dx.op.dot4.f32(i32 56, float %3539, float %3540, float %3541, float %3542, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3544 = or i32 %3487, 16
  %3545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.f32 %3545, 0
  %3547 = extractvalue %dx.types.ResRet.f32 %3545, 1
  %3548 = extractvalue %dx.types.ResRet.f32 %3545, 2
  %3549 = extractvalue %dx.types.ResRet.f32 %3545, 3
  %3550 = call float @dx.op.dot4.f32(i32 56, float %3546, float %3547, float %3548, float %3549, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3551 = or i32 %3487, 32
  %3552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3551, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.f32 %3552, 0
  %3554 = extractvalue %dx.types.ResRet.f32 %3552, 1
  %3555 = extractvalue %dx.types.ResRet.f32 %3552, 2
  %3556 = extractvalue %dx.types.ResRet.f32 %3552, 3
  %3557 = call float @dx.op.dot4.f32(i32 56, float %3553, float %3554, float %3555, float %3556, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3558 = call float @dx.op.unary.f32(i32 27, float %3543)  ; Round_ni(value)
  %3559 = call float @dx.op.unary.f32(i32 6, float %3558)  ; FAbs(value)
  %3560 = call float @dx.op.unary.f32(i32 27, float %3550)  ; Round_ni(value)
  %3561 = call float @dx.op.unary.f32(i32 6, float %3560)  ; FAbs(value)
  %3562 = call float @dx.op.unary.f32(i32 6, float %3557)  ; FAbs(value)
  %3563 = call float @dx.op.unary.f32(i32 27, float %3562)  ; Round_ni(value)
  %3564 = fadd fast float %3561, %3559
  %3565 = fadd fast float %3564, %3563
  %3566 = fcmp fast oeq float %3565, 0.000000e+00
  %3567 = call float @dx.op.dot4.f32(i32 56, float %3539, float %3540, float %3541, float %3542, float %3406, float %3407, float %3408, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3568 = call float @dx.op.dot4.f32(i32 56, float %3546, float %3547, float %3548, float %3549, float %3406, float %3407, float %3408, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3569 = call float @dx.op.dot4.f32(i32 56, float %3539, float %3540, float %3541, float %3542, float %3409, float %3410, float %3411, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3570 = call float @dx.op.dot4.f32(i32 56, float %3546, float %3547, float %3548, float %3549, float %3409, float %3410, float %3411, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3571 = fsub fast float %3567, %3543
  %3572 = fsub fast float %3569, %3543
  %3573 = fsub fast float %3568, %3550
  %3574 = fsub fast float %3570, %3550
  %3575 = call float @dx.op.dot3.f32(i32 55, float %3490, float %3491, float %3492, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %3576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3577 = extractvalue %dx.types.CBufRet.f32 %3576, 2
  %3578 = fadd fast float %3577, %3575
  %3579 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  %3580 = extractvalue %dx.types.CBufRet.f32 %3576, 0
  %3581 = fcmp fast ogt float %3579, %3580
  %3582 = and i1 %3566, %3581
  br i1 %3582, label %3603, label %3583

; <label>:3583                                    ; preds = %3868, %3686, %3603, %3462
  %3584 = phi float [ %3464, %3603 ], [ %3689, %3686 ], [ %3689, %3868 ], [ %3464, %3462 ]
  %3585 = phi float [ %3465, %3603 ], [ %3465, %3686 ], [ %3843, %3868 ], [ %3465, %3462 ]
  %3586 = phi float [ %3466, %3603 ], [ %3466, %3686 ], [ %3841, %3868 ], [ %3466, %3462 ]
  %3587 = phi float [ %3467, %3603 ], [ %3467, %3686 ], [ %3813, %3868 ], [ %3467, %3462 ]
  %3588 = phi float [ %3468, %3603 ], [ %3468, %3686 ], [ %3811, %3868 ], [ %3468, %3462 ]
  %3589 = phi float [ %3469, %3603 ], [ %3469, %3686 ], [ %3878, %3868 ], [ %3469, %3462 ]
  %3590 = phi float [ %3470, %3603 ], [ %3470, %3686 ], [ %3879, %3868 ], [ %3470, %3462 ]
  %3591 = phi float [ %3471, %3603 ], [ %3471, %3686 ], [ %3880, %3868 ], [ %3471, %3462 ]
  %3592 = phi float [ %3472, %3603 ], [ %3472, %3686 ], [ %3792, %3868 ], [ %3472, %3462 ]
  %3593 = phi float [ %3473, %3603 ], [ %3473, %3686 ], [ %3793, %3868 ], [ %3473, %3462 ]
  %3594 = phi float [ %3474, %3603 ], [ %3474, %3686 ], [ %3794, %3868 ], [ %3474, %3462 ]
  %3595 = phi float [ %3475, %3603 ], [ %3475, %3686 ], [ %3821, %3868 ], [ %3475, %3462 ]
  %3596 = phi float [ %3476, %3603 ], [ %3476, %3686 ], [ %3818, %3868 ], [ %3476, %3462 ]
  %3597 = phi float [ %3477, %3603 ], [ %3477, %3686 ], [ %3815, %3868 ], [ %3477, %3462 ]
  %3598 = phi float [ %3478, %3603 ], [ %3478, %3686 ], [ %3809, %3868 ], [ %3478, %3462 ]
  %3599 = phi float [ %3479, %3603 ], [ %3479, %3686 ], [ %3804, %3868 ], [ %3479, %3462 ]
  %3600 = phi float [ %3480, %3603 ], [ %3480, %3686 ], [ %3805, %3868 ], [ %3480, %3462 ]
  %3601 = phi float [ %3481, %3603 ], [ %3481, %3686 ], [ %3806, %3868 ], [ %3481, %3462 ]
  %3602 = icmp eq i32 %3485, 0
  br i1 %3602, label %3881, label %3462

; <label>:3603                                    ; preds = %3462
  %3604 = extractvalue %dx.types.ResRet.f32 %3489, 3
  %3605 = extractvalue %dx.types.ResRet.f32 %3508, 3
  %3606 = extractvalue %dx.types.ResRet.f32 %3508, 1
  %3607 = extractvalue %dx.types.ResRet.f32 %3508, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3498, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3498, 0
  %3610 = extractvalue %dx.types.ResRet.i32 %3494, 3
  %3611 = extractvalue %dx.types.ResRet.i32 %3494, 2
  %3612 = bitcast float %3604 to i32
  %3613 = add i32 %3610, 0
  %3614 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3613, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3615 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3616 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3614, %dx.types.Handle %3615, float %3543, float %3550, float undef, float undef, i32 0, i32 0, i32 undef, float %3571, float %3573, float undef, float %3572, float %3574, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3617 = extractvalue %dx.types.ResRet.f32 %3616, 0
  %3618 = fmul fast float %3617, %3609
  %3619 = fadd fast float %3618, %3608
  %3620 = call float @dx.op.unary.f32(i32 7, float %3619)  ; Saturate(value)
  %3621 = fmul fast float %3543, %3503
  %3622 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %3550, float %3621)  ; FMad(a,b,c)
  %3623 = fadd fast float %3622, %3607
  %3624 = fmul fast float %3543, %3505
  %3625 = call float @dx.op.tertiary.f32(i32 46, float %3506, float %3550, float %3624)  ; FMad(a,b,c)
  %3626 = fadd fast float %3625, %3606
  %3627 = fmul fast float %3571, %3503
  %3628 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %3573, float %3627)  ; FMad(a,b,c)
  %3629 = fmul fast float %3571, %3505
  %3630 = call float @dx.op.tertiary.f32(i32 46, float %3506, float %3573, float %3629)  ; FMad(a,b,c)
  %3631 = fmul fast float %3572, %3503
  %3632 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %3574, float %3631)  ; FMad(a,b,c)
  %3633 = fmul fast float %3572, %3505
  %3634 = call float @dx.op.tertiary.f32(i32 46, float %3506, float %3574, float %3633)  ; FMad(a,b,c)
  %3635 = add i32 %3611, 0
  %3636 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3635, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3637 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3636, %dx.types.Handle %3615, float %3623, float %3626, float undef, float undef, i32 0, i32 0, i32 undef, float %3628, float %3630, float undef, float %3632, float %3634, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3638 = extractvalue %dx.types.ResRet.f32 %3637, 0
  %3639 = and i32 %3612, 1024
  %3640 = icmp ne i32 %3639, 0
  %3641 = fcmp fast ogt float %3638, 0x3FE0101020000000
  %3642 = uitofp i1 %3641 to float
  %3643 = select i1 %3640, float %3642, float %3638
  %3644 = and i32 %3612, 8192
  %3645 = icmp ne i32 %3644, 0
  %3646 = select i1 %3645, float %3605, float 1.000000e+00
  %3647 = fmul fast float %3543, 2.000000e+00
  %3648 = fadd fast float %3647, -1.000000e+00
  %3649 = call float @dx.op.unary.f32(i32 6, float %3648)  ; FAbs(value)
  %3650 = fmul fast float %3649, %3536
  %3651 = fsub fast float %3650, %3536
  %3652 = call float @dx.op.unary.f32(i32 7, float %3651)  ; Saturate(value)
  %3653 = fmul fast float %3550, 2.000000e+00
  %3654 = fadd fast float %3653, -1.000000e+00
  %3655 = call float @dx.op.unary.f32(i32 6, float %3654)  ; FAbs(value)
  %3656 = fmul fast float %3655, %3537
  %3657 = fsub fast float %3656, %3537
  %3658 = call float @dx.op.unary.f32(i32 7, float %3657)  ; Saturate(value)
  %3659 = fmul fast float %3562, %3499
  %3660 = fsub fast float %3659, %3499
  %3661 = call float @dx.op.unary.f32(i32 7, float %3660)  ; Saturate(value)
  %3662 = fmul fast float %3620, %3646
  %3663 = fmul fast float %3662, %3617
  %3664 = fmul fast float %3663, %3652
  %3665 = fmul fast float %3664, %3643
  %3666 = fmul fast float %3665, %3658
  %3667 = fmul fast float %3666, %3661
  %3668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3669 = extractvalue %dx.types.CBufRet.f32 %3668, 1
  %3670 = extractvalue %dx.types.CBufRet.f32 %3668, 0
  %3671 = fsub fast float %3579, %3670
  %3672 = fmul fast float %3671, %3669
  %3673 = call float @dx.op.unary.f32(i32 7, float %3672)  ; Saturate(value)
  %3674 = fmul fast float %3667, %3500
  %3675 = fadd fast float %3667, %3500
  %3676 = fmul fast float %3675, %3509
  %3677 = fsub fast float %3676, %3509
  %3678 = call float @dx.op.unary.f32(i32 7, float %3677)  ; Saturate(value)
  %3679 = and i32 %3612, 128
  %3680 = icmp ne i32 %3679, 0
  %3681 = select i1 %3680, float %3678, float %3674
  %3682 = fmul fast float %3681, %3673
  %3683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3684 = extractvalue %dx.types.CBufRet.f32 %3683, 0
  %3685 = fcmp fast ugt float %3682, %3684
  br i1 %3685, label %3686, label %3583

; <label>:3686                                    ; preds = %3603
  %3687 = select i1 %3645, float %3682, float 0.000000e+00
  %3688 = fadd fast float %3687, %3464
  %3689 = call float @dx.op.unary.f32(i32 7, float %3688)  ; Saturate(value)
  br i1 %3645, label %3583, label %3690

; <label>:3690                                    ; preds = %3686
  %3691 = and i32 %3612, 4
  %3692 = and i32 %3612, 8
  %3693 = add i32 %3495, 0
  %3694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3693, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3696 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3694, %dx.types.Handle %3695, float %3623, float %3626, float undef, float undef, i32 0, i32 0, i32 undef, float %3628, float %3630, float undef, float %3632, float %3634, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3697 = extractvalue %dx.types.ResRet.f32 %3696, 0
  %3698 = extractvalue %dx.types.ResRet.f32 %3696, 1
  %3699 = extractvalue %dx.types.ResRet.f32 %3696, 2
  %3700 = extractvalue %dx.types.ResRet.f32 %3696, 3
  %3701 = bitcast float %3521 to i32
  %3702 = and i32 %3701, 255
  %3703 = uitofp i32 %3702 to float
  %3704 = lshr i32 %3701, 8
  %3705 = and i32 %3704, 255
  %3706 = uitofp i32 %3705 to float
  %3707 = fmul fast float %3700, %3703
  %3708 = fadd fast float %3707, %3706
  %3709 = fmul fast float %3708, 0x3F70101000000000
  %3710 = add i32 %3496, 0
  %3711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3710, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3712 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3711, %dx.types.Handle %3695, float %3623, float %3626, float undef, float undef, i32 0, i32 0, i32 undef, float %3628, float %3630, float undef, float %3632, float %3634, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3713 = extractvalue %dx.types.ResRet.f32 %3712, 0
  %3714 = extractvalue %dx.types.ResRet.f32 %3712, 1
  %3715 = extractvalue %dx.types.ResRet.f32 %3712, 2
  %3716 = extractvalue %dx.types.ResRet.f32 %3712, 3
  %3717 = bitcast float %3515 to i32
  %3718 = and i32 %3717, 255
  %3719 = uitofp i32 %3718 to float
  %3720 = lshr i32 %3717, 8
  %3721 = and i32 %3720, 255
  %3722 = uitofp i32 %3721 to float
  %3723 = lshr i32 %3717, 16
  %3724 = and i32 %3723, 255
  %3725 = uitofp i32 %3724 to float
  %3726 = fmul fast float %3725, 0x3F70101000000000
  %3727 = fmul fast float %3713, %3719
  %3728 = fadd fast float %3727, %3722
  %3729 = fmul fast float %3728, 0x3F70101000000000
  %3730 = fadd fast float %3714, -5.000000e-01
  %3731 = fadd fast float %3716, -5.000000e-01
  %3732 = fmul fast float %3730, %3726
  %3733 = fmul fast float %3731, %3726
  %3734 = fadd fast float %3732, 5.000000e-01
  %3735 = fadd fast float %3733, 5.000000e-01
  %3736 = fmul fast float %3697, %3524
  %3737 = fmul fast float %3698, %3525
  %3738 = fmul fast float %3699, %3526
  %3739 = fmul fast float %3734, 2.000000e+00
  %3740 = fadd fast float %3739, -1.000000e+00
  %3741 = fmul fast float %3735, 2.000000e+00
  %3742 = fadd fast float %3741, -1.000000e+00
  %3743 = fadd fast float %3740, %3742
  %3744 = fmul fast float %3743, 5.000000e-01
  %3745 = fsub fast float %3740, %3742
  %3746 = fmul fast float %3745, 5.000000e-01
  %3747 = call float @dx.op.unary.f32(i32 6, float %3744)  ; FAbs(value)
  %3748 = fsub fast float 1.000000e+00, %3747
  %3749 = call float @dx.op.unary.f32(i32 6, float %3746)  ; FAbs(value)
  %3750 = fsub fast float %3748, %3749
  %3751 = call float @dx.op.dot3.f32(i32 55, float %3744, float %3746, float %3750, float %3744, float %3746, float %3750)  ; Dot3(ax,ay,az,bx,by,bz)
  %3752 = call float @dx.op.unary.f32(i32 25, float %3751)  ; Rsqrt(value)
  %3753 = fmul fast float %3744, %3752
  %3754 = fmul fast float %3746, %3752
  %3755 = fmul fast float %3752, %3750
  %3756 = fmul fast float %3755, %3490
  %3757 = fmul fast float %3755, %3491
  %3758 = fmul fast float %3755, %3492
  %3759 = fmul fast float %3753, %3512
  %3760 = fmul fast float %3753, %3513
  %3761 = fmul fast float %3753, %3514
  %3762 = fadd fast float %3759, %3756
  %3763 = fadd fast float %3760, %3757
  %3764 = fadd fast float %3761, %3758
  %3765 = fmul fast float %3754, %3518
  %3766 = fmul fast float %3754, %3519
  %3767 = fmul fast float %3754, %3520
  %3768 = fadd fast float %3762, %3765
  %3769 = fadd fast float %3763, %3766
  %3770 = fadd fast float %3764, %3767
  %3771 = call float @dx.op.dot3.f32(i32 55, float %3768, float %3769, float %3770, float %3768, float %3769, float %3770)  ; Dot3(ax,ay,az,bx,by,bz)
  %3772 = call float @dx.op.unary.f32(i32 25, float %3771)  ; Rsqrt(value)
  %3773 = fmul fast float %3768, %3772
  %3774 = fmul fast float %3769, %3772
  %3775 = fmul fast float %3770, %3772
  %3776 = icmp ne i32 %3692, 0
  %3777 = select i1 %3776, float 1.000000e+00, float 0.000000e+00
  %3778 = fmul fast float %3682, %3777
  %3779 = and i32 %3612, 1
  %3780 = icmp eq i32 %3779, 0
  br i1 %3780, label %3781, label %3785

; <label>:3781                                    ; preds = %3690
  %3782 = fsub fast float %3773, %3472
  %3783 = fsub fast float %3774, %3473
  %3784 = fsub fast float %3775, %3474
  br label %3785

; <label>:3785                                    ; preds = %3781, %3690
  %3786 = phi float [ %3782, %3781 ], [ %3773, %3690 ]
  %3787 = phi float [ %3783, %3781 ], [ %3774, %3690 ]
  %3788 = phi float [ %3784, %3781 ], [ %3775, %3690 ]
  %3789 = fmul float %3788, %3778
  %3790 = fmul float %3787, %3778
  %3791 = fmul float %3786, %3778
  %3792 = fadd fast float %3791, %3472
  %3793 = fadd fast float %3790, %3473
  %3794 = fadd fast float %3789, %3474
  %3795 = icmp ne i32 %3691, 0
  %3796 = select i1 %3795, float 1.000000e+00, float 0.000000e+00
  %3797 = fmul fast float %3682, %3796
  %3798 = fsub fast float %3736, %3479
  %3799 = fsub fast float %3737, %3480
  %3800 = fsub fast float %3738, %3481
  %3801 = fmul fast float %3798, %3797
  %3802 = fmul fast float %3799, %3797
  %3803 = fmul fast float %3800, %3797
  %3804 = fadd fast float %3801, %3479
  %3805 = fadd fast float %3802, %3480
  %3806 = fadd fast float %3803, %3481
  %3807 = fsub fast float %3709, %3478
  %3808 = fmul fast float %3807, %3797
  %3809 = fadd fast float %3808, %3478
  %3810 = fmul fast float %3797, %3468
  %3811 = fsub fast float %3468, %3810
  %3812 = fmul fast float %3797, %3467
  %3813 = fsub fast float %3467, %3812
  %3814 = fadd fast float %3682, %3477
  %3815 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  %3816 = fsub fast float %3729, %3476
  %3817 = fmul fast float %3816, %3778
  %3818 = fadd fast float %3817, %3476
  %3819 = fsub fast float %3715, %3475
  %3820 = fmul fast float %3819, %3778
  %3821 = fadd fast float %3820, %3475
  %3822 = call float @dx.op.dot3.f32(i32 55, float %3736, float %3737, float %3738, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3824 = extractvalue %dx.types.CBufRet.f32 %3823, 0
  %3825 = extractvalue %dx.types.CBufRet.f32 %3823, 1
  %3826 = fmul fast float %3825, %3822
  %3827 = fadd fast float %3826, %3824
  %3828 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  %3829 = bitcast float %3527 to i32
  %3830 = and i32 %3829, 65535
  %3831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3830)  ; LegacyF16ToF32(value)
  %3832 = lshr i32 %3829, 16
  %3833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3832)  ; LegacyF16ToF32(value)
  %3834 = fcmp fast oge float %3831, 0.000000e+00
  %3835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3836 = extractvalue %dx.types.CBufRet.f32 %3835, 0
  %3837 = select i1 %3834, float %3831, float %3836
  %3838 = fadd fast float %3837, %3833
  %3839 = fsub fast float %3828, %3466
  %3840 = fmul fast float %3839, %3682
  %3841 = fadd fast float %3840, %3466
  %3842 = fmul fast float %3838, %3682
  %3843 = call float @dx.op.binary.f32(i32 35, float %3465, float %3842)  ; FMax(a,b)
  %3844 = and i32 %3612, 16
  %3845 = icmp eq i32 %3844, 0
  br i1 %3845, label %3868, label %3846

; <label>:3846                                    ; preds = %3785
  %3847 = bitcast float %3533 to i32
  %3848 = add i32 %3530, 0
  %3849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3848, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3850 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3849, %dx.types.Handle %3695, float %3623, float %3626, float undef, float undef, i32 0, i32 0, i32 undef, float %3628, float %3630, float undef, float %3632, float %3634, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3851 = extractvalue %dx.types.ResRet.f32 %3850, 0
  %3852 = extractvalue %dx.types.ResRet.f32 %3850, 1
  %3853 = extractvalue %dx.types.ResRet.f32 %3850, 2
  %3854 = and i32 %3847, 65535
  %3855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3854)  ; LegacyF16ToF32(value)
  %3856 = fmul fast float %3851, %3524
  %3857 = fmul fast float %3852, %3525
  %3858 = fmul fast float %3853, %3526
  %3859 = and i32 %3612, 16384
  %3860 = icmp ne i32 %3859, 0
  %3861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3862 = extractvalue %dx.types.CBufRet.f32 %3861, 0
  %3863 = select i1 %3860, float %3862, float 1.000000e+00
  %3864 = fmul fast float %3863, %3855
  %3865 = fmul fast float %3856, %3864
  %3866 = fmul fast float %3857, %3864
  %3867 = fmul fast float %3858, %3864
  br label %3868

; <label>:3868                                    ; preds = %3846, %3785
  %3869 = phi float [ %3865, %3846 ], [ 0.000000e+00, %3785 ]
  %3870 = phi float [ %3866, %3846 ], [ 0.000000e+00, %3785 ]
  %3871 = phi float [ %3867, %3846 ], [ 0.000000e+00, %3785 ]
  %3872 = fsub fast float %3869, %3469
  %3873 = fsub fast float %3870, %3470
  %3874 = fsub fast float %3871, %3471
  %3875 = fmul fast float %3872, %3682
  %3876 = fmul fast float %3873, %3682
  %3877 = fmul fast float %3874, %3682
  %3878 = fadd fast float %3875, %3469
  %3879 = fadd fast float %3876, %3470
  %3880 = fadd fast float %3877, %3471
  br label %3583

; <label>:3881                                    ; preds = %3583
  br label %3882

; <label>:3882                                    ; preds = %3881, %3399
  %3883 = phi float [ 0.000000e+00, %3399 ], [ %3584, %3881 ]
  %3884 = phi float [ %3343, %3399 ], [ %3585, %3881 ]
  %3885 = phi float [ %3322, %3399 ], [ %3586, %3881 ]
  %3886 = phi float [ 0.000000e+00, %3399 ], [ %3587, %3881 ]
  %3887 = phi float [ 0.000000e+00, %3399 ], [ %3588, %3881 ]
  %3888 = phi float [ %3365, %3399 ], [ %3589, %3881 ]
  %3889 = phi float [ %3367, %3399 ], [ %3590, %3881 ]
  %3890 = phi float [ %3369, %3399 ], [ %3591, %3881 ]
  %3891 = phi float [ %3395, %3399 ], [ %3592, %3881 ]
  %3892 = phi float [ %3396, %3399 ], [ %3593, %3881 ]
  %3893 = phi float [ %3397, %3399 ], [ %3594, %3881 ]
  %3894 = phi float [ %3321, %3399 ], [ %3595, %3881 ]
  %3895 = phi float [ %3320, %3399 ], [ %3596, %3881 ]
  %3896 = phi float [ 0.000000e+00, %3399 ], [ %3597, %3881 ]
  %3897 = phi float [ %3319, %3399 ], [ %3598, %3881 ]
  %3898 = phi float [ %3350, %3399 ], [ %3599, %3881 ]
  %3899 = phi float [ %3351, %3399 ], [ %3600, %3881 ]
  %3900 = phi float [ %3352, %3399 ], [ %3601, %3881 ]
  %3901 = call float @dx.op.dot3.f32(i32 55, float %3891, float %3892, float %3893, float %3891, float %3892, float %3893)  ; Dot3(ax,ay,az,bx,by,bz)
  %3902 = call float @dx.op.unary.f32(i32 25, float %3901)  ; Rsqrt(value)
  %3903 = fmul fast float %3902, %3891
  %3904 = fmul fast float %3902, %3892
  %3905 = fmul fast float %3902, %3893
  %3906 = fadd fast float %3896, %1102
  %3907 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3908 = call float @dx.op.dot3.f32(i32 55, float %3903, float %3904, float %3905, float %3903, float %3904, float %3905)  ; Dot3(ax,ay,az,bx,by,bz)
  %3909 = call float @dx.op.unary.f32(i32 25, float %3908)  ; Rsqrt(value)
  %3910 = fmul fast float %3909, %3903
  %3911 = fmul fast float %3909, %3904
  %3912 = fmul fast float %3909, %3905
  br label %3913

; <label>:3913                                    ; preds = %3882, %3310
  %3914 = phi float [ %3910, %3882 ], [ %3395, %3310 ]
  %3915 = phi float [ %3911, %3882 ], [ %3396, %3310 ]
  %3916 = phi float [ %3912, %3882 ], [ %3397, %3310 ]
  %3917 = phi float [ %3898, %3882 ], [ %3350, %3310 ]
  %3918 = phi float [ %3899, %3882 ], [ %3351, %3310 ]
  %3919 = phi float [ %3900, %3882 ], [ %3352, %3310 ]
  %3920 = phi float [ %3888, %3882 ], [ %3365, %3310 ]
  %3921 = phi float [ %3889, %3882 ], [ %3367, %3310 ]
  %3922 = phi float [ %3890, %3882 ], [ %3369, %3310 ]
  %3923 = phi float [ %3897, %3882 ], [ %3319, %3310 ]
  %3924 = phi float [ %3907, %3882 ], [ %1102, %3310 ]
  %3925 = phi float [ %3895, %3882 ], [ %3320, %3310 ]
  %3926 = phi float [ %3894, %3882 ], [ %3321, %3310 ]
  %3927 = phi float [ %3887, %3882 ], [ 0.000000e+00, %3310 ]
  %3928 = phi float [ %3886, %3882 ], [ 0.000000e+00, %3310 ]
  %3929 = phi float [ %3883, %3882 ], [ 0.000000e+00, %3310 ]
  %3930 = phi float [ %3884, %3882 ], [ %3343, %3310 ]
  %3931 = phi float [ %3885, %3882 ], [ %3322, %3310 ]
  %3932 = add i32 %61, 392
  %3933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3932, i32 undef)  ; BufferLoad(srv,index,wot)
  %3934 = extractvalue %dx.types.ResRet.i32 %3933, 0
  %3935 = extractvalue %dx.types.ResRet.i32 %3933, 1
  %3936 = extractvalue %dx.types.ResRet.i32 %3933, 2
  %3937 = extractvalue %dx.types.ResRet.i32 %3933, 3
  %3938 = bitcast i32 %3934 to float
  %3939 = bitcast i32 %3935 to float
  %3940 = bitcast i32 %3936 to float
  %3941 = bitcast i32 %3937 to float
  %3942 = fsub fast float %3917, %3938
  %3943 = fsub fast float %3918, %3939
  %3944 = fsub fast float %3919, %3940
  %3945 = fmul fast float %3942, %250
  %3946 = fmul fast float %3943, %250
  %3947 = fmul fast float %3944, %250
  %3948 = fadd fast float %3945, %3938
  %3949 = fadd fast float %3946, %3939
  %3950 = fadd fast float %3947, %3940
  %3951 = fsub fast float %3924, %3941
  %3952 = fmul fast float %3951, %250
  %3953 = fadd fast float %3952, %3941
  %3954 = fadd fast float %3923, 0xBFB99999A0000000
  %3955 = call float @dx.op.unary.f32(i32 7, float %3954)  ; Saturate(value)
  %3956 = fmul fast float %3955, 0x3FF1C71C80000000
  %3957 = call float @dx.op.binary.f32(i32 36, float %3923, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3958 = fsub fast float 1.000000e+00, %3956
  %3959 = call float @dx.op.unary.f32(i32 7, float %3958)  ; Saturate(value)
  %3960 = fmul fast float %3948, %3959
  %3961 = fmul fast float %3949, %3959
  %3962 = fmul fast float %3950, %3959
  %3963 = call float @dx.op.unary.f32(i32 7, float %3960)  ; Saturate(value)
  %3964 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  %3965 = call float @dx.op.unary.f32(i32 7, float %3962)  ; Saturate(value)
  %3966 = fmul fast float %3948, %3956
  %3967 = fmul fast float %3949, %3956
  %3968 = fmul fast float %3950, %3956
  %3969 = fadd fast float %3966, %3957
  %3970 = fadd fast float %3967, %3957
  %3971 = fadd fast float %3968, %3957
  %3972 = call float @dx.op.unary.f32(i32 7, float %3969)  ; Saturate(value)
  %3973 = call float @dx.op.unary.f32(i32 7, float %3970)  ; Saturate(value)
  %3974 = call float @dx.op.unary.f32(i32 7, float %3971)  ; Saturate(value)
  %3975 = call float @dx.op.unary.f32(i32 7, float %3925)  ; Saturate(value)
  %3976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3977 = extractvalue %dx.types.CBufRet.i32 %3976, 3
  %3978 = and i32 %3977, 8
  %3979 = icmp ne i32 %3978, 0
  %3980 = call float @dx.op.binary.f32(i32 35, float %3963, float %3948)  ; FMax(a,b)
  %3981 = call float @dx.op.binary.f32(i32 35, float %3964, float %3948)  ; FMax(a,b)
  %3982 = call float @dx.op.binary.f32(i32 35, float %3965, float %3948)  ; FMax(a,b)
  %3983 = call float @dx.op.dot3.f32(i32 55, float %3963, float %3964, float %3965, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3984 = select i1 %307, float %3948, float %3963
  %3985 = select i1 %307, float %3983, float %3964
  %3986 = select i1 %307, float 1.000000e+00, float %3965
  %3987 = select i1 %3979, float %3980, float %3984
  %3988 = select i1 %3979, float %3981, float %3985
  %3989 = select i1 %3979, float %3982, float %3986
  %3990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3991 = extractvalue %dx.types.CBufRet.f32 %3990, 0
  %3992 = extractvalue %dx.types.CBufRet.f32 %3990, 1
  %3993 = extractvalue %dx.types.CBufRet.f32 %3990, 2
  %3994 = fadd fast float %3991, %203
  %3995 = fadd fast float %3992, %204
  %3996 = fadd fast float %3993, %205
  %3997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3998 = extractvalue %dx.types.CBufRet.f32 %3997, 0
  %3999 = extractvalue %dx.types.CBufRet.f32 %3997, 1
  %4000 = fsub fast float %3994, %3998
  %4001 = fsub fast float %3995, %3999
  %4002 = fmul fast float %4000, %4000
  %4003 = fmul fast float %4001, %4001
  %4004 = fadd fast float %4002, %4003
  %4005 = call float @dx.op.unary.f32(i32 24, float %4004)  ; Sqrt(value)
  %4006 = extractvalue %dx.types.CBufRet.f32 %3997, 2
  %4007 = fcmp fast olt float %4005, %4006
  br i1 %4007, label %4008, label %4075

; <label>:4008                                    ; preds = %3913
  %4009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4010 = extractvalue %dx.types.CBufRet.f32 %4009, 0
  %4011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4012 = extractvalue %dx.types.CBufRet.f32 %4011, 0
  %4013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4014 = extractvalue %dx.types.CBufRet.f32 %4013, 0
  %4015 = extractvalue %dx.types.CBufRet.f32 %4009, 1
  %4016 = extractvalue %dx.types.CBufRet.f32 %4011, 1
  %4017 = extractvalue %dx.types.CBufRet.f32 %4013, 1
  %4018 = extractvalue %dx.types.CBufRet.f32 %4009, 3
  %4019 = extractvalue %dx.types.CBufRet.f32 %4011, 3
  %4020 = extractvalue %dx.types.CBufRet.f32 %4013, 3
  %4021 = fadd fast float %4018, %3994
  %4022 = fadd fast float %4019, %3995
  %4023 = fadd fast float %4020, %3996
  %4024 = fmul fast float %4021, %4010
  %4025 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %4012, float %4024)  ; FMad(a,b,c)
  %4026 = call float @dx.op.tertiary.f32(i32 46, float %4023, float %4014, float %4025)  ; FMad(a,b,c)
  %4027 = fmul fast float %4021, %4015
  %4028 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %4016, float %4027)  ; FMad(a,b,c)
  %4029 = call float @dx.op.tertiary.f32(i32 46, float %4023, float %4017, float %4028)  ; FMad(a,b,c)
  %4030 = fsub fast float %4026, %4018
  %4031 = fsub fast float %4029, %4019
  %4032 = fsub fast float %4030, %3998
  %4033 = fadd fast float %4032, %4006
  %4034 = fsub fast float %4031, %3999
  %4035 = fadd fast float %4034, %4006
  %4036 = extractvalue %dx.types.CBufRet.f32 %3997, 3
  %4037 = fmul fast float %4033, %4036
  %4038 = fmul fast float %4035, %4036
  %4039 = call float @dx.op.unary.f32(i32 7, float %4037)  ; Saturate(value)
  %4040 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4041 = fsub fast float 1.000000e+00, %4039
  %4042 = fsub fast float 1.000000e+00, %4040
  %4043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %55, float %4041, float %4042, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4044 = extractvalue %dx.types.ResRet.f32 %4043, 0
  %4045 = fcmp fast ugt float %4044, 0.000000e+00
  br i1 %4045, label %4046, label %4349

; <label>:4046                                    ; preds = %4008
  %4047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4048 = extractvalue %dx.types.CBufRet.f32 %4047, 2
  %4049 = fmul fast float %4048, %4044
  %4050 = extractvalue %dx.types.CBufRet.f32 %4047, 3
  %4051 = fadd fast float %4050, %4049
  %4052 = extractvalue %dx.types.CBufRet.f32 %4013, 2
  %4053 = fadd fast float %4051, %4020
  %4054 = fmul fast float %4026, %4014
  %4055 = call float @dx.op.tertiary.f32(i32 46, float %4029, float %4017, float %4054)  ; FMad(a,b,c)
  %4056 = call float @dx.op.tertiary.f32(i32 46, float %4053, float %4052, float %4055)  ; FMad(a,b,c)
  %4057 = fsub fast float %4056, %4020
  %4058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.f32 %4058, 2
  %4060 = fsub fast float %4057, %4059
  %4061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %55, float %4041, float %4042, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4062 = extractvalue %dx.types.ResRet.f32 %4061, 0
  %4063 = extractvalue %dx.types.ResRet.f32 %4061, 1
  %4064 = extractvalue %dx.types.ResRet.f32 %4061, 2
  %4065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %55, float %4041, float %4042, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4066 = extractvalue %dx.types.ResRet.f32 %4065, 0
  %4067 = extractvalue %dx.types.ResRet.f32 %4065, 1
  %4068 = extractvalue %dx.types.ResRet.f32 %4065, 2
  %4069 = fadd fast float %4066, %4062
  %4070 = fmul fast float %4069, 0x3F847AE140000000
  %4071 = fadd fast float %4067, %4063
  %4072 = fmul fast float %4071, 0x3F847AE140000000
  %4073 = fadd fast float %4068, %4064
  %4074 = fmul fast float %4073, 0x3F847AE140000000
  br label %4349

; <label>:4075                                    ; preds = %3913
  %4076 = and i32 %286, 1
  %4077 = icmp eq i32 %4076, 0
  br i1 %4077, label %4349, label %4078

; <label>:4078                                    ; preds = %4075
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 0
  %4081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4082 = extractvalue %dx.types.CBufRet.f32 %4081, 0
  %4083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4084 = extractvalue %dx.types.CBufRet.f32 %4083, 0
  %4085 = extractvalue %dx.types.CBufRet.f32 %4079, 1
  %4086 = extractvalue %dx.types.CBufRet.f32 %4081, 1
  %4087 = extractvalue %dx.types.CBufRet.f32 %4083, 1
  %4088 = extractvalue %dx.types.CBufRet.f32 %4079, 3
  %4089 = extractvalue %dx.types.CBufRet.f32 %4081, 3
  %4090 = extractvalue %dx.types.CBufRet.f32 %4083, 3
  %4091 = fadd fast float %4088, %3994
  %4092 = fadd fast float %4089, %3995
  %4093 = fadd fast float %4090, %3996
  %4094 = fmul fast float %4091, %4080
  %4095 = call float @dx.op.tertiary.f32(i32 46, float %4092, float %4082, float %4094)  ; FMad(a,b,c)
  %4096 = call float @dx.op.tertiary.f32(i32 46, float %4093, float %4084, float %4095)  ; FMad(a,b,c)
  %4097 = fmul fast float %4091, %4085
  %4098 = call float @dx.op.tertiary.f32(i32 46, float %4092, float %4086, float %4097)  ; FMad(a,b,c)
  %4099 = call float @dx.op.tertiary.f32(i32 46, float %4093, float %4087, float %4098)  ; FMad(a,b,c)
  %4100 = fsub fast float %4096, %4088
  %4101 = fsub fast float %4099, %4089
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 0
  %4104 = extractvalue %dx.types.CBufRet.f32 %4102, 1
  %4105 = extractvalue %dx.types.CBufRet.f32 %4102, 2
  %4106 = extractvalue %dx.types.CBufRet.f32 %4102, 3
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 3
  %4109 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4110 = extractvalue %dx.types.CBufRet.i32 %4109, 0
  %4111 = extractvalue %dx.types.CBufRet.i32 %4109, 1
  %4112 = udiv i32 %4111, %4110
  %4113 = fsub fast float %4100, %4103
  %4114 = fsub fast float %4101, %4104
  %4115 = call float @dx.op.binary.f32(i32 35, float %4113, float 0.000000e+00)  ; FMax(a,b)
  %4116 = call float @dx.op.binary.f32(i32 35, float %4114, float 0.000000e+00)  ; FMax(a,b)
  %4117 = call float @dx.op.binary.f32(i32 36, float %4115, float %4105)  ; FMin(a,b)
  %4118 = call float @dx.op.binary.f32(i32 36, float %4116, float %4106)  ; FMin(a,b)
  %4119 = add i32 %4110, -1
  %4120 = add i32 %4112, -1
  %4121 = fmul fast float %4117, %4108
  %4122 = fmul fast float %4118, %4108
  %4123 = fptoui float %4121 to i32
  %4124 = fptoui float %4122 to i32
  %4125 = call i32 @dx.op.binary.i32(i32 40, i32 %4123, i32 %4119)  ; UMin(a,b)
  %4126 = call i32 @dx.op.binary.i32(i32 40, i32 %4124, i32 %4120)  ; UMin(a,b)
  %4127 = mul i32 %4126, %4110
  %4128 = add i32 %4127, %4125
  %4129 = shl i32 %4128, 2
  %4130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4129, i32 undef)  ; BufferLoad(srv,index,wot)
  %4131 = extractvalue %dx.types.ResRet.i32 %4130, 0
  %4132 = icmp eq i32 %4131, -1
  br i1 %4132, label %4349, label %4133

; <label>:4133                                    ; preds = %4078
  %4134 = mul i32 %4131, 148
  %4135 = add i32 %4134, 4
  %4136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4135, i32 undef)  ; BufferLoad(srv,index,wot)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4138 = add i32 %4134, 8
  %4139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4138, i32 undef)  ; BufferLoad(srv,index,wot)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = add i32 %4134, 36
  %4142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4141, i32 undef)  ; BufferLoad(srv,index,wot)
  %4143 = extractvalue %dx.types.ResRet.f32 %4142, 0
  %4144 = add i32 %4134, 60
  %4145 = add i32 %4134, 92
  %4146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4145, i32 undef)  ; BufferLoad(srv,index,wot)
  %4147 = extractvalue %dx.types.ResRet.i32 %4146, 0
  %4148 = add i32 %4134, 116
  %4149 = fsub fast float %4100, %4137
  %4150 = fsub fast float %4101, %4140
  %4151 = fmul fast float %4108, %4149
  %4152 = fmul fast float %4108, %4150
  %4153 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4154 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4155 = fsub fast float 1.000000e+00, %4154
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 2
  %4158 = call float @dx.op.unary.f32(i32 83, float %4153)  ; DerivCoarseX(value)
  %4159 = call float @dx.op.unary.f32(i32 83, float %4155)  ; DerivCoarseX(value)
  %4160 = call float @dx.op.unary.f32(i32 84, float %4153)  ; DerivCoarseY(value)
  %4161 = call float @dx.op.unary.f32(i32 84, float %4155)  ; DerivCoarseY(value)
  %4162 = fmul fast float %4158, %4157
  %4163 = fmul fast float %4159, %4157
  %4164 = fmul fast float %4160, %4157
  %4165 = fmul fast float %4161, %4157
  %4166 = call float @dx.op.dot2.f32(i32 54, float %4164, float %4165, float %4164, float %4165)  ; Dot2(ax,ay,bx,by)
  %4167 = call float @dx.op.dot2.f32(i32 54, float %4162, float %4163, float %4162, float %4163)  ; Dot2(ax,ay,bx,by)
  %4168 = call float @dx.op.binary.f32(i32 35, float %4167, float %4166)  ; FMax(a,b)
  %4169 = call float @dx.op.unary.f32(i32 23, float %4168)  ; Log(value)
  %4170 = fmul fast float %4169, 5.000000e-01
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 1
  %4173 = fadd fast float %4172, %4170
  %4174 = call float @dx.op.binary.f32(i32 35, float %4173, float 0.000000e+00)  ; FMax(a,b)
  %4175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.f32 %4175, 3
  %4177 = fadd fast float %4176, %4174
  %4178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4178, 3
  %4180 = fadd fast float %4177, %4179
  %4181 = add i32 %4147, 0
  %4182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4181, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4183 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4182, i32 0)  ; GetDimensions(handle,mipLevel)
  %4184 = extractvalue %dx.types.Dimensions %4183, 0
  %4185 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4184)  ; FirstbitLo(value)
  %4186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.i32 %4186, 1
  %4188 = sub nsw i32 %4187, %4185
  %4189 = sitofp i32 %4188 to float
  %4190 = fsub fast float %4180, %4189
  %4191 = call float @dx.op.binary.f32(i32 35, float %4190, float 0.000000e+00)  ; FMax(a,b)
  %4192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4182, %dx.types.Handle %53, float %4153, float %4155, float %4143, float undef, i32 0, i32 0, i32 undef, float %4191)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4193 = extractvalue %dx.types.ResRet.f32 %4192, 0
  %4194 = fcmp ule float %4193, 0x3FE0101020000000
  %4195 = extractvalue %dx.types.CBufRet.i32 %4186, 0
  %4196 = and i32 %4195, 128
  %4197 = icmp ne i32 %4196, 0
  %4198 = and i1 %4194, %4197
  br i1 %4198, label %4349, label %4199

; <label>:4199                                    ; preds = %4133
  %4200 = add i32 %4134, 20
  %4201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4200, i32 undef)  ; BufferLoad(srv,index,wot)
  %4202 = extractvalue %dx.types.ResRet.f32 %4201, 0
  %4203 = add i32 %4134, 24
  %4204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4203, i32 undef)  ; BufferLoad(srv,index,wot)
  %4205 = extractvalue %dx.types.ResRet.f32 %4204, 0
  %4206 = add i32 %4134, 40
  %4207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4206, i32 undef)  ; BufferLoad(srv,index,wot)
  %4208 = extractvalue %dx.types.ResRet.f32 %4207, 0
  %4209 = add i32 %4134, 96
  %4210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4209, i32 undef)  ; BufferLoad(srv,index,wot)
  %4211 = extractvalue %dx.types.ResRet.i32 %4210, 0
  %4212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.f32 %4212, 2
  %4214 = fmul fast float %4213, %4153
  %4215 = fmul fast float %4213, %4155
  %4216 = extractvalue %dx.types.CBufRet.f32 %4212, 3
  %4217 = fadd fast float %4214, %4216
  %4218 = fadd fast float %4215, %4216
  %4219 = add i32 %4211, 0
  %4220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4219, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4221 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4220, i32 0)  ; GetDimensions(handle,mipLevel)
  %4222 = extractvalue %dx.types.Dimensions %4221, 0
  %4223 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4222)  ; FirstbitLo(value)
  %4224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.i32 %4224, 1
  %4226 = sub nsw i32 %4225, %4223
  %4227 = sitofp i32 %4226 to float
  %4228 = fsub fast float %4177, %4227
  %4229 = call float @dx.op.binary.f32(i32 35, float %4228, float 0.000000e+00)  ; FMax(a,b)
  %4230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4220, %dx.types.Handle %53, float %4217, float %4218, float %4208, float undef, i32 0, i32 0, i32 undef, float %4229)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4231 = extractvalue %dx.types.ResRet.f32 %4230, 0
  %4232 = fmul fast float %4231, %4202
  %4233 = fadd fast float %4232, %4205
  %4234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4235 = extractvalue %dx.types.CBufRet.f32 %4234, 0
  %4236 = extractvalue %dx.types.CBufRet.f32 %4234, 1
  %4237 = extractvalue %dx.types.CBufRet.f32 %4234, 2
  %4238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.f32 %4238, 3
  %4240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.f32 %4240, 3
  %4242 = extractvalue %dx.types.CBufRet.f32 %4234, 3
  %4243 = fadd fast float %4239, %4100
  %4244 = fadd fast float %4241, %4101
  %4245 = fadd fast float %4233, %4242
  %4246 = fmul fast float %4243, %4235
  %4247 = call float @dx.op.tertiary.f32(i32 46, float %4244, float %4236, float %4246)  ; FMad(a,b,c)
  %4248 = call float @dx.op.tertiary.f32(i32 46, float %4245, float %4237, float %4247)  ; FMad(a,b,c)
  %4249 = fsub fast float %4248, %4242
  %4250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.f32 %4250, 2
  %4252 = fsub fast float %4249, %4251
  %4253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4254 = extractvalue %dx.types.CBufRet.i32 %4253, 0
  %4255 = call i32 @dx.op.binary.i32(i32 40, i32 %4131, i32 %4254)  ; UMin(a,b)
  %4256 = mul i32 %4255, 36
  %4257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4256, i32 undef)  ; BufferLoad(srv,index,wot)
  %4258 = extractvalue %dx.types.ResRet.i32 %4257, 0
  %4259 = add i32 %4256, 4
  %4260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4261 = extractvalue %dx.types.CBufRet.f32 %4260, 0
  %4262 = fmul fast float %4261, %4153
  %4263 = fmul fast float %4261, %4155
  %4264 = extractvalue %dx.types.CBufRet.f32 %4260, 1
  %4265 = fadd fast float %4262, %4264
  %4266 = fadd fast float %4263, %4264
  %4267 = icmp eq i32 %4258, 0
  br i1 %4267, label %4336, label %4268

; <label>:4268                                    ; preds = %4199
  br label %4269

; <label>:4269                                    ; preds = %4326, %4268
  %4270 = phi float [ %4327, %4326 ], [ 0.000000e+00, %4268 ]
  %4271 = phi float [ %4328, %4326 ], [ 0.000000e+00, %4268 ]
  %4272 = phi float [ %4329, %4326 ], [ 0.000000e+00, %4268 ]
  %4273 = phi float [ %4330, %4326 ], [ 0.000000e+00, %4268 ]
  %4274 = phi float [ %4331, %4326 ], [ 0.000000e+00, %4268 ]
  %4275 = phi float [ %4332, %4326 ], [ 0.000000e+00, %4268 ]
  %4276 = phi i32 [ %4333, %4326 ], [ 0, %4268 ]
  %4277 = shl i32 %4276, 2
  %4278 = add i32 %4144, %4277
  %4279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4278, i32 undef)  ; BufferLoad(srv,index,wot)
  %4280 = extractvalue %dx.types.ResRet.f32 %4279, 0
  %4281 = add i32 %4148, %4277
  %4282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4281, i32 undef)  ; BufferLoad(srv,index,wot)
  %4283 = extractvalue %dx.types.ResRet.i32 %4282, 0
  %4284 = add i32 %4283, 0
  %4285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4284, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4286 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4285, i32 0)  ; GetDimensions(handle,mipLevel)
  %4287 = extractvalue %dx.types.Dimensions %4286, 0
  %4288 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4287)  ; FirstbitLo(value)
  %4289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.i32 %4289, 1
  %4291 = sub nsw i32 %4290, %4288
  %4292 = sitofp i32 %4291 to float
  %4293 = fsub fast float %4177, %4292
  %4294 = call float @dx.op.binary.f32(i32 35, float %4293, float 0.000000e+00)  ; FMax(a,b)
  %4295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4285, %dx.types.Handle %53, float %4265, float %4266, float %4280, float undef, i32 0, i32 0, i32 undef, float %4294)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4296 = extractvalue %dx.types.ResRet.f32 %4295, 0
  %4297 = fcmp fast ogt float %4296, 0.000000e+00
  br i1 %4297, label %4298, label %4326

; <label>:4298                                    ; preds = %4269
  %4299 = add i32 %4259, %4277
  %4300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4299, i32 undef)  ; BufferLoad(srv,index,wot)
  %4301 = extractvalue %dx.types.ResRet.i32 %4300, 0
  %4302 = and i32 %4301, 32767
  %4303 = mul nuw nsw i32 %4302, 928
  %4304 = add nuw nsw i32 %4303, 48
  %4305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4304, i32 undef)  ; BufferLoad(srv,index,wot)
  %4306 = extractvalue %dx.types.ResRet.f32 %4305, 0
  %4307 = extractvalue %dx.types.ResRet.f32 %4305, 1
  %4308 = extractvalue %dx.types.ResRet.f32 %4305, 2
  %4309 = add nuw nsw i32 %4303, 60
  %4310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4309, i32 undef)  ; BufferLoad(srv,index,wot)
  %4311 = extractvalue %dx.types.ResRet.f32 %4310, 0
  %4312 = extractvalue %dx.types.ResRet.f32 %4310, 1
  %4313 = extractvalue %dx.types.ResRet.f32 %4310, 2
  %4314 = fmul fast float %4306, %4296
  %4315 = fmul fast float %4307, %4296
  %4316 = fmul fast float %4308, %4296
  %4317 = fadd fast float %4314, %4270
  %4318 = fadd fast float %4315, %4271
  %4319 = fadd fast float %4316, %4272
  %4320 = fmul fast float %4311, %4296
  %4321 = fmul fast float %4312, %4296
  %4322 = fmul fast float %4313, %4296
  %4323 = fadd fast float %4320, %4273
  %4324 = fadd fast float %4321, %4274
  %4325 = fadd fast float %4322, %4275
  br label %4326

; <label>:4326                                    ; preds = %4298, %4269
  %4327 = phi float [ %4317, %4298 ], [ %4270, %4269 ]
  %4328 = phi float [ %4318, %4298 ], [ %4271, %4269 ]
  %4329 = phi float [ %4319, %4298 ], [ %4272, %4269 ]
  %4330 = phi float [ %4323, %4298 ], [ %4273, %4269 ]
  %4331 = phi float [ %4324, %4298 ], [ %4274, %4269 ]
  %4332 = phi float [ %4325, %4298 ], [ %4275, %4269 ]
  %4333 = add nuw i32 %4276, 1
  %4334 = icmp eq i32 %4333, %4258
  br i1 %4334, label %4335, label %4269

; <label>:4335                                    ; preds = %4326
  br label %4336

; <label>:4336                                    ; preds = %4335, %4199
  %4337 = phi float [ 0.000000e+00, %4199 ], [ %4327, %4335 ]
  %4338 = phi float [ 0.000000e+00, %4199 ], [ %4328, %4335 ]
  %4339 = phi float [ 0.000000e+00, %4199 ], [ %4329, %4335 ]
  %4340 = phi float [ 0.000000e+00, %4199 ], [ %4330, %4335 ]
  %4341 = phi float [ 0.000000e+00, %4199 ], [ %4331, %4335 ]
  %4342 = phi float [ 0.000000e+00, %4199 ], [ %4332, %4335 ]
  %4343 = fadd fast float %4340, %4337
  %4344 = fmul fast float %4343, 0x3F847AE140000000
  %4345 = fadd fast float %4341, %4338
  %4346 = fmul fast float %4345, 0x3F847AE140000000
  %4347 = fadd fast float %4342, %4339
  %4348 = fmul fast float %4347, 0x3F847AE140000000
  br label %4349

; <label>:4349                                    ; preds = %4336, %4133, %4078, %4075, %4046, %4008
  %4350 = phi float [ %4070, %4046 ], [ 0.000000e+00, %4008 ], [ %4344, %4336 ], [ 0.000000e+00, %4078 ], [ 0.000000e+00, %4133 ], [ 0.000000e+00, %4075 ]
  %4351 = phi float [ %4072, %4046 ], [ 0.000000e+00, %4008 ], [ %4346, %4336 ], [ 0.000000e+00, %4078 ], [ 0.000000e+00, %4133 ], [ 0.000000e+00, %4075 ]
  %4352 = phi float [ %4074, %4046 ], [ 0.000000e+00, %4008 ], [ %4348, %4336 ], [ 0.000000e+00, %4078 ], [ 0.000000e+00, %4133 ], [ 0.000000e+00, %4075 ]
  %4353 = phi float [ %4060, %4046 ], [ -1.310720e+05, %4008 ], [ %4252, %4336 ], [ -1.310720e+05, %4078 ], [ -1.310720e+05, %4133 ], [ -1.310720e+05, %4075 ]
  %4354 = phi i1 [ true, %4046 ], [ false, %4008 ], [ true, %4336 ], [ false, %4078 ], [ false, %4133 ], [ false, %4075 ]
  %4355 = and i32 %286, 3
  %4356 = icmp eq i32 %4355, 1
  %4357 = select i1 %4356, float 1.000000e+00, float 0.000000e+00
  %4358 = fsub fast float %4353, %205
  %4359 = call float @dx.op.unary.f32(i32 7, float %4358)  ; Saturate(value)
  %4360 = select i1 %4354, float %4359, float 1.000000e+00
  %4361 = fmul fast float %4360, %4357
  %4362 = icmp eq i32 %4355, 3
  %4363 = select i1 %4362, float 1.000000e+00, float %4361
  %4364 = call float @dx.op.binary.f32(i32 35, float %3929, float %4363)  ; FMax(a,b)
  %4365 = fcmp fast olt float %4363, 1.000000e+00
  %4366 = fcmp uge float %77, 0.000000e+00
  %4367 = and i1 %4366, %4365
  br i1 %4367, label %4368, label %4378

; <label>:4368                                    ; preds = %4349
  %4369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %53, float %77, float %78, float %79, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4370 = extractvalue %dx.types.ResRet.f32 %4369, 0
  %4371 = extractvalue %dx.types.ResRet.f32 %4369, 1
  %4372 = extractvalue %dx.types.ResRet.f32 %4369, 2
  %4373 = fadd fast float %4370, %4364
  %4374 = fcmp ule float %76, 0.000000e+00
  %4375 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4376 = select i1 %4374, float %4375, float 1.000000e+00
  %4377 = fmul fast float %4376, %4372
  br label %4378

; <label>:4378                                    ; preds = %4368, %4349
  %4379 = phi float [ %4373, %4368 ], [ %4364, %4349 ]
  %4380 = phi float [ %4371, %4368 ], [ 0.000000e+00, %4349 ]
  %4381 = phi float [ %4377, %4368 ], [ 0.000000e+00, %4349 ]
  %4382 = call float @dx.op.unary.f32(i32 7, float %4379)  ; Saturate(value)
  %4383 = call float @dx.op.unary.f32(i32 7, float %4380)  ; Saturate(value)
  %4384 = call float @dx.op.unary.f32(i32 7, float %4381)  ; Saturate(value)
  %4385 = fcmp fast une float %4383, 0.000000e+00
  %4386 = fcmp fast une float %4384, 0.000000e+00
  %4387 = or i1 %4385, %4386
  br i1 %4387, label %4388, label %4947

; <label>:4388                                    ; preds = %4378
  br i1 %4385, label %4389, label %4662

; <label>:4389                                    ; preds = %4388
  %4390 = call float @dx.op.unary.f32(i32 23, float %3926)  ; Log(value)
  %4391 = fmul fast float %4390, 4.000000e+00
  %4392 = call float @dx.op.unary.f32(i32 21, float %4391)  ; Exp(value)
  %4393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4394 = extractvalue %dx.types.CBufRet.f32 %4393, 0
  %4395 = fmul fast float %4394, %64
  %4396 = fmul fast float %4394, %65
  %4397 = fmul fast float %4394, %66
  %4398 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4399 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4400 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4401 = call float @dx.op.unary.f32(i32 23, float %4398)  ; Log(value)
  %4402 = call float @dx.op.unary.f32(i32 23, float %4399)  ; Log(value)
  %4403 = call float @dx.op.unary.f32(i32 23, float %4400)  ; Log(value)
  %4404 = fmul fast float %4401, 4.000000e+00
  %4405 = fmul fast float %4402, 4.000000e+00
  %4406 = fmul fast float %4403, 4.000000e+00
  %4407 = call float @dx.op.unary.f32(i32 21, float %4404)  ; Exp(value)
  %4408 = call float @dx.op.unary.f32(i32 21, float %4405)  ; Exp(value)
  %4409 = call float @dx.op.unary.f32(i32 21, float %4406)  ; Exp(value)
  %4410 = fadd fast float %4408, %4407
  %4411 = fadd fast float %4410, %4409
  %4412 = fdiv fast float 1.000000e+00, %4411
  %4413 = fmul fast float %4412, %4407
  %4414 = fcmp fast ogt float %73, 0.000000e+00
  %4415 = fcmp fast ogt float %74, 0.000000e+00
  %4416 = fcmp fast ogt float %75, 0.000000e+00
  %4417 = fcmp fast olt float %73, 0.000000e+00
  %4418 = fcmp fast olt float %74, 0.000000e+00
  %4419 = fcmp fast olt float %75, 0.000000e+00
  %4420 = zext i1 %4414 to i32
  %4421 = zext i1 %4415 to i32
  %4422 = zext i1 %4416 to i32
  %4423 = zext i1 %4417 to i32
  %4424 = zext i1 %4418 to i32
  %4425 = zext i1 %4419 to i32
  %4426 = sub nsw i32 %4420, %4423
  %4427 = sub nsw i32 %4421, %4424
  %4428 = sub nsw i32 %4422, %4425
  %4429 = call float @dx.op.unary.f32(i32 83, float %4395)  ; DerivCoarseX(value)
  %4430 = call float @dx.op.unary.f32(i32 83, float %4396)  ; DerivCoarseX(value)
  %4431 = call float @dx.op.unary.f32(i32 83, float %4397)  ; DerivCoarseX(value)
  %4432 = call float @dx.op.unary.f32(i32 84, float %4395)  ; DerivCoarseY(value)
  %4433 = call float @dx.op.unary.f32(i32 84, float %4396)  ; DerivCoarseY(value)
  %4434 = call float @dx.op.unary.f32(i32 84, float %4397)  ; DerivCoarseY(value)
  %4435 = fcmp fast ole float %318, %4413
  %4436 = fmul fast float %4412, %4410
  %4437 = fcmp fast ole float %318, %4436
  %4438 = select i1 %4437, float %4397, float %4395
  %4439 = select i1 %4437, float %4395, float %4396
  %4440 = select i1 %4435, float %4396, float %4438
  %4441 = select i1 %4435, float %4397, float %4439
  %4442 = select i1 %4437, float %4431, float %4429
  %4443 = select i1 %4437, float %4429, float %4430
  %4444 = select i1 %4435, float %4430, float %4442
  %4445 = select i1 %4435, float %4431, float %4443
  %4446 = select i1 %4437, float %4434, float %4432
  %4447 = select i1 %4437, float %4432, float %4433
  %4448 = select i1 %4435, float %4433, float %4446
  %4449 = select i1 %4435, float %4434, float %4447
  %4450 = call float @dx.op.unary.f32(i32 27, float %4440)  ; Round_ni(value)
  %4451 = call float @dx.op.unary.f32(i32 27, float %4441)  ; Round_ni(value)
  %4452 = fptosi float %4450 to i32
  %4453 = fptosi float %4451 to i32
  %4454 = xor i32 %4453, %4452
  %4455 = sitofp i32 %4454 to float
  %4456 = fptosi float %4455 to i32
  %4457 = sitofp i32 %4456 to float
  %4458 = fmul fast float %4457, 0x3FE3C6EF40000000
  %4459 = frem fast float %4450, 2.560000e+02
  %4460 = frem fast float %4451, 2.560000e+02
  %4461 = fptoui float %4459 to i32
  %4462 = fptoui float %4460 to i32
  %4463 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4461, i32 %4462, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4464 = extractvalue %dx.types.ResRet.f32 %4463, 0
  %4465 = extractvalue %dx.types.ResRet.f32 %4463, 1
  %4466 = extractvalue %dx.types.ResRet.f32 %4463, 2
  %4467 = fadd fast float %4464, %4458
  %4468 = fadd fast float %4465, %4458
  %4469 = fadd fast float %4466, %4458
  %4470 = call float @dx.op.unary.f32(i32 22, float %4467)  ; Frc(value)
  %4471 = call float @dx.op.unary.f32(i32 22, float %4468)  ; Frc(value)
  %4472 = call float @dx.op.unary.f32(i32 22, float %4469)  ; Frc(value)
  %4473 = fmul fast float %4472, 0x401921FB60000000
  %4474 = call float @dx.op.unary.f32(i32 13, float %4473)  ; Sin(value)
  %4475 = call float @dx.op.unary.f32(i32 12, float %4473)  ; Cos(value)
  %4476 = fsub fast float -0.000000e+00, %4475
  %4477 = fmul fast float %4475, %4440
  %4478 = call float @dx.op.tertiary.f32(i32 46, float %4474, float %4441, float %4477)  ; FMad(a,b,c)
  %4479 = fmul fast float %4474, %4440
  %4480 = call float @dx.op.tertiary.f32(i32 46, float %4476, float %4441, float %4479)  ; FMad(a,b,c)
  %4481 = fadd fast float %4478, %4470
  %4482 = fadd fast float %4480, %4471
  %4483 = extractvalue %dx.types.CBufRet.f32 %4393, 3
  %4484 = bitcast float %4483 to i32
  %4485 = icmp eq i32 %4484, 0
  br i1 %4485, label %4524, label %4486

; <label>:4486                                    ; preds = %4389
  %4487 = add i32 %4484, 0
  %4488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4487, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4489 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4488, %dx.types.Handle %113, float %4481, float %4482, float undef, float undef, i32 0, i32 0, i32 undef, float %4444, float %4445, float undef, float %4448, float %4449, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4490 = extractvalue %dx.types.ResRet.f32 %4489, 0
  %4491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4492 = extractvalue %dx.types.CBufRet.f32 %4491, 1
  %4493 = extractvalue %dx.types.CBufRet.f32 %4491, 2
  %4494 = fsub fast float 1.000000e+00, %4383
  %4495 = call float @dx.op.binary.f32(i32 35, float %4494, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4496 = bitcast float %4383 to i32
  %4497 = sitofp i32 %4496 to float
  %4498 = fadd fast float %4497, 0xC1CFBF8940000000
  %4499 = fmul fast float %4493, %4498
  %4500 = fadd fast float %4499, 0x41CFBF8940000000
  %4501 = fptosi float %4500 to i32
  %4502 = bitcast i32 %4501 to float
  %4503 = bitcast float %4495 to i32
  %4504 = sitofp i32 %4503 to float
  %4505 = fadd fast float %4504, 0xC1CFBF8940000000
  %4506 = fmul fast float %4505, %4493
  %4507 = fadd fast float %4506, 0x41CFBF8940000000
  %4508 = fptosi float %4507 to i32
  %4509 = bitcast i32 %4508 to float
  %4510 = fmul fast float %4502, %4492
  %4511 = fmul fast float %4509, %4492
  %4512 = fsub fast float %4495, %4510
  %4513 = fadd fast float %4511, %4495
  %4514 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4515 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4516 = fsub fast float %4490, %4514
  %4517 = fsub fast float %4515, %4514
  %4518 = bitcast float %4517 to i32
  %4519 = sub nsw i32 2129859010, %4518
  %4520 = bitcast i32 %4519 to float
  %4521 = fmul fast float %4520, %4516
  %4522 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4523 = fcmp fast olt float %4522, 0x3F70101020000000
  br i1 %4523, label %4662, label %4524

; <label>:4524                                    ; preds = %4486, %4389
  %4525 = phi float [ %4522, %4486 ], [ %4383, %4389 ]
  %4526 = fmul fast float %4525, %4392
  %4527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.i32 %4527, 1
  %4529 = extractvalue %dx.types.CBufRet.i32 %4527, 0
  %4530 = add i32 %4529, 0
  %4531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4532 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4531, %dx.types.Handle %112, float %4481, float %4482, float undef, float undef, i32 0, i32 0, i32 undef, float %4444, float %4445, float undef, float %4448, float %4449, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4533 = extractvalue %dx.types.ResRet.f32 %4532, 0
  %4534 = extractvalue %dx.types.ResRet.f32 %4532, 1
  %4535 = extractvalue %dx.types.ResRet.f32 %4532, 2
  %4536 = extractvalue %dx.types.ResRet.f32 %4532, 3
  %4537 = and i32 %4528, 255
  %4538 = uitofp i32 %4537 to float
  %4539 = lshr i32 %4528, 8
  %4540 = and i32 %4539, 255
  %4541 = uitofp i32 %4540 to float
  %4542 = fmul fast float %4536, %4538
  %4543 = fadd fast float %4542, %4541
  %4544 = fmul fast float %4543, 0x3F70101000000000
  %4545 = fadd fast float %4544, 0xBFB99999A0000000
  %4546 = call float @dx.op.unary.f32(i32 7, float %4545)  ; Saturate(value)
  %4547 = fmul fast float %4546, 0x3FF1C71C80000000
  %4548 = call float @dx.op.binary.f32(i32 36, float %4544, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4549 = fsub fast float 1.000000e+00, %4547
  %4550 = call float @dx.op.unary.f32(i32 7, float %4549)  ; Saturate(value)
  %4551 = fmul fast float %4550, %4533
  %4552 = fmul fast float %4550, %4534
  %4553 = fmul fast float %4550, %4535
  %4554 = call float @dx.op.unary.f32(i32 7, float %4551)  ; Saturate(value)
  %4555 = call float @dx.op.unary.f32(i32 7, float %4552)  ; Saturate(value)
  %4556 = call float @dx.op.unary.f32(i32 7, float %4553)  ; Saturate(value)
  %4557 = fmul fast float %4547, %4533
  %4558 = fmul fast float %4547, %4534
  %4559 = fmul fast float %4547, %4535
  %4560 = fadd fast float %4557, %4548
  %4561 = fadd fast float %4558, %4548
  %4562 = fadd fast float %4559, %4548
  %4563 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4564 = call float @dx.op.unary.f32(i32 7, float %4561)  ; Saturate(value)
  %4565 = call float @dx.op.unary.f32(i32 7, float %4562)  ; Saturate(value)
  %4566 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4567 = extractvalue %dx.types.CBufRet.i32 %4566, 3
  %4568 = extractvalue %dx.types.CBufRet.i32 %4566, 2
  %4569 = add i32 %4568, 0
  %4570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4569, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4571 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4570, %dx.types.Handle %112, float %4481, float %4482, float undef, float undef, i32 0, i32 0, i32 undef, float %4444, float %4445, float undef, float %4448, float %4449, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4572 = extractvalue %dx.types.ResRet.f32 %4571, 0
  %4573 = extractvalue %dx.types.ResRet.f32 %4571, 1
  %4574 = extractvalue %dx.types.ResRet.f32 %4571, 2
  %4575 = extractvalue %dx.types.ResRet.f32 %4571, 3
  %4576 = and i32 %4567, 255
  %4577 = uitofp i32 %4576 to float
  %4578 = lshr i32 %4567, 8
  %4579 = and i32 %4578, 255
  %4580 = uitofp i32 %4579 to float
  %4581 = lshr i32 %4567, 16
  %4582 = and i32 %4581, 255
  %4583 = uitofp i32 %4582 to float
  %4584 = fmul fast float %4583, 0x3F70101000000000
  %4585 = fmul fast float %4572, %4577
  %4586 = fadd fast float %4585, %4580
  %4587 = fmul fast float %4586, 0x3F70101000000000
  %4588 = fadd fast float %4573, -5.000000e-01
  %4589 = fadd fast float %4575, -5.000000e-01
  %4590 = fmul fast float %4588, %4584
  %4591 = fmul fast float %4589, %4584
  %4592 = fadd fast float %4590, 5.000000e-01
  %4593 = fadd fast float %4591, 5.000000e-01
  %4594 = fmul fast float %4592, 2.000000e+00
  %4595 = fadd fast float %4594, -1.000000e+00
  %4596 = fmul fast float %4593, 2.000000e+00
  %4597 = fadd fast float %4596, -1.000000e+00
  %4598 = fadd fast float %4595, %4597
  %4599 = fmul fast float %4598, 5.000000e-01
  %4600 = fsub fast float %4595, %4597
  %4601 = fmul fast float %4600, 5.000000e-01
  %4602 = call float @dx.op.unary.f32(i32 6, float %4599)  ; FAbs(value)
  %4603 = fsub fast float 1.000000e+00, %4602
  %4604 = call float @dx.op.unary.f32(i32 6, float %4601)  ; FAbs(value)
  %4605 = fsub fast float %4603, %4604
  %4606 = call float @dx.op.dot3.f32(i32 55, float %4599, float %4601, float %4605, float %4599, float %4601, float %4605)  ; Dot3(ax,ay,az,bx,by,bz)
  %4607 = call float @dx.op.unary.f32(i32 25, float %4606)  ; Rsqrt(value)
  %4608 = fmul fast float %4599, %4607
  %4609 = fmul fast float %4601, %4607
  %4610 = select i1 %4437, i32 %4427, i32 %4428
  %4611 = select i1 %4435, i32 %4426, i32 %4610
  %4612 = sitofp i32 %4611 to float
  %4613 = fmul fast float %4605, %4612
  %4614 = fmul fast float %4613, %4607
  %4615 = select i1 %4437, float %4614, float %4609
  %4616 = select i1 %4437, float %4609, float %4614
  %4617 = select i1 %4435, float %4614, float %4608
  %4618 = select i1 %4435, float %4609, float %4615
  %4619 = select i1 %4435, float %4608, float %4616
  %4620 = fsub fast float %4554, %3987
  %4621 = fsub fast float %4555, %3988
  %4622 = fsub fast float %4556, %3989
  %4623 = fmul fast float %4620, %4526
  %4624 = fmul fast float %4621, %4526
  %4625 = fmul fast float %4622, %4526
  %4626 = fadd fast float %4623, %3987
  %4627 = fadd fast float %4624, %3988
  %4628 = fadd fast float %4625, %3989
  %4629 = fsub fast float %4563, %3972
  %4630 = fsub fast float %4564, %3973
  %4631 = fsub fast float %4565, %3974
  %4632 = fmul fast float %4629, %4526
  %4633 = fmul fast float %4630, %4526
  %4634 = fmul fast float %4631, %4526
  %4635 = fadd fast float %4632, %3972
  %4636 = fadd fast float %4633, %3973
  %4637 = fadd fast float %4634, %3974
  %4638 = fadd fast float %4617, %3914
  %4639 = fadd fast float %4618, %3915
  %4640 = fadd fast float %4619, %3916
  %4641 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4642 = call float @dx.op.unary.f32(i32 25, float %4641)  ; Rsqrt(value)
  %4643 = fmul fast float %4638, %4642
  %4644 = fmul fast float %4639, %4642
  %4645 = fmul fast float %4640, %4642
  %4646 = fsub fast float %4643, %3914
  %4647 = fsub fast float %4644, %3915
  %4648 = fsub fast float %4645, %3916
  %4649 = fmul fast float %4646, %4526
  %4650 = fmul fast float %4647, %4526
  %4651 = fmul fast float %4648, %4526
  %4652 = fadd fast float %4649, %3914
  %4653 = fadd fast float %4650, %3915
  %4654 = fadd fast float %4651, %3916
  %4655 = call float @dx.op.binary.f32(i32 36, float %3926, float %4574)  ; FMin(a,b)
  %4656 = fsub fast float %4655, %3926
  %4657 = fmul fast float %4656, %4526
  %4658 = fadd fast float %4657, %3926
  %4659 = fsub fast float %4587, %3975
  %4660 = fmul fast float %4659, %4526
  %4661 = fadd fast float %4660, %3975
  br label %4662

; <label>:4662                                    ; preds = %4524, %4486, %4388
  %4663 = phi float [ %4626, %4524 ], [ %3987, %4486 ], [ %3987, %4388 ]
  %4664 = phi float [ %4627, %4524 ], [ %3988, %4486 ], [ %3988, %4388 ]
  %4665 = phi float [ %4628, %4524 ], [ %3989, %4486 ], [ %3989, %4388 ]
  %4666 = phi float [ %4635, %4524 ], [ %3972, %4486 ], [ %3972, %4388 ]
  %4667 = phi float [ %4636, %4524 ], [ %3973, %4486 ], [ %3973, %4388 ]
  %4668 = phi float [ %4637, %4524 ], [ %3974, %4486 ], [ %3974, %4388 ]
  %4669 = phi float [ %4652, %4524 ], [ %3914, %4486 ], [ %3914, %4388 ]
  %4670 = phi float [ %4653, %4524 ], [ %3915, %4486 ], [ %3915, %4388 ]
  %4671 = phi float [ %4654, %4524 ], [ %3916, %4486 ], [ %3916, %4388 ]
  %4672 = phi float [ %4661, %4524 ], [ %3975, %4486 ], [ %3975, %4388 ]
  %4673 = phi float [ %4658, %4524 ], [ %3926, %4486 ], [ %3926, %4388 ]
  br i1 %4386, label %4674, label %4947

; <label>:4674                                    ; preds = %4662
  %4675 = call float @dx.op.unary.f32(i32 23, float %4673)  ; Log(value)
  %4676 = fmul fast float %4675, 4.000000e+00
  %4677 = call float @dx.op.unary.f32(i32 21, float %4676)  ; Exp(value)
  %4678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4679 = extractvalue %dx.types.CBufRet.f32 %4678, 0
  %4680 = fmul fast float %4679, %64
  %4681 = fmul fast float %4679, %65
  %4682 = fmul fast float %4679, %66
  %4683 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4684 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4685 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4686 = call float @dx.op.unary.f32(i32 23, float %4683)  ; Log(value)
  %4687 = call float @dx.op.unary.f32(i32 23, float %4684)  ; Log(value)
  %4688 = call float @dx.op.unary.f32(i32 23, float %4685)  ; Log(value)
  %4689 = fmul fast float %4686, 4.000000e+00
  %4690 = fmul fast float %4687, 4.000000e+00
  %4691 = fmul fast float %4688, 4.000000e+00
  %4692 = call float @dx.op.unary.f32(i32 21, float %4689)  ; Exp(value)
  %4693 = call float @dx.op.unary.f32(i32 21, float %4690)  ; Exp(value)
  %4694 = call float @dx.op.unary.f32(i32 21, float %4691)  ; Exp(value)
  %4695 = fadd fast float %4693, %4692
  %4696 = fadd fast float %4695, %4694
  %4697 = fdiv fast float 1.000000e+00, %4696
  %4698 = fmul fast float %4697, %4692
  %4699 = fcmp fast ogt float %73, 0.000000e+00
  %4700 = fcmp fast ogt float %74, 0.000000e+00
  %4701 = fcmp fast ogt float %75, 0.000000e+00
  %4702 = fcmp fast olt float %73, 0.000000e+00
  %4703 = fcmp fast olt float %74, 0.000000e+00
  %4704 = fcmp fast olt float %75, 0.000000e+00
  %4705 = zext i1 %4699 to i32
  %4706 = zext i1 %4700 to i32
  %4707 = zext i1 %4701 to i32
  %4708 = zext i1 %4702 to i32
  %4709 = zext i1 %4703 to i32
  %4710 = zext i1 %4704 to i32
  %4711 = sub nsw i32 %4705, %4708
  %4712 = sub nsw i32 %4706, %4709
  %4713 = sub nsw i32 %4707, %4710
  %4714 = call float @dx.op.unary.f32(i32 83, float %4680)  ; DerivCoarseX(value)
  %4715 = call float @dx.op.unary.f32(i32 83, float %4681)  ; DerivCoarseX(value)
  %4716 = call float @dx.op.unary.f32(i32 83, float %4682)  ; DerivCoarseX(value)
  %4717 = call float @dx.op.unary.f32(i32 84, float %4680)  ; DerivCoarseY(value)
  %4718 = call float @dx.op.unary.f32(i32 84, float %4681)  ; DerivCoarseY(value)
  %4719 = call float @dx.op.unary.f32(i32 84, float %4682)  ; DerivCoarseY(value)
  %4720 = fcmp fast ole float %318, %4698
  %4721 = fmul fast float %4697, %4695
  %4722 = fcmp fast ole float %318, %4721
  %4723 = select i1 %4722, float %4682, float %4680
  %4724 = select i1 %4722, float %4680, float %4681
  %4725 = select i1 %4720, float %4681, float %4723
  %4726 = select i1 %4720, float %4682, float %4724
  %4727 = select i1 %4722, float %4716, float %4714
  %4728 = select i1 %4722, float %4714, float %4715
  %4729 = select i1 %4720, float %4715, float %4727
  %4730 = select i1 %4720, float %4716, float %4728
  %4731 = select i1 %4722, float %4719, float %4717
  %4732 = select i1 %4722, float %4717, float %4718
  %4733 = select i1 %4720, float %4718, float %4731
  %4734 = select i1 %4720, float %4719, float %4732
  %4735 = call float @dx.op.unary.f32(i32 27, float %4725)  ; Round_ni(value)
  %4736 = call float @dx.op.unary.f32(i32 27, float %4726)  ; Round_ni(value)
  %4737 = fptosi float %4735 to i32
  %4738 = fptosi float %4736 to i32
  %4739 = xor i32 %4738, %4737
  %4740 = sitofp i32 %4739 to float
  %4741 = fptosi float %4740 to i32
  %4742 = sitofp i32 %4741 to float
  %4743 = fmul fast float %4742, 0x3FE3C6EF40000000
  %4744 = frem fast float %4735, 2.560000e+02
  %4745 = frem fast float %4736, 2.560000e+02
  %4746 = fptoui float %4744 to i32
  %4747 = fptoui float %4745 to i32
  %4748 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4746, i32 %4747, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4749 = extractvalue %dx.types.ResRet.f32 %4748, 0
  %4750 = extractvalue %dx.types.ResRet.f32 %4748, 1
  %4751 = extractvalue %dx.types.ResRet.f32 %4748, 2
  %4752 = fadd fast float %4749, %4743
  %4753 = fadd fast float %4750, %4743
  %4754 = fadd fast float %4751, %4743
  %4755 = call float @dx.op.unary.f32(i32 22, float %4752)  ; Frc(value)
  %4756 = call float @dx.op.unary.f32(i32 22, float %4753)  ; Frc(value)
  %4757 = call float @dx.op.unary.f32(i32 22, float %4754)  ; Frc(value)
  %4758 = fmul fast float %4757, 0x401921FB60000000
  %4759 = call float @dx.op.unary.f32(i32 13, float %4758)  ; Sin(value)
  %4760 = call float @dx.op.unary.f32(i32 12, float %4758)  ; Cos(value)
  %4761 = fsub fast float -0.000000e+00, %4760
  %4762 = fmul fast float %4760, %4725
  %4763 = call float @dx.op.tertiary.f32(i32 46, float %4759, float %4726, float %4762)  ; FMad(a,b,c)
  %4764 = fmul fast float %4759, %4725
  %4765 = call float @dx.op.tertiary.f32(i32 46, float %4761, float %4726, float %4764)  ; FMad(a,b,c)
  %4766 = fadd fast float %4763, %4755
  %4767 = fadd fast float %4765, %4756
  %4768 = extractvalue %dx.types.CBufRet.f32 %4678, 3
  %4769 = bitcast float %4768 to i32
  %4770 = icmp eq i32 %4769, 0
  br i1 %4770, label %4809, label %4771

; <label>:4771                                    ; preds = %4674
  %4772 = add i32 %4769, 0
  %4773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4772, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4774 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4773, %dx.types.Handle %113, float %4766, float %4767, float undef, float undef, i32 0, i32 0, i32 undef, float %4729, float %4730, float undef, float %4733, float %4734, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4775 = extractvalue %dx.types.ResRet.f32 %4774, 0
  %4776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4777 = extractvalue %dx.types.CBufRet.f32 %4776, 1
  %4778 = extractvalue %dx.types.CBufRet.f32 %4776, 2
  %4779 = fsub fast float 1.000000e+00, %4384
  %4780 = call float @dx.op.binary.f32(i32 35, float %4779, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4781 = bitcast float %4384 to i32
  %4782 = sitofp i32 %4781 to float
  %4783 = fadd fast float %4782, 0xC1CFBF8940000000
  %4784 = fmul fast float %4778, %4783
  %4785 = fadd fast float %4784, 0x41CFBF8940000000
  %4786 = fptosi float %4785 to i32
  %4787 = bitcast i32 %4786 to float
  %4788 = bitcast float %4780 to i32
  %4789 = sitofp i32 %4788 to float
  %4790 = fadd fast float %4789, 0xC1CFBF8940000000
  %4791 = fmul fast float %4790, %4778
  %4792 = fadd fast float %4791, 0x41CFBF8940000000
  %4793 = fptosi float %4792 to i32
  %4794 = bitcast i32 %4793 to float
  %4795 = fmul fast float %4787, %4777
  %4796 = fmul fast float %4794, %4777
  %4797 = fsub fast float %4780, %4795
  %4798 = fadd fast float %4796, %4780
  %4799 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4800 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4801 = fsub fast float %4775, %4799
  %4802 = fsub fast float %4800, %4799
  %4803 = bitcast float %4802 to i32
  %4804 = sub nsw i32 2129859010, %4803
  %4805 = bitcast i32 %4804 to float
  %4806 = fmul fast float %4805, %4801
  %4807 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4808 = fcmp fast olt float %4807, 0x3F70101020000000
  br i1 %4808, label %4947, label %4809

; <label>:4809                                    ; preds = %4771, %4674
  %4810 = phi float [ %4807, %4771 ], [ %4384, %4674 ]
  %4811 = fmul fast float %4810, %4677
  %4812 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4813 = extractvalue %dx.types.CBufRet.i32 %4812, 1
  %4814 = extractvalue %dx.types.CBufRet.i32 %4812, 0
  %4815 = add i32 %4814, 0
  %4816 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4815, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4817 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4816, %dx.types.Handle %112, float %4766, float %4767, float undef, float undef, i32 0, i32 0, i32 undef, float %4729, float %4730, float undef, float %4733, float %4734, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4818 = extractvalue %dx.types.ResRet.f32 %4817, 0
  %4819 = extractvalue %dx.types.ResRet.f32 %4817, 1
  %4820 = extractvalue %dx.types.ResRet.f32 %4817, 2
  %4821 = extractvalue %dx.types.ResRet.f32 %4817, 3
  %4822 = and i32 %4813, 255
  %4823 = uitofp i32 %4822 to float
  %4824 = lshr i32 %4813, 8
  %4825 = and i32 %4824, 255
  %4826 = uitofp i32 %4825 to float
  %4827 = fmul fast float %4821, %4823
  %4828 = fadd fast float %4827, %4826
  %4829 = fmul fast float %4828, 0x3F70101000000000
  %4830 = fadd fast float %4829, 0xBFB99999A0000000
  %4831 = call float @dx.op.unary.f32(i32 7, float %4830)  ; Saturate(value)
  %4832 = fmul fast float %4831, 0x3FF1C71C80000000
  %4833 = call float @dx.op.binary.f32(i32 36, float %4829, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4834 = fsub fast float 1.000000e+00, %4832
  %4835 = call float @dx.op.unary.f32(i32 7, float %4834)  ; Saturate(value)
  %4836 = fmul fast float %4835, %4818
  %4837 = fmul fast float %4835, %4819
  %4838 = fmul fast float %4835, %4820
  %4839 = call float @dx.op.unary.f32(i32 7, float %4836)  ; Saturate(value)
  %4840 = call float @dx.op.unary.f32(i32 7, float %4837)  ; Saturate(value)
  %4841 = call float @dx.op.unary.f32(i32 7, float %4838)  ; Saturate(value)
  %4842 = fmul fast float %4832, %4818
  %4843 = fmul fast float %4832, %4819
  %4844 = fmul fast float %4832, %4820
  %4845 = fadd fast float %4842, %4833
  %4846 = fadd fast float %4843, %4833
  %4847 = fadd fast float %4844, %4833
  %4848 = call float @dx.op.unary.f32(i32 7, float %4845)  ; Saturate(value)
  %4849 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4850 = call float @dx.op.unary.f32(i32 7, float %4847)  ; Saturate(value)
  %4851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.i32 %4851, 3
  %4853 = extractvalue %dx.types.CBufRet.i32 %4851, 2
  %4854 = add i32 %4853, 0
  %4855 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4854, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4856 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4855, %dx.types.Handle %112, float %4766, float %4767, float undef, float undef, i32 0, i32 0, i32 undef, float %4729, float %4730, float undef, float %4733, float %4734, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4857 = extractvalue %dx.types.ResRet.f32 %4856, 0
  %4858 = extractvalue %dx.types.ResRet.f32 %4856, 1
  %4859 = extractvalue %dx.types.ResRet.f32 %4856, 2
  %4860 = extractvalue %dx.types.ResRet.f32 %4856, 3
  %4861 = and i32 %4852, 255
  %4862 = uitofp i32 %4861 to float
  %4863 = lshr i32 %4852, 8
  %4864 = and i32 %4863, 255
  %4865 = uitofp i32 %4864 to float
  %4866 = lshr i32 %4852, 16
  %4867 = and i32 %4866, 255
  %4868 = uitofp i32 %4867 to float
  %4869 = fmul fast float %4868, 0x3F70101000000000
  %4870 = fmul fast float %4857, %4862
  %4871 = fadd fast float %4870, %4865
  %4872 = fmul fast float %4871, 0x3F70101000000000
  %4873 = fadd fast float %4858, -5.000000e-01
  %4874 = fadd fast float %4860, -5.000000e-01
  %4875 = fmul fast float %4873, %4869
  %4876 = fmul fast float %4874, %4869
  %4877 = fadd fast float %4875, 5.000000e-01
  %4878 = fadd fast float %4876, 5.000000e-01
  %4879 = fmul fast float %4877, 2.000000e+00
  %4880 = fadd fast float %4879, -1.000000e+00
  %4881 = fmul fast float %4878, 2.000000e+00
  %4882 = fadd fast float %4881, -1.000000e+00
  %4883 = fadd fast float %4880, %4882
  %4884 = fmul fast float %4883, 5.000000e-01
  %4885 = fsub fast float %4880, %4882
  %4886 = fmul fast float %4885, 5.000000e-01
  %4887 = call float @dx.op.unary.f32(i32 6, float %4884)  ; FAbs(value)
  %4888 = fsub fast float 1.000000e+00, %4887
  %4889 = call float @dx.op.unary.f32(i32 6, float %4886)  ; FAbs(value)
  %4890 = fsub fast float %4888, %4889
  %4891 = call float @dx.op.dot3.f32(i32 55, float %4884, float %4886, float %4890, float %4884, float %4886, float %4890)  ; Dot3(ax,ay,az,bx,by,bz)
  %4892 = call float @dx.op.unary.f32(i32 25, float %4891)  ; Rsqrt(value)
  %4893 = fmul fast float %4884, %4892
  %4894 = fmul fast float %4886, %4892
  %4895 = select i1 %4722, i32 %4712, i32 %4713
  %4896 = select i1 %4720, i32 %4711, i32 %4895
  %4897 = sitofp i32 %4896 to float
  %4898 = fmul fast float %4890, %4897
  %4899 = fmul fast float %4898, %4892
  %4900 = select i1 %4722, float %4899, float %4894
  %4901 = select i1 %4722, float %4894, float %4899
  %4902 = select i1 %4720, float %4899, float %4893
  %4903 = select i1 %4720, float %4894, float %4900
  %4904 = select i1 %4720, float %4893, float %4901
  %4905 = fsub fast float %4839, %4663
  %4906 = fsub fast float %4840, %4664
  %4907 = fsub fast float %4841, %4665
  %4908 = fmul fast float %4905, %4811
  %4909 = fmul fast float %4906, %4811
  %4910 = fmul fast float %4907, %4811
  %4911 = fadd fast float %4908, %4663
  %4912 = fadd fast float %4909, %4664
  %4913 = fadd fast float %4910, %4665
  %4914 = fsub fast float %4848, %4666
  %4915 = fsub fast float %4849, %4667
  %4916 = fsub fast float %4850, %4668
  %4917 = fmul fast float %4914, %4811
  %4918 = fmul fast float %4915, %4811
  %4919 = fmul fast float %4916, %4811
  %4920 = fadd fast float %4917, %4666
  %4921 = fadd fast float %4918, %4667
  %4922 = fadd fast float %4919, %4668
  %4923 = fadd fast float %4902, %4669
  %4924 = fadd fast float %4903, %4670
  %4925 = fadd fast float %4904, %4671
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4923, float %4924, float %4925, float %4923, float %4924, float %4925)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = call float @dx.op.unary.f32(i32 25, float %4926)  ; Rsqrt(value)
  %4928 = fmul fast float %4923, %4927
  %4929 = fmul fast float %4924, %4927
  %4930 = fmul fast float %4925, %4927
  %4931 = fsub fast float %4928, %4669
  %4932 = fsub fast float %4929, %4670
  %4933 = fsub fast float %4930, %4671
  %4934 = fmul fast float %4931, %4811
  %4935 = fmul fast float %4932, %4811
  %4936 = fmul fast float %4933, %4811
  %4937 = fadd fast float %4934, %4669
  %4938 = fadd fast float %4935, %4670
  %4939 = fadd fast float %4936, %4671
  %4940 = call float @dx.op.binary.f32(i32 36, float %4673, float %4859)  ; FMin(a,b)
  %4941 = fsub fast float %4940, %4673
  %4942 = fmul fast float %4941, %4811
  %4943 = fadd fast float %4942, %4673
  %4944 = fsub fast float %4872, %4672
  %4945 = fmul fast float %4944, %4811
  %4946 = fadd fast float %4945, %4672
  br label %4947

; <label>:4947                                    ; preds = %4809, %4771, %4662, %4378
  %4948 = phi float [ %4911, %4809 ], [ %4663, %4771 ], [ %4663, %4662 ], [ %3987, %4378 ]
  %4949 = phi float [ %4912, %4809 ], [ %4664, %4771 ], [ %4664, %4662 ], [ %3988, %4378 ]
  %4950 = phi float [ %4913, %4809 ], [ %4665, %4771 ], [ %4665, %4662 ], [ %3989, %4378 ]
  %4951 = phi float [ %4920, %4809 ], [ %4666, %4771 ], [ %4666, %4662 ], [ %3972, %4378 ]
  %4952 = phi float [ %4921, %4809 ], [ %4667, %4771 ], [ %4667, %4662 ], [ %3973, %4378 ]
  %4953 = phi float [ %4922, %4809 ], [ %4668, %4771 ], [ %4668, %4662 ], [ %3974, %4378 ]
  %4954 = phi float [ %4937, %4809 ], [ %4669, %4771 ], [ %4669, %4662 ], [ %3914, %4378 ]
  %4955 = phi float [ %4938, %4809 ], [ %4670, %4771 ], [ %4670, %4662 ], [ %3915, %4378 ]
  %4956 = phi float [ %4939, %4809 ], [ %4671, %4771 ], [ %4671, %4662 ], [ %3916, %4378 ]
  %4957 = phi float [ %4946, %4809 ], [ %4672, %4771 ], [ %4672, %4662 ], [ %3975, %4378 ]
  %4958 = phi float [ %4943, %4809 ], [ %4673, %4771 ], [ %4673, %4662 ], [ %3926, %4378 ]
  %4959 = fcmp fast une float %4382, 0.000000e+00
  %4960 = fsub fast float -0.000000e+00, %236
  %4961 = fsub fast float -0.000000e+00, %237
  %4962 = fsub fast float -0.000000e+00, %238
  br i1 %4959, label %4963, label %5124

; <label>:4963                                    ; preds = %4947
  %4964 = call float @dx.op.dot3.f32(i32 55, float %4960, float %4961, float %4962, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %4965 = fmul fast float %4382, 2.500000e+00
  %4966 = call float @dx.op.unary.f32(i32 7, float %4965)  ; Saturate(value)
  %4967 = fmul fast float %4382, 0x4013FFFFE0000000
  %4968 = fadd fast float %4967, 0xBFFFFFFFE0000000
  %4969 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4970 = fmul fast float %4382, 0x4004000020000000
  %4971 = fadd fast float %4970, 0xBFF8000040000000
  %4972 = call float @dx.op.unary.f32(i32 7, float %4971)  ; Saturate(value)
  %4973 = fmul fast float %3954, 1.000000e+01
  %4974 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4975 = fmul fast float %4974, 2.000000e+00
  %4976 = fsub fast float 3.000000e+00, %4975
  %4977 = fmul fast float %4974, %4974
  %4978 = fmul fast float %4977, %4976
  %4979 = fsub fast float 1.000000e+00, %4978
  %4980 = fsub fast float 0x3FE3333340000000, %4957
  %4981 = fmul fast float %4980, 0x400AAAAAA0000000
  %4982 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4983 = fmul fast float %4979, %4982
  %4984 = fmul fast float %4948, 0x3FEA2B8620000000
  %4985 = fmul fast float %4949, 0x3FEA2B8620000000
  %4986 = fmul fast float %4950, 0x3FEA2B8620000000
  %4987 = fadd fast float %4984, 0x3FC81DFBA0000000
  %4988 = fmul fast float %4987, %4948
  %4989 = fadd fast float %4988, 0x3F910E6020000000
  %4990 = fadd fast float %4985, 0x3FC81DFBA0000000
  %4991 = fmul fast float %4990, %4949
  %4992 = fadd fast float %4991, 0x3F910E6020000000
  %4993 = fadd fast float %4986, 0x3FC81DFBA0000000
  %4994 = fmul fast float %4993, %4950
  %4995 = fadd fast float %4994, 0x3F910E6020000000
  %4996 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4997 = call float @dx.op.unary.f32(i32 7, float %4992)  ; Saturate(value)
  %4998 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4999 = fsub fast float %4996, %4948
  %5000 = fsub fast float %4997, %4949
  %5001 = fsub fast float %4998, %4950
  %5002 = fmul fast float %4999, %4966
  %5003 = fmul fast float %5002, %4983
  %5004 = fmul fast float %5000, %4966
  %5005 = fmul fast float %5004, %4983
  %5006 = fmul fast float %5001, %4966
  %5007 = fmul fast float %5006, %4983
  %5008 = fadd fast float %5003, %4948
  %5009 = fadd fast float %5005, %4949
  %5010 = fadd fast float %5007, %4950
  %5011 = fmul fast float %4958, %4958
  %5012 = fmul fast float %5011, %5011
  %5013 = fadd fast float %4969, 1.000000e+00
  %5014 = fsub fast float %5013, %4983
  %5015 = call float @dx.op.unary.f32(i32 7, float %5014)  ; Saturate(value)
  %5016 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5017 = call float @dx.op.unary.f32(i32 7, float %5016)  ; Saturate(value)
  %5018 = fsub fast float 1.000000e+00, %5012
  %5019 = call float @dx.op.binary.f32(i32 36, float %5015, float %5018)  ; FMin(a,b)
  %5020 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %5021 = call float @dx.op.binary.f32(i32 35, float %5019, float %5020)  ; FMax(a,b)
  %5022 = fadd fast float %5017, 0xBFE4CCCCC0000000
  %5023 = fmul fast float %5022, 0x4006DB6DA0000000
  %5024 = call float @dx.op.unary.f32(i32 7, float %5023)  ; Saturate(value)
  %5025 = fmul fast float %5024, 2.000000e+00
  %5026 = fsub fast float 3.000000e+00, %5025
  %5027 = bitcast float %4951 to i32
  %5028 = ashr i32 %5027, 1
  %5029 = add nsw i32 %5028, 532487669
  %5030 = bitcast i32 %5029 to float
  %5031 = fsub fast float 1.000000e+00, %5030
  %5032 = bitcast float %5031 to i32
  %5033 = sub nsw i32 2129859010, %5032
  %5034 = bitcast i32 %5033 to float
  %5035 = fmul fast float %5034, 2.000000e+00
  %5036 = bitcast float %4952 to i32
  %5037 = ashr i32 %5036, 1
  %5038 = add nsw i32 %5037, 532487669
  %5039 = bitcast i32 %5038 to float
  %5040 = fsub fast float 1.000000e+00, %5039
  %5041 = bitcast float %5040 to i32
  %5042 = sub nsw i32 2129859010, %5041
  %5043 = bitcast i32 %5042 to float
  %5044 = fmul fast float %5043, 2.000000e+00
  %5045 = bitcast float %4953 to i32
  %5046 = ashr i32 %5045, 1
  %5047 = add nsw i32 %5046, 532487669
  %5048 = bitcast i32 %5047 to float
  %5049 = fsub fast float 1.000000e+00, %5048
  %5050 = bitcast float %5049 to i32
  %5051 = sub nsw i32 2129859010, %5050
  %5052 = bitcast i32 %5051 to float
  %5053 = fmul fast float %5052, 2.000000e+00
  %5054 = fsub fast float 0x4002A9FBE0000000, %5035
  %5055 = fadd fast float %5035, 0x3FD54FDF00000000
  %5056 = bitcast float %5055 to i32
  %5057 = sub nsw i32 2129859010, %5056
  %5058 = bitcast i32 %5057 to float
  %5059 = fmul fast float %5058, %5054
  %5060 = fmul fast float %5059, %5059
  %5061 = fsub fast float 0x4002A9FBE0000000, %5044
  %5062 = fadd fast float %5044, 0x3FD54FDF00000000
  %5063 = bitcast float %5062 to i32
  %5064 = sub nsw i32 2129859010, %5063
  %5065 = bitcast i32 %5064 to float
  %5066 = fmul fast float %5065, %5061
  %5067 = fmul fast float %5066, %5066
  %5068 = fsub fast float 0x4002A9FBE0000000, %5053
  %5069 = fadd fast float %5053, 0x3FD54FDF00000000
  %5070 = bitcast float %5069 to i32
  %5071 = sub nsw i32 2129859010, %5070
  %5072 = bitcast i32 %5071 to float
  %5073 = fmul fast float %5072, %5068
  %5074 = fmul fast float %5073, %5073
  %5075 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5060)  ; FMax(a,b)
  %5076 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5067)  ; FMax(a,b)
  %5077 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5074)  ; FMax(a,b)
  %5078 = fsub fast float 1.000000e+00, %4964
  %5079 = fadd fast float %5078, %4979
  %5080 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5081 = fsub fast float 1.000000e+00, %4363
  %5082 = fmul fast float %5021, %5081
  %5083 = fmul fast float %5024, %5024
  %5084 = fmul fast float %5083, %5082
  %5085 = fmul fast float %5084, %5026
  %5086 = fmul fast float %5081, 0xBFE99999A0000000
  %5087 = fmul fast float %5086, %4966
  %5088 = fmul fast float %5087, %4983
  %5089 = fadd fast float %5088, 1.000000e+00
  %5090 = fadd fast float %4957, -1.000000e+00
  %5091 = fmul fast float %5089, %5090
  %5092 = fadd fast float %5091, 1.000000e+00
  %5093 = fsub fast float %5075, %4951
  %5094 = fsub fast float %5076, %4952
  %5095 = fsub fast float %5077, %4953
  %5096 = fmul fast float %5085, %5093
  %5097 = fmul fast float %5085, %5094
  %5098 = fmul fast float %5085, %5095
  %5099 = fadd fast float %5096, %4951
  %5100 = fadd fast float %5097, %4952
  %5101 = fadd fast float %5098, %4953
  %5102 = fsub fast float %123, %4954
  %5103 = fsub fast float %124, %4955
  %5104 = fsub fast float %125, %4956
  %5105 = fmul fast float %5085, %5102
  %5106 = fmul fast float %5085, %5103
  %5107 = fmul fast float %5085, %5104
  %5108 = fadd fast float %5105, %4954
  %5109 = fadd fast float %5106, %4955
  %5110 = fadd fast float %5107, %4956
  %5111 = fmul fast float %5085, %5080
  %5112 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5113 = fsub fast float 1.000000e+00, %5112
  %5114 = fmul fast float %5111, %5113
  %5115 = fadd fast float %5114, %5112
  %5116 = fsub fast float 1.000000e+00, %4958
  %5117 = fmul fast float %5085, %5116
  %5118 = fadd fast float %5117, %4958
  %5119 = call float @dx.op.dot3.f32(i32 55, float %5108, float %5109, float %5110, float %5108, float %5109, float %5110)  ; Dot3(ax,ay,az,bx,by,bz)
  %5120 = call float @dx.op.unary.f32(i32 25, float %5119)  ; Rsqrt(value)
  %5121 = fmul fast float %5108, %5120
  %5122 = fmul fast float %5109, %5120
  %5123 = fmul fast float %5110, %5120
  br label %5124

; <label>:5124                                    ; preds = %4963, %4947
  %5125 = phi float [ %5008, %4963 ], [ %4948, %4947 ]
  %5126 = phi float [ %5009, %4963 ], [ %4949, %4947 ]
  %5127 = phi float [ %5010, %4963 ], [ %4950, %4947 ]
  %5128 = phi float [ %5099, %4963 ], [ %4951, %4947 ]
  %5129 = phi float [ %5100, %4963 ], [ %4952, %4947 ]
  %5130 = phi float [ %5101, %4963 ], [ %4953, %4947 ]
  %5131 = phi float [ %5121, %4963 ], [ %4954, %4947 ]
  %5132 = phi float [ %5122, %4963 ], [ %4955, %4947 ]
  %5133 = phi float [ %5123, %4963 ], [ %4956, %4947 ]
  %5134 = phi float [ %5115, %4963 ], [ %4957, %4947 ]
  %5135 = phi float [ %5118, %4963 ], [ %4958, %4947 ]
  %5136 = fsub fast float -0.000000e+00, %205
  %5137 = select i1 %307, float 0.000000e+00, float %5130
  %5138 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %4960, float %4961, float %4962)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5140 = call float @dx.op.dot3.f32(i32 55, float %236, float %237, float %238, float %5131, float %5132, float %5133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5141 = fmul fast float %5140, 2.000000e+00
  %5142 = fmul fast float %5141, %5131
  %5143 = fmul fast float %5141, %5132
  %5144 = fmul fast float %5141, %5133
  %5145 = fsub fast float %236, %5142
  %5146 = fsub fast float %237, %5143
  %5147 = fsub fast float %238, %5144
  %5148 = call float @dx.op.binary.f32(i32 36, float %5135, float 1.000000e+00)  ; FMin(a,b)
  %5149 = fsub fast float 1.000000e+00, %5148
  %5150 = bitcast float %5149 to i32
  %5151 = ashr i32 %5150, 1
  %5152 = add nsw i32 %5151, 532487669
  %5153 = bitcast i32 %5152 to float
  %5154 = fsub fast float 1.000000e+00, %5134
  %5155 = call float @dx.op.binary.f32(i32 35, float %5154, float 0x3F847AE140000000)  ; FMax(a,b)
  %5156 = fmul fast float %5155, %5155
  %5157 = fmul fast float %5156, %5156
  %5158 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5153, float %5157, float %5158, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5160 = extractvalue %dx.types.ResRet.f32 %5159, 0
  %5161 = fsub fast float 1.000000e+00, %5135
  %5162 = bitcast float %5161 to i32
  %5163 = sub nsw i32 2129859010, %5162
  %5164 = bitcast i32 %5163 to float
  %5165 = fsub fast float 1.000000e+00, %83
  %5166 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5167 = call float @dx.op.binary.f32(i32 35, float %5166, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5168 = fdiv fast float %5165, %5167
  %5169 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5170 = call float @dx.op.unary.f32(i32 7, float %5169)  ; Saturate(value)
  %5171 = fmul fast float %5170, 5.000000e-01
  %5172 = fadd fast float %5171, 5.000000e-01
  %5173 = fmul fast float %5172, %83
  %5174 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %5175 = call float @dx.op.unary.f32(i32 7, float %5174)  ; Saturate(value)
  %5176 = fmul fast float %5175, %5168
  %5177 = fadd fast float %5173, %5176
  %5178 = fsub fast float 5.000000e-01, %5171
  %5179 = fmul fast float %5178, %5125
  %5180 = fmul fast float %5178, %5126
  %5181 = fmul fast float %5178, %5127
  %5182 = fadd fast float %5177, %5179
  %5183 = fadd fast float %5177, %5180
  %5184 = fadd fast float %5177, %5181
  %5185 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5146, float %5147, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5186 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5187 = fmul fast float %5186, 5.000000e-01
  %5188 = fadd fast float %5187, 5.000000e-01
  %5189 = fmul fast float %5188, %83
  %5190 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5146, float %5147, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %5191 = call float @dx.op.unary.f32(i32 7, float %5190)  ; Saturate(value)
  %5192 = fmul fast float %5191, %5168
  %5193 = fadd fast float %5189, %5192
  %5194 = fsub fast float 5.000000e-01, %5187
  %5195 = fmul fast float %5194, %5125
  %5196 = fmul fast float %5194, %5126
  %5197 = fmul fast float %5194, %5127
  %5198 = fadd fast float %5193, %5195
  %5199 = fadd fast float %5193, %5196
  %5200 = fadd fast float %5193, %5197
  %5201 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5203 = extractvalue %dx.types.CBufRet.f32 %5202, 0
  %5204 = call float @dx.op.binary.f32(i32 36, float %5125, float %5203)  ; FMin(a,b)
  %5205 = fmul fast float %5204, %5149
  %5206 = fsub fast float 1.000000e+00, %5205
  %5207 = bitcast float %5206 to i32
  %5208 = sub nsw i32 2129859010, %5207
  %5209 = bitcast i32 %5208 to float
  %5210 = call float @dx.op.binary.f32(i32 36, float %5126, float %5203)  ; FMin(a,b)
  %5211 = fmul fast float %5210, %5149
  %5212 = fsub fast float 1.000000e+00, %5211
  %5213 = bitcast float %5212 to i32
  %5214 = sub nsw i32 2129859010, %5213
  %5215 = bitcast i32 %5214 to float
  %5216 = call float @dx.op.binary.f32(i32 36, float %5127, float %5203)  ; FMin(a,b)
  %5217 = fmul fast float %5216, %5149
  %5218 = fsub fast float 1.000000e+00, %5217
  %5219 = bitcast float %5218 to i32
  %5220 = sub nsw i32 2129859010, %5219
  %5221 = bitcast i32 %5220 to float
  %5222 = fmul fast float %5148, %84
  %5223 = fmul fast float %5222, %5182
  %5224 = fmul fast float %5223, %5209
  %5225 = fmul fast float %5148, %85
  %5226 = fmul fast float %5225, %5183
  %5227 = fmul fast float %5226, %5215
  %5228 = fmul fast float %5148, %86
  %5229 = fmul fast float %5228, %5184
  %5230 = fmul fast float %5229, %5221
  %5231 = call float @dx.op.binary.f32(i32 36, float %5128, float %5203)  ; FMin(a,b)
  %5232 = fmul fast float %5231, %5149
  %5233 = fsub fast float 1.000000e+00, %5232
  %5234 = bitcast float %5233 to i32
  %5235 = sub nsw i32 2129859010, %5234
  %5236 = bitcast i32 %5235 to float
  %5237 = call float @dx.op.binary.f32(i32 36, float %5129, float %5203)  ; FMin(a,b)
  %5238 = fmul fast float %5237, %5149
  %5239 = fsub fast float 1.000000e+00, %5238
  %5240 = bitcast float %5239 to i32
  %5241 = sub nsw i32 2129859010, %5240
  %5242 = bitcast i32 %5241 to float
  %5243 = call float @dx.op.binary.f32(i32 36, float %5137, float %5203)  ; FMin(a,b)
  %5244 = fmul fast float %5243, %5149
  %5245 = fsub fast float 1.000000e+00, %5244
  %5246 = bitcast float %5245 to i32
  %5247 = sub nsw i32 2129859010, %5246
  %5248 = bitcast i32 %5247 to float
  %5249 = fmul fast float %5222, %5198
  %5250 = fmul fast float %5249, %5236
  %5251 = fmul fast float %5225, %5199
  %5252 = fmul fast float %5251, %5242
  %5253 = fmul fast float %5228, %5200
  %5254 = fmul fast float %5253, %5248
  %5255 = call float @dx.op.dot3.f32(i32 55, float %5224, float %5227, float %5230, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5256 = select i1 %307, float 0.000000e+00, float %5224
  %5257 = select i1 %307, float %5255, float %5227
  %5258 = select i1 %307, float 0.000000e+00, float %5230
  %5259 = call float @dx.op.dot3.f32(i32 55, float %5250, float %5252, float %5254, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5260 = select i1 %307, float 0.000000e+00, float %5250
  %5261 = select i1 %307, float %5259, float %5252
  %5262 = select i1 %307, float 0.000000e+00, float %5254
  %5263 = fmul fast float %5139, 9.843750e-01
  %5264 = fmul fast float %5134, 9.843750e-01
  %5265 = fadd fast float %5263, 7.812500e-03
  %5266 = fadd fast float %5264, 7.812500e-03
  %5267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %5265, float %5266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5268 = extractvalue %dx.types.ResRet.f32 %5267, 2
  %5269 = extractvalue %dx.types.ResRet.f32 %5267, 3
  %5270 = fmul fast float %5268, %5128
  %5271 = fmul fast float %5268, %5129
  %5272 = fmul fast float %5268, %5137
  %5273 = fadd fast float %5270, %5269
  %5274 = fadd fast float %5271, %5269
  %5275 = fadd fast float %5272, %5269
  %5276 = fcmp fast ogt float %3927, 0.000000e+00
  br i1 %5276, label %5277, label %5303

; <label>:5277                                    ; preds = %5124
  %5278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3927, float %5139, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5279 = extractvalue %dx.types.ResRet.f32 %5278, 0
  %5280 = extractvalue %dx.types.ResRet.f32 %5278, 1
  %5281 = extractvalue %dx.types.ResRet.f32 %5278, 2
  %5282 = fadd fast float %5279, -5.000000e-01
  %5283 = fadd fast float %5280, -5.000000e-01
  %5284 = fadd fast float %5281, -5.000000e-01
  %5285 = fsub fast float 1.000000e+00, %5128
  %5286 = fsub fast float 1.000000e+00, %5129
  %5287 = fsub fast float 1.000000e+00, %5137
  %5288 = fmul fast float %5128, 4.000000e+00
  %5289 = fmul fast float %5288, %5285
  %5290 = fmul fast float %5289, %5282
  %5291 = fmul fast float %5129, 4.000000e+00
  %5292 = fmul fast float %5291, %5286
  %5293 = fmul fast float %5292, %5283
  %5294 = fmul fast float %5137, 4.000000e+00
  %5295 = fmul fast float %5294, %5287
  %5296 = fmul fast float %5295, %5284
  %5297 = fadd fast float %5290, %5273
  %5298 = fadd fast float %5293, %5274
  %5299 = fadd fast float %5296, %5275
  %5300 = call float @dx.op.unary.f32(i32 7, float %5297)  ; Saturate(value)
  %5301 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5302 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  br label %5303

; <label>:5303                                    ; preds = %5277, %5124
  %5304 = phi float [ %5300, %5277 ], [ %5273, %5124 ]
  %5305 = phi float [ %5301, %5277 ], [ %5274, %5124 ]
  %5306 = phi float [ %5302, %5277 ], [ %5275, %5124 ]
  %5307 = call float @dx.op.binary.f32(i32 35, float %5305, float %5306)  ; FMax(a,b)
  %5308 = call float @dx.op.binary.f32(i32 35, float %5304, float %5307)  ; FMax(a,b)
  %5309 = fsub fast float 1.000000e+00, %5308
  %5310 = fmul fast float %5308, %5134
  %5311 = fadd fast float %5310, %5134
  %5312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5313 = extractvalue %dx.types.CBufRet.f32 %5312, 2
  %5314 = extractvalue %dx.types.CBufRet.f32 %5312, 3
  %5315 = fmul fast float %5311, %5313
  %5316 = fadd fast float %5315, %5314
  %5317 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5318 = fsub fast float 1.000000e+00, %5160
  %5319 = fadd fast float %5318, %5317
  %5320 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5321 = fcmp fast olt float %5320, 1.000000e+00
  br i1 %5321, label %5322, label %5798

; <label>:5322                                    ; preds = %5303
  %5323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5324 = extractvalue %dx.types.CBufRet.f32 %5323, 2
  %5325 = extractvalue %dx.types.CBufRet.f32 %5323, 3
  %5326 = fmul fast float %5324, %116
  %5327 = fmul fast float %5325, %117
  %5328 = fptoui float %5326 to i32
  %5329 = fptoui float %5327 to i32
  %5330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5331 = extractvalue %dx.types.CBufRet.f32 %5330, 0
  %5332 = extractvalue %dx.types.CBufRet.f32 %5330, 2
  %5333 = extractvalue %dx.types.CBufRet.f32 %5330, 3
  %5334 = fadd fast float %103, -4.000000e+00
  %5335 = call float @dx.op.binary.f32(i32 35, float %5334, float 0.000000e+00)  ; FMax(a,b)
  %5336 = fadd fast float %5335, %5331
  %5337 = fmul fast float %5336, %5332
  %5338 = call float @dx.op.unary.f32(i32 23, float %5337)  ; Log(value)
  %5339 = fmul fast float %5338, %5333
  %5340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5341 = extractvalue %dx.types.CBufRet.f32 %5340, 2
  %5342 = fmul fast float %5339, %5341
  %5343 = call float @dx.op.unary.f32(i32 7, float %5342)  ; Saturate(value)
  %5344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5345 = extractvalue %dx.types.CBufRet.i32 %5344, 1
  %5346 = add i32 %5345, -1
  %5347 = uitofp i32 %5345 to float
  %5348 = fmul fast float %5347, %5343
  %5349 = fptoui float %5348 to i32
  %5350 = call i32 @dx.op.binary.i32(i32 40, i32 %5349, i32 %5346)  ; UMin(a,b)
  %5351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5352 = extractvalue %dx.types.CBufRet.i32 %5351, 2
  %5353 = extractvalue %dx.types.CBufRet.i32 %5351, 3
  %5354 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5329, i32 %5352, i32 %5328)  ; UMad(a,b,c)
  %5355 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5350, i32 %5353, i32 %5354)  ; UMad(a,b,c)
  %5356 = call float @dx.op.binary.f32(i32 35, float %103, float 0.000000e+00)  ; FMax(a,b)
  %5357 = fptoui float %5356 to i32
  %5358 = lshr i32 %5357, 5
  %5359 = call i32 @dx.op.binary.i32(i32 40, i32 %5358, i32 8191)  ; UMin(a,b)
  %5360 = fsub fast float %4353, %205
  %5361 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  %5362 = fcmp fast ogt float %5361, 0.000000e+00
  %5363 = fcmp fast ogt float %5147, 0.000000e+00
  %5364 = and i1 %5363, %5362
  br i1 %5364, label %5365, label %5394

; <label>:5365                                    ; preds = %5322
  %5366 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5146, float %5147, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5367 = call float @dx.op.binary.f32(i32 35, float %5366, float -1.000000e+00)  ; FMax(a,b)
  %5368 = call float @dx.op.binary.f32(i32 36, float %5367, float 1.000000e+00)  ; FMin(a,b)
  %5369 = fmul fast float %5368, %5368
  %5370 = fsub fast float 1.000000e+00, %5369
  %5371 = fmul fast float %5370, 0x3FFC6E2300000000
  %5372 = fsub fast float 1.000000e+00, %5371
  %5373 = fcmp fast ogt float %5372, 0.000000e+00
  %5374 = call float @dx.op.unary.f32(i32 24, float %5372)  ; Sqrt(value)
  %5375 = fsub fast float 1.000000e+00, %5374
  %5376 = call float @dx.op.unary.f32(i32 23, float %5375)  ; Log(value)
  %5377 = fmul fast float %5376, 5.000000e+00
  %5378 = call float @dx.op.unary.f32(i32 21, float %5377)  ; Exp(value)
  %5379 = fmul fast float %5378, 0x3FEF591A60000000
  %5380 = fadd fast float %5379, 0x3F94DCB540000000
  %5381 = select i1 %5373, float %5380, float 1.000000e+00
  %5382 = fcmp fast oge float %5381, 1.000000e+00
  %5383 = fmul fast float %5366, 2.000000e+00
  %5384 = fadd fast float %5383, %5147
  %5385 = select i1 %5382, float %5384, float %5147
  %5386 = fsub fast float %5385, %5147
  %5387 = fmul fast float %5386, %5361
  %5388 = fadd fast float %5387, %5147
  %5389 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5146, float %5388, float %5145, float %5146, float %5388)  ; Dot3(ax,ay,az,bx,by,bz)
  %5390 = call float @dx.op.unary.f32(i32 25, float %5389)  ; Rsqrt(value)
  %5391 = fmul fast float %5390, %5145
  %5392 = fmul fast float %5390, %5146
  %5393 = fmul fast float %5388, %5390
  br label %5394

; <label>:5394                                    ; preds = %5365, %5322
  %5395 = phi float [ %5391, %5365 ], [ %5145, %5322 ]
  %5396 = phi float [ %5392, %5365 ], [ %5146, %5322 ]
  %5397 = phi float [ %5393, %5365 ], [ %5147, %5322 ]
  %5398 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5399 = extractvalue %dx.types.CBufRet.i32 %5398, 2
  %5400 = add nsw i32 %5399, -1
  %5401 = call i32 @dx.op.binary.i32(i32 37, i32 %5400, i32 0)  ; IMax(a,b)
  %5402 = shl i32 %5359, 2
  %5403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5402, i32 undef)  ; BufferLoad(srv,index,wot)
  %5404 = extractvalue %dx.types.ResRet.i32 %5403, 0
  %5405 = lshr i32 %5404, 16
  %5406 = and i32 %5404, 65535
  %5407 = lshr i32 %5404, 21
  %5408 = lshr i32 %5406, 5
  %5409 = call i32 @dx.op.binary.i32(i32 40, i32 %5408, i32 %5401)  ; UMin(a,b)
  %5410 = icmp ugt i32 %5407, %5409
  br i1 %5410, label %5774, label %5411

; <label>:5411                                    ; preds = %5394
  br label %5412

; <label>:5412                                    ; preds = %5766, %5411
  %5413 = phi float [ %5767, %5766 ], [ 0.000000e+00, %5411 ]
  %5414 = phi float [ %5768, %5766 ], [ 0.000000e+00, %5411 ]
  %5415 = phi float [ %5769, %5766 ], [ 0.000000e+00, %5411 ]
  %5416 = phi float [ %5770, %5766 ], [ 1.000000e+00, %5411 ]
  %5417 = phi i32 [ %5771, %5766 ], [ %5407, %5411 ]
  %5418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5419 = extractvalue %dx.types.CBufRet.i32 %5418, 2
  %5420 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5355, i32 %5419, i32 %5417)  ; UMad(a,b,c)
  %5421 = shl i32 %5420, 2
  %5422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5421, i32 undef)  ; BufferLoad(srv,index,wot)
  %5423 = extractvalue %dx.types.ResRet.i32 %5422, 0
  %5424 = shl i32 %5417, 5
  %5425 = sub nsw i32 %5405, %5424
  %5426 = call i32 @dx.op.binary.i32(i32 37, i32 %5425, i32 0)  ; IMax(a,b)
  %5427 = call i32 @dx.op.binary.i32(i32 38, i32 %5426, i32 31)  ; IMin(a,b)
  %5428 = sub nsw i32 1, %5405
  %5429 = add nsw i32 %5428, %5406
  %5430 = call i32 @dx.op.binary.i32(i32 37, i32 %5429, i32 0)  ; IMax(a,b)
  %5431 = call i32 @dx.op.binary.i32(i32 38, i32 %5430, i32 32)  ; IMin(a,b)
  %5432 = and i32 %5431, 31
  %5433 = shl i32 -1, %5432
  %5434 = xor i32 %5433, -1
  %5435 = and i32 %5427, 31
  %5436 = shl i32 %5434, %5435
  %5437 = icmp eq i32 %5431, 32
  %5438 = select i1 %5437, i32 -1, i32 %5436
  %5439 = and i32 %5438, %5423
  %5440 = icmp eq i32 %5439, 0
  br i1 %5440, label %5766, label %5441

; <label>:5441                                    ; preds = %5412
  br label %5442

; <label>:5442                                    ; preds = %5549, %5441
  %5443 = phi float [ %5550, %5549 ], [ %5413, %5441 ]
  %5444 = phi float [ %5551, %5549 ], [ %5414, %5441 ]
  %5445 = phi float [ %5552, %5549 ], [ %5415, %5441 ]
  %5446 = phi float [ %5553, %5549 ], [ %5416, %5441 ]
  %5447 = phi i32 [ %5452, %5549 ], [ %5439, %5441 ]
  %5448 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5447)  ; FirstbitLo(value)
  %5449 = add i32 %5448, %5424
  %5450 = and i32 %5448, 31
  %5451 = shl i32 1, %5450
  %5452 = xor i32 %5451, %5447
  %5453 = mul i32 %5449, 72
  %5454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5453, i32 undef)  ; BufferLoad(srv,index,wot)
  %5455 = extractvalue %dx.types.ResRet.f32 %5454, 0
  %5456 = extractvalue %dx.types.ResRet.f32 %5454, 1
  %5457 = extractvalue %dx.types.ResRet.f32 %5454, 2
  %5458 = add i32 %5453, 12
  %5459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5458, i32 undef)  ; BufferLoad(srv,index,wot)
  %5460 = extractvalue %dx.types.ResRet.i32 %5459, 0
  %5461 = add i32 %5453, 16
  %5462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5461, i32 undef)  ; BufferLoad(srv,index,wot)
  %5463 = extractvalue %dx.types.ResRet.f32 %5462, 0
  %5464 = extractvalue %dx.types.ResRet.f32 %5462, 1
  %5465 = extractvalue %dx.types.ResRet.f32 %5462, 2
  %5466 = add i32 %5453, 28
  %5467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5466, i32 undef)  ; BufferLoad(srv,index,wot)
  %5468 = extractvalue %dx.types.ResRet.f32 %5467, 0
  %5469 = add i32 %5453, 32
  %5470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5469, i32 undef)  ; BufferLoad(srv,index,wot)
  %5471 = extractvalue %dx.types.ResRet.f32 %5470, 0
  %5472 = extractvalue %dx.types.ResRet.f32 %5470, 1
  %5473 = extractvalue %dx.types.ResRet.f32 %5470, 2
  %5474 = extractvalue %dx.types.ResRet.f32 %5470, 3
  %5475 = add i32 %5453, 48
  %5476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5475, i32 undef)  ; BufferLoad(srv,index,wot)
  %5477 = extractvalue %dx.types.ResRet.f32 %5476, 0
  %5478 = extractvalue %dx.types.ResRet.f32 %5476, 1
  %5479 = add i32 %5453, 56
  %5480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5479, i32 undef)  ; BufferLoad(srv,index,wot)
  %5481 = extractvalue %dx.types.ResRet.f32 %5480, 0
  %5482 = extractvalue %dx.types.ResRet.f32 %5480, 1
  %5483 = add i32 %5453, 64
  %5484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5483, i32 undef)  ; BufferLoad(srv,index,wot)
  %5485 = extractvalue %dx.types.ResRet.f32 %5484, 0
  %5486 = extractvalue %dx.types.ResRet.f32 %5484, 1
  %5487 = mul i32 %5449, 60
  %5488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5487, i32 undef)  ; BufferLoad(srv,index,wot)
  %5489 = extractvalue %dx.types.ResRet.f32 %5488, 0
  %5490 = extractvalue %dx.types.ResRet.f32 %5488, 1
  %5491 = extractvalue %dx.types.ResRet.f32 %5488, 2
  %5492 = add i32 %5487, 12
  %5493 = add i32 %5487, 48
  %5494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5493, i32 undef)  ; BufferLoad(srv,index,wot)
  %5495 = extractvalue %dx.types.ResRet.f32 %5494, 0
  %5496 = extractvalue %dx.types.ResRet.f32 %5494, 1
  %5497 = extractvalue %dx.types.ResRet.f32 %5494, 2
  %5498 = and i32 %5460, 32767
  %5499 = bitcast float %5455 to i32
  %5500 = icmp eq i32 %5499, -1
  %5501 = bitcast float %5456 to i32
  %5502 = and i32 %5460, 32768
  %5503 = icmp ne i32 %5502, 0
  %5504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5505 = extractvalue %dx.types.CBufRet.f32 %5504, 0
  %5506 = extractvalue %dx.types.CBufRet.f32 %5504, 1
  %5507 = extractvalue %dx.types.CBufRet.f32 %5504, 2
  %5508 = fsub fast float %5489, %5505
  %5509 = fsub fast float %5490, %5506
  %5510 = fsub fast float %5491, %5507
  %5511 = fsub fast float %203, %5508
  %5512 = fsub fast float %204, %5509
  %5513 = fsub fast float %205, %5510
  %5514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5492, i32 undef)  ; BufferLoad(srv,index,wot)
  %5515 = extractvalue %dx.types.ResRet.f32 %5514, 0
  %5516 = extractvalue %dx.types.ResRet.f32 %5514, 1
  %5517 = extractvalue %dx.types.ResRet.f32 %5514, 2
  %5518 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float %5515, float %5516, float %5517)  ; Dot3(ax,ay,az,bx,by,bz)
  %5519 = add i32 %5487, 24
  %5520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5519, i32 undef)  ; BufferLoad(srv,index,wot)
  %5521 = extractvalue %dx.types.ResRet.f32 %5520, 0
  %5522 = extractvalue %dx.types.ResRet.f32 %5520, 1
  %5523 = extractvalue %dx.types.ResRet.f32 %5520, 2
  %5524 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float %5521, float %5522, float %5523)  ; Dot3(ax,ay,az,bx,by,bz)
  %5525 = add i32 %5487, 36
  %5526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5525, i32 undef)  ; BufferLoad(srv,index,wot)
  %5527 = extractvalue %dx.types.ResRet.f32 %5526, 0
  %5528 = extractvalue %dx.types.ResRet.f32 %5526, 1
  %5529 = extractvalue %dx.types.ResRet.f32 %5526, 2
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float %5527, float %5528, float %5529)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = call float @dx.op.unary.f32(i32 6, float %5518)  ; FAbs(value)
  %5532 = call float @dx.op.unary.f32(i32 6, float %5524)  ; FAbs(value)
  %5533 = call float @dx.op.unary.f32(i32 6, float %5530)  ; FAbs(value)
  %5534 = fsub fast float %5495, %5531
  %5535 = fsub fast float %5496, %5532
  %5536 = fsub fast float %5497, %5533
  %5537 = fmul fast float %5534, %5463
  %5538 = fmul fast float %5535, %5464
  %5539 = fmul fast float %5536, %5465
  %5540 = call float @dx.op.binary.f32(i32 36, float %5538, float %5539)  ; FMin(a,b)
  %5541 = call float @dx.op.binary.f32(i32 36, float %5537, float %5540)  ; FMin(a,b)
  %5542 = call float @dx.op.unary.f32(i32 7, float %5541)  ; Saturate(value)
  %5543 = call float @dx.op.binary.f32(i32 36, float %5446, float %5542)  ; FMin(a,b)
  %5544 = uitofp i1 %5503 to float
  %5545 = fadd fast float %5361, 1.000000e+00
  %5546 = fsub fast float %5545, %5544
  %5547 = fmul fast float %5543, %5546
  %5548 = fcmp fast ogt float %5547, 0.000000e+00
  br i1 %5548, label %5555, label %5549

; <label>:5549                                    ; preds = %5697, %5442
  %5550 = phi float [ %5761, %5697 ], [ %5443, %5442 ]
  %5551 = phi float [ %5762, %5697 ], [ %5444, %5442 ]
  %5552 = phi float [ %5763, %5697 ], [ %5445, %5442 ]
  %5553 = phi float [ %5764, %5697 ], [ %5446, %5442 ]
  %5554 = icmp eq i32 %5447, %5451
  br i1 %5554, label %5765, label %5442

; <label>:5555                                    ; preds = %5442
  br i1 %5500, label %5613, label %5556

; <label>:5556                                    ; preds = %5555
  %5557 = fsub fast float -0.000000e+00, %5515
  %5558 = fsub fast float -0.000000e+00, %5516
  %5559 = fsub fast float -0.000000e+00, %5517
  %5560 = call float @dx.op.dot3.f32(i32 55, float %5395, float %5396, float %5397, float %5557, float %5558, float %5559)  ; Dot3(ax,ay,az,bx,by,bz)
  %5561 = fsub fast float -0.000000e+00, %5560
  %5562 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float %5557, float %5558, float %5559)  ; Dot3(ax,ay,az,bx,by,bz)
  %5563 = fadd fast float %5562, %5478
  %5564 = fadd fast float %5477, %5562
  %5565 = fsub fast float -0.000000e+00, %5564
  %5566 = fcmp ogt float %5560, -0.000000e+00
  %5567 = select i1 %5566, float %5565, float %5563
  %5568 = call float @dx.op.unary.f32(i32 6, float %5561)  ; FAbs(value)
  %5569 = fdiv fast float 1.000000e+00, %5568
  %5570 = fmul fast float %5567, %5569
  %5571 = call float @dx.op.binary.f32(i32 35, float %5570, float 0.000000e+00)  ; FMax(a,b)
  %5572 = fsub fast float -0.000000e+00, %5521
  %5573 = fsub fast float -0.000000e+00, %5522
  %5574 = fsub fast float -0.000000e+00, %5523
  %5575 = call float @dx.op.dot3.f32(i32 55, float %5395, float %5396, float %5397, float %5572, float %5573, float %5574)  ; Dot3(ax,ay,az,bx,by,bz)
  %5576 = fsub fast float -0.000000e+00, %5575
  %5577 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float %5572, float %5573, float %5574)  ; Dot3(ax,ay,az,bx,by,bz)
  %5578 = fadd fast float %5577, %5482
  %5579 = fadd fast float %5481, %5577
  %5580 = fsub fast float -0.000000e+00, %5579
  %5581 = fcmp ogt float %5575, -0.000000e+00
  %5582 = select i1 %5581, float %5580, float %5578
  %5583 = call float @dx.op.unary.f32(i32 6, float %5576)  ; FAbs(value)
  %5584 = fdiv fast float 1.000000e+00, %5583
  %5585 = fmul fast float %5582, %5584
  %5586 = call float @dx.op.binary.f32(i32 35, float %5585, float 0.000000e+00)  ; FMax(a,b)
  %5587 = fsub fast float -0.000000e+00, %5527
  %5588 = fsub fast float -0.000000e+00, %5528
  %5589 = fsub fast float -0.000000e+00, %5529
  %5590 = call float @dx.op.dot3.f32(i32 55, float %5395, float %5396, float %5397, float %5587, float %5588, float %5589)  ; Dot3(ax,ay,az,bx,by,bz)
  %5591 = fsub fast float -0.000000e+00, %5590
  %5592 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float %5587, float %5588, float %5589)  ; Dot3(ax,ay,az,bx,by,bz)
  %5593 = fadd fast float %5592, %5486
  %5594 = fadd fast float %5485, %5592
  %5595 = fsub fast float -0.000000e+00, %5594
  %5596 = fcmp ogt float %5590, -0.000000e+00
  %5597 = select i1 %5596, float %5595, float %5593
  %5598 = call float @dx.op.unary.f32(i32 6, float %5591)  ; FAbs(value)
  %5599 = fdiv fast float 1.000000e+00, %5598
  %5600 = fmul fast float %5597, %5599
  %5601 = call float @dx.op.binary.f32(i32 35, float %5600, float 0.000000e+00)  ; FMax(a,b)
  %5602 = call float @dx.op.binary.f32(i32 36, float %5586, float %5601)  ; FMin(a,b)
  %5603 = call float @dx.op.binary.f32(i32 36, float %5571, float %5602)  ; FMin(a,b)
  %5604 = fmul fast float %5603, %5395
  %5605 = fmul fast float %5603, %5396
  %5606 = fmul fast float %5603, %5397
  %5607 = fadd fast float %5604, %203
  %5608 = fadd fast float %5605, %204
  %5609 = fadd fast float %5606, %205
  %5610 = fsub fast float %5607, %5455
  %5611 = fsub fast float %5608, %5456
  %5612 = fsub fast float %5609, %5457
  br label %5620

; <label>:5613                                    ; preds = %5555
  %5614 = fmul fast float %5395, 8.096000e+03
  %5615 = fmul fast float %5396, 8.096000e+03
  %5616 = fmul fast float %5397, 8.096000e+03
  %5617 = fadd fast float %5614, %203
  %5618 = fadd fast float %5615, %204
  %5619 = fadd fast float %5616, %205
  br label %5620

; <label>:5620                                    ; preds = %5613, %5556
  %5621 = phi float [ %5395, %5613 ], [ %5610, %5556 ]
  %5622 = phi float [ %5396, %5613 ], [ %5611, %5556 ]
  %5623 = phi float [ %5397, %5613 ], [ %5612, %5556 ]
  %5624 = phi float [ %5617, %5613 ], [ %5607, %5556 ]
  %5625 = phi float [ %5618, %5613 ], [ %5608, %5556 ]
  %5626 = phi float [ %5619, %5613 ], [ %5609, %5556 ]
  %5627 = fcmp fast olt float %5474, 1.000000e+00
  br i1 %5627, label %5628, label %5659, !dx.controlflow.hints !104

; <label>:5628                                    ; preds = %5620
  %5629 = fmul fast float %5623, %5472
  %5630 = fmul fast float %5622, %5473
  %5631 = fsub fast float %5629, %5630
  %5632 = fmul fast float %5621, %5473
  %5633 = fmul fast float %5623, %5471
  %5634 = fsub fast float %5632, %5633
  %5635 = fmul fast float %5622, %5471
  %5636 = fmul fast float %5621, %5472
  %5637 = fsub fast float %5635, %5636
  %5638 = fmul fast float %5631, 2.000000e+00
  %5639 = fmul fast float %5634, 2.000000e+00
  %5640 = fmul fast float %5637, 2.000000e+00
  %5641 = fmul fast float %5638, %5474
  %5642 = fmul fast float %5639, %5474
  %5643 = fmul fast float %5640, %5474
  %5644 = fmul fast float %5640, %5472
  %5645 = fmul fast float %5639, %5473
  %5646 = fmul fast float %5638, %5473
  %5647 = fmul fast float %5640, %5471
  %5648 = fmul fast float %5639, %5471
  %5649 = fmul fast float %5638, %5472
  %5650 = fadd fast float %5644, %5621
  %5651 = fadd fast float %5650, %5641
  %5652 = fsub fast float %5651, %5645
  %5653 = fsub fast float %5622, %5647
  %5654 = fadd fast float %5653, %5642
  %5655 = fadd fast float %5654, %5646
  %5656 = fadd fast float %5643, %5623
  %5657 = fsub fast float %5656, %5649
  %5658 = fadd fast float %5657, %5648
  br label %5659

; <label>:5659                                    ; preds = %5628, %5620
  %5660 = phi float [ %5652, %5628 ], [ %5621, %5620 ]
  %5661 = phi float [ %5655, %5628 ], [ %5622, %5620 ]
  %5662 = phi float [ %5658, %5628 ], [ %5623, %5620 ]
  br i1 %5500, label %5694, label %5663

; <label>:5663                                    ; preds = %5659
  %5664 = fmul fast float %5134, 0x400187C840000000
  %5665 = fadd fast float %5664, 0xC00EFC2120000000
  %5666 = fmul fast float %5665, %5134
  %5667 = fadd fast float %5666, 0x3FE5D16340000000
  %5668 = fmul fast float %5667, %5134
  %5669 = fadd fast float %5668, 1.000000e+00
  %5670 = call float @dx.op.unary.f32(i32 7, float %5669)  ; Saturate(value)
  %5671 = fsub fast float %5624, %203
  %5672 = fsub fast float %5625, %204
  %5673 = fsub fast float %5626, %205
  %5674 = fsub fast float %5624, %5455
  %5675 = fsub fast float %5625, %5456
  %5676 = fsub fast float %5626, %5457
  %5677 = call float @dx.op.dot3.f32(i32 55, float %5671, float %5672, float %5673, float %5671, float %5672, float %5673)  ; Dot3(ax,ay,az,bx,by,bz)
  %5678 = call float @dx.op.dot3.f32(i32 55, float %5674, float %5675, float %5676, float %5674, float %5675, float %5676)  ; Dot3(ax,ay,az,bx,by,bz)
  %5679 = fadd fast float %5678, 0x3EE4F8B580000000
  %5680 = fdiv fast float %5677, %5679
  %5681 = bitcast float %5680 to i32
  %5682 = ashr i32 %5681, 1
  %5683 = add nsw i32 %5682, 532487669
  %5684 = bitcast i32 %5683 to float
  %5685 = fmul fast float %5684, %5670
  %5686 = call float @dx.op.unary.f32(i32 7, float %5685)  ; Saturate(value)
  %5687 = fmul fast float %5686, 0x4009981AE0000000
  %5688 = fsub fast float 0x40111BBD80000000, %5687
  %5689 = fmul fast float %5688, %5686
  %5690 = fadd fast float %5689, 0xC0009F6020000000
  %5691 = fmul fast float %5690, %5686
  %5692 = fadd fast float %5691, 1.000000e+00
  %5693 = call float @dx.op.unary.f32(i32 7, float %5692)  ; Saturate(value)
  br label %5697

; <label>:5694                                    ; preds = %5659
  %5695 = icmp ne i32 %5501, -1
  %5696 = zext i1 %5695 to i32
  br label %5697

; <label>:5697                                    ; preds = %5694, %5663
  %5698 = phi float [ %5134, %5694 ], [ %5693, %5663 ]
  %5699 = phi i32 [ %5696, %5694 ], [ 0, %5663 ]
  %5700 = fmul float %5698, 5.000000e+00
  %5701 = fsub float 5.000000e+00, %5700
  %5702 = icmp ne i32 %5699, 0
  %5703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5704 = extractvalue %dx.types.CBufRet.f32 %5703, 3
  %5705 = fadd fast float %5704, %5701
  %5706 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5705)  ; FMax(a,b)
  %5707 = call float @dx.op.unary.f32(i32 6, float %5660)  ; FAbs(value)
  %5708 = call float @dx.op.unary.f32(i32 6, float %5661)  ; FAbs(value)
  %5709 = fadd fast float %5708, %5707
  %5710 = call float @dx.op.unary.f32(i32 6, float %5662)  ; FAbs(value)
  %5711 = fadd fast float %5709, %5710
  %5712 = fcmp fast oeq float %5711, 0.000000e+00
  %5713 = fdiv fast float 1.000000e+00, %5711
  %5714 = select i1 %5712, float 1.000000e+00, float %5713
  %5715 = fmul fast float %5714, %5660
  %5716 = fmul fast float %5714, %5661
  %5717 = call float @dx.op.unary.f32(i32 6, float %5716)  ; FAbs(value)
  %5718 = call float @dx.op.unary.f32(i32 6, float %5715)  ; FAbs(value)
  %5719 = fsub fast float 1.000000e+00, %5717
  %5720 = fsub fast float 1.000000e+00, %5718
  %5721 = fcmp fast oge float %5715, 0.000000e+00
  %5722 = fcmp fast oge float %5716, 0.000000e+00
  %5723 = select i1 %5721, float 1.000000e+00, float -1.000000e+00
  %5724 = select i1 %5722, float 1.000000e+00, float -1.000000e+00
  %5725 = fcmp fast ole float %5662, 0.000000e+00
  %5726 = fmul fast float %5723, %5719
  %5727 = fmul fast float %5724, %5720
  %5728 = select i1 %5725, float %5726, float %5715
  %5729 = select i1 %5725, float %5727, float %5716
  %5730 = fmul fast float %5728, 5.000000e-01
  %5731 = fmul fast float %5729, 5.000000e-01
  %5732 = fadd fast float %5730, 5.000000e-01
  %5733 = fadd fast float %5731, 5.000000e-01
  %5734 = uitofp i32 %5498 to float
  %5735 = call float @dx.op.binary.f32(i32 36, float %5706, float 3.000000e+00)  ; FMin(a,b)
  %5736 = fadd fast float %5735, 2.000000e+00
  %5737 = call float @dx.op.unary.f32(i32 21, float %5736)  ; Exp(value)
  %5738 = extractvalue %dx.types.CBufRet.f32 %5703, 1
  %5739 = fmul fast float %5738, %5737
  %5740 = fmul fast float %5739, 2.000000e+00
  %5741 = fsub fast float 1.000000e+00, %5740
  %5742 = fmul fast float %5732, %5741
  %5743 = fmul fast float %5733, %5741
  %5744 = fadd fast float %5742, %5739
  %5745 = fadd fast float %5743, %5739
  %5746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %53, float %5744, float %5745, float %5734, float undef, i32 0, i32 0, i32 undef, float %5706)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5747 = extractvalue %dx.types.ResRet.f32 %5746, 0
  %5748 = extractvalue %dx.types.ResRet.f32 %5746, 1
  %5749 = extractvalue %dx.types.ResRet.f32 %5746, 2
  %5750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.f32 %5750, 3
  %5752 = fmul fast float %5751, %5468
  %5753 = call float @dx.op.binary.f32(i32 36, float %5201, float %5752)  ; FMin(a,b)
  %5754 = select i1 %5702, float %5753, float %5752
  %5755 = fmul fast float %5747, %5547
  %5756 = fmul fast float %5755, %5754
  %5757 = fmul fast float %5748, %5547
  %5758 = fmul fast float %5757, %5754
  %5759 = fmul fast float %5749, %5547
  %5760 = fmul fast float %5759, %5754
  %5761 = fadd fast float %5756, %5443
  %5762 = fadd fast float %5758, %5444
  %5763 = fadd fast float %5760, %5445
  %5764 = fsub fast float %5446, %5547
  br label %5549

; <label>:5765                                    ; preds = %5549
  br label %5766

; <label>:5766                                    ; preds = %5765, %5412
  %5767 = phi float [ %5413, %5412 ], [ %5550, %5765 ]
  %5768 = phi float [ %5414, %5412 ], [ %5551, %5765 ]
  %5769 = phi float [ %5415, %5412 ], [ %5552, %5765 ]
  %5770 = phi float [ %5416, %5412 ], [ %5553, %5765 ]
  %5771 = add i32 %5417, 1
  %5772 = icmp ugt i32 %5771, %5409
  br i1 %5772, label %5773, label %5412, !llvm.loop !105

; <label>:5773                                    ; preds = %5766
  br label %5774

; <label>:5774                                    ; preds = %5773, %5394
  %5775 = phi float [ 0.000000e+00, %5394 ], [ %5767, %5773 ]
  %5776 = phi float [ 0.000000e+00, %5394 ], [ %5768, %5773 ]
  %5777 = phi float [ 0.000000e+00, %5394 ], [ %5769, %5773 ]
  %5778 = call float @dx.op.dot3.f32(i32 55, float %5775, float %5776, float %5777, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5779 = select i1 %307, float 0.000000e+00, float %5775
  %5780 = select i1 %307, float %5778, float %5776
  %5781 = select i1 %307, float 0.000000e+00, float %5777
  %5782 = fcmp fast olt float %5320, 0.000000e+00
  %5783 = call float @dx.op.unary.f32(i32 6, float %5320)  ; FAbs(value)
  %5784 = fmul fast float %5783, %5260
  %5785 = fmul fast float %5783, %5261
  %5786 = fmul fast float %5783, %5262
  %5787 = select i1 %5782, float %5260, float %5784
  %5788 = select i1 %5782, float %5261, float %5785
  %5789 = select i1 %5782, float %5262, float %5786
  %5790 = fsub fast float 1.000000e+00, %5783
  %5791 = call float @dx.op.unary.f32(i32 7, float %5790)  ; Saturate(value)
  %5792 = fmul fast float %5791, %5779
  %5793 = fmul fast float %5791, %5780
  %5794 = fmul fast float %5791, %5781
  %5795 = fadd fast float %5787, %5792
  %5796 = fadd fast float %5788, %5793
  %5797 = fadd fast float %5789, %5794
  br label %5798

; <label>:5798                                    ; preds = %5774, %5303
  %5799 = phi float [ %5260, %5303 ], [ %5795, %5774 ]
  %5800 = phi float [ %5261, %5303 ], [ %5796, %5774 ]
  %5801 = phi float [ %5262, %5303 ], [ %5797, %5774 ]
  %5802 = fmul fast float %5309, %5256
  %5803 = fmul fast float %5309, %5257
  %5804 = fmul fast float %5309, %5258
  %5805 = call float @dx.op.dot3.f32(i32 55, float %5125, float %5126, float %5127, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5806 = fcmp fast ogt float %5805, 0x3E7FF19E20000000
  %5807 = fdiv fast float 1.000000e+00, %5805
  %5808 = select i1 %5806, float %5807, float 0.000000e+00
  %5809 = fmul fast float %5808, %5125
  %5810 = fmul fast float %5808, %5126
  %5811 = fmul fast float %5808, %5127
  %5812 = fadd fast float %5809, -1.000000e+00
  %5813 = fadd fast float %5810, -1.000000e+00
  %5814 = fadd fast float %5811, -1.000000e+00
  %5815 = fmul fast float %5812, 5.000000e-01
  %5816 = fmul fast float %5813, 5.000000e-01
  %5817 = fmul fast float %5814, 5.000000e-01
  %5818 = fadd fast float %5815, 1.000000e+00
  %5819 = fadd fast float %5816, 1.000000e+00
  %5820 = fadd fast float %5817, 1.000000e+00
  %5821 = fmul fast float %5799, %5304
  %5822 = fmul fast float %5800, %5305
  %5823 = fmul fast float %5801, %5306
  %5824 = fsub fast float 1.000000e+00, %5139
  %5825 = bitcast float %5824 to i32
  %5826 = sitofp i32 %5825 to float
  %5827 = fmul fast float %5826, 5.000000e+00
  %5828 = fadd fast float %5827, 0xC1EFBF8940000000
  %5829 = fptosi float %5828 to i32
  %5830 = bitcast i32 %5829 to float
  %5831 = fmul fast float %5830, %3928
  %5832 = fmul fast float %5256, %5831
  %5833 = fmul fast float %5832, %5309
  %5834 = fmul fast float %5833, %5818
  %5835 = fmul fast float %5257, %5831
  %5836 = fmul fast float %5835, %5309
  %5837 = fmul fast float %5836, %5819
  %5838 = fmul fast float %5258, %5831
  %5839 = fmul fast float %5838, %5309
  %5840 = fmul fast float %5839, %5820
  %5841 = fmul fast float %5802, %3953
  %5842 = fmul fast float %5803, %3953
  %5843 = fmul fast float %5804, %3953
  %5844 = fadd fast float %5821, %3920
  %5845 = fadd fast float %5844, %5834
  %5846 = fmul fast float %5845, %3953
  %5847 = fadd fast float %5822, %3921
  %5848 = fadd fast float %5847, %5837
  %5849 = fmul fast float %5848, %3953
  %5850 = fadd fast float %5823, %3922
  %5851 = fadd fast float %5850, %5840
  %5852 = fmul fast float %5851, %3953
  %5853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5854 = extractvalue %dx.types.CBufRet.f32 %5853, 3
  %5855 = fcmp fast oeq float %5854, 0.000000e+00
  br i1 %5855, label %7559, label %5856

; <label>:5856                                    ; preds = %5798
  %5857 = extractvalue %dx.types.CBufRet.f32 %5853, 0
  %5858 = extractvalue %dx.types.CBufRet.f32 %5853, 1
  %5859 = extractvalue %dx.types.CBufRet.f32 %5853, 2
  %5860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5861 = extractvalue %dx.types.CBufRet.f32 %5860, 0
  %5862 = extractvalue %dx.types.CBufRet.f32 %5860, 1
  %5863 = extractvalue %dx.types.CBufRet.f32 %5860, 2
  %5864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5865 = extractvalue %dx.types.CBufRet.f32 %5864, 0
  %5866 = extractvalue %dx.types.CBufRet.f32 %5864, 1
  %5867 = call float @dx.op.dot3.f32(i32 55, float %5861, float %5862, float %5863, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5868 = select i1 %307, float %5865, float %5861
  %5869 = select i1 %307, float %5867, float %5862
  %5870 = select i1 %307, float %5866, float %5863
  %5871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.f32 %5871, 2
  %5873 = fmul fast float %5872, %123
  %5874 = fmul fast float %5872, %124
  %5875 = fmul fast float %5872, %125
  %5876 = fadd fast float %5873, %203
  %5877 = fadd fast float %5874, %204
  %5878 = fadd fast float %5875, %205
  %5879 = fcmp fast olt float %5854, 0.000000e+00
  br i1 %5879, label %7137, label %5880

; <label>:5880                                    ; preds = %5856
  %5881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5882 = extractvalue %dx.types.CBufRet.f32 %5881, 0
  %5883 = extractvalue %dx.types.CBufRet.f32 %5881, 1
  %5884 = extractvalue %dx.types.CBufRet.f32 %5881, 2
  %5885 = extractvalue %dx.types.CBufRet.f32 %5881, 3
  %5886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5887 = extractvalue %dx.types.CBufRet.f32 %5886, 0
  %5888 = extractvalue %dx.types.CBufRet.f32 %5886, 1
  %5889 = extractvalue %dx.types.CBufRet.f32 %5886, 2
  %5890 = extractvalue %dx.types.CBufRet.f32 %5886, 3
  %5891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5892 = extractvalue %dx.types.CBufRet.f32 %5891, 0
  %5893 = extractvalue %dx.types.CBufRet.f32 %5891, 1
  %5894 = extractvalue %dx.types.CBufRet.f32 %5891, 2
  %5895 = extractvalue %dx.types.CBufRet.f32 %5891, 3
  %5896 = fmul fast float %5882, %5876
  %5897 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %5883, float %5896)  ; FMad(a,b,c)
  %5898 = call float @dx.op.tertiary.f32(i32 46, float %5878, float %5884, float %5897)  ; FMad(a,b,c)
  %5899 = fadd fast float %5898, %5885
  %5900 = fmul fast float %5887, %5876
  %5901 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %5888, float %5900)  ; FMad(a,b,c)
  %5902 = call float @dx.op.tertiary.f32(i32 46, float %5878, float %5889, float %5901)  ; FMad(a,b,c)
  %5903 = fadd fast float %5902, %5890
  %5904 = fmul fast float %5892, %5876
  %5905 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %5893, float %5904)  ; FMad(a,b,c)
  %5906 = call float @dx.op.tertiary.f32(i32 46, float %5878, float %5894, float %5905)  ; FMad(a,b,c)
  %5907 = fadd fast float %5906, %5895
  %5908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5909 = extractvalue %dx.types.CBufRet.f32 %5908, 0
  %5910 = fcmp fast une float %5909, 0.000000e+00
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 0
  %5913 = extractvalue %dx.types.CBufRet.f32 %5911, 1
  %5914 = extractvalue %dx.types.CBufRet.f32 %5911, 3
  %5915 = fmul fast float %5914, %5899
  %5916 = fmul fast float %5914, %5903
  %5917 = fadd fast float %5915, %5912
  %5918 = fadd fast float %5916, %5913
  %5919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5920 = extractvalue %dx.types.CBufRet.f32 %5919, 0
  %5921 = extractvalue %dx.types.CBufRet.f32 %5919, 1
  %5922 = extractvalue %dx.types.CBufRet.f32 %5919, 3
  %5923 = fmul fast float %5922, %5899
  %5924 = fmul fast float %5922, %5903
  %5925 = fadd fast float %5923, %5920
  %5926 = fadd fast float %5924, %5921
  %5927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5928 = extractvalue %dx.types.CBufRet.f32 %5927, 1
  %5929 = fsub fast float %5928, %5907
  %5930 = extractvalue %dx.types.CBufRet.f32 %5927, 2
  %5931 = fmul fast float %5929, %5930
  %5932 = fsub fast float 1.000000e+00, %5931
  %5933 = call float @dx.op.unary.f32(i32 7, float %5932)  ; Saturate(value)
  br i1 %5910, label %5994, label %5934

; <label>:5934                                    ; preds = %5880
  %5935 = extractvalue %dx.types.CBufRet.f32 %5919, 2
  %5936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.f32 %5936, 2
  %5938 = fadd fast float %5937, %5935
  %5939 = fcmp fast ogt float %5938, 0.000000e+00
  br i1 %5939, label %5940, label %5964

; <label>:5940                                    ; preds = %5934
  %5941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5942 = extractvalue %dx.types.CBufRet.f32 %5941, 0
  %5943 = extractvalue %dx.types.CBufRet.f32 %5941, 1
  %5944 = fsub fast float %5925, %5942
  %5945 = fsub fast float %5926, %5943
  %5946 = fcmp fast olt float %5944, 0.000000e+00
  %5947 = fcmp fast olt float %5945, 0.000000e+00
  %5948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5949 = extractvalue %dx.types.CBufRet.f32 %5948, 0
  %5950 = extractvalue %dx.types.CBufRet.f32 %5948, 1
  %5951 = extractvalue %dx.types.CBufRet.f32 %5948, 2
  %5952 = extractvalue %dx.types.CBufRet.f32 %5948, 3
  %5953 = select i1 %5946, float %5949, float %5951
  %5954 = select i1 %5947, float %5950, float %5952
  %5955 = fmul fast float %5953, %5944
  %5956 = fmul fast float %5954, %5945
  %5957 = call float @dx.op.unary.f32(i32 6, float %5955)  ; FAbs(value)
  %5958 = call float @dx.op.unary.f32(i32 6, float %5956)  ; FAbs(value)
  %5959 = extractvalue %dx.types.CBufRet.f32 %5871, 0
  %5960 = call float @dx.op.binary.f32(i32 35, float %5957, float %5958)  ; FMax(a,b)
  %5961 = fsub fast float %5959, %5960
  %5962 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5963 = fmul fast float %5962, %5933
  br label %5964

; <label>:5964                                    ; preds = %5940, %5934
  %5965 = phi float [ %5963, %5940 ], [ 0.000000e+00, %5934 ]
  %5966 = extractvalue %dx.types.CBufRet.f32 %5911, 2
  %5967 = extractvalue %dx.types.CBufRet.f32 %5936, 1
  %5968 = fadd fast float %5967, %5966
  %5969 = fcmp fast ogt float %5968, 0.000000e+00
  br i1 %5969, label %5970, label %5994

; <label>:5970                                    ; preds = %5964
  %5971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5972 = extractvalue %dx.types.CBufRet.f32 %5971, 0
  %5973 = extractvalue %dx.types.CBufRet.f32 %5971, 1
  %5974 = fsub fast float %5917, %5972
  %5975 = fsub fast float %5918, %5973
  %5976 = fcmp fast olt float %5974, 0.000000e+00
  %5977 = fcmp fast olt float %5975, 0.000000e+00
  %5978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.f32 %5978, 0
  %5980 = extractvalue %dx.types.CBufRet.f32 %5978, 1
  %5981 = extractvalue %dx.types.CBufRet.f32 %5978, 2
  %5982 = extractvalue %dx.types.CBufRet.f32 %5978, 3
  %5983 = select i1 %5976, float %5979, float %5981
  %5984 = select i1 %5977, float %5980, float %5982
  %5985 = fmul fast float %5983, %5974
  %5986 = fmul fast float %5984, %5975
  %5987 = call float @dx.op.unary.f32(i32 6, float %5985)  ; FAbs(value)
  %5988 = call float @dx.op.unary.f32(i32 6, float %5986)  ; FAbs(value)
  %5989 = extractvalue %dx.types.CBufRet.f32 %5871, 0
  %5990 = call float @dx.op.binary.f32(i32 35, float %5987, float %5988)  ; FMax(a,b)
  %5991 = fsub fast float %5989, %5990
  %5992 = call float @dx.op.unary.f32(i32 7, float %5991)  ; Saturate(value)
  %5993 = fmul fast float %5992, %5933
  br label %5994

; <label>:5994                                    ; preds = %5970, %5964, %5880
  %5995 = phi float [ 0.000000e+00, %5880 ], [ %5993, %5970 ], [ 0.000000e+00, %5964 ]
  %5996 = phi float [ 0.000000e+00, %5880 ], [ %5965, %5970 ], [ %5965, %5964 ]
  %5997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5998 = extractvalue %dx.types.CBufRet.f32 %5997, 1
  %5999 = call float @dx.op.unary.f32(i32 7, float %5998)  ; Saturate(value)
  %6000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.f32 %6000, 0
  %6002 = extractvalue %dx.types.CBufRet.f32 %6000, 1
  %6003 = fsub fast float %5899, %6001
  %6004 = fsub fast float %5903, %6002
  %6005 = fcmp fast olt float %6003, 0.000000e+00
  %6006 = fcmp fast olt float %6004, 0.000000e+00
  %6007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6008 = extractvalue %dx.types.CBufRet.f32 %6007, 0
  %6009 = extractvalue %dx.types.CBufRet.f32 %6007, 1
  %6010 = extractvalue %dx.types.CBufRet.f32 %6007, 2
  %6011 = extractvalue %dx.types.CBufRet.f32 %6007, 3
  %6012 = select i1 %6005, float %6008, float %6010
  %6013 = select i1 %6006, float %6009, float %6011
  %6014 = fmul fast float %6012, %6003
  %6015 = fmul fast float %6013, %6004
  %6016 = call float @dx.op.unary.f32(i32 6, float %6014)  ; FAbs(value)
  %6017 = call float @dx.op.unary.f32(i32 6, float %6015)  ; FAbs(value)
  %6018 = extractvalue %dx.types.CBufRet.f32 %5871, 0
  %6019 = call float @dx.op.binary.f32(i32 35, float %6016, float %6017)  ; FMax(a,b)
  %6020 = fsub fast float %6018, %6019
  %6021 = call float @dx.op.unary.f32(i32 7, float %6020)  ; Saturate(value)
  %6022 = call float @dx.op.binary.f32(i32 36, float %6021, float %5999)  ; FMin(a,b)
  %6023 = fmul fast float %6022, %5933
  %6024 = fsub fast float %5995, %6023
  %6025 = fsub fast float %5996, %5995
  %6026 = fsub fast float %6025, %6023
  %6027 = call float @dx.op.binary.f32(i32 35, float %5995, float %5996)  ; FMax(a,b)
  %6028 = call float @dx.op.binary.f32(i32 35, float %6023, float %6027)  ; FMax(a,b)
  %6029 = fcmp fast olt float %6028, 1.000000e+00
  br i1 %6029, label %6030, label %6428, !dx.controlflow.hints !107

; <label>:6030                                    ; preds = %5994
  %6031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6032 = extractvalue %dx.types.CBufRet.f32 %6031, 0
  %6033 = fcmp fast une float %6032, 0.000000e+00
  br i1 %6033, label %6034, label %6428, !dx.controlflow.hints !108

; <label>:6034                                    ; preds = %6030
  %6035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6036 = extractvalue %dx.types.CBufRet.f32 %6035, 0
  %6037 = extractvalue %dx.types.CBufRet.f32 %6035, 1
  %6038 = extractvalue %dx.types.CBufRet.f32 %6035, 2
  %6039 = extractvalue %dx.types.CBufRet.f32 %6035, 3
  %6040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6041 = extractvalue %dx.types.CBufRet.f32 %6040, 0
  %6042 = extractvalue %dx.types.CBufRet.f32 %6040, 1
  %6043 = extractvalue %dx.types.CBufRet.f32 %6040, 2
  %6044 = extractvalue %dx.types.CBufRet.f32 %6040, 3
  %6045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6046 = extractvalue %dx.types.CBufRet.f32 %6045, 0
  %6047 = extractvalue %dx.types.CBufRet.f32 %6045, 1
  %6048 = extractvalue %dx.types.CBufRet.f32 %6045, 2
  %6049 = extractvalue %dx.types.CBufRet.f32 %6045, 3
  %6050 = fmul fast float %6036, %5876
  %6051 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %6037, float %6050)  ; FMad(a,b,c)
  %6052 = call float @dx.op.tertiary.f32(i32 46, float %5878, float %6038, float %6051)  ; FMad(a,b,c)
  %6053 = fadd fast float %6052, %6039
  %6054 = fmul fast float %6041, %5876
  %6055 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %6042, float %6054)  ; FMad(a,b,c)
  %6056 = call float @dx.op.tertiary.f32(i32 46, float %5878, float %6043, float %6055)  ; FMad(a,b,c)
  %6057 = fadd fast float %6056, %6044
  %6058 = fmul fast float %6046, %5876
  %6059 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %6047, float %6058)  ; FMad(a,b,c)
  %6060 = call float @dx.op.tertiary.f32(i32 46, float %5878, float %6048, float %6059)  ; FMad(a,b,c)
  %6061 = fadd fast float %6060, %6049
  %6062 = fcmp fast oge float %6053, 1.000000e+00
  %6063 = fcmp fast oge float %6057, 1.000000e+00
  %6064 = or i1 %6062, %6063
  %6065 = fcmp fast olt float %6053, 0.000000e+00
  %6066 = fcmp fast olt float %6057, 0.000000e+00
  %6067 = or i1 %6065, %6066
  %6068 = or i1 %6064, %6067
  br i1 %6068, label %6428, label %6069, !dx.controlflow.hints !109

; <label>:6069                                    ; preds = %6034
  %6070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6071 = extractvalue %dx.types.CBufRet.f32 %6070, 0
  %6072 = extractvalue %dx.types.CBufRet.f32 %6070, 1
  %6073 = extractvalue %dx.types.CBufRet.f32 %6070, 2
  %6074 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6075 = extractvalue %dx.types.CBufRet.i32 %6074, 2
  %6076 = uitofp i32 %6075 to float
  %6077 = extractvalue %dx.types.CBufRet.i32 %6074, 3
  %6078 = uitofp i32 %6077 to float
  %6079 = extractvalue %dx.types.CBufRet.f32 %6070, 3
  %6080 = fmul fast float %6079, 2.000000e+00
  %6081 = fsub fast float %6053, %6071
  %6082 = fsub fast float %6057, %6072
  %6083 = fmul fast float %6080, %6081
  %6084 = fmul fast float %6080, %6082
  %6085 = fdiv fast float 1.000000e+00, %5859
  %6086 = fmul fast float %6084, %6085
  %6087 = call float @dx.op.unary.f32(i32 6, float %6086)  ; FAbs(value)
  %6088 = fmul fast float %6073, %5878
  %6089 = fmul fast float %6088, %6080
  %6090 = call float @dx.op.unary.f32(i32 6, float %6089)  ; FAbs(value)
  %6091 = call float @dx.op.unary.f32(i32 6, float %6083)  ; FAbs(value)
  %6092 = call float @dx.op.binary.f32(i32 35, float %6090, float %6087)  ; FMax(a,b)
  %6093 = call float @dx.op.binary.f32(i32 35, float %6091, float %6092)  ; FMax(a,b)
  %6094 = fmul fast float %6093, 2.000000e+00
  %6095 = call float @dx.op.unary.f32(i32 23, float %6094)  ; Log(value)
  %6096 = call float @dx.op.binary.f32(i32 35, float %6095, float %6076)  ; FMax(a,b)
  %6097 = call float @dx.op.unary.f32(i32 22, float %6096)  ; Frc(value)
  %6098 = fadd fast float %6097, 0xBFEA666660000000
  %6099 = fmul fast float %6098, 8.000000e+00
  %6100 = call float @dx.op.unary.f32(i32 7, float %6099)  ; Saturate(value)
  %6101 = call float @dx.op.unary.f32(i32 27, float %6096)  ; Round_ni(value)
  %6102 = fadd fast float %6101, %6100
  %6103 = call float @dx.op.binary.f32(i32 36, float %6102, float %6078)  ; FMin(a,b)
  %6104 = call float @dx.op.unary.f32(i32 27, float %6103)  ; Round_ni(value)
  %6105 = fsub fast float -0.000000e+00, %6104
  %6106 = call float @dx.op.unary.f32(i32 21, float %6105)  ; Exp(value)
  %6107 = fmul fast float %6106, %6080
  %6108 = fmul fast float %6107, %6053
  %6109 = fmul fast float %6107, %6057
  %6110 = fmul fast float %6108, 2.500000e-01
  %6111 = fmul fast float %6109, 2.500000e-01
  %6112 = fadd fast float %6110, 5.000000e-01
  %6113 = fadd fast float %6111, 5.000000e-01
  %6114 = fsub fast float %6078, %6076
  %6115 = fptoui float %6114 to i32
  %6116 = add i32 %6115, 320
  %6117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %6116)  ; CBufferLoadLegacy(handle,regIndex)
  %6118 = extractvalue %dx.types.CBufRet.f32 %6117, 0
  %6119 = extractvalue %dx.types.CBufRet.f32 %6117, 1
  %6120 = fcmp fast une float %6103, %6078
  %6121 = fsub fast float %6053, %6118
  %6122 = fsub fast float %6057, %6119
  %6123 = call float @dx.op.unary.f32(i32 6, float %6121)  ; FAbs(value)
  %6124 = call float @dx.op.unary.f32(i32 6, float %6122)  ; FAbs(value)
  %6125 = fmul fast float %6123, %6107
  %6126 = fmul fast float %6124, %6107
  %6127 = fcmp fast olt float %6125, 1.000000e+00
  %6128 = fcmp fast olt float %6126, 1.000000e+00
  %6129 = and i1 %6127, %6128
  %6130 = or i1 %6120, %6129
  br i1 %6130, label %6131, label %6428, !dx.controlflow.hints !110

; <label>:6131                                    ; preds = %6069
  %6132 = fmul fast float %6109, 5.000000e-01
  %6133 = fmul fast float %6108, 5.000000e-01
  %6134 = fadd fast float %6132, 5.000000e-01
  %6135 = fadd fast float %6133, 5.000000e-01
  %6136 = sitofp i32 %6075 to float
  %6137 = fsub fast float %6103, %6136
  %6138 = call float @dx.op.unary.f32(i32 27, float %6137)  ; Round_ni(value)
  %6139 = call float @dx.op.unary.f32(i32 22, float %6103)  ; Frc(value)
  %6140 = call float @dx.op.unary.f32(i32 22, float %6135)  ; Frc(value)
  %6141 = call float @dx.op.unary.f32(i32 22, float %6134)  ; Frc(value)
  %6142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6140, float %6141, float %6138, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6143 = extractvalue %dx.types.ResRet.f32 %6142, 0
  %6144 = extractvalue %dx.types.ResRet.f32 %6142, 1
  %6145 = extractvalue %dx.types.ResRet.f32 %6142, 2
  %6146 = extractvalue %dx.types.ResRet.f32 %6142, 3
  %6147 = fcmp fast ogt float %6139, 0.000000e+00
  br i1 %6147, label %6148, label %6169, !dx.controlflow.hints !111

; <label>:6148                                    ; preds = %6131
  %6149 = fadd fast float %6138, 1.000000e+00
  %6150 = call float @dx.op.unary.f32(i32 22, float %6112)  ; Frc(value)
  %6151 = call float @dx.op.unary.f32(i32 22, float %6113)  ; Frc(value)
  %6152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6150, float %6151, float %6149, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6153 = extractvalue %dx.types.ResRet.f32 %6152, 0
  %6154 = extractvalue %dx.types.ResRet.f32 %6152, 1
  %6155 = extractvalue %dx.types.ResRet.f32 %6152, 2
  %6156 = extractvalue %dx.types.ResRet.f32 %6152, 3
  %6157 = fsub fast float %6153, %6143
  %6158 = fsub fast float %6154, %6144
  %6159 = fsub fast float %6155, %6145
  %6160 = fsub fast float %6156, %6146
  %6161 = fmul fast float %6157, %6139
  %6162 = fmul fast float %6158, %6139
  %6163 = fmul fast float %6159, %6139
  %6164 = fmul fast float %6160, %6139
  %6165 = fadd fast float %6161, %6143
  %6166 = fadd fast float %6162, %6144
  %6167 = fadd fast float %6163, %6145
  %6168 = fadd fast float %6164, %6146
  br label %6169

; <label>:6169                                    ; preds = %6148, %6131
  %6170 = phi float [ %6165, %6148 ], [ %6143, %6131 ]
  %6171 = phi float [ %6166, %6148 ], [ %6144, %6131 ]
  %6172 = phi float [ %6167, %6148 ], [ %6145, %6131 ]
  %6173 = phi float [ %6168, %6148 ], [ %6146, %6131 ]
  %6174 = fadd fast float %6170, -5.000000e-01
  %6175 = fadd fast float %6172, -5.000000e-01
  %6176 = fmul fast float %6174, 0xBFD5555560000000
  %6177 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6175, float %6176)  ; FMad(a,b,c)
  %6178 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6171, float 0.000000e+00)  ; FMad(a,b,c)
  %6179 = fadd fast float %6178, %6173
  %6180 = fmul fast float %6174, -7.500000e-01
  %6181 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6175, float %6180)  ; FMad(a,b,c)
  %6182 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6171, float 0.000000e+00)  ; FMad(a,b,c)
  %6183 = fadd fast float %6182, %6173
  %6184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6185 = extractvalue %dx.types.CBufRet.f32 %6184, 0
  %6186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6187 = extractvalue %dx.types.CBufRet.f32 %6186, 0
  %6188 = extractvalue %dx.types.CBufRet.f32 %6186, 1
  %6189 = extractvalue %dx.types.CBufRet.f32 %6186, 2
  %6190 = extractvalue %dx.types.CBufRet.f32 %6186, 3
  %6191 = fsub fast float %6187, %6177
  %6192 = fsub fast float %6188, %6179
  %6193 = fsub fast float %6189, %6181
  %6194 = fsub fast float %6190, %6183
  %6195 = fmul fast float %6191, %6185
  %6196 = fmul fast float %6192, %6185
  %6197 = fmul fast float %6193, %6185
  %6198 = fmul fast float %6194, %6185
  %6199 = fadd fast float %6195, %6177
  %6200 = fadd fast float %6196, %6179
  %6201 = fadd fast float %6197, %6181
  %6202 = fadd fast float %6198, %6183
  %6203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6204 = extractvalue %dx.types.ResRet.i32 %6203, 0
  %6205 = and i32 %6204, 536870911
  %6206 = uitofp i32 %6205 to float
  %6207 = fmul fast float %6206, %6053
  %6208 = fmul fast float %6206, %6057
  %6209 = fptoui float %6207 to i32
  %6210 = fptoui float %6208 to i32
  %6211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6212 = extractvalue %dx.types.ResRet.i32 %6211, 0
  %6213 = and i32 %6212, 31
  %6214 = lshr i32 %6209, %6213
  %6215 = lshr i32 %6210, %6213
  %6216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6217 = extractvalue %dx.types.ResRet.i32 %6216, 0
  %6218 = and i32 %6217, 31
  %6219 = shl i32 1, %6218
  %6220 = call i32 @dx.op.binary.i32(i32 40, i32 %6219, i32 4)  ; UMin(a,b)
  %6221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6222 = extractvalue %dx.types.ResRet.i32 %6221, 0
  %6223 = extractvalue %dx.types.ResRet.i32 %6221, 1
  %6224 = icmp eq i32 %6220, 0
  br i1 %6224, label %6266, label %6225

; <label>:6225                                    ; preds = %6169
  br label %6226

; <label>:6226                                    ; preds = %6254, %6225
  %6227 = phi i32 [ %6257, %6254 ], [ 0, %6225 ]
  %6228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6229 = extractvalue %dx.types.ResRet.i32 %6228, 0
  %6230 = lshr i32 %6229, 16
  %6231 = and i32 %6230, 31
  %6232 = shl i32 %6215, %6231
  %6233 = add i32 %6232, %6214
  %6234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6235 = extractvalue %dx.types.ResRet.i32 %6234, 0
  %6236 = and i32 %6235, 31
  %6237 = shl i32 %6233, %6236
  %6238 = add i32 %6237, %6227
  %6239 = shl i32 %6238, 2
  %6240 = add i32 %6239, 32
  %6241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6240, i32 undef)  ; BufferLoad(srv,index,wot)
  %6242 = extractvalue %dx.types.ResRet.i32 %6241, 0
  %6243 = icmp slt i32 %6242, 0
  %6244 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6227
  %6245 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6227
  %6246 = bitcast float* %6244 to i32*
  %6247 = bitcast float* %6245 to i32*
  br i1 %6243, label %6248, label %6254

; <label>:6248                                    ; preds = %6226
  %6249 = and i32 %6242, 1073741823
  %6250 = add nuw nsw i32 %6249, 20
  %6251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6250, i32 undef)  ; BufferLoad(srv,index,wot)
  %6252 = extractvalue %dx.types.ResRet.i32 %6251, 0
  %6253 = extractvalue %dx.types.ResRet.i32 %6251, 1
  br label %6254

; <label>:6254                                    ; preds = %6248, %6226
  %6255 = phi i32 [ %6252, %6248 ], [ %6222, %6226 ]
  %6256 = phi i32 [ %6253, %6248 ], [ %6223, %6226 ]
  store i32 %6255, i32* %6246, align 4
  store i32 %6256, i32* %6247, align 4
  %6257 = add nuw i32 %6227, 1
  %6258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6259 = extractvalue %dx.types.CBufRet.i32 %6258, 2
  %6260 = icmp eq i32 %6259, 0
  %6261 = icmp ugt i32 %6242, -1073741825
  %6262 = and i1 %6261, %6260
  %6263 = icmp ult i32 %6257, %6220
  %6264 = and i1 %6262, %6263
  br i1 %6264, label %6226, label %6265

; <label>:6265                                    ; preds = %6254
  br label %6266

; <label>:6266                                    ; preds = %6265, %6169
  %6267 = phi i32 [ 0, %6169 ], [ %6257, %6265 ]
  %6268 = extractvalue %dx.types.CBufRet.f32 %6031, 2
  %6269 = fptoui float %6268 to i32
  %6270 = icmp eq i32 %6269, 0
  br i1 %6270, label %6322, label %6271

; <label>:6271                                    ; preds = %6266
  br label %6272

; <label>:6272                                    ; preds = %6317, %6271
  %6273 = phi i32 [ %6318, %6317 ], [ %6267, %6271 ]
  %6274 = phi i32 [ %6319, %6317 ], [ 0, %6271 ]
  %6275 = lshr i32 %6274, 2
  %6276 = and i32 %6274, 3
  %6277 = add nuw nsw i32 %6275, 83
  %6278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 %6277)  ; CBufferLoadLegacy(handle,regIndex)
  %6279 = extractvalue %dx.types.CBufRet.i32 %6278, 0
  %6280 = extractvalue %dx.types.CBufRet.i32 %6278, 1
  %6281 = extractvalue %dx.types.CBufRet.i32 %6278, 2
  %6282 = extractvalue %dx.types.CBufRet.i32 %6278, 3
  %6283 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 0
  store i32 %6279, i32* %6283, align 4
  %6284 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 1
  store i32 %6280, i32* %6284, align 4
  %6285 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 2
  store i32 %6281, i32* %6285, align 4
  %6286 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 3
  store i32 %6282, i32* %6286, align 4
  %6287 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 %6276
  %6288 = load i32, i32* %6287, align 4, !tbaa !112, !noalias !116
  %6289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6290 = extractvalue %dx.types.ResRet.i32 %6289, 0
  %6291 = lshr i32 %6290, 16
  %6292 = and i32 %6291, 31
  %6293 = shl i32 %6215, %6292
  %6294 = add i32 %6293, %6214
  %6295 = shl i32 %6294, 2
  %6296 = add i32 %6295, %6288
  %6297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6296, i32 undef)  ; BufferLoad(srv,index,wot)
  %6298 = extractvalue %dx.types.ResRet.i32 %6297, 0
  %6299 = icmp eq i32 %6298, 0
  br i1 %6299, label %6317, label %6300

; <label>:6300                                    ; preds = %6272
  %6301 = icmp slt i32 %6298, 0
  %6302 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6273
  %6303 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6273
  %6304 = bitcast float* %6302 to i32*
  %6305 = bitcast float* %6303 to i32*
  br i1 %6301, label %6306, label %6313

; <label>:6306                                    ; preds = %6300
  %6307 = and i32 %6298, 1073741823
  %6308 = add i32 %6288, 20
  %6309 = add i32 %6308, %6307
  %6310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6309, i32 undef)  ; BufferLoad(srv,index,wot)
  %6311 = extractvalue %dx.types.ResRet.i32 %6310, 0
  %6312 = extractvalue %dx.types.ResRet.i32 %6310, 1
  br label %6313

; <label>:6313                                    ; preds = %6306, %6300
  %6314 = phi i32 [ %6311, %6306 ], [ %6222, %6300 ]
  %6315 = phi i32 [ %6312, %6306 ], [ %6223, %6300 ]
  store i32 %6314, i32* %6304, align 4
  store i32 %6315, i32* %6305, align 4
  %6316 = add i32 %6273, 1
  br label %6317

; <label>:6317                                    ; preds = %6313, %6272
  %6318 = phi i32 [ %6273, %6272 ], [ %6316, %6313 ]
  %6319 = add nuw i32 %6274, 1
  %6320 = icmp eq i32 %6319, %6269
  br i1 %6320, label %6321, label %6272

; <label>:6321                                    ; preds = %6317
  br label %6322

; <label>:6322                                    ; preds = %6321, %6266
  %6323 = phi i32 [ %6267, %6266 ], [ %6318, %6321 ]
  %6324 = icmp eq i32 %6323, 1
  %6325 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 0
  %6326 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 0
  br i1 %6324, label %6327, label %6330

; <label>:6327                                    ; preds = %6322
  %6328 = load float, float* %6325, align 4
  %6329 = load float, float* %6326, align 4
  br label %6357

; <label>:6330                                    ; preds = %6322
  %6331 = load float, float* %6325, align 4
  %6332 = load float, float* %6326, align 4
  %6333 = fdiv fast float 1.000000e+00, %6332
  %6334 = fsub fast float %6331, %6333
  %6335 = icmp ugt i32 %6323, 1
  br i1 %6335, label %6336, label %6352

; <label>:6336                                    ; preds = %6330
  br label %6337

; <label>:6337                                    ; preds = %6337, %6336
  %6338 = phi float [ %6347, %6337 ], [ %6334, %6336 ]
  %6339 = phi float [ %6348, %6337 ], [ %6331, %6336 ]
  %6340 = phi i32 [ %6349, %6337 ], [ 1, %6336 ]
  %6341 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6340
  %6342 = load float, float* %6341, align 4
  %6343 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6340
  %6344 = load float, float* %6343, align 4
  %6345 = fdiv fast float 1.000000e+00, %6344
  %6346 = fsub fast float %6342, %6345
  %6347 = call float @dx.op.binary.f32(i32 36, float %6338, float %6346)  ; FMin(a,b)
  %6348 = call float @dx.op.binary.f32(i32 35, float %6339, float %6342)  ; FMax(a,b)
  %6349 = add nuw i32 %6340, 1
  %6350 = icmp eq i32 %6349, %6323
  br i1 %6350, label %6351, label %6337

; <label>:6351                                    ; preds = %6337
  br label %6352

; <label>:6352                                    ; preds = %6351, %6330
  %6353 = phi float [ %6334, %6330 ], [ %6347, %6351 ]
  %6354 = phi float [ %6331, %6330 ], [ %6348, %6351 ]
  %6355 = fsub fast float %6354, %6353
  %6356 = fdiv fast float 1.000000e+00, %6355
  br label %6357

; <label>:6357                                    ; preds = %6352, %6327
  %6358 = phi float [ %6328, %6327 ], [ %6354, %6352 ]
  %6359 = phi float [ %6329, %6327 ], [ %6356, %6352 ]
  %6360 = fadd fast float %6061, %6358
  %6361 = fmul fast float %6360, %6359
  %6362 = call float @dx.op.unary.f32(i32 7, float %6361)  ; Saturate(value)
  %6363 = fmul fast float %6362, 2.000000e+00
  %6364 = fsub fast float 1.000000e+00, %6363
  %6365 = fmul fast float %6199, %6199
  %6366 = fsub fast float %6200, %6365
  %6367 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6366)  ; FMax(a,b)
  %6368 = fdiv fast float 1.000000e+00, %6367
  %6369 = fmul fast float %6200, %6199
  %6370 = fsub fast float %6201, %6369
  %6371 = fsub fast float %6364, %6199
  %6372 = fmul fast float %6364, %6364
  %6373 = fsub fast float %6372, %6200
  %6374 = fmul fast float %6368, %6370
  %6375 = fmul fast float %6374, %6371
  %6376 = fsub fast float %6373, %6375
  %6377 = fmul fast float %6200, %6200
  %6378 = fsub fast float %6202, %6377
  %6379 = fmul fast float %6370, %6370
  %6380 = fmul fast float %6379, %6368
  %6381 = fsub fast float %6378, %6380
  %6382 = fdiv fast float %6376, %6381
  %6383 = fmul fast float %6382, %6370
  %6384 = fsub fast float %6371, %6383
  %6385 = fmul fast float %6384, %6368
  %6386 = fmul fast float %6385, %6199
  %6387 = fsub fast float 1.000000e+00, %6386
  %6388 = fmul fast float %6382, %6200
  %6389 = fsub fast float %6387, %6388
  %6390 = fmul fast float %6385, %6385
  %6391 = fmul fast float %6382, 4.000000e+00
  %6392 = fmul fast float %6391, %6389
  %6393 = fsub fast float %6390, %6392
  %6394 = call float @dx.op.unary.f32(i32 24, float %6393)  ; Sqrt(value)
  %6395 = fcmp fast oge float %6385, 0.000000e+00
  %6396 = fsub fast float -0.000000e+00, %6394
  %6397 = select i1 %6395, float %6396, float %6394
  %6398 = fsub fast float %6397, %6385
  %6399 = fdiv fast float %6398, %6382
  %6400 = fdiv fast float %6389, %6398
  %6401 = fmul fast float %6399, 5.000000e-01
  %6402 = fmul fast float %6400, 2.000000e+00
  %6403 = select i1 %6395, float %6401, float %6402
  %6404 = select i1 %6395, float %6402, float %6401
  %6405 = call float @dx.op.binary.f32(i32 35, float %6403, float %6404)  ; FMax(a,b)
  %6406 = call float @dx.op.binary.f32(i32 36, float %6403, float %6404)  ; FMin(a,b)
  %6407 = fcmp fast ogt float %6364, %6405
  %6408 = fsub fast float %6364, %6406
  %6409 = fsub fast float %6364, %6405
  %6410 = fsub fast float %6405, %6406
  %6411 = select i1 %6407, float %6409, float %6410
  %6412 = fmul float %6408, %6411
  %6413 = select i1 %6407, float %6406, float %6364
  %6414 = fcmp fast ogt float %6364, %6406
  %6415 = fmul fast float %6413, %6405
  %6416 = fadd fast float %6413, %6405
  %6417 = fmul fast float %6416, %6199
  %6418 = fadd fast float %6415, %6200
  %6419 = fsub fast float %6418, %6417
  %6420 = fdiv fast float %6419, %6412
  %6421 = select i1 %6414, float %6420, float 0.000000e+00
  %6422 = fsub fast float 1.000000e+00, %6421
  %6423 = select i1 %6407, float %6422, float %6421
  %6424 = call float @dx.op.unary.f32(i32 7, float %6423)  ; Saturate(value)
  %6425 = extractvalue %dx.types.CBufRet.f32 %6184, 3
  %6426 = fmul fast float %6425, %6424
  %6427 = fsub fast float 1.000000e+00, %6426
  br label %6428

; <label>:6428                                    ; preds = %6357, %6069, %6034, %6030, %5994
  %6429 = phi float [ 1.000000e+00, %5994 ], [ %6427, %6357 ], [ 1.000000e+00, %6034 ], [ 1.000000e+00, %6069 ], [ 1.000000e+00, %6030 ]
  %6430 = fcmp fast ogt float %6026, 0.000000e+00
  br i1 %6430, label %6431, label %6595, !dx.controlflow.hints !125

; <label>:6431                                    ; preds = %6428
  %6432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6433 = extractvalue %dx.types.CBufRet.f32 %6432, 2
  %6434 = fadd fast float %6433, %5907
  %6435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6436 = extractvalue %dx.types.CBufRet.f32 %6435, 2
  %6437 = extractvalue %dx.types.CBufRet.f32 %6435, 3
  %6438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6439 = extractvalue %dx.types.CBufRet.f32 %6438, 2
  %6440 = call float @dx.op.binary.f32(i32 35, float %6434, float 0.000000e+00)  ; FMax(a,b)
  %6441 = fadd fast float %6440, 0x3F10000000000000
  %6442 = fcmp fast oeq float %6439, 0.000000e+00
  br i1 %6442, label %6443, label %6510

; <label>:6443                                    ; preds = %6431
  %6444 = extractvalue %dx.types.CBufRet.f32 %6435, 1
  %6445 = extractvalue %dx.types.CBufRet.f32 %6435, 0
  %6446 = fmul fast float %6445, %5925
  %6447 = fmul fast float %6444, %5926
  %6448 = fadd fast float %6446, 5.000000e-01
  %6449 = call float @dx.op.unary.f32(i32 27, float %6448)  ; Round_ni(value)
  %6450 = fadd fast float %6447, 5.000000e-01
  %6451 = call float @dx.op.unary.f32(i32 27, float %6450)  ; Round_ni(value)
  %6452 = fsub fast float %6448, %6449
  %6453 = fsub fast float %6450, %6451
  %6454 = fadd fast float %6449, -5.000000e-01
  %6455 = fadd fast float %6451, -5.000000e-01
  %6456 = fmul fast float %6452, 2.000000e+00
  %6457 = fsub fast float 3.000000e+00, %6456
  %6458 = fadd fast float %6456, 1.000000e+00
  %6459 = fsub fast float 2.000000e+00, %6452
  %6460 = bitcast float %6457 to i32
  %6461 = sub nsw i32 2129859010, %6460
  %6462 = bitcast i32 %6461 to float
  %6463 = fmul fast float %6462, %6459
  %6464 = fadd fast float %6463, -1.000000e+00
  %6465 = bitcast float %6458 to i32
  %6466 = sub nsw i32 2129859010, %6465
  %6467 = bitcast i32 %6466 to float
  %6468 = fmul fast float %6467, %6452
  %6469 = fadd fast float %6468, 1.000000e+00
  %6470 = fmul fast float %6453, 2.000000e+00
  %6471 = fsub fast float 3.000000e+00, %6470
  %6472 = fadd fast float %6470, 1.000000e+00
  %6473 = fsub fast float 2.000000e+00, %6453
  %6474 = bitcast float %6471 to i32
  %6475 = sub nsw i32 2129859010, %6474
  %6476 = bitcast i32 %6475 to float
  %6477 = fmul fast float %6476, %6473
  %6478 = fadd fast float %6477, -1.000000e+00
  %6479 = bitcast float %6472 to i32
  %6480 = sub nsw i32 2129859010, %6479
  %6481 = bitcast i32 %6480 to float
  %6482 = fmul fast float %6481, %6453
  %6483 = fadd fast float %6482, 1.000000e+00
  %6484 = fadd fast float %6464, %6454
  %6485 = fmul fast float %6484, %6436
  %6486 = fadd fast float %6478, %6455
  %6487 = fmul fast float %6486, %6437
  %6488 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6485, float %6487, float undef, float undef, i32 0, i32 0, i32 undef, float %6441)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6489 = extractvalue %dx.types.ResRet.f32 %6488, 0
  %6490 = fmul fast float %6489, %6457
  %6491 = fadd fast float %6469, %6454
  %6492 = fmul fast float %6491, %6436
  %6493 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6492, float %6487, float undef, float undef, i32 0, i32 0, i32 undef, float %6441)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6494 = extractvalue %dx.types.ResRet.f32 %6493, 0
  %6495 = fmul fast float %6494, %6458
  %6496 = fadd fast float %6483, %6455
  %6497 = fmul fast float %6496, %6437
  %6498 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6485, float %6497, float undef, float undef, i32 0, i32 0, i32 undef, float %6441)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6499 = extractvalue %dx.types.ResRet.f32 %6498, 0
  %6500 = fmul fast float %6499, %6457
  %6501 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6492, float %6497, float undef, float undef, i32 0, i32 0, i32 undef, float %6441)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6502 = extractvalue %dx.types.ResRet.f32 %6501, 0
  %6503 = fmul fast float %6502, %6458
  %6504 = fadd fast float %6503, %6500
  %6505 = fmul fast float %6504, %6472
  %6506 = fadd fast float %6495, %6490
  %6507 = fmul fast float %6506, %6471
  %6508 = fadd fast float %6507, %6505
  %6509 = fmul fast float %6508, 6.250000e-02
  br label %6595

; <label>:6510                                    ; preds = %6431
  %6511 = fmul fast float %318, 0x401921FB60000000
  %6512 = call float @dx.op.unary.f32(i32 13, float %6511)  ; Sin(value)
  %6513 = call float @dx.op.unary.f32(i32 12, float %6511)  ; Cos(value)
  %6514 = fsub fast float -0.000000e+00, %6512
  br label %6515

; <label>:6515                                    ; preds = %6564, %6510
  %6516 = phi float [ 0.000000e+00, %6510 ], [ %6559, %6564 ]
  %6517 = phi float [ 0.000000e+00, %6510 ], [ %6561, %6564 ]
  %6518 = phi i32 [ 0, %6510 ], [ %6565, %6564 ]
  %6519 = mul i32 %6518, 2
  %6520 = add i32 0, %6519
  %6521 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6520
  %6522 = load float, float* %6521, align 4
  %6523 = mul i32 %6518, 2
  %6524 = add i32 1, %6523
  %6525 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6524
  %6526 = load float, float* %6525, align 4
  %6527 = fmul fast float %6522, %6513
  %6528 = call float @dx.op.tertiary.f32(i32 46, float %6526, float %6514, float %6527)  ; FMad(a,b,c)
  %6529 = fmul fast float %6522, %6512
  %6530 = call float @dx.op.tertiary.f32(i32 46, float %6526, float %6513, float %6529)  ; FMad(a,b,c)
  %6531 = fmul fast float %6528, %6439
  %6532 = fmul fast float %6530, %6439
  %6533 = fadd fast float %6531, %5925
  %6534 = fadd fast float %6532, %5926
  %6535 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %56, float %6533, float %6534, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6536 = extractvalue %dx.types.ResRet.f32 %6535, 0
  %6537 = extractvalue %dx.types.ResRet.f32 %6535, 1
  %6538 = extractvalue %dx.types.ResRet.f32 %6535, 2
  %6539 = extractvalue %dx.types.ResRet.f32 %6535, 3
  %6540 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 0
  store float %6536, float* %6540, align 4
  %6541 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 1
  store float %6537, float* %6541, align 4
  %6542 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 2
  store float %6538, float* %6542, align 4
  %6543 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 3
  store float %6539, float* %6543, align 4
  %6544 = fsub fast float %6536, %6441
  %6545 = fcmp fast olt float %6544, 0.000000e+00
  %6546 = select i1 %6545, float 0.000000e+00, float 1.000000e+00
  %6547 = fadd fast float %6546, %6516
  %6548 = fmul fast float %6546, %6544
  %6549 = fadd fast float %6548, %6517
  br label %6550

; <label>:6550                                    ; preds = %6550, %6515
  %6551 = phi i32 [ 1, %6515 ], [ %6562, %6550 ]
  %6552 = phi float [ %6549, %6515 ], [ %6561, %6550 ]
  %6553 = phi float [ %6547, %6515 ], [ %6559, %6550 ]
  %6554 = getelementptr [4 x float], [4 x float]* %109, i32 0, i32 %6551
  %6555 = load float, float* %6554, align 4, !tbaa !126, !noalias !116
  %6556 = fsub fast float %6555, %6441
  %6557 = fcmp fast olt float %6556, 0.000000e+00
  %6558 = select i1 %6557, float 0.000000e+00, float 1.000000e+00
  %6559 = fadd fast float %6558, %6553
  %6560 = fmul fast float %6558, %6556
  %6561 = fadd fast float %6560, %6552
  %6562 = add nuw nsw i32 %6551, 1
  %6563 = icmp eq i32 %6562, 4
  br i1 %6563, label %6564, label %6550, !llvm.loop !128

; <label>:6564                                    ; preds = %6550
  %6565 = add nuw nsw i32 %6518, 1
  %6566 = icmp eq i32 %6565, 8
  br i1 %6566, label %6567, label %6515, !llvm.loop !129

; <label>:6567                                    ; preds = %6564
  %6568 = fdiv fast float 1.000000e+00, %6559
  %6569 = fmul fast float %6568, %6561
  %6570 = fdiv fast float 1.000000e+00, %6441
  %6571 = fmul fast float %6569, %6570
  %6572 = call float @dx.op.unary.f32(i32 7, float %6571)  ; Saturate(value)
  %6573 = call float @dx.op.binary.f32(i32 35, float %6572, float 0.000000e+00)  ; FMax(a,b)
  %6574 = fmul fast float %6559, 3.125000e-02
  %6575 = call float @dx.op.unary.f32(i32 7, float %6574)  ; Saturate(value)
  %6576 = fmul fast float %6575, 2.000000e+00
  %6577 = fadd fast float %6576, -1.000000e+00
  %6578 = fcmp fast ogt float %6577, 0.000000e+00
  %6579 = fcmp fast olt float %6577, 0.000000e+00
  %6580 = zext i1 %6578 to i32
  %6581 = zext i1 %6579 to i32
  %6582 = sub nsw i32 %6580, %6581
  %6583 = sitofp i32 %6582 to float
  %6584 = fmul fast float %6583, %6577
  %6585 = fsub fast float 1.000000e+00, %6584
  %6586 = fmul fast float %6585, %6585
  %6587 = fmul fast float %6586, %6585
  %6588 = fsub fast float %6585, %6587
  %6589 = fmul fast float %6588, %6573
  %6590 = fsub fast float 1.000000e+00, %6587
  %6591 = fsub fast float %6590, %6589
  %6592 = fmul fast float %6583, 5.000000e-01
  %6593 = fmul fast float %6592, %6591
  %6594 = fsub fast float 5.000000e-01, %6593
  br label %6595

; <label>:6595                                    ; preds = %6567, %6443, %6428
  %6596 = phi float [ 1.000000e+00, %6428 ], [ %6509, %6443 ], [ %6594, %6567 ]
  %6597 = fcmp fast ogt float %6024, 0.000000e+00
  br i1 %6597, label %6598, label %6762, !dx.controlflow.hints !130

; <label>:6598                                    ; preds = %6595
  %6599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6600 = extractvalue %dx.types.CBufRet.f32 %6599, 1
  %6601 = fadd fast float %6600, %5907
  %6602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6603 = extractvalue %dx.types.CBufRet.f32 %6602, 2
  %6604 = extractvalue %dx.types.CBufRet.f32 %6602, 3
  %6605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6606 = extractvalue %dx.types.CBufRet.f32 %6605, 1
  %6607 = call float @dx.op.binary.f32(i32 35, float %6601, float 0.000000e+00)  ; FMax(a,b)
  %6608 = fadd fast float %6607, 0x3F10000000000000
  %6609 = fcmp fast oeq float %6606, 0.000000e+00
  br i1 %6609, label %6610, label %6677

; <label>:6610                                    ; preds = %6598
  %6611 = extractvalue %dx.types.CBufRet.f32 %6602, 1
  %6612 = extractvalue %dx.types.CBufRet.f32 %6602, 0
  %6613 = fmul fast float %6612, %5917
  %6614 = fmul fast float %6611, %5918
  %6615 = fadd fast float %6613, 5.000000e-01
  %6616 = call float @dx.op.unary.f32(i32 27, float %6615)  ; Round_ni(value)
  %6617 = fadd fast float %6614, 5.000000e-01
  %6618 = call float @dx.op.unary.f32(i32 27, float %6617)  ; Round_ni(value)
  %6619 = fsub fast float %6615, %6616
  %6620 = fsub fast float %6617, %6618
  %6621 = fadd fast float %6616, -5.000000e-01
  %6622 = fadd fast float %6618, -5.000000e-01
  %6623 = fmul fast float %6619, 2.000000e+00
  %6624 = fsub fast float 3.000000e+00, %6623
  %6625 = fadd fast float %6623, 1.000000e+00
  %6626 = fsub fast float 2.000000e+00, %6619
  %6627 = bitcast float %6624 to i32
  %6628 = sub nsw i32 2129859010, %6627
  %6629 = bitcast i32 %6628 to float
  %6630 = fmul fast float %6629, %6626
  %6631 = fadd fast float %6630, -1.000000e+00
  %6632 = bitcast float %6625 to i32
  %6633 = sub nsw i32 2129859010, %6632
  %6634 = bitcast i32 %6633 to float
  %6635 = fmul fast float %6634, %6619
  %6636 = fadd fast float %6635, 1.000000e+00
  %6637 = fmul fast float %6620, 2.000000e+00
  %6638 = fsub fast float 3.000000e+00, %6637
  %6639 = fadd fast float %6637, 1.000000e+00
  %6640 = fsub fast float 2.000000e+00, %6620
  %6641 = bitcast float %6638 to i32
  %6642 = sub nsw i32 2129859010, %6641
  %6643 = bitcast i32 %6642 to float
  %6644 = fmul fast float %6643, %6640
  %6645 = fadd fast float %6644, -1.000000e+00
  %6646 = bitcast float %6639 to i32
  %6647 = sub nsw i32 2129859010, %6646
  %6648 = bitcast i32 %6647 to float
  %6649 = fmul fast float %6648, %6620
  %6650 = fadd fast float %6649, 1.000000e+00
  %6651 = fadd fast float %6631, %6621
  %6652 = fmul fast float %6651, %6603
  %6653 = fadd fast float %6645, %6622
  %6654 = fmul fast float %6653, %6604
  %6655 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6652, float %6654, float undef, float undef, i32 0, i32 0, i32 undef, float %6608)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6656 = extractvalue %dx.types.ResRet.f32 %6655, 0
  %6657 = fmul fast float %6656, %6624
  %6658 = fadd fast float %6636, %6621
  %6659 = fmul fast float %6658, %6603
  %6660 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6659, float %6654, float undef, float undef, i32 0, i32 0, i32 undef, float %6608)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6661 = extractvalue %dx.types.ResRet.f32 %6660, 0
  %6662 = fmul fast float %6661, %6625
  %6663 = fadd fast float %6650, %6622
  %6664 = fmul fast float %6663, %6604
  %6665 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6652, float %6664, float undef, float undef, i32 0, i32 0, i32 undef, float %6608)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6666 = extractvalue %dx.types.ResRet.f32 %6665, 0
  %6667 = fmul fast float %6666, %6624
  %6668 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6659, float %6664, float undef, float undef, i32 0, i32 0, i32 undef, float %6608)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6669 = extractvalue %dx.types.ResRet.f32 %6668, 0
  %6670 = fmul fast float %6669, %6625
  %6671 = fadd fast float %6670, %6667
  %6672 = fmul fast float %6671, %6639
  %6673 = fadd fast float %6662, %6657
  %6674 = fmul fast float %6673, %6638
  %6675 = fadd fast float %6674, %6672
  %6676 = fmul fast float %6675, 6.250000e-02
  br label %6762

; <label>:6677                                    ; preds = %6598
  %6678 = fmul fast float %318, 0x401921FB60000000
  %6679 = call float @dx.op.unary.f32(i32 13, float %6678)  ; Sin(value)
  %6680 = call float @dx.op.unary.f32(i32 12, float %6678)  ; Cos(value)
  %6681 = fsub fast float -0.000000e+00, %6679
  br label %6682

; <label>:6682                                    ; preds = %6731, %6677
  %6683 = phi float [ 0.000000e+00, %6677 ], [ %6726, %6731 ]
  %6684 = phi float [ 0.000000e+00, %6677 ], [ %6728, %6731 ]
  %6685 = phi i32 [ 0, %6677 ], [ %6732, %6731 ]
  %6686 = mul i32 %6685, 2
  %6687 = add i32 0, %6686
  %6688 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6687
  %6689 = load float, float* %6688, align 4
  %6690 = mul i32 %6685, 2
  %6691 = add i32 1, %6690
  %6692 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6691
  %6693 = load float, float* %6692, align 4
  %6694 = fmul fast float %6689, %6680
  %6695 = call float @dx.op.tertiary.f32(i32 46, float %6693, float %6681, float %6694)  ; FMad(a,b,c)
  %6696 = fmul fast float %6689, %6679
  %6697 = call float @dx.op.tertiary.f32(i32 46, float %6693, float %6680, float %6696)  ; FMad(a,b,c)
  %6698 = fmul fast float %6695, %6606
  %6699 = fmul fast float %6697, %6606
  %6700 = fadd fast float %6698, %5917
  %6701 = fadd fast float %6699, %5918
  %6702 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %56, float %6700, float %6701, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6703 = extractvalue %dx.types.ResRet.f32 %6702, 0
  %6704 = extractvalue %dx.types.ResRet.f32 %6702, 1
  %6705 = extractvalue %dx.types.ResRet.f32 %6702, 2
  %6706 = extractvalue %dx.types.ResRet.f32 %6702, 3
  %6707 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 0
  store float %6703, float* %6707, align 4
  %6708 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 1
  store float %6704, float* %6708, align 4
  %6709 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 2
  store float %6705, float* %6709, align 4
  %6710 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 3
  store float %6706, float* %6710, align 4
  %6711 = fsub fast float %6703, %6608
  %6712 = fcmp fast olt float %6711, 0.000000e+00
  %6713 = select i1 %6712, float 0.000000e+00, float 1.000000e+00
  %6714 = fadd fast float %6713, %6683
  %6715 = fmul fast float %6713, %6711
  %6716 = fadd fast float %6715, %6684
  br label %6717

; <label>:6717                                    ; preds = %6717, %6682
  %6718 = phi i32 [ 1, %6682 ], [ %6729, %6717 ]
  %6719 = phi float [ %6716, %6682 ], [ %6728, %6717 ]
  %6720 = phi float [ %6714, %6682 ], [ %6726, %6717 ]
  %6721 = getelementptr [4 x float], [4 x float]* %108, i32 0, i32 %6718
  %6722 = load float, float* %6721, align 4, !tbaa !126, !noalias !116
  %6723 = fsub fast float %6722, %6608
  %6724 = fcmp fast olt float %6723, 0.000000e+00
  %6725 = select i1 %6724, float 0.000000e+00, float 1.000000e+00
  %6726 = fadd fast float %6725, %6720
  %6727 = fmul fast float %6725, %6723
  %6728 = fadd fast float %6727, %6719
  %6729 = add nuw nsw i32 %6718, 1
  %6730 = icmp eq i32 %6729, 4
  br i1 %6730, label %6731, label %6717, !llvm.loop !128

; <label>:6731                                    ; preds = %6717
  %6732 = add nuw nsw i32 %6685, 1
  %6733 = icmp eq i32 %6732, 8
  br i1 %6733, label %6734, label %6682, !llvm.loop !129

; <label>:6734                                    ; preds = %6731
  %6735 = fdiv fast float 1.000000e+00, %6726
  %6736 = fmul fast float %6735, %6728
  %6737 = fdiv fast float 1.000000e+00, %6608
  %6738 = fmul fast float %6736, %6737
  %6739 = call float @dx.op.unary.f32(i32 7, float %6738)  ; Saturate(value)
  %6740 = call float @dx.op.binary.f32(i32 35, float %6739, float 0.000000e+00)  ; FMax(a,b)
  %6741 = fmul fast float %6726, 3.125000e-02
  %6742 = call float @dx.op.unary.f32(i32 7, float %6741)  ; Saturate(value)
  %6743 = fmul fast float %6742, 2.000000e+00
  %6744 = fadd fast float %6743, -1.000000e+00
  %6745 = fcmp fast ogt float %6744, 0.000000e+00
  %6746 = fcmp fast olt float %6744, 0.000000e+00
  %6747 = zext i1 %6745 to i32
  %6748 = zext i1 %6746 to i32
  %6749 = sub nsw i32 %6747, %6748
  %6750 = sitofp i32 %6749 to float
  %6751 = fmul fast float %6750, %6744
  %6752 = fsub fast float 1.000000e+00, %6751
  %6753 = fmul fast float %6752, %6752
  %6754 = fmul fast float %6753, %6752
  %6755 = fsub fast float %6752, %6754
  %6756 = fmul fast float %6755, %6740
  %6757 = fsub fast float 1.000000e+00, %6754
  %6758 = fsub fast float %6757, %6756
  %6759 = fmul fast float %6750, 5.000000e-01
  %6760 = fmul fast float %6759, %6758
  %6761 = fsub fast float 5.000000e-01, %6760
  br label %6762

; <label>:6762                                    ; preds = %6734, %6610, %6595
  %6763 = phi float [ 1.000000e+00, %6595 ], [ %6676, %6610 ], [ %6761, %6734 ]
  %6764 = fcmp fast ogt float %6023, 0.000000e+00
  br i1 %6764, label %6765, label %7083, !dx.controlflow.hints !131

; <label>:6765                                    ; preds = %6762
  %6766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6767 = extractvalue %dx.types.CBufRet.f32 %6766, 0
  %6768 = fadd fast float %6767, %5907
  %6769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6770 = extractvalue %dx.types.CBufRet.f32 %6769, 2
  %6771 = extractvalue %dx.types.CBufRet.f32 %6769, 3
  %6772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6773 = extractvalue %dx.types.CBufRet.f32 %6772, 0
  %6774 = call float @dx.op.binary.f32(i32 35, float %6768, float 0.000000e+00)  ; FMax(a,b)
  %6775 = fadd fast float %6774, 0x3F10000000000000
  %6776 = fcmp fast oeq float %6773, 0.000000e+00
  br i1 %5910, label %6777, label %6930, !dx.controlflow.hints !132

; <label>:6777                                    ; preds = %6765
  br i1 %6776, label %6778, label %6845

; <label>:6778                                    ; preds = %6777
  %6779 = extractvalue %dx.types.CBufRet.f32 %6769, 1
  %6780 = extractvalue %dx.types.CBufRet.f32 %6769, 0
  %6781 = fmul fast float %6780, %5899
  %6782 = fmul fast float %6779, %5903
  %6783 = fadd fast float %6781, 5.000000e-01
  %6784 = call float @dx.op.unary.f32(i32 27, float %6783)  ; Round_ni(value)
  %6785 = fadd fast float %6782, 5.000000e-01
  %6786 = call float @dx.op.unary.f32(i32 27, float %6785)  ; Round_ni(value)
  %6787 = fsub fast float %6783, %6784
  %6788 = fsub fast float %6785, %6786
  %6789 = fadd fast float %6784, -5.000000e-01
  %6790 = fadd fast float %6786, -5.000000e-01
  %6791 = fmul fast float %6787, 2.000000e+00
  %6792 = fsub fast float 3.000000e+00, %6791
  %6793 = fadd fast float %6791, 1.000000e+00
  %6794 = fsub fast float 2.000000e+00, %6787
  %6795 = bitcast float %6792 to i32
  %6796 = sub nsw i32 2129859010, %6795
  %6797 = bitcast i32 %6796 to float
  %6798 = fmul fast float %6797, %6794
  %6799 = fadd fast float %6798, -1.000000e+00
  %6800 = bitcast float %6793 to i32
  %6801 = sub nsw i32 2129859010, %6800
  %6802 = bitcast i32 %6801 to float
  %6803 = fmul fast float %6802, %6787
  %6804 = fadd fast float %6803, 1.000000e+00
  %6805 = fmul fast float %6788, 2.000000e+00
  %6806 = fsub fast float 3.000000e+00, %6805
  %6807 = fadd fast float %6805, 1.000000e+00
  %6808 = fsub fast float 2.000000e+00, %6788
  %6809 = bitcast float %6806 to i32
  %6810 = sub nsw i32 2129859010, %6809
  %6811 = bitcast i32 %6810 to float
  %6812 = fmul fast float %6811, %6808
  %6813 = fadd fast float %6812, -1.000000e+00
  %6814 = bitcast float %6807 to i32
  %6815 = sub nsw i32 2129859010, %6814
  %6816 = bitcast i32 %6815 to float
  %6817 = fmul fast float %6816, %6788
  %6818 = fadd fast float %6817, 1.000000e+00
  %6819 = fadd fast float %6799, %6789
  %6820 = fmul fast float %6819, %6770
  %6821 = fadd fast float %6813, %6790
  %6822 = fmul fast float %6821, %6771
  %6823 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6820, float %6822, float undef, float undef, i32 0, i32 0, i32 undef, float %6775)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6824 = extractvalue %dx.types.ResRet.f32 %6823, 0
  %6825 = fmul fast float %6824, %6792
  %6826 = fadd fast float %6804, %6789
  %6827 = fmul fast float %6826, %6770
  %6828 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6827, float %6822, float undef, float undef, i32 0, i32 0, i32 undef, float %6775)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6829 = extractvalue %dx.types.ResRet.f32 %6828, 0
  %6830 = fmul fast float %6829, %6793
  %6831 = fadd fast float %6818, %6790
  %6832 = fmul fast float %6831, %6771
  %6833 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6820, float %6832, float undef, float undef, i32 0, i32 0, i32 undef, float %6775)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6834 = extractvalue %dx.types.ResRet.f32 %6833, 0
  %6835 = fmul fast float %6834, %6792
  %6836 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6827, float %6832, float undef, float undef, i32 0, i32 0, i32 undef, float %6775)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6837 = extractvalue %dx.types.ResRet.f32 %6836, 0
  %6838 = fmul fast float %6837, %6793
  %6839 = fadd fast float %6838, %6835
  %6840 = fmul fast float %6839, %6807
  %6841 = fadd fast float %6830, %6825
  %6842 = fmul fast float %6841, %6806
  %6843 = fadd fast float %6842, %6840
  %6844 = fmul fast float %6843, 6.250000e-02
  br label %7083

; <label>:6845                                    ; preds = %6777
  %6846 = fmul fast float %318, 0x401921FB60000000
  %6847 = call float @dx.op.unary.f32(i32 13, float %6846)  ; Sin(value)
  %6848 = call float @dx.op.unary.f32(i32 12, float %6846)  ; Cos(value)
  %6849 = fsub fast float -0.000000e+00, %6847
  br label %6850

; <label>:6850                                    ; preds = %6899, %6845
  %6851 = phi float [ 0.000000e+00, %6845 ], [ %6894, %6899 ]
  %6852 = phi float [ 0.000000e+00, %6845 ], [ %6896, %6899 ]
  %6853 = phi i32 [ 0, %6845 ], [ %6900, %6899 ]
  %6854 = mul i32 %6853, 2
  %6855 = add i32 0, %6854
  %6856 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6855
  %6857 = load float, float* %6856, align 4
  %6858 = mul i32 %6853, 2
  %6859 = add i32 1, %6858
  %6860 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6859
  %6861 = load float, float* %6860, align 4
  %6862 = fmul fast float %6857, %6848
  %6863 = call float @dx.op.tertiary.f32(i32 46, float %6861, float %6849, float %6862)  ; FMad(a,b,c)
  %6864 = fmul fast float %6857, %6847
  %6865 = call float @dx.op.tertiary.f32(i32 46, float %6861, float %6848, float %6864)  ; FMad(a,b,c)
  %6866 = fmul fast float %6863, %6773
  %6867 = fmul fast float %6865, %6773
  %6868 = fadd fast float %6866, %5899
  %6869 = fadd fast float %6867, %5903
  %6870 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %56, float %6868, float %6869, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6871 = extractvalue %dx.types.ResRet.f32 %6870, 0
  %6872 = extractvalue %dx.types.ResRet.f32 %6870, 1
  %6873 = extractvalue %dx.types.ResRet.f32 %6870, 2
  %6874 = extractvalue %dx.types.ResRet.f32 %6870, 3
  %6875 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %6871, float* %6875, align 4
  %6876 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %6872, float* %6876, align 4
  %6877 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %6873, float* %6877, align 4
  %6878 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %6874, float* %6878, align 4
  %6879 = fsub fast float %6871, %6775
  %6880 = fcmp fast olt float %6879, 0.000000e+00
  %6881 = select i1 %6880, float 0.000000e+00, float 1.000000e+00
  %6882 = fadd fast float %6881, %6851
  %6883 = fmul fast float %6881, %6879
  %6884 = fadd fast float %6883, %6852
  br label %6885

; <label>:6885                                    ; preds = %6885, %6850
  %6886 = phi i32 [ 1, %6850 ], [ %6897, %6885 ]
  %6887 = phi float [ %6884, %6850 ], [ %6896, %6885 ]
  %6888 = phi float [ %6882, %6850 ], [ %6894, %6885 ]
  %6889 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %6886
  %6890 = load float, float* %6889, align 4, !tbaa !126, !noalias !116
  %6891 = fsub fast float %6890, %6775
  %6892 = fcmp fast olt float %6891, 0.000000e+00
  %6893 = select i1 %6892, float 0.000000e+00, float 1.000000e+00
  %6894 = fadd fast float %6893, %6888
  %6895 = fmul fast float %6893, %6891
  %6896 = fadd fast float %6895, %6887
  %6897 = add nuw nsw i32 %6886, 1
  %6898 = icmp eq i32 %6897, 4
  br i1 %6898, label %6899, label %6885, !llvm.loop !128

; <label>:6899                                    ; preds = %6885
  %6900 = add nuw nsw i32 %6853, 1
  %6901 = icmp eq i32 %6900, 8
  br i1 %6901, label %6902, label %6850, !llvm.loop !129

; <label>:6902                                    ; preds = %6899
  %6903 = fdiv fast float 1.000000e+00, %6894
  %6904 = fmul fast float %6903, %6896
  %6905 = fdiv fast float 1.000000e+00, %6775
  %6906 = fmul fast float %6904, %6905
  %6907 = call float @dx.op.unary.f32(i32 7, float %6906)  ; Saturate(value)
  %6908 = call float @dx.op.binary.f32(i32 35, float %6907, float 0.000000e+00)  ; FMax(a,b)
  %6909 = fmul fast float %6894, 3.125000e-02
  %6910 = call float @dx.op.unary.f32(i32 7, float %6909)  ; Saturate(value)
  %6911 = fmul fast float %6910, 2.000000e+00
  %6912 = fadd fast float %6911, -1.000000e+00
  %6913 = fcmp fast ogt float %6912, 0.000000e+00
  %6914 = fcmp fast olt float %6912, 0.000000e+00
  %6915 = zext i1 %6913 to i32
  %6916 = zext i1 %6914 to i32
  %6917 = sub nsw i32 %6915, %6916
  %6918 = sitofp i32 %6917 to float
  %6919 = fmul fast float %6918, %6912
  %6920 = fsub fast float 1.000000e+00, %6919
  %6921 = fmul fast float %6920, %6920
  %6922 = fmul fast float %6921, %6920
  %6923 = fsub fast float %6920, %6922
  %6924 = fmul fast float %6923, %6908
  %6925 = fsub fast float 1.000000e+00, %6922
  %6926 = fsub fast float %6925, %6924
  %6927 = fmul fast float %6918, 5.000000e-01
  %6928 = fmul fast float %6927, %6926
  %6929 = fsub fast float 5.000000e-01, %6928
  br label %7083

; <label>:6930                                    ; preds = %6765
  br i1 %6776, label %6931, label %6998

; <label>:6931                                    ; preds = %6930
  %6932 = extractvalue %dx.types.CBufRet.f32 %6769, 1
  %6933 = extractvalue %dx.types.CBufRet.f32 %6769, 0
  %6934 = fmul fast float %6933, %5899
  %6935 = fmul fast float %6932, %5903
  %6936 = fadd fast float %6934, 5.000000e-01
  %6937 = call float @dx.op.unary.f32(i32 27, float %6936)  ; Round_ni(value)
  %6938 = fadd fast float %6935, 5.000000e-01
  %6939 = call float @dx.op.unary.f32(i32 27, float %6938)  ; Round_ni(value)
  %6940 = fsub fast float %6936, %6937
  %6941 = fsub fast float %6938, %6939
  %6942 = fadd fast float %6937, -5.000000e-01
  %6943 = fadd fast float %6939, -5.000000e-01
  %6944 = fmul fast float %6940, 2.000000e+00
  %6945 = fsub fast float 3.000000e+00, %6944
  %6946 = fadd fast float %6944, 1.000000e+00
  %6947 = fsub fast float 2.000000e+00, %6940
  %6948 = bitcast float %6945 to i32
  %6949 = sub nsw i32 2129859010, %6948
  %6950 = bitcast i32 %6949 to float
  %6951 = fmul fast float %6950, %6947
  %6952 = fadd fast float %6951, -1.000000e+00
  %6953 = bitcast float %6946 to i32
  %6954 = sub nsw i32 2129859010, %6953
  %6955 = bitcast i32 %6954 to float
  %6956 = fmul fast float %6955, %6940
  %6957 = fadd fast float %6956, 1.000000e+00
  %6958 = fmul fast float %6941, 2.000000e+00
  %6959 = fsub fast float 3.000000e+00, %6958
  %6960 = fadd fast float %6958, 1.000000e+00
  %6961 = fsub fast float 2.000000e+00, %6941
  %6962 = bitcast float %6959 to i32
  %6963 = sub nsw i32 2129859010, %6962
  %6964 = bitcast i32 %6963 to float
  %6965 = fmul fast float %6964, %6961
  %6966 = fadd fast float %6965, -1.000000e+00
  %6967 = bitcast float %6960 to i32
  %6968 = sub nsw i32 2129859010, %6967
  %6969 = bitcast i32 %6968 to float
  %6970 = fmul fast float %6969, %6941
  %6971 = fadd fast float %6970, 1.000000e+00
  %6972 = fadd fast float %6952, %6942
  %6973 = fmul fast float %6972, %6770
  %6974 = fadd fast float %6966, %6943
  %6975 = fmul fast float %6974, %6771
  %6976 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6973, float %6975, float undef, float undef, i32 0, i32 0, i32 undef, float %6775)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6977 = extractvalue %dx.types.ResRet.f32 %6976, 0
  %6978 = fmul fast float %6977, %6945
  %6979 = fadd fast float %6957, %6942
  %6980 = fmul fast float %6979, %6770
  %6981 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6980, float %6975, float undef, float undef, i32 0, i32 0, i32 undef, float %6775)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6982 = extractvalue %dx.types.ResRet.f32 %6981, 0
  %6983 = fmul fast float %6982, %6946
  %6984 = fadd fast float %6971, %6943
  %6985 = fmul fast float %6984, %6771
  %6986 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6973, float %6985, float undef, float undef, i32 0, i32 0, i32 undef, float %6775)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6987 = extractvalue %dx.types.ResRet.f32 %6986, 0
  %6988 = fmul fast float %6987, %6945
  %6989 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6980, float %6985, float undef, float undef, i32 0, i32 0, i32 undef, float %6775)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6990 = extractvalue %dx.types.ResRet.f32 %6989, 0
  %6991 = fmul fast float %6990, %6946
  %6992 = fadd fast float %6991, %6988
  %6993 = fmul fast float %6992, %6960
  %6994 = fadd fast float %6983, %6978
  %6995 = fmul fast float %6994, %6959
  %6996 = fadd fast float %6995, %6993
  %6997 = fmul fast float %6996, 6.250000e-02
  br label %7083

; <label>:6998                                    ; preds = %6930
  %6999 = fmul fast float %318, 0x401921FB60000000
  %7000 = call float @dx.op.unary.f32(i32 13, float %6999)  ; Sin(value)
  %7001 = call float @dx.op.unary.f32(i32 12, float %6999)  ; Cos(value)
  %7002 = fsub fast float -0.000000e+00, %7000
  br label %7003

; <label>:7003                                    ; preds = %7052, %6998
  %7004 = phi float [ 0.000000e+00, %6998 ], [ %7047, %7052 ]
  %7005 = phi float [ 0.000000e+00, %6998 ], [ %7049, %7052 ]
  %7006 = phi i32 [ 0, %6998 ], [ %7053, %7052 ]
  %7007 = mul i32 %7006, 2
  %7008 = add i32 0, %7007
  %7009 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7008
  %7010 = load float, float* %7009, align 4
  %7011 = mul i32 %7006, 2
  %7012 = add i32 1, %7011
  %7013 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7012
  %7014 = load float, float* %7013, align 4
  %7015 = fmul fast float %7010, %7001
  %7016 = call float @dx.op.tertiary.f32(i32 46, float %7014, float %7002, float %7015)  ; FMad(a,b,c)
  %7017 = fmul fast float %7010, %7000
  %7018 = call float @dx.op.tertiary.f32(i32 46, float %7014, float %7001, float %7017)  ; FMad(a,b,c)
  %7019 = fmul fast float %7016, %6773
  %7020 = fmul fast float %7018, %6773
  %7021 = fadd fast float %7019, %5899
  %7022 = fadd fast float %7020, %5903
  %7023 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %56, float %7021, float %7022, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7024 = extractvalue %dx.types.ResRet.f32 %7023, 0
  %7025 = extractvalue %dx.types.ResRet.f32 %7023, 1
  %7026 = extractvalue %dx.types.ResRet.f32 %7023, 2
  %7027 = extractvalue %dx.types.ResRet.f32 %7023, 3
  %7028 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %7024, float* %7028, align 4
  %7029 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %7025, float* %7029, align 4
  %7030 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %7026, float* %7030, align 4
  %7031 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %7027, float* %7031, align 4
  %7032 = fsub fast float %7024, %6775
  %7033 = fcmp fast olt float %7032, 0.000000e+00
  %7034 = select i1 %7033, float 0.000000e+00, float 1.000000e+00
  %7035 = fadd fast float %7034, %7004
  %7036 = fmul fast float %7034, %7032
  %7037 = fadd fast float %7036, %7005
  br label %7038

; <label>:7038                                    ; preds = %7038, %7003
  %7039 = phi i32 [ 1, %7003 ], [ %7050, %7038 ]
  %7040 = phi float [ %7037, %7003 ], [ %7049, %7038 ]
  %7041 = phi float [ %7035, %7003 ], [ %7047, %7038 ]
  %7042 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %7039
  %7043 = load float, float* %7042, align 4, !tbaa !126, !noalias !116
  %7044 = fsub fast float %7043, %6775
  %7045 = fcmp fast olt float %7044, 0.000000e+00
  %7046 = select i1 %7045, float 0.000000e+00, float 1.000000e+00
  %7047 = fadd fast float %7046, %7041
  %7048 = fmul fast float %7046, %7044
  %7049 = fadd fast float %7048, %7040
  %7050 = add nuw nsw i32 %7039, 1
  %7051 = icmp eq i32 %7050, 4
  br i1 %7051, label %7052, label %7038, !llvm.loop !128

; <label>:7052                                    ; preds = %7038
  %7053 = add nuw nsw i32 %7006, 1
  %7054 = icmp eq i32 %7053, 8
  br i1 %7054, label %7055, label %7003, !llvm.loop !129

; <label>:7055                                    ; preds = %7052
  %7056 = fdiv fast float 1.000000e+00, %7047
  %7057 = fmul fast float %7056, %7049
  %7058 = fdiv fast float 1.000000e+00, %6775
  %7059 = fmul fast float %7057, %7058
  %7060 = call float @dx.op.unary.f32(i32 7, float %7059)  ; Saturate(value)
  %7061 = call float @dx.op.binary.f32(i32 35, float %7060, float 0.000000e+00)  ; FMax(a,b)
  %7062 = fmul fast float %7047, 3.125000e-02
  %7063 = call float @dx.op.unary.f32(i32 7, float %7062)  ; Saturate(value)
  %7064 = fmul fast float %7063, 2.000000e+00
  %7065 = fadd fast float %7064, -1.000000e+00
  %7066 = fcmp fast ogt float %7065, 0.000000e+00
  %7067 = fcmp fast olt float %7065, 0.000000e+00
  %7068 = zext i1 %7066 to i32
  %7069 = zext i1 %7067 to i32
  %7070 = sub nsw i32 %7068, %7069
  %7071 = sitofp i32 %7070 to float
  %7072 = fmul fast float %7071, %7065
  %7073 = fsub fast float 1.000000e+00, %7072
  %7074 = fmul fast float %7073, %7073
  %7075 = fmul fast float %7074, %7073
  %7076 = fsub fast float %7073, %7075
  %7077 = fmul fast float %7076, %7061
  %7078 = fsub fast float 1.000000e+00, %7075
  %7079 = fsub fast float %7078, %7077
  %7080 = fmul fast float %7071, 5.000000e-01
  %7081 = fmul fast float %7080, %7079
  %7082 = fsub fast float 5.000000e-01, %7081
  br label %7083

; <label>:7083                                    ; preds = %7055, %6931, %6902, %6778, %6762
  %7084 = phi float [ 1.000000e+00, %6762 ], [ %6844, %6778 ], [ %6929, %6902 ], [ %6997, %6931 ], [ %7082, %7055 ]
  %7085 = fsub fast float %6596, %6429
  %7086 = fmul fast float %7085, %5996
  %7087 = fadd fast float %7086, %6429
  %7088 = fsub fast float %6763, %7087
  %7089 = fmul fast float %7088, %5995
  %7090 = fadd fast float %7089, %7087
  %7091 = fsub fast float %7084, %7090
  %7092 = fmul fast float %7091, %6023
  %7093 = fadd fast float %7092, %7090
  %7094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7095 = extractvalue %dx.types.CBufRet.f32 %7094, 2
  %7096 = fcmp fast ogt float %7095, 0.000000e+00
  br i1 %7096, label %7097, label %7137, !dx.controlflow.hints !133

; <label>:7097                                    ; preds = %7083
  %7098 = fcmp fast ugt float %7095, 0.000000e+00
  br i1 %7098, label %7099, label %7134

; <label>:7099                                    ; preds = %7097
  %7100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7101 = extractvalue %dx.types.CBufRet.f32 %7100, 0
  %7102 = extractvalue %dx.types.CBufRet.f32 %7100, 1
  %7103 = extractvalue %dx.types.CBufRet.f32 %7100, 2
  %7104 = extractvalue %dx.types.CBufRet.f32 %7100, 3
  %7105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7106 = extractvalue %dx.types.CBufRet.f32 %7105, 0
  %7107 = extractvalue %dx.types.CBufRet.f32 %7105, 1
  %7108 = extractvalue %dx.types.CBufRet.f32 %7105, 2
  %7109 = extractvalue %dx.types.CBufRet.f32 %7105, 3
  %7110 = extractvalue %dx.types.CBufRet.f32 %7094, 0
  %7111 = extractvalue %dx.types.CBufRet.f32 %7094, 1
  %7112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7113 = extractvalue %dx.types.CBufRet.f32 %7112, 0
  %7114 = extractvalue %dx.types.CBufRet.f32 %7112, 1
  %7115 = extractvalue %dx.types.CBufRet.f32 %7112, 2
  %7116 = fadd fast float %7113, %5876
  %7117 = fadd fast float %7114, %5877
  %7118 = fadd fast float %7115, %5878
  %7119 = fmul fast float %7116, %7101
  %7120 = call float @dx.op.tertiary.f32(i32 46, float %7102, float %7117, float %7119)  ; FMad(a,b,c)
  %7121 = call float @dx.op.tertiary.f32(i32 46, float %7103, float %7118, float %7120)  ; FMad(a,b,c)
  %7122 = fadd fast float %7121, %7104
  %7123 = fmul fast float %7116, %7106
  %7124 = call float @dx.op.tertiary.f32(i32 46, float %7107, float %7117, float %7123)  ; FMad(a,b,c)
  %7125 = call float @dx.op.tertiary.f32(i32 46, float %7108, float %7118, float %7124)  ; FMad(a,b,c)
  %7126 = fadd fast float %7125, %7109
  %7127 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %52, float %7122, float %7126, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7128 = extractvalue %dx.types.ResRet.f32 %7127, 0
  %7129 = fmul fast float %7128, %7111
  %7130 = fadd fast float %7129, %7110
  %7131 = call float @dx.op.unary.f32(i32 7, float %7130)  ; Saturate(value)
  %7132 = fmul fast float %7131, %7095
  %7133 = fsub fast float 1.000000e+00, %7132
  br label %7134

; <label>:7134                                    ; preds = %7099, %7097
  %7135 = phi float [ %7133, %7099 ], [ 1.000000e+00, %7097 ]
  %7136 = fmul fast float %7135, %7093
  br label %7137

; <label>:7137                                    ; preds = %7134, %7083, %5856
  %7138 = phi float [ 1.000000e+00, %5856 ], [ %7136, %7134 ], [ %7093, %7083 ]
  %7139 = call float @dx.op.binary.f32(i32 36, float %7138, float %7138)  ; FMin(a,b)
  %7140 = call float @dx.op.binary.f32(i32 36, float %7138, float %7139)  ; FMin(a,b)
  %7141 = fcmp fast ogt float %7140, 0.000000e+00
  br i1 %7141, label %7142, label %7307, !dx.controlflow.hints !134

; <label>:7142                                    ; preds = %7137
  %7143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7144 = extractvalue %dx.types.CBufRet.f32 %7143, 0
  %7145 = extractvalue %dx.types.CBufRet.f32 %7143, 1
  %7146 = extractvalue %dx.types.CBufRet.f32 %7143, 2
  %7147 = extractvalue %dx.types.CBufRet.f32 %7143, 3
  %7148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7149 = extractvalue %dx.types.CBufRet.f32 %7148, 0
  %7150 = extractvalue %dx.types.CBufRet.f32 %7148, 1
  %7151 = extractvalue %dx.types.CBufRet.f32 %7148, 2
  %7152 = extractvalue %dx.types.CBufRet.f32 %7148, 3
  %7153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7154 = extractvalue %dx.types.CBufRet.f32 %7153, 0
  %7155 = extractvalue %dx.types.CBufRet.f32 %7153, 1
  %7156 = extractvalue %dx.types.CBufRet.f32 %7153, 2
  %7157 = extractvalue %dx.types.CBufRet.f32 %7153, 3
  %7158 = fmul fast float %7144, %5876
  %7159 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %7145, float %7158)  ; FMad(a,b,c)
  %7160 = call float @dx.op.tertiary.f32(i32 46, float %5878, float %7146, float %7159)  ; FMad(a,b,c)
  %7161 = fadd fast float %7160, %7147
  %7162 = fmul fast float %7149, %5876
  %7163 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %7150, float %7162)  ; FMad(a,b,c)
  %7164 = call float @dx.op.tertiary.f32(i32 46, float %5878, float %7151, float %7163)  ; FMad(a,b,c)
  %7165 = fadd fast float %7164, %7152
  %7166 = fmul fast float %7154, %5876
  %7167 = call float @dx.op.tertiary.f32(i32 46, float %5877, float %7155, float %7166)  ; FMad(a,b,c)
  %7168 = call float @dx.op.tertiary.f32(i32 46, float %5878, float %7156, float %7167)  ; FMad(a,b,c)
  %7169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7170 = extractvalue %dx.types.CBufRet.f32 %7169, 0
  %7171 = extractvalue %dx.types.CBufRet.f32 %7169, 1
  %7172 = extractvalue %dx.types.CBufRet.f32 %7169, 3
  %7173 = fmul fast float %7172, %7161
  %7174 = fmul fast float %7172, %7165
  %7175 = fadd fast float %7173, %7170
  %7176 = fadd fast float %7174, %7171
  %7177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7178 = extractvalue %dx.types.CBufRet.f32 %7177, 0
  %7179 = extractvalue %dx.types.CBufRet.f32 %7177, 1
  %7180 = fsub fast float %7175, %7178
  %7181 = fsub fast float %7176, %7179
  %7182 = fcmp fast olt float %7180, 0.000000e+00
  %7183 = fcmp fast olt float %7181, 0.000000e+00
  %7184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7185 = extractvalue %dx.types.CBufRet.f32 %7184, 0
  %7186 = extractvalue %dx.types.CBufRet.f32 %7184, 1
  %7187 = extractvalue %dx.types.CBufRet.f32 %7184, 2
  %7188 = extractvalue %dx.types.CBufRet.f32 %7184, 3
  %7189 = select i1 %7182, float %7185, float %7187
  %7190 = select i1 %7183, float %7186, float %7188
  %7191 = fmul fast float %7189, %7180
  %7192 = fmul fast float %7190, %7181
  %7193 = call float @dx.op.unary.f32(i32 6, float %7191)  ; FAbs(value)
  %7194 = call float @dx.op.unary.f32(i32 6, float %7192)  ; FAbs(value)
  %7195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7196 = extractvalue %dx.types.CBufRet.f32 %7195, 0
  %7197 = call float @dx.op.binary.f32(i32 35, float %7193, float %7194)  ; FMax(a,b)
  %7198 = fsub fast float %7196, %7197
  %7199 = call float @dx.op.unary.f32(i32 7, float %7198)  ; Saturate(value)
  %7200 = fcmp fast ogt float %7199, 0.000000e+00
  br i1 %7200, label %7201, label %7242, !dx.controlflow.hints !135

; <label>:7201                                    ; preds = %7142
  %7202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %55, float %7175, float %7176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7203 = extractvalue %dx.types.ResRet.f32 %7202, 1
  %7204 = fcmp fast ogt float %7203, 0.000000e+00
  br i1 %7204, label %7205, label %7237

; <label>:7205                                    ; preds = %7201
  %7206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %55, float %7175, float %7176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7207 = extractvalue %dx.types.ResRet.f32 %7206, 0
  %7208 = extractvalue %dx.types.ResRet.f32 %7206, 1
  %7209 = extractvalue %dx.types.ResRet.f32 %7206, 2
  %7210 = extractvalue %dx.types.ResRet.f32 %7206, 3
  %7211 = fsub fast float 1.000000e+00, %7157
  %7212 = fsub fast float %7211, %7168
  %7213 = fmul fast float %7212, 0x400921FB60000000
  %7214 = fadd fast float %7213, 0x3FF921FB60000000
  %7215 = call float @dx.op.unary.f32(i32 13, float %7214)  ; Sin(value)
  %7216 = fadd fast float %7215, -1.000000e+00
  %7217 = fmul fast float %7216, 0x3FD45F3060000000
  %7218 = fmul fast float %7212, 0x401921FB60000000
  %7219 = fadd fast float %7218, 0x400921FB60000000
  %7220 = call float @dx.op.unary.f32(i32 13, float %7219)  ; Sin(value)
  %7221 = fadd fast float %7220, 0x3E7777A5C0000000
  %7222 = fmul fast float %7221, 0x3FC45F3060000000
  %7223 = fmul fast float %7212, 0x4022D97C80000000
  %7224 = fadd fast float %7223, 0x4012D97C80000000
  %7225 = call float @dx.op.unary.f32(i32 13, float %7224)  ; Sin(value)
  %7226 = fadd fast float %7225, 1.000000e+00
  %7227 = fmul fast float %7226, 0x3FBB2995E0000000
  %7228 = fmul fast float %7212, 0x402921FB60000000
  %7229 = fadd fast float %7228, 0x401921FB60000000
  %7230 = call float @dx.op.unary.f32(i32 13, float %7229)  ; Sin(value)
  %7231 = fadd fast float %7230, 0xBE8777A5C0000000
  %7232 = fmul fast float %7231, 0x3FB45F3060000000
  %7233 = call float @dx.op.dot4.f32(i32 56, float %7207, float %7208, float %7209, float %7210, float %7217, float %7222, float %7227, float %7232)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7234 = fmul fast float %7233, 0xBFF7154760000000
  %7235 = call float @dx.op.unary.f32(i32 21, float %7234)  ; Exp(value)
  %7236 = call float @dx.op.unary.f32(i32 7, float %7235)  ; Saturate(value)
  br label %7237

; <label>:7237                                    ; preds = %7205, %7201
  %7238 = phi float [ %7236, %7205 ], [ 1.000000e+00, %7201 ]
  %7239 = fadd fast float %7238, -1.000000e+00
  %7240 = fmul fast float %7239, %7199
  %7241 = fadd fast float %7240, 1.000000e+00
  br label %7242

; <label>:7242                                    ; preds = %7237, %7142
  %7243 = phi float [ %7241, %7237 ], [ 1.000000e+00, %7142 ]
  %7244 = fmul fast float %7243, %7138
  %7245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7246 = extractvalue %dx.types.CBufRet.f32 %7245, 0
  %7247 = extractvalue %dx.types.CBufRet.f32 %7245, 1
  %7248 = extractvalue %dx.types.CBufRet.f32 %7245, 2
  %7249 = fadd fast float %7246, %203
  %7250 = fadd fast float %7247, %204
  %7251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7252 = extractvalue %dx.types.CBufRet.f32 %7251, 1
  %7253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7254 = extractvalue %dx.types.CBufRet.f32 %7253, 0
  %7255 = extractvalue %dx.types.CBufRet.f32 %7253, 1
  %7256 = extractvalue %dx.types.CBufRet.f32 %7253, 2
  %7257 = fsub fast float -0.000000e+00, %7249
  %7258 = fsub fast float -0.000000e+00, %7250
  %7259 = fsub fast float %5136, %7248
  %7260 = fadd fast float %7259, %7252
  %7261 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7257, float %7258, float %7260)  ; Dot3(ax,ay,az,bx,by,bz)
  %7262 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7254, float %7255, float %7256)  ; Dot3(ax,ay,az,bx,by,bz)
  %7263 = fdiv fast float 1.000000e+00, %7262
  %7264 = fmul fast float %7263, %7261
  %7265 = fmul fast float %7254, %7264
  %7266 = fmul fast float %7255, %7264
  %7267 = fadd fast float %7265, %7249
  %7268 = fadd fast float %7266, %7250
  %7269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7270 = extractvalue %dx.types.CBufRet.f32 %7269, 0
  %7271 = extractvalue %dx.types.CBufRet.f32 %7269, 1
  %7272 = fsub fast float %7267, %7270
  %7273 = fsub fast float %7268, %7271
  %7274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7275 = extractvalue %dx.types.CBufRet.f32 %7274, 2
  %7276 = extractvalue %dx.types.CBufRet.f32 %7274, 3
  %7277 = fmul fast float %7272, %7275
  %7278 = fmul fast float %7273, %7276
  %7279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7280 = extractvalue %dx.types.CBufRet.i32 %7279, 3
  %7281 = icmp eq i32 %7280, 0
  br i1 %7281, label %7287, label %7282

; <label>:7282                                    ; preds = %7242
  %7283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7277, float %7278, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7284 = extractvalue %dx.types.ResRet.f32 %7283, 0
  %7285 = extractvalue %dx.types.ResRet.f32 %7283, 1
  %7286 = extractvalue %dx.types.ResRet.f32 %7283, 2
  br label %7292

; <label>:7287                                    ; preds = %7242
  %7288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %7277, float %7278, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7289 = extractvalue %dx.types.ResRet.f32 %7288, 0
  %7290 = extractvalue %dx.types.ResRet.f32 %7288, 1
  %7291 = extractvalue %dx.types.ResRet.f32 %7288, 2
  br label %7292

; <label>:7292                                    ; preds = %7287, %7282
  %7293 = phi float [ %7284, %7282 ], [ %7289, %7287 ]
  %7294 = phi float [ %7285, %7282 ], [ %7290, %7287 ]
  %7295 = phi float [ %7286, %7282 ], [ %7291, %7287 ]
  %7296 = extractvalue %dx.types.CBufRet.f32 %7251, 2
  %7297 = fmul fast float %7296, %7293
  %7298 = extractvalue %dx.types.CBufRet.f32 %7251, 0
  %7299 = fsub fast float %7264, %7298
  %7300 = fsub fast float %7299, %7297
  %7301 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7300)  ; FMax(a,b)
  %7302 = fmul fast float %7301, %7294
  %7303 = call float @dx.op.binary.f32(i32 36, float %7295, float %7302)  ; FMin(a,b)
  %7304 = fmul fast float %7303, 0xBFF7154760000000
  %7305 = call float @dx.op.unary.f32(i32 21, float %7304)  ; Exp(value)
  %7306 = fmul fast float %7244, %7305
  br label %7307

; <label>:7307                                    ; preds = %7292, %7137
  %7308 = phi float [ %7306, %7292 ], [ %7138, %7137 ]
  %7309 = call float @dx.op.binary.f32(i32 36, float %7308, float %7308)  ; FMin(a,b)
  %7310 = call float @dx.op.binary.f32(i32 36, float %7308, float %7309)  ; FMin(a,b)
  %7311 = fcmp fast ogt float %7310, 0.000000e+00
  br i1 %7311, label %7312, label %7559, !dx.controlflow.hints !136

; <label>:7312                                    ; preds = %7307
  %7313 = fmul fast float %7308, %5868
  %7314 = fmul fast float %7308, %5869
  %7315 = fmul fast float %7308, %5870
  %7316 = fsub fast float %205, %4353
  %7317 = fcmp fast ogt float %7316, 0.000000e+00
  %7318 = fmul fast float %5857, 5.120000e+02
  %7319 = fmul fast float %5858, 5.120000e+02
  %7320 = fmul fast float %5859, 5.120000e+02
  %7321 = fadd fast float %7320, %205
  %7322 = fsub fast float %4353, %7321
  %7323 = fmul fast float %7322, 2.000000e+00
  %7324 = fadd fast float %7323, %7321
  %7325 = select i1 %7317, float %7324, float %7321
  %7326 = fsub fast float %7325, %205
  %7327 = call float @dx.op.dot3.f32(i32 55, float %7318, float %7319, float %7326, float %7318, float %7319, float %7326)  ; Dot3(ax,ay,az,bx,by,bz)
  %7328 = call float @dx.op.unary.f32(i32 25, float %7327)  ; Rsqrt(value)
  %7329 = fmul fast float %7328, %7318
  %7330 = fmul fast float %7328, %7319
  %7331 = fmul fast float %7328, %7326
  %7332 = fsub fast float %4353, %205
  %7333 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7332)  ; Dot3(ax,ay,az,bx,by,bz)
  %7334 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7329, float %7330, float %7331)  ; Dot3(ax,ay,az,bx,by,bz)
  %7335 = fdiv fast float 1.000000e+00, %7334
  %7336 = fmul fast float %7335, %7333
  %7337 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7316, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7338 = fcmp fast ogt float %7337, 0.000000e+00
  %7339 = fcmp fast olt float %7337, 0.000000e+00
  %7340 = zext i1 %7338 to i32
  %7341 = zext i1 %7339 to i32
  %7342 = sub nsw i32 %7340, %7341
  %7343 = sitofp i32 %7342 to float
  %7344 = fsub fast float %7325, %4353
  %7345 = call float @dx.op.dot3.f32(i32 55, float %7318, float %7319, float %7344, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7346 = fcmp fast ogt float %7345, 0.000000e+00
  %7347 = fcmp fast olt float %7345, 0.000000e+00
  %7348 = zext i1 %7346 to i32
  %7349 = zext i1 %7347 to i32
  %7350 = sub nsw i32 %7348, %7349
  %7351 = sitofp i32 %7350 to float
  %7352 = fcmp fast une float %7343, %7351
  br i1 %7352, label %7353, label %7363

; <label>:7353                                    ; preds = %7312
  %7354 = fmul fast float %7336, %7331
  %7355 = fmul fast float %7336, %7330
  %7356 = fmul fast float %7336, %7329
  %7357 = fmul fast float %7356, %7356
  %7358 = fmul fast float %7355, %7355
  %7359 = fadd fast float %7357, %7358
  %7360 = fmul fast float %7354, %7354
  %7361 = fadd fast float %7359, %7360
  %7362 = call float @dx.op.unary.f32(i32 24, float %7361)  ; Sqrt(value)
  br label %7373

; <label>:7363                                    ; preds = %7312
  %7364 = icmp slt i32 %7342, 0
  br i1 %7364, label %7365, label %7373

; <label>:7365                                    ; preds = %7363
  %7366 = fsub fast float %205, %7325
  %7367 = fmul fast float %7318, %7318
  %7368 = fmul fast float %7319, %7319
  %7369 = fadd fast float %7367, %7368
  %7370 = fmul fast float %7366, %7366
  %7371 = fadd fast float %7369, %7370
  %7372 = call float @dx.op.unary.f32(i32 24, float %7371)  ; Sqrt(value)
  br label %7373

; <label>:7373                                    ; preds = %7365, %7363, %7353
  %7374 = phi float [ %7362, %7353 ], [ %7372, %7365 ], [ 0.000000e+00, %7363 ]
  %7375 = fsub fast float -0.000000e+00, %7374
  %7376 = select i1 %7317, float -0.000000e+00, float %7375
  %7377 = fmul fast float %4350, 0x3FF7154760000000
  %7378 = fmul fast float %7377, %7376
  %7379 = fmul fast float %4351, 0x3FF7154760000000
  %7380 = fmul fast float %7379, %7376
  %7381 = fmul fast float %4352, 0x3FF7154760000000
  %7382 = fmul fast float %7381, %7376
  %7383 = call float @dx.op.unary.f32(i32 21, float %7378)  ; Exp(value)
  %7384 = call float @dx.op.unary.f32(i32 21, float %7380)  ; Exp(value)
  %7385 = call float @dx.op.unary.f32(i32 21, float %7382)  ; Exp(value)
  %7386 = call float @dx.op.unary.f32(i32 7, float %7383)  ; Saturate(value)
  %7387 = call float @dx.op.unary.f32(i32 7, float %7384)  ; Saturate(value)
  %7388 = call float @dx.op.unary.f32(i32 7, float %7385)  ; Saturate(value)
  %7389 = fmul fast float %7313, %7386
  %7390 = fmul fast float %7314, %7387
  %7391 = fmul fast float %7315, %7388
  %7392 = fsub fast float %5857, %236
  %7393 = fsub fast float %5858, %237
  %7394 = fsub fast float %5859, %238
  %7395 = call float @dx.op.dot3.f32(i32 55, float %7392, float %7393, float %7394, float %7392, float %7393, float %7394)  ; Dot3(ax,ay,az,bx,by,bz)
  %7396 = call float @dx.op.unary.f32(i32 25, float %7395)  ; Rsqrt(value)
  %7397 = fmul fast float %7396, %7392
  %7398 = fmul fast float %7396, %7393
  %7399 = fmul fast float %7396, %7394
  %7400 = call float @dx.op.dot3.f32(i32 55, float %5857, float %5858, float %5859, float %5131, float %5132, float %5133)  ; Dot3(ax,ay,az,bx,by,bz)
  %7401 = call float @dx.op.dot3.f32(i32 55, float %4960, float %4961, float %4962, float %7397, float %7398, float %7399)  ; Dot3(ax,ay,az,bx,by,bz)
  %7402 = call float @dx.op.unary.f32(i32 7, float %7400)  ; Saturate(value)
  %7403 = fmul fast float %7402, %7402
  %7404 = fmul fast float %7403, %5164
  %7405 = call float @dx.op.unary.f32(i32 7, float %7404)  ; Saturate(value)
  %7406 = fmul fast float %7405, %7402
  %7407 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %7397, float %7398, float %7399)  ; Dot3(ax,ay,az,bx,by,bz)
  %7408 = fmul fast float %7407, %7407
  %7409 = call float @dx.op.unary.f32(i32 6, float %7400)  ; FAbs(value)
  %7410 = fsub fast float 1.000000e+00, %5157
  %7411 = fmul fast float %5139, %5139
  %7412 = fmul fast float %7411, %7410
  %7413 = fadd fast float %7412, %5157
  %7414 = bitcast float %7413 to i32
  %7415 = ashr i32 %7414, 1
  %7416 = add nsw i32 %7415, 532487669
  %7417 = bitcast i32 %7416 to float
  %7418 = fadd fast float %7417, %5139
  %7419 = fmul fast float %5157, %7408
  %7420 = fsub fast float 1.000000e+00, %7408
  %7421 = fadd fast float %7420, %7419
  %7422 = fmul fast float %7409, %7409
  %7423 = fmul fast float %7422, %7410
  %7424 = fadd fast float %7423, %5157
  %7425 = bitcast float %7424 to i32
  %7426 = ashr i32 %7425, 1
  %7427 = add nsw i32 %7426, 532487669
  %7428 = bitcast i32 %7427 to float
  %7429 = fadd fast float %7428, %7409
  %7430 = fmul fast float %7421, %7421
  %7431 = fmul fast float %7430, %7418
  %7432 = fmul fast float %7431, %7429
  %7433 = fdiv fast float 0x3FF0A00000000000, %7432
  %7434 = fmul fast float %7433, %5157
  %7435 = call float @dx.op.unary.f32(i32 6, float %7401)  ; FAbs(value)
  %7436 = fsub fast float 1.000000e+00, %7435
  %7437 = bitcast float %7436 to i32
  %7438 = sitofp i32 %7437 to float
  %7439 = fmul fast float %7438, 5.000000e+00
  %7440 = fadd fast float %7439, 0xC1EFBF8940000000
  %7441 = fptosi float %7440 to i32
  %7442 = bitcast i32 %7441 to float
  %7443 = fsub fast float 1.000000e+00, %5128
  %7444 = fsub fast float 1.000000e+00, %5129
  %7445 = fsub fast float 1.000000e+00, %5137
  %7446 = fmul fast float %7442, %7443
  %7447 = fmul fast float %7442, %7444
  %7448 = fmul fast float %7442, %7445
  %7449 = fadd fast float %7446, %5128
  %7450 = fadd fast float %7447, %5129
  %7451 = fadd fast float %7448, %5137
  br i1 %5276, label %7452, label %7475

; <label>:7452                                    ; preds = %7373
  %7453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3927, float %7435, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7454 = extractvalue %dx.types.ResRet.f32 %7453, 0
  %7455 = extractvalue %dx.types.ResRet.f32 %7453, 1
  %7456 = extractvalue %dx.types.ResRet.f32 %7453, 2
  %7457 = fadd fast float %7454, -5.000000e-01
  %7458 = fadd fast float %7455, -5.000000e-01
  %7459 = fadd fast float %7456, -5.000000e-01
  %7460 = fmul fast float %5128, 4.000000e+00
  %7461 = fmul fast float %7460, %7443
  %7462 = fmul fast float %7461, %7457
  %7463 = fmul fast float %5129, 4.000000e+00
  %7464 = fmul fast float %7463, %7444
  %7465 = fmul fast float %7464, %7458
  %7466 = fmul fast float %5137, 4.000000e+00
  %7467 = fmul fast float %7466, %7445
  %7468 = fmul fast float %7467, %7459
  %7469 = fadd fast float %7462, %7449
  %7470 = fadd fast float %7465, %7450
  %7471 = fadd fast float %7468, %7451
  %7472 = call float @dx.op.unary.f32(i32 7, float %7469)  ; Saturate(value)
  %7473 = call float @dx.op.unary.f32(i32 7, float %7470)  ; Saturate(value)
  %7474 = call float @dx.op.unary.f32(i32 7, float %7471)  ; Saturate(value)
  br label %7475

; <label>:7475                                    ; preds = %7452, %7373
  %7476 = phi float [ %7472, %7452 ], [ %7449, %7373 ]
  %7477 = phi float [ %7473, %7452 ], [ %7450, %7373 ]
  %7478 = phi float [ %7474, %7452 ], [ %7451, %7373 ]
  %7479 = fmul fast float %7400, 9.843750e-01
  %7480 = fadd fast float %7479, 7.812500e-03
  %7481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %7480, float %5266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7482 = extractvalue %dx.types.ResRet.f32 %7481, 2
  %7483 = extractvalue %dx.types.ResRet.f32 %7481, 3
  %7484 = fmul fast float %7482, %5128
  %7485 = fmul fast float %7482, %5129
  %7486 = fmul fast float %7482, %5137
  %7487 = fadd fast float %7484, %7483
  %7488 = fadd fast float %7485, %7483
  %7489 = fadd fast float %7486, %7483
  br i1 %5276, label %7490, label %7513

; <label>:7490                                    ; preds = %7475
  %7491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3927, float %7400, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7492 = extractvalue %dx.types.ResRet.f32 %7491, 0
  %7493 = extractvalue %dx.types.ResRet.f32 %7491, 1
  %7494 = extractvalue %dx.types.ResRet.f32 %7491, 2
  %7495 = fadd fast float %7492, -5.000000e-01
  %7496 = fadd fast float %7493, -5.000000e-01
  %7497 = fadd fast float %7494, -5.000000e-01
  %7498 = fmul fast float %5128, 4.000000e+00
  %7499 = fmul fast float %7498, %7443
  %7500 = fmul fast float %7499, %7495
  %7501 = fmul fast float %5129, 4.000000e+00
  %7502 = fmul fast float %7501, %7444
  %7503 = fmul fast float %7502, %7496
  %7504 = fmul fast float %5137, 4.000000e+00
  %7505 = fmul fast float %7504, %7445
  %7506 = fmul fast float %7505, %7497
  %7507 = fadd fast float %7500, %7487
  %7508 = fadd fast float %7503, %7488
  %7509 = fadd fast float %7506, %7489
  %7510 = call float @dx.op.unary.f32(i32 7, float %7507)  ; Saturate(value)
  %7511 = call float @dx.op.unary.f32(i32 7, float %7508)  ; Saturate(value)
  %7512 = call float @dx.op.unary.f32(i32 7, float %7509)  ; Saturate(value)
  br label %7513

; <label>:7513                                    ; preds = %7490, %7475
  %7514 = phi float [ %7510, %7490 ], [ %7487, %7475 ]
  %7515 = phi float [ %7511, %7490 ], [ %7488, %7475 ]
  %7516 = phi float [ %7512, %7490 ], [ %7489, %7475 ]
  %7517 = call float @dx.op.binary.f32(i32 35, float %7515, float %7516)  ; FMax(a,b)
  %7518 = call float @dx.op.binary.f32(i32 35, float %7514, float %7517)  ; FMax(a,b)
  %7519 = fsub fast float 1.000000e+00, %7518
  %7520 = fmul fast float %7476, %7434
  %7521 = fmul fast float %7477, %7434
  %7522 = fmul fast float %7478, %7434
  %7523 = fsub fast float 1.000000e+00, %7401
  %7524 = bitcast float %7523 to i32
  %7525 = sitofp i32 %7524 to float
  %7526 = fmul fast float %7525, 5.000000e+00
  %7527 = fadd fast float %7526, 0xC1EFBF8940000000
  %7528 = fptosi float %7527 to i32
  %7529 = bitcast i32 %7528 to float
  %7530 = fmul fast float %7529, %3928
  %7531 = fmul fast float %7519, %7530
  %7532 = fmul fast float %7531, %5818
  %7533 = fmul fast float %7531, %5819
  %7534 = fmul fast float %7531, %5820
  %7535 = fadd fast float %7532, %7520
  %7536 = fadd fast float %7533, %7521
  %7537 = fadd fast float %7534, %7522
  %7538 = fmul fast float %7406, %7389
  %7539 = fmul fast float %7538, %7519
  %7540 = fmul fast float %7406, %7390
  %7541 = fmul fast float %7540, %7519
  %7542 = fmul fast float %7406, %7391
  %7543 = fmul fast float %7542, %7519
  %7544 = fmul fast float %7538, %7535
  %7545 = fmul fast float %7540, %7536
  %7546 = fmul fast float %7542, %7537
  %7547 = fadd fast float %7539, %5802
  %7548 = fmul fast float %7547, %3953
  %7549 = fadd fast float %7541, %5803
  %7550 = fmul fast float %7549, %3953
  %7551 = fadd fast float %7543, %5804
  %7552 = fmul fast float %7551, %3953
  %7553 = fadd fast float %7544, %5845
  %7554 = fmul fast float %7553, %3953
  %7555 = fadd fast float %7545, %5848
  %7556 = fmul fast float %7555, %3953
  %7557 = fadd fast float %7546, %5851
  %7558 = fmul fast float %7557, %3953
  br label %7559

; <label>:7559                                    ; preds = %7513, %7307, %5798
  %7560 = phi float [ %5846, %5798 ], [ %5846, %7307 ], [ %7554, %7513 ]
  %7561 = phi float [ %5849, %5798 ], [ %5849, %7307 ], [ %7556, %7513 ]
  %7562 = phi float [ %5852, %5798 ], [ %5852, %7307 ], [ %7558, %7513 ]
  %7563 = phi float [ %5841, %5798 ], [ %5841, %7307 ], [ %7548, %7513 ]
  %7564 = phi float [ %5842, %5798 ], [ %5842, %7307 ], [ %7550, %7513 ]
  %7565 = phi float [ %5843, %5798 ], [ %5843, %7307 ], [ %7552, %7513 ]
  %7566 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7567 = extractvalue %dx.types.CBufRet.i32 %7566, 0
  %7568 = icmp eq i32 %7567, 0
  br i1 %7568, label %8231, label %7569

; <label>:7569                                    ; preds = %7559
  %7570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7571 = extractvalue %dx.types.CBufRet.f32 %7570, 2
  %7572 = extractvalue %dx.types.CBufRet.f32 %7570, 3
  %7573 = fmul fast float %7571, %116
  %7574 = fmul fast float %7572, %117
  %7575 = fptoui float %7573 to i32
  %7576 = fptoui float %7574 to i32
  %7577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7578 = extractvalue %dx.types.CBufRet.f32 %7577, 0
  %7579 = extractvalue %dx.types.CBufRet.f32 %7577, 2
  %7580 = extractvalue %dx.types.CBufRet.f32 %7577, 3
  %7581 = fadd fast float %103, -4.000000e+00
  %7582 = call float @dx.op.binary.f32(i32 35, float %7581, float 0.000000e+00)  ; FMax(a,b)
  %7583 = fadd fast float %7582, %7578
  %7584 = fmul fast float %7583, %7579
  %7585 = call float @dx.op.unary.f32(i32 23, float %7584)  ; Log(value)
  %7586 = fmul fast float %7585, %7580
  %7587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7588 = extractvalue %dx.types.CBufRet.f32 %7587, 2
  %7589 = fmul fast float %7586, %7588
  %7590 = call float @dx.op.unary.f32(i32 7, float %7589)  ; Saturate(value)
  %7591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7592 = extractvalue %dx.types.CBufRet.i32 %7591, 1
  %7593 = add i32 %7592, -1
  %7594 = uitofp i32 %7592 to float
  %7595 = fmul fast float %7594, %7590
  %7596 = fptoui float %7595 to i32
  %7597 = call i32 @dx.op.binary.i32(i32 40, i32 %7596, i32 %7593)  ; UMin(a,b)
  %7598 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7599 = extractvalue %dx.types.CBufRet.i32 %7598, 2
  %7600 = extractvalue %dx.types.CBufRet.i32 %7598, 3
  %7601 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7576, i32 %7599, i32 %7575)  ; UMad(a,b,c)
  %7602 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7597, i32 %7600, i32 %7601)  ; UMad(a,b,c)
  %7603 = add nsw i32 %7567, -1
  %7604 = call i32 @dx.op.binary.i32(i32 37, i32 %7603, i32 0)  ; IMax(a,b)
  %7605 = call float @dx.op.binary.f32(i32 35, float %103, float 0.000000e+00)  ; FMax(a,b)
  %7606 = fptoui float %7605 to i32
  %7607 = lshr i32 %7606, 5
  %7608 = call i32 @dx.op.binary.i32(i32 40, i32 %7607, i32 8191)  ; UMin(a,b)
  %7609 = shl i32 %7608, 2
  %7610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7609, i32 undef)  ; BufferLoad(srv,index,wot)
  %7611 = extractvalue %dx.types.ResRet.i32 %7610, 0
  %7612 = lshr i32 %7611, 16
  %7613 = and i32 %7611, 65535
  %7614 = lshr i32 %7611, 21
  %7615 = lshr i32 %7613, 5
  %7616 = call i32 @dx.op.binary.i32(i32 40, i32 %7615, i32 %7604)  ; UMin(a,b)
  %7617 = icmp ugt i32 %7614, %7616
  br i1 %7617, label %8231, label %7618

; <label>:7618                                    ; preds = %7569
  br label %7619

; <label>:7619                                    ; preds = %8221, %7618
  %7620 = phi i32 [ %8228, %8221 ], [ %7614, %7618 ]
  %7621 = phi float [ %8222, %8221 ], [ %7560, %7618 ]
  %7622 = phi float [ %8223, %8221 ], [ %7561, %7618 ]
  %7623 = phi float [ %8224, %8221 ], [ %7562, %7618 ]
  %7624 = phi float [ %8225, %8221 ], [ %7563, %7618 ]
  %7625 = phi float [ %8226, %8221 ], [ %7564, %7618 ]
  %7626 = phi float [ %8227, %8221 ], [ %7565, %7618 ]
  %7627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7628 = extractvalue %dx.types.CBufRet.i32 %7627, 0
  %7629 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7602, i32 %7628, i32 %7620)  ; UMad(a,b,c)
  %7630 = shl i32 %7629, 2
  %7631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7630, i32 undef)  ; BufferLoad(srv,index,wot)
  %7632 = extractvalue %dx.types.ResRet.i32 %7631, 0
  %7633 = shl i32 %7620, 5
  %7634 = sub nsw i32 %7612, %7633
  %7635 = call i32 @dx.op.binary.i32(i32 37, i32 %7634, i32 0)  ; IMax(a,b)
  %7636 = call i32 @dx.op.binary.i32(i32 38, i32 %7635, i32 31)  ; IMin(a,b)
  %7637 = sub nsw i32 1, %7612
  %7638 = add nsw i32 %7637, %7613
  %7639 = call i32 @dx.op.binary.i32(i32 37, i32 %7638, i32 0)  ; IMax(a,b)
  %7640 = call i32 @dx.op.binary.i32(i32 38, i32 %7639, i32 32)  ; IMin(a,b)
  %7641 = and i32 %7640, 31
  %7642 = shl i32 -1, %7641
  %7643 = xor i32 %7642, -1
  %7644 = and i32 %7636, 31
  %7645 = shl i32 %7643, %7644
  %7646 = icmp eq i32 %7640, 32
  %7647 = select i1 %7646, i32 -1, i32 %7645
  %7648 = and i32 %7647, %7632
  %7649 = icmp eq i32 %7648, 0
  br i1 %7649, label %8221, label %7650

; <label>:7650                                    ; preds = %7619
  br label %7651

; <label>:7651                                    ; preds = %7785, %7650
  %7652 = phi i32 [ %7663, %7785 ], [ %7648, %7650 ]
  %7653 = phi float [ %7786, %7785 ], [ %7621, %7650 ]
  %7654 = phi float [ %7787, %7785 ], [ %7622, %7650 ]
  %7655 = phi float [ %7788, %7785 ], [ %7623, %7650 ]
  %7656 = phi float [ %7789, %7785 ], [ %7624, %7650 ]
  %7657 = phi float [ %7790, %7785 ], [ %7625, %7650 ]
  %7658 = phi float [ %7791, %7785 ], [ %7626, %7650 ]
  %7659 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7652)  ; FirstbitLo(value)
  %7660 = add i32 %7659, %7633
  %7661 = and i32 %7659, 31
  %7662 = shl i32 1, %7661
  %7663 = xor i32 %7662, %7652
  %7664 = mul i32 %7660, 112
  %7665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7664, i32 undef)  ; BufferLoad(srv,index,wot)
  %7666 = extractvalue %dx.types.ResRet.f32 %7665, 0
  %7667 = extractvalue %dx.types.ResRet.f32 %7665, 1
  %7668 = extractvalue %dx.types.ResRet.f32 %7665, 2
  %7669 = or i32 %7664, 12
  %7670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7669, i32 undef)  ; BufferLoad(srv,index,wot)
  %7671 = extractvalue %dx.types.ResRet.f32 %7670, 0
  %7672 = add i32 %7664, 16
  %7673 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7672, i32 undef)  ; BufferLoad(srv,index,wot)
  %7674 = extractvalue %dx.types.ResRet.f32 %7673, 0
  %7675 = extractvalue %dx.types.ResRet.f32 %7673, 1
  %7676 = extractvalue %dx.types.ResRet.f32 %7673, 2
  %7677 = add i32 %7664, 28
  %7678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7677, i32 undef)  ; BufferLoad(srv,index,wot)
  %7679 = extractvalue %dx.types.ResRet.i32 %7678, 0
  %7680 = add i32 %7664, 44
  %7681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7680, i32 undef)  ; BufferLoad(srv,index,wot)
  %7682 = extractvalue %dx.types.ResRet.f32 %7681, 0
  %7683 = add i32 %7664, 48
  %7684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7683, i32 undef)  ; BufferLoad(srv,index,wot)
  %7685 = extractvalue %dx.types.ResRet.f32 %7684, 0
  %7686 = extractvalue %dx.types.ResRet.f32 %7684, 1
  %7687 = extractvalue %dx.types.ResRet.f32 %7684, 2
  %7688 = extractvalue %dx.types.ResRet.f32 %7684, 3
  %7689 = add i32 %7664, 64
  %7690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7689, i32 undef)  ; BufferLoad(srv,index,wot)
  %7691 = extractvalue %dx.types.ResRet.f32 %7690, 0
  %7692 = extractvalue %dx.types.ResRet.f32 %7690, 1
  %7693 = extractvalue %dx.types.ResRet.f32 %7690, 2
  %7694 = extractvalue %dx.types.ResRet.f32 %7690, 3
  %7695 = add i32 %7664, 80
  %7696 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7695, i32 undef)  ; BufferLoad(srv,index,wot)
  %7697 = extractvalue %dx.types.ResRet.f32 %7696, 1
  %7698 = extractvalue %dx.types.ResRet.f32 %7696, 2
  %7699 = add i32 %7664, 92
  %7700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7699, i32 undef)  ; BufferLoad(srv,index,wot)
  %7701 = extractvalue %dx.types.ResRet.i32 %7700, 0
  %7702 = call float @dx.op.dot3.f32(i32 55, float %7666, float %7667, float %7668, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7703 = select i1 %307, float %7697, float %7666
  %7704 = select i1 %307, float %7702, float %7667
  %7705 = select i1 %307, float %7698, float %7668
  %7706 = and i32 %7701, 65535
  %7707 = uitofp i32 %7706 to float
  %7708 = lshr i32 %7701, 16
  %7709 = uitofp i32 %7708 to float
  %7710 = and i32 %7679, 65535
  %7711 = and i32 %7679, 50331648
  %7712 = icmp eq i32 %7711, 33554432
  %7713 = fsub fast float %7685, %203
  %7714 = fsub fast float %7686, %204
  %7715 = fsub fast float %7687, %205
  %7716 = call float @dx.op.dot3.f32(i32 55, float %7713, float %7714, float %7715, float %7713, float %7714, float %7715)  ; Dot3(ax,ay,az,bx,by,bz)
  %7717 = call float @dx.op.unary.f32(i32 24, float %7716)  ; Sqrt(value)
  %7718 = fdiv fast float 1.000000e+00, %7717
  %7719 = fmul fast float %7718, %7713
  %7720 = fmul fast float %7718, %7714
  %7721 = fmul fast float %7718, %7715
  %7722 = fadd fast float %7717, %7671
  %7723 = fdiv fast float 1.000000e+00, %7722
  %7724 = fmul float %7682, %7723
  %7725 = fmul float %7724, %7724
  %7726 = call float @dx.op.unary.f32(i32 7, float %7725)  ; Saturate(value)
  br i1 %7712, label %7727, label %7748

; <label>:7727                                    ; preds = %7651
  %7728 = fmul fast float %7693, %7674
  %7729 = fmul fast float %7693, %7675
  %7730 = fmul fast float %7693, %7676
  %7731 = fadd fast float %7713, %7728
  %7732 = fadd fast float %7714, %7729
  %7733 = fadd fast float %7715, %7730
  %7734 = call float @dx.op.dot3.f32(i32 55, float %7731, float %7732, float %7733, float %7731, float %7732, float %7733)  ; Dot3(ax,ay,az,bx,by,bz)
  %7735 = call float @dx.op.unary.f32(i32 25, float %7734)  ; Rsqrt(value)
  %7736 = fmul fast float %7735, %7731
  %7737 = fmul fast float %7735, %7732
  %7738 = fmul fast float %7735, %7733
  %7739 = fsub fast float %203, %7685
  %7740 = fsub fast float %204, %7686
  %7741 = fsub fast float %205, %7687
  %7742 = fsub fast float -0.000000e+00, %7739
  %7743 = fsub fast float -0.000000e+00, %7740
  %7744 = fsub fast float -0.000000e+00, %7741
  %7745 = call float @dx.op.dot3.f32(i32 55, float %7742, float %7743, float %7744, float %7674, float %7675, float %7676)  ; Dot3(ax,ay,az,bx,by,bz)
  %7746 = fcmp fast ogt float %7745, 0.000000e+00
  %7747 = uitofp i1 %7746 to float
  br label %7748

; <label>:7748                                    ; preds = %7727, %7651
  %7749 = phi float [ %7747, %7727 ], [ 1.000000e+00, %7651 ]
  %7750 = phi float [ %7736, %7727 ], [ %7719, %7651 ]
  %7751 = phi float [ %7737, %7727 ], [ %7720, %7651 ]
  %7752 = phi float [ %7738, %7727 ], [ %7721, %7651 ]
  %7753 = call float @dx.op.dot3.f32(i32 55, float %7674, float %7675, float %7676, float %7750, float %7751, float %7752)  ; Dot3(ax,ay,az,bx,by,bz)
  %7754 = fmul fast float %7753, %7753
  %7755 = call float @dx.op.unary.f32(i32 7, float %7754)  ; Saturate(value)
  %7756 = fsub fast float 1.000000e+00, %7755
  %7757 = fmul fast float %7756, 5.000000e-01
  %7758 = fcmp fast ogt float %7753, 0.000000e+00
  %7759 = fsub fast float 1.000000e+00, %7757
  %7760 = select i1 %7758, float %7757, float %7759
  %7761 = fmul fast float %7760, %7709
  %7762 = fadd fast float %7761, %7707
  %7763 = fmul fast float %7762, 0x3EF0001000000000
  %7764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %55, float %7763, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7765 = extractvalue %dx.types.ResRet.f32 %7764, 0
  %7766 = fmul fast float %7753, %7691
  %7767 = fadd fast float %7766, %7692
  %7768 = call float @dx.op.unary.f32(i32 7, float %7767)  ; Saturate(value)
  %7769 = select i1 %7712, float 1.000000e+00, float %7768
  %7770 = select i1 %7712, float %7768, float 1.000000e+00
  %7771 = fmul fast float %7717, %7688
  %7772 = fsub fast float 1.000000e+00, %7771
  %7773 = fmul fast float %7772, %7694
  %7774 = call float @dx.op.unary.f32(i32 7, float %7773)  ; Saturate(value)
  %7775 = fmul fast float %7774, %7770
  %7776 = fmul fast float %7775, 2.000000e+00
  %7777 = fsub fast float 3.000000e+00, %7776
  %7778 = fmul fast float %7765, %7749
  %7779 = fmul fast float %7775, %7775
  %7780 = fmul fast float %7779, %7778
  %7781 = fmul fast float %7780, %7777
  %7782 = call float @dx.op.binary.f32(i32 36, float %7781, float %7781)  ; FMin(a,b)
  %7783 = call float @dx.op.binary.f32(i32 36, float %7781, float %7782)  ; FMin(a,b)
  %7784 = fcmp fast ogt float %7783, 0.000000e+00
  br i1 %7784, label %7793, label %7785, !dx.controlflow.hints !137

; <label>:7785                                    ; preds = %8177, %7939, %7748
  %7786 = phi float [ %7653, %7939 ], [ %7653, %7748 ], [ %8217, %8177 ]
  %7787 = phi float [ %7654, %7939 ], [ %7654, %7748 ], [ %8218, %8177 ]
  %7788 = phi float [ %7655, %7939 ], [ %7655, %7748 ], [ %8219, %8177 ]
  %7789 = phi float [ %7656, %7939 ], [ %7656, %7748 ], [ %8211, %8177 ]
  %7790 = phi float [ %7657, %7939 ], [ %7657, %7748 ], [ %8212, %8177 ]
  %7791 = phi float [ %7658, %7939 ], [ %7658, %7748 ], [ %8213, %8177 ]
  %7792 = icmp eq i32 %7652, %7662
  br i1 %7792, label %8220, label %7651

; <label>:7793                                    ; preds = %7748
  %7794 = icmp eq i32 %7710, 255
  br i1 %7794, label %7939, label %7795, !dx.controlflow.hints !138

; <label>:7795                                    ; preds = %7793
  %7796 = mul nuw nsw i32 %7710, 176
  %7797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7796, i32 undef)  ; BufferLoad(srv,index,wot)
  %7798 = extractvalue %dx.types.ResRet.f32 %7797, 0
  %7799 = extractvalue %dx.types.ResRet.f32 %7797, 1
  %7800 = extractvalue %dx.types.ResRet.f32 %7797, 2
  %7801 = extractvalue %dx.types.ResRet.f32 %7797, 3
  %7802 = add nuw nsw i32 %7796, 16
  %7803 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7802, i32 undef)  ; BufferLoad(srv,index,wot)
  %7804 = extractvalue %dx.types.ResRet.f32 %7803, 0
  %7805 = extractvalue %dx.types.ResRet.f32 %7803, 1
  %7806 = add nuw nsw i32 %7796, 32
  %7807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7806, i32 undef)  ; BufferLoad(srv,index,wot)
  %7808 = extractvalue %dx.types.ResRet.f32 %7807, 0
  %7809 = extractvalue %dx.types.ResRet.f32 %7807, 1
  %7810 = extractvalue %dx.types.ResRet.f32 %7807, 2
  %7811 = add nuw nsw i32 %7796, 48
  %7812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7811, i32 undef)  ; BufferLoad(srv,index,wot)
  %7813 = extractvalue %dx.types.ResRet.f32 %7812, 0
  %7814 = extractvalue %dx.types.ResRet.f32 %7812, 1
  %7815 = extractvalue %dx.types.ResRet.f32 %7812, 2
  %7816 = extractvalue %dx.types.ResRet.f32 %7812, 3
  %7817 = add nuw nsw i32 %7796, 64
  %7818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7817, i32 undef)  ; BufferLoad(srv,index,wot)
  %7819 = extractvalue %dx.types.ResRet.f32 %7818, 0
  %7820 = extractvalue %dx.types.ResRet.f32 %7818, 1
  %7821 = extractvalue %dx.types.ResRet.f32 %7818, 2
  %7822 = extractvalue %dx.types.ResRet.f32 %7818, 3
  %7823 = add nuw nsw i32 %7796, 80
  %7824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7823, i32 undef)  ; BufferLoad(srv,index,wot)
  %7825 = extractvalue %dx.types.ResRet.f32 %7824, 0
  %7826 = extractvalue %dx.types.ResRet.f32 %7824, 1
  %7827 = extractvalue %dx.types.ResRet.f32 %7824, 2
  %7828 = extractvalue %dx.types.ResRet.f32 %7824, 3
  %7829 = add nuw nsw i32 %7796, 96
  %7830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7829, i32 undef)  ; BufferLoad(srv,index,wot)
  %7831 = extractvalue %dx.types.ResRet.f32 %7830, 0
  %7832 = extractvalue %dx.types.ResRet.f32 %7830, 1
  %7833 = extractvalue %dx.types.ResRet.f32 %7830, 2
  %7834 = extractvalue %dx.types.ResRet.f32 %7830, 3
  %7835 = bitcast float %7805 to i32
  %7836 = fmul fast float %7810, %123
  %7837 = fmul fast float %7810, %124
  %7838 = fmul fast float %7810, %125
  %7839 = fadd fast float %7836, %203
  %7840 = fadd fast float %7837, %204
  %7841 = fadd fast float %7838, %205
  %7842 = fmul fast float %7839, %7813
  %7843 = call float @dx.op.tertiary.f32(i32 46, float %7840, float %7819, float %7842)  ; FMad(a,b,c)
  %7844 = call float @dx.op.tertiary.f32(i32 46, float %7841, float %7825, float %7843)  ; FMad(a,b,c)
  %7845 = fadd fast float %7844, %7831
  %7846 = fmul fast float %7839, %7814
  %7847 = call float @dx.op.tertiary.f32(i32 46, float %7840, float %7820, float %7846)  ; FMad(a,b,c)
  %7848 = call float @dx.op.tertiary.f32(i32 46, float %7841, float %7826, float %7847)  ; FMad(a,b,c)
  %7849 = fadd fast float %7848, %7832
  %7850 = fmul fast float %7839, %7815
  %7851 = call float @dx.op.tertiary.f32(i32 46, float %7840, float %7821, float %7850)  ; FMad(a,b,c)
  %7852 = call float @dx.op.tertiary.f32(i32 46, float %7841, float %7827, float %7851)  ; FMad(a,b,c)
  %7853 = fadd fast float %7852, %7833
  %7854 = fmul fast float %7839, %7816
  %7855 = call float @dx.op.tertiary.f32(i32 46, float %7840, float %7822, float %7854)  ; FMad(a,b,c)
  %7856 = call float @dx.op.tertiary.f32(i32 46, float %7841, float %7828, float %7855)  ; FMad(a,b,c)
  %7857 = fadd fast float %7856, %7834
  %7858 = fdiv fast float %7845, %7857
  %7859 = fdiv fast float %7849, %7857
  %7860 = fdiv fast float %7853, %7857
  %7861 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7860)  ; FMax(a,b)
  %7862 = fmul fast float %318, 0x401921FB60000000
  %7863 = call float @dx.op.unary.f32(i32 13, float %7862)  ; Sin(value)
  %7864 = call float @dx.op.unary.f32(i32 12, float %7862)  ; Cos(value)
  %7865 = fmul fast float %7864, %7809
  %7866 = call float @dx.op.tertiary.f32(i32 46, float %7863, float %7809, float 0.000000e+00)  ; FMad(a,b,c)
  %7867 = fmul fast float %7809, %7863
  %7868 = fsub fast float -0.000000e+00, %7867
  %7869 = call float @dx.op.tertiary.f32(i32 46, float %7864, float %7809, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7870

; <label>:7870                                    ; preds = %7870, %7795
  %7871 = phi float [ 0.000000e+00, %7795 ], [ %7903, %7870 ]
  %7872 = phi float [ 0.000000e+00, %7795 ], [ %7905, %7870 ]
  %7873 = phi i32 [ 0, %7795 ], [ %7906, %7870 ]
  %7874 = mul i32 %7873, 2
  %7875 = add i32 0, %7874
  %7876 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7875
  %7877 = load float, float* %7876, align 4
  %7878 = mul i32 %7873, 2
  %7879 = add i32 1, %7878
  %7880 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7879
  %7881 = load float, float* %7880, align 4
  %7882 = fmul fast float %7865, %7877
  %7883 = call float @dx.op.tertiary.f32(i32 46, float %7881, float %7868, float %7882)  ; FMad(a,b,c)
  %7884 = fmul fast float %7877, %7866
  %7885 = call float @dx.op.tertiary.f32(i32 46, float %7881, float %7869, float %7884)  ; FMad(a,b,c)
  %7886 = fadd fast float %7883, %7858
  %7887 = fadd fast float %7885, %7859
  %7888 = fmul fast float %7886, %7804
  %7889 = fmul fast float %7887, %7804
  %7890 = call float @dx.op.binary.f32(i32 35, float %7888, float %7800)  ; FMax(a,b)
  %7891 = call float @dx.op.binary.f32(i32 35, float %7889, float %7800)  ; FMax(a,b)
  %7892 = call float @dx.op.binary.f32(i32 36, float %7890, float %7801)  ; FMin(a,b)
  %7893 = call float @dx.op.binary.f32(i32 36, float %7891, float %7801)  ; FMin(a,b)
  %7894 = fadd fast float %7892, %7798
  %7895 = fadd fast float %7893, %7799
  %7896 = uitofp i32 %7835 to float
  %7897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %7894, float %7895, float %7896, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7898 = extractvalue %dx.types.ResRet.f32 %7897, 0
  %7899 = fsub fast float %7898, %7861
  %7900 = fsub fast float %7899, %7808
  %7901 = fcmp fast ogt float %7900, 0.000000e+00
  %7902 = select i1 %7901, float 1.000000e+00, float 0.000000e+00
  %7903 = fadd fast float %7902, %7871
  %7904 = select i1 %7901, float %7900, float 0.000000e+00
  %7905 = fadd fast float %7904, %7872
  %7906 = add nuw nsw i32 %7873, 1
  %7907 = icmp eq i32 %7906, 8
  br i1 %7907, label %7908, label %7870

; <label>:7908                                    ; preds = %7870
  %7909 = fdiv fast float 1.000000e+00, %7903
  %7910 = fmul fast float %7909, %7905
  %7911 = fdiv fast float 1.000000e+00, %7861
  %7912 = fmul fast float %7910, %7911
  %7913 = call float @dx.op.unary.f32(i32 7, float %7912)  ; Saturate(value)
  %7914 = call float @dx.op.binary.f32(i32 35, float %7913, float 0.000000e+00)  ; FMax(a,b)
  %7915 = fmul fast float %7903, 1.250000e-01
  %7916 = call float @dx.op.unary.f32(i32 7, float %7915)  ; Saturate(value)
  %7917 = fmul fast float %7916, 2.000000e+00
  %7918 = fadd fast float %7917, -1.000000e+00
  %7919 = fcmp fast ogt float %7918, 0.000000e+00
  %7920 = fcmp fast olt float %7918, 0.000000e+00
  %7921 = zext i1 %7919 to i32
  %7922 = zext i1 %7920 to i32
  %7923 = sub nsw i32 %7921, %7922
  %7924 = sitofp i32 %7923 to float
  %7925 = fmul fast float %7924, %7918
  %7926 = fsub fast float 1.000000e+00, %7925
  %7927 = fmul fast float %7926, %7926
  %7928 = fmul fast float %7927, %7926
  %7929 = fsub fast float %7926, %7928
  %7930 = fmul fast float %7929, %7914
  %7931 = fsub fast float 1.000000e+00, %7928
  %7932 = fsub fast float %7931, %7930
  %7933 = fmul fast float %7924, 5.000000e-01
  %7934 = fmul fast float %7933, %7932
  %7935 = fsub fast float -5.000000e-01, %7934
  %7936 = fmul fast float %7935, %7769
  %7937 = fadd fast float %7936, 1.000000e+00
  %7938 = fmul fast float %7937, %7781
  br label %7939

; <label>:7939                                    ; preds = %7908, %7793
  %7940 = phi float [ %7938, %7908 ], [ %7781, %7793 ]
  %7941 = call float @dx.op.binary.f32(i32 36, float %7940, float %7940)  ; FMin(a,b)
  %7942 = call float @dx.op.binary.f32(i32 36, float %7940, float %7941)  ; FMin(a,b)
  %7943 = fcmp fast ogt float %7942, 0.000000e+00
  br i1 %7943, label %7944, label %7785, !dx.controlflow.hints !139

; <label>:7944                                    ; preds = %7939
  %7945 = fmul fast float %7940, %7703
  %7946 = fmul fast float %7940, %7704
  %7947 = fmul fast float %7940, %7705
  %7948 = fsub fast float %7687, %4353
  %7949 = fcmp fast ogt float %7948, 0.000000e+00
  %7950 = fsub fast float %205, %4353
  %7951 = fcmp fast ogt float %7950, 0.000000e+00
  %7952 = xor i1 %7951, %7949
  %7953 = fsub fast float %4353, %7687
  %7954 = fmul fast float %7953, 2.000000e+00
  %7955 = fadd fast float %7954, %7687
  %7956 = select i1 %7952, float %7687, float %7955
  %7957 = fsub fast float %7956, %205
  %7958 = call float @dx.op.dot3.f32(i32 55, float %7713, float %7714, float %7957, float %7713, float %7714, float %7957)  ; Dot3(ax,ay,az,bx,by,bz)
  %7959 = call float @dx.op.unary.f32(i32 25, float %7958)  ; Rsqrt(value)
  %7960 = fmul fast float %7959, %7713
  %7961 = fmul fast float %7959, %7714
  %7962 = fmul fast float %7959, %7957
  %7963 = fsub fast float %4353, %205
  %7964 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7963)  ; Dot3(ax,ay,az,bx,by,bz)
  %7965 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7960, float %7961, float %7962)  ; Dot3(ax,ay,az,bx,by,bz)
  %7966 = fdiv fast float 1.000000e+00, %7965
  %7967 = fmul fast float %7966, %7964
  %7968 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7950, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7969 = fcmp fast ogt float %7968, 0.000000e+00
  %7970 = fcmp fast olt float %7968, 0.000000e+00
  %7971 = zext i1 %7969 to i32
  %7972 = zext i1 %7970 to i32
  %7973 = sub nsw i32 %7971, %7972
  %7974 = sitofp i32 %7973 to float
  %7975 = fsub fast float %7956, %4353
  %7976 = call float @dx.op.dot3.f32(i32 55, float %7713, float %7714, float %7975, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7977 = fcmp fast ogt float %7976, 0.000000e+00
  %7978 = fcmp fast olt float %7976, 0.000000e+00
  %7979 = zext i1 %7977 to i32
  %7980 = zext i1 %7978 to i32
  %7981 = sub nsw i32 %7979, %7980
  %7982 = sitofp i32 %7981 to float
  %7983 = fcmp fast une float %7974, %7982
  br i1 %7983, label %7984, label %7994

; <label>:7984                                    ; preds = %7944
  %7985 = fmul fast float %7967, %7962
  %7986 = fmul fast float %7967, %7961
  %7987 = fmul fast float %7967, %7960
  %7988 = fmul fast float %7987, %7987
  %7989 = fmul fast float %7986, %7986
  %7990 = fadd fast float %7988, %7989
  %7991 = fmul fast float %7985, %7985
  %7992 = fadd fast float %7990, %7991
  %7993 = call float @dx.op.unary.f32(i32 24, float %7992)  ; Sqrt(value)
  br label %8006

; <label>:7994                                    ; preds = %7944
  %7995 = icmp slt i32 %7973, 0
  br i1 %7995, label %7996, label %8006

; <label>:7996                                    ; preds = %7994
  %7997 = fsub fast float %203, %7685
  %7998 = fsub fast float %204, %7686
  %7999 = fsub fast float %205, %7956
  %8000 = fmul fast float %7997, %7997
  %8001 = fmul fast float %7998, %7998
  %8002 = fadd fast float %8000, %8001
  %8003 = fmul fast float %7999, %7999
  %8004 = fadd fast float %8002, %8003
  %8005 = call float @dx.op.unary.f32(i32 24, float %8004)  ; Sqrt(value)
  br label %8006

; <label>:8006                                    ; preds = %7996, %7994, %7984
  %8007 = phi float [ %7993, %7984 ], [ %8005, %7996 ], [ 0.000000e+00, %7994 ]
  %8008 = and i1 %7951, %7949
  %8009 = fsub fast float -0.000000e+00, %8007
  %8010 = select i1 %8008, float -0.000000e+00, float %8009
  %8011 = fmul fast float %4350, 0x3FF7154760000000
  %8012 = fmul fast float %8011, %8010
  %8013 = fmul fast float %4351, 0x3FF7154760000000
  %8014 = fmul fast float %8013, %8010
  %8015 = fmul fast float %4352, 0x3FF7154760000000
  %8016 = fmul fast float %8015, %8010
  %8017 = call float @dx.op.unary.f32(i32 21, float %8012)  ; Exp(value)
  %8018 = call float @dx.op.unary.f32(i32 21, float %8014)  ; Exp(value)
  %8019 = call float @dx.op.unary.f32(i32 21, float %8016)  ; Exp(value)
  %8020 = call float @dx.op.unary.f32(i32 7, float %8017)  ; Saturate(value)
  %8021 = call float @dx.op.unary.f32(i32 7, float %8018)  ; Saturate(value)
  %8022 = call float @dx.op.unary.f32(i32 7, float %8019)  ; Saturate(value)
  %8023 = fmul fast float %7945, %8020
  %8024 = fmul fast float %7946, %8021
  %8025 = fmul fast float %7947, %8022
  %8026 = fsub fast float %7719, %236
  %8027 = fsub fast float %7720, %237
  %8028 = fsub fast float %7721, %238
  %8029 = call float @dx.op.dot3.f32(i32 55, float %8026, float %8027, float %8028, float %8026, float %8027, float %8028)  ; Dot3(ax,ay,az,bx,by,bz)
  %8030 = call float @dx.op.unary.f32(i32 25, float %8029)  ; Rsqrt(value)
  %8031 = fmul fast float %8030, %8026
  %8032 = fmul fast float %8030, %8027
  %8033 = fmul fast float %8030, %8028
  %8034 = call float @dx.op.dot3.f32(i32 55, float %7719, float %7720, float %7721, float %5131, float %5132, float %5133)  ; Dot3(ax,ay,az,bx,by,bz)
  %8035 = call float @dx.op.dot3.f32(i32 55, float %4960, float %4961, float %4962, float %8031, float %8032, float %8033)  ; Dot3(ax,ay,az,bx,by,bz)
  %8036 = call float @dx.op.unary.f32(i32 7, float %8034)  ; Saturate(value)
  %8037 = fmul fast float %8036, %7726
  %8038 = fmul fast float %8036, %8036
  %8039 = fmul fast float %8038, %5164
  %8040 = call float @dx.op.unary.f32(i32 7, float %8039)  ; Saturate(value)
  %8041 = fmul fast float %8037, %8040
  %8042 = bitcast float %7716 to i32
  %8043 = ashr i32 %8042, 1
  %8044 = sub nsw i32 1597463007, %8043
  %8045 = bitcast i32 %8044 to float
  %8046 = fmul fast float %8045, %7713
  %8047 = fmul fast float %8045, %7714
  %8048 = fmul fast float %8045, %7715
  %8049 = fsub fast float %8046, %236
  %8050 = fsub fast float %8047, %237
  %8051 = fsub fast float %8048, %238
  %8052 = call float @dx.op.dot3.f32(i32 55, float %8049, float %8050, float %8051, float %8049, float %8050, float %8051)  ; Dot3(ax,ay,az,bx,by,bz)
  %8053 = call float @dx.op.unary.f32(i32 25, float %8052)  ; Rsqrt(value)
  %8054 = fmul fast float %8049, %8053
  %8055 = fmul fast float %8050, %8053
  %8056 = fmul fast float %8051, %8053
  %8057 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %8054, float %8055, float %8056)  ; Dot3(ax,ay,az,bx,by,bz)
  %8058 = fmul fast float %8057, %8057
  %8059 = call float @dx.op.unary.f32(i32 6, float %8034)  ; FAbs(value)
  %8060 = fsub fast float 1.000000e+00, %5157
  %8061 = fmul fast float %5139, %5139
  %8062 = fmul fast float %8061, %8060
  %8063 = fadd fast float %8062, %5157
  %8064 = bitcast float %8063 to i32
  %8065 = ashr i32 %8064, 1
  %8066 = add nsw i32 %8065, 532487669
  %8067 = bitcast i32 %8066 to float
  %8068 = fadd fast float %8067, %5139
  %8069 = fmul fast float %5157, %8058
  %8070 = fsub fast float 1.000000e+00, %8058
  %8071 = fadd fast float %8070, %8069
  %8072 = fmul fast float %8059, %8059
  %8073 = fmul fast float %8072, %8060
  %8074 = fadd fast float %8073, %5157
  %8075 = bitcast float %8074 to i32
  %8076 = ashr i32 %8075, 1
  %8077 = add nsw i32 %8076, 532487669
  %8078 = bitcast i32 %8077 to float
  %8079 = fadd fast float %8078, %8059
  %8080 = fmul fast float %8071, %8071
  %8081 = fmul fast float %8080, %8068
  %8082 = fmul fast float %8081, %8079
  %8083 = fdiv fast float 1.000000e+00, %8082
  %8084 = bitcast float %5157 to i32
  %8085 = sitofp i32 %8084 to float
  %8086 = fmul fast float %8085, 0x3FE7F73180000000
  %8087 = fadd fast float %8086, 0x41AFE27C40000000
  %8088 = fptosi float %8087 to i32
  %8089 = bitcast i32 %8088 to float
  %8090 = fmul fast float %7682, 0x3FD80E9D60000000
  %8091 = fmul fast float %8090, %8045
  %8092 = fadd fast float %8089, %8091
  %8093 = bitcast float %8092 to i32
  %8094 = sub nsw i32 2129859010, %8093
  %8095 = bitcast i32 %8094 to float
  %8096 = fmul fast float %5157, %8083
  %8097 = fmul fast float %8096, %8089
  %8098 = fmul fast float %8097, %8095
  %8099 = call float @dx.op.unary.f32(i32 6, float %8035)  ; FAbs(value)
  %8100 = fsub fast float 1.000000e+00, %8099
  %8101 = bitcast float %8100 to i32
  %8102 = sitofp i32 %8101 to float
  %8103 = fmul fast float %8102, 5.000000e+00
  %8104 = fadd fast float %8103, 0xC1EFBF8940000000
  %8105 = fptosi float %8104 to i32
  %8106 = bitcast i32 %8105 to float
  %8107 = fsub fast float 1.000000e+00, %5128
  %8108 = fsub fast float 1.000000e+00, %5129
  %8109 = fsub fast float 1.000000e+00, %5137
  %8110 = fmul fast float %8106, %8107
  %8111 = fmul fast float %8106, %8108
  %8112 = fmul fast float %8106, %8109
  %8113 = fadd fast float %8110, %5128
  %8114 = fadd fast float %8111, %5129
  %8115 = fadd fast float %8112, %5137
  br i1 %5276, label %8116, label %8139

; <label>:8116                                    ; preds = %8006
  %8117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3927, float %8099, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8118 = extractvalue %dx.types.ResRet.f32 %8117, 0
  %8119 = extractvalue %dx.types.ResRet.f32 %8117, 1
  %8120 = extractvalue %dx.types.ResRet.f32 %8117, 2
  %8121 = fadd fast float %8118, -5.000000e-01
  %8122 = fadd fast float %8119, -5.000000e-01
  %8123 = fadd fast float %8120, -5.000000e-01
  %8124 = fmul fast float %5128, 4.000000e+00
  %8125 = fmul fast float %8124, %8107
  %8126 = fmul fast float %8125, %8121
  %8127 = fmul fast float %5129, 4.000000e+00
  %8128 = fmul fast float %8127, %8108
  %8129 = fmul fast float %8128, %8122
  %8130 = fmul fast float %5137, 4.000000e+00
  %8131 = fmul fast float %8130, %8109
  %8132 = fmul fast float %8131, %8123
  %8133 = fadd fast float %8126, %8113
  %8134 = fadd fast float %8129, %8114
  %8135 = fadd fast float %8132, %8115
  %8136 = call float @dx.op.unary.f32(i32 7, float %8133)  ; Saturate(value)
  %8137 = call float @dx.op.unary.f32(i32 7, float %8134)  ; Saturate(value)
  %8138 = call float @dx.op.unary.f32(i32 7, float %8135)  ; Saturate(value)
  br label %8139

; <label>:8139                                    ; preds = %8116, %8006
  %8140 = phi float [ %8136, %8116 ], [ %8113, %8006 ]
  %8141 = phi float [ %8137, %8116 ], [ %8114, %8006 ]
  %8142 = phi float [ %8138, %8116 ], [ %8115, %8006 ]
  %8143 = fmul fast float %8034, 9.843750e-01
  %8144 = fadd fast float %8143, 7.812500e-03
  %8145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %8144, float %5266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8146 = extractvalue %dx.types.ResRet.f32 %8145, 2
  %8147 = extractvalue %dx.types.ResRet.f32 %8145, 3
  %8148 = fmul fast float %8146, %5128
  %8149 = fmul fast float %8146, %5129
  %8150 = fmul fast float %8146, %5137
  %8151 = fadd fast float %8148, %8147
  %8152 = fadd fast float %8149, %8147
  %8153 = fadd fast float %8150, %8147
  br i1 %5276, label %8154, label %8177

; <label>:8154                                    ; preds = %8139
  %8155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3927, float %8034, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8156 = extractvalue %dx.types.ResRet.f32 %8155, 0
  %8157 = extractvalue %dx.types.ResRet.f32 %8155, 1
  %8158 = extractvalue %dx.types.ResRet.f32 %8155, 2
  %8159 = fadd fast float %8156, -5.000000e-01
  %8160 = fadd fast float %8157, -5.000000e-01
  %8161 = fadd fast float %8158, -5.000000e-01
  %8162 = fmul fast float %5128, 4.000000e+00
  %8163 = fmul fast float %8162, %8107
  %8164 = fmul fast float %8163, %8159
  %8165 = fmul fast float %5129, 4.000000e+00
  %8166 = fmul fast float %8165, %8108
  %8167 = fmul fast float %8166, %8160
  %8168 = fmul fast float %5137, 4.000000e+00
  %8169 = fmul fast float %8168, %8109
  %8170 = fmul fast float %8169, %8161
  %8171 = fadd fast float %8164, %8151
  %8172 = fadd fast float %8167, %8152
  %8173 = fadd fast float %8170, %8153
  %8174 = call float @dx.op.unary.f32(i32 7, float %8171)  ; Saturate(value)
  %8175 = call float @dx.op.unary.f32(i32 7, float %8172)  ; Saturate(value)
  %8176 = call float @dx.op.unary.f32(i32 7, float %8173)  ; Saturate(value)
  br label %8177

; <label>:8177                                    ; preds = %8154, %8139
  %8178 = phi float [ %8174, %8154 ], [ %8151, %8139 ]
  %8179 = phi float [ %8175, %8154 ], [ %8152, %8139 ]
  %8180 = phi float [ %8176, %8154 ], [ %8153, %8139 ]
  %8181 = call float @dx.op.binary.f32(i32 35, float %8179, float %8180)  ; FMax(a,b)
  %8182 = call float @dx.op.binary.f32(i32 35, float %8178, float %8181)  ; FMax(a,b)
  %8183 = fsub fast float 1.000000e+00, %8182
  %8184 = fmul fast float %8140, %8098
  %8185 = fmul fast float %8141, %8098
  %8186 = fmul fast float %8142, %8098
  %8187 = fsub fast float 1.000000e+00, %8035
  %8188 = bitcast float %8187 to i32
  %8189 = sitofp i32 %8188 to float
  %8190 = fmul fast float %8189, 5.000000e+00
  %8191 = fadd fast float %8190, 0xC1EFBF8940000000
  %8192 = fptosi float %8191 to i32
  %8193 = bitcast i32 %8192 to float
  %8194 = fmul fast float %8193, %3928
  %8195 = fmul fast float %8183, %8194
  %8196 = fmul fast float %8195, %5818
  %8197 = fmul fast float %8195, %5819
  %8198 = fmul fast float %8195, %5820
  %8199 = fadd fast float %8196, %8184
  %8200 = fadd fast float %8197, %8185
  %8201 = fadd fast float %8198, %8186
  %8202 = fmul fast float %8023, %3953
  %8203 = fmul fast float %8202, %8041
  %8204 = fmul fast float %8203, %8183
  %8205 = fmul fast float %8024, %3953
  %8206 = fmul fast float %8205, %8041
  %8207 = fmul fast float %8206, %8183
  %8208 = fmul fast float %8025, %3953
  %8209 = fmul fast float %8208, %8041
  %8210 = fmul fast float %8209, %8183
  %8211 = fadd fast float %8204, %7656
  %8212 = fadd fast float %8207, %7657
  %8213 = fadd fast float %8210, %7658
  %8214 = fmul fast float %8203, %8199
  %8215 = fmul fast float %8206, %8200
  %8216 = fmul fast float %8209, %8201
  %8217 = fadd fast float %8214, %7653
  %8218 = fadd fast float %8215, %7654
  %8219 = fadd fast float %8216, %7655
  br label %7785

; <label>:8220                                    ; preds = %7785
  br label %8221

; <label>:8221                                    ; preds = %8220, %7619
  %8222 = phi float [ %7621, %7619 ], [ %7786, %8220 ]
  %8223 = phi float [ %7622, %7619 ], [ %7787, %8220 ]
  %8224 = phi float [ %7623, %7619 ], [ %7788, %8220 ]
  %8225 = phi float [ %7624, %7619 ], [ %7789, %8220 ]
  %8226 = phi float [ %7625, %7619 ], [ %7790, %8220 ]
  %8227 = phi float [ %7626, %7619 ], [ %7791, %8220 ]
  %8228 = add i32 %7620, 1
  %8229 = icmp ugt i32 %8228, %7616
  br i1 %8229, label %8230, label %7619

; <label>:8230                                    ; preds = %8221
  br label %8231

; <label>:8231                                    ; preds = %8230, %7569, %7559
  %8232 = phi float [ %7560, %7559 ], [ %7560, %7569 ], [ %8222, %8230 ]
  %8233 = phi float [ %7561, %7559 ], [ %7561, %7569 ], [ %8223, %8230 ]
  %8234 = phi float [ %7562, %7559 ], [ %7562, %7569 ], [ %8224, %8230 ]
  %8235 = phi float [ %7563, %7559 ], [ %7563, %7569 ], [ %8225, %8230 ]
  %8236 = phi float [ %7564, %7559 ], [ %7564, %7569 ], [ %8226, %8230 ]
  %8237 = phi float [ %7565, %7559 ], [ %7565, %7569 ], [ %8227, %8230 ]
  %8238 = fmul fast float %3953, %3953
  %8239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8240 = extractvalue %dx.types.CBufRet.f32 %8239, 0
  %8241 = fmul fast float %8240, %5824
  %8242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8243 = extractvalue %dx.types.CBufRet.f32 %8242, 3
  %8244 = fsub fast float 1.000000e+00, %3931
  %8245 = call float @dx.op.unary.f32(i32 7, float %8244)  ; Saturate(value)
  %8246 = fadd fast float %8237, %3930
  %8247 = fmul fast float %8246, %3931
  %8248 = fmul fast float %8245, %8243
  %8249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3932, i32 undef)  ; BufferLoad(srv,index,wot)
  %8250 = extractvalue %dx.types.ResRet.i32 %8249, 3
  %8251 = bitcast i32 %8250 to float
  %8252 = fsub fast float %8238, %8251
  %8253 = fmul fast float %8252, %250
  %8254 = fadd fast float %8253, %8251
  %8255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8256 = extractvalue %dx.types.CBufRet.f32 %8255, 3
  %8257 = fmul fast float %8235, %5125
  %8258 = fmul fast float %8236, %5126
  %8259 = fmul fast float %8237, %5127
  %8260 = fcmp fast ogt float %103, %270
  %8261 = and i1 %8260, %4356
  %8262 = or i1 %4362, %8261
  %8263 = icmp eq i32 %4355, 2
  %8264 = fcmp fast ole float %103, %270
  %8265 = and i1 %8264, %8263
  %8266 = or i1 %8265, %8262
  br i1 %8261, label %8267, label %8524

; <label>:8267                                    ; preds = %8231
  %8268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8269 = extractvalue %dx.types.CBufRet.f32 %8268, 2
  %8270 = extractvalue %dx.types.CBufRet.f32 %8268, 3
  %8271 = fmul fast float %8269, %116
  %8272 = fmul fast float %8270, %117
  %8273 = call float @dx.op.unary.f32(i32 7, float %8271)  ; Saturate(value)
  %8274 = call float @dx.op.unary.f32(i32 7, float %8272)  ; Saturate(value)
  %8275 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8273, float %8274, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8276 = extractvalue %dx.types.ResRet.f32 %8275, 0
  %8277 = extractvalue %dx.types.ResRet.f32 %8275, 1
  %8278 = extractvalue %dx.types.ResRet.f32 %8275, 2
  %8279 = extractvalue %dx.types.ResRet.f32 %8275, 3
  %8280 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8273, float %8274, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8281 = extractvalue %dx.types.ResRet.f32 %8280, 0
  %8282 = extractvalue %dx.types.ResRet.f32 %8280, 1
  %8283 = extractvalue %dx.types.ResRet.f32 %8280, 2
  %8284 = extractvalue %dx.types.ResRet.f32 %8280, 3
  %8285 = call float @dx.op.binary.f32(i32 35, float %8277, float %8278)  ; FMax(a,b)
  %8286 = call float @dx.op.binary.f32(i32 35, float %8276, float %8285)  ; FMax(a,b)
  %8287 = call float @dx.op.binary.f32(i32 35, float %8286, float %8279)  ; FMax(a,b)
  %8288 = call float @dx.op.binary.f32(i32 36, float %8282, float %8283)  ; FMin(a,b)
  %8289 = call float @dx.op.binary.f32(i32 36, float %8281, float %8288)  ; FMin(a,b)
  %8290 = call float @dx.op.binary.f32(i32 36, float %8289, float %8284)  ; FMin(a,b)
  %8291 = fmul fast float %8287, 2.550000e+02
  %8292 = fadd fast float %8291, 0x3F70101020000000
  %8293 = fptoui float %8292 to i32
  %8294 = fmul fast float %8290, 2.550000e+02
  %8295 = fadd fast float %8294, 0x3F70101020000000
  %8296 = fptoui float %8295 to i32
  %8297 = icmp ult i32 %8293, %8296
  br i1 %8297, label %8298, label %8466

; <label>:8298                                    ; preds = %8267
  %8299 = fcmp fast ogt float %102, 9.843750e-01
  %8300 = fadd fast float %103, -4.000000e+00
  %8301 = select i1 %8299, float -4.000000e+00, float %8300
  %8302 = call float @dx.op.binary.f32(i32 35, float %8301, float 0.000000e+00)  ; FMax(a,b)
  %8303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8304 = extractvalue %dx.types.CBufRet.f32 %8303, 0
  %8305 = fadd fast float %8304, %8302
  %8306 = extractvalue %dx.types.CBufRet.f32 %8303, 2
  %8307 = fmul fast float %8305, %8306
  %8308 = call float @dx.op.unary.f32(i32 23, float %8307)  ; Log(value)
  %8309 = extractvalue %dx.types.CBufRet.f32 %8303, 3
  %8310 = fmul fast float %8309, %8308
  %8311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8312 = extractvalue %dx.types.CBufRet.f32 %8311, 2
  %8313 = fmul fast float %8310, %8312
  %8314 = call float @dx.op.unary.f32(i32 7, float %8313)  ; Saturate(value)
  %8315 = uitofp i32 %8293 to float
  %8316 = uitofp i32 %8296 to float
  %8317 = fadd fast float %8315, 5.000000e-01
  %8318 = fadd fast float %8316, 5.000000e-01
  %8319 = fmul fast float %8312, %8317
  %8320 = fmul fast float %8312, %8318
  %8321 = fadd fast float %8319, 0x3F0FFB4800000000
  %8322 = fadd fast float %8320, 0xBF0FFB4800000000
  %8323 = call float @dx.op.binary.f32(i32 35, float %8314, float %8321)  ; FMax(a,b)
  %8324 = call float @dx.op.binary.f32(i32 36, float %8323, float %8322)  ; FMin(a,b)
  %8325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8326 = extractvalue %dx.types.CBufRet.f32 %8325, 1
  %8327 = extractvalue %dx.types.CBufRet.f32 %8325, 2
  %8328 = extractvalue %dx.types.CBufRet.f32 %8325, 0
  %8329 = fmul fast float %8326, %8324
  %8330 = fadd fast float %8328, %8329
  %8331 = fadd fast float %8328, %8327
  %8332 = fsub fast float %8326, %8327
  %8333 = fadd fast float %8332, %8328
  %8334 = call float @dx.op.binary.f32(i32 35, float %8330, float %8331)  ; FMax(a,b)
  %8335 = call float @dx.op.binary.f32(i32 36, float %8334, float %8333)  ; FMin(a,b)
  %8336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %8273, float %8274, float %8335, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8337 = extractvalue %dx.types.ResRet.f32 %8336, 0
  %8338 = extractvalue %dx.types.ResRet.f32 %8336, 1
  %8339 = extractvalue %dx.types.ResRet.f32 %8336, 2
  %8340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8341 = extractvalue %dx.types.CBufRet.i32 %8340, 0
  %8342 = extractvalue %dx.types.CBufRet.i32 %8340, 1
  %8343 = uitofp i32 %8341 to float
  %8344 = uitofp i32 %8342 to float
  %8345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8346 = extractvalue %dx.types.CBufRet.f32 %8345, 0
  %8347 = extractvalue %dx.types.CBufRet.f32 %8345, 1
  %8348 = fmul fast float %8343, %8273
  %8349 = fmul fast float %8344, %8274
  %8350 = fadd fast float %8348, -5.000000e-01
  %8351 = fadd fast float %8349, -5.000000e-01
  %8352 = call float @dx.op.unary.f32(i32 22, float %8350)  ; Frc(value)
  %8353 = call float @dx.op.unary.f32(i32 22, float %8351)  ; Frc(value)
  %8354 = fmul fast float %8352, %8352
  %8355 = fmul fast float %8354, %8352
  %8356 = fsub fast float 3.000000e+00, %8352
  %8357 = fmul fast float %8354, %8356
  %8358 = fmul fast float %8352, 3.000000e+00
  %8359 = fmul fast float %8355, 3.000000e+00
  %8360 = fmul fast float %8354, 6.000000e+00
  %8361 = fsub fast float %8359, %8360
  %8362 = fadd fast float %8361, 4.000000e+00
  %8363 = fmul fast float %8362, 0x3FC5555560000000
  %8364 = fmul fast float %8355, -3.000000e+00
  %8365 = fadd fast float %8354, %8352
  %8366 = fmul fast float %8365, 3.000000e+00
  %8367 = fadd fast float %8364, 1.000000e+00
  %8368 = fadd fast float %8367, %8366
  %8369 = fmul fast float %8355, 0x3FC5555560000000
  %8370 = fmul fast float %8353, %8353
  %8371 = fmul fast float %8370, %8353
  %8372 = fsub fast float 3.000000e+00, %8353
  %8373 = fmul fast float %8370, %8372
  %8374 = fmul fast float %8353, 3.000000e+00
  %8375 = fmul fast float %8371, 3.000000e+00
  %8376 = fmul fast float %8370, 6.000000e+00
  %8377 = fsub fast float %8375, %8376
  %8378 = fadd fast float %8377, 4.000000e+00
  %8379 = fmul fast float %8378, 0x3FC5555560000000
  %8380 = fmul fast float %8371, -3.000000e+00
  %8381 = fadd fast float %8370, %8353
  %8382 = fmul fast float %8381, 3.000000e+00
  %8383 = fadd fast float %8380, 1.000000e+00
  %8384 = fadd fast float %8383, %8382
  %8385 = fmul fast float %8371, 0x3FC5555560000000
  %8386 = fadd fast float %8352, 1.000000e+00
  %8387 = fsub fast float 1.000000e+00, %8358
  %8388 = fadd fast float %8387, %8357
  %8389 = fadd fast float %8388, %8362
  %8390 = fmul fast float %8389, 0x3FC5555560000000
  %8391 = fdiv fast float %8363, %8390
  %8392 = fsub fast float %8386, %8391
  %8393 = fsub fast float 1.000000e+00, %8352
  %8394 = fadd fast float %8368, %8355
  %8395 = fmul fast float %8394, 0x3FC5555560000000
  %8396 = fdiv fast float %8369, %8395
  %8397 = fadd fast float %8393, %8396
  %8398 = fadd fast float %8353, 1.000000e+00
  %8399 = fsub fast float 1.000000e+00, %8374
  %8400 = fadd fast float %8399, %8373
  %8401 = fadd fast float %8400, %8378
  %8402 = fmul fast float %8401, 0x3FC5555560000000
  %8403 = fdiv fast float %8379, %8402
  %8404 = fsub fast float %8398, %8403
  %8405 = fsub fast float 1.000000e+00, %8353
  %8406 = fadd fast float %8384, %8371
  %8407 = fmul fast float %8406, 0x3FC5555560000000
  %8408 = fdiv fast float %8385, %8407
  %8409 = fadd fast float %8408, %8405
  %8410 = fmul fast float %8392, %8346
  %8411 = fsub fast float %8273, %8410
  %8412 = fmul fast float %8397, %8346
  %8413 = fadd fast float %8412, %8273
  %8414 = fmul fast float %8409, %8347
  %8415 = fadd fast float %8414, %8274
  %8416 = fmul fast float %8404, %8347
  %8417 = fsub fast float %8274, %8416
  %8418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8411, float %8417, float %8335, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8419 = extractvalue %dx.types.ResRet.f32 %8418, 0
  %8420 = extractvalue %dx.types.ResRet.f32 %8418, 1
  %8421 = extractvalue %dx.types.ResRet.f32 %8418, 2
  %8422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8413, float %8417, float %8335, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8423 = extractvalue %dx.types.ResRet.f32 %8422, 0
  %8424 = extractvalue %dx.types.ResRet.f32 %8422, 1
  %8425 = extractvalue %dx.types.ResRet.f32 %8422, 2
  %8426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8411, float %8415, float %8335, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8427 = extractvalue %dx.types.ResRet.f32 %8426, 0
  %8428 = extractvalue %dx.types.ResRet.f32 %8426, 1
  %8429 = extractvalue %dx.types.ResRet.f32 %8426, 2
  %8430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8413, float %8415, float %8335, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8431 = extractvalue %dx.types.ResRet.f32 %8430, 0
  %8432 = extractvalue %dx.types.ResRet.f32 %8430, 1
  %8433 = extractvalue %dx.types.ResRet.f32 %8430, 2
  %8434 = fsub fast float %8427, %8419
  %8435 = fsub fast float %8428, %8420
  %8436 = fsub fast float %8429, %8421
  %8437 = fmul fast float %8434, %8407
  %8438 = fmul fast float %8435, %8407
  %8439 = fmul fast float %8436, %8407
  %8440 = fadd fast float %8437, %8419
  %8441 = fadd fast float %8438, %8420
  %8442 = fadd fast float %8439, %8421
  %8443 = fsub fast float %8431, %8423
  %8444 = fsub fast float %8432, %8424
  %8445 = fsub fast float %8433, %8425
  %8446 = fmul fast float %8443, %8407
  %8447 = fmul fast float %8444, %8407
  %8448 = fmul fast float %8445, %8407
  %8449 = fsub fast float %8423, %8440
  %8450 = fadd fast float %8449, %8446
  %8451 = fsub fast float %8424, %8441
  %8452 = fadd fast float %8451, %8447
  %8453 = fsub fast float %8425, %8442
  %8454 = fadd fast float %8453, %8448
  %8455 = fmul fast float %8450, %8395
  %8456 = fmul fast float %8452, %8395
  %8457 = fmul fast float %8454, %8395
  %8458 = fadd fast float %8455, %8440
  %8459 = fadd fast float %8456, %8441
  %8460 = fadd fast float %8457, %8442
  %8461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8462 = extractvalue %dx.types.CBufRet.f32 %8461, 1
  %8463 = fmul fast float %8458, %8462
  %8464 = fmul fast float %8459, %8462
  %8465 = fmul fast float %8460, %8462
  br label %8466

; <label>:8466                                    ; preds = %8298, %8267
  %8467 = phi float [ %8337, %8298 ], [ 1.000000e+00, %8267 ]
  %8468 = phi float [ %8338, %8298 ], [ 1.000000e+00, %8267 ]
  %8469 = phi float [ %8339, %8298 ], [ 1.000000e+00, %8267 ]
  %8470 = phi float [ %8463, %8298 ], [ 0.000000e+00, %8267 ]
  %8471 = phi float [ %8464, %8298 ], [ 0.000000e+00, %8267 ]
  %8472 = phi float [ %8465, %8298 ], [ 0.000000e+00, %8267 ]
  %8473 = fmul fast float %8470, %8254
  %8474 = fmul fast float %8471, %8254
  %8475 = fmul fast float %8472, %8254
  %8476 = call float @dx.op.dot3.f32(i32 55, float %8467, float %8468, float %8469, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8477 = call float @dx.op.dot3.f32(i32 55, float %8473, float %8474, float %8475, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8478 = select i1 %307, float %8476, float %8467
  %8479 = select i1 %307, float %8476, float %8468
  %8480 = select i1 %307, float 1.000000e+00, float %8469
  %8481 = select i1 %307, float %8477, float %8473
  %8482 = select i1 %307, float 0.000000e+00, float %8474
  %8483 = select i1 %307, float 0.000000e+00, float %8475
  %8484 = fmul fast float %8478, %8257
  %8485 = fmul fast float %8479, %8258
  %8486 = fmul fast float %8480, %8259
  %8487 = fadd fast float %8484, %8481
  %8488 = fadd fast float %8485, %8482
  %8489 = fadd fast float %8483, %8486
  %8490 = fmul fast float %8478, %8232
  %8491 = fmul fast float %8479, %8233
  %8492 = fmul fast float %8480, %8234
  %8493 = fmul fast float %152, %8269
  %8494 = fmul fast float %154, %8270
  %8495 = fsub fast float 1.000000e+00, %8493
  %8496 = fsub fast float 1.000000e+00, %8494
  %8497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8498 = extractvalue %dx.types.CBufRet.f32 %8497, 0
  %8499 = extractvalue %dx.types.CBufRet.f32 %8497, 1
  %8500 = extractvalue %dx.types.CBufRet.f32 %8497, 2
  %8501 = fmul fast float %8495, %8498
  %8502 = fmul fast float %8495, %8499
  %8503 = fmul fast float %8495, %8500
  %8504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8505 = extractvalue %dx.types.CBufRet.f32 %8504, 0
  %8506 = extractvalue %dx.types.CBufRet.f32 %8504, 1
  %8507 = extractvalue %dx.types.CBufRet.f32 %8504, 2
  %8508 = fmul fast float %8496, %8505
  %8509 = fmul fast float %8496, %8506
  %8510 = fmul fast float %8496, %8507
  %8511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8512 = extractvalue %dx.types.CBufRet.f32 %8511, 0
  %8513 = extractvalue %dx.types.CBufRet.f32 %8511, 1
  %8514 = extractvalue %dx.types.CBufRet.f32 %8511, 2
  %8515 = fadd fast float %8508, %8512
  %8516 = fadd fast float %8515, %8501
  %8517 = fadd fast float %8509, %8513
  %8518 = fadd fast float %8517, %8502
  %8519 = fadd fast float %8510, %8514
  %8520 = fadd fast float %8519, %8503
  %8521 = fmul fast float %8516, %270
  %8522 = fmul fast float %8518, %270
  %8523 = fmul fast float %8520, %270
  br label %8524

; <label>:8524                                    ; preds = %8466, %8231
  %8525 = phi float [ %8521, %8466 ], [ %203, %8231 ]
  %8526 = phi float [ %8522, %8466 ], [ %204, %8231 ]
  %8527 = phi float [ %8523, %8466 ], [ %205, %8231 ]
  %8528 = phi float [ %270, %8466 ], [ %103, %8231 ]
  %8529 = phi float [ %8487, %8466 ], [ %8257, %8231 ]
  %8530 = phi float [ %8488, %8466 ], [ %8258, %8231 ]
  %8531 = phi float [ %8489, %8466 ], [ %8259, %8231 ]
  %8532 = phi float [ %8490, %8466 ], [ %8232, %8231 ]
  %8533 = phi float [ %8491, %8466 ], [ %8233, %8231 ]
  %8534 = phi float [ %8492, %8466 ], [ %8234, %8231 ]
  %8535 = phi float [ %8467, %8466 ], [ 1.000000e+00, %8231 ]
  br i1 %8266, label %9690, label %8536

; <label>:8536                                    ; preds = %8524
  %8537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8538 = extractvalue %dx.types.CBufRet.f32 %8537, 0
  %8539 = extractvalue %dx.types.CBufRet.f32 %8537, 1
  %8540 = extractvalue %dx.types.CBufRet.f32 %8537, 2
  %8541 = extractvalue %dx.types.CBufRet.f32 %8537, 3
  %8542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8543 = extractvalue %dx.types.CBufRet.f32 %8542, 0
  %8544 = extractvalue %dx.types.CBufRet.f32 %8542, 1
  %8545 = extractvalue %dx.types.CBufRet.f32 %8542, 2
  %8546 = extractvalue %dx.types.CBufRet.f32 %8542, 3
  %8547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8548 = extractvalue %dx.types.CBufRet.f32 %8547, 0
  %8549 = extractvalue %dx.types.CBufRet.f32 %8547, 1
  %8550 = extractvalue %dx.types.CBufRet.f32 %8547, 2
  %8551 = extractvalue %dx.types.CBufRet.f32 %8547, 3
  %8552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8553 = extractvalue %dx.types.CBufRet.f32 %8552, 0
  %8554 = extractvalue %dx.types.CBufRet.f32 %8552, 1
  %8555 = extractvalue %dx.types.CBufRet.f32 %8552, 2
  %8556 = extractvalue %dx.types.CBufRet.f32 %8552, 3
  %8557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8558 = extractvalue %dx.types.CBufRet.f32 %8557, 3
  %8559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8560 = extractvalue %dx.types.CBufRet.f32 %8559, 3
  %8561 = extractvalue %dx.types.CBufRet.f32 %8559, 0
  %8562 = extractvalue %dx.types.CBufRet.f32 %8559, 1
  %8563 = extractvalue %dx.types.CBufRet.f32 %8559, 2
  %8564 = fcmp fast olt float %8563, -5.000000e-01
  %8565 = call float @dx.op.dot3.f32(i32 55, float %8525, float %8526, float %8527, float %8525, float %8526, float %8527)  ; Dot3(ax,ay,az,bx,by,bz)
  %8566 = call float @dx.op.unary.f32(i32 25, float %8565)  ; Rsqrt(value)
  %8567 = fmul fast float %8566, %8565
  %8568 = fmul fast float %8566, %8525
  %8569 = fmul fast float %8566, %8526
  %8570 = fmul fast float %8566, %8527
  %8571 = fadd fast float %8567, %8541
  %8572 = call float @dx.op.dot3.f32(i32 55, float %8568, float %8569, float %8570, float %8538, float %8539, float %8540)  ; Dot3(ax,ay,az,bx,by,bz)
  %8573 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8574 = extractvalue %dx.types.CBufRet.i32 %8573, 1
  %8575 = and i32 %8574, 1
  %8576 = icmp ne i32 %8575, 0
  %8577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8578 = extractvalue %dx.types.CBufRet.f32 %8577, 2
  %8579 = fcmp fast ogt float %8578, 0.000000e+00
  %8580 = and i1 %8576, %8579
  br i1 %8580, label %8581, label %8987, !dx.controlflow.hints !140

; <label>:8581                                    ; preds = %8536
  %8582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8583 = extractvalue %dx.types.CBufRet.f32 %8582, 3
  %8584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8585 = extractvalue %dx.types.CBufRet.f32 %8584, 2
  %8586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8587 = extractvalue %dx.types.CBufRet.f32 %8586, 2
  %8588 = fsub fast float %8585, %8587
  %8589 = and i32 %8574, 2
  %8590 = extractvalue %dx.types.CBufRet.i32 %8573, 0
  %8591 = call i32 @dx.op.binary.i32(i32 40, i32 %8590, i32 3)  ; UMin(a,b)
  %8592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8593 = extractvalue %dx.types.CBufRet.f32 %8592, 0
  %8594 = extractvalue %dx.types.CBufRet.f32 %8592, 1
  %8595 = extractvalue %dx.types.CBufRet.f32 %8586, 0
  %8596 = extractvalue %dx.types.CBufRet.f32 %8586, 1
  %8597 = fsub fast float %8593, %8595
  %8598 = fsub fast float %8594, %8596
  %8599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8600 = extractvalue %dx.types.CBufRet.f32 %8599, 0
  %8601 = fcmp fast ogt float %8600, 0.000000e+00
  %8602 = fsub fast float -0.000000e+00, %8597
  %8603 = fsub fast float -0.000000e+00, %8598
  %8604 = call float @dx.op.dot2.f32(i32 54, float %8568, float %8569, float %8568, float %8569)  ; Dot2(ax,ay,bx,by)
  %8605 = call float @dx.op.dot2.f32(i32 54, float %8568, float %8569, float %8602, float %8603)  ; Dot2(ax,ay,bx,by)
  %8606 = fmul fast float %8605, 2.000000e+00
  %8607 = call float @dx.op.dot2.f32(i32 54, float %8602, float %8603, float %8602, float %8603)  ; Dot2(ax,ay,bx,by)
  %8608 = fmul fast float %8600, %8600
  %8609 = fsub fast float %8607, %8608
  %8610 = fmul fast float %8606, %8606
  %8611 = fmul fast float %8604, 4.000000e+00
  %8612 = fmul fast float %8611, %8609
  %8613 = fsub fast float %8610, %8612
  %8614 = fcmp fast ogt float %8613, 0.000000e+00
  br i1 %8614, label %8615, label %8630

; <label>:8615                                    ; preds = %8581
  %8616 = fcmp fast ogt float %8606, 0.000000e+00
  %8617 = call float @dx.op.unary.f32(i32 24, float %8613)  ; Sqrt(value)
  %8618 = fsub fast float -0.000000e+00, %8617
  %8619 = select i1 %8616, float %8617, float %8618
  %8620 = fadd fast float %8619, %8606
  %8621 = fmul float %8620, -5.000000e-01
  %8622 = fdiv fast float %8621, %8604
  %8623 = call float @dx.op.binary.f32(i32 35, float %8622, float 0.000000e+00)  ; FMax(a,b)
  %8624 = call float @dx.op.binary.f32(i32 36, float %8567, float %8623)  ; FMin(a,b)
  %8625 = fdiv fast float %8609, %8621
  %8626 = call float @dx.op.binary.f32(i32 35, float %8625, float 0.000000e+00)  ; FMax(a,b)
  %8627 = call float @dx.op.binary.f32(i32 36, float %8567, float %8626)  ; FMin(a,b)
  %8628 = call float @dx.op.binary.f32(i32 36, float %8624, float %8627)  ; FMin(a,b)
  %8629 = call float @dx.op.binary.f32(i32 35, float %8624, float %8627)  ; FMax(a,b)
  br label %8630

; <label>:8630                                    ; preds = %8615, %8581
  %8631 = phi float [ %8629, %8615 ], [ -1.000000e+00, %8581 ]
  %8632 = phi float [ %8628, %8615 ], [ -1.000000e+00, %8581 ]
  %8633 = phi i1 [ true, %8615 ], [ false, %8581 ]
  %8634 = and i1 %8601, %8633
  br i1 %8634, label %8635, label %8637

; <label>:8635                                    ; preds = %8630
  %8636 = fcmp fast oeq float %8632, %8631
  br i1 %8636, label %8940, label %8638

; <label>:8637                                    ; preds = %8630
  br i1 %8601, label %8940, label %8638

; <label>:8638                                    ; preds = %8637, %8635
  %8639 = phi float [ %8567, %8637 ], [ %8631, %8635 ]
  %8640 = phi float [ 0.000000e+00, %8637 ], [ %8632, %8635 ]
  %8641 = icmp ne i32 %8589, 0
  %8642 = fmul fast float %8639, %8570
  %8643 = fadd fast float %8642, %8583
  %8644 = fmul fast float %8643, %8639
  %8645 = select i1 %8641, float 0.000000e+00, float %8644
  %8646 = fcmp fast oeq float %8570, 0.000000e+00
  %8647 = fdiv fast float %8588, %8570
  %8648 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8647)  ; FMax(a,b)
  %8649 = select i1 %8646, float %8639, float %8648
  %8650 = call float @dx.op.binary.f32(i32 36, float %8639, float %8649)  ; FMin(a,b)
  %8651 = fcmp fast ogt float %8570, 0.000000e+00
  %8652 = fcmp fast olt float %8588, 0.000000e+00
  br i1 %8651, label %8653, label %8710

; <label>:8653                                    ; preds = %8638
  %8654 = icmp eq i32 %8589, 0
  br i1 %8652, label %8655, label %8699

; <label>:8655                                    ; preds = %8653
  %8656 = select i1 %8654, float %8639, float 0.000000e+00
  %8657 = fsub fast float -0.000000e+00, %8656
  %8658 = call float @dx.op.unary.f32(i32 6, float %8657)  ; FAbs(value)
  %8659 = fmul fast float %8656, %8570
  %8660 = fadd fast float %8659, %8583
  %8661 = fmul fast float %8658, %8660
  %8662 = fsub fast float %8645, %8661
  %8663 = fsub fast float %8639, %8658
  %8664 = select i1 %8654, float %8663, float 0.000000e+00
  %8665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8666 = extractvalue %dx.types.CBufRet.f32 %8665, 0
  %8667 = extractvalue %dx.types.CBufRet.f32 %8665, 1
  %8668 = extractvalue %dx.types.CBufRet.f32 %8665, 2
  %8669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8670 = extractvalue %dx.types.CBufRet.f32 %8669, 0
  %8671 = extractvalue %dx.types.CBufRet.f32 %8669, 1
  %8672 = extractvalue %dx.types.CBufRet.f32 %8669, 2
  %8673 = extractvalue %dx.types.CBufRet.f32 %8669, 3
  %8674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8675 = extractvalue %dx.types.CBufRet.f32 %8674, 3
  %8676 = call float @dx.op.binary.f32(i32 36, float %8662, float %8675)  ; FMin(a,b)
  %8677 = fmul fast float %8673, %8664
  %8678 = call float @dx.op.unary.f32(i32 7, float %8677)  ; Saturate(value)
  %8679 = fsub fast float %8670, %8666
  %8680 = fsub fast float %8671, %8667
  %8681 = fsub fast float %8672, %8668
  %8682 = fmul fast float %8678, %8679
  %8683 = fmul fast float %8678, %8680
  %8684 = fmul fast float %8678, %8681
  %8685 = fadd fast float %8682, %8666
  %8686 = fadd fast float %8683, %8667
  %8687 = fadd fast float %8684, %8668
  %8688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8689 = extractvalue %dx.types.CBufRet.f32 %8688, 0
  %8690 = extractvalue %dx.types.CBufRet.f32 %8688, 1
  %8691 = fadd fast float %8690, %8689
  %8692 = call float @dx.op.unary.f32(i32 7, float %8691)  ; Saturate(value)
  %8693 = extractvalue %dx.types.CBufRet.f32 %8688, 2
  %8694 = extractvalue %dx.types.CBufRet.f32 %8688, 3
  %8695 = fadd fast float %8694, %8693
  %8696 = call float @dx.op.unary.f32(i32 7, float %8695)  ; Saturate(value)
  %8697 = fmul fast float %8692, %8676
  %8698 = fmul fast float %8697, %8696
  br label %8940

; <label>:8699                                    ; preds = %8653
  br i1 %8654, label %8700, label %8721

; <label>:8700                                    ; preds = %8699
  %8701 = call float @dx.op.binary.f32(i32 36, float %8650, float %8640)  ; FMin(a,b)
  %8702 = fsub fast float %8650, %8701
  %8703 = fsub fast float %8702, %8639
  %8704 = call float @dx.op.unary.f32(i32 6, float %8703)  ; FAbs(value)
  %8705 = fadd fast float %8702, %8639
  %8706 = fmul fast float %8705, %8570
  %8707 = fadd fast float %8706, %8583
  %8708 = fmul fast float %8707, %8704
  %8709 = fsub fast float %8645, %8708
  br label %8721

; <label>:8710                                    ; preds = %8638
  br i1 %8652, label %8711, label %8721

; <label>:8711                                    ; preds = %8710
  %8712 = call float @dx.op.binary.f32(i32 35, float %8640, float %8650)  ; FMax(a,b)
  %8713 = icmp eq i32 %8589, 0
  %8714 = select i1 %8713, float %8650, float 0.000000e+00
  %8715 = fsub fast float -0.000000e+00, %8714
  %8716 = call float @dx.op.unary.f32(i32 6, float %8715)  ; FAbs(value)
  %8717 = fmul fast float %8714, %8570
  %8718 = fadd fast float %8717, %8583
  %8719 = fmul fast float %8716, %8718
  %8720 = fsub fast float %8645, %8719
  br label %8721

; <label>:8721                                    ; preds = %8711, %8710, %8700, %8699
  %8722 = phi float [ %8640, %8699 ], [ %8640, %8700 ], [ %8712, %8711 ], [ %8640, %8710 ]
  %8723 = phi float [ 0.000000e+00, %8699 ], [ %8704, %8700 ], [ %8716, %8711 ], [ 0.000000e+00, %8710 ]
  %8724 = phi float [ %8645, %8699 ], [ %8709, %8700 ], [ %8720, %8711 ], [ %8645, %8710 ]
  %8725 = phi float [ %8650, %8699 ], [ %8650, %8700 ], [ %8639, %8711 ], [ %8639, %8710 ]
  %8726 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 0
  store float -1.000000e+00, float* %8726, align 4, !tbaa !126, !noalias !141
  %8727 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 1
  store float -1.000000e+00, float* %8727, align 4, !tbaa !126, !noalias !141
  %8728 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 2
  store float -1.000000e+00, float* %8728, align 4, !tbaa !126, !noalias !141
  %8729 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 0
  store float -1.000000e+00, float* %8729, align 4, !tbaa !126, !noalias !141
  %8730 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 1
  store float -1.000000e+00, float* %8730, align 4, !tbaa !126, !noalias !141
  %8731 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 2
  store float -1.000000e+00, float* %8731, align 4, !tbaa !126, !noalias !141
  %8732 = icmp sgt i32 %8591, 0
  br i1 %8732, label %8733, label %8794

; <label>:8733                                    ; preds = %8721
  br label %8734

; <label>:8734                                    ; preds = %8783, %8733
  %8735 = phi i32 [ %8784, %8783 ], [ 0, %8733 ]
  %8736 = phi i32 [ %8785, %8783 ], [ 0, %8733 ]
  %8737 = add nuw i32 %8736, 171
  %8738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %8737)  ; CBufferLoadLegacy(handle,regIndex)
  %8739 = extractvalue %dx.types.CBufRet.f32 %8738, 0
  %8740 = extractvalue %dx.types.CBufRet.f32 %8738, 1
  %8741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8742 = extractvalue %dx.types.CBufRet.f32 %8741, 0
  %8743 = extractvalue %dx.types.CBufRet.f32 %8741, 1
  %8744 = fsub fast float %8739, %8742
  %8745 = fsub fast float %8740, %8743
  %8746 = extractvalue %dx.types.CBufRet.f32 %8738, 2
  %8747 = fsub fast float -0.000000e+00, %8744
  %8748 = fsub fast float -0.000000e+00, %8745
  %8749 = call float @dx.op.dot2.f32(i32 54, float %8568, float %8569, float %8747, float %8748)  ; Dot2(ax,ay,bx,by)
  %8750 = fmul fast float %8749, 2.000000e+00
  %8751 = call float @dx.op.dot2.f32(i32 54, float %8747, float %8748, float %8747, float %8748)  ; Dot2(ax,ay,bx,by)
  %8752 = fmul fast float %8746, %8746
  %8753 = fsub fast float %8751, %8752
  %8754 = fmul fast float %8750, %8750
  %8755 = fmul fast float %8611, %8753
  %8756 = fsub fast float %8754, %8755
  %8757 = fcmp fast ogt float %8756, 0.000000e+00
  br i1 %8757, label %8758, label %8773

; <label>:8758                                    ; preds = %8734
  %8759 = fcmp fast ogt float %8750, 0.000000e+00
  %8760 = call float @dx.op.unary.f32(i32 24, float %8756)  ; Sqrt(value)
  %8761 = fsub fast float -0.000000e+00, %8760
  %8762 = select i1 %8759, float %8760, float %8761
  %8763 = fadd fast float %8762, %8750
  %8764 = fmul float %8763, -5.000000e-01
  %8765 = fdiv fast float %8764, %8604
  %8766 = call float @dx.op.binary.f32(i32 35, float %8765, float 0.000000e+00)  ; FMax(a,b)
  %8767 = call float @dx.op.binary.f32(i32 36, float %8639, float %8766)  ; FMin(a,b)
  %8768 = fdiv fast float %8753, %8764
  %8769 = call float @dx.op.binary.f32(i32 35, float %8768, float 0.000000e+00)  ; FMax(a,b)
  %8770 = call float @dx.op.binary.f32(i32 36, float %8639, float %8769)  ; FMin(a,b)
  %8771 = call float @dx.op.binary.f32(i32 36, float %8767, float %8770)  ; FMin(a,b)
  %8772 = call float @dx.op.binary.f32(i32 35, float %8767, float %8770)  ; FMax(a,b)
  br label %8773

; <label>:8773                                    ; preds = %8758, %8734
  %8774 = phi float [ %8772, %8758 ], [ -1.000000e+00, %8734 ]
  %8775 = phi float [ %8771, %8758 ], [ -1.000000e+00, %8734 ]
  %8776 = phi i1 [ true, %8758 ], [ false, %8734 ]
  br i1 %8776, label %8777, label %8783

; <label>:8777                                    ; preds = %8773
  %8778 = call float @dx.op.binary.f32(i32 35, float %8722, float %8775)  ; FMax(a,b)
  %8779 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8736
  store float %8778, float* %8779, align 4, !tbaa !126, !noalias !141
  %8780 = call float @dx.op.binary.f32(i32 35, float %8722, float %8774)  ; FMax(a,b)
  %8781 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8736
  store float %8780, float* %8781, align 4, !tbaa !126, !noalias !141
  %8782 = add nsw i32 %8735, 1
  br label %8783

; <label>:8783                                    ; preds = %8777, %8773
  %8784 = phi i32 [ %8782, %8777 ], [ %8735, %8773 ]
  %8785 = add nuw nsw i32 %8736, 1
  %8786 = icmp eq i32 %8785, %8591
  br i1 %8786, label %8787, label %8734

; <label>:8787                                    ; preds = %8783
  %8788 = load float, float* %8728, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %8789 = load float, float* %8727, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  %8790 = load float, float* %8726, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  %8791 = load float, float* %8731, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %8792 = load float, float* %8730, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  %8793 = load float, float* %8729, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  br label %8794

; <label>:8794                                    ; preds = %8787, %8721
  %8795 = phi float [ -1.000000e+00, %8721 ], [ %8793, %8787 ]
  %8796 = phi float [ -1.000000e+00, %8721 ], [ %8792, %8787 ]
  %8797 = phi float [ -1.000000e+00, %8721 ], [ %8791, %8787 ]
  %8798 = phi float [ -1.000000e+00, %8721 ], [ %8790, %8787 ]
  %8799 = phi float [ -1.000000e+00, %8721 ], [ %8789, %8787 ]
  %8800 = phi float [ -1.000000e+00, %8721 ], [ %8788, %8787 ]
  %8801 = phi i32 [ 0, %8721 ], [ %8784, %8787 ]
  %8802 = call float @dx.op.binary.f32(i32 36, float %8799, float %8800)  ; FMin(a,b)
  %8803 = call float @dx.op.binary.f32(i32 36, float %8798, float %8802)  ; FMin(a,b)
  %8804 = call float @dx.op.binary.f32(i32 35, float %8798, float %8799)  ; FMax(a,b)
  %8805 = call float @dx.op.binary.f32(i32 36, float %8804, float %8800)  ; FMin(a,b)
  %8806 = call float @dx.op.binary.f32(i32 36, float %8798, float %8799)  ; FMin(a,b)
  %8807 = call float @dx.op.binary.f32(i32 35, float %8806, float %8805)  ; FMax(a,b)
  %8808 = call float @dx.op.binary.f32(i32 35, float %8799, float %8800)  ; FMax(a,b)
  %8809 = call float @dx.op.binary.f32(i32 35, float %8798, float %8808)  ; FMax(a,b)
  store float %8803, float* %8726, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  store float %8807, float* %8727, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  store float %8809, float* %8728, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %8810 = call float @dx.op.binary.f32(i32 36, float %8796, float %8797)  ; FMin(a,b)
  %8811 = call float @dx.op.binary.f32(i32 36, float %8795, float %8810)  ; FMin(a,b)
  %8812 = call float @dx.op.binary.f32(i32 35, float %8795, float %8796)  ; FMax(a,b)
  %8813 = call float @dx.op.binary.f32(i32 36, float %8812, float %8797)  ; FMin(a,b)
  %8814 = call float @dx.op.binary.f32(i32 36, float %8795, float %8796)  ; FMin(a,b)
  %8815 = call float @dx.op.binary.f32(i32 35, float %8814, float %8813)  ; FMax(a,b)
  %8816 = call float @dx.op.binary.f32(i32 35, float %8796, float %8797)  ; FMax(a,b)
  %8817 = call float @dx.op.binary.f32(i32 35, float %8795, float %8816)  ; FMax(a,b)
  store float %8811, float* %8729, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  store float %8815, float* %8730, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  store float %8817, float* %8731, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %8818 = sub nsw i32 3, %8801
  %8819 = icmp sgt i32 %8818, 2
  br i1 %8819, label %8820, label %8858

; <label>:8820                                    ; preds = %8794
  %8821 = icmp eq i32 %8589, 0
  %8822 = fsub fast float %8639, %8723
  %8823 = select i1 %8821, float %8822, float %8723
  %8824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8825 = extractvalue %dx.types.CBufRet.f32 %8824, 0
  %8826 = extractvalue %dx.types.CBufRet.f32 %8824, 1
  %8827 = extractvalue %dx.types.CBufRet.f32 %8824, 2
  %8828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8829 = extractvalue %dx.types.CBufRet.f32 %8828, 0
  %8830 = extractvalue %dx.types.CBufRet.f32 %8828, 1
  %8831 = extractvalue %dx.types.CBufRet.f32 %8828, 2
  %8832 = extractvalue %dx.types.CBufRet.f32 %8828, 3
  %8833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8834 = extractvalue %dx.types.CBufRet.f32 %8833, 3
  %8835 = call float @dx.op.binary.f32(i32 36, float %8724, float %8834)  ; FMin(a,b)
  %8836 = fmul fast float %8832, %8823
  %8837 = call float @dx.op.unary.f32(i32 7, float %8836)  ; Saturate(value)
  %8838 = fsub fast float %8829, %8825
  %8839 = fsub fast float %8830, %8826
  %8840 = fsub fast float %8831, %8827
  %8841 = fmul fast float %8837, %8838
  %8842 = fmul fast float %8837, %8839
  %8843 = fmul fast float %8837, %8840
  %8844 = fadd fast float %8841, %8825
  %8845 = fadd fast float %8842, %8826
  %8846 = fadd fast float %8843, %8827
  %8847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8848 = extractvalue %dx.types.CBufRet.f32 %8847, 0
  %8849 = extractvalue %dx.types.CBufRet.f32 %8847, 1
  %8850 = fadd fast float %8849, %8848
  %8851 = call float @dx.op.unary.f32(i32 7, float %8850)  ; Saturate(value)
  %8852 = extractvalue %dx.types.CBufRet.f32 %8847, 2
  %8853 = extractvalue %dx.types.CBufRet.f32 %8847, 3
  %8854 = fadd fast float %8853, %8852
  %8855 = call float @dx.op.unary.f32(i32 7, float %8854)  ; Saturate(value)
  %8856 = fmul fast float %8851, %8835
  %8857 = fmul fast float %8856, %8855
  br label %8940

; <label>:8858                                    ; preds = %8794
  %8859 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8818
  %8860 = load float, float* %8859, align 4, !tbaa !126, !noalias !141
  %8861 = fcmp fast olt float %8860, %8725
  %8862 = icmp sgt i32 %8801, 0
  %8863 = and i1 %8862, %8861
  br i1 %8863, label %8864, label %8901

; <label>:8864                                    ; preds = %8858
  br label %8865

; <label>:8865                                    ; preds = %8894, %8864
  %8866 = phi float [ %8895, %8894 ], [ %8723, %8864 ]
  %8867 = phi float [ %8896, %8894 ], [ %8724, %8864 ]
  %8868 = phi float [ %8876, %8894 ], [ %8860, %8864 ]
  %8869 = phi i32 [ %8873, %8894 ], [ %8818, %8864 ]
  %8870 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8869
  %8871 = load float, float* %8870, align 4, !tbaa !126, !noalias !141
  %8872 = icmp slt i32 %8869, 2
  %8873 = add nsw i32 %8869, 1
  %8874 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8873
  %8875 = load float, float* %8874, align 4, !tbaa !126, !noalias !141
  %8876 = select i1 %8872, float %8875, float %8639
  %8877 = call float @dx.op.binary.f32(i32 36, float %8876, float %8871)  ; FMin(a,b)
  %8878 = call float @dx.op.binary.f32(i32 36, float %8725, float %8877)  ; FMin(a,b)
  %8879 = icmp eq i32 %8589, 0
  %8880 = fadd fast float %8878, %8868
  %8881 = fmul fast float %8880, %8570
  %8882 = fadd fast float %8881, %8583
  br i1 %8879, label %8888, label %8883

; <label>:8883                                    ; preds = %8865
  %8884 = fsub fast float %8878, %8868
  %8885 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8884)  ; FMax(a,b)
  %8886 = fmul fast float %8885, %8882
  %8887 = fadd fast float %8886, %8867
  br label %8894

; <label>:8888                                    ; preds = %8865
  %8889 = fsub fast float %8868, %8878
  %8890 = call float @dx.op.unary.f32(i32 6, float %8889)  ; FAbs(value)
  %8891 = fadd fast float %8890, %8866
  %8892 = fmul fast float %8890, %8882
  %8893 = fsub fast float %8867, %8892
  br label %8894

; <label>:8894                                    ; preds = %8888, %8883
  %8895 = phi float [ %8885, %8883 ], [ %8891, %8888 ]
  %8896 = phi float [ %8887, %8883 ], [ %8893, %8888 ]
  %8897 = fcmp fast olt float %8876, %8725
  %8898 = icmp slt i32 %8873, 3
  %8899 = and i1 %8898, %8897
  br i1 %8899, label %8865, label %8900

; <label>:8900                                    ; preds = %8894
  br label %8901

; <label>:8901                                    ; preds = %8900, %8858
  %8902 = phi float [ %8723, %8858 ], [ %8895, %8900 ]
  %8903 = phi float [ %8724, %8858 ], [ %8896, %8900 ]
  %8904 = fsub fast float %8639, %8902
  %8905 = select i1 %8641, float %8902, float %8904
  %8906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8907 = extractvalue %dx.types.CBufRet.f32 %8906, 0
  %8908 = extractvalue %dx.types.CBufRet.f32 %8906, 1
  %8909 = extractvalue %dx.types.CBufRet.f32 %8906, 2
  %8910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8911 = extractvalue %dx.types.CBufRet.f32 %8910, 0
  %8912 = extractvalue %dx.types.CBufRet.f32 %8910, 1
  %8913 = extractvalue %dx.types.CBufRet.f32 %8910, 2
  %8914 = extractvalue %dx.types.CBufRet.f32 %8910, 3
  %8915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8916 = extractvalue %dx.types.CBufRet.f32 %8915, 3
  %8917 = call float @dx.op.binary.f32(i32 36, float %8903, float %8916)  ; FMin(a,b)
  %8918 = fmul fast float %8914, %8905
  %8919 = call float @dx.op.unary.f32(i32 7, float %8918)  ; Saturate(value)
  %8920 = fsub fast float %8911, %8907
  %8921 = fsub fast float %8912, %8908
  %8922 = fsub fast float %8913, %8909
  %8923 = fmul fast float %8919, %8920
  %8924 = fmul fast float %8919, %8921
  %8925 = fmul fast float %8919, %8922
  %8926 = fadd fast float %8923, %8907
  %8927 = fadd fast float %8924, %8908
  %8928 = fadd fast float %8925, %8909
  %8929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8930 = extractvalue %dx.types.CBufRet.f32 %8929, 0
  %8931 = extractvalue %dx.types.CBufRet.f32 %8929, 1
  %8932 = fadd fast float %8931, %8930
  %8933 = call float @dx.op.unary.f32(i32 7, float %8932)  ; Saturate(value)
  %8934 = extractvalue %dx.types.CBufRet.f32 %8929, 2
  %8935 = extractvalue %dx.types.CBufRet.f32 %8929, 3
  %8936 = fadd fast float %8935, %8934
  %8937 = call float @dx.op.unary.f32(i32 7, float %8936)  ; Saturate(value)
  %8938 = fmul fast float %8933, %8917
  %8939 = fmul fast float %8938, %8937
  br label %8940

; <label>:8940                                    ; preds = %8901, %8820, %8655, %8637, %8635
  %8941 = phi float [ %8664, %8655 ], [ %8823, %8820 ], [ %8905, %8901 ], [ 0.000000e+00, %8635 ], [ 0.000000e+00, %8637 ]
  %8942 = phi float [ %8698, %8655 ], [ %8857, %8820 ], [ %8939, %8901 ], [ 0.000000e+00, %8635 ], [ 0.000000e+00, %8637 ]
  %8943 = phi float [ %8685, %8655 ], [ %8844, %8820 ], [ %8926, %8901 ], [ 0.000000e+00, %8635 ], [ 0.000000e+00, %8637 ]
  %8944 = phi float [ %8686, %8655 ], [ %8845, %8820 ], [ %8927, %8901 ], [ 0.000000e+00, %8635 ], [ 0.000000e+00, %8637 ]
  %8945 = phi float [ %8687, %8655 ], [ %8846, %8820 ], [ %8928, %8901 ], [ 0.000000e+00, %8635 ], [ 0.000000e+00, %8637 ]
  %8946 = fmul fast float %8578, %8942
  %8947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8948 = extractvalue %dx.types.CBufRet.f32 %8947, 2
  %8949 = fsub fast float %8585, %8948
  %8950 = fcmp fast olt float %8946, -2.000000e+01
  %8951 = call float @dx.op.unary.f32(i32 21, float %8946)  ; Exp(value)
  %8952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8953 = extractvalue %dx.types.CBufRet.f32 %8952, 2
  %8954 = extractvalue %dx.types.CBufRet.f32 %8952, 3
  %8955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8956 = extractvalue %dx.types.CBufRet.f32 %8955, 2
  %8957 = fmul fast float %8954, %8949
  %8958 = call float @dx.op.unary.f32(i32 7, float %8957)  ; Saturate(value)
  %8959 = fsub fast float 1.000000e+00, %8958
  %8960 = fmul fast float %8570, 5.000000e-01
  %8961 = fadd fast float %8960, 5.000000e-01
  %8962 = call float @dx.op.unary.f32(i32 7, float %8961)  ; Saturate(value)
  %8963 = fsub fast float 1.000000e+00, %8962
  %8964 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8959)  ; FMax(a,b)
  %8965 = fdiv fast float %8963, %8964
  %8966 = fsub fast float %8949, %8527
  %8967 = call float @dx.op.unary.f32(i32 6, float %8966)  ; FAbs(value)
  %8968 = fmul fast float %8967, %8953
  %8969 = call float @dx.op.unary.f32(i32 7, float %8965)  ; Saturate(value)
  %8970 = fsub fast float 1.000000e+00, %8968
  %8971 = fmul fast float %8970, %8969
  %8972 = fadd fast float %8971, %8968
  %8973 = fmul fast float %8956, %8949
  %8974 = call float @dx.op.unary.f32(i32 7, float %8973)  ; Saturate(value)
  %8975 = fsub fast float 1.000000e+00, %8972
  %8976 = fmul fast float %8975, %8974
  %8977 = fadd fast float %8976, %8972
  %8978 = call float @dx.op.unary.f32(i32 7, float %8977)  ; Saturate(value)
  %8979 = fadd fast float %8951, -1.000000e+00
  %8980 = select i1 %8950, float -1.000000e+00, float %8979
  %8981 = fmul fast float %8978, %8980
  %8982 = fadd fast float %8981, 1.000000e+00
  %8983 = fsub fast float -0.000000e+00, %8981
  %8984 = fmul fast float %8943, %8983
  %8985 = fmul fast float %8944, %8983
  %8986 = fmul fast float %8945, %8983
  br label %8987

; <label>:8987                                    ; preds = %8940, %8536
  %8988 = phi float [ %8941, %8940 ], [ 0.000000e+00, %8536 ]
  %8989 = phi float [ %8982, %8940 ], [ 1.000000e+00, %8536 ]
  %8990 = phi float [ %8984, %8940 ], [ 0.000000e+00, %8536 ]
  %8991 = phi float [ %8985, %8940 ], [ 0.000000e+00, %8536 ]
  %8992 = phi float [ %8986, %8940 ], [ 0.000000e+00, %8536 ]
  %8993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8994 = extractvalue %dx.types.CBufRet.f32 %8993, 1
  %8995 = fsub fast float 1.000000e+00, %8989
  %8996 = fmul fast float %8995, %8571
  %8997 = fmul fast float %8996, %8994
  %8998 = fsub fast float %8571, %8997
  br i1 %8564, label %8999, label %9028, !dx.controlflow.hints !177

; <label>:8999                                    ; preds = %8987
  %9000 = fmul fast float %8572, %8561
  %9001 = fadd fast float %9000, %8562
  %9002 = call float @dx.op.unary.f32(i32 7, float %9001)  ; Saturate(value)
  %9003 = fmul fast float %8543, %8998
  %9004 = fsub fast float -0.000000e+00, %9003
  %9005 = fmul fast float %8544, %8998
  %9006 = fsub fast float -0.000000e+00, %9005
  %9007 = call float @dx.op.unary.f32(i32 21, float %9004)  ; Exp(value)
  %9008 = call float @dx.op.unary.f32(i32 21, float %9006)  ; Exp(value)
  %9009 = call float @dx.op.binary.f32(i32 35, float %8551, float %9007)  ; FMax(a,b)
  %9010 = call float @dx.op.binary.f32(i32 35, float %8551, float %9008)  ; FMax(a,b)
  %9011 = fsub fast float %9010, %9009
  %9012 = fmul fast float %9011, %9002
  %9013 = fadd fast float %9012, %9009
  %9014 = call float @dx.op.unary.f32(i32 7, float %9013)  ; Saturate(value)
  %9015 = fsub fast float %8548, %8553
  %9016 = fsub fast float %8549, %8554
  %9017 = fsub fast float %8550, %8555
  %9018 = fmul fast float %9002, %9015
  %9019 = fmul fast float %9002, %9016
  %9020 = fmul fast float %9002, %9017
  %9021 = fadd fast float %9018, %8553
  %9022 = fadd fast float %9019, %8554
  %9023 = fadd fast float %9020, %8555
  %9024 = fsub fast float 1.000000e+00, %9014
  %9025 = fmul fast float %9024, %9021
  %9026 = fmul fast float %9024, %9022
  %9027 = fmul fast float %9024, %9023
  br label %9087

; <label>:9028                                    ; preds = %8987
  %9029 = fmul fast float %8998, %8560
  %9030 = call float @dx.op.unary.f32(i32 7, float %9029)  ; Saturate(value)
  %9031 = fsub fast float 2.000000e+00, %9030
  %9032 = fmul fast float %9030, 9.921875e-01
  %9033 = fmul fast float %9032, %9031
  %9034 = fadd fast float %9033, 3.906250e-03
  %9035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %9034, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9036 = extractvalue %dx.types.ResRet.f32 %9035, 0
  %9037 = fsub fast float %9030, %9036
  %9038 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9037)  ; FMax(a,b)
  %9039 = fmul fast float %8546, %8527
  %9040 = call float @dx.op.unary.f32(i32 6, float %9039)  ; FAbs(value)
  %9041 = fcmp fast ogt float %9040, 0x3EB0C6F7A0000000
  br i1 %9041, label %9042, label %9048, !dx.controlflow.hints !178

; <label>:9042                                    ; preds = %9028
  %9043 = fmul fast float %9039, 0xBFF7154760000000
  %9044 = call float @dx.op.unary.f32(i32 21, float %9043)  ; Exp(value)
  %9045 = fsub fast float 1.000000e+00, %9044
  %9046 = fdiv fast float %9045, %9039
  %9047 = fmul fast float %9046, %8556
  br label %9048

; <label>:9048                                    ; preds = %9042, %9028
  %9049 = phi float [ %9047, %9042 ], [ %8556, %9028 ]
  %9050 = fadd fast float %9049, %8558
  %9051 = fmul fast float %9050, %9038
  %9052 = fmul fast float %8543, %9051
  %9053 = fsub fast float -0.000000e+00, %9052
  %9054 = fmul fast float %8544, %9051
  %9055 = fsub fast float -0.000000e+00, %9054
  %9056 = fmul fast float %8545, %9051
  %9057 = fsub fast float -0.000000e+00, %9056
  %9058 = call float @dx.op.unary.f32(i32 21, float %9053)  ; Exp(value)
  %9059 = call float @dx.op.unary.f32(i32 21, float %9055)  ; Exp(value)
  %9060 = call float @dx.op.unary.f32(i32 21, float %9057)  ; Exp(value)
  %9061 = fmul fast float %8572, %8572
  %9062 = fadd fast float %9061, 1.000000e+00
  %9063 = fmul fast float %9062, 0x3FAE8EC8A0000000
  %9064 = fmul fast float %9063, %8553
  %9065 = fmul fast float %9063, %8554
  %9066 = fmul fast float %9063, %8555
  %9067 = fmul fast float %8572, %8551
  %9068 = fsub fast float 1.000000e+00, %9067
  %9069 = fmul fast float %8551, %8551
  %9070 = fsub fast float 1.000000e+00, %9069
  %9071 = fmul fast float %9070, 0x3FB45F3060000000
  %9072 = fmul fast float %9068, %9068
  %9073 = fdiv fast float 1.000000e+00, %9072
  %9074 = fmul fast float %9071, %9073
  %9075 = fmul fast float %9074, %8548
  %9076 = fmul fast float %9074, %8549
  %9077 = fmul fast float %9074, %8550
  %9078 = fadd fast float %9075, %9064
  %9079 = fadd fast float %9076, %9065
  %9080 = fadd fast float %9077, %9066
  %9081 = fsub fast float 1.000000e+00, %9058
  %9082 = fsub fast float 1.000000e+00, %9059
  %9083 = fsub fast float 1.000000e+00, %9060
  %9084 = fmul fast float %9078, %9081
  %9085 = fmul fast float %9079, %9082
  %9086 = fmul fast float %9080, %9083
  br label %9087

; <label>:9087                                    ; preds = %9048, %8999
  %9088 = phi float [ %9025, %8999 ], [ %9084, %9048 ]
  %9089 = phi float [ %9026, %8999 ], [ %9085, %9048 ]
  %9090 = phi float [ %9027, %8999 ], [ %9086, %9048 ]
  %9091 = phi float [ %9014, %8999 ], [ %9058, %9048 ]
  %9092 = phi float [ %9014, %8999 ], [ %9059, %9048 ]
  %9093 = phi float [ %9014, %8999 ], [ %9060, %9048 ]
  br i1 %8580, label %9094, label %9292, !dx.controlflow.hints !179

; <label>:9094                                    ; preds = %9087
  %9095 = extractvalue %dx.types.CBufRet.f32 %8993, 0
  %9096 = fmul fast float %9095, %8995
  %9097 = fsub fast float %8990, %9088
  %9098 = fsub fast float %8991, %9089
  %9099 = fsub fast float %8992, %9090
  %9100 = fmul fast float %9096, %9097
  %9101 = fmul fast float %9096, %9098
  %9102 = fmul fast float %9096, %9099
  %9103 = fadd fast float %9100, %9088
  %9104 = fadd fast float %9101, %9089
  %9105 = fadd fast float %9102, %9090
  %9106 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9091)  ; FMax(a,b)
  %9107 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9092)  ; FMax(a,b)
  %9108 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9093)  ; FMax(a,b)
  %9109 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8989)  ; FMax(a,b)
  %9110 = call float @dx.op.binary.f32(i32 35, float %8988, float %8998)  ; FMax(a,b)
  %9111 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9110)  ; FMax(a,b)
  %9112 = fdiv fast float %8988, %9111
  %9113 = call float @dx.op.unary.f32(i32 7, float %9112)  ; Saturate(value)
  %9114 = fdiv fast float %8998, %9111
  %9115 = call float @dx.op.unary.f32(i32 7, float %9114)  ; Saturate(value)
  %9116 = fcmp fast une float %9109, 1.000000e+00
  br i1 %9116, label %9117, label %9130, !dx.controlflow.hints !180

; <label>:9117                                    ; preds = %9094
  %9118 = call float @dx.op.unary.f32(i32 23, float %9109)  ; Log(value)
  %9119 = fmul fast float %9118, 0x3FE62E4300000000
  %9120 = fmul fast float %8990, %9119
  %9121 = fsub fast float -0.000000e+00, %9120
  %9122 = fmul fast float %8991, %9119
  %9123 = fsub fast float -0.000000e+00, %9122
  %9124 = fmul fast float %8992, %9119
  %9125 = fsub fast float -0.000000e+00, %9124
  %9126 = fsub fast float 1.000000e+00, %9109
  %9127 = fdiv fast float %9121, %9126
  %9128 = fdiv fast float %9123, %9126
  %9129 = fdiv fast float %9125, %9126
  br label %9130

; <label>:9130                                    ; preds = %9117, %9094
  %9131 = phi float [ %9127, %9117 ], [ %8990, %9094 ]
  %9132 = phi float [ %9128, %9117 ], [ %8991, %9094 ]
  %9133 = phi float [ %9129, %9117 ], [ %8992, %9094 ]
  %9134 = phi float [ %9119, %9117 ], [ 0.000000e+00, %9094 ]
  %9135 = fcmp fast une float %9106, 1.000000e+00
  br i1 %9135, label %9136, label %9143, !dx.controlflow.hints !181

; <label>:9136                                    ; preds = %9130
  %9137 = call float @dx.op.unary.f32(i32 23, float %9106)  ; Log(value)
  %9138 = fmul fast float %9137, 0x3FE62E4300000000
  %9139 = fmul fast float %9103, %9138
  %9140 = fsub fast float -0.000000e+00, %9139
  %9141 = fsub fast float 1.000000e+00, %9106
  %9142 = fdiv fast float %9140, %9141
  br label %9143

; <label>:9143                                    ; preds = %9136, %9130
  %9144 = phi float [ %9142, %9136 ], [ %9103, %9130 ]
  %9145 = phi float [ %9138, %9136 ], [ 0.000000e+00, %9130 ]
  %9146 = fcmp fast une float %9107, 1.000000e+00
  br i1 %9146, label %9147, label %9154, !dx.controlflow.hints !181

; <label>:9147                                    ; preds = %9143
  %9148 = call float @dx.op.unary.f32(i32 23, float %9107)  ; Log(value)
  %9149 = fmul fast float %9148, 0x3FE62E4300000000
  %9150 = fmul fast float %9104, %9149
  %9151 = fsub fast float -0.000000e+00, %9150
  %9152 = fsub fast float 1.000000e+00, %9107
  %9153 = fdiv fast float %9151, %9152
  br label %9154

; <label>:9154                                    ; preds = %9147, %9143
  %9155 = phi float [ %9153, %9147 ], [ %9104, %9143 ]
  %9156 = phi float [ %9149, %9147 ], [ 0.000000e+00, %9143 ]
  %9157 = fcmp fast une float %9108, 1.000000e+00
  br i1 %9157, label %9158, label %9165, !dx.controlflow.hints !181

; <label>:9158                                    ; preds = %9154
  %9159 = call float @dx.op.unary.f32(i32 23, float %9108)  ; Log(value)
  %9160 = fmul fast float %9159, 0x3FE62E4300000000
  %9161 = fmul fast float %9105, %9160
  %9162 = fsub fast float -0.000000e+00, %9161
  %9163 = fsub fast float 1.000000e+00, %9108
  %9164 = fdiv fast float %9162, %9163
  br label %9165

; <label>:9165                                    ; preds = %9158, %9154
  %9166 = phi float [ %9164, %9158 ], [ %9105, %9154 ]
  %9167 = phi float [ %9160, %9158 ], [ 0.000000e+00, %9154 ]
  %9168 = fmul fast float %9131, %9115
  %9169 = fmul fast float %9132, %9115
  %9170 = fmul fast float %9133, %9115
  %9171 = fmul fast float %9134, %9115
  %9172 = fmul fast float %9144, %9113
  %9173 = fmul fast float %9155, %9113
  %9174 = fmul fast float %9166, %9113
  %9175 = fmul fast float %9145, %9113
  %9176 = fmul fast float %9156, %9113
  %9177 = fmul fast float %9167, %9113
  %9178 = fadd fast float %9172, %9168
  %9179 = fadd fast float %9173, %9169
  %9180 = fadd fast float %9174, %9170
  %9181 = fadd fast float %9175, %9171
  %9182 = fadd fast float %9176, %9171
  %9183 = fadd fast float %9177, %9171
  %9184 = fcmp fast une float %9181, 0.000000e+00
  br i1 %9184, label %9185, label %9192, !dx.controlflow.hints !182

; <label>:9185                                    ; preds = %9165
  %9186 = fmul fast float %9181, 0x3FF7154760000000
  %9187 = call float @dx.op.unary.f32(i32 21, float %9186)  ; Exp(value)
  %9188 = fsub fast float 1.000000e+00, %9187
  %9189 = fmul fast float %9178, %9188
  %9190 = fsub fast float -0.000000e+00, %9189
  %9191 = fdiv fast float %9190, %9181
  br label %9192

; <label>:9192                                    ; preds = %9185, %9165
  %9193 = phi float [ %9187, %9185 ], [ 1.000000e+00, %9165 ]
  %9194 = phi float [ %9191, %9185 ], [ %9178, %9165 ]
  %9195 = fcmp fast une float %9182, 0.000000e+00
  br i1 %9195, label %9196, label %9203, !dx.controlflow.hints !182

; <label>:9196                                    ; preds = %9192
  %9197 = fmul fast float %9182, 0x3FF7154760000000
  %9198 = call float @dx.op.unary.f32(i32 21, float %9197)  ; Exp(value)
  %9199 = fsub fast float 1.000000e+00, %9198
  %9200 = fmul fast float %9179, %9199
  %9201 = fsub fast float -0.000000e+00, %9200
  %9202 = fdiv fast float %9201, %9182
  br label %9203

; <label>:9203                                    ; preds = %9196, %9192
  %9204 = phi float [ %9198, %9196 ], [ 1.000000e+00, %9192 ]
  %9205 = phi float [ %9202, %9196 ], [ %9179, %9192 ]
  %9206 = fcmp fast une float %9183, 0.000000e+00
  br i1 %9206, label %9207, label %9214, !dx.controlflow.hints !182

; <label>:9207                                    ; preds = %9203
  %9208 = fmul fast float %9183, 0x3FF7154760000000
  %9209 = call float @dx.op.unary.f32(i32 21, float %9208)  ; Exp(value)
  %9210 = fsub fast float 1.000000e+00, %9209
  %9211 = fmul fast float %9180, %9210
  %9212 = fsub fast float -0.000000e+00, %9211
  %9213 = fdiv fast float %9212, %9183
  br label %9214

; <label>:9214                                    ; preds = %9207, %9203
  %9215 = phi float [ %9209, %9207 ], [ 1.000000e+00, %9203 ]
  %9216 = phi float [ %9213, %9207 ], [ %9180, %9203 ]
  %9217 = fcmp fast ogt float %9113, %9115
  br i1 %9217, label %9218, label %9238

; <label>:9218                                    ; preds = %9214
  %9219 = fsub fast float 1.000000e+00, %9115
  %9220 = fmul fast float %9131, %9219
  %9221 = fmul fast float %9132, %9219
  %9222 = fmul fast float %9133, %9219
  %9223 = fmul fast float %9134, %9219
  %9224 = fcmp fast une float %9223, 0.000000e+00
  br i1 %9224, label %9225, label %9276, !dx.controlflow.hints !183

; <label>:9225                                    ; preds = %9218
  %9226 = fmul fast float %9223, 0x3FF7154760000000
  %9227 = call float @dx.op.unary.f32(i32 21, float %9226)  ; Exp(value)
  %9228 = fsub fast float 1.000000e+00, %9227
  %9229 = fmul fast float %9220, %9228
  %9230 = fsub fast float -0.000000e+00, %9229
  %9231 = fmul fast float %9221, %9228
  %9232 = fsub fast float -0.000000e+00, %9231
  %9233 = fmul fast float %9222, %9228
  %9234 = fsub fast float -0.000000e+00, %9233
  %9235 = fdiv fast float %9230, %9223
  %9236 = fdiv fast float %9232, %9223
  %9237 = fdiv fast float %9234, %9223
  br label %9276

; <label>:9238                                    ; preds = %9214
  %9239 = fsub fast float 1.000000e+00, %9113
  %9240 = fmul fast float %9144, %9239
  %9241 = fmul fast float %9155, %9239
  %9242 = fmul fast float %9166, %9239
  %9243 = fmul fast float %9145, %9239
  %9244 = fmul fast float %9156, %9239
  %9245 = fmul fast float %9167, %9239
  %9246 = fcmp fast une float %9243, 0.000000e+00
  br i1 %9246, label %9247, label %9254, !dx.controlflow.hints !182

; <label>:9247                                    ; preds = %9238
  %9248 = fmul fast float %9243, 0x3FF7154760000000
  %9249 = call float @dx.op.unary.f32(i32 21, float %9248)  ; Exp(value)
  %9250 = fsub fast float 1.000000e+00, %9249
  %9251 = fmul fast float %9240, %9250
  %9252 = fsub fast float -0.000000e+00, %9251
  %9253 = fdiv fast float %9252, %9243
  br label %9254

; <label>:9254                                    ; preds = %9247, %9238
  %9255 = phi float [ %9253, %9247 ], [ %9240, %9238 ]
  %9256 = phi float [ %9249, %9247 ], [ 1.000000e+00, %9238 ]
  %9257 = fcmp fast une float %9244, 0.000000e+00
  br i1 %9257, label %9258, label %9265, !dx.controlflow.hints !182

; <label>:9258                                    ; preds = %9254
  %9259 = fmul fast float %9244, 0x3FF7154760000000
  %9260 = call float @dx.op.unary.f32(i32 21, float %9259)  ; Exp(value)
  %9261 = fsub fast float 1.000000e+00, %9260
  %9262 = fmul fast float %9241, %9261
  %9263 = fsub fast float -0.000000e+00, %9262
  %9264 = fdiv fast float %9263, %9244
  br label %9265

; <label>:9265                                    ; preds = %9258, %9254
  %9266 = phi float [ %9264, %9258 ], [ %9241, %9254 ]
  %9267 = phi float [ %9260, %9258 ], [ 1.000000e+00, %9254 ]
  %9268 = fcmp fast une float %9245, 0.000000e+00
  br i1 %9268, label %9269, label %9276, !dx.controlflow.hints !182

; <label>:9269                                    ; preds = %9265
  %9270 = fmul fast float %9245, 0x3FF7154760000000
  %9271 = call float @dx.op.unary.f32(i32 21, float %9270)  ; Exp(value)
  %9272 = fsub fast float 1.000000e+00, %9271
  %9273 = fmul fast float %9242, %9272
  %9274 = fsub fast float -0.000000e+00, %9273
  %9275 = fdiv fast float %9274, %9245
  br label %9276

; <label>:9276                                    ; preds = %9269, %9265, %9225, %9218
  %9277 = phi float [ %9275, %9269 ], [ %9237, %9225 ], [ %9222, %9218 ], [ %9242, %9265 ]
  %9278 = phi float [ %9266, %9269 ], [ %9236, %9225 ], [ %9221, %9218 ], [ %9266, %9265 ]
  %9279 = phi float [ %9255, %9269 ], [ %9235, %9225 ], [ %9220, %9218 ], [ %9255, %9265 ]
  %9280 = phi float [ %9271, %9269 ], [ %9227, %9225 ], [ 1.000000e+00, %9218 ], [ 1.000000e+00, %9265 ]
  %9281 = phi float [ %9267, %9269 ], [ %9227, %9225 ], [ 1.000000e+00, %9218 ], [ %9267, %9265 ]
  %9282 = phi float [ %9256, %9269 ], [ %9227, %9225 ], [ 1.000000e+00, %9218 ], [ %9256, %9265 ]
  %9283 = fmul fast float %9282, %9194
  %9284 = fmul fast float %9281, %9205
  %9285 = fmul fast float %9280, %9216
  %9286 = fadd fast float %9283, %9279
  %9287 = fadd fast float %9284, %9278
  %9288 = fadd fast float %9285, %9277
  %9289 = fmul fast float %9282, %9193
  %9290 = fmul fast float %9281, %9204
  %9291 = fmul fast float %9280, %9215
  br label %9292

; <label>:9292                                    ; preds = %9276, %9087
  %9293 = phi float [ %9291, %9276 ], [ %9093, %9087 ]
  %9294 = phi float [ %9290, %9276 ], [ %9092, %9087 ]
  %9295 = phi float [ %9289, %9276 ], [ %9091, %9087 ]
  %9296 = phi float [ %9288, %9276 ], [ %9090, %9087 ]
  %9297 = phi float [ %9287, %9276 ], [ %9089, %9087 ]
  %9298 = phi float [ %9286, %9276 ], [ %9088, %9087 ]
  %9299 = fmul fast float %9298, %8254
  %9300 = fmul fast float %9297, %8254
  %9301 = fmul fast float %9296, %8254
  %9302 = fmul fast float %9295, %8535
  %9303 = call float @dx.op.dot3.f32(i32 55, float %9295, float %9294, float %9293, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9304 = call float @dx.op.dot3.f32(i32 55, float %9299, float %9300, float %9301, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9305 = select i1 %307, float %9303, float %9295
  %9306 = select i1 %307, float %9303, float %9294
  %9307 = select i1 %307, float 1.000000e+00, float %9293
  %9308 = select i1 %307, float %9304, float %9299
  %9309 = select i1 %307, float 0.000000e+00, float %9300
  %9310 = select i1 %307, float 0.000000e+00, float %9301
  %9311 = fmul fast float %9305, %8529
  %9312 = fmul fast float %9306, %8530
  %9313 = fmul fast float %9307, %8531
  %9314 = fadd fast float %9311, %9308
  %9315 = fadd fast float %9312, %9309
  %9316 = fadd fast float %9310, %9313
  %9317 = fmul fast float %9305, %8532
  %9318 = fmul fast float %9306, %8533
  %9319 = fmul fast float %9307, %8534
  %9320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9321 = extractvalue %dx.types.CBufRet.i32 %9320, 0
  %9322 = icmp eq i32 %9321, 0
  br i1 %9322, label %9690, label %9323, !dx.controlflow.hints !184

; <label>:9323                                    ; preds = %9292
  %9324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9325 = extractvalue %dx.types.CBufRet.f32 %9324, 2
  %9326 = extractvalue %dx.types.CBufRet.f32 %9324, 3
  %9327 = fmul fast float %9325, %116
  %9328 = fmul fast float %9326, %117
  %9329 = fmul fast float %9327, 2.000000e+00
  %9330 = fmul fast float %9328, 2.000000e+00
  %9331 = fsub fast float 1.000000e+00, %9329
  %9332 = fsub fast float 1.000000e+00, %9330
  %9333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9334 = extractvalue %dx.types.CBufRet.f32 %9333, 0
  %9335 = extractvalue %dx.types.CBufRet.f32 %9333, 1
  %9336 = extractvalue %dx.types.CBufRet.f32 %9333, 2
  %9337 = fmul fast float %9331, %9334
  %9338 = fmul fast float %9331, %9335
  %9339 = fmul fast float %9331, %9336
  %9340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9341 = extractvalue %dx.types.CBufRet.f32 %9340, 0
  %9342 = extractvalue %dx.types.CBufRet.f32 %9340, 1
  %9343 = extractvalue %dx.types.CBufRet.f32 %9340, 2
  %9344 = fmul fast float %9332, %9341
  %9345 = fmul fast float %9332, %9342
  %9346 = fmul fast float %9332, %9343
  %9347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9348 = extractvalue %dx.types.CBufRet.f32 %9347, 0
  %9349 = extractvalue %dx.types.CBufRet.f32 %9347, 1
  %9350 = extractvalue %dx.types.CBufRet.f32 %9347, 2
  %9351 = fadd fast float %9344, %9348
  %9352 = fadd fast float %9351, %9337
  %9353 = fadd fast float %9345, %9349
  %9354 = fadd fast float %9353, %9338
  %9355 = fadd fast float %9346, %9350
  %9356 = fadd fast float %9355, %9339
  %9357 = fmul fast float %9352, %8528
  %9358 = fmul fast float %9354, %8528
  %9359 = fmul fast float %9356, %8528
  %9360 = fmul fast float %9357, %9357
  %9361 = fmul fast float %9358, %9358
  %9362 = fadd fast float %9360, %9361
  %9363 = fmul fast float %9359, %9359
  %9364 = fadd fast float %9362, %9363
  %9365 = call float @dx.op.unary.f32(i32 24, float %9364)  ; Sqrt(value)
  %9366 = extractvalue %dx.types.CBufRet.f32 %8255, 0
  %9367 = fsub fast float %9365, %9366
  %9368 = extractvalue %dx.types.CBufRet.f32 %8255, 2
  %9369 = fmul fast float %9367, %9368
  %9370 = call float @dx.op.unary.f32(i32 7, float %9369)  ; Saturate(value)
  %9371 = fadd fast float %9370, -5.000000e-01
  %9372 = fmul fast float %9371, 2.000000e+00
  %9373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9374 = extractvalue %dx.types.CBufRet.f32 %9373, 2
  %9375 = call float @dx.op.binary.f32(i32 36, float %9374, float %9372)  ; FMin(a,b)
  %9376 = fsub fast float -0.000000e+00, %9374
  %9377 = fcmp fast ogt float %9375, %9376
  br i1 %9377, label %9378, label %9690, !dx.controlflow.hints !185

; <label>:9378                                    ; preds = %9323
  %9379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9380 = extractvalue %dx.types.CBufRet.f32 %9379, 3
  %9381 = fcmp fast ogt float %9380, 0.000000e+00
  br i1 %9381, label %9382, label %9457, !dx.controlflow.hints !186

; <label>:9382                                    ; preds = %9378
  %9383 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9384 = extractvalue %dx.types.Dimensions %9383, 0
  %9385 = sitofp i32 %9384 to float
  %9386 = extractvalue %dx.types.Dimensions %9383, 1
  %9387 = sitofp i32 %9386 to float
  %9388 = fmul fast float %9327, %9385
  %9389 = fmul fast float %9328, %9387
  %9390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9391 = extractvalue %dx.types.CBufRet.f32 %9390, 1
  %9392 = fsub fast float -0.000000e+00, %9391
  %9393 = fptoui float %9392 to i32
  %9394 = fptoui float %9388 to i32
  %9395 = fptoui float %9389 to i32
  %9396 = and i32 %9393, 31
  %9397 = lshr i32 %9394, %9396
  %9398 = lshr i32 %9395, %9396
  %9399 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9393, i32 %9397, i32 %9398, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9400 = extractvalue %dx.types.ResRet.f32 %9399, 0
  %9401 = fcmp fast olt float %9400, -1.000000e+00
  %9402 = fcmp fast ogt float %9400, -1.000000e+00
  %9403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9404 = extractvalue %dx.types.CBufRet.f32 %9403, 1
  %9405 = select i1 %9402, float %9404, float 1.000000e+00
  %9406 = fadd fast float %9400, 1.000000e+00
  %9407 = fmul fast float %9405, %9406
  %9408 = call float @dx.op.unary.f32(i32 6, float %9407)  ; FAbs(value)
  %9409 = extractvalue %dx.types.CBufRet.f32 %9403, 3
  %9410 = fcmp fast oge float %9408, %9409
  %9411 = select i1 %9410, float 0x4197782600000000, float %9408
  %9412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9413 = extractvalue %dx.types.CBufRet.f32 %9412, 0
  %9414 = extractvalue %dx.types.CBufRet.f32 %9412, 1
  %9415 = extractvalue %dx.types.CBufRet.f32 %9412, 2
  %9416 = select i1 %9401, float %9413, float %9334
  %9417 = select i1 %9401, float %9414, float %9335
  %9418 = select i1 %9401, float %9415, float %9336
  %9419 = fmul fast float %9416, %9331
  %9420 = fmul fast float %9417, %9331
  %9421 = fmul fast float %9418, %9331
  %9422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9423 = extractvalue %dx.types.CBufRet.f32 %9422, 0
  %9424 = extractvalue %dx.types.CBufRet.f32 %9422, 1
  %9425 = extractvalue %dx.types.CBufRet.f32 %9422, 2
  %9426 = select i1 %9401, float %9423, float %9341
  %9427 = select i1 %9401, float %9424, float %9342
  %9428 = select i1 %9401, float %9425, float %9343
  %9429 = fmul fast float %9426, %9332
  %9430 = fmul fast float %9427, %9332
  %9431 = fmul fast float %9428, %9332
  %9432 = fadd fast float %9429, %9419
  %9433 = fadd fast float %9430, %9420
  %9434 = fadd fast float %9431, %9421
  %9435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9436 = extractvalue %dx.types.CBufRet.f32 %9435, 0
  %9437 = extractvalue %dx.types.CBufRet.f32 %9435, 1
  %9438 = extractvalue %dx.types.CBufRet.f32 %9435, 2
  %9439 = select i1 %9401, float %9436, float %9348
  %9440 = select i1 %9401, float %9437, float %9349
  %9441 = select i1 %9401, float %9438, float %9350
  %9442 = fadd fast float %9432, %9439
  %9443 = fadd fast float %9433, %9440
  %9444 = fadd fast float %9434, %9441
  %9445 = fmul fast float %9442, %9411
  %9446 = fmul fast float %9443, %9411
  %9447 = fmul fast float %9444, %9411
  %9448 = fmul fast float %9445, %9445
  %9449 = fmul fast float %9446, %9446
  %9450 = fadd fast float %9448, %9449
  %9451 = fmul fast float %9447, %9447
  %9452 = fadd fast float %9450, %9451
  %9453 = call float @dx.op.unary.f32(i32 24, float %9452)  ; Sqrt(value)
  %9454 = fsub fast float %9453, %9366
  %9455 = fmul fast float %9454, %9368
  %9456 = call float @dx.op.unary.f32(i32 7, float %9455)  ; Saturate(value)
  br label %9457

; <label>:9457                                    ; preds = %9382, %9378
  %9458 = phi float [ %9456, %9382 ], [ 1.000000e+00, %9378 ]
  %9459 = fmul fast float %9375, 5.000000e-01
  %9460 = fadd fast float %9459, 5.000000e-01
  %9461 = call float @dx.op.unary.f32(i32 22, float %9460)  ; Frc(value)
  %9462 = call float @dx.op.unary.f32(i32 27, float %9461)  ; Round_ni(value)
  %9463 = call float @dx.op.unary.f32(i32 22, float %9461)  ; Frc(value)
  %9464 = fmul fast float %9463, 2.000000e+00
  %9465 = fadd fast float %9464, -1.000000e+00
  %9466 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %55, float %9327, float %9328, float %9462, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9467 = extractvalue %dx.types.ResRet.f32 %9466, 0
  %9468 = extractvalue %dx.types.ResRet.f32 %9466, 1
  %9469 = extractvalue %dx.types.ResRet.f32 %9466, 2
  %9470 = extractvalue %dx.types.ResRet.f32 %9466, 3
  %9471 = fadd fast float %9467, -5.000000e-01
  %9472 = fadd fast float %9469, -5.000000e-01
  %9473 = fmul fast float %9471, 0xBFD5555560000000
  %9474 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9472, float %9473)  ; FMad(a,b,c)
  %9475 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9468, float 0.000000e+00)  ; FMad(a,b,c)
  %9476 = fadd fast float %9475, %9470
  %9477 = fmul fast float %9471, -7.500000e-01
  %9478 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9472, float %9477)  ; FMad(a,b,c)
  %9479 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9468, float 0.000000e+00)  ; FMad(a,b,c)
  %9480 = fadd fast float %9479, %9470
  %9481 = call float @dx.op.binary.f32(i32 35, float %9474, float -1.000000e+00)  ; FMax(a,b)
  %9482 = call float @dx.op.binary.f32(i32 35, float %9476, float -1.000000e+00)  ; FMax(a,b)
  %9483 = call float @dx.op.binary.f32(i32 35, float %9478, float -1.000000e+00)  ; FMax(a,b)
  %9484 = call float @dx.op.binary.f32(i32 35, float %9480, float -1.000000e+00)  ; FMax(a,b)
  %9485 = call float @dx.op.binary.f32(i32 36, float %9481, float 1.000000e+00)  ; FMin(a,b)
  %9486 = call float @dx.op.binary.f32(i32 36, float %9482, float 1.000000e+00)  ; FMin(a,b)
  %9487 = call float @dx.op.binary.f32(i32 36, float %9483, float 1.000000e+00)  ; FMin(a,b)
  %9488 = call float @dx.op.binary.f32(i32 36, float %9484, float 1.000000e+00)  ; FMin(a,b)
  %9489 = fcmp fast olt float %9485, 0x3FEFFF8020000000
  br i1 %9489, label %9490, label %9605, !dx.controlflow.hints !187

; <label>:9490                                    ; preds = %9457
  %9491 = extractvalue %dx.types.CBufRet.f32 %9373, 3
  %9492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9493 = extractvalue %dx.types.CBufRet.f32 %9492, 0
  %9494 = extractvalue %dx.types.CBufRet.f32 %9492, 1
  %9495 = extractvalue %dx.types.CBufRet.f32 %9492, 2
  %9496 = extractvalue %dx.types.CBufRet.f32 %9492, 3
  %9497 = fsub fast float %9493, %9485
  %9498 = fsub fast float %9494, %9486
  %9499 = fsub fast float %9495, %9487
  %9500 = fsub fast float %9496, %9488
  %9501 = fmul fast float %9497, %9491
  %9502 = fmul fast float %9498, %9491
  %9503 = fmul fast float %9499, %9491
  %9504 = fmul fast float %9500, %9491
  %9505 = fadd fast float %9501, %9485
  %9506 = fadd fast float %9502, %9486
  %9507 = fsub fast float -0.000000e+00, %9506
  %9508 = fadd fast float %9503, %9487
  %9509 = fadd fast float %9504, %9488
  %9510 = fmul fast float %9505, %9505
  %9511 = fsub fast float %9506, %9510
  %9512 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9511)  ; FMax(a,b)
  %9513 = fdiv fast float 1.000000e+00, %9512
  %9514 = fmul fast float %9506, %9505
  %9515 = fsub fast float %9508, %9514
  %9516 = fsub fast float %9465, %9505
  %9517 = fmul fast float %9465, %9465
  %9518 = fsub fast float %9517, %9506
  %9519 = fmul fast float %9516, %9513
  %9520 = fmul fast float %9519, %9515
  %9521 = fsub fast float %9518, %9520
  %9522 = fmul fast float %9506, %9506
  %9523 = fsub fast float %9509, %9522
  %9524 = fmul fast float %9515, %9515
  %9525 = fmul fast float %9524, %9513
  %9526 = fsub fast float %9523, %9525
  %9527 = fdiv fast float %9521, %9526
  %9528 = fmul fast float %9515, %9527
  %9529 = fsub fast float %9516, %9528
  %9530 = fmul fast float %9529, %9513
  %9531 = fmul fast float %9530, %9505
  %9532 = fsub fast float 1.000000e+00, %9531
  %9533 = fmul fast float %9506, %9527
  %9534 = fsub fast float %9532, %9533
  %9535 = fmul fast float %9530, %9530
  %9536 = fmul fast float %9527, 4.000000e+00
  %9537 = fmul fast float %9536, %9534
  %9538 = fsub fast float %9535, %9537
  %9539 = call float @dx.op.unary.f32(i32 24, float %9538)  ; Sqrt(value)
  %9540 = fcmp fast oge float %9530, 0.000000e+00
  %9541 = fsub fast float -0.000000e+00, %9539
  %9542 = select i1 %9540, float %9541, float %9539
  %9543 = fsub fast float %9542, %9530
  %9544 = fdiv fast float %9543, %9527
  %9545 = fdiv fast float %9534, %9543
  %9546 = fmul fast float %9544, 5.000000e-01
  %9547 = fmul fast float %9545, 2.000000e+00
  %9548 = select i1 %9540, float %9546, float %9547
  %9549 = select i1 %9540, float %9547, float %9546
  %9550 = call float @dx.op.binary.f32(i32 35, float %9548, float %9549)  ; FMax(a,b)
  %9551 = call float @dx.op.binary.f32(i32 36, float %9548, float %9549)  ; FMin(a,b)
  %9552 = fcmp fast ogt float %9465, %9551
  br i1 %9552, label %9553, label %9563

; <label>:9553                                    ; preds = %9490
  %9554 = fsub fast float %9465, %9551
  %9555 = fsub fast float %9550, %9551
  %9556 = fmul fast float %9554, %9555
  %9557 = fmul fast float %9550, %9465
  %9558 = fadd fast float %9550, %9465
  %9559 = fmul fast float %9558, %9505
  %9560 = fadd fast float %9557, %9506
  %9561 = fsub fast float %9560, %9559
  %9562 = fdiv fast float %9561, %9556
  br label %9563

; <label>:9563                                    ; preds = %9553, %9490
  %9564 = phi float [ %9562, %9553 ], [ 0.000000e+00, %9490 ]
  %9565 = fcmp fast ogt float %9465, %9550
  %9566 = fsub fast float %9465, %9550
  br i1 %9565, label %9567, label %9577

; <label>:9567                                    ; preds = %9563
  %9568 = fsub fast float %9550, %9551
  %9569 = fmul fast float %9568, %9566
  %9570 = fmul fast float %9551, %9465
  %9571 = fadd fast float %9551, %9465
  %9572 = fmul fast float %9571, %9505
  %9573 = fsub fast float %9507, %9570
  %9574 = fadd fast float %9573, %9572
  %9575 = fdiv fast float %9574, %9569
  %9576 = fadd fast float %9575, %9564
  br label %9577

; <label>:9577                                    ; preds = %9567, %9563
  %9578 = phi float [ %9576, %9567 ], [ %9564, %9563 ]
  %9579 = fsub fast float %9465, %9551
  %9580 = fmul fast float %9579, %9566
  %9581 = fmul fast float %9551, %9550
  %9582 = fadd fast float %9551, %9550
  %9583 = fmul fast float %9582, %9505
  %9584 = fadd fast float %9581, %9506
  %9585 = fsub fast float %9584, %9583
  %9586 = fdiv fast float %9585, %9580
  %9587 = call float @dx.op.unary.f32(i32 7, float %9578)  ; Saturate(value)
  %9588 = fcmp fast oeq float %8256, 0.000000e+00
  %9589 = extractvalue %dx.types.CBufRet.f32 %9373, 0
  %9590 = fcmp fast oeq float %9589, 0.000000e+00
  %9591 = or i1 %9588, %9590
  %9592 = fmul fast float %9589, 2.000000e+00
  %9593 = fadd fast float %9374, %9375
  %9594 = fdiv fast float %9593, %9592
  %9595 = call float @dx.op.unary.f32(i32 7, float %9594)  ; Saturate(value)
  %9596 = fmul fast float %9595, 2.000000e+00
  %9597 = fsub fast float 3.000000e+00, %9596
  %9598 = fmul fast float %9595, %9595
  %9599 = fmul fast float %9598, %9597
  %9600 = select i1 %9591, float 1.000000e+00, float %9599
  %9601 = fmul fast float %9586, %8256
  %9602 = fadd fast float %9587, %9601
  %9603 = call float @dx.op.unary.f32(i32 7, float %9602)  ; Saturate(value)
  %9604 = fmul fast float %9600, %9603
  br label %9605

; <label>:9605                                    ; preds = %9577, %9457
  %9606 = phi float [ %9604, %9577 ], [ 0.000000e+00, %9457 ]
  %9607 = fsub fast float 1.000000e+00, %9606
  %9608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %55, float %9327, float %9328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9609 = extractvalue %dx.types.ResRet.f32 %9608, 0
  %9610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9611 = extractvalue %dx.types.CBufRet.i32 %9610, 2
  %9612 = icmp eq i32 %9611, 0
  br i1 %9612, label %9618, label %9613

; <label>:9613                                    ; preds = %9605
  %9614 = call float @dx.op.unary.f32(i32 7, float %9606)  ; Saturate(value)
  %9615 = fadd fast float %9609, -1.000000e+00
  %9616 = fmul fast float %9614, %9615
  %9617 = fadd fast float %9616, 1.000000e+00
  br label %9618

; <label>:9618                                    ; preds = %9613, %9605
  %9619 = phi float [ %9617, %9613 ], [ %9607, %9605 ]
  br i1 %9381, label %9620, label %9638

; <label>:9620                                    ; preds = %9618
  %9621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9622 = extractvalue %dx.types.CBufRet.f32 %9621, 1
  %9623 = fsub fast float %9458, %9622
  %9624 = call float @dx.op.unary.f32(i32 7, float %9623)  ; Saturate(value)
  %9625 = fsub fast float %9458, %9380
  %9626 = call float @dx.op.unary.f32(i32 7, float %9625)  ; Saturate(value)
  %9627 = fsub fast float %9624, %9626
  %9628 = fsub fast float %9460, %9626
  %9629 = fdiv fast float %9628, %9627
  %9630 = call float @dx.op.unary.f32(i32 7, float %9629)  ; Saturate(value)
  %9631 = fmul fast float %9630, 2.000000e+00
  %9632 = fsub fast float 3.000000e+00, %9631
  %9633 = fsub fast float %9609, %9619
  %9634 = fmul fast float %9630, %9630
  %9635 = fmul fast float %9634, %9633
  %9636 = fmul fast float %9635, %9632
  %9637 = fadd fast float %9636, %9619
  br label %9638

; <label>:9638                                    ; preds = %9620, %9618
  %9639 = phi float [ %9637, %9620 ], [ %9619, %9618 ]
  %9640 = call float @dx.op.binary.f32(i32 35, float %9609, float %9639)  ; FMax(a,b)
  %9641 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9642 = extractvalue %dx.types.CBufRet.i32 %9641, 2
  %9643 = and i32 %9642, 1
  %9644 = icmp eq i32 %9643, 0
  %9645 = fcmp fast une float %9640, 1.000000e+00
  %9646 = and i1 %9645, %9644
  br i1 %9646, label %9647, label %9666

; <label>:9647                                    ; preds = %9638
  %9648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %55, float %9327, float %9328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9649 = extractvalue %dx.types.ResRet.f32 %9648, 0
  %9650 = extractvalue %dx.types.ResRet.f32 %9648, 1
  %9651 = extractvalue %dx.types.ResRet.f32 %9648, 2
  %9652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9653 = extractvalue %dx.types.CBufRet.f32 %9652, 1
  %9654 = fmul fast float %9653, %9649
  %9655 = fmul fast float %9653, %9650
  %9656 = fmul fast float %9653, %9651
  %9657 = fcmp fast ogt float %9609, 0x3FEFFF2E40000000
  %9658 = fsub fast float 1.000000e+00, %9640
  %9659 = fsub fast float 1.000000e+00, %9609
  %9660 = fdiv fast float %9658, %9659
  %9661 = call float @dx.op.unary.f32(i32 7, float %9660)  ; Saturate(value)
  %9662 = select i1 %9657, float 0.000000e+00, float %9661
  %9663 = fmul fast float %9654, %9662
  %9664 = fmul fast float %9655, %9662
  %9665 = fmul fast float %9656, %9662
  br label %9666

; <label>:9666                                    ; preds = %9647, %9638
  %9667 = phi float [ 0.000000e+00, %9638 ], [ %9663, %9647 ]
  %9668 = phi float [ 0.000000e+00, %9638 ], [ %9664, %9647 ]
  %9669 = phi float [ 0.000000e+00, %9638 ], [ %9665, %9647 ]
  %9670 = fmul fast float %9667, %8254
  %9671 = fmul fast float %9668, %8254
  %9672 = fmul fast float %9669, %8254
  %9673 = fmul fast float %9640, %9302
  %9674 = call float @dx.op.dot3.f32(i32 55, float %9640, float %9640, float %9640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9675 = call float @dx.op.dot3.f32(i32 55, float %9670, float %9671, float %9672, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9676 = select i1 %307, float %9674, float %9640
  %9677 = select i1 %307, float 1.000000e+00, float %9640
  %9678 = select i1 %307, float %9675, float %9670
  %9679 = select i1 %307, float 0.000000e+00, float %9671
  %9680 = select i1 %307, float 0.000000e+00, float %9672
  %9681 = fmul fast float %9676, %9314
  %9682 = fmul fast float %9676, %9315
  %9683 = fmul fast float %9677, %9316
  %9684 = fadd fast float %9681, %9678
  %9685 = fadd fast float %9682, %9679
  %9686 = fadd fast float %9680, %9683
  %9687 = fmul fast float %9676, %9317
  %9688 = fmul fast float %9676, %9318
  %9689 = fmul fast float %9677, %9319
  br label %9690

; <label>:9690                                    ; preds = %9666, %9323, %9292, %8524
  %9691 = phi float [ %8529, %8524 ], [ %9314, %9292 ], [ %9684, %9666 ], [ %9314, %9323 ]
  %9692 = phi float [ %8530, %8524 ], [ %9315, %9292 ], [ %9685, %9666 ], [ %9315, %9323 ]
  %9693 = phi float [ %8531, %8524 ], [ %9316, %9292 ], [ %9686, %9666 ], [ %9316, %9323 ]
  %9694 = phi float [ %8532, %8524 ], [ %9317, %9292 ], [ %9687, %9666 ], [ %9317, %9323 ]
  %9695 = phi float [ %8533, %8524 ], [ %9318, %9292 ], [ %9688, %9666 ], [ %9318, %9323 ]
  %9696 = phi float [ %8534, %8524 ], [ %9319, %9292 ], [ %9689, %9666 ], [ %9319, %9323 ]
  %9697 = phi float [ %8535, %8524 ], [ %9302, %9292 ], [ %9673, %9666 ], [ %9302, %9323 ]
  %9698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9699 = extractvalue %dx.types.CBufRet.f32 %9698, 2
  %9700 = extractvalue %dx.types.CBufRet.f32 %9698, 3
  %9701 = fmul fast float %9699, %116
  %9702 = fmul fast float %9700, %117
  %9703 = call float @dx.op.unary.f32(i32 7, float %9701)  ; Saturate(value)
  %9704 = call float @dx.op.unary.f32(i32 7, float %9702)  ; Saturate(value)
  %9705 = select i1 %8266, i32 2, i32 0
  %9706 = or i32 %9705, 1
  %9707 = uitofp i32 %9706 to float
  %9708 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9703, float %9704, float %9707, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9709 = extractvalue %dx.types.ResRet.f32 %9708, 0
  %9710 = extractvalue %dx.types.ResRet.f32 %9708, 1
  %9711 = extractvalue %dx.types.ResRet.f32 %9708, 2
  %9712 = extractvalue %dx.types.ResRet.f32 %9708, 3
  %9713 = add nuw nsw i32 %9705, 2
  %9714 = uitofp i32 %9713 to float
  %9715 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9703, float %9704, float %9714, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9716 = extractvalue %dx.types.ResRet.f32 %9715, 0
  %9717 = extractvalue %dx.types.ResRet.f32 %9715, 1
  %9718 = extractvalue %dx.types.ResRet.f32 %9715, 2
  %9719 = extractvalue %dx.types.ResRet.f32 %9715, 3
  %9720 = call float @dx.op.binary.f32(i32 35, float %9710, float %9711)  ; FMax(a,b)
  %9721 = call float @dx.op.binary.f32(i32 35, float %9709, float %9720)  ; FMax(a,b)
  %9722 = call float @dx.op.binary.f32(i32 35, float %9721, float %9712)  ; FMax(a,b)
  %9723 = call float @dx.op.binary.f32(i32 36, float %9717, float %9718)  ; FMin(a,b)
  %9724 = call float @dx.op.binary.f32(i32 36, float %9716, float %9723)  ; FMin(a,b)
  %9725 = call float @dx.op.binary.f32(i32 36, float %9724, float %9719)  ; FMin(a,b)
  %9726 = fmul fast float %9722, 2.550000e+02
  %9727 = fadd fast float %9726, 0x3F70101020000000
  %9728 = fptoui float %9727 to i32
  %9729 = fmul fast float %9725, 2.550000e+02
  %9730 = fadd fast float %9729, 0x3F70101020000000
  %9731 = fptoui float %9730 to i32
  %9732 = icmp ult i32 %9728, %9731
  br i1 %9732, label %9733, label %9902

; <label>:9733                                    ; preds = %9690
  %9734 = fcmp fast ogt float %102, 9.843750e-01
  %9735 = fadd fast float %8528, -4.000000e+00
  %9736 = select i1 %9734, float -4.000000e+00, float %9735
  %9737 = call float @dx.op.binary.f32(i32 35, float %9736, float 0.000000e+00)  ; FMax(a,b)
  %9738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9739 = extractvalue %dx.types.CBufRet.f32 %9738, 0
  %9740 = fadd fast float %9739, %9737
  %9741 = extractvalue %dx.types.CBufRet.f32 %9738, 2
  %9742 = fmul fast float %9740, %9741
  %9743 = call float @dx.op.unary.f32(i32 23, float %9742)  ; Log(value)
  %9744 = extractvalue %dx.types.CBufRet.f32 %9738, 3
  %9745 = fmul fast float %9744, %9743
  %9746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9747 = extractvalue %dx.types.CBufRet.f32 %9746, 2
  %9748 = fmul fast float %9745, %9747
  %9749 = call float @dx.op.unary.f32(i32 7, float %9748)  ; Saturate(value)
  %9750 = uitofp i32 %9728 to float
  %9751 = uitofp i32 %9731 to float
  %9752 = fadd fast float %9750, 5.000000e-01
  %9753 = fadd fast float %9751, 5.000000e-01
  %9754 = fmul fast float %9747, %9752
  %9755 = fmul fast float %9747, %9753
  %9756 = fadd fast float %9754, 0x3F0FFB4800000000
  %9757 = fadd fast float %9755, 0xBF0FFB4800000000
  %9758 = call float @dx.op.binary.f32(i32 35, float %9749, float %9756)  ; FMax(a,b)
  %9759 = call float @dx.op.binary.f32(i32 36, float %9758, float %9757)  ; FMin(a,b)
  %9760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9761 = extractvalue %dx.types.CBufRet.f32 %9760, 1
  %9762 = extractvalue %dx.types.CBufRet.f32 %9760, 2
  %9763 = extractvalue %dx.types.CBufRet.f32 %9760, 0
  %9764 = select i1 %8266, float %9763, float 0.000000e+00
  %9765 = fmul fast float %9761, %9759
  %9766 = fadd fast float %9764, %9765
  %9767 = fadd fast float %9764, %9762
  %9768 = fsub fast float %9761, %9762
  %9769 = fadd fast float %9768, %9764
  %9770 = call float @dx.op.binary.f32(i32 35, float %9766, float %9767)  ; FMax(a,b)
  %9771 = call float @dx.op.binary.f32(i32 36, float %9770, float %9769)  ; FMin(a,b)
  %9772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %9703, float %9704, float %9771, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9773 = extractvalue %dx.types.ResRet.f32 %9772, 0
  %9774 = extractvalue %dx.types.ResRet.f32 %9772, 1
  %9775 = extractvalue %dx.types.ResRet.f32 %9772, 2
  %9776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9777 = extractvalue %dx.types.CBufRet.i32 %9776, 0
  %9778 = extractvalue %dx.types.CBufRet.i32 %9776, 1
  %9779 = uitofp i32 %9777 to float
  %9780 = uitofp i32 %9778 to float
  %9781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9782 = extractvalue %dx.types.CBufRet.f32 %9781, 0
  %9783 = extractvalue %dx.types.CBufRet.f32 %9781, 1
  %9784 = fmul fast float %9779, %9703
  %9785 = fmul fast float %9780, %9704
  %9786 = fadd fast float %9784, -5.000000e-01
  %9787 = fadd fast float %9785, -5.000000e-01
  %9788 = call float @dx.op.unary.f32(i32 22, float %9786)  ; Frc(value)
  %9789 = call float @dx.op.unary.f32(i32 22, float %9787)  ; Frc(value)
  %9790 = fmul fast float %9788, %9788
  %9791 = fmul fast float %9790, %9788
  %9792 = fsub fast float 3.000000e+00, %9788
  %9793 = fmul fast float %9790, %9792
  %9794 = fmul fast float %9788, 3.000000e+00
  %9795 = fmul fast float %9791, 3.000000e+00
  %9796 = fmul fast float %9790, 6.000000e+00
  %9797 = fsub fast float %9795, %9796
  %9798 = fadd fast float %9797, 4.000000e+00
  %9799 = fmul fast float %9798, 0x3FC5555560000000
  %9800 = fmul fast float %9791, -3.000000e+00
  %9801 = fadd fast float %9790, %9788
  %9802 = fmul fast float %9801, 3.000000e+00
  %9803 = fadd fast float %9800, 1.000000e+00
  %9804 = fadd fast float %9803, %9802
  %9805 = fmul fast float %9791, 0x3FC5555560000000
  %9806 = fmul fast float %9789, %9789
  %9807 = fmul fast float %9806, %9789
  %9808 = fsub fast float 3.000000e+00, %9789
  %9809 = fmul fast float %9806, %9808
  %9810 = fmul fast float %9789, 3.000000e+00
  %9811 = fmul fast float %9807, 3.000000e+00
  %9812 = fmul fast float %9806, 6.000000e+00
  %9813 = fsub fast float %9811, %9812
  %9814 = fadd fast float %9813, 4.000000e+00
  %9815 = fmul fast float %9814, 0x3FC5555560000000
  %9816 = fmul fast float %9807, -3.000000e+00
  %9817 = fadd fast float %9806, %9789
  %9818 = fmul fast float %9817, 3.000000e+00
  %9819 = fadd fast float %9816, 1.000000e+00
  %9820 = fadd fast float %9819, %9818
  %9821 = fmul fast float %9807, 0x3FC5555560000000
  %9822 = fadd fast float %9788, 1.000000e+00
  %9823 = fsub fast float 1.000000e+00, %9794
  %9824 = fadd fast float %9823, %9793
  %9825 = fadd fast float %9824, %9798
  %9826 = fmul fast float %9825, 0x3FC5555560000000
  %9827 = fdiv fast float %9799, %9826
  %9828 = fsub fast float %9822, %9827
  %9829 = fsub fast float 1.000000e+00, %9788
  %9830 = fadd fast float %9804, %9791
  %9831 = fmul fast float %9830, 0x3FC5555560000000
  %9832 = fdiv fast float %9805, %9831
  %9833 = fadd fast float %9829, %9832
  %9834 = fadd fast float %9789, 1.000000e+00
  %9835 = fsub fast float 1.000000e+00, %9810
  %9836 = fadd fast float %9835, %9809
  %9837 = fadd fast float %9836, %9814
  %9838 = fmul fast float %9837, 0x3FC5555560000000
  %9839 = fdiv fast float %9815, %9838
  %9840 = fsub fast float %9834, %9839
  %9841 = fsub fast float 1.000000e+00, %9789
  %9842 = fadd fast float %9820, %9807
  %9843 = fmul fast float %9842, 0x3FC5555560000000
  %9844 = fdiv fast float %9821, %9843
  %9845 = fadd fast float %9844, %9841
  %9846 = fmul fast float %9828, %9782
  %9847 = fsub fast float %9703, %9846
  %9848 = fmul fast float %9833, %9782
  %9849 = fadd fast float %9848, %9703
  %9850 = fmul fast float %9845, %9783
  %9851 = fadd fast float %9850, %9704
  %9852 = fmul fast float %9840, %9783
  %9853 = fsub fast float %9704, %9852
  %9854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9847, float %9853, float %9771, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9855 = extractvalue %dx.types.ResRet.f32 %9854, 0
  %9856 = extractvalue %dx.types.ResRet.f32 %9854, 1
  %9857 = extractvalue %dx.types.ResRet.f32 %9854, 2
  %9858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9849, float %9853, float %9771, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9859 = extractvalue %dx.types.ResRet.f32 %9858, 0
  %9860 = extractvalue %dx.types.ResRet.f32 %9858, 1
  %9861 = extractvalue %dx.types.ResRet.f32 %9858, 2
  %9862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9847, float %9851, float %9771, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9863 = extractvalue %dx.types.ResRet.f32 %9862, 0
  %9864 = extractvalue %dx.types.ResRet.f32 %9862, 1
  %9865 = extractvalue %dx.types.ResRet.f32 %9862, 2
  %9866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9849, float %9851, float %9771, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9867 = extractvalue %dx.types.ResRet.f32 %9866, 0
  %9868 = extractvalue %dx.types.ResRet.f32 %9866, 1
  %9869 = extractvalue %dx.types.ResRet.f32 %9866, 2
  %9870 = fsub fast float %9863, %9855
  %9871 = fsub fast float %9864, %9856
  %9872 = fsub fast float %9865, %9857
  %9873 = fmul fast float %9870, %9843
  %9874 = fmul fast float %9871, %9843
  %9875 = fmul fast float %9872, %9843
  %9876 = fadd fast float %9873, %9855
  %9877 = fadd fast float %9874, %9856
  %9878 = fadd fast float %9875, %9857
  %9879 = fsub fast float %9867, %9859
  %9880 = fsub fast float %9868, %9860
  %9881 = fsub fast float %9869, %9861
  %9882 = fmul fast float %9879, %9843
  %9883 = fmul fast float %9880, %9843
  %9884 = fmul fast float %9881, %9843
  %9885 = fsub fast float %9859, %9876
  %9886 = fadd fast float %9885, %9882
  %9887 = fsub fast float %9860, %9877
  %9888 = fadd fast float %9887, %9883
  %9889 = fsub fast float %9861, %9878
  %9890 = fadd fast float %9889, %9884
  %9891 = fmul fast float %9886, %9831
  %9892 = fmul fast float %9888, %9831
  %9893 = fmul fast float %9890, %9831
  %9894 = fadd fast float %9891, %9876
  %9895 = fadd fast float %9892, %9877
  %9896 = fadd fast float %9893, %9878
  %9897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9898 = extractvalue %dx.types.CBufRet.f32 %9897, 1
  %9899 = fmul fast float %9894, %9898
  %9900 = fmul fast float %9895, %9898
  %9901 = fmul fast float %9896, %9898
  br label %9902

; <label>:9902                                    ; preds = %9733, %9690
  %9903 = phi float [ %9773, %9733 ], [ 1.000000e+00, %9690 ]
  %9904 = phi float [ %9774, %9733 ], [ 1.000000e+00, %9690 ]
  %9905 = phi float [ %9775, %9733 ], [ 1.000000e+00, %9690 ]
  %9906 = phi float [ %9899, %9733 ], [ 0.000000e+00, %9690 ]
  %9907 = phi float [ %9900, %9733 ], [ 0.000000e+00, %9690 ]
  %9908 = phi float [ %9901, %9733 ], [ 0.000000e+00, %9690 ]
  %9909 = fmul fast float %9906, %8254
  %9910 = fmul fast float %9907, %8254
  %9911 = fmul fast float %9908, %8254
  %9912 = fmul fast float %9903, %9697
  %9913 = call float @dx.op.dot3.f32(i32 55, float %9903, float %9904, float %9905, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9914 = call float @dx.op.dot3.f32(i32 55, float %9909, float %9910, float %9911, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9915 = select i1 %307, float %9913, float %9903
  %9916 = select i1 %307, float %9913, float %9904
  %9917 = select i1 %307, float 1.000000e+00, float %9905
  %9918 = select i1 %307, float %9914, float %9909
  %9919 = select i1 %307, float 0.000000e+00, float %9910
  %9920 = select i1 %307, float 0.000000e+00, float %9911
  %9921 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9922 = extractvalue %dx.types.CBufRet.i32 %9921, 3
  %9923 = and i32 %9922, 3
  %9924 = icmp ne i32 %9923, 0
  %9925 = and i32 %9922, 4
  %9926 = icmp ne i32 %9925, 0
  %9927 = and i1 %9924, %9926
  %9928 = and i1 %307, %9927
  br i1 %9928, label %9929, label %9935

; <label>:9929                                    ; preds = %9902
  %9930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9931 = extractvalue %dx.types.CBufRet.f32 %9930, 1
  %9932 = fadd fast float %9912, -1.000000e+00
  %9933 = fmul fast float %9931, %9932
  %9934 = fadd fast float %9933, 1.000000e+00
  br label %9935

; <label>:9935                                    ; preds = %9929, %9902
  %9936 = phi float [ %9934, %9929 ], [ %9912, %9902 ]
  %9937 = fadd fast float %9694, %9691
  %9938 = fmul fast float %9915, %9937
  %9939 = fadd fast float %9938, %9918
  %9940 = fadd fast float %9695, %9692
  %9941 = fmul fast float %9916, %9940
  %9942 = fadd fast float %9941, %9919
  %9943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9944 = extractvalue %dx.types.CBufRet.f32 %9943, 0
  br i1 %307, label %9945, label %9960

; <label>:9945                                    ; preds = %9935
  %9946 = fadd fast float %9939, %9942
  %9947 = fmul fast float %9944, %9946
  %9948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9949 = extractvalue %dx.types.CBufRet.f32 %9948, 3
  %9950 = extractvalue %dx.types.CBufRet.f32 %8242, 1
  %9951 = fsub fast float %8247, %8241
  %9952 = fadd fast float %9951, %8248
  %9953 = fsub fast float %9952, %9950
  %9954 = extractvalue %dx.types.CBufRet.f32 %8242, 2
  %9955 = fmul fast float %9953, %9954
  %9956 = call float @dx.op.unary.f32(i32 7, float %9955)  ; Saturate(value)
  %9957 = fsub fast float %9956, %9949
  %9958 = fmul fast float %9957, %9936
  %9959 = fadd fast float %9958, %9949
  br label %9986

; <label>:9960                                    ; preds = %9935
  %9961 = fadd fast float %9696, %9693
  %9962 = fmul fast float %9917, %9961
  %9963 = fadd fast float %9962, %9920
  %9964 = fmul fast float %9944, %9939
  %9965 = fmul fast float %9944, %9942
  %9966 = fmul fast float %9944, %9963
  %9967 = call float @dx.op.binary.f32(i32 35, float %9965, float %9966)  ; FMax(a,b)
  %9968 = call float @dx.op.binary.f32(i32 35, float %9964, float %9967)  ; FMax(a,b)
  %9969 = call float @dx.op.binary.f32(i32 35, float %8254, float %8254)  ; FMax(a,b)
  %9970 = call float @dx.op.binary.f32(i32 35, float %8254, float %9969)  ; FMax(a,b)
  %9971 = call float @dx.op.binary.f32(i32 35, float %9968, float %9970)  ; FMax(a,b)
  %9972 = fcmp fast ugt float %9971, 0x3F10000000000000
  br i1 %9972, label %9974, label %9973

; <label>:9973                                    ; preds = %9960
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9974

; <label>:9974                                    ; preds = %9973, %9960
  %9975 = add i32 %61, 356
  %9976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %9975, i32 undef)  ; BufferLoad(srv,index,wot)
  %9977 = extractvalue %dx.types.ResRet.i32 %9976, 0
  %9978 = and i32 %9977, 32
  %9979 = icmp eq i32 %9978, 0
  br i1 %9979, label %9986, label %9980

; <label>:9980                                    ; preds = %9974
  %9981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9982 = extractvalue %dx.types.CBufRet.f32 %9981, 0
  %9983 = fmul fast float %9982, 0x3FE99999A0000000
  %9984 = fadd fast float %9982, %9964
  %9985 = fadd fast float %9983, %9966
  br label %9986

; <label>:9986                                    ; preds = %9980, %9974, %9945
  %9987 = phi float [ 1.000000e+00, %9945 ], [ %8254, %9980 ], [ %8254, %9974 ]
  %9988 = phi float [ %9947, %9945 ], [ %9984, %9980 ], [ %9964, %9974 ]
  %9989 = phi float [ %9959, %9945 ], [ %9965, %9980 ], [ %9965, %9974 ]
  %9990 = phi float [ 1.000000e+00, %9945 ], [ %9985, %9980 ], [ %9966, %9974 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9991 = call float @dx.op.binary.f32(i32 36, float %9988, float 3.225500e+04)  ; FMin(a,b)
  %9992 = call float @dx.op.binary.f32(i32 36, float %9989, float 3.225500e+04)  ; FMin(a,b)
  %9993 = call float @dx.op.binary.f32(i32 36, float %9990, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9991)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9992)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9993)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9994 = call float @dx.op.binary.f32(i32 36, float %8254, float 3.225500e+04)  ; FMin(a,b)
  %9995 = call float @dx.op.binary.f32(i32 36, float %9987, float 3.225500e+04)  ; FMin(a,b)
  %9996 = call float @dx.op.binary.f32(i32 36, float %9987, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9994)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9995)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9996)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!74 = !{[58 x i32] [i32 56, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 7, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
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

