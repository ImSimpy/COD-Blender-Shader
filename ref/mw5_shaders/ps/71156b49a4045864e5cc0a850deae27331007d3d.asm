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
; shader hash: b3f6906e8eda12f354eb991a8fa27da0
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
  br i1 %3366, label %3881, label %3367

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
  br i1 %3428, label %3850, label %3429

; <label>:3429                                    ; preds = %3367
  br label %3430

; <label>:3430                                    ; preds = %3551, %3429
  %3431 = phi i32 [ %3453, %3551 ], [ %3427, %3429 ]
  %3432 = phi float [ %3552, %3551 ], [ 0.000000e+00, %3429 ]
  %3433 = phi float [ %3553, %3551 ], [ %3311, %3429 ]
  %3434 = phi float [ %3554, %3551 ], [ %3290, %3429 ]
  %3435 = phi float [ %3555, %3551 ], [ 0.000000e+00, %3429 ]
  %3436 = phi float [ %3556, %3551 ], [ 0.000000e+00, %3429 ]
  %3437 = phi float [ %3557, %3551 ], [ %3333, %3429 ]
  %3438 = phi float [ %3558, %3551 ], [ %3335, %3429 ]
  %3439 = phi float [ %3559, %3551 ], [ %3337, %3429 ]
  %3440 = phi float [ %3560, %3551 ], [ %3363, %3429 ]
  %3441 = phi float [ %3561, %3551 ], [ %3364, %3429 ]
  %3442 = phi float [ %3562, %3551 ], [ %3365, %3429 ]
  %3443 = phi float [ %3563, %3551 ], [ %3289, %3429 ]
  %3444 = phi float [ %3564, %3551 ], [ %3288, %3429 ]
  %3445 = phi float [ %3565, %3551 ], [ 0.000000e+00, %3429 ]
  %3446 = phi float [ %3566, %3551 ], [ %3287, %3429 ]
  %3447 = phi float [ %3567, %3551 ], [ %3318, %3429 ]
  %3448 = phi float [ %3568, %3551 ], [ %3319, %3429 ]
  %3449 = phi float [ %3569, %3551 ], [ %3320, %3429 ]
  %3450 = shl nuw nsw i32 %3431, 2
  %3451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.i32 %3451, 0
  %3453 = lshr i32 %3452, 16
  %3454 = shl i32 %3452, 8
  %3455 = and i32 %3454, 16776960
  %3456 = or i32 %3455, 48
  %3457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.f32 %3457, 0
  %3459 = extractvalue %dx.types.ResRet.f32 %3457, 1
  %3460 = extractvalue %dx.types.ResRet.f32 %3457, 2
  %3461 = or i32 %3455, 64
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3461, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = extractvalue %dx.types.ResRet.i32 %3462, 1
  %3465 = or i32 %3455, 80
  %3466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.f32 %3466, 2
  %3468 = extractvalue %dx.types.ResRet.f32 %3466, 3
  %3469 = or i32 %3455, 96
  %3470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3469, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.f32 %3470, 0
  %3472 = extractvalue %dx.types.ResRet.f32 %3470, 1
  %3473 = extractvalue %dx.types.ResRet.f32 %3470, 2
  %3474 = extractvalue %dx.types.ResRet.f32 %3470, 3
  %3475 = or i32 %3455, 112
  %3476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3475, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 2
  %3478 = or i32 %3455, 128
  %3479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.f32 %3479, 0
  %3481 = extractvalue %dx.types.ResRet.f32 %3479, 1
  %3482 = extractvalue %dx.types.ResRet.f32 %3479, 2
  %3483 = extractvalue %dx.types.ResRet.f32 %3479, 3
  %3484 = or i32 %3455, 144
  %3485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.f32 %3485, 0
  %3487 = extractvalue %dx.types.ResRet.f32 %3485, 1
  %3488 = extractvalue %dx.types.ResRet.f32 %3485, 2
  %3489 = extractvalue %dx.types.ResRet.f32 %3485, 3
  %3490 = or i32 %3455, 160
  %3491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.f32 %3491, 0
  %3493 = extractvalue %dx.types.ResRet.f32 %3491, 1
  %3494 = extractvalue %dx.types.ResRet.f32 %3491, 2
  %3495 = extractvalue %dx.types.ResRet.f32 %3491, 3
  %3496 = or i32 %3455, 192
  %3497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3496, i32 undef)  ; BufferLoad(srv,index,wot)
  %3498 = extractvalue %dx.types.ResRet.i32 %3497, 0
  %3499 = or i32 %3455, 208
  %3500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.f32 %3500, 0
  %3502 = or i32 %3455, 248
  %3503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3502, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.f32 %3503, 0
  %3505 = extractvalue %dx.types.ResRet.f32 %3503, 1
  %3506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3455, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.f32 %3506, 0
  %3508 = extractvalue %dx.types.ResRet.f32 %3506, 1
  %3509 = extractvalue %dx.types.ResRet.f32 %3506, 2
  %3510 = extractvalue %dx.types.ResRet.f32 %3506, 3
  %3511 = call float @dx.op.dot4.f32(i32 56, float %3507, float %3508, float %3509, float %3510, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3512 = or i32 %3455, 16
  %3513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3514 = extractvalue %dx.types.ResRet.f32 %3513, 0
  %3515 = extractvalue %dx.types.ResRet.f32 %3513, 1
  %3516 = extractvalue %dx.types.ResRet.f32 %3513, 2
  %3517 = extractvalue %dx.types.ResRet.f32 %3513, 3
  %3518 = call float @dx.op.dot4.f32(i32 56, float %3514, float %3515, float %3516, float %3517, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3519 = or i32 %3455, 32
  %3520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3519, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.f32 %3520, 0
  %3522 = extractvalue %dx.types.ResRet.f32 %3520, 1
  %3523 = extractvalue %dx.types.ResRet.f32 %3520, 2
  %3524 = extractvalue %dx.types.ResRet.f32 %3520, 3
  %3525 = call float @dx.op.dot4.f32(i32 56, float %3521, float %3522, float %3523, float %3524, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3526 = call float @dx.op.unary.f32(i32 27, float %3511)  ; Round_ni(value)
  %3527 = call float @dx.op.unary.f32(i32 6, float %3526)  ; FAbs(value)
  %3528 = call float @dx.op.unary.f32(i32 27, float %3518)  ; Round_ni(value)
  %3529 = call float @dx.op.unary.f32(i32 6, float %3528)  ; FAbs(value)
  %3530 = call float @dx.op.unary.f32(i32 6, float %3525)  ; FAbs(value)
  %3531 = call float @dx.op.unary.f32(i32 27, float %3530)  ; Round_ni(value)
  %3532 = fadd fast float %3529, %3527
  %3533 = fadd fast float %3532, %3531
  %3534 = fcmp fast oeq float %3533, 0.000000e+00
  %3535 = call float @dx.op.dot4.f32(i32 56, float %3507, float %3508, float %3509, float %3510, float %3374, float %3375, float %3376, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3536 = call float @dx.op.dot4.f32(i32 56, float %3514, float %3515, float %3516, float %3517, float %3374, float %3375, float %3376, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3537 = call float @dx.op.dot4.f32(i32 56, float %3507, float %3508, float %3509, float %3510, float %3377, float %3378, float %3379, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3538 = call float @dx.op.dot4.f32(i32 56, float %3514, float %3515, float %3516, float %3517, float %3377, float %3378, float %3379, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3539 = fsub fast float %3535, %3511
  %3540 = fsub fast float %3537, %3511
  %3541 = fsub fast float %3536, %3518
  %3542 = fsub fast float %3538, %3518
  %3543 = call float @dx.op.dot3.f32(i32 55, float %3458, float %3459, float %3460, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %3544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3545 = extractvalue %dx.types.CBufRet.f32 %3544, 2
  %3546 = fadd fast float %3545, %3543
  %3547 = call float @dx.op.unary.f32(i32 7, float %3546)  ; Saturate(value)
  %3548 = extractvalue %dx.types.CBufRet.f32 %3544, 0
  %3549 = fcmp fast ogt float %3547, %3548
  %3550 = and i1 %3534, %3549
  br i1 %3550, label %3571, label %3551

; <label>:3551                                    ; preds = %3836, %3654, %3571, %3430
  %3552 = phi float [ %3432, %3571 ], [ %3657, %3654 ], [ %3657, %3836 ], [ %3432, %3430 ]
  %3553 = phi float [ %3433, %3571 ], [ %3433, %3654 ], [ %3811, %3836 ], [ %3433, %3430 ]
  %3554 = phi float [ %3434, %3571 ], [ %3434, %3654 ], [ %3809, %3836 ], [ %3434, %3430 ]
  %3555 = phi float [ %3435, %3571 ], [ %3435, %3654 ], [ %3781, %3836 ], [ %3435, %3430 ]
  %3556 = phi float [ %3436, %3571 ], [ %3436, %3654 ], [ %3779, %3836 ], [ %3436, %3430 ]
  %3557 = phi float [ %3437, %3571 ], [ %3437, %3654 ], [ %3846, %3836 ], [ %3437, %3430 ]
  %3558 = phi float [ %3438, %3571 ], [ %3438, %3654 ], [ %3847, %3836 ], [ %3438, %3430 ]
  %3559 = phi float [ %3439, %3571 ], [ %3439, %3654 ], [ %3848, %3836 ], [ %3439, %3430 ]
  %3560 = phi float [ %3440, %3571 ], [ %3440, %3654 ], [ %3760, %3836 ], [ %3440, %3430 ]
  %3561 = phi float [ %3441, %3571 ], [ %3441, %3654 ], [ %3761, %3836 ], [ %3441, %3430 ]
  %3562 = phi float [ %3442, %3571 ], [ %3442, %3654 ], [ %3762, %3836 ], [ %3442, %3430 ]
  %3563 = phi float [ %3443, %3571 ], [ %3443, %3654 ], [ %3789, %3836 ], [ %3443, %3430 ]
  %3564 = phi float [ %3444, %3571 ], [ %3444, %3654 ], [ %3786, %3836 ], [ %3444, %3430 ]
  %3565 = phi float [ %3445, %3571 ], [ %3445, %3654 ], [ %3783, %3836 ], [ %3445, %3430 ]
  %3566 = phi float [ %3446, %3571 ], [ %3446, %3654 ], [ %3777, %3836 ], [ %3446, %3430 ]
  %3567 = phi float [ %3447, %3571 ], [ %3447, %3654 ], [ %3772, %3836 ], [ %3447, %3430 ]
  %3568 = phi float [ %3448, %3571 ], [ %3448, %3654 ], [ %3773, %3836 ], [ %3448, %3430 ]
  %3569 = phi float [ %3449, %3571 ], [ %3449, %3654 ], [ %3774, %3836 ], [ %3449, %3430 ]
  %3570 = icmp eq i32 %3453, 0
  br i1 %3570, label %3849, label %3430

; <label>:3571                                    ; preds = %3430
  %3572 = extractvalue %dx.types.ResRet.f32 %3457, 3
  %3573 = extractvalue %dx.types.ResRet.f32 %3476, 3
  %3574 = extractvalue %dx.types.ResRet.f32 %3476, 1
  %3575 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3576 = extractvalue %dx.types.ResRet.f32 %3466, 1
  %3577 = extractvalue %dx.types.ResRet.f32 %3466, 0
  %3578 = extractvalue %dx.types.ResRet.i32 %3462, 3
  %3579 = extractvalue %dx.types.ResRet.i32 %3462, 2
  %3580 = bitcast float %3572 to i32
  %3581 = add i32 %3578, 0
  %3582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3581, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3584 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3582, %dx.types.Handle %3583, float %3511, float %3518, float undef, float undef, i32 0, i32 0, i32 undef, float %3539, float %3541, float undef, float %3540, float %3542, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3585 = extractvalue %dx.types.ResRet.f32 %3584, 0
  %3586 = fmul fast float %3585, %3577
  %3587 = fadd fast float %3586, %3576
  %3588 = call float @dx.op.unary.f32(i32 7, float %3587)  ; Saturate(value)
  %3589 = fmul fast float %3511, %3471
  %3590 = call float @dx.op.tertiary.f32(i32 46, float %3472, float %3518, float %3589)  ; FMad(a,b,c)
  %3591 = fadd fast float %3590, %3575
  %3592 = fmul fast float %3511, %3473
  %3593 = call float @dx.op.tertiary.f32(i32 46, float %3474, float %3518, float %3592)  ; FMad(a,b,c)
  %3594 = fadd fast float %3593, %3574
  %3595 = fmul fast float %3539, %3471
  %3596 = call float @dx.op.tertiary.f32(i32 46, float %3472, float %3541, float %3595)  ; FMad(a,b,c)
  %3597 = fmul fast float %3539, %3473
  %3598 = call float @dx.op.tertiary.f32(i32 46, float %3474, float %3541, float %3597)  ; FMad(a,b,c)
  %3599 = fmul fast float %3540, %3471
  %3600 = call float @dx.op.tertiary.f32(i32 46, float %3472, float %3542, float %3599)  ; FMad(a,b,c)
  %3601 = fmul fast float %3540, %3473
  %3602 = call float @dx.op.tertiary.f32(i32 46, float %3474, float %3542, float %3601)  ; FMad(a,b,c)
  %3603 = add i32 %3579, 0
  %3604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3603, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3605 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3604, %dx.types.Handle %3583, float %3591, float %3594, float undef, float undef, i32 0, i32 0, i32 undef, float %3596, float %3598, float undef, float %3600, float %3602, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3606 = extractvalue %dx.types.ResRet.f32 %3605, 0
  %3607 = and i32 %3580, 1024
  %3608 = icmp ne i32 %3607, 0
  %3609 = fcmp fast ogt float %3606, 0x3FE0101020000000
  %3610 = uitofp i1 %3609 to float
  %3611 = select i1 %3608, float %3610, float %3606
  %3612 = and i32 %3580, 8192
  %3613 = icmp ne i32 %3612, 0
  %3614 = select i1 %3613, float %3573, float 1.000000e+00
  %3615 = fmul fast float %3511, 2.000000e+00
  %3616 = fadd fast float %3615, -1.000000e+00
  %3617 = call float @dx.op.unary.f32(i32 6, float %3616)  ; FAbs(value)
  %3618 = fmul fast float %3617, %3504
  %3619 = fsub fast float %3618, %3504
  %3620 = call float @dx.op.unary.f32(i32 7, float %3619)  ; Saturate(value)
  %3621 = fmul fast float %3518, 2.000000e+00
  %3622 = fadd fast float %3621, -1.000000e+00
  %3623 = call float @dx.op.unary.f32(i32 6, float %3622)  ; FAbs(value)
  %3624 = fmul fast float %3623, %3505
  %3625 = fsub fast float %3624, %3505
  %3626 = call float @dx.op.unary.f32(i32 7, float %3625)  ; Saturate(value)
  %3627 = fmul fast float %3530, %3467
  %3628 = fsub fast float %3627, %3467
  %3629 = call float @dx.op.unary.f32(i32 7, float %3628)  ; Saturate(value)
  %3630 = fmul fast float %3588, %3614
  %3631 = fmul fast float %3630, %3585
  %3632 = fmul fast float %3631, %3620
  %3633 = fmul fast float %3632, %3611
  %3634 = fmul fast float %3633, %3626
  %3635 = fmul fast float %3634, %3629
  %3636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3637 = extractvalue %dx.types.CBufRet.f32 %3636, 1
  %3638 = extractvalue %dx.types.CBufRet.f32 %3636, 0
  %3639 = fsub fast float %3547, %3638
  %3640 = fmul fast float %3639, %3637
  %3641 = call float @dx.op.unary.f32(i32 7, float %3640)  ; Saturate(value)
  %3642 = fmul fast float %3635, %3468
  %3643 = fadd fast float %3635, %3468
  %3644 = fmul fast float %3643, %3477
  %3645 = fsub fast float %3644, %3477
  %3646 = call float @dx.op.unary.f32(i32 7, float %3645)  ; Saturate(value)
  %3647 = and i32 %3580, 128
  %3648 = icmp ne i32 %3647, 0
  %3649 = select i1 %3648, float %3646, float %3642
  %3650 = fmul fast float %3649, %3641
  %3651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3652 = extractvalue %dx.types.CBufRet.f32 %3651, 0
  %3653 = fcmp fast ugt float %3650, %3652
  br i1 %3653, label %3654, label %3551

; <label>:3654                                    ; preds = %3571
  %3655 = select i1 %3613, float %3650, float 0.000000e+00
  %3656 = fadd fast float %3655, %3432
  %3657 = call float @dx.op.unary.f32(i32 7, float %3656)  ; Saturate(value)
  br i1 %3613, label %3551, label %3658

; <label>:3658                                    ; preds = %3654
  %3659 = and i32 %3580, 4
  %3660 = and i32 %3580, 8
  %3661 = add i32 %3463, 0
  %3662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3661, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3664 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3662, %dx.types.Handle %3663, float %3591, float %3594, float undef, float undef, i32 0, i32 0, i32 undef, float %3596, float %3598, float undef, float %3600, float %3602, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3665 = extractvalue %dx.types.ResRet.f32 %3664, 0
  %3666 = extractvalue %dx.types.ResRet.f32 %3664, 1
  %3667 = extractvalue %dx.types.ResRet.f32 %3664, 2
  %3668 = extractvalue %dx.types.ResRet.f32 %3664, 3
  %3669 = bitcast float %3489 to i32
  %3670 = and i32 %3669, 255
  %3671 = uitofp i32 %3670 to float
  %3672 = lshr i32 %3669, 8
  %3673 = and i32 %3672, 255
  %3674 = uitofp i32 %3673 to float
  %3675 = fmul fast float %3668, %3671
  %3676 = fadd fast float %3675, %3674
  %3677 = fmul fast float %3676, 0x3F70101000000000
  %3678 = add i32 %3464, 0
  %3679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3678, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3680 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3679, %dx.types.Handle %3663, float %3591, float %3594, float undef, float undef, i32 0, i32 0, i32 undef, float %3596, float %3598, float undef, float %3600, float %3602, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3681 = extractvalue %dx.types.ResRet.f32 %3680, 0
  %3682 = extractvalue %dx.types.ResRet.f32 %3680, 1
  %3683 = extractvalue %dx.types.ResRet.f32 %3680, 2
  %3684 = extractvalue %dx.types.ResRet.f32 %3680, 3
  %3685 = bitcast float %3483 to i32
  %3686 = and i32 %3685, 255
  %3687 = uitofp i32 %3686 to float
  %3688 = lshr i32 %3685, 8
  %3689 = and i32 %3688, 255
  %3690 = uitofp i32 %3689 to float
  %3691 = lshr i32 %3685, 16
  %3692 = and i32 %3691, 255
  %3693 = uitofp i32 %3692 to float
  %3694 = fmul fast float %3693, 0x3F70101000000000
  %3695 = fmul fast float %3681, %3687
  %3696 = fadd fast float %3695, %3690
  %3697 = fmul fast float %3696, 0x3F70101000000000
  %3698 = fadd fast float %3682, -5.000000e-01
  %3699 = fadd fast float %3684, -5.000000e-01
  %3700 = fmul fast float %3698, %3694
  %3701 = fmul fast float %3699, %3694
  %3702 = fadd fast float %3700, 5.000000e-01
  %3703 = fadd fast float %3701, 5.000000e-01
  %3704 = fmul fast float %3665, %3492
  %3705 = fmul fast float %3666, %3493
  %3706 = fmul fast float %3667, %3494
  %3707 = fmul fast float %3702, 2.000000e+00
  %3708 = fadd fast float %3707, -1.000000e+00
  %3709 = fmul fast float %3703, 2.000000e+00
  %3710 = fadd fast float %3709, -1.000000e+00
  %3711 = fadd fast float %3708, %3710
  %3712 = fmul fast float %3711, 5.000000e-01
  %3713 = fsub fast float %3708, %3710
  %3714 = fmul fast float %3713, 5.000000e-01
  %3715 = call float @dx.op.unary.f32(i32 6, float %3712)  ; FAbs(value)
  %3716 = fsub fast float 1.000000e+00, %3715
  %3717 = call float @dx.op.unary.f32(i32 6, float %3714)  ; FAbs(value)
  %3718 = fsub fast float %3716, %3717
  %3719 = call float @dx.op.dot3.f32(i32 55, float %3712, float %3714, float %3718, float %3712, float %3714, float %3718)  ; Dot3(ax,ay,az,bx,by,bz)
  %3720 = call float @dx.op.unary.f32(i32 25, float %3719)  ; Rsqrt(value)
  %3721 = fmul fast float %3712, %3720
  %3722 = fmul fast float %3714, %3720
  %3723 = fmul fast float %3720, %3718
  %3724 = fmul fast float %3723, %3458
  %3725 = fmul fast float %3723, %3459
  %3726 = fmul fast float %3723, %3460
  %3727 = fmul fast float %3721, %3480
  %3728 = fmul fast float %3721, %3481
  %3729 = fmul fast float %3721, %3482
  %3730 = fadd fast float %3727, %3724
  %3731 = fadd fast float %3728, %3725
  %3732 = fadd fast float %3729, %3726
  %3733 = fmul fast float %3722, %3486
  %3734 = fmul fast float %3722, %3487
  %3735 = fmul fast float %3722, %3488
  %3736 = fadd fast float %3730, %3733
  %3737 = fadd fast float %3731, %3734
  %3738 = fadd fast float %3732, %3735
  %3739 = call float @dx.op.dot3.f32(i32 55, float %3736, float %3737, float %3738, float %3736, float %3737, float %3738)  ; Dot3(ax,ay,az,bx,by,bz)
  %3740 = call float @dx.op.unary.f32(i32 25, float %3739)  ; Rsqrt(value)
  %3741 = fmul fast float %3736, %3740
  %3742 = fmul fast float %3737, %3740
  %3743 = fmul fast float %3738, %3740
  %3744 = icmp ne i32 %3660, 0
  %3745 = select i1 %3744, float 1.000000e+00, float 0.000000e+00
  %3746 = fmul fast float %3650, %3745
  %3747 = and i32 %3580, 1
  %3748 = icmp eq i32 %3747, 0
  br i1 %3748, label %3749, label %3753

; <label>:3749                                    ; preds = %3658
  %3750 = fsub fast float %3741, %3440
  %3751 = fsub fast float %3742, %3441
  %3752 = fsub fast float %3743, %3442
  br label %3753

; <label>:3753                                    ; preds = %3749, %3658
  %3754 = phi float [ %3750, %3749 ], [ %3741, %3658 ]
  %3755 = phi float [ %3751, %3749 ], [ %3742, %3658 ]
  %3756 = phi float [ %3752, %3749 ], [ %3743, %3658 ]
  %3757 = fmul float %3756, %3746
  %3758 = fmul float %3755, %3746
  %3759 = fmul float %3754, %3746
  %3760 = fadd fast float %3759, %3440
  %3761 = fadd fast float %3758, %3441
  %3762 = fadd fast float %3757, %3442
  %3763 = icmp ne i32 %3659, 0
  %3764 = select i1 %3763, float 1.000000e+00, float 0.000000e+00
  %3765 = fmul fast float %3650, %3764
  %3766 = fsub fast float %3704, %3447
  %3767 = fsub fast float %3705, %3448
  %3768 = fsub fast float %3706, %3449
  %3769 = fmul fast float %3766, %3765
  %3770 = fmul fast float %3767, %3765
  %3771 = fmul fast float %3768, %3765
  %3772 = fadd fast float %3769, %3447
  %3773 = fadd fast float %3770, %3448
  %3774 = fadd fast float %3771, %3449
  %3775 = fsub fast float %3677, %3446
  %3776 = fmul fast float %3775, %3765
  %3777 = fadd fast float %3776, %3446
  %3778 = fmul fast float %3765, %3436
  %3779 = fsub fast float %3436, %3778
  %3780 = fmul fast float %3765, %3435
  %3781 = fsub fast float %3435, %3780
  %3782 = fadd fast float %3650, %3445
  %3783 = call float @dx.op.unary.f32(i32 7, float %3782)  ; Saturate(value)
  %3784 = fsub fast float %3697, %3444
  %3785 = fmul fast float %3784, %3746
  %3786 = fadd fast float %3785, %3444
  %3787 = fsub fast float %3683, %3443
  %3788 = fmul fast float %3787, %3746
  %3789 = fadd fast float %3788, %3443
  %3790 = call float @dx.op.dot3.f32(i32 55, float %3704, float %3705, float %3706, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3792 = extractvalue %dx.types.CBufRet.f32 %3791, 0
  %3793 = extractvalue %dx.types.CBufRet.f32 %3791, 1
  %3794 = fmul fast float %3793, %3790
  %3795 = fadd fast float %3794, %3792
  %3796 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  %3797 = bitcast float %3495 to i32
  %3798 = and i32 %3797, 65535
  %3799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3798)  ; LegacyF16ToF32(value)
  %3800 = lshr i32 %3797, 16
  %3801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3800)  ; LegacyF16ToF32(value)
  %3802 = fcmp fast oge float %3799, 0.000000e+00
  %3803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3804 = extractvalue %dx.types.CBufRet.f32 %3803, 0
  %3805 = select i1 %3802, float %3799, float %3804
  %3806 = fadd fast float %3805, %3801
  %3807 = fsub fast float %3796, %3434
  %3808 = fmul fast float %3807, %3650
  %3809 = fadd fast float %3808, %3434
  %3810 = fmul fast float %3806, %3650
  %3811 = call float @dx.op.binary.f32(i32 35, float %3433, float %3810)  ; FMax(a,b)
  %3812 = and i32 %3580, 16
  %3813 = icmp eq i32 %3812, 0
  br i1 %3813, label %3836, label %3814

; <label>:3814                                    ; preds = %3753
  %3815 = bitcast float %3501 to i32
  %3816 = add i32 %3498, 0
  %3817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3816, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3818 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3817, %dx.types.Handle %3663, float %3591, float %3594, float undef, float undef, i32 0, i32 0, i32 undef, float %3596, float %3598, float undef, float %3600, float %3602, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3819 = extractvalue %dx.types.ResRet.f32 %3818, 0
  %3820 = extractvalue %dx.types.ResRet.f32 %3818, 1
  %3821 = extractvalue %dx.types.ResRet.f32 %3818, 2
  %3822 = and i32 %3815, 65535
  %3823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3822)  ; LegacyF16ToF32(value)
  %3824 = fmul fast float %3819, %3492
  %3825 = fmul fast float %3820, %3493
  %3826 = fmul fast float %3821, %3494
  %3827 = and i32 %3580, 16384
  %3828 = icmp ne i32 %3827, 0
  %3829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3830 = extractvalue %dx.types.CBufRet.f32 %3829, 0
  %3831 = select i1 %3828, float %3830, float 1.000000e+00
  %3832 = fmul fast float %3831, %3823
  %3833 = fmul fast float %3824, %3832
  %3834 = fmul fast float %3825, %3832
  %3835 = fmul fast float %3826, %3832
  br label %3836

; <label>:3836                                    ; preds = %3814, %3753
  %3837 = phi float [ %3833, %3814 ], [ 0.000000e+00, %3753 ]
  %3838 = phi float [ %3834, %3814 ], [ 0.000000e+00, %3753 ]
  %3839 = phi float [ %3835, %3814 ], [ 0.000000e+00, %3753 ]
  %3840 = fsub fast float %3837, %3437
  %3841 = fsub fast float %3838, %3438
  %3842 = fsub fast float %3839, %3439
  %3843 = fmul fast float %3840, %3650
  %3844 = fmul fast float %3841, %3650
  %3845 = fmul fast float %3842, %3650
  %3846 = fadd fast float %3843, %3437
  %3847 = fadd fast float %3844, %3438
  %3848 = fadd fast float %3845, %3439
  br label %3551

; <label>:3849                                    ; preds = %3551
  br label %3850

; <label>:3850                                    ; preds = %3849, %3367
  %3851 = phi float [ 0.000000e+00, %3367 ], [ %3552, %3849 ]
  %3852 = phi float [ %3311, %3367 ], [ %3553, %3849 ]
  %3853 = phi float [ %3290, %3367 ], [ %3554, %3849 ]
  %3854 = phi float [ 0.000000e+00, %3367 ], [ %3555, %3849 ]
  %3855 = phi float [ 0.000000e+00, %3367 ], [ %3556, %3849 ]
  %3856 = phi float [ %3333, %3367 ], [ %3557, %3849 ]
  %3857 = phi float [ %3335, %3367 ], [ %3558, %3849 ]
  %3858 = phi float [ %3337, %3367 ], [ %3559, %3849 ]
  %3859 = phi float [ %3363, %3367 ], [ %3560, %3849 ]
  %3860 = phi float [ %3364, %3367 ], [ %3561, %3849 ]
  %3861 = phi float [ %3365, %3367 ], [ %3562, %3849 ]
  %3862 = phi float [ %3289, %3367 ], [ %3563, %3849 ]
  %3863 = phi float [ %3288, %3367 ], [ %3564, %3849 ]
  %3864 = phi float [ 0.000000e+00, %3367 ], [ %3565, %3849 ]
  %3865 = phi float [ %3287, %3367 ], [ %3566, %3849 ]
  %3866 = phi float [ %3318, %3367 ], [ %3567, %3849 ]
  %3867 = phi float [ %3319, %3367 ], [ %3568, %3849 ]
  %3868 = phi float [ %3320, %3367 ], [ %3569, %3849 ]
  %3869 = call float @dx.op.dot3.f32(i32 55, float %3859, float %3860, float %3861, float %3859, float %3860, float %3861)  ; Dot3(ax,ay,az,bx,by,bz)
  %3870 = call float @dx.op.unary.f32(i32 25, float %3869)  ; Rsqrt(value)
  %3871 = fmul fast float %3870, %3859
  %3872 = fmul fast float %3870, %3860
  %3873 = fmul fast float %3870, %3861
  %3874 = fadd fast float %3864, %1070
  %3875 = call float @dx.op.unary.f32(i32 7, float %3874)  ; Saturate(value)
  %3876 = call float @dx.op.dot3.f32(i32 55, float %3871, float %3872, float %3873, float %3871, float %3872, float %3873)  ; Dot3(ax,ay,az,bx,by,bz)
  %3877 = call float @dx.op.unary.f32(i32 25, float %3876)  ; Rsqrt(value)
  %3878 = fmul fast float %3877, %3871
  %3879 = fmul fast float %3877, %3872
  %3880 = fmul fast float %3877, %3873
  br label %3881

; <label>:3881                                    ; preds = %3850, %3278
  %3882 = phi float [ %3878, %3850 ], [ %3363, %3278 ]
  %3883 = phi float [ %3879, %3850 ], [ %3364, %3278 ]
  %3884 = phi float [ %3880, %3850 ], [ %3365, %3278 ]
  %3885 = phi float [ %3866, %3850 ], [ %3318, %3278 ]
  %3886 = phi float [ %3867, %3850 ], [ %3319, %3278 ]
  %3887 = phi float [ %3868, %3850 ], [ %3320, %3278 ]
  %3888 = phi float [ %3856, %3850 ], [ %3333, %3278 ]
  %3889 = phi float [ %3857, %3850 ], [ %3335, %3278 ]
  %3890 = phi float [ %3858, %3850 ], [ %3337, %3278 ]
  %3891 = phi float [ %3865, %3850 ], [ %3287, %3278 ]
  %3892 = phi float [ %3875, %3850 ], [ %1070, %3278 ]
  %3893 = phi float [ %3863, %3850 ], [ %3288, %3278 ]
  %3894 = phi float [ %3862, %3850 ], [ %3289, %3278 ]
  %3895 = phi float [ %3855, %3850 ], [ 0.000000e+00, %3278 ]
  %3896 = phi float [ %3854, %3850 ], [ 0.000000e+00, %3278 ]
  %3897 = phi float [ %3851, %3850 ], [ 0.000000e+00, %3278 ]
  %3898 = phi float [ %3852, %3850 ], [ %3311, %3278 ]
  %3899 = phi float [ %3853, %3850 ], [ %3290, %3278 ]
  %3900 = fadd fast float %3891, 0xBFB99999A0000000
  %3901 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3902 = fmul fast float %3901, 0x3FF1C71C80000000
  %3903 = call float @dx.op.binary.f32(i32 36, float %3891, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3904 = fsub fast float 1.000000e+00, %3902
  %3905 = call float @dx.op.unary.f32(i32 7, float %3904)  ; Saturate(value)
  %3906 = fmul fast float %3905, %3885
  %3907 = fmul fast float %3905, %3886
  %3908 = fmul fast float %3905, %3887
  %3909 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3910 = call float @dx.op.unary.f32(i32 7, float %3907)  ; Saturate(value)
  %3911 = call float @dx.op.unary.f32(i32 7, float %3908)  ; Saturate(value)
  %3912 = fmul fast float %3902, %3885
  %3913 = fmul fast float %3902, %3886
  %3914 = fmul fast float %3902, %3887
  %3915 = fadd fast float %3912, %3903
  %3916 = fadd fast float %3913, %3903
  %3917 = fadd fast float %3914, %3903
  %3918 = call float @dx.op.unary.f32(i32 7, float %3915)  ; Saturate(value)
  %3919 = call float @dx.op.unary.f32(i32 7, float %3916)  ; Saturate(value)
  %3920 = call float @dx.op.unary.f32(i32 7, float %3917)  ; Saturate(value)
  %3921 = call float @dx.op.unary.f32(i32 7, float %3893)  ; Saturate(value)
  %3922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.i32 %3922, 3
  %3924 = and i32 %3923, 8
  %3925 = icmp ne i32 %3924, 0
  %3926 = call float @dx.op.binary.f32(i32 35, float %3909, float %3885)  ; FMax(a,b)
  %3927 = call float @dx.op.binary.f32(i32 35, float %3910, float %3885)  ; FMax(a,b)
  %3928 = call float @dx.op.binary.f32(i32 35, float %3911, float %3885)  ; FMax(a,b)
  %3929 = call float @dx.op.dot3.f32(i32 55, float %3909, float %3910, float %3911, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3930 = select i1 %275, float %3885, float %3909
  %3931 = select i1 %275, float %3929, float %3910
  %3932 = select i1 %275, float 1.000000e+00, float %3911
  %3933 = select i1 %3925, float %3926, float %3930
  %3934 = select i1 %3925, float %3927, float %3931
  %3935 = select i1 %3925, float %3928, float %3932
  %3936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3937 = extractvalue %dx.types.CBufRet.f32 %3936, 0
  %3938 = extractvalue %dx.types.CBufRet.f32 %3936, 1
  %3939 = extractvalue %dx.types.CBufRet.f32 %3936, 2
  %3940 = fadd fast float %3937, %203
  %3941 = fadd fast float %3938, %204
  %3942 = fadd fast float %3939, %205
  %3943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3944 = extractvalue %dx.types.CBufRet.f32 %3943, 0
  %3945 = extractvalue %dx.types.CBufRet.f32 %3943, 1
  %3946 = fsub fast float %3940, %3944
  %3947 = fsub fast float %3941, %3945
  %3948 = fmul fast float %3946, %3946
  %3949 = fmul fast float %3947, %3947
  %3950 = fadd fast float %3948, %3949
  %3951 = call float @dx.op.unary.f32(i32 24, float %3950)  ; Sqrt(value)
  %3952 = extractvalue %dx.types.CBufRet.f32 %3943, 2
  %3953 = fcmp fast olt float %3951, %3952
  br i1 %3953, label %3954, label %4021

; <label>:3954                                    ; preds = %3881
  %3955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3956 = extractvalue %dx.types.CBufRet.f32 %3955, 0
  %3957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3958 = extractvalue %dx.types.CBufRet.f32 %3957, 0
  %3959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3960 = extractvalue %dx.types.CBufRet.f32 %3959, 0
  %3961 = extractvalue %dx.types.CBufRet.f32 %3955, 1
  %3962 = extractvalue %dx.types.CBufRet.f32 %3957, 1
  %3963 = extractvalue %dx.types.CBufRet.f32 %3959, 1
  %3964 = extractvalue %dx.types.CBufRet.f32 %3955, 3
  %3965 = extractvalue %dx.types.CBufRet.f32 %3957, 3
  %3966 = extractvalue %dx.types.CBufRet.f32 %3959, 3
  %3967 = fadd fast float %3964, %3940
  %3968 = fadd fast float %3965, %3941
  %3969 = fadd fast float %3966, %3942
  %3970 = fmul fast float %3967, %3956
  %3971 = call float @dx.op.tertiary.f32(i32 46, float %3968, float %3958, float %3970)  ; FMad(a,b,c)
  %3972 = call float @dx.op.tertiary.f32(i32 46, float %3969, float %3960, float %3971)  ; FMad(a,b,c)
  %3973 = fmul fast float %3967, %3961
  %3974 = call float @dx.op.tertiary.f32(i32 46, float %3968, float %3962, float %3973)  ; FMad(a,b,c)
  %3975 = call float @dx.op.tertiary.f32(i32 46, float %3969, float %3963, float %3974)  ; FMad(a,b,c)
  %3976 = fsub fast float %3972, %3964
  %3977 = fsub fast float %3975, %3965
  %3978 = fsub fast float %3976, %3944
  %3979 = fadd fast float %3978, %3952
  %3980 = fsub fast float %3977, %3945
  %3981 = fadd fast float %3980, %3952
  %3982 = extractvalue %dx.types.CBufRet.f32 %3943, 3
  %3983 = fmul fast float %3979, %3982
  %3984 = fmul fast float %3981, %3982
  %3985 = call float @dx.op.unary.f32(i32 7, float %3983)  ; Saturate(value)
  %3986 = call float @dx.op.unary.f32(i32 7, float %3984)  ; Saturate(value)
  %3987 = fsub fast float 1.000000e+00, %3985
  %3988 = fsub fast float 1.000000e+00, %3986
  %3989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %55, float %3987, float %3988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3990 = extractvalue %dx.types.ResRet.f32 %3989, 0
  %3991 = fcmp fast ugt float %3990, 0.000000e+00
  br i1 %3991, label %3992, label %4295

; <label>:3992                                    ; preds = %3954
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 2
  %3995 = fmul fast float %3994, %3990
  %3996 = extractvalue %dx.types.CBufRet.f32 %3993, 3
  %3997 = fadd fast float %3996, %3995
  %3998 = extractvalue %dx.types.CBufRet.f32 %3959, 2
  %3999 = fadd fast float %3997, %3966
  %4000 = fmul fast float %3972, %3960
  %4001 = call float @dx.op.tertiary.f32(i32 46, float %3975, float %3963, float %4000)  ; FMad(a,b,c)
  %4002 = call float @dx.op.tertiary.f32(i32 46, float %3999, float %3998, float %4001)  ; FMad(a,b,c)
  %4003 = fsub fast float %4002, %3966
  %4004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4005 = extractvalue %dx.types.CBufRet.f32 %4004, 2
  %4006 = fsub fast float %4003, %4005
  %4007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %55, float %3987, float %3988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4008 = extractvalue %dx.types.ResRet.f32 %4007, 0
  %4009 = extractvalue %dx.types.ResRet.f32 %4007, 1
  %4010 = extractvalue %dx.types.ResRet.f32 %4007, 2
  %4011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %55, float %3987, float %3988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4012 = extractvalue %dx.types.ResRet.f32 %4011, 0
  %4013 = extractvalue %dx.types.ResRet.f32 %4011, 1
  %4014 = extractvalue %dx.types.ResRet.f32 %4011, 2
  %4015 = fadd fast float %4012, %4008
  %4016 = fmul fast float %4015, 0x3F847AE140000000
  %4017 = fadd fast float %4013, %4009
  %4018 = fmul fast float %4017, 0x3F847AE140000000
  %4019 = fadd fast float %4014, %4010
  %4020 = fmul fast float %4019, 0x3F847AE140000000
  br label %4295

; <label>:4021                                    ; preds = %3881
  %4022 = and i32 %254, 1
  %4023 = icmp eq i32 %4022, 0
  br i1 %4023, label %4295, label %4024

; <label>:4024                                    ; preds = %4021
  %4025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4025, 0
  %4027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4028 = extractvalue %dx.types.CBufRet.f32 %4027, 0
  %4029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.CBufRet.f32 %4025, 1
  %4032 = extractvalue %dx.types.CBufRet.f32 %4027, 1
  %4033 = extractvalue %dx.types.CBufRet.f32 %4029, 1
  %4034 = extractvalue %dx.types.CBufRet.f32 %4025, 3
  %4035 = extractvalue %dx.types.CBufRet.f32 %4027, 3
  %4036 = extractvalue %dx.types.CBufRet.f32 %4029, 3
  %4037 = fadd fast float %4034, %3940
  %4038 = fadd fast float %4035, %3941
  %4039 = fadd fast float %4036, %3942
  %4040 = fmul fast float %4037, %4026
  %4041 = call float @dx.op.tertiary.f32(i32 46, float %4038, float %4028, float %4040)  ; FMad(a,b,c)
  %4042 = call float @dx.op.tertiary.f32(i32 46, float %4039, float %4030, float %4041)  ; FMad(a,b,c)
  %4043 = fmul fast float %4037, %4031
  %4044 = call float @dx.op.tertiary.f32(i32 46, float %4038, float %4032, float %4043)  ; FMad(a,b,c)
  %4045 = call float @dx.op.tertiary.f32(i32 46, float %4039, float %4033, float %4044)  ; FMad(a,b,c)
  %4046 = fsub fast float %4042, %4034
  %4047 = fsub fast float %4045, %4035
  %4048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4049 = extractvalue %dx.types.CBufRet.f32 %4048, 0
  %4050 = extractvalue %dx.types.CBufRet.f32 %4048, 1
  %4051 = extractvalue %dx.types.CBufRet.f32 %4048, 2
  %4052 = extractvalue %dx.types.CBufRet.f32 %4048, 3
  %4053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.f32 %4053, 3
  %4055 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.i32 %4055, 0
  %4057 = extractvalue %dx.types.CBufRet.i32 %4055, 1
  %4058 = udiv i32 %4057, %4056
  %4059 = fsub fast float %4046, %4049
  %4060 = fsub fast float %4047, %4050
  %4061 = call float @dx.op.binary.f32(i32 35, float %4059, float 0.000000e+00)  ; FMax(a,b)
  %4062 = call float @dx.op.binary.f32(i32 35, float %4060, float 0.000000e+00)  ; FMax(a,b)
  %4063 = call float @dx.op.binary.f32(i32 36, float %4061, float %4051)  ; FMin(a,b)
  %4064 = call float @dx.op.binary.f32(i32 36, float %4062, float %4052)  ; FMin(a,b)
  %4065 = add i32 %4056, -1
  %4066 = add i32 %4058, -1
  %4067 = fmul fast float %4063, %4054
  %4068 = fmul fast float %4064, %4054
  %4069 = fptoui float %4067 to i32
  %4070 = fptoui float %4068 to i32
  %4071 = call i32 @dx.op.binary.i32(i32 40, i32 %4069, i32 %4065)  ; UMin(a,b)
  %4072 = call i32 @dx.op.binary.i32(i32 40, i32 %4070, i32 %4066)  ; UMin(a,b)
  %4073 = mul i32 %4072, %4056
  %4074 = add i32 %4073, %4071
  %4075 = shl i32 %4074, 2
  %4076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4075, i32 undef)  ; BufferLoad(srv,index,wot)
  %4077 = extractvalue %dx.types.ResRet.i32 %4076, 0
  %4078 = icmp eq i32 %4077, -1
  br i1 %4078, label %4295, label %4079

; <label>:4079                                    ; preds = %4024
  %4080 = mul i32 %4077, 148
  %4081 = add i32 %4080, 4
  %4082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4081, i32 undef)  ; BufferLoad(srv,index,wot)
  %4083 = extractvalue %dx.types.ResRet.f32 %4082, 0
  %4084 = add i32 %4080, 8
  %4085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4084, i32 undef)  ; BufferLoad(srv,index,wot)
  %4086 = extractvalue %dx.types.ResRet.f32 %4085, 0
  %4087 = add i32 %4080, 36
  %4088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4087, i32 undef)  ; BufferLoad(srv,index,wot)
  %4089 = extractvalue %dx.types.ResRet.f32 %4088, 0
  %4090 = add i32 %4080, 60
  %4091 = add i32 %4080, 92
  %4092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4091, i32 undef)  ; BufferLoad(srv,index,wot)
  %4093 = extractvalue %dx.types.ResRet.i32 %4092, 0
  %4094 = add i32 %4080, 116
  %4095 = fsub fast float %4046, %4083
  %4096 = fsub fast float %4047, %4086
  %4097 = fmul fast float %4054, %4095
  %4098 = fmul fast float %4054, %4096
  %4099 = call float @dx.op.unary.f32(i32 7, float %4097)  ; Saturate(value)
  %4100 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  %4101 = fsub fast float 1.000000e+00, %4100
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 2
  %4104 = call float @dx.op.unary.f32(i32 83, float %4099)  ; DerivCoarseX(value)
  %4105 = call float @dx.op.unary.f32(i32 83, float %4101)  ; DerivCoarseX(value)
  %4106 = call float @dx.op.unary.f32(i32 84, float %4099)  ; DerivCoarseY(value)
  %4107 = call float @dx.op.unary.f32(i32 84, float %4101)  ; DerivCoarseY(value)
  %4108 = fmul fast float %4104, %4103
  %4109 = fmul fast float %4105, %4103
  %4110 = fmul fast float %4106, %4103
  %4111 = fmul fast float %4107, %4103
  %4112 = call float @dx.op.dot2.f32(i32 54, float %4110, float %4111, float %4110, float %4111)  ; Dot2(ax,ay,bx,by)
  %4113 = call float @dx.op.dot2.f32(i32 54, float %4108, float %4109, float %4108, float %4109)  ; Dot2(ax,ay,bx,by)
  %4114 = call float @dx.op.binary.f32(i32 35, float %4113, float %4112)  ; FMax(a,b)
  %4115 = call float @dx.op.unary.f32(i32 23, float %4114)  ; Log(value)
  %4116 = fmul fast float %4115, 5.000000e-01
  %4117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.f32 %4117, 1
  %4119 = fadd fast float %4118, %4116
  %4120 = call float @dx.op.binary.f32(i32 35, float %4119, float 0.000000e+00)  ; FMax(a,b)
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 3
  %4123 = fadd fast float %4122, %4120
  %4124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4125 = extractvalue %dx.types.CBufRet.f32 %4124, 3
  %4126 = fadd fast float %4123, %4125
  %4127 = add i32 %4093, 0
  %4128 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4127, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4129 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4128, i32 0)  ; GetDimensions(handle,mipLevel)
  %4130 = extractvalue %dx.types.Dimensions %4129, 0
  %4131 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4130)  ; FirstbitLo(value)
  %4132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.i32 %4132, 1
  %4134 = sub nsw i32 %4133, %4131
  %4135 = sitofp i32 %4134 to float
  %4136 = fsub fast float %4126, %4135
  %4137 = call float @dx.op.binary.f32(i32 35, float %4136, float 0.000000e+00)  ; FMax(a,b)
  %4138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4128, %dx.types.Handle %53, float %4099, float %4101, float %4089, float undef, i32 0, i32 0, i32 undef, float %4137)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4139 = extractvalue %dx.types.ResRet.f32 %4138, 0
  %4140 = fcmp ule float %4139, 0x3FE0101020000000
  %4141 = extractvalue %dx.types.CBufRet.i32 %4132, 0
  %4142 = and i32 %4141, 128
  %4143 = icmp ne i32 %4142, 0
  %4144 = and i1 %4140, %4143
  br i1 %4144, label %4295, label %4145

; <label>:4145                                    ; preds = %4079
  %4146 = add i32 %4080, 20
  %4147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4146, i32 undef)  ; BufferLoad(srv,index,wot)
  %4148 = extractvalue %dx.types.ResRet.f32 %4147, 0
  %4149 = add i32 %4080, 24
  %4150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4149, i32 undef)  ; BufferLoad(srv,index,wot)
  %4151 = extractvalue %dx.types.ResRet.f32 %4150, 0
  %4152 = add i32 %4080, 40
  %4153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4152, i32 undef)  ; BufferLoad(srv,index,wot)
  %4154 = extractvalue %dx.types.ResRet.f32 %4153, 0
  %4155 = add i32 %4080, 96
  %4156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4155, i32 undef)  ; BufferLoad(srv,index,wot)
  %4157 = extractvalue %dx.types.ResRet.i32 %4156, 0
  %4158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4159 = extractvalue %dx.types.CBufRet.f32 %4158, 2
  %4160 = fmul fast float %4159, %4099
  %4161 = fmul fast float %4159, %4101
  %4162 = extractvalue %dx.types.CBufRet.f32 %4158, 3
  %4163 = fadd fast float %4160, %4162
  %4164 = fadd fast float %4161, %4162
  %4165 = add i32 %4157, 0
  %4166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4165, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4167 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4166, i32 0)  ; GetDimensions(handle,mipLevel)
  %4168 = extractvalue %dx.types.Dimensions %4167, 0
  %4169 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4168)  ; FirstbitLo(value)
  %4170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.i32 %4170, 1
  %4172 = sub nsw i32 %4171, %4169
  %4173 = sitofp i32 %4172 to float
  %4174 = fsub fast float %4123, %4173
  %4175 = call float @dx.op.binary.f32(i32 35, float %4174, float 0.000000e+00)  ; FMax(a,b)
  %4176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4166, %dx.types.Handle %53, float %4163, float %4164, float %4154, float undef, i32 0, i32 0, i32 undef, float %4175)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4177 = extractvalue %dx.types.ResRet.f32 %4176, 0
  %4178 = fmul fast float %4177, %4148
  %4179 = fadd fast float %4178, %4151
  %4180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4181 = extractvalue %dx.types.CBufRet.f32 %4180, 0
  %4182 = extractvalue %dx.types.CBufRet.f32 %4180, 1
  %4183 = extractvalue %dx.types.CBufRet.f32 %4180, 2
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 3
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 3
  %4188 = extractvalue %dx.types.CBufRet.f32 %4180, 3
  %4189 = fadd fast float %4185, %4046
  %4190 = fadd fast float %4187, %4047
  %4191 = fadd fast float %4179, %4188
  %4192 = fmul fast float %4189, %4181
  %4193 = call float @dx.op.tertiary.f32(i32 46, float %4190, float %4182, float %4192)  ; FMad(a,b,c)
  %4194 = call float @dx.op.tertiary.f32(i32 46, float %4191, float %4183, float %4193)  ; FMad(a,b,c)
  %4195 = fsub fast float %4194, %4188
  %4196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.f32 %4196, 2
  %4198 = fsub fast float %4195, %4197
  %4199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.i32 %4199, 0
  %4201 = call i32 @dx.op.binary.i32(i32 40, i32 %4077, i32 %4200)  ; UMin(a,b)
  %4202 = mul i32 %4201, 36
  %4203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4202, i32 undef)  ; BufferLoad(srv,index,wot)
  %4204 = extractvalue %dx.types.ResRet.i32 %4203, 0
  %4205 = add i32 %4202, 4
  %4206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4207 = extractvalue %dx.types.CBufRet.f32 %4206, 0
  %4208 = fmul fast float %4207, %4099
  %4209 = fmul fast float %4207, %4101
  %4210 = extractvalue %dx.types.CBufRet.f32 %4206, 1
  %4211 = fadd fast float %4208, %4210
  %4212 = fadd fast float %4209, %4210
  %4213 = icmp eq i32 %4204, 0
  br i1 %4213, label %4282, label %4214

; <label>:4214                                    ; preds = %4145
  br label %4215

; <label>:4215                                    ; preds = %4272, %4214
  %4216 = phi float [ %4273, %4272 ], [ 0.000000e+00, %4214 ]
  %4217 = phi float [ %4274, %4272 ], [ 0.000000e+00, %4214 ]
  %4218 = phi float [ %4275, %4272 ], [ 0.000000e+00, %4214 ]
  %4219 = phi float [ %4276, %4272 ], [ 0.000000e+00, %4214 ]
  %4220 = phi float [ %4277, %4272 ], [ 0.000000e+00, %4214 ]
  %4221 = phi float [ %4278, %4272 ], [ 0.000000e+00, %4214 ]
  %4222 = phi i32 [ %4279, %4272 ], [ 0, %4214 ]
  %4223 = shl i32 %4222, 2
  %4224 = add i32 %4090, %4223
  %4225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4224, i32 undef)  ; BufferLoad(srv,index,wot)
  %4226 = extractvalue %dx.types.ResRet.f32 %4225, 0
  %4227 = add i32 %4094, %4223
  %4228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4227, i32 undef)  ; BufferLoad(srv,index,wot)
  %4229 = extractvalue %dx.types.ResRet.i32 %4228, 0
  %4230 = add i32 %4229, 0
  %4231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4230, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4232 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4231, i32 0)  ; GetDimensions(handle,mipLevel)
  %4233 = extractvalue %dx.types.Dimensions %4232, 0
  %4234 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4233)  ; FirstbitLo(value)
  %4235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.i32 %4235, 1
  %4237 = sub nsw i32 %4236, %4234
  %4238 = sitofp i32 %4237 to float
  %4239 = fsub fast float %4123, %4238
  %4240 = call float @dx.op.binary.f32(i32 35, float %4239, float 0.000000e+00)  ; FMax(a,b)
  %4241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4231, %dx.types.Handle %53, float %4211, float %4212, float %4226, float undef, i32 0, i32 0, i32 undef, float %4240)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4242 = extractvalue %dx.types.ResRet.f32 %4241, 0
  %4243 = fcmp fast ogt float %4242, 0.000000e+00
  br i1 %4243, label %4244, label %4272

; <label>:4244                                    ; preds = %4215
  %4245 = add i32 %4205, %4223
  %4246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4245, i32 undef)  ; BufferLoad(srv,index,wot)
  %4247 = extractvalue %dx.types.ResRet.i32 %4246, 0
  %4248 = and i32 %4247, 32767
  %4249 = mul nuw nsw i32 %4248, 928
  %4250 = add nuw nsw i32 %4249, 48
  %4251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4250, i32 undef)  ; BufferLoad(srv,index,wot)
  %4252 = extractvalue %dx.types.ResRet.f32 %4251, 0
  %4253 = extractvalue %dx.types.ResRet.f32 %4251, 1
  %4254 = extractvalue %dx.types.ResRet.f32 %4251, 2
  %4255 = add nuw nsw i32 %4249, 60
  %4256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4255, i32 undef)  ; BufferLoad(srv,index,wot)
  %4257 = extractvalue %dx.types.ResRet.f32 %4256, 0
  %4258 = extractvalue %dx.types.ResRet.f32 %4256, 1
  %4259 = extractvalue %dx.types.ResRet.f32 %4256, 2
  %4260 = fmul fast float %4252, %4242
  %4261 = fmul fast float %4253, %4242
  %4262 = fmul fast float %4254, %4242
  %4263 = fadd fast float %4260, %4216
  %4264 = fadd fast float %4261, %4217
  %4265 = fadd fast float %4262, %4218
  %4266 = fmul fast float %4257, %4242
  %4267 = fmul fast float %4258, %4242
  %4268 = fmul fast float %4259, %4242
  %4269 = fadd fast float %4266, %4219
  %4270 = fadd fast float %4267, %4220
  %4271 = fadd fast float %4268, %4221
  br label %4272

; <label>:4272                                    ; preds = %4244, %4215
  %4273 = phi float [ %4263, %4244 ], [ %4216, %4215 ]
  %4274 = phi float [ %4264, %4244 ], [ %4217, %4215 ]
  %4275 = phi float [ %4265, %4244 ], [ %4218, %4215 ]
  %4276 = phi float [ %4269, %4244 ], [ %4219, %4215 ]
  %4277 = phi float [ %4270, %4244 ], [ %4220, %4215 ]
  %4278 = phi float [ %4271, %4244 ], [ %4221, %4215 ]
  %4279 = add nuw i32 %4222, 1
  %4280 = icmp eq i32 %4279, %4204
  br i1 %4280, label %4281, label %4215

; <label>:4281                                    ; preds = %4272
  br label %4282

; <label>:4282                                    ; preds = %4281, %4145
  %4283 = phi float [ 0.000000e+00, %4145 ], [ %4273, %4281 ]
  %4284 = phi float [ 0.000000e+00, %4145 ], [ %4274, %4281 ]
  %4285 = phi float [ 0.000000e+00, %4145 ], [ %4275, %4281 ]
  %4286 = phi float [ 0.000000e+00, %4145 ], [ %4276, %4281 ]
  %4287 = phi float [ 0.000000e+00, %4145 ], [ %4277, %4281 ]
  %4288 = phi float [ 0.000000e+00, %4145 ], [ %4278, %4281 ]
  %4289 = fadd fast float %4286, %4283
  %4290 = fmul fast float %4289, 0x3F847AE140000000
  %4291 = fadd fast float %4287, %4284
  %4292 = fmul fast float %4291, 0x3F847AE140000000
  %4293 = fadd fast float %4288, %4285
  %4294 = fmul fast float %4293, 0x3F847AE140000000
  br label %4295

; <label>:4295                                    ; preds = %4282, %4079, %4024, %4021, %3992, %3954
  %4296 = phi float [ %4016, %3992 ], [ 0.000000e+00, %3954 ], [ %4290, %4282 ], [ 0.000000e+00, %4024 ], [ 0.000000e+00, %4079 ], [ 0.000000e+00, %4021 ]
  %4297 = phi float [ %4018, %3992 ], [ 0.000000e+00, %3954 ], [ %4292, %4282 ], [ 0.000000e+00, %4024 ], [ 0.000000e+00, %4079 ], [ 0.000000e+00, %4021 ]
  %4298 = phi float [ %4020, %3992 ], [ 0.000000e+00, %3954 ], [ %4294, %4282 ], [ 0.000000e+00, %4024 ], [ 0.000000e+00, %4079 ], [ 0.000000e+00, %4021 ]
  %4299 = phi float [ %4006, %3992 ], [ -1.310720e+05, %3954 ], [ %4198, %4282 ], [ -1.310720e+05, %4024 ], [ -1.310720e+05, %4079 ], [ -1.310720e+05, %4021 ]
  %4300 = phi i1 [ true, %3992 ], [ false, %3954 ], [ true, %4282 ], [ false, %4024 ], [ false, %4079 ], [ false, %4021 ]
  %4301 = and i32 %254, 3
  %4302 = icmp eq i32 %4301, 1
  %4303 = select i1 %4302, float 1.000000e+00, float 0.000000e+00
  %4304 = fsub fast float %4299, %205
  %4305 = call float @dx.op.unary.f32(i32 7, float %4304)  ; Saturate(value)
  %4306 = select i1 %4300, float %4305, float 1.000000e+00
  %4307 = fmul fast float %4306, %4303
  %4308 = icmp eq i32 %4301, 3
  %4309 = select i1 %4308, float 1.000000e+00, float %4307
  %4310 = call float @dx.op.binary.f32(i32 35, float %3897, float %4309)  ; FMax(a,b)
  %4311 = fcmp fast olt float %4309, 1.000000e+00
  %4312 = fcmp uge float %77, 0.000000e+00
  %4313 = and i1 %4312, %4311
  br i1 %4313, label %4314, label %4324

; <label>:4314                                    ; preds = %4295
  %4315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %53, float %77, float %78, float %79, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = extractvalue %dx.types.ResRet.f32 %4315, 1
  %4318 = extractvalue %dx.types.ResRet.f32 %4315, 2
  %4319 = fadd fast float %4316, %4310
  %4320 = fcmp ule float %76, 0.000000e+00
  %4321 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4322 = select i1 %4320, float %4321, float 1.000000e+00
  %4323 = fmul fast float %4322, %4318
  br label %4324

; <label>:4324                                    ; preds = %4314, %4295
  %4325 = phi float [ %4319, %4314 ], [ %4310, %4295 ]
  %4326 = phi float [ %4317, %4314 ], [ 0.000000e+00, %4295 ]
  %4327 = phi float [ %4323, %4314 ], [ 0.000000e+00, %4295 ]
  %4328 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4329 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4330 = call float @dx.op.unary.f32(i32 7, float %4327)  ; Saturate(value)
  %4331 = fcmp fast une float %4329, 0.000000e+00
  %4332 = fcmp fast une float %4330, 0.000000e+00
  %4333 = or i1 %4331, %4332
  br i1 %4333, label %4334, label %4893

; <label>:4334                                    ; preds = %4324
  br i1 %4331, label %4335, label %4608

; <label>:4335                                    ; preds = %4334
  %4336 = call float @dx.op.unary.f32(i32 23, float %3894)  ; Log(value)
  %4337 = fmul fast float %4336, 4.000000e+00
  %4338 = call float @dx.op.unary.f32(i32 21, float %4337)  ; Exp(value)
  %4339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4340 = extractvalue %dx.types.CBufRet.f32 %4339, 0
  %4341 = fmul fast float %4340, %64
  %4342 = fmul fast float %4340, %65
  %4343 = fmul fast float %4340, %66
  %4344 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4345 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4346 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4347 = call float @dx.op.unary.f32(i32 23, float %4344)  ; Log(value)
  %4348 = call float @dx.op.unary.f32(i32 23, float %4345)  ; Log(value)
  %4349 = call float @dx.op.unary.f32(i32 23, float %4346)  ; Log(value)
  %4350 = fmul fast float %4347, 4.000000e+00
  %4351 = fmul fast float %4348, 4.000000e+00
  %4352 = fmul fast float %4349, 4.000000e+00
  %4353 = call float @dx.op.unary.f32(i32 21, float %4350)  ; Exp(value)
  %4354 = call float @dx.op.unary.f32(i32 21, float %4351)  ; Exp(value)
  %4355 = call float @dx.op.unary.f32(i32 21, float %4352)  ; Exp(value)
  %4356 = fadd fast float %4354, %4353
  %4357 = fadd fast float %4356, %4355
  %4358 = fdiv fast float 1.000000e+00, %4357
  %4359 = fmul fast float %4358, %4353
  %4360 = fcmp fast ogt float %73, 0.000000e+00
  %4361 = fcmp fast ogt float %74, 0.000000e+00
  %4362 = fcmp fast ogt float %75, 0.000000e+00
  %4363 = fcmp fast olt float %73, 0.000000e+00
  %4364 = fcmp fast olt float %74, 0.000000e+00
  %4365 = fcmp fast olt float %75, 0.000000e+00
  %4366 = zext i1 %4360 to i32
  %4367 = zext i1 %4361 to i32
  %4368 = zext i1 %4362 to i32
  %4369 = zext i1 %4363 to i32
  %4370 = zext i1 %4364 to i32
  %4371 = zext i1 %4365 to i32
  %4372 = sub nsw i32 %4366, %4369
  %4373 = sub nsw i32 %4367, %4370
  %4374 = sub nsw i32 %4368, %4371
  %4375 = call float @dx.op.unary.f32(i32 83, float %4341)  ; DerivCoarseX(value)
  %4376 = call float @dx.op.unary.f32(i32 83, float %4342)  ; DerivCoarseX(value)
  %4377 = call float @dx.op.unary.f32(i32 83, float %4343)  ; DerivCoarseX(value)
  %4378 = call float @dx.op.unary.f32(i32 84, float %4341)  ; DerivCoarseY(value)
  %4379 = call float @dx.op.unary.f32(i32 84, float %4342)  ; DerivCoarseY(value)
  %4380 = call float @dx.op.unary.f32(i32 84, float %4343)  ; DerivCoarseY(value)
  %4381 = fcmp fast ole float %286, %4359
  %4382 = fmul fast float %4358, %4356
  %4383 = fcmp fast ole float %286, %4382
  %4384 = select i1 %4383, float %4343, float %4341
  %4385 = select i1 %4383, float %4341, float %4342
  %4386 = select i1 %4381, float %4342, float %4384
  %4387 = select i1 %4381, float %4343, float %4385
  %4388 = select i1 %4383, float %4377, float %4375
  %4389 = select i1 %4383, float %4375, float %4376
  %4390 = select i1 %4381, float %4376, float %4388
  %4391 = select i1 %4381, float %4377, float %4389
  %4392 = select i1 %4383, float %4380, float %4378
  %4393 = select i1 %4383, float %4378, float %4379
  %4394 = select i1 %4381, float %4379, float %4392
  %4395 = select i1 %4381, float %4380, float %4393
  %4396 = call float @dx.op.unary.f32(i32 27, float %4386)  ; Round_ni(value)
  %4397 = call float @dx.op.unary.f32(i32 27, float %4387)  ; Round_ni(value)
  %4398 = fptosi float %4396 to i32
  %4399 = fptosi float %4397 to i32
  %4400 = xor i32 %4399, %4398
  %4401 = sitofp i32 %4400 to float
  %4402 = fptosi float %4401 to i32
  %4403 = sitofp i32 %4402 to float
  %4404 = fmul fast float %4403, 0x3FE3C6EF40000000
  %4405 = frem fast float %4396, 2.560000e+02
  %4406 = frem fast float %4397, 2.560000e+02
  %4407 = fptoui float %4405 to i32
  %4408 = fptoui float %4406 to i32
  %4409 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4407, i32 %4408, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4410 = extractvalue %dx.types.ResRet.f32 %4409, 0
  %4411 = extractvalue %dx.types.ResRet.f32 %4409, 1
  %4412 = extractvalue %dx.types.ResRet.f32 %4409, 2
  %4413 = fadd fast float %4410, %4404
  %4414 = fadd fast float %4411, %4404
  %4415 = fadd fast float %4412, %4404
  %4416 = call float @dx.op.unary.f32(i32 22, float %4413)  ; Frc(value)
  %4417 = call float @dx.op.unary.f32(i32 22, float %4414)  ; Frc(value)
  %4418 = call float @dx.op.unary.f32(i32 22, float %4415)  ; Frc(value)
  %4419 = fmul fast float %4418, 0x401921FB60000000
  %4420 = call float @dx.op.unary.f32(i32 13, float %4419)  ; Sin(value)
  %4421 = call float @dx.op.unary.f32(i32 12, float %4419)  ; Cos(value)
  %4422 = fsub fast float -0.000000e+00, %4421
  %4423 = fmul fast float %4421, %4386
  %4424 = call float @dx.op.tertiary.f32(i32 46, float %4420, float %4387, float %4423)  ; FMad(a,b,c)
  %4425 = fmul fast float %4420, %4386
  %4426 = call float @dx.op.tertiary.f32(i32 46, float %4422, float %4387, float %4425)  ; FMad(a,b,c)
  %4427 = fadd fast float %4424, %4416
  %4428 = fadd fast float %4426, %4417
  %4429 = extractvalue %dx.types.CBufRet.f32 %4339, 3
  %4430 = bitcast float %4429 to i32
  %4431 = icmp eq i32 %4430, 0
  br i1 %4431, label %4470, label %4432

; <label>:4432                                    ; preds = %4335
  %4433 = add i32 %4430, 0
  %4434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4433, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4435 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4434, %dx.types.Handle %113, float %4427, float %4428, float undef, float undef, i32 0, i32 0, i32 undef, float %4390, float %4391, float undef, float %4394, float %4395, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4436 = extractvalue %dx.types.ResRet.f32 %4435, 0
  %4437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.f32 %4437, 1
  %4439 = extractvalue %dx.types.CBufRet.f32 %4437, 2
  %4440 = fsub fast float 1.000000e+00, %4329
  %4441 = call float @dx.op.binary.f32(i32 35, float %4440, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4442 = bitcast float %4329 to i32
  %4443 = sitofp i32 %4442 to float
  %4444 = fadd fast float %4443, 0xC1CFBF8940000000
  %4445 = fmul fast float %4439, %4444
  %4446 = fadd fast float %4445, 0x41CFBF8940000000
  %4447 = fptosi float %4446 to i32
  %4448 = bitcast i32 %4447 to float
  %4449 = bitcast float %4441 to i32
  %4450 = sitofp i32 %4449 to float
  %4451 = fadd fast float %4450, 0xC1CFBF8940000000
  %4452 = fmul fast float %4451, %4439
  %4453 = fadd fast float %4452, 0x41CFBF8940000000
  %4454 = fptosi float %4453 to i32
  %4455 = bitcast i32 %4454 to float
  %4456 = fmul fast float %4448, %4438
  %4457 = fmul fast float %4455, %4438
  %4458 = fsub fast float %4441, %4456
  %4459 = fadd fast float %4457, %4441
  %4460 = call float @dx.op.unary.f32(i32 7, float %4458)  ; Saturate(value)
  %4461 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4462 = fsub fast float %4436, %4460
  %4463 = fsub fast float %4461, %4460
  %4464 = bitcast float %4463 to i32
  %4465 = sub nsw i32 2129859010, %4464
  %4466 = bitcast i32 %4465 to float
  %4467 = fmul fast float %4466, %4462
  %4468 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4469 = fcmp fast olt float %4468, 0x3F70101020000000
  br i1 %4469, label %4608, label %4470

; <label>:4470                                    ; preds = %4432, %4335
  %4471 = phi float [ %4468, %4432 ], [ %4329, %4335 ]
  %4472 = fmul fast float %4471, %4338
  %4473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4474 = extractvalue %dx.types.CBufRet.i32 %4473, 1
  %4475 = extractvalue %dx.types.CBufRet.i32 %4473, 0
  %4476 = add i32 %4475, 0
  %4477 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4476, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4478 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4477, %dx.types.Handle %112, float %4427, float %4428, float undef, float undef, i32 0, i32 0, i32 undef, float %4390, float %4391, float undef, float %4394, float %4395, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4479 = extractvalue %dx.types.ResRet.f32 %4478, 0
  %4480 = extractvalue %dx.types.ResRet.f32 %4478, 1
  %4481 = extractvalue %dx.types.ResRet.f32 %4478, 2
  %4482 = extractvalue %dx.types.ResRet.f32 %4478, 3
  %4483 = and i32 %4474, 255
  %4484 = uitofp i32 %4483 to float
  %4485 = lshr i32 %4474, 8
  %4486 = and i32 %4485, 255
  %4487 = uitofp i32 %4486 to float
  %4488 = fmul fast float %4482, %4484
  %4489 = fadd fast float %4488, %4487
  %4490 = fmul fast float %4489, 0x3F70101000000000
  %4491 = fadd fast float %4490, 0xBFB99999A0000000
  %4492 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4493 = fmul fast float %4492, 0x3FF1C71C80000000
  %4494 = call float @dx.op.binary.f32(i32 36, float %4490, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4495 = fsub fast float 1.000000e+00, %4493
  %4496 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4497 = fmul fast float %4496, %4479
  %4498 = fmul fast float %4496, %4480
  %4499 = fmul fast float %4496, %4481
  %4500 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4501 = call float @dx.op.unary.f32(i32 7, float %4498)  ; Saturate(value)
  %4502 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4503 = fmul fast float %4493, %4479
  %4504 = fmul fast float %4493, %4480
  %4505 = fmul fast float %4493, %4481
  %4506 = fadd fast float %4503, %4494
  %4507 = fadd fast float %4504, %4494
  %4508 = fadd fast float %4505, %4494
  %4509 = call float @dx.op.unary.f32(i32 7, float %4506)  ; Saturate(value)
  %4510 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4511 = call float @dx.op.unary.f32(i32 7, float %4508)  ; Saturate(value)
  %4512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4513 = extractvalue %dx.types.CBufRet.i32 %4512, 3
  %4514 = extractvalue %dx.types.CBufRet.i32 %4512, 2
  %4515 = add i32 %4514, 0
  %4516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4515, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4517 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4516, %dx.types.Handle %112, float %4427, float %4428, float undef, float undef, i32 0, i32 0, i32 undef, float %4390, float %4391, float undef, float %4394, float %4395, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4518 = extractvalue %dx.types.ResRet.f32 %4517, 0
  %4519 = extractvalue %dx.types.ResRet.f32 %4517, 1
  %4520 = extractvalue %dx.types.ResRet.f32 %4517, 2
  %4521 = extractvalue %dx.types.ResRet.f32 %4517, 3
  %4522 = and i32 %4513, 255
  %4523 = uitofp i32 %4522 to float
  %4524 = lshr i32 %4513, 8
  %4525 = and i32 %4524, 255
  %4526 = uitofp i32 %4525 to float
  %4527 = lshr i32 %4513, 16
  %4528 = and i32 %4527, 255
  %4529 = uitofp i32 %4528 to float
  %4530 = fmul fast float %4529, 0x3F70101000000000
  %4531 = fmul fast float %4518, %4523
  %4532 = fadd fast float %4531, %4526
  %4533 = fmul fast float %4532, 0x3F70101000000000
  %4534 = fadd fast float %4519, -5.000000e-01
  %4535 = fadd fast float %4521, -5.000000e-01
  %4536 = fmul fast float %4534, %4530
  %4537 = fmul fast float %4535, %4530
  %4538 = fadd fast float %4536, 5.000000e-01
  %4539 = fadd fast float %4537, 5.000000e-01
  %4540 = fmul fast float %4538, 2.000000e+00
  %4541 = fadd fast float %4540, -1.000000e+00
  %4542 = fmul fast float %4539, 2.000000e+00
  %4543 = fadd fast float %4542, -1.000000e+00
  %4544 = fadd fast float %4541, %4543
  %4545 = fmul fast float %4544, 5.000000e-01
  %4546 = fsub fast float %4541, %4543
  %4547 = fmul fast float %4546, 5.000000e-01
  %4548 = call float @dx.op.unary.f32(i32 6, float %4545)  ; FAbs(value)
  %4549 = fsub fast float 1.000000e+00, %4548
  %4550 = call float @dx.op.unary.f32(i32 6, float %4547)  ; FAbs(value)
  %4551 = fsub fast float %4549, %4550
  %4552 = call float @dx.op.dot3.f32(i32 55, float %4545, float %4547, float %4551, float %4545, float %4547, float %4551)  ; Dot3(ax,ay,az,bx,by,bz)
  %4553 = call float @dx.op.unary.f32(i32 25, float %4552)  ; Rsqrt(value)
  %4554 = fmul fast float %4545, %4553
  %4555 = fmul fast float %4547, %4553
  %4556 = select i1 %4383, i32 %4373, i32 %4374
  %4557 = select i1 %4381, i32 %4372, i32 %4556
  %4558 = sitofp i32 %4557 to float
  %4559 = fmul fast float %4551, %4558
  %4560 = fmul fast float %4559, %4553
  %4561 = select i1 %4383, float %4560, float %4555
  %4562 = select i1 %4383, float %4555, float %4560
  %4563 = select i1 %4381, float %4560, float %4554
  %4564 = select i1 %4381, float %4555, float %4561
  %4565 = select i1 %4381, float %4554, float %4562
  %4566 = fsub fast float %4500, %3933
  %4567 = fsub fast float %4501, %3934
  %4568 = fsub fast float %4502, %3935
  %4569 = fmul fast float %4566, %4472
  %4570 = fmul fast float %4567, %4472
  %4571 = fmul fast float %4568, %4472
  %4572 = fadd fast float %4569, %3933
  %4573 = fadd fast float %4570, %3934
  %4574 = fadd fast float %4571, %3935
  %4575 = fsub fast float %4509, %3918
  %4576 = fsub fast float %4510, %3919
  %4577 = fsub fast float %4511, %3920
  %4578 = fmul fast float %4575, %4472
  %4579 = fmul fast float %4576, %4472
  %4580 = fmul fast float %4577, %4472
  %4581 = fadd fast float %4578, %3918
  %4582 = fadd fast float %4579, %3919
  %4583 = fadd fast float %4580, %3920
  %4584 = fadd fast float %4563, %3882
  %4585 = fadd fast float %4564, %3883
  %4586 = fadd fast float %4565, %3884
  %4587 = call float @dx.op.dot3.f32(i32 55, float %4584, float %4585, float %4586, float %4584, float %4585, float %4586)  ; Dot3(ax,ay,az,bx,by,bz)
  %4588 = call float @dx.op.unary.f32(i32 25, float %4587)  ; Rsqrt(value)
  %4589 = fmul fast float %4584, %4588
  %4590 = fmul fast float %4585, %4588
  %4591 = fmul fast float %4586, %4588
  %4592 = fsub fast float %4589, %3882
  %4593 = fsub fast float %4590, %3883
  %4594 = fsub fast float %4591, %3884
  %4595 = fmul fast float %4592, %4472
  %4596 = fmul fast float %4593, %4472
  %4597 = fmul fast float %4594, %4472
  %4598 = fadd fast float %4595, %3882
  %4599 = fadd fast float %4596, %3883
  %4600 = fadd fast float %4597, %3884
  %4601 = call float @dx.op.binary.f32(i32 36, float %3894, float %4520)  ; FMin(a,b)
  %4602 = fsub fast float %4601, %3894
  %4603 = fmul fast float %4602, %4472
  %4604 = fadd fast float %4603, %3894
  %4605 = fsub fast float %4533, %3921
  %4606 = fmul fast float %4605, %4472
  %4607 = fadd fast float %4606, %3921
  br label %4608

; <label>:4608                                    ; preds = %4470, %4432, %4334
  %4609 = phi float [ %4572, %4470 ], [ %3933, %4432 ], [ %3933, %4334 ]
  %4610 = phi float [ %4573, %4470 ], [ %3934, %4432 ], [ %3934, %4334 ]
  %4611 = phi float [ %4574, %4470 ], [ %3935, %4432 ], [ %3935, %4334 ]
  %4612 = phi float [ %4581, %4470 ], [ %3918, %4432 ], [ %3918, %4334 ]
  %4613 = phi float [ %4582, %4470 ], [ %3919, %4432 ], [ %3919, %4334 ]
  %4614 = phi float [ %4583, %4470 ], [ %3920, %4432 ], [ %3920, %4334 ]
  %4615 = phi float [ %4598, %4470 ], [ %3882, %4432 ], [ %3882, %4334 ]
  %4616 = phi float [ %4599, %4470 ], [ %3883, %4432 ], [ %3883, %4334 ]
  %4617 = phi float [ %4600, %4470 ], [ %3884, %4432 ], [ %3884, %4334 ]
  %4618 = phi float [ %4607, %4470 ], [ %3921, %4432 ], [ %3921, %4334 ]
  %4619 = phi float [ %4604, %4470 ], [ %3894, %4432 ], [ %3894, %4334 ]
  br i1 %4332, label %4620, label %4893

; <label>:4620                                    ; preds = %4608
  %4621 = call float @dx.op.unary.f32(i32 23, float %4619)  ; Log(value)
  %4622 = fmul fast float %4621, 4.000000e+00
  %4623 = call float @dx.op.unary.f32(i32 21, float %4622)  ; Exp(value)
  %4624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4625 = extractvalue %dx.types.CBufRet.f32 %4624, 0
  %4626 = fmul fast float %4625, %64
  %4627 = fmul fast float %4625, %65
  %4628 = fmul fast float %4625, %66
  %4629 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4630 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4631 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4632 = call float @dx.op.unary.f32(i32 23, float %4629)  ; Log(value)
  %4633 = call float @dx.op.unary.f32(i32 23, float %4630)  ; Log(value)
  %4634 = call float @dx.op.unary.f32(i32 23, float %4631)  ; Log(value)
  %4635 = fmul fast float %4632, 4.000000e+00
  %4636 = fmul fast float %4633, 4.000000e+00
  %4637 = fmul fast float %4634, 4.000000e+00
  %4638 = call float @dx.op.unary.f32(i32 21, float %4635)  ; Exp(value)
  %4639 = call float @dx.op.unary.f32(i32 21, float %4636)  ; Exp(value)
  %4640 = call float @dx.op.unary.f32(i32 21, float %4637)  ; Exp(value)
  %4641 = fadd fast float %4639, %4638
  %4642 = fadd fast float %4641, %4640
  %4643 = fdiv fast float 1.000000e+00, %4642
  %4644 = fmul fast float %4643, %4638
  %4645 = fcmp fast ogt float %73, 0.000000e+00
  %4646 = fcmp fast ogt float %74, 0.000000e+00
  %4647 = fcmp fast ogt float %75, 0.000000e+00
  %4648 = fcmp fast olt float %73, 0.000000e+00
  %4649 = fcmp fast olt float %74, 0.000000e+00
  %4650 = fcmp fast olt float %75, 0.000000e+00
  %4651 = zext i1 %4645 to i32
  %4652 = zext i1 %4646 to i32
  %4653 = zext i1 %4647 to i32
  %4654 = zext i1 %4648 to i32
  %4655 = zext i1 %4649 to i32
  %4656 = zext i1 %4650 to i32
  %4657 = sub nsw i32 %4651, %4654
  %4658 = sub nsw i32 %4652, %4655
  %4659 = sub nsw i32 %4653, %4656
  %4660 = call float @dx.op.unary.f32(i32 83, float %4626)  ; DerivCoarseX(value)
  %4661 = call float @dx.op.unary.f32(i32 83, float %4627)  ; DerivCoarseX(value)
  %4662 = call float @dx.op.unary.f32(i32 83, float %4628)  ; DerivCoarseX(value)
  %4663 = call float @dx.op.unary.f32(i32 84, float %4626)  ; DerivCoarseY(value)
  %4664 = call float @dx.op.unary.f32(i32 84, float %4627)  ; DerivCoarseY(value)
  %4665 = call float @dx.op.unary.f32(i32 84, float %4628)  ; DerivCoarseY(value)
  %4666 = fcmp fast ole float %286, %4644
  %4667 = fmul fast float %4643, %4641
  %4668 = fcmp fast ole float %286, %4667
  %4669 = select i1 %4668, float %4628, float %4626
  %4670 = select i1 %4668, float %4626, float %4627
  %4671 = select i1 %4666, float %4627, float %4669
  %4672 = select i1 %4666, float %4628, float %4670
  %4673 = select i1 %4668, float %4662, float %4660
  %4674 = select i1 %4668, float %4660, float %4661
  %4675 = select i1 %4666, float %4661, float %4673
  %4676 = select i1 %4666, float %4662, float %4674
  %4677 = select i1 %4668, float %4665, float %4663
  %4678 = select i1 %4668, float %4663, float %4664
  %4679 = select i1 %4666, float %4664, float %4677
  %4680 = select i1 %4666, float %4665, float %4678
  %4681 = call float @dx.op.unary.f32(i32 27, float %4671)  ; Round_ni(value)
  %4682 = call float @dx.op.unary.f32(i32 27, float %4672)  ; Round_ni(value)
  %4683 = fptosi float %4681 to i32
  %4684 = fptosi float %4682 to i32
  %4685 = xor i32 %4684, %4683
  %4686 = sitofp i32 %4685 to float
  %4687 = fptosi float %4686 to i32
  %4688 = sitofp i32 %4687 to float
  %4689 = fmul fast float %4688, 0x3FE3C6EF40000000
  %4690 = frem fast float %4681, 2.560000e+02
  %4691 = frem fast float %4682, 2.560000e+02
  %4692 = fptoui float %4690 to i32
  %4693 = fptoui float %4691 to i32
  %4694 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4692, i32 %4693, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4695 = extractvalue %dx.types.ResRet.f32 %4694, 0
  %4696 = extractvalue %dx.types.ResRet.f32 %4694, 1
  %4697 = extractvalue %dx.types.ResRet.f32 %4694, 2
  %4698 = fadd fast float %4695, %4689
  %4699 = fadd fast float %4696, %4689
  %4700 = fadd fast float %4697, %4689
  %4701 = call float @dx.op.unary.f32(i32 22, float %4698)  ; Frc(value)
  %4702 = call float @dx.op.unary.f32(i32 22, float %4699)  ; Frc(value)
  %4703 = call float @dx.op.unary.f32(i32 22, float %4700)  ; Frc(value)
  %4704 = fmul fast float %4703, 0x401921FB60000000
  %4705 = call float @dx.op.unary.f32(i32 13, float %4704)  ; Sin(value)
  %4706 = call float @dx.op.unary.f32(i32 12, float %4704)  ; Cos(value)
  %4707 = fsub fast float -0.000000e+00, %4706
  %4708 = fmul fast float %4706, %4671
  %4709 = call float @dx.op.tertiary.f32(i32 46, float %4705, float %4672, float %4708)  ; FMad(a,b,c)
  %4710 = fmul fast float %4705, %4671
  %4711 = call float @dx.op.tertiary.f32(i32 46, float %4707, float %4672, float %4710)  ; FMad(a,b,c)
  %4712 = fadd fast float %4709, %4701
  %4713 = fadd fast float %4711, %4702
  %4714 = extractvalue %dx.types.CBufRet.f32 %4624, 3
  %4715 = bitcast float %4714 to i32
  %4716 = icmp eq i32 %4715, 0
  br i1 %4716, label %4755, label %4717

; <label>:4717                                    ; preds = %4620
  %4718 = add i32 %4715, 0
  %4719 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4718, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4720 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4719, %dx.types.Handle %113, float %4712, float %4713, float undef, float undef, i32 0, i32 0, i32 undef, float %4675, float %4676, float undef, float %4679, float %4680, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4721 = extractvalue %dx.types.ResRet.f32 %4720, 0
  %4722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4723 = extractvalue %dx.types.CBufRet.f32 %4722, 1
  %4724 = extractvalue %dx.types.CBufRet.f32 %4722, 2
  %4725 = fsub fast float 1.000000e+00, %4330
  %4726 = call float @dx.op.binary.f32(i32 35, float %4725, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4727 = bitcast float %4330 to i32
  %4728 = sitofp i32 %4727 to float
  %4729 = fadd fast float %4728, 0xC1CFBF8940000000
  %4730 = fmul fast float %4724, %4729
  %4731 = fadd fast float %4730, 0x41CFBF8940000000
  %4732 = fptosi float %4731 to i32
  %4733 = bitcast i32 %4732 to float
  %4734 = bitcast float %4726 to i32
  %4735 = sitofp i32 %4734 to float
  %4736 = fadd fast float %4735, 0xC1CFBF8940000000
  %4737 = fmul fast float %4736, %4724
  %4738 = fadd fast float %4737, 0x41CFBF8940000000
  %4739 = fptosi float %4738 to i32
  %4740 = bitcast i32 %4739 to float
  %4741 = fmul fast float %4733, %4723
  %4742 = fmul fast float %4740, %4723
  %4743 = fsub fast float %4726, %4741
  %4744 = fadd fast float %4742, %4726
  %4745 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4746 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4747 = fsub fast float %4721, %4745
  %4748 = fsub fast float %4746, %4745
  %4749 = bitcast float %4748 to i32
  %4750 = sub nsw i32 2129859010, %4749
  %4751 = bitcast i32 %4750 to float
  %4752 = fmul fast float %4751, %4747
  %4753 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4754 = fcmp fast olt float %4753, 0x3F70101020000000
  br i1 %4754, label %4893, label %4755

; <label>:4755                                    ; preds = %4717, %4620
  %4756 = phi float [ %4753, %4717 ], [ %4330, %4620 ]
  %4757 = fmul fast float %4756, %4623
  %4758 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4759 = extractvalue %dx.types.CBufRet.i32 %4758, 1
  %4760 = extractvalue %dx.types.CBufRet.i32 %4758, 0
  %4761 = add i32 %4760, 0
  %4762 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4761, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4763 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4762, %dx.types.Handle %112, float %4712, float %4713, float undef, float undef, i32 0, i32 0, i32 undef, float %4675, float %4676, float undef, float %4679, float %4680, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4764 = extractvalue %dx.types.ResRet.f32 %4763, 0
  %4765 = extractvalue %dx.types.ResRet.f32 %4763, 1
  %4766 = extractvalue %dx.types.ResRet.f32 %4763, 2
  %4767 = extractvalue %dx.types.ResRet.f32 %4763, 3
  %4768 = and i32 %4759, 255
  %4769 = uitofp i32 %4768 to float
  %4770 = lshr i32 %4759, 8
  %4771 = and i32 %4770, 255
  %4772 = uitofp i32 %4771 to float
  %4773 = fmul fast float %4767, %4769
  %4774 = fadd fast float %4773, %4772
  %4775 = fmul fast float %4774, 0x3F70101000000000
  %4776 = fadd fast float %4775, 0xBFB99999A0000000
  %4777 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4778 = fmul fast float %4777, 0x3FF1C71C80000000
  %4779 = call float @dx.op.binary.f32(i32 36, float %4775, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4780 = fsub fast float 1.000000e+00, %4778
  %4781 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4782 = fmul fast float %4781, %4764
  %4783 = fmul fast float %4781, %4765
  %4784 = fmul fast float %4781, %4766
  %4785 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4786 = call float @dx.op.unary.f32(i32 7, float %4783)  ; Saturate(value)
  %4787 = call float @dx.op.unary.f32(i32 7, float %4784)  ; Saturate(value)
  %4788 = fmul fast float %4778, %4764
  %4789 = fmul fast float %4778, %4765
  %4790 = fmul fast float %4778, %4766
  %4791 = fadd fast float %4788, %4779
  %4792 = fadd fast float %4789, %4779
  %4793 = fadd fast float %4790, %4779
  %4794 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4795 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  %4796 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  %4797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.i32 %4797, 3
  %4799 = extractvalue %dx.types.CBufRet.i32 %4797, 2
  %4800 = add i32 %4799, 0
  %4801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4800, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4802 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4801, %dx.types.Handle %112, float %4712, float %4713, float undef, float undef, i32 0, i32 0, i32 undef, float %4675, float %4676, float undef, float %4679, float %4680, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 0
  %4804 = extractvalue %dx.types.ResRet.f32 %4802, 1
  %4805 = extractvalue %dx.types.ResRet.f32 %4802, 2
  %4806 = extractvalue %dx.types.ResRet.f32 %4802, 3
  %4807 = and i32 %4798, 255
  %4808 = uitofp i32 %4807 to float
  %4809 = lshr i32 %4798, 8
  %4810 = and i32 %4809, 255
  %4811 = uitofp i32 %4810 to float
  %4812 = lshr i32 %4798, 16
  %4813 = and i32 %4812, 255
  %4814 = uitofp i32 %4813 to float
  %4815 = fmul fast float %4814, 0x3F70101000000000
  %4816 = fmul fast float %4803, %4808
  %4817 = fadd fast float %4816, %4811
  %4818 = fmul fast float %4817, 0x3F70101000000000
  %4819 = fadd fast float %4804, -5.000000e-01
  %4820 = fadd fast float %4806, -5.000000e-01
  %4821 = fmul fast float %4819, %4815
  %4822 = fmul fast float %4820, %4815
  %4823 = fadd fast float %4821, 5.000000e-01
  %4824 = fadd fast float %4822, 5.000000e-01
  %4825 = fmul fast float %4823, 2.000000e+00
  %4826 = fadd fast float %4825, -1.000000e+00
  %4827 = fmul fast float %4824, 2.000000e+00
  %4828 = fadd fast float %4827, -1.000000e+00
  %4829 = fadd fast float %4826, %4828
  %4830 = fmul fast float %4829, 5.000000e-01
  %4831 = fsub fast float %4826, %4828
  %4832 = fmul fast float %4831, 5.000000e-01
  %4833 = call float @dx.op.unary.f32(i32 6, float %4830)  ; FAbs(value)
  %4834 = fsub fast float 1.000000e+00, %4833
  %4835 = call float @dx.op.unary.f32(i32 6, float %4832)  ; FAbs(value)
  %4836 = fsub fast float %4834, %4835
  %4837 = call float @dx.op.dot3.f32(i32 55, float %4830, float %4832, float %4836, float %4830, float %4832, float %4836)  ; Dot3(ax,ay,az,bx,by,bz)
  %4838 = call float @dx.op.unary.f32(i32 25, float %4837)  ; Rsqrt(value)
  %4839 = fmul fast float %4830, %4838
  %4840 = fmul fast float %4832, %4838
  %4841 = select i1 %4668, i32 %4658, i32 %4659
  %4842 = select i1 %4666, i32 %4657, i32 %4841
  %4843 = sitofp i32 %4842 to float
  %4844 = fmul fast float %4836, %4843
  %4845 = fmul fast float %4844, %4838
  %4846 = select i1 %4668, float %4845, float %4840
  %4847 = select i1 %4668, float %4840, float %4845
  %4848 = select i1 %4666, float %4845, float %4839
  %4849 = select i1 %4666, float %4840, float %4846
  %4850 = select i1 %4666, float %4839, float %4847
  %4851 = fsub fast float %4785, %4609
  %4852 = fsub fast float %4786, %4610
  %4853 = fsub fast float %4787, %4611
  %4854 = fmul fast float %4851, %4757
  %4855 = fmul fast float %4852, %4757
  %4856 = fmul fast float %4853, %4757
  %4857 = fadd fast float %4854, %4609
  %4858 = fadd fast float %4855, %4610
  %4859 = fadd fast float %4856, %4611
  %4860 = fsub fast float %4794, %4612
  %4861 = fsub fast float %4795, %4613
  %4862 = fsub fast float %4796, %4614
  %4863 = fmul fast float %4860, %4757
  %4864 = fmul fast float %4861, %4757
  %4865 = fmul fast float %4862, %4757
  %4866 = fadd fast float %4863, %4612
  %4867 = fadd fast float %4864, %4613
  %4868 = fadd fast float %4865, %4614
  %4869 = fadd fast float %4848, %4615
  %4870 = fadd fast float %4849, %4616
  %4871 = fadd fast float %4850, %4617
  %4872 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4870, float %4871, float %4869, float %4870, float %4871)  ; Dot3(ax,ay,az,bx,by,bz)
  %4873 = call float @dx.op.unary.f32(i32 25, float %4872)  ; Rsqrt(value)
  %4874 = fmul fast float %4869, %4873
  %4875 = fmul fast float %4870, %4873
  %4876 = fmul fast float %4871, %4873
  %4877 = fsub fast float %4874, %4615
  %4878 = fsub fast float %4875, %4616
  %4879 = fsub fast float %4876, %4617
  %4880 = fmul fast float %4877, %4757
  %4881 = fmul fast float %4878, %4757
  %4882 = fmul fast float %4879, %4757
  %4883 = fadd fast float %4880, %4615
  %4884 = fadd fast float %4881, %4616
  %4885 = fadd fast float %4882, %4617
  %4886 = call float @dx.op.binary.f32(i32 36, float %4619, float %4805)  ; FMin(a,b)
  %4887 = fsub fast float %4886, %4619
  %4888 = fmul fast float %4887, %4757
  %4889 = fadd fast float %4888, %4619
  %4890 = fsub fast float %4818, %4618
  %4891 = fmul fast float %4890, %4757
  %4892 = fadd fast float %4891, %4618
  br label %4893

; <label>:4893                                    ; preds = %4755, %4717, %4608, %4324
  %4894 = phi float [ %4857, %4755 ], [ %4609, %4717 ], [ %4609, %4608 ], [ %3933, %4324 ]
  %4895 = phi float [ %4858, %4755 ], [ %4610, %4717 ], [ %4610, %4608 ], [ %3934, %4324 ]
  %4896 = phi float [ %4859, %4755 ], [ %4611, %4717 ], [ %4611, %4608 ], [ %3935, %4324 ]
  %4897 = phi float [ %4866, %4755 ], [ %4612, %4717 ], [ %4612, %4608 ], [ %3918, %4324 ]
  %4898 = phi float [ %4867, %4755 ], [ %4613, %4717 ], [ %4613, %4608 ], [ %3919, %4324 ]
  %4899 = phi float [ %4868, %4755 ], [ %4614, %4717 ], [ %4614, %4608 ], [ %3920, %4324 ]
  %4900 = phi float [ %4883, %4755 ], [ %4615, %4717 ], [ %4615, %4608 ], [ %3882, %4324 ]
  %4901 = phi float [ %4884, %4755 ], [ %4616, %4717 ], [ %4616, %4608 ], [ %3883, %4324 ]
  %4902 = phi float [ %4885, %4755 ], [ %4617, %4717 ], [ %4617, %4608 ], [ %3884, %4324 ]
  %4903 = phi float [ %4892, %4755 ], [ %4618, %4717 ], [ %4618, %4608 ], [ %3921, %4324 ]
  %4904 = phi float [ %4889, %4755 ], [ %4619, %4717 ], [ %4619, %4608 ], [ %3894, %4324 ]
  %4905 = fcmp fast une float %4328, 0.000000e+00
  %4906 = call float @dx.op.dot3.f32(i32 55, float %203, float %204, float %205, float %203, float %204, float %205)  ; Dot3(ax,ay,az,bx,by,bz)
  %4907 = call float @dx.op.unary.f32(i32 25, float %4906)  ; Rsqrt(value)
  br i1 %4905, label %4915, label %4908

; <label>:4908                                    ; preds = %4893
  %4909 = fmul fast float %4907, %203
  %4910 = fmul fast float %4907, %204
  %4911 = fmul fast float %4907, %205
  %4912 = fsub fast float -0.000000e+00, %4909
  %4913 = fsub fast float -0.000000e+00, %4910
  %4914 = fsub fast float -0.000000e+00, %4911
  br label %5082

; <label>:4915                                    ; preds = %4893
  %4916 = fmul fast float %203, %4907
  %4917 = fsub fast float -0.000000e+00, %4916
  %4918 = fmul fast float %204, %4907
  %4919 = fsub fast float -0.000000e+00, %4918
  %4920 = fmul fast float %205, %4907
  %4921 = fsub fast float -0.000000e+00, %4920
  %4922 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4919, float %4921, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %4923 = fmul fast float %4328, 2.500000e+00
  %4924 = call float @dx.op.unary.f32(i32 7, float %4923)  ; Saturate(value)
  %4925 = fmul fast float %4328, 0x4013FFFFE0000000
  %4926 = fadd fast float %4925, 0xBFFFFFFFE0000000
  %4927 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4928 = fmul fast float %4328, 0x4004000020000000
  %4929 = fadd fast float %4928, 0xBFF8000040000000
  %4930 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4931 = fmul fast float %3900, 1.000000e+01
  %4932 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4933 = fmul fast float %4932, 2.000000e+00
  %4934 = fsub fast float 3.000000e+00, %4933
  %4935 = fmul fast float %4932, %4932
  %4936 = fmul fast float %4935, %4934
  %4937 = fsub fast float 1.000000e+00, %4936
  %4938 = fsub fast float 0x3FE3333340000000, %4903
  %4939 = fmul fast float %4938, 0x400AAAAAA0000000
  %4940 = call float @dx.op.unary.f32(i32 7, float %4939)  ; Saturate(value)
  %4941 = fmul fast float %4937, %4940
  %4942 = fmul fast float %4894, 0x3FEA2B8620000000
  %4943 = fmul fast float %4895, 0x3FEA2B8620000000
  %4944 = fmul fast float %4896, 0x3FEA2B8620000000
  %4945 = fadd fast float %4942, 0x3FC81DFBA0000000
  %4946 = fmul fast float %4945, %4894
  %4947 = fadd fast float %4946, 0x3F910E6020000000
  %4948 = fadd fast float %4943, 0x3FC81DFBA0000000
  %4949 = fmul fast float %4948, %4895
  %4950 = fadd fast float %4949, 0x3F910E6020000000
  %4951 = fadd fast float %4944, 0x3FC81DFBA0000000
  %4952 = fmul fast float %4951, %4896
  %4953 = fadd fast float %4952, 0x3F910E6020000000
  %4954 = call float @dx.op.unary.f32(i32 7, float %4947)  ; Saturate(value)
  %4955 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4956 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %4957 = fsub fast float %4954, %4894
  %4958 = fsub fast float %4955, %4895
  %4959 = fsub fast float %4956, %4896
  %4960 = fmul fast float %4957, %4924
  %4961 = fmul fast float %4960, %4941
  %4962 = fmul fast float %4958, %4924
  %4963 = fmul fast float %4962, %4941
  %4964 = fmul fast float %4959, %4924
  %4965 = fmul fast float %4964, %4941
  %4966 = fadd fast float %4961, %4894
  %4967 = fadd fast float %4963, %4895
  %4968 = fadd fast float %4965, %4896
  %4969 = fmul fast float %4904, %4904
  %4970 = fmul fast float %4969, %4969
  %4971 = fadd fast float %4927, 1.000000e+00
  %4972 = fsub fast float %4971, %4941
  %4973 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4974 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4975 = call float @dx.op.unary.f32(i32 7, float %4974)  ; Saturate(value)
  %4976 = fsub fast float 1.000000e+00, %4970
  %4977 = call float @dx.op.binary.f32(i32 36, float %4973, float %4976)  ; FMin(a,b)
  %4978 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4979 = call float @dx.op.binary.f32(i32 35, float %4977, float %4978)  ; FMax(a,b)
  %4980 = fadd fast float %4975, 0xBFE4CCCCC0000000
  %4981 = fmul fast float %4980, 0x4006DB6DA0000000
  %4982 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4983 = fmul fast float %4982, 2.000000e+00
  %4984 = fsub fast float 3.000000e+00, %4983
  %4985 = bitcast float %4897 to i32
  %4986 = ashr i32 %4985, 1
  %4987 = add nsw i32 %4986, 532487669
  %4988 = bitcast i32 %4987 to float
  %4989 = fsub fast float 1.000000e+00, %4988
  %4990 = bitcast float %4989 to i32
  %4991 = sub nsw i32 2129859010, %4990
  %4992 = bitcast i32 %4991 to float
  %4993 = fmul fast float %4992, 2.000000e+00
  %4994 = bitcast float %4898 to i32
  %4995 = ashr i32 %4994, 1
  %4996 = add nsw i32 %4995, 532487669
  %4997 = bitcast i32 %4996 to float
  %4998 = fsub fast float 1.000000e+00, %4997
  %4999 = bitcast float %4998 to i32
  %5000 = sub nsw i32 2129859010, %4999
  %5001 = bitcast i32 %5000 to float
  %5002 = fmul fast float %5001, 2.000000e+00
  %5003 = bitcast float %4899 to i32
  %5004 = ashr i32 %5003, 1
  %5005 = add nsw i32 %5004, 532487669
  %5006 = bitcast i32 %5005 to float
  %5007 = fsub fast float 1.000000e+00, %5006
  %5008 = bitcast float %5007 to i32
  %5009 = sub nsw i32 2129859010, %5008
  %5010 = bitcast i32 %5009 to float
  %5011 = fmul fast float %5010, 2.000000e+00
  %5012 = fsub fast float 0x4002A9FBE0000000, %4993
  %5013 = fadd fast float %4993, 0x3FD54FDF00000000
  %5014 = bitcast float %5013 to i32
  %5015 = sub nsw i32 2129859010, %5014
  %5016 = bitcast i32 %5015 to float
  %5017 = fmul fast float %5016, %5012
  %5018 = fmul fast float %5017, %5017
  %5019 = fsub fast float 0x4002A9FBE0000000, %5002
  %5020 = fadd fast float %5002, 0x3FD54FDF00000000
  %5021 = bitcast float %5020 to i32
  %5022 = sub nsw i32 2129859010, %5021
  %5023 = bitcast i32 %5022 to float
  %5024 = fmul fast float %5023, %5019
  %5025 = fmul fast float %5024, %5024
  %5026 = fsub fast float 0x4002A9FBE0000000, %5011
  %5027 = fadd fast float %5011, 0x3FD54FDF00000000
  %5028 = bitcast float %5027 to i32
  %5029 = sub nsw i32 2129859010, %5028
  %5030 = bitcast i32 %5029 to float
  %5031 = fmul fast float %5030, %5026
  %5032 = fmul fast float %5031, %5031
  %5033 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5018)  ; FMax(a,b)
  %5034 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5025)  ; FMax(a,b)
  %5035 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5032)  ; FMax(a,b)
  %5036 = fsub fast float 1.000000e+00, %4922
  %5037 = fadd fast float %5036, %4937
  %5038 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  %5039 = fsub fast float 1.000000e+00, %4309
  %5040 = fmul fast float %4979, %5039
  %5041 = fmul fast float %4982, %4982
  %5042 = fmul fast float %5041, %5040
  %5043 = fmul fast float %5042, %4984
  %5044 = fmul fast float %5039, 0xBFE99999A0000000
  %5045 = fmul fast float %5044, %4924
  %5046 = fmul fast float %5045, %4941
  %5047 = fadd fast float %5046, 1.000000e+00
  %5048 = fadd fast float %4903, -1.000000e+00
  %5049 = fmul fast float %5047, %5048
  %5050 = fadd fast float %5049, 1.000000e+00
  %5051 = fsub fast float %5033, %4897
  %5052 = fsub fast float %5034, %4898
  %5053 = fsub fast float %5035, %4899
  %5054 = fmul fast float %5043, %5051
  %5055 = fmul fast float %5043, %5052
  %5056 = fmul fast float %5043, %5053
  %5057 = fadd fast float %5054, %4897
  %5058 = fadd fast float %5055, %4898
  %5059 = fadd fast float %5056, %4899
  %5060 = fsub fast float %123, %4900
  %5061 = fsub fast float %124, %4901
  %5062 = fsub fast float %125, %4902
  %5063 = fmul fast float %5043, %5060
  %5064 = fmul fast float %5043, %5061
  %5065 = fmul fast float %5043, %5062
  %5066 = fadd fast float %5063, %4900
  %5067 = fadd fast float %5064, %4901
  %5068 = fadd fast float %5065, %4902
  %5069 = fmul fast float %5043, %5038
  %5070 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5071 = fsub fast float 1.000000e+00, %5070
  %5072 = fmul fast float %5069, %5071
  %5073 = fadd fast float %5072, %5070
  %5074 = fsub fast float 1.000000e+00, %4904
  %5075 = fmul fast float %5043, %5074
  %5076 = fadd fast float %5075, %4904
  %5077 = call float @dx.op.dot3.f32(i32 55, float %5066, float %5067, float %5068, float %5066, float %5067, float %5068)  ; Dot3(ax,ay,az,bx,by,bz)
  %5078 = call float @dx.op.unary.f32(i32 25, float %5077)  ; Rsqrt(value)
  %5079 = fmul fast float %5066, %5078
  %5080 = fmul fast float %5067, %5078
  %5081 = fmul fast float %5068, %5078
  br label %5082

; <label>:5082                                    ; preds = %4915, %4908
  %5083 = phi float [ %4914, %4908 ], [ %4921, %4915 ]
  %5084 = phi float [ %4913, %4908 ], [ %4919, %4915 ]
  %5085 = phi float [ %4912, %4908 ], [ %4917, %4915 ]
  %5086 = phi float [ %4911, %4908 ], [ %4920, %4915 ]
  %5087 = phi float [ %4910, %4908 ], [ %4918, %4915 ]
  %5088 = phi float [ %4909, %4908 ], [ %4916, %4915 ]
  %5089 = phi float [ %4894, %4908 ], [ %4966, %4915 ]
  %5090 = phi float [ %4895, %4908 ], [ %4967, %4915 ]
  %5091 = phi float [ %4896, %4908 ], [ %4968, %4915 ]
  %5092 = phi float [ %4897, %4908 ], [ %5057, %4915 ]
  %5093 = phi float [ %4898, %4908 ], [ %5058, %4915 ]
  %5094 = phi float [ %4899, %4908 ], [ %5059, %4915 ]
  %5095 = phi float [ %4900, %4908 ], [ %5079, %4915 ]
  %5096 = phi float [ %4901, %4908 ], [ %5080, %4915 ]
  %5097 = phi float [ %4902, %4908 ], [ %5081, %4915 ]
  %5098 = phi float [ %4903, %4908 ], [ %5073, %4915 ]
  %5099 = phi float [ %4904, %4908 ], [ %5076, %4915 ]
  %5100 = fsub fast float -0.000000e+00, %205
  %5101 = select i1 %275, float 0.000000e+00, float %5094
  %5102 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5096, float %5097, float %5085, float %5084, float %5083)  ; Dot3(ax,ay,az,bx,by,bz)
  %5103 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5104 = call float @dx.op.dot3.f32(i32 55, float %5088, float %5087, float %5086, float %5095, float %5096, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %5105 = fmul fast float %5104, 2.000000e+00
  %5106 = fmul fast float %5105, %5095
  %5107 = fmul fast float %5105, %5096
  %5108 = fmul fast float %5105, %5097
  %5109 = fsub fast float %5088, %5106
  %5110 = fsub fast float %5087, %5107
  %5111 = fsub fast float %5086, %5108
  %5112 = call float @dx.op.binary.f32(i32 36, float %5099, float 1.000000e+00)  ; FMin(a,b)
  %5113 = fsub fast float 1.000000e+00, %5112
  %5114 = bitcast float %5113 to i32
  %5115 = ashr i32 %5114, 1
  %5116 = add nsw i32 %5115, 532487669
  %5117 = bitcast i32 %5116 to float
  %5118 = fsub fast float 1.000000e+00, %5098
  %5119 = call float @dx.op.binary.f32(i32 35, float %5118, float 0x3F847AE140000000)  ; FMax(a,b)
  %5120 = fmul fast float %5119, %5119
  %5121 = fmul fast float %5120, %5120
  %5122 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5117, float %5121, float %5122, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5124 = extractvalue %dx.types.ResRet.f32 %5123, 0
  %5125 = fsub fast float 1.000000e+00, %5099
  %5126 = bitcast float %5125 to i32
  %5127 = sub nsw i32 2129859010, %5126
  %5128 = bitcast i32 %5127 to float
  %5129 = fsub fast float 1.000000e+00, %83
  %5130 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5131 = call float @dx.op.binary.f32(i32 35, float %5130, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5132 = fdiv fast float %5129, %5131
  %5133 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5096, float %5097, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5134 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5135 = fmul fast float %5134, 5.000000e-01
  %5136 = fadd fast float %5135, 5.000000e-01
  %5137 = fmul fast float %5136, %83
  %5138 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5096, float %5097, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5140 = fmul fast float %5139, %5132
  %5141 = fadd fast float %5137, %5140
  %5142 = fsub fast float 5.000000e-01, %5135
  %5143 = fmul fast float %5142, %5089
  %5144 = fmul fast float %5142, %5090
  %5145 = fmul fast float %5142, %5091
  %5146 = fadd fast float %5141, %5143
  %5147 = fadd fast float %5141, %5144
  %5148 = fadd fast float %5141, %5145
  %5149 = call float @dx.op.dot3.f32(i32 55, float %5109, float %5110, float %5111, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5150 = call float @dx.op.unary.f32(i32 7, float %5149)  ; Saturate(value)
  %5151 = fmul fast float %5150, 5.000000e-01
  %5152 = fadd fast float %5151, 5.000000e-01
  %5153 = fmul fast float %5152, %83
  %5154 = call float @dx.op.dot3.f32(i32 55, float %5109, float %5110, float %5111, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %5155 = call float @dx.op.unary.f32(i32 7, float %5154)  ; Saturate(value)
  %5156 = fmul fast float %5155, %5132
  %5157 = fadd fast float %5153, %5156
  %5158 = fsub fast float 5.000000e-01, %5151
  %5159 = fmul fast float %5158, %5089
  %5160 = fmul fast float %5158, %5090
  %5161 = fmul fast float %5158, %5091
  %5162 = fadd fast float %5157, %5159
  %5163 = fadd fast float %5157, %5160
  %5164 = fadd fast float %5157, %5161
  %5165 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5167 = extractvalue %dx.types.CBufRet.f32 %5166, 0
  %5168 = call float @dx.op.binary.f32(i32 36, float %5089, float %5167)  ; FMin(a,b)
  %5169 = fmul fast float %5168, %5113
  %5170 = fsub fast float 1.000000e+00, %5169
  %5171 = bitcast float %5170 to i32
  %5172 = sub nsw i32 2129859010, %5171
  %5173 = bitcast i32 %5172 to float
  %5174 = call float @dx.op.binary.f32(i32 36, float %5090, float %5167)  ; FMin(a,b)
  %5175 = fmul fast float %5174, %5113
  %5176 = fsub fast float 1.000000e+00, %5175
  %5177 = bitcast float %5176 to i32
  %5178 = sub nsw i32 2129859010, %5177
  %5179 = bitcast i32 %5178 to float
  %5180 = call float @dx.op.binary.f32(i32 36, float %5091, float %5167)  ; FMin(a,b)
  %5181 = fmul fast float %5180, %5113
  %5182 = fsub fast float 1.000000e+00, %5181
  %5183 = bitcast float %5182 to i32
  %5184 = sub nsw i32 2129859010, %5183
  %5185 = bitcast i32 %5184 to float
  %5186 = fmul fast float %5112, %84
  %5187 = fmul fast float %5186, %5146
  %5188 = fmul fast float %5187, %5173
  %5189 = fmul fast float %5112, %85
  %5190 = fmul fast float %5189, %5147
  %5191 = fmul fast float %5190, %5179
  %5192 = fmul fast float %5112, %86
  %5193 = fmul fast float %5192, %5148
  %5194 = fmul fast float %5193, %5185
  %5195 = call float @dx.op.binary.f32(i32 36, float %5092, float %5167)  ; FMin(a,b)
  %5196 = fmul fast float %5195, %5113
  %5197 = fsub fast float 1.000000e+00, %5196
  %5198 = bitcast float %5197 to i32
  %5199 = sub nsw i32 2129859010, %5198
  %5200 = bitcast i32 %5199 to float
  %5201 = call float @dx.op.binary.f32(i32 36, float %5093, float %5167)  ; FMin(a,b)
  %5202 = fmul fast float %5201, %5113
  %5203 = fsub fast float 1.000000e+00, %5202
  %5204 = bitcast float %5203 to i32
  %5205 = sub nsw i32 2129859010, %5204
  %5206 = bitcast i32 %5205 to float
  %5207 = call float @dx.op.binary.f32(i32 36, float %5101, float %5167)  ; FMin(a,b)
  %5208 = fmul fast float %5207, %5113
  %5209 = fsub fast float 1.000000e+00, %5208
  %5210 = bitcast float %5209 to i32
  %5211 = sub nsw i32 2129859010, %5210
  %5212 = bitcast i32 %5211 to float
  %5213 = fmul fast float %5186, %5162
  %5214 = fmul fast float %5213, %5200
  %5215 = fmul fast float %5189, %5163
  %5216 = fmul fast float %5215, %5206
  %5217 = fmul fast float %5192, %5164
  %5218 = fmul fast float %5217, %5212
  %5219 = call float @dx.op.dot3.f32(i32 55, float %5188, float %5191, float %5194, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5220 = select i1 %275, float 0.000000e+00, float %5188
  %5221 = select i1 %275, float %5219, float %5191
  %5222 = select i1 %275, float 0.000000e+00, float %5194
  %5223 = call float @dx.op.dot3.f32(i32 55, float %5214, float %5216, float %5218, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5224 = select i1 %275, float 0.000000e+00, float %5214
  %5225 = select i1 %275, float %5223, float %5216
  %5226 = select i1 %275, float 0.000000e+00, float %5218
  %5227 = fmul fast float %5103, 9.843750e-01
  %5228 = fmul fast float %5098, 9.843750e-01
  %5229 = fadd fast float %5227, 7.812500e-03
  %5230 = fadd fast float %5228, 7.812500e-03
  %5231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %5229, float %5230, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5232 = extractvalue %dx.types.ResRet.f32 %5231, 2
  %5233 = extractvalue %dx.types.ResRet.f32 %5231, 3
  %5234 = fmul fast float %5232, %5092
  %5235 = fmul fast float %5232, %5093
  %5236 = fmul fast float %5232, %5101
  %5237 = fadd fast float %5234, %5233
  %5238 = fadd fast float %5235, %5233
  %5239 = fadd fast float %5236, %5233
  %5240 = fcmp fast ogt float %3895, 0.000000e+00
  br i1 %5240, label %5241, label %5267

; <label>:5241                                    ; preds = %5082
  %5242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3895, float %5103, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5243 = extractvalue %dx.types.ResRet.f32 %5242, 0
  %5244 = extractvalue %dx.types.ResRet.f32 %5242, 1
  %5245 = extractvalue %dx.types.ResRet.f32 %5242, 2
  %5246 = fadd fast float %5243, -5.000000e-01
  %5247 = fadd fast float %5244, -5.000000e-01
  %5248 = fadd fast float %5245, -5.000000e-01
  %5249 = fsub fast float 1.000000e+00, %5092
  %5250 = fsub fast float 1.000000e+00, %5093
  %5251 = fsub fast float 1.000000e+00, %5101
  %5252 = fmul fast float %5092, 4.000000e+00
  %5253 = fmul fast float %5252, %5249
  %5254 = fmul fast float %5253, %5246
  %5255 = fmul fast float %5093, 4.000000e+00
  %5256 = fmul fast float %5255, %5250
  %5257 = fmul fast float %5256, %5247
  %5258 = fmul fast float %5101, 4.000000e+00
  %5259 = fmul fast float %5258, %5251
  %5260 = fmul fast float %5259, %5248
  %5261 = fadd fast float %5254, %5237
  %5262 = fadd fast float %5257, %5238
  %5263 = fadd fast float %5260, %5239
  %5264 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5265 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5266 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  br label %5267

; <label>:5267                                    ; preds = %5241, %5082
  %5268 = phi float [ %5264, %5241 ], [ %5237, %5082 ]
  %5269 = phi float [ %5265, %5241 ], [ %5238, %5082 ]
  %5270 = phi float [ %5266, %5241 ], [ %5239, %5082 ]
  %5271 = call float @dx.op.binary.f32(i32 35, float %5269, float %5270)  ; FMax(a,b)
  %5272 = call float @dx.op.binary.f32(i32 35, float %5268, float %5271)  ; FMax(a,b)
  %5273 = fsub fast float 1.000000e+00, %5272
  %5274 = fmul fast float %5272, %5098
  %5275 = fadd fast float %5274, %5098
  %5276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5277 = extractvalue %dx.types.CBufRet.f32 %5276, 2
  %5278 = extractvalue %dx.types.CBufRet.f32 %5276, 3
  %5279 = fmul fast float %5275, %5277
  %5280 = fadd fast float %5279, %5278
  %5281 = call float @dx.op.unary.f32(i32 7, float %5280)  ; Saturate(value)
  %5282 = fsub fast float 1.000000e+00, %5124
  %5283 = fadd fast float %5282, %5281
  %5284 = call float @dx.op.unary.f32(i32 7, float %5283)  ; Saturate(value)
  %5285 = fcmp fast olt float %5284, 1.000000e+00
  br i1 %5285, label %5286, label %5762

; <label>:5286                                    ; preds = %5267
  %5287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5288 = extractvalue %dx.types.CBufRet.f32 %5287, 2
  %5289 = extractvalue %dx.types.CBufRet.f32 %5287, 3
  %5290 = fmul fast float %5288, %116
  %5291 = fmul fast float %5289, %117
  %5292 = fptoui float %5290 to i32
  %5293 = fptoui float %5291 to i32
  %5294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5295 = extractvalue %dx.types.CBufRet.f32 %5294, 0
  %5296 = extractvalue %dx.types.CBufRet.f32 %5294, 2
  %5297 = extractvalue %dx.types.CBufRet.f32 %5294, 3
  %5298 = fadd fast float %103, -4.000000e+00
  %5299 = call float @dx.op.binary.f32(i32 35, float %5298, float 0.000000e+00)  ; FMax(a,b)
  %5300 = fadd fast float %5299, %5295
  %5301 = fmul fast float %5300, %5296
  %5302 = call float @dx.op.unary.f32(i32 23, float %5301)  ; Log(value)
  %5303 = fmul fast float %5302, %5297
  %5304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5305 = extractvalue %dx.types.CBufRet.f32 %5304, 2
  %5306 = fmul fast float %5303, %5305
  %5307 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5309 = extractvalue %dx.types.CBufRet.i32 %5308, 1
  %5310 = add i32 %5309, -1
  %5311 = uitofp i32 %5309 to float
  %5312 = fmul fast float %5311, %5307
  %5313 = fptoui float %5312 to i32
  %5314 = call i32 @dx.op.binary.i32(i32 40, i32 %5313, i32 %5310)  ; UMin(a,b)
  %5315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5316 = extractvalue %dx.types.CBufRet.i32 %5315, 2
  %5317 = extractvalue %dx.types.CBufRet.i32 %5315, 3
  %5318 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5293, i32 %5316, i32 %5292)  ; UMad(a,b,c)
  %5319 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5314, i32 %5317, i32 %5318)  ; UMad(a,b,c)
  %5320 = call float @dx.op.binary.f32(i32 35, float %103, float 0.000000e+00)  ; FMax(a,b)
  %5321 = fptoui float %5320 to i32
  %5322 = lshr i32 %5321, 5
  %5323 = call i32 @dx.op.binary.i32(i32 40, i32 %5322, i32 8191)  ; UMin(a,b)
  %5324 = fsub fast float %4299, %205
  %5325 = call float @dx.op.unary.f32(i32 7, float %5324)  ; Saturate(value)
  %5326 = fcmp fast ogt float %5325, 0.000000e+00
  %5327 = fcmp fast ogt float %5111, 0.000000e+00
  %5328 = and i1 %5327, %5326
  br i1 %5328, label %5329, label %5358

; <label>:5329                                    ; preds = %5286
  %5330 = call float @dx.op.dot3.f32(i32 55, float %5109, float %5110, float %5111, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5331 = call float @dx.op.binary.f32(i32 35, float %5330, float -1.000000e+00)  ; FMax(a,b)
  %5332 = call float @dx.op.binary.f32(i32 36, float %5331, float 1.000000e+00)  ; FMin(a,b)
  %5333 = fmul fast float %5332, %5332
  %5334 = fsub fast float 1.000000e+00, %5333
  %5335 = fmul fast float %5334, 0x3FFC6E2300000000
  %5336 = fsub fast float 1.000000e+00, %5335
  %5337 = fcmp fast ogt float %5336, 0.000000e+00
  %5338 = call float @dx.op.unary.f32(i32 24, float %5336)  ; Sqrt(value)
  %5339 = fsub fast float 1.000000e+00, %5338
  %5340 = call float @dx.op.unary.f32(i32 23, float %5339)  ; Log(value)
  %5341 = fmul fast float %5340, 5.000000e+00
  %5342 = call float @dx.op.unary.f32(i32 21, float %5341)  ; Exp(value)
  %5343 = fmul fast float %5342, 0x3FEF591A60000000
  %5344 = fadd fast float %5343, 0x3F94DCB540000000
  %5345 = select i1 %5337, float %5344, float 1.000000e+00
  %5346 = fcmp fast oge float %5345, 1.000000e+00
  %5347 = fmul fast float %5330, 2.000000e+00
  %5348 = fadd fast float %5347, %5111
  %5349 = select i1 %5346, float %5348, float %5111
  %5350 = fsub fast float %5349, %5111
  %5351 = fmul fast float %5350, %5325
  %5352 = fadd fast float %5351, %5111
  %5353 = call float @dx.op.dot3.f32(i32 55, float %5109, float %5110, float %5352, float %5109, float %5110, float %5352)  ; Dot3(ax,ay,az,bx,by,bz)
  %5354 = call float @dx.op.unary.f32(i32 25, float %5353)  ; Rsqrt(value)
  %5355 = fmul fast float %5354, %5109
  %5356 = fmul fast float %5354, %5110
  %5357 = fmul fast float %5352, %5354
  br label %5358

; <label>:5358                                    ; preds = %5329, %5286
  %5359 = phi float [ %5355, %5329 ], [ %5109, %5286 ]
  %5360 = phi float [ %5356, %5329 ], [ %5110, %5286 ]
  %5361 = phi float [ %5357, %5329 ], [ %5111, %5286 ]
  %5362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5363 = extractvalue %dx.types.CBufRet.i32 %5362, 2
  %5364 = add nsw i32 %5363, -1
  %5365 = call i32 @dx.op.binary.i32(i32 37, i32 %5364, i32 0)  ; IMax(a,b)
  %5366 = shl i32 %5323, 2
  %5367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5366, i32 undef)  ; BufferLoad(srv,index,wot)
  %5368 = extractvalue %dx.types.ResRet.i32 %5367, 0
  %5369 = lshr i32 %5368, 16
  %5370 = and i32 %5368, 65535
  %5371 = lshr i32 %5368, 21
  %5372 = lshr i32 %5370, 5
  %5373 = call i32 @dx.op.binary.i32(i32 40, i32 %5372, i32 %5365)  ; UMin(a,b)
  %5374 = icmp ugt i32 %5371, %5373
  br i1 %5374, label %5738, label %5375

; <label>:5375                                    ; preds = %5358
  br label %5376

; <label>:5376                                    ; preds = %5730, %5375
  %5377 = phi float [ %5731, %5730 ], [ 0.000000e+00, %5375 ]
  %5378 = phi float [ %5732, %5730 ], [ 0.000000e+00, %5375 ]
  %5379 = phi float [ %5733, %5730 ], [ 0.000000e+00, %5375 ]
  %5380 = phi float [ %5734, %5730 ], [ 1.000000e+00, %5375 ]
  %5381 = phi i32 [ %5735, %5730 ], [ %5371, %5375 ]
  %5382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5383 = extractvalue %dx.types.CBufRet.i32 %5382, 2
  %5384 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5319, i32 %5383, i32 %5381)  ; UMad(a,b,c)
  %5385 = shl i32 %5384, 2
  %5386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5385, i32 undef)  ; BufferLoad(srv,index,wot)
  %5387 = extractvalue %dx.types.ResRet.i32 %5386, 0
  %5388 = shl i32 %5381, 5
  %5389 = sub nsw i32 %5369, %5388
  %5390 = call i32 @dx.op.binary.i32(i32 37, i32 %5389, i32 0)  ; IMax(a,b)
  %5391 = call i32 @dx.op.binary.i32(i32 38, i32 %5390, i32 31)  ; IMin(a,b)
  %5392 = sub nsw i32 1, %5369
  %5393 = add nsw i32 %5392, %5370
  %5394 = call i32 @dx.op.binary.i32(i32 37, i32 %5393, i32 0)  ; IMax(a,b)
  %5395 = call i32 @dx.op.binary.i32(i32 38, i32 %5394, i32 32)  ; IMin(a,b)
  %5396 = and i32 %5395, 31
  %5397 = shl i32 -1, %5396
  %5398 = xor i32 %5397, -1
  %5399 = and i32 %5391, 31
  %5400 = shl i32 %5398, %5399
  %5401 = icmp eq i32 %5395, 32
  %5402 = select i1 %5401, i32 -1, i32 %5400
  %5403 = and i32 %5402, %5387
  %5404 = icmp eq i32 %5403, 0
  br i1 %5404, label %5730, label %5405

; <label>:5405                                    ; preds = %5376
  br label %5406

; <label>:5406                                    ; preds = %5513, %5405
  %5407 = phi float [ %5514, %5513 ], [ %5377, %5405 ]
  %5408 = phi float [ %5515, %5513 ], [ %5378, %5405 ]
  %5409 = phi float [ %5516, %5513 ], [ %5379, %5405 ]
  %5410 = phi float [ %5517, %5513 ], [ %5380, %5405 ]
  %5411 = phi i32 [ %5416, %5513 ], [ %5403, %5405 ]
  %5412 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5411)  ; FirstbitLo(value)
  %5413 = add i32 %5412, %5388
  %5414 = and i32 %5412, 31
  %5415 = shl i32 1, %5414
  %5416 = xor i32 %5415, %5411
  %5417 = mul i32 %5413, 72
  %5418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5417, i32 undef)  ; BufferLoad(srv,index,wot)
  %5419 = extractvalue %dx.types.ResRet.f32 %5418, 0
  %5420 = extractvalue %dx.types.ResRet.f32 %5418, 1
  %5421 = extractvalue %dx.types.ResRet.f32 %5418, 2
  %5422 = add i32 %5417, 12
  %5423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5422, i32 undef)  ; BufferLoad(srv,index,wot)
  %5424 = extractvalue %dx.types.ResRet.i32 %5423, 0
  %5425 = add i32 %5417, 16
  %5426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5425, i32 undef)  ; BufferLoad(srv,index,wot)
  %5427 = extractvalue %dx.types.ResRet.f32 %5426, 0
  %5428 = extractvalue %dx.types.ResRet.f32 %5426, 1
  %5429 = extractvalue %dx.types.ResRet.f32 %5426, 2
  %5430 = add i32 %5417, 28
  %5431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5430, i32 undef)  ; BufferLoad(srv,index,wot)
  %5432 = extractvalue %dx.types.ResRet.f32 %5431, 0
  %5433 = add i32 %5417, 32
  %5434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5433, i32 undef)  ; BufferLoad(srv,index,wot)
  %5435 = extractvalue %dx.types.ResRet.f32 %5434, 0
  %5436 = extractvalue %dx.types.ResRet.f32 %5434, 1
  %5437 = extractvalue %dx.types.ResRet.f32 %5434, 2
  %5438 = extractvalue %dx.types.ResRet.f32 %5434, 3
  %5439 = add i32 %5417, 48
  %5440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5439, i32 undef)  ; BufferLoad(srv,index,wot)
  %5441 = extractvalue %dx.types.ResRet.f32 %5440, 0
  %5442 = extractvalue %dx.types.ResRet.f32 %5440, 1
  %5443 = add i32 %5417, 56
  %5444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5443, i32 undef)  ; BufferLoad(srv,index,wot)
  %5445 = extractvalue %dx.types.ResRet.f32 %5444, 0
  %5446 = extractvalue %dx.types.ResRet.f32 %5444, 1
  %5447 = add i32 %5417, 64
  %5448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5447, i32 undef)  ; BufferLoad(srv,index,wot)
  %5449 = extractvalue %dx.types.ResRet.f32 %5448, 0
  %5450 = extractvalue %dx.types.ResRet.f32 %5448, 1
  %5451 = mul i32 %5413, 60
  %5452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5451, i32 undef)  ; BufferLoad(srv,index,wot)
  %5453 = extractvalue %dx.types.ResRet.f32 %5452, 0
  %5454 = extractvalue %dx.types.ResRet.f32 %5452, 1
  %5455 = extractvalue %dx.types.ResRet.f32 %5452, 2
  %5456 = add i32 %5451, 12
  %5457 = add i32 %5451, 48
  %5458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5457, i32 undef)  ; BufferLoad(srv,index,wot)
  %5459 = extractvalue %dx.types.ResRet.f32 %5458, 0
  %5460 = extractvalue %dx.types.ResRet.f32 %5458, 1
  %5461 = extractvalue %dx.types.ResRet.f32 %5458, 2
  %5462 = and i32 %5424, 32767
  %5463 = bitcast float %5419 to i32
  %5464 = icmp eq i32 %5463, -1
  %5465 = bitcast float %5420 to i32
  %5466 = and i32 %5424, 32768
  %5467 = icmp ne i32 %5466, 0
  %5468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5469 = extractvalue %dx.types.CBufRet.f32 %5468, 0
  %5470 = extractvalue %dx.types.CBufRet.f32 %5468, 1
  %5471 = extractvalue %dx.types.CBufRet.f32 %5468, 2
  %5472 = fsub fast float %5453, %5469
  %5473 = fsub fast float %5454, %5470
  %5474 = fsub fast float %5455, %5471
  %5475 = fsub fast float %203, %5472
  %5476 = fsub fast float %204, %5473
  %5477 = fsub fast float %205, %5474
  %5478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5456, i32 undef)  ; BufferLoad(srv,index,wot)
  %5479 = extractvalue %dx.types.ResRet.f32 %5478, 0
  %5480 = extractvalue %dx.types.ResRet.f32 %5478, 1
  %5481 = extractvalue %dx.types.ResRet.f32 %5478, 2
  %5482 = call float @dx.op.dot3.f32(i32 55, float %5475, float %5476, float %5477, float %5479, float %5480, float %5481)  ; Dot3(ax,ay,az,bx,by,bz)
  %5483 = add i32 %5451, 24
  %5484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5483, i32 undef)  ; BufferLoad(srv,index,wot)
  %5485 = extractvalue %dx.types.ResRet.f32 %5484, 0
  %5486 = extractvalue %dx.types.ResRet.f32 %5484, 1
  %5487 = extractvalue %dx.types.ResRet.f32 %5484, 2
  %5488 = call float @dx.op.dot3.f32(i32 55, float %5475, float %5476, float %5477, float %5485, float %5486, float %5487)  ; Dot3(ax,ay,az,bx,by,bz)
  %5489 = add i32 %5451, 36
  %5490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5489, i32 undef)  ; BufferLoad(srv,index,wot)
  %5491 = extractvalue %dx.types.ResRet.f32 %5490, 0
  %5492 = extractvalue %dx.types.ResRet.f32 %5490, 1
  %5493 = extractvalue %dx.types.ResRet.f32 %5490, 2
  %5494 = call float @dx.op.dot3.f32(i32 55, float %5475, float %5476, float %5477, float %5491, float %5492, float %5493)  ; Dot3(ax,ay,az,bx,by,bz)
  %5495 = call float @dx.op.unary.f32(i32 6, float %5482)  ; FAbs(value)
  %5496 = call float @dx.op.unary.f32(i32 6, float %5488)  ; FAbs(value)
  %5497 = call float @dx.op.unary.f32(i32 6, float %5494)  ; FAbs(value)
  %5498 = fsub fast float %5459, %5495
  %5499 = fsub fast float %5460, %5496
  %5500 = fsub fast float %5461, %5497
  %5501 = fmul fast float %5498, %5427
  %5502 = fmul fast float %5499, %5428
  %5503 = fmul fast float %5500, %5429
  %5504 = call float @dx.op.binary.f32(i32 36, float %5502, float %5503)  ; FMin(a,b)
  %5505 = call float @dx.op.binary.f32(i32 36, float %5501, float %5504)  ; FMin(a,b)
  %5506 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5507 = call float @dx.op.binary.f32(i32 36, float %5410, float %5506)  ; FMin(a,b)
  %5508 = uitofp i1 %5467 to float
  %5509 = fadd fast float %5325, 1.000000e+00
  %5510 = fsub fast float %5509, %5508
  %5511 = fmul fast float %5507, %5510
  %5512 = fcmp fast ogt float %5511, 0.000000e+00
  br i1 %5512, label %5519, label %5513

; <label>:5513                                    ; preds = %5661, %5406
  %5514 = phi float [ %5725, %5661 ], [ %5407, %5406 ]
  %5515 = phi float [ %5726, %5661 ], [ %5408, %5406 ]
  %5516 = phi float [ %5727, %5661 ], [ %5409, %5406 ]
  %5517 = phi float [ %5728, %5661 ], [ %5410, %5406 ]
  %5518 = icmp eq i32 %5411, %5415
  br i1 %5518, label %5729, label %5406

; <label>:5519                                    ; preds = %5406
  br i1 %5464, label %5577, label %5520

; <label>:5520                                    ; preds = %5519
  %5521 = fsub fast float -0.000000e+00, %5479
  %5522 = fsub fast float -0.000000e+00, %5480
  %5523 = fsub fast float -0.000000e+00, %5481
  %5524 = call float @dx.op.dot3.f32(i32 55, float %5359, float %5360, float %5361, float %5521, float %5522, float %5523)  ; Dot3(ax,ay,az,bx,by,bz)
  %5525 = fsub fast float -0.000000e+00, %5524
  %5526 = call float @dx.op.dot3.f32(i32 55, float %5475, float %5476, float %5477, float %5521, float %5522, float %5523)  ; Dot3(ax,ay,az,bx,by,bz)
  %5527 = fadd fast float %5526, %5442
  %5528 = fadd fast float %5441, %5526
  %5529 = fsub fast float -0.000000e+00, %5528
  %5530 = fcmp ogt float %5524, -0.000000e+00
  %5531 = select i1 %5530, float %5529, float %5527
  %5532 = call float @dx.op.unary.f32(i32 6, float %5525)  ; FAbs(value)
  %5533 = fdiv fast float 1.000000e+00, %5532
  %5534 = fmul fast float %5531, %5533
  %5535 = call float @dx.op.binary.f32(i32 35, float %5534, float 0.000000e+00)  ; FMax(a,b)
  %5536 = fsub fast float -0.000000e+00, %5485
  %5537 = fsub fast float -0.000000e+00, %5486
  %5538 = fsub fast float -0.000000e+00, %5487
  %5539 = call float @dx.op.dot3.f32(i32 55, float %5359, float %5360, float %5361, float %5536, float %5537, float %5538)  ; Dot3(ax,ay,az,bx,by,bz)
  %5540 = fsub fast float -0.000000e+00, %5539
  %5541 = call float @dx.op.dot3.f32(i32 55, float %5475, float %5476, float %5477, float %5536, float %5537, float %5538)  ; Dot3(ax,ay,az,bx,by,bz)
  %5542 = fadd fast float %5541, %5446
  %5543 = fadd fast float %5445, %5541
  %5544 = fsub fast float -0.000000e+00, %5543
  %5545 = fcmp ogt float %5539, -0.000000e+00
  %5546 = select i1 %5545, float %5544, float %5542
  %5547 = call float @dx.op.unary.f32(i32 6, float %5540)  ; FAbs(value)
  %5548 = fdiv fast float 1.000000e+00, %5547
  %5549 = fmul fast float %5546, %5548
  %5550 = call float @dx.op.binary.f32(i32 35, float %5549, float 0.000000e+00)  ; FMax(a,b)
  %5551 = fsub fast float -0.000000e+00, %5491
  %5552 = fsub fast float -0.000000e+00, %5492
  %5553 = fsub fast float -0.000000e+00, %5493
  %5554 = call float @dx.op.dot3.f32(i32 55, float %5359, float %5360, float %5361, float %5551, float %5552, float %5553)  ; Dot3(ax,ay,az,bx,by,bz)
  %5555 = fsub fast float -0.000000e+00, %5554
  %5556 = call float @dx.op.dot3.f32(i32 55, float %5475, float %5476, float %5477, float %5551, float %5552, float %5553)  ; Dot3(ax,ay,az,bx,by,bz)
  %5557 = fadd fast float %5556, %5450
  %5558 = fadd fast float %5449, %5556
  %5559 = fsub fast float -0.000000e+00, %5558
  %5560 = fcmp ogt float %5554, -0.000000e+00
  %5561 = select i1 %5560, float %5559, float %5557
  %5562 = call float @dx.op.unary.f32(i32 6, float %5555)  ; FAbs(value)
  %5563 = fdiv fast float 1.000000e+00, %5562
  %5564 = fmul fast float %5561, %5563
  %5565 = call float @dx.op.binary.f32(i32 35, float %5564, float 0.000000e+00)  ; FMax(a,b)
  %5566 = call float @dx.op.binary.f32(i32 36, float %5550, float %5565)  ; FMin(a,b)
  %5567 = call float @dx.op.binary.f32(i32 36, float %5535, float %5566)  ; FMin(a,b)
  %5568 = fmul fast float %5567, %5359
  %5569 = fmul fast float %5567, %5360
  %5570 = fmul fast float %5567, %5361
  %5571 = fadd fast float %5568, %203
  %5572 = fadd fast float %5569, %204
  %5573 = fadd fast float %5570, %205
  %5574 = fsub fast float %5571, %5419
  %5575 = fsub fast float %5572, %5420
  %5576 = fsub fast float %5573, %5421
  br label %5584

; <label>:5577                                    ; preds = %5519
  %5578 = fmul fast float %5359, 8.096000e+03
  %5579 = fmul fast float %5360, 8.096000e+03
  %5580 = fmul fast float %5361, 8.096000e+03
  %5581 = fadd fast float %5578, %203
  %5582 = fadd fast float %5579, %204
  %5583 = fadd fast float %5580, %205
  br label %5584

; <label>:5584                                    ; preds = %5577, %5520
  %5585 = phi float [ %5359, %5577 ], [ %5574, %5520 ]
  %5586 = phi float [ %5360, %5577 ], [ %5575, %5520 ]
  %5587 = phi float [ %5361, %5577 ], [ %5576, %5520 ]
  %5588 = phi float [ %5581, %5577 ], [ %5571, %5520 ]
  %5589 = phi float [ %5582, %5577 ], [ %5572, %5520 ]
  %5590 = phi float [ %5583, %5577 ], [ %5573, %5520 ]
  %5591 = fcmp fast olt float %5438, 1.000000e+00
  br i1 %5591, label %5592, label %5623, !dx.controlflow.hints !102

; <label>:5592                                    ; preds = %5584
  %5593 = fmul fast float %5587, %5436
  %5594 = fmul fast float %5586, %5437
  %5595 = fsub fast float %5593, %5594
  %5596 = fmul fast float %5585, %5437
  %5597 = fmul fast float %5587, %5435
  %5598 = fsub fast float %5596, %5597
  %5599 = fmul fast float %5586, %5435
  %5600 = fmul fast float %5585, %5436
  %5601 = fsub fast float %5599, %5600
  %5602 = fmul fast float %5595, 2.000000e+00
  %5603 = fmul fast float %5598, 2.000000e+00
  %5604 = fmul fast float %5601, 2.000000e+00
  %5605 = fmul fast float %5602, %5438
  %5606 = fmul fast float %5603, %5438
  %5607 = fmul fast float %5604, %5438
  %5608 = fmul fast float %5604, %5436
  %5609 = fmul fast float %5603, %5437
  %5610 = fmul fast float %5602, %5437
  %5611 = fmul fast float %5604, %5435
  %5612 = fmul fast float %5603, %5435
  %5613 = fmul fast float %5602, %5436
  %5614 = fadd fast float %5608, %5585
  %5615 = fadd fast float %5614, %5605
  %5616 = fsub fast float %5615, %5609
  %5617 = fsub fast float %5586, %5611
  %5618 = fadd fast float %5617, %5606
  %5619 = fadd fast float %5618, %5610
  %5620 = fadd fast float %5607, %5587
  %5621 = fsub fast float %5620, %5613
  %5622 = fadd fast float %5621, %5612
  br label %5623

; <label>:5623                                    ; preds = %5592, %5584
  %5624 = phi float [ %5616, %5592 ], [ %5585, %5584 ]
  %5625 = phi float [ %5619, %5592 ], [ %5586, %5584 ]
  %5626 = phi float [ %5622, %5592 ], [ %5587, %5584 ]
  br i1 %5464, label %5658, label %5627

; <label>:5627                                    ; preds = %5623
  %5628 = fmul fast float %5098, 0x400187C840000000
  %5629 = fadd fast float %5628, 0xC00EFC2120000000
  %5630 = fmul fast float %5629, %5098
  %5631 = fadd fast float %5630, 0x3FE5D16340000000
  %5632 = fmul fast float %5631, %5098
  %5633 = fadd fast float %5632, 1.000000e+00
  %5634 = call float @dx.op.unary.f32(i32 7, float %5633)  ; Saturate(value)
  %5635 = fsub fast float %5588, %203
  %5636 = fsub fast float %5589, %204
  %5637 = fsub fast float %5590, %205
  %5638 = fsub fast float %5588, %5419
  %5639 = fsub fast float %5589, %5420
  %5640 = fsub fast float %5590, %5421
  %5641 = call float @dx.op.dot3.f32(i32 55, float %5635, float %5636, float %5637, float %5635, float %5636, float %5637)  ; Dot3(ax,ay,az,bx,by,bz)
  %5642 = call float @dx.op.dot3.f32(i32 55, float %5638, float %5639, float %5640, float %5638, float %5639, float %5640)  ; Dot3(ax,ay,az,bx,by,bz)
  %5643 = fadd fast float %5642, 0x3EE4F8B580000000
  %5644 = fdiv fast float %5641, %5643
  %5645 = bitcast float %5644 to i32
  %5646 = ashr i32 %5645, 1
  %5647 = add nsw i32 %5646, 532487669
  %5648 = bitcast i32 %5647 to float
  %5649 = fmul fast float %5648, %5634
  %5650 = call float @dx.op.unary.f32(i32 7, float %5649)  ; Saturate(value)
  %5651 = fmul fast float %5650, 0x4009981AE0000000
  %5652 = fsub fast float 0x40111BBD80000000, %5651
  %5653 = fmul fast float %5652, %5650
  %5654 = fadd fast float %5653, 0xC0009F6020000000
  %5655 = fmul fast float %5654, %5650
  %5656 = fadd fast float %5655, 1.000000e+00
  %5657 = call float @dx.op.unary.f32(i32 7, float %5656)  ; Saturate(value)
  br label %5661

; <label>:5658                                    ; preds = %5623
  %5659 = icmp ne i32 %5465, -1
  %5660 = zext i1 %5659 to i32
  br label %5661

; <label>:5661                                    ; preds = %5658, %5627
  %5662 = phi float [ %5098, %5658 ], [ %5657, %5627 ]
  %5663 = phi i32 [ %5660, %5658 ], [ 0, %5627 ]
  %5664 = fmul float %5662, 5.000000e+00
  %5665 = fsub float 5.000000e+00, %5664
  %5666 = icmp ne i32 %5663, 0
  %5667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5668 = extractvalue %dx.types.CBufRet.f32 %5667, 3
  %5669 = fadd fast float %5668, %5665
  %5670 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5669)  ; FMax(a,b)
  %5671 = call float @dx.op.unary.f32(i32 6, float %5624)  ; FAbs(value)
  %5672 = call float @dx.op.unary.f32(i32 6, float %5625)  ; FAbs(value)
  %5673 = fadd fast float %5672, %5671
  %5674 = call float @dx.op.unary.f32(i32 6, float %5626)  ; FAbs(value)
  %5675 = fadd fast float %5673, %5674
  %5676 = fcmp fast oeq float %5675, 0.000000e+00
  %5677 = fdiv fast float 1.000000e+00, %5675
  %5678 = select i1 %5676, float 1.000000e+00, float %5677
  %5679 = fmul fast float %5678, %5624
  %5680 = fmul fast float %5678, %5625
  %5681 = call float @dx.op.unary.f32(i32 6, float %5680)  ; FAbs(value)
  %5682 = call float @dx.op.unary.f32(i32 6, float %5679)  ; FAbs(value)
  %5683 = fsub fast float 1.000000e+00, %5681
  %5684 = fsub fast float 1.000000e+00, %5682
  %5685 = fcmp fast oge float %5679, 0.000000e+00
  %5686 = fcmp fast oge float %5680, 0.000000e+00
  %5687 = select i1 %5685, float 1.000000e+00, float -1.000000e+00
  %5688 = select i1 %5686, float 1.000000e+00, float -1.000000e+00
  %5689 = fcmp fast ole float %5626, 0.000000e+00
  %5690 = fmul fast float %5687, %5683
  %5691 = fmul fast float %5688, %5684
  %5692 = select i1 %5689, float %5690, float %5679
  %5693 = select i1 %5689, float %5691, float %5680
  %5694 = fmul fast float %5692, 5.000000e-01
  %5695 = fmul fast float %5693, 5.000000e-01
  %5696 = fadd fast float %5694, 5.000000e-01
  %5697 = fadd fast float %5695, 5.000000e-01
  %5698 = uitofp i32 %5462 to float
  %5699 = call float @dx.op.binary.f32(i32 36, float %5670, float 3.000000e+00)  ; FMin(a,b)
  %5700 = fadd fast float %5699, 2.000000e+00
  %5701 = call float @dx.op.unary.f32(i32 21, float %5700)  ; Exp(value)
  %5702 = extractvalue %dx.types.CBufRet.f32 %5667, 1
  %5703 = fmul fast float %5702, %5701
  %5704 = fmul fast float %5703, 2.000000e+00
  %5705 = fsub fast float 1.000000e+00, %5704
  %5706 = fmul fast float %5696, %5705
  %5707 = fmul fast float %5697, %5705
  %5708 = fadd fast float %5706, %5703
  %5709 = fadd fast float %5707, %5703
  %5710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %53, float %5708, float %5709, float %5698, float undef, i32 0, i32 0, i32 undef, float %5670)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5711 = extractvalue %dx.types.ResRet.f32 %5710, 0
  %5712 = extractvalue %dx.types.ResRet.f32 %5710, 1
  %5713 = extractvalue %dx.types.ResRet.f32 %5710, 2
  %5714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5715 = extractvalue %dx.types.CBufRet.f32 %5714, 3
  %5716 = fmul fast float %5715, %5432
  %5717 = call float @dx.op.binary.f32(i32 36, float %5165, float %5716)  ; FMin(a,b)
  %5718 = select i1 %5666, float %5717, float %5716
  %5719 = fmul fast float %5711, %5511
  %5720 = fmul fast float %5719, %5718
  %5721 = fmul fast float %5712, %5511
  %5722 = fmul fast float %5721, %5718
  %5723 = fmul fast float %5713, %5511
  %5724 = fmul fast float %5723, %5718
  %5725 = fadd fast float %5720, %5407
  %5726 = fadd fast float %5722, %5408
  %5727 = fadd fast float %5724, %5409
  %5728 = fsub fast float %5410, %5511
  br label %5513

; <label>:5729                                    ; preds = %5513
  br label %5730

; <label>:5730                                    ; preds = %5729, %5376
  %5731 = phi float [ %5377, %5376 ], [ %5514, %5729 ]
  %5732 = phi float [ %5378, %5376 ], [ %5515, %5729 ]
  %5733 = phi float [ %5379, %5376 ], [ %5516, %5729 ]
  %5734 = phi float [ %5380, %5376 ], [ %5517, %5729 ]
  %5735 = add i32 %5381, 1
  %5736 = icmp ugt i32 %5735, %5373
  br i1 %5736, label %5737, label %5376, !llvm.loop !103

; <label>:5737                                    ; preds = %5730
  br label %5738

; <label>:5738                                    ; preds = %5737, %5358
  %5739 = phi float [ 0.000000e+00, %5358 ], [ %5731, %5737 ]
  %5740 = phi float [ 0.000000e+00, %5358 ], [ %5732, %5737 ]
  %5741 = phi float [ 0.000000e+00, %5358 ], [ %5733, %5737 ]
  %5742 = call float @dx.op.dot3.f32(i32 55, float %5739, float %5740, float %5741, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5743 = select i1 %275, float 0.000000e+00, float %5739
  %5744 = select i1 %275, float %5742, float %5740
  %5745 = select i1 %275, float 0.000000e+00, float %5741
  %5746 = fcmp fast olt float %5284, 0.000000e+00
  %5747 = call float @dx.op.unary.f32(i32 6, float %5284)  ; FAbs(value)
  %5748 = fmul fast float %5747, %5224
  %5749 = fmul fast float %5747, %5225
  %5750 = fmul fast float %5747, %5226
  %5751 = select i1 %5746, float %5224, float %5748
  %5752 = select i1 %5746, float %5225, float %5749
  %5753 = select i1 %5746, float %5226, float %5750
  %5754 = fsub fast float 1.000000e+00, %5747
  %5755 = call float @dx.op.unary.f32(i32 7, float %5754)  ; Saturate(value)
  %5756 = fmul fast float %5755, %5743
  %5757 = fmul fast float %5755, %5744
  %5758 = fmul fast float %5755, %5745
  %5759 = fadd fast float %5751, %5756
  %5760 = fadd fast float %5752, %5757
  %5761 = fadd fast float %5753, %5758
  br label %5762

; <label>:5762                                    ; preds = %5738, %5267
  %5763 = phi float [ %5224, %5267 ], [ %5759, %5738 ]
  %5764 = phi float [ %5225, %5267 ], [ %5760, %5738 ]
  %5765 = phi float [ %5226, %5267 ], [ %5761, %5738 ]
  %5766 = fmul fast float %5273, %5220
  %5767 = fmul fast float %5273, %5221
  %5768 = fmul fast float %5273, %5222
  %5769 = call float @dx.op.dot3.f32(i32 55, float %5089, float %5090, float %5091, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5770 = fcmp fast ogt float %5769, 0x3E7FF19E20000000
  %5771 = fdiv fast float 1.000000e+00, %5769
  %5772 = select i1 %5770, float %5771, float 0.000000e+00
  %5773 = fmul fast float %5772, %5089
  %5774 = fmul fast float %5772, %5090
  %5775 = fmul fast float %5772, %5091
  %5776 = fadd fast float %5773, -1.000000e+00
  %5777 = fadd fast float %5774, -1.000000e+00
  %5778 = fadd fast float %5775, -1.000000e+00
  %5779 = fmul fast float %5776, 5.000000e-01
  %5780 = fmul fast float %5777, 5.000000e-01
  %5781 = fmul fast float %5778, 5.000000e-01
  %5782 = fadd fast float %5779, 1.000000e+00
  %5783 = fadd fast float %5780, 1.000000e+00
  %5784 = fadd fast float %5781, 1.000000e+00
  %5785 = fmul fast float %5763, %5268
  %5786 = fmul fast float %5764, %5269
  %5787 = fmul fast float %5765, %5270
  %5788 = fsub fast float 1.000000e+00, %5103
  %5789 = bitcast float %5788 to i32
  %5790 = sitofp i32 %5789 to float
  %5791 = fmul fast float %5790, 5.000000e+00
  %5792 = fadd fast float %5791, 0xC1EFBF8940000000
  %5793 = fptosi float %5792 to i32
  %5794 = bitcast i32 %5793 to float
  %5795 = fmul fast float %5794, %3896
  %5796 = fmul fast float %5220, %5795
  %5797 = fmul fast float %5796, %5273
  %5798 = fmul fast float %5797, %5782
  %5799 = fmul fast float %5221, %5795
  %5800 = fmul fast float %5799, %5273
  %5801 = fmul fast float %5800, %5783
  %5802 = fmul fast float %5222, %5795
  %5803 = fmul fast float %5802, %5273
  %5804 = fmul fast float %5803, %5784
  %5805 = fmul fast float %5766, %3892
  %5806 = fmul fast float %5767, %3892
  %5807 = fmul fast float %5768, %3892
  %5808 = fadd fast float %5785, %3888
  %5809 = fadd fast float %5808, %5798
  %5810 = fmul fast float %5809, %3892
  %5811 = fadd fast float %5786, %3889
  %5812 = fadd fast float %5811, %5801
  %5813 = fmul fast float %5812, %3892
  %5814 = fadd fast float %5787, %3890
  %5815 = fadd fast float %5814, %5804
  %5816 = fmul fast float %5815, %3892
  %5817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.f32 %5817, 3
  %5819 = fcmp fast oeq float %5818, 0.000000e+00
  br i1 %5819, label %7523, label %5820

; <label>:5820                                    ; preds = %5762
  %5821 = extractvalue %dx.types.CBufRet.f32 %5817, 0
  %5822 = extractvalue %dx.types.CBufRet.f32 %5817, 1
  %5823 = extractvalue %dx.types.CBufRet.f32 %5817, 2
  %5824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5825 = extractvalue %dx.types.CBufRet.f32 %5824, 0
  %5826 = extractvalue %dx.types.CBufRet.f32 %5824, 1
  %5827 = extractvalue %dx.types.CBufRet.f32 %5824, 2
  %5828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5829 = extractvalue %dx.types.CBufRet.f32 %5828, 0
  %5830 = extractvalue %dx.types.CBufRet.f32 %5828, 1
  %5831 = call float @dx.op.dot3.f32(i32 55, float %5825, float %5826, float %5827, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5832 = select i1 %275, float %5829, float %5825
  %5833 = select i1 %275, float %5831, float %5826
  %5834 = select i1 %275, float %5830, float %5827
  %5835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5836 = extractvalue %dx.types.CBufRet.f32 %5835, 2
  %5837 = fmul fast float %5836, %123
  %5838 = fmul fast float %5836, %124
  %5839 = fmul fast float %5836, %125
  %5840 = fadd fast float %5837, %203
  %5841 = fadd fast float %5838, %204
  %5842 = fadd fast float %5839, %205
  %5843 = fcmp fast olt float %5818, 0.000000e+00
  br i1 %5843, label %7101, label %5844

; <label>:5844                                    ; preds = %5820
  %5845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5846 = extractvalue %dx.types.CBufRet.f32 %5845, 0
  %5847 = extractvalue %dx.types.CBufRet.f32 %5845, 1
  %5848 = extractvalue %dx.types.CBufRet.f32 %5845, 2
  %5849 = extractvalue %dx.types.CBufRet.f32 %5845, 3
  %5850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5851 = extractvalue %dx.types.CBufRet.f32 %5850, 0
  %5852 = extractvalue %dx.types.CBufRet.f32 %5850, 1
  %5853 = extractvalue %dx.types.CBufRet.f32 %5850, 2
  %5854 = extractvalue %dx.types.CBufRet.f32 %5850, 3
  %5855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5856 = extractvalue %dx.types.CBufRet.f32 %5855, 0
  %5857 = extractvalue %dx.types.CBufRet.f32 %5855, 1
  %5858 = extractvalue %dx.types.CBufRet.f32 %5855, 2
  %5859 = extractvalue %dx.types.CBufRet.f32 %5855, 3
  %5860 = fmul fast float %5846, %5840
  %5861 = call float @dx.op.tertiary.f32(i32 46, float %5841, float %5847, float %5860)  ; FMad(a,b,c)
  %5862 = call float @dx.op.tertiary.f32(i32 46, float %5842, float %5848, float %5861)  ; FMad(a,b,c)
  %5863 = fadd fast float %5862, %5849
  %5864 = fmul fast float %5851, %5840
  %5865 = call float @dx.op.tertiary.f32(i32 46, float %5841, float %5852, float %5864)  ; FMad(a,b,c)
  %5866 = call float @dx.op.tertiary.f32(i32 46, float %5842, float %5853, float %5865)  ; FMad(a,b,c)
  %5867 = fadd fast float %5866, %5854
  %5868 = fmul fast float %5856, %5840
  %5869 = call float @dx.op.tertiary.f32(i32 46, float %5841, float %5857, float %5868)  ; FMad(a,b,c)
  %5870 = call float @dx.op.tertiary.f32(i32 46, float %5842, float %5858, float %5869)  ; FMad(a,b,c)
  %5871 = fadd fast float %5870, %5859
  %5872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5873 = extractvalue %dx.types.CBufRet.f32 %5872, 0
  %5874 = fcmp fast une float %5873, 0.000000e+00
  %5875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5876 = extractvalue %dx.types.CBufRet.f32 %5875, 0
  %5877 = extractvalue %dx.types.CBufRet.f32 %5875, 1
  %5878 = extractvalue %dx.types.CBufRet.f32 %5875, 3
  %5879 = fmul fast float %5878, %5863
  %5880 = fmul fast float %5878, %5867
  %5881 = fadd fast float %5879, %5876
  %5882 = fadd fast float %5880, %5877
  %5883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5884 = extractvalue %dx.types.CBufRet.f32 %5883, 0
  %5885 = extractvalue %dx.types.CBufRet.f32 %5883, 1
  %5886 = extractvalue %dx.types.CBufRet.f32 %5883, 3
  %5887 = fmul fast float %5886, %5863
  %5888 = fmul fast float %5886, %5867
  %5889 = fadd fast float %5887, %5884
  %5890 = fadd fast float %5888, %5885
  %5891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5892 = extractvalue %dx.types.CBufRet.f32 %5891, 1
  %5893 = fsub fast float %5892, %5871
  %5894 = extractvalue %dx.types.CBufRet.f32 %5891, 2
  %5895 = fmul fast float %5893, %5894
  %5896 = fsub fast float 1.000000e+00, %5895
  %5897 = call float @dx.op.unary.f32(i32 7, float %5896)  ; Saturate(value)
  br i1 %5874, label %5958, label %5898

; <label>:5898                                    ; preds = %5844
  %5899 = extractvalue %dx.types.CBufRet.f32 %5883, 2
  %5900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.f32 %5900, 2
  %5902 = fadd fast float %5901, %5899
  %5903 = fcmp fast ogt float %5902, 0.000000e+00
  br i1 %5903, label %5904, label %5928

; <label>:5904                                    ; preds = %5898
  %5905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5906 = extractvalue %dx.types.CBufRet.f32 %5905, 0
  %5907 = extractvalue %dx.types.CBufRet.f32 %5905, 1
  %5908 = fsub fast float %5889, %5906
  %5909 = fsub fast float %5890, %5907
  %5910 = fcmp fast olt float %5908, 0.000000e+00
  %5911 = fcmp fast olt float %5909, 0.000000e+00
  %5912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5913 = extractvalue %dx.types.CBufRet.f32 %5912, 0
  %5914 = extractvalue %dx.types.CBufRet.f32 %5912, 1
  %5915 = extractvalue %dx.types.CBufRet.f32 %5912, 2
  %5916 = extractvalue %dx.types.CBufRet.f32 %5912, 3
  %5917 = select i1 %5910, float %5913, float %5915
  %5918 = select i1 %5911, float %5914, float %5916
  %5919 = fmul fast float %5917, %5908
  %5920 = fmul fast float %5918, %5909
  %5921 = call float @dx.op.unary.f32(i32 6, float %5919)  ; FAbs(value)
  %5922 = call float @dx.op.unary.f32(i32 6, float %5920)  ; FAbs(value)
  %5923 = extractvalue %dx.types.CBufRet.f32 %5835, 0
  %5924 = call float @dx.op.binary.f32(i32 35, float %5921, float %5922)  ; FMax(a,b)
  %5925 = fsub fast float %5923, %5924
  %5926 = call float @dx.op.unary.f32(i32 7, float %5925)  ; Saturate(value)
  %5927 = fmul fast float %5926, %5897
  br label %5928

; <label>:5928                                    ; preds = %5904, %5898
  %5929 = phi float [ %5927, %5904 ], [ 0.000000e+00, %5898 ]
  %5930 = extractvalue %dx.types.CBufRet.f32 %5875, 2
  %5931 = extractvalue %dx.types.CBufRet.f32 %5900, 1
  %5932 = fadd fast float %5931, %5930
  %5933 = fcmp fast ogt float %5932, 0.000000e+00
  br i1 %5933, label %5934, label %5958

; <label>:5934                                    ; preds = %5928
  %5935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5936 = extractvalue %dx.types.CBufRet.f32 %5935, 0
  %5937 = extractvalue %dx.types.CBufRet.f32 %5935, 1
  %5938 = fsub fast float %5881, %5936
  %5939 = fsub fast float %5882, %5937
  %5940 = fcmp fast olt float %5938, 0.000000e+00
  %5941 = fcmp fast olt float %5939, 0.000000e+00
  %5942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5943 = extractvalue %dx.types.CBufRet.f32 %5942, 0
  %5944 = extractvalue %dx.types.CBufRet.f32 %5942, 1
  %5945 = extractvalue %dx.types.CBufRet.f32 %5942, 2
  %5946 = extractvalue %dx.types.CBufRet.f32 %5942, 3
  %5947 = select i1 %5940, float %5943, float %5945
  %5948 = select i1 %5941, float %5944, float %5946
  %5949 = fmul fast float %5947, %5938
  %5950 = fmul fast float %5948, %5939
  %5951 = call float @dx.op.unary.f32(i32 6, float %5949)  ; FAbs(value)
  %5952 = call float @dx.op.unary.f32(i32 6, float %5950)  ; FAbs(value)
  %5953 = extractvalue %dx.types.CBufRet.f32 %5835, 0
  %5954 = call float @dx.op.binary.f32(i32 35, float %5951, float %5952)  ; FMax(a,b)
  %5955 = fsub fast float %5953, %5954
  %5956 = call float @dx.op.unary.f32(i32 7, float %5955)  ; Saturate(value)
  %5957 = fmul fast float %5956, %5897
  br label %5958

; <label>:5958                                    ; preds = %5934, %5928, %5844
  %5959 = phi float [ 0.000000e+00, %5844 ], [ %5957, %5934 ], [ 0.000000e+00, %5928 ]
  %5960 = phi float [ 0.000000e+00, %5844 ], [ %5929, %5934 ], [ %5929, %5928 ]
  %5961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5962 = extractvalue %dx.types.CBufRet.f32 %5961, 1
  %5963 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  %5964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5965 = extractvalue %dx.types.CBufRet.f32 %5964, 0
  %5966 = extractvalue %dx.types.CBufRet.f32 %5964, 1
  %5967 = fsub fast float %5863, %5965
  %5968 = fsub fast float %5867, %5966
  %5969 = fcmp fast olt float %5967, 0.000000e+00
  %5970 = fcmp fast olt float %5968, 0.000000e+00
  %5971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5972 = extractvalue %dx.types.CBufRet.f32 %5971, 0
  %5973 = extractvalue %dx.types.CBufRet.f32 %5971, 1
  %5974 = extractvalue %dx.types.CBufRet.f32 %5971, 2
  %5975 = extractvalue %dx.types.CBufRet.f32 %5971, 3
  %5976 = select i1 %5969, float %5972, float %5974
  %5977 = select i1 %5970, float %5973, float %5975
  %5978 = fmul fast float %5976, %5967
  %5979 = fmul fast float %5977, %5968
  %5980 = call float @dx.op.unary.f32(i32 6, float %5978)  ; FAbs(value)
  %5981 = call float @dx.op.unary.f32(i32 6, float %5979)  ; FAbs(value)
  %5982 = extractvalue %dx.types.CBufRet.f32 %5835, 0
  %5983 = call float @dx.op.binary.f32(i32 35, float %5980, float %5981)  ; FMax(a,b)
  %5984 = fsub fast float %5982, %5983
  %5985 = call float @dx.op.unary.f32(i32 7, float %5984)  ; Saturate(value)
  %5986 = call float @dx.op.binary.f32(i32 36, float %5985, float %5963)  ; FMin(a,b)
  %5987 = fmul fast float %5986, %5897
  %5988 = fsub fast float %5959, %5987
  %5989 = fsub fast float %5960, %5959
  %5990 = fsub fast float %5989, %5987
  %5991 = call float @dx.op.binary.f32(i32 35, float %5959, float %5960)  ; FMax(a,b)
  %5992 = call float @dx.op.binary.f32(i32 35, float %5987, float %5991)  ; FMax(a,b)
  %5993 = fcmp fast olt float %5992, 1.000000e+00
  br i1 %5993, label %5994, label %6392, !dx.controlflow.hints !105

; <label>:5994                                    ; preds = %5958
  %5995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5996 = extractvalue %dx.types.CBufRet.f32 %5995, 0
  %5997 = fcmp fast une float %5996, 0.000000e+00
  br i1 %5997, label %5998, label %6392, !dx.controlflow.hints !106

; <label>:5998                                    ; preds = %5994
  %5999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6000 = extractvalue %dx.types.CBufRet.f32 %5999, 0
  %6001 = extractvalue %dx.types.CBufRet.f32 %5999, 1
  %6002 = extractvalue %dx.types.CBufRet.f32 %5999, 2
  %6003 = extractvalue %dx.types.CBufRet.f32 %5999, 3
  %6004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6005 = extractvalue %dx.types.CBufRet.f32 %6004, 0
  %6006 = extractvalue %dx.types.CBufRet.f32 %6004, 1
  %6007 = extractvalue %dx.types.CBufRet.f32 %6004, 2
  %6008 = extractvalue %dx.types.CBufRet.f32 %6004, 3
  %6009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6010 = extractvalue %dx.types.CBufRet.f32 %6009, 0
  %6011 = extractvalue %dx.types.CBufRet.f32 %6009, 1
  %6012 = extractvalue %dx.types.CBufRet.f32 %6009, 2
  %6013 = extractvalue %dx.types.CBufRet.f32 %6009, 3
  %6014 = fmul fast float %6000, %5840
  %6015 = call float @dx.op.tertiary.f32(i32 46, float %5841, float %6001, float %6014)  ; FMad(a,b,c)
  %6016 = call float @dx.op.tertiary.f32(i32 46, float %5842, float %6002, float %6015)  ; FMad(a,b,c)
  %6017 = fadd fast float %6016, %6003
  %6018 = fmul fast float %6005, %5840
  %6019 = call float @dx.op.tertiary.f32(i32 46, float %5841, float %6006, float %6018)  ; FMad(a,b,c)
  %6020 = call float @dx.op.tertiary.f32(i32 46, float %5842, float %6007, float %6019)  ; FMad(a,b,c)
  %6021 = fadd fast float %6020, %6008
  %6022 = fmul fast float %6010, %5840
  %6023 = call float @dx.op.tertiary.f32(i32 46, float %5841, float %6011, float %6022)  ; FMad(a,b,c)
  %6024 = call float @dx.op.tertiary.f32(i32 46, float %5842, float %6012, float %6023)  ; FMad(a,b,c)
  %6025 = fadd fast float %6024, %6013
  %6026 = fcmp fast oge float %6017, 1.000000e+00
  %6027 = fcmp fast oge float %6021, 1.000000e+00
  %6028 = or i1 %6026, %6027
  %6029 = fcmp fast olt float %6017, 0.000000e+00
  %6030 = fcmp fast olt float %6021, 0.000000e+00
  %6031 = or i1 %6029, %6030
  %6032 = or i1 %6028, %6031
  br i1 %6032, label %6392, label %6033, !dx.controlflow.hints !107

; <label>:6033                                    ; preds = %5998
  %6034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6035 = extractvalue %dx.types.CBufRet.f32 %6034, 0
  %6036 = extractvalue %dx.types.CBufRet.f32 %6034, 1
  %6037 = extractvalue %dx.types.CBufRet.f32 %6034, 2
  %6038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6039 = extractvalue %dx.types.CBufRet.i32 %6038, 2
  %6040 = uitofp i32 %6039 to float
  %6041 = extractvalue %dx.types.CBufRet.i32 %6038, 3
  %6042 = uitofp i32 %6041 to float
  %6043 = extractvalue %dx.types.CBufRet.f32 %6034, 3
  %6044 = fmul fast float %6043, 2.000000e+00
  %6045 = fsub fast float %6017, %6035
  %6046 = fsub fast float %6021, %6036
  %6047 = fmul fast float %6044, %6045
  %6048 = fmul fast float %6044, %6046
  %6049 = fdiv fast float 1.000000e+00, %5823
  %6050 = fmul fast float %6048, %6049
  %6051 = call float @dx.op.unary.f32(i32 6, float %6050)  ; FAbs(value)
  %6052 = fmul fast float %6037, %5842
  %6053 = fmul fast float %6052, %6044
  %6054 = call float @dx.op.unary.f32(i32 6, float %6053)  ; FAbs(value)
  %6055 = call float @dx.op.unary.f32(i32 6, float %6047)  ; FAbs(value)
  %6056 = call float @dx.op.binary.f32(i32 35, float %6054, float %6051)  ; FMax(a,b)
  %6057 = call float @dx.op.binary.f32(i32 35, float %6055, float %6056)  ; FMax(a,b)
  %6058 = fmul fast float %6057, 2.000000e+00
  %6059 = call float @dx.op.unary.f32(i32 23, float %6058)  ; Log(value)
  %6060 = call float @dx.op.binary.f32(i32 35, float %6059, float %6040)  ; FMax(a,b)
  %6061 = call float @dx.op.unary.f32(i32 22, float %6060)  ; Frc(value)
  %6062 = fadd fast float %6061, 0xBFEA666660000000
  %6063 = fmul fast float %6062, 8.000000e+00
  %6064 = call float @dx.op.unary.f32(i32 7, float %6063)  ; Saturate(value)
  %6065 = call float @dx.op.unary.f32(i32 27, float %6060)  ; Round_ni(value)
  %6066 = fadd fast float %6065, %6064
  %6067 = call float @dx.op.binary.f32(i32 36, float %6066, float %6042)  ; FMin(a,b)
  %6068 = call float @dx.op.unary.f32(i32 27, float %6067)  ; Round_ni(value)
  %6069 = fsub fast float -0.000000e+00, %6068
  %6070 = call float @dx.op.unary.f32(i32 21, float %6069)  ; Exp(value)
  %6071 = fmul fast float %6070, %6044
  %6072 = fmul fast float %6071, %6017
  %6073 = fmul fast float %6071, %6021
  %6074 = fmul fast float %6072, 2.500000e-01
  %6075 = fmul fast float %6073, 2.500000e-01
  %6076 = fadd fast float %6074, 5.000000e-01
  %6077 = fadd fast float %6075, 5.000000e-01
  %6078 = fsub fast float %6042, %6040
  %6079 = fptoui float %6078 to i32
  %6080 = add i32 %6079, 320
  %6081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %6080)  ; CBufferLoadLegacy(handle,regIndex)
  %6082 = extractvalue %dx.types.CBufRet.f32 %6081, 0
  %6083 = extractvalue %dx.types.CBufRet.f32 %6081, 1
  %6084 = fcmp fast une float %6067, %6042
  %6085 = fsub fast float %6017, %6082
  %6086 = fsub fast float %6021, %6083
  %6087 = call float @dx.op.unary.f32(i32 6, float %6085)  ; FAbs(value)
  %6088 = call float @dx.op.unary.f32(i32 6, float %6086)  ; FAbs(value)
  %6089 = fmul fast float %6087, %6071
  %6090 = fmul fast float %6088, %6071
  %6091 = fcmp fast olt float %6089, 1.000000e+00
  %6092 = fcmp fast olt float %6090, 1.000000e+00
  %6093 = and i1 %6091, %6092
  %6094 = or i1 %6084, %6093
  br i1 %6094, label %6095, label %6392, !dx.controlflow.hints !108

; <label>:6095                                    ; preds = %6033
  %6096 = fmul fast float %6073, 5.000000e-01
  %6097 = fmul fast float %6072, 5.000000e-01
  %6098 = fadd fast float %6096, 5.000000e-01
  %6099 = fadd fast float %6097, 5.000000e-01
  %6100 = sitofp i32 %6039 to float
  %6101 = fsub fast float %6067, %6100
  %6102 = call float @dx.op.unary.f32(i32 27, float %6101)  ; Round_ni(value)
  %6103 = call float @dx.op.unary.f32(i32 22, float %6067)  ; Frc(value)
  %6104 = call float @dx.op.unary.f32(i32 22, float %6099)  ; Frc(value)
  %6105 = call float @dx.op.unary.f32(i32 22, float %6098)  ; Frc(value)
  %6106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6104, float %6105, float %6102, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6107 = extractvalue %dx.types.ResRet.f32 %6106, 0
  %6108 = extractvalue %dx.types.ResRet.f32 %6106, 1
  %6109 = extractvalue %dx.types.ResRet.f32 %6106, 2
  %6110 = extractvalue %dx.types.ResRet.f32 %6106, 3
  %6111 = fcmp fast ogt float %6103, 0.000000e+00
  br i1 %6111, label %6112, label %6133, !dx.controlflow.hints !109

; <label>:6112                                    ; preds = %6095
  %6113 = fadd fast float %6102, 1.000000e+00
  %6114 = call float @dx.op.unary.f32(i32 22, float %6076)  ; Frc(value)
  %6115 = call float @dx.op.unary.f32(i32 22, float %6077)  ; Frc(value)
  %6116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6114, float %6115, float %6113, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6117 = extractvalue %dx.types.ResRet.f32 %6116, 0
  %6118 = extractvalue %dx.types.ResRet.f32 %6116, 1
  %6119 = extractvalue %dx.types.ResRet.f32 %6116, 2
  %6120 = extractvalue %dx.types.ResRet.f32 %6116, 3
  %6121 = fsub fast float %6117, %6107
  %6122 = fsub fast float %6118, %6108
  %6123 = fsub fast float %6119, %6109
  %6124 = fsub fast float %6120, %6110
  %6125 = fmul fast float %6121, %6103
  %6126 = fmul fast float %6122, %6103
  %6127 = fmul fast float %6123, %6103
  %6128 = fmul fast float %6124, %6103
  %6129 = fadd fast float %6125, %6107
  %6130 = fadd fast float %6126, %6108
  %6131 = fadd fast float %6127, %6109
  %6132 = fadd fast float %6128, %6110
  br label %6133

; <label>:6133                                    ; preds = %6112, %6095
  %6134 = phi float [ %6129, %6112 ], [ %6107, %6095 ]
  %6135 = phi float [ %6130, %6112 ], [ %6108, %6095 ]
  %6136 = phi float [ %6131, %6112 ], [ %6109, %6095 ]
  %6137 = phi float [ %6132, %6112 ], [ %6110, %6095 ]
  %6138 = fadd fast float %6134, -5.000000e-01
  %6139 = fadd fast float %6136, -5.000000e-01
  %6140 = fmul fast float %6138, 0xBFD5555560000000
  %6141 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6139, float %6140)  ; FMad(a,b,c)
  %6142 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6135, float 0.000000e+00)  ; FMad(a,b,c)
  %6143 = fadd fast float %6142, %6137
  %6144 = fmul fast float %6138, -7.500000e-01
  %6145 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6139, float %6144)  ; FMad(a,b,c)
  %6146 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6135, float 0.000000e+00)  ; FMad(a,b,c)
  %6147 = fadd fast float %6146, %6137
  %6148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6149 = extractvalue %dx.types.CBufRet.f32 %6148, 0
  %6150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6151 = extractvalue %dx.types.CBufRet.f32 %6150, 0
  %6152 = extractvalue %dx.types.CBufRet.f32 %6150, 1
  %6153 = extractvalue %dx.types.CBufRet.f32 %6150, 2
  %6154 = extractvalue %dx.types.CBufRet.f32 %6150, 3
  %6155 = fsub fast float %6151, %6141
  %6156 = fsub fast float %6152, %6143
  %6157 = fsub fast float %6153, %6145
  %6158 = fsub fast float %6154, %6147
  %6159 = fmul fast float %6155, %6149
  %6160 = fmul fast float %6156, %6149
  %6161 = fmul fast float %6157, %6149
  %6162 = fmul fast float %6158, %6149
  %6163 = fadd fast float %6159, %6141
  %6164 = fadd fast float %6160, %6143
  %6165 = fadd fast float %6161, %6145
  %6166 = fadd fast float %6162, %6147
  %6167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6168 = extractvalue %dx.types.ResRet.i32 %6167, 0
  %6169 = and i32 %6168, 536870911
  %6170 = uitofp i32 %6169 to float
  %6171 = fmul fast float %6170, %6017
  %6172 = fmul fast float %6170, %6021
  %6173 = fptoui float %6171 to i32
  %6174 = fptoui float %6172 to i32
  %6175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6176 = extractvalue %dx.types.ResRet.i32 %6175, 0
  %6177 = and i32 %6176, 31
  %6178 = lshr i32 %6173, %6177
  %6179 = lshr i32 %6174, %6177
  %6180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6181 = extractvalue %dx.types.ResRet.i32 %6180, 0
  %6182 = and i32 %6181, 31
  %6183 = shl i32 1, %6182
  %6184 = call i32 @dx.op.binary.i32(i32 40, i32 %6183, i32 4)  ; UMin(a,b)
  %6185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6186 = extractvalue %dx.types.ResRet.i32 %6185, 0
  %6187 = extractvalue %dx.types.ResRet.i32 %6185, 1
  %6188 = icmp eq i32 %6184, 0
  br i1 %6188, label %6230, label %6189

; <label>:6189                                    ; preds = %6133
  br label %6190

; <label>:6190                                    ; preds = %6218, %6189
  %6191 = phi i32 [ %6221, %6218 ], [ 0, %6189 ]
  %6192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6193 = extractvalue %dx.types.ResRet.i32 %6192, 0
  %6194 = lshr i32 %6193, 16
  %6195 = and i32 %6194, 31
  %6196 = shl i32 %6179, %6195
  %6197 = add i32 %6196, %6178
  %6198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6199 = extractvalue %dx.types.ResRet.i32 %6198, 0
  %6200 = and i32 %6199, 31
  %6201 = shl i32 %6197, %6200
  %6202 = add i32 %6201, %6191
  %6203 = shl i32 %6202, 2
  %6204 = add i32 %6203, 32
  %6205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6204, i32 undef)  ; BufferLoad(srv,index,wot)
  %6206 = extractvalue %dx.types.ResRet.i32 %6205, 0
  %6207 = icmp slt i32 %6206, 0
  %6208 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6191
  %6209 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6191
  %6210 = bitcast float* %6208 to i32*
  %6211 = bitcast float* %6209 to i32*
  br i1 %6207, label %6212, label %6218

; <label>:6212                                    ; preds = %6190
  %6213 = and i32 %6206, 1073741823
  %6214 = add nuw nsw i32 %6213, 20
  %6215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6214, i32 undef)  ; BufferLoad(srv,index,wot)
  %6216 = extractvalue %dx.types.ResRet.i32 %6215, 0
  %6217 = extractvalue %dx.types.ResRet.i32 %6215, 1
  br label %6218

; <label>:6218                                    ; preds = %6212, %6190
  %6219 = phi i32 [ %6216, %6212 ], [ %6186, %6190 ]
  %6220 = phi i32 [ %6217, %6212 ], [ %6187, %6190 ]
  store i32 %6219, i32* %6210, align 4
  store i32 %6220, i32* %6211, align 4
  %6221 = add nuw i32 %6191, 1
  %6222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6223 = extractvalue %dx.types.CBufRet.i32 %6222, 2
  %6224 = icmp eq i32 %6223, 0
  %6225 = icmp ugt i32 %6206, -1073741825
  %6226 = and i1 %6225, %6224
  %6227 = icmp ult i32 %6221, %6184
  %6228 = and i1 %6226, %6227
  br i1 %6228, label %6190, label %6229

; <label>:6229                                    ; preds = %6218
  br label %6230

; <label>:6230                                    ; preds = %6229, %6133
  %6231 = phi i32 [ 0, %6133 ], [ %6221, %6229 ]
  %6232 = extractvalue %dx.types.CBufRet.f32 %5995, 2
  %6233 = fptoui float %6232 to i32
  %6234 = icmp eq i32 %6233, 0
  br i1 %6234, label %6286, label %6235

; <label>:6235                                    ; preds = %6230
  br label %6236

; <label>:6236                                    ; preds = %6281, %6235
  %6237 = phi i32 [ %6282, %6281 ], [ %6231, %6235 ]
  %6238 = phi i32 [ %6283, %6281 ], [ 0, %6235 ]
  %6239 = lshr i32 %6238, 2
  %6240 = and i32 %6238, 3
  %6241 = add nuw nsw i32 %6239, 83
  %6242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 %6241)  ; CBufferLoadLegacy(handle,regIndex)
  %6243 = extractvalue %dx.types.CBufRet.i32 %6242, 0
  %6244 = extractvalue %dx.types.CBufRet.i32 %6242, 1
  %6245 = extractvalue %dx.types.CBufRet.i32 %6242, 2
  %6246 = extractvalue %dx.types.CBufRet.i32 %6242, 3
  %6247 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 0
  store i32 %6243, i32* %6247, align 4
  %6248 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 1
  store i32 %6244, i32* %6248, align 4
  %6249 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 2
  store i32 %6245, i32* %6249, align 4
  %6250 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 3
  store i32 %6246, i32* %6250, align 4
  %6251 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 %6240
  %6252 = load i32, i32* %6251, align 4, !tbaa !110, !noalias !114
  %6253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6254 = extractvalue %dx.types.ResRet.i32 %6253, 0
  %6255 = lshr i32 %6254, 16
  %6256 = and i32 %6255, 31
  %6257 = shl i32 %6179, %6256
  %6258 = add i32 %6257, %6178
  %6259 = shl i32 %6258, 2
  %6260 = add i32 %6259, %6252
  %6261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6260, i32 undef)  ; BufferLoad(srv,index,wot)
  %6262 = extractvalue %dx.types.ResRet.i32 %6261, 0
  %6263 = icmp eq i32 %6262, 0
  br i1 %6263, label %6281, label %6264

; <label>:6264                                    ; preds = %6236
  %6265 = icmp slt i32 %6262, 0
  %6266 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6237
  %6267 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6237
  %6268 = bitcast float* %6266 to i32*
  %6269 = bitcast float* %6267 to i32*
  br i1 %6265, label %6270, label %6277

; <label>:6270                                    ; preds = %6264
  %6271 = and i32 %6262, 1073741823
  %6272 = add i32 %6252, 20
  %6273 = add i32 %6272, %6271
  %6274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6273, i32 undef)  ; BufferLoad(srv,index,wot)
  %6275 = extractvalue %dx.types.ResRet.i32 %6274, 0
  %6276 = extractvalue %dx.types.ResRet.i32 %6274, 1
  br label %6277

; <label>:6277                                    ; preds = %6270, %6264
  %6278 = phi i32 [ %6275, %6270 ], [ %6186, %6264 ]
  %6279 = phi i32 [ %6276, %6270 ], [ %6187, %6264 ]
  store i32 %6278, i32* %6268, align 4
  store i32 %6279, i32* %6269, align 4
  %6280 = add i32 %6237, 1
  br label %6281

; <label>:6281                                    ; preds = %6277, %6236
  %6282 = phi i32 [ %6237, %6236 ], [ %6280, %6277 ]
  %6283 = add nuw i32 %6238, 1
  %6284 = icmp eq i32 %6283, %6233
  br i1 %6284, label %6285, label %6236

; <label>:6285                                    ; preds = %6281
  br label %6286

; <label>:6286                                    ; preds = %6285, %6230
  %6287 = phi i32 [ %6231, %6230 ], [ %6282, %6285 ]
  %6288 = icmp eq i32 %6287, 1
  %6289 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 0
  %6290 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 0
  br i1 %6288, label %6291, label %6294

; <label>:6291                                    ; preds = %6286
  %6292 = load float, float* %6289, align 4
  %6293 = load float, float* %6290, align 4
  br label %6321

; <label>:6294                                    ; preds = %6286
  %6295 = load float, float* %6289, align 4
  %6296 = load float, float* %6290, align 4
  %6297 = fdiv fast float 1.000000e+00, %6296
  %6298 = fsub fast float %6295, %6297
  %6299 = icmp ugt i32 %6287, 1
  br i1 %6299, label %6300, label %6316

; <label>:6300                                    ; preds = %6294
  br label %6301

; <label>:6301                                    ; preds = %6301, %6300
  %6302 = phi float [ %6311, %6301 ], [ %6298, %6300 ]
  %6303 = phi float [ %6312, %6301 ], [ %6295, %6300 ]
  %6304 = phi i32 [ %6313, %6301 ], [ 1, %6300 ]
  %6305 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6304
  %6306 = load float, float* %6305, align 4
  %6307 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6304
  %6308 = load float, float* %6307, align 4
  %6309 = fdiv fast float 1.000000e+00, %6308
  %6310 = fsub fast float %6306, %6309
  %6311 = call float @dx.op.binary.f32(i32 36, float %6302, float %6310)  ; FMin(a,b)
  %6312 = call float @dx.op.binary.f32(i32 35, float %6303, float %6306)  ; FMax(a,b)
  %6313 = add nuw i32 %6304, 1
  %6314 = icmp eq i32 %6313, %6287
  br i1 %6314, label %6315, label %6301

; <label>:6315                                    ; preds = %6301
  br label %6316

; <label>:6316                                    ; preds = %6315, %6294
  %6317 = phi float [ %6298, %6294 ], [ %6311, %6315 ]
  %6318 = phi float [ %6295, %6294 ], [ %6312, %6315 ]
  %6319 = fsub fast float %6318, %6317
  %6320 = fdiv fast float 1.000000e+00, %6319
  br label %6321

; <label>:6321                                    ; preds = %6316, %6291
  %6322 = phi float [ %6292, %6291 ], [ %6318, %6316 ]
  %6323 = phi float [ %6293, %6291 ], [ %6320, %6316 ]
  %6324 = fadd fast float %6025, %6322
  %6325 = fmul fast float %6324, %6323
  %6326 = call float @dx.op.unary.f32(i32 7, float %6325)  ; Saturate(value)
  %6327 = fmul fast float %6326, 2.000000e+00
  %6328 = fsub fast float 1.000000e+00, %6327
  %6329 = fmul fast float %6163, %6163
  %6330 = fsub fast float %6164, %6329
  %6331 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6330)  ; FMax(a,b)
  %6332 = fdiv fast float 1.000000e+00, %6331
  %6333 = fmul fast float %6164, %6163
  %6334 = fsub fast float %6165, %6333
  %6335 = fsub fast float %6328, %6163
  %6336 = fmul fast float %6328, %6328
  %6337 = fsub fast float %6336, %6164
  %6338 = fmul fast float %6332, %6334
  %6339 = fmul fast float %6338, %6335
  %6340 = fsub fast float %6337, %6339
  %6341 = fmul fast float %6164, %6164
  %6342 = fsub fast float %6166, %6341
  %6343 = fmul fast float %6334, %6334
  %6344 = fmul fast float %6343, %6332
  %6345 = fsub fast float %6342, %6344
  %6346 = fdiv fast float %6340, %6345
  %6347 = fmul fast float %6346, %6334
  %6348 = fsub fast float %6335, %6347
  %6349 = fmul fast float %6348, %6332
  %6350 = fmul fast float %6349, %6163
  %6351 = fsub fast float 1.000000e+00, %6350
  %6352 = fmul fast float %6346, %6164
  %6353 = fsub fast float %6351, %6352
  %6354 = fmul fast float %6349, %6349
  %6355 = fmul fast float %6346, 4.000000e+00
  %6356 = fmul fast float %6355, %6353
  %6357 = fsub fast float %6354, %6356
  %6358 = call float @dx.op.unary.f32(i32 24, float %6357)  ; Sqrt(value)
  %6359 = fcmp fast oge float %6349, 0.000000e+00
  %6360 = fsub fast float -0.000000e+00, %6358
  %6361 = select i1 %6359, float %6360, float %6358
  %6362 = fsub fast float %6361, %6349
  %6363 = fdiv fast float %6362, %6346
  %6364 = fdiv fast float %6353, %6362
  %6365 = fmul fast float %6363, 5.000000e-01
  %6366 = fmul fast float %6364, 2.000000e+00
  %6367 = select i1 %6359, float %6365, float %6366
  %6368 = select i1 %6359, float %6366, float %6365
  %6369 = call float @dx.op.binary.f32(i32 35, float %6367, float %6368)  ; FMax(a,b)
  %6370 = call float @dx.op.binary.f32(i32 36, float %6367, float %6368)  ; FMin(a,b)
  %6371 = fcmp fast ogt float %6328, %6369
  %6372 = fsub fast float %6328, %6370
  %6373 = fsub fast float %6328, %6369
  %6374 = fsub fast float %6369, %6370
  %6375 = select i1 %6371, float %6373, float %6374
  %6376 = fmul float %6372, %6375
  %6377 = select i1 %6371, float %6370, float %6328
  %6378 = fcmp fast ogt float %6328, %6370
  %6379 = fmul fast float %6377, %6369
  %6380 = fadd fast float %6377, %6369
  %6381 = fmul fast float %6380, %6163
  %6382 = fadd fast float %6379, %6164
  %6383 = fsub fast float %6382, %6381
  %6384 = fdiv fast float %6383, %6376
  %6385 = select i1 %6378, float %6384, float 0.000000e+00
  %6386 = fsub fast float 1.000000e+00, %6385
  %6387 = select i1 %6371, float %6386, float %6385
  %6388 = call float @dx.op.unary.f32(i32 7, float %6387)  ; Saturate(value)
  %6389 = extractvalue %dx.types.CBufRet.f32 %6148, 3
  %6390 = fmul fast float %6389, %6388
  %6391 = fsub fast float 1.000000e+00, %6390
  br label %6392

; <label>:6392                                    ; preds = %6321, %6033, %5998, %5994, %5958
  %6393 = phi float [ 1.000000e+00, %5958 ], [ %6391, %6321 ], [ 1.000000e+00, %5998 ], [ 1.000000e+00, %6033 ], [ 1.000000e+00, %5994 ]
  %6394 = fcmp fast ogt float %5990, 0.000000e+00
  br i1 %6394, label %6395, label %6559, !dx.controlflow.hints !123

; <label>:6395                                    ; preds = %6392
  %6396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6397 = extractvalue %dx.types.CBufRet.f32 %6396, 2
  %6398 = fadd fast float %6397, %5871
  %6399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6400 = extractvalue %dx.types.CBufRet.f32 %6399, 2
  %6401 = extractvalue %dx.types.CBufRet.f32 %6399, 3
  %6402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6403 = extractvalue %dx.types.CBufRet.f32 %6402, 2
  %6404 = call float @dx.op.binary.f32(i32 35, float %6398, float 0.000000e+00)  ; FMax(a,b)
  %6405 = fadd fast float %6404, 0x3F10000000000000
  %6406 = fcmp fast oeq float %6403, 0.000000e+00
  br i1 %6406, label %6407, label %6474

; <label>:6407                                    ; preds = %6395
  %6408 = extractvalue %dx.types.CBufRet.f32 %6399, 1
  %6409 = extractvalue %dx.types.CBufRet.f32 %6399, 0
  %6410 = fmul fast float %6409, %5889
  %6411 = fmul fast float %6408, %5890
  %6412 = fadd fast float %6410, 5.000000e-01
  %6413 = call float @dx.op.unary.f32(i32 27, float %6412)  ; Round_ni(value)
  %6414 = fadd fast float %6411, 5.000000e-01
  %6415 = call float @dx.op.unary.f32(i32 27, float %6414)  ; Round_ni(value)
  %6416 = fsub fast float %6412, %6413
  %6417 = fsub fast float %6414, %6415
  %6418 = fadd fast float %6413, -5.000000e-01
  %6419 = fadd fast float %6415, -5.000000e-01
  %6420 = fmul fast float %6416, 2.000000e+00
  %6421 = fsub fast float 3.000000e+00, %6420
  %6422 = fadd fast float %6420, 1.000000e+00
  %6423 = fsub fast float 2.000000e+00, %6416
  %6424 = bitcast float %6421 to i32
  %6425 = sub nsw i32 2129859010, %6424
  %6426 = bitcast i32 %6425 to float
  %6427 = fmul fast float %6426, %6423
  %6428 = fadd fast float %6427, -1.000000e+00
  %6429 = bitcast float %6422 to i32
  %6430 = sub nsw i32 2129859010, %6429
  %6431 = bitcast i32 %6430 to float
  %6432 = fmul fast float %6431, %6416
  %6433 = fadd fast float %6432, 1.000000e+00
  %6434 = fmul fast float %6417, 2.000000e+00
  %6435 = fsub fast float 3.000000e+00, %6434
  %6436 = fadd fast float %6434, 1.000000e+00
  %6437 = fsub fast float 2.000000e+00, %6417
  %6438 = bitcast float %6435 to i32
  %6439 = sub nsw i32 2129859010, %6438
  %6440 = bitcast i32 %6439 to float
  %6441 = fmul fast float %6440, %6437
  %6442 = fadd fast float %6441, -1.000000e+00
  %6443 = bitcast float %6436 to i32
  %6444 = sub nsw i32 2129859010, %6443
  %6445 = bitcast i32 %6444 to float
  %6446 = fmul fast float %6445, %6417
  %6447 = fadd fast float %6446, 1.000000e+00
  %6448 = fadd fast float %6428, %6418
  %6449 = fmul fast float %6448, %6400
  %6450 = fadd fast float %6442, %6419
  %6451 = fmul fast float %6450, %6401
  %6452 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6449, float %6451, float undef, float undef, i32 0, i32 0, i32 undef, float %6405)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6453 = extractvalue %dx.types.ResRet.f32 %6452, 0
  %6454 = fmul fast float %6453, %6421
  %6455 = fadd fast float %6433, %6418
  %6456 = fmul fast float %6455, %6400
  %6457 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6456, float %6451, float undef, float undef, i32 0, i32 0, i32 undef, float %6405)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6458 = extractvalue %dx.types.ResRet.f32 %6457, 0
  %6459 = fmul fast float %6458, %6422
  %6460 = fadd fast float %6447, %6419
  %6461 = fmul fast float %6460, %6401
  %6462 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6449, float %6461, float undef, float undef, i32 0, i32 0, i32 undef, float %6405)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6463 = extractvalue %dx.types.ResRet.f32 %6462, 0
  %6464 = fmul fast float %6463, %6421
  %6465 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6456, float %6461, float undef, float undef, i32 0, i32 0, i32 undef, float %6405)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6466 = extractvalue %dx.types.ResRet.f32 %6465, 0
  %6467 = fmul fast float %6466, %6422
  %6468 = fadd fast float %6467, %6464
  %6469 = fmul fast float %6468, %6436
  %6470 = fadd fast float %6459, %6454
  %6471 = fmul fast float %6470, %6435
  %6472 = fadd fast float %6471, %6469
  %6473 = fmul fast float %6472, 6.250000e-02
  br label %6559

; <label>:6474                                    ; preds = %6395
  %6475 = fmul fast float %286, 0x401921FB60000000
  %6476 = call float @dx.op.unary.f32(i32 13, float %6475)  ; Sin(value)
  %6477 = call float @dx.op.unary.f32(i32 12, float %6475)  ; Cos(value)
  %6478 = fsub fast float -0.000000e+00, %6476
  br label %6479

; <label>:6479                                    ; preds = %6528, %6474
  %6480 = phi float [ 0.000000e+00, %6474 ], [ %6523, %6528 ]
  %6481 = phi float [ 0.000000e+00, %6474 ], [ %6525, %6528 ]
  %6482 = phi i32 [ 0, %6474 ], [ %6529, %6528 ]
  %6483 = mul i32 %6482, 2
  %6484 = add i32 0, %6483
  %6485 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6484
  %6486 = load float, float* %6485, align 4
  %6487 = mul i32 %6482, 2
  %6488 = add i32 1, %6487
  %6489 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6488
  %6490 = load float, float* %6489, align 4
  %6491 = fmul fast float %6486, %6477
  %6492 = call float @dx.op.tertiary.f32(i32 46, float %6490, float %6478, float %6491)  ; FMad(a,b,c)
  %6493 = fmul fast float %6486, %6476
  %6494 = call float @dx.op.tertiary.f32(i32 46, float %6490, float %6477, float %6493)  ; FMad(a,b,c)
  %6495 = fmul fast float %6492, %6403
  %6496 = fmul fast float %6494, %6403
  %6497 = fadd fast float %6495, %5889
  %6498 = fadd fast float %6496, %5890
  %6499 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %56, float %6497, float %6498, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6500 = extractvalue %dx.types.ResRet.f32 %6499, 0
  %6501 = extractvalue %dx.types.ResRet.f32 %6499, 1
  %6502 = extractvalue %dx.types.ResRet.f32 %6499, 2
  %6503 = extractvalue %dx.types.ResRet.f32 %6499, 3
  %6504 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 0
  store float %6500, float* %6504, align 4
  %6505 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 1
  store float %6501, float* %6505, align 4
  %6506 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 2
  store float %6502, float* %6506, align 4
  %6507 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 3
  store float %6503, float* %6507, align 4
  %6508 = fsub fast float %6500, %6405
  %6509 = fcmp fast olt float %6508, 0.000000e+00
  %6510 = select i1 %6509, float 0.000000e+00, float 1.000000e+00
  %6511 = fadd fast float %6510, %6480
  %6512 = fmul fast float %6510, %6508
  %6513 = fadd fast float %6512, %6481
  br label %6514

; <label>:6514                                    ; preds = %6514, %6479
  %6515 = phi i32 [ 1, %6479 ], [ %6526, %6514 ]
  %6516 = phi float [ %6513, %6479 ], [ %6525, %6514 ]
  %6517 = phi float [ %6511, %6479 ], [ %6523, %6514 ]
  %6518 = getelementptr [4 x float], [4 x float]* %109, i32 0, i32 %6515
  %6519 = load float, float* %6518, align 4, !tbaa !124, !noalias !114
  %6520 = fsub fast float %6519, %6405
  %6521 = fcmp fast olt float %6520, 0.000000e+00
  %6522 = select i1 %6521, float 0.000000e+00, float 1.000000e+00
  %6523 = fadd fast float %6522, %6517
  %6524 = fmul fast float %6522, %6520
  %6525 = fadd fast float %6524, %6516
  %6526 = add nuw nsw i32 %6515, 1
  %6527 = icmp eq i32 %6526, 4
  br i1 %6527, label %6528, label %6514, !llvm.loop !126

; <label>:6528                                    ; preds = %6514
  %6529 = add nuw nsw i32 %6482, 1
  %6530 = icmp eq i32 %6529, 8
  br i1 %6530, label %6531, label %6479, !llvm.loop !127

; <label>:6531                                    ; preds = %6528
  %6532 = fdiv fast float 1.000000e+00, %6523
  %6533 = fmul fast float %6532, %6525
  %6534 = fdiv fast float 1.000000e+00, %6405
  %6535 = fmul fast float %6533, %6534
  %6536 = call float @dx.op.unary.f32(i32 7, float %6535)  ; Saturate(value)
  %6537 = call float @dx.op.binary.f32(i32 35, float %6536, float 0.000000e+00)  ; FMax(a,b)
  %6538 = fmul fast float %6523, 3.125000e-02
  %6539 = call float @dx.op.unary.f32(i32 7, float %6538)  ; Saturate(value)
  %6540 = fmul fast float %6539, 2.000000e+00
  %6541 = fadd fast float %6540, -1.000000e+00
  %6542 = fcmp fast ogt float %6541, 0.000000e+00
  %6543 = fcmp fast olt float %6541, 0.000000e+00
  %6544 = zext i1 %6542 to i32
  %6545 = zext i1 %6543 to i32
  %6546 = sub nsw i32 %6544, %6545
  %6547 = sitofp i32 %6546 to float
  %6548 = fmul fast float %6547, %6541
  %6549 = fsub fast float 1.000000e+00, %6548
  %6550 = fmul fast float %6549, %6549
  %6551 = fmul fast float %6550, %6549
  %6552 = fsub fast float %6549, %6551
  %6553 = fmul fast float %6552, %6537
  %6554 = fsub fast float 1.000000e+00, %6551
  %6555 = fsub fast float %6554, %6553
  %6556 = fmul fast float %6547, 5.000000e-01
  %6557 = fmul fast float %6556, %6555
  %6558 = fsub fast float 5.000000e-01, %6557
  br label %6559

; <label>:6559                                    ; preds = %6531, %6407, %6392
  %6560 = phi float [ 1.000000e+00, %6392 ], [ %6473, %6407 ], [ %6558, %6531 ]
  %6561 = fcmp fast ogt float %5988, 0.000000e+00
  br i1 %6561, label %6562, label %6726, !dx.controlflow.hints !128

; <label>:6562                                    ; preds = %6559
  %6563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6564 = extractvalue %dx.types.CBufRet.f32 %6563, 1
  %6565 = fadd fast float %6564, %5871
  %6566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6567 = extractvalue %dx.types.CBufRet.f32 %6566, 2
  %6568 = extractvalue %dx.types.CBufRet.f32 %6566, 3
  %6569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6570 = extractvalue %dx.types.CBufRet.f32 %6569, 1
  %6571 = call float @dx.op.binary.f32(i32 35, float %6565, float 0.000000e+00)  ; FMax(a,b)
  %6572 = fadd fast float %6571, 0x3F10000000000000
  %6573 = fcmp fast oeq float %6570, 0.000000e+00
  br i1 %6573, label %6574, label %6641

; <label>:6574                                    ; preds = %6562
  %6575 = extractvalue %dx.types.CBufRet.f32 %6566, 1
  %6576 = extractvalue %dx.types.CBufRet.f32 %6566, 0
  %6577 = fmul fast float %6576, %5881
  %6578 = fmul fast float %6575, %5882
  %6579 = fadd fast float %6577, 5.000000e-01
  %6580 = call float @dx.op.unary.f32(i32 27, float %6579)  ; Round_ni(value)
  %6581 = fadd fast float %6578, 5.000000e-01
  %6582 = call float @dx.op.unary.f32(i32 27, float %6581)  ; Round_ni(value)
  %6583 = fsub fast float %6579, %6580
  %6584 = fsub fast float %6581, %6582
  %6585 = fadd fast float %6580, -5.000000e-01
  %6586 = fadd fast float %6582, -5.000000e-01
  %6587 = fmul fast float %6583, 2.000000e+00
  %6588 = fsub fast float 3.000000e+00, %6587
  %6589 = fadd fast float %6587, 1.000000e+00
  %6590 = fsub fast float 2.000000e+00, %6583
  %6591 = bitcast float %6588 to i32
  %6592 = sub nsw i32 2129859010, %6591
  %6593 = bitcast i32 %6592 to float
  %6594 = fmul fast float %6593, %6590
  %6595 = fadd fast float %6594, -1.000000e+00
  %6596 = bitcast float %6589 to i32
  %6597 = sub nsw i32 2129859010, %6596
  %6598 = bitcast i32 %6597 to float
  %6599 = fmul fast float %6598, %6583
  %6600 = fadd fast float %6599, 1.000000e+00
  %6601 = fmul fast float %6584, 2.000000e+00
  %6602 = fsub fast float 3.000000e+00, %6601
  %6603 = fadd fast float %6601, 1.000000e+00
  %6604 = fsub fast float 2.000000e+00, %6584
  %6605 = bitcast float %6602 to i32
  %6606 = sub nsw i32 2129859010, %6605
  %6607 = bitcast i32 %6606 to float
  %6608 = fmul fast float %6607, %6604
  %6609 = fadd fast float %6608, -1.000000e+00
  %6610 = bitcast float %6603 to i32
  %6611 = sub nsw i32 2129859010, %6610
  %6612 = bitcast i32 %6611 to float
  %6613 = fmul fast float %6612, %6584
  %6614 = fadd fast float %6613, 1.000000e+00
  %6615 = fadd fast float %6595, %6585
  %6616 = fmul fast float %6615, %6567
  %6617 = fadd fast float %6609, %6586
  %6618 = fmul fast float %6617, %6568
  %6619 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6616, float %6618, float undef, float undef, i32 0, i32 0, i32 undef, float %6572)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6620 = extractvalue %dx.types.ResRet.f32 %6619, 0
  %6621 = fmul fast float %6620, %6588
  %6622 = fadd fast float %6600, %6585
  %6623 = fmul fast float %6622, %6567
  %6624 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6623, float %6618, float undef, float undef, i32 0, i32 0, i32 undef, float %6572)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6625 = extractvalue %dx.types.ResRet.f32 %6624, 0
  %6626 = fmul fast float %6625, %6589
  %6627 = fadd fast float %6614, %6586
  %6628 = fmul fast float %6627, %6568
  %6629 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6616, float %6628, float undef, float undef, i32 0, i32 0, i32 undef, float %6572)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6630 = extractvalue %dx.types.ResRet.f32 %6629, 0
  %6631 = fmul fast float %6630, %6588
  %6632 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6623, float %6628, float undef, float undef, i32 0, i32 0, i32 undef, float %6572)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6633 = extractvalue %dx.types.ResRet.f32 %6632, 0
  %6634 = fmul fast float %6633, %6589
  %6635 = fadd fast float %6634, %6631
  %6636 = fmul fast float %6635, %6603
  %6637 = fadd fast float %6626, %6621
  %6638 = fmul fast float %6637, %6602
  %6639 = fadd fast float %6638, %6636
  %6640 = fmul fast float %6639, 6.250000e-02
  br label %6726

; <label>:6641                                    ; preds = %6562
  %6642 = fmul fast float %286, 0x401921FB60000000
  %6643 = call float @dx.op.unary.f32(i32 13, float %6642)  ; Sin(value)
  %6644 = call float @dx.op.unary.f32(i32 12, float %6642)  ; Cos(value)
  %6645 = fsub fast float -0.000000e+00, %6643
  br label %6646

; <label>:6646                                    ; preds = %6695, %6641
  %6647 = phi float [ 0.000000e+00, %6641 ], [ %6690, %6695 ]
  %6648 = phi float [ 0.000000e+00, %6641 ], [ %6692, %6695 ]
  %6649 = phi i32 [ 0, %6641 ], [ %6696, %6695 ]
  %6650 = mul i32 %6649, 2
  %6651 = add i32 0, %6650
  %6652 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6651
  %6653 = load float, float* %6652, align 4
  %6654 = mul i32 %6649, 2
  %6655 = add i32 1, %6654
  %6656 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6655
  %6657 = load float, float* %6656, align 4
  %6658 = fmul fast float %6653, %6644
  %6659 = call float @dx.op.tertiary.f32(i32 46, float %6657, float %6645, float %6658)  ; FMad(a,b,c)
  %6660 = fmul fast float %6653, %6643
  %6661 = call float @dx.op.tertiary.f32(i32 46, float %6657, float %6644, float %6660)  ; FMad(a,b,c)
  %6662 = fmul fast float %6659, %6570
  %6663 = fmul fast float %6661, %6570
  %6664 = fadd fast float %6662, %5881
  %6665 = fadd fast float %6663, %5882
  %6666 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %56, float %6664, float %6665, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6667 = extractvalue %dx.types.ResRet.f32 %6666, 0
  %6668 = extractvalue %dx.types.ResRet.f32 %6666, 1
  %6669 = extractvalue %dx.types.ResRet.f32 %6666, 2
  %6670 = extractvalue %dx.types.ResRet.f32 %6666, 3
  %6671 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 0
  store float %6667, float* %6671, align 4
  %6672 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 1
  store float %6668, float* %6672, align 4
  %6673 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 2
  store float %6669, float* %6673, align 4
  %6674 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 3
  store float %6670, float* %6674, align 4
  %6675 = fsub fast float %6667, %6572
  %6676 = fcmp fast olt float %6675, 0.000000e+00
  %6677 = select i1 %6676, float 0.000000e+00, float 1.000000e+00
  %6678 = fadd fast float %6677, %6647
  %6679 = fmul fast float %6677, %6675
  %6680 = fadd fast float %6679, %6648
  br label %6681

; <label>:6681                                    ; preds = %6681, %6646
  %6682 = phi i32 [ 1, %6646 ], [ %6693, %6681 ]
  %6683 = phi float [ %6680, %6646 ], [ %6692, %6681 ]
  %6684 = phi float [ %6678, %6646 ], [ %6690, %6681 ]
  %6685 = getelementptr [4 x float], [4 x float]* %108, i32 0, i32 %6682
  %6686 = load float, float* %6685, align 4, !tbaa !124, !noalias !114
  %6687 = fsub fast float %6686, %6572
  %6688 = fcmp fast olt float %6687, 0.000000e+00
  %6689 = select i1 %6688, float 0.000000e+00, float 1.000000e+00
  %6690 = fadd fast float %6689, %6684
  %6691 = fmul fast float %6689, %6687
  %6692 = fadd fast float %6691, %6683
  %6693 = add nuw nsw i32 %6682, 1
  %6694 = icmp eq i32 %6693, 4
  br i1 %6694, label %6695, label %6681, !llvm.loop !126

; <label>:6695                                    ; preds = %6681
  %6696 = add nuw nsw i32 %6649, 1
  %6697 = icmp eq i32 %6696, 8
  br i1 %6697, label %6698, label %6646, !llvm.loop !127

; <label>:6698                                    ; preds = %6695
  %6699 = fdiv fast float 1.000000e+00, %6690
  %6700 = fmul fast float %6699, %6692
  %6701 = fdiv fast float 1.000000e+00, %6572
  %6702 = fmul fast float %6700, %6701
  %6703 = call float @dx.op.unary.f32(i32 7, float %6702)  ; Saturate(value)
  %6704 = call float @dx.op.binary.f32(i32 35, float %6703, float 0.000000e+00)  ; FMax(a,b)
  %6705 = fmul fast float %6690, 3.125000e-02
  %6706 = call float @dx.op.unary.f32(i32 7, float %6705)  ; Saturate(value)
  %6707 = fmul fast float %6706, 2.000000e+00
  %6708 = fadd fast float %6707, -1.000000e+00
  %6709 = fcmp fast ogt float %6708, 0.000000e+00
  %6710 = fcmp fast olt float %6708, 0.000000e+00
  %6711 = zext i1 %6709 to i32
  %6712 = zext i1 %6710 to i32
  %6713 = sub nsw i32 %6711, %6712
  %6714 = sitofp i32 %6713 to float
  %6715 = fmul fast float %6714, %6708
  %6716 = fsub fast float 1.000000e+00, %6715
  %6717 = fmul fast float %6716, %6716
  %6718 = fmul fast float %6717, %6716
  %6719 = fsub fast float %6716, %6718
  %6720 = fmul fast float %6719, %6704
  %6721 = fsub fast float 1.000000e+00, %6718
  %6722 = fsub fast float %6721, %6720
  %6723 = fmul fast float %6714, 5.000000e-01
  %6724 = fmul fast float %6723, %6722
  %6725 = fsub fast float 5.000000e-01, %6724
  br label %6726

; <label>:6726                                    ; preds = %6698, %6574, %6559
  %6727 = phi float [ 1.000000e+00, %6559 ], [ %6640, %6574 ], [ %6725, %6698 ]
  %6728 = fcmp fast ogt float %5987, 0.000000e+00
  br i1 %6728, label %6729, label %7047, !dx.controlflow.hints !129

; <label>:6729                                    ; preds = %6726
  %6730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6731 = extractvalue %dx.types.CBufRet.f32 %6730, 0
  %6732 = fadd fast float %6731, %5871
  %6733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6734 = extractvalue %dx.types.CBufRet.f32 %6733, 2
  %6735 = extractvalue %dx.types.CBufRet.f32 %6733, 3
  %6736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6737 = extractvalue %dx.types.CBufRet.f32 %6736, 0
  %6738 = call float @dx.op.binary.f32(i32 35, float %6732, float 0.000000e+00)  ; FMax(a,b)
  %6739 = fadd fast float %6738, 0x3F10000000000000
  %6740 = fcmp fast oeq float %6737, 0.000000e+00
  br i1 %5874, label %6741, label %6894, !dx.controlflow.hints !130

; <label>:6741                                    ; preds = %6729
  br i1 %6740, label %6742, label %6809

; <label>:6742                                    ; preds = %6741
  %6743 = extractvalue %dx.types.CBufRet.f32 %6733, 1
  %6744 = extractvalue %dx.types.CBufRet.f32 %6733, 0
  %6745 = fmul fast float %6744, %5863
  %6746 = fmul fast float %6743, %5867
  %6747 = fadd fast float %6745, 5.000000e-01
  %6748 = call float @dx.op.unary.f32(i32 27, float %6747)  ; Round_ni(value)
  %6749 = fadd fast float %6746, 5.000000e-01
  %6750 = call float @dx.op.unary.f32(i32 27, float %6749)  ; Round_ni(value)
  %6751 = fsub fast float %6747, %6748
  %6752 = fsub fast float %6749, %6750
  %6753 = fadd fast float %6748, -5.000000e-01
  %6754 = fadd fast float %6750, -5.000000e-01
  %6755 = fmul fast float %6751, 2.000000e+00
  %6756 = fsub fast float 3.000000e+00, %6755
  %6757 = fadd fast float %6755, 1.000000e+00
  %6758 = fsub fast float 2.000000e+00, %6751
  %6759 = bitcast float %6756 to i32
  %6760 = sub nsw i32 2129859010, %6759
  %6761 = bitcast i32 %6760 to float
  %6762 = fmul fast float %6761, %6758
  %6763 = fadd fast float %6762, -1.000000e+00
  %6764 = bitcast float %6757 to i32
  %6765 = sub nsw i32 2129859010, %6764
  %6766 = bitcast i32 %6765 to float
  %6767 = fmul fast float %6766, %6751
  %6768 = fadd fast float %6767, 1.000000e+00
  %6769 = fmul fast float %6752, 2.000000e+00
  %6770 = fsub fast float 3.000000e+00, %6769
  %6771 = fadd fast float %6769, 1.000000e+00
  %6772 = fsub fast float 2.000000e+00, %6752
  %6773 = bitcast float %6770 to i32
  %6774 = sub nsw i32 2129859010, %6773
  %6775 = bitcast i32 %6774 to float
  %6776 = fmul fast float %6775, %6772
  %6777 = fadd fast float %6776, -1.000000e+00
  %6778 = bitcast float %6771 to i32
  %6779 = sub nsw i32 2129859010, %6778
  %6780 = bitcast i32 %6779 to float
  %6781 = fmul fast float %6780, %6752
  %6782 = fadd fast float %6781, 1.000000e+00
  %6783 = fadd fast float %6763, %6753
  %6784 = fmul fast float %6783, %6734
  %6785 = fadd fast float %6777, %6754
  %6786 = fmul fast float %6785, %6735
  %6787 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6784, float %6786, float undef, float undef, i32 0, i32 0, i32 undef, float %6739)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6788 = extractvalue %dx.types.ResRet.f32 %6787, 0
  %6789 = fmul fast float %6788, %6756
  %6790 = fadd fast float %6768, %6753
  %6791 = fmul fast float %6790, %6734
  %6792 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6791, float %6786, float undef, float undef, i32 0, i32 0, i32 undef, float %6739)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6793 = extractvalue %dx.types.ResRet.f32 %6792, 0
  %6794 = fmul fast float %6793, %6757
  %6795 = fadd fast float %6782, %6754
  %6796 = fmul fast float %6795, %6735
  %6797 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6784, float %6796, float undef, float undef, i32 0, i32 0, i32 undef, float %6739)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6798 = extractvalue %dx.types.ResRet.f32 %6797, 0
  %6799 = fmul fast float %6798, %6756
  %6800 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6791, float %6796, float undef, float undef, i32 0, i32 0, i32 undef, float %6739)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6801 = extractvalue %dx.types.ResRet.f32 %6800, 0
  %6802 = fmul fast float %6801, %6757
  %6803 = fadd fast float %6802, %6799
  %6804 = fmul fast float %6803, %6771
  %6805 = fadd fast float %6794, %6789
  %6806 = fmul fast float %6805, %6770
  %6807 = fadd fast float %6806, %6804
  %6808 = fmul fast float %6807, 6.250000e-02
  br label %7047

; <label>:6809                                    ; preds = %6741
  %6810 = fmul fast float %286, 0x401921FB60000000
  %6811 = call float @dx.op.unary.f32(i32 13, float %6810)  ; Sin(value)
  %6812 = call float @dx.op.unary.f32(i32 12, float %6810)  ; Cos(value)
  %6813 = fsub fast float -0.000000e+00, %6811
  br label %6814

; <label>:6814                                    ; preds = %6863, %6809
  %6815 = phi float [ 0.000000e+00, %6809 ], [ %6858, %6863 ]
  %6816 = phi float [ 0.000000e+00, %6809 ], [ %6860, %6863 ]
  %6817 = phi i32 [ 0, %6809 ], [ %6864, %6863 ]
  %6818 = mul i32 %6817, 2
  %6819 = add i32 0, %6818
  %6820 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6819
  %6821 = load float, float* %6820, align 4
  %6822 = mul i32 %6817, 2
  %6823 = add i32 1, %6822
  %6824 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6823
  %6825 = load float, float* %6824, align 4
  %6826 = fmul fast float %6821, %6812
  %6827 = call float @dx.op.tertiary.f32(i32 46, float %6825, float %6813, float %6826)  ; FMad(a,b,c)
  %6828 = fmul fast float %6821, %6811
  %6829 = call float @dx.op.tertiary.f32(i32 46, float %6825, float %6812, float %6828)  ; FMad(a,b,c)
  %6830 = fmul fast float %6827, %6737
  %6831 = fmul fast float %6829, %6737
  %6832 = fadd fast float %6830, %5863
  %6833 = fadd fast float %6831, %5867
  %6834 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %56, float %6832, float %6833, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6835 = extractvalue %dx.types.ResRet.f32 %6834, 0
  %6836 = extractvalue %dx.types.ResRet.f32 %6834, 1
  %6837 = extractvalue %dx.types.ResRet.f32 %6834, 2
  %6838 = extractvalue %dx.types.ResRet.f32 %6834, 3
  %6839 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %6835, float* %6839, align 4
  %6840 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %6836, float* %6840, align 4
  %6841 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %6837, float* %6841, align 4
  %6842 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %6838, float* %6842, align 4
  %6843 = fsub fast float %6835, %6739
  %6844 = fcmp fast olt float %6843, 0.000000e+00
  %6845 = select i1 %6844, float 0.000000e+00, float 1.000000e+00
  %6846 = fadd fast float %6845, %6815
  %6847 = fmul fast float %6845, %6843
  %6848 = fadd fast float %6847, %6816
  br label %6849

; <label>:6849                                    ; preds = %6849, %6814
  %6850 = phi i32 [ 1, %6814 ], [ %6861, %6849 ]
  %6851 = phi float [ %6848, %6814 ], [ %6860, %6849 ]
  %6852 = phi float [ %6846, %6814 ], [ %6858, %6849 ]
  %6853 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %6850
  %6854 = load float, float* %6853, align 4, !tbaa !124, !noalias !114
  %6855 = fsub fast float %6854, %6739
  %6856 = fcmp fast olt float %6855, 0.000000e+00
  %6857 = select i1 %6856, float 0.000000e+00, float 1.000000e+00
  %6858 = fadd fast float %6857, %6852
  %6859 = fmul fast float %6857, %6855
  %6860 = fadd fast float %6859, %6851
  %6861 = add nuw nsw i32 %6850, 1
  %6862 = icmp eq i32 %6861, 4
  br i1 %6862, label %6863, label %6849, !llvm.loop !126

; <label>:6863                                    ; preds = %6849
  %6864 = add nuw nsw i32 %6817, 1
  %6865 = icmp eq i32 %6864, 8
  br i1 %6865, label %6866, label %6814, !llvm.loop !127

; <label>:6866                                    ; preds = %6863
  %6867 = fdiv fast float 1.000000e+00, %6858
  %6868 = fmul fast float %6867, %6860
  %6869 = fdiv fast float 1.000000e+00, %6739
  %6870 = fmul fast float %6868, %6869
  %6871 = call float @dx.op.unary.f32(i32 7, float %6870)  ; Saturate(value)
  %6872 = call float @dx.op.binary.f32(i32 35, float %6871, float 0.000000e+00)  ; FMax(a,b)
  %6873 = fmul fast float %6858, 3.125000e-02
  %6874 = call float @dx.op.unary.f32(i32 7, float %6873)  ; Saturate(value)
  %6875 = fmul fast float %6874, 2.000000e+00
  %6876 = fadd fast float %6875, -1.000000e+00
  %6877 = fcmp fast ogt float %6876, 0.000000e+00
  %6878 = fcmp fast olt float %6876, 0.000000e+00
  %6879 = zext i1 %6877 to i32
  %6880 = zext i1 %6878 to i32
  %6881 = sub nsw i32 %6879, %6880
  %6882 = sitofp i32 %6881 to float
  %6883 = fmul fast float %6882, %6876
  %6884 = fsub fast float 1.000000e+00, %6883
  %6885 = fmul fast float %6884, %6884
  %6886 = fmul fast float %6885, %6884
  %6887 = fsub fast float %6884, %6886
  %6888 = fmul fast float %6887, %6872
  %6889 = fsub fast float 1.000000e+00, %6886
  %6890 = fsub fast float %6889, %6888
  %6891 = fmul fast float %6882, 5.000000e-01
  %6892 = fmul fast float %6891, %6890
  %6893 = fsub fast float 5.000000e-01, %6892
  br label %7047

; <label>:6894                                    ; preds = %6729
  br i1 %6740, label %6895, label %6962

; <label>:6895                                    ; preds = %6894
  %6896 = extractvalue %dx.types.CBufRet.f32 %6733, 1
  %6897 = extractvalue %dx.types.CBufRet.f32 %6733, 0
  %6898 = fmul fast float %6897, %5863
  %6899 = fmul fast float %6896, %5867
  %6900 = fadd fast float %6898, 5.000000e-01
  %6901 = call float @dx.op.unary.f32(i32 27, float %6900)  ; Round_ni(value)
  %6902 = fadd fast float %6899, 5.000000e-01
  %6903 = call float @dx.op.unary.f32(i32 27, float %6902)  ; Round_ni(value)
  %6904 = fsub fast float %6900, %6901
  %6905 = fsub fast float %6902, %6903
  %6906 = fadd fast float %6901, -5.000000e-01
  %6907 = fadd fast float %6903, -5.000000e-01
  %6908 = fmul fast float %6904, 2.000000e+00
  %6909 = fsub fast float 3.000000e+00, %6908
  %6910 = fadd fast float %6908, 1.000000e+00
  %6911 = fsub fast float 2.000000e+00, %6904
  %6912 = bitcast float %6909 to i32
  %6913 = sub nsw i32 2129859010, %6912
  %6914 = bitcast i32 %6913 to float
  %6915 = fmul fast float %6914, %6911
  %6916 = fadd fast float %6915, -1.000000e+00
  %6917 = bitcast float %6910 to i32
  %6918 = sub nsw i32 2129859010, %6917
  %6919 = bitcast i32 %6918 to float
  %6920 = fmul fast float %6919, %6904
  %6921 = fadd fast float %6920, 1.000000e+00
  %6922 = fmul fast float %6905, 2.000000e+00
  %6923 = fsub fast float 3.000000e+00, %6922
  %6924 = fadd fast float %6922, 1.000000e+00
  %6925 = fsub fast float 2.000000e+00, %6905
  %6926 = bitcast float %6923 to i32
  %6927 = sub nsw i32 2129859010, %6926
  %6928 = bitcast i32 %6927 to float
  %6929 = fmul fast float %6928, %6925
  %6930 = fadd fast float %6929, -1.000000e+00
  %6931 = bitcast float %6924 to i32
  %6932 = sub nsw i32 2129859010, %6931
  %6933 = bitcast i32 %6932 to float
  %6934 = fmul fast float %6933, %6905
  %6935 = fadd fast float %6934, 1.000000e+00
  %6936 = fadd fast float %6916, %6906
  %6937 = fmul fast float %6936, %6734
  %6938 = fadd fast float %6930, %6907
  %6939 = fmul fast float %6938, %6735
  %6940 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6937, float %6939, float undef, float undef, i32 0, i32 0, i32 undef, float %6739)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6941 = extractvalue %dx.types.ResRet.f32 %6940, 0
  %6942 = fmul fast float %6941, %6909
  %6943 = fadd fast float %6921, %6906
  %6944 = fmul fast float %6943, %6734
  %6945 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6944, float %6939, float undef, float undef, i32 0, i32 0, i32 undef, float %6739)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6946 = extractvalue %dx.types.ResRet.f32 %6945, 0
  %6947 = fmul fast float %6946, %6910
  %6948 = fadd fast float %6935, %6907
  %6949 = fmul fast float %6948, %6735
  %6950 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6937, float %6949, float undef, float undef, i32 0, i32 0, i32 undef, float %6739)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6951 = extractvalue %dx.types.ResRet.f32 %6950, 0
  %6952 = fmul fast float %6951, %6909
  %6953 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6944, float %6949, float undef, float undef, i32 0, i32 0, i32 undef, float %6739)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6954 = extractvalue %dx.types.ResRet.f32 %6953, 0
  %6955 = fmul fast float %6954, %6910
  %6956 = fadd fast float %6955, %6952
  %6957 = fmul fast float %6956, %6924
  %6958 = fadd fast float %6947, %6942
  %6959 = fmul fast float %6958, %6923
  %6960 = fadd fast float %6959, %6957
  %6961 = fmul fast float %6960, 6.250000e-02
  br label %7047

; <label>:6962                                    ; preds = %6894
  %6963 = fmul fast float %286, 0x401921FB60000000
  %6964 = call float @dx.op.unary.f32(i32 13, float %6963)  ; Sin(value)
  %6965 = call float @dx.op.unary.f32(i32 12, float %6963)  ; Cos(value)
  %6966 = fsub fast float -0.000000e+00, %6964
  br label %6967

; <label>:6967                                    ; preds = %7016, %6962
  %6968 = phi float [ 0.000000e+00, %6962 ], [ %7011, %7016 ]
  %6969 = phi float [ 0.000000e+00, %6962 ], [ %7013, %7016 ]
  %6970 = phi i32 [ 0, %6962 ], [ %7017, %7016 ]
  %6971 = mul i32 %6970, 2
  %6972 = add i32 0, %6971
  %6973 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6972
  %6974 = load float, float* %6973, align 4
  %6975 = mul i32 %6970, 2
  %6976 = add i32 1, %6975
  %6977 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6976
  %6978 = load float, float* %6977, align 4
  %6979 = fmul fast float %6974, %6965
  %6980 = call float @dx.op.tertiary.f32(i32 46, float %6978, float %6966, float %6979)  ; FMad(a,b,c)
  %6981 = fmul fast float %6974, %6964
  %6982 = call float @dx.op.tertiary.f32(i32 46, float %6978, float %6965, float %6981)  ; FMad(a,b,c)
  %6983 = fmul fast float %6980, %6737
  %6984 = fmul fast float %6982, %6737
  %6985 = fadd fast float %6983, %5863
  %6986 = fadd fast float %6984, %5867
  %6987 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %56, float %6985, float %6986, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6988 = extractvalue %dx.types.ResRet.f32 %6987, 0
  %6989 = extractvalue %dx.types.ResRet.f32 %6987, 1
  %6990 = extractvalue %dx.types.ResRet.f32 %6987, 2
  %6991 = extractvalue %dx.types.ResRet.f32 %6987, 3
  %6992 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %6988, float* %6992, align 4
  %6993 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %6989, float* %6993, align 4
  %6994 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %6990, float* %6994, align 4
  %6995 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %6991, float* %6995, align 4
  %6996 = fsub fast float %6988, %6739
  %6997 = fcmp fast olt float %6996, 0.000000e+00
  %6998 = select i1 %6997, float 0.000000e+00, float 1.000000e+00
  %6999 = fadd fast float %6998, %6968
  %7000 = fmul fast float %6998, %6996
  %7001 = fadd fast float %7000, %6969
  br label %7002

; <label>:7002                                    ; preds = %7002, %6967
  %7003 = phi i32 [ 1, %6967 ], [ %7014, %7002 ]
  %7004 = phi float [ %7001, %6967 ], [ %7013, %7002 ]
  %7005 = phi float [ %6999, %6967 ], [ %7011, %7002 ]
  %7006 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %7003
  %7007 = load float, float* %7006, align 4, !tbaa !124, !noalias !114
  %7008 = fsub fast float %7007, %6739
  %7009 = fcmp fast olt float %7008, 0.000000e+00
  %7010 = select i1 %7009, float 0.000000e+00, float 1.000000e+00
  %7011 = fadd fast float %7010, %7005
  %7012 = fmul fast float %7010, %7008
  %7013 = fadd fast float %7012, %7004
  %7014 = add nuw nsw i32 %7003, 1
  %7015 = icmp eq i32 %7014, 4
  br i1 %7015, label %7016, label %7002, !llvm.loop !126

; <label>:7016                                    ; preds = %7002
  %7017 = add nuw nsw i32 %6970, 1
  %7018 = icmp eq i32 %7017, 8
  br i1 %7018, label %7019, label %6967, !llvm.loop !127

; <label>:7019                                    ; preds = %7016
  %7020 = fdiv fast float 1.000000e+00, %7011
  %7021 = fmul fast float %7020, %7013
  %7022 = fdiv fast float 1.000000e+00, %6739
  %7023 = fmul fast float %7021, %7022
  %7024 = call float @dx.op.unary.f32(i32 7, float %7023)  ; Saturate(value)
  %7025 = call float @dx.op.binary.f32(i32 35, float %7024, float 0.000000e+00)  ; FMax(a,b)
  %7026 = fmul fast float %7011, 3.125000e-02
  %7027 = call float @dx.op.unary.f32(i32 7, float %7026)  ; Saturate(value)
  %7028 = fmul fast float %7027, 2.000000e+00
  %7029 = fadd fast float %7028, -1.000000e+00
  %7030 = fcmp fast ogt float %7029, 0.000000e+00
  %7031 = fcmp fast olt float %7029, 0.000000e+00
  %7032 = zext i1 %7030 to i32
  %7033 = zext i1 %7031 to i32
  %7034 = sub nsw i32 %7032, %7033
  %7035 = sitofp i32 %7034 to float
  %7036 = fmul fast float %7035, %7029
  %7037 = fsub fast float 1.000000e+00, %7036
  %7038 = fmul fast float %7037, %7037
  %7039 = fmul fast float %7038, %7037
  %7040 = fsub fast float %7037, %7039
  %7041 = fmul fast float %7040, %7025
  %7042 = fsub fast float 1.000000e+00, %7039
  %7043 = fsub fast float %7042, %7041
  %7044 = fmul fast float %7035, 5.000000e-01
  %7045 = fmul fast float %7044, %7043
  %7046 = fsub fast float 5.000000e-01, %7045
  br label %7047

; <label>:7047                                    ; preds = %7019, %6895, %6866, %6742, %6726
  %7048 = phi float [ 1.000000e+00, %6726 ], [ %6808, %6742 ], [ %6893, %6866 ], [ %6961, %6895 ], [ %7046, %7019 ]
  %7049 = fsub fast float %6560, %6393
  %7050 = fmul fast float %7049, %5960
  %7051 = fadd fast float %7050, %6393
  %7052 = fsub fast float %6727, %7051
  %7053 = fmul fast float %7052, %5959
  %7054 = fadd fast float %7053, %7051
  %7055 = fsub fast float %7048, %7054
  %7056 = fmul fast float %7055, %5987
  %7057 = fadd fast float %7056, %7054
  %7058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7059 = extractvalue %dx.types.CBufRet.f32 %7058, 2
  %7060 = fcmp fast ogt float %7059, 0.000000e+00
  br i1 %7060, label %7061, label %7101, !dx.controlflow.hints !131

; <label>:7061                                    ; preds = %7047
  %7062 = fcmp fast ugt float %7059, 0.000000e+00
  br i1 %7062, label %7063, label %7098

; <label>:7063                                    ; preds = %7061
  %7064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7065 = extractvalue %dx.types.CBufRet.f32 %7064, 0
  %7066 = extractvalue %dx.types.CBufRet.f32 %7064, 1
  %7067 = extractvalue %dx.types.CBufRet.f32 %7064, 2
  %7068 = extractvalue %dx.types.CBufRet.f32 %7064, 3
  %7069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7070 = extractvalue %dx.types.CBufRet.f32 %7069, 0
  %7071 = extractvalue %dx.types.CBufRet.f32 %7069, 1
  %7072 = extractvalue %dx.types.CBufRet.f32 %7069, 2
  %7073 = extractvalue %dx.types.CBufRet.f32 %7069, 3
  %7074 = extractvalue %dx.types.CBufRet.f32 %7058, 0
  %7075 = extractvalue %dx.types.CBufRet.f32 %7058, 1
  %7076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7077 = extractvalue %dx.types.CBufRet.f32 %7076, 0
  %7078 = extractvalue %dx.types.CBufRet.f32 %7076, 1
  %7079 = extractvalue %dx.types.CBufRet.f32 %7076, 2
  %7080 = fadd fast float %7077, %5840
  %7081 = fadd fast float %7078, %5841
  %7082 = fadd fast float %7079, %5842
  %7083 = fmul fast float %7080, %7065
  %7084 = call float @dx.op.tertiary.f32(i32 46, float %7066, float %7081, float %7083)  ; FMad(a,b,c)
  %7085 = call float @dx.op.tertiary.f32(i32 46, float %7067, float %7082, float %7084)  ; FMad(a,b,c)
  %7086 = fadd fast float %7085, %7068
  %7087 = fmul fast float %7080, %7070
  %7088 = call float @dx.op.tertiary.f32(i32 46, float %7071, float %7081, float %7087)  ; FMad(a,b,c)
  %7089 = call float @dx.op.tertiary.f32(i32 46, float %7072, float %7082, float %7088)  ; FMad(a,b,c)
  %7090 = fadd fast float %7089, %7073
  %7091 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %52, float %7086, float %7090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7092 = extractvalue %dx.types.ResRet.f32 %7091, 0
  %7093 = fmul fast float %7092, %7075
  %7094 = fadd fast float %7093, %7074
  %7095 = call float @dx.op.unary.f32(i32 7, float %7094)  ; Saturate(value)
  %7096 = fmul fast float %7095, %7059
  %7097 = fsub fast float 1.000000e+00, %7096
  br label %7098

; <label>:7098                                    ; preds = %7063, %7061
  %7099 = phi float [ %7097, %7063 ], [ 1.000000e+00, %7061 ]
  %7100 = fmul fast float %7099, %7057
  br label %7101

; <label>:7101                                    ; preds = %7098, %7047, %5820
  %7102 = phi float [ 1.000000e+00, %5820 ], [ %7100, %7098 ], [ %7057, %7047 ]
  %7103 = call float @dx.op.binary.f32(i32 36, float %7102, float %7102)  ; FMin(a,b)
  %7104 = call float @dx.op.binary.f32(i32 36, float %7102, float %7103)  ; FMin(a,b)
  %7105 = fcmp fast ogt float %7104, 0.000000e+00
  br i1 %7105, label %7106, label %7271, !dx.controlflow.hints !132

; <label>:7106                                    ; preds = %7101
  %7107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7108 = extractvalue %dx.types.CBufRet.f32 %7107, 0
  %7109 = extractvalue %dx.types.CBufRet.f32 %7107, 1
  %7110 = extractvalue %dx.types.CBufRet.f32 %7107, 2
  %7111 = extractvalue %dx.types.CBufRet.f32 %7107, 3
  %7112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7113 = extractvalue %dx.types.CBufRet.f32 %7112, 0
  %7114 = extractvalue %dx.types.CBufRet.f32 %7112, 1
  %7115 = extractvalue %dx.types.CBufRet.f32 %7112, 2
  %7116 = extractvalue %dx.types.CBufRet.f32 %7112, 3
  %7117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7118 = extractvalue %dx.types.CBufRet.f32 %7117, 0
  %7119 = extractvalue %dx.types.CBufRet.f32 %7117, 1
  %7120 = extractvalue %dx.types.CBufRet.f32 %7117, 2
  %7121 = extractvalue %dx.types.CBufRet.f32 %7117, 3
  %7122 = fmul fast float %7108, %5840
  %7123 = call float @dx.op.tertiary.f32(i32 46, float %5841, float %7109, float %7122)  ; FMad(a,b,c)
  %7124 = call float @dx.op.tertiary.f32(i32 46, float %5842, float %7110, float %7123)  ; FMad(a,b,c)
  %7125 = fadd fast float %7124, %7111
  %7126 = fmul fast float %7113, %5840
  %7127 = call float @dx.op.tertiary.f32(i32 46, float %5841, float %7114, float %7126)  ; FMad(a,b,c)
  %7128 = call float @dx.op.tertiary.f32(i32 46, float %5842, float %7115, float %7127)  ; FMad(a,b,c)
  %7129 = fadd fast float %7128, %7116
  %7130 = fmul fast float %7118, %5840
  %7131 = call float @dx.op.tertiary.f32(i32 46, float %5841, float %7119, float %7130)  ; FMad(a,b,c)
  %7132 = call float @dx.op.tertiary.f32(i32 46, float %5842, float %7120, float %7131)  ; FMad(a,b,c)
  %7133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7134 = extractvalue %dx.types.CBufRet.f32 %7133, 0
  %7135 = extractvalue %dx.types.CBufRet.f32 %7133, 1
  %7136 = extractvalue %dx.types.CBufRet.f32 %7133, 3
  %7137 = fmul fast float %7136, %7125
  %7138 = fmul fast float %7136, %7129
  %7139 = fadd fast float %7137, %7134
  %7140 = fadd fast float %7138, %7135
  %7141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7142 = extractvalue %dx.types.CBufRet.f32 %7141, 0
  %7143 = extractvalue %dx.types.CBufRet.f32 %7141, 1
  %7144 = fsub fast float %7139, %7142
  %7145 = fsub fast float %7140, %7143
  %7146 = fcmp fast olt float %7144, 0.000000e+00
  %7147 = fcmp fast olt float %7145, 0.000000e+00
  %7148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7149 = extractvalue %dx.types.CBufRet.f32 %7148, 0
  %7150 = extractvalue %dx.types.CBufRet.f32 %7148, 1
  %7151 = extractvalue %dx.types.CBufRet.f32 %7148, 2
  %7152 = extractvalue %dx.types.CBufRet.f32 %7148, 3
  %7153 = select i1 %7146, float %7149, float %7151
  %7154 = select i1 %7147, float %7150, float %7152
  %7155 = fmul fast float %7153, %7144
  %7156 = fmul fast float %7154, %7145
  %7157 = call float @dx.op.unary.f32(i32 6, float %7155)  ; FAbs(value)
  %7158 = call float @dx.op.unary.f32(i32 6, float %7156)  ; FAbs(value)
  %7159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7160 = extractvalue %dx.types.CBufRet.f32 %7159, 0
  %7161 = call float @dx.op.binary.f32(i32 35, float %7157, float %7158)  ; FMax(a,b)
  %7162 = fsub fast float %7160, %7161
  %7163 = call float @dx.op.unary.f32(i32 7, float %7162)  ; Saturate(value)
  %7164 = fcmp fast ogt float %7163, 0.000000e+00
  br i1 %7164, label %7165, label %7206, !dx.controlflow.hints !133

; <label>:7165                                    ; preds = %7106
  %7166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %55, float %7139, float %7140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7167 = extractvalue %dx.types.ResRet.f32 %7166, 1
  %7168 = fcmp fast ogt float %7167, 0.000000e+00
  br i1 %7168, label %7169, label %7201

; <label>:7169                                    ; preds = %7165
  %7170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %55, float %7139, float %7140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7171 = extractvalue %dx.types.ResRet.f32 %7170, 0
  %7172 = extractvalue %dx.types.ResRet.f32 %7170, 1
  %7173 = extractvalue %dx.types.ResRet.f32 %7170, 2
  %7174 = extractvalue %dx.types.ResRet.f32 %7170, 3
  %7175 = fsub fast float 1.000000e+00, %7121
  %7176 = fsub fast float %7175, %7132
  %7177 = fmul fast float %7176, 0x400921FB60000000
  %7178 = fadd fast float %7177, 0x3FF921FB60000000
  %7179 = call float @dx.op.unary.f32(i32 13, float %7178)  ; Sin(value)
  %7180 = fadd fast float %7179, -1.000000e+00
  %7181 = fmul fast float %7180, 0x3FD45F3060000000
  %7182 = fmul fast float %7176, 0x401921FB60000000
  %7183 = fadd fast float %7182, 0x400921FB60000000
  %7184 = call float @dx.op.unary.f32(i32 13, float %7183)  ; Sin(value)
  %7185 = fadd fast float %7184, 0x3E7777A5C0000000
  %7186 = fmul fast float %7185, 0x3FC45F3060000000
  %7187 = fmul fast float %7176, 0x4022D97C80000000
  %7188 = fadd fast float %7187, 0x4012D97C80000000
  %7189 = call float @dx.op.unary.f32(i32 13, float %7188)  ; Sin(value)
  %7190 = fadd fast float %7189, 1.000000e+00
  %7191 = fmul fast float %7190, 0x3FBB2995E0000000
  %7192 = fmul fast float %7176, 0x402921FB60000000
  %7193 = fadd fast float %7192, 0x401921FB60000000
  %7194 = call float @dx.op.unary.f32(i32 13, float %7193)  ; Sin(value)
  %7195 = fadd fast float %7194, 0xBE8777A5C0000000
  %7196 = fmul fast float %7195, 0x3FB45F3060000000
  %7197 = call float @dx.op.dot4.f32(i32 56, float %7171, float %7172, float %7173, float %7174, float %7181, float %7186, float %7191, float %7196)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7198 = fmul fast float %7197, 0xBFF7154760000000
  %7199 = call float @dx.op.unary.f32(i32 21, float %7198)  ; Exp(value)
  %7200 = call float @dx.op.unary.f32(i32 7, float %7199)  ; Saturate(value)
  br label %7201

; <label>:7201                                    ; preds = %7169, %7165
  %7202 = phi float [ %7200, %7169 ], [ 1.000000e+00, %7165 ]
  %7203 = fadd fast float %7202, -1.000000e+00
  %7204 = fmul fast float %7203, %7163
  %7205 = fadd fast float %7204, 1.000000e+00
  br label %7206

; <label>:7206                                    ; preds = %7201, %7106
  %7207 = phi float [ %7205, %7201 ], [ 1.000000e+00, %7106 ]
  %7208 = fmul fast float %7207, %7102
  %7209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7210 = extractvalue %dx.types.CBufRet.f32 %7209, 0
  %7211 = extractvalue %dx.types.CBufRet.f32 %7209, 1
  %7212 = extractvalue %dx.types.CBufRet.f32 %7209, 2
  %7213 = fadd fast float %7210, %203
  %7214 = fadd fast float %7211, %204
  %7215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7216 = extractvalue %dx.types.CBufRet.f32 %7215, 1
  %7217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7218 = extractvalue %dx.types.CBufRet.f32 %7217, 0
  %7219 = extractvalue %dx.types.CBufRet.f32 %7217, 1
  %7220 = extractvalue %dx.types.CBufRet.f32 %7217, 2
  %7221 = fsub fast float -0.000000e+00, %7213
  %7222 = fsub fast float -0.000000e+00, %7214
  %7223 = fsub fast float %5100, %7212
  %7224 = fadd fast float %7223, %7216
  %7225 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7221, float %7222, float %7224)  ; Dot3(ax,ay,az,bx,by,bz)
  %7226 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7218, float %7219, float %7220)  ; Dot3(ax,ay,az,bx,by,bz)
  %7227 = fdiv fast float 1.000000e+00, %7226
  %7228 = fmul fast float %7227, %7225
  %7229 = fmul fast float %7218, %7228
  %7230 = fmul fast float %7219, %7228
  %7231 = fadd fast float %7229, %7213
  %7232 = fadd fast float %7230, %7214
  %7233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7234 = extractvalue %dx.types.CBufRet.f32 %7233, 0
  %7235 = extractvalue %dx.types.CBufRet.f32 %7233, 1
  %7236 = fsub fast float %7231, %7234
  %7237 = fsub fast float %7232, %7235
  %7238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7239 = extractvalue %dx.types.CBufRet.f32 %7238, 2
  %7240 = extractvalue %dx.types.CBufRet.f32 %7238, 3
  %7241 = fmul fast float %7236, %7239
  %7242 = fmul fast float %7237, %7240
  %7243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7244 = extractvalue %dx.types.CBufRet.i32 %7243, 3
  %7245 = icmp eq i32 %7244, 0
  br i1 %7245, label %7251, label %7246

; <label>:7246                                    ; preds = %7206
  %7247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7241, float %7242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7248 = extractvalue %dx.types.ResRet.f32 %7247, 0
  %7249 = extractvalue %dx.types.ResRet.f32 %7247, 1
  %7250 = extractvalue %dx.types.ResRet.f32 %7247, 2
  br label %7256

; <label>:7251                                    ; preds = %7206
  %7252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %7241, float %7242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7253 = extractvalue %dx.types.ResRet.f32 %7252, 0
  %7254 = extractvalue %dx.types.ResRet.f32 %7252, 1
  %7255 = extractvalue %dx.types.ResRet.f32 %7252, 2
  br label %7256

; <label>:7256                                    ; preds = %7251, %7246
  %7257 = phi float [ %7248, %7246 ], [ %7253, %7251 ]
  %7258 = phi float [ %7249, %7246 ], [ %7254, %7251 ]
  %7259 = phi float [ %7250, %7246 ], [ %7255, %7251 ]
  %7260 = extractvalue %dx.types.CBufRet.f32 %7215, 2
  %7261 = fmul fast float %7260, %7257
  %7262 = extractvalue %dx.types.CBufRet.f32 %7215, 0
  %7263 = fsub fast float %7228, %7262
  %7264 = fsub fast float %7263, %7261
  %7265 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7264)  ; FMax(a,b)
  %7266 = fmul fast float %7265, %7258
  %7267 = call float @dx.op.binary.f32(i32 36, float %7259, float %7266)  ; FMin(a,b)
  %7268 = fmul fast float %7267, 0xBFF7154760000000
  %7269 = call float @dx.op.unary.f32(i32 21, float %7268)  ; Exp(value)
  %7270 = fmul fast float %7208, %7269
  br label %7271

; <label>:7271                                    ; preds = %7256, %7101
  %7272 = phi float [ %7270, %7256 ], [ %7102, %7101 ]
  %7273 = call float @dx.op.binary.f32(i32 36, float %7272, float %7272)  ; FMin(a,b)
  %7274 = call float @dx.op.binary.f32(i32 36, float %7272, float %7273)  ; FMin(a,b)
  %7275 = fcmp fast ogt float %7274, 0.000000e+00
  br i1 %7275, label %7276, label %7523, !dx.controlflow.hints !134

; <label>:7276                                    ; preds = %7271
  %7277 = fmul fast float %7272, %5832
  %7278 = fmul fast float %7272, %5833
  %7279 = fmul fast float %7272, %5834
  %7280 = fsub fast float %205, %4299
  %7281 = fcmp fast ogt float %7280, 0.000000e+00
  %7282 = fmul fast float %5821, 5.120000e+02
  %7283 = fmul fast float %5822, 5.120000e+02
  %7284 = fmul fast float %5823, 5.120000e+02
  %7285 = fadd fast float %7284, %205
  %7286 = fsub fast float %4299, %7285
  %7287 = fmul fast float %7286, 2.000000e+00
  %7288 = fadd fast float %7287, %7285
  %7289 = select i1 %7281, float %7288, float %7285
  %7290 = fsub fast float %7289, %205
  %7291 = call float @dx.op.dot3.f32(i32 55, float %7282, float %7283, float %7290, float %7282, float %7283, float %7290)  ; Dot3(ax,ay,az,bx,by,bz)
  %7292 = call float @dx.op.unary.f32(i32 25, float %7291)  ; Rsqrt(value)
  %7293 = fmul fast float %7292, %7282
  %7294 = fmul fast float %7292, %7283
  %7295 = fmul fast float %7292, %7290
  %7296 = fsub fast float %4299, %205
  %7297 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7296)  ; Dot3(ax,ay,az,bx,by,bz)
  %7298 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7293, float %7294, float %7295)  ; Dot3(ax,ay,az,bx,by,bz)
  %7299 = fdiv fast float 1.000000e+00, %7298
  %7300 = fmul fast float %7299, %7297
  %7301 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7280, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7302 = fcmp fast ogt float %7301, 0.000000e+00
  %7303 = fcmp fast olt float %7301, 0.000000e+00
  %7304 = zext i1 %7302 to i32
  %7305 = zext i1 %7303 to i32
  %7306 = sub nsw i32 %7304, %7305
  %7307 = sitofp i32 %7306 to float
  %7308 = fsub fast float %7289, %4299
  %7309 = call float @dx.op.dot3.f32(i32 55, float %7282, float %7283, float %7308, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7310 = fcmp fast ogt float %7309, 0.000000e+00
  %7311 = fcmp fast olt float %7309, 0.000000e+00
  %7312 = zext i1 %7310 to i32
  %7313 = zext i1 %7311 to i32
  %7314 = sub nsw i32 %7312, %7313
  %7315 = sitofp i32 %7314 to float
  %7316 = fcmp fast une float %7307, %7315
  br i1 %7316, label %7317, label %7327

; <label>:7317                                    ; preds = %7276
  %7318 = fmul fast float %7300, %7295
  %7319 = fmul fast float %7300, %7294
  %7320 = fmul fast float %7300, %7293
  %7321 = fmul fast float %7320, %7320
  %7322 = fmul fast float %7319, %7319
  %7323 = fadd fast float %7321, %7322
  %7324 = fmul fast float %7318, %7318
  %7325 = fadd fast float %7323, %7324
  %7326 = call float @dx.op.unary.f32(i32 24, float %7325)  ; Sqrt(value)
  br label %7337

; <label>:7327                                    ; preds = %7276
  %7328 = icmp slt i32 %7306, 0
  br i1 %7328, label %7329, label %7337

; <label>:7329                                    ; preds = %7327
  %7330 = fsub fast float %205, %7289
  %7331 = fmul fast float %7282, %7282
  %7332 = fmul fast float %7283, %7283
  %7333 = fadd fast float %7331, %7332
  %7334 = fmul fast float %7330, %7330
  %7335 = fadd fast float %7333, %7334
  %7336 = call float @dx.op.unary.f32(i32 24, float %7335)  ; Sqrt(value)
  br label %7337

; <label>:7337                                    ; preds = %7329, %7327, %7317
  %7338 = phi float [ %7326, %7317 ], [ %7336, %7329 ], [ 0.000000e+00, %7327 ]
  %7339 = fsub fast float -0.000000e+00, %7338
  %7340 = select i1 %7281, float -0.000000e+00, float %7339
  %7341 = fmul fast float %4296, 0x3FF7154760000000
  %7342 = fmul fast float %7341, %7340
  %7343 = fmul fast float %4297, 0x3FF7154760000000
  %7344 = fmul fast float %7343, %7340
  %7345 = fmul fast float %4298, 0x3FF7154760000000
  %7346 = fmul fast float %7345, %7340
  %7347 = call float @dx.op.unary.f32(i32 21, float %7342)  ; Exp(value)
  %7348 = call float @dx.op.unary.f32(i32 21, float %7344)  ; Exp(value)
  %7349 = call float @dx.op.unary.f32(i32 21, float %7346)  ; Exp(value)
  %7350 = call float @dx.op.unary.f32(i32 7, float %7347)  ; Saturate(value)
  %7351 = call float @dx.op.unary.f32(i32 7, float %7348)  ; Saturate(value)
  %7352 = call float @dx.op.unary.f32(i32 7, float %7349)  ; Saturate(value)
  %7353 = fmul fast float %7277, %7350
  %7354 = fmul fast float %7278, %7351
  %7355 = fmul fast float %7279, %7352
  %7356 = fsub fast float %5821, %5088
  %7357 = fsub fast float %5822, %5087
  %7358 = fsub fast float %5823, %5086
  %7359 = call float @dx.op.dot3.f32(i32 55, float %7356, float %7357, float %7358, float %7356, float %7357, float %7358)  ; Dot3(ax,ay,az,bx,by,bz)
  %7360 = call float @dx.op.unary.f32(i32 25, float %7359)  ; Rsqrt(value)
  %7361 = fmul fast float %7360, %7356
  %7362 = fmul fast float %7360, %7357
  %7363 = fmul fast float %7360, %7358
  %7364 = call float @dx.op.dot3.f32(i32 55, float %5821, float %5822, float %5823, float %5095, float %5096, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %7365 = call float @dx.op.dot3.f32(i32 55, float %5085, float %5084, float %5083, float %7361, float %7362, float %7363)  ; Dot3(ax,ay,az,bx,by,bz)
  %7366 = call float @dx.op.unary.f32(i32 7, float %7364)  ; Saturate(value)
  %7367 = fmul fast float %7366, %7366
  %7368 = fmul fast float %7367, %5128
  %7369 = call float @dx.op.unary.f32(i32 7, float %7368)  ; Saturate(value)
  %7370 = fmul fast float %7369, %7366
  %7371 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5096, float %5097, float %7361, float %7362, float %7363)  ; Dot3(ax,ay,az,bx,by,bz)
  %7372 = fmul fast float %7371, %7371
  %7373 = call float @dx.op.unary.f32(i32 6, float %7364)  ; FAbs(value)
  %7374 = fsub fast float 1.000000e+00, %5121
  %7375 = fmul fast float %5103, %5103
  %7376 = fmul fast float %7375, %7374
  %7377 = fadd fast float %7376, %5121
  %7378 = bitcast float %7377 to i32
  %7379 = ashr i32 %7378, 1
  %7380 = add nsw i32 %7379, 532487669
  %7381 = bitcast i32 %7380 to float
  %7382 = fadd fast float %7381, %5103
  %7383 = fmul fast float %5121, %7372
  %7384 = fsub fast float 1.000000e+00, %7372
  %7385 = fadd fast float %7384, %7383
  %7386 = fmul fast float %7373, %7373
  %7387 = fmul fast float %7386, %7374
  %7388 = fadd fast float %7387, %5121
  %7389 = bitcast float %7388 to i32
  %7390 = ashr i32 %7389, 1
  %7391 = add nsw i32 %7390, 532487669
  %7392 = bitcast i32 %7391 to float
  %7393 = fadd fast float %7392, %7373
  %7394 = fmul fast float %7385, %7385
  %7395 = fmul fast float %7394, %7382
  %7396 = fmul fast float %7395, %7393
  %7397 = fdiv fast float 0x3FF0A00000000000, %7396
  %7398 = fmul fast float %7397, %5121
  %7399 = call float @dx.op.unary.f32(i32 6, float %7365)  ; FAbs(value)
  %7400 = fsub fast float 1.000000e+00, %7399
  %7401 = bitcast float %7400 to i32
  %7402 = sitofp i32 %7401 to float
  %7403 = fmul fast float %7402, 5.000000e+00
  %7404 = fadd fast float %7403, 0xC1EFBF8940000000
  %7405 = fptosi float %7404 to i32
  %7406 = bitcast i32 %7405 to float
  %7407 = fsub fast float 1.000000e+00, %5092
  %7408 = fsub fast float 1.000000e+00, %5093
  %7409 = fsub fast float 1.000000e+00, %5101
  %7410 = fmul fast float %7406, %7407
  %7411 = fmul fast float %7406, %7408
  %7412 = fmul fast float %7406, %7409
  %7413 = fadd fast float %7410, %5092
  %7414 = fadd fast float %7411, %5093
  %7415 = fadd fast float %7412, %5101
  br i1 %5240, label %7416, label %7439

; <label>:7416                                    ; preds = %7337
  %7417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3895, float %7399, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7418 = extractvalue %dx.types.ResRet.f32 %7417, 0
  %7419 = extractvalue %dx.types.ResRet.f32 %7417, 1
  %7420 = extractvalue %dx.types.ResRet.f32 %7417, 2
  %7421 = fadd fast float %7418, -5.000000e-01
  %7422 = fadd fast float %7419, -5.000000e-01
  %7423 = fadd fast float %7420, -5.000000e-01
  %7424 = fmul fast float %5092, 4.000000e+00
  %7425 = fmul fast float %7424, %7407
  %7426 = fmul fast float %7425, %7421
  %7427 = fmul fast float %5093, 4.000000e+00
  %7428 = fmul fast float %7427, %7408
  %7429 = fmul fast float %7428, %7422
  %7430 = fmul fast float %5101, 4.000000e+00
  %7431 = fmul fast float %7430, %7409
  %7432 = fmul fast float %7431, %7423
  %7433 = fadd fast float %7426, %7413
  %7434 = fadd fast float %7429, %7414
  %7435 = fadd fast float %7432, %7415
  %7436 = call float @dx.op.unary.f32(i32 7, float %7433)  ; Saturate(value)
  %7437 = call float @dx.op.unary.f32(i32 7, float %7434)  ; Saturate(value)
  %7438 = call float @dx.op.unary.f32(i32 7, float %7435)  ; Saturate(value)
  br label %7439

; <label>:7439                                    ; preds = %7416, %7337
  %7440 = phi float [ %7436, %7416 ], [ %7413, %7337 ]
  %7441 = phi float [ %7437, %7416 ], [ %7414, %7337 ]
  %7442 = phi float [ %7438, %7416 ], [ %7415, %7337 ]
  %7443 = fmul fast float %7364, 9.843750e-01
  %7444 = fadd fast float %7443, 7.812500e-03
  %7445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %7444, float %5230, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7446 = extractvalue %dx.types.ResRet.f32 %7445, 2
  %7447 = extractvalue %dx.types.ResRet.f32 %7445, 3
  %7448 = fmul fast float %7446, %5092
  %7449 = fmul fast float %7446, %5093
  %7450 = fmul fast float %7446, %5101
  %7451 = fadd fast float %7448, %7447
  %7452 = fadd fast float %7449, %7447
  %7453 = fadd fast float %7450, %7447
  br i1 %5240, label %7454, label %7477

; <label>:7454                                    ; preds = %7439
  %7455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3895, float %7364, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7456 = extractvalue %dx.types.ResRet.f32 %7455, 0
  %7457 = extractvalue %dx.types.ResRet.f32 %7455, 1
  %7458 = extractvalue %dx.types.ResRet.f32 %7455, 2
  %7459 = fadd fast float %7456, -5.000000e-01
  %7460 = fadd fast float %7457, -5.000000e-01
  %7461 = fadd fast float %7458, -5.000000e-01
  %7462 = fmul fast float %5092, 4.000000e+00
  %7463 = fmul fast float %7462, %7407
  %7464 = fmul fast float %7463, %7459
  %7465 = fmul fast float %5093, 4.000000e+00
  %7466 = fmul fast float %7465, %7408
  %7467 = fmul fast float %7466, %7460
  %7468 = fmul fast float %5101, 4.000000e+00
  %7469 = fmul fast float %7468, %7409
  %7470 = fmul fast float %7469, %7461
  %7471 = fadd fast float %7464, %7451
  %7472 = fadd fast float %7467, %7452
  %7473 = fadd fast float %7470, %7453
  %7474 = call float @dx.op.unary.f32(i32 7, float %7471)  ; Saturate(value)
  %7475 = call float @dx.op.unary.f32(i32 7, float %7472)  ; Saturate(value)
  %7476 = call float @dx.op.unary.f32(i32 7, float %7473)  ; Saturate(value)
  br label %7477

; <label>:7477                                    ; preds = %7454, %7439
  %7478 = phi float [ %7474, %7454 ], [ %7451, %7439 ]
  %7479 = phi float [ %7475, %7454 ], [ %7452, %7439 ]
  %7480 = phi float [ %7476, %7454 ], [ %7453, %7439 ]
  %7481 = call float @dx.op.binary.f32(i32 35, float %7479, float %7480)  ; FMax(a,b)
  %7482 = call float @dx.op.binary.f32(i32 35, float %7478, float %7481)  ; FMax(a,b)
  %7483 = fsub fast float 1.000000e+00, %7482
  %7484 = fmul fast float %7440, %7398
  %7485 = fmul fast float %7441, %7398
  %7486 = fmul fast float %7442, %7398
  %7487 = fsub fast float 1.000000e+00, %7365
  %7488 = bitcast float %7487 to i32
  %7489 = sitofp i32 %7488 to float
  %7490 = fmul fast float %7489, 5.000000e+00
  %7491 = fadd fast float %7490, 0xC1EFBF8940000000
  %7492 = fptosi float %7491 to i32
  %7493 = bitcast i32 %7492 to float
  %7494 = fmul fast float %7493, %3896
  %7495 = fmul fast float %7483, %7494
  %7496 = fmul fast float %7495, %5782
  %7497 = fmul fast float %7495, %5783
  %7498 = fmul fast float %7495, %5784
  %7499 = fadd fast float %7496, %7484
  %7500 = fadd fast float %7497, %7485
  %7501 = fadd fast float %7498, %7486
  %7502 = fmul fast float %7370, %7353
  %7503 = fmul fast float %7502, %7483
  %7504 = fmul fast float %7370, %7354
  %7505 = fmul fast float %7504, %7483
  %7506 = fmul fast float %7370, %7355
  %7507 = fmul fast float %7506, %7483
  %7508 = fmul fast float %7502, %7499
  %7509 = fmul fast float %7504, %7500
  %7510 = fmul fast float %7506, %7501
  %7511 = fadd fast float %7503, %5766
  %7512 = fmul fast float %7511, %3892
  %7513 = fadd fast float %7505, %5767
  %7514 = fmul fast float %7513, %3892
  %7515 = fadd fast float %7507, %5768
  %7516 = fmul fast float %7515, %3892
  %7517 = fadd fast float %7508, %5809
  %7518 = fmul fast float %7517, %3892
  %7519 = fadd fast float %7509, %5812
  %7520 = fmul fast float %7519, %3892
  %7521 = fadd fast float %7510, %5815
  %7522 = fmul fast float %7521, %3892
  br label %7523

; <label>:7523                                    ; preds = %7477, %7271, %5762
  %7524 = phi float [ %5810, %5762 ], [ %5810, %7271 ], [ %7518, %7477 ]
  %7525 = phi float [ %5813, %5762 ], [ %5813, %7271 ], [ %7520, %7477 ]
  %7526 = phi float [ %5816, %5762 ], [ %5816, %7271 ], [ %7522, %7477 ]
  %7527 = phi float [ %5805, %5762 ], [ %5805, %7271 ], [ %7512, %7477 ]
  %7528 = phi float [ %5806, %5762 ], [ %5806, %7271 ], [ %7514, %7477 ]
  %7529 = phi float [ %5807, %5762 ], [ %5807, %7271 ], [ %7516, %7477 ]
  %7530 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7531 = extractvalue %dx.types.CBufRet.i32 %7530, 0
  %7532 = icmp eq i32 %7531, 0
  br i1 %7532, label %8195, label %7533

; <label>:7533                                    ; preds = %7523
  %7534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7535 = extractvalue %dx.types.CBufRet.f32 %7534, 2
  %7536 = extractvalue %dx.types.CBufRet.f32 %7534, 3
  %7537 = fmul fast float %7535, %116
  %7538 = fmul fast float %7536, %117
  %7539 = fptoui float %7537 to i32
  %7540 = fptoui float %7538 to i32
  %7541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7542 = extractvalue %dx.types.CBufRet.f32 %7541, 0
  %7543 = extractvalue %dx.types.CBufRet.f32 %7541, 2
  %7544 = extractvalue %dx.types.CBufRet.f32 %7541, 3
  %7545 = fadd fast float %103, -4.000000e+00
  %7546 = call float @dx.op.binary.f32(i32 35, float %7545, float 0.000000e+00)  ; FMax(a,b)
  %7547 = fadd fast float %7546, %7542
  %7548 = fmul fast float %7547, %7543
  %7549 = call float @dx.op.unary.f32(i32 23, float %7548)  ; Log(value)
  %7550 = fmul fast float %7549, %7544
  %7551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7552 = extractvalue %dx.types.CBufRet.f32 %7551, 2
  %7553 = fmul fast float %7550, %7552
  %7554 = call float @dx.op.unary.f32(i32 7, float %7553)  ; Saturate(value)
  %7555 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7556 = extractvalue %dx.types.CBufRet.i32 %7555, 1
  %7557 = add i32 %7556, -1
  %7558 = uitofp i32 %7556 to float
  %7559 = fmul fast float %7558, %7554
  %7560 = fptoui float %7559 to i32
  %7561 = call i32 @dx.op.binary.i32(i32 40, i32 %7560, i32 %7557)  ; UMin(a,b)
  %7562 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7563 = extractvalue %dx.types.CBufRet.i32 %7562, 2
  %7564 = extractvalue %dx.types.CBufRet.i32 %7562, 3
  %7565 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7540, i32 %7563, i32 %7539)  ; UMad(a,b,c)
  %7566 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7561, i32 %7564, i32 %7565)  ; UMad(a,b,c)
  %7567 = add nsw i32 %7531, -1
  %7568 = call i32 @dx.op.binary.i32(i32 37, i32 %7567, i32 0)  ; IMax(a,b)
  %7569 = call float @dx.op.binary.f32(i32 35, float %103, float 0.000000e+00)  ; FMax(a,b)
  %7570 = fptoui float %7569 to i32
  %7571 = lshr i32 %7570, 5
  %7572 = call i32 @dx.op.binary.i32(i32 40, i32 %7571, i32 8191)  ; UMin(a,b)
  %7573 = shl i32 %7572, 2
  %7574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7573, i32 undef)  ; BufferLoad(srv,index,wot)
  %7575 = extractvalue %dx.types.ResRet.i32 %7574, 0
  %7576 = lshr i32 %7575, 16
  %7577 = and i32 %7575, 65535
  %7578 = lshr i32 %7575, 21
  %7579 = lshr i32 %7577, 5
  %7580 = call i32 @dx.op.binary.i32(i32 40, i32 %7579, i32 %7568)  ; UMin(a,b)
  %7581 = icmp ugt i32 %7578, %7580
  br i1 %7581, label %8195, label %7582

; <label>:7582                                    ; preds = %7533
  br label %7583

; <label>:7583                                    ; preds = %8185, %7582
  %7584 = phi i32 [ %8192, %8185 ], [ %7578, %7582 ]
  %7585 = phi float [ %8186, %8185 ], [ %7524, %7582 ]
  %7586 = phi float [ %8187, %8185 ], [ %7525, %7582 ]
  %7587 = phi float [ %8188, %8185 ], [ %7526, %7582 ]
  %7588 = phi float [ %8189, %8185 ], [ %7527, %7582 ]
  %7589 = phi float [ %8190, %8185 ], [ %7528, %7582 ]
  %7590 = phi float [ %8191, %8185 ], [ %7529, %7582 ]
  %7591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7592 = extractvalue %dx.types.CBufRet.i32 %7591, 0
  %7593 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7566, i32 %7592, i32 %7584)  ; UMad(a,b,c)
  %7594 = shl i32 %7593, 2
  %7595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7594, i32 undef)  ; BufferLoad(srv,index,wot)
  %7596 = extractvalue %dx.types.ResRet.i32 %7595, 0
  %7597 = shl i32 %7584, 5
  %7598 = sub nsw i32 %7576, %7597
  %7599 = call i32 @dx.op.binary.i32(i32 37, i32 %7598, i32 0)  ; IMax(a,b)
  %7600 = call i32 @dx.op.binary.i32(i32 38, i32 %7599, i32 31)  ; IMin(a,b)
  %7601 = sub nsw i32 1, %7576
  %7602 = add nsw i32 %7601, %7577
  %7603 = call i32 @dx.op.binary.i32(i32 37, i32 %7602, i32 0)  ; IMax(a,b)
  %7604 = call i32 @dx.op.binary.i32(i32 38, i32 %7603, i32 32)  ; IMin(a,b)
  %7605 = and i32 %7604, 31
  %7606 = shl i32 -1, %7605
  %7607 = xor i32 %7606, -1
  %7608 = and i32 %7600, 31
  %7609 = shl i32 %7607, %7608
  %7610 = icmp eq i32 %7604, 32
  %7611 = select i1 %7610, i32 -1, i32 %7609
  %7612 = and i32 %7611, %7596
  %7613 = icmp eq i32 %7612, 0
  br i1 %7613, label %8185, label %7614

; <label>:7614                                    ; preds = %7583
  br label %7615

; <label>:7615                                    ; preds = %7749, %7614
  %7616 = phi i32 [ %7627, %7749 ], [ %7612, %7614 ]
  %7617 = phi float [ %7750, %7749 ], [ %7585, %7614 ]
  %7618 = phi float [ %7751, %7749 ], [ %7586, %7614 ]
  %7619 = phi float [ %7752, %7749 ], [ %7587, %7614 ]
  %7620 = phi float [ %7753, %7749 ], [ %7588, %7614 ]
  %7621 = phi float [ %7754, %7749 ], [ %7589, %7614 ]
  %7622 = phi float [ %7755, %7749 ], [ %7590, %7614 ]
  %7623 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7616)  ; FirstbitLo(value)
  %7624 = add i32 %7623, %7597
  %7625 = and i32 %7623, 31
  %7626 = shl i32 1, %7625
  %7627 = xor i32 %7626, %7616
  %7628 = mul i32 %7624, 112
  %7629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7628, i32 undef)  ; BufferLoad(srv,index,wot)
  %7630 = extractvalue %dx.types.ResRet.f32 %7629, 0
  %7631 = extractvalue %dx.types.ResRet.f32 %7629, 1
  %7632 = extractvalue %dx.types.ResRet.f32 %7629, 2
  %7633 = or i32 %7628, 12
  %7634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7633, i32 undef)  ; BufferLoad(srv,index,wot)
  %7635 = extractvalue %dx.types.ResRet.f32 %7634, 0
  %7636 = add i32 %7628, 16
  %7637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7636, i32 undef)  ; BufferLoad(srv,index,wot)
  %7638 = extractvalue %dx.types.ResRet.f32 %7637, 0
  %7639 = extractvalue %dx.types.ResRet.f32 %7637, 1
  %7640 = extractvalue %dx.types.ResRet.f32 %7637, 2
  %7641 = add i32 %7628, 28
  %7642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7641, i32 undef)  ; BufferLoad(srv,index,wot)
  %7643 = extractvalue %dx.types.ResRet.i32 %7642, 0
  %7644 = add i32 %7628, 44
  %7645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7644, i32 undef)  ; BufferLoad(srv,index,wot)
  %7646 = extractvalue %dx.types.ResRet.f32 %7645, 0
  %7647 = add i32 %7628, 48
  %7648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7647, i32 undef)  ; BufferLoad(srv,index,wot)
  %7649 = extractvalue %dx.types.ResRet.f32 %7648, 0
  %7650 = extractvalue %dx.types.ResRet.f32 %7648, 1
  %7651 = extractvalue %dx.types.ResRet.f32 %7648, 2
  %7652 = extractvalue %dx.types.ResRet.f32 %7648, 3
  %7653 = add i32 %7628, 64
  %7654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7653, i32 undef)  ; BufferLoad(srv,index,wot)
  %7655 = extractvalue %dx.types.ResRet.f32 %7654, 0
  %7656 = extractvalue %dx.types.ResRet.f32 %7654, 1
  %7657 = extractvalue %dx.types.ResRet.f32 %7654, 2
  %7658 = extractvalue %dx.types.ResRet.f32 %7654, 3
  %7659 = add i32 %7628, 80
  %7660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7659, i32 undef)  ; BufferLoad(srv,index,wot)
  %7661 = extractvalue %dx.types.ResRet.f32 %7660, 1
  %7662 = extractvalue %dx.types.ResRet.f32 %7660, 2
  %7663 = add i32 %7628, 92
  %7664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7663, i32 undef)  ; BufferLoad(srv,index,wot)
  %7665 = extractvalue %dx.types.ResRet.i32 %7664, 0
  %7666 = call float @dx.op.dot3.f32(i32 55, float %7630, float %7631, float %7632, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7667 = select i1 %275, float %7661, float %7630
  %7668 = select i1 %275, float %7666, float %7631
  %7669 = select i1 %275, float %7662, float %7632
  %7670 = and i32 %7665, 65535
  %7671 = uitofp i32 %7670 to float
  %7672 = lshr i32 %7665, 16
  %7673 = uitofp i32 %7672 to float
  %7674 = and i32 %7643, 65535
  %7675 = and i32 %7643, 50331648
  %7676 = icmp eq i32 %7675, 33554432
  %7677 = fsub fast float %7649, %203
  %7678 = fsub fast float %7650, %204
  %7679 = fsub fast float %7651, %205
  %7680 = call float @dx.op.dot3.f32(i32 55, float %7677, float %7678, float %7679, float %7677, float %7678, float %7679)  ; Dot3(ax,ay,az,bx,by,bz)
  %7681 = call float @dx.op.unary.f32(i32 24, float %7680)  ; Sqrt(value)
  %7682 = fdiv fast float 1.000000e+00, %7681
  %7683 = fmul fast float %7682, %7677
  %7684 = fmul fast float %7682, %7678
  %7685 = fmul fast float %7682, %7679
  %7686 = fadd fast float %7681, %7635
  %7687 = fdiv fast float 1.000000e+00, %7686
  %7688 = fmul float %7646, %7687
  %7689 = fmul float %7688, %7688
  %7690 = call float @dx.op.unary.f32(i32 7, float %7689)  ; Saturate(value)
  br i1 %7676, label %7691, label %7712

; <label>:7691                                    ; preds = %7615
  %7692 = fmul fast float %7657, %7638
  %7693 = fmul fast float %7657, %7639
  %7694 = fmul fast float %7657, %7640
  %7695 = fadd fast float %7677, %7692
  %7696 = fadd fast float %7678, %7693
  %7697 = fadd fast float %7679, %7694
  %7698 = call float @dx.op.dot3.f32(i32 55, float %7695, float %7696, float %7697, float %7695, float %7696, float %7697)  ; Dot3(ax,ay,az,bx,by,bz)
  %7699 = call float @dx.op.unary.f32(i32 25, float %7698)  ; Rsqrt(value)
  %7700 = fmul fast float %7699, %7695
  %7701 = fmul fast float %7699, %7696
  %7702 = fmul fast float %7699, %7697
  %7703 = fsub fast float %203, %7649
  %7704 = fsub fast float %204, %7650
  %7705 = fsub fast float %205, %7651
  %7706 = fsub fast float -0.000000e+00, %7703
  %7707 = fsub fast float -0.000000e+00, %7704
  %7708 = fsub fast float -0.000000e+00, %7705
  %7709 = call float @dx.op.dot3.f32(i32 55, float %7706, float %7707, float %7708, float %7638, float %7639, float %7640)  ; Dot3(ax,ay,az,bx,by,bz)
  %7710 = fcmp fast ogt float %7709, 0.000000e+00
  %7711 = uitofp i1 %7710 to float
  br label %7712

; <label>:7712                                    ; preds = %7691, %7615
  %7713 = phi float [ %7711, %7691 ], [ 1.000000e+00, %7615 ]
  %7714 = phi float [ %7700, %7691 ], [ %7683, %7615 ]
  %7715 = phi float [ %7701, %7691 ], [ %7684, %7615 ]
  %7716 = phi float [ %7702, %7691 ], [ %7685, %7615 ]
  %7717 = call float @dx.op.dot3.f32(i32 55, float %7638, float %7639, float %7640, float %7714, float %7715, float %7716)  ; Dot3(ax,ay,az,bx,by,bz)
  %7718 = fmul fast float %7717, %7717
  %7719 = call float @dx.op.unary.f32(i32 7, float %7718)  ; Saturate(value)
  %7720 = fsub fast float 1.000000e+00, %7719
  %7721 = fmul fast float %7720, 5.000000e-01
  %7722 = fcmp fast ogt float %7717, 0.000000e+00
  %7723 = fsub fast float 1.000000e+00, %7721
  %7724 = select i1 %7722, float %7721, float %7723
  %7725 = fmul fast float %7724, %7673
  %7726 = fadd fast float %7725, %7671
  %7727 = fmul fast float %7726, 0x3EF0001000000000
  %7728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %55, float %7727, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7729 = extractvalue %dx.types.ResRet.f32 %7728, 0
  %7730 = fmul fast float %7717, %7655
  %7731 = fadd fast float %7730, %7656
  %7732 = call float @dx.op.unary.f32(i32 7, float %7731)  ; Saturate(value)
  %7733 = select i1 %7676, float 1.000000e+00, float %7732
  %7734 = select i1 %7676, float %7732, float 1.000000e+00
  %7735 = fmul fast float %7681, %7652
  %7736 = fsub fast float 1.000000e+00, %7735
  %7737 = fmul fast float %7736, %7658
  %7738 = call float @dx.op.unary.f32(i32 7, float %7737)  ; Saturate(value)
  %7739 = fmul fast float %7738, %7734
  %7740 = fmul fast float %7739, 2.000000e+00
  %7741 = fsub fast float 3.000000e+00, %7740
  %7742 = fmul fast float %7729, %7713
  %7743 = fmul fast float %7739, %7739
  %7744 = fmul fast float %7743, %7742
  %7745 = fmul fast float %7744, %7741
  %7746 = call float @dx.op.binary.f32(i32 36, float %7745, float %7745)  ; FMin(a,b)
  %7747 = call float @dx.op.binary.f32(i32 36, float %7745, float %7746)  ; FMin(a,b)
  %7748 = fcmp fast ogt float %7747, 0.000000e+00
  br i1 %7748, label %7757, label %7749, !dx.controlflow.hints !135

; <label>:7749                                    ; preds = %8141, %7903, %7712
  %7750 = phi float [ %7617, %7903 ], [ %7617, %7712 ], [ %8181, %8141 ]
  %7751 = phi float [ %7618, %7903 ], [ %7618, %7712 ], [ %8182, %8141 ]
  %7752 = phi float [ %7619, %7903 ], [ %7619, %7712 ], [ %8183, %8141 ]
  %7753 = phi float [ %7620, %7903 ], [ %7620, %7712 ], [ %8175, %8141 ]
  %7754 = phi float [ %7621, %7903 ], [ %7621, %7712 ], [ %8176, %8141 ]
  %7755 = phi float [ %7622, %7903 ], [ %7622, %7712 ], [ %8177, %8141 ]
  %7756 = icmp eq i32 %7616, %7626
  br i1 %7756, label %8184, label %7615

; <label>:7757                                    ; preds = %7712
  %7758 = icmp eq i32 %7674, 255
  br i1 %7758, label %7903, label %7759, !dx.controlflow.hints !136

; <label>:7759                                    ; preds = %7757
  %7760 = mul nuw nsw i32 %7674, 176
  %7761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7760, i32 undef)  ; BufferLoad(srv,index,wot)
  %7762 = extractvalue %dx.types.ResRet.f32 %7761, 0
  %7763 = extractvalue %dx.types.ResRet.f32 %7761, 1
  %7764 = extractvalue %dx.types.ResRet.f32 %7761, 2
  %7765 = extractvalue %dx.types.ResRet.f32 %7761, 3
  %7766 = add nuw nsw i32 %7760, 16
  %7767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7766, i32 undef)  ; BufferLoad(srv,index,wot)
  %7768 = extractvalue %dx.types.ResRet.f32 %7767, 0
  %7769 = extractvalue %dx.types.ResRet.f32 %7767, 1
  %7770 = add nuw nsw i32 %7760, 32
  %7771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7770, i32 undef)  ; BufferLoad(srv,index,wot)
  %7772 = extractvalue %dx.types.ResRet.f32 %7771, 0
  %7773 = extractvalue %dx.types.ResRet.f32 %7771, 1
  %7774 = extractvalue %dx.types.ResRet.f32 %7771, 2
  %7775 = add nuw nsw i32 %7760, 48
  %7776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7775, i32 undef)  ; BufferLoad(srv,index,wot)
  %7777 = extractvalue %dx.types.ResRet.f32 %7776, 0
  %7778 = extractvalue %dx.types.ResRet.f32 %7776, 1
  %7779 = extractvalue %dx.types.ResRet.f32 %7776, 2
  %7780 = extractvalue %dx.types.ResRet.f32 %7776, 3
  %7781 = add nuw nsw i32 %7760, 64
  %7782 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7781, i32 undef)  ; BufferLoad(srv,index,wot)
  %7783 = extractvalue %dx.types.ResRet.f32 %7782, 0
  %7784 = extractvalue %dx.types.ResRet.f32 %7782, 1
  %7785 = extractvalue %dx.types.ResRet.f32 %7782, 2
  %7786 = extractvalue %dx.types.ResRet.f32 %7782, 3
  %7787 = add nuw nsw i32 %7760, 80
  %7788 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7787, i32 undef)  ; BufferLoad(srv,index,wot)
  %7789 = extractvalue %dx.types.ResRet.f32 %7788, 0
  %7790 = extractvalue %dx.types.ResRet.f32 %7788, 1
  %7791 = extractvalue %dx.types.ResRet.f32 %7788, 2
  %7792 = extractvalue %dx.types.ResRet.f32 %7788, 3
  %7793 = add nuw nsw i32 %7760, 96
  %7794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7793, i32 undef)  ; BufferLoad(srv,index,wot)
  %7795 = extractvalue %dx.types.ResRet.f32 %7794, 0
  %7796 = extractvalue %dx.types.ResRet.f32 %7794, 1
  %7797 = extractvalue %dx.types.ResRet.f32 %7794, 2
  %7798 = extractvalue %dx.types.ResRet.f32 %7794, 3
  %7799 = bitcast float %7769 to i32
  %7800 = fmul fast float %7774, %123
  %7801 = fmul fast float %7774, %124
  %7802 = fmul fast float %7774, %125
  %7803 = fadd fast float %7800, %203
  %7804 = fadd fast float %7801, %204
  %7805 = fadd fast float %7802, %205
  %7806 = fmul fast float %7803, %7777
  %7807 = call float @dx.op.tertiary.f32(i32 46, float %7804, float %7783, float %7806)  ; FMad(a,b,c)
  %7808 = call float @dx.op.tertiary.f32(i32 46, float %7805, float %7789, float %7807)  ; FMad(a,b,c)
  %7809 = fadd fast float %7808, %7795
  %7810 = fmul fast float %7803, %7778
  %7811 = call float @dx.op.tertiary.f32(i32 46, float %7804, float %7784, float %7810)  ; FMad(a,b,c)
  %7812 = call float @dx.op.tertiary.f32(i32 46, float %7805, float %7790, float %7811)  ; FMad(a,b,c)
  %7813 = fadd fast float %7812, %7796
  %7814 = fmul fast float %7803, %7779
  %7815 = call float @dx.op.tertiary.f32(i32 46, float %7804, float %7785, float %7814)  ; FMad(a,b,c)
  %7816 = call float @dx.op.tertiary.f32(i32 46, float %7805, float %7791, float %7815)  ; FMad(a,b,c)
  %7817 = fadd fast float %7816, %7797
  %7818 = fmul fast float %7803, %7780
  %7819 = call float @dx.op.tertiary.f32(i32 46, float %7804, float %7786, float %7818)  ; FMad(a,b,c)
  %7820 = call float @dx.op.tertiary.f32(i32 46, float %7805, float %7792, float %7819)  ; FMad(a,b,c)
  %7821 = fadd fast float %7820, %7798
  %7822 = fdiv fast float %7809, %7821
  %7823 = fdiv fast float %7813, %7821
  %7824 = fdiv fast float %7817, %7821
  %7825 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7824)  ; FMax(a,b)
  %7826 = fmul fast float %286, 0x401921FB60000000
  %7827 = call float @dx.op.unary.f32(i32 13, float %7826)  ; Sin(value)
  %7828 = call float @dx.op.unary.f32(i32 12, float %7826)  ; Cos(value)
  %7829 = fmul fast float %7828, %7773
  %7830 = call float @dx.op.tertiary.f32(i32 46, float %7827, float %7773, float 0.000000e+00)  ; FMad(a,b,c)
  %7831 = fmul fast float %7773, %7827
  %7832 = fsub fast float -0.000000e+00, %7831
  %7833 = call float @dx.op.tertiary.f32(i32 46, float %7828, float %7773, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7834

; <label>:7834                                    ; preds = %7834, %7759
  %7835 = phi float [ 0.000000e+00, %7759 ], [ %7867, %7834 ]
  %7836 = phi float [ 0.000000e+00, %7759 ], [ %7869, %7834 ]
  %7837 = phi i32 [ 0, %7759 ], [ %7870, %7834 ]
  %7838 = mul i32 %7837, 2
  %7839 = add i32 0, %7838
  %7840 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7839
  %7841 = load float, float* %7840, align 4
  %7842 = mul i32 %7837, 2
  %7843 = add i32 1, %7842
  %7844 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7843
  %7845 = load float, float* %7844, align 4
  %7846 = fmul fast float %7829, %7841
  %7847 = call float @dx.op.tertiary.f32(i32 46, float %7845, float %7832, float %7846)  ; FMad(a,b,c)
  %7848 = fmul fast float %7841, %7830
  %7849 = call float @dx.op.tertiary.f32(i32 46, float %7845, float %7833, float %7848)  ; FMad(a,b,c)
  %7850 = fadd fast float %7847, %7822
  %7851 = fadd fast float %7849, %7823
  %7852 = fmul fast float %7850, %7768
  %7853 = fmul fast float %7851, %7768
  %7854 = call float @dx.op.binary.f32(i32 35, float %7852, float %7764)  ; FMax(a,b)
  %7855 = call float @dx.op.binary.f32(i32 35, float %7853, float %7764)  ; FMax(a,b)
  %7856 = call float @dx.op.binary.f32(i32 36, float %7854, float %7765)  ; FMin(a,b)
  %7857 = call float @dx.op.binary.f32(i32 36, float %7855, float %7765)  ; FMin(a,b)
  %7858 = fadd fast float %7856, %7762
  %7859 = fadd fast float %7857, %7763
  %7860 = uitofp i32 %7799 to float
  %7861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %7858, float %7859, float %7860, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7862 = extractvalue %dx.types.ResRet.f32 %7861, 0
  %7863 = fsub fast float %7862, %7825
  %7864 = fsub fast float %7863, %7772
  %7865 = fcmp fast ogt float %7864, 0.000000e+00
  %7866 = select i1 %7865, float 1.000000e+00, float 0.000000e+00
  %7867 = fadd fast float %7866, %7835
  %7868 = select i1 %7865, float %7864, float 0.000000e+00
  %7869 = fadd fast float %7868, %7836
  %7870 = add nuw nsw i32 %7837, 1
  %7871 = icmp eq i32 %7870, 8
  br i1 %7871, label %7872, label %7834

; <label>:7872                                    ; preds = %7834
  %7873 = fdiv fast float 1.000000e+00, %7867
  %7874 = fmul fast float %7873, %7869
  %7875 = fdiv fast float 1.000000e+00, %7825
  %7876 = fmul fast float %7874, %7875
  %7877 = call float @dx.op.unary.f32(i32 7, float %7876)  ; Saturate(value)
  %7878 = call float @dx.op.binary.f32(i32 35, float %7877, float 0.000000e+00)  ; FMax(a,b)
  %7879 = fmul fast float %7867, 1.250000e-01
  %7880 = call float @dx.op.unary.f32(i32 7, float %7879)  ; Saturate(value)
  %7881 = fmul fast float %7880, 2.000000e+00
  %7882 = fadd fast float %7881, -1.000000e+00
  %7883 = fcmp fast ogt float %7882, 0.000000e+00
  %7884 = fcmp fast olt float %7882, 0.000000e+00
  %7885 = zext i1 %7883 to i32
  %7886 = zext i1 %7884 to i32
  %7887 = sub nsw i32 %7885, %7886
  %7888 = sitofp i32 %7887 to float
  %7889 = fmul fast float %7888, %7882
  %7890 = fsub fast float 1.000000e+00, %7889
  %7891 = fmul fast float %7890, %7890
  %7892 = fmul fast float %7891, %7890
  %7893 = fsub fast float %7890, %7892
  %7894 = fmul fast float %7893, %7878
  %7895 = fsub fast float 1.000000e+00, %7892
  %7896 = fsub fast float %7895, %7894
  %7897 = fmul fast float %7888, 5.000000e-01
  %7898 = fmul fast float %7897, %7896
  %7899 = fsub fast float -5.000000e-01, %7898
  %7900 = fmul fast float %7899, %7733
  %7901 = fadd fast float %7900, 1.000000e+00
  %7902 = fmul fast float %7901, %7745
  br label %7903

; <label>:7903                                    ; preds = %7872, %7757
  %7904 = phi float [ %7902, %7872 ], [ %7745, %7757 ]
  %7905 = call float @dx.op.binary.f32(i32 36, float %7904, float %7904)  ; FMin(a,b)
  %7906 = call float @dx.op.binary.f32(i32 36, float %7904, float %7905)  ; FMin(a,b)
  %7907 = fcmp fast ogt float %7906, 0.000000e+00
  br i1 %7907, label %7908, label %7749, !dx.controlflow.hints !137

; <label>:7908                                    ; preds = %7903
  %7909 = fmul fast float %7904, %7667
  %7910 = fmul fast float %7904, %7668
  %7911 = fmul fast float %7904, %7669
  %7912 = fsub fast float %7651, %4299
  %7913 = fcmp fast ogt float %7912, 0.000000e+00
  %7914 = fsub fast float %205, %4299
  %7915 = fcmp fast ogt float %7914, 0.000000e+00
  %7916 = xor i1 %7915, %7913
  %7917 = fsub fast float %4299, %7651
  %7918 = fmul fast float %7917, 2.000000e+00
  %7919 = fadd fast float %7918, %7651
  %7920 = select i1 %7916, float %7651, float %7919
  %7921 = fsub fast float %7920, %205
  %7922 = call float @dx.op.dot3.f32(i32 55, float %7677, float %7678, float %7921, float %7677, float %7678, float %7921)  ; Dot3(ax,ay,az,bx,by,bz)
  %7923 = call float @dx.op.unary.f32(i32 25, float %7922)  ; Rsqrt(value)
  %7924 = fmul fast float %7923, %7677
  %7925 = fmul fast float %7923, %7678
  %7926 = fmul fast float %7923, %7921
  %7927 = fsub fast float %4299, %205
  %7928 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7927)  ; Dot3(ax,ay,az,bx,by,bz)
  %7929 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7924, float %7925, float %7926)  ; Dot3(ax,ay,az,bx,by,bz)
  %7930 = fdiv fast float 1.000000e+00, %7929
  %7931 = fmul fast float %7930, %7928
  %7932 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7914, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7933 = fcmp fast ogt float %7932, 0.000000e+00
  %7934 = fcmp fast olt float %7932, 0.000000e+00
  %7935 = zext i1 %7933 to i32
  %7936 = zext i1 %7934 to i32
  %7937 = sub nsw i32 %7935, %7936
  %7938 = sitofp i32 %7937 to float
  %7939 = fsub fast float %7920, %4299
  %7940 = call float @dx.op.dot3.f32(i32 55, float %7677, float %7678, float %7939, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7941 = fcmp fast ogt float %7940, 0.000000e+00
  %7942 = fcmp fast olt float %7940, 0.000000e+00
  %7943 = zext i1 %7941 to i32
  %7944 = zext i1 %7942 to i32
  %7945 = sub nsw i32 %7943, %7944
  %7946 = sitofp i32 %7945 to float
  %7947 = fcmp fast une float %7938, %7946
  br i1 %7947, label %7948, label %7958

; <label>:7948                                    ; preds = %7908
  %7949 = fmul fast float %7931, %7926
  %7950 = fmul fast float %7931, %7925
  %7951 = fmul fast float %7931, %7924
  %7952 = fmul fast float %7951, %7951
  %7953 = fmul fast float %7950, %7950
  %7954 = fadd fast float %7952, %7953
  %7955 = fmul fast float %7949, %7949
  %7956 = fadd fast float %7954, %7955
  %7957 = call float @dx.op.unary.f32(i32 24, float %7956)  ; Sqrt(value)
  br label %7970

; <label>:7958                                    ; preds = %7908
  %7959 = icmp slt i32 %7937, 0
  br i1 %7959, label %7960, label %7970

; <label>:7960                                    ; preds = %7958
  %7961 = fsub fast float %203, %7649
  %7962 = fsub fast float %204, %7650
  %7963 = fsub fast float %205, %7920
  %7964 = fmul fast float %7961, %7961
  %7965 = fmul fast float %7962, %7962
  %7966 = fadd fast float %7964, %7965
  %7967 = fmul fast float %7963, %7963
  %7968 = fadd fast float %7966, %7967
  %7969 = call float @dx.op.unary.f32(i32 24, float %7968)  ; Sqrt(value)
  br label %7970

; <label>:7970                                    ; preds = %7960, %7958, %7948
  %7971 = phi float [ %7957, %7948 ], [ %7969, %7960 ], [ 0.000000e+00, %7958 ]
  %7972 = and i1 %7915, %7913
  %7973 = fsub fast float -0.000000e+00, %7971
  %7974 = select i1 %7972, float -0.000000e+00, float %7973
  %7975 = fmul fast float %4296, 0x3FF7154760000000
  %7976 = fmul fast float %7975, %7974
  %7977 = fmul fast float %4297, 0x3FF7154760000000
  %7978 = fmul fast float %7977, %7974
  %7979 = fmul fast float %4298, 0x3FF7154760000000
  %7980 = fmul fast float %7979, %7974
  %7981 = call float @dx.op.unary.f32(i32 21, float %7976)  ; Exp(value)
  %7982 = call float @dx.op.unary.f32(i32 21, float %7978)  ; Exp(value)
  %7983 = call float @dx.op.unary.f32(i32 21, float %7980)  ; Exp(value)
  %7984 = call float @dx.op.unary.f32(i32 7, float %7981)  ; Saturate(value)
  %7985 = call float @dx.op.unary.f32(i32 7, float %7982)  ; Saturate(value)
  %7986 = call float @dx.op.unary.f32(i32 7, float %7983)  ; Saturate(value)
  %7987 = fmul fast float %7909, %7984
  %7988 = fmul fast float %7910, %7985
  %7989 = fmul fast float %7911, %7986
  %7990 = fsub fast float %7683, %5088
  %7991 = fsub fast float %7684, %5087
  %7992 = fsub fast float %7685, %5086
  %7993 = call float @dx.op.dot3.f32(i32 55, float %7990, float %7991, float %7992, float %7990, float %7991, float %7992)  ; Dot3(ax,ay,az,bx,by,bz)
  %7994 = call float @dx.op.unary.f32(i32 25, float %7993)  ; Rsqrt(value)
  %7995 = fmul fast float %7994, %7990
  %7996 = fmul fast float %7994, %7991
  %7997 = fmul fast float %7994, %7992
  %7998 = call float @dx.op.dot3.f32(i32 55, float %7683, float %7684, float %7685, float %5095, float %5096, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %7999 = call float @dx.op.dot3.f32(i32 55, float %5085, float %5084, float %5083, float %7995, float %7996, float %7997)  ; Dot3(ax,ay,az,bx,by,bz)
  %8000 = call float @dx.op.unary.f32(i32 7, float %7998)  ; Saturate(value)
  %8001 = fmul fast float %8000, %7690
  %8002 = fmul fast float %8000, %8000
  %8003 = fmul fast float %8002, %5128
  %8004 = call float @dx.op.unary.f32(i32 7, float %8003)  ; Saturate(value)
  %8005 = fmul fast float %8001, %8004
  %8006 = bitcast float %7680 to i32
  %8007 = ashr i32 %8006, 1
  %8008 = sub nsw i32 1597463007, %8007
  %8009 = bitcast i32 %8008 to float
  %8010 = fmul fast float %8009, %7677
  %8011 = fmul fast float %8009, %7678
  %8012 = fmul fast float %8009, %7679
  %8013 = fsub fast float %8010, %5088
  %8014 = fsub fast float %8011, %5087
  %8015 = fsub fast float %8012, %5086
  %8016 = call float @dx.op.dot3.f32(i32 55, float %8013, float %8014, float %8015, float %8013, float %8014, float %8015)  ; Dot3(ax,ay,az,bx,by,bz)
  %8017 = call float @dx.op.unary.f32(i32 25, float %8016)  ; Rsqrt(value)
  %8018 = fmul fast float %8013, %8017
  %8019 = fmul fast float %8014, %8017
  %8020 = fmul fast float %8015, %8017
  %8021 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5096, float %5097, float %8018, float %8019, float %8020)  ; Dot3(ax,ay,az,bx,by,bz)
  %8022 = fmul fast float %8021, %8021
  %8023 = call float @dx.op.unary.f32(i32 6, float %7998)  ; FAbs(value)
  %8024 = fsub fast float 1.000000e+00, %5121
  %8025 = fmul fast float %5103, %5103
  %8026 = fmul fast float %8025, %8024
  %8027 = fadd fast float %8026, %5121
  %8028 = bitcast float %8027 to i32
  %8029 = ashr i32 %8028, 1
  %8030 = add nsw i32 %8029, 532487669
  %8031 = bitcast i32 %8030 to float
  %8032 = fadd fast float %8031, %5103
  %8033 = fmul fast float %5121, %8022
  %8034 = fsub fast float 1.000000e+00, %8022
  %8035 = fadd fast float %8034, %8033
  %8036 = fmul fast float %8023, %8023
  %8037 = fmul fast float %8036, %8024
  %8038 = fadd fast float %8037, %5121
  %8039 = bitcast float %8038 to i32
  %8040 = ashr i32 %8039, 1
  %8041 = add nsw i32 %8040, 532487669
  %8042 = bitcast i32 %8041 to float
  %8043 = fadd fast float %8042, %8023
  %8044 = fmul fast float %8035, %8035
  %8045 = fmul fast float %8044, %8032
  %8046 = fmul fast float %8045, %8043
  %8047 = fdiv fast float 1.000000e+00, %8046
  %8048 = bitcast float %5121 to i32
  %8049 = sitofp i32 %8048 to float
  %8050 = fmul fast float %8049, 0x3FE7F73180000000
  %8051 = fadd fast float %8050, 0x41AFE27C40000000
  %8052 = fptosi float %8051 to i32
  %8053 = bitcast i32 %8052 to float
  %8054 = fmul fast float %7646, 0x3FD80E9D60000000
  %8055 = fmul fast float %8054, %8009
  %8056 = fadd fast float %8053, %8055
  %8057 = bitcast float %8056 to i32
  %8058 = sub nsw i32 2129859010, %8057
  %8059 = bitcast i32 %8058 to float
  %8060 = fmul fast float %5121, %8047
  %8061 = fmul fast float %8060, %8053
  %8062 = fmul fast float %8061, %8059
  %8063 = call float @dx.op.unary.f32(i32 6, float %7999)  ; FAbs(value)
  %8064 = fsub fast float 1.000000e+00, %8063
  %8065 = bitcast float %8064 to i32
  %8066 = sitofp i32 %8065 to float
  %8067 = fmul fast float %8066, 5.000000e+00
  %8068 = fadd fast float %8067, 0xC1EFBF8940000000
  %8069 = fptosi float %8068 to i32
  %8070 = bitcast i32 %8069 to float
  %8071 = fsub fast float 1.000000e+00, %5092
  %8072 = fsub fast float 1.000000e+00, %5093
  %8073 = fsub fast float 1.000000e+00, %5101
  %8074 = fmul fast float %8070, %8071
  %8075 = fmul fast float %8070, %8072
  %8076 = fmul fast float %8070, %8073
  %8077 = fadd fast float %8074, %5092
  %8078 = fadd fast float %8075, %5093
  %8079 = fadd fast float %8076, %5101
  br i1 %5240, label %8080, label %8103

; <label>:8080                                    ; preds = %7970
  %8081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3895, float %8063, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8082 = extractvalue %dx.types.ResRet.f32 %8081, 0
  %8083 = extractvalue %dx.types.ResRet.f32 %8081, 1
  %8084 = extractvalue %dx.types.ResRet.f32 %8081, 2
  %8085 = fadd fast float %8082, -5.000000e-01
  %8086 = fadd fast float %8083, -5.000000e-01
  %8087 = fadd fast float %8084, -5.000000e-01
  %8088 = fmul fast float %5092, 4.000000e+00
  %8089 = fmul fast float %8088, %8071
  %8090 = fmul fast float %8089, %8085
  %8091 = fmul fast float %5093, 4.000000e+00
  %8092 = fmul fast float %8091, %8072
  %8093 = fmul fast float %8092, %8086
  %8094 = fmul fast float %5101, 4.000000e+00
  %8095 = fmul fast float %8094, %8073
  %8096 = fmul fast float %8095, %8087
  %8097 = fadd fast float %8090, %8077
  %8098 = fadd fast float %8093, %8078
  %8099 = fadd fast float %8096, %8079
  %8100 = call float @dx.op.unary.f32(i32 7, float %8097)  ; Saturate(value)
  %8101 = call float @dx.op.unary.f32(i32 7, float %8098)  ; Saturate(value)
  %8102 = call float @dx.op.unary.f32(i32 7, float %8099)  ; Saturate(value)
  br label %8103

; <label>:8103                                    ; preds = %8080, %7970
  %8104 = phi float [ %8100, %8080 ], [ %8077, %7970 ]
  %8105 = phi float [ %8101, %8080 ], [ %8078, %7970 ]
  %8106 = phi float [ %8102, %8080 ], [ %8079, %7970 ]
  %8107 = fmul fast float %7998, 9.843750e-01
  %8108 = fadd fast float %8107, 7.812500e-03
  %8109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %8108, float %5230, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8110 = extractvalue %dx.types.ResRet.f32 %8109, 2
  %8111 = extractvalue %dx.types.ResRet.f32 %8109, 3
  %8112 = fmul fast float %8110, %5092
  %8113 = fmul fast float %8110, %5093
  %8114 = fmul fast float %8110, %5101
  %8115 = fadd fast float %8112, %8111
  %8116 = fadd fast float %8113, %8111
  %8117 = fadd fast float %8114, %8111
  br i1 %5240, label %8118, label %8141

; <label>:8118                                    ; preds = %8103
  %8119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3895, float %7998, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8120 = extractvalue %dx.types.ResRet.f32 %8119, 0
  %8121 = extractvalue %dx.types.ResRet.f32 %8119, 1
  %8122 = extractvalue %dx.types.ResRet.f32 %8119, 2
  %8123 = fadd fast float %8120, -5.000000e-01
  %8124 = fadd fast float %8121, -5.000000e-01
  %8125 = fadd fast float %8122, -5.000000e-01
  %8126 = fmul fast float %5092, 4.000000e+00
  %8127 = fmul fast float %8126, %8071
  %8128 = fmul fast float %8127, %8123
  %8129 = fmul fast float %5093, 4.000000e+00
  %8130 = fmul fast float %8129, %8072
  %8131 = fmul fast float %8130, %8124
  %8132 = fmul fast float %5101, 4.000000e+00
  %8133 = fmul fast float %8132, %8073
  %8134 = fmul fast float %8133, %8125
  %8135 = fadd fast float %8128, %8115
  %8136 = fadd fast float %8131, %8116
  %8137 = fadd fast float %8134, %8117
  %8138 = call float @dx.op.unary.f32(i32 7, float %8135)  ; Saturate(value)
  %8139 = call float @dx.op.unary.f32(i32 7, float %8136)  ; Saturate(value)
  %8140 = call float @dx.op.unary.f32(i32 7, float %8137)  ; Saturate(value)
  br label %8141

; <label>:8141                                    ; preds = %8118, %8103
  %8142 = phi float [ %8138, %8118 ], [ %8115, %8103 ]
  %8143 = phi float [ %8139, %8118 ], [ %8116, %8103 ]
  %8144 = phi float [ %8140, %8118 ], [ %8117, %8103 ]
  %8145 = call float @dx.op.binary.f32(i32 35, float %8143, float %8144)  ; FMax(a,b)
  %8146 = call float @dx.op.binary.f32(i32 35, float %8142, float %8145)  ; FMax(a,b)
  %8147 = fsub fast float 1.000000e+00, %8146
  %8148 = fmul fast float %8104, %8062
  %8149 = fmul fast float %8105, %8062
  %8150 = fmul fast float %8106, %8062
  %8151 = fsub fast float 1.000000e+00, %7999
  %8152 = bitcast float %8151 to i32
  %8153 = sitofp i32 %8152 to float
  %8154 = fmul fast float %8153, 5.000000e+00
  %8155 = fadd fast float %8154, 0xC1EFBF8940000000
  %8156 = fptosi float %8155 to i32
  %8157 = bitcast i32 %8156 to float
  %8158 = fmul fast float %8157, %3896
  %8159 = fmul fast float %8147, %8158
  %8160 = fmul fast float %8159, %5782
  %8161 = fmul fast float %8159, %5783
  %8162 = fmul fast float %8159, %5784
  %8163 = fadd fast float %8160, %8148
  %8164 = fadd fast float %8161, %8149
  %8165 = fadd fast float %8162, %8150
  %8166 = fmul fast float %7987, %3892
  %8167 = fmul fast float %8166, %8005
  %8168 = fmul fast float %8167, %8147
  %8169 = fmul fast float %7988, %3892
  %8170 = fmul fast float %8169, %8005
  %8171 = fmul fast float %8170, %8147
  %8172 = fmul fast float %7989, %3892
  %8173 = fmul fast float %8172, %8005
  %8174 = fmul fast float %8173, %8147
  %8175 = fadd fast float %8168, %7620
  %8176 = fadd fast float %8171, %7621
  %8177 = fadd fast float %8174, %7622
  %8178 = fmul fast float %8167, %8163
  %8179 = fmul fast float %8170, %8164
  %8180 = fmul fast float %8173, %8165
  %8181 = fadd fast float %8178, %7617
  %8182 = fadd fast float %8179, %7618
  %8183 = fadd fast float %8180, %7619
  br label %7749

; <label>:8184                                    ; preds = %7749
  br label %8185

; <label>:8185                                    ; preds = %8184, %7583
  %8186 = phi float [ %7585, %7583 ], [ %7750, %8184 ]
  %8187 = phi float [ %7586, %7583 ], [ %7751, %8184 ]
  %8188 = phi float [ %7587, %7583 ], [ %7752, %8184 ]
  %8189 = phi float [ %7588, %7583 ], [ %7753, %8184 ]
  %8190 = phi float [ %7589, %7583 ], [ %7754, %8184 ]
  %8191 = phi float [ %7590, %7583 ], [ %7755, %8184 ]
  %8192 = add i32 %7584, 1
  %8193 = icmp ugt i32 %8192, %7580
  br i1 %8193, label %8194, label %7583

; <label>:8194                                    ; preds = %8185
  br label %8195

; <label>:8195                                    ; preds = %8194, %7533, %7523
  %8196 = phi float [ %7524, %7523 ], [ %7524, %7533 ], [ %8186, %8194 ]
  %8197 = phi float [ %7525, %7523 ], [ %7525, %7533 ], [ %8187, %8194 ]
  %8198 = phi float [ %7526, %7523 ], [ %7526, %7533 ], [ %8188, %8194 ]
  %8199 = phi float [ %7527, %7523 ], [ %7527, %7533 ], [ %8189, %8194 ]
  %8200 = phi float [ %7528, %7523 ], [ %7528, %7533 ], [ %8190, %8194 ]
  %8201 = phi float [ %7529, %7523 ], [ %7529, %7533 ], [ %8191, %8194 ]
  %8202 = fmul fast float %3892, %3892
  %8203 = fsub fast float 1.000000e+00, %8202
  %8204 = call float @dx.op.dot3.f32(i32 55, float %8203, float %8203, float %8203, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8205 = fsub fast float 1.000000e+00, %8204
  %8206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8207 = extractvalue %dx.types.CBufRet.f32 %8206, 0
  %8208 = fmul fast float %8207, %5788
  %8209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8210 = extractvalue %dx.types.CBufRet.f32 %8209, 3
  %8211 = fsub fast float 1.000000e+00, %3899
  %8212 = call float @dx.op.unary.f32(i32 7, float %8211)  ; Saturate(value)
  %8213 = fadd fast float %8201, %3898
  %8214 = fmul fast float %8213, %3899
  %8215 = fmul fast float %8212, %8210
  %8216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8217 = extractvalue %dx.types.CBufRet.f32 %8216, 3
  %8218 = fmul fast float %8199, %5089
  %8219 = fmul fast float %8200, %5090
  %8220 = fmul fast float %8201, %5091
  %8221 = fcmp fast ogt float %103, %238
  %8222 = and i1 %8221, %4302
  %8223 = or i1 %4308, %8222
  %8224 = icmp eq i32 %4301, 2
  %8225 = fcmp fast ole float %103, %238
  %8226 = and i1 %8225, %8224
  %8227 = or i1 %8226, %8223
  br i1 %8222, label %8228, label %8485

; <label>:8228                                    ; preds = %8195
  %8229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8230 = extractvalue %dx.types.CBufRet.f32 %8229, 2
  %8231 = extractvalue %dx.types.CBufRet.f32 %8229, 3
  %8232 = fmul fast float %8230, %116
  %8233 = fmul fast float %8231, %117
  %8234 = call float @dx.op.unary.f32(i32 7, float %8232)  ; Saturate(value)
  %8235 = call float @dx.op.unary.f32(i32 7, float %8233)  ; Saturate(value)
  %8236 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8234, float %8235, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8237 = extractvalue %dx.types.ResRet.f32 %8236, 0
  %8238 = extractvalue %dx.types.ResRet.f32 %8236, 1
  %8239 = extractvalue %dx.types.ResRet.f32 %8236, 2
  %8240 = extractvalue %dx.types.ResRet.f32 %8236, 3
  %8241 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8234, float %8235, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8242 = extractvalue %dx.types.ResRet.f32 %8241, 0
  %8243 = extractvalue %dx.types.ResRet.f32 %8241, 1
  %8244 = extractvalue %dx.types.ResRet.f32 %8241, 2
  %8245 = extractvalue %dx.types.ResRet.f32 %8241, 3
  %8246 = call float @dx.op.binary.f32(i32 35, float %8238, float %8239)  ; FMax(a,b)
  %8247 = call float @dx.op.binary.f32(i32 35, float %8237, float %8246)  ; FMax(a,b)
  %8248 = call float @dx.op.binary.f32(i32 35, float %8247, float %8240)  ; FMax(a,b)
  %8249 = call float @dx.op.binary.f32(i32 36, float %8243, float %8244)  ; FMin(a,b)
  %8250 = call float @dx.op.binary.f32(i32 36, float %8242, float %8249)  ; FMin(a,b)
  %8251 = call float @dx.op.binary.f32(i32 36, float %8250, float %8245)  ; FMin(a,b)
  %8252 = fmul fast float %8248, 2.550000e+02
  %8253 = fadd fast float %8252, 0x3F70101020000000
  %8254 = fptoui float %8253 to i32
  %8255 = fmul fast float %8251, 2.550000e+02
  %8256 = fadd fast float %8255, 0x3F70101020000000
  %8257 = fptoui float %8256 to i32
  %8258 = icmp ult i32 %8254, %8257
  br i1 %8258, label %8259, label %8427

; <label>:8259                                    ; preds = %8228
  %8260 = fcmp fast ogt float %102, 9.843750e-01
  %8261 = fadd fast float %103, -4.000000e+00
  %8262 = select i1 %8260, float -4.000000e+00, float %8261
  %8263 = call float @dx.op.binary.f32(i32 35, float %8262, float 0.000000e+00)  ; FMax(a,b)
  %8264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8265 = extractvalue %dx.types.CBufRet.f32 %8264, 0
  %8266 = fadd fast float %8265, %8263
  %8267 = extractvalue %dx.types.CBufRet.f32 %8264, 2
  %8268 = fmul fast float %8266, %8267
  %8269 = call float @dx.op.unary.f32(i32 23, float %8268)  ; Log(value)
  %8270 = extractvalue %dx.types.CBufRet.f32 %8264, 3
  %8271 = fmul fast float %8270, %8269
  %8272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8273 = extractvalue %dx.types.CBufRet.f32 %8272, 2
  %8274 = fmul fast float %8271, %8273
  %8275 = call float @dx.op.unary.f32(i32 7, float %8274)  ; Saturate(value)
  %8276 = uitofp i32 %8254 to float
  %8277 = uitofp i32 %8257 to float
  %8278 = fadd fast float %8276, 5.000000e-01
  %8279 = fadd fast float %8277, 5.000000e-01
  %8280 = fmul fast float %8273, %8278
  %8281 = fmul fast float %8273, %8279
  %8282 = fadd fast float %8280, 0x3F0FFB4800000000
  %8283 = fadd fast float %8281, 0xBF0FFB4800000000
  %8284 = call float @dx.op.binary.f32(i32 35, float %8275, float %8282)  ; FMax(a,b)
  %8285 = call float @dx.op.binary.f32(i32 36, float %8284, float %8283)  ; FMin(a,b)
  %8286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8287 = extractvalue %dx.types.CBufRet.f32 %8286, 1
  %8288 = extractvalue %dx.types.CBufRet.f32 %8286, 2
  %8289 = extractvalue %dx.types.CBufRet.f32 %8286, 0
  %8290 = fmul fast float %8287, %8285
  %8291 = fadd fast float %8289, %8290
  %8292 = fadd fast float %8289, %8288
  %8293 = fsub fast float %8287, %8288
  %8294 = fadd fast float %8293, %8289
  %8295 = call float @dx.op.binary.f32(i32 35, float %8291, float %8292)  ; FMax(a,b)
  %8296 = call float @dx.op.binary.f32(i32 36, float %8295, float %8294)  ; FMin(a,b)
  %8297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %8234, float %8235, float %8296, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8298 = extractvalue %dx.types.ResRet.f32 %8297, 0
  %8299 = extractvalue %dx.types.ResRet.f32 %8297, 1
  %8300 = extractvalue %dx.types.ResRet.f32 %8297, 2
  %8301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8302 = extractvalue %dx.types.CBufRet.i32 %8301, 0
  %8303 = extractvalue %dx.types.CBufRet.i32 %8301, 1
  %8304 = uitofp i32 %8302 to float
  %8305 = uitofp i32 %8303 to float
  %8306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8307 = extractvalue %dx.types.CBufRet.f32 %8306, 0
  %8308 = extractvalue %dx.types.CBufRet.f32 %8306, 1
  %8309 = fmul fast float %8304, %8234
  %8310 = fmul fast float %8305, %8235
  %8311 = fadd fast float %8309, -5.000000e-01
  %8312 = fadd fast float %8310, -5.000000e-01
  %8313 = call float @dx.op.unary.f32(i32 22, float %8311)  ; Frc(value)
  %8314 = call float @dx.op.unary.f32(i32 22, float %8312)  ; Frc(value)
  %8315 = fmul fast float %8313, %8313
  %8316 = fmul fast float %8315, %8313
  %8317 = fsub fast float 3.000000e+00, %8313
  %8318 = fmul fast float %8315, %8317
  %8319 = fmul fast float %8313, 3.000000e+00
  %8320 = fmul fast float %8316, 3.000000e+00
  %8321 = fmul fast float %8315, 6.000000e+00
  %8322 = fsub fast float %8320, %8321
  %8323 = fadd fast float %8322, 4.000000e+00
  %8324 = fmul fast float %8323, 0x3FC5555560000000
  %8325 = fmul fast float %8316, -3.000000e+00
  %8326 = fadd fast float %8315, %8313
  %8327 = fmul fast float %8326, 3.000000e+00
  %8328 = fadd fast float %8325, 1.000000e+00
  %8329 = fadd fast float %8328, %8327
  %8330 = fmul fast float %8316, 0x3FC5555560000000
  %8331 = fmul fast float %8314, %8314
  %8332 = fmul fast float %8331, %8314
  %8333 = fsub fast float 3.000000e+00, %8314
  %8334 = fmul fast float %8331, %8333
  %8335 = fmul fast float %8314, 3.000000e+00
  %8336 = fmul fast float %8332, 3.000000e+00
  %8337 = fmul fast float %8331, 6.000000e+00
  %8338 = fsub fast float %8336, %8337
  %8339 = fadd fast float %8338, 4.000000e+00
  %8340 = fmul fast float %8339, 0x3FC5555560000000
  %8341 = fmul fast float %8332, -3.000000e+00
  %8342 = fadd fast float %8331, %8314
  %8343 = fmul fast float %8342, 3.000000e+00
  %8344 = fadd fast float %8341, 1.000000e+00
  %8345 = fadd fast float %8344, %8343
  %8346 = fmul fast float %8332, 0x3FC5555560000000
  %8347 = fadd fast float %8313, 1.000000e+00
  %8348 = fsub fast float 1.000000e+00, %8319
  %8349 = fadd fast float %8348, %8318
  %8350 = fadd fast float %8349, %8323
  %8351 = fmul fast float %8350, 0x3FC5555560000000
  %8352 = fdiv fast float %8324, %8351
  %8353 = fsub fast float %8347, %8352
  %8354 = fsub fast float 1.000000e+00, %8313
  %8355 = fadd fast float %8329, %8316
  %8356 = fmul fast float %8355, 0x3FC5555560000000
  %8357 = fdiv fast float %8330, %8356
  %8358 = fadd fast float %8354, %8357
  %8359 = fadd fast float %8314, 1.000000e+00
  %8360 = fsub fast float 1.000000e+00, %8335
  %8361 = fadd fast float %8360, %8334
  %8362 = fadd fast float %8361, %8339
  %8363 = fmul fast float %8362, 0x3FC5555560000000
  %8364 = fdiv fast float %8340, %8363
  %8365 = fsub fast float %8359, %8364
  %8366 = fsub fast float 1.000000e+00, %8314
  %8367 = fadd fast float %8345, %8332
  %8368 = fmul fast float %8367, 0x3FC5555560000000
  %8369 = fdiv fast float %8346, %8368
  %8370 = fadd fast float %8369, %8366
  %8371 = fmul fast float %8353, %8307
  %8372 = fsub fast float %8234, %8371
  %8373 = fmul fast float %8358, %8307
  %8374 = fadd fast float %8373, %8234
  %8375 = fmul fast float %8370, %8308
  %8376 = fadd fast float %8375, %8235
  %8377 = fmul fast float %8365, %8308
  %8378 = fsub fast float %8235, %8377
  %8379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8372, float %8378, float %8296, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8380 = extractvalue %dx.types.ResRet.f32 %8379, 0
  %8381 = extractvalue %dx.types.ResRet.f32 %8379, 1
  %8382 = extractvalue %dx.types.ResRet.f32 %8379, 2
  %8383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8374, float %8378, float %8296, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8384 = extractvalue %dx.types.ResRet.f32 %8383, 0
  %8385 = extractvalue %dx.types.ResRet.f32 %8383, 1
  %8386 = extractvalue %dx.types.ResRet.f32 %8383, 2
  %8387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8372, float %8376, float %8296, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8388 = extractvalue %dx.types.ResRet.f32 %8387, 0
  %8389 = extractvalue %dx.types.ResRet.f32 %8387, 1
  %8390 = extractvalue %dx.types.ResRet.f32 %8387, 2
  %8391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8374, float %8376, float %8296, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8392 = extractvalue %dx.types.ResRet.f32 %8391, 0
  %8393 = extractvalue %dx.types.ResRet.f32 %8391, 1
  %8394 = extractvalue %dx.types.ResRet.f32 %8391, 2
  %8395 = fsub fast float %8388, %8380
  %8396 = fsub fast float %8389, %8381
  %8397 = fsub fast float %8390, %8382
  %8398 = fmul fast float %8395, %8368
  %8399 = fmul fast float %8396, %8368
  %8400 = fmul fast float %8397, %8368
  %8401 = fadd fast float %8398, %8380
  %8402 = fadd fast float %8399, %8381
  %8403 = fadd fast float %8400, %8382
  %8404 = fsub fast float %8392, %8384
  %8405 = fsub fast float %8393, %8385
  %8406 = fsub fast float %8394, %8386
  %8407 = fmul fast float %8404, %8368
  %8408 = fmul fast float %8405, %8368
  %8409 = fmul fast float %8406, %8368
  %8410 = fsub fast float %8384, %8401
  %8411 = fadd fast float %8410, %8407
  %8412 = fsub fast float %8385, %8402
  %8413 = fadd fast float %8412, %8408
  %8414 = fsub fast float %8386, %8403
  %8415 = fadd fast float %8414, %8409
  %8416 = fmul fast float %8411, %8356
  %8417 = fmul fast float %8413, %8356
  %8418 = fmul fast float %8415, %8356
  %8419 = fadd fast float %8416, %8401
  %8420 = fadd fast float %8417, %8402
  %8421 = fadd fast float %8418, %8403
  %8422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8423 = extractvalue %dx.types.CBufRet.f32 %8422, 1
  %8424 = fmul fast float %8419, %8423
  %8425 = fmul fast float %8420, %8423
  %8426 = fmul fast float %8421, %8423
  br label %8427

; <label>:8427                                    ; preds = %8259, %8228
  %8428 = phi float [ %8298, %8259 ], [ 1.000000e+00, %8228 ]
  %8429 = phi float [ %8299, %8259 ], [ 1.000000e+00, %8228 ]
  %8430 = phi float [ %8300, %8259 ], [ 1.000000e+00, %8228 ]
  %8431 = phi float [ %8424, %8259 ], [ 0.000000e+00, %8228 ]
  %8432 = phi float [ %8425, %8259 ], [ 0.000000e+00, %8228 ]
  %8433 = phi float [ %8426, %8259 ], [ 0.000000e+00, %8228 ]
  %8434 = fmul fast float %8431, %8205
  %8435 = fmul fast float %8432, %8205
  %8436 = fmul fast float %8433, %8205
  %8437 = call float @dx.op.dot3.f32(i32 55, float %8428, float %8429, float %8430, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8438 = call float @dx.op.dot3.f32(i32 55, float %8434, float %8435, float %8436, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8439 = select i1 %275, float %8437, float %8428
  %8440 = select i1 %275, float %8437, float %8429
  %8441 = select i1 %275, float 1.000000e+00, float %8430
  %8442 = select i1 %275, float %8438, float %8434
  %8443 = select i1 %275, float 0.000000e+00, float %8435
  %8444 = select i1 %275, float 0.000000e+00, float %8436
  %8445 = fmul fast float %8439, %8218
  %8446 = fmul fast float %8440, %8219
  %8447 = fmul fast float %8441, %8220
  %8448 = fadd fast float %8445, %8442
  %8449 = fadd fast float %8446, %8443
  %8450 = fadd fast float %8444, %8447
  %8451 = fmul fast float %8439, %8196
  %8452 = fmul fast float %8440, %8197
  %8453 = fmul fast float %8441, %8198
  %8454 = fmul fast float %152, %8230
  %8455 = fmul fast float %154, %8231
  %8456 = fsub fast float 1.000000e+00, %8454
  %8457 = fsub fast float 1.000000e+00, %8455
  %8458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8459 = extractvalue %dx.types.CBufRet.f32 %8458, 0
  %8460 = extractvalue %dx.types.CBufRet.f32 %8458, 1
  %8461 = extractvalue %dx.types.CBufRet.f32 %8458, 2
  %8462 = fmul fast float %8456, %8459
  %8463 = fmul fast float %8456, %8460
  %8464 = fmul fast float %8456, %8461
  %8465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8466 = extractvalue %dx.types.CBufRet.f32 %8465, 0
  %8467 = extractvalue %dx.types.CBufRet.f32 %8465, 1
  %8468 = extractvalue %dx.types.CBufRet.f32 %8465, 2
  %8469 = fmul fast float %8457, %8466
  %8470 = fmul fast float %8457, %8467
  %8471 = fmul fast float %8457, %8468
  %8472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8473 = extractvalue %dx.types.CBufRet.f32 %8472, 0
  %8474 = extractvalue %dx.types.CBufRet.f32 %8472, 1
  %8475 = extractvalue %dx.types.CBufRet.f32 %8472, 2
  %8476 = fadd fast float %8469, %8473
  %8477 = fadd fast float %8476, %8462
  %8478 = fadd fast float %8470, %8474
  %8479 = fadd fast float %8478, %8463
  %8480 = fadd fast float %8471, %8475
  %8481 = fadd fast float %8480, %8464
  %8482 = fmul fast float %8477, %238
  %8483 = fmul fast float %8479, %238
  %8484 = fmul fast float %8481, %238
  br label %8485

; <label>:8485                                    ; preds = %8427, %8195
  %8486 = phi float [ %8482, %8427 ], [ %203, %8195 ]
  %8487 = phi float [ %8483, %8427 ], [ %204, %8195 ]
  %8488 = phi float [ %8484, %8427 ], [ %205, %8195 ]
  %8489 = phi float [ %238, %8427 ], [ %103, %8195 ]
  %8490 = phi float [ %8448, %8427 ], [ %8218, %8195 ]
  %8491 = phi float [ %8449, %8427 ], [ %8219, %8195 ]
  %8492 = phi float [ %8450, %8427 ], [ %8220, %8195 ]
  %8493 = phi float [ %8451, %8427 ], [ %8196, %8195 ]
  %8494 = phi float [ %8452, %8427 ], [ %8197, %8195 ]
  %8495 = phi float [ %8453, %8427 ], [ %8198, %8195 ]
  %8496 = phi float [ %8428, %8427 ], [ 1.000000e+00, %8195 ]
  br i1 %8227, label %9651, label %8497

; <label>:8497                                    ; preds = %8485
  %8498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8499 = extractvalue %dx.types.CBufRet.f32 %8498, 0
  %8500 = extractvalue %dx.types.CBufRet.f32 %8498, 1
  %8501 = extractvalue %dx.types.CBufRet.f32 %8498, 2
  %8502 = extractvalue %dx.types.CBufRet.f32 %8498, 3
  %8503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8504 = extractvalue %dx.types.CBufRet.f32 %8503, 0
  %8505 = extractvalue %dx.types.CBufRet.f32 %8503, 1
  %8506 = extractvalue %dx.types.CBufRet.f32 %8503, 2
  %8507 = extractvalue %dx.types.CBufRet.f32 %8503, 3
  %8508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8509 = extractvalue %dx.types.CBufRet.f32 %8508, 0
  %8510 = extractvalue %dx.types.CBufRet.f32 %8508, 1
  %8511 = extractvalue %dx.types.CBufRet.f32 %8508, 2
  %8512 = extractvalue %dx.types.CBufRet.f32 %8508, 3
  %8513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8514 = extractvalue %dx.types.CBufRet.f32 %8513, 0
  %8515 = extractvalue %dx.types.CBufRet.f32 %8513, 1
  %8516 = extractvalue %dx.types.CBufRet.f32 %8513, 2
  %8517 = extractvalue %dx.types.CBufRet.f32 %8513, 3
  %8518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8519 = extractvalue %dx.types.CBufRet.f32 %8518, 3
  %8520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8521 = extractvalue %dx.types.CBufRet.f32 %8520, 3
  %8522 = extractvalue %dx.types.CBufRet.f32 %8520, 0
  %8523 = extractvalue %dx.types.CBufRet.f32 %8520, 1
  %8524 = extractvalue %dx.types.CBufRet.f32 %8520, 2
  %8525 = fcmp fast olt float %8524, -5.000000e-01
  %8526 = call float @dx.op.dot3.f32(i32 55, float %8486, float %8487, float %8488, float %8486, float %8487, float %8488)  ; Dot3(ax,ay,az,bx,by,bz)
  %8527 = call float @dx.op.unary.f32(i32 25, float %8526)  ; Rsqrt(value)
  %8528 = fmul fast float %8527, %8526
  %8529 = fmul fast float %8527, %8486
  %8530 = fmul fast float %8527, %8487
  %8531 = fmul fast float %8527, %8488
  %8532 = fadd fast float %8528, %8502
  %8533 = call float @dx.op.dot3.f32(i32 55, float %8529, float %8530, float %8531, float %8499, float %8500, float %8501)  ; Dot3(ax,ay,az,bx,by,bz)
  %8534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8535 = extractvalue %dx.types.CBufRet.i32 %8534, 1
  %8536 = and i32 %8535, 1
  %8537 = icmp ne i32 %8536, 0
  %8538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8539 = extractvalue %dx.types.CBufRet.f32 %8538, 2
  %8540 = fcmp fast ogt float %8539, 0.000000e+00
  %8541 = and i1 %8537, %8540
  br i1 %8541, label %8542, label %8948, !dx.controlflow.hints !138

; <label>:8542                                    ; preds = %8497
  %8543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8544 = extractvalue %dx.types.CBufRet.f32 %8543, 3
  %8545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8546 = extractvalue %dx.types.CBufRet.f32 %8545, 2
  %8547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8548 = extractvalue %dx.types.CBufRet.f32 %8547, 2
  %8549 = fsub fast float %8546, %8548
  %8550 = and i32 %8535, 2
  %8551 = extractvalue %dx.types.CBufRet.i32 %8534, 0
  %8552 = call i32 @dx.op.binary.i32(i32 40, i32 %8551, i32 3)  ; UMin(a,b)
  %8553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8554 = extractvalue %dx.types.CBufRet.f32 %8553, 0
  %8555 = extractvalue %dx.types.CBufRet.f32 %8553, 1
  %8556 = extractvalue %dx.types.CBufRet.f32 %8547, 0
  %8557 = extractvalue %dx.types.CBufRet.f32 %8547, 1
  %8558 = fsub fast float %8554, %8556
  %8559 = fsub fast float %8555, %8557
  %8560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8561 = extractvalue %dx.types.CBufRet.f32 %8560, 0
  %8562 = fcmp fast ogt float %8561, 0.000000e+00
  %8563 = fsub fast float -0.000000e+00, %8558
  %8564 = fsub fast float -0.000000e+00, %8559
  %8565 = call float @dx.op.dot2.f32(i32 54, float %8529, float %8530, float %8529, float %8530)  ; Dot2(ax,ay,bx,by)
  %8566 = call float @dx.op.dot2.f32(i32 54, float %8529, float %8530, float %8563, float %8564)  ; Dot2(ax,ay,bx,by)
  %8567 = fmul fast float %8566, 2.000000e+00
  %8568 = call float @dx.op.dot2.f32(i32 54, float %8563, float %8564, float %8563, float %8564)  ; Dot2(ax,ay,bx,by)
  %8569 = fmul fast float %8561, %8561
  %8570 = fsub fast float %8568, %8569
  %8571 = fmul fast float %8567, %8567
  %8572 = fmul fast float %8565, 4.000000e+00
  %8573 = fmul fast float %8572, %8570
  %8574 = fsub fast float %8571, %8573
  %8575 = fcmp fast ogt float %8574, 0.000000e+00
  br i1 %8575, label %8576, label %8591

; <label>:8576                                    ; preds = %8542
  %8577 = fcmp fast ogt float %8567, 0.000000e+00
  %8578 = call float @dx.op.unary.f32(i32 24, float %8574)  ; Sqrt(value)
  %8579 = fsub fast float -0.000000e+00, %8578
  %8580 = select i1 %8577, float %8578, float %8579
  %8581 = fadd fast float %8580, %8567
  %8582 = fmul float %8581, -5.000000e-01
  %8583 = fdiv fast float %8582, %8565
  %8584 = call float @dx.op.binary.f32(i32 35, float %8583, float 0.000000e+00)  ; FMax(a,b)
  %8585 = call float @dx.op.binary.f32(i32 36, float %8528, float %8584)  ; FMin(a,b)
  %8586 = fdiv fast float %8570, %8582
  %8587 = call float @dx.op.binary.f32(i32 35, float %8586, float 0.000000e+00)  ; FMax(a,b)
  %8588 = call float @dx.op.binary.f32(i32 36, float %8528, float %8587)  ; FMin(a,b)
  %8589 = call float @dx.op.binary.f32(i32 36, float %8585, float %8588)  ; FMin(a,b)
  %8590 = call float @dx.op.binary.f32(i32 35, float %8585, float %8588)  ; FMax(a,b)
  br label %8591

; <label>:8591                                    ; preds = %8576, %8542
  %8592 = phi float [ %8590, %8576 ], [ -1.000000e+00, %8542 ]
  %8593 = phi float [ %8589, %8576 ], [ -1.000000e+00, %8542 ]
  %8594 = phi i1 [ true, %8576 ], [ false, %8542 ]
  %8595 = and i1 %8562, %8594
  br i1 %8595, label %8596, label %8598

; <label>:8596                                    ; preds = %8591
  %8597 = fcmp fast oeq float %8593, %8592
  br i1 %8597, label %8901, label %8599

; <label>:8598                                    ; preds = %8591
  br i1 %8562, label %8901, label %8599

; <label>:8599                                    ; preds = %8598, %8596
  %8600 = phi float [ %8528, %8598 ], [ %8592, %8596 ]
  %8601 = phi float [ 0.000000e+00, %8598 ], [ %8593, %8596 ]
  %8602 = icmp ne i32 %8550, 0
  %8603 = fmul fast float %8600, %8531
  %8604 = fadd fast float %8603, %8544
  %8605 = fmul fast float %8604, %8600
  %8606 = select i1 %8602, float 0.000000e+00, float %8605
  %8607 = fcmp fast oeq float %8531, 0.000000e+00
  %8608 = fdiv fast float %8549, %8531
  %8609 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8608)  ; FMax(a,b)
  %8610 = select i1 %8607, float %8600, float %8609
  %8611 = call float @dx.op.binary.f32(i32 36, float %8600, float %8610)  ; FMin(a,b)
  %8612 = fcmp fast ogt float %8531, 0.000000e+00
  %8613 = fcmp fast olt float %8549, 0.000000e+00
  br i1 %8612, label %8614, label %8671

; <label>:8614                                    ; preds = %8599
  %8615 = icmp eq i32 %8550, 0
  br i1 %8613, label %8616, label %8660

; <label>:8616                                    ; preds = %8614
  %8617 = select i1 %8615, float %8600, float 0.000000e+00
  %8618 = fsub fast float -0.000000e+00, %8617
  %8619 = call float @dx.op.unary.f32(i32 6, float %8618)  ; FAbs(value)
  %8620 = fmul fast float %8617, %8531
  %8621 = fadd fast float %8620, %8544
  %8622 = fmul fast float %8619, %8621
  %8623 = fsub fast float %8606, %8622
  %8624 = fsub fast float %8600, %8619
  %8625 = select i1 %8615, float %8624, float 0.000000e+00
  %8626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8627 = extractvalue %dx.types.CBufRet.f32 %8626, 0
  %8628 = extractvalue %dx.types.CBufRet.f32 %8626, 1
  %8629 = extractvalue %dx.types.CBufRet.f32 %8626, 2
  %8630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8631 = extractvalue %dx.types.CBufRet.f32 %8630, 0
  %8632 = extractvalue %dx.types.CBufRet.f32 %8630, 1
  %8633 = extractvalue %dx.types.CBufRet.f32 %8630, 2
  %8634 = extractvalue %dx.types.CBufRet.f32 %8630, 3
  %8635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8636 = extractvalue %dx.types.CBufRet.f32 %8635, 3
  %8637 = call float @dx.op.binary.f32(i32 36, float %8623, float %8636)  ; FMin(a,b)
  %8638 = fmul fast float %8634, %8625
  %8639 = call float @dx.op.unary.f32(i32 7, float %8638)  ; Saturate(value)
  %8640 = fsub fast float %8631, %8627
  %8641 = fsub fast float %8632, %8628
  %8642 = fsub fast float %8633, %8629
  %8643 = fmul fast float %8639, %8640
  %8644 = fmul fast float %8639, %8641
  %8645 = fmul fast float %8639, %8642
  %8646 = fadd fast float %8643, %8627
  %8647 = fadd fast float %8644, %8628
  %8648 = fadd fast float %8645, %8629
  %8649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8650 = extractvalue %dx.types.CBufRet.f32 %8649, 0
  %8651 = extractvalue %dx.types.CBufRet.f32 %8649, 1
  %8652 = fadd fast float %8651, %8650
  %8653 = call float @dx.op.unary.f32(i32 7, float %8652)  ; Saturate(value)
  %8654 = extractvalue %dx.types.CBufRet.f32 %8649, 2
  %8655 = extractvalue %dx.types.CBufRet.f32 %8649, 3
  %8656 = fadd fast float %8655, %8654
  %8657 = call float @dx.op.unary.f32(i32 7, float %8656)  ; Saturate(value)
  %8658 = fmul fast float %8653, %8637
  %8659 = fmul fast float %8658, %8657
  br label %8901

; <label>:8660                                    ; preds = %8614
  br i1 %8615, label %8661, label %8682

; <label>:8661                                    ; preds = %8660
  %8662 = call float @dx.op.binary.f32(i32 36, float %8611, float %8601)  ; FMin(a,b)
  %8663 = fsub fast float %8611, %8662
  %8664 = fsub fast float %8663, %8600
  %8665 = call float @dx.op.unary.f32(i32 6, float %8664)  ; FAbs(value)
  %8666 = fadd fast float %8663, %8600
  %8667 = fmul fast float %8666, %8531
  %8668 = fadd fast float %8667, %8544
  %8669 = fmul fast float %8668, %8665
  %8670 = fsub fast float %8606, %8669
  br label %8682

; <label>:8671                                    ; preds = %8599
  br i1 %8613, label %8672, label %8682

; <label>:8672                                    ; preds = %8671
  %8673 = call float @dx.op.binary.f32(i32 35, float %8601, float %8611)  ; FMax(a,b)
  %8674 = icmp eq i32 %8550, 0
  %8675 = select i1 %8674, float %8611, float 0.000000e+00
  %8676 = fsub fast float -0.000000e+00, %8675
  %8677 = call float @dx.op.unary.f32(i32 6, float %8676)  ; FAbs(value)
  %8678 = fmul fast float %8675, %8531
  %8679 = fadd fast float %8678, %8544
  %8680 = fmul fast float %8677, %8679
  %8681 = fsub fast float %8606, %8680
  br label %8682

; <label>:8682                                    ; preds = %8672, %8671, %8661, %8660
  %8683 = phi float [ %8601, %8660 ], [ %8601, %8661 ], [ %8673, %8672 ], [ %8601, %8671 ]
  %8684 = phi float [ 0.000000e+00, %8660 ], [ %8665, %8661 ], [ %8677, %8672 ], [ 0.000000e+00, %8671 ]
  %8685 = phi float [ %8606, %8660 ], [ %8670, %8661 ], [ %8681, %8672 ], [ %8606, %8671 ]
  %8686 = phi float [ %8611, %8660 ], [ %8611, %8661 ], [ %8600, %8672 ], [ %8600, %8671 ]
  %8687 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 0
  store float -1.000000e+00, float* %8687, align 4, !tbaa !124, !noalias !139
  %8688 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 1
  store float -1.000000e+00, float* %8688, align 4, !tbaa !124, !noalias !139
  %8689 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 2
  store float -1.000000e+00, float* %8689, align 4, !tbaa !124, !noalias !139
  %8690 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 0
  store float -1.000000e+00, float* %8690, align 4, !tbaa !124, !noalias !139
  %8691 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 1
  store float -1.000000e+00, float* %8691, align 4, !tbaa !124, !noalias !139
  %8692 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 2
  store float -1.000000e+00, float* %8692, align 4, !tbaa !124, !noalias !139
  %8693 = icmp sgt i32 %8552, 0
  br i1 %8693, label %8694, label %8755

; <label>:8694                                    ; preds = %8682
  br label %8695

; <label>:8695                                    ; preds = %8744, %8694
  %8696 = phi i32 [ %8745, %8744 ], [ 0, %8694 ]
  %8697 = phi i32 [ %8746, %8744 ], [ 0, %8694 ]
  %8698 = add nuw i32 %8697, 171
  %8699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %8698)  ; CBufferLoadLegacy(handle,regIndex)
  %8700 = extractvalue %dx.types.CBufRet.f32 %8699, 0
  %8701 = extractvalue %dx.types.CBufRet.f32 %8699, 1
  %8702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8703 = extractvalue %dx.types.CBufRet.f32 %8702, 0
  %8704 = extractvalue %dx.types.CBufRet.f32 %8702, 1
  %8705 = fsub fast float %8700, %8703
  %8706 = fsub fast float %8701, %8704
  %8707 = extractvalue %dx.types.CBufRet.f32 %8699, 2
  %8708 = fsub fast float -0.000000e+00, %8705
  %8709 = fsub fast float -0.000000e+00, %8706
  %8710 = call float @dx.op.dot2.f32(i32 54, float %8529, float %8530, float %8708, float %8709)  ; Dot2(ax,ay,bx,by)
  %8711 = fmul fast float %8710, 2.000000e+00
  %8712 = call float @dx.op.dot2.f32(i32 54, float %8708, float %8709, float %8708, float %8709)  ; Dot2(ax,ay,bx,by)
  %8713 = fmul fast float %8707, %8707
  %8714 = fsub fast float %8712, %8713
  %8715 = fmul fast float %8711, %8711
  %8716 = fmul fast float %8572, %8714
  %8717 = fsub fast float %8715, %8716
  %8718 = fcmp fast ogt float %8717, 0.000000e+00
  br i1 %8718, label %8719, label %8734

; <label>:8719                                    ; preds = %8695
  %8720 = fcmp fast ogt float %8711, 0.000000e+00
  %8721 = call float @dx.op.unary.f32(i32 24, float %8717)  ; Sqrt(value)
  %8722 = fsub fast float -0.000000e+00, %8721
  %8723 = select i1 %8720, float %8721, float %8722
  %8724 = fadd fast float %8723, %8711
  %8725 = fmul float %8724, -5.000000e-01
  %8726 = fdiv fast float %8725, %8565
  %8727 = call float @dx.op.binary.f32(i32 35, float %8726, float 0.000000e+00)  ; FMax(a,b)
  %8728 = call float @dx.op.binary.f32(i32 36, float %8600, float %8727)  ; FMin(a,b)
  %8729 = fdiv fast float %8714, %8725
  %8730 = call float @dx.op.binary.f32(i32 35, float %8729, float 0.000000e+00)  ; FMax(a,b)
  %8731 = call float @dx.op.binary.f32(i32 36, float %8600, float %8730)  ; FMin(a,b)
  %8732 = call float @dx.op.binary.f32(i32 36, float %8728, float %8731)  ; FMin(a,b)
  %8733 = call float @dx.op.binary.f32(i32 35, float %8728, float %8731)  ; FMax(a,b)
  br label %8734

; <label>:8734                                    ; preds = %8719, %8695
  %8735 = phi float [ %8733, %8719 ], [ -1.000000e+00, %8695 ]
  %8736 = phi float [ %8732, %8719 ], [ -1.000000e+00, %8695 ]
  %8737 = phi i1 [ true, %8719 ], [ false, %8695 ]
  br i1 %8737, label %8738, label %8744

; <label>:8738                                    ; preds = %8734
  %8739 = call float @dx.op.binary.f32(i32 35, float %8683, float %8736)  ; FMax(a,b)
  %8740 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8697
  store float %8739, float* %8740, align 4, !tbaa !124, !noalias !139
  %8741 = call float @dx.op.binary.f32(i32 35, float %8683, float %8735)  ; FMax(a,b)
  %8742 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8697
  store float %8741, float* %8742, align 4, !tbaa !124, !noalias !139
  %8743 = add nsw i32 %8696, 1
  br label %8744

; <label>:8744                                    ; preds = %8738, %8734
  %8745 = phi i32 [ %8743, %8738 ], [ %8696, %8734 ]
  %8746 = add nuw nsw i32 %8697, 1
  %8747 = icmp eq i32 %8746, %8552
  br i1 %8747, label %8748, label %8695

; <label>:8748                                    ; preds = %8744
  %8749 = load float, float* %8689, align 4, !tbaa !124, !alias.scope !155, !noalias !158
  %8750 = load float, float* %8688, align 4, !tbaa !124, !alias.scope !161, !noalias !162
  %8751 = load float, float* %8687, align 4, !tbaa !124, !alias.scope !163, !noalias !164
  %8752 = load float, float* %8692, align 4, !tbaa !124, !alias.scope !165, !noalias !168
  %8753 = load float, float* %8691, align 4, !tbaa !124, !alias.scope !171, !noalias !172
  %8754 = load float, float* %8690, align 4, !tbaa !124, !alias.scope !173, !noalias !174
  br label %8755

; <label>:8755                                    ; preds = %8748, %8682
  %8756 = phi float [ -1.000000e+00, %8682 ], [ %8754, %8748 ]
  %8757 = phi float [ -1.000000e+00, %8682 ], [ %8753, %8748 ]
  %8758 = phi float [ -1.000000e+00, %8682 ], [ %8752, %8748 ]
  %8759 = phi float [ -1.000000e+00, %8682 ], [ %8751, %8748 ]
  %8760 = phi float [ -1.000000e+00, %8682 ], [ %8750, %8748 ]
  %8761 = phi float [ -1.000000e+00, %8682 ], [ %8749, %8748 ]
  %8762 = phi i32 [ 0, %8682 ], [ %8745, %8748 ]
  %8763 = call float @dx.op.binary.f32(i32 36, float %8760, float %8761)  ; FMin(a,b)
  %8764 = call float @dx.op.binary.f32(i32 36, float %8759, float %8763)  ; FMin(a,b)
  %8765 = call float @dx.op.binary.f32(i32 35, float %8759, float %8760)  ; FMax(a,b)
  %8766 = call float @dx.op.binary.f32(i32 36, float %8765, float %8761)  ; FMin(a,b)
  %8767 = call float @dx.op.binary.f32(i32 36, float %8759, float %8760)  ; FMin(a,b)
  %8768 = call float @dx.op.binary.f32(i32 35, float %8767, float %8766)  ; FMax(a,b)
  %8769 = call float @dx.op.binary.f32(i32 35, float %8760, float %8761)  ; FMax(a,b)
  %8770 = call float @dx.op.binary.f32(i32 35, float %8759, float %8769)  ; FMax(a,b)
  store float %8764, float* %8687, align 4, !tbaa !124, !alias.scope !163, !noalias !164
  store float %8768, float* %8688, align 4, !tbaa !124, !alias.scope !161, !noalias !162
  store float %8770, float* %8689, align 4, !tbaa !124, !alias.scope !155, !noalias !158
  %8771 = call float @dx.op.binary.f32(i32 36, float %8757, float %8758)  ; FMin(a,b)
  %8772 = call float @dx.op.binary.f32(i32 36, float %8756, float %8771)  ; FMin(a,b)
  %8773 = call float @dx.op.binary.f32(i32 35, float %8756, float %8757)  ; FMax(a,b)
  %8774 = call float @dx.op.binary.f32(i32 36, float %8773, float %8758)  ; FMin(a,b)
  %8775 = call float @dx.op.binary.f32(i32 36, float %8756, float %8757)  ; FMin(a,b)
  %8776 = call float @dx.op.binary.f32(i32 35, float %8775, float %8774)  ; FMax(a,b)
  %8777 = call float @dx.op.binary.f32(i32 35, float %8757, float %8758)  ; FMax(a,b)
  %8778 = call float @dx.op.binary.f32(i32 35, float %8756, float %8777)  ; FMax(a,b)
  store float %8772, float* %8690, align 4, !tbaa !124, !alias.scope !173, !noalias !174
  store float %8776, float* %8691, align 4, !tbaa !124, !alias.scope !171, !noalias !172
  store float %8778, float* %8692, align 4, !tbaa !124, !alias.scope !165, !noalias !168
  %8779 = sub nsw i32 3, %8762
  %8780 = icmp sgt i32 %8779, 2
  br i1 %8780, label %8781, label %8819

; <label>:8781                                    ; preds = %8755
  %8782 = icmp eq i32 %8550, 0
  %8783 = fsub fast float %8600, %8684
  %8784 = select i1 %8782, float %8783, float %8684
  %8785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8786 = extractvalue %dx.types.CBufRet.f32 %8785, 0
  %8787 = extractvalue %dx.types.CBufRet.f32 %8785, 1
  %8788 = extractvalue %dx.types.CBufRet.f32 %8785, 2
  %8789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8790 = extractvalue %dx.types.CBufRet.f32 %8789, 0
  %8791 = extractvalue %dx.types.CBufRet.f32 %8789, 1
  %8792 = extractvalue %dx.types.CBufRet.f32 %8789, 2
  %8793 = extractvalue %dx.types.CBufRet.f32 %8789, 3
  %8794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8795 = extractvalue %dx.types.CBufRet.f32 %8794, 3
  %8796 = call float @dx.op.binary.f32(i32 36, float %8685, float %8795)  ; FMin(a,b)
  %8797 = fmul fast float %8793, %8784
  %8798 = call float @dx.op.unary.f32(i32 7, float %8797)  ; Saturate(value)
  %8799 = fsub fast float %8790, %8786
  %8800 = fsub fast float %8791, %8787
  %8801 = fsub fast float %8792, %8788
  %8802 = fmul fast float %8798, %8799
  %8803 = fmul fast float %8798, %8800
  %8804 = fmul fast float %8798, %8801
  %8805 = fadd fast float %8802, %8786
  %8806 = fadd fast float %8803, %8787
  %8807 = fadd fast float %8804, %8788
  %8808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8809 = extractvalue %dx.types.CBufRet.f32 %8808, 0
  %8810 = extractvalue %dx.types.CBufRet.f32 %8808, 1
  %8811 = fadd fast float %8810, %8809
  %8812 = call float @dx.op.unary.f32(i32 7, float %8811)  ; Saturate(value)
  %8813 = extractvalue %dx.types.CBufRet.f32 %8808, 2
  %8814 = extractvalue %dx.types.CBufRet.f32 %8808, 3
  %8815 = fadd fast float %8814, %8813
  %8816 = call float @dx.op.unary.f32(i32 7, float %8815)  ; Saturate(value)
  %8817 = fmul fast float %8812, %8796
  %8818 = fmul fast float %8817, %8816
  br label %8901

; <label>:8819                                    ; preds = %8755
  %8820 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8779
  %8821 = load float, float* %8820, align 4, !tbaa !124, !noalias !139
  %8822 = fcmp fast olt float %8821, %8686
  %8823 = icmp sgt i32 %8762, 0
  %8824 = and i1 %8823, %8822
  br i1 %8824, label %8825, label %8862

; <label>:8825                                    ; preds = %8819
  br label %8826

; <label>:8826                                    ; preds = %8855, %8825
  %8827 = phi float [ %8856, %8855 ], [ %8684, %8825 ]
  %8828 = phi float [ %8857, %8855 ], [ %8685, %8825 ]
  %8829 = phi float [ %8837, %8855 ], [ %8821, %8825 ]
  %8830 = phi i32 [ %8834, %8855 ], [ %8779, %8825 ]
  %8831 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8830
  %8832 = load float, float* %8831, align 4, !tbaa !124, !noalias !139
  %8833 = icmp slt i32 %8830, 2
  %8834 = add nsw i32 %8830, 1
  %8835 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8834
  %8836 = load float, float* %8835, align 4, !tbaa !124, !noalias !139
  %8837 = select i1 %8833, float %8836, float %8600
  %8838 = call float @dx.op.binary.f32(i32 36, float %8837, float %8832)  ; FMin(a,b)
  %8839 = call float @dx.op.binary.f32(i32 36, float %8686, float %8838)  ; FMin(a,b)
  %8840 = icmp eq i32 %8550, 0
  %8841 = fadd fast float %8839, %8829
  %8842 = fmul fast float %8841, %8531
  %8843 = fadd fast float %8842, %8544
  br i1 %8840, label %8849, label %8844

; <label>:8844                                    ; preds = %8826
  %8845 = fsub fast float %8839, %8829
  %8846 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8845)  ; FMax(a,b)
  %8847 = fmul fast float %8846, %8843
  %8848 = fadd fast float %8847, %8828
  br label %8855

; <label>:8849                                    ; preds = %8826
  %8850 = fsub fast float %8829, %8839
  %8851 = call float @dx.op.unary.f32(i32 6, float %8850)  ; FAbs(value)
  %8852 = fadd fast float %8851, %8827
  %8853 = fmul fast float %8851, %8843
  %8854 = fsub fast float %8828, %8853
  br label %8855

; <label>:8855                                    ; preds = %8849, %8844
  %8856 = phi float [ %8846, %8844 ], [ %8852, %8849 ]
  %8857 = phi float [ %8848, %8844 ], [ %8854, %8849 ]
  %8858 = fcmp fast olt float %8837, %8686
  %8859 = icmp slt i32 %8834, 3
  %8860 = and i1 %8859, %8858
  br i1 %8860, label %8826, label %8861

; <label>:8861                                    ; preds = %8855
  br label %8862

; <label>:8862                                    ; preds = %8861, %8819
  %8863 = phi float [ %8684, %8819 ], [ %8856, %8861 ]
  %8864 = phi float [ %8685, %8819 ], [ %8857, %8861 ]
  %8865 = fsub fast float %8600, %8863
  %8866 = select i1 %8602, float %8863, float %8865
  %8867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8868 = extractvalue %dx.types.CBufRet.f32 %8867, 0
  %8869 = extractvalue %dx.types.CBufRet.f32 %8867, 1
  %8870 = extractvalue %dx.types.CBufRet.f32 %8867, 2
  %8871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8872 = extractvalue %dx.types.CBufRet.f32 %8871, 0
  %8873 = extractvalue %dx.types.CBufRet.f32 %8871, 1
  %8874 = extractvalue %dx.types.CBufRet.f32 %8871, 2
  %8875 = extractvalue %dx.types.CBufRet.f32 %8871, 3
  %8876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8877 = extractvalue %dx.types.CBufRet.f32 %8876, 3
  %8878 = call float @dx.op.binary.f32(i32 36, float %8864, float %8877)  ; FMin(a,b)
  %8879 = fmul fast float %8875, %8866
  %8880 = call float @dx.op.unary.f32(i32 7, float %8879)  ; Saturate(value)
  %8881 = fsub fast float %8872, %8868
  %8882 = fsub fast float %8873, %8869
  %8883 = fsub fast float %8874, %8870
  %8884 = fmul fast float %8880, %8881
  %8885 = fmul fast float %8880, %8882
  %8886 = fmul fast float %8880, %8883
  %8887 = fadd fast float %8884, %8868
  %8888 = fadd fast float %8885, %8869
  %8889 = fadd fast float %8886, %8870
  %8890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8891 = extractvalue %dx.types.CBufRet.f32 %8890, 0
  %8892 = extractvalue %dx.types.CBufRet.f32 %8890, 1
  %8893 = fadd fast float %8892, %8891
  %8894 = call float @dx.op.unary.f32(i32 7, float %8893)  ; Saturate(value)
  %8895 = extractvalue %dx.types.CBufRet.f32 %8890, 2
  %8896 = extractvalue %dx.types.CBufRet.f32 %8890, 3
  %8897 = fadd fast float %8896, %8895
  %8898 = call float @dx.op.unary.f32(i32 7, float %8897)  ; Saturate(value)
  %8899 = fmul fast float %8894, %8878
  %8900 = fmul fast float %8899, %8898
  br label %8901

; <label>:8901                                    ; preds = %8862, %8781, %8616, %8598, %8596
  %8902 = phi float [ %8625, %8616 ], [ %8784, %8781 ], [ %8866, %8862 ], [ 0.000000e+00, %8596 ], [ 0.000000e+00, %8598 ]
  %8903 = phi float [ %8659, %8616 ], [ %8818, %8781 ], [ %8900, %8862 ], [ 0.000000e+00, %8596 ], [ 0.000000e+00, %8598 ]
  %8904 = phi float [ %8646, %8616 ], [ %8805, %8781 ], [ %8887, %8862 ], [ 0.000000e+00, %8596 ], [ 0.000000e+00, %8598 ]
  %8905 = phi float [ %8647, %8616 ], [ %8806, %8781 ], [ %8888, %8862 ], [ 0.000000e+00, %8596 ], [ 0.000000e+00, %8598 ]
  %8906 = phi float [ %8648, %8616 ], [ %8807, %8781 ], [ %8889, %8862 ], [ 0.000000e+00, %8596 ], [ 0.000000e+00, %8598 ]
  %8907 = fmul fast float %8539, %8903
  %8908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8909 = extractvalue %dx.types.CBufRet.f32 %8908, 2
  %8910 = fsub fast float %8546, %8909
  %8911 = fcmp fast olt float %8907, -2.000000e+01
  %8912 = call float @dx.op.unary.f32(i32 21, float %8907)  ; Exp(value)
  %8913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8914 = extractvalue %dx.types.CBufRet.f32 %8913, 2
  %8915 = extractvalue %dx.types.CBufRet.f32 %8913, 3
  %8916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8917 = extractvalue %dx.types.CBufRet.f32 %8916, 2
  %8918 = fmul fast float %8915, %8910
  %8919 = call float @dx.op.unary.f32(i32 7, float %8918)  ; Saturate(value)
  %8920 = fsub fast float 1.000000e+00, %8919
  %8921 = fmul fast float %8531, 5.000000e-01
  %8922 = fadd fast float %8921, 5.000000e-01
  %8923 = call float @dx.op.unary.f32(i32 7, float %8922)  ; Saturate(value)
  %8924 = fsub fast float 1.000000e+00, %8923
  %8925 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8920)  ; FMax(a,b)
  %8926 = fdiv fast float %8924, %8925
  %8927 = fsub fast float %8910, %8488
  %8928 = call float @dx.op.unary.f32(i32 6, float %8927)  ; FAbs(value)
  %8929 = fmul fast float %8928, %8914
  %8930 = call float @dx.op.unary.f32(i32 7, float %8926)  ; Saturate(value)
  %8931 = fsub fast float 1.000000e+00, %8929
  %8932 = fmul fast float %8931, %8930
  %8933 = fadd fast float %8932, %8929
  %8934 = fmul fast float %8917, %8910
  %8935 = call float @dx.op.unary.f32(i32 7, float %8934)  ; Saturate(value)
  %8936 = fsub fast float 1.000000e+00, %8933
  %8937 = fmul fast float %8936, %8935
  %8938 = fadd fast float %8937, %8933
  %8939 = call float @dx.op.unary.f32(i32 7, float %8938)  ; Saturate(value)
  %8940 = fadd fast float %8912, -1.000000e+00
  %8941 = select i1 %8911, float -1.000000e+00, float %8940
  %8942 = fmul fast float %8939, %8941
  %8943 = fadd fast float %8942, 1.000000e+00
  %8944 = fsub fast float -0.000000e+00, %8942
  %8945 = fmul fast float %8904, %8944
  %8946 = fmul fast float %8905, %8944
  %8947 = fmul fast float %8906, %8944
  br label %8948

; <label>:8948                                    ; preds = %8901, %8497
  %8949 = phi float [ %8902, %8901 ], [ 0.000000e+00, %8497 ]
  %8950 = phi float [ %8943, %8901 ], [ 1.000000e+00, %8497 ]
  %8951 = phi float [ %8945, %8901 ], [ 0.000000e+00, %8497 ]
  %8952 = phi float [ %8946, %8901 ], [ 0.000000e+00, %8497 ]
  %8953 = phi float [ %8947, %8901 ], [ 0.000000e+00, %8497 ]
  %8954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8955 = extractvalue %dx.types.CBufRet.f32 %8954, 1
  %8956 = fsub fast float 1.000000e+00, %8950
  %8957 = fmul fast float %8956, %8532
  %8958 = fmul fast float %8957, %8955
  %8959 = fsub fast float %8532, %8958
  br i1 %8525, label %8960, label %8989, !dx.controlflow.hints !175

; <label>:8960                                    ; preds = %8948
  %8961 = fmul fast float %8533, %8522
  %8962 = fadd fast float %8961, %8523
  %8963 = call float @dx.op.unary.f32(i32 7, float %8962)  ; Saturate(value)
  %8964 = fmul fast float %8504, %8959
  %8965 = fsub fast float -0.000000e+00, %8964
  %8966 = fmul fast float %8505, %8959
  %8967 = fsub fast float -0.000000e+00, %8966
  %8968 = call float @dx.op.unary.f32(i32 21, float %8965)  ; Exp(value)
  %8969 = call float @dx.op.unary.f32(i32 21, float %8967)  ; Exp(value)
  %8970 = call float @dx.op.binary.f32(i32 35, float %8512, float %8968)  ; FMax(a,b)
  %8971 = call float @dx.op.binary.f32(i32 35, float %8512, float %8969)  ; FMax(a,b)
  %8972 = fsub fast float %8971, %8970
  %8973 = fmul fast float %8972, %8963
  %8974 = fadd fast float %8973, %8970
  %8975 = call float @dx.op.unary.f32(i32 7, float %8974)  ; Saturate(value)
  %8976 = fsub fast float %8509, %8514
  %8977 = fsub fast float %8510, %8515
  %8978 = fsub fast float %8511, %8516
  %8979 = fmul fast float %8963, %8976
  %8980 = fmul fast float %8963, %8977
  %8981 = fmul fast float %8963, %8978
  %8982 = fadd fast float %8979, %8514
  %8983 = fadd fast float %8980, %8515
  %8984 = fadd fast float %8981, %8516
  %8985 = fsub fast float 1.000000e+00, %8975
  %8986 = fmul fast float %8985, %8982
  %8987 = fmul fast float %8985, %8983
  %8988 = fmul fast float %8985, %8984
  br label %9048

; <label>:8989                                    ; preds = %8948
  %8990 = fmul fast float %8959, %8521
  %8991 = call float @dx.op.unary.f32(i32 7, float %8990)  ; Saturate(value)
  %8992 = fsub fast float 2.000000e+00, %8991
  %8993 = fmul fast float %8991, 9.921875e-01
  %8994 = fmul fast float %8993, %8992
  %8995 = fadd fast float %8994, 3.906250e-03
  %8996 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %8995, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8997 = extractvalue %dx.types.ResRet.f32 %8996, 0
  %8998 = fsub fast float %8991, %8997
  %8999 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8998)  ; FMax(a,b)
  %9000 = fmul fast float %8507, %8488
  %9001 = call float @dx.op.unary.f32(i32 6, float %9000)  ; FAbs(value)
  %9002 = fcmp fast ogt float %9001, 0x3EB0C6F7A0000000
  br i1 %9002, label %9003, label %9009, !dx.controlflow.hints !176

; <label>:9003                                    ; preds = %8989
  %9004 = fmul fast float %9000, 0xBFF7154760000000
  %9005 = call float @dx.op.unary.f32(i32 21, float %9004)  ; Exp(value)
  %9006 = fsub fast float 1.000000e+00, %9005
  %9007 = fdiv fast float %9006, %9000
  %9008 = fmul fast float %9007, %8517
  br label %9009

; <label>:9009                                    ; preds = %9003, %8989
  %9010 = phi float [ %9008, %9003 ], [ %8517, %8989 ]
  %9011 = fadd fast float %9010, %8519
  %9012 = fmul fast float %9011, %8999
  %9013 = fmul fast float %8504, %9012
  %9014 = fsub fast float -0.000000e+00, %9013
  %9015 = fmul fast float %8505, %9012
  %9016 = fsub fast float -0.000000e+00, %9015
  %9017 = fmul fast float %8506, %9012
  %9018 = fsub fast float -0.000000e+00, %9017
  %9019 = call float @dx.op.unary.f32(i32 21, float %9014)  ; Exp(value)
  %9020 = call float @dx.op.unary.f32(i32 21, float %9016)  ; Exp(value)
  %9021 = call float @dx.op.unary.f32(i32 21, float %9018)  ; Exp(value)
  %9022 = fmul fast float %8533, %8533
  %9023 = fadd fast float %9022, 1.000000e+00
  %9024 = fmul fast float %9023, 0x3FAE8EC8A0000000
  %9025 = fmul fast float %9024, %8514
  %9026 = fmul fast float %9024, %8515
  %9027 = fmul fast float %9024, %8516
  %9028 = fmul fast float %8533, %8512
  %9029 = fsub fast float 1.000000e+00, %9028
  %9030 = fmul fast float %8512, %8512
  %9031 = fsub fast float 1.000000e+00, %9030
  %9032 = fmul fast float %9031, 0x3FB45F3060000000
  %9033 = fmul fast float %9029, %9029
  %9034 = fdiv fast float 1.000000e+00, %9033
  %9035 = fmul fast float %9032, %9034
  %9036 = fmul fast float %9035, %8509
  %9037 = fmul fast float %9035, %8510
  %9038 = fmul fast float %9035, %8511
  %9039 = fadd fast float %9036, %9025
  %9040 = fadd fast float %9037, %9026
  %9041 = fadd fast float %9038, %9027
  %9042 = fsub fast float 1.000000e+00, %9019
  %9043 = fsub fast float 1.000000e+00, %9020
  %9044 = fsub fast float 1.000000e+00, %9021
  %9045 = fmul fast float %9039, %9042
  %9046 = fmul fast float %9040, %9043
  %9047 = fmul fast float %9041, %9044
  br label %9048

; <label>:9048                                    ; preds = %9009, %8960
  %9049 = phi float [ %8986, %8960 ], [ %9045, %9009 ]
  %9050 = phi float [ %8987, %8960 ], [ %9046, %9009 ]
  %9051 = phi float [ %8988, %8960 ], [ %9047, %9009 ]
  %9052 = phi float [ %8975, %8960 ], [ %9019, %9009 ]
  %9053 = phi float [ %8975, %8960 ], [ %9020, %9009 ]
  %9054 = phi float [ %8975, %8960 ], [ %9021, %9009 ]
  br i1 %8541, label %9055, label %9253, !dx.controlflow.hints !177

; <label>:9055                                    ; preds = %9048
  %9056 = extractvalue %dx.types.CBufRet.f32 %8954, 0
  %9057 = fmul fast float %9056, %8956
  %9058 = fsub fast float %8951, %9049
  %9059 = fsub fast float %8952, %9050
  %9060 = fsub fast float %8953, %9051
  %9061 = fmul fast float %9057, %9058
  %9062 = fmul fast float %9057, %9059
  %9063 = fmul fast float %9057, %9060
  %9064 = fadd fast float %9061, %9049
  %9065 = fadd fast float %9062, %9050
  %9066 = fadd fast float %9063, %9051
  %9067 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9052)  ; FMax(a,b)
  %9068 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9053)  ; FMax(a,b)
  %9069 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9054)  ; FMax(a,b)
  %9070 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8950)  ; FMax(a,b)
  %9071 = call float @dx.op.binary.f32(i32 35, float %8949, float %8959)  ; FMax(a,b)
  %9072 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9071)  ; FMax(a,b)
  %9073 = fdiv fast float %8949, %9072
  %9074 = call float @dx.op.unary.f32(i32 7, float %9073)  ; Saturate(value)
  %9075 = fdiv fast float %8959, %9072
  %9076 = call float @dx.op.unary.f32(i32 7, float %9075)  ; Saturate(value)
  %9077 = fcmp fast une float %9070, 1.000000e+00
  br i1 %9077, label %9078, label %9091, !dx.controlflow.hints !178

; <label>:9078                                    ; preds = %9055
  %9079 = call float @dx.op.unary.f32(i32 23, float %9070)  ; Log(value)
  %9080 = fmul fast float %9079, 0x3FE62E4300000000
  %9081 = fmul fast float %8951, %9080
  %9082 = fsub fast float -0.000000e+00, %9081
  %9083 = fmul fast float %8952, %9080
  %9084 = fsub fast float -0.000000e+00, %9083
  %9085 = fmul fast float %8953, %9080
  %9086 = fsub fast float -0.000000e+00, %9085
  %9087 = fsub fast float 1.000000e+00, %9070
  %9088 = fdiv fast float %9082, %9087
  %9089 = fdiv fast float %9084, %9087
  %9090 = fdiv fast float %9086, %9087
  br label %9091

; <label>:9091                                    ; preds = %9078, %9055
  %9092 = phi float [ %9088, %9078 ], [ %8951, %9055 ]
  %9093 = phi float [ %9089, %9078 ], [ %8952, %9055 ]
  %9094 = phi float [ %9090, %9078 ], [ %8953, %9055 ]
  %9095 = phi float [ %9080, %9078 ], [ 0.000000e+00, %9055 ]
  %9096 = fcmp fast une float %9067, 1.000000e+00
  br i1 %9096, label %9097, label %9104, !dx.controlflow.hints !179

; <label>:9097                                    ; preds = %9091
  %9098 = call float @dx.op.unary.f32(i32 23, float %9067)  ; Log(value)
  %9099 = fmul fast float %9098, 0x3FE62E4300000000
  %9100 = fmul fast float %9064, %9099
  %9101 = fsub fast float -0.000000e+00, %9100
  %9102 = fsub fast float 1.000000e+00, %9067
  %9103 = fdiv fast float %9101, %9102
  br label %9104

; <label>:9104                                    ; preds = %9097, %9091
  %9105 = phi float [ %9103, %9097 ], [ %9064, %9091 ]
  %9106 = phi float [ %9099, %9097 ], [ 0.000000e+00, %9091 ]
  %9107 = fcmp fast une float %9068, 1.000000e+00
  br i1 %9107, label %9108, label %9115, !dx.controlflow.hints !179

; <label>:9108                                    ; preds = %9104
  %9109 = call float @dx.op.unary.f32(i32 23, float %9068)  ; Log(value)
  %9110 = fmul fast float %9109, 0x3FE62E4300000000
  %9111 = fmul fast float %9065, %9110
  %9112 = fsub fast float -0.000000e+00, %9111
  %9113 = fsub fast float 1.000000e+00, %9068
  %9114 = fdiv fast float %9112, %9113
  br label %9115

; <label>:9115                                    ; preds = %9108, %9104
  %9116 = phi float [ %9114, %9108 ], [ %9065, %9104 ]
  %9117 = phi float [ %9110, %9108 ], [ 0.000000e+00, %9104 ]
  %9118 = fcmp fast une float %9069, 1.000000e+00
  br i1 %9118, label %9119, label %9126, !dx.controlflow.hints !179

; <label>:9119                                    ; preds = %9115
  %9120 = call float @dx.op.unary.f32(i32 23, float %9069)  ; Log(value)
  %9121 = fmul fast float %9120, 0x3FE62E4300000000
  %9122 = fmul fast float %9066, %9121
  %9123 = fsub fast float -0.000000e+00, %9122
  %9124 = fsub fast float 1.000000e+00, %9069
  %9125 = fdiv fast float %9123, %9124
  br label %9126

; <label>:9126                                    ; preds = %9119, %9115
  %9127 = phi float [ %9125, %9119 ], [ %9066, %9115 ]
  %9128 = phi float [ %9121, %9119 ], [ 0.000000e+00, %9115 ]
  %9129 = fmul fast float %9092, %9076
  %9130 = fmul fast float %9093, %9076
  %9131 = fmul fast float %9094, %9076
  %9132 = fmul fast float %9095, %9076
  %9133 = fmul fast float %9105, %9074
  %9134 = fmul fast float %9116, %9074
  %9135 = fmul fast float %9127, %9074
  %9136 = fmul fast float %9106, %9074
  %9137 = fmul fast float %9117, %9074
  %9138 = fmul fast float %9128, %9074
  %9139 = fadd fast float %9133, %9129
  %9140 = fadd fast float %9134, %9130
  %9141 = fadd fast float %9135, %9131
  %9142 = fadd fast float %9136, %9132
  %9143 = fadd fast float %9137, %9132
  %9144 = fadd fast float %9138, %9132
  %9145 = fcmp fast une float %9142, 0.000000e+00
  br i1 %9145, label %9146, label %9153, !dx.controlflow.hints !180

; <label>:9146                                    ; preds = %9126
  %9147 = fmul fast float %9142, 0x3FF7154760000000
  %9148 = call float @dx.op.unary.f32(i32 21, float %9147)  ; Exp(value)
  %9149 = fsub fast float 1.000000e+00, %9148
  %9150 = fmul fast float %9139, %9149
  %9151 = fsub fast float -0.000000e+00, %9150
  %9152 = fdiv fast float %9151, %9142
  br label %9153

; <label>:9153                                    ; preds = %9146, %9126
  %9154 = phi float [ %9148, %9146 ], [ 1.000000e+00, %9126 ]
  %9155 = phi float [ %9152, %9146 ], [ %9139, %9126 ]
  %9156 = fcmp fast une float %9143, 0.000000e+00
  br i1 %9156, label %9157, label %9164, !dx.controlflow.hints !180

; <label>:9157                                    ; preds = %9153
  %9158 = fmul fast float %9143, 0x3FF7154760000000
  %9159 = call float @dx.op.unary.f32(i32 21, float %9158)  ; Exp(value)
  %9160 = fsub fast float 1.000000e+00, %9159
  %9161 = fmul fast float %9140, %9160
  %9162 = fsub fast float -0.000000e+00, %9161
  %9163 = fdiv fast float %9162, %9143
  br label %9164

; <label>:9164                                    ; preds = %9157, %9153
  %9165 = phi float [ %9159, %9157 ], [ 1.000000e+00, %9153 ]
  %9166 = phi float [ %9163, %9157 ], [ %9140, %9153 ]
  %9167 = fcmp fast une float %9144, 0.000000e+00
  br i1 %9167, label %9168, label %9175, !dx.controlflow.hints !180

; <label>:9168                                    ; preds = %9164
  %9169 = fmul fast float %9144, 0x3FF7154760000000
  %9170 = call float @dx.op.unary.f32(i32 21, float %9169)  ; Exp(value)
  %9171 = fsub fast float 1.000000e+00, %9170
  %9172 = fmul fast float %9141, %9171
  %9173 = fsub fast float -0.000000e+00, %9172
  %9174 = fdiv fast float %9173, %9144
  br label %9175

; <label>:9175                                    ; preds = %9168, %9164
  %9176 = phi float [ %9170, %9168 ], [ 1.000000e+00, %9164 ]
  %9177 = phi float [ %9174, %9168 ], [ %9141, %9164 ]
  %9178 = fcmp fast ogt float %9074, %9076
  br i1 %9178, label %9179, label %9199

; <label>:9179                                    ; preds = %9175
  %9180 = fsub fast float 1.000000e+00, %9076
  %9181 = fmul fast float %9092, %9180
  %9182 = fmul fast float %9093, %9180
  %9183 = fmul fast float %9094, %9180
  %9184 = fmul fast float %9095, %9180
  %9185 = fcmp fast une float %9184, 0.000000e+00
  br i1 %9185, label %9186, label %9237, !dx.controlflow.hints !181

; <label>:9186                                    ; preds = %9179
  %9187 = fmul fast float %9184, 0x3FF7154760000000
  %9188 = call float @dx.op.unary.f32(i32 21, float %9187)  ; Exp(value)
  %9189 = fsub fast float 1.000000e+00, %9188
  %9190 = fmul fast float %9181, %9189
  %9191 = fsub fast float -0.000000e+00, %9190
  %9192 = fmul fast float %9182, %9189
  %9193 = fsub fast float -0.000000e+00, %9192
  %9194 = fmul fast float %9183, %9189
  %9195 = fsub fast float -0.000000e+00, %9194
  %9196 = fdiv fast float %9191, %9184
  %9197 = fdiv fast float %9193, %9184
  %9198 = fdiv fast float %9195, %9184
  br label %9237

; <label>:9199                                    ; preds = %9175
  %9200 = fsub fast float 1.000000e+00, %9074
  %9201 = fmul fast float %9105, %9200
  %9202 = fmul fast float %9116, %9200
  %9203 = fmul fast float %9127, %9200
  %9204 = fmul fast float %9106, %9200
  %9205 = fmul fast float %9117, %9200
  %9206 = fmul fast float %9128, %9200
  %9207 = fcmp fast une float %9204, 0.000000e+00
  br i1 %9207, label %9208, label %9215, !dx.controlflow.hints !180

; <label>:9208                                    ; preds = %9199
  %9209 = fmul fast float %9204, 0x3FF7154760000000
  %9210 = call float @dx.op.unary.f32(i32 21, float %9209)  ; Exp(value)
  %9211 = fsub fast float 1.000000e+00, %9210
  %9212 = fmul fast float %9201, %9211
  %9213 = fsub fast float -0.000000e+00, %9212
  %9214 = fdiv fast float %9213, %9204
  br label %9215

; <label>:9215                                    ; preds = %9208, %9199
  %9216 = phi float [ %9214, %9208 ], [ %9201, %9199 ]
  %9217 = phi float [ %9210, %9208 ], [ 1.000000e+00, %9199 ]
  %9218 = fcmp fast une float %9205, 0.000000e+00
  br i1 %9218, label %9219, label %9226, !dx.controlflow.hints !180

; <label>:9219                                    ; preds = %9215
  %9220 = fmul fast float %9205, 0x3FF7154760000000
  %9221 = call float @dx.op.unary.f32(i32 21, float %9220)  ; Exp(value)
  %9222 = fsub fast float 1.000000e+00, %9221
  %9223 = fmul fast float %9202, %9222
  %9224 = fsub fast float -0.000000e+00, %9223
  %9225 = fdiv fast float %9224, %9205
  br label %9226

; <label>:9226                                    ; preds = %9219, %9215
  %9227 = phi float [ %9225, %9219 ], [ %9202, %9215 ]
  %9228 = phi float [ %9221, %9219 ], [ 1.000000e+00, %9215 ]
  %9229 = fcmp fast une float %9206, 0.000000e+00
  br i1 %9229, label %9230, label %9237, !dx.controlflow.hints !180

; <label>:9230                                    ; preds = %9226
  %9231 = fmul fast float %9206, 0x3FF7154760000000
  %9232 = call float @dx.op.unary.f32(i32 21, float %9231)  ; Exp(value)
  %9233 = fsub fast float 1.000000e+00, %9232
  %9234 = fmul fast float %9203, %9233
  %9235 = fsub fast float -0.000000e+00, %9234
  %9236 = fdiv fast float %9235, %9206
  br label %9237

; <label>:9237                                    ; preds = %9230, %9226, %9186, %9179
  %9238 = phi float [ %9236, %9230 ], [ %9198, %9186 ], [ %9183, %9179 ], [ %9203, %9226 ]
  %9239 = phi float [ %9227, %9230 ], [ %9197, %9186 ], [ %9182, %9179 ], [ %9227, %9226 ]
  %9240 = phi float [ %9216, %9230 ], [ %9196, %9186 ], [ %9181, %9179 ], [ %9216, %9226 ]
  %9241 = phi float [ %9232, %9230 ], [ %9188, %9186 ], [ 1.000000e+00, %9179 ], [ 1.000000e+00, %9226 ]
  %9242 = phi float [ %9228, %9230 ], [ %9188, %9186 ], [ 1.000000e+00, %9179 ], [ %9228, %9226 ]
  %9243 = phi float [ %9217, %9230 ], [ %9188, %9186 ], [ 1.000000e+00, %9179 ], [ %9217, %9226 ]
  %9244 = fmul fast float %9243, %9155
  %9245 = fmul fast float %9242, %9166
  %9246 = fmul fast float %9241, %9177
  %9247 = fadd fast float %9244, %9240
  %9248 = fadd fast float %9245, %9239
  %9249 = fadd fast float %9246, %9238
  %9250 = fmul fast float %9243, %9154
  %9251 = fmul fast float %9242, %9165
  %9252 = fmul fast float %9241, %9176
  br label %9253

; <label>:9253                                    ; preds = %9237, %9048
  %9254 = phi float [ %9252, %9237 ], [ %9054, %9048 ]
  %9255 = phi float [ %9251, %9237 ], [ %9053, %9048 ]
  %9256 = phi float [ %9250, %9237 ], [ %9052, %9048 ]
  %9257 = phi float [ %9249, %9237 ], [ %9051, %9048 ]
  %9258 = phi float [ %9248, %9237 ], [ %9050, %9048 ]
  %9259 = phi float [ %9247, %9237 ], [ %9049, %9048 ]
  %9260 = fmul fast float %9259, %8205
  %9261 = fmul fast float %9258, %8205
  %9262 = fmul fast float %9257, %8205
  %9263 = fmul fast float %9256, %8496
  %9264 = call float @dx.op.dot3.f32(i32 55, float %9256, float %9255, float %9254, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9265 = call float @dx.op.dot3.f32(i32 55, float %9260, float %9261, float %9262, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9266 = select i1 %275, float %9264, float %9256
  %9267 = select i1 %275, float %9264, float %9255
  %9268 = select i1 %275, float 1.000000e+00, float %9254
  %9269 = select i1 %275, float %9265, float %9260
  %9270 = select i1 %275, float 0.000000e+00, float %9261
  %9271 = select i1 %275, float 0.000000e+00, float %9262
  %9272 = fmul fast float %9266, %8490
  %9273 = fmul fast float %9267, %8491
  %9274 = fmul fast float %9268, %8492
  %9275 = fadd fast float %9272, %9269
  %9276 = fadd fast float %9273, %9270
  %9277 = fadd fast float %9271, %9274
  %9278 = fmul fast float %9266, %8493
  %9279 = fmul fast float %9267, %8494
  %9280 = fmul fast float %9268, %8495
  %9281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9282 = extractvalue %dx.types.CBufRet.i32 %9281, 0
  %9283 = icmp eq i32 %9282, 0
  br i1 %9283, label %9651, label %9284, !dx.controlflow.hints !182

; <label>:9284                                    ; preds = %9253
  %9285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9286 = extractvalue %dx.types.CBufRet.f32 %9285, 2
  %9287 = extractvalue %dx.types.CBufRet.f32 %9285, 3
  %9288 = fmul fast float %9286, %116
  %9289 = fmul fast float %9287, %117
  %9290 = fmul fast float %9288, 2.000000e+00
  %9291 = fmul fast float %9289, 2.000000e+00
  %9292 = fsub fast float 1.000000e+00, %9290
  %9293 = fsub fast float 1.000000e+00, %9291
  %9294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9295 = extractvalue %dx.types.CBufRet.f32 %9294, 0
  %9296 = extractvalue %dx.types.CBufRet.f32 %9294, 1
  %9297 = extractvalue %dx.types.CBufRet.f32 %9294, 2
  %9298 = fmul fast float %9292, %9295
  %9299 = fmul fast float %9292, %9296
  %9300 = fmul fast float %9292, %9297
  %9301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9302 = extractvalue %dx.types.CBufRet.f32 %9301, 0
  %9303 = extractvalue %dx.types.CBufRet.f32 %9301, 1
  %9304 = extractvalue %dx.types.CBufRet.f32 %9301, 2
  %9305 = fmul fast float %9293, %9302
  %9306 = fmul fast float %9293, %9303
  %9307 = fmul fast float %9293, %9304
  %9308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9309 = extractvalue %dx.types.CBufRet.f32 %9308, 0
  %9310 = extractvalue %dx.types.CBufRet.f32 %9308, 1
  %9311 = extractvalue %dx.types.CBufRet.f32 %9308, 2
  %9312 = fadd fast float %9305, %9309
  %9313 = fadd fast float %9312, %9298
  %9314 = fadd fast float %9306, %9310
  %9315 = fadd fast float %9314, %9299
  %9316 = fadd fast float %9307, %9311
  %9317 = fadd fast float %9316, %9300
  %9318 = fmul fast float %9313, %8489
  %9319 = fmul fast float %9315, %8489
  %9320 = fmul fast float %9317, %8489
  %9321 = fmul fast float %9318, %9318
  %9322 = fmul fast float %9319, %9319
  %9323 = fadd fast float %9321, %9322
  %9324 = fmul fast float %9320, %9320
  %9325 = fadd fast float %9323, %9324
  %9326 = call float @dx.op.unary.f32(i32 24, float %9325)  ; Sqrt(value)
  %9327 = extractvalue %dx.types.CBufRet.f32 %8216, 0
  %9328 = fsub fast float %9326, %9327
  %9329 = extractvalue %dx.types.CBufRet.f32 %8216, 2
  %9330 = fmul fast float %9328, %9329
  %9331 = call float @dx.op.unary.f32(i32 7, float %9330)  ; Saturate(value)
  %9332 = fadd fast float %9331, -5.000000e-01
  %9333 = fmul fast float %9332, 2.000000e+00
  %9334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9335 = extractvalue %dx.types.CBufRet.f32 %9334, 2
  %9336 = call float @dx.op.binary.f32(i32 36, float %9335, float %9333)  ; FMin(a,b)
  %9337 = fsub fast float -0.000000e+00, %9335
  %9338 = fcmp fast ogt float %9336, %9337
  br i1 %9338, label %9339, label %9651, !dx.controlflow.hints !183

; <label>:9339                                    ; preds = %9284
  %9340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9341 = extractvalue %dx.types.CBufRet.f32 %9340, 3
  %9342 = fcmp fast ogt float %9341, 0.000000e+00
  br i1 %9342, label %9343, label %9418, !dx.controlflow.hints !184

; <label>:9343                                    ; preds = %9339
  %9344 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9345 = extractvalue %dx.types.Dimensions %9344, 0
  %9346 = sitofp i32 %9345 to float
  %9347 = extractvalue %dx.types.Dimensions %9344, 1
  %9348 = sitofp i32 %9347 to float
  %9349 = fmul fast float %9288, %9346
  %9350 = fmul fast float %9289, %9348
  %9351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9352 = extractvalue %dx.types.CBufRet.f32 %9351, 1
  %9353 = fsub fast float -0.000000e+00, %9352
  %9354 = fptoui float %9353 to i32
  %9355 = fptoui float %9349 to i32
  %9356 = fptoui float %9350 to i32
  %9357 = and i32 %9354, 31
  %9358 = lshr i32 %9355, %9357
  %9359 = lshr i32 %9356, %9357
  %9360 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9354, i32 %9358, i32 %9359, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9361 = extractvalue %dx.types.ResRet.f32 %9360, 0
  %9362 = fcmp fast olt float %9361, -1.000000e+00
  %9363 = fcmp fast ogt float %9361, -1.000000e+00
  %9364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9365 = extractvalue %dx.types.CBufRet.f32 %9364, 1
  %9366 = select i1 %9363, float %9365, float 1.000000e+00
  %9367 = fadd fast float %9361, 1.000000e+00
  %9368 = fmul fast float %9366, %9367
  %9369 = call float @dx.op.unary.f32(i32 6, float %9368)  ; FAbs(value)
  %9370 = extractvalue %dx.types.CBufRet.f32 %9364, 3
  %9371 = fcmp fast oge float %9369, %9370
  %9372 = select i1 %9371, float 0x4197782600000000, float %9369
  %9373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9374 = extractvalue %dx.types.CBufRet.f32 %9373, 0
  %9375 = extractvalue %dx.types.CBufRet.f32 %9373, 1
  %9376 = extractvalue %dx.types.CBufRet.f32 %9373, 2
  %9377 = select i1 %9362, float %9374, float %9295
  %9378 = select i1 %9362, float %9375, float %9296
  %9379 = select i1 %9362, float %9376, float %9297
  %9380 = fmul fast float %9377, %9292
  %9381 = fmul fast float %9378, %9292
  %9382 = fmul fast float %9379, %9292
  %9383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9384 = extractvalue %dx.types.CBufRet.f32 %9383, 0
  %9385 = extractvalue %dx.types.CBufRet.f32 %9383, 1
  %9386 = extractvalue %dx.types.CBufRet.f32 %9383, 2
  %9387 = select i1 %9362, float %9384, float %9302
  %9388 = select i1 %9362, float %9385, float %9303
  %9389 = select i1 %9362, float %9386, float %9304
  %9390 = fmul fast float %9387, %9293
  %9391 = fmul fast float %9388, %9293
  %9392 = fmul fast float %9389, %9293
  %9393 = fadd fast float %9390, %9380
  %9394 = fadd fast float %9391, %9381
  %9395 = fadd fast float %9392, %9382
  %9396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9397 = extractvalue %dx.types.CBufRet.f32 %9396, 0
  %9398 = extractvalue %dx.types.CBufRet.f32 %9396, 1
  %9399 = extractvalue %dx.types.CBufRet.f32 %9396, 2
  %9400 = select i1 %9362, float %9397, float %9309
  %9401 = select i1 %9362, float %9398, float %9310
  %9402 = select i1 %9362, float %9399, float %9311
  %9403 = fadd fast float %9393, %9400
  %9404 = fadd fast float %9394, %9401
  %9405 = fadd fast float %9395, %9402
  %9406 = fmul fast float %9403, %9372
  %9407 = fmul fast float %9404, %9372
  %9408 = fmul fast float %9405, %9372
  %9409 = fmul fast float %9406, %9406
  %9410 = fmul fast float %9407, %9407
  %9411 = fadd fast float %9409, %9410
  %9412 = fmul fast float %9408, %9408
  %9413 = fadd fast float %9411, %9412
  %9414 = call float @dx.op.unary.f32(i32 24, float %9413)  ; Sqrt(value)
  %9415 = fsub fast float %9414, %9327
  %9416 = fmul fast float %9415, %9329
  %9417 = call float @dx.op.unary.f32(i32 7, float %9416)  ; Saturate(value)
  br label %9418

; <label>:9418                                    ; preds = %9343, %9339
  %9419 = phi float [ %9417, %9343 ], [ 1.000000e+00, %9339 ]
  %9420 = fmul fast float %9336, 5.000000e-01
  %9421 = fadd fast float %9420, 5.000000e-01
  %9422 = call float @dx.op.unary.f32(i32 22, float %9421)  ; Frc(value)
  %9423 = call float @dx.op.unary.f32(i32 27, float %9422)  ; Round_ni(value)
  %9424 = call float @dx.op.unary.f32(i32 22, float %9422)  ; Frc(value)
  %9425 = fmul fast float %9424, 2.000000e+00
  %9426 = fadd fast float %9425, -1.000000e+00
  %9427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %55, float %9288, float %9289, float %9423, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9428 = extractvalue %dx.types.ResRet.f32 %9427, 0
  %9429 = extractvalue %dx.types.ResRet.f32 %9427, 1
  %9430 = extractvalue %dx.types.ResRet.f32 %9427, 2
  %9431 = extractvalue %dx.types.ResRet.f32 %9427, 3
  %9432 = fadd fast float %9428, -5.000000e-01
  %9433 = fadd fast float %9430, -5.000000e-01
  %9434 = fmul fast float %9432, 0xBFD5555560000000
  %9435 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9433, float %9434)  ; FMad(a,b,c)
  %9436 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9429, float 0.000000e+00)  ; FMad(a,b,c)
  %9437 = fadd fast float %9436, %9431
  %9438 = fmul fast float %9432, -7.500000e-01
  %9439 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9433, float %9438)  ; FMad(a,b,c)
  %9440 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9429, float 0.000000e+00)  ; FMad(a,b,c)
  %9441 = fadd fast float %9440, %9431
  %9442 = call float @dx.op.binary.f32(i32 35, float %9435, float -1.000000e+00)  ; FMax(a,b)
  %9443 = call float @dx.op.binary.f32(i32 35, float %9437, float -1.000000e+00)  ; FMax(a,b)
  %9444 = call float @dx.op.binary.f32(i32 35, float %9439, float -1.000000e+00)  ; FMax(a,b)
  %9445 = call float @dx.op.binary.f32(i32 35, float %9441, float -1.000000e+00)  ; FMax(a,b)
  %9446 = call float @dx.op.binary.f32(i32 36, float %9442, float 1.000000e+00)  ; FMin(a,b)
  %9447 = call float @dx.op.binary.f32(i32 36, float %9443, float 1.000000e+00)  ; FMin(a,b)
  %9448 = call float @dx.op.binary.f32(i32 36, float %9444, float 1.000000e+00)  ; FMin(a,b)
  %9449 = call float @dx.op.binary.f32(i32 36, float %9445, float 1.000000e+00)  ; FMin(a,b)
  %9450 = fcmp fast olt float %9446, 0x3FEFFF8020000000
  br i1 %9450, label %9451, label %9566, !dx.controlflow.hints !185

; <label>:9451                                    ; preds = %9418
  %9452 = extractvalue %dx.types.CBufRet.f32 %9334, 3
  %9453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9454 = extractvalue %dx.types.CBufRet.f32 %9453, 0
  %9455 = extractvalue %dx.types.CBufRet.f32 %9453, 1
  %9456 = extractvalue %dx.types.CBufRet.f32 %9453, 2
  %9457 = extractvalue %dx.types.CBufRet.f32 %9453, 3
  %9458 = fsub fast float %9454, %9446
  %9459 = fsub fast float %9455, %9447
  %9460 = fsub fast float %9456, %9448
  %9461 = fsub fast float %9457, %9449
  %9462 = fmul fast float %9458, %9452
  %9463 = fmul fast float %9459, %9452
  %9464 = fmul fast float %9460, %9452
  %9465 = fmul fast float %9461, %9452
  %9466 = fadd fast float %9462, %9446
  %9467 = fadd fast float %9463, %9447
  %9468 = fsub fast float -0.000000e+00, %9467
  %9469 = fadd fast float %9464, %9448
  %9470 = fadd fast float %9465, %9449
  %9471 = fmul fast float %9466, %9466
  %9472 = fsub fast float %9467, %9471
  %9473 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9472)  ; FMax(a,b)
  %9474 = fdiv fast float 1.000000e+00, %9473
  %9475 = fmul fast float %9467, %9466
  %9476 = fsub fast float %9469, %9475
  %9477 = fsub fast float %9426, %9466
  %9478 = fmul fast float %9426, %9426
  %9479 = fsub fast float %9478, %9467
  %9480 = fmul fast float %9477, %9474
  %9481 = fmul fast float %9480, %9476
  %9482 = fsub fast float %9479, %9481
  %9483 = fmul fast float %9467, %9467
  %9484 = fsub fast float %9470, %9483
  %9485 = fmul fast float %9476, %9476
  %9486 = fmul fast float %9485, %9474
  %9487 = fsub fast float %9484, %9486
  %9488 = fdiv fast float %9482, %9487
  %9489 = fmul fast float %9476, %9488
  %9490 = fsub fast float %9477, %9489
  %9491 = fmul fast float %9490, %9474
  %9492 = fmul fast float %9491, %9466
  %9493 = fsub fast float 1.000000e+00, %9492
  %9494 = fmul fast float %9467, %9488
  %9495 = fsub fast float %9493, %9494
  %9496 = fmul fast float %9491, %9491
  %9497 = fmul fast float %9488, 4.000000e+00
  %9498 = fmul fast float %9497, %9495
  %9499 = fsub fast float %9496, %9498
  %9500 = call float @dx.op.unary.f32(i32 24, float %9499)  ; Sqrt(value)
  %9501 = fcmp fast oge float %9491, 0.000000e+00
  %9502 = fsub fast float -0.000000e+00, %9500
  %9503 = select i1 %9501, float %9502, float %9500
  %9504 = fsub fast float %9503, %9491
  %9505 = fdiv fast float %9504, %9488
  %9506 = fdiv fast float %9495, %9504
  %9507 = fmul fast float %9505, 5.000000e-01
  %9508 = fmul fast float %9506, 2.000000e+00
  %9509 = select i1 %9501, float %9507, float %9508
  %9510 = select i1 %9501, float %9508, float %9507
  %9511 = call float @dx.op.binary.f32(i32 35, float %9509, float %9510)  ; FMax(a,b)
  %9512 = call float @dx.op.binary.f32(i32 36, float %9509, float %9510)  ; FMin(a,b)
  %9513 = fcmp fast ogt float %9426, %9512
  br i1 %9513, label %9514, label %9524

; <label>:9514                                    ; preds = %9451
  %9515 = fsub fast float %9426, %9512
  %9516 = fsub fast float %9511, %9512
  %9517 = fmul fast float %9515, %9516
  %9518 = fmul fast float %9511, %9426
  %9519 = fadd fast float %9511, %9426
  %9520 = fmul fast float %9519, %9466
  %9521 = fadd fast float %9518, %9467
  %9522 = fsub fast float %9521, %9520
  %9523 = fdiv fast float %9522, %9517
  br label %9524

; <label>:9524                                    ; preds = %9514, %9451
  %9525 = phi float [ %9523, %9514 ], [ 0.000000e+00, %9451 ]
  %9526 = fcmp fast ogt float %9426, %9511
  %9527 = fsub fast float %9426, %9511
  br i1 %9526, label %9528, label %9538

; <label>:9528                                    ; preds = %9524
  %9529 = fsub fast float %9511, %9512
  %9530 = fmul fast float %9529, %9527
  %9531 = fmul fast float %9512, %9426
  %9532 = fadd fast float %9512, %9426
  %9533 = fmul fast float %9532, %9466
  %9534 = fsub fast float %9468, %9531
  %9535 = fadd fast float %9534, %9533
  %9536 = fdiv fast float %9535, %9530
  %9537 = fadd fast float %9536, %9525
  br label %9538

; <label>:9538                                    ; preds = %9528, %9524
  %9539 = phi float [ %9537, %9528 ], [ %9525, %9524 ]
  %9540 = fsub fast float %9426, %9512
  %9541 = fmul fast float %9540, %9527
  %9542 = fmul fast float %9512, %9511
  %9543 = fadd fast float %9512, %9511
  %9544 = fmul fast float %9543, %9466
  %9545 = fadd fast float %9542, %9467
  %9546 = fsub fast float %9545, %9544
  %9547 = fdiv fast float %9546, %9541
  %9548 = call float @dx.op.unary.f32(i32 7, float %9539)  ; Saturate(value)
  %9549 = fcmp fast oeq float %8217, 0.000000e+00
  %9550 = extractvalue %dx.types.CBufRet.f32 %9334, 0
  %9551 = fcmp fast oeq float %9550, 0.000000e+00
  %9552 = or i1 %9549, %9551
  %9553 = fmul fast float %9550, 2.000000e+00
  %9554 = fadd fast float %9335, %9336
  %9555 = fdiv fast float %9554, %9553
  %9556 = call float @dx.op.unary.f32(i32 7, float %9555)  ; Saturate(value)
  %9557 = fmul fast float %9556, 2.000000e+00
  %9558 = fsub fast float 3.000000e+00, %9557
  %9559 = fmul fast float %9556, %9556
  %9560 = fmul fast float %9559, %9558
  %9561 = select i1 %9552, float 1.000000e+00, float %9560
  %9562 = fmul fast float %9547, %8217
  %9563 = fadd fast float %9548, %9562
  %9564 = call float @dx.op.unary.f32(i32 7, float %9563)  ; Saturate(value)
  %9565 = fmul fast float %9561, %9564
  br label %9566

; <label>:9566                                    ; preds = %9538, %9418
  %9567 = phi float [ %9565, %9538 ], [ 0.000000e+00, %9418 ]
  %9568 = fsub fast float 1.000000e+00, %9567
  %9569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %55, float %9288, float %9289, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9570 = extractvalue %dx.types.ResRet.f32 %9569, 0
  %9571 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9572 = extractvalue %dx.types.CBufRet.i32 %9571, 2
  %9573 = icmp eq i32 %9572, 0
  br i1 %9573, label %9579, label %9574

; <label>:9574                                    ; preds = %9566
  %9575 = call float @dx.op.unary.f32(i32 7, float %9567)  ; Saturate(value)
  %9576 = fadd fast float %9570, -1.000000e+00
  %9577 = fmul fast float %9575, %9576
  %9578 = fadd fast float %9577, 1.000000e+00
  br label %9579

; <label>:9579                                    ; preds = %9574, %9566
  %9580 = phi float [ %9578, %9574 ], [ %9568, %9566 ]
  br i1 %9342, label %9581, label %9599

; <label>:9581                                    ; preds = %9579
  %9582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9583 = extractvalue %dx.types.CBufRet.f32 %9582, 1
  %9584 = fsub fast float %9419, %9583
  %9585 = call float @dx.op.unary.f32(i32 7, float %9584)  ; Saturate(value)
  %9586 = fsub fast float %9419, %9341
  %9587 = call float @dx.op.unary.f32(i32 7, float %9586)  ; Saturate(value)
  %9588 = fsub fast float %9585, %9587
  %9589 = fsub fast float %9421, %9587
  %9590 = fdiv fast float %9589, %9588
  %9591 = call float @dx.op.unary.f32(i32 7, float %9590)  ; Saturate(value)
  %9592 = fmul fast float %9591, 2.000000e+00
  %9593 = fsub fast float 3.000000e+00, %9592
  %9594 = fsub fast float %9570, %9580
  %9595 = fmul fast float %9591, %9591
  %9596 = fmul fast float %9595, %9594
  %9597 = fmul fast float %9596, %9593
  %9598 = fadd fast float %9597, %9580
  br label %9599

; <label>:9599                                    ; preds = %9581, %9579
  %9600 = phi float [ %9598, %9581 ], [ %9580, %9579 ]
  %9601 = call float @dx.op.binary.f32(i32 35, float %9570, float %9600)  ; FMax(a,b)
  %9602 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9603 = extractvalue %dx.types.CBufRet.i32 %9602, 2
  %9604 = and i32 %9603, 1
  %9605 = icmp eq i32 %9604, 0
  %9606 = fcmp fast une float %9601, 1.000000e+00
  %9607 = and i1 %9606, %9605
  br i1 %9607, label %9608, label %9627

; <label>:9608                                    ; preds = %9599
  %9609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %55, float %9288, float %9289, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9610 = extractvalue %dx.types.ResRet.f32 %9609, 0
  %9611 = extractvalue %dx.types.ResRet.f32 %9609, 1
  %9612 = extractvalue %dx.types.ResRet.f32 %9609, 2
  %9613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9614 = extractvalue %dx.types.CBufRet.f32 %9613, 1
  %9615 = fmul fast float %9614, %9610
  %9616 = fmul fast float %9614, %9611
  %9617 = fmul fast float %9614, %9612
  %9618 = fcmp fast ogt float %9570, 0x3FEFFF2E40000000
  %9619 = fsub fast float 1.000000e+00, %9601
  %9620 = fsub fast float 1.000000e+00, %9570
  %9621 = fdiv fast float %9619, %9620
  %9622 = call float @dx.op.unary.f32(i32 7, float %9621)  ; Saturate(value)
  %9623 = select i1 %9618, float 0.000000e+00, float %9622
  %9624 = fmul fast float %9615, %9623
  %9625 = fmul fast float %9616, %9623
  %9626 = fmul fast float %9617, %9623
  br label %9627

; <label>:9627                                    ; preds = %9608, %9599
  %9628 = phi float [ 0.000000e+00, %9599 ], [ %9624, %9608 ]
  %9629 = phi float [ 0.000000e+00, %9599 ], [ %9625, %9608 ]
  %9630 = phi float [ 0.000000e+00, %9599 ], [ %9626, %9608 ]
  %9631 = fmul fast float %9628, %8205
  %9632 = fmul fast float %9629, %8205
  %9633 = fmul fast float %9630, %8205
  %9634 = fmul fast float %9601, %9263
  %9635 = call float @dx.op.dot3.f32(i32 55, float %9601, float %9601, float %9601, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9636 = call float @dx.op.dot3.f32(i32 55, float %9631, float %9632, float %9633, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9637 = select i1 %275, float %9635, float %9601
  %9638 = select i1 %275, float 1.000000e+00, float %9601
  %9639 = select i1 %275, float %9636, float %9631
  %9640 = select i1 %275, float 0.000000e+00, float %9632
  %9641 = select i1 %275, float 0.000000e+00, float %9633
  %9642 = fmul fast float %9637, %9275
  %9643 = fmul fast float %9637, %9276
  %9644 = fmul fast float %9638, %9277
  %9645 = fadd fast float %9642, %9639
  %9646 = fadd fast float %9643, %9640
  %9647 = fadd fast float %9641, %9644
  %9648 = fmul fast float %9637, %9278
  %9649 = fmul fast float %9637, %9279
  %9650 = fmul fast float %9638, %9280
  br label %9651

; <label>:9651                                    ; preds = %9627, %9284, %9253, %8485
  %9652 = phi float [ %8490, %8485 ], [ %9275, %9253 ], [ %9645, %9627 ], [ %9275, %9284 ]
  %9653 = phi float [ %8491, %8485 ], [ %9276, %9253 ], [ %9646, %9627 ], [ %9276, %9284 ]
  %9654 = phi float [ %8492, %8485 ], [ %9277, %9253 ], [ %9647, %9627 ], [ %9277, %9284 ]
  %9655 = phi float [ %8493, %8485 ], [ %9278, %9253 ], [ %9648, %9627 ], [ %9278, %9284 ]
  %9656 = phi float [ %8494, %8485 ], [ %9279, %9253 ], [ %9649, %9627 ], [ %9279, %9284 ]
  %9657 = phi float [ %8495, %8485 ], [ %9280, %9253 ], [ %9650, %9627 ], [ %9280, %9284 ]
  %9658 = phi float [ %8496, %8485 ], [ %9263, %9253 ], [ %9634, %9627 ], [ %9263, %9284 ]
  %9659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9660 = extractvalue %dx.types.CBufRet.f32 %9659, 2
  %9661 = extractvalue %dx.types.CBufRet.f32 %9659, 3
  %9662 = fmul fast float %9660, %116
  %9663 = fmul fast float %9661, %117
  %9664 = call float @dx.op.unary.f32(i32 7, float %9662)  ; Saturate(value)
  %9665 = call float @dx.op.unary.f32(i32 7, float %9663)  ; Saturate(value)
  %9666 = select i1 %8227, i32 2, i32 0
  %9667 = or i32 %9666, 1
  %9668 = uitofp i32 %9667 to float
  %9669 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9664, float %9665, float %9668, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9670 = extractvalue %dx.types.ResRet.f32 %9669, 0
  %9671 = extractvalue %dx.types.ResRet.f32 %9669, 1
  %9672 = extractvalue %dx.types.ResRet.f32 %9669, 2
  %9673 = extractvalue %dx.types.ResRet.f32 %9669, 3
  %9674 = add nuw nsw i32 %9666, 2
  %9675 = uitofp i32 %9674 to float
  %9676 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9664, float %9665, float %9675, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9677 = extractvalue %dx.types.ResRet.f32 %9676, 0
  %9678 = extractvalue %dx.types.ResRet.f32 %9676, 1
  %9679 = extractvalue %dx.types.ResRet.f32 %9676, 2
  %9680 = extractvalue %dx.types.ResRet.f32 %9676, 3
  %9681 = call float @dx.op.binary.f32(i32 35, float %9671, float %9672)  ; FMax(a,b)
  %9682 = call float @dx.op.binary.f32(i32 35, float %9670, float %9681)  ; FMax(a,b)
  %9683 = call float @dx.op.binary.f32(i32 35, float %9682, float %9673)  ; FMax(a,b)
  %9684 = call float @dx.op.binary.f32(i32 36, float %9678, float %9679)  ; FMin(a,b)
  %9685 = call float @dx.op.binary.f32(i32 36, float %9677, float %9684)  ; FMin(a,b)
  %9686 = call float @dx.op.binary.f32(i32 36, float %9685, float %9680)  ; FMin(a,b)
  %9687 = fmul fast float %9683, 2.550000e+02
  %9688 = fadd fast float %9687, 0x3F70101020000000
  %9689 = fptoui float %9688 to i32
  %9690 = fmul fast float %9686, 2.550000e+02
  %9691 = fadd fast float %9690, 0x3F70101020000000
  %9692 = fptoui float %9691 to i32
  %9693 = icmp ult i32 %9689, %9692
  br i1 %9693, label %9694, label %9863

; <label>:9694                                    ; preds = %9651
  %9695 = fcmp fast ogt float %102, 9.843750e-01
  %9696 = fadd fast float %8489, -4.000000e+00
  %9697 = select i1 %9695, float -4.000000e+00, float %9696
  %9698 = call float @dx.op.binary.f32(i32 35, float %9697, float 0.000000e+00)  ; FMax(a,b)
  %9699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9700 = extractvalue %dx.types.CBufRet.f32 %9699, 0
  %9701 = fadd fast float %9700, %9698
  %9702 = extractvalue %dx.types.CBufRet.f32 %9699, 2
  %9703 = fmul fast float %9701, %9702
  %9704 = call float @dx.op.unary.f32(i32 23, float %9703)  ; Log(value)
  %9705 = extractvalue %dx.types.CBufRet.f32 %9699, 3
  %9706 = fmul fast float %9705, %9704
  %9707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9708 = extractvalue %dx.types.CBufRet.f32 %9707, 2
  %9709 = fmul fast float %9706, %9708
  %9710 = call float @dx.op.unary.f32(i32 7, float %9709)  ; Saturate(value)
  %9711 = uitofp i32 %9689 to float
  %9712 = uitofp i32 %9692 to float
  %9713 = fadd fast float %9711, 5.000000e-01
  %9714 = fadd fast float %9712, 5.000000e-01
  %9715 = fmul fast float %9708, %9713
  %9716 = fmul fast float %9708, %9714
  %9717 = fadd fast float %9715, 0x3F0FFB4800000000
  %9718 = fadd fast float %9716, 0xBF0FFB4800000000
  %9719 = call float @dx.op.binary.f32(i32 35, float %9710, float %9717)  ; FMax(a,b)
  %9720 = call float @dx.op.binary.f32(i32 36, float %9719, float %9718)  ; FMin(a,b)
  %9721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9722 = extractvalue %dx.types.CBufRet.f32 %9721, 1
  %9723 = extractvalue %dx.types.CBufRet.f32 %9721, 2
  %9724 = extractvalue %dx.types.CBufRet.f32 %9721, 0
  %9725 = select i1 %8227, float %9724, float 0.000000e+00
  %9726 = fmul fast float %9722, %9720
  %9727 = fadd fast float %9725, %9726
  %9728 = fadd fast float %9725, %9723
  %9729 = fsub fast float %9722, %9723
  %9730 = fadd fast float %9729, %9725
  %9731 = call float @dx.op.binary.f32(i32 35, float %9727, float %9728)  ; FMax(a,b)
  %9732 = call float @dx.op.binary.f32(i32 36, float %9731, float %9730)  ; FMin(a,b)
  %9733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %9664, float %9665, float %9732, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9734 = extractvalue %dx.types.ResRet.f32 %9733, 0
  %9735 = extractvalue %dx.types.ResRet.f32 %9733, 1
  %9736 = extractvalue %dx.types.ResRet.f32 %9733, 2
  %9737 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9738 = extractvalue %dx.types.CBufRet.i32 %9737, 0
  %9739 = extractvalue %dx.types.CBufRet.i32 %9737, 1
  %9740 = uitofp i32 %9738 to float
  %9741 = uitofp i32 %9739 to float
  %9742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9743 = extractvalue %dx.types.CBufRet.f32 %9742, 0
  %9744 = extractvalue %dx.types.CBufRet.f32 %9742, 1
  %9745 = fmul fast float %9740, %9664
  %9746 = fmul fast float %9741, %9665
  %9747 = fadd fast float %9745, -5.000000e-01
  %9748 = fadd fast float %9746, -5.000000e-01
  %9749 = call float @dx.op.unary.f32(i32 22, float %9747)  ; Frc(value)
  %9750 = call float @dx.op.unary.f32(i32 22, float %9748)  ; Frc(value)
  %9751 = fmul fast float %9749, %9749
  %9752 = fmul fast float %9751, %9749
  %9753 = fsub fast float 3.000000e+00, %9749
  %9754 = fmul fast float %9751, %9753
  %9755 = fmul fast float %9749, 3.000000e+00
  %9756 = fmul fast float %9752, 3.000000e+00
  %9757 = fmul fast float %9751, 6.000000e+00
  %9758 = fsub fast float %9756, %9757
  %9759 = fadd fast float %9758, 4.000000e+00
  %9760 = fmul fast float %9759, 0x3FC5555560000000
  %9761 = fmul fast float %9752, -3.000000e+00
  %9762 = fadd fast float %9751, %9749
  %9763 = fmul fast float %9762, 3.000000e+00
  %9764 = fadd fast float %9761, 1.000000e+00
  %9765 = fadd fast float %9764, %9763
  %9766 = fmul fast float %9752, 0x3FC5555560000000
  %9767 = fmul fast float %9750, %9750
  %9768 = fmul fast float %9767, %9750
  %9769 = fsub fast float 3.000000e+00, %9750
  %9770 = fmul fast float %9767, %9769
  %9771 = fmul fast float %9750, 3.000000e+00
  %9772 = fmul fast float %9768, 3.000000e+00
  %9773 = fmul fast float %9767, 6.000000e+00
  %9774 = fsub fast float %9772, %9773
  %9775 = fadd fast float %9774, 4.000000e+00
  %9776 = fmul fast float %9775, 0x3FC5555560000000
  %9777 = fmul fast float %9768, -3.000000e+00
  %9778 = fadd fast float %9767, %9750
  %9779 = fmul fast float %9778, 3.000000e+00
  %9780 = fadd fast float %9777, 1.000000e+00
  %9781 = fadd fast float %9780, %9779
  %9782 = fmul fast float %9768, 0x3FC5555560000000
  %9783 = fadd fast float %9749, 1.000000e+00
  %9784 = fsub fast float 1.000000e+00, %9755
  %9785 = fadd fast float %9784, %9754
  %9786 = fadd fast float %9785, %9759
  %9787 = fmul fast float %9786, 0x3FC5555560000000
  %9788 = fdiv fast float %9760, %9787
  %9789 = fsub fast float %9783, %9788
  %9790 = fsub fast float 1.000000e+00, %9749
  %9791 = fadd fast float %9765, %9752
  %9792 = fmul fast float %9791, 0x3FC5555560000000
  %9793 = fdiv fast float %9766, %9792
  %9794 = fadd fast float %9790, %9793
  %9795 = fadd fast float %9750, 1.000000e+00
  %9796 = fsub fast float 1.000000e+00, %9771
  %9797 = fadd fast float %9796, %9770
  %9798 = fadd fast float %9797, %9775
  %9799 = fmul fast float %9798, 0x3FC5555560000000
  %9800 = fdiv fast float %9776, %9799
  %9801 = fsub fast float %9795, %9800
  %9802 = fsub fast float 1.000000e+00, %9750
  %9803 = fadd fast float %9781, %9768
  %9804 = fmul fast float %9803, 0x3FC5555560000000
  %9805 = fdiv fast float %9782, %9804
  %9806 = fadd fast float %9805, %9802
  %9807 = fmul fast float %9789, %9743
  %9808 = fsub fast float %9664, %9807
  %9809 = fmul fast float %9794, %9743
  %9810 = fadd fast float %9809, %9664
  %9811 = fmul fast float %9806, %9744
  %9812 = fadd fast float %9811, %9665
  %9813 = fmul fast float %9801, %9744
  %9814 = fsub fast float %9665, %9813
  %9815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9808, float %9814, float %9732, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9816 = extractvalue %dx.types.ResRet.f32 %9815, 0
  %9817 = extractvalue %dx.types.ResRet.f32 %9815, 1
  %9818 = extractvalue %dx.types.ResRet.f32 %9815, 2
  %9819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9810, float %9814, float %9732, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9820 = extractvalue %dx.types.ResRet.f32 %9819, 0
  %9821 = extractvalue %dx.types.ResRet.f32 %9819, 1
  %9822 = extractvalue %dx.types.ResRet.f32 %9819, 2
  %9823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9808, float %9812, float %9732, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9824 = extractvalue %dx.types.ResRet.f32 %9823, 0
  %9825 = extractvalue %dx.types.ResRet.f32 %9823, 1
  %9826 = extractvalue %dx.types.ResRet.f32 %9823, 2
  %9827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9810, float %9812, float %9732, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9828 = extractvalue %dx.types.ResRet.f32 %9827, 0
  %9829 = extractvalue %dx.types.ResRet.f32 %9827, 1
  %9830 = extractvalue %dx.types.ResRet.f32 %9827, 2
  %9831 = fsub fast float %9824, %9816
  %9832 = fsub fast float %9825, %9817
  %9833 = fsub fast float %9826, %9818
  %9834 = fmul fast float %9831, %9804
  %9835 = fmul fast float %9832, %9804
  %9836 = fmul fast float %9833, %9804
  %9837 = fadd fast float %9834, %9816
  %9838 = fadd fast float %9835, %9817
  %9839 = fadd fast float %9836, %9818
  %9840 = fsub fast float %9828, %9820
  %9841 = fsub fast float %9829, %9821
  %9842 = fsub fast float %9830, %9822
  %9843 = fmul fast float %9840, %9804
  %9844 = fmul fast float %9841, %9804
  %9845 = fmul fast float %9842, %9804
  %9846 = fsub fast float %9820, %9837
  %9847 = fadd fast float %9846, %9843
  %9848 = fsub fast float %9821, %9838
  %9849 = fadd fast float %9848, %9844
  %9850 = fsub fast float %9822, %9839
  %9851 = fadd fast float %9850, %9845
  %9852 = fmul fast float %9847, %9792
  %9853 = fmul fast float %9849, %9792
  %9854 = fmul fast float %9851, %9792
  %9855 = fadd fast float %9852, %9837
  %9856 = fadd fast float %9853, %9838
  %9857 = fadd fast float %9854, %9839
  %9858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9859 = extractvalue %dx.types.CBufRet.f32 %9858, 1
  %9860 = fmul fast float %9855, %9859
  %9861 = fmul fast float %9856, %9859
  %9862 = fmul fast float %9857, %9859
  br label %9863

; <label>:9863                                    ; preds = %9694, %9651
  %9864 = phi float [ %9734, %9694 ], [ 1.000000e+00, %9651 ]
  %9865 = phi float [ %9735, %9694 ], [ 1.000000e+00, %9651 ]
  %9866 = phi float [ %9736, %9694 ], [ 1.000000e+00, %9651 ]
  %9867 = phi float [ %9860, %9694 ], [ 0.000000e+00, %9651 ]
  %9868 = phi float [ %9861, %9694 ], [ 0.000000e+00, %9651 ]
  %9869 = phi float [ %9862, %9694 ], [ 0.000000e+00, %9651 ]
  %9870 = fmul fast float %9867, %8205
  %9871 = fmul fast float %9868, %8205
  %9872 = fmul fast float %9869, %8205
  %9873 = fmul fast float %9864, %9658
  %9874 = call float @dx.op.dot3.f32(i32 55, float %9864, float %9865, float %9866, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9875 = call float @dx.op.dot3.f32(i32 55, float %9870, float %9871, float %9872, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9876 = select i1 %275, float %9874, float %9864
  %9877 = select i1 %275, float %9874, float %9865
  %9878 = select i1 %275, float 1.000000e+00, float %9866
  %9879 = select i1 %275, float %9875, float %9870
  %9880 = select i1 %275, float 0.000000e+00, float %9871
  %9881 = select i1 %275, float 0.000000e+00, float %9872
  %9882 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9883 = extractvalue %dx.types.CBufRet.i32 %9882, 3
  %9884 = and i32 %9883, 3
  %9885 = icmp ne i32 %9884, 0
  %9886 = and i32 %9883, 4
  %9887 = icmp ne i32 %9886, 0
  %9888 = and i1 %9885, %9887
  %9889 = and i1 %275, %9888
  br i1 %9889, label %9890, label %9896

; <label>:9890                                    ; preds = %9863
  %9891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9892 = extractvalue %dx.types.CBufRet.f32 %9891, 1
  %9893 = fadd fast float %9873, -1.000000e+00
  %9894 = fmul fast float %9892, %9893
  %9895 = fadd fast float %9894, 1.000000e+00
  br label %9896

; <label>:9896                                    ; preds = %9890, %9863
  %9897 = phi float [ %9895, %9890 ], [ %9873, %9863 ]
  %9898 = fadd fast float %9655, %9652
  %9899 = fmul fast float %9876, %9898
  %9900 = fadd fast float %9899, %9879
  %9901 = fadd fast float %9656, %9653
  %9902 = fmul fast float %9877, %9901
  %9903 = fadd fast float %9902, %9880
  %9904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9905 = extractvalue %dx.types.CBufRet.f32 %9904, 0
  br i1 %275, label %9906, label %9929

; <label>:9906                                    ; preds = %9896
  %9907 = fadd fast float %9900, %9903
  %9908 = fmul fast float %9905, %9907
  %9909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9910 = extractvalue %dx.types.CBufRet.f32 %9909, 3
  %9911 = extractvalue %dx.types.CBufRet.f32 %8209, 1
  %9912 = fsub fast float %8214, %8208
  %9913 = fadd fast float %9912, %8215
  %9914 = fsub fast float %9913, %9911
  %9915 = extractvalue %dx.types.CBufRet.f32 %8209, 2
  %9916 = fmul fast float %9914, %9915
  %9917 = call float @dx.op.unary.f32(i32 7, float %9916)  ; Saturate(value)
  %9918 = fsub fast float %9917, %9910
  %9919 = fmul fast float %9918, %9897
  %9920 = fadd fast float %9919, %9910
  %9921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9922 = extractvalue %dx.types.CBufRet.f32 %9921, 0
  %9923 = fsub fast float %9920, %9922
  %9924 = fmul fast float %9923, 1.000000e+01
  %9925 = call float @dx.op.unary.f32(i32 7, float %9924)  ; Saturate(value)
  %9926 = fmul fast float %9925, %8204
  %9927 = fadd fast float %9926, %8205
  %9928 = fmul fast float %9927, %9920
  br label %9953

; <label>:9929                                    ; preds = %9896
  %9930 = fadd fast float %9657, %9654
  %9931 = fmul fast float %9878, %9930
  %9932 = fadd fast float %9931, %9881
  %9933 = fmul fast float %9905, %9900
  %9934 = fmul fast float %9905, %9903
  %9935 = fmul fast float %9905, %9932
  %9936 = call float @dx.op.binary.f32(i32 35, float %9934, float %9935)  ; FMax(a,b)
  %9937 = call float @dx.op.binary.f32(i32 35, float %9933, float %9936)  ; FMax(a,b)
  %9938 = call float @dx.op.binary.f32(i32 35, float %9937, float %8205)  ; FMax(a,b)
  %9939 = fcmp fast ugt float %9938, 0x3F10000000000000
  br i1 %9939, label %9941, label %9940

; <label>:9940                                    ; preds = %9929
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9941

; <label>:9941                                    ; preds = %9940, %9929
  %9942 = add i32 %61, 356
  %9943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %9942, i32 undef)  ; BufferLoad(srv,index,wot)
  %9944 = extractvalue %dx.types.ResRet.i32 %9943, 0
  %9945 = and i32 %9944, 32
  %9946 = icmp eq i32 %9945, 0
  br i1 %9946, label %9953, label %9947

; <label>:9947                                    ; preds = %9941
  %9948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9949 = extractvalue %dx.types.CBufRet.f32 %9948, 0
  %9950 = fmul fast float %9949, 0x3FE99999A0000000
  %9951 = fadd fast float %9949, %9933
  %9952 = fadd fast float %9950, %9935
  br label %9953

; <label>:9953                                    ; preds = %9947, %9941, %9906
  %9954 = phi float [ %9908, %9906 ], [ %9951, %9947 ], [ %9933, %9941 ]
  %9955 = phi float [ %9928, %9906 ], [ %9934, %9947 ], [ %9934, %9941 ]
  %9956 = phi float [ %9927, %9906 ], [ %9952, %9947 ], [ %9935, %9941 ]
  %9957 = phi float [ %9927, %9906 ], [ %8205, %9947 ], [ %8205, %9941 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9958 = call float @dx.op.binary.f32(i32 36, float %9954, float 3.225500e+04)  ; FMin(a,b)
  %9959 = call float @dx.op.binary.f32(i32 36, float %9955, float 3.225500e+04)  ; FMin(a,b)
  %9960 = call float @dx.op.binary.f32(i32 36, float %9956, float 3.225500e+04)  ; FMin(a,b)
  %9961 = call float @dx.op.binary.f32(i32 36, float %9957, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9958)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9959)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9960)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9961)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

