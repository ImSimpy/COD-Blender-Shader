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
; shader hash: 7236b6bcae804779dfa91db652b00020
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
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
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %206 = fmul fast float %116, 5.000000e-01
  %207 = fmul fast float %117, 5.000000e-01
  %208 = fptosi float %206 to i32
  %209 = fptosi float %207 to i32
  %210 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %208, i32 %209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = lshr i32 %211, 18
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F4C00EBA0000000
  %215 = call float @dx.op.unary.f32(i32 21, float %214)  ; Exp(value)
  %216 = fadd fast float %215, -1.000000e+00
  %217 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %218 = extractvalue %dx.types.Dimensions %217, 0
  %219 = sitofp i32 %218 to float
  %220 = extractvalue %dx.types.Dimensions %217, 1
  %221 = sitofp i32 %220 to float
  %222 = fcmp fast oge float %206, %219
  %223 = fcmp fast oge float %207, %221
  %224 = or i1 %222, %223
  %225 = select i1 %224, float 0x4197782600000000, float %216
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %228 = extractvalue %dx.types.CBufRet.f32 %226, 3
  %229 = fmul fast float %227, %116
  %230 = fmul fast float %228, %117
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = and i32 %232, 114688
  %234 = icmp ne i32 %233, 0
  %235 = select i1 %234, float %229, float 0.000000e+00
  %236 = select i1 %234, float %230, float 0.000000e+00
  %237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %56, float %235, float %236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = fmul fast float %238, 2.550000e+02
  %240 = fptoui float %239 to i32
  %241 = select i1 %234, i32 %240, i32 0
  %242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %55, float %251, float %250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = fsub fast float 1.000000e+00, %253
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 0
  %257 = fcmp fast olt float %254, %256
  br label %261

; <label>:258                                     ; preds = %0
  %259 = icmp eq i32 %246, 0
  %260 = and i1 %245, %259
  br label %261

; <label>:261                                     ; preds = %258, %249
  %262 = phi i1 [ %257, %249 ], [ %260, %258 ]
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 2
  %265 = fmul fast float %264, 0x3FE3C6EF40000000
  %266 = frem fast float %116, 2.560000e+02
  %267 = frem fast float %117, 2.560000e+02
  %268 = fptoui float %266 to i32
  %269 = fptoui float %267 to i32
  %270 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %268, i32 %269, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = fadd fast float %271, %265
  %273 = call float @dx.op.unary.f32(i32 22, float %272)  ; Frc(value)
  %274 = add i32 %61, 156
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = shl i32 %276, 4
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %276, 7
  %281 = and i32 %280, 32752
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %276, 22
  %284 = shl nuw nsw i32 %283, 5
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = add i32 %61, 216
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 255
  %290 = uitofp i32 %289 to float
  %291 = fmul fast float %290, 0x3F70101020000000
  %292 = lshr i32 %288, 8
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = lshr i32 %288, 16
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = add i32 %61, 36
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 65535
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %302, 16
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = add i32 %61, 288
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = fmul fast float %311, 0x3F50624DE0000000
  %315 = fmul fast float %313, 0x3F50624DE0000000
  %316 = mul i32 %62, 100
  %317 = add i32 %316, 28
  %318 = add i32 %316, 40
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = add i32 %61, 172
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = shl i32 %323, 4
  %325 = and i32 %324, 32752
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %323, 7
  %328 = and i32 %327, 32752
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %323, 22
  %331 = shl nuw nsw i32 %330, 5
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = add i32 %61, 232
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = lshr i32 %335, 8
  %340 = and i32 %339, 255
  %341 = uitofp i32 %340 to float
  %342 = fmul fast float %341, 0x3F70101020000000
  %343 = lshr i32 %335, 16
  %344 = and i32 %343, 255
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %345, 0x3F70101020000000
  %347 = add i32 %61, 52
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %349, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = add i32 %61, 304
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %356, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = shl i32 %362, 4
  %364 = and i32 %363, 32752
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %362, 7
  %367 = and i32 %366, 32752
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = lshr i32 %362, 22
  %370 = shl nuw nsw i32 %369, 5
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = and i32 %320, 1
  %373 = icmp ne i32 %372, 0
  %374 = select i1 %373, float %365, float %326
  %375 = select i1 %373, float %368, float %329
  %376 = select i1 %373, float %371, float %332
  %377 = add i32 %316, 44
  %378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.f32 %378, 0
  %380 = fmul fast float %379, %374
  %381 = fmul fast float %379, %375
  %382 = fmul fast float %379, %376
  %383 = add i32 %316, 48
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = shl i32 %385, 4
  %387 = and i32 %386, 32752
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %385, 7
  %390 = and i32 %389, 32752
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = lshr i32 %385, 22
  %393 = shl nuw nsw i32 %392, 5
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = and i32 %320, 8
  %396 = icmp ne i32 %395, 0
  %397 = select i1 %396, float %388, float %338
  %398 = select i1 %396, float %391, float %342
  %399 = select i1 %396, float %394, float %346
  %400 = add i32 %316, 52
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 65535
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = lshr i32 %402, 16
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = and i32 %320, 2
  %408 = icmp ne i32 %407, 0
  %409 = select i1 %408, float %404, float %351
  %410 = select i1 %408, float %406, float %353
  %411 = add i32 %316, 56
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 65535
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = lshr i32 %413, 16
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = and i32 %320, 4
  %419 = icmp ne i32 %418, 0
  %420 = select i1 %419, float %415, float %358
  %421 = fmul float %420, 0x3F50624DE0000000
  %422 = select i1 %419, float %417, float %360
  %423 = fmul float %422, 0x3F50624DE0000000
  %424 = add i32 %316, 60
  %425 = add i32 %316, 32
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = add i32 %61, 188
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = shl i32 %430, 4
  %432 = and i32 %431, 32752
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = lshr i32 %430, 7
  %435 = and i32 %434, 32752
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = lshr i32 %430, 22
  %438 = shl nuw nsw i32 %437, 5
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = add i32 %61, 248
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 255
  %444 = uitofp i32 %443 to float
  %445 = fmul fast float %444, 0x3F70101020000000
  %446 = lshr i32 %442, 8
  %447 = and i32 %446, 255
  %448 = uitofp i32 %447 to float
  %449 = fmul fast float %448, 0x3F70101020000000
  %450 = lshr i32 %442, 16
  %451 = and i32 %450, 255
  %452 = uitofp i32 %451 to float
  %453 = fmul fast float %452, 0x3F70101020000000
  %454 = add i32 %61, 68
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = and i32 %456, 65535
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = lshr i32 %456, 16
  %460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %459)  ; LegacyF16ToF32(value)
  %461 = add i32 %61, 320
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = and i32 %463, 65535
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = lshr i32 %463, 16
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = shl i32 %469, 4
  %471 = and i32 %470, 32752
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = lshr i32 %469, 7
  %474 = and i32 %473, 32752
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = lshr i32 %469, 22
  %477 = shl nuw nsw i32 %476, 5
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = and i32 %427, 1
  %480 = icmp ne i32 %479, 0
  %481 = select i1 %480, float %472, float %433
  %482 = select i1 %480, float %475, float %436
  %483 = select i1 %480, float %478, float %439
  %484 = add i32 %316, 64
  %485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = fmul fast float %486, %481
  %488 = fmul fast float %486, %482
  %489 = fmul fast float %486, %483
  %490 = add i32 %316, 68
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = shl i32 %492, 4
  %494 = and i32 %493, 32752
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = lshr i32 %492, 7
  %497 = and i32 %496, 32752
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = lshr i32 %492, 22
  %500 = shl nuw nsw i32 %499, 5
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = and i32 %427, 8
  %503 = icmp ne i32 %502, 0
  %504 = select i1 %503, float %495, float %445
  %505 = select i1 %503, float %498, float %449
  %506 = select i1 %503, float %501, float %453
  %507 = add i32 %316, 72
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = and i32 %509, 65535
  %511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %510)  ; LegacyF16ToF32(value)
  %512 = lshr i32 %509, 16
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = and i32 %427, 2
  %515 = icmp ne i32 %514, 0
  %516 = select i1 %515, float %511, float %458
  %517 = select i1 %515, float %513, float %460
  %518 = add i32 %316, 76
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = and i32 %520, 65535
  %522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %521)  ; LegacyF16ToF32(value)
  %523 = lshr i32 %520, 16
  %524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %523)  ; LegacyF16ToF32(value)
  %525 = and i32 %427, 4
  %526 = icmp ne i32 %525, 0
  %527 = select i1 %526, float %522, float %465
  %528 = fmul float %527, 0x3F50624DE0000000
  %529 = select i1 %526, float %524, float %467
  %530 = fmul float %529, 0x3F50624DE0000000
  %531 = add i32 %316, 80
  %532 = add i32 %316, 36
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = add i32 %61, 204
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = shl i32 %537, 4
  %539 = and i32 %538, 32752
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = lshr i32 %537, 7
  %542 = and i32 %541, 32752
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = lshr i32 %537, 22
  %545 = shl nuw nsw i32 %544, 5
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = add i32 %61, 264
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = and i32 %549, 255
  %551 = uitofp i32 %550 to float
  %552 = fmul fast float %551, 0x3F70101020000000
  %553 = lshr i32 %549, 8
  %554 = and i32 %553, 255
  %555 = uitofp i32 %554 to float
  %556 = fmul fast float %555, 0x3F70101020000000
  %557 = lshr i32 %549, 16
  %558 = and i32 %557, 255
  %559 = uitofp i32 %558 to float
  %560 = fmul fast float %559, 0x3F70101020000000
  %561 = add i32 %61, 84
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = and i32 %563, 65535
  %565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %564)  ; LegacyF16ToF32(value)
  %566 = lshr i32 %563, 16
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = add i32 %61, 336
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = and i32 %570, 65535
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = lshr i32 %570, 16
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = shl i32 %576, 4
  %578 = and i32 %577, 32752
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = lshr i32 %576, 7
  %581 = and i32 %580, 32752
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = lshr i32 %576, 22
  %584 = shl nuw nsw i32 %583, 5
  %585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %584)  ; LegacyF16ToF32(value)
  %586 = and i32 %534, 1
  %587 = icmp ne i32 %586, 0
  %588 = select i1 %587, float %579, float %540
  %589 = select i1 %587, float %582, float %543
  %590 = select i1 %587, float %585, float %546
  %591 = add i32 %316, 84
  %592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 0
  %594 = fmul fast float %593, %588
  %595 = fmul fast float %593, %589
  %596 = fmul fast float %593, %590
  %597 = add i32 %316, 88
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = shl i32 %599, 4
  %601 = and i32 %600, 32752
  %602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %601)  ; LegacyF16ToF32(value)
  %603 = lshr i32 %599, 7
  %604 = and i32 %603, 32752
  %605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %604)  ; LegacyF16ToF32(value)
  %606 = lshr i32 %599, 22
  %607 = shl nuw nsw i32 %606, 5
  %608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %607)  ; LegacyF16ToF32(value)
  %609 = and i32 %534, 8
  %610 = icmp ne i32 %609, 0
  %611 = select i1 %610, float %602, float %552
  %612 = select i1 %610, float %605, float %556
  %613 = select i1 %610, float %608, float %560
  %614 = add i32 %316, 92
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = and i32 %616, 65535
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = lshr i32 %616, 16
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = and i32 %534, 2
  %622 = icmp ne i32 %621, 0
  %623 = select i1 %622, float %618, float %565
  %624 = select i1 %622, float %620, float %567
  %625 = add i32 %316, 96
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = and i32 %627, 65535
  %629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %628)  ; LegacyF16ToF32(value)
  %630 = lshr i32 %627, 16
  %631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %630)  ; LegacyF16ToF32(value)
  %632 = and i32 %534, 4
  %633 = icmp ne i32 %632, 0
  %634 = select i1 %633, float %629, float %572
  %635 = fmul float %634, 0x3F50624DE0000000
  %636 = select i1 %633, float %631, float %574
  %637 = fmul float %636, 0x3F50624DE0000000
  %638 = add i32 %61, 348
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = and i32 %640, 32
  %642 = icmp eq i32 %641, 0
  %643 = and i32 %640, 64
  %644 = icmp eq i32 %643, 0
  %645 = and i32 %640, 128
  %646 = icmp eq i32 %645, 0
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = and i32 %648, 2
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %666, label %651

; <label>:651                                     ; preds = %261
  %652 = add i32 %61, 472
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = add i32 %654, 0
  %656 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %655, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %657 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %656, %dx.types.Handle %113, float %94, float %95, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %658 = extractvalue %dx.types.ResRet.f32 %657, 0
  %659 = extractvalue %dx.types.ResRet.f32 %657, 1
  %660 = extractvalue %dx.types.ResRet.f32 %657, 2
  %661 = extractvalue %dx.types.ResRet.f32 %657, 3
  %662 = fmul fast float %661, %96
  %663 = fmul fast float %658, %97
  %664 = fmul fast float %659, %98
  %665 = fmul fast float %660, %99
  br label %666

; <label>:666                                     ; preds = %651, %261
  %667 = phi float [ %99, %261 ], [ %665, %651 ]
  %668 = phi float [ %98, %261 ], [ %664, %651 ]
  %669 = phi float [ %97, %261 ], [ %663, %651 ]
  %670 = phi float [ %96, %261 ], [ %662, %651 ]
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = and i32 %672, 2
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %694, label %675

; <label>:675                                     ; preds = %666
  %676 = add i32 %61, 44
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %676, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = and i32 %678, 1
  %680 = icmp ne i32 %679, 0
  %681 = select i1 %680, float %669, float 1.000000e+00
  %682 = add i32 %61, 60
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %682, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = and i32 %684, 1
  %686 = icmp ne i32 %685, 0
  %687 = select i1 %686, float %668, float 1.000000e+00
  %688 = add i32 %61, 76
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = and i32 %690, 1
  %692 = icmp ne i32 %691, 0
  %693 = select i1 %692, float %667, float 1.000000e+00
  br label %694

; <label>:694                                     ; preds = %675, %666
  %695 = phi float [ %667, %666 ], [ %693, %675 ]
  %696 = phi float [ %668, %666 ], [ %687, %675 ]
  %697 = phi float [ %669, %666 ], [ %681, %675 ]
  %698 = lshr i32 %672, 20
  %699 = and i32 %698, 3
  %700 = add nuw nsw i32 %699, 1
  %701 = add i32 %61, 24
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = add i32 %61, 28
  %705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.i32 %705, 0
  %707 = or i32 %706, %703
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %1243, label %709

; <label>:709                                     ; preds = %694
  %710 = and i32 %703, 262144
  %711 = icmp ne i32 %710, 0
  %712 = select i1 %711, float %67, float 1.000000e+00
  %713 = select i1 %711, float %68, float 0.000000e+00
  %714 = select i1 %711, float %69, float 0.000000e+00
  %715 = select i1 %711, float %70, float 1.000000e+00
  %716 = select i1 %711, float %71, float %94
  %717 = select i1 %711, float %72, float %95
  %718 = add i32 %61, 284
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = lshr i32 %720, 16
  %722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %721)  ; LegacyF16ToF32(value)
  %723 = fmul fast float %722, 0x3F50624DE0000000
  %724 = add i32 %61, 88
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = lshr i32 %726, 16
  %728 = and i32 %727, 255
  %729 = lshr i32 %726, 24
  %730 = add i32 %61, 292
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %730, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 65535
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = lshr i32 %732, 16
  %736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %735)  ; LegacyF16ToF32(value)
  %737 = add i32 %61, 32
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = lshr i32 %739, 22
  %741 = shl nuw nsw i32 %740, 5
  %742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %741)  ; LegacyF16ToF32(value)
  %743 = shl i32 %739, 4
  %744 = and i32 %743, 32752
  %745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %744)  ; LegacyF16ToF32(value)
  %746 = lshr i32 %739, 7
  %747 = and i32 %746, 32752
  %748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %747)  ; LegacyF16ToF32(value)
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 3
  %751 = fmul fast float %750, 1.000000e+03
  %752 = fmul fast float %314, %751
  %753 = call float @dx.op.unary.f32(i32 22, float %752)  ; Frc(value)
  %754 = fadd fast float %753, %304
  %755 = fmul fast float %315, %751
  %756 = call float @dx.op.unary.f32(i32 22, float %755)  ; Frc(value)
  %757 = fadd fast float %756, %306
  %758 = fmul fast float %723, %751
  %759 = call float @dx.op.unary.f32(i32 22, float %758)  ; Frc(value)
  %760 = fmul fast float %759, 0x401921FB60000000
  %761 = fadd fast float %760, %742
  %762 = call float @dx.op.unary.f32(i32 13, float %761)  ; Sin(value)
  %763 = call float @dx.op.unary.f32(i32 12, float %761)  ; Cos(value)
  %764 = fsub fast float -0.000000e+00, %762
  %765 = fadd fast float %716, -5.000000e-01
  %766 = fadd fast float %717, -5.000000e-01
  %767 = fmul fast float %734, %765
  %768 = fmul fast float %736, %766
  %769 = fadd fast float %767, 5.000000e-01
  %770 = fadd fast float %768, 5.000000e-01
  %771 = fmul fast float %745, %769
  %772 = fmul fast float %748, %770
  %773 = fmul fast float %763, %771
  %774 = call float @dx.op.tertiary.f32(i32 46, float %764, float %772, float %773)  ; FMad(a,b,c)
  %775 = fmul fast float %762, %771
  %776 = call float @dx.op.tertiary.f32(i32 46, float %763, float %772, float %775)  ; FMad(a,b,c)
  %777 = fadd fast float %754, %774
  %778 = fadd fast float %757, %776
  %779 = icmp ugt i32 %728, 1
  %780 = icmp ugt i32 %726, 33554431
  %781 = or i1 %780, %779
  br i1 %781, label %782, label %807

; <label>:782                                     ; preds = %709
  %783 = add i32 %61, 228
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = lshr i32 %785, 16
  %787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %786)  ; LegacyF16ToF32(value)
  %788 = fmul fast float %750, %787
  %789 = call float @dx.op.unary.f32(i32 22, float %788)  ; Frc(value)
  %790 = mul nuw nsw i32 %728, %729
  %791 = uitofp i32 %790 to float
  %792 = fmul fast float %789, %791
  %793 = call float @dx.op.unary.f32(i32 27, float %792)  ; Round_ni(value)
  %794 = fptoui float %793 to i32
  %795 = urem i32 %794, %728
  %796 = udiv i32 %794, %729
  %797 = call float @dx.op.unary.f32(i32 22, float %777)  ; Frc(value)
  %798 = call float @dx.op.unary.f32(i32 22, float %778)  ; Frc(value)
  %799 = uitofp i32 %795 to float
  %800 = uitofp i32 %796 to float
  %801 = fadd fast float %797, %799
  %802 = fadd fast float %798, %800
  %803 = uitofp i32 %728 to float
  %804 = uitofp i32 %729 to float
  %805 = fdiv fast float %801, %803
  %806 = fdiv fast float %802, %804
  br label %807

; <label>:807                                     ; preds = %782, %709
  %808 = phi float [ %805, %782 ], [ %777, %709 ]
  %809 = phi float [ %806, %782 ], [ %778, %709 ]
  %810 = and i32 %703, 256
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %858, label %812

; <label>:812                                     ; preds = %807
  %813 = add i32 %61, 424
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = add i32 %815, 0
  %817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %816, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %818 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %817, %dx.types.Handle %113, float %808, float %809, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %819 = extractvalue %dx.types.ResRet.f32 %818, 0
  %820 = add i32 %61, 100
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = shl i32 %822, 4
  %824 = and i32 %823, 32752
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = lshr i32 %822, 7
  %827 = and i32 %826, 32752
  %828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %827)  ; LegacyF16ToF32(value)
  %829 = fsub fast float 1.000000e+00, %670
  %830 = call float @dx.op.binary.f32(i32 35, float %829, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %831 = bitcast float %670 to i32
  %832 = sitofp i32 %831 to float
  %833 = fadd fast float %832, 0xC1CFBF8940000000
  %834 = fmul fast float %828, %833
  %835 = fadd fast float %834, 0x41CFBF8940000000
  %836 = fptosi float %835 to i32
  %837 = bitcast i32 %836 to float
  %838 = bitcast float %830 to i32
  %839 = sitofp i32 %838 to float
  %840 = fadd fast float %839, 0xC1CFBF8940000000
  %841 = fmul fast float %840, %828
  %842 = fadd fast float %841, 0x41CFBF8940000000
  %843 = fptosi float %842 to i32
  %844 = bitcast i32 %843 to float
  %845 = fmul fast float %837, %825
  %846 = fmul fast float %844, %825
  %847 = fsub fast float %830, %845
  %848 = fadd fast float %846, %830
  %849 = call float @dx.op.unary.f32(i32 7, float %847)  ; Saturate(value)
  %850 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  %851 = fsub fast float %819, %849
  %852 = fsub fast float %850, %849
  %853 = bitcast float %852 to i32
  %854 = sub nsw i32 2129859010, %853
  %855 = bitcast i32 %854 to float
  %856 = fmul fast float %855, %851
  %857 = call float @dx.op.unary.f32(i32 7, float %856)  ; Saturate(value)
  br label %858

; <label>:858                                     ; preds = %812, %807
  %859 = phi float [ %857, %812 ], [ %670, %807 ]
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = and i32 %861, 128
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %880, label %864

; <label>:864                                     ; preds = %858
  %865 = add i32 %61, 408
  %866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.i32 %866, 0
  %868 = add i32 %867, 0
  %869 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %868, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %870 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %869, %dx.types.Handle %113, float %808, float %809, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %871 = extractvalue %dx.types.ResRet.f32 %870, 0
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = and i32 %873, 524288
  %875 = icmp ne i32 %874, 0
  %876 = fcmp fast ogt float %871, 0x3FE0101020000000
  %877 = select i1 %876, float 1.000000e+00, float 0.000000e+00
  %878 = select i1 %875, float %877, float %871
  %879 = fmul fast float %878, %859
  br label %880

; <label>:880                                     ; preds = %864, %858
  %881 = phi float [ %879, %864 ], [ %859, %858 ]
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = and i32 %883, 16
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %1084, label %886

; <label>:886                                     ; preds = %880
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = add i32 %61, 360
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %889, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = add i32 %891, 0
  %893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %892, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %894 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %893, %dx.types.Handle %112, float %808, float %809, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %895 = extractvalue %dx.types.ResRet.f32 %894, 0
  %896 = extractvalue %dx.types.ResRet.f32 %894, 1
  %897 = extractvalue %dx.types.ResRet.f32 %894, 2
  %898 = extractvalue %dx.types.ResRet.f32 %894, 3
  %899 = and i32 %888, 255
  %900 = uitofp i32 %899 to float
  %901 = lshr i32 %888, 8
  %902 = and i32 %901, 255
  %903 = uitofp i32 %902 to float
  %904 = fmul fast float %898, %900
  %905 = fadd fast float %904, %903
  %906 = fmul fast float %905, 0x3F70101000000000
  %907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.i32 %907, 0
  %909 = and i32 %908, 512
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %919, label %911

; <label>:911                                     ; preds = %886
  %912 = add i32 %61, 440
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = add i32 %914, 0
  %916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %917 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %916, %dx.types.Handle %113, float %808, float %809, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %918 = extractvalue %dx.types.ResRet.f32 %917, 0
  br label %919

; <label>:919                                     ; preds = %911, %886
  %920 = phi float [ %918, %911 ], [ 1.000000e+00, %886 ]
  %921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %922 = extractvalue %dx.types.ResRet.i32 %921, 0
  %923 = and i32 %922, 33554432
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %1031, label %925

; <label>:925                                     ; preds = %919
  %926 = add i32 %61, 224
  %927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %926, i32 undef)  ; BufferLoad(srv,index,wot)
  %928 = extractvalue %dx.types.ResRet.i32 %927, 0
  %929 = and i32 %928, 65535
  %930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %929)  ; LegacyF16ToF32(value)
  %931 = lshr i32 %928, 16
  %932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %931)  ; LegacyF16ToF32(value)
  %933 = add i32 %61, 228
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = and i32 %935, 65535
  %937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %936)  ; LegacyF16ToF32(value)
  %938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.i32 %938, 0
  %940 = lshr i32 %939, 24
  %941 = uitofp i32 %940 to float
  %942 = fmul fast float %941, 0x3F70101020000000
  %943 = and i32 %939, 255
  %944 = uitofp i32 %943 to float
  %945 = fmul fast float %944, 0x3F70101020000000
  %946 = lshr i32 %939, 8
  %947 = and i32 %946, 255
  %948 = uitofp i32 %947 to float
  %949 = fmul fast float %948, 0x3F70101020000000
  %950 = lshr i32 %939, 16
  %951 = and i32 %950, 255
  %952 = uitofp i32 %951 to float
  %953 = fmul fast float %952, 0x3F70101020000000
  %954 = add i32 %61, 220
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = lshr i32 %956, 24
  %958 = uitofp i32 %957 to float
  %959 = fmul fast float %958, 0x3F70101020000000
  %960 = and i32 %956, 255
  %961 = uitofp i32 %960 to float
  %962 = fmul fast float %961, 0x3F70101020000000
  %963 = lshr i32 %956, 8
  %964 = and i32 %963, 255
  %965 = uitofp i32 %964 to float
  %966 = fmul fast float %965, 0x3F70101020000000
  %967 = lshr i32 %956, 16
  %968 = and i32 %967, 255
  %969 = uitofp i32 %968 to float
  %970 = fmul fast float %969, 0x3F70101020000000
  %971 = bitcast float %895 to i32
  %972 = ashr i32 %971, 1
  %973 = sub nsw i32 1597463174, %972
  %974 = bitcast i32 %973 to float
  %975 = fmul fast float %895, 5.000000e-01
  %976 = fmul fast float %974, %974
  %977 = fmul fast float %976, %975
  %978 = fsub fast float 1.500000e+00, %977
  %979 = fmul fast float %974, %895
  %980 = fmul fast float %979, %978
  %981 = bitcast float %896 to i32
  %982 = ashr i32 %981, 1
  %983 = sub nsw i32 1597463174, %982
  %984 = bitcast i32 %983 to float
  %985 = fmul fast float %896, 5.000000e-01
  %986 = fmul fast float %984, %984
  %987 = fmul fast float %986, %985
  %988 = fsub fast float 1.500000e+00, %987
  %989 = fmul fast float %984, %896
  %990 = fmul fast float %989, %988
  %991 = bitcast float %897 to i32
  %992 = ashr i32 %991, 1
  %993 = sub nsw i32 1597463174, %992
  %994 = bitcast i32 %993 to float
  %995 = fmul fast float %897, 5.000000e-01
  %996 = fmul fast float %994, %994
  %997 = fmul fast float %996, %995
  %998 = fsub fast float 1.500000e+00, %997
  %999 = fmul fast float %994, %897
  %1000 = fmul fast float %999, %998
  %1001 = fsub fast float %980, %962
  %1002 = fsub fast float %990, %966
  %1003 = fsub fast float %1000, %970
  %1004 = fmul fast float %1001, %930
  %1005 = fmul fast float %1002, %932
  %1006 = fmul fast float %1003, %937
  %1007 = fadd fast float %1004, %945
  %1008 = fadd fast float %1005, %949
  %1009 = fadd fast float %1006, %953
  %1010 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1011 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  %1012 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  %1013 = fmul fast float %1010, %1010
  %1014 = fmul fast float %1011, %1011
  %1015 = fmul fast float %1012, %1012
  %1016 = fsub fast float %1013, %895
  %1017 = fsub fast float %1014, %896
  %1018 = fsub fast float %1015, %897
  %1019 = fmul fast float %1016, %920
  %1020 = fmul fast float %1017, %920
  %1021 = fmul fast float %1018, %920
  %1022 = fadd fast float %1019, %895
  %1023 = fadd fast float %1020, %896
  %1024 = fadd fast float %1021, %897
  %1025 = fadd fast float %942, %906
  %1026 = fsub fast float %1025, %959
  %1027 = call float @dx.op.unary.f32(i32 7, float %1026)  ; Saturate(value)
  %1028 = fsub fast float %1027, %906
  %1029 = fmul fast float %1028, %920
  %1030 = fadd fast float %1029, %906
  br label %1084

; <label>:1031                                    ; preds = %919
  %1032 = and i32 %922, 134217728
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1068, label %1034

; <label>:1034                                    ; preds = %1031
  %1035 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %1036 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %1037 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %1038 = fadd fast float %1035, -5.000000e-01
  %1039 = fadd fast float %1036, -5.000000e-01
  %1040 = fadd fast float %1037, -5.000000e-01
  %1041 = fmul fast float %1038, %920
  %1042 = fmul fast float %1039, %920
  %1043 = fmul fast float %1040, %920
  %1044 = fadd fast float %1041, 5.000000e-01
  %1045 = fadd fast float %1042, 5.000000e-01
  %1046 = fadd fast float %1043, 5.000000e-01
  %1047 = call float @dx.op.unary.f32(i32 24, float %895)  ; Sqrt(value)
  %1048 = call float @dx.op.unary.f32(i32 24, float %896)  ; Sqrt(value)
  %1049 = call float @dx.op.unary.f32(i32 24, float %897)  ; Sqrt(value)
  %1050 = fmul fast float %1044, 2.000000e+00
  %1051 = fsub fast float 1.000000e+00, %1050
  %1052 = fmul fast float %1051, %1047
  %1053 = fadd fast float %1052, %1050
  %1054 = fmul fast float %1053, %1047
  %1055 = fmul fast float %1045, 2.000000e+00
  %1056 = fsub fast float 1.000000e+00, %1055
  %1057 = fmul fast float %1056, %1048
  %1058 = fadd fast float %1057, %1055
  %1059 = fmul fast float %1058, %1048
  %1060 = fmul fast float %1046, 2.000000e+00
  %1061 = fsub fast float 1.000000e+00, %1060
  %1062 = fmul fast float %1061, %1049
  %1063 = fadd fast float %1062, %1060
  %1064 = fmul fast float %1063, %1049
  %1065 = fmul fast float %1054, %1054
  %1066 = fmul fast float %1059, %1059
  %1067 = fmul fast float %1064, %1064
  br label %1084

; <label>:1068                                    ; preds = %1031
  %1069 = fmul fast float %291, %291
  %1070 = fmul fast float %295, %295
  %1071 = fmul fast float %299, %299
  %1072 = fadd fast float %1069, -1.000000e+00
  %1073 = fadd fast float %1070, -1.000000e+00
  %1074 = fadd fast float %1071, -1.000000e+00
  %1075 = fmul fast float %920, %1072
  %1076 = fmul fast float %920, %1073
  %1077 = fmul fast float %920, %1074
  %1078 = fadd fast float %1075, 1.000000e+00
  %1079 = fadd fast float %1076, 1.000000e+00
  %1080 = fadd fast float %1077, 1.000000e+00
  %1081 = fmul fast float %1078, %895
  %1082 = fmul fast float %1079, %896
  %1083 = fmul fast float %1080, %897
  br label %1084

; <label>:1084                                    ; preds = %1068, %1034, %925, %880
  %1085 = phi float [ %1030, %925 ], [ %906, %1034 ], [ %906, %1068 ], [ 0x3FA23C0BE0000000, %880 ]
  %1086 = phi float [ %1022, %925 ], [ %1065, %1034 ], [ %1081, %1068 ], [ 1.000000e+00, %880 ]
  %1087 = phi float [ %1023, %925 ], [ %1066, %1034 ], [ %1082, %1068 ], [ 1.000000e+00, %880 ]
  %1088 = phi float [ %1024, %925 ], [ %1067, %1034 ], [ %1083, %1068 ], [ 1.000000e+00, %880 ]
  %1089 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.i32 %1089, 1
  %1091 = and i32 %1090, 1
  %1092 = icmp ne i32 %1091, 0
  %1093 = add i32 %61, 356
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = and i32 %1095, 32
  %1097 = icmp ne i32 %1096, 0
  %1098 = and i1 %1092, %1097
  %1099 = select i1 %1098, float 1.000000e+00, float %1086
  %1100 = select i1 %1098, float 0x3FD3333340000000, float %1087
  %1101 = select i1 %1098, float 0x3FD3333340000000, float %1088
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = and i32 %1103, 32
  %1105 = icmp eq i32 %1104, 0
  br i1 %1105, label %1178, label %1106

; <label>:1106                                    ; preds = %1084
  %1107 = add i32 %61, 92
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = add i32 %61, 376
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = add i32 %1112, 0
  %1114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1113, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1115 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1114, %dx.types.Handle %112, float %808, float %809, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.ResRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.ResRet.f32 %1115, 2
  %1119 = extractvalue %dx.types.ResRet.f32 %1115, 3
  %1120 = and i32 %1109, 255
  %1121 = uitofp i32 %1120 to float
  %1122 = lshr i32 %1109, 8
  %1123 = and i32 %1122, 255
  %1124 = uitofp i32 %1123 to float
  %1125 = lshr i32 %1109, 16
  %1126 = and i32 %1125, 255
  %1127 = uitofp i32 %1126 to float
  %1128 = fmul fast float %1127, 0x3F70101000000000
  %1129 = fmul fast float %1116, %1121
  %1130 = fadd fast float %1129, %1124
  %1131 = fmul fast float %1130, 0x3F70101000000000
  %1132 = fadd fast float %1117, -5.000000e-01
  %1133 = fadd fast float %1119, -5.000000e-01
  %1134 = fmul fast float %1132, %1128
  %1135 = fmul fast float %1133, %1128
  %1136 = fadd fast float %1134, 5.000000e-01
  %1137 = fadd fast float %1135, 5.000000e-01
  %1138 = fmul fast float %1136, 2.000000e+00
  %1139 = fadd fast float %1138, -1.000000e+00
  %1140 = fmul fast float %1137, 2.000000e+00
  %1141 = fadd fast float %1140, -1.000000e+00
  %1142 = fadd fast float %1139, %1141
  %1143 = fmul fast float %1142, 5.000000e-01
  %1144 = fsub fast float %1139, %1141
  %1145 = fmul fast float %1144, 5.000000e-01
  %1146 = call float @dx.op.unary.f32(i32 6, float %1143)  ; FAbs(value)
  %1147 = fsub fast float 1.000000e+00, %1146
  %1148 = call float @dx.op.unary.f32(i32 6, float %1145)  ; FAbs(value)
  %1149 = fsub fast float %1147, %1148
  %1150 = call float @dx.op.dot3.f32(i32 55, float %1143, float %1145, float %1149, float %1143, float %1145, float %1149)  ; Dot3(ax,ay,az,bx,by,bz)
  %1151 = call float @dx.op.unary.f32(i32 25, float %1150)  ; Rsqrt(value)
  %1152 = fmul fast float %1143, %1151
  %1153 = fmul fast float %1145, %1151
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = and i32 %1155, 67108864
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1174, label %1158

; <label>:1158                                    ; preds = %1106
  %1159 = add i32 %61, 280
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = and i32 %1161, 65535
  %1163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1162)  ; LegacyF16ToF32(value)
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = and i32 %1165, 65535
  %1167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1166)  ; LegacyF16ToF32(value)
  %1168 = lshr i32 %1161, 16
  %1169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1168)  ; LegacyF16ToF32(value)
  %1170 = fsub fast float %1131, %1169
  %1171 = fmul fast float %1170, %1163
  %1172 = fadd fast float %1171, %1167
  %1173 = call float @dx.op.unary.f32(i32 7, float %1172)  ; Saturate(value)
  br label %1174

; <label>:1174                                    ; preds = %1158, %1106
  %1175 = phi float [ %1173, %1158 ], [ %1131, %1106 ]
  %1176 = call float @dx.op.dot2.f32(i32 54, float %1152, float %1153, float %712, float %713)  ; Dot2(ax,ay,bx,by)
  %1177 = call float @dx.op.dot2.f32(i32 54, float %1152, float %1153, float %714, float %715)  ; Dot2(ax,ay,bx,by)
  br label %1178

; <label>:1178                                    ; preds = %1174, %1084
  %1179 = phi float [ %1175, %1174 ], [ 0x3FD6666660000000, %1084 ]
  %1180 = phi float [ %1176, %1174 ], [ 0.000000e+00, %1084 ]
  %1181 = phi float [ %1177, %1174 ], [ 0.000000e+00, %1084 ]
  %1182 = phi float [ %1118, %1174 ], [ 1.000000e+00, %1084 ]
  %1183 = add i32 %61, 160
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = lshr i32 %1185, 22
  %1187 = shl nuw nsw i32 %1186, 5
  %1188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1187)  ; LegacyF16ToF32(value)
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = and i32 %1190, 64
  %1192 = icmp eq i32 %1191, 0
  br i1 %1192, label %1226, label %1193

; <label>:1193                                    ; preds = %1178
  %1194 = add i32 %61, 392
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = add i32 %1196, 0
  %1198 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1197, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = and i32 %1200, 131072
  %1202 = icmp eq i32 %1201, 0
  %1203 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1198, %dx.types.Handle %112, float %808, float %809, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = extractvalue %dx.types.ResRet.f32 %1203, 1
  %1206 = extractvalue %dx.types.ResRet.f32 %1203, 2
  %1207 = fmul fast float %1204, %279
  %1208 = fmul fast float %1205, %282
  %1209 = fmul fast float %1206, %285
  br i1 %1202, label %1216, label %1210

; <label>:1210                                    ; preds = %1193
  %1211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.f32 %1211, 0
  %1213 = fmul fast float %1212, %1207
  %1214 = fmul fast float %1212, %1208
  %1215 = fmul fast float %1212, %1209
  br label %1216

; <label>:1216                                    ; preds = %1210, %1193
  %1217 = phi float [ %1213, %1210 ], [ %1207, %1193 ]
  %1218 = phi float [ %1214, %1210 ], [ %1208, %1193 ]
  %1219 = phi float [ %1215, %1210 ], [ %1209, %1193 ]
  %1220 = fmul fast float %1217, %1188
  %1221 = select i1 %262, float %1220, float %1217
  %1222 = call float @dx.op.dot3.f32(i32 55, float %1221, float %1218, float %1219, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1223 = select i1 %262, float 0.000000e+00, float %1217
  %1224 = select i1 %262, float %1222, float %1218
  %1225 = select i1 %262, float 0.000000e+00, float %1219
  br label %1226

; <label>:1226                                    ; preds = %1216, %1178
  %1227 = phi float [ %1223, %1216 ], [ 0.000000e+00, %1178 ]
  %1228 = phi float [ %1224, %1216 ], [ 0.000000e+00, %1178 ]
  %1229 = phi float [ %1225, %1216 ], [ 0.000000e+00, %1178 ]
  %1230 = add i32 %61, 96
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = and i32 %1232, 255
  %1234 = uitofp i32 %1233 to float
  %1235 = lshr i32 %1232, 8
  %1236 = and i32 %1235, 255
  %1237 = uitofp i32 %1236 to float
  %1238 = call float @dx.op.dot3.f32(i32 55, float %1099, float %1100, float %1101, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1239 = fmul fast float %1237, %1238
  %1240 = fadd fast float %1239, %1234
  %1241 = fmul fast float %1240, 0x3F70101020000000
  %1242 = call float @dx.op.unary.f32(i32 7, float %1241)  ; Saturate(value)
  br label %1243

; <label>:1243                                    ; preds = %1226, %694
  %1244 = phi float [ 0.000000e+00, %694 ], [ %1180, %1226 ]
  %1245 = phi float [ 0.000000e+00, %694 ], [ %1181, %1226 ]
  %1246 = phi float [ 0.000000e+00, %694 ], [ %1227, %1226 ]
  %1247 = phi float [ 0.000000e+00, %694 ], [ %1228, %1226 ]
  %1248 = phi float [ 0.000000e+00, %694 ], [ %1229, %1226 ]
  %1249 = phi float [ 0.000000e+00, %694 ], [ %1099, %1226 ]
  %1250 = phi float [ 0.000000e+00, %694 ], [ %1100, %1226 ]
  %1251 = phi float [ 0.000000e+00, %694 ], [ %1101, %1226 ]
  %1252 = phi float [ 0.000000e+00, %694 ], [ %1085, %1226 ]
  %1253 = phi float [ 0.000000e+00, %694 ], [ %881, %1226 ]
  %1254 = phi float [ 0.000000e+00, %694 ], [ %1179, %1226 ]
  %1255 = phi float [ 0.000000e+00, %694 ], [ %1182, %1226 ]
  %1256 = phi float [ 0.000000e+00, %694 ], [ %1242, %1226 ]
  br i1 %642, label %1983, label %1257

; <label>:1257                                    ; preds = %1243
  %1258 = icmp ult i32 %700, 2
  %1259 = add i32 %61, 40
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = add i32 %61, 44
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = or i32 %1264, %1261
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1983, label %1267

; <label>:1267                                    ; preds = %1257
  %1268 = and i32 %1261, 262144
  %1269 = icmp ne i32 %1268, 0
  %1270 = select i1 %1269, float %67, float 1.000000e+00
  %1271 = select i1 %1269, float %68, float 0.000000e+00
  %1272 = select i1 %1269, float %69, float 0.000000e+00
  %1273 = select i1 %1269, float %70, float 1.000000e+00
  %1274 = select i1 %1269, float %71, float %94
  %1275 = select i1 %1269, float %72, float %95
  %1276 = add i32 %61, 300
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = lshr i32 %1278, 16
  %1280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1279)  ; LegacyF16ToF32(value)
  %1281 = fmul fast float %1280, 0x3F50624DE0000000
  %1282 = add i32 %61, 104
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = lshr i32 %1284, 16
  %1286 = and i32 %1285, 255
  %1287 = lshr i32 %1284, 24
  %1288 = add i32 %61, 308
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = and i32 %1290, 65535
  %1292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1291)  ; LegacyF16ToF32(value)
  %1293 = lshr i32 %1290, 16
  %1294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1293)  ; LegacyF16ToF32(value)
  %1295 = add i32 %61, 48
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = lshr i32 %1297, 22
  %1299 = shl nuw nsw i32 %1298, 5
  %1300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1299)  ; LegacyF16ToF32(value)
  %1301 = shl i32 %1297, 4
  %1302 = and i32 %1301, 32752
  %1303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1302)  ; LegacyF16ToF32(value)
  %1304 = lshr i32 %1297, 7
  %1305 = and i32 %1304, 32752
  %1306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1305)  ; LegacyF16ToF32(value)
  %1307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1308 = extractvalue %dx.types.CBufRet.f32 %1307, 3
  %1309 = fmul fast float %1308, 1.000000e+03
  %1310 = fmul fast float %1309, %421
  %1311 = call float @dx.op.unary.f32(i32 22, float %1310)  ; Frc(value)
  %1312 = fadd fast float %1311, %409
  %1313 = fmul fast float %1309, %423
  %1314 = call float @dx.op.unary.f32(i32 22, float %1313)  ; Frc(value)
  %1315 = fadd fast float %1314, %410
  %1316 = fmul fast float %1281, %1309
  %1317 = call float @dx.op.unary.f32(i32 22, float %1316)  ; Frc(value)
  %1318 = fmul fast float %1317, 0x401921FB60000000
  %1319 = fadd fast float %1318, %1300
  %1320 = call float @dx.op.unary.f32(i32 13, float %1319)  ; Sin(value)
  %1321 = call float @dx.op.unary.f32(i32 12, float %1319)  ; Cos(value)
  %1322 = fsub fast float -0.000000e+00, %1320
  %1323 = fadd fast float %1274, -5.000000e-01
  %1324 = fadd fast float %1275, -5.000000e-01
  %1325 = fmul fast float %1292, %1323
  %1326 = fmul fast float %1294, %1324
  %1327 = fadd fast float %1325, 5.000000e-01
  %1328 = fadd fast float %1326, 5.000000e-01
  %1329 = fmul fast float %1303, %1327
  %1330 = fmul fast float %1306, %1328
  %1331 = fmul fast float %1321, %1329
  %1332 = call float @dx.op.tertiary.f32(i32 46, float %1322, float %1330, float %1331)  ; FMad(a,b,c)
  %1333 = fmul fast float %1320, %1329
  %1334 = call float @dx.op.tertiary.f32(i32 46, float %1321, float %1330, float %1333)  ; FMad(a,b,c)
  %1335 = fadd fast float %1312, %1332
  %1336 = fadd fast float %1315, %1334
  %1337 = icmp ugt i32 %1286, 1
  %1338 = icmp ugt i32 %1284, 33554431
  %1339 = or i1 %1338, %1337
  br i1 %1339, label %1340, label %1365

; <label>:1340                                    ; preds = %1267
  %1341 = add i32 %61, 244
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = lshr i32 %1343, 16
  %1345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1344)  ; LegacyF16ToF32(value)
  %1346 = fmul fast float %1308, %1345
  %1347 = call float @dx.op.unary.f32(i32 22, float %1346)  ; Frc(value)
  %1348 = mul nuw nsw i32 %1286, %1287
  %1349 = uitofp i32 %1348 to float
  %1350 = fmul fast float %1347, %1349
  %1351 = call float @dx.op.unary.f32(i32 27, float %1350)  ; Round_ni(value)
  %1352 = fptoui float %1351 to i32
  %1353 = urem i32 %1352, %1286
  %1354 = udiv i32 %1352, %1287
  %1355 = call float @dx.op.unary.f32(i32 22, float %1335)  ; Frc(value)
  %1356 = call float @dx.op.unary.f32(i32 22, float %1336)  ; Frc(value)
  %1357 = uitofp i32 %1353 to float
  %1358 = uitofp i32 %1354 to float
  %1359 = fadd fast float %1355, %1357
  %1360 = fadd fast float %1356, %1358
  %1361 = uitofp i32 %1286 to float
  %1362 = uitofp i32 %1287 to float
  %1363 = fdiv fast float %1359, %1361
  %1364 = fdiv fast float %1360, %1362
  br label %1365

; <label>:1365                                    ; preds = %1340, %1267
  %1366 = phi float [ %1363, %1340 ], [ %1335, %1267 ]
  %1367 = phi float [ %1364, %1340 ], [ %1336, %1267 ]
  %1368 = and i32 %1261, 256
  %1369 = icmp eq i32 %1368, 0
  br i1 %1369, label %1416, label %1370

; <label>:1370                                    ; preds = %1365
  %1371 = add i32 %61, 428
  %1372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1371, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.i32 %1372, 0
  %1374 = add i32 %1373, 0
  %1375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1374, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1376 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1375, %dx.types.Handle %113, float %1366, float %1367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  %1378 = add i32 %61, 116
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = shl i32 %1380, 4
  %1382 = and i32 %1381, 32752
  %1383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1382)  ; LegacyF16ToF32(value)
  %1384 = lshr i32 %1380, 7
  %1385 = and i32 %1384, 32752
  %1386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1385)  ; LegacyF16ToF32(value)
  %1387 = fsub fast float 1.000000e+00, %697
  %1388 = call float @dx.op.binary.f32(i32 35, float %1387, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1389 = bitcast float %697 to i32
  %1390 = sitofp i32 %1389 to float
  %1391 = fadd fast float %1390, 0xC1CFBF8940000000
  %1392 = fmul fast float %1386, %1391
  %1393 = fadd fast float %1392, 0x41CFBF8940000000
  %1394 = fptosi float %1393 to i32
  %1395 = bitcast i32 %1394 to float
  %1396 = bitcast float %1388 to i32
  %1397 = sitofp i32 %1396 to float
  %1398 = fadd fast float %1397, 0xC1CFBF8940000000
  %1399 = fmul fast float %1398, %1386
  %1400 = fadd fast float %1399, 0x41CFBF8940000000
  %1401 = fptosi float %1400 to i32
  %1402 = bitcast i32 %1401 to float
  %1403 = fmul fast float %1395, %1383
  %1404 = fmul fast float %1402, %1383
  %1405 = fsub fast float %1388, %1403
  %1406 = fadd fast float %1404, %1388
  %1407 = call float @dx.op.unary.f32(i32 7, float %1405)  ; Saturate(value)
  %1408 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1409 = fsub fast float %1377, %1407
  %1410 = fsub fast float %1408, %1407
  %1411 = bitcast float %1410 to i32
  %1412 = sub nsw i32 2129859010, %1411
  %1413 = bitcast i32 %1412 to float
  %1414 = fmul fast float %1413, %1409
  %1415 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  br label %1416

; <label>:1416                                    ; preds = %1370, %1365
  %1417 = phi float [ %1415, %1370 ], [ %697, %1365 ]
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = and i32 %1419, 128
  %1421 = icmp eq i32 %1420, 0
  br i1 %1421, label %1438, label %1422

; <label>:1422                                    ; preds = %1416
  %1423 = add i32 %61, 412
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = add i32 %1425, 0
  %1427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1426, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1428 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1427, %dx.types.Handle %113, float %1366, float %1367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1429 = extractvalue %dx.types.ResRet.f32 %1428, 0
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = and i32 %1431, 524288
  %1433 = icmp ne i32 %1432, 0
  %1434 = fcmp fast ogt float %1429, 0x3FE0101020000000
  %1435 = select i1 %1434, float 1.000000e+00, float 0.000000e+00
  %1436 = select i1 %1433, float %1435, float %1429
  %1437 = fmul fast float %1436, %1417
  br label %1438

; <label>:1438                                    ; preds = %1422, %1416
  %1439 = phi float [ %1437, %1422 ], [ %1417, %1416 ]
  %1440 = fcmp fast ult float %1439, 0x3F70101020000000
  br i1 %1440, label %1983, label %1441

; <label>:1441                                    ; preds = %1438
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = and i32 %1443, 16
  %1445 = icmp eq i32 %1444, 0
  br i1 %1445, label %1644, label %1446

; <label>:1446                                    ; preds = %1441
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = add i32 %61, 364
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = add i32 %1451, 0
  %1453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1452, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1454 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1453, %dx.types.Handle %112, float %1366, float %1367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1455 = extractvalue %dx.types.ResRet.f32 %1454, 0
  %1456 = extractvalue %dx.types.ResRet.f32 %1454, 1
  %1457 = extractvalue %dx.types.ResRet.f32 %1454, 2
  %1458 = extractvalue %dx.types.ResRet.f32 %1454, 3
  %1459 = and i32 %1448, 255
  %1460 = uitofp i32 %1459 to float
  %1461 = lshr i32 %1448, 8
  %1462 = and i32 %1461, 255
  %1463 = uitofp i32 %1462 to float
  %1464 = fmul fast float %1458, %1460
  %1465 = fadd fast float %1464, %1463
  %1466 = fmul fast float %1465, 0x3F70101000000000
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = and i32 %1468, 512
  %1470 = icmp eq i32 %1469, 0
  br i1 %1470, label %1479, label %1471

; <label>:1471                                    ; preds = %1446
  %1472 = add i32 %61, 444
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1472, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = add i32 %1474, 0
  %1476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1477 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1476, %dx.types.Handle %113, float %1366, float %1367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1478 = extractvalue %dx.types.ResRet.f32 %1477, 0
  br label %1479

; <label>:1479                                    ; preds = %1471, %1446
  %1480 = phi float [ %1478, %1471 ], [ 1.000000e+00, %1446 ]
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = and i32 %1482, 33554432
  %1484 = icmp eq i32 %1483, 0
  br i1 %1484, label %1591, label %1485

; <label>:1485                                    ; preds = %1479
  %1486 = add i32 %61, 240
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, 65535
  %1490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1489)  ; LegacyF16ToF32(value)
  %1491 = lshr i32 %1488, 16
  %1492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1491)  ; LegacyF16ToF32(value)
  %1493 = add i32 %61, 244
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = and i32 %1495, 65535
  %1497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1496)  ; LegacyF16ToF32(value)
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = lshr i32 %1499, 24
  %1501 = uitofp i32 %1500 to float
  %1502 = fmul fast float %1501, 0x3F70101020000000
  %1503 = and i32 %1499, 255
  %1504 = uitofp i32 %1503 to float
  %1505 = fmul fast float %1504, 0x3F70101020000000
  %1506 = lshr i32 %1499, 8
  %1507 = and i32 %1506, 255
  %1508 = uitofp i32 %1507 to float
  %1509 = fmul fast float %1508, 0x3F70101020000000
  %1510 = lshr i32 %1499, 16
  %1511 = and i32 %1510, 255
  %1512 = uitofp i32 %1511 to float
  %1513 = fmul fast float %1512, 0x3F70101020000000
  %1514 = add i32 %61, 236
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1514, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = lshr i32 %1516, 24
  %1518 = uitofp i32 %1517 to float
  %1519 = fmul fast float %1518, 0x3F70101020000000
  %1520 = and i32 %1516, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = fmul fast float %1521, 0x3F70101020000000
  %1523 = lshr i32 %1516, 8
  %1524 = and i32 %1523, 255
  %1525 = uitofp i32 %1524 to float
  %1526 = fmul fast float %1525, 0x3F70101020000000
  %1527 = lshr i32 %1516, 16
  %1528 = and i32 %1527, 255
  %1529 = uitofp i32 %1528 to float
  %1530 = fmul fast float %1529, 0x3F70101020000000
  %1531 = bitcast float %1455 to i32
  %1532 = ashr i32 %1531, 1
  %1533 = sub nsw i32 1597463174, %1532
  %1534 = bitcast i32 %1533 to float
  %1535 = fmul fast float %1455, 5.000000e-01
  %1536 = fmul fast float %1534, %1534
  %1537 = fmul fast float %1536, %1535
  %1538 = fsub fast float 1.500000e+00, %1537
  %1539 = fmul fast float %1534, %1455
  %1540 = fmul fast float %1539, %1538
  %1541 = bitcast float %1456 to i32
  %1542 = ashr i32 %1541, 1
  %1543 = sub nsw i32 1597463174, %1542
  %1544 = bitcast i32 %1543 to float
  %1545 = fmul fast float %1456, 5.000000e-01
  %1546 = fmul fast float %1544, %1544
  %1547 = fmul fast float %1546, %1545
  %1548 = fsub fast float 1.500000e+00, %1547
  %1549 = fmul fast float %1544, %1456
  %1550 = fmul fast float %1549, %1548
  %1551 = bitcast float %1457 to i32
  %1552 = ashr i32 %1551, 1
  %1553 = sub nsw i32 1597463174, %1552
  %1554 = bitcast i32 %1553 to float
  %1555 = fmul fast float %1457, 5.000000e-01
  %1556 = fmul fast float %1554, %1554
  %1557 = fmul fast float %1556, %1555
  %1558 = fsub fast float 1.500000e+00, %1557
  %1559 = fmul fast float %1554, %1457
  %1560 = fmul fast float %1559, %1558
  %1561 = fsub fast float %1540, %1522
  %1562 = fsub fast float %1550, %1526
  %1563 = fsub fast float %1560, %1530
  %1564 = fmul fast float %1561, %1490
  %1565 = fmul fast float %1562, %1492
  %1566 = fmul fast float %1563, %1497
  %1567 = fadd fast float %1564, %1505
  %1568 = fadd fast float %1565, %1509
  %1569 = fadd fast float %1566, %1513
  %1570 = call float @dx.op.unary.f32(i32 7, float %1567)  ; Saturate(value)
  %1571 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  %1572 = call float @dx.op.unary.f32(i32 7, float %1569)  ; Saturate(value)
  %1573 = fmul fast float %1570, %1570
  %1574 = fmul fast float %1571, %1571
  %1575 = fmul fast float %1572, %1572
  %1576 = fsub fast float %1573, %1455
  %1577 = fsub fast float %1574, %1456
  %1578 = fsub fast float %1575, %1457
  %1579 = fmul fast float %1576, %1480
  %1580 = fmul fast float %1577, %1480
  %1581 = fmul fast float %1578, %1480
  %1582 = fadd fast float %1579, %1455
  %1583 = fadd fast float %1580, %1456
  %1584 = fadd fast float %1581, %1457
  %1585 = fadd fast float %1502, %1466
  %1586 = fsub fast float %1585, %1519
  %1587 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  %1588 = fsub fast float %1587, %1466
  %1589 = fmul fast float %1588, %1480
  %1590 = fadd fast float %1589, %1466
  br label %1644

; <label>:1591                                    ; preds = %1479
  %1592 = and i32 %1482, 134217728
  %1593 = icmp eq i32 %1592, 0
  br i1 %1593, label %1628, label %1594

; <label>:1594                                    ; preds = %1591
  %1595 = call float @dx.op.unary.f32(i32 24, float %397)  ; Sqrt(value)
  %1596 = call float @dx.op.unary.f32(i32 24, float %398)  ; Sqrt(value)
  %1597 = call float @dx.op.unary.f32(i32 24, float %399)  ; Sqrt(value)
  %1598 = fadd fast float %1595, -5.000000e-01
  %1599 = fadd fast float %1596, -5.000000e-01
  %1600 = fadd fast float %1597, -5.000000e-01
  %1601 = fmul fast float %1598, %1480
  %1602 = fmul fast float %1599, %1480
  %1603 = fmul fast float %1600, %1480
  %1604 = fadd fast float %1601, 5.000000e-01
  %1605 = fadd fast float %1602, 5.000000e-01
  %1606 = fadd fast float %1603, 5.000000e-01
  %1607 = call float @dx.op.unary.f32(i32 24, float %1455)  ; Sqrt(value)
  %1608 = call float @dx.op.unary.f32(i32 24, float %1456)  ; Sqrt(value)
  %1609 = call float @dx.op.unary.f32(i32 24, float %1457)  ; Sqrt(value)
  %1610 = fmul fast float %1604, 2.000000e+00
  %1611 = fsub fast float 1.000000e+00, %1610
  %1612 = fmul fast float %1611, %1607
  %1613 = fadd fast float %1612, %1610
  %1614 = fmul fast float %1613, %1607
  %1615 = fmul fast float %1605, 2.000000e+00
  %1616 = fsub fast float 1.000000e+00, %1615
  %1617 = fmul fast float %1616, %1608
  %1618 = fadd fast float %1617, %1615
  %1619 = fmul fast float %1618, %1608
  %1620 = fmul fast float %1606, 2.000000e+00
  %1621 = fsub fast float 1.000000e+00, %1620
  %1622 = fmul fast float %1621, %1609
  %1623 = fadd fast float %1622, %1620
  %1624 = fmul fast float %1623, %1609
  %1625 = fmul fast float %1614, %1614
  %1626 = fmul fast float %1619, %1619
  %1627 = fmul fast float %1624, %1624
  br label %1644

; <label>:1628                                    ; preds = %1591
  %1629 = fmul fast float %397, %397
  %1630 = fmul fast float %398, %398
  %1631 = fmul fast float %399, %399
  %1632 = fadd fast float %1629, -1.000000e+00
  %1633 = fadd fast float %1630, -1.000000e+00
  %1634 = fadd fast float %1631, -1.000000e+00
  %1635 = fmul fast float %1480, %1632
  %1636 = fmul fast float %1480, %1633
  %1637 = fmul fast float %1480, %1634
  %1638 = fadd fast float %1635, 1.000000e+00
  %1639 = fadd fast float %1636, 1.000000e+00
  %1640 = fadd fast float %1637, 1.000000e+00
  %1641 = fmul fast float %1638, %1455
  %1642 = fmul fast float %1639, %1456
  %1643 = fmul fast float %1640, %1457
  br label %1644

; <label>:1644                                    ; preds = %1628, %1594, %1485, %1441
  %1645 = phi float [ %1590, %1485 ], [ %1466, %1594 ], [ %1466, %1628 ], [ 0x3FA23C0BE0000000, %1441 ]
  %1646 = phi float [ %1582, %1485 ], [ %1625, %1594 ], [ %1641, %1628 ], [ 1.000000e+00, %1441 ]
  %1647 = phi float [ %1583, %1485 ], [ %1626, %1594 ], [ %1642, %1628 ], [ 1.000000e+00, %1441 ]
  %1648 = phi float [ %1584, %1485 ], [ %1627, %1594 ], [ %1643, %1628 ], [ 1.000000e+00, %1441 ]
  %1649 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1650 = extractvalue %dx.types.CBufRet.i32 %1649, 1
  %1651 = and i32 %1650, 1
  %1652 = icmp ne i32 %1651, 0
  %1653 = add i32 %61, 356
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1653, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = and i32 %1655, 32
  %1657 = icmp ne i32 %1656, 0
  %1658 = and i1 %1652, %1657
  %1659 = select i1 %1658, float 1.000000e+00, float %1646
  %1660 = select i1 %1658, float 0x3FD3333340000000, float %1647
  %1661 = select i1 %1658, float 0x3FD3333340000000, float %1648
  %1662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1663 = extractvalue %dx.types.ResRet.i32 %1662, 0
  %1664 = and i32 %1663, 32
  %1665 = icmp eq i32 %1664, 0
  br i1 %1665, label %1738, label %1666

; <label>:1666                                    ; preds = %1644
  %1667 = add i32 %61, 108
  %1668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = add i32 %61, 380
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1670, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = add i32 %1672, 0
  %1674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1675 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1674, %dx.types.Handle %112, float %1366, float %1367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1676 = extractvalue %dx.types.ResRet.f32 %1675, 0
  %1677 = extractvalue %dx.types.ResRet.f32 %1675, 1
  %1678 = extractvalue %dx.types.ResRet.f32 %1675, 2
  %1679 = extractvalue %dx.types.ResRet.f32 %1675, 3
  %1680 = and i32 %1669, 255
  %1681 = uitofp i32 %1680 to float
  %1682 = lshr i32 %1669, 8
  %1683 = and i32 %1682, 255
  %1684 = uitofp i32 %1683 to float
  %1685 = lshr i32 %1669, 16
  %1686 = and i32 %1685, 255
  %1687 = uitofp i32 %1686 to float
  %1688 = fmul fast float %1687, 0x3F70101000000000
  %1689 = fmul fast float %1676, %1681
  %1690 = fadd fast float %1689, %1684
  %1691 = fmul fast float %1690, 0x3F70101000000000
  %1692 = fadd fast float %1677, -5.000000e-01
  %1693 = fadd fast float %1679, -5.000000e-01
  %1694 = fmul fast float %1692, %1688
  %1695 = fmul fast float %1693, %1688
  %1696 = fadd fast float %1694, 5.000000e-01
  %1697 = fadd fast float %1695, 5.000000e-01
  %1698 = fmul fast float %1696, 2.000000e+00
  %1699 = fadd fast float %1698, -1.000000e+00
  %1700 = fmul fast float %1697, 2.000000e+00
  %1701 = fadd fast float %1700, -1.000000e+00
  %1702 = fadd fast float %1699, %1701
  %1703 = fmul fast float %1702, 5.000000e-01
  %1704 = fsub fast float %1699, %1701
  %1705 = fmul fast float %1704, 5.000000e-01
  %1706 = call float @dx.op.unary.f32(i32 6, float %1703)  ; FAbs(value)
  %1707 = fsub fast float 1.000000e+00, %1706
  %1708 = call float @dx.op.unary.f32(i32 6, float %1705)  ; FAbs(value)
  %1709 = fsub fast float %1707, %1708
  %1710 = call float @dx.op.dot3.f32(i32 55, float %1703, float %1705, float %1709, float %1703, float %1705, float %1709)  ; Dot3(ax,ay,az,bx,by,bz)
  %1711 = call float @dx.op.unary.f32(i32 25, float %1710)  ; Rsqrt(value)
  %1712 = fmul fast float %1703, %1711
  %1713 = fmul fast float %1705, %1711
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = and i32 %1715, 67108864
  %1717 = icmp eq i32 %1716, 0
  br i1 %1717, label %1734, label %1718

; <label>:1718                                    ; preds = %1666
  %1719 = add i32 %61, 296
  %1720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1721 = extractvalue %dx.types.ResRet.i32 %1720, 0
  %1722 = and i32 %1721, 65535
  %1723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1722)  ; LegacyF16ToF32(value)
  %1724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1725 = extractvalue %dx.types.ResRet.i32 %1724, 0
  %1726 = and i32 %1725, 65535
  %1727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1726)  ; LegacyF16ToF32(value)
  %1728 = lshr i32 %1721, 16
  %1729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1728)  ; LegacyF16ToF32(value)
  %1730 = fsub fast float %1691, %1729
  %1731 = fmul fast float %1730, %1723
  %1732 = fadd fast float %1731, %1727
  %1733 = call float @dx.op.unary.f32(i32 7, float %1732)  ; Saturate(value)
  br label %1734

; <label>:1734                                    ; preds = %1718, %1666
  %1735 = phi float [ %1733, %1718 ], [ %1691, %1666 ]
  %1736 = call float @dx.op.dot2.f32(i32 54, float %1712, float %1713, float %1270, float %1271)  ; Dot2(ax,ay,bx,by)
  %1737 = call float @dx.op.dot2.f32(i32 54, float %1712, float %1713, float %1272, float %1273)  ; Dot2(ax,ay,bx,by)
  br label %1738

; <label>:1738                                    ; preds = %1734, %1644
  %1739 = phi float [ %1735, %1734 ], [ 0x3FD6666660000000, %1644 ]
  %1740 = phi float [ %1736, %1734 ], [ 0.000000e+00, %1644 ]
  %1741 = phi float [ %1737, %1734 ], [ 0.000000e+00, %1644 ]
  %1742 = phi float [ %1678, %1734 ], [ 1.000000e+00, %1644 ]
  %1743 = add i32 %61, 176
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = lshr i32 %1745, 22
  %1747 = shl nuw nsw i32 %1746, 5
  %1748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1747)  ; LegacyF16ToF32(value)
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = and i32 %1750, 64
  %1752 = icmp eq i32 %1751, 0
  br i1 %1752, label %1786, label %1753

; <label>:1753                                    ; preds = %1738
  %1754 = add i32 %61, 396
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = add i32 %1756, 0
  %1758 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1757, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = and i32 %1760, 131072
  %1762 = icmp eq i32 %1761, 0
  %1763 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1758, %dx.types.Handle %112, float %1366, float %1367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1764 = extractvalue %dx.types.ResRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.ResRet.f32 %1763, 1
  %1766 = extractvalue %dx.types.ResRet.f32 %1763, 2
  %1767 = fmul fast float %380, %1764
  %1768 = fmul fast float %381, %1765
  %1769 = fmul fast float %382, %1766
  br i1 %1762, label %1776, label %1770

; <label>:1770                                    ; preds = %1753
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1771, 0
  %1773 = fmul fast float %1772, %1767
  %1774 = fmul fast float %1772, %1768
  %1775 = fmul fast float %1772, %1769
  br label %1776

; <label>:1776                                    ; preds = %1770, %1753
  %1777 = phi float [ %1773, %1770 ], [ %1767, %1753 ]
  %1778 = phi float [ %1774, %1770 ], [ %1768, %1753 ]
  %1779 = phi float [ %1775, %1770 ], [ %1769, %1753 ]
  %1780 = fmul fast float %1777, %1748
  %1781 = select i1 %262, float %1780, float %1777
  %1782 = call float @dx.op.dot3.f32(i32 55, float %1781, float %1778, float %1779, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1783 = select i1 %262, float 0.000000e+00, float %1777
  %1784 = select i1 %262, float %1782, float %1778
  %1785 = select i1 %262, float 0.000000e+00, float %1779
  br label %1786

; <label>:1786                                    ; preds = %1776, %1738
  %1787 = phi float [ %1783, %1776 ], [ 0.000000e+00, %1738 ]
  %1788 = phi float [ %1784, %1776 ], [ 0.000000e+00, %1738 ]
  %1789 = phi float [ %1785, %1776 ], [ 0.000000e+00, %1738 ]
  %1790 = add i32 %61, 112
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = and i32 %1792, 255
  %1794 = uitofp i32 %1793 to float
  %1795 = lshr i32 %1792, 8
  %1796 = and i32 %1795, 255
  %1797 = uitofp i32 %1796 to float
  %1798 = call float @dx.op.dot3.f32(i32 55, float %1659, float %1660, float %1661, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1799 = fmul fast float %1797, %1798
  %1800 = fadd fast float %1799, %1794
  %1801 = fmul fast float %1800, 0x3F70101020000000
  %1802 = call float @dx.op.unary.f32(i32 7, float %1801)  ; Saturate(value)
  br i1 %1258, label %1803, label %1811

; <label>:1803                                    ; preds = %1786
  %1804 = fsub fast float 1.000000e+00, %1439
  %1805 = fmul fast float %1804, %1249
  %1806 = fmul fast float %1804, %1250
  %1807 = fmul fast float %1804, %1251
  %1808 = fmul fast float %1804, %1246
  %1809 = fmul fast float %1804, %1247
  %1810 = fmul fast float %1804, %1248
  br label %1811

; <label>:1811                                    ; preds = %1803, %1786
  %1812 = phi float [ %1808, %1803 ], [ %1246, %1786 ]
  %1813 = phi float [ %1809, %1803 ], [ %1247, %1786 ]
  %1814 = phi float [ %1810, %1803 ], [ %1248, %1786 ]
  %1815 = phi float [ %1805, %1803 ], [ %1249, %1786 ]
  %1816 = phi float [ %1806, %1803 ], [ %1250, %1786 ]
  %1817 = phi float [ %1807, %1803 ], [ %1251, %1786 ]
  %1818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.i32 %1818, 0
  %1820 = and i32 %1819, 3
  %1821 = icmp eq i32 %1820, 3
  br i1 %1821, label %1900, label %1822

; <label>:1822                                    ; preds = %1811
  %1823 = and i32 %1819, 16
  %1824 = icmp ne i32 %1823, 0
  %1825 = select i1 %1824, float %1439, float 0.000000e+00
  %1826 = icmp eq i32 %1820, 0
  br i1 %1826, label %1827, label %1855

; <label>:1827                                    ; preds = %1822
  %1828 = and i32 %1819, 64
  %1829 = icmp ne i32 %1828, 0
  %1830 = select i1 %1829, float %1439, float 0.000000e+00
  %1831 = fsub fast float %1659, %1815
  %1832 = fsub fast float %1660, %1816
  %1833 = fsub fast float %1661, %1817
  %1834 = fmul fast float %1825, %1831
  %1835 = fmul fast float %1825, %1832
  %1836 = fmul fast float %1825, %1833
  %1837 = fadd fast float %1834, %1815
  %1838 = fadd fast float %1835, %1816
  %1839 = fadd fast float %1836, %1817
  %1840 = fsub fast float %1645, %1252
  %1841 = fmul fast float %1825, %1840
  %1842 = fadd fast float %1841, %1252
  %1843 = fsub fast float %1787, %1812
  %1844 = fsub fast float %1788, %1813
  %1845 = fsub fast float %1789, %1814
  %1846 = fmul fast float %1830, %1843
  %1847 = fmul fast float %1830, %1844
  %1848 = fmul fast float %1830, %1845
  %1849 = fadd fast float %1846, %1812
  %1850 = fadd fast float %1847, %1813
  %1851 = fadd fast float %1848, %1814
  %1852 = fsub fast float %1802, %1256
  %1853 = fmul fast float %1825, %1852
  %1854 = fadd fast float %1853, %1256
  br label %1900

; <label>:1855                                    ; preds = %1822
  %1856 = icmp eq i32 %1820, 1
  br i1 %1856, label %1857, label %1870

; <label>:1857                                    ; preds = %1855
  %1858 = fadd fast float %1659, -1.000000e+00
  %1859 = fadd fast float %1660, -1.000000e+00
  %1860 = fadd fast float %1661, -1.000000e+00
  %1861 = fmul fast float %1825, %1858
  %1862 = fmul fast float %1825, %1859
  %1863 = fmul fast float %1825, %1860
  %1864 = fadd fast float %1861, 1.000000e+00
  %1865 = fadd fast float %1862, 1.000000e+00
  %1866 = fadd fast float %1863, 1.000000e+00
  %1867 = fmul fast float %1864, %1815
  %1868 = fmul fast float %1865, %1816
  %1869 = fmul fast float %1866, %1817
  br label %1900

; <label>:1870                                    ; preds = %1855
  %1871 = icmp eq i32 %1820, 2
  br i1 %1871, label %1872, label %1900

; <label>:1872                                    ; preds = %1870
  %1873 = call float @dx.op.unary.f32(i32 24, float %1659)  ; Sqrt(value)
  %1874 = call float @dx.op.unary.f32(i32 24, float %1660)  ; Sqrt(value)
  %1875 = call float @dx.op.unary.f32(i32 24, float %1661)  ; Sqrt(value)
  %1876 = fadd fast float %1873, -5.000000e-01
  %1877 = fadd fast float %1874, -5.000000e-01
  %1878 = fadd fast float %1875, -5.000000e-01
  %1879 = fmul fast float %1876, %1825
  %1880 = fmul fast float %1877, %1825
  %1881 = fmul fast float %1878, %1825
  %1882 = fadd fast float %1879, 5.000000e-01
  %1883 = fadd fast float %1880, 5.000000e-01
  %1884 = fadd fast float %1881, 5.000000e-01
  %1885 = fmul fast float %1882, 2.000000e+00
  %1886 = fsub fast float 1.000000e+00, %1885
  %1887 = fmul fast float %1886, %1815
  %1888 = fadd fast float %1887, %1885
  %1889 = fmul fast float %1888, %1815
  %1890 = fmul fast float %1883, 2.000000e+00
  %1891 = fsub fast float 1.000000e+00, %1890
  %1892 = fmul fast float %1891, %1816
  %1893 = fadd fast float %1892, %1890
  %1894 = fmul fast float %1893, %1816
  %1895 = fmul fast float %1884, 2.000000e+00
  %1896 = fsub fast float 1.000000e+00, %1895
  %1897 = fmul fast float %1896, %1817
  %1898 = fadd fast float %1897, %1895
  %1899 = fmul fast float %1898, %1817
  br label %1900

; <label>:1900                                    ; preds = %1872, %1870, %1857, %1827, %1811
  %1901 = phi float [ %1812, %1811 ], [ %1812, %1872 ], [ %1812, %1870 ], [ %1812, %1857 ], [ %1849, %1827 ]
  %1902 = phi float [ %1813, %1811 ], [ %1813, %1872 ], [ %1813, %1870 ], [ %1813, %1857 ], [ %1850, %1827 ]
  %1903 = phi float [ %1814, %1811 ], [ %1814, %1872 ], [ %1814, %1870 ], [ %1814, %1857 ], [ %1851, %1827 ]
  %1904 = phi float [ %1815, %1811 ], [ %1889, %1872 ], [ %1815, %1870 ], [ %1867, %1857 ], [ %1837, %1827 ]
  %1905 = phi float [ %1816, %1811 ], [ %1894, %1872 ], [ %1816, %1870 ], [ %1868, %1857 ], [ %1838, %1827 ]
  %1906 = phi float [ %1817, %1811 ], [ %1899, %1872 ], [ %1817, %1870 ], [ %1869, %1857 ], [ %1839, %1827 ]
  %1907 = phi float [ %1252, %1811 ], [ %1252, %1872 ], [ %1252, %1870 ], [ %1252, %1857 ], [ %1842, %1827 ]
  %1908 = phi float [ %1256, %1811 ], [ %1256, %1872 ], [ %1256, %1870 ], [ %1256, %1857 ], [ %1854, %1827 ]
  %1909 = and i32 %1819, 12
  %1910 = icmp eq i32 %1909, 12
  br i1 %1910, label %1983, label %1911

; <label>:1911                                    ; preds = %1900
  %1912 = and i32 %1819, 2097184
  %1913 = icmp eq i32 %1912, 2097184
  %1914 = select i1 %1913, float %1439, float 0.000000e+00
  %1915 = and i32 %1819, 4194336
  %1916 = icmp eq i32 %1915, 4194336
  %1917 = select i1 %1916, float %1439, float 0.000000e+00
  %1918 = and i32 %1819, 8388640
  %1919 = icmp eq i32 %1918, 8388640
  %1920 = select i1 %1919, float %1439, float 0.000000e+00
  %1921 = icmp eq i32 %1909, 0
  br i1 %1921, label %1922, label %1935

; <label>:1922                                    ; preds = %1911
  %1923 = fsub fast float %1740, %1244
  %1924 = fsub fast float %1741, %1245
  %1925 = fmul fast float %1914, %1923
  %1926 = fmul fast float %1914, %1924
  %1927 = fadd fast float %1925, %1244
  %1928 = fadd fast float %1926, %1245
  %1929 = fsub fast float %1742, %1255
  %1930 = fmul fast float %1917, %1929
  %1931 = fadd fast float %1930, %1255
  %1932 = fsub fast float %1739, %1254
  %1933 = fmul fast float %1920, %1932
  %1934 = fadd fast float %1933, %1254
  br label %1983

; <label>:1935                                    ; preds = %1911
  %1936 = icmp eq i32 %1909, 4
  br i1 %1936, label %1937, label %1969

; <label>:1937                                    ; preds = %1935
  %1938 = fmul fast float %1914, %1740
  %1939 = fmul fast float %1914, %1741
  %1940 = fadd fast float %1938, %1244
  %1941 = fadd fast float %1939, %1245
  %1942 = call float @dx.op.binary.f32(i32 36, float %1255, float %1742)  ; FMin(a,b)
  %1943 = fsub fast float %1942, %1255
  %1944 = fmul fast float %1943, %1917
  %1945 = fadd fast float %1944, %1255
  %1946 = fadd fast float %1739, %1254
  %1947 = fmul fast float %1946, 0x3FF337FAE0000000
  %1948 = fmul fast float %1254, %1254
  %1949 = fmul fast float %1739, %1739
  %1950 = fadd fast float %1949, %1948
  %1951 = fmul fast float %1950, 0x3FE5152B00000000
  %1952 = fmul fast float %1254, 0xBFCC1F85E0000000
  %1953 = fmul fast float %1952, %1739
  %1954 = fadd fast float %1953, 0xBFE1363700000000
  %1955 = fadd fast float %1954, %1947
  %1956 = fsub fast float %1955, %1951
  %1957 = fmul fast float %1946, 0x3FBA6F0D00000000
  %1958 = fmul fast float %1950, 0x3FD0432880000000
  %1959 = fmul fast float %1254, 0xBFEF110800000000
  %1960 = fmul fast float %1959, %1739
  %1961 = fadd fast float %1960, 1.000000e+00
  %1962 = fsub fast float %1961, %1957
  %1963 = fadd fast float %1962, %1958
  %1964 = fdiv fast float %1956, %1963
  %1965 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1966 = fsub fast float %1965, %1254
  %1967 = fmul fast float %1966, %1920
  %1968 = fadd fast float %1967, %1254
  br label %1983

; <label>:1969                                    ; preds = %1935
  %1970 = icmp eq i32 %1909, 8
  br i1 %1970, label %1971, label %1983

; <label>:1971                                    ; preds = %1969
  %1972 = fmul fast float %1914, %1740
  %1973 = fmul fast float %1914, %1741
  %1974 = fadd fast float %1972, %1244
  %1975 = fadd fast float %1973, %1245
  %1976 = call float @dx.op.binary.f32(i32 36, float %1255, float %1742)  ; FMin(a,b)
  %1977 = fsub fast float %1976, %1255
  %1978 = fmul fast float %1977, %1917
  %1979 = fadd fast float %1978, %1255
  %1980 = fsub fast float %1739, %1254
  %1981 = fmul fast float %1920, %1980
  %1982 = fadd fast float %1981, %1254
  br label %1983

; <label>:1983                                    ; preds = %1971, %1969, %1937, %1922, %1900, %1438, %1257, %1243
  %1984 = phi float [ %1244, %1900 ], [ %1244, %1438 ], [ %1244, %1243 ], [ %1974, %1971 ], [ %1244, %1969 ], [ %1940, %1937 ], [ %1927, %1922 ], [ %1244, %1257 ]
  %1985 = phi float [ %1245, %1900 ], [ %1245, %1438 ], [ %1245, %1243 ], [ %1975, %1971 ], [ %1245, %1969 ], [ %1941, %1937 ], [ %1928, %1922 ], [ %1245, %1257 ]
  %1986 = phi float [ %1901, %1900 ], [ %1246, %1438 ], [ %1246, %1243 ], [ %1901, %1971 ], [ %1901, %1969 ], [ %1901, %1937 ], [ %1901, %1922 ], [ %1246, %1257 ]
  %1987 = phi float [ %1902, %1900 ], [ %1247, %1438 ], [ %1247, %1243 ], [ %1902, %1971 ], [ %1902, %1969 ], [ %1902, %1937 ], [ %1902, %1922 ], [ %1247, %1257 ]
  %1988 = phi float [ %1903, %1900 ], [ %1248, %1438 ], [ %1248, %1243 ], [ %1903, %1971 ], [ %1903, %1969 ], [ %1903, %1937 ], [ %1903, %1922 ], [ %1248, %1257 ]
  %1989 = phi float [ %1904, %1900 ], [ %1249, %1438 ], [ %1249, %1243 ], [ %1904, %1971 ], [ %1904, %1969 ], [ %1904, %1937 ], [ %1904, %1922 ], [ %1249, %1257 ]
  %1990 = phi float [ %1905, %1900 ], [ %1250, %1438 ], [ %1250, %1243 ], [ %1905, %1971 ], [ %1905, %1969 ], [ %1905, %1937 ], [ %1905, %1922 ], [ %1250, %1257 ]
  %1991 = phi float [ %1906, %1900 ], [ %1251, %1438 ], [ %1251, %1243 ], [ %1906, %1971 ], [ %1906, %1969 ], [ %1906, %1937 ], [ %1906, %1922 ], [ %1251, %1257 ]
  %1992 = phi float [ %1907, %1900 ], [ %1252, %1438 ], [ %1252, %1243 ], [ %1907, %1971 ], [ %1907, %1969 ], [ %1907, %1937 ], [ %1907, %1922 ], [ %1252, %1257 ]
  %1993 = phi float [ %1254, %1900 ], [ %1254, %1438 ], [ %1254, %1243 ], [ %1982, %1971 ], [ %1254, %1969 ], [ %1968, %1937 ], [ %1934, %1922 ], [ %1254, %1257 ]
  %1994 = phi float [ %1255, %1900 ], [ %1255, %1438 ], [ %1255, %1243 ], [ %1979, %1971 ], [ %1255, %1969 ], [ %1945, %1937 ], [ %1931, %1922 ], [ %1255, %1257 ]
  %1995 = phi float [ %1908, %1900 ], [ %1256, %1438 ], [ %1256, %1243 ], [ %1908, %1971 ], [ %1908, %1969 ], [ %1908, %1937 ], [ %1908, %1922 ], [ %1256, %1257 ]
  br i1 %644, label %2722, label %1996

; <label>:1996                                    ; preds = %1983
  %1997 = icmp ult i32 %700, 3
  %1998 = add i32 %61, 56
  %1999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.i32 %1999, 0
  %2001 = add i32 %61, 60
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = or i32 %2003, %2000
  %2005 = icmp eq i32 %2004, 0
  br i1 %2005, label %2722, label %2006

; <label>:2006                                    ; preds = %1996
  %2007 = and i32 %2000, 262144
  %2008 = icmp ne i32 %2007, 0
  %2009 = select i1 %2008, float %67, float 1.000000e+00
  %2010 = select i1 %2008, float %68, float 0.000000e+00
  %2011 = select i1 %2008, float %69, float 0.000000e+00
  %2012 = select i1 %2008, float %70, float 1.000000e+00
  %2013 = select i1 %2008, float %71, float %94
  %2014 = select i1 %2008, float %72, float %95
  %2015 = add i32 %61, 316
  %2016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = lshr i32 %2017, 16
  %2019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2018)  ; LegacyF16ToF32(value)
  %2020 = fmul fast float %2019, 0x3F50624DE0000000
  %2021 = add i32 %61, 120
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = lshr i32 %2023, 16
  %2025 = and i32 %2024, 255
  %2026 = lshr i32 %2023, 24
  %2027 = add i32 %61, 324
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = and i32 %2029, 65535
  %2031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2030)  ; LegacyF16ToF32(value)
  %2032 = lshr i32 %2029, 16
  %2033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2032)  ; LegacyF16ToF32(value)
  %2034 = add i32 %61, 64
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = lshr i32 %2036, 22
  %2038 = shl nuw nsw i32 %2037, 5
  %2039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2038)  ; LegacyF16ToF32(value)
  %2040 = shl i32 %2036, 4
  %2041 = and i32 %2040, 32752
  %2042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2041)  ; LegacyF16ToF32(value)
  %2043 = lshr i32 %2036, 7
  %2044 = and i32 %2043, 32752
  %2045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2044)  ; LegacyF16ToF32(value)
  %2046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2047 = extractvalue %dx.types.CBufRet.f32 %2046, 3
  %2048 = fmul fast float %2047, 1.000000e+03
  %2049 = fmul fast float %2048, %528
  %2050 = call float @dx.op.unary.f32(i32 22, float %2049)  ; Frc(value)
  %2051 = fadd fast float %2050, %516
  %2052 = fmul fast float %2048, %530
  %2053 = call float @dx.op.unary.f32(i32 22, float %2052)  ; Frc(value)
  %2054 = fadd fast float %2053, %517
  %2055 = fmul fast float %2020, %2048
  %2056 = call float @dx.op.unary.f32(i32 22, float %2055)  ; Frc(value)
  %2057 = fmul fast float %2056, 0x401921FB60000000
  %2058 = fadd fast float %2057, %2039
  %2059 = call float @dx.op.unary.f32(i32 13, float %2058)  ; Sin(value)
  %2060 = call float @dx.op.unary.f32(i32 12, float %2058)  ; Cos(value)
  %2061 = fsub fast float -0.000000e+00, %2059
  %2062 = fadd fast float %2013, -5.000000e-01
  %2063 = fadd fast float %2014, -5.000000e-01
  %2064 = fmul fast float %2031, %2062
  %2065 = fmul fast float %2033, %2063
  %2066 = fadd fast float %2064, 5.000000e-01
  %2067 = fadd fast float %2065, 5.000000e-01
  %2068 = fmul fast float %2042, %2066
  %2069 = fmul fast float %2045, %2067
  %2070 = fmul fast float %2060, %2068
  %2071 = call float @dx.op.tertiary.f32(i32 46, float %2061, float %2069, float %2070)  ; FMad(a,b,c)
  %2072 = fmul fast float %2059, %2068
  %2073 = call float @dx.op.tertiary.f32(i32 46, float %2060, float %2069, float %2072)  ; FMad(a,b,c)
  %2074 = fadd fast float %2051, %2071
  %2075 = fadd fast float %2054, %2073
  %2076 = icmp ugt i32 %2025, 1
  %2077 = icmp ugt i32 %2023, 33554431
  %2078 = or i1 %2077, %2076
  br i1 %2078, label %2079, label %2104

; <label>:2079                                    ; preds = %2006
  %2080 = add i32 %61, 260
  %2081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.i32 %2081, 0
  %2083 = lshr i32 %2082, 16
  %2084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2083)  ; LegacyF16ToF32(value)
  %2085 = fmul fast float %2047, %2084
  %2086 = call float @dx.op.unary.f32(i32 22, float %2085)  ; Frc(value)
  %2087 = mul nuw nsw i32 %2025, %2026
  %2088 = uitofp i32 %2087 to float
  %2089 = fmul fast float %2086, %2088
  %2090 = call float @dx.op.unary.f32(i32 27, float %2089)  ; Round_ni(value)
  %2091 = fptoui float %2090 to i32
  %2092 = urem i32 %2091, %2025
  %2093 = udiv i32 %2091, %2026
  %2094 = call float @dx.op.unary.f32(i32 22, float %2074)  ; Frc(value)
  %2095 = call float @dx.op.unary.f32(i32 22, float %2075)  ; Frc(value)
  %2096 = uitofp i32 %2092 to float
  %2097 = uitofp i32 %2093 to float
  %2098 = fadd fast float %2094, %2096
  %2099 = fadd fast float %2095, %2097
  %2100 = uitofp i32 %2025 to float
  %2101 = uitofp i32 %2026 to float
  %2102 = fdiv fast float %2098, %2100
  %2103 = fdiv fast float %2099, %2101
  br label %2104

; <label>:2104                                    ; preds = %2079, %2006
  %2105 = phi float [ %2102, %2079 ], [ %2074, %2006 ]
  %2106 = phi float [ %2103, %2079 ], [ %2075, %2006 ]
  %2107 = and i32 %2000, 256
  %2108 = icmp eq i32 %2107, 0
  br i1 %2108, label %2155, label %2109

; <label>:2109                                    ; preds = %2104
  %2110 = add i32 %61, 432
  %2111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2112 = extractvalue %dx.types.ResRet.i32 %2111, 0
  %2113 = add i32 %2112, 0
  %2114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2113, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2115 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2114, %dx.types.Handle %113, float %2105, float %2106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2116 = extractvalue %dx.types.ResRet.f32 %2115, 0
  %2117 = add i32 %61, 132
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2117, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = shl i32 %2119, 4
  %2121 = and i32 %2120, 32752
  %2122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2121)  ; LegacyF16ToF32(value)
  %2123 = lshr i32 %2119, 7
  %2124 = and i32 %2123, 32752
  %2125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2124)  ; LegacyF16ToF32(value)
  %2126 = fsub fast float 1.000000e+00, %696
  %2127 = call float @dx.op.binary.f32(i32 35, float %2126, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2128 = bitcast float %696 to i32
  %2129 = sitofp i32 %2128 to float
  %2130 = fadd fast float %2129, 0xC1CFBF8940000000
  %2131 = fmul fast float %2125, %2130
  %2132 = fadd fast float %2131, 0x41CFBF8940000000
  %2133 = fptosi float %2132 to i32
  %2134 = bitcast i32 %2133 to float
  %2135 = bitcast float %2127 to i32
  %2136 = sitofp i32 %2135 to float
  %2137 = fadd fast float %2136, 0xC1CFBF8940000000
  %2138 = fmul fast float %2137, %2125
  %2139 = fadd fast float %2138, 0x41CFBF8940000000
  %2140 = fptosi float %2139 to i32
  %2141 = bitcast i32 %2140 to float
  %2142 = fmul fast float %2134, %2122
  %2143 = fmul fast float %2141, %2122
  %2144 = fsub fast float %2127, %2142
  %2145 = fadd fast float %2143, %2127
  %2146 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2147 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2148 = fsub fast float %2116, %2146
  %2149 = fsub fast float %2147, %2146
  %2150 = bitcast float %2149 to i32
  %2151 = sub nsw i32 2129859010, %2150
  %2152 = bitcast i32 %2151 to float
  %2153 = fmul fast float %2152, %2148
  %2154 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  br label %2155

; <label>:2155                                    ; preds = %2109, %2104
  %2156 = phi float [ %2154, %2109 ], [ %696, %2104 ]
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = and i32 %2158, 128
  %2160 = icmp eq i32 %2159, 0
  br i1 %2160, label %2177, label %2161

; <label>:2161                                    ; preds = %2155
  %2162 = add i32 %61, 416
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = add i32 %2164, 0
  %2166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2166, %dx.types.Handle %113, float %2105, float %2106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2168 = extractvalue %dx.types.ResRet.f32 %2167, 0
  %2169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.i32 %2169, 0
  %2171 = and i32 %2170, 524288
  %2172 = icmp ne i32 %2171, 0
  %2173 = fcmp fast ogt float %2168, 0x3FE0101020000000
  %2174 = select i1 %2173, float 1.000000e+00, float 0.000000e+00
  %2175 = select i1 %2172, float %2174, float %2168
  %2176 = fmul fast float %2175, %2156
  br label %2177

; <label>:2177                                    ; preds = %2161, %2155
  %2178 = phi float [ %2176, %2161 ], [ %2156, %2155 ]
  %2179 = fcmp fast ult float %2178, 0x3F70101020000000
  br i1 %2179, label %2722, label %2180

; <label>:2180                                    ; preds = %2177
  %2181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.i32 %2181, 0
  %2183 = and i32 %2182, 16
  %2184 = icmp eq i32 %2183, 0
  br i1 %2184, label %2383, label %2185

; <label>:2185                                    ; preds = %2180
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = add i32 %61, 368
  %2189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2188, i32 undef)  ; BufferLoad(srv,index,wot)
  %2190 = extractvalue %dx.types.ResRet.i32 %2189, 0
  %2191 = add i32 %2190, 0
  %2192 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2191, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2193 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2192, %dx.types.Handle %112, float %2105, float %2106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2194 = extractvalue %dx.types.ResRet.f32 %2193, 0
  %2195 = extractvalue %dx.types.ResRet.f32 %2193, 1
  %2196 = extractvalue %dx.types.ResRet.f32 %2193, 2
  %2197 = extractvalue %dx.types.ResRet.f32 %2193, 3
  %2198 = and i32 %2187, 255
  %2199 = uitofp i32 %2198 to float
  %2200 = lshr i32 %2187, 8
  %2201 = and i32 %2200, 255
  %2202 = uitofp i32 %2201 to float
  %2203 = fmul fast float %2197, %2199
  %2204 = fadd fast float %2203, %2202
  %2205 = fmul fast float %2204, 0x3F70101000000000
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = and i32 %2207, 512
  %2209 = icmp eq i32 %2208, 0
  br i1 %2209, label %2218, label %2210

; <label>:2210                                    ; preds = %2185
  %2211 = add i32 %61, 448
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2211, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = add i32 %2213, 0
  %2215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2216 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2215, %dx.types.Handle %113, float %2105, float %2106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2217 = extractvalue %dx.types.ResRet.f32 %2216, 0
  br label %2218

; <label>:2218                                    ; preds = %2210, %2185
  %2219 = phi float [ %2217, %2210 ], [ 1.000000e+00, %2185 ]
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = and i32 %2221, 33554432
  %2223 = icmp eq i32 %2222, 0
  br i1 %2223, label %2330, label %2224

; <label>:2224                                    ; preds = %2218
  %2225 = add i32 %61, 256
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = and i32 %2227, 65535
  %2229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2228)  ; LegacyF16ToF32(value)
  %2230 = lshr i32 %2227, 16
  %2231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2230)  ; LegacyF16ToF32(value)
  %2232 = add i32 %61, 260
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = and i32 %2234, 65535
  %2236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2235)  ; LegacyF16ToF32(value)
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = lshr i32 %2238, 24
  %2240 = uitofp i32 %2239 to float
  %2241 = fmul fast float %2240, 0x3F70101020000000
  %2242 = and i32 %2238, 255
  %2243 = uitofp i32 %2242 to float
  %2244 = fmul fast float %2243, 0x3F70101020000000
  %2245 = lshr i32 %2238, 8
  %2246 = and i32 %2245, 255
  %2247 = uitofp i32 %2246 to float
  %2248 = fmul fast float %2247, 0x3F70101020000000
  %2249 = lshr i32 %2238, 16
  %2250 = and i32 %2249, 255
  %2251 = uitofp i32 %2250 to float
  %2252 = fmul fast float %2251, 0x3F70101020000000
  %2253 = add i32 %61, 252
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2253, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = lshr i32 %2255, 24
  %2257 = uitofp i32 %2256 to float
  %2258 = fmul fast float %2257, 0x3F70101020000000
  %2259 = and i32 %2255, 255
  %2260 = uitofp i32 %2259 to float
  %2261 = fmul fast float %2260, 0x3F70101020000000
  %2262 = lshr i32 %2255, 8
  %2263 = and i32 %2262, 255
  %2264 = uitofp i32 %2263 to float
  %2265 = fmul fast float %2264, 0x3F70101020000000
  %2266 = lshr i32 %2255, 16
  %2267 = and i32 %2266, 255
  %2268 = uitofp i32 %2267 to float
  %2269 = fmul fast float %2268, 0x3F70101020000000
  %2270 = bitcast float %2194 to i32
  %2271 = ashr i32 %2270, 1
  %2272 = sub nsw i32 1597463174, %2271
  %2273 = bitcast i32 %2272 to float
  %2274 = fmul fast float %2194, 5.000000e-01
  %2275 = fmul fast float %2273, %2273
  %2276 = fmul fast float %2275, %2274
  %2277 = fsub fast float 1.500000e+00, %2276
  %2278 = fmul fast float %2273, %2194
  %2279 = fmul fast float %2278, %2277
  %2280 = bitcast float %2195 to i32
  %2281 = ashr i32 %2280, 1
  %2282 = sub nsw i32 1597463174, %2281
  %2283 = bitcast i32 %2282 to float
  %2284 = fmul fast float %2195, 5.000000e-01
  %2285 = fmul fast float %2283, %2283
  %2286 = fmul fast float %2285, %2284
  %2287 = fsub fast float 1.500000e+00, %2286
  %2288 = fmul fast float %2283, %2195
  %2289 = fmul fast float %2288, %2287
  %2290 = bitcast float %2196 to i32
  %2291 = ashr i32 %2290, 1
  %2292 = sub nsw i32 1597463174, %2291
  %2293 = bitcast i32 %2292 to float
  %2294 = fmul fast float %2196, 5.000000e-01
  %2295 = fmul fast float %2293, %2293
  %2296 = fmul fast float %2295, %2294
  %2297 = fsub fast float 1.500000e+00, %2296
  %2298 = fmul fast float %2293, %2196
  %2299 = fmul fast float %2298, %2297
  %2300 = fsub fast float %2279, %2261
  %2301 = fsub fast float %2289, %2265
  %2302 = fsub fast float %2299, %2269
  %2303 = fmul fast float %2300, %2229
  %2304 = fmul fast float %2301, %2231
  %2305 = fmul fast float %2302, %2236
  %2306 = fadd fast float %2303, %2244
  %2307 = fadd fast float %2304, %2248
  %2308 = fadd fast float %2305, %2252
  %2309 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2310 = call float @dx.op.unary.f32(i32 7, float %2307)  ; Saturate(value)
  %2311 = call float @dx.op.unary.f32(i32 7, float %2308)  ; Saturate(value)
  %2312 = fmul fast float %2309, %2309
  %2313 = fmul fast float %2310, %2310
  %2314 = fmul fast float %2311, %2311
  %2315 = fsub fast float %2312, %2194
  %2316 = fsub fast float %2313, %2195
  %2317 = fsub fast float %2314, %2196
  %2318 = fmul fast float %2315, %2219
  %2319 = fmul fast float %2316, %2219
  %2320 = fmul fast float %2317, %2219
  %2321 = fadd fast float %2318, %2194
  %2322 = fadd fast float %2319, %2195
  %2323 = fadd fast float %2320, %2196
  %2324 = fadd fast float %2241, %2205
  %2325 = fsub fast float %2324, %2258
  %2326 = call float @dx.op.unary.f32(i32 7, float %2325)  ; Saturate(value)
  %2327 = fsub fast float %2326, %2205
  %2328 = fmul fast float %2327, %2219
  %2329 = fadd fast float %2328, %2205
  br label %2383

; <label>:2330                                    ; preds = %2218
  %2331 = and i32 %2221, 134217728
  %2332 = icmp eq i32 %2331, 0
  br i1 %2332, label %2367, label %2333

; <label>:2333                                    ; preds = %2330
  %2334 = call float @dx.op.unary.f32(i32 24, float %504)  ; Sqrt(value)
  %2335 = call float @dx.op.unary.f32(i32 24, float %505)  ; Sqrt(value)
  %2336 = call float @dx.op.unary.f32(i32 24, float %506)  ; Sqrt(value)
  %2337 = fadd fast float %2334, -5.000000e-01
  %2338 = fadd fast float %2335, -5.000000e-01
  %2339 = fadd fast float %2336, -5.000000e-01
  %2340 = fmul fast float %2337, %2219
  %2341 = fmul fast float %2338, %2219
  %2342 = fmul fast float %2339, %2219
  %2343 = fadd fast float %2340, 5.000000e-01
  %2344 = fadd fast float %2341, 5.000000e-01
  %2345 = fadd fast float %2342, 5.000000e-01
  %2346 = call float @dx.op.unary.f32(i32 24, float %2194)  ; Sqrt(value)
  %2347 = call float @dx.op.unary.f32(i32 24, float %2195)  ; Sqrt(value)
  %2348 = call float @dx.op.unary.f32(i32 24, float %2196)  ; Sqrt(value)
  %2349 = fmul fast float %2343, 2.000000e+00
  %2350 = fsub fast float 1.000000e+00, %2349
  %2351 = fmul fast float %2350, %2346
  %2352 = fadd fast float %2351, %2349
  %2353 = fmul fast float %2352, %2346
  %2354 = fmul fast float %2344, 2.000000e+00
  %2355 = fsub fast float 1.000000e+00, %2354
  %2356 = fmul fast float %2355, %2347
  %2357 = fadd fast float %2356, %2354
  %2358 = fmul fast float %2357, %2347
  %2359 = fmul fast float %2345, 2.000000e+00
  %2360 = fsub fast float 1.000000e+00, %2359
  %2361 = fmul fast float %2360, %2348
  %2362 = fadd fast float %2361, %2359
  %2363 = fmul fast float %2362, %2348
  %2364 = fmul fast float %2353, %2353
  %2365 = fmul fast float %2358, %2358
  %2366 = fmul fast float %2363, %2363
  br label %2383

; <label>:2367                                    ; preds = %2330
  %2368 = fmul fast float %504, %504
  %2369 = fmul fast float %505, %505
  %2370 = fmul fast float %506, %506
  %2371 = fadd fast float %2368, -1.000000e+00
  %2372 = fadd fast float %2369, -1.000000e+00
  %2373 = fadd fast float %2370, -1.000000e+00
  %2374 = fmul fast float %2219, %2371
  %2375 = fmul fast float %2219, %2372
  %2376 = fmul fast float %2219, %2373
  %2377 = fadd fast float %2374, 1.000000e+00
  %2378 = fadd fast float %2375, 1.000000e+00
  %2379 = fadd fast float %2376, 1.000000e+00
  %2380 = fmul fast float %2377, %2194
  %2381 = fmul fast float %2378, %2195
  %2382 = fmul fast float %2379, %2196
  br label %2383

; <label>:2383                                    ; preds = %2367, %2333, %2224, %2180
  %2384 = phi float [ %2329, %2224 ], [ %2205, %2333 ], [ %2205, %2367 ], [ 0x3FA23C0BE0000000, %2180 ]
  %2385 = phi float [ %2321, %2224 ], [ %2364, %2333 ], [ %2380, %2367 ], [ 1.000000e+00, %2180 ]
  %2386 = phi float [ %2322, %2224 ], [ %2365, %2333 ], [ %2381, %2367 ], [ 1.000000e+00, %2180 ]
  %2387 = phi float [ %2323, %2224 ], [ %2366, %2333 ], [ %2382, %2367 ], [ 1.000000e+00, %2180 ]
  %2388 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2389 = extractvalue %dx.types.CBufRet.i32 %2388, 1
  %2390 = and i32 %2389, 1
  %2391 = icmp ne i32 %2390, 0
  %2392 = add i32 %61, 356
  %2393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2392, i32 undef)  ; BufferLoad(srv,index,wot)
  %2394 = extractvalue %dx.types.ResRet.i32 %2393, 0
  %2395 = and i32 %2394, 32
  %2396 = icmp ne i32 %2395, 0
  %2397 = and i1 %2391, %2396
  %2398 = select i1 %2397, float 1.000000e+00, float %2385
  %2399 = select i1 %2397, float 0x3FD3333340000000, float %2386
  %2400 = select i1 %2397, float 0x3FD3333340000000, float %2387
  %2401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2402 = extractvalue %dx.types.ResRet.i32 %2401, 0
  %2403 = and i32 %2402, 32
  %2404 = icmp eq i32 %2403, 0
  br i1 %2404, label %2477, label %2405

; <label>:2405                                    ; preds = %2383
  %2406 = add i32 %61, 124
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = add i32 %61, 384
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2409, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = add i32 %2411, 0
  %2413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2412, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2414 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2413, %dx.types.Handle %112, float %2105, float %2106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2415 = extractvalue %dx.types.ResRet.f32 %2414, 0
  %2416 = extractvalue %dx.types.ResRet.f32 %2414, 1
  %2417 = extractvalue %dx.types.ResRet.f32 %2414, 2
  %2418 = extractvalue %dx.types.ResRet.f32 %2414, 3
  %2419 = and i32 %2408, 255
  %2420 = uitofp i32 %2419 to float
  %2421 = lshr i32 %2408, 8
  %2422 = and i32 %2421, 255
  %2423 = uitofp i32 %2422 to float
  %2424 = lshr i32 %2408, 16
  %2425 = and i32 %2424, 255
  %2426 = uitofp i32 %2425 to float
  %2427 = fmul fast float %2426, 0x3F70101000000000
  %2428 = fmul fast float %2415, %2420
  %2429 = fadd fast float %2428, %2423
  %2430 = fmul fast float %2429, 0x3F70101000000000
  %2431 = fadd fast float %2416, -5.000000e-01
  %2432 = fadd fast float %2418, -5.000000e-01
  %2433 = fmul fast float %2431, %2427
  %2434 = fmul fast float %2432, %2427
  %2435 = fadd fast float %2433, 5.000000e-01
  %2436 = fadd fast float %2434, 5.000000e-01
  %2437 = fmul fast float %2435, 2.000000e+00
  %2438 = fadd fast float %2437, -1.000000e+00
  %2439 = fmul fast float %2436, 2.000000e+00
  %2440 = fadd fast float %2439, -1.000000e+00
  %2441 = fadd fast float %2438, %2440
  %2442 = fmul fast float %2441, 5.000000e-01
  %2443 = fsub fast float %2438, %2440
  %2444 = fmul fast float %2443, 5.000000e-01
  %2445 = call float @dx.op.unary.f32(i32 6, float %2442)  ; FAbs(value)
  %2446 = fsub fast float 1.000000e+00, %2445
  %2447 = call float @dx.op.unary.f32(i32 6, float %2444)  ; FAbs(value)
  %2448 = fsub fast float %2446, %2447
  %2449 = call float @dx.op.dot3.f32(i32 55, float %2442, float %2444, float %2448, float %2442, float %2444, float %2448)  ; Dot3(ax,ay,az,bx,by,bz)
  %2450 = call float @dx.op.unary.f32(i32 25, float %2449)  ; Rsqrt(value)
  %2451 = fmul fast float %2442, %2450
  %2452 = fmul fast float %2444, %2450
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = and i32 %2454, 67108864
  %2456 = icmp eq i32 %2455, 0
  br i1 %2456, label %2473, label %2457

; <label>:2457                                    ; preds = %2405
  %2458 = add i32 %61, 312
  %2459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2458, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.i32 %2459, 0
  %2461 = and i32 %2460, 65535
  %2462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2461)  ; LegacyF16ToF32(value)
  %2463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.i32 %2463, 0
  %2465 = and i32 %2464, 65535
  %2466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2465)  ; LegacyF16ToF32(value)
  %2467 = lshr i32 %2460, 16
  %2468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2467)  ; LegacyF16ToF32(value)
  %2469 = fsub fast float %2430, %2468
  %2470 = fmul fast float %2469, %2462
  %2471 = fadd fast float %2470, %2466
  %2472 = call float @dx.op.unary.f32(i32 7, float %2471)  ; Saturate(value)
  br label %2473

; <label>:2473                                    ; preds = %2457, %2405
  %2474 = phi float [ %2472, %2457 ], [ %2430, %2405 ]
  %2475 = call float @dx.op.dot2.f32(i32 54, float %2451, float %2452, float %2009, float %2010)  ; Dot2(ax,ay,bx,by)
  %2476 = call float @dx.op.dot2.f32(i32 54, float %2451, float %2452, float %2011, float %2012)  ; Dot2(ax,ay,bx,by)
  br label %2477

; <label>:2477                                    ; preds = %2473, %2383
  %2478 = phi float [ %2474, %2473 ], [ 0x3FD6666660000000, %2383 ]
  %2479 = phi float [ %2475, %2473 ], [ 0.000000e+00, %2383 ]
  %2480 = phi float [ %2476, %2473 ], [ 0.000000e+00, %2383 ]
  %2481 = phi float [ %2417, %2473 ], [ 1.000000e+00, %2383 ]
  %2482 = add i32 %61, 192
  %2483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2482, i32 undef)  ; BufferLoad(srv,index,wot)
  %2484 = extractvalue %dx.types.ResRet.i32 %2483, 0
  %2485 = lshr i32 %2484, 22
  %2486 = shl nuw nsw i32 %2485, 5
  %2487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2486)  ; LegacyF16ToF32(value)
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = and i32 %2489, 64
  %2491 = icmp eq i32 %2490, 0
  br i1 %2491, label %2525, label %2492

; <label>:2492                                    ; preds = %2477
  %2493 = add i32 %61, 400
  %2494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2493, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = add i32 %2495, 0
  %2497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2496, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2499 = extractvalue %dx.types.ResRet.i32 %2498, 0
  %2500 = and i32 %2499, 131072
  %2501 = icmp eq i32 %2500, 0
  %2502 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2497, %dx.types.Handle %112, float %2105, float %2106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2503 = extractvalue %dx.types.ResRet.f32 %2502, 0
  %2504 = extractvalue %dx.types.ResRet.f32 %2502, 1
  %2505 = extractvalue %dx.types.ResRet.f32 %2502, 2
  %2506 = fmul fast float %487, %2503
  %2507 = fmul fast float %488, %2504
  %2508 = fmul fast float %489, %2505
  br i1 %2501, label %2515, label %2509

; <label>:2509                                    ; preds = %2492
  %2510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2511 = extractvalue %dx.types.CBufRet.f32 %2510, 0
  %2512 = fmul fast float %2511, %2506
  %2513 = fmul fast float %2511, %2507
  %2514 = fmul fast float %2511, %2508
  br label %2515

; <label>:2515                                    ; preds = %2509, %2492
  %2516 = phi float [ %2512, %2509 ], [ %2506, %2492 ]
  %2517 = phi float [ %2513, %2509 ], [ %2507, %2492 ]
  %2518 = phi float [ %2514, %2509 ], [ %2508, %2492 ]
  %2519 = fmul fast float %2516, %2487
  %2520 = select i1 %262, float %2519, float %2516
  %2521 = call float @dx.op.dot3.f32(i32 55, float %2520, float %2517, float %2518, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2522 = select i1 %262, float 0.000000e+00, float %2516
  %2523 = select i1 %262, float %2521, float %2517
  %2524 = select i1 %262, float 0.000000e+00, float %2518
  br label %2525

; <label>:2525                                    ; preds = %2515, %2477
  %2526 = phi float [ %2522, %2515 ], [ 0.000000e+00, %2477 ]
  %2527 = phi float [ %2523, %2515 ], [ 0.000000e+00, %2477 ]
  %2528 = phi float [ %2524, %2515 ], [ 0.000000e+00, %2477 ]
  %2529 = add i32 %61, 128
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = and i32 %2531, 255
  %2533 = uitofp i32 %2532 to float
  %2534 = lshr i32 %2531, 8
  %2535 = and i32 %2534, 255
  %2536 = uitofp i32 %2535 to float
  %2537 = call float @dx.op.dot3.f32(i32 55, float %2398, float %2399, float %2400, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2538 = fmul fast float %2536, %2537
  %2539 = fadd fast float %2538, %2533
  %2540 = fmul fast float %2539, 0x3F70101020000000
  %2541 = call float @dx.op.unary.f32(i32 7, float %2540)  ; Saturate(value)
  br i1 %1997, label %2542, label %2550

; <label>:2542                                    ; preds = %2525
  %2543 = fsub fast float 1.000000e+00, %2178
  %2544 = fmul fast float %2543, %1989
  %2545 = fmul fast float %2543, %1990
  %2546 = fmul fast float %2543, %1991
  %2547 = fmul fast float %2543, %1986
  %2548 = fmul fast float %2543, %1987
  %2549 = fmul fast float %2543, %1988
  br label %2550

; <label>:2550                                    ; preds = %2542, %2525
  %2551 = phi float [ %2547, %2542 ], [ %1986, %2525 ]
  %2552 = phi float [ %2548, %2542 ], [ %1987, %2525 ]
  %2553 = phi float [ %2549, %2542 ], [ %1988, %2525 ]
  %2554 = phi float [ %2544, %2542 ], [ %1989, %2525 ]
  %2555 = phi float [ %2545, %2542 ], [ %1990, %2525 ]
  %2556 = phi float [ %2546, %2542 ], [ %1991, %2525 ]
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = and i32 %2558, 3
  %2560 = icmp eq i32 %2559, 3
  br i1 %2560, label %2639, label %2561

; <label>:2561                                    ; preds = %2550
  %2562 = and i32 %2558, 16
  %2563 = icmp ne i32 %2562, 0
  %2564 = select i1 %2563, float %2178, float 0.000000e+00
  %2565 = icmp eq i32 %2559, 0
  br i1 %2565, label %2566, label %2594

; <label>:2566                                    ; preds = %2561
  %2567 = and i32 %2558, 64
  %2568 = icmp ne i32 %2567, 0
  %2569 = select i1 %2568, float %2178, float 0.000000e+00
  %2570 = fsub fast float %2398, %2554
  %2571 = fsub fast float %2399, %2555
  %2572 = fsub fast float %2400, %2556
  %2573 = fmul fast float %2564, %2570
  %2574 = fmul fast float %2564, %2571
  %2575 = fmul fast float %2564, %2572
  %2576 = fadd fast float %2573, %2554
  %2577 = fadd fast float %2574, %2555
  %2578 = fadd fast float %2575, %2556
  %2579 = fsub fast float %2384, %1992
  %2580 = fmul fast float %2564, %2579
  %2581 = fadd fast float %2580, %1992
  %2582 = fsub fast float %2526, %2551
  %2583 = fsub fast float %2527, %2552
  %2584 = fsub fast float %2528, %2553
  %2585 = fmul fast float %2569, %2582
  %2586 = fmul fast float %2569, %2583
  %2587 = fmul fast float %2569, %2584
  %2588 = fadd fast float %2585, %2551
  %2589 = fadd fast float %2586, %2552
  %2590 = fadd fast float %2587, %2553
  %2591 = fsub fast float %2541, %1995
  %2592 = fmul fast float %2564, %2591
  %2593 = fadd fast float %2592, %1995
  br label %2639

; <label>:2594                                    ; preds = %2561
  %2595 = icmp eq i32 %2559, 1
  br i1 %2595, label %2596, label %2609

; <label>:2596                                    ; preds = %2594
  %2597 = fadd fast float %2398, -1.000000e+00
  %2598 = fadd fast float %2399, -1.000000e+00
  %2599 = fadd fast float %2400, -1.000000e+00
  %2600 = fmul fast float %2564, %2597
  %2601 = fmul fast float %2564, %2598
  %2602 = fmul fast float %2564, %2599
  %2603 = fadd fast float %2600, 1.000000e+00
  %2604 = fadd fast float %2601, 1.000000e+00
  %2605 = fadd fast float %2602, 1.000000e+00
  %2606 = fmul fast float %2603, %2554
  %2607 = fmul fast float %2604, %2555
  %2608 = fmul fast float %2605, %2556
  br label %2639

; <label>:2609                                    ; preds = %2594
  %2610 = icmp eq i32 %2559, 2
  br i1 %2610, label %2611, label %2639

; <label>:2611                                    ; preds = %2609
  %2612 = call float @dx.op.unary.f32(i32 24, float %2398)  ; Sqrt(value)
  %2613 = call float @dx.op.unary.f32(i32 24, float %2399)  ; Sqrt(value)
  %2614 = call float @dx.op.unary.f32(i32 24, float %2400)  ; Sqrt(value)
  %2615 = fadd fast float %2612, -5.000000e-01
  %2616 = fadd fast float %2613, -5.000000e-01
  %2617 = fadd fast float %2614, -5.000000e-01
  %2618 = fmul fast float %2615, %2564
  %2619 = fmul fast float %2616, %2564
  %2620 = fmul fast float %2617, %2564
  %2621 = fadd fast float %2618, 5.000000e-01
  %2622 = fadd fast float %2619, 5.000000e-01
  %2623 = fadd fast float %2620, 5.000000e-01
  %2624 = fmul fast float %2621, 2.000000e+00
  %2625 = fsub fast float 1.000000e+00, %2624
  %2626 = fmul fast float %2625, %2554
  %2627 = fadd fast float %2626, %2624
  %2628 = fmul fast float %2627, %2554
  %2629 = fmul fast float %2622, 2.000000e+00
  %2630 = fsub fast float 1.000000e+00, %2629
  %2631 = fmul fast float %2630, %2555
  %2632 = fadd fast float %2631, %2629
  %2633 = fmul fast float %2632, %2555
  %2634 = fmul fast float %2623, 2.000000e+00
  %2635 = fsub fast float 1.000000e+00, %2634
  %2636 = fmul fast float %2635, %2556
  %2637 = fadd fast float %2636, %2634
  %2638 = fmul fast float %2637, %2556
  br label %2639

; <label>:2639                                    ; preds = %2611, %2609, %2596, %2566, %2550
  %2640 = phi float [ %2551, %2550 ], [ %2551, %2611 ], [ %2551, %2609 ], [ %2551, %2596 ], [ %2588, %2566 ]
  %2641 = phi float [ %2552, %2550 ], [ %2552, %2611 ], [ %2552, %2609 ], [ %2552, %2596 ], [ %2589, %2566 ]
  %2642 = phi float [ %2553, %2550 ], [ %2553, %2611 ], [ %2553, %2609 ], [ %2553, %2596 ], [ %2590, %2566 ]
  %2643 = phi float [ %2554, %2550 ], [ %2628, %2611 ], [ %2554, %2609 ], [ %2606, %2596 ], [ %2576, %2566 ]
  %2644 = phi float [ %2555, %2550 ], [ %2633, %2611 ], [ %2555, %2609 ], [ %2607, %2596 ], [ %2577, %2566 ]
  %2645 = phi float [ %2556, %2550 ], [ %2638, %2611 ], [ %2556, %2609 ], [ %2608, %2596 ], [ %2578, %2566 ]
  %2646 = phi float [ %1992, %2550 ], [ %1992, %2611 ], [ %1992, %2609 ], [ %1992, %2596 ], [ %2581, %2566 ]
  %2647 = phi float [ %1995, %2550 ], [ %1995, %2611 ], [ %1995, %2609 ], [ %1995, %2596 ], [ %2593, %2566 ]
  %2648 = and i32 %2558, 12
  %2649 = icmp eq i32 %2648, 12
  br i1 %2649, label %2722, label %2650

; <label>:2650                                    ; preds = %2639
  %2651 = and i32 %2558, 2097184
  %2652 = icmp eq i32 %2651, 2097184
  %2653 = select i1 %2652, float %2178, float 0.000000e+00
  %2654 = and i32 %2558, 4194336
  %2655 = icmp eq i32 %2654, 4194336
  %2656 = select i1 %2655, float %2178, float 0.000000e+00
  %2657 = and i32 %2558, 8388640
  %2658 = icmp eq i32 %2657, 8388640
  %2659 = select i1 %2658, float %2178, float 0.000000e+00
  %2660 = icmp eq i32 %2648, 0
  br i1 %2660, label %2661, label %2674

; <label>:2661                                    ; preds = %2650
  %2662 = fsub fast float %2479, %1984
  %2663 = fsub fast float %2480, %1985
  %2664 = fmul fast float %2653, %2662
  %2665 = fmul fast float %2653, %2663
  %2666 = fadd fast float %2664, %1984
  %2667 = fadd fast float %2665, %1985
  %2668 = fsub fast float %2481, %1994
  %2669 = fmul fast float %2656, %2668
  %2670 = fadd fast float %2669, %1994
  %2671 = fsub fast float %2478, %1993
  %2672 = fmul fast float %2659, %2671
  %2673 = fadd fast float %2672, %1993
  br label %2722

; <label>:2674                                    ; preds = %2650
  %2675 = icmp eq i32 %2648, 4
  br i1 %2675, label %2676, label %2708

; <label>:2676                                    ; preds = %2674
  %2677 = fmul fast float %2653, %2479
  %2678 = fmul fast float %2653, %2480
  %2679 = fadd fast float %2677, %1984
  %2680 = fadd fast float %2678, %1985
  %2681 = call float @dx.op.binary.f32(i32 36, float %1994, float %2481)  ; FMin(a,b)
  %2682 = fsub fast float %2681, %1994
  %2683 = fmul fast float %2682, %2656
  %2684 = fadd fast float %2683, %1994
  %2685 = fadd fast float %2478, %1993
  %2686 = fmul fast float %2685, 0x3FF337FAE0000000
  %2687 = fmul fast float %1993, %1993
  %2688 = fmul fast float %2478, %2478
  %2689 = fadd fast float %2688, %2687
  %2690 = fmul fast float %2689, 0x3FE5152B00000000
  %2691 = fmul fast float %1993, 0xBFCC1F85E0000000
  %2692 = fmul fast float %2691, %2478
  %2693 = fadd fast float %2692, 0xBFE1363700000000
  %2694 = fadd fast float %2693, %2686
  %2695 = fsub fast float %2694, %2690
  %2696 = fmul fast float %2685, 0x3FBA6F0D00000000
  %2697 = fmul fast float %2689, 0x3FD0432880000000
  %2698 = fmul fast float %1993, 0xBFEF110800000000
  %2699 = fmul fast float %2698, %2478
  %2700 = fadd fast float %2699, 1.000000e+00
  %2701 = fsub fast float %2700, %2696
  %2702 = fadd fast float %2701, %2697
  %2703 = fdiv fast float %2695, %2702
  %2704 = call float @dx.op.unary.f32(i32 7, float %2703)  ; Saturate(value)
  %2705 = fsub fast float %2704, %1993
  %2706 = fmul fast float %2705, %2659
  %2707 = fadd fast float %2706, %1993
  br label %2722

; <label>:2708                                    ; preds = %2674
  %2709 = icmp eq i32 %2648, 8
  br i1 %2709, label %2710, label %2722

; <label>:2710                                    ; preds = %2708
  %2711 = fmul fast float %2653, %2479
  %2712 = fmul fast float %2653, %2480
  %2713 = fadd fast float %2711, %1984
  %2714 = fadd fast float %2712, %1985
  %2715 = call float @dx.op.binary.f32(i32 36, float %1994, float %2481)  ; FMin(a,b)
  %2716 = fsub fast float %2715, %1994
  %2717 = fmul fast float %2716, %2656
  %2718 = fadd fast float %2717, %1994
  %2719 = fsub fast float %2478, %1993
  %2720 = fmul fast float %2659, %2719
  %2721 = fadd fast float %2720, %1993
  br label %2722

; <label>:2722                                    ; preds = %2710, %2708, %2676, %2661, %2639, %2177, %1996, %1983
  %2723 = phi float [ %1984, %2639 ], [ %1984, %2177 ], [ %1984, %1983 ], [ %2713, %2710 ], [ %1984, %2708 ], [ %2679, %2676 ], [ %2666, %2661 ], [ %1984, %1996 ]
  %2724 = phi float [ %1985, %2639 ], [ %1985, %2177 ], [ %1985, %1983 ], [ %2714, %2710 ], [ %1985, %2708 ], [ %2680, %2676 ], [ %2667, %2661 ], [ %1985, %1996 ]
  %2725 = phi float [ %2640, %2639 ], [ %1986, %2177 ], [ %1986, %1983 ], [ %2640, %2710 ], [ %2640, %2708 ], [ %2640, %2676 ], [ %2640, %2661 ], [ %1986, %1996 ]
  %2726 = phi float [ %2641, %2639 ], [ %1987, %2177 ], [ %1987, %1983 ], [ %2641, %2710 ], [ %2641, %2708 ], [ %2641, %2676 ], [ %2641, %2661 ], [ %1987, %1996 ]
  %2727 = phi float [ %2642, %2639 ], [ %1988, %2177 ], [ %1988, %1983 ], [ %2642, %2710 ], [ %2642, %2708 ], [ %2642, %2676 ], [ %2642, %2661 ], [ %1988, %1996 ]
  %2728 = phi float [ %2643, %2639 ], [ %1989, %2177 ], [ %1989, %1983 ], [ %2643, %2710 ], [ %2643, %2708 ], [ %2643, %2676 ], [ %2643, %2661 ], [ %1989, %1996 ]
  %2729 = phi float [ %2644, %2639 ], [ %1990, %2177 ], [ %1990, %1983 ], [ %2644, %2710 ], [ %2644, %2708 ], [ %2644, %2676 ], [ %2644, %2661 ], [ %1990, %1996 ]
  %2730 = phi float [ %2645, %2639 ], [ %1991, %2177 ], [ %1991, %1983 ], [ %2645, %2710 ], [ %2645, %2708 ], [ %2645, %2676 ], [ %2645, %2661 ], [ %1991, %1996 ]
  %2731 = phi float [ %2646, %2639 ], [ %1992, %2177 ], [ %1992, %1983 ], [ %2646, %2710 ], [ %2646, %2708 ], [ %2646, %2676 ], [ %2646, %2661 ], [ %1992, %1996 ]
  %2732 = phi float [ %1993, %2639 ], [ %1993, %2177 ], [ %1993, %1983 ], [ %2721, %2710 ], [ %1993, %2708 ], [ %2707, %2676 ], [ %2673, %2661 ], [ %1993, %1996 ]
  %2733 = phi float [ %1994, %2639 ], [ %1994, %2177 ], [ %1994, %1983 ], [ %2718, %2710 ], [ %1994, %2708 ], [ %2684, %2676 ], [ %2670, %2661 ], [ %1994, %1996 ]
  %2734 = phi float [ %2647, %2639 ], [ %1995, %2177 ], [ %1995, %1983 ], [ %2647, %2710 ], [ %2647, %2708 ], [ %2647, %2676 ], [ %2647, %2661 ], [ %1995, %1996 ]
  br i1 %646, label %3461, label %2735

; <label>:2735                                    ; preds = %2722
  %2736 = icmp ult i32 %700, 4
  %2737 = add i32 %61, 72
  %2738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2739 = extractvalue %dx.types.ResRet.i32 %2738, 0
  %2740 = add i32 %61, 76
  %2741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2742 = extractvalue %dx.types.ResRet.i32 %2741, 0
  %2743 = or i32 %2742, %2739
  %2744 = icmp eq i32 %2743, 0
  br i1 %2744, label %3461, label %2745

; <label>:2745                                    ; preds = %2735
  %2746 = and i32 %2739, 262144
  %2747 = icmp ne i32 %2746, 0
  %2748 = select i1 %2747, float %67, float 1.000000e+00
  %2749 = select i1 %2747, float %68, float 0.000000e+00
  %2750 = select i1 %2747, float %69, float 0.000000e+00
  %2751 = select i1 %2747, float %70, float 1.000000e+00
  %2752 = select i1 %2747, float %71, float %94
  %2753 = select i1 %2747, float %72, float %95
  %2754 = add i32 %61, 332
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = lshr i32 %2756, 16
  %2758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2757)  ; LegacyF16ToF32(value)
  %2759 = fmul fast float %2758, 0x3F50624DE0000000
  %2760 = add i32 %61, 136
  %2761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.i32 %2761, 0
  %2763 = lshr i32 %2762, 16
  %2764 = and i32 %2763, 255
  %2765 = lshr i32 %2762, 24
  %2766 = add i32 %61, 340
  %2767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.i32 %2767, 0
  %2769 = and i32 %2768, 65535
  %2770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2769)  ; LegacyF16ToF32(value)
  %2771 = lshr i32 %2768, 16
  %2772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2771)  ; LegacyF16ToF32(value)
  %2773 = add i32 %61, 80
  %2774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2775 = extractvalue %dx.types.ResRet.i32 %2774, 0
  %2776 = lshr i32 %2775, 22
  %2777 = shl nuw nsw i32 %2776, 5
  %2778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2777)  ; LegacyF16ToF32(value)
  %2779 = shl i32 %2775, 4
  %2780 = and i32 %2779, 32752
  %2781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2780)  ; LegacyF16ToF32(value)
  %2782 = lshr i32 %2775, 7
  %2783 = and i32 %2782, 32752
  %2784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2783)  ; LegacyF16ToF32(value)
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 3
  %2787 = fmul fast float %2786, 1.000000e+03
  %2788 = fmul fast float %2787, %635
  %2789 = call float @dx.op.unary.f32(i32 22, float %2788)  ; Frc(value)
  %2790 = fadd fast float %2789, %623
  %2791 = fmul fast float %2787, %637
  %2792 = call float @dx.op.unary.f32(i32 22, float %2791)  ; Frc(value)
  %2793 = fadd fast float %2792, %624
  %2794 = fmul fast float %2759, %2787
  %2795 = call float @dx.op.unary.f32(i32 22, float %2794)  ; Frc(value)
  %2796 = fmul fast float %2795, 0x401921FB60000000
  %2797 = fadd fast float %2796, %2778
  %2798 = call float @dx.op.unary.f32(i32 13, float %2797)  ; Sin(value)
  %2799 = call float @dx.op.unary.f32(i32 12, float %2797)  ; Cos(value)
  %2800 = fsub fast float -0.000000e+00, %2798
  %2801 = fadd fast float %2752, -5.000000e-01
  %2802 = fadd fast float %2753, -5.000000e-01
  %2803 = fmul fast float %2770, %2801
  %2804 = fmul fast float %2772, %2802
  %2805 = fadd fast float %2803, 5.000000e-01
  %2806 = fadd fast float %2804, 5.000000e-01
  %2807 = fmul fast float %2781, %2805
  %2808 = fmul fast float %2784, %2806
  %2809 = fmul fast float %2799, %2807
  %2810 = call float @dx.op.tertiary.f32(i32 46, float %2800, float %2808, float %2809)  ; FMad(a,b,c)
  %2811 = fmul fast float %2798, %2807
  %2812 = call float @dx.op.tertiary.f32(i32 46, float %2799, float %2808, float %2811)  ; FMad(a,b,c)
  %2813 = fadd fast float %2790, %2810
  %2814 = fadd fast float %2793, %2812
  %2815 = icmp ugt i32 %2764, 1
  %2816 = icmp ugt i32 %2762, 33554431
  %2817 = or i1 %2816, %2815
  br i1 %2817, label %2818, label %2843

; <label>:2818                                    ; preds = %2745
  %2819 = add i32 %61, 276
  %2820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %2821 = extractvalue %dx.types.ResRet.i32 %2820, 0
  %2822 = lshr i32 %2821, 16
  %2823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2822)  ; LegacyF16ToF32(value)
  %2824 = fmul fast float %2786, %2823
  %2825 = call float @dx.op.unary.f32(i32 22, float %2824)  ; Frc(value)
  %2826 = mul nuw nsw i32 %2764, %2765
  %2827 = uitofp i32 %2826 to float
  %2828 = fmul fast float %2825, %2827
  %2829 = call float @dx.op.unary.f32(i32 27, float %2828)  ; Round_ni(value)
  %2830 = fptoui float %2829 to i32
  %2831 = urem i32 %2830, %2764
  %2832 = udiv i32 %2830, %2765
  %2833 = call float @dx.op.unary.f32(i32 22, float %2813)  ; Frc(value)
  %2834 = call float @dx.op.unary.f32(i32 22, float %2814)  ; Frc(value)
  %2835 = uitofp i32 %2831 to float
  %2836 = uitofp i32 %2832 to float
  %2837 = fadd fast float %2833, %2835
  %2838 = fadd fast float %2834, %2836
  %2839 = uitofp i32 %2764 to float
  %2840 = uitofp i32 %2765 to float
  %2841 = fdiv fast float %2837, %2839
  %2842 = fdiv fast float %2838, %2840
  br label %2843

; <label>:2843                                    ; preds = %2818, %2745
  %2844 = phi float [ %2841, %2818 ], [ %2813, %2745 ]
  %2845 = phi float [ %2842, %2818 ], [ %2814, %2745 ]
  %2846 = and i32 %2739, 256
  %2847 = icmp eq i32 %2846, 0
  br i1 %2847, label %2894, label %2848

; <label>:2848                                    ; preds = %2843
  %2849 = add i32 %61, 436
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = add i32 %2851, 0
  %2853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2852, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2854 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2853, %dx.types.Handle %113, float %2844, float %2845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2855 = extractvalue %dx.types.ResRet.f32 %2854, 0
  %2856 = add i32 %61, 148
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = shl i32 %2858, 4
  %2860 = and i32 %2859, 32752
  %2861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2860)  ; LegacyF16ToF32(value)
  %2862 = lshr i32 %2858, 7
  %2863 = and i32 %2862, 32752
  %2864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2863)  ; LegacyF16ToF32(value)
  %2865 = fsub fast float 1.000000e+00, %695
  %2866 = call float @dx.op.binary.f32(i32 35, float %2865, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2867 = bitcast float %695 to i32
  %2868 = sitofp i32 %2867 to float
  %2869 = fadd fast float %2868, 0xC1CFBF8940000000
  %2870 = fmul fast float %2864, %2869
  %2871 = fadd fast float %2870, 0x41CFBF8940000000
  %2872 = fptosi float %2871 to i32
  %2873 = bitcast i32 %2872 to float
  %2874 = bitcast float %2866 to i32
  %2875 = sitofp i32 %2874 to float
  %2876 = fadd fast float %2875, 0xC1CFBF8940000000
  %2877 = fmul fast float %2876, %2864
  %2878 = fadd fast float %2877, 0x41CFBF8940000000
  %2879 = fptosi float %2878 to i32
  %2880 = bitcast i32 %2879 to float
  %2881 = fmul fast float %2873, %2861
  %2882 = fmul fast float %2880, %2861
  %2883 = fsub fast float %2866, %2881
  %2884 = fadd fast float %2882, %2866
  %2885 = call float @dx.op.unary.f32(i32 7, float %2883)  ; Saturate(value)
  %2886 = call float @dx.op.unary.f32(i32 7, float %2884)  ; Saturate(value)
  %2887 = fsub fast float %2855, %2885
  %2888 = fsub fast float %2886, %2885
  %2889 = bitcast float %2888 to i32
  %2890 = sub nsw i32 2129859010, %2889
  %2891 = bitcast i32 %2890 to float
  %2892 = fmul fast float %2891, %2887
  %2893 = call float @dx.op.unary.f32(i32 7, float %2892)  ; Saturate(value)
  br label %2894

; <label>:2894                                    ; preds = %2848, %2843
  %2895 = phi float [ %2893, %2848 ], [ %695, %2843 ]
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = and i32 %2897, 128
  %2899 = icmp eq i32 %2898, 0
  br i1 %2899, label %2916, label %2900

; <label>:2900                                    ; preds = %2894
  %2901 = add i32 %61, 420
  %2902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2901, i32 undef)  ; BufferLoad(srv,index,wot)
  %2903 = extractvalue %dx.types.ResRet.i32 %2902, 0
  %2904 = add i32 %2903, 0
  %2905 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2904, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2906 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2905, %dx.types.Handle %113, float %2844, float %2845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2907 = extractvalue %dx.types.ResRet.f32 %2906, 0
  %2908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2909 = extractvalue %dx.types.ResRet.i32 %2908, 0
  %2910 = and i32 %2909, 524288
  %2911 = icmp ne i32 %2910, 0
  %2912 = fcmp fast ogt float %2907, 0x3FE0101020000000
  %2913 = select i1 %2912, float 1.000000e+00, float 0.000000e+00
  %2914 = select i1 %2911, float %2913, float %2907
  %2915 = fmul fast float %2914, %2895
  br label %2916

; <label>:2916                                    ; preds = %2900, %2894
  %2917 = phi float [ %2915, %2900 ], [ %2895, %2894 ]
  %2918 = fcmp fast ult float %2917, 0x3F70101020000000
  br i1 %2918, label %3461, label %2919

; <label>:2919                                    ; preds = %2916
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = and i32 %2921, 16
  %2923 = icmp eq i32 %2922, 0
  br i1 %2923, label %3122, label %2924

; <label>:2924                                    ; preds = %2919
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = add i32 %61, 372
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = add i32 %2929, 0
  %2931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2930, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2932 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2931, %dx.types.Handle %112, float %2844, float %2845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2933 = extractvalue %dx.types.ResRet.f32 %2932, 0
  %2934 = extractvalue %dx.types.ResRet.f32 %2932, 1
  %2935 = extractvalue %dx.types.ResRet.f32 %2932, 2
  %2936 = extractvalue %dx.types.ResRet.f32 %2932, 3
  %2937 = and i32 %2926, 255
  %2938 = uitofp i32 %2937 to float
  %2939 = lshr i32 %2926, 8
  %2940 = and i32 %2939, 255
  %2941 = uitofp i32 %2940 to float
  %2942 = fmul fast float %2936, %2938
  %2943 = fadd fast float %2942, %2941
  %2944 = fmul fast float %2943, 0x3F70101000000000
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = and i32 %2946, 512
  %2948 = icmp eq i32 %2947, 0
  br i1 %2948, label %2957, label %2949

; <label>:2949                                    ; preds = %2924
  %2950 = add i32 %61, 452
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = add i32 %2952, 0
  %2954 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2953, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2955 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2954, %dx.types.Handle %113, float %2844, float %2845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2956 = extractvalue %dx.types.ResRet.f32 %2955, 0
  br label %2957

; <label>:2957                                    ; preds = %2949, %2924
  %2958 = phi float [ %2956, %2949 ], [ 1.000000e+00, %2924 ]
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = and i32 %2960, 33554432
  %2962 = icmp eq i32 %2961, 0
  br i1 %2962, label %3069, label %2963

; <label>:2963                                    ; preds = %2957
  %2964 = add i32 %61, 272
  %2965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2964, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.i32 %2965, 0
  %2967 = and i32 %2966, 65535
  %2968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2967)  ; LegacyF16ToF32(value)
  %2969 = lshr i32 %2966, 16
  %2970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2969)  ; LegacyF16ToF32(value)
  %2971 = add i32 %61, 276
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2971, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = and i32 %2973, 65535
  %2975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2974)  ; LegacyF16ToF32(value)
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = lshr i32 %2977, 24
  %2979 = uitofp i32 %2978 to float
  %2980 = fmul fast float %2979, 0x3F70101020000000
  %2981 = and i32 %2977, 255
  %2982 = uitofp i32 %2981 to float
  %2983 = fmul fast float %2982, 0x3F70101020000000
  %2984 = lshr i32 %2977, 8
  %2985 = and i32 %2984, 255
  %2986 = uitofp i32 %2985 to float
  %2987 = fmul fast float %2986, 0x3F70101020000000
  %2988 = lshr i32 %2977, 16
  %2989 = and i32 %2988, 255
  %2990 = uitofp i32 %2989 to float
  %2991 = fmul fast float %2990, 0x3F70101020000000
  %2992 = add i32 %61, 268
  %2993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.i32 %2993, 0
  %2995 = lshr i32 %2994, 24
  %2996 = uitofp i32 %2995 to float
  %2997 = fmul fast float %2996, 0x3F70101020000000
  %2998 = and i32 %2994, 255
  %2999 = uitofp i32 %2998 to float
  %3000 = fmul fast float %2999, 0x3F70101020000000
  %3001 = lshr i32 %2994, 8
  %3002 = and i32 %3001, 255
  %3003 = uitofp i32 %3002 to float
  %3004 = fmul fast float %3003, 0x3F70101020000000
  %3005 = lshr i32 %2994, 16
  %3006 = and i32 %3005, 255
  %3007 = uitofp i32 %3006 to float
  %3008 = fmul fast float %3007, 0x3F70101020000000
  %3009 = bitcast float %2933 to i32
  %3010 = ashr i32 %3009, 1
  %3011 = sub nsw i32 1597463174, %3010
  %3012 = bitcast i32 %3011 to float
  %3013 = fmul fast float %2933, 5.000000e-01
  %3014 = fmul fast float %3012, %3012
  %3015 = fmul fast float %3014, %3013
  %3016 = fsub fast float 1.500000e+00, %3015
  %3017 = fmul fast float %3012, %2933
  %3018 = fmul fast float %3017, %3016
  %3019 = bitcast float %2934 to i32
  %3020 = ashr i32 %3019, 1
  %3021 = sub nsw i32 1597463174, %3020
  %3022 = bitcast i32 %3021 to float
  %3023 = fmul fast float %2934, 5.000000e-01
  %3024 = fmul fast float %3022, %3022
  %3025 = fmul fast float %3024, %3023
  %3026 = fsub fast float 1.500000e+00, %3025
  %3027 = fmul fast float %3022, %2934
  %3028 = fmul fast float %3027, %3026
  %3029 = bitcast float %2935 to i32
  %3030 = ashr i32 %3029, 1
  %3031 = sub nsw i32 1597463174, %3030
  %3032 = bitcast i32 %3031 to float
  %3033 = fmul fast float %2935, 5.000000e-01
  %3034 = fmul fast float %3032, %3032
  %3035 = fmul fast float %3034, %3033
  %3036 = fsub fast float 1.500000e+00, %3035
  %3037 = fmul fast float %3032, %2935
  %3038 = fmul fast float %3037, %3036
  %3039 = fsub fast float %3018, %3000
  %3040 = fsub fast float %3028, %3004
  %3041 = fsub fast float %3038, %3008
  %3042 = fmul fast float %3039, %2968
  %3043 = fmul fast float %3040, %2970
  %3044 = fmul fast float %3041, %2975
  %3045 = fadd fast float %3042, %2983
  %3046 = fadd fast float %3043, %2987
  %3047 = fadd fast float %3044, %2991
  %3048 = call float @dx.op.unary.f32(i32 7, float %3045)  ; Saturate(value)
  %3049 = call float @dx.op.unary.f32(i32 7, float %3046)  ; Saturate(value)
  %3050 = call float @dx.op.unary.f32(i32 7, float %3047)  ; Saturate(value)
  %3051 = fmul fast float %3048, %3048
  %3052 = fmul fast float %3049, %3049
  %3053 = fmul fast float %3050, %3050
  %3054 = fsub fast float %3051, %2933
  %3055 = fsub fast float %3052, %2934
  %3056 = fsub fast float %3053, %2935
  %3057 = fmul fast float %3054, %2958
  %3058 = fmul fast float %3055, %2958
  %3059 = fmul fast float %3056, %2958
  %3060 = fadd fast float %3057, %2933
  %3061 = fadd fast float %3058, %2934
  %3062 = fadd fast float %3059, %2935
  %3063 = fadd fast float %2980, %2944
  %3064 = fsub fast float %3063, %2997
  %3065 = call float @dx.op.unary.f32(i32 7, float %3064)  ; Saturate(value)
  %3066 = fsub fast float %3065, %2944
  %3067 = fmul fast float %3066, %2958
  %3068 = fadd fast float %3067, %2944
  br label %3122

; <label>:3069                                    ; preds = %2957
  %3070 = and i32 %2960, 134217728
  %3071 = icmp eq i32 %3070, 0
  br i1 %3071, label %3106, label %3072

; <label>:3072                                    ; preds = %3069
  %3073 = call float @dx.op.unary.f32(i32 24, float %611)  ; Sqrt(value)
  %3074 = call float @dx.op.unary.f32(i32 24, float %612)  ; Sqrt(value)
  %3075 = call float @dx.op.unary.f32(i32 24, float %613)  ; Sqrt(value)
  %3076 = fadd fast float %3073, -5.000000e-01
  %3077 = fadd fast float %3074, -5.000000e-01
  %3078 = fadd fast float %3075, -5.000000e-01
  %3079 = fmul fast float %3076, %2958
  %3080 = fmul fast float %3077, %2958
  %3081 = fmul fast float %3078, %2958
  %3082 = fadd fast float %3079, 5.000000e-01
  %3083 = fadd fast float %3080, 5.000000e-01
  %3084 = fadd fast float %3081, 5.000000e-01
  %3085 = call float @dx.op.unary.f32(i32 24, float %2933)  ; Sqrt(value)
  %3086 = call float @dx.op.unary.f32(i32 24, float %2934)  ; Sqrt(value)
  %3087 = call float @dx.op.unary.f32(i32 24, float %2935)  ; Sqrt(value)
  %3088 = fmul fast float %3082, 2.000000e+00
  %3089 = fsub fast float 1.000000e+00, %3088
  %3090 = fmul fast float %3089, %3085
  %3091 = fadd fast float %3090, %3088
  %3092 = fmul fast float %3091, %3085
  %3093 = fmul fast float %3083, 2.000000e+00
  %3094 = fsub fast float 1.000000e+00, %3093
  %3095 = fmul fast float %3094, %3086
  %3096 = fadd fast float %3095, %3093
  %3097 = fmul fast float %3096, %3086
  %3098 = fmul fast float %3084, 2.000000e+00
  %3099 = fsub fast float 1.000000e+00, %3098
  %3100 = fmul fast float %3099, %3087
  %3101 = fadd fast float %3100, %3098
  %3102 = fmul fast float %3101, %3087
  %3103 = fmul fast float %3092, %3092
  %3104 = fmul fast float %3097, %3097
  %3105 = fmul fast float %3102, %3102
  br label %3122

; <label>:3106                                    ; preds = %3069
  %3107 = fmul fast float %611, %611
  %3108 = fmul fast float %612, %612
  %3109 = fmul fast float %613, %613
  %3110 = fadd fast float %3107, -1.000000e+00
  %3111 = fadd fast float %3108, -1.000000e+00
  %3112 = fadd fast float %3109, -1.000000e+00
  %3113 = fmul fast float %2958, %3110
  %3114 = fmul fast float %2958, %3111
  %3115 = fmul fast float %2958, %3112
  %3116 = fadd fast float %3113, 1.000000e+00
  %3117 = fadd fast float %3114, 1.000000e+00
  %3118 = fadd fast float %3115, 1.000000e+00
  %3119 = fmul fast float %3116, %2933
  %3120 = fmul fast float %3117, %2934
  %3121 = fmul fast float %3118, %2935
  br label %3122

; <label>:3122                                    ; preds = %3106, %3072, %2963, %2919
  %3123 = phi float [ %3068, %2963 ], [ %2944, %3072 ], [ %2944, %3106 ], [ 0x3FA23C0BE0000000, %2919 ]
  %3124 = phi float [ %3060, %2963 ], [ %3103, %3072 ], [ %3119, %3106 ], [ 1.000000e+00, %2919 ]
  %3125 = phi float [ %3061, %2963 ], [ %3104, %3072 ], [ %3120, %3106 ], [ 1.000000e+00, %2919 ]
  %3126 = phi float [ %3062, %2963 ], [ %3105, %3072 ], [ %3121, %3106 ], [ 1.000000e+00, %2919 ]
  %3127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3128 = extractvalue %dx.types.CBufRet.i32 %3127, 1
  %3129 = and i32 %3128, 1
  %3130 = icmp ne i32 %3129, 0
  %3131 = add i32 %61, 356
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3131, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = and i32 %3133, 32
  %3135 = icmp ne i32 %3134, 0
  %3136 = and i1 %3130, %3135
  %3137 = select i1 %3136, float 1.000000e+00, float %3124
  %3138 = select i1 %3136, float 0x3FD3333340000000, float %3125
  %3139 = select i1 %3136, float 0x3FD3333340000000, float %3126
  %3140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3141 = extractvalue %dx.types.ResRet.i32 %3140, 0
  %3142 = and i32 %3141, 32
  %3143 = icmp eq i32 %3142, 0
  br i1 %3143, label %3216, label %3144

; <label>:3144                                    ; preds = %3122
  %3145 = add i32 %61, 140
  %3146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3145, i32 undef)  ; BufferLoad(srv,index,wot)
  %3147 = extractvalue %dx.types.ResRet.i32 %3146, 0
  %3148 = add i32 %61, 388
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = add i32 %3150, 0
  %3152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3151, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3153 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3152, %dx.types.Handle %112, float %2844, float %2845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3154 = extractvalue %dx.types.ResRet.f32 %3153, 0
  %3155 = extractvalue %dx.types.ResRet.f32 %3153, 1
  %3156 = extractvalue %dx.types.ResRet.f32 %3153, 2
  %3157 = extractvalue %dx.types.ResRet.f32 %3153, 3
  %3158 = and i32 %3147, 255
  %3159 = uitofp i32 %3158 to float
  %3160 = lshr i32 %3147, 8
  %3161 = and i32 %3160, 255
  %3162 = uitofp i32 %3161 to float
  %3163 = lshr i32 %3147, 16
  %3164 = and i32 %3163, 255
  %3165 = uitofp i32 %3164 to float
  %3166 = fmul fast float %3165, 0x3F70101000000000
  %3167 = fmul fast float %3154, %3159
  %3168 = fadd fast float %3167, %3162
  %3169 = fmul fast float %3168, 0x3F70101000000000
  %3170 = fadd fast float %3155, -5.000000e-01
  %3171 = fadd fast float %3157, -5.000000e-01
  %3172 = fmul fast float %3170, %3166
  %3173 = fmul fast float %3171, %3166
  %3174 = fadd fast float %3172, 5.000000e-01
  %3175 = fadd fast float %3173, 5.000000e-01
  %3176 = fmul fast float %3174, 2.000000e+00
  %3177 = fadd fast float %3176, -1.000000e+00
  %3178 = fmul fast float %3175, 2.000000e+00
  %3179 = fadd fast float %3178, -1.000000e+00
  %3180 = fadd fast float %3177, %3179
  %3181 = fmul fast float %3180, 5.000000e-01
  %3182 = fsub fast float %3177, %3179
  %3183 = fmul fast float %3182, 5.000000e-01
  %3184 = call float @dx.op.unary.f32(i32 6, float %3181)  ; FAbs(value)
  %3185 = fsub fast float 1.000000e+00, %3184
  %3186 = call float @dx.op.unary.f32(i32 6, float %3183)  ; FAbs(value)
  %3187 = fsub fast float %3185, %3186
  %3188 = call float @dx.op.dot3.f32(i32 55, float %3181, float %3183, float %3187, float %3181, float %3183, float %3187)  ; Dot3(ax,ay,az,bx,by,bz)
  %3189 = call float @dx.op.unary.f32(i32 25, float %3188)  ; Rsqrt(value)
  %3190 = fmul fast float %3181, %3189
  %3191 = fmul fast float %3183, %3189
  %3192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.i32 %3192, 0
  %3194 = and i32 %3193, 67108864
  %3195 = icmp eq i32 %3194, 0
  br i1 %3195, label %3212, label %3196

; <label>:3196                                    ; preds = %3144
  %3197 = add i32 %61, 328
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3197, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = and i32 %3199, 65535
  %3201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3200)  ; LegacyF16ToF32(value)
  %3202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.i32 %3202, 0
  %3204 = and i32 %3203, 65535
  %3205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3204)  ; LegacyF16ToF32(value)
  %3206 = lshr i32 %3199, 16
  %3207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3206)  ; LegacyF16ToF32(value)
  %3208 = fsub fast float %3169, %3207
  %3209 = fmul fast float %3208, %3201
  %3210 = fadd fast float %3209, %3205
  %3211 = call float @dx.op.unary.f32(i32 7, float %3210)  ; Saturate(value)
  br label %3212

; <label>:3212                                    ; preds = %3196, %3144
  %3213 = phi float [ %3211, %3196 ], [ %3169, %3144 ]
  %3214 = call float @dx.op.dot2.f32(i32 54, float %3190, float %3191, float %2748, float %2749)  ; Dot2(ax,ay,bx,by)
  %3215 = call float @dx.op.dot2.f32(i32 54, float %3190, float %3191, float %2750, float %2751)  ; Dot2(ax,ay,bx,by)
  br label %3216

; <label>:3216                                    ; preds = %3212, %3122
  %3217 = phi float [ %3213, %3212 ], [ 0x3FD6666660000000, %3122 ]
  %3218 = phi float [ %3214, %3212 ], [ 0.000000e+00, %3122 ]
  %3219 = phi float [ %3215, %3212 ], [ 0.000000e+00, %3122 ]
  %3220 = phi float [ %3156, %3212 ], [ 1.000000e+00, %3122 ]
  %3221 = add i32 %61, 208
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3221, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = lshr i32 %3223, 22
  %3225 = shl nuw nsw i32 %3224, 5
  %3226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3225)  ; LegacyF16ToF32(value)
  %3227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.i32 %3227, 0
  %3229 = and i32 %3228, 64
  %3230 = icmp eq i32 %3229, 0
  br i1 %3230, label %3264, label %3231

; <label>:3231                                    ; preds = %3216
  %3232 = add i32 %61, 404
  %3233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3232, i32 undef)  ; BufferLoad(srv,index,wot)
  %3234 = extractvalue %dx.types.ResRet.i32 %3233, 0
  %3235 = add i32 %3234, 0
  %3236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3235, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3238 = extractvalue %dx.types.ResRet.i32 %3237, 0
  %3239 = and i32 %3238, 131072
  %3240 = icmp eq i32 %3239, 0
  %3241 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3236, %dx.types.Handle %112, float %2844, float %2845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3242 = extractvalue %dx.types.ResRet.f32 %3241, 0
  %3243 = extractvalue %dx.types.ResRet.f32 %3241, 1
  %3244 = extractvalue %dx.types.ResRet.f32 %3241, 2
  %3245 = fmul fast float %594, %3242
  %3246 = fmul fast float %595, %3243
  %3247 = fmul fast float %596, %3244
  br i1 %3240, label %3254, label %3248

; <label>:3248                                    ; preds = %3231
  %3249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3250 = extractvalue %dx.types.CBufRet.f32 %3249, 0
  %3251 = fmul fast float %3250, %3245
  %3252 = fmul fast float %3250, %3246
  %3253 = fmul fast float %3250, %3247
  br label %3254

; <label>:3254                                    ; preds = %3248, %3231
  %3255 = phi float [ %3251, %3248 ], [ %3245, %3231 ]
  %3256 = phi float [ %3252, %3248 ], [ %3246, %3231 ]
  %3257 = phi float [ %3253, %3248 ], [ %3247, %3231 ]
  %3258 = fmul fast float %3255, %3226
  %3259 = select i1 %262, float %3258, float %3255
  %3260 = call float @dx.op.dot3.f32(i32 55, float %3259, float %3256, float %3257, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3261 = select i1 %262, float 0.000000e+00, float %3255
  %3262 = select i1 %262, float %3260, float %3256
  %3263 = select i1 %262, float 0.000000e+00, float %3257
  br label %3264

; <label>:3264                                    ; preds = %3254, %3216
  %3265 = phi float [ %3261, %3254 ], [ 0.000000e+00, %3216 ]
  %3266 = phi float [ %3262, %3254 ], [ 0.000000e+00, %3216 ]
  %3267 = phi float [ %3263, %3254 ], [ 0.000000e+00, %3216 ]
  %3268 = add i32 %61, 144
  %3269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3270 = extractvalue %dx.types.ResRet.i32 %3269, 0
  %3271 = and i32 %3270, 255
  %3272 = uitofp i32 %3271 to float
  %3273 = lshr i32 %3270, 8
  %3274 = and i32 %3273, 255
  %3275 = uitofp i32 %3274 to float
  %3276 = call float @dx.op.dot3.f32(i32 55, float %3137, float %3138, float %3139, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3277 = fmul fast float %3275, %3276
  %3278 = fadd fast float %3277, %3272
  %3279 = fmul fast float %3278, 0x3F70101020000000
  %3280 = call float @dx.op.unary.f32(i32 7, float %3279)  ; Saturate(value)
  br i1 %2736, label %3281, label %3289

; <label>:3281                                    ; preds = %3264
  %3282 = fsub fast float 1.000000e+00, %2917
  %3283 = fmul fast float %3282, %2728
  %3284 = fmul fast float %3282, %2729
  %3285 = fmul fast float %3282, %2730
  %3286 = fmul fast float %3282, %2725
  %3287 = fmul fast float %3282, %2726
  %3288 = fmul fast float %3282, %2727
  br label %3289

; <label>:3289                                    ; preds = %3281, %3264
  %3290 = phi float [ %3286, %3281 ], [ %2725, %3264 ]
  %3291 = phi float [ %3287, %3281 ], [ %2726, %3264 ]
  %3292 = phi float [ %3288, %3281 ], [ %2727, %3264 ]
  %3293 = phi float [ %3283, %3281 ], [ %2728, %3264 ]
  %3294 = phi float [ %3284, %3281 ], [ %2729, %3264 ]
  %3295 = phi float [ %3285, %3281 ], [ %2730, %3264 ]
  %3296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3297 = extractvalue %dx.types.ResRet.i32 %3296, 0
  %3298 = and i32 %3297, 3
  %3299 = icmp eq i32 %3298, 3
  br i1 %3299, label %3378, label %3300

; <label>:3300                                    ; preds = %3289
  %3301 = and i32 %3297, 16
  %3302 = icmp ne i32 %3301, 0
  %3303 = select i1 %3302, float %2917, float 0.000000e+00
  %3304 = icmp eq i32 %3298, 0
  br i1 %3304, label %3305, label %3333

; <label>:3305                                    ; preds = %3300
  %3306 = and i32 %3297, 64
  %3307 = icmp ne i32 %3306, 0
  %3308 = select i1 %3307, float %2917, float 0.000000e+00
  %3309 = fsub fast float %3137, %3293
  %3310 = fsub fast float %3138, %3294
  %3311 = fsub fast float %3139, %3295
  %3312 = fmul fast float %3303, %3309
  %3313 = fmul fast float %3303, %3310
  %3314 = fmul fast float %3303, %3311
  %3315 = fadd fast float %3312, %3293
  %3316 = fadd fast float %3313, %3294
  %3317 = fadd fast float %3314, %3295
  %3318 = fsub fast float %3123, %2731
  %3319 = fmul fast float %3303, %3318
  %3320 = fadd fast float %3319, %2731
  %3321 = fsub fast float %3265, %3290
  %3322 = fsub fast float %3266, %3291
  %3323 = fsub fast float %3267, %3292
  %3324 = fmul fast float %3308, %3321
  %3325 = fmul fast float %3308, %3322
  %3326 = fmul fast float %3308, %3323
  %3327 = fadd fast float %3324, %3290
  %3328 = fadd fast float %3325, %3291
  %3329 = fadd fast float %3326, %3292
  %3330 = fsub fast float %3280, %2734
  %3331 = fmul fast float %3303, %3330
  %3332 = fadd fast float %3331, %2734
  br label %3378

; <label>:3333                                    ; preds = %3300
  %3334 = icmp eq i32 %3298, 1
  br i1 %3334, label %3335, label %3348

; <label>:3335                                    ; preds = %3333
  %3336 = fadd fast float %3137, -1.000000e+00
  %3337 = fadd fast float %3138, -1.000000e+00
  %3338 = fadd fast float %3139, -1.000000e+00
  %3339 = fmul fast float %3303, %3336
  %3340 = fmul fast float %3303, %3337
  %3341 = fmul fast float %3303, %3338
  %3342 = fadd fast float %3339, 1.000000e+00
  %3343 = fadd fast float %3340, 1.000000e+00
  %3344 = fadd fast float %3341, 1.000000e+00
  %3345 = fmul fast float %3342, %3293
  %3346 = fmul fast float %3343, %3294
  %3347 = fmul fast float %3344, %3295
  br label %3378

; <label>:3348                                    ; preds = %3333
  %3349 = icmp eq i32 %3298, 2
  br i1 %3349, label %3350, label %3378

; <label>:3350                                    ; preds = %3348
  %3351 = call float @dx.op.unary.f32(i32 24, float %3137)  ; Sqrt(value)
  %3352 = call float @dx.op.unary.f32(i32 24, float %3138)  ; Sqrt(value)
  %3353 = call float @dx.op.unary.f32(i32 24, float %3139)  ; Sqrt(value)
  %3354 = fadd fast float %3351, -5.000000e-01
  %3355 = fadd fast float %3352, -5.000000e-01
  %3356 = fadd fast float %3353, -5.000000e-01
  %3357 = fmul fast float %3354, %3303
  %3358 = fmul fast float %3355, %3303
  %3359 = fmul fast float %3356, %3303
  %3360 = fadd fast float %3357, 5.000000e-01
  %3361 = fadd fast float %3358, 5.000000e-01
  %3362 = fadd fast float %3359, 5.000000e-01
  %3363 = fmul fast float %3360, 2.000000e+00
  %3364 = fsub fast float 1.000000e+00, %3363
  %3365 = fmul fast float %3364, %3293
  %3366 = fadd fast float %3365, %3363
  %3367 = fmul fast float %3366, %3293
  %3368 = fmul fast float %3361, 2.000000e+00
  %3369 = fsub fast float 1.000000e+00, %3368
  %3370 = fmul fast float %3369, %3294
  %3371 = fadd fast float %3370, %3368
  %3372 = fmul fast float %3371, %3294
  %3373 = fmul fast float %3362, 2.000000e+00
  %3374 = fsub fast float 1.000000e+00, %3373
  %3375 = fmul fast float %3374, %3295
  %3376 = fadd fast float %3375, %3373
  %3377 = fmul fast float %3376, %3295
  br label %3378

; <label>:3378                                    ; preds = %3350, %3348, %3335, %3305, %3289
  %3379 = phi float [ %3290, %3289 ], [ %3290, %3350 ], [ %3290, %3348 ], [ %3290, %3335 ], [ %3327, %3305 ]
  %3380 = phi float [ %3291, %3289 ], [ %3291, %3350 ], [ %3291, %3348 ], [ %3291, %3335 ], [ %3328, %3305 ]
  %3381 = phi float [ %3292, %3289 ], [ %3292, %3350 ], [ %3292, %3348 ], [ %3292, %3335 ], [ %3329, %3305 ]
  %3382 = phi float [ %3293, %3289 ], [ %3367, %3350 ], [ %3293, %3348 ], [ %3345, %3335 ], [ %3315, %3305 ]
  %3383 = phi float [ %3294, %3289 ], [ %3372, %3350 ], [ %3294, %3348 ], [ %3346, %3335 ], [ %3316, %3305 ]
  %3384 = phi float [ %3295, %3289 ], [ %3377, %3350 ], [ %3295, %3348 ], [ %3347, %3335 ], [ %3317, %3305 ]
  %3385 = phi float [ %2731, %3289 ], [ %2731, %3350 ], [ %2731, %3348 ], [ %2731, %3335 ], [ %3320, %3305 ]
  %3386 = phi float [ %2734, %3289 ], [ %2734, %3350 ], [ %2734, %3348 ], [ %2734, %3335 ], [ %3332, %3305 ]
  %3387 = and i32 %3297, 12
  %3388 = icmp eq i32 %3387, 12
  br i1 %3388, label %3461, label %3389

; <label>:3389                                    ; preds = %3378
  %3390 = and i32 %3297, 2097184
  %3391 = icmp eq i32 %3390, 2097184
  %3392 = select i1 %3391, float %2917, float 0.000000e+00
  %3393 = and i32 %3297, 4194336
  %3394 = icmp eq i32 %3393, 4194336
  %3395 = select i1 %3394, float %2917, float 0.000000e+00
  %3396 = and i32 %3297, 8388640
  %3397 = icmp eq i32 %3396, 8388640
  %3398 = select i1 %3397, float %2917, float 0.000000e+00
  %3399 = icmp eq i32 %3387, 0
  br i1 %3399, label %3400, label %3413

; <label>:3400                                    ; preds = %3389
  %3401 = fsub fast float %3218, %2723
  %3402 = fsub fast float %3219, %2724
  %3403 = fmul fast float %3392, %3401
  %3404 = fmul fast float %3392, %3402
  %3405 = fadd fast float %3403, %2723
  %3406 = fadd fast float %3404, %2724
  %3407 = fsub fast float %3220, %2733
  %3408 = fmul fast float %3395, %3407
  %3409 = fadd fast float %3408, %2733
  %3410 = fsub fast float %3217, %2732
  %3411 = fmul fast float %3398, %3410
  %3412 = fadd fast float %3411, %2732
  br label %3461

; <label>:3413                                    ; preds = %3389
  %3414 = icmp eq i32 %3387, 4
  br i1 %3414, label %3415, label %3447

; <label>:3415                                    ; preds = %3413
  %3416 = fmul fast float %3392, %3218
  %3417 = fmul fast float %3392, %3219
  %3418 = fadd fast float %3416, %2723
  %3419 = fadd fast float %3417, %2724
  %3420 = call float @dx.op.binary.f32(i32 36, float %2733, float %3220)  ; FMin(a,b)
  %3421 = fsub fast float %3420, %2733
  %3422 = fmul fast float %3421, %3395
  %3423 = fadd fast float %3422, %2733
  %3424 = fadd fast float %3217, %2732
  %3425 = fmul fast float %3424, 0x3FF337FAE0000000
  %3426 = fmul fast float %2732, %2732
  %3427 = fmul fast float %3217, %3217
  %3428 = fadd fast float %3427, %3426
  %3429 = fmul fast float %3428, 0x3FE5152B00000000
  %3430 = fmul fast float %2732, 0xBFCC1F85E0000000
  %3431 = fmul fast float %3430, %3217
  %3432 = fadd fast float %3431, 0xBFE1363700000000
  %3433 = fadd fast float %3432, %3425
  %3434 = fsub fast float %3433, %3429
  %3435 = fmul fast float %3424, 0x3FBA6F0D00000000
  %3436 = fmul fast float %3428, 0x3FD0432880000000
  %3437 = fmul fast float %2732, 0xBFEF110800000000
  %3438 = fmul fast float %3437, %3217
  %3439 = fadd fast float %3438, 1.000000e+00
  %3440 = fsub fast float %3439, %3435
  %3441 = fadd fast float %3440, %3436
  %3442 = fdiv fast float %3434, %3441
  %3443 = call float @dx.op.unary.f32(i32 7, float %3442)  ; Saturate(value)
  %3444 = fsub fast float %3443, %2732
  %3445 = fmul fast float %3444, %3398
  %3446 = fadd fast float %3445, %2732
  br label %3461

; <label>:3447                                    ; preds = %3413
  %3448 = icmp eq i32 %3387, 8
  br i1 %3448, label %3449, label %3461

; <label>:3449                                    ; preds = %3447
  %3450 = fmul fast float %3392, %3218
  %3451 = fmul fast float %3392, %3219
  %3452 = fadd fast float %3450, %2723
  %3453 = fadd fast float %3451, %2724
  %3454 = call float @dx.op.binary.f32(i32 36, float %2733, float %3220)  ; FMin(a,b)
  %3455 = fsub fast float %3454, %2733
  %3456 = fmul fast float %3455, %3395
  %3457 = fadd fast float %3456, %2733
  %3458 = fsub fast float %3217, %2732
  %3459 = fmul fast float %3398, %3458
  %3460 = fadd fast float %3459, %2732
  br label %3461

; <label>:3461                                    ; preds = %3449, %3447, %3415, %3400, %3378, %2916, %2735, %2722
  %3462 = phi float [ %2723, %3378 ], [ %2723, %2916 ], [ %2723, %2722 ], [ %2723, %2735 ], [ %3405, %3400 ], [ %3418, %3415 ], [ %2723, %3447 ], [ %3452, %3449 ]
  %3463 = phi float [ %2724, %3378 ], [ %2724, %2916 ], [ %2724, %2722 ], [ %2724, %2735 ], [ %3406, %3400 ], [ %3419, %3415 ], [ %2724, %3447 ], [ %3453, %3449 ]
  %3464 = phi float [ %3379, %3378 ], [ %2725, %2916 ], [ %2725, %2722 ], [ %2725, %2735 ], [ %3379, %3400 ], [ %3379, %3415 ], [ %3379, %3447 ], [ %3379, %3449 ]
  %3465 = phi float [ %3380, %3378 ], [ %2726, %2916 ], [ %2726, %2722 ], [ %2726, %2735 ], [ %3380, %3400 ], [ %3380, %3415 ], [ %3380, %3447 ], [ %3380, %3449 ]
  %3466 = phi float [ %3381, %3378 ], [ %2727, %2916 ], [ %2727, %2722 ], [ %2727, %2735 ], [ %3381, %3400 ], [ %3381, %3415 ], [ %3381, %3447 ], [ %3381, %3449 ]
  %3467 = phi float [ %3382, %3378 ], [ %2728, %2916 ], [ %2728, %2722 ], [ %2728, %2735 ], [ %3382, %3400 ], [ %3382, %3415 ], [ %3382, %3447 ], [ %3382, %3449 ]
  %3468 = phi float [ %3383, %3378 ], [ %2729, %2916 ], [ %2729, %2722 ], [ %2729, %2735 ], [ %3383, %3400 ], [ %3383, %3415 ], [ %3383, %3447 ], [ %3383, %3449 ]
  %3469 = phi float [ %3384, %3378 ], [ %2730, %2916 ], [ %2730, %2722 ], [ %2730, %2735 ], [ %3384, %3400 ], [ %3384, %3415 ], [ %3384, %3447 ], [ %3384, %3449 ]
  %3470 = phi float [ %3385, %3378 ], [ %2731, %2916 ], [ %2731, %2722 ], [ %2731, %2735 ], [ %3385, %3400 ], [ %3385, %3415 ], [ %3385, %3447 ], [ %3385, %3449 ]
  %3471 = phi float [ %2732, %3378 ], [ %2732, %2916 ], [ %2732, %2722 ], [ %2732, %2735 ], [ %3412, %3400 ], [ %3446, %3415 ], [ %2732, %3447 ], [ %3460, %3449 ]
  %3472 = phi float [ %2733, %3378 ], [ %2733, %2916 ], [ %2733, %2722 ], [ %2733, %2735 ], [ %3409, %3400 ], [ %3423, %3415 ], [ %2733, %3447 ], [ %3457, %3449 ]
  %3473 = phi float [ %3386, %3378 ], [ %2734, %2916 ], [ %2734, %2722 ], [ %2734, %2735 ], [ %3386, %3400 ], [ %3386, %3415 ], [ %3386, %3447 ], [ %3386, %3449 ]
  %3474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3475 = extractvalue %dx.types.CBufRet.f32 %3474, 0
  %3476 = call float @dx.op.dot2.f32(i32 54, float %3462, float %3463, float %3462, float %3463)  ; Dot2(ax,ay,bx,by)
  %3477 = fmul fast float %3476, 0x3FE3333340000000
  %3478 = fsub fast float 1.000000e+00, %3477
  %3479 = call float @dx.op.dot3.f32(i32 55, float %3462, float %3463, float %3478, float %3462, float %3463, float %3478)  ; Dot3(ax,ay,az,bx,by,bz)
  %3480 = call float @dx.op.unary.f32(i32 25, float %3479)  ; Rsqrt(value)
  %3481 = fmul fast float %3480, %3462
  %3482 = fmul fast float %3480, %3463
  %3483 = fmul fast float %3478, %3480
  %3484 = fmul fast float %3483, %123
  %3485 = fmul fast float %3483, %124
  %3486 = fmul fast float %3483, %125
  %3487 = fmul fast float %3481, %87
  %3488 = fmul fast float %3481, %88
  %3489 = fmul fast float %3481, %89
  %3490 = fadd fast float %3484, %3487
  %3491 = fadd fast float %3485, %3488
  %3492 = fadd fast float %3486, %3489
  %3493 = fmul fast float %135, %3482
  %3494 = fmul fast float %136, %3482
  %3495 = fmul fast float %137, %3482
  %3496 = fadd fast float %3490, %3493
  %3497 = fadd fast float %3491, %3494
  %3498 = fadd fast float %3492, %3495
  %3499 = call float @dx.op.dot3.f32(i32 55, float %3496, float %3497, float %3498, float %3496, float %3497, float %3498)  ; Dot3(ax,ay,az,bx,by,bz)
  %3500 = call float @dx.op.unary.f32(i32 25, float %3499)  ; Rsqrt(value)
  %3501 = fmul fast float %3496, %3500
  %3502 = fmul fast float %3497, %3500
  %3503 = fmul fast float %3498, %3500
  %3504 = icmp eq i32 %63, 65535
  br i1 %3504, label %4019, label %3505

; <label>:3505                                    ; preds = %3461
  %3506 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3507 = call float @dx.op.unary.f32(i32 83, float %65)  ; DerivCoarseX(value)
  %3508 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %3509 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3510 = call float @dx.op.unary.f32(i32 84, float %65)  ; DerivCoarseY(value)
  %3511 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %3512 = fadd fast float %3506, %64
  %3513 = fadd fast float %3507, %65
  %3514 = fadd fast float %3508, %66
  %3515 = fadd fast float %3509, %64
  %3516 = fadd fast float %3510, %65
  %3517 = fadd fast float %3511, %66
  %3518 = mul i32 %63, 48
  %3519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.f32 %3519, 0
  %3521 = extractvalue %dx.types.ResRet.f32 %3519, 1
  %3522 = extractvalue %dx.types.ResRet.f32 %3519, 2
  %3523 = add i32 %3518, 16
  %3524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3523, i32 undef)  ; BufferLoad(srv,index,wot)
  %3525 = extractvalue %dx.types.ResRet.f32 %3524, 0
  %3526 = extractvalue %dx.types.ResRet.f32 %3524, 1
  %3527 = extractvalue %dx.types.ResRet.f32 %3524, 2
  %3528 = add i32 %3518, 32
  %3529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 0
  %3531 = extractvalue %dx.types.ResRet.f32 %3529, 1
  %3532 = extractvalue %dx.types.ResRet.f32 %3529, 2
  %3533 = extractvalue %dx.types.ResRet.f32 %3529, 3
  %3534 = bitcast float %3533 to i32
  %3535 = fmul fast float %3520, %64
  %3536 = fmul fast float %3521, %65
  %3537 = fmul fast float %3522, %66
  %3538 = fsub fast float %3535, %3525
  %3539 = fsub fast float %3536, %3526
  %3540 = fsub fast float %3537, %3527
  %3541 = call float @dx.op.unary.f32(i32 7, float %3538)  ; Saturate(value)
  %3542 = call float @dx.op.unary.f32(i32 7, float %3539)  ; Saturate(value)
  %3543 = call float @dx.op.unary.f32(i32 7, float %3540)  ; Saturate(value)
  %3544 = fmul fast float %3541, %3530
  %3545 = fmul fast float %3542, %3531
  %3546 = fmul fast float %3543, %3532
  %3547 = fadd fast float %3530, -1.000000e+00
  %3548 = fadd fast float %3531, -1.000000e+00
  %3549 = fadd fast float %3532, -1.000000e+00
  %3550 = call float @dx.op.unary.f32(i32 27, float %3544)  ; Round_ni(value)
  %3551 = call float @dx.op.unary.f32(i32 27, float %3545)  ; Round_ni(value)
  %3552 = call float @dx.op.unary.f32(i32 27, float %3546)  ; Round_ni(value)
  %3553 = call float @dx.op.binary.f32(i32 36, float %3550, float %3547)  ; FMin(a,b)
  %3554 = call float @dx.op.binary.f32(i32 36, float %3551, float %3548)  ; FMin(a,b)
  %3555 = call float @dx.op.binary.f32(i32 36, float %3552, float %3549)  ; FMin(a,b)
  %3556 = fmul fast float %3555, %3531
  %3557 = fadd fast float %3556, %3554
  %3558 = fmul fast float %3557, %3530
  %3559 = fadd fast float %3558, %3553
  %3560 = fptosi float %3559 to i32
  %3561 = add nsw i32 %3560, %3534
  %3562 = shl nsw i32 %3561, 2
  %3563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3562, i32 undef)  ; BufferLoad(srv,index,wot)
  %3564 = extractvalue %dx.types.ResRet.i32 %3563, 0
  %3565 = lshr i32 %3564, 16
  %3566 = icmp eq i32 %3565, 0
  br i1 %3566, label %3988, label %3567

; <label>:3567                                    ; preds = %3505
  br label %3568

; <label>:3568                                    ; preds = %3689, %3567
  %3569 = phi i32 [ %3591, %3689 ], [ %3565, %3567 ]
  %3570 = phi float [ %3690, %3689 ], [ 0.000000e+00, %3567 ]
  %3571 = phi float [ %3691, %3689 ], [ %3475, %3567 ]
  %3572 = phi float [ %3692, %3689 ], [ %3473, %3567 ]
  %3573 = phi float [ %3693, %3689 ], [ 0.000000e+00, %3567 ]
  %3574 = phi float [ %3694, %3689 ], [ 0.000000e+00, %3567 ]
  %3575 = phi float [ %3695, %3689 ], [ %3464, %3567 ]
  %3576 = phi float [ %3696, %3689 ], [ %3465, %3567 ]
  %3577 = phi float [ %3697, %3689 ], [ %3466, %3567 ]
  %3578 = phi float [ %3698, %3689 ], [ %3501, %3567 ]
  %3579 = phi float [ %3699, %3689 ], [ %3502, %3567 ]
  %3580 = phi float [ %3700, %3689 ], [ %3503, %3567 ]
  %3581 = phi float [ %3701, %3689 ], [ %3472, %3567 ]
  %3582 = phi float [ %3702, %3689 ], [ %3471, %3567 ]
  %3583 = phi float [ %3703, %3689 ], [ 0.000000e+00, %3567 ]
  %3584 = phi float [ %3704, %3689 ], [ %3470, %3567 ]
  %3585 = phi float [ %3705, %3689 ], [ %3467, %3567 ]
  %3586 = phi float [ %3706, %3689 ], [ %3468, %3567 ]
  %3587 = phi float [ %3707, %3689 ], [ %3469, %3567 ]
  %3588 = shl nuw nsw i32 %3569, 2
  %3589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3588, i32 undef)  ; BufferLoad(srv,index,wot)
  %3590 = extractvalue %dx.types.ResRet.i32 %3589, 0
  %3591 = lshr i32 %3590, 16
  %3592 = shl i32 %3590, 8
  %3593 = and i32 %3592, 16776960
  %3594 = or i32 %3593, 48
  %3595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.f32 %3595, 0
  %3597 = extractvalue %dx.types.ResRet.f32 %3595, 1
  %3598 = extractvalue %dx.types.ResRet.f32 %3595, 2
  %3599 = or i32 %3593, 64
  %3600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.i32 %3600, 0
  %3602 = extractvalue %dx.types.ResRet.i32 %3600, 1
  %3603 = or i32 %3593, 80
  %3604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.f32 %3604, 2
  %3606 = extractvalue %dx.types.ResRet.f32 %3604, 3
  %3607 = or i32 %3593, 96
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.ResRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.ResRet.f32 %3608, 2
  %3612 = extractvalue %dx.types.ResRet.f32 %3608, 3
  %3613 = or i32 %3593, 112
  %3614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.f32 %3614, 2
  %3616 = or i32 %3593, 128
  %3617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3618 = extractvalue %dx.types.ResRet.f32 %3617, 0
  %3619 = extractvalue %dx.types.ResRet.f32 %3617, 1
  %3620 = extractvalue %dx.types.ResRet.f32 %3617, 2
  %3621 = extractvalue %dx.types.ResRet.f32 %3617, 3
  %3622 = or i32 %3593, 144
  %3623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.f32 %3623, 0
  %3625 = extractvalue %dx.types.ResRet.f32 %3623, 1
  %3626 = extractvalue %dx.types.ResRet.f32 %3623, 2
  %3627 = extractvalue %dx.types.ResRet.f32 %3623, 3
  %3628 = or i32 %3593, 160
  %3629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3628, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.f32 %3629, 0
  %3631 = extractvalue %dx.types.ResRet.f32 %3629, 1
  %3632 = extractvalue %dx.types.ResRet.f32 %3629, 2
  %3633 = extractvalue %dx.types.ResRet.f32 %3629, 3
  %3634 = or i32 %3593, 192
  %3635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3634, i32 undef)  ; BufferLoad(srv,index,wot)
  %3636 = extractvalue %dx.types.ResRet.i32 %3635, 0
  %3637 = or i32 %3593, 208
  %3638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3637, i32 undef)  ; BufferLoad(srv,index,wot)
  %3639 = extractvalue %dx.types.ResRet.f32 %3638, 0
  %3640 = or i32 %3593, 248
  %3641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3640, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.f32 %3641, 0
  %3643 = extractvalue %dx.types.ResRet.f32 %3641, 1
  %3644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.f32 %3644, 0
  %3646 = extractvalue %dx.types.ResRet.f32 %3644, 1
  %3647 = extractvalue %dx.types.ResRet.f32 %3644, 2
  %3648 = extractvalue %dx.types.ResRet.f32 %3644, 3
  %3649 = call float @dx.op.dot4.f32(i32 56, float %3645, float %3646, float %3647, float %3648, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3650 = or i32 %3593, 16
  %3651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3650, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.f32 %3651, 0
  %3653 = extractvalue %dx.types.ResRet.f32 %3651, 1
  %3654 = extractvalue %dx.types.ResRet.f32 %3651, 2
  %3655 = extractvalue %dx.types.ResRet.f32 %3651, 3
  %3656 = call float @dx.op.dot4.f32(i32 56, float %3652, float %3653, float %3654, float %3655, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3657 = or i32 %3593, 32
  %3658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.f32 %3658, 0
  %3660 = extractvalue %dx.types.ResRet.f32 %3658, 1
  %3661 = extractvalue %dx.types.ResRet.f32 %3658, 2
  %3662 = extractvalue %dx.types.ResRet.f32 %3658, 3
  %3663 = call float @dx.op.dot4.f32(i32 56, float %3659, float %3660, float %3661, float %3662, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3664 = call float @dx.op.unary.f32(i32 27, float %3649)  ; Round_ni(value)
  %3665 = call float @dx.op.unary.f32(i32 6, float %3664)  ; FAbs(value)
  %3666 = call float @dx.op.unary.f32(i32 27, float %3656)  ; Round_ni(value)
  %3667 = call float @dx.op.unary.f32(i32 6, float %3666)  ; FAbs(value)
  %3668 = call float @dx.op.unary.f32(i32 6, float %3663)  ; FAbs(value)
  %3669 = call float @dx.op.unary.f32(i32 27, float %3668)  ; Round_ni(value)
  %3670 = fadd fast float %3667, %3665
  %3671 = fadd fast float %3670, %3669
  %3672 = fcmp fast oeq float %3671, 0.000000e+00
  %3673 = call float @dx.op.dot4.f32(i32 56, float %3645, float %3646, float %3647, float %3648, float %3512, float %3513, float %3514, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3674 = call float @dx.op.dot4.f32(i32 56, float %3652, float %3653, float %3654, float %3655, float %3512, float %3513, float %3514, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3675 = call float @dx.op.dot4.f32(i32 56, float %3645, float %3646, float %3647, float %3648, float %3515, float %3516, float %3517, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3676 = call float @dx.op.dot4.f32(i32 56, float %3652, float %3653, float %3654, float %3655, float %3515, float %3516, float %3517, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3677 = fsub fast float %3673, %3649
  %3678 = fsub fast float %3675, %3649
  %3679 = fsub fast float %3674, %3656
  %3680 = fsub fast float %3676, %3656
  %3681 = call float @dx.op.dot3.f32(i32 55, float %3596, float %3597, float %3598, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %3682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3683 = extractvalue %dx.types.CBufRet.f32 %3682, 2
  %3684 = fadd fast float %3683, %3681
  %3685 = call float @dx.op.unary.f32(i32 7, float %3684)  ; Saturate(value)
  %3686 = extractvalue %dx.types.CBufRet.f32 %3682, 0
  %3687 = fcmp fast ogt float %3685, %3686
  %3688 = and i1 %3672, %3687
  br i1 %3688, label %3709, label %3689

; <label>:3689                                    ; preds = %3974, %3792, %3709, %3568
  %3690 = phi float [ %3570, %3709 ], [ %3795, %3792 ], [ %3795, %3974 ], [ %3570, %3568 ]
  %3691 = phi float [ %3571, %3709 ], [ %3571, %3792 ], [ %3949, %3974 ], [ %3571, %3568 ]
  %3692 = phi float [ %3572, %3709 ], [ %3572, %3792 ], [ %3947, %3974 ], [ %3572, %3568 ]
  %3693 = phi float [ %3573, %3709 ], [ %3573, %3792 ], [ %3919, %3974 ], [ %3573, %3568 ]
  %3694 = phi float [ %3574, %3709 ], [ %3574, %3792 ], [ %3917, %3974 ], [ %3574, %3568 ]
  %3695 = phi float [ %3575, %3709 ], [ %3575, %3792 ], [ %3984, %3974 ], [ %3575, %3568 ]
  %3696 = phi float [ %3576, %3709 ], [ %3576, %3792 ], [ %3985, %3974 ], [ %3576, %3568 ]
  %3697 = phi float [ %3577, %3709 ], [ %3577, %3792 ], [ %3986, %3974 ], [ %3577, %3568 ]
  %3698 = phi float [ %3578, %3709 ], [ %3578, %3792 ], [ %3898, %3974 ], [ %3578, %3568 ]
  %3699 = phi float [ %3579, %3709 ], [ %3579, %3792 ], [ %3899, %3974 ], [ %3579, %3568 ]
  %3700 = phi float [ %3580, %3709 ], [ %3580, %3792 ], [ %3900, %3974 ], [ %3580, %3568 ]
  %3701 = phi float [ %3581, %3709 ], [ %3581, %3792 ], [ %3927, %3974 ], [ %3581, %3568 ]
  %3702 = phi float [ %3582, %3709 ], [ %3582, %3792 ], [ %3924, %3974 ], [ %3582, %3568 ]
  %3703 = phi float [ %3583, %3709 ], [ %3583, %3792 ], [ %3921, %3974 ], [ %3583, %3568 ]
  %3704 = phi float [ %3584, %3709 ], [ %3584, %3792 ], [ %3915, %3974 ], [ %3584, %3568 ]
  %3705 = phi float [ %3585, %3709 ], [ %3585, %3792 ], [ %3910, %3974 ], [ %3585, %3568 ]
  %3706 = phi float [ %3586, %3709 ], [ %3586, %3792 ], [ %3911, %3974 ], [ %3586, %3568 ]
  %3707 = phi float [ %3587, %3709 ], [ %3587, %3792 ], [ %3912, %3974 ], [ %3587, %3568 ]
  %3708 = icmp eq i32 %3591, 0
  br i1 %3708, label %3987, label %3568

; <label>:3709                                    ; preds = %3568
  %3710 = extractvalue %dx.types.ResRet.f32 %3595, 3
  %3711 = extractvalue %dx.types.ResRet.f32 %3614, 3
  %3712 = extractvalue %dx.types.ResRet.f32 %3614, 1
  %3713 = extractvalue %dx.types.ResRet.f32 %3614, 0
  %3714 = extractvalue %dx.types.ResRet.f32 %3604, 1
  %3715 = extractvalue %dx.types.ResRet.f32 %3604, 0
  %3716 = extractvalue %dx.types.ResRet.i32 %3600, 3
  %3717 = extractvalue %dx.types.ResRet.i32 %3600, 2
  %3718 = bitcast float %3710 to i32
  %3719 = add i32 %3716, 0
  %3720 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3719, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3722 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3720, %dx.types.Handle %3721, float %3649, float %3656, float undef, float undef, i32 0, i32 0, i32 undef, float %3677, float %3679, float undef, float %3678, float %3680, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3723 = extractvalue %dx.types.ResRet.f32 %3722, 0
  %3724 = fmul fast float %3723, %3715
  %3725 = fadd fast float %3724, %3714
  %3726 = call float @dx.op.unary.f32(i32 7, float %3725)  ; Saturate(value)
  %3727 = fmul fast float %3649, %3609
  %3728 = call float @dx.op.tertiary.f32(i32 46, float %3610, float %3656, float %3727)  ; FMad(a,b,c)
  %3729 = fadd fast float %3728, %3713
  %3730 = fmul fast float %3649, %3611
  %3731 = call float @dx.op.tertiary.f32(i32 46, float %3612, float %3656, float %3730)  ; FMad(a,b,c)
  %3732 = fadd fast float %3731, %3712
  %3733 = fmul fast float %3677, %3609
  %3734 = call float @dx.op.tertiary.f32(i32 46, float %3610, float %3679, float %3733)  ; FMad(a,b,c)
  %3735 = fmul fast float %3677, %3611
  %3736 = call float @dx.op.tertiary.f32(i32 46, float %3612, float %3679, float %3735)  ; FMad(a,b,c)
  %3737 = fmul fast float %3678, %3609
  %3738 = call float @dx.op.tertiary.f32(i32 46, float %3610, float %3680, float %3737)  ; FMad(a,b,c)
  %3739 = fmul fast float %3678, %3611
  %3740 = call float @dx.op.tertiary.f32(i32 46, float %3612, float %3680, float %3739)  ; FMad(a,b,c)
  %3741 = add i32 %3717, 0
  %3742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3741, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3743 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3742, %dx.types.Handle %3721, float %3729, float %3732, float undef, float undef, i32 0, i32 0, i32 undef, float %3734, float %3736, float undef, float %3738, float %3740, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3744 = extractvalue %dx.types.ResRet.f32 %3743, 0
  %3745 = and i32 %3718, 1024
  %3746 = icmp ne i32 %3745, 0
  %3747 = fcmp fast ogt float %3744, 0x3FE0101020000000
  %3748 = uitofp i1 %3747 to float
  %3749 = select i1 %3746, float %3748, float %3744
  %3750 = and i32 %3718, 8192
  %3751 = icmp ne i32 %3750, 0
  %3752 = select i1 %3751, float %3711, float 1.000000e+00
  %3753 = fmul fast float %3649, 2.000000e+00
  %3754 = fadd fast float %3753, -1.000000e+00
  %3755 = call float @dx.op.unary.f32(i32 6, float %3754)  ; FAbs(value)
  %3756 = fmul fast float %3755, %3642
  %3757 = fsub fast float %3756, %3642
  %3758 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3759 = fmul fast float %3656, 2.000000e+00
  %3760 = fadd fast float %3759, -1.000000e+00
  %3761 = call float @dx.op.unary.f32(i32 6, float %3760)  ; FAbs(value)
  %3762 = fmul fast float %3761, %3643
  %3763 = fsub fast float %3762, %3643
  %3764 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  %3765 = fmul fast float %3668, %3605
  %3766 = fsub fast float %3765, %3605
  %3767 = call float @dx.op.unary.f32(i32 7, float %3766)  ; Saturate(value)
  %3768 = fmul fast float %3726, %3752
  %3769 = fmul fast float %3768, %3723
  %3770 = fmul fast float %3769, %3758
  %3771 = fmul fast float %3770, %3749
  %3772 = fmul fast float %3771, %3764
  %3773 = fmul fast float %3772, %3767
  %3774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3775 = extractvalue %dx.types.CBufRet.f32 %3774, 1
  %3776 = extractvalue %dx.types.CBufRet.f32 %3774, 0
  %3777 = fsub fast float %3685, %3776
  %3778 = fmul fast float %3777, %3775
  %3779 = call float @dx.op.unary.f32(i32 7, float %3778)  ; Saturate(value)
  %3780 = fmul fast float %3773, %3606
  %3781 = fadd fast float %3773, %3606
  %3782 = fmul fast float %3781, %3615
  %3783 = fsub fast float %3782, %3615
  %3784 = call float @dx.op.unary.f32(i32 7, float %3783)  ; Saturate(value)
  %3785 = and i32 %3718, 128
  %3786 = icmp ne i32 %3785, 0
  %3787 = select i1 %3786, float %3784, float %3780
  %3788 = fmul fast float %3787, %3779
  %3789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3790 = extractvalue %dx.types.CBufRet.f32 %3789, 0
  %3791 = fcmp fast ugt float %3788, %3790
  br i1 %3791, label %3792, label %3689

; <label>:3792                                    ; preds = %3709
  %3793 = select i1 %3751, float %3788, float 0.000000e+00
  %3794 = fadd fast float %3793, %3570
  %3795 = call float @dx.op.unary.f32(i32 7, float %3794)  ; Saturate(value)
  br i1 %3751, label %3689, label %3796

; <label>:3796                                    ; preds = %3792
  %3797 = and i32 %3718, 4
  %3798 = and i32 %3718, 8
  %3799 = add i32 %3601, 0
  %3800 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3799, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3802 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3800, %dx.types.Handle %3801, float %3729, float %3732, float undef, float undef, i32 0, i32 0, i32 undef, float %3734, float %3736, float undef, float %3738, float %3740, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3803 = extractvalue %dx.types.ResRet.f32 %3802, 0
  %3804 = extractvalue %dx.types.ResRet.f32 %3802, 1
  %3805 = extractvalue %dx.types.ResRet.f32 %3802, 2
  %3806 = extractvalue %dx.types.ResRet.f32 %3802, 3
  %3807 = bitcast float %3627 to i32
  %3808 = and i32 %3807, 255
  %3809 = uitofp i32 %3808 to float
  %3810 = lshr i32 %3807, 8
  %3811 = and i32 %3810, 255
  %3812 = uitofp i32 %3811 to float
  %3813 = fmul fast float %3806, %3809
  %3814 = fadd fast float %3813, %3812
  %3815 = fmul fast float %3814, 0x3F70101000000000
  %3816 = add i32 %3602, 0
  %3817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3816, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3818 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3817, %dx.types.Handle %3801, float %3729, float %3732, float undef, float undef, i32 0, i32 0, i32 undef, float %3734, float %3736, float undef, float %3738, float %3740, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3819 = extractvalue %dx.types.ResRet.f32 %3818, 0
  %3820 = extractvalue %dx.types.ResRet.f32 %3818, 1
  %3821 = extractvalue %dx.types.ResRet.f32 %3818, 2
  %3822 = extractvalue %dx.types.ResRet.f32 %3818, 3
  %3823 = bitcast float %3621 to i32
  %3824 = and i32 %3823, 255
  %3825 = uitofp i32 %3824 to float
  %3826 = lshr i32 %3823, 8
  %3827 = and i32 %3826, 255
  %3828 = uitofp i32 %3827 to float
  %3829 = lshr i32 %3823, 16
  %3830 = and i32 %3829, 255
  %3831 = uitofp i32 %3830 to float
  %3832 = fmul fast float %3831, 0x3F70101000000000
  %3833 = fmul fast float %3819, %3825
  %3834 = fadd fast float %3833, %3828
  %3835 = fmul fast float %3834, 0x3F70101000000000
  %3836 = fadd fast float %3820, -5.000000e-01
  %3837 = fadd fast float %3822, -5.000000e-01
  %3838 = fmul fast float %3836, %3832
  %3839 = fmul fast float %3837, %3832
  %3840 = fadd fast float %3838, 5.000000e-01
  %3841 = fadd fast float %3839, 5.000000e-01
  %3842 = fmul fast float %3803, %3630
  %3843 = fmul fast float %3804, %3631
  %3844 = fmul fast float %3805, %3632
  %3845 = fmul fast float %3840, 2.000000e+00
  %3846 = fadd fast float %3845, -1.000000e+00
  %3847 = fmul fast float %3841, 2.000000e+00
  %3848 = fadd fast float %3847, -1.000000e+00
  %3849 = fadd fast float %3846, %3848
  %3850 = fmul fast float %3849, 5.000000e-01
  %3851 = fsub fast float %3846, %3848
  %3852 = fmul fast float %3851, 5.000000e-01
  %3853 = call float @dx.op.unary.f32(i32 6, float %3850)  ; FAbs(value)
  %3854 = fsub fast float 1.000000e+00, %3853
  %3855 = call float @dx.op.unary.f32(i32 6, float %3852)  ; FAbs(value)
  %3856 = fsub fast float %3854, %3855
  %3857 = call float @dx.op.dot3.f32(i32 55, float %3850, float %3852, float %3856, float %3850, float %3852, float %3856)  ; Dot3(ax,ay,az,bx,by,bz)
  %3858 = call float @dx.op.unary.f32(i32 25, float %3857)  ; Rsqrt(value)
  %3859 = fmul fast float %3850, %3858
  %3860 = fmul fast float %3852, %3858
  %3861 = fmul fast float %3858, %3856
  %3862 = fmul fast float %3861, %3596
  %3863 = fmul fast float %3861, %3597
  %3864 = fmul fast float %3861, %3598
  %3865 = fmul fast float %3859, %3618
  %3866 = fmul fast float %3859, %3619
  %3867 = fmul fast float %3859, %3620
  %3868 = fadd fast float %3865, %3862
  %3869 = fadd fast float %3866, %3863
  %3870 = fadd fast float %3867, %3864
  %3871 = fmul fast float %3860, %3624
  %3872 = fmul fast float %3860, %3625
  %3873 = fmul fast float %3860, %3626
  %3874 = fadd fast float %3868, %3871
  %3875 = fadd fast float %3869, %3872
  %3876 = fadd fast float %3870, %3873
  %3877 = call float @dx.op.dot3.f32(i32 55, float %3874, float %3875, float %3876, float %3874, float %3875, float %3876)  ; Dot3(ax,ay,az,bx,by,bz)
  %3878 = call float @dx.op.unary.f32(i32 25, float %3877)  ; Rsqrt(value)
  %3879 = fmul fast float %3874, %3878
  %3880 = fmul fast float %3875, %3878
  %3881 = fmul fast float %3876, %3878
  %3882 = icmp ne i32 %3798, 0
  %3883 = select i1 %3882, float 1.000000e+00, float 0.000000e+00
  %3884 = fmul fast float %3788, %3883
  %3885 = and i32 %3718, 1
  %3886 = icmp eq i32 %3885, 0
  br i1 %3886, label %3887, label %3891

; <label>:3887                                    ; preds = %3796
  %3888 = fsub fast float %3879, %3578
  %3889 = fsub fast float %3880, %3579
  %3890 = fsub fast float %3881, %3580
  br label %3891

; <label>:3891                                    ; preds = %3887, %3796
  %3892 = phi float [ %3888, %3887 ], [ %3879, %3796 ]
  %3893 = phi float [ %3889, %3887 ], [ %3880, %3796 ]
  %3894 = phi float [ %3890, %3887 ], [ %3881, %3796 ]
  %3895 = fmul float %3894, %3884
  %3896 = fmul float %3893, %3884
  %3897 = fmul float %3892, %3884
  %3898 = fadd fast float %3897, %3578
  %3899 = fadd fast float %3896, %3579
  %3900 = fadd fast float %3895, %3580
  %3901 = icmp ne i32 %3797, 0
  %3902 = select i1 %3901, float 1.000000e+00, float 0.000000e+00
  %3903 = fmul fast float %3788, %3902
  %3904 = fsub fast float %3842, %3585
  %3905 = fsub fast float %3843, %3586
  %3906 = fsub fast float %3844, %3587
  %3907 = fmul fast float %3904, %3903
  %3908 = fmul fast float %3905, %3903
  %3909 = fmul fast float %3906, %3903
  %3910 = fadd fast float %3907, %3585
  %3911 = fadd fast float %3908, %3586
  %3912 = fadd fast float %3909, %3587
  %3913 = fsub fast float %3815, %3584
  %3914 = fmul fast float %3913, %3903
  %3915 = fadd fast float %3914, %3584
  %3916 = fmul fast float %3903, %3574
  %3917 = fsub fast float %3574, %3916
  %3918 = fmul fast float %3903, %3573
  %3919 = fsub fast float %3573, %3918
  %3920 = fadd fast float %3788, %3583
  %3921 = call float @dx.op.unary.f32(i32 7, float %3920)  ; Saturate(value)
  %3922 = fsub fast float %3835, %3582
  %3923 = fmul fast float %3922, %3884
  %3924 = fadd fast float %3923, %3582
  %3925 = fsub fast float %3821, %3581
  %3926 = fmul fast float %3925, %3884
  %3927 = fadd fast float %3926, %3581
  %3928 = call float @dx.op.dot3.f32(i32 55, float %3842, float %3843, float %3844, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3930 = extractvalue %dx.types.CBufRet.f32 %3929, 0
  %3931 = extractvalue %dx.types.CBufRet.f32 %3929, 1
  %3932 = fmul fast float %3931, %3928
  %3933 = fadd fast float %3932, %3930
  %3934 = call float @dx.op.unary.f32(i32 7, float %3933)  ; Saturate(value)
  %3935 = bitcast float %3633 to i32
  %3936 = and i32 %3935, 65535
  %3937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3936)  ; LegacyF16ToF32(value)
  %3938 = lshr i32 %3935, 16
  %3939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3938)  ; LegacyF16ToF32(value)
  %3940 = fcmp fast oge float %3937, 0.000000e+00
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 0
  %3943 = select i1 %3940, float %3937, float %3942
  %3944 = fadd fast float %3943, %3939
  %3945 = fsub fast float %3934, %3572
  %3946 = fmul fast float %3945, %3788
  %3947 = fadd fast float %3946, %3572
  %3948 = fmul fast float %3944, %3788
  %3949 = call float @dx.op.binary.f32(i32 35, float %3571, float %3948)  ; FMax(a,b)
  %3950 = and i32 %3718, 16
  %3951 = icmp eq i32 %3950, 0
  br i1 %3951, label %3974, label %3952

; <label>:3952                                    ; preds = %3891
  %3953 = bitcast float %3639 to i32
  %3954 = add i32 %3636, 0
  %3955 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3954, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3956 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3955, %dx.types.Handle %3801, float %3729, float %3732, float undef, float undef, i32 0, i32 0, i32 undef, float %3734, float %3736, float undef, float %3738, float %3740, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3957 = extractvalue %dx.types.ResRet.f32 %3956, 0
  %3958 = extractvalue %dx.types.ResRet.f32 %3956, 1
  %3959 = extractvalue %dx.types.ResRet.f32 %3956, 2
  %3960 = and i32 %3953, 65535
  %3961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3960)  ; LegacyF16ToF32(value)
  %3962 = fmul fast float %3957, %3630
  %3963 = fmul fast float %3958, %3631
  %3964 = fmul fast float %3959, %3632
  %3965 = and i32 %3718, 16384
  %3966 = icmp ne i32 %3965, 0
  %3967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.f32 %3967, 0
  %3969 = select i1 %3966, float %3968, float 1.000000e+00
  %3970 = fmul fast float %3969, %3961
  %3971 = fmul fast float %3962, %3970
  %3972 = fmul fast float %3963, %3970
  %3973 = fmul fast float %3964, %3970
  br label %3974

; <label>:3974                                    ; preds = %3952, %3891
  %3975 = phi float [ %3971, %3952 ], [ 0.000000e+00, %3891 ]
  %3976 = phi float [ %3972, %3952 ], [ 0.000000e+00, %3891 ]
  %3977 = phi float [ %3973, %3952 ], [ 0.000000e+00, %3891 ]
  %3978 = fsub fast float %3975, %3575
  %3979 = fsub fast float %3976, %3576
  %3980 = fsub fast float %3977, %3577
  %3981 = fmul fast float %3978, %3788
  %3982 = fmul fast float %3979, %3788
  %3983 = fmul fast float %3980, %3788
  %3984 = fadd fast float %3981, %3575
  %3985 = fadd fast float %3982, %3576
  %3986 = fadd fast float %3983, %3577
  br label %3689

; <label>:3987                                    ; preds = %3689
  br label %3988

; <label>:3988                                    ; preds = %3987, %3505
  %3989 = phi float [ 0.000000e+00, %3505 ], [ %3690, %3987 ]
  %3990 = phi float [ %3475, %3505 ], [ %3691, %3987 ]
  %3991 = phi float [ %3473, %3505 ], [ %3692, %3987 ]
  %3992 = phi float [ 0.000000e+00, %3505 ], [ %3693, %3987 ]
  %3993 = phi float [ 0.000000e+00, %3505 ], [ %3694, %3987 ]
  %3994 = phi float [ %3464, %3505 ], [ %3695, %3987 ]
  %3995 = phi float [ %3465, %3505 ], [ %3696, %3987 ]
  %3996 = phi float [ %3466, %3505 ], [ %3697, %3987 ]
  %3997 = phi float [ %3501, %3505 ], [ %3698, %3987 ]
  %3998 = phi float [ %3502, %3505 ], [ %3699, %3987 ]
  %3999 = phi float [ %3503, %3505 ], [ %3700, %3987 ]
  %4000 = phi float [ %3472, %3505 ], [ %3701, %3987 ]
  %4001 = phi float [ %3471, %3505 ], [ %3702, %3987 ]
  %4002 = phi float [ 0.000000e+00, %3505 ], [ %3703, %3987 ]
  %4003 = phi float [ %3470, %3505 ], [ %3704, %3987 ]
  %4004 = phi float [ %3467, %3505 ], [ %3705, %3987 ]
  %4005 = phi float [ %3468, %3505 ], [ %3706, %3987 ]
  %4006 = phi float [ %3469, %3505 ], [ %3707, %3987 ]
  %4007 = call float @dx.op.dot3.f32(i32 55, float %3997, float %3998, float %3999, float %3997, float %3998, float %3999)  ; Dot3(ax,ay,az,bx,by,bz)
  %4008 = call float @dx.op.unary.f32(i32 25, float %4007)  ; Rsqrt(value)
  %4009 = fmul fast float %4008, %3997
  %4010 = fmul fast float %4008, %3998
  %4011 = fmul fast float %4008, %3999
  %4012 = fadd fast float %4002, %1253
  %4013 = call float @dx.op.unary.f32(i32 7, float %4012)  ; Saturate(value)
  %4014 = call float @dx.op.dot3.f32(i32 55, float %4009, float %4010, float %4011, float %4009, float %4010, float %4011)  ; Dot3(ax,ay,az,bx,by,bz)
  %4015 = call float @dx.op.unary.f32(i32 25, float %4014)  ; Rsqrt(value)
  %4016 = fmul fast float %4015, %4009
  %4017 = fmul fast float %4015, %4010
  %4018 = fmul fast float %4015, %4011
  br label %4019

; <label>:4019                                    ; preds = %3988, %3461
  %4020 = phi float [ %4016, %3988 ], [ %3501, %3461 ]
  %4021 = phi float [ %4017, %3988 ], [ %3502, %3461 ]
  %4022 = phi float [ %4018, %3988 ], [ %3503, %3461 ]
  %4023 = phi float [ %4004, %3988 ], [ %3467, %3461 ]
  %4024 = phi float [ %4005, %3988 ], [ %3468, %3461 ]
  %4025 = phi float [ %4006, %3988 ], [ %3469, %3461 ]
  %4026 = phi float [ %3994, %3988 ], [ %3464, %3461 ]
  %4027 = phi float [ %3995, %3988 ], [ %3465, %3461 ]
  %4028 = phi float [ %3996, %3988 ], [ %3466, %3461 ]
  %4029 = phi float [ %4003, %3988 ], [ %3470, %3461 ]
  %4030 = phi float [ %4013, %3988 ], [ %1253, %3461 ]
  %4031 = phi float [ %4001, %3988 ], [ %3471, %3461 ]
  %4032 = phi float [ %4000, %3988 ], [ %3472, %3461 ]
  %4033 = phi float [ %3993, %3988 ], [ 0.000000e+00, %3461 ]
  %4034 = phi float [ %3992, %3988 ], [ 0.000000e+00, %3461 ]
  %4035 = phi float [ %3989, %3988 ], [ 0.000000e+00, %3461 ]
  %4036 = phi float [ %3990, %3988 ], [ %3475, %3461 ]
  %4037 = phi float [ %3991, %3988 ], [ %3473, %3461 ]
  %4038 = fadd fast float %4029, 0xBFB99999A0000000
  %4039 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4040 = fmul fast float %4039, 0x3FF1C71C80000000
  %4041 = call float @dx.op.binary.f32(i32 36, float %4029, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4042 = fsub fast float 1.000000e+00, %4040
  %4043 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  %4044 = fmul fast float %4043, %4023
  %4045 = fmul fast float %4043, %4024
  %4046 = fmul fast float %4043, %4025
  %4047 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  %4048 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4049 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4050 = fmul fast float %4040, %4023
  %4051 = fmul fast float %4040, %4024
  %4052 = fmul fast float %4040, %4025
  %4053 = fadd fast float %4050, %4041
  %4054 = fadd fast float %4051, %4041
  %4055 = fadd fast float %4052, %4041
  %4056 = call float @dx.op.unary.f32(i32 7, float %4053)  ; Saturate(value)
  %4057 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4058 = call float @dx.op.unary.f32(i32 7, float %4055)  ; Saturate(value)
  %4059 = call float @dx.op.unary.f32(i32 7, float %4031)  ; Saturate(value)
  %4060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.i32 %4060, 3
  %4062 = and i32 %4061, 8
  %4063 = icmp ne i32 %4062, 0
  %4064 = call float @dx.op.binary.f32(i32 35, float %4047, float %4023)  ; FMax(a,b)
  %4065 = call float @dx.op.binary.f32(i32 35, float %4048, float %4023)  ; FMax(a,b)
  %4066 = call float @dx.op.binary.f32(i32 35, float %4049, float %4023)  ; FMax(a,b)
  %4067 = call float @dx.op.dot3.f32(i32 55, float %4047, float %4048, float %4049, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4068 = select i1 %262, float %4023, float %4047
  %4069 = select i1 %262, float %4067, float %4048
  %4070 = select i1 %262, float 1.000000e+00, float %4049
  %4071 = select i1 %4063, float %4064, float %4068
  %4072 = select i1 %4063, float %4065, float %4069
  %4073 = select i1 %4063, float %4066, float %4070
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 0
  %4076 = extractvalue %dx.types.CBufRet.f32 %4074, 1
  %4077 = extractvalue %dx.types.CBufRet.f32 %4074, 2
  %4078 = fadd fast float %4075, %203
  %4079 = fadd fast float %4076, %204
  %4080 = fadd fast float %4077, %205
  %4081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4082 = extractvalue %dx.types.CBufRet.f32 %4081, 0
  %4083 = extractvalue %dx.types.CBufRet.f32 %4081, 1
  %4084 = fsub fast float %4078, %4082
  %4085 = fsub fast float %4079, %4083
  %4086 = fmul fast float %4084, %4084
  %4087 = fmul fast float %4085, %4085
  %4088 = fadd fast float %4086, %4087
  %4089 = call float @dx.op.unary.f32(i32 24, float %4088)  ; Sqrt(value)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4081, 2
  %4091 = fcmp fast olt float %4089, %4090
  br i1 %4091, label %4092, label %4159

; <label>:4092                                    ; preds = %4019
  %4093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4094 = extractvalue %dx.types.CBufRet.f32 %4093, 0
  %4095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4096 = extractvalue %dx.types.CBufRet.f32 %4095, 0
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 0
  %4099 = extractvalue %dx.types.CBufRet.f32 %4093, 1
  %4100 = extractvalue %dx.types.CBufRet.f32 %4095, 1
  %4101 = extractvalue %dx.types.CBufRet.f32 %4097, 1
  %4102 = extractvalue %dx.types.CBufRet.f32 %4093, 3
  %4103 = extractvalue %dx.types.CBufRet.f32 %4095, 3
  %4104 = extractvalue %dx.types.CBufRet.f32 %4097, 3
  %4105 = fadd fast float %4102, %4078
  %4106 = fadd fast float %4103, %4079
  %4107 = fadd fast float %4104, %4080
  %4108 = fmul fast float %4105, %4094
  %4109 = call float @dx.op.tertiary.f32(i32 46, float %4106, float %4096, float %4108)  ; FMad(a,b,c)
  %4110 = call float @dx.op.tertiary.f32(i32 46, float %4107, float %4098, float %4109)  ; FMad(a,b,c)
  %4111 = fmul fast float %4105, %4099
  %4112 = call float @dx.op.tertiary.f32(i32 46, float %4106, float %4100, float %4111)  ; FMad(a,b,c)
  %4113 = call float @dx.op.tertiary.f32(i32 46, float %4107, float %4101, float %4112)  ; FMad(a,b,c)
  %4114 = fsub fast float %4110, %4102
  %4115 = fsub fast float %4113, %4103
  %4116 = fsub fast float %4114, %4082
  %4117 = fadd fast float %4116, %4090
  %4118 = fsub fast float %4115, %4083
  %4119 = fadd fast float %4118, %4090
  %4120 = extractvalue %dx.types.CBufRet.f32 %4081, 3
  %4121 = fmul fast float %4117, %4120
  %4122 = fmul fast float %4119, %4120
  %4123 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4124 = call float @dx.op.unary.f32(i32 7, float %4122)  ; Saturate(value)
  %4125 = fsub fast float 1.000000e+00, %4123
  %4126 = fsub fast float 1.000000e+00, %4124
  %4127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %55, float %4125, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = fcmp fast ugt float %4128, 0.000000e+00
  br i1 %4129, label %4130, label %4433

; <label>:4130                                    ; preds = %4092
  %4131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4132 = extractvalue %dx.types.CBufRet.f32 %4131, 2
  %4133 = fmul fast float %4132, %4128
  %4134 = extractvalue %dx.types.CBufRet.f32 %4131, 3
  %4135 = fadd fast float %4134, %4133
  %4136 = extractvalue %dx.types.CBufRet.f32 %4097, 2
  %4137 = fadd fast float %4135, %4104
  %4138 = fmul fast float %4110, %4098
  %4139 = call float @dx.op.tertiary.f32(i32 46, float %4113, float %4101, float %4138)  ; FMad(a,b,c)
  %4140 = call float @dx.op.tertiary.f32(i32 46, float %4137, float %4136, float %4139)  ; FMad(a,b,c)
  %4141 = fsub fast float %4140, %4104
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 2
  %4144 = fsub fast float %4141, %4143
  %4145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %55, float %4125, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4146 = extractvalue %dx.types.ResRet.f32 %4145, 0
  %4147 = extractvalue %dx.types.ResRet.f32 %4145, 1
  %4148 = extractvalue %dx.types.ResRet.f32 %4145, 2
  %4149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %55, float %4125, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4150 = extractvalue %dx.types.ResRet.f32 %4149, 0
  %4151 = extractvalue %dx.types.ResRet.f32 %4149, 1
  %4152 = extractvalue %dx.types.ResRet.f32 %4149, 2
  %4153 = fadd fast float %4150, %4146
  %4154 = fmul fast float %4153, 0x3F847AE140000000
  %4155 = fadd fast float %4151, %4147
  %4156 = fmul fast float %4155, 0x3F847AE140000000
  %4157 = fadd fast float %4152, %4148
  %4158 = fmul fast float %4157, 0x3F847AE140000000
  br label %4433

; <label>:4159                                    ; preds = %4019
  %4160 = and i32 %241, 1
  %4161 = icmp eq i32 %4160, 0
  br i1 %4161, label %4433, label %4162

; <label>:4162                                    ; preds = %4159
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4166 = extractvalue %dx.types.CBufRet.f32 %4165, 0
  %4167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.CBufRet.f32 %4163, 1
  %4170 = extractvalue %dx.types.CBufRet.f32 %4165, 1
  %4171 = extractvalue %dx.types.CBufRet.f32 %4167, 1
  %4172 = extractvalue %dx.types.CBufRet.f32 %4163, 3
  %4173 = extractvalue %dx.types.CBufRet.f32 %4165, 3
  %4174 = extractvalue %dx.types.CBufRet.f32 %4167, 3
  %4175 = fadd fast float %4172, %4078
  %4176 = fadd fast float %4173, %4079
  %4177 = fadd fast float %4174, %4080
  %4178 = fmul fast float %4175, %4164
  %4179 = call float @dx.op.tertiary.f32(i32 46, float %4176, float %4166, float %4178)  ; FMad(a,b,c)
  %4180 = call float @dx.op.tertiary.f32(i32 46, float %4177, float %4168, float %4179)  ; FMad(a,b,c)
  %4181 = fmul fast float %4175, %4169
  %4182 = call float @dx.op.tertiary.f32(i32 46, float %4176, float %4170, float %4181)  ; FMad(a,b,c)
  %4183 = call float @dx.op.tertiary.f32(i32 46, float %4177, float %4171, float %4182)  ; FMad(a,b,c)
  %4184 = fsub fast float %4180, %4172
  %4185 = fsub fast float %4183, %4173
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 0
  %4188 = extractvalue %dx.types.CBufRet.f32 %4186, 1
  %4189 = extractvalue %dx.types.CBufRet.f32 %4186, 2
  %4190 = extractvalue %dx.types.CBufRet.f32 %4186, 3
  %4191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4191, 3
  %4193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.i32 %4193, 0
  %4195 = extractvalue %dx.types.CBufRet.i32 %4193, 1
  %4196 = udiv i32 %4195, %4194
  %4197 = fsub fast float %4184, %4187
  %4198 = fsub fast float %4185, %4188
  %4199 = call float @dx.op.binary.f32(i32 35, float %4197, float 0.000000e+00)  ; FMax(a,b)
  %4200 = call float @dx.op.binary.f32(i32 35, float %4198, float 0.000000e+00)  ; FMax(a,b)
  %4201 = call float @dx.op.binary.f32(i32 36, float %4199, float %4189)  ; FMin(a,b)
  %4202 = call float @dx.op.binary.f32(i32 36, float %4200, float %4190)  ; FMin(a,b)
  %4203 = add i32 %4194, -1
  %4204 = add i32 %4196, -1
  %4205 = fmul fast float %4201, %4192
  %4206 = fmul fast float %4202, %4192
  %4207 = fptoui float %4205 to i32
  %4208 = fptoui float %4206 to i32
  %4209 = call i32 @dx.op.binary.i32(i32 40, i32 %4207, i32 %4203)  ; UMin(a,b)
  %4210 = call i32 @dx.op.binary.i32(i32 40, i32 %4208, i32 %4204)  ; UMin(a,b)
  %4211 = mul i32 %4210, %4194
  %4212 = add i32 %4211, %4209
  %4213 = shl i32 %4212, 2
  %4214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4213, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.i32 %4214, 0
  %4216 = icmp eq i32 %4215, -1
  br i1 %4216, label %4433, label %4217

; <label>:4217                                    ; preds = %4162
  %4218 = mul i32 %4215, 148
  %4219 = add i32 %4218, 4
  %4220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4219, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.f32 %4220, 0
  %4222 = add i32 %4218, 8
  %4223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4225 = add i32 %4218, 36
  %4226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4225, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.f32 %4226, 0
  %4228 = add i32 %4218, 60
  %4229 = add i32 %4218, 92
  %4230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4229, i32 undef)  ; BufferLoad(srv,index,wot)
  %4231 = extractvalue %dx.types.ResRet.i32 %4230, 0
  %4232 = add i32 %4218, 116
  %4233 = fsub fast float %4184, %4221
  %4234 = fsub fast float %4185, %4224
  %4235 = fmul fast float %4192, %4233
  %4236 = fmul fast float %4192, %4234
  %4237 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4238 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4239 = fsub fast float 1.000000e+00, %4238
  %4240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.f32 %4240, 2
  %4242 = call float @dx.op.unary.f32(i32 83, float %4237)  ; DerivCoarseX(value)
  %4243 = call float @dx.op.unary.f32(i32 83, float %4239)  ; DerivCoarseX(value)
  %4244 = call float @dx.op.unary.f32(i32 84, float %4237)  ; DerivCoarseY(value)
  %4245 = call float @dx.op.unary.f32(i32 84, float %4239)  ; DerivCoarseY(value)
  %4246 = fmul fast float %4242, %4241
  %4247 = fmul fast float %4243, %4241
  %4248 = fmul fast float %4244, %4241
  %4249 = fmul fast float %4245, %4241
  %4250 = call float @dx.op.dot2.f32(i32 54, float %4248, float %4249, float %4248, float %4249)  ; Dot2(ax,ay,bx,by)
  %4251 = call float @dx.op.dot2.f32(i32 54, float %4246, float %4247, float %4246, float %4247)  ; Dot2(ax,ay,bx,by)
  %4252 = call float @dx.op.binary.f32(i32 35, float %4251, float %4250)  ; FMax(a,b)
  %4253 = call float @dx.op.unary.f32(i32 23, float %4252)  ; Log(value)
  %4254 = fmul fast float %4253, 5.000000e-01
  %4255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.f32 %4255, 1
  %4257 = fadd fast float %4256, %4254
  %4258 = call float @dx.op.binary.f32(i32 35, float %4257, float 0.000000e+00)  ; FMax(a,b)
  %4259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4260 = extractvalue %dx.types.CBufRet.f32 %4259, 3
  %4261 = fadd fast float %4260, %4258
  %4262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4263 = extractvalue %dx.types.CBufRet.f32 %4262, 3
  %4264 = fadd fast float %4261, %4263
  %4265 = add i32 %4231, 0
  %4266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4265, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4267 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4266, i32 0)  ; GetDimensions(handle,mipLevel)
  %4268 = extractvalue %dx.types.Dimensions %4267, 0
  %4269 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4268)  ; FirstbitLo(value)
  %4270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4271 = extractvalue %dx.types.CBufRet.i32 %4270, 1
  %4272 = sub nsw i32 %4271, %4269
  %4273 = sitofp i32 %4272 to float
  %4274 = fsub fast float %4264, %4273
  %4275 = call float @dx.op.binary.f32(i32 35, float %4274, float 0.000000e+00)  ; FMax(a,b)
  %4276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4266, %dx.types.Handle %53, float %4237, float %4239, float %4227, float undef, i32 0, i32 0, i32 undef, float %4275)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4277 = extractvalue %dx.types.ResRet.f32 %4276, 0
  %4278 = fcmp ule float %4277, 0x3FE0101020000000
  %4279 = extractvalue %dx.types.CBufRet.i32 %4270, 0
  %4280 = and i32 %4279, 128
  %4281 = icmp ne i32 %4280, 0
  %4282 = and i1 %4278, %4281
  br i1 %4282, label %4433, label %4283

; <label>:4283                                    ; preds = %4217
  %4284 = add i32 %4218, 20
  %4285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4284, i32 undef)  ; BufferLoad(srv,index,wot)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = add i32 %4218, 24
  %4288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %4289 = extractvalue %dx.types.ResRet.f32 %4288, 0
  %4290 = add i32 %4218, 40
  %4291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4290, i32 undef)  ; BufferLoad(srv,index,wot)
  %4292 = extractvalue %dx.types.ResRet.f32 %4291, 0
  %4293 = add i32 %4218, 96
  %4294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4293, i32 undef)  ; BufferLoad(srv,index,wot)
  %4295 = extractvalue %dx.types.ResRet.i32 %4294, 0
  %4296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4296, 2
  %4298 = fmul fast float %4297, %4237
  %4299 = fmul fast float %4297, %4239
  %4300 = extractvalue %dx.types.CBufRet.f32 %4296, 3
  %4301 = fadd fast float %4298, %4300
  %4302 = fadd fast float %4299, %4300
  %4303 = add i32 %4295, 0
  %4304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4303, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4305 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4304, i32 0)  ; GetDimensions(handle,mipLevel)
  %4306 = extractvalue %dx.types.Dimensions %4305, 0
  %4307 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4306)  ; FirstbitLo(value)
  %4308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.i32 %4308, 1
  %4310 = sub nsw i32 %4309, %4307
  %4311 = sitofp i32 %4310 to float
  %4312 = fsub fast float %4261, %4311
  %4313 = call float @dx.op.binary.f32(i32 35, float %4312, float 0.000000e+00)  ; FMax(a,b)
  %4314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4304, %dx.types.Handle %53, float %4301, float %4302, float %4292, float undef, i32 0, i32 0, i32 undef, float %4313)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4315 = extractvalue %dx.types.ResRet.f32 %4314, 0
  %4316 = fmul fast float %4315, %4286
  %4317 = fadd fast float %4316, %4289
  %4318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.f32 %4318, 0
  %4320 = extractvalue %dx.types.CBufRet.f32 %4318, 1
  %4321 = extractvalue %dx.types.CBufRet.f32 %4318, 2
  %4322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.f32 %4322, 3
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 3
  %4326 = extractvalue %dx.types.CBufRet.f32 %4318, 3
  %4327 = fadd fast float %4323, %4184
  %4328 = fadd fast float %4325, %4185
  %4329 = fadd fast float %4317, %4326
  %4330 = fmul fast float %4327, %4319
  %4331 = call float @dx.op.tertiary.f32(i32 46, float %4328, float %4320, float %4330)  ; FMad(a,b,c)
  %4332 = call float @dx.op.tertiary.f32(i32 46, float %4329, float %4321, float %4331)  ; FMad(a,b,c)
  %4333 = fsub fast float %4332, %4326
  %4334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.f32 %4334, 2
  %4336 = fsub fast float %4333, %4335
  %4337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4338 = extractvalue %dx.types.CBufRet.i32 %4337, 0
  %4339 = call i32 @dx.op.binary.i32(i32 40, i32 %4215, i32 %4338)  ; UMin(a,b)
  %4340 = mul i32 %4339, 36
  %4341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4340, i32 undef)  ; BufferLoad(srv,index,wot)
  %4342 = extractvalue %dx.types.ResRet.i32 %4341, 0
  %4343 = add i32 %4340, 4
  %4344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4345 = extractvalue %dx.types.CBufRet.f32 %4344, 0
  %4346 = fmul fast float %4345, %4237
  %4347 = fmul fast float %4345, %4239
  %4348 = extractvalue %dx.types.CBufRet.f32 %4344, 1
  %4349 = fadd fast float %4346, %4348
  %4350 = fadd fast float %4347, %4348
  %4351 = icmp eq i32 %4342, 0
  br i1 %4351, label %4420, label %4352

; <label>:4352                                    ; preds = %4283
  br label %4353

; <label>:4353                                    ; preds = %4410, %4352
  %4354 = phi float [ %4411, %4410 ], [ 0.000000e+00, %4352 ]
  %4355 = phi float [ %4412, %4410 ], [ 0.000000e+00, %4352 ]
  %4356 = phi float [ %4413, %4410 ], [ 0.000000e+00, %4352 ]
  %4357 = phi float [ %4414, %4410 ], [ 0.000000e+00, %4352 ]
  %4358 = phi float [ %4415, %4410 ], [ 0.000000e+00, %4352 ]
  %4359 = phi float [ %4416, %4410 ], [ 0.000000e+00, %4352 ]
  %4360 = phi i32 [ %4417, %4410 ], [ 0, %4352 ]
  %4361 = shl i32 %4360, 2
  %4362 = add i32 %4228, %4361
  %4363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4362, i32 undef)  ; BufferLoad(srv,index,wot)
  %4364 = extractvalue %dx.types.ResRet.f32 %4363, 0
  %4365 = add i32 %4232, %4361
  %4366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4367 = extractvalue %dx.types.ResRet.i32 %4366, 0
  %4368 = add i32 %4367, 0
  %4369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4368, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4370 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4369, i32 0)  ; GetDimensions(handle,mipLevel)
  %4371 = extractvalue %dx.types.Dimensions %4370, 0
  %4372 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4371)  ; FirstbitLo(value)
  %4373 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4374 = extractvalue %dx.types.CBufRet.i32 %4373, 1
  %4375 = sub nsw i32 %4374, %4372
  %4376 = sitofp i32 %4375 to float
  %4377 = fsub fast float %4261, %4376
  %4378 = call float @dx.op.binary.f32(i32 35, float %4377, float 0.000000e+00)  ; FMax(a,b)
  %4379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4369, %dx.types.Handle %53, float %4349, float %4350, float %4364, float undef, i32 0, i32 0, i32 undef, float %4378)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4380 = extractvalue %dx.types.ResRet.f32 %4379, 0
  %4381 = fcmp fast ogt float %4380, 0.000000e+00
  br i1 %4381, label %4382, label %4410

; <label>:4382                                    ; preds = %4353
  %4383 = add i32 %4343, %4361
  %4384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4383, i32 undef)  ; BufferLoad(srv,index,wot)
  %4385 = extractvalue %dx.types.ResRet.i32 %4384, 0
  %4386 = and i32 %4385, 32767
  %4387 = mul nuw nsw i32 %4386, 928
  %4388 = add nuw nsw i32 %4387, 48
  %4389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4388, i32 undef)  ; BufferLoad(srv,index,wot)
  %4390 = extractvalue %dx.types.ResRet.f32 %4389, 0
  %4391 = extractvalue %dx.types.ResRet.f32 %4389, 1
  %4392 = extractvalue %dx.types.ResRet.f32 %4389, 2
  %4393 = add nuw nsw i32 %4387, 60
  %4394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4393, i32 undef)  ; BufferLoad(srv,index,wot)
  %4395 = extractvalue %dx.types.ResRet.f32 %4394, 0
  %4396 = extractvalue %dx.types.ResRet.f32 %4394, 1
  %4397 = extractvalue %dx.types.ResRet.f32 %4394, 2
  %4398 = fmul fast float %4390, %4380
  %4399 = fmul fast float %4391, %4380
  %4400 = fmul fast float %4392, %4380
  %4401 = fadd fast float %4398, %4354
  %4402 = fadd fast float %4399, %4355
  %4403 = fadd fast float %4400, %4356
  %4404 = fmul fast float %4395, %4380
  %4405 = fmul fast float %4396, %4380
  %4406 = fmul fast float %4397, %4380
  %4407 = fadd fast float %4404, %4357
  %4408 = fadd fast float %4405, %4358
  %4409 = fadd fast float %4406, %4359
  br label %4410

; <label>:4410                                    ; preds = %4382, %4353
  %4411 = phi float [ %4401, %4382 ], [ %4354, %4353 ]
  %4412 = phi float [ %4402, %4382 ], [ %4355, %4353 ]
  %4413 = phi float [ %4403, %4382 ], [ %4356, %4353 ]
  %4414 = phi float [ %4407, %4382 ], [ %4357, %4353 ]
  %4415 = phi float [ %4408, %4382 ], [ %4358, %4353 ]
  %4416 = phi float [ %4409, %4382 ], [ %4359, %4353 ]
  %4417 = add nuw i32 %4360, 1
  %4418 = icmp eq i32 %4417, %4342
  br i1 %4418, label %4419, label %4353

; <label>:4419                                    ; preds = %4410
  br label %4420

; <label>:4420                                    ; preds = %4419, %4283
  %4421 = phi float [ 0.000000e+00, %4283 ], [ %4411, %4419 ]
  %4422 = phi float [ 0.000000e+00, %4283 ], [ %4412, %4419 ]
  %4423 = phi float [ 0.000000e+00, %4283 ], [ %4413, %4419 ]
  %4424 = phi float [ 0.000000e+00, %4283 ], [ %4414, %4419 ]
  %4425 = phi float [ 0.000000e+00, %4283 ], [ %4415, %4419 ]
  %4426 = phi float [ 0.000000e+00, %4283 ], [ %4416, %4419 ]
  %4427 = fadd fast float %4424, %4421
  %4428 = fmul fast float %4427, 0x3F847AE140000000
  %4429 = fadd fast float %4425, %4422
  %4430 = fmul fast float %4429, 0x3F847AE140000000
  %4431 = fadd fast float %4426, %4423
  %4432 = fmul fast float %4431, 0x3F847AE140000000
  br label %4433

; <label>:4433                                    ; preds = %4420, %4217, %4162, %4159, %4130, %4092
  %4434 = phi float [ %4144, %4130 ], [ -1.310720e+05, %4092 ], [ %4336, %4420 ], [ -1.310720e+05, %4162 ], [ -1.310720e+05, %4217 ], [ -1.310720e+05, %4159 ]
  %4435 = phi float [ %4154, %4130 ], [ 0.000000e+00, %4092 ], [ %4428, %4420 ], [ 0.000000e+00, %4162 ], [ 0.000000e+00, %4217 ], [ 0.000000e+00, %4159 ]
  %4436 = phi float [ %4156, %4130 ], [ 0.000000e+00, %4092 ], [ %4430, %4420 ], [ 0.000000e+00, %4162 ], [ 0.000000e+00, %4217 ], [ 0.000000e+00, %4159 ]
  %4437 = phi float [ %4158, %4130 ], [ 0.000000e+00, %4092 ], [ %4432, %4420 ], [ 0.000000e+00, %4162 ], [ 0.000000e+00, %4217 ], [ 0.000000e+00, %4159 ]
  %4438 = phi i1 [ true, %4130 ], [ false, %4092 ], [ true, %4420 ], [ false, %4162 ], [ false, %4217 ], [ false, %4159 ]
  %4439 = and i32 %241, 3
  %4440 = icmp eq i32 %4439, 1
  %4441 = select i1 %4440, float 1.000000e+00, float 0.000000e+00
  %4442 = fsub fast float %4434, %205
  %4443 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4444 = select i1 %4438, float %4443, float 1.000000e+00
  %4445 = fmul fast float %4444, %4441
  %4446 = icmp eq i32 %4439, 3
  %4447 = select i1 %4446, float 1.000000e+00, float %4445
  %4448 = call float @dx.op.binary.f32(i32 35, float %4035, float %4447)  ; FMax(a,b)
  %4449 = fcmp fast olt float %4447, 1.000000e+00
  %4450 = fcmp uge float %77, 0.000000e+00
  %4451 = and i1 %4450, %4449
  br i1 %4451, label %4452, label %4462

; <label>:4452                                    ; preds = %4433
  %4453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %53, float %77, float %78, float %79, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4454 = extractvalue %dx.types.ResRet.f32 %4453, 0
  %4455 = extractvalue %dx.types.ResRet.f32 %4453, 1
  %4456 = extractvalue %dx.types.ResRet.f32 %4453, 2
  %4457 = fadd fast float %4454, %4448
  %4458 = fcmp ule float %76, 0.000000e+00
  %4459 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4460 = select i1 %4458, float %4459, float 1.000000e+00
  %4461 = fmul fast float %4460, %4456
  br label %4462

; <label>:4462                                    ; preds = %4452, %4433
  %4463 = phi float [ %4457, %4452 ], [ %4448, %4433 ]
  %4464 = phi float [ %4455, %4452 ], [ 0.000000e+00, %4433 ]
  %4465 = phi float [ %4461, %4452 ], [ 0.000000e+00, %4433 ]
  %4466 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4467 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4468 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4469 = fcmp fast une float %4467, 0.000000e+00
  %4470 = fcmp fast une float %4468, 0.000000e+00
  %4471 = or i1 %4469, %4470
  br i1 %4471, label %4472, label %5031

; <label>:4472                                    ; preds = %4462
  br i1 %4469, label %4473, label %4746

; <label>:4473                                    ; preds = %4472
  %4474 = call float @dx.op.unary.f32(i32 23, float %4032)  ; Log(value)
  %4475 = fmul fast float %4474, 4.000000e+00
  %4476 = call float @dx.op.unary.f32(i32 21, float %4475)  ; Exp(value)
  %4477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4478 = extractvalue %dx.types.CBufRet.f32 %4477, 0
  %4479 = fmul fast float %4478, %64
  %4480 = fmul fast float %4478, %65
  %4481 = fmul fast float %4478, %66
  %4482 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4483 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4484 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4485 = call float @dx.op.unary.f32(i32 23, float %4482)  ; Log(value)
  %4486 = call float @dx.op.unary.f32(i32 23, float %4483)  ; Log(value)
  %4487 = call float @dx.op.unary.f32(i32 23, float %4484)  ; Log(value)
  %4488 = fmul fast float %4485, 4.000000e+00
  %4489 = fmul fast float %4486, 4.000000e+00
  %4490 = fmul fast float %4487, 4.000000e+00
  %4491 = call float @dx.op.unary.f32(i32 21, float %4488)  ; Exp(value)
  %4492 = call float @dx.op.unary.f32(i32 21, float %4489)  ; Exp(value)
  %4493 = call float @dx.op.unary.f32(i32 21, float %4490)  ; Exp(value)
  %4494 = fadd fast float %4492, %4491
  %4495 = fadd fast float %4494, %4493
  %4496 = fdiv fast float 1.000000e+00, %4495
  %4497 = fmul fast float %4496, %4491
  %4498 = fcmp fast ogt float %73, 0.000000e+00
  %4499 = fcmp fast ogt float %74, 0.000000e+00
  %4500 = fcmp fast ogt float %75, 0.000000e+00
  %4501 = fcmp fast olt float %73, 0.000000e+00
  %4502 = fcmp fast olt float %74, 0.000000e+00
  %4503 = fcmp fast olt float %75, 0.000000e+00
  %4504 = zext i1 %4498 to i32
  %4505 = zext i1 %4499 to i32
  %4506 = zext i1 %4500 to i32
  %4507 = zext i1 %4501 to i32
  %4508 = zext i1 %4502 to i32
  %4509 = zext i1 %4503 to i32
  %4510 = sub nsw i32 %4504, %4507
  %4511 = sub nsw i32 %4505, %4508
  %4512 = sub nsw i32 %4506, %4509
  %4513 = call float @dx.op.unary.f32(i32 83, float %4479)  ; DerivCoarseX(value)
  %4514 = call float @dx.op.unary.f32(i32 83, float %4480)  ; DerivCoarseX(value)
  %4515 = call float @dx.op.unary.f32(i32 83, float %4481)  ; DerivCoarseX(value)
  %4516 = call float @dx.op.unary.f32(i32 84, float %4479)  ; DerivCoarseY(value)
  %4517 = call float @dx.op.unary.f32(i32 84, float %4480)  ; DerivCoarseY(value)
  %4518 = call float @dx.op.unary.f32(i32 84, float %4481)  ; DerivCoarseY(value)
  %4519 = fcmp fast ole float %273, %4497
  %4520 = fmul fast float %4496, %4494
  %4521 = fcmp fast ole float %273, %4520
  %4522 = select i1 %4521, float %4481, float %4479
  %4523 = select i1 %4521, float %4479, float %4480
  %4524 = select i1 %4519, float %4480, float %4522
  %4525 = select i1 %4519, float %4481, float %4523
  %4526 = select i1 %4521, float %4515, float %4513
  %4527 = select i1 %4521, float %4513, float %4514
  %4528 = select i1 %4519, float %4514, float %4526
  %4529 = select i1 %4519, float %4515, float %4527
  %4530 = select i1 %4521, float %4518, float %4516
  %4531 = select i1 %4521, float %4516, float %4517
  %4532 = select i1 %4519, float %4517, float %4530
  %4533 = select i1 %4519, float %4518, float %4531
  %4534 = call float @dx.op.unary.f32(i32 27, float %4524)  ; Round_ni(value)
  %4535 = call float @dx.op.unary.f32(i32 27, float %4525)  ; Round_ni(value)
  %4536 = fptosi float %4534 to i32
  %4537 = fptosi float %4535 to i32
  %4538 = xor i32 %4537, %4536
  %4539 = sitofp i32 %4538 to float
  %4540 = fptosi float %4539 to i32
  %4541 = sitofp i32 %4540 to float
  %4542 = fmul fast float %4541, 0x3FE3C6EF40000000
  %4543 = frem fast float %4534, 2.560000e+02
  %4544 = frem fast float %4535, 2.560000e+02
  %4545 = fptoui float %4543 to i32
  %4546 = fptoui float %4544 to i32
  %4547 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4545, i32 %4546, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4548 = extractvalue %dx.types.ResRet.f32 %4547, 0
  %4549 = extractvalue %dx.types.ResRet.f32 %4547, 1
  %4550 = extractvalue %dx.types.ResRet.f32 %4547, 2
  %4551 = fadd fast float %4548, %4542
  %4552 = fadd fast float %4549, %4542
  %4553 = fadd fast float %4550, %4542
  %4554 = call float @dx.op.unary.f32(i32 22, float %4551)  ; Frc(value)
  %4555 = call float @dx.op.unary.f32(i32 22, float %4552)  ; Frc(value)
  %4556 = call float @dx.op.unary.f32(i32 22, float %4553)  ; Frc(value)
  %4557 = fmul fast float %4556, 0x401921FB60000000
  %4558 = call float @dx.op.unary.f32(i32 13, float %4557)  ; Sin(value)
  %4559 = call float @dx.op.unary.f32(i32 12, float %4557)  ; Cos(value)
  %4560 = fsub fast float -0.000000e+00, %4559
  %4561 = fmul fast float %4559, %4524
  %4562 = call float @dx.op.tertiary.f32(i32 46, float %4558, float %4525, float %4561)  ; FMad(a,b,c)
  %4563 = fmul fast float %4558, %4524
  %4564 = call float @dx.op.tertiary.f32(i32 46, float %4560, float %4525, float %4563)  ; FMad(a,b,c)
  %4565 = fadd fast float %4562, %4554
  %4566 = fadd fast float %4564, %4555
  %4567 = extractvalue %dx.types.CBufRet.f32 %4477, 3
  %4568 = bitcast float %4567 to i32
  %4569 = icmp eq i32 %4568, 0
  br i1 %4569, label %4608, label %4570

; <label>:4570                                    ; preds = %4473
  %4571 = add i32 %4568, 0
  %4572 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4571, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4573 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4572, %dx.types.Handle %113, float %4565, float %4566, float undef, float undef, i32 0, i32 0, i32 undef, float %4528, float %4529, float undef, float %4532, float %4533, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4576 = extractvalue %dx.types.CBufRet.f32 %4575, 1
  %4577 = extractvalue %dx.types.CBufRet.f32 %4575, 2
  %4578 = fsub fast float 1.000000e+00, %4467
  %4579 = call float @dx.op.binary.f32(i32 35, float %4578, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4580 = bitcast float %4467 to i32
  %4581 = sitofp i32 %4580 to float
  %4582 = fadd fast float %4581, 0xC1CFBF8940000000
  %4583 = fmul fast float %4577, %4582
  %4584 = fadd fast float %4583, 0x41CFBF8940000000
  %4585 = fptosi float %4584 to i32
  %4586 = bitcast i32 %4585 to float
  %4587 = bitcast float %4579 to i32
  %4588 = sitofp i32 %4587 to float
  %4589 = fadd fast float %4588, 0xC1CFBF8940000000
  %4590 = fmul fast float %4589, %4577
  %4591 = fadd fast float %4590, 0x41CFBF8940000000
  %4592 = fptosi float %4591 to i32
  %4593 = bitcast i32 %4592 to float
  %4594 = fmul fast float %4586, %4576
  %4595 = fmul fast float %4593, %4576
  %4596 = fsub fast float %4579, %4594
  %4597 = fadd fast float %4595, %4579
  %4598 = call float @dx.op.unary.f32(i32 7, float %4596)  ; Saturate(value)
  %4599 = call float @dx.op.unary.f32(i32 7, float %4597)  ; Saturate(value)
  %4600 = fsub fast float %4574, %4598
  %4601 = fsub fast float %4599, %4598
  %4602 = bitcast float %4601 to i32
  %4603 = sub nsw i32 2129859010, %4602
  %4604 = bitcast i32 %4603 to float
  %4605 = fmul fast float %4604, %4600
  %4606 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4607 = fcmp fast olt float %4606, 0x3F70101020000000
  br i1 %4607, label %4746, label %4608

; <label>:4608                                    ; preds = %4570, %4473
  %4609 = phi float [ %4606, %4570 ], [ %4467, %4473 ]
  %4610 = fmul fast float %4609, %4476
  %4611 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4612 = extractvalue %dx.types.CBufRet.i32 %4611, 1
  %4613 = extractvalue %dx.types.CBufRet.i32 %4611, 0
  %4614 = add i32 %4613, 0
  %4615 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4614, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4616 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4615, %dx.types.Handle %112, float %4565, float %4566, float undef, float undef, i32 0, i32 0, i32 undef, float %4528, float %4529, float undef, float %4532, float %4533, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 0
  %4618 = extractvalue %dx.types.ResRet.f32 %4616, 1
  %4619 = extractvalue %dx.types.ResRet.f32 %4616, 2
  %4620 = extractvalue %dx.types.ResRet.f32 %4616, 3
  %4621 = and i32 %4612, 255
  %4622 = uitofp i32 %4621 to float
  %4623 = lshr i32 %4612, 8
  %4624 = and i32 %4623, 255
  %4625 = uitofp i32 %4624 to float
  %4626 = fmul fast float %4620, %4622
  %4627 = fadd fast float %4626, %4625
  %4628 = fmul fast float %4627, 0x3F70101000000000
  %4629 = fadd fast float %4628, 0xBFB99999A0000000
  %4630 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4631 = fmul fast float %4630, 0x3FF1C71C80000000
  %4632 = call float @dx.op.binary.f32(i32 36, float %4628, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4633 = fsub fast float 1.000000e+00, %4631
  %4634 = call float @dx.op.unary.f32(i32 7, float %4633)  ; Saturate(value)
  %4635 = fmul fast float %4634, %4617
  %4636 = fmul fast float %4634, %4618
  %4637 = fmul fast float %4634, %4619
  %4638 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4639 = call float @dx.op.unary.f32(i32 7, float %4636)  ; Saturate(value)
  %4640 = call float @dx.op.unary.f32(i32 7, float %4637)  ; Saturate(value)
  %4641 = fmul fast float %4631, %4617
  %4642 = fmul fast float %4631, %4618
  %4643 = fmul fast float %4631, %4619
  %4644 = fadd fast float %4641, %4632
  %4645 = fadd fast float %4642, %4632
  %4646 = fadd fast float %4643, %4632
  %4647 = call float @dx.op.unary.f32(i32 7, float %4644)  ; Saturate(value)
  %4648 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4649 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4650 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4651 = extractvalue %dx.types.CBufRet.i32 %4650, 3
  %4652 = extractvalue %dx.types.CBufRet.i32 %4650, 2
  %4653 = add i32 %4652, 0
  %4654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4653, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4655 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4654, %dx.types.Handle %112, float %4565, float %4566, float undef, float undef, i32 0, i32 0, i32 undef, float %4528, float %4529, float undef, float %4532, float %4533, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4656 = extractvalue %dx.types.ResRet.f32 %4655, 0
  %4657 = extractvalue %dx.types.ResRet.f32 %4655, 1
  %4658 = extractvalue %dx.types.ResRet.f32 %4655, 2
  %4659 = extractvalue %dx.types.ResRet.f32 %4655, 3
  %4660 = and i32 %4651, 255
  %4661 = uitofp i32 %4660 to float
  %4662 = lshr i32 %4651, 8
  %4663 = and i32 %4662, 255
  %4664 = uitofp i32 %4663 to float
  %4665 = lshr i32 %4651, 16
  %4666 = and i32 %4665, 255
  %4667 = uitofp i32 %4666 to float
  %4668 = fmul fast float %4667, 0x3F70101000000000
  %4669 = fmul fast float %4656, %4661
  %4670 = fadd fast float %4669, %4664
  %4671 = fmul fast float %4670, 0x3F70101000000000
  %4672 = fadd fast float %4657, -5.000000e-01
  %4673 = fadd fast float %4659, -5.000000e-01
  %4674 = fmul fast float %4672, %4668
  %4675 = fmul fast float %4673, %4668
  %4676 = fadd fast float %4674, 5.000000e-01
  %4677 = fadd fast float %4675, 5.000000e-01
  %4678 = fmul fast float %4676, 2.000000e+00
  %4679 = fadd fast float %4678, -1.000000e+00
  %4680 = fmul fast float %4677, 2.000000e+00
  %4681 = fadd fast float %4680, -1.000000e+00
  %4682 = fadd fast float %4679, %4681
  %4683 = fmul fast float %4682, 5.000000e-01
  %4684 = fsub fast float %4679, %4681
  %4685 = fmul fast float %4684, 5.000000e-01
  %4686 = call float @dx.op.unary.f32(i32 6, float %4683)  ; FAbs(value)
  %4687 = fsub fast float 1.000000e+00, %4686
  %4688 = call float @dx.op.unary.f32(i32 6, float %4685)  ; FAbs(value)
  %4689 = fsub fast float %4687, %4688
  %4690 = call float @dx.op.dot3.f32(i32 55, float %4683, float %4685, float %4689, float %4683, float %4685, float %4689)  ; Dot3(ax,ay,az,bx,by,bz)
  %4691 = call float @dx.op.unary.f32(i32 25, float %4690)  ; Rsqrt(value)
  %4692 = fmul fast float %4683, %4691
  %4693 = fmul fast float %4685, %4691
  %4694 = select i1 %4521, i32 %4511, i32 %4512
  %4695 = select i1 %4519, i32 %4510, i32 %4694
  %4696 = sitofp i32 %4695 to float
  %4697 = fmul fast float %4689, %4696
  %4698 = fmul fast float %4697, %4691
  %4699 = select i1 %4521, float %4698, float %4693
  %4700 = select i1 %4521, float %4693, float %4698
  %4701 = select i1 %4519, float %4698, float %4692
  %4702 = select i1 %4519, float %4693, float %4699
  %4703 = select i1 %4519, float %4692, float %4700
  %4704 = fsub fast float %4638, %4071
  %4705 = fsub fast float %4639, %4072
  %4706 = fsub fast float %4640, %4073
  %4707 = fmul fast float %4704, %4610
  %4708 = fmul fast float %4705, %4610
  %4709 = fmul fast float %4706, %4610
  %4710 = fadd fast float %4707, %4071
  %4711 = fadd fast float %4708, %4072
  %4712 = fadd fast float %4709, %4073
  %4713 = fsub fast float %4647, %4056
  %4714 = fsub fast float %4648, %4057
  %4715 = fsub fast float %4649, %4058
  %4716 = fmul fast float %4713, %4610
  %4717 = fmul fast float %4714, %4610
  %4718 = fmul fast float %4715, %4610
  %4719 = fadd fast float %4716, %4056
  %4720 = fadd fast float %4717, %4057
  %4721 = fadd fast float %4718, %4058
  %4722 = fadd fast float %4701, %4020
  %4723 = fadd fast float %4702, %4021
  %4724 = fadd fast float %4703, %4022
  %4725 = call float @dx.op.dot3.f32(i32 55, float %4722, float %4723, float %4724, float %4722, float %4723, float %4724)  ; Dot3(ax,ay,az,bx,by,bz)
  %4726 = call float @dx.op.unary.f32(i32 25, float %4725)  ; Rsqrt(value)
  %4727 = fmul fast float %4722, %4726
  %4728 = fmul fast float %4723, %4726
  %4729 = fmul fast float %4724, %4726
  %4730 = fsub fast float %4727, %4020
  %4731 = fsub fast float %4728, %4021
  %4732 = fsub fast float %4729, %4022
  %4733 = fmul fast float %4730, %4610
  %4734 = fmul fast float %4731, %4610
  %4735 = fmul fast float %4732, %4610
  %4736 = fadd fast float %4733, %4020
  %4737 = fadd fast float %4734, %4021
  %4738 = fadd fast float %4735, %4022
  %4739 = call float @dx.op.binary.f32(i32 36, float %4032, float %4658)  ; FMin(a,b)
  %4740 = fsub fast float %4739, %4032
  %4741 = fmul fast float %4740, %4610
  %4742 = fadd fast float %4741, %4032
  %4743 = fsub fast float %4671, %4059
  %4744 = fmul fast float %4743, %4610
  %4745 = fadd fast float %4744, %4059
  br label %4746

; <label>:4746                                    ; preds = %4608, %4570, %4472
  %4747 = phi float [ %4710, %4608 ], [ %4071, %4570 ], [ %4071, %4472 ]
  %4748 = phi float [ %4711, %4608 ], [ %4072, %4570 ], [ %4072, %4472 ]
  %4749 = phi float [ %4712, %4608 ], [ %4073, %4570 ], [ %4073, %4472 ]
  %4750 = phi float [ %4719, %4608 ], [ %4056, %4570 ], [ %4056, %4472 ]
  %4751 = phi float [ %4720, %4608 ], [ %4057, %4570 ], [ %4057, %4472 ]
  %4752 = phi float [ %4721, %4608 ], [ %4058, %4570 ], [ %4058, %4472 ]
  %4753 = phi float [ %4736, %4608 ], [ %4020, %4570 ], [ %4020, %4472 ]
  %4754 = phi float [ %4737, %4608 ], [ %4021, %4570 ], [ %4021, %4472 ]
  %4755 = phi float [ %4738, %4608 ], [ %4022, %4570 ], [ %4022, %4472 ]
  %4756 = phi float [ %4745, %4608 ], [ %4059, %4570 ], [ %4059, %4472 ]
  %4757 = phi float [ %4742, %4608 ], [ %4032, %4570 ], [ %4032, %4472 ]
  br i1 %4470, label %4758, label %5031

; <label>:4758                                    ; preds = %4746
  %4759 = call float @dx.op.unary.f32(i32 23, float %4757)  ; Log(value)
  %4760 = fmul fast float %4759, 4.000000e+00
  %4761 = call float @dx.op.unary.f32(i32 21, float %4760)  ; Exp(value)
  %4762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4762, 0
  %4764 = fmul fast float %4763, %64
  %4765 = fmul fast float %4763, %65
  %4766 = fmul fast float %4763, %66
  %4767 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4768 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4769 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4770 = call float @dx.op.unary.f32(i32 23, float %4767)  ; Log(value)
  %4771 = call float @dx.op.unary.f32(i32 23, float %4768)  ; Log(value)
  %4772 = call float @dx.op.unary.f32(i32 23, float %4769)  ; Log(value)
  %4773 = fmul fast float %4770, 4.000000e+00
  %4774 = fmul fast float %4771, 4.000000e+00
  %4775 = fmul fast float %4772, 4.000000e+00
  %4776 = call float @dx.op.unary.f32(i32 21, float %4773)  ; Exp(value)
  %4777 = call float @dx.op.unary.f32(i32 21, float %4774)  ; Exp(value)
  %4778 = call float @dx.op.unary.f32(i32 21, float %4775)  ; Exp(value)
  %4779 = fadd fast float %4777, %4776
  %4780 = fadd fast float %4779, %4778
  %4781 = fdiv fast float 1.000000e+00, %4780
  %4782 = fmul fast float %4781, %4776
  %4783 = fcmp fast ogt float %73, 0.000000e+00
  %4784 = fcmp fast ogt float %74, 0.000000e+00
  %4785 = fcmp fast ogt float %75, 0.000000e+00
  %4786 = fcmp fast olt float %73, 0.000000e+00
  %4787 = fcmp fast olt float %74, 0.000000e+00
  %4788 = fcmp fast olt float %75, 0.000000e+00
  %4789 = zext i1 %4783 to i32
  %4790 = zext i1 %4784 to i32
  %4791 = zext i1 %4785 to i32
  %4792 = zext i1 %4786 to i32
  %4793 = zext i1 %4787 to i32
  %4794 = zext i1 %4788 to i32
  %4795 = sub nsw i32 %4789, %4792
  %4796 = sub nsw i32 %4790, %4793
  %4797 = sub nsw i32 %4791, %4794
  %4798 = call float @dx.op.unary.f32(i32 83, float %4764)  ; DerivCoarseX(value)
  %4799 = call float @dx.op.unary.f32(i32 83, float %4765)  ; DerivCoarseX(value)
  %4800 = call float @dx.op.unary.f32(i32 83, float %4766)  ; DerivCoarseX(value)
  %4801 = call float @dx.op.unary.f32(i32 84, float %4764)  ; DerivCoarseY(value)
  %4802 = call float @dx.op.unary.f32(i32 84, float %4765)  ; DerivCoarseY(value)
  %4803 = call float @dx.op.unary.f32(i32 84, float %4766)  ; DerivCoarseY(value)
  %4804 = fcmp fast ole float %273, %4782
  %4805 = fmul fast float %4781, %4779
  %4806 = fcmp fast ole float %273, %4805
  %4807 = select i1 %4806, float %4766, float %4764
  %4808 = select i1 %4806, float %4764, float %4765
  %4809 = select i1 %4804, float %4765, float %4807
  %4810 = select i1 %4804, float %4766, float %4808
  %4811 = select i1 %4806, float %4800, float %4798
  %4812 = select i1 %4806, float %4798, float %4799
  %4813 = select i1 %4804, float %4799, float %4811
  %4814 = select i1 %4804, float %4800, float %4812
  %4815 = select i1 %4806, float %4803, float %4801
  %4816 = select i1 %4806, float %4801, float %4802
  %4817 = select i1 %4804, float %4802, float %4815
  %4818 = select i1 %4804, float %4803, float %4816
  %4819 = call float @dx.op.unary.f32(i32 27, float %4809)  ; Round_ni(value)
  %4820 = call float @dx.op.unary.f32(i32 27, float %4810)  ; Round_ni(value)
  %4821 = fptosi float %4819 to i32
  %4822 = fptosi float %4820 to i32
  %4823 = xor i32 %4822, %4821
  %4824 = sitofp i32 %4823 to float
  %4825 = fptosi float %4824 to i32
  %4826 = sitofp i32 %4825 to float
  %4827 = fmul fast float %4826, 0x3FE3C6EF40000000
  %4828 = frem fast float %4819, 2.560000e+02
  %4829 = frem fast float %4820, 2.560000e+02
  %4830 = fptoui float %4828 to i32
  %4831 = fptoui float %4829 to i32
  %4832 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4830, i32 %4831, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4833 = extractvalue %dx.types.ResRet.f32 %4832, 0
  %4834 = extractvalue %dx.types.ResRet.f32 %4832, 1
  %4835 = extractvalue %dx.types.ResRet.f32 %4832, 2
  %4836 = fadd fast float %4833, %4827
  %4837 = fadd fast float %4834, %4827
  %4838 = fadd fast float %4835, %4827
  %4839 = call float @dx.op.unary.f32(i32 22, float %4836)  ; Frc(value)
  %4840 = call float @dx.op.unary.f32(i32 22, float %4837)  ; Frc(value)
  %4841 = call float @dx.op.unary.f32(i32 22, float %4838)  ; Frc(value)
  %4842 = fmul fast float %4841, 0x401921FB60000000
  %4843 = call float @dx.op.unary.f32(i32 13, float %4842)  ; Sin(value)
  %4844 = call float @dx.op.unary.f32(i32 12, float %4842)  ; Cos(value)
  %4845 = fsub fast float -0.000000e+00, %4844
  %4846 = fmul fast float %4844, %4809
  %4847 = call float @dx.op.tertiary.f32(i32 46, float %4843, float %4810, float %4846)  ; FMad(a,b,c)
  %4848 = fmul fast float %4843, %4809
  %4849 = call float @dx.op.tertiary.f32(i32 46, float %4845, float %4810, float %4848)  ; FMad(a,b,c)
  %4850 = fadd fast float %4847, %4839
  %4851 = fadd fast float %4849, %4840
  %4852 = extractvalue %dx.types.CBufRet.f32 %4762, 3
  %4853 = bitcast float %4852 to i32
  %4854 = icmp eq i32 %4853, 0
  br i1 %4854, label %4893, label %4855

; <label>:4855                                    ; preds = %4758
  %4856 = add i32 %4853, 0
  %4857 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4856, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4858 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4857, %dx.types.Handle %113, float %4850, float %4851, float undef, float undef, i32 0, i32 0, i32 undef, float %4813, float %4814, float undef, float %4817, float %4818, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4859 = extractvalue %dx.types.ResRet.f32 %4858, 0
  %4860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4861 = extractvalue %dx.types.CBufRet.f32 %4860, 1
  %4862 = extractvalue %dx.types.CBufRet.f32 %4860, 2
  %4863 = fsub fast float 1.000000e+00, %4468
  %4864 = call float @dx.op.binary.f32(i32 35, float %4863, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4865 = bitcast float %4468 to i32
  %4866 = sitofp i32 %4865 to float
  %4867 = fadd fast float %4866, 0xC1CFBF8940000000
  %4868 = fmul fast float %4862, %4867
  %4869 = fadd fast float %4868, 0x41CFBF8940000000
  %4870 = fptosi float %4869 to i32
  %4871 = bitcast i32 %4870 to float
  %4872 = bitcast float %4864 to i32
  %4873 = sitofp i32 %4872 to float
  %4874 = fadd fast float %4873, 0xC1CFBF8940000000
  %4875 = fmul fast float %4874, %4862
  %4876 = fadd fast float %4875, 0x41CFBF8940000000
  %4877 = fptosi float %4876 to i32
  %4878 = bitcast i32 %4877 to float
  %4879 = fmul fast float %4871, %4861
  %4880 = fmul fast float %4878, %4861
  %4881 = fsub fast float %4864, %4879
  %4882 = fadd fast float %4880, %4864
  %4883 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4884 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4885 = fsub fast float %4859, %4883
  %4886 = fsub fast float %4884, %4883
  %4887 = bitcast float %4886 to i32
  %4888 = sub nsw i32 2129859010, %4887
  %4889 = bitcast i32 %4888 to float
  %4890 = fmul fast float %4889, %4885
  %4891 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4892 = fcmp fast olt float %4891, 0x3F70101020000000
  br i1 %4892, label %5031, label %4893

; <label>:4893                                    ; preds = %4855, %4758
  %4894 = phi float [ %4891, %4855 ], [ %4468, %4758 ]
  %4895 = fmul fast float %4894, %4761
  %4896 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4897 = extractvalue %dx.types.CBufRet.i32 %4896, 1
  %4898 = extractvalue %dx.types.CBufRet.i32 %4896, 0
  %4899 = add i32 %4898, 0
  %4900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4899, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4901 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4900, %dx.types.Handle %112, float %4850, float %4851, float undef, float undef, i32 0, i32 0, i32 undef, float %4813, float %4814, float undef, float %4817, float %4818, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4902 = extractvalue %dx.types.ResRet.f32 %4901, 0
  %4903 = extractvalue %dx.types.ResRet.f32 %4901, 1
  %4904 = extractvalue %dx.types.ResRet.f32 %4901, 2
  %4905 = extractvalue %dx.types.ResRet.f32 %4901, 3
  %4906 = and i32 %4897, 255
  %4907 = uitofp i32 %4906 to float
  %4908 = lshr i32 %4897, 8
  %4909 = and i32 %4908, 255
  %4910 = uitofp i32 %4909 to float
  %4911 = fmul fast float %4905, %4907
  %4912 = fadd fast float %4911, %4910
  %4913 = fmul fast float %4912, 0x3F70101000000000
  %4914 = fadd fast float %4913, 0xBFB99999A0000000
  %4915 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4916 = fmul fast float %4915, 0x3FF1C71C80000000
  %4917 = call float @dx.op.binary.f32(i32 36, float %4913, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4918 = fsub fast float 1.000000e+00, %4916
  %4919 = call float @dx.op.unary.f32(i32 7, float %4918)  ; Saturate(value)
  %4920 = fmul fast float %4919, %4902
  %4921 = fmul fast float %4919, %4903
  %4922 = fmul fast float %4919, %4904
  %4923 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4924 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4925 = call float @dx.op.unary.f32(i32 7, float %4922)  ; Saturate(value)
  %4926 = fmul fast float %4916, %4902
  %4927 = fmul fast float %4916, %4903
  %4928 = fmul fast float %4916, %4904
  %4929 = fadd fast float %4926, %4917
  %4930 = fadd fast float %4927, %4917
  %4931 = fadd fast float %4928, %4917
  %4932 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4933 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4934 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4935 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4936 = extractvalue %dx.types.CBufRet.i32 %4935, 3
  %4937 = extractvalue %dx.types.CBufRet.i32 %4935, 2
  %4938 = add i32 %4937, 0
  %4939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4938, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4940 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4939, %dx.types.Handle %112, float %4850, float %4851, float undef, float undef, i32 0, i32 0, i32 undef, float %4813, float %4814, float undef, float %4817, float %4818, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4941 = extractvalue %dx.types.ResRet.f32 %4940, 0
  %4942 = extractvalue %dx.types.ResRet.f32 %4940, 1
  %4943 = extractvalue %dx.types.ResRet.f32 %4940, 2
  %4944 = extractvalue %dx.types.ResRet.f32 %4940, 3
  %4945 = and i32 %4936, 255
  %4946 = uitofp i32 %4945 to float
  %4947 = lshr i32 %4936, 8
  %4948 = and i32 %4947, 255
  %4949 = uitofp i32 %4948 to float
  %4950 = lshr i32 %4936, 16
  %4951 = and i32 %4950, 255
  %4952 = uitofp i32 %4951 to float
  %4953 = fmul fast float %4952, 0x3F70101000000000
  %4954 = fmul fast float %4941, %4946
  %4955 = fadd fast float %4954, %4949
  %4956 = fmul fast float %4955, 0x3F70101000000000
  %4957 = fadd fast float %4942, -5.000000e-01
  %4958 = fadd fast float %4944, -5.000000e-01
  %4959 = fmul fast float %4957, %4953
  %4960 = fmul fast float %4958, %4953
  %4961 = fadd fast float %4959, 5.000000e-01
  %4962 = fadd fast float %4960, 5.000000e-01
  %4963 = fmul fast float %4961, 2.000000e+00
  %4964 = fadd fast float %4963, -1.000000e+00
  %4965 = fmul fast float %4962, 2.000000e+00
  %4966 = fadd fast float %4965, -1.000000e+00
  %4967 = fadd fast float %4964, %4966
  %4968 = fmul fast float %4967, 5.000000e-01
  %4969 = fsub fast float %4964, %4966
  %4970 = fmul fast float %4969, 5.000000e-01
  %4971 = call float @dx.op.unary.f32(i32 6, float %4968)  ; FAbs(value)
  %4972 = fsub fast float 1.000000e+00, %4971
  %4973 = call float @dx.op.unary.f32(i32 6, float %4970)  ; FAbs(value)
  %4974 = fsub fast float %4972, %4973
  %4975 = call float @dx.op.dot3.f32(i32 55, float %4968, float %4970, float %4974, float %4968, float %4970, float %4974)  ; Dot3(ax,ay,az,bx,by,bz)
  %4976 = call float @dx.op.unary.f32(i32 25, float %4975)  ; Rsqrt(value)
  %4977 = fmul fast float %4968, %4976
  %4978 = fmul fast float %4970, %4976
  %4979 = select i1 %4806, i32 %4796, i32 %4797
  %4980 = select i1 %4804, i32 %4795, i32 %4979
  %4981 = sitofp i32 %4980 to float
  %4982 = fmul fast float %4974, %4981
  %4983 = fmul fast float %4982, %4976
  %4984 = select i1 %4806, float %4983, float %4978
  %4985 = select i1 %4806, float %4978, float %4983
  %4986 = select i1 %4804, float %4983, float %4977
  %4987 = select i1 %4804, float %4978, float %4984
  %4988 = select i1 %4804, float %4977, float %4985
  %4989 = fsub fast float %4923, %4747
  %4990 = fsub fast float %4924, %4748
  %4991 = fsub fast float %4925, %4749
  %4992 = fmul fast float %4989, %4895
  %4993 = fmul fast float %4990, %4895
  %4994 = fmul fast float %4991, %4895
  %4995 = fadd fast float %4992, %4747
  %4996 = fadd fast float %4993, %4748
  %4997 = fadd fast float %4994, %4749
  %4998 = fsub fast float %4932, %4750
  %4999 = fsub fast float %4933, %4751
  %5000 = fsub fast float %4934, %4752
  %5001 = fmul fast float %4998, %4895
  %5002 = fmul fast float %4999, %4895
  %5003 = fmul fast float %5000, %4895
  %5004 = fadd fast float %5001, %4750
  %5005 = fadd fast float %5002, %4751
  %5006 = fadd fast float %5003, %4752
  %5007 = fadd fast float %4986, %4753
  %5008 = fadd fast float %4987, %4754
  %5009 = fadd fast float %4988, %4755
  %5010 = call float @dx.op.dot3.f32(i32 55, float %5007, float %5008, float %5009, float %5007, float %5008, float %5009)  ; Dot3(ax,ay,az,bx,by,bz)
  %5011 = call float @dx.op.unary.f32(i32 25, float %5010)  ; Rsqrt(value)
  %5012 = fmul fast float %5007, %5011
  %5013 = fmul fast float %5008, %5011
  %5014 = fmul fast float %5009, %5011
  %5015 = fsub fast float %5012, %4753
  %5016 = fsub fast float %5013, %4754
  %5017 = fsub fast float %5014, %4755
  %5018 = fmul fast float %5015, %4895
  %5019 = fmul fast float %5016, %4895
  %5020 = fmul fast float %5017, %4895
  %5021 = fadd fast float %5018, %4753
  %5022 = fadd fast float %5019, %4754
  %5023 = fadd fast float %5020, %4755
  %5024 = call float @dx.op.binary.f32(i32 36, float %4757, float %4943)  ; FMin(a,b)
  %5025 = fsub fast float %5024, %4757
  %5026 = fmul fast float %5025, %4895
  %5027 = fadd fast float %5026, %4757
  %5028 = fsub fast float %4956, %4756
  %5029 = fmul fast float %5028, %4895
  %5030 = fadd fast float %5029, %4756
  br label %5031

; <label>:5031                                    ; preds = %4893, %4855, %4746, %4462
  %5032 = phi float [ %4995, %4893 ], [ %4747, %4855 ], [ %4747, %4746 ], [ %4071, %4462 ]
  %5033 = phi float [ %4996, %4893 ], [ %4748, %4855 ], [ %4748, %4746 ], [ %4072, %4462 ]
  %5034 = phi float [ %4997, %4893 ], [ %4749, %4855 ], [ %4749, %4746 ], [ %4073, %4462 ]
  %5035 = phi float [ %5004, %4893 ], [ %4750, %4855 ], [ %4750, %4746 ], [ %4056, %4462 ]
  %5036 = phi float [ %5005, %4893 ], [ %4751, %4855 ], [ %4751, %4746 ], [ %4057, %4462 ]
  %5037 = phi float [ %5006, %4893 ], [ %4752, %4855 ], [ %4752, %4746 ], [ %4058, %4462 ]
  %5038 = phi float [ %5021, %4893 ], [ %4753, %4855 ], [ %4753, %4746 ], [ %4020, %4462 ]
  %5039 = phi float [ %5022, %4893 ], [ %4754, %4855 ], [ %4754, %4746 ], [ %4021, %4462 ]
  %5040 = phi float [ %5023, %4893 ], [ %4755, %4855 ], [ %4755, %4746 ], [ %4022, %4462 ]
  %5041 = phi float [ %5030, %4893 ], [ %4756, %4855 ], [ %4756, %4746 ], [ %4059, %4462 ]
  %5042 = phi float [ %5027, %4893 ], [ %4757, %4855 ], [ %4757, %4746 ], [ %4032, %4462 ]
  %5043 = fcmp fast une float %4466, 0.000000e+00
  br i1 %5043, label %5044, label %5213

; <label>:5044                                    ; preds = %5031
  %5045 = call float @dx.op.dot3.f32(i32 55, float %203, float %204, float %205, float %203, float %204, float %205)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = call float @dx.op.unary.f32(i32 25, float %5045)  ; Rsqrt(value)
  %5047 = fmul fast float %203, %5046
  %5048 = fsub fast float -0.000000e+00, %5047
  %5049 = fmul fast float %204, %5046
  %5050 = fsub fast float -0.000000e+00, %5049
  %5051 = fmul fast float %205, %5046
  %5052 = fsub fast float -0.000000e+00, %5051
  %5053 = call float @dx.op.dot3.f32(i32 55, float %5048, float %5050, float %5052, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5054 = fmul fast float %4466, 2.500000e+00
  %5055 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5056 = fmul fast float %4466, 0x4013FFFFE0000000
  %5057 = fadd fast float %5056, 0xBFFFFFFFE0000000
  %5058 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  %5059 = fmul fast float %4466, 0x4004000020000000
  %5060 = fadd fast float %5059, 0xBFF8000040000000
  %5061 = call float @dx.op.unary.f32(i32 7, float %5060)  ; Saturate(value)
  %5062 = fmul fast float %4038, 1.000000e+01
  %5063 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5064 = fmul fast float %5063, 2.000000e+00
  %5065 = fsub fast float 3.000000e+00, %5064
  %5066 = fmul fast float %5063, %5063
  %5067 = fmul fast float %5066, %5065
  %5068 = fsub fast float 1.000000e+00, %5067
  %5069 = fsub fast float 0x3FE3333340000000, %5041
  %5070 = fmul fast float %5069, 0x400AAAAAA0000000
  %5071 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5072 = fmul fast float %5068, %5071
  %5073 = fmul fast float %5032, 0x3FEA2B8620000000
  %5074 = fmul fast float %5033, 0x3FEA2B8620000000
  %5075 = fmul fast float %5034, 0x3FEA2B8620000000
  %5076 = fadd fast float %5073, 0x3FC81DFBA0000000
  %5077 = fmul fast float %5076, %5032
  %5078 = fadd fast float %5077, 0x3F910E6020000000
  %5079 = fadd fast float %5074, 0x3FC81DFBA0000000
  %5080 = fmul fast float %5079, %5033
  %5081 = fadd fast float %5080, 0x3F910E6020000000
  %5082 = fadd fast float %5075, 0x3FC81DFBA0000000
  %5083 = fmul fast float %5082, %5034
  %5084 = fadd fast float %5083, 0x3F910E6020000000
  %5085 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5086 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5087 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5088 = fsub fast float %5085, %5032
  %5089 = fsub fast float %5086, %5033
  %5090 = fsub fast float %5087, %5034
  %5091 = fmul fast float %5088, %5055
  %5092 = fmul fast float %5091, %5072
  %5093 = fmul fast float %5089, %5055
  %5094 = fmul fast float %5093, %5072
  %5095 = fmul fast float %5090, %5055
  %5096 = fmul fast float %5095, %5072
  %5097 = fadd fast float %5092, %5032
  %5098 = fadd fast float %5094, %5033
  %5099 = fadd fast float %5096, %5034
  %5100 = fmul fast float %5042, %5042
  %5101 = fmul fast float %5100, %5100
  %5102 = fadd fast float %5058, 1.000000e+00
  %5103 = fsub fast float %5102, %5072
  %5104 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5105 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5107 = fsub fast float 1.000000e+00, %5101
  %5108 = call float @dx.op.binary.f32(i32 36, float %5104, float %5107)  ; FMin(a,b)
  %5109 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5110 = call float @dx.op.binary.f32(i32 35, float %5108, float %5109)  ; FMax(a,b)
  %5111 = fadd fast float %5106, 0xBFE4CCCCC0000000
  %5112 = fmul fast float %5111, 0x4006DB6DA0000000
  %5113 = call float @dx.op.unary.f32(i32 7, float %5112)  ; Saturate(value)
  %5114 = fmul fast float %5113, 2.000000e+00
  %5115 = fsub fast float 3.000000e+00, %5114
  %5116 = bitcast float %5035 to i32
  %5117 = ashr i32 %5116, 1
  %5118 = add nsw i32 %5117, 532487669
  %5119 = bitcast i32 %5118 to float
  %5120 = fsub fast float 1.000000e+00, %5119
  %5121 = bitcast float %5120 to i32
  %5122 = sub nsw i32 2129859010, %5121
  %5123 = bitcast i32 %5122 to float
  %5124 = fmul fast float %5123, 2.000000e+00
  %5125 = bitcast float %5036 to i32
  %5126 = ashr i32 %5125, 1
  %5127 = add nsw i32 %5126, 532487669
  %5128 = bitcast i32 %5127 to float
  %5129 = fsub fast float 1.000000e+00, %5128
  %5130 = bitcast float %5129 to i32
  %5131 = sub nsw i32 2129859010, %5130
  %5132 = bitcast i32 %5131 to float
  %5133 = fmul fast float %5132, 2.000000e+00
  %5134 = bitcast float %5037 to i32
  %5135 = ashr i32 %5134, 1
  %5136 = add nsw i32 %5135, 532487669
  %5137 = bitcast i32 %5136 to float
  %5138 = fsub fast float 1.000000e+00, %5137
  %5139 = bitcast float %5138 to i32
  %5140 = sub nsw i32 2129859010, %5139
  %5141 = bitcast i32 %5140 to float
  %5142 = fmul fast float %5141, 2.000000e+00
  %5143 = fsub fast float 0x4002A9FBE0000000, %5124
  %5144 = fadd fast float %5124, 0x3FD54FDF00000000
  %5145 = bitcast float %5144 to i32
  %5146 = sub nsw i32 2129859010, %5145
  %5147 = bitcast i32 %5146 to float
  %5148 = fmul fast float %5147, %5143
  %5149 = fmul fast float %5148, %5148
  %5150 = fsub fast float 0x4002A9FBE0000000, %5133
  %5151 = fadd fast float %5133, 0x3FD54FDF00000000
  %5152 = bitcast float %5151 to i32
  %5153 = sub nsw i32 2129859010, %5152
  %5154 = bitcast i32 %5153 to float
  %5155 = fmul fast float %5154, %5150
  %5156 = fmul fast float %5155, %5155
  %5157 = fsub fast float 0x4002A9FBE0000000, %5142
  %5158 = fadd fast float %5142, 0x3FD54FDF00000000
  %5159 = bitcast float %5158 to i32
  %5160 = sub nsw i32 2129859010, %5159
  %5161 = bitcast i32 %5160 to float
  %5162 = fmul fast float %5161, %5157
  %5163 = fmul fast float %5162, %5162
  %5164 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5149)  ; FMax(a,b)
  %5165 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5156)  ; FMax(a,b)
  %5166 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5163)  ; FMax(a,b)
  %5167 = fsub fast float 1.000000e+00, %5053
  %5168 = fadd fast float %5167, %5068
  %5169 = call float @dx.op.unary.f32(i32 7, float %5168)  ; Saturate(value)
  %5170 = fsub fast float 1.000000e+00, %4447
  %5171 = fmul fast float %5110, %5170
  %5172 = fmul fast float %5113, %5113
  %5173 = fmul fast float %5172, %5171
  %5174 = fmul fast float %5173, %5115
  %5175 = fmul fast float %5170, 0xBFE99999A0000000
  %5176 = fmul fast float %5175, %5055
  %5177 = fmul fast float %5176, %5072
  %5178 = fadd fast float %5177, 1.000000e+00
  %5179 = fadd fast float %5041, -1.000000e+00
  %5180 = fmul fast float %5178, %5179
  %5181 = fadd fast float %5180, 1.000000e+00
  %5182 = fsub fast float %5164, %5035
  %5183 = fsub fast float %5165, %5036
  %5184 = fsub fast float %5166, %5037
  %5185 = fmul fast float %5174, %5182
  %5186 = fmul fast float %5174, %5183
  %5187 = fmul fast float %5174, %5184
  %5188 = fadd fast float %5185, %5035
  %5189 = fadd fast float %5186, %5036
  %5190 = fadd fast float %5187, %5037
  %5191 = fsub fast float %123, %5038
  %5192 = fsub fast float %124, %5039
  %5193 = fsub fast float %125, %5040
  %5194 = fmul fast float %5174, %5191
  %5195 = fmul fast float %5174, %5192
  %5196 = fmul fast float %5174, %5193
  %5197 = fadd fast float %5194, %5038
  %5198 = fadd fast float %5195, %5039
  %5199 = fadd fast float %5196, %5040
  %5200 = fmul fast float %5174, %5169
  %5201 = call float @dx.op.unary.f32(i32 7, float %5181)  ; Saturate(value)
  %5202 = fsub fast float 1.000000e+00, %5201
  %5203 = fmul fast float %5200, %5202
  %5204 = fadd fast float %5203, %5201
  %5205 = fsub fast float 1.000000e+00, %5042
  %5206 = fmul fast float %5174, %5205
  %5207 = fadd fast float %5206, %5042
  %5208 = call float @dx.op.dot3.f32(i32 55, float %5197, float %5198, float %5199, float %5197, float %5198, float %5199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5209 = call float @dx.op.unary.f32(i32 25, float %5208)  ; Rsqrt(value)
  %5210 = fmul fast float %5197, %5209
  %5211 = fmul fast float %5198, %5209
  %5212 = fmul fast float %5199, %5209
  br label %5213

; <label>:5213                                    ; preds = %5044, %5031
  %5214 = phi float [ %5097, %5044 ], [ %5032, %5031 ]
  %5215 = phi float [ %5098, %5044 ], [ %5033, %5031 ]
  %5216 = phi float [ %5099, %5044 ], [ %5034, %5031 ]
  %5217 = phi float [ %5188, %5044 ], [ %5035, %5031 ]
  %5218 = phi float [ %5189, %5044 ], [ %5036, %5031 ]
  %5219 = phi float [ %5190, %5044 ], [ %5037, %5031 ]
  %5220 = phi float [ %5210, %5044 ], [ %5038, %5031 ]
  %5221 = phi float [ %5211, %5044 ], [ %5039, %5031 ]
  %5222 = phi float [ %5212, %5044 ], [ %5040, %5031 ]
  %5223 = phi float [ %5204, %5044 ], [ %5041, %5031 ]
  %5224 = phi float [ %5207, %5044 ], [ %5042, %5031 ]
  %5225 = icmp eq i32 %62, 0
  br i1 %5225, label %5256, label %5226

; <label>:5226                                    ; preds = %5213
  %5227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.f32 %5227, 2
  %5229 = extractvalue %dx.types.CBufRet.f32 %5227, 3
  %5230 = fmul fast float %5228, %116
  %5231 = fmul fast float %5229, %117
  %5232 = fmul fast float %5230, 1.024000e+03
  %5233 = fmul fast float %5231, 1.024000e+03
  %5234 = fadd fast float %5232, -5.120000e+02
  %5235 = fadd fast float %5233, -5.120000e+02
  %5236 = fmul fast float %5230, 0x4081BEDF00000000
  %5237 = fadd fast float %5236, 0xC071BEDF00000000
  %5238 = call float @dx.op.unary.f32(i32 22, float %5237)  ; Frc(value)
  %5239 = fmul fast float %5234, %5238
  %5240 = fadd fast float %5239, %5235
  %5241 = fmul fast float %5231, 0x4073BEBE20000000
  %5242 = fadd fast float %5241, 0xC063BEBE20000000
  %5243 = call float @dx.op.unary.f32(i32 22, float %5242)  ; Frc(value)
  %5244 = fmul fast float %5235, %5243
  %5245 = fadd fast float %5244, %5234
  %5246 = fmul fast float %5240, %5245
  %5247 = call float @dx.op.unary.f32(i32 22, float %5246)  ; Frc(value)
  %5248 = add i32 %316, 12
  %5249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %5248, i32 undef)  ; BufferLoad(srv,index,wot)
  %5250 = extractvalue %dx.types.ResRet.i32 %5249, 0
  %5251 = and i32 %5250, 255
  %5252 = uitofp i32 %5251 to float
  %5253 = fmul fast float %5252, 0x3F70101020000000
  %5254 = fcmp fast olt float %5247, %5253
  br i1 %5254, label %5255, label %5256

; <label>:5255                                    ; preds = %5226
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5256

; <label>:5256                                    ; preds = %5255, %5226, %5213
  %5257 = fsub fast float -0.000000e+00, %205
  %5258 = call float @dx.op.dot3.f32(i32 55, float %203, float %204, float %205, float %203, float %204, float %205)  ; Dot3(ax,ay,az,bx,by,bz)
  %5259 = call float @dx.op.unary.f32(i32 25, float %5258)  ; Rsqrt(value)
  %5260 = fmul fast float %5259, %203
  %5261 = fmul fast float %5259, %204
  %5262 = fmul fast float %5259, %205
  %5263 = fsub fast float -0.000000e+00, %5260
  %5264 = fsub fast float -0.000000e+00, %5261
  %5265 = fsub fast float -0.000000e+00, %5262
  %5266 = select i1 %262, float 0.000000e+00, float %5219
  %5267 = call float @dx.op.dot3.f32(i32 55, float %5220, float %5221, float %5222, float %5263, float %5264, float %5265)  ; Dot3(ax,ay,az,bx,by,bz)
  %5268 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5269 = call float @dx.op.dot3.f32(i32 55, float %5260, float %5261, float %5262, float %5220, float %5221, float %5222)  ; Dot3(ax,ay,az,bx,by,bz)
  %5270 = fmul fast float %5269, 2.000000e+00
  %5271 = fmul fast float %5270, %5220
  %5272 = fmul fast float %5270, %5221
  %5273 = fmul fast float %5270, %5222
  %5274 = fsub fast float %5260, %5271
  %5275 = fsub fast float %5261, %5272
  %5276 = fsub fast float %5262, %5273
  %5277 = call float @dx.op.binary.f32(i32 36, float %5224, float 1.000000e+00)  ; FMin(a,b)
  %5278 = fsub fast float 1.000000e+00, %5277
  %5279 = bitcast float %5278 to i32
  %5280 = ashr i32 %5279, 1
  %5281 = add nsw i32 %5280, 532487669
  %5282 = bitcast i32 %5281 to float
  %5283 = fsub fast float 1.000000e+00, %5223
  %5284 = call float @dx.op.binary.f32(i32 35, float %5283, float 0x3F847AE140000000)  ; FMax(a,b)
  %5285 = fmul fast float %5284, %5284
  %5286 = fmul fast float %5285, %5285
  %5287 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  %5288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5282, float %5286, float %5287, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5289 = extractvalue %dx.types.ResRet.f32 %5288, 0
  %5290 = fsub fast float 1.000000e+00, %5224
  %5291 = bitcast float %5290 to i32
  %5292 = sub nsw i32 2129859010, %5291
  %5293 = bitcast i32 %5292 to float
  %5294 = fsub fast float 1.000000e+00, %83
  %5295 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5296 = call float @dx.op.binary.f32(i32 35, float %5295, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5297 = fdiv fast float %5294, %5296
  %5298 = call float @dx.op.dot3.f32(i32 55, float %5220, float %5221, float %5222, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5299 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5300 = fmul fast float %5299, 5.000000e-01
  %5301 = fadd fast float %5300, 5.000000e-01
  %5302 = fmul fast float %5301, %83
  %5303 = call float @dx.op.dot3.f32(i32 55, float %5220, float %5221, float %5222, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %5304 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5305 = fmul fast float %5304, %5297
  %5306 = fadd fast float %5302, %5305
  %5307 = fsub fast float 5.000000e-01, %5300
  %5308 = fmul fast float %5307, %5214
  %5309 = fmul fast float %5307, %5215
  %5310 = fmul fast float %5307, %5216
  %5311 = fadd fast float %5306, %5308
  %5312 = fadd fast float %5306, %5309
  %5313 = fadd fast float %5306, %5310
  %5314 = call float @dx.op.dot3.f32(i32 55, float %5274, float %5275, float %5276, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5316 = fmul fast float %5315, 5.000000e-01
  %5317 = fadd fast float %5316, 5.000000e-01
  %5318 = fmul fast float %5317, %83
  %5319 = call float @dx.op.dot3.f32(i32 55, float %5274, float %5275, float %5276, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %5320 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5321 = fmul fast float %5320, %5297
  %5322 = fadd fast float %5318, %5321
  %5323 = fsub fast float 5.000000e-01, %5316
  %5324 = fmul fast float %5323, %5214
  %5325 = fmul fast float %5323, %5215
  %5326 = fmul fast float %5323, %5216
  %5327 = fadd fast float %5322, %5324
  %5328 = fadd fast float %5322, %5325
  %5329 = fadd fast float %5322, %5326
  %5330 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5332 = extractvalue %dx.types.CBufRet.f32 %5331, 0
  %5333 = call float @dx.op.binary.f32(i32 36, float %5214, float %5332)  ; FMin(a,b)
  %5334 = fmul fast float %5333, %5278
  %5335 = fsub fast float 1.000000e+00, %5334
  %5336 = bitcast float %5335 to i32
  %5337 = sub nsw i32 2129859010, %5336
  %5338 = bitcast i32 %5337 to float
  %5339 = call float @dx.op.binary.f32(i32 36, float %5215, float %5332)  ; FMin(a,b)
  %5340 = fmul fast float %5339, %5278
  %5341 = fsub fast float 1.000000e+00, %5340
  %5342 = bitcast float %5341 to i32
  %5343 = sub nsw i32 2129859010, %5342
  %5344 = bitcast i32 %5343 to float
  %5345 = call float @dx.op.binary.f32(i32 36, float %5216, float %5332)  ; FMin(a,b)
  %5346 = fmul fast float %5345, %5278
  %5347 = fsub fast float 1.000000e+00, %5346
  %5348 = bitcast float %5347 to i32
  %5349 = sub nsw i32 2129859010, %5348
  %5350 = bitcast i32 %5349 to float
  %5351 = fmul fast float %5277, %84
  %5352 = fmul fast float %5351, %5311
  %5353 = fmul fast float %5352, %5338
  %5354 = fmul fast float %5277, %85
  %5355 = fmul fast float %5354, %5312
  %5356 = fmul fast float %5355, %5344
  %5357 = fmul fast float %5277, %86
  %5358 = fmul fast float %5357, %5313
  %5359 = fmul fast float %5358, %5350
  %5360 = call float @dx.op.binary.f32(i32 36, float %5217, float %5332)  ; FMin(a,b)
  %5361 = fmul fast float %5360, %5278
  %5362 = fsub fast float 1.000000e+00, %5361
  %5363 = bitcast float %5362 to i32
  %5364 = sub nsw i32 2129859010, %5363
  %5365 = bitcast i32 %5364 to float
  %5366 = call float @dx.op.binary.f32(i32 36, float %5218, float %5332)  ; FMin(a,b)
  %5367 = fmul fast float %5366, %5278
  %5368 = fsub fast float 1.000000e+00, %5367
  %5369 = bitcast float %5368 to i32
  %5370 = sub nsw i32 2129859010, %5369
  %5371 = bitcast i32 %5370 to float
  %5372 = call float @dx.op.binary.f32(i32 36, float %5266, float %5332)  ; FMin(a,b)
  %5373 = fmul fast float %5372, %5278
  %5374 = fsub fast float 1.000000e+00, %5373
  %5375 = bitcast float %5374 to i32
  %5376 = sub nsw i32 2129859010, %5375
  %5377 = bitcast i32 %5376 to float
  %5378 = fmul fast float %5351, %5327
  %5379 = fmul fast float %5378, %5365
  %5380 = fmul fast float %5354, %5328
  %5381 = fmul fast float %5380, %5371
  %5382 = fmul fast float %5357, %5329
  %5383 = fmul fast float %5382, %5377
  %5384 = call float @dx.op.dot3.f32(i32 55, float %5353, float %5356, float %5359, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5385 = select i1 %262, float 0.000000e+00, float %5353
  %5386 = select i1 %262, float %5384, float %5356
  %5387 = select i1 %262, float 0.000000e+00, float %5359
  %5388 = call float @dx.op.dot3.f32(i32 55, float %5379, float %5381, float %5383, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5389 = select i1 %262, float 0.000000e+00, float %5379
  %5390 = select i1 %262, float %5388, float %5381
  %5391 = select i1 %262, float 0.000000e+00, float %5383
  %5392 = fmul fast float %5268, 9.843750e-01
  %5393 = fmul fast float %5223, 9.843750e-01
  %5394 = fadd fast float %5392, 7.812500e-03
  %5395 = fadd fast float %5393, 7.812500e-03
  %5396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %5394, float %5395, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5397 = extractvalue %dx.types.ResRet.f32 %5396, 2
  %5398 = extractvalue %dx.types.ResRet.f32 %5396, 3
  %5399 = fmul fast float %5397, %5217
  %5400 = fmul fast float %5397, %5218
  %5401 = fmul fast float %5397, %5266
  %5402 = fadd fast float %5399, %5398
  %5403 = fadd fast float %5400, %5398
  %5404 = fadd fast float %5401, %5398
  %5405 = fcmp fast ogt float %4033, 0.000000e+00
  br i1 %5405, label %5406, label %5432

; <label>:5406                                    ; preds = %5256
  %5407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4033, float %5268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5408 = extractvalue %dx.types.ResRet.f32 %5407, 0
  %5409 = extractvalue %dx.types.ResRet.f32 %5407, 1
  %5410 = extractvalue %dx.types.ResRet.f32 %5407, 2
  %5411 = fadd fast float %5408, -5.000000e-01
  %5412 = fadd fast float %5409, -5.000000e-01
  %5413 = fadd fast float %5410, -5.000000e-01
  %5414 = fsub fast float 1.000000e+00, %5217
  %5415 = fsub fast float 1.000000e+00, %5218
  %5416 = fsub fast float 1.000000e+00, %5266
  %5417 = fmul fast float %5217, 4.000000e+00
  %5418 = fmul fast float %5417, %5414
  %5419 = fmul fast float %5418, %5411
  %5420 = fmul fast float %5218, 4.000000e+00
  %5421 = fmul fast float %5420, %5415
  %5422 = fmul fast float %5421, %5412
  %5423 = fmul fast float %5266, 4.000000e+00
  %5424 = fmul fast float %5423, %5416
  %5425 = fmul fast float %5424, %5413
  %5426 = fadd fast float %5419, %5402
  %5427 = fadd fast float %5422, %5403
  %5428 = fadd fast float %5425, %5404
  %5429 = call float @dx.op.unary.f32(i32 7, float %5426)  ; Saturate(value)
  %5430 = call float @dx.op.unary.f32(i32 7, float %5427)  ; Saturate(value)
  %5431 = call float @dx.op.unary.f32(i32 7, float %5428)  ; Saturate(value)
  br label %5432

; <label>:5432                                    ; preds = %5406, %5256
  %5433 = phi float [ %5429, %5406 ], [ %5402, %5256 ]
  %5434 = phi float [ %5430, %5406 ], [ %5403, %5256 ]
  %5435 = phi float [ %5431, %5406 ], [ %5404, %5256 ]
  %5436 = call float @dx.op.binary.f32(i32 35, float %5434, float %5435)  ; FMax(a,b)
  %5437 = call float @dx.op.binary.f32(i32 35, float %5433, float %5436)  ; FMax(a,b)
  %5438 = fsub fast float 1.000000e+00, %5437
  %5439 = fmul fast float %5437, %5223
  %5440 = fadd fast float %5439, %5223
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 2
  %5443 = extractvalue %dx.types.CBufRet.f32 %5441, 3
  %5444 = fmul fast float %5440, %5442
  %5445 = fadd fast float %5444, %5443
  %5446 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  %5447 = fsub fast float 1.000000e+00, %5289
  %5448 = fadd fast float %5447, %5446
  %5449 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5450 = fcmp fast olt float %5449, 1.000000e+00
  br i1 %5450, label %5451, label %5927

; <label>:5451                                    ; preds = %5432
  %5452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.f32 %5452, 2
  %5454 = extractvalue %dx.types.CBufRet.f32 %5452, 3
  %5455 = fmul fast float %5453, %116
  %5456 = fmul fast float %5454, %117
  %5457 = fptoui float %5455 to i32
  %5458 = fptoui float %5456 to i32
  %5459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5460 = extractvalue %dx.types.CBufRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.CBufRet.f32 %5459, 2
  %5462 = extractvalue %dx.types.CBufRet.f32 %5459, 3
  %5463 = fadd fast float %103, -4.000000e+00
  %5464 = call float @dx.op.binary.f32(i32 35, float %5463, float 0.000000e+00)  ; FMax(a,b)
  %5465 = fadd fast float %5464, %5460
  %5466 = fmul fast float %5465, %5461
  %5467 = call float @dx.op.unary.f32(i32 23, float %5466)  ; Log(value)
  %5468 = fmul fast float %5467, %5462
  %5469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5470 = extractvalue %dx.types.CBufRet.f32 %5469, 2
  %5471 = fmul fast float %5468, %5470
  %5472 = call float @dx.op.unary.f32(i32 7, float %5471)  ; Saturate(value)
  %5473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5474 = extractvalue %dx.types.CBufRet.i32 %5473, 1
  %5475 = add i32 %5474, -1
  %5476 = uitofp i32 %5474 to float
  %5477 = fmul fast float %5476, %5472
  %5478 = fptoui float %5477 to i32
  %5479 = call i32 @dx.op.binary.i32(i32 40, i32 %5478, i32 %5475)  ; UMin(a,b)
  %5480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5481 = extractvalue %dx.types.CBufRet.i32 %5480, 2
  %5482 = extractvalue %dx.types.CBufRet.i32 %5480, 3
  %5483 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5458, i32 %5481, i32 %5457)  ; UMad(a,b,c)
  %5484 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5479, i32 %5482, i32 %5483)  ; UMad(a,b,c)
  %5485 = call float @dx.op.binary.f32(i32 35, float %103, float 0.000000e+00)  ; FMax(a,b)
  %5486 = fptoui float %5485 to i32
  %5487 = lshr i32 %5486, 5
  %5488 = call i32 @dx.op.binary.i32(i32 40, i32 %5487, i32 8191)  ; UMin(a,b)
  %5489 = fsub fast float %4434, %205
  %5490 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5491 = fcmp fast ogt float %5490, 0.000000e+00
  %5492 = fcmp fast ogt float %5276, 0.000000e+00
  %5493 = and i1 %5492, %5491
  br i1 %5493, label %5494, label %5523

; <label>:5494                                    ; preds = %5451
  %5495 = call float @dx.op.dot3.f32(i32 55, float %5274, float %5275, float %5276, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5496 = call float @dx.op.binary.f32(i32 35, float %5495, float -1.000000e+00)  ; FMax(a,b)
  %5497 = call float @dx.op.binary.f32(i32 36, float %5496, float 1.000000e+00)  ; FMin(a,b)
  %5498 = fmul fast float %5497, %5497
  %5499 = fsub fast float 1.000000e+00, %5498
  %5500 = fmul fast float %5499, 0x3FFC6E2300000000
  %5501 = fsub fast float 1.000000e+00, %5500
  %5502 = fcmp fast ogt float %5501, 0.000000e+00
  %5503 = call float @dx.op.unary.f32(i32 24, float %5501)  ; Sqrt(value)
  %5504 = fsub fast float 1.000000e+00, %5503
  %5505 = call float @dx.op.unary.f32(i32 23, float %5504)  ; Log(value)
  %5506 = fmul fast float %5505, 5.000000e+00
  %5507 = call float @dx.op.unary.f32(i32 21, float %5506)  ; Exp(value)
  %5508 = fmul fast float %5507, 0x3FEF591A60000000
  %5509 = fadd fast float %5508, 0x3F94DCB540000000
  %5510 = select i1 %5502, float %5509, float 1.000000e+00
  %5511 = fcmp fast oge float %5510, 1.000000e+00
  %5512 = fmul fast float %5495, 2.000000e+00
  %5513 = fadd fast float %5512, %5276
  %5514 = select i1 %5511, float %5513, float %5276
  %5515 = fsub fast float %5514, %5276
  %5516 = fmul fast float %5515, %5490
  %5517 = fadd fast float %5516, %5276
  %5518 = call float @dx.op.dot3.f32(i32 55, float %5274, float %5275, float %5517, float %5274, float %5275, float %5517)  ; Dot3(ax,ay,az,bx,by,bz)
  %5519 = call float @dx.op.unary.f32(i32 25, float %5518)  ; Rsqrt(value)
  %5520 = fmul fast float %5519, %5274
  %5521 = fmul fast float %5519, %5275
  %5522 = fmul fast float %5517, %5519
  br label %5523

; <label>:5523                                    ; preds = %5494, %5451
  %5524 = phi float [ %5520, %5494 ], [ %5274, %5451 ]
  %5525 = phi float [ %5521, %5494 ], [ %5275, %5451 ]
  %5526 = phi float [ %5522, %5494 ], [ %5276, %5451 ]
  %5527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5528 = extractvalue %dx.types.CBufRet.i32 %5527, 2
  %5529 = add nsw i32 %5528, -1
  %5530 = call i32 @dx.op.binary.i32(i32 37, i32 %5529, i32 0)  ; IMax(a,b)
  %5531 = shl i32 %5488, 2
  %5532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5531, i32 undef)  ; BufferLoad(srv,index,wot)
  %5533 = extractvalue %dx.types.ResRet.i32 %5532, 0
  %5534 = lshr i32 %5533, 16
  %5535 = and i32 %5533, 65535
  %5536 = lshr i32 %5533, 21
  %5537 = lshr i32 %5535, 5
  %5538 = call i32 @dx.op.binary.i32(i32 40, i32 %5537, i32 %5530)  ; UMin(a,b)
  %5539 = icmp ugt i32 %5536, %5538
  br i1 %5539, label %5903, label %5540

; <label>:5540                                    ; preds = %5523
  br label %5541

; <label>:5541                                    ; preds = %5895, %5540
  %5542 = phi float [ %5896, %5895 ], [ 0.000000e+00, %5540 ]
  %5543 = phi float [ %5897, %5895 ], [ 0.000000e+00, %5540 ]
  %5544 = phi float [ %5898, %5895 ], [ 0.000000e+00, %5540 ]
  %5545 = phi float [ %5899, %5895 ], [ 1.000000e+00, %5540 ]
  %5546 = phi i32 [ %5900, %5895 ], [ %5536, %5540 ]
  %5547 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5548 = extractvalue %dx.types.CBufRet.i32 %5547, 2
  %5549 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5484, i32 %5548, i32 %5546)  ; UMad(a,b,c)
  %5550 = shl i32 %5549, 2
  %5551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5550, i32 undef)  ; BufferLoad(srv,index,wot)
  %5552 = extractvalue %dx.types.ResRet.i32 %5551, 0
  %5553 = shl i32 %5546, 5
  %5554 = sub nsw i32 %5534, %5553
  %5555 = call i32 @dx.op.binary.i32(i32 37, i32 %5554, i32 0)  ; IMax(a,b)
  %5556 = call i32 @dx.op.binary.i32(i32 38, i32 %5555, i32 31)  ; IMin(a,b)
  %5557 = sub nsw i32 1, %5534
  %5558 = add nsw i32 %5557, %5535
  %5559 = call i32 @dx.op.binary.i32(i32 37, i32 %5558, i32 0)  ; IMax(a,b)
  %5560 = call i32 @dx.op.binary.i32(i32 38, i32 %5559, i32 32)  ; IMin(a,b)
  %5561 = and i32 %5560, 31
  %5562 = shl i32 -1, %5561
  %5563 = xor i32 %5562, -1
  %5564 = and i32 %5556, 31
  %5565 = shl i32 %5563, %5564
  %5566 = icmp eq i32 %5560, 32
  %5567 = select i1 %5566, i32 -1, i32 %5565
  %5568 = and i32 %5567, %5552
  %5569 = icmp eq i32 %5568, 0
  br i1 %5569, label %5895, label %5570

; <label>:5570                                    ; preds = %5541
  br label %5571

; <label>:5571                                    ; preds = %5678, %5570
  %5572 = phi float [ %5679, %5678 ], [ %5542, %5570 ]
  %5573 = phi float [ %5680, %5678 ], [ %5543, %5570 ]
  %5574 = phi float [ %5681, %5678 ], [ %5544, %5570 ]
  %5575 = phi float [ %5682, %5678 ], [ %5545, %5570 ]
  %5576 = phi i32 [ %5581, %5678 ], [ %5568, %5570 ]
  %5577 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5576)  ; FirstbitLo(value)
  %5578 = add i32 %5577, %5553
  %5579 = and i32 %5577, 31
  %5580 = shl i32 1, %5579
  %5581 = xor i32 %5580, %5576
  %5582 = mul i32 %5578, 72
  %5583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5582, i32 undef)  ; BufferLoad(srv,index,wot)
  %5584 = extractvalue %dx.types.ResRet.f32 %5583, 0
  %5585 = extractvalue %dx.types.ResRet.f32 %5583, 1
  %5586 = extractvalue %dx.types.ResRet.f32 %5583, 2
  %5587 = add i32 %5582, 12
  %5588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5587, i32 undef)  ; BufferLoad(srv,index,wot)
  %5589 = extractvalue %dx.types.ResRet.i32 %5588, 0
  %5590 = add i32 %5582, 16
  %5591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5590, i32 undef)  ; BufferLoad(srv,index,wot)
  %5592 = extractvalue %dx.types.ResRet.f32 %5591, 0
  %5593 = extractvalue %dx.types.ResRet.f32 %5591, 1
  %5594 = extractvalue %dx.types.ResRet.f32 %5591, 2
  %5595 = add i32 %5582, 28
  %5596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5595, i32 undef)  ; BufferLoad(srv,index,wot)
  %5597 = extractvalue %dx.types.ResRet.f32 %5596, 0
  %5598 = add i32 %5582, 32
  %5599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5598, i32 undef)  ; BufferLoad(srv,index,wot)
  %5600 = extractvalue %dx.types.ResRet.f32 %5599, 0
  %5601 = extractvalue %dx.types.ResRet.f32 %5599, 1
  %5602 = extractvalue %dx.types.ResRet.f32 %5599, 2
  %5603 = extractvalue %dx.types.ResRet.f32 %5599, 3
  %5604 = add i32 %5582, 48
  %5605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5604, i32 undef)  ; BufferLoad(srv,index,wot)
  %5606 = extractvalue %dx.types.ResRet.f32 %5605, 0
  %5607 = extractvalue %dx.types.ResRet.f32 %5605, 1
  %5608 = add i32 %5582, 56
  %5609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5608, i32 undef)  ; BufferLoad(srv,index,wot)
  %5610 = extractvalue %dx.types.ResRet.f32 %5609, 0
  %5611 = extractvalue %dx.types.ResRet.f32 %5609, 1
  %5612 = add i32 %5582, 64
  %5613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5612, i32 undef)  ; BufferLoad(srv,index,wot)
  %5614 = extractvalue %dx.types.ResRet.f32 %5613, 0
  %5615 = extractvalue %dx.types.ResRet.f32 %5613, 1
  %5616 = mul i32 %5578, 60
  %5617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5616, i32 undef)  ; BufferLoad(srv,index,wot)
  %5618 = extractvalue %dx.types.ResRet.f32 %5617, 0
  %5619 = extractvalue %dx.types.ResRet.f32 %5617, 1
  %5620 = extractvalue %dx.types.ResRet.f32 %5617, 2
  %5621 = add i32 %5616, 12
  %5622 = add i32 %5616, 48
  %5623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5622, i32 undef)  ; BufferLoad(srv,index,wot)
  %5624 = extractvalue %dx.types.ResRet.f32 %5623, 0
  %5625 = extractvalue %dx.types.ResRet.f32 %5623, 1
  %5626 = extractvalue %dx.types.ResRet.f32 %5623, 2
  %5627 = and i32 %5589, 32767
  %5628 = bitcast float %5584 to i32
  %5629 = icmp eq i32 %5628, -1
  %5630 = bitcast float %5585 to i32
  %5631 = and i32 %5589, 32768
  %5632 = icmp ne i32 %5631, 0
  %5633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5633, 0
  %5635 = extractvalue %dx.types.CBufRet.f32 %5633, 1
  %5636 = extractvalue %dx.types.CBufRet.f32 %5633, 2
  %5637 = fsub fast float %5618, %5634
  %5638 = fsub fast float %5619, %5635
  %5639 = fsub fast float %5620, %5636
  %5640 = fsub fast float %203, %5637
  %5641 = fsub fast float %204, %5638
  %5642 = fsub fast float %205, %5639
  %5643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5621, i32 undef)  ; BufferLoad(srv,index,wot)
  %5644 = extractvalue %dx.types.ResRet.f32 %5643, 0
  %5645 = extractvalue %dx.types.ResRet.f32 %5643, 1
  %5646 = extractvalue %dx.types.ResRet.f32 %5643, 2
  %5647 = call float @dx.op.dot3.f32(i32 55, float %5640, float %5641, float %5642, float %5644, float %5645, float %5646)  ; Dot3(ax,ay,az,bx,by,bz)
  %5648 = add i32 %5616, 24
  %5649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5648, i32 undef)  ; BufferLoad(srv,index,wot)
  %5650 = extractvalue %dx.types.ResRet.f32 %5649, 0
  %5651 = extractvalue %dx.types.ResRet.f32 %5649, 1
  %5652 = extractvalue %dx.types.ResRet.f32 %5649, 2
  %5653 = call float @dx.op.dot3.f32(i32 55, float %5640, float %5641, float %5642, float %5650, float %5651, float %5652)  ; Dot3(ax,ay,az,bx,by,bz)
  %5654 = add i32 %5616, 36
  %5655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5654, i32 undef)  ; BufferLoad(srv,index,wot)
  %5656 = extractvalue %dx.types.ResRet.f32 %5655, 0
  %5657 = extractvalue %dx.types.ResRet.f32 %5655, 1
  %5658 = extractvalue %dx.types.ResRet.f32 %5655, 2
  %5659 = call float @dx.op.dot3.f32(i32 55, float %5640, float %5641, float %5642, float %5656, float %5657, float %5658)  ; Dot3(ax,ay,az,bx,by,bz)
  %5660 = call float @dx.op.unary.f32(i32 6, float %5647)  ; FAbs(value)
  %5661 = call float @dx.op.unary.f32(i32 6, float %5653)  ; FAbs(value)
  %5662 = call float @dx.op.unary.f32(i32 6, float %5659)  ; FAbs(value)
  %5663 = fsub fast float %5624, %5660
  %5664 = fsub fast float %5625, %5661
  %5665 = fsub fast float %5626, %5662
  %5666 = fmul fast float %5663, %5592
  %5667 = fmul fast float %5664, %5593
  %5668 = fmul fast float %5665, %5594
  %5669 = call float @dx.op.binary.f32(i32 36, float %5667, float %5668)  ; FMin(a,b)
  %5670 = call float @dx.op.binary.f32(i32 36, float %5666, float %5669)  ; FMin(a,b)
  %5671 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5672 = call float @dx.op.binary.f32(i32 36, float %5575, float %5671)  ; FMin(a,b)
  %5673 = uitofp i1 %5632 to float
  %5674 = fadd fast float %5490, 1.000000e+00
  %5675 = fsub fast float %5674, %5673
  %5676 = fmul fast float %5672, %5675
  %5677 = fcmp fast ogt float %5676, 0.000000e+00
  br i1 %5677, label %5684, label %5678

; <label>:5678                                    ; preds = %5826, %5571
  %5679 = phi float [ %5890, %5826 ], [ %5572, %5571 ]
  %5680 = phi float [ %5891, %5826 ], [ %5573, %5571 ]
  %5681 = phi float [ %5892, %5826 ], [ %5574, %5571 ]
  %5682 = phi float [ %5893, %5826 ], [ %5575, %5571 ]
  %5683 = icmp eq i32 %5576, %5580
  br i1 %5683, label %5894, label %5571

; <label>:5684                                    ; preds = %5571
  br i1 %5629, label %5742, label %5685

; <label>:5685                                    ; preds = %5684
  %5686 = fsub fast float -0.000000e+00, %5644
  %5687 = fsub fast float -0.000000e+00, %5645
  %5688 = fsub fast float -0.000000e+00, %5646
  %5689 = call float @dx.op.dot3.f32(i32 55, float %5524, float %5525, float %5526, float %5686, float %5687, float %5688)  ; Dot3(ax,ay,az,bx,by,bz)
  %5690 = fsub fast float -0.000000e+00, %5689
  %5691 = call float @dx.op.dot3.f32(i32 55, float %5640, float %5641, float %5642, float %5686, float %5687, float %5688)  ; Dot3(ax,ay,az,bx,by,bz)
  %5692 = fadd fast float %5691, %5607
  %5693 = fadd fast float %5606, %5691
  %5694 = fsub fast float -0.000000e+00, %5693
  %5695 = fcmp ogt float %5689, -0.000000e+00
  %5696 = select i1 %5695, float %5694, float %5692
  %5697 = call float @dx.op.unary.f32(i32 6, float %5690)  ; FAbs(value)
  %5698 = fdiv fast float 1.000000e+00, %5697
  %5699 = fmul fast float %5696, %5698
  %5700 = call float @dx.op.binary.f32(i32 35, float %5699, float 0.000000e+00)  ; FMax(a,b)
  %5701 = fsub fast float -0.000000e+00, %5650
  %5702 = fsub fast float -0.000000e+00, %5651
  %5703 = fsub fast float -0.000000e+00, %5652
  %5704 = call float @dx.op.dot3.f32(i32 55, float %5524, float %5525, float %5526, float %5701, float %5702, float %5703)  ; Dot3(ax,ay,az,bx,by,bz)
  %5705 = fsub fast float -0.000000e+00, %5704
  %5706 = call float @dx.op.dot3.f32(i32 55, float %5640, float %5641, float %5642, float %5701, float %5702, float %5703)  ; Dot3(ax,ay,az,bx,by,bz)
  %5707 = fadd fast float %5706, %5611
  %5708 = fadd fast float %5610, %5706
  %5709 = fsub fast float -0.000000e+00, %5708
  %5710 = fcmp ogt float %5704, -0.000000e+00
  %5711 = select i1 %5710, float %5709, float %5707
  %5712 = call float @dx.op.unary.f32(i32 6, float %5705)  ; FAbs(value)
  %5713 = fdiv fast float 1.000000e+00, %5712
  %5714 = fmul fast float %5711, %5713
  %5715 = call float @dx.op.binary.f32(i32 35, float %5714, float 0.000000e+00)  ; FMax(a,b)
  %5716 = fsub fast float -0.000000e+00, %5656
  %5717 = fsub fast float -0.000000e+00, %5657
  %5718 = fsub fast float -0.000000e+00, %5658
  %5719 = call float @dx.op.dot3.f32(i32 55, float %5524, float %5525, float %5526, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %5720 = fsub fast float -0.000000e+00, %5719
  %5721 = call float @dx.op.dot3.f32(i32 55, float %5640, float %5641, float %5642, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %5722 = fadd fast float %5721, %5615
  %5723 = fadd fast float %5614, %5721
  %5724 = fsub fast float -0.000000e+00, %5723
  %5725 = fcmp ogt float %5719, -0.000000e+00
  %5726 = select i1 %5725, float %5724, float %5722
  %5727 = call float @dx.op.unary.f32(i32 6, float %5720)  ; FAbs(value)
  %5728 = fdiv fast float 1.000000e+00, %5727
  %5729 = fmul fast float %5726, %5728
  %5730 = call float @dx.op.binary.f32(i32 35, float %5729, float 0.000000e+00)  ; FMax(a,b)
  %5731 = call float @dx.op.binary.f32(i32 36, float %5715, float %5730)  ; FMin(a,b)
  %5732 = call float @dx.op.binary.f32(i32 36, float %5700, float %5731)  ; FMin(a,b)
  %5733 = fmul fast float %5732, %5524
  %5734 = fmul fast float %5732, %5525
  %5735 = fmul fast float %5732, %5526
  %5736 = fadd fast float %5733, %203
  %5737 = fadd fast float %5734, %204
  %5738 = fadd fast float %5735, %205
  %5739 = fsub fast float %5736, %5584
  %5740 = fsub fast float %5737, %5585
  %5741 = fsub fast float %5738, %5586
  br label %5749

; <label>:5742                                    ; preds = %5684
  %5743 = fmul fast float %5524, 8.096000e+03
  %5744 = fmul fast float %5525, 8.096000e+03
  %5745 = fmul fast float %5526, 8.096000e+03
  %5746 = fadd fast float %5743, %203
  %5747 = fadd fast float %5744, %204
  %5748 = fadd fast float %5745, %205
  br label %5749

; <label>:5749                                    ; preds = %5742, %5685
  %5750 = phi float [ %5524, %5742 ], [ %5739, %5685 ]
  %5751 = phi float [ %5525, %5742 ], [ %5740, %5685 ]
  %5752 = phi float [ %5526, %5742 ], [ %5741, %5685 ]
  %5753 = phi float [ %5746, %5742 ], [ %5736, %5685 ]
  %5754 = phi float [ %5747, %5742 ], [ %5737, %5685 ]
  %5755 = phi float [ %5748, %5742 ], [ %5738, %5685 ]
  %5756 = fcmp fast olt float %5603, 1.000000e+00
  br i1 %5756, label %5757, label %5788, !dx.controlflow.hints !103

; <label>:5757                                    ; preds = %5749
  %5758 = fmul fast float %5752, %5601
  %5759 = fmul fast float %5751, %5602
  %5760 = fsub fast float %5758, %5759
  %5761 = fmul fast float %5750, %5602
  %5762 = fmul fast float %5752, %5600
  %5763 = fsub fast float %5761, %5762
  %5764 = fmul fast float %5751, %5600
  %5765 = fmul fast float %5750, %5601
  %5766 = fsub fast float %5764, %5765
  %5767 = fmul fast float %5760, 2.000000e+00
  %5768 = fmul fast float %5763, 2.000000e+00
  %5769 = fmul fast float %5766, 2.000000e+00
  %5770 = fmul fast float %5767, %5603
  %5771 = fmul fast float %5768, %5603
  %5772 = fmul fast float %5769, %5603
  %5773 = fmul fast float %5769, %5601
  %5774 = fmul fast float %5768, %5602
  %5775 = fmul fast float %5767, %5602
  %5776 = fmul fast float %5769, %5600
  %5777 = fmul fast float %5768, %5600
  %5778 = fmul fast float %5767, %5601
  %5779 = fadd fast float %5773, %5750
  %5780 = fadd fast float %5779, %5770
  %5781 = fsub fast float %5780, %5774
  %5782 = fsub fast float %5751, %5776
  %5783 = fadd fast float %5782, %5771
  %5784 = fadd fast float %5783, %5775
  %5785 = fadd fast float %5772, %5752
  %5786 = fsub fast float %5785, %5778
  %5787 = fadd fast float %5786, %5777
  br label %5788

; <label>:5788                                    ; preds = %5757, %5749
  %5789 = phi float [ %5781, %5757 ], [ %5750, %5749 ]
  %5790 = phi float [ %5784, %5757 ], [ %5751, %5749 ]
  %5791 = phi float [ %5787, %5757 ], [ %5752, %5749 ]
  br i1 %5629, label %5823, label %5792

; <label>:5792                                    ; preds = %5788
  %5793 = fmul fast float %5223, 0x400187C840000000
  %5794 = fadd fast float %5793, 0xC00EFC2120000000
  %5795 = fmul fast float %5794, %5223
  %5796 = fadd fast float %5795, 0x3FE5D16340000000
  %5797 = fmul fast float %5796, %5223
  %5798 = fadd fast float %5797, 1.000000e+00
  %5799 = call float @dx.op.unary.f32(i32 7, float %5798)  ; Saturate(value)
  %5800 = fsub fast float %5753, %203
  %5801 = fsub fast float %5754, %204
  %5802 = fsub fast float %5755, %205
  %5803 = fsub fast float %5753, %5584
  %5804 = fsub fast float %5754, %5585
  %5805 = fsub fast float %5755, %5586
  %5806 = call float @dx.op.dot3.f32(i32 55, float %5800, float %5801, float %5802, float %5800, float %5801, float %5802)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = call float @dx.op.dot3.f32(i32 55, float %5803, float %5804, float %5805, float %5803, float %5804, float %5805)  ; Dot3(ax,ay,az,bx,by,bz)
  %5808 = fadd fast float %5807, 0x3EE4F8B580000000
  %5809 = fdiv fast float %5806, %5808
  %5810 = bitcast float %5809 to i32
  %5811 = ashr i32 %5810, 1
  %5812 = add nsw i32 %5811, 532487669
  %5813 = bitcast i32 %5812 to float
  %5814 = fmul fast float %5813, %5799
  %5815 = call float @dx.op.unary.f32(i32 7, float %5814)  ; Saturate(value)
  %5816 = fmul fast float %5815, 0x4009981AE0000000
  %5817 = fsub fast float 0x40111BBD80000000, %5816
  %5818 = fmul fast float %5817, %5815
  %5819 = fadd fast float %5818, 0xC0009F6020000000
  %5820 = fmul fast float %5819, %5815
  %5821 = fadd fast float %5820, 1.000000e+00
  %5822 = call float @dx.op.unary.f32(i32 7, float %5821)  ; Saturate(value)
  br label %5826

; <label>:5823                                    ; preds = %5788
  %5824 = icmp ne i32 %5630, -1
  %5825 = zext i1 %5824 to i32
  br label %5826

; <label>:5826                                    ; preds = %5823, %5792
  %5827 = phi float [ %5223, %5823 ], [ %5822, %5792 ]
  %5828 = phi i32 [ %5825, %5823 ], [ 0, %5792 ]
  %5829 = fmul float %5827, 5.000000e+00
  %5830 = fsub float 5.000000e+00, %5829
  %5831 = icmp ne i32 %5828, 0
  %5832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5833 = extractvalue %dx.types.CBufRet.f32 %5832, 3
  %5834 = fadd fast float %5833, %5830
  %5835 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5834)  ; FMax(a,b)
  %5836 = call float @dx.op.unary.f32(i32 6, float %5789)  ; FAbs(value)
  %5837 = call float @dx.op.unary.f32(i32 6, float %5790)  ; FAbs(value)
  %5838 = fadd fast float %5837, %5836
  %5839 = call float @dx.op.unary.f32(i32 6, float %5791)  ; FAbs(value)
  %5840 = fadd fast float %5838, %5839
  %5841 = fcmp fast oeq float %5840, 0.000000e+00
  %5842 = fdiv fast float 1.000000e+00, %5840
  %5843 = select i1 %5841, float 1.000000e+00, float %5842
  %5844 = fmul fast float %5843, %5789
  %5845 = fmul fast float %5843, %5790
  %5846 = call float @dx.op.unary.f32(i32 6, float %5845)  ; FAbs(value)
  %5847 = call float @dx.op.unary.f32(i32 6, float %5844)  ; FAbs(value)
  %5848 = fsub fast float 1.000000e+00, %5846
  %5849 = fsub fast float 1.000000e+00, %5847
  %5850 = fcmp fast oge float %5844, 0.000000e+00
  %5851 = fcmp fast oge float %5845, 0.000000e+00
  %5852 = select i1 %5850, float 1.000000e+00, float -1.000000e+00
  %5853 = select i1 %5851, float 1.000000e+00, float -1.000000e+00
  %5854 = fcmp fast ole float %5791, 0.000000e+00
  %5855 = fmul fast float %5852, %5848
  %5856 = fmul fast float %5853, %5849
  %5857 = select i1 %5854, float %5855, float %5844
  %5858 = select i1 %5854, float %5856, float %5845
  %5859 = fmul fast float %5857, 5.000000e-01
  %5860 = fmul fast float %5858, 5.000000e-01
  %5861 = fadd fast float %5859, 5.000000e-01
  %5862 = fadd fast float %5860, 5.000000e-01
  %5863 = uitofp i32 %5627 to float
  %5864 = call float @dx.op.binary.f32(i32 36, float %5835, float 3.000000e+00)  ; FMin(a,b)
  %5865 = fadd fast float %5864, 2.000000e+00
  %5866 = call float @dx.op.unary.f32(i32 21, float %5865)  ; Exp(value)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5832, 1
  %5868 = fmul fast float %5867, %5866
  %5869 = fmul fast float %5868, 2.000000e+00
  %5870 = fsub fast float 1.000000e+00, %5869
  %5871 = fmul fast float %5861, %5870
  %5872 = fmul fast float %5862, %5870
  %5873 = fadd fast float %5871, %5868
  %5874 = fadd fast float %5872, %5868
  %5875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %53, float %5873, float %5874, float %5863, float undef, i32 0, i32 0, i32 undef, float %5835)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5876 = extractvalue %dx.types.ResRet.f32 %5875, 0
  %5877 = extractvalue %dx.types.ResRet.f32 %5875, 1
  %5878 = extractvalue %dx.types.ResRet.f32 %5875, 2
  %5879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5880 = extractvalue %dx.types.CBufRet.f32 %5879, 3
  %5881 = fmul fast float %5880, %5597
  %5882 = call float @dx.op.binary.f32(i32 36, float %5330, float %5881)  ; FMin(a,b)
  %5883 = select i1 %5831, float %5882, float %5881
  %5884 = fmul fast float %5876, %5676
  %5885 = fmul fast float %5884, %5883
  %5886 = fmul fast float %5877, %5676
  %5887 = fmul fast float %5886, %5883
  %5888 = fmul fast float %5878, %5676
  %5889 = fmul fast float %5888, %5883
  %5890 = fadd fast float %5885, %5572
  %5891 = fadd fast float %5887, %5573
  %5892 = fadd fast float %5889, %5574
  %5893 = fsub fast float %5575, %5676
  br label %5678

; <label>:5894                                    ; preds = %5678
  br label %5895

; <label>:5895                                    ; preds = %5894, %5541
  %5896 = phi float [ %5542, %5541 ], [ %5679, %5894 ]
  %5897 = phi float [ %5543, %5541 ], [ %5680, %5894 ]
  %5898 = phi float [ %5544, %5541 ], [ %5681, %5894 ]
  %5899 = phi float [ %5545, %5541 ], [ %5682, %5894 ]
  %5900 = add i32 %5546, 1
  %5901 = icmp ugt i32 %5900, %5538
  br i1 %5901, label %5902, label %5541, !llvm.loop !104

; <label>:5902                                    ; preds = %5895
  br label %5903

; <label>:5903                                    ; preds = %5902, %5523
  %5904 = phi float [ 0.000000e+00, %5523 ], [ %5896, %5902 ]
  %5905 = phi float [ 0.000000e+00, %5523 ], [ %5897, %5902 ]
  %5906 = phi float [ 0.000000e+00, %5523 ], [ %5898, %5902 ]
  %5907 = call float @dx.op.dot3.f32(i32 55, float %5904, float %5905, float %5906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5908 = select i1 %262, float 0.000000e+00, float %5904
  %5909 = select i1 %262, float %5907, float %5905
  %5910 = select i1 %262, float 0.000000e+00, float %5906
  %5911 = fcmp fast olt float %5449, 0.000000e+00
  %5912 = call float @dx.op.unary.f32(i32 6, float %5449)  ; FAbs(value)
  %5913 = fmul fast float %5912, %5389
  %5914 = fmul fast float %5912, %5390
  %5915 = fmul fast float %5912, %5391
  %5916 = select i1 %5911, float %5389, float %5913
  %5917 = select i1 %5911, float %5390, float %5914
  %5918 = select i1 %5911, float %5391, float %5915
  %5919 = fsub fast float 1.000000e+00, %5912
  %5920 = call float @dx.op.unary.f32(i32 7, float %5919)  ; Saturate(value)
  %5921 = fmul fast float %5920, %5908
  %5922 = fmul fast float %5920, %5909
  %5923 = fmul fast float %5920, %5910
  %5924 = fadd fast float %5916, %5921
  %5925 = fadd fast float %5917, %5922
  %5926 = fadd fast float %5918, %5923
  br label %5927

; <label>:5927                                    ; preds = %5903, %5432
  %5928 = phi float [ %5389, %5432 ], [ %5924, %5903 ]
  %5929 = phi float [ %5390, %5432 ], [ %5925, %5903 ]
  %5930 = phi float [ %5391, %5432 ], [ %5926, %5903 ]
  %5931 = fmul fast float %5438, %5385
  %5932 = fmul fast float %5438, %5386
  %5933 = fmul fast float %5438, %5387
  %5934 = call float @dx.op.dot3.f32(i32 55, float %5214, float %5215, float %5216, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5935 = fcmp fast ogt float %5934, 0x3E7FF19E20000000
  %5936 = fdiv fast float 1.000000e+00, %5934
  %5937 = select i1 %5935, float %5936, float 0.000000e+00
  %5938 = fmul fast float %5937, %5214
  %5939 = fmul fast float %5937, %5215
  %5940 = fmul fast float %5937, %5216
  %5941 = fadd fast float %5938, -1.000000e+00
  %5942 = fadd fast float %5939, -1.000000e+00
  %5943 = fadd fast float %5940, -1.000000e+00
  %5944 = fmul fast float %5941, 5.000000e-01
  %5945 = fmul fast float %5942, 5.000000e-01
  %5946 = fmul fast float %5943, 5.000000e-01
  %5947 = fadd fast float %5944, 1.000000e+00
  %5948 = fadd fast float %5945, 1.000000e+00
  %5949 = fadd fast float %5946, 1.000000e+00
  %5950 = fmul fast float %5928, %5433
  %5951 = fmul fast float %5929, %5434
  %5952 = fmul fast float %5930, %5435
  %5953 = fsub fast float 1.000000e+00, %5268
  %5954 = bitcast float %5953 to i32
  %5955 = sitofp i32 %5954 to float
  %5956 = fmul fast float %5955, 5.000000e+00
  %5957 = fadd fast float %5956, 0xC1EFBF8940000000
  %5958 = fptosi float %5957 to i32
  %5959 = bitcast i32 %5958 to float
  %5960 = fmul fast float %5959, %4034
  %5961 = fmul fast float %5385, %5960
  %5962 = fmul fast float %5961, %5438
  %5963 = fmul fast float %5962, %5947
  %5964 = fmul fast float %5386, %5960
  %5965 = fmul fast float %5964, %5438
  %5966 = fmul fast float %5965, %5948
  %5967 = fmul fast float %5387, %5960
  %5968 = fmul fast float %5967, %5438
  %5969 = fmul fast float %5968, %5949
  %5970 = fmul fast float %5931, %4030
  %5971 = fmul fast float %5932, %4030
  %5972 = fmul fast float %5933, %4030
  %5973 = fadd fast float %5950, %4026
  %5974 = fadd fast float %5973, %5963
  %5975 = fmul fast float %5974, %4030
  %5976 = fadd fast float %5951, %4027
  %5977 = fadd fast float %5976, %5966
  %5978 = fmul fast float %5977, %4030
  %5979 = fadd fast float %5952, %4028
  %5980 = fadd fast float %5979, %5969
  %5981 = fmul fast float %5980, %4030
  %5982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5983 = extractvalue %dx.types.CBufRet.f32 %5982, 3
  %5984 = fcmp fast oeq float %5983, 0.000000e+00
  br i1 %5984, label %7688, label %5985

; <label>:5985                                    ; preds = %5927
  %5986 = extractvalue %dx.types.CBufRet.f32 %5982, 0
  %5987 = extractvalue %dx.types.CBufRet.f32 %5982, 1
  %5988 = extractvalue %dx.types.CBufRet.f32 %5982, 2
  %5989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5990 = extractvalue %dx.types.CBufRet.f32 %5989, 0
  %5991 = extractvalue %dx.types.CBufRet.f32 %5989, 1
  %5992 = extractvalue %dx.types.CBufRet.f32 %5989, 2
  %5993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5994 = extractvalue %dx.types.CBufRet.f32 %5993, 0
  %5995 = extractvalue %dx.types.CBufRet.f32 %5993, 1
  %5996 = call float @dx.op.dot3.f32(i32 55, float %5990, float %5991, float %5992, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5997 = select i1 %262, float %5994, float %5990
  %5998 = select i1 %262, float %5996, float %5991
  %5999 = select i1 %262, float %5995, float %5992
  %6000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.f32 %6000, 2
  %6002 = fmul fast float %6001, %123
  %6003 = fmul fast float %6001, %124
  %6004 = fmul fast float %6001, %125
  %6005 = fadd fast float %6002, %203
  %6006 = fadd fast float %6003, %204
  %6007 = fadd fast float %6004, %205
  %6008 = fcmp fast olt float %5983, 0.000000e+00
  br i1 %6008, label %7266, label %6009

; <label>:6009                                    ; preds = %5985
  %6010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6011 = extractvalue %dx.types.CBufRet.f32 %6010, 0
  %6012 = extractvalue %dx.types.CBufRet.f32 %6010, 1
  %6013 = extractvalue %dx.types.CBufRet.f32 %6010, 2
  %6014 = extractvalue %dx.types.CBufRet.f32 %6010, 3
  %6015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6016 = extractvalue %dx.types.CBufRet.f32 %6015, 0
  %6017 = extractvalue %dx.types.CBufRet.f32 %6015, 1
  %6018 = extractvalue %dx.types.CBufRet.f32 %6015, 2
  %6019 = extractvalue %dx.types.CBufRet.f32 %6015, 3
  %6020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6021 = extractvalue %dx.types.CBufRet.f32 %6020, 0
  %6022 = extractvalue %dx.types.CBufRet.f32 %6020, 1
  %6023 = extractvalue %dx.types.CBufRet.f32 %6020, 2
  %6024 = extractvalue %dx.types.CBufRet.f32 %6020, 3
  %6025 = fmul fast float %6011, %6005
  %6026 = call float @dx.op.tertiary.f32(i32 46, float %6006, float %6012, float %6025)  ; FMad(a,b,c)
  %6027 = call float @dx.op.tertiary.f32(i32 46, float %6007, float %6013, float %6026)  ; FMad(a,b,c)
  %6028 = fadd fast float %6027, %6014
  %6029 = fmul fast float %6016, %6005
  %6030 = call float @dx.op.tertiary.f32(i32 46, float %6006, float %6017, float %6029)  ; FMad(a,b,c)
  %6031 = call float @dx.op.tertiary.f32(i32 46, float %6007, float %6018, float %6030)  ; FMad(a,b,c)
  %6032 = fadd fast float %6031, %6019
  %6033 = fmul fast float %6021, %6005
  %6034 = call float @dx.op.tertiary.f32(i32 46, float %6006, float %6022, float %6033)  ; FMad(a,b,c)
  %6035 = call float @dx.op.tertiary.f32(i32 46, float %6007, float %6023, float %6034)  ; FMad(a,b,c)
  %6036 = fadd fast float %6035, %6024
  %6037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6038 = extractvalue %dx.types.CBufRet.f32 %6037, 0
  %6039 = fcmp fast une float %6038, 0.000000e+00
  %6040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6041 = extractvalue %dx.types.CBufRet.f32 %6040, 0
  %6042 = extractvalue %dx.types.CBufRet.f32 %6040, 1
  %6043 = extractvalue %dx.types.CBufRet.f32 %6040, 3
  %6044 = fmul fast float %6043, %6028
  %6045 = fmul fast float %6043, %6032
  %6046 = fadd fast float %6044, %6041
  %6047 = fadd fast float %6045, %6042
  %6048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6049 = extractvalue %dx.types.CBufRet.f32 %6048, 0
  %6050 = extractvalue %dx.types.CBufRet.f32 %6048, 1
  %6051 = extractvalue %dx.types.CBufRet.f32 %6048, 3
  %6052 = fmul fast float %6051, %6028
  %6053 = fmul fast float %6051, %6032
  %6054 = fadd fast float %6052, %6049
  %6055 = fadd fast float %6053, %6050
  %6056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6057 = extractvalue %dx.types.CBufRet.f32 %6056, 1
  %6058 = fsub fast float %6057, %6036
  %6059 = extractvalue %dx.types.CBufRet.f32 %6056, 2
  %6060 = fmul fast float %6058, %6059
  %6061 = fsub fast float 1.000000e+00, %6060
  %6062 = call float @dx.op.unary.f32(i32 7, float %6061)  ; Saturate(value)
  br i1 %6039, label %6123, label %6063

; <label>:6063                                    ; preds = %6009
  %6064 = extractvalue %dx.types.CBufRet.f32 %6048, 2
  %6065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6066 = extractvalue %dx.types.CBufRet.f32 %6065, 2
  %6067 = fadd fast float %6066, %6064
  %6068 = fcmp fast ogt float %6067, 0.000000e+00
  br i1 %6068, label %6069, label %6093

; <label>:6069                                    ; preds = %6063
  %6070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6071 = extractvalue %dx.types.CBufRet.f32 %6070, 0
  %6072 = extractvalue %dx.types.CBufRet.f32 %6070, 1
  %6073 = fsub fast float %6054, %6071
  %6074 = fsub fast float %6055, %6072
  %6075 = fcmp fast olt float %6073, 0.000000e+00
  %6076 = fcmp fast olt float %6074, 0.000000e+00
  %6077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6078 = extractvalue %dx.types.CBufRet.f32 %6077, 0
  %6079 = extractvalue %dx.types.CBufRet.f32 %6077, 1
  %6080 = extractvalue %dx.types.CBufRet.f32 %6077, 2
  %6081 = extractvalue %dx.types.CBufRet.f32 %6077, 3
  %6082 = select i1 %6075, float %6078, float %6080
  %6083 = select i1 %6076, float %6079, float %6081
  %6084 = fmul fast float %6082, %6073
  %6085 = fmul fast float %6083, %6074
  %6086 = call float @dx.op.unary.f32(i32 6, float %6084)  ; FAbs(value)
  %6087 = call float @dx.op.unary.f32(i32 6, float %6085)  ; FAbs(value)
  %6088 = extractvalue %dx.types.CBufRet.f32 %6000, 0
  %6089 = call float @dx.op.binary.f32(i32 35, float %6086, float %6087)  ; FMax(a,b)
  %6090 = fsub fast float %6088, %6089
  %6091 = call float @dx.op.unary.f32(i32 7, float %6090)  ; Saturate(value)
  %6092 = fmul fast float %6091, %6062
  br label %6093

; <label>:6093                                    ; preds = %6069, %6063
  %6094 = phi float [ %6092, %6069 ], [ 0.000000e+00, %6063 ]
  %6095 = extractvalue %dx.types.CBufRet.f32 %6040, 2
  %6096 = extractvalue %dx.types.CBufRet.f32 %6065, 1
  %6097 = fadd fast float %6096, %6095
  %6098 = fcmp fast ogt float %6097, 0.000000e+00
  br i1 %6098, label %6099, label %6123

; <label>:6099                                    ; preds = %6093
  %6100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6101 = extractvalue %dx.types.CBufRet.f32 %6100, 0
  %6102 = extractvalue %dx.types.CBufRet.f32 %6100, 1
  %6103 = fsub fast float %6046, %6101
  %6104 = fsub fast float %6047, %6102
  %6105 = fcmp fast olt float %6103, 0.000000e+00
  %6106 = fcmp fast olt float %6104, 0.000000e+00
  %6107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6108 = extractvalue %dx.types.CBufRet.f32 %6107, 0
  %6109 = extractvalue %dx.types.CBufRet.f32 %6107, 1
  %6110 = extractvalue %dx.types.CBufRet.f32 %6107, 2
  %6111 = extractvalue %dx.types.CBufRet.f32 %6107, 3
  %6112 = select i1 %6105, float %6108, float %6110
  %6113 = select i1 %6106, float %6109, float %6111
  %6114 = fmul fast float %6112, %6103
  %6115 = fmul fast float %6113, %6104
  %6116 = call float @dx.op.unary.f32(i32 6, float %6114)  ; FAbs(value)
  %6117 = call float @dx.op.unary.f32(i32 6, float %6115)  ; FAbs(value)
  %6118 = extractvalue %dx.types.CBufRet.f32 %6000, 0
  %6119 = call float @dx.op.binary.f32(i32 35, float %6116, float %6117)  ; FMax(a,b)
  %6120 = fsub fast float %6118, %6119
  %6121 = call float @dx.op.unary.f32(i32 7, float %6120)  ; Saturate(value)
  %6122 = fmul fast float %6121, %6062
  br label %6123

; <label>:6123                                    ; preds = %6099, %6093, %6009
  %6124 = phi float [ 0.000000e+00, %6009 ], [ %6122, %6099 ], [ 0.000000e+00, %6093 ]
  %6125 = phi float [ 0.000000e+00, %6009 ], [ %6094, %6099 ], [ %6094, %6093 ]
  %6126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6127 = extractvalue %dx.types.CBufRet.f32 %6126, 1
  %6128 = call float @dx.op.unary.f32(i32 7, float %6127)  ; Saturate(value)
  %6129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6130 = extractvalue %dx.types.CBufRet.f32 %6129, 0
  %6131 = extractvalue %dx.types.CBufRet.f32 %6129, 1
  %6132 = fsub fast float %6028, %6130
  %6133 = fsub fast float %6032, %6131
  %6134 = fcmp fast olt float %6132, 0.000000e+00
  %6135 = fcmp fast olt float %6133, 0.000000e+00
  %6136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6137 = extractvalue %dx.types.CBufRet.f32 %6136, 0
  %6138 = extractvalue %dx.types.CBufRet.f32 %6136, 1
  %6139 = extractvalue %dx.types.CBufRet.f32 %6136, 2
  %6140 = extractvalue %dx.types.CBufRet.f32 %6136, 3
  %6141 = select i1 %6134, float %6137, float %6139
  %6142 = select i1 %6135, float %6138, float %6140
  %6143 = fmul fast float %6141, %6132
  %6144 = fmul fast float %6142, %6133
  %6145 = call float @dx.op.unary.f32(i32 6, float %6143)  ; FAbs(value)
  %6146 = call float @dx.op.unary.f32(i32 6, float %6144)  ; FAbs(value)
  %6147 = extractvalue %dx.types.CBufRet.f32 %6000, 0
  %6148 = call float @dx.op.binary.f32(i32 35, float %6145, float %6146)  ; FMax(a,b)
  %6149 = fsub fast float %6147, %6148
  %6150 = call float @dx.op.unary.f32(i32 7, float %6149)  ; Saturate(value)
  %6151 = call float @dx.op.binary.f32(i32 36, float %6150, float %6128)  ; FMin(a,b)
  %6152 = fmul fast float %6151, %6062
  %6153 = fsub fast float %6124, %6152
  %6154 = fsub fast float %6125, %6124
  %6155 = fsub fast float %6154, %6152
  %6156 = call float @dx.op.binary.f32(i32 35, float %6124, float %6125)  ; FMax(a,b)
  %6157 = call float @dx.op.binary.f32(i32 35, float %6152, float %6156)  ; FMax(a,b)
  %6158 = fcmp fast olt float %6157, 1.000000e+00
  br i1 %6158, label %6159, label %6557, !dx.controlflow.hints !106

; <label>:6159                                    ; preds = %6123
  %6160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6161 = extractvalue %dx.types.CBufRet.f32 %6160, 0
  %6162 = fcmp fast une float %6161, 0.000000e+00
  br i1 %6162, label %6163, label %6557, !dx.controlflow.hints !107

; <label>:6163                                    ; preds = %6159
  %6164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6165 = extractvalue %dx.types.CBufRet.f32 %6164, 0
  %6166 = extractvalue %dx.types.CBufRet.f32 %6164, 1
  %6167 = extractvalue %dx.types.CBufRet.f32 %6164, 2
  %6168 = extractvalue %dx.types.CBufRet.f32 %6164, 3
  %6169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6170 = extractvalue %dx.types.CBufRet.f32 %6169, 0
  %6171 = extractvalue %dx.types.CBufRet.f32 %6169, 1
  %6172 = extractvalue %dx.types.CBufRet.f32 %6169, 2
  %6173 = extractvalue %dx.types.CBufRet.f32 %6169, 3
  %6174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6175 = extractvalue %dx.types.CBufRet.f32 %6174, 0
  %6176 = extractvalue %dx.types.CBufRet.f32 %6174, 1
  %6177 = extractvalue %dx.types.CBufRet.f32 %6174, 2
  %6178 = extractvalue %dx.types.CBufRet.f32 %6174, 3
  %6179 = fmul fast float %6165, %6005
  %6180 = call float @dx.op.tertiary.f32(i32 46, float %6006, float %6166, float %6179)  ; FMad(a,b,c)
  %6181 = call float @dx.op.tertiary.f32(i32 46, float %6007, float %6167, float %6180)  ; FMad(a,b,c)
  %6182 = fadd fast float %6181, %6168
  %6183 = fmul fast float %6170, %6005
  %6184 = call float @dx.op.tertiary.f32(i32 46, float %6006, float %6171, float %6183)  ; FMad(a,b,c)
  %6185 = call float @dx.op.tertiary.f32(i32 46, float %6007, float %6172, float %6184)  ; FMad(a,b,c)
  %6186 = fadd fast float %6185, %6173
  %6187 = fmul fast float %6175, %6005
  %6188 = call float @dx.op.tertiary.f32(i32 46, float %6006, float %6176, float %6187)  ; FMad(a,b,c)
  %6189 = call float @dx.op.tertiary.f32(i32 46, float %6007, float %6177, float %6188)  ; FMad(a,b,c)
  %6190 = fadd fast float %6189, %6178
  %6191 = fcmp fast oge float %6182, 1.000000e+00
  %6192 = fcmp fast oge float %6186, 1.000000e+00
  %6193 = or i1 %6191, %6192
  %6194 = fcmp fast olt float %6182, 0.000000e+00
  %6195 = fcmp fast olt float %6186, 0.000000e+00
  %6196 = or i1 %6194, %6195
  %6197 = or i1 %6193, %6196
  br i1 %6197, label %6557, label %6198, !dx.controlflow.hints !108

; <label>:6198                                    ; preds = %6163
  %6199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6200 = extractvalue %dx.types.CBufRet.f32 %6199, 0
  %6201 = extractvalue %dx.types.CBufRet.f32 %6199, 1
  %6202 = extractvalue %dx.types.CBufRet.f32 %6199, 2
  %6203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6204 = extractvalue %dx.types.CBufRet.i32 %6203, 2
  %6205 = uitofp i32 %6204 to float
  %6206 = extractvalue %dx.types.CBufRet.i32 %6203, 3
  %6207 = uitofp i32 %6206 to float
  %6208 = extractvalue %dx.types.CBufRet.f32 %6199, 3
  %6209 = fmul fast float %6208, 2.000000e+00
  %6210 = fsub fast float %6182, %6200
  %6211 = fsub fast float %6186, %6201
  %6212 = fmul fast float %6209, %6210
  %6213 = fmul fast float %6209, %6211
  %6214 = fdiv fast float 1.000000e+00, %5988
  %6215 = fmul fast float %6213, %6214
  %6216 = call float @dx.op.unary.f32(i32 6, float %6215)  ; FAbs(value)
  %6217 = fmul fast float %6202, %6007
  %6218 = fmul fast float %6217, %6209
  %6219 = call float @dx.op.unary.f32(i32 6, float %6218)  ; FAbs(value)
  %6220 = call float @dx.op.unary.f32(i32 6, float %6212)  ; FAbs(value)
  %6221 = call float @dx.op.binary.f32(i32 35, float %6219, float %6216)  ; FMax(a,b)
  %6222 = call float @dx.op.binary.f32(i32 35, float %6220, float %6221)  ; FMax(a,b)
  %6223 = fmul fast float %6222, 2.000000e+00
  %6224 = call float @dx.op.unary.f32(i32 23, float %6223)  ; Log(value)
  %6225 = call float @dx.op.binary.f32(i32 35, float %6224, float %6205)  ; FMax(a,b)
  %6226 = call float @dx.op.unary.f32(i32 22, float %6225)  ; Frc(value)
  %6227 = fadd fast float %6226, 0xBFEA666660000000
  %6228 = fmul fast float %6227, 8.000000e+00
  %6229 = call float @dx.op.unary.f32(i32 7, float %6228)  ; Saturate(value)
  %6230 = call float @dx.op.unary.f32(i32 27, float %6225)  ; Round_ni(value)
  %6231 = fadd fast float %6230, %6229
  %6232 = call float @dx.op.binary.f32(i32 36, float %6231, float %6207)  ; FMin(a,b)
  %6233 = call float @dx.op.unary.f32(i32 27, float %6232)  ; Round_ni(value)
  %6234 = fsub fast float -0.000000e+00, %6233
  %6235 = call float @dx.op.unary.f32(i32 21, float %6234)  ; Exp(value)
  %6236 = fmul fast float %6235, %6209
  %6237 = fmul fast float %6236, %6182
  %6238 = fmul fast float %6236, %6186
  %6239 = fmul fast float %6237, 2.500000e-01
  %6240 = fmul fast float %6238, 2.500000e-01
  %6241 = fadd fast float %6239, 5.000000e-01
  %6242 = fadd fast float %6240, 5.000000e-01
  %6243 = fsub fast float %6207, %6205
  %6244 = fptoui float %6243 to i32
  %6245 = add i32 %6244, 320
  %6246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %6245)  ; CBufferLoadLegacy(handle,regIndex)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.CBufRet.f32 %6246, 1
  %6249 = fcmp fast une float %6232, %6207
  %6250 = fsub fast float %6182, %6247
  %6251 = fsub fast float %6186, %6248
  %6252 = call float @dx.op.unary.f32(i32 6, float %6250)  ; FAbs(value)
  %6253 = call float @dx.op.unary.f32(i32 6, float %6251)  ; FAbs(value)
  %6254 = fmul fast float %6252, %6236
  %6255 = fmul fast float %6253, %6236
  %6256 = fcmp fast olt float %6254, 1.000000e+00
  %6257 = fcmp fast olt float %6255, 1.000000e+00
  %6258 = and i1 %6256, %6257
  %6259 = or i1 %6249, %6258
  br i1 %6259, label %6260, label %6557, !dx.controlflow.hints !109

; <label>:6260                                    ; preds = %6198
  %6261 = fmul fast float %6238, 5.000000e-01
  %6262 = fmul fast float %6237, 5.000000e-01
  %6263 = fadd fast float %6261, 5.000000e-01
  %6264 = fadd fast float %6262, 5.000000e-01
  %6265 = sitofp i32 %6204 to float
  %6266 = fsub fast float %6232, %6265
  %6267 = call float @dx.op.unary.f32(i32 27, float %6266)  ; Round_ni(value)
  %6268 = call float @dx.op.unary.f32(i32 22, float %6232)  ; Frc(value)
  %6269 = call float @dx.op.unary.f32(i32 22, float %6264)  ; Frc(value)
  %6270 = call float @dx.op.unary.f32(i32 22, float %6263)  ; Frc(value)
  %6271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6269, float %6270, float %6267, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6272 = extractvalue %dx.types.ResRet.f32 %6271, 0
  %6273 = extractvalue %dx.types.ResRet.f32 %6271, 1
  %6274 = extractvalue %dx.types.ResRet.f32 %6271, 2
  %6275 = extractvalue %dx.types.ResRet.f32 %6271, 3
  %6276 = fcmp fast ogt float %6268, 0.000000e+00
  br i1 %6276, label %6277, label %6298, !dx.controlflow.hints !110

; <label>:6277                                    ; preds = %6260
  %6278 = fadd fast float %6267, 1.000000e+00
  %6279 = call float @dx.op.unary.f32(i32 22, float %6241)  ; Frc(value)
  %6280 = call float @dx.op.unary.f32(i32 22, float %6242)  ; Frc(value)
  %6281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6279, float %6280, float %6278, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6282 = extractvalue %dx.types.ResRet.f32 %6281, 0
  %6283 = extractvalue %dx.types.ResRet.f32 %6281, 1
  %6284 = extractvalue %dx.types.ResRet.f32 %6281, 2
  %6285 = extractvalue %dx.types.ResRet.f32 %6281, 3
  %6286 = fsub fast float %6282, %6272
  %6287 = fsub fast float %6283, %6273
  %6288 = fsub fast float %6284, %6274
  %6289 = fsub fast float %6285, %6275
  %6290 = fmul fast float %6286, %6268
  %6291 = fmul fast float %6287, %6268
  %6292 = fmul fast float %6288, %6268
  %6293 = fmul fast float %6289, %6268
  %6294 = fadd fast float %6290, %6272
  %6295 = fadd fast float %6291, %6273
  %6296 = fadd fast float %6292, %6274
  %6297 = fadd fast float %6293, %6275
  br label %6298

; <label>:6298                                    ; preds = %6277, %6260
  %6299 = phi float [ %6294, %6277 ], [ %6272, %6260 ]
  %6300 = phi float [ %6295, %6277 ], [ %6273, %6260 ]
  %6301 = phi float [ %6296, %6277 ], [ %6274, %6260 ]
  %6302 = phi float [ %6297, %6277 ], [ %6275, %6260 ]
  %6303 = fadd fast float %6299, -5.000000e-01
  %6304 = fadd fast float %6301, -5.000000e-01
  %6305 = fmul fast float %6303, 0xBFD5555560000000
  %6306 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6304, float %6305)  ; FMad(a,b,c)
  %6307 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6300, float 0.000000e+00)  ; FMad(a,b,c)
  %6308 = fadd fast float %6307, %6302
  %6309 = fmul fast float %6303, -7.500000e-01
  %6310 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6304, float %6309)  ; FMad(a,b,c)
  %6311 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6300, float 0.000000e+00)  ; FMad(a,b,c)
  %6312 = fadd fast float %6311, %6302
  %6313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6314 = extractvalue %dx.types.CBufRet.f32 %6313, 0
  %6315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6316 = extractvalue %dx.types.CBufRet.f32 %6315, 0
  %6317 = extractvalue %dx.types.CBufRet.f32 %6315, 1
  %6318 = extractvalue %dx.types.CBufRet.f32 %6315, 2
  %6319 = extractvalue %dx.types.CBufRet.f32 %6315, 3
  %6320 = fsub fast float %6316, %6306
  %6321 = fsub fast float %6317, %6308
  %6322 = fsub fast float %6318, %6310
  %6323 = fsub fast float %6319, %6312
  %6324 = fmul fast float %6320, %6314
  %6325 = fmul fast float %6321, %6314
  %6326 = fmul fast float %6322, %6314
  %6327 = fmul fast float %6323, %6314
  %6328 = fadd fast float %6324, %6306
  %6329 = fadd fast float %6325, %6308
  %6330 = fadd fast float %6326, %6310
  %6331 = fadd fast float %6327, %6312
  %6332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6333 = extractvalue %dx.types.ResRet.i32 %6332, 0
  %6334 = and i32 %6333, 536870911
  %6335 = uitofp i32 %6334 to float
  %6336 = fmul fast float %6335, %6182
  %6337 = fmul fast float %6335, %6186
  %6338 = fptoui float %6336 to i32
  %6339 = fptoui float %6337 to i32
  %6340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6341 = extractvalue %dx.types.ResRet.i32 %6340, 0
  %6342 = and i32 %6341, 31
  %6343 = lshr i32 %6338, %6342
  %6344 = lshr i32 %6339, %6342
  %6345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6346 = extractvalue %dx.types.ResRet.i32 %6345, 0
  %6347 = and i32 %6346, 31
  %6348 = shl i32 1, %6347
  %6349 = call i32 @dx.op.binary.i32(i32 40, i32 %6348, i32 4)  ; UMin(a,b)
  %6350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6351 = extractvalue %dx.types.ResRet.i32 %6350, 0
  %6352 = extractvalue %dx.types.ResRet.i32 %6350, 1
  %6353 = icmp eq i32 %6349, 0
  br i1 %6353, label %6395, label %6354

; <label>:6354                                    ; preds = %6298
  br label %6355

; <label>:6355                                    ; preds = %6383, %6354
  %6356 = phi i32 [ %6386, %6383 ], [ 0, %6354 ]
  %6357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6358 = extractvalue %dx.types.ResRet.i32 %6357, 0
  %6359 = lshr i32 %6358, 16
  %6360 = and i32 %6359, 31
  %6361 = shl i32 %6344, %6360
  %6362 = add i32 %6361, %6343
  %6363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6364 = extractvalue %dx.types.ResRet.i32 %6363, 0
  %6365 = and i32 %6364, 31
  %6366 = shl i32 %6362, %6365
  %6367 = add i32 %6366, %6356
  %6368 = shl i32 %6367, 2
  %6369 = add i32 %6368, 32
  %6370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6369, i32 undef)  ; BufferLoad(srv,index,wot)
  %6371 = extractvalue %dx.types.ResRet.i32 %6370, 0
  %6372 = icmp slt i32 %6371, 0
  %6373 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6356
  %6374 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6356
  %6375 = bitcast float* %6373 to i32*
  %6376 = bitcast float* %6374 to i32*
  br i1 %6372, label %6377, label %6383

; <label>:6377                                    ; preds = %6355
  %6378 = and i32 %6371, 1073741823
  %6379 = add nuw nsw i32 %6378, 20
  %6380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6379, i32 undef)  ; BufferLoad(srv,index,wot)
  %6381 = extractvalue %dx.types.ResRet.i32 %6380, 0
  %6382 = extractvalue %dx.types.ResRet.i32 %6380, 1
  br label %6383

; <label>:6383                                    ; preds = %6377, %6355
  %6384 = phi i32 [ %6381, %6377 ], [ %6351, %6355 ]
  %6385 = phi i32 [ %6382, %6377 ], [ %6352, %6355 ]
  store i32 %6384, i32* %6375, align 4
  store i32 %6385, i32* %6376, align 4
  %6386 = add nuw i32 %6356, 1
  %6387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6388 = extractvalue %dx.types.CBufRet.i32 %6387, 2
  %6389 = icmp eq i32 %6388, 0
  %6390 = icmp ugt i32 %6371, -1073741825
  %6391 = and i1 %6390, %6389
  %6392 = icmp ult i32 %6386, %6349
  %6393 = and i1 %6391, %6392
  br i1 %6393, label %6355, label %6394

; <label>:6394                                    ; preds = %6383
  br label %6395

; <label>:6395                                    ; preds = %6394, %6298
  %6396 = phi i32 [ 0, %6298 ], [ %6386, %6394 ]
  %6397 = extractvalue %dx.types.CBufRet.f32 %6160, 2
  %6398 = fptoui float %6397 to i32
  %6399 = icmp eq i32 %6398, 0
  br i1 %6399, label %6451, label %6400

; <label>:6400                                    ; preds = %6395
  br label %6401

; <label>:6401                                    ; preds = %6446, %6400
  %6402 = phi i32 [ %6447, %6446 ], [ %6396, %6400 ]
  %6403 = phi i32 [ %6448, %6446 ], [ 0, %6400 ]
  %6404 = lshr i32 %6403, 2
  %6405 = and i32 %6403, 3
  %6406 = add nuw nsw i32 %6404, 83
  %6407 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 %6406)  ; CBufferLoadLegacy(handle,regIndex)
  %6408 = extractvalue %dx.types.CBufRet.i32 %6407, 0
  %6409 = extractvalue %dx.types.CBufRet.i32 %6407, 1
  %6410 = extractvalue %dx.types.CBufRet.i32 %6407, 2
  %6411 = extractvalue %dx.types.CBufRet.i32 %6407, 3
  %6412 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 0
  store i32 %6408, i32* %6412, align 4
  %6413 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 1
  store i32 %6409, i32* %6413, align 4
  %6414 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 2
  store i32 %6410, i32* %6414, align 4
  %6415 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 3
  store i32 %6411, i32* %6415, align 4
  %6416 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 %6405
  %6417 = load i32, i32* %6416, align 4, !tbaa !111, !noalias !115
  %6418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6419 = extractvalue %dx.types.ResRet.i32 %6418, 0
  %6420 = lshr i32 %6419, 16
  %6421 = and i32 %6420, 31
  %6422 = shl i32 %6344, %6421
  %6423 = add i32 %6422, %6343
  %6424 = shl i32 %6423, 2
  %6425 = add i32 %6424, %6417
  %6426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6425, i32 undef)  ; BufferLoad(srv,index,wot)
  %6427 = extractvalue %dx.types.ResRet.i32 %6426, 0
  %6428 = icmp eq i32 %6427, 0
  br i1 %6428, label %6446, label %6429

; <label>:6429                                    ; preds = %6401
  %6430 = icmp slt i32 %6427, 0
  %6431 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6402
  %6432 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6402
  %6433 = bitcast float* %6431 to i32*
  %6434 = bitcast float* %6432 to i32*
  br i1 %6430, label %6435, label %6442

; <label>:6435                                    ; preds = %6429
  %6436 = and i32 %6427, 1073741823
  %6437 = add i32 %6417, 20
  %6438 = add i32 %6437, %6436
  %6439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6438, i32 undef)  ; BufferLoad(srv,index,wot)
  %6440 = extractvalue %dx.types.ResRet.i32 %6439, 0
  %6441 = extractvalue %dx.types.ResRet.i32 %6439, 1
  br label %6442

; <label>:6442                                    ; preds = %6435, %6429
  %6443 = phi i32 [ %6440, %6435 ], [ %6351, %6429 ]
  %6444 = phi i32 [ %6441, %6435 ], [ %6352, %6429 ]
  store i32 %6443, i32* %6433, align 4
  store i32 %6444, i32* %6434, align 4
  %6445 = add i32 %6402, 1
  br label %6446

; <label>:6446                                    ; preds = %6442, %6401
  %6447 = phi i32 [ %6402, %6401 ], [ %6445, %6442 ]
  %6448 = add nuw i32 %6403, 1
  %6449 = icmp eq i32 %6448, %6398
  br i1 %6449, label %6450, label %6401

; <label>:6450                                    ; preds = %6446
  br label %6451

; <label>:6451                                    ; preds = %6450, %6395
  %6452 = phi i32 [ %6396, %6395 ], [ %6447, %6450 ]
  %6453 = icmp eq i32 %6452, 1
  %6454 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 0
  %6455 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 0
  br i1 %6453, label %6456, label %6459

; <label>:6456                                    ; preds = %6451
  %6457 = load float, float* %6454, align 4
  %6458 = load float, float* %6455, align 4
  br label %6486

; <label>:6459                                    ; preds = %6451
  %6460 = load float, float* %6454, align 4
  %6461 = load float, float* %6455, align 4
  %6462 = fdiv fast float 1.000000e+00, %6461
  %6463 = fsub fast float %6460, %6462
  %6464 = icmp ugt i32 %6452, 1
  br i1 %6464, label %6465, label %6481

; <label>:6465                                    ; preds = %6459
  br label %6466

; <label>:6466                                    ; preds = %6466, %6465
  %6467 = phi float [ %6476, %6466 ], [ %6463, %6465 ]
  %6468 = phi float [ %6477, %6466 ], [ %6460, %6465 ]
  %6469 = phi i32 [ %6478, %6466 ], [ 1, %6465 ]
  %6470 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6469
  %6471 = load float, float* %6470, align 4
  %6472 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6469
  %6473 = load float, float* %6472, align 4
  %6474 = fdiv fast float 1.000000e+00, %6473
  %6475 = fsub fast float %6471, %6474
  %6476 = call float @dx.op.binary.f32(i32 36, float %6467, float %6475)  ; FMin(a,b)
  %6477 = call float @dx.op.binary.f32(i32 35, float %6468, float %6471)  ; FMax(a,b)
  %6478 = add nuw i32 %6469, 1
  %6479 = icmp eq i32 %6478, %6452
  br i1 %6479, label %6480, label %6466

; <label>:6480                                    ; preds = %6466
  br label %6481

; <label>:6481                                    ; preds = %6480, %6459
  %6482 = phi float [ %6463, %6459 ], [ %6476, %6480 ]
  %6483 = phi float [ %6460, %6459 ], [ %6477, %6480 ]
  %6484 = fsub fast float %6483, %6482
  %6485 = fdiv fast float 1.000000e+00, %6484
  br label %6486

; <label>:6486                                    ; preds = %6481, %6456
  %6487 = phi float [ %6457, %6456 ], [ %6483, %6481 ]
  %6488 = phi float [ %6458, %6456 ], [ %6485, %6481 ]
  %6489 = fadd fast float %6190, %6487
  %6490 = fmul fast float %6489, %6488
  %6491 = call float @dx.op.unary.f32(i32 7, float %6490)  ; Saturate(value)
  %6492 = fmul fast float %6491, 2.000000e+00
  %6493 = fsub fast float 1.000000e+00, %6492
  %6494 = fmul fast float %6328, %6328
  %6495 = fsub fast float %6329, %6494
  %6496 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6495)  ; FMax(a,b)
  %6497 = fdiv fast float 1.000000e+00, %6496
  %6498 = fmul fast float %6329, %6328
  %6499 = fsub fast float %6330, %6498
  %6500 = fsub fast float %6493, %6328
  %6501 = fmul fast float %6493, %6493
  %6502 = fsub fast float %6501, %6329
  %6503 = fmul fast float %6497, %6499
  %6504 = fmul fast float %6503, %6500
  %6505 = fsub fast float %6502, %6504
  %6506 = fmul fast float %6329, %6329
  %6507 = fsub fast float %6331, %6506
  %6508 = fmul fast float %6499, %6499
  %6509 = fmul fast float %6508, %6497
  %6510 = fsub fast float %6507, %6509
  %6511 = fdiv fast float %6505, %6510
  %6512 = fmul fast float %6511, %6499
  %6513 = fsub fast float %6500, %6512
  %6514 = fmul fast float %6513, %6497
  %6515 = fmul fast float %6514, %6328
  %6516 = fsub fast float 1.000000e+00, %6515
  %6517 = fmul fast float %6511, %6329
  %6518 = fsub fast float %6516, %6517
  %6519 = fmul fast float %6514, %6514
  %6520 = fmul fast float %6511, 4.000000e+00
  %6521 = fmul fast float %6520, %6518
  %6522 = fsub fast float %6519, %6521
  %6523 = call float @dx.op.unary.f32(i32 24, float %6522)  ; Sqrt(value)
  %6524 = fcmp fast oge float %6514, 0.000000e+00
  %6525 = fsub fast float -0.000000e+00, %6523
  %6526 = select i1 %6524, float %6525, float %6523
  %6527 = fsub fast float %6526, %6514
  %6528 = fdiv fast float %6527, %6511
  %6529 = fdiv fast float %6518, %6527
  %6530 = fmul fast float %6528, 5.000000e-01
  %6531 = fmul fast float %6529, 2.000000e+00
  %6532 = select i1 %6524, float %6530, float %6531
  %6533 = select i1 %6524, float %6531, float %6530
  %6534 = call float @dx.op.binary.f32(i32 35, float %6532, float %6533)  ; FMax(a,b)
  %6535 = call float @dx.op.binary.f32(i32 36, float %6532, float %6533)  ; FMin(a,b)
  %6536 = fcmp fast ogt float %6493, %6534
  %6537 = fsub fast float %6493, %6535
  %6538 = fsub fast float %6493, %6534
  %6539 = fsub fast float %6534, %6535
  %6540 = select i1 %6536, float %6538, float %6539
  %6541 = fmul float %6537, %6540
  %6542 = select i1 %6536, float %6535, float %6493
  %6543 = fcmp fast ogt float %6493, %6535
  %6544 = fmul fast float %6542, %6534
  %6545 = fadd fast float %6542, %6534
  %6546 = fmul fast float %6545, %6328
  %6547 = fadd fast float %6544, %6329
  %6548 = fsub fast float %6547, %6546
  %6549 = fdiv fast float %6548, %6541
  %6550 = select i1 %6543, float %6549, float 0.000000e+00
  %6551 = fsub fast float 1.000000e+00, %6550
  %6552 = select i1 %6536, float %6551, float %6550
  %6553 = call float @dx.op.unary.f32(i32 7, float %6552)  ; Saturate(value)
  %6554 = extractvalue %dx.types.CBufRet.f32 %6313, 3
  %6555 = fmul fast float %6554, %6553
  %6556 = fsub fast float 1.000000e+00, %6555
  br label %6557

; <label>:6557                                    ; preds = %6486, %6198, %6163, %6159, %6123
  %6558 = phi float [ 1.000000e+00, %6123 ], [ %6556, %6486 ], [ 1.000000e+00, %6163 ], [ 1.000000e+00, %6198 ], [ 1.000000e+00, %6159 ]
  %6559 = fcmp fast ogt float %6155, 0.000000e+00
  br i1 %6559, label %6560, label %6724, !dx.controlflow.hints !124

; <label>:6560                                    ; preds = %6557
  %6561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6562 = extractvalue %dx.types.CBufRet.f32 %6561, 2
  %6563 = fadd fast float %6562, %6036
  %6564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6565 = extractvalue %dx.types.CBufRet.f32 %6564, 2
  %6566 = extractvalue %dx.types.CBufRet.f32 %6564, 3
  %6567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6568 = extractvalue %dx.types.CBufRet.f32 %6567, 2
  %6569 = call float @dx.op.binary.f32(i32 35, float %6563, float 0.000000e+00)  ; FMax(a,b)
  %6570 = fadd fast float %6569, 0x3F10000000000000
  %6571 = fcmp fast oeq float %6568, 0.000000e+00
  br i1 %6571, label %6572, label %6639

; <label>:6572                                    ; preds = %6560
  %6573 = extractvalue %dx.types.CBufRet.f32 %6564, 1
  %6574 = extractvalue %dx.types.CBufRet.f32 %6564, 0
  %6575 = fmul fast float %6574, %6054
  %6576 = fmul fast float %6573, %6055
  %6577 = fadd fast float %6575, 5.000000e-01
  %6578 = call float @dx.op.unary.f32(i32 27, float %6577)  ; Round_ni(value)
  %6579 = fadd fast float %6576, 5.000000e-01
  %6580 = call float @dx.op.unary.f32(i32 27, float %6579)  ; Round_ni(value)
  %6581 = fsub fast float %6577, %6578
  %6582 = fsub fast float %6579, %6580
  %6583 = fadd fast float %6578, -5.000000e-01
  %6584 = fadd fast float %6580, -5.000000e-01
  %6585 = fmul fast float %6581, 2.000000e+00
  %6586 = fsub fast float 3.000000e+00, %6585
  %6587 = fadd fast float %6585, 1.000000e+00
  %6588 = fsub fast float 2.000000e+00, %6581
  %6589 = bitcast float %6586 to i32
  %6590 = sub nsw i32 2129859010, %6589
  %6591 = bitcast i32 %6590 to float
  %6592 = fmul fast float %6591, %6588
  %6593 = fadd fast float %6592, -1.000000e+00
  %6594 = bitcast float %6587 to i32
  %6595 = sub nsw i32 2129859010, %6594
  %6596 = bitcast i32 %6595 to float
  %6597 = fmul fast float %6596, %6581
  %6598 = fadd fast float %6597, 1.000000e+00
  %6599 = fmul fast float %6582, 2.000000e+00
  %6600 = fsub fast float 3.000000e+00, %6599
  %6601 = fadd fast float %6599, 1.000000e+00
  %6602 = fsub fast float 2.000000e+00, %6582
  %6603 = bitcast float %6600 to i32
  %6604 = sub nsw i32 2129859010, %6603
  %6605 = bitcast i32 %6604 to float
  %6606 = fmul fast float %6605, %6602
  %6607 = fadd fast float %6606, -1.000000e+00
  %6608 = bitcast float %6601 to i32
  %6609 = sub nsw i32 2129859010, %6608
  %6610 = bitcast i32 %6609 to float
  %6611 = fmul fast float %6610, %6582
  %6612 = fadd fast float %6611, 1.000000e+00
  %6613 = fadd fast float %6593, %6583
  %6614 = fmul fast float %6613, %6565
  %6615 = fadd fast float %6607, %6584
  %6616 = fmul fast float %6615, %6566
  %6617 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6614, float %6616, float undef, float undef, i32 0, i32 0, i32 undef, float %6570)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6618 = extractvalue %dx.types.ResRet.f32 %6617, 0
  %6619 = fmul fast float %6618, %6586
  %6620 = fadd fast float %6598, %6583
  %6621 = fmul fast float %6620, %6565
  %6622 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6621, float %6616, float undef, float undef, i32 0, i32 0, i32 undef, float %6570)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6623 = extractvalue %dx.types.ResRet.f32 %6622, 0
  %6624 = fmul fast float %6623, %6587
  %6625 = fadd fast float %6612, %6584
  %6626 = fmul fast float %6625, %6566
  %6627 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6614, float %6626, float undef, float undef, i32 0, i32 0, i32 undef, float %6570)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6628 = extractvalue %dx.types.ResRet.f32 %6627, 0
  %6629 = fmul fast float %6628, %6586
  %6630 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6621, float %6626, float undef, float undef, i32 0, i32 0, i32 undef, float %6570)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6631 = extractvalue %dx.types.ResRet.f32 %6630, 0
  %6632 = fmul fast float %6631, %6587
  %6633 = fadd fast float %6632, %6629
  %6634 = fmul fast float %6633, %6601
  %6635 = fadd fast float %6624, %6619
  %6636 = fmul fast float %6635, %6600
  %6637 = fadd fast float %6636, %6634
  %6638 = fmul fast float %6637, 6.250000e-02
  br label %6724

; <label>:6639                                    ; preds = %6560
  %6640 = fmul fast float %273, 0x401921FB60000000
  %6641 = call float @dx.op.unary.f32(i32 13, float %6640)  ; Sin(value)
  %6642 = call float @dx.op.unary.f32(i32 12, float %6640)  ; Cos(value)
  %6643 = fsub fast float -0.000000e+00, %6641
  br label %6644

; <label>:6644                                    ; preds = %6693, %6639
  %6645 = phi float [ 0.000000e+00, %6639 ], [ %6688, %6693 ]
  %6646 = phi float [ 0.000000e+00, %6639 ], [ %6690, %6693 ]
  %6647 = phi i32 [ 0, %6639 ], [ %6694, %6693 ]
  %6648 = mul i32 %6647, 2
  %6649 = add i32 0, %6648
  %6650 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6649
  %6651 = load float, float* %6650, align 4
  %6652 = mul i32 %6647, 2
  %6653 = add i32 1, %6652
  %6654 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6653
  %6655 = load float, float* %6654, align 4
  %6656 = fmul fast float %6651, %6642
  %6657 = call float @dx.op.tertiary.f32(i32 46, float %6655, float %6643, float %6656)  ; FMad(a,b,c)
  %6658 = fmul fast float %6651, %6641
  %6659 = call float @dx.op.tertiary.f32(i32 46, float %6655, float %6642, float %6658)  ; FMad(a,b,c)
  %6660 = fmul fast float %6657, %6568
  %6661 = fmul fast float %6659, %6568
  %6662 = fadd fast float %6660, %6054
  %6663 = fadd fast float %6661, %6055
  %6664 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %56, float %6662, float %6663, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6665 = extractvalue %dx.types.ResRet.f32 %6664, 0
  %6666 = extractvalue %dx.types.ResRet.f32 %6664, 1
  %6667 = extractvalue %dx.types.ResRet.f32 %6664, 2
  %6668 = extractvalue %dx.types.ResRet.f32 %6664, 3
  %6669 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 0
  store float %6665, float* %6669, align 4
  %6670 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 1
  store float %6666, float* %6670, align 4
  %6671 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 2
  store float %6667, float* %6671, align 4
  %6672 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 3
  store float %6668, float* %6672, align 4
  %6673 = fsub fast float %6665, %6570
  %6674 = fcmp fast olt float %6673, 0.000000e+00
  %6675 = select i1 %6674, float 0.000000e+00, float 1.000000e+00
  %6676 = fadd fast float %6675, %6645
  %6677 = fmul fast float %6675, %6673
  %6678 = fadd fast float %6677, %6646
  br label %6679

; <label>:6679                                    ; preds = %6679, %6644
  %6680 = phi i32 [ 1, %6644 ], [ %6691, %6679 ]
  %6681 = phi float [ %6678, %6644 ], [ %6690, %6679 ]
  %6682 = phi float [ %6676, %6644 ], [ %6688, %6679 ]
  %6683 = getelementptr [4 x float], [4 x float]* %109, i32 0, i32 %6680
  %6684 = load float, float* %6683, align 4, !tbaa !125, !noalias !115
  %6685 = fsub fast float %6684, %6570
  %6686 = fcmp fast olt float %6685, 0.000000e+00
  %6687 = select i1 %6686, float 0.000000e+00, float 1.000000e+00
  %6688 = fadd fast float %6687, %6682
  %6689 = fmul fast float %6687, %6685
  %6690 = fadd fast float %6689, %6681
  %6691 = add nuw nsw i32 %6680, 1
  %6692 = icmp eq i32 %6691, 4
  br i1 %6692, label %6693, label %6679, !llvm.loop !127

; <label>:6693                                    ; preds = %6679
  %6694 = add nuw nsw i32 %6647, 1
  %6695 = icmp eq i32 %6694, 8
  br i1 %6695, label %6696, label %6644, !llvm.loop !128

; <label>:6696                                    ; preds = %6693
  %6697 = fdiv fast float 1.000000e+00, %6688
  %6698 = fmul fast float %6697, %6690
  %6699 = fdiv fast float 1.000000e+00, %6570
  %6700 = fmul fast float %6698, %6699
  %6701 = call float @dx.op.unary.f32(i32 7, float %6700)  ; Saturate(value)
  %6702 = call float @dx.op.binary.f32(i32 35, float %6701, float 0.000000e+00)  ; FMax(a,b)
  %6703 = fmul fast float %6688, 3.125000e-02
  %6704 = call float @dx.op.unary.f32(i32 7, float %6703)  ; Saturate(value)
  %6705 = fmul fast float %6704, 2.000000e+00
  %6706 = fadd fast float %6705, -1.000000e+00
  %6707 = fcmp fast ogt float %6706, 0.000000e+00
  %6708 = fcmp fast olt float %6706, 0.000000e+00
  %6709 = zext i1 %6707 to i32
  %6710 = zext i1 %6708 to i32
  %6711 = sub nsw i32 %6709, %6710
  %6712 = sitofp i32 %6711 to float
  %6713 = fmul fast float %6712, %6706
  %6714 = fsub fast float 1.000000e+00, %6713
  %6715 = fmul fast float %6714, %6714
  %6716 = fmul fast float %6715, %6714
  %6717 = fsub fast float %6714, %6716
  %6718 = fmul fast float %6717, %6702
  %6719 = fsub fast float 1.000000e+00, %6716
  %6720 = fsub fast float %6719, %6718
  %6721 = fmul fast float %6712, 5.000000e-01
  %6722 = fmul fast float %6721, %6720
  %6723 = fsub fast float 5.000000e-01, %6722
  br label %6724

; <label>:6724                                    ; preds = %6696, %6572, %6557
  %6725 = phi float [ 1.000000e+00, %6557 ], [ %6638, %6572 ], [ %6723, %6696 ]
  %6726 = fcmp fast ogt float %6153, 0.000000e+00
  br i1 %6726, label %6727, label %6891, !dx.controlflow.hints !129

; <label>:6727                                    ; preds = %6724
  %6728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6729 = extractvalue %dx.types.CBufRet.f32 %6728, 1
  %6730 = fadd fast float %6729, %6036
  %6731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6732 = extractvalue %dx.types.CBufRet.f32 %6731, 2
  %6733 = extractvalue %dx.types.CBufRet.f32 %6731, 3
  %6734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6735 = extractvalue %dx.types.CBufRet.f32 %6734, 1
  %6736 = call float @dx.op.binary.f32(i32 35, float %6730, float 0.000000e+00)  ; FMax(a,b)
  %6737 = fadd fast float %6736, 0x3F10000000000000
  %6738 = fcmp fast oeq float %6735, 0.000000e+00
  br i1 %6738, label %6739, label %6806

; <label>:6739                                    ; preds = %6727
  %6740 = extractvalue %dx.types.CBufRet.f32 %6731, 1
  %6741 = extractvalue %dx.types.CBufRet.f32 %6731, 0
  %6742 = fmul fast float %6741, %6046
  %6743 = fmul fast float %6740, %6047
  %6744 = fadd fast float %6742, 5.000000e-01
  %6745 = call float @dx.op.unary.f32(i32 27, float %6744)  ; Round_ni(value)
  %6746 = fadd fast float %6743, 5.000000e-01
  %6747 = call float @dx.op.unary.f32(i32 27, float %6746)  ; Round_ni(value)
  %6748 = fsub fast float %6744, %6745
  %6749 = fsub fast float %6746, %6747
  %6750 = fadd fast float %6745, -5.000000e-01
  %6751 = fadd fast float %6747, -5.000000e-01
  %6752 = fmul fast float %6748, 2.000000e+00
  %6753 = fsub fast float 3.000000e+00, %6752
  %6754 = fadd fast float %6752, 1.000000e+00
  %6755 = fsub fast float 2.000000e+00, %6748
  %6756 = bitcast float %6753 to i32
  %6757 = sub nsw i32 2129859010, %6756
  %6758 = bitcast i32 %6757 to float
  %6759 = fmul fast float %6758, %6755
  %6760 = fadd fast float %6759, -1.000000e+00
  %6761 = bitcast float %6754 to i32
  %6762 = sub nsw i32 2129859010, %6761
  %6763 = bitcast i32 %6762 to float
  %6764 = fmul fast float %6763, %6748
  %6765 = fadd fast float %6764, 1.000000e+00
  %6766 = fmul fast float %6749, 2.000000e+00
  %6767 = fsub fast float 3.000000e+00, %6766
  %6768 = fadd fast float %6766, 1.000000e+00
  %6769 = fsub fast float 2.000000e+00, %6749
  %6770 = bitcast float %6767 to i32
  %6771 = sub nsw i32 2129859010, %6770
  %6772 = bitcast i32 %6771 to float
  %6773 = fmul fast float %6772, %6769
  %6774 = fadd fast float %6773, -1.000000e+00
  %6775 = bitcast float %6768 to i32
  %6776 = sub nsw i32 2129859010, %6775
  %6777 = bitcast i32 %6776 to float
  %6778 = fmul fast float %6777, %6749
  %6779 = fadd fast float %6778, 1.000000e+00
  %6780 = fadd fast float %6760, %6750
  %6781 = fmul fast float %6780, %6732
  %6782 = fadd fast float %6774, %6751
  %6783 = fmul fast float %6782, %6733
  %6784 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6781, float %6783, float undef, float undef, i32 0, i32 0, i32 undef, float %6737)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6785 = extractvalue %dx.types.ResRet.f32 %6784, 0
  %6786 = fmul fast float %6785, %6753
  %6787 = fadd fast float %6765, %6750
  %6788 = fmul fast float %6787, %6732
  %6789 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6788, float %6783, float undef, float undef, i32 0, i32 0, i32 undef, float %6737)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6790 = extractvalue %dx.types.ResRet.f32 %6789, 0
  %6791 = fmul fast float %6790, %6754
  %6792 = fadd fast float %6779, %6751
  %6793 = fmul fast float %6792, %6733
  %6794 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6781, float %6793, float undef, float undef, i32 0, i32 0, i32 undef, float %6737)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6795 = extractvalue %dx.types.ResRet.f32 %6794, 0
  %6796 = fmul fast float %6795, %6753
  %6797 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6788, float %6793, float undef, float undef, i32 0, i32 0, i32 undef, float %6737)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6798 = extractvalue %dx.types.ResRet.f32 %6797, 0
  %6799 = fmul fast float %6798, %6754
  %6800 = fadd fast float %6799, %6796
  %6801 = fmul fast float %6800, %6768
  %6802 = fadd fast float %6791, %6786
  %6803 = fmul fast float %6802, %6767
  %6804 = fadd fast float %6803, %6801
  %6805 = fmul fast float %6804, 6.250000e-02
  br label %6891

; <label>:6806                                    ; preds = %6727
  %6807 = fmul fast float %273, 0x401921FB60000000
  %6808 = call float @dx.op.unary.f32(i32 13, float %6807)  ; Sin(value)
  %6809 = call float @dx.op.unary.f32(i32 12, float %6807)  ; Cos(value)
  %6810 = fsub fast float -0.000000e+00, %6808
  br label %6811

; <label>:6811                                    ; preds = %6860, %6806
  %6812 = phi float [ 0.000000e+00, %6806 ], [ %6855, %6860 ]
  %6813 = phi float [ 0.000000e+00, %6806 ], [ %6857, %6860 ]
  %6814 = phi i32 [ 0, %6806 ], [ %6861, %6860 ]
  %6815 = mul i32 %6814, 2
  %6816 = add i32 0, %6815
  %6817 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6816
  %6818 = load float, float* %6817, align 4
  %6819 = mul i32 %6814, 2
  %6820 = add i32 1, %6819
  %6821 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6820
  %6822 = load float, float* %6821, align 4
  %6823 = fmul fast float %6818, %6809
  %6824 = call float @dx.op.tertiary.f32(i32 46, float %6822, float %6810, float %6823)  ; FMad(a,b,c)
  %6825 = fmul fast float %6818, %6808
  %6826 = call float @dx.op.tertiary.f32(i32 46, float %6822, float %6809, float %6825)  ; FMad(a,b,c)
  %6827 = fmul fast float %6824, %6735
  %6828 = fmul fast float %6826, %6735
  %6829 = fadd fast float %6827, %6046
  %6830 = fadd fast float %6828, %6047
  %6831 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %56, float %6829, float %6830, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6832 = extractvalue %dx.types.ResRet.f32 %6831, 0
  %6833 = extractvalue %dx.types.ResRet.f32 %6831, 1
  %6834 = extractvalue %dx.types.ResRet.f32 %6831, 2
  %6835 = extractvalue %dx.types.ResRet.f32 %6831, 3
  %6836 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 0
  store float %6832, float* %6836, align 4
  %6837 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 1
  store float %6833, float* %6837, align 4
  %6838 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 2
  store float %6834, float* %6838, align 4
  %6839 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 3
  store float %6835, float* %6839, align 4
  %6840 = fsub fast float %6832, %6737
  %6841 = fcmp fast olt float %6840, 0.000000e+00
  %6842 = select i1 %6841, float 0.000000e+00, float 1.000000e+00
  %6843 = fadd fast float %6842, %6812
  %6844 = fmul fast float %6842, %6840
  %6845 = fadd fast float %6844, %6813
  br label %6846

; <label>:6846                                    ; preds = %6846, %6811
  %6847 = phi i32 [ 1, %6811 ], [ %6858, %6846 ]
  %6848 = phi float [ %6845, %6811 ], [ %6857, %6846 ]
  %6849 = phi float [ %6843, %6811 ], [ %6855, %6846 ]
  %6850 = getelementptr [4 x float], [4 x float]* %108, i32 0, i32 %6847
  %6851 = load float, float* %6850, align 4, !tbaa !125, !noalias !115
  %6852 = fsub fast float %6851, %6737
  %6853 = fcmp fast olt float %6852, 0.000000e+00
  %6854 = select i1 %6853, float 0.000000e+00, float 1.000000e+00
  %6855 = fadd fast float %6854, %6849
  %6856 = fmul fast float %6854, %6852
  %6857 = fadd fast float %6856, %6848
  %6858 = add nuw nsw i32 %6847, 1
  %6859 = icmp eq i32 %6858, 4
  br i1 %6859, label %6860, label %6846, !llvm.loop !127

; <label>:6860                                    ; preds = %6846
  %6861 = add nuw nsw i32 %6814, 1
  %6862 = icmp eq i32 %6861, 8
  br i1 %6862, label %6863, label %6811, !llvm.loop !128

; <label>:6863                                    ; preds = %6860
  %6864 = fdiv fast float 1.000000e+00, %6855
  %6865 = fmul fast float %6864, %6857
  %6866 = fdiv fast float 1.000000e+00, %6737
  %6867 = fmul fast float %6865, %6866
  %6868 = call float @dx.op.unary.f32(i32 7, float %6867)  ; Saturate(value)
  %6869 = call float @dx.op.binary.f32(i32 35, float %6868, float 0.000000e+00)  ; FMax(a,b)
  %6870 = fmul fast float %6855, 3.125000e-02
  %6871 = call float @dx.op.unary.f32(i32 7, float %6870)  ; Saturate(value)
  %6872 = fmul fast float %6871, 2.000000e+00
  %6873 = fadd fast float %6872, -1.000000e+00
  %6874 = fcmp fast ogt float %6873, 0.000000e+00
  %6875 = fcmp fast olt float %6873, 0.000000e+00
  %6876 = zext i1 %6874 to i32
  %6877 = zext i1 %6875 to i32
  %6878 = sub nsw i32 %6876, %6877
  %6879 = sitofp i32 %6878 to float
  %6880 = fmul fast float %6879, %6873
  %6881 = fsub fast float 1.000000e+00, %6880
  %6882 = fmul fast float %6881, %6881
  %6883 = fmul fast float %6882, %6881
  %6884 = fsub fast float %6881, %6883
  %6885 = fmul fast float %6884, %6869
  %6886 = fsub fast float 1.000000e+00, %6883
  %6887 = fsub fast float %6886, %6885
  %6888 = fmul fast float %6879, 5.000000e-01
  %6889 = fmul fast float %6888, %6887
  %6890 = fsub fast float 5.000000e-01, %6889
  br label %6891

; <label>:6891                                    ; preds = %6863, %6739, %6724
  %6892 = phi float [ 1.000000e+00, %6724 ], [ %6805, %6739 ], [ %6890, %6863 ]
  %6893 = fcmp fast ogt float %6152, 0.000000e+00
  br i1 %6893, label %6894, label %7212, !dx.controlflow.hints !130

; <label>:6894                                    ; preds = %6891
  %6895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6896 = extractvalue %dx.types.CBufRet.f32 %6895, 0
  %6897 = fadd fast float %6896, %6036
  %6898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6899 = extractvalue %dx.types.CBufRet.f32 %6898, 2
  %6900 = extractvalue %dx.types.CBufRet.f32 %6898, 3
  %6901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6902 = extractvalue %dx.types.CBufRet.f32 %6901, 0
  %6903 = call float @dx.op.binary.f32(i32 35, float %6897, float 0.000000e+00)  ; FMax(a,b)
  %6904 = fadd fast float %6903, 0x3F10000000000000
  %6905 = fcmp fast oeq float %6902, 0.000000e+00
  br i1 %6039, label %6906, label %7059, !dx.controlflow.hints !131

; <label>:6906                                    ; preds = %6894
  br i1 %6905, label %6907, label %6974

; <label>:6907                                    ; preds = %6906
  %6908 = extractvalue %dx.types.CBufRet.f32 %6898, 1
  %6909 = extractvalue %dx.types.CBufRet.f32 %6898, 0
  %6910 = fmul fast float %6909, %6028
  %6911 = fmul fast float %6908, %6032
  %6912 = fadd fast float %6910, 5.000000e-01
  %6913 = call float @dx.op.unary.f32(i32 27, float %6912)  ; Round_ni(value)
  %6914 = fadd fast float %6911, 5.000000e-01
  %6915 = call float @dx.op.unary.f32(i32 27, float %6914)  ; Round_ni(value)
  %6916 = fsub fast float %6912, %6913
  %6917 = fsub fast float %6914, %6915
  %6918 = fadd fast float %6913, -5.000000e-01
  %6919 = fadd fast float %6915, -5.000000e-01
  %6920 = fmul fast float %6916, 2.000000e+00
  %6921 = fsub fast float 3.000000e+00, %6920
  %6922 = fadd fast float %6920, 1.000000e+00
  %6923 = fsub fast float 2.000000e+00, %6916
  %6924 = bitcast float %6921 to i32
  %6925 = sub nsw i32 2129859010, %6924
  %6926 = bitcast i32 %6925 to float
  %6927 = fmul fast float %6926, %6923
  %6928 = fadd fast float %6927, -1.000000e+00
  %6929 = bitcast float %6922 to i32
  %6930 = sub nsw i32 2129859010, %6929
  %6931 = bitcast i32 %6930 to float
  %6932 = fmul fast float %6931, %6916
  %6933 = fadd fast float %6932, 1.000000e+00
  %6934 = fmul fast float %6917, 2.000000e+00
  %6935 = fsub fast float 3.000000e+00, %6934
  %6936 = fadd fast float %6934, 1.000000e+00
  %6937 = fsub fast float 2.000000e+00, %6917
  %6938 = bitcast float %6935 to i32
  %6939 = sub nsw i32 2129859010, %6938
  %6940 = bitcast i32 %6939 to float
  %6941 = fmul fast float %6940, %6937
  %6942 = fadd fast float %6941, -1.000000e+00
  %6943 = bitcast float %6936 to i32
  %6944 = sub nsw i32 2129859010, %6943
  %6945 = bitcast i32 %6944 to float
  %6946 = fmul fast float %6945, %6917
  %6947 = fadd fast float %6946, 1.000000e+00
  %6948 = fadd fast float %6928, %6918
  %6949 = fmul fast float %6948, %6899
  %6950 = fadd fast float %6942, %6919
  %6951 = fmul fast float %6950, %6900
  %6952 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6949, float %6951, float undef, float undef, i32 0, i32 0, i32 undef, float %6904)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6953 = extractvalue %dx.types.ResRet.f32 %6952, 0
  %6954 = fmul fast float %6953, %6921
  %6955 = fadd fast float %6933, %6918
  %6956 = fmul fast float %6955, %6899
  %6957 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6956, float %6951, float undef, float undef, i32 0, i32 0, i32 undef, float %6904)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6958 = extractvalue %dx.types.ResRet.f32 %6957, 0
  %6959 = fmul fast float %6958, %6922
  %6960 = fadd fast float %6947, %6919
  %6961 = fmul fast float %6960, %6900
  %6962 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6949, float %6961, float undef, float undef, i32 0, i32 0, i32 undef, float %6904)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6963 = extractvalue %dx.types.ResRet.f32 %6962, 0
  %6964 = fmul fast float %6963, %6921
  %6965 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6956, float %6961, float undef, float undef, i32 0, i32 0, i32 undef, float %6904)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6966 = extractvalue %dx.types.ResRet.f32 %6965, 0
  %6967 = fmul fast float %6966, %6922
  %6968 = fadd fast float %6967, %6964
  %6969 = fmul fast float %6968, %6936
  %6970 = fadd fast float %6959, %6954
  %6971 = fmul fast float %6970, %6935
  %6972 = fadd fast float %6971, %6969
  %6973 = fmul fast float %6972, 6.250000e-02
  br label %7212

; <label>:6974                                    ; preds = %6906
  %6975 = fmul fast float %273, 0x401921FB60000000
  %6976 = call float @dx.op.unary.f32(i32 13, float %6975)  ; Sin(value)
  %6977 = call float @dx.op.unary.f32(i32 12, float %6975)  ; Cos(value)
  %6978 = fsub fast float -0.000000e+00, %6976
  br label %6979

; <label>:6979                                    ; preds = %7028, %6974
  %6980 = phi float [ 0.000000e+00, %6974 ], [ %7023, %7028 ]
  %6981 = phi float [ 0.000000e+00, %6974 ], [ %7025, %7028 ]
  %6982 = phi i32 [ 0, %6974 ], [ %7029, %7028 ]
  %6983 = mul i32 %6982, 2
  %6984 = add i32 0, %6983
  %6985 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6984
  %6986 = load float, float* %6985, align 4
  %6987 = mul i32 %6982, 2
  %6988 = add i32 1, %6987
  %6989 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6988
  %6990 = load float, float* %6989, align 4
  %6991 = fmul fast float %6986, %6977
  %6992 = call float @dx.op.tertiary.f32(i32 46, float %6990, float %6978, float %6991)  ; FMad(a,b,c)
  %6993 = fmul fast float %6986, %6976
  %6994 = call float @dx.op.tertiary.f32(i32 46, float %6990, float %6977, float %6993)  ; FMad(a,b,c)
  %6995 = fmul fast float %6992, %6902
  %6996 = fmul fast float %6994, %6902
  %6997 = fadd fast float %6995, %6028
  %6998 = fadd fast float %6996, %6032
  %6999 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %56, float %6997, float %6998, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7000 = extractvalue %dx.types.ResRet.f32 %6999, 0
  %7001 = extractvalue %dx.types.ResRet.f32 %6999, 1
  %7002 = extractvalue %dx.types.ResRet.f32 %6999, 2
  %7003 = extractvalue %dx.types.ResRet.f32 %6999, 3
  %7004 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %7000, float* %7004, align 4
  %7005 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %7001, float* %7005, align 4
  %7006 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %7002, float* %7006, align 4
  %7007 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %7003, float* %7007, align 4
  %7008 = fsub fast float %7000, %6904
  %7009 = fcmp fast olt float %7008, 0.000000e+00
  %7010 = select i1 %7009, float 0.000000e+00, float 1.000000e+00
  %7011 = fadd fast float %7010, %6980
  %7012 = fmul fast float %7010, %7008
  %7013 = fadd fast float %7012, %6981
  br label %7014

; <label>:7014                                    ; preds = %7014, %6979
  %7015 = phi i32 [ 1, %6979 ], [ %7026, %7014 ]
  %7016 = phi float [ %7013, %6979 ], [ %7025, %7014 ]
  %7017 = phi float [ %7011, %6979 ], [ %7023, %7014 ]
  %7018 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %7015
  %7019 = load float, float* %7018, align 4, !tbaa !125, !noalias !115
  %7020 = fsub fast float %7019, %6904
  %7021 = fcmp fast olt float %7020, 0.000000e+00
  %7022 = select i1 %7021, float 0.000000e+00, float 1.000000e+00
  %7023 = fadd fast float %7022, %7017
  %7024 = fmul fast float %7022, %7020
  %7025 = fadd fast float %7024, %7016
  %7026 = add nuw nsw i32 %7015, 1
  %7027 = icmp eq i32 %7026, 4
  br i1 %7027, label %7028, label %7014, !llvm.loop !127

; <label>:7028                                    ; preds = %7014
  %7029 = add nuw nsw i32 %6982, 1
  %7030 = icmp eq i32 %7029, 8
  br i1 %7030, label %7031, label %6979, !llvm.loop !128

; <label>:7031                                    ; preds = %7028
  %7032 = fdiv fast float 1.000000e+00, %7023
  %7033 = fmul fast float %7032, %7025
  %7034 = fdiv fast float 1.000000e+00, %6904
  %7035 = fmul fast float %7033, %7034
  %7036 = call float @dx.op.unary.f32(i32 7, float %7035)  ; Saturate(value)
  %7037 = call float @dx.op.binary.f32(i32 35, float %7036, float 0.000000e+00)  ; FMax(a,b)
  %7038 = fmul fast float %7023, 3.125000e-02
  %7039 = call float @dx.op.unary.f32(i32 7, float %7038)  ; Saturate(value)
  %7040 = fmul fast float %7039, 2.000000e+00
  %7041 = fadd fast float %7040, -1.000000e+00
  %7042 = fcmp fast ogt float %7041, 0.000000e+00
  %7043 = fcmp fast olt float %7041, 0.000000e+00
  %7044 = zext i1 %7042 to i32
  %7045 = zext i1 %7043 to i32
  %7046 = sub nsw i32 %7044, %7045
  %7047 = sitofp i32 %7046 to float
  %7048 = fmul fast float %7047, %7041
  %7049 = fsub fast float 1.000000e+00, %7048
  %7050 = fmul fast float %7049, %7049
  %7051 = fmul fast float %7050, %7049
  %7052 = fsub fast float %7049, %7051
  %7053 = fmul fast float %7052, %7037
  %7054 = fsub fast float 1.000000e+00, %7051
  %7055 = fsub fast float %7054, %7053
  %7056 = fmul fast float %7047, 5.000000e-01
  %7057 = fmul fast float %7056, %7055
  %7058 = fsub fast float 5.000000e-01, %7057
  br label %7212

; <label>:7059                                    ; preds = %6894
  br i1 %6905, label %7060, label %7127

; <label>:7060                                    ; preds = %7059
  %7061 = extractvalue %dx.types.CBufRet.f32 %6898, 1
  %7062 = extractvalue %dx.types.CBufRet.f32 %6898, 0
  %7063 = fmul fast float %7062, %6028
  %7064 = fmul fast float %7061, %6032
  %7065 = fadd fast float %7063, 5.000000e-01
  %7066 = call float @dx.op.unary.f32(i32 27, float %7065)  ; Round_ni(value)
  %7067 = fadd fast float %7064, 5.000000e-01
  %7068 = call float @dx.op.unary.f32(i32 27, float %7067)  ; Round_ni(value)
  %7069 = fsub fast float %7065, %7066
  %7070 = fsub fast float %7067, %7068
  %7071 = fadd fast float %7066, -5.000000e-01
  %7072 = fadd fast float %7068, -5.000000e-01
  %7073 = fmul fast float %7069, 2.000000e+00
  %7074 = fsub fast float 3.000000e+00, %7073
  %7075 = fadd fast float %7073, 1.000000e+00
  %7076 = fsub fast float 2.000000e+00, %7069
  %7077 = bitcast float %7074 to i32
  %7078 = sub nsw i32 2129859010, %7077
  %7079 = bitcast i32 %7078 to float
  %7080 = fmul fast float %7079, %7076
  %7081 = fadd fast float %7080, -1.000000e+00
  %7082 = bitcast float %7075 to i32
  %7083 = sub nsw i32 2129859010, %7082
  %7084 = bitcast i32 %7083 to float
  %7085 = fmul fast float %7084, %7069
  %7086 = fadd fast float %7085, 1.000000e+00
  %7087 = fmul fast float %7070, 2.000000e+00
  %7088 = fsub fast float 3.000000e+00, %7087
  %7089 = fadd fast float %7087, 1.000000e+00
  %7090 = fsub fast float 2.000000e+00, %7070
  %7091 = bitcast float %7088 to i32
  %7092 = sub nsw i32 2129859010, %7091
  %7093 = bitcast i32 %7092 to float
  %7094 = fmul fast float %7093, %7090
  %7095 = fadd fast float %7094, -1.000000e+00
  %7096 = bitcast float %7089 to i32
  %7097 = sub nsw i32 2129859010, %7096
  %7098 = bitcast i32 %7097 to float
  %7099 = fmul fast float %7098, %7070
  %7100 = fadd fast float %7099, 1.000000e+00
  %7101 = fadd fast float %7081, %7071
  %7102 = fmul fast float %7101, %6899
  %7103 = fadd fast float %7095, %7072
  %7104 = fmul fast float %7103, %6900
  %7105 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7102, float %7104, float undef, float undef, i32 0, i32 0, i32 undef, float %6904)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7106 = extractvalue %dx.types.ResRet.f32 %7105, 0
  %7107 = fmul fast float %7106, %7074
  %7108 = fadd fast float %7086, %7071
  %7109 = fmul fast float %7108, %6899
  %7110 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7109, float %7104, float undef, float undef, i32 0, i32 0, i32 undef, float %6904)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7111 = extractvalue %dx.types.ResRet.f32 %7110, 0
  %7112 = fmul fast float %7111, %7075
  %7113 = fadd fast float %7100, %7072
  %7114 = fmul fast float %7113, %6900
  %7115 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7102, float %7114, float undef, float undef, i32 0, i32 0, i32 undef, float %6904)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7116 = extractvalue %dx.types.ResRet.f32 %7115, 0
  %7117 = fmul fast float %7116, %7074
  %7118 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7109, float %7114, float undef, float undef, i32 0, i32 0, i32 undef, float %6904)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7119 = extractvalue %dx.types.ResRet.f32 %7118, 0
  %7120 = fmul fast float %7119, %7075
  %7121 = fadd fast float %7120, %7117
  %7122 = fmul fast float %7121, %7089
  %7123 = fadd fast float %7112, %7107
  %7124 = fmul fast float %7123, %7088
  %7125 = fadd fast float %7124, %7122
  %7126 = fmul fast float %7125, 6.250000e-02
  br label %7212

; <label>:7127                                    ; preds = %7059
  %7128 = fmul fast float %273, 0x401921FB60000000
  %7129 = call float @dx.op.unary.f32(i32 13, float %7128)  ; Sin(value)
  %7130 = call float @dx.op.unary.f32(i32 12, float %7128)  ; Cos(value)
  %7131 = fsub fast float -0.000000e+00, %7129
  br label %7132

; <label>:7132                                    ; preds = %7181, %7127
  %7133 = phi float [ 0.000000e+00, %7127 ], [ %7176, %7181 ]
  %7134 = phi float [ 0.000000e+00, %7127 ], [ %7178, %7181 ]
  %7135 = phi i32 [ 0, %7127 ], [ %7182, %7181 ]
  %7136 = mul i32 %7135, 2
  %7137 = add i32 0, %7136
  %7138 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7137
  %7139 = load float, float* %7138, align 4
  %7140 = mul i32 %7135, 2
  %7141 = add i32 1, %7140
  %7142 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7141
  %7143 = load float, float* %7142, align 4
  %7144 = fmul fast float %7139, %7130
  %7145 = call float @dx.op.tertiary.f32(i32 46, float %7143, float %7131, float %7144)  ; FMad(a,b,c)
  %7146 = fmul fast float %7139, %7129
  %7147 = call float @dx.op.tertiary.f32(i32 46, float %7143, float %7130, float %7146)  ; FMad(a,b,c)
  %7148 = fmul fast float %7145, %6902
  %7149 = fmul fast float %7147, %6902
  %7150 = fadd fast float %7148, %6028
  %7151 = fadd fast float %7149, %6032
  %7152 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %56, float %7150, float %7151, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7153 = extractvalue %dx.types.ResRet.f32 %7152, 0
  %7154 = extractvalue %dx.types.ResRet.f32 %7152, 1
  %7155 = extractvalue %dx.types.ResRet.f32 %7152, 2
  %7156 = extractvalue %dx.types.ResRet.f32 %7152, 3
  %7157 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %7153, float* %7157, align 4
  %7158 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %7154, float* %7158, align 4
  %7159 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %7155, float* %7159, align 4
  %7160 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %7156, float* %7160, align 4
  %7161 = fsub fast float %7153, %6904
  %7162 = fcmp fast olt float %7161, 0.000000e+00
  %7163 = select i1 %7162, float 0.000000e+00, float 1.000000e+00
  %7164 = fadd fast float %7163, %7133
  %7165 = fmul fast float %7163, %7161
  %7166 = fadd fast float %7165, %7134
  br label %7167

; <label>:7167                                    ; preds = %7167, %7132
  %7168 = phi i32 [ 1, %7132 ], [ %7179, %7167 ]
  %7169 = phi float [ %7166, %7132 ], [ %7178, %7167 ]
  %7170 = phi float [ %7164, %7132 ], [ %7176, %7167 ]
  %7171 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %7168
  %7172 = load float, float* %7171, align 4, !tbaa !125, !noalias !115
  %7173 = fsub fast float %7172, %6904
  %7174 = fcmp fast olt float %7173, 0.000000e+00
  %7175 = select i1 %7174, float 0.000000e+00, float 1.000000e+00
  %7176 = fadd fast float %7175, %7170
  %7177 = fmul fast float %7175, %7173
  %7178 = fadd fast float %7177, %7169
  %7179 = add nuw nsw i32 %7168, 1
  %7180 = icmp eq i32 %7179, 4
  br i1 %7180, label %7181, label %7167, !llvm.loop !127

; <label>:7181                                    ; preds = %7167
  %7182 = add nuw nsw i32 %7135, 1
  %7183 = icmp eq i32 %7182, 8
  br i1 %7183, label %7184, label %7132, !llvm.loop !128

; <label>:7184                                    ; preds = %7181
  %7185 = fdiv fast float 1.000000e+00, %7176
  %7186 = fmul fast float %7185, %7178
  %7187 = fdiv fast float 1.000000e+00, %6904
  %7188 = fmul fast float %7186, %7187
  %7189 = call float @dx.op.unary.f32(i32 7, float %7188)  ; Saturate(value)
  %7190 = call float @dx.op.binary.f32(i32 35, float %7189, float 0.000000e+00)  ; FMax(a,b)
  %7191 = fmul fast float %7176, 3.125000e-02
  %7192 = call float @dx.op.unary.f32(i32 7, float %7191)  ; Saturate(value)
  %7193 = fmul fast float %7192, 2.000000e+00
  %7194 = fadd fast float %7193, -1.000000e+00
  %7195 = fcmp fast ogt float %7194, 0.000000e+00
  %7196 = fcmp fast olt float %7194, 0.000000e+00
  %7197 = zext i1 %7195 to i32
  %7198 = zext i1 %7196 to i32
  %7199 = sub nsw i32 %7197, %7198
  %7200 = sitofp i32 %7199 to float
  %7201 = fmul fast float %7200, %7194
  %7202 = fsub fast float 1.000000e+00, %7201
  %7203 = fmul fast float %7202, %7202
  %7204 = fmul fast float %7203, %7202
  %7205 = fsub fast float %7202, %7204
  %7206 = fmul fast float %7205, %7190
  %7207 = fsub fast float 1.000000e+00, %7204
  %7208 = fsub fast float %7207, %7206
  %7209 = fmul fast float %7200, 5.000000e-01
  %7210 = fmul fast float %7209, %7208
  %7211 = fsub fast float 5.000000e-01, %7210
  br label %7212

; <label>:7212                                    ; preds = %7184, %7060, %7031, %6907, %6891
  %7213 = phi float [ 1.000000e+00, %6891 ], [ %6973, %6907 ], [ %7058, %7031 ], [ %7126, %7060 ], [ %7211, %7184 ]
  %7214 = fsub fast float %6725, %6558
  %7215 = fmul fast float %7214, %6125
  %7216 = fadd fast float %7215, %6558
  %7217 = fsub fast float %6892, %7216
  %7218 = fmul fast float %7217, %6124
  %7219 = fadd fast float %7218, %7216
  %7220 = fsub fast float %7213, %7219
  %7221 = fmul fast float %7220, %6152
  %7222 = fadd fast float %7221, %7219
  %7223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7224 = extractvalue %dx.types.CBufRet.f32 %7223, 2
  %7225 = fcmp fast ogt float %7224, 0.000000e+00
  br i1 %7225, label %7226, label %7266, !dx.controlflow.hints !132

; <label>:7226                                    ; preds = %7212
  %7227 = fcmp fast ugt float %7224, 0.000000e+00
  br i1 %7227, label %7228, label %7263

; <label>:7228                                    ; preds = %7226
  %7229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7230 = extractvalue %dx.types.CBufRet.f32 %7229, 0
  %7231 = extractvalue %dx.types.CBufRet.f32 %7229, 1
  %7232 = extractvalue %dx.types.CBufRet.f32 %7229, 2
  %7233 = extractvalue %dx.types.CBufRet.f32 %7229, 3
  %7234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7235 = extractvalue %dx.types.CBufRet.f32 %7234, 0
  %7236 = extractvalue %dx.types.CBufRet.f32 %7234, 1
  %7237 = extractvalue %dx.types.CBufRet.f32 %7234, 2
  %7238 = extractvalue %dx.types.CBufRet.f32 %7234, 3
  %7239 = extractvalue %dx.types.CBufRet.f32 %7223, 0
  %7240 = extractvalue %dx.types.CBufRet.f32 %7223, 1
  %7241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7242 = extractvalue %dx.types.CBufRet.f32 %7241, 0
  %7243 = extractvalue %dx.types.CBufRet.f32 %7241, 1
  %7244 = extractvalue %dx.types.CBufRet.f32 %7241, 2
  %7245 = fadd fast float %7242, %6005
  %7246 = fadd fast float %7243, %6006
  %7247 = fadd fast float %7244, %6007
  %7248 = fmul fast float %7245, %7230
  %7249 = call float @dx.op.tertiary.f32(i32 46, float %7231, float %7246, float %7248)  ; FMad(a,b,c)
  %7250 = call float @dx.op.tertiary.f32(i32 46, float %7232, float %7247, float %7249)  ; FMad(a,b,c)
  %7251 = fadd fast float %7250, %7233
  %7252 = fmul fast float %7245, %7235
  %7253 = call float @dx.op.tertiary.f32(i32 46, float %7236, float %7246, float %7252)  ; FMad(a,b,c)
  %7254 = call float @dx.op.tertiary.f32(i32 46, float %7237, float %7247, float %7253)  ; FMad(a,b,c)
  %7255 = fadd fast float %7254, %7238
  %7256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %52, float %7251, float %7255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7257 = extractvalue %dx.types.ResRet.f32 %7256, 0
  %7258 = fmul fast float %7257, %7240
  %7259 = fadd fast float %7258, %7239
  %7260 = call float @dx.op.unary.f32(i32 7, float %7259)  ; Saturate(value)
  %7261 = fmul fast float %7260, %7224
  %7262 = fsub fast float 1.000000e+00, %7261
  br label %7263

; <label>:7263                                    ; preds = %7228, %7226
  %7264 = phi float [ %7262, %7228 ], [ 1.000000e+00, %7226 ]
  %7265 = fmul fast float %7264, %7222
  br label %7266

; <label>:7266                                    ; preds = %7263, %7212, %5985
  %7267 = phi float [ 1.000000e+00, %5985 ], [ %7265, %7263 ], [ %7222, %7212 ]
  %7268 = call float @dx.op.binary.f32(i32 36, float %7267, float %7267)  ; FMin(a,b)
  %7269 = call float @dx.op.binary.f32(i32 36, float %7267, float %7268)  ; FMin(a,b)
  %7270 = fcmp fast ogt float %7269, 0.000000e+00
  br i1 %7270, label %7271, label %7436, !dx.controlflow.hints !133

; <label>:7271                                    ; preds = %7266
  %7272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7273 = extractvalue %dx.types.CBufRet.f32 %7272, 0
  %7274 = extractvalue %dx.types.CBufRet.f32 %7272, 1
  %7275 = extractvalue %dx.types.CBufRet.f32 %7272, 2
  %7276 = extractvalue %dx.types.CBufRet.f32 %7272, 3
  %7277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7278 = extractvalue %dx.types.CBufRet.f32 %7277, 0
  %7279 = extractvalue %dx.types.CBufRet.f32 %7277, 1
  %7280 = extractvalue %dx.types.CBufRet.f32 %7277, 2
  %7281 = extractvalue %dx.types.CBufRet.f32 %7277, 3
  %7282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7283 = extractvalue %dx.types.CBufRet.f32 %7282, 0
  %7284 = extractvalue %dx.types.CBufRet.f32 %7282, 1
  %7285 = extractvalue %dx.types.CBufRet.f32 %7282, 2
  %7286 = extractvalue %dx.types.CBufRet.f32 %7282, 3
  %7287 = fmul fast float %7273, %6005
  %7288 = call float @dx.op.tertiary.f32(i32 46, float %6006, float %7274, float %7287)  ; FMad(a,b,c)
  %7289 = call float @dx.op.tertiary.f32(i32 46, float %6007, float %7275, float %7288)  ; FMad(a,b,c)
  %7290 = fadd fast float %7289, %7276
  %7291 = fmul fast float %7278, %6005
  %7292 = call float @dx.op.tertiary.f32(i32 46, float %6006, float %7279, float %7291)  ; FMad(a,b,c)
  %7293 = call float @dx.op.tertiary.f32(i32 46, float %6007, float %7280, float %7292)  ; FMad(a,b,c)
  %7294 = fadd fast float %7293, %7281
  %7295 = fmul fast float %7283, %6005
  %7296 = call float @dx.op.tertiary.f32(i32 46, float %6006, float %7284, float %7295)  ; FMad(a,b,c)
  %7297 = call float @dx.op.tertiary.f32(i32 46, float %6007, float %7285, float %7296)  ; FMad(a,b,c)
  %7298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7299 = extractvalue %dx.types.CBufRet.f32 %7298, 0
  %7300 = extractvalue %dx.types.CBufRet.f32 %7298, 1
  %7301 = extractvalue %dx.types.CBufRet.f32 %7298, 3
  %7302 = fmul fast float %7301, %7290
  %7303 = fmul fast float %7301, %7294
  %7304 = fadd fast float %7302, %7299
  %7305 = fadd fast float %7303, %7300
  %7306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7307 = extractvalue %dx.types.CBufRet.f32 %7306, 0
  %7308 = extractvalue %dx.types.CBufRet.f32 %7306, 1
  %7309 = fsub fast float %7304, %7307
  %7310 = fsub fast float %7305, %7308
  %7311 = fcmp fast olt float %7309, 0.000000e+00
  %7312 = fcmp fast olt float %7310, 0.000000e+00
  %7313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7314 = extractvalue %dx.types.CBufRet.f32 %7313, 0
  %7315 = extractvalue %dx.types.CBufRet.f32 %7313, 1
  %7316 = extractvalue %dx.types.CBufRet.f32 %7313, 2
  %7317 = extractvalue %dx.types.CBufRet.f32 %7313, 3
  %7318 = select i1 %7311, float %7314, float %7316
  %7319 = select i1 %7312, float %7315, float %7317
  %7320 = fmul fast float %7318, %7309
  %7321 = fmul fast float %7319, %7310
  %7322 = call float @dx.op.unary.f32(i32 6, float %7320)  ; FAbs(value)
  %7323 = call float @dx.op.unary.f32(i32 6, float %7321)  ; FAbs(value)
  %7324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7325 = extractvalue %dx.types.CBufRet.f32 %7324, 0
  %7326 = call float @dx.op.binary.f32(i32 35, float %7322, float %7323)  ; FMax(a,b)
  %7327 = fsub fast float %7325, %7326
  %7328 = call float @dx.op.unary.f32(i32 7, float %7327)  ; Saturate(value)
  %7329 = fcmp fast ogt float %7328, 0.000000e+00
  br i1 %7329, label %7330, label %7371, !dx.controlflow.hints !134

; <label>:7330                                    ; preds = %7271
  %7331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %55, float %7304, float %7305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7332 = extractvalue %dx.types.ResRet.f32 %7331, 1
  %7333 = fcmp fast ogt float %7332, 0.000000e+00
  br i1 %7333, label %7334, label %7366

; <label>:7334                                    ; preds = %7330
  %7335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %55, float %7304, float %7305, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7336 = extractvalue %dx.types.ResRet.f32 %7335, 0
  %7337 = extractvalue %dx.types.ResRet.f32 %7335, 1
  %7338 = extractvalue %dx.types.ResRet.f32 %7335, 2
  %7339 = extractvalue %dx.types.ResRet.f32 %7335, 3
  %7340 = fsub fast float 1.000000e+00, %7286
  %7341 = fsub fast float %7340, %7297
  %7342 = fmul fast float %7341, 0x400921FB60000000
  %7343 = fadd fast float %7342, 0x3FF921FB60000000
  %7344 = call float @dx.op.unary.f32(i32 13, float %7343)  ; Sin(value)
  %7345 = fadd fast float %7344, -1.000000e+00
  %7346 = fmul fast float %7345, 0x3FD45F3060000000
  %7347 = fmul fast float %7341, 0x401921FB60000000
  %7348 = fadd fast float %7347, 0x400921FB60000000
  %7349 = call float @dx.op.unary.f32(i32 13, float %7348)  ; Sin(value)
  %7350 = fadd fast float %7349, 0x3E7777A5C0000000
  %7351 = fmul fast float %7350, 0x3FC45F3060000000
  %7352 = fmul fast float %7341, 0x4022D97C80000000
  %7353 = fadd fast float %7352, 0x4012D97C80000000
  %7354 = call float @dx.op.unary.f32(i32 13, float %7353)  ; Sin(value)
  %7355 = fadd fast float %7354, 1.000000e+00
  %7356 = fmul fast float %7355, 0x3FBB2995E0000000
  %7357 = fmul fast float %7341, 0x402921FB60000000
  %7358 = fadd fast float %7357, 0x401921FB60000000
  %7359 = call float @dx.op.unary.f32(i32 13, float %7358)  ; Sin(value)
  %7360 = fadd fast float %7359, 0xBE8777A5C0000000
  %7361 = fmul fast float %7360, 0x3FB45F3060000000
  %7362 = call float @dx.op.dot4.f32(i32 56, float %7336, float %7337, float %7338, float %7339, float %7346, float %7351, float %7356, float %7361)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7363 = fmul fast float %7362, 0xBFF7154760000000
  %7364 = call float @dx.op.unary.f32(i32 21, float %7363)  ; Exp(value)
  %7365 = call float @dx.op.unary.f32(i32 7, float %7364)  ; Saturate(value)
  br label %7366

; <label>:7366                                    ; preds = %7334, %7330
  %7367 = phi float [ %7365, %7334 ], [ 1.000000e+00, %7330 ]
  %7368 = fadd fast float %7367, -1.000000e+00
  %7369 = fmul fast float %7368, %7328
  %7370 = fadd fast float %7369, 1.000000e+00
  br label %7371

; <label>:7371                                    ; preds = %7366, %7271
  %7372 = phi float [ %7370, %7366 ], [ 1.000000e+00, %7271 ]
  %7373 = fmul fast float %7372, %7267
  %7374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7375 = extractvalue %dx.types.CBufRet.f32 %7374, 0
  %7376 = extractvalue %dx.types.CBufRet.f32 %7374, 1
  %7377 = extractvalue %dx.types.CBufRet.f32 %7374, 2
  %7378 = fadd fast float %7375, %203
  %7379 = fadd fast float %7376, %204
  %7380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7381 = extractvalue %dx.types.CBufRet.f32 %7380, 1
  %7382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7383 = extractvalue %dx.types.CBufRet.f32 %7382, 0
  %7384 = extractvalue %dx.types.CBufRet.f32 %7382, 1
  %7385 = extractvalue %dx.types.CBufRet.f32 %7382, 2
  %7386 = fsub fast float -0.000000e+00, %7378
  %7387 = fsub fast float -0.000000e+00, %7379
  %7388 = fsub fast float %5257, %7377
  %7389 = fadd fast float %7388, %7381
  %7390 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7386, float %7387, float %7389)  ; Dot3(ax,ay,az,bx,by,bz)
  %7391 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7383, float %7384, float %7385)  ; Dot3(ax,ay,az,bx,by,bz)
  %7392 = fdiv fast float 1.000000e+00, %7391
  %7393 = fmul fast float %7392, %7390
  %7394 = fmul fast float %7383, %7393
  %7395 = fmul fast float %7384, %7393
  %7396 = fadd fast float %7394, %7378
  %7397 = fadd fast float %7395, %7379
  %7398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7399 = extractvalue %dx.types.CBufRet.f32 %7398, 0
  %7400 = extractvalue %dx.types.CBufRet.f32 %7398, 1
  %7401 = fsub fast float %7396, %7399
  %7402 = fsub fast float %7397, %7400
  %7403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7404 = extractvalue %dx.types.CBufRet.f32 %7403, 2
  %7405 = extractvalue %dx.types.CBufRet.f32 %7403, 3
  %7406 = fmul fast float %7401, %7404
  %7407 = fmul fast float %7402, %7405
  %7408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7409 = extractvalue %dx.types.CBufRet.i32 %7408, 3
  %7410 = icmp eq i32 %7409, 0
  br i1 %7410, label %7416, label %7411

; <label>:7411                                    ; preds = %7371
  %7412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7406, float %7407, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7413 = extractvalue %dx.types.ResRet.f32 %7412, 0
  %7414 = extractvalue %dx.types.ResRet.f32 %7412, 1
  %7415 = extractvalue %dx.types.ResRet.f32 %7412, 2
  br label %7421

; <label>:7416                                    ; preds = %7371
  %7417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %7406, float %7407, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7418 = extractvalue %dx.types.ResRet.f32 %7417, 0
  %7419 = extractvalue %dx.types.ResRet.f32 %7417, 1
  %7420 = extractvalue %dx.types.ResRet.f32 %7417, 2
  br label %7421

; <label>:7421                                    ; preds = %7416, %7411
  %7422 = phi float [ %7413, %7411 ], [ %7418, %7416 ]
  %7423 = phi float [ %7414, %7411 ], [ %7419, %7416 ]
  %7424 = phi float [ %7415, %7411 ], [ %7420, %7416 ]
  %7425 = extractvalue %dx.types.CBufRet.f32 %7380, 2
  %7426 = fmul fast float %7425, %7422
  %7427 = extractvalue %dx.types.CBufRet.f32 %7380, 0
  %7428 = fsub fast float %7393, %7427
  %7429 = fsub fast float %7428, %7426
  %7430 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7429)  ; FMax(a,b)
  %7431 = fmul fast float %7430, %7423
  %7432 = call float @dx.op.binary.f32(i32 36, float %7424, float %7431)  ; FMin(a,b)
  %7433 = fmul fast float %7432, 0xBFF7154760000000
  %7434 = call float @dx.op.unary.f32(i32 21, float %7433)  ; Exp(value)
  %7435 = fmul fast float %7373, %7434
  br label %7436

; <label>:7436                                    ; preds = %7421, %7266
  %7437 = phi float [ %7435, %7421 ], [ %7267, %7266 ]
  %7438 = call float @dx.op.binary.f32(i32 36, float %7437, float %7437)  ; FMin(a,b)
  %7439 = call float @dx.op.binary.f32(i32 36, float %7437, float %7438)  ; FMin(a,b)
  %7440 = fcmp fast ogt float %7439, 0.000000e+00
  br i1 %7440, label %7441, label %7688, !dx.controlflow.hints !135

; <label>:7441                                    ; preds = %7436
  %7442 = fmul fast float %7437, %5997
  %7443 = fmul fast float %7437, %5998
  %7444 = fmul fast float %7437, %5999
  %7445 = fsub fast float %205, %4434
  %7446 = fcmp fast ogt float %7445, 0.000000e+00
  %7447 = fmul fast float %5986, 5.120000e+02
  %7448 = fmul fast float %5987, 5.120000e+02
  %7449 = fmul fast float %5988, 5.120000e+02
  %7450 = fadd fast float %7449, %205
  %7451 = fsub fast float %4434, %7450
  %7452 = fmul fast float %7451, 2.000000e+00
  %7453 = fadd fast float %7452, %7450
  %7454 = select i1 %7446, float %7453, float %7450
  %7455 = fsub fast float %7454, %205
  %7456 = call float @dx.op.dot3.f32(i32 55, float %7447, float %7448, float %7455, float %7447, float %7448, float %7455)  ; Dot3(ax,ay,az,bx,by,bz)
  %7457 = call float @dx.op.unary.f32(i32 25, float %7456)  ; Rsqrt(value)
  %7458 = fmul fast float %7457, %7447
  %7459 = fmul fast float %7457, %7448
  %7460 = fmul fast float %7457, %7455
  %7461 = fsub fast float %4434, %205
  %7462 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7461)  ; Dot3(ax,ay,az,bx,by,bz)
  %7463 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7458, float %7459, float %7460)  ; Dot3(ax,ay,az,bx,by,bz)
  %7464 = fdiv fast float 1.000000e+00, %7463
  %7465 = fmul fast float %7464, %7462
  %7466 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7445, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7467 = fcmp fast ogt float %7466, 0.000000e+00
  %7468 = fcmp fast olt float %7466, 0.000000e+00
  %7469 = zext i1 %7467 to i32
  %7470 = zext i1 %7468 to i32
  %7471 = sub nsw i32 %7469, %7470
  %7472 = sitofp i32 %7471 to float
  %7473 = fsub fast float %7454, %4434
  %7474 = call float @dx.op.dot3.f32(i32 55, float %7447, float %7448, float %7473, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7475 = fcmp fast ogt float %7474, 0.000000e+00
  %7476 = fcmp fast olt float %7474, 0.000000e+00
  %7477 = zext i1 %7475 to i32
  %7478 = zext i1 %7476 to i32
  %7479 = sub nsw i32 %7477, %7478
  %7480 = sitofp i32 %7479 to float
  %7481 = fcmp fast une float %7472, %7480
  br i1 %7481, label %7482, label %7492

; <label>:7482                                    ; preds = %7441
  %7483 = fmul fast float %7465, %7460
  %7484 = fmul fast float %7465, %7459
  %7485 = fmul fast float %7465, %7458
  %7486 = fmul fast float %7485, %7485
  %7487 = fmul fast float %7484, %7484
  %7488 = fadd fast float %7486, %7487
  %7489 = fmul fast float %7483, %7483
  %7490 = fadd fast float %7488, %7489
  %7491 = call float @dx.op.unary.f32(i32 24, float %7490)  ; Sqrt(value)
  br label %7502

; <label>:7492                                    ; preds = %7441
  %7493 = icmp slt i32 %7471, 0
  br i1 %7493, label %7494, label %7502

; <label>:7494                                    ; preds = %7492
  %7495 = fsub fast float %205, %7454
  %7496 = fmul fast float %7447, %7447
  %7497 = fmul fast float %7448, %7448
  %7498 = fadd fast float %7496, %7497
  %7499 = fmul fast float %7495, %7495
  %7500 = fadd fast float %7498, %7499
  %7501 = call float @dx.op.unary.f32(i32 24, float %7500)  ; Sqrt(value)
  br label %7502

; <label>:7502                                    ; preds = %7494, %7492, %7482
  %7503 = phi float [ %7491, %7482 ], [ %7501, %7494 ], [ 0.000000e+00, %7492 ]
  %7504 = fsub fast float -0.000000e+00, %7503
  %7505 = select i1 %7446, float -0.000000e+00, float %7504
  %7506 = fmul fast float %4435, 0x3FF7154760000000
  %7507 = fmul fast float %7506, %7505
  %7508 = fmul fast float %4436, 0x3FF7154760000000
  %7509 = fmul fast float %7508, %7505
  %7510 = fmul fast float %4437, 0x3FF7154760000000
  %7511 = fmul fast float %7510, %7505
  %7512 = call float @dx.op.unary.f32(i32 21, float %7507)  ; Exp(value)
  %7513 = call float @dx.op.unary.f32(i32 21, float %7509)  ; Exp(value)
  %7514 = call float @dx.op.unary.f32(i32 21, float %7511)  ; Exp(value)
  %7515 = call float @dx.op.unary.f32(i32 7, float %7512)  ; Saturate(value)
  %7516 = call float @dx.op.unary.f32(i32 7, float %7513)  ; Saturate(value)
  %7517 = call float @dx.op.unary.f32(i32 7, float %7514)  ; Saturate(value)
  %7518 = fmul fast float %7442, %7515
  %7519 = fmul fast float %7443, %7516
  %7520 = fmul fast float %7444, %7517
  %7521 = fsub fast float %5986, %5260
  %7522 = fsub fast float %5987, %5261
  %7523 = fsub fast float %5988, %5262
  %7524 = call float @dx.op.dot3.f32(i32 55, float %7521, float %7522, float %7523, float %7521, float %7522, float %7523)  ; Dot3(ax,ay,az,bx,by,bz)
  %7525 = call float @dx.op.unary.f32(i32 25, float %7524)  ; Rsqrt(value)
  %7526 = fmul fast float %7525, %7521
  %7527 = fmul fast float %7525, %7522
  %7528 = fmul fast float %7525, %7523
  %7529 = call float @dx.op.dot3.f32(i32 55, float %5986, float %5987, float %5988, float %5220, float %5221, float %5222)  ; Dot3(ax,ay,az,bx,by,bz)
  %7530 = call float @dx.op.dot3.f32(i32 55, float %5263, float %5264, float %5265, float %7526, float %7527, float %7528)  ; Dot3(ax,ay,az,bx,by,bz)
  %7531 = call float @dx.op.unary.f32(i32 7, float %7529)  ; Saturate(value)
  %7532 = fmul fast float %7531, %7531
  %7533 = fmul fast float %7532, %5293
  %7534 = call float @dx.op.unary.f32(i32 7, float %7533)  ; Saturate(value)
  %7535 = fmul fast float %7534, %7531
  %7536 = call float @dx.op.dot3.f32(i32 55, float %5220, float %5221, float %5222, float %7526, float %7527, float %7528)  ; Dot3(ax,ay,az,bx,by,bz)
  %7537 = fmul fast float %7536, %7536
  %7538 = call float @dx.op.unary.f32(i32 6, float %7529)  ; FAbs(value)
  %7539 = fsub fast float 1.000000e+00, %5286
  %7540 = fmul fast float %5268, %5268
  %7541 = fmul fast float %7540, %7539
  %7542 = fadd fast float %7541, %5286
  %7543 = bitcast float %7542 to i32
  %7544 = ashr i32 %7543, 1
  %7545 = add nsw i32 %7544, 532487669
  %7546 = bitcast i32 %7545 to float
  %7547 = fadd fast float %7546, %5268
  %7548 = fmul fast float %5286, %7537
  %7549 = fsub fast float 1.000000e+00, %7537
  %7550 = fadd fast float %7549, %7548
  %7551 = fmul fast float %7538, %7538
  %7552 = fmul fast float %7551, %7539
  %7553 = fadd fast float %7552, %5286
  %7554 = bitcast float %7553 to i32
  %7555 = ashr i32 %7554, 1
  %7556 = add nsw i32 %7555, 532487669
  %7557 = bitcast i32 %7556 to float
  %7558 = fadd fast float %7557, %7538
  %7559 = fmul fast float %7550, %7550
  %7560 = fmul fast float %7559, %7547
  %7561 = fmul fast float %7560, %7558
  %7562 = fdiv fast float 0x3FF0A00000000000, %7561
  %7563 = fmul fast float %7562, %5286
  %7564 = call float @dx.op.unary.f32(i32 6, float %7530)  ; FAbs(value)
  %7565 = fsub fast float 1.000000e+00, %7564
  %7566 = bitcast float %7565 to i32
  %7567 = sitofp i32 %7566 to float
  %7568 = fmul fast float %7567, 5.000000e+00
  %7569 = fadd fast float %7568, 0xC1EFBF8940000000
  %7570 = fptosi float %7569 to i32
  %7571 = bitcast i32 %7570 to float
  %7572 = fsub fast float 1.000000e+00, %5217
  %7573 = fsub fast float 1.000000e+00, %5218
  %7574 = fsub fast float 1.000000e+00, %5266
  %7575 = fmul fast float %7571, %7572
  %7576 = fmul fast float %7571, %7573
  %7577 = fmul fast float %7571, %7574
  %7578 = fadd fast float %7575, %5217
  %7579 = fadd fast float %7576, %5218
  %7580 = fadd fast float %7577, %5266
  br i1 %5405, label %7581, label %7604

; <label>:7581                                    ; preds = %7502
  %7582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4033, float %7564, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7583 = extractvalue %dx.types.ResRet.f32 %7582, 0
  %7584 = extractvalue %dx.types.ResRet.f32 %7582, 1
  %7585 = extractvalue %dx.types.ResRet.f32 %7582, 2
  %7586 = fadd fast float %7583, -5.000000e-01
  %7587 = fadd fast float %7584, -5.000000e-01
  %7588 = fadd fast float %7585, -5.000000e-01
  %7589 = fmul fast float %5217, 4.000000e+00
  %7590 = fmul fast float %7589, %7572
  %7591 = fmul fast float %7590, %7586
  %7592 = fmul fast float %5218, 4.000000e+00
  %7593 = fmul fast float %7592, %7573
  %7594 = fmul fast float %7593, %7587
  %7595 = fmul fast float %5266, 4.000000e+00
  %7596 = fmul fast float %7595, %7574
  %7597 = fmul fast float %7596, %7588
  %7598 = fadd fast float %7591, %7578
  %7599 = fadd fast float %7594, %7579
  %7600 = fadd fast float %7597, %7580
  %7601 = call float @dx.op.unary.f32(i32 7, float %7598)  ; Saturate(value)
  %7602 = call float @dx.op.unary.f32(i32 7, float %7599)  ; Saturate(value)
  %7603 = call float @dx.op.unary.f32(i32 7, float %7600)  ; Saturate(value)
  br label %7604

; <label>:7604                                    ; preds = %7581, %7502
  %7605 = phi float [ %7601, %7581 ], [ %7578, %7502 ]
  %7606 = phi float [ %7602, %7581 ], [ %7579, %7502 ]
  %7607 = phi float [ %7603, %7581 ], [ %7580, %7502 ]
  %7608 = fmul fast float %7529, 9.843750e-01
  %7609 = fadd fast float %7608, 7.812500e-03
  %7610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %7609, float %5395, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7611 = extractvalue %dx.types.ResRet.f32 %7610, 2
  %7612 = extractvalue %dx.types.ResRet.f32 %7610, 3
  %7613 = fmul fast float %7611, %5217
  %7614 = fmul fast float %7611, %5218
  %7615 = fmul fast float %7611, %5266
  %7616 = fadd fast float %7613, %7612
  %7617 = fadd fast float %7614, %7612
  %7618 = fadd fast float %7615, %7612
  br i1 %5405, label %7619, label %7642

; <label>:7619                                    ; preds = %7604
  %7620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4033, float %7529, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7621 = extractvalue %dx.types.ResRet.f32 %7620, 0
  %7622 = extractvalue %dx.types.ResRet.f32 %7620, 1
  %7623 = extractvalue %dx.types.ResRet.f32 %7620, 2
  %7624 = fadd fast float %7621, -5.000000e-01
  %7625 = fadd fast float %7622, -5.000000e-01
  %7626 = fadd fast float %7623, -5.000000e-01
  %7627 = fmul fast float %5217, 4.000000e+00
  %7628 = fmul fast float %7627, %7572
  %7629 = fmul fast float %7628, %7624
  %7630 = fmul fast float %5218, 4.000000e+00
  %7631 = fmul fast float %7630, %7573
  %7632 = fmul fast float %7631, %7625
  %7633 = fmul fast float %5266, 4.000000e+00
  %7634 = fmul fast float %7633, %7574
  %7635 = fmul fast float %7634, %7626
  %7636 = fadd fast float %7629, %7616
  %7637 = fadd fast float %7632, %7617
  %7638 = fadd fast float %7635, %7618
  %7639 = call float @dx.op.unary.f32(i32 7, float %7636)  ; Saturate(value)
  %7640 = call float @dx.op.unary.f32(i32 7, float %7637)  ; Saturate(value)
  %7641 = call float @dx.op.unary.f32(i32 7, float %7638)  ; Saturate(value)
  br label %7642

; <label>:7642                                    ; preds = %7619, %7604
  %7643 = phi float [ %7639, %7619 ], [ %7616, %7604 ]
  %7644 = phi float [ %7640, %7619 ], [ %7617, %7604 ]
  %7645 = phi float [ %7641, %7619 ], [ %7618, %7604 ]
  %7646 = call float @dx.op.binary.f32(i32 35, float %7644, float %7645)  ; FMax(a,b)
  %7647 = call float @dx.op.binary.f32(i32 35, float %7643, float %7646)  ; FMax(a,b)
  %7648 = fsub fast float 1.000000e+00, %7647
  %7649 = fmul fast float %7605, %7563
  %7650 = fmul fast float %7606, %7563
  %7651 = fmul fast float %7607, %7563
  %7652 = fsub fast float 1.000000e+00, %7530
  %7653 = bitcast float %7652 to i32
  %7654 = sitofp i32 %7653 to float
  %7655 = fmul fast float %7654, 5.000000e+00
  %7656 = fadd fast float %7655, 0xC1EFBF8940000000
  %7657 = fptosi float %7656 to i32
  %7658 = bitcast i32 %7657 to float
  %7659 = fmul fast float %7658, %4034
  %7660 = fmul fast float %7648, %7659
  %7661 = fmul fast float %7660, %5947
  %7662 = fmul fast float %7660, %5948
  %7663 = fmul fast float %7660, %5949
  %7664 = fadd fast float %7661, %7649
  %7665 = fadd fast float %7662, %7650
  %7666 = fadd fast float %7663, %7651
  %7667 = fmul fast float %7535, %7518
  %7668 = fmul fast float %7667, %7648
  %7669 = fmul fast float %7535, %7519
  %7670 = fmul fast float %7669, %7648
  %7671 = fmul fast float %7535, %7520
  %7672 = fmul fast float %7671, %7648
  %7673 = fmul fast float %7667, %7664
  %7674 = fmul fast float %7669, %7665
  %7675 = fmul fast float %7671, %7666
  %7676 = fadd fast float %7668, %5931
  %7677 = fmul fast float %7676, %4030
  %7678 = fadd fast float %7670, %5932
  %7679 = fmul fast float %7678, %4030
  %7680 = fadd fast float %7672, %5933
  %7681 = fmul fast float %7680, %4030
  %7682 = fadd fast float %7673, %5974
  %7683 = fmul fast float %7682, %4030
  %7684 = fadd fast float %7674, %5977
  %7685 = fmul fast float %7684, %4030
  %7686 = fadd fast float %7675, %5980
  %7687 = fmul fast float %7686, %4030
  br label %7688

; <label>:7688                                    ; preds = %7642, %7436, %5927
  %7689 = phi float [ %5975, %5927 ], [ %5975, %7436 ], [ %7683, %7642 ]
  %7690 = phi float [ %5978, %5927 ], [ %5978, %7436 ], [ %7685, %7642 ]
  %7691 = phi float [ %5981, %5927 ], [ %5981, %7436 ], [ %7687, %7642 ]
  %7692 = phi float [ %5970, %5927 ], [ %5970, %7436 ], [ %7677, %7642 ]
  %7693 = phi float [ %5971, %5927 ], [ %5971, %7436 ], [ %7679, %7642 ]
  %7694 = phi float [ %5972, %5927 ], [ %5972, %7436 ], [ %7681, %7642 ]
  %7695 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7696 = extractvalue %dx.types.CBufRet.i32 %7695, 0
  %7697 = icmp eq i32 %7696, 0
  br i1 %7697, label %8360, label %7698

; <label>:7698                                    ; preds = %7688
  %7699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7700 = extractvalue %dx.types.CBufRet.f32 %7699, 2
  %7701 = extractvalue %dx.types.CBufRet.f32 %7699, 3
  %7702 = fmul fast float %7700, %116
  %7703 = fmul fast float %7701, %117
  %7704 = fptoui float %7702 to i32
  %7705 = fptoui float %7703 to i32
  %7706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7707 = extractvalue %dx.types.CBufRet.f32 %7706, 0
  %7708 = extractvalue %dx.types.CBufRet.f32 %7706, 2
  %7709 = extractvalue %dx.types.CBufRet.f32 %7706, 3
  %7710 = fadd fast float %103, -4.000000e+00
  %7711 = call float @dx.op.binary.f32(i32 35, float %7710, float 0.000000e+00)  ; FMax(a,b)
  %7712 = fadd fast float %7711, %7707
  %7713 = fmul fast float %7712, %7708
  %7714 = call float @dx.op.unary.f32(i32 23, float %7713)  ; Log(value)
  %7715 = fmul fast float %7714, %7709
  %7716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7717 = extractvalue %dx.types.CBufRet.f32 %7716, 2
  %7718 = fmul fast float %7715, %7717
  %7719 = call float @dx.op.unary.f32(i32 7, float %7718)  ; Saturate(value)
  %7720 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7721 = extractvalue %dx.types.CBufRet.i32 %7720, 1
  %7722 = add i32 %7721, -1
  %7723 = uitofp i32 %7721 to float
  %7724 = fmul fast float %7723, %7719
  %7725 = fptoui float %7724 to i32
  %7726 = call i32 @dx.op.binary.i32(i32 40, i32 %7725, i32 %7722)  ; UMin(a,b)
  %7727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7728 = extractvalue %dx.types.CBufRet.i32 %7727, 2
  %7729 = extractvalue %dx.types.CBufRet.i32 %7727, 3
  %7730 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7705, i32 %7728, i32 %7704)  ; UMad(a,b,c)
  %7731 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7726, i32 %7729, i32 %7730)  ; UMad(a,b,c)
  %7732 = add nsw i32 %7696, -1
  %7733 = call i32 @dx.op.binary.i32(i32 37, i32 %7732, i32 0)  ; IMax(a,b)
  %7734 = call float @dx.op.binary.f32(i32 35, float %103, float 0.000000e+00)  ; FMax(a,b)
  %7735 = fptoui float %7734 to i32
  %7736 = lshr i32 %7735, 5
  %7737 = call i32 @dx.op.binary.i32(i32 40, i32 %7736, i32 8191)  ; UMin(a,b)
  %7738 = shl i32 %7737, 2
  %7739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7738, i32 undef)  ; BufferLoad(srv,index,wot)
  %7740 = extractvalue %dx.types.ResRet.i32 %7739, 0
  %7741 = lshr i32 %7740, 16
  %7742 = and i32 %7740, 65535
  %7743 = lshr i32 %7740, 21
  %7744 = lshr i32 %7742, 5
  %7745 = call i32 @dx.op.binary.i32(i32 40, i32 %7744, i32 %7733)  ; UMin(a,b)
  %7746 = icmp ugt i32 %7743, %7745
  br i1 %7746, label %8360, label %7747

; <label>:7747                                    ; preds = %7698
  br label %7748

; <label>:7748                                    ; preds = %8350, %7747
  %7749 = phi i32 [ %8357, %8350 ], [ %7743, %7747 ]
  %7750 = phi float [ %8351, %8350 ], [ %7689, %7747 ]
  %7751 = phi float [ %8352, %8350 ], [ %7690, %7747 ]
  %7752 = phi float [ %8353, %8350 ], [ %7691, %7747 ]
  %7753 = phi float [ %8354, %8350 ], [ %7692, %7747 ]
  %7754 = phi float [ %8355, %8350 ], [ %7693, %7747 ]
  %7755 = phi float [ %8356, %8350 ], [ %7694, %7747 ]
  %7756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7757 = extractvalue %dx.types.CBufRet.i32 %7756, 0
  %7758 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7731, i32 %7757, i32 %7749)  ; UMad(a,b,c)
  %7759 = shl i32 %7758, 2
  %7760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7759, i32 undef)  ; BufferLoad(srv,index,wot)
  %7761 = extractvalue %dx.types.ResRet.i32 %7760, 0
  %7762 = shl i32 %7749, 5
  %7763 = sub nsw i32 %7741, %7762
  %7764 = call i32 @dx.op.binary.i32(i32 37, i32 %7763, i32 0)  ; IMax(a,b)
  %7765 = call i32 @dx.op.binary.i32(i32 38, i32 %7764, i32 31)  ; IMin(a,b)
  %7766 = sub nsw i32 1, %7741
  %7767 = add nsw i32 %7766, %7742
  %7768 = call i32 @dx.op.binary.i32(i32 37, i32 %7767, i32 0)  ; IMax(a,b)
  %7769 = call i32 @dx.op.binary.i32(i32 38, i32 %7768, i32 32)  ; IMin(a,b)
  %7770 = and i32 %7769, 31
  %7771 = shl i32 -1, %7770
  %7772 = xor i32 %7771, -1
  %7773 = and i32 %7765, 31
  %7774 = shl i32 %7772, %7773
  %7775 = icmp eq i32 %7769, 32
  %7776 = select i1 %7775, i32 -1, i32 %7774
  %7777 = and i32 %7776, %7761
  %7778 = icmp eq i32 %7777, 0
  br i1 %7778, label %8350, label %7779

; <label>:7779                                    ; preds = %7748
  br label %7780

; <label>:7780                                    ; preds = %7914, %7779
  %7781 = phi i32 [ %7792, %7914 ], [ %7777, %7779 ]
  %7782 = phi float [ %7915, %7914 ], [ %7750, %7779 ]
  %7783 = phi float [ %7916, %7914 ], [ %7751, %7779 ]
  %7784 = phi float [ %7917, %7914 ], [ %7752, %7779 ]
  %7785 = phi float [ %7918, %7914 ], [ %7753, %7779 ]
  %7786 = phi float [ %7919, %7914 ], [ %7754, %7779 ]
  %7787 = phi float [ %7920, %7914 ], [ %7755, %7779 ]
  %7788 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7781)  ; FirstbitLo(value)
  %7789 = add i32 %7788, %7762
  %7790 = and i32 %7788, 31
  %7791 = shl i32 1, %7790
  %7792 = xor i32 %7791, %7781
  %7793 = mul i32 %7789, 112
  %7794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7793, i32 undef)  ; BufferLoad(srv,index,wot)
  %7795 = extractvalue %dx.types.ResRet.f32 %7794, 0
  %7796 = extractvalue %dx.types.ResRet.f32 %7794, 1
  %7797 = extractvalue %dx.types.ResRet.f32 %7794, 2
  %7798 = or i32 %7793, 12
  %7799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7798, i32 undef)  ; BufferLoad(srv,index,wot)
  %7800 = extractvalue %dx.types.ResRet.f32 %7799, 0
  %7801 = add i32 %7793, 16
  %7802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7801, i32 undef)  ; BufferLoad(srv,index,wot)
  %7803 = extractvalue %dx.types.ResRet.f32 %7802, 0
  %7804 = extractvalue %dx.types.ResRet.f32 %7802, 1
  %7805 = extractvalue %dx.types.ResRet.f32 %7802, 2
  %7806 = add i32 %7793, 28
  %7807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7806, i32 undef)  ; BufferLoad(srv,index,wot)
  %7808 = extractvalue %dx.types.ResRet.i32 %7807, 0
  %7809 = add i32 %7793, 44
  %7810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7809, i32 undef)  ; BufferLoad(srv,index,wot)
  %7811 = extractvalue %dx.types.ResRet.f32 %7810, 0
  %7812 = add i32 %7793, 48
  %7813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7812, i32 undef)  ; BufferLoad(srv,index,wot)
  %7814 = extractvalue %dx.types.ResRet.f32 %7813, 0
  %7815 = extractvalue %dx.types.ResRet.f32 %7813, 1
  %7816 = extractvalue %dx.types.ResRet.f32 %7813, 2
  %7817 = extractvalue %dx.types.ResRet.f32 %7813, 3
  %7818 = add i32 %7793, 64
  %7819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7818, i32 undef)  ; BufferLoad(srv,index,wot)
  %7820 = extractvalue %dx.types.ResRet.f32 %7819, 0
  %7821 = extractvalue %dx.types.ResRet.f32 %7819, 1
  %7822 = extractvalue %dx.types.ResRet.f32 %7819, 2
  %7823 = extractvalue %dx.types.ResRet.f32 %7819, 3
  %7824 = add i32 %7793, 80
  %7825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7824, i32 undef)  ; BufferLoad(srv,index,wot)
  %7826 = extractvalue %dx.types.ResRet.f32 %7825, 1
  %7827 = extractvalue %dx.types.ResRet.f32 %7825, 2
  %7828 = add i32 %7793, 92
  %7829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7828, i32 undef)  ; BufferLoad(srv,index,wot)
  %7830 = extractvalue %dx.types.ResRet.i32 %7829, 0
  %7831 = call float @dx.op.dot3.f32(i32 55, float %7795, float %7796, float %7797, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7832 = select i1 %262, float %7826, float %7795
  %7833 = select i1 %262, float %7831, float %7796
  %7834 = select i1 %262, float %7827, float %7797
  %7835 = and i32 %7830, 65535
  %7836 = uitofp i32 %7835 to float
  %7837 = lshr i32 %7830, 16
  %7838 = uitofp i32 %7837 to float
  %7839 = and i32 %7808, 65535
  %7840 = and i32 %7808, 50331648
  %7841 = icmp eq i32 %7840, 33554432
  %7842 = fsub fast float %7814, %203
  %7843 = fsub fast float %7815, %204
  %7844 = fsub fast float %7816, %205
  %7845 = call float @dx.op.dot3.f32(i32 55, float %7842, float %7843, float %7844, float %7842, float %7843, float %7844)  ; Dot3(ax,ay,az,bx,by,bz)
  %7846 = call float @dx.op.unary.f32(i32 24, float %7845)  ; Sqrt(value)
  %7847 = fdiv fast float 1.000000e+00, %7846
  %7848 = fmul fast float %7847, %7842
  %7849 = fmul fast float %7847, %7843
  %7850 = fmul fast float %7847, %7844
  %7851 = fadd fast float %7846, %7800
  %7852 = fdiv fast float 1.000000e+00, %7851
  %7853 = fmul float %7811, %7852
  %7854 = fmul float %7853, %7853
  %7855 = call float @dx.op.unary.f32(i32 7, float %7854)  ; Saturate(value)
  br i1 %7841, label %7856, label %7877

; <label>:7856                                    ; preds = %7780
  %7857 = fmul fast float %7822, %7803
  %7858 = fmul fast float %7822, %7804
  %7859 = fmul fast float %7822, %7805
  %7860 = fadd fast float %7842, %7857
  %7861 = fadd fast float %7843, %7858
  %7862 = fadd fast float %7844, %7859
  %7863 = call float @dx.op.dot3.f32(i32 55, float %7860, float %7861, float %7862, float %7860, float %7861, float %7862)  ; Dot3(ax,ay,az,bx,by,bz)
  %7864 = call float @dx.op.unary.f32(i32 25, float %7863)  ; Rsqrt(value)
  %7865 = fmul fast float %7864, %7860
  %7866 = fmul fast float %7864, %7861
  %7867 = fmul fast float %7864, %7862
  %7868 = fsub fast float %203, %7814
  %7869 = fsub fast float %204, %7815
  %7870 = fsub fast float %205, %7816
  %7871 = fsub fast float -0.000000e+00, %7868
  %7872 = fsub fast float -0.000000e+00, %7869
  %7873 = fsub fast float -0.000000e+00, %7870
  %7874 = call float @dx.op.dot3.f32(i32 55, float %7871, float %7872, float %7873, float %7803, float %7804, float %7805)  ; Dot3(ax,ay,az,bx,by,bz)
  %7875 = fcmp fast ogt float %7874, 0.000000e+00
  %7876 = uitofp i1 %7875 to float
  br label %7877

; <label>:7877                                    ; preds = %7856, %7780
  %7878 = phi float [ %7876, %7856 ], [ 1.000000e+00, %7780 ]
  %7879 = phi float [ %7865, %7856 ], [ %7848, %7780 ]
  %7880 = phi float [ %7866, %7856 ], [ %7849, %7780 ]
  %7881 = phi float [ %7867, %7856 ], [ %7850, %7780 ]
  %7882 = call float @dx.op.dot3.f32(i32 55, float %7803, float %7804, float %7805, float %7879, float %7880, float %7881)  ; Dot3(ax,ay,az,bx,by,bz)
  %7883 = fmul fast float %7882, %7882
  %7884 = call float @dx.op.unary.f32(i32 7, float %7883)  ; Saturate(value)
  %7885 = fsub fast float 1.000000e+00, %7884
  %7886 = fmul fast float %7885, 5.000000e-01
  %7887 = fcmp fast ogt float %7882, 0.000000e+00
  %7888 = fsub fast float 1.000000e+00, %7886
  %7889 = select i1 %7887, float %7886, float %7888
  %7890 = fmul fast float %7889, %7838
  %7891 = fadd fast float %7890, %7836
  %7892 = fmul fast float %7891, 0x3EF0001000000000
  %7893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %55, float %7892, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7894 = extractvalue %dx.types.ResRet.f32 %7893, 0
  %7895 = fmul fast float %7882, %7820
  %7896 = fadd fast float %7895, %7821
  %7897 = call float @dx.op.unary.f32(i32 7, float %7896)  ; Saturate(value)
  %7898 = select i1 %7841, float 1.000000e+00, float %7897
  %7899 = select i1 %7841, float %7897, float 1.000000e+00
  %7900 = fmul fast float %7846, %7817
  %7901 = fsub fast float 1.000000e+00, %7900
  %7902 = fmul fast float %7901, %7823
  %7903 = call float @dx.op.unary.f32(i32 7, float %7902)  ; Saturate(value)
  %7904 = fmul fast float %7903, %7899
  %7905 = fmul fast float %7904, 2.000000e+00
  %7906 = fsub fast float 3.000000e+00, %7905
  %7907 = fmul fast float %7894, %7878
  %7908 = fmul fast float %7904, %7904
  %7909 = fmul fast float %7908, %7907
  %7910 = fmul fast float %7909, %7906
  %7911 = call float @dx.op.binary.f32(i32 36, float %7910, float %7910)  ; FMin(a,b)
  %7912 = call float @dx.op.binary.f32(i32 36, float %7910, float %7911)  ; FMin(a,b)
  %7913 = fcmp fast ogt float %7912, 0.000000e+00
  br i1 %7913, label %7922, label %7914, !dx.controlflow.hints !136

; <label>:7914                                    ; preds = %8306, %8068, %7877
  %7915 = phi float [ %7782, %8068 ], [ %7782, %7877 ], [ %8346, %8306 ]
  %7916 = phi float [ %7783, %8068 ], [ %7783, %7877 ], [ %8347, %8306 ]
  %7917 = phi float [ %7784, %8068 ], [ %7784, %7877 ], [ %8348, %8306 ]
  %7918 = phi float [ %7785, %8068 ], [ %7785, %7877 ], [ %8340, %8306 ]
  %7919 = phi float [ %7786, %8068 ], [ %7786, %7877 ], [ %8341, %8306 ]
  %7920 = phi float [ %7787, %8068 ], [ %7787, %7877 ], [ %8342, %8306 ]
  %7921 = icmp eq i32 %7781, %7791
  br i1 %7921, label %8349, label %7780

; <label>:7922                                    ; preds = %7877
  %7923 = icmp eq i32 %7839, 255
  br i1 %7923, label %8068, label %7924, !dx.controlflow.hints !137

; <label>:7924                                    ; preds = %7922
  %7925 = mul nuw nsw i32 %7839, 176
  %7926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7925, i32 undef)  ; BufferLoad(srv,index,wot)
  %7927 = extractvalue %dx.types.ResRet.f32 %7926, 0
  %7928 = extractvalue %dx.types.ResRet.f32 %7926, 1
  %7929 = extractvalue %dx.types.ResRet.f32 %7926, 2
  %7930 = extractvalue %dx.types.ResRet.f32 %7926, 3
  %7931 = add nuw nsw i32 %7925, 16
  %7932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7931, i32 undef)  ; BufferLoad(srv,index,wot)
  %7933 = extractvalue %dx.types.ResRet.f32 %7932, 0
  %7934 = extractvalue %dx.types.ResRet.f32 %7932, 1
  %7935 = add nuw nsw i32 %7925, 32
  %7936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7935, i32 undef)  ; BufferLoad(srv,index,wot)
  %7937 = extractvalue %dx.types.ResRet.f32 %7936, 0
  %7938 = extractvalue %dx.types.ResRet.f32 %7936, 1
  %7939 = extractvalue %dx.types.ResRet.f32 %7936, 2
  %7940 = add nuw nsw i32 %7925, 48
  %7941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7940, i32 undef)  ; BufferLoad(srv,index,wot)
  %7942 = extractvalue %dx.types.ResRet.f32 %7941, 0
  %7943 = extractvalue %dx.types.ResRet.f32 %7941, 1
  %7944 = extractvalue %dx.types.ResRet.f32 %7941, 2
  %7945 = extractvalue %dx.types.ResRet.f32 %7941, 3
  %7946 = add nuw nsw i32 %7925, 64
  %7947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7946, i32 undef)  ; BufferLoad(srv,index,wot)
  %7948 = extractvalue %dx.types.ResRet.f32 %7947, 0
  %7949 = extractvalue %dx.types.ResRet.f32 %7947, 1
  %7950 = extractvalue %dx.types.ResRet.f32 %7947, 2
  %7951 = extractvalue %dx.types.ResRet.f32 %7947, 3
  %7952 = add nuw nsw i32 %7925, 80
  %7953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7952, i32 undef)  ; BufferLoad(srv,index,wot)
  %7954 = extractvalue %dx.types.ResRet.f32 %7953, 0
  %7955 = extractvalue %dx.types.ResRet.f32 %7953, 1
  %7956 = extractvalue %dx.types.ResRet.f32 %7953, 2
  %7957 = extractvalue %dx.types.ResRet.f32 %7953, 3
  %7958 = add nuw nsw i32 %7925, 96
  %7959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7958, i32 undef)  ; BufferLoad(srv,index,wot)
  %7960 = extractvalue %dx.types.ResRet.f32 %7959, 0
  %7961 = extractvalue %dx.types.ResRet.f32 %7959, 1
  %7962 = extractvalue %dx.types.ResRet.f32 %7959, 2
  %7963 = extractvalue %dx.types.ResRet.f32 %7959, 3
  %7964 = bitcast float %7934 to i32
  %7965 = fmul fast float %7939, %123
  %7966 = fmul fast float %7939, %124
  %7967 = fmul fast float %7939, %125
  %7968 = fadd fast float %7965, %203
  %7969 = fadd fast float %7966, %204
  %7970 = fadd fast float %7967, %205
  %7971 = fmul fast float %7968, %7942
  %7972 = call float @dx.op.tertiary.f32(i32 46, float %7969, float %7948, float %7971)  ; FMad(a,b,c)
  %7973 = call float @dx.op.tertiary.f32(i32 46, float %7970, float %7954, float %7972)  ; FMad(a,b,c)
  %7974 = fadd fast float %7973, %7960
  %7975 = fmul fast float %7968, %7943
  %7976 = call float @dx.op.tertiary.f32(i32 46, float %7969, float %7949, float %7975)  ; FMad(a,b,c)
  %7977 = call float @dx.op.tertiary.f32(i32 46, float %7970, float %7955, float %7976)  ; FMad(a,b,c)
  %7978 = fadd fast float %7977, %7961
  %7979 = fmul fast float %7968, %7944
  %7980 = call float @dx.op.tertiary.f32(i32 46, float %7969, float %7950, float %7979)  ; FMad(a,b,c)
  %7981 = call float @dx.op.tertiary.f32(i32 46, float %7970, float %7956, float %7980)  ; FMad(a,b,c)
  %7982 = fadd fast float %7981, %7962
  %7983 = fmul fast float %7968, %7945
  %7984 = call float @dx.op.tertiary.f32(i32 46, float %7969, float %7951, float %7983)  ; FMad(a,b,c)
  %7985 = call float @dx.op.tertiary.f32(i32 46, float %7970, float %7957, float %7984)  ; FMad(a,b,c)
  %7986 = fadd fast float %7985, %7963
  %7987 = fdiv fast float %7974, %7986
  %7988 = fdiv fast float %7978, %7986
  %7989 = fdiv fast float %7982, %7986
  %7990 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7989)  ; FMax(a,b)
  %7991 = fmul fast float %273, 0x401921FB60000000
  %7992 = call float @dx.op.unary.f32(i32 13, float %7991)  ; Sin(value)
  %7993 = call float @dx.op.unary.f32(i32 12, float %7991)  ; Cos(value)
  %7994 = fmul fast float %7993, %7938
  %7995 = call float @dx.op.tertiary.f32(i32 46, float %7992, float %7938, float 0.000000e+00)  ; FMad(a,b,c)
  %7996 = fmul fast float %7938, %7992
  %7997 = fsub fast float -0.000000e+00, %7996
  %7998 = call float @dx.op.tertiary.f32(i32 46, float %7993, float %7938, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7999

; <label>:7999                                    ; preds = %7999, %7924
  %8000 = phi float [ 0.000000e+00, %7924 ], [ %8032, %7999 ]
  %8001 = phi float [ 0.000000e+00, %7924 ], [ %8034, %7999 ]
  %8002 = phi i32 [ 0, %7924 ], [ %8035, %7999 ]
  %8003 = mul i32 %8002, 2
  %8004 = add i32 0, %8003
  %8005 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8004
  %8006 = load float, float* %8005, align 4
  %8007 = mul i32 %8002, 2
  %8008 = add i32 1, %8007
  %8009 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8008
  %8010 = load float, float* %8009, align 4
  %8011 = fmul fast float %7994, %8006
  %8012 = call float @dx.op.tertiary.f32(i32 46, float %8010, float %7997, float %8011)  ; FMad(a,b,c)
  %8013 = fmul fast float %8006, %7995
  %8014 = call float @dx.op.tertiary.f32(i32 46, float %8010, float %7998, float %8013)  ; FMad(a,b,c)
  %8015 = fadd fast float %8012, %7987
  %8016 = fadd fast float %8014, %7988
  %8017 = fmul fast float %8015, %7933
  %8018 = fmul fast float %8016, %7933
  %8019 = call float @dx.op.binary.f32(i32 35, float %8017, float %7929)  ; FMax(a,b)
  %8020 = call float @dx.op.binary.f32(i32 35, float %8018, float %7929)  ; FMax(a,b)
  %8021 = call float @dx.op.binary.f32(i32 36, float %8019, float %7930)  ; FMin(a,b)
  %8022 = call float @dx.op.binary.f32(i32 36, float %8020, float %7930)  ; FMin(a,b)
  %8023 = fadd fast float %8021, %7927
  %8024 = fadd fast float %8022, %7928
  %8025 = uitofp i32 %7964 to float
  %8026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %8023, float %8024, float %8025, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8027 = extractvalue %dx.types.ResRet.f32 %8026, 0
  %8028 = fsub fast float %8027, %7990
  %8029 = fsub fast float %8028, %7937
  %8030 = fcmp fast ogt float %8029, 0.000000e+00
  %8031 = select i1 %8030, float 1.000000e+00, float 0.000000e+00
  %8032 = fadd fast float %8031, %8000
  %8033 = select i1 %8030, float %8029, float 0.000000e+00
  %8034 = fadd fast float %8033, %8001
  %8035 = add nuw nsw i32 %8002, 1
  %8036 = icmp eq i32 %8035, 8
  br i1 %8036, label %8037, label %7999

; <label>:8037                                    ; preds = %7999
  %8038 = fdiv fast float 1.000000e+00, %8032
  %8039 = fmul fast float %8038, %8034
  %8040 = fdiv fast float 1.000000e+00, %7990
  %8041 = fmul fast float %8039, %8040
  %8042 = call float @dx.op.unary.f32(i32 7, float %8041)  ; Saturate(value)
  %8043 = call float @dx.op.binary.f32(i32 35, float %8042, float 0.000000e+00)  ; FMax(a,b)
  %8044 = fmul fast float %8032, 1.250000e-01
  %8045 = call float @dx.op.unary.f32(i32 7, float %8044)  ; Saturate(value)
  %8046 = fmul fast float %8045, 2.000000e+00
  %8047 = fadd fast float %8046, -1.000000e+00
  %8048 = fcmp fast ogt float %8047, 0.000000e+00
  %8049 = fcmp fast olt float %8047, 0.000000e+00
  %8050 = zext i1 %8048 to i32
  %8051 = zext i1 %8049 to i32
  %8052 = sub nsw i32 %8050, %8051
  %8053 = sitofp i32 %8052 to float
  %8054 = fmul fast float %8053, %8047
  %8055 = fsub fast float 1.000000e+00, %8054
  %8056 = fmul fast float %8055, %8055
  %8057 = fmul fast float %8056, %8055
  %8058 = fsub fast float %8055, %8057
  %8059 = fmul fast float %8058, %8043
  %8060 = fsub fast float 1.000000e+00, %8057
  %8061 = fsub fast float %8060, %8059
  %8062 = fmul fast float %8053, 5.000000e-01
  %8063 = fmul fast float %8062, %8061
  %8064 = fsub fast float -5.000000e-01, %8063
  %8065 = fmul fast float %8064, %7898
  %8066 = fadd fast float %8065, 1.000000e+00
  %8067 = fmul fast float %8066, %7910
  br label %8068

; <label>:8068                                    ; preds = %8037, %7922
  %8069 = phi float [ %8067, %8037 ], [ %7910, %7922 ]
  %8070 = call float @dx.op.binary.f32(i32 36, float %8069, float %8069)  ; FMin(a,b)
  %8071 = call float @dx.op.binary.f32(i32 36, float %8069, float %8070)  ; FMin(a,b)
  %8072 = fcmp fast ogt float %8071, 0.000000e+00
  br i1 %8072, label %8073, label %7914, !dx.controlflow.hints !138

; <label>:8073                                    ; preds = %8068
  %8074 = fmul fast float %8069, %7832
  %8075 = fmul fast float %8069, %7833
  %8076 = fmul fast float %8069, %7834
  %8077 = fsub fast float %7816, %4434
  %8078 = fcmp fast ogt float %8077, 0.000000e+00
  %8079 = fsub fast float %205, %4434
  %8080 = fcmp fast ogt float %8079, 0.000000e+00
  %8081 = xor i1 %8080, %8078
  %8082 = fsub fast float %4434, %7816
  %8083 = fmul fast float %8082, 2.000000e+00
  %8084 = fadd fast float %8083, %7816
  %8085 = select i1 %8081, float %7816, float %8084
  %8086 = fsub fast float %8085, %205
  %8087 = call float @dx.op.dot3.f32(i32 55, float %7842, float %7843, float %8086, float %7842, float %7843, float %8086)  ; Dot3(ax,ay,az,bx,by,bz)
  %8088 = call float @dx.op.unary.f32(i32 25, float %8087)  ; Rsqrt(value)
  %8089 = fmul fast float %8088, %7842
  %8090 = fmul fast float %8088, %7843
  %8091 = fmul fast float %8088, %8086
  %8092 = fsub fast float %4434, %205
  %8093 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8092)  ; Dot3(ax,ay,az,bx,by,bz)
  %8094 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8089, float %8090, float %8091)  ; Dot3(ax,ay,az,bx,by,bz)
  %8095 = fdiv fast float 1.000000e+00, %8094
  %8096 = fmul fast float %8095, %8093
  %8097 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8079, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8098 = fcmp fast ogt float %8097, 0.000000e+00
  %8099 = fcmp fast olt float %8097, 0.000000e+00
  %8100 = zext i1 %8098 to i32
  %8101 = zext i1 %8099 to i32
  %8102 = sub nsw i32 %8100, %8101
  %8103 = sitofp i32 %8102 to float
  %8104 = fsub fast float %8085, %4434
  %8105 = call float @dx.op.dot3.f32(i32 55, float %7842, float %7843, float %8104, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8106 = fcmp fast ogt float %8105, 0.000000e+00
  %8107 = fcmp fast olt float %8105, 0.000000e+00
  %8108 = zext i1 %8106 to i32
  %8109 = zext i1 %8107 to i32
  %8110 = sub nsw i32 %8108, %8109
  %8111 = sitofp i32 %8110 to float
  %8112 = fcmp fast une float %8103, %8111
  br i1 %8112, label %8113, label %8123

; <label>:8113                                    ; preds = %8073
  %8114 = fmul fast float %8096, %8091
  %8115 = fmul fast float %8096, %8090
  %8116 = fmul fast float %8096, %8089
  %8117 = fmul fast float %8116, %8116
  %8118 = fmul fast float %8115, %8115
  %8119 = fadd fast float %8117, %8118
  %8120 = fmul fast float %8114, %8114
  %8121 = fadd fast float %8119, %8120
  %8122 = call float @dx.op.unary.f32(i32 24, float %8121)  ; Sqrt(value)
  br label %8135

; <label>:8123                                    ; preds = %8073
  %8124 = icmp slt i32 %8102, 0
  br i1 %8124, label %8125, label %8135

; <label>:8125                                    ; preds = %8123
  %8126 = fsub fast float %203, %7814
  %8127 = fsub fast float %204, %7815
  %8128 = fsub fast float %205, %8085
  %8129 = fmul fast float %8126, %8126
  %8130 = fmul fast float %8127, %8127
  %8131 = fadd fast float %8129, %8130
  %8132 = fmul fast float %8128, %8128
  %8133 = fadd fast float %8131, %8132
  %8134 = call float @dx.op.unary.f32(i32 24, float %8133)  ; Sqrt(value)
  br label %8135

; <label>:8135                                    ; preds = %8125, %8123, %8113
  %8136 = phi float [ %8122, %8113 ], [ %8134, %8125 ], [ 0.000000e+00, %8123 ]
  %8137 = and i1 %8080, %8078
  %8138 = fsub fast float -0.000000e+00, %8136
  %8139 = select i1 %8137, float -0.000000e+00, float %8138
  %8140 = fmul fast float %4435, 0x3FF7154760000000
  %8141 = fmul fast float %8140, %8139
  %8142 = fmul fast float %4436, 0x3FF7154760000000
  %8143 = fmul fast float %8142, %8139
  %8144 = fmul fast float %4437, 0x3FF7154760000000
  %8145 = fmul fast float %8144, %8139
  %8146 = call float @dx.op.unary.f32(i32 21, float %8141)  ; Exp(value)
  %8147 = call float @dx.op.unary.f32(i32 21, float %8143)  ; Exp(value)
  %8148 = call float @dx.op.unary.f32(i32 21, float %8145)  ; Exp(value)
  %8149 = call float @dx.op.unary.f32(i32 7, float %8146)  ; Saturate(value)
  %8150 = call float @dx.op.unary.f32(i32 7, float %8147)  ; Saturate(value)
  %8151 = call float @dx.op.unary.f32(i32 7, float %8148)  ; Saturate(value)
  %8152 = fmul fast float %8074, %8149
  %8153 = fmul fast float %8075, %8150
  %8154 = fmul fast float %8076, %8151
  %8155 = fsub fast float %7848, %5260
  %8156 = fsub fast float %7849, %5261
  %8157 = fsub fast float %7850, %5262
  %8158 = call float @dx.op.dot3.f32(i32 55, float %8155, float %8156, float %8157, float %8155, float %8156, float %8157)  ; Dot3(ax,ay,az,bx,by,bz)
  %8159 = call float @dx.op.unary.f32(i32 25, float %8158)  ; Rsqrt(value)
  %8160 = fmul fast float %8159, %8155
  %8161 = fmul fast float %8159, %8156
  %8162 = fmul fast float %8159, %8157
  %8163 = call float @dx.op.dot3.f32(i32 55, float %7848, float %7849, float %7850, float %5220, float %5221, float %5222)  ; Dot3(ax,ay,az,bx,by,bz)
  %8164 = call float @dx.op.dot3.f32(i32 55, float %5263, float %5264, float %5265, float %8160, float %8161, float %8162)  ; Dot3(ax,ay,az,bx,by,bz)
  %8165 = call float @dx.op.unary.f32(i32 7, float %8163)  ; Saturate(value)
  %8166 = fmul fast float %8165, %7855
  %8167 = fmul fast float %8165, %8165
  %8168 = fmul fast float %8167, %5293
  %8169 = call float @dx.op.unary.f32(i32 7, float %8168)  ; Saturate(value)
  %8170 = fmul fast float %8166, %8169
  %8171 = bitcast float %7845 to i32
  %8172 = ashr i32 %8171, 1
  %8173 = sub nsw i32 1597463007, %8172
  %8174 = bitcast i32 %8173 to float
  %8175 = fmul fast float %8174, %7842
  %8176 = fmul fast float %8174, %7843
  %8177 = fmul fast float %8174, %7844
  %8178 = fsub fast float %8175, %5260
  %8179 = fsub fast float %8176, %5261
  %8180 = fsub fast float %8177, %5262
  %8181 = call float @dx.op.dot3.f32(i32 55, float %8178, float %8179, float %8180, float %8178, float %8179, float %8180)  ; Dot3(ax,ay,az,bx,by,bz)
  %8182 = call float @dx.op.unary.f32(i32 25, float %8181)  ; Rsqrt(value)
  %8183 = fmul fast float %8178, %8182
  %8184 = fmul fast float %8179, %8182
  %8185 = fmul fast float %8180, %8182
  %8186 = call float @dx.op.dot3.f32(i32 55, float %5220, float %5221, float %5222, float %8183, float %8184, float %8185)  ; Dot3(ax,ay,az,bx,by,bz)
  %8187 = fmul fast float %8186, %8186
  %8188 = call float @dx.op.unary.f32(i32 6, float %8163)  ; FAbs(value)
  %8189 = fsub fast float 1.000000e+00, %5286
  %8190 = fmul fast float %5268, %5268
  %8191 = fmul fast float %8190, %8189
  %8192 = fadd fast float %8191, %5286
  %8193 = bitcast float %8192 to i32
  %8194 = ashr i32 %8193, 1
  %8195 = add nsw i32 %8194, 532487669
  %8196 = bitcast i32 %8195 to float
  %8197 = fadd fast float %8196, %5268
  %8198 = fmul fast float %5286, %8187
  %8199 = fsub fast float 1.000000e+00, %8187
  %8200 = fadd fast float %8199, %8198
  %8201 = fmul fast float %8188, %8188
  %8202 = fmul fast float %8201, %8189
  %8203 = fadd fast float %8202, %5286
  %8204 = bitcast float %8203 to i32
  %8205 = ashr i32 %8204, 1
  %8206 = add nsw i32 %8205, 532487669
  %8207 = bitcast i32 %8206 to float
  %8208 = fadd fast float %8207, %8188
  %8209 = fmul fast float %8200, %8200
  %8210 = fmul fast float %8209, %8197
  %8211 = fmul fast float %8210, %8208
  %8212 = fdiv fast float 1.000000e+00, %8211
  %8213 = bitcast float %5286 to i32
  %8214 = sitofp i32 %8213 to float
  %8215 = fmul fast float %8214, 0x3FE7F73180000000
  %8216 = fadd fast float %8215, 0x41AFE27C40000000
  %8217 = fptosi float %8216 to i32
  %8218 = bitcast i32 %8217 to float
  %8219 = fmul fast float %7811, 0x3FD80E9D60000000
  %8220 = fmul fast float %8219, %8174
  %8221 = fadd fast float %8218, %8220
  %8222 = bitcast float %8221 to i32
  %8223 = sub nsw i32 2129859010, %8222
  %8224 = bitcast i32 %8223 to float
  %8225 = fmul fast float %5286, %8212
  %8226 = fmul fast float %8225, %8218
  %8227 = fmul fast float %8226, %8224
  %8228 = call float @dx.op.unary.f32(i32 6, float %8164)  ; FAbs(value)
  %8229 = fsub fast float 1.000000e+00, %8228
  %8230 = bitcast float %8229 to i32
  %8231 = sitofp i32 %8230 to float
  %8232 = fmul fast float %8231, 5.000000e+00
  %8233 = fadd fast float %8232, 0xC1EFBF8940000000
  %8234 = fptosi float %8233 to i32
  %8235 = bitcast i32 %8234 to float
  %8236 = fsub fast float 1.000000e+00, %5217
  %8237 = fsub fast float 1.000000e+00, %5218
  %8238 = fsub fast float 1.000000e+00, %5266
  %8239 = fmul fast float %8235, %8236
  %8240 = fmul fast float %8235, %8237
  %8241 = fmul fast float %8235, %8238
  %8242 = fadd fast float %8239, %5217
  %8243 = fadd fast float %8240, %5218
  %8244 = fadd fast float %8241, %5266
  br i1 %5405, label %8245, label %8268

; <label>:8245                                    ; preds = %8135
  %8246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4033, float %8228, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8247 = extractvalue %dx.types.ResRet.f32 %8246, 0
  %8248 = extractvalue %dx.types.ResRet.f32 %8246, 1
  %8249 = extractvalue %dx.types.ResRet.f32 %8246, 2
  %8250 = fadd fast float %8247, -5.000000e-01
  %8251 = fadd fast float %8248, -5.000000e-01
  %8252 = fadd fast float %8249, -5.000000e-01
  %8253 = fmul fast float %5217, 4.000000e+00
  %8254 = fmul fast float %8253, %8236
  %8255 = fmul fast float %8254, %8250
  %8256 = fmul fast float %5218, 4.000000e+00
  %8257 = fmul fast float %8256, %8237
  %8258 = fmul fast float %8257, %8251
  %8259 = fmul fast float %5266, 4.000000e+00
  %8260 = fmul fast float %8259, %8238
  %8261 = fmul fast float %8260, %8252
  %8262 = fadd fast float %8255, %8242
  %8263 = fadd fast float %8258, %8243
  %8264 = fadd fast float %8261, %8244
  %8265 = call float @dx.op.unary.f32(i32 7, float %8262)  ; Saturate(value)
  %8266 = call float @dx.op.unary.f32(i32 7, float %8263)  ; Saturate(value)
  %8267 = call float @dx.op.unary.f32(i32 7, float %8264)  ; Saturate(value)
  br label %8268

; <label>:8268                                    ; preds = %8245, %8135
  %8269 = phi float [ %8265, %8245 ], [ %8242, %8135 ]
  %8270 = phi float [ %8266, %8245 ], [ %8243, %8135 ]
  %8271 = phi float [ %8267, %8245 ], [ %8244, %8135 ]
  %8272 = fmul fast float %8163, 9.843750e-01
  %8273 = fadd fast float %8272, 7.812500e-03
  %8274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %8273, float %5395, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8275 = extractvalue %dx.types.ResRet.f32 %8274, 2
  %8276 = extractvalue %dx.types.ResRet.f32 %8274, 3
  %8277 = fmul fast float %8275, %5217
  %8278 = fmul fast float %8275, %5218
  %8279 = fmul fast float %8275, %5266
  %8280 = fadd fast float %8277, %8276
  %8281 = fadd fast float %8278, %8276
  %8282 = fadd fast float %8279, %8276
  br i1 %5405, label %8283, label %8306

; <label>:8283                                    ; preds = %8268
  %8284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %4033, float %8163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8285 = extractvalue %dx.types.ResRet.f32 %8284, 0
  %8286 = extractvalue %dx.types.ResRet.f32 %8284, 1
  %8287 = extractvalue %dx.types.ResRet.f32 %8284, 2
  %8288 = fadd fast float %8285, -5.000000e-01
  %8289 = fadd fast float %8286, -5.000000e-01
  %8290 = fadd fast float %8287, -5.000000e-01
  %8291 = fmul fast float %5217, 4.000000e+00
  %8292 = fmul fast float %8291, %8236
  %8293 = fmul fast float %8292, %8288
  %8294 = fmul fast float %5218, 4.000000e+00
  %8295 = fmul fast float %8294, %8237
  %8296 = fmul fast float %8295, %8289
  %8297 = fmul fast float %5266, 4.000000e+00
  %8298 = fmul fast float %8297, %8238
  %8299 = fmul fast float %8298, %8290
  %8300 = fadd fast float %8293, %8280
  %8301 = fadd fast float %8296, %8281
  %8302 = fadd fast float %8299, %8282
  %8303 = call float @dx.op.unary.f32(i32 7, float %8300)  ; Saturate(value)
  %8304 = call float @dx.op.unary.f32(i32 7, float %8301)  ; Saturate(value)
  %8305 = call float @dx.op.unary.f32(i32 7, float %8302)  ; Saturate(value)
  br label %8306

; <label>:8306                                    ; preds = %8283, %8268
  %8307 = phi float [ %8303, %8283 ], [ %8280, %8268 ]
  %8308 = phi float [ %8304, %8283 ], [ %8281, %8268 ]
  %8309 = phi float [ %8305, %8283 ], [ %8282, %8268 ]
  %8310 = call float @dx.op.binary.f32(i32 35, float %8308, float %8309)  ; FMax(a,b)
  %8311 = call float @dx.op.binary.f32(i32 35, float %8307, float %8310)  ; FMax(a,b)
  %8312 = fsub fast float 1.000000e+00, %8311
  %8313 = fmul fast float %8269, %8227
  %8314 = fmul fast float %8270, %8227
  %8315 = fmul fast float %8271, %8227
  %8316 = fsub fast float 1.000000e+00, %8164
  %8317 = bitcast float %8316 to i32
  %8318 = sitofp i32 %8317 to float
  %8319 = fmul fast float %8318, 5.000000e+00
  %8320 = fadd fast float %8319, 0xC1EFBF8940000000
  %8321 = fptosi float %8320 to i32
  %8322 = bitcast i32 %8321 to float
  %8323 = fmul fast float %8322, %4034
  %8324 = fmul fast float %8312, %8323
  %8325 = fmul fast float %8324, %5947
  %8326 = fmul fast float %8324, %5948
  %8327 = fmul fast float %8324, %5949
  %8328 = fadd fast float %8325, %8313
  %8329 = fadd fast float %8326, %8314
  %8330 = fadd fast float %8327, %8315
  %8331 = fmul fast float %8152, %4030
  %8332 = fmul fast float %8331, %8170
  %8333 = fmul fast float %8332, %8312
  %8334 = fmul fast float %8153, %4030
  %8335 = fmul fast float %8334, %8170
  %8336 = fmul fast float %8335, %8312
  %8337 = fmul fast float %8154, %4030
  %8338 = fmul fast float %8337, %8170
  %8339 = fmul fast float %8338, %8312
  %8340 = fadd fast float %8333, %7785
  %8341 = fadd fast float %8336, %7786
  %8342 = fadd fast float %8339, %7787
  %8343 = fmul fast float %8332, %8328
  %8344 = fmul fast float %8335, %8329
  %8345 = fmul fast float %8338, %8330
  %8346 = fadd fast float %8343, %7782
  %8347 = fadd fast float %8344, %7783
  %8348 = fadd fast float %8345, %7784
  br label %7914

; <label>:8349                                    ; preds = %7914
  br label %8350

; <label>:8350                                    ; preds = %8349, %7748
  %8351 = phi float [ %7750, %7748 ], [ %7915, %8349 ]
  %8352 = phi float [ %7751, %7748 ], [ %7916, %8349 ]
  %8353 = phi float [ %7752, %7748 ], [ %7917, %8349 ]
  %8354 = phi float [ %7753, %7748 ], [ %7918, %8349 ]
  %8355 = phi float [ %7754, %7748 ], [ %7919, %8349 ]
  %8356 = phi float [ %7755, %7748 ], [ %7920, %8349 ]
  %8357 = add i32 %7749, 1
  %8358 = icmp ugt i32 %8357, %7745
  br i1 %8358, label %8359, label %7748

; <label>:8359                                    ; preds = %8350
  br label %8360

; <label>:8360                                    ; preds = %8359, %7698, %7688
  %8361 = phi float [ %7689, %7688 ], [ %7689, %7698 ], [ %8351, %8359 ]
  %8362 = phi float [ %7690, %7688 ], [ %7690, %7698 ], [ %8352, %8359 ]
  %8363 = phi float [ %7691, %7688 ], [ %7691, %7698 ], [ %8353, %8359 ]
  %8364 = phi float [ %7692, %7688 ], [ %7692, %7698 ], [ %8354, %8359 ]
  %8365 = phi float [ %7693, %7688 ], [ %7693, %7698 ], [ %8355, %8359 ]
  %8366 = phi float [ %7694, %7688 ], [ %7694, %7698 ], [ %8356, %8359 ]
  %8367 = fmul fast float %4030, %4030
  %8368 = fsub fast float 1.000000e+00, %8367
  %8369 = call float @dx.op.dot3.f32(i32 55, float %8368, float %8368, float %8368, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8370 = fsub fast float 1.000000e+00, %8369
  %8371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8372 = extractvalue %dx.types.CBufRet.f32 %8371, 0
  %8373 = fmul fast float %8372, %5953
  %8374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8375 = extractvalue %dx.types.CBufRet.f32 %8374, 3
  %8376 = fsub fast float 1.000000e+00, %4037
  %8377 = call float @dx.op.unary.f32(i32 7, float %8376)  ; Saturate(value)
  %8378 = fadd fast float %8366, %4036
  %8379 = fmul fast float %8378, %4037
  %8380 = fmul fast float %8377, %8375
  %8381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8382 = extractvalue %dx.types.CBufRet.f32 %8381, 3
  %8383 = fmul fast float %8364, %5214
  %8384 = fmul fast float %8365, %5215
  %8385 = fmul fast float %8366, %5216
  %8386 = fcmp fast ogt float %103, %225
  %8387 = and i1 %8386, %4440
  %8388 = or i1 %4446, %8387
  %8389 = icmp eq i32 %4439, 2
  %8390 = fcmp fast ole float %103, %225
  %8391 = and i1 %8390, %8389
  %8392 = or i1 %8391, %8388
  br i1 %8387, label %8393, label %8650

; <label>:8393                                    ; preds = %8360
  %8394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8395 = extractvalue %dx.types.CBufRet.f32 %8394, 2
  %8396 = extractvalue %dx.types.CBufRet.f32 %8394, 3
  %8397 = fmul fast float %8395, %116
  %8398 = fmul fast float %8396, %117
  %8399 = call float @dx.op.unary.f32(i32 7, float %8397)  ; Saturate(value)
  %8400 = call float @dx.op.unary.f32(i32 7, float %8398)  ; Saturate(value)
  %8401 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8399, float %8400, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8402 = extractvalue %dx.types.ResRet.f32 %8401, 0
  %8403 = extractvalue %dx.types.ResRet.f32 %8401, 1
  %8404 = extractvalue %dx.types.ResRet.f32 %8401, 2
  %8405 = extractvalue %dx.types.ResRet.f32 %8401, 3
  %8406 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8399, float %8400, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8407 = extractvalue %dx.types.ResRet.f32 %8406, 0
  %8408 = extractvalue %dx.types.ResRet.f32 %8406, 1
  %8409 = extractvalue %dx.types.ResRet.f32 %8406, 2
  %8410 = extractvalue %dx.types.ResRet.f32 %8406, 3
  %8411 = call float @dx.op.binary.f32(i32 35, float %8403, float %8404)  ; FMax(a,b)
  %8412 = call float @dx.op.binary.f32(i32 35, float %8402, float %8411)  ; FMax(a,b)
  %8413 = call float @dx.op.binary.f32(i32 35, float %8412, float %8405)  ; FMax(a,b)
  %8414 = call float @dx.op.binary.f32(i32 36, float %8408, float %8409)  ; FMin(a,b)
  %8415 = call float @dx.op.binary.f32(i32 36, float %8407, float %8414)  ; FMin(a,b)
  %8416 = call float @dx.op.binary.f32(i32 36, float %8415, float %8410)  ; FMin(a,b)
  %8417 = fmul fast float %8413, 2.550000e+02
  %8418 = fadd fast float %8417, 0x3F70101020000000
  %8419 = fptoui float %8418 to i32
  %8420 = fmul fast float %8416, 2.550000e+02
  %8421 = fadd fast float %8420, 0x3F70101020000000
  %8422 = fptoui float %8421 to i32
  %8423 = icmp ult i32 %8419, %8422
  br i1 %8423, label %8424, label %8592

; <label>:8424                                    ; preds = %8393
  %8425 = fcmp fast ogt float %102, 9.843750e-01
  %8426 = fadd fast float %103, -4.000000e+00
  %8427 = select i1 %8425, float -4.000000e+00, float %8426
  %8428 = call float @dx.op.binary.f32(i32 35, float %8427, float 0.000000e+00)  ; FMax(a,b)
  %8429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8430 = extractvalue %dx.types.CBufRet.f32 %8429, 0
  %8431 = fadd fast float %8430, %8428
  %8432 = extractvalue %dx.types.CBufRet.f32 %8429, 2
  %8433 = fmul fast float %8431, %8432
  %8434 = call float @dx.op.unary.f32(i32 23, float %8433)  ; Log(value)
  %8435 = extractvalue %dx.types.CBufRet.f32 %8429, 3
  %8436 = fmul fast float %8435, %8434
  %8437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8438 = extractvalue %dx.types.CBufRet.f32 %8437, 2
  %8439 = fmul fast float %8436, %8438
  %8440 = call float @dx.op.unary.f32(i32 7, float %8439)  ; Saturate(value)
  %8441 = uitofp i32 %8419 to float
  %8442 = uitofp i32 %8422 to float
  %8443 = fadd fast float %8441, 5.000000e-01
  %8444 = fadd fast float %8442, 5.000000e-01
  %8445 = fmul fast float %8438, %8443
  %8446 = fmul fast float %8438, %8444
  %8447 = fadd fast float %8445, 0x3F0FFB4800000000
  %8448 = fadd fast float %8446, 0xBF0FFB4800000000
  %8449 = call float @dx.op.binary.f32(i32 35, float %8440, float %8447)  ; FMax(a,b)
  %8450 = call float @dx.op.binary.f32(i32 36, float %8449, float %8448)  ; FMin(a,b)
  %8451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8452 = extractvalue %dx.types.CBufRet.f32 %8451, 1
  %8453 = extractvalue %dx.types.CBufRet.f32 %8451, 2
  %8454 = extractvalue %dx.types.CBufRet.f32 %8451, 0
  %8455 = fmul fast float %8452, %8450
  %8456 = fadd fast float %8454, %8455
  %8457 = fadd fast float %8454, %8453
  %8458 = fsub fast float %8452, %8453
  %8459 = fadd fast float %8458, %8454
  %8460 = call float @dx.op.binary.f32(i32 35, float %8456, float %8457)  ; FMax(a,b)
  %8461 = call float @dx.op.binary.f32(i32 36, float %8460, float %8459)  ; FMin(a,b)
  %8462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %8399, float %8400, float %8461, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8463 = extractvalue %dx.types.ResRet.f32 %8462, 0
  %8464 = extractvalue %dx.types.ResRet.f32 %8462, 1
  %8465 = extractvalue %dx.types.ResRet.f32 %8462, 2
  %8466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8467 = extractvalue %dx.types.CBufRet.i32 %8466, 0
  %8468 = extractvalue %dx.types.CBufRet.i32 %8466, 1
  %8469 = uitofp i32 %8467 to float
  %8470 = uitofp i32 %8468 to float
  %8471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8472 = extractvalue %dx.types.CBufRet.f32 %8471, 0
  %8473 = extractvalue %dx.types.CBufRet.f32 %8471, 1
  %8474 = fmul fast float %8469, %8399
  %8475 = fmul fast float %8470, %8400
  %8476 = fadd fast float %8474, -5.000000e-01
  %8477 = fadd fast float %8475, -5.000000e-01
  %8478 = call float @dx.op.unary.f32(i32 22, float %8476)  ; Frc(value)
  %8479 = call float @dx.op.unary.f32(i32 22, float %8477)  ; Frc(value)
  %8480 = fmul fast float %8478, %8478
  %8481 = fmul fast float %8480, %8478
  %8482 = fsub fast float 3.000000e+00, %8478
  %8483 = fmul fast float %8480, %8482
  %8484 = fmul fast float %8478, 3.000000e+00
  %8485 = fmul fast float %8481, 3.000000e+00
  %8486 = fmul fast float %8480, 6.000000e+00
  %8487 = fsub fast float %8485, %8486
  %8488 = fadd fast float %8487, 4.000000e+00
  %8489 = fmul fast float %8488, 0x3FC5555560000000
  %8490 = fmul fast float %8481, -3.000000e+00
  %8491 = fadd fast float %8480, %8478
  %8492 = fmul fast float %8491, 3.000000e+00
  %8493 = fadd fast float %8490, 1.000000e+00
  %8494 = fadd fast float %8493, %8492
  %8495 = fmul fast float %8481, 0x3FC5555560000000
  %8496 = fmul fast float %8479, %8479
  %8497 = fmul fast float %8496, %8479
  %8498 = fsub fast float 3.000000e+00, %8479
  %8499 = fmul fast float %8496, %8498
  %8500 = fmul fast float %8479, 3.000000e+00
  %8501 = fmul fast float %8497, 3.000000e+00
  %8502 = fmul fast float %8496, 6.000000e+00
  %8503 = fsub fast float %8501, %8502
  %8504 = fadd fast float %8503, 4.000000e+00
  %8505 = fmul fast float %8504, 0x3FC5555560000000
  %8506 = fmul fast float %8497, -3.000000e+00
  %8507 = fadd fast float %8496, %8479
  %8508 = fmul fast float %8507, 3.000000e+00
  %8509 = fadd fast float %8506, 1.000000e+00
  %8510 = fadd fast float %8509, %8508
  %8511 = fmul fast float %8497, 0x3FC5555560000000
  %8512 = fadd fast float %8478, 1.000000e+00
  %8513 = fsub fast float 1.000000e+00, %8484
  %8514 = fadd fast float %8513, %8483
  %8515 = fadd fast float %8514, %8488
  %8516 = fmul fast float %8515, 0x3FC5555560000000
  %8517 = fdiv fast float %8489, %8516
  %8518 = fsub fast float %8512, %8517
  %8519 = fsub fast float 1.000000e+00, %8478
  %8520 = fadd fast float %8494, %8481
  %8521 = fmul fast float %8520, 0x3FC5555560000000
  %8522 = fdiv fast float %8495, %8521
  %8523 = fadd fast float %8519, %8522
  %8524 = fadd fast float %8479, 1.000000e+00
  %8525 = fsub fast float 1.000000e+00, %8500
  %8526 = fadd fast float %8525, %8499
  %8527 = fadd fast float %8526, %8504
  %8528 = fmul fast float %8527, 0x3FC5555560000000
  %8529 = fdiv fast float %8505, %8528
  %8530 = fsub fast float %8524, %8529
  %8531 = fsub fast float 1.000000e+00, %8479
  %8532 = fadd fast float %8510, %8497
  %8533 = fmul fast float %8532, 0x3FC5555560000000
  %8534 = fdiv fast float %8511, %8533
  %8535 = fadd fast float %8534, %8531
  %8536 = fmul fast float %8518, %8472
  %8537 = fsub fast float %8399, %8536
  %8538 = fmul fast float %8523, %8472
  %8539 = fadd fast float %8538, %8399
  %8540 = fmul fast float %8535, %8473
  %8541 = fadd fast float %8540, %8400
  %8542 = fmul fast float %8530, %8473
  %8543 = fsub fast float %8400, %8542
  %8544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8537, float %8543, float %8461, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8545 = extractvalue %dx.types.ResRet.f32 %8544, 0
  %8546 = extractvalue %dx.types.ResRet.f32 %8544, 1
  %8547 = extractvalue %dx.types.ResRet.f32 %8544, 2
  %8548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8539, float %8543, float %8461, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8549 = extractvalue %dx.types.ResRet.f32 %8548, 0
  %8550 = extractvalue %dx.types.ResRet.f32 %8548, 1
  %8551 = extractvalue %dx.types.ResRet.f32 %8548, 2
  %8552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8537, float %8541, float %8461, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8553 = extractvalue %dx.types.ResRet.f32 %8552, 0
  %8554 = extractvalue %dx.types.ResRet.f32 %8552, 1
  %8555 = extractvalue %dx.types.ResRet.f32 %8552, 2
  %8556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8539, float %8541, float %8461, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8557 = extractvalue %dx.types.ResRet.f32 %8556, 0
  %8558 = extractvalue %dx.types.ResRet.f32 %8556, 1
  %8559 = extractvalue %dx.types.ResRet.f32 %8556, 2
  %8560 = fsub fast float %8553, %8545
  %8561 = fsub fast float %8554, %8546
  %8562 = fsub fast float %8555, %8547
  %8563 = fmul fast float %8560, %8533
  %8564 = fmul fast float %8561, %8533
  %8565 = fmul fast float %8562, %8533
  %8566 = fadd fast float %8563, %8545
  %8567 = fadd fast float %8564, %8546
  %8568 = fadd fast float %8565, %8547
  %8569 = fsub fast float %8557, %8549
  %8570 = fsub fast float %8558, %8550
  %8571 = fsub fast float %8559, %8551
  %8572 = fmul fast float %8569, %8533
  %8573 = fmul fast float %8570, %8533
  %8574 = fmul fast float %8571, %8533
  %8575 = fsub fast float %8549, %8566
  %8576 = fadd fast float %8575, %8572
  %8577 = fsub fast float %8550, %8567
  %8578 = fadd fast float %8577, %8573
  %8579 = fsub fast float %8551, %8568
  %8580 = fadd fast float %8579, %8574
  %8581 = fmul fast float %8576, %8521
  %8582 = fmul fast float %8578, %8521
  %8583 = fmul fast float %8580, %8521
  %8584 = fadd fast float %8581, %8566
  %8585 = fadd fast float %8582, %8567
  %8586 = fadd fast float %8583, %8568
  %8587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8588 = extractvalue %dx.types.CBufRet.f32 %8587, 1
  %8589 = fmul fast float %8584, %8588
  %8590 = fmul fast float %8585, %8588
  %8591 = fmul fast float %8586, %8588
  br label %8592

; <label>:8592                                    ; preds = %8424, %8393
  %8593 = phi float [ %8463, %8424 ], [ 1.000000e+00, %8393 ]
  %8594 = phi float [ %8464, %8424 ], [ 1.000000e+00, %8393 ]
  %8595 = phi float [ %8465, %8424 ], [ 1.000000e+00, %8393 ]
  %8596 = phi float [ %8589, %8424 ], [ 0.000000e+00, %8393 ]
  %8597 = phi float [ %8590, %8424 ], [ 0.000000e+00, %8393 ]
  %8598 = phi float [ %8591, %8424 ], [ 0.000000e+00, %8393 ]
  %8599 = fmul fast float %8596, %8370
  %8600 = fmul fast float %8597, %8370
  %8601 = fmul fast float %8598, %8370
  %8602 = call float @dx.op.dot3.f32(i32 55, float %8593, float %8594, float %8595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8603 = call float @dx.op.dot3.f32(i32 55, float %8599, float %8600, float %8601, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8604 = select i1 %262, float %8602, float %8593
  %8605 = select i1 %262, float %8602, float %8594
  %8606 = select i1 %262, float 1.000000e+00, float %8595
  %8607 = select i1 %262, float %8603, float %8599
  %8608 = select i1 %262, float 0.000000e+00, float %8600
  %8609 = select i1 %262, float 0.000000e+00, float %8601
  %8610 = fmul fast float %8604, %8383
  %8611 = fmul fast float %8605, %8384
  %8612 = fmul fast float %8606, %8385
  %8613 = fadd fast float %8610, %8607
  %8614 = fadd fast float %8611, %8608
  %8615 = fadd fast float %8609, %8612
  %8616 = fmul fast float %8604, %8361
  %8617 = fmul fast float %8605, %8362
  %8618 = fmul fast float %8606, %8363
  %8619 = fmul fast float %152, %8395
  %8620 = fmul fast float %154, %8396
  %8621 = fsub fast float 1.000000e+00, %8619
  %8622 = fsub fast float 1.000000e+00, %8620
  %8623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8624 = extractvalue %dx.types.CBufRet.f32 %8623, 0
  %8625 = extractvalue %dx.types.CBufRet.f32 %8623, 1
  %8626 = extractvalue %dx.types.CBufRet.f32 %8623, 2
  %8627 = fmul fast float %8621, %8624
  %8628 = fmul fast float %8621, %8625
  %8629 = fmul fast float %8621, %8626
  %8630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8631 = extractvalue %dx.types.CBufRet.f32 %8630, 0
  %8632 = extractvalue %dx.types.CBufRet.f32 %8630, 1
  %8633 = extractvalue %dx.types.CBufRet.f32 %8630, 2
  %8634 = fmul fast float %8622, %8631
  %8635 = fmul fast float %8622, %8632
  %8636 = fmul fast float %8622, %8633
  %8637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8638 = extractvalue %dx.types.CBufRet.f32 %8637, 0
  %8639 = extractvalue %dx.types.CBufRet.f32 %8637, 1
  %8640 = extractvalue %dx.types.CBufRet.f32 %8637, 2
  %8641 = fadd fast float %8634, %8638
  %8642 = fadd fast float %8641, %8627
  %8643 = fadd fast float %8635, %8639
  %8644 = fadd fast float %8643, %8628
  %8645 = fadd fast float %8636, %8640
  %8646 = fadd fast float %8645, %8629
  %8647 = fmul fast float %8642, %225
  %8648 = fmul fast float %8644, %225
  %8649 = fmul fast float %8646, %225
  br label %8650

; <label>:8650                                    ; preds = %8592, %8360
  %8651 = phi float [ %8647, %8592 ], [ %203, %8360 ]
  %8652 = phi float [ %8648, %8592 ], [ %204, %8360 ]
  %8653 = phi float [ %8649, %8592 ], [ %205, %8360 ]
  %8654 = phi float [ %225, %8592 ], [ %103, %8360 ]
  %8655 = phi float [ %8613, %8592 ], [ %8383, %8360 ]
  %8656 = phi float [ %8614, %8592 ], [ %8384, %8360 ]
  %8657 = phi float [ %8615, %8592 ], [ %8385, %8360 ]
  %8658 = phi float [ %8616, %8592 ], [ %8361, %8360 ]
  %8659 = phi float [ %8617, %8592 ], [ %8362, %8360 ]
  %8660 = phi float [ %8618, %8592 ], [ %8363, %8360 ]
  %8661 = phi float [ %8593, %8592 ], [ 1.000000e+00, %8360 ]
  br i1 %8392, label %9816, label %8662

; <label>:8662                                    ; preds = %8650
  %8663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8664 = extractvalue %dx.types.CBufRet.f32 %8663, 0
  %8665 = extractvalue %dx.types.CBufRet.f32 %8663, 1
  %8666 = extractvalue %dx.types.CBufRet.f32 %8663, 2
  %8667 = extractvalue %dx.types.CBufRet.f32 %8663, 3
  %8668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8669 = extractvalue %dx.types.CBufRet.f32 %8668, 0
  %8670 = extractvalue %dx.types.CBufRet.f32 %8668, 1
  %8671 = extractvalue %dx.types.CBufRet.f32 %8668, 2
  %8672 = extractvalue %dx.types.CBufRet.f32 %8668, 3
  %8673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8674 = extractvalue %dx.types.CBufRet.f32 %8673, 0
  %8675 = extractvalue %dx.types.CBufRet.f32 %8673, 1
  %8676 = extractvalue %dx.types.CBufRet.f32 %8673, 2
  %8677 = extractvalue %dx.types.CBufRet.f32 %8673, 3
  %8678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8679 = extractvalue %dx.types.CBufRet.f32 %8678, 0
  %8680 = extractvalue %dx.types.CBufRet.f32 %8678, 1
  %8681 = extractvalue %dx.types.CBufRet.f32 %8678, 2
  %8682 = extractvalue %dx.types.CBufRet.f32 %8678, 3
  %8683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8684 = extractvalue %dx.types.CBufRet.f32 %8683, 3
  %8685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8686 = extractvalue %dx.types.CBufRet.f32 %8685, 3
  %8687 = extractvalue %dx.types.CBufRet.f32 %8685, 0
  %8688 = extractvalue %dx.types.CBufRet.f32 %8685, 1
  %8689 = extractvalue %dx.types.CBufRet.f32 %8685, 2
  %8690 = fcmp fast olt float %8689, -5.000000e-01
  %8691 = call float @dx.op.dot3.f32(i32 55, float %8651, float %8652, float %8653, float %8651, float %8652, float %8653)  ; Dot3(ax,ay,az,bx,by,bz)
  %8692 = call float @dx.op.unary.f32(i32 25, float %8691)  ; Rsqrt(value)
  %8693 = fmul fast float %8692, %8691
  %8694 = fmul fast float %8692, %8651
  %8695 = fmul fast float %8692, %8652
  %8696 = fmul fast float %8692, %8653
  %8697 = fadd fast float %8693, %8667
  %8698 = call float @dx.op.dot3.f32(i32 55, float %8694, float %8695, float %8696, float %8664, float %8665, float %8666)  ; Dot3(ax,ay,az,bx,by,bz)
  %8699 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8700 = extractvalue %dx.types.CBufRet.i32 %8699, 1
  %8701 = and i32 %8700, 1
  %8702 = icmp ne i32 %8701, 0
  %8703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8704 = extractvalue %dx.types.CBufRet.f32 %8703, 2
  %8705 = fcmp fast ogt float %8704, 0.000000e+00
  %8706 = and i1 %8702, %8705
  br i1 %8706, label %8707, label %9113, !dx.controlflow.hints !139

; <label>:8707                                    ; preds = %8662
  %8708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8709 = extractvalue %dx.types.CBufRet.f32 %8708, 3
  %8710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8711 = extractvalue %dx.types.CBufRet.f32 %8710, 2
  %8712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8713 = extractvalue %dx.types.CBufRet.f32 %8712, 2
  %8714 = fsub fast float %8711, %8713
  %8715 = and i32 %8700, 2
  %8716 = extractvalue %dx.types.CBufRet.i32 %8699, 0
  %8717 = call i32 @dx.op.binary.i32(i32 40, i32 %8716, i32 3)  ; UMin(a,b)
  %8718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8719 = extractvalue %dx.types.CBufRet.f32 %8718, 0
  %8720 = extractvalue %dx.types.CBufRet.f32 %8718, 1
  %8721 = extractvalue %dx.types.CBufRet.f32 %8712, 0
  %8722 = extractvalue %dx.types.CBufRet.f32 %8712, 1
  %8723 = fsub fast float %8719, %8721
  %8724 = fsub fast float %8720, %8722
  %8725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8726 = extractvalue %dx.types.CBufRet.f32 %8725, 0
  %8727 = fcmp fast ogt float %8726, 0.000000e+00
  %8728 = fsub fast float -0.000000e+00, %8723
  %8729 = fsub fast float -0.000000e+00, %8724
  %8730 = call float @dx.op.dot2.f32(i32 54, float %8694, float %8695, float %8694, float %8695)  ; Dot2(ax,ay,bx,by)
  %8731 = call float @dx.op.dot2.f32(i32 54, float %8694, float %8695, float %8728, float %8729)  ; Dot2(ax,ay,bx,by)
  %8732 = fmul fast float %8731, 2.000000e+00
  %8733 = call float @dx.op.dot2.f32(i32 54, float %8728, float %8729, float %8728, float %8729)  ; Dot2(ax,ay,bx,by)
  %8734 = fmul fast float %8726, %8726
  %8735 = fsub fast float %8733, %8734
  %8736 = fmul fast float %8732, %8732
  %8737 = fmul fast float %8730, 4.000000e+00
  %8738 = fmul fast float %8737, %8735
  %8739 = fsub fast float %8736, %8738
  %8740 = fcmp fast ogt float %8739, 0.000000e+00
  br i1 %8740, label %8741, label %8756

; <label>:8741                                    ; preds = %8707
  %8742 = fcmp fast ogt float %8732, 0.000000e+00
  %8743 = call float @dx.op.unary.f32(i32 24, float %8739)  ; Sqrt(value)
  %8744 = fsub fast float -0.000000e+00, %8743
  %8745 = select i1 %8742, float %8743, float %8744
  %8746 = fadd fast float %8745, %8732
  %8747 = fmul float %8746, -5.000000e-01
  %8748 = fdiv fast float %8747, %8730
  %8749 = call float @dx.op.binary.f32(i32 35, float %8748, float 0.000000e+00)  ; FMax(a,b)
  %8750 = call float @dx.op.binary.f32(i32 36, float %8693, float %8749)  ; FMin(a,b)
  %8751 = fdiv fast float %8735, %8747
  %8752 = call float @dx.op.binary.f32(i32 35, float %8751, float 0.000000e+00)  ; FMax(a,b)
  %8753 = call float @dx.op.binary.f32(i32 36, float %8693, float %8752)  ; FMin(a,b)
  %8754 = call float @dx.op.binary.f32(i32 36, float %8750, float %8753)  ; FMin(a,b)
  %8755 = call float @dx.op.binary.f32(i32 35, float %8750, float %8753)  ; FMax(a,b)
  br label %8756

; <label>:8756                                    ; preds = %8741, %8707
  %8757 = phi float [ %8755, %8741 ], [ -1.000000e+00, %8707 ]
  %8758 = phi float [ %8754, %8741 ], [ -1.000000e+00, %8707 ]
  %8759 = phi i1 [ true, %8741 ], [ false, %8707 ]
  %8760 = and i1 %8727, %8759
  br i1 %8760, label %8761, label %8763

; <label>:8761                                    ; preds = %8756
  %8762 = fcmp fast oeq float %8758, %8757
  br i1 %8762, label %9066, label %8764

; <label>:8763                                    ; preds = %8756
  br i1 %8727, label %9066, label %8764

; <label>:8764                                    ; preds = %8763, %8761
  %8765 = phi float [ %8693, %8763 ], [ %8757, %8761 ]
  %8766 = phi float [ 0.000000e+00, %8763 ], [ %8758, %8761 ]
  %8767 = icmp ne i32 %8715, 0
  %8768 = fmul fast float %8765, %8696
  %8769 = fadd fast float %8768, %8709
  %8770 = fmul fast float %8769, %8765
  %8771 = select i1 %8767, float 0.000000e+00, float %8770
  %8772 = fcmp fast oeq float %8696, 0.000000e+00
  %8773 = fdiv fast float %8714, %8696
  %8774 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8773)  ; FMax(a,b)
  %8775 = select i1 %8772, float %8765, float %8774
  %8776 = call float @dx.op.binary.f32(i32 36, float %8765, float %8775)  ; FMin(a,b)
  %8777 = fcmp fast ogt float %8696, 0.000000e+00
  %8778 = fcmp fast olt float %8714, 0.000000e+00
  br i1 %8777, label %8779, label %8836

; <label>:8779                                    ; preds = %8764
  %8780 = icmp eq i32 %8715, 0
  br i1 %8778, label %8781, label %8825

; <label>:8781                                    ; preds = %8779
  %8782 = select i1 %8780, float %8765, float 0.000000e+00
  %8783 = fsub fast float -0.000000e+00, %8782
  %8784 = call float @dx.op.unary.f32(i32 6, float %8783)  ; FAbs(value)
  %8785 = fmul fast float %8782, %8696
  %8786 = fadd fast float %8785, %8709
  %8787 = fmul fast float %8784, %8786
  %8788 = fsub fast float %8771, %8787
  %8789 = fsub fast float %8765, %8784
  %8790 = select i1 %8780, float %8789, float 0.000000e+00
  %8791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8792 = extractvalue %dx.types.CBufRet.f32 %8791, 0
  %8793 = extractvalue %dx.types.CBufRet.f32 %8791, 1
  %8794 = extractvalue %dx.types.CBufRet.f32 %8791, 2
  %8795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8796 = extractvalue %dx.types.CBufRet.f32 %8795, 0
  %8797 = extractvalue %dx.types.CBufRet.f32 %8795, 1
  %8798 = extractvalue %dx.types.CBufRet.f32 %8795, 2
  %8799 = extractvalue %dx.types.CBufRet.f32 %8795, 3
  %8800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8801 = extractvalue %dx.types.CBufRet.f32 %8800, 3
  %8802 = call float @dx.op.binary.f32(i32 36, float %8788, float %8801)  ; FMin(a,b)
  %8803 = fmul fast float %8799, %8790
  %8804 = call float @dx.op.unary.f32(i32 7, float %8803)  ; Saturate(value)
  %8805 = fsub fast float %8796, %8792
  %8806 = fsub fast float %8797, %8793
  %8807 = fsub fast float %8798, %8794
  %8808 = fmul fast float %8804, %8805
  %8809 = fmul fast float %8804, %8806
  %8810 = fmul fast float %8804, %8807
  %8811 = fadd fast float %8808, %8792
  %8812 = fadd fast float %8809, %8793
  %8813 = fadd fast float %8810, %8794
  %8814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8815 = extractvalue %dx.types.CBufRet.f32 %8814, 0
  %8816 = extractvalue %dx.types.CBufRet.f32 %8814, 1
  %8817 = fadd fast float %8816, %8815
  %8818 = call float @dx.op.unary.f32(i32 7, float %8817)  ; Saturate(value)
  %8819 = extractvalue %dx.types.CBufRet.f32 %8814, 2
  %8820 = extractvalue %dx.types.CBufRet.f32 %8814, 3
  %8821 = fadd fast float %8820, %8819
  %8822 = call float @dx.op.unary.f32(i32 7, float %8821)  ; Saturate(value)
  %8823 = fmul fast float %8818, %8802
  %8824 = fmul fast float %8823, %8822
  br label %9066

; <label>:8825                                    ; preds = %8779
  br i1 %8780, label %8826, label %8847

; <label>:8826                                    ; preds = %8825
  %8827 = call float @dx.op.binary.f32(i32 36, float %8776, float %8766)  ; FMin(a,b)
  %8828 = fsub fast float %8776, %8827
  %8829 = fsub fast float %8828, %8765
  %8830 = call float @dx.op.unary.f32(i32 6, float %8829)  ; FAbs(value)
  %8831 = fadd fast float %8828, %8765
  %8832 = fmul fast float %8831, %8696
  %8833 = fadd fast float %8832, %8709
  %8834 = fmul fast float %8833, %8830
  %8835 = fsub fast float %8771, %8834
  br label %8847

; <label>:8836                                    ; preds = %8764
  br i1 %8778, label %8837, label %8847

; <label>:8837                                    ; preds = %8836
  %8838 = call float @dx.op.binary.f32(i32 35, float %8766, float %8776)  ; FMax(a,b)
  %8839 = icmp eq i32 %8715, 0
  %8840 = select i1 %8839, float %8776, float 0.000000e+00
  %8841 = fsub fast float -0.000000e+00, %8840
  %8842 = call float @dx.op.unary.f32(i32 6, float %8841)  ; FAbs(value)
  %8843 = fmul fast float %8840, %8696
  %8844 = fadd fast float %8843, %8709
  %8845 = fmul fast float %8842, %8844
  %8846 = fsub fast float %8771, %8845
  br label %8847

; <label>:8847                                    ; preds = %8837, %8836, %8826, %8825
  %8848 = phi float [ %8766, %8825 ], [ %8766, %8826 ], [ %8838, %8837 ], [ %8766, %8836 ]
  %8849 = phi float [ 0.000000e+00, %8825 ], [ %8830, %8826 ], [ %8842, %8837 ], [ 0.000000e+00, %8836 ]
  %8850 = phi float [ %8771, %8825 ], [ %8835, %8826 ], [ %8846, %8837 ], [ %8771, %8836 ]
  %8851 = phi float [ %8776, %8825 ], [ %8776, %8826 ], [ %8765, %8837 ], [ %8765, %8836 ]
  %8852 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 0
  store float -1.000000e+00, float* %8852, align 4, !tbaa !125, !noalias !140
  %8853 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 1
  store float -1.000000e+00, float* %8853, align 4, !tbaa !125, !noalias !140
  %8854 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 2
  store float -1.000000e+00, float* %8854, align 4, !tbaa !125, !noalias !140
  %8855 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 0
  store float -1.000000e+00, float* %8855, align 4, !tbaa !125, !noalias !140
  %8856 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 1
  store float -1.000000e+00, float* %8856, align 4, !tbaa !125, !noalias !140
  %8857 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 2
  store float -1.000000e+00, float* %8857, align 4, !tbaa !125, !noalias !140
  %8858 = icmp sgt i32 %8717, 0
  br i1 %8858, label %8859, label %8920

; <label>:8859                                    ; preds = %8847
  br label %8860

; <label>:8860                                    ; preds = %8909, %8859
  %8861 = phi i32 [ %8910, %8909 ], [ 0, %8859 ]
  %8862 = phi i32 [ %8911, %8909 ], [ 0, %8859 ]
  %8863 = add nuw i32 %8862, 171
  %8864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %8863)  ; CBufferLoadLegacy(handle,regIndex)
  %8865 = extractvalue %dx.types.CBufRet.f32 %8864, 0
  %8866 = extractvalue %dx.types.CBufRet.f32 %8864, 1
  %8867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8868 = extractvalue %dx.types.CBufRet.f32 %8867, 0
  %8869 = extractvalue %dx.types.CBufRet.f32 %8867, 1
  %8870 = fsub fast float %8865, %8868
  %8871 = fsub fast float %8866, %8869
  %8872 = extractvalue %dx.types.CBufRet.f32 %8864, 2
  %8873 = fsub fast float -0.000000e+00, %8870
  %8874 = fsub fast float -0.000000e+00, %8871
  %8875 = call float @dx.op.dot2.f32(i32 54, float %8694, float %8695, float %8873, float %8874)  ; Dot2(ax,ay,bx,by)
  %8876 = fmul fast float %8875, 2.000000e+00
  %8877 = call float @dx.op.dot2.f32(i32 54, float %8873, float %8874, float %8873, float %8874)  ; Dot2(ax,ay,bx,by)
  %8878 = fmul fast float %8872, %8872
  %8879 = fsub fast float %8877, %8878
  %8880 = fmul fast float %8876, %8876
  %8881 = fmul fast float %8737, %8879
  %8882 = fsub fast float %8880, %8881
  %8883 = fcmp fast ogt float %8882, 0.000000e+00
  br i1 %8883, label %8884, label %8899

; <label>:8884                                    ; preds = %8860
  %8885 = fcmp fast ogt float %8876, 0.000000e+00
  %8886 = call float @dx.op.unary.f32(i32 24, float %8882)  ; Sqrt(value)
  %8887 = fsub fast float -0.000000e+00, %8886
  %8888 = select i1 %8885, float %8886, float %8887
  %8889 = fadd fast float %8888, %8876
  %8890 = fmul float %8889, -5.000000e-01
  %8891 = fdiv fast float %8890, %8730
  %8892 = call float @dx.op.binary.f32(i32 35, float %8891, float 0.000000e+00)  ; FMax(a,b)
  %8893 = call float @dx.op.binary.f32(i32 36, float %8765, float %8892)  ; FMin(a,b)
  %8894 = fdiv fast float %8879, %8890
  %8895 = call float @dx.op.binary.f32(i32 35, float %8894, float 0.000000e+00)  ; FMax(a,b)
  %8896 = call float @dx.op.binary.f32(i32 36, float %8765, float %8895)  ; FMin(a,b)
  %8897 = call float @dx.op.binary.f32(i32 36, float %8893, float %8896)  ; FMin(a,b)
  %8898 = call float @dx.op.binary.f32(i32 35, float %8893, float %8896)  ; FMax(a,b)
  br label %8899

; <label>:8899                                    ; preds = %8884, %8860
  %8900 = phi float [ %8898, %8884 ], [ -1.000000e+00, %8860 ]
  %8901 = phi float [ %8897, %8884 ], [ -1.000000e+00, %8860 ]
  %8902 = phi i1 [ true, %8884 ], [ false, %8860 ]
  br i1 %8902, label %8903, label %8909

; <label>:8903                                    ; preds = %8899
  %8904 = call float @dx.op.binary.f32(i32 35, float %8848, float %8901)  ; FMax(a,b)
  %8905 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8862
  store float %8904, float* %8905, align 4, !tbaa !125, !noalias !140
  %8906 = call float @dx.op.binary.f32(i32 35, float %8848, float %8900)  ; FMax(a,b)
  %8907 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8862
  store float %8906, float* %8907, align 4, !tbaa !125, !noalias !140
  %8908 = add nsw i32 %8861, 1
  br label %8909

; <label>:8909                                    ; preds = %8903, %8899
  %8910 = phi i32 [ %8908, %8903 ], [ %8861, %8899 ]
  %8911 = add nuw nsw i32 %8862, 1
  %8912 = icmp eq i32 %8911, %8717
  br i1 %8912, label %8913, label %8860

; <label>:8913                                    ; preds = %8909
  %8914 = load float, float* %8854, align 4, !tbaa !125, !alias.scope !156, !noalias !159
  %8915 = load float, float* %8853, align 4, !tbaa !125, !alias.scope !162, !noalias !163
  %8916 = load float, float* %8852, align 4, !tbaa !125, !alias.scope !164, !noalias !165
  %8917 = load float, float* %8857, align 4, !tbaa !125, !alias.scope !166, !noalias !169
  %8918 = load float, float* %8856, align 4, !tbaa !125, !alias.scope !172, !noalias !173
  %8919 = load float, float* %8855, align 4, !tbaa !125, !alias.scope !174, !noalias !175
  br label %8920

; <label>:8920                                    ; preds = %8913, %8847
  %8921 = phi float [ -1.000000e+00, %8847 ], [ %8919, %8913 ]
  %8922 = phi float [ -1.000000e+00, %8847 ], [ %8918, %8913 ]
  %8923 = phi float [ -1.000000e+00, %8847 ], [ %8917, %8913 ]
  %8924 = phi float [ -1.000000e+00, %8847 ], [ %8916, %8913 ]
  %8925 = phi float [ -1.000000e+00, %8847 ], [ %8915, %8913 ]
  %8926 = phi float [ -1.000000e+00, %8847 ], [ %8914, %8913 ]
  %8927 = phi i32 [ 0, %8847 ], [ %8910, %8913 ]
  %8928 = call float @dx.op.binary.f32(i32 36, float %8925, float %8926)  ; FMin(a,b)
  %8929 = call float @dx.op.binary.f32(i32 36, float %8924, float %8928)  ; FMin(a,b)
  %8930 = call float @dx.op.binary.f32(i32 35, float %8924, float %8925)  ; FMax(a,b)
  %8931 = call float @dx.op.binary.f32(i32 36, float %8930, float %8926)  ; FMin(a,b)
  %8932 = call float @dx.op.binary.f32(i32 36, float %8924, float %8925)  ; FMin(a,b)
  %8933 = call float @dx.op.binary.f32(i32 35, float %8932, float %8931)  ; FMax(a,b)
  %8934 = call float @dx.op.binary.f32(i32 35, float %8925, float %8926)  ; FMax(a,b)
  %8935 = call float @dx.op.binary.f32(i32 35, float %8924, float %8934)  ; FMax(a,b)
  store float %8929, float* %8852, align 4, !tbaa !125, !alias.scope !164, !noalias !165
  store float %8933, float* %8853, align 4, !tbaa !125, !alias.scope !162, !noalias !163
  store float %8935, float* %8854, align 4, !tbaa !125, !alias.scope !156, !noalias !159
  %8936 = call float @dx.op.binary.f32(i32 36, float %8922, float %8923)  ; FMin(a,b)
  %8937 = call float @dx.op.binary.f32(i32 36, float %8921, float %8936)  ; FMin(a,b)
  %8938 = call float @dx.op.binary.f32(i32 35, float %8921, float %8922)  ; FMax(a,b)
  %8939 = call float @dx.op.binary.f32(i32 36, float %8938, float %8923)  ; FMin(a,b)
  %8940 = call float @dx.op.binary.f32(i32 36, float %8921, float %8922)  ; FMin(a,b)
  %8941 = call float @dx.op.binary.f32(i32 35, float %8940, float %8939)  ; FMax(a,b)
  %8942 = call float @dx.op.binary.f32(i32 35, float %8922, float %8923)  ; FMax(a,b)
  %8943 = call float @dx.op.binary.f32(i32 35, float %8921, float %8942)  ; FMax(a,b)
  store float %8937, float* %8855, align 4, !tbaa !125, !alias.scope !174, !noalias !175
  store float %8941, float* %8856, align 4, !tbaa !125, !alias.scope !172, !noalias !173
  store float %8943, float* %8857, align 4, !tbaa !125, !alias.scope !166, !noalias !169
  %8944 = sub nsw i32 3, %8927
  %8945 = icmp sgt i32 %8944, 2
  br i1 %8945, label %8946, label %8984

; <label>:8946                                    ; preds = %8920
  %8947 = icmp eq i32 %8715, 0
  %8948 = fsub fast float %8765, %8849
  %8949 = select i1 %8947, float %8948, float %8849
  %8950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8951 = extractvalue %dx.types.CBufRet.f32 %8950, 0
  %8952 = extractvalue %dx.types.CBufRet.f32 %8950, 1
  %8953 = extractvalue %dx.types.CBufRet.f32 %8950, 2
  %8954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8955 = extractvalue %dx.types.CBufRet.f32 %8954, 0
  %8956 = extractvalue %dx.types.CBufRet.f32 %8954, 1
  %8957 = extractvalue %dx.types.CBufRet.f32 %8954, 2
  %8958 = extractvalue %dx.types.CBufRet.f32 %8954, 3
  %8959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8960 = extractvalue %dx.types.CBufRet.f32 %8959, 3
  %8961 = call float @dx.op.binary.f32(i32 36, float %8850, float %8960)  ; FMin(a,b)
  %8962 = fmul fast float %8958, %8949
  %8963 = call float @dx.op.unary.f32(i32 7, float %8962)  ; Saturate(value)
  %8964 = fsub fast float %8955, %8951
  %8965 = fsub fast float %8956, %8952
  %8966 = fsub fast float %8957, %8953
  %8967 = fmul fast float %8963, %8964
  %8968 = fmul fast float %8963, %8965
  %8969 = fmul fast float %8963, %8966
  %8970 = fadd fast float %8967, %8951
  %8971 = fadd fast float %8968, %8952
  %8972 = fadd fast float %8969, %8953
  %8973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8974 = extractvalue %dx.types.CBufRet.f32 %8973, 0
  %8975 = extractvalue %dx.types.CBufRet.f32 %8973, 1
  %8976 = fadd fast float %8975, %8974
  %8977 = call float @dx.op.unary.f32(i32 7, float %8976)  ; Saturate(value)
  %8978 = extractvalue %dx.types.CBufRet.f32 %8973, 2
  %8979 = extractvalue %dx.types.CBufRet.f32 %8973, 3
  %8980 = fadd fast float %8979, %8978
  %8981 = call float @dx.op.unary.f32(i32 7, float %8980)  ; Saturate(value)
  %8982 = fmul fast float %8977, %8961
  %8983 = fmul fast float %8982, %8981
  br label %9066

; <label>:8984                                    ; preds = %8920
  %8985 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8944
  %8986 = load float, float* %8985, align 4, !tbaa !125, !noalias !140
  %8987 = fcmp fast olt float %8986, %8851
  %8988 = icmp sgt i32 %8927, 0
  %8989 = and i1 %8988, %8987
  br i1 %8989, label %8990, label %9027

; <label>:8990                                    ; preds = %8984
  br label %8991

; <label>:8991                                    ; preds = %9020, %8990
  %8992 = phi float [ %9021, %9020 ], [ %8849, %8990 ]
  %8993 = phi float [ %9022, %9020 ], [ %8850, %8990 ]
  %8994 = phi float [ %9002, %9020 ], [ %8986, %8990 ]
  %8995 = phi i32 [ %8999, %9020 ], [ %8944, %8990 ]
  %8996 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8995
  %8997 = load float, float* %8996, align 4, !tbaa !125, !noalias !140
  %8998 = icmp slt i32 %8995, 2
  %8999 = add nsw i32 %8995, 1
  %9000 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8999
  %9001 = load float, float* %9000, align 4, !tbaa !125, !noalias !140
  %9002 = select i1 %8998, float %9001, float %8765
  %9003 = call float @dx.op.binary.f32(i32 36, float %9002, float %8997)  ; FMin(a,b)
  %9004 = call float @dx.op.binary.f32(i32 36, float %8851, float %9003)  ; FMin(a,b)
  %9005 = icmp eq i32 %8715, 0
  %9006 = fadd fast float %9004, %8994
  %9007 = fmul fast float %9006, %8696
  %9008 = fadd fast float %9007, %8709
  br i1 %9005, label %9014, label %9009

; <label>:9009                                    ; preds = %8991
  %9010 = fsub fast float %9004, %8994
  %9011 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9010)  ; FMax(a,b)
  %9012 = fmul fast float %9011, %9008
  %9013 = fadd fast float %9012, %8993
  br label %9020

; <label>:9014                                    ; preds = %8991
  %9015 = fsub fast float %8994, %9004
  %9016 = call float @dx.op.unary.f32(i32 6, float %9015)  ; FAbs(value)
  %9017 = fadd fast float %9016, %8992
  %9018 = fmul fast float %9016, %9008
  %9019 = fsub fast float %8993, %9018
  br label %9020

; <label>:9020                                    ; preds = %9014, %9009
  %9021 = phi float [ %9011, %9009 ], [ %9017, %9014 ]
  %9022 = phi float [ %9013, %9009 ], [ %9019, %9014 ]
  %9023 = fcmp fast olt float %9002, %8851
  %9024 = icmp slt i32 %8999, 3
  %9025 = and i1 %9024, %9023
  br i1 %9025, label %8991, label %9026

; <label>:9026                                    ; preds = %9020
  br label %9027

; <label>:9027                                    ; preds = %9026, %8984
  %9028 = phi float [ %8849, %8984 ], [ %9021, %9026 ]
  %9029 = phi float [ %8850, %8984 ], [ %9022, %9026 ]
  %9030 = fsub fast float %8765, %9028
  %9031 = select i1 %8767, float %9028, float %9030
  %9032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9033 = extractvalue %dx.types.CBufRet.f32 %9032, 0
  %9034 = extractvalue %dx.types.CBufRet.f32 %9032, 1
  %9035 = extractvalue %dx.types.CBufRet.f32 %9032, 2
  %9036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9037 = extractvalue %dx.types.CBufRet.f32 %9036, 0
  %9038 = extractvalue %dx.types.CBufRet.f32 %9036, 1
  %9039 = extractvalue %dx.types.CBufRet.f32 %9036, 2
  %9040 = extractvalue %dx.types.CBufRet.f32 %9036, 3
  %9041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9042 = extractvalue %dx.types.CBufRet.f32 %9041, 3
  %9043 = call float @dx.op.binary.f32(i32 36, float %9029, float %9042)  ; FMin(a,b)
  %9044 = fmul fast float %9040, %9031
  %9045 = call float @dx.op.unary.f32(i32 7, float %9044)  ; Saturate(value)
  %9046 = fsub fast float %9037, %9033
  %9047 = fsub fast float %9038, %9034
  %9048 = fsub fast float %9039, %9035
  %9049 = fmul fast float %9045, %9046
  %9050 = fmul fast float %9045, %9047
  %9051 = fmul fast float %9045, %9048
  %9052 = fadd fast float %9049, %9033
  %9053 = fadd fast float %9050, %9034
  %9054 = fadd fast float %9051, %9035
  %9055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9056 = extractvalue %dx.types.CBufRet.f32 %9055, 0
  %9057 = extractvalue %dx.types.CBufRet.f32 %9055, 1
  %9058 = fadd fast float %9057, %9056
  %9059 = call float @dx.op.unary.f32(i32 7, float %9058)  ; Saturate(value)
  %9060 = extractvalue %dx.types.CBufRet.f32 %9055, 2
  %9061 = extractvalue %dx.types.CBufRet.f32 %9055, 3
  %9062 = fadd fast float %9061, %9060
  %9063 = call float @dx.op.unary.f32(i32 7, float %9062)  ; Saturate(value)
  %9064 = fmul fast float %9059, %9043
  %9065 = fmul fast float %9064, %9063
  br label %9066

; <label>:9066                                    ; preds = %9027, %8946, %8781, %8763, %8761
  %9067 = phi float [ %8790, %8781 ], [ %8949, %8946 ], [ %9031, %9027 ], [ 0.000000e+00, %8761 ], [ 0.000000e+00, %8763 ]
  %9068 = phi float [ %8824, %8781 ], [ %8983, %8946 ], [ %9065, %9027 ], [ 0.000000e+00, %8761 ], [ 0.000000e+00, %8763 ]
  %9069 = phi float [ %8811, %8781 ], [ %8970, %8946 ], [ %9052, %9027 ], [ 0.000000e+00, %8761 ], [ 0.000000e+00, %8763 ]
  %9070 = phi float [ %8812, %8781 ], [ %8971, %8946 ], [ %9053, %9027 ], [ 0.000000e+00, %8761 ], [ 0.000000e+00, %8763 ]
  %9071 = phi float [ %8813, %8781 ], [ %8972, %8946 ], [ %9054, %9027 ], [ 0.000000e+00, %8761 ], [ 0.000000e+00, %8763 ]
  %9072 = fmul fast float %8704, %9068
  %9073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9074 = extractvalue %dx.types.CBufRet.f32 %9073, 2
  %9075 = fsub fast float %8711, %9074
  %9076 = fcmp fast olt float %9072, -2.000000e+01
  %9077 = call float @dx.op.unary.f32(i32 21, float %9072)  ; Exp(value)
  %9078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9079 = extractvalue %dx.types.CBufRet.f32 %9078, 2
  %9080 = extractvalue %dx.types.CBufRet.f32 %9078, 3
  %9081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9082 = extractvalue %dx.types.CBufRet.f32 %9081, 2
  %9083 = fmul fast float %9080, %9075
  %9084 = call float @dx.op.unary.f32(i32 7, float %9083)  ; Saturate(value)
  %9085 = fsub fast float 1.000000e+00, %9084
  %9086 = fmul fast float %8696, 5.000000e-01
  %9087 = fadd fast float %9086, 5.000000e-01
  %9088 = call float @dx.op.unary.f32(i32 7, float %9087)  ; Saturate(value)
  %9089 = fsub fast float 1.000000e+00, %9088
  %9090 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9085)  ; FMax(a,b)
  %9091 = fdiv fast float %9089, %9090
  %9092 = fsub fast float %9075, %8653
  %9093 = call float @dx.op.unary.f32(i32 6, float %9092)  ; FAbs(value)
  %9094 = fmul fast float %9093, %9079
  %9095 = call float @dx.op.unary.f32(i32 7, float %9091)  ; Saturate(value)
  %9096 = fsub fast float 1.000000e+00, %9094
  %9097 = fmul fast float %9096, %9095
  %9098 = fadd fast float %9097, %9094
  %9099 = fmul fast float %9082, %9075
  %9100 = call float @dx.op.unary.f32(i32 7, float %9099)  ; Saturate(value)
  %9101 = fsub fast float 1.000000e+00, %9098
  %9102 = fmul fast float %9101, %9100
  %9103 = fadd fast float %9102, %9098
  %9104 = call float @dx.op.unary.f32(i32 7, float %9103)  ; Saturate(value)
  %9105 = fadd fast float %9077, -1.000000e+00
  %9106 = select i1 %9076, float -1.000000e+00, float %9105
  %9107 = fmul fast float %9104, %9106
  %9108 = fadd fast float %9107, 1.000000e+00
  %9109 = fsub fast float -0.000000e+00, %9107
  %9110 = fmul fast float %9069, %9109
  %9111 = fmul fast float %9070, %9109
  %9112 = fmul fast float %9071, %9109
  br label %9113

; <label>:9113                                    ; preds = %9066, %8662
  %9114 = phi float [ %9067, %9066 ], [ 0.000000e+00, %8662 ]
  %9115 = phi float [ %9108, %9066 ], [ 1.000000e+00, %8662 ]
  %9116 = phi float [ %9110, %9066 ], [ 0.000000e+00, %8662 ]
  %9117 = phi float [ %9111, %9066 ], [ 0.000000e+00, %8662 ]
  %9118 = phi float [ %9112, %9066 ], [ 0.000000e+00, %8662 ]
  %9119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9120 = extractvalue %dx.types.CBufRet.f32 %9119, 1
  %9121 = fsub fast float 1.000000e+00, %9115
  %9122 = fmul fast float %9121, %8697
  %9123 = fmul fast float %9122, %9120
  %9124 = fsub fast float %8697, %9123
  br i1 %8690, label %9125, label %9154, !dx.controlflow.hints !176

; <label>:9125                                    ; preds = %9113
  %9126 = fmul fast float %8698, %8687
  %9127 = fadd fast float %9126, %8688
  %9128 = call float @dx.op.unary.f32(i32 7, float %9127)  ; Saturate(value)
  %9129 = fmul fast float %8669, %9124
  %9130 = fsub fast float -0.000000e+00, %9129
  %9131 = fmul fast float %8670, %9124
  %9132 = fsub fast float -0.000000e+00, %9131
  %9133 = call float @dx.op.unary.f32(i32 21, float %9130)  ; Exp(value)
  %9134 = call float @dx.op.unary.f32(i32 21, float %9132)  ; Exp(value)
  %9135 = call float @dx.op.binary.f32(i32 35, float %8677, float %9133)  ; FMax(a,b)
  %9136 = call float @dx.op.binary.f32(i32 35, float %8677, float %9134)  ; FMax(a,b)
  %9137 = fsub fast float %9136, %9135
  %9138 = fmul fast float %9137, %9128
  %9139 = fadd fast float %9138, %9135
  %9140 = call float @dx.op.unary.f32(i32 7, float %9139)  ; Saturate(value)
  %9141 = fsub fast float %8674, %8679
  %9142 = fsub fast float %8675, %8680
  %9143 = fsub fast float %8676, %8681
  %9144 = fmul fast float %9128, %9141
  %9145 = fmul fast float %9128, %9142
  %9146 = fmul fast float %9128, %9143
  %9147 = fadd fast float %9144, %8679
  %9148 = fadd fast float %9145, %8680
  %9149 = fadd fast float %9146, %8681
  %9150 = fsub fast float 1.000000e+00, %9140
  %9151 = fmul fast float %9150, %9147
  %9152 = fmul fast float %9150, %9148
  %9153 = fmul fast float %9150, %9149
  br label %9213

; <label>:9154                                    ; preds = %9113
  %9155 = fmul fast float %9124, %8686
  %9156 = call float @dx.op.unary.f32(i32 7, float %9155)  ; Saturate(value)
  %9157 = fsub fast float 2.000000e+00, %9156
  %9158 = fmul fast float %9156, 9.921875e-01
  %9159 = fmul fast float %9158, %9157
  %9160 = fadd fast float %9159, 3.906250e-03
  %9161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %9160, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9162 = extractvalue %dx.types.ResRet.f32 %9161, 0
  %9163 = fsub fast float %9156, %9162
  %9164 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9163)  ; FMax(a,b)
  %9165 = fmul fast float %8672, %8653
  %9166 = call float @dx.op.unary.f32(i32 6, float %9165)  ; FAbs(value)
  %9167 = fcmp fast ogt float %9166, 0x3EB0C6F7A0000000
  br i1 %9167, label %9168, label %9174, !dx.controlflow.hints !177

; <label>:9168                                    ; preds = %9154
  %9169 = fmul fast float %9165, 0xBFF7154760000000
  %9170 = call float @dx.op.unary.f32(i32 21, float %9169)  ; Exp(value)
  %9171 = fsub fast float 1.000000e+00, %9170
  %9172 = fdiv fast float %9171, %9165
  %9173 = fmul fast float %9172, %8682
  br label %9174

; <label>:9174                                    ; preds = %9168, %9154
  %9175 = phi float [ %9173, %9168 ], [ %8682, %9154 ]
  %9176 = fadd fast float %9175, %8684
  %9177 = fmul fast float %9176, %9164
  %9178 = fmul fast float %8669, %9177
  %9179 = fsub fast float -0.000000e+00, %9178
  %9180 = fmul fast float %8670, %9177
  %9181 = fsub fast float -0.000000e+00, %9180
  %9182 = fmul fast float %8671, %9177
  %9183 = fsub fast float -0.000000e+00, %9182
  %9184 = call float @dx.op.unary.f32(i32 21, float %9179)  ; Exp(value)
  %9185 = call float @dx.op.unary.f32(i32 21, float %9181)  ; Exp(value)
  %9186 = call float @dx.op.unary.f32(i32 21, float %9183)  ; Exp(value)
  %9187 = fmul fast float %8698, %8698
  %9188 = fadd fast float %9187, 1.000000e+00
  %9189 = fmul fast float %9188, 0x3FAE8EC8A0000000
  %9190 = fmul fast float %9189, %8679
  %9191 = fmul fast float %9189, %8680
  %9192 = fmul fast float %9189, %8681
  %9193 = fmul fast float %8698, %8677
  %9194 = fsub fast float 1.000000e+00, %9193
  %9195 = fmul fast float %8677, %8677
  %9196 = fsub fast float 1.000000e+00, %9195
  %9197 = fmul fast float %9196, 0x3FB45F3060000000
  %9198 = fmul fast float %9194, %9194
  %9199 = fdiv fast float 1.000000e+00, %9198
  %9200 = fmul fast float %9197, %9199
  %9201 = fmul fast float %9200, %8674
  %9202 = fmul fast float %9200, %8675
  %9203 = fmul fast float %9200, %8676
  %9204 = fadd fast float %9201, %9190
  %9205 = fadd fast float %9202, %9191
  %9206 = fadd fast float %9203, %9192
  %9207 = fsub fast float 1.000000e+00, %9184
  %9208 = fsub fast float 1.000000e+00, %9185
  %9209 = fsub fast float 1.000000e+00, %9186
  %9210 = fmul fast float %9204, %9207
  %9211 = fmul fast float %9205, %9208
  %9212 = fmul fast float %9206, %9209
  br label %9213

; <label>:9213                                    ; preds = %9174, %9125
  %9214 = phi float [ %9151, %9125 ], [ %9210, %9174 ]
  %9215 = phi float [ %9152, %9125 ], [ %9211, %9174 ]
  %9216 = phi float [ %9153, %9125 ], [ %9212, %9174 ]
  %9217 = phi float [ %9140, %9125 ], [ %9184, %9174 ]
  %9218 = phi float [ %9140, %9125 ], [ %9185, %9174 ]
  %9219 = phi float [ %9140, %9125 ], [ %9186, %9174 ]
  br i1 %8706, label %9220, label %9418, !dx.controlflow.hints !178

; <label>:9220                                    ; preds = %9213
  %9221 = extractvalue %dx.types.CBufRet.f32 %9119, 0
  %9222 = fmul fast float %9221, %9121
  %9223 = fsub fast float %9116, %9214
  %9224 = fsub fast float %9117, %9215
  %9225 = fsub fast float %9118, %9216
  %9226 = fmul fast float %9222, %9223
  %9227 = fmul fast float %9222, %9224
  %9228 = fmul fast float %9222, %9225
  %9229 = fadd fast float %9226, %9214
  %9230 = fadd fast float %9227, %9215
  %9231 = fadd fast float %9228, %9216
  %9232 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9217)  ; FMax(a,b)
  %9233 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9218)  ; FMax(a,b)
  %9234 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9219)  ; FMax(a,b)
  %9235 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9115)  ; FMax(a,b)
  %9236 = call float @dx.op.binary.f32(i32 35, float %9114, float %9124)  ; FMax(a,b)
  %9237 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9236)  ; FMax(a,b)
  %9238 = fdiv fast float %9114, %9237
  %9239 = call float @dx.op.unary.f32(i32 7, float %9238)  ; Saturate(value)
  %9240 = fdiv fast float %9124, %9237
  %9241 = call float @dx.op.unary.f32(i32 7, float %9240)  ; Saturate(value)
  %9242 = fcmp fast une float %9235, 1.000000e+00
  br i1 %9242, label %9243, label %9256, !dx.controlflow.hints !179

; <label>:9243                                    ; preds = %9220
  %9244 = call float @dx.op.unary.f32(i32 23, float %9235)  ; Log(value)
  %9245 = fmul fast float %9244, 0x3FE62E4300000000
  %9246 = fmul fast float %9116, %9245
  %9247 = fsub fast float -0.000000e+00, %9246
  %9248 = fmul fast float %9117, %9245
  %9249 = fsub fast float -0.000000e+00, %9248
  %9250 = fmul fast float %9118, %9245
  %9251 = fsub fast float -0.000000e+00, %9250
  %9252 = fsub fast float 1.000000e+00, %9235
  %9253 = fdiv fast float %9247, %9252
  %9254 = fdiv fast float %9249, %9252
  %9255 = fdiv fast float %9251, %9252
  br label %9256

; <label>:9256                                    ; preds = %9243, %9220
  %9257 = phi float [ %9253, %9243 ], [ %9116, %9220 ]
  %9258 = phi float [ %9254, %9243 ], [ %9117, %9220 ]
  %9259 = phi float [ %9255, %9243 ], [ %9118, %9220 ]
  %9260 = phi float [ %9245, %9243 ], [ 0.000000e+00, %9220 ]
  %9261 = fcmp fast une float %9232, 1.000000e+00
  br i1 %9261, label %9262, label %9269, !dx.controlflow.hints !180

; <label>:9262                                    ; preds = %9256
  %9263 = call float @dx.op.unary.f32(i32 23, float %9232)  ; Log(value)
  %9264 = fmul fast float %9263, 0x3FE62E4300000000
  %9265 = fmul fast float %9229, %9264
  %9266 = fsub fast float -0.000000e+00, %9265
  %9267 = fsub fast float 1.000000e+00, %9232
  %9268 = fdiv fast float %9266, %9267
  br label %9269

; <label>:9269                                    ; preds = %9262, %9256
  %9270 = phi float [ %9268, %9262 ], [ %9229, %9256 ]
  %9271 = phi float [ %9264, %9262 ], [ 0.000000e+00, %9256 ]
  %9272 = fcmp fast une float %9233, 1.000000e+00
  br i1 %9272, label %9273, label %9280, !dx.controlflow.hints !180

; <label>:9273                                    ; preds = %9269
  %9274 = call float @dx.op.unary.f32(i32 23, float %9233)  ; Log(value)
  %9275 = fmul fast float %9274, 0x3FE62E4300000000
  %9276 = fmul fast float %9230, %9275
  %9277 = fsub fast float -0.000000e+00, %9276
  %9278 = fsub fast float 1.000000e+00, %9233
  %9279 = fdiv fast float %9277, %9278
  br label %9280

; <label>:9280                                    ; preds = %9273, %9269
  %9281 = phi float [ %9279, %9273 ], [ %9230, %9269 ]
  %9282 = phi float [ %9275, %9273 ], [ 0.000000e+00, %9269 ]
  %9283 = fcmp fast une float %9234, 1.000000e+00
  br i1 %9283, label %9284, label %9291, !dx.controlflow.hints !180

; <label>:9284                                    ; preds = %9280
  %9285 = call float @dx.op.unary.f32(i32 23, float %9234)  ; Log(value)
  %9286 = fmul fast float %9285, 0x3FE62E4300000000
  %9287 = fmul fast float %9231, %9286
  %9288 = fsub fast float -0.000000e+00, %9287
  %9289 = fsub fast float 1.000000e+00, %9234
  %9290 = fdiv fast float %9288, %9289
  br label %9291

; <label>:9291                                    ; preds = %9284, %9280
  %9292 = phi float [ %9290, %9284 ], [ %9231, %9280 ]
  %9293 = phi float [ %9286, %9284 ], [ 0.000000e+00, %9280 ]
  %9294 = fmul fast float %9257, %9241
  %9295 = fmul fast float %9258, %9241
  %9296 = fmul fast float %9259, %9241
  %9297 = fmul fast float %9260, %9241
  %9298 = fmul fast float %9270, %9239
  %9299 = fmul fast float %9281, %9239
  %9300 = fmul fast float %9292, %9239
  %9301 = fmul fast float %9271, %9239
  %9302 = fmul fast float %9282, %9239
  %9303 = fmul fast float %9293, %9239
  %9304 = fadd fast float %9298, %9294
  %9305 = fadd fast float %9299, %9295
  %9306 = fadd fast float %9300, %9296
  %9307 = fadd fast float %9301, %9297
  %9308 = fadd fast float %9302, %9297
  %9309 = fadd fast float %9303, %9297
  %9310 = fcmp fast une float %9307, 0.000000e+00
  br i1 %9310, label %9311, label %9318, !dx.controlflow.hints !181

; <label>:9311                                    ; preds = %9291
  %9312 = fmul fast float %9307, 0x3FF7154760000000
  %9313 = call float @dx.op.unary.f32(i32 21, float %9312)  ; Exp(value)
  %9314 = fsub fast float 1.000000e+00, %9313
  %9315 = fmul fast float %9304, %9314
  %9316 = fsub fast float -0.000000e+00, %9315
  %9317 = fdiv fast float %9316, %9307
  br label %9318

; <label>:9318                                    ; preds = %9311, %9291
  %9319 = phi float [ %9313, %9311 ], [ 1.000000e+00, %9291 ]
  %9320 = phi float [ %9317, %9311 ], [ %9304, %9291 ]
  %9321 = fcmp fast une float %9308, 0.000000e+00
  br i1 %9321, label %9322, label %9329, !dx.controlflow.hints !181

; <label>:9322                                    ; preds = %9318
  %9323 = fmul fast float %9308, 0x3FF7154760000000
  %9324 = call float @dx.op.unary.f32(i32 21, float %9323)  ; Exp(value)
  %9325 = fsub fast float 1.000000e+00, %9324
  %9326 = fmul fast float %9305, %9325
  %9327 = fsub fast float -0.000000e+00, %9326
  %9328 = fdiv fast float %9327, %9308
  br label %9329

; <label>:9329                                    ; preds = %9322, %9318
  %9330 = phi float [ %9324, %9322 ], [ 1.000000e+00, %9318 ]
  %9331 = phi float [ %9328, %9322 ], [ %9305, %9318 ]
  %9332 = fcmp fast une float %9309, 0.000000e+00
  br i1 %9332, label %9333, label %9340, !dx.controlflow.hints !181

; <label>:9333                                    ; preds = %9329
  %9334 = fmul fast float %9309, 0x3FF7154760000000
  %9335 = call float @dx.op.unary.f32(i32 21, float %9334)  ; Exp(value)
  %9336 = fsub fast float 1.000000e+00, %9335
  %9337 = fmul fast float %9306, %9336
  %9338 = fsub fast float -0.000000e+00, %9337
  %9339 = fdiv fast float %9338, %9309
  br label %9340

; <label>:9340                                    ; preds = %9333, %9329
  %9341 = phi float [ %9335, %9333 ], [ 1.000000e+00, %9329 ]
  %9342 = phi float [ %9339, %9333 ], [ %9306, %9329 ]
  %9343 = fcmp fast ogt float %9239, %9241
  br i1 %9343, label %9344, label %9364

; <label>:9344                                    ; preds = %9340
  %9345 = fsub fast float 1.000000e+00, %9241
  %9346 = fmul fast float %9257, %9345
  %9347 = fmul fast float %9258, %9345
  %9348 = fmul fast float %9259, %9345
  %9349 = fmul fast float %9260, %9345
  %9350 = fcmp fast une float %9349, 0.000000e+00
  br i1 %9350, label %9351, label %9402, !dx.controlflow.hints !182

; <label>:9351                                    ; preds = %9344
  %9352 = fmul fast float %9349, 0x3FF7154760000000
  %9353 = call float @dx.op.unary.f32(i32 21, float %9352)  ; Exp(value)
  %9354 = fsub fast float 1.000000e+00, %9353
  %9355 = fmul fast float %9346, %9354
  %9356 = fsub fast float -0.000000e+00, %9355
  %9357 = fmul fast float %9347, %9354
  %9358 = fsub fast float -0.000000e+00, %9357
  %9359 = fmul fast float %9348, %9354
  %9360 = fsub fast float -0.000000e+00, %9359
  %9361 = fdiv fast float %9356, %9349
  %9362 = fdiv fast float %9358, %9349
  %9363 = fdiv fast float %9360, %9349
  br label %9402

; <label>:9364                                    ; preds = %9340
  %9365 = fsub fast float 1.000000e+00, %9239
  %9366 = fmul fast float %9270, %9365
  %9367 = fmul fast float %9281, %9365
  %9368 = fmul fast float %9292, %9365
  %9369 = fmul fast float %9271, %9365
  %9370 = fmul fast float %9282, %9365
  %9371 = fmul fast float %9293, %9365
  %9372 = fcmp fast une float %9369, 0.000000e+00
  br i1 %9372, label %9373, label %9380, !dx.controlflow.hints !181

; <label>:9373                                    ; preds = %9364
  %9374 = fmul fast float %9369, 0x3FF7154760000000
  %9375 = call float @dx.op.unary.f32(i32 21, float %9374)  ; Exp(value)
  %9376 = fsub fast float 1.000000e+00, %9375
  %9377 = fmul fast float %9366, %9376
  %9378 = fsub fast float -0.000000e+00, %9377
  %9379 = fdiv fast float %9378, %9369
  br label %9380

; <label>:9380                                    ; preds = %9373, %9364
  %9381 = phi float [ %9379, %9373 ], [ %9366, %9364 ]
  %9382 = phi float [ %9375, %9373 ], [ 1.000000e+00, %9364 ]
  %9383 = fcmp fast une float %9370, 0.000000e+00
  br i1 %9383, label %9384, label %9391, !dx.controlflow.hints !181

; <label>:9384                                    ; preds = %9380
  %9385 = fmul fast float %9370, 0x3FF7154760000000
  %9386 = call float @dx.op.unary.f32(i32 21, float %9385)  ; Exp(value)
  %9387 = fsub fast float 1.000000e+00, %9386
  %9388 = fmul fast float %9367, %9387
  %9389 = fsub fast float -0.000000e+00, %9388
  %9390 = fdiv fast float %9389, %9370
  br label %9391

; <label>:9391                                    ; preds = %9384, %9380
  %9392 = phi float [ %9390, %9384 ], [ %9367, %9380 ]
  %9393 = phi float [ %9386, %9384 ], [ 1.000000e+00, %9380 ]
  %9394 = fcmp fast une float %9371, 0.000000e+00
  br i1 %9394, label %9395, label %9402, !dx.controlflow.hints !181

; <label>:9395                                    ; preds = %9391
  %9396 = fmul fast float %9371, 0x3FF7154760000000
  %9397 = call float @dx.op.unary.f32(i32 21, float %9396)  ; Exp(value)
  %9398 = fsub fast float 1.000000e+00, %9397
  %9399 = fmul fast float %9368, %9398
  %9400 = fsub fast float -0.000000e+00, %9399
  %9401 = fdiv fast float %9400, %9371
  br label %9402

; <label>:9402                                    ; preds = %9395, %9391, %9351, %9344
  %9403 = phi float [ %9401, %9395 ], [ %9363, %9351 ], [ %9348, %9344 ], [ %9368, %9391 ]
  %9404 = phi float [ %9392, %9395 ], [ %9362, %9351 ], [ %9347, %9344 ], [ %9392, %9391 ]
  %9405 = phi float [ %9381, %9395 ], [ %9361, %9351 ], [ %9346, %9344 ], [ %9381, %9391 ]
  %9406 = phi float [ %9397, %9395 ], [ %9353, %9351 ], [ 1.000000e+00, %9344 ], [ 1.000000e+00, %9391 ]
  %9407 = phi float [ %9393, %9395 ], [ %9353, %9351 ], [ 1.000000e+00, %9344 ], [ %9393, %9391 ]
  %9408 = phi float [ %9382, %9395 ], [ %9353, %9351 ], [ 1.000000e+00, %9344 ], [ %9382, %9391 ]
  %9409 = fmul fast float %9408, %9320
  %9410 = fmul fast float %9407, %9331
  %9411 = fmul fast float %9406, %9342
  %9412 = fadd fast float %9409, %9405
  %9413 = fadd fast float %9410, %9404
  %9414 = fadd fast float %9411, %9403
  %9415 = fmul fast float %9408, %9319
  %9416 = fmul fast float %9407, %9330
  %9417 = fmul fast float %9406, %9341
  br label %9418

; <label>:9418                                    ; preds = %9402, %9213
  %9419 = phi float [ %9417, %9402 ], [ %9219, %9213 ]
  %9420 = phi float [ %9416, %9402 ], [ %9218, %9213 ]
  %9421 = phi float [ %9415, %9402 ], [ %9217, %9213 ]
  %9422 = phi float [ %9414, %9402 ], [ %9216, %9213 ]
  %9423 = phi float [ %9413, %9402 ], [ %9215, %9213 ]
  %9424 = phi float [ %9412, %9402 ], [ %9214, %9213 ]
  %9425 = fmul fast float %9424, %8370
  %9426 = fmul fast float %9423, %8370
  %9427 = fmul fast float %9422, %8370
  %9428 = fmul fast float %9421, %8661
  %9429 = call float @dx.op.dot3.f32(i32 55, float %9421, float %9420, float %9419, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9430 = call float @dx.op.dot3.f32(i32 55, float %9425, float %9426, float %9427, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9431 = select i1 %262, float %9429, float %9421
  %9432 = select i1 %262, float %9429, float %9420
  %9433 = select i1 %262, float 1.000000e+00, float %9419
  %9434 = select i1 %262, float %9430, float %9425
  %9435 = select i1 %262, float 0.000000e+00, float %9426
  %9436 = select i1 %262, float 0.000000e+00, float %9427
  %9437 = fmul fast float %9431, %8655
  %9438 = fmul fast float %9432, %8656
  %9439 = fmul fast float %9433, %8657
  %9440 = fadd fast float %9437, %9434
  %9441 = fadd fast float %9438, %9435
  %9442 = fadd fast float %9436, %9439
  %9443 = fmul fast float %9431, %8658
  %9444 = fmul fast float %9432, %8659
  %9445 = fmul fast float %9433, %8660
  %9446 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9447 = extractvalue %dx.types.CBufRet.i32 %9446, 0
  %9448 = icmp eq i32 %9447, 0
  br i1 %9448, label %9816, label %9449, !dx.controlflow.hints !183

; <label>:9449                                    ; preds = %9418
  %9450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9451 = extractvalue %dx.types.CBufRet.f32 %9450, 2
  %9452 = extractvalue %dx.types.CBufRet.f32 %9450, 3
  %9453 = fmul fast float %9451, %116
  %9454 = fmul fast float %9452, %117
  %9455 = fmul fast float %9453, 2.000000e+00
  %9456 = fmul fast float %9454, 2.000000e+00
  %9457 = fsub fast float 1.000000e+00, %9455
  %9458 = fsub fast float 1.000000e+00, %9456
  %9459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9460 = extractvalue %dx.types.CBufRet.f32 %9459, 0
  %9461 = extractvalue %dx.types.CBufRet.f32 %9459, 1
  %9462 = extractvalue %dx.types.CBufRet.f32 %9459, 2
  %9463 = fmul fast float %9457, %9460
  %9464 = fmul fast float %9457, %9461
  %9465 = fmul fast float %9457, %9462
  %9466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9467 = extractvalue %dx.types.CBufRet.f32 %9466, 0
  %9468 = extractvalue %dx.types.CBufRet.f32 %9466, 1
  %9469 = extractvalue %dx.types.CBufRet.f32 %9466, 2
  %9470 = fmul fast float %9458, %9467
  %9471 = fmul fast float %9458, %9468
  %9472 = fmul fast float %9458, %9469
  %9473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9474 = extractvalue %dx.types.CBufRet.f32 %9473, 0
  %9475 = extractvalue %dx.types.CBufRet.f32 %9473, 1
  %9476 = extractvalue %dx.types.CBufRet.f32 %9473, 2
  %9477 = fadd fast float %9470, %9474
  %9478 = fadd fast float %9477, %9463
  %9479 = fadd fast float %9471, %9475
  %9480 = fadd fast float %9479, %9464
  %9481 = fadd fast float %9472, %9476
  %9482 = fadd fast float %9481, %9465
  %9483 = fmul fast float %9478, %8654
  %9484 = fmul fast float %9480, %8654
  %9485 = fmul fast float %9482, %8654
  %9486 = fmul fast float %9483, %9483
  %9487 = fmul fast float %9484, %9484
  %9488 = fadd fast float %9486, %9487
  %9489 = fmul fast float %9485, %9485
  %9490 = fadd fast float %9488, %9489
  %9491 = call float @dx.op.unary.f32(i32 24, float %9490)  ; Sqrt(value)
  %9492 = extractvalue %dx.types.CBufRet.f32 %8381, 0
  %9493 = fsub fast float %9491, %9492
  %9494 = extractvalue %dx.types.CBufRet.f32 %8381, 2
  %9495 = fmul fast float %9493, %9494
  %9496 = call float @dx.op.unary.f32(i32 7, float %9495)  ; Saturate(value)
  %9497 = fadd fast float %9496, -5.000000e-01
  %9498 = fmul fast float %9497, 2.000000e+00
  %9499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9500 = extractvalue %dx.types.CBufRet.f32 %9499, 2
  %9501 = call float @dx.op.binary.f32(i32 36, float %9500, float %9498)  ; FMin(a,b)
  %9502 = fsub fast float -0.000000e+00, %9500
  %9503 = fcmp fast ogt float %9501, %9502
  br i1 %9503, label %9504, label %9816, !dx.controlflow.hints !184

; <label>:9504                                    ; preds = %9449
  %9505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9506 = extractvalue %dx.types.CBufRet.f32 %9505, 3
  %9507 = fcmp fast ogt float %9506, 0.000000e+00
  br i1 %9507, label %9508, label %9583, !dx.controlflow.hints !185

; <label>:9508                                    ; preds = %9504
  %9509 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9510 = extractvalue %dx.types.Dimensions %9509, 0
  %9511 = sitofp i32 %9510 to float
  %9512 = extractvalue %dx.types.Dimensions %9509, 1
  %9513 = sitofp i32 %9512 to float
  %9514 = fmul fast float %9453, %9511
  %9515 = fmul fast float %9454, %9513
  %9516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9517 = extractvalue %dx.types.CBufRet.f32 %9516, 1
  %9518 = fsub fast float -0.000000e+00, %9517
  %9519 = fptoui float %9518 to i32
  %9520 = fptoui float %9514 to i32
  %9521 = fptoui float %9515 to i32
  %9522 = and i32 %9519, 31
  %9523 = lshr i32 %9520, %9522
  %9524 = lshr i32 %9521, %9522
  %9525 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9519, i32 %9523, i32 %9524, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9526 = extractvalue %dx.types.ResRet.f32 %9525, 0
  %9527 = fcmp fast olt float %9526, -1.000000e+00
  %9528 = fcmp fast ogt float %9526, -1.000000e+00
  %9529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9530 = extractvalue %dx.types.CBufRet.f32 %9529, 1
  %9531 = select i1 %9528, float %9530, float 1.000000e+00
  %9532 = fadd fast float %9526, 1.000000e+00
  %9533 = fmul fast float %9531, %9532
  %9534 = call float @dx.op.unary.f32(i32 6, float %9533)  ; FAbs(value)
  %9535 = extractvalue %dx.types.CBufRet.f32 %9529, 3
  %9536 = fcmp fast oge float %9534, %9535
  %9537 = select i1 %9536, float 0x4197782600000000, float %9534
  %9538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9539 = extractvalue %dx.types.CBufRet.f32 %9538, 0
  %9540 = extractvalue %dx.types.CBufRet.f32 %9538, 1
  %9541 = extractvalue %dx.types.CBufRet.f32 %9538, 2
  %9542 = select i1 %9527, float %9539, float %9460
  %9543 = select i1 %9527, float %9540, float %9461
  %9544 = select i1 %9527, float %9541, float %9462
  %9545 = fmul fast float %9542, %9457
  %9546 = fmul fast float %9543, %9457
  %9547 = fmul fast float %9544, %9457
  %9548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9549 = extractvalue %dx.types.CBufRet.f32 %9548, 0
  %9550 = extractvalue %dx.types.CBufRet.f32 %9548, 1
  %9551 = extractvalue %dx.types.CBufRet.f32 %9548, 2
  %9552 = select i1 %9527, float %9549, float %9467
  %9553 = select i1 %9527, float %9550, float %9468
  %9554 = select i1 %9527, float %9551, float %9469
  %9555 = fmul fast float %9552, %9458
  %9556 = fmul fast float %9553, %9458
  %9557 = fmul fast float %9554, %9458
  %9558 = fadd fast float %9555, %9545
  %9559 = fadd fast float %9556, %9546
  %9560 = fadd fast float %9557, %9547
  %9561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9562 = extractvalue %dx.types.CBufRet.f32 %9561, 0
  %9563 = extractvalue %dx.types.CBufRet.f32 %9561, 1
  %9564 = extractvalue %dx.types.CBufRet.f32 %9561, 2
  %9565 = select i1 %9527, float %9562, float %9474
  %9566 = select i1 %9527, float %9563, float %9475
  %9567 = select i1 %9527, float %9564, float %9476
  %9568 = fadd fast float %9558, %9565
  %9569 = fadd fast float %9559, %9566
  %9570 = fadd fast float %9560, %9567
  %9571 = fmul fast float %9568, %9537
  %9572 = fmul fast float %9569, %9537
  %9573 = fmul fast float %9570, %9537
  %9574 = fmul fast float %9571, %9571
  %9575 = fmul fast float %9572, %9572
  %9576 = fadd fast float %9574, %9575
  %9577 = fmul fast float %9573, %9573
  %9578 = fadd fast float %9576, %9577
  %9579 = call float @dx.op.unary.f32(i32 24, float %9578)  ; Sqrt(value)
  %9580 = fsub fast float %9579, %9492
  %9581 = fmul fast float %9580, %9494
  %9582 = call float @dx.op.unary.f32(i32 7, float %9581)  ; Saturate(value)
  br label %9583

; <label>:9583                                    ; preds = %9508, %9504
  %9584 = phi float [ %9582, %9508 ], [ 1.000000e+00, %9504 ]
  %9585 = fmul fast float %9501, 5.000000e-01
  %9586 = fadd fast float %9585, 5.000000e-01
  %9587 = call float @dx.op.unary.f32(i32 22, float %9586)  ; Frc(value)
  %9588 = call float @dx.op.unary.f32(i32 27, float %9587)  ; Round_ni(value)
  %9589 = call float @dx.op.unary.f32(i32 22, float %9587)  ; Frc(value)
  %9590 = fmul fast float %9589, 2.000000e+00
  %9591 = fadd fast float %9590, -1.000000e+00
  %9592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %55, float %9453, float %9454, float %9588, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9593 = extractvalue %dx.types.ResRet.f32 %9592, 0
  %9594 = extractvalue %dx.types.ResRet.f32 %9592, 1
  %9595 = extractvalue %dx.types.ResRet.f32 %9592, 2
  %9596 = extractvalue %dx.types.ResRet.f32 %9592, 3
  %9597 = fadd fast float %9593, -5.000000e-01
  %9598 = fadd fast float %9595, -5.000000e-01
  %9599 = fmul fast float %9597, 0xBFD5555560000000
  %9600 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9598, float %9599)  ; FMad(a,b,c)
  %9601 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9594, float 0.000000e+00)  ; FMad(a,b,c)
  %9602 = fadd fast float %9601, %9596
  %9603 = fmul fast float %9597, -7.500000e-01
  %9604 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9598, float %9603)  ; FMad(a,b,c)
  %9605 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9594, float 0.000000e+00)  ; FMad(a,b,c)
  %9606 = fadd fast float %9605, %9596
  %9607 = call float @dx.op.binary.f32(i32 35, float %9600, float -1.000000e+00)  ; FMax(a,b)
  %9608 = call float @dx.op.binary.f32(i32 35, float %9602, float -1.000000e+00)  ; FMax(a,b)
  %9609 = call float @dx.op.binary.f32(i32 35, float %9604, float -1.000000e+00)  ; FMax(a,b)
  %9610 = call float @dx.op.binary.f32(i32 35, float %9606, float -1.000000e+00)  ; FMax(a,b)
  %9611 = call float @dx.op.binary.f32(i32 36, float %9607, float 1.000000e+00)  ; FMin(a,b)
  %9612 = call float @dx.op.binary.f32(i32 36, float %9608, float 1.000000e+00)  ; FMin(a,b)
  %9613 = call float @dx.op.binary.f32(i32 36, float %9609, float 1.000000e+00)  ; FMin(a,b)
  %9614 = call float @dx.op.binary.f32(i32 36, float %9610, float 1.000000e+00)  ; FMin(a,b)
  %9615 = fcmp fast olt float %9611, 0x3FEFFF8020000000
  br i1 %9615, label %9616, label %9731, !dx.controlflow.hints !186

; <label>:9616                                    ; preds = %9583
  %9617 = extractvalue %dx.types.CBufRet.f32 %9499, 3
  %9618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9619 = extractvalue %dx.types.CBufRet.f32 %9618, 0
  %9620 = extractvalue %dx.types.CBufRet.f32 %9618, 1
  %9621 = extractvalue %dx.types.CBufRet.f32 %9618, 2
  %9622 = extractvalue %dx.types.CBufRet.f32 %9618, 3
  %9623 = fsub fast float %9619, %9611
  %9624 = fsub fast float %9620, %9612
  %9625 = fsub fast float %9621, %9613
  %9626 = fsub fast float %9622, %9614
  %9627 = fmul fast float %9623, %9617
  %9628 = fmul fast float %9624, %9617
  %9629 = fmul fast float %9625, %9617
  %9630 = fmul fast float %9626, %9617
  %9631 = fadd fast float %9627, %9611
  %9632 = fadd fast float %9628, %9612
  %9633 = fsub fast float -0.000000e+00, %9632
  %9634 = fadd fast float %9629, %9613
  %9635 = fadd fast float %9630, %9614
  %9636 = fmul fast float %9631, %9631
  %9637 = fsub fast float %9632, %9636
  %9638 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9637)  ; FMax(a,b)
  %9639 = fdiv fast float 1.000000e+00, %9638
  %9640 = fmul fast float %9632, %9631
  %9641 = fsub fast float %9634, %9640
  %9642 = fsub fast float %9591, %9631
  %9643 = fmul fast float %9591, %9591
  %9644 = fsub fast float %9643, %9632
  %9645 = fmul fast float %9642, %9639
  %9646 = fmul fast float %9645, %9641
  %9647 = fsub fast float %9644, %9646
  %9648 = fmul fast float %9632, %9632
  %9649 = fsub fast float %9635, %9648
  %9650 = fmul fast float %9641, %9641
  %9651 = fmul fast float %9650, %9639
  %9652 = fsub fast float %9649, %9651
  %9653 = fdiv fast float %9647, %9652
  %9654 = fmul fast float %9641, %9653
  %9655 = fsub fast float %9642, %9654
  %9656 = fmul fast float %9655, %9639
  %9657 = fmul fast float %9656, %9631
  %9658 = fsub fast float 1.000000e+00, %9657
  %9659 = fmul fast float %9632, %9653
  %9660 = fsub fast float %9658, %9659
  %9661 = fmul fast float %9656, %9656
  %9662 = fmul fast float %9653, 4.000000e+00
  %9663 = fmul fast float %9662, %9660
  %9664 = fsub fast float %9661, %9663
  %9665 = call float @dx.op.unary.f32(i32 24, float %9664)  ; Sqrt(value)
  %9666 = fcmp fast oge float %9656, 0.000000e+00
  %9667 = fsub fast float -0.000000e+00, %9665
  %9668 = select i1 %9666, float %9667, float %9665
  %9669 = fsub fast float %9668, %9656
  %9670 = fdiv fast float %9669, %9653
  %9671 = fdiv fast float %9660, %9669
  %9672 = fmul fast float %9670, 5.000000e-01
  %9673 = fmul fast float %9671, 2.000000e+00
  %9674 = select i1 %9666, float %9672, float %9673
  %9675 = select i1 %9666, float %9673, float %9672
  %9676 = call float @dx.op.binary.f32(i32 35, float %9674, float %9675)  ; FMax(a,b)
  %9677 = call float @dx.op.binary.f32(i32 36, float %9674, float %9675)  ; FMin(a,b)
  %9678 = fcmp fast ogt float %9591, %9677
  br i1 %9678, label %9679, label %9689

; <label>:9679                                    ; preds = %9616
  %9680 = fsub fast float %9591, %9677
  %9681 = fsub fast float %9676, %9677
  %9682 = fmul fast float %9680, %9681
  %9683 = fmul fast float %9676, %9591
  %9684 = fadd fast float %9676, %9591
  %9685 = fmul fast float %9684, %9631
  %9686 = fadd fast float %9683, %9632
  %9687 = fsub fast float %9686, %9685
  %9688 = fdiv fast float %9687, %9682
  br label %9689

; <label>:9689                                    ; preds = %9679, %9616
  %9690 = phi float [ %9688, %9679 ], [ 0.000000e+00, %9616 ]
  %9691 = fcmp fast ogt float %9591, %9676
  %9692 = fsub fast float %9591, %9676
  br i1 %9691, label %9693, label %9703

; <label>:9693                                    ; preds = %9689
  %9694 = fsub fast float %9676, %9677
  %9695 = fmul fast float %9694, %9692
  %9696 = fmul fast float %9677, %9591
  %9697 = fadd fast float %9677, %9591
  %9698 = fmul fast float %9697, %9631
  %9699 = fsub fast float %9633, %9696
  %9700 = fadd fast float %9699, %9698
  %9701 = fdiv fast float %9700, %9695
  %9702 = fadd fast float %9701, %9690
  br label %9703

; <label>:9703                                    ; preds = %9693, %9689
  %9704 = phi float [ %9702, %9693 ], [ %9690, %9689 ]
  %9705 = fsub fast float %9591, %9677
  %9706 = fmul fast float %9705, %9692
  %9707 = fmul fast float %9677, %9676
  %9708 = fadd fast float %9677, %9676
  %9709 = fmul fast float %9708, %9631
  %9710 = fadd fast float %9707, %9632
  %9711 = fsub fast float %9710, %9709
  %9712 = fdiv fast float %9711, %9706
  %9713 = call float @dx.op.unary.f32(i32 7, float %9704)  ; Saturate(value)
  %9714 = fcmp fast oeq float %8382, 0.000000e+00
  %9715 = extractvalue %dx.types.CBufRet.f32 %9499, 0
  %9716 = fcmp fast oeq float %9715, 0.000000e+00
  %9717 = or i1 %9714, %9716
  %9718 = fmul fast float %9715, 2.000000e+00
  %9719 = fadd fast float %9500, %9501
  %9720 = fdiv fast float %9719, %9718
  %9721 = call float @dx.op.unary.f32(i32 7, float %9720)  ; Saturate(value)
  %9722 = fmul fast float %9721, 2.000000e+00
  %9723 = fsub fast float 3.000000e+00, %9722
  %9724 = fmul fast float %9721, %9721
  %9725 = fmul fast float %9724, %9723
  %9726 = select i1 %9717, float 1.000000e+00, float %9725
  %9727 = fmul fast float %9712, %8382
  %9728 = fadd fast float %9713, %9727
  %9729 = call float @dx.op.unary.f32(i32 7, float %9728)  ; Saturate(value)
  %9730 = fmul fast float %9726, %9729
  br label %9731

; <label>:9731                                    ; preds = %9703, %9583
  %9732 = phi float [ %9730, %9703 ], [ 0.000000e+00, %9583 ]
  %9733 = fsub fast float 1.000000e+00, %9732
  %9734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %55, float %9453, float %9454, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9735 = extractvalue %dx.types.ResRet.f32 %9734, 0
  %9736 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9737 = extractvalue %dx.types.CBufRet.i32 %9736, 2
  %9738 = icmp eq i32 %9737, 0
  br i1 %9738, label %9744, label %9739

; <label>:9739                                    ; preds = %9731
  %9740 = call float @dx.op.unary.f32(i32 7, float %9732)  ; Saturate(value)
  %9741 = fadd fast float %9735, -1.000000e+00
  %9742 = fmul fast float %9740, %9741
  %9743 = fadd fast float %9742, 1.000000e+00
  br label %9744

; <label>:9744                                    ; preds = %9739, %9731
  %9745 = phi float [ %9743, %9739 ], [ %9733, %9731 ]
  br i1 %9507, label %9746, label %9764

; <label>:9746                                    ; preds = %9744
  %9747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9748 = extractvalue %dx.types.CBufRet.f32 %9747, 1
  %9749 = fsub fast float %9584, %9748
  %9750 = call float @dx.op.unary.f32(i32 7, float %9749)  ; Saturate(value)
  %9751 = fsub fast float %9584, %9506
  %9752 = call float @dx.op.unary.f32(i32 7, float %9751)  ; Saturate(value)
  %9753 = fsub fast float %9750, %9752
  %9754 = fsub fast float %9586, %9752
  %9755 = fdiv fast float %9754, %9753
  %9756 = call float @dx.op.unary.f32(i32 7, float %9755)  ; Saturate(value)
  %9757 = fmul fast float %9756, 2.000000e+00
  %9758 = fsub fast float 3.000000e+00, %9757
  %9759 = fsub fast float %9735, %9745
  %9760 = fmul fast float %9756, %9756
  %9761 = fmul fast float %9760, %9759
  %9762 = fmul fast float %9761, %9758
  %9763 = fadd fast float %9762, %9745
  br label %9764

; <label>:9764                                    ; preds = %9746, %9744
  %9765 = phi float [ %9763, %9746 ], [ %9745, %9744 ]
  %9766 = call float @dx.op.binary.f32(i32 35, float %9735, float %9765)  ; FMax(a,b)
  %9767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9768 = extractvalue %dx.types.CBufRet.i32 %9767, 2
  %9769 = and i32 %9768, 1
  %9770 = icmp eq i32 %9769, 0
  %9771 = fcmp fast une float %9766, 1.000000e+00
  %9772 = and i1 %9771, %9770
  br i1 %9772, label %9773, label %9792

; <label>:9773                                    ; preds = %9764
  %9774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %55, float %9453, float %9454, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9775 = extractvalue %dx.types.ResRet.f32 %9774, 0
  %9776 = extractvalue %dx.types.ResRet.f32 %9774, 1
  %9777 = extractvalue %dx.types.ResRet.f32 %9774, 2
  %9778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9779 = extractvalue %dx.types.CBufRet.f32 %9778, 1
  %9780 = fmul fast float %9779, %9775
  %9781 = fmul fast float %9779, %9776
  %9782 = fmul fast float %9779, %9777
  %9783 = fcmp fast ogt float %9735, 0x3FEFFF2E40000000
  %9784 = fsub fast float 1.000000e+00, %9766
  %9785 = fsub fast float 1.000000e+00, %9735
  %9786 = fdiv fast float %9784, %9785
  %9787 = call float @dx.op.unary.f32(i32 7, float %9786)  ; Saturate(value)
  %9788 = select i1 %9783, float 0.000000e+00, float %9787
  %9789 = fmul fast float %9780, %9788
  %9790 = fmul fast float %9781, %9788
  %9791 = fmul fast float %9782, %9788
  br label %9792

; <label>:9792                                    ; preds = %9773, %9764
  %9793 = phi float [ 0.000000e+00, %9764 ], [ %9789, %9773 ]
  %9794 = phi float [ 0.000000e+00, %9764 ], [ %9790, %9773 ]
  %9795 = phi float [ 0.000000e+00, %9764 ], [ %9791, %9773 ]
  %9796 = fmul fast float %9793, %8370
  %9797 = fmul fast float %9794, %8370
  %9798 = fmul fast float %9795, %8370
  %9799 = fmul fast float %9766, %9428
  %9800 = call float @dx.op.dot3.f32(i32 55, float %9766, float %9766, float %9766, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9801 = call float @dx.op.dot3.f32(i32 55, float %9796, float %9797, float %9798, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9802 = select i1 %262, float %9800, float %9766
  %9803 = select i1 %262, float 1.000000e+00, float %9766
  %9804 = select i1 %262, float %9801, float %9796
  %9805 = select i1 %262, float 0.000000e+00, float %9797
  %9806 = select i1 %262, float 0.000000e+00, float %9798
  %9807 = fmul fast float %9802, %9440
  %9808 = fmul fast float %9802, %9441
  %9809 = fmul fast float %9803, %9442
  %9810 = fadd fast float %9807, %9804
  %9811 = fadd fast float %9808, %9805
  %9812 = fadd fast float %9806, %9809
  %9813 = fmul fast float %9802, %9443
  %9814 = fmul fast float %9802, %9444
  %9815 = fmul fast float %9803, %9445
  br label %9816

; <label>:9816                                    ; preds = %9792, %9449, %9418, %8650
  %9817 = phi float [ %8655, %8650 ], [ %9440, %9418 ], [ %9810, %9792 ], [ %9440, %9449 ]
  %9818 = phi float [ %8656, %8650 ], [ %9441, %9418 ], [ %9811, %9792 ], [ %9441, %9449 ]
  %9819 = phi float [ %8657, %8650 ], [ %9442, %9418 ], [ %9812, %9792 ], [ %9442, %9449 ]
  %9820 = phi float [ %8658, %8650 ], [ %9443, %9418 ], [ %9813, %9792 ], [ %9443, %9449 ]
  %9821 = phi float [ %8659, %8650 ], [ %9444, %9418 ], [ %9814, %9792 ], [ %9444, %9449 ]
  %9822 = phi float [ %8660, %8650 ], [ %9445, %9418 ], [ %9815, %9792 ], [ %9445, %9449 ]
  %9823 = phi float [ %8661, %8650 ], [ %9428, %9418 ], [ %9799, %9792 ], [ %9428, %9449 ]
  %9824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9825 = extractvalue %dx.types.CBufRet.f32 %9824, 2
  %9826 = extractvalue %dx.types.CBufRet.f32 %9824, 3
  %9827 = fmul fast float %9825, %116
  %9828 = fmul fast float %9826, %117
  %9829 = call float @dx.op.unary.f32(i32 7, float %9827)  ; Saturate(value)
  %9830 = call float @dx.op.unary.f32(i32 7, float %9828)  ; Saturate(value)
  %9831 = select i1 %8392, i32 2, i32 0
  %9832 = or i32 %9831, 1
  %9833 = uitofp i32 %9832 to float
  %9834 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9829, float %9830, float %9833, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9835 = extractvalue %dx.types.ResRet.f32 %9834, 0
  %9836 = extractvalue %dx.types.ResRet.f32 %9834, 1
  %9837 = extractvalue %dx.types.ResRet.f32 %9834, 2
  %9838 = extractvalue %dx.types.ResRet.f32 %9834, 3
  %9839 = add nuw nsw i32 %9831, 2
  %9840 = uitofp i32 %9839 to float
  %9841 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9829, float %9830, float %9840, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9842 = extractvalue %dx.types.ResRet.f32 %9841, 0
  %9843 = extractvalue %dx.types.ResRet.f32 %9841, 1
  %9844 = extractvalue %dx.types.ResRet.f32 %9841, 2
  %9845 = extractvalue %dx.types.ResRet.f32 %9841, 3
  %9846 = call float @dx.op.binary.f32(i32 35, float %9836, float %9837)  ; FMax(a,b)
  %9847 = call float @dx.op.binary.f32(i32 35, float %9835, float %9846)  ; FMax(a,b)
  %9848 = call float @dx.op.binary.f32(i32 35, float %9847, float %9838)  ; FMax(a,b)
  %9849 = call float @dx.op.binary.f32(i32 36, float %9843, float %9844)  ; FMin(a,b)
  %9850 = call float @dx.op.binary.f32(i32 36, float %9842, float %9849)  ; FMin(a,b)
  %9851 = call float @dx.op.binary.f32(i32 36, float %9850, float %9845)  ; FMin(a,b)
  %9852 = fmul fast float %9848, 2.550000e+02
  %9853 = fadd fast float %9852, 0x3F70101020000000
  %9854 = fptoui float %9853 to i32
  %9855 = fmul fast float %9851, 2.550000e+02
  %9856 = fadd fast float %9855, 0x3F70101020000000
  %9857 = fptoui float %9856 to i32
  %9858 = icmp ult i32 %9854, %9857
  br i1 %9858, label %9859, label %10028

; <label>:9859                                    ; preds = %9816
  %9860 = fcmp fast ogt float %102, 9.843750e-01
  %9861 = fadd fast float %8654, -4.000000e+00
  %9862 = select i1 %9860, float -4.000000e+00, float %9861
  %9863 = call float @dx.op.binary.f32(i32 35, float %9862, float 0.000000e+00)  ; FMax(a,b)
  %9864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9865 = extractvalue %dx.types.CBufRet.f32 %9864, 0
  %9866 = fadd fast float %9865, %9863
  %9867 = extractvalue %dx.types.CBufRet.f32 %9864, 2
  %9868 = fmul fast float %9866, %9867
  %9869 = call float @dx.op.unary.f32(i32 23, float %9868)  ; Log(value)
  %9870 = extractvalue %dx.types.CBufRet.f32 %9864, 3
  %9871 = fmul fast float %9870, %9869
  %9872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9873 = extractvalue %dx.types.CBufRet.f32 %9872, 2
  %9874 = fmul fast float %9871, %9873
  %9875 = call float @dx.op.unary.f32(i32 7, float %9874)  ; Saturate(value)
  %9876 = uitofp i32 %9854 to float
  %9877 = uitofp i32 %9857 to float
  %9878 = fadd fast float %9876, 5.000000e-01
  %9879 = fadd fast float %9877, 5.000000e-01
  %9880 = fmul fast float %9873, %9878
  %9881 = fmul fast float %9873, %9879
  %9882 = fadd fast float %9880, 0x3F0FFB4800000000
  %9883 = fadd fast float %9881, 0xBF0FFB4800000000
  %9884 = call float @dx.op.binary.f32(i32 35, float %9875, float %9882)  ; FMax(a,b)
  %9885 = call float @dx.op.binary.f32(i32 36, float %9884, float %9883)  ; FMin(a,b)
  %9886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9887 = extractvalue %dx.types.CBufRet.f32 %9886, 1
  %9888 = extractvalue %dx.types.CBufRet.f32 %9886, 2
  %9889 = extractvalue %dx.types.CBufRet.f32 %9886, 0
  %9890 = select i1 %8392, float %9889, float 0.000000e+00
  %9891 = fmul fast float %9887, %9885
  %9892 = fadd fast float %9890, %9891
  %9893 = fadd fast float %9890, %9888
  %9894 = fsub fast float %9887, %9888
  %9895 = fadd fast float %9894, %9890
  %9896 = call float @dx.op.binary.f32(i32 35, float %9892, float %9893)  ; FMax(a,b)
  %9897 = call float @dx.op.binary.f32(i32 36, float %9896, float %9895)  ; FMin(a,b)
  %9898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %9829, float %9830, float %9897, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9899 = extractvalue %dx.types.ResRet.f32 %9898, 0
  %9900 = extractvalue %dx.types.ResRet.f32 %9898, 1
  %9901 = extractvalue %dx.types.ResRet.f32 %9898, 2
  %9902 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9903 = extractvalue %dx.types.CBufRet.i32 %9902, 0
  %9904 = extractvalue %dx.types.CBufRet.i32 %9902, 1
  %9905 = uitofp i32 %9903 to float
  %9906 = uitofp i32 %9904 to float
  %9907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9908 = extractvalue %dx.types.CBufRet.f32 %9907, 0
  %9909 = extractvalue %dx.types.CBufRet.f32 %9907, 1
  %9910 = fmul fast float %9905, %9829
  %9911 = fmul fast float %9906, %9830
  %9912 = fadd fast float %9910, -5.000000e-01
  %9913 = fadd fast float %9911, -5.000000e-01
  %9914 = call float @dx.op.unary.f32(i32 22, float %9912)  ; Frc(value)
  %9915 = call float @dx.op.unary.f32(i32 22, float %9913)  ; Frc(value)
  %9916 = fmul fast float %9914, %9914
  %9917 = fmul fast float %9916, %9914
  %9918 = fsub fast float 3.000000e+00, %9914
  %9919 = fmul fast float %9916, %9918
  %9920 = fmul fast float %9914, 3.000000e+00
  %9921 = fmul fast float %9917, 3.000000e+00
  %9922 = fmul fast float %9916, 6.000000e+00
  %9923 = fsub fast float %9921, %9922
  %9924 = fadd fast float %9923, 4.000000e+00
  %9925 = fmul fast float %9924, 0x3FC5555560000000
  %9926 = fmul fast float %9917, -3.000000e+00
  %9927 = fadd fast float %9916, %9914
  %9928 = fmul fast float %9927, 3.000000e+00
  %9929 = fadd fast float %9926, 1.000000e+00
  %9930 = fadd fast float %9929, %9928
  %9931 = fmul fast float %9917, 0x3FC5555560000000
  %9932 = fmul fast float %9915, %9915
  %9933 = fmul fast float %9932, %9915
  %9934 = fsub fast float 3.000000e+00, %9915
  %9935 = fmul fast float %9932, %9934
  %9936 = fmul fast float %9915, 3.000000e+00
  %9937 = fmul fast float %9933, 3.000000e+00
  %9938 = fmul fast float %9932, 6.000000e+00
  %9939 = fsub fast float %9937, %9938
  %9940 = fadd fast float %9939, 4.000000e+00
  %9941 = fmul fast float %9940, 0x3FC5555560000000
  %9942 = fmul fast float %9933, -3.000000e+00
  %9943 = fadd fast float %9932, %9915
  %9944 = fmul fast float %9943, 3.000000e+00
  %9945 = fadd fast float %9942, 1.000000e+00
  %9946 = fadd fast float %9945, %9944
  %9947 = fmul fast float %9933, 0x3FC5555560000000
  %9948 = fadd fast float %9914, 1.000000e+00
  %9949 = fsub fast float 1.000000e+00, %9920
  %9950 = fadd fast float %9949, %9919
  %9951 = fadd fast float %9950, %9924
  %9952 = fmul fast float %9951, 0x3FC5555560000000
  %9953 = fdiv fast float %9925, %9952
  %9954 = fsub fast float %9948, %9953
  %9955 = fsub fast float 1.000000e+00, %9914
  %9956 = fadd fast float %9930, %9917
  %9957 = fmul fast float %9956, 0x3FC5555560000000
  %9958 = fdiv fast float %9931, %9957
  %9959 = fadd fast float %9955, %9958
  %9960 = fadd fast float %9915, 1.000000e+00
  %9961 = fsub fast float 1.000000e+00, %9936
  %9962 = fadd fast float %9961, %9935
  %9963 = fadd fast float %9962, %9940
  %9964 = fmul fast float %9963, 0x3FC5555560000000
  %9965 = fdiv fast float %9941, %9964
  %9966 = fsub fast float %9960, %9965
  %9967 = fsub fast float 1.000000e+00, %9915
  %9968 = fadd fast float %9946, %9933
  %9969 = fmul fast float %9968, 0x3FC5555560000000
  %9970 = fdiv fast float %9947, %9969
  %9971 = fadd fast float %9970, %9967
  %9972 = fmul fast float %9954, %9908
  %9973 = fsub fast float %9829, %9972
  %9974 = fmul fast float %9959, %9908
  %9975 = fadd fast float %9974, %9829
  %9976 = fmul fast float %9971, %9909
  %9977 = fadd fast float %9976, %9830
  %9978 = fmul fast float %9966, %9909
  %9979 = fsub fast float %9830, %9978
  %9980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9973, float %9979, float %9897, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9981 = extractvalue %dx.types.ResRet.f32 %9980, 0
  %9982 = extractvalue %dx.types.ResRet.f32 %9980, 1
  %9983 = extractvalue %dx.types.ResRet.f32 %9980, 2
  %9984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9975, float %9979, float %9897, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9985 = extractvalue %dx.types.ResRet.f32 %9984, 0
  %9986 = extractvalue %dx.types.ResRet.f32 %9984, 1
  %9987 = extractvalue %dx.types.ResRet.f32 %9984, 2
  %9988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9973, float %9977, float %9897, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9989 = extractvalue %dx.types.ResRet.f32 %9988, 0
  %9990 = extractvalue %dx.types.ResRet.f32 %9988, 1
  %9991 = extractvalue %dx.types.ResRet.f32 %9988, 2
  %9992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9975, float %9977, float %9897, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9993 = extractvalue %dx.types.ResRet.f32 %9992, 0
  %9994 = extractvalue %dx.types.ResRet.f32 %9992, 1
  %9995 = extractvalue %dx.types.ResRet.f32 %9992, 2
  %9996 = fsub fast float %9989, %9981
  %9997 = fsub fast float %9990, %9982
  %9998 = fsub fast float %9991, %9983
  %9999 = fmul fast float %9996, %9969
  %10000 = fmul fast float %9997, %9969
  %10001 = fmul fast float %9998, %9969
  %10002 = fadd fast float %9999, %9981
  %10003 = fadd fast float %10000, %9982
  %10004 = fadd fast float %10001, %9983
  %10005 = fsub fast float %9993, %9985
  %10006 = fsub fast float %9994, %9986
  %10007 = fsub fast float %9995, %9987
  %10008 = fmul fast float %10005, %9969
  %10009 = fmul fast float %10006, %9969
  %10010 = fmul fast float %10007, %9969
  %10011 = fsub fast float %9985, %10002
  %10012 = fadd fast float %10011, %10008
  %10013 = fsub fast float %9986, %10003
  %10014 = fadd fast float %10013, %10009
  %10015 = fsub fast float %9987, %10004
  %10016 = fadd fast float %10015, %10010
  %10017 = fmul fast float %10012, %9957
  %10018 = fmul fast float %10014, %9957
  %10019 = fmul fast float %10016, %9957
  %10020 = fadd fast float %10017, %10002
  %10021 = fadd fast float %10018, %10003
  %10022 = fadd fast float %10019, %10004
  %10023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10024 = extractvalue %dx.types.CBufRet.f32 %10023, 1
  %10025 = fmul fast float %10020, %10024
  %10026 = fmul fast float %10021, %10024
  %10027 = fmul fast float %10022, %10024
  br label %10028

; <label>:10028                                   ; preds = %9859, %9816
  %10029 = phi float [ %9899, %9859 ], [ 1.000000e+00, %9816 ]
  %10030 = phi float [ %9900, %9859 ], [ 1.000000e+00, %9816 ]
  %10031 = phi float [ %9901, %9859 ], [ 1.000000e+00, %9816 ]
  %10032 = phi float [ %10025, %9859 ], [ 0.000000e+00, %9816 ]
  %10033 = phi float [ %10026, %9859 ], [ 0.000000e+00, %9816 ]
  %10034 = phi float [ %10027, %9859 ], [ 0.000000e+00, %9816 ]
  %10035 = fmul fast float %10032, %8370
  %10036 = fmul fast float %10033, %8370
  %10037 = fmul fast float %10034, %8370
  %10038 = fmul fast float %10029, %9823
  %10039 = call float @dx.op.dot3.f32(i32 55, float %10029, float %10030, float %10031, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10040 = call float @dx.op.dot3.f32(i32 55, float %10035, float %10036, float %10037, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10041 = select i1 %262, float %10039, float %10029
  %10042 = select i1 %262, float %10039, float %10030
  %10043 = select i1 %262, float 1.000000e+00, float %10031
  %10044 = select i1 %262, float %10040, float %10035
  %10045 = select i1 %262, float 0.000000e+00, float %10036
  %10046 = select i1 %262, float 0.000000e+00, float %10037
  %10047 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10048 = extractvalue %dx.types.CBufRet.i32 %10047, 3
  %10049 = and i32 %10048, 3
  %10050 = icmp ne i32 %10049, 0
  %10051 = and i32 %10048, 4
  %10052 = icmp ne i32 %10051, 0
  %10053 = and i1 %10050, %10052
  %10054 = and i1 %262, %10053
  br i1 %10054, label %10055, label %10061

; <label>:10055                                   ; preds = %10028
  %10056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10057 = extractvalue %dx.types.CBufRet.f32 %10056, 1
  %10058 = fadd fast float %10038, -1.000000e+00
  %10059 = fmul fast float %10057, %10058
  %10060 = fadd fast float %10059, 1.000000e+00
  br label %10061

; <label>:10061                                   ; preds = %10055, %10028
  %10062 = phi float [ %10060, %10055 ], [ %10038, %10028 ]
  %10063 = fadd fast float %9820, %9817
  %10064 = fmul fast float %10041, %10063
  %10065 = fadd fast float %10064, %10044
  %10066 = fadd fast float %9821, %9818
  %10067 = fmul fast float %10042, %10066
  %10068 = fadd fast float %10067, %10045
  %10069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10070 = extractvalue %dx.types.CBufRet.f32 %10069, 0
  br i1 %262, label %10071, label %10094

; <label>:10071                                   ; preds = %10061
  %10072 = fadd fast float %10065, %10068
  %10073 = fmul fast float %10070, %10072
  %10074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10075 = extractvalue %dx.types.CBufRet.f32 %10074, 3
  %10076 = extractvalue %dx.types.CBufRet.f32 %8374, 1
  %10077 = fsub fast float %8379, %8373
  %10078 = fadd fast float %10077, %8380
  %10079 = fsub fast float %10078, %10076
  %10080 = extractvalue %dx.types.CBufRet.f32 %8374, 2
  %10081 = fmul fast float %10079, %10080
  %10082 = call float @dx.op.unary.f32(i32 7, float %10081)  ; Saturate(value)
  %10083 = fsub fast float %10082, %10075
  %10084 = fmul fast float %10083, %10062
  %10085 = fadd fast float %10084, %10075
  %10086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10087 = extractvalue %dx.types.CBufRet.f32 %10086, 0
  %10088 = fsub fast float %10085, %10087
  %10089 = fmul fast float %10088, 1.000000e+01
  %10090 = call float @dx.op.unary.f32(i32 7, float %10089)  ; Saturate(value)
  %10091 = fmul fast float %10090, %8369
  %10092 = fadd fast float %10091, %8370
  %10093 = fmul fast float %10092, %10085
  br label %10118

; <label>:10094                                   ; preds = %10061
  %10095 = fadd fast float %9822, %9819
  %10096 = fmul fast float %10043, %10095
  %10097 = fadd fast float %10096, %10046
  %10098 = fmul fast float %10070, %10065
  %10099 = fmul fast float %10070, %10068
  %10100 = fmul fast float %10070, %10097
  %10101 = call float @dx.op.binary.f32(i32 35, float %10099, float %10100)  ; FMax(a,b)
  %10102 = call float @dx.op.binary.f32(i32 35, float %10098, float %10101)  ; FMax(a,b)
  %10103 = call float @dx.op.binary.f32(i32 35, float %10102, float %8370)  ; FMax(a,b)
  %10104 = fcmp fast ugt float %10103, 0x3F10000000000000
  br i1 %10104, label %10106, label %10105

; <label>:10105                                   ; preds = %10094
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10106

; <label>:10106                                   ; preds = %10105, %10094
  %10107 = add i32 %61, 356
  %10108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10107, i32 undef)  ; BufferLoad(srv,index,wot)
  %10109 = extractvalue %dx.types.ResRet.i32 %10108, 0
  %10110 = and i32 %10109, 32
  %10111 = icmp eq i32 %10110, 0
  br i1 %10111, label %10118, label %10112

; <label>:10112                                   ; preds = %10106
  %10113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10114 = extractvalue %dx.types.CBufRet.f32 %10113, 0
  %10115 = fmul fast float %10114, 0x3FE99999A0000000
  %10116 = fadd fast float %10114, %10098
  %10117 = fadd fast float %10115, %10100
  br label %10118

; <label>:10118                                   ; preds = %10112, %10106, %10071
  %10119 = phi float [ %10073, %10071 ], [ %10116, %10112 ], [ %10098, %10106 ]
  %10120 = phi float [ %10093, %10071 ], [ %10099, %10112 ], [ %10099, %10106 ]
  %10121 = phi float [ %10092, %10071 ], [ %10117, %10112 ], [ %10100, %10106 ]
  %10122 = phi float [ %10092, %10071 ], [ %8370, %10112 ], [ %8370, %10106 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10123 = call float @dx.op.binary.f32(i32 36, float %10119, float 3.225500e+04)  ; FMin(a,b)
  %10124 = call float @dx.op.binary.f32(i32 36, float %10120, float 3.225500e+04)  ; FMin(a,b)
  %10125 = call float @dx.op.binary.f32(i32 36, float %10121, float 3.225500e+04)  ; FMin(a,b)
  %10126 = call float @dx.op.binary.f32(i32 36, float %10122, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10123)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10124)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10125)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10126)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!74 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0]}
!75 = !{void ()* @ps_main, !"ps_main", !76, !4, !102}
!76 = !{!77, !100, null}
!77 = !{!78, !81, !82, !84, !86, !87, !88, !89, !90, !91, !92, !93, !94, !96, !98, !99}
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
!96 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !79, i8 1, i32 1, i8 2, i32 12, i8 1, !97}
!97 = !{i32 3, i32 2}
!98 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !79, i8 1, i32 1, i8 4, i32 13, i8 0, !95}
!99 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !79, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!100 = !{!101}
!101 = !{i32 0, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 0, i8 0, !80}
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

