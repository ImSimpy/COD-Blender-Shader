;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float    yzw
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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 8b6b21d63fbe2a713ceaefda7028bb73
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
;                                   texture     f32          2d     T54             t1     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 4 depends on inputs: { 8, 9, 12, 13, 14, 44, 45, 46, 48 }
;   output 5 depends on inputs: { 0, 1, 8, 9, 12, 13, 14, 44, 45, 46, 48 }
;   output 6 depends on inputs: { 0, 1, 8, 9, 12, 13, 14, 44, 45, 46, 48 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %63 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = fmul fast float %115, %100
  %117 = fmul fast float %115, %101
  %118 = call float @dx.op.dot3.f32(i32 55, float %92, float %93, float %94, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %119 = bitcast float %118 to i32
  %120 = ashr i32 %119, 1
  %121 = sub nsw i32 1597250115, %120
  %122 = bitcast i32 %121 to float
  %123 = fmul fast float %122, %92
  %124 = fmul fast float %122, %93
  %125 = fmul fast float %122, %94
  %126 = fmul fast float %93, %90
  %127 = fmul fast float %94, %89
  %128 = fsub fast float %126, %127
  %129 = fmul fast float %94, %88
  %130 = fmul fast float %92, %90
  %131 = fsub fast float %129, %130
  %132 = fmul fast float %92, %89
  %133 = fmul fast float %93, %88
  %134 = fsub fast float %132, %133
  %135 = fmul fast float %128, %91
  %136 = fmul fast float %131, %91
  %137 = fmul fast float %134, %91
  %138 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %139 = bitcast float %138 to i32
  %140 = ashr i32 %139, 1
  %141 = sub nsw i32 1597250115, %140
  %142 = bitcast i32 %141 to float
  %143 = fmul fast float %142, %81
  %144 = fmul fast float %142, %82
  %145 = fmul fast float %142, %83
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = fcmp fast une float %147, 0.000000e+00
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 3
  %152 = fmul fast float %116, 2.000000e+00
  %153 = fmul fast float %152, %150
  %154 = fmul fast float %117, 2.000000e+00
  %155 = fmul fast float %154, %151
  %156 = fsub fast float 1.000000e+00, %153
  %157 = fsub fast float 1.000000e+00, %155
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = select i1 %148, float %159, float %163
  %167 = select i1 %148, float %160, float %164
  %168 = select i1 %148, float %161, float %165
  %169 = fmul fast float %166, %156
  %170 = fmul fast float %167, %156
  %171 = fmul fast float %168, %156
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %175 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = extractvalue %dx.types.CBufRet.f32 %189, 1
  %192 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %206 = fmul fast float %116, 5.000000e-01
  %207 = fmul fast float %117, 5.000000e-01
  %208 = fptosi float %206 to i32
  %209 = fptosi float %207 to i32
  %210 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %28, i32 0, i32 %208, i32 %209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = lshr i32 %211, 18
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F4C00EBA0000000
  %215 = call float @dx.op.unary.f32(i32 21, float %214)  ; Exp(value)
  %216 = fadd fast float %215, -1.000000e+00
  %217 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %28, i32 0)  ; GetDimensions(handle,mipLevel)
  %218 = extractvalue %dx.types.Dimensions %217, 0
  %219 = sitofp i32 %218 to float
  %220 = extractvalue %dx.types.Dimensions %217, 1
  %221 = sitofp i32 %220 to float
  %222 = fcmp fast oge float %206, %219
  %223 = fcmp fast oge float %207, %221
  %224 = or i1 %222, %223
  %225 = select i1 %224, float 0x4197782600000000, float %216
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %228 = extractvalue %dx.types.CBufRet.f32 %226, 3
  %229 = fmul fast float %227, %116
  %230 = fmul fast float %228, %117
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = and i32 %232, 114688
  %234 = icmp ne i32 %233, 0
  %235 = select i1 %234, float %229, float 0.000000e+00
  %236 = select i1 %234, float %230, float 0.000000e+00
  %237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %57, float %235, float %236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = fmul fast float %238, 2.550000e+02
  %240 = fptoui float %239 to i32
  %241 = select i1 %234, i32 %240, i32 0
  %242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.i32 %242, 3
  %244 = and i32 %243, 3
  %245 = icmp ne i32 %244, 0
  %246 = and i32 %243, 4
  %247 = icmp ne i32 %246, 0
  %248 = and i1 %245, %247
  br i1 %248, label %249, label %258

; <label>:249                                     ; preds = %0
  %250 = fmul fast float %151, %117
  %251 = fmul fast float %150, %116
  %252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %56, float %251, float %250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = fsub fast float 1.000000e+00, %253
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 0
  %257 = fcmp fast olt float %254, %256
  br label %261

; <label>:258                                     ; preds = %0
  %259 = icmp eq i32 %246, 0
  %260 = and i1 %245, %259
  br label %261

; <label>:261                                     ; preds = %258, %249
  %262 = phi i1 [ %257, %249 ], [ %260, %258 ]
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 2
  %265 = fmul fast float %264, 0x3FE3C6EF40000000
  %266 = frem fast float %116, 2.560000e+02
  %267 = frem fast float %117, 2.560000e+02
  %268 = fptoui float %266 to i32
  %269 = fptoui float %267 to i32
  %270 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %39, i32 0, i32 %268, i32 %269, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = fadd fast float %271, %265
  %273 = call float @dx.op.unary.f32(i32 22, float %272)  ; Frc(value)
  %274 = add i32 %62, 216
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 255
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %278, 0x3F70101020000000
  %280 = lshr i32 %276, 8
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %282, 0x3F70101020000000
  %284 = lshr i32 %276, 16
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %286, 0x3F70101020000000
  %288 = add i32 %62, 36
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 65535
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %290, 16
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = add i32 %62, 288
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %297, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = fmul fast float %299, 0x3F50624DE0000000
  %303 = fmul fast float %301, 0x3F50624DE0000000
  %304 = mul i32 %63, 100
  %305 = add i32 %304, 28
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = add i32 %62, 232
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 255
  %312 = uitofp i32 %311 to float
  %313 = fmul fast float %312, 0x3F70101020000000
  %314 = lshr i32 %310, 8
  %315 = and i32 %314, 255
  %316 = uitofp i32 %315 to float
  %317 = fmul fast float %316, 0x3F70101020000000
  %318 = lshr i32 %310, 16
  %319 = and i32 %318, 255
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, 0x3F70101020000000
  %322 = add i32 %62, 52
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = and i32 %324, 65535
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %324, 16
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = add i32 %62, 304
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = and i32 %331, 65535
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %331, 16
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = add i32 %304, 48
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %348 = and i32 %307, 8
  %349 = icmp ne i32 %348, 0
  %350 = select i1 %349, float %341, float %313
  %351 = select i1 %349, float %344, float %317
  %352 = select i1 %349, float %347, float %321
  %353 = add i32 %304, 52
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 65535
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %355, 16
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = and i32 %307, 2
  %361 = icmp ne i32 %360, 0
  %362 = select i1 %361, float %357, float %326
  %363 = select i1 %361, float %359, float %328
  %364 = add i32 %304, 56
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = and i32 %366, 65535
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = lshr i32 %366, 16
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = and i32 %307, 4
  %372 = icmp ne i32 %371, 0
  %373 = select i1 %372, float %368, float %333
  %374 = fmul float %373, 0x3F50624DE0000000
  %375 = select i1 %372, float %370, float %335
  %376 = fmul float %375, 0x3F50624DE0000000
  %377 = add i32 %304, 32
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = add i32 %62, 248
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = and i32 %382, 255
  %384 = uitofp i32 %383 to float
  %385 = fmul fast float %384, 0x3F70101020000000
  %386 = lshr i32 %382, 8
  %387 = and i32 %386, 255
  %388 = uitofp i32 %387 to float
  %389 = fmul fast float %388, 0x3F70101020000000
  %390 = lshr i32 %382, 16
  %391 = and i32 %390, 255
  %392 = uitofp i32 %391 to float
  %393 = fmul fast float %392, 0x3F70101020000000
  %394 = add i32 %62, 68
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = and i32 %396, 65535
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %396, 16
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = add i32 %62, 320
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = and i32 %403, 65535
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = lshr i32 %403, 16
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = add i32 %304, 68
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = shl i32 %410, 4
  %412 = and i32 %411, 32752
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = lshr i32 %410, 7
  %415 = and i32 %414, 32752
  %416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %415)  ; LegacyF16ToF32(value)
  %417 = lshr i32 %410, 22
  %418 = shl nuw nsw i32 %417, 5
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = and i32 %379, 8
  %421 = icmp ne i32 %420, 0
  %422 = select i1 %421, float %413, float %385
  %423 = select i1 %421, float %416, float %389
  %424 = select i1 %421, float %419, float %393
  %425 = add i32 %304, 72
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = and i32 %427, 65535
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = lshr i32 %427, 16
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = and i32 %379, 2
  %433 = icmp ne i32 %432, 0
  %434 = select i1 %433, float %429, float %398
  %435 = select i1 %433, float %431, float %400
  %436 = add i32 %304, 76
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = and i32 %438, 65535
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = lshr i32 %438, 16
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = and i32 %379, 4
  %444 = icmp ne i32 %443, 0
  %445 = select i1 %444, float %440, float %405
  %446 = fmul float %445, 0x3F50624DE0000000
  %447 = select i1 %444, float %442, float %407
  %448 = fmul float %447, 0x3F50624DE0000000
  %449 = add i32 %304, 36
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = add i32 %62, 264
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = and i32 %454, 255
  %456 = uitofp i32 %455 to float
  %457 = fmul fast float %456, 0x3F70101020000000
  %458 = lshr i32 %454, 8
  %459 = and i32 %458, 255
  %460 = uitofp i32 %459 to float
  %461 = fmul fast float %460, 0x3F70101020000000
  %462 = lshr i32 %454, 16
  %463 = and i32 %462, 255
  %464 = uitofp i32 %463 to float
  %465 = fmul fast float %464, 0x3F70101020000000
  %466 = add i32 %62, 84
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = and i32 %468, 65535
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = lshr i32 %468, 16
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = add i32 %62, 336
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = and i32 %475, 65535
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = lshr i32 %475, 16
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = add i32 %304, 88
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = shl i32 %482, 4
  %484 = and i32 %483, 32752
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = lshr i32 %482, 7
  %487 = and i32 %486, 32752
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = lshr i32 %482, 22
  %490 = shl nuw nsw i32 %489, 5
  %491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %490)  ; LegacyF16ToF32(value)
  %492 = and i32 %451, 8
  %493 = icmp ne i32 %492, 0
  %494 = select i1 %493, float %485, float %457
  %495 = select i1 %493, float %488, float %461
  %496 = select i1 %493, float %491, float %465
  %497 = add i32 %304, 92
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = and i32 %499, 65535
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = lshr i32 %499, 16
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = and i32 %451, 2
  %505 = icmp ne i32 %504, 0
  %506 = select i1 %505, float %501, float %470
  %507 = select i1 %505, float %503, float %472
  %508 = add i32 %304, 96
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = and i32 %510, 65535
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = lshr i32 %510, 16
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = and i32 %451, 4
  %516 = icmp ne i32 %515, 0
  %517 = select i1 %516, float %512, float %477
  %518 = fmul float %517, 0x3F50624DE0000000
  %519 = select i1 %516, float %514, float %479
  %520 = fmul float %519, 0x3F50624DE0000000
  %521 = add i32 %62, 348
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = and i32 %523, 32
  %525 = icmp eq i32 %524, 0
  %526 = and i32 %523, 64
  %527 = icmp eq i32 %526, 0
  %528 = and i32 %523, 128
  %529 = icmp eq i32 %528, 0
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = and i32 %531, 2
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %547, label %534

; <label>:534                                     ; preds = %261
  %535 = add i32 %62, 488
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = add i32 %537, 0
  %539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %540 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %539, %dx.types.Handle %113, float %95, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = extractvalue %dx.types.ResRet.f32 %540, 1
  %543 = extractvalue %dx.types.ResRet.f32 %540, 2
  %544 = fmul fast float %541, %97
  %545 = fmul fast float %542, %98
  %546 = fmul fast float %543, %99
  br label %547

; <label>:547                                     ; preds = %534, %261
  %548 = phi float [ %99, %261 ], [ %546, %534 ]
  %549 = phi float [ %98, %261 ], [ %545, %534 ]
  %550 = phi float [ %97, %261 ], [ %544, %534 ]
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = and i32 %552, 2
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %574, label %555

; <label>:555                                     ; preds = %547
  %556 = add i32 %62, 44
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = and i32 %558, 1
  %560 = icmp ne i32 %559, 0
  %561 = select i1 %560, float %550, float 1.000000e+00
  %562 = add i32 %62, 60
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = and i32 %564, 1
  %566 = icmp ne i32 %565, 0
  %567 = select i1 %566, float %549, float 1.000000e+00
  %568 = add i32 %62, 76
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = and i32 %570, 1
  %572 = icmp ne i32 %571, 0
  %573 = select i1 %572, float %548, float 1.000000e+00
  br label %574

; <label>:574                                     ; preds = %555, %547
  %575 = phi float [ %548, %547 ], [ %573, %555 ]
  %576 = phi float [ %549, %547 ], [ %567, %555 ]
  %577 = phi float [ %550, %547 ], [ %561, %555 ]
  %578 = add i32 %62, 24
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = add i32 %62, 28
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = or i32 %583, %580
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %975, label %586

; <label>:586                                     ; preds = %574
  %587 = and i32 %580, 262144
  %588 = icmp ne i32 %587, 0
  %589 = select i1 %588, float %68, float 1.000000e+00
  %590 = select i1 %588, float %69, float 0.000000e+00
  %591 = select i1 %588, float %70, float 0.000000e+00
  %592 = select i1 %588, float %71, float 1.000000e+00
  %593 = select i1 %588, float %72, float %95
  %594 = select i1 %588, float %73, float %96
  %595 = add i32 %62, 284
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = lshr i32 %597, 16
  %599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %598)  ; LegacyF16ToF32(value)
  %600 = fmul fast float %599, 0x3F50624DE0000000
  %601 = add i32 %62, 88
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = lshr i32 %603, 16
  %605 = and i32 %604, 255
  %606 = lshr i32 %603, 24
  %607 = add i32 %62, 292
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = and i32 %609, 65535
  %611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %610)  ; LegacyF16ToF32(value)
  %612 = lshr i32 %609, 16
  %613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %612)  ; LegacyF16ToF32(value)
  %614 = add i32 %62, 32
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = lshr i32 %616, 22
  %618 = shl nuw nsw i32 %617, 5
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = shl i32 %616, 4
  %621 = and i32 %620, 32752
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = lshr i32 %616, 7
  %624 = and i32 %623, 32752
  %625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %624)  ; LegacyF16ToF32(value)
  %626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.f32 %626, 3
  %628 = fmul fast float %627, 1.000000e+03
  %629 = fmul fast float %302, %628
  %630 = call float @dx.op.unary.f32(i32 22, float %629)  ; Frc(value)
  %631 = fadd fast float %630, %292
  %632 = fmul fast float %303, %628
  %633 = call float @dx.op.unary.f32(i32 22, float %632)  ; Frc(value)
  %634 = fadd fast float %633, %294
  %635 = fmul fast float %600, %628
  %636 = call float @dx.op.unary.f32(i32 22, float %635)  ; Frc(value)
  %637 = fmul fast float %636, 0x401921FB60000000
  %638 = fadd fast float %637, %619
  %639 = call float @dx.op.unary.f32(i32 13, float %638)  ; Sin(value)
  %640 = call float @dx.op.unary.f32(i32 12, float %638)  ; Cos(value)
  %641 = fsub fast float -0.000000e+00, %639
  %642 = fadd fast float %593, -5.000000e-01
  %643 = fadd fast float %594, -5.000000e-01
  %644 = fmul fast float %611, %642
  %645 = fmul fast float %613, %643
  %646 = fadd fast float %644, 5.000000e-01
  %647 = fadd fast float %645, 5.000000e-01
  %648 = fmul fast float %622, %646
  %649 = fmul fast float %625, %647
  %650 = fmul fast float %640, %648
  %651 = call float @dx.op.tertiary.f32(i32 46, float %641, float %649, float %650)  ; FMad(a,b,c)
  %652 = fmul fast float %639, %648
  %653 = call float @dx.op.tertiary.f32(i32 46, float %640, float %649, float %652)  ; FMad(a,b,c)
  %654 = fadd fast float %631, %651
  %655 = fadd fast float %634, %653
  %656 = icmp ugt i32 %605, 1
  %657 = icmp ugt i32 %603, 33554431
  %658 = or i1 %657, %656
  br i1 %658, label %659, label %684

; <label>:659                                     ; preds = %586
  %660 = add i32 %62, 228
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = lshr i32 %662, 16
  %664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %663)  ; LegacyF16ToF32(value)
  %665 = fmul fast float %627, %664
  %666 = call float @dx.op.unary.f32(i32 22, float %665)  ; Frc(value)
  %667 = mul nuw nsw i32 %605, %606
  %668 = uitofp i32 %667 to float
  %669 = fmul fast float %666, %668
  %670 = call float @dx.op.unary.f32(i32 27, float %669)  ; Round_ni(value)
  %671 = fptoui float %670 to i32
  %672 = urem i32 %671, %605
  %673 = udiv i32 %671, %606
  %674 = call float @dx.op.unary.f32(i32 22, float %654)  ; Frc(value)
  %675 = call float @dx.op.unary.f32(i32 22, float %655)  ; Frc(value)
  %676 = uitofp i32 %672 to float
  %677 = uitofp i32 %673 to float
  %678 = fadd fast float %674, %676
  %679 = fadd fast float %675, %677
  %680 = uitofp i32 %605 to float
  %681 = uitofp i32 %606 to float
  %682 = fdiv fast float %678, %680
  %683 = fdiv fast float %679, %681
  br label %684

; <label>:684                                     ; preds = %659, %586
  %685 = phi float [ %682, %659 ], [ %654, %586 ]
  %686 = phi float [ %683, %659 ], [ %655, %586 ]
  %687 = and i32 %580, 16
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %864, label %689

; <label>:689                                     ; preds = %684
  %690 = add i32 %62, 376
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = add i32 %692, 0
  %694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %693, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %695 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %694, %dx.types.Handle %112, float %685, float %686, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %696 = extractvalue %dx.types.ResRet.f32 %695, 0
  %697 = extractvalue %dx.types.ResRet.f32 %695, 1
  %698 = extractvalue %dx.types.ResRet.f32 %695, 2
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = and i32 %700, 512
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %711, label %703

; <label>:703                                     ; preds = %689
  %704 = add i32 %62, 456
  %705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.i32 %705, 0
  %707 = add i32 %706, 0
  %708 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %707, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %709 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %708, %dx.types.Handle %113, float %685, float %686, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 0
  br label %711

; <label>:711                                     ; preds = %703, %689
  %712 = phi float [ %710, %703 ], [ 1.000000e+00, %689 ]
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = and i32 %714, 33554432
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %811, label %717

; <label>:717                                     ; preds = %711
  %718 = add i32 %62, 224
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = and i32 %720, 65535
  %722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %721)  ; LegacyF16ToF32(value)
  %723 = lshr i32 %720, 16
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = add i32 %62, 228
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = and i32 %727, 65535
  %729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %728)  ; LegacyF16ToF32(value)
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = and i32 %731, 255
  %733 = uitofp i32 %732 to float
  %734 = fmul fast float %733, 0x3F70101020000000
  %735 = lshr i32 %731, 8
  %736 = and i32 %735, 255
  %737 = uitofp i32 %736 to float
  %738 = fmul fast float %737, 0x3F70101020000000
  %739 = lshr i32 %731, 16
  %740 = and i32 %739, 255
  %741 = uitofp i32 %740 to float
  %742 = fmul fast float %741, 0x3F70101020000000
  %743 = add i32 %62, 220
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = and i32 %745, 255
  %747 = uitofp i32 %746 to float
  %748 = fmul fast float %747, 0x3F70101020000000
  %749 = lshr i32 %745, 8
  %750 = and i32 %749, 255
  %751 = uitofp i32 %750 to float
  %752 = fmul fast float %751, 0x3F70101020000000
  %753 = lshr i32 %745, 16
  %754 = and i32 %753, 255
  %755 = uitofp i32 %754 to float
  %756 = fmul fast float %755, 0x3F70101020000000
  %757 = bitcast float %696 to i32
  %758 = ashr i32 %757, 1
  %759 = sub nsw i32 1597463174, %758
  %760 = bitcast i32 %759 to float
  %761 = fmul fast float %696, 5.000000e-01
  %762 = fmul fast float %760, %760
  %763 = fmul fast float %762, %761
  %764 = fsub fast float 1.500000e+00, %763
  %765 = fmul fast float %760, %696
  %766 = fmul fast float %765, %764
  %767 = bitcast float %697 to i32
  %768 = ashr i32 %767, 1
  %769 = sub nsw i32 1597463174, %768
  %770 = bitcast i32 %769 to float
  %771 = fmul fast float %697, 5.000000e-01
  %772 = fmul fast float %770, %770
  %773 = fmul fast float %772, %771
  %774 = fsub fast float 1.500000e+00, %773
  %775 = fmul fast float %770, %697
  %776 = fmul fast float %775, %774
  %777 = bitcast float %698 to i32
  %778 = ashr i32 %777, 1
  %779 = sub nsw i32 1597463174, %778
  %780 = bitcast i32 %779 to float
  %781 = fmul fast float %698, 5.000000e-01
  %782 = fmul fast float %780, %780
  %783 = fmul fast float %782, %781
  %784 = fsub fast float 1.500000e+00, %783
  %785 = fmul fast float %780, %698
  %786 = fmul fast float %785, %784
  %787 = fsub fast float %766, %748
  %788 = fsub fast float %776, %752
  %789 = fsub fast float %786, %756
  %790 = fmul fast float %787, %722
  %791 = fmul fast float %788, %724
  %792 = fmul fast float %789, %729
  %793 = fadd fast float %790, %734
  %794 = fadd fast float %791, %738
  %795 = fadd fast float %792, %742
  %796 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  %797 = call float @dx.op.unary.f32(i32 7, float %794)  ; Saturate(value)
  %798 = call float @dx.op.unary.f32(i32 7, float %795)  ; Saturate(value)
  %799 = fmul fast float %796, %796
  %800 = fmul fast float %797, %797
  %801 = fmul fast float %798, %798
  %802 = fsub fast float %799, %696
  %803 = fsub fast float %800, %697
  %804 = fsub fast float %801, %698
  %805 = fmul fast float %802, %712
  %806 = fmul fast float %803, %712
  %807 = fmul fast float %804, %712
  %808 = fadd fast float %805, %696
  %809 = fadd fast float %806, %697
  %810 = fadd fast float %807, %698
  br label %864

; <label>:811                                     ; preds = %711
  %812 = and i32 %714, 134217728
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %848, label %814

; <label>:814                                     ; preds = %811
  %815 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %816 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %817 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %818 = fadd fast float %815, -5.000000e-01
  %819 = fadd fast float %816, -5.000000e-01
  %820 = fadd fast float %817, -5.000000e-01
  %821 = fmul fast float %818, %712
  %822 = fmul fast float %819, %712
  %823 = fmul fast float %820, %712
  %824 = fadd fast float %821, 5.000000e-01
  %825 = fadd fast float %822, 5.000000e-01
  %826 = fadd fast float %823, 5.000000e-01
  %827 = call float @dx.op.unary.f32(i32 24, float %696)  ; Sqrt(value)
  %828 = call float @dx.op.unary.f32(i32 24, float %697)  ; Sqrt(value)
  %829 = call float @dx.op.unary.f32(i32 24, float %698)  ; Sqrt(value)
  %830 = fmul fast float %824, 2.000000e+00
  %831 = fsub fast float 1.000000e+00, %830
  %832 = fmul fast float %831, %827
  %833 = fadd fast float %832, %830
  %834 = fmul fast float %833, %827
  %835 = fmul fast float %825, 2.000000e+00
  %836 = fsub fast float 1.000000e+00, %835
  %837 = fmul fast float %836, %828
  %838 = fadd fast float %837, %835
  %839 = fmul fast float %838, %828
  %840 = fmul fast float %826, 2.000000e+00
  %841 = fsub fast float 1.000000e+00, %840
  %842 = fmul fast float %841, %829
  %843 = fadd fast float %842, %840
  %844 = fmul fast float %843, %829
  %845 = fmul fast float %834, %834
  %846 = fmul fast float %839, %839
  %847 = fmul fast float %844, %844
  br label %864

; <label>:848                                     ; preds = %811
  %849 = fmul fast float %279, %279
  %850 = fmul fast float %283, %283
  %851 = fmul fast float %287, %287
  %852 = fadd fast float %849, -1.000000e+00
  %853 = fadd fast float %850, -1.000000e+00
  %854 = fadd fast float %851, -1.000000e+00
  %855 = fmul fast float %712, %852
  %856 = fmul fast float %712, %853
  %857 = fmul fast float %712, %854
  %858 = fadd fast float %855, 1.000000e+00
  %859 = fadd fast float %856, 1.000000e+00
  %860 = fadd fast float %857, 1.000000e+00
  %861 = fmul fast float %858, %696
  %862 = fmul fast float %859, %697
  %863 = fmul fast float %860, %698
  br label %864

; <label>:864                                     ; preds = %848, %814, %717, %684
  %865 = phi float [ %808, %717 ], [ %845, %814 ], [ %861, %848 ], [ 1.000000e+00, %684 ]
  %866 = phi float [ %809, %717 ], [ %846, %814 ], [ %862, %848 ], [ 1.000000e+00, %684 ]
  %867 = phi float [ %810, %717 ], [ %847, %814 ], [ %863, %848 ], [ 1.000000e+00, %684 ]
  %868 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.i32 %868, 1
  %870 = and i32 %869, 1
  %871 = icmp ne i32 %870, 0
  %872 = add i32 %62, 356
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = and i32 %874, 32
  %876 = icmp ne i32 %875, 0
  %877 = and i1 %871, %876
  %878 = select i1 %877, float 1.000000e+00, float %865
  %879 = select i1 %877, float 0x3FD3333340000000, float %866
  %880 = select i1 %877, float 0x3FD3333340000000, float %867
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 32
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %957, label %885

; <label>:885                                     ; preds = %864
  %886 = add i32 %62, 92
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = add i32 %62, 392
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %889, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = add i32 %891, 0
  %893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %892, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %894 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %893, %dx.types.Handle %112, float %685, float %686, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %895 = extractvalue %dx.types.ResRet.f32 %894, 0
  %896 = extractvalue %dx.types.ResRet.f32 %894, 1
  %897 = extractvalue %dx.types.ResRet.f32 %894, 2
  %898 = extractvalue %dx.types.ResRet.f32 %894, 3
  %899 = and i32 %888, 255
  %900 = uitofp i32 %899 to float
  %901 = lshr i32 %888, 8
  %902 = and i32 %901, 255
  %903 = uitofp i32 %902 to float
  %904 = lshr i32 %888, 16
  %905 = and i32 %904, 255
  %906 = uitofp i32 %905 to float
  %907 = fmul fast float %906, 0x3F70101000000000
  %908 = fmul fast float %895, %900
  %909 = fadd fast float %908, %903
  %910 = fmul fast float %909, 0x3F70101000000000
  %911 = fadd fast float %896, -5.000000e-01
  %912 = fadd fast float %898, -5.000000e-01
  %913 = fmul fast float %911, %907
  %914 = fmul fast float %912, %907
  %915 = fadd fast float %913, 5.000000e-01
  %916 = fadd fast float %914, 5.000000e-01
  %917 = fmul fast float %915, 2.000000e+00
  %918 = fadd fast float %917, -1.000000e+00
  %919 = fmul fast float %916, 2.000000e+00
  %920 = fadd fast float %919, -1.000000e+00
  %921 = fadd fast float %918, %920
  %922 = fmul fast float %921, 5.000000e-01
  %923 = fsub fast float %918, %920
  %924 = fmul fast float %923, 5.000000e-01
  %925 = call float @dx.op.unary.f32(i32 6, float %922)  ; FAbs(value)
  %926 = fsub fast float 1.000000e+00, %925
  %927 = call float @dx.op.unary.f32(i32 6, float %924)  ; FAbs(value)
  %928 = fsub fast float %926, %927
  %929 = call float @dx.op.dot3.f32(i32 55, float %922, float %924, float %928, float %922, float %924, float %928)  ; Dot3(ax,ay,az,bx,by,bz)
  %930 = call float @dx.op.unary.f32(i32 25, float %929)  ; Rsqrt(value)
  %931 = fmul fast float %922, %930
  %932 = fmul fast float %924, %930
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = and i32 %934, 67108864
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %953, label %937

; <label>:937                                     ; preds = %885
  %938 = add i32 %62, 280
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = and i32 %940, 65535
  %942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %941)  ; LegacyF16ToF32(value)
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = and i32 %944, 65535
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = lshr i32 %940, 16
  %948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %947)  ; LegacyF16ToF32(value)
  %949 = fsub fast float %910, %948
  %950 = fmul fast float %949, %942
  %951 = fadd fast float %950, %946
  %952 = call float @dx.op.unary.f32(i32 7, float %951)  ; Saturate(value)
  br label %953

; <label>:953                                     ; preds = %937, %885
  %954 = phi float [ %952, %937 ], [ %910, %885 ]
  %955 = call float @dx.op.dot2.f32(i32 54, float %931, float %932, float %589, float %590)  ; Dot2(ax,ay,bx,by)
  %956 = call float @dx.op.dot2.f32(i32 54, float %931, float %932, float %591, float %592)  ; Dot2(ax,ay,bx,by)
  br label %957

; <label>:957                                     ; preds = %953, %864
  %958 = phi float [ %954, %953 ], [ 0x3FD6666660000000, %864 ]
  %959 = phi float [ %955, %953 ], [ 0.000000e+00, %864 ]
  %960 = phi float [ %956, %953 ], [ 0.000000e+00, %864 ]
  %961 = phi float [ %897, %953 ], [ 1.000000e+00, %864 ]
  %962 = add i32 %62, 96
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = and i32 %964, 255
  %966 = uitofp i32 %965 to float
  %967 = lshr i32 %964, 8
  %968 = and i32 %967, 255
  %969 = uitofp i32 %968 to float
  %970 = call float @dx.op.dot3.f32(i32 55, float %878, float %879, float %880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %971 = fmul fast float %969, %970
  %972 = fadd fast float %971, %966
  %973 = fmul fast float %972, 0x3F70101020000000
  %974 = call float @dx.op.unary.f32(i32 7, float %973)  ; Saturate(value)
  br label %975

; <label>:975                                     ; preds = %957, %574
  %976 = phi float [ 0.000000e+00, %574 ], [ %959, %957 ]
  %977 = phi float [ 0.000000e+00, %574 ], [ %960, %957 ]
  %978 = phi float [ 0.000000e+00, %574 ], [ %958, %957 ]
  %979 = phi float [ 0.000000e+00, %574 ], [ %961, %957 ]
  %980 = phi float [ 0.000000e+00, %574 ], [ %974, %957 ]
  br i1 %525, label %1542, label %981

; <label>:981                                     ; preds = %975
  %982 = add i32 %62, 40
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = add i32 %62, 44
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = or i32 %987, %984
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %1542, label %990

; <label>:990                                     ; preds = %981
  %991 = and i32 %984, 262144
  %992 = icmp ne i32 %991, 0
  %993 = select i1 %992, float %68, float 1.000000e+00
  %994 = select i1 %992, float %69, float 0.000000e+00
  %995 = select i1 %992, float %70, float 0.000000e+00
  %996 = select i1 %992, float %71, float 1.000000e+00
  %997 = select i1 %992, float %72, float %95
  %998 = select i1 %992, float %73, float %96
  %999 = add i32 %62, 300
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = lshr i32 %1001, 16
  %1003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1002)  ; LegacyF16ToF32(value)
  %1004 = fmul fast float %1003, 0x3F50624DE0000000
  %1005 = add i32 %62, 104
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = lshr i32 %1007, 16
  %1009 = and i32 %1008, 255
  %1010 = lshr i32 %1007, 24
  %1011 = add i32 %62, 308
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = and i32 %1013, 65535
  %1015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1014)  ; LegacyF16ToF32(value)
  %1016 = lshr i32 %1013, 16
  %1017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1016)  ; LegacyF16ToF32(value)
  %1018 = add i32 %62, 48
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = lshr i32 %1020, 22
  %1022 = shl nuw nsw i32 %1021, 5
  %1023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1022)  ; LegacyF16ToF32(value)
  %1024 = shl i32 %1020, 4
  %1025 = and i32 %1024, 32752
  %1026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1025)  ; LegacyF16ToF32(value)
  %1027 = lshr i32 %1020, 7
  %1028 = and i32 %1027, 32752
  %1029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1028)  ; LegacyF16ToF32(value)
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 3
  %1032 = fmul fast float %1031, 1.000000e+03
  %1033 = fmul fast float %1032, %374
  %1034 = call float @dx.op.unary.f32(i32 22, float %1033)  ; Frc(value)
  %1035 = fadd fast float %1034, %362
  %1036 = fmul fast float %1032, %376
  %1037 = call float @dx.op.unary.f32(i32 22, float %1036)  ; Frc(value)
  %1038 = fadd fast float %1037, %363
  %1039 = fmul fast float %1004, %1032
  %1040 = call float @dx.op.unary.f32(i32 22, float %1039)  ; Frc(value)
  %1041 = fmul fast float %1040, 0x401921FB60000000
  %1042 = fadd fast float %1041, %1023
  %1043 = call float @dx.op.unary.f32(i32 13, float %1042)  ; Sin(value)
  %1044 = call float @dx.op.unary.f32(i32 12, float %1042)  ; Cos(value)
  %1045 = fsub fast float -0.000000e+00, %1043
  %1046 = fadd fast float %997, -5.000000e-01
  %1047 = fadd fast float %998, -5.000000e-01
  %1048 = fmul fast float %1015, %1046
  %1049 = fmul fast float %1017, %1047
  %1050 = fadd fast float %1048, 5.000000e-01
  %1051 = fadd fast float %1049, 5.000000e-01
  %1052 = fmul fast float %1026, %1050
  %1053 = fmul fast float %1029, %1051
  %1054 = fmul fast float %1044, %1052
  %1055 = call float @dx.op.tertiary.f32(i32 46, float %1045, float %1053, float %1054)  ; FMad(a,b,c)
  %1056 = fmul fast float %1043, %1052
  %1057 = call float @dx.op.tertiary.f32(i32 46, float %1044, float %1053, float %1056)  ; FMad(a,b,c)
  %1058 = fadd fast float %1035, %1055
  %1059 = fadd fast float %1038, %1057
  %1060 = icmp ugt i32 %1009, 1
  %1061 = icmp ugt i32 %1007, 33554431
  %1062 = or i1 %1061, %1060
  br i1 %1062, label %1063, label %1088

; <label>:1063                                    ; preds = %990
  %1064 = add i32 %62, 244
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = lshr i32 %1066, 16
  %1068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1067)  ; LegacyF16ToF32(value)
  %1069 = fmul fast float %1031, %1068
  %1070 = call float @dx.op.unary.f32(i32 22, float %1069)  ; Frc(value)
  %1071 = mul nuw nsw i32 %1009, %1010
  %1072 = uitofp i32 %1071 to float
  %1073 = fmul fast float %1070, %1072
  %1074 = call float @dx.op.unary.f32(i32 27, float %1073)  ; Round_ni(value)
  %1075 = fptoui float %1074 to i32
  %1076 = urem i32 %1075, %1009
  %1077 = udiv i32 %1075, %1010
  %1078 = call float @dx.op.unary.f32(i32 22, float %1058)  ; Frc(value)
  %1079 = call float @dx.op.unary.f32(i32 22, float %1059)  ; Frc(value)
  %1080 = uitofp i32 %1076 to float
  %1081 = uitofp i32 %1077 to float
  %1082 = fadd fast float %1078, %1080
  %1083 = fadd fast float %1079, %1081
  %1084 = uitofp i32 %1009 to float
  %1085 = uitofp i32 %1010 to float
  %1086 = fdiv fast float %1082, %1084
  %1087 = fdiv fast float %1083, %1085
  br label %1088

; <label>:1088                                    ; preds = %1063, %990
  %1089 = phi float [ %1086, %1063 ], [ %1058, %990 ]
  %1090 = phi float [ %1087, %1063 ], [ %1059, %990 ]
  %1091 = and i32 %984, 256
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1139, label %1093

; <label>:1093                                    ; preds = %1088
  %1094 = add i32 %62, 444
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = add i32 %1096, 0
  %1098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1099 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1098, %dx.types.Handle %113, float %1089, float %1090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1100 = extractvalue %dx.types.ResRet.f32 %1099, 0
  %1101 = add i32 %62, 116
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = shl i32 %1103, 4
  %1105 = and i32 %1104, 32752
  %1106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1105)  ; LegacyF16ToF32(value)
  %1107 = lshr i32 %1103, 7
  %1108 = and i32 %1107, 32752
  %1109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1108)  ; LegacyF16ToF32(value)
  %1110 = fsub fast float 1.000000e+00, %577
  %1111 = call float @dx.op.binary.f32(i32 35, float %1110, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1112 = bitcast float %577 to i32
  %1113 = sitofp i32 %1112 to float
  %1114 = fadd fast float %1113, 0xC1CFBF8940000000
  %1115 = fmul fast float %1109, %1114
  %1116 = fadd fast float %1115, 0x41CFBF8940000000
  %1117 = fptosi float %1116 to i32
  %1118 = bitcast i32 %1117 to float
  %1119 = bitcast float %1111 to i32
  %1120 = sitofp i32 %1119 to float
  %1121 = fadd fast float %1120, 0xC1CFBF8940000000
  %1122 = fmul fast float %1121, %1109
  %1123 = fadd fast float %1122, 0x41CFBF8940000000
  %1124 = fptosi float %1123 to i32
  %1125 = bitcast i32 %1124 to float
  %1126 = fmul fast float %1118, %1106
  %1127 = fmul fast float %1125, %1106
  %1128 = fsub fast float %1111, %1126
  %1129 = fadd fast float %1127, %1111
  %1130 = call float @dx.op.unary.f32(i32 7, float %1128)  ; Saturate(value)
  %1131 = call float @dx.op.unary.f32(i32 7, float %1129)  ; Saturate(value)
  %1132 = fsub fast float %1100, %1130
  %1133 = fsub fast float %1131, %1130
  %1134 = bitcast float %1133 to i32
  %1135 = sub nsw i32 2129859010, %1134
  %1136 = bitcast i32 %1135 to float
  %1137 = fmul fast float %1136, %1132
  %1138 = call float @dx.op.unary.f32(i32 7, float %1137)  ; Saturate(value)
  br label %1139

; <label>:1139                                    ; preds = %1093, %1088
  %1140 = phi float [ %1138, %1093 ], [ %577, %1088 ]
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = and i32 %1142, 128
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1161, label %1145

; <label>:1145                                    ; preds = %1139
  %1146 = add i32 %62, 428
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = add i32 %1148, 0
  %1150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1149, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1151 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1150, %dx.types.Handle %113, float %1089, float %1090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1152 = extractvalue %dx.types.ResRet.f32 %1151, 0
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = and i32 %1154, 524288
  %1156 = icmp ne i32 %1155, 0
  %1157 = fcmp fast ogt float %1152, 0x3FE0101020000000
  %1158 = select i1 %1157, float 1.000000e+00, float 0.000000e+00
  %1159 = select i1 %1156, float %1158, float %1152
  %1160 = fmul fast float %1159, %1140
  br label %1161

; <label>:1161                                    ; preds = %1145, %1139
  %1162 = phi float [ %1160, %1145 ], [ %1140, %1139 ]
  %1163 = fcmp fast ult float %1162, 0x3F70101020000000
  br i1 %1163, label %1542, label %1164

; <label>:1164                                    ; preds = %1161
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = and i32 %1166, 16
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1344, label %1169

; <label>:1169                                    ; preds = %1164
  %1170 = add i32 %62, 380
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = add i32 %1172, 0
  %1174 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1173, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1175 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1174, %dx.types.Handle %112, float %1089, float %1090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.ResRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.ResRet.f32 %1175, 2
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = and i32 %1180, 512
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %1191, label %1183

; <label>:1183                                    ; preds = %1169
  %1184 = add i32 %62, 460
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = add i32 %1186, 0
  %1188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1187, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1189 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1188, %dx.types.Handle %113, float %1089, float %1090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  br label %1191

; <label>:1191                                    ; preds = %1183, %1169
  %1192 = phi float [ %1190, %1183 ], [ 1.000000e+00, %1169 ]
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = and i32 %1194, 33554432
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %1291, label %1197

; <label>:1197                                    ; preds = %1191
  %1198 = add i32 %62, 240
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = and i32 %1200, 65535
  %1202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1201)  ; LegacyF16ToF32(value)
  %1203 = lshr i32 %1200, 16
  %1204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1203)  ; LegacyF16ToF32(value)
  %1205 = add i32 %62, 244
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = and i32 %1207, 65535
  %1209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1208)  ; LegacyF16ToF32(value)
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = and i32 %1211, 255
  %1213 = uitofp i32 %1212 to float
  %1214 = fmul fast float %1213, 0x3F70101020000000
  %1215 = lshr i32 %1211, 8
  %1216 = and i32 %1215, 255
  %1217 = uitofp i32 %1216 to float
  %1218 = fmul fast float %1217, 0x3F70101020000000
  %1219 = lshr i32 %1211, 16
  %1220 = and i32 %1219, 255
  %1221 = uitofp i32 %1220 to float
  %1222 = fmul fast float %1221, 0x3F70101020000000
  %1223 = add i32 %62, 236
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = and i32 %1225, 255
  %1227 = uitofp i32 %1226 to float
  %1228 = fmul fast float %1227, 0x3F70101020000000
  %1229 = lshr i32 %1225, 8
  %1230 = and i32 %1229, 255
  %1231 = uitofp i32 %1230 to float
  %1232 = fmul fast float %1231, 0x3F70101020000000
  %1233 = lshr i32 %1225, 16
  %1234 = and i32 %1233, 255
  %1235 = uitofp i32 %1234 to float
  %1236 = fmul fast float %1235, 0x3F70101020000000
  %1237 = bitcast float %1176 to i32
  %1238 = ashr i32 %1237, 1
  %1239 = sub nsw i32 1597463174, %1238
  %1240 = bitcast i32 %1239 to float
  %1241 = fmul fast float %1176, 5.000000e-01
  %1242 = fmul fast float %1240, %1240
  %1243 = fmul fast float %1242, %1241
  %1244 = fsub fast float 1.500000e+00, %1243
  %1245 = fmul fast float %1240, %1176
  %1246 = fmul fast float %1245, %1244
  %1247 = bitcast float %1177 to i32
  %1248 = ashr i32 %1247, 1
  %1249 = sub nsw i32 1597463174, %1248
  %1250 = bitcast i32 %1249 to float
  %1251 = fmul fast float %1177, 5.000000e-01
  %1252 = fmul fast float %1250, %1250
  %1253 = fmul fast float %1252, %1251
  %1254 = fsub fast float 1.500000e+00, %1253
  %1255 = fmul fast float %1250, %1177
  %1256 = fmul fast float %1255, %1254
  %1257 = bitcast float %1178 to i32
  %1258 = ashr i32 %1257, 1
  %1259 = sub nsw i32 1597463174, %1258
  %1260 = bitcast i32 %1259 to float
  %1261 = fmul fast float %1178, 5.000000e-01
  %1262 = fmul fast float %1260, %1260
  %1263 = fmul fast float %1262, %1261
  %1264 = fsub fast float 1.500000e+00, %1263
  %1265 = fmul fast float %1260, %1178
  %1266 = fmul fast float %1265, %1264
  %1267 = fsub fast float %1246, %1228
  %1268 = fsub fast float %1256, %1232
  %1269 = fsub fast float %1266, %1236
  %1270 = fmul fast float %1267, %1202
  %1271 = fmul fast float %1268, %1204
  %1272 = fmul fast float %1269, %1209
  %1273 = fadd fast float %1270, %1214
  %1274 = fadd fast float %1271, %1218
  %1275 = fadd fast float %1272, %1222
  %1276 = call float @dx.op.unary.f32(i32 7, float %1273)  ; Saturate(value)
  %1277 = call float @dx.op.unary.f32(i32 7, float %1274)  ; Saturate(value)
  %1278 = call float @dx.op.unary.f32(i32 7, float %1275)  ; Saturate(value)
  %1279 = fmul fast float %1276, %1276
  %1280 = fmul fast float %1277, %1277
  %1281 = fmul fast float %1278, %1278
  %1282 = fsub fast float %1279, %1176
  %1283 = fsub fast float %1280, %1177
  %1284 = fsub fast float %1281, %1178
  %1285 = fmul fast float %1282, %1192
  %1286 = fmul fast float %1283, %1192
  %1287 = fmul fast float %1284, %1192
  %1288 = fadd fast float %1285, %1176
  %1289 = fadd fast float %1286, %1177
  %1290 = fadd fast float %1287, %1178
  br label %1344

; <label>:1291                                    ; preds = %1191
  %1292 = and i32 %1194, 134217728
  %1293 = icmp eq i32 %1292, 0
  br i1 %1293, label %1328, label %1294

; <label>:1294                                    ; preds = %1291
  %1295 = call float @dx.op.unary.f32(i32 24, float %350)  ; Sqrt(value)
  %1296 = call float @dx.op.unary.f32(i32 24, float %351)  ; Sqrt(value)
  %1297 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %1298 = fadd fast float %1295, -5.000000e-01
  %1299 = fadd fast float %1296, -5.000000e-01
  %1300 = fadd fast float %1297, -5.000000e-01
  %1301 = fmul fast float %1298, %1192
  %1302 = fmul fast float %1299, %1192
  %1303 = fmul fast float %1300, %1192
  %1304 = fadd fast float %1301, 5.000000e-01
  %1305 = fadd fast float %1302, 5.000000e-01
  %1306 = fadd fast float %1303, 5.000000e-01
  %1307 = call float @dx.op.unary.f32(i32 24, float %1176)  ; Sqrt(value)
  %1308 = call float @dx.op.unary.f32(i32 24, float %1177)  ; Sqrt(value)
  %1309 = call float @dx.op.unary.f32(i32 24, float %1178)  ; Sqrt(value)
  %1310 = fmul fast float %1304, 2.000000e+00
  %1311 = fsub fast float 1.000000e+00, %1310
  %1312 = fmul fast float %1311, %1307
  %1313 = fadd fast float %1312, %1310
  %1314 = fmul fast float %1313, %1307
  %1315 = fmul fast float %1305, 2.000000e+00
  %1316 = fsub fast float 1.000000e+00, %1315
  %1317 = fmul fast float %1316, %1308
  %1318 = fadd fast float %1317, %1315
  %1319 = fmul fast float %1318, %1308
  %1320 = fmul fast float %1306, 2.000000e+00
  %1321 = fsub fast float 1.000000e+00, %1320
  %1322 = fmul fast float %1321, %1309
  %1323 = fadd fast float %1322, %1320
  %1324 = fmul fast float %1323, %1309
  %1325 = fmul fast float %1314, %1314
  %1326 = fmul fast float %1319, %1319
  %1327 = fmul fast float %1324, %1324
  br label %1344

; <label>:1328                                    ; preds = %1291
  %1329 = fmul fast float %350, %350
  %1330 = fmul fast float %351, %351
  %1331 = fmul fast float %352, %352
  %1332 = fadd fast float %1329, -1.000000e+00
  %1333 = fadd fast float %1330, -1.000000e+00
  %1334 = fadd fast float %1331, -1.000000e+00
  %1335 = fmul fast float %1192, %1332
  %1336 = fmul fast float %1192, %1333
  %1337 = fmul fast float %1192, %1334
  %1338 = fadd fast float %1335, 1.000000e+00
  %1339 = fadd fast float %1336, 1.000000e+00
  %1340 = fadd fast float %1337, 1.000000e+00
  %1341 = fmul fast float %1338, %1176
  %1342 = fmul fast float %1339, %1177
  %1343 = fmul fast float %1340, %1178
  br label %1344

; <label>:1344                                    ; preds = %1328, %1294, %1197, %1164
  %1345 = phi float [ %1288, %1197 ], [ %1325, %1294 ], [ %1341, %1328 ], [ 1.000000e+00, %1164 ]
  %1346 = phi float [ %1289, %1197 ], [ %1326, %1294 ], [ %1342, %1328 ], [ 1.000000e+00, %1164 ]
  %1347 = phi float [ %1290, %1197 ], [ %1327, %1294 ], [ %1343, %1328 ], [ 1.000000e+00, %1164 ]
  %1348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1349 = extractvalue %dx.types.CBufRet.i32 %1348, 1
  %1350 = and i32 %1349, 1
  %1351 = icmp ne i32 %1350, 0
  %1352 = add i32 %62, 356
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = and i32 %1354, 32
  %1356 = icmp ne i32 %1355, 0
  %1357 = and i1 %1351, %1356
  %1358 = select i1 %1357, float 1.000000e+00, float %1345
  %1359 = select i1 %1357, float 0x3FD3333340000000, float %1346
  %1360 = select i1 %1357, float 0x3FD3333340000000, float %1347
  %1361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1362 = extractvalue %dx.types.ResRet.i32 %1361, 0
  %1363 = and i32 %1362, 32
  %1364 = icmp eq i32 %1363, 0
  br i1 %1364, label %1437, label %1365

; <label>:1365                                    ; preds = %1344
  %1366 = add i32 %62, 108
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = add i32 %62, 396
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1369, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = add i32 %1371, 0
  %1373 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1372, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1374 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1373, %dx.types.Handle %112, float %1089, float %1090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1375 = extractvalue %dx.types.ResRet.f32 %1374, 0
  %1376 = extractvalue %dx.types.ResRet.f32 %1374, 1
  %1377 = extractvalue %dx.types.ResRet.f32 %1374, 2
  %1378 = extractvalue %dx.types.ResRet.f32 %1374, 3
  %1379 = and i32 %1368, 255
  %1380 = uitofp i32 %1379 to float
  %1381 = lshr i32 %1368, 8
  %1382 = and i32 %1381, 255
  %1383 = uitofp i32 %1382 to float
  %1384 = lshr i32 %1368, 16
  %1385 = and i32 %1384, 255
  %1386 = uitofp i32 %1385 to float
  %1387 = fmul fast float %1386, 0x3F70101000000000
  %1388 = fmul fast float %1375, %1380
  %1389 = fadd fast float %1388, %1383
  %1390 = fmul fast float %1389, 0x3F70101000000000
  %1391 = fadd fast float %1376, -5.000000e-01
  %1392 = fadd fast float %1378, -5.000000e-01
  %1393 = fmul fast float %1391, %1387
  %1394 = fmul fast float %1392, %1387
  %1395 = fadd fast float %1393, 5.000000e-01
  %1396 = fadd fast float %1394, 5.000000e-01
  %1397 = fmul fast float %1395, 2.000000e+00
  %1398 = fadd fast float %1397, -1.000000e+00
  %1399 = fmul fast float %1396, 2.000000e+00
  %1400 = fadd fast float %1399, -1.000000e+00
  %1401 = fadd fast float %1398, %1400
  %1402 = fmul fast float %1401, 5.000000e-01
  %1403 = fsub fast float %1398, %1400
  %1404 = fmul fast float %1403, 5.000000e-01
  %1405 = call float @dx.op.unary.f32(i32 6, float %1402)  ; FAbs(value)
  %1406 = fsub fast float 1.000000e+00, %1405
  %1407 = call float @dx.op.unary.f32(i32 6, float %1404)  ; FAbs(value)
  %1408 = fsub fast float %1406, %1407
  %1409 = call float @dx.op.dot3.f32(i32 55, float %1402, float %1404, float %1408, float %1402, float %1404, float %1408)  ; Dot3(ax,ay,az,bx,by,bz)
  %1410 = call float @dx.op.unary.f32(i32 25, float %1409)  ; Rsqrt(value)
  %1411 = fmul fast float %1402, %1410
  %1412 = fmul fast float %1404, %1410
  %1413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.i32 %1413, 0
  %1415 = and i32 %1414, 67108864
  %1416 = icmp eq i32 %1415, 0
  br i1 %1416, label %1433, label %1417

; <label>:1417                                    ; preds = %1365
  %1418 = add i32 %62, 296
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1418, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = and i32 %1420, 65535
  %1422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1421)  ; LegacyF16ToF32(value)
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = and i32 %1424, 65535
  %1426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1425)  ; LegacyF16ToF32(value)
  %1427 = lshr i32 %1420, 16
  %1428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1427)  ; LegacyF16ToF32(value)
  %1429 = fsub fast float %1390, %1428
  %1430 = fmul fast float %1429, %1422
  %1431 = fadd fast float %1430, %1426
  %1432 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  br label %1433

; <label>:1433                                    ; preds = %1417, %1365
  %1434 = phi float [ %1432, %1417 ], [ %1390, %1365 ]
  %1435 = call float @dx.op.dot2.f32(i32 54, float %1411, float %1412, float %993, float %994)  ; Dot2(ax,ay,bx,by)
  %1436 = call float @dx.op.dot2.f32(i32 54, float %1411, float %1412, float %995, float %996)  ; Dot2(ax,ay,bx,by)
  br label %1437

; <label>:1437                                    ; preds = %1433, %1344
  %1438 = phi float [ %1434, %1433 ], [ 0x3FD6666660000000, %1344 ]
  %1439 = phi float [ %1435, %1433 ], [ 0.000000e+00, %1344 ]
  %1440 = phi float [ %1436, %1433 ], [ 0.000000e+00, %1344 ]
  %1441 = phi float [ %1377, %1433 ], [ 1.000000e+00, %1344 ]
  %1442 = add i32 %62, 112
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1442, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = and i32 %1446, 3
  %1448 = icmp eq i32 %1447, 0
  br i1 %1448, label %1449, label %1466

; <label>:1449                                    ; preds = %1437
  %1450 = lshr i32 %1444, 8
  %1451 = and i32 %1450, 255
  %1452 = uitofp i32 %1451 to float
  %1453 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1454 = fmul fast float %1452, %1453
  %1455 = and i32 %1444, 255
  %1456 = uitofp i32 %1455 to float
  %1457 = fadd fast float %1454, %1456
  %1458 = fmul fast float %1457, 0x3F70101020000000
  %1459 = call float @dx.op.unary.f32(i32 7, float %1458)  ; Saturate(value)
  %1460 = and i32 %1446, 16
  %1461 = icmp ne i32 %1460, 0
  %1462 = select i1 %1461, float %1162, float 0.000000e+00
  %1463 = fsub fast float %1459, %980
  %1464 = fmul fast float %1462, %1463
  %1465 = fadd fast float %1464, %980
  br label %1466

; <label>:1466                                    ; preds = %1449, %1437
  %1467 = phi float [ %980, %1437 ], [ %1465, %1449 ]
  %1468 = and i32 %1446, 12
  %1469 = icmp eq i32 %1468, 12
  br i1 %1469, label %1542, label %1470

; <label>:1470                                    ; preds = %1466
  %1471 = and i32 %1446, 2097184
  %1472 = icmp eq i32 %1471, 2097184
  %1473 = select i1 %1472, float %1162, float 0.000000e+00
  %1474 = and i32 %1446, 4194336
  %1475 = icmp eq i32 %1474, 4194336
  %1476 = select i1 %1475, float %1162, float 0.000000e+00
  %1477 = and i32 %1446, 8388640
  %1478 = icmp eq i32 %1477, 8388640
  %1479 = select i1 %1478, float %1162, float 0.000000e+00
  %1480 = icmp eq i32 %1468, 0
  br i1 %1480, label %1481, label %1494

; <label>:1481                                    ; preds = %1470
  %1482 = fsub fast float %1439, %976
  %1483 = fsub fast float %1440, %977
  %1484 = fmul fast float %1473, %1482
  %1485 = fmul fast float %1473, %1483
  %1486 = fadd fast float %1484, %976
  %1487 = fadd fast float %1485, %977
  %1488 = fsub fast float %1441, %979
  %1489 = fmul fast float %1476, %1488
  %1490 = fadd fast float %1489, %979
  %1491 = fsub fast float %1438, %978
  %1492 = fmul fast float %1479, %1491
  %1493 = fadd fast float %1492, %978
  br label %1542

; <label>:1494                                    ; preds = %1470
  %1495 = icmp eq i32 %1468, 4
  br i1 %1495, label %1496, label %1528

; <label>:1496                                    ; preds = %1494
  %1497 = fmul fast float %1473, %1439
  %1498 = fmul fast float %1473, %1440
  %1499 = fadd fast float %1497, %976
  %1500 = fadd fast float %1498, %977
  %1501 = call float @dx.op.binary.f32(i32 36, float %979, float %1441)  ; FMin(a,b)
  %1502 = fsub fast float %1501, %979
  %1503 = fmul fast float %1502, %1476
  %1504 = fadd fast float %1503, %979
  %1505 = fadd fast float %1438, %978
  %1506 = fmul fast float %1505, 0x3FF337FAE0000000
  %1507 = fmul fast float %978, %978
  %1508 = fmul fast float %1438, %1438
  %1509 = fadd fast float %1508, %1507
  %1510 = fmul fast float %1509, 0x3FE5152B00000000
  %1511 = fmul fast float %978, 0xBFCC1F85E0000000
  %1512 = fmul fast float %1511, %1438
  %1513 = fadd fast float %1512, 0xBFE1363700000000
  %1514 = fadd fast float %1513, %1506
  %1515 = fsub fast float %1514, %1510
  %1516 = fmul fast float %1505, 0x3FBA6F0D00000000
  %1517 = fmul fast float %1509, 0x3FD0432880000000
  %1518 = fmul fast float %978, 0xBFEF110800000000
  %1519 = fmul fast float %1518, %1438
  %1520 = fadd fast float %1519, 1.000000e+00
  %1521 = fsub fast float %1520, %1516
  %1522 = fadd fast float %1521, %1517
  %1523 = fdiv fast float %1515, %1522
  %1524 = call float @dx.op.unary.f32(i32 7, float %1523)  ; Saturate(value)
  %1525 = fsub fast float %1524, %978
  %1526 = fmul fast float %1525, %1479
  %1527 = fadd fast float %1526, %978
  br label %1542

; <label>:1528                                    ; preds = %1494
  %1529 = icmp eq i32 %1468, 8
  br i1 %1529, label %1530, label %1542

; <label>:1530                                    ; preds = %1528
  %1531 = fmul fast float %1473, %1439
  %1532 = fmul fast float %1473, %1440
  %1533 = fadd fast float %1531, %976
  %1534 = fadd fast float %1532, %977
  %1535 = call float @dx.op.binary.f32(i32 36, float %979, float %1441)  ; FMin(a,b)
  %1536 = fsub fast float %1535, %979
  %1537 = fmul fast float %1536, %1476
  %1538 = fadd fast float %1537, %979
  %1539 = fsub fast float %1438, %978
  %1540 = fmul fast float %1479, %1539
  %1541 = fadd fast float %1540, %978
  br label %1542

; <label>:1542                                    ; preds = %1530, %1528, %1496, %1481, %1466, %1161, %981, %975
  %1543 = phi float [ %976, %1466 ], [ %976, %1161 ], [ %976, %975 ], [ %1533, %1530 ], [ %976, %1528 ], [ %1499, %1496 ], [ %1486, %1481 ], [ %976, %981 ]
  %1544 = phi float [ %977, %1466 ], [ %977, %1161 ], [ %977, %975 ], [ %1534, %1530 ], [ %977, %1528 ], [ %1500, %1496 ], [ %1487, %1481 ], [ %977, %981 ]
  %1545 = phi float [ %978, %1466 ], [ %978, %1161 ], [ %978, %975 ], [ %1541, %1530 ], [ %978, %1528 ], [ %1527, %1496 ], [ %1493, %1481 ], [ %978, %981 ]
  %1546 = phi float [ %979, %1466 ], [ %979, %1161 ], [ %979, %975 ], [ %1538, %1530 ], [ %979, %1528 ], [ %1504, %1496 ], [ %1490, %1481 ], [ %979, %981 ]
  %1547 = phi float [ %1467, %1466 ], [ %980, %1161 ], [ %980, %975 ], [ %1467, %1530 ], [ %1467, %1528 ], [ %1467, %1496 ], [ %1467, %1481 ], [ %980, %981 ]
  br i1 %527, label %2109, label %1548

; <label>:1548                                    ; preds = %1542
  %1549 = add i32 %62, 56
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = add i32 %62, 60
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = or i32 %1554, %1551
  %1556 = icmp eq i32 %1555, 0
  br i1 %1556, label %2109, label %1557

; <label>:1557                                    ; preds = %1548
  %1558 = and i32 %1551, 262144
  %1559 = icmp ne i32 %1558, 0
  %1560 = select i1 %1559, float %68, float 1.000000e+00
  %1561 = select i1 %1559, float %69, float 0.000000e+00
  %1562 = select i1 %1559, float %70, float 0.000000e+00
  %1563 = select i1 %1559, float %71, float 1.000000e+00
  %1564 = select i1 %1559, float %72, float %95
  %1565 = select i1 %1559, float %73, float %96
  %1566 = add i32 %62, 316
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1566, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = lshr i32 %1568, 16
  %1570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1569)  ; LegacyF16ToF32(value)
  %1571 = fmul fast float %1570, 0x3F50624DE0000000
  %1572 = add i32 %62, 120
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1572, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = lshr i32 %1574, 16
  %1576 = and i32 %1575, 255
  %1577 = lshr i32 %1574, 24
  %1578 = add i32 %62, 324
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = and i32 %1580, 65535
  %1582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1581)  ; LegacyF16ToF32(value)
  %1583 = lshr i32 %1580, 16
  %1584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1583)  ; LegacyF16ToF32(value)
  %1585 = add i32 %62, 64
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = lshr i32 %1587, 22
  %1589 = shl nuw nsw i32 %1588, 5
  %1590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1589)  ; LegacyF16ToF32(value)
  %1591 = shl i32 %1587, 4
  %1592 = and i32 %1591, 32752
  %1593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1592)  ; LegacyF16ToF32(value)
  %1594 = lshr i32 %1587, 7
  %1595 = and i32 %1594, 32752
  %1596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1595)  ; LegacyF16ToF32(value)
  %1597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1598 = extractvalue %dx.types.CBufRet.f32 %1597, 3
  %1599 = fmul fast float %1598, 1.000000e+03
  %1600 = fmul fast float %1599, %446
  %1601 = call float @dx.op.unary.f32(i32 22, float %1600)  ; Frc(value)
  %1602 = fadd fast float %1601, %434
  %1603 = fmul fast float %1599, %448
  %1604 = call float @dx.op.unary.f32(i32 22, float %1603)  ; Frc(value)
  %1605 = fadd fast float %1604, %435
  %1606 = fmul fast float %1571, %1599
  %1607 = call float @dx.op.unary.f32(i32 22, float %1606)  ; Frc(value)
  %1608 = fmul fast float %1607, 0x401921FB60000000
  %1609 = fadd fast float %1608, %1590
  %1610 = call float @dx.op.unary.f32(i32 13, float %1609)  ; Sin(value)
  %1611 = call float @dx.op.unary.f32(i32 12, float %1609)  ; Cos(value)
  %1612 = fsub fast float -0.000000e+00, %1610
  %1613 = fadd fast float %1564, -5.000000e-01
  %1614 = fadd fast float %1565, -5.000000e-01
  %1615 = fmul fast float %1582, %1613
  %1616 = fmul fast float %1584, %1614
  %1617 = fadd fast float %1615, 5.000000e-01
  %1618 = fadd fast float %1616, 5.000000e-01
  %1619 = fmul fast float %1593, %1617
  %1620 = fmul fast float %1596, %1618
  %1621 = fmul fast float %1611, %1619
  %1622 = call float @dx.op.tertiary.f32(i32 46, float %1612, float %1620, float %1621)  ; FMad(a,b,c)
  %1623 = fmul fast float %1610, %1619
  %1624 = call float @dx.op.tertiary.f32(i32 46, float %1611, float %1620, float %1623)  ; FMad(a,b,c)
  %1625 = fadd fast float %1602, %1622
  %1626 = fadd fast float %1605, %1624
  %1627 = icmp ugt i32 %1576, 1
  %1628 = icmp ugt i32 %1574, 33554431
  %1629 = or i1 %1628, %1627
  br i1 %1629, label %1630, label %1655

; <label>:1630                                    ; preds = %1557
  %1631 = add i32 %62, 260
  %1632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1631, i32 undef)  ; BufferLoad(srv,index,wot)
  %1633 = extractvalue %dx.types.ResRet.i32 %1632, 0
  %1634 = lshr i32 %1633, 16
  %1635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1634)  ; LegacyF16ToF32(value)
  %1636 = fmul fast float %1598, %1635
  %1637 = call float @dx.op.unary.f32(i32 22, float %1636)  ; Frc(value)
  %1638 = mul nuw nsw i32 %1576, %1577
  %1639 = uitofp i32 %1638 to float
  %1640 = fmul fast float %1637, %1639
  %1641 = call float @dx.op.unary.f32(i32 27, float %1640)  ; Round_ni(value)
  %1642 = fptoui float %1641 to i32
  %1643 = urem i32 %1642, %1576
  %1644 = udiv i32 %1642, %1577
  %1645 = call float @dx.op.unary.f32(i32 22, float %1625)  ; Frc(value)
  %1646 = call float @dx.op.unary.f32(i32 22, float %1626)  ; Frc(value)
  %1647 = uitofp i32 %1643 to float
  %1648 = uitofp i32 %1644 to float
  %1649 = fadd fast float %1645, %1647
  %1650 = fadd fast float %1646, %1648
  %1651 = uitofp i32 %1576 to float
  %1652 = uitofp i32 %1577 to float
  %1653 = fdiv fast float %1649, %1651
  %1654 = fdiv fast float %1650, %1652
  br label %1655

; <label>:1655                                    ; preds = %1630, %1557
  %1656 = phi float [ %1653, %1630 ], [ %1625, %1557 ]
  %1657 = phi float [ %1654, %1630 ], [ %1626, %1557 ]
  %1658 = and i32 %1551, 256
  %1659 = icmp eq i32 %1658, 0
  br i1 %1659, label %1706, label %1660

; <label>:1660                                    ; preds = %1655
  %1661 = add i32 %62, 448
  %1662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1663 = extractvalue %dx.types.ResRet.i32 %1662, 0
  %1664 = add i32 %1663, 0
  %1665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1664, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1666 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1665, %dx.types.Handle %113, float %1656, float %1657, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1667 = extractvalue %dx.types.ResRet.f32 %1666, 0
  %1668 = add i32 %62, 132
  %1669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1668, i32 undef)  ; BufferLoad(srv,index,wot)
  %1670 = extractvalue %dx.types.ResRet.i32 %1669, 0
  %1671 = shl i32 %1670, 4
  %1672 = and i32 %1671, 32752
  %1673 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1672)  ; LegacyF16ToF32(value)
  %1674 = lshr i32 %1670, 7
  %1675 = and i32 %1674, 32752
  %1676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1675)  ; LegacyF16ToF32(value)
  %1677 = fsub fast float 1.000000e+00, %576
  %1678 = call float @dx.op.binary.f32(i32 35, float %1677, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1679 = bitcast float %576 to i32
  %1680 = sitofp i32 %1679 to float
  %1681 = fadd fast float %1680, 0xC1CFBF8940000000
  %1682 = fmul fast float %1676, %1681
  %1683 = fadd fast float %1682, 0x41CFBF8940000000
  %1684 = fptosi float %1683 to i32
  %1685 = bitcast i32 %1684 to float
  %1686 = bitcast float %1678 to i32
  %1687 = sitofp i32 %1686 to float
  %1688 = fadd fast float %1687, 0xC1CFBF8940000000
  %1689 = fmul fast float %1688, %1676
  %1690 = fadd fast float %1689, 0x41CFBF8940000000
  %1691 = fptosi float %1690 to i32
  %1692 = bitcast i32 %1691 to float
  %1693 = fmul fast float %1685, %1673
  %1694 = fmul fast float %1692, %1673
  %1695 = fsub fast float %1678, %1693
  %1696 = fadd fast float %1694, %1678
  %1697 = call float @dx.op.unary.f32(i32 7, float %1695)  ; Saturate(value)
  %1698 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1699 = fsub fast float %1667, %1697
  %1700 = fsub fast float %1698, %1697
  %1701 = bitcast float %1700 to i32
  %1702 = sub nsw i32 2129859010, %1701
  %1703 = bitcast i32 %1702 to float
  %1704 = fmul fast float %1703, %1699
  %1705 = call float @dx.op.unary.f32(i32 7, float %1704)  ; Saturate(value)
  br label %1706

; <label>:1706                                    ; preds = %1660, %1655
  %1707 = phi float [ %1705, %1660 ], [ %576, %1655 ]
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = and i32 %1709, 128
  %1711 = icmp eq i32 %1710, 0
  br i1 %1711, label %1728, label %1712

; <label>:1712                                    ; preds = %1706
  %1713 = add i32 %62, 432
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = add i32 %1715, 0
  %1717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1716, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1718 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1717, %dx.types.Handle %113, float %1656, float %1657, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1719 = extractvalue %dx.types.ResRet.f32 %1718, 0
  %1720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1721 = extractvalue %dx.types.ResRet.i32 %1720, 0
  %1722 = and i32 %1721, 524288
  %1723 = icmp ne i32 %1722, 0
  %1724 = fcmp fast ogt float %1719, 0x3FE0101020000000
  %1725 = select i1 %1724, float 1.000000e+00, float 0.000000e+00
  %1726 = select i1 %1723, float %1725, float %1719
  %1727 = fmul fast float %1726, %1707
  br label %1728

; <label>:1728                                    ; preds = %1712, %1706
  %1729 = phi float [ %1727, %1712 ], [ %1707, %1706 ]
  %1730 = fcmp fast ult float %1729, 0x3F70101020000000
  br i1 %1730, label %2109, label %1731

; <label>:1731                                    ; preds = %1728
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = and i32 %1733, 16
  %1735 = icmp eq i32 %1734, 0
  br i1 %1735, label %1911, label %1736

; <label>:1736                                    ; preds = %1731
  %1737 = add i32 %62, 384
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = add i32 %1739, 0
  %1741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1740, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1742 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1741, %dx.types.Handle %112, float %1656, float %1657, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1743 = extractvalue %dx.types.ResRet.f32 %1742, 0
  %1744 = extractvalue %dx.types.ResRet.f32 %1742, 1
  %1745 = extractvalue %dx.types.ResRet.f32 %1742, 2
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = and i32 %1747, 512
  %1749 = icmp eq i32 %1748, 0
  br i1 %1749, label %1758, label %1750

; <label>:1750                                    ; preds = %1736
  %1751 = add i32 %62, 464
  %1752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = add i32 %1753, 0
  %1755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1754, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1756 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1755, %dx.types.Handle %113, float %1656, float %1657, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1757 = extractvalue %dx.types.ResRet.f32 %1756, 0
  br label %1758

; <label>:1758                                    ; preds = %1750, %1736
  %1759 = phi float [ %1757, %1750 ], [ 1.000000e+00, %1736 ]
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = and i32 %1761, 33554432
  %1763 = icmp eq i32 %1762, 0
  br i1 %1763, label %1858, label %1764

; <label>:1764                                    ; preds = %1758
  %1765 = add i32 %62, 256
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = and i32 %1767, 65535
  %1769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1768)  ; LegacyF16ToF32(value)
  %1770 = lshr i32 %1767, 16
  %1771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1770)  ; LegacyF16ToF32(value)
  %1772 = add i32 %62, 260
  %1773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1772, i32 undef)  ; BufferLoad(srv,index,wot)
  %1774 = extractvalue %dx.types.ResRet.i32 %1773, 0
  %1775 = and i32 %1774, 65535
  %1776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1775)  ; LegacyF16ToF32(value)
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = and i32 %1778, 255
  %1780 = uitofp i32 %1779 to float
  %1781 = fmul fast float %1780, 0x3F70101020000000
  %1782 = lshr i32 %1778, 8
  %1783 = and i32 %1782, 255
  %1784 = uitofp i32 %1783 to float
  %1785 = fmul fast float %1784, 0x3F70101020000000
  %1786 = lshr i32 %1778, 16
  %1787 = and i32 %1786, 255
  %1788 = uitofp i32 %1787 to float
  %1789 = fmul fast float %1788, 0x3F70101020000000
  %1790 = add i32 %62, 252
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = and i32 %1792, 255
  %1794 = uitofp i32 %1793 to float
  %1795 = fmul fast float %1794, 0x3F70101020000000
  %1796 = lshr i32 %1792, 8
  %1797 = and i32 %1796, 255
  %1798 = uitofp i32 %1797 to float
  %1799 = fmul fast float %1798, 0x3F70101020000000
  %1800 = lshr i32 %1792, 16
  %1801 = and i32 %1800, 255
  %1802 = uitofp i32 %1801 to float
  %1803 = fmul fast float %1802, 0x3F70101020000000
  %1804 = bitcast float %1743 to i32
  %1805 = ashr i32 %1804, 1
  %1806 = sub nsw i32 1597463174, %1805
  %1807 = bitcast i32 %1806 to float
  %1808 = fmul fast float %1743, 5.000000e-01
  %1809 = fmul fast float %1807, %1807
  %1810 = fmul fast float %1809, %1808
  %1811 = fsub fast float 1.500000e+00, %1810
  %1812 = fmul fast float %1807, %1743
  %1813 = fmul fast float %1812, %1811
  %1814 = bitcast float %1744 to i32
  %1815 = ashr i32 %1814, 1
  %1816 = sub nsw i32 1597463174, %1815
  %1817 = bitcast i32 %1816 to float
  %1818 = fmul fast float %1744, 5.000000e-01
  %1819 = fmul fast float %1817, %1817
  %1820 = fmul fast float %1819, %1818
  %1821 = fsub fast float 1.500000e+00, %1820
  %1822 = fmul fast float %1817, %1744
  %1823 = fmul fast float %1822, %1821
  %1824 = bitcast float %1745 to i32
  %1825 = ashr i32 %1824, 1
  %1826 = sub nsw i32 1597463174, %1825
  %1827 = bitcast i32 %1826 to float
  %1828 = fmul fast float %1745, 5.000000e-01
  %1829 = fmul fast float %1827, %1827
  %1830 = fmul fast float %1829, %1828
  %1831 = fsub fast float 1.500000e+00, %1830
  %1832 = fmul fast float %1827, %1745
  %1833 = fmul fast float %1832, %1831
  %1834 = fsub fast float %1813, %1795
  %1835 = fsub fast float %1823, %1799
  %1836 = fsub fast float %1833, %1803
  %1837 = fmul fast float %1834, %1769
  %1838 = fmul fast float %1835, %1771
  %1839 = fmul fast float %1836, %1776
  %1840 = fadd fast float %1837, %1781
  %1841 = fadd fast float %1838, %1785
  %1842 = fadd fast float %1839, %1789
  %1843 = call float @dx.op.unary.f32(i32 7, float %1840)  ; Saturate(value)
  %1844 = call float @dx.op.unary.f32(i32 7, float %1841)  ; Saturate(value)
  %1845 = call float @dx.op.unary.f32(i32 7, float %1842)  ; Saturate(value)
  %1846 = fmul fast float %1843, %1843
  %1847 = fmul fast float %1844, %1844
  %1848 = fmul fast float %1845, %1845
  %1849 = fsub fast float %1846, %1743
  %1850 = fsub fast float %1847, %1744
  %1851 = fsub fast float %1848, %1745
  %1852 = fmul fast float %1849, %1759
  %1853 = fmul fast float %1850, %1759
  %1854 = fmul fast float %1851, %1759
  %1855 = fadd fast float %1852, %1743
  %1856 = fadd fast float %1853, %1744
  %1857 = fadd fast float %1854, %1745
  br label %1911

; <label>:1858                                    ; preds = %1758
  %1859 = and i32 %1761, 134217728
  %1860 = icmp eq i32 %1859, 0
  br i1 %1860, label %1895, label %1861

; <label>:1861                                    ; preds = %1858
  %1862 = call float @dx.op.unary.f32(i32 24, float %422)  ; Sqrt(value)
  %1863 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %1864 = call float @dx.op.unary.f32(i32 24, float %424)  ; Sqrt(value)
  %1865 = fadd fast float %1862, -5.000000e-01
  %1866 = fadd fast float %1863, -5.000000e-01
  %1867 = fadd fast float %1864, -5.000000e-01
  %1868 = fmul fast float %1865, %1759
  %1869 = fmul fast float %1866, %1759
  %1870 = fmul fast float %1867, %1759
  %1871 = fadd fast float %1868, 5.000000e-01
  %1872 = fadd fast float %1869, 5.000000e-01
  %1873 = fadd fast float %1870, 5.000000e-01
  %1874 = call float @dx.op.unary.f32(i32 24, float %1743)  ; Sqrt(value)
  %1875 = call float @dx.op.unary.f32(i32 24, float %1744)  ; Sqrt(value)
  %1876 = call float @dx.op.unary.f32(i32 24, float %1745)  ; Sqrt(value)
  %1877 = fmul fast float %1871, 2.000000e+00
  %1878 = fsub fast float 1.000000e+00, %1877
  %1879 = fmul fast float %1878, %1874
  %1880 = fadd fast float %1879, %1877
  %1881 = fmul fast float %1880, %1874
  %1882 = fmul fast float %1872, 2.000000e+00
  %1883 = fsub fast float 1.000000e+00, %1882
  %1884 = fmul fast float %1883, %1875
  %1885 = fadd fast float %1884, %1882
  %1886 = fmul fast float %1885, %1875
  %1887 = fmul fast float %1873, 2.000000e+00
  %1888 = fsub fast float 1.000000e+00, %1887
  %1889 = fmul fast float %1888, %1876
  %1890 = fadd fast float %1889, %1887
  %1891 = fmul fast float %1890, %1876
  %1892 = fmul fast float %1881, %1881
  %1893 = fmul fast float %1886, %1886
  %1894 = fmul fast float %1891, %1891
  br label %1911

; <label>:1895                                    ; preds = %1858
  %1896 = fmul fast float %422, %422
  %1897 = fmul fast float %423, %423
  %1898 = fmul fast float %424, %424
  %1899 = fadd fast float %1896, -1.000000e+00
  %1900 = fadd fast float %1897, -1.000000e+00
  %1901 = fadd fast float %1898, -1.000000e+00
  %1902 = fmul fast float %1759, %1899
  %1903 = fmul fast float %1759, %1900
  %1904 = fmul fast float %1759, %1901
  %1905 = fadd fast float %1902, 1.000000e+00
  %1906 = fadd fast float %1903, 1.000000e+00
  %1907 = fadd fast float %1904, 1.000000e+00
  %1908 = fmul fast float %1905, %1743
  %1909 = fmul fast float %1906, %1744
  %1910 = fmul fast float %1907, %1745
  br label %1911

; <label>:1911                                    ; preds = %1895, %1861, %1764, %1731
  %1912 = phi float [ %1855, %1764 ], [ %1892, %1861 ], [ %1908, %1895 ], [ 1.000000e+00, %1731 ]
  %1913 = phi float [ %1856, %1764 ], [ %1893, %1861 ], [ %1909, %1895 ], [ 1.000000e+00, %1731 ]
  %1914 = phi float [ %1857, %1764 ], [ %1894, %1861 ], [ %1910, %1895 ], [ 1.000000e+00, %1731 ]
  %1915 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1916 = extractvalue %dx.types.CBufRet.i32 %1915, 1
  %1917 = and i32 %1916, 1
  %1918 = icmp ne i32 %1917, 0
  %1919 = add i32 %62, 356
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = and i32 %1921, 32
  %1923 = icmp ne i32 %1922, 0
  %1924 = and i1 %1918, %1923
  %1925 = select i1 %1924, float 1.000000e+00, float %1912
  %1926 = select i1 %1924, float 0x3FD3333340000000, float %1913
  %1927 = select i1 %1924, float 0x3FD3333340000000, float %1914
  %1928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1929 = extractvalue %dx.types.ResRet.i32 %1928, 0
  %1930 = and i32 %1929, 32
  %1931 = icmp eq i32 %1930, 0
  br i1 %1931, label %2004, label %1932

; <label>:1932                                    ; preds = %1911
  %1933 = add i32 %62, 124
  %1934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.i32 %1934, 0
  %1936 = add i32 %62, 400
  %1937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.i32 %1937, 0
  %1939 = add i32 %1938, 0
  %1940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1939, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1941 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1940, %dx.types.Handle %112, float %1656, float %1657, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1942 = extractvalue %dx.types.ResRet.f32 %1941, 0
  %1943 = extractvalue %dx.types.ResRet.f32 %1941, 1
  %1944 = extractvalue %dx.types.ResRet.f32 %1941, 2
  %1945 = extractvalue %dx.types.ResRet.f32 %1941, 3
  %1946 = and i32 %1935, 255
  %1947 = uitofp i32 %1946 to float
  %1948 = lshr i32 %1935, 8
  %1949 = and i32 %1948, 255
  %1950 = uitofp i32 %1949 to float
  %1951 = lshr i32 %1935, 16
  %1952 = and i32 %1951, 255
  %1953 = uitofp i32 %1952 to float
  %1954 = fmul fast float %1953, 0x3F70101000000000
  %1955 = fmul fast float %1942, %1947
  %1956 = fadd fast float %1955, %1950
  %1957 = fmul fast float %1956, 0x3F70101000000000
  %1958 = fadd fast float %1943, -5.000000e-01
  %1959 = fadd fast float %1945, -5.000000e-01
  %1960 = fmul fast float %1958, %1954
  %1961 = fmul fast float %1959, %1954
  %1962 = fadd fast float %1960, 5.000000e-01
  %1963 = fadd fast float %1961, 5.000000e-01
  %1964 = fmul fast float %1962, 2.000000e+00
  %1965 = fadd fast float %1964, -1.000000e+00
  %1966 = fmul fast float %1963, 2.000000e+00
  %1967 = fadd fast float %1966, -1.000000e+00
  %1968 = fadd fast float %1965, %1967
  %1969 = fmul fast float %1968, 5.000000e-01
  %1970 = fsub fast float %1965, %1967
  %1971 = fmul fast float %1970, 5.000000e-01
  %1972 = call float @dx.op.unary.f32(i32 6, float %1969)  ; FAbs(value)
  %1973 = fsub fast float 1.000000e+00, %1972
  %1974 = call float @dx.op.unary.f32(i32 6, float %1971)  ; FAbs(value)
  %1975 = fsub fast float %1973, %1974
  %1976 = call float @dx.op.dot3.f32(i32 55, float %1969, float %1971, float %1975, float %1969, float %1971, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %1977 = call float @dx.op.unary.f32(i32 25, float %1976)  ; Rsqrt(value)
  %1978 = fmul fast float %1969, %1977
  %1979 = fmul fast float %1971, %1977
  %1980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.i32 %1980, 0
  %1982 = and i32 %1981, 67108864
  %1983 = icmp eq i32 %1982, 0
  br i1 %1983, label %2000, label %1984

; <label>:1984                                    ; preds = %1932
  %1985 = add i32 %62, 312
  %1986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.i32 %1986, 0
  %1988 = and i32 %1987, 65535
  %1989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1988)  ; LegacyF16ToF32(value)
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1566, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = and i32 %1991, 65535
  %1993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1992)  ; LegacyF16ToF32(value)
  %1994 = lshr i32 %1987, 16
  %1995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1994)  ; LegacyF16ToF32(value)
  %1996 = fsub fast float %1957, %1995
  %1997 = fmul fast float %1996, %1989
  %1998 = fadd fast float %1997, %1993
  %1999 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  br label %2000

; <label>:2000                                    ; preds = %1984, %1932
  %2001 = phi float [ %1999, %1984 ], [ %1957, %1932 ]
  %2002 = call float @dx.op.dot2.f32(i32 54, float %1978, float %1979, float %1560, float %1561)  ; Dot2(ax,ay,bx,by)
  %2003 = call float @dx.op.dot2.f32(i32 54, float %1978, float %1979, float %1562, float %1563)  ; Dot2(ax,ay,bx,by)
  br label %2004

; <label>:2004                                    ; preds = %2000, %1911
  %2005 = phi float [ %2001, %2000 ], [ 0x3FD6666660000000, %1911 ]
  %2006 = phi float [ %2002, %2000 ], [ 0.000000e+00, %1911 ]
  %2007 = phi float [ %2003, %2000 ], [ 0.000000e+00, %1911 ]
  %2008 = phi float [ %1944, %2000 ], [ 1.000000e+00, %1911 ]
  %2009 = add i32 %62, 128
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = and i32 %2013, 3
  %2015 = icmp eq i32 %2014, 0
  br i1 %2015, label %2016, label %2033

; <label>:2016                                    ; preds = %2004
  %2017 = lshr i32 %2011, 8
  %2018 = and i32 %2017, 255
  %2019 = uitofp i32 %2018 to float
  %2020 = call float @dx.op.dot3.f32(i32 55, float %1925, float %1926, float %1927, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2021 = fmul fast float %2019, %2020
  %2022 = and i32 %2011, 255
  %2023 = uitofp i32 %2022 to float
  %2024 = fadd fast float %2021, %2023
  %2025 = fmul fast float %2024, 0x3F70101020000000
  %2026 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2027 = and i32 %2013, 16
  %2028 = icmp ne i32 %2027, 0
  %2029 = select i1 %2028, float %1729, float 0.000000e+00
  %2030 = fsub fast float %2026, %1547
  %2031 = fmul fast float %2029, %2030
  %2032 = fadd fast float %2031, %1547
  br label %2033

; <label>:2033                                    ; preds = %2016, %2004
  %2034 = phi float [ %1547, %2004 ], [ %2032, %2016 ]
  %2035 = and i32 %2013, 12
  %2036 = icmp eq i32 %2035, 12
  br i1 %2036, label %2109, label %2037

; <label>:2037                                    ; preds = %2033
  %2038 = and i32 %2013, 2097184
  %2039 = icmp eq i32 %2038, 2097184
  %2040 = select i1 %2039, float %1729, float 0.000000e+00
  %2041 = and i32 %2013, 4194336
  %2042 = icmp eq i32 %2041, 4194336
  %2043 = select i1 %2042, float %1729, float 0.000000e+00
  %2044 = and i32 %2013, 8388640
  %2045 = icmp eq i32 %2044, 8388640
  %2046 = select i1 %2045, float %1729, float 0.000000e+00
  %2047 = icmp eq i32 %2035, 0
  br i1 %2047, label %2048, label %2061

; <label>:2048                                    ; preds = %2037
  %2049 = fsub fast float %2006, %1543
  %2050 = fsub fast float %2007, %1544
  %2051 = fmul fast float %2040, %2049
  %2052 = fmul fast float %2040, %2050
  %2053 = fadd fast float %2051, %1543
  %2054 = fadd fast float %2052, %1544
  %2055 = fsub fast float %2008, %1546
  %2056 = fmul fast float %2043, %2055
  %2057 = fadd fast float %2056, %1546
  %2058 = fsub fast float %2005, %1545
  %2059 = fmul fast float %2046, %2058
  %2060 = fadd fast float %2059, %1545
  br label %2109

; <label>:2061                                    ; preds = %2037
  %2062 = icmp eq i32 %2035, 4
  br i1 %2062, label %2063, label %2095

; <label>:2063                                    ; preds = %2061
  %2064 = fmul fast float %2040, %2006
  %2065 = fmul fast float %2040, %2007
  %2066 = fadd fast float %2064, %1543
  %2067 = fadd fast float %2065, %1544
  %2068 = call float @dx.op.binary.f32(i32 36, float %1546, float %2008)  ; FMin(a,b)
  %2069 = fsub fast float %2068, %1546
  %2070 = fmul fast float %2069, %2043
  %2071 = fadd fast float %2070, %1546
  %2072 = fadd fast float %2005, %1545
  %2073 = fmul fast float %2072, 0x3FF337FAE0000000
  %2074 = fmul fast float %1545, %1545
  %2075 = fmul fast float %2005, %2005
  %2076 = fadd fast float %2075, %2074
  %2077 = fmul fast float %2076, 0x3FE5152B00000000
  %2078 = fmul fast float %1545, 0xBFCC1F85E0000000
  %2079 = fmul fast float %2078, %2005
  %2080 = fadd fast float %2079, 0xBFE1363700000000
  %2081 = fadd fast float %2080, %2073
  %2082 = fsub fast float %2081, %2077
  %2083 = fmul fast float %2072, 0x3FBA6F0D00000000
  %2084 = fmul fast float %2076, 0x3FD0432880000000
  %2085 = fmul fast float %1545, 0xBFEF110800000000
  %2086 = fmul fast float %2085, %2005
  %2087 = fadd fast float %2086, 1.000000e+00
  %2088 = fsub fast float %2087, %2083
  %2089 = fadd fast float %2088, %2084
  %2090 = fdiv fast float %2082, %2089
  %2091 = call float @dx.op.unary.f32(i32 7, float %2090)  ; Saturate(value)
  %2092 = fsub fast float %2091, %1545
  %2093 = fmul fast float %2092, %2046
  %2094 = fadd fast float %2093, %1545
  br label %2109

; <label>:2095                                    ; preds = %2061
  %2096 = icmp eq i32 %2035, 8
  br i1 %2096, label %2097, label %2109

; <label>:2097                                    ; preds = %2095
  %2098 = fmul fast float %2040, %2006
  %2099 = fmul fast float %2040, %2007
  %2100 = fadd fast float %2098, %1543
  %2101 = fadd fast float %2099, %1544
  %2102 = call float @dx.op.binary.f32(i32 36, float %1546, float %2008)  ; FMin(a,b)
  %2103 = fsub fast float %2102, %1546
  %2104 = fmul fast float %2103, %2043
  %2105 = fadd fast float %2104, %1546
  %2106 = fsub fast float %2005, %1545
  %2107 = fmul fast float %2046, %2106
  %2108 = fadd fast float %2107, %1545
  br label %2109

; <label>:2109                                    ; preds = %2097, %2095, %2063, %2048, %2033, %1728, %1548, %1542
  %2110 = phi float [ %1543, %2033 ], [ %1543, %1728 ], [ %1543, %1542 ], [ %2100, %2097 ], [ %1543, %2095 ], [ %2066, %2063 ], [ %2053, %2048 ], [ %1543, %1548 ]
  %2111 = phi float [ %1544, %2033 ], [ %1544, %1728 ], [ %1544, %1542 ], [ %2101, %2097 ], [ %1544, %2095 ], [ %2067, %2063 ], [ %2054, %2048 ], [ %1544, %1548 ]
  %2112 = phi float [ %1545, %2033 ], [ %1545, %1728 ], [ %1545, %1542 ], [ %2108, %2097 ], [ %1545, %2095 ], [ %2094, %2063 ], [ %2060, %2048 ], [ %1545, %1548 ]
  %2113 = phi float [ %1546, %2033 ], [ %1546, %1728 ], [ %1546, %1542 ], [ %2105, %2097 ], [ %1546, %2095 ], [ %2071, %2063 ], [ %2057, %2048 ], [ %1546, %1548 ]
  %2114 = phi float [ %2034, %2033 ], [ %1547, %1728 ], [ %1547, %1542 ], [ %2034, %2097 ], [ %2034, %2095 ], [ %2034, %2063 ], [ %2034, %2048 ], [ %1547, %1548 ]
  br i1 %529, label %2676, label %2115

; <label>:2115                                    ; preds = %2109
  %2116 = add i32 %62, 72
  %2117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2118 = extractvalue %dx.types.ResRet.i32 %2117, 0
  %2119 = add i32 %62, 76
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = or i32 %2121, %2118
  %2123 = icmp eq i32 %2122, 0
  br i1 %2123, label %2676, label %2124

; <label>:2124                                    ; preds = %2115
  %2125 = and i32 %2118, 262144
  %2126 = icmp ne i32 %2125, 0
  %2127 = select i1 %2126, float %68, float 1.000000e+00
  %2128 = select i1 %2126, float %69, float 0.000000e+00
  %2129 = select i1 %2126, float %70, float 0.000000e+00
  %2130 = select i1 %2126, float %71, float 1.000000e+00
  %2131 = select i1 %2126, float %72, float %95
  %2132 = select i1 %2126, float %73, float %96
  %2133 = add i32 %62, 332
  %2134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.i32 %2134, 0
  %2136 = lshr i32 %2135, 16
  %2137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2136)  ; LegacyF16ToF32(value)
  %2138 = fmul fast float %2137, 0x3F50624DE0000000
  %2139 = add i32 %62, 136
  %2140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2139, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.i32 %2140, 0
  %2142 = lshr i32 %2141, 16
  %2143 = and i32 %2142, 255
  %2144 = lshr i32 %2141, 24
  %2145 = add i32 %62, 340
  %2146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2147 = extractvalue %dx.types.ResRet.i32 %2146, 0
  %2148 = and i32 %2147, 65535
  %2149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2148)  ; LegacyF16ToF32(value)
  %2150 = lshr i32 %2147, 16
  %2151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2150)  ; LegacyF16ToF32(value)
  %2152 = add i32 %62, 80
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.i32 %2153, 0
  %2155 = lshr i32 %2154, 22
  %2156 = shl nuw nsw i32 %2155, 5
  %2157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2156)  ; LegacyF16ToF32(value)
  %2158 = shl i32 %2154, 4
  %2159 = and i32 %2158, 32752
  %2160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2159)  ; LegacyF16ToF32(value)
  %2161 = lshr i32 %2154, 7
  %2162 = and i32 %2161, 32752
  %2163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2162)  ; LegacyF16ToF32(value)
  %2164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2165 = extractvalue %dx.types.CBufRet.f32 %2164, 3
  %2166 = fmul fast float %2165, 1.000000e+03
  %2167 = fmul fast float %2166, %518
  %2168 = call float @dx.op.unary.f32(i32 22, float %2167)  ; Frc(value)
  %2169 = fadd fast float %2168, %506
  %2170 = fmul fast float %2166, %520
  %2171 = call float @dx.op.unary.f32(i32 22, float %2170)  ; Frc(value)
  %2172 = fadd fast float %2171, %507
  %2173 = fmul fast float %2138, %2166
  %2174 = call float @dx.op.unary.f32(i32 22, float %2173)  ; Frc(value)
  %2175 = fmul fast float %2174, 0x401921FB60000000
  %2176 = fadd fast float %2175, %2157
  %2177 = call float @dx.op.unary.f32(i32 13, float %2176)  ; Sin(value)
  %2178 = call float @dx.op.unary.f32(i32 12, float %2176)  ; Cos(value)
  %2179 = fsub fast float -0.000000e+00, %2177
  %2180 = fadd fast float %2131, -5.000000e-01
  %2181 = fadd fast float %2132, -5.000000e-01
  %2182 = fmul fast float %2149, %2180
  %2183 = fmul fast float %2151, %2181
  %2184 = fadd fast float %2182, 5.000000e-01
  %2185 = fadd fast float %2183, 5.000000e-01
  %2186 = fmul fast float %2160, %2184
  %2187 = fmul fast float %2163, %2185
  %2188 = fmul fast float %2178, %2186
  %2189 = call float @dx.op.tertiary.f32(i32 46, float %2179, float %2187, float %2188)  ; FMad(a,b,c)
  %2190 = fmul fast float %2177, %2186
  %2191 = call float @dx.op.tertiary.f32(i32 46, float %2178, float %2187, float %2190)  ; FMad(a,b,c)
  %2192 = fadd fast float %2169, %2189
  %2193 = fadd fast float %2172, %2191
  %2194 = icmp ugt i32 %2143, 1
  %2195 = icmp ugt i32 %2141, 33554431
  %2196 = or i1 %2195, %2194
  br i1 %2196, label %2197, label %2222

; <label>:2197                                    ; preds = %2124
  %2198 = add i32 %62, 276
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2198, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = lshr i32 %2200, 16
  %2202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2201)  ; LegacyF16ToF32(value)
  %2203 = fmul fast float %2165, %2202
  %2204 = call float @dx.op.unary.f32(i32 22, float %2203)  ; Frc(value)
  %2205 = mul nuw nsw i32 %2143, %2144
  %2206 = uitofp i32 %2205 to float
  %2207 = fmul fast float %2204, %2206
  %2208 = call float @dx.op.unary.f32(i32 27, float %2207)  ; Round_ni(value)
  %2209 = fptoui float %2208 to i32
  %2210 = urem i32 %2209, %2143
  %2211 = udiv i32 %2209, %2144
  %2212 = call float @dx.op.unary.f32(i32 22, float %2192)  ; Frc(value)
  %2213 = call float @dx.op.unary.f32(i32 22, float %2193)  ; Frc(value)
  %2214 = uitofp i32 %2210 to float
  %2215 = uitofp i32 %2211 to float
  %2216 = fadd fast float %2212, %2214
  %2217 = fadd fast float %2213, %2215
  %2218 = uitofp i32 %2143 to float
  %2219 = uitofp i32 %2144 to float
  %2220 = fdiv fast float %2216, %2218
  %2221 = fdiv fast float %2217, %2219
  br label %2222

; <label>:2222                                    ; preds = %2197, %2124
  %2223 = phi float [ %2220, %2197 ], [ %2192, %2124 ]
  %2224 = phi float [ %2221, %2197 ], [ %2193, %2124 ]
  %2225 = and i32 %2118, 256
  %2226 = icmp eq i32 %2225, 0
  br i1 %2226, label %2273, label %2227

; <label>:2227                                    ; preds = %2222
  %2228 = add i32 %62, 452
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2228, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = add i32 %2230, 0
  %2232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2233 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2232, %dx.types.Handle %113, float %2223, float %2224, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2234 = extractvalue %dx.types.ResRet.f32 %2233, 0
  %2235 = add i32 %62, 148
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2235, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = shl i32 %2237, 4
  %2239 = and i32 %2238, 32752
  %2240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2239)  ; LegacyF16ToF32(value)
  %2241 = lshr i32 %2237, 7
  %2242 = and i32 %2241, 32752
  %2243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2242)  ; LegacyF16ToF32(value)
  %2244 = fsub fast float 1.000000e+00, %575
  %2245 = call float @dx.op.binary.f32(i32 35, float %2244, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2246 = bitcast float %575 to i32
  %2247 = sitofp i32 %2246 to float
  %2248 = fadd fast float %2247, 0xC1CFBF8940000000
  %2249 = fmul fast float %2243, %2248
  %2250 = fadd fast float %2249, 0x41CFBF8940000000
  %2251 = fptosi float %2250 to i32
  %2252 = bitcast i32 %2251 to float
  %2253 = bitcast float %2245 to i32
  %2254 = sitofp i32 %2253 to float
  %2255 = fadd fast float %2254, 0xC1CFBF8940000000
  %2256 = fmul fast float %2255, %2243
  %2257 = fadd fast float %2256, 0x41CFBF8940000000
  %2258 = fptosi float %2257 to i32
  %2259 = bitcast i32 %2258 to float
  %2260 = fmul fast float %2252, %2240
  %2261 = fmul fast float %2259, %2240
  %2262 = fsub fast float %2245, %2260
  %2263 = fadd fast float %2261, %2245
  %2264 = call float @dx.op.unary.f32(i32 7, float %2262)  ; Saturate(value)
  %2265 = call float @dx.op.unary.f32(i32 7, float %2263)  ; Saturate(value)
  %2266 = fsub fast float %2234, %2264
  %2267 = fsub fast float %2265, %2264
  %2268 = bitcast float %2267 to i32
  %2269 = sub nsw i32 2129859010, %2268
  %2270 = bitcast i32 %2269 to float
  %2271 = fmul fast float %2270, %2266
  %2272 = call float @dx.op.unary.f32(i32 7, float %2271)  ; Saturate(value)
  br label %2273

; <label>:2273                                    ; preds = %2227, %2222
  %2274 = phi float [ %2272, %2227 ], [ %575, %2222 ]
  %2275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.i32 %2275, 0
  %2277 = and i32 %2276, 128
  %2278 = icmp eq i32 %2277, 0
  br i1 %2278, label %2295, label %2279

; <label>:2279                                    ; preds = %2273
  %2280 = add i32 %62, 436
  %2281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2280, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.i32 %2281, 0
  %2283 = add i32 %2282, 0
  %2284 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2283, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2285 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2284, %dx.types.Handle %113, float %2223, float %2224, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2286 = extractvalue %dx.types.ResRet.f32 %2285, 0
  %2287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2288 = extractvalue %dx.types.ResRet.i32 %2287, 0
  %2289 = and i32 %2288, 524288
  %2290 = icmp ne i32 %2289, 0
  %2291 = fcmp fast ogt float %2286, 0x3FE0101020000000
  %2292 = select i1 %2291, float 1.000000e+00, float 0.000000e+00
  %2293 = select i1 %2290, float %2292, float %2286
  %2294 = fmul fast float %2293, %2274
  br label %2295

; <label>:2295                                    ; preds = %2279, %2273
  %2296 = phi float [ %2294, %2279 ], [ %2274, %2273 ]
  %2297 = fcmp fast ult float %2296, 0x3F70101020000000
  br i1 %2297, label %2676, label %2298

; <label>:2298                                    ; preds = %2295
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = and i32 %2300, 16
  %2302 = icmp eq i32 %2301, 0
  br i1 %2302, label %2478, label %2303

; <label>:2303                                    ; preds = %2298
  %2304 = add i32 %62, 388
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = add i32 %2306, 0
  %2308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2307, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2309 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2308, %dx.types.Handle %112, float %2223, float %2224, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2310 = extractvalue %dx.types.ResRet.f32 %2309, 0
  %2311 = extractvalue %dx.types.ResRet.f32 %2309, 1
  %2312 = extractvalue %dx.types.ResRet.f32 %2309, 2
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = and i32 %2314, 512
  %2316 = icmp eq i32 %2315, 0
  br i1 %2316, label %2325, label %2317

; <label>:2317                                    ; preds = %2303
  %2318 = add i32 %62, 468
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = add i32 %2320, 0
  %2322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2321, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2323 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2322, %dx.types.Handle %113, float %2223, float %2224, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2324 = extractvalue %dx.types.ResRet.f32 %2323, 0
  br label %2325

; <label>:2325                                    ; preds = %2317, %2303
  %2326 = phi float [ %2324, %2317 ], [ 1.000000e+00, %2303 ]
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = and i32 %2328, 33554432
  %2330 = icmp eq i32 %2329, 0
  br i1 %2330, label %2425, label %2331

; <label>:2331                                    ; preds = %2325
  %2332 = add i32 %62, 272
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = and i32 %2334, 65535
  %2336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2335)  ; LegacyF16ToF32(value)
  %2337 = lshr i32 %2334, 16
  %2338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2337)  ; LegacyF16ToF32(value)
  %2339 = add i32 %62, 276
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 65535
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = and i32 %2345, 255
  %2347 = uitofp i32 %2346 to float
  %2348 = fmul fast float %2347, 0x3F70101020000000
  %2349 = lshr i32 %2345, 8
  %2350 = and i32 %2349, 255
  %2351 = uitofp i32 %2350 to float
  %2352 = fmul fast float %2351, 0x3F70101020000000
  %2353 = lshr i32 %2345, 16
  %2354 = and i32 %2353, 255
  %2355 = uitofp i32 %2354 to float
  %2356 = fmul fast float %2355, 0x3F70101020000000
  %2357 = add i32 %62, 268
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = and i32 %2359, 255
  %2361 = uitofp i32 %2360 to float
  %2362 = fmul fast float %2361, 0x3F70101020000000
  %2363 = lshr i32 %2359, 8
  %2364 = and i32 %2363, 255
  %2365 = uitofp i32 %2364 to float
  %2366 = fmul fast float %2365, 0x3F70101020000000
  %2367 = lshr i32 %2359, 16
  %2368 = and i32 %2367, 255
  %2369 = uitofp i32 %2368 to float
  %2370 = fmul fast float %2369, 0x3F70101020000000
  %2371 = bitcast float %2310 to i32
  %2372 = ashr i32 %2371, 1
  %2373 = sub nsw i32 1597463174, %2372
  %2374 = bitcast i32 %2373 to float
  %2375 = fmul fast float %2310, 5.000000e-01
  %2376 = fmul fast float %2374, %2374
  %2377 = fmul fast float %2376, %2375
  %2378 = fsub fast float 1.500000e+00, %2377
  %2379 = fmul fast float %2374, %2310
  %2380 = fmul fast float %2379, %2378
  %2381 = bitcast float %2311 to i32
  %2382 = ashr i32 %2381, 1
  %2383 = sub nsw i32 1597463174, %2382
  %2384 = bitcast i32 %2383 to float
  %2385 = fmul fast float %2311, 5.000000e-01
  %2386 = fmul fast float %2384, %2384
  %2387 = fmul fast float %2386, %2385
  %2388 = fsub fast float 1.500000e+00, %2387
  %2389 = fmul fast float %2384, %2311
  %2390 = fmul fast float %2389, %2388
  %2391 = bitcast float %2312 to i32
  %2392 = ashr i32 %2391, 1
  %2393 = sub nsw i32 1597463174, %2392
  %2394 = bitcast i32 %2393 to float
  %2395 = fmul fast float %2312, 5.000000e-01
  %2396 = fmul fast float %2394, %2394
  %2397 = fmul fast float %2396, %2395
  %2398 = fsub fast float 1.500000e+00, %2397
  %2399 = fmul fast float %2394, %2312
  %2400 = fmul fast float %2399, %2398
  %2401 = fsub fast float %2380, %2362
  %2402 = fsub fast float %2390, %2366
  %2403 = fsub fast float %2400, %2370
  %2404 = fmul fast float %2401, %2336
  %2405 = fmul fast float %2402, %2338
  %2406 = fmul fast float %2403, %2343
  %2407 = fadd fast float %2404, %2348
  %2408 = fadd fast float %2405, %2352
  %2409 = fadd fast float %2406, %2356
  %2410 = call float @dx.op.unary.f32(i32 7, float %2407)  ; Saturate(value)
  %2411 = call float @dx.op.unary.f32(i32 7, float %2408)  ; Saturate(value)
  %2412 = call float @dx.op.unary.f32(i32 7, float %2409)  ; Saturate(value)
  %2413 = fmul fast float %2410, %2410
  %2414 = fmul fast float %2411, %2411
  %2415 = fmul fast float %2412, %2412
  %2416 = fsub fast float %2413, %2310
  %2417 = fsub fast float %2414, %2311
  %2418 = fsub fast float %2415, %2312
  %2419 = fmul fast float %2416, %2326
  %2420 = fmul fast float %2417, %2326
  %2421 = fmul fast float %2418, %2326
  %2422 = fadd fast float %2419, %2310
  %2423 = fadd fast float %2420, %2311
  %2424 = fadd fast float %2421, %2312
  br label %2478

; <label>:2425                                    ; preds = %2325
  %2426 = and i32 %2328, 134217728
  %2427 = icmp eq i32 %2426, 0
  br i1 %2427, label %2462, label %2428

; <label>:2428                                    ; preds = %2425
  %2429 = call float @dx.op.unary.f32(i32 24, float %494)  ; Sqrt(value)
  %2430 = call float @dx.op.unary.f32(i32 24, float %495)  ; Sqrt(value)
  %2431 = call float @dx.op.unary.f32(i32 24, float %496)  ; Sqrt(value)
  %2432 = fadd fast float %2429, -5.000000e-01
  %2433 = fadd fast float %2430, -5.000000e-01
  %2434 = fadd fast float %2431, -5.000000e-01
  %2435 = fmul fast float %2432, %2326
  %2436 = fmul fast float %2433, %2326
  %2437 = fmul fast float %2434, %2326
  %2438 = fadd fast float %2435, 5.000000e-01
  %2439 = fadd fast float %2436, 5.000000e-01
  %2440 = fadd fast float %2437, 5.000000e-01
  %2441 = call float @dx.op.unary.f32(i32 24, float %2310)  ; Sqrt(value)
  %2442 = call float @dx.op.unary.f32(i32 24, float %2311)  ; Sqrt(value)
  %2443 = call float @dx.op.unary.f32(i32 24, float %2312)  ; Sqrt(value)
  %2444 = fmul fast float %2438, 2.000000e+00
  %2445 = fsub fast float 1.000000e+00, %2444
  %2446 = fmul fast float %2445, %2441
  %2447 = fadd fast float %2446, %2444
  %2448 = fmul fast float %2447, %2441
  %2449 = fmul fast float %2439, 2.000000e+00
  %2450 = fsub fast float 1.000000e+00, %2449
  %2451 = fmul fast float %2450, %2442
  %2452 = fadd fast float %2451, %2449
  %2453 = fmul fast float %2452, %2442
  %2454 = fmul fast float %2440, 2.000000e+00
  %2455 = fsub fast float 1.000000e+00, %2454
  %2456 = fmul fast float %2455, %2443
  %2457 = fadd fast float %2456, %2454
  %2458 = fmul fast float %2457, %2443
  %2459 = fmul fast float %2448, %2448
  %2460 = fmul fast float %2453, %2453
  %2461 = fmul fast float %2458, %2458
  br label %2478

; <label>:2462                                    ; preds = %2425
  %2463 = fmul fast float %494, %494
  %2464 = fmul fast float %495, %495
  %2465 = fmul fast float %496, %496
  %2466 = fadd fast float %2463, -1.000000e+00
  %2467 = fadd fast float %2464, -1.000000e+00
  %2468 = fadd fast float %2465, -1.000000e+00
  %2469 = fmul fast float %2326, %2466
  %2470 = fmul fast float %2326, %2467
  %2471 = fmul fast float %2326, %2468
  %2472 = fadd fast float %2469, 1.000000e+00
  %2473 = fadd fast float %2470, 1.000000e+00
  %2474 = fadd fast float %2471, 1.000000e+00
  %2475 = fmul fast float %2472, %2310
  %2476 = fmul fast float %2473, %2311
  %2477 = fmul fast float %2474, %2312
  br label %2478

; <label>:2478                                    ; preds = %2462, %2428, %2331, %2298
  %2479 = phi float [ %2422, %2331 ], [ %2459, %2428 ], [ %2475, %2462 ], [ 1.000000e+00, %2298 ]
  %2480 = phi float [ %2423, %2331 ], [ %2460, %2428 ], [ %2476, %2462 ], [ 1.000000e+00, %2298 ]
  %2481 = phi float [ %2424, %2331 ], [ %2461, %2428 ], [ %2477, %2462 ], [ 1.000000e+00, %2298 ]
  %2482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2483 = extractvalue %dx.types.CBufRet.i32 %2482, 1
  %2484 = and i32 %2483, 1
  %2485 = icmp ne i32 %2484, 0
  %2486 = add i32 %62, 356
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2486, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = and i32 %2488, 32
  %2490 = icmp ne i32 %2489, 0
  %2491 = and i1 %2485, %2490
  %2492 = select i1 %2491, float 1.000000e+00, float %2479
  %2493 = select i1 %2491, float 0x3FD3333340000000, float %2480
  %2494 = select i1 %2491, float 0x3FD3333340000000, float %2481
  %2495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2496 = extractvalue %dx.types.ResRet.i32 %2495, 0
  %2497 = and i32 %2496, 32
  %2498 = icmp eq i32 %2497, 0
  br i1 %2498, label %2571, label %2499

; <label>:2499                                    ; preds = %2478
  %2500 = add i32 %62, 140
  %2501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2500, i32 undef)  ; BufferLoad(srv,index,wot)
  %2502 = extractvalue %dx.types.ResRet.i32 %2501, 0
  %2503 = add i32 %62, 404
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2503, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = add i32 %2505, 0
  %2507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2506, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2508 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2507, %dx.types.Handle %112, float %2223, float %2224, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2509 = extractvalue %dx.types.ResRet.f32 %2508, 0
  %2510 = extractvalue %dx.types.ResRet.f32 %2508, 1
  %2511 = extractvalue %dx.types.ResRet.f32 %2508, 2
  %2512 = extractvalue %dx.types.ResRet.f32 %2508, 3
  %2513 = and i32 %2502, 255
  %2514 = uitofp i32 %2513 to float
  %2515 = lshr i32 %2502, 8
  %2516 = and i32 %2515, 255
  %2517 = uitofp i32 %2516 to float
  %2518 = lshr i32 %2502, 16
  %2519 = and i32 %2518, 255
  %2520 = uitofp i32 %2519 to float
  %2521 = fmul fast float %2520, 0x3F70101000000000
  %2522 = fmul fast float %2509, %2514
  %2523 = fadd fast float %2522, %2517
  %2524 = fmul fast float %2523, 0x3F70101000000000
  %2525 = fadd fast float %2510, -5.000000e-01
  %2526 = fadd fast float %2512, -5.000000e-01
  %2527 = fmul fast float %2525, %2521
  %2528 = fmul fast float %2526, %2521
  %2529 = fadd fast float %2527, 5.000000e-01
  %2530 = fadd fast float %2528, 5.000000e-01
  %2531 = fmul fast float %2529, 2.000000e+00
  %2532 = fadd fast float %2531, -1.000000e+00
  %2533 = fmul fast float %2530, 2.000000e+00
  %2534 = fadd fast float %2533, -1.000000e+00
  %2535 = fadd fast float %2532, %2534
  %2536 = fmul fast float %2535, 5.000000e-01
  %2537 = fsub fast float %2532, %2534
  %2538 = fmul fast float %2537, 5.000000e-01
  %2539 = call float @dx.op.unary.f32(i32 6, float %2536)  ; FAbs(value)
  %2540 = fsub fast float 1.000000e+00, %2539
  %2541 = call float @dx.op.unary.f32(i32 6, float %2538)  ; FAbs(value)
  %2542 = fsub fast float %2540, %2541
  %2543 = call float @dx.op.dot3.f32(i32 55, float %2536, float %2538, float %2542, float %2536, float %2538, float %2542)  ; Dot3(ax,ay,az,bx,by,bz)
  %2544 = call float @dx.op.unary.f32(i32 25, float %2543)  ; Rsqrt(value)
  %2545 = fmul fast float %2536, %2544
  %2546 = fmul fast float %2538, %2544
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = and i32 %2548, 67108864
  %2550 = icmp eq i32 %2549, 0
  br i1 %2550, label %2567, label %2551

; <label>:2551                                    ; preds = %2499
  %2552 = add i32 %62, 328
  %2553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2554 = extractvalue %dx.types.ResRet.i32 %2553, 0
  %2555 = and i32 %2554, 65535
  %2556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2555)  ; LegacyF16ToF32(value)
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = and i32 %2558, 65535
  %2560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2559)  ; LegacyF16ToF32(value)
  %2561 = lshr i32 %2554, 16
  %2562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2561)  ; LegacyF16ToF32(value)
  %2563 = fsub fast float %2524, %2562
  %2564 = fmul fast float %2563, %2556
  %2565 = fadd fast float %2564, %2560
  %2566 = call float @dx.op.unary.f32(i32 7, float %2565)  ; Saturate(value)
  br label %2567

; <label>:2567                                    ; preds = %2551, %2499
  %2568 = phi float [ %2566, %2551 ], [ %2524, %2499 ]
  %2569 = call float @dx.op.dot2.f32(i32 54, float %2545, float %2546, float %2127, float %2128)  ; Dot2(ax,ay,bx,by)
  %2570 = call float @dx.op.dot2.f32(i32 54, float %2545, float %2546, float %2129, float %2130)  ; Dot2(ax,ay,bx,by)
  br label %2571

; <label>:2571                                    ; preds = %2567, %2478
  %2572 = phi float [ %2568, %2567 ], [ 0x3FD6666660000000, %2478 ]
  %2573 = phi float [ %2569, %2567 ], [ 0.000000e+00, %2478 ]
  %2574 = phi float [ %2570, %2567 ], [ 0.000000e+00, %2478 ]
  %2575 = phi float [ %2511, %2567 ], [ 1.000000e+00, %2478 ]
  %2576 = add i32 %62, 144
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = and i32 %2580, 3
  %2582 = icmp eq i32 %2581, 0
  br i1 %2582, label %2583, label %2600

; <label>:2583                                    ; preds = %2571
  %2584 = lshr i32 %2578, 8
  %2585 = and i32 %2584, 255
  %2586 = uitofp i32 %2585 to float
  %2587 = call float @dx.op.dot3.f32(i32 55, float %2492, float %2493, float %2494, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2588 = fmul fast float %2586, %2587
  %2589 = and i32 %2578, 255
  %2590 = uitofp i32 %2589 to float
  %2591 = fadd fast float %2588, %2590
  %2592 = fmul fast float %2591, 0x3F70101020000000
  %2593 = call float @dx.op.unary.f32(i32 7, float %2592)  ; Saturate(value)
  %2594 = and i32 %2580, 16
  %2595 = icmp ne i32 %2594, 0
  %2596 = select i1 %2595, float %2296, float 0.000000e+00
  %2597 = fsub fast float %2593, %2114
  %2598 = fmul fast float %2596, %2597
  %2599 = fadd fast float %2598, %2114
  br label %2600

; <label>:2600                                    ; preds = %2583, %2571
  %2601 = phi float [ %2114, %2571 ], [ %2599, %2583 ]
  %2602 = and i32 %2580, 12
  %2603 = icmp eq i32 %2602, 12
  br i1 %2603, label %2676, label %2604

; <label>:2604                                    ; preds = %2600
  %2605 = and i32 %2580, 2097184
  %2606 = icmp eq i32 %2605, 2097184
  %2607 = select i1 %2606, float %2296, float 0.000000e+00
  %2608 = and i32 %2580, 4194336
  %2609 = icmp eq i32 %2608, 4194336
  %2610 = select i1 %2609, float %2296, float 0.000000e+00
  %2611 = and i32 %2580, 8388640
  %2612 = icmp eq i32 %2611, 8388640
  %2613 = select i1 %2612, float %2296, float 0.000000e+00
  %2614 = icmp eq i32 %2602, 0
  br i1 %2614, label %2615, label %2628

; <label>:2615                                    ; preds = %2604
  %2616 = fsub fast float %2573, %2110
  %2617 = fsub fast float %2574, %2111
  %2618 = fmul fast float %2607, %2616
  %2619 = fmul fast float %2607, %2617
  %2620 = fadd fast float %2618, %2110
  %2621 = fadd fast float %2619, %2111
  %2622 = fsub fast float %2575, %2113
  %2623 = fmul fast float %2610, %2622
  %2624 = fadd fast float %2623, %2113
  %2625 = fsub fast float %2572, %2112
  %2626 = fmul fast float %2613, %2625
  %2627 = fadd fast float %2626, %2112
  br label %2676

; <label>:2628                                    ; preds = %2604
  %2629 = icmp eq i32 %2602, 4
  br i1 %2629, label %2630, label %2662

; <label>:2630                                    ; preds = %2628
  %2631 = fmul fast float %2607, %2573
  %2632 = fmul fast float %2607, %2574
  %2633 = fadd fast float %2631, %2110
  %2634 = fadd fast float %2632, %2111
  %2635 = call float @dx.op.binary.f32(i32 36, float %2113, float %2575)  ; FMin(a,b)
  %2636 = fsub fast float %2635, %2113
  %2637 = fmul fast float %2636, %2610
  %2638 = fadd fast float %2637, %2113
  %2639 = fadd fast float %2572, %2112
  %2640 = fmul fast float %2639, 0x3FF337FAE0000000
  %2641 = fmul fast float %2112, %2112
  %2642 = fmul fast float %2572, %2572
  %2643 = fadd fast float %2642, %2641
  %2644 = fmul fast float %2643, 0x3FE5152B00000000
  %2645 = fmul fast float %2112, 0xBFCC1F85E0000000
  %2646 = fmul fast float %2645, %2572
  %2647 = fadd fast float %2646, 0xBFE1363700000000
  %2648 = fadd fast float %2647, %2640
  %2649 = fsub fast float %2648, %2644
  %2650 = fmul fast float %2639, 0x3FBA6F0D00000000
  %2651 = fmul fast float %2643, 0x3FD0432880000000
  %2652 = fmul fast float %2112, 0xBFEF110800000000
  %2653 = fmul fast float %2652, %2572
  %2654 = fadd fast float %2653, 1.000000e+00
  %2655 = fsub fast float %2654, %2650
  %2656 = fadd fast float %2655, %2651
  %2657 = fdiv fast float %2649, %2656
  %2658 = call float @dx.op.unary.f32(i32 7, float %2657)  ; Saturate(value)
  %2659 = fsub fast float %2658, %2112
  %2660 = fmul fast float %2659, %2613
  %2661 = fadd fast float %2660, %2112
  br label %2676

; <label>:2662                                    ; preds = %2628
  %2663 = icmp eq i32 %2602, 8
  br i1 %2663, label %2664, label %2676

; <label>:2664                                    ; preds = %2662
  %2665 = fmul fast float %2607, %2573
  %2666 = fmul fast float %2607, %2574
  %2667 = fadd fast float %2665, %2110
  %2668 = fadd fast float %2666, %2111
  %2669 = call float @dx.op.binary.f32(i32 36, float %2113, float %2575)  ; FMin(a,b)
  %2670 = fsub fast float %2669, %2113
  %2671 = fmul fast float %2670, %2610
  %2672 = fadd fast float %2671, %2113
  %2673 = fsub fast float %2572, %2112
  %2674 = fmul fast float %2613, %2673
  %2675 = fadd fast float %2674, %2112
  br label %2676

; <label>:2676                                    ; preds = %2664, %2662, %2630, %2615, %2600, %2295, %2115, %2109
  %2677 = phi float [ %2110, %2600 ], [ %2110, %2295 ], [ %2110, %2109 ], [ %2110, %2115 ], [ %2620, %2615 ], [ %2633, %2630 ], [ %2110, %2662 ], [ %2667, %2664 ]
  %2678 = phi float [ %2111, %2600 ], [ %2111, %2295 ], [ %2111, %2109 ], [ %2111, %2115 ], [ %2621, %2615 ], [ %2634, %2630 ], [ %2111, %2662 ], [ %2668, %2664 ]
  %2679 = phi float [ %2112, %2600 ], [ %2112, %2295 ], [ %2112, %2109 ], [ %2112, %2115 ], [ %2627, %2615 ], [ %2661, %2630 ], [ %2112, %2662 ], [ %2675, %2664 ]
  %2680 = phi float [ %2113, %2600 ], [ %2113, %2295 ], [ %2113, %2109 ], [ %2113, %2115 ], [ %2624, %2615 ], [ %2638, %2630 ], [ %2113, %2662 ], [ %2672, %2664 ]
  %2681 = phi float [ %2601, %2600 ], [ %2114, %2295 ], [ %2114, %2109 ], [ %2114, %2115 ], [ %2601, %2615 ], [ %2601, %2630 ], [ %2601, %2662 ], [ %2601, %2664 ]
  %2682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2683 = extractvalue %dx.types.CBufRet.f32 %2682, 0
  %2684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %2685 = extractvalue %dx.types.CBufRet.f32 %2684, 2
  %2686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2687 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %1, %dx.types.Handle %2686, float %95, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float %2685, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %2688 = extractvalue %dx.types.ResRet.f32 %2687, 0
  %2689 = extractvalue %dx.types.ResRet.f32 %2687, 1
  %2690 = extractvalue %dx.types.ResRet.f32 %2687, 2
  %2691 = extractvalue %dx.types.ResRet.f32 %2687, 3
  %2692 = add i32 %62, 360
  %2693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2694 = extractvalue %dx.types.ResRet.i32 %2693, 0
  %2695 = extractvalue %dx.types.ResRet.i32 %2693, 1
  %2696 = extractvalue %dx.types.ResRet.i32 %2693, 2
  %2697 = bitcast i32 %2694 to float
  %2698 = bitcast i32 %2695 to float
  %2699 = bitcast i32 %2696 to float
  %2700 = fmul fast float %2697, %2688
  %2701 = fmul fast float %2698, %2689
  %2702 = fmul fast float %2699, %2690
  %2703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2704 = extractvalue %dx.types.CBufRet.f32 %2703, 0
  %2705 = fmul fast float %2700, %2704
  %2706 = fmul fast float %2701, %2704
  %2707 = fmul fast float %2702, %2704
  %2708 = call float @dx.op.dot2.f32(i32 54, float %2677, float %2678, float %2677, float %2678)  ; Dot2(ax,ay,bx,by)
  %2709 = fmul fast float %2708, 0x3FE3333340000000
  %2710 = fsub fast float 1.000000e+00, %2709
  %2711 = call float @dx.op.dot3.f32(i32 55, float %2677, float %2678, float %2710, float %2677, float %2678, float %2710)  ; Dot3(ax,ay,az,bx,by,bz)
  %2712 = call float @dx.op.unary.f32(i32 25, float %2711)  ; Rsqrt(value)
  %2713 = fmul fast float %2712, %2677
  %2714 = fmul fast float %2712, %2678
  %2715 = fmul fast float %2710, %2712
  %2716 = fmul fast float %2715, %123
  %2717 = fmul fast float %2715, %124
  %2718 = fmul fast float %2715, %125
  %2719 = fmul fast float %2713, %88
  %2720 = fmul fast float %2713, %89
  %2721 = fmul fast float %2713, %90
  %2722 = fadd fast float %2716, %2719
  %2723 = fadd fast float %2717, %2720
  %2724 = fadd fast float %2718, %2721
  %2725 = fmul fast float %135, %2714
  %2726 = fmul fast float %136, %2714
  %2727 = fmul fast float %137, %2714
  %2728 = fadd fast float %2722, %2725
  %2729 = fadd fast float %2723, %2726
  %2730 = fadd fast float %2724, %2727
  %2731 = call float @dx.op.dot3.f32(i32 55, float %2728, float %2729, float %2730, float %2728, float %2729, float %2730)  ; Dot3(ax,ay,az,bx,by,bz)
  %2732 = call float @dx.op.unary.f32(i32 25, float %2731)  ; Rsqrt(value)
  %2733 = fmul fast float %2728, %2732
  %2734 = fmul fast float %2729, %2732
  %2735 = fmul fast float %2730, %2732
  %2736 = icmp eq i32 %64, 65535
  br i1 %2736, label %3251, label %2737

; <label>:2737                                    ; preds = %2676
  %2738 = call float @dx.op.unary.f32(i32 83, float %65)  ; DerivCoarseX(value)
  %2739 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %2740 = call float @dx.op.unary.f32(i32 83, float %67)  ; DerivCoarseX(value)
  %2741 = call float @dx.op.unary.f32(i32 84, float %65)  ; DerivCoarseY(value)
  %2742 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %2743 = call float @dx.op.unary.f32(i32 84, float %67)  ; DerivCoarseY(value)
  %2744 = fadd fast float %2738, %65
  %2745 = fadd fast float %2739, %66
  %2746 = fadd fast float %2740, %67
  %2747 = fadd fast float %2741, %65
  %2748 = fadd fast float %2742, %66
  %2749 = fadd fast float %2743, %67
  %2750 = mul i32 %64, 48
  %2751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.f32 %2751, 0
  %2753 = extractvalue %dx.types.ResRet.f32 %2751, 1
  %2754 = extractvalue %dx.types.ResRet.f32 %2751, 2
  %2755 = add i32 %2750, 16
  %2756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.ResRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.ResRet.f32 %2756, 2
  %2760 = add i32 %2750, 32
  %2761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.f32 %2761, 0
  %2763 = extractvalue %dx.types.ResRet.f32 %2761, 1
  %2764 = extractvalue %dx.types.ResRet.f32 %2761, 2
  %2765 = extractvalue %dx.types.ResRet.f32 %2761, 3
  %2766 = bitcast float %2765 to i32
  %2767 = fmul fast float %2752, %65
  %2768 = fmul fast float %2753, %66
  %2769 = fmul fast float %2754, %67
  %2770 = fsub fast float %2767, %2757
  %2771 = fsub fast float %2768, %2758
  %2772 = fsub fast float %2769, %2759
  %2773 = call float @dx.op.unary.f32(i32 7, float %2770)  ; Saturate(value)
  %2774 = call float @dx.op.unary.f32(i32 7, float %2771)  ; Saturate(value)
  %2775 = call float @dx.op.unary.f32(i32 7, float %2772)  ; Saturate(value)
  %2776 = fmul fast float %2773, %2762
  %2777 = fmul fast float %2774, %2763
  %2778 = fmul fast float %2775, %2764
  %2779 = fadd fast float %2762, -1.000000e+00
  %2780 = fadd fast float %2763, -1.000000e+00
  %2781 = fadd fast float %2764, -1.000000e+00
  %2782 = call float @dx.op.unary.f32(i32 27, float %2776)  ; Round_ni(value)
  %2783 = call float @dx.op.unary.f32(i32 27, float %2777)  ; Round_ni(value)
  %2784 = call float @dx.op.unary.f32(i32 27, float %2778)  ; Round_ni(value)
  %2785 = call float @dx.op.binary.f32(i32 36, float %2782, float %2779)  ; FMin(a,b)
  %2786 = call float @dx.op.binary.f32(i32 36, float %2783, float %2780)  ; FMin(a,b)
  %2787 = call float @dx.op.binary.f32(i32 36, float %2784, float %2781)  ; FMin(a,b)
  %2788 = fmul fast float %2787, %2763
  %2789 = fadd fast float %2788, %2786
  %2790 = fmul fast float %2789, %2762
  %2791 = fadd fast float %2790, %2785
  %2792 = fptosi float %2791 to i32
  %2793 = add nsw i32 %2792, %2766
  %2794 = shl nsw i32 %2793, 2
  %2795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2796 = extractvalue %dx.types.ResRet.i32 %2795, 0
  %2797 = lshr i32 %2796, 16
  %2798 = icmp eq i32 %2797, 0
  br i1 %2798, label %3220, label %2799

; <label>:2799                                    ; preds = %2737
  br label %2800

; <label>:2800                                    ; preds = %2921, %2799
  %2801 = phi i32 [ %2823, %2921 ], [ %2797, %2799 ]
  %2802 = phi float [ %2922, %2921 ], [ 0.000000e+00, %2799 ]
  %2803 = phi float [ %2923, %2921 ], [ %2683, %2799 ]
  %2804 = phi float [ %2924, %2921 ], [ %2681, %2799 ]
  %2805 = phi float [ %2925, %2921 ], [ 0.000000e+00, %2799 ]
  %2806 = phi float [ %2926, %2921 ], [ 0.000000e+00, %2799 ]
  %2807 = phi float [ %2927, %2921 ], [ %2705, %2799 ]
  %2808 = phi float [ %2928, %2921 ], [ %2706, %2799 ]
  %2809 = phi float [ %2929, %2921 ], [ %2707, %2799 ]
  %2810 = phi float [ %2930, %2921 ], [ %2733, %2799 ]
  %2811 = phi float [ %2931, %2921 ], [ %2734, %2799 ]
  %2812 = phi float [ %2932, %2921 ], [ %2735, %2799 ]
  %2813 = phi float [ %2933, %2921 ], [ %2680, %2799 ]
  %2814 = phi float [ %2934, %2921 ], [ %2679, %2799 ]
  %2815 = phi float [ %2935, %2921 ], [ 0.000000e+00, %2799 ]
  %2816 = phi float [ %2936, %2921 ], [ 0x3FA23C0BE0000000, %2799 ]
  %2817 = phi float [ %2937, %2921 ], [ %2688, %2799 ]
  %2818 = phi float [ %2938, %2921 ], [ %2689, %2799 ]
  %2819 = phi float [ %2939, %2921 ], [ %2690, %2799 ]
  %2820 = shl nuw nsw i32 %2801, 2
  %2821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2820, i32 undef)  ; BufferLoad(srv,index,wot)
  %2822 = extractvalue %dx.types.ResRet.i32 %2821, 0
  %2823 = lshr i32 %2822, 16
  %2824 = shl i32 %2822, 8
  %2825 = and i32 %2824, 16776960
  %2826 = or i32 %2825, 48
  %2827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.f32 %2827, 0
  %2829 = extractvalue %dx.types.ResRet.f32 %2827, 1
  %2830 = extractvalue %dx.types.ResRet.f32 %2827, 2
  %2831 = or i32 %2825, 64
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = extractvalue %dx.types.ResRet.i32 %2832, 1
  %2835 = or i32 %2825, 80
  %2836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.f32 %2836, 2
  %2838 = extractvalue %dx.types.ResRet.f32 %2836, 3
  %2839 = or i32 %2825, 96
  %2840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2841 = extractvalue %dx.types.ResRet.f32 %2840, 0
  %2842 = extractvalue %dx.types.ResRet.f32 %2840, 1
  %2843 = extractvalue %dx.types.ResRet.f32 %2840, 2
  %2844 = extractvalue %dx.types.ResRet.f32 %2840, 3
  %2845 = or i32 %2825, 112
  %2846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2845, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.f32 %2846, 2
  %2848 = or i32 %2825, 128
  %2849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2850 = extractvalue %dx.types.ResRet.f32 %2849, 0
  %2851 = extractvalue %dx.types.ResRet.f32 %2849, 1
  %2852 = extractvalue %dx.types.ResRet.f32 %2849, 2
  %2853 = extractvalue %dx.types.ResRet.f32 %2849, 3
  %2854 = or i32 %2825, 144
  %2855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2856 = extractvalue %dx.types.ResRet.f32 %2855, 0
  %2857 = extractvalue %dx.types.ResRet.f32 %2855, 1
  %2858 = extractvalue %dx.types.ResRet.f32 %2855, 2
  %2859 = extractvalue %dx.types.ResRet.f32 %2855, 3
  %2860 = or i32 %2825, 160
  %2861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2860, i32 undef)  ; BufferLoad(srv,index,wot)
  %2862 = extractvalue %dx.types.ResRet.f32 %2861, 0
  %2863 = extractvalue %dx.types.ResRet.f32 %2861, 1
  %2864 = extractvalue %dx.types.ResRet.f32 %2861, 2
  %2865 = extractvalue %dx.types.ResRet.f32 %2861, 3
  %2866 = or i32 %2825, 192
  %2867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %2868 = extractvalue %dx.types.ResRet.i32 %2867, 0
  %2869 = or i32 %2825, 208
  %2870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.f32 %2870, 0
  %2872 = or i32 %2825, 248
  %2873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2872, i32 undef)  ; BufferLoad(srv,index,wot)
  %2874 = extractvalue %dx.types.ResRet.f32 %2873, 0
  %2875 = extractvalue %dx.types.ResRet.f32 %2873, 1
  %2876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.f32 %2876, 0
  %2878 = extractvalue %dx.types.ResRet.f32 %2876, 1
  %2879 = extractvalue %dx.types.ResRet.f32 %2876, 2
  %2880 = extractvalue %dx.types.ResRet.f32 %2876, 3
  %2881 = call float @dx.op.dot4.f32(i32 56, float %2877, float %2878, float %2879, float %2880, float %65, float %66, float %67, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2882 = or i32 %2825, 16
  %2883 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.f32 %2883, 0
  %2885 = extractvalue %dx.types.ResRet.f32 %2883, 1
  %2886 = extractvalue %dx.types.ResRet.f32 %2883, 2
  %2887 = extractvalue %dx.types.ResRet.f32 %2883, 3
  %2888 = call float @dx.op.dot4.f32(i32 56, float %2884, float %2885, float %2886, float %2887, float %65, float %66, float %67, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2889 = or i32 %2825, 32
  %2890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.f32 %2890, 0
  %2892 = extractvalue %dx.types.ResRet.f32 %2890, 1
  %2893 = extractvalue %dx.types.ResRet.f32 %2890, 2
  %2894 = extractvalue %dx.types.ResRet.f32 %2890, 3
  %2895 = call float @dx.op.dot4.f32(i32 56, float %2891, float %2892, float %2893, float %2894, float %65, float %66, float %67, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2896 = call float @dx.op.unary.f32(i32 27, float %2881)  ; Round_ni(value)
  %2897 = call float @dx.op.unary.f32(i32 6, float %2896)  ; FAbs(value)
  %2898 = call float @dx.op.unary.f32(i32 27, float %2888)  ; Round_ni(value)
  %2899 = call float @dx.op.unary.f32(i32 6, float %2898)  ; FAbs(value)
  %2900 = call float @dx.op.unary.f32(i32 6, float %2895)  ; FAbs(value)
  %2901 = call float @dx.op.unary.f32(i32 27, float %2900)  ; Round_ni(value)
  %2902 = fadd fast float %2899, %2897
  %2903 = fadd fast float %2902, %2901
  %2904 = fcmp fast oeq float %2903, 0.000000e+00
  %2905 = call float @dx.op.dot4.f32(i32 56, float %2877, float %2878, float %2879, float %2880, float %2744, float %2745, float %2746, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2906 = call float @dx.op.dot4.f32(i32 56, float %2884, float %2885, float %2886, float %2887, float %2744, float %2745, float %2746, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2907 = call float @dx.op.dot4.f32(i32 56, float %2877, float %2878, float %2879, float %2880, float %2747, float %2748, float %2749, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2908 = call float @dx.op.dot4.f32(i32 56, float %2884, float %2885, float %2886, float %2887, float %2747, float %2748, float %2749, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2909 = fsub fast float %2905, %2881
  %2910 = fsub fast float %2907, %2881
  %2911 = fsub fast float %2906, %2888
  %2912 = fsub fast float %2908, %2888
  %2913 = call float @dx.op.dot3.f32(i32 55, float %2828, float %2829, float %2830, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %2914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2915 = extractvalue %dx.types.CBufRet.f32 %2914, 2
  %2916 = fadd fast float %2915, %2913
  %2917 = call float @dx.op.unary.f32(i32 7, float %2916)  ; Saturate(value)
  %2918 = extractvalue %dx.types.CBufRet.f32 %2914, 0
  %2919 = fcmp fast ogt float %2917, %2918
  %2920 = and i1 %2904, %2919
  br i1 %2920, label %2941, label %2921

; <label>:2921                                    ; preds = %3206, %3024, %2941, %2800
  %2922 = phi float [ %2802, %2941 ], [ %3027, %3024 ], [ %3027, %3206 ], [ %2802, %2800 ]
  %2923 = phi float [ %2803, %2941 ], [ %2803, %3024 ], [ %3181, %3206 ], [ %2803, %2800 ]
  %2924 = phi float [ %2804, %2941 ], [ %2804, %3024 ], [ %3179, %3206 ], [ %2804, %2800 ]
  %2925 = phi float [ %2805, %2941 ], [ %2805, %3024 ], [ %3151, %3206 ], [ %2805, %2800 ]
  %2926 = phi float [ %2806, %2941 ], [ %2806, %3024 ], [ %3149, %3206 ], [ %2806, %2800 ]
  %2927 = phi float [ %2807, %2941 ], [ %2807, %3024 ], [ %3216, %3206 ], [ %2807, %2800 ]
  %2928 = phi float [ %2808, %2941 ], [ %2808, %3024 ], [ %3217, %3206 ], [ %2808, %2800 ]
  %2929 = phi float [ %2809, %2941 ], [ %2809, %3024 ], [ %3218, %3206 ], [ %2809, %2800 ]
  %2930 = phi float [ %2810, %2941 ], [ %2810, %3024 ], [ %3130, %3206 ], [ %2810, %2800 ]
  %2931 = phi float [ %2811, %2941 ], [ %2811, %3024 ], [ %3131, %3206 ], [ %2811, %2800 ]
  %2932 = phi float [ %2812, %2941 ], [ %2812, %3024 ], [ %3132, %3206 ], [ %2812, %2800 ]
  %2933 = phi float [ %2813, %2941 ], [ %2813, %3024 ], [ %3159, %3206 ], [ %2813, %2800 ]
  %2934 = phi float [ %2814, %2941 ], [ %2814, %3024 ], [ %3156, %3206 ], [ %2814, %2800 ]
  %2935 = phi float [ %2815, %2941 ], [ %2815, %3024 ], [ %3153, %3206 ], [ %2815, %2800 ]
  %2936 = phi float [ %2816, %2941 ], [ %2816, %3024 ], [ %3147, %3206 ], [ %2816, %2800 ]
  %2937 = phi float [ %2817, %2941 ], [ %2817, %3024 ], [ %3142, %3206 ], [ %2817, %2800 ]
  %2938 = phi float [ %2818, %2941 ], [ %2818, %3024 ], [ %3143, %3206 ], [ %2818, %2800 ]
  %2939 = phi float [ %2819, %2941 ], [ %2819, %3024 ], [ %3144, %3206 ], [ %2819, %2800 ]
  %2940 = icmp eq i32 %2823, 0
  br i1 %2940, label %3219, label %2800

; <label>:2941                                    ; preds = %2800
  %2942 = extractvalue %dx.types.ResRet.f32 %2827, 3
  %2943 = extractvalue %dx.types.ResRet.f32 %2846, 3
  %2944 = extractvalue %dx.types.ResRet.f32 %2846, 1
  %2945 = extractvalue %dx.types.ResRet.f32 %2846, 0
  %2946 = extractvalue %dx.types.ResRet.f32 %2836, 1
  %2947 = extractvalue %dx.types.ResRet.f32 %2836, 0
  %2948 = extractvalue %dx.types.ResRet.i32 %2832, 3
  %2949 = extractvalue %dx.types.ResRet.i32 %2832, 2
  %2950 = bitcast float %2942 to i32
  %2951 = add i32 %2948, 0
  %2952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2951, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2953 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2954 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2952, %dx.types.Handle %2953, float %2881, float %2888, float undef, float undef, i32 0, i32 0, i32 undef, float %2909, float %2911, float undef, float %2910, float %2912, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2955 = extractvalue %dx.types.ResRet.f32 %2954, 0
  %2956 = fmul fast float %2955, %2947
  %2957 = fadd fast float %2956, %2946
  %2958 = call float @dx.op.unary.f32(i32 7, float %2957)  ; Saturate(value)
  %2959 = fmul fast float %2881, %2841
  %2960 = call float @dx.op.tertiary.f32(i32 46, float %2842, float %2888, float %2959)  ; FMad(a,b,c)
  %2961 = fadd fast float %2960, %2945
  %2962 = fmul fast float %2881, %2843
  %2963 = call float @dx.op.tertiary.f32(i32 46, float %2844, float %2888, float %2962)  ; FMad(a,b,c)
  %2964 = fadd fast float %2963, %2944
  %2965 = fmul fast float %2909, %2841
  %2966 = call float @dx.op.tertiary.f32(i32 46, float %2842, float %2911, float %2965)  ; FMad(a,b,c)
  %2967 = fmul fast float %2909, %2843
  %2968 = call float @dx.op.tertiary.f32(i32 46, float %2844, float %2911, float %2967)  ; FMad(a,b,c)
  %2969 = fmul fast float %2910, %2841
  %2970 = call float @dx.op.tertiary.f32(i32 46, float %2842, float %2912, float %2969)  ; FMad(a,b,c)
  %2971 = fmul fast float %2910, %2843
  %2972 = call float @dx.op.tertiary.f32(i32 46, float %2844, float %2912, float %2971)  ; FMad(a,b,c)
  %2973 = add i32 %2949, 0
  %2974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2973, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2975 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2974, %dx.types.Handle %2953, float %2961, float %2964, float undef, float undef, i32 0, i32 0, i32 undef, float %2966, float %2968, float undef, float %2970, float %2972, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2976 = extractvalue %dx.types.ResRet.f32 %2975, 0
  %2977 = and i32 %2950, 1024
  %2978 = icmp ne i32 %2977, 0
  %2979 = fcmp fast ogt float %2976, 0x3FE0101020000000
  %2980 = uitofp i1 %2979 to float
  %2981 = select i1 %2978, float %2980, float %2976
  %2982 = and i32 %2950, 8192
  %2983 = icmp ne i32 %2982, 0
  %2984 = select i1 %2983, float %2943, float 1.000000e+00
  %2985 = fmul fast float %2881, 2.000000e+00
  %2986 = fadd fast float %2985, -1.000000e+00
  %2987 = call float @dx.op.unary.f32(i32 6, float %2986)  ; FAbs(value)
  %2988 = fmul fast float %2987, %2874
  %2989 = fsub fast float %2988, %2874
  %2990 = call float @dx.op.unary.f32(i32 7, float %2989)  ; Saturate(value)
  %2991 = fmul fast float %2888, 2.000000e+00
  %2992 = fadd fast float %2991, -1.000000e+00
  %2993 = call float @dx.op.unary.f32(i32 6, float %2992)  ; FAbs(value)
  %2994 = fmul fast float %2993, %2875
  %2995 = fsub fast float %2994, %2875
  %2996 = call float @dx.op.unary.f32(i32 7, float %2995)  ; Saturate(value)
  %2997 = fmul fast float %2900, %2837
  %2998 = fsub fast float %2997, %2837
  %2999 = call float @dx.op.unary.f32(i32 7, float %2998)  ; Saturate(value)
  %3000 = fmul fast float %2958, %2984
  %3001 = fmul fast float %3000, %2955
  %3002 = fmul fast float %3001, %2990
  %3003 = fmul fast float %3002, %2981
  %3004 = fmul fast float %3003, %2996
  %3005 = fmul fast float %3004, %2999
  %3006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3007 = extractvalue %dx.types.CBufRet.f32 %3006, 1
  %3008 = extractvalue %dx.types.CBufRet.f32 %3006, 0
  %3009 = fsub fast float %2917, %3008
  %3010 = fmul fast float %3009, %3007
  %3011 = call float @dx.op.unary.f32(i32 7, float %3010)  ; Saturate(value)
  %3012 = fmul fast float %3005, %2838
  %3013 = fadd fast float %3005, %2838
  %3014 = fmul fast float %3013, %2847
  %3015 = fsub fast float %3014, %2847
  %3016 = call float @dx.op.unary.f32(i32 7, float %3015)  ; Saturate(value)
  %3017 = and i32 %2950, 128
  %3018 = icmp ne i32 %3017, 0
  %3019 = select i1 %3018, float %3016, float %3012
  %3020 = fmul fast float %3019, %3011
  %3021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3022 = extractvalue %dx.types.CBufRet.f32 %3021, 0
  %3023 = fcmp fast ugt float %3020, %3022
  br i1 %3023, label %3024, label %2921

; <label>:3024                                    ; preds = %2941
  %3025 = select i1 %2983, float %3020, float 0.000000e+00
  %3026 = fadd fast float %3025, %2802
  %3027 = call float @dx.op.unary.f32(i32 7, float %3026)  ; Saturate(value)
  br i1 %2983, label %2921, label %3028

; <label>:3028                                    ; preds = %3024
  %3029 = and i32 %2950, 4
  %3030 = and i32 %2950, 8
  %3031 = add i32 %2833, 0
  %3032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3031, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3034 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3032, %dx.types.Handle %3033, float %2961, float %2964, float undef, float undef, i32 0, i32 0, i32 undef, float %2966, float %2968, float undef, float %2970, float %2972, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3035 = extractvalue %dx.types.ResRet.f32 %3034, 0
  %3036 = extractvalue %dx.types.ResRet.f32 %3034, 1
  %3037 = extractvalue %dx.types.ResRet.f32 %3034, 2
  %3038 = extractvalue %dx.types.ResRet.f32 %3034, 3
  %3039 = bitcast float %2859 to i32
  %3040 = and i32 %3039, 255
  %3041 = uitofp i32 %3040 to float
  %3042 = lshr i32 %3039, 8
  %3043 = and i32 %3042, 255
  %3044 = uitofp i32 %3043 to float
  %3045 = fmul fast float %3038, %3041
  %3046 = fadd fast float %3045, %3044
  %3047 = fmul fast float %3046, 0x3F70101000000000
  %3048 = add i32 %2834, 0
  %3049 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3048, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3050 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3049, %dx.types.Handle %3033, float %2961, float %2964, float undef, float undef, i32 0, i32 0, i32 undef, float %2966, float %2968, float undef, float %2970, float %2972, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3051 = extractvalue %dx.types.ResRet.f32 %3050, 0
  %3052 = extractvalue %dx.types.ResRet.f32 %3050, 1
  %3053 = extractvalue %dx.types.ResRet.f32 %3050, 2
  %3054 = extractvalue %dx.types.ResRet.f32 %3050, 3
  %3055 = bitcast float %2853 to i32
  %3056 = and i32 %3055, 255
  %3057 = uitofp i32 %3056 to float
  %3058 = lshr i32 %3055, 8
  %3059 = and i32 %3058, 255
  %3060 = uitofp i32 %3059 to float
  %3061 = lshr i32 %3055, 16
  %3062 = and i32 %3061, 255
  %3063 = uitofp i32 %3062 to float
  %3064 = fmul fast float %3063, 0x3F70101000000000
  %3065 = fmul fast float %3051, %3057
  %3066 = fadd fast float %3065, %3060
  %3067 = fmul fast float %3066, 0x3F70101000000000
  %3068 = fadd fast float %3052, -5.000000e-01
  %3069 = fadd fast float %3054, -5.000000e-01
  %3070 = fmul fast float %3068, %3064
  %3071 = fmul fast float %3069, %3064
  %3072 = fadd fast float %3070, 5.000000e-01
  %3073 = fadd fast float %3071, 5.000000e-01
  %3074 = fmul fast float %3035, %2862
  %3075 = fmul fast float %3036, %2863
  %3076 = fmul fast float %3037, %2864
  %3077 = fmul fast float %3072, 2.000000e+00
  %3078 = fadd fast float %3077, -1.000000e+00
  %3079 = fmul fast float %3073, 2.000000e+00
  %3080 = fadd fast float %3079, -1.000000e+00
  %3081 = fadd fast float %3078, %3080
  %3082 = fmul fast float %3081, 5.000000e-01
  %3083 = fsub fast float %3078, %3080
  %3084 = fmul fast float %3083, 5.000000e-01
  %3085 = call float @dx.op.unary.f32(i32 6, float %3082)  ; FAbs(value)
  %3086 = fsub fast float 1.000000e+00, %3085
  %3087 = call float @dx.op.unary.f32(i32 6, float %3084)  ; FAbs(value)
  %3088 = fsub fast float %3086, %3087
  %3089 = call float @dx.op.dot3.f32(i32 55, float %3082, float %3084, float %3088, float %3082, float %3084, float %3088)  ; Dot3(ax,ay,az,bx,by,bz)
  %3090 = call float @dx.op.unary.f32(i32 25, float %3089)  ; Rsqrt(value)
  %3091 = fmul fast float %3082, %3090
  %3092 = fmul fast float %3084, %3090
  %3093 = fmul fast float %3090, %3088
  %3094 = fmul fast float %3093, %2828
  %3095 = fmul fast float %3093, %2829
  %3096 = fmul fast float %3093, %2830
  %3097 = fmul fast float %3091, %2850
  %3098 = fmul fast float %3091, %2851
  %3099 = fmul fast float %3091, %2852
  %3100 = fadd fast float %3097, %3094
  %3101 = fadd fast float %3098, %3095
  %3102 = fadd fast float %3099, %3096
  %3103 = fmul fast float %3092, %2856
  %3104 = fmul fast float %3092, %2857
  %3105 = fmul fast float %3092, %2858
  %3106 = fadd fast float %3100, %3103
  %3107 = fadd fast float %3101, %3104
  %3108 = fadd fast float %3102, %3105
  %3109 = call float @dx.op.dot3.f32(i32 55, float %3106, float %3107, float %3108, float %3106, float %3107, float %3108)  ; Dot3(ax,ay,az,bx,by,bz)
  %3110 = call float @dx.op.unary.f32(i32 25, float %3109)  ; Rsqrt(value)
  %3111 = fmul fast float %3106, %3110
  %3112 = fmul fast float %3107, %3110
  %3113 = fmul fast float %3108, %3110
  %3114 = icmp ne i32 %3030, 0
  %3115 = select i1 %3114, float 1.000000e+00, float 0.000000e+00
  %3116 = fmul fast float %3020, %3115
  %3117 = and i32 %2950, 1
  %3118 = icmp eq i32 %3117, 0
  br i1 %3118, label %3119, label %3123

; <label>:3119                                    ; preds = %3028
  %3120 = fsub fast float %3111, %2810
  %3121 = fsub fast float %3112, %2811
  %3122 = fsub fast float %3113, %2812
  br label %3123

; <label>:3123                                    ; preds = %3119, %3028
  %3124 = phi float [ %3120, %3119 ], [ %3111, %3028 ]
  %3125 = phi float [ %3121, %3119 ], [ %3112, %3028 ]
  %3126 = phi float [ %3122, %3119 ], [ %3113, %3028 ]
  %3127 = fmul float %3126, %3116
  %3128 = fmul float %3125, %3116
  %3129 = fmul float %3124, %3116
  %3130 = fadd fast float %3129, %2810
  %3131 = fadd fast float %3128, %2811
  %3132 = fadd fast float %3127, %2812
  %3133 = icmp ne i32 %3029, 0
  %3134 = select i1 %3133, float 1.000000e+00, float 0.000000e+00
  %3135 = fmul fast float %3020, %3134
  %3136 = fsub fast float %3074, %2817
  %3137 = fsub fast float %3075, %2818
  %3138 = fsub fast float %3076, %2819
  %3139 = fmul fast float %3136, %3135
  %3140 = fmul fast float %3137, %3135
  %3141 = fmul fast float %3138, %3135
  %3142 = fadd fast float %3139, %2817
  %3143 = fadd fast float %3140, %2818
  %3144 = fadd fast float %3141, %2819
  %3145 = fsub fast float %3047, %2816
  %3146 = fmul fast float %3145, %3135
  %3147 = fadd fast float %3146, %2816
  %3148 = fmul fast float %3135, %2806
  %3149 = fsub fast float %2806, %3148
  %3150 = fmul fast float %3135, %2805
  %3151 = fsub fast float %2805, %3150
  %3152 = fadd fast float %3020, %2815
  %3153 = call float @dx.op.unary.f32(i32 7, float %3152)  ; Saturate(value)
  %3154 = fsub fast float %3067, %2814
  %3155 = fmul fast float %3154, %3116
  %3156 = fadd fast float %3155, %2814
  %3157 = fsub fast float %3053, %2813
  %3158 = fmul fast float %3157, %3116
  %3159 = fadd fast float %3158, %2813
  %3160 = call float @dx.op.dot3.f32(i32 55, float %3074, float %3075, float %3076, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3162 = extractvalue %dx.types.CBufRet.f32 %3161, 0
  %3163 = extractvalue %dx.types.CBufRet.f32 %3161, 1
  %3164 = fmul fast float %3163, %3160
  %3165 = fadd fast float %3164, %3162
  %3166 = call float @dx.op.unary.f32(i32 7, float %3165)  ; Saturate(value)
  %3167 = bitcast float %2865 to i32
  %3168 = and i32 %3167, 65535
  %3169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3168)  ; LegacyF16ToF32(value)
  %3170 = lshr i32 %3167, 16
  %3171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3170)  ; LegacyF16ToF32(value)
  %3172 = fcmp fast oge float %3169, 0.000000e+00
  %3173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3174 = extractvalue %dx.types.CBufRet.f32 %3173, 0
  %3175 = select i1 %3172, float %3169, float %3174
  %3176 = fadd fast float %3175, %3171
  %3177 = fsub fast float %3166, %2804
  %3178 = fmul fast float %3177, %3020
  %3179 = fadd fast float %3178, %2804
  %3180 = fmul fast float %3176, %3020
  %3181 = call float @dx.op.binary.f32(i32 35, float %2803, float %3180)  ; FMax(a,b)
  %3182 = and i32 %2950, 16
  %3183 = icmp eq i32 %3182, 0
  br i1 %3183, label %3206, label %3184

; <label>:3184                                    ; preds = %3123
  %3185 = bitcast float %2871 to i32
  %3186 = add i32 %2868, 0
  %3187 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3186, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3188 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3187, %dx.types.Handle %3033, float %2961, float %2964, float undef, float undef, i32 0, i32 0, i32 undef, float %2966, float %2968, float undef, float %2970, float %2972, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3189 = extractvalue %dx.types.ResRet.f32 %3188, 0
  %3190 = extractvalue %dx.types.ResRet.f32 %3188, 1
  %3191 = extractvalue %dx.types.ResRet.f32 %3188, 2
  %3192 = and i32 %3185, 65535
  %3193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3192)  ; LegacyF16ToF32(value)
  %3194 = fmul fast float %3189, %2862
  %3195 = fmul fast float %3190, %2863
  %3196 = fmul fast float %3191, %2864
  %3197 = and i32 %2950, 16384
  %3198 = icmp ne i32 %3197, 0
  %3199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3200 = extractvalue %dx.types.CBufRet.f32 %3199, 0
  %3201 = select i1 %3198, float %3200, float 1.000000e+00
  %3202 = fmul fast float %3201, %3193
  %3203 = fmul fast float %3194, %3202
  %3204 = fmul fast float %3195, %3202
  %3205 = fmul fast float %3196, %3202
  br label %3206

; <label>:3206                                    ; preds = %3184, %3123
  %3207 = phi float [ %3203, %3184 ], [ 0.000000e+00, %3123 ]
  %3208 = phi float [ %3204, %3184 ], [ 0.000000e+00, %3123 ]
  %3209 = phi float [ %3205, %3184 ], [ 0.000000e+00, %3123 ]
  %3210 = fsub fast float %3207, %2807
  %3211 = fsub fast float %3208, %2808
  %3212 = fsub fast float %3209, %2809
  %3213 = fmul fast float %3210, %3020
  %3214 = fmul fast float %3211, %3020
  %3215 = fmul fast float %3212, %3020
  %3216 = fadd fast float %3213, %2807
  %3217 = fadd fast float %3214, %2808
  %3218 = fadd fast float %3215, %2809
  br label %2921

; <label>:3219                                    ; preds = %2921
  br label %3220

; <label>:3220                                    ; preds = %3219, %2737
  %3221 = phi float [ 0.000000e+00, %2737 ], [ %2922, %3219 ]
  %3222 = phi float [ %2683, %2737 ], [ %2923, %3219 ]
  %3223 = phi float [ %2681, %2737 ], [ %2924, %3219 ]
  %3224 = phi float [ 0.000000e+00, %2737 ], [ %2925, %3219 ]
  %3225 = phi float [ 0.000000e+00, %2737 ], [ %2926, %3219 ]
  %3226 = phi float [ %2705, %2737 ], [ %2927, %3219 ]
  %3227 = phi float [ %2706, %2737 ], [ %2928, %3219 ]
  %3228 = phi float [ %2707, %2737 ], [ %2929, %3219 ]
  %3229 = phi float [ %2733, %2737 ], [ %2930, %3219 ]
  %3230 = phi float [ %2734, %2737 ], [ %2931, %3219 ]
  %3231 = phi float [ %2735, %2737 ], [ %2932, %3219 ]
  %3232 = phi float [ %2680, %2737 ], [ %2933, %3219 ]
  %3233 = phi float [ %2679, %2737 ], [ %2934, %3219 ]
  %3234 = phi float [ 0.000000e+00, %2737 ], [ %2935, %3219 ]
  %3235 = phi float [ 0x3FA23C0BE0000000, %2737 ], [ %2936, %3219 ]
  %3236 = phi float [ %2688, %2737 ], [ %2937, %3219 ]
  %3237 = phi float [ %2689, %2737 ], [ %2938, %3219 ]
  %3238 = phi float [ %2690, %2737 ], [ %2939, %3219 ]
  %3239 = call float @dx.op.dot3.f32(i32 55, float %3229, float %3230, float %3231, float %3229, float %3230, float %3231)  ; Dot3(ax,ay,az,bx,by,bz)
  %3240 = call float @dx.op.unary.f32(i32 25, float %3239)  ; Rsqrt(value)
  %3241 = fmul fast float %3240, %3229
  %3242 = fmul fast float %3240, %3230
  %3243 = fmul fast float %3240, %3231
  %3244 = fadd fast float %3234, %2691
  %3245 = call float @dx.op.unary.f32(i32 7, float %3244)  ; Saturate(value)
  %3246 = call float @dx.op.dot3.f32(i32 55, float %3241, float %3242, float %3243, float %3241, float %3242, float %3243)  ; Dot3(ax,ay,az,bx,by,bz)
  %3247 = call float @dx.op.unary.f32(i32 25, float %3246)  ; Rsqrt(value)
  %3248 = fmul fast float %3247, %3241
  %3249 = fmul fast float %3247, %3242
  %3250 = fmul fast float %3247, %3243
  br label %3251

; <label>:3251                                    ; preds = %3220, %2676
  %3252 = phi float [ %3248, %3220 ], [ %2733, %2676 ]
  %3253 = phi float [ %3249, %3220 ], [ %2734, %2676 ]
  %3254 = phi float [ %3250, %3220 ], [ %2735, %2676 ]
  %3255 = phi float [ %3236, %3220 ], [ %2688, %2676 ]
  %3256 = phi float [ %3237, %3220 ], [ %2689, %2676 ]
  %3257 = phi float [ %3238, %3220 ], [ %2690, %2676 ]
  %3258 = phi float [ %3226, %3220 ], [ %2705, %2676 ]
  %3259 = phi float [ %3227, %3220 ], [ %2706, %2676 ]
  %3260 = phi float [ %3228, %3220 ], [ %2707, %2676 ]
  %3261 = phi float [ %3235, %3220 ], [ 0x3FA23C0BE0000000, %2676 ]
  %3262 = phi float [ %3245, %3220 ], [ %2691, %2676 ]
  %3263 = phi float [ %3233, %3220 ], [ %2679, %2676 ]
  %3264 = phi float [ %3232, %3220 ], [ %2680, %2676 ]
  %3265 = phi float [ %3225, %3220 ], [ 0.000000e+00, %2676 ]
  %3266 = phi float [ %3224, %3220 ], [ 0.000000e+00, %2676 ]
  %3267 = phi float [ %3221, %3220 ], [ 0.000000e+00, %2676 ]
  %3268 = phi float [ %3222, %3220 ], [ %2683, %2676 ]
  %3269 = phi float [ %3223, %3220 ], [ %2681, %2676 ]
  %3270 = fadd fast float %3261, 0xBFB99999A0000000
  %3271 = call float @dx.op.unary.f32(i32 7, float %3270)  ; Saturate(value)
  %3272 = fmul fast float %3271, 0x3FF1C71C80000000
  %3273 = call float @dx.op.binary.f32(i32 36, float %3261, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3274 = fsub fast float 1.000000e+00, %3272
  %3275 = call float @dx.op.unary.f32(i32 7, float %3274)  ; Saturate(value)
  %3276 = fmul fast float %3275, %3255
  %3277 = fmul fast float %3275, %3256
  %3278 = fmul fast float %3275, %3257
  %3279 = call float @dx.op.unary.f32(i32 7, float %3276)  ; Saturate(value)
  %3280 = call float @dx.op.unary.f32(i32 7, float %3277)  ; Saturate(value)
  %3281 = call float @dx.op.unary.f32(i32 7, float %3278)  ; Saturate(value)
  %3282 = fmul fast float %3272, %3255
  %3283 = fmul fast float %3272, %3256
  %3284 = fmul fast float %3272, %3257
  %3285 = fadd fast float %3282, %3273
  %3286 = fadd fast float %3283, %3273
  %3287 = fadd fast float %3284, %3273
  %3288 = call float @dx.op.unary.f32(i32 7, float %3285)  ; Saturate(value)
  %3289 = call float @dx.op.unary.f32(i32 7, float %3286)  ; Saturate(value)
  %3290 = call float @dx.op.unary.f32(i32 7, float %3287)  ; Saturate(value)
  %3291 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  %3292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3293 = extractvalue %dx.types.CBufRet.i32 %3292, 3
  %3294 = and i32 %3293, 8
  %3295 = icmp ne i32 %3294, 0
  %3296 = call float @dx.op.binary.f32(i32 35, float %3279, float %3255)  ; FMax(a,b)
  %3297 = call float @dx.op.binary.f32(i32 35, float %3280, float %3255)  ; FMax(a,b)
  %3298 = call float @dx.op.binary.f32(i32 35, float %3281, float %3255)  ; FMax(a,b)
  %3299 = call float @dx.op.dot3.f32(i32 55, float %3279, float %3280, float %3281, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3300 = select i1 %262, float %3255, float %3279
  %3301 = select i1 %262, float %3299, float %3280
  %3302 = select i1 %262, float 1.000000e+00, float %3281
  %3303 = select i1 %3295, float %3296, float %3300
  %3304 = select i1 %3295, float %3297, float %3301
  %3305 = select i1 %3295, float %3298, float %3302
  %3306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3307 = extractvalue %dx.types.CBufRet.f32 %3306, 0
  %3308 = extractvalue %dx.types.CBufRet.f32 %3306, 1
  %3309 = extractvalue %dx.types.CBufRet.f32 %3306, 2
  %3310 = fadd fast float %3307, %203
  %3311 = fadd fast float %3308, %204
  %3312 = fadd fast float %3309, %205
  %3313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3314 = extractvalue %dx.types.CBufRet.f32 %3313, 0
  %3315 = extractvalue %dx.types.CBufRet.f32 %3313, 1
  %3316 = fsub fast float %3310, %3314
  %3317 = fsub fast float %3311, %3315
  %3318 = fmul fast float %3316, %3316
  %3319 = fmul fast float %3317, %3317
  %3320 = fadd fast float %3318, %3319
  %3321 = call float @dx.op.unary.f32(i32 24, float %3320)  ; Sqrt(value)
  %3322 = extractvalue %dx.types.CBufRet.f32 %3313, 2
  %3323 = fcmp fast olt float %3321, %3322
  br i1 %3323, label %3324, label %3391

; <label>:3324                                    ; preds = %3251
  %3325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3326 = extractvalue %dx.types.CBufRet.f32 %3325, 0
  %3327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3328 = extractvalue %dx.types.CBufRet.f32 %3327, 0
  %3329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3330 = extractvalue %dx.types.CBufRet.f32 %3329, 0
  %3331 = extractvalue %dx.types.CBufRet.f32 %3325, 1
  %3332 = extractvalue %dx.types.CBufRet.f32 %3327, 1
  %3333 = extractvalue %dx.types.CBufRet.f32 %3329, 1
  %3334 = extractvalue %dx.types.CBufRet.f32 %3325, 3
  %3335 = extractvalue %dx.types.CBufRet.f32 %3327, 3
  %3336 = extractvalue %dx.types.CBufRet.f32 %3329, 3
  %3337 = fadd fast float %3334, %3310
  %3338 = fadd fast float %3335, %3311
  %3339 = fadd fast float %3336, %3312
  %3340 = fmul fast float %3337, %3326
  %3341 = call float @dx.op.tertiary.f32(i32 46, float %3338, float %3328, float %3340)  ; FMad(a,b,c)
  %3342 = call float @dx.op.tertiary.f32(i32 46, float %3339, float %3330, float %3341)  ; FMad(a,b,c)
  %3343 = fmul fast float %3337, %3331
  %3344 = call float @dx.op.tertiary.f32(i32 46, float %3338, float %3332, float %3343)  ; FMad(a,b,c)
  %3345 = call float @dx.op.tertiary.f32(i32 46, float %3339, float %3333, float %3344)  ; FMad(a,b,c)
  %3346 = fsub fast float %3342, %3334
  %3347 = fsub fast float %3345, %3335
  %3348 = fsub fast float %3346, %3314
  %3349 = fadd fast float %3348, %3322
  %3350 = fsub fast float %3347, %3315
  %3351 = fadd fast float %3350, %3322
  %3352 = extractvalue %dx.types.CBufRet.f32 %3313, 3
  %3353 = fmul fast float %3349, %3352
  %3354 = fmul fast float %3351, %3352
  %3355 = call float @dx.op.unary.f32(i32 7, float %3353)  ; Saturate(value)
  %3356 = call float @dx.op.unary.f32(i32 7, float %3354)  ; Saturate(value)
  %3357 = fsub fast float 1.000000e+00, %3355
  %3358 = fsub fast float 1.000000e+00, %3356
  %3359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %56, float %3357, float %3358, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3360 = extractvalue %dx.types.ResRet.f32 %3359, 0
  %3361 = fcmp fast ugt float %3360, 0.000000e+00
  br i1 %3361, label %3362, label %3665

; <label>:3362                                    ; preds = %3324
  %3363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3364 = extractvalue %dx.types.CBufRet.f32 %3363, 2
  %3365 = fmul fast float %3364, %3360
  %3366 = extractvalue %dx.types.CBufRet.f32 %3363, 3
  %3367 = fadd fast float %3366, %3365
  %3368 = extractvalue %dx.types.CBufRet.f32 %3329, 2
  %3369 = fadd fast float %3367, %3336
  %3370 = fmul fast float %3342, %3330
  %3371 = call float @dx.op.tertiary.f32(i32 46, float %3345, float %3333, float %3370)  ; FMad(a,b,c)
  %3372 = call float @dx.op.tertiary.f32(i32 46, float %3369, float %3368, float %3371)  ; FMad(a,b,c)
  %3373 = fsub fast float %3372, %3336
  %3374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3375 = extractvalue %dx.types.CBufRet.f32 %3374, 2
  %3376 = fsub fast float %3373, %3375
  %3377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %56, float %3357, float %3358, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3378 = extractvalue %dx.types.ResRet.f32 %3377, 0
  %3379 = extractvalue %dx.types.ResRet.f32 %3377, 1
  %3380 = extractvalue %dx.types.ResRet.f32 %3377, 2
  %3381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %56, float %3357, float %3358, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3382 = extractvalue %dx.types.ResRet.f32 %3381, 0
  %3383 = extractvalue %dx.types.ResRet.f32 %3381, 1
  %3384 = extractvalue %dx.types.ResRet.f32 %3381, 2
  %3385 = fadd fast float %3382, %3378
  %3386 = fmul fast float %3385, 0x3F847AE140000000
  %3387 = fadd fast float %3383, %3379
  %3388 = fmul fast float %3387, 0x3F847AE140000000
  %3389 = fadd fast float %3384, %3380
  %3390 = fmul fast float %3389, 0x3F847AE140000000
  br label %3665

; <label>:3391                                    ; preds = %3251
  %3392 = and i32 %241, 1
  %3393 = icmp eq i32 %3392, 0
  br i1 %3393, label %3665, label %3394

; <label>:3394                                    ; preds = %3391
  %3395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3396 = extractvalue %dx.types.CBufRet.f32 %3395, 0
  %3397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3398 = extractvalue %dx.types.CBufRet.f32 %3397, 0
  %3399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3400 = extractvalue %dx.types.CBufRet.f32 %3399, 0
  %3401 = extractvalue %dx.types.CBufRet.f32 %3395, 1
  %3402 = extractvalue %dx.types.CBufRet.f32 %3397, 1
  %3403 = extractvalue %dx.types.CBufRet.f32 %3399, 1
  %3404 = extractvalue %dx.types.CBufRet.f32 %3395, 3
  %3405 = extractvalue %dx.types.CBufRet.f32 %3397, 3
  %3406 = extractvalue %dx.types.CBufRet.f32 %3399, 3
  %3407 = fadd fast float %3404, %3310
  %3408 = fadd fast float %3405, %3311
  %3409 = fadd fast float %3406, %3312
  %3410 = fmul fast float %3407, %3396
  %3411 = call float @dx.op.tertiary.f32(i32 46, float %3408, float %3398, float %3410)  ; FMad(a,b,c)
  %3412 = call float @dx.op.tertiary.f32(i32 46, float %3409, float %3400, float %3411)  ; FMad(a,b,c)
  %3413 = fmul fast float %3407, %3401
  %3414 = call float @dx.op.tertiary.f32(i32 46, float %3408, float %3402, float %3413)  ; FMad(a,b,c)
  %3415 = call float @dx.op.tertiary.f32(i32 46, float %3409, float %3403, float %3414)  ; FMad(a,b,c)
  %3416 = fsub fast float %3412, %3404
  %3417 = fsub fast float %3415, %3405
  %3418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3419 = extractvalue %dx.types.CBufRet.f32 %3418, 0
  %3420 = extractvalue %dx.types.CBufRet.f32 %3418, 1
  %3421 = extractvalue %dx.types.CBufRet.f32 %3418, 2
  %3422 = extractvalue %dx.types.CBufRet.f32 %3418, 3
  %3423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3424 = extractvalue %dx.types.CBufRet.f32 %3423, 3
  %3425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3426 = extractvalue %dx.types.CBufRet.i32 %3425, 0
  %3427 = extractvalue %dx.types.CBufRet.i32 %3425, 1
  %3428 = udiv i32 %3427, %3426
  %3429 = fsub fast float %3416, %3419
  %3430 = fsub fast float %3417, %3420
  %3431 = call float @dx.op.binary.f32(i32 35, float %3429, float 0.000000e+00)  ; FMax(a,b)
  %3432 = call float @dx.op.binary.f32(i32 35, float %3430, float 0.000000e+00)  ; FMax(a,b)
  %3433 = call float @dx.op.binary.f32(i32 36, float %3431, float %3421)  ; FMin(a,b)
  %3434 = call float @dx.op.binary.f32(i32 36, float %3432, float %3422)  ; FMin(a,b)
  %3435 = add i32 %3426, -1
  %3436 = add i32 %3428, -1
  %3437 = fmul fast float %3433, %3424
  %3438 = fmul fast float %3434, %3424
  %3439 = fptoui float %3437 to i32
  %3440 = fptoui float %3438 to i32
  %3441 = call i32 @dx.op.binary.i32(i32 40, i32 %3439, i32 %3435)  ; UMin(a,b)
  %3442 = call i32 @dx.op.binary.i32(i32 40, i32 %3440, i32 %3436)  ; UMin(a,b)
  %3443 = mul i32 %3442, %3426
  %3444 = add i32 %3443, %3441
  %3445 = shl i32 %3444, 2
  %3446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.i32 %3446, 0
  %3448 = icmp eq i32 %3447, -1
  br i1 %3448, label %3665, label %3449

; <label>:3449                                    ; preds = %3394
  %3450 = mul i32 %3447, 148
  %3451 = add i32 %3450, 4
  %3452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3451, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.f32 %3452, 0
  %3454 = add i32 %3450, 8
  %3455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.f32 %3455, 0
  %3457 = add i32 %3450, 36
  %3458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3457, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.f32 %3458, 0
  %3460 = add i32 %3450, 60
  %3461 = add i32 %3450, 92
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3461, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = add i32 %3450, 116
  %3465 = fsub fast float %3416, %3453
  %3466 = fsub fast float %3417, %3456
  %3467 = fmul fast float %3424, %3465
  %3468 = fmul fast float %3424, %3466
  %3469 = call float @dx.op.unary.f32(i32 7, float %3467)  ; Saturate(value)
  %3470 = call float @dx.op.unary.f32(i32 7, float %3468)  ; Saturate(value)
  %3471 = fsub fast float 1.000000e+00, %3470
  %3472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3473 = extractvalue %dx.types.CBufRet.f32 %3472, 2
  %3474 = call float @dx.op.unary.f32(i32 83, float %3469)  ; DerivCoarseX(value)
  %3475 = call float @dx.op.unary.f32(i32 83, float %3471)  ; DerivCoarseX(value)
  %3476 = call float @dx.op.unary.f32(i32 84, float %3469)  ; DerivCoarseY(value)
  %3477 = call float @dx.op.unary.f32(i32 84, float %3471)  ; DerivCoarseY(value)
  %3478 = fmul fast float %3474, %3473
  %3479 = fmul fast float %3475, %3473
  %3480 = fmul fast float %3476, %3473
  %3481 = fmul fast float %3477, %3473
  %3482 = call float @dx.op.dot2.f32(i32 54, float %3480, float %3481, float %3480, float %3481)  ; Dot2(ax,ay,bx,by)
  %3483 = call float @dx.op.dot2.f32(i32 54, float %3478, float %3479, float %3478, float %3479)  ; Dot2(ax,ay,bx,by)
  %3484 = call float @dx.op.binary.f32(i32 35, float %3483, float %3482)  ; FMax(a,b)
  %3485 = call float @dx.op.unary.f32(i32 23, float %3484)  ; Log(value)
  %3486 = fmul fast float %3485, 5.000000e-01
  %3487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3488 = extractvalue %dx.types.CBufRet.f32 %3487, 1
  %3489 = fadd fast float %3488, %3486
  %3490 = call float @dx.op.binary.f32(i32 35, float %3489, float 0.000000e+00)  ; FMax(a,b)
  %3491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3492 = extractvalue %dx.types.CBufRet.f32 %3491, 3
  %3493 = fadd fast float %3492, %3490
  %3494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3495 = extractvalue %dx.types.CBufRet.f32 %3494, 3
  %3496 = fadd fast float %3493, %3495
  %3497 = add i32 %3463, 0
  %3498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3497, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3499 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3498, i32 0)  ; GetDimensions(handle,mipLevel)
  %3500 = extractvalue %dx.types.Dimensions %3499, 0
  %3501 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3500)  ; FirstbitLo(value)
  %3502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3503 = extractvalue %dx.types.CBufRet.i32 %3502, 1
  %3504 = sub nsw i32 %3503, %3501
  %3505 = sitofp i32 %3504 to float
  %3506 = fsub fast float %3496, %3505
  %3507 = call float @dx.op.binary.f32(i32 35, float %3506, float 0.000000e+00)  ; FMax(a,b)
  %3508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3498, %dx.types.Handle %54, float %3469, float %3471, float %3459, float undef, i32 0, i32 0, i32 undef, float %3507)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3509 = extractvalue %dx.types.ResRet.f32 %3508, 0
  %3510 = fcmp ule float %3509, 0x3FE0101020000000
  %3511 = extractvalue %dx.types.CBufRet.i32 %3502, 0
  %3512 = and i32 %3511, 128
  %3513 = icmp ne i32 %3512, 0
  %3514 = and i1 %3510, %3513
  br i1 %3514, label %3665, label %3515

; <label>:3515                                    ; preds = %3449
  %3516 = add i32 %3450, 20
  %3517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3516, i32 undef)  ; BufferLoad(srv,index,wot)
  %3518 = extractvalue %dx.types.ResRet.f32 %3517, 0
  %3519 = add i32 %3450, 24
  %3520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3519, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.f32 %3520, 0
  %3522 = add i32 %3450, 40
  %3523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3522, i32 undef)  ; BufferLoad(srv,index,wot)
  %3524 = extractvalue %dx.types.ResRet.f32 %3523, 0
  %3525 = add i32 %3450, 96
  %3526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3525, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.i32 %3526, 0
  %3528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3529 = extractvalue %dx.types.CBufRet.f32 %3528, 2
  %3530 = fmul fast float %3529, %3469
  %3531 = fmul fast float %3529, %3471
  %3532 = extractvalue %dx.types.CBufRet.f32 %3528, 3
  %3533 = fadd fast float %3530, %3532
  %3534 = fadd fast float %3531, %3532
  %3535 = add i32 %3527, 0
  %3536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3535, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3537 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3536, i32 0)  ; GetDimensions(handle,mipLevel)
  %3538 = extractvalue %dx.types.Dimensions %3537, 0
  %3539 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3538)  ; FirstbitLo(value)
  %3540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3541 = extractvalue %dx.types.CBufRet.i32 %3540, 1
  %3542 = sub nsw i32 %3541, %3539
  %3543 = sitofp i32 %3542 to float
  %3544 = fsub fast float %3493, %3543
  %3545 = call float @dx.op.binary.f32(i32 35, float %3544, float 0.000000e+00)  ; FMax(a,b)
  %3546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3536, %dx.types.Handle %54, float %3533, float %3534, float %3524, float undef, i32 0, i32 0, i32 undef, float %3545)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3547 = extractvalue %dx.types.ResRet.f32 %3546, 0
  %3548 = fmul fast float %3547, %3518
  %3549 = fadd fast float %3548, %3521
  %3550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3551 = extractvalue %dx.types.CBufRet.f32 %3550, 0
  %3552 = extractvalue %dx.types.CBufRet.f32 %3550, 1
  %3553 = extractvalue %dx.types.CBufRet.f32 %3550, 2
  %3554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3555 = extractvalue %dx.types.CBufRet.f32 %3554, 3
  %3556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3557 = extractvalue %dx.types.CBufRet.f32 %3556, 3
  %3558 = extractvalue %dx.types.CBufRet.f32 %3550, 3
  %3559 = fadd fast float %3555, %3416
  %3560 = fadd fast float %3557, %3417
  %3561 = fadd fast float %3549, %3558
  %3562 = fmul fast float %3559, %3551
  %3563 = call float @dx.op.tertiary.f32(i32 46, float %3560, float %3552, float %3562)  ; FMad(a,b,c)
  %3564 = call float @dx.op.tertiary.f32(i32 46, float %3561, float %3553, float %3563)  ; FMad(a,b,c)
  %3565 = fsub fast float %3564, %3558
  %3566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3567 = extractvalue %dx.types.CBufRet.f32 %3566, 2
  %3568 = fsub fast float %3565, %3567
  %3569 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3570 = extractvalue %dx.types.CBufRet.i32 %3569, 0
  %3571 = call i32 @dx.op.binary.i32(i32 40, i32 %3447, i32 %3570)  ; UMin(a,b)
  %3572 = mul i32 %3571, 36
  %3573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3572, i32 undef)  ; BufferLoad(srv,index,wot)
  %3574 = extractvalue %dx.types.ResRet.i32 %3573, 0
  %3575 = add i32 %3572, 4
  %3576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3577 = extractvalue %dx.types.CBufRet.f32 %3576, 0
  %3578 = fmul fast float %3577, %3469
  %3579 = fmul fast float %3577, %3471
  %3580 = extractvalue %dx.types.CBufRet.f32 %3576, 1
  %3581 = fadd fast float %3578, %3580
  %3582 = fadd fast float %3579, %3580
  %3583 = icmp eq i32 %3574, 0
  br i1 %3583, label %3652, label %3584

; <label>:3584                                    ; preds = %3515
  br label %3585

; <label>:3585                                    ; preds = %3642, %3584
  %3586 = phi float [ %3643, %3642 ], [ 0.000000e+00, %3584 ]
  %3587 = phi float [ %3644, %3642 ], [ 0.000000e+00, %3584 ]
  %3588 = phi float [ %3645, %3642 ], [ 0.000000e+00, %3584 ]
  %3589 = phi float [ %3646, %3642 ], [ 0.000000e+00, %3584 ]
  %3590 = phi float [ %3647, %3642 ], [ 0.000000e+00, %3584 ]
  %3591 = phi float [ %3648, %3642 ], [ 0.000000e+00, %3584 ]
  %3592 = phi i32 [ %3649, %3642 ], [ 0, %3584 ]
  %3593 = shl i32 %3592, 2
  %3594 = add i32 %3460, %3593
  %3595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.f32 %3595, 0
  %3597 = add i32 %3464, %3593
  %3598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.i32 %3598, 0
  %3600 = add i32 %3599, 0
  %3601 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3600, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3602 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3601, i32 0)  ; GetDimensions(handle,mipLevel)
  %3603 = extractvalue %dx.types.Dimensions %3602, 0
  %3604 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3603)  ; FirstbitLo(value)
  %3605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3606 = extractvalue %dx.types.CBufRet.i32 %3605, 1
  %3607 = sub nsw i32 %3606, %3604
  %3608 = sitofp i32 %3607 to float
  %3609 = fsub fast float %3493, %3608
  %3610 = call float @dx.op.binary.f32(i32 35, float %3609, float 0.000000e+00)  ; FMax(a,b)
  %3611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3601, %dx.types.Handle %54, float %3581, float %3582, float %3596, float undef, i32 0, i32 0, i32 undef, float %3610)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3612 = extractvalue %dx.types.ResRet.f32 %3611, 0
  %3613 = fcmp fast ogt float %3612, 0.000000e+00
  br i1 %3613, label %3614, label %3642

; <label>:3614                                    ; preds = %3585
  %3615 = add i32 %3575, %3593
  %3616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3615, i32 undef)  ; BufferLoad(srv,index,wot)
  %3617 = extractvalue %dx.types.ResRet.i32 %3616, 0
  %3618 = and i32 %3617, 32767
  %3619 = mul nuw nsw i32 %3618, 928
  %3620 = add nuw nsw i32 %3619, 48
  %3621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3622 = extractvalue %dx.types.ResRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.ResRet.f32 %3621, 1
  %3624 = extractvalue %dx.types.ResRet.f32 %3621, 2
  %3625 = add nuw nsw i32 %3619, 60
  %3626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %3625, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.f32 %3626, 0
  %3628 = extractvalue %dx.types.ResRet.f32 %3626, 1
  %3629 = extractvalue %dx.types.ResRet.f32 %3626, 2
  %3630 = fmul fast float %3622, %3612
  %3631 = fmul fast float %3623, %3612
  %3632 = fmul fast float %3624, %3612
  %3633 = fadd fast float %3630, %3586
  %3634 = fadd fast float %3631, %3587
  %3635 = fadd fast float %3632, %3588
  %3636 = fmul fast float %3627, %3612
  %3637 = fmul fast float %3628, %3612
  %3638 = fmul fast float %3629, %3612
  %3639 = fadd fast float %3636, %3589
  %3640 = fadd fast float %3637, %3590
  %3641 = fadd fast float %3638, %3591
  br label %3642

; <label>:3642                                    ; preds = %3614, %3585
  %3643 = phi float [ %3633, %3614 ], [ %3586, %3585 ]
  %3644 = phi float [ %3634, %3614 ], [ %3587, %3585 ]
  %3645 = phi float [ %3635, %3614 ], [ %3588, %3585 ]
  %3646 = phi float [ %3639, %3614 ], [ %3589, %3585 ]
  %3647 = phi float [ %3640, %3614 ], [ %3590, %3585 ]
  %3648 = phi float [ %3641, %3614 ], [ %3591, %3585 ]
  %3649 = add nuw i32 %3592, 1
  %3650 = icmp eq i32 %3649, %3574
  br i1 %3650, label %3651, label %3585

; <label>:3651                                    ; preds = %3642
  br label %3652

; <label>:3652                                    ; preds = %3651, %3515
  %3653 = phi float [ 0.000000e+00, %3515 ], [ %3643, %3651 ]
  %3654 = phi float [ 0.000000e+00, %3515 ], [ %3644, %3651 ]
  %3655 = phi float [ 0.000000e+00, %3515 ], [ %3645, %3651 ]
  %3656 = phi float [ 0.000000e+00, %3515 ], [ %3646, %3651 ]
  %3657 = phi float [ 0.000000e+00, %3515 ], [ %3647, %3651 ]
  %3658 = phi float [ 0.000000e+00, %3515 ], [ %3648, %3651 ]
  %3659 = fadd fast float %3656, %3653
  %3660 = fmul fast float %3659, 0x3F847AE140000000
  %3661 = fadd fast float %3657, %3654
  %3662 = fmul fast float %3661, 0x3F847AE140000000
  %3663 = fadd fast float %3658, %3655
  %3664 = fmul fast float %3663, 0x3F847AE140000000
  br label %3665

; <label>:3665                                    ; preds = %3652, %3449, %3394, %3391, %3362, %3324
  %3666 = phi float [ %3376, %3362 ], [ -1.310720e+05, %3324 ], [ %3568, %3652 ], [ -1.310720e+05, %3394 ], [ -1.310720e+05, %3449 ], [ -1.310720e+05, %3391 ]
  %3667 = phi float [ %3386, %3362 ], [ 0.000000e+00, %3324 ], [ %3660, %3652 ], [ 0.000000e+00, %3394 ], [ 0.000000e+00, %3449 ], [ 0.000000e+00, %3391 ]
  %3668 = phi float [ %3388, %3362 ], [ 0.000000e+00, %3324 ], [ %3662, %3652 ], [ 0.000000e+00, %3394 ], [ 0.000000e+00, %3449 ], [ 0.000000e+00, %3391 ]
  %3669 = phi float [ %3390, %3362 ], [ 0.000000e+00, %3324 ], [ %3664, %3652 ], [ 0.000000e+00, %3394 ], [ 0.000000e+00, %3449 ], [ 0.000000e+00, %3391 ]
  %3670 = phi i1 [ true, %3362 ], [ false, %3324 ], [ true, %3652 ], [ false, %3394 ], [ false, %3449 ], [ false, %3391 ]
  %3671 = and i32 %241, 3
  %3672 = icmp eq i32 %3671, 1
  %3673 = select i1 %3672, float 1.000000e+00, float 0.000000e+00
  %3674 = fsub fast float %3666, %205
  %3675 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3676 = select i1 %3670, float %3675, float 1.000000e+00
  %3677 = fmul fast float %3676, %3673
  %3678 = icmp eq i32 %3671, 3
  %3679 = select i1 %3678, float 1.000000e+00, float %3677
  %3680 = call float @dx.op.binary.f32(i32 35, float %3267, float %3679)  ; FMax(a,b)
  %3681 = fcmp fast olt float %3679, 1.000000e+00
  %3682 = fcmp uge float %78, 0.000000e+00
  %3683 = and i1 %3682, %3681
  br i1 %3683, label %3684, label %3694

; <label>:3684                                    ; preds = %3665
  %3685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %54, float %78, float %79, float %80, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3686 = extractvalue %dx.types.ResRet.f32 %3685, 0
  %3687 = extractvalue %dx.types.ResRet.f32 %3685, 1
  %3688 = extractvalue %dx.types.ResRet.f32 %3685, 2
  %3689 = fadd fast float %3686, %3680
  %3690 = fcmp ule float %77, 0.000000e+00
  %3691 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3692 = select i1 %3690, float %3691, float 1.000000e+00
  %3693 = fmul fast float %3692, %3688
  br label %3694

; <label>:3694                                    ; preds = %3684, %3665
  %3695 = phi float [ %3689, %3684 ], [ %3680, %3665 ]
  %3696 = phi float [ %3687, %3684 ], [ 0.000000e+00, %3665 ]
  %3697 = phi float [ %3693, %3684 ], [ 0.000000e+00, %3665 ]
  %3698 = call float @dx.op.unary.f32(i32 7, float %3695)  ; Saturate(value)
  %3699 = call float @dx.op.unary.f32(i32 7, float %3696)  ; Saturate(value)
  %3700 = call float @dx.op.unary.f32(i32 7, float %3697)  ; Saturate(value)
  %3701 = fcmp fast une float %3699, 0.000000e+00
  %3702 = fcmp fast une float %3700, 0.000000e+00
  %3703 = or i1 %3701, %3702
  br i1 %3703, label %3704, label %4263

; <label>:3704                                    ; preds = %3694
  br i1 %3701, label %3705, label %3978

; <label>:3705                                    ; preds = %3704
  %3706 = call float @dx.op.unary.f32(i32 23, float %3264)  ; Log(value)
  %3707 = fmul fast float %3706, 4.000000e+00
  %3708 = call float @dx.op.unary.f32(i32 21, float %3707)  ; Exp(value)
  %3709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3710 = extractvalue %dx.types.CBufRet.f32 %3709, 0
  %3711 = fmul fast float %3710, %65
  %3712 = fmul fast float %3710, %66
  %3713 = fmul fast float %3710, %67
  %3714 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %3715 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %3716 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %3717 = call float @dx.op.unary.f32(i32 23, float %3714)  ; Log(value)
  %3718 = call float @dx.op.unary.f32(i32 23, float %3715)  ; Log(value)
  %3719 = call float @dx.op.unary.f32(i32 23, float %3716)  ; Log(value)
  %3720 = fmul fast float %3717, 4.000000e+00
  %3721 = fmul fast float %3718, 4.000000e+00
  %3722 = fmul fast float %3719, 4.000000e+00
  %3723 = call float @dx.op.unary.f32(i32 21, float %3720)  ; Exp(value)
  %3724 = call float @dx.op.unary.f32(i32 21, float %3721)  ; Exp(value)
  %3725 = call float @dx.op.unary.f32(i32 21, float %3722)  ; Exp(value)
  %3726 = fadd fast float %3724, %3723
  %3727 = fadd fast float %3726, %3725
  %3728 = fdiv fast float 1.000000e+00, %3727
  %3729 = fmul fast float %3728, %3723
  %3730 = fcmp fast ogt float %74, 0.000000e+00
  %3731 = fcmp fast ogt float %75, 0.000000e+00
  %3732 = fcmp fast ogt float %76, 0.000000e+00
  %3733 = fcmp fast olt float %74, 0.000000e+00
  %3734 = fcmp fast olt float %75, 0.000000e+00
  %3735 = fcmp fast olt float %76, 0.000000e+00
  %3736 = zext i1 %3730 to i32
  %3737 = zext i1 %3731 to i32
  %3738 = zext i1 %3732 to i32
  %3739 = zext i1 %3733 to i32
  %3740 = zext i1 %3734 to i32
  %3741 = zext i1 %3735 to i32
  %3742 = sub nsw i32 %3736, %3739
  %3743 = sub nsw i32 %3737, %3740
  %3744 = sub nsw i32 %3738, %3741
  %3745 = call float @dx.op.unary.f32(i32 83, float %3711)  ; DerivCoarseX(value)
  %3746 = call float @dx.op.unary.f32(i32 83, float %3712)  ; DerivCoarseX(value)
  %3747 = call float @dx.op.unary.f32(i32 83, float %3713)  ; DerivCoarseX(value)
  %3748 = call float @dx.op.unary.f32(i32 84, float %3711)  ; DerivCoarseY(value)
  %3749 = call float @dx.op.unary.f32(i32 84, float %3712)  ; DerivCoarseY(value)
  %3750 = call float @dx.op.unary.f32(i32 84, float %3713)  ; DerivCoarseY(value)
  %3751 = fcmp fast ole float %273, %3729
  %3752 = fmul fast float %3728, %3726
  %3753 = fcmp fast ole float %273, %3752
  %3754 = select i1 %3753, float %3713, float %3711
  %3755 = select i1 %3753, float %3711, float %3712
  %3756 = select i1 %3751, float %3712, float %3754
  %3757 = select i1 %3751, float %3713, float %3755
  %3758 = select i1 %3753, float %3747, float %3745
  %3759 = select i1 %3753, float %3745, float %3746
  %3760 = select i1 %3751, float %3746, float %3758
  %3761 = select i1 %3751, float %3747, float %3759
  %3762 = select i1 %3753, float %3750, float %3748
  %3763 = select i1 %3753, float %3748, float %3749
  %3764 = select i1 %3751, float %3749, float %3762
  %3765 = select i1 %3751, float %3750, float %3763
  %3766 = call float @dx.op.unary.f32(i32 27, float %3756)  ; Round_ni(value)
  %3767 = call float @dx.op.unary.f32(i32 27, float %3757)  ; Round_ni(value)
  %3768 = fptosi float %3766 to i32
  %3769 = fptosi float %3767 to i32
  %3770 = xor i32 %3769, %3768
  %3771 = sitofp i32 %3770 to float
  %3772 = fptosi float %3771 to i32
  %3773 = sitofp i32 %3772 to float
  %3774 = fmul fast float %3773, 0x3FE3C6EF40000000
  %3775 = frem fast float %3766, 2.560000e+02
  %3776 = frem fast float %3767, 2.560000e+02
  %3777 = fptoui float %3775 to i32
  %3778 = fptoui float %3776 to i32
  %3779 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %39, i32 0, i32 %3777, i32 %3778, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3780 = extractvalue %dx.types.ResRet.f32 %3779, 0
  %3781 = extractvalue %dx.types.ResRet.f32 %3779, 1
  %3782 = extractvalue %dx.types.ResRet.f32 %3779, 2
  %3783 = fadd fast float %3780, %3774
  %3784 = fadd fast float %3781, %3774
  %3785 = fadd fast float %3782, %3774
  %3786 = call float @dx.op.unary.f32(i32 22, float %3783)  ; Frc(value)
  %3787 = call float @dx.op.unary.f32(i32 22, float %3784)  ; Frc(value)
  %3788 = call float @dx.op.unary.f32(i32 22, float %3785)  ; Frc(value)
  %3789 = fmul fast float %3788, 0x401921FB60000000
  %3790 = call float @dx.op.unary.f32(i32 13, float %3789)  ; Sin(value)
  %3791 = call float @dx.op.unary.f32(i32 12, float %3789)  ; Cos(value)
  %3792 = fsub fast float -0.000000e+00, %3791
  %3793 = fmul fast float %3791, %3756
  %3794 = call float @dx.op.tertiary.f32(i32 46, float %3790, float %3757, float %3793)  ; FMad(a,b,c)
  %3795 = fmul fast float %3790, %3756
  %3796 = call float @dx.op.tertiary.f32(i32 46, float %3792, float %3757, float %3795)  ; FMad(a,b,c)
  %3797 = fadd fast float %3794, %3786
  %3798 = fadd fast float %3796, %3787
  %3799 = extractvalue %dx.types.CBufRet.f32 %3709, 3
  %3800 = bitcast float %3799 to i32
  %3801 = icmp eq i32 %3800, 0
  br i1 %3801, label %3840, label %3802

; <label>:3802                                    ; preds = %3705
  %3803 = add i32 %3800, 0
  %3804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3803, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3805 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3804, %dx.types.Handle %113, float %3797, float %3798, float undef, float undef, i32 0, i32 0, i32 undef, float %3760, float %3761, float undef, float %3764, float %3765, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3806 = extractvalue %dx.types.ResRet.f32 %3805, 0
  %3807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3807, 1
  %3809 = extractvalue %dx.types.CBufRet.f32 %3807, 2
  %3810 = fsub fast float 1.000000e+00, %3699
  %3811 = call float @dx.op.binary.f32(i32 35, float %3810, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3812 = bitcast float %3699 to i32
  %3813 = sitofp i32 %3812 to float
  %3814 = fadd fast float %3813, 0xC1CFBF8940000000
  %3815 = fmul fast float %3809, %3814
  %3816 = fadd fast float %3815, 0x41CFBF8940000000
  %3817 = fptosi float %3816 to i32
  %3818 = bitcast i32 %3817 to float
  %3819 = bitcast float %3811 to i32
  %3820 = sitofp i32 %3819 to float
  %3821 = fadd fast float %3820, 0xC1CFBF8940000000
  %3822 = fmul fast float %3821, %3809
  %3823 = fadd fast float %3822, 0x41CFBF8940000000
  %3824 = fptosi float %3823 to i32
  %3825 = bitcast i32 %3824 to float
  %3826 = fmul fast float %3818, %3808
  %3827 = fmul fast float %3825, %3808
  %3828 = fsub fast float %3811, %3826
  %3829 = fadd fast float %3827, %3811
  %3830 = call float @dx.op.unary.f32(i32 7, float %3828)  ; Saturate(value)
  %3831 = call float @dx.op.unary.f32(i32 7, float %3829)  ; Saturate(value)
  %3832 = fsub fast float %3806, %3830
  %3833 = fsub fast float %3831, %3830
  %3834 = bitcast float %3833 to i32
  %3835 = sub nsw i32 2129859010, %3834
  %3836 = bitcast i32 %3835 to float
  %3837 = fmul fast float %3836, %3832
  %3838 = call float @dx.op.unary.f32(i32 7, float %3837)  ; Saturate(value)
  %3839 = fcmp fast olt float %3838, 0x3F70101020000000
  br i1 %3839, label %3978, label %3840

; <label>:3840                                    ; preds = %3802, %3705
  %3841 = phi float [ %3838, %3802 ], [ %3699, %3705 ]
  %3842 = fmul fast float %3841, %3708
  %3843 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3844 = extractvalue %dx.types.CBufRet.i32 %3843, 1
  %3845 = extractvalue %dx.types.CBufRet.i32 %3843, 0
  %3846 = add i32 %3845, 0
  %3847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3846, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3848 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3847, %dx.types.Handle %112, float %3797, float %3798, float undef, float undef, i32 0, i32 0, i32 undef, float %3760, float %3761, float undef, float %3764, float %3765, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3849 = extractvalue %dx.types.ResRet.f32 %3848, 0
  %3850 = extractvalue %dx.types.ResRet.f32 %3848, 1
  %3851 = extractvalue %dx.types.ResRet.f32 %3848, 2
  %3852 = extractvalue %dx.types.ResRet.f32 %3848, 3
  %3853 = and i32 %3844, 255
  %3854 = uitofp i32 %3853 to float
  %3855 = lshr i32 %3844, 8
  %3856 = and i32 %3855, 255
  %3857 = uitofp i32 %3856 to float
  %3858 = fmul fast float %3852, %3854
  %3859 = fadd fast float %3858, %3857
  %3860 = fmul fast float %3859, 0x3F70101000000000
  %3861 = fadd fast float %3860, 0xBFB99999A0000000
  %3862 = call float @dx.op.unary.f32(i32 7, float %3861)  ; Saturate(value)
  %3863 = fmul fast float %3862, 0x3FF1C71C80000000
  %3864 = call float @dx.op.binary.f32(i32 36, float %3860, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3865 = fsub fast float 1.000000e+00, %3863
  %3866 = call float @dx.op.unary.f32(i32 7, float %3865)  ; Saturate(value)
  %3867 = fmul fast float %3866, %3849
  %3868 = fmul fast float %3866, %3850
  %3869 = fmul fast float %3866, %3851
  %3870 = call float @dx.op.unary.f32(i32 7, float %3867)  ; Saturate(value)
  %3871 = call float @dx.op.unary.f32(i32 7, float %3868)  ; Saturate(value)
  %3872 = call float @dx.op.unary.f32(i32 7, float %3869)  ; Saturate(value)
  %3873 = fmul fast float %3863, %3849
  %3874 = fmul fast float %3863, %3850
  %3875 = fmul fast float %3863, %3851
  %3876 = fadd fast float %3873, %3864
  %3877 = fadd fast float %3874, %3864
  %3878 = fadd fast float %3875, %3864
  %3879 = call float @dx.op.unary.f32(i32 7, float %3876)  ; Saturate(value)
  %3880 = call float @dx.op.unary.f32(i32 7, float %3877)  ; Saturate(value)
  %3881 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3882 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3883 = extractvalue %dx.types.CBufRet.i32 %3882, 3
  %3884 = extractvalue %dx.types.CBufRet.i32 %3882, 2
  %3885 = add i32 %3884, 0
  %3886 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3885, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3887 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3886, %dx.types.Handle %112, float %3797, float %3798, float undef, float undef, i32 0, i32 0, i32 undef, float %3760, float %3761, float undef, float %3764, float %3765, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3888 = extractvalue %dx.types.ResRet.f32 %3887, 0
  %3889 = extractvalue %dx.types.ResRet.f32 %3887, 1
  %3890 = extractvalue %dx.types.ResRet.f32 %3887, 2
  %3891 = extractvalue %dx.types.ResRet.f32 %3887, 3
  %3892 = and i32 %3883, 255
  %3893 = uitofp i32 %3892 to float
  %3894 = lshr i32 %3883, 8
  %3895 = and i32 %3894, 255
  %3896 = uitofp i32 %3895 to float
  %3897 = lshr i32 %3883, 16
  %3898 = and i32 %3897, 255
  %3899 = uitofp i32 %3898 to float
  %3900 = fmul fast float %3899, 0x3F70101000000000
  %3901 = fmul fast float %3888, %3893
  %3902 = fadd fast float %3901, %3896
  %3903 = fmul fast float %3902, 0x3F70101000000000
  %3904 = fadd fast float %3889, -5.000000e-01
  %3905 = fadd fast float %3891, -5.000000e-01
  %3906 = fmul fast float %3904, %3900
  %3907 = fmul fast float %3905, %3900
  %3908 = fadd fast float %3906, 5.000000e-01
  %3909 = fadd fast float %3907, 5.000000e-01
  %3910 = fmul fast float %3908, 2.000000e+00
  %3911 = fadd fast float %3910, -1.000000e+00
  %3912 = fmul fast float %3909, 2.000000e+00
  %3913 = fadd fast float %3912, -1.000000e+00
  %3914 = fadd fast float %3911, %3913
  %3915 = fmul fast float %3914, 5.000000e-01
  %3916 = fsub fast float %3911, %3913
  %3917 = fmul fast float %3916, 5.000000e-01
  %3918 = call float @dx.op.unary.f32(i32 6, float %3915)  ; FAbs(value)
  %3919 = fsub fast float 1.000000e+00, %3918
  %3920 = call float @dx.op.unary.f32(i32 6, float %3917)  ; FAbs(value)
  %3921 = fsub fast float %3919, %3920
  %3922 = call float @dx.op.dot3.f32(i32 55, float %3915, float %3917, float %3921, float %3915, float %3917, float %3921)  ; Dot3(ax,ay,az,bx,by,bz)
  %3923 = call float @dx.op.unary.f32(i32 25, float %3922)  ; Rsqrt(value)
  %3924 = fmul fast float %3915, %3923
  %3925 = fmul fast float %3917, %3923
  %3926 = select i1 %3753, i32 %3743, i32 %3744
  %3927 = select i1 %3751, i32 %3742, i32 %3926
  %3928 = sitofp i32 %3927 to float
  %3929 = fmul fast float %3921, %3928
  %3930 = fmul fast float %3929, %3923
  %3931 = select i1 %3753, float %3930, float %3925
  %3932 = select i1 %3753, float %3925, float %3930
  %3933 = select i1 %3751, float %3930, float %3924
  %3934 = select i1 %3751, float %3925, float %3931
  %3935 = select i1 %3751, float %3924, float %3932
  %3936 = fsub fast float %3870, %3303
  %3937 = fsub fast float %3871, %3304
  %3938 = fsub fast float %3872, %3305
  %3939 = fmul fast float %3936, %3842
  %3940 = fmul fast float %3937, %3842
  %3941 = fmul fast float %3938, %3842
  %3942 = fadd fast float %3939, %3303
  %3943 = fadd fast float %3940, %3304
  %3944 = fadd fast float %3941, %3305
  %3945 = fsub fast float %3879, %3288
  %3946 = fsub fast float %3880, %3289
  %3947 = fsub fast float %3881, %3290
  %3948 = fmul fast float %3945, %3842
  %3949 = fmul fast float %3946, %3842
  %3950 = fmul fast float %3947, %3842
  %3951 = fadd fast float %3948, %3288
  %3952 = fadd fast float %3949, %3289
  %3953 = fadd fast float %3950, %3290
  %3954 = fadd fast float %3933, %3252
  %3955 = fadd fast float %3934, %3253
  %3956 = fadd fast float %3935, %3254
  %3957 = call float @dx.op.dot3.f32(i32 55, float %3954, float %3955, float %3956, float %3954, float %3955, float %3956)  ; Dot3(ax,ay,az,bx,by,bz)
  %3958 = call float @dx.op.unary.f32(i32 25, float %3957)  ; Rsqrt(value)
  %3959 = fmul fast float %3954, %3958
  %3960 = fmul fast float %3955, %3958
  %3961 = fmul fast float %3956, %3958
  %3962 = fsub fast float %3959, %3252
  %3963 = fsub fast float %3960, %3253
  %3964 = fsub fast float %3961, %3254
  %3965 = fmul fast float %3962, %3842
  %3966 = fmul fast float %3963, %3842
  %3967 = fmul fast float %3964, %3842
  %3968 = fadd fast float %3965, %3252
  %3969 = fadd fast float %3966, %3253
  %3970 = fadd fast float %3967, %3254
  %3971 = call float @dx.op.binary.f32(i32 36, float %3264, float %3890)  ; FMin(a,b)
  %3972 = fsub fast float %3971, %3264
  %3973 = fmul fast float %3972, %3842
  %3974 = fadd fast float %3973, %3264
  %3975 = fsub fast float %3903, %3291
  %3976 = fmul fast float %3975, %3842
  %3977 = fadd fast float %3976, %3291
  br label %3978

; <label>:3978                                    ; preds = %3840, %3802, %3704
  %3979 = phi float [ %3951, %3840 ], [ %3288, %3802 ], [ %3288, %3704 ]
  %3980 = phi float [ %3952, %3840 ], [ %3289, %3802 ], [ %3289, %3704 ]
  %3981 = phi float [ %3953, %3840 ], [ %3290, %3802 ], [ %3290, %3704 ]
  %3982 = phi float [ %3968, %3840 ], [ %3252, %3802 ], [ %3252, %3704 ]
  %3983 = phi float [ %3969, %3840 ], [ %3253, %3802 ], [ %3253, %3704 ]
  %3984 = phi float [ %3970, %3840 ], [ %3254, %3802 ], [ %3254, %3704 ]
  %3985 = phi float [ %3942, %3840 ], [ %3303, %3802 ], [ %3303, %3704 ]
  %3986 = phi float [ %3943, %3840 ], [ %3304, %3802 ], [ %3304, %3704 ]
  %3987 = phi float [ %3944, %3840 ], [ %3305, %3802 ], [ %3305, %3704 ]
  %3988 = phi float [ %3977, %3840 ], [ %3291, %3802 ], [ %3291, %3704 ]
  %3989 = phi float [ %3974, %3840 ], [ %3264, %3802 ], [ %3264, %3704 ]
  br i1 %3702, label %3990, label %4263

; <label>:3990                                    ; preds = %3978
  %3991 = call float @dx.op.unary.f32(i32 23, float %3989)  ; Log(value)
  %3992 = fmul fast float %3991, 4.000000e+00
  %3993 = call float @dx.op.unary.f32(i32 21, float %3992)  ; Exp(value)
  %3994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %3995 = extractvalue %dx.types.CBufRet.f32 %3994, 0
  %3996 = fmul fast float %3995, %65
  %3997 = fmul fast float %3995, %66
  %3998 = fmul fast float %3995, %67
  %3999 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4000 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4001 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %4002 = call float @dx.op.unary.f32(i32 23, float %3999)  ; Log(value)
  %4003 = call float @dx.op.unary.f32(i32 23, float %4000)  ; Log(value)
  %4004 = call float @dx.op.unary.f32(i32 23, float %4001)  ; Log(value)
  %4005 = fmul fast float %4002, 4.000000e+00
  %4006 = fmul fast float %4003, 4.000000e+00
  %4007 = fmul fast float %4004, 4.000000e+00
  %4008 = call float @dx.op.unary.f32(i32 21, float %4005)  ; Exp(value)
  %4009 = call float @dx.op.unary.f32(i32 21, float %4006)  ; Exp(value)
  %4010 = call float @dx.op.unary.f32(i32 21, float %4007)  ; Exp(value)
  %4011 = fadd fast float %4009, %4008
  %4012 = fadd fast float %4011, %4010
  %4013 = fdiv fast float 1.000000e+00, %4012
  %4014 = fmul fast float %4013, %4008
  %4015 = fcmp fast ogt float %74, 0.000000e+00
  %4016 = fcmp fast ogt float %75, 0.000000e+00
  %4017 = fcmp fast ogt float %76, 0.000000e+00
  %4018 = fcmp fast olt float %74, 0.000000e+00
  %4019 = fcmp fast olt float %75, 0.000000e+00
  %4020 = fcmp fast olt float %76, 0.000000e+00
  %4021 = zext i1 %4015 to i32
  %4022 = zext i1 %4016 to i32
  %4023 = zext i1 %4017 to i32
  %4024 = zext i1 %4018 to i32
  %4025 = zext i1 %4019 to i32
  %4026 = zext i1 %4020 to i32
  %4027 = sub nsw i32 %4021, %4024
  %4028 = sub nsw i32 %4022, %4025
  %4029 = sub nsw i32 %4023, %4026
  %4030 = call float @dx.op.unary.f32(i32 83, float %3996)  ; DerivCoarseX(value)
  %4031 = call float @dx.op.unary.f32(i32 83, float %3997)  ; DerivCoarseX(value)
  %4032 = call float @dx.op.unary.f32(i32 83, float %3998)  ; DerivCoarseX(value)
  %4033 = call float @dx.op.unary.f32(i32 84, float %3996)  ; DerivCoarseY(value)
  %4034 = call float @dx.op.unary.f32(i32 84, float %3997)  ; DerivCoarseY(value)
  %4035 = call float @dx.op.unary.f32(i32 84, float %3998)  ; DerivCoarseY(value)
  %4036 = fcmp fast ole float %273, %4014
  %4037 = fmul fast float %4013, %4011
  %4038 = fcmp fast ole float %273, %4037
  %4039 = select i1 %4038, float %3998, float %3996
  %4040 = select i1 %4038, float %3996, float %3997
  %4041 = select i1 %4036, float %3997, float %4039
  %4042 = select i1 %4036, float %3998, float %4040
  %4043 = select i1 %4038, float %4032, float %4030
  %4044 = select i1 %4038, float %4030, float %4031
  %4045 = select i1 %4036, float %4031, float %4043
  %4046 = select i1 %4036, float %4032, float %4044
  %4047 = select i1 %4038, float %4035, float %4033
  %4048 = select i1 %4038, float %4033, float %4034
  %4049 = select i1 %4036, float %4034, float %4047
  %4050 = select i1 %4036, float %4035, float %4048
  %4051 = call float @dx.op.unary.f32(i32 27, float %4041)  ; Round_ni(value)
  %4052 = call float @dx.op.unary.f32(i32 27, float %4042)  ; Round_ni(value)
  %4053 = fptosi float %4051 to i32
  %4054 = fptosi float %4052 to i32
  %4055 = xor i32 %4054, %4053
  %4056 = sitofp i32 %4055 to float
  %4057 = fptosi float %4056 to i32
  %4058 = sitofp i32 %4057 to float
  %4059 = fmul fast float %4058, 0x3FE3C6EF40000000
  %4060 = frem fast float %4051, 2.560000e+02
  %4061 = frem fast float %4052, 2.560000e+02
  %4062 = fptoui float %4060 to i32
  %4063 = fptoui float %4061 to i32
  %4064 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %39, i32 0, i32 %4062, i32 %4063, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4065 = extractvalue %dx.types.ResRet.f32 %4064, 0
  %4066 = extractvalue %dx.types.ResRet.f32 %4064, 1
  %4067 = extractvalue %dx.types.ResRet.f32 %4064, 2
  %4068 = fadd fast float %4065, %4059
  %4069 = fadd fast float %4066, %4059
  %4070 = fadd fast float %4067, %4059
  %4071 = call float @dx.op.unary.f32(i32 22, float %4068)  ; Frc(value)
  %4072 = call float @dx.op.unary.f32(i32 22, float %4069)  ; Frc(value)
  %4073 = call float @dx.op.unary.f32(i32 22, float %4070)  ; Frc(value)
  %4074 = fmul fast float %4073, 0x401921FB60000000
  %4075 = call float @dx.op.unary.f32(i32 13, float %4074)  ; Sin(value)
  %4076 = call float @dx.op.unary.f32(i32 12, float %4074)  ; Cos(value)
  %4077 = fsub fast float -0.000000e+00, %4076
  %4078 = fmul fast float %4076, %4041
  %4079 = call float @dx.op.tertiary.f32(i32 46, float %4075, float %4042, float %4078)  ; FMad(a,b,c)
  %4080 = fmul fast float %4075, %4041
  %4081 = call float @dx.op.tertiary.f32(i32 46, float %4077, float %4042, float %4080)  ; FMad(a,b,c)
  %4082 = fadd fast float %4079, %4071
  %4083 = fadd fast float %4081, %4072
  %4084 = extractvalue %dx.types.CBufRet.f32 %3994, 3
  %4085 = bitcast float %4084 to i32
  %4086 = icmp eq i32 %4085, 0
  br i1 %4086, label %4125, label %4087

; <label>:4087                                    ; preds = %3990
  %4088 = add i32 %4085, 0
  %4089 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4088, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4090 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4089, %dx.types.Handle %113, float %4082, float %4083, float undef, float undef, i32 0, i32 0, i32 undef, float %4045, float %4046, float undef, float %4049, float %4050, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4091 = extractvalue %dx.types.ResRet.f32 %4090, 0
  %4092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4093 = extractvalue %dx.types.CBufRet.f32 %4092, 1
  %4094 = extractvalue %dx.types.CBufRet.f32 %4092, 2
  %4095 = fsub fast float 1.000000e+00, %3700
  %4096 = call float @dx.op.binary.f32(i32 35, float %4095, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4097 = bitcast float %3700 to i32
  %4098 = sitofp i32 %4097 to float
  %4099 = fadd fast float %4098, 0xC1CFBF8940000000
  %4100 = fmul fast float %4094, %4099
  %4101 = fadd fast float %4100, 0x41CFBF8940000000
  %4102 = fptosi float %4101 to i32
  %4103 = bitcast i32 %4102 to float
  %4104 = bitcast float %4096 to i32
  %4105 = sitofp i32 %4104 to float
  %4106 = fadd fast float %4105, 0xC1CFBF8940000000
  %4107 = fmul fast float %4106, %4094
  %4108 = fadd fast float %4107, 0x41CFBF8940000000
  %4109 = fptosi float %4108 to i32
  %4110 = bitcast i32 %4109 to float
  %4111 = fmul fast float %4103, %4093
  %4112 = fmul fast float %4110, %4093
  %4113 = fsub fast float %4096, %4111
  %4114 = fadd fast float %4112, %4096
  %4115 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4116 = call float @dx.op.unary.f32(i32 7, float %4114)  ; Saturate(value)
  %4117 = fsub fast float %4091, %4115
  %4118 = fsub fast float %4116, %4115
  %4119 = bitcast float %4118 to i32
  %4120 = sub nsw i32 2129859010, %4119
  %4121 = bitcast i32 %4120 to float
  %4122 = fmul fast float %4121, %4117
  %4123 = call float @dx.op.unary.f32(i32 7, float %4122)  ; Saturate(value)
  %4124 = fcmp fast olt float %4123, 0x3F70101020000000
  br i1 %4124, label %4263, label %4125

; <label>:4125                                    ; preds = %4087, %3990
  %4126 = phi float [ %4123, %4087 ], [ %3700, %3990 ]
  %4127 = fmul fast float %4126, %3993
  %4128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.i32 %4128, 1
  %4130 = extractvalue %dx.types.CBufRet.i32 %4128, 0
  %4131 = add i32 %4130, 0
  %4132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4131, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4133 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4132, %dx.types.Handle %112, float %4082, float %4083, float undef, float undef, i32 0, i32 0, i32 undef, float %4045, float %4046, float undef, float %4049, float %4050, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4134 = extractvalue %dx.types.ResRet.f32 %4133, 0
  %4135 = extractvalue %dx.types.ResRet.f32 %4133, 1
  %4136 = extractvalue %dx.types.ResRet.f32 %4133, 2
  %4137 = extractvalue %dx.types.ResRet.f32 %4133, 3
  %4138 = and i32 %4129, 255
  %4139 = uitofp i32 %4138 to float
  %4140 = lshr i32 %4129, 8
  %4141 = and i32 %4140, 255
  %4142 = uitofp i32 %4141 to float
  %4143 = fmul fast float %4137, %4139
  %4144 = fadd fast float %4143, %4142
  %4145 = fmul fast float %4144, 0x3F70101000000000
  %4146 = fadd fast float %4145, 0xBFB99999A0000000
  %4147 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4148 = fmul fast float %4147, 0x3FF1C71C80000000
  %4149 = call float @dx.op.binary.f32(i32 36, float %4145, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4150 = fsub fast float 1.000000e+00, %4148
  %4151 = call float @dx.op.unary.f32(i32 7, float %4150)  ; Saturate(value)
  %4152 = fmul fast float %4151, %4134
  %4153 = fmul fast float %4151, %4135
  %4154 = fmul fast float %4151, %4136
  %4155 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4156 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4157 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4158 = fmul fast float %4148, %4134
  %4159 = fmul fast float %4148, %4135
  %4160 = fmul fast float %4148, %4136
  %4161 = fadd fast float %4158, %4149
  %4162 = fadd fast float %4159, %4149
  %4163 = fadd fast float %4160, %4149
  %4164 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4165 = call float @dx.op.unary.f32(i32 7, float %4162)  ; Saturate(value)
  %4166 = call float @dx.op.unary.f32(i32 7, float %4163)  ; Saturate(value)
  %4167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.i32 %4167, 3
  %4169 = extractvalue %dx.types.CBufRet.i32 %4167, 2
  %4170 = add i32 %4169, 0
  %4171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4172 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4171, %dx.types.Handle %112, float %4082, float %4083, float undef, float undef, i32 0, i32 0, i32 undef, float %4045, float %4046, float undef, float %4049, float %4050, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4173 = extractvalue %dx.types.ResRet.f32 %4172, 0
  %4174 = extractvalue %dx.types.ResRet.f32 %4172, 1
  %4175 = extractvalue %dx.types.ResRet.f32 %4172, 2
  %4176 = extractvalue %dx.types.ResRet.f32 %4172, 3
  %4177 = and i32 %4168, 255
  %4178 = uitofp i32 %4177 to float
  %4179 = lshr i32 %4168, 8
  %4180 = and i32 %4179, 255
  %4181 = uitofp i32 %4180 to float
  %4182 = lshr i32 %4168, 16
  %4183 = and i32 %4182, 255
  %4184 = uitofp i32 %4183 to float
  %4185 = fmul fast float %4184, 0x3F70101000000000
  %4186 = fmul fast float %4173, %4178
  %4187 = fadd fast float %4186, %4181
  %4188 = fmul fast float %4187, 0x3F70101000000000
  %4189 = fadd fast float %4174, -5.000000e-01
  %4190 = fadd fast float %4176, -5.000000e-01
  %4191 = fmul fast float %4189, %4185
  %4192 = fmul fast float %4190, %4185
  %4193 = fadd fast float %4191, 5.000000e-01
  %4194 = fadd fast float %4192, 5.000000e-01
  %4195 = fmul fast float %4193, 2.000000e+00
  %4196 = fadd fast float %4195, -1.000000e+00
  %4197 = fmul fast float %4194, 2.000000e+00
  %4198 = fadd fast float %4197, -1.000000e+00
  %4199 = fadd fast float %4196, %4198
  %4200 = fmul fast float %4199, 5.000000e-01
  %4201 = fsub fast float %4196, %4198
  %4202 = fmul fast float %4201, 5.000000e-01
  %4203 = call float @dx.op.unary.f32(i32 6, float %4200)  ; FAbs(value)
  %4204 = fsub fast float 1.000000e+00, %4203
  %4205 = call float @dx.op.unary.f32(i32 6, float %4202)  ; FAbs(value)
  %4206 = fsub fast float %4204, %4205
  %4207 = call float @dx.op.dot3.f32(i32 55, float %4200, float %4202, float %4206, float %4200, float %4202, float %4206)  ; Dot3(ax,ay,az,bx,by,bz)
  %4208 = call float @dx.op.unary.f32(i32 25, float %4207)  ; Rsqrt(value)
  %4209 = fmul fast float %4200, %4208
  %4210 = fmul fast float %4202, %4208
  %4211 = select i1 %4038, i32 %4028, i32 %4029
  %4212 = select i1 %4036, i32 %4027, i32 %4211
  %4213 = sitofp i32 %4212 to float
  %4214 = fmul fast float %4206, %4213
  %4215 = fmul fast float %4214, %4208
  %4216 = select i1 %4038, float %4215, float %4210
  %4217 = select i1 %4038, float %4210, float %4215
  %4218 = select i1 %4036, float %4215, float %4209
  %4219 = select i1 %4036, float %4210, float %4216
  %4220 = select i1 %4036, float %4209, float %4217
  %4221 = fsub fast float %4155, %3985
  %4222 = fsub fast float %4156, %3986
  %4223 = fsub fast float %4157, %3987
  %4224 = fmul fast float %4221, %4127
  %4225 = fmul fast float %4222, %4127
  %4226 = fmul fast float %4223, %4127
  %4227 = fadd fast float %4224, %3985
  %4228 = fadd fast float %4225, %3986
  %4229 = fadd fast float %4226, %3987
  %4230 = fsub fast float %4164, %3979
  %4231 = fsub fast float %4165, %3980
  %4232 = fsub fast float %4166, %3981
  %4233 = fmul fast float %4230, %4127
  %4234 = fmul fast float %4231, %4127
  %4235 = fmul fast float %4232, %4127
  %4236 = fadd fast float %4233, %3979
  %4237 = fadd fast float %4234, %3980
  %4238 = fadd fast float %4235, %3981
  %4239 = fadd fast float %4218, %3982
  %4240 = fadd fast float %4219, %3983
  %4241 = fadd fast float %4220, %3984
  %4242 = call float @dx.op.dot3.f32(i32 55, float %4239, float %4240, float %4241, float %4239, float %4240, float %4241)  ; Dot3(ax,ay,az,bx,by,bz)
  %4243 = call float @dx.op.unary.f32(i32 25, float %4242)  ; Rsqrt(value)
  %4244 = fmul fast float %4239, %4243
  %4245 = fmul fast float %4240, %4243
  %4246 = fmul fast float %4241, %4243
  %4247 = fsub fast float %4244, %3982
  %4248 = fsub fast float %4245, %3983
  %4249 = fsub fast float %4246, %3984
  %4250 = fmul fast float %4247, %4127
  %4251 = fmul fast float %4248, %4127
  %4252 = fmul fast float %4249, %4127
  %4253 = fadd fast float %4250, %3982
  %4254 = fadd fast float %4251, %3983
  %4255 = fadd fast float %4252, %3984
  %4256 = call float @dx.op.binary.f32(i32 36, float %3989, float %4175)  ; FMin(a,b)
  %4257 = fsub fast float %4256, %3989
  %4258 = fmul fast float %4257, %4127
  %4259 = fadd fast float %4258, %3989
  %4260 = fsub fast float %4188, %3988
  %4261 = fmul fast float %4260, %4127
  %4262 = fadd fast float %4261, %3988
  br label %4263

; <label>:4263                                    ; preds = %4125, %4087, %3978, %3694
  %4264 = phi float [ %4236, %4125 ], [ %3979, %4087 ], [ %3979, %3978 ], [ %3288, %3694 ]
  %4265 = phi float [ %4237, %4125 ], [ %3980, %4087 ], [ %3980, %3978 ], [ %3289, %3694 ]
  %4266 = phi float [ %4238, %4125 ], [ %3981, %4087 ], [ %3981, %3978 ], [ %3290, %3694 ]
  %4267 = phi float [ %4253, %4125 ], [ %3982, %4087 ], [ %3982, %3978 ], [ %3252, %3694 ]
  %4268 = phi float [ %4254, %4125 ], [ %3983, %4087 ], [ %3983, %3978 ], [ %3253, %3694 ]
  %4269 = phi float [ %4255, %4125 ], [ %3984, %4087 ], [ %3984, %3978 ], [ %3254, %3694 ]
  %4270 = phi float [ %4227, %4125 ], [ %3985, %4087 ], [ %3985, %3978 ], [ %3303, %3694 ]
  %4271 = phi float [ %4228, %4125 ], [ %3986, %4087 ], [ %3986, %3978 ], [ %3304, %3694 ]
  %4272 = phi float [ %4229, %4125 ], [ %3987, %4087 ], [ %3987, %3978 ], [ %3305, %3694 ]
  %4273 = phi float [ %4262, %4125 ], [ %3988, %4087 ], [ %3988, %3978 ], [ %3291, %3694 ]
  %4274 = phi float [ %4259, %4125 ], [ %3989, %4087 ], [ %3989, %3978 ], [ %3264, %3694 ]
  %4275 = fcmp fast une float %3698, 0.000000e+00
  br i1 %4275, label %4276, label %4445

; <label>:4276                                    ; preds = %4263
  %4277 = call float @dx.op.dot3.f32(i32 55, float %203, float %204, float %205, float %203, float %204, float %205)  ; Dot3(ax,ay,az,bx,by,bz)
  %4278 = call float @dx.op.unary.f32(i32 25, float %4277)  ; Rsqrt(value)
  %4279 = fmul fast float %203, %4278
  %4280 = fsub fast float -0.000000e+00, %4279
  %4281 = fmul fast float %204, %4278
  %4282 = fsub fast float -0.000000e+00, %4281
  %4283 = fmul fast float %205, %4278
  %4284 = fsub fast float -0.000000e+00, %4283
  %4285 = call float @dx.op.dot3.f32(i32 55, float %4280, float %4282, float %4284, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %4286 = fmul fast float %3698, 2.500000e+00
  %4287 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4288 = fmul fast float %3698, 0x4013FFFFE0000000
  %4289 = fadd fast float %4288, 0xBFFFFFFFE0000000
  %4290 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4291 = fmul fast float %3698, 0x4004000020000000
  %4292 = fadd fast float %4291, 0xBFF8000040000000
  %4293 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4294 = fmul fast float %3270, 1.000000e+01
  %4295 = call float @dx.op.unary.f32(i32 7, float %4294)  ; Saturate(value)
  %4296 = fmul fast float %4295, 2.000000e+00
  %4297 = fsub fast float 3.000000e+00, %4296
  %4298 = fmul fast float %4295, %4295
  %4299 = fmul fast float %4298, %4297
  %4300 = fsub fast float 1.000000e+00, %4299
  %4301 = fsub fast float 0x3FE3333340000000, %4273
  %4302 = fmul fast float %4301, 0x400AAAAAA0000000
  %4303 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4304 = fmul fast float %4300, %4303
  %4305 = fmul fast float %4270, 0x3FEA2B8620000000
  %4306 = fmul fast float %4271, 0x3FEA2B8620000000
  %4307 = fmul fast float %4272, 0x3FEA2B8620000000
  %4308 = fadd fast float %4305, 0x3FC81DFBA0000000
  %4309 = fmul fast float %4308, %4270
  %4310 = fadd fast float %4309, 0x3F910E6020000000
  %4311 = fadd fast float %4306, 0x3FC81DFBA0000000
  %4312 = fmul fast float %4311, %4271
  %4313 = fadd fast float %4312, 0x3F910E6020000000
  %4314 = fadd fast float %4307, 0x3FC81DFBA0000000
  %4315 = fmul fast float %4314, %4272
  %4316 = fadd fast float %4315, 0x3F910E6020000000
  %4317 = call float @dx.op.unary.f32(i32 7, float %4310)  ; Saturate(value)
  %4318 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4319 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4320 = fsub fast float %4317, %4270
  %4321 = fsub fast float %4318, %4271
  %4322 = fsub fast float %4319, %4272
  %4323 = fmul fast float %4320, %4287
  %4324 = fmul fast float %4323, %4304
  %4325 = fmul fast float %4321, %4287
  %4326 = fmul fast float %4325, %4304
  %4327 = fmul fast float %4322, %4287
  %4328 = fmul fast float %4327, %4304
  %4329 = fadd fast float %4324, %4270
  %4330 = fadd fast float %4326, %4271
  %4331 = fadd fast float %4328, %4272
  %4332 = fmul fast float %4274, %4274
  %4333 = fmul fast float %4332, %4332
  %4334 = fadd fast float %4290, 1.000000e+00
  %4335 = fsub fast float %4334, %4304
  %4336 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4337 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4338 = call float @dx.op.unary.f32(i32 7, float %4337)  ; Saturate(value)
  %4339 = fsub fast float 1.000000e+00, %4333
  %4340 = call float @dx.op.binary.f32(i32 36, float %4336, float %4339)  ; FMin(a,b)
  %4341 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4342 = call float @dx.op.binary.f32(i32 35, float %4340, float %4341)  ; FMax(a,b)
  %4343 = fadd fast float %4338, 0xBFE4CCCCC0000000
  %4344 = fmul fast float %4343, 0x4006DB6DA0000000
  %4345 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  %4346 = fmul fast float %4345, 2.000000e+00
  %4347 = fsub fast float 3.000000e+00, %4346
  %4348 = bitcast float %4264 to i32
  %4349 = ashr i32 %4348, 1
  %4350 = add nsw i32 %4349, 532487669
  %4351 = bitcast i32 %4350 to float
  %4352 = fsub fast float 1.000000e+00, %4351
  %4353 = bitcast float %4352 to i32
  %4354 = sub nsw i32 2129859010, %4353
  %4355 = bitcast i32 %4354 to float
  %4356 = fmul fast float %4355, 2.000000e+00
  %4357 = bitcast float %4265 to i32
  %4358 = ashr i32 %4357, 1
  %4359 = add nsw i32 %4358, 532487669
  %4360 = bitcast i32 %4359 to float
  %4361 = fsub fast float 1.000000e+00, %4360
  %4362 = bitcast float %4361 to i32
  %4363 = sub nsw i32 2129859010, %4362
  %4364 = bitcast i32 %4363 to float
  %4365 = fmul fast float %4364, 2.000000e+00
  %4366 = bitcast float %4266 to i32
  %4367 = ashr i32 %4366, 1
  %4368 = add nsw i32 %4367, 532487669
  %4369 = bitcast i32 %4368 to float
  %4370 = fsub fast float 1.000000e+00, %4369
  %4371 = bitcast float %4370 to i32
  %4372 = sub nsw i32 2129859010, %4371
  %4373 = bitcast i32 %4372 to float
  %4374 = fmul fast float %4373, 2.000000e+00
  %4375 = fsub fast float 0x4002A9FBE0000000, %4356
  %4376 = fadd fast float %4356, 0x3FD54FDF00000000
  %4377 = bitcast float %4376 to i32
  %4378 = sub nsw i32 2129859010, %4377
  %4379 = bitcast i32 %4378 to float
  %4380 = fmul fast float %4379, %4375
  %4381 = fmul fast float %4380, %4380
  %4382 = fsub fast float 0x4002A9FBE0000000, %4365
  %4383 = fadd fast float %4365, 0x3FD54FDF00000000
  %4384 = bitcast float %4383 to i32
  %4385 = sub nsw i32 2129859010, %4384
  %4386 = bitcast i32 %4385 to float
  %4387 = fmul fast float %4386, %4382
  %4388 = fmul fast float %4387, %4387
  %4389 = fsub fast float 0x4002A9FBE0000000, %4374
  %4390 = fadd fast float %4374, 0x3FD54FDF00000000
  %4391 = bitcast float %4390 to i32
  %4392 = sub nsw i32 2129859010, %4391
  %4393 = bitcast i32 %4392 to float
  %4394 = fmul fast float %4393, %4389
  %4395 = fmul fast float %4394, %4394
  %4396 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4381)  ; FMax(a,b)
  %4397 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4388)  ; FMax(a,b)
  %4398 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4395)  ; FMax(a,b)
  %4399 = fsub fast float 1.000000e+00, %4285
  %4400 = fadd fast float %4399, %4300
  %4401 = call float @dx.op.unary.f32(i32 7, float %4400)  ; Saturate(value)
  %4402 = fsub fast float 1.000000e+00, %3679
  %4403 = fmul fast float %4342, %4402
  %4404 = fmul fast float %4345, %4345
  %4405 = fmul fast float %4404, %4403
  %4406 = fmul fast float %4405, %4347
  %4407 = fmul fast float %4402, 0xBFE99999A0000000
  %4408 = fmul fast float %4407, %4287
  %4409 = fmul fast float %4408, %4304
  %4410 = fadd fast float %4409, 1.000000e+00
  %4411 = fadd fast float %4273, -1.000000e+00
  %4412 = fmul fast float %4410, %4411
  %4413 = fadd fast float %4412, 1.000000e+00
  %4414 = fsub fast float %4396, %4264
  %4415 = fsub fast float %4397, %4265
  %4416 = fsub fast float %4398, %4266
  %4417 = fmul fast float %4406, %4414
  %4418 = fmul fast float %4406, %4415
  %4419 = fmul fast float %4406, %4416
  %4420 = fadd fast float %4417, %4264
  %4421 = fadd fast float %4418, %4265
  %4422 = fadd fast float %4419, %4266
  %4423 = fsub fast float %123, %4267
  %4424 = fsub fast float %124, %4268
  %4425 = fsub fast float %125, %4269
  %4426 = fmul fast float %4406, %4423
  %4427 = fmul fast float %4406, %4424
  %4428 = fmul fast float %4406, %4425
  %4429 = fadd fast float %4426, %4267
  %4430 = fadd fast float %4427, %4268
  %4431 = fadd fast float %4428, %4269
  %4432 = fmul fast float %4406, %4401
  %4433 = call float @dx.op.unary.f32(i32 7, float %4413)  ; Saturate(value)
  %4434 = fsub fast float 1.000000e+00, %4433
  %4435 = fmul fast float %4432, %4434
  %4436 = fadd fast float %4435, %4433
  %4437 = fsub fast float 1.000000e+00, %4274
  %4438 = fmul fast float %4406, %4437
  %4439 = fadd fast float %4438, %4274
  %4440 = call float @dx.op.dot3.f32(i32 55, float %4429, float %4430, float %4431, float %4429, float %4430, float %4431)  ; Dot3(ax,ay,az,bx,by,bz)
  %4441 = call float @dx.op.unary.f32(i32 25, float %4440)  ; Rsqrt(value)
  %4442 = fmul fast float %4429, %4441
  %4443 = fmul fast float %4430, %4441
  %4444 = fmul fast float %4431, %4441
  br label %4445

; <label>:4445                                    ; preds = %4276, %4263
  %4446 = phi float [ %4420, %4276 ], [ %4264, %4263 ]
  %4447 = phi float [ %4421, %4276 ], [ %4265, %4263 ]
  %4448 = phi float [ %4422, %4276 ], [ %4266, %4263 ]
  %4449 = phi float [ %4442, %4276 ], [ %4267, %4263 ]
  %4450 = phi float [ %4443, %4276 ], [ %4268, %4263 ]
  %4451 = phi float [ %4444, %4276 ], [ %4269, %4263 ]
  %4452 = phi float [ %4329, %4276 ], [ %4270, %4263 ]
  %4453 = phi float [ %4330, %4276 ], [ %4271, %4263 ]
  %4454 = phi float [ %4331, %4276 ], [ %4272, %4263 ]
  %4455 = phi float [ %4436, %4276 ], [ %4273, %4263 ]
  %4456 = phi float [ %4439, %4276 ], [ %4274, %4263 ]
  %4457 = icmp eq i32 %63, 0
  br i1 %4457, label %4488, label %4458

; <label>:4458                                    ; preds = %4445
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 2
  %4461 = extractvalue %dx.types.CBufRet.f32 %4459, 3
  %4462 = fmul fast float %4460, %116
  %4463 = fmul fast float %4461, %117
  %4464 = fmul fast float %4462, 1.024000e+03
  %4465 = fmul fast float %4463, 1.024000e+03
  %4466 = fadd fast float %4464, -5.120000e+02
  %4467 = fadd fast float %4465, -5.120000e+02
  %4468 = fmul fast float %4462, 0x4081BEDF00000000
  %4469 = fadd fast float %4468, 0xC071BEDF00000000
  %4470 = call float @dx.op.unary.f32(i32 22, float %4469)  ; Frc(value)
  %4471 = fmul fast float %4466, %4470
  %4472 = fadd fast float %4471, %4467
  %4473 = fmul fast float %4463, 0x4073BEBE20000000
  %4474 = fadd fast float %4473, 0xC063BEBE20000000
  %4475 = call float @dx.op.unary.f32(i32 22, float %4474)  ; Frc(value)
  %4476 = fmul fast float %4467, %4475
  %4477 = fadd fast float %4476, %4466
  %4478 = fmul fast float %4472, %4477
  %4479 = call float @dx.op.unary.f32(i32 22, float %4478)  ; Frc(value)
  %4480 = add i32 %304, 12
  %4481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %4480, i32 undef)  ; BufferLoad(srv,index,wot)
  %4482 = extractvalue %dx.types.ResRet.i32 %4481, 0
  %4483 = and i32 %4482, 255
  %4484 = uitofp i32 %4483 to float
  %4485 = fmul fast float %4484, 0x3F70101020000000
  %4486 = fcmp fast olt float %4479, %4485
  br i1 %4486, label %4487, label %4488

; <label>:4487                                    ; preds = %4458
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %4488

; <label>:4488                                    ; preds = %4487, %4458, %4445
  %4489 = fsub fast float -0.000000e+00, %205
  %4490 = call float @dx.op.dot3.f32(i32 55, float %203, float %204, float %205, float %203, float %204, float %205)  ; Dot3(ax,ay,az,bx,by,bz)
  %4491 = call float @dx.op.unary.f32(i32 25, float %4490)  ; Rsqrt(value)
  %4492 = fmul fast float %4491, %203
  %4493 = fmul fast float %4491, %204
  %4494 = fmul fast float %4491, %205
  %4495 = fsub fast float -0.000000e+00, %4492
  %4496 = fsub fast float -0.000000e+00, %4493
  %4497 = fsub fast float -0.000000e+00, %4494
  %4498 = select i1 %262, float 0.000000e+00, float %4448
  %4499 = call float @dx.op.dot3.f32(i32 55, float %4449, float %4450, float %4451, float %4495, float %4496, float %4497)  ; Dot3(ax,ay,az,bx,by,bz)
  %4500 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4501 = call float @dx.op.dot3.f32(i32 55, float %4492, float %4493, float %4494, float %4449, float %4450, float %4451)  ; Dot3(ax,ay,az,bx,by,bz)
  %4502 = fmul fast float %4501, 2.000000e+00
  %4503 = fmul fast float %4502, %4449
  %4504 = fmul fast float %4502, %4450
  %4505 = fmul fast float %4502, %4451
  %4506 = fsub fast float %4492, %4503
  %4507 = fsub fast float %4493, %4504
  %4508 = fsub fast float %4494, %4505
  %4509 = call float @dx.op.binary.f32(i32 36, float %4456, float 1.000000e+00)  ; FMin(a,b)
  %4510 = fsub fast float 1.000000e+00, %4509
  %4511 = bitcast float %4510 to i32
  %4512 = ashr i32 %4511, 1
  %4513 = add nsw i32 %4512, 532487669
  %4514 = bitcast i32 %4513 to float
  %4515 = fsub fast float 1.000000e+00, %4455
  %4516 = call float @dx.op.binary.f32(i32 35, float %4515, float 0x3F847AE140000000)  ; FMax(a,b)
  %4517 = fmul fast float %4516, %4516
  %4518 = fmul fast float %4517, %4517
  %4519 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4514, float %4518, float %4519, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4521 = extractvalue %dx.types.ResRet.f32 %4520, 0
  %4522 = fsub fast float 1.000000e+00, %4456
  %4523 = bitcast float %4522 to i32
  %4524 = sub nsw i32 2129859010, %4523
  %4525 = bitcast i32 %4524 to float
  %4526 = fsub fast float 1.000000e+00, %84
  %4527 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %4528 = call float @dx.op.binary.f32(i32 35, float %4527, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4529 = fdiv fast float %4526, %4528
  %4530 = call float @dx.op.dot3.f32(i32 55, float %4449, float %4450, float %4451, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %4531 = call float @dx.op.unary.f32(i32 7, float %4530)  ; Saturate(value)
  %4532 = fmul fast float %4531, 5.000000e-01
  %4533 = fadd fast float %4532, 5.000000e-01
  %4534 = fmul fast float %4533, %84
  %4535 = call float @dx.op.dot3.f32(i32 55, float %4449, float %4450, float %4451, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %4536 = call float @dx.op.unary.f32(i32 7, float %4535)  ; Saturate(value)
  %4537 = fmul fast float %4536, %4529
  %4538 = fadd fast float %4534, %4537
  %4539 = fsub fast float 5.000000e-01, %4532
  %4540 = fmul fast float %4539, %4452
  %4541 = fmul fast float %4539, %4453
  %4542 = fmul fast float %4539, %4454
  %4543 = fadd fast float %4538, %4540
  %4544 = fadd fast float %4538, %4541
  %4545 = fadd fast float %4538, %4542
  %4546 = call float @dx.op.dot3.f32(i32 55, float %4506, float %4507, float %4508, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %4547 = call float @dx.op.unary.f32(i32 7, float %4546)  ; Saturate(value)
  %4548 = fmul fast float %4547, 5.000000e-01
  %4549 = fadd fast float %4548, 5.000000e-01
  %4550 = fmul fast float %4549, %84
  %4551 = call float @dx.op.dot3.f32(i32 55, float %4506, float %4507, float %4508, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %4552 = call float @dx.op.unary.f32(i32 7, float %4551)  ; Saturate(value)
  %4553 = fmul fast float %4552, %4529
  %4554 = fadd fast float %4550, %4553
  %4555 = fsub fast float 5.000000e-01, %4548
  %4556 = fmul fast float %4555, %4452
  %4557 = fmul fast float %4555, %4453
  %4558 = fmul fast float %4555, %4454
  %4559 = fadd fast float %4554, %4556
  %4560 = fadd fast float %4554, %4557
  %4561 = fadd fast float %4554, %4558
  %4562 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4564 = extractvalue %dx.types.CBufRet.f32 %4563, 0
  %4565 = call float @dx.op.binary.f32(i32 36, float %4452, float %4564)  ; FMin(a,b)
  %4566 = fmul fast float %4565, %4510
  %4567 = fsub fast float 1.000000e+00, %4566
  %4568 = bitcast float %4567 to i32
  %4569 = sub nsw i32 2129859010, %4568
  %4570 = bitcast i32 %4569 to float
  %4571 = call float @dx.op.binary.f32(i32 36, float %4453, float %4564)  ; FMin(a,b)
  %4572 = fmul fast float %4571, %4510
  %4573 = fsub fast float 1.000000e+00, %4572
  %4574 = bitcast float %4573 to i32
  %4575 = sub nsw i32 2129859010, %4574
  %4576 = bitcast i32 %4575 to float
  %4577 = call float @dx.op.binary.f32(i32 36, float %4454, float %4564)  ; FMin(a,b)
  %4578 = fmul fast float %4577, %4510
  %4579 = fsub fast float 1.000000e+00, %4578
  %4580 = bitcast float %4579 to i32
  %4581 = sub nsw i32 2129859010, %4580
  %4582 = bitcast i32 %4581 to float
  %4583 = fmul fast float %4509, %85
  %4584 = fmul fast float %4583, %4543
  %4585 = fmul fast float %4584, %4570
  %4586 = fmul fast float %4509, %86
  %4587 = fmul fast float %4586, %4544
  %4588 = fmul fast float %4587, %4576
  %4589 = fmul fast float %4509, %87
  %4590 = fmul fast float %4589, %4545
  %4591 = fmul fast float %4590, %4582
  %4592 = call float @dx.op.binary.f32(i32 36, float %4446, float %4564)  ; FMin(a,b)
  %4593 = fmul fast float %4592, %4510
  %4594 = fsub fast float 1.000000e+00, %4593
  %4595 = bitcast float %4594 to i32
  %4596 = sub nsw i32 2129859010, %4595
  %4597 = bitcast i32 %4596 to float
  %4598 = call float @dx.op.binary.f32(i32 36, float %4447, float %4564)  ; FMin(a,b)
  %4599 = fmul fast float %4598, %4510
  %4600 = fsub fast float 1.000000e+00, %4599
  %4601 = bitcast float %4600 to i32
  %4602 = sub nsw i32 2129859010, %4601
  %4603 = bitcast i32 %4602 to float
  %4604 = call float @dx.op.binary.f32(i32 36, float %4498, float %4564)  ; FMin(a,b)
  %4605 = fmul fast float %4604, %4510
  %4606 = fsub fast float 1.000000e+00, %4605
  %4607 = bitcast float %4606 to i32
  %4608 = sub nsw i32 2129859010, %4607
  %4609 = bitcast i32 %4608 to float
  %4610 = fmul fast float %4583, %4559
  %4611 = fmul fast float %4610, %4597
  %4612 = fmul fast float %4586, %4560
  %4613 = fmul fast float %4612, %4603
  %4614 = fmul fast float %4589, %4561
  %4615 = fmul fast float %4614, %4609
  %4616 = call float @dx.op.dot3.f32(i32 55, float %4585, float %4588, float %4591, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4617 = select i1 %262, float 0.000000e+00, float %4585
  %4618 = select i1 %262, float %4616, float %4588
  %4619 = select i1 %262, float 0.000000e+00, float %4591
  %4620 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4613, float %4615, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4621 = select i1 %262, float 0.000000e+00, float %4611
  %4622 = select i1 %262, float %4620, float %4613
  %4623 = select i1 %262, float 0.000000e+00, float %4615
  %4624 = fmul fast float %4500, 9.843750e-01
  %4625 = fmul fast float %4455, 9.843750e-01
  %4626 = fadd fast float %4624, 7.812500e-03
  %4627 = fadd fast float %4625, 7.812500e-03
  %4628 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %56, float %4626, float %4627, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4629 = extractvalue %dx.types.ResRet.f32 %4628, 2
  %4630 = extractvalue %dx.types.ResRet.f32 %4628, 3
  %4631 = fmul fast float %4629, %4446
  %4632 = fmul fast float %4629, %4447
  %4633 = fmul fast float %4629, %4498
  %4634 = fadd fast float %4631, %4630
  %4635 = fadd fast float %4632, %4630
  %4636 = fadd fast float %4633, %4630
  %4637 = fcmp fast ogt float %3265, 0.000000e+00
  br i1 %4637, label %4638, label %4664

; <label>:4638                                    ; preds = %4488
  %4639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %56, float %3265, float %4500, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4640 = extractvalue %dx.types.ResRet.f32 %4639, 0
  %4641 = extractvalue %dx.types.ResRet.f32 %4639, 1
  %4642 = extractvalue %dx.types.ResRet.f32 %4639, 2
  %4643 = fadd fast float %4640, -5.000000e-01
  %4644 = fadd fast float %4641, -5.000000e-01
  %4645 = fadd fast float %4642, -5.000000e-01
  %4646 = fsub fast float 1.000000e+00, %4446
  %4647 = fsub fast float 1.000000e+00, %4447
  %4648 = fsub fast float 1.000000e+00, %4498
  %4649 = fmul fast float %4446, 4.000000e+00
  %4650 = fmul fast float %4649, %4646
  %4651 = fmul fast float %4650, %4643
  %4652 = fmul fast float %4447, 4.000000e+00
  %4653 = fmul fast float %4652, %4647
  %4654 = fmul fast float %4653, %4644
  %4655 = fmul fast float %4498, 4.000000e+00
  %4656 = fmul fast float %4655, %4648
  %4657 = fmul fast float %4656, %4645
  %4658 = fadd fast float %4651, %4634
  %4659 = fadd fast float %4654, %4635
  %4660 = fadd fast float %4657, %4636
  %4661 = call float @dx.op.unary.f32(i32 7, float %4658)  ; Saturate(value)
  %4662 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4663 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  br label %4664

; <label>:4664                                    ; preds = %4638, %4488
  %4665 = phi float [ %4661, %4638 ], [ %4634, %4488 ]
  %4666 = phi float [ %4662, %4638 ], [ %4635, %4488 ]
  %4667 = phi float [ %4663, %4638 ], [ %4636, %4488 ]
  %4668 = call float @dx.op.binary.f32(i32 35, float %4666, float %4667)  ; FMax(a,b)
  %4669 = call float @dx.op.binary.f32(i32 35, float %4665, float %4668)  ; FMax(a,b)
  %4670 = fsub fast float 1.000000e+00, %4669
  %4671 = fmul fast float %4669, %4455
  %4672 = fadd fast float %4671, %4455
  %4673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4674 = extractvalue %dx.types.CBufRet.f32 %4673, 2
  %4675 = extractvalue %dx.types.CBufRet.f32 %4673, 3
  %4676 = fmul fast float %4672, %4674
  %4677 = fadd fast float %4676, %4675
  %4678 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4679 = fsub fast float 1.000000e+00, %4521
  %4680 = fadd fast float %4679, %4678
  %4681 = call float @dx.op.unary.f32(i32 7, float %4680)  ; Saturate(value)
  %4682 = fcmp fast olt float %4681, 1.000000e+00
  br i1 %4682, label %4683, label %5159

; <label>:4683                                    ; preds = %4664
  %4684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.f32 %4684, 2
  %4686 = extractvalue %dx.types.CBufRet.f32 %4684, 3
  %4687 = fmul fast float %4685, %116
  %4688 = fmul fast float %4686, %117
  %4689 = fptoui float %4687 to i32
  %4690 = fptoui float %4688 to i32
  %4691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4692 = extractvalue %dx.types.CBufRet.f32 %4691, 0
  %4693 = extractvalue %dx.types.CBufRet.f32 %4691, 2
  %4694 = extractvalue %dx.types.CBufRet.f32 %4691, 3
  %4695 = fadd fast float %103, -4.000000e+00
  %4696 = call float @dx.op.binary.f32(i32 35, float %4695, float 0.000000e+00)  ; FMax(a,b)
  %4697 = fadd fast float %4696, %4692
  %4698 = fmul fast float %4697, %4693
  %4699 = call float @dx.op.unary.f32(i32 23, float %4698)  ; Log(value)
  %4700 = fmul fast float %4699, %4694
  %4701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.f32 %4701, 2
  %4703 = fmul fast float %4700, %4702
  %4704 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4706 = extractvalue %dx.types.CBufRet.i32 %4705, 1
  %4707 = add i32 %4706, -1
  %4708 = uitofp i32 %4706 to float
  %4709 = fmul fast float %4708, %4704
  %4710 = fptoui float %4709 to i32
  %4711 = call i32 @dx.op.binary.i32(i32 40, i32 %4710, i32 %4707)  ; UMin(a,b)
  %4712 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4713 = extractvalue %dx.types.CBufRet.i32 %4712, 2
  %4714 = extractvalue %dx.types.CBufRet.i32 %4712, 3
  %4715 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4690, i32 %4713, i32 %4689)  ; UMad(a,b,c)
  %4716 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4711, i32 %4714, i32 %4715)  ; UMad(a,b,c)
  %4717 = call float @dx.op.binary.f32(i32 35, float %103, float 0.000000e+00)  ; FMax(a,b)
  %4718 = fptoui float %4717 to i32
  %4719 = lshr i32 %4718, 5
  %4720 = call i32 @dx.op.binary.i32(i32 40, i32 %4719, i32 8191)  ; UMin(a,b)
  %4721 = fsub fast float %3666, %205
  %4722 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4723 = fcmp fast ogt float %4722, 0.000000e+00
  %4724 = fcmp fast ogt float %4508, 0.000000e+00
  %4725 = and i1 %4724, %4723
  br i1 %4725, label %4726, label %4755

; <label>:4726                                    ; preds = %4683
  %4727 = call float @dx.op.dot3.f32(i32 55, float %4506, float %4507, float %4508, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4728 = call float @dx.op.binary.f32(i32 35, float %4727, float -1.000000e+00)  ; FMax(a,b)
  %4729 = call float @dx.op.binary.f32(i32 36, float %4728, float 1.000000e+00)  ; FMin(a,b)
  %4730 = fmul fast float %4729, %4729
  %4731 = fsub fast float 1.000000e+00, %4730
  %4732 = fmul fast float %4731, 0x3FFC6E2300000000
  %4733 = fsub fast float 1.000000e+00, %4732
  %4734 = fcmp fast ogt float %4733, 0.000000e+00
  %4735 = call float @dx.op.unary.f32(i32 24, float %4733)  ; Sqrt(value)
  %4736 = fsub fast float 1.000000e+00, %4735
  %4737 = call float @dx.op.unary.f32(i32 23, float %4736)  ; Log(value)
  %4738 = fmul fast float %4737, 5.000000e+00
  %4739 = call float @dx.op.unary.f32(i32 21, float %4738)  ; Exp(value)
  %4740 = fmul fast float %4739, 0x3FEF591A60000000
  %4741 = fadd fast float %4740, 0x3F94DCB540000000
  %4742 = select i1 %4734, float %4741, float 1.000000e+00
  %4743 = fcmp fast oge float %4742, 1.000000e+00
  %4744 = fmul fast float %4727, 2.000000e+00
  %4745 = fadd fast float %4744, %4508
  %4746 = select i1 %4743, float %4745, float %4508
  %4747 = fsub fast float %4746, %4508
  %4748 = fmul fast float %4747, %4722
  %4749 = fadd fast float %4748, %4508
  %4750 = call float @dx.op.dot3.f32(i32 55, float %4506, float %4507, float %4749, float %4506, float %4507, float %4749)  ; Dot3(ax,ay,az,bx,by,bz)
  %4751 = call float @dx.op.unary.f32(i32 25, float %4750)  ; Rsqrt(value)
  %4752 = fmul fast float %4751, %4506
  %4753 = fmul fast float %4751, %4507
  %4754 = fmul fast float %4749, %4751
  br label %4755

; <label>:4755                                    ; preds = %4726, %4683
  %4756 = phi float [ %4752, %4726 ], [ %4506, %4683 ]
  %4757 = phi float [ %4753, %4726 ], [ %4507, %4683 ]
  %4758 = phi float [ %4754, %4726 ], [ %4508, %4683 ]
  %4759 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4760 = extractvalue %dx.types.CBufRet.i32 %4759, 2
  %4761 = add nsw i32 %4760, -1
  %4762 = call i32 @dx.op.binary.i32(i32 37, i32 %4761, i32 0)  ; IMax(a,b)
  %4763 = shl i32 %4720, 2
  %4764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4763, i32 undef)  ; BufferLoad(srv,index,wot)
  %4765 = extractvalue %dx.types.ResRet.i32 %4764, 0
  %4766 = lshr i32 %4765, 16
  %4767 = and i32 %4765, 65535
  %4768 = lshr i32 %4765, 21
  %4769 = lshr i32 %4767, 5
  %4770 = call i32 @dx.op.binary.i32(i32 40, i32 %4769, i32 %4762)  ; UMin(a,b)
  %4771 = icmp ugt i32 %4768, %4770
  br i1 %4771, label %5135, label %4772

; <label>:4772                                    ; preds = %4755
  br label %4773

; <label>:4773                                    ; preds = %5127, %4772
  %4774 = phi float [ %5128, %5127 ], [ 0.000000e+00, %4772 ]
  %4775 = phi float [ %5129, %5127 ], [ 0.000000e+00, %4772 ]
  %4776 = phi float [ %5130, %5127 ], [ 0.000000e+00, %4772 ]
  %4777 = phi float [ %5131, %5127 ], [ 1.000000e+00, %4772 ]
  %4778 = phi i32 [ %5132, %5127 ], [ %4768, %4772 ]
  %4779 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4780 = extractvalue %dx.types.CBufRet.i32 %4779, 2
  %4781 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4716, i32 %4780, i32 %4778)  ; UMad(a,b,c)
  %4782 = shl i32 %4781, 2
  %4783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %4782, i32 undef)  ; BufferLoad(srv,index,wot)
  %4784 = extractvalue %dx.types.ResRet.i32 %4783, 0
  %4785 = shl i32 %4778, 5
  %4786 = sub nsw i32 %4766, %4785
  %4787 = call i32 @dx.op.binary.i32(i32 37, i32 %4786, i32 0)  ; IMax(a,b)
  %4788 = call i32 @dx.op.binary.i32(i32 38, i32 %4787, i32 31)  ; IMin(a,b)
  %4789 = sub nsw i32 1, %4766
  %4790 = add nsw i32 %4789, %4767
  %4791 = call i32 @dx.op.binary.i32(i32 37, i32 %4790, i32 0)  ; IMax(a,b)
  %4792 = call i32 @dx.op.binary.i32(i32 38, i32 %4791, i32 32)  ; IMin(a,b)
  %4793 = and i32 %4792, 31
  %4794 = shl i32 -1, %4793
  %4795 = xor i32 %4794, -1
  %4796 = and i32 %4788, 31
  %4797 = shl i32 %4795, %4796
  %4798 = icmp eq i32 %4792, 32
  %4799 = select i1 %4798, i32 -1, i32 %4797
  %4800 = and i32 %4799, %4784
  %4801 = icmp eq i32 %4800, 0
  br i1 %4801, label %5127, label %4802

; <label>:4802                                    ; preds = %4773
  br label %4803

; <label>:4803                                    ; preds = %4910, %4802
  %4804 = phi float [ %4911, %4910 ], [ %4774, %4802 ]
  %4805 = phi float [ %4912, %4910 ], [ %4775, %4802 ]
  %4806 = phi float [ %4913, %4910 ], [ %4776, %4802 ]
  %4807 = phi float [ %4914, %4910 ], [ %4777, %4802 ]
  %4808 = phi i32 [ %4813, %4910 ], [ %4800, %4802 ]
  %4809 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4808)  ; FirstbitLo(value)
  %4810 = add i32 %4809, %4785
  %4811 = and i32 %4809, 31
  %4812 = shl i32 1, %4811
  %4813 = xor i32 %4812, %4808
  %4814 = mul i32 %4810, 72
  %4815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4814, i32 undef)  ; BufferLoad(srv,index,wot)
  %4816 = extractvalue %dx.types.ResRet.f32 %4815, 0
  %4817 = extractvalue %dx.types.ResRet.f32 %4815, 1
  %4818 = extractvalue %dx.types.ResRet.f32 %4815, 2
  %4819 = add i32 %4814, 12
  %4820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %4819, i32 undef)  ; BufferLoad(srv,index,wot)
  %4821 = extractvalue %dx.types.ResRet.i32 %4820, 0
  %4822 = add i32 %4814, 16
  %4823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4822, i32 undef)  ; BufferLoad(srv,index,wot)
  %4824 = extractvalue %dx.types.ResRet.f32 %4823, 0
  %4825 = extractvalue %dx.types.ResRet.f32 %4823, 1
  %4826 = extractvalue %dx.types.ResRet.f32 %4823, 2
  %4827 = add i32 %4814, 28
  %4828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4827, i32 undef)  ; BufferLoad(srv,index,wot)
  %4829 = extractvalue %dx.types.ResRet.f32 %4828, 0
  %4830 = add i32 %4814, 32
  %4831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4830, i32 undef)  ; BufferLoad(srv,index,wot)
  %4832 = extractvalue %dx.types.ResRet.f32 %4831, 0
  %4833 = extractvalue %dx.types.ResRet.f32 %4831, 1
  %4834 = extractvalue %dx.types.ResRet.f32 %4831, 2
  %4835 = extractvalue %dx.types.ResRet.f32 %4831, 3
  %4836 = add i32 %4814, 48
  %4837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4836, i32 undef)  ; BufferLoad(srv,index,wot)
  %4838 = extractvalue %dx.types.ResRet.f32 %4837, 0
  %4839 = extractvalue %dx.types.ResRet.f32 %4837, 1
  %4840 = add i32 %4814, 56
  %4841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4840, i32 undef)  ; BufferLoad(srv,index,wot)
  %4842 = extractvalue %dx.types.ResRet.f32 %4841, 0
  %4843 = extractvalue %dx.types.ResRet.f32 %4841, 1
  %4844 = add i32 %4814, 64
  %4845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4844, i32 undef)  ; BufferLoad(srv,index,wot)
  %4846 = extractvalue %dx.types.ResRet.f32 %4845, 0
  %4847 = extractvalue %dx.types.ResRet.f32 %4845, 1
  %4848 = mul i32 %4810, 60
  %4849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %4848, i32 undef)  ; BufferLoad(srv,index,wot)
  %4850 = extractvalue %dx.types.ResRet.f32 %4849, 0
  %4851 = extractvalue %dx.types.ResRet.f32 %4849, 1
  %4852 = extractvalue %dx.types.ResRet.f32 %4849, 2
  %4853 = add i32 %4848, 12
  %4854 = add i32 %4848, 48
  %4855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %4854, i32 undef)  ; BufferLoad(srv,index,wot)
  %4856 = extractvalue %dx.types.ResRet.f32 %4855, 0
  %4857 = extractvalue %dx.types.ResRet.f32 %4855, 1
  %4858 = extractvalue %dx.types.ResRet.f32 %4855, 2
  %4859 = and i32 %4821, 32767
  %4860 = bitcast float %4816 to i32
  %4861 = icmp eq i32 %4860, -1
  %4862 = bitcast float %4817 to i32
  %4863 = and i32 %4821, 32768
  %4864 = icmp ne i32 %4863, 0
  %4865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4866 = extractvalue %dx.types.CBufRet.f32 %4865, 0
  %4867 = extractvalue %dx.types.CBufRet.f32 %4865, 1
  %4868 = extractvalue %dx.types.CBufRet.f32 %4865, 2
  %4869 = fsub fast float %4850, %4866
  %4870 = fsub fast float %4851, %4867
  %4871 = fsub fast float %4852, %4868
  %4872 = fsub fast float %203, %4869
  %4873 = fsub fast float %204, %4870
  %4874 = fsub fast float %205, %4871
  %4875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %4853, i32 undef)  ; BufferLoad(srv,index,wot)
  %4876 = extractvalue %dx.types.ResRet.f32 %4875, 0
  %4877 = extractvalue %dx.types.ResRet.f32 %4875, 1
  %4878 = extractvalue %dx.types.ResRet.f32 %4875, 2
  %4879 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %4876, float %4877, float %4878)  ; Dot3(ax,ay,az,bx,by,bz)
  %4880 = add i32 %4848, 24
  %4881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %4880, i32 undef)  ; BufferLoad(srv,index,wot)
  %4882 = extractvalue %dx.types.ResRet.f32 %4881, 0
  %4883 = extractvalue %dx.types.ResRet.f32 %4881, 1
  %4884 = extractvalue %dx.types.ResRet.f32 %4881, 2
  %4885 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %4882, float %4883, float %4884)  ; Dot3(ax,ay,az,bx,by,bz)
  %4886 = add i32 %4848, 36
  %4887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %4886, i32 undef)  ; BufferLoad(srv,index,wot)
  %4888 = extractvalue %dx.types.ResRet.f32 %4887, 0
  %4889 = extractvalue %dx.types.ResRet.f32 %4887, 1
  %4890 = extractvalue %dx.types.ResRet.f32 %4887, 2
  %4891 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %4888, float %4889, float %4890)  ; Dot3(ax,ay,az,bx,by,bz)
  %4892 = call float @dx.op.unary.f32(i32 6, float %4879)  ; FAbs(value)
  %4893 = call float @dx.op.unary.f32(i32 6, float %4885)  ; FAbs(value)
  %4894 = call float @dx.op.unary.f32(i32 6, float %4891)  ; FAbs(value)
  %4895 = fsub fast float %4856, %4892
  %4896 = fsub fast float %4857, %4893
  %4897 = fsub fast float %4858, %4894
  %4898 = fmul fast float %4895, %4824
  %4899 = fmul fast float %4896, %4825
  %4900 = fmul fast float %4897, %4826
  %4901 = call float @dx.op.binary.f32(i32 36, float %4899, float %4900)  ; FMin(a,b)
  %4902 = call float @dx.op.binary.f32(i32 36, float %4898, float %4901)  ; FMin(a,b)
  %4903 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  %4904 = call float @dx.op.binary.f32(i32 36, float %4807, float %4903)  ; FMin(a,b)
  %4905 = uitofp i1 %4864 to float
  %4906 = fadd fast float %4722, 1.000000e+00
  %4907 = fsub fast float %4906, %4905
  %4908 = fmul fast float %4904, %4907
  %4909 = fcmp fast ogt float %4908, 0.000000e+00
  br i1 %4909, label %4916, label %4910

; <label>:4910                                    ; preds = %5058, %4803
  %4911 = phi float [ %5122, %5058 ], [ %4804, %4803 ]
  %4912 = phi float [ %5123, %5058 ], [ %4805, %4803 ]
  %4913 = phi float [ %5124, %5058 ], [ %4806, %4803 ]
  %4914 = phi float [ %5125, %5058 ], [ %4807, %4803 ]
  %4915 = icmp eq i32 %4808, %4812
  br i1 %4915, label %5126, label %4803

; <label>:4916                                    ; preds = %4803
  br i1 %4861, label %4974, label %4917

; <label>:4917                                    ; preds = %4916
  %4918 = fsub fast float -0.000000e+00, %4876
  %4919 = fsub fast float -0.000000e+00, %4877
  %4920 = fsub fast float -0.000000e+00, %4878
  %4921 = call float @dx.op.dot3.f32(i32 55, float %4756, float %4757, float %4758, float %4918, float %4919, float %4920)  ; Dot3(ax,ay,az,bx,by,bz)
  %4922 = fsub fast float -0.000000e+00, %4921
  %4923 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %4918, float %4919, float %4920)  ; Dot3(ax,ay,az,bx,by,bz)
  %4924 = fadd fast float %4923, %4839
  %4925 = fadd fast float %4838, %4923
  %4926 = fsub fast float -0.000000e+00, %4925
  %4927 = fcmp ogt float %4921, -0.000000e+00
  %4928 = select i1 %4927, float %4926, float %4924
  %4929 = call float @dx.op.unary.f32(i32 6, float %4922)  ; FAbs(value)
  %4930 = fdiv fast float 1.000000e+00, %4929
  %4931 = fmul fast float %4928, %4930
  %4932 = call float @dx.op.binary.f32(i32 35, float %4931, float 0.000000e+00)  ; FMax(a,b)
  %4933 = fsub fast float -0.000000e+00, %4882
  %4934 = fsub fast float -0.000000e+00, %4883
  %4935 = fsub fast float -0.000000e+00, %4884
  %4936 = call float @dx.op.dot3.f32(i32 55, float %4756, float %4757, float %4758, float %4933, float %4934, float %4935)  ; Dot3(ax,ay,az,bx,by,bz)
  %4937 = fsub fast float -0.000000e+00, %4936
  %4938 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %4933, float %4934, float %4935)  ; Dot3(ax,ay,az,bx,by,bz)
  %4939 = fadd fast float %4938, %4843
  %4940 = fadd fast float %4842, %4938
  %4941 = fsub fast float -0.000000e+00, %4940
  %4942 = fcmp ogt float %4936, -0.000000e+00
  %4943 = select i1 %4942, float %4941, float %4939
  %4944 = call float @dx.op.unary.f32(i32 6, float %4937)  ; FAbs(value)
  %4945 = fdiv fast float 1.000000e+00, %4944
  %4946 = fmul fast float %4943, %4945
  %4947 = call float @dx.op.binary.f32(i32 35, float %4946, float 0.000000e+00)  ; FMax(a,b)
  %4948 = fsub fast float -0.000000e+00, %4888
  %4949 = fsub fast float -0.000000e+00, %4889
  %4950 = fsub fast float -0.000000e+00, %4890
  %4951 = call float @dx.op.dot3.f32(i32 55, float %4756, float %4757, float %4758, float %4948, float %4949, float %4950)  ; Dot3(ax,ay,az,bx,by,bz)
  %4952 = fsub fast float -0.000000e+00, %4951
  %4953 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %4948, float %4949, float %4950)  ; Dot3(ax,ay,az,bx,by,bz)
  %4954 = fadd fast float %4953, %4847
  %4955 = fadd fast float %4846, %4953
  %4956 = fsub fast float -0.000000e+00, %4955
  %4957 = fcmp ogt float %4951, -0.000000e+00
  %4958 = select i1 %4957, float %4956, float %4954
  %4959 = call float @dx.op.unary.f32(i32 6, float %4952)  ; FAbs(value)
  %4960 = fdiv fast float 1.000000e+00, %4959
  %4961 = fmul fast float %4958, %4960
  %4962 = call float @dx.op.binary.f32(i32 35, float %4961, float 0.000000e+00)  ; FMax(a,b)
  %4963 = call float @dx.op.binary.f32(i32 36, float %4947, float %4962)  ; FMin(a,b)
  %4964 = call float @dx.op.binary.f32(i32 36, float %4932, float %4963)  ; FMin(a,b)
  %4965 = fmul fast float %4964, %4756
  %4966 = fmul fast float %4964, %4757
  %4967 = fmul fast float %4964, %4758
  %4968 = fadd fast float %4965, %203
  %4969 = fadd fast float %4966, %204
  %4970 = fadd fast float %4967, %205
  %4971 = fsub fast float %4968, %4816
  %4972 = fsub fast float %4969, %4817
  %4973 = fsub fast float %4970, %4818
  br label %4981

; <label>:4974                                    ; preds = %4916
  %4975 = fmul fast float %4756, 8.096000e+03
  %4976 = fmul fast float %4757, 8.096000e+03
  %4977 = fmul fast float %4758, 8.096000e+03
  %4978 = fadd fast float %4975, %203
  %4979 = fadd fast float %4976, %204
  %4980 = fadd fast float %4977, %205
  br label %4981

; <label>:4981                                    ; preds = %4974, %4917
  %4982 = phi float [ %4756, %4974 ], [ %4971, %4917 ]
  %4983 = phi float [ %4757, %4974 ], [ %4972, %4917 ]
  %4984 = phi float [ %4758, %4974 ], [ %4973, %4917 ]
  %4985 = phi float [ %4978, %4974 ], [ %4968, %4917 ]
  %4986 = phi float [ %4979, %4974 ], [ %4969, %4917 ]
  %4987 = phi float [ %4980, %4974 ], [ %4970, %4917 ]
  %4988 = fcmp fast olt float %4835, 1.000000e+00
  br i1 %4988, label %4989, label %5020, !dx.controlflow.hints !107

; <label>:4989                                    ; preds = %4981
  %4990 = fmul fast float %4984, %4833
  %4991 = fmul fast float %4983, %4834
  %4992 = fsub fast float %4990, %4991
  %4993 = fmul fast float %4982, %4834
  %4994 = fmul fast float %4984, %4832
  %4995 = fsub fast float %4993, %4994
  %4996 = fmul fast float %4983, %4832
  %4997 = fmul fast float %4982, %4833
  %4998 = fsub fast float %4996, %4997
  %4999 = fmul fast float %4992, 2.000000e+00
  %5000 = fmul fast float %4995, 2.000000e+00
  %5001 = fmul fast float %4998, 2.000000e+00
  %5002 = fmul fast float %4999, %4835
  %5003 = fmul fast float %5000, %4835
  %5004 = fmul fast float %5001, %4835
  %5005 = fmul fast float %5001, %4833
  %5006 = fmul fast float %5000, %4834
  %5007 = fmul fast float %4999, %4834
  %5008 = fmul fast float %5001, %4832
  %5009 = fmul fast float %5000, %4832
  %5010 = fmul fast float %4999, %4833
  %5011 = fadd fast float %5005, %4982
  %5012 = fadd fast float %5011, %5002
  %5013 = fsub fast float %5012, %5006
  %5014 = fsub fast float %4983, %5008
  %5015 = fadd fast float %5014, %5003
  %5016 = fadd fast float %5015, %5007
  %5017 = fadd fast float %5004, %4984
  %5018 = fsub fast float %5017, %5010
  %5019 = fadd fast float %5018, %5009
  br label %5020

; <label>:5020                                    ; preds = %4989, %4981
  %5021 = phi float [ %5013, %4989 ], [ %4982, %4981 ]
  %5022 = phi float [ %5016, %4989 ], [ %4983, %4981 ]
  %5023 = phi float [ %5019, %4989 ], [ %4984, %4981 ]
  br i1 %4861, label %5055, label %5024

; <label>:5024                                    ; preds = %5020
  %5025 = fmul fast float %4455, 0x400187C840000000
  %5026 = fadd fast float %5025, 0xC00EFC2120000000
  %5027 = fmul fast float %5026, %4455
  %5028 = fadd fast float %5027, 0x3FE5D16340000000
  %5029 = fmul fast float %5028, %4455
  %5030 = fadd fast float %5029, 1.000000e+00
  %5031 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5032 = fsub fast float %4985, %203
  %5033 = fsub fast float %4986, %204
  %5034 = fsub fast float %4987, %205
  %5035 = fsub fast float %4985, %4816
  %5036 = fsub fast float %4986, %4817
  %5037 = fsub fast float %4987, %4818
  %5038 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5033, float %5034, float %5032, float %5033, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %5039 = call float @dx.op.dot3.f32(i32 55, float %5035, float %5036, float %5037, float %5035, float %5036, float %5037)  ; Dot3(ax,ay,az,bx,by,bz)
  %5040 = fadd fast float %5039, 0x3EE4F8B580000000
  %5041 = fdiv fast float %5038, %5040
  %5042 = bitcast float %5041 to i32
  %5043 = ashr i32 %5042, 1
  %5044 = add nsw i32 %5043, 532487669
  %5045 = bitcast i32 %5044 to float
  %5046 = fmul fast float %5045, %5031
  %5047 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5048 = fmul fast float %5047, 0x4009981AE0000000
  %5049 = fsub fast float 0x40111BBD80000000, %5048
  %5050 = fmul fast float %5049, %5047
  %5051 = fadd fast float %5050, 0xC0009F6020000000
  %5052 = fmul fast float %5051, %5047
  %5053 = fadd fast float %5052, 1.000000e+00
  %5054 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  br label %5058

; <label>:5055                                    ; preds = %5020
  %5056 = icmp ne i32 %4862, -1
  %5057 = zext i1 %5056 to i32
  br label %5058

; <label>:5058                                    ; preds = %5055, %5024
  %5059 = phi float [ %4455, %5055 ], [ %5054, %5024 ]
  %5060 = phi i32 [ %5057, %5055 ], [ 0, %5024 ]
  %5061 = fmul float %5059, 5.000000e+00
  %5062 = fsub float 5.000000e+00, %5061
  %5063 = icmp ne i32 %5060, 0
  %5064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.f32 %5064, 3
  %5066 = fadd fast float %5065, %5062
  %5067 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5066)  ; FMax(a,b)
  %5068 = call float @dx.op.unary.f32(i32 6, float %5021)  ; FAbs(value)
  %5069 = call float @dx.op.unary.f32(i32 6, float %5022)  ; FAbs(value)
  %5070 = fadd fast float %5069, %5068
  %5071 = call float @dx.op.unary.f32(i32 6, float %5023)  ; FAbs(value)
  %5072 = fadd fast float %5070, %5071
  %5073 = fcmp fast oeq float %5072, 0.000000e+00
  %5074 = fdiv fast float 1.000000e+00, %5072
  %5075 = select i1 %5073, float 1.000000e+00, float %5074
  %5076 = fmul fast float %5075, %5021
  %5077 = fmul fast float %5075, %5022
  %5078 = call float @dx.op.unary.f32(i32 6, float %5077)  ; FAbs(value)
  %5079 = call float @dx.op.unary.f32(i32 6, float %5076)  ; FAbs(value)
  %5080 = fsub fast float 1.000000e+00, %5078
  %5081 = fsub fast float 1.000000e+00, %5079
  %5082 = fcmp fast oge float %5076, 0.000000e+00
  %5083 = fcmp fast oge float %5077, 0.000000e+00
  %5084 = select i1 %5082, float 1.000000e+00, float -1.000000e+00
  %5085 = select i1 %5083, float 1.000000e+00, float -1.000000e+00
  %5086 = fcmp fast ole float %5023, 0.000000e+00
  %5087 = fmul fast float %5084, %5080
  %5088 = fmul fast float %5085, %5081
  %5089 = select i1 %5086, float %5087, float %5076
  %5090 = select i1 %5086, float %5088, float %5077
  %5091 = fmul fast float %5089, 5.000000e-01
  %5092 = fmul fast float %5090, 5.000000e-01
  %5093 = fadd fast float %5091, 5.000000e-01
  %5094 = fadd fast float %5092, 5.000000e-01
  %5095 = uitofp i32 %4859 to float
  %5096 = call float @dx.op.binary.f32(i32 36, float %5067, float 3.000000e+00)  ; FMin(a,b)
  %5097 = fadd fast float %5096, 2.000000e+00
  %5098 = call float @dx.op.unary.f32(i32 21, float %5097)  ; Exp(value)
  %5099 = extractvalue %dx.types.CBufRet.f32 %5064, 1
  %5100 = fmul fast float %5099, %5098
  %5101 = fmul fast float %5100, 2.000000e+00
  %5102 = fsub fast float 1.000000e+00, %5101
  %5103 = fmul fast float %5093, %5102
  %5104 = fmul fast float %5094, %5102
  %5105 = fadd fast float %5103, %5100
  %5106 = fadd fast float %5104, %5100
  %5107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %54, float %5105, float %5106, float %5095, float undef, i32 0, i32 0, i32 undef, float %5067)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5108 = extractvalue %dx.types.ResRet.f32 %5107, 0
  %5109 = extractvalue %dx.types.ResRet.f32 %5107, 1
  %5110 = extractvalue %dx.types.ResRet.f32 %5107, 2
  %5111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5111, 3
  %5113 = fmul fast float %5112, %4829
  %5114 = call float @dx.op.binary.f32(i32 36, float %4562, float %5113)  ; FMin(a,b)
  %5115 = select i1 %5063, float %5114, float %5113
  %5116 = fmul fast float %5108, %4908
  %5117 = fmul fast float %5116, %5115
  %5118 = fmul fast float %5109, %4908
  %5119 = fmul fast float %5118, %5115
  %5120 = fmul fast float %5110, %4908
  %5121 = fmul fast float %5120, %5115
  %5122 = fadd fast float %5117, %4804
  %5123 = fadd fast float %5119, %4805
  %5124 = fadd fast float %5121, %4806
  %5125 = fsub fast float %4807, %4908
  br label %4910

; <label>:5126                                    ; preds = %4910
  br label %5127

; <label>:5127                                    ; preds = %5126, %4773
  %5128 = phi float [ %4774, %4773 ], [ %4911, %5126 ]
  %5129 = phi float [ %4775, %4773 ], [ %4912, %5126 ]
  %5130 = phi float [ %4776, %4773 ], [ %4913, %5126 ]
  %5131 = phi float [ %4777, %4773 ], [ %4914, %5126 ]
  %5132 = add i32 %4778, 1
  %5133 = icmp ugt i32 %5132, %4770
  br i1 %5133, label %5134, label %4773, !llvm.loop !108

; <label>:5134                                    ; preds = %5127
  br label %5135

; <label>:5135                                    ; preds = %5134, %4755
  %5136 = phi float [ 0.000000e+00, %4755 ], [ %5128, %5134 ]
  %5137 = phi float [ 0.000000e+00, %4755 ], [ %5129, %5134 ]
  %5138 = phi float [ 0.000000e+00, %4755 ], [ %5130, %5134 ]
  %5139 = call float @dx.op.dot3.f32(i32 55, float %5136, float %5137, float %5138, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5140 = select i1 %262, float 0.000000e+00, float %5136
  %5141 = select i1 %262, float %5139, float %5137
  %5142 = select i1 %262, float 0.000000e+00, float %5138
  %5143 = fcmp fast olt float %4681, 0.000000e+00
  %5144 = call float @dx.op.unary.f32(i32 6, float %4681)  ; FAbs(value)
  %5145 = fmul fast float %5144, %4621
  %5146 = fmul fast float %5144, %4622
  %5147 = fmul fast float %5144, %4623
  %5148 = select i1 %5143, float %4621, float %5145
  %5149 = select i1 %5143, float %4622, float %5146
  %5150 = select i1 %5143, float %4623, float %5147
  %5151 = fsub fast float 1.000000e+00, %5144
  %5152 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  %5153 = fmul fast float %5152, %5140
  %5154 = fmul fast float %5152, %5141
  %5155 = fmul fast float %5152, %5142
  %5156 = fadd fast float %5148, %5153
  %5157 = fadd fast float %5149, %5154
  %5158 = fadd fast float %5150, %5155
  br label %5159

; <label>:5159                                    ; preds = %5135, %4664
  %5160 = phi float [ %4621, %4664 ], [ %5156, %5135 ]
  %5161 = phi float [ %4622, %4664 ], [ %5157, %5135 ]
  %5162 = phi float [ %4623, %4664 ], [ %5158, %5135 ]
  %5163 = fmul fast float %4670, %4617
  %5164 = fmul fast float %4670, %4618
  %5165 = fmul fast float %4670, %4619
  %5166 = call float @dx.op.dot3.f32(i32 55, float %4452, float %4453, float %4454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5167 = fcmp fast ogt float %5166, 0x3E7FF19E20000000
  %5168 = fdiv fast float 1.000000e+00, %5166
  %5169 = select i1 %5167, float %5168, float 0.000000e+00
  %5170 = fmul fast float %5169, %4452
  %5171 = fmul fast float %5169, %4453
  %5172 = fmul fast float %5169, %4454
  %5173 = fadd fast float %5170, -1.000000e+00
  %5174 = fadd fast float %5171, -1.000000e+00
  %5175 = fadd fast float %5172, -1.000000e+00
  %5176 = fmul fast float %5173, 5.000000e-01
  %5177 = fmul fast float %5174, 5.000000e-01
  %5178 = fmul fast float %5175, 5.000000e-01
  %5179 = fadd fast float %5176, 1.000000e+00
  %5180 = fadd fast float %5177, 1.000000e+00
  %5181 = fadd fast float %5178, 1.000000e+00
  %5182 = fmul fast float %5160, %4665
  %5183 = fmul fast float %5161, %4666
  %5184 = fmul fast float %5162, %4667
  %5185 = fsub fast float 1.000000e+00, %4500
  %5186 = bitcast float %5185 to i32
  %5187 = sitofp i32 %5186 to float
  %5188 = fmul fast float %5187, 5.000000e+00
  %5189 = fadd fast float %5188, 0xC1EFBF8940000000
  %5190 = fptosi float %5189 to i32
  %5191 = bitcast i32 %5190 to float
  %5192 = fmul fast float %5191, %3266
  %5193 = fmul fast float %4617, %5192
  %5194 = fmul fast float %5193, %4670
  %5195 = fmul fast float %5194, %5179
  %5196 = fmul fast float %4618, %5192
  %5197 = fmul fast float %5196, %4670
  %5198 = fmul fast float %5197, %5180
  %5199 = fmul fast float %4619, %5192
  %5200 = fmul fast float %5199, %4670
  %5201 = fmul fast float %5200, %5181
  %5202 = fmul fast float %5163, %3262
  %5203 = fmul fast float %5164, %3262
  %5204 = fmul fast float %5165, %3262
  %5205 = fadd fast float %5182, %3258
  %5206 = fadd fast float %5205, %5195
  %5207 = fmul fast float %5206, %3262
  %5208 = fadd fast float %5183, %3259
  %5209 = fadd fast float %5208, %5198
  %5210 = fmul fast float %5209, %3262
  %5211 = fadd fast float %5184, %3260
  %5212 = fadd fast float %5211, %5201
  %5213 = fmul fast float %5212, %3262
  %5214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5215 = extractvalue %dx.types.CBufRet.f32 %5214, 3
  %5216 = fcmp fast oeq float %5215, 0.000000e+00
  br i1 %5216, label %6920, label %5217

; <label>:5217                                    ; preds = %5159
  %5218 = extractvalue %dx.types.CBufRet.f32 %5214, 0
  %5219 = extractvalue %dx.types.CBufRet.f32 %5214, 1
  %5220 = extractvalue %dx.types.CBufRet.f32 %5214, 2
  %5221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5222 = extractvalue %dx.types.CBufRet.f32 %5221, 0
  %5223 = extractvalue %dx.types.CBufRet.f32 %5221, 1
  %5224 = extractvalue %dx.types.CBufRet.f32 %5221, 2
  %5225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5226 = extractvalue %dx.types.CBufRet.f32 %5225, 0
  %5227 = extractvalue %dx.types.CBufRet.f32 %5225, 1
  %5228 = call float @dx.op.dot3.f32(i32 55, float %5222, float %5223, float %5224, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = select i1 %262, float %5226, float %5222
  %5230 = select i1 %262, float %5228, float %5223
  %5231 = select i1 %262, float %5227, float %5224
  %5232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5233 = extractvalue %dx.types.CBufRet.f32 %5232, 2
  %5234 = fmul fast float %5233, %123
  %5235 = fmul fast float %5233, %124
  %5236 = fmul fast float %5233, %125
  %5237 = fadd fast float %5234, %203
  %5238 = fadd fast float %5235, %204
  %5239 = fadd fast float %5236, %205
  %5240 = fcmp fast olt float %5215, 0.000000e+00
  br i1 %5240, label %6498, label %5241

; <label>:5241                                    ; preds = %5217
  %5242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5243 = extractvalue %dx.types.CBufRet.f32 %5242, 0
  %5244 = extractvalue %dx.types.CBufRet.f32 %5242, 1
  %5245 = extractvalue %dx.types.CBufRet.f32 %5242, 2
  %5246 = extractvalue %dx.types.CBufRet.f32 %5242, 3
  %5247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5248 = extractvalue %dx.types.CBufRet.f32 %5247, 0
  %5249 = extractvalue %dx.types.CBufRet.f32 %5247, 1
  %5250 = extractvalue %dx.types.CBufRet.f32 %5247, 2
  %5251 = extractvalue %dx.types.CBufRet.f32 %5247, 3
  %5252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5253 = extractvalue %dx.types.CBufRet.f32 %5252, 0
  %5254 = extractvalue %dx.types.CBufRet.f32 %5252, 1
  %5255 = extractvalue %dx.types.CBufRet.f32 %5252, 2
  %5256 = extractvalue %dx.types.CBufRet.f32 %5252, 3
  %5257 = fmul fast float %5243, %5237
  %5258 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5244, float %5257)  ; FMad(a,b,c)
  %5259 = call float @dx.op.tertiary.f32(i32 46, float %5239, float %5245, float %5258)  ; FMad(a,b,c)
  %5260 = fadd fast float %5259, %5246
  %5261 = fmul fast float %5248, %5237
  %5262 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5249, float %5261)  ; FMad(a,b,c)
  %5263 = call float @dx.op.tertiary.f32(i32 46, float %5239, float %5250, float %5262)  ; FMad(a,b,c)
  %5264 = fadd fast float %5263, %5251
  %5265 = fmul fast float %5253, %5237
  %5266 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5254, float %5265)  ; FMad(a,b,c)
  %5267 = call float @dx.op.tertiary.f32(i32 46, float %5239, float %5255, float %5266)  ; FMad(a,b,c)
  %5268 = fadd fast float %5267, %5256
  %5269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5270 = extractvalue %dx.types.CBufRet.f32 %5269, 0
  %5271 = fcmp fast une float %5270, 0.000000e+00
  %5272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5273 = extractvalue %dx.types.CBufRet.f32 %5272, 0
  %5274 = extractvalue %dx.types.CBufRet.f32 %5272, 1
  %5275 = extractvalue %dx.types.CBufRet.f32 %5272, 3
  %5276 = fmul fast float %5275, %5260
  %5277 = fmul fast float %5275, %5264
  %5278 = fadd fast float %5276, %5273
  %5279 = fadd fast float %5277, %5274
  %5280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5281 = extractvalue %dx.types.CBufRet.f32 %5280, 0
  %5282 = extractvalue %dx.types.CBufRet.f32 %5280, 1
  %5283 = extractvalue %dx.types.CBufRet.f32 %5280, 3
  %5284 = fmul fast float %5283, %5260
  %5285 = fmul fast float %5283, %5264
  %5286 = fadd fast float %5284, %5281
  %5287 = fadd fast float %5285, %5282
  %5288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5289 = extractvalue %dx.types.CBufRet.f32 %5288, 1
  %5290 = fsub fast float %5289, %5268
  %5291 = extractvalue %dx.types.CBufRet.f32 %5288, 2
  %5292 = fmul fast float %5290, %5291
  %5293 = fsub fast float 1.000000e+00, %5292
  %5294 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  br i1 %5271, label %5355, label %5295

; <label>:5295                                    ; preds = %5241
  %5296 = extractvalue %dx.types.CBufRet.f32 %5280, 2
  %5297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5298 = extractvalue %dx.types.CBufRet.f32 %5297, 2
  %5299 = fadd fast float %5298, %5296
  %5300 = fcmp fast ogt float %5299, 0.000000e+00
  br i1 %5300, label %5301, label %5325

; <label>:5301                                    ; preds = %5295
  %5302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5303 = extractvalue %dx.types.CBufRet.f32 %5302, 0
  %5304 = extractvalue %dx.types.CBufRet.f32 %5302, 1
  %5305 = fsub fast float %5286, %5303
  %5306 = fsub fast float %5287, %5304
  %5307 = fcmp fast olt float %5305, 0.000000e+00
  %5308 = fcmp fast olt float %5306, 0.000000e+00
  %5309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5309, 0
  %5311 = extractvalue %dx.types.CBufRet.f32 %5309, 1
  %5312 = extractvalue %dx.types.CBufRet.f32 %5309, 2
  %5313 = extractvalue %dx.types.CBufRet.f32 %5309, 3
  %5314 = select i1 %5307, float %5310, float %5312
  %5315 = select i1 %5308, float %5311, float %5313
  %5316 = fmul fast float %5314, %5305
  %5317 = fmul fast float %5315, %5306
  %5318 = call float @dx.op.unary.f32(i32 6, float %5316)  ; FAbs(value)
  %5319 = call float @dx.op.unary.f32(i32 6, float %5317)  ; FAbs(value)
  %5320 = extractvalue %dx.types.CBufRet.f32 %5232, 0
  %5321 = call float @dx.op.binary.f32(i32 35, float %5318, float %5319)  ; FMax(a,b)
  %5322 = fsub fast float %5320, %5321
  %5323 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5324 = fmul fast float %5323, %5294
  br label %5325

; <label>:5325                                    ; preds = %5301, %5295
  %5326 = phi float [ %5324, %5301 ], [ 0.000000e+00, %5295 ]
  %5327 = extractvalue %dx.types.CBufRet.f32 %5272, 2
  %5328 = extractvalue %dx.types.CBufRet.f32 %5297, 1
  %5329 = fadd fast float %5328, %5327
  %5330 = fcmp fast ogt float %5329, 0.000000e+00
  br i1 %5330, label %5331, label %5355

; <label>:5331                                    ; preds = %5325
  %5332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5333 = extractvalue %dx.types.CBufRet.f32 %5332, 0
  %5334 = extractvalue %dx.types.CBufRet.f32 %5332, 1
  %5335 = fsub fast float %5278, %5333
  %5336 = fsub fast float %5279, %5334
  %5337 = fcmp fast olt float %5335, 0.000000e+00
  %5338 = fcmp fast olt float %5336, 0.000000e+00
  %5339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5340 = extractvalue %dx.types.CBufRet.f32 %5339, 0
  %5341 = extractvalue %dx.types.CBufRet.f32 %5339, 1
  %5342 = extractvalue %dx.types.CBufRet.f32 %5339, 2
  %5343 = extractvalue %dx.types.CBufRet.f32 %5339, 3
  %5344 = select i1 %5337, float %5340, float %5342
  %5345 = select i1 %5338, float %5341, float %5343
  %5346 = fmul fast float %5344, %5335
  %5347 = fmul fast float %5345, %5336
  %5348 = call float @dx.op.unary.f32(i32 6, float %5346)  ; FAbs(value)
  %5349 = call float @dx.op.unary.f32(i32 6, float %5347)  ; FAbs(value)
  %5350 = extractvalue %dx.types.CBufRet.f32 %5232, 0
  %5351 = call float @dx.op.binary.f32(i32 35, float %5348, float %5349)  ; FMax(a,b)
  %5352 = fsub fast float %5350, %5351
  %5353 = call float @dx.op.unary.f32(i32 7, float %5352)  ; Saturate(value)
  %5354 = fmul fast float %5353, %5294
  br label %5355

; <label>:5355                                    ; preds = %5331, %5325, %5241
  %5356 = phi float [ 0.000000e+00, %5241 ], [ %5354, %5331 ], [ 0.000000e+00, %5325 ]
  %5357 = phi float [ 0.000000e+00, %5241 ], [ %5326, %5331 ], [ %5326, %5325 ]
  %5358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5359 = extractvalue %dx.types.CBufRet.f32 %5358, 1
  %5360 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5362 = extractvalue %dx.types.CBufRet.f32 %5361, 0
  %5363 = extractvalue %dx.types.CBufRet.f32 %5361, 1
  %5364 = fsub fast float %5260, %5362
  %5365 = fsub fast float %5264, %5363
  %5366 = fcmp fast olt float %5364, 0.000000e+00
  %5367 = fcmp fast olt float %5365, 0.000000e+00
  %5368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5369 = extractvalue %dx.types.CBufRet.f32 %5368, 0
  %5370 = extractvalue %dx.types.CBufRet.f32 %5368, 1
  %5371 = extractvalue %dx.types.CBufRet.f32 %5368, 2
  %5372 = extractvalue %dx.types.CBufRet.f32 %5368, 3
  %5373 = select i1 %5366, float %5369, float %5371
  %5374 = select i1 %5367, float %5370, float %5372
  %5375 = fmul fast float %5373, %5364
  %5376 = fmul fast float %5374, %5365
  %5377 = call float @dx.op.unary.f32(i32 6, float %5375)  ; FAbs(value)
  %5378 = call float @dx.op.unary.f32(i32 6, float %5376)  ; FAbs(value)
  %5379 = extractvalue %dx.types.CBufRet.f32 %5232, 0
  %5380 = call float @dx.op.binary.f32(i32 35, float %5377, float %5378)  ; FMax(a,b)
  %5381 = fsub fast float %5379, %5380
  %5382 = call float @dx.op.unary.f32(i32 7, float %5381)  ; Saturate(value)
  %5383 = call float @dx.op.binary.f32(i32 36, float %5382, float %5360)  ; FMin(a,b)
  %5384 = fmul fast float %5383, %5294
  %5385 = fsub fast float %5356, %5384
  %5386 = fsub fast float %5357, %5356
  %5387 = fsub fast float %5386, %5384
  %5388 = call float @dx.op.binary.f32(i32 35, float %5356, float %5357)  ; FMax(a,b)
  %5389 = call float @dx.op.binary.f32(i32 35, float %5384, float %5388)  ; FMax(a,b)
  %5390 = fcmp fast olt float %5389, 1.000000e+00
  br i1 %5390, label %5391, label %5789, !dx.controlflow.hints !110

; <label>:5391                                    ; preds = %5355
  %5392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5393 = extractvalue %dx.types.CBufRet.f32 %5392, 0
  %5394 = fcmp fast une float %5393, 0.000000e+00
  br i1 %5394, label %5395, label %5789, !dx.controlflow.hints !111

; <label>:5395                                    ; preds = %5391
  %5396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5397 = extractvalue %dx.types.CBufRet.f32 %5396, 0
  %5398 = extractvalue %dx.types.CBufRet.f32 %5396, 1
  %5399 = extractvalue %dx.types.CBufRet.f32 %5396, 2
  %5400 = extractvalue %dx.types.CBufRet.f32 %5396, 3
  %5401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5402 = extractvalue %dx.types.CBufRet.f32 %5401, 0
  %5403 = extractvalue %dx.types.CBufRet.f32 %5401, 1
  %5404 = extractvalue %dx.types.CBufRet.f32 %5401, 2
  %5405 = extractvalue %dx.types.CBufRet.f32 %5401, 3
  %5406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5407 = extractvalue %dx.types.CBufRet.f32 %5406, 0
  %5408 = extractvalue %dx.types.CBufRet.f32 %5406, 1
  %5409 = extractvalue %dx.types.CBufRet.f32 %5406, 2
  %5410 = extractvalue %dx.types.CBufRet.f32 %5406, 3
  %5411 = fmul fast float %5397, %5237
  %5412 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5398, float %5411)  ; FMad(a,b,c)
  %5413 = call float @dx.op.tertiary.f32(i32 46, float %5239, float %5399, float %5412)  ; FMad(a,b,c)
  %5414 = fadd fast float %5413, %5400
  %5415 = fmul fast float %5402, %5237
  %5416 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5403, float %5415)  ; FMad(a,b,c)
  %5417 = call float @dx.op.tertiary.f32(i32 46, float %5239, float %5404, float %5416)  ; FMad(a,b,c)
  %5418 = fadd fast float %5417, %5405
  %5419 = fmul fast float %5407, %5237
  %5420 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5408, float %5419)  ; FMad(a,b,c)
  %5421 = call float @dx.op.tertiary.f32(i32 46, float %5239, float %5409, float %5420)  ; FMad(a,b,c)
  %5422 = fadd fast float %5421, %5410
  %5423 = fcmp fast oge float %5414, 1.000000e+00
  %5424 = fcmp fast oge float %5418, 1.000000e+00
  %5425 = or i1 %5423, %5424
  %5426 = fcmp fast olt float %5414, 0.000000e+00
  %5427 = fcmp fast olt float %5418, 0.000000e+00
  %5428 = or i1 %5426, %5427
  %5429 = or i1 %5425, %5428
  br i1 %5429, label %5789, label %5430, !dx.controlflow.hints !112

; <label>:5430                                    ; preds = %5395
  %5431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5432 = extractvalue %dx.types.CBufRet.f32 %5431, 0
  %5433 = extractvalue %dx.types.CBufRet.f32 %5431, 1
  %5434 = extractvalue %dx.types.CBufRet.f32 %5431, 2
  %5435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5436 = extractvalue %dx.types.CBufRet.i32 %5435, 2
  %5437 = uitofp i32 %5436 to float
  %5438 = extractvalue %dx.types.CBufRet.i32 %5435, 3
  %5439 = uitofp i32 %5438 to float
  %5440 = extractvalue %dx.types.CBufRet.f32 %5431, 3
  %5441 = fmul fast float %5440, 2.000000e+00
  %5442 = fsub fast float %5414, %5432
  %5443 = fsub fast float %5418, %5433
  %5444 = fmul fast float %5441, %5442
  %5445 = fmul fast float %5441, %5443
  %5446 = fdiv fast float 1.000000e+00, %5220
  %5447 = fmul fast float %5445, %5446
  %5448 = call float @dx.op.unary.f32(i32 6, float %5447)  ; FAbs(value)
  %5449 = fmul fast float %5434, %5239
  %5450 = fmul fast float %5449, %5441
  %5451 = call float @dx.op.unary.f32(i32 6, float %5450)  ; FAbs(value)
  %5452 = call float @dx.op.unary.f32(i32 6, float %5444)  ; FAbs(value)
  %5453 = call float @dx.op.binary.f32(i32 35, float %5451, float %5448)  ; FMax(a,b)
  %5454 = call float @dx.op.binary.f32(i32 35, float %5452, float %5453)  ; FMax(a,b)
  %5455 = fmul fast float %5454, 2.000000e+00
  %5456 = call float @dx.op.unary.f32(i32 23, float %5455)  ; Log(value)
  %5457 = call float @dx.op.binary.f32(i32 35, float %5456, float %5437)  ; FMax(a,b)
  %5458 = call float @dx.op.unary.f32(i32 22, float %5457)  ; Frc(value)
  %5459 = fadd fast float %5458, 0xBFEA666660000000
  %5460 = fmul fast float %5459, 8.000000e+00
  %5461 = call float @dx.op.unary.f32(i32 7, float %5460)  ; Saturate(value)
  %5462 = call float @dx.op.unary.f32(i32 27, float %5457)  ; Round_ni(value)
  %5463 = fadd fast float %5462, %5461
  %5464 = call float @dx.op.binary.f32(i32 36, float %5463, float %5439)  ; FMin(a,b)
  %5465 = call float @dx.op.unary.f32(i32 27, float %5464)  ; Round_ni(value)
  %5466 = fsub fast float -0.000000e+00, %5465
  %5467 = call float @dx.op.unary.f32(i32 21, float %5466)  ; Exp(value)
  %5468 = fmul fast float %5467, %5441
  %5469 = fmul fast float %5468, %5414
  %5470 = fmul fast float %5468, %5418
  %5471 = fmul fast float %5469, 2.500000e-01
  %5472 = fmul fast float %5470, 2.500000e-01
  %5473 = fadd fast float %5471, 5.000000e-01
  %5474 = fadd fast float %5472, 5.000000e-01
  %5475 = fsub fast float %5439, %5437
  %5476 = fptoui float %5475 to i32
  %5477 = add i32 %5476, 320
  %5478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %5477)  ; CBufferLoadLegacy(handle,regIndex)
  %5479 = extractvalue %dx.types.CBufRet.f32 %5478, 0
  %5480 = extractvalue %dx.types.CBufRet.f32 %5478, 1
  %5481 = fcmp fast une float %5464, %5439
  %5482 = fsub fast float %5414, %5479
  %5483 = fsub fast float %5418, %5480
  %5484 = call float @dx.op.unary.f32(i32 6, float %5482)  ; FAbs(value)
  %5485 = call float @dx.op.unary.f32(i32 6, float %5483)  ; FAbs(value)
  %5486 = fmul fast float %5484, %5468
  %5487 = fmul fast float %5485, %5468
  %5488 = fcmp fast olt float %5486, 1.000000e+00
  %5489 = fcmp fast olt float %5487, 1.000000e+00
  %5490 = and i1 %5488, %5489
  %5491 = or i1 %5481, %5490
  br i1 %5491, label %5492, label %5789, !dx.controlflow.hints !113

; <label>:5492                                    ; preds = %5430
  %5493 = fmul fast float %5470, 5.000000e-01
  %5494 = fmul fast float %5469, 5.000000e-01
  %5495 = fadd fast float %5493, 5.000000e-01
  %5496 = fadd fast float %5494, 5.000000e-01
  %5497 = sitofp i32 %5436 to float
  %5498 = fsub fast float %5464, %5497
  %5499 = call float @dx.op.unary.f32(i32 27, float %5498)  ; Round_ni(value)
  %5500 = call float @dx.op.unary.f32(i32 22, float %5464)  ; Frc(value)
  %5501 = call float @dx.op.unary.f32(i32 22, float %5496)  ; Frc(value)
  %5502 = call float @dx.op.unary.f32(i32 22, float %5495)  ; Frc(value)
  %5503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %55, float %5501, float %5502, float %5499, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5504 = extractvalue %dx.types.ResRet.f32 %5503, 0
  %5505 = extractvalue %dx.types.ResRet.f32 %5503, 1
  %5506 = extractvalue %dx.types.ResRet.f32 %5503, 2
  %5507 = extractvalue %dx.types.ResRet.f32 %5503, 3
  %5508 = fcmp fast ogt float %5500, 0.000000e+00
  br i1 %5508, label %5509, label %5530, !dx.controlflow.hints !114

; <label>:5509                                    ; preds = %5492
  %5510 = fadd fast float %5499, 1.000000e+00
  %5511 = call float @dx.op.unary.f32(i32 22, float %5473)  ; Frc(value)
  %5512 = call float @dx.op.unary.f32(i32 22, float %5474)  ; Frc(value)
  %5513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %55, float %5511, float %5512, float %5510, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5514 = extractvalue %dx.types.ResRet.f32 %5513, 0
  %5515 = extractvalue %dx.types.ResRet.f32 %5513, 1
  %5516 = extractvalue %dx.types.ResRet.f32 %5513, 2
  %5517 = extractvalue %dx.types.ResRet.f32 %5513, 3
  %5518 = fsub fast float %5514, %5504
  %5519 = fsub fast float %5515, %5505
  %5520 = fsub fast float %5516, %5506
  %5521 = fsub fast float %5517, %5507
  %5522 = fmul fast float %5518, %5500
  %5523 = fmul fast float %5519, %5500
  %5524 = fmul fast float %5520, %5500
  %5525 = fmul fast float %5521, %5500
  %5526 = fadd fast float %5522, %5504
  %5527 = fadd fast float %5523, %5505
  %5528 = fadd fast float %5524, %5506
  %5529 = fadd fast float %5525, %5507
  br label %5530

; <label>:5530                                    ; preds = %5509, %5492
  %5531 = phi float [ %5526, %5509 ], [ %5504, %5492 ]
  %5532 = phi float [ %5527, %5509 ], [ %5505, %5492 ]
  %5533 = phi float [ %5528, %5509 ], [ %5506, %5492 ]
  %5534 = phi float [ %5529, %5509 ], [ %5507, %5492 ]
  %5535 = fadd fast float %5531, -5.000000e-01
  %5536 = fadd fast float %5533, -5.000000e-01
  %5537 = fmul fast float %5535, 0xBFD5555560000000
  %5538 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5536, float %5537)  ; FMad(a,b,c)
  %5539 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5532, float 0.000000e+00)  ; FMad(a,b,c)
  %5540 = fadd fast float %5539, %5534
  %5541 = fmul fast float %5535, -7.500000e-01
  %5542 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5536, float %5541)  ; FMad(a,b,c)
  %5543 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5532, float 0.000000e+00)  ; FMad(a,b,c)
  %5544 = fadd fast float %5543, %5534
  %5545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5546 = extractvalue %dx.types.CBufRet.f32 %5545, 0
  %5547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5548 = extractvalue %dx.types.CBufRet.f32 %5547, 0
  %5549 = extractvalue %dx.types.CBufRet.f32 %5547, 1
  %5550 = extractvalue %dx.types.CBufRet.f32 %5547, 2
  %5551 = extractvalue %dx.types.CBufRet.f32 %5547, 3
  %5552 = fsub fast float %5548, %5538
  %5553 = fsub fast float %5549, %5540
  %5554 = fsub fast float %5550, %5542
  %5555 = fsub fast float %5551, %5544
  %5556 = fmul fast float %5552, %5546
  %5557 = fmul fast float %5553, %5546
  %5558 = fmul fast float %5554, %5546
  %5559 = fmul fast float %5555, %5546
  %5560 = fadd fast float %5556, %5538
  %5561 = fadd fast float %5557, %5540
  %5562 = fadd fast float %5558, %5542
  %5563 = fadd fast float %5559, %5544
  %5564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5565 = extractvalue %dx.types.ResRet.i32 %5564, 0
  %5566 = and i32 %5565, 536870911
  %5567 = uitofp i32 %5566 to float
  %5568 = fmul fast float %5567, %5414
  %5569 = fmul fast float %5567, %5418
  %5570 = fptoui float %5568 to i32
  %5571 = fptoui float %5569 to i32
  %5572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5573 = extractvalue %dx.types.ResRet.i32 %5572, 0
  %5574 = and i32 %5573, 31
  %5575 = lshr i32 %5570, %5574
  %5576 = lshr i32 %5571, %5574
  %5577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5578 = extractvalue %dx.types.ResRet.i32 %5577, 0
  %5579 = and i32 %5578, 31
  %5580 = shl i32 1, %5579
  %5581 = call i32 @dx.op.binary.i32(i32 40, i32 %5580, i32 4)  ; UMin(a,b)
  %5582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5583 = extractvalue %dx.types.ResRet.i32 %5582, 0
  %5584 = extractvalue %dx.types.ResRet.i32 %5582, 1
  %5585 = icmp eq i32 %5581, 0
  br i1 %5585, label %5627, label %5586

; <label>:5586                                    ; preds = %5530
  br label %5587

; <label>:5587                                    ; preds = %5615, %5586
  %5588 = phi i32 [ %5618, %5615 ], [ 0, %5586 ]
  %5589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5590 = extractvalue %dx.types.ResRet.i32 %5589, 0
  %5591 = lshr i32 %5590, 16
  %5592 = and i32 %5591, 31
  %5593 = shl i32 %5576, %5592
  %5594 = add i32 %5593, %5575
  %5595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5596 = extractvalue %dx.types.ResRet.i32 %5595, 0
  %5597 = and i32 %5596, 31
  %5598 = shl i32 %5594, %5597
  %5599 = add i32 %5598, %5588
  %5600 = shl i32 %5599, 2
  %5601 = add i32 %5600, 32
  %5602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5601, i32 undef)  ; BufferLoad(srv,index,wot)
  %5603 = extractvalue %dx.types.ResRet.i32 %5602, 0
  %5604 = icmp slt i32 %5603, 0
  %5605 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %5588
  %5606 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %5588
  %5607 = bitcast float* %5605 to i32*
  %5608 = bitcast float* %5606 to i32*
  br i1 %5604, label %5609, label %5615

; <label>:5609                                    ; preds = %5587
  %5610 = and i32 %5603, 1073741823
  %5611 = add nuw nsw i32 %5610, 20
  %5612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5611, i32 undef)  ; BufferLoad(srv,index,wot)
  %5613 = extractvalue %dx.types.ResRet.i32 %5612, 0
  %5614 = extractvalue %dx.types.ResRet.i32 %5612, 1
  br label %5615

; <label>:5615                                    ; preds = %5609, %5587
  %5616 = phi i32 [ %5613, %5609 ], [ %5583, %5587 ]
  %5617 = phi i32 [ %5614, %5609 ], [ %5584, %5587 ]
  store i32 %5616, i32* %5607, align 4
  store i32 %5617, i32* %5608, align 4
  %5618 = add nuw i32 %5588, 1
  %5619 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5620 = extractvalue %dx.types.CBufRet.i32 %5619, 2
  %5621 = icmp eq i32 %5620, 0
  %5622 = icmp ugt i32 %5603, -1073741825
  %5623 = and i1 %5622, %5621
  %5624 = icmp ult i32 %5618, %5581
  %5625 = and i1 %5623, %5624
  br i1 %5625, label %5587, label %5626

; <label>:5626                                    ; preds = %5615
  br label %5627

; <label>:5627                                    ; preds = %5626, %5530
  %5628 = phi i32 [ 0, %5530 ], [ %5618, %5626 ]
  %5629 = extractvalue %dx.types.CBufRet.f32 %5392, 2
  %5630 = fptoui float %5629 to i32
  %5631 = icmp eq i32 %5630, 0
  br i1 %5631, label %5683, label %5632

; <label>:5632                                    ; preds = %5627
  br label %5633

; <label>:5633                                    ; preds = %5678, %5632
  %5634 = phi i32 [ %5679, %5678 ], [ %5628, %5632 ]
  %5635 = phi i32 [ %5680, %5678 ], [ 0, %5632 ]
  %5636 = lshr i32 %5635, 2
  %5637 = and i32 %5635, 3
  %5638 = add nuw nsw i32 %5636, 83
  %5639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 %5638)  ; CBufferLoadLegacy(handle,regIndex)
  %5640 = extractvalue %dx.types.CBufRet.i32 %5639, 0
  %5641 = extractvalue %dx.types.CBufRet.i32 %5639, 1
  %5642 = extractvalue %dx.types.CBufRet.i32 %5639, 2
  %5643 = extractvalue %dx.types.CBufRet.i32 %5639, 3
  %5644 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 0
  store i32 %5640, i32* %5644, align 4
  %5645 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 1
  store i32 %5641, i32* %5645, align 4
  %5646 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 2
  store i32 %5642, i32* %5646, align 4
  %5647 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 3
  store i32 %5643, i32* %5647, align 4
  %5648 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 %5637
  %5649 = load i32, i32* %5648, align 4, !tbaa !115, !noalias !119
  %5650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5651 = extractvalue %dx.types.ResRet.i32 %5650, 0
  %5652 = lshr i32 %5651, 16
  %5653 = and i32 %5652, 31
  %5654 = shl i32 %5576, %5653
  %5655 = add i32 %5654, %5575
  %5656 = shl i32 %5655, 2
  %5657 = add i32 %5656, %5649
  %5658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5657, i32 undef)  ; BufferLoad(srv,index,wot)
  %5659 = extractvalue %dx.types.ResRet.i32 %5658, 0
  %5660 = icmp eq i32 %5659, 0
  br i1 %5660, label %5678, label %5661

; <label>:5661                                    ; preds = %5633
  %5662 = icmp slt i32 %5659, 0
  %5663 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %5634
  %5664 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %5634
  %5665 = bitcast float* %5663 to i32*
  %5666 = bitcast float* %5664 to i32*
  br i1 %5662, label %5667, label %5674

; <label>:5667                                    ; preds = %5661
  %5668 = and i32 %5659, 1073741823
  %5669 = add i32 %5649, 20
  %5670 = add i32 %5669, %5668
  %5671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5670, i32 undef)  ; BufferLoad(srv,index,wot)
  %5672 = extractvalue %dx.types.ResRet.i32 %5671, 0
  %5673 = extractvalue %dx.types.ResRet.i32 %5671, 1
  br label %5674

; <label>:5674                                    ; preds = %5667, %5661
  %5675 = phi i32 [ %5672, %5667 ], [ %5583, %5661 ]
  %5676 = phi i32 [ %5673, %5667 ], [ %5584, %5661 ]
  store i32 %5675, i32* %5665, align 4
  store i32 %5676, i32* %5666, align 4
  %5677 = add i32 %5634, 1
  br label %5678

; <label>:5678                                    ; preds = %5674, %5633
  %5679 = phi i32 [ %5634, %5633 ], [ %5677, %5674 ]
  %5680 = add nuw i32 %5635, 1
  %5681 = icmp eq i32 %5680, %5630
  br i1 %5681, label %5682, label %5633

; <label>:5682                                    ; preds = %5678
  br label %5683

; <label>:5683                                    ; preds = %5682, %5627
  %5684 = phi i32 [ %5628, %5627 ], [ %5679, %5682 ]
  %5685 = icmp eq i32 %5684, 1
  %5686 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 0
  %5687 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 0
  br i1 %5685, label %5688, label %5691

; <label>:5688                                    ; preds = %5683
  %5689 = load float, float* %5686, align 4
  %5690 = load float, float* %5687, align 4
  br label %5718

; <label>:5691                                    ; preds = %5683
  %5692 = load float, float* %5686, align 4
  %5693 = load float, float* %5687, align 4
  %5694 = fdiv fast float 1.000000e+00, %5693
  %5695 = fsub fast float %5692, %5694
  %5696 = icmp ugt i32 %5684, 1
  br i1 %5696, label %5697, label %5713

; <label>:5697                                    ; preds = %5691
  br label %5698

; <label>:5698                                    ; preds = %5698, %5697
  %5699 = phi float [ %5708, %5698 ], [ %5695, %5697 ]
  %5700 = phi float [ %5709, %5698 ], [ %5692, %5697 ]
  %5701 = phi i32 [ %5710, %5698 ], [ 1, %5697 ]
  %5702 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %5701
  %5703 = load float, float* %5702, align 4
  %5704 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %5701
  %5705 = load float, float* %5704, align 4
  %5706 = fdiv fast float 1.000000e+00, %5705
  %5707 = fsub fast float %5703, %5706
  %5708 = call float @dx.op.binary.f32(i32 36, float %5699, float %5707)  ; FMin(a,b)
  %5709 = call float @dx.op.binary.f32(i32 35, float %5700, float %5703)  ; FMax(a,b)
  %5710 = add nuw i32 %5701, 1
  %5711 = icmp eq i32 %5710, %5684
  br i1 %5711, label %5712, label %5698

; <label>:5712                                    ; preds = %5698
  br label %5713

; <label>:5713                                    ; preds = %5712, %5691
  %5714 = phi float [ %5695, %5691 ], [ %5708, %5712 ]
  %5715 = phi float [ %5692, %5691 ], [ %5709, %5712 ]
  %5716 = fsub fast float %5715, %5714
  %5717 = fdiv fast float 1.000000e+00, %5716
  br label %5718

; <label>:5718                                    ; preds = %5713, %5688
  %5719 = phi float [ %5689, %5688 ], [ %5715, %5713 ]
  %5720 = phi float [ %5690, %5688 ], [ %5717, %5713 ]
  %5721 = fadd fast float %5422, %5719
  %5722 = fmul fast float %5721, %5720
  %5723 = call float @dx.op.unary.f32(i32 7, float %5722)  ; Saturate(value)
  %5724 = fmul fast float %5723, 2.000000e+00
  %5725 = fsub fast float 1.000000e+00, %5724
  %5726 = fmul fast float %5560, %5560
  %5727 = fsub fast float %5561, %5726
  %5728 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5727)  ; FMax(a,b)
  %5729 = fdiv fast float 1.000000e+00, %5728
  %5730 = fmul fast float %5561, %5560
  %5731 = fsub fast float %5562, %5730
  %5732 = fsub fast float %5725, %5560
  %5733 = fmul fast float %5725, %5725
  %5734 = fsub fast float %5733, %5561
  %5735 = fmul fast float %5729, %5731
  %5736 = fmul fast float %5735, %5732
  %5737 = fsub fast float %5734, %5736
  %5738 = fmul fast float %5561, %5561
  %5739 = fsub fast float %5563, %5738
  %5740 = fmul fast float %5731, %5731
  %5741 = fmul fast float %5740, %5729
  %5742 = fsub fast float %5739, %5741
  %5743 = fdiv fast float %5737, %5742
  %5744 = fmul fast float %5743, %5731
  %5745 = fsub fast float %5732, %5744
  %5746 = fmul fast float %5745, %5729
  %5747 = fmul fast float %5746, %5560
  %5748 = fsub fast float 1.000000e+00, %5747
  %5749 = fmul fast float %5743, %5561
  %5750 = fsub fast float %5748, %5749
  %5751 = fmul fast float %5746, %5746
  %5752 = fmul fast float %5743, 4.000000e+00
  %5753 = fmul fast float %5752, %5750
  %5754 = fsub fast float %5751, %5753
  %5755 = call float @dx.op.unary.f32(i32 24, float %5754)  ; Sqrt(value)
  %5756 = fcmp fast oge float %5746, 0.000000e+00
  %5757 = fsub fast float -0.000000e+00, %5755
  %5758 = select i1 %5756, float %5757, float %5755
  %5759 = fsub fast float %5758, %5746
  %5760 = fdiv fast float %5759, %5743
  %5761 = fdiv fast float %5750, %5759
  %5762 = fmul fast float %5760, 5.000000e-01
  %5763 = fmul fast float %5761, 2.000000e+00
  %5764 = select i1 %5756, float %5762, float %5763
  %5765 = select i1 %5756, float %5763, float %5762
  %5766 = call float @dx.op.binary.f32(i32 35, float %5764, float %5765)  ; FMax(a,b)
  %5767 = call float @dx.op.binary.f32(i32 36, float %5764, float %5765)  ; FMin(a,b)
  %5768 = fcmp fast ogt float %5725, %5766
  %5769 = fsub fast float %5725, %5767
  %5770 = fsub fast float %5725, %5766
  %5771 = fsub fast float %5766, %5767
  %5772 = select i1 %5768, float %5770, float %5771
  %5773 = fmul float %5769, %5772
  %5774 = select i1 %5768, float %5767, float %5725
  %5775 = fcmp fast ogt float %5725, %5767
  %5776 = fmul fast float %5774, %5766
  %5777 = fadd fast float %5774, %5766
  %5778 = fmul fast float %5777, %5560
  %5779 = fadd fast float %5776, %5561
  %5780 = fsub fast float %5779, %5778
  %5781 = fdiv fast float %5780, %5773
  %5782 = select i1 %5775, float %5781, float 0.000000e+00
  %5783 = fsub fast float 1.000000e+00, %5782
  %5784 = select i1 %5768, float %5783, float %5782
  %5785 = call float @dx.op.unary.f32(i32 7, float %5784)  ; Saturate(value)
  %5786 = extractvalue %dx.types.CBufRet.f32 %5545, 3
  %5787 = fmul fast float %5786, %5785
  %5788 = fsub fast float 1.000000e+00, %5787
  br label %5789

; <label>:5789                                    ; preds = %5718, %5430, %5395, %5391, %5355
  %5790 = phi float [ 1.000000e+00, %5355 ], [ %5788, %5718 ], [ 1.000000e+00, %5395 ], [ 1.000000e+00, %5430 ], [ 1.000000e+00, %5391 ]
  %5791 = fcmp fast ogt float %5387, 0.000000e+00
  br i1 %5791, label %5792, label %5956, !dx.controlflow.hints !128

; <label>:5792                                    ; preds = %5789
  %5793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5794 = extractvalue %dx.types.CBufRet.f32 %5793, 2
  %5795 = fadd fast float %5794, %5268
  %5796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5797 = extractvalue %dx.types.CBufRet.f32 %5796, 2
  %5798 = extractvalue %dx.types.CBufRet.f32 %5796, 3
  %5799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5800 = extractvalue %dx.types.CBufRet.f32 %5799, 2
  %5801 = call float @dx.op.binary.f32(i32 35, float %5795, float 0.000000e+00)  ; FMax(a,b)
  %5802 = fadd fast float %5801, 0x3F10000000000000
  %5803 = fcmp fast oeq float %5800, 0.000000e+00
  br i1 %5803, label %5804, label %5871

; <label>:5804                                    ; preds = %5792
  %5805 = extractvalue %dx.types.CBufRet.f32 %5796, 1
  %5806 = extractvalue %dx.types.CBufRet.f32 %5796, 0
  %5807 = fmul fast float %5806, %5286
  %5808 = fmul fast float %5805, %5287
  %5809 = fadd fast float %5807, 5.000000e-01
  %5810 = call float @dx.op.unary.f32(i32 27, float %5809)  ; Round_ni(value)
  %5811 = fadd fast float %5808, 5.000000e-01
  %5812 = call float @dx.op.unary.f32(i32 27, float %5811)  ; Round_ni(value)
  %5813 = fsub fast float %5809, %5810
  %5814 = fsub fast float %5811, %5812
  %5815 = fadd fast float %5810, -5.000000e-01
  %5816 = fadd fast float %5812, -5.000000e-01
  %5817 = fmul fast float %5813, 2.000000e+00
  %5818 = fsub fast float 3.000000e+00, %5817
  %5819 = fadd fast float %5817, 1.000000e+00
  %5820 = fsub fast float 2.000000e+00, %5813
  %5821 = bitcast float %5818 to i32
  %5822 = sub nsw i32 2129859010, %5821
  %5823 = bitcast i32 %5822 to float
  %5824 = fmul fast float %5823, %5820
  %5825 = fadd fast float %5824, -1.000000e+00
  %5826 = bitcast float %5819 to i32
  %5827 = sub nsw i32 2129859010, %5826
  %5828 = bitcast i32 %5827 to float
  %5829 = fmul fast float %5828, %5813
  %5830 = fadd fast float %5829, 1.000000e+00
  %5831 = fmul fast float %5814, 2.000000e+00
  %5832 = fsub fast float 3.000000e+00, %5831
  %5833 = fadd fast float %5831, 1.000000e+00
  %5834 = fsub fast float 2.000000e+00, %5814
  %5835 = bitcast float %5832 to i32
  %5836 = sub nsw i32 2129859010, %5835
  %5837 = bitcast i32 %5836 to float
  %5838 = fmul fast float %5837, %5834
  %5839 = fadd fast float %5838, -1.000000e+00
  %5840 = bitcast float %5833 to i32
  %5841 = sub nsw i32 2129859010, %5840
  %5842 = bitcast i32 %5841 to float
  %5843 = fmul fast float %5842, %5814
  %5844 = fadd fast float %5843, 1.000000e+00
  %5845 = fadd fast float %5825, %5815
  %5846 = fmul fast float %5845, %5797
  %5847 = fadd fast float %5839, %5816
  %5848 = fmul fast float %5847, %5798
  %5849 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %5846, float %5848, float undef, float undef, i32 0, i32 0, i32 undef, float %5802)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5850 = extractvalue %dx.types.ResRet.f32 %5849, 0
  %5851 = fmul fast float %5850, %5818
  %5852 = fadd fast float %5830, %5815
  %5853 = fmul fast float %5852, %5797
  %5854 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %5853, float %5848, float undef, float undef, i32 0, i32 0, i32 undef, float %5802)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5855 = extractvalue %dx.types.ResRet.f32 %5854, 0
  %5856 = fmul fast float %5855, %5819
  %5857 = fadd fast float %5844, %5816
  %5858 = fmul fast float %5857, %5798
  %5859 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %5846, float %5858, float undef, float undef, i32 0, i32 0, i32 undef, float %5802)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5860 = extractvalue %dx.types.ResRet.f32 %5859, 0
  %5861 = fmul fast float %5860, %5818
  %5862 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %5853, float %5858, float undef, float undef, i32 0, i32 0, i32 undef, float %5802)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5863 = extractvalue %dx.types.ResRet.f32 %5862, 0
  %5864 = fmul fast float %5863, %5819
  %5865 = fadd fast float %5864, %5861
  %5866 = fmul fast float %5865, %5833
  %5867 = fadd fast float %5856, %5851
  %5868 = fmul fast float %5867, %5832
  %5869 = fadd fast float %5868, %5866
  %5870 = fmul fast float %5869, 6.250000e-02
  br label %5956

; <label>:5871                                    ; preds = %5792
  %5872 = fmul fast float %273, 0x401921FB60000000
  %5873 = call float @dx.op.unary.f32(i32 13, float %5872)  ; Sin(value)
  %5874 = call float @dx.op.unary.f32(i32 12, float %5872)  ; Cos(value)
  %5875 = fsub fast float -0.000000e+00, %5873
  br label %5876

; <label>:5876                                    ; preds = %5925, %5871
  %5877 = phi float [ 0.000000e+00, %5871 ], [ %5920, %5925 ]
  %5878 = phi float [ 0.000000e+00, %5871 ], [ %5922, %5925 ]
  %5879 = phi i32 [ 0, %5871 ], [ %5926, %5925 ]
  %5880 = mul i32 %5879, 2
  %5881 = add i32 0, %5880
  %5882 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5881
  %5883 = load float, float* %5882, align 4
  %5884 = mul i32 %5879, 2
  %5885 = add i32 1, %5884
  %5886 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5885
  %5887 = load float, float* %5886, align 4
  %5888 = fmul fast float %5883, %5874
  %5889 = call float @dx.op.tertiary.f32(i32 46, float %5887, float %5875, float %5888)  ; FMad(a,b,c)
  %5890 = fmul fast float %5883, %5873
  %5891 = call float @dx.op.tertiary.f32(i32 46, float %5887, float %5874, float %5890)  ; FMad(a,b,c)
  %5892 = fmul fast float %5889, %5800
  %5893 = fmul fast float %5891, %5800
  %5894 = fadd fast float %5892, %5286
  %5895 = fadd fast float %5893, %5287
  %5896 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %57, float %5894, float %5895, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5897 = extractvalue %dx.types.ResRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.ResRet.f32 %5896, 1
  %5899 = extractvalue %dx.types.ResRet.f32 %5896, 2
  %5900 = extractvalue %dx.types.ResRet.f32 %5896, 3
  %5901 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 0
  store float %5897, float* %5901, align 4
  %5902 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 1
  store float %5898, float* %5902, align 4
  %5903 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 2
  store float %5899, float* %5903, align 4
  %5904 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 3
  store float %5900, float* %5904, align 4
  %5905 = fsub fast float %5897, %5802
  %5906 = fcmp fast olt float %5905, 0.000000e+00
  %5907 = select i1 %5906, float 0.000000e+00, float 1.000000e+00
  %5908 = fadd fast float %5907, %5877
  %5909 = fmul fast float %5907, %5905
  %5910 = fadd fast float %5909, %5878
  br label %5911

; <label>:5911                                    ; preds = %5911, %5876
  %5912 = phi i32 [ 1, %5876 ], [ %5923, %5911 ]
  %5913 = phi float [ %5910, %5876 ], [ %5922, %5911 ]
  %5914 = phi float [ %5908, %5876 ], [ %5920, %5911 ]
  %5915 = getelementptr [4 x float], [4 x float]* %109, i32 0, i32 %5912
  %5916 = load float, float* %5915, align 4, !tbaa !129, !noalias !119
  %5917 = fsub fast float %5916, %5802
  %5918 = fcmp fast olt float %5917, 0.000000e+00
  %5919 = select i1 %5918, float 0.000000e+00, float 1.000000e+00
  %5920 = fadd fast float %5919, %5914
  %5921 = fmul fast float %5919, %5917
  %5922 = fadd fast float %5921, %5913
  %5923 = add nuw nsw i32 %5912, 1
  %5924 = icmp eq i32 %5923, 4
  br i1 %5924, label %5925, label %5911, !llvm.loop !131

; <label>:5925                                    ; preds = %5911
  %5926 = add nuw nsw i32 %5879, 1
  %5927 = icmp eq i32 %5926, 8
  br i1 %5927, label %5928, label %5876, !llvm.loop !132

; <label>:5928                                    ; preds = %5925
  %5929 = fdiv fast float 1.000000e+00, %5920
  %5930 = fmul fast float %5929, %5922
  %5931 = fdiv fast float 1.000000e+00, %5802
  %5932 = fmul fast float %5930, %5931
  %5933 = call float @dx.op.unary.f32(i32 7, float %5932)  ; Saturate(value)
  %5934 = call float @dx.op.binary.f32(i32 35, float %5933, float 0.000000e+00)  ; FMax(a,b)
  %5935 = fmul fast float %5920, 3.125000e-02
  %5936 = call float @dx.op.unary.f32(i32 7, float %5935)  ; Saturate(value)
  %5937 = fmul fast float %5936, 2.000000e+00
  %5938 = fadd fast float %5937, -1.000000e+00
  %5939 = fcmp fast ogt float %5938, 0.000000e+00
  %5940 = fcmp fast olt float %5938, 0.000000e+00
  %5941 = zext i1 %5939 to i32
  %5942 = zext i1 %5940 to i32
  %5943 = sub nsw i32 %5941, %5942
  %5944 = sitofp i32 %5943 to float
  %5945 = fmul fast float %5944, %5938
  %5946 = fsub fast float 1.000000e+00, %5945
  %5947 = fmul fast float %5946, %5946
  %5948 = fmul fast float %5947, %5946
  %5949 = fsub fast float %5946, %5948
  %5950 = fmul fast float %5949, %5934
  %5951 = fsub fast float 1.000000e+00, %5948
  %5952 = fsub fast float %5951, %5950
  %5953 = fmul fast float %5944, 5.000000e-01
  %5954 = fmul fast float %5953, %5952
  %5955 = fsub fast float 5.000000e-01, %5954
  br label %5956

; <label>:5956                                    ; preds = %5928, %5804, %5789
  %5957 = phi float [ 1.000000e+00, %5789 ], [ %5870, %5804 ], [ %5955, %5928 ]
  %5958 = fcmp fast ogt float %5385, 0.000000e+00
  br i1 %5958, label %5959, label %6123, !dx.controlflow.hints !133

; <label>:5959                                    ; preds = %5956
  %5960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5960, 1
  %5962 = fadd fast float %5961, %5268
  %5963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5964 = extractvalue %dx.types.CBufRet.f32 %5963, 2
  %5965 = extractvalue %dx.types.CBufRet.f32 %5963, 3
  %5966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5967 = extractvalue %dx.types.CBufRet.f32 %5966, 1
  %5968 = call float @dx.op.binary.f32(i32 35, float %5962, float 0.000000e+00)  ; FMax(a,b)
  %5969 = fadd fast float %5968, 0x3F10000000000000
  %5970 = fcmp fast oeq float %5967, 0.000000e+00
  br i1 %5970, label %5971, label %6038

; <label>:5971                                    ; preds = %5959
  %5972 = extractvalue %dx.types.CBufRet.f32 %5963, 1
  %5973 = extractvalue %dx.types.CBufRet.f32 %5963, 0
  %5974 = fmul fast float %5973, %5278
  %5975 = fmul fast float %5972, %5279
  %5976 = fadd fast float %5974, 5.000000e-01
  %5977 = call float @dx.op.unary.f32(i32 27, float %5976)  ; Round_ni(value)
  %5978 = fadd fast float %5975, 5.000000e-01
  %5979 = call float @dx.op.unary.f32(i32 27, float %5978)  ; Round_ni(value)
  %5980 = fsub fast float %5976, %5977
  %5981 = fsub fast float %5978, %5979
  %5982 = fadd fast float %5977, -5.000000e-01
  %5983 = fadd fast float %5979, -5.000000e-01
  %5984 = fmul fast float %5980, 2.000000e+00
  %5985 = fsub fast float 3.000000e+00, %5984
  %5986 = fadd fast float %5984, 1.000000e+00
  %5987 = fsub fast float 2.000000e+00, %5980
  %5988 = bitcast float %5985 to i32
  %5989 = sub nsw i32 2129859010, %5988
  %5990 = bitcast i32 %5989 to float
  %5991 = fmul fast float %5990, %5987
  %5992 = fadd fast float %5991, -1.000000e+00
  %5993 = bitcast float %5986 to i32
  %5994 = sub nsw i32 2129859010, %5993
  %5995 = bitcast i32 %5994 to float
  %5996 = fmul fast float %5995, %5980
  %5997 = fadd fast float %5996, 1.000000e+00
  %5998 = fmul fast float %5981, 2.000000e+00
  %5999 = fsub fast float 3.000000e+00, %5998
  %6000 = fadd fast float %5998, 1.000000e+00
  %6001 = fsub fast float 2.000000e+00, %5981
  %6002 = bitcast float %5999 to i32
  %6003 = sub nsw i32 2129859010, %6002
  %6004 = bitcast i32 %6003 to float
  %6005 = fmul fast float %6004, %6001
  %6006 = fadd fast float %6005, -1.000000e+00
  %6007 = bitcast float %6000 to i32
  %6008 = sub nsw i32 2129859010, %6007
  %6009 = bitcast i32 %6008 to float
  %6010 = fmul fast float %6009, %5981
  %6011 = fadd fast float %6010, 1.000000e+00
  %6012 = fadd fast float %5992, %5982
  %6013 = fmul fast float %6012, %5964
  %6014 = fadd fast float %6006, %5983
  %6015 = fmul fast float %6014, %5965
  %6016 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %6013, float %6015, float undef, float undef, i32 0, i32 0, i32 undef, float %5969)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6017 = extractvalue %dx.types.ResRet.f32 %6016, 0
  %6018 = fmul fast float %6017, %5985
  %6019 = fadd fast float %5997, %5982
  %6020 = fmul fast float %6019, %5964
  %6021 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %6020, float %6015, float undef, float undef, i32 0, i32 0, i32 undef, float %5969)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6022 = extractvalue %dx.types.ResRet.f32 %6021, 0
  %6023 = fmul fast float %6022, %5986
  %6024 = fadd fast float %6011, %5983
  %6025 = fmul fast float %6024, %5965
  %6026 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %6013, float %6025, float undef, float undef, i32 0, i32 0, i32 undef, float %5969)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6027 = extractvalue %dx.types.ResRet.f32 %6026, 0
  %6028 = fmul fast float %6027, %5985
  %6029 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %6020, float %6025, float undef, float undef, i32 0, i32 0, i32 undef, float %5969)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6030 = extractvalue %dx.types.ResRet.f32 %6029, 0
  %6031 = fmul fast float %6030, %5986
  %6032 = fadd fast float %6031, %6028
  %6033 = fmul fast float %6032, %6000
  %6034 = fadd fast float %6023, %6018
  %6035 = fmul fast float %6034, %5999
  %6036 = fadd fast float %6035, %6033
  %6037 = fmul fast float %6036, 6.250000e-02
  br label %6123

; <label>:6038                                    ; preds = %5959
  %6039 = fmul fast float %273, 0x401921FB60000000
  %6040 = call float @dx.op.unary.f32(i32 13, float %6039)  ; Sin(value)
  %6041 = call float @dx.op.unary.f32(i32 12, float %6039)  ; Cos(value)
  %6042 = fsub fast float -0.000000e+00, %6040
  br label %6043

; <label>:6043                                    ; preds = %6092, %6038
  %6044 = phi float [ 0.000000e+00, %6038 ], [ %6087, %6092 ]
  %6045 = phi float [ 0.000000e+00, %6038 ], [ %6089, %6092 ]
  %6046 = phi i32 [ 0, %6038 ], [ %6093, %6092 ]
  %6047 = mul i32 %6046, 2
  %6048 = add i32 0, %6047
  %6049 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6048
  %6050 = load float, float* %6049, align 4
  %6051 = mul i32 %6046, 2
  %6052 = add i32 1, %6051
  %6053 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6052
  %6054 = load float, float* %6053, align 4
  %6055 = fmul fast float %6050, %6041
  %6056 = call float @dx.op.tertiary.f32(i32 46, float %6054, float %6042, float %6055)  ; FMad(a,b,c)
  %6057 = fmul fast float %6050, %6040
  %6058 = call float @dx.op.tertiary.f32(i32 46, float %6054, float %6041, float %6057)  ; FMad(a,b,c)
  %6059 = fmul fast float %6056, %5967
  %6060 = fmul fast float %6058, %5967
  %6061 = fadd fast float %6059, %5278
  %6062 = fadd fast float %6060, %5279
  %6063 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %57, float %6061, float %6062, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6064 = extractvalue %dx.types.ResRet.f32 %6063, 0
  %6065 = extractvalue %dx.types.ResRet.f32 %6063, 1
  %6066 = extractvalue %dx.types.ResRet.f32 %6063, 2
  %6067 = extractvalue %dx.types.ResRet.f32 %6063, 3
  %6068 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 0
  store float %6064, float* %6068, align 4
  %6069 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 1
  store float %6065, float* %6069, align 4
  %6070 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 2
  store float %6066, float* %6070, align 4
  %6071 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 3
  store float %6067, float* %6071, align 4
  %6072 = fsub fast float %6064, %5969
  %6073 = fcmp fast olt float %6072, 0.000000e+00
  %6074 = select i1 %6073, float 0.000000e+00, float 1.000000e+00
  %6075 = fadd fast float %6074, %6044
  %6076 = fmul fast float %6074, %6072
  %6077 = fadd fast float %6076, %6045
  br label %6078

; <label>:6078                                    ; preds = %6078, %6043
  %6079 = phi i32 [ 1, %6043 ], [ %6090, %6078 ]
  %6080 = phi float [ %6077, %6043 ], [ %6089, %6078 ]
  %6081 = phi float [ %6075, %6043 ], [ %6087, %6078 ]
  %6082 = getelementptr [4 x float], [4 x float]* %108, i32 0, i32 %6079
  %6083 = load float, float* %6082, align 4, !tbaa !129, !noalias !119
  %6084 = fsub fast float %6083, %5969
  %6085 = fcmp fast olt float %6084, 0.000000e+00
  %6086 = select i1 %6085, float 0.000000e+00, float 1.000000e+00
  %6087 = fadd fast float %6086, %6081
  %6088 = fmul fast float %6086, %6084
  %6089 = fadd fast float %6088, %6080
  %6090 = add nuw nsw i32 %6079, 1
  %6091 = icmp eq i32 %6090, 4
  br i1 %6091, label %6092, label %6078, !llvm.loop !131

; <label>:6092                                    ; preds = %6078
  %6093 = add nuw nsw i32 %6046, 1
  %6094 = icmp eq i32 %6093, 8
  br i1 %6094, label %6095, label %6043, !llvm.loop !132

; <label>:6095                                    ; preds = %6092
  %6096 = fdiv fast float 1.000000e+00, %6087
  %6097 = fmul fast float %6096, %6089
  %6098 = fdiv fast float 1.000000e+00, %5969
  %6099 = fmul fast float %6097, %6098
  %6100 = call float @dx.op.unary.f32(i32 7, float %6099)  ; Saturate(value)
  %6101 = call float @dx.op.binary.f32(i32 35, float %6100, float 0.000000e+00)  ; FMax(a,b)
  %6102 = fmul fast float %6087, 3.125000e-02
  %6103 = call float @dx.op.unary.f32(i32 7, float %6102)  ; Saturate(value)
  %6104 = fmul fast float %6103, 2.000000e+00
  %6105 = fadd fast float %6104, -1.000000e+00
  %6106 = fcmp fast ogt float %6105, 0.000000e+00
  %6107 = fcmp fast olt float %6105, 0.000000e+00
  %6108 = zext i1 %6106 to i32
  %6109 = zext i1 %6107 to i32
  %6110 = sub nsw i32 %6108, %6109
  %6111 = sitofp i32 %6110 to float
  %6112 = fmul fast float %6111, %6105
  %6113 = fsub fast float 1.000000e+00, %6112
  %6114 = fmul fast float %6113, %6113
  %6115 = fmul fast float %6114, %6113
  %6116 = fsub fast float %6113, %6115
  %6117 = fmul fast float %6116, %6101
  %6118 = fsub fast float 1.000000e+00, %6115
  %6119 = fsub fast float %6118, %6117
  %6120 = fmul fast float %6111, 5.000000e-01
  %6121 = fmul fast float %6120, %6119
  %6122 = fsub fast float 5.000000e-01, %6121
  br label %6123

; <label>:6123                                    ; preds = %6095, %5971, %5956
  %6124 = phi float [ 1.000000e+00, %5956 ], [ %6037, %5971 ], [ %6122, %6095 ]
  %6125 = fcmp fast ogt float %5384, 0.000000e+00
  br i1 %6125, label %6126, label %6444, !dx.controlflow.hints !134

; <label>:6126                                    ; preds = %6123
  %6127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6128 = extractvalue %dx.types.CBufRet.f32 %6127, 0
  %6129 = fadd fast float %6128, %5268
  %6130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6131 = extractvalue %dx.types.CBufRet.f32 %6130, 2
  %6132 = extractvalue %dx.types.CBufRet.f32 %6130, 3
  %6133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6134 = extractvalue %dx.types.CBufRet.f32 %6133, 0
  %6135 = call float @dx.op.binary.f32(i32 35, float %6129, float 0.000000e+00)  ; FMax(a,b)
  %6136 = fadd fast float %6135, 0x3F10000000000000
  %6137 = fcmp fast oeq float %6134, 0.000000e+00
  br i1 %5271, label %6138, label %6291, !dx.controlflow.hints !135

; <label>:6138                                    ; preds = %6126
  br i1 %6137, label %6139, label %6206

; <label>:6139                                    ; preds = %6138
  %6140 = extractvalue %dx.types.CBufRet.f32 %6130, 1
  %6141 = extractvalue %dx.types.CBufRet.f32 %6130, 0
  %6142 = fmul fast float %6141, %5260
  %6143 = fmul fast float %6140, %5264
  %6144 = fadd fast float %6142, 5.000000e-01
  %6145 = call float @dx.op.unary.f32(i32 27, float %6144)  ; Round_ni(value)
  %6146 = fadd fast float %6143, 5.000000e-01
  %6147 = call float @dx.op.unary.f32(i32 27, float %6146)  ; Round_ni(value)
  %6148 = fsub fast float %6144, %6145
  %6149 = fsub fast float %6146, %6147
  %6150 = fadd fast float %6145, -5.000000e-01
  %6151 = fadd fast float %6147, -5.000000e-01
  %6152 = fmul fast float %6148, 2.000000e+00
  %6153 = fsub fast float 3.000000e+00, %6152
  %6154 = fadd fast float %6152, 1.000000e+00
  %6155 = fsub fast float 2.000000e+00, %6148
  %6156 = bitcast float %6153 to i32
  %6157 = sub nsw i32 2129859010, %6156
  %6158 = bitcast i32 %6157 to float
  %6159 = fmul fast float %6158, %6155
  %6160 = fadd fast float %6159, -1.000000e+00
  %6161 = bitcast float %6154 to i32
  %6162 = sub nsw i32 2129859010, %6161
  %6163 = bitcast i32 %6162 to float
  %6164 = fmul fast float %6163, %6148
  %6165 = fadd fast float %6164, 1.000000e+00
  %6166 = fmul fast float %6149, 2.000000e+00
  %6167 = fsub fast float 3.000000e+00, %6166
  %6168 = fadd fast float %6166, 1.000000e+00
  %6169 = fsub fast float 2.000000e+00, %6149
  %6170 = bitcast float %6167 to i32
  %6171 = sub nsw i32 2129859010, %6170
  %6172 = bitcast i32 %6171 to float
  %6173 = fmul fast float %6172, %6169
  %6174 = fadd fast float %6173, -1.000000e+00
  %6175 = bitcast float %6168 to i32
  %6176 = sub nsw i32 2129859010, %6175
  %6177 = bitcast i32 %6176 to float
  %6178 = fmul fast float %6177, %6149
  %6179 = fadd fast float %6178, 1.000000e+00
  %6180 = fadd fast float %6160, %6150
  %6181 = fmul fast float %6180, %6131
  %6182 = fadd fast float %6174, %6151
  %6183 = fmul fast float %6182, %6132
  %6184 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %58, float %6181, float %6183, float undef, float undef, i32 0, i32 0, i32 undef, float %6136)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6185 = extractvalue %dx.types.ResRet.f32 %6184, 0
  %6186 = fmul fast float %6185, %6153
  %6187 = fadd fast float %6165, %6150
  %6188 = fmul fast float %6187, %6131
  %6189 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %58, float %6188, float %6183, float undef, float undef, i32 0, i32 0, i32 undef, float %6136)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6190 = extractvalue %dx.types.ResRet.f32 %6189, 0
  %6191 = fmul fast float %6190, %6154
  %6192 = fadd fast float %6179, %6151
  %6193 = fmul fast float %6192, %6132
  %6194 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %58, float %6181, float %6193, float undef, float undef, i32 0, i32 0, i32 undef, float %6136)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6195 = extractvalue %dx.types.ResRet.f32 %6194, 0
  %6196 = fmul fast float %6195, %6153
  %6197 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %58, float %6188, float %6193, float undef, float undef, i32 0, i32 0, i32 undef, float %6136)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6198 = extractvalue %dx.types.ResRet.f32 %6197, 0
  %6199 = fmul fast float %6198, %6154
  %6200 = fadd fast float %6199, %6196
  %6201 = fmul fast float %6200, %6168
  %6202 = fadd fast float %6191, %6186
  %6203 = fmul fast float %6202, %6167
  %6204 = fadd fast float %6203, %6201
  %6205 = fmul fast float %6204, 6.250000e-02
  br label %6444

; <label>:6206                                    ; preds = %6138
  %6207 = fmul fast float %273, 0x401921FB60000000
  %6208 = call float @dx.op.unary.f32(i32 13, float %6207)  ; Sin(value)
  %6209 = call float @dx.op.unary.f32(i32 12, float %6207)  ; Cos(value)
  %6210 = fsub fast float -0.000000e+00, %6208
  br label %6211

; <label>:6211                                    ; preds = %6260, %6206
  %6212 = phi float [ 0.000000e+00, %6206 ], [ %6255, %6260 ]
  %6213 = phi float [ 0.000000e+00, %6206 ], [ %6257, %6260 ]
  %6214 = phi i32 [ 0, %6206 ], [ %6261, %6260 ]
  %6215 = mul i32 %6214, 2
  %6216 = add i32 0, %6215
  %6217 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6216
  %6218 = load float, float* %6217, align 4
  %6219 = mul i32 %6214, 2
  %6220 = add i32 1, %6219
  %6221 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6220
  %6222 = load float, float* %6221, align 4
  %6223 = fmul fast float %6218, %6209
  %6224 = call float @dx.op.tertiary.f32(i32 46, float %6222, float %6210, float %6223)  ; FMad(a,b,c)
  %6225 = fmul fast float %6218, %6208
  %6226 = call float @dx.op.tertiary.f32(i32 46, float %6222, float %6209, float %6225)  ; FMad(a,b,c)
  %6227 = fmul fast float %6224, %6134
  %6228 = fmul fast float %6226, %6134
  %6229 = fadd fast float %6227, %5260
  %6230 = fadd fast float %6228, %5264
  %6231 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %57, float %6229, float %6230, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6232 = extractvalue %dx.types.ResRet.f32 %6231, 0
  %6233 = extractvalue %dx.types.ResRet.f32 %6231, 1
  %6234 = extractvalue %dx.types.ResRet.f32 %6231, 2
  %6235 = extractvalue %dx.types.ResRet.f32 %6231, 3
  %6236 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %6232, float* %6236, align 4
  %6237 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %6233, float* %6237, align 4
  %6238 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %6234, float* %6238, align 4
  %6239 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %6235, float* %6239, align 4
  %6240 = fsub fast float %6232, %6136
  %6241 = fcmp fast olt float %6240, 0.000000e+00
  %6242 = select i1 %6241, float 0.000000e+00, float 1.000000e+00
  %6243 = fadd fast float %6242, %6212
  %6244 = fmul fast float %6242, %6240
  %6245 = fadd fast float %6244, %6213
  br label %6246

; <label>:6246                                    ; preds = %6246, %6211
  %6247 = phi i32 [ 1, %6211 ], [ %6258, %6246 ]
  %6248 = phi float [ %6245, %6211 ], [ %6257, %6246 ]
  %6249 = phi float [ %6243, %6211 ], [ %6255, %6246 ]
  %6250 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %6247
  %6251 = load float, float* %6250, align 4, !tbaa !129, !noalias !119
  %6252 = fsub fast float %6251, %6136
  %6253 = fcmp fast olt float %6252, 0.000000e+00
  %6254 = select i1 %6253, float 0.000000e+00, float 1.000000e+00
  %6255 = fadd fast float %6254, %6249
  %6256 = fmul fast float %6254, %6252
  %6257 = fadd fast float %6256, %6248
  %6258 = add nuw nsw i32 %6247, 1
  %6259 = icmp eq i32 %6258, 4
  br i1 %6259, label %6260, label %6246, !llvm.loop !131

; <label>:6260                                    ; preds = %6246
  %6261 = add nuw nsw i32 %6214, 1
  %6262 = icmp eq i32 %6261, 8
  br i1 %6262, label %6263, label %6211, !llvm.loop !132

; <label>:6263                                    ; preds = %6260
  %6264 = fdiv fast float 1.000000e+00, %6255
  %6265 = fmul fast float %6264, %6257
  %6266 = fdiv fast float 1.000000e+00, %6136
  %6267 = fmul fast float %6265, %6266
  %6268 = call float @dx.op.unary.f32(i32 7, float %6267)  ; Saturate(value)
  %6269 = call float @dx.op.binary.f32(i32 35, float %6268, float 0.000000e+00)  ; FMax(a,b)
  %6270 = fmul fast float %6255, 3.125000e-02
  %6271 = call float @dx.op.unary.f32(i32 7, float %6270)  ; Saturate(value)
  %6272 = fmul fast float %6271, 2.000000e+00
  %6273 = fadd fast float %6272, -1.000000e+00
  %6274 = fcmp fast ogt float %6273, 0.000000e+00
  %6275 = fcmp fast olt float %6273, 0.000000e+00
  %6276 = zext i1 %6274 to i32
  %6277 = zext i1 %6275 to i32
  %6278 = sub nsw i32 %6276, %6277
  %6279 = sitofp i32 %6278 to float
  %6280 = fmul fast float %6279, %6273
  %6281 = fsub fast float 1.000000e+00, %6280
  %6282 = fmul fast float %6281, %6281
  %6283 = fmul fast float %6282, %6281
  %6284 = fsub fast float %6281, %6283
  %6285 = fmul fast float %6284, %6269
  %6286 = fsub fast float 1.000000e+00, %6283
  %6287 = fsub fast float %6286, %6285
  %6288 = fmul fast float %6279, 5.000000e-01
  %6289 = fmul fast float %6288, %6287
  %6290 = fsub fast float 5.000000e-01, %6289
  br label %6444

; <label>:6291                                    ; preds = %6126
  br i1 %6137, label %6292, label %6359

; <label>:6292                                    ; preds = %6291
  %6293 = extractvalue %dx.types.CBufRet.f32 %6130, 1
  %6294 = extractvalue %dx.types.CBufRet.f32 %6130, 0
  %6295 = fmul fast float %6294, %5260
  %6296 = fmul fast float %6293, %5264
  %6297 = fadd fast float %6295, 5.000000e-01
  %6298 = call float @dx.op.unary.f32(i32 27, float %6297)  ; Round_ni(value)
  %6299 = fadd fast float %6296, 5.000000e-01
  %6300 = call float @dx.op.unary.f32(i32 27, float %6299)  ; Round_ni(value)
  %6301 = fsub fast float %6297, %6298
  %6302 = fsub fast float %6299, %6300
  %6303 = fadd fast float %6298, -5.000000e-01
  %6304 = fadd fast float %6300, -5.000000e-01
  %6305 = fmul fast float %6301, 2.000000e+00
  %6306 = fsub fast float 3.000000e+00, %6305
  %6307 = fadd fast float %6305, 1.000000e+00
  %6308 = fsub fast float 2.000000e+00, %6301
  %6309 = bitcast float %6306 to i32
  %6310 = sub nsw i32 2129859010, %6309
  %6311 = bitcast i32 %6310 to float
  %6312 = fmul fast float %6311, %6308
  %6313 = fadd fast float %6312, -1.000000e+00
  %6314 = bitcast float %6307 to i32
  %6315 = sub nsw i32 2129859010, %6314
  %6316 = bitcast i32 %6315 to float
  %6317 = fmul fast float %6316, %6301
  %6318 = fadd fast float %6317, 1.000000e+00
  %6319 = fmul fast float %6302, 2.000000e+00
  %6320 = fsub fast float 3.000000e+00, %6319
  %6321 = fadd fast float %6319, 1.000000e+00
  %6322 = fsub fast float 2.000000e+00, %6302
  %6323 = bitcast float %6320 to i32
  %6324 = sub nsw i32 2129859010, %6323
  %6325 = bitcast i32 %6324 to float
  %6326 = fmul fast float %6325, %6322
  %6327 = fadd fast float %6326, -1.000000e+00
  %6328 = bitcast float %6321 to i32
  %6329 = sub nsw i32 2129859010, %6328
  %6330 = bitcast i32 %6329 to float
  %6331 = fmul fast float %6330, %6302
  %6332 = fadd fast float %6331, 1.000000e+00
  %6333 = fadd fast float %6313, %6303
  %6334 = fmul fast float %6333, %6131
  %6335 = fadd fast float %6327, %6304
  %6336 = fmul fast float %6335, %6132
  %6337 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %6334, float %6336, float undef, float undef, i32 0, i32 0, i32 undef, float %6136)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6338 = extractvalue %dx.types.ResRet.f32 %6337, 0
  %6339 = fmul fast float %6338, %6306
  %6340 = fadd fast float %6318, %6303
  %6341 = fmul fast float %6340, %6131
  %6342 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %6341, float %6336, float undef, float undef, i32 0, i32 0, i32 undef, float %6136)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6343 = extractvalue %dx.types.ResRet.f32 %6342, 0
  %6344 = fmul fast float %6343, %6307
  %6345 = fadd fast float %6332, %6304
  %6346 = fmul fast float %6345, %6132
  %6347 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %6334, float %6346, float undef, float undef, i32 0, i32 0, i32 undef, float %6136)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6348 = extractvalue %dx.types.ResRet.f32 %6347, 0
  %6349 = fmul fast float %6348, %6306
  %6350 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %6341, float %6346, float undef, float undef, i32 0, i32 0, i32 undef, float %6136)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6351 = extractvalue %dx.types.ResRet.f32 %6350, 0
  %6352 = fmul fast float %6351, %6307
  %6353 = fadd fast float %6352, %6349
  %6354 = fmul fast float %6353, %6321
  %6355 = fadd fast float %6344, %6339
  %6356 = fmul fast float %6355, %6320
  %6357 = fadd fast float %6356, %6354
  %6358 = fmul fast float %6357, 6.250000e-02
  br label %6444

; <label>:6359                                    ; preds = %6291
  %6360 = fmul fast float %273, 0x401921FB60000000
  %6361 = call float @dx.op.unary.f32(i32 13, float %6360)  ; Sin(value)
  %6362 = call float @dx.op.unary.f32(i32 12, float %6360)  ; Cos(value)
  %6363 = fsub fast float -0.000000e+00, %6361
  br label %6364

; <label>:6364                                    ; preds = %6413, %6359
  %6365 = phi float [ 0.000000e+00, %6359 ], [ %6408, %6413 ]
  %6366 = phi float [ 0.000000e+00, %6359 ], [ %6410, %6413 ]
  %6367 = phi i32 [ 0, %6359 ], [ %6414, %6413 ]
  %6368 = mul i32 %6367, 2
  %6369 = add i32 0, %6368
  %6370 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6369
  %6371 = load float, float* %6370, align 4
  %6372 = mul i32 %6367, 2
  %6373 = add i32 1, %6372
  %6374 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6373
  %6375 = load float, float* %6374, align 4
  %6376 = fmul fast float %6371, %6362
  %6377 = call float @dx.op.tertiary.f32(i32 46, float %6375, float %6363, float %6376)  ; FMad(a,b,c)
  %6378 = fmul fast float %6371, %6361
  %6379 = call float @dx.op.tertiary.f32(i32 46, float %6375, float %6362, float %6378)  ; FMad(a,b,c)
  %6380 = fmul fast float %6377, %6134
  %6381 = fmul fast float %6379, %6134
  %6382 = fadd fast float %6380, %5260
  %6383 = fadd fast float %6381, %5264
  %6384 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %57, float %6382, float %6383, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6385 = extractvalue %dx.types.ResRet.f32 %6384, 0
  %6386 = extractvalue %dx.types.ResRet.f32 %6384, 1
  %6387 = extractvalue %dx.types.ResRet.f32 %6384, 2
  %6388 = extractvalue %dx.types.ResRet.f32 %6384, 3
  %6389 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %6385, float* %6389, align 4
  %6390 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %6386, float* %6390, align 4
  %6391 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %6387, float* %6391, align 4
  %6392 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %6388, float* %6392, align 4
  %6393 = fsub fast float %6385, %6136
  %6394 = fcmp fast olt float %6393, 0.000000e+00
  %6395 = select i1 %6394, float 0.000000e+00, float 1.000000e+00
  %6396 = fadd fast float %6395, %6365
  %6397 = fmul fast float %6395, %6393
  %6398 = fadd fast float %6397, %6366
  br label %6399

; <label>:6399                                    ; preds = %6399, %6364
  %6400 = phi i32 [ 1, %6364 ], [ %6411, %6399 ]
  %6401 = phi float [ %6398, %6364 ], [ %6410, %6399 ]
  %6402 = phi float [ %6396, %6364 ], [ %6408, %6399 ]
  %6403 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %6400
  %6404 = load float, float* %6403, align 4, !tbaa !129, !noalias !119
  %6405 = fsub fast float %6404, %6136
  %6406 = fcmp fast olt float %6405, 0.000000e+00
  %6407 = select i1 %6406, float 0.000000e+00, float 1.000000e+00
  %6408 = fadd fast float %6407, %6402
  %6409 = fmul fast float %6407, %6405
  %6410 = fadd fast float %6409, %6401
  %6411 = add nuw nsw i32 %6400, 1
  %6412 = icmp eq i32 %6411, 4
  br i1 %6412, label %6413, label %6399, !llvm.loop !131

; <label>:6413                                    ; preds = %6399
  %6414 = add nuw nsw i32 %6367, 1
  %6415 = icmp eq i32 %6414, 8
  br i1 %6415, label %6416, label %6364, !llvm.loop !132

; <label>:6416                                    ; preds = %6413
  %6417 = fdiv fast float 1.000000e+00, %6408
  %6418 = fmul fast float %6417, %6410
  %6419 = fdiv fast float 1.000000e+00, %6136
  %6420 = fmul fast float %6418, %6419
  %6421 = call float @dx.op.unary.f32(i32 7, float %6420)  ; Saturate(value)
  %6422 = call float @dx.op.binary.f32(i32 35, float %6421, float 0.000000e+00)  ; FMax(a,b)
  %6423 = fmul fast float %6408, 3.125000e-02
  %6424 = call float @dx.op.unary.f32(i32 7, float %6423)  ; Saturate(value)
  %6425 = fmul fast float %6424, 2.000000e+00
  %6426 = fadd fast float %6425, -1.000000e+00
  %6427 = fcmp fast ogt float %6426, 0.000000e+00
  %6428 = fcmp fast olt float %6426, 0.000000e+00
  %6429 = zext i1 %6427 to i32
  %6430 = zext i1 %6428 to i32
  %6431 = sub nsw i32 %6429, %6430
  %6432 = sitofp i32 %6431 to float
  %6433 = fmul fast float %6432, %6426
  %6434 = fsub fast float 1.000000e+00, %6433
  %6435 = fmul fast float %6434, %6434
  %6436 = fmul fast float %6435, %6434
  %6437 = fsub fast float %6434, %6436
  %6438 = fmul fast float %6437, %6422
  %6439 = fsub fast float 1.000000e+00, %6436
  %6440 = fsub fast float %6439, %6438
  %6441 = fmul fast float %6432, 5.000000e-01
  %6442 = fmul fast float %6441, %6440
  %6443 = fsub fast float 5.000000e-01, %6442
  br label %6444

; <label>:6444                                    ; preds = %6416, %6292, %6263, %6139, %6123
  %6445 = phi float [ 1.000000e+00, %6123 ], [ %6205, %6139 ], [ %6290, %6263 ], [ %6358, %6292 ], [ %6443, %6416 ]
  %6446 = fsub fast float %5957, %5790
  %6447 = fmul fast float %6446, %5357
  %6448 = fadd fast float %6447, %5790
  %6449 = fsub fast float %6124, %6448
  %6450 = fmul fast float %6449, %5356
  %6451 = fadd fast float %6450, %6448
  %6452 = fsub fast float %6445, %6451
  %6453 = fmul fast float %6452, %5384
  %6454 = fadd fast float %6453, %6451
  %6455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6456 = extractvalue %dx.types.CBufRet.f32 %6455, 2
  %6457 = fcmp fast ogt float %6456, 0.000000e+00
  br i1 %6457, label %6458, label %6498, !dx.controlflow.hints !136

; <label>:6458                                    ; preds = %6444
  %6459 = fcmp fast ugt float %6456, 0.000000e+00
  br i1 %6459, label %6460, label %6495

; <label>:6460                                    ; preds = %6458
  %6461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6462 = extractvalue %dx.types.CBufRet.f32 %6461, 0
  %6463 = extractvalue %dx.types.CBufRet.f32 %6461, 1
  %6464 = extractvalue %dx.types.CBufRet.f32 %6461, 2
  %6465 = extractvalue %dx.types.CBufRet.f32 %6461, 3
  %6466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6467 = extractvalue %dx.types.CBufRet.f32 %6466, 0
  %6468 = extractvalue %dx.types.CBufRet.f32 %6466, 1
  %6469 = extractvalue %dx.types.CBufRet.f32 %6466, 2
  %6470 = extractvalue %dx.types.CBufRet.f32 %6466, 3
  %6471 = extractvalue %dx.types.CBufRet.f32 %6455, 0
  %6472 = extractvalue %dx.types.CBufRet.f32 %6455, 1
  %6473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6474 = extractvalue %dx.types.CBufRet.f32 %6473, 0
  %6475 = extractvalue %dx.types.CBufRet.f32 %6473, 1
  %6476 = extractvalue %dx.types.CBufRet.f32 %6473, 2
  %6477 = fadd fast float %6474, %5237
  %6478 = fadd fast float %6475, %5238
  %6479 = fadd fast float %6476, %5239
  %6480 = fmul fast float %6477, %6462
  %6481 = call float @dx.op.tertiary.f32(i32 46, float %6463, float %6478, float %6480)  ; FMad(a,b,c)
  %6482 = call float @dx.op.tertiary.f32(i32 46, float %6464, float %6479, float %6481)  ; FMad(a,b,c)
  %6483 = fadd fast float %6482, %6465
  %6484 = fmul fast float %6477, %6467
  %6485 = call float @dx.op.tertiary.f32(i32 46, float %6468, float %6478, float %6484)  ; FMad(a,b,c)
  %6486 = call float @dx.op.tertiary.f32(i32 46, float %6469, float %6479, float %6485)  ; FMad(a,b,c)
  %6487 = fadd fast float %6486, %6470
  %6488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %14, %dx.types.Handle %53, float %6483, float %6487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6489 = extractvalue %dx.types.ResRet.f32 %6488, 0
  %6490 = fmul fast float %6489, %6472
  %6491 = fadd fast float %6490, %6471
  %6492 = call float @dx.op.unary.f32(i32 7, float %6491)  ; Saturate(value)
  %6493 = fmul fast float %6492, %6456
  %6494 = fsub fast float 1.000000e+00, %6493
  br label %6495

; <label>:6495                                    ; preds = %6460, %6458
  %6496 = phi float [ %6494, %6460 ], [ 1.000000e+00, %6458 ]
  %6497 = fmul fast float %6496, %6454
  br label %6498

; <label>:6498                                    ; preds = %6495, %6444, %5217
  %6499 = phi float [ 1.000000e+00, %5217 ], [ %6497, %6495 ], [ %6454, %6444 ]
  %6500 = call float @dx.op.binary.f32(i32 36, float %6499, float %6499)  ; FMin(a,b)
  %6501 = call float @dx.op.binary.f32(i32 36, float %6499, float %6500)  ; FMin(a,b)
  %6502 = fcmp fast ogt float %6501, 0.000000e+00
  br i1 %6502, label %6503, label %6668, !dx.controlflow.hints !137

; <label>:6503                                    ; preds = %6498
  %6504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6505 = extractvalue %dx.types.CBufRet.f32 %6504, 0
  %6506 = extractvalue %dx.types.CBufRet.f32 %6504, 1
  %6507 = extractvalue %dx.types.CBufRet.f32 %6504, 2
  %6508 = extractvalue %dx.types.CBufRet.f32 %6504, 3
  %6509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6510 = extractvalue %dx.types.CBufRet.f32 %6509, 0
  %6511 = extractvalue %dx.types.CBufRet.f32 %6509, 1
  %6512 = extractvalue %dx.types.CBufRet.f32 %6509, 2
  %6513 = extractvalue %dx.types.CBufRet.f32 %6509, 3
  %6514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6515 = extractvalue %dx.types.CBufRet.f32 %6514, 0
  %6516 = extractvalue %dx.types.CBufRet.f32 %6514, 1
  %6517 = extractvalue %dx.types.CBufRet.f32 %6514, 2
  %6518 = extractvalue %dx.types.CBufRet.f32 %6514, 3
  %6519 = fmul fast float %6505, %5237
  %6520 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %6506, float %6519)  ; FMad(a,b,c)
  %6521 = call float @dx.op.tertiary.f32(i32 46, float %5239, float %6507, float %6520)  ; FMad(a,b,c)
  %6522 = fadd fast float %6521, %6508
  %6523 = fmul fast float %6510, %5237
  %6524 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %6511, float %6523)  ; FMad(a,b,c)
  %6525 = call float @dx.op.tertiary.f32(i32 46, float %5239, float %6512, float %6524)  ; FMad(a,b,c)
  %6526 = fadd fast float %6525, %6513
  %6527 = fmul fast float %6515, %5237
  %6528 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %6516, float %6527)  ; FMad(a,b,c)
  %6529 = call float @dx.op.tertiary.f32(i32 46, float %5239, float %6517, float %6528)  ; FMad(a,b,c)
  %6530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6531 = extractvalue %dx.types.CBufRet.f32 %6530, 0
  %6532 = extractvalue %dx.types.CBufRet.f32 %6530, 1
  %6533 = extractvalue %dx.types.CBufRet.f32 %6530, 3
  %6534 = fmul fast float %6533, %6522
  %6535 = fmul fast float %6533, %6526
  %6536 = fadd fast float %6534, %6531
  %6537 = fadd fast float %6535, %6532
  %6538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6539 = extractvalue %dx.types.CBufRet.f32 %6538, 0
  %6540 = extractvalue %dx.types.CBufRet.f32 %6538, 1
  %6541 = fsub fast float %6536, %6539
  %6542 = fsub fast float %6537, %6540
  %6543 = fcmp fast olt float %6541, 0.000000e+00
  %6544 = fcmp fast olt float %6542, 0.000000e+00
  %6545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6546 = extractvalue %dx.types.CBufRet.f32 %6545, 0
  %6547 = extractvalue %dx.types.CBufRet.f32 %6545, 1
  %6548 = extractvalue %dx.types.CBufRet.f32 %6545, 2
  %6549 = extractvalue %dx.types.CBufRet.f32 %6545, 3
  %6550 = select i1 %6543, float %6546, float %6548
  %6551 = select i1 %6544, float %6547, float %6549
  %6552 = fmul fast float %6550, %6541
  %6553 = fmul fast float %6551, %6542
  %6554 = call float @dx.op.unary.f32(i32 6, float %6552)  ; FAbs(value)
  %6555 = call float @dx.op.unary.f32(i32 6, float %6553)  ; FAbs(value)
  %6556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6557 = extractvalue %dx.types.CBufRet.f32 %6556, 0
  %6558 = call float @dx.op.binary.f32(i32 35, float %6554, float %6555)  ; FMax(a,b)
  %6559 = fsub fast float %6557, %6558
  %6560 = call float @dx.op.unary.f32(i32 7, float %6559)  ; Saturate(value)
  %6561 = fcmp fast ogt float %6560, 0.000000e+00
  br i1 %6561, label %6562, label %6603, !dx.controlflow.hints !138

; <label>:6562                                    ; preds = %6503
  %6563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %56, float %6536, float %6537, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6564 = extractvalue %dx.types.ResRet.f32 %6563, 1
  %6565 = fcmp fast ogt float %6564, 0.000000e+00
  br i1 %6565, label %6566, label %6598

; <label>:6566                                    ; preds = %6562
  %6567 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %56, float %6536, float %6537, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6568 = extractvalue %dx.types.ResRet.f32 %6567, 0
  %6569 = extractvalue %dx.types.ResRet.f32 %6567, 1
  %6570 = extractvalue %dx.types.ResRet.f32 %6567, 2
  %6571 = extractvalue %dx.types.ResRet.f32 %6567, 3
  %6572 = fsub fast float 1.000000e+00, %6518
  %6573 = fsub fast float %6572, %6529
  %6574 = fmul fast float %6573, 0x400921FB60000000
  %6575 = fadd fast float %6574, 0x3FF921FB60000000
  %6576 = call float @dx.op.unary.f32(i32 13, float %6575)  ; Sin(value)
  %6577 = fadd fast float %6576, -1.000000e+00
  %6578 = fmul fast float %6577, 0x3FD45F3060000000
  %6579 = fmul fast float %6573, 0x401921FB60000000
  %6580 = fadd fast float %6579, 0x400921FB60000000
  %6581 = call float @dx.op.unary.f32(i32 13, float %6580)  ; Sin(value)
  %6582 = fadd fast float %6581, 0x3E7777A5C0000000
  %6583 = fmul fast float %6582, 0x3FC45F3060000000
  %6584 = fmul fast float %6573, 0x4022D97C80000000
  %6585 = fadd fast float %6584, 0x4012D97C80000000
  %6586 = call float @dx.op.unary.f32(i32 13, float %6585)  ; Sin(value)
  %6587 = fadd fast float %6586, 1.000000e+00
  %6588 = fmul fast float %6587, 0x3FBB2995E0000000
  %6589 = fmul fast float %6573, 0x402921FB60000000
  %6590 = fadd fast float %6589, 0x401921FB60000000
  %6591 = call float @dx.op.unary.f32(i32 13, float %6590)  ; Sin(value)
  %6592 = fadd fast float %6591, 0xBE8777A5C0000000
  %6593 = fmul fast float %6592, 0x3FB45F3060000000
  %6594 = call float @dx.op.dot4.f32(i32 56, float %6568, float %6569, float %6570, float %6571, float %6578, float %6583, float %6588, float %6593)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6595 = fmul fast float %6594, 0xBFF7154760000000
  %6596 = call float @dx.op.unary.f32(i32 21, float %6595)  ; Exp(value)
  %6597 = call float @dx.op.unary.f32(i32 7, float %6596)  ; Saturate(value)
  br label %6598

; <label>:6598                                    ; preds = %6566, %6562
  %6599 = phi float [ %6597, %6566 ], [ 1.000000e+00, %6562 ]
  %6600 = fadd fast float %6599, -1.000000e+00
  %6601 = fmul fast float %6600, %6560
  %6602 = fadd fast float %6601, 1.000000e+00
  br label %6603

; <label>:6603                                    ; preds = %6598, %6503
  %6604 = phi float [ %6602, %6598 ], [ 1.000000e+00, %6503 ]
  %6605 = fmul fast float %6604, %6499
  %6606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6607 = extractvalue %dx.types.CBufRet.f32 %6606, 0
  %6608 = extractvalue %dx.types.CBufRet.f32 %6606, 1
  %6609 = extractvalue %dx.types.CBufRet.f32 %6606, 2
  %6610 = fadd fast float %6607, %203
  %6611 = fadd fast float %6608, %204
  %6612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6613 = extractvalue %dx.types.CBufRet.f32 %6612, 1
  %6614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6615 = extractvalue %dx.types.CBufRet.f32 %6614, 0
  %6616 = extractvalue %dx.types.CBufRet.f32 %6614, 1
  %6617 = extractvalue %dx.types.CBufRet.f32 %6614, 2
  %6618 = fsub fast float -0.000000e+00, %6610
  %6619 = fsub fast float -0.000000e+00, %6611
  %6620 = fsub fast float %4489, %6609
  %6621 = fadd fast float %6620, %6613
  %6622 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6618, float %6619, float %6621)  ; Dot3(ax,ay,az,bx,by,bz)
  %6623 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6615, float %6616, float %6617)  ; Dot3(ax,ay,az,bx,by,bz)
  %6624 = fdiv fast float 1.000000e+00, %6623
  %6625 = fmul fast float %6624, %6622
  %6626 = fmul fast float %6615, %6625
  %6627 = fmul fast float %6616, %6625
  %6628 = fadd fast float %6626, %6610
  %6629 = fadd fast float %6627, %6611
  %6630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6631 = extractvalue %dx.types.CBufRet.f32 %6630, 0
  %6632 = extractvalue %dx.types.CBufRet.f32 %6630, 1
  %6633 = fsub fast float %6628, %6631
  %6634 = fsub fast float %6629, %6632
  %6635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6636 = extractvalue %dx.types.CBufRet.f32 %6635, 2
  %6637 = extractvalue %dx.types.CBufRet.f32 %6635, 3
  %6638 = fmul fast float %6633, %6636
  %6639 = fmul fast float %6634, %6637
  %6640 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6641 = extractvalue %dx.types.CBufRet.i32 %6640, 3
  %6642 = icmp eq i32 %6641, 0
  br i1 %6642, label %6648, label %6643

; <label>:6643                                    ; preds = %6603
  %6644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %55, float %6638, float %6639, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6645 = extractvalue %dx.types.ResRet.f32 %6644, 0
  %6646 = extractvalue %dx.types.ResRet.f32 %6644, 1
  %6647 = extractvalue %dx.types.ResRet.f32 %6644, 2
  br label %6653

; <label>:6648                                    ; preds = %6603
  %6649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %56, float %6638, float %6639, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6650 = extractvalue %dx.types.ResRet.f32 %6649, 0
  %6651 = extractvalue %dx.types.ResRet.f32 %6649, 1
  %6652 = extractvalue %dx.types.ResRet.f32 %6649, 2
  br label %6653

; <label>:6653                                    ; preds = %6648, %6643
  %6654 = phi float [ %6645, %6643 ], [ %6650, %6648 ]
  %6655 = phi float [ %6646, %6643 ], [ %6651, %6648 ]
  %6656 = phi float [ %6647, %6643 ], [ %6652, %6648 ]
  %6657 = extractvalue %dx.types.CBufRet.f32 %6612, 2
  %6658 = fmul fast float %6657, %6654
  %6659 = extractvalue %dx.types.CBufRet.f32 %6612, 0
  %6660 = fsub fast float %6625, %6659
  %6661 = fsub fast float %6660, %6658
  %6662 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6661)  ; FMax(a,b)
  %6663 = fmul fast float %6662, %6655
  %6664 = call float @dx.op.binary.f32(i32 36, float %6656, float %6663)  ; FMin(a,b)
  %6665 = fmul fast float %6664, 0xBFF7154760000000
  %6666 = call float @dx.op.unary.f32(i32 21, float %6665)  ; Exp(value)
  %6667 = fmul fast float %6605, %6666
  br label %6668

; <label>:6668                                    ; preds = %6653, %6498
  %6669 = phi float [ %6667, %6653 ], [ %6499, %6498 ]
  %6670 = call float @dx.op.binary.f32(i32 36, float %6669, float %6669)  ; FMin(a,b)
  %6671 = call float @dx.op.binary.f32(i32 36, float %6669, float %6670)  ; FMin(a,b)
  %6672 = fcmp fast ogt float %6671, 0.000000e+00
  br i1 %6672, label %6673, label %6920, !dx.controlflow.hints !139

; <label>:6673                                    ; preds = %6668
  %6674 = fmul fast float %6669, %5229
  %6675 = fmul fast float %6669, %5230
  %6676 = fmul fast float %6669, %5231
  %6677 = fsub fast float %205, %3666
  %6678 = fcmp fast ogt float %6677, 0.000000e+00
  %6679 = fmul fast float %5218, 5.120000e+02
  %6680 = fmul fast float %5219, 5.120000e+02
  %6681 = fmul fast float %5220, 5.120000e+02
  %6682 = fadd fast float %6681, %205
  %6683 = fsub fast float %3666, %6682
  %6684 = fmul fast float %6683, 2.000000e+00
  %6685 = fadd fast float %6684, %6682
  %6686 = select i1 %6678, float %6685, float %6682
  %6687 = fsub fast float %6686, %205
  %6688 = call float @dx.op.dot3.f32(i32 55, float %6679, float %6680, float %6687, float %6679, float %6680, float %6687)  ; Dot3(ax,ay,az,bx,by,bz)
  %6689 = call float @dx.op.unary.f32(i32 25, float %6688)  ; Rsqrt(value)
  %6690 = fmul fast float %6689, %6679
  %6691 = fmul fast float %6689, %6680
  %6692 = fmul fast float %6689, %6687
  %6693 = fsub fast float %3666, %205
  %6694 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6693)  ; Dot3(ax,ay,az,bx,by,bz)
  %6695 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6690, float %6691, float %6692)  ; Dot3(ax,ay,az,bx,by,bz)
  %6696 = fdiv fast float 1.000000e+00, %6695
  %6697 = fmul fast float %6696, %6694
  %6698 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6677, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6699 = fcmp fast ogt float %6698, 0.000000e+00
  %6700 = fcmp fast olt float %6698, 0.000000e+00
  %6701 = zext i1 %6699 to i32
  %6702 = zext i1 %6700 to i32
  %6703 = sub nsw i32 %6701, %6702
  %6704 = sitofp i32 %6703 to float
  %6705 = fsub fast float %6686, %3666
  %6706 = call float @dx.op.dot3.f32(i32 55, float %6679, float %6680, float %6705, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6707 = fcmp fast ogt float %6706, 0.000000e+00
  %6708 = fcmp fast olt float %6706, 0.000000e+00
  %6709 = zext i1 %6707 to i32
  %6710 = zext i1 %6708 to i32
  %6711 = sub nsw i32 %6709, %6710
  %6712 = sitofp i32 %6711 to float
  %6713 = fcmp fast une float %6704, %6712
  br i1 %6713, label %6714, label %6724

; <label>:6714                                    ; preds = %6673
  %6715 = fmul fast float %6697, %6692
  %6716 = fmul fast float %6697, %6691
  %6717 = fmul fast float %6697, %6690
  %6718 = fmul fast float %6717, %6717
  %6719 = fmul fast float %6716, %6716
  %6720 = fadd fast float %6718, %6719
  %6721 = fmul fast float %6715, %6715
  %6722 = fadd fast float %6720, %6721
  %6723 = call float @dx.op.unary.f32(i32 24, float %6722)  ; Sqrt(value)
  br label %6734

; <label>:6724                                    ; preds = %6673
  %6725 = icmp slt i32 %6703, 0
  br i1 %6725, label %6726, label %6734

; <label>:6726                                    ; preds = %6724
  %6727 = fsub fast float %205, %6686
  %6728 = fmul fast float %6679, %6679
  %6729 = fmul fast float %6680, %6680
  %6730 = fadd fast float %6728, %6729
  %6731 = fmul fast float %6727, %6727
  %6732 = fadd fast float %6730, %6731
  %6733 = call float @dx.op.unary.f32(i32 24, float %6732)  ; Sqrt(value)
  br label %6734

; <label>:6734                                    ; preds = %6726, %6724, %6714
  %6735 = phi float [ %6723, %6714 ], [ %6733, %6726 ], [ 0.000000e+00, %6724 ]
  %6736 = fsub fast float -0.000000e+00, %6735
  %6737 = select i1 %6678, float -0.000000e+00, float %6736
  %6738 = fmul fast float %3667, 0x3FF7154760000000
  %6739 = fmul fast float %6738, %6737
  %6740 = fmul fast float %3668, 0x3FF7154760000000
  %6741 = fmul fast float %6740, %6737
  %6742 = fmul fast float %3669, 0x3FF7154760000000
  %6743 = fmul fast float %6742, %6737
  %6744 = call float @dx.op.unary.f32(i32 21, float %6739)  ; Exp(value)
  %6745 = call float @dx.op.unary.f32(i32 21, float %6741)  ; Exp(value)
  %6746 = call float @dx.op.unary.f32(i32 21, float %6743)  ; Exp(value)
  %6747 = call float @dx.op.unary.f32(i32 7, float %6744)  ; Saturate(value)
  %6748 = call float @dx.op.unary.f32(i32 7, float %6745)  ; Saturate(value)
  %6749 = call float @dx.op.unary.f32(i32 7, float %6746)  ; Saturate(value)
  %6750 = fmul fast float %6674, %6747
  %6751 = fmul fast float %6675, %6748
  %6752 = fmul fast float %6676, %6749
  %6753 = fsub fast float %5218, %4492
  %6754 = fsub fast float %5219, %4493
  %6755 = fsub fast float %5220, %4494
  %6756 = call float @dx.op.dot3.f32(i32 55, float %6753, float %6754, float %6755, float %6753, float %6754, float %6755)  ; Dot3(ax,ay,az,bx,by,bz)
  %6757 = call float @dx.op.unary.f32(i32 25, float %6756)  ; Rsqrt(value)
  %6758 = fmul fast float %6757, %6753
  %6759 = fmul fast float %6757, %6754
  %6760 = fmul fast float %6757, %6755
  %6761 = call float @dx.op.dot3.f32(i32 55, float %5218, float %5219, float %5220, float %4449, float %4450, float %4451)  ; Dot3(ax,ay,az,bx,by,bz)
  %6762 = call float @dx.op.dot3.f32(i32 55, float %4495, float %4496, float %4497, float %6758, float %6759, float %6760)  ; Dot3(ax,ay,az,bx,by,bz)
  %6763 = call float @dx.op.unary.f32(i32 7, float %6761)  ; Saturate(value)
  %6764 = fmul fast float %6763, %6763
  %6765 = fmul fast float %6764, %4525
  %6766 = call float @dx.op.unary.f32(i32 7, float %6765)  ; Saturate(value)
  %6767 = fmul fast float %6766, %6763
  %6768 = call float @dx.op.dot3.f32(i32 55, float %4449, float %4450, float %4451, float %6758, float %6759, float %6760)  ; Dot3(ax,ay,az,bx,by,bz)
  %6769 = fmul fast float %6768, %6768
  %6770 = call float @dx.op.unary.f32(i32 6, float %6761)  ; FAbs(value)
  %6771 = fsub fast float 1.000000e+00, %4518
  %6772 = fmul fast float %4500, %4500
  %6773 = fmul fast float %6772, %6771
  %6774 = fadd fast float %6773, %4518
  %6775 = bitcast float %6774 to i32
  %6776 = ashr i32 %6775, 1
  %6777 = add nsw i32 %6776, 532487669
  %6778 = bitcast i32 %6777 to float
  %6779 = fadd fast float %6778, %4500
  %6780 = fmul fast float %4518, %6769
  %6781 = fsub fast float 1.000000e+00, %6769
  %6782 = fadd fast float %6781, %6780
  %6783 = fmul fast float %6770, %6770
  %6784 = fmul fast float %6783, %6771
  %6785 = fadd fast float %6784, %4518
  %6786 = bitcast float %6785 to i32
  %6787 = ashr i32 %6786, 1
  %6788 = add nsw i32 %6787, 532487669
  %6789 = bitcast i32 %6788 to float
  %6790 = fadd fast float %6789, %6770
  %6791 = fmul fast float %6782, %6782
  %6792 = fmul fast float %6791, %6779
  %6793 = fmul fast float %6792, %6790
  %6794 = fdiv fast float 0x3FF0A00000000000, %6793
  %6795 = fmul fast float %6794, %4518
  %6796 = call float @dx.op.unary.f32(i32 6, float %6762)  ; FAbs(value)
  %6797 = fsub fast float 1.000000e+00, %6796
  %6798 = bitcast float %6797 to i32
  %6799 = sitofp i32 %6798 to float
  %6800 = fmul fast float %6799, 5.000000e+00
  %6801 = fadd fast float %6800, 0xC1EFBF8940000000
  %6802 = fptosi float %6801 to i32
  %6803 = bitcast i32 %6802 to float
  %6804 = fsub fast float 1.000000e+00, %4446
  %6805 = fsub fast float 1.000000e+00, %4447
  %6806 = fsub fast float 1.000000e+00, %4498
  %6807 = fmul fast float %6803, %6804
  %6808 = fmul fast float %6803, %6805
  %6809 = fmul fast float %6803, %6806
  %6810 = fadd fast float %6807, %4446
  %6811 = fadd fast float %6808, %4447
  %6812 = fadd fast float %6809, %4498
  br i1 %4637, label %6813, label %6836

; <label>:6813                                    ; preds = %6734
  %6814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %56, float %3265, float %6796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6815 = extractvalue %dx.types.ResRet.f32 %6814, 0
  %6816 = extractvalue %dx.types.ResRet.f32 %6814, 1
  %6817 = extractvalue %dx.types.ResRet.f32 %6814, 2
  %6818 = fadd fast float %6815, -5.000000e-01
  %6819 = fadd fast float %6816, -5.000000e-01
  %6820 = fadd fast float %6817, -5.000000e-01
  %6821 = fmul fast float %4446, 4.000000e+00
  %6822 = fmul fast float %6821, %6804
  %6823 = fmul fast float %6822, %6818
  %6824 = fmul fast float %4447, 4.000000e+00
  %6825 = fmul fast float %6824, %6805
  %6826 = fmul fast float %6825, %6819
  %6827 = fmul fast float %4498, 4.000000e+00
  %6828 = fmul fast float %6827, %6806
  %6829 = fmul fast float %6828, %6820
  %6830 = fadd fast float %6823, %6810
  %6831 = fadd fast float %6826, %6811
  %6832 = fadd fast float %6829, %6812
  %6833 = call float @dx.op.unary.f32(i32 7, float %6830)  ; Saturate(value)
  %6834 = call float @dx.op.unary.f32(i32 7, float %6831)  ; Saturate(value)
  %6835 = call float @dx.op.unary.f32(i32 7, float %6832)  ; Saturate(value)
  br label %6836

; <label>:6836                                    ; preds = %6813, %6734
  %6837 = phi float [ %6833, %6813 ], [ %6810, %6734 ]
  %6838 = phi float [ %6834, %6813 ], [ %6811, %6734 ]
  %6839 = phi float [ %6835, %6813 ], [ %6812, %6734 ]
  %6840 = fmul fast float %6761, 9.843750e-01
  %6841 = fadd fast float %6840, 7.812500e-03
  %6842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %56, float %6841, float %4627, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6843 = extractvalue %dx.types.ResRet.f32 %6842, 2
  %6844 = extractvalue %dx.types.ResRet.f32 %6842, 3
  %6845 = fmul fast float %6843, %4446
  %6846 = fmul fast float %6843, %4447
  %6847 = fmul fast float %6843, %4498
  %6848 = fadd fast float %6845, %6844
  %6849 = fadd fast float %6846, %6844
  %6850 = fadd fast float %6847, %6844
  br i1 %4637, label %6851, label %6874

; <label>:6851                                    ; preds = %6836
  %6852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %56, float %3265, float %6761, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6853 = extractvalue %dx.types.ResRet.f32 %6852, 0
  %6854 = extractvalue %dx.types.ResRet.f32 %6852, 1
  %6855 = extractvalue %dx.types.ResRet.f32 %6852, 2
  %6856 = fadd fast float %6853, -5.000000e-01
  %6857 = fadd fast float %6854, -5.000000e-01
  %6858 = fadd fast float %6855, -5.000000e-01
  %6859 = fmul fast float %4446, 4.000000e+00
  %6860 = fmul fast float %6859, %6804
  %6861 = fmul fast float %6860, %6856
  %6862 = fmul fast float %4447, 4.000000e+00
  %6863 = fmul fast float %6862, %6805
  %6864 = fmul fast float %6863, %6857
  %6865 = fmul fast float %4498, 4.000000e+00
  %6866 = fmul fast float %6865, %6806
  %6867 = fmul fast float %6866, %6858
  %6868 = fadd fast float %6861, %6848
  %6869 = fadd fast float %6864, %6849
  %6870 = fadd fast float %6867, %6850
  %6871 = call float @dx.op.unary.f32(i32 7, float %6868)  ; Saturate(value)
  %6872 = call float @dx.op.unary.f32(i32 7, float %6869)  ; Saturate(value)
  %6873 = call float @dx.op.unary.f32(i32 7, float %6870)  ; Saturate(value)
  br label %6874

; <label>:6874                                    ; preds = %6851, %6836
  %6875 = phi float [ %6871, %6851 ], [ %6848, %6836 ]
  %6876 = phi float [ %6872, %6851 ], [ %6849, %6836 ]
  %6877 = phi float [ %6873, %6851 ], [ %6850, %6836 ]
  %6878 = call float @dx.op.binary.f32(i32 35, float %6876, float %6877)  ; FMax(a,b)
  %6879 = call float @dx.op.binary.f32(i32 35, float %6875, float %6878)  ; FMax(a,b)
  %6880 = fsub fast float 1.000000e+00, %6879
  %6881 = fmul fast float %6837, %6795
  %6882 = fmul fast float %6838, %6795
  %6883 = fmul fast float %6839, %6795
  %6884 = fsub fast float 1.000000e+00, %6762
  %6885 = bitcast float %6884 to i32
  %6886 = sitofp i32 %6885 to float
  %6887 = fmul fast float %6886, 5.000000e+00
  %6888 = fadd fast float %6887, 0xC1EFBF8940000000
  %6889 = fptosi float %6888 to i32
  %6890 = bitcast i32 %6889 to float
  %6891 = fmul fast float %6890, %3266
  %6892 = fmul fast float %6880, %6891
  %6893 = fmul fast float %6892, %5179
  %6894 = fmul fast float %6892, %5180
  %6895 = fmul fast float %6892, %5181
  %6896 = fadd fast float %6893, %6881
  %6897 = fadd fast float %6894, %6882
  %6898 = fadd fast float %6895, %6883
  %6899 = fmul fast float %6767, %6750
  %6900 = fmul fast float %6899, %6880
  %6901 = fmul fast float %6767, %6751
  %6902 = fmul fast float %6901, %6880
  %6903 = fmul fast float %6767, %6752
  %6904 = fmul fast float %6903, %6880
  %6905 = fmul fast float %6899, %6896
  %6906 = fmul fast float %6901, %6897
  %6907 = fmul fast float %6903, %6898
  %6908 = fadd fast float %6900, %5163
  %6909 = fmul fast float %6908, %3262
  %6910 = fadd fast float %6902, %5164
  %6911 = fmul fast float %6910, %3262
  %6912 = fadd fast float %6904, %5165
  %6913 = fmul fast float %6912, %3262
  %6914 = fadd fast float %6905, %5206
  %6915 = fmul fast float %6914, %3262
  %6916 = fadd fast float %6906, %5209
  %6917 = fmul fast float %6916, %3262
  %6918 = fadd fast float %6907, %5212
  %6919 = fmul fast float %6918, %3262
  br label %6920

; <label>:6920                                    ; preds = %6874, %6668, %5159
  %6921 = phi float [ %5207, %5159 ], [ %5207, %6668 ], [ %6915, %6874 ]
  %6922 = phi float [ %5210, %5159 ], [ %5210, %6668 ], [ %6917, %6874 ]
  %6923 = phi float [ %5213, %5159 ], [ %5213, %6668 ], [ %6919, %6874 ]
  %6924 = phi float [ %5202, %5159 ], [ %5202, %6668 ], [ %6909, %6874 ]
  %6925 = phi float [ %5203, %5159 ], [ %5203, %6668 ], [ %6911, %6874 ]
  %6926 = phi float [ %5204, %5159 ], [ %5204, %6668 ], [ %6913, %6874 ]
  %6927 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6928 = extractvalue %dx.types.CBufRet.i32 %6927, 0
  %6929 = icmp eq i32 %6928, 0
  br i1 %6929, label %7592, label %6930

; <label>:6930                                    ; preds = %6920
  %6931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6932 = extractvalue %dx.types.CBufRet.f32 %6931, 2
  %6933 = extractvalue %dx.types.CBufRet.f32 %6931, 3
  %6934 = fmul fast float %6932, %116
  %6935 = fmul fast float %6933, %117
  %6936 = fptoui float %6934 to i32
  %6937 = fptoui float %6935 to i32
  %6938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6939 = extractvalue %dx.types.CBufRet.f32 %6938, 0
  %6940 = extractvalue %dx.types.CBufRet.f32 %6938, 2
  %6941 = extractvalue %dx.types.CBufRet.f32 %6938, 3
  %6942 = fadd fast float %103, -4.000000e+00
  %6943 = call float @dx.op.binary.f32(i32 35, float %6942, float 0.000000e+00)  ; FMax(a,b)
  %6944 = fadd fast float %6943, %6939
  %6945 = fmul fast float %6944, %6940
  %6946 = call float @dx.op.unary.f32(i32 23, float %6945)  ; Log(value)
  %6947 = fmul fast float %6946, %6941
  %6948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6949 = extractvalue %dx.types.CBufRet.f32 %6948, 2
  %6950 = fmul fast float %6947, %6949
  %6951 = call float @dx.op.unary.f32(i32 7, float %6950)  ; Saturate(value)
  %6952 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6953 = extractvalue %dx.types.CBufRet.i32 %6952, 1
  %6954 = add i32 %6953, -1
  %6955 = uitofp i32 %6953 to float
  %6956 = fmul fast float %6955, %6951
  %6957 = fptoui float %6956 to i32
  %6958 = call i32 @dx.op.binary.i32(i32 40, i32 %6957, i32 %6954)  ; UMin(a,b)
  %6959 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6960 = extractvalue %dx.types.CBufRet.i32 %6959, 2
  %6961 = extractvalue %dx.types.CBufRet.i32 %6959, 3
  %6962 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6937, i32 %6960, i32 %6936)  ; UMad(a,b,c)
  %6963 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6958, i32 %6961, i32 %6962)  ; UMad(a,b,c)
  %6964 = add nsw i32 %6928, -1
  %6965 = call i32 @dx.op.binary.i32(i32 37, i32 %6964, i32 0)  ; IMax(a,b)
  %6966 = call float @dx.op.binary.f32(i32 35, float %103, float 0.000000e+00)  ; FMax(a,b)
  %6967 = fptoui float %6966 to i32
  %6968 = lshr i32 %6967, 5
  %6969 = call i32 @dx.op.binary.i32(i32 40, i32 %6968, i32 8191)  ; UMin(a,b)
  %6970 = shl i32 %6969, 2
  %6971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6970, i32 undef)  ; BufferLoad(srv,index,wot)
  %6972 = extractvalue %dx.types.ResRet.i32 %6971, 0
  %6973 = lshr i32 %6972, 16
  %6974 = and i32 %6972, 65535
  %6975 = lshr i32 %6972, 21
  %6976 = lshr i32 %6974, 5
  %6977 = call i32 @dx.op.binary.i32(i32 40, i32 %6976, i32 %6965)  ; UMin(a,b)
  %6978 = icmp ugt i32 %6975, %6977
  br i1 %6978, label %7592, label %6979

; <label>:6979                                    ; preds = %6930
  br label %6980

; <label>:6980                                    ; preds = %7582, %6979
  %6981 = phi i32 [ %7589, %7582 ], [ %6975, %6979 ]
  %6982 = phi float [ %7583, %7582 ], [ %6921, %6979 ]
  %6983 = phi float [ %7584, %7582 ], [ %6922, %6979 ]
  %6984 = phi float [ %7585, %7582 ], [ %6923, %6979 ]
  %6985 = phi float [ %7586, %7582 ], [ %6924, %6979 ]
  %6986 = phi float [ %7587, %7582 ], [ %6925, %6979 ]
  %6987 = phi float [ %7588, %7582 ], [ %6926, %6979 ]
  %6988 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6989 = extractvalue %dx.types.CBufRet.i32 %6988, 0
  %6990 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6963, i32 %6989, i32 %6981)  ; UMad(a,b,c)
  %6991 = shl i32 %6990, 2
  %6992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %6991, i32 undef)  ; BufferLoad(srv,index,wot)
  %6993 = extractvalue %dx.types.ResRet.i32 %6992, 0
  %6994 = shl i32 %6981, 5
  %6995 = sub nsw i32 %6973, %6994
  %6996 = call i32 @dx.op.binary.i32(i32 37, i32 %6995, i32 0)  ; IMax(a,b)
  %6997 = call i32 @dx.op.binary.i32(i32 38, i32 %6996, i32 31)  ; IMin(a,b)
  %6998 = sub nsw i32 1, %6973
  %6999 = add nsw i32 %6998, %6974
  %7000 = call i32 @dx.op.binary.i32(i32 37, i32 %6999, i32 0)  ; IMax(a,b)
  %7001 = call i32 @dx.op.binary.i32(i32 38, i32 %7000, i32 32)  ; IMin(a,b)
  %7002 = and i32 %7001, 31
  %7003 = shl i32 -1, %7002
  %7004 = xor i32 %7003, -1
  %7005 = and i32 %6997, 31
  %7006 = shl i32 %7004, %7005
  %7007 = icmp eq i32 %7001, 32
  %7008 = select i1 %7007, i32 -1, i32 %7006
  %7009 = and i32 %7008, %6993
  %7010 = icmp eq i32 %7009, 0
  br i1 %7010, label %7582, label %7011

; <label>:7011                                    ; preds = %6980
  br label %7012

; <label>:7012                                    ; preds = %7146, %7011
  %7013 = phi i32 [ %7024, %7146 ], [ %7009, %7011 ]
  %7014 = phi float [ %7147, %7146 ], [ %6982, %7011 ]
  %7015 = phi float [ %7148, %7146 ], [ %6983, %7011 ]
  %7016 = phi float [ %7149, %7146 ], [ %6984, %7011 ]
  %7017 = phi float [ %7150, %7146 ], [ %6985, %7011 ]
  %7018 = phi float [ %7151, %7146 ], [ %6986, %7011 ]
  %7019 = phi float [ %7152, %7146 ], [ %6987, %7011 ]
  %7020 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7013)  ; FirstbitLo(value)
  %7021 = add i32 %7020, %6994
  %7022 = and i32 %7020, 31
  %7023 = shl i32 1, %7022
  %7024 = xor i32 %7023, %7013
  %7025 = mul i32 %7021, 112
  %7026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7025, i32 undef)  ; BufferLoad(srv,index,wot)
  %7027 = extractvalue %dx.types.ResRet.f32 %7026, 0
  %7028 = extractvalue %dx.types.ResRet.f32 %7026, 1
  %7029 = extractvalue %dx.types.ResRet.f32 %7026, 2
  %7030 = or i32 %7025, 12
  %7031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7030, i32 undef)  ; BufferLoad(srv,index,wot)
  %7032 = extractvalue %dx.types.ResRet.f32 %7031, 0
  %7033 = add i32 %7025, 16
  %7034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7033, i32 undef)  ; BufferLoad(srv,index,wot)
  %7035 = extractvalue %dx.types.ResRet.f32 %7034, 0
  %7036 = extractvalue %dx.types.ResRet.f32 %7034, 1
  %7037 = extractvalue %dx.types.ResRet.f32 %7034, 2
  %7038 = add i32 %7025, 28
  %7039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %7038, i32 undef)  ; BufferLoad(srv,index,wot)
  %7040 = extractvalue %dx.types.ResRet.i32 %7039, 0
  %7041 = add i32 %7025, 44
  %7042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7041, i32 undef)  ; BufferLoad(srv,index,wot)
  %7043 = extractvalue %dx.types.ResRet.f32 %7042, 0
  %7044 = add i32 %7025, 48
  %7045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7044, i32 undef)  ; BufferLoad(srv,index,wot)
  %7046 = extractvalue %dx.types.ResRet.f32 %7045, 0
  %7047 = extractvalue %dx.types.ResRet.f32 %7045, 1
  %7048 = extractvalue %dx.types.ResRet.f32 %7045, 2
  %7049 = extractvalue %dx.types.ResRet.f32 %7045, 3
  %7050 = add i32 %7025, 64
  %7051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7050, i32 undef)  ; BufferLoad(srv,index,wot)
  %7052 = extractvalue %dx.types.ResRet.f32 %7051, 0
  %7053 = extractvalue %dx.types.ResRet.f32 %7051, 1
  %7054 = extractvalue %dx.types.ResRet.f32 %7051, 2
  %7055 = extractvalue %dx.types.ResRet.f32 %7051, 3
  %7056 = add i32 %7025, 80
  %7057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7056, i32 undef)  ; BufferLoad(srv,index,wot)
  %7058 = extractvalue %dx.types.ResRet.f32 %7057, 1
  %7059 = extractvalue %dx.types.ResRet.f32 %7057, 2
  %7060 = add i32 %7025, 92
  %7061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %7060, i32 undef)  ; BufferLoad(srv,index,wot)
  %7062 = extractvalue %dx.types.ResRet.i32 %7061, 0
  %7063 = call float @dx.op.dot3.f32(i32 55, float %7027, float %7028, float %7029, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7064 = select i1 %262, float %7058, float %7027
  %7065 = select i1 %262, float %7063, float %7028
  %7066 = select i1 %262, float %7059, float %7029
  %7067 = and i32 %7062, 65535
  %7068 = uitofp i32 %7067 to float
  %7069 = lshr i32 %7062, 16
  %7070 = uitofp i32 %7069 to float
  %7071 = and i32 %7040, 65535
  %7072 = and i32 %7040, 50331648
  %7073 = icmp eq i32 %7072, 33554432
  %7074 = fsub fast float %7046, %203
  %7075 = fsub fast float %7047, %204
  %7076 = fsub fast float %7048, %205
  %7077 = call float @dx.op.dot3.f32(i32 55, float %7074, float %7075, float %7076, float %7074, float %7075, float %7076)  ; Dot3(ax,ay,az,bx,by,bz)
  %7078 = call float @dx.op.unary.f32(i32 24, float %7077)  ; Sqrt(value)
  %7079 = fdiv fast float 1.000000e+00, %7078
  %7080 = fmul fast float %7079, %7074
  %7081 = fmul fast float %7079, %7075
  %7082 = fmul fast float %7079, %7076
  %7083 = fadd fast float %7078, %7032
  %7084 = fdiv fast float 1.000000e+00, %7083
  %7085 = fmul float %7043, %7084
  %7086 = fmul float %7085, %7085
  %7087 = call float @dx.op.unary.f32(i32 7, float %7086)  ; Saturate(value)
  br i1 %7073, label %7088, label %7109

; <label>:7088                                    ; preds = %7012
  %7089 = fmul fast float %7054, %7035
  %7090 = fmul fast float %7054, %7036
  %7091 = fmul fast float %7054, %7037
  %7092 = fadd fast float %7074, %7089
  %7093 = fadd fast float %7075, %7090
  %7094 = fadd fast float %7076, %7091
  %7095 = call float @dx.op.dot3.f32(i32 55, float %7092, float %7093, float %7094, float %7092, float %7093, float %7094)  ; Dot3(ax,ay,az,bx,by,bz)
  %7096 = call float @dx.op.unary.f32(i32 25, float %7095)  ; Rsqrt(value)
  %7097 = fmul fast float %7096, %7092
  %7098 = fmul fast float %7096, %7093
  %7099 = fmul fast float %7096, %7094
  %7100 = fsub fast float %203, %7046
  %7101 = fsub fast float %204, %7047
  %7102 = fsub fast float %205, %7048
  %7103 = fsub fast float -0.000000e+00, %7100
  %7104 = fsub fast float -0.000000e+00, %7101
  %7105 = fsub fast float -0.000000e+00, %7102
  %7106 = call float @dx.op.dot3.f32(i32 55, float %7103, float %7104, float %7105, float %7035, float %7036, float %7037)  ; Dot3(ax,ay,az,bx,by,bz)
  %7107 = fcmp fast ogt float %7106, 0.000000e+00
  %7108 = uitofp i1 %7107 to float
  br label %7109

; <label>:7109                                    ; preds = %7088, %7012
  %7110 = phi float [ %7108, %7088 ], [ 1.000000e+00, %7012 ]
  %7111 = phi float [ %7097, %7088 ], [ %7080, %7012 ]
  %7112 = phi float [ %7098, %7088 ], [ %7081, %7012 ]
  %7113 = phi float [ %7099, %7088 ], [ %7082, %7012 ]
  %7114 = call float @dx.op.dot3.f32(i32 55, float %7035, float %7036, float %7037, float %7111, float %7112, float %7113)  ; Dot3(ax,ay,az,bx,by,bz)
  %7115 = fmul fast float %7114, %7114
  %7116 = call float @dx.op.unary.f32(i32 7, float %7115)  ; Saturate(value)
  %7117 = fsub fast float 1.000000e+00, %7116
  %7118 = fmul fast float %7117, 5.000000e-01
  %7119 = fcmp fast ogt float %7114, 0.000000e+00
  %7120 = fsub fast float 1.000000e+00, %7118
  %7121 = select i1 %7119, float %7118, float %7120
  %7122 = fmul fast float %7121, %7070
  %7123 = fadd fast float %7122, %7068
  %7124 = fmul fast float %7123, 0x3EF0001000000000
  %7125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %56, float %7124, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7126 = extractvalue %dx.types.ResRet.f32 %7125, 0
  %7127 = fmul fast float %7114, %7052
  %7128 = fadd fast float %7127, %7053
  %7129 = call float @dx.op.unary.f32(i32 7, float %7128)  ; Saturate(value)
  %7130 = select i1 %7073, float 1.000000e+00, float %7129
  %7131 = select i1 %7073, float %7129, float 1.000000e+00
  %7132 = fmul fast float %7078, %7049
  %7133 = fsub fast float 1.000000e+00, %7132
  %7134 = fmul fast float %7133, %7055
  %7135 = call float @dx.op.unary.f32(i32 7, float %7134)  ; Saturate(value)
  %7136 = fmul fast float %7135, %7131
  %7137 = fmul fast float %7136, 2.000000e+00
  %7138 = fsub fast float 3.000000e+00, %7137
  %7139 = fmul fast float %7126, %7110
  %7140 = fmul fast float %7136, %7136
  %7141 = fmul fast float %7140, %7139
  %7142 = fmul fast float %7141, %7138
  %7143 = call float @dx.op.binary.f32(i32 36, float %7142, float %7142)  ; FMin(a,b)
  %7144 = call float @dx.op.binary.f32(i32 36, float %7142, float %7143)  ; FMin(a,b)
  %7145 = fcmp fast ogt float %7144, 0.000000e+00
  br i1 %7145, label %7154, label %7146, !dx.controlflow.hints !140

; <label>:7146                                    ; preds = %7538, %7300, %7109
  %7147 = phi float [ %7014, %7300 ], [ %7014, %7109 ], [ %7578, %7538 ]
  %7148 = phi float [ %7015, %7300 ], [ %7015, %7109 ], [ %7579, %7538 ]
  %7149 = phi float [ %7016, %7300 ], [ %7016, %7109 ], [ %7580, %7538 ]
  %7150 = phi float [ %7017, %7300 ], [ %7017, %7109 ], [ %7572, %7538 ]
  %7151 = phi float [ %7018, %7300 ], [ %7018, %7109 ], [ %7573, %7538 ]
  %7152 = phi float [ %7019, %7300 ], [ %7019, %7109 ], [ %7574, %7538 ]
  %7153 = icmp eq i32 %7013, %7023
  br i1 %7153, label %7581, label %7012

; <label>:7154                                    ; preds = %7109
  %7155 = icmp eq i32 %7071, 255
  br i1 %7155, label %7300, label %7156, !dx.controlflow.hints !141

; <label>:7156                                    ; preds = %7154
  %7157 = mul nuw nsw i32 %7071, 176
  %7158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7157, i32 undef)  ; BufferLoad(srv,index,wot)
  %7159 = extractvalue %dx.types.ResRet.f32 %7158, 0
  %7160 = extractvalue %dx.types.ResRet.f32 %7158, 1
  %7161 = extractvalue %dx.types.ResRet.f32 %7158, 2
  %7162 = extractvalue %dx.types.ResRet.f32 %7158, 3
  %7163 = add nuw nsw i32 %7157, 16
  %7164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7163, i32 undef)  ; BufferLoad(srv,index,wot)
  %7165 = extractvalue %dx.types.ResRet.f32 %7164, 0
  %7166 = extractvalue %dx.types.ResRet.f32 %7164, 1
  %7167 = add nuw nsw i32 %7157, 32
  %7168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7167, i32 undef)  ; BufferLoad(srv,index,wot)
  %7169 = extractvalue %dx.types.ResRet.f32 %7168, 0
  %7170 = extractvalue %dx.types.ResRet.f32 %7168, 1
  %7171 = extractvalue %dx.types.ResRet.f32 %7168, 2
  %7172 = add nuw nsw i32 %7157, 48
  %7173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7172, i32 undef)  ; BufferLoad(srv,index,wot)
  %7174 = extractvalue %dx.types.ResRet.f32 %7173, 0
  %7175 = extractvalue %dx.types.ResRet.f32 %7173, 1
  %7176 = extractvalue %dx.types.ResRet.f32 %7173, 2
  %7177 = extractvalue %dx.types.ResRet.f32 %7173, 3
  %7178 = add nuw nsw i32 %7157, 64
  %7179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7178, i32 undef)  ; BufferLoad(srv,index,wot)
  %7180 = extractvalue %dx.types.ResRet.f32 %7179, 0
  %7181 = extractvalue %dx.types.ResRet.f32 %7179, 1
  %7182 = extractvalue %dx.types.ResRet.f32 %7179, 2
  %7183 = extractvalue %dx.types.ResRet.f32 %7179, 3
  %7184 = add nuw nsw i32 %7157, 80
  %7185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7184, i32 undef)  ; BufferLoad(srv,index,wot)
  %7186 = extractvalue %dx.types.ResRet.f32 %7185, 0
  %7187 = extractvalue %dx.types.ResRet.f32 %7185, 1
  %7188 = extractvalue %dx.types.ResRet.f32 %7185, 2
  %7189 = extractvalue %dx.types.ResRet.f32 %7185, 3
  %7190 = add nuw nsw i32 %7157, 96
  %7191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7190, i32 undef)  ; BufferLoad(srv,index,wot)
  %7192 = extractvalue %dx.types.ResRet.f32 %7191, 0
  %7193 = extractvalue %dx.types.ResRet.f32 %7191, 1
  %7194 = extractvalue %dx.types.ResRet.f32 %7191, 2
  %7195 = extractvalue %dx.types.ResRet.f32 %7191, 3
  %7196 = bitcast float %7166 to i32
  %7197 = fmul fast float %7171, %123
  %7198 = fmul fast float %7171, %124
  %7199 = fmul fast float %7171, %125
  %7200 = fadd fast float %7197, %203
  %7201 = fadd fast float %7198, %204
  %7202 = fadd fast float %7199, %205
  %7203 = fmul fast float %7200, %7174
  %7204 = call float @dx.op.tertiary.f32(i32 46, float %7201, float %7180, float %7203)  ; FMad(a,b,c)
  %7205 = call float @dx.op.tertiary.f32(i32 46, float %7202, float %7186, float %7204)  ; FMad(a,b,c)
  %7206 = fadd fast float %7205, %7192
  %7207 = fmul fast float %7200, %7175
  %7208 = call float @dx.op.tertiary.f32(i32 46, float %7201, float %7181, float %7207)  ; FMad(a,b,c)
  %7209 = call float @dx.op.tertiary.f32(i32 46, float %7202, float %7187, float %7208)  ; FMad(a,b,c)
  %7210 = fadd fast float %7209, %7193
  %7211 = fmul fast float %7200, %7176
  %7212 = call float @dx.op.tertiary.f32(i32 46, float %7201, float %7182, float %7211)  ; FMad(a,b,c)
  %7213 = call float @dx.op.tertiary.f32(i32 46, float %7202, float %7188, float %7212)  ; FMad(a,b,c)
  %7214 = fadd fast float %7213, %7194
  %7215 = fmul fast float %7200, %7177
  %7216 = call float @dx.op.tertiary.f32(i32 46, float %7201, float %7183, float %7215)  ; FMad(a,b,c)
  %7217 = call float @dx.op.tertiary.f32(i32 46, float %7202, float %7189, float %7216)  ; FMad(a,b,c)
  %7218 = fadd fast float %7217, %7195
  %7219 = fdiv fast float %7206, %7218
  %7220 = fdiv fast float %7210, %7218
  %7221 = fdiv fast float %7214, %7218
  %7222 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7221)  ; FMax(a,b)
  %7223 = fmul fast float %273, 0x401921FB60000000
  %7224 = call float @dx.op.unary.f32(i32 13, float %7223)  ; Sin(value)
  %7225 = call float @dx.op.unary.f32(i32 12, float %7223)  ; Cos(value)
  %7226 = fmul fast float %7225, %7170
  %7227 = call float @dx.op.tertiary.f32(i32 46, float %7224, float %7170, float 0.000000e+00)  ; FMad(a,b,c)
  %7228 = fmul fast float %7170, %7224
  %7229 = fsub fast float -0.000000e+00, %7228
  %7230 = call float @dx.op.tertiary.f32(i32 46, float %7225, float %7170, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7231

; <label>:7231                                    ; preds = %7231, %7156
  %7232 = phi float [ 0.000000e+00, %7156 ], [ %7264, %7231 ]
  %7233 = phi float [ 0.000000e+00, %7156 ], [ %7266, %7231 ]
  %7234 = phi i32 [ 0, %7156 ], [ %7267, %7231 ]
  %7235 = mul i32 %7234, 2
  %7236 = add i32 0, %7235
  %7237 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7236
  %7238 = load float, float* %7237, align 4
  %7239 = mul i32 %7234, 2
  %7240 = add i32 1, %7239
  %7241 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7240
  %7242 = load float, float* %7241, align 4
  %7243 = fmul fast float %7226, %7238
  %7244 = call float @dx.op.tertiary.f32(i32 46, float %7242, float %7229, float %7243)  ; FMad(a,b,c)
  %7245 = fmul fast float %7238, %7227
  %7246 = call float @dx.op.tertiary.f32(i32 46, float %7242, float %7230, float %7245)  ; FMad(a,b,c)
  %7247 = fadd fast float %7244, %7219
  %7248 = fadd fast float %7246, %7220
  %7249 = fmul fast float %7247, %7165
  %7250 = fmul fast float %7248, %7165
  %7251 = call float @dx.op.binary.f32(i32 35, float %7249, float %7161)  ; FMax(a,b)
  %7252 = call float @dx.op.binary.f32(i32 35, float %7250, float %7161)  ; FMax(a,b)
  %7253 = call float @dx.op.binary.f32(i32 36, float %7251, float %7162)  ; FMin(a,b)
  %7254 = call float @dx.op.binary.f32(i32 36, float %7252, float %7162)  ; FMin(a,b)
  %7255 = fadd fast float %7253, %7159
  %7256 = fadd fast float %7254, %7160
  %7257 = uitofp i32 %7196 to float
  %7258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %57, float %7255, float %7256, float %7257, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7259 = extractvalue %dx.types.ResRet.f32 %7258, 0
  %7260 = fsub fast float %7259, %7222
  %7261 = fsub fast float %7260, %7169
  %7262 = fcmp fast ogt float %7261, 0.000000e+00
  %7263 = select i1 %7262, float 1.000000e+00, float 0.000000e+00
  %7264 = fadd fast float %7263, %7232
  %7265 = select i1 %7262, float %7261, float 0.000000e+00
  %7266 = fadd fast float %7265, %7233
  %7267 = add nuw nsw i32 %7234, 1
  %7268 = icmp eq i32 %7267, 8
  br i1 %7268, label %7269, label %7231

; <label>:7269                                    ; preds = %7231
  %7270 = fdiv fast float 1.000000e+00, %7264
  %7271 = fmul fast float %7270, %7266
  %7272 = fdiv fast float 1.000000e+00, %7222
  %7273 = fmul fast float %7271, %7272
  %7274 = call float @dx.op.unary.f32(i32 7, float %7273)  ; Saturate(value)
  %7275 = call float @dx.op.binary.f32(i32 35, float %7274, float 0.000000e+00)  ; FMax(a,b)
  %7276 = fmul fast float %7264, 1.250000e-01
  %7277 = call float @dx.op.unary.f32(i32 7, float %7276)  ; Saturate(value)
  %7278 = fmul fast float %7277, 2.000000e+00
  %7279 = fadd fast float %7278, -1.000000e+00
  %7280 = fcmp fast ogt float %7279, 0.000000e+00
  %7281 = fcmp fast olt float %7279, 0.000000e+00
  %7282 = zext i1 %7280 to i32
  %7283 = zext i1 %7281 to i32
  %7284 = sub nsw i32 %7282, %7283
  %7285 = sitofp i32 %7284 to float
  %7286 = fmul fast float %7285, %7279
  %7287 = fsub fast float 1.000000e+00, %7286
  %7288 = fmul fast float %7287, %7287
  %7289 = fmul fast float %7288, %7287
  %7290 = fsub fast float %7287, %7289
  %7291 = fmul fast float %7290, %7275
  %7292 = fsub fast float 1.000000e+00, %7289
  %7293 = fsub fast float %7292, %7291
  %7294 = fmul fast float %7285, 5.000000e-01
  %7295 = fmul fast float %7294, %7293
  %7296 = fsub fast float -5.000000e-01, %7295
  %7297 = fmul fast float %7296, %7130
  %7298 = fadd fast float %7297, 1.000000e+00
  %7299 = fmul fast float %7298, %7142
  br label %7300

; <label>:7300                                    ; preds = %7269, %7154
  %7301 = phi float [ %7299, %7269 ], [ %7142, %7154 ]
  %7302 = call float @dx.op.binary.f32(i32 36, float %7301, float %7301)  ; FMin(a,b)
  %7303 = call float @dx.op.binary.f32(i32 36, float %7301, float %7302)  ; FMin(a,b)
  %7304 = fcmp fast ogt float %7303, 0.000000e+00
  br i1 %7304, label %7305, label %7146, !dx.controlflow.hints !142

; <label>:7305                                    ; preds = %7300
  %7306 = fmul fast float %7301, %7064
  %7307 = fmul fast float %7301, %7065
  %7308 = fmul fast float %7301, %7066
  %7309 = fsub fast float %7048, %3666
  %7310 = fcmp fast ogt float %7309, 0.000000e+00
  %7311 = fsub fast float %205, %3666
  %7312 = fcmp fast ogt float %7311, 0.000000e+00
  %7313 = xor i1 %7312, %7310
  %7314 = fsub fast float %3666, %7048
  %7315 = fmul fast float %7314, 2.000000e+00
  %7316 = fadd fast float %7315, %7048
  %7317 = select i1 %7313, float %7048, float %7316
  %7318 = fsub fast float %7317, %205
  %7319 = call float @dx.op.dot3.f32(i32 55, float %7074, float %7075, float %7318, float %7074, float %7075, float %7318)  ; Dot3(ax,ay,az,bx,by,bz)
  %7320 = call float @dx.op.unary.f32(i32 25, float %7319)  ; Rsqrt(value)
  %7321 = fmul fast float %7320, %7074
  %7322 = fmul fast float %7320, %7075
  %7323 = fmul fast float %7320, %7318
  %7324 = fsub fast float %3666, %205
  %7325 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7324)  ; Dot3(ax,ay,az,bx,by,bz)
  %7326 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7321, float %7322, float %7323)  ; Dot3(ax,ay,az,bx,by,bz)
  %7327 = fdiv fast float 1.000000e+00, %7326
  %7328 = fmul fast float %7327, %7325
  %7329 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7311, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7330 = fcmp fast ogt float %7329, 0.000000e+00
  %7331 = fcmp fast olt float %7329, 0.000000e+00
  %7332 = zext i1 %7330 to i32
  %7333 = zext i1 %7331 to i32
  %7334 = sub nsw i32 %7332, %7333
  %7335 = sitofp i32 %7334 to float
  %7336 = fsub fast float %7317, %3666
  %7337 = call float @dx.op.dot3.f32(i32 55, float %7074, float %7075, float %7336, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7338 = fcmp fast ogt float %7337, 0.000000e+00
  %7339 = fcmp fast olt float %7337, 0.000000e+00
  %7340 = zext i1 %7338 to i32
  %7341 = zext i1 %7339 to i32
  %7342 = sub nsw i32 %7340, %7341
  %7343 = sitofp i32 %7342 to float
  %7344 = fcmp fast une float %7335, %7343
  br i1 %7344, label %7345, label %7355

; <label>:7345                                    ; preds = %7305
  %7346 = fmul fast float %7328, %7323
  %7347 = fmul fast float %7328, %7322
  %7348 = fmul fast float %7328, %7321
  %7349 = fmul fast float %7348, %7348
  %7350 = fmul fast float %7347, %7347
  %7351 = fadd fast float %7349, %7350
  %7352 = fmul fast float %7346, %7346
  %7353 = fadd fast float %7351, %7352
  %7354 = call float @dx.op.unary.f32(i32 24, float %7353)  ; Sqrt(value)
  br label %7367

; <label>:7355                                    ; preds = %7305
  %7356 = icmp slt i32 %7334, 0
  br i1 %7356, label %7357, label %7367

; <label>:7357                                    ; preds = %7355
  %7358 = fsub fast float %203, %7046
  %7359 = fsub fast float %204, %7047
  %7360 = fsub fast float %205, %7317
  %7361 = fmul fast float %7358, %7358
  %7362 = fmul fast float %7359, %7359
  %7363 = fadd fast float %7361, %7362
  %7364 = fmul fast float %7360, %7360
  %7365 = fadd fast float %7363, %7364
  %7366 = call float @dx.op.unary.f32(i32 24, float %7365)  ; Sqrt(value)
  br label %7367

; <label>:7367                                    ; preds = %7357, %7355, %7345
  %7368 = phi float [ %7354, %7345 ], [ %7366, %7357 ], [ 0.000000e+00, %7355 ]
  %7369 = and i1 %7312, %7310
  %7370 = fsub fast float -0.000000e+00, %7368
  %7371 = select i1 %7369, float -0.000000e+00, float %7370
  %7372 = fmul fast float %3667, 0x3FF7154760000000
  %7373 = fmul fast float %7372, %7371
  %7374 = fmul fast float %3668, 0x3FF7154760000000
  %7375 = fmul fast float %7374, %7371
  %7376 = fmul fast float %3669, 0x3FF7154760000000
  %7377 = fmul fast float %7376, %7371
  %7378 = call float @dx.op.unary.f32(i32 21, float %7373)  ; Exp(value)
  %7379 = call float @dx.op.unary.f32(i32 21, float %7375)  ; Exp(value)
  %7380 = call float @dx.op.unary.f32(i32 21, float %7377)  ; Exp(value)
  %7381 = call float @dx.op.unary.f32(i32 7, float %7378)  ; Saturate(value)
  %7382 = call float @dx.op.unary.f32(i32 7, float %7379)  ; Saturate(value)
  %7383 = call float @dx.op.unary.f32(i32 7, float %7380)  ; Saturate(value)
  %7384 = fmul fast float %7306, %7381
  %7385 = fmul fast float %7307, %7382
  %7386 = fmul fast float %7308, %7383
  %7387 = fsub fast float %7080, %4492
  %7388 = fsub fast float %7081, %4493
  %7389 = fsub fast float %7082, %4494
  %7390 = call float @dx.op.dot3.f32(i32 55, float %7387, float %7388, float %7389, float %7387, float %7388, float %7389)  ; Dot3(ax,ay,az,bx,by,bz)
  %7391 = call float @dx.op.unary.f32(i32 25, float %7390)  ; Rsqrt(value)
  %7392 = fmul fast float %7391, %7387
  %7393 = fmul fast float %7391, %7388
  %7394 = fmul fast float %7391, %7389
  %7395 = call float @dx.op.dot3.f32(i32 55, float %7080, float %7081, float %7082, float %4449, float %4450, float %4451)  ; Dot3(ax,ay,az,bx,by,bz)
  %7396 = call float @dx.op.dot3.f32(i32 55, float %4495, float %4496, float %4497, float %7392, float %7393, float %7394)  ; Dot3(ax,ay,az,bx,by,bz)
  %7397 = call float @dx.op.unary.f32(i32 7, float %7395)  ; Saturate(value)
  %7398 = fmul fast float %7397, %7087
  %7399 = fmul fast float %7397, %7397
  %7400 = fmul fast float %7399, %4525
  %7401 = call float @dx.op.unary.f32(i32 7, float %7400)  ; Saturate(value)
  %7402 = fmul fast float %7398, %7401
  %7403 = bitcast float %7077 to i32
  %7404 = ashr i32 %7403, 1
  %7405 = sub nsw i32 1597463007, %7404
  %7406 = bitcast i32 %7405 to float
  %7407 = fmul fast float %7406, %7074
  %7408 = fmul fast float %7406, %7075
  %7409 = fmul fast float %7406, %7076
  %7410 = fsub fast float %7407, %4492
  %7411 = fsub fast float %7408, %4493
  %7412 = fsub fast float %7409, %4494
  %7413 = call float @dx.op.dot3.f32(i32 55, float %7410, float %7411, float %7412, float %7410, float %7411, float %7412)  ; Dot3(ax,ay,az,bx,by,bz)
  %7414 = call float @dx.op.unary.f32(i32 25, float %7413)  ; Rsqrt(value)
  %7415 = fmul fast float %7410, %7414
  %7416 = fmul fast float %7411, %7414
  %7417 = fmul fast float %7412, %7414
  %7418 = call float @dx.op.dot3.f32(i32 55, float %4449, float %4450, float %4451, float %7415, float %7416, float %7417)  ; Dot3(ax,ay,az,bx,by,bz)
  %7419 = fmul fast float %7418, %7418
  %7420 = call float @dx.op.unary.f32(i32 6, float %7395)  ; FAbs(value)
  %7421 = fsub fast float 1.000000e+00, %4518
  %7422 = fmul fast float %4500, %4500
  %7423 = fmul fast float %7422, %7421
  %7424 = fadd fast float %7423, %4518
  %7425 = bitcast float %7424 to i32
  %7426 = ashr i32 %7425, 1
  %7427 = add nsw i32 %7426, 532487669
  %7428 = bitcast i32 %7427 to float
  %7429 = fadd fast float %7428, %4500
  %7430 = fmul fast float %4518, %7419
  %7431 = fsub fast float 1.000000e+00, %7419
  %7432 = fadd fast float %7431, %7430
  %7433 = fmul fast float %7420, %7420
  %7434 = fmul fast float %7433, %7421
  %7435 = fadd fast float %7434, %4518
  %7436 = bitcast float %7435 to i32
  %7437 = ashr i32 %7436, 1
  %7438 = add nsw i32 %7437, 532487669
  %7439 = bitcast i32 %7438 to float
  %7440 = fadd fast float %7439, %7420
  %7441 = fmul fast float %7432, %7432
  %7442 = fmul fast float %7441, %7429
  %7443 = fmul fast float %7442, %7440
  %7444 = fdiv fast float 1.000000e+00, %7443
  %7445 = bitcast float %4518 to i32
  %7446 = sitofp i32 %7445 to float
  %7447 = fmul fast float %7446, 0x3FE7F73180000000
  %7448 = fadd fast float %7447, 0x41AFE27C40000000
  %7449 = fptosi float %7448 to i32
  %7450 = bitcast i32 %7449 to float
  %7451 = fmul fast float %7043, 0x3FD80E9D60000000
  %7452 = fmul fast float %7451, %7406
  %7453 = fadd fast float %7450, %7452
  %7454 = bitcast float %7453 to i32
  %7455 = sub nsw i32 2129859010, %7454
  %7456 = bitcast i32 %7455 to float
  %7457 = fmul fast float %4518, %7444
  %7458 = fmul fast float %7457, %7450
  %7459 = fmul fast float %7458, %7456
  %7460 = call float @dx.op.unary.f32(i32 6, float %7396)  ; FAbs(value)
  %7461 = fsub fast float 1.000000e+00, %7460
  %7462 = bitcast float %7461 to i32
  %7463 = sitofp i32 %7462 to float
  %7464 = fmul fast float %7463, 5.000000e+00
  %7465 = fadd fast float %7464, 0xC1EFBF8940000000
  %7466 = fptosi float %7465 to i32
  %7467 = bitcast i32 %7466 to float
  %7468 = fsub fast float 1.000000e+00, %4446
  %7469 = fsub fast float 1.000000e+00, %4447
  %7470 = fsub fast float 1.000000e+00, %4498
  %7471 = fmul fast float %7467, %7468
  %7472 = fmul fast float %7467, %7469
  %7473 = fmul fast float %7467, %7470
  %7474 = fadd fast float %7471, %4446
  %7475 = fadd fast float %7472, %4447
  %7476 = fadd fast float %7473, %4498
  br i1 %4637, label %7477, label %7500

; <label>:7477                                    ; preds = %7367
  %7478 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %56, float %3265, float %7460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7479 = extractvalue %dx.types.ResRet.f32 %7478, 0
  %7480 = extractvalue %dx.types.ResRet.f32 %7478, 1
  %7481 = extractvalue %dx.types.ResRet.f32 %7478, 2
  %7482 = fadd fast float %7479, -5.000000e-01
  %7483 = fadd fast float %7480, -5.000000e-01
  %7484 = fadd fast float %7481, -5.000000e-01
  %7485 = fmul fast float %4446, 4.000000e+00
  %7486 = fmul fast float %7485, %7468
  %7487 = fmul fast float %7486, %7482
  %7488 = fmul fast float %4447, 4.000000e+00
  %7489 = fmul fast float %7488, %7469
  %7490 = fmul fast float %7489, %7483
  %7491 = fmul fast float %4498, 4.000000e+00
  %7492 = fmul fast float %7491, %7470
  %7493 = fmul fast float %7492, %7484
  %7494 = fadd fast float %7487, %7474
  %7495 = fadd fast float %7490, %7475
  %7496 = fadd fast float %7493, %7476
  %7497 = call float @dx.op.unary.f32(i32 7, float %7494)  ; Saturate(value)
  %7498 = call float @dx.op.unary.f32(i32 7, float %7495)  ; Saturate(value)
  %7499 = call float @dx.op.unary.f32(i32 7, float %7496)  ; Saturate(value)
  br label %7500

; <label>:7500                                    ; preds = %7477, %7367
  %7501 = phi float [ %7497, %7477 ], [ %7474, %7367 ]
  %7502 = phi float [ %7498, %7477 ], [ %7475, %7367 ]
  %7503 = phi float [ %7499, %7477 ], [ %7476, %7367 ]
  %7504 = fmul fast float %7395, 9.843750e-01
  %7505 = fadd fast float %7504, 7.812500e-03
  %7506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %56, float %7505, float %4627, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7507 = extractvalue %dx.types.ResRet.f32 %7506, 2
  %7508 = extractvalue %dx.types.ResRet.f32 %7506, 3
  %7509 = fmul fast float %7507, %4446
  %7510 = fmul fast float %7507, %4447
  %7511 = fmul fast float %7507, %4498
  %7512 = fadd fast float %7509, %7508
  %7513 = fadd fast float %7510, %7508
  %7514 = fadd fast float %7511, %7508
  br i1 %4637, label %7515, label %7538

; <label>:7515                                    ; preds = %7500
  %7516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %56, float %3265, float %7395, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7517 = extractvalue %dx.types.ResRet.f32 %7516, 0
  %7518 = extractvalue %dx.types.ResRet.f32 %7516, 1
  %7519 = extractvalue %dx.types.ResRet.f32 %7516, 2
  %7520 = fadd fast float %7517, -5.000000e-01
  %7521 = fadd fast float %7518, -5.000000e-01
  %7522 = fadd fast float %7519, -5.000000e-01
  %7523 = fmul fast float %4446, 4.000000e+00
  %7524 = fmul fast float %7523, %7468
  %7525 = fmul fast float %7524, %7520
  %7526 = fmul fast float %4447, 4.000000e+00
  %7527 = fmul fast float %7526, %7469
  %7528 = fmul fast float %7527, %7521
  %7529 = fmul fast float %4498, 4.000000e+00
  %7530 = fmul fast float %7529, %7470
  %7531 = fmul fast float %7530, %7522
  %7532 = fadd fast float %7525, %7512
  %7533 = fadd fast float %7528, %7513
  %7534 = fadd fast float %7531, %7514
  %7535 = call float @dx.op.unary.f32(i32 7, float %7532)  ; Saturate(value)
  %7536 = call float @dx.op.unary.f32(i32 7, float %7533)  ; Saturate(value)
  %7537 = call float @dx.op.unary.f32(i32 7, float %7534)  ; Saturate(value)
  br label %7538

; <label>:7538                                    ; preds = %7515, %7500
  %7539 = phi float [ %7535, %7515 ], [ %7512, %7500 ]
  %7540 = phi float [ %7536, %7515 ], [ %7513, %7500 ]
  %7541 = phi float [ %7537, %7515 ], [ %7514, %7500 ]
  %7542 = call float @dx.op.binary.f32(i32 35, float %7540, float %7541)  ; FMax(a,b)
  %7543 = call float @dx.op.binary.f32(i32 35, float %7539, float %7542)  ; FMax(a,b)
  %7544 = fsub fast float 1.000000e+00, %7543
  %7545 = fmul fast float %7501, %7459
  %7546 = fmul fast float %7502, %7459
  %7547 = fmul fast float %7503, %7459
  %7548 = fsub fast float 1.000000e+00, %7396
  %7549 = bitcast float %7548 to i32
  %7550 = sitofp i32 %7549 to float
  %7551 = fmul fast float %7550, 5.000000e+00
  %7552 = fadd fast float %7551, 0xC1EFBF8940000000
  %7553 = fptosi float %7552 to i32
  %7554 = bitcast i32 %7553 to float
  %7555 = fmul fast float %7554, %3266
  %7556 = fmul fast float %7544, %7555
  %7557 = fmul fast float %7556, %5179
  %7558 = fmul fast float %7556, %5180
  %7559 = fmul fast float %7556, %5181
  %7560 = fadd fast float %7557, %7545
  %7561 = fadd fast float %7558, %7546
  %7562 = fadd fast float %7559, %7547
  %7563 = fmul fast float %7384, %3262
  %7564 = fmul fast float %7563, %7402
  %7565 = fmul fast float %7564, %7544
  %7566 = fmul fast float %7385, %3262
  %7567 = fmul fast float %7566, %7402
  %7568 = fmul fast float %7567, %7544
  %7569 = fmul fast float %7386, %3262
  %7570 = fmul fast float %7569, %7402
  %7571 = fmul fast float %7570, %7544
  %7572 = fadd fast float %7565, %7017
  %7573 = fadd fast float %7568, %7018
  %7574 = fadd fast float %7571, %7019
  %7575 = fmul fast float %7564, %7560
  %7576 = fmul fast float %7567, %7561
  %7577 = fmul fast float %7570, %7562
  %7578 = fadd fast float %7575, %7014
  %7579 = fadd fast float %7576, %7015
  %7580 = fadd fast float %7577, %7016
  br label %7146

; <label>:7581                                    ; preds = %7146
  br label %7582

; <label>:7582                                    ; preds = %7581, %6980
  %7583 = phi float [ %6982, %6980 ], [ %7147, %7581 ]
  %7584 = phi float [ %6983, %6980 ], [ %7148, %7581 ]
  %7585 = phi float [ %6984, %6980 ], [ %7149, %7581 ]
  %7586 = phi float [ %6985, %6980 ], [ %7150, %7581 ]
  %7587 = phi float [ %6986, %6980 ], [ %7151, %7581 ]
  %7588 = phi float [ %6987, %6980 ], [ %7152, %7581 ]
  %7589 = add i32 %6981, 1
  %7590 = icmp ugt i32 %7589, %6977
  br i1 %7590, label %7591, label %6980

; <label>:7591                                    ; preds = %7582
  br label %7592

; <label>:7592                                    ; preds = %7591, %6930, %6920
  %7593 = phi float [ %6921, %6920 ], [ %6921, %6930 ], [ %7583, %7591 ]
  %7594 = phi float [ %6922, %6920 ], [ %6922, %6930 ], [ %7584, %7591 ]
  %7595 = phi float [ %6923, %6920 ], [ %6923, %6930 ], [ %7585, %7591 ]
  %7596 = phi float [ %6924, %6920 ], [ %6924, %6930 ], [ %7586, %7591 ]
  %7597 = phi float [ %6925, %6920 ], [ %6925, %6930 ], [ %7587, %7591 ]
  %7598 = phi float [ %6926, %6920 ], [ %6926, %6930 ], [ %7588, %7591 ]
  %7599 = fmul fast float %3262, %3262
  %7600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7601 = extractvalue %dx.types.CBufRet.f32 %7600, 0
  %7602 = fmul fast float %7601, %5185
  %7603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7604 = extractvalue %dx.types.CBufRet.f32 %7603, 3
  %7605 = fsub fast float 1.000000e+00, %3269
  %7606 = call float @dx.op.unary.f32(i32 7, float %7605)  ; Saturate(value)
  %7607 = fadd fast float %7598, %3268
  %7608 = fmul fast float %7607, %3269
  %7609 = fmul fast float %7606, %7604
  %7610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7611 = extractvalue %dx.types.CBufRet.f32 %7610, 3
  %7612 = fmul fast float %7596, %4452
  %7613 = fmul fast float %7597, %4453
  %7614 = fmul fast float %7598, %4454
  %7615 = fcmp fast ogt float %103, %225
  %7616 = and i1 %7615, %3672
  %7617 = or i1 %3678, %7616
  %7618 = icmp eq i32 %3671, 2
  %7619 = fcmp fast ole float %103, %225
  %7620 = and i1 %7619, %7618
  %7621 = or i1 %7620, %7617
  br i1 %7616, label %7622, label %7879

; <label>:7622                                    ; preds = %7592
  %7623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7624 = extractvalue %dx.types.CBufRet.f32 %7623, 2
  %7625 = extractvalue %dx.types.CBufRet.f32 %7623, 3
  %7626 = fmul fast float %7624, %116
  %7627 = fmul fast float %7625, %117
  %7628 = call float @dx.op.unary.f32(i32 7, float %7626)  ; Saturate(value)
  %7629 = call float @dx.op.unary.f32(i32 7, float %7627)  ; Saturate(value)
  %7630 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %56, float %7628, float %7629, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7631 = extractvalue %dx.types.ResRet.f32 %7630, 0
  %7632 = extractvalue %dx.types.ResRet.f32 %7630, 1
  %7633 = extractvalue %dx.types.ResRet.f32 %7630, 2
  %7634 = extractvalue %dx.types.ResRet.f32 %7630, 3
  %7635 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %56, float %7628, float %7629, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7636 = extractvalue %dx.types.ResRet.f32 %7635, 0
  %7637 = extractvalue %dx.types.ResRet.f32 %7635, 1
  %7638 = extractvalue %dx.types.ResRet.f32 %7635, 2
  %7639 = extractvalue %dx.types.ResRet.f32 %7635, 3
  %7640 = call float @dx.op.binary.f32(i32 35, float %7632, float %7633)  ; FMax(a,b)
  %7641 = call float @dx.op.binary.f32(i32 35, float %7631, float %7640)  ; FMax(a,b)
  %7642 = call float @dx.op.binary.f32(i32 35, float %7641, float %7634)  ; FMax(a,b)
  %7643 = call float @dx.op.binary.f32(i32 36, float %7637, float %7638)  ; FMin(a,b)
  %7644 = call float @dx.op.binary.f32(i32 36, float %7636, float %7643)  ; FMin(a,b)
  %7645 = call float @dx.op.binary.f32(i32 36, float %7644, float %7639)  ; FMin(a,b)
  %7646 = fmul fast float %7642, 2.550000e+02
  %7647 = fadd fast float %7646, 0x3F70101020000000
  %7648 = fptoui float %7647 to i32
  %7649 = fmul fast float %7645, 2.550000e+02
  %7650 = fadd fast float %7649, 0x3F70101020000000
  %7651 = fptoui float %7650 to i32
  %7652 = icmp ult i32 %7648, %7651
  br i1 %7652, label %7653, label %7821

; <label>:7653                                    ; preds = %7622
  %7654 = fcmp fast ogt float %102, 9.843750e-01
  %7655 = fadd fast float %103, -4.000000e+00
  %7656 = select i1 %7654, float -4.000000e+00, float %7655
  %7657 = call float @dx.op.binary.f32(i32 35, float %7656, float 0.000000e+00)  ; FMax(a,b)
  %7658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7659 = extractvalue %dx.types.CBufRet.f32 %7658, 0
  %7660 = fadd fast float %7659, %7657
  %7661 = extractvalue %dx.types.CBufRet.f32 %7658, 2
  %7662 = fmul fast float %7660, %7661
  %7663 = call float @dx.op.unary.f32(i32 23, float %7662)  ; Log(value)
  %7664 = extractvalue %dx.types.CBufRet.f32 %7658, 3
  %7665 = fmul fast float %7664, %7663
  %7666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7667 = extractvalue %dx.types.CBufRet.f32 %7666, 2
  %7668 = fmul fast float %7665, %7667
  %7669 = call float @dx.op.unary.f32(i32 7, float %7668)  ; Saturate(value)
  %7670 = uitofp i32 %7648 to float
  %7671 = uitofp i32 %7651 to float
  %7672 = fadd fast float %7670, 5.000000e-01
  %7673 = fadd fast float %7671, 5.000000e-01
  %7674 = fmul fast float %7667, %7672
  %7675 = fmul fast float %7667, %7673
  %7676 = fadd fast float %7674, 0x3F0FFB4800000000
  %7677 = fadd fast float %7675, 0xBF0FFB4800000000
  %7678 = call float @dx.op.binary.f32(i32 35, float %7669, float %7676)  ; FMax(a,b)
  %7679 = call float @dx.op.binary.f32(i32 36, float %7678, float %7677)  ; FMin(a,b)
  %7680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7681 = extractvalue %dx.types.CBufRet.f32 %7680, 1
  %7682 = extractvalue %dx.types.CBufRet.f32 %7680, 2
  %7683 = extractvalue %dx.types.CBufRet.f32 %7680, 0
  %7684 = fmul fast float %7681, %7679
  %7685 = fadd fast float %7683, %7684
  %7686 = fadd fast float %7683, %7682
  %7687 = fsub fast float %7681, %7682
  %7688 = fadd fast float %7687, %7683
  %7689 = call float @dx.op.binary.f32(i32 35, float %7685, float %7686)  ; FMax(a,b)
  %7690 = call float @dx.op.binary.f32(i32 36, float %7689, float %7688)  ; FMin(a,b)
  %7691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %7628, float %7629, float %7690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7692 = extractvalue %dx.types.ResRet.f32 %7691, 0
  %7693 = extractvalue %dx.types.ResRet.f32 %7691, 1
  %7694 = extractvalue %dx.types.ResRet.f32 %7691, 2
  %7695 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7696 = extractvalue %dx.types.CBufRet.i32 %7695, 0
  %7697 = extractvalue %dx.types.CBufRet.i32 %7695, 1
  %7698 = uitofp i32 %7696 to float
  %7699 = uitofp i32 %7697 to float
  %7700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7701 = extractvalue %dx.types.CBufRet.f32 %7700, 0
  %7702 = extractvalue %dx.types.CBufRet.f32 %7700, 1
  %7703 = fmul fast float %7698, %7628
  %7704 = fmul fast float %7699, %7629
  %7705 = fadd fast float %7703, -5.000000e-01
  %7706 = fadd fast float %7704, -5.000000e-01
  %7707 = call float @dx.op.unary.f32(i32 22, float %7705)  ; Frc(value)
  %7708 = call float @dx.op.unary.f32(i32 22, float %7706)  ; Frc(value)
  %7709 = fmul fast float %7707, %7707
  %7710 = fmul fast float %7709, %7707
  %7711 = fsub fast float 3.000000e+00, %7707
  %7712 = fmul fast float %7709, %7711
  %7713 = fmul fast float %7707, 3.000000e+00
  %7714 = fmul fast float %7710, 3.000000e+00
  %7715 = fmul fast float %7709, 6.000000e+00
  %7716 = fsub fast float %7714, %7715
  %7717 = fadd fast float %7716, 4.000000e+00
  %7718 = fmul fast float %7717, 0x3FC5555560000000
  %7719 = fmul fast float %7710, -3.000000e+00
  %7720 = fadd fast float %7709, %7707
  %7721 = fmul fast float %7720, 3.000000e+00
  %7722 = fadd fast float %7719, 1.000000e+00
  %7723 = fadd fast float %7722, %7721
  %7724 = fmul fast float %7710, 0x3FC5555560000000
  %7725 = fmul fast float %7708, %7708
  %7726 = fmul fast float %7725, %7708
  %7727 = fsub fast float 3.000000e+00, %7708
  %7728 = fmul fast float %7725, %7727
  %7729 = fmul fast float %7708, 3.000000e+00
  %7730 = fmul fast float %7726, 3.000000e+00
  %7731 = fmul fast float %7725, 6.000000e+00
  %7732 = fsub fast float %7730, %7731
  %7733 = fadd fast float %7732, 4.000000e+00
  %7734 = fmul fast float %7733, 0x3FC5555560000000
  %7735 = fmul fast float %7726, -3.000000e+00
  %7736 = fadd fast float %7725, %7708
  %7737 = fmul fast float %7736, 3.000000e+00
  %7738 = fadd fast float %7735, 1.000000e+00
  %7739 = fadd fast float %7738, %7737
  %7740 = fmul fast float %7726, 0x3FC5555560000000
  %7741 = fadd fast float %7707, 1.000000e+00
  %7742 = fsub fast float 1.000000e+00, %7713
  %7743 = fadd fast float %7742, %7712
  %7744 = fadd fast float %7743, %7717
  %7745 = fmul fast float %7744, 0x3FC5555560000000
  %7746 = fdiv fast float %7718, %7745
  %7747 = fsub fast float %7741, %7746
  %7748 = fsub fast float 1.000000e+00, %7707
  %7749 = fadd fast float %7723, %7710
  %7750 = fmul fast float %7749, 0x3FC5555560000000
  %7751 = fdiv fast float %7724, %7750
  %7752 = fadd fast float %7748, %7751
  %7753 = fadd fast float %7708, 1.000000e+00
  %7754 = fsub fast float 1.000000e+00, %7729
  %7755 = fadd fast float %7754, %7728
  %7756 = fadd fast float %7755, %7733
  %7757 = fmul fast float %7756, 0x3FC5555560000000
  %7758 = fdiv fast float %7734, %7757
  %7759 = fsub fast float %7753, %7758
  %7760 = fsub fast float 1.000000e+00, %7708
  %7761 = fadd fast float %7739, %7726
  %7762 = fmul fast float %7761, 0x3FC5555560000000
  %7763 = fdiv fast float %7740, %7762
  %7764 = fadd fast float %7763, %7760
  %7765 = fmul fast float %7747, %7701
  %7766 = fsub fast float %7628, %7765
  %7767 = fmul fast float %7752, %7701
  %7768 = fadd fast float %7767, %7628
  %7769 = fmul fast float %7764, %7702
  %7770 = fadd fast float %7769, %7629
  %7771 = fmul fast float %7759, %7702
  %7772 = fsub fast float %7629, %7771
  %7773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %7766, float %7772, float %7690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7774 = extractvalue %dx.types.ResRet.f32 %7773, 0
  %7775 = extractvalue %dx.types.ResRet.f32 %7773, 1
  %7776 = extractvalue %dx.types.ResRet.f32 %7773, 2
  %7777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %7768, float %7772, float %7690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7778 = extractvalue %dx.types.ResRet.f32 %7777, 0
  %7779 = extractvalue %dx.types.ResRet.f32 %7777, 1
  %7780 = extractvalue %dx.types.ResRet.f32 %7777, 2
  %7781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %7766, float %7770, float %7690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7782 = extractvalue %dx.types.ResRet.f32 %7781, 0
  %7783 = extractvalue %dx.types.ResRet.f32 %7781, 1
  %7784 = extractvalue %dx.types.ResRet.f32 %7781, 2
  %7785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %7768, float %7770, float %7690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7786 = extractvalue %dx.types.ResRet.f32 %7785, 0
  %7787 = extractvalue %dx.types.ResRet.f32 %7785, 1
  %7788 = extractvalue %dx.types.ResRet.f32 %7785, 2
  %7789 = fsub fast float %7782, %7774
  %7790 = fsub fast float %7783, %7775
  %7791 = fsub fast float %7784, %7776
  %7792 = fmul fast float %7789, %7762
  %7793 = fmul fast float %7790, %7762
  %7794 = fmul fast float %7791, %7762
  %7795 = fadd fast float %7792, %7774
  %7796 = fadd fast float %7793, %7775
  %7797 = fadd fast float %7794, %7776
  %7798 = fsub fast float %7786, %7778
  %7799 = fsub fast float %7787, %7779
  %7800 = fsub fast float %7788, %7780
  %7801 = fmul fast float %7798, %7762
  %7802 = fmul fast float %7799, %7762
  %7803 = fmul fast float %7800, %7762
  %7804 = fsub fast float %7778, %7795
  %7805 = fadd fast float %7804, %7801
  %7806 = fsub fast float %7779, %7796
  %7807 = fadd fast float %7806, %7802
  %7808 = fsub fast float %7780, %7797
  %7809 = fadd fast float %7808, %7803
  %7810 = fmul fast float %7805, %7750
  %7811 = fmul fast float %7807, %7750
  %7812 = fmul fast float %7809, %7750
  %7813 = fadd fast float %7810, %7795
  %7814 = fadd fast float %7811, %7796
  %7815 = fadd fast float %7812, %7797
  %7816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7817 = extractvalue %dx.types.CBufRet.f32 %7816, 1
  %7818 = fmul fast float %7813, %7817
  %7819 = fmul fast float %7814, %7817
  %7820 = fmul fast float %7815, %7817
  br label %7821

; <label>:7821                                    ; preds = %7653, %7622
  %7822 = phi float [ %7692, %7653 ], [ 1.000000e+00, %7622 ]
  %7823 = phi float [ %7693, %7653 ], [ 1.000000e+00, %7622 ]
  %7824 = phi float [ %7694, %7653 ], [ 1.000000e+00, %7622 ]
  %7825 = phi float [ %7818, %7653 ], [ 0.000000e+00, %7622 ]
  %7826 = phi float [ %7819, %7653 ], [ 0.000000e+00, %7622 ]
  %7827 = phi float [ %7820, %7653 ], [ 0.000000e+00, %7622 ]
  %7828 = fmul fast float %7825, %7599
  %7829 = fmul fast float %7826, %7599
  %7830 = fmul fast float %7827, %7599
  %7831 = call float @dx.op.dot3.f32(i32 55, float %7822, float %7823, float %7824, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7832 = call float @dx.op.dot3.f32(i32 55, float %7828, float %7829, float %7830, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7833 = select i1 %262, float %7831, float %7822
  %7834 = select i1 %262, float %7831, float %7823
  %7835 = select i1 %262, float 1.000000e+00, float %7824
  %7836 = select i1 %262, float %7832, float %7828
  %7837 = select i1 %262, float 0.000000e+00, float %7829
  %7838 = select i1 %262, float 0.000000e+00, float %7830
  %7839 = fmul fast float %7833, %7612
  %7840 = fmul fast float %7834, %7613
  %7841 = fmul fast float %7835, %7614
  %7842 = fadd fast float %7839, %7836
  %7843 = fadd fast float %7840, %7837
  %7844 = fadd fast float %7838, %7841
  %7845 = fmul fast float %7833, %7593
  %7846 = fmul fast float %7834, %7594
  %7847 = fmul fast float %7835, %7595
  %7848 = fmul fast float %152, %7624
  %7849 = fmul fast float %154, %7625
  %7850 = fsub fast float 1.000000e+00, %7848
  %7851 = fsub fast float 1.000000e+00, %7849
  %7852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7853 = extractvalue %dx.types.CBufRet.f32 %7852, 0
  %7854 = extractvalue %dx.types.CBufRet.f32 %7852, 1
  %7855 = extractvalue %dx.types.CBufRet.f32 %7852, 2
  %7856 = fmul fast float %7850, %7853
  %7857 = fmul fast float %7850, %7854
  %7858 = fmul fast float %7850, %7855
  %7859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7860 = extractvalue %dx.types.CBufRet.f32 %7859, 0
  %7861 = extractvalue %dx.types.CBufRet.f32 %7859, 1
  %7862 = extractvalue %dx.types.CBufRet.f32 %7859, 2
  %7863 = fmul fast float %7851, %7860
  %7864 = fmul fast float %7851, %7861
  %7865 = fmul fast float %7851, %7862
  %7866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7867 = extractvalue %dx.types.CBufRet.f32 %7866, 0
  %7868 = extractvalue %dx.types.CBufRet.f32 %7866, 1
  %7869 = extractvalue %dx.types.CBufRet.f32 %7866, 2
  %7870 = fadd fast float %7863, %7867
  %7871 = fadd fast float %7870, %7856
  %7872 = fadd fast float %7864, %7868
  %7873 = fadd fast float %7872, %7857
  %7874 = fadd fast float %7865, %7869
  %7875 = fadd fast float %7874, %7858
  %7876 = fmul fast float %7871, %225
  %7877 = fmul fast float %7873, %225
  %7878 = fmul fast float %7875, %225
  br label %7879

; <label>:7879                                    ; preds = %7821, %7592
  %7880 = phi float [ %7876, %7821 ], [ %203, %7592 ]
  %7881 = phi float [ %7877, %7821 ], [ %204, %7592 ]
  %7882 = phi float [ %7878, %7821 ], [ %205, %7592 ]
  %7883 = phi float [ %225, %7821 ], [ %103, %7592 ]
  %7884 = phi float [ %7842, %7821 ], [ %7612, %7592 ]
  %7885 = phi float [ %7843, %7821 ], [ %7613, %7592 ]
  %7886 = phi float [ %7844, %7821 ], [ %7614, %7592 ]
  %7887 = phi float [ %7845, %7821 ], [ %7593, %7592 ]
  %7888 = phi float [ %7846, %7821 ], [ %7594, %7592 ]
  %7889 = phi float [ %7847, %7821 ], [ %7595, %7592 ]
  %7890 = phi float [ %7822, %7821 ], [ 1.000000e+00, %7592 ]
  br i1 %7621, label %9045, label %7891

; <label>:7891                                    ; preds = %7879
  %7892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7893 = extractvalue %dx.types.CBufRet.f32 %7892, 0
  %7894 = extractvalue %dx.types.CBufRet.f32 %7892, 1
  %7895 = extractvalue %dx.types.CBufRet.f32 %7892, 2
  %7896 = extractvalue %dx.types.CBufRet.f32 %7892, 3
  %7897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7898 = extractvalue %dx.types.CBufRet.f32 %7897, 0
  %7899 = extractvalue %dx.types.CBufRet.f32 %7897, 1
  %7900 = extractvalue %dx.types.CBufRet.f32 %7897, 2
  %7901 = extractvalue %dx.types.CBufRet.f32 %7897, 3
  %7902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7903 = extractvalue %dx.types.CBufRet.f32 %7902, 0
  %7904 = extractvalue %dx.types.CBufRet.f32 %7902, 1
  %7905 = extractvalue %dx.types.CBufRet.f32 %7902, 2
  %7906 = extractvalue %dx.types.CBufRet.f32 %7902, 3
  %7907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7908 = extractvalue %dx.types.CBufRet.f32 %7907, 0
  %7909 = extractvalue %dx.types.CBufRet.f32 %7907, 1
  %7910 = extractvalue %dx.types.CBufRet.f32 %7907, 2
  %7911 = extractvalue %dx.types.CBufRet.f32 %7907, 3
  %7912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7913 = extractvalue %dx.types.CBufRet.f32 %7912, 3
  %7914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7915 = extractvalue %dx.types.CBufRet.f32 %7914, 3
  %7916 = extractvalue %dx.types.CBufRet.f32 %7914, 0
  %7917 = extractvalue %dx.types.CBufRet.f32 %7914, 1
  %7918 = extractvalue %dx.types.CBufRet.f32 %7914, 2
  %7919 = fcmp fast olt float %7918, -5.000000e-01
  %7920 = call float @dx.op.dot3.f32(i32 55, float %7880, float %7881, float %7882, float %7880, float %7881, float %7882)  ; Dot3(ax,ay,az,bx,by,bz)
  %7921 = call float @dx.op.unary.f32(i32 25, float %7920)  ; Rsqrt(value)
  %7922 = fmul fast float %7921, %7920
  %7923 = fmul fast float %7921, %7880
  %7924 = fmul fast float %7921, %7881
  %7925 = fmul fast float %7921, %7882
  %7926 = fadd fast float %7922, %7896
  %7927 = call float @dx.op.dot3.f32(i32 55, float %7923, float %7924, float %7925, float %7893, float %7894, float %7895)  ; Dot3(ax,ay,az,bx,by,bz)
  %7928 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7929 = extractvalue %dx.types.CBufRet.i32 %7928, 1
  %7930 = and i32 %7929, 1
  %7931 = icmp ne i32 %7930, 0
  %7932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7933 = extractvalue %dx.types.CBufRet.f32 %7932, 2
  %7934 = fcmp fast ogt float %7933, 0.000000e+00
  %7935 = and i1 %7931, %7934
  br i1 %7935, label %7936, label %8342, !dx.controlflow.hints !143

; <label>:7936                                    ; preds = %7891
  %7937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7938 = extractvalue %dx.types.CBufRet.f32 %7937, 3
  %7939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7940 = extractvalue %dx.types.CBufRet.f32 %7939, 2
  %7941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7942 = extractvalue %dx.types.CBufRet.f32 %7941, 2
  %7943 = fsub fast float %7940, %7942
  %7944 = and i32 %7929, 2
  %7945 = extractvalue %dx.types.CBufRet.i32 %7928, 0
  %7946 = call i32 @dx.op.binary.i32(i32 40, i32 %7945, i32 3)  ; UMin(a,b)
  %7947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7948 = extractvalue %dx.types.CBufRet.f32 %7947, 0
  %7949 = extractvalue %dx.types.CBufRet.f32 %7947, 1
  %7950 = extractvalue %dx.types.CBufRet.f32 %7941, 0
  %7951 = extractvalue %dx.types.CBufRet.f32 %7941, 1
  %7952 = fsub fast float %7948, %7950
  %7953 = fsub fast float %7949, %7951
  %7954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7955 = extractvalue %dx.types.CBufRet.f32 %7954, 0
  %7956 = fcmp fast ogt float %7955, 0.000000e+00
  %7957 = fsub fast float -0.000000e+00, %7952
  %7958 = fsub fast float -0.000000e+00, %7953
  %7959 = call float @dx.op.dot2.f32(i32 54, float %7923, float %7924, float %7923, float %7924)  ; Dot2(ax,ay,bx,by)
  %7960 = call float @dx.op.dot2.f32(i32 54, float %7923, float %7924, float %7957, float %7958)  ; Dot2(ax,ay,bx,by)
  %7961 = fmul fast float %7960, 2.000000e+00
  %7962 = call float @dx.op.dot2.f32(i32 54, float %7957, float %7958, float %7957, float %7958)  ; Dot2(ax,ay,bx,by)
  %7963 = fmul fast float %7955, %7955
  %7964 = fsub fast float %7962, %7963
  %7965 = fmul fast float %7961, %7961
  %7966 = fmul fast float %7959, 4.000000e+00
  %7967 = fmul fast float %7966, %7964
  %7968 = fsub fast float %7965, %7967
  %7969 = fcmp fast ogt float %7968, 0.000000e+00
  br i1 %7969, label %7970, label %7985

; <label>:7970                                    ; preds = %7936
  %7971 = fcmp fast ogt float %7961, 0.000000e+00
  %7972 = call float @dx.op.unary.f32(i32 24, float %7968)  ; Sqrt(value)
  %7973 = fsub fast float -0.000000e+00, %7972
  %7974 = select i1 %7971, float %7972, float %7973
  %7975 = fadd fast float %7974, %7961
  %7976 = fmul float %7975, -5.000000e-01
  %7977 = fdiv fast float %7976, %7959
  %7978 = call float @dx.op.binary.f32(i32 35, float %7977, float 0.000000e+00)  ; FMax(a,b)
  %7979 = call float @dx.op.binary.f32(i32 36, float %7922, float %7978)  ; FMin(a,b)
  %7980 = fdiv fast float %7964, %7976
  %7981 = call float @dx.op.binary.f32(i32 35, float %7980, float 0.000000e+00)  ; FMax(a,b)
  %7982 = call float @dx.op.binary.f32(i32 36, float %7922, float %7981)  ; FMin(a,b)
  %7983 = call float @dx.op.binary.f32(i32 36, float %7979, float %7982)  ; FMin(a,b)
  %7984 = call float @dx.op.binary.f32(i32 35, float %7979, float %7982)  ; FMax(a,b)
  br label %7985

; <label>:7985                                    ; preds = %7970, %7936
  %7986 = phi float [ %7984, %7970 ], [ -1.000000e+00, %7936 ]
  %7987 = phi float [ %7983, %7970 ], [ -1.000000e+00, %7936 ]
  %7988 = phi i1 [ true, %7970 ], [ false, %7936 ]
  %7989 = and i1 %7956, %7988
  br i1 %7989, label %7990, label %7992

; <label>:7990                                    ; preds = %7985
  %7991 = fcmp fast oeq float %7987, %7986
  br i1 %7991, label %8295, label %7993

; <label>:7992                                    ; preds = %7985
  br i1 %7956, label %8295, label %7993

; <label>:7993                                    ; preds = %7992, %7990
  %7994 = phi float [ %7922, %7992 ], [ %7986, %7990 ]
  %7995 = phi float [ 0.000000e+00, %7992 ], [ %7987, %7990 ]
  %7996 = icmp ne i32 %7944, 0
  %7997 = fmul fast float %7994, %7925
  %7998 = fadd fast float %7997, %7938
  %7999 = fmul fast float %7998, %7994
  %8000 = select i1 %7996, float 0.000000e+00, float %7999
  %8001 = fcmp fast oeq float %7925, 0.000000e+00
  %8002 = fdiv fast float %7943, %7925
  %8003 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8002)  ; FMax(a,b)
  %8004 = select i1 %8001, float %7994, float %8003
  %8005 = call float @dx.op.binary.f32(i32 36, float %7994, float %8004)  ; FMin(a,b)
  %8006 = fcmp fast ogt float %7925, 0.000000e+00
  %8007 = fcmp fast olt float %7943, 0.000000e+00
  br i1 %8006, label %8008, label %8065

; <label>:8008                                    ; preds = %7993
  %8009 = icmp eq i32 %7944, 0
  br i1 %8007, label %8010, label %8054

; <label>:8010                                    ; preds = %8008
  %8011 = select i1 %8009, float %7994, float 0.000000e+00
  %8012 = fsub fast float -0.000000e+00, %8011
  %8013 = call float @dx.op.unary.f32(i32 6, float %8012)  ; FAbs(value)
  %8014 = fmul fast float %8011, %7925
  %8015 = fadd fast float %8014, %7938
  %8016 = fmul fast float %8013, %8015
  %8017 = fsub fast float %8000, %8016
  %8018 = fsub fast float %7994, %8013
  %8019 = select i1 %8009, float %8018, float 0.000000e+00
  %8020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8021 = extractvalue %dx.types.CBufRet.f32 %8020, 0
  %8022 = extractvalue %dx.types.CBufRet.f32 %8020, 1
  %8023 = extractvalue %dx.types.CBufRet.f32 %8020, 2
  %8024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8025 = extractvalue %dx.types.CBufRet.f32 %8024, 0
  %8026 = extractvalue %dx.types.CBufRet.f32 %8024, 1
  %8027 = extractvalue %dx.types.CBufRet.f32 %8024, 2
  %8028 = extractvalue %dx.types.CBufRet.f32 %8024, 3
  %8029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8030 = extractvalue %dx.types.CBufRet.f32 %8029, 3
  %8031 = call float @dx.op.binary.f32(i32 36, float %8017, float %8030)  ; FMin(a,b)
  %8032 = fmul fast float %8028, %8019
  %8033 = call float @dx.op.unary.f32(i32 7, float %8032)  ; Saturate(value)
  %8034 = fsub fast float %8025, %8021
  %8035 = fsub fast float %8026, %8022
  %8036 = fsub fast float %8027, %8023
  %8037 = fmul fast float %8033, %8034
  %8038 = fmul fast float %8033, %8035
  %8039 = fmul fast float %8033, %8036
  %8040 = fadd fast float %8037, %8021
  %8041 = fadd fast float %8038, %8022
  %8042 = fadd fast float %8039, %8023
  %8043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8044 = extractvalue %dx.types.CBufRet.f32 %8043, 0
  %8045 = extractvalue %dx.types.CBufRet.f32 %8043, 1
  %8046 = fadd fast float %8045, %8044
  %8047 = call float @dx.op.unary.f32(i32 7, float %8046)  ; Saturate(value)
  %8048 = extractvalue %dx.types.CBufRet.f32 %8043, 2
  %8049 = extractvalue %dx.types.CBufRet.f32 %8043, 3
  %8050 = fadd fast float %8049, %8048
  %8051 = call float @dx.op.unary.f32(i32 7, float %8050)  ; Saturate(value)
  %8052 = fmul fast float %8047, %8031
  %8053 = fmul fast float %8052, %8051
  br label %8295

; <label>:8054                                    ; preds = %8008
  br i1 %8009, label %8055, label %8076

; <label>:8055                                    ; preds = %8054
  %8056 = call float @dx.op.binary.f32(i32 36, float %8005, float %7995)  ; FMin(a,b)
  %8057 = fsub fast float %8005, %8056
  %8058 = fsub fast float %8057, %7994
  %8059 = call float @dx.op.unary.f32(i32 6, float %8058)  ; FAbs(value)
  %8060 = fadd fast float %8057, %7994
  %8061 = fmul fast float %8060, %7925
  %8062 = fadd fast float %8061, %7938
  %8063 = fmul fast float %8062, %8059
  %8064 = fsub fast float %8000, %8063
  br label %8076

; <label>:8065                                    ; preds = %7993
  br i1 %8007, label %8066, label %8076

; <label>:8066                                    ; preds = %8065
  %8067 = call float @dx.op.binary.f32(i32 35, float %7995, float %8005)  ; FMax(a,b)
  %8068 = icmp eq i32 %7944, 0
  %8069 = select i1 %8068, float %8005, float 0.000000e+00
  %8070 = fsub fast float -0.000000e+00, %8069
  %8071 = call float @dx.op.unary.f32(i32 6, float %8070)  ; FAbs(value)
  %8072 = fmul fast float %8069, %7925
  %8073 = fadd fast float %8072, %7938
  %8074 = fmul fast float %8071, %8073
  %8075 = fsub fast float %8000, %8074
  br label %8076

; <label>:8076                                    ; preds = %8066, %8065, %8055, %8054
  %8077 = phi float [ %7995, %8054 ], [ %7995, %8055 ], [ %8067, %8066 ], [ %7995, %8065 ]
  %8078 = phi float [ 0.000000e+00, %8054 ], [ %8059, %8055 ], [ %8071, %8066 ], [ 0.000000e+00, %8065 ]
  %8079 = phi float [ %8000, %8054 ], [ %8064, %8055 ], [ %8075, %8066 ], [ %8000, %8065 ]
  %8080 = phi float [ %8005, %8054 ], [ %8005, %8055 ], [ %7994, %8066 ], [ %7994, %8065 ]
  %8081 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 0
  store float -1.000000e+00, float* %8081, align 4, !tbaa !129, !noalias !144
  %8082 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 1
  store float -1.000000e+00, float* %8082, align 4, !tbaa !129, !noalias !144
  %8083 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 2
  store float -1.000000e+00, float* %8083, align 4, !tbaa !129, !noalias !144
  %8084 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 0
  store float -1.000000e+00, float* %8084, align 4, !tbaa !129, !noalias !144
  %8085 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 1
  store float -1.000000e+00, float* %8085, align 4, !tbaa !129, !noalias !144
  %8086 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 2
  store float -1.000000e+00, float* %8086, align 4, !tbaa !129, !noalias !144
  %8087 = icmp sgt i32 %7946, 0
  br i1 %8087, label %8088, label %8149

; <label>:8088                                    ; preds = %8076
  br label %8089

; <label>:8089                                    ; preds = %8138, %8088
  %8090 = phi i32 [ %8139, %8138 ], [ 0, %8088 ]
  %8091 = phi i32 [ %8140, %8138 ], [ 0, %8088 ]
  %8092 = add nuw i32 %8091, 171
  %8093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %8092)  ; CBufferLoadLegacy(handle,regIndex)
  %8094 = extractvalue %dx.types.CBufRet.f32 %8093, 0
  %8095 = extractvalue %dx.types.CBufRet.f32 %8093, 1
  %8096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8097 = extractvalue %dx.types.CBufRet.f32 %8096, 0
  %8098 = extractvalue %dx.types.CBufRet.f32 %8096, 1
  %8099 = fsub fast float %8094, %8097
  %8100 = fsub fast float %8095, %8098
  %8101 = extractvalue %dx.types.CBufRet.f32 %8093, 2
  %8102 = fsub fast float -0.000000e+00, %8099
  %8103 = fsub fast float -0.000000e+00, %8100
  %8104 = call float @dx.op.dot2.f32(i32 54, float %7923, float %7924, float %8102, float %8103)  ; Dot2(ax,ay,bx,by)
  %8105 = fmul fast float %8104, 2.000000e+00
  %8106 = call float @dx.op.dot2.f32(i32 54, float %8102, float %8103, float %8102, float %8103)  ; Dot2(ax,ay,bx,by)
  %8107 = fmul fast float %8101, %8101
  %8108 = fsub fast float %8106, %8107
  %8109 = fmul fast float %8105, %8105
  %8110 = fmul fast float %7966, %8108
  %8111 = fsub fast float %8109, %8110
  %8112 = fcmp fast ogt float %8111, 0.000000e+00
  br i1 %8112, label %8113, label %8128

; <label>:8113                                    ; preds = %8089
  %8114 = fcmp fast ogt float %8105, 0.000000e+00
  %8115 = call float @dx.op.unary.f32(i32 24, float %8111)  ; Sqrt(value)
  %8116 = fsub fast float -0.000000e+00, %8115
  %8117 = select i1 %8114, float %8115, float %8116
  %8118 = fadd fast float %8117, %8105
  %8119 = fmul float %8118, -5.000000e-01
  %8120 = fdiv fast float %8119, %7959
  %8121 = call float @dx.op.binary.f32(i32 35, float %8120, float 0.000000e+00)  ; FMax(a,b)
  %8122 = call float @dx.op.binary.f32(i32 36, float %7994, float %8121)  ; FMin(a,b)
  %8123 = fdiv fast float %8108, %8119
  %8124 = call float @dx.op.binary.f32(i32 35, float %8123, float 0.000000e+00)  ; FMax(a,b)
  %8125 = call float @dx.op.binary.f32(i32 36, float %7994, float %8124)  ; FMin(a,b)
  %8126 = call float @dx.op.binary.f32(i32 36, float %8122, float %8125)  ; FMin(a,b)
  %8127 = call float @dx.op.binary.f32(i32 35, float %8122, float %8125)  ; FMax(a,b)
  br label %8128

; <label>:8128                                    ; preds = %8113, %8089
  %8129 = phi float [ %8127, %8113 ], [ -1.000000e+00, %8089 ]
  %8130 = phi float [ %8126, %8113 ], [ -1.000000e+00, %8089 ]
  %8131 = phi i1 [ true, %8113 ], [ false, %8089 ]
  br i1 %8131, label %8132, label %8138

; <label>:8132                                    ; preds = %8128
  %8133 = call float @dx.op.binary.f32(i32 35, float %8077, float %8130)  ; FMax(a,b)
  %8134 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8091
  store float %8133, float* %8134, align 4, !tbaa !129, !noalias !144
  %8135 = call float @dx.op.binary.f32(i32 35, float %8077, float %8129)  ; FMax(a,b)
  %8136 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8091
  store float %8135, float* %8136, align 4, !tbaa !129, !noalias !144
  %8137 = add nsw i32 %8090, 1
  br label %8138

; <label>:8138                                    ; preds = %8132, %8128
  %8139 = phi i32 [ %8137, %8132 ], [ %8090, %8128 ]
  %8140 = add nuw nsw i32 %8091, 1
  %8141 = icmp eq i32 %8140, %7946
  br i1 %8141, label %8142, label %8089

; <label>:8142                                    ; preds = %8138
  %8143 = load float, float* %8083, align 4, !tbaa !129, !alias.scope !160, !noalias !163
  %8144 = load float, float* %8082, align 4, !tbaa !129, !alias.scope !166, !noalias !167
  %8145 = load float, float* %8081, align 4, !tbaa !129, !alias.scope !168, !noalias !169
  %8146 = load float, float* %8086, align 4, !tbaa !129, !alias.scope !170, !noalias !173
  %8147 = load float, float* %8085, align 4, !tbaa !129, !alias.scope !176, !noalias !177
  %8148 = load float, float* %8084, align 4, !tbaa !129, !alias.scope !178, !noalias !179
  br label %8149

; <label>:8149                                    ; preds = %8142, %8076
  %8150 = phi float [ -1.000000e+00, %8076 ], [ %8148, %8142 ]
  %8151 = phi float [ -1.000000e+00, %8076 ], [ %8147, %8142 ]
  %8152 = phi float [ -1.000000e+00, %8076 ], [ %8146, %8142 ]
  %8153 = phi float [ -1.000000e+00, %8076 ], [ %8145, %8142 ]
  %8154 = phi float [ -1.000000e+00, %8076 ], [ %8144, %8142 ]
  %8155 = phi float [ -1.000000e+00, %8076 ], [ %8143, %8142 ]
  %8156 = phi i32 [ 0, %8076 ], [ %8139, %8142 ]
  %8157 = call float @dx.op.binary.f32(i32 36, float %8154, float %8155)  ; FMin(a,b)
  %8158 = call float @dx.op.binary.f32(i32 36, float %8153, float %8157)  ; FMin(a,b)
  %8159 = call float @dx.op.binary.f32(i32 35, float %8153, float %8154)  ; FMax(a,b)
  %8160 = call float @dx.op.binary.f32(i32 36, float %8159, float %8155)  ; FMin(a,b)
  %8161 = call float @dx.op.binary.f32(i32 36, float %8153, float %8154)  ; FMin(a,b)
  %8162 = call float @dx.op.binary.f32(i32 35, float %8161, float %8160)  ; FMax(a,b)
  %8163 = call float @dx.op.binary.f32(i32 35, float %8154, float %8155)  ; FMax(a,b)
  %8164 = call float @dx.op.binary.f32(i32 35, float %8153, float %8163)  ; FMax(a,b)
  store float %8158, float* %8081, align 4, !tbaa !129, !alias.scope !168, !noalias !169
  store float %8162, float* %8082, align 4, !tbaa !129, !alias.scope !166, !noalias !167
  store float %8164, float* %8083, align 4, !tbaa !129, !alias.scope !160, !noalias !163
  %8165 = call float @dx.op.binary.f32(i32 36, float %8151, float %8152)  ; FMin(a,b)
  %8166 = call float @dx.op.binary.f32(i32 36, float %8150, float %8165)  ; FMin(a,b)
  %8167 = call float @dx.op.binary.f32(i32 35, float %8150, float %8151)  ; FMax(a,b)
  %8168 = call float @dx.op.binary.f32(i32 36, float %8167, float %8152)  ; FMin(a,b)
  %8169 = call float @dx.op.binary.f32(i32 36, float %8150, float %8151)  ; FMin(a,b)
  %8170 = call float @dx.op.binary.f32(i32 35, float %8169, float %8168)  ; FMax(a,b)
  %8171 = call float @dx.op.binary.f32(i32 35, float %8151, float %8152)  ; FMax(a,b)
  %8172 = call float @dx.op.binary.f32(i32 35, float %8150, float %8171)  ; FMax(a,b)
  store float %8166, float* %8084, align 4, !tbaa !129, !alias.scope !178, !noalias !179
  store float %8170, float* %8085, align 4, !tbaa !129, !alias.scope !176, !noalias !177
  store float %8172, float* %8086, align 4, !tbaa !129, !alias.scope !170, !noalias !173
  %8173 = sub nsw i32 3, %8156
  %8174 = icmp sgt i32 %8173, 2
  br i1 %8174, label %8175, label %8213

; <label>:8175                                    ; preds = %8149
  %8176 = icmp eq i32 %7944, 0
  %8177 = fsub fast float %7994, %8078
  %8178 = select i1 %8176, float %8177, float %8078
  %8179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8180 = extractvalue %dx.types.CBufRet.f32 %8179, 0
  %8181 = extractvalue %dx.types.CBufRet.f32 %8179, 1
  %8182 = extractvalue %dx.types.CBufRet.f32 %8179, 2
  %8183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8184 = extractvalue %dx.types.CBufRet.f32 %8183, 0
  %8185 = extractvalue %dx.types.CBufRet.f32 %8183, 1
  %8186 = extractvalue %dx.types.CBufRet.f32 %8183, 2
  %8187 = extractvalue %dx.types.CBufRet.f32 %8183, 3
  %8188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8189 = extractvalue %dx.types.CBufRet.f32 %8188, 3
  %8190 = call float @dx.op.binary.f32(i32 36, float %8079, float %8189)  ; FMin(a,b)
  %8191 = fmul fast float %8187, %8178
  %8192 = call float @dx.op.unary.f32(i32 7, float %8191)  ; Saturate(value)
  %8193 = fsub fast float %8184, %8180
  %8194 = fsub fast float %8185, %8181
  %8195 = fsub fast float %8186, %8182
  %8196 = fmul fast float %8192, %8193
  %8197 = fmul fast float %8192, %8194
  %8198 = fmul fast float %8192, %8195
  %8199 = fadd fast float %8196, %8180
  %8200 = fadd fast float %8197, %8181
  %8201 = fadd fast float %8198, %8182
  %8202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8203 = extractvalue %dx.types.CBufRet.f32 %8202, 0
  %8204 = extractvalue %dx.types.CBufRet.f32 %8202, 1
  %8205 = fadd fast float %8204, %8203
  %8206 = call float @dx.op.unary.f32(i32 7, float %8205)  ; Saturate(value)
  %8207 = extractvalue %dx.types.CBufRet.f32 %8202, 2
  %8208 = extractvalue %dx.types.CBufRet.f32 %8202, 3
  %8209 = fadd fast float %8208, %8207
  %8210 = call float @dx.op.unary.f32(i32 7, float %8209)  ; Saturate(value)
  %8211 = fmul fast float %8206, %8190
  %8212 = fmul fast float %8211, %8210
  br label %8295

; <label>:8213                                    ; preds = %8149
  %8214 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8173
  %8215 = load float, float* %8214, align 4, !tbaa !129, !noalias !144
  %8216 = fcmp fast olt float %8215, %8080
  %8217 = icmp sgt i32 %8156, 0
  %8218 = and i1 %8217, %8216
  br i1 %8218, label %8219, label %8256

; <label>:8219                                    ; preds = %8213
  br label %8220

; <label>:8220                                    ; preds = %8249, %8219
  %8221 = phi float [ %8250, %8249 ], [ %8078, %8219 ]
  %8222 = phi float [ %8251, %8249 ], [ %8079, %8219 ]
  %8223 = phi float [ %8231, %8249 ], [ %8215, %8219 ]
  %8224 = phi i32 [ %8228, %8249 ], [ %8173, %8219 ]
  %8225 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8224
  %8226 = load float, float* %8225, align 4, !tbaa !129, !noalias !144
  %8227 = icmp slt i32 %8224, 2
  %8228 = add nsw i32 %8224, 1
  %8229 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8228
  %8230 = load float, float* %8229, align 4, !tbaa !129, !noalias !144
  %8231 = select i1 %8227, float %8230, float %7994
  %8232 = call float @dx.op.binary.f32(i32 36, float %8231, float %8226)  ; FMin(a,b)
  %8233 = call float @dx.op.binary.f32(i32 36, float %8080, float %8232)  ; FMin(a,b)
  %8234 = icmp eq i32 %7944, 0
  %8235 = fadd fast float %8233, %8223
  %8236 = fmul fast float %8235, %7925
  %8237 = fadd fast float %8236, %7938
  br i1 %8234, label %8243, label %8238

; <label>:8238                                    ; preds = %8220
  %8239 = fsub fast float %8233, %8223
  %8240 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8239)  ; FMax(a,b)
  %8241 = fmul fast float %8240, %8237
  %8242 = fadd fast float %8241, %8222
  br label %8249

; <label>:8243                                    ; preds = %8220
  %8244 = fsub fast float %8223, %8233
  %8245 = call float @dx.op.unary.f32(i32 6, float %8244)  ; FAbs(value)
  %8246 = fadd fast float %8245, %8221
  %8247 = fmul fast float %8245, %8237
  %8248 = fsub fast float %8222, %8247
  br label %8249

; <label>:8249                                    ; preds = %8243, %8238
  %8250 = phi float [ %8240, %8238 ], [ %8246, %8243 ]
  %8251 = phi float [ %8242, %8238 ], [ %8248, %8243 ]
  %8252 = fcmp fast olt float %8231, %8080
  %8253 = icmp slt i32 %8228, 3
  %8254 = and i1 %8253, %8252
  br i1 %8254, label %8220, label %8255

; <label>:8255                                    ; preds = %8249
  br label %8256

; <label>:8256                                    ; preds = %8255, %8213
  %8257 = phi float [ %8078, %8213 ], [ %8250, %8255 ]
  %8258 = phi float [ %8079, %8213 ], [ %8251, %8255 ]
  %8259 = fsub fast float %7994, %8257
  %8260 = select i1 %7996, float %8257, float %8259
  %8261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8262 = extractvalue %dx.types.CBufRet.f32 %8261, 0
  %8263 = extractvalue %dx.types.CBufRet.f32 %8261, 1
  %8264 = extractvalue %dx.types.CBufRet.f32 %8261, 2
  %8265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8266 = extractvalue %dx.types.CBufRet.f32 %8265, 0
  %8267 = extractvalue %dx.types.CBufRet.f32 %8265, 1
  %8268 = extractvalue %dx.types.CBufRet.f32 %8265, 2
  %8269 = extractvalue %dx.types.CBufRet.f32 %8265, 3
  %8270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8271 = extractvalue %dx.types.CBufRet.f32 %8270, 3
  %8272 = call float @dx.op.binary.f32(i32 36, float %8258, float %8271)  ; FMin(a,b)
  %8273 = fmul fast float %8269, %8260
  %8274 = call float @dx.op.unary.f32(i32 7, float %8273)  ; Saturate(value)
  %8275 = fsub fast float %8266, %8262
  %8276 = fsub fast float %8267, %8263
  %8277 = fsub fast float %8268, %8264
  %8278 = fmul fast float %8274, %8275
  %8279 = fmul fast float %8274, %8276
  %8280 = fmul fast float %8274, %8277
  %8281 = fadd fast float %8278, %8262
  %8282 = fadd fast float %8279, %8263
  %8283 = fadd fast float %8280, %8264
  %8284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8285 = extractvalue %dx.types.CBufRet.f32 %8284, 0
  %8286 = extractvalue %dx.types.CBufRet.f32 %8284, 1
  %8287 = fadd fast float %8286, %8285
  %8288 = call float @dx.op.unary.f32(i32 7, float %8287)  ; Saturate(value)
  %8289 = extractvalue %dx.types.CBufRet.f32 %8284, 2
  %8290 = extractvalue %dx.types.CBufRet.f32 %8284, 3
  %8291 = fadd fast float %8290, %8289
  %8292 = call float @dx.op.unary.f32(i32 7, float %8291)  ; Saturate(value)
  %8293 = fmul fast float %8288, %8272
  %8294 = fmul fast float %8293, %8292
  br label %8295

; <label>:8295                                    ; preds = %8256, %8175, %8010, %7992, %7990
  %8296 = phi float [ %8019, %8010 ], [ %8178, %8175 ], [ %8260, %8256 ], [ 0.000000e+00, %7990 ], [ 0.000000e+00, %7992 ]
  %8297 = phi float [ %8053, %8010 ], [ %8212, %8175 ], [ %8294, %8256 ], [ 0.000000e+00, %7990 ], [ 0.000000e+00, %7992 ]
  %8298 = phi float [ %8040, %8010 ], [ %8199, %8175 ], [ %8281, %8256 ], [ 0.000000e+00, %7990 ], [ 0.000000e+00, %7992 ]
  %8299 = phi float [ %8041, %8010 ], [ %8200, %8175 ], [ %8282, %8256 ], [ 0.000000e+00, %7990 ], [ 0.000000e+00, %7992 ]
  %8300 = phi float [ %8042, %8010 ], [ %8201, %8175 ], [ %8283, %8256 ], [ 0.000000e+00, %7990 ], [ 0.000000e+00, %7992 ]
  %8301 = fmul fast float %7933, %8297
  %8302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8303 = extractvalue %dx.types.CBufRet.f32 %8302, 2
  %8304 = fsub fast float %7940, %8303
  %8305 = fcmp fast olt float %8301, -2.000000e+01
  %8306 = call float @dx.op.unary.f32(i32 21, float %8301)  ; Exp(value)
  %8307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8308 = extractvalue %dx.types.CBufRet.f32 %8307, 2
  %8309 = extractvalue %dx.types.CBufRet.f32 %8307, 3
  %8310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8311 = extractvalue %dx.types.CBufRet.f32 %8310, 2
  %8312 = fmul fast float %8309, %8304
  %8313 = call float @dx.op.unary.f32(i32 7, float %8312)  ; Saturate(value)
  %8314 = fsub fast float 1.000000e+00, %8313
  %8315 = fmul fast float %7925, 5.000000e-01
  %8316 = fadd fast float %8315, 5.000000e-01
  %8317 = call float @dx.op.unary.f32(i32 7, float %8316)  ; Saturate(value)
  %8318 = fsub fast float 1.000000e+00, %8317
  %8319 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8314)  ; FMax(a,b)
  %8320 = fdiv fast float %8318, %8319
  %8321 = fsub fast float %8304, %7882
  %8322 = call float @dx.op.unary.f32(i32 6, float %8321)  ; FAbs(value)
  %8323 = fmul fast float %8322, %8308
  %8324 = call float @dx.op.unary.f32(i32 7, float %8320)  ; Saturate(value)
  %8325 = fsub fast float 1.000000e+00, %8323
  %8326 = fmul fast float %8325, %8324
  %8327 = fadd fast float %8326, %8323
  %8328 = fmul fast float %8311, %8304
  %8329 = call float @dx.op.unary.f32(i32 7, float %8328)  ; Saturate(value)
  %8330 = fsub fast float 1.000000e+00, %8327
  %8331 = fmul fast float %8330, %8329
  %8332 = fadd fast float %8331, %8327
  %8333 = call float @dx.op.unary.f32(i32 7, float %8332)  ; Saturate(value)
  %8334 = fadd fast float %8306, -1.000000e+00
  %8335 = select i1 %8305, float -1.000000e+00, float %8334
  %8336 = fmul fast float %8333, %8335
  %8337 = fadd fast float %8336, 1.000000e+00
  %8338 = fsub fast float -0.000000e+00, %8336
  %8339 = fmul fast float %8298, %8338
  %8340 = fmul fast float %8299, %8338
  %8341 = fmul fast float %8300, %8338
  br label %8342

; <label>:8342                                    ; preds = %8295, %7891
  %8343 = phi float [ %8296, %8295 ], [ 0.000000e+00, %7891 ]
  %8344 = phi float [ %8337, %8295 ], [ 1.000000e+00, %7891 ]
  %8345 = phi float [ %8339, %8295 ], [ 0.000000e+00, %7891 ]
  %8346 = phi float [ %8340, %8295 ], [ 0.000000e+00, %7891 ]
  %8347 = phi float [ %8341, %8295 ], [ 0.000000e+00, %7891 ]
  %8348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8349 = extractvalue %dx.types.CBufRet.f32 %8348, 1
  %8350 = fsub fast float 1.000000e+00, %8344
  %8351 = fmul fast float %8350, %7926
  %8352 = fmul fast float %8351, %8349
  %8353 = fsub fast float %7926, %8352
  br i1 %7919, label %8354, label %8383, !dx.controlflow.hints !180

; <label>:8354                                    ; preds = %8342
  %8355 = fmul fast float %7927, %7916
  %8356 = fadd fast float %8355, %7917
  %8357 = call float @dx.op.unary.f32(i32 7, float %8356)  ; Saturate(value)
  %8358 = fmul fast float %7898, %8353
  %8359 = fsub fast float -0.000000e+00, %8358
  %8360 = fmul fast float %7899, %8353
  %8361 = fsub fast float -0.000000e+00, %8360
  %8362 = call float @dx.op.unary.f32(i32 21, float %8359)  ; Exp(value)
  %8363 = call float @dx.op.unary.f32(i32 21, float %8361)  ; Exp(value)
  %8364 = call float @dx.op.binary.f32(i32 35, float %7906, float %8362)  ; FMax(a,b)
  %8365 = call float @dx.op.binary.f32(i32 35, float %7906, float %8363)  ; FMax(a,b)
  %8366 = fsub fast float %8365, %8364
  %8367 = fmul fast float %8366, %8357
  %8368 = fadd fast float %8367, %8364
  %8369 = call float @dx.op.unary.f32(i32 7, float %8368)  ; Saturate(value)
  %8370 = fsub fast float %7903, %7908
  %8371 = fsub fast float %7904, %7909
  %8372 = fsub fast float %7905, %7910
  %8373 = fmul fast float %8357, %8370
  %8374 = fmul fast float %8357, %8371
  %8375 = fmul fast float %8357, %8372
  %8376 = fadd fast float %8373, %7908
  %8377 = fadd fast float %8374, %7909
  %8378 = fadd fast float %8375, %7910
  %8379 = fsub fast float 1.000000e+00, %8369
  %8380 = fmul fast float %8379, %8376
  %8381 = fmul fast float %8379, %8377
  %8382 = fmul fast float %8379, %8378
  br label %8442

; <label>:8383                                    ; preds = %8342
  %8384 = fmul fast float %8353, %7915
  %8385 = call float @dx.op.unary.f32(i32 7, float %8384)  ; Saturate(value)
  %8386 = fsub fast float 2.000000e+00, %8385
  %8387 = fmul fast float %8385, 9.921875e-01
  %8388 = fmul fast float %8387, %8386
  %8389 = fadd fast float %8388, 3.906250e-03
  %8390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %56, float %8389, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8391 = extractvalue %dx.types.ResRet.f32 %8390, 0
  %8392 = fsub fast float %8385, %8391
  %8393 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8392)  ; FMax(a,b)
  %8394 = fmul fast float %7901, %7882
  %8395 = call float @dx.op.unary.f32(i32 6, float %8394)  ; FAbs(value)
  %8396 = fcmp fast ogt float %8395, 0x3EB0C6F7A0000000
  br i1 %8396, label %8397, label %8403, !dx.controlflow.hints !181

; <label>:8397                                    ; preds = %8383
  %8398 = fmul fast float %8394, 0xBFF7154760000000
  %8399 = call float @dx.op.unary.f32(i32 21, float %8398)  ; Exp(value)
  %8400 = fsub fast float 1.000000e+00, %8399
  %8401 = fdiv fast float %8400, %8394
  %8402 = fmul fast float %8401, %7911
  br label %8403

; <label>:8403                                    ; preds = %8397, %8383
  %8404 = phi float [ %8402, %8397 ], [ %7911, %8383 ]
  %8405 = fadd fast float %8404, %7913
  %8406 = fmul fast float %8405, %8393
  %8407 = fmul fast float %7898, %8406
  %8408 = fsub fast float -0.000000e+00, %8407
  %8409 = fmul fast float %7899, %8406
  %8410 = fsub fast float -0.000000e+00, %8409
  %8411 = fmul fast float %7900, %8406
  %8412 = fsub fast float -0.000000e+00, %8411
  %8413 = call float @dx.op.unary.f32(i32 21, float %8408)  ; Exp(value)
  %8414 = call float @dx.op.unary.f32(i32 21, float %8410)  ; Exp(value)
  %8415 = call float @dx.op.unary.f32(i32 21, float %8412)  ; Exp(value)
  %8416 = fmul fast float %7927, %7927
  %8417 = fadd fast float %8416, 1.000000e+00
  %8418 = fmul fast float %8417, 0x3FAE8EC8A0000000
  %8419 = fmul fast float %8418, %7908
  %8420 = fmul fast float %8418, %7909
  %8421 = fmul fast float %8418, %7910
  %8422 = fmul fast float %7927, %7906
  %8423 = fsub fast float 1.000000e+00, %8422
  %8424 = fmul fast float %7906, %7906
  %8425 = fsub fast float 1.000000e+00, %8424
  %8426 = fmul fast float %8425, 0x3FB45F3060000000
  %8427 = fmul fast float %8423, %8423
  %8428 = fdiv fast float 1.000000e+00, %8427
  %8429 = fmul fast float %8426, %8428
  %8430 = fmul fast float %8429, %7903
  %8431 = fmul fast float %8429, %7904
  %8432 = fmul fast float %8429, %7905
  %8433 = fadd fast float %8430, %8419
  %8434 = fadd fast float %8431, %8420
  %8435 = fadd fast float %8432, %8421
  %8436 = fsub fast float 1.000000e+00, %8413
  %8437 = fsub fast float 1.000000e+00, %8414
  %8438 = fsub fast float 1.000000e+00, %8415
  %8439 = fmul fast float %8433, %8436
  %8440 = fmul fast float %8434, %8437
  %8441 = fmul fast float %8435, %8438
  br label %8442

; <label>:8442                                    ; preds = %8403, %8354
  %8443 = phi float [ %8380, %8354 ], [ %8439, %8403 ]
  %8444 = phi float [ %8381, %8354 ], [ %8440, %8403 ]
  %8445 = phi float [ %8382, %8354 ], [ %8441, %8403 ]
  %8446 = phi float [ %8369, %8354 ], [ %8413, %8403 ]
  %8447 = phi float [ %8369, %8354 ], [ %8414, %8403 ]
  %8448 = phi float [ %8369, %8354 ], [ %8415, %8403 ]
  br i1 %7935, label %8449, label %8647, !dx.controlflow.hints !182

; <label>:8449                                    ; preds = %8442
  %8450 = extractvalue %dx.types.CBufRet.f32 %8348, 0
  %8451 = fmul fast float %8450, %8350
  %8452 = fsub fast float %8345, %8443
  %8453 = fsub fast float %8346, %8444
  %8454 = fsub fast float %8347, %8445
  %8455 = fmul fast float %8451, %8452
  %8456 = fmul fast float %8451, %8453
  %8457 = fmul fast float %8451, %8454
  %8458 = fadd fast float %8455, %8443
  %8459 = fadd fast float %8456, %8444
  %8460 = fadd fast float %8457, %8445
  %8461 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8446)  ; FMax(a,b)
  %8462 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8447)  ; FMax(a,b)
  %8463 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8448)  ; FMax(a,b)
  %8464 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8344)  ; FMax(a,b)
  %8465 = call float @dx.op.binary.f32(i32 35, float %8343, float %8353)  ; FMax(a,b)
  %8466 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8465)  ; FMax(a,b)
  %8467 = fdiv fast float %8343, %8466
  %8468 = call float @dx.op.unary.f32(i32 7, float %8467)  ; Saturate(value)
  %8469 = fdiv fast float %8353, %8466
  %8470 = call float @dx.op.unary.f32(i32 7, float %8469)  ; Saturate(value)
  %8471 = fcmp fast une float %8464, 1.000000e+00
  br i1 %8471, label %8472, label %8485, !dx.controlflow.hints !183

; <label>:8472                                    ; preds = %8449
  %8473 = call float @dx.op.unary.f32(i32 23, float %8464)  ; Log(value)
  %8474 = fmul fast float %8473, 0x3FE62E4300000000
  %8475 = fmul fast float %8345, %8474
  %8476 = fsub fast float -0.000000e+00, %8475
  %8477 = fmul fast float %8346, %8474
  %8478 = fsub fast float -0.000000e+00, %8477
  %8479 = fmul fast float %8347, %8474
  %8480 = fsub fast float -0.000000e+00, %8479
  %8481 = fsub fast float 1.000000e+00, %8464
  %8482 = fdiv fast float %8476, %8481
  %8483 = fdiv fast float %8478, %8481
  %8484 = fdiv fast float %8480, %8481
  br label %8485

; <label>:8485                                    ; preds = %8472, %8449
  %8486 = phi float [ %8482, %8472 ], [ %8345, %8449 ]
  %8487 = phi float [ %8483, %8472 ], [ %8346, %8449 ]
  %8488 = phi float [ %8484, %8472 ], [ %8347, %8449 ]
  %8489 = phi float [ %8474, %8472 ], [ 0.000000e+00, %8449 ]
  %8490 = fcmp fast une float %8461, 1.000000e+00
  br i1 %8490, label %8491, label %8498, !dx.controlflow.hints !184

; <label>:8491                                    ; preds = %8485
  %8492 = call float @dx.op.unary.f32(i32 23, float %8461)  ; Log(value)
  %8493 = fmul fast float %8492, 0x3FE62E4300000000
  %8494 = fmul fast float %8458, %8493
  %8495 = fsub fast float -0.000000e+00, %8494
  %8496 = fsub fast float 1.000000e+00, %8461
  %8497 = fdiv fast float %8495, %8496
  br label %8498

; <label>:8498                                    ; preds = %8491, %8485
  %8499 = phi float [ %8497, %8491 ], [ %8458, %8485 ]
  %8500 = phi float [ %8493, %8491 ], [ 0.000000e+00, %8485 ]
  %8501 = fcmp fast une float %8462, 1.000000e+00
  br i1 %8501, label %8502, label %8509, !dx.controlflow.hints !184

; <label>:8502                                    ; preds = %8498
  %8503 = call float @dx.op.unary.f32(i32 23, float %8462)  ; Log(value)
  %8504 = fmul fast float %8503, 0x3FE62E4300000000
  %8505 = fmul fast float %8459, %8504
  %8506 = fsub fast float -0.000000e+00, %8505
  %8507 = fsub fast float 1.000000e+00, %8462
  %8508 = fdiv fast float %8506, %8507
  br label %8509

; <label>:8509                                    ; preds = %8502, %8498
  %8510 = phi float [ %8508, %8502 ], [ %8459, %8498 ]
  %8511 = phi float [ %8504, %8502 ], [ 0.000000e+00, %8498 ]
  %8512 = fcmp fast une float %8463, 1.000000e+00
  br i1 %8512, label %8513, label %8520, !dx.controlflow.hints !184

; <label>:8513                                    ; preds = %8509
  %8514 = call float @dx.op.unary.f32(i32 23, float %8463)  ; Log(value)
  %8515 = fmul fast float %8514, 0x3FE62E4300000000
  %8516 = fmul fast float %8460, %8515
  %8517 = fsub fast float -0.000000e+00, %8516
  %8518 = fsub fast float 1.000000e+00, %8463
  %8519 = fdiv fast float %8517, %8518
  br label %8520

; <label>:8520                                    ; preds = %8513, %8509
  %8521 = phi float [ %8519, %8513 ], [ %8460, %8509 ]
  %8522 = phi float [ %8515, %8513 ], [ 0.000000e+00, %8509 ]
  %8523 = fmul fast float %8486, %8470
  %8524 = fmul fast float %8487, %8470
  %8525 = fmul fast float %8488, %8470
  %8526 = fmul fast float %8489, %8470
  %8527 = fmul fast float %8499, %8468
  %8528 = fmul fast float %8510, %8468
  %8529 = fmul fast float %8521, %8468
  %8530 = fmul fast float %8500, %8468
  %8531 = fmul fast float %8511, %8468
  %8532 = fmul fast float %8522, %8468
  %8533 = fadd fast float %8527, %8523
  %8534 = fadd fast float %8528, %8524
  %8535 = fadd fast float %8529, %8525
  %8536 = fadd fast float %8530, %8526
  %8537 = fadd fast float %8531, %8526
  %8538 = fadd fast float %8532, %8526
  %8539 = fcmp fast une float %8536, 0.000000e+00
  br i1 %8539, label %8540, label %8547, !dx.controlflow.hints !185

; <label>:8540                                    ; preds = %8520
  %8541 = fmul fast float %8536, 0x3FF7154760000000
  %8542 = call float @dx.op.unary.f32(i32 21, float %8541)  ; Exp(value)
  %8543 = fsub fast float 1.000000e+00, %8542
  %8544 = fmul fast float %8533, %8543
  %8545 = fsub fast float -0.000000e+00, %8544
  %8546 = fdiv fast float %8545, %8536
  br label %8547

; <label>:8547                                    ; preds = %8540, %8520
  %8548 = phi float [ %8542, %8540 ], [ 1.000000e+00, %8520 ]
  %8549 = phi float [ %8546, %8540 ], [ %8533, %8520 ]
  %8550 = fcmp fast une float %8537, 0.000000e+00
  br i1 %8550, label %8551, label %8558, !dx.controlflow.hints !185

; <label>:8551                                    ; preds = %8547
  %8552 = fmul fast float %8537, 0x3FF7154760000000
  %8553 = call float @dx.op.unary.f32(i32 21, float %8552)  ; Exp(value)
  %8554 = fsub fast float 1.000000e+00, %8553
  %8555 = fmul fast float %8534, %8554
  %8556 = fsub fast float -0.000000e+00, %8555
  %8557 = fdiv fast float %8556, %8537
  br label %8558

; <label>:8558                                    ; preds = %8551, %8547
  %8559 = phi float [ %8553, %8551 ], [ 1.000000e+00, %8547 ]
  %8560 = phi float [ %8557, %8551 ], [ %8534, %8547 ]
  %8561 = fcmp fast une float %8538, 0.000000e+00
  br i1 %8561, label %8562, label %8569, !dx.controlflow.hints !185

; <label>:8562                                    ; preds = %8558
  %8563 = fmul fast float %8538, 0x3FF7154760000000
  %8564 = call float @dx.op.unary.f32(i32 21, float %8563)  ; Exp(value)
  %8565 = fsub fast float 1.000000e+00, %8564
  %8566 = fmul fast float %8535, %8565
  %8567 = fsub fast float -0.000000e+00, %8566
  %8568 = fdiv fast float %8567, %8538
  br label %8569

; <label>:8569                                    ; preds = %8562, %8558
  %8570 = phi float [ %8564, %8562 ], [ 1.000000e+00, %8558 ]
  %8571 = phi float [ %8568, %8562 ], [ %8535, %8558 ]
  %8572 = fcmp fast ogt float %8468, %8470
  br i1 %8572, label %8573, label %8593

; <label>:8573                                    ; preds = %8569
  %8574 = fsub fast float 1.000000e+00, %8470
  %8575 = fmul fast float %8486, %8574
  %8576 = fmul fast float %8487, %8574
  %8577 = fmul fast float %8488, %8574
  %8578 = fmul fast float %8489, %8574
  %8579 = fcmp fast une float %8578, 0.000000e+00
  br i1 %8579, label %8580, label %8631, !dx.controlflow.hints !186

; <label>:8580                                    ; preds = %8573
  %8581 = fmul fast float %8578, 0x3FF7154760000000
  %8582 = call float @dx.op.unary.f32(i32 21, float %8581)  ; Exp(value)
  %8583 = fsub fast float 1.000000e+00, %8582
  %8584 = fmul fast float %8575, %8583
  %8585 = fsub fast float -0.000000e+00, %8584
  %8586 = fmul fast float %8576, %8583
  %8587 = fsub fast float -0.000000e+00, %8586
  %8588 = fmul fast float %8577, %8583
  %8589 = fsub fast float -0.000000e+00, %8588
  %8590 = fdiv fast float %8585, %8578
  %8591 = fdiv fast float %8587, %8578
  %8592 = fdiv fast float %8589, %8578
  br label %8631

; <label>:8593                                    ; preds = %8569
  %8594 = fsub fast float 1.000000e+00, %8468
  %8595 = fmul fast float %8499, %8594
  %8596 = fmul fast float %8510, %8594
  %8597 = fmul fast float %8521, %8594
  %8598 = fmul fast float %8500, %8594
  %8599 = fmul fast float %8511, %8594
  %8600 = fmul fast float %8522, %8594
  %8601 = fcmp fast une float %8598, 0.000000e+00
  br i1 %8601, label %8602, label %8609, !dx.controlflow.hints !185

; <label>:8602                                    ; preds = %8593
  %8603 = fmul fast float %8598, 0x3FF7154760000000
  %8604 = call float @dx.op.unary.f32(i32 21, float %8603)  ; Exp(value)
  %8605 = fsub fast float 1.000000e+00, %8604
  %8606 = fmul fast float %8595, %8605
  %8607 = fsub fast float -0.000000e+00, %8606
  %8608 = fdiv fast float %8607, %8598
  br label %8609

; <label>:8609                                    ; preds = %8602, %8593
  %8610 = phi float [ %8608, %8602 ], [ %8595, %8593 ]
  %8611 = phi float [ %8604, %8602 ], [ 1.000000e+00, %8593 ]
  %8612 = fcmp fast une float %8599, 0.000000e+00
  br i1 %8612, label %8613, label %8620, !dx.controlflow.hints !185

; <label>:8613                                    ; preds = %8609
  %8614 = fmul fast float %8599, 0x3FF7154760000000
  %8615 = call float @dx.op.unary.f32(i32 21, float %8614)  ; Exp(value)
  %8616 = fsub fast float 1.000000e+00, %8615
  %8617 = fmul fast float %8596, %8616
  %8618 = fsub fast float -0.000000e+00, %8617
  %8619 = fdiv fast float %8618, %8599
  br label %8620

; <label>:8620                                    ; preds = %8613, %8609
  %8621 = phi float [ %8619, %8613 ], [ %8596, %8609 ]
  %8622 = phi float [ %8615, %8613 ], [ 1.000000e+00, %8609 ]
  %8623 = fcmp fast une float %8600, 0.000000e+00
  br i1 %8623, label %8624, label %8631, !dx.controlflow.hints !185

; <label>:8624                                    ; preds = %8620
  %8625 = fmul fast float %8600, 0x3FF7154760000000
  %8626 = call float @dx.op.unary.f32(i32 21, float %8625)  ; Exp(value)
  %8627 = fsub fast float 1.000000e+00, %8626
  %8628 = fmul fast float %8597, %8627
  %8629 = fsub fast float -0.000000e+00, %8628
  %8630 = fdiv fast float %8629, %8600
  br label %8631

; <label>:8631                                    ; preds = %8624, %8620, %8580, %8573
  %8632 = phi float [ %8630, %8624 ], [ %8592, %8580 ], [ %8577, %8573 ], [ %8597, %8620 ]
  %8633 = phi float [ %8621, %8624 ], [ %8591, %8580 ], [ %8576, %8573 ], [ %8621, %8620 ]
  %8634 = phi float [ %8610, %8624 ], [ %8590, %8580 ], [ %8575, %8573 ], [ %8610, %8620 ]
  %8635 = phi float [ %8626, %8624 ], [ %8582, %8580 ], [ 1.000000e+00, %8573 ], [ 1.000000e+00, %8620 ]
  %8636 = phi float [ %8622, %8624 ], [ %8582, %8580 ], [ 1.000000e+00, %8573 ], [ %8622, %8620 ]
  %8637 = phi float [ %8611, %8624 ], [ %8582, %8580 ], [ 1.000000e+00, %8573 ], [ %8611, %8620 ]
  %8638 = fmul fast float %8637, %8549
  %8639 = fmul fast float %8636, %8560
  %8640 = fmul fast float %8635, %8571
  %8641 = fadd fast float %8638, %8634
  %8642 = fadd fast float %8639, %8633
  %8643 = fadd fast float %8640, %8632
  %8644 = fmul fast float %8637, %8548
  %8645 = fmul fast float %8636, %8559
  %8646 = fmul fast float %8635, %8570
  br label %8647

; <label>:8647                                    ; preds = %8631, %8442
  %8648 = phi float [ %8646, %8631 ], [ %8448, %8442 ]
  %8649 = phi float [ %8645, %8631 ], [ %8447, %8442 ]
  %8650 = phi float [ %8644, %8631 ], [ %8446, %8442 ]
  %8651 = phi float [ %8643, %8631 ], [ %8445, %8442 ]
  %8652 = phi float [ %8642, %8631 ], [ %8444, %8442 ]
  %8653 = phi float [ %8641, %8631 ], [ %8443, %8442 ]
  %8654 = fmul fast float %8653, %7599
  %8655 = fmul fast float %8652, %7599
  %8656 = fmul fast float %8651, %7599
  %8657 = fmul fast float %8650, %7890
  %8658 = call float @dx.op.dot3.f32(i32 55, float %8650, float %8649, float %8648, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8659 = call float @dx.op.dot3.f32(i32 55, float %8654, float %8655, float %8656, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8660 = select i1 %262, float %8658, float %8650
  %8661 = select i1 %262, float %8658, float %8649
  %8662 = select i1 %262, float 1.000000e+00, float %8648
  %8663 = select i1 %262, float %8659, float %8654
  %8664 = select i1 %262, float 0.000000e+00, float %8655
  %8665 = select i1 %262, float 0.000000e+00, float %8656
  %8666 = fmul fast float %8660, %7884
  %8667 = fmul fast float %8661, %7885
  %8668 = fmul fast float %8662, %7886
  %8669 = fadd fast float %8666, %8663
  %8670 = fadd fast float %8667, %8664
  %8671 = fadd fast float %8665, %8668
  %8672 = fmul fast float %8660, %7887
  %8673 = fmul fast float %8661, %7888
  %8674 = fmul fast float %8662, %7889
  %8675 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8676 = extractvalue %dx.types.CBufRet.i32 %8675, 0
  %8677 = icmp eq i32 %8676, 0
  br i1 %8677, label %9045, label %8678, !dx.controlflow.hints !187

; <label>:8678                                    ; preds = %8647
  %8679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8680 = extractvalue %dx.types.CBufRet.f32 %8679, 2
  %8681 = extractvalue %dx.types.CBufRet.f32 %8679, 3
  %8682 = fmul fast float %8680, %116
  %8683 = fmul fast float %8681, %117
  %8684 = fmul fast float %8682, 2.000000e+00
  %8685 = fmul fast float %8683, 2.000000e+00
  %8686 = fsub fast float 1.000000e+00, %8684
  %8687 = fsub fast float 1.000000e+00, %8685
  %8688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8689 = extractvalue %dx.types.CBufRet.f32 %8688, 0
  %8690 = extractvalue %dx.types.CBufRet.f32 %8688, 1
  %8691 = extractvalue %dx.types.CBufRet.f32 %8688, 2
  %8692 = fmul fast float %8686, %8689
  %8693 = fmul fast float %8686, %8690
  %8694 = fmul fast float %8686, %8691
  %8695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8696 = extractvalue %dx.types.CBufRet.f32 %8695, 0
  %8697 = extractvalue %dx.types.CBufRet.f32 %8695, 1
  %8698 = extractvalue %dx.types.CBufRet.f32 %8695, 2
  %8699 = fmul fast float %8687, %8696
  %8700 = fmul fast float %8687, %8697
  %8701 = fmul fast float %8687, %8698
  %8702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8703 = extractvalue %dx.types.CBufRet.f32 %8702, 0
  %8704 = extractvalue %dx.types.CBufRet.f32 %8702, 1
  %8705 = extractvalue %dx.types.CBufRet.f32 %8702, 2
  %8706 = fadd fast float %8699, %8703
  %8707 = fadd fast float %8706, %8692
  %8708 = fadd fast float %8700, %8704
  %8709 = fadd fast float %8708, %8693
  %8710 = fadd fast float %8701, %8705
  %8711 = fadd fast float %8710, %8694
  %8712 = fmul fast float %8707, %7883
  %8713 = fmul fast float %8709, %7883
  %8714 = fmul fast float %8711, %7883
  %8715 = fmul fast float %8712, %8712
  %8716 = fmul fast float %8713, %8713
  %8717 = fadd fast float %8715, %8716
  %8718 = fmul fast float %8714, %8714
  %8719 = fadd fast float %8717, %8718
  %8720 = call float @dx.op.unary.f32(i32 24, float %8719)  ; Sqrt(value)
  %8721 = extractvalue %dx.types.CBufRet.f32 %7610, 0
  %8722 = fsub fast float %8720, %8721
  %8723 = extractvalue %dx.types.CBufRet.f32 %7610, 2
  %8724 = fmul fast float %8722, %8723
  %8725 = call float @dx.op.unary.f32(i32 7, float %8724)  ; Saturate(value)
  %8726 = fadd fast float %8725, -5.000000e-01
  %8727 = fmul fast float %8726, 2.000000e+00
  %8728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8729 = extractvalue %dx.types.CBufRet.f32 %8728, 2
  %8730 = call float @dx.op.binary.f32(i32 36, float %8729, float %8727)  ; FMin(a,b)
  %8731 = fsub fast float -0.000000e+00, %8729
  %8732 = fcmp fast ogt float %8730, %8731
  br i1 %8732, label %8733, label %9045, !dx.controlflow.hints !188

; <label>:8733                                    ; preds = %8678
  %8734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8735 = extractvalue %dx.types.CBufRet.f32 %8734, 3
  %8736 = fcmp fast ogt float %8735, 0.000000e+00
  br i1 %8736, label %8737, label %8812, !dx.controlflow.hints !189

; <label>:8737                                    ; preds = %8733
  %8738 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %38, i32 0)  ; GetDimensions(handle,mipLevel)
  %8739 = extractvalue %dx.types.Dimensions %8738, 0
  %8740 = sitofp i32 %8739 to float
  %8741 = extractvalue %dx.types.Dimensions %8738, 1
  %8742 = sitofp i32 %8741 to float
  %8743 = fmul fast float %8682, %8740
  %8744 = fmul fast float %8683, %8742
  %8745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8746 = extractvalue %dx.types.CBufRet.f32 %8745, 1
  %8747 = fsub fast float -0.000000e+00, %8746
  %8748 = fptoui float %8747 to i32
  %8749 = fptoui float %8743 to i32
  %8750 = fptoui float %8744 to i32
  %8751 = and i32 %8748, 31
  %8752 = lshr i32 %8749, %8751
  %8753 = lshr i32 %8750, %8751
  %8754 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 %8748, i32 %8752, i32 %8753, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8755 = extractvalue %dx.types.ResRet.f32 %8754, 0
  %8756 = fcmp fast olt float %8755, -1.000000e+00
  %8757 = fcmp fast ogt float %8755, -1.000000e+00
  %8758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8759 = extractvalue %dx.types.CBufRet.f32 %8758, 1
  %8760 = select i1 %8757, float %8759, float 1.000000e+00
  %8761 = fadd fast float %8755, 1.000000e+00
  %8762 = fmul fast float %8760, %8761
  %8763 = call float @dx.op.unary.f32(i32 6, float %8762)  ; FAbs(value)
  %8764 = extractvalue %dx.types.CBufRet.f32 %8758, 3
  %8765 = fcmp fast oge float %8763, %8764
  %8766 = select i1 %8765, float 0x4197782600000000, float %8763
  %8767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8768 = extractvalue %dx.types.CBufRet.f32 %8767, 0
  %8769 = extractvalue %dx.types.CBufRet.f32 %8767, 1
  %8770 = extractvalue %dx.types.CBufRet.f32 %8767, 2
  %8771 = select i1 %8756, float %8768, float %8689
  %8772 = select i1 %8756, float %8769, float %8690
  %8773 = select i1 %8756, float %8770, float %8691
  %8774 = fmul fast float %8771, %8686
  %8775 = fmul fast float %8772, %8686
  %8776 = fmul fast float %8773, %8686
  %8777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8778 = extractvalue %dx.types.CBufRet.f32 %8777, 0
  %8779 = extractvalue %dx.types.CBufRet.f32 %8777, 1
  %8780 = extractvalue %dx.types.CBufRet.f32 %8777, 2
  %8781 = select i1 %8756, float %8778, float %8696
  %8782 = select i1 %8756, float %8779, float %8697
  %8783 = select i1 %8756, float %8780, float %8698
  %8784 = fmul fast float %8781, %8687
  %8785 = fmul fast float %8782, %8687
  %8786 = fmul fast float %8783, %8687
  %8787 = fadd fast float %8784, %8774
  %8788 = fadd fast float %8785, %8775
  %8789 = fadd fast float %8786, %8776
  %8790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8791 = extractvalue %dx.types.CBufRet.f32 %8790, 0
  %8792 = extractvalue %dx.types.CBufRet.f32 %8790, 1
  %8793 = extractvalue %dx.types.CBufRet.f32 %8790, 2
  %8794 = select i1 %8756, float %8791, float %8703
  %8795 = select i1 %8756, float %8792, float %8704
  %8796 = select i1 %8756, float %8793, float %8705
  %8797 = fadd fast float %8787, %8794
  %8798 = fadd fast float %8788, %8795
  %8799 = fadd fast float %8789, %8796
  %8800 = fmul fast float %8797, %8766
  %8801 = fmul fast float %8798, %8766
  %8802 = fmul fast float %8799, %8766
  %8803 = fmul fast float %8800, %8800
  %8804 = fmul fast float %8801, %8801
  %8805 = fadd fast float %8803, %8804
  %8806 = fmul fast float %8802, %8802
  %8807 = fadd fast float %8805, %8806
  %8808 = call float @dx.op.unary.f32(i32 24, float %8807)  ; Sqrt(value)
  %8809 = fsub fast float %8808, %8721
  %8810 = fmul fast float %8809, %8723
  %8811 = call float @dx.op.unary.f32(i32 7, float %8810)  ; Saturate(value)
  br label %8812

; <label>:8812                                    ; preds = %8737, %8733
  %8813 = phi float [ %8811, %8737 ], [ 1.000000e+00, %8733 ]
  %8814 = fmul fast float %8730, 5.000000e-01
  %8815 = fadd fast float %8814, 5.000000e-01
  %8816 = call float @dx.op.unary.f32(i32 22, float %8815)  ; Frc(value)
  %8817 = call float @dx.op.unary.f32(i32 27, float %8816)  ; Round_ni(value)
  %8818 = call float @dx.op.unary.f32(i32 22, float %8816)  ; Frc(value)
  %8819 = fmul fast float %8818, 2.000000e+00
  %8820 = fadd fast float %8819, -1.000000e+00
  %8821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %56, float %8682, float %8683, float %8817, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8822 = extractvalue %dx.types.ResRet.f32 %8821, 0
  %8823 = extractvalue %dx.types.ResRet.f32 %8821, 1
  %8824 = extractvalue %dx.types.ResRet.f32 %8821, 2
  %8825 = extractvalue %dx.types.ResRet.f32 %8821, 3
  %8826 = fadd fast float %8822, -5.000000e-01
  %8827 = fadd fast float %8824, -5.000000e-01
  %8828 = fmul fast float %8826, 0xBFD5555560000000
  %8829 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8827, float %8828)  ; FMad(a,b,c)
  %8830 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8823, float 0.000000e+00)  ; FMad(a,b,c)
  %8831 = fadd fast float %8830, %8825
  %8832 = fmul fast float %8826, -7.500000e-01
  %8833 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8827, float %8832)  ; FMad(a,b,c)
  %8834 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8823, float 0.000000e+00)  ; FMad(a,b,c)
  %8835 = fadd fast float %8834, %8825
  %8836 = call float @dx.op.binary.f32(i32 35, float %8829, float -1.000000e+00)  ; FMax(a,b)
  %8837 = call float @dx.op.binary.f32(i32 35, float %8831, float -1.000000e+00)  ; FMax(a,b)
  %8838 = call float @dx.op.binary.f32(i32 35, float %8833, float -1.000000e+00)  ; FMax(a,b)
  %8839 = call float @dx.op.binary.f32(i32 35, float %8835, float -1.000000e+00)  ; FMax(a,b)
  %8840 = call float @dx.op.binary.f32(i32 36, float %8836, float 1.000000e+00)  ; FMin(a,b)
  %8841 = call float @dx.op.binary.f32(i32 36, float %8837, float 1.000000e+00)  ; FMin(a,b)
  %8842 = call float @dx.op.binary.f32(i32 36, float %8838, float 1.000000e+00)  ; FMin(a,b)
  %8843 = call float @dx.op.binary.f32(i32 36, float %8839, float 1.000000e+00)  ; FMin(a,b)
  %8844 = fcmp fast olt float %8840, 0x3FEFFF8020000000
  br i1 %8844, label %8845, label %8960, !dx.controlflow.hints !190

; <label>:8845                                    ; preds = %8812
  %8846 = extractvalue %dx.types.CBufRet.f32 %8728, 3
  %8847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8848 = extractvalue %dx.types.CBufRet.f32 %8847, 0
  %8849 = extractvalue %dx.types.CBufRet.f32 %8847, 1
  %8850 = extractvalue %dx.types.CBufRet.f32 %8847, 2
  %8851 = extractvalue %dx.types.CBufRet.f32 %8847, 3
  %8852 = fsub fast float %8848, %8840
  %8853 = fsub fast float %8849, %8841
  %8854 = fsub fast float %8850, %8842
  %8855 = fsub fast float %8851, %8843
  %8856 = fmul fast float %8852, %8846
  %8857 = fmul fast float %8853, %8846
  %8858 = fmul fast float %8854, %8846
  %8859 = fmul fast float %8855, %8846
  %8860 = fadd fast float %8856, %8840
  %8861 = fadd fast float %8857, %8841
  %8862 = fsub fast float -0.000000e+00, %8861
  %8863 = fadd fast float %8858, %8842
  %8864 = fadd fast float %8859, %8843
  %8865 = fmul fast float %8860, %8860
  %8866 = fsub fast float %8861, %8865
  %8867 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8866)  ; FMax(a,b)
  %8868 = fdiv fast float 1.000000e+00, %8867
  %8869 = fmul fast float %8861, %8860
  %8870 = fsub fast float %8863, %8869
  %8871 = fsub fast float %8820, %8860
  %8872 = fmul fast float %8820, %8820
  %8873 = fsub fast float %8872, %8861
  %8874 = fmul fast float %8871, %8868
  %8875 = fmul fast float %8874, %8870
  %8876 = fsub fast float %8873, %8875
  %8877 = fmul fast float %8861, %8861
  %8878 = fsub fast float %8864, %8877
  %8879 = fmul fast float %8870, %8870
  %8880 = fmul fast float %8879, %8868
  %8881 = fsub fast float %8878, %8880
  %8882 = fdiv fast float %8876, %8881
  %8883 = fmul fast float %8870, %8882
  %8884 = fsub fast float %8871, %8883
  %8885 = fmul fast float %8884, %8868
  %8886 = fmul fast float %8885, %8860
  %8887 = fsub fast float 1.000000e+00, %8886
  %8888 = fmul fast float %8861, %8882
  %8889 = fsub fast float %8887, %8888
  %8890 = fmul fast float %8885, %8885
  %8891 = fmul fast float %8882, 4.000000e+00
  %8892 = fmul fast float %8891, %8889
  %8893 = fsub fast float %8890, %8892
  %8894 = call float @dx.op.unary.f32(i32 24, float %8893)  ; Sqrt(value)
  %8895 = fcmp fast oge float %8885, 0.000000e+00
  %8896 = fsub fast float -0.000000e+00, %8894
  %8897 = select i1 %8895, float %8896, float %8894
  %8898 = fsub fast float %8897, %8885
  %8899 = fdiv fast float %8898, %8882
  %8900 = fdiv fast float %8889, %8898
  %8901 = fmul fast float %8899, 5.000000e-01
  %8902 = fmul fast float %8900, 2.000000e+00
  %8903 = select i1 %8895, float %8901, float %8902
  %8904 = select i1 %8895, float %8902, float %8901
  %8905 = call float @dx.op.binary.f32(i32 35, float %8903, float %8904)  ; FMax(a,b)
  %8906 = call float @dx.op.binary.f32(i32 36, float %8903, float %8904)  ; FMin(a,b)
  %8907 = fcmp fast ogt float %8820, %8906
  br i1 %8907, label %8908, label %8918

; <label>:8908                                    ; preds = %8845
  %8909 = fsub fast float %8820, %8906
  %8910 = fsub fast float %8905, %8906
  %8911 = fmul fast float %8909, %8910
  %8912 = fmul fast float %8905, %8820
  %8913 = fadd fast float %8905, %8820
  %8914 = fmul fast float %8913, %8860
  %8915 = fadd fast float %8912, %8861
  %8916 = fsub fast float %8915, %8914
  %8917 = fdiv fast float %8916, %8911
  br label %8918

; <label>:8918                                    ; preds = %8908, %8845
  %8919 = phi float [ %8917, %8908 ], [ 0.000000e+00, %8845 ]
  %8920 = fcmp fast ogt float %8820, %8905
  %8921 = fsub fast float %8820, %8905
  br i1 %8920, label %8922, label %8932

; <label>:8922                                    ; preds = %8918
  %8923 = fsub fast float %8905, %8906
  %8924 = fmul fast float %8923, %8921
  %8925 = fmul fast float %8906, %8820
  %8926 = fadd fast float %8906, %8820
  %8927 = fmul fast float %8926, %8860
  %8928 = fsub fast float %8862, %8925
  %8929 = fadd fast float %8928, %8927
  %8930 = fdiv fast float %8929, %8924
  %8931 = fadd fast float %8930, %8919
  br label %8932

; <label>:8932                                    ; preds = %8922, %8918
  %8933 = phi float [ %8931, %8922 ], [ %8919, %8918 ]
  %8934 = fsub fast float %8820, %8906
  %8935 = fmul fast float %8934, %8921
  %8936 = fmul fast float %8906, %8905
  %8937 = fadd fast float %8906, %8905
  %8938 = fmul fast float %8937, %8860
  %8939 = fadd fast float %8936, %8861
  %8940 = fsub fast float %8939, %8938
  %8941 = fdiv fast float %8940, %8935
  %8942 = call float @dx.op.unary.f32(i32 7, float %8933)  ; Saturate(value)
  %8943 = fcmp fast oeq float %7611, 0.000000e+00
  %8944 = extractvalue %dx.types.CBufRet.f32 %8728, 0
  %8945 = fcmp fast oeq float %8944, 0.000000e+00
  %8946 = or i1 %8943, %8945
  %8947 = fmul fast float %8944, 2.000000e+00
  %8948 = fadd fast float %8729, %8730
  %8949 = fdiv fast float %8948, %8947
  %8950 = call float @dx.op.unary.f32(i32 7, float %8949)  ; Saturate(value)
  %8951 = fmul fast float %8950, 2.000000e+00
  %8952 = fsub fast float 3.000000e+00, %8951
  %8953 = fmul fast float %8950, %8950
  %8954 = fmul fast float %8953, %8952
  %8955 = select i1 %8946, float 1.000000e+00, float %8954
  %8956 = fmul fast float %8941, %7611
  %8957 = fadd fast float %8942, %8956
  %8958 = call float @dx.op.unary.f32(i32 7, float %8957)  ; Saturate(value)
  %8959 = fmul fast float %8955, %8958
  br label %8960

; <label>:8960                                    ; preds = %8932, %8812
  %8961 = phi float [ %8959, %8932 ], [ 0.000000e+00, %8812 ]
  %8962 = fsub fast float 1.000000e+00, %8961
  %8963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %56, float %8682, float %8683, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8964 = extractvalue %dx.types.ResRet.f32 %8963, 0
  %8965 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8966 = extractvalue %dx.types.CBufRet.i32 %8965, 2
  %8967 = icmp eq i32 %8966, 0
  br i1 %8967, label %8973, label %8968

; <label>:8968                                    ; preds = %8960
  %8969 = call float @dx.op.unary.f32(i32 7, float %8961)  ; Saturate(value)
  %8970 = fadd fast float %8964, -1.000000e+00
  %8971 = fmul fast float %8969, %8970
  %8972 = fadd fast float %8971, 1.000000e+00
  br label %8973

; <label>:8973                                    ; preds = %8968, %8960
  %8974 = phi float [ %8972, %8968 ], [ %8962, %8960 ]
  br i1 %8736, label %8975, label %8993

; <label>:8975                                    ; preds = %8973
  %8976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8977 = extractvalue %dx.types.CBufRet.f32 %8976, 1
  %8978 = fsub fast float %8813, %8977
  %8979 = call float @dx.op.unary.f32(i32 7, float %8978)  ; Saturate(value)
  %8980 = fsub fast float %8813, %8735
  %8981 = call float @dx.op.unary.f32(i32 7, float %8980)  ; Saturate(value)
  %8982 = fsub fast float %8979, %8981
  %8983 = fsub fast float %8815, %8981
  %8984 = fdiv fast float %8983, %8982
  %8985 = call float @dx.op.unary.f32(i32 7, float %8984)  ; Saturate(value)
  %8986 = fmul fast float %8985, 2.000000e+00
  %8987 = fsub fast float 3.000000e+00, %8986
  %8988 = fsub fast float %8964, %8974
  %8989 = fmul fast float %8985, %8985
  %8990 = fmul fast float %8989, %8988
  %8991 = fmul fast float %8990, %8987
  %8992 = fadd fast float %8991, %8974
  br label %8993

; <label>:8993                                    ; preds = %8975, %8973
  %8994 = phi float [ %8992, %8975 ], [ %8974, %8973 ]
  %8995 = call float @dx.op.binary.f32(i32 35, float %8964, float %8994)  ; FMax(a,b)
  %8996 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8997 = extractvalue %dx.types.CBufRet.i32 %8996, 2
  %8998 = and i32 %8997, 1
  %8999 = icmp eq i32 %8998, 0
  %9000 = fcmp fast une float %8995, 1.000000e+00
  %9001 = and i1 %9000, %8999
  br i1 %9001, label %9002, label %9021

; <label>:9002                                    ; preds = %8993
  %9003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %56, float %8682, float %8683, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9004 = extractvalue %dx.types.ResRet.f32 %9003, 0
  %9005 = extractvalue %dx.types.ResRet.f32 %9003, 1
  %9006 = extractvalue %dx.types.ResRet.f32 %9003, 2
  %9007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9008 = extractvalue %dx.types.CBufRet.f32 %9007, 1
  %9009 = fmul fast float %9008, %9004
  %9010 = fmul fast float %9008, %9005
  %9011 = fmul fast float %9008, %9006
  %9012 = fcmp fast ogt float %8964, 0x3FEFFF2E40000000
  %9013 = fsub fast float 1.000000e+00, %8995
  %9014 = fsub fast float 1.000000e+00, %8964
  %9015 = fdiv fast float %9013, %9014
  %9016 = call float @dx.op.unary.f32(i32 7, float %9015)  ; Saturate(value)
  %9017 = select i1 %9012, float 0.000000e+00, float %9016
  %9018 = fmul fast float %9009, %9017
  %9019 = fmul fast float %9010, %9017
  %9020 = fmul fast float %9011, %9017
  br label %9021

; <label>:9021                                    ; preds = %9002, %8993
  %9022 = phi float [ 0.000000e+00, %8993 ], [ %9018, %9002 ]
  %9023 = phi float [ 0.000000e+00, %8993 ], [ %9019, %9002 ]
  %9024 = phi float [ 0.000000e+00, %8993 ], [ %9020, %9002 ]
  %9025 = fmul fast float %9022, %7599
  %9026 = fmul fast float %9023, %7599
  %9027 = fmul fast float %9024, %7599
  %9028 = fmul fast float %8995, %8657
  %9029 = call float @dx.op.dot3.f32(i32 55, float %8995, float %8995, float %8995, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9030 = call float @dx.op.dot3.f32(i32 55, float %9025, float %9026, float %9027, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9031 = select i1 %262, float %9029, float %8995
  %9032 = select i1 %262, float 1.000000e+00, float %8995
  %9033 = select i1 %262, float %9030, float %9025
  %9034 = select i1 %262, float 0.000000e+00, float %9026
  %9035 = select i1 %262, float 0.000000e+00, float %9027
  %9036 = fmul fast float %9031, %8669
  %9037 = fmul fast float %9031, %8670
  %9038 = fmul fast float %9032, %8671
  %9039 = fadd fast float %9036, %9033
  %9040 = fadd fast float %9037, %9034
  %9041 = fadd fast float %9035, %9038
  %9042 = fmul fast float %9031, %8672
  %9043 = fmul fast float %9031, %8673
  %9044 = fmul fast float %9032, %8674
  br label %9045

; <label>:9045                                    ; preds = %9021, %8678, %8647, %7879
  %9046 = phi float [ %7884, %7879 ], [ %8669, %8647 ], [ %9039, %9021 ], [ %8669, %8678 ]
  %9047 = phi float [ %7885, %7879 ], [ %8670, %8647 ], [ %9040, %9021 ], [ %8670, %8678 ]
  %9048 = phi float [ %7886, %7879 ], [ %8671, %8647 ], [ %9041, %9021 ], [ %8671, %8678 ]
  %9049 = phi float [ %7887, %7879 ], [ %8672, %8647 ], [ %9042, %9021 ], [ %8672, %8678 ]
  %9050 = phi float [ %7888, %7879 ], [ %8673, %8647 ], [ %9043, %9021 ], [ %8673, %8678 ]
  %9051 = phi float [ %7889, %7879 ], [ %8674, %8647 ], [ %9044, %9021 ], [ %8674, %8678 ]
  %9052 = phi float [ %7890, %7879 ], [ %8657, %8647 ], [ %9028, %9021 ], [ %8657, %8678 ]
  %9053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9054 = extractvalue %dx.types.CBufRet.f32 %9053, 2
  %9055 = extractvalue %dx.types.CBufRet.f32 %9053, 3
  %9056 = fmul fast float %9054, %116
  %9057 = fmul fast float %9055, %117
  %9058 = call float @dx.op.unary.f32(i32 7, float %9056)  ; Saturate(value)
  %9059 = call float @dx.op.unary.f32(i32 7, float %9057)  ; Saturate(value)
  %9060 = select i1 %7621, i32 2, i32 0
  %9061 = or i32 %9060, 1
  %9062 = uitofp i32 %9061 to float
  %9063 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %56, float %9058, float %9059, float %9062, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9064 = extractvalue %dx.types.ResRet.f32 %9063, 0
  %9065 = extractvalue %dx.types.ResRet.f32 %9063, 1
  %9066 = extractvalue %dx.types.ResRet.f32 %9063, 2
  %9067 = extractvalue %dx.types.ResRet.f32 %9063, 3
  %9068 = add nuw nsw i32 %9060, 2
  %9069 = uitofp i32 %9068 to float
  %9070 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %56, float %9058, float %9059, float %9069, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9071 = extractvalue %dx.types.ResRet.f32 %9070, 0
  %9072 = extractvalue %dx.types.ResRet.f32 %9070, 1
  %9073 = extractvalue %dx.types.ResRet.f32 %9070, 2
  %9074 = extractvalue %dx.types.ResRet.f32 %9070, 3
  %9075 = call float @dx.op.binary.f32(i32 35, float %9065, float %9066)  ; FMax(a,b)
  %9076 = call float @dx.op.binary.f32(i32 35, float %9064, float %9075)  ; FMax(a,b)
  %9077 = call float @dx.op.binary.f32(i32 35, float %9076, float %9067)  ; FMax(a,b)
  %9078 = call float @dx.op.binary.f32(i32 36, float %9072, float %9073)  ; FMin(a,b)
  %9079 = call float @dx.op.binary.f32(i32 36, float %9071, float %9078)  ; FMin(a,b)
  %9080 = call float @dx.op.binary.f32(i32 36, float %9079, float %9074)  ; FMin(a,b)
  %9081 = fmul fast float %9077, 2.550000e+02
  %9082 = fadd fast float %9081, 0x3F70101020000000
  %9083 = fptoui float %9082 to i32
  %9084 = fmul fast float %9080, 2.550000e+02
  %9085 = fadd fast float %9084, 0x3F70101020000000
  %9086 = fptoui float %9085 to i32
  %9087 = icmp ult i32 %9083, %9086
  br i1 %9087, label %9088, label %9257

; <label>:9088                                    ; preds = %9045
  %9089 = fcmp fast ogt float %102, 9.843750e-01
  %9090 = fadd fast float %7883, -4.000000e+00
  %9091 = select i1 %9089, float -4.000000e+00, float %9090
  %9092 = call float @dx.op.binary.f32(i32 35, float %9091, float 0.000000e+00)  ; FMax(a,b)
  %9093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9094 = extractvalue %dx.types.CBufRet.f32 %9093, 0
  %9095 = fadd fast float %9094, %9092
  %9096 = extractvalue %dx.types.CBufRet.f32 %9093, 2
  %9097 = fmul fast float %9095, %9096
  %9098 = call float @dx.op.unary.f32(i32 23, float %9097)  ; Log(value)
  %9099 = extractvalue %dx.types.CBufRet.f32 %9093, 3
  %9100 = fmul fast float %9099, %9098
  %9101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9102 = extractvalue %dx.types.CBufRet.f32 %9101, 2
  %9103 = fmul fast float %9100, %9102
  %9104 = call float @dx.op.unary.f32(i32 7, float %9103)  ; Saturate(value)
  %9105 = uitofp i32 %9083 to float
  %9106 = uitofp i32 %9086 to float
  %9107 = fadd fast float %9105, 5.000000e-01
  %9108 = fadd fast float %9106, 5.000000e-01
  %9109 = fmul fast float %9102, %9107
  %9110 = fmul fast float %9102, %9108
  %9111 = fadd fast float %9109, 0x3F0FFB4800000000
  %9112 = fadd fast float %9110, 0xBF0FFB4800000000
  %9113 = call float @dx.op.binary.f32(i32 35, float %9104, float %9111)  ; FMax(a,b)
  %9114 = call float @dx.op.binary.f32(i32 36, float %9113, float %9112)  ; FMin(a,b)
  %9115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9116 = extractvalue %dx.types.CBufRet.f32 %9115, 1
  %9117 = extractvalue %dx.types.CBufRet.f32 %9115, 2
  %9118 = extractvalue %dx.types.CBufRet.f32 %9115, 0
  %9119 = select i1 %7621, float %9118, float 0.000000e+00
  %9120 = fmul fast float %9116, %9114
  %9121 = fadd fast float %9119, %9120
  %9122 = fadd fast float %9119, %9117
  %9123 = fsub fast float %9116, %9117
  %9124 = fadd fast float %9123, %9119
  %9125 = call float @dx.op.binary.f32(i32 35, float %9121, float %9122)  ; FMax(a,b)
  %9126 = call float @dx.op.binary.f32(i32 36, float %9125, float %9124)  ; FMin(a,b)
  %9127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9058, float %9059, float %9126, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9128 = extractvalue %dx.types.ResRet.f32 %9127, 0
  %9129 = extractvalue %dx.types.ResRet.f32 %9127, 1
  %9130 = extractvalue %dx.types.ResRet.f32 %9127, 2
  %9131 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9132 = extractvalue %dx.types.CBufRet.i32 %9131, 0
  %9133 = extractvalue %dx.types.CBufRet.i32 %9131, 1
  %9134 = uitofp i32 %9132 to float
  %9135 = uitofp i32 %9133 to float
  %9136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9137 = extractvalue %dx.types.CBufRet.f32 %9136, 0
  %9138 = extractvalue %dx.types.CBufRet.f32 %9136, 1
  %9139 = fmul fast float %9134, %9058
  %9140 = fmul fast float %9135, %9059
  %9141 = fadd fast float %9139, -5.000000e-01
  %9142 = fadd fast float %9140, -5.000000e-01
  %9143 = call float @dx.op.unary.f32(i32 22, float %9141)  ; Frc(value)
  %9144 = call float @dx.op.unary.f32(i32 22, float %9142)  ; Frc(value)
  %9145 = fmul fast float %9143, %9143
  %9146 = fmul fast float %9145, %9143
  %9147 = fsub fast float 3.000000e+00, %9143
  %9148 = fmul fast float %9145, %9147
  %9149 = fmul fast float %9143, 3.000000e+00
  %9150 = fmul fast float %9146, 3.000000e+00
  %9151 = fmul fast float %9145, 6.000000e+00
  %9152 = fsub fast float %9150, %9151
  %9153 = fadd fast float %9152, 4.000000e+00
  %9154 = fmul fast float %9153, 0x3FC5555560000000
  %9155 = fmul fast float %9146, -3.000000e+00
  %9156 = fadd fast float %9145, %9143
  %9157 = fmul fast float %9156, 3.000000e+00
  %9158 = fadd fast float %9155, 1.000000e+00
  %9159 = fadd fast float %9158, %9157
  %9160 = fmul fast float %9146, 0x3FC5555560000000
  %9161 = fmul fast float %9144, %9144
  %9162 = fmul fast float %9161, %9144
  %9163 = fsub fast float 3.000000e+00, %9144
  %9164 = fmul fast float %9161, %9163
  %9165 = fmul fast float %9144, 3.000000e+00
  %9166 = fmul fast float %9162, 3.000000e+00
  %9167 = fmul fast float %9161, 6.000000e+00
  %9168 = fsub fast float %9166, %9167
  %9169 = fadd fast float %9168, 4.000000e+00
  %9170 = fmul fast float %9169, 0x3FC5555560000000
  %9171 = fmul fast float %9162, -3.000000e+00
  %9172 = fadd fast float %9161, %9144
  %9173 = fmul fast float %9172, 3.000000e+00
  %9174 = fadd fast float %9171, 1.000000e+00
  %9175 = fadd fast float %9174, %9173
  %9176 = fmul fast float %9162, 0x3FC5555560000000
  %9177 = fadd fast float %9143, 1.000000e+00
  %9178 = fsub fast float 1.000000e+00, %9149
  %9179 = fadd fast float %9178, %9148
  %9180 = fadd fast float %9179, %9153
  %9181 = fmul fast float %9180, 0x3FC5555560000000
  %9182 = fdiv fast float %9154, %9181
  %9183 = fsub fast float %9177, %9182
  %9184 = fsub fast float 1.000000e+00, %9143
  %9185 = fadd fast float %9159, %9146
  %9186 = fmul fast float %9185, 0x3FC5555560000000
  %9187 = fdiv fast float %9160, %9186
  %9188 = fadd fast float %9184, %9187
  %9189 = fadd fast float %9144, 1.000000e+00
  %9190 = fsub fast float 1.000000e+00, %9165
  %9191 = fadd fast float %9190, %9164
  %9192 = fadd fast float %9191, %9169
  %9193 = fmul fast float %9192, 0x3FC5555560000000
  %9194 = fdiv fast float %9170, %9193
  %9195 = fsub fast float %9189, %9194
  %9196 = fsub fast float 1.000000e+00, %9144
  %9197 = fadd fast float %9175, %9162
  %9198 = fmul fast float %9197, 0x3FC5555560000000
  %9199 = fdiv fast float %9176, %9198
  %9200 = fadd fast float %9199, %9196
  %9201 = fmul fast float %9183, %9137
  %9202 = fsub fast float %9058, %9201
  %9203 = fmul fast float %9188, %9137
  %9204 = fadd fast float %9203, %9058
  %9205 = fmul fast float %9200, %9138
  %9206 = fadd fast float %9205, %9059
  %9207 = fmul fast float %9195, %9138
  %9208 = fsub fast float %9059, %9207
  %9209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9202, float %9208, float %9126, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9210 = extractvalue %dx.types.ResRet.f32 %9209, 0
  %9211 = extractvalue %dx.types.ResRet.f32 %9209, 1
  %9212 = extractvalue %dx.types.ResRet.f32 %9209, 2
  %9213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9204, float %9208, float %9126, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9214 = extractvalue %dx.types.ResRet.f32 %9213, 0
  %9215 = extractvalue %dx.types.ResRet.f32 %9213, 1
  %9216 = extractvalue %dx.types.ResRet.f32 %9213, 2
  %9217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9202, float %9206, float %9126, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9218 = extractvalue %dx.types.ResRet.f32 %9217, 0
  %9219 = extractvalue %dx.types.ResRet.f32 %9217, 1
  %9220 = extractvalue %dx.types.ResRet.f32 %9217, 2
  %9221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9204, float %9206, float %9126, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9222 = extractvalue %dx.types.ResRet.f32 %9221, 0
  %9223 = extractvalue %dx.types.ResRet.f32 %9221, 1
  %9224 = extractvalue %dx.types.ResRet.f32 %9221, 2
  %9225 = fsub fast float %9218, %9210
  %9226 = fsub fast float %9219, %9211
  %9227 = fsub fast float %9220, %9212
  %9228 = fmul fast float %9225, %9198
  %9229 = fmul fast float %9226, %9198
  %9230 = fmul fast float %9227, %9198
  %9231 = fadd fast float %9228, %9210
  %9232 = fadd fast float %9229, %9211
  %9233 = fadd fast float %9230, %9212
  %9234 = fsub fast float %9222, %9214
  %9235 = fsub fast float %9223, %9215
  %9236 = fsub fast float %9224, %9216
  %9237 = fmul fast float %9234, %9198
  %9238 = fmul fast float %9235, %9198
  %9239 = fmul fast float %9236, %9198
  %9240 = fsub fast float %9214, %9231
  %9241 = fadd fast float %9240, %9237
  %9242 = fsub fast float %9215, %9232
  %9243 = fadd fast float %9242, %9238
  %9244 = fsub fast float %9216, %9233
  %9245 = fadd fast float %9244, %9239
  %9246 = fmul fast float %9241, %9186
  %9247 = fmul fast float %9243, %9186
  %9248 = fmul fast float %9245, %9186
  %9249 = fadd fast float %9246, %9231
  %9250 = fadd fast float %9247, %9232
  %9251 = fadd fast float %9248, %9233
  %9252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9253 = extractvalue %dx.types.CBufRet.f32 %9252, 1
  %9254 = fmul fast float %9249, %9253
  %9255 = fmul fast float %9250, %9253
  %9256 = fmul fast float %9251, %9253
  br label %9257

; <label>:9257                                    ; preds = %9088, %9045
  %9258 = phi float [ %9128, %9088 ], [ 1.000000e+00, %9045 ]
  %9259 = phi float [ %9129, %9088 ], [ 1.000000e+00, %9045 ]
  %9260 = phi float [ %9130, %9088 ], [ 1.000000e+00, %9045 ]
  %9261 = phi float [ %9254, %9088 ], [ 0.000000e+00, %9045 ]
  %9262 = phi float [ %9255, %9088 ], [ 0.000000e+00, %9045 ]
  %9263 = phi float [ %9256, %9088 ], [ 0.000000e+00, %9045 ]
  %9264 = fmul fast float %9261, %7599
  %9265 = fmul fast float %9262, %7599
  %9266 = fmul fast float %9263, %7599
  %9267 = fmul fast float %9258, %9052
  %9268 = call float @dx.op.dot3.f32(i32 55, float %9258, float %9259, float %9260, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9269 = call float @dx.op.dot3.f32(i32 55, float %9264, float %9265, float %9266, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9270 = select i1 %262, float %9268, float %9258
  %9271 = select i1 %262, float %9268, float %9259
  %9272 = select i1 %262, float 1.000000e+00, float %9260
  %9273 = select i1 %262, float %9269, float %9264
  %9274 = select i1 %262, float 0.000000e+00, float %9265
  %9275 = select i1 %262, float 0.000000e+00, float %9266
  %9276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9277 = extractvalue %dx.types.CBufRet.i32 %9276, 3
  %9278 = and i32 %9277, 3
  %9279 = icmp ne i32 %9278, 0
  %9280 = and i32 %9277, 4
  %9281 = icmp ne i32 %9280, 0
  %9282 = and i1 %9279, %9281
  %9283 = and i1 %262, %9282
  br i1 %9283, label %9284, label %9290

; <label>:9284                                    ; preds = %9257
  %9285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9286 = extractvalue %dx.types.CBufRet.f32 %9285, 1
  %9287 = fadd fast float %9267, -1.000000e+00
  %9288 = fmul fast float %9286, %9287
  %9289 = fadd fast float %9288, 1.000000e+00
  br label %9290

; <label>:9290                                    ; preds = %9284, %9257
  %9291 = phi float [ %9289, %9284 ], [ %9267, %9257 ]
  %9292 = fadd fast float %9049, %9046
  %9293 = fmul fast float %9270, %9292
  %9294 = fadd fast float %9293, %9273
  %9295 = fadd fast float %9050, %9047
  %9296 = fmul fast float %9271, %9295
  %9297 = fadd fast float %9296, %9274
  %9298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9299 = extractvalue %dx.types.CBufRet.f32 %9298, 0
  br i1 %262, label %9300, label %9315

; <label>:9300                                    ; preds = %9290
  %9301 = fadd fast float %9294, %9297
  %9302 = fmul fast float %9299, %9301
  %9303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9304 = extractvalue %dx.types.CBufRet.f32 %9303, 3
  %9305 = extractvalue %dx.types.CBufRet.f32 %7603, 1
  %9306 = fsub fast float %7608, %7602
  %9307 = fadd fast float %9306, %7609
  %9308 = fsub fast float %9307, %9305
  %9309 = extractvalue %dx.types.CBufRet.f32 %7603, 2
  %9310 = fmul fast float %9308, %9309
  %9311 = call float @dx.op.unary.f32(i32 7, float %9310)  ; Saturate(value)
  %9312 = fsub fast float %9311, %9304
  %9313 = fmul fast float %9312, %9291
  %9314 = fadd fast float %9313, %9304
  br label %9341

; <label>:9315                                    ; preds = %9290
  %9316 = fadd fast float %9051, %9048
  %9317 = fmul fast float %9272, %9316
  %9318 = fadd fast float %9317, %9275
  %9319 = fmul fast float %9299, %9294
  %9320 = fmul fast float %9299, %9297
  %9321 = fmul fast float %9299, %9318
  %9322 = call float @dx.op.binary.f32(i32 35, float %9320, float %9321)  ; FMax(a,b)
  %9323 = call float @dx.op.binary.f32(i32 35, float %9319, float %9322)  ; FMax(a,b)
  %9324 = call float @dx.op.binary.f32(i32 35, float %7599, float %7599)  ; FMax(a,b)
  %9325 = call float @dx.op.binary.f32(i32 35, float %7599, float %9324)  ; FMax(a,b)
  %9326 = call float @dx.op.binary.f32(i32 35, float %9323, float %9325)  ; FMax(a,b)
  %9327 = fcmp fast ugt float %9326, 0x3F10000000000000
  br i1 %9327, label %9329, label %9328

; <label>:9328                                    ; preds = %9315
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9329

; <label>:9329                                    ; preds = %9328, %9315
  %9330 = add i32 %62, 356
  %9331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %9330, i32 undef)  ; BufferLoad(srv,index,wot)
  %9332 = extractvalue %dx.types.ResRet.i32 %9331, 0
  %9333 = and i32 %9332, 32
  %9334 = icmp eq i32 %9333, 0
  br i1 %9334, label %9341, label %9335

; <label>:9335                                    ; preds = %9329
  %9336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9337 = extractvalue %dx.types.CBufRet.f32 %9336, 0
  %9338 = fmul fast float %9337, 0x3FE99999A0000000
  %9339 = fadd fast float %9337, %9319
  %9340 = fadd fast float %9338, %9321
  br label %9341

; <label>:9341                                    ; preds = %9335, %9329, %9300
  %9342 = phi float [ 1.000000e+00, %9300 ], [ %7599, %9335 ], [ %7599, %9329 ]
  %9343 = phi float [ %9302, %9300 ], [ %9339, %9335 ], [ %9319, %9329 ]
  %9344 = phi float [ %9314, %9300 ], [ %9320, %9335 ], [ %9320, %9329 ]
  %9345 = phi float [ 1.000000e+00, %9300 ], [ %9340, %9335 ], [ %9321, %9329 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9346 = call float @dx.op.binary.f32(i32 36, float %9343, float 3.225500e+04)  ; FMin(a,b)
  %9347 = call float @dx.op.binary.f32(i32 36, float %9344, float 3.225500e+04)  ; FMin(a,b)
  %9348 = call float @dx.op.binary.f32(i32 36, float %9345, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9346)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9347)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9348)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9349 = call float @dx.op.binary.f32(i32 36, float %7599, float 3.225500e+04)  ; FMin(a,b)
  %9350 = call float @dx.op.binary.f32(i32 36, float %9342, float 3.225500e+04)  ; FMin(a,b)
  %9351 = call float @dx.op.binary.f32(i32 36, float %9342, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9349)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9350)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9351)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!75}
!dx.entryPoints = !{!76}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !64, !67}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
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
!63 = !{i32 54, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
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
!75 = !{[58 x i32] [i32 56, i32 8, i32 103, i32 103, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0]}
!76 = !{void ()* @ps_main, !"ps_main", !77, !4, !106}
!77 = !{!78, !102, null}
!78 = !{!79, !82, !84, !86, !88, !89, !90, !91, !92, !93, !94, !95, !96, !98, !100, !101}
!79 = !{i32 0, !"SV_Position", i8 9, i8 3, !80, i8 4, i32 1, i8 4, i32 0, i8 0, !81}
!80 = !{i32 0}
!81 = !{i32 3, i32 15}
!82 = !{i32 1, !"COLOR", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 1, i8 0, !83}
!83 = !{i32 3, i32 14}
!84 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 2, i8 0, !85}
!85 = !{i32 3, i32 3}
!86 = !{i32 3, !"NORMAL", i8 9, i8 0, !80, i8 2, i32 1, i8 3, i32 3, i8 0, !87}
!87 = !{i32 3, i32 7}
!88 = !{i32 4, !"TANGENT", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 4, i8 0, !81}
!89 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !80, i8 2, i32 1, i8 3, i32 5, i8 0, !87}
!90 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 6, i8 0, !81}
!91 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !80, i8 2, i32 1, i8 3, i32 7, i8 0, !87}
!92 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 8, i8 0, !81}
!93 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !80, i8 2, i32 1, i8 2, i32 9, i8 0, !85}
!94 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 10, i8 0, !81}
!95 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 11, i8 0, !87}
!96 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !80, i8 1, i32 1, i8 1, i32 12, i8 0, !97}
!97 = !{i32 3, i32 1}
!98 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !80, i8 1, i32 1, i8 2, i32 12, i8 1, !99}
!99 = !{i32 3, i32 2}
!100 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !80, i8 1, i32 1, i8 4, i32 13, i8 0, !97}
!101 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !80, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!102 = !{!103, !104}
!103 = !{i32 0, !"SV_Target", i8 9, i8 16, !80, i8 0, i32 1, i8 4, i32 0, i8 0, !81}
!104 = !{i32 1, !"SV_Target", i8 9, i8 16, !105, i8 0, i32 1, i8 4, i32 1, i8 0, !81}
!105 = !{i32 1}
!106 = !{i32 0, i64 16}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !109}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = !{!116, !116, i64 0}
!116 = !{!"int", !117, i64 0}
!117 = !{!"omnipotent char", !118, i64 0}
!118 = !{!"Simple C/C++ TBAA"}
!119 = !{!120, !122, !124, !126}
!120 = distinct !{!120, !121, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!121 = distinct !{!121, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!122 = distinct !{!122, !123, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!123 = distinct !{!123, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!124 = distinct !{!124, !125, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!125 = distinct !{!125, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!126 = distinct !{!126, !127, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!127 = distinct !{!127, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = !{!130, !130, i64 0}
!130 = !{!"float", !117, i64 0}
!131 = distinct !{!131, !109}
!132 = distinct !{!132, !109}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = !{!145, !147, !149, !150, !152, !153, !154, !156, !157, !158}
!145 = distinct !{!145, !146, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!146 = distinct !{!146, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!147 = distinct !{!147, !148, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!148 = distinct !{!148, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!149 = distinct !{!149, !148, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!150 = distinct !{!150, !151, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!151 = distinct !{!151, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!152 = distinct !{!152, !151, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!153 = distinct !{!153, !151, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!154 = distinct !{!154, !155, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!155 = distinct !{!155, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!156 = distinct !{!156, !155, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!157 = distinct !{!157, !155, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!158 = distinct !{!158, !159, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!159 = distinct !{!159, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!160 = !{!161}
!161 = distinct !{!161, !162, !"\01?sort@@YAXAIAM00@Z: %c"}
!162 = distinct !{!162, !"\01?sort@@YAXAIAM00@Z"}
!163 = !{!164, !165, !145, !147, !149, !150, !152, !153, !154, !156, !157, !158}
!164 = distinct !{!164, !162, !"\01?sort@@YAXAIAM00@Z: %a"}
!165 = distinct !{!165, !162, !"\01?sort@@YAXAIAM00@Z: %b"}
!166 = !{!165}
!167 = !{!164, !161, !145, !147, !149, !150, !152, !153, !154, !156, !157, !158}
!168 = !{!164}
!169 = !{!165, !161, !145, !147, !149, !150, !152, !153, !154, !156, !157, !158}
!170 = !{!171}
!171 = distinct !{!171, !172, !"\01?sort@@YAXAIAM00@Z: %c"}
!172 = distinct !{!172, !"\01?sort@@YAXAIAM00@Z"}
!173 = !{!174, !175, !145, !147, !149, !150, !152, !153, !154, !156, !157, !158}
!174 = distinct !{!174, !172, !"\01?sort@@YAXAIAM00@Z: %a"}
!175 = distinct !{!175, !172, !"\01?sort@@YAXAIAM00@Z: %b"}
!176 = !{!175}
!177 = !{!174, !171, !145, !147, !149, !150, !152, !153, !154, !156, !157, !158}
!178 = !{!174}
!179 = !{!175, !171, !145, !147, !149, !150, !152, !153, !154, !156, !157, !158}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 2}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 1}
!187 = distinct !{!187, !"dx.controlflow.hints", i32 1}
!188 = distinct !{!188, !"dx.controlflow.hints", i32 1}
!189 = distinct !{!189, !"dx.controlflow.hints", i32 1}
!190 = distinct !{!190, !"dx.controlflow.hints", i32 1}

