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
; shader hash: 8b4b42978cd1e75591477aaece8c105e
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
  %213 = fmul fast float %116, 5.000000e-01
  %214 = fmul fast float %117, 5.000000e-01
  %215 = fptosi float %213 to i32
  %216 = fptosi float %214 to i32
  %217 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %215, i32 %216, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = lshr i32 %218, 18
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F4C00EBA0000000
  %222 = call float @dx.op.unary.f32(i32 21, float %221)  ; Exp(value)
  %223 = fadd fast float %222, -1.000000e+00
  %224 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %225 = extractvalue %dx.types.Dimensions %224, 0
  %226 = sitofp i32 %225 to float
  %227 = extractvalue %dx.types.Dimensions %224, 1
  %228 = sitofp i32 %227 to float
  %229 = fcmp fast oge float %213, %226
  %230 = fcmp fast oge float %214, %228
  %231 = or i1 %229, %230
  %232 = select i1 %231, float 0x4197782600000000, float %223
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %235 = extractvalue %dx.types.CBufRet.f32 %233, 3
  %236 = fmul fast float %234, %116
  %237 = fmul fast float %235, %117
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = and i32 %239, 114688
  %241 = icmp ne i32 %240, 0
  %242 = select i1 %241, float %236, float 0.000000e+00
  %243 = select i1 %241, float %237, float 0.000000e+00
  %244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %56, float %242, float %243, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = fmul fast float %245, 2.550000e+02
  %247 = fptoui float %246 to i32
  %248 = select i1 %241, i32 %247, i32 0
  %249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.i32 %249, 3
  %251 = and i32 %250, 3
  %252 = icmp ne i32 %251, 0
  %253 = and i32 %250, 4
  %254 = icmp ne i32 %253, 0
  %255 = and i1 %252, %254
  br i1 %255, label %256, label %265

; <label>:256                                     ; preds = %0
  %257 = fmul fast float %151, %117
  %258 = fmul fast float %150, %116
  %259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %55, float %258, float %257, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = fsub fast float 1.000000e+00, %260
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 0
  %264 = fcmp fast olt float %261, %263
  br label %268

; <label>:265                                     ; preds = %0
  %266 = icmp eq i32 %253, 0
  %267 = and i1 %252, %266
  br label %268

; <label>:268                                     ; preds = %265, %256
  %269 = phi i1 [ %264, %256 ], [ %267, %265 ]
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 2
  %272 = fmul fast float %271, 0x3FE3C6EF40000000
  %273 = frem fast float %116, 2.560000e+02
  %274 = frem fast float %117, 2.560000e+02
  %275 = fptoui float %273 to i32
  %276 = fptoui float %274 to i32
  %277 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %275, i32 %276, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = fadd fast float %278, %272
  %280 = call float @dx.op.unary.f32(i32 22, float %279)  ; Frc(value)
  %281 = add i32 %61, 156
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = shl i32 %283, 4
  %285 = and i32 %284, 32752
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %283, 7
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %283, 22
  %291 = shl nuw nsw i32 %290, 5
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = add i32 %61, 216
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %295, 8
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %295, 16
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = add i32 %61, 36
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = add i32 %61, 288
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 65535
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %316, 16
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = fmul fast float %318, 0x3F50624DE0000000
  %322 = fmul fast float %320, 0x3F50624DE0000000
  %323 = add i32 %61, 172
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 65535
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %351, 16
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = add i32 %61, 304
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = and i32 %358, 65535
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %358, 16
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = fmul fast float %360, 0x3F50624DE0000000
  %364 = fmul fast float %362, 0x3F50624DE0000000
  %365 = add i32 %61, 188
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = shl i32 %367, 4
  %369 = and i32 %368, 32752
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %367, 7
  %372 = and i32 %371, 32752
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %367, 22
  %375 = shl nuw nsw i32 %374, 5
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = add i32 %61, 248
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 255
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %381, 0x3F70101020000000
  %383 = lshr i32 %379, 8
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = lshr i32 %379, 16
  %388 = and i32 %387, 255
  %389 = uitofp i32 %388 to float
  %390 = fmul fast float %389, 0x3F70101020000000
  %391 = add i32 %61, 68
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 65535
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %393, 16
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = add i32 %61, 320
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 65535
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = lshr i32 %400, 16
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = fmul fast float %402, 0x3F50624DE0000000
  %406 = fmul fast float %404, 0x3F50624DE0000000
  %407 = add i32 %61, 204
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = shl i32 %409, 4
  %411 = and i32 %410, 32752
  %412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %411)  ; LegacyF16ToF32(value)
  %413 = lshr i32 %409, 7
  %414 = and i32 %413, 32752
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = lshr i32 %409, 22
  %417 = shl nuw nsw i32 %416, 5
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = add i32 %61, 264
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 255
  %423 = uitofp i32 %422 to float
  %424 = fmul fast float %423, 0x3F70101020000000
  %425 = lshr i32 %421, 8
  %426 = and i32 %425, 255
  %427 = uitofp i32 %426 to float
  %428 = fmul fast float %427, 0x3F70101020000000
  %429 = lshr i32 %421, 16
  %430 = and i32 %429, 255
  %431 = uitofp i32 %430 to float
  %432 = fmul fast float %431, 0x3F70101020000000
  %433 = add i32 %61, 84
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 65535
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = lshr i32 %435, 16
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = add i32 %61, 336
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 65535
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = lshr i32 %442, 16
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = fmul fast float %444, 0x3F50624DE0000000
  %448 = fmul fast float %446, 0x3F50624DE0000000
  %449 = add i32 %61, 348
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 32
  %453 = icmp eq i32 %452, 0
  %454 = and i32 %451, 64
  %455 = icmp eq i32 %454, 0
  %456 = and i32 %451, 128
  %457 = icmp eq i32 %456, 0
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 2
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %477, label %462

; <label>:462                                     ; preds = %268
  %463 = add i32 %61, 472
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = add i32 %465, 0
  %467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %466, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %468 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %467, %dx.types.Handle %113, float %94, float %95, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = extractvalue %dx.types.ResRet.f32 %468, 1
  %471 = extractvalue %dx.types.ResRet.f32 %468, 2
  %472 = extractvalue %dx.types.ResRet.f32 %468, 3
  %473 = fmul fast float %472, %96
  %474 = fmul fast float %469, %97
  %475 = fmul fast float %470, %98
  %476 = fmul fast float %471, %99
  br label %477

; <label>:477                                     ; preds = %462, %268
  %478 = phi float [ %99, %268 ], [ %476, %462 ]
  %479 = phi float [ %98, %268 ], [ %475, %462 ]
  %480 = phi float [ %97, %268 ], [ %474, %462 ]
  %481 = phi float [ %96, %268 ], [ %473, %462 ]
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = and i32 %483, 2
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %505, label %486

; <label>:486                                     ; preds = %477
  %487 = add i32 %61, 44
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = and i32 %489, 1
  %491 = icmp ne i32 %490, 0
  %492 = select i1 %491, float %480, float 1.000000e+00
  %493 = add i32 %61, 60
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = and i32 %495, 1
  %497 = icmp ne i32 %496, 0
  %498 = select i1 %497, float %479, float 1.000000e+00
  %499 = add i32 %61, 76
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = and i32 %501, 1
  %503 = icmp ne i32 %502, 0
  %504 = select i1 %503, float %478, float 1.000000e+00
  br label %505

; <label>:505                                     ; preds = %486, %477
  %506 = phi float [ %478, %477 ], [ %504, %486 ]
  %507 = phi float [ %479, %477 ], [ %498, %486 ]
  %508 = phi float [ %480, %477 ], [ %492, %486 ]
  %509 = lshr i32 %483, 20
  %510 = and i32 %509, 3
  %511 = add nuw nsw i32 %510, 1
  %512 = add i32 %61, 24
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = add i32 %61, 28
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = or i32 %517, %514
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %1054, label %520

; <label>:520                                     ; preds = %505
  %521 = and i32 %514, 262144
  %522 = icmp ne i32 %521, 0
  %523 = select i1 %522, float %67, float 1.000000e+00
  %524 = select i1 %522, float %68, float 0.000000e+00
  %525 = select i1 %522, float %69, float 0.000000e+00
  %526 = select i1 %522, float %70, float 1.000000e+00
  %527 = select i1 %522, float %71, float %94
  %528 = select i1 %522, float %72, float %95
  %529 = add i32 %61, 284
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = lshr i32 %531, 16
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = fmul fast float %533, 0x3F50624DE0000000
  %535 = add i32 %61, 88
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = lshr i32 %537, 16
  %539 = and i32 %538, 255
  %540 = lshr i32 %537, 24
  %541 = add i32 %61, 292
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = and i32 %543, 65535
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = lshr i32 %543, 16
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = add i32 %61, 32
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = lshr i32 %550, 22
  %552 = shl nuw nsw i32 %551, 5
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = shl i32 %550, 4
  %555 = and i32 %554, 32752
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = lshr i32 %550, 7
  %558 = and i32 %557, 32752
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 3
  %562 = fmul fast float %561, 1.000000e+03
  %563 = fmul fast float %321, %562
  %564 = call float @dx.op.unary.f32(i32 22, float %563)  ; Frc(value)
  %565 = fadd fast float %564, %311
  %566 = fmul fast float %322, %562
  %567 = call float @dx.op.unary.f32(i32 22, float %566)  ; Frc(value)
  %568 = fadd fast float %567, %313
  %569 = fmul fast float %534, %562
  %570 = call float @dx.op.unary.f32(i32 22, float %569)  ; Frc(value)
  %571 = fmul fast float %570, 0x401921FB60000000
  %572 = fadd fast float %571, %553
  %573 = call float @dx.op.unary.f32(i32 13, float %572)  ; Sin(value)
  %574 = call float @dx.op.unary.f32(i32 12, float %572)  ; Cos(value)
  %575 = fsub fast float -0.000000e+00, %573
  %576 = fadd fast float %527, -5.000000e-01
  %577 = fadd fast float %528, -5.000000e-01
  %578 = fmul fast float %545, %576
  %579 = fmul fast float %547, %577
  %580 = fadd fast float %578, 5.000000e-01
  %581 = fadd fast float %579, 5.000000e-01
  %582 = fmul fast float %556, %580
  %583 = fmul fast float %559, %581
  %584 = fmul fast float %574, %582
  %585 = call float @dx.op.tertiary.f32(i32 46, float %575, float %583, float %584)  ; FMad(a,b,c)
  %586 = fmul fast float %573, %582
  %587 = call float @dx.op.tertiary.f32(i32 46, float %574, float %583, float %586)  ; FMad(a,b,c)
  %588 = fadd fast float %565, %585
  %589 = fadd fast float %568, %587
  %590 = icmp ugt i32 %539, 1
  %591 = icmp ugt i32 %537, 33554431
  %592 = or i1 %591, %590
  br i1 %592, label %593, label %618

; <label>:593                                     ; preds = %520
  %594 = add i32 %61, 228
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = lshr i32 %596, 16
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = fmul fast float %561, %598
  %600 = call float @dx.op.unary.f32(i32 22, float %599)  ; Frc(value)
  %601 = mul nuw nsw i32 %539, %540
  %602 = uitofp i32 %601 to float
  %603 = fmul fast float %600, %602
  %604 = call float @dx.op.unary.f32(i32 27, float %603)  ; Round_ni(value)
  %605 = fptoui float %604 to i32
  %606 = urem i32 %605, %539
  %607 = udiv i32 %605, %540
  %608 = call float @dx.op.unary.f32(i32 22, float %588)  ; Frc(value)
  %609 = call float @dx.op.unary.f32(i32 22, float %589)  ; Frc(value)
  %610 = uitofp i32 %606 to float
  %611 = uitofp i32 %607 to float
  %612 = fadd fast float %608, %610
  %613 = fadd fast float %609, %611
  %614 = uitofp i32 %539 to float
  %615 = uitofp i32 %540 to float
  %616 = fdiv fast float %612, %614
  %617 = fdiv fast float %613, %615
  br label %618

; <label>:618                                     ; preds = %593, %520
  %619 = phi float [ %616, %593 ], [ %588, %520 ]
  %620 = phi float [ %617, %593 ], [ %589, %520 ]
  %621 = and i32 %514, 256
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %669, label %623

; <label>:623                                     ; preds = %618
  %624 = add i32 %61, 424
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = add i32 %626, 0
  %628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %629 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %628, %dx.types.Handle %113, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %630 = extractvalue %dx.types.ResRet.f32 %629, 0
  %631 = add i32 %61, 100
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = shl i32 %633, 4
  %635 = and i32 %634, 32752
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = lshr i32 %633, 7
  %638 = and i32 %637, 32752
  %639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %638)  ; LegacyF16ToF32(value)
  %640 = fsub fast float 1.000000e+00, %481
  %641 = call float @dx.op.binary.f32(i32 35, float %640, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %642 = bitcast float %481 to i32
  %643 = sitofp i32 %642 to float
  %644 = fadd fast float %643, 0xC1CFBF8940000000
  %645 = fmul fast float %639, %644
  %646 = fadd fast float %645, 0x41CFBF8940000000
  %647 = fptosi float %646 to i32
  %648 = bitcast i32 %647 to float
  %649 = bitcast float %641 to i32
  %650 = sitofp i32 %649 to float
  %651 = fadd fast float %650, 0xC1CFBF8940000000
  %652 = fmul fast float %651, %639
  %653 = fadd fast float %652, 0x41CFBF8940000000
  %654 = fptosi float %653 to i32
  %655 = bitcast i32 %654 to float
  %656 = fmul fast float %648, %636
  %657 = fmul fast float %655, %636
  %658 = fsub fast float %641, %656
  %659 = fadd fast float %657, %641
  %660 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %661 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %662 = fsub fast float %630, %660
  %663 = fsub fast float %661, %660
  %664 = bitcast float %663 to i32
  %665 = sub nsw i32 2129859010, %664
  %666 = bitcast i32 %665 to float
  %667 = fmul fast float %666, %662
  %668 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  br label %669

; <label>:669                                     ; preds = %623, %618
  %670 = phi float [ %668, %623 ], [ %481, %618 ]
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = and i32 %672, 128
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %691, label %675

; <label>:675                                     ; preds = %669
  %676 = add i32 %61, 408
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %676, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = add i32 %678, 0
  %680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %680, %dx.types.Handle %113, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %682 = extractvalue %dx.types.ResRet.f32 %681, 0
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = and i32 %684, 524288
  %686 = icmp ne i32 %685, 0
  %687 = fcmp fast ogt float %682, 0x3FE0101020000000
  %688 = select i1 %687, float 1.000000e+00, float 0.000000e+00
  %689 = select i1 %686, float %688, float %682
  %690 = fmul fast float %689, %670
  br label %691

; <label>:691                                     ; preds = %675, %669
  %692 = phi float [ %690, %675 ], [ %670, %669 ]
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = and i32 %694, 16
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %895, label %697

; <label>:697                                     ; preds = %691
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = add i32 %61, 360
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = add i32 %702, 0
  %704 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %703, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %705 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %704, %dx.types.Handle %112, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %706 = extractvalue %dx.types.ResRet.f32 %705, 0
  %707 = extractvalue %dx.types.ResRet.f32 %705, 1
  %708 = extractvalue %dx.types.ResRet.f32 %705, 2
  %709 = extractvalue %dx.types.ResRet.f32 %705, 3
  %710 = and i32 %699, 255
  %711 = uitofp i32 %710 to float
  %712 = lshr i32 %699, 8
  %713 = and i32 %712, 255
  %714 = uitofp i32 %713 to float
  %715 = fmul fast float %709, %711
  %716 = fadd fast float %715, %714
  %717 = fmul fast float %716, 0x3F70101000000000
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = and i32 %719, 512
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %730, label %722

; <label>:722                                     ; preds = %697
  %723 = add i32 %61, 440
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = add i32 %725, 0
  %727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %726, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %728 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %727, %dx.types.Handle %113, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %729 = extractvalue %dx.types.ResRet.f32 %728, 0
  br label %730

; <label>:730                                     ; preds = %722, %697
  %731 = phi float [ %729, %722 ], [ 1.000000e+00, %697 ]
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = and i32 %733, 33554432
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %842, label %736

; <label>:736                                     ; preds = %730
  %737 = add i32 %61, 224
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 65535
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = lshr i32 %739, 16
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = add i32 %61, 228
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 65535
  %748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %747)  ; LegacyF16ToF32(value)
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = lshr i32 %750, 24
  %752 = uitofp i32 %751 to float
  %753 = fmul fast float %752, 0x3F70101020000000
  %754 = and i32 %750, 255
  %755 = uitofp i32 %754 to float
  %756 = fmul fast float %755, 0x3F70101020000000
  %757 = lshr i32 %750, 8
  %758 = and i32 %757, 255
  %759 = uitofp i32 %758 to float
  %760 = fmul fast float %759, 0x3F70101020000000
  %761 = lshr i32 %750, 16
  %762 = and i32 %761, 255
  %763 = uitofp i32 %762 to float
  %764 = fmul fast float %763, 0x3F70101020000000
  %765 = add i32 %61, 220
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %765, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = lshr i32 %767, 24
  %769 = uitofp i32 %768 to float
  %770 = fmul fast float %769, 0x3F70101020000000
  %771 = and i32 %767, 255
  %772 = uitofp i32 %771 to float
  %773 = fmul fast float %772, 0x3F70101020000000
  %774 = lshr i32 %767, 8
  %775 = and i32 %774, 255
  %776 = uitofp i32 %775 to float
  %777 = fmul fast float %776, 0x3F70101020000000
  %778 = lshr i32 %767, 16
  %779 = and i32 %778, 255
  %780 = uitofp i32 %779 to float
  %781 = fmul fast float %780, 0x3F70101020000000
  %782 = bitcast float %706 to i32
  %783 = ashr i32 %782, 1
  %784 = sub nsw i32 1597463174, %783
  %785 = bitcast i32 %784 to float
  %786 = fmul fast float %706, 5.000000e-01
  %787 = fmul fast float %785, %785
  %788 = fmul fast float %787, %786
  %789 = fsub fast float 1.500000e+00, %788
  %790 = fmul fast float %785, %706
  %791 = fmul fast float %790, %789
  %792 = bitcast float %707 to i32
  %793 = ashr i32 %792, 1
  %794 = sub nsw i32 1597463174, %793
  %795 = bitcast i32 %794 to float
  %796 = fmul fast float %707, 5.000000e-01
  %797 = fmul fast float %795, %795
  %798 = fmul fast float %797, %796
  %799 = fsub fast float 1.500000e+00, %798
  %800 = fmul fast float %795, %707
  %801 = fmul fast float %800, %799
  %802 = bitcast float %708 to i32
  %803 = ashr i32 %802, 1
  %804 = sub nsw i32 1597463174, %803
  %805 = bitcast i32 %804 to float
  %806 = fmul fast float %708, 5.000000e-01
  %807 = fmul fast float %805, %805
  %808 = fmul fast float %807, %806
  %809 = fsub fast float 1.500000e+00, %808
  %810 = fmul fast float %805, %708
  %811 = fmul fast float %810, %809
  %812 = fsub fast float %791, %773
  %813 = fsub fast float %801, %777
  %814 = fsub fast float %811, %781
  %815 = fmul fast float %812, %741
  %816 = fmul fast float %813, %743
  %817 = fmul fast float %814, %748
  %818 = fadd fast float %815, %756
  %819 = fadd fast float %816, %760
  %820 = fadd fast float %817, %764
  %821 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %822 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  %823 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %824 = fmul fast float %821, %821
  %825 = fmul fast float %822, %822
  %826 = fmul fast float %823, %823
  %827 = fsub fast float %824, %706
  %828 = fsub fast float %825, %707
  %829 = fsub fast float %826, %708
  %830 = fmul fast float %827, %731
  %831 = fmul fast float %828, %731
  %832 = fmul fast float %829, %731
  %833 = fadd fast float %830, %706
  %834 = fadd fast float %831, %707
  %835 = fadd fast float %832, %708
  %836 = fadd fast float %753, %717
  %837 = fsub fast float %836, %770
  %838 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  %839 = fsub fast float %838, %717
  %840 = fmul fast float %839, %731
  %841 = fadd fast float %840, %717
  br label %895

; <label>:842                                     ; preds = %730
  %843 = and i32 %733, 134217728
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %879, label %845

; <label>:845                                     ; preds = %842
  %846 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %847 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %848 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %849 = fadd fast float %846, -5.000000e-01
  %850 = fadd fast float %847, -5.000000e-01
  %851 = fadd fast float %848, -5.000000e-01
  %852 = fmul fast float %849, %731
  %853 = fmul fast float %850, %731
  %854 = fmul fast float %851, %731
  %855 = fadd fast float %852, 5.000000e-01
  %856 = fadd fast float %853, 5.000000e-01
  %857 = fadd fast float %854, 5.000000e-01
  %858 = call float @dx.op.unary.f32(i32 24, float %706)  ; Sqrt(value)
  %859 = call float @dx.op.unary.f32(i32 24, float %707)  ; Sqrt(value)
  %860 = call float @dx.op.unary.f32(i32 24, float %708)  ; Sqrt(value)
  %861 = fmul fast float %855, 2.000000e+00
  %862 = fsub fast float 1.000000e+00, %861
  %863 = fmul fast float %862, %858
  %864 = fadd fast float %863, %861
  %865 = fmul fast float %864, %858
  %866 = fmul fast float %856, 2.000000e+00
  %867 = fsub fast float 1.000000e+00, %866
  %868 = fmul fast float %867, %859
  %869 = fadd fast float %868, %866
  %870 = fmul fast float %869, %859
  %871 = fmul fast float %857, 2.000000e+00
  %872 = fsub fast float 1.000000e+00, %871
  %873 = fmul fast float %872, %860
  %874 = fadd fast float %873, %871
  %875 = fmul fast float %874, %860
  %876 = fmul fast float %865, %865
  %877 = fmul fast float %870, %870
  %878 = fmul fast float %875, %875
  br label %895

; <label>:879                                     ; preds = %842
  %880 = fmul fast float %298, %298
  %881 = fmul fast float %302, %302
  %882 = fmul fast float %306, %306
  %883 = fadd fast float %880, -1.000000e+00
  %884 = fadd fast float %881, -1.000000e+00
  %885 = fadd fast float %882, -1.000000e+00
  %886 = fmul fast float %731, %883
  %887 = fmul fast float %731, %884
  %888 = fmul fast float %731, %885
  %889 = fadd fast float %886, 1.000000e+00
  %890 = fadd fast float %887, 1.000000e+00
  %891 = fadd fast float %888, 1.000000e+00
  %892 = fmul fast float %889, %706
  %893 = fmul fast float %890, %707
  %894 = fmul fast float %891, %708
  br label %895

; <label>:895                                     ; preds = %879, %845, %736, %691
  %896 = phi float [ %841, %736 ], [ %717, %845 ], [ %717, %879 ], [ 0x3FA23C0BE0000000, %691 ]
  %897 = phi float [ %833, %736 ], [ %876, %845 ], [ %892, %879 ], [ 1.000000e+00, %691 ]
  %898 = phi float [ %834, %736 ], [ %877, %845 ], [ %893, %879 ], [ 1.000000e+00, %691 ]
  %899 = phi float [ %835, %736 ], [ %878, %845 ], [ %894, %879 ], [ 1.000000e+00, %691 ]
  %900 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.i32 %900, 1
  %902 = and i32 %901, 1
  %903 = icmp ne i32 %902, 0
  %904 = add i32 %61, 356
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = and i32 %906, 32
  %908 = icmp ne i32 %907, 0
  %909 = and i1 %903, %908
  %910 = select i1 %909, float 1.000000e+00, float %897
  %911 = select i1 %909, float 0x3FD3333340000000, float %898
  %912 = select i1 %909, float 0x3FD3333340000000, float %899
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = and i32 %914, 32
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %989, label %917

; <label>:917                                     ; preds = %895
  %918 = add i32 %61, 92
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = add i32 %61, 376
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %921, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = add i32 %923, 0
  %925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %924, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %926 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %925, %dx.types.Handle %112, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  %928 = extractvalue %dx.types.ResRet.f32 %926, 1
  %929 = extractvalue %dx.types.ResRet.f32 %926, 2
  %930 = extractvalue %dx.types.ResRet.f32 %926, 3
  %931 = and i32 %920, 255
  %932 = uitofp i32 %931 to float
  %933 = lshr i32 %920, 8
  %934 = and i32 %933, 255
  %935 = uitofp i32 %934 to float
  %936 = lshr i32 %920, 16
  %937 = and i32 %936, 255
  %938 = uitofp i32 %937 to float
  %939 = fmul fast float %938, 0x3F70101000000000
  %940 = fmul fast float %927, %932
  %941 = fadd fast float %940, %935
  %942 = fmul fast float %941, 0x3F70101000000000
  %943 = fadd fast float %928, -5.000000e-01
  %944 = fadd fast float %930, -5.000000e-01
  %945 = fmul fast float %943, %939
  %946 = fmul fast float %944, %939
  %947 = fadd fast float %945, 5.000000e-01
  %948 = fadd fast float %946, 5.000000e-01
  %949 = fmul fast float %947, 2.000000e+00
  %950 = fadd fast float %949, -1.000000e+00
  %951 = fmul fast float %948, 2.000000e+00
  %952 = fadd fast float %951, -1.000000e+00
  %953 = fadd fast float %950, %952
  %954 = fmul fast float %953, 5.000000e-01
  %955 = fsub fast float %950, %952
  %956 = fmul fast float %955, 5.000000e-01
  %957 = call float @dx.op.unary.f32(i32 6, float %954)  ; FAbs(value)
  %958 = fsub fast float 1.000000e+00, %957
  %959 = call float @dx.op.unary.f32(i32 6, float %956)  ; FAbs(value)
  %960 = fsub fast float %958, %959
  %961 = call float @dx.op.dot3.f32(i32 55, float %954, float %956, float %960, float %954, float %956, float %960)  ; Dot3(ax,ay,az,bx,by,bz)
  %962 = call float @dx.op.unary.f32(i32 25, float %961)  ; Rsqrt(value)
  %963 = fmul fast float %954, %962
  %964 = fmul fast float %956, %962
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = and i32 %966, 67108864
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %985, label %969

; <label>:969                                     ; preds = %917
  %970 = add i32 %61, 280
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 65535
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = and i32 %976, 65535
  %978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %977)  ; LegacyF16ToF32(value)
  %979 = lshr i32 %972, 16
  %980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %979)  ; LegacyF16ToF32(value)
  %981 = fsub fast float %942, %980
  %982 = fmul fast float %981, %974
  %983 = fadd fast float %982, %978
  %984 = call float @dx.op.unary.f32(i32 7, float %983)  ; Saturate(value)
  br label %985

; <label>:985                                     ; preds = %969, %917
  %986 = phi float [ %984, %969 ], [ %942, %917 ]
  %987 = call float @dx.op.dot2.f32(i32 54, float %963, float %964, float %523, float %524)  ; Dot2(ax,ay,bx,by)
  %988 = call float @dx.op.dot2.f32(i32 54, float %963, float %964, float %525, float %526)  ; Dot2(ax,ay,bx,by)
  br label %989

; <label>:989                                     ; preds = %985, %895
  %990 = phi float [ %986, %985 ], [ 0x3FD6666660000000, %895 ]
  %991 = phi float [ %987, %985 ], [ 0.000000e+00, %895 ]
  %992 = phi float [ %988, %985 ], [ 0.000000e+00, %895 ]
  %993 = phi float [ %929, %985 ], [ 1.000000e+00, %895 ]
  %994 = add i32 %61, 160
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = lshr i32 %996, 22
  %998 = shl nuw nsw i32 %997, 5
  %999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %998)  ; LegacyF16ToF32(value)
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = and i32 %1001, 64
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1037, label %1004

; <label>:1004                                    ; preds = %989
  %1005 = add i32 %61, 392
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = add i32 %1007, 0
  %1009 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1008, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.i32 %1010, 0
  %1012 = and i32 %1011, 131072
  %1013 = icmp eq i32 %1012, 0
  %1014 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1009, %dx.types.Handle %112, float %619, float %620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1015 = extractvalue %dx.types.ResRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.ResRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.ResRet.f32 %1014, 2
  %1018 = fmul fast float %1015, %286
  %1019 = fmul fast float %1016, %289
  %1020 = fmul fast float %1017, %292
  br i1 %1013, label %1027, label %1021

; <label>:1021                                    ; preds = %1004
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 0
  %1024 = fmul fast float %1023, %1018
  %1025 = fmul fast float %1023, %1019
  %1026 = fmul fast float %1023, %1020
  br label %1027

; <label>:1027                                    ; preds = %1021, %1004
  %1028 = phi float [ %1024, %1021 ], [ %1018, %1004 ]
  %1029 = phi float [ %1025, %1021 ], [ %1019, %1004 ]
  %1030 = phi float [ %1026, %1021 ], [ %1020, %1004 ]
  %1031 = fmul fast float %1028, %999
  %1032 = select i1 %269, float %1031, float %1028
  %1033 = call float @dx.op.dot3.f32(i32 55, float %1032, float %1029, float %1030, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1034 = select i1 %269, float 0.000000e+00, float %1028
  %1035 = select i1 %269, float %1033, float %1029
  %1036 = select i1 %269, float 0.000000e+00, float %1030
  br label %1037

; <label>:1037                                    ; preds = %1027, %989
  %1038 = phi float [ %1034, %1027 ], [ 0.000000e+00, %989 ]
  %1039 = phi float [ %1035, %1027 ], [ 0.000000e+00, %989 ]
  %1040 = phi float [ %1036, %1027 ], [ 0.000000e+00, %989 ]
  %1041 = add i32 %61, 96
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = and i32 %1043, 255
  %1045 = uitofp i32 %1044 to float
  %1046 = lshr i32 %1043, 8
  %1047 = and i32 %1046, 255
  %1048 = uitofp i32 %1047 to float
  %1049 = call float @dx.op.dot3.f32(i32 55, float %910, float %911, float %912, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1050 = fmul fast float %1048, %1049
  %1051 = fadd fast float %1050, %1045
  %1052 = fmul fast float %1051, 0x3F70101020000000
  %1053 = call float @dx.op.unary.f32(i32 7, float %1052)  ; Saturate(value)
  br label %1054

; <label>:1054                                    ; preds = %1037, %505
  %1055 = phi float [ 0.000000e+00, %505 ], [ %991, %1037 ]
  %1056 = phi float [ 0.000000e+00, %505 ], [ %992, %1037 ]
  %1057 = phi float [ 0.000000e+00, %505 ], [ %910, %1037 ]
  %1058 = phi float [ 0.000000e+00, %505 ], [ %911, %1037 ]
  %1059 = phi float [ 0.000000e+00, %505 ], [ %912, %1037 ]
  %1060 = phi float [ 0.000000e+00, %505 ], [ %1038, %1037 ]
  %1061 = phi float [ 0.000000e+00, %505 ], [ %1039, %1037 ]
  %1062 = phi float [ 0.000000e+00, %505 ], [ %1040, %1037 ]
  %1063 = phi float [ 0.000000e+00, %505 ], [ %896, %1037 ]
  %1064 = phi float [ 0.000000e+00, %505 ], [ %692, %1037 ]
  %1065 = phi float [ 0.000000e+00, %505 ], [ %990, %1037 ]
  %1066 = phi float [ 0.000000e+00, %505 ], [ %993, %1037 ]
  %1067 = phi float [ 0.000000e+00, %505 ], [ %1053, %1037 ]
  br i1 %453, label %1794, label %1068

; <label>:1068                                    ; preds = %1054
  %1069 = icmp ult i32 %511, 2
  %1070 = add i32 %61, 40
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = add i32 %61, 44
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = or i32 %1075, %1072
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1794, label %1078

; <label>:1078                                    ; preds = %1068
  %1079 = and i32 %1072, 262144
  %1080 = icmp ne i32 %1079, 0
  %1081 = select i1 %1080, float %67, float 1.000000e+00
  %1082 = select i1 %1080, float %68, float 0.000000e+00
  %1083 = select i1 %1080, float %69, float 0.000000e+00
  %1084 = select i1 %1080, float %70, float 1.000000e+00
  %1085 = select i1 %1080, float %71, float %94
  %1086 = select i1 %1080, float %72, float %95
  %1087 = add i32 %61, 300
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = lshr i32 %1089, 16
  %1091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1090)  ; LegacyF16ToF32(value)
  %1092 = fmul fast float %1091, 0x3F50624DE0000000
  %1093 = add i32 %61, 104
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = lshr i32 %1095, 16
  %1097 = and i32 %1096, 255
  %1098 = lshr i32 %1095, 24
  %1099 = add i32 %61, 308
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = and i32 %1101, 65535
  %1103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1102)  ; LegacyF16ToF32(value)
  %1104 = lshr i32 %1101, 16
  %1105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1104)  ; LegacyF16ToF32(value)
  %1106 = add i32 %61, 48
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = lshr i32 %1108, 22
  %1110 = shl nuw nsw i32 %1109, 5
  %1111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1110)  ; LegacyF16ToF32(value)
  %1112 = shl i32 %1108, 4
  %1113 = and i32 %1112, 32752
  %1114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1113)  ; LegacyF16ToF32(value)
  %1115 = lshr i32 %1108, 7
  %1116 = and i32 %1115, 32752
  %1117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1116)  ; LegacyF16ToF32(value)
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 3
  %1120 = fmul fast float %1119, 1.000000e+03
  %1121 = fmul fast float %363, %1120
  %1122 = call float @dx.op.unary.f32(i32 22, float %1121)  ; Frc(value)
  %1123 = fadd fast float %1122, %353
  %1124 = fmul fast float %364, %1120
  %1125 = call float @dx.op.unary.f32(i32 22, float %1124)  ; Frc(value)
  %1126 = fadd fast float %1125, %355
  %1127 = fmul fast float %1092, %1120
  %1128 = call float @dx.op.unary.f32(i32 22, float %1127)  ; Frc(value)
  %1129 = fmul fast float %1128, 0x401921FB60000000
  %1130 = fadd fast float %1129, %1111
  %1131 = call float @dx.op.unary.f32(i32 13, float %1130)  ; Sin(value)
  %1132 = call float @dx.op.unary.f32(i32 12, float %1130)  ; Cos(value)
  %1133 = fsub fast float -0.000000e+00, %1131
  %1134 = fadd fast float %1085, -5.000000e-01
  %1135 = fadd fast float %1086, -5.000000e-01
  %1136 = fmul fast float %1103, %1134
  %1137 = fmul fast float %1105, %1135
  %1138 = fadd fast float %1136, 5.000000e-01
  %1139 = fadd fast float %1137, 5.000000e-01
  %1140 = fmul fast float %1114, %1138
  %1141 = fmul fast float %1117, %1139
  %1142 = fmul fast float %1132, %1140
  %1143 = call float @dx.op.tertiary.f32(i32 46, float %1133, float %1141, float %1142)  ; FMad(a,b,c)
  %1144 = fmul fast float %1131, %1140
  %1145 = call float @dx.op.tertiary.f32(i32 46, float %1132, float %1141, float %1144)  ; FMad(a,b,c)
  %1146 = fadd fast float %1123, %1143
  %1147 = fadd fast float %1126, %1145
  %1148 = icmp ugt i32 %1097, 1
  %1149 = icmp ugt i32 %1095, 33554431
  %1150 = or i1 %1149, %1148
  br i1 %1150, label %1151, label %1176

; <label>:1151                                    ; preds = %1078
  %1152 = add i32 %61, 244
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = lshr i32 %1154, 16
  %1156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1155)  ; LegacyF16ToF32(value)
  %1157 = fmul fast float %1119, %1156
  %1158 = call float @dx.op.unary.f32(i32 22, float %1157)  ; Frc(value)
  %1159 = mul nuw nsw i32 %1097, %1098
  %1160 = uitofp i32 %1159 to float
  %1161 = fmul fast float %1158, %1160
  %1162 = call float @dx.op.unary.f32(i32 27, float %1161)  ; Round_ni(value)
  %1163 = fptoui float %1162 to i32
  %1164 = urem i32 %1163, %1097
  %1165 = udiv i32 %1163, %1098
  %1166 = call float @dx.op.unary.f32(i32 22, float %1146)  ; Frc(value)
  %1167 = call float @dx.op.unary.f32(i32 22, float %1147)  ; Frc(value)
  %1168 = uitofp i32 %1164 to float
  %1169 = uitofp i32 %1165 to float
  %1170 = fadd fast float %1166, %1168
  %1171 = fadd fast float %1167, %1169
  %1172 = uitofp i32 %1097 to float
  %1173 = uitofp i32 %1098 to float
  %1174 = fdiv fast float %1170, %1172
  %1175 = fdiv fast float %1171, %1173
  br label %1176

; <label>:1176                                    ; preds = %1151, %1078
  %1177 = phi float [ %1174, %1151 ], [ %1146, %1078 ]
  %1178 = phi float [ %1175, %1151 ], [ %1147, %1078 ]
  %1179 = and i32 %1072, 256
  %1180 = icmp eq i32 %1179, 0
  br i1 %1180, label %1227, label %1181

; <label>:1181                                    ; preds = %1176
  %1182 = add i32 %61, 428
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = add i32 %1184, 0
  %1186 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1185, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1187 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1186, %dx.types.Handle %113, float %1177, float %1178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1188 = extractvalue %dx.types.ResRet.f32 %1187, 0
  %1189 = add i32 %61, 116
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = shl i32 %1191, 4
  %1193 = and i32 %1192, 32752
  %1194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1193)  ; LegacyF16ToF32(value)
  %1195 = lshr i32 %1191, 7
  %1196 = and i32 %1195, 32752
  %1197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1196)  ; LegacyF16ToF32(value)
  %1198 = fsub fast float 1.000000e+00, %508
  %1199 = call float @dx.op.binary.f32(i32 35, float %1198, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1200 = bitcast float %508 to i32
  %1201 = sitofp i32 %1200 to float
  %1202 = fadd fast float %1201, 0xC1CFBF8940000000
  %1203 = fmul fast float %1197, %1202
  %1204 = fadd fast float %1203, 0x41CFBF8940000000
  %1205 = fptosi float %1204 to i32
  %1206 = bitcast i32 %1205 to float
  %1207 = bitcast float %1199 to i32
  %1208 = sitofp i32 %1207 to float
  %1209 = fadd fast float %1208, 0xC1CFBF8940000000
  %1210 = fmul fast float %1209, %1197
  %1211 = fadd fast float %1210, 0x41CFBF8940000000
  %1212 = fptosi float %1211 to i32
  %1213 = bitcast i32 %1212 to float
  %1214 = fmul fast float %1206, %1194
  %1215 = fmul fast float %1213, %1194
  %1216 = fsub fast float %1199, %1214
  %1217 = fadd fast float %1215, %1199
  %1218 = call float @dx.op.unary.f32(i32 7, float %1216)  ; Saturate(value)
  %1219 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1220 = fsub fast float %1188, %1218
  %1221 = fsub fast float %1219, %1218
  %1222 = bitcast float %1221 to i32
  %1223 = sub nsw i32 2129859010, %1222
  %1224 = bitcast i32 %1223 to float
  %1225 = fmul fast float %1224, %1220
  %1226 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  br label %1227

; <label>:1227                                    ; preds = %1181, %1176
  %1228 = phi float [ %1226, %1181 ], [ %508, %1176 ]
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = and i32 %1230, 128
  %1232 = icmp eq i32 %1231, 0
  br i1 %1232, label %1249, label %1233

; <label>:1233                                    ; preds = %1227
  %1234 = add i32 %61, 412
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = add i32 %1236, 0
  %1238 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1237, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1239 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1238, %dx.types.Handle %113, float %1177, float %1178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = and i32 %1242, 524288
  %1244 = icmp ne i32 %1243, 0
  %1245 = fcmp fast ogt float %1240, 0x3FE0101020000000
  %1246 = select i1 %1245, float 1.000000e+00, float 0.000000e+00
  %1247 = select i1 %1244, float %1246, float %1240
  %1248 = fmul fast float %1247, %1228
  br label %1249

; <label>:1249                                    ; preds = %1233, %1227
  %1250 = phi float [ %1248, %1233 ], [ %1228, %1227 ]
  %1251 = fcmp fast ult float %1250, 0x3F70101020000000
  br i1 %1251, label %1794, label %1252

; <label>:1252                                    ; preds = %1249
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = and i32 %1254, 16
  %1256 = icmp eq i32 %1255, 0
  br i1 %1256, label %1455, label %1257

; <label>:1257                                    ; preds = %1252
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = add i32 %61, 364
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = add i32 %1262, 0
  %1264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1263, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1265 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1264, %dx.types.Handle %112, float %1177, float %1178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1266 = extractvalue %dx.types.ResRet.f32 %1265, 0
  %1267 = extractvalue %dx.types.ResRet.f32 %1265, 1
  %1268 = extractvalue %dx.types.ResRet.f32 %1265, 2
  %1269 = extractvalue %dx.types.ResRet.f32 %1265, 3
  %1270 = and i32 %1259, 255
  %1271 = uitofp i32 %1270 to float
  %1272 = lshr i32 %1259, 8
  %1273 = and i32 %1272, 255
  %1274 = uitofp i32 %1273 to float
  %1275 = fmul fast float %1269, %1271
  %1276 = fadd fast float %1275, %1274
  %1277 = fmul fast float %1276, 0x3F70101000000000
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = and i32 %1279, 512
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %1290, label %1282

; <label>:1282                                    ; preds = %1257
  %1283 = add i32 %61, 444
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = add i32 %1285, 0
  %1287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1286, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1288 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1287, %dx.types.Handle %113, float %1177, float %1178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1289 = extractvalue %dx.types.ResRet.f32 %1288, 0
  br label %1290

; <label>:1290                                    ; preds = %1282, %1257
  %1291 = phi float [ %1289, %1282 ], [ 1.000000e+00, %1257 ]
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = and i32 %1293, 33554432
  %1295 = icmp eq i32 %1294, 0
  br i1 %1295, label %1402, label %1296

; <label>:1296                                    ; preds = %1290
  %1297 = add i32 %61, 240
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = and i32 %1299, 65535
  %1301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1300)  ; LegacyF16ToF32(value)
  %1302 = lshr i32 %1299, 16
  %1303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1302)  ; LegacyF16ToF32(value)
  %1304 = add i32 %61, 244
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = and i32 %1306, 65535
  %1308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1307)  ; LegacyF16ToF32(value)
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = lshr i32 %1310, 24
  %1312 = uitofp i32 %1311 to float
  %1313 = fmul fast float %1312, 0x3F70101020000000
  %1314 = and i32 %1310, 255
  %1315 = uitofp i32 %1314 to float
  %1316 = fmul fast float %1315, 0x3F70101020000000
  %1317 = lshr i32 %1310, 8
  %1318 = and i32 %1317, 255
  %1319 = uitofp i32 %1318 to float
  %1320 = fmul fast float %1319, 0x3F70101020000000
  %1321 = lshr i32 %1310, 16
  %1322 = and i32 %1321, 255
  %1323 = uitofp i32 %1322 to float
  %1324 = fmul fast float %1323, 0x3F70101020000000
  %1325 = add i32 %61, 236
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = lshr i32 %1327, 24
  %1329 = uitofp i32 %1328 to float
  %1330 = fmul fast float %1329, 0x3F70101020000000
  %1331 = and i32 %1327, 255
  %1332 = uitofp i32 %1331 to float
  %1333 = fmul fast float %1332, 0x3F70101020000000
  %1334 = lshr i32 %1327, 8
  %1335 = and i32 %1334, 255
  %1336 = uitofp i32 %1335 to float
  %1337 = fmul fast float %1336, 0x3F70101020000000
  %1338 = lshr i32 %1327, 16
  %1339 = and i32 %1338, 255
  %1340 = uitofp i32 %1339 to float
  %1341 = fmul fast float %1340, 0x3F70101020000000
  %1342 = bitcast float %1266 to i32
  %1343 = ashr i32 %1342, 1
  %1344 = sub nsw i32 1597463174, %1343
  %1345 = bitcast i32 %1344 to float
  %1346 = fmul fast float %1266, 5.000000e-01
  %1347 = fmul fast float %1345, %1345
  %1348 = fmul fast float %1347, %1346
  %1349 = fsub fast float 1.500000e+00, %1348
  %1350 = fmul fast float %1345, %1266
  %1351 = fmul fast float %1350, %1349
  %1352 = bitcast float %1267 to i32
  %1353 = ashr i32 %1352, 1
  %1354 = sub nsw i32 1597463174, %1353
  %1355 = bitcast i32 %1354 to float
  %1356 = fmul fast float %1267, 5.000000e-01
  %1357 = fmul fast float %1355, %1355
  %1358 = fmul fast float %1357, %1356
  %1359 = fsub fast float 1.500000e+00, %1358
  %1360 = fmul fast float %1355, %1267
  %1361 = fmul fast float %1360, %1359
  %1362 = bitcast float %1268 to i32
  %1363 = ashr i32 %1362, 1
  %1364 = sub nsw i32 1597463174, %1363
  %1365 = bitcast i32 %1364 to float
  %1366 = fmul fast float %1268, 5.000000e-01
  %1367 = fmul fast float %1365, %1365
  %1368 = fmul fast float %1367, %1366
  %1369 = fsub fast float 1.500000e+00, %1368
  %1370 = fmul fast float %1365, %1268
  %1371 = fmul fast float %1370, %1369
  %1372 = fsub fast float %1351, %1333
  %1373 = fsub fast float %1361, %1337
  %1374 = fsub fast float %1371, %1341
  %1375 = fmul fast float %1372, %1301
  %1376 = fmul fast float %1373, %1303
  %1377 = fmul fast float %1374, %1308
  %1378 = fadd fast float %1375, %1316
  %1379 = fadd fast float %1376, %1320
  %1380 = fadd fast float %1377, %1324
  %1381 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1382 = call float @dx.op.unary.f32(i32 7, float %1379)  ; Saturate(value)
  %1383 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1384 = fmul fast float %1381, %1381
  %1385 = fmul fast float %1382, %1382
  %1386 = fmul fast float %1383, %1383
  %1387 = fsub fast float %1384, %1266
  %1388 = fsub fast float %1385, %1267
  %1389 = fsub fast float %1386, %1268
  %1390 = fmul fast float %1387, %1291
  %1391 = fmul fast float %1388, %1291
  %1392 = fmul fast float %1389, %1291
  %1393 = fadd fast float %1390, %1266
  %1394 = fadd fast float %1391, %1267
  %1395 = fadd fast float %1392, %1268
  %1396 = fadd fast float %1313, %1277
  %1397 = fsub fast float %1396, %1330
  %1398 = call float @dx.op.unary.f32(i32 7, float %1397)  ; Saturate(value)
  %1399 = fsub fast float %1398, %1277
  %1400 = fmul fast float %1399, %1291
  %1401 = fadd fast float %1400, %1277
  br label %1455

; <label>:1402                                    ; preds = %1290
  %1403 = and i32 %1293, 134217728
  %1404 = icmp eq i32 %1403, 0
  br i1 %1404, label %1439, label %1405

; <label>:1405                                    ; preds = %1402
  %1406 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %1407 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %1408 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %1409 = fadd fast float %1406, -5.000000e-01
  %1410 = fadd fast float %1407, -5.000000e-01
  %1411 = fadd fast float %1408, -5.000000e-01
  %1412 = fmul fast float %1409, %1291
  %1413 = fmul fast float %1410, %1291
  %1414 = fmul fast float %1411, %1291
  %1415 = fadd fast float %1412, 5.000000e-01
  %1416 = fadd fast float %1413, 5.000000e-01
  %1417 = fadd fast float %1414, 5.000000e-01
  %1418 = call float @dx.op.unary.f32(i32 24, float %1266)  ; Sqrt(value)
  %1419 = call float @dx.op.unary.f32(i32 24, float %1267)  ; Sqrt(value)
  %1420 = call float @dx.op.unary.f32(i32 24, float %1268)  ; Sqrt(value)
  %1421 = fmul fast float %1415, 2.000000e+00
  %1422 = fsub fast float 1.000000e+00, %1421
  %1423 = fmul fast float %1422, %1418
  %1424 = fadd fast float %1423, %1421
  %1425 = fmul fast float %1424, %1418
  %1426 = fmul fast float %1416, 2.000000e+00
  %1427 = fsub fast float 1.000000e+00, %1426
  %1428 = fmul fast float %1427, %1419
  %1429 = fadd fast float %1428, %1426
  %1430 = fmul fast float %1429, %1419
  %1431 = fmul fast float %1417, 2.000000e+00
  %1432 = fsub fast float 1.000000e+00, %1431
  %1433 = fmul fast float %1432, %1420
  %1434 = fadd fast float %1433, %1431
  %1435 = fmul fast float %1434, %1420
  %1436 = fmul fast float %1425, %1425
  %1437 = fmul fast float %1430, %1430
  %1438 = fmul fast float %1435, %1435
  br label %1455

; <label>:1439                                    ; preds = %1402
  %1440 = fmul fast float %340, %340
  %1441 = fmul fast float %344, %344
  %1442 = fmul fast float %348, %348
  %1443 = fadd fast float %1440, -1.000000e+00
  %1444 = fadd fast float %1441, -1.000000e+00
  %1445 = fadd fast float %1442, -1.000000e+00
  %1446 = fmul fast float %1291, %1443
  %1447 = fmul fast float %1291, %1444
  %1448 = fmul fast float %1291, %1445
  %1449 = fadd fast float %1446, 1.000000e+00
  %1450 = fadd fast float %1447, 1.000000e+00
  %1451 = fadd fast float %1448, 1.000000e+00
  %1452 = fmul fast float %1449, %1266
  %1453 = fmul fast float %1450, %1267
  %1454 = fmul fast float %1451, %1268
  br label %1455

; <label>:1455                                    ; preds = %1439, %1405, %1296, %1252
  %1456 = phi float [ %1401, %1296 ], [ %1277, %1405 ], [ %1277, %1439 ], [ 0x3FA23C0BE0000000, %1252 ]
  %1457 = phi float [ %1393, %1296 ], [ %1436, %1405 ], [ %1452, %1439 ], [ 1.000000e+00, %1252 ]
  %1458 = phi float [ %1394, %1296 ], [ %1437, %1405 ], [ %1453, %1439 ], [ 1.000000e+00, %1252 ]
  %1459 = phi float [ %1395, %1296 ], [ %1438, %1405 ], [ %1454, %1439 ], [ 1.000000e+00, %1252 ]
  %1460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1461 = extractvalue %dx.types.CBufRet.i32 %1460, 1
  %1462 = and i32 %1461, 1
  %1463 = icmp ne i32 %1462, 0
  %1464 = add i32 %61, 356
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = and i32 %1466, 32
  %1468 = icmp ne i32 %1467, 0
  %1469 = and i1 %1463, %1468
  %1470 = select i1 %1469, float 1.000000e+00, float %1457
  %1471 = select i1 %1469, float 0x3FD3333340000000, float %1458
  %1472 = select i1 %1469, float 0x3FD3333340000000, float %1459
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = and i32 %1474, 32
  %1476 = icmp eq i32 %1475, 0
  br i1 %1476, label %1549, label %1477

; <label>:1477                                    ; preds = %1455
  %1478 = add i32 %61, 108
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1478, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = add i32 %61, 380
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1481, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = add i32 %1483, 0
  %1485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1485, %dx.types.Handle %112, float %1177, float %1178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1487 = extractvalue %dx.types.ResRet.f32 %1486, 0
  %1488 = extractvalue %dx.types.ResRet.f32 %1486, 1
  %1489 = extractvalue %dx.types.ResRet.f32 %1486, 2
  %1490 = extractvalue %dx.types.ResRet.f32 %1486, 3
  %1491 = and i32 %1480, 255
  %1492 = uitofp i32 %1491 to float
  %1493 = lshr i32 %1480, 8
  %1494 = and i32 %1493, 255
  %1495 = uitofp i32 %1494 to float
  %1496 = lshr i32 %1480, 16
  %1497 = and i32 %1496, 255
  %1498 = uitofp i32 %1497 to float
  %1499 = fmul fast float %1498, 0x3F70101000000000
  %1500 = fmul fast float %1487, %1492
  %1501 = fadd fast float %1500, %1495
  %1502 = fmul fast float %1501, 0x3F70101000000000
  %1503 = fadd fast float %1488, -5.000000e-01
  %1504 = fadd fast float %1490, -5.000000e-01
  %1505 = fmul fast float %1503, %1499
  %1506 = fmul fast float %1504, %1499
  %1507 = fadd fast float %1505, 5.000000e-01
  %1508 = fadd fast float %1506, 5.000000e-01
  %1509 = fmul fast float %1507, 2.000000e+00
  %1510 = fadd fast float %1509, -1.000000e+00
  %1511 = fmul fast float %1508, 2.000000e+00
  %1512 = fadd fast float %1511, -1.000000e+00
  %1513 = fadd fast float %1510, %1512
  %1514 = fmul fast float %1513, 5.000000e-01
  %1515 = fsub fast float %1510, %1512
  %1516 = fmul fast float %1515, 5.000000e-01
  %1517 = call float @dx.op.unary.f32(i32 6, float %1514)  ; FAbs(value)
  %1518 = fsub fast float 1.000000e+00, %1517
  %1519 = call float @dx.op.unary.f32(i32 6, float %1516)  ; FAbs(value)
  %1520 = fsub fast float %1518, %1519
  %1521 = call float @dx.op.dot3.f32(i32 55, float %1514, float %1516, float %1520, float %1514, float %1516, float %1520)  ; Dot3(ax,ay,az,bx,by,bz)
  %1522 = call float @dx.op.unary.f32(i32 25, float %1521)  ; Rsqrt(value)
  %1523 = fmul fast float %1514, %1522
  %1524 = fmul fast float %1516, %1522
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 67108864
  %1528 = icmp eq i32 %1527, 0
  br i1 %1528, label %1545, label %1529

; <label>:1529                                    ; preds = %1477
  %1530 = add i32 %61, 296
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 65535
  %1534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1533)  ; LegacyF16ToF32(value)
  %1535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1536 = extractvalue %dx.types.ResRet.i32 %1535, 0
  %1537 = and i32 %1536, 65535
  %1538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1537)  ; LegacyF16ToF32(value)
  %1539 = lshr i32 %1532, 16
  %1540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1539)  ; LegacyF16ToF32(value)
  %1541 = fsub fast float %1502, %1540
  %1542 = fmul fast float %1541, %1534
  %1543 = fadd fast float %1542, %1538
  %1544 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  br label %1545

; <label>:1545                                    ; preds = %1529, %1477
  %1546 = phi float [ %1544, %1529 ], [ %1502, %1477 ]
  %1547 = call float @dx.op.dot2.f32(i32 54, float %1523, float %1524, float %1081, float %1082)  ; Dot2(ax,ay,bx,by)
  %1548 = call float @dx.op.dot2.f32(i32 54, float %1523, float %1524, float %1083, float %1084)  ; Dot2(ax,ay,bx,by)
  br label %1549

; <label>:1549                                    ; preds = %1545, %1455
  %1550 = phi float [ %1546, %1545 ], [ 0x3FD6666660000000, %1455 ]
  %1551 = phi float [ %1547, %1545 ], [ 0.000000e+00, %1455 ]
  %1552 = phi float [ %1548, %1545 ], [ 0.000000e+00, %1455 ]
  %1553 = phi float [ %1489, %1545 ], [ 1.000000e+00, %1455 ]
  %1554 = add i32 %61, 176
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1554, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = lshr i32 %1556, 22
  %1558 = shl nuw nsw i32 %1557, 5
  %1559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1558)  ; LegacyF16ToF32(value)
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = and i32 %1561, 64
  %1563 = icmp eq i32 %1562, 0
  br i1 %1563, label %1597, label %1564

; <label>:1564                                    ; preds = %1549
  %1565 = add i32 %61, 396
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = add i32 %1567, 0
  %1569 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1568, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 131072
  %1573 = icmp eq i32 %1572, 0
  %1574 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1569, %dx.types.Handle %112, float %1177, float %1178, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1575 = extractvalue %dx.types.ResRet.f32 %1574, 0
  %1576 = extractvalue %dx.types.ResRet.f32 %1574, 1
  %1577 = extractvalue %dx.types.ResRet.f32 %1574, 2
  %1578 = fmul fast float %1575, %328
  %1579 = fmul fast float %1576, %331
  %1580 = fmul fast float %1577, %334
  br i1 %1573, label %1587, label %1581

; <label>:1581                                    ; preds = %1564
  %1582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1583 = extractvalue %dx.types.CBufRet.f32 %1582, 0
  %1584 = fmul fast float %1583, %1578
  %1585 = fmul fast float %1583, %1579
  %1586 = fmul fast float %1583, %1580
  br label %1587

; <label>:1587                                    ; preds = %1581, %1564
  %1588 = phi float [ %1584, %1581 ], [ %1578, %1564 ]
  %1589 = phi float [ %1585, %1581 ], [ %1579, %1564 ]
  %1590 = phi float [ %1586, %1581 ], [ %1580, %1564 ]
  %1591 = fmul fast float %1588, %1559
  %1592 = select i1 %269, float %1591, float %1588
  %1593 = call float @dx.op.dot3.f32(i32 55, float %1592, float %1589, float %1590, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1594 = select i1 %269, float 0.000000e+00, float %1588
  %1595 = select i1 %269, float %1593, float %1589
  %1596 = select i1 %269, float 0.000000e+00, float %1590
  br label %1597

; <label>:1597                                    ; preds = %1587, %1549
  %1598 = phi float [ %1594, %1587 ], [ 0.000000e+00, %1549 ]
  %1599 = phi float [ %1595, %1587 ], [ 0.000000e+00, %1549 ]
  %1600 = phi float [ %1596, %1587 ], [ 0.000000e+00, %1549 ]
  %1601 = add i32 %61, 112
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1601, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = and i32 %1603, 255
  %1605 = uitofp i32 %1604 to float
  %1606 = lshr i32 %1603, 8
  %1607 = and i32 %1606, 255
  %1608 = uitofp i32 %1607 to float
  %1609 = call float @dx.op.dot3.f32(i32 55, float %1470, float %1471, float %1472, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1610 = fmul fast float %1608, %1609
  %1611 = fadd fast float %1610, %1605
  %1612 = fmul fast float %1611, 0x3F70101020000000
  %1613 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  br i1 %1069, label %1614, label %1622

; <label>:1614                                    ; preds = %1597
  %1615 = fsub fast float 1.000000e+00, %1250
  %1616 = fmul fast float %1615, %1057
  %1617 = fmul fast float %1615, %1058
  %1618 = fmul fast float %1615, %1059
  %1619 = fmul fast float %1615, %1060
  %1620 = fmul fast float %1615, %1061
  %1621 = fmul fast float %1615, %1062
  br label %1622

; <label>:1622                                    ; preds = %1614, %1597
  %1623 = phi float [ %1616, %1614 ], [ %1057, %1597 ]
  %1624 = phi float [ %1617, %1614 ], [ %1058, %1597 ]
  %1625 = phi float [ %1618, %1614 ], [ %1059, %1597 ]
  %1626 = phi float [ %1619, %1614 ], [ %1060, %1597 ]
  %1627 = phi float [ %1620, %1614 ], [ %1061, %1597 ]
  %1628 = phi float [ %1621, %1614 ], [ %1062, %1597 ]
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = and i32 %1630, 3
  %1632 = icmp eq i32 %1631, 3
  br i1 %1632, label %1711, label %1633

; <label>:1633                                    ; preds = %1622
  %1634 = and i32 %1630, 16
  %1635 = icmp ne i32 %1634, 0
  %1636 = select i1 %1635, float %1250, float 0.000000e+00
  %1637 = icmp eq i32 %1631, 0
  br i1 %1637, label %1638, label %1666

; <label>:1638                                    ; preds = %1633
  %1639 = and i32 %1630, 64
  %1640 = icmp ne i32 %1639, 0
  %1641 = select i1 %1640, float %1250, float 0.000000e+00
  %1642 = fsub fast float %1470, %1623
  %1643 = fsub fast float %1471, %1624
  %1644 = fsub fast float %1472, %1625
  %1645 = fmul fast float %1636, %1642
  %1646 = fmul fast float %1636, %1643
  %1647 = fmul fast float %1636, %1644
  %1648 = fadd fast float %1645, %1623
  %1649 = fadd fast float %1646, %1624
  %1650 = fadd fast float %1647, %1625
  %1651 = fsub fast float %1456, %1063
  %1652 = fmul fast float %1636, %1651
  %1653 = fadd fast float %1652, %1063
  %1654 = fsub fast float %1598, %1626
  %1655 = fsub fast float %1599, %1627
  %1656 = fsub fast float %1600, %1628
  %1657 = fmul fast float %1641, %1654
  %1658 = fmul fast float %1641, %1655
  %1659 = fmul fast float %1641, %1656
  %1660 = fadd fast float %1657, %1626
  %1661 = fadd fast float %1658, %1627
  %1662 = fadd fast float %1659, %1628
  %1663 = fsub fast float %1613, %1067
  %1664 = fmul fast float %1636, %1663
  %1665 = fadd fast float %1664, %1067
  br label %1711

; <label>:1666                                    ; preds = %1633
  %1667 = icmp eq i32 %1631, 1
  br i1 %1667, label %1668, label %1681

; <label>:1668                                    ; preds = %1666
  %1669 = fadd fast float %1470, -1.000000e+00
  %1670 = fadd fast float %1471, -1.000000e+00
  %1671 = fadd fast float %1472, -1.000000e+00
  %1672 = fmul fast float %1636, %1669
  %1673 = fmul fast float %1636, %1670
  %1674 = fmul fast float %1636, %1671
  %1675 = fadd fast float %1672, 1.000000e+00
  %1676 = fadd fast float %1673, 1.000000e+00
  %1677 = fadd fast float %1674, 1.000000e+00
  %1678 = fmul fast float %1675, %1623
  %1679 = fmul fast float %1676, %1624
  %1680 = fmul fast float %1677, %1625
  br label %1711

; <label>:1681                                    ; preds = %1666
  %1682 = icmp eq i32 %1631, 2
  br i1 %1682, label %1683, label %1711

; <label>:1683                                    ; preds = %1681
  %1684 = call float @dx.op.unary.f32(i32 24, float %1470)  ; Sqrt(value)
  %1685 = call float @dx.op.unary.f32(i32 24, float %1471)  ; Sqrt(value)
  %1686 = call float @dx.op.unary.f32(i32 24, float %1472)  ; Sqrt(value)
  %1687 = fadd fast float %1684, -5.000000e-01
  %1688 = fadd fast float %1685, -5.000000e-01
  %1689 = fadd fast float %1686, -5.000000e-01
  %1690 = fmul fast float %1687, %1636
  %1691 = fmul fast float %1688, %1636
  %1692 = fmul fast float %1689, %1636
  %1693 = fadd fast float %1690, 5.000000e-01
  %1694 = fadd fast float %1691, 5.000000e-01
  %1695 = fadd fast float %1692, 5.000000e-01
  %1696 = fmul fast float %1693, 2.000000e+00
  %1697 = fsub fast float 1.000000e+00, %1696
  %1698 = fmul fast float %1697, %1623
  %1699 = fadd fast float %1698, %1696
  %1700 = fmul fast float %1699, %1623
  %1701 = fmul fast float %1694, 2.000000e+00
  %1702 = fsub fast float 1.000000e+00, %1701
  %1703 = fmul fast float %1702, %1624
  %1704 = fadd fast float %1703, %1701
  %1705 = fmul fast float %1704, %1624
  %1706 = fmul fast float %1695, 2.000000e+00
  %1707 = fsub fast float 1.000000e+00, %1706
  %1708 = fmul fast float %1707, %1625
  %1709 = fadd fast float %1708, %1706
  %1710 = fmul fast float %1709, %1625
  br label %1711

; <label>:1711                                    ; preds = %1683, %1681, %1668, %1638, %1622
  %1712 = phi float [ %1623, %1622 ], [ %1700, %1683 ], [ %1623, %1681 ], [ %1678, %1668 ], [ %1648, %1638 ]
  %1713 = phi float [ %1624, %1622 ], [ %1705, %1683 ], [ %1624, %1681 ], [ %1679, %1668 ], [ %1649, %1638 ]
  %1714 = phi float [ %1625, %1622 ], [ %1710, %1683 ], [ %1625, %1681 ], [ %1680, %1668 ], [ %1650, %1638 ]
  %1715 = phi float [ %1626, %1622 ], [ %1626, %1683 ], [ %1626, %1681 ], [ %1626, %1668 ], [ %1660, %1638 ]
  %1716 = phi float [ %1627, %1622 ], [ %1627, %1683 ], [ %1627, %1681 ], [ %1627, %1668 ], [ %1661, %1638 ]
  %1717 = phi float [ %1628, %1622 ], [ %1628, %1683 ], [ %1628, %1681 ], [ %1628, %1668 ], [ %1662, %1638 ]
  %1718 = phi float [ %1063, %1622 ], [ %1063, %1683 ], [ %1063, %1681 ], [ %1063, %1668 ], [ %1653, %1638 ]
  %1719 = phi float [ %1067, %1622 ], [ %1067, %1683 ], [ %1067, %1681 ], [ %1067, %1668 ], [ %1665, %1638 ]
  %1720 = and i32 %1630, 12
  %1721 = icmp eq i32 %1720, 12
  br i1 %1721, label %1794, label %1722

; <label>:1722                                    ; preds = %1711
  %1723 = and i32 %1630, 2097184
  %1724 = icmp eq i32 %1723, 2097184
  %1725 = select i1 %1724, float %1250, float 0.000000e+00
  %1726 = and i32 %1630, 4194336
  %1727 = icmp eq i32 %1726, 4194336
  %1728 = select i1 %1727, float %1250, float 0.000000e+00
  %1729 = and i32 %1630, 8388640
  %1730 = icmp eq i32 %1729, 8388640
  %1731 = select i1 %1730, float %1250, float 0.000000e+00
  %1732 = icmp eq i32 %1720, 0
  br i1 %1732, label %1733, label %1746

; <label>:1733                                    ; preds = %1722
  %1734 = fsub fast float %1551, %1055
  %1735 = fsub fast float %1552, %1056
  %1736 = fmul fast float %1725, %1734
  %1737 = fmul fast float %1725, %1735
  %1738 = fadd fast float %1736, %1055
  %1739 = fadd fast float %1737, %1056
  %1740 = fsub fast float %1553, %1066
  %1741 = fmul fast float %1728, %1740
  %1742 = fadd fast float %1741, %1066
  %1743 = fsub fast float %1550, %1065
  %1744 = fmul fast float %1731, %1743
  %1745 = fadd fast float %1744, %1065
  br label %1794

; <label>:1746                                    ; preds = %1722
  %1747 = icmp eq i32 %1720, 4
  br i1 %1747, label %1748, label %1780

; <label>:1748                                    ; preds = %1746
  %1749 = fmul fast float %1725, %1551
  %1750 = fmul fast float %1725, %1552
  %1751 = fadd fast float %1749, %1055
  %1752 = fadd fast float %1750, %1056
  %1753 = call float @dx.op.binary.f32(i32 36, float %1066, float %1553)  ; FMin(a,b)
  %1754 = fsub fast float %1753, %1066
  %1755 = fmul fast float %1754, %1728
  %1756 = fadd fast float %1755, %1066
  %1757 = fadd fast float %1550, %1065
  %1758 = fmul fast float %1757, 0x3FF337FAE0000000
  %1759 = fmul fast float %1065, %1065
  %1760 = fmul fast float %1550, %1550
  %1761 = fadd fast float %1760, %1759
  %1762 = fmul fast float %1761, 0x3FE5152B00000000
  %1763 = fmul fast float %1065, 0xBFCC1F85E0000000
  %1764 = fmul fast float %1763, %1550
  %1765 = fadd fast float %1764, 0xBFE1363700000000
  %1766 = fadd fast float %1765, %1758
  %1767 = fsub fast float %1766, %1762
  %1768 = fmul fast float %1757, 0x3FBA6F0D00000000
  %1769 = fmul fast float %1761, 0x3FD0432880000000
  %1770 = fmul fast float %1065, 0xBFEF110800000000
  %1771 = fmul fast float %1770, %1550
  %1772 = fadd fast float %1771, 1.000000e+00
  %1773 = fsub fast float %1772, %1768
  %1774 = fadd fast float %1773, %1769
  %1775 = fdiv fast float %1767, %1774
  %1776 = call float @dx.op.unary.f32(i32 7, float %1775)  ; Saturate(value)
  %1777 = fsub fast float %1776, %1065
  %1778 = fmul fast float %1777, %1731
  %1779 = fadd fast float %1778, %1065
  br label %1794

; <label>:1780                                    ; preds = %1746
  %1781 = icmp eq i32 %1720, 8
  br i1 %1781, label %1782, label %1794

; <label>:1782                                    ; preds = %1780
  %1783 = fmul fast float %1725, %1551
  %1784 = fmul fast float %1725, %1552
  %1785 = fadd fast float %1783, %1055
  %1786 = fadd fast float %1784, %1056
  %1787 = call float @dx.op.binary.f32(i32 36, float %1066, float %1553)  ; FMin(a,b)
  %1788 = fsub fast float %1787, %1066
  %1789 = fmul fast float %1788, %1728
  %1790 = fadd fast float %1789, %1066
  %1791 = fsub fast float %1550, %1065
  %1792 = fmul fast float %1731, %1791
  %1793 = fadd fast float %1792, %1065
  br label %1794

; <label>:1794                                    ; preds = %1782, %1780, %1748, %1733, %1711, %1249, %1068, %1054
  %1795 = phi float [ %1055, %1711 ], [ %1055, %1249 ], [ %1055, %1054 ], [ %1785, %1782 ], [ %1055, %1780 ], [ %1751, %1748 ], [ %1738, %1733 ], [ %1055, %1068 ]
  %1796 = phi float [ %1056, %1711 ], [ %1056, %1249 ], [ %1056, %1054 ], [ %1786, %1782 ], [ %1056, %1780 ], [ %1752, %1748 ], [ %1739, %1733 ], [ %1056, %1068 ]
  %1797 = phi float [ %1712, %1711 ], [ %1057, %1249 ], [ %1057, %1054 ], [ %1712, %1782 ], [ %1712, %1780 ], [ %1712, %1748 ], [ %1712, %1733 ], [ %1057, %1068 ]
  %1798 = phi float [ %1713, %1711 ], [ %1058, %1249 ], [ %1058, %1054 ], [ %1713, %1782 ], [ %1713, %1780 ], [ %1713, %1748 ], [ %1713, %1733 ], [ %1058, %1068 ]
  %1799 = phi float [ %1714, %1711 ], [ %1059, %1249 ], [ %1059, %1054 ], [ %1714, %1782 ], [ %1714, %1780 ], [ %1714, %1748 ], [ %1714, %1733 ], [ %1059, %1068 ]
  %1800 = phi float [ %1715, %1711 ], [ %1060, %1249 ], [ %1060, %1054 ], [ %1715, %1782 ], [ %1715, %1780 ], [ %1715, %1748 ], [ %1715, %1733 ], [ %1060, %1068 ]
  %1801 = phi float [ %1716, %1711 ], [ %1061, %1249 ], [ %1061, %1054 ], [ %1716, %1782 ], [ %1716, %1780 ], [ %1716, %1748 ], [ %1716, %1733 ], [ %1061, %1068 ]
  %1802 = phi float [ %1717, %1711 ], [ %1062, %1249 ], [ %1062, %1054 ], [ %1717, %1782 ], [ %1717, %1780 ], [ %1717, %1748 ], [ %1717, %1733 ], [ %1062, %1068 ]
  %1803 = phi float [ %1718, %1711 ], [ %1063, %1249 ], [ %1063, %1054 ], [ %1718, %1782 ], [ %1718, %1780 ], [ %1718, %1748 ], [ %1718, %1733 ], [ %1063, %1068 ]
  %1804 = phi float [ %1065, %1711 ], [ %1065, %1249 ], [ %1065, %1054 ], [ %1793, %1782 ], [ %1065, %1780 ], [ %1779, %1748 ], [ %1745, %1733 ], [ %1065, %1068 ]
  %1805 = phi float [ %1066, %1711 ], [ %1066, %1249 ], [ %1066, %1054 ], [ %1790, %1782 ], [ %1066, %1780 ], [ %1756, %1748 ], [ %1742, %1733 ], [ %1066, %1068 ]
  %1806 = phi float [ %1719, %1711 ], [ %1067, %1249 ], [ %1067, %1054 ], [ %1719, %1782 ], [ %1719, %1780 ], [ %1719, %1748 ], [ %1719, %1733 ], [ %1067, %1068 ]
  br i1 %455, label %2533, label %1807

; <label>:1807                                    ; preds = %1794
  %1808 = icmp ult i32 %511, 3
  %1809 = add i32 %61, 56
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = add i32 %61, 60
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1812, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = or i32 %1814, %1811
  %1816 = icmp eq i32 %1815, 0
  br i1 %1816, label %2533, label %1817

; <label>:1817                                    ; preds = %1807
  %1818 = and i32 %1811, 262144
  %1819 = icmp ne i32 %1818, 0
  %1820 = select i1 %1819, float %67, float 1.000000e+00
  %1821 = select i1 %1819, float %68, float 0.000000e+00
  %1822 = select i1 %1819, float %69, float 0.000000e+00
  %1823 = select i1 %1819, float %70, float 1.000000e+00
  %1824 = select i1 %1819, float %71, float %94
  %1825 = select i1 %1819, float %72, float %95
  %1826 = add i32 %61, 316
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = lshr i32 %1828, 16
  %1830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1829)  ; LegacyF16ToF32(value)
  %1831 = fmul fast float %1830, 0x3F50624DE0000000
  %1832 = add i32 %61, 120
  %1833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.i32 %1833, 0
  %1835 = lshr i32 %1834, 16
  %1836 = and i32 %1835, 255
  %1837 = lshr i32 %1834, 24
  %1838 = add i32 %61, 324
  %1839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1838, i32 undef)  ; BufferLoad(srv,index,wot)
  %1840 = extractvalue %dx.types.ResRet.i32 %1839, 0
  %1841 = and i32 %1840, 65535
  %1842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1841)  ; LegacyF16ToF32(value)
  %1843 = lshr i32 %1840, 16
  %1844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1843)  ; LegacyF16ToF32(value)
  %1845 = add i32 %61, 64
  %1846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1845, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.i32 %1846, 0
  %1848 = lshr i32 %1847, 22
  %1849 = shl nuw nsw i32 %1848, 5
  %1850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1849)  ; LegacyF16ToF32(value)
  %1851 = shl i32 %1847, 4
  %1852 = and i32 %1851, 32752
  %1853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1852)  ; LegacyF16ToF32(value)
  %1854 = lshr i32 %1847, 7
  %1855 = and i32 %1854, 32752
  %1856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1855)  ; LegacyF16ToF32(value)
  %1857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1858 = extractvalue %dx.types.CBufRet.f32 %1857, 3
  %1859 = fmul fast float %1858, 1.000000e+03
  %1860 = fmul fast float %405, %1859
  %1861 = call float @dx.op.unary.f32(i32 22, float %1860)  ; Frc(value)
  %1862 = fadd fast float %1861, %395
  %1863 = fmul fast float %406, %1859
  %1864 = call float @dx.op.unary.f32(i32 22, float %1863)  ; Frc(value)
  %1865 = fadd fast float %1864, %397
  %1866 = fmul fast float %1831, %1859
  %1867 = call float @dx.op.unary.f32(i32 22, float %1866)  ; Frc(value)
  %1868 = fmul fast float %1867, 0x401921FB60000000
  %1869 = fadd fast float %1868, %1850
  %1870 = call float @dx.op.unary.f32(i32 13, float %1869)  ; Sin(value)
  %1871 = call float @dx.op.unary.f32(i32 12, float %1869)  ; Cos(value)
  %1872 = fsub fast float -0.000000e+00, %1870
  %1873 = fadd fast float %1824, -5.000000e-01
  %1874 = fadd fast float %1825, -5.000000e-01
  %1875 = fmul fast float %1842, %1873
  %1876 = fmul fast float %1844, %1874
  %1877 = fadd fast float %1875, 5.000000e-01
  %1878 = fadd fast float %1876, 5.000000e-01
  %1879 = fmul fast float %1853, %1877
  %1880 = fmul fast float %1856, %1878
  %1881 = fmul fast float %1871, %1879
  %1882 = call float @dx.op.tertiary.f32(i32 46, float %1872, float %1880, float %1881)  ; FMad(a,b,c)
  %1883 = fmul fast float %1870, %1879
  %1884 = call float @dx.op.tertiary.f32(i32 46, float %1871, float %1880, float %1883)  ; FMad(a,b,c)
  %1885 = fadd fast float %1862, %1882
  %1886 = fadd fast float %1865, %1884
  %1887 = icmp ugt i32 %1836, 1
  %1888 = icmp ugt i32 %1834, 33554431
  %1889 = or i1 %1888, %1887
  br i1 %1889, label %1890, label %1915

; <label>:1890                                    ; preds = %1817
  %1891 = add i32 %61, 260
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = lshr i32 %1893, 16
  %1895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1894)  ; LegacyF16ToF32(value)
  %1896 = fmul fast float %1858, %1895
  %1897 = call float @dx.op.unary.f32(i32 22, float %1896)  ; Frc(value)
  %1898 = mul nuw nsw i32 %1836, %1837
  %1899 = uitofp i32 %1898 to float
  %1900 = fmul fast float %1897, %1899
  %1901 = call float @dx.op.unary.f32(i32 27, float %1900)  ; Round_ni(value)
  %1902 = fptoui float %1901 to i32
  %1903 = urem i32 %1902, %1836
  %1904 = udiv i32 %1902, %1837
  %1905 = call float @dx.op.unary.f32(i32 22, float %1885)  ; Frc(value)
  %1906 = call float @dx.op.unary.f32(i32 22, float %1886)  ; Frc(value)
  %1907 = uitofp i32 %1903 to float
  %1908 = uitofp i32 %1904 to float
  %1909 = fadd fast float %1905, %1907
  %1910 = fadd fast float %1906, %1908
  %1911 = uitofp i32 %1836 to float
  %1912 = uitofp i32 %1837 to float
  %1913 = fdiv fast float %1909, %1911
  %1914 = fdiv fast float %1910, %1912
  br label %1915

; <label>:1915                                    ; preds = %1890, %1817
  %1916 = phi float [ %1913, %1890 ], [ %1885, %1817 ]
  %1917 = phi float [ %1914, %1890 ], [ %1886, %1817 ]
  %1918 = and i32 %1811, 256
  %1919 = icmp eq i32 %1918, 0
  br i1 %1919, label %1966, label %1920

; <label>:1920                                    ; preds = %1915
  %1921 = add i32 %61, 432
  %1922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1921, i32 undef)  ; BufferLoad(srv,index,wot)
  %1923 = extractvalue %dx.types.ResRet.i32 %1922, 0
  %1924 = add i32 %1923, 0
  %1925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1924, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1926 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1925, %dx.types.Handle %113, float %1916, float %1917, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1927 = extractvalue %dx.types.ResRet.f32 %1926, 0
  %1928 = add i32 %61, 132
  %1929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1930 = extractvalue %dx.types.ResRet.i32 %1929, 0
  %1931 = shl i32 %1930, 4
  %1932 = and i32 %1931, 32752
  %1933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1932)  ; LegacyF16ToF32(value)
  %1934 = lshr i32 %1930, 7
  %1935 = and i32 %1934, 32752
  %1936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1935)  ; LegacyF16ToF32(value)
  %1937 = fsub fast float 1.000000e+00, %507
  %1938 = call float @dx.op.binary.f32(i32 35, float %1937, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1939 = bitcast float %507 to i32
  %1940 = sitofp i32 %1939 to float
  %1941 = fadd fast float %1940, 0xC1CFBF8940000000
  %1942 = fmul fast float %1936, %1941
  %1943 = fadd fast float %1942, 0x41CFBF8940000000
  %1944 = fptosi float %1943 to i32
  %1945 = bitcast i32 %1944 to float
  %1946 = bitcast float %1938 to i32
  %1947 = sitofp i32 %1946 to float
  %1948 = fadd fast float %1947, 0xC1CFBF8940000000
  %1949 = fmul fast float %1948, %1936
  %1950 = fadd fast float %1949, 0x41CFBF8940000000
  %1951 = fptosi float %1950 to i32
  %1952 = bitcast i32 %1951 to float
  %1953 = fmul fast float %1945, %1933
  %1954 = fmul fast float %1952, %1933
  %1955 = fsub fast float %1938, %1953
  %1956 = fadd fast float %1954, %1938
  %1957 = call float @dx.op.unary.f32(i32 7, float %1955)  ; Saturate(value)
  %1958 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  %1959 = fsub fast float %1927, %1957
  %1960 = fsub fast float %1958, %1957
  %1961 = bitcast float %1960 to i32
  %1962 = sub nsw i32 2129859010, %1961
  %1963 = bitcast i32 %1962 to float
  %1964 = fmul fast float %1963, %1959
  %1965 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  br label %1966

; <label>:1966                                    ; preds = %1920, %1915
  %1967 = phi float [ %1965, %1920 ], [ %507, %1915 ]
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = and i32 %1969, 128
  %1971 = icmp eq i32 %1970, 0
  br i1 %1971, label %1988, label %1972

; <label>:1972                                    ; preds = %1966
  %1973 = add i32 %61, 416
  %1974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1973, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.i32 %1974, 0
  %1976 = add i32 %1975, 0
  %1977 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1976, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1978 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1977, %dx.types.Handle %113, float %1916, float %1917, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1979 = extractvalue %dx.types.ResRet.f32 %1978, 0
  %1980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.i32 %1980, 0
  %1982 = and i32 %1981, 524288
  %1983 = icmp ne i32 %1982, 0
  %1984 = fcmp fast ogt float %1979, 0x3FE0101020000000
  %1985 = select i1 %1984, float 1.000000e+00, float 0.000000e+00
  %1986 = select i1 %1983, float %1985, float %1979
  %1987 = fmul fast float %1986, %1967
  br label %1988

; <label>:1988                                    ; preds = %1972, %1966
  %1989 = phi float [ %1987, %1972 ], [ %1967, %1966 ]
  %1990 = fcmp fast ult float %1989, 0x3F70101020000000
  br i1 %1990, label %2533, label %1991

; <label>:1991                                    ; preds = %1988
  %1992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.i32 %1992, 0
  %1994 = and i32 %1993, 16
  %1995 = icmp eq i32 %1994, 0
  br i1 %1995, label %2194, label %1996

; <label>:1996                                    ; preds = %1991
  %1997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = add i32 %61, 368
  %2000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.i32 %2000, 0
  %2002 = add i32 %2001, 0
  %2003 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2002, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2004 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2003, %dx.types.Handle %112, float %1916, float %1917, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2005 = extractvalue %dx.types.ResRet.f32 %2004, 0
  %2006 = extractvalue %dx.types.ResRet.f32 %2004, 1
  %2007 = extractvalue %dx.types.ResRet.f32 %2004, 2
  %2008 = extractvalue %dx.types.ResRet.f32 %2004, 3
  %2009 = and i32 %1998, 255
  %2010 = uitofp i32 %2009 to float
  %2011 = lshr i32 %1998, 8
  %2012 = and i32 %2011, 255
  %2013 = uitofp i32 %2012 to float
  %2014 = fmul fast float %2008, %2010
  %2015 = fadd fast float %2014, %2013
  %2016 = fmul fast float %2015, 0x3F70101000000000
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = and i32 %2018, 512
  %2020 = icmp eq i32 %2019, 0
  br i1 %2020, label %2029, label %2021

; <label>:2021                                    ; preds = %1996
  %2022 = add i32 %61, 448
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = add i32 %2024, 0
  %2026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2025, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2027 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2026, %dx.types.Handle %113, float %1916, float %1917, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2028 = extractvalue %dx.types.ResRet.f32 %2027, 0
  br label %2029

; <label>:2029                                    ; preds = %2021, %1996
  %2030 = phi float [ %2028, %2021 ], [ 1.000000e+00, %1996 ]
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = and i32 %2032, 33554432
  %2034 = icmp eq i32 %2033, 0
  br i1 %2034, label %2141, label %2035

; <label>:2035                                    ; preds = %2029
  %2036 = add i32 %61, 256
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2036, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = and i32 %2038, 65535
  %2040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2039)  ; LegacyF16ToF32(value)
  %2041 = lshr i32 %2038, 16
  %2042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2041)  ; LegacyF16ToF32(value)
  %2043 = add i32 %61, 260
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = and i32 %2045, 65535
  %2047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2046)  ; LegacyF16ToF32(value)
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = lshr i32 %2049, 24
  %2051 = uitofp i32 %2050 to float
  %2052 = fmul fast float %2051, 0x3F70101020000000
  %2053 = and i32 %2049, 255
  %2054 = uitofp i32 %2053 to float
  %2055 = fmul fast float %2054, 0x3F70101020000000
  %2056 = lshr i32 %2049, 8
  %2057 = and i32 %2056, 255
  %2058 = uitofp i32 %2057 to float
  %2059 = fmul fast float %2058, 0x3F70101020000000
  %2060 = lshr i32 %2049, 16
  %2061 = and i32 %2060, 255
  %2062 = uitofp i32 %2061 to float
  %2063 = fmul fast float %2062, 0x3F70101020000000
  %2064 = add i32 %61, 252
  %2065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2064, i32 undef)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.i32 %2065, 0
  %2067 = lshr i32 %2066, 24
  %2068 = uitofp i32 %2067 to float
  %2069 = fmul fast float %2068, 0x3F70101020000000
  %2070 = and i32 %2066, 255
  %2071 = uitofp i32 %2070 to float
  %2072 = fmul fast float %2071, 0x3F70101020000000
  %2073 = lshr i32 %2066, 8
  %2074 = and i32 %2073, 255
  %2075 = uitofp i32 %2074 to float
  %2076 = fmul fast float %2075, 0x3F70101020000000
  %2077 = lshr i32 %2066, 16
  %2078 = and i32 %2077, 255
  %2079 = uitofp i32 %2078 to float
  %2080 = fmul fast float %2079, 0x3F70101020000000
  %2081 = bitcast float %2005 to i32
  %2082 = ashr i32 %2081, 1
  %2083 = sub nsw i32 1597463174, %2082
  %2084 = bitcast i32 %2083 to float
  %2085 = fmul fast float %2005, 5.000000e-01
  %2086 = fmul fast float %2084, %2084
  %2087 = fmul fast float %2086, %2085
  %2088 = fsub fast float 1.500000e+00, %2087
  %2089 = fmul fast float %2084, %2005
  %2090 = fmul fast float %2089, %2088
  %2091 = bitcast float %2006 to i32
  %2092 = ashr i32 %2091, 1
  %2093 = sub nsw i32 1597463174, %2092
  %2094 = bitcast i32 %2093 to float
  %2095 = fmul fast float %2006, 5.000000e-01
  %2096 = fmul fast float %2094, %2094
  %2097 = fmul fast float %2096, %2095
  %2098 = fsub fast float 1.500000e+00, %2097
  %2099 = fmul fast float %2094, %2006
  %2100 = fmul fast float %2099, %2098
  %2101 = bitcast float %2007 to i32
  %2102 = ashr i32 %2101, 1
  %2103 = sub nsw i32 1597463174, %2102
  %2104 = bitcast i32 %2103 to float
  %2105 = fmul fast float %2007, 5.000000e-01
  %2106 = fmul fast float %2104, %2104
  %2107 = fmul fast float %2106, %2105
  %2108 = fsub fast float 1.500000e+00, %2107
  %2109 = fmul fast float %2104, %2007
  %2110 = fmul fast float %2109, %2108
  %2111 = fsub fast float %2090, %2072
  %2112 = fsub fast float %2100, %2076
  %2113 = fsub fast float %2110, %2080
  %2114 = fmul fast float %2111, %2040
  %2115 = fmul fast float %2112, %2042
  %2116 = fmul fast float %2113, %2047
  %2117 = fadd fast float %2114, %2055
  %2118 = fadd fast float %2115, %2059
  %2119 = fadd fast float %2116, %2063
  %2120 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2121 = call float @dx.op.unary.f32(i32 7, float %2118)  ; Saturate(value)
  %2122 = call float @dx.op.unary.f32(i32 7, float %2119)  ; Saturate(value)
  %2123 = fmul fast float %2120, %2120
  %2124 = fmul fast float %2121, %2121
  %2125 = fmul fast float %2122, %2122
  %2126 = fsub fast float %2123, %2005
  %2127 = fsub fast float %2124, %2006
  %2128 = fsub fast float %2125, %2007
  %2129 = fmul fast float %2126, %2030
  %2130 = fmul fast float %2127, %2030
  %2131 = fmul fast float %2128, %2030
  %2132 = fadd fast float %2129, %2005
  %2133 = fadd fast float %2130, %2006
  %2134 = fadd fast float %2131, %2007
  %2135 = fadd fast float %2052, %2016
  %2136 = fsub fast float %2135, %2069
  %2137 = call float @dx.op.unary.f32(i32 7, float %2136)  ; Saturate(value)
  %2138 = fsub fast float %2137, %2016
  %2139 = fmul fast float %2138, %2030
  %2140 = fadd fast float %2139, %2016
  br label %2194

; <label>:2141                                    ; preds = %2029
  %2142 = and i32 %2032, 134217728
  %2143 = icmp eq i32 %2142, 0
  br i1 %2143, label %2178, label %2144

; <label>:2144                                    ; preds = %2141
  %2145 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %2146 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %2147 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %2148 = fadd fast float %2145, -5.000000e-01
  %2149 = fadd fast float %2146, -5.000000e-01
  %2150 = fadd fast float %2147, -5.000000e-01
  %2151 = fmul fast float %2148, %2030
  %2152 = fmul fast float %2149, %2030
  %2153 = fmul fast float %2150, %2030
  %2154 = fadd fast float %2151, 5.000000e-01
  %2155 = fadd fast float %2152, 5.000000e-01
  %2156 = fadd fast float %2153, 5.000000e-01
  %2157 = call float @dx.op.unary.f32(i32 24, float %2005)  ; Sqrt(value)
  %2158 = call float @dx.op.unary.f32(i32 24, float %2006)  ; Sqrt(value)
  %2159 = call float @dx.op.unary.f32(i32 24, float %2007)  ; Sqrt(value)
  %2160 = fmul fast float %2154, 2.000000e+00
  %2161 = fsub fast float 1.000000e+00, %2160
  %2162 = fmul fast float %2161, %2157
  %2163 = fadd fast float %2162, %2160
  %2164 = fmul fast float %2163, %2157
  %2165 = fmul fast float %2155, 2.000000e+00
  %2166 = fsub fast float 1.000000e+00, %2165
  %2167 = fmul fast float %2166, %2158
  %2168 = fadd fast float %2167, %2165
  %2169 = fmul fast float %2168, %2158
  %2170 = fmul fast float %2156, 2.000000e+00
  %2171 = fsub fast float 1.000000e+00, %2170
  %2172 = fmul fast float %2171, %2159
  %2173 = fadd fast float %2172, %2170
  %2174 = fmul fast float %2173, %2159
  %2175 = fmul fast float %2164, %2164
  %2176 = fmul fast float %2169, %2169
  %2177 = fmul fast float %2174, %2174
  br label %2194

; <label>:2178                                    ; preds = %2141
  %2179 = fmul fast float %382, %382
  %2180 = fmul fast float %386, %386
  %2181 = fmul fast float %390, %390
  %2182 = fadd fast float %2179, -1.000000e+00
  %2183 = fadd fast float %2180, -1.000000e+00
  %2184 = fadd fast float %2181, -1.000000e+00
  %2185 = fmul fast float %2030, %2182
  %2186 = fmul fast float %2030, %2183
  %2187 = fmul fast float %2030, %2184
  %2188 = fadd fast float %2185, 1.000000e+00
  %2189 = fadd fast float %2186, 1.000000e+00
  %2190 = fadd fast float %2187, 1.000000e+00
  %2191 = fmul fast float %2188, %2005
  %2192 = fmul fast float %2189, %2006
  %2193 = fmul fast float %2190, %2007
  br label %2194

; <label>:2194                                    ; preds = %2178, %2144, %2035, %1991
  %2195 = phi float [ %2140, %2035 ], [ %2016, %2144 ], [ %2016, %2178 ], [ 0x3FA23C0BE0000000, %1991 ]
  %2196 = phi float [ %2132, %2035 ], [ %2175, %2144 ], [ %2191, %2178 ], [ 1.000000e+00, %1991 ]
  %2197 = phi float [ %2133, %2035 ], [ %2176, %2144 ], [ %2192, %2178 ], [ 1.000000e+00, %1991 ]
  %2198 = phi float [ %2134, %2035 ], [ %2177, %2144 ], [ %2193, %2178 ], [ 1.000000e+00, %1991 ]
  %2199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2200 = extractvalue %dx.types.CBufRet.i32 %2199, 1
  %2201 = and i32 %2200, 1
  %2202 = icmp ne i32 %2201, 0
  %2203 = add i32 %61, 356
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2203, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = and i32 %2205, 32
  %2207 = icmp ne i32 %2206, 0
  %2208 = and i1 %2202, %2207
  %2209 = select i1 %2208, float 1.000000e+00, float %2196
  %2210 = select i1 %2208, float 0x3FD3333340000000, float %2197
  %2211 = select i1 %2208, float 0x3FD3333340000000, float %2198
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = and i32 %2213, 32
  %2215 = icmp eq i32 %2214, 0
  br i1 %2215, label %2288, label %2216

; <label>:2216                                    ; preds = %2194
  %2217 = add i32 %61, 124
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = add i32 %61, 384
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2220, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = add i32 %2222, 0
  %2224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2225 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2224, %dx.types.Handle %112, float %1916, float %1917, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2226 = extractvalue %dx.types.ResRet.f32 %2225, 0
  %2227 = extractvalue %dx.types.ResRet.f32 %2225, 1
  %2228 = extractvalue %dx.types.ResRet.f32 %2225, 2
  %2229 = extractvalue %dx.types.ResRet.f32 %2225, 3
  %2230 = and i32 %2219, 255
  %2231 = uitofp i32 %2230 to float
  %2232 = lshr i32 %2219, 8
  %2233 = and i32 %2232, 255
  %2234 = uitofp i32 %2233 to float
  %2235 = lshr i32 %2219, 16
  %2236 = and i32 %2235, 255
  %2237 = uitofp i32 %2236 to float
  %2238 = fmul fast float %2237, 0x3F70101000000000
  %2239 = fmul fast float %2226, %2231
  %2240 = fadd fast float %2239, %2234
  %2241 = fmul fast float %2240, 0x3F70101000000000
  %2242 = fadd fast float %2227, -5.000000e-01
  %2243 = fadd fast float %2229, -5.000000e-01
  %2244 = fmul fast float %2242, %2238
  %2245 = fmul fast float %2243, %2238
  %2246 = fadd fast float %2244, 5.000000e-01
  %2247 = fadd fast float %2245, 5.000000e-01
  %2248 = fmul fast float %2246, 2.000000e+00
  %2249 = fadd fast float %2248, -1.000000e+00
  %2250 = fmul fast float %2247, 2.000000e+00
  %2251 = fadd fast float %2250, -1.000000e+00
  %2252 = fadd fast float %2249, %2251
  %2253 = fmul fast float %2252, 5.000000e-01
  %2254 = fsub fast float %2249, %2251
  %2255 = fmul fast float %2254, 5.000000e-01
  %2256 = call float @dx.op.unary.f32(i32 6, float %2253)  ; FAbs(value)
  %2257 = fsub fast float 1.000000e+00, %2256
  %2258 = call float @dx.op.unary.f32(i32 6, float %2255)  ; FAbs(value)
  %2259 = fsub fast float %2257, %2258
  %2260 = call float @dx.op.dot3.f32(i32 55, float %2253, float %2255, float %2259, float %2253, float %2255, float %2259)  ; Dot3(ax,ay,az,bx,by,bz)
  %2261 = call float @dx.op.unary.f32(i32 25, float %2260)  ; Rsqrt(value)
  %2262 = fmul fast float %2253, %2261
  %2263 = fmul fast float %2255, %2261
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = and i32 %2265, 67108864
  %2267 = icmp eq i32 %2266, 0
  br i1 %2267, label %2284, label %2268

; <label>:2268                                    ; preds = %2216
  %2269 = add i32 %61, 312
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = and i32 %2271, 65535
  %2273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2272)  ; LegacyF16ToF32(value)
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = and i32 %2275, 65535
  %2277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2276)  ; LegacyF16ToF32(value)
  %2278 = lshr i32 %2271, 16
  %2279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2278)  ; LegacyF16ToF32(value)
  %2280 = fsub fast float %2241, %2279
  %2281 = fmul fast float %2280, %2273
  %2282 = fadd fast float %2281, %2277
  %2283 = call float @dx.op.unary.f32(i32 7, float %2282)  ; Saturate(value)
  br label %2284

; <label>:2284                                    ; preds = %2268, %2216
  %2285 = phi float [ %2283, %2268 ], [ %2241, %2216 ]
  %2286 = call float @dx.op.dot2.f32(i32 54, float %2262, float %2263, float %1820, float %1821)  ; Dot2(ax,ay,bx,by)
  %2287 = call float @dx.op.dot2.f32(i32 54, float %2262, float %2263, float %1822, float %1823)  ; Dot2(ax,ay,bx,by)
  br label %2288

; <label>:2288                                    ; preds = %2284, %2194
  %2289 = phi float [ %2285, %2284 ], [ 0x3FD6666660000000, %2194 ]
  %2290 = phi float [ %2286, %2284 ], [ 0.000000e+00, %2194 ]
  %2291 = phi float [ %2287, %2284 ], [ 0.000000e+00, %2194 ]
  %2292 = phi float [ %2228, %2284 ], [ 1.000000e+00, %2194 ]
  %2293 = add i32 %61, 192
  %2294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2293, i32 undef)  ; BufferLoad(srv,index,wot)
  %2295 = extractvalue %dx.types.ResRet.i32 %2294, 0
  %2296 = lshr i32 %2295, 22
  %2297 = shl nuw nsw i32 %2296, 5
  %2298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2297)  ; LegacyF16ToF32(value)
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = and i32 %2300, 64
  %2302 = icmp eq i32 %2301, 0
  br i1 %2302, label %2336, label %2303

; <label>:2303                                    ; preds = %2288
  %2304 = add i32 %61, 400
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = add i32 %2306, 0
  %2308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2307, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = and i32 %2310, 131072
  %2312 = icmp eq i32 %2311, 0
  %2313 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2308, %dx.types.Handle %112, float %1916, float %1917, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2314 = extractvalue %dx.types.ResRet.f32 %2313, 0
  %2315 = extractvalue %dx.types.ResRet.f32 %2313, 1
  %2316 = extractvalue %dx.types.ResRet.f32 %2313, 2
  %2317 = fmul fast float %2314, %370
  %2318 = fmul fast float %2315, %373
  %2319 = fmul fast float %2316, %376
  br i1 %2312, label %2326, label %2320

; <label>:2320                                    ; preds = %2303
  %2321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2322 = extractvalue %dx.types.CBufRet.f32 %2321, 0
  %2323 = fmul fast float %2322, %2317
  %2324 = fmul fast float %2322, %2318
  %2325 = fmul fast float %2322, %2319
  br label %2326

; <label>:2326                                    ; preds = %2320, %2303
  %2327 = phi float [ %2323, %2320 ], [ %2317, %2303 ]
  %2328 = phi float [ %2324, %2320 ], [ %2318, %2303 ]
  %2329 = phi float [ %2325, %2320 ], [ %2319, %2303 ]
  %2330 = fmul fast float %2327, %2298
  %2331 = select i1 %269, float %2330, float %2327
  %2332 = call float @dx.op.dot3.f32(i32 55, float %2331, float %2328, float %2329, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2333 = select i1 %269, float 0.000000e+00, float %2327
  %2334 = select i1 %269, float %2332, float %2328
  %2335 = select i1 %269, float 0.000000e+00, float %2329
  br label %2336

; <label>:2336                                    ; preds = %2326, %2288
  %2337 = phi float [ %2333, %2326 ], [ 0.000000e+00, %2288 ]
  %2338 = phi float [ %2334, %2326 ], [ 0.000000e+00, %2288 ]
  %2339 = phi float [ %2335, %2326 ], [ 0.000000e+00, %2288 ]
  %2340 = add i32 %61, 128
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = and i32 %2342, 255
  %2344 = uitofp i32 %2343 to float
  %2345 = lshr i32 %2342, 8
  %2346 = and i32 %2345, 255
  %2347 = uitofp i32 %2346 to float
  %2348 = call float @dx.op.dot3.f32(i32 55, float %2209, float %2210, float %2211, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2349 = fmul fast float %2347, %2348
  %2350 = fadd fast float %2349, %2344
  %2351 = fmul fast float %2350, 0x3F70101020000000
  %2352 = call float @dx.op.unary.f32(i32 7, float %2351)  ; Saturate(value)
  br i1 %1808, label %2353, label %2361

; <label>:2353                                    ; preds = %2336
  %2354 = fsub fast float 1.000000e+00, %1989
  %2355 = fmul fast float %2354, %1797
  %2356 = fmul fast float %2354, %1798
  %2357 = fmul fast float %2354, %1799
  %2358 = fmul fast float %2354, %1800
  %2359 = fmul fast float %2354, %1801
  %2360 = fmul fast float %2354, %1802
  br label %2361

; <label>:2361                                    ; preds = %2353, %2336
  %2362 = phi float [ %2355, %2353 ], [ %1797, %2336 ]
  %2363 = phi float [ %2356, %2353 ], [ %1798, %2336 ]
  %2364 = phi float [ %2357, %2353 ], [ %1799, %2336 ]
  %2365 = phi float [ %2358, %2353 ], [ %1800, %2336 ]
  %2366 = phi float [ %2359, %2353 ], [ %1801, %2336 ]
  %2367 = phi float [ %2360, %2353 ], [ %1802, %2336 ]
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = and i32 %2369, 3
  %2371 = icmp eq i32 %2370, 3
  br i1 %2371, label %2450, label %2372

; <label>:2372                                    ; preds = %2361
  %2373 = and i32 %2369, 16
  %2374 = icmp ne i32 %2373, 0
  %2375 = select i1 %2374, float %1989, float 0.000000e+00
  %2376 = icmp eq i32 %2370, 0
  br i1 %2376, label %2377, label %2405

; <label>:2377                                    ; preds = %2372
  %2378 = and i32 %2369, 64
  %2379 = icmp ne i32 %2378, 0
  %2380 = select i1 %2379, float %1989, float 0.000000e+00
  %2381 = fsub fast float %2209, %2362
  %2382 = fsub fast float %2210, %2363
  %2383 = fsub fast float %2211, %2364
  %2384 = fmul fast float %2375, %2381
  %2385 = fmul fast float %2375, %2382
  %2386 = fmul fast float %2375, %2383
  %2387 = fadd fast float %2384, %2362
  %2388 = fadd fast float %2385, %2363
  %2389 = fadd fast float %2386, %2364
  %2390 = fsub fast float %2195, %1803
  %2391 = fmul fast float %2375, %2390
  %2392 = fadd fast float %2391, %1803
  %2393 = fsub fast float %2337, %2365
  %2394 = fsub fast float %2338, %2366
  %2395 = fsub fast float %2339, %2367
  %2396 = fmul fast float %2380, %2393
  %2397 = fmul fast float %2380, %2394
  %2398 = fmul fast float %2380, %2395
  %2399 = fadd fast float %2396, %2365
  %2400 = fadd fast float %2397, %2366
  %2401 = fadd fast float %2398, %2367
  %2402 = fsub fast float %2352, %1806
  %2403 = fmul fast float %2375, %2402
  %2404 = fadd fast float %2403, %1806
  br label %2450

; <label>:2405                                    ; preds = %2372
  %2406 = icmp eq i32 %2370, 1
  br i1 %2406, label %2407, label %2420

; <label>:2407                                    ; preds = %2405
  %2408 = fadd fast float %2209, -1.000000e+00
  %2409 = fadd fast float %2210, -1.000000e+00
  %2410 = fadd fast float %2211, -1.000000e+00
  %2411 = fmul fast float %2375, %2408
  %2412 = fmul fast float %2375, %2409
  %2413 = fmul fast float %2375, %2410
  %2414 = fadd fast float %2411, 1.000000e+00
  %2415 = fadd fast float %2412, 1.000000e+00
  %2416 = fadd fast float %2413, 1.000000e+00
  %2417 = fmul fast float %2414, %2362
  %2418 = fmul fast float %2415, %2363
  %2419 = fmul fast float %2416, %2364
  br label %2450

; <label>:2420                                    ; preds = %2405
  %2421 = icmp eq i32 %2370, 2
  br i1 %2421, label %2422, label %2450

; <label>:2422                                    ; preds = %2420
  %2423 = call float @dx.op.unary.f32(i32 24, float %2209)  ; Sqrt(value)
  %2424 = call float @dx.op.unary.f32(i32 24, float %2210)  ; Sqrt(value)
  %2425 = call float @dx.op.unary.f32(i32 24, float %2211)  ; Sqrt(value)
  %2426 = fadd fast float %2423, -5.000000e-01
  %2427 = fadd fast float %2424, -5.000000e-01
  %2428 = fadd fast float %2425, -5.000000e-01
  %2429 = fmul fast float %2426, %2375
  %2430 = fmul fast float %2427, %2375
  %2431 = fmul fast float %2428, %2375
  %2432 = fadd fast float %2429, 5.000000e-01
  %2433 = fadd fast float %2430, 5.000000e-01
  %2434 = fadd fast float %2431, 5.000000e-01
  %2435 = fmul fast float %2432, 2.000000e+00
  %2436 = fsub fast float 1.000000e+00, %2435
  %2437 = fmul fast float %2436, %2362
  %2438 = fadd fast float %2437, %2435
  %2439 = fmul fast float %2438, %2362
  %2440 = fmul fast float %2433, 2.000000e+00
  %2441 = fsub fast float 1.000000e+00, %2440
  %2442 = fmul fast float %2441, %2363
  %2443 = fadd fast float %2442, %2440
  %2444 = fmul fast float %2443, %2363
  %2445 = fmul fast float %2434, 2.000000e+00
  %2446 = fsub fast float 1.000000e+00, %2445
  %2447 = fmul fast float %2446, %2364
  %2448 = fadd fast float %2447, %2445
  %2449 = fmul fast float %2448, %2364
  br label %2450

; <label>:2450                                    ; preds = %2422, %2420, %2407, %2377, %2361
  %2451 = phi float [ %2362, %2361 ], [ %2439, %2422 ], [ %2362, %2420 ], [ %2417, %2407 ], [ %2387, %2377 ]
  %2452 = phi float [ %2363, %2361 ], [ %2444, %2422 ], [ %2363, %2420 ], [ %2418, %2407 ], [ %2388, %2377 ]
  %2453 = phi float [ %2364, %2361 ], [ %2449, %2422 ], [ %2364, %2420 ], [ %2419, %2407 ], [ %2389, %2377 ]
  %2454 = phi float [ %2365, %2361 ], [ %2365, %2422 ], [ %2365, %2420 ], [ %2365, %2407 ], [ %2399, %2377 ]
  %2455 = phi float [ %2366, %2361 ], [ %2366, %2422 ], [ %2366, %2420 ], [ %2366, %2407 ], [ %2400, %2377 ]
  %2456 = phi float [ %2367, %2361 ], [ %2367, %2422 ], [ %2367, %2420 ], [ %2367, %2407 ], [ %2401, %2377 ]
  %2457 = phi float [ %1803, %2361 ], [ %1803, %2422 ], [ %1803, %2420 ], [ %1803, %2407 ], [ %2392, %2377 ]
  %2458 = phi float [ %1806, %2361 ], [ %1806, %2422 ], [ %1806, %2420 ], [ %1806, %2407 ], [ %2404, %2377 ]
  %2459 = and i32 %2369, 12
  %2460 = icmp eq i32 %2459, 12
  br i1 %2460, label %2533, label %2461

; <label>:2461                                    ; preds = %2450
  %2462 = and i32 %2369, 2097184
  %2463 = icmp eq i32 %2462, 2097184
  %2464 = select i1 %2463, float %1989, float 0.000000e+00
  %2465 = and i32 %2369, 4194336
  %2466 = icmp eq i32 %2465, 4194336
  %2467 = select i1 %2466, float %1989, float 0.000000e+00
  %2468 = and i32 %2369, 8388640
  %2469 = icmp eq i32 %2468, 8388640
  %2470 = select i1 %2469, float %1989, float 0.000000e+00
  %2471 = icmp eq i32 %2459, 0
  br i1 %2471, label %2472, label %2485

; <label>:2472                                    ; preds = %2461
  %2473 = fsub fast float %2290, %1795
  %2474 = fsub fast float %2291, %1796
  %2475 = fmul fast float %2464, %2473
  %2476 = fmul fast float %2464, %2474
  %2477 = fadd fast float %2475, %1795
  %2478 = fadd fast float %2476, %1796
  %2479 = fsub fast float %2292, %1805
  %2480 = fmul fast float %2467, %2479
  %2481 = fadd fast float %2480, %1805
  %2482 = fsub fast float %2289, %1804
  %2483 = fmul fast float %2470, %2482
  %2484 = fadd fast float %2483, %1804
  br label %2533

; <label>:2485                                    ; preds = %2461
  %2486 = icmp eq i32 %2459, 4
  br i1 %2486, label %2487, label %2519

; <label>:2487                                    ; preds = %2485
  %2488 = fmul fast float %2464, %2290
  %2489 = fmul fast float %2464, %2291
  %2490 = fadd fast float %2488, %1795
  %2491 = fadd fast float %2489, %1796
  %2492 = call float @dx.op.binary.f32(i32 36, float %1805, float %2292)  ; FMin(a,b)
  %2493 = fsub fast float %2492, %1805
  %2494 = fmul fast float %2493, %2467
  %2495 = fadd fast float %2494, %1805
  %2496 = fadd fast float %2289, %1804
  %2497 = fmul fast float %2496, 0x3FF337FAE0000000
  %2498 = fmul fast float %1804, %1804
  %2499 = fmul fast float %2289, %2289
  %2500 = fadd fast float %2499, %2498
  %2501 = fmul fast float %2500, 0x3FE5152B00000000
  %2502 = fmul fast float %1804, 0xBFCC1F85E0000000
  %2503 = fmul fast float %2502, %2289
  %2504 = fadd fast float %2503, 0xBFE1363700000000
  %2505 = fadd fast float %2504, %2497
  %2506 = fsub fast float %2505, %2501
  %2507 = fmul fast float %2496, 0x3FBA6F0D00000000
  %2508 = fmul fast float %2500, 0x3FD0432880000000
  %2509 = fmul fast float %1804, 0xBFEF110800000000
  %2510 = fmul fast float %2509, %2289
  %2511 = fadd fast float %2510, 1.000000e+00
  %2512 = fsub fast float %2511, %2507
  %2513 = fadd fast float %2512, %2508
  %2514 = fdiv fast float %2506, %2513
  %2515 = call float @dx.op.unary.f32(i32 7, float %2514)  ; Saturate(value)
  %2516 = fsub fast float %2515, %1804
  %2517 = fmul fast float %2516, %2470
  %2518 = fadd fast float %2517, %1804
  br label %2533

; <label>:2519                                    ; preds = %2485
  %2520 = icmp eq i32 %2459, 8
  br i1 %2520, label %2521, label %2533

; <label>:2521                                    ; preds = %2519
  %2522 = fmul fast float %2464, %2290
  %2523 = fmul fast float %2464, %2291
  %2524 = fadd fast float %2522, %1795
  %2525 = fadd fast float %2523, %1796
  %2526 = call float @dx.op.binary.f32(i32 36, float %1805, float %2292)  ; FMin(a,b)
  %2527 = fsub fast float %2526, %1805
  %2528 = fmul fast float %2527, %2467
  %2529 = fadd fast float %2528, %1805
  %2530 = fsub fast float %2289, %1804
  %2531 = fmul fast float %2470, %2530
  %2532 = fadd fast float %2531, %1804
  br label %2533

; <label>:2533                                    ; preds = %2521, %2519, %2487, %2472, %2450, %1988, %1807, %1794
  %2534 = phi float [ %1795, %2450 ], [ %1795, %1988 ], [ %1795, %1794 ], [ %2524, %2521 ], [ %1795, %2519 ], [ %2490, %2487 ], [ %2477, %2472 ], [ %1795, %1807 ]
  %2535 = phi float [ %1796, %2450 ], [ %1796, %1988 ], [ %1796, %1794 ], [ %2525, %2521 ], [ %1796, %2519 ], [ %2491, %2487 ], [ %2478, %2472 ], [ %1796, %1807 ]
  %2536 = phi float [ %2451, %2450 ], [ %1797, %1988 ], [ %1797, %1794 ], [ %2451, %2521 ], [ %2451, %2519 ], [ %2451, %2487 ], [ %2451, %2472 ], [ %1797, %1807 ]
  %2537 = phi float [ %2452, %2450 ], [ %1798, %1988 ], [ %1798, %1794 ], [ %2452, %2521 ], [ %2452, %2519 ], [ %2452, %2487 ], [ %2452, %2472 ], [ %1798, %1807 ]
  %2538 = phi float [ %2453, %2450 ], [ %1799, %1988 ], [ %1799, %1794 ], [ %2453, %2521 ], [ %2453, %2519 ], [ %2453, %2487 ], [ %2453, %2472 ], [ %1799, %1807 ]
  %2539 = phi float [ %2454, %2450 ], [ %1800, %1988 ], [ %1800, %1794 ], [ %2454, %2521 ], [ %2454, %2519 ], [ %2454, %2487 ], [ %2454, %2472 ], [ %1800, %1807 ]
  %2540 = phi float [ %2455, %2450 ], [ %1801, %1988 ], [ %1801, %1794 ], [ %2455, %2521 ], [ %2455, %2519 ], [ %2455, %2487 ], [ %2455, %2472 ], [ %1801, %1807 ]
  %2541 = phi float [ %2456, %2450 ], [ %1802, %1988 ], [ %1802, %1794 ], [ %2456, %2521 ], [ %2456, %2519 ], [ %2456, %2487 ], [ %2456, %2472 ], [ %1802, %1807 ]
  %2542 = phi float [ %2457, %2450 ], [ %1803, %1988 ], [ %1803, %1794 ], [ %2457, %2521 ], [ %2457, %2519 ], [ %2457, %2487 ], [ %2457, %2472 ], [ %1803, %1807 ]
  %2543 = phi float [ %1804, %2450 ], [ %1804, %1988 ], [ %1804, %1794 ], [ %2532, %2521 ], [ %1804, %2519 ], [ %2518, %2487 ], [ %2484, %2472 ], [ %1804, %1807 ]
  %2544 = phi float [ %1805, %2450 ], [ %1805, %1988 ], [ %1805, %1794 ], [ %2529, %2521 ], [ %1805, %2519 ], [ %2495, %2487 ], [ %2481, %2472 ], [ %1805, %1807 ]
  %2545 = phi float [ %2458, %2450 ], [ %1806, %1988 ], [ %1806, %1794 ], [ %2458, %2521 ], [ %2458, %2519 ], [ %2458, %2487 ], [ %2458, %2472 ], [ %1806, %1807 ]
  br i1 %457, label %3272, label %2546

; <label>:2546                                    ; preds = %2533
  %2547 = icmp ult i32 %511, 4
  %2548 = add i32 %61, 72
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = add i32 %61, 76
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = or i32 %2553, %2550
  %2555 = icmp eq i32 %2554, 0
  br i1 %2555, label %3272, label %2556

; <label>:2556                                    ; preds = %2546
  %2557 = and i32 %2550, 262144
  %2558 = icmp ne i32 %2557, 0
  %2559 = select i1 %2558, float %67, float 1.000000e+00
  %2560 = select i1 %2558, float %68, float 0.000000e+00
  %2561 = select i1 %2558, float %69, float 0.000000e+00
  %2562 = select i1 %2558, float %70, float 1.000000e+00
  %2563 = select i1 %2558, float %71, float %94
  %2564 = select i1 %2558, float %72, float %95
  %2565 = add i32 %61, 332
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = lshr i32 %2567, 16
  %2569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2568)  ; LegacyF16ToF32(value)
  %2570 = fmul fast float %2569, 0x3F50624DE0000000
  %2571 = add i32 %61, 136
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = lshr i32 %2573, 16
  %2575 = and i32 %2574, 255
  %2576 = lshr i32 %2573, 24
  %2577 = add i32 %61, 340
  %2578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.i32 %2578, 0
  %2580 = and i32 %2579, 65535
  %2581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2580)  ; LegacyF16ToF32(value)
  %2582 = lshr i32 %2579, 16
  %2583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2582)  ; LegacyF16ToF32(value)
  %2584 = add i32 %61, 80
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2584, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = lshr i32 %2586, 22
  %2588 = shl nuw nsw i32 %2587, 5
  %2589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2588)  ; LegacyF16ToF32(value)
  %2590 = shl i32 %2586, 4
  %2591 = and i32 %2590, 32752
  %2592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2591)  ; LegacyF16ToF32(value)
  %2593 = lshr i32 %2586, 7
  %2594 = and i32 %2593, 32752
  %2595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2594)  ; LegacyF16ToF32(value)
  %2596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2597 = extractvalue %dx.types.CBufRet.f32 %2596, 3
  %2598 = fmul fast float %2597, 1.000000e+03
  %2599 = fmul fast float %447, %2598
  %2600 = call float @dx.op.unary.f32(i32 22, float %2599)  ; Frc(value)
  %2601 = fadd fast float %2600, %437
  %2602 = fmul fast float %448, %2598
  %2603 = call float @dx.op.unary.f32(i32 22, float %2602)  ; Frc(value)
  %2604 = fadd fast float %2603, %439
  %2605 = fmul fast float %2570, %2598
  %2606 = call float @dx.op.unary.f32(i32 22, float %2605)  ; Frc(value)
  %2607 = fmul fast float %2606, 0x401921FB60000000
  %2608 = fadd fast float %2607, %2589
  %2609 = call float @dx.op.unary.f32(i32 13, float %2608)  ; Sin(value)
  %2610 = call float @dx.op.unary.f32(i32 12, float %2608)  ; Cos(value)
  %2611 = fsub fast float -0.000000e+00, %2609
  %2612 = fadd fast float %2563, -5.000000e-01
  %2613 = fadd fast float %2564, -5.000000e-01
  %2614 = fmul fast float %2581, %2612
  %2615 = fmul fast float %2583, %2613
  %2616 = fadd fast float %2614, 5.000000e-01
  %2617 = fadd fast float %2615, 5.000000e-01
  %2618 = fmul fast float %2592, %2616
  %2619 = fmul fast float %2595, %2617
  %2620 = fmul fast float %2610, %2618
  %2621 = call float @dx.op.tertiary.f32(i32 46, float %2611, float %2619, float %2620)  ; FMad(a,b,c)
  %2622 = fmul fast float %2609, %2618
  %2623 = call float @dx.op.tertiary.f32(i32 46, float %2610, float %2619, float %2622)  ; FMad(a,b,c)
  %2624 = fadd fast float %2601, %2621
  %2625 = fadd fast float %2604, %2623
  %2626 = icmp ugt i32 %2575, 1
  %2627 = icmp ugt i32 %2573, 33554431
  %2628 = or i1 %2627, %2626
  br i1 %2628, label %2629, label %2654

; <label>:2629                                    ; preds = %2556
  %2630 = add i32 %61, 276
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = lshr i32 %2632, 16
  %2634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2633)  ; LegacyF16ToF32(value)
  %2635 = fmul fast float %2597, %2634
  %2636 = call float @dx.op.unary.f32(i32 22, float %2635)  ; Frc(value)
  %2637 = mul nuw nsw i32 %2575, %2576
  %2638 = uitofp i32 %2637 to float
  %2639 = fmul fast float %2636, %2638
  %2640 = call float @dx.op.unary.f32(i32 27, float %2639)  ; Round_ni(value)
  %2641 = fptoui float %2640 to i32
  %2642 = urem i32 %2641, %2575
  %2643 = udiv i32 %2641, %2576
  %2644 = call float @dx.op.unary.f32(i32 22, float %2624)  ; Frc(value)
  %2645 = call float @dx.op.unary.f32(i32 22, float %2625)  ; Frc(value)
  %2646 = uitofp i32 %2642 to float
  %2647 = uitofp i32 %2643 to float
  %2648 = fadd fast float %2644, %2646
  %2649 = fadd fast float %2645, %2647
  %2650 = uitofp i32 %2575 to float
  %2651 = uitofp i32 %2576 to float
  %2652 = fdiv fast float %2648, %2650
  %2653 = fdiv fast float %2649, %2651
  br label %2654

; <label>:2654                                    ; preds = %2629, %2556
  %2655 = phi float [ %2652, %2629 ], [ %2624, %2556 ]
  %2656 = phi float [ %2653, %2629 ], [ %2625, %2556 ]
  %2657 = and i32 %2550, 256
  %2658 = icmp eq i32 %2657, 0
  br i1 %2658, label %2705, label %2659

; <label>:2659                                    ; preds = %2654
  %2660 = add i32 %61, 436
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = add i32 %2662, 0
  %2664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2663, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2665 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2664, %dx.types.Handle %113, float %2655, float %2656, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2666 = extractvalue %dx.types.ResRet.f32 %2665, 0
  %2667 = add i32 %61, 148
  %2668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2667, i32 undef)  ; BufferLoad(srv,index,wot)
  %2669 = extractvalue %dx.types.ResRet.i32 %2668, 0
  %2670 = shl i32 %2669, 4
  %2671 = and i32 %2670, 32752
  %2672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2671)  ; LegacyF16ToF32(value)
  %2673 = lshr i32 %2669, 7
  %2674 = and i32 %2673, 32752
  %2675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2674)  ; LegacyF16ToF32(value)
  %2676 = fsub fast float 1.000000e+00, %506
  %2677 = call float @dx.op.binary.f32(i32 35, float %2676, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2678 = bitcast float %506 to i32
  %2679 = sitofp i32 %2678 to float
  %2680 = fadd fast float %2679, 0xC1CFBF8940000000
  %2681 = fmul fast float %2675, %2680
  %2682 = fadd fast float %2681, 0x41CFBF8940000000
  %2683 = fptosi float %2682 to i32
  %2684 = bitcast i32 %2683 to float
  %2685 = bitcast float %2677 to i32
  %2686 = sitofp i32 %2685 to float
  %2687 = fadd fast float %2686, 0xC1CFBF8940000000
  %2688 = fmul fast float %2687, %2675
  %2689 = fadd fast float %2688, 0x41CFBF8940000000
  %2690 = fptosi float %2689 to i32
  %2691 = bitcast i32 %2690 to float
  %2692 = fmul fast float %2684, %2672
  %2693 = fmul fast float %2691, %2672
  %2694 = fsub fast float %2677, %2692
  %2695 = fadd fast float %2693, %2677
  %2696 = call float @dx.op.unary.f32(i32 7, float %2694)  ; Saturate(value)
  %2697 = call float @dx.op.unary.f32(i32 7, float %2695)  ; Saturate(value)
  %2698 = fsub fast float %2666, %2696
  %2699 = fsub fast float %2697, %2696
  %2700 = bitcast float %2699 to i32
  %2701 = sub nsw i32 2129859010, %2700
  %2702 = bitcast i32 %2701 to float
  %2703 = fmul fast float %2702, %2698
  %2704 = call float @dx.op.unary.f32(i32 7, float %2703)  ; Saturate(value)
  br label %2705

; <label>:2705                                    ; preds = %2659, %2654
  %2706 = phi float [ %2704, %2659 ], [ %506, %2654 ]
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = and i32 %2708, 128
  %2710 = icmp eq i32 %2709, 0
  br i1 %2710, label %2727, label %2711

; <label>:2711                                    ; preds = %2705
  %2712 = add i32 %61, 420
  %2713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2714 = extractvalue %dx.types.ResRet.i32 %2713, 0
  %2715 = add i32 %2714, 0
  %2716 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2715, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2717 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2716, %dx.types.Handle %113, float %2655, float %2656, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2718 = extractvalue %dx.types.ResRet.f32 %2717, 0
  %2719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2720 = extractvalue %dx.types.ResRet.i32 %2719, 0
  %2721 = and i32 %2720, 524288
  %2722 = icmp ne i32 %2721, 0
  %2723 = fcmp fast ogt float %2718, 0x3FE0101020000000
  %2724 = select i1 %2723, float 1.000000e+00, float 0.000000e+00
  %2725 = select i1 %2722, float %2724, float %2718
  %2726 = fmul fast float %2725, %2706
  br label %2727

; <label>:2727                                    ; preds = %2711, %2705
  %2728 = phi float [ %2726, %2711 ], [ %2706, %2705 ]
  %2729 = fcmp fast ult float %2728, 0x3F70101020000000
  br i1 %2729, label %3272, label %2730

; <label>:2730                                    ; preds = %2727
  %2731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.i32 %2731, 0
  %2733 = and i32 %2732, 16
  %2734 = icmp eq i32 %2733, 0
  br i1 %2734, label %2933, label %2735

; <label>:2735                                    ; preds = %2730
  %2736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2737 = extractvalue %dx.types.ResRet.i32 %2736, 0
  %2738 = add i32 %61, 372
  %2739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2740 = extractvalue %dx.types.ResRet.i32 %2739, 0
  %2741 = add i32 %2740, 0
  %2742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2743 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2742, %dx.types.Handle %112, float %2655, float %2656, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2744 = extractvalue %dx.types.ResRet.f32 %2743, 0
  %2745 = extractvalue %dx.types.ResRet.f32 %2743, 1
  %2746 = extractvalue %dx.types.ResRet.f32 %2743, 2
  %2747 = extractvalue %dx.types.ResRet.f32 %2743, 3
  %2748 = and i32 %2737, 255
  %2749 = uitofp i32 %2748 to float
  %2750 = lshr i32 %2737, 8
  %2751 = and i32 %2750, 255
  %2752 = uitofp i32 %2751 to float
  %2753 = fmul fast float %2747, %2749
  %2754 = fadd fast float %2753, %2752
  %2755 = fmul fast float %2754, 0x3F70101000000000
  %2756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.i32 %2756, 0
  %2758 = and i32 %2757, 512
  %2759 = icmp eq i32 %2758, 0
  br i1 %2759, label %2768, label %2760

; <label>:2760                                    ; preds = %2735
  %2761 = add i32 %61, 452
  %2762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.i32 %2762, 0
  %2764 = add i32 %2763, 0
  %2765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2764, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2766 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2765, %dx.types.Handle %113, float %2655, float %2656, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2767 = extractvalue %dx.types.ResRet.f32 %2766, 0
  br label %2768

; <label>:2768                                    ; preds = %2760, %2735
  %2769 = phi float [ %2767, %2760 ], [ 1.000000e+00, %2735 ]
  %2770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2771 = extractvalue %dx.types.ResRet.i32 %2770, 0
  %2772 = and i32 %2771, 33554432
  %2773 = icmp eq i32 %2772, 0
  br i1 %2773, label %2880, label %2774

; <label>:2774                                    ; preds = %2768
  %2775 = add i32 %61, 272
  %2776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2777 = extractvalue %dx.types.ResRet.i32 %2776, 0
  %2778 = and i32 %2777, 65535
  %2779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2778)  ; LegacyF16ToF32(value)
  %2780 = lshr i32 %2777, 16
  %2781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2780)  ; LegacyF16ToF32(value)
  %2782 = add i32 %61, 276
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = and i32 %2784, 65535
  %2786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2785)  ; LegacyF16ToF32(value)
  %2787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %2788 = extractvalue %dx.types.ResRet.i32 %2787, 0
  %2789 = lshr i32 %2788, 24
  %2790 = uitofp i32 %2789 to float
  %2791 = fmul fast float %2790, 0x3F70101020000000
  %2792 = and i32 %2788, 255
  %2793 = uitofp i32 %2792 to float
  %2794 = fmul fast float %2793, 0x3F70101020000000
  %2795 = lshr i32 %2788, 8
  %2796 = and i32 %2795, 255
  %2797 = uitofp i32 %2796 to float
  %2798 = fmul fast float %2797, 0x3F70101020000000
  %2799 = lshr i32 %2788, 16
  %2800 = and i32 %2799, 255
  %2801 = uitofp i32 %2800 to float
  %2802 = fmul fast float %2801, 0x3F70101020000000
  %2803 = add i32 %61, 268
  %2804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2803, i32 undef)  ; BufferLoad(srv,index,wot)
  %2805 = extractvalue %dx.types.ResRet.i32 %2804, 0
  %2806 = lshr i32 %2805, 24
  %2807 = uitofp i32 %2806 to float
  %2808 = fmul fast float %2807, 0x3F70101020000000
  %2809 = and i32 %2805, 255
  %2810 = uitofp i32 %2809 to float
  %2811 = fmul fast float %2810, 0x3F70101020000000
  %2812 = lshr i32 %2805, 8
  %2813 = and i32 %2812, 255
  %2814 = uitofp i32 %2813 to float
  %2815 = fmul fast float %2814, 0x3F70101020000000
  %2816 = lshr i32 %2805, 16
  %2817 = and i32 %2816, 255
  %2818 = uitofp i32 %2817 to float
  %2819 = fmul fast float %2818, 0x3F70101020000000
  %2820 = bitcast float %2744 to i32
  %2821 = ashr i32 %2820, 1
  %2822 = sub nsw i32 1597463174, %2821
  %2823 = bitcast i32 %2822 to float
  %2824 = fmul fast float %2744, 5.000000e-01
  %2825 = fmul fast float %2823, %2823
  %2826 = fmul fast float %2825, %2824
  %2827 = fsub fast float 1.500000e+00, %2826
  %2828 = fmul fast float %2823, %2744
  %2829 = fmul fast float %2828, %2827
  %2830 = bitcast float %2745 to i32
  %2831 = ashr i32 %2830, 1
  %2832 = sub nsw i32 1597463174, %2831
  %2833 = bitcast i32 %2832 to float
  %2834 = fmul fast float %2745, 5.000000e-01
  %2835 = fmul fast float %2833, %2833
  %2836 = fmul fast float %2835, %2834
  %2837 = fsub fast float 1.500000e+00, %2836
  %2838 = fmul fast float %2833, %2745
  %2839 = fmul fast float %2838, %2837
  %2840 = bitcast float %2746 to i32
  %2841 = ashr i32 %2840, 1
  %2842 = sub nsw i32 1597463174, %2841
  %2843 = bitcast i32 %2842 to float
  %2844 = fmul fast float %2746, 5.000000e-01
  %2845 = fmul fast float %2843, %2843
  %2846 = fmul fast float %2845, %2844
  %2847 = fsub fast float 1.500000e+00, %2846
  %2848 = fmul fast float %2843, %2746
  %2849 = fmul fast float %2848, %2847
  %2850 = fsub fast float %2829, %2811
  %2851 = fsub fast float %2839, %2815
  %2852 = fsub fast float %2849, %2819
  %2853 = fmul fast float %2850, %2779
  %2854 = fmul fast float %2851, %2781
  %2855 = fmul fast float %2852, %2786
  %2856 = fadd fast float %2853, %2794
  %2857 = fadd fast float %2854, %2798
  %2858 = fadd fast float %2855, %2802
  %2859 = call float @dx.op.unary.f32(i32 7, float %2856)  ; Saturate(value)
  %2860 = call float @dx.op.unary.f32(i32 7, float %2857)  ; Saturate(value)
  %2861 = call float @dx.op.unary.f32(i32 7, float %2858)  ; Saturate(value)
  %2862 = fmul fast float %2859, %2859
  %2863 = fmul fast float %2860, %2860
  %2864 = fmul fast float %2861, %2861
  %2865 = fsub fast float %2862, %2744
  %2866 = fsub fast float %2863, %2745
  %2867 = fsub fast float %2864, %2746
  %2868 = fmul fast float %2865, %2769
  %2869 = fmul fast float %2866, %2769
  %2870 = fmul fast float %2867, %2769
  %2871 = fadd fast float %2868, %2744
  %2872 = fadd fast float %2869, %2745
  %2873 = fadd fast float %2870, %2746
  %2874 = fadd fast float %2791, %2755
  %2875 = fsub fast float %2874, %2808
  %2876 = call float @dx.op.unary.f32(i32 7, float %2875)  ; Saturate(value)
  %2877 = fsub fast float %2876, %2755
  %2878 = fmul fast float %2877, %2769
  %2879 = fadd fast float %2878, %2755
  br label %2933

; <label>:2880                                    ; preds = %2768
  %2881 = and i32 %2771, 134217728
  %2882 = icmp eq i32 %2881, 0
  br i1 %2882, label %2917, label %2883

; <label>:2883                                    ; preds = %2880
  %2884 = call float @dx.op.unary.f32(i32 24, float %424)  ; Sqrt(value)
  %2885 = call float @dx.op.unary.f32(i32 24, float %428)  ; Sqrt(value)
  %2886 = call float @dx.op.unary.f32(i32 24, float %432)  ; Sqrt(value)
  %2887 = fadd fast float %2884, -5.000000e-01
  %2888 = fadd fast float %2885, -5.000000e-01
  %2889 = fadd fast float %2886, -5.000000e-01
  %2890 = fmul fast float %2887, %2769
  %2891 = fmul fast float %2888, %2769
  %2892 = fmul fast float %2889, %2769
  %2893 = fadd fast float %2890, 5.000000e-01
  %2894 = fadd fast float %2891, 5.000000e-01
  %2895 = fadd fast float %2892, 5.000000e-01
  %2896 = call float @dx.op.unary.f32(i32 24, float %2744)  ; Sqrt(value)
  %2897 = call float @dx.op.unary.f32(i32 24, float %2745)  ; Sqrt(value)
  %2898 = call float @dx.op.unary.f32(i32 24, float %2746)  ; Sqrt(value)
  %2899 = fmul fast float %2893, 2.000000e+00
  %2900 = fsub fast float 1.000000e+00, %2899
  %2901 = fmul fast float %2900, %2896
  %2902 = fadd fast float %2901, %2899
  %2903 = fmul fast float %2902, %2896
  %2904 = fmul fast float %2894, 2.000000e+00
  %2905 = fsub fast float 1.000000e+00, %2904
  %2906 = fmul fast float %2905, %2897
  %2907 = fadd fast float %2906, %2904
  %2908 = fmul fast float %2907, %2897
  %2909 = fmul fast float %2895, 2.000000e+00
  %2910 = fsub fast float 1.000000e+00, %2909
  %2911 = fmul fast float %2910, %2898
  %2912 = fadd fast float %2911, %2909
  %2913 = fmul fast float %2912, %2898
  %2914 = fmul fast float %2903, %2903
  %2915 = fmul fast float %2908, %2908
  %2916 = fmul fast float %2913, %2913
  br label %2933

; <label>:2917                                    ; preds = %2880
  %2918 = fmul fast float %424, %424
  %2919 = fmul fast float %428, %428
  %2920 = fmul fast float %432, %432
  %2921 = fadd fast float %2918, -1.000000e+00
  %2922 = fadd fast float %2919, -1.000000e+00
  %2923 = fadd fast float %2920, -1.000000e+00
  %2924 = fmul fast float %2769, %2921
  %2925 = fmul fast float %2769, %2922
  %2926 = fmul fast float %2769, %2923
  %2927 = fadd fast float %2924, 1.000000e+00
  %2928 = fadd fast float %2925, 1.000000e+00
  %2929 = fadd fast float %2926, 1.000000e+00
  %2930 = fmul fast float %2927, %2744
  %2931 = fmul fast float %2928, %2745
  %2932 = fmul fast float %2929, %2746
  br label %2933

; <label>:2933                                    ; preds = %2917, %2883, %2774, %2730
  %2934 = phi float [ %2879, %2774 ], [ %2755, %2883 ], [ %2755, %2917 ], [ 0x3FA23C0BE0000000, %2730 ]
  %2935 = phi float [ %2871, %2774 ], [ %2914, %2883 ], [ %2930, %2917 ], [ 1.000000e+00, %2730 ]
  %2936 = phi float [ %2872, %2774 ], [ %2915, %2883 ], [ %2931, %2917 ], [ 1.000000e+00, %2730 ]
  %2937 = phi float [ %2873, %2774 ], [ %2916, %2883 ], [ %2932, %2917 ], [ 1.000000e+00, %2730 ]
  %2938 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2939 = extractvalue %dx.types.CBufRet.i32 %2938, 1
  %2940 = and i32 %2939, 1
  %2941 = icmp ne i32 %2940, 0
  %2942 = add i32 %61, 356
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2942, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = and i32 %2944, 32
  %2946 = icmp ne i32 %2945, 0
  %2947 = and i1 %2941, %2946
  %2948 = select i1 %2947, float 1.000000e+00, float %2935
  %2949 = select i1 %2947, float 0x3FD3333340000000, float %2936
  %2950 = select i1 %2947, float 0x3FD3333340000000, float %2937
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = and i32 %2952, 32
  %2954 = icmp eq i32 %2953, 0
  br i1 %2954, label %3027, label %2955

; <label>:2955                                    ; preds = %2933
  %2956 = add i32 %61, 140
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = add i32 %61, 388
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = add i32 %2961, 0
  %2963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2964 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2963, %dx.types.Handle %112, float %2655, float %2656, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2965 = extractvalue %dx.types.ResRet.f32 %2964, 0
  %2966 = extractvalue %dx.types.ResRet.f32 %2964, 1
  %2967 = extractvalue %dx.types.ResRet.f32 %2964, 2
  %2968 = extractvalue %dx.types.ResRet.f32 %2964, 3
  %2969 = and i32 %2958, 255
  %2970 = uitofp i32 %2969 to float
  %2971 = lshr i32 %2958, 8
  %2972 = and i32 %2971, 255
  %2973 = uitofp i32 %2972 to float
  %2974 = lshr i32 %2958, 16
  %2975 = and i32 %2974, 255
  %2976 = uitofp i32 %2975 to float
  %2977 = fmul fast float %2976, 0x3F70101000000000
  %2978 = fmul fast float %2965, %2970
  %2979 = fadd fast float %2978, %2973
  %2980 = fmul fast float %2979, 0x3F70101000000000
  %2981 = fadd fast float %2966, -5.000000e-01
  %2982 = fadd fast float %2968, -5.000000e-01
  %2983 = fmul fast float %2981, %2977
  %2984 = fmul fast float %2982, %2977
  %2985 = fadd fast float %2983, 5.000000e-01
  %2986 = fadd fast float %2984, 5.000000e-01
  %2987 = fmul fast float %2985, 2.000000e+00
  %2988 = fadd fast float %2987, -1.000000e+00
  %2989 = fmul fast float %2986, 2.000000e+00
  %2990 = fadd fast float %2989, -1.000000e+00
  %2991 = fadd fast float %2988, %2990
  %2992 = fmul fast float %2991, 5.000000e-01
  %2993 = fsub fast float %2988, %2990
  %2994 = fmul fast float %2993, 5.000000e-01
  %2995 = call float @dx.op.unary.f32(i32 6, float %2992)  ; FAbs(value)
  %2996 = fsub fast float 1.000000e+00, %2995
  %2997 = call float @dx.op.unary.f32(i32 6, float %2994)  ; FAbs(value)
  %2998 = fsub fast float %2996, %2997
  %2999 = call float @dx.op.dot3.f32(i32 55, float %2992, float %2994, float %2998, float %2992, float %2994, float %2998)  ; Dot3(ax,ay,az,bx,by,bz)
  %3000 = call float @dx.op.unary.f32(i32 25, float %2999)  ; Rsqrt(value)
  %3001 = fmul fast float %2992, %3000
  %3002 = fmul fast float %2994, %3000
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = and i32 %3004, 67108864
  %3006 = icmp eq i32 %3005, 0
  br i1 %3006, label %3023, label %3007

; <label>:3007                                    ; preds = %2955
  %3008 = add i32 %61, 328
  %3009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3008, i32 undef)  ; BufferLoad(srv,index,wot)
  %3010 = extractvalue %dx.types.ResRet.i32 %3009, 0
  %3011 = and i32 %3010, 65535
  %3012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3011)  ; LegacyF16ToF32(value)
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = and i32 %3014, 65535
  %3016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3015)  ; LegacyF16ToF32(value)
  %3017 = lshr i32 %3010, 16
  %3018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3017)  ; LegacyF16ToF32(value)
  %3019 = fsub fast float %2980, %3018
  %3020 = fmul fast float %3019, %3012
  %3021 = fadd fast float %3020, %3016
  %3022 = call float @dx.op.unary.f32(i32 7, float %3021)  ; Saturate(value)
  br label %3023

; <label>:3023                                    ; preds = %3007, %2955
  %3024 = phi float [ %3022, %3007 ], [ %2980, %2955 ]
  %3025 = call float @dx.op.dot2.f32(i32 54, float %3001, float %3002, float %2559, float %2560)  ; Dot2(ax,ay,bx,by)
  %3026 = call float @dx.op.dot2.f32(i32 54, float %3001, float %3002, float %2561, float %2562)  ; Dot2(ax,ay,bx,by)
  br label %3027

; <label>:3027                                    ; preds = %3023, %2933
  %3028 = phi float [ %3024, %3023 ], [ 0x3FD6666660000000, %2933 ]
  %3029 = phi float [ %3025, %3023 ], [ 0.000000e+00, %2933 ]
  %3030 = phi float [ %3026, %3023 ], [ 0.000000e+00, %2933 ]
  %3031 = phi float [ %2967, %3023 ], [ 1.000000e+00, %2933 ]
  %3032 = add i32 %61, 208
  %3033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3032, i32 undef)  ; BufferLoad(srv,index,wot)
  %3034 = extractvalue %dx.types.ResRet.i32 %3033, 0
  %3035 = lshr i32 %3034, 22
  %3036 = shl nuw nsw i32 %3035, 5
  %3037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3036)  ; LegacyF16ToF32(value)
  %3038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %3039 = extractvalue %dx.types.ResRet.i32 %3038, 0
  %3040 = and i32 %3039, 64
  %3041 = icmp eq i32 %3040, 0
  br i1 %3041, label %3075, label %3042

; <label>:3042                                    ; preds = %3027
  %3043 = add i32 %61, 404
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3043, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = add i32 %3045, 0
  %3047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %3049 = extractvalue %dx.types.ResRet.i32 %3048, 0
  %3050 = and i32 %3049, 131072
  %3051 = icmp eq i32 %3050, 0
  %3052 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3047, %dx.types.Handle %112, float %2655, float %2656, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3053 = extractvalue %dx.types.ResRet.f32 %3052, 0
  %3054 = extractvalue %dx.types.ResRet.f32 %3052, 1
  %3055 = extractvalue %dx.types.ResRet.f32 %3052, 2
  %3056 = fmul fast float %3053, %412
  %3057 = fmul fast float %3054, %415
  %3058 = fmul fast float %3055, %418
  br i1 %3051, label %3065, label %3059

; <label>:3059                                    ; preds = %3042
  %3060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3061 = extractvalue %dx.types.CBufRet.f32 %3060, 0
  %3062 = fmul fast float %3061, %3056
  %3063 = fmul fast float %3061, %3057
  %3064 = fmul fast float %3061, %3058
  br label %3065

; <label>:3065                                    ; preds = %3059, %3042
  %3066 = phi float [ %3062, %3059 ], [ %3056, %3042 ]
  %3067 = phi float [ %3063, %3059 ], [ %3057, %3042 ]
  %3068 = phi float [ %3064, %3059 ], [ %3058, %3042 ]
  %3069 = fmul fast float %3066, %3037
  %3070 = select i1 %269, float %3069, float %3066
  %3071 = call float @dx.op.dot3.f32(i32 55, float %3070, float %3067, float %3068, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3072 = select i1 %269, float 0.000000e+00, float %3066
  %3073 = select i1 %269, float %3071, float %3067
  %3074 = select i1 %269, float 0.000000e+00, float %3068
  br label %3075

; <label>:3075                                    ; preds = %3065, %3027
  %3076 = phi float [ %3072, %3065 ], [ 0.000000e+00, %3027 ]
  %3077 = phi float [ %3073, %3065 ], [ 0.000000e+00, %3027 ]
  %3078 = phi float [ %3074, %3065 ], [ 0.000000e+00, %3027 ]
  %3079 = add i32 %61, 144
  %3080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3079, i32 undef)  ; BufferLoad(srv,index,wot)
  %3081 = extractvalue %dx.types.ResRet.i32 %3080, 0
  %3082 = and i32 %3081, 255
  %3083 = uitofp i32 %3082 to float
  %3084 = lshr i32 %3081, 8
  %3085 = and i32 %3084, 255
  %3086 = uitofp i32 %3085 to float
  %3087 = call float @dx.op.dot3.f32(i32 55, float %2948, float %2949, float %2950, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3088 = fmul fast float %3086, %3087
  %3089 = fadd fast float %3088, %3083
  %3090 = fmul fast float %3089, 0x3F70101020000000
  %3091 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  br i1 %2547, label %3092, label %3100

; <label>:3092                                    ; preds = %3075
  %3093 = fsub fast float 1.000000e+00, %2728
  %3094 = fmul fast float %3093, %2536
  %3095 = fmul fast float %3093, %2537
  %3096 = fmul fast float %3093, %2538
  %3097 = fmul fast float %3093, %2539
  %3098 = fmul fast float %3093, %2540
  %3099 = fmul fast float %3093, %2541
  br label %3100

; <label>:3100                                    ; preds = %3092, %3075
  %3101 = phi float [ %3094, %3092 ], [ %2536, %3075 ]
  %3102 = phi float [ %3095, %3092 ], [ %2537, %3075 ]
  %3103 = phi float [ %3096, %3092 ], [ %2538, %3075 ]
  %3104 = phi float [ %3097, %3092 ], [ %2539, %3075 ]
  %3105 = phi float [ %3098, %3092 ], [ %2540, %3075 ]
  %3106 = phi float [ %3099, %3092 ], [ %2541, %3075 ]
  %3107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.i32 %3107, 0
  %3109 = and i32 %3108, 3
  %3110 = icmp eq i32 %3109, 3
  br i1 %3110, label %3189, label %3111

; <label>:3111                                    ; preds = %3100
  %3112 = and i32 %3108, 16
  %3113 = icmp ne i32 %3112, 0
  %3114 = select i1 %3113, float %2728, float 0.000000e+00
  %3115 = icmp eq i32 %3109, 0
  br i1 %3115, label %3116, label %3144

; <label>:3116                                    ; preds = %3111
  %3117 = and i32 %3108, 64
  %3118 = icmp ne i32 %3117, 0
  %3119 = select i1 %3118, float %2728, float 0.000000e+00
  %3120 = fsub fast float %2948, %3101
  %3121 = fsub fast float %2949, %3102
  %3122 = fsub fast float %2950, %3103
  %3123 = fmul fast float %3114, %3120
  %3124 = fmul fast float %3114, %3121
  %3125 = fmul fast float %3114, %3122
  %3126 = fadd fast float %3123, %3101
  %3127 = fadd fast float %3124, %3102
  %3128 = fadd fast float %3125, %3103
  %3129 = fsub fast float %2934, %2542
  %3130 = fmul fast float %3114, %3129
  %3131 = fadd fast float %3130, %2542
  %3132 = fsub fast float %3076, %3104
  %3133 = fsub fast float %3077, %3105
  %3134 = fsub fast float %3078, %3106
  %3135 = fmul fast float %3119, %3132
  %3136 = fmul fast float %3119, %3133
  %3137 = fmul fast float %3119, %3134
  %3138 = fadd fast float %3135, %3104
  %3139 = fadd fast float %3136, %3105
  %3140 = fadd fast float %3137, %3106
  %3141 = fsub fast float %3091, %2545
  %3142 = fmul fast float %3114, %3141
  %3143 = fadd fast float %3142, %2545
  br label %3189

; <label>:3144                                    ; preds = %3111
  %3145 = icmp eq i32 %3109, 1
  br i1 %3145, label %3146, label %3159

; <label>:3146                                    ; preds = %3144
  %3147 = fadd fast float %2948, -1.000000e+00
  %3148 = fadd fast float %2949, -1.000000e+00
  %3149 = fadd fast float %2950, -1.000000e+00
  %3150 = fmul fast float %3114, %3147
  %3151 = fmul fast float %3114, %3148
  %3152 = fmul fast float %3114, %3149
  %3153 = fadd fast float %3150, 1.000000e+00
  %3154 = fadd fast float %3151, 1.000000e+00
  %3155 = fadd fast float %3152, 1.000000e+00
  %3156 = fmul fast float %3153, %3101
  %3157 = fmul fast float %3154, %3102
  %3158 = fmul fast float %3155, %3103
  br label %3189

; <label>:3159                                    ; preds = %3144
  %3160 = icmp eq i32 %3109, 2
  br i1 %3160, label %3161, label %3189

; <label>:3161                                    ; preds = %3159
  %3162 = call float @dx.op.unary.f32(i32 24, float %2948)  ; Sqrt(value)
  %3163 = call float @dx.op.unary.f32(i32 24, float %2949)  ; Sqrt(value)
  %3164 = call float @dx.op.unary.f32(i32 24, float %2950)  ; Sqrt(value)
  %3165 = fadd fast float %3162, -5.000000e-01
  %3166 = fadd fast float %3163, -5.000000e-01
  %3167 = fadd fast float %3164, -5.000000e-01
  %3168 = fmul fast float %3165, %3114
  %3169 = fmul fast float %3166, %3114
  %3170 = fmul fast float %3167, %3114
  %3171 = fadd fast float %3168, 5.000000e-01
  %3172 = fadd fast float %3169, 5.000000e-01
  %3173 = fadd fast float %3170, 5.000000e-01
  %3174 = fmul fast float %3171, 2.000000e+00
  %3175 = fsub fast float 1.000000e+00, %3174
  %3176 = fmul fast float %3175, %3101
  %3177 = fadd fast float %3176, %3174
  %3178 = fmul fast float %3177, %3101
  %3179 = fmul fast float %3172, 2.000000e+00
  %3180 = fsub fast float 1.000000e+00, %3179
  %3181 = fmul fast float %3180, %3102
  %3182 = fadd fast float %3181, %3179
  %3183 = fmul fast float %3182, %3102
  %3184 = fmul fast float %3173, 2.000000e+00
  %3185 = fsub fast float 1.000000e+00, %3184
  %3186 = fmul fast float %3185, %3103
  %3187 = fadd fast float %3186, %3184
  %3188 = fmul fast float %3187, %3103
  br label %3189

; <label>:3189                                    ; preds = %3161, %3159, %3146, %3116, %3100
  %3190 = phi float [ %3101, %3100 ], [ %3178, %3161 ], [ %3101, %3159 ], [ %3156, %3146 ], [ %3126, %3116 ]
  %3191 = phi float [ %3102, %3100 ], [ %3183, %3161 ], [ %3102, %3159 ], [ %3157, %3146 ], [ %3127, %3116 ]
  %3192 = phi float [ %3103, %3100 ], [ %3188, %3161 ], [ %3103, %3159 ], [ %3158, %3146 ], [ %3128, %3116 ]
  %3193 = phi float [ %3104, %3100 ], [ %3104, %3161 ], [ %3104, %3159 ], [ %3104, %3146 ], [ %3138, %3116 ]
  %3194 = phi float [ %3105, %3100 ], [ %3105, %3161 ], [ %3105, %3159 ], [ %3105, %3146 ], [ %3139, %3116 ]
  %3195 = phi float [ %3106, %3100 ], [ %3106, %3161 ], [ %3106, %3159 ], [ %3106, %3146 ], [ %3140, %3116 ]
  %3196 = phi float [ %2542, %3100 ], [ %2542, %3161 ], [ %2542, %3159 ], [ %2542, %3146 ], [ %3131, %3116 ]
  %3197 = phi float [ %2545, %3100 ], [ %2545, %3161 ], [ %2545, %3159 ], [ %2545, %3146 ], [ %3143, %3116 ]
  %3198 = and i32 %3108, 12
  %3199 = icmp eq i32 %3198, 12
  br i1 %3199, label %3272, label %3200

; <label>:3200                                    ; preds = %3189
  %3201 = and i32 %3108, 2097184
  %3202 = icmp eq i32 %3201, 2097184
  %3203 = select i1 %3202, float %2728, float 0.000000e+00
  %3204 = and i32 %3108, 4194336
  %3205 = icmp eq i32 %3204, 4194336
  %3206 = select i1 %3205, float %2728, float 0.000000e+00
  %3207 = and i32 %3108, 8388640
  %3208 = icmp eq i32 %3207, 8388640
  %3209 = select i1 %3208, float %2728, float 0.000000e+00
  %3210 = icmp eq i32 %3198, 0
  br i1 %3210, label %3211, label %3224

; <label>:3211                                    ; preds = %3200
  %3212 = fsub fast float %3029, %2534
  %3213 = fsub fast float %3030, %2535
  %3214 = fmul fast float %3203, %3212
  %3215 = fmul fast float %3203, %3213
  %3216 = fadd fast float %3214, %2534
  %3217 = fadd fast float %3215, %2535
  %3218 = fsub fast float %3031, %2544
  %3219 = fmul fast float %3206, %3218
  %3220 = fadd fast float %3219, %2544
  %3221 = fsub fast float %3028, %2543
  %3222 = fmul fast float %3209, %3221
  %3223 = fadd fast float %3222, %2543
  br label %3272

; <label>:3224                                    ; preds = %3200
  %3225 = icmp eq i32 %3198, 4
  br i1 %3225, label %3226, label %3258

; <label>:3226                                    ; preds = %3224
  %3227 = fmul fast float %3203, %3029
  %3228 = fmul fast float %3203, %3030
  %3229 = fadd fast float %3227, %2534
  %3230 = fadd fast float %3228, %2535
  %3231 = call float @dx.op.binary.f32(i32 36, float %2544, float %3031)  ; FMin(a,b)
  %3232 = fsub fast float %3231, %2544
  %3233 = fmul fast float %3232, %3206
  %3234 = fadd fast float %3233, %2544
  %3235 = fadd fast float %3028, %2543
  %3236 = fmul fast float %3235, 0x3FF337FAE0000000
  %3237 = fmul fast float %2543, %2543
  %3238 = fmul fast float %3028, %3028
  %3239 = fadd fast float %3238, %3237
  %3240 = fmul fast float %3239, 0x3FE5152B00000000
  %3241 = fmul fast float %2543, 0xBFCC1F85E0000000
  %3242 = fmul fast float %3241, %3028
  %3243 = fadd fast float %3242, 0xBFE1363700000000
  %3244 = fadd fast float %3243, %3236
  %3245 = fsub fast float %3244, %3240
  %3246 = fmul fast float %3235, 0x3FBA6F0D00000000
  %3247 = fmul fast float %3239, 0x3FD0432880000000
  %3248 = fmul fast float %2543, 0xBFEF110800000000
  %3249 = fmul fast float %3248, %3028
  %3250 = fadd fast float %3249, 1.000000e+00
  %3251 = fsub fast float %3250, %3246
  %3252 = fadd fast float %3251, %3247
  %3253 = fdiv fast float %3245, %3252
  %3254 = call float @dx.op.unary.f32(i32 7, float %3253)  ; Saturate(value)
  %3255 = fsub fast float %3254, %2543
  %3256 = fmul fast float %3255, %3209
  %3257 = fadd fast float %3256, %2543
  br label %3272

; <label>:3258                                    ; preds = %3224
  %3259 = icmp eq i32 %3198, 8
  br i1 %3259, label %3260, label %3272

; <label>:3260                                    ; preds = %3258
  %3261 = fmul fast float %3203, %3029
  %3262 = fmul fast float %3203, %3030
  %3263 = fadd fast float %3261, %2534
  %3264 = fadd fast float %3262, %2535
  %3265 = call float @dx.op.binary.f32(i32 36, float %2544, float %3031)  ; FMin(a,b)
  %3266 = fsub fast float %3265, %2544
  %3267 = fmul fast float %3266, %3206
  %3268 = fadd fast float %3267, %2544
  %3269 = fsub fast float %3028, %2543
  %3270 = fmul fast float %3209, %3269
  %3271 = fadd fast float %3270, %2543
  br label %3272

; <label>:3272                                    ; preds = %3260, %3258, %3226, %3211, %3189, %2727, %2546, %2533
  %3273 = phi float [ %2534, %3189 ], [ %2534, %2727 ], [ %2534, %2533 ], [ %2534, %2546 ], [ %3216, %3211 ], [ %3229, %3226 ], [ %2534, %3258 ], [ %3263, %3260 ]
  %3274 = phi float [ %2535, %3189 ], [ %2535, %2727 ], [ %2535, %2533 ], [ %2535, %2546 ], [ %3217, %3211 ], [ %3230, %3226 ], [ %2535, %3258 ], [ %3264, %3260 ]
  %3275 = phi float [ %3190, %3189 ], [ %2536, %2727 ], [ %2536, %2533 ], [ %2536, %2546 ], [ %3190, %3211 ], [ %3190, %3226 ], [ %3190, %3258 ], [ %3190, %3260 ]
  %3276 = phi float [ %3191, %3189 ], [ %2537, %2727 ], [ %2537, %2533 ], [ %2537, %2546 ], [ %3191, %3211 ], [ %3191, %3226 ], [ %3191, %3258 ], [ %3191, %3260 ]
  %3277 = phi float [ %3192, %3189 ], [ %2538, %2727 ], [ %2538, %2533 ], [ %2538, %2546 ], [ %3192, %3211 ], [ %3192, %3226 ], [ %3192, %3258 ], [ %3192, %3260 ]
  %3278 = phi float [ %3193, %3189 ], [ %2539, %2727 ], [ %2539, %2533 ], [ %2539, %2546 ], [ %3193, %3211 ], [ %3193, %3226 ], [ %3193, %3258 ], [ %3193, %3260 ]
  %3279 = phi float [ %3194, %3189 ], [ %2540, %2727 ], [ %2540, %2533 ], [ %2540, %2546 ], [ %3194, %3211 ], [ %3194, %3226 ], [ %3194, %3258 ], [ %3194, %3260 ]
  %3280 = phi float [ %3195, %3189 ], [ %2541, %2727 ], [ %2541, %2533 ], [ %2541, %2546 ], [ %3195, %3211 ], [ %3195, %3226 ], [ %3195, %3258 ], [ %3195, %3260 ]
  %3281 = phi float [ %3196, %3189 ], [ %2542, %2727 ], [ %2542, %2533 ], [ %2542, %2546 ], [ %3196, %3211 ], [ %3196, %3226 ], [ %3196, %3258 ], [ %3196, %3260 ]
  %3282 = phi float [ %2543, %3189 ], [ %2543, %2727 ], [ %2543, %2533 ], [ %2543, %2546 ], [ %3223, %3211 ], [ %3257, %3226 ], [ %2543, %3258 ], [ %3271, %3260 ]
  %3283 = phi float [ %2544, %3189 ], [ %2544, %2727 ], [ %2544, %2533 ], [ %2544, %2546 ], [ %3220, %3211 ], [ %3234, %3226 ], [ %2544, %3258 ], [ %3268, %3260 ]
  %3284 = phi float [ %3197, %3189 ], [ %2545, %2727 ], [ %2545, %2533 ], [ %2545, %2546 ], [ %3197, %3211 ], [ %3197, %3226 ], [ %3197, %3258 ], [ %3197, %3260 ]
  %3285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3286 = extractvalue %dx.types.CBufRet.f32 %3285, 0
  %3287 = and i32 %209, 65535
  %3288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3287)  ; LegacyF16ToF32(value)
  %3289 = lshr i32 %209, 16
  %3290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3289)  ; LegacyF16ToF32(value)
  %3291 = and i32 %210, 65535
  %3292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3291)  ; LegacyF16ToF32(value)
  %3293 = fmul fast float %3288, %3275
  %3294 = fmul fast float %3290, %3276
  %3295 = fmul fast float %3292, %3277
  %3296 = shl i32 %211, 4
  %3297 = and i32 %3296, 32752
  %3298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3297)  ; LegacyF16ToF32(value)
  %3299 = lshr i32 %211, 7
  %3300 = and i32 %3299, 32752
  %3301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3300)  ; LegacyF16ToF32(value)
  %3302 = lshr i32 %211, 22
  %3303 = shl nuw nsw i32 %3302, 5
  %3304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3303)  ; LegacyF16ToF32(value)
  %3305 = and i32 %212, 65535
  %3306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3305)  ; LegacyF16ToF32(value)
  %3307 = fmul fast float %3298, %3278
  %3308 = fmul fast float %3307, %3306
  %3309 = fmul fast float %3301, %3279
  %3310 = fmul fast float %3309, %3306
  %3311 = fmul fast float %3304, %3280
  %3312 = fmul fast float %3311, %3306
  %3313 = call float @dx.op.dot2.f32(i32 54, float %3273, float %3274, float %3273, float %3274)  ; Dot2(ax,ay,bx,by)
  %3314 = fmul fast float %3313, 0x3FE3333340000000
  %3315 = fsub fast float 1.000000e+00, %3314
  %3316 = call float @dx.op.dot3.f32(i32 55, float %3273, float %3274, float %3315, float %3273, float %3274, float %3315)  ; Dot3(ax,ay,az,bx,by,bz)
  %3317 = call float @dx.op.unary.f32(i32 25, float %3316)  ; Rsqrt(value)
  %3318 = fmul fast float %3317, %3273
  %3319 = fmul fast float %3317, %3274
  %3320 = fmul fast float %3315, %3317
  %3321 = fmul fast float %3320, %123
  %3322 = fmul fast float %3320, %124
  %3323 = fmul fast float %3320, %125
  %3324 = fmul fast float %3318, %87
  %3325 = fmul fast float %3318, %88
  %3326 = fmul fast float %3318, %89
  %3327 = fadd fast float %3321, %3324
  %3328 = fadd fast float %3322, %3325
  %3329 = fadd fast float %3323, %3326
  %3330 = fmul fast float %135, %3319
  %3331 = fmul fast float %136, %3319
  %3332 = fmul fast float %137, %3319
  %3333 = fadd fast float %3327, %3330
  %3334 = fadd fast float %3328, %3331
  %3335 = fadd fast float %3329, %3332
  %3336 = call float @dx.op.dot3.f32(i32 55, float %3333, float %3334, float %3335, float %3333, float %3334, float %3335)  ; Dot3(ax,ay,az,bx,by,bz)
  %3337 = call float @dx.op.unary.f32(i32 25, float %3336)  ; Rsqrt(value)
  %3338 = fmul fast float %3333, %3337
  %3339 = fmul fast float %3334, %3337
  %3340 = fmul fast float %3335, %3337
  %3341 = icmp eq i32 %63, 65535
  br i1 %3341, label %3860, label %3342

; <label>:3342                                    ; preds = %3272
  %3343 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3344 = call float @dx.op.unary.f32(i32 83, float %65)  ; DerivCoarseX(value)
  %3345 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %3346 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3347 = call float @dx.op.unary.f32(i32 84, float %65)  ; DerivCoarseY(value)
  %3348 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %3349 = fadd fast float %3343, %64
  %3350 = fadd fast float %3344, %65
  %3351 = fadd fast float %3345, %66
  %3352 = fadd fast float %3346, %64
  %3353 = fadd fast float %3347, %65
  %3354 = fadd fast float %3348, %66
  %3355 = mul i32 %63, 48
  %3356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3355, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.f32 %3356, 0
  %3358 = extractvalue %dx.types.ResRet.f32 %3356, 1
  %3359 = extractvalue %dx.types.ResRet.f32 %3356, 2
  %3360 = add i32 %3355, 16
  %3361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3360, i32 undef)  ; BufferLoad(srv,index,wot)
  %3362 = extractvalue %dx.types.ResRet.f32 %3361, 0
  %3363 = extractvalue %dx.types.ResRet.f32 %3361, 1
  %3364 = extractvalue %dx.types.ResRet.f32 %3361, 2
  %3365 = add i32 %3355, 32
  %3366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.f32 %3366, 0
  %3368 = extractvalue %dx.types.ResRet.f32 %3366, 1
  %3369 = extractvalue %dx.types.ResRet.f32 %3366, 2
  %3370 = extractvalue %dx.types.ResRet.f32 %3366, 3
  %3371 = bitcast float %3370 to i32
  %3372 = fmul fast float %3357, %64
  %3373 = fmul fast float %3358, %65
  %3374 = fmul fast float %3359, %66
  %3375 = fsub fast float %3372, %3362
  %3376 = fsub fast float %3373, %3363
  %3377 = fsub fast float %3374, %3364
  %3378 = call float @dx.op.unary.f32(i32 7, float %3375)  ; Saturate(value)
  %3379 = call float @dx.op.unary.f32(i32 7, float %3376)  ; Saturate(value)
  %3380 = call float @dx.op.unary.f32(i32 7, float %3377)  ; Saturate(value)
  %3381 = fmul fast float %3378, %3367
  %3382 = fmul fast float %3379, %3368
  %3383 = fmul fast float %3380, %3369
  %3384 = fadd fast float %3367, -1.000000e+00
  %3385 = fadd fast float %3368, -1.000000e+00
  %3386 = fadd fast float %3369, -1.000000e+00
  %3387 = call float @dx.op.unary.f32(i32 27, float %3381)  ; Round_ni(value)
  %3388 = call float @dx.op.unary.f32(i32 27, float %3382)  ; Round_ni(value)
  %3389 = call float @dx.op.unary.f32(i32 27, float %3383)  ; Round_ni(value)
  %3390 = call float @dx.op.binary.f32(i32 36, float %3387, float %3384)  ; FMin(a,b)
  %3391 = call float @dx.op.binary.f32(i32 36, float %3388, float %3385)  ; FMin(a,b)
  %3392 = call float @dx.op.binary.f32(i32 36, float %3389, float %3386)  ; FMin(a,b)
  %3393 = fmul fast float %3392, %3368
  %3394 = fadd fast float %3393, %3391
  %3395 = fmul fast float %3394, %3367
  %3396 = fadd fast float %3395, %3390
  %3397 = fptosi float %3396 to i32
  %3398 = add nsw i32 %3397, %3371
  %3399 = shl nsw i32 %3398, 2
  %3400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.i32 %3400, 0
  %3402 = lshr i32 %3401, 16
  %3403 = icmp eq i32 %3402, 0
  br i1 %3403, label %3828, label %3404

; <label>:3404                                    ; preds = %3342
  br label %3405

; <label>:3405                                    ; preds = %3527, %3404
  %3406 = phi i32 [ %3429, %3527 ], [ %3402, %3404 ]
  %3407 = phi float [ %3528, %3527 ], [ 0.000000e+00, %3404 ]
  %3408 = phi float [ %3529, %3527 ], [ %1064, %3404 ]
  %3409 = phi float [ %3530, %3527 ], [ %3286, %3404 ]
  %3410 = phi float [ %3531, %3527 ], [ %3284, %3404 ]
  %3411 = phi float [ %3532, %3527 ], [ 0.000000e+00, %3404 ]
  %3412 = phi float [ %3533, %3527 ], [ 0.000000e+00, %3404 ]
  %3413 = phi float [ %3534, %3527 ], [ %3308, %3404 ]
  %3414 = phi float [ %3535, %3527 ], [ %3310, %3404 ]
  %3415 = phi float [ %3536, %3527 ], [ %3312, %3404 ]
  %3416 = phi float [ %3537, %3527 ], [ %3338, %3404 ]
  %3417 = phi float [ %3538, %3527 ], [ %3339, %3404 ]
  %3418 = phi float [ %3539, %3527 ], [ %3340, %3404 ]
  %3419 = phi float [ %3540, %3527 ], [ %3283, %3404 ]
  %3420 = phi float [ %3541, %3527 ], [ %3282, %3404 ]
  %3421 = phi float [ %3542, %3527 ], [ 0.000000e+00, %3404 ]
  %3422 = phi float [ %3543, %3527 ], [ %3281, %3404 ]
  %3423 = phi float [ %3544, %3527 ], [ %3293, %3404 ]
  %3424 = phi float [ %3545, %3527 ], [ %3294, %3404 ]
  %3425 = phi float [ %3546, %3527 ], [ %3295, %3404 ]
  %3426 = shl nuw nsw i32 %3406, 2
  %3427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3426, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.i32 %3427, 0
  %3429 = lshr i32 %3428, 16
  %3430 = shl i32 %3428, 8
  %3431 = and i32 %3430, 16776960
  %3432 = or i32 %3431, 48
  %3433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.f32 %3433, 0
  %3435 = extractvalue %dx.types.ResRet.f32 %3433, 1
  %3436 = extractvalue %dx.types.ResRet.f32 %3433, 2
  %3437 = or i32 %3431, 64
  %3438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.i32 %3438, 0
  %3440 = extractvalue %dx.types.ResRet.i32 %3438, 1
  %3441 = or i32 %3431, 80
  %3442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3441, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.f32 %3442, 2
  %3444 = extractvalue %dx.types.ResRet.f32 %3442, 3
  %3445 = or i32 %3431, 96
  %3446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.f32 %3446, 0
  %3448 = extractvalue %dx.types.ResRet.f32 %3446, 1
  %3449 = extractvalue %dx.types.ResRet.f32 %3446, 2
  %3450 = extractvalue %dx.types.ResRet.f32 %3446, 3
  %3451 = or i32 %3431, 112
  %3452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3451, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.f32 %3452, 2
  %3454 = or i32 %3431, 128
  %3455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.f32 %3455, 0
  %3457 = extractvalue %dx.types.ResRet.f32 %3455, 1
  %3458 = extractvalue %dx.types.ResRet.f32 %3455, 2
  %3459 = extractvalue %dx.types.ResRet.f32 %3455, 3
  %3460 = or i32 %3431, 144
  %3461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.f32 %3461, 0
  %3463 = extractvalue %dx.types.ResRet.f32 %3461, 1
  %3464 = extractvalue %dx.types.ResRet.f32 %3461, 2
  %3465 = extractvalue %dx.types.ResRet.f32 %3461, 3
  %3466 = or i32 %3431, 160
  %3467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3466, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.f32 %3467, 0
  %3469 = extractvalue %dx.types.ResRet.f32 %3467, 1
  %3470 = extractvalue %dx.types.ResRet.f32 %3467, 2
  %3471 = extractvalue %dx.types.ResRet.f32 %3467, 3
  %3472 = or i32 %3431, 192
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3472, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = or i32 %3431, 208
  %3476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3475, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = or i32 %3431, 248
  %3479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.f32 %3479, 0
  %3481 = extractvalue %dx.types.ResRet.f32 %3479, 1
  %3482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.f32 %3482, 0
  %3484 = extractvalue %dx.types.ResRet.f32 %3482, 1
  %3485 = extractvalue %dx.types.ResRet.f32 %3482, 2
  %3486 = extractvalue %dx.types.ResRet.f32 %3482, 3
  %3487 = call float @dx.op.dot4.f32(i32 56, float %3483, float %3484, float %3485, float %3486, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3488 = or i32 %3431, 16
  %3489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3488, i32 undef)  ; BufferLoad(srv,index,wot)
  %3490 = extractvalue %dx.types.ResRet.f32 %3489, 0
  %3491 = extractvalue %dx.types.ResRet.f32 %3489, 1
  %3492 = extractvalue %dx.types.ResRet.f32 %3489, 2
  %3493 = extractvalue %dx.types.ResRet.f32 %3489, 3
  %3494 = call float @dx.op.dot4.f32(i32 56, float %3490, float %3491, float %3492, float %3493, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3495 = or i32 %3431, 32
  %3496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.f32 %3496, 0
  %3498 = extractvalue %dx.types.ResRet.f32 %3496, 1
  %3499 = extractvalue %dx.types.ResRet.f32 %3496, 2
  %3500 = extractvalue %dx.types.ResRet.f32 %3496, 3
  %3501 = call float @dx.op.dot4.f32(i32 56, float %3497, float %3498, float %3499, float %3500, float %64, float %65, float %66, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3502 = call float @dx.op.unary.f32(i32 27, float %3487)  ; Round_ni(value)
  %3503 = call float @dx.op.unary.f32(i32 6, float %3502)  ; FAbs(value)
  %3504 = call float @dx.op.unary.f32(i32 27, float %3494)  ; Round_ni(value)
  %3505 = call float @dx.op.unary.f32(i32 6, float %3504)  ; FAbs(value)
  %3506 = call float @dx.op.unary.f32(i32 6, float %3501)  ; FAbs(value)
  %3507 = call float @dx.op.unary.f32(i32 27, float %3506)  ; Round_ni(value)
  %3508 = fadd fast float %3505, %3503
  %3509 = fadd fast float %3508, %3507
  %3510 = fcmp fast oeq float %3509, 0.000000e+00
  %3511 = call float @dx.op.dot4.f32(i32 56, float %3483, float %3484, float %3485, float %3486, float %3349, float %3350, float %3351, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3512 = call float @dx.op.dot4.f32(i32 56, float %3490, float %3491, float %3492, float %3493, float %3349, float %3350, float %3351, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3513 = call float @dx.op.dot4.f32(i32 56, float %3483, float %3484, float %3485, float %3486, float %3352, float %3353, float %3354, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3514 = call float @dx.op.dot4.f32(i32 56, float %3490, float %3491, float %3492, float %3493, float %3352, float %3353, float %3354, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3515 = fsub fast float %3511, %3487
  %3516 = fsub fast float %3513, %3487
  %3517 = fsub fast float %3512, %3494
  %3518 = fsub fast float %3514, %3494
  %3519 = call float @dx.op.dot3.f32(i32 55, float %3434, float %3435, float %3436, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %3520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3521 = extractvalue %dx.types.CBufRet.f32 %3520, 2
  %3522 = fadd fast float %3521, %3519
  %3523 = call float @dx.op.unary.f32(i32 7, float %3522)  ; Saturate(value)
  %3524 = extractvalue %dx.types.CBufRet.f32 %3520, 0
  %3525 = fcmp fast ogt float %3523, %3524
  %3526 = and i1 %3510, %3525
  br i1 %3526, label %3548, label %3527

; <label>:3527                                    ; preds = %3814, %3631, %3548, %3405
  %3528 = phi float [ %3407, %3548 ], [ %3634, %3631 ], [ %3634, %3814 ], [ %3407, %3405 ]
  %3529 = phi float [ %3408, %3548 ], [ %3408, %3631 ], [ %3789, %3814 ], [ %3408, %3405 ]
  %3530 = phi float [ %3409, %3548 ], [ %3409, %3631 ], [ %3788, %3814 ], [ %3409, %3405 ]
  %3531 = phi float [ %3410, %3548 ], [ %3410, %3631 ], [ %3786, %3814 ], [ %3410, %3405 ]
  %3532 = phi float [ %3411, %3548 ], [ %3411, %3631 ], [ %3758, %3814 ], [ %3411, %3405 ]
  %3533 = phi float [ %3412, %3548 ], [ %3412, %3631 ], [ %3756, %3814 ], [ %3412, %3405 ]
  %3534 = phi float [ %3413, %3548 ], [ %3413, %3631 ], [ %3824, %3814 ], [ %3413, %3405 ]
  %3535 = phi float [ %3414, %3548 ], [ %3414, %3631 ], [ %3825, %3814 ], [ %3414, %3405 ]
  %3536 = phi float [ %3415, %3548 ], [ %3415, %3631 ], [ %3826, %3814 ], [ %3415, %3405 ]
  %3537 = phi float [ %3416, %3548 ], [ %3416, %3631 ], [ %3737, %3814 ], [ %3416, %3405 ]
  %3538 = phi float [ %3417, %3548 ], [ %3417, %3631 ], [ %3738, %3814 ], [ %3417, %3405 ]
  %3539 = phi float [ %3418, %3548 ], [ %3418, %3631 ], [ %3739, %3814 ], [ %3418, %3405 ]
  %3540 = phi float [ %3419, %3548 ], [ %3419, %3631 ], [ %3766, %3814 ], [ %3419, %3405 ]
  %3541 = phi float [ %3420, %3548 ], [ %3420, %3631 ], [ %3763, %3814 ], [ %3420, %3405 ]
  %3542 = phi float [ %3421, %3548 ], [ %3421, %3631 ], [ %3760, %3814 ], [ %3421, %3405 ]
  %3543 = phi float [ %3422, %3548 ], [ %3422, %3631 ], [ %3754, %3814 ], [ %3422, %3405 ]
  %3544 = phi float [ %3423, %3548 ], [ %3423, %3631 ], [ %3749, %3814 ], [ %3423, %3405 ]
  %3545 = phi float [ %3424, %3548 ], [ %3424, %3631 ], [ %3750, %3814 ], [ %3424, %3405 ]
  %3546 = phi float [ %3425, %3548 ], [ %3425, %3631 ], [ %3751, %3814 ], [ %3425, %3405 ]
  %3547 = icmp eq i32 %3429, 0
  br i1 %3547, label %3827, label %3405

; <label>:3548                                    ; preds = %3405
  %3549 = extractvalue %dx.types.ResRet.f32 %3433, 3
  %3550 = extractvalue %dx.types.ResRet.f32 %3452, 3
  %3551 = extractvalue %dx.types.ResRet.f32 %3452, 1
  %3552 = extractvalue %dx.types.ResRet.f32 %3452, 0
  %3553 = extractvalue %dx.types.ResRet.f32 %3442, 1
  %3554 = extractvalue %dx.types.ResRet.f32 %3442, 0
  %3555 = extractvalue %dx.types.ResRet.i32 %3438, 3
  %3556 = extractvalue %dx.types.ResRet.i32 %3438, 2
  %3557 = bitcast float %3549 to i32
  %3558 = add i32 %3555, 0
  %3559 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3558, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3561 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3559, %dx.types.Handle %3560, float %3487, float %3494, float undef, float undef, i32 0, i32 0, i32 undef, float %3515, float %3517, float undef, float %3516, float %3518, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3562 = extractvalue %dx.types.ResRet.f32 %3561, 0
  %3563 = fmul fast float %3562, %3554
  %3564 = fadd fast float %3563, %3553
  %3565 = call float @dx.op.unary.f32(i32 7, float %3564)  ; Saturate(value)
  %3566 = fmul fast float %3487, %3447
  %3567 = call float @dx.op.tertiary.f32(i32 46, float %3448, float %3494, float %3566)  ; FMad(a,b,c)
  %3568 = fadd fast float %3567, %3552
  %3569 = fmul fast float %3487, %3449
  %3570 = call float @dx.op.tertiary.f32(i32 46, float %3450, float %3494, float %3569)  ; FMad(a,b,c)
  %3571 = fadd fast float %3570, %3551
  %3572 = fmul fast float %3515, %3447
  %3573 = call float @dx.op.tertiary.f32(i32 46, float %3448, float %3517, float %3572)  ; FMad(a,b,c)
  %3574 = fmul fast float %3515, %3449
  %3575 = call float @dx.op.tertiary.f32(i32 46, float %3450, float %3517, float %3574)  ; FMad(a,b,c)
  %3576 = fmul fast float %3516, %3447
  %3577 = call float @dx.op.tertiary.f32(i32 46, float %3448, float %3518, float %3576)  ; FMad(a,b,c)
  %3578 = fmul fast float %3516, %3449
  %3579 = call float @dx.op.tertiary.f32(i32 46, float %3450, float %3518, float %3578)  ; FMad(a,b,c)
  %3580 = add i32 %3556, 0
  %3581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3580, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3582 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3581, %dx.types.Handle %3560, float %3568, float %3571, float undef, float undef, i32 0, i32 0, i32 undef, float %3573, float %3575, float undef, float %3577, float %3579, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3583 = extractvalue %dx.types.ResRet.f32 %3582, 0
  %3584 = and i32 %3557, 1024
  %3585 = icmp ne i32 %3584, 0
  %3586 = fcmp fast ogt float %3583, 0x3FE0101020000000
  %3587 = uitofp i1 %3586 to float
  %3588 = select i1 %3585, float %3587, float %3583
  %3589 = and i32 %3557, 8192
  %3590 = icmp ne i32 %3589, 0
  %3591 = select i1 %3590, float %3550, float 1.000000e+00
  %3592 = fmul fast float %3487, 2.000000e+00
  %3593 = fadd fast float %3592, -1.000000e+00
  %3594 = call float @dx.op.unary.f32(i32 6, float %3593)  ; FAbs(value)
  %3595 = fmul fast float %3594, %3480
  %3596 = fsub fast float %3595, %3480
  %3597 = call float @dx.op.unary.f32(i32 7, float %3596)  ; Saturate(value)
  %3598 = fmul fast float %3494, 2.000000e+00
  %3599 = fadd fast float %3598, -1.000000e+00
  %3600 = call float @dx.op.unary.f32(i32 6, float %3599)  ; FAbs(value)
  %3601 = fmul fast float %3600, %3481
  %3602 = fsub fast float %3601, %3481
  %3603 = call float @dx.op.unary.f32(i32 7, float %3602)  ; Saturate(value)
  %3604 = fmul fast float %3506, %3443
  %3605 = fsub fast float %3604, %3443
  %3606 = call float @dx.op.unary.f32(i32 7, float %3605)  ; Saturate(value)
  %3607 = fmul fast float %3565, %3591
  %3608 = fmul fast float %3607, %3562
  %3609 = fmul fast float %3608, %3597
  %3610 = fmul fast float %3609, %3588
  %3611 = fmul fast float %3610, %3603
  %3612 = fmul fast float %3611, %3606
  %3613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3614 = extractvalue %dx.types.CBufRet.f32 %3613, 1
  %3615 = extractvalue %dx.types.CBufRet.f32 %3613, 0
  %3616 = fsub fast float %3523, %3615
  %3617 = fmul fast float %3616, %3614
  %3618 = call float @dx.op.unary.f32(i32 7, float %3617)  ; Saturate(value)
  %3619 = fmul fast float %3612, %3444
  %3620 = fadd fast float %3612, %3444
  %3621 = fmul fast float %3620, %3453
  %3622 = fsub fast float %3621, %3453
  %3623 = call float @dx.op.unary.f32(i32 7, float %3622)  ; Saturate(value)
  %3624 = and i32 %3557, 128
  %3625 = icmp ne i32 %3624, 0
  %3626 = select i1 %3625, float %3623, float %3619
  %3627 = fmul fast float %3626, %3618
  %3628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3629 = extractvalue %dx.types.CBufRet.f32 %3628, 0
  %3630 = fcmp fast ugt float %3627, %3629
  br i1 %3630, label %3631, label %3527

; <label>:3631                                    ; preds = %3548
  %3632 = select i1 %3590, float %3627, float 0.000000e+00
  %3633 = fadd fast float %3632, %3407
  %3634 = call float @dx.op.unary.f32(i32 7, float %3633)  ; Saturate(value)
  br i1 %3590, label %3527, label %3635

; <label>:3635                                    ; preds = %3631
  %3636 = and i32 %3557, 4
  %3637 = and i32 %3557, 8
  %3638 = add i32 %3439, 0
  %3639 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3638, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3641 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3639, %dx.types.Handle %3640, float %3568, float %3571, float undef, float undef, i32 0, i32 0, i32 undef, float %3573, float %3575, float undef, float %3577, float %3579, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3642 = extractvalue %dx.types.ResRet.f32 %3641, 0
  %3643 = extractvalue %dx.types.ResRet.f32 %3641, 1
  %3644 = extractvalue %dx.types.ResRet.f32 %3641, 2
  %3645 = extractvalue %dx.types.ResRet.f32 %3641, 3
  %3646 = bitcast float %3465 to i32
  %3647 = and i32 %3646, 255
  %3648 = uitofp i32 %3647 to float
  %3649 = lshr i32 %3646, 8
  %3650 = and i32 %3649, 255
  %3651 = uitofp i32 %3650 to float
  %3652 = fmul fast float %3645, %3648
  %3653 = fadd fast float %3652, %3651
  %3654 = fmul fast float %3653, 0x3F70101000000000
  %3655 = add i32 %3440, 0
  %3656 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3655, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3657 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3656, %dx.types.Handle %3640, float %3568, float %3571, float undef, float undef, i32 0, i32 0, i32 undef, float %3573, float %3575, float undef, float %3577, float %3579, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3658 = extractvalue %dx.types.ResRet.f32 %3657, 0
  %3659 = extractvalue %dx.types.ResRet.f32 %3657, 1
  %3660 = extractvalue %dx.types.ResRet.f32 %3657, 2
  %3661 = extractvalue %dx.types.ResRet.f32 %3657, 3
  %3662 = bitcast float %3459 to i32
  %3663 = and i32 %3662, 255
  %3664 = uitofp i32 %3663 to float
  %3665 = lshr i32 %3662, 8
  %3666 = and i32 %3665, 255
  %3667 = uitofp i32 %3666 to float
  %3668 = lshr i32 %3662, 16
  %3669 = and i32 %3668, 255
  %3670 = uitofp i32 %3669 to float
  %3671 = fmul fast float %3670, 0x3F70101000000000
  %3672 = fmul fast float %3658, %3664
  %3673 = fadd fast float %3672, %3667
  %3674 = fmul fast float %3673, 0x3F70101000000000
  %3675 = fadd fast float %3659, -5.000000e-01
  %3676 = fadd fast float %3661, -5.000000e-01
  %3677 = fmul fast float %3675, %3671
  %3678 = fmul fast float %3676, %3671
  %3679 = fadd fast float %3677, 5.000000e-01
  %3680 = fadd fast float %3678, 5.000000e-01
  %3681 = fmul fast float %3642, %3468
  %3682 = fmul fast float %3643, %3469
  %3683 = fmul fast float %3644, %3470
  %3684 = fmul fast float %3679, 2.000000e+00
  %3685 = fadd fast float %3684, -1.000000e+00
  %3686 = fmul fast float %3680, 2.000000e+00
  %3687 = fadd fast float %3686, -1.000000e+00
  %3688 = fadd fast float %3685, %3687
  %3689 = fmul fast float %3688, 5.000000e-01
  %3690 = fsub fast float %3685, %3687
  %3691 = fmul fast float %3690, 5.000000e-01
  %3692 = call float @dx.op.unary.f32(i32 6, float %3689)  ; FAbs(value)
  %3693 = fsub fast float 1.000000e+00, %3692
  %3694 = call float @dx.op.unary.f32(i32 6, float %3691)  ; FAbs(value)
  %3695 = fsub fast float %3693, %3694
  %3696 = call float @dx.op.dot3.f32(i32 55, float %3689, float %3691, float %3695, float %3689, float %3691, float %3695)  ; Dot3(ax,ay,az,bx,by,bz)
  %3697 = call float @dx.op.unary.f32(i32 25, float %3696)  ; Rsqrt(value)
  %3698 = fmul fast float %3689, %3697
  %3699 = fmul fast float %3691, %3697
  %3700 = fmul fast float %3697, %3695
  %3701 = fmul fast float %3700, %3434
  %3702 = fmul fast float %3700, %3435
  %3703 = fmul fast float %3700, %3436
  %3704 = fmul fast float %3698, %3456
  %3705 = fmul fast float %3698, %3457
  %3706 = fmul fast float %3698, %3458
  %3707 = fadd fast float %3704, %3701
  %3708 = fadd fast float %3705, %3702
  %3709 = fadd fast float %3706, %3703
  %3710 = fmul fast float %3699, %3462
  %3711 = fmul fast float %3699, %3463
  %3712 = fmul fast float %3699, %3464
  %3713 = fadd fast float %3707, %3710
  %3714 = fadd fast float %3708, %3711
  %3715 = fadd fast float %3709, %3712
  %3716 = call float @dx.op.dot3.f32(i32 55, float %3713, float %3714, float %3715, float %3713, float %3714, float %3715)  ; Dot3(ax,ay,az,bx,by,bz)
  %3717 = call float @dx.op.unary.f32(i32 25, float %3716)  ; Rsqrt(value)
  %3718 = fmul fast float %3713, %3717
  %3719 = fmul fast float %3714, %3717
  %3720 = fmul fast float %3715, %3717
  %3721 = icmp ne i32 %3637, 0
  %3722 = select i1 %3721, float 1.000000e+00, float 0.000000e+00
  %3723 = fmul fast float %3627, %3722
  %3724 = and i32 %3557, 1
  %3725 = icmp eq i32 %3724, 0
  br i1 %3725, label %3726, label %3730

; <label>:3726                                    ; preds = %3635
  %3727 = fsub fast float %3718, %3416
  %3728 = fsub fast float %3719, %3417
  %3729 = fsub fast float %3720, %3418
  br label %3730

; <label>:3730                                    ; preds = %3726, %3635
  %3731 = phi float [ %3727, %3726 ], [ %3718, %3635 ]
  %3732 = phi float [ %3728, %3726 ], [ %3719, %3635 ]
  %3733 = phi float [ %3729, %3726 ], [ %3720, %3635 ]
  %3734 = fmul float %3733, %3723
  %3735 = fmul float %3732, %3723
  %3736 = fmul float %3731, %3723
  %3737 = fadd fast float %3736, %3416
  %3738 = fadd fast float %3735, %3417
  %3739 = fadd fast float %3734, %3418
  %3740 = icmp ne i32 %3636, 0
  %3741 = select i1 %3740, float 1.000000e+00, float 0.000000e+00
  %3742 = fmul fast float %3627, %3741
  %3743 = fsub fast float %3681, %3423
  %3744 = fsub fast float %3682, %3424
  %3745 = fsub fast float %3683, %3425
  %3746 = fmul fast float %3743, %3742
  %3747 = fmul fast float %3744, %3742
  %3748 = fmul fast float %3745, %3742
  %3749 = fadd fast float %3746, %3423
  %3750 = fadd fast float %3747, %3424
  %3751 = fadd fast float %3748, %3425
  %3752 = fsub fast float %3654, %3422
  %3753 = fmul fast float %3752, %3742
  %3754 = fadd fast float %3753, %3422
  %3755 = fmul fast float %3742, %3412
  %3756 = fsub fast float %3412, %3755
  %3757 = fmul fast float %3742, %3411
  %3758 = fsub fast float %3411, %3757
  %3759 = fadd fast float %3627, %3421
  %3760 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  %3761 = fsub fast float %3674, %3420
  %3762 = fmul fast float %3761, %3723
  %3763 = fadd fast float %3762, %3420
  %3764 = fsub fast float %3660, %3419
  %3765 = fmul fast float %3764, %3723
  %3766 = fadd fast float %3765, %3419
  %3767 = call float @dx.op.dot3.f32(i32 55, float %3681, float %3682, float %3683, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 0
  %3770 = extractvalue %dx.types.CBufRet.f32 %3768, 1
  %3771 = fmul fast float %3770, %3767
  %3772 = fadd fast float %3771, %3769
  %3773 = call float @dx.op.unary.f32(i32 7, float %3772)  ; Saturate(value)
  %3774 = bitcast float %3471 to i32
  %3775 = and i32 %3774, 65535
  %3776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3775)  ; LegacyF16ToF32(value)
  %3777 = lshr i32 %3774, 16
  %3778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3777)  ; LegacyF16ToF32(value)
  %3779 = fcmp fast oge float %3776, 0.000000e+00
  %3780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3781 = extractvalue %dx.types.CBufRet.f32 %3780, 0
  %3782 = select i1 %3779, float %3776, float %3781
  %3783 = fadd fast float %3782, %3778
  %3784 = fsub fast float %3773, %3410
  %3785 = fmul fast float %3784, %3627
  %3786 = fadd fast float %3785, %3410
  %3787 = fmul fast float %3783, %3627
  %3788 = call float @dx.op.binary.f32(i32 35, float %3409, float %3787)  ; FMax(a,b)
  %3789 = call float @dx.op.binary.f32(i32 35, float %3408, float %3627)  ; FMax(a,b)
  %3790 = and i32 %3557, 16
  %3791 = icmp eq i32 %3790, 0
  br i1 %3791, label %3814, label %3792

; <label>:3792                                    ; preds = %3730
  %3793 = bitcast float %3477 to i32
  %3794 = add i32 %3474, 0
  %3795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3794, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3796 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3795, %dx.types.Handle %3640, float %3568, float %3571, float undef, float undef, i32 0, i32 0, i32 undef, float %3573, float %3575, float undef, float %3577, float %3579, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3797 = extractvalue %dx.types.ResRet.f32 %3796, 0
  %3798 = extractvalue %dx.types.ResRet.f32 %3796, 1
  %3799 = extractvalue %dx.types.ResRet.f32 %3796, 2
  %3800 = and i32 %3793, 65535
  %3801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3800)  ; LegacyF16ToF32(value)
  %3802 = fmul fast float %3797, %3468
  %3803 = fmul fast float %3798, %3469
  %3804 = fmul fast float %3799, %3470
  %3805 = and i32 %3557, 16384
  %3806 = icmp ne i32 %3805, 0
  %3807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3807, 0
  %3809 = select i1 %3806, float %3808, float 1.000000e+00
  %3810 = fmul fast float %3809, %3801
  %3811 = fmul fast float %3802, %3810
  %3812 = fmul fast float %3803, %3810
  %3813 = fmul fast float %3804, %3810
  br label %3814

; <label>:3814                                    ; preds = %3792, %3730
  %3815 = phi float [ %3811, %3792 ], [ 0.000000e+00, %3730 ]
  %3816 = phi float [ %3812, %3792 ], [ 0.000000e+00, %3730 ]
  %3817 = phi float [ %3813, %3792 ], [ 0.000000e+00, %3730 ]
  %3818 = fsub fast float %3815, %3413
  %3819 = fsub fast float %3816, %3414
  %3820 = fsub fast float %3817, %3415
  %3821 = fmul fast float %3818, %3627
  %3822 = fmul fast float %3819, %3627
  %3823 = fmul fast float %3820, %3627
  %3824 = fadd fast float %3821, %3413
  %3825 = fadd fast float %3822, %3414
  %3826 = fadd fast float %3823, %3415
  br label %3527

; <label>:3827                                    ; preds = %3527
  br label %3828

; <label>:3828                                    ; preds = %3827, %3342
  %3829 = phi float [ 0.000000e+00, %3342 ], [ %3528, %3827 ]
  %3830 = phi float [ %1064, %3342 ], [ %3529, %3827 ]
  %3831 = phi float [ %3286, %3342 ], [ %3530, %3827 ]
  %3832 = phi float [ %3284, %3342 ], [ %3531, %3827 ]
  %3833 = phi float [ 0.000000e+00, %3342 ], [ %3532, %3827 ]
  %3834 = phi float [ 0.000000e+00, %3342 ], [ %3533, %3827 ]
  %3835 = phi float [ %3308, %3342 ], [ %3534, %3827 ]
  %3836 = phi float [ %3310, %3342 ], [ %3535, %3827 ]
  %3837 = phi float [ %3312, %3342 ], [ %3536, %3827 ]
  %3838 = phi float [ %3338, %3342 ], [ %3537, %3827 ]
  %3839 = phi float [ %3339, %3342 ], [ %3538, %3827 ]
  %3840 = phi float [ %3340, %3342 ], [ %3539, %3827 ]
  %3841 = phi float [ %3283, %3342 ], [ %3540, %3827 ]
  %3842 = phi float [ %3282, %3342 ], [ %3541, %3827 ]
  %3843 = phi float [ 0.000000e+00, %3342 ], [ %3542, %3827 ]
  %3844 = phi float [ %3281, %3342 ], [ %3543, %3827 ]
  %3845 = phi float [ %3293, %3342 ], [ %3544, %3827 ]
  %3846 = phi float [ %3294, %3342 ], [ %3545, %3827 ]
  %3847 = phi float [ %3295, %3342 ], [ %3546, %3827 ]
  %3848 = call float @dx.op.dot3.f32(i32 55, float %3838, float %3839, float %3840, float %3838, float %3839, float %3840)  ; Dot3(ax,ay,az,bx,by,bz)
  %3849 = call float @dx.op.unary.f32(i32 25, float %3848)  ; Rsqrt(value)
  %3850 = fmul fast float %3849, %3838
  %3851 = fmul fast float %3849, %3839
  %3852 = fmul fast float %3849, %3840
  %3853 = fadd fast float %3843, %1064
  %3854 = call float @dx.op.unary.f32(i32 7, float %3853)  ; Saturate(value)
  %3855 = call float @dx.op.dot3.f32(i32 55, float %3850, float %3851, float %3852, float %3850, float %3851, float %3852)  ; Dot3(ax,ay,az,bx,by,bz)
  %3856 = call float @dx.op.unary.f32(i32 25, float %3855)  ; Rsqrt(value)
  %3857 = fmul fast float %3856, %3850
  %3858 = fmul fast float %3856, %3851
  %3859 = fmul fast float %3856, %3852
  br label %3860

; <label>:3860                                    ; preds = %3828, %3272
  %3861 = phi float [ %3845, %3828 ], [ %3293, %3272 ]
  %3862 = phi float [ %3846, %3828 ], [ %3294, %3272 ]
  %3863 = phi float [ %3847, %3828 ], [ %3295, %3272 ]
  %3864 = phi float [ %3857, %3828 ], [ %3338, %3272 ]
  %3865 = phi float [ %3858, %3828 ], [ %3339, %3272 ]
  %3866 = phi float [ %3859, %3828 ], [ %3340, %3272 ]
  %3867 = phi float [ %3835, %3828 ], [ %3308, %3272 ]
  %3868 = phi float [ %3836, %3828 ], [ %3310, %3272 ]
  %3869 = phi float [ %3837, %3828 ], [ %3312, %3272 ]
  %3870 = phi float [ %3844, %3828 ], [ %3281, %3272 ]
  %3871 = phi float [ %3854, %3828 ], [ %1064, %3272 ]
  %3872 = phi float [ %3842, %3828 ], [ %3282, %3272 ]
  %3873 = phi float [ %3841, %3828 ], [ %3283, %3272 ]
  %3874 = phi float [ %3834, %3828 ], [ 0.000000e+00, %3272 ]
  %3875 = phi float [ %3833, %3828 ], [ 0.000000e+00, %3272 ]
  %3876 = phi float [ %3829, %3828 ], [ 0.000000e+00, %3272 ]
  %3877 = phi float [ %3831, %3828 ], [ %3286, %3272 ]
  %3878 = phi float [ %3830, %3828 ], [ %1064, %3272 ]
  %3879 = phi float [ %3832, %3828 ], [ %3284, %3272 ]
  %3880 = fadd fast float %3870, 0xBFB99999A0000000
  %3881 = call float @dx.op.unary.f32(i32 7, float %3880)  ; Saturate(value)
  %3882 = fmul fast float %3881, 0x3FF1C71C80000000
  %3883 = call float @dx.op.binary.f32(i32 36, float %3870, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3884 = fsub fast float 1.000000e+00, %3882
  %3885 = call float @dx.op.unary.f32(i32 7, float %3884)  ; Saturate(value)
  %3886 = fmul fast float %3885, %3861
  %3887 = fmul fast float %3885, %3862
  %3888 = fmul fast float %3885, %3863
  %3889 = call float @dx.op.unary.f32(i32 7, float %3886)  ; Saturate(value)
  %3890 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3891 = call float @dx.op.unary.f32(i32 7, float %3888)  ; Saturate(value)
  %3892 = fmul fast float %3882, %3861
  %3893 = fmul fast float %3882, %3862
  %3894 = fmul fast float %3882, %3863
  %3895 = fadd fast float %3892, %3883
  %3896 = fadd fast float %3893, %3883
  %3897 = fadd fast float %3894, %3883
  %3898 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3899 = call float @dx.op.unary.f32(i32 7, float %3896)  ; Saturate(value)
  %3900 = call float @dx.op.unary.f32(i32 7, float %3897)  ; Saturate(value)
  %3901 = call float @dx.op.unary.f32(i32 7, float %3872)  ; Saturate(value)
  %3902 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3903 = extractvalue %dx.types.CBufRet.i32 %3902, 3
  %3904 = and i32 %3903, 8
  %3905 = icmp ne i32 %3904, 0
  %3906 = call float @dx.op.binary.f32(i32 35, float %3889, float %3861)  ; FMax(a,b)
  %3907 = call float @dx.op.binary.f32(i32 35, float %3890, float %3861)  ; FMax(a,b)
  %3908 = call float @dx.op.binary.f32(i32 35, float %3891, float %3861)  ; FMax(a,b)
  %3909 = call float @dx.op.dot3.f32(i32 55, float %3889, float %3890, float %3891, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3910 = select i1 %269, float %3861, float %3889
  %3911 = select i1 %269, float %3909, float %3890
  %3912 = select i1 %269, float 1.000000e+00, float %3891
  %3913 = select i1 %3905, float %3906, float %3910
  %3914 = select i1 %3905, float %3907, float %3911
  %3915 = select i1 %3905, float %3908, float %3912
  %3916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3917 = extractvalue %dx.types.CBufRet.f32 %3916, 0
  %3918 = extractvalue %dx.types.CBufRet.f32 %3916, 1
  %3919 = extractvalue %dx.types.CBufRet.f32 %3916, 2
  %3920 = fadd fast float %3917, %203
  %3921 = fadd fast float %3918, %204
  %3922 = fadd fast float %3919, %205
  %3923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3924 = extractvalue %dx.types.CBufRet.f32 %3923, 0
  %3925 = extractvalue %dx.types.CBufRet.f32 %3923, 1
  %3926 = fsub fast float %3920, %3924
  %3927 = fsub fast float %3921, %3925
  %3928 = fmul fast float %3926, %3926
  %3929 = fmul fast float %3927, %3927
  %3930 = fadd fast float %3928, %3929
  %3931 = call float @dx.op.unary.f32(i32 24, float %3930)  ; Sqrt(value)
  %3932 = extractvalue %dx.types.CBufRet.f32 %3923, 2
  %3933 = fcmp fast olt float %3931, %3932
  br i1 %3933, label %3934, label %4001

; <label>:3934                                    ; preds = %3860
  %3935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3936 = extractvalue %dx.types.CBufRet.f32 %3935, 0
  %3937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3938 = extractvalue %dx.types.CBufRet.f32 %3937, 0
  %3939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3940 = extractvalue %dx.types.CBufRet.f32 %3939, 0
  %3941 = extractvalue %dx.types.CBufRet.f32 %3935, 1
  %3942 = extractvalue %dx.types.CBufRet.f32 %3937, 1
  %3943 = extractvalue %dx.types.CBufRet.f32 %3939, 1
  %3944 = extractvalue %dx.types.CBufRet.f32 %3935, 3
  %3945 = extractvalue %dx.types.CBufRet.f32 %3937, 3
  %3946 = extractvalue %dx.types.CBufRet.f32 %3939, 3
  %3947 = fadd fast float %3944, %3920
  %3948 = fadd fast float %3945, %3921
  %3949 = fadd fast float %3946, %3922
  %3950 = fmul fast float %3947, %3936
  %3951 = call float @dx.op.tertiary.f32(i32 46, float %3948, float %3938, float %3950)  ; FMad(a,b,c)
  %3952 = call float @dx.op.tertiary.f32(i32 46, float %3949, float %3940, float %3951)  ; FMad(a,b,c)
  %3953 = fmul fast float %3947, %3941
  %3954 = call float @dx.op.tertiary.f32(i32 46, float %3948, float %3942, float %3953)  ; FMad(a,b,c)
  %3955 = call float @dx.op.tertiary.f32(i32 46, float %3949, float %3943, float %3954)  ; FMad(a,b,c)
  %3956 = fsub fast float %3952, %3944
  %3957 = fsub fast float %3955, %3945
  %3958 = fsub fast float %3956, %3924
  %3959 = fadd fast float %3958, %3932
  %3960 = fsub fast float %3957, %3925
  %3961 = fadd fast float %3960, %3932
  %3962 = extractvalue %dx.types.CBufRet.f32 %3923, 3
  %3963 = fmul fast float %3959, %3962
  %3964 = fmul fast float %3961, %3962
  %3965 = call float @dx.op.unary.f32(i32 7, float %3963)  ; Saturate(value)
  %3966 = call float @dx.op.unary.f32(i32 7, float %3964)  ; Saturate(value)
  %3967 = fsub fast float 1.000000e+00, %3965
  %3968 = fsub fast float 1.000000e+00, %3966
  %3969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %55, float %3967, float %3968, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = fcmp fast ugt float %3970, 0.000000e+00
  br i1 %3971, label %3972, label %4275

; <label>:3972                                    ; preds = %3934
  %3973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3974 = extractvalue %dx.types.CBufRet.f32 %3973, 2
  %3975 = fmul fast float %3974, %3970
  %3976 = extractvalue %dx.types.CBufRet.f32 %3973, 3
  %3977 = fadd fast float %3976, %3975
  %3978 = extractvalue %dx.types.CBufRet.f32 %3939, 2
  %3979 = fadd fast float %3977, %3946
  %3980 = fmul fast float %3952, %3940
  %3981 = call float @dx.op.tertiary.f32(i32 46, float %3955, float %3943, float %3980)  ; FMad(a,b,c)
  %3982 = call float @dx.op.tertiary.f32(i32 46, float %3979, float %3978, float %3981)  ; FMad(a,b,c)
  %3983 = fsub fast float %3982, %3946
  %3984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3985 = extractvalue %dx.types.CBufRet.f32 %3984, 2
  %3986 = fsub fast float %3983, %3985
  %3987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %55, float %3967, float %3968, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3988 = extractvalue %dx.types.ResRet.f32 %3987, 0
  %3989 = extractvalue %dx.types.ResRet.f32 %3987, 1
  %3990 = extractvalue %dx.types.ResRet.f32 %3987, 2
  %3991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %55, float %3967, float %3968, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3992 = extractvalue %dx.types.ResRet.f32 %3991, 0
  %3993 = extractvalue %dx.types.ResRet.f32 %3991, 1
  %3994 = extractvalue %dx.types.ResRet.f32 %3991, 2
  %3995 = fadd fast float %3992, %3988
  %3996 = fmul fast float %3995, 0x3F847AE140000000
  %3997 = fadd fast float %3993, %3989
  %3998 = fmul fast float %3997, 0x3F847AE140000000
  %3999 = fadd fast float %3994, %3990
  %4000 = fmul fast float %3999, 0x3F847AE140000000
  br label %4275

; <label>:4001                                    ; preds = %3860
  %4002 = and i32 %248, 1
  %4003 = icmp eq i32 %4002, 0
  br i1 %4003, label %4275, label %4004

; <label>:4004                                    ; preds = %4001
  %4005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4006 = extractvalue %dx.types.CBufRet.f32 %4005, 0
  %4007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4008 = extractvalue %dx.types.CBufRet.f32 %4007, 0
  %4009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4010 = extractvalue %dx.types.CBufRet.f32 %4009, 0
  %4011 = extractvalue %dx.types.CBufRet.f32 %4005, 1
  %4012 = extractvalue %dx.types.CBufRet.f32 %4007, 1
  %4013 = extractvalue %dx.types.CBufRet.f32 %4009, 1
  %4014 = extractvalue %dx.types.CBufRet.f32 %4005, 3
  %4015 = extractvalue %dx.types.CBufRet.f32 %4007, 3
  %4016 = extractvalue %dx.types.CBufRet.f32 %4009, 3
  %4017 = fadd fast float %4014, %3920
  %4018 = fadd fast float %4015, %3921
  %4019 = fadd fast float %4016, %3922
  %4020 = fmul fast float %4017, %4006
  %4021 = call float @dx.op.tertiary.f32(i32 46, float %4018, float %4008, float %4020)  ; FMad(a,b,c)
  %4022 = call float @dx.op.tertiary.f32(i32 46, float %4019, float %4010, float %4021)  ; FMad(a,b,c)
  %4023 = fmul fast float %4017, %4011
  %4024 = call float @dx.op.tertiary.f32(i32 46, float %4018, float %4012, float %4023)  ; FMad(a,b,c)
  %4025 = call float @dx.op.tertiary.f32(i32 46, float %4019, float %4013, float %4024)  ; FMad(a,b,c)
  %4026 = fsub fast float %4022, %4014
  %4027 = fsub fast float %4025, %4015
  %4028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4029 = extractvalue %dx.types.CBufRet.f32 %4028, 0
  %4030 = extractvalue %dx.types.CBufRet.f32 %4028, 1
  %4031 = extractvalue %dx.types.CBufRet.f32 %4028, 2
  %4032 = extractvalue %dx.types.CBufRet.f32 %4028, 3
  %4033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4034 = extractvalue %dx.types.CBufRet.f32 %4033, 3
  %4035 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4036 = extractvalue %dx.types.CBufRet.i32 %4035, 0
  %4037 = extractvalue %dx.types.CBufRet.i32 %4035, 1
  %4038 = udiv i32 %4037, %4036
  %4039 = fsub fast float %4026, %4029
  %4040 = fsub fast float %4027, %4030
  %4041 = call float @dx.op.binary.f32(i32 35, float %4039, float 0.000000e+00)  ; FMax(a,b)
  %4042 = call float @dx.op.binary.f32(i32 35, float %4040, float 0.000000e+00)  ; FMax(a,b)
  %4043 = call float @dx.op.binary.f32(i32 36, float %4041, float %4031)  ; FMin(a,b)
  %4044 = call float @dx.op.binary.f32(i32 36, float %4042, float %4032)  ; FMin(a,b)
  %4045 = add i32 %4036, -1
  %4046 = add i32 %4038, -1
  %4047 = fmul fast float %4043, %4034
  %4048 = fmul fast float %4044, %4034
  %4049 = fptoui float %4047 to i32
  %4050 = fptoui float %4048 to i32
  %4051 = call i32 @dx.op.binary.i32(i32 40, i32 %4049, i32 %4045)  ; UMin(a,b)
  %4052 = call i32 @dx.op.binary.i32(i32 40, i32 %4050, i32 %4046)  ; UMin(a,b)
  %4053 = mul i32 %4052, %4036
  %4054 = add i32 %4053, %4051
  %4055 = shl i32 %4054, 2
  %4056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4055, i32 undef)  ; BufferLoad(srv,index,wot)
  %4057 = extractvalue %dx.types.ResRet.i32 %4056, 0
  %4058 = icmp eq i32 %4057, -1
  br i1 %4058, label %4275, label %4059

; <label>:4059                                    ; preds = %4004
  %4060 = mul i32 %4057, 148
  %4061 = add i32 %4060, 4
  %4062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4061, i32 undef)  ; BufferLoad(srv,index,wot)
  %4063 = extractvalue %dx.types.ResRet.f32 %4062, 0
  %4064 = add i32 %4060, 8
  %4065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4064, i32 undef)  ; BufferLoad(srv,index,wot)
  %4066 = extractvalue %dx.types.ResRet.f32 %4065, 0
  %4067 = add i32 %4060, 36
  %4068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4067, i32 undef)  ; BufferLoad(srv,index,wot)
  %4069 = extractvalue %dx.types.ResRet.f32 %4068, 0
  %4070 = add i32 %4060, 60
  %4071 = add i32 %4060, 92
  %4072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4071, i32 undef)  ; BufferLoad(srv,index,wot)
  %4073 = extractvalue %dx.types.ResRet.i32 %4072, 0
  %4074 = add i32 %4060, 116
  %4075 = fsub fast float %4026, %4063
  %4076 = fsub fast float %4027, %4066
  %4077 = fmul fast float %4034, %4075
  %4078 = fmul fast float %4034, %4076
  %4079 = call float @dx.op.unary.f32(i32 7, float %4077)  ; Saturate(value)
  %4080 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4081 = fsub fast float 1.000000e+00, %4080
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 2
  %4084 = call float @dx.op.unary.f32(i32 83, float %4079)  ; DerivCoarseX(value)
  %4085 = call float @dx.op.unary.f32(i32 83, float %4081)  ; DerivCoarseX(value)
  %4086 = call float @dx.op.unary.f32(i32 84, float %4079)  ; DerivCoarseY(value)
  %4087 = call float @dx.op.unary.f32(i32 84, float %4081)  ; DerivCoarseY(value)
  %4088 = fmul fast float %4084, %4083
  %4089 = fmul fast float %4085, %4083
  %4090 = fmul fast float %4086, %4083
  %4091 = fmul fast float %4087, %4083
  %4092 = call float @dx.op.dot2.f32(i32 54, float %4090, float %4091, float %4090, float %4091)  ; Dot2(ax,ay,bx,by)
  %4093 = call float @dx.op.dot2.f32(i32 54, float %4088, float %4089, float %4088, float %4089)  ; Dot2(ax,ay,bx,by)
  %4094 = call float @dx.op.binary.f32(i32 35, float %4093, float %4092)  ; FMax(a,b)
  %4095 = call float @dx.op.unary.f32(i32 23, float %4094)  ; Log(value)
  %4096 = fmul fast float %4095, 5.000000e-01
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 1
  %4099 = fadd fast float %4098, %4096
  %4100 = call float @dx.op.binary.f32(i32 35, float %4099, float 0.000000e+00)  ; FMax(a,b)
  %4101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4102 = extractvalue %dx.types.CBufRet.f32 %4101, 3
  %4103 = fadd fast float %4102, %4100
  %4104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.f32 %4104, 3
  %4106 = fadd fast float %4103, %4105
  %4107 = add i32 %4073, 0
  %4108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4107, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4109 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4108, i32 0)  ; GetDimensions(handle,mipLevel)
  %4110 = extractvalue %dx.types.Dimensions %4109, 0
  %4111 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4110)  ; FirstbitLo(value)
  %4112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4113 = extractvalue %dx.types.CBufRet.i32 %4112, 1
  %4114 = sub nsw i32 %4113, %4111
  %4115 = sitofp i32 %4114 to float
  %4116 = fsub fast float %4106, %4115
  %4117 = call float @dx.op.binary.f32(i32 35, float %4116, float 0.000000e+00)  ; FMax(a,b)
  %4118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4108, %dx.types.Handle %53, float %4079, float %4081, float %4069, float undef, i32 0, i32 0, i32 undef, float %4117)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4119 = extractvalue %dx.types.ResRet.f32 %4118, 0
  %4120 = fcmp ule float %4119, 0x3FE0101020000000
  %4121 = extractvalue %dx.types.CBufRet.i32 %4112, 0
  %4122 = and i32 %4121, 128
  %4123 = icmp ne i32 %4122, 0
  %4124 = and i1 %4120, %4123
  br i1 %4124, label %4275, label %4125

; <label>:4125                                    ; preds = %4059
  %4126 = add i32 %4060, 20
  %4127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4126, i32 undef)  ; BufferLoad(srv,index,wot)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = add i32 %4060, 24
  %4130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4129, i32 undef)  ; BufferLoad(srv,index,wot)
  %4131 = extractvalue %dx.types.ResRet.f32 %4130, 0
  %4132 = add i32 %4060, 40
  %4133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4132, i32 undef)  ; BufferLoad(srv,index,wot)
  %4134 = extractvalue %dx.types.ResRet.f32 %4133, 0
  %4135 = add i32 %4060, 96
  %4136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4135, i32 undef)  ; BufferLoad(srv,index,wot)
  %4137 = extractvalue %dx.types.ResRet.i32 %4136, 0
  %4138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4139 = extractvalue %dx.types.CBufRet.f32 %4138, 2
  %4140 = fmul fast float %4139, %4079
  %4141 = fmul fast float %4139, %4081
  %4142 = extractvalue %dx.types.CBufRet.f32 %4138, 3
  %4143 = fadd fast float %4140, %4142
  %4144 = fadd fast float %4141, %4142
  %4145 = add i32 %4137, 0
  %4146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4145, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4147 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4146, i32 0)  ; GetDimensions(handle,mipLevel)
  %4148 = extractvalue %dx.types.Dimensions %4147, 0
  %4149 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4148)  ; FirstbitLo(value)
  %4150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.i32 %4150, 1
  %4152 = sub nsw i32 %4151, %4149
  %4153 = sitofp i32 %4152 to float
  %4154 = fsub fast float %4103, %4153
  %4155 = call float @dx.op.binary.f32(i32 35, float %4154, float 0.000000e+00)  ; FMax(a,b)
  %4156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4146, %dx.types.Handle %53, float %4143, float %4144, float %4134, float undef, i32 0, i32 0, i32 undef, float %4155)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4157 = extractvalue %dx.types.ResRet.f32 %4156, 0
  %4158 = fmul fast float %4157, %4128
  %4159 = fadd fast float %4158, %4131
  %4160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.f32 %4160, 0
  %4162 = extractvalue %dx.types.CBufRet.f32 %4160, 1
  %4163 = extractvalue %dx.types.CBufRet.f32 %4160, 2
  %4164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.f32 %4164, 3
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 3
  %4168 = extractvalue %dx.types.CBufRet.f32 %4160, 3
  %4169 = fadd fast float %4165, %4026
  %4170 = fadd fast float %4167, %4027
  %4171 = fadd fast float %4159, %4168
  %4172 = fmul fast float %4169, %4161
  %4173 = call float @dx.op.tertiary.f32(i32 46, float %4170, float %4162, float %4172)  ; FMad(a,b,c)
  %4174 = call float @dx.op.tertiary.f32(i32 46, float %4171, float %4163, float %4173)  ; FMad(a,b,c)
  %4175 = fsub fast float %4174, %4168
  %4176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4176, 2
  %4178 = fsub fast float %4175, %4177
  %4179 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4180 = extractvalue %dx.types.CBufRet.i32 %4179, 0
  %4181 = call i32 @dx.op.binary.i32(i32 40, i32 %4057, i32 %4180)  ; UMin(a,b)
  %4182 = mul i32 %4181, 36
  %4183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4182, i32 undef)  ; BufferLoad(srv,index,wot)
  %4184 = extractvalue %dx.types.ResRet.i32 %4183, 0
  %4185 = add i32 %4182, 4
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 0
  %4188 = fmul fast float %4187, %4079
  %4189 = fmul fast float %4187, %4081
  %4190 = extractvalue %dx.types.CBufRet.f32 %4186, 1
  %4191 = fadd fast float %4188, %4190
  %4192 = fadd fast float %4189, %4190
  %4193 = icmp eq i32 %4184, 0
  br i1 %4193, label %4262, label %4194

; <label>:4194                                    ; preds = %4125
  br label %4195

; <label>:4195                                    ; preds = %4252, %4194
  %4196 = phi float [ %4253, %4252 ], [ 0.000000e+00, %4194 ]
  %4197 = phi float [ %4254, %4252 ], [ 0.000000e+00, %4194 ]
  %4198 = phi float [ %4255, %4252 ], [ 0.000000e+00, %4194 ]
  %4199 = phi float [ %4256, %4252 ], [ 0.000000e+00, %4194 ]
  %4200 = phi float [ %4257, %4252 ], [ 0.000000e+00, %4194 ]
  %4201 = phi float [ %4258, %4252 ], [ 0.000000e+00, %4194 ]
  %4202 = phi i32 [ %4259, %4252 ], [ 0, %4194 ]
  %4203 = shl i32 %4202, 2
  %4204 = add i32 %4070, %4203
  %4205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4204, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.f32 %4205, 0
  %4207 = add i32 %4074, %4203
  %4208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4207, i32 undef)  ; BufferLoad(srv,index,wot)
  %4209 = extractvalue %dx.types.ResRet.i32 %4208, 0
  %4210 = add i32 %4209, 0
  %4211 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4210, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4212 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4211, i32 0)  ; GetDimensions(handle,mipLevel)
  %4213 = extractvalue %dx.types.Dimensions %4212, 0
  %4214 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4213)  ; FirstbitLo(value)
  %4215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4216 = extractvalue %dx.types.CBufRet.i32 %4215, 1
  %4217 = sub nsw i32 %4216, %4214
  %4218 = sitofp i32 %4217 to float
  %4219 = fsub fast float %4103, %4218
  %4220 = call float @dx.op.binary.f32(i32 35, float %4219, float 0.000000e+00)  ; FMax(a,b)
  %4221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4211, %dx.types.Handle %53, float %4191, float %4192, float %4206, float undef, i32 0, i32 0, i32 undef, float %4220)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = fcmp fast ogt float %4222, 0.000000e+00
  br i1 %4223, label %4224, label %4252

; <label>:4224                                    ; preds = %4195
  %4225 = add i32 %4185, %4203
  %4226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4225, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.i32 %4226, 0
  %4228 = and i32 %4227, 32767
  %4229 = mul nuw nsw i32 %4228, 928
  %4230 = add nuw nsw i32 %4229, 48
  %4231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4230, i32 undef)  ; BufferLoad(srv,index,wot)
  %4232 = extractvalue %dx.types.ResRet.f32 %4231, 0
  %4233 = extractvalue %dx.types.ResRet.f32 %4231, 1
  %4234 = extractvalue %dx.types.ResRet.f32 %4231, 2
  %4235 = add nuw nsw i32 %4229, 60
  %4236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4235, i32 undef)  ; BufferLoad(srv,index,wot)
  %4237 = extractvalue %dx.types.ResRet.f32 %4236, 0
  %4238 = extractvalue %dx.types.ResRet.f32 %4236, 1
  %4239 = extractvalue %dx.types.ResRet.f32 %4236, 2
  %4240 = fmul fast float %4232, %4222
  %4241 = fmul fast float %4233, %4222
  %4242 = fmul fast float %4234, %4222
  %4243 = fadd fast float %4240, %4196
  %4244 = fadd fast float %4241, %4197
  %4245 = fadd fast float %4242, %4198
  %4246 = fmul fast float %4237, %4222
  %4247 = fmul fast float %4238, %4222
  %4248 = fmul fast float %4239, %4222
  %4249 = fadd fast float %4246, %4199
  %4250 = fadd fast float %4247, %4200
  %4251 = fadd fast float %4248, %4201
  br label %4252

; <label>:4252                                    ; preds = %4224, %4195
  %4253 = phi float [ %4243, %4224 ], [ %4196, %4195 ]
  %4254 = phi float [ %4244, %4224 ], [ %4197, %4195 ]
  %4255 = phi float [ %4245, %4224 ], [ %4198, %4195 ]
  %4256 = phi float [ %4249, %4224 ], [ %4199, %4195 ]
  %4257 = phi float [ %4250, %4224 ], [ %4200, %4195 ]
  %4258 = phi float [ %4251, %4224 ], [ %4201, %4195 ]
  %4259 = add nuw i32 %4202, 1
  %4260 = icmp eq i32 %4259, %4184
  br i1 %4260, label %4261, label %4195

; <label>:4261                                    ; preds = %4252
  br label %4262

; <label>:4262                                    ; preds = %4261, %4125
  %4263 = phi float [ 0.000000e+00, %4125 ], [ %4253, %4261 ]
  %4264 = phi float [ 0.000000e+00, %4125 ], [ %4254, %4261 ]
  %4265 = phi float [ 0.000000e+00, %4125 ], [ %4255, %4261 ]
  %4266 = phi float [ 0.000000e+00, %4125 ], [ %4256, %4261 ]
  %4267 = phi float [ 0.000000e+00, %4125 ], [ %4257, %4261 ]
  %4268 = phi float [ 0.000000e+00, %4125 ], [ %4258, %4261 ]
  %4269 = fadd fast float %4266, %4263
  %4270 = fmul fast float %4269, 0x3F847AE140000000
  %4271 = fadd fast float %4267, %4264
  %4272 = fmul fast float %4271, 0x3F847AE140000000
  %4273 = fadd fast float %4268, %4265
  %4274 = fmul fast float %4273, 0x3F847AE140000000
  br label %4275

; <label>:4275                                    ; preds = %4262, %4059, %4004, %4001, %3972, %3934
  %4276 = phi float [ %3996, %3972 ], [ 0.000000e+00, %3934 ], [ %4270, %4262 ], [ 0.000000e+00, %4004 ], [ 0.000000e+00, %4059 ], [ 0.000000e+00, %4001 ]
  %4277 = phi float [ %3998, %3972 ], [ 0.000000e+00, %3934 ], [ %4272, %4262 ], [ 0.000000e+00, %4004 ], [ 0.000000e+00, %4059 ], [ 0.000000e+00, %4001 ]
  %4278 = phi float [ %4000, %3972 ], [ 0.000000e+00, %3934 ], [ %4274, %4262 ], [ 0.000000e+00, %4004 ], [ 0.000000e+00, %4059 ], [ 0.000000e+00, %4001 ]
  %4279 = phi float [ %3986, %3972 ], [ -1.310720e+05, %3934 ], [ %4178, %4262 ], [ -1.310720e+05, %4004 ], [ -1.310720e+05, %4059 ], [ -1.310720e+05, %4001 ]
  %4280 = phi i1 [ true, %3972 ], [ false, %3934 ], [ true, %4262 ], [ false, %4004 ], [ false, %4059 ], [ false, %4001 ]
  %4281 = and i32 %248, 3
  %4282 = icmp eq i32 %4281, 1
  %4283 = select i1 %4282, float 1.000000e+00, float 0.000000e+00
  %4284 = fsub fast float %4279, %205
  %4285 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4286 = select i1 %4280, float %4285, float 1.000000e+00
  %4287 = fmul fast float %4286, %4283
  %4288 = icmp eq i32 %4281, 3
  %4289 = select i1 %4288, float 1.000000e+00, float %4287
  %4290 = call float @dx.op.binary.f32(i32 35, float %3876, float %4289)  ; FMax(a,b)
  %4291 = fcmp fast olt float %4289, 1.000000e+00
  %4292 = fcmp uge float %77, 0.000000e+00
  %4293 = and i1 %4292, %4291
  br i1 %4293, label %4294, label %4304

; <label>:4294                                    ; preds = %4275
  %4295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %53, float %77, float %78, float %79, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4296 = extractvalue %dx.types.ResRet.f32 %4295, 0
  %4297 = extractvalue %dx.types.ResRet.f32 %4295, 1
  %4298 = extractvalue %dx.types.ResRet.f32 %4295, 2
  %4299 = fadd fast float %4296, %4290
  %4300 = fcmp ule float %76, 0.000000e+00
  %4301 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4302 = select i1 %4300, float %4301, float 1.000000e+00
  %4303 = fmul fast float %4302, %4298
  br label %4304

; <label>:4304                                    ; preds = %4294, %4275
  %4305 = phi float [ %4299, %4294 ], [ %4290, %4275 ]
  %4306 = phi float [ %4297, %4294 ], [ 0.000000e+00, %4275 ]
  %4307 = phi float [ %4303, %4294 ], [ 0.000000e+00, %4275 ]
  %4308 = call float @dx.op.unary.f32(i32 7, float %4305)  ; Saturate(value)
  %4309 = call float @dx.op.unary.f32(i32 7, float %4306)  ; Saturate(value)
  %4310 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4311 = fcmp fast une float %4309, 0.000000e+00
  %4312 = fcmp fast une float %4310, 0.000000e+00
  %4313 = or i1 %4311, %4312
  br i1 %4313, label %4314, label %4873

; <label>:4314                                    ; preds = %4304
  br i1 %4311, label %4315, label %4588

; <label>:4315                                    ; preds = %4314
  %4316 = call float @dx.op.unary.f32(i32 23, float %3873)  ; Log(value)
  %4317 = fmul fast float %4316, 4.000000e+00
  %4318 = call float @dx.op.unary.f32(i32 21, float %4317)  ; Exp(value)
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 0
  %4321 = fmul fast float %4320, %64
  %4322 = fmul fast float %4320, %65
  %4323 = fmul fast float %4320, %66
  %4324 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4325 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4326 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4327 = call float @dx.op.unary.f32(i32 23, float %4324)  ; Log(value)
  %4328 = call float @dx.op.unary.f32(i32 23, float %4325)  ; Log(value)
  %4329 = call float @dx.op.unary.f32(i32 23, float %4326)  ; Log(value)
  %4330 = fmul fast float %4327, 4.000000e+00
  %4331 = fmul fast float %4328, 4.000000e+00
  %4332 = fmul fast float %4329, 4.000000e+00
  %4333 = call float @dx.op.unary.f32(i32 21, float %4330)  ; Exp(value)
  %4334 = call float @dx.op.unary.f32(i32 21, float %4331)  ; Exp(value)
  %4335 = call float @dx.op.unary.f32(i32 21, float %4332)  ; Exp(value)
  %4336 = fadd fast float %4334, %4333
  %4337 = fadd fast float %4336, %4335
  %4338 = fdiv fast float 1.000000e+00, %4337
  %4339 = fmul fast float %4338, %4333
  %4340 = fcmp fast ogt float %73, 0.000000e+00
  %4341 = fcmp fast ogt float %74, 0.000000e+00
  %4342 = fcmp fast ogt float %75, 0.000000e+00
  %4343 = fcmp fast olt float %73, 0.000000e+00
  %4344 = fcmp fast olt float %74, 0.000000e+00
  %4345 = fcmp fast olt float %75, 0.000000e+00
  %4346 = zext i1 %4340 to i32
  %4347 = zext i1 %4341 to i32
  %4348 = zext i1 %4342 to i32
  %4349 = zext i1 %4343 to i32
  %4350 = zext i1 %4344 to i32
  %4351 = zext i1 %4345 to i32
  %4352 = sub nsw i32 %4346, %4349
  %4353 = sub nsw i32 %4347, %4350
  %4354 = sub nsw i32 %4348, %4351
  %4355 = call float @dx.op.unary.f32(i32 83, float %4321)  ; DerivCoarseX(value)
  %4356 = call float @dx.op.unary.f32(i32 83, float %4322)  ; DerivCoarseX(value)
  %4357 = call float @dx.op.unary.f32(i32 83, float %4323)  ; DerivCoarseX(value)
  %4358 = call float @dx.op.unary.f32(i32 84, float %4321)  ; DerivCoarseY(value)
  %4359 = call float @dx.op.unary.f32(i32 84, float %4322)  ; DerivCoarseY(value)
  %4360 = call float @dx.op.unary.f32(i32 84, float %4323)  ; DerivCoarseY(value)
  %4361 = fcmp fast ole float %280, %4339
  %4362 = fmul fast float %4338, %4336
  %4363 = fcmp fast ole float %280, %4362
  %4364 = select i1 %4363, float %4323, float %4321
  %4365 = select i1 %4363, float %4321, float %4322
  %4366 = select i1 %4361, float %4322, float %4364
  %4367 = select i1 %4361, float %4323, float %4365
  %4368 = select i1 %4363, float %4357, float %4355
  %4369 = select i1 %4363, float %4355, float %4356
  %4370 = select i1 %4361, float %4356, float %4368
  %4371 = select i1 %4361, float %4357, float %4369
  %4372 = select i1 %4363, float %4360, float %4358
  %4373 = select i1 %4363, float %4358, float %4359
  %4374 = select i1 %4361, float %4359, float %4372
  %4375 = select i1 %4361, float %4360, float %4373
  %4376 = call float @dx.op.unary.f32(i32 27, float %4366)  ; Round_ni(value)
  %4377 = call float @dx.op.unary.f32(i32 27, float %4367)  ; Round_ni(value)
  %4378 = fptosi float %4376 to i32
  %4379 = fptosi float %4377 to i32
  %4380 = xor i32 %4379, %4378
  %4381 = sitofp i32 %4380 to float
  %4382 = fptosi float %4381 to i32
  %4383 = sitofp i32 %4382 to float
  %4384 = fmul fast float %4383, 0x3FE3C6EF40000000
  %4385 = frem fast float %4376, 2.560000e+02
  %4386 = frem fast float %4377, 2.560000e+02
  %4387 = fptoui float %4385 to i32
  %4388 = fptoui float %4386 to i32
  %4389 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4387, i32 %4388, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4390 = extractvalue %dx.types.ResRet.f32 %4389, 0
  %4391 = extractvalue %dx.types.ResRet.f32 %4389, 1
  %4392 = extractvalue %dx.types.ResRet.f32 %4389, 2
  %4393 = fadd fast float %4390, %4384
  %4394 = fadd fast float %4391, %4384
  %4395 = fadd fast float %4392, %4384
  %4396 = call float @dx.op.unary.f32(i32 22, float %4393)  ; Frc(value)
  %4397 = call float @dx.op.unary.f32(i32 22, float %4394)  ; Frc(value)
  %4398 = call float @dx.op.unary.f32(i32 22, float %4395)  ; Frc(value)
  %4399 = fmul fast float %4398, 0x401921FB60000000
  %4400 = call float @dx.op.unary.f32(i32 13, float %4399)  ; Sin(value)
  %4401 = call float @dx.op.unary.f32(i32 12, float %4399)  ; Cos(value)
  %4402 = fsub fast float -0.000000e+00, %4401
  %4403 = fmul fast float %4401, %4366
  %4404 = call float @dx.op.tertiary.f32(i32 46, float %4400, float %4367, float %4403)  ; FMad(a,b,c)
  %4405 = fmul fast float %4400, %4366
  %4406 = call float @dx.op.tertiary.f32(i32 46, float %4402, float %4367, float %4405)  ; FMad(a,b,c)
  %4407 = fadd fast float %4404, %4396
  %4408 = fadd fast float %4406, %4397
  %4409 = extractvalue %dx.types.CBufRet.f32 %4319, 3
  %4410 = bitcast float %4409 to i32
  %4411 = icmp eq i32 %4410, 0
  br i1 %4411, label %4450, label %4412

; <label>:4412                                    ; preds = %4315
  %4413 = add i32 %4410, 0
  %4414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4415 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4414, %dx.types.Handle %113, float %4407, float %4408, float undef, float undef, i32 0, i32 0, i32 undef, float %4370, float %4371, float undef, float %4374, float %4375, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4416 = extractvalue %dx.types.ResRet.f32 %4415, 0
  %4417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4418 = extractvalue %dx.types.CBufRet.f32 %4417, 1
  %4419 = extractvalue %dx.types.CBufRet.f32 %4417, 2
  %4420 = fsub fast float 1.000000e+00, %4309
  %4421 = call float @dx.op.binary.f32(i32 35, float %4420, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4422 = bitcast float %4309 to i32
  %4423 = sitofp i32 %4422 to float
  %4424 = fadd fast float %4423, 0xC1CFBF8940000000
  %4425 = fmul fast float %4419, %4424
  %4426 = fadd fast float %4425, 0x41CFBF8940000000
  %4427 = fptosi float %4426 to i32
  %4428 = bitcast i32 %4427 to float
  %4429 = bitcast float %4421 to i32
  %4430 = sitofp i32 %4429 to float
  %4431 = fadd fast float %4430, 0xC1CFBF8940000000
  %4432 = fmul fast float %4431, %4419
  %4433 = fadd fast float %4432, 0x41CFBF8940000000
  %4434 = fptosi float %4433 to i32
  %4435 = bitcast i32 %4434 to float
  %4436 = fmul fast float %4428, %4418
  %4437 = fmul fast float %4435, %4418
  %4438 = fsub fast float %4421, %4436
  %4439 = fadd fast float %4437, %4421
  %4440 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4441 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4442 = fsub fast float %4416, %4440
  %4443 = fsub fast float %4441, %4440
  %4444 = bitcast float %4443 to i32
  %4445 = sub nsw i32 2129859010, %4444
  %4446 = bitcast i32 %4445 to float
  %4447 = fmul fast float %4446, %4442
  %4448 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4449 = fcmp fast olt float %4448, 0x3F70101020000000
  br i1 %4449, label %4588, label %4450

; <label>:4450                                    ; preds = %4412, %4315
  %4451 = phi float [ %4448, %4412 ], [ %4309, %4315 ]
  %4452 = fmul fast float %4451, %4318
  %4453 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4454 = extractvalue %dx.types.CBufRet.i32 %4453, 1
  %4455 = extractvalue %dx.types.CBufRet.i32 %4453, 0
  %4456 = add i32 %4455, 0
  %4457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4456, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4458 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4457, %dx.types.Handle %112, float %4407, float %4408, float undef, float undef, i32 0, i32 0, i32 undef, float %4370, float %4371, float undef, float %4374, float %4375, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4459 = extractvalue %dx.types.ResRet.f32 %4458, 0
  %4460 = extractvalue %dx.types.ResRet.f32 %4458, 1
  %4461 = extractvalue %dx.types.ResRet.f32 %4458, 2
  %4462 = extractvalue %dx.types.ResRet.f32 %4458, 3
  %4463 = and i32 %4454, 255
  %4464 = uitofp i32 %4463 to float
  %4465 = lshr i32 %4454, 8
  %4466 = and i32 %4465, 255
  %4467 = uitofp i32 %4466 to float
  %4468 = fmul fast float %4462, %4464
  %4469 = fadd fast float %4468, %4467
  %4470 = fmul fast float %4469, 0x3F70101000000000
  %4471 = fadd fast float %4470, 0xBFB99999A0000000
  %4472 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4473 = fmul fast float %4472, 0x3FF1C71C80000000
  %4474 = call float @dx.op.binary.f32(i32 36, float %4470, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4475 = fsub fast float 1.000000e+00, %4473
  %4476 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4477 = fmul fast float %4476, %4459
  %4478 = fmul fast float %4476, %4460
  %4479 = fmul fast float %4476, %4461
  %4480 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4481 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4482 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4483 = fmul fast float %4473, %4459
  %4484 = fmul fast float %4473, %4460
  %4485 = fmul fast float %4473, %4461
  %4486 = fadd fast float %4483, %4474
  %4487 = fadd fast float %4484, %4474
  %4488 = fadd fast float %4485, %4474
  %4489 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4490 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4491 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4493 = extractvalue %dx.types.CBufRet.i32 %4492, 3
  %4494 = extractvalue %dx.types.CBufRet.i32 %4492, 2
  %4495 = add i32 %4494, 0
  %4496 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4495, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4497 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4496, %dx.types.Handle %112, float %4407, float %4408, float undef, float undef, i32 0, i32 0, i32 undef, float %4370, float %4371, float undef, float %4374, float %4375, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4498 = extractvalue %dx.types.ResRet.f32 %4497, 0
  %4499 = extractvalue %dx.types.ResRet.f32 %4497, 1
  %4500 = extractvalue %dx.types.ResRet.f32 %4497, 2
  %4501 = extractvalue %dx.types.ResRet.f32 %4497, 3
  %4502 = and i32 %4493, 255
  %4503 = uitofp i32 %4502 to float
  %4504 = lshr i32 %4493, 8
  %4505 = and i32 %4504, 255
  %4506 = uitofp i32 %4505 to float
  %4507 = lshr i32 %4493, 16
  %4508 = and i32 %4507, 255
  %4509 = uitofp i32 %4508 to float
  %4510 = fmul fast float %4509, 0x3F70101000000000
  %4511 = fmul fast float %4498, %4503
  %4512 = fadd fast float %4511, %4506
  %4513 = fmul fast float %4512, 0x3F70101000000000
  %4514 = fadd fast float %4499, -5.000000e-01
  %4515 = fadd fast float %4501, -5.000000e-01
  %4516 = fmul fast float %4514, %4510
  %4517 = fmul fast float %4515, %4510
  %4518 = fadd fast float %4516, 5.000000e-01
  %4519 = fadd fast float %4517, 5.000000e-01
  %4520 = fmul fast float %4518, 2.000000e+00
  %4521 = fadd fast float %4520, -1.000000e+00
  %4522 = fmul fast float %4519, 2.000000e+00
  %4523 = fadd fast float %4522, -1.000000e+00
  %4524 = fadd fast float %4521, %4523
  %4525 = fmul fast float %4524, 5.000000e-01
  %4526 = fsub fast float %4521, %4523
  %4527 = fmul fast float %4526, 5.000000e-01
  %4528 = call float @dx.op.unary.f32(i32 6, float %4525)  ; FAbs(value)
  %4529 = fsub fast float 1.000000e+00, %4528
  %4530 = call float @dx.op.unary.f32(i32 6, float %4527)  ; FAbs(value)
  %4531 = fsub fast float %4529, %4530
  %4532 = call float @dx.op.dot3.f32(i32 55, float %4525, float %4527, float %4531, float %4525, float %4527, float %4531)  ; Dot3(ax,ay,az,bx,by,bz)
  %4533 = call float @dx.op.unary.f32(i32 25, float %4532)  ; Rsqrt(value)
  %4534 = fmul fast float %4525, %4533
  %4535 = fmul fast float %4527, %4533
  %4536 = select i1 %4363, i32 %4353, i32 %4354
  %4537 = select i1 %4361, i32 %4352, i32 %4536
  %4538 = sitofp i32 %4537 to float
  %4539 = fmul fast float %4531, %4538
  %4540 = fmul fast float %4539, %4533
  %4541 = select i1 %4363, float %4540, float %4535
  %4542 = select i1 %4363, float %4535, float %4540
  %4543 = select i1 %4361, float %4540, float %4534
  %4544 = select i1 %4361, float %4535, float %4541
  %4545 = select i1 %4361, float %4534, float %4542
  %4546 = fsub fast float %4480, %3913
  %4547 = fsub fast float %4481, %3914
  %4548 = fsub fast float %4482, %3915
  %4549 = fmul fast float %4546, %4452
  %4550 = fmul fast float %4547, %4452
  %4551 = fmul fast float %4548, %4452
  %4552 = fadd fast float %4549, %3913
  %4553 = fadd fast float %4550, %3914
  %4554 = fadd fast float %4551, %3915
  %4555 = fsub fast float %4489, %3898
  %4556 = fsub fast float %4490, %3899
  %4557 = fsub fast float %4491, %3900
  %4558 = fmul fast float %4555, %4452
  %4559 = fmul fast float %4556, %4452
  %4560 = fmul fast float %4557, %4452
  %4561 = fadd fast float %4558, %3898
  %4562 = fadd fast float %4559, %3899
  %4563 = fadd fast float %4560, %3900
  %4564 = fadd fast float %4543, %3864
  %4565 = fadd fast float %4544, %3865
  %4566 = fadd fast float %4545, %3866
  %4567 = call float @dx.op.dot3.f32(i32 55, float %4564, float %4565, float %4566, float %4564, float %4565, float %4566)  ; Dot3(ax,ay,az,bx,by,bz)
  %4568 = call float @dx.op.unary.f32(i32 25, float %4567)  ; Rsqrt(value)
  %4569 = fmul fast float %4564, %4568
  %4570 = fmul fast float %4565, %4568
  %4571 = fmul fast float %4566, %4568
  %4572 = fsub fast float %4569, %3864
  %4573 = fsub fast float %4570, %3865
  %4574 = fsub fast float %4571, %3866
  %4575 = fmul fast float %4572, %4452
  %4576 = fmul fast float %4573, %4452
  %4577 = fmul fast float %4574, %4452
  %4578 = fadd fast float %4575, %3864
  %4579 = fadd fast float %4576, %3865
  %4580 = fadd fast float %4577, %3866
  %4581 = call float @dx.op.binary.f32(i32 36, float %3873, float %4500)  ; FMin(a,b)
  %4582 = fsub fast float %4581, %3873
  %4583 = fmul fast float %4582, %4452
  %4584 = fadd fast float %4583, %3873
  %4585 = fsub fast float %4513, %3901
  %4586 = fmul fast float %4585, %4452
  %4587 = fadd fast float %4586, %3901
  br label %4588

; <label>:4588                                    ; preds = %4450, %4412, %4314
  %4589 = phi float [ %4561, %4450 ], [ %3898, %4412 ], [ %3898, %4314 ]
  %4590 = phi float [ %4562, %4450 ], [ %3899, %4412 ], [ %3899, %4314 ]
  %4591 = phi float [ %4563, %4450 ], [ %3900, %4412 ], [ %3900, %4314 ]
  %4592 = phi float [ %4578, %4450 ], [ %3864, %4412 ], [ %3864, %4314 ]
  %4593 = phi float [ %4579, %4450 ], [ %3865, %4412 ], [ %3865, %4314 ]
  %4594 = phi float [ %4580, %4450 ], [ %3866, %4412 ], [ %3866, %4314 ]
  %4595 = phi float [ %4552, %4450 ], [ %3913, %4412 ], [ %3913, %4314 ]
  %4596 = phi float [ %4553, %4450 ], [ %3914, %4412 ], [ %3914, %4314 ]
  %4597 = phi float [ %4554, %4450 ], [ %3915, %4412 ], [ %3915, %4314 ]
  %4598 = phi float [ %4587, %4450 ], [ %3901, %4412 ], [ %3901, %4314 ]
  %4599 = phi float [ %4584, %4450 ], [ %3873, %4412 ], [ %3873, %4314 ]
  br i1 %4312, label %4600, label %4873

; <label>:4600                                    ; preds = %4588
  %4601 = call float @dx.op.unary.f32(i32 23, float %4599)  ; Log(value)
  %4602 = fmul fast float %4601, 4.000000e+00
  %4603 = call float @dx.op.unary.f32(i32 21, float %4602)  ; Exp(value)
  %4604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4605 = extractvalue %dx.types.CBufRet.f32 %4604, 0
  %4606 = fmul fast float %4605, %64
  %4607 = fmul fast float %4605, %65
  %4608 = fmul fast float %4605, %66
  %4609 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4610 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4611 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4612 = call float @dx.op.unary.f32(i32 23, float %4609)  ; Log(value)
  %4613 = call float @dx.op.unary.f32(i32 23, float %4610)  ; Log(value)
  %4614 = call float @dx.op.unary.f32(i32 23, float %4611)  ; Log(value)
  %4615 = fmul fast float %4612, 4.000000e+00
  %4616 = fmul fast float %4613, 4.000000e+00
  %4617 = fmul fast float %4614, 4.000000e+00
  %4618 = call float @dx.op.unary.f32(i32 21, float %4615)  ; Exp(value)
  %4619 = call float @dx.op.unary.f32(i32 21, float %4616)  ; Exp(value)
  %4620 = call float @dx.op.unary.f32(i32 21, float %4617)  ; Exp(value)
  %4621 = fadd fast float %4619, %4618
  %4622 = fadd fast float %4621, %4620
  %4623 = fdiv fast float 1.000000e+00, %4622
  %4624 = fmul fast float %4623, %4618
  %4625 = fcmp fast ogt float %73, 0.000000e+00
  %4626 = fcmp fast ogt float %74, 0.000000e+00
  %4627 = fcmp fast ogt float %75, 0.000000e+00
  %4628 = fcmp fast olt float %73, 0.000000e+00
  %4629 = fcmp fast olt float %74, 0.000000e+00
  %4630 = fcmp fast olt float %75, 0.000000e+00
  %4631 = zext i1 %4625 to i32
  %4632 = zext i1 %4626 to i32
  %4633 = zext i1 %4627 to i32
  %4634 = zext i1 %4628 to i32
  %4635 = zext i1 %4629 to i32
  %4636 = zext i1 %4630 to i32
  %4637 = sub nsw i32 %4631, %4634
  %4638 = sub nsw i32 %4632, %4635
  %4639 = sub nsw i32 %4633, %4636
  %4640 = call float @dx.op.unary.f32(i32 83, float %4606)  ; DerivCoarseX(value)
  %4641 = call float @dx.op.unary.f32(i32 83, float %4607)  ; DerivCoarseX(value)
  %4642 = call float @dx.op.unary.f32(i32 83, float %4608)  ; DerivCoarseX(value)
  %4643 = call float @dx.op.unary.f32(i32 84, float %4606)  ; DerivCoarseY(value)
  %4644 = call float @dx.op.unary.f32(i32 84, float %4607)  ; DerivCoarseY(value)
  %4645 = call float @dx.op.unary.f32(i32 84, float %4608)  ; DerivCoarseY(value)
  %4646 = fcmp fast ole float %280, %4624
  %4647 = fmul fast float %4623, %4621
  %4648 = fcmp fast ole float %280, %4647
  %4649 = select i1 %4648, float %4608, float %4606
  %4650 = select i1 %4648, float %4606, float %4607
  %4651 = select i1 %4646, float %4607, float %4649
  %4652 = select i1 %4646, float %4608, float %4650
  %4653 = select i1 %4648, float %4642, float %4640
  %4654 = select i1 %4648, float %4640, float %4641
  %4655 = select i1 %4646, float %4641, float %4653
  %4656 = select i1 %4646, float %4642, float %4654
  %4657 = select i1 %4648, float %4645, float %4643
  %4658 = select i1 %4648, float %4643, float %4644
  %4659 = select i1 %4646, float %4644, float %4657
  %4660 = select i1 %4646, float %4645, float %4658
  %4661 = call float @dx.op.unary.f32(i32 27, float %4651)  ; Round_ni(value)
  %4662 = call float @dx.op.unary.f32(i32 27, float %4652)  ; Round_ni(value)
  %4663 = fptosi float %4661 to i32
  %4664 = fptosi float %4662 to i32
  %4665 = xor i32 %4664, %4663
  %4666 = sitofp i32 %4665 to float
  %4667 = fptosi float %4666 to i32
  %4668 = sitofp i32 %4667 to float
  %4669 = fmul fast float %4668, 0x3FE3C6EF40000000
  %4670 = frem fast float %4661, 2.560000e+02
  %4671 = frem fast float %4662, 2.560000e+02
  %4672 = fptoui float %4670 to i32
  %4673 = fptoui float %4671 to i32
  %4674 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4672, i32 %4673, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4675 = extractvalue %dx.types.ResRet.f32 %4674, 0
  %4676 = extractvalue %dx.types.ResRet.f32 %4674, 1
  %4677 = extractvalue %dx.types.ResRet.f32 %4674, 2
  %4678 = fadd fast float %4675, %4669
  %4679 = fadd fast float %4676, %4669
  %4680 = fadd fast float %4677, %4669
  %4681 = call float @dx.op.unary.f32(i32 22, float %4678)  ; Frc(value)
  %4682 = call float @dx.op.unary.f32(i32 22, float %4679)  ; Frc(value)
  %4683 = call float @dx.op.unary.f32(i32 22, float %4680)  ; Frc(value)
  %4684 = fmul fast float %4683, 0x401921FB60000000
  %4685 = call float @dx.op.unary.f32(i32 13, float %4684)  ; Sin(value)
  %4686 = call float @dx.op.unary.f32(i32 12, float %4684)  ; Cos(value)
  %4687 = fsub fast float -0.000000e+00, %4686
  %4688 = fmul fast float %4686, %4651
  %4689 = call float @dx.op.tertiary.f32(i32 46, float %4685, float %4652, float %4688)  ; FMad(a,b,c)
  %4690 = fmul fast float %4685, %4651
  %4691 = call float @dx.op.tertiary.f32(i32 46, float %4687, float %4652, float %4690)  ; FMad(a,b,c)
  %4692 = fadd fast float %4689, %4681
  %4693 = fadd fast float %4691, %4682
  %4694 = extractvalue %dx.types.CBufRet.f32 %4604, 3
  %4695 = bitcast float %4694 to i32
  %4696 = icmp eq i32 %4695, 0
  br i1 %4696, label %4735, label %4697

; <label>:4697                                    ; preds = %4600
  %4698 = add i32 %4695, 0
  %4699 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4698, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4700 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4699, %dx.types.Handle %113, float %4692, float %4693, float undef, float undef, i32 0, i32 0, i32 undef, float %4655, float %4656, float undef, float %4659, float %4660, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4701 = extractvalue %dx.types.ResRet.f32 %4700, 0
  %4702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4703 = extractvalue %dx.types.CBufRet.f32 %4702, 1
  %4704 = extractvalue %dx.types.CBufRet.f32 %4702, 2
  %4705 = fsub fast float 1.000000e+00, %4310
  %4706 = call float @dx.op.binary.f32(i32 35, float %4705, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4707 = bitcast float %4310 to i32
  %4708 = sitofp i32 %4707 to float
  %4709 = fadd fast float %4708, 0xC1CFBF8940000000
  %4710 = fmul fast float %4704, %4709
  %4711 = fadd fast float %4710, 0x41CFBF8940000000
  %4712 = fptosi float %4711 to i32
  %4713 = bitcast i32 %4712 to float
  %4714 = bitcast float %4706 to i32
  %4715 = sitofp i32 %4714 to float
  %4716 = fadd fast float %4715, 0xC1CFBF8940000000
  %4717 = fmul fast float %4716, %4704
  %4718 = fadd fast float %4717, 0x41CFBF8940000000
  %4719 = fptosi float %4718 to i32
  %4720 = bitcast i32 %4719 to float
  %4721 = fmul fast float %4713, %4703
  %4722 = fmul fast float %4720, %4703
  %4723 = fsub fast float %4706, %4721
  %4724 = fadd fast float %4722, %4706
  %4725 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4726 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4727 = fsub fast float %4701, %4725
  %4728 = fsub fast float %4726, %4725
  %4729 = bitcast float %4728 to i32
  %4730 = sub nsw i32 2129859010, %4729
  %4731 = bitcast i32 %4730 to float
  %4732 = fmul fast float %4731, %4727
  %4733 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4734 = fcmp fast olt float %4733, 0x3F70101020000000
  br i1 %4734, label %4873, label %4735

; <label>:4735                                    ; preds = %4697, %4600
  %4736 = phi float [ %4733, %4697 ], [ %4310, %4600 ]
  %4737 = fmul fast float %4736, %4603
  %4738 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4739 = extractvalue %dx.types.CBufRet.i32 %4738, 1
  %4740 = extractvalue %dx.types.CBufRet.i32 %4738, 0
  %4741 = add i32 %4740, 0
  %4742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4743 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4742, %dx.types.Handle %112, float %4692, float %4693, float undef, float undef, i32 0, i32 0, i32 undef, float %4655, float %4656, float undef, float %4659, float %4660, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4744 = extractvalue %dx.types.ResRet.f32 %4743, 0
  %4745 = extractvalue %dx.types.ResRet.f32 %4743, 1
  %4746 = extractvalue %dx.types.ResRet.f32 %4743, 2
  %4747 = extractvalue %dx.types.ResRet.f32 %4743, 3
  %4748 = and i32 %4739, 255
  %4749 = uitofp i32 %4748 to float
  %4750 = lshr i32 %4739, 8
  %4751 = and i32 %4750, 255
  %4752 = uitofp i32 %4751 to float
  %4753 = fmul fast float %4747, %4749
  %4754 = fadd fast float %4753, %4752
  %4755 = fmul fast float %4754, 0x3F70101000000000
  %4756 = fadd fast float %4755, 0xBFB99999A0000000
  %4757 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4758 = fmul fast float %4757, 0x3FF1C71C80000000
  %4759 = call float @dx.op.binary.f32(i32 36, float %4755, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4760 = fsub fast float 1.000000e+00, %4758
  %4761 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4762 = fmul fast float %4761, %4744
  %4763 = fmul fast float %4761, %4745
  %4764 = fmul fast float %4761, %4746
  %4765 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  %4766 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4767 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4768 = fmul fast float %4758, %4744
  %4769 = fmul fast float %4758, %4745
  %4770 = fmul fast float %4758, %4746
  %4771 = fadd fast float %4768, %4759
  %4772 = fadd fast float %4769, %4759
  %4773 = fadd fast float %4770, %4759
  %4774 = call float @dx.op.unary.f32(i32 7, float %4771)  ; Saturate(value)
  %4775 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4776 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  %4777 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4778 = extractvalue %dx.types.CBufRet.i32 %4777, 3
  %4779 = extractvalue %dx.types.CBufRet.i32 %4777, 2
  %4780 = add i32 %4779, 0
  %4781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4780, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4782 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4781, %dx.types.Handle %112, float %4692, float %4693, float undef, float undef, i32 0, i32 0, i32 undef, float %4655, float %4656, float undef, float %4659, float %4660, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4783 = extractvalue %dx.types.ResRet.f32 %4782, 0
  %4784 = extractvalue %dx.types.ResRet.f32 %4782, 1
  %4785 = extractvalue %dx.types.ResRet.f32 %4782, 2
  %4786 = extractvalue %dx.types.ResRet.f32 %4782, 3
  %4787 = and i32 %4778, 255
  %4788 = uitofp i32 %4787 to float
  %4789 = lshr i32 %4778, 8
  %4790 = and i32 %4789, 255
  %4791 = uitofp i32 %4790 to float
  %4792 = lshr i32 %4778, 16
  %4793 = and i32 %4792, 255
  %4794 = uitofp i32 %4793 to float
  %4795 = fmul fast float %4794, 0x3F70101000000000
  %4796 = fmul fast float %4783, %4788
  %4797 = fadd fast float %4796, %4791
  %4798 = fmul fast float %4797, 0x3F70101000000000
  %4799 = fadd fast float %4784, -5.000000e-01
  %4800 = fadd fast float %4786, -5.000000e-01
  %4801 = fmul fast float %4799, %4795
  %4802 = fmul fast float %4800, %4795
  %4803 = fadd fast float %4801, 5.000000e-01
  %4804 = fadd fast float %4802, 5.000000e-01
  %4805 = fmul fast float %4803, 2.000000e+00
  %4806 = fadd fast float %4805, -1.000000e+00
  %4807 = fmul fast float %4804, 2.000000e+00
  %4808 = fadd fast float %4807, -1.000000e+00
  %4809 = fadd fast float %4806, %4808
  %4810 = fmul fast float %4809, 5.000000e-01
  %4811 = fsub fast float %4806, %4808
  %4812 = fmul fast float %4811, 5.000000e-01
  %4813 = call float @dx.op.unary.f32(i32 6, float %4810)  ; FAbs(value)
  %4814 = fsub fast float 1.000000e+00, %4813
  %4815 = call float @dx.op.unary.f32(i32 6, float %4812)  ; FAbs(value)
  %4816 = fsub fast float %4814, %4815
  %4817 = call float @dx.op.dot3.f32(i32 55, float %4810, float %4812, float %4816, float %4810, float %4812, float %4816)  ; Dot3(ax,ay,az,bx,by,bz)
  %4818 = call float @dx.op.unary.f32(i32 25, float %4817)  ; Rsqrt(value)
  %4819 = fmul fast float %4810, %4818
  %4820 = fmul fast float %4812, %4818
  %4821 = select i1 %4648, i32 %4638, i32 %4639
  %4822 = select i1 %4646, i32 %4637, i32 %4821
  %4823 = sitofp i32 %4822 to float
  %4824 = fmul fast float %4816, %4823
  %4825 = fmul fast float %4824, %4818
  %4826 = select i1 %4648, float %4825, float %4820
  %4827 = select i1 %4648, float %4820, float %4825
  %4828 = select i1 %4646, float %4825, float %4819
  %4829 = select i1 %4646, float %4820, float %4826
  %4830 = select i1 %4646, float %4819, float %4827
  %4831 = fsub fast float %4765, %4595
  %4832 = fsub fast float %4766, %4596
  %4833 = fsub fast float %4767, %4597
  %4834 = fmul fast float %4831, %4737
  %4835 = fmul fast float %4832, %4737
  %4836 = fmul fast float %4833, %4737
  %4837 = fadd fast float %4834, %4595
  %4838 = fadd fast float %4835, %4596
  %4839 = fadd fast float %4836, %4597
  %4840 = fsub fast float %4774, %4589
  %4841 = fsub fast float %4775, %4590
  %4842 = fsub fast float %4776, %4591
  %4843 = fmul fast float %4840, %4737
  %4844 = fmul fast float %4841, %4737
  %4845 = fmul fast float %4842, %4737
  %4846 = fadd fast float %4843, %4589
  %4847 = fadd fast float %4844, %4590
  %4848 = fadd fast float %4845, %4591
  %4849 = fadd fast float %4828, %4592
  %4850 = fadd fast float %4829, %4593
  %4851 = fadd fast float %4830, %4594
  %4852 = call float @dx.op.dot3.f32(i32 55, float %4849, float %4850, float %4851, float %4849, float %4850, float %4851)  ; Dot3(ax,ay,az,bx,by,bz)
  %4853 = call float @dx.op.unary.f32(i32 25, float %4852)  ; Rsqrt(value)
  %4854 = fmul fast float %4849, %4853
  %4855 = fmul fast float %4850, %4853
  %4856 = fmul fast float %4851, %4853
  %4857 = fsub fast float %4854, %4592
  %4858 = fsub fast float %4855, %4593
  %4859 = fsub fast float %4856, %4594
  %4860 = fmul fast float %4857, %4737
  %4861 = fmul fast float %4858, %4737
  %4862 = fmul fast float %4859, %4737
  %4863 = fadd fast float %4860, %4592
  %4864 = fadd fast float %4861, %4593
  %4865 = fadd fast float %4862, %4594
  %4866 = call float @dx.op.binary.f32(i32 36, float %4599, float %4785)  ; FMin(a,b)
  %4867 = fsub fast float %4866, %4599
  %4868 = fmul fast float %4867, %4737
  %4869 = fadd fast float %4868, %4599
  %4870 = fsub fast float %4798, %4598
  %4871 = fmul fast float %4870, %4737
  %4872 = fadd fast float %4871, %4598
  br label %4873

; <label>:4873                                    ; preds = %4735, %4697, %4588, %4304
  %4874 = phi float [ %4846, %4735 ], [ %4589, %4697 ], [ %4589, %4588 ], [ %3898, %4304 ]
  %4875 = phi float [ %4847, %4735 ], [ %4590, %4697 ], [ %4590, %4588 ], [ %3899, %4304 ]
  %4876 = phi float [ %4848, %4735 ], [ %4591, %4697 ], [ %4591, %4588 ], [ %3900, %4304 ]
  %4877 = phi float [ %4863, %4735 ], [ %4592, %4697 ], [ %4592, %4588 ], [ %3864, %4304 ]
  %4878 = phi float [ %4864, %4735 ], [ %4593, %4697 ], [ %4593, %4588 ], [ %3865, %4304 ]
  %4879 = phi float [ %4865, %4735 ], [ %4594, %4697 ], [ %4594, %4588 ], [ %3866, %4304 ]
  %4880 = phi float [ %4837, %4735 ], [ %4595, %4697 ], [ %4595, %4588 ], [ %3913, %4304 ]
  %4881 = phi float [ %4838, %4735 ], [ %4596, %4697 ], [ %4596, %4588 ], [ %3914, %4304 ]
  %4882 = phi float [ %4839, %4735 ], [ %4597, %4697 ], [ %4597, %4588 ], [ %3915, %4304 ]
  %4883 = phi float [ %4872, %4735 ], [ %4598, %4697 ], [ %4598, %4588 ], [ %3901, %4304 ]
  %4884 = phi float [ %4869, %4735 ], [ %4599, %4697 ], [ %4599, %4588 ], [ %3873, %4304 ]
  %4885 = fcmp fast une float %4308, 0.000000e+00
  %4886 = call float @dx.op.dot3.f32(i32 55, float %203, float %204, float %205, float %203, float %204, float %205)  ; Dot3(ax,ay,az,bx,by,bz)
  %4887 = call float @dx.op.unary.f32(i32 25, float %4886)  ; Rsqrt(value)
  br i1 %4885, label %4895, label %4888

; <label>:4888                                    ; preds = %4873
  %4889 = fmul fast float %4887, %203
  %4890 = fmul fast float %4887, %204
  %4891 = fmul fast float %4887, %205
  %4892 = fsub fast float -0.000000e+00, %4889
  %4893 = fsub fast float -0.000000e+00, %4890
  %4894 = fsub fast float -0.000000e+00, %4891
  br label %5062

; <label>:4895                                    ; preds = %4873
  %4896 = fmul fast float %203, %4887
  %4897 = fsub fast float -0.000000e+00, %4896
  %4898 = fmul fast float %204, %4887
  %4899 = fsub fast float -0.000000e+00, %4898
  %4900 = fmul fast float %205, %4887
  %4901 = fsub fast float -0.000000e+00, %4900
  %4902 = call float @dx.op.dot3.f32(i32 55, float %4897, float %4899, float %4901, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %4903 = fmul fast float %4308, 2.500000e+00
  %4904 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4905 = fmul fast float %4308, 0x4013FFFFE0000000
  %4906 = fadd fast float %4905, 0xBFFFFFFFE0000000
  %4907 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4908 = fmul fast float %4308, 0x4004000020000000
  %4909 = fadd fast float %4908, 0xBFF8000040000000
  %4910 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4911 = fmul fast float %3880, 1.000000e+01
  %4912 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4913 = fmul fast float %4912, 2.000000e+00
  %4914 = fsub fast float 3.000000e+00, %4913
  %4915 = fmul fast float %4912, %4912
  %4916 = fmul fast float %4915, %4914
  %4917 = fsub fast float 1.000000e+00, %4916
  %4918 = fsub fast float 0x3FE3333340000000, %4883
  %4919 = fmul fast float %4918, 0x400AAAAAA0000000
  %4920 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4921 = fmul fast float %4917, %4920
  %4922 = fmul fast float %4880, 0x3FEA2B8620000000
  %4923 = fmul fast float %4881, 0x3FEA2B8620000000
  %4924 = fmul fast float %4882, 0x3FEA2B8620000000
  %4925 = fadd fast float %4922, 0x3FC81DFBA0000000
  %4926 = fmul fast float %4925, %4880
  %4927 = fadd fast float %4926, 0x3F910E6020000000
  %4928 = fadd fast float %4923, 0x3FC81DFBA0000000
  %4929 = fmul fast float %4928, %4881
  %4930 = fadd fast float %4929, 0x3F910E6020000000
  %4931 = fadd fast float %4924, 0x3FC81DFBA0000000
  %4932 = fmul fast float %4931, %4882
  %4933 = fadd fast float %4932, 0x3F910E6020000000
  %4934 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4935 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4936 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4937 = fsub fast float %4934, %4880
  %4938 = fsub fast float %4935, %4881
  %4939 = fsub fast float %4936, %4882
  %4940 = fmul fast float %4937, %4904
  %4941 = fmul fast float %4940, %4921
  %4942 = fmul fast float %4938, %4904
  %4943 = fmul fast float %4942, %4921
  %4944 = fmul fast float %4939, %4904
  %4945 = fmul fast float %4944, %4921
  %4946 = fadd fast float %4941, %4880
  %4947 = fadd fast float %4943, %4881
  %4948 = fadd fast float %4945, %4882
  %4949 = fmul fast float %4884, %4884
  %4950 = fmul fast float %4949, %4949
  %4951 = fadd fast float %4907, 1.000000e+00
  %4952 = fsub fast float %4951, %4921
  %4953 = call float @dx.op.unary.f32(i32 7, float %4952)  ; Saturate(value)
  %4954 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4955 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4956 = fsub fast float 1.000000e+00, %4950
  %4957 = call float @dx.op.binary.f32(i32 36, float %4953, float %4956)  ; FMin(a,b)
  %4958 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4959 = call float @dx.op.binary.f32(i32 35, float %4957, float %4958)  ; FMax(a,b)
  %4960 = fadd fast float %4955, 0xBFE4CCCCC0000000
  %4961 = fmul fast float %4960, 0x4006DB6DA0000000
  %4962 = call float @dx.op.unary.f32(i32 7, float %4961)  ; Saturate(value)
  %4963 = fmul fast float %4962, 2.000000e+00
  %4964 = fsub fast float 3.000000e+00, %4963
  %4965 = bitcast float %4874 to i32
  %4966 = ashr i32 %4965, 1
  %4967 = add nsw i32 %4966, 532487669
  %4968 = bitcast i32 %4967 to float
  %4969 = fsub fast float 1.000000e+00, %4968
  %4970 = bitcast float %4969 to i32
  %4971 = sub nsw i32 2129859010, %4970
  %4972 = bitcast i32 %4971 to float
  %4973 = fmul fast float %4972, 2.000000e+00
  %4974 = bitcast float %4875 to i32
  %4975 = ashr i32 %4974, 1
  %4976 = add nsw i32 %4975, 532487669
  %4977 = bitcast i32 %4976 to float
  %4978 = fsub fast float 1.000000e+00, %4977
  %4979 = bitcast float %4978 to i32
  %4980 = sub nsw i32 2129859010, %4979
  %4981 = bitcast i32 %4980 to float
  %4982 = fmul fast float %4981, 2.000000e+00
  %4983 = bitcast float %4876 to i32
  %4984 = ashr i32 %4983, 1
  %4985 = add nsw i32 %4984, 532487669
  %4986 = bitcast i32 %4985 to float
  %4987 = fsub fast float 1.000000e+00, %4986
  %4988 = bitcast float %4987 to i32
  %4989 = sub nsw i32 2129859010, %4988
  %4990 = bitcast i32 %4989 to float
  %4991 = fmul fast float %4990, 2.000000e+00
  %4992 = fsub fast float 0x4002A9FBE0000000, %4973
  %4993 = fadd fast float %4973, 0x3FD54FDF00000000
  %4994 = bitcast float %4993 to i32
  %4995 = sub nsw i32 2129859010, %4994
  %4996 = bitcast i32 %4995 to float
  %4997 = fmul fast float %4996, %4992
  %4998 = fmul fast float %4997, %4997
  %4999 = fsub fast float 0x4002A9FBE0000000, %4982
  %5000 = fadd fast float %4982, 0x3FD54FDF00000000
  %5001 = bitcast float %5000 to i32
  %5002 = sub nsw i32 2129859010, %5001
  %5003 = bitcast i32 %5002 to float
  %5004 = fmul fast float %5003, %4999
  %5005 = fmul fast float %5004, %5004
  %5006 = fsub fast float 0x4002A9FBE0000000, %4991
  %5007 = fadd fast float %4991, 0x3FD54FDF00000000
  %5008 = bitcast float %5007 to i32
  %5009 = sub nsw i32 2129859010, %5008
  %5010 = bitcast i32 %5009 to float
  %5011 = fmul fast float %5010, %5006
  %5012 = fmul fast float %5011, %5011
  %5013 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4998)  ; FMax(a,b)
  %5014 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5005)  ; FMax(a,b)
  %5015 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5012)  ; FMax(a,b)
  %5016 = fsub fast float 1.000000e+00, %4902
  %5017 = fadd fast float %5016, %4917
  %5018 = call float @dx.op.unary.f32(i32 7, float %5017)  ; Saturate(value)
  %5019 = fsub fast float 1.000000e+00, %4289
  %5020 = fmul fast float %4959, %5019
  %5021 = fmul fast float %4962, %4962
  %5022 = fmul fast float %5021, %5020
  %5023 = fmul fast float %5022, %4964
  %5024 = fmul fast float %5019, 0xBFE99999A0000000
  %5025 = fmul fast float %5024, %4904
  %5026 = fmul fast float %5025, %4921
  %5027 = fadd fast float %5026, 1.000000e+00
  %5028 = fadd fast float %4883, -1.000000e+00
  %5029 = fmul fast float %5027, %5028
  %5030 = fadd fast float %5029, 1.000000e+00
  %5031 = fsub fast float %5013, %4874
  %5032 = fsub fast float %5014, %4875
  %5033 = fsub fast float %5015, %4876
  %5034 = fmul fast float %5023, %5031
  %5035 = fmul fast float %5023, %5032
  %5036 = fmul fast float %5023, %5033
  %5037 = fadd fast float %5034, %4874
  %5038 = fadd fast float %5035, %4875
  %5039 = fadd fast float %5036, %4876
  %5040 = fsub fast float %123, %4877
  %5041 = fsub fast float %124, %4878
  %5042 = fsub fast float %125, %4879
  %5043 = fmul fast float %5023, %5040
  %5044 = fmul fast float %5023, %5041
  %5045 = fmul fast float %5023, %5042
  %5046 = fadd fast float %5043, %4877
  %5047 = fadd fast float %5044, %4878
  %5048 = fadd fast float %5045, %4879
  %5049 = fmul fast float %5023, %5018
  %5050 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5051 = fsub fast float 1.000000e+00, %5050
  %5052 = fmul fast float %5049, %5051
  %5053 = fadd fast float %5052, %5050
  %5054 = fsub fast float 1.000000e+00, %4884
  %5055 = fmul fast float %5023, %5054
  %5056 = fadd fast float %5055, %4884
  %5057 = call float @dx.op.dot3.f32(i32 55, float %5046, float %5047, float %5048, float %5046, float %5047, float %5048)  ; Dot3(ax,ay,az,bx,by,bz)
  %5058 = call float @dx.op.unary.f32(i32 25, float %5057)  ; Rsqrt(value)
  %5059 = fmul fast float %5046, %5058
  %5060 = fmul fast float %5047, %5058
  %5061 = fmul fast float %5048, %5058
  br label %5062

; <label>:5062                                    ; preds = %4895, %4888
  %5063 = phi float [ %4894, %4888 ], [ %4901, %4895 ]
  %5064 = phi float [ %4893, %4888 ], [ %4899, %4895 ]
  %5065 = phi float [ %4892, %4888 ], [ %4897, %4895 ]
  %5066 = phi float [ %4891, %4888 ], [ %4900, %4895 ]
  %5067 = phi float [ %4890, %4888 ], [ %4898, %4895 ]
  %5068 = phi float [ %4889, %4888 ], [ %4896, %4895 ]
  %5069 = phi float [ %4874, %4888 ], [ %5037, %4895 ]
  %5070 = phi float [ %4875, %4888 ], [ %5038, %4895 ]
  %5071 = phi float [ %4876, %4888 ], [ %5039, %4895 ]
  %5072 = phi float [ %4877, %4888 ], [ %5059, %4895 ]
  %5073 = phi float [ %4878, %4888 ], [ %5060, %4895 ]
  %5074 = phi float [ %4879, %4888 ], [ %5061, %4895 ]
  %5075 = phi float [ %4880, %4888 ], [ %4946, %4895 ]
  %5076 = phi float [ %4881, %4888 ], [ %4947, %4895 ]
  %5077 = phi float [ %4882, %4888 ], [ %4948, %4895 ]
  %5078 = phi float [ %4883, %4888 ], [ %5053, %4895 ]
  %5079 = phi float [ %4884, %4888 ], [ %5056, %4895 ]
  %5080 = fsub fast float -0.000000e+00, %205
  %5081 = select i1 %269, float 0.000000e+00, float %5071
  %5082 = call float @dx.op.dot3.f32(i32 55, float %5072, float %5073, float %5074, float %5065, float %5064, float %5063)  ; Dot3(ax,ay,az,bx,by,bz)
  %5083 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5084 = call float @dx.op.dot3.f32(i32 55, float %5068, float %5067, float %5066, float %5072, float %5073, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %5085 = fmul fast float %5084, 2.000000e+00
  %5086 = fmul fast float %5085, %5072
  %5087 = fmul fast float %5085, %5073
  %5088 = fmul fast float %5085, %5074
  %5089 = fsub fast float %5068, %5086
  %5090 = fsub fast float %5067, %5087
  %5091 = fsub fast float %5066, %5088
  %5092 = call float @dx.op.binary.f32(i32 36, float %5079, float 1.000000e+00)  ; FMin(a,b)
  %5093 = fsub fast float 1.000000e+00, %5092
  %5094 = bitcast float %5093 to i32
  %5095 = ashr i32 %5094, 1
  %5096 = add nsw i32 %5095, 532487669
  %5097 = bitcast i32 %5096 to float
  %5098 = fsub fast float 1.000000e+00, %5078
  %5099 = call float @dx.op.binary.f32(i32 35, float %5098, float 0x3F847AE140000000)  ; FMax(a,b)
  %5100 = fmul fast float %5099, %5099
  %5101 = fmul fast float %5100, %5100
  %5102 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5097, float %5101, float %5102, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5104 = extractvalue %dx.types.ResRet.f32 %5103, 0
  %5105 = fsub fast float 1.000000e+00, %5079
  %5106 = bitcast float %5105 to i32
  %5107 = sub nsw i32 2129859010, %5106
  %5108 = bitcast i32 %5107 to float
  %5109 = fsub fast float 1.000000e+00, %83
  %5110 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5111 = call float @dx.op.binary.f32(i32 35, float %5110, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5112 = fdiv fast float %5109, %5111
  %5113 = call float @dx.op.dot3.f32(i32 55, float %5072, float %5073, float %5074, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5114 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5115 = fmul fast float %5114, 5.000000e-01
  %5116 = fadd fast float %5115, 5.000000e-01
  %5117 = fmul fast float %5116, %83
  %5118 = call float @dx.op.dot3.f32(i32 55, float %5072, float %5073, float %5074, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %5119 = call float @dx.op.unary.f32(i32 7, float %5118)  ; Saturate(value)
  %5120 = fmul fast float %5119, %5112
  %5121 = fadd fast float %5117, %5120
  %5122 = fsub fast float 5.000000e-01, %5115
  %5123 = fmul fast float %5122, %5075
  %5124 = fmul fast float %5122, %5076
  %5125 = fmul fast float %5122, %5077
  %5126 = fadd fast float %5121, %5123
  %5127 = fadd fast float %5121, %5124
  %5128 = fadd fast float %5121, %5125
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5089, float %5090, float %5091, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = fmul fast float %5130, 5.000000e-01
  %5132 = fadd fast float %5131, 5.000000e-01
  %5133 = fmul fast float %5132, %83
  %5134 = call float @dx.op.dot3.f32(i32 55, float %5089, float %5090, float %5091, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %5135 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5136 = fmul fast float %5135, %5112
  %5137 = fadd fast float %5133, %5136
  %5138 = fsub fast float 5.000000e-01, %5131
  %5139 = fmul fast float %5138, %5075
  %5140 = fmul fast float %5138, %5076
  %5141 = fmul fast float %5138, %5077
  %5142 = fadd fast float %5137, %5139
  %5143 = fadd fast float %5137, %5140
  %5144 = fadd fast float %5137, %5141
  %5145 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5147 = extractvalue %dx.types.CBufRet.f32 %5146, 0
  %5148 = call float @dx.op.binary.f32(i32 36, float %5075, float %5147)  ; FMin(a,b)
  %5149 = fmul fast float %5148, %5093
  %5150 = fsub fast float 1.000000e+00, %5149
  %5151 = bitcast float %5150 to i32
  %5152 = sub nsw i32 2129859010, %5151
  %5153 = bitcast i32 %5152 to float
  %5154 = call float @dx.op.binary.f32(i32 36, float %5076, float %5147)  ; FMin(a,b)
  %5155 = fmul fast float %5154, %5093
  %5156 = fsub fast float 1.000000e+00, %5155
  %5157 = bitcast float %5156 to i32
  %5158 = sub nsw i32 2129859010, %5157
  %5159 = bitcast i32 %5158 to float
  %5160 = call float @dx.op.binary.f32(i32 36, float %5077, float %5147)  ; FMin(a,b)
  %5161 = fmul fast float %5160, %5093
  %5162 = fsub fast float 1.000000e+00, %5161
  %5163 = bitcast float %5162 to i32
  %5164 = sub nsw i32 2129859010, %5163
  %5165 = bitcast i32 %5164 to float
  %5166 = fmul fast float %5092, %84
  %5167 = fmul fast float %5166, %5126
  %5168 = fmul fast float %5167, %5153
  %5169 = fmul fast float %5092, %85
  %5170 = fmul fast float %5169, %5127
  %5171 = fmul fast float %5170, %5159
  %5172 = fmul fast float %5092, %86
  %5173 = fmul fast float %5172, %5128
  %5174 = fmul fast float %5173, %5165
  %5175 = call float @dx.op.binary.f32(i32 36, float %5069, float %5147)  ; FMin(a,b)
  %5176 = fmul fast float %5175, %5093
  %5177 = fsub fast float 1.000000e+00, %5176
  %5178 = bitcast float %5177 to i32
  %5179 = sub nsw i32 2129859010, %5178
  %5180 = bitcast i32 %5179 to float
  %5181 = call float @dx.op.binary.f32(i32 36, float %5070, float %5147)  ; FMin(a,b)
  %5182 = fmul fast float %5181, %5093
  %5183 = fsub fast float 1.000000e+00, %5182
  %5184 = bitcast float %5183 to i32
  %5185 = sub nsw i32 2129859010, %5184
  %5186 = bitcast i32 %5185 to float
  %5187 = call float @dx.op.binary.f32(i32 36, float %5081, float %5147)  ; FMin(a,b)
  %5188 = fmul fast float %5187, %5093
  %5189 = fsub fast float 1.000000e+00, %5188
  %5190 = bitcast float %5189 to i32
  %5191 = sub nsw i32 2129859010, %5190
  %5192 = bitcast i32 %5191 to float
  %5193 = fmul fast float %5166, %5142
  %5194 = fmul fast float %5193, %5180
  %5195 = fmul fast float %5169, %5143
  %5196 = fmul fast float %5195, %5186
  %5197 = fmul fast float %5172, %5144
  %5198 = fmul fast float %5197, %5192
  %5199 = call float @dx.op.dot3.f32(i32 55, float %5168, float %5171, float %5174, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5200 = select i1 %269, float 0.000000e+00, float %5168
  %5201 = select i1 %269, float %5199, float %5171
  %5202 = select i1 %269, float 0.000000e+00, float %5174
  %5203 = call float @dx.op.dot3.f32(i32 55, float %5194, float %5196, float %5198, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5204 = select i1 %269, float 0.000000e+00, float %5194
  %5205 = select i1 %269, float %5203, float %5196
  %5206 = select i1 %269, float 0.000000e+00, float %5198
  %5207 = fmul fast float %5083, 9.843750e-01
  %5208 = fmul fast float %5078, 9.843750e-01
  %5209 = fadd fast float %5207, 7.812500e-03
  %5210 = fadd fast float %5208, 7.812500e-03
  %5211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %5209, float %5210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5212 = extractvalue %dx.types.ResRet.f32 %5211, 2
  %5213 = extractvalue %dx.types.ResRet.f32 %5211, 3
  %5214 = fmul fast float %5212, %5069
  %5215 = fmul fast float %5212, %5070
  %5216 = fmul fast float %5212, %5081
  %5217 = fadd fast float %5214, %5213
  %5218 = fadd fast float %5215, %5213
  %5219 = fadd fast float %5216, %5213
  %5220 = fcmp fast ogt float %3874, 0.000000e+00
  br i1 %5220, label %5221, label %5247

; <label>:5221                                    ; preds = %5062
  %5222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3874, float %5083, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5223 = extractvalue %dx.types.ResRet.f32 %5222, 0
  %5224 = extractvalue %dx.types.ResRet.f32 %5222, 1
  %5225 = extractvalue %dx.types.ResRet.f32 %5222, 2
  %5226 = fadd fast float %5223, -5.000000e-01
  %5227 = fadd fast float %5224, -5.000000e-01
  %5228 = fadd fast float %5225, -5.000000e-01
  %5229 = fsub fast float 1.000000e+00, %5069
  %5230 = fsub fast float 1.000000e+00, %5070
  %5231 = fsub fast float 1.000000e+00, %5081
  %5232 = fmul fast float %5069, 4.000000e+00
  %5233 = fmul fast float %5232, %5229
  %5234 = fmul fast float %5233, %5226
  %5235 = fmul fast float %5070, 4.000000e+00
  %5236 = fmul fast float %5235, %5230
  %5237 = fmul fast float %5236, %5227
  %5238 = fmul fast float %5081, 4.000000e+00
  %5239 = fmul fast float %5238, %5231
  %5240 = fmul fast float %5239, %5228
  %5241 = fadd fast float %5234, %5217
  %5242 = fadd fast float %5237, %5218
  %5243 = fadd fast float %5240, %5219
  %5244 = call float @dx.op.unary.f32(i32 7, float %5241)  ; Saturate(value)
  %5245 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5246 = call float @dx.op.unary.f32(i32 7, float %5243)  ; Saturate(value)
  br label %5247

; <label>:5247                                    ; preds = %5221, %5062
  %5248 = phi float [ %5244, %5221 ], [ %5217, %5062 ]
  %5249 = phi float [ %5245, %5221 ], [ %5218, %5062 ]
  %5250 = phi float [ %5246, %5221 ], [ %5219, %5062 ]
  %5251 = call float @dx.op.binary.f32(i32 35, float %5249, float %5250)  ; FMax(a,b)
  %5252 = call float @dx.op.binary.f32(i32 35, float %5248, float %5251)  ; FMax(a,b)
  %5253 = fsub fast float 1.000000e+00, %5252
  %5254 = fmul fast float %5252, %5078
  %5255 = fadd fast float %5254, %5078
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 2
  %5258 = extractvalue %dx.types.CBufRet.f32 %5256, 3
  %5259 = fmul fast float %5255, %5257
  %5260 = fadd fast float %5259, %5258
  %5261 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5262 = fsub fast float 1.000000e+00, %5104
  %5263 = fadd fast float %5262, %5261
  %5264 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5265 = fcmp fast olt float %5264, 1.000000e+00
  br i1 %5265, label %5266, label %5742

; <label>:5266                                    ; preds = %5247
  %5267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5268 = extractvalue %dx.types.CBufRet.f32 %5267, 2
  %5269 = extractvalue %dx.types.CBufRet.f32 %5267, 3
  %5270 = fmul fast float %5268, %116
  %5271 = fmul fast float %5269, %117
  %5272 = fptoui float %5270 to i32
  %5273 = fptoui float %5271 to i32
  %5274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5275 = extractvalue %dx.types.CBufRet.f32 %5274, 0
  %5276 = extractvalue %dx.types.CBufRet.f32 %5274, 2
  %5277 = extractvalue %dx.types.CBufRet.f32 %5274, 3
  %5278 = fadd fast float %103, -4.000000e+00
  %5279 = call float @dx.op.binary.f32(i32 35, float %5278, float 0.000000e+00)  ; FMax(a,b)
  %5280 = fadd fast float %5279, %5275
  %5281 = fmul fast float %5280, %5276
  %5282 = call float @dx.op.unary.f32(i32 23, float %5281)  ; Log(value)
  %5283 = fmul fast float %5282, %5277
  %5284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.f32 %5284, 2
  %5286 = fmul fast float %5283, %5285
  %5287 = call float @dx.op.unary.f32(i32 7, float %5286)  ; Saturate(value)
  %5288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5289 = extractvalue %dx.types.CBufRet.i32 %5288, 1
  %5290 = add i32 %5289, -1
  %5291 = uitofp i32 %5289 to float
  %5292 = fmul fast float %5291, %5287
  %5293 = fptoui float %5292 to i32
  %5294 = call i32 @dx.op.binary.i32(i32 40, i32 %5293, i32 %5290)  ; UMin(a,b)
  %5295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5296 = extractvalue %dx.types.CBufRet.i32 %5295, 2
  %5297 = extractvalue %dx.types.CBufRet.i32 %5295, 3
  %5298 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5273, i32 %5296, i32 %5272)  ; UMad(a,b,c)
  %5299 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5294, i32 %5297, i32 %5298)  ; UMad(a,b,c)
  %5300 = call float @dx.op.binary.f32(i32 35, float %103, float 0.000000e+00)  ; FMax(a,b)
  %5301 = fptoui float %5300 to i32
  %5302 = lshr i32 %5301, 5
  %5303 = call i32 @dx.op.binary.i32(i32 40, i32 %5302, i32 8191)  ; UMin(a,b)
  %5304 = fsub fast float %4279, %205
  %5305 = call float @dx.op.unary.f32(i32 7, float %5304)  ; Saturate(value)
  %5306 = fcmp fast ogt float %5305, 0.000000e+00
  %5307 = fcmp fast ogt float %5091, 0.000000e+00
  %5308 = and i1 %5307, %5306
  br i1 %5308, label %5309, label %5338

; <label>:5309                                    ; preds = %5266
  %5310 = call float @dx.op.dot3.f32(i32 55, float %5089, float %5090, float %5091, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5311 = call float @dx.op.binary.f32(i32 35, float %5310, float -1.000000e+00)  ; FMax(a,b)
  %5312 = call float @dx.op.binary.f32(i32 36, float %5311, float 1.000000e+00)  ; FMin(a,b)
  %5313 = fmul fast float %5312, %5312
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = fmul fast float %5314, 0x3FFC6E2300000000
  %5316 = fsub fast float 1.000000e+00, %5315
  %5317 = fcmp fast ogt float %5316, 0.000000e+00
  %5318 = call float @dx.op.unary.f32(i32 24, float %5316)  ; Sqrt(value)
  %5319 = fsub fast float 1.000000e+00, %5318
  %5320 = call float @dx.op.unary.f32(i32 23, float %5319)  ; Log(value)
  %5321 = fmul fast float %5320, 5.000000e+00
  %5322 = call float @dx.op.unary.f32(i32 21, float %5321)  ; Exp(value)
  %5323 = fmul fast float %5322, 0x3FEF591A60000000
  %5324 = fadd fast float %5323, 0x3F94DCB540000000
  %5325 = select i1 %5317, float %5324, float 1.000000e+00
  %5326 = fcmp fast oge float %5325, 1.000000e+00
  %5327 = fmul fast float %5310, 2.000000e+00
  %5328 = fadd fast float %5327, %5091
  %5329 = select i1 %5326, float %5328, float %5091
  %5330 = fsub fast float %5329, %5091
  %5331 = fmul fast float %5330, %5305
  %5332 = fadd fast float %5331, %5091
  %5333 = call float @dx.op.dot3.f32(i32 55, float %5089, float %5090, float %5332, float %5089, float %5090, float %5332)  ; Dot3(ax,ay,az,bx,by,bz)
  %5334 = call float @dx.op.unary.f32(i32 25, float %5333)  ; Rsqrt(value)
  %5335 = fmul fast float %5334, %5089
  %5336 = fmul fast float %5334, %5090
  %5337 = fmul fast float %5332, %5334
  br label %5338

; <label>:5338                                    ; preds = %5309, %5266
  %5339 = phi float [ %5335, %5309 ], [ %5089, %5266 ]
  %5340 = phi float [ %5336, %5309 ], [ %5090, %5266 ]
  %5341 = phi float [ %5337, %5309 ], [ %5091, %5266 ]
  %5342 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5343 = extractvalue %dx.types.CBufRet.i32 %5342, 2
  %5344 = add nsw i32 %5343, -1
  %5345 = call i32 @dx.op.binary.i32(i32 37, i32 %5344, i32 0)  ; IMax(a,b)
  %5346 = shl i32 %5303, 2
  %5347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5346, i32 undef)  ; BufferLoad(srv,index,wot)
  %5348 = extractvalue %dx.types.ResRet.i32 %5347, 0
  %5349 = lshr i32 %5348, 16
  %5350 = and i32 %5348, 65535
  %5351 = lshr i32 %5348, 21
  %5352 = lshr i32 %5350, 5
  %5353 = call i32 @dx.op.binary.i32(i32 40, i32 %5352, i32 %5345)  ; UMin(a,b)
  %5354 = icmp ugt i32 %5351, %5353
  br i1 %5354, label %5718, label %5355

; <label>:5355                                    ; preds = %5338
  br label %5356

; <label>:5356                                    ; preds = %5710, %5355
  %5357 = phi float [ %5711, %5710 ], [ 0.000000e+00, %5355 ]
  %5358 = phi float [ %5712, %5710 ], [ 0.000000e+00, %5355 ]
  %5359 = phi float [ %5713, %5710 ], [ 0.000000e+00, %5355 ]
  %5360 = phi float [ %5714, %5710 ], [ 1.000000e+00, %5355 ]
  %5361 = phi i32 [ %5715, %5710 ], [ %5351, %5355 ]
  %5362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5363 = extractvalue %dx.types.CBufRet.i32 %5362, 2
  %5364 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5299, i32 %5363, i32 %5361)  ; UMad(a,b,c)
  %5365 = shl i32 %5364, 2
  %5366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5365, i32 undef)  ; BufferLoad(srv,index,wot)
  %5367 = extractvalue %dx.types.ResRet.i32 %5366, 0
  %5368 = shl i32 %5361, 5
  %5369 = sub nsw i32 %5349, %5368
  %5370 = call i32 @dx.op.binary.i32(i32 37, i32 %5369, i32 0)  ; IMax(a,b)
  %5371 = call i32 @dx.op.binary.i32(i32 38, i32 %5370, i32 31)  ; IMin(a,b)
  %5372 = sub nsw i32 1, %5349
  %5373 = add nsw i32 %5372, %5350
  %5374 = call i32 @dx.op.binary.i32(i32 37, i32 %5373, i32 0)  ; IMax(a,b)
  %5375 = call i32 @dx.op.binary.i32(i32 38, i32 %5374, i32 32)  ; IMin(a,b)
  %5376 = and i32 %5375, 31
  %5377 = shl i32 -1, %5376
  %5378 = xor i32 %5377, -1
  %5379 = and i32 %5371, 31
  %5380 = shl i32 %5378, %5379
  %5381 = icmp eq i32 %5375, 32
  %5382 = select i1 %5381, i32 -1, i32 %5380
  %5383 = and i32 %5382, %5367
  %5384 = icmp eq i32 %5383, 0
  br i1 %5384, label %5710, label %5385

; <label>:5385                                    ; preds = %5356
  br label %5386

; <label>:5386                                    ; preds = %5493, %5385
  %5387 = phi float [ %5494, %5493 ], [ %5357, %5385 ]
  %5388 = phi float [ %5495, %5493 ], [ %5358, %5385 ]
  %5389 = phi float [ %5496, %5493 ], [ %5359, %5385 ]
  %5390 = phi float [ %5497, %5493 ], [ %5360, %5385 ]
  %5391 = phi i32 [ %5396, %5493 ], [ %5383, %5385 ]
  %5392 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5391)  ; FirstbitLo(value)
  %5393 = add i32 %5392, %5368
  %5394 = and i32 %5392, 31
  %5395 = shl i32 1, %5394
  %5396 = xor i32 %5395, %5391
  %5397 = mul i32 %5393, 72
  %5398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5397, i32 undef)  ; BufferLoad(srv,index,wot)
  %5399 = extractvalue %dx.types.ResRet.f32 %5398, 0
  %5400 = extractvalue %dx.types.ResRet.f32 %5398, 1
  %5401 = extractvalue %dx.types.ResRet.f32 %5398, 2
  %5402 = add i32 %5397, 12
  %5403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5402, i32 undef)  ; BufferLoad(srv,index,wot)
  %5404 = extractvalue %dx.types.ResRet.i32 %5403, 0
  %5405 = add i32 %5397, 16
  %5406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5405, i32 undef)  ; BufferLoad(srv,index,wot)
  %5407 = extractvalue %dx.types.ResRet.f32 %5406, 0
  %5408 = extractvalue %dx.types.ResRet.f32 %5406, 1
  %5409 = extractvalue %dx.types.ResRet.f32 %5406, 2
  %5410 = add i32 %5397, 28
  %5411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5410, i32 undef)  ; BufferLoad(srv,index,wot)
  %5412 = extractvalue %dx.types.ResRet.f32 %5411, 0
  %5413 = add i32 %5397, 32
  %5414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5413, i32 undef)  ; BufferLoad(srv,index,wot)
  %5415 = extractvalue %dx.types.ResRet.f32 %5414, 0
  %5416 = extractvalue %dx.types.ResRet.f32 %5414, 1
  %5417 = extractvalue %dx.types.ResRet.f32 %5414, 2
  %5418 = extractvalue %dx.types.ResRet.f32 %5414, 3
  %5419 = add i32 %5397, 48
  %5420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5419, i32 undef)  ; BufferLoad(srv,index,wot)
  %5421 = extractvalue %dx.types.ResRet.f32 %5420, 0
  %5422 = extractvalue %dx.types.ResRet.f32 %5420, 1
  %5423 = add i32 %5397, 56
  %5424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5423, i32 undef)  ; BufferLoad(srv,index,wot)
  %5425 = extractvalue %dx.types.ResRet.f32 %5424, 0
  %5426 = extractvalue %dx.types.ResRet.f32 %5424, 1
  %5427 = add i32 %5397, 64
  %5428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5427, i32 undef)  ; BufferLoad(srv,index,wot)
  %5429 = extractvalue %dx.types.ResRet.f32 %5428, 0
  %5430 = extractvalue %dx.types.ResRet.f32 %5428, 1
  %5431 = mul i32 %5393, 60
  %5432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5431, i32 undef)  ; BufferLoad(srv,index,wot)
  %5433 = extractvalue %dx.types.ResRet.f32 %5432, 0
  %5434 = extractvalue %dx.types.ResRet.f32 %5432, 1
  %5435 = extractvalue %dx.types.ResRet.f32 %5432, 2
  %5436 = add i32 %5431, 12
  %5437 = add i32 %5431, 48
  %5438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5437, i32 undef)  ; BufferLoad(srv,index,wot)
  %5439 = extractvalue %dx.types.ResRet.f32 %5438, 0
  %5440 = extractvalue %dx.types.ResRet.f32 %5438, 1
  %5441 = extractvalue %dx.types.ResRet.f32 %5438, 2
  %5442 = and i32 %5404, 32767
  %5443 = bitcast float %5399 to i32
  %5444 = icmp eq i32 %5443, -1
  %5445 = bitcast float %5400 to i32
  %5446 = and i32 %5404, 32768
  %5447 = icmp ne i32 %5446, 0
  %5448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.f32 %5448, 0
  %5450 = extractvalue %dx.types.CBufRet.f32 %5448, 1
  %5451 = extractvalue %dx.types.CBufRet.f32 %5448, 2
  %5452 = fsub fast float %5433, %5449
  %5453 = fsub fast float %5434, %5450
  %5454 = fsub fast float %5435, %5451
  %5455 = fsub fast float %203, %5452
  %5456 = fsub fast float %204, %5453
  %5457 = fsub fast float %205, %5454
  %5458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5436, i32 undef)  ; BufferLoad(srv,index,wot)
  %5459 = extractvalue %dx.types.ResRet.f32 %5458, 0
  %5460 = extractvalue %dx.types.ResRet.f32 %5458, 1
  %5461 = extractvalue %dx.types.ResRet.f32 %5458, 2
  %5462 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5459, float %5460, float %5461)  ; Dot3(ax,ay,az,bx,by,bz)
  %5463 = add i32 %5431, 24
  %5464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5463, i32 undef)  ; BufferLoad(srv,index,wot)
  %5465 = extractvalue %dx.types.ResRet.f32 %5464, 0
  %5466 = extractvalue %dx.types.ResRet.f32 %5464, 1
  %5467 = extractvalue %dx.types.ResRet.f32 %5464, 2
  %5468 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5465, float %5466, float %5467)  ; Dot3(ax,ay,az,bx,by,bz)
  %5469 = add i32 %5431, 36
  %5470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5469, i32 undef)  ; BufferLoad(srv,index,wot)
  %5471 = extractvalue %dx.types.ResRet.f32 %5470, 0
  %5472 = extractvalue %dx.types.ResRet.f32 %5470, 1
  %5473 = extractvalue %dx.types.ResRet.f32 %5470, 2
  %5474 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5471, float %5472, float %5473)  ; Dot3(ax,ay,az,bx,by,bz)
  %5475 = call float @dx.op.unary.f32(i32 6, float %5462)  ; FAbs(value)
  %5476 = call float @dx.op.unary.f32(i32 6, float %5468)  ; FAbs(value)
  %5477 = call float @dx.op.unary.f32(i32 6, float %5474)  ; FAbs(value)
  %5478 = fsub fast float %5439, %5475
  %5479 = fsub fast float %5440, %5476
  %5480 = fsub fast float %5441, %5477
  %5481 = fmul fast float %5478, %5407
  %5482 = fmul fast float %5479, %5408
  %5483 = fmul fast float %5480, %5409
  %5484 = call float @dx.op.binary.f32(i32 36, float %5482, float %5483)  ; FMin(a,b)
  %5485 = call float @dx.op.binary.f32(i32 36, float %5481, float %5484)  ; FMin(a,b)
  %5486 = call float @dx.op.unary.f32(i32 7, float %5485)  ; Saturate(value)
  %5487 = call float @dx.op.binary.f32(i32 36, float %5390, float %5486)  ; FMin(a,b)
  %5488 = uitofp i1 %5447 to float
  %5489 = fadd fast float %5305, 1.000000e+00
  %5490 = fsub fast float %5489, %5488
  %5491 = fmul fast float %5487, %5490
  %5492 = fcmp fast ogt float %5491, 0.000000e+00
  br i1 %5492, label %5499, label %5493

; <label>:5493                                    ; preds = %5641, %5386
  %5494 = phi float [ %5705, %5641 ], [ %5387, %5386 ]
  %5495 = phi float [ %5706, %5641 ], [ %5388, %5386 ]
  %5496 = phi float [ %5707, %5641 ], [ %5389, %5386 ]
  %5497 = phi float [ %5708, %5641 ], [ %5390, %5386 ]
  %5498 = icmp eq i32 %5391, %5395
  br i1 %5498, label %5709, label %5386

; <label>:5499                                    ; preds = %5386
  br i1 %5444, label %5557, label %5500

; <label>:5500                                    ; preds = %5499
  %5501 = fsub fast float -0.000000e+00, %5459
  %5502 = fsub fast float -0.000000e+00, %5460
  %5503 = fsub fast float -0.000000e+00, %5461
  %5504 = call float @dx.op.dot3.f32(i32 55, float %5339, float %5340, float %5341, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %5505 = fsub fast float -0.000000e+00, %5504
  %5506 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %5507 = fadd fast float %5506, %5422
  %5508 = fadd fast float %5421, %5506
  %5509 = fsub fast float -0.000000e+00, %5508
  %5510 = fcmp ogt float %5504, -0.000000e+00
  %5511 = select i1 %5510, float %5509, float %5507
  %5512 = call float @dx.op.unary.f32(i32 6, float %5505)  ; FAbs(value)
  %5513 = fdiv fast float 1.000000e+00, %5512
  %5514 = fmul fast float %5511, %5513
  %5515 = call float @dx.op.binary.f32(i32 35, float %5514, float 0.000000e+00)  ; FMax(a,b)
  %5516 = fsub fast float -0.000000e+00, %5465
  %5517 = fsub fast float -0.000000e+00, %5466
  %5518 = fsub fast float -0.000000e+00, %5467
  %5519 = call float @dx.op.dot3.f32(i32 55, float %5339, float %5340, float %5341, float %5516, float %5517, float %5518)  ; Dot3(ax,ay,az,bx,by,bz)
  %5520 = fsub fast float -0.000000e+00, %5519
  %5521 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5516, float %5517, float %5518)  ; Dot3(ax,ay,az,bx,by,bz)
  %5522 = fadd fast float %5521, %5426
  %5523 = fadd fast float %5425, %5521
  %5524 = fsub fast float -0.000000e+00, %5523
  %5525 = fcmp ogt float %5519, -0.000000e+00
  %5526 = select i1 %5525, float %5524, float %5522
  %5527 = call float @dx.op.unary.f32(i32 6, float %5520)  ; FAbs(value)
  %5528 = fdiv fast float 1.000000e+00, %5527
  %5529 = fmul fast float %5526, %5528
  %5530 = call float @dx.op.binary.f32(i32 35, float %5529, float 0.000000e+00)  ; FMax(a,b)
  %5531 = fsub fast float -0.000000e+00, %5471
  %5532 = fsub fast float -0.000000e+00, %5472
  %5533 = fsub fast float -0.000000e+00, %5473
  %5534 = call float @dx.op.dot3.f32(i32 55, float %5339, float %5340, float %5341, float %5531, float %5532, float %5533)  ; Dot3(ax,ay,az,bx,by,bz)
  %5535 = fsub fast float -0.000000e+00, %5534
  %5536 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5531, float %5532, float %5533)  ; Dot3(ax,ay,az,bx,by,bz)
  %5537 = fadd fast float %5536, %5430
  %5538 = fadd fast float %5429, %5536
  %5539 = fsub fast float -0.000000e+00, %5538
  %5540 = fcmp ogt float %5534, -0.000000e+00
  %5541 = select i1 %5540, float %5539, float %5537
  %5542 = call float @dx.op.unary.f32(i32 6, float %5535)  ; FAbs(value)
  %5543 = fdiv fast float 1.000000e+00, %5542
  %5544 = fmul fast float %5541, %5543
  %5545 = call float @dx.op.binary.f32(i32 35, float %5544, float 0.000000e+00)  ; FMax(a,b)
  %5546 = call float @dx.op.binary.f32(i32 36, float %5530, float %5545)  ; FMin(a,b)
  %5547 = call float @dx.op.binary.f32(i32 36, float %5515, float %5546)  ; FMin(a,b)
  %5548 = fmul fast float %5547, %5339
  %5549 = fmul fast float %5547, %5340
  %5550 = fmul fast float %5547, %5341
  %5551 = fadd fast float %5548, %203
  %5552 = fadd fast float %5549, %204
  %5553 = fadd fast float %5550, %205
  %5554 = fsub fast float %5551, %5399
  %5555 = fsub fast float %5552, %5400
  %5556 = fsub fast float %5553, %5401
  br label %5564

; <label>:5557                                    ; preds = %5499
  %5558 = fmul fast float %5339, 8.096000e+03
  %5559 = fmul fast float %5340, 8.096000e+03
  %5560 = fmul fast float %5341, 8.096000e+03
  %5561 = fadd fast float %5558, %203
  %5562 = fadd fast float %5559, %204
  %5563 = fadd fast float %5560, %205
  br label %5564

; <label>:5564                                    ; preds = %5557, %5500
  %5565 = phi float [ %5339, %5557 ], [ %5554, %5500 ]
  %5566 = phi float [ %5340, %5557 ], [ %5555, %5500 ]
  %5567 = phi float [ %5341, %5557 ], [ %5556, %5500 ]
  %5568 = phi float [ %5561, %5557 ], [ %5551, %5500 ]
  %5569 = phi float [ %5562, %5557 ], [ %5552, %5500 ]
  %5570 = phi float [ %5563, %5557 ], [ %5553, %5500 ]
  %5571 = fcmp fast olt float %5418, 1.000000e+00
  br i1 %5571, label %5572, label %5603, !dx.controlflow.hints !102

; <label>:5572                                    ; preds = %5564
  %5573 = fmul fast float %5567, %5416
  %5574 = fmul fast float %5566, %5417
  %5575 = fsub fast float %5573, %5574
  %5576 = fmul fast float %5565, %5417
  %5577 = fmul fast float %5567, %5415
  %5578 = fsub fast float %5576, %5577
  %5579 = fmul fast float %5566, %5415
  %5580 = fmul fast float %5565, %5416
  %5581 = fsub fast float %5579, %5580
  %5582 = fmul fast float %5575, 2.000000e+00
  %5583 = fmul fast float %5578, 2.000000e+00
  %5584 = fmul fast float %5581, 2.000000e+00
  %5585 = fmul fast float %5582, %5418
  %5586 = fmul fast float %5583, %5418
  %5587 = fmul fast float %5584, %5418
  %5588 = fmul fast float %5584, %5416
  %5589 = fmul fast float %5583, %5417
  %5590 = fmul fast float %5582, %5417
  %5591 = fmul fast float %5584, %5415
  %5592 = fmul fast float %5583, %5415
  %5593 = fmul fast float %5582, %5416
  %5594 = fadd fast float %5588, %5565
  %5595 = fadd fast float %5594, %5585
  %5596 = fsub fast float %5595, %5589
  %5597 = fsub fast float %5566, %5591
  %5598 = fadd fast float %5597, %5586
  %5599 = fadd fast float %5598, %5590
  %5600 = fadd fast float %5587, %5567
  %5601 = fsub fast float %5600, %5593
  %5602 = fadd fast float %5601, %5592
  br label %5603

; <label>:5603                                    ; preds = %5572, %5564
  %5604 = phi float [ %5596, %5572 ], [ %5565, %5564 ]
  %5605 = phi float [ %5599, %5572 ], [ %5566, %5564 ]
  %5606 = phi float [ %5602, %5572 ], [ %5567, %5564 ]
  br i1 %5444, label %5638, label %5607

; <label>:5607                                    ; preds = %5603
  %5608 = fmul fast float %5078, 0x400187C840000000
  %5609 = fadd fast float %5608, 0xC00EFC2120000000
  %5610 = fmul fast float %5609, %5078
  %5611 = fadd fast float %5610, 0x3FE5D16340000000
  %5612 = fmul fast float %5611, %5078
  %5613 = fadd fast float %5612, 1.000000e+00
  %5614 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5615 = fsub fast float %5568, %203
  %5616 = fsub fast float %5569, %204
  %5617 = fsub fast float %5570, %205
  %5618 = fsub fast float %5568, %5399
  %5619 = fsub fast float %5569, %5400
  %5620 = fsub fast float %5570, %5401
  %5621 = call float @dx.op.dot3.f32(i32 55, float %5615, float %5616, float %5617, float %5615, float %5616, float %5617)  ; Dot3(ax,ay,az,bx,by,bz)
  %5622 = call float @dx.op.dot3.f32(i32 55, float %5618, float %5619, float %5620, float %5618, float %5619, float %5620)  ; Dot3(ax,ay,az,bx,by,bz)
  %5623 = fadd fast float %5622, 0x3EE4F8B580000000
  %5624 = fdiv fast float %5621, %5623
  %5625 = bitcast float %5624 to i32
  %5626 = ashr i32 %5625, 1
  %5627 = add nsw i32 %5626, 532487669
  %5628 = bitcast i32 %5627 to float
  %5629 = fmul fast float %5628, %5614
  %5630 = call float @dx.op.unary.f32(i32 7, float %5629)  ; Saturate(value)
  %5631 = fmul fast float %5630, 0x4009981AE0000000
  %5632 = fsub fast float 0x40111BBD80000000, %5631
  %5633 = fmul fast float %5632, %5630
  %5634 = fadd fast float %5633, 0xC0009F6020000000
  %5635 = fmul fast float %5634, %5630
  %5636 = fadd fast float %5635, 1.000000e+00
  %5637 = call float @dx.op.unary.f32(i32 7, float %5636)  ; Saturate(value)
  br label %5641

; <label>:5638                                    ; preds = %5603
  %5639 = icmp ne i32 %5445, -1
  %5640 = zext i1 %5639 to i32
  br label %5641

; <label>:5641                                    ; preds = %5638, %5607
  %5642 = phi float [ %5078, %5638 ], [ %5637, %5607 ]
  %5643 = phi i32 [ %5640, %5638 ], [ 0, %5607 ]
  %5644 = fmul float %5642, 5.000000e+00
  %5645 = fsub float 5.000000e+00, %5644
  %5646 = icmp ne i32 %5643, 0
  %5647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5648 = extractvalue %dx.types.CBufRet.f32 %5647, 3
  %5649 = fadd fast float %5648, %5645
  %5650 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5649)  ; FMax(a,b)
  %5651 = call float @dx.op.unary.f32(i32 6, float %5604)  ; FAbs(value)
  %5652 = call float @dx.op.unary.f32(i32 6, float %5605)  ; FAbs(value)
  %5653 = fadd fast float %5652, %5651
  %5654 = call float @dx.op.unary.f32(i32 6, float %5606)  ; FAbs(value)
  %5655 = fadd fast float %5653, %5654
  %5656 = fcmp fast oeq float %5655, 0.000000e+00
  %5657 = fdiv fast float 1.000000e+00, %5655
  %5658 = select i1 %5656, float 1.000000e+00, float %5657
  %5659 = fmul fast float %5658, %5604
  %5660 = fmul fast float %5658, %5605
  %5661 = call float @dx.op.unary.f32(i32 6, float %5660)  ; FAbs(value)
  %5662 = call float @dx.op.unary.f32(i32 6, float %5659)  ; FAbs(value)
  %5663 = fsub fast float 1.000000e+00, %5661
  %5664 = fsub fast float 1.000000e+00, %5662
  %5665 = fcmp fast oge float %5659, 0.000000e+00
  %5666 = fcmp fast oge float %5660, 0.000000e+00
  %5667 = select i1 %5665, float 1.000000e+00, float -1.000000e+00
  %5668 = select i1 %5666, float 1.000000e+00, float -1.000000e+00
  %5669 = fcmp fast ole float %5606, 0.000000e+00
  %5670 = fmul fast float %5667, %5663
  %5671 = fmul fast float %5668, %5664
  %5672 = select i1 %5669, float %5670, float %5659
  %5673 = select i1 %5669, float %5671, float %5660
  %5674 = fmul fast float %5672, 5.000000e-01
  %5675 = fmul fast float %5673, 5.000000e-01
  %5676 = fadd fast float %5674, 5.000000e-01
  %5677 = fadd fast float %5675, 5.000000e-01
  %5678 = uitofp i32 %5442 to float
  %5679 = call float @dx.op.binary.f32(i32 36, float %5650, float 3.000000e+00)  ; FMin(a,b)
  %5680 = fadd fast float %5679, 2.000000e+00
  %5681 = call float @dx.op.unary.f32(i32 21, float %5680)  ; Exp(value)
  %5682 = extractvalue %dx.types.CBufRet.f32 %5647, 1
  %5683 = fmul fast float %5682, %5681
  %5684 = fmul fast float %5683, 2.000000e+00
  %5685 = fsub fast float 1.000000e+00, %5684
  %5686 = fmul fast float %5676, %5685
  %5687 = fmul fast float %5677, %5685
  %5688 = fadd fast float %5686, %5683
  %5689 = fadd fast float %5687, %5683
  %5690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %53, float %5688, float %5689, float %5678, float undef, i32 0, i32 0, i32 undef, float %5650)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5691 = extractvalue %dx.types.ResRet.f32 %5690, 0
  %5692 = extractvalue %dx.types.ResRet.f32 %5690, 1
  %5693 = extractvalue %dx.types.ResRet.f32 %5690, 2
  %5694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5695 = extractvalue %dx.types.CBufRet.f32 %5694, 3
  %5696 = fmul fast float %5695, %5412
  %5697 = call float @dx.op.binary.f32(i32 36, float %5145, float %5696)  ; FMin(a,b)
  %5698 = select i1 %5646, float %5697, float %5696
  %5699 = fmul fast float %5691, %5491
  %5700 = fmul fast float %5699, %5698
  %5701 = fmul fast float %5692, %5491
  %5702 = fmul fast float %5701, %5698
  %5703 = fmul fast float %5693, %5491
  %5704 = fmul fast float %5703, %5698
  %5705 = fadd fast float %5700, %5387
  %5706 = fadd fast float %5702, %5388
  %5707 = fadd fast float %5704, %5389
  %5708 = fsub fast float %5390, %5491
  br label %5493

; <label>:5709                                    ; preds = %5493
  br label %5710

; <label>:5710                                    ; preds = %5709, %5356
  %5711 = phi float [ %5357, %5356 ], [ %5494, %5709 ]
  %5712 = phi float [ %5358, %5356 ], [ %5495, %5709 ]
  %5713 = phi float [ %5359, %5356 ], [ %5496, %5709 ]
  %5714 = phi float [ %5360, %5356 ], [ %5497, %5709 ]
  %5715 = add i32 %5361, 1
  %5716 = icmp ugt i32 %5715, %5353
  br i1 %5716, label %5717, label %5356, !llvm.loop !103

; <label>:5717                                    ; preds = %5710
  br label %5718

; <label>:5718                                    ; preds = %5717, %5338
  %5719 = phi float [ 0.000000e+00, %5338 ], [ %5711, %5717 ]
  %5720 = phi float [ 0.000000e+00, %5338 ], [ %5712, %5717 ]
  %5721 = phi float [ 0.000000e+00, %5338 ], [ %5713, %5717 ]
  %5722 = call float @dx.op.dot3.f32(i32 55, float %5719, float %5720, float %5721, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5723 = select i1 %269, float 0.000000e+00, float %5719
  %5724 = select i1 %269, float %5722, float %5720
  %5725 = select i1 %269, float 0.000000e+00, float %5721
  %5726 = fcmp fast olt float %5264, 0.000000e+00
  %5727 = call float @dx.op.unary.f32(i32 6, float %5264)  ; FAbs(value)
  %5728 = fmul fast float %5727, %5204
  %5729 = fmul fast float %5727, %5205
  %5730 = fmul fast float %5727, %5206
  %5731 = select i1 %5726, float %5204, float %5728
  %5732 = select i1 %5726, float %5205, float %5729
  %5733 = select i1 %5726, float %5206, float %5730
  %5734 = fsub fast float 1.000000e+00, %5727
  %5735 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5736 = fmul fast float %5735, %5723
  %5737 = fmul fast float %5735, %5724
  %5738 = fmul fast float %5735, %5725
  %5739 = fadd fast float %5731, %5736
  %5740 = fadd fast float %5732, %5737
  %5741 = fadd fast float %5733, %5738
  br label %5742

; <label>:5742                                    ; preds = %5718, %5247
  %5743 = phi float [ %5204, %5247 ], [ %5739, %5718 ]
  %5744 = phi float [ %5205, %5247 ], [ %5740, %5718 ]
  %5745 = phi float [ %5206, %5247 ], [ %5741, %5718 ]
  %5746 = fmul fast float %5253, %5200
  %5747 = fmul fast float %5253, %5201
  %5748 = fmul fast float %5253, %5202
  %5749 = call float @dx.op.dot3.f32(i32 55, float %5075, float %5076, float %5077, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5750 = fcmp fast ogt float %5749, 0x3E7FF19E20000000
  %5751 = fdiv fast float 1.000000e+00, %5749
  %5752 = select i1 %5750, float %5751, float 0.000000e+00
  %5753 = fmul fast float %5752, %5075
  %5754 = fmul fast float %5752, %5076
  %5755 = fmul fast float %5752, %5077
  %5756 = fadd fast float %5753, -1.000000e+00
  %5757 = fadd fast float %5754, -1.000000e+00
  %5758 = fadd fast float %5755, -1.000000e+00
  %5759 = fmul fast float %5756, 5.000000e-01
  %5760 = fmul fast float %5757, 5.000000e-01
  %5761 = fmul fast float %5758, 5.000000e-01
  %5762 = fadd fast float %5759, 1.000000e+00
  %5763 = fadd fast float %5760, 1.000000e+00
  %5764 = fadd fast float %5761, 1.000000e+00
  %5765 = fmul fast float %5743, %5248
  %5766 = fmul fast float %5744, %5249
  %5767 = fmul fast float %5745, %5250
  %5768 = fsub fast float 1.000000e+00, %5083
  %5769 = bitcast float %5768 to i32
  %5770 = sitofp i32 %5769 to float
  %5771 = fmul fast float %5770, 5.000000e+00
  %5772 = fadd fast float %5771, 0xC1EFBF8940000000
  %5773 = fptosi float %5772 to i32
  %5774 = bitcast i32 %5773 to float
  %5775 = fmul fast float %5774, %3875
  %5776 = fmul fast float %5200, %5775
  %5777 = fmul fast float %5776, %5253
  %5778 = fmul fast float %5777, %5762
  %5779 = fmul fast float %5201, %5775
  %5780 = fmul fast float %5779, %5253
  %5781 = fmul fast float %5780, %5763
  %5782 = fmul fast float %5202, %5775
  %5783 = fmul fast float %5782, %5253
  %5784 = fmul fast float %5783, %5764
  %5785 = fmul fast float %5746, %3871
  %5786 = fmul fast float %5747, %3871
  %5787 = fmul fast float %5748, %3871
  %5788 = fadd fast float %5765, %3867
  %5789 = fadd fast float %5788, %5778
  %5790 = fmul fast float %5789, %3871
  %5791 = fadd fast float %5766, %3868
  %5792 = fadd fast float %5791, %5781
  %5793 = fmul fast float %5792, %3871
  %5794 = fadd fast float %5767, %3869
  %5795 = fadd fast float %5794, %5784
  %5796 = fmul fast float %5795, %3871
  %5797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.f32 %5797, 3
  %5799 = fcmp fast oeq float %5798, 0.000000e+00
  br i1 %5799, label %7503, label %5800

; <label>:5800                                    ; preds = %5742
  %5801 = extractvalue %dx.types.CBufRet.f32 %5797, 0
  %5802 = extractvalue %dx.types.CBufRet.f32 %5797, 1
  %5803 = extractvalue %dx.types.CBufRet.f32 %5797, 2
  %5804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5805 = extractvalue %dx.types.CBufRet.f32 %5804, 0
  %5806 = extractvalue %dx.types.CBufRet.f32 %5804, 1
  %5807 = extractvalue %dx.types.CBufRet.f32 %5804, 2
  %5808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5809 = extractvalue %dx.types.CBufRet.f32 %5808, 0
  %5810 = extractvalue %dx.types.CBufRet.f32 %5808, 1
  %5811 = call float @dx.op.dot3.f32(i32 55, float %5805, float %5806, float %5807, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5812 = select i1 %269, float %5809, float %5805
  %5813 = select i1 %269, float %5811, float %5806
  %5814 = select i1 %269, float %5810, float %5807
  %5815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.f32 %5815, 2
  %5817 = fmul fast float %5816, %123
  %5818 = fmul fast float %5816, %124
  %5819 = fmul fast float %5816, %125
  %5820 = fadd fast float %5817, %203
  %5821 = fadd fast float %5818, %204
  %5822 = fadd fast float %5819, %205
  %5823 = fcmp fast olt float %5798, 0.000000e+00
  br i1 %5823, label %7081, label %5824

; <label>:5824                                    ; preds = %5800
  %5825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5826 = extractvalue %dx.types.CBufRet.f32 %5825, 0
  %5827 = extractvalue %dx.types.CBufRet.f32 %5825, 1
  %5828 = extractvalue %dx.types.CBufRet.f32 %5825, 2
  %5829 = extractvalue %dx.types.CBufRet.f32 %5825, 3
  %5830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5831 = extractvalue %dx.types.CBufRet.f32 %5830, 0
  %5832 = extractvalue %dx.types.CBufRet.f32 %5830, 1
  %5833 = extractvalue %dx.types.CBufRet.f32 %5830, 2
  %5834 = extractvalue %dx.types.CBufRet.f32 %5830, 3
  %5835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5836 = extractvalue %dx.types.CBufRet.f32 %5835, 0
  %5837 = extractvalue %dx.types.CBufRet.f32 %5835, 1
  %5838 = extractvalue %dx.types.CBufRet.f32 %5835, 2
  %5839 = extractvalue %dx.types.CBufRet.f32 %5835, 3
  %5840 = fmul fast float %5826, %5820
  %5841 = call float @dx.op.tertiary.f32(i32 46, float %5821, float %5827, float %5840)  ; FMad(a,b,c)
  %5842 = call float @dx.op.tertiary.f32(i32 46, float %5822, float %5828, float %5841)  ; FMad(a,b,c)
  %5843 = fadd fast float %5842, %5829
  %5844 = fmul fast float %5831, %5820
  %5845 = call float @dx.op.tertiary.f32(i32 46, float %5821, float %5832, float %5844)  ; FMad(a,b,c)
  %5846 = call float @dx.op.tertiary.f32(i32 46, float %5822, float %5833, float %5845)  ; FMad(a,b,c)
  %5847 = fadd fast float %5846, %5834
  %5848 = fmul fast float %5836, %5820
  %5849 = call float @dx.op.tertiary.f32(i32 46, float %5821, float %5837, float %5848)  ; FMad(a,b,c)
  %5850 = call float @dx.op.tertiary.f32(i32 46, float %5822, float %5838, float %5849)  ; FMad(a,b,c)
  %5851 = fadd fast float %5850, %5839
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = fcmp fast une float %5853, 0.000000e+00
  %5855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5856 = extractvalue %dx.types.CBufRet.f32 %5855, 0
  %5857 = extractvalue %dx.types.CBufRet.f32 %5855, 1
  %5858 = extractvalue %dx.types.CBufRet.f32 %5855, 3
  %5859 = fmul fast float %5858, %5843
  %5860 = fmul fast float %5858, %5847
  %5861 = fadd fast float %5859, %5856
  %5862 = fadd fast float %5860, %5857
  %5863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5863, 0
  %5865 = extractvalue %dx.types.CBufRet.f32 %5863, 1
  %5866 = extractvalue %dx.types.CBufRet.f32 %5863, 3
  %5867 = fmul fast float %5866, %5843
  %5868 = fmul fast float %5866, %5847
  %5869 = fadd fast float %5867, %5864
  %5870 = fadd fast float %5868, %5865
  %5871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.f32 %5871, 1
  %5873 = fsub fast float %5872, %5851
  %5874 = extractvalue %dx.types.CBufRet.f32 %5871, 2
  %5875 = fmul fast float %5873, %5874
  %5876 = fsub fast float 1.000000e+00, %5875
  %5877 = call float @dx.op.unary.f32(i32 7, float %5876)  ; Saturate(value)
  br i1 %5854, label %5938, label %5878

; <label>:5878                                    ; preds = %5824
  %5879 = extractvalue %dx.types.CBufRet.f32 %5863, 2
  %5880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.f32 %5880, 2
  %5882 = fadd fast float %5881, %5879
  %5883 = fcmp fast ogt float %5882, 0.000000e+00
  br i1 %5883, label %5884, label %5908

; <label>:5884                                    ; preds = %5878
  %5885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5886 = extractvalue %dx.types.CBufRet.f32 %5885, 0
  %5887 = extractvalue %dx.types.CBufRet.f32 %5885, 1
  %5888 = fsub fast float %5869, %5886
  %5889 = fsub fast float %5870, %5887
  %5890 = fcmp fast olt float %5888, 0.000000e+00
  %5891 = fcmp fast olt float %5889, 0.000000e+00
  %5892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5892, 0
  %5894 = extractvalue %dx.types.CBufRet.f32 %5892, 1
  %5895 = extractvalue %dx.types.CBufRet.f32 %5892, 2
  %5896 = extractvalue %dx.types.CBufRet.f32 %5892, 3
  %5897 = select i1 %5890, float %5893, float %5895
  %5898 = select i1 %5891, float %5894, float %5896
  %5899 = fmul fast float %5897, %5888
  %5900 = fmul fast float %5898, %5889
  %5901 = call float @dx.op.unary.f32(i32 6, float %5899)  ; FAbs(value)
  %5902 = call float @dx.op.unary.f32(i32 6, float %5900)  ; FAbs(value)
  %5903 = extractvalue %dx.types.CBufRet.f32 %5815, 0
  %5904 = call float @dx.op.binary.f32(i32 35, float %5901, float %5902)  ; FMax(a,b)
  %5905 = fsub fast float %5903, %5904
  %5906 = call float @dx.op.unary.f32(i32 7, float %5905)  ; Saturate(value)
  %5907 = fmul fast float %5906, %5877
  br label %5908

; <label>:5908                                    ; preds = %5884, %5878
  %5909 = phi float [ %5907, %5884 ], [ 0.000000e+00, %5878 ]
  %5910 = extractvalue %dx.types.CBufRet.f32 %5855, 2
  %5911 = extractvalue %dx.types.CBufRet.f32 %5880, 1
  %5912 = fadd fast float %5911, %5910
  %5913 = fcmp fast ogt float %5912, 0.000000e+00
  br i1 %5913, label %5914, label %5938

; <label>:5914                                    ; preds = %5908
  %5915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5916 = extractvalue %dx.types.CBufRet.f32 %5915, 0
  %5917 = extractvalue %dx.types.CBufRet.f32 %5915, 1
  %5918 = fsub fast float %5861, %5916
  %5919 = fsub fast float %5862, %5917
  %5920 = fcmp fast olt float %5918, 0.000000e+00
  %5921 = fcmp fast olt float %5919, 0.000000e+00
  %5922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5923 = extractvalue %dx.types.CBufRet.f32 %5922, 0
  %5924 = extractvalue %dx.types.CBufRet.f32 %5922, 1
  %5925 = extractvalue %dx.types.CBufRet.f32 %5922, 2
  %5926 = extractvalue %dx.types.CBufRet.f32 %5922, 3
  %5927 = select i1 %5920, float %5923, float %5925
  %5928 = select i1 %5921, float %5924, float %5926
  %5929 = fmul fast float %5927, %5918
  %5930 = fmul fast float %5928, %5919
  %5931 = call float @dx.op.unary.f32(i32 6, float %5929)  ; FAbs(value)
  %5932 = call float @dx.op.unary.f32(i32 6, float %5930)  ; FAbs(value)
  %5933 = extractvalue %dx.types.CBufRet.f32 %5815, 0
  %5934 = call float @dx.op.binary.f32(i32 35, float %5931, float %5932)  ; FMax(a,b)
  %5935 = fsub fast float %5933, %5934
  %5936 = call float @dx.op.unary.f32(i32 7, float %5935)  ; Saturate(value)
  %5937 = fmul fast float %5936, %5877
  br label %5938

; <label>:5938                                    ; preds = %5914, %5908, %5824
  %5939 = phi float [ 0.000000e+00, %5824 ], [ %5937, %5914 ], [ 0.000000e+00, %5908 ]
  %5940 = phi float [ 0.000000e+00, %5824 ], [ %5909, %5914 ], [ %5909, %5908 ]
  %5941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5942 = extractvalue %dx.types.CBufRet.f32 %5941, 1
  %5943 = call float @dx.op.unary.f32(i32 7, float %5942)  ; Saturate(value)
  %5944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5945 = extractvalue %dx.types.CBufRet.f32 %5944, 0
  %5946 = extractvalue %dx.types.CBufRet.f32 %5944, 1
  %5947 = fsub fast float %5843, %5945
  %5948 = fsub fast float %5847, %5946
  %5949 = fcmp fast olt float %5947, 0.000000e+00
  %5950 = fcmp fast olt float %5948, 0.000000e+00
  %5951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5952 = extractvalue %dx.types.CBufRet.f32 %5951, 0
  %5953 = extractvalue %dx.types.CBufRet.f32 %5951, 1
  %5954 = extractvalue %dx.types.CBufRet.f32 %5951, 2
  %5955 = extractvalue %dx.types.CBufRet.f32 %5951, 3
  %5956 = select i1 %5949, float %5952, float %5954
  %5957 = select i1 %5950, float %5953, float %5955
  %5958 = fmul fast float %5956, %5947
  %5959 = fmul fast float %5957, %5948
  %5960 = call float @dx.op.unary.f32(i32 6, float %5958)  ; FAbs(value)
  %5961 = call float @dx.op.unary.f32(i32 6, float %5959)  ; FAbs(value)
  %5962 = extractvalue %dx.types.CBufRet.f32 %5815, 0
  %5963 = call float @dx.op.binary.f32(i32 35, float %5960, float %5961)  ; FMax(a,b)
  %5964 = fsub fast float %5962, %5963
  %5965 = call float @dx.op.unary.f32(i32 7, float %5964)  ; Saturate(value)
  %5966 = call float @dx.op.binary.f32(i32 36, float %5965, float %5943)  ; FMin(a,b)
  %5967 = fmul fast float %5966, %5877
  %5968 = fsub fast float %5939, %5967
  %5969 = fsub fast float %5940, %5939
  %5970 = fsub fast float %5969, %5967
  %5971 = call float @dx.op.binary.f32(i32 35, float %5939, float %5940)  ; FMax(a,b)
  %5972 = call float @dx.op.binary.f32(i32 35, float %5967, float %5971)  ; FMax(a,b)
  %5973 = fcmp fast olt float %5972, 1.000000e+00
  br i1 %5973, label %5974, label %6372, !dx.controlflow.hints !105

; <label>:5974                                    ; preds = %5938
  %5975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5976 = extractvalue %dx.types.CBufRet.f32 %5975, 0
  %5977 = fcmp fast une float %5976, 0.000000e+00
  br i1 %5977, label %5978, label %6372, !dx.controlflow.hints !106

; <label>:5978                                    ; preds = %5974
  %5979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5980 = extractvalue %dx.types.CBufRet.f32 %5979, 0
  %5981 = extractvalue %dx.types.CBufRet.f32 %5979, 1
  %5982 = extractvalue %dx.types.CBufRet.f32 %5979, 2
  %5983 = extractvalue %dx.types.CBufRet.f32 %5979, 3
  %5984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5985 = extractvalue %dx.types.CBufRet.f32 %5984, 0
  %5986 = extractvalue %dx.types.CBufRet.f32 %5984, 1
  %5987 = extractvalue %dx.types.CBufRet.f32 %5984, 2
  %5988 = extractvalue %dx.types.CBufRet.f32 %5984, 3
  %5989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5990 = extractvalue %dx.types.CBufRet.f32 %5989, 0
  %5991 = extractvalue %dx.types.CBufRet.f32 %5989, 1
  %5992 = extractvalue %dx.types.CBufRet.f32 %5989, 2
  %5993 = extractvalue %dx.types.CBufRet.f32 %5989, 3
  %5994 = fmul fast float %5980, %5820
  %5995 = call float @dx.op.tertiary.f32(i32 46, float %5821, float %5981, float %5994)  ; FMad(a,b,c)
  %5996 = call float @dx.op.tertiary.f32(i32 46, float %5822, float %5982, float %5995)  ; FMad(a,b,c)
  %5997 = fadd fast float %5996, %5983
  %5998 = fmul fast float %5985, %5820
  %5999 = call float @dx.op.tertiary.f32(i32 46, float %5821, float %5986, float %5998)  ; FMad(a,b,c)
  %6000 = call float @dx.op.tertiary.f32(i32 46, float %5822, float %5987, float %5999)  ; FMad(a,b,c)
  %6001 = fadd fast float %6000, %5988
  %6002 = fmul fast float %5990, %5820
  %6003 = call float @dx.op.tertiary.f32(i32 46, float %5821, float %5991, float %6002)  ; FMad(a,b,c)
  %6004 = call float @dx.op.tertiary.f32(i32 46, float %5822, float %5992, float %6003)  ; FMad(a,b,c)
  %6005 = fadd fast float %6004, %5993
  %6006 = fcmp fast oge float %5997, 1.000000e+00
  %6007 = fcmp fast oge float %6001, 1.000000e+00
  %6008 = or i1 %6006, %6007
  %6009 = fcmp fast olt float %5997, 0.000000e+00
  %6010 = fcmp fast olt float %6001, 0.000000e+00
  %6011 = or i1 %6009, %6010
  %6012 = or i1 %6008, %6011
  br i1 %6012, label %6372, label %6013, !dx.controlflow.hints !107

; <label>:6013                                    ; preds = %5978
  %6014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6015 = extractvalue %dx.types.CBufRet.f32 %6014, 0
  %6016 = extractvalue %dx.types.CBufRet.f32 %6014, 1
  %6017 = extractvalue %dx.types.CBufRet.f32 %6014, 2
  %6018 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6019 = extractvalue %dx.types.CBufRet.i32 %6018, 2
  %6020 = uitofp i32 %6019 to float
  %6021 = extractvalue %dx.types.CBufRet.i32 %6018, 3
  %6022 = uitofp i32 %6021 to float
  %6023 = extractvalue %dx.types.CBufRet.f32 %6014, 3
  %6024 = fmul fast float %6023, 2.000000e+00
  %6025 = fsub fast float %5997, %6015
  %6026 = fsub fast float %6001, %6016
  %6027 = fmul fast float %6024, %6025
  %6028 = fmul fast float %6024, %6026
  %6029 = fdiv fast float 1.000000e+00, %5803
  %6030 = fmul fast float %6028, %6029
  %6031 = call float @dx.op.unary.f32(i32 6, float %6030)  ; FAbs(value)
  %6032 = fmul fast float %6017, %5822
  %6033 = fmul fast float %6032, %6024
  %6034 = call float @dx.op.unary.f32(i32 6, float %6033)  ; FAbs(value)
  %6035 = call float @dx.op.unary.f32(i32 6, float %6027)  ; FAbs(value)
  %6036 = call float @dx.op.binary.f32(i32 35, float %6034, float %6031)  ; FMax(a,b)
  %6037 = call float @dx.op.binary.f32(i32 35, float %6035, float %6036)  ; FMax(a,b)
  %6038 = fmul fast float %6037, 2.000000e+00
  %6039 = call float @dx.op.unary.f32(i32 23, float %6038)  ; Log(value)
  %6040 = call float @dx.op.binary.f32(i32 35, float %6039, float %6020)  ; FMax(a,b)
  %6041 = call float @dx.op.unary.f32(i32 22, float %6040)  ; Frc(value)
  %6042 = fadd fast float %6041, 0xBFEA666660000000
  %6043 = fmul fast float %6042, 8.000000e+00
  %6044 = call float @dx.op.unary.f32(i32 7, float %6043)  ; Saturate(value)
  %6045 = call float @dx.op.unary.f32(i32 27, float %6040)  ; Round_ni(value)
  %6046 = fadd fast float %6045, %6044
  %6047 = call float @dx.op.binary.f32(i32 36, float %6046, float %6022)  ; FMin(a,b)
  %6048 = call float @dx.op.unary.f32(i32 27, float %6047)  ; Round_ni(value)
  %6049 = fsub fast float -0.000000e+00, %6048
  %6050 = call float @dx.op.unary.f32(i32 21, float %6049)  ; Exp(value)
  %6051 = fmul fast float %6050, %6024
  %6052 = fmul fast float %6051, %5997
  %6053 = fmul fast float %6051, %6001
  %6054 = fmul fast float %6052, 2.500000e-01
  %6055 = fmul fast float %6053, 2.500000e-01
  %6056 = fadd fast float %6054, 5.000000e-01
  %6057 = fadd fast float %6055, 5.000000e-01
  %6058 = fsub fast float %6022, %6020
  %6059 = fptoui float %6058 to i32
  %6060 = add i32 %6059, 320
  %6061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %6060)  ; CBufferLoadLegacy(handle,regIndex)
  %6062 = extractvalue %dx.types.CBufRet.f32 %6061, 0
  %6063 = extractvalue %dx.types.CBufRet.f32 %6061, 1
  %6064 = fcmp fast une float %6047, %6022
  %6065 = fsub fast float %5997, %6062
  %6066 = fsub fast float %6001, %6063
  %6067 = call float @dx.op.unary.f32(i32 6, float %6065)  ; FAbs(value)
  %6068 = call float @dx.op.unary.f32(i32 6, float %6066)  ; FAbs(value)
  %6069 = fmul fast float %6067, %6051
  %6070 = fmul fast float %6068, %6051
  %6071 = fcmp fast olt float %6069, 1.000000e+00
  %6072 = fcmp fast olt float %6070, 1.000000e+00
  %6073 = and i1 %6071, %6072
  %6074 = or i1 %6064, %6073
  br i1 %6074, label %6075, label %6372, !dx.controlflow.hints !108

; <label>:6075                                    ; preds = %6013
  %6076 = fmul fast float %6053, 5.000000e-01
  %6077 = fmul fast float %6052, 5.000000e-01
  %6078 = fadd fast float %6076, 5.000000e-01
  %6079 = fadd fast float %6077, 5.000000e-01
  %6080 = sitofp i32 %6019 to float
  %6081 = fsub fast float %6047, %6080
  %6082 = call float @dx.op.unary.f32(i32 27, float %6081)  ; Round_ni(value)
  %6083 = call float @dx.op.unary.f32(i32 22, float %6047)  ; Frc(value)
  %6084 = call float @dx.op.unary.f32(i32 22, float %6079)  ; Frc(value)
  %6085 = call float @dx.op.unary.f32(i32 22, float %6078)  ; Frc(value)
  %6086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6084, float %6085, float %6082, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6087 = extractvalue %dx.types.ResRet.f32 %6086, 0
  %6088 = extractvalue %dx.types.ResRet.f32 %6086, 1
  %6089 = extractvalue %dx.types.ResRet.f32 %6086, 2
  %6090 = extractvalue %dx.types.ResRet.f32 %6086, 3
  %6091 = fcmp fast ogt float %6083, 0.000000e+00
  br i1 %6091, label %6092, label %6113, !dx.controlflow.hints !109

; <label>:6092                                    ; preds = %6075
  %6093 = fadd fast float %6082, 1.000000e+00
  %6094 = call float @dx.op.unary.f32(i32 22, float %6056)  ; Frc(value)
  %6095 = call float @dx.op.unary.f32(i32 22, float %6057)  ; Frc(value)
  %6096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %6094, float %6095, float %6093, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6097 = extractvalue %dx.types.ResRet.f32 %6096, 0
  %6098 = extractvalue %dx.types.ResRet.f32 %6096, 1
  %6099 = extractvalue %dx.types.ResRet.f32 %6096, 2
  %6100 = extractvalue %dx.types.ResRet.f32 %6096, 3
  %6101 = fsub fast float %6097, %6087
  %6102 = fsub fast float %6098, %6088
  %6103 = fsub fast float %6099, %6089
  %6104 = fsub fast float %6100, %6090
  %6105 = fmul fast float %6101, %6083
  %6106 = fmul fast float %6102, %6083
  %6107 = fmul fast float %6103, %6083
  %6108 = fmul fast float %6104, %6083
  %6109 = fadd fast float %6105, %6087
  %6110 = fadd fast float %6106, %6088
  %6111 = fadd fast float %6107, %6089
  %6112 = fadd fast float %6108, %6090
  br label %6113

; <label>:6113                                    ; preds = %6092, %6075
  %6114 = phi float [ %6109, %6092 ], [ %6087, %6075 ]
  %6115 = phi float [ %6110, %6092 ], [ %6088, %6075 ]
  %6116 = phi float [ %6111, %6092 ], [ %6089, %6075 ]
  %6117 = phi float [ %6112, %6092 ], [ %6090, %6075 ]
  %6118 = fadd fast float %6114, -5.000000e-01
  %6119 = fadd fast float %6116, -5.000000e-01
  %6120 = fmul fast float %6118, 0xBFD5555560000000
  %6121 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6119, float %6120)  ; FMad(a,b,c)
  %6122 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6115, float 0.000000e+00)  ; FMad(a,b,c)
  %6123 = fadd fast float %6122, %6117
  %6124 = fmul fast float %6118, -7.500000e-01
  %6125 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6119, float %6124)  ; FMad(a,b,c)
  %6126 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6115, float 0.000000e+00)  ; FMad(a,b,c)
  %6127 = fadd fast float %6126, %6117
  %6128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6129 = extractvalue %dx.types.CBufRet.f32 %6128, 0
  %6130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6131 = extractvalue %dx.types.CBufRet.f32 %6130, 0
  %6132 = extractvalue %dx.types.CBufRet.f32 %6130, 1
  %6133 = extractvalue %dx.types.CBufRet.f32 %6130, 2
  %6134 = extractvalue %dx.types.CBufRet.f32 %6130, 3
  %6135 = fsub fast float %6131, %6121
  %6136 = fsub fast float %6132, %6123
  %6137 = fsub fast float %6133, %6125
  %6138 = fsub fast float %6134, %6127
  %6139 = fmul fast float %6135, %6129
  %6140 = fmul fast float %6136, %6129
  %6141 = fmul fast float %6137, %6129
  %6142 = fmul fast float %6138, %6129
  %6143 = fadd fast float %6139, %6121
  %6144 = fadd fast float %6140, %6123
  %6145 = fadd fast float %6141, %6125
  %6146 = fadd fast float %6142, %6127
  %6147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6148 = extractvalue %dx.types.ResRet.i32 %6147, 0
  %6149 = and i32 %6148, 536870911
  %6150 = uitofp i32 %6149 to float
  %6151 = fmul fast float %6150, %5997
  %6152 = fmul fast float %6150, %6001
  %6153 = fptoui float %6151 to i32
  %6154 = fptoui float %6152 to i32
  %6155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6156 = extractvalue %dx.types.ResRet.i32 %6155, 0
  %6157 = and i32 %6156, 31
  %6158 = lshr i32 %6153, %6157
  %6159 = lshr i32 %6154, %6157
  %6160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6161 = extractvalue %dx.types.ResRet.i32 %6160, 0
  %6162 = and i32 %6161, 31
  %6163 = shl i32 1, %6162
  %6164 = call i32 @dx.op.binary.i32(i32 40, i32 %6163, i32 4)  ; UMin(a,b)
  %6165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6166 = extractvalue %dx.types.ResRet.i32 %6165, 0
  %6167 = extractvalue %dx.types.ResRet.i32 %6165, 1
  %6168 = icmp eq i32 %6164, 0
  br i1 %6168, label %6210, label %6169

; <label>:6169                                    ; preds = %6113
  br label %6170

; <label>:6170                                    ; preds = %6198, %6169
  %6171 = phi i32 [ %6201, %6198 ], [ 0, %6169 ]
  %6172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6173 = extractvalue %dx.types.ResRet.i32 %6172, 0
  %6174 = lshr i32 %6173, 16
  %6175 = and i32 %6174, 31
  %6176 = shl i32 %6159, %6175
  %6177 = add i32 %6176, %6158
  %6178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6179 = extractvalue %dx.types.ResRet.i32 %6178, 0
  %6180 = and i32 %6179, 31
  %6181 = shl i32 %6177, %6180
  %6182 = add i32 %6181, %6171
  %6183 = shl i32 %6182, 2
  %6184 = add i32 %6183, 32
  %6185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6184, i32 undef)  ; BufferLoad(srv,index,wot)
  %6186 = extractvalue %dx.types.ResRet.i32 %6185, 0
  %6187 = icmp slt i32 %6186, 0
  %6188 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6171
  %6189 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6171
  %6190 = bitcast float* %6188 to i32*
  %6191 = bitcast float* %6189 to i32*
  br i1 %6187, label %6192, label %6198

; <label>:6192                                    ; preds = %6170
  %6193 = and i32 %6186, 1073741823
  %6194 = add nuw nsw i32 %6193, 20
  %6195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6194, i32 undef)  ; BufferLoad(srv,index,wot)
  %6196 = extractvalue %dx.types.ResRet.i32 %6195, 0
  %6197 = extractvalue %dx.types.ResRet.i32 %6195, 1
  br label %6198

; <label>:6198                                    ; preds = %6192, %6170
  %6199 = phi i32 [ %6196, %6192 ], [ %6166, %6170 ]
  %6200 = phi i32 [ %6197, %6192 ], [ %6167, %6170 ]
  store i32 %6199, i32* %6190, align 4
  store i32 %6200, i32* %6191, align 4
  %6201 = add nuw i32 %6171, 1
  %6202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6203 = extractvalue %dx.types.CBufRet.i32 %6202, 2
  %6204 = icmp eq i32 %6203, 0
  %6205 = icmp ugt i32 %6186, -1073741825
  %6206 = and i1 %6205, %6204
  %6207 = icmp ult i32 %6201, %6164
  %6208 = and i1 %6206, %6207
  br i1 %6208, label %6170, label %6209

; <label>:6209                                    ; preds = %6198
  br label %6210

; <label>:6210                                    ; preds = %6209, %6113
  %6211 = phi i32 [ 0, %6113 ], [ %6201, %6209 ]
  %6212 = extractvalue %dx.types.CBufRet.f32 %5975, 2
  %6213 = fptoui float %6212 to i32
  %6214 = icmp eq i32 %6213, 0
  br i1 %6214, label %6266, label %6215

; <label>:6215                                    ; preds = %6210
  br label %6216

; <label>:6216                                    ; preds = %6261, %6215
  %6217 = phi i32 [ %6262, %6261 ], [ %6211, %6215 ]
  %6218 = phi i32 [ %6263, %6261 ], [ 0, %6215 ]
  %6219 = lshr i32 %6218, 2
  %6220 = and i32 %6218, 3
  %6221 = add nuw nsw i32 %6219, 83
  %6222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 %6221)  ; CBufferLoadLegacy(handle,regIndex)
  %6223 = extractvalue %dx.types.CBufRet.i32 %6222, 0
  %6224 = extractvalue %dx.types.CBufRet.i32 %6222, 1
  %6225 = extractvalue %dx.types.CBufRet.i32 %6222, 2
  %6226 = extractvalue %dx.types.CBufRet.i32 %6222, 3
  %6227 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 0
  store i32 %6223, i32* %6227, align 4
  %6228 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 1
  store i32 %6224, i32* %6228, align 4
  %6229 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 2
  store i32 %6225, i32* %6229, align 4
  %6230 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 3
  store i32 %6226, i32* %6230, align 4
  %6231 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 %6220
  %6232 = load i32, i32* %6231, align 4, !tbaa !110, !noalias !114
  %6233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6234 = extractvalue %dx.types.ResRet.i32 %6233, 0
  %6235 = lshr i32 %6234, 16
  %6236 = and i32 %6235, 31
  %6237 = shl i32 %6159, %6236
  %6238 = add i32 %6237, %6158
  %6239 = shl i32 %6238, 2
  %6240 = add i32 %6239, %6232
  %6241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6240, i32 undef)  ; BufferLoad(srv,index,wot)
  %6242 = extractvalue %dx.types.ResRet.i32 %6241, 0
  %6243 = icmp eq i32 %6242, 0
  br i1 %6243, label %6261, label %6244

; <label>:6244                                    ; preds = %6216
  %6245 = icmp slt i32 %6242, 0
  %6246 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6217
  %6247 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6217
  %6248 = bitcast float* %6246 to i32*
  %6249 = bitcast float* %6247 to i32*
  br i1 %6245, label %6250, label %6257

; <label>:6250                                    ; preds = %6244
  %6251 = and i32 %6242, 1073741823
  %6252 = add i32 %6232, 20
  %6253 = add i32 %6252, %6251
  %6254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6253, i32 undef)  ; BufferLoad(srv,index,wot)
  %6255 = extractvalue %dx.types.ResRet.i32 %6254, 0
  %6256 = extractvalue %dx.types.ResRet.i32 %6254, 1
  br label %6257

; <label>:6257                                    ; preds = %6250, %6244
  %6258 = phi i32 [ %6255, %6250 ], [ %6166, %6244 ]
  %6259 = phi i32 [ %6256, %6250 ], [ %6167, %6244 ]
  store i32 %6258, i32* %6248, align 4
  store i32 %6259, i32* %6249, align 4
  %6260 = add i32 %6217, 1
  br label %6261

; <label>:6261                                    ; preds = %6257, %6216
  %6262 = phi i32 [ %6217, %6216 ], [ %6260, %6257 ]
  %6263 = add nuw i32 %6218, 1
  %6264 = icmp eq i32 %6263, %6213
  br i1 %6264, label %6265, label %6216

; <label>:6265                                    ; preds = %6261
  br label %6266

; <label>:6266                                    ; preds = %6265, %6210
  %6267 = phi i32 [ %6211, %6210 ], [ %6262, %6265 ]
  %6268 = icmp eq i32 %6267, 1
  %6269 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 0
  %6270 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 0
  br i1 %6268, label %6271, label %6274

; <label>:6271                                    ; preds = %6266
  %6272 = load float, float* %6269, align 4
  %6273 = load float, float* %6270, align 4
  br label %6301

; <label>:6274                                    ; preds = %6266
  %6275 = load float, float* %6269, align 4
  %6276 = load float, float* %6270, align 4
  %6277 = fdiv fast float 1.000000e+00, %6276
  %6278 = fsub fast float %6275, %6277
  %6279 = icmp ugt i32 %6267, 1
  br i1 %6279, label %6280, label %6296

; <label>:6280                                    ; preds = %6274
  br label %6281

; <label>:6281                                    ; preds = %6281, %6280
  %6282 = phi float [ %6291, %6281 ], [ %6278, %6280 ]
  %6283 = phi float [ %6292, %6281 ], [ %6275, %6280 ]
  %6284 = phi i32 [ %6293, %6281 ], [ 1, %6280 ]
  %6285 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6284
  %6286 = load float, float* %6285, align 4
  %6287 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6284
  %6288 = load float, float* %6287, align 4
  %6289 = fdiv fast float 1.000000e+00, %6288
  %6290 = fsub fast float %6286, %6289
  %6291 = call float @dx.op.binary.f32(i32 36, float %6282, float %6290)  ; FMin(a,b)
  %6292 = call float @dx.op.binary.f32(i32 35, float %6283, float %6286)  ; FMax(a,b)
  %6293 = add nuw i32 %6284, 1
  %6294 = icmp eq i32 %6293, %6267
  br i1 %6294, label %6295, label %6281

; <label>:6295                                    ; preds = %6281
  br label %6296

; <label>:6296                                    ; preds = %6295, %6274
  %6297 = phi float [ %6278, %6274 ], [ %6291, %6295 ]
  %6298 = phi float [ %6275, %6274 ], [ %6292, %6295 ]
  %6299 = fsub fast float %6298, %6297
  %6300 = fdiv fast float 1.000000e+00, %6299
  br label %6301

; <label>:6301                                    ; preds = %6296, %6271
  %6302 = phi float [ %6272, %6271 ], [ %6298, %6296 ]
  %6303 = phi float [ %6273, %6271 ], [ %6300, %6296 ]
  %6304 = fadd fast float %6005, %6302
  %6305 = fmul fast float %6304, %6303
  %6306 = call float @dx.op.unary.f32(i32 7, float %6305)  ; Saturate(value)
  %6307 = fmul fast float %6306, 2.000000e+00
  %6308 = fsub fast float 1.000000e+00, %6307
  %6309 = fmul fast float %6143, %6143
  %6310 = fsub fast float %6144, %6309
  %6311 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6310)  ; FMax(a,b)
  %6312 = fdiv fast float 1.000000e+00, %6311
  %6313 = fmul fast float %6144, %6143
  %6314 = fsub fast float %6145, %6313
  %6315 = fsub fast float %6308, %6143
  %6316 = fmul fast float %6308, %6308
  %6317 = fsub fast float %6316, %6144
  %6318 = fmul fast float %6312, %6314
  %6319 = fmul fast float %6318, %6315
  %6320 = fsub fast float %6317, %6319
  %6321 = fmul fast float %6144, %6144
  %6322 = fsub fast float %6146, %6321
  %6323 = fmul fast float %6314, %6314
  %6324 = fmul fast float %6323, %6312
  %6325 = fsub fast float %6322, %6324
  %6326 = fdiv fast float %6320, %6325
  %6327 = fmul fast float %6326, %6314
  %6328 = fsub fast float %6315, %6327
  %6329 = fmul fast float %6328, %6312
  %6330 = fmul fast float %6329, %6143
  %6331 = fsub fast float 1.000000e+00, %6330
  %6332 = fmul fast float %6326, %6144
  %6333 = fsub fast float %6331, %6332
  %6334 = fmul fast float %6329, %6329
  %6335 = fmul fast float %6326, 4.000000e+00
  %6336 = fmul fast float %6335, %6333
  %6337 = fsub fast float %6334, %6336
  %6338 = call float @dx.op.unary.f32(i32 24, float %6337)  ; Sqrt(value)
  %6339 = fcmp fast oge float %6329, 0.000000e+00
  %6340 = fsub fast float -0.000000e+00, %6338
  %6341 = select i1 %6339, float %6340, float %6338
  %6342 = fsub fast float %6341, %6329
  %6343 = fdiv fast float %6342, %6326
  %6344 = fdiv fast float %6333, %6342
  %6345 = fmul fast float %6343, 5.000000e-01
  %6346 = fmul fast float %6344, 2.000000e+00
  %6347 = select i1 %6339, float %6345, float %6346
  %6348 = select i1 %6339, float %6346, float %6345
  %6349 = call float @dx.op.binary.f32(i32 35, float %6347, float %6348)  ; FMax(a,b)
  %6350 = call float @dx.op.binary.f32(i32 36, float %6347, float %6348)  ; FMin(a,b)
  %6351 = fcmp fast ogt float %6308, %6349
  %6352 = fsub fast float %6308, %6350
  %6353 = fsub fast float %6308, %6349
  %6354 = fsub fast float %6349, %6350
  %6355 = select i1 %6351, float %6353, float %6354
  %6356 = fmul float %6352, %6355
  %6357 = select i1 %6351, float %6350, float %6308
  %6358 = fcmp fast ogt float %6308, %6350
  %6359 = fmul fast float %6357, %6349
  %6360 = fadd fast float %6357, %6349
  %6361 = fmul fast float %6360, %6143
  %6362 = fadd fast float %6359, %6144
  %6363 = fsub fast float %6362, %6361
  %6364 = fdiv fast float %6363, %6356
  %6365 = select i1 %6358, float %6364, float 0.000000e+00
  %6366 = fsub fast float 1.000000e+00, %6365
  %6367 = select i1 %6351, float %6366, float %6365
  %6368 = call float @dx.op.unary.f32(i32 7, float %6367)  ; Saturate(value)
  %6369 = extractvalue %dx.types.CBufRet.f32 %6128, 3
  %6370 = fmul fast float %6369, %6368
  %6371 = fsub fast float 1.000000e+00, %6370
  br label %6372

; <label>:6372                                    ; preds = %6301, %6013, %5978, %5974, %5938
  %6373 = phi float [ 1.000000e+00, %5938 ], [ %6371, %6301 ], [ 1.000000e+00, %5978 ], [ 1.000000e+00, %6013 ], [ 1.000000e+00, %5974 ]
  %6374 = fcmp fast ogt float %5970, 0.000000e+00
  br i1 %6374, label %6375, label %6539, !dx.controlflow.hints !123

; <label>:6375                                    ; preds = %6372
  %6376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6377 = extractvalue %dx.types.CBufRet.f32 %6376, 2
  %6378 = fadd fast float %6377, %5851
  %6379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6380 = extractvalue %dx.types.CBufRet.f32 %6379, 2
  %6381 = extractvalue %dx.types.CBufRet.f32 %6379, 3
  %6382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6383 = extractvalue %dx.types.CBufRet.f32 %6382, 2
  %6384 = call float @dx.op.binary.f32(i32 35, float %6378, float 0.000000e+00)  ; FMax(a,b)
  %6385 = fadd fast float %6384, 0x3F10000000000000
  %6386 = fcmp fast oeq float %6383, 0.000000e+00
  br i1 %6386, label %6387, label %6454

; <label>:6387                                    ; preds = %6375
  %6388 = extractvalue %dx.types.CBufRet.f32 %6379, 1
  %6389 = extractvalue %dx.types.CBufRet.f32 %6379, 0
  %6390 = fmul fast float %6389, %5869
  %6391 = fmul fast float %6388, %5870
  %6392 = fadd fast float %6390, 5.000000e-01
  %6393 = call float @dx.op.unary.f32(i32 27, float %6392)  ; Round_ni(value)
  %6394 = fadd fast float %6391, 5.000000e-01
  %6395 = call float @dx.op.unary.f32(i32 27, float %6394)  ; Round_ni(value)
  %6396 = fsub fast float %6392, %6393
  %6397 = fsub fast float %6394, %6395
  %6398 = fadd fast float %6393, -5.000000e-01
  %6399 = fadd fast float %6395, -5.000000e-01
  %6400 = fmul fast float %6396, 2.000000e+00
  %6401 = fsub fast float 3.000000e+00, %6400
  %6402 = fadd fast float %6400, 1.000000e+00
  %6403 = fsub fast float 2.000000e+00, %6396
  %6404 = bitcast float %6401 to i32
  %6405 = sub nsw i32 2129859010, %6404
  %6406 = bitcast i32 %6405 to float
  %6407 = fmul fast float %6406, %6403
  %6408 = fadd fast float %6407, -1.000000e+00
  %6409 = bitcast float %6402 to i32
  %6410 = sub nsw i32 2129859010, %6409
  %6411 = bitcast i32 %6410 to float
  %6412 = fmul fast float %6411, %6396
  %6413 = fadd fast float %6412, 1.000000e+00
  %6414 = fmul fast float %6397, 2.000000e+00
  %6415 = fsub fast float 3.000000e+00, %6414
  %6416 = fadd fast float %6414, 1.000000e+00
  %6417 = fsub fast float 2.000000e+00, %6397
  %6418 = bitcast float %6415 to i32
  %6419 = sub nsw i32 2129859010, %6418
  %6420 = bitcast i32 %6419 to float
  %6421 = fmul fast float %6420, %6417
  %6422 = fadd fast float %6421, -1.000000e+00
  %6423 = bitcast float %6416 to i32
  %6424 = sub nsw i32 2129859010, %6423
  %6425 = bitcast i32 %6424 to float
  %6426 = fmul fast float %6425, %6397
  %6427 = fadd fast float %6426, 1.000000e+00
  %6428 = fadd fast float %6408, %6398
  %6429 = fmul fast float %6428, %6380
  %6430 = fadd fast float %6422, %6399
  %6431 = fmul fast float %6430, %6381
  %6432 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6429, float %6431, float undef, float undef, i32 0, i32 0, i32 undef, float %6385)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6433 = extractvalue %dx.types.ResRet.f32 %6432, 0
  %6434 = fmul fast float %6433, %6401
  %6435 = fadd fast float %6413, %6398
  %6436 = fmul fast float %6435, %6380
  %6437 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6436, float %6431, float undef, float undef, i32 0, i32 0, i32 undef, float %6385)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6438 = extractvalue %dx.types.ResRet.f32 %6437, 0
  %6439 = fmul fast float %6438, %6402
  %6440 = fadd fast float %6427, %6399
  %6441 = fmul fast float %6440, %6381
  %6442 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6429, float %6441, float undef, float undef, i32 0, i32 0, i32 undef, float %6385)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6443 = extractvalue %dx.types.ResRet.f32 %6442, 0
  %6444 = fmul fast float %6443, %6401
  %6445 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %6436, float %6441, float undef, float undef, i32 0, i32 0, i32 undef, float %6385)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6446 = extractvalue %dx.types.ResRet.f32 %6445, 0
  %6447 = fmul fast float %6446, %6402
  %6448 = fadd fast float %6447, %6444
  %6449 = fmul fast float %6448, %6416
  %6450 = fadd fast float %6439, %6434
  %6451 = fmul fast float %6450, %6415
  %6452 = fadd fast float %6451, %6449
  %6453 = fmul fast float %6452, 6.250000e-02
  br label %6539

; <label>:6454                                    ; preds = %6375
  %6455 = fmul fast float %280, 0x401921FB60000000
  %6456 = call float @dx.op.unary.f32(i32 13, float %6455)  ; Sin(value)
  %6457 = call float @dx.op.unary.f32(i32 12, float %6455)  ; Cos(value)
  %6458 = fsub fast float -0.000000e+00, %6456
  br label %6459

; <label>:6459                                    ; preds = %6508, %6454
  %6460 = phi float [ 0.000000e+00, %6454 ], [ %6503, %6508 ]
  %6461 = phi float [ 0.000000e+00, %6454 ], [ %6505, %6508 ]
  %6462 = phi i32 [ 0, %6454 ], [ %6509, %6508 ]
  %6463 = mul i32 %6462, 2
  %6464 = add i32 0, %6463
  %6465 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6464
  %6466 = load float, float* %6465, align 4
  %6467 = mul i32 %6462, 2
  %6468 = add i32 1, %6467
  %6469 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6468
  %6470 = load float, float* %6469, align 4
  %6471 = fmul fast float %6466, %6457
  %6472 = call float @dx.op.tertiary.f32(i32 46, float %6470, float %6458, float %6471)  ; FMad(a,b,c)
  %6473 = fmul fast float %6466, %6456
  %6474 = call float @dx.op.tertiary.f32(i32 46, float %6470, float %6457, float %6473)  ; FMad(a,b,c)
  %6475 = fmul fast float %6472, %6383
  %6476 = fmul fast float %6474, %6383
  %6477 = fadd fast float %6475, %5869
  %6478 = fadd fast float %6476, %5870
  %6479 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %56, float %6477, float %6478, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6480 = extractvalue %dx.types.ResRet.f32 %6479, 0
  %6481 = extractvalue %dx.types.ResRet.f32 %6479, 1
  %6482 = extractvalue %dx.types.ResRet.f32 %6479, 2
  %6483 = extractvalue %dx.types.ResRet.f32 %6479, 3
  %6484 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 0
  store float %6480, float* %6484, align 4
  %6485 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 1
  store float %6481, float* %6485, align 4
  %6486 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 2
  store float %6482, float* %6486, align 4
  %6487 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 3
  store float %6483, float* %6487, align 4
  %6488 = fsub fast float %6480, %6385
  %6489 = fcmp fast olt float %6488, 0.000000e+00
  %6490 = select i1 %6489, float 0.000000e+00, float 1.000000e+00
  %6491 = fadd fast float %6490, %6460
  %6492 = fmul fast float %6490, %6488
  %6493 = fadd fast float %6492, %6461
  br label %6494

; <label>:6494                                    ; preds = %6494, %6459
  %6495 = phi i32 [ 1, %6459 ], [ %6506, %6494 ]
  %6496 = phi float [ %6493, %6459 ], [ %6505, %6494 ]
  %6497 = phi float [ %6491, %6459 ], [ %6503, %6494 ]
  %6498 = getelementptr [4 x float], [4 x float]* %109, i32 0, i32 %6495
  %6499 = load float, float* %6498, align 4, !tbaa !124, !noalias !114
  %6500 = fsub fast float %6499, %6385
  %6501 = fcmp fast olt float %6500, 0.000000e+00
  %6502 = select i1 %6501, float 0.000000e+00, float 1.000000e+00
  %6503 = fadd fast float %6502, %6497
  %6504 = fmul fast float %6502, %6500
  %6505 = fadd fast float %6504, %6496
  %6506 = add nuw nsw i32 %6495, 1
  %6507 = icmp eq i32 %6506, 4
  br i1 %6507, label %6508, label %6494, !llvm.loop !126

; <label>:6508                                    ; preds = %6494
  %6509 = add nuw nsw i32 %6462, 1
  %6510 = icmp eq i32 %6509, 8
  br i1 %6510, label %6511, label %6459, !llvm.loop !127

; <label>:6511                                    ; preds = %6508
  %6512 = fdiv fast float 1.000000e+00, %6503
  %6513 = fmul fast float %6512, %6505
  %6514 = fdiv fast float 1.000000e+00, %6385
  %6515 = fmul fast float %6513, %6514
  %6516 = call float @dx.op.unary.f32(i32 7, float %6515)  ; Saturate(value)
  %6517 = call float @dx.op.binary.f32(i32 35, float %6516, float 0.000000e+00)  ; FMax(a,b)
  %6518 = fmul fast float %6503, 3.125000e-02
  %6519 = call float @dx.op.unary.f32(i32 7, float %6518)  ; Saturate(value)
  %6520 = fmul fast float %6519, 2.000000e+00
  %6521 = fadd fast float %6520, -1.000000e+00
  %6522 = fcmp fast ogt float %6521, 0.000000e+00
  %6523 = fcmp fast olt float %6521, 0.000000e+00
  %6524 = zext i1 %6522 to i32
  %6525 = zext i1 %6523 to i32
  %6526 = sub nsw i32 %6524, %6525
  %6527 = sitofp i32 %6526 to float
  %6528 = fmul fast float %6527, %6521
  %6529 = fsub fast float 1.000000e+00, %6528
  %6530 = fmul fast float %6529, %6529
  %6531 = fmul fast float %6530, %6529
  %6532 = fsub fast float %6529, %6531
  %6533 = fmul fast float %6532, %6517
  %6534 = fsub fast float 1.000000e+00, %6531
  %6535 = fsub fast float %6534, %6533
  %6536 = fmul fast float %6527, 5.000000e-01
  %6537 = fmul fast float %6536, %6535
  %6538 = fsub fast float 5.000000e-01, %6537
  br label %6539

; <label>:6539                                    ; preds = %6511, %6387, %6372
  %6540 = phi float [ 1.000000e+00, %6372 ], [ %6453, %6387 ], [ %6538, %6511 ]
  %6541 = fcmp fast ogt float %5968, 0.000000e+00
  br i1 %6541, label %6542, label %6706, !dx.controlflow.hints !128

; <label>:6542                                    ; preds = %6539
  %6543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6544 = extractvalue %dx.types.CBufRet.f32 %6543, 1
  %6545 = fadd fast float %6544, %5851
  %6546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6547 = extractvalue %dx.types.CBufRet.f32 %6546, 2
  %6548 = extractvalue %dx.types.CBufRet.f32 %6546, 3
  %6549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6550 = extractvalue %dx.types.CBufRet.f32 %6549, 1
  %6551 = call float @dx.op.binary.f32(i32 35, float %6545, float 0.000000e+00)  ; FMax(a,b)
  %6552 = fadd fast float %6551, 0x3F10000000000000
  %6553 = fcmp fast oeq float %6550, 0.000000e+00
  br i1 %6553, label %6554, label %6621

; <label>:6554                                    ; preds = %6542
  %6555 = extractvalue %dx.types.CBufRet.f32 %6546, 1
  %6556 = extractvalue %dx.types.CBufRet.f32 %6546, 0
  %6557 = fmul fast float %6556, %5861
  %6558 = fmul fast float %6555, %5862
  %6559 = fadd fast float %6557, 5.000000e-01
  %6560 = call float @dx.op.unary.f32(i32 27, float %6559)  ; Round_ni(value)
  %6561 = fadd fast float %6558, 5.000000e-01
  %6562 = call float @dx.op.unary.f32(i32 27, float %6561)  ; Round_ni(value)
  %6563 = fsub fast float %6559, %6560
  %6564 = fsub fast float %6561, %6562
  %6565 = fadd fast float %6560, -5.000000e-01
  %6566 = fadd fast float %6562, -5.000000e-01
  %6567 = fmul fast float %6563, 2.000000e+00
  %6568 = fsub fast float 3.000000e+00, %6567
  %6569 = fadd fast float %6567, 1.000000e+00
  %6570 = fsub fast float 2.000000e+00, %6563
  %6571 = bitcast float %6568 to i32
  %6572 = sub nsw i32 2129859010, %6571
  %6573 = bitcast i32 %6572 to float
  %6574 = fmul fast float %6573, %6570
  %6575 = fadd fast float %6574, -1.000000e+00
  %6576 = bitcast float %6569 to i32
  %6577 = sub nsw i32 2129859010, %6576
  %6578 = bitcast i32 %6577 to float
  %6579 = fmul fast float %6578, %6563
  %6580 = fadd fast float %6579, 1.000000e+00
  %6581 = fmul fast float %6564, 2.000000e+00
  %6582 = fsub fast float 3.000000e+00, %6581
  %6583 = fadd fast float %6581, 1.000000e+00
  %6584 = fsub fast float 2.000000e+00, %6564
  %6585 = bitcast float %6582 to i32
  %6586 = sub nsw i32 2129859010, %6585
  %6587 = bitcast i32 %6586 to float
  %6588 = fmul fast float %6587, %6584
  %6589 = fadd fast float %6588, -1.000000e+00
  %6590 = bitcast float %6583 to i32
  %6591 = sub nsw i32 2129859010, %6590
  %6592 = bitcast i32 %6591 to float
  %6593 = fmul fast float %6592, %6564
  %6594 = fadd fast float %6593, 1.000000e+00
  %6595 = fadd fast float %6575, %6565
  %6596 = fmul fast float %6595, %6547
  %6597 = fadd fast float %6589, %6566
  %6598 = fmul fast float %6597, %6548
  %6599 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6596, float %6598, float undef, float undef, i32 0, i32 0, i32 undef, float %6552)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6600 = extractvalue %dx.types.ResRet.f32 %6599, 0
  %6601 = fmul fast float %6600, %6568
  %6602 = fadd fast float %6580, %6565
  %6603 = fmul fast float %6602, %6547
  %6604 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6603, float %6598, float undef, float undef, i32 0, i32 0, i32 undef, float %6552)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6605 = extractvalue %dx.types.ResRet.f32 %6604, 0
  %6606 = fmul fast float %6605, %6569
  %6607 = fadd fast float %6594, %6566
  %6608 = fmul fast float %6607, %6548
  %6609 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6596, float %6608, float undef, float undef, i32 0, i32 0, i32 undef, float %6552)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6610 = extractvalue %dx.types.ResRet.f32 %6609, 0
  %6611 = fmul fast float %6610, %6568
  %6612 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %6603, float %6608, float undef, float undef, i32 0, i32 0, i32 undef, float %6552)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6613 = extractvalue %dx.types.ResRet.f32 %6612, 0
  %6614 = fmul fast float %6613, %6569
  %6615 = fadd fast float %6614, %6611
  %6616 = fmul fast float %6615, %6583
  %6617 = fadd fast float %6606, %6601
  %6618 = fmul fast float %6617, %6582
  %6619 = fadd fast float %6618, %6616
  %6620 = fmul fast float %6619, 6.250000e-02
  br label %6706

; <label>:6621                                    ; preds = %6542
  %6622 = fmul fast float %280, 0x401921FB60000000
  %6623 = call float @dx.op.unary.f32(i32 13, float %6622)  ; Sin(value)
  %6624 = call float @dx.op.unary.f32(i32 12, float %6622)  ; Cos(value)
  %6625 = fsub fast float -0.000000e+00, %6623
  br label %6626

; <label>:6626                                    ; preds = %6675, %6621
  %6627 = phi float [ 0.000000e+00, %6621 ], [ %6670, %6675 ]
  %6628 = phi float [ 0.000000e+00, %6621 ], [ %6672, %6675 ]
  %6629 = phi i32 [ 0, %6621 ], [ %6676, %6675 ]
  %6630 = mul i32 %6629, 2
  %6631 = add i32 0, %6630
  %6632 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6631
  %6633 = load float, float* %6632, align 4
  %6634 = mul i32 %6629, 2
  %6635 = add i32 1, %6634
  %6636 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6635
  %6637 = load float, float* %6636, align 4
  %6638 = fmul fast float %6633, %6624
  %6639 = call float @dx.op.tertiary.f32(i32 46, float %6637, float %6625, float %6638)  ; FMad(a,b,c)
  %6640 = fmul fast float %6633, %6623
  %6641 = call float @dx.op.tertiary.f32(i32 46, float %6637, float %6624, float %6640)  ; FMad(a,b,c)
  %6642 = fmul fast float %6639, %6550
  %6643 = fmul fast float %6641, %6550
  %6644 = fadd fast float %6642, %5861
  %6645 = fadd fast float %6643, %5862
  %6646 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %56, float %6644, float %6645, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6647 = extractvalue %dx.types.ResRet.f32 %6646, 0
  %6648 = extractvalue %dx.types.ResRet.f32 %6646, 1
  %6649 = extractvalue %dx.types.ResRet.f32 %6646, 2
  %6650 = extractvalue %dx.types.ResRet.f32 %6646, 3
  %6651 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 0
  store float %6647, float* %6651, align 4
  %6652 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 1
  store float %6648, float* %6652, align 4
  %6653 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 2
  store float %6649, float* %6653, align 4
  %6654 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 3
  store float %6650, float* %6654, align 4
  %6655 = fsub fast float %6647, %6552
  %6656 = fcmp fast olt float %6655, 0.000000e+00
  %6657 = select i1 %6656, float 0.000000e+00, float 1.000000e+00
  %6658 = fadd fast float %6657, %6627
  %6659 = fmul fast float %6657, %6655
  %6660 = fadd fast float %6659, %6628
  br label %6661

; <label>:6661                                    ; preds = %6661, %6626
  %6662 = phi i32 [ 1, %6626 ], [ %6673, %6661 ]
  %6663 = phi float [ %6660, %6626 ], [ %6672, %6661 ]
  %6664 = phi float [ %6658, %6626 ], [ %6670, %6661 ]
  %6665 = getelementptr [4 x float], [4 x float]* %108, i32 0, i32 %6662
  %6666 = load float, float* %6665, align 4, !tbaa !124, !noalias !114
  %6667 = fsub fast float %6666, %6552
  %6668 = fcmp fast olt float %6667, 0.000000e+00
  %6669 = select i1 %6668, float 0.000000e+00, float 1.000000e+00
  %6670 = fadd fast float %6669, %6664
  %6671 = fmul fast float %6669, %6667
  %6672 = fadd fast float %6671, %6663
  %6673 = add nuw nsw i32 %6662, 1
  %6674 = icmp eq i32 %6673, 4
  br i1 %6674, label %6675, label %6661, !llvm.loop !126

; <label>:6675                                    ; preds = %6661
  %6676 = add nuw nsw i32 %6629, 1
  %6677 = icmp eq i32 %6676, 8
  br i1 %6677, label %6678, label %6626, !llvm.loop !127

; <label>:6678                                    ; preds = %6675
  %6679 = fdiv fast float 1.000000e+00, %6670
  %6680 = fmul fast float %6679, %6672
  %6681 = fdiv fast float 1.000000e+00, %6552
  %6682 = fmul fast float %6680, %6681
  %6683 = call float @dx.op.unary.f32(i32 7, float %6682)  ; Saturate(value)
  %6684 = call float @dx.op.binary.f32(i32 35, float %6683, float 0.000000e+00)  ; FMax(a,b)
  %6685 = fmul fast float %6670, 3.125000e-02
  %6686 = call float @dx.op.unary.f32(i32 7, float %6685)  ; Saturate(value)
  %6687 = fmul fast float %6686, 2.000000e+00
  %6688 = fadd fast float %6687, -1.000000e+00
  %6689 = fcmp fast ogt float %6688, 0.000000e+00
  %6690 = fcmp fast olt float %6688, 0.000000e+00
  %6691 = zext i1 %6689 to i32
  %6692 = zext i1 %6690 to i32
  %6693 = sub nsw i32 %6691, %6692
  %6694 = sitofp i32 %6693 to float
  %6695 = fmul fast float %6694, %6688
  %6696 = fsub fast float 1.000000e+00, %6695
  %6697 = fmul fast float %6696, %6696
  %6698 = fmul fast float %6697, %6696
  %6699 = fsub fast float %6696, %6698
  %6700 = fmul fast float %6699, %6684
  %6701 = fsub fast float 1.000000e+00, %6698
  %6702 = fsub fast float %6701, %6700
  %6703 = fmul fast float %6694, 5.000000e-01
  %6704 = fmul fast float %6703, %6702
  %6705 = fsub fast float 5.000000e-01, %6704
  br label %6706

; <label>:6706                                    ; preds = %6678, %6554, %6539
  %6707 = phi float [ 1.000000e+00, %6539 ], [ %6620, %6554 ], [ %6705, %6678 ]
  %6708 = fcmp fast ogt float %5967, 0.000000e+00
  br i1 %6708, label %6709, label %7027, !dx.controlflow.hints !129

; <label>:6709                                    ; preds = %6706
  %6710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6711 = extractvalue %dx.types.CBufRet.f32 %6710, 0
  %6712 = fadd fast float %6711, %5851
  %6713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6714 = extractvalue %dx.types.CBufRet.f32 %6713, 2
  %6715 = extractvalue %dx.types.CBufRet.f32 %6713, 3
  %6716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6717 = extractvalue %dx.types.CBufRet.f32 %6716, 0
  %6718 = call float @dx.op.binary.f32(i32 35, float %6712, float 0.000000e+00)  ; FMax(a,b)
  %6719 = fadd fast float %6718, 0x3F10000000000000
  %6720 = fcmp fast oeq float %6717, 0.000000e+00
  br i1 %5854, label %6721, label %6874, !dx.controlflow.hints !130

; <label>:6721                                    ; preds = %6709
  br i1 %6720, label %6722, label %6789

; <label>:6722                                    ; preds = %6721
  %6723 = extractvalue %dx.types.CBufRet.f32 %6713, 1
  %6724 = extractvalue %dx.types.CBufRet.f32 %6713, 0
  %6725 = fmul fast float %6724, %5843
  %6726 = fmul fast float %6723, %5847
  %6727 = fadd fast float %6725, 5.000000e-01
  %6728 = call float @dx.op.unary.f32(i32 27, float %6727)  ; Round_ni(value)
  %6729 = fadd fast float %6726, 5.000000e-01
  %6730 = call float @dx.op.unary.f32(i32 27, float %6729)  ; Round_ni(value)
  %6731 = fsub fast float %6727, %6728
  %6732 = fsub fast float %6729, %6730
  %6733 = fadd fast float %6728, -5.000000e-01
  %6734 = fadd fast float %6730, -5.000000e-01
  %6735 = fmul fast float %6731, 2.000000e+00
  %6736 = fsub fast float 3.000000e+00, %6735
  %6737 = fadd fast float %6735, 1.000000e+00
  %6738 = fsub fast float 2.000000e+00, %6731
  %6739 = bitcast float %6736 to i32
  %6740 = sub nsw i32 2129859010, %6739
  %6741 = bitcast i32 %6740 to float
  %6742 = fmul fast float %6741, %6738
  %6743 = fadd fast float %6742, -1.000000e+00
  %6744 = bitcast float %6737 to i32
  %6745 = sub nsw i32 2129859010, %6744
  %6746 = bitcast i32 %6745 to float
  %6747 = fmul fast float %6746, %6731
  %6748 = fadd fast float %6747, 1.000000e+00
  %6749 = fmul fast float %6732, 2.000000e+00
  %6750 = fsub fast float 3.000000e+00, %6749
  %6751 = fadd fast float %6749, 1.000000e+00
  %6752 = fsub fast float 2.000000e+00, %6732
  %6753 = bitcast float %6750 to i32
  %6754 = sub nsw i32 2129859010, %6753
  %6755 = bitcast i32 %6754 to float
  %6756 = fmul fast float %6755, %6752
  %6757 = fadd fast float %6756, -1.000000e+00
  %6758 = bitcast float %6751 to i32
  %6759 = sub nsw i32 2129859010, %6758
  %6760 = bitcast i32 %6759 to float
  %6761 = fmul fast float %6760, %6732
  %6762 = fadd fast float %6761, 1.000000e+00
  %6763 = fadd fast float %6743, %6733
  %6764 = fmul fast float %6763, %6714
  %6765 = fadd fast float %6757, %6734
  %6766 = fmul fast float %6765, %6715
  %6767 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6764, float %6766, float undef, float undef, i32 0, i32 0, i32 undef, float %6719)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6768 = extractvalue %dx.types.ResRet.f32 %6767, 0
  %6769 = fmul fast float %6768, %6736
  %6770 = fadd fast float %6748, %6733
  %6771 = fmul fast float %6770, %6714
  %6772 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6771, float %6766, float undef, float undef, i32 0, i32 0, i32 undef, float %6719)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6773 = extractvalue %dx.types.ResRet.f32 %6772, 0
  %6774 = fmul fast float %6773, %6737
  %6775 = fadd fast float %6762, %6734
  %6776 = fmul fast float %6775, %6715
  %6777 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6764, float %6776, float undef, float undef, i32 0, i32 0, i32 undef, float %6719)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6778 = extractvalue %dx.types.ResRet.f32 %6777, 0
  %6779 = fmul fast float %6778, %6736
  %6780 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %57, float %6771, float %6776, float undef, float undef, i32 0, i32 0, i32 undef, float %6719)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6781 = extractvalue %dx.types.ResRet.f32 %6780, 0
  %6782 = fmul fast float %6781, %6737
  %6783 = fadd fast float %6782, %6779
  %6784 = fmul fast float %6783, %6751
  %6785 = fadd fast float %6774, %6769
  %6786 = fmul fast float %6785, %6750
  %6787 = fadd fast float %6786, %6784
  %6788 = fmul fast float %6787, 6.250000e-02
  br label %7027

; <label>:6789                                    ; preds = %6721
  %6790 = fmul fast float %280, 0x401921FB60000000
  %6791 = call float @dx.op.unary.f32(i32 13, float %6790)  ; Sin(value)
  %6792 = call float @dx.op.unary.f32(i32 12, float %6790)  ; Cos(value)
  %6793 = fsub fast float -0.000000e+00, %6791
  br label %6794

; <label>:6794                                    ; preds = %6843, %6789
  %6795 = phi float [ 0.000000e+00, %6789 ], [ %6838, %6843 ]
  %6796 = phi float [ 0.000000e+00, %6789 ], [ %6840, %6843 ]
  %6797 = phi i32 [ 0, %6789 ], [ %6844, %6843 ]
  %6798 = mul i32 %6797, 2
  %6799 = add i32 0, %6798
  %6800 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6799
  %6801 = load float, float* %6800, align 4
  %6802 = mul i32 %6797, 2
  %6803 = add i32 1, %6802
  %6804 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6803
  %6805 = load float, float* %6804, align 4
  %6806 = fmul fast float %6801, %6792
  %6807 = call float @dx.op.tertiary.f32(i32 46, float %6805, float %6793, float %6806)  ; FMad(a,b,c)
  %6808 = fmul fast float %6801, %6791
  %6809 = call float @dx.op.tertiary.f32(i32 46, float %6805, float %6792, float %6808)  ; FMad(a,b,c)
  %6810 = fmul fast float %6807, %6717
  %6811 = fmul fast float %6809, %6717
  %6812 = fadd fast float %6810, %5843
  %6813 = fadd fast float %6811, %5847
  %6814 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %56, float %6812, float %6813, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6815 = extractvalue %dx.types.ResRet.f32 %6814, 0
  %6816 = extractvalue %dx.types.ResRet.f32 %6814, 1
  %6817 = extractvalue %dx.types.ResRet.f32 %6814, 2
  %6818 = extractvalue %dx.types.ResRet.f32 %6814, 3
  %6819 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %6815, float* %6819, align 4
  %6820 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %6816, float* %6820, align 4
  %6821 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %6817, float* %6821, align 4
  %6822 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %6818, float* %6822, align 4
  %6823 = fsub fast float %6815, %6719
  %6824 = fcmp fast olt float %6823, 0.000000e+00
  %6825 = select i1 %6824, float 0.000000e+00, float 1.000000e+00
  %6826 = fadd fast float %6825, %6795
  %6827 = fmul fast float %6825, %6823
  %6828 = fadd fast float %6827, %6796
  br label %6829

; <label>:6829                                    ; preds = %6829, %6794
  %6830 = phi i32 [ 1, %6794 ], [ %6841, %6829 ]
  %6831 = phi float [ %6828, %6794 ], [ %6840, %6829 ]
  %6832 = phi float [ %6826, %6794 ], [ %6838, %6829 ]
  %6833 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %6830
  %6834 = load float, float* %6833, align 4, !tbaa !124, !noalias !114
  %6835 = fsub fast float %6834, %6719
  %6836 = fcmp fast olt float %6835, 0.000000e+00
  %6837 = select i1 %6836, float 0.000000e+00, float 1.000000e+00
  %6838 = fadd fast float %6837, %6832
  %6839 = fmul fast float %6837, %6835
  %6840 = fadd fast float %6839, %6831
  %6841 = add nuw nsw i32 %6830, 1
  %6842 = icmp eq i32 %6841, 4
  br i1 %6842, label %6843, label %6829, !llvm.loop !126

; <label>:6843                                    ; preds = %6829
  %6844 = add nuw nsw i32 %6797, 1
  %6845 = icmp eq i32 %6844, 8
  br i1 %6845, label %6846, label %6794, !llvm.loop !127

; <label>:6846                                    ; preds = %6843
  %6847 = fdiv fast float 1.000000e+00, %6838
  %6848 = fmul fast float %6847, %6840
  %6849 = fdiv fast float 1.000000e+00, %6719
  %6850 = fmul fast float %6848, %6849
  %6851 = call float @dx.op.unary.f32(i32 7, float %6850)  ; Saturate(value)
  %6852 = call float @dx.op.binary.f32(i32 35, float %6851, float 0.000000e+00)  ; FMax(a,b)
  %6853 = fmul fast float %6838, 3.125000e-02
  %6854 = call float @dx.op.unary.f32(i32 7, float %6853)  ; Saturate(value)
  %6855 = fmul fast float %6854, 2.000000e+00
  %6856 = fadd fast float %6855, -1.000000e+00
  %6857 = fcmp fast ogt float %6856, 0.000000e+00
  %6858 = fcmp fast olt float %6856, 0.000000e+00
  %6859 = zext i1 %6857 to i32
  %6860 = zext i1 %6858 to i32
  %6861 = sub nsw i32 %6859, %6860
  %6862 = sitofp i32 %6861 to float
  %6863 = fmul fast float %6862, %6856
  %6864 = fsub fast float 1.000000e+00, %6863
  %6865 = fmul fast float %6864, %6864
  %6866 = fmul fast float %6865, %6864
  %6867 = fsub fast float %6864, %6866
  %6868 = fmul fast float %6867, %6852
  %6869 = fsub fast float 1.000000e+00, %6866
  %6870 = fsub fast float %6869, %6868
  %6871 = fmul fast float %6862, 5.000000e-01
  %6872 = fmul fast float %6871, %6870
  %6873 = fsub fast float 5.000000e-01, %6872
  br label %7027

; <label>:6874                                    ; preds = %6709
  br i1 %6720, label %6875, label %6942

; <label>:6875                                    ; preds = %6874
  %6876 = extractvalue %dx.types.CBufRet.f32 %6713, 1
  %6877 = extractvalue %dx.types.CBufRet.f32 %6713, 0
  %6878 = fmul fast float %6877, %5843
  %6879 = fmul fast float %6876, %5847
  %6880 = fadd fast float %6878, 5.000000e-01
  %6881 = call float @dx.op.unary.f32(i32 27, float %6880)  ; Round_ni(value)
  %6882 = fadd fast float %6879, 5.000000e-01
  %6883 = call float @dx.op.unary.f32(i32 27, float %6882)  ; Round_ni(value)
  %6884 = fsub fast float %6880, %6881
  %6885 = fsub fast float %6882, %6883
  %6886 = fadd fast float %6881, -5.000000e-01
  %6887 = fadd fast float %6883, -5.000000e-01
  %6888 = fmul fast float %6884, 2.000000e+00
  %6889 = fsub fast float 3.000000e+00, %6888
  %6890 = fadd fast float %6888, 1.000000e+00
  %6891 = fsub fast float 2.000000e+00, %6884
  %6892 = bitcast float %6889 to i32
  %6893 = sub nsw i32 2129859010, %6892
  %6894 = bitcast i32 %6893 to float
  %6895 = fmul fast float %6894, %6891
  %6896 = fadd fast float %6895, -1.000000e+00
  %6897 = bitcast float %6890 to i32
  %6898 = sub nsw i32 2129859010, %6897
  %6899 = bitcast i32 %6898 to float
  %6900 = fmul fast float %6899, %6884
  %6901 = fadd fast float %6900, 1.000000e+00
  %6902 = fmul fast float %6885, 2.000000e+00
  %6903 = fsub fast float 3.000000e+00, %6902
  %6904 = fadd fast float %6902, 1.000000e+00
  %6905 = fsub fast float 2.000000e+00, %6885
  %6906 = bitcast float %6903 to i32
  %6907 = sub nsw i32 2129859010, %6906
  %6908 = bitcast i32 %6907 to float
  %6909 = fmul fast float %6908, %6905
  %6910 = fadd fast float %6909, -1.000000e+00
  %6911 = bitcast float %6904 to i32
  %6912 = sub nsw i32 2129859010, %6911
  %6913 = bitcast i32 %6912 to float
  %6914 = fmul fast float %6913, %6885
  %6915 = fadd fast float %6914, 1.000000e+00
  %6916 = fadd fast float %6896, %6886
  %6917 = fmul fast float %6916, %6714
  %6918 = fadd fast float %6910, %6887
  %6919 = fmul fast float %6918, %6715
  %6920 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6917, float %6919, float undef, float undef, i32 0, i32 0, i32 undef, float %6719)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6921 = extractvalue %dx.types.ResRet.f32 %6920, 0
  %6922 = fmul fast float %6921, %6889
  %6923 = fadd fast float %6901, %6886
  %6924 = fmul fast float %6923, %6714
  %6925 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6924, float %6919, float undef, float undef, i32 0, i32 0, i32 undef, float %6719)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6926 = extractvalue %dx.types.ResRet.f32 %6925, 0
  %6927 = fmul fast float %6926, %6890
  %6928 = fadd fast float %6915, %6887
  %6929 = fmul fast float %6928, %6715
  %6930 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6917, float %6929, float undef, float undef, i32 0, i32 0, i32 undef, float %6719)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6931 = extractvalue %dx.types.ResRet.f32 %6930, 0
  %6932 = fmul fast float %6931, %6889
  %6933 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %6924, float %6929, float undef, float undef, i32 0, i32 0, i32 undef, float %6719)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6934 = extractvalue %dx.types.ResRet.f32 %6933, 0
  %6935 = fmul fast float %6934, %6890
  %6936 = fadd fast float %6935, %6932
  %6937 = fmul fast float %6936, %6904
  %6938 = fadd fast float %6927, %6922
  %6939 = fmul fast float %6938, %6903
  %6940 = fadd fast float %6939, %6937
  %6941 = fmul fast float %6940, 6.250000e-02
  br label %7027

; <label>:6942                                    ; preds = %6874
  %6943 = fmul fast float %280, 0x401921FB60000000
  %6944 = call float @dx.op.unary.f32(i32 13, float %6943)  ; Sin(value)
  %6945 = call float @dx.op.unary.f32(i32 12, float %6943)  ; Cos(value)
  %6946 = fsub fast float -0.000000e+00, %6944
  br label %6947

; <label>:6947                                    ; preds = %6996, %6942
  %6948 = phi float [ 0.000000e+00, %6942 ], [ %6991, %6996 ]
  %6949 = phi float [ 0.000000e+00, %6942 ], [ %6993, %6996 ]
  %6950 = phi i32 [ 0, %6942 ], [ %6997, %6996 ]
  %6951 = mul i32 %6950, 2
  %6952 = add i32 0, %6951
  %6953 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6952
  %6954 = load float, float* %6953, align 4
  %6955 = mul i32 %6950, 2
  %6956 = add i32 1, %6955
  %6957 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6956
  %6958 = load float, float* %6957, align 4
  %6959 = fmul fast float %6954, %6945
  %6960 = call float @dx.op.tertiary.f32(i32 46, float %6958, float %6946, float %6959)  ; FMad(a,b,c)
  %6961 = fmul fast float %6954, %6944
  %6962 = call float @dx.op.tertiary.f32(i32 46, float %6958, float %6945, float %6961)  ; FMad(a,b,c)
  %6963 = fmul fast float %6960, %6717
  %6964 = fmul fast float %6962, %6717
  %6965 = fadd fast float %6963, %5843
  %6966 = fadd fast float %6964, %5847
  %6967 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %56, float %6965, float %6966, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6968 = extractvalue %dx.types.ResRet.f32 %6967, 0
  %6969 = extractvalue %dx.types.ResRet.f32 %6967, 1
  %6970 = extractvalue %dx.types.ResRet.f32 %6967, 2
  %6971 = extractvalue %dx.types.ResRet.f32 %6967, 3
  %6972 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %6968, float* %6972, align 4
  %6973 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %6969, float* %6973, align 4
  %6974 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %6970, float* %6974, align 4
  %6975 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %6971, float* %6975, align 4
  %6976 = fsub fast float %6968, %6719
  %6977 = fcmp fast olt float %6976, 0.000000e+00
  %6978 = select i1 %6977, float 0.000000e+00, float 1.000000e+00
  %6979 = fadd fast float %6978, %6948
  %6980 = fmul fast float %6978, %6976
  %6981 = fadd fast float %6980, %6949
  br label %6982

; <label>:6982                                    ; preds = %6982, %6947
  %6983 = phi i32 [ 1, %6947 ], [ %6994, %6982 ]
  %6984 = phi float [ %6981, %6947 ], [ %6993, %6982 ]
  %6985 = phi float [ %6979, %6947 ], [ %6991, %6982 ]
  %6986 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %6983
  %6987 = load float, float* %6986, align 4, !tbaa !124, !noalias !114
  %6988 = fsub fast float %6987, %6719
  %6989 = fcmp fast olt float %6988, 0.000000e+00
  %6990 = select i1 %6989, float 0.000000e+00, float 1.000000e+00
  %6991 = fadd fast float %6990, %6985
  %6992 = fmul fast float %6990, %6988
  %6993 = fadd fast float %6992, %6984
  %6994 = add nuw nsw i32 %6983, 1
  %6995 = icmp eq i32 %6994, 4
  br i1 %6995, label %6996, label %6982, !llvm.loop !126

; <label>:6996                                    ; preds = %6982
  %6997 = add nuw nsw i32 %6950, 1
  %6998 = icmp eq i32 %6997, 8
  br i1 %6998, label %6999, label %6947, !llvm.loop !127

; <label>:6999                                    ; preds = %6996
  %7000 = fdiv fast float 1.000000e+00, %6991
  %7001 = fmul fast float %7000, %6993
  %7002 = fdiv fast float 1.000000e+00, %6719
  %7003 = fmul fast float %7001, %7002
  %7004 = call float @dx.op.unary.f32(i32 7, float %7003)  ; Saturate(value)
  %7005 = call float @dx.op.binary.f32(i32 35, float %7004, float 0.000000e+00)  ; FMax(a,b)
  %7006 = fmul fast float %6991, 3.125000e-02
  %7007 = call float @dx.op.unary.f32(i32 7, float %7006)  ; Saturate(value)
  %7008 = fmul fast float %7007, 2.000000e+00
  %7009 = fadd fast float %7008, -1.000000e+00
  %7010 = fcmp fast ogt float %7009, 0.000000e+00
  %7011 = fcmp fast olt float %7009, 0.000000e+00
  %7012 = zext i1 %7010 to i32
  %7013 = zext i1 %7011 to i32
  %7014 = sub nsw i32 %7012, %7013
  %7015 = sitofp i32 %7014 to float
  %7016 = fmul fast float %7015, %7009
  %7017 = fsub fast float 1.000000e+00, %7016
  %7018 = fmul fast float %7017, %7017
  %7019 = fmul fast float %7018, %7017
  %7020 = fsub fast float %7017, %7019
  %7021 = fmul fast float %7020, %7005
  %7022 = fsub fast float 1.000000e+00, %7019
  %7023 = fsub fast float %7022, %7021
  %7024 = fmul fast float %7015, 5.000000e-01
  %7025 = fmul fast float %7024, %7023
  %7026 = fsub fast float 5.000000e-01, %7025
  br label %7027

; <label>:7027                                    ; preds = %6999, %6875, %6846, %6722, %6706
  %7028 = phi float [ 1.000000e+00, %6706 ], [ %6788, %6722 ], [ %6873, %6846 ], [ %6941, %6875 ], [ %7026, %6999 ]
  %7029 = fsub fast float %6540, %6373
  %7030 = fmul fast float %7029, %5940
  %7031 = fadd fast float %7030, %6373
  %7032 = fsub fast float %6707, %7031
  %7033 = fmul fast float %7032, %5939
  %7034 = fadd fast float %7033, %7031
  %7035 = fsub fast float %7028, %7034
  %7036 = fmul fast float %7035, %5967
  %7037 = fadd fast float %7036, %7034
  %7038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7039 = extractvalue %dx.types.CBufRet.f32 %7038, 2
  %7040 = fcmp fast ogt float %7039, 0.000000e+00
  br i1 %7040, label %7041, label %7081, !dx.controlflow.hints !131

; <label>:7041                                    ; preds = %7027
  %7042 = fcmp fast ugt float %7039, 0.000000e+00
  br i1 %7042, label %7043, label %7078

; <label>:7043                                    ; preds = %7041
  %7044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7045 = extractvalue %dx.types.CBufRet.f32 %7044, 0
  %7046 = extractvalue %dx.types.CBufRet.f32 %7044, 1
  %7047 = extractvalue %dx.types.CBufRet.f32 %7044, 2
  %7048 = extractvalue %dx.types.CBufRet.f32 %7044, 3
  %7049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7050 = extractvalue %dx.types.CBufRet.f32 %7049, 0
  %7051 = extractvalue %dx.types.CBufRet.f32 %7049, 1
  %7052 = extractvalue %dx.types.CBufRet.f32 %7049, 2
  %7053 = extractvalue %dx.types.CBufRet.f32 %7049, 3
  %7054 = extractvalue %dx.types.CBufRet.f32 %7038, 0
  %7055 = extractvalue %dx.types.CBufRet.f32 %7038, 1
  %7056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7057 = extractvalue %dx.types.CBufRet.f32 %7056, 0
  %7058 = extractvalue %dx.types.CBufRet.f32 %7056, 1
  %7059 = extractvalue %dx.types.CBufRet.f32 %7056, 2
  %7060 = fadd fast float %7057, %5820
  %7061 = fadd fast float %7058, %5821
  %7062 = fadd fast float %7059, %5822
  %7063 = fmul fast float %7060, %7045
  %7064 = call float @dx.op.tertiary.f32(i32 46, float %7046, float %7061, float %7063)  ; FMad(a,b,c)
  %7065 = call float @dx.op.tertiary.f32(i32 46, float %7047, float %7062, float %7064)  ; FMad(a,b,c)
  %7066 = fadd fast float %7065, %7048
  %7067 = fmul fast float %7060, %7050
  %7068 = call float @dx.op.tertiary.f32(i32 46, float %7051, float %7061, float %7067)  ; FMad(a,b,c)
  %7069 = call float @dx.op.tertiary.f32(i32 46, float %7052, float %7062, float %7068)  ; FMad(a,b,c)
  %7070 = fadd fast float %7069, %7053
  %7071 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %52, float %7066, float %7070, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7072 = extractvalue %dx.types.ResRet.f32 %7071, 0
  %7073 = fmul fast float %7072, %7055
  %7074 = fadd fast float %7073, %7054
  %7075 = call float @dx.op.unary.f32(i32 7, float %7074)  ; Saturate(value)
  %7076 = fmul fast float %7075, %7039
  %7077 = fsub fast float 1.000000e+00, %7076
  br label %7078

; <label>:7078                                    ; preds = %7043, %7041
  %7079 = phi float [ %7077, %7043 ], [ 1.000000e+00, %7041 ]
  %7080 = fmul fast float %7079, %7037
  br label %7081

; <label>:7081                                    ; preds = %7078, %7027, %5800
  %7082 = phi float [ 1.000000e+00, %5800 ], [ %7080, %7078 ], [ %7037, %7027 ]
  %7083 = call float @dx.op.binary.f32(i32 36, float %7082, float %7082)  ; FMin(a,b)
  %7084 = call float @dx.op.binary.f32(i32 36, float %7082, float %7083)  ; FMin(a,b)
  %7085 = fcmp fast ogt float %7084, 0.000000e+00
  br i1 %7085, label %7086, label %7251, !dx.controlflow.hints !132

; <label>:7086                                    ; preds = %7081
  %7087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7088 = extractvalue %dx.types.CBufRet.f32 %7087, 0
  %7089 = extractvalue %dx.types.CBufRet.f32 %7087, 1
  %7090 = extractvalue %dx.types.CBufRet.f32 %7087, 2
  %7091 = extractvalue %dx.types.CBufRet.f32 %7087, 3
  %7092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7093 = extractvalue %dx.types.CBufRet.f32 %7092, 0
  %7094 = extractvalue %dx.types.CBufRet.f32 %7092, 1
  %7095 = extractvalue %dx.types.CBufRet.f32 %7092, 2
  %7096 = extractvalue %dx.types.CBufRet.f32 %7092, 3
  %7097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7098 = extractvalue %dx.types.CBufRet.f32 %7097, 0
  %7099 = extractvalue %dx.types.CBufRet.f32 %7097, 1
  %7100 = extractvalue %dx.types.CBufRet.f32 %7097, 2
  %7101 = extractvalue %dx.types.CBufRet.f32 %7097, 3
  %7102 = fmul fast float %7088, %5820
  %7103 = call float @dx.op.tertiary.f32(i32 46, float %5821, float %7089, float %7102)  ; FMad(a,b,c)
  %7104 = call float @dx.op.tertiary.f32(i32 46, float %5822, float %7090, float %7103)  ; FMad(a,b,c)
  %7105 = fadd fast float %7104, %7091
  %7106 = fmul fast float %7093, %5820
  %7107 = call float @dx.op.tertiary.f32(i32 46, float %5821, float %7094, float %7106)  ; FMad(a,b,c)
  %7108 = call float @dx.op.tertiary.f32(i32 46, float %5822, float %7095, float %7107)  ; FMad(a,b,c)
  %7109 = fadd fast float %7108, %7096
  %7110 = fmul fast float %7098, %5820
  %7111 = call float @dx.op.tertiary.f32(i32 46, float %5821, float %7099, float %7110)  ; FMad(a,b,c)
  %7112 = call float @dx.op.tertiary.f32(i32 46, float %5822, float %7100, float %7111)  ; FMad(a,b,c)
  %7113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7114 = extractvalue %dx.types.CBufRet.f32 %7113, 0
  %7115 = extractvalue %dx.types.CBufRet.f32 %7113, 1
  %7116 = extractvalue %dx.types.CBufRet.f32 %7113, 3
  %7117 = fmul fast float %7116, %7105
  %7118 = fmul fast float %7116, %7109
  %7119 = fadd fast float %7117, %7114
  %7120 = fadd fast float %7118, %7115
  %7121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7122 = extractvalue %dx.types.CBufRet.f32 %7121, 0
  %7123 = extractvalue %dx.types.CBufRet.f32 %7121, 1
  %7124 = fsub fast float %7119, %7122
  %7125 = fsub fast float %7120, %7123
  %7126 = fcmp fast olt float %7124, 0.000000e+00
  %7127 = fcmp fast olt float %7125, 0.000000e+00
  %7128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7129 = extractvalue %dx.types.CBufRet.f32 %7128, 0
  %7130 = extractvalue %dx.types.CBufRet.f32 %7128, 1
  %7131 = extractvalue %dx.types.CBufRet.f32 %7128, 2
  %7132 = extractvalue %dx.types.CBufRet.f32 %7128, 3
  %7133 = select i1 %7126, float %7129, float %7131
  %7134 = select i1 %7127, float %7130, float %7132
  %7135 = fmul fast float %7133, %7124
  %7136 = fmul fast float %7134, %7125
  %7137 = call float @dx.op.unary.f32(i32 6, float %7135)  ; FAbs(value)
  %7138 = call float @dx.op.unary.f32(i32 6, float %7136)  ; FAbs(value)
  %7139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7140 = extractvalue %dx.types.CBufRet.f32 %7139, 0
  %7141 = call float @dx.op.binary.f32(i32 35, float %7137, float %7138)  ; FMax(a,b)
  %7142 = fsub fast float %7140, %7141
  %7143 = call float @dx.op.unary.f32(i32 7, float %7142)  ; Saturate(value)
  %7144 = fcmp fast ogt float %7143, 0.000000e+00
  br i1 %7144, label %7145, label %7186, !dx.controlflow.hints !133

; <label>:7145                                    ; preds = %7086
  %7146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %55, float %7119, float %7120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7147 = extractvalue %dx.types.ResRet.f32 %7146, 1
  %7148 = fcmp fast ogt float %7147, 0.000000e+00
  br i1 %7148, label %7149, label %7181

; <label>:7149                                    ; preds = %7145
  %7150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %55, float %7119, float %7120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7151 = extractvalue %dx.types.ResRet.f32 %7150, 0
  %7152 = extractvalue %dx.types.ResRet.f32 %7150, 1
  %7153 = extractvalue %dx.types.ResRet.f32 %7150, 2
  %7154 = extractvalue %dx.types.ResRet.f32 %7150, 3
  %7155 = fsub fast float 1.000000e+00, %7101
  %7156 = fsub fast float %7155, %7112
  %7157 = fmul fast float %7156, 0x400921FB60000000
  %7158 = fadd fast float %7157, 0x3FF921FB60000000
  %7159 = call float @dx.op.unary.f32(i32 13, float %7158)  ; Sin(value)
  %7160 = fadd fast float %7159, -1.000000e+00
  %7161 = fmul fast float %7160, 0x3FD45F3060000000
  %7162 = fmul fast float %7156, 0x401921FB60000000
  %7163 = fadd fast float %7162, 0x400921FB60000000
  %7164 = call float @dx.op.unary.f32(i32 13, float %7163)  ; Sin(value)
  %7165 = fadd fast float %7164, 0x3E7777A5C0000000
  %7166 = fmul fast float %7165, 0x3FC45F3060000000
  %7167 = fmul fast float %7156, 0x4022D97C80000000
  %7168 = fadd fast float %7167, 0x4012D97C80000000
  %7169 = call float @dx.op.unary.f32(i32 13, float %7168)  ; Sin(value)
  %7170 = fadd fast float %7169, 1.000000e+00
  %7171 = fmul fast float %7170, 0x3FBB2995E0000000
  %7172 = fmul fast float %7156, 0x402921FB60000000
  %7173 = fadd fast float %7172, 0x401921FB60000000
  %7174 = call float @dx.op.unary.f32(i32 13, float %7173)  ; Sin(value)
  %7175 = fadd fast float %7174, 0xBE8777A5C0000000
  %7176 = fmul fast float %7175, 0x3FB45F3060000000
  %7177 = call float @dx.op.dot4.f32(i32 56, float %7151, float %7152, float %7153, float %7154, float %7161, float %7166, float %7171, float %7176)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7178 = fmul fast float %7177, 0xBFF7154760000000
  %7179 = call float @dx.op.unary.f32(i32 21, float %7178)  ; Exp(value)
  %7180 = call float @dx.op.unary.f32(i32 7, float %7179)  ; Saturate(value)
  br label %7181

; <label>:7181                                    ; preds = %7149, %7145
  %7182 = phi float [ %7180, %7149 ], [ 1.000000e+00, %7145 ]
  %7183 = fadd fast float %7182, -1.000000e+00
  %7184 = fmul fast float %7183, %7143
  %7185 = fadd fast float %7184, 1.000000e+00
  br label %7186

; <label>:7186                                    ; preds = %7181, %7086
  %7187 = phi float [ %7185, %7181 ], [ 1.000000e+00, %7086 ]
  %7188 = fmul fast float %7187, %7082
  %7189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7190 = extractvalue %dx.types.CBufRet.f32 %7189, 0
  %7191 = extractvalue %dx.types.CBufRet.f32 %7189, 1
  %7192 = extractvalue %dx.types.CBufRet.f32 %7189, 2
  %7193 = fadd fast float %7190, %203
  %7194 = fadd fast float %7191, %204
  %7195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7196 = extractvalue %dx.types.CBufRet.f32 %7195, 1
  %7197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7198 = extractvalue %dx.types.CBufRet.f32 %7197, 0
  %7199 = extractvalue %dx.types.CBufRet.f32 %7197, 1
  %7200 = extractvalue %dx.types.CBufRet.f32 %7197, 2
  %7201 = fsub fast float -0.000000e+00, %7193
  %7202 = fsub fast float -0.000000e+00, %7194
  %7203 = fsub fast float %5080, %7192
  %7204 = fadd fast float %7203, %7196
  %7205 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7201, float %7202, float %7204)  ; Dot3(ax,ay,az,bx,by,bz)
  %7206 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7198, float %7199, float %7200)  ; Dot3(ax,ay,az,bx,by,bz)
  %7207 = fdiv fast float 1.000000e+00, %7206
  %7208 = fmul fast float %7207, %7205
  %7209 = fmul fast float %7198, %7208
  %7210 = fmul fast float %7199, %7208
  %7211 = fadd fast float %7209, %7193
  %7212 = fadd fast float %7210, %7194
  %7213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7214 = extractvalue %dx.types.CBufRet.f32 %7213, 0
  %7215 = extractvalue %dx.types.CBufRet.f32 %7213, 1
  %7216 = fsub fast float %7211, %7214
  %7217 = fsub fast float %7212, %7215
  %7218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7219 = extractvalue %dx.types.CBufRet.f32 %7218, 2
  %7220 = extractvalue %dx.types.CBufRet.f32 %7218, 3
  %7221 = fmul fast float %7216, %7219
  %7222 = fmul fast float %7217, %7220
  %7223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7224 = extractvalue %dx.types.CBufRet.i32 %7223, 3
  %7225 = icmp eq i32 %7224, 0
  br i1 %7225, label %7231, label %7226

; <label>:7226                                    ; preds = %7186
  %7227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7221, float %7222, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7228 = extractvalue %dx.types.ResRet.f32 %7227, 0
  %7229 = extractvalue %dx.types.ResRet.f32 %7227, 1
  %7230 = extractvalue %dx.types.ResRet.f32 %7227, 2
  br label %7236

; <label>:7231                                    ; preds = %7186
  %7232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %7221, float %7222, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7233 = extractvalue %dx.types.ResRet.f32 %7232, 0
  %7234 = extractvalue %dx.types.ResRet.f32 %7232, 1
  %7235 = extractvalue %dx.types.ResRet.f32 %7232, 2
  br label %7236

; <label>:7236                                    ; preds = %7231, %7226
  %7237 = phi float [ %7228, %7226 ], [ %7233, %7231 ]
  %7238 = phi float [ %7229, %7226 ], [ %7234, %7231 ]
  %7239 = phi float [ %7230, %7226 ], [ %7235, %7231 ]
  %7240 = extractvalue %dx.types.CBufRet.f32 %7195, 2
  %7241 = fmul fast float %7240, %7237
  %7242 = extractvalue %dx.types.CBufRet.f32 %7195, 0
  %7243 = fsub fast float %7208, %7242
  %7244 = fsub fast float %7243, %7241
  %7245 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7244)  ; FMax(a,b)
  %7246 = fmul fast float %7245, %7238
  %7247 = call float @dx.op.binary.f32(i32 36, float %7239, float %7246)  ; FMin(a,b)
  %7248 = fmul fast float %7247, 0xBFF7154760000000
  %7249 = call float @dx.op.unary.f32(i32 21, float %7248)  ; Exp(value)
  %7250 = fmul fast float %7188, %7249
  br label %7251

; <label>:7251                                    ; preds = %7236, %7081
  %7252 = phi float [ %7250, %7236 ], [ %7082, %7081 ]
  %7253 = call float @dx.op.binary.f32(i32 36, float %7252, float %7252)  ; FMin(a,b)
  %7254 = call float @dx.op.binary.f32(i32 36, float %7252, float %7253)  ; FMin(a,b)
  %7255 = fcmp fast ogt float %7254, 0.000000e+00
  br i1 %7255, label %7256, label %7503, !dx.controlflow.hints !134

; <label>:7256                                    ; preds = %7251
  %7257 = fmul fast float %7252, %5812
  %7258 = fmul fast float %7252, %5813
  %7259 = fmul fast float %7252, %5814
  %7260 = fsub fast float %205, %4279
  %7261 = fcmp fast ogt float %7260, 0.000000e+00
  %7262 = fmul fast float %5801, 5.120000e+02
  %7263 = fmul fast float %5802, 5.120000e+02
  %7264 = fmul fast float %5803, 5.120000e+02
  %7265 = fadd fast float %7264, %205
  %7266 = fsub fast float %4279, %7265
  %7267 = fmul fast float %7266, 2.000000e+00
  %7268 = fadd fast float %7267, %7265
  %7269 = select i1 %7261, float %7268, float %7265
  %7270 = fsub fast float %7269, %205
  %7271 = call float @dx.op.dot3.f32(i32 55, float %7262, float %7263, float %7270, float %7262, float %7263, float %7270)  ; Dot3(ax,ay,az,bx,by,bz)
  %7272 = call float @dx.op.unary.f32(i32 25, float %7271)  ; Rsqrt(value)
  %7273 = fmul fast float %7272, %7262
  %7274 = fmul fast float %7272, %7263
  %7275 = fmul fast float %7272, %7270
  %7276 = fsub fast float %4279, %205
  %7277 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7276)  ; Dot3(ax,ay,az,bx,by,bz)
  %7278 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7273, float %7274, float %7275)  ; Dot3(ax,ay,az,bx,by,bz)
  %7279 = fdiv fast float 1.000000e+00, %7278
  %7280 = fmul fast float %7279, %7277
  %7281 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7260, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7282 = fcmp fast ogt float %7281, 0.000000e+00
  %7283 = fcmp fast olt float %7281, 0.000000e+00
  %7284 = zext i1 %7282 to i32
  %7285 = zext i1 %7283 to i32
  %7286 = sub nsw i32 %7284, %7285
  %7287 = sitofp i32 %7286 to float
  %7288 = fsub fast float %7269, %4279
  %7289 = call float @dx.op.dot3.f32(i32 55, float %7262, float %7263, float %7288, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7290 = fcmp fast ogt float %7289, 0.000000e+00
  %7291 = fcmp fast olt float %7289, 0.000000e+00
  %7292 = zext i1 %7290 to i32
  %7293 = zext i1 %7291 to i32
  %7294 = sub nsw i32 %7292, %7293
  %7295 = sitofp i32 %7294 to float
  %7296 = fcmp fast une float %7287, %7295
  br i1 %7296, label %7297, label %7307

; <label>:7297                                    ; preds = %7256
  %7298 = fmul fast float %7280, %7275
  %7299 = fmul fast float %7280, %7274
  %7300 = fmul fast float %7280, %7273
  %7301 = fmul fast float %7300, %7300
  %7302 = fmul fast float %7299, %7299
  %7303 = fadd fast float %7301, %7302
  %7304 = fmul fast float %7298, %7298
  %7305 = fadd fast float %7303, %7304
  %7306 = call float @dx.op.unary.f32(i32 24, float %7305)  ; Sqrt(value)
  br label %7317

; <label>:7307                                    ; preds = %7256
  %7308 = icmp slt i32 %7286, 0
  br i1 %7308, label %7309, label %7317

; <label>:7309                                    ; preds = %7307
  %7310 = fsub fast float %205, %7269
  %7311 = fmul fast float %7262, %7262
  %7312 = fmul fast float %7263, %7263
  %7313 = fadd fast float %7311, %7312
  %7314 = fmul fast float %7310, %7310
  %7315 = fadd fast float %7313, %7314
  %7316 = call float @dx.op.unary.f32(i32 24, float %7315)  ; Sqrt(value)
  br label %7317

; <label>:7317                                    ; preds = %7309, %7307, %7297
  %7318 = phi float [ %7306, %7297 ], [ %7316, %7309 ], [ 0.000000e+00, %7307 ]
  %7319 = fsub fast float -0.000000e+00, %7318
  %7320 = select i1 %7261, float -0.000000e+00, float %7319
  %7321 = fmul fast float %4276, 0x3FF7154760000000
  %7322 = fmul fast float %7321, %7320
  %7323 = fmul fast float %4277, 0x3FF7154760000000
  %7324 = fmul fast float %7323, %7320
  %7325 = fmul fast float %4278, 0x3FF7154760000000
  %7326 = fmul fast float %7325, %7320
  %7327 = call float @dx.op.unary.f32(i32 21, float %7322)  ; Exp(value)
  %7328 = call float @dx.op.unary.f32(i32 21, float %7324)  ; Exp(value)
  %7329 = call float @dx.op.unary.f32(i32 21, float %7326)  ; Exp(value)
  %7330 = call float @dx.op.unary.f32(i32 7, float %7327)  ; Saturate(value)
  %7331 = call float @dx.op.unary.f32(i32 7, float %7328)  ; Saturate(value)
  %7332 = call float @dx.op.unary.f32(i32 7, float %7329)  ; Saturate(value)
  %7333 = fmul fast float %7257, %7330
  %7334 = fmul fast float %7258, %7331
  %7335 = fmul fast float %7259, %7332
  %7336 = fsub fast float %5801, %5068
  %7337 = fsub fast float %5802, %5067
  %7338 = fsub fast float %5803, %5066
  %7339 = call float @dx.op.dot3.f32(i32 55, float %7336, float %7337, float %7338, float %7336, float %7337, float %7338)  ; Dot3(ax,ay,az,bx,by,bz)
  %7340 = call float @dx.op.unary.f32(i32 25, float %7339)  ; Rsqrt(value)
  %7341 = fmul fast float %7340, %7336
  %7342 = fmul fast float %7340, %7337
  %7343 = fmul fast float %7340, %7338
  %7344 = call float @dx.op.dot3.f32(i32 55, float %5801, float %5802, float %5803, float %5072, float %5073, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %7345 = call float @dx.op.dot3.f32(i32 55, float %5065, float %5064, float %5063, float %7341, float %7342, float %7343)  ; Dot3(ax,ay,az,bx,by,bz)
  %7346 = call float @dx.op.unary.f32(i32 7, float %7344)  ; Saturate(value)
  %7347 = fmul fast float %7346, %7346
  %7348 = fmul fast float %7347, %5108
  %7349 = call float @dx.op.unary.f32(i32 7, float %7348)  ; Saturate(value)
  %7350 = fmul fast float %7349, %7346
  %7351 = call float @dx.op.dot3.f32(i32 55, float %5072, float %5073, float %5074, float %7341, float %7342, float %7343)  ; Dot3(ax,ay,az,bx,by,bz)
  %7352 = fmul fast float %7351, %7351
  %7353 = call float @dx.op.unary.f32(i32 6, float %7344)  ; FAbs(value)
  %7354 = fsub fast float 1.000000e+00, %5101
  %7355 = fmul fast float %5083, %5083
  %7356 = fmul fast float %7355, %7354
  %7357 = fadd fast float %7356, %5101
  %7358 = bitcast float %7357 to i32
  %7359 = ashr i32 %7358, 1
  %7360 = add nsw i32 %7359, 532487669
  %7361 = bitcast i32 %7360 to float
  %7362 = fadd fast float %7361, %5083
  %7363 = fmul fast float %5101, %7352
  %7364 = fsub fast float 1.000000e+00, %7352
  %7365 = fadd fast float %7364, %7363
  %7366 = fmul fast float %7353, %7353
  %7367 = fmul fast float %7366, %7354
  %7368 = fadd fast float %7367, %5101
  %7369 = bitcast float %7368 to i32
  %7370 = ashr i32 %7369, 1
  %7371 = add nsw i32 %7370, 532487669
  %7372 = bitcast i32 %7371 to float
  %7373 = fadd fast float %7372, %7353
  %7374 = fmul fast float %7365, %7365
  %7375 = fmul fast float %7374, %7362
  %7376 = fmul fast float %7375, %7373
  %7377 = fdiv fast float 0x3FF0A00000000000, %7376
  %7378 = fmul fast float %7377, %5101
  %7379 = call float @dx.op.unary.f32(i32 6, float %7345)  ; FAbs(value)
  %7380 = fsub fast float 1.000000e+00, %7379
  %7381 = bitcast float %7380 to i32
  %7382 = sitofp i32 %7381 to float
  %7383 = fmul fast float %7382, 5.000000e+00
  %7384 = fadd fast float %7383, 0xC1EFBF8940000000
  %7385 = fptosi float %7384 to i32
  %7386 = bitcast i32 %7385 to float
  %7387 = fsub fast float 1.000000e+00, %5069
  %7388 = fsub fast float 1.000000e+00, %5070
  %7389 = fsub fast float 1.000000e+00, %5081
  %7390 = fmul fast float %7386, %7387
  %7391 = fmul fast float %7386, %7388
  %7392 = fmul fast float %7386, %7389
  %7393 = fadd fast float %7390, %5069
  %7394 = fadd fast float %7391, %5070
  %7395 = fadd fast float %7392, %5081
  br i1 %5220, label %7396, label %7419

; <label>:7396                                    ; preds = %7317
  %7397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3874, float %7379, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7398 = extractvalue %dx.types.ResRet.f32 %7397, 0
  %7399 = extractvalue %dx.types.ResRet.f32 %7397, 1
  %7400 = extractvalue %dx.types.ResRet.f32 %7397, 2
  %7401 = fadd fast float %7398, -5.000000e-01
  %7402 = fadd fast float %7399, -5.000000e-01
  %7403 = fadd fast float %7400, -5.000000e-01
  %7404 = fmul fast float %5069, 4.000000e+00
  %7405 = fmul fast float %7404, %7387
  %7406 = fmul fast float %7405, %7401
  %7407 = fmul fast float %5070, 4.000000e+00
  %7408 = fmul fast float %7407, %7388
  %7409 = fmul fast float %7408, %7402
  %7410 = fmul fast float %5081, 4.000000e+00
  %7411 = fmul fast float %7410, %7389
  %7412 = fmul fast float %7411, %7403
  %7413 = fadd fast float %7406, %7393
  %7414 = fadd fast float %7409, %7394
  %7415 = fadd fast float %7412, %7395
  %7416 = call float @dx.op.unary.f32(i32 7, float %7413)  ; Saturate(value)
  %7417 = call float @dx.op.unary.f32(i32 7, float %7414)  ; Saturate(value)
  %7418 = call float @dx.op.unary.f32(i32 7, float %7415)  ; Saturate(value)
  br label %7419

; <label>:7419                                    ; preds = %7396, %7317
  %7420 = phi float [ %7416, %7396 ], [ %7393, %7317 ]
  %7421 = phi float [ %7417, %7396 ], [ %7394, %7317 ]
  %7422 = phi float [ %7418, %7396 ], [ %7395, %7317 ]
  %7423 = fmul fast float %7344, 9.843750e-01
  %7424 = fadd fast float %7423, 7.812500e-03
  %7425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %7424, float %5210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7426 = extractvalue %dx.types.ResRet.f32 %7425, 2
  %7427 = extractvalue %dx.types.ResRet.f32 %7425, 3
  %7428 = fmul fast float %7426, %5069
  %7429 = fmul fast float %7426, %5070
  %7430 = fmul fast float %7426, %5081
  %7431 = fadd fast float %7428, %7427
  %7432 = fadd fast float %7429, %7427
  %7433 = fadd fast float %7430, %7427
  br i1 %5220, label %7434, label %7457

; <label>:7434                                    ; preds = %7419
  %7435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3874, float %7344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7436 = extractvalue %dx.types.ResRet.f32 %7435, 0
  %7437 = extractvalue %dx.types.ResRet.f32 %7435, 1
  %7438 = extractvalue %dx.types.ResRet.f32 %7435, 2
  %7439 = fadd fast float %7436, -5.000000e-01
  %7440 = fadd fast float %7437, -5.000000e-01
  %7441 = fadd fast float %7438, -5.000000e-01
  %7442 = fmul fast float %5069, 4.000000e+00
  %7443 = fmul fast float %7442, %7387
  %7444 = fmul fast float %7443, %7439
  %7445 = fmul fast float %5070, 4.000000e+00
  %7446 = fmul fast float %7445, %7388
  %7447 = fmul fast float %7446, %7440
  %7448 = fmul fast float %5081, 4.000000e+00
  %7449 = fmul fast float %7448, %7389
  %7450 = fmul fast float %7449, %7441
  %7451 = fadd fast float %7444, %7431
  %7452 = fadd fast float %7447, %7432
  %7453 = fadd fast float %7450, %7433
  %7454 = call float @dx.op.unary.f32(i32 7, float %7451)  ; Saturate(value)
  %7455 = call float @dx.op.unary.f32(i32 7, float %7452)  ; Saturate(value)
  %7456 = call float @dx.op.unary.f32(i32 7, float %7453)  ; Saturate(value)
  br label %7457

; <label>:7457                                    ; preds = %7434, %7419
  %7458 = phi float [ %7454, %7434 ], [ %7431, %7419 ]
  %7459 = phi float [ %7455, %7434 ], [ %7432, %7419 ]
  %7460 = phi float [ %7456, %7434 ], [ %7433, %7419 ]
  %7461 = call float @dx.op.binary.f32(i32 35, float %7459, float %7460)  ; FMax(a,b)
  %7462 = call float @dx.op.binary.f32(i32 35, float %7458, float %7461)  ; FMax(a,b)
  %7463 = fsub fast float 1.000000e+00, %7462
  %7464 = fmul fast float %7420, %7378
  %7465 = fmul fast float %7421, %7378
  %7466 = fmul fast float %7422, %7378
  %7467 = fsub fast float 1.000000e+00, %7345
  %7468 = bitcast float %7467 to i32
  %7469 = sitofp i32 %7468 to float
  %7470 = fmul fast float %7469, 5.000000e+00
  %7471 = fadd fast float %7470, 0xC1EFBF8940000000
  %7472 = fptosi float %7471 to i32
  %7473 = bitcast i32 %7472 to float
  %7474 = fmul fast float %7473, %3875
  %7475 = fmul fast float %7463, %7474
  %7476 = fmul fast float %7475, %5762
  %7477 = fmul fast float %7475, %5763
  %7478 = fmul fast float %7475, %5764
  %7479 = fadd fast float %7476, %7464
  %7480 = fadd fast float %7477, %7465
  %7481 = fadd fast float %7478, %7466
  %7482 = fmul fast float %7350, %7333
  %7483 = fmul fast float %7482, %7463
  %7484 = fmul fast float %7350, %7334
  %7485 = fmul fast float %7484, %7463
  %7486 = fmul fast float %7350, %7335
  %7487 = fmul fast float %7486, %7463
  %7488 = fmul fast float %7482, %7479
  %7489 = fmul fast float %7484, %7480
  %7490 = fmul fast float %7486, %7481
  %7491 = fadd fast float %7483, %5746
  %7492 = fmul fast float %7491, %3871
  %7493 = fadd fast float %7485, %5747
  %7494 = fmul fast float %7493, %3871
  %7495 = fadd fast float %7487, %5748
  %7496 = fmul fast float %7495, %3871
  %7497 = fadd fast float %7488, %5789
  %7498 = fmul fast float %7497, %3871
  %7499 = fadd fast float %7489, %5792
  %7500 = fmul fast float %7499, %3871
  %7501 = fadd fast float %7490, %5795
  %7502 = fmul fast float %7501, %3871
  br label %7503

; <label>:7503                                    ; preds = %7457, %7251, %5742
  %7504 = phi float [ %5790, %5742 ], [ %5790, %7251 ], [ %7498, %7457 ]
  %7505 = phi float [ %5793, %5742 ], [ %5793, %7251 ], [ %7500, %7457 ]
  %7506 = phi float [ %5796, %5742 ], [ %5796, %7251 ], [ %7502, %7457 ]
  %7507 = phi float [ %5785, %5742 ], [ %5785, %7251 ], [ %7492, %7457 ]
  %7508 = phi float [ %5786, %5742 ], [ %5786, %7251 ], [ %7494, %7457 ]
  %7509 = phi float [ %5787, %5742 ], [ %5787, %7251 ], [ %7496, %7457 ]
  %7510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7511 = extractvalue %dx.types.CBufRet.i32 %7510, 0
  %7512 = icmp eq i32 %7511, 0
  br i1 %7512, label %8175, label %7513

; <label>:7513                                    ; preds = %7503
  %7514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7515 = extractvalue %dx.types.CBufRet.f32 %7514, 2
  %7516 = extractvalue %dx.types.CBufRet.f32 %7514, 3
  %7517 = fmul fast float %7515, %116
  %7518 = fmul fast float %7516, %117
  %7519 = fptoui float %7517 to i32
  %7520 = fptoui float %7518 to i32
  %7521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7522 = extractvalue %dx.types.CBufRet.f32 %7521, 0
  %7523 = extractvalue %dx.types.CBufRet.f32 %7521, 2
  %7524 = extractvalue %dx.types.CBufRet.f32 %7521, 3
  %7525 = fadd fast float %103, -4.000000e+00
  %7526 = call float @dx.op.binary.f32(i32 35, float %7525, float 0.000000e+00)  ; FMax(a,b)
  %7527 = fadd fast float %7526, %7522
  %7528 = fmul fast float %7527, %7523
  %7529 = call float @dx.op.unary.f32(i32 23, float %7528)  ; Log(value)
  %7530 = fmul fast float %7529, %7524
  %7531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7532 = extractvalue %dx.types.CBufRet.f32 %7531, 2
  %7533 = fmul fast float %7530, %7532
  %7534 = call float @dx.op.unary.f32(i32 7, float %7533)  ; Saturate(value)
  %7535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7536 = extractvalue %dx.types.CBufRet.i32 %7535, 1
  %7537 = add i32 %7536, -1
  %7538 = uitofp i32 %7536 to float
  %7539 = fmul fast float %7538, %7534
  %7540 = fptoui float %7539 to i32
  %7541 = call i32 @dx.op.binary.i32(i32 40, i32 %7540, i32 %7537)  ; UMin(a,b)
  %7542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7543 = extractvalue %dx.types.CBufRet.i32 %7542, 2
  %7544 = extractvalue %dx.types.CBufRet.i32 %7542, 3
  %7545 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7520, i32 %7543, i32 %7519)  ; UMad(a,b,c)
  %7546 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7541, i32 %7544, i32 %7545)  ; UMad(a,b,c)
  %7547 = add nsw i32 %7511, -1
  %7548 = call i32 @dx.op.binary.i32(i32 37, i32 %7547, i32 0)  ; IMax(a,b)
  %7549 = call float @dx.op.binary.f32(i32 35, float %103, float 0.000000e+00)  ; FMax(a,b)
  %7550 = fptoui float %7549 to i32
  %7551 = lshr i32 %7550, 5
  %7552 = call i32 @dx.op.binary.i32(i32 40, i32 %7551, i32 8191)  ; UMin(a,b)
  %7553 = shl i32 %7552, 2
  %7554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7553, i32 undef)  ; BufferLoad(srv,index,wot)
  %7555 = extractvalue %dx.types.ResRet.i32 %7554, 0
  %7556 = lshr i32 %7555, 16
  %7557 = and i32 %7555, 65535
  %7558 = lshr i32 %7555, 21
  %7559 = lshr i32 %7557, 5
  %7560 = call i32 @dx.op.binary.i32(i32 40, i32 %7559, i32 %7548)  ; UMin(a,b)
  %7561 = icmp ugt i32 %7558, %7560
  br i1 %7561, label %8175, label %7562

; <label>:7562                                    ; preds = %7513
  br label %7563

; <label>:7563                                    ; preds = %8165, %7562
  %7564 = phi i32 [ %8172, %8165 ], [ %7558, %7562 ]
  %7565 = phi float [ %8166, %8165 ], [ %7504, %7562 ]
  %7566 = phi float [ %8167, %8165 ], [ %7505, %7562 ]
  %7567 = phi float [ %8168, %8165 ], [ %7506, %7562 ]
  %7568 = phi float [ %8169, %8165 ], [ %7507, %7562 ]
  %7569 = phi float [ %8170, %8165 ], [ %7508, %7562 ]
  %7570 = phi float [ %8171, %8165 ], [ %7509, %7562 ]
  %7571 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7572 = extractvalue %dx.types.CBufRet.i32 %7571, 0
  %7573 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7546, i32 %7572, i32 %7564)  ; UMad(a,b,c)
  %7574 = shl i32 %7573, 2
  %7575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7574, i32 undef)  ; BufferLoad(srv,index,wot)
  %7576 = extractvalue %dx.types.ResRet.i32 %7575, 0
  %7577 = shl i32 %7564, 5
  %7578 = sub nsw i32 %7556, %7577
  %7579 = call i32 @dx.op.binary.i32(i32 37, i32 %7578, i32 0)  ; IMax(a,b)
  %7580 = call i32 @dx.op.binary.i32(i32 38, i32 %7579, i32 31)  ; IMin(a,b)
  %7581 = sub nsw i32 1, %7556
  %7582 = add nsw i32 %7581, %7557
  %7583 = call i32 @dx.op.binary.i32(i32 37, i32 %7582, i32 0)  ; IMax(a,b)
  %7584 = call i32 @dx.op.binary.i32(i32 38, i32 %7583, i32 32)  ; IMin(a,b)
  %7585 = and i32 %7584, 31
  %7586 = shl i32 -1, %7585
  %7587 = xor i32 %7586, -1
  %7588 = and i32 %7580, 31
  %7589 = shl i32 %7587, %7588
  %7590 = icmp eq i32 %7584, 32
  %7591 = select i1 %7590, i32 -1, i32 %7589
  %7592 = and i32 %7591, %7576
  %7593 = icmp eq i32 %7592, 0
  br i1 %7593, label %8165, label %7594

; <label>:7594                                    ; preds = %7563
  br label %7595

; <label>:7595                                    ; preds = %7729, %7594
  %7596 = phi i32 [ %7607, %7729 ], [ %7592, %7594 ]
  %7597 = phi float [ %7730, %7729 ], [ %7565, %7594 ]
  %7598 = phi float [ %7731, %7729 ], [ %7566, %7594 ]
  %7599 = phi float [ %7732, %7729 ], [ %7567, %7594 ]
  %7600 = phi float [ %7733, %7729 ], [ %7568, %7594 ]
  %7601 = phi float [ %7734, %7729 ], [ %7569, %7594 ]
  %7602 = phi float [ %7735, %7729 ], [ %7570, %7594 ]
  %7603 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7596)  ; FirstbitLo(value)
  %7604 = add i32 %7603, %7577
  %7605 = and i32 %7603, 31
  %7606 = shl i32 1, %7605
  %7607 = xor i32 %7606, %7596
  %7608 = mul i32 %7604, 112
  %7609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7608, i32 undef)  ; BufferLoad(srv,index,wot)
  %7610 = extractvalue %dx.types.ResRet.f32 %7609, 0
  %7611 = extractvalue %dx.types.ResRet.f32 %7609, 1
  %7612 = extractvalue %dx.types.ResRet.f32 %7609, 2
  %7613 = or i32 %7608, 12
  %7614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7613, i32 undef)  ; BufferLoad(srv,index,wot)
  %7615 = extractvalue %dx.types.ResRet.f32 %7614, 0
  %7616 = add i32 %7608, 16
  %7617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7616, i32 undef)  ; BufferLoad(srv,index,wot)
  %7618 = extractvalue %dx.types.ResRet.f32 %7617, 0
  %7619 = extractvalue %dx.types.ResRet.f32 %7617, 1
  %7620 = extractvalue %dx.types.ResRet.f32 %7617, 2
  %7621 = add i32 %7608, 28
  %7622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7621, i32 undef)  ; BufferLoad(srv,index,wot)
  %7623 = extractvalue %dx.types.ResRet.i32 %7622, 0
  %7624 = add i32 %7608, 44
  %7625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7624, i32 undef)  ; BufferLoad(srv,index,wot)
  %7626 = extractvalue %dx.types.ResRet.f32 %7625, 0
  %7627 = add i32 %7608, 48
  %7628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7627, i32 undef)  ; BufferLoad(srv,index,wot)
  %7629 = extractvalue %dx.types.ResRet.f32 %7628, 0
  %7630 = extractvalue %dx.types.ResRet.f32 %7628, 1
  %7631 = extractvalue %dx.types.ResRet.f32 %7628, 2
  %7632 = extractvalue %dx.types.ResRet.f32 %7628, 3
  %7633 = add i32 %7608, 64
  %7634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7633, i32 undef)  ; BufferLoad(srv,index,wot)
  %7635 = extractvalue %dx.types.ResRet.f32 %7634, 0
  %7636 = extractvalue %dx.types.ResRet.f32 %7634, 1
  %7637 = extractvalue %dx.types.ResRet.f32 %7634, 2
  %7638 = extractvalue %dx.types.ResRet.f32 %7634, 3
  %7639 = add i32 %7608, 80
  %7640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7639, i32 undef)  ; BufferLoad(srv,index,wot)
  %7641 = extractvalue %dx.types.ResRet.f32 %7640, 1
  %7642 = extractvalue %dx.types.ResRet.f32 %7640, 2
  %7643 = add i32 %7608, 92
  %7644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7643, i32 undef)  ; BufferLoad(srv,index,wot)
  %7645 = extractvalue %dx.types.ResRet.i32 %7644, 0
  %7646 = call float @dx.op.dot3.f32(i32 55, float %7610, float %7611, float %7612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7647 = select i1 %269, float %7641, float %7610
  %7648 = select i1 %269, float %7646, float %7611
  %7649 = select i1 %269, float %7642, float %7612
  %7650 = and i32 %7645, 65535
  %7651 = uitofp i32 %7650 to float
  %7652 = lshr i32 %7645, 16
  %7653 = uitofp i32 %7652 to float
  %7654 = and i32 %7623, 65535
  %7655 = and i32 %7623, 50331648
  %7656 = icmp eq i32 %7655, 33554432
  %7657 = fsub fast float %7629, %203
  %7658 = fsub fast float %7630, %204
  %7659 = fsub fast float %7631, %205
  %7660 = call float @dx.op.dot3.f32(i32 55, float %7657, float %7658, float %7659, float %7657, float %7658, float %7659)  ; Dot3(ax,ay,az,bx,by,bz)
  %7661 = call float @dx.op.unary.f32(i32 24, float %7660)  ; Sqrt(value)
  %7662 = fdiv fast float 1.000000e+00, %7661
  %7663 = fmul fast float %7662, %7657
  %7664 = fmul fast float %7662, %7658
  %7665 = fmul fast float %7662, %7659
  %7666 = fadd fast float %7661, %7615
  %7667 = fdiv fast float 1.000000e+00, %7666
  %7668 = fmul float %7626, %7667
  %7669 = fmul float %7668, %7668
  %7670 = call float @dx.op.unary.f32(i32 7, float %7669)  ; Saturate(value)
  br i1 %7656, label %7671, label %7692

; <label>:7671                                    ; preds = %7595
  %7672 = fmul fast float %7637, %7618
  %7673 = fmul fast float %7637, %7619
  %7674 = fmul fast float %7637, %7620
  %7675 = fadd fast float %7657, %7672
  %7676 = fadd fast float %7658, %7673
  %7677 = fadd fast float %7659, %7674
  %7678 = call float @dx.op.dot3.f32(i32 55, float %7675, float %7676, float %7677, float %7675, float %7676, float %7677)  ; Dot3(ax,ay,az,bx,by,bz)
  %7679 = call float @dx.op.unary.f32(i32 25, float %7678)  ; Rsqrt(value)
  %7680 = fmul fast float %7679, %7675
  %7681 = fmul fast float %7679, %7676
  %7682 = fmul fast float %7679, %7677
  %7683 = fsub fast float %203, %7629
  %7684 = fsub fast float %204, %7630
  %7685 = fsub fast float %205, %7631
  %7686 = fsub fast float -0.000000e+00, %7683
  %7687 = fsub fast float -0.000000e+00, %7684
  %7688 = fsub fast float -0.000000e+00, %7685
  %7689 = call float @dx.op.dot3.f32(i32 55, float %7686, float %7687, float %7688, float %7618, float %7619, float %7620)  ; Dot3(ax,ay,az,bx,by,bz)
  %7690 = fcmp fast ogt float %7689, 0.000000e+00
  %7691 = uitofp i1 %7690 to float
  br label %7692

; <label>:7692                                    ; preds = %7671, %7595
  %7693 = phi float [ %7691, %7671 ], [ 1.000000e+00, %7595 ]
  %7694 = phi float [ %7680, %7671 ], [ %7663, %7595 ]
  %7695 = phi float [ %7681, %7671 ], [ %7664, %7595 ]
  %7696 = phi float [ %7682, %7671 ], [ %7665, %7595 ]
  %7697 = call float @dx.op.dot3.f32(i32 55, float %7618, float %7619, float %7620, float %7694, float %7695, float %7696)  ; Dot3(ax,ay,az,bx,by,bz)
  %7698 = fmul fast float %7697, %7697
  %7699 = call float @dx.op.unary.f32(i32 7, float %7698)  ; Saturate(value)
  %7700 = fsub fast float 1.000000e+00, %7699
  %7701 = fmul fast float %7700, 5.000000e-01
  %7702 = fcmp fast ogt float %7697, 0.000000e+00
  %7703 = fsub fast float 1.000000e+00, %7701
  %7704 = select i1 %7702, float %7701, float %7703
  %7705 = fmul fast float %7704, %7653
  %7706 = fadd fast float %7705, %7651
  %7707 = fmul fast float %7706, 0x3EF0001000000000
  %7708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %55, float %7707, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7709 = extractvalue %dx.types.ResRet.f32 %7708, 0
  %7710 = fmul fast float %7697, %7635
  %7711 = fadd fast float %7710, %7636
  %7712 = call float @dx.op.unary.f32(i32 7, float %7711)  ; Saturate(value)
  %7713 = select i1 %7656, float 1.000000e+00, float %7712
  %7714 = select i1 %7656, float %7712, float 1.000000e+00
  %7715 = fmul fast float %7661, %7632
  %7716 = fsub fast float 1.000000e+00, %7715
  %7717 = fmul fast float %7716, %7638
  %7718 = call float @dx.op.unary.f32(i32 7, float %7717)  ; Saturate(value)
  %7719 = fmul fast float %7718, %7714
  %7720 = fmul fast float %7719, 2.000000e+00
  %7721 = fsub fast float 3.000000e+00, %7720
  %7722 = fmul fast float %7709, %7693
  %7723 = fmul fast float %7719, %7719
  %7724 = fmul fast float %7723, %7722
  %7725 = fmul fast float %7724, %7721
  %7726 = call float @dx.op.binary.f32(i32 36, float %7725, float %7725)  ; FMin(a,b)
  %7727 = call float @dx.op.binary.f32(i32 36, float %7725, float %7726)  ; FMin(a,b)
  %7728 = fcmp fast ogt float %7727, 0.000000e+00
  br i1 %7728, label %7737, label %7729, !dx.controlflow.hints !135

; <label>:7729                                    ; preds = %8121, %7883, %7692
  %7730 = phi float [ %7597, %7883 ], [ %7597, %7692 ], [ %8161, %8121 ]
  %7731 = phi float [ %7598, %7883 ], [ %7598, %7692 ], [ %8162, %8121 ]
  %7732 = phi float [ %7599, %7883 ], [ %7599, %7692 ], [ %8163, %8121 ]
  %7733 = phi float [ %7600, %7883 ], [ %7600, %7692 ], [ %8155, %8121 ]
  %7734 = phi float [ %7601, %7883 ], [ %7601, %7692 ], [ %8156, %8121 ]
  %7735 = phi float [ %7602, %7883 ], [ %7602, %7692 ], [ %8157, %8121 ]
  %7736 = icmp eq i32 %7596, %7606
  br i1 %7736, label %8164, label %7595

; <label>:7737                                    ; preds = %7692
  %7738 = icmp eq i32 %7654, 255
  br i1 %7738, label %7883, label %7739, !dx.controlflow.hints !136

; <label>:7739                                    ; preds = %7737
  %7740 = mul nuw nsw i32 %7654, 176
  %7741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7740, i32 undef)  ; BufferLoad(srv,index,wot)
  %7742 = extractvalue %dx.types.ResRet.f32 %7741, 0
  %7743 = extractvalue %dx.types.ResRet.f32 %7741, 1
  %7744 = extractvalue %dx.types.ResRet.f32 %7741, 2
  %7745 = extractvalue %dx.types.ResRet.f32 %7741, 3
  %7746 = add nuw nsw i32 %7740, 16
  %7747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7746, i32 undef)  ; BufferLoad(srv,index,wot)
  %7748 = extractvalue %dx.types.ResRet.f32 %7747, 0
  %7749 = extractvalue %dx.types.ResRet.f32 %7747, 1
  %7750 = add nuw nsw i32 %7740, 32
  %7751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7750, i32 undef)  ; BufferLoad(srv,index,wot)
  %7752 = extractvalue %dx.types.ResRet.f32 %7751, 0
  %7753 = extractvalue %dx.types.ResRet.f32 %7751, 1
  %7754 = extractvalue %dx.types.ResRet.f32 %7751, 2
  %7755 = add nuw nsw i32 %7740, 48
  %7756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7755, i32 undef)  ; BufferLoad(srv,index,wot)
  %7757 = extractvalue %dx.types.ResRet.f32 %7756, 0
  %7758 = extractvalue %dx.types.ResRet.f32 %7756, 1
  %7759 = extractvalue %dx.types.ResRet.f32 %7756, 2
  %7760 = extractvalue %dx.types.ResRet.f32 %7756, 3
  %7761 = add nuw nsw i32 %7740, 64
  %7762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7761, i32 undef)  ; BufferLoad(srv,index,wot)
  %7763 = extractvalue %dx.types.ResRet.f32 %7762, 0
  %7764 = extractvalue %dx.types.ResRet.f32 %7762, 1
  %7765 = extractvalue %dx.types.ResRet.f32 %7762, 2
  %7766 = extractvalue %dx.types.ResRet.f32 %7762, 3
  %7767 = add nuw nsw i32 %7740, 80
  %7768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7767, i32 undef)  ; BufferLoad(srv,index,wot)
  %7769 = extractvalue %dx.types.ResRet.f32 %7768, 0
  %7770 = extractvalue %dx.types.ResRet.f32 %7768, 1
  %7771 = extractvalue %dx.types.ResRet.f32 %7768, 2
  %7772 = extractvalue %dx.types.ResRet.f32 %7768, 3
  %7773 = add nuw nsw i32 %7740, 96
  %7774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7773, i32 undef)  ; BufferLoad(srv,index,wot)
  %7775 = extractvalue %dx.types.ResRet.f32 %7774, 0
  %7776 = extractvalue %dx.types.ResRet.f32 %7774, 1
  %7777 = extractvalue %dx.types.ResRet.f32 %7774, 2
  %7778 = extractvalue %dx.types.ResRet.f32 %7774, 3
  %7779 = bitcast float %7749 to i32
  %7780 = fmul fast float %7754, %123
  %7781 = fmul fast float %7754, %124
  %7782 = fmul fast float %7754, %125
  %7783 = fadd fast float %7780, %203
  %7784 = fadd fast float %7781, %204
  %7785 = fadd fast float %7782, %205
  %7786 = fmul fast float %7783, %7757
  %7787 = call float @dx.op.tertiary.f32(i32 46, float %7784, float %7763, float %7786)  ; FMad(a,b,c)
  %7788 = call float @dx.op.tertiary.f32(i32 46, float %7785, float %7769, float %7787)  ; FMad(a,b,c)
  %7789 = fadd fast float %7788, %7775
  %7790 = fmul fast float %7783, %7758
  %7791 = call float @dx.op.tertiary.f32(i32 46, float %7784, float %7764, float %7790)  ; FMad(a,b,c)
  %7792 = call float @dx.op.tertiary.f32(i32 46, float %7785, float %7770, float %7791)  ; FMad(a,b,c)
  %7793 = fadd fast float %7792, %7776
  %7794 = fmul fast float %7783, %7759
  %7795 = call float @dx.op.tertiary.f32(i32 46, float %7784, float %7765, float %7794)  ; FMad(a,b,c)
  %7796 = call float @dx.op.tertiary.f32(i32 46, float %7785, float %7771, float %7795)  ; FMad(a,b,c)
  %7797 = fadd fast float %7796, %7777
  %7798 = fmul fast float %7783, %7760
  %7799 = call float @dx.op.tertiary.f32(i32 46, float %7784, float %7766, float %7798)  ; FMad(a,b,c)
  %7800 = call float @dx.op.tertiary.f32(i32 46, float %7785, float %7772, float %7799)  ; FMad(a,b,c)
  %7801 = fadd fast float %7800, %7778
  %7802 = fdiv fast float %7789, %7801
  %7803 = fdiv fast float %7793, %7801
  %7804 = fdiv fast float %7797, %7801
  %7805 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7804)  ; FMax(a,b)
  %7806 = fmul fast float %280, 0x401921FB60000000
  %7807 = call float @dx.op.unary.f32(i32 13, float %7806)  ; Sin(value)
  %7808 = call float @dx.op.unary.f32(i32 12, float %7806)  ; Cos(value)
  %7809 = fmul fast float %7808, %7753
  %7810 = call float @dx.op.tertiary.f32(i32 46, float %7807, float %7753, float 0.000000e+00)  ; FMad(a,b,c)
  %7811 = fmul fast float %7753, %7807
  %7812 = fsub fast float -0.000000e+00, %7811
  %7813 = call float @dx.op.tertiary.f32(i32 46, float %7808, float %7753, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7814

; <label>:7814                                    ; preds = %7814, %7739
  %7815 = phi float [ 0.000000e+00, %7739 ], [ %7847, %7814 ]
  %7816 = phi float [ 0.000000e+00, %7739 ], [ %7849, %7814 ]
  %7817 = phi i32 [ 0, %7739 ], [ %7850, %7814 ]
  %7818 = mul i32 %7817, 2
  %7819 = add i32 0, %7818
  %7820 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7819
  %7821 = load float, float* %7820, align 4
  %7822 = mul i32 %7817, 2
  %7823 = add i32 1, %7822
  %7824 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7823
  %7825 = load float, float* %7824, align 4
  %7826 = fmul fast float %7809, %7821
  %7827 = call float @dx.op.tertiary.f32(i32 46, float %7825, float %7812, float %7826)  ; FMad(a,b,c)
  %7828 = fmul fast float %7821, %7810
  %7829 = call float @dx.op.tertiary.f32(i32 46, float %7825, float %7813, float %7828)  ; FMad(a,b,c)
  %7830 = fadd fast float %7827, %7802
  %7831 = fadd fast float %7829, %7803
  %7832 = fmul fast float %7830, %7748
  %7833 = fmul fast float %7831, %7748
  %7834 = call float @dx.op.binary.f32(i32 35, float %7832, float %7744)  ; FMax(a,b)
  %7835 = call float @dx.op.binary.f32(i32 35, float %7833, float %7744)  ; FMax(a,b)
  %7836 = call float @dx.op.binary.f32(i32 36, float %7834, float %7745)  ; FMin(a,b)
  %7837 = call float @dx.op.binary.f32(i32 36, float %7835, float %7745)  ; FMin(a,b)
  %7838 = fadd fast float %7836, %7742
  %7839 = fadd fast float %7837, %7743
  %7840 = uitofp i32 %7779 to float
  %7841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %7838, float %7839, float %7840, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7842 = extractvalue %dx.types.ResRet.f32 %7841, 0
  %7843 = fsub fast float %7842, %7805
  %7844 = fsub fast float %7843, %7752
  %7845 = fcmp fast ogt float %7844, 0.000000e+00
  %7846 = select i1 %7845, float 1.000000e+00, float 0.000000e+00
  %7847 = fadd fast float %7846, %7815
  %7848 = select i1 %7845, float %7844, float 0.000000e+00
  %7849 = fadd fast float %7848, %7816
  %7850 = add nuw nsw i32 %7817, 1
  %7851 = icmp eq i32 %7850, 8
  br i1 %7851, label %7852, label %7814

; <label>:7852                                    ; preds = %7814
  %7853 = fdiv fast float 1.000000e+00, %7847
  %7854 = fmul fast float %7853, %7849
  %7855 = fdiv fast float 1.000000e+00, %7805
  %7856 = fmul fast float %7854, %7855
  %7857 = call float @dx.op.unary.f32(i32 7, float %7856)  ; Saturate(value)
  %7858 = call float @dx.op.binary.f32(i32 35, float %7857, float 0.000000e+00)  ; FMax(a,b)
  %7859 = fmul fast float %7847, 1.250000e-01
  %7860 = call float @dx.op.unary.f32(i32 7, float %7859)  ; Saturate(value)
  %7861 = fmul fast float %7860, 2.000000e+00
  %7862 = fadd fast float %7861, -1.000000e+00
  %7863 = fcmp fast ogt float %7862, 0.000000e+00
  %7864 = fcmp fast olt float %7862, 0.000000e+00
  %7865 = zext i1 %7863 to i32
  %7866 = zext i1 %7864 to i32
  %7867 = sub nsw i32 %7865, %7866
  %7868 = sitofp i32 %7867 to float
  %7869 = fmul fast float %7868, %7862
  %7870 = fsub fast float 1.000000e+00, %7869
  %7871 = fmul fast float %7870, %7870
  %7872 = fmul fast float %7871, %7870
  %7873 = fsub fast float %7870, %7872
  %7874 = fmul fast float %7873, %7858
  %7875 = fsub fast float 1.000000e+00, %7872
  %7876 = fsub fast float %7875, %7874
  %7877 = fmul fast float %7868, 5.000000e-01
  %7878 = fmul fast float %7877, %7876
  %7879 = fsub fast float -5.000000e-01, %7878
  %7880 = fmul fast float %7879, %7713
  %7881 = fadd fast float %7880, 1.000000e+00
  %7882 = fmul fast float %7881, %7725
  br label %7883

; <label>:7883                                    ; preds = %7852, %7737
  %7884 = phi float [ %7882, %7852 ], [ %7725, %7737 ]
  %7885 = call float @dx.op.binary.f32(i32 36, float %7884, float %7884)  ; FMin(a,b)
  %7886 = call float @dx.op.binary.f32(i32 36, float %7884, float %7885)  ; FMin(a,b)
  %7887 = fcmp fast ogt float %7886, 0.000000e+00
  br i1 %7887, label %7888, label %7729, !dx.controlflow.hints !137

; <label>:7888                                    ; preds = %7883
  %7889 = fmul fast float %7884, %7647
  %7890 = fmul fast float %7884, %7648
  %7891 = fmul fast float %7884, %7649
  %7892 = fsub fast float %7631, %4279
  %7893 = fcmp fast ogt float %7892, 0.000000e+00
  %7894 = fsub fast float %205, %4279
  %7895 = fcmp fast ogt float %7894, 0.000000e+00
  %7896 = xor i1 %7895, %7893
  %7897 = fsub fast float %4279, %7631
  %7898 = fmul fast float %7897, 2.000000e+00
  %7899 = fadd fast float %7898, %7631
  %7900 = select i1 %7896, float %7631, float %7899
  %7901 = fsub fast float %7900, %205
  %7902 = call float @dx.op.dot3.f32(i32 55, float %7657, float %7658, float %7901, float %7657, float %7658, float %7901)  ; Dot3(ax,ay,az,bx,by,bz)
  %7903 = call float @dx.op.unary.f32(i32 25, float %7902)  ; Rsqrt(value)
  %7904 = fmul fast float %7903, %7657
  %7905 = fmul fast float %7903, %7658
  %7906 = fmul fast float %7903, %7901
  %7907 = fsub fast float %4279, %205
  %7908 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7907)  ; Dot3(ax,ay,az,bx,by,bz)
  %7909 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7904, float %7905, float %7906)  ; Dot3(ax,ay,az,bx,by,bz)
  %7910 = fdiv fast float 1.000000e+00, %7909
  %7911 = fmul fast float %7910, %7908
  %7912 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7894, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7913 = fcmp fast ogt float %7912, 0.000000e+00
  %7914 = fcmp fast olt float %7912, 0.000000e+00
  %7915 = zext i1 %7913 to i32
  %7916 = zext i1 %7914 to i32
  %7917 = sub nsw i32 %7915, %7916
  %7918 = sitofp i32 %7917 to float
  %7919 = fsub fast float %7900, %4279
  %7920 = call float @dx.op.dot3.f32(i32 55, float %7657, float %7658, float %7919, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7921 = fcmp fast ogt float %7920, 0.000000e+00
  %7922 = fcmp fast olt float %7920, 0.000000e+00
  %7923 = zext i1 %7921 to i32
  %7924 = zext i1 %7922 to i32
  %7925 = sub nsw i32 %7923, %7924
  %7926 = sitofp i32 %7925 to float
  %7927 = fcmp fast une float %7918, %7926
  br i1 %7927, label %7928, label %7938

; <label>:7928                                    ; preds = %7888
  %7929 = fmul fast float %7911, %7906
  %7930 = fmul fast float %7911, %7905
  %7931 = fmul fast float %7911, %7904
  %7932 = fmul fast float %7931, %7931
  %7933 = fmul fast float %7930, %7930
  %7934 = fadd fast float %7932, %7933
  %7935 = fmul fast float %7929, %7929
  %7936 = fadd fast float %7934, %7935
  %7937 = call float @dx.op.unary.f32(i32 24, float %7936)  ; Sqrt(value)
  br label %7950

; <label>:7938                                    ; preds = %7888
  %7939 = icmp slt i32 %7917, 0
  br i1 %7939, label %7940, label %7950

; <label>:7940                                    ; preds = %7938
  %7941 = fsub fast float %203, %7629
  %7942 = fsub fast float %204, %7630
  %7943 = fsub fast float %205, %7900
  %7944 = fmul fast float %7941, %7941
  %7945 = fmul fast float %7942, %7942
  %7946 = fadd fast float %7944, %7945
  %7947 = fmul fast float %7943, %7943
  %7948 = fadd fast float %7946, %7947
  %7949 = call float @dx.op.unary.f32(i32 24, float %7948)  ; Sqrt(value)
  br label %7950

; <label>:7950                                    ; preds = %7940, %7938, %7928
  %7951 = phi float [ %7937, %7928 ], [ %7949, %7940 ], [ 0.000000e+00, %7938 ]
  %7952 = and i1 %7895, %7893
  %7953 = fsub fast float -0.000000e+00, %7951
  %7954 = select i1 %7952, float -0.000000e+00, float %7953
  %7955 = fmul fast float %4276, 0x3FF7154760000000
  %7956 = fmul fast float %7955, %7954
  %7957 = fmul fast float %4277, 0x3FF7154760000000
  %7958 = fmul fast float %7957, %7954
  %7959 = fmul fast float %4278, 0x3FF7154760000000
  %7960 = fmul fast float %7959, %7954
  %7961 = call float @dx.op.unary.f32(i32 21, float %7956)  ; Exp(value)
  %7962 = call float @dx.op.unary.f32(i32 21, float %7958)  ; Exp(value)
  %7963 = call float @dx.op.unary.f32(i32 21, float %7960)  ; Exp(value)
  %7964 = call float @dx.op.unary.f32(i32 7, float %7961)  ; Saturate(value)
  %7965 = call float @dx.op.unary.f32(i32 7, float %7962)  ; Saturate(value)
  %7966 = call float @dx.op.unary.f32(i32 7, float %7963)  ; Saturate(value)
  %7967 = fmul fast float %7889, %7964
  %7968 = fmul fast float %7890, %7965
  %7969 = fmul fast float %7891, %7966
  %7970 = fsub fast float %7663, %5068
  %7971 = fsub fast float %7664, %5067
  %7972 = fsub fast float %7665, %5066
  %7973 = call float @dx.op.dot3.f32(i32 55, float %7970, float %7971, float %7972, float %7970, float %7971, float %7972)  ; Dot3(ax,ay,az,bx,by,bz)
  %7974 = call float @dx.op.unary.f32(i32 25, float %7973)  ; Rsqrt(value)
  %7975 = fmul fast float %7974, %7970
  %7976 = fmul fast float %7974, %7971
  %7977 = fmul fast float %7974, %7972
  %7978 = call float @dx.op.dot3.f32(i32 55, float %7663, float %7664, float %7665, float %5072, float %5073, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %7979 = call float @dx.op.dot3.f32(i32 55, float %5065, float %5064, float %5063, float %7975, float %7976, float %7977)  ; Dot3(ax,ay,az,bx,by,bz)
  %7980 = call float @dx.op.unary.f32(i32 7, float %7978)  ; Saturate(value)
  %7981 = fmul fast float %7980, %7670
  %7982 = fmul fast float %7980, %7980
  %7983 = fmul fast float %7982, %5108
  %7984 = call float @dx.op.unary.f32(i32 7, float %7983)  ; Saturate(value)
  %7985 = fmul fast float %7981, %7984
  %7986 = bitcast float %7660 to i32
  %7987 = ashr i32 %7986, 1
  %7988 = sub nsw i32 1597463007, %7987
  %7989 = bitcast i32 %7988 to float
  %7990 = fmul fast float %7989, %7657
  %7991 = fmul fast float %7989, %7658
  %7992 = fmul fast float %7989, %7659
  %7993 = fsub fast float %7990, %5068
  %7994 = fsub fast float %7991, %5067
  %7995 = fsub fast float %7992, %5066
  %7996 = call float @dx.op.dot3.f32(i32 55, float %7993, float %7994, float %7995, float %7993, float %7994, float %7995)  ; Dot3(ax,ay,az,bx,by,bz)
  %7997 = call float @dx.op.unary.f32(i32 25, float %7996)  ; Rsqrt(value)
  %7998 = fmul fast float %7993, %7997
  %7999 = fmul fast float %7994, %7997
  %8000 = fmul fast float %7995, %7997
  %8001 = call float @dx.op.dot3.f32(i32 55, float %5072, float %5073, float %5074, float %7998, float %7999, float %8000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8002 = fmul fast float %8001, %8001
  %8003 = call float @dx.op.unary.f32(i32 6, float %7978)  ; FAbs(value)
  %8004 = fsub fast float 1.000000e+00, %5101
  %8005 = fmul fast float %5083, %5083
  %8006 = fmul fast float %8005, %8004
  %8007 = fadd fast float %8006, %5101
  %8008 = bitcast float %8007 to i32
  %8009 = ashr i32 %8008, 1
  %8010 = add nsw i32 %8009, 532487669
  %8011 = bitcast i32 %8010 to float
  %8012 = fadd fast float %8011, %5083
  %8013 = fmul fast float %5101, %8002
  %8014 = fsub fast float 1.000000e+00, %8002
  %8015 = fadd fast float %8014, %8013
  %8016 = fmul fast float %8003, %8003
  %8017 = fmul fast float %8016, %8004
  %8018 = fadd fast float %8017, %5101
  %8019 = bitcast float %8018 to i32
  %8020 = ashr i32 %8019, 1
  %8021 = add nsw i32 %8020, 532487669
  %8022 = bitcast i32 %8021 to float
  %8023 = fadd fast float %8022, %8003
  %8024 = fmul fast float %8015, %8015
  %8025 = fmul fast float %8024, %8012
  %8026 = fmul fast float %8025, %8023
  %8027 = fdiv fast float 1.000000e+00, %8026
  %8028 = bitcast float %5101 to i32
  %8029 = sitofp i32 %8028 to float
  %8030 = fmul fast float %8029, 0x3FE7F73180000000
  %8031 = fadd fast float %8030, 0x41AFE27C40000000
  %8032 = fptosi float %8031 to i32
  %8033 = bitcast i32 %8032 to float
  %8034 = fmul fast float %7626, 0x3FD80E9D60000000
  %8035 = fmul fast float %8034, %7989
  %8036 = fadd fast float %8033, %8035
  %8037 = bitcast float %8036 to i32
  %8038 = sub nsw i32 2129859010, %8037
  %8039 = bitcast i32 %8038 to float
  %8040 = fmul fast float %5101, %8027
  %8041 = fmul fast float %8040, %8033
  %8042 = fmul fast float %8041, %8039
  %8043 = call float @dx.op.unary.f32(i32 6, float %7979)  ; FAbs(value)
  %8044 = fsub fast float 1.000000e+00, %8043
  %8045 = bitcast float %8044 to i32
  %8046 = sitofp i32 %8045 to float
  %8047 = fmul fast float %8046, 5.000000e+00
  %8048 = fadd fast float %8047, 0xC1EFBF8940000000
  %8049 = fptosi float %8048 to i32
  %8050 = bitcast i32 %8049 to float
  %8051 = fsub fast float 1.000000e+00, %5069
  %8052 = fsub fast float 1.000000e+00, %5070
  %8053 = fsub fast float 1.000000e+00, %5081
  %8054 = fmul fast float %8050, %8051
  %8055 = fmul fast float %8050, %8052
  %8056 = fmul fast float %8050, %8053
  %8057 = fadd fast float %8054, %5069
  %8058 = fadd fast float %8055, %5070
  %8059 = fadd fast float %8056, %5081
  br i1 %5220, label %8060, label %8083

; <label>:8060                                    ; preds = %7950
  %8061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3874, float %8043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8062 = extractvalue %dx.types.ResRet.f32 %8061, 0
  %8063 = extractvalue %dx.types.ResRet.f32 %8061, 1
  %8064 = extractvalue %dx.types.ResRet.f32 %8061, 2
  %8065 = fadd fast float %8062, -5.000000e-01
  %8066 = fadd fast float %8063, -5.000000e-01
  %8067 = fadd fast float %8064, -5.000000e-01
  %8068 = fmul fast float %5069, 4.000000e+00
  %8069 = fmul fast float %8068, %8051
  %8070 = fmul fast float %8069, %8065
  %8071 = fmul fast float %5070, 4.000000e+00
  %8072 = fmul fast float %8071, %8052
  %8073 = fmul fast float %8072, %8066
  %8074 = fmul fast float %5081, 4.000000e+00
  %8075 = fmul fast float %8074, %8053
  %8076 = fmul fast float %8075, %8067
  %8077 = fadd fast float %8070, %8057
  %8078 = fadd fast float %8073, %8058
  %8079 = fadd fast float %8076, %8059
  %8080 = call float @dx.op.unary.f32(i32 7, float %8077)  ; Saturate(value)
  %8081 = call float @dx.op.unary.f32(i32 7, float %8078)  ; Saturate(value)
  %8082 = call float @dx.op.unary.f32(i32 7, float %8079)  ; Saturate(value)
  br label %8083

; <label>:8083                                    ; preds = %8060, %7950
  %8084 = phi float [ %8080, %8060 ], [ %8057, %7950 ]
  %8085 = phi float [ %8081, %8060 ], [ %8058, %7950 ]
  %8086 = phi float [ %8082, %8060 ], [ %8059, %7950 ]
  %8087 = fmul fast float %7978, 9.843750e-01
  %8088 = fadd fast float %8087, 7.812500e-03
  %8089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %55, float %8088, float %5210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8090 = extractvalue %dx.types.ResRet.f32 %8089, 2
  %8091 = extractvalue %dx.types.ResRet.f32 %8089, 3
  %8092 = fmul fast float %8090, %5069
  %8093 = fmul fast float %8090, %5070
  %8094 = fmul fast float %8090, %5081
  %8095 = fadd fast float %8092, %8091
  %8096 = fadd fast float %8093, %8091
  %8097 = fadd fast float %8094, %8091
  br i1 %5220, label %8098, label %8121

; <label>:8098                                    ; preds = %8083
  %8099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %55, float %3874, float %7978, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8100 = extractvalue %dx.types.ResRet.f32 %8099, 0
  %8101 = extractvalue %dx.types.ResRet.f32 %8099, 1
  %8102 = extractvalue %dx.types.ResRet.f32 %8099, 2
  %8103 = fadd fast float %8100, -5.000000e-01
  %8104 = fadd fast float %8101, -5.000000e-01
  %8105 = fadd fast float %8102, -5.000000e-01
  %8106 = fmul fast float %5069, 4.000000e+00
  %8107 = fmul fast float %8106, %8051
  %8108 = fmul fast float %8107, %8103
  %8109 = fmul fast float %5070, 4.000000e+00
  %8110 = fmul fast float %8109, %8052
  %8111 = fmul fast float %8110, %8104
  %8112 = fmul fast float %5081, 4.000000e+00
  %8113 = fmul fast float %8112, %8053
  %8114 = fmul fast float %8113, %8105
  %8115 = fadd fast float %8108, %8095
  %8116 = fadd fast float %8111, %8096
  %8117 = fadd fast float %8114, %8097
  %8118 = call float @dx.op.unary.f32(i32 7, float %8115)  ; Saturate(value)
  %8119 = call float @dx.op.unary.f32(i32 7, float %8116)  ; Saturate(value)
  %8120 = call float @dx.op.unary.f32(i32 7, float %8117)  ; Saturate(value)
  br label %8121

; <label>:8121                                    ; preds = %8098, %8083
  %8122 = phi float [ %8118, %8098 ], [ %8095, %8083 ]
  %8123 = phi float [ %8119, %8098 ], [ %8096, %8083 ]
  %8124 = phi float [ %8120, %8098 ], [ %8097, %8083 ]
  %8125 = call float @dx.op.binary.f32(i32 35, float %8123, float %8124)  ; FMax(a,b)
  %8126 = call float @dx.op.binary.f32(i32 35, float %8122, float %8125)  ; FMax(a,b)
  %8127 = fsub fast float 1.000000e+00, %8126
  %8128 = fmul fast float %8084, %8042
  %8129 = fmul fast float %8085, %8042
  %8130 = fmul fast float %8086, %8042
  %8131 = fsub fast float 1.000000e+00, %7979
  %8132 = bitcast float %8131 to i32
  %8133 = sitofp i32 %8132 to float
  %8134 = fmul fast float %8133, 5.000000e+00
  %8135 = fadd fast float %8134, 0xC1EFBF8940000000
  %8136 = fptosi float %8135 to i32
  %8137 = bitcast i32 %8136 to float
  %8138 = fmul fast float %8137, %3875
  %8139 = fmul fast float %8127, %8138
  %8140 = fmul fast float %8139, %5762
  %8141 = fmul fast float %8139, %5763
  %8142 = fmul fast float %8139, %5764
  %8143 = fadd fast float %8140, %8128
  %8144 = fadd fast float %8141, %8129
  %8145 = fadd fast float %8142, %8130
  %8146 = fmul fast float %7967, %3871
  %8147 = fmul fast float %8146, %7985
  %8148 = fmul fast float %8147, %8127
  %8149 = fmul fast float %7968, %3871
  %8150 = fmul fast float %8149, %7985
  %8151 = fmul fast float %8150, %8127
  %8152 = fmul fast float %7969, %3871
  %8153 = fmul fast float %8152, %7985
  %8154 = fmul fast float %8153, %8127
  %8155 = fadd fast float %8148, %7600
  %8156 = fadd fast float %8151, %7601
  %8157 = fadd fast float %8154, %7602
  %8158 = fmul fast float %8147, %8143
  %8159 = fmul fast float %8150, %8144
  %8160 = fmul fast float %8153, %8145
  %8161 = fadd fast float %8158, %7597
  %8162 = fadd fast float %8159, %7598
  %8163 = fadd fast float %8160, %7599
  br label %7729

; <label>:8164                                    ; preds = %7729
  br label %8165

; <label>:8165                                    ; preds = %8164, %7563
  %8166 = phi float [ %7565, %7563 ], [ %7730, %8164 ]
  %8167 = phi float [ %7566, %7563 ], [ %7731, %8164 ]
  %8168 = phi float [ %7567, %7563 ], [ %7732, %8164 ]
  %8169 = phi float [ %7568, %7563 ], [ %7733, %8164 ]
  %8170 = phi float [ %7569, %7563 ], [ %7734, %8164 ]
  %8171 = phi float [ %7570, %7563 ], [ %7735, %8164 ]
  %8172 = add i32 %7564, 1
  %8173 = icmp ugt i32 %8172, %7560
  br i1 %8173, label %8174, label %7563

; <label>:8174                                    ; preds = %8165
  br label %8175

; <label>:8175                                    ; preds = %8174, %7513, %7503
  %8176 = phi float [ %7504, %7503 ], [ %7504, %7513 ], [ %8166, %8174 ]
  %8177 = phi float [ %7505, %7503 ], [ %7505, %7513 ], [ %8167, %8174 ]
  %8178 = phi float [ %7506, %7503 ], [ %7506, %7513 ], [ %8168, %8174 ]
  %8179 = phi float [ %7507, %7503 ], [ %7507, %7513 ], [ %8169, %8174 ]
  %8180 = phi float [ %7508, %7503 ], [ %7508, %7513 ], [ %8170, %8174 ]
  %8181 = phi float [ %7509, %7503 ], [ %7509, %7513 ], [ %8171, %8174 ]
  %8182 = fmul fast float %3871, %3871
  %8183 = fsub fast float 1.000000e+00, %8182
  %8184 = call float @dx.op.dot3.f32(i32 55, float %8183, float %8183, float %8183, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8185 = fsub fast float 1.000000e+00, %8184
  %8186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8187 = extractvalue %dx.types.CBufRet.f32 %8186, 0
  %8188 = fmul fast float %8187, %5768
  %8189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8190 = extractvalue %dx.types.CBufRet.f32 %8189, 3
  %8191 = fsub fast float 1.000000e+00, %3879
  %8192 = call float @dx.op.unary.f32(i32 7, float %8191)  ; Saturate(value)
  %8193 = fadd fast float %8181, %3877
  %8194 = fmul fast float %8193, %3879
  %8195 = fmul fast float %8192, %8190
  %8196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8197 = extractvalue %dx.types.CBufRet.f32 %8196, 3
  %8198 = fmul fast float %8179, %5075
  %8199 = fmul fast float %8180, %5076
  %8200 = fmul fast float %8181, %5077
  %8201 = fcmp fast ogt float %103, %232
  %8202 = and i1 %8201, %4282
  %8203 = or i1 %4288, %8202
  %8204 = icmp eq i32 %4281, 2
  %8205 = fcmp fast ole float %103, %232
  %8206 = and i1 %8205, %8204
  %8207 = or i1 %8206, %8203
  br i1 %8202, label %8208, label %8465

; <label>:8208                                    ; preds = %8175
  %8209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8210 = extractvalue %dx.types.CBufRet.f32 %8209, 2
  %8211 = extractvalue %dx.types.CBufRet.f32 %8209, 3
  %8212 = fmul fast float %8210, %116
  %8213 = fmul fast float %8211, %117
  %8214 = call float @dx.op.unary.f32(i32 7, float %8212)  ; Saturate(value)
  %8215 = call float @dx.op.unary.f32(i32 7, float %8213)  ; Saturate(value)
  %8216 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8214, float %8215, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8217 = extractvalue %dx.types.ResRet.f32 %8216, 0
  %8218 = extractvalue %dx.types.ResRet.f32 %8216, 1
  %8219 = extractvalue %dx.types.ResRet.f32 %8216, 2
  %8220 = extractvalue %dx.types.ResRet.f32 %8216, 3
  %8221 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %8214, float %8215, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8222 = extractvalue %dx.types.ResRet.f32 %8221, 0
  %8223 = extractvalue %dx.types.ResRet.f32 %8221, 1
  %8224 = extractvalue %dx.types.ResRet.f32 %8221, 2
  %8225 = extractvalue %dx.types.ResRet.f32 %8221, 3
  %8226 = call float @dx.op.binary.f32(i32 35, float %8218, float %8219)  ; FMax(a,b)
  %8227 = call float @dx.op.binary.f32(i32 35, float %8217, float %8226)  ; FMax(a,b)
  %8228 = call float @dx.op.binary.f32(i32 35, float %8227, float %8220)  ; FMax(a,b)
  %8229 = call float @dx.op.binary.f32(i32 36, float %8223, float %8224)  ; FMin(a,b)
  %8230 = call float @dx.op.binary.f32(i32 36, float %8222, float %8229)  ; FMin(a,b)
  %8231 = call float @dx.op.binary.f32(i32 36, float %8230, float %8225)  ; FMin(a,b)
  %8232 = fmul fast float %8228, 2.550000e+02
  %8233 = fadd fast float %8232, 0x3F70101020000000
  %8234 = fptoui float %8233 to i32
  %8235 = fmul fast float %8231, 2.550000e+02
  %8236 = fadd fast float %8235, 0x3F70101020000000
  %8237 = fptoui float %8236 to i32
  %8238 = icmp ult i32 %8234, %8237
  br i1 %8238, label %8239, label %8407

; <label>:8239                                    ; preds = %8208
  %8240 = fcmp fast ogt float %102, 9.843750e-01
  %8241 = fadd fast float %103, -4.000000e+00
  %8242 = select i1 %8240, float -4.000000e+00, float %8241
  %8243 = call float @dx.op.binary.f32(i32 35, float %8242, float 0.000000e+00)  ; FMax(a,b)
  %8244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8245 = extractvalue %dx.types.CBufRet.f32 %8244, 0
  %8246 = fadd fast float %8245, %8243
  %8247 = extractvalue %dx.types.CBufRet.f32 %8244, 2
  %8248 = fmul fast float %8246, %8247
  %8249 = call float @dx.op.unary.f32(i32 23, float %8248)  ; Log(value)
  %8250 = extractvalue %dx.types.CBufRet.f32 %8244, 3
  %8251 = fmul fast float %8250, %8249
  %8252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8253 = extractvalue %dx.types.CBufRet.f32 %8252, 2
  %8254 = fmul fast float %8251, %8253
  %8255 = call float @dx.op.unary.f32(i32 7, float %8254)  ; Saturate(value)
  %8256 = uitofp i32 %8234 to float
  %8257 = uitofp i32 %8237 to float
  %8258 = fadd fast float %8256, 5.000000e-01
  %8259 = fadd fast float %8257, 5.000000e-01
  %8260 = fmul fast float %8253, %8258
  %8261 = fmul fast float %8253, %8259
  %8262 = fadd fast float %8260, 0x3F0FFB4800000000
  %8263 = fadd fast float %8261, 0xBF0FFB4800000000
  %8264 = call float @dx.op.binary.f32(i32 35, float %8255, float %8262)  ; FMax(a,b)
  %8265 = call float @dx.op.binary.f32(i32 36, float %8264, float %8263)  ; FMin(a,b)
  %8266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8267 = extractvalue %dx.types.CBufRet.f32 %8266, 1
  %8268 = extractvalue %dx.types.CBufRet.f32 %8266, 2
  %8269 = extractvalue %dx.types.CBufRet.f32 %8266, 0
  %8270 = fmul fast float %8267, %8265
  %8271 = fadd fast float %8269, %8270
  %8272 = fadd fast float %8269, %8268
  %8273 = fsub fast float %8267, %8268
  %8274 = fadd fast float %8273, %8269
  %8275 = call float @dx.op.binary.f32(i32 35, float %8271, float %8272)  ; FMax(a,b)
  %8276 = call float @dx.op.binary.f32(i32 36, float %8275, float %8274)  ; FMin(a,b)
  %8277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %8214, float %8215, float %8276, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8278 = extractvalue %dx.types.ResRet.f32 %8277, 0
  %8279 = extractvalue %dx.types.ResRet.f32 %8277, 1
  %8280 = extractvalue %dx.types.ResRet.f32 %8277, 2
  %8281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8282 = extractvalue %dx.types.CBufRet.i32 %8281, 0
  %8283 = extractvalue %dx.types.CBufRet.i32 %8281, 1
  %8284 = uitofp i32 %8282 to float
  %8285 = uitofp i32 %8283 to float
  %8286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8287 = extractvalue %dx.types.CBufRet.f32 %8286, 0
  %8288 = extractvalue %dx.types.CBufRet.f32 %8286, 1
  %8289 = fmul fast float %8284, %8214
  %8290 = fmul fast float %8285, %8215
  %8291 = fadd fast float %8289, -5.000000e-01
  %8292 = fadd fast float %8290, -5.000000e-01
  %8293 = call float @dx.op.unary.f32(i32 22, float %8291)  ; Frc(value)
  %8294 = call float @dx.op.unary.f32(i32 22, float %8292)  ; Frc(value)
  %8295 = fmul fast float %8293, %8293
  %8296 = fmul fast float %8295, %8293
  %8297 = fsub fast float 3.000000e+00, %8293
  %8298 = fmul fast float %8295, %8297
  %8299 = fmul fast float %8293, 3.000000e+00
  %8300 = fmul fast float %8296, 3.000000e+00
  %8301 = fmul fast float %8295, 6.000000e+00
  %8302 = fsub fast float %8300, %8301
  %8303 = fadd fast float %8302, 4.000000e+00
  %8304 = fmul fast float %8303, 0x3FC5555560000000
  %8305 = fmul fast float %8296, -3.000000e+00
  %8306 = fadd fast float %8295, %8293
  %8307 = fmul fast float %8306, 3.000000e+00
  %8308 = fadd fast float %8305, 1.000000e+00
  %8309 = fadd fast float %8308, %8307
  %8310 = fmul fast float %8296, 0x3FC5555560000000
  %8311 = fmul fast float %8294, %8294
  %8312 = fmul fast float %8311, %8294
  %8313 = fsub fast float 3.000000e+00, %8294
  %8314 = fmul fast float %8311, %8313
  %8315 = fmul fast float %8294, 3.000000e+00
  %8316 = fmul fast float %8312, 3.000000e+00
  %8317 = fmul fast float %8311, 6.000000e+00
  %8318 = fsub fast float %8316, %8317
  %8319 = fadd fast float %8318, 4.000000e+00
  %8320 = fmul fast float %8319, 0x3FC5555560000000
  %8321 = fmul fast float %8312, -3.000000e+00
  %8322 = fadd fast float %8311, %8294
  %8323 = fmul fast float %8322, 3.000000e+00
  %8324 = fadd fast float %8321, 1.000000e+00
  %8325 = fadd fast float %8324, %8323
  %8326 = fmul fast float %8312, 0x3FC5555560000000
  %8327 = fadd fast float %8293, 1.000000e+00
  %8328 = fsub fast float 1.000000e+00, %8299
  %8329 = fadd fast float %8328, %8298
  %8330 = fadd fast float %8329, %8303
  %8331 = fmul fast float %8330, 0x3FC5555560000000
  %8332 = fdiv fast float %8304, %8331
  %8333 = fsub fast float %8327, %8332
  %8334 = fsub fast float 1.000000e+00, %8293
  %8335 = fadd fast float %8309, %8296
  %8336 = fmul fast float %8335, 0x3FC5555560000000
  %8337 = fdiv fast float %8310, %8336
  %8338 = fadd fast float %8334, %8337
  %8339 = fadd fast float %8294, 1.000000e+00
  %8340 = fsub fast float 1.000000e+00, %8315
  %8341 = fadd fast float %8340, %8314
  %8342 = fadd fast float %8341, %8319
  %8343 = fmul fast float %8342, 0x3FC5555560000000
  %8344 = fdiv fast float %8320, %8343
  %8345 = fsub fast float %8339, %8344
  %8346 = fsub fast float 1.000000e+00, %8294
  %8347 = fadd fast float %8325, %8312
  %8348 = fmul fast float %8347, 0x3FC5555560000000
  %8349 = fdiv fast float %8326, %8348
  %8350 = fadd fast float %8349, %8346
  %8351 = fmul fast float %8333, %8287
  %8352 = fsub fast float %8214, %8351
  %8353 = fmul fast float %8338, %8287
  %8354 = fadd fast float %8353, %8214
  %8355 = fmul fast float %8350, %8288
  %8356 = fadd fast float %8355, %8215
  %8357 = fmul fast float %8345, %8288
  %8358 = fsub fast float %8215, %8357
  %8359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8352, float %8358, float %8276, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8360 = extractvalue %dx.types.ResRet.f32 %8359, 0
  %8361 = extractvalue %dx.types.ResRet.f32 %8359, 1
  %8362 = extractvalue %dx.types.ResRet.f32 %8359, 2
  %8363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8354, float %8358, float %8276, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8364 = extractvalue %dx.types.ResRet.f32 %8363, 0
  %8365 = extractvalue %dx.types.ResRet.f32 %8363, 1
  %8366 = extractvalue %dx.types.ResRet.f32 %8363, 2
  %8367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8352, float %8356, float %8276, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8368 = extractvalue %dx.types.ResRet.f32 %8367, 0
  %8369 = extractvalue %dx.types.ResRet.f32 %8367, 1
  %8370 = extractvalue %dx.types.ResRet.f32 %8367, 2
  %8371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %8354, float %8356, float %8276, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8372 = extractvalue %dx.types.ResRet.f32 %8371, 0
  %8373 = extractvalue %dx.types.ResRet.f32 %8371, 1
  %8374 = extractvalue %dx.types.ResRet.f32 %8371, 2
  %8375 = fsub fast float %8368, %8360
  %8376 = fsub fast float %8369, %8361
  %8377 = fsub fast float %8370, %8362
  %8378 = fmul fast float %8375, %8348
  %8379 = fmul fast float %8376, %8348
  %8380 = fmul fast float %8377, %8348
  %8381 = fadd fast float %8378, %8360
  %8382 = fadd fast float %8379, %8361
  %8383 = fadd fast float %8380, %8362
  %8384 = fsub fast float %8372, %8364
  %8385 = fsub fast float %8373, %8365
  %8386 = fsub fast float %8374, %8366
  %8387 = fmul fast float %8384, %8348
  %8388 = fmul fast float %8385, %8348
  %8389 = fmul fast float %8386, %8348
  %8390 = fsub fast float %8364, %8381
  %8391 = fadd fast float %8390, %8387
  %8392 = fsub fast float %8365, %8382
  %8393 = fadd fast float %8392, %8388
  %8394 = fsub fast float %8366, %8383
  %8395 = fadd fast float %8394, %8389
  %8396 = fmul fast float %8391, %8336
  %8397 = fmul fast float %8393, %8336
  %8398 = fmul fast float %8395, %8336
  %8399 = fadd fast float %8396, %8381
  %8400 = fadd fast float %8397, %8382
  %8401 = fadd fast float %8398, %8383
  %8402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8403 = extractvalue %dx.types.CBufRet.f32 %8402, 1
  %8404 = fmul fast float %8399, %8403
  %8405 = fmul fast float %8400, %8403
  %8406 = fmul fast float %8401, %8403
  br label %8407

; <label>:8407                                    ; preds = %8239, %8208
  %8408 = phi float [ %8278, %8239 ], [ 1.000000e+00, %8208 ]
  %8409 = phi float [ %8279, %8239 ], [ 1.000000e+00, %8208 ]
  %8410 = phi float [ %8280, %8239 ], [ 1.000000e+00, %8208 ]
  %8411 = phi float [ %8404, %8239 ], [ 0.000000e+00, %8208 ]
  %8412 = phi float [ %8405, %8239 ], [ 0.000000e+00, %8208 ]
  %8413 = phi float [ %8406, %8239 ], [ 0.000000e+00, %8208 ]
  %8414 = fmul fast float %8411, %8185
  %8415 = fmul fast float %8412, %8185
  %8416 = fmul fast float %8413, %8185
  %8417 = call float @dx.op.dot3.f32(i32 55, float %8408, float %8409, float %8410, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8418 = call float @dx.op.dot3.f32(i32 55, float %8414, float %8415, float %8416, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8419 = select i1 %269, float %8417, float %8408
  %8420 = select i1 %269, float %8417, float %8409
  %8421 = select i1 %269, float 1.000000e+00, float %8410
  %8422 = select i1 %269, float %8418, float %8414
  %8423 = select i1 %269, float 0.000000e+00, float %8415
  %8424 = select i1 %269, float 0.000000e+00, float %8416
  %8425 = fmul fast float %8419, %8198
  %8426 = fmul fast float %8420, %8199
  %8427 = fmul fast float %8421, %8200
  %8428 = fadd fast float %8425, %8422
  %8429 = fadd fast float %8426, %8423
  %8430 = fadd fast float %8424, %8427
  %8431 = fmul fast float %8419, %8176
  %8432 = fmul fast float %8420, %8177
  %8433 = fmul fast float %8421, %8178
  %8434 = fmul fast float %152, %8210
  %8435 = fmul fast float %154, %8211
  %8436 = fsub fast float 1.000000e+00, %8434
  %8437 = fsub fast float 1.000000e+00, %8435
  %8438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8439 = extractvalue %dx.types.CBufRet.f32 %8438, 0
  %8440 = extractvalue %dx.types.CBufRet.f32 %8438, 1
  %8441 = extractvalue %dx.types.CBufRet.f32 %8438, 2
  %8442 = fmul fast float %8436, %8439
  %8443 = fmul fast float %8436, %8440
  %8444 = fmul fast float %8436, %8441
  %8445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8446 = extractvalue %dx.types.CBufRet.f32 %8445, 0
  %8447 = extractvalue %dx.types.CBufRet.f32 %8445, 1
  %8448 = extractvalue %dx.types.CBufRet.f32 %8445, 2
  %8449 = fmul fast float %8437, %8446
  %8450 = fmul fast float %8437, %8447
  %8451 = fmul fast float %8437, %8448
  %8452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8453 = extractvalue %dx.types.CBufRet.f32 %8452, 0
  %8454 = extractvalue %dx.types.CBufRet.f32 %8452, 1
  %8455 = extractvalue %dx.types.CBufRet.f32 %8452, 2
  %8456 = fadd fast float %8449, %8453
  %8457 = fadd fast float %8456, %8442
  %8458 = fadd fast float %8450, %8454
  %8459 = fadd fast float %8458, %8443
  %8460 = fadd fast float %8451, %8455
  %8461 = fadd fast float %8460, %8444
  %8462 = fmul fast float %8457, %232
  %8463 = fmul fast float %8459, %232
  %8464 = fmul fast float %8461, %232
  br label %8465

; <label>:8465                                    ; preds = %8407, %8175
  %8466 = phi float [ %8462, %8407 ], [ %203, %8175 ]
  %8467 = phi float [ %8463, %8407 ], [ %204, %8175 ]
  %8468 = phi float [ %8464, %8407 ], [ %205, %8175 ]
  %8469 = phi float [ %232, %8407 ], [ %103, %8175 ]
  %8470 = phi float [ %8428, %8407 ], [ %8198, %8175 ]
  %8471 = phi float [ %8429, %8407 ], [ %8199, %8175 ]
  %8472 = phi float [ %8430, %8407 ], [ %8200, %8175 ]
  %8473 = phi float [ %8431, %8407 ], [ %8176, %8175 ]
  %8474 = phi float [ %8432, %8407 ], [ %8177, %8175 ]
  %8475 = phi float [ %8433, %8407 ], [ %8178, %8175 ]
  %8476 = phi float [ %8408, %8407 ], [ 1.000000e+00, %8175 ]
  br i1 %8207, label %9631, label %8477

; <label>:8477                                    ; preds = %8465
  %8478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8479 = extractvalue %dx.types.CBufRet.f32 %8478, 0
  %8480 = extractvalue %dx.types.CBufRet.f32 %8478, 1
  %8481 = extractvalue %dx.types.CBufRet.f32 %8478, 2
  %8482 = extractvalue %dx.types.CBufRet.f32 %8478, 3
  %8483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8484 = extractvalue %dx.types.CBufRet.f32 %8483, 0
  %8485 = extractvalue %dx.types.CBufRet.f32 %8483, 1
  %8486 = extractvalue %dx.types.CBufRet.f32 %8483, 2
  %8487 = extractvalue %dx.types.CBufRet.f32 %8483, 3
  %8488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8489 = extractvalue %dx.types.CBufRet.f32 %8488, 0
  %8490 = extractvalue %dx.types.CBufRet.f32 %8488, 1
  %8491 = extractvalue %dx.types.CBufRet.f32 %8488, 2
  %8492 = extractvalue %dx.types.CBufRet.f32 %8488, 3
  %8493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8494 = extractvalue %dx.types.CBufRet.f32 %8493, 0
  %8495 = extractvalue %dx.types.CBufRet.f32 %8493, 1
  %8496 = extractvalue %dx.types.CBufRet.f32 %8493, 2
  %8497 = extractvalue %dx.types.CBufRet.f32 %8493, 3
  %8498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8499 = extractvalue %dx.types.CBufRet.f32 %8498, 3
  %8500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8501 = extractvalue %dx.types.CBufRet.f32 %8500, 3
  %8502 = extractvalue %dx.types.CBufRet.f32 %8500, 0
  %8503 = extractvalue %dx.types.CBufRet.f32 %8500, 1
  %8504 = extractvalue %dx.types.CBufRet.f32 %8500, 2
  %8505 = fcmp fast olt float %8504, -5.000000e-01
  %8506 = call float @dx.op.dot3.f32(i32 55, float %8466, float %8467, float %8468, float %8466, float %8467, float %8468)  ; Dot3(ax,ay,az,bx,by,bz)
  %8507 = call float @dx.op.unary.f32(i32 25, float %8506)  ; Rsqrt(value)
  %8508 = fmul fast float %8507, %8506
  %8509 = fmul fast float %8507, %8466
  %8510 = fmul fast float %8507, %8467
  %8511 = fmul fast float %8507, %8468
  %8512 = fadd fast float %8508, %8482
  %8513 = call float @dx.op.dot3.f32(i32 55, float %8509, float %8510, float %8511, float %8479, float %8480, float %8481)  ; Dot3(ax,ay,az,bx,by,bz)
  %8514 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8515 = extractvalue %dx.types.CBufRet.i32 %8514, 1
  %8516 = and i32 %8515, 1
  %8517 = icmp ne i32 %8516, 0
  %8518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8519 = extractvalue %dx.types.CBufRet.f32 %8518, 2
  %8520 = fcmp fast ogt float %8519, 0.000000e+00
  %8521 = and i1 %8517, %8520
  br i1 %8521, label %8522, label %8928, !dx.controlflow.hints !138

; <label>:8522                                    ; preds = %8477
  %8523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8524 = extractvalue %dx.types.CBufRet.f32 %8523, 3
  %8525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8526 = extractvalue %dx.types.CBufRet.f32 %8525, 2
  %8527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8528 = extractvalue %dx.types.CBufRet.f32 %8527, 2
  %8529 = fsub fast float %8526, %8528
  %8530 = and i32 %8515, 2
  %8531 = extractvalue %dx.types.CBufRet.i32 %8514, 0
  %8532 = call i32 @dx.op.binary.i32(i32 40, i32 %8531, i32 3)  ; UMin(a,b)
  %8533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8534 = extractvalue %dx.types.CBufRet.f32 %8533, 0
  %8535 = extractvalue %dx.types.CBufRet.f32 %8533, 1
  %8536 = extractvalue %dx.types.CBufRet.f32 %8527, 0
  %8537 = extractvalue %dx.types.CBufRet.f32 %8527, 1
  %8538 = fsub fast float %8534, %8536
  %8539 = fsub fast float %8535, %8537
  %8540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8541 = extractvalue %dx.types.CBufRet.f32 %8540, 0
  %8542 = fcmp fast ogt float %8541, 0.000000e+00
  %8543 = fsub fast float -0.000000e+00, %8538
  %8544 = fsub fast float -0.000000e+00, %8539
  %8545 = call float @dx.op.dot2.f32(i32 54, float %8509, float %8510, float %8509, float %8510)  ; Dot2(ax,ay,bx,by)
  %8546 = call float @dx.op.dot2.f32(i32 54, float %8509, float %8510, float %8543, float %8544)  ; Dot2(ax,ay,bx,by)
  %8547 = fmul fast float %8546, 2.000000e+00
  %8548 = call float @dx.op.dot2.f32(i32 54, float %8543, float %8544, float %8543, float %8544)  ; Dot2(ax,ay,bx,by)
  %8549 = fmul fast float %8541, %8541
  %8550 = fsub fast float %8548, %8549
  %8551 = fmul fast float %8547, %8547
  %8552 = fmul fast float %8545, 4.000000e+00
  %8553 = fmul fast float %8552, %8550
  %8554 = fsub fast float %8551, %8553
  %8555 = fcmp fast ogt float %8554, 0.000000e+00
  br i1 %8555, label %8556, label %8571

; <label>:8556                                    ; preds = %8522
  %8557 = fcmp fast ogt float %8547, 0.000000e+00
  %8558 = call float @dx.op.unary.f32(i32 24, float %8554)  ; Sqrt(value)
  %8559 = fsub fast float -0.000000e+00, %8558
  %8560 = select i1 %8557, float %8558, float %8559
  %8561 = fadd fast float %8560, %8547
  %8562 = fmul float %8561, -5.000000e-01
  %8563 = fdiv fast float %8562, %8545
  %8564 = call float @dx.op.binary.f32(i32 35, float %8563, float 0.000000e+00)  ; FMax(a,b)
  %8565 = call float @dx.op.binary.f32(i32 36, float %8508, float %8564)  ; FMin(a,b)
  %8566 = fdiv fast float %8550, %8562
  %8567 = call float @dx.op.binary.f32(i32 35, float %8566, float 0.000000e+00)  ; FMax(a,b)
  %8568 = call float @dx.op.binary.f32(i32 36, float %8508, float %8567)  ; FMin(a,b)
  %8569 = call float @dx.op.binary.f32(i32 36, float %8565, float %8568)  ; FMin(a,b)
  %8570 = call float @dx.op.binary.f32(i32 35, float %8565, float %8568)  ; FMax(a,b)
  br label %8571

; <label>:8571                                    ; preds = %8556, %8522
  %8572 = phi float [ %8570, %8556 ], [ -1.000000e+00, %8522 ]
  %8573 = phi float [ %8569, %8556 ], [ -1.000000e+00, %8522 ]
  %8574 = phi i1 [ true, %8556 ], [ false, %8522 ]
  %8575 = and i1 %8542, %8574
  br i1 %8575, label %8576, label %8578

; <label>:8576                                    ; preds = %8571
  %8577 = fcmp fast oeq float %8573, %8572
  br i1 %8577, label %8881, label %8579

; <label>:8578                                    ; preds = %8571
  br i1 %8542, label %8881, label %8579

; <label>:8579                                    ; preds = %8578, %8576
  %8580 = phi float [ %8508, %8578 ], [ %8572, %8576 ]
  %8581 = phi float [ 0.000000e+00, %8578 ], [ %8573, %8576 ]
  %8582 = icmp ne i32 %8530, 0
  %8583 = fmul fast float %8580, %8511
  %8584 = fadd fast float %8583, %8524
  %8585 = fmul fast float %8584, %8580
  %8586 = select i1 %8582, float 0.000000e+00, float %8585
  %8587 = fcmp fast oeq float %8511, 0.000000e+00
  %8588 = fdiv fast float %8529, %8511
  %8589 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8588)  ; FMax(a,b)
  %8590 = select i1 %8587, float %8580, float %8589
  %8591 = call float @dx.op.binary.f32(i32 36, float %8580, float %8590)  ; FMin(a,b)
  %8592 = fcmp fast ogt float %8511, 0.000000e+00
  %8593 = fcmp fast olt float %8529, 0.000000e+00
  br i1 %8592, label %8594, label %8651

; <label>:8594                                    ; preds = %8579
  %8595 = icmp eq i32 %8530, 0
  br i1 %8593, label %8596, label %8640

; <label>:8596                                    ; preds = %8594
  %8597 = select i1 %8595, float %8580, float 0.000000e+00
  %8598 = fsub fast float -0.000000e+00, %8597
  %8599 = call float @dx.op.unary.f32(i32 6, float %8598)  ; FAbs(value)
  %8600 = fmul fast float %8597, %8511
  %8601 = fadd fast float %8600, %8524
  %8602 = fmul fast float %8599, %8601
  %8603 = fsub fast float %8586, %8602
  %8604 = fsub fast float %8580, %8599
  %8605 = select i1 %8595, float %8604, float 0.000000e+00
  %8606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8607 = extractvalue %dx.types.CBufRet.f32 %8606, 0
  %8608 = extractvalue %dx.types.CBufRet.f32 %8606, 1
  %8609 = extractvalue %dx.types.CBufRet.f32 %8606, 2
  %8610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8611 = extractvalue %dx.types.CBufRet.f32 %8610, 0
  %8612 = extractvalue %dx.types.CBufRet.f32 %8610, 1
  %8613 = extractvalue %dx.types.CBufRet.f32 %8610, 2
  %8614 = extractvalue %dx.types.CBufRet.f32 %8610, 3
  %8615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8616 = extractvalue %dx.types.CBufRet.f32 %8615, 3
  %8617 = call float @dx.op.binary.f32(i32 36, float %8603, float %8616)  ; FMin(a,b)
  %8618 = fmul fast float %8614, %8605
  %8619 = call float @dx.op.unary.f32(i32 7, float %8618)  ; Saturate(value)
  %8620 = fsub fast float %8611, %8607
  %8621 = fsub fast float %8612, %8608
  %8622 = fsub fast float %8613, %8609
  %8623 = fmul fast float %8619, %8620
  %8624 = fmul fast float %8619, %8621
  %8625 = fmul fast float %8619, %8622
  %8626 = fadd fast float %8623, %8607
  %8627 = fadd fast float %8624, %8608
  %8628 = fadd fast float %8625, %8609
  %8629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8630 = extractvalue %dx.types.CBufRet.f32 %8629, 0
  %8631 = extractvalue %dx.types.CBufRet.f32 %8629, 1
  %8632 = fadd fast float %8631, %8630
  %8633 = call float @dx.op.unary.f32(i32 7, float %8632)  ; Saturate(value)
  %8634 = extractvalue %dx.types.CBufRet.f32 %8629, 2
  %8635 = extractvalue %dx.types.CBufRet.f32 %8629, 3
  %8636 = fadd fast float %8635, %8634
  %8637 = call float @dx.op.unary.f32(i32 7, float %8636)  ; Saturate(value)
  %8638 = fmul fast float %8633, %8617
  %8639 = fmul fast float %8638, %8637
  br label %8881

; <label>:8640                                    ; preds = %8594
  br i1 %8595, label %8641, label %8662

; <label>:8641                                    ; preds = %8640
  %8642 = call float @dx.op.binary.f32(i32 36, float %8591, float %8581)  ; FMin(a,b)
  %8643 = fsub fast float %8591, %8642
  %8644 = fsub fast float %8643, %8580
  %8645 = call float @dx.op.unary.f32(i32 6, float %8644)  ; FAbs(value)
  %8646 = fadd fast float %8643, %8580
  %8647 = fmul fast float %8646, %8511
  %8648 = fadd fast float %8647, %8524
  %8649 = fmul fast float %8648, %8645
  %8650 = fsub fast float %8586, %8649
  br label %8662

; <label>:8651                                    ; preds = %8579
  br i1 %8593, label %8652, label %8662

; <label>:8652                                    ; preds = %8651
  %8653 = call float @dx.op.binary.f32(i32 35, float %8581, float %8591)  ; FMax(a,b)
  %8654 = icmp eq i32 %8530, 0
  %8655 = select i1 %8654, float %8591, float 0.000000e+00
  %8656 = fsub fast float -0.000000e+00, %8655
  %8657 = call float @dx.op.unary.f32(i32 6, float %8656)  ; FAbs(value)
  %8658 = fmul fast float %8655, %8511
  %8659 = fadd fast float %8658, %8524
  %8660 = fmul fast float %8657, %8659
  %8661 = fsub fast float %8586, %8660
  br label %8662

; <label>:8662                                    ; preds = %8652, %8651, %8641, %8640
  %8663 = phi float [ %8581, %8640 ], [ %8581, %8641 ], [ %8653, %8652 ], [ %8581, %8651 ]
  %8664 = phi float [ 0.000000e+00, %8640 ], [ %8645, %8641 ], [ %8657, %8652 ], [ 0.000000e+00, %8651 ]
  %8665 = phi float [ %8586, %8640 ], [ %8650, %8641 ], [ %8661, %8652 ], [ %8586, %8651 ]
  %8666 = phi float [ %8591, %8640 ], [ %8591, %8641 ], [ %8580, %8652 ], [ %8580, %8651 ]
  %8667 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 0
  store float -1.000000e+00, float* %8667, align 4, !tbaa !124, !noalias !139
  %8668 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 1
  store float -1.000000e+00, float* %8668, align 4, !tbaa !124, !noalias !139
  %8669 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 2
  store float -1.000000e+00, float* %8669, align 4, !tbaa !124, !noalias !139
  %8670 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 0
  store float -1.000000e+00, float* %8670, align 4, !tbaa !124, !noalias !139
  %8671 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 1
  store float -1.000000e+00, float* %8671, align 4, !tbaa !124, !noalias !139
  %8672 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 2
  store float -1.000000e+00, float* %8672, align 4, !tbaa !124, !noalias !139
  %8673 = icmp sgt i32 %8532, 0
  br i1 %8673, label %8674, label %8735

; <label>:8674                                    ; preds = %8662
  br label %8675

; <label>:8675                                    ; preds = %8724, %8674
  %8676 = phi i32 [ %8725, %8724 ], [ 0, %8674 ]
  %8677 = phi i32 [ %8726, %8724 ], [ 0, %8674 ]
  %8678 = add nuw i32 %8677, 171
  %8679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %8678)  ; CBufferLoadLegacy(handle,regIndex)
  %8680 = extractvalue %dx.types.CBufRet.f32 %8679, 0
  %8681 = extractvalue %dx.types.CBufRet.f32 %8679, 1
  %8682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8683 = extractvalue %dx.types.CBufRet.f32 %8682, 0
  %8684 = extractvalue %dx.types.CBufRet.f32 %8682, 1
  %8685 = fsub fast float %8680, %8683
  %8686 = fsub fast float %8681, %8684
  %8687 = extractvalue %dx.types.CBufRet.f32 %8679, 2
  %8688 = fsub fast float -0.000000e+00, %8685
  %8689 = fsub fast float -0.000000e+00, %8686
  %8690 = call float @dx.op.dot2.f32(i32 54, float %8509, float %8510, float %8688, float %8689)  ; Dot2(ax,ay,bx,by)
  %8691 = fmul fast float %8690, 2.000000e+00
  %8692 = call float @dx.op.dot2.f32(i32 54, float %8688, float %8689, float %8688, float %8689)  ; Dot2(ax,ay,bx,by)
  %8693 = fmul fast float %8687, %8687
  %8694 = fsub fast float %8692, %8693
  %8695 = fmul fast float %8691, %8691
  %8696 = fmul fast float %8552, %8694
  %8697 = fsub fast float %8695, %8696
  %8698 = fcmp fast ogt float %8697, 0.000000e+00
  br i1 %8698, label %8699, label %8714

; <label>:8699                                    ; preds = %8675
  %8700 = fcmp fast ogt float %8691, 0.000000e+00
  %8701 = call float @dx.op.unary.f32(i32 24, float %8697)  ; Sqrt(value)
  %8702 = fsub fast float -0.000000e+00, %8701
  %8703 = select i1 %8700, float %8701, float %8702
  %8704 = fadd fast float %8703, %8691
  %8705 = fmul float %8704, -5.000000e-01
  %8706 = fdiv fast float %8705, %8545
  %8707 = call float @dx.op.binary.f32(i32 35, float %8706, float 0.000000e+00)  ; FMax(a,b)
  %8708 = call float @dx.op.binary.f32(i32 36, float %8580, float %8707)  ; FMin(a,b)
  %8709 = fdiv fast float %8694, %8705
  %8710 = call float @dx.op.binary.f32(i32 35, float %8709, float 0.000000e+00)  ; FMax(a,b)
  %8711 = call float @dx.op.binary.f32(i32 36, float %8580, float %8710)  ; FMin(a,b)
  %8712 = call float @dx.op.binary.f32(i32 36, float %8708, float %8711)  ; FMin(a,b)
  %8713 = call float @dx.op.binary.f32(i32 35, float %8708, float %8711)  ; FMax(a,b)
  br label %8714

; <label>:8714                                    ; preds = %8699, %8675
  %8715 = phi float [ %8713, %8699 ], [ -1.000000e+00, %8675 ]
  %8716 = phi float [ %8712, %8699 ], [ -1.000000e+00, %8675 ]
  %8717 = phi i1 [ true, %8699 ], [ false, %8675 ]
  br i1 %8717, label %8718, label %8724

; <label>:8718                                    ; preds = %8714
  %8719 = call float @dx.op.binary.f32(i32 35, float %8663, float %8716)  ; FMax(a,b)
  %8720 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8677
  store float %8719, float* %8720, align 4, !tbaa !124, !noalias !139
  %8721 = call float @dx.op.binary.f32(i32 35, float %8663, float %8715)  ; FMax(a,b)
  %8722 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8677
  store float %8721, float* %8722, align 4, !tbaa !124, !noalias !139
  %8723 = add nsw i32 %8676, 1
  br label %8724

; <label>:8724                                    ; preds = %8718, %8714
  %8725 = phi i32 [ %8723, %8718 ], [ %8676, %8714 ]
  %8726 = add nuw nsw i32 %8677, 1
  %8727 = icmp eq i32 %8726, %8532
  br i1 %8727, label %8728, label %8675

; <label>:8728                                    ; preds = %8724
  %8729 = load float, float* %8669, align 4, !tbaa !124, !alias.scope !155, !noalias !158
  %8730 = load float, float* %8668, align 4, !tbaa !124, !alias.scope !161, !noalias !162
  %8731 = load float, float* %8667, align 4, !tbaa !124, !alias.scope !163, !noalias !164
  %8732 = load float, float* %8672, align 4, !tbaa !124, !alias.scope !165, !noalias !168
  %8733 = load float, float* %8671, align 4, !tbaa !124, !alias.scope !171, !noalias !172
  %8734 = load float, float* %8670, align 4, !tbaa !124, !alias.scope !173, !noalias !174
  br label %8735

; <label>:8735                                    ; preds = %8728, %8662
  %8736 = phi float [ -1.000000e+00, %8662 ], [ %8734, %8728 ]
  %8737 = phi float [ -1.000000e+00, %8662 ], [ %8733, %8728 ]
  %8738 = phi float [ -1.000000e+00, %8662 ], [ %8732, %8728 ]
  %8739 = phi float [ -1.000000e+00, %8662 ], [ %8731, %8728 ]
  %8740 = phi float [ -1.000000e+00, %8662 ], [ %8730, %8728 ]
  %8741 = phi float [ -1.000000e+00, %8662 ], [ %8729, %8728 ]
  %8742 = phi i32 [ 0, %8662 ], [ %8725, %8728 ]
  %8743 = call float @dx.op.binary.f32(i32 36, float %8740, float %8741)  ; FMin(a,b)
  %8744 = call float @dx.op.binary.f32(i32 36, float %8739, float %8743)  ; FMin(a,b)
  %8745 = call float @dx.op.binary.f32(i32 35, float %8739, float %8740)  ; FMax(a,b)
  %8746 = call float @dx.op.binary.f32(i32 36, float %8745, float %8741)  ; FMin(a,b)
  %8747 = call float @dx.op.binary.f32(i32 36, float %8739, float %8740)  ; FMin(a,b)
  %8748 = call float @dx.op.binary.f32(i32 35, float %8747, float %8746)  ; FMax(a,b)
  %8749 = call float @dx.op.binary.f32(i32 35, float %8740, float %8741)  ; FMax(a,b)
  %8750 = call float @dx.op.binary.f32(i32 35, float %8739, float %8749)  ; FMax(a,b)
  store float %8744, float* %8667, align 4, !tbaa !124, !alias.scope !163, !noalias !164
  store float %8748, float* %8668, align 4, !tbaa !124, !alias.scope !161, !noalias !162
  store float %8750, float* %8669, align 4, !tbaa !124, !alias.scope !155, !noalias !158
  %8751 = call float @dx.op.binary.f32(i32 36, float %8737, float %8738)  ; FMin(a,b)
  %8752 = call float @dx.op.binary.f32(i32 36, float %8736, float %8751)  ; FMin(a,b)
  %8753 = call float @dx.op.binary.f32(i32 35, float %8736, float %8737)  ; FMax(a,b)
  %8754 = call float @dx.op.binary.f32(i32 36, float %8753, float %8738)  ; FMin(a,b)
  %8755 = call float @dx.op.binary.f32(i32 36, float %8736, float %8737)  ; FMin(a,b)
  %8756 = call float @dx.op.binary.f32(i32 35, float %8755, float %8754)  ; FMax(a,b)
  %8757 = call float @dx.op.binary.f32(i32 35, float %8737, float %8738)  ; FMax(a,b)
  %8758 = call float @dx.op.binary.f32(i32 35, float %8736, float %8757)  ; FMax(a,b)
  store float %8752, float* %8670, align 4, !tbaa !124, !alias.scope !173, !noalias !174
  store float %8756, float* %8671, align 4, !tbaa !124, !alias.scope !171, !noalias !172
  store float %8758, float* %8672, align 4, !tbaa !124, !alias.scope !165, !noalias !168
  %8759 = sub nsw i32 3, %8742
  %8760 = icmp sgt i32 %8759, 2
  br i1 %8760, label %8761, label %8799

; <label>:8761                                    ; preds = %8735
  %8762 = icmp eq i32 %8530, 0
  %8763 = fsub fast float %8580, %8664
  %8764 = select i1 %8762, float %8763, float %8664
  %8765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8766 = extractvalue %dx.types.CBufRet.f32 %8765, 0
  %8767 = extractvalue %dx.types.CBufRet.f32 %8765, 1
  %8768 = extractvalue %dx.types.CBufRet.f32 %8765, 2
  %8769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8770 = extractvalue %dx.types.CBufRet.f32 %8769, 0
  %8771 = extractvalue %dx.types.CBufRet.f32 %8769, 1
  %8772 = extractvalue %dx.types.CBufRet.f32 %8769, 2
  %8773 = extractvalue %dx.types.CBufRet.f32 %8769, 3
  %8774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8775 = extractvalue %dx.types.CBufRet.f32 %8774, 3
  %8776 = call float @dx.op.binary.f32(i32 36, float %8665, float %8775)  ; FMin(a,b)
  %8777 = fmul fast float %8773, %8764
  %8778 = call float @dx.op.unary.f32(i32 7, float %8777)  ; Saturate(value)
  %8779 = fsub fast float %8770, %8766
  %8780 = fsub fast float %8771, %8767
  %8781 = fsub fast float %8772, %8768
  %8782 = fmul fast float %8778, %8779
  %8783 = fmul fast float %8778, %8780
  %8784 = fmul fast float %8778, %8781
  %8785 = fadd fast float %8782, %8766
  %8786 = fadd fast float %8783, %8767
  %8787 = fadd fast float %8784, %8768
  %8788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8789 = extractvalue %dx.types.CBufRet.f32 %8788, 0
  %8790 = extractvalue %dx.types.CBufRet.f32 %8788, 1
  %8791 = fadd fast float %8790, %8789
  %8792 = call float @dx.op.unary.f32(i32 7, float %8791)  ; Saturate(value)
  %8793 = extractvalue %dx.types.CBufRet.f32 %8788, 2
  %8794 = extractvalue %dx.types.CBufRet.f32 %8788, 3
  %8795 = fadd fast float %8794, %8793
  %8796 = call float @dx.op.unary.f32(i32 7, float %8795)  ; Saturate(value)
  %8797 = fmul fast float %8792, %8776
  %8798 = fmul fast float %8797, %8796
  br label %8881

; <label>:8799                                    ; preds = %8735
  %8800 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8759
  %8801 = load float, float* %8800, align 4, !tbaa !124, !noalias !139
  %8802 = fcmp fast olt float %8801, %8666
  %8803 = icmp sgt i32 %8742, 0
  %8804 = and i1 %8803, %8802
  br i1 %8804, label %8805, label %8842

; <label>:8805                                    ; preds = %8799
  br label %8806

; <label>:8806                                    ; preds = %8835, %8805
  %8807 = phi float [ %8836, %8835 ], [ %8664, %8805 ]
  %8808 = phi float [ %8837, %8835 ], [ %8665, %8805 ]
  %8809 = phi float [ %8817, %8835 ], [ %8801, %8805 ]
  %8810 = phi i32 [ %8814, %8835 ], [ %8759, %8805 ]
  %8811 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8810
  %8812 = load float, float* %8811, align 4, !tbaa !124, !noalias !139
  %8813 = icmp slt i32 %8810, 2
  %8814 = add nsw i32 %8810, 1
  %8815 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8814
  %8816 = load float, float* %8815, align 4, !tbaa !124, !noalias !139
  %8817 = select i1 %8813, float %8816, float %8580
  %8818 = call float @dx.op.binary.f32(i32 36, float %8817, float %8812)  ; FMin(a,b)
  %8819 = call float @dx.op.binary.f32(i32 36, float %8666, float %8818)  ; FMin(a,b)
  %8820 = icmp eq i32 %8530, 0
  %8821 = fadd fast float %8819, %8809
  %8822 = fmul fast float %8821, %8511
  %8823 = fadd fast float %8822, %8524
  br i1 %8820, label %8829, label %8824

; <label>:8824                                    ; preds = %8806
  %8825 = fsub fast float %8819, %8809
  %8826 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8825)  ; FMax(a,b)
  %8827 = fmul fast float %8826, %8823
  %8828 = fadd fast float %8827, %8808
  br label %8835

; <label>:8829                                    ; preds = %8806
  %8830 = fsub fast float %8809, %8819
  %8831 = call float @dx.op.unary.f32(i32 6, float %8830)  ; FAbs(value)
  %8832 = fadd fast float %8831, %8807
  %8833 = fmul fast float %8831, %8823
  %8834 = fsub fast float %8808, %8833
  br label %8835

; <label>:8835                                    ; preds = %8829, %8824
  %8836 = phi float [ %8826, %8824 ], [ %8832, %8829 ]
  %8837 = phi float [ %8828, %8824 ], [ %8834, %8829 ]
  %8838 = fcmp fast olt float %8817, %8666
  %8839 = icmp slt i32 %8814, 3
  %8840 = and i1 %8839, %8838
  br i1 %8840, label %8806, label %8841

; <label>:8841                                    ; preds = %8835
  br label %8842

; <label>:8842                                    ; preds = %8841, %8799
  %8843 = phi float [ %8664, %8799 ], [ %8836, %8841 ]
  %8844 = phi float [ %8665, %8799 ], [ %8837, %8841 ]
  %8845 = fsub fast float %8580, %8843
  %8846 = select i1 %8582, float %8843, float %8845
  %8847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8848 = extractvalue %dx.types.CBufRet.f32 %8847, 0
  %8849 = extractvalue %dx.types.CBufRet.f32 %8847, 1
  %8850 = extractvalue %dx.types.CBufRet.f32 %8847, 2
  %8851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8852 = extractvalue %dx.types.CBufRet.f32 %8851, 0
  %8853 = extractvalue %dx.types.CBufRet.f32 %8851, 1
  %8854 = extractvalue %dx.types.CBufRet.f32 %8851, 2
  %8855 = extractvalue %dx.types.CBufRet.f32 %8851, 3
  %8856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8857 = extractvalue %dx.types.CBufRet.f32 %8856, 3
  %8858 = call float @dx.op.binary.f32(i32 36, float %8844, float %8857)  ; FMin(a,b)
  %8859 = fmul fast float %8855, %8846
  %8860 = call float @dx.op.unary.f32(i32 7, float %8859)  ; Saturate(value)
  %8861 = fsub fast float %8852, %8848
  %8862 = fsub fast float %8853, %8849
  %8863 = fsub fast float %8854, %8850
  %8864 = fmul fast float %8860, %8861
  %8865 = fmul fast float %8860, %8862
  %8866 = fmul fast float %8860, %8863
  %8867 = fadd fast float %8864, %8848
  %8868 = fadd fast float %8865, %8849
  %8869 = fadd fast float %8866, %8850
  %8870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8871 = extractvalue %dx.types.CBufRet.f32 %8870, 0
  %8872 = extractvalue %dx.types.CBufRet.f32 %8870, 1
  %8873 = fadd fast float %8872, %8871
  %8874 = call float @dx.op.unary.f32(i32 7, float %8873)  ; Saturate(value)
  %8875 = extractvalue %dx.types.CBufRet.f32 %8870, 2
  %8876 = extractvalue %dx.types.CBufRet.f32 %8870, 3
  %8877 = fadd fast float %8876, %8875
  %8878 = call float @dx.op.unary.f32(i32 7, float %8877)  ; Saturate(value)
  %8879 = fmul fast float %8874, %8858
  %8880 = fmul fast float %8879, %8878
  br label %8881

; <label>:8881                                    ; preds = %8842, %8761, %8596, %8578, %8576
  %8882 = phi float [ %8605, %8596 ], [ %8764, %8761 ], [ %8846, %8842 ], [ 0.000000e+00, %8576 ], [ 0.000000e+00, %8578 ]
  %8883 = phi float [ %8639, %8596 ], [ %8798, %8761 ], [ %8880, %8842 ], [ 0.000000e+00, %8576 ], [ 0.000000e+00, %8578 ]
  %8884 = phi float [ %8626, %8596 ], [ %8785, %8761 ], [ %8867, %8842 ], [ 0.000000e+00, %8576 ], [ 0.000000e+00, %8578 ]
  %8885 = phi float [ %8627, %8596 ], [ %8786, %8761 ], [ %8868, %8842 ], [ 0.000000e+00, %8576 ], [ 0.000000e+00, %8578 ]
  %8886 = phi float [ %8628, %8596 ], [ %8787, %8761 ], [ %8869, %8842 ], [ 0.000000e+00, %8576 ], [ 0.000000e+00, %8578 ]
  %8887 = fmul fast float %8519, %8883
  %8888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8889 = extractvalue %dx.types.CBufRet.f32 %8888, 2
  %8890 = fsub fast float %8526, %8889
  %8891 = fcmp fast olt float %8887, -2.000000e+01
  %8892 = call float @dx.op.unary.f32(i32 21, float %8887)  ; Exp(value)
  %8893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8894 = extractvalue %dx.types.CBufRet.f32 %8893, 2
  %8895 = extractvalue %dx.types.CBufRet.f32 %8893, 3
  %8896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8897 = extractvalue %dx.types.CBufRet.f32 %8896, 2
  %8898 = fmul fast float %8895, %8890
  %8899 = call float @dx.op.unary.f32(i32 7, float %8898)  ; Saturate(value)
  %8900 = fsub fast float 1.000000e+00, %8899
  %8901 = fmul fast float %8511, 5.000000e-01
  %8902 = fadd fast float %8901, 5.000000e-01
  %8903 = call float @dx.op.unary.f32(i32 7, float %8902)  ; Saturate(value)
  %8904 = fsub fast float 1.000000e+00, %8903
  %8905 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8900)  ; FMax(a,b)
  %8906 = fdiv fast float %8904, %8905
  %8907 = fsub fast float %8890, %8468
  %8908 = call float @dx.op.unary.f32(i32 6, float %8907)  ; FAbs(value)
  %8909 = fmul fast float %8908, %8894
  %8910 = call float @dx.op.unary.f32(i32 7, float %8906)  ; Saturate(value)
  %8911 = fsub fast float 1.000000e+00, %8909
  %8912 = fmul fast float %8911, %8910
  %8913 = fadd fast float %8912, %8909
  %8914 = fmul fast float %8897, %8890
  %8915 = call float @dx.op.unary.f32(i32 7, float %8914)  ; Saturate(value)
  %8916 = fsub fast float 1.000000e+00, %8913
  %8917 = fmul fast float %8916, %8915
  %8918 = fadd fast float %8917, %8913
  %8919 = call float @dx.op.unary.f32(i32 7, float %8918)  ; Saturate(value)
  %8920 = fadd fast float %8892, -1.000000e+00
  %8921 = select i1 %8891, float -1.000000e+00, float %8920
  %8922 = fmul fast float %8919, %8921
  %8923 = fadd fast float %8922, 1.000000e+00
  %8924 = fsub fast float -0.000000e+00, %8922
  %8925 = fmul fast float %8884, %8924
  %8926 = fmul fast float %8885, %8924
  %8927 = fmul fast float %8886, %8924
  br label %8928

; <label>:8928                                    ; preds = %8881, %8477
  %8929 = phi float [ %8882, %8881 ], [ 0.000000e+00, %8477 ]
  %8930 = phi float [ %8923, %8881 ], [ 1.000000e+00, %8477 ]
  %8931 = phi float [ %8925, %8881 ], [ 0.000000e+00, %8477 ]
  %8932 = phi float [ %8926, %8881 ], [ 0.000000e+00, %8477 ]
  %8933 = phi float [ %8927, %8881 ], [ 0.000000e+00, %8477 ]
  %8934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8935 = extractvalue %dx.types.CBufRet.f32 %8934, 1
  %8936 = fsub fast float 1.000000e+00, %8930
  %8937 = fmul fast float %8936, %8512
  %8938 = fmul fast float %8937, %8935
  %8939 = fsub fast float %8512, %8938
  br i1 %8505, label %8940, label %8969, !dx.controlflow.hints !175

; <label>:8940                                    ; preds = %8928
  %8941 = fmul fast float %8513, %8502
  %8942 = fadd fast float %8941, %8503
  %8943 = call float @dx.op.unary.f32(i32 7, float %8942)  ; Saturate(value)
  %8944 = fmul fast float %8484, %8939
  %8945 = fsub fast float -0.000000e+00, %8944
  %8946 = fmul fast float %8485, %8939
  %8947 = fsub fast float -0.000000e+00, %8946
  %8948 = call float @dx.op.unary.f32(i32 21, float %8945)  ; Exp(value)
  %8949 = call float @dx.op.unary.f32(i32 21, float %8947)  ; Exp(value)
  %8950 = call float @dx.op.binary.f32(i32 35, float %8492, float %8948)  ; FMax(a,b)
  %8951 = call float @dx.op.binary.f32(i32 35, float %8492, float %8949)  ; FMax(a,b)
  %8952 = fsub fast float %8951, %8950
  %8953 = fmul fast float %8952, %8943
  %8954 = fadd fast float %8953, %8950
  %8955 = call float @dx.op.unary.f32(i32 7, float %8954)  ; Saturate(value)
  %8956 = fsub fast float %8489, %8494
  %8957 = fsub fast float %8490, %8495
  %8958 = fsub fast float %8491, %8496
  %8959 = fmul fast float %8943, %8956
  %8960 = fmul fast float %8943, %8957
  %8961 = fmul fast float %8943, %8958
  %8962 = fadd fast float %8959, %8494
  %8963 = fadd fast float %8960, %8495
  %8964 = fadd fast float %8961, %8496
  %8965 = fsub fast float 1.000000e+00, %8955
  %8966 = fmul fast float %8965, %8962
  %8967 = fmul fast float %8965, %8963
  %8968 = fmul fast float %8965, %8964
  br label %9028

; <label>:8969                                    ; preds = %8928
  %8970 = fmul fast float %8939, %8501
  %8971 = call float @dx.op.unary.f32(i32 7, float %8970)  ; Saturate(value)
  %8972 = fsub fast float 2.000000e+00, %8971
  %8973 = fmul fast float %8971, 9.921875e-01
  %8974 = fmul fast float %8973, %8972
  %8975 = fadd fast float %8974, 3.906250e-03
  %8976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %8975, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8977 = extractvalue %dx.types.ResRet.f32 %8976, 0
  %8978 = fsub fast float %8971, %8977
  %8979 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8978)  ; FMax(a,b)
  %8980 = fmul fast float %8487, %8468
  %8981 = call float @dx.op.unary.f32(i32 6, float %8980)  ; FAbs(value)
  %8982 = fcmp fast ogt float %8981, 0x3EB0C6F7A0000000
  br i1 %8982, label %8983, label %8989, !dx.controlflow.hints !176

; <label>:8983                                    ; preds = %8969
  %8984 = fmul fast float %8980, 0xBFF7154760000000
  %8985 = call float @dx.op.unary.f32(i32 21, float %8984)  ; Exp(value)
  %8986 = fsub fast float 1.000000e+00, %8985
  %8987 = fdiv fast float %8986, %8980
  %8988 = fmul fast float %8987, %8497
  br label %8989

; <label>:8989                                    ; preds = %8983, %8969
  %8990 = phi float [ %8988, %8983 ], [ %8497, %8969 ]
  %8991 = fadd fast float %8990, %8499
  %8992 = fmul fast float %8991, %8979
  %8993 = fmul fast float %8484, %8992
  %8994 = fsub fast float -0.000000e+00, %8993
  %8995 = fmul fast float %8485, %8992
  %8996 = fsub fast float -0.000000e+00, %8995
  %8997 = fmul fast float %8486, %8992
  %8998 = fsub fast float -0.000000e+00, %8997
  %8999 = call float @dx.op.unary.f32(i32 21, float %8994)  ; Exp(value)
  %9000 = call float @dx.op.unary.f32(i32 21, float %8996)  ; Exp(value)
  %9001 = call float @dx.op.unary.f32(i32 21, float %8998)  ; Exp(value)
  %9002 = fmul fast float %8513, %8513
  %9003 = fadd fast float %9002, 1.000000e+00
  %9004 = fmul fast float %9003, 0x3FAE8EC8A0000000
  %9005 = fmul fast float %9004, %8494
  %9006 = fmul fast float %9004, %8495
  %9007 = fmul fast float %9004, %8496
  %9008 = fmul fast float %8513, %8492
  %9009 = fsub fast float 1.000000e+00, %9008
  %9010 = fmul fast float %8492, %8492
  %9011 = fsub fast float 1.000000e+00, %9010
  %9012 = fmul fast float %9011, 0x3FB45F3060000000
  %9013 = fmul fast float %9009, %9009
  %9014 = fdiv fast float 1.000000e+00, %9013
  %9015 = fmul fast float %9012, %9014
  %9016 = fmul fast float %9015, %8489
  %9017 = fmul fast float %9015, %8490
  %9018 = fmul fast float %9015, %8491
  %9019 = fadd fast float %9016, %9005
  %9020 = fadd fast float %9017, %9006
  %9021 = fadd fast float %9018, %9007
  %9022 = fsub fast float 1.000000e+00, %8999
  %9023 = fsub fast float 1.000000e+00, %9000
  %9024 = fsub fast float 1.000000e+00, %9001
  %9025 = fmul fast float %9019, %9022
  %9026 = fmul fast float %9020, %9023
  %9027 = fmul fast float %9021, %9024
  br label %9028

; <label>:9028                                    ; preds = %8989, %8940
  %9029 = phi float [ %8966, %8940 ], [ %9025, %8989 ]
  %9030 = phi float [ %8967, %8940 ], [ %9026, %8989 ]
  %9031 = phi float [ %8968, %8940 ], [ %9027, %8989 ]
  %9032 = phi float [ %8955, %8940 ], [ %8999, %8989 ]
  %9033 = phi float [ %8955, %8940 ], [ %9000, %8989 ]
  %9034 = phi float [ %8955, %8940 ], [ %9001, %8989 ]
  br i1 %8521, label %9035, label %9233, !dx.controlflow.hints !177

; <label>:9035                                    ; preds = %9028
  %9036 = extractvalue %dx.types.CBufRet.f32 %8934, 0
  %9037 = fmul fast float %9036, %8936
  %9038 = fsub fast float %8931, %9029
  %9039 = fsub fast float %8932, %9030
  %9040 = fsub fast float %8933, %9031
  %9041 = fmul fast float %9037, %9038
  %9042 = fmul fast float %9037, %9039
  %9043 = fmul fast float %9037, %9040
  %9044 = fadd fast float %9041, %9029
  %9045 = fadd fast float %9042, %9030
  %9046 = fadd fast float %9043, %9031
  %9047 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9032)  ; FMax(a,b)
  %9048 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9033)  ; FMax(a,b)
  %9049 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9034)  ; FMax(a,b)
  %9050 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8930)  ; FMax(a,b)
  %9051 = call float @dx.op.binary.f32(i32 35, float %8929, float %8939)  ; FMax(a,b)
  %9052 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9051)  ; FMax(a,b)
  %9053 = fdiv fast float %8929, %9052
  %9054 = call float @dx.op.unary.f32(i32 7, float %9053)  ; Saturate(value)
  %9055 = fdiv fast float %8939, %9052
  %9056 = call float @dx.op.unary.f32(i32 7, float %9055)  ; Saturate(value)
  %9057 = fcmp fast une float %9050, 1.000000e+00
  br i1 %9057, label %9058, label %9071, !dx.controlflow.hints !178

; <label>:9058                                    ; preds = %9035
  %9059 = call float @dx.op.unary.f32(i32 23, float %9050)  ; Log(value)
  %9060 = fmul fast float %9059, 0x3FE62E4300000000
  %9061 = fmul fast float %8931, %9060
  %9062 = fsub fast float -0.000000e+00, %9061
  %9063 = fmul fast float %8932, %9060
  %9064 = fsub fast float -0.000000e+00, %9063
  %9065 = fmul fast float %8933, %9060
  %9066 = fsub fast float -0.000000e+00, %9065
  %9067 = fsub fast float 1.000000e+00, %9050
  %9068 = fdiv fast float %9062, %9067
  %9069 = fdiv fast float %9064, %9067
  %9070 = fdiv fast float %9066, %9067
  br label %9071

; <label>:9071                                    ; preds = %9058, %9035
  %9072 = phi float [ %9068, %9058 ], [ %8931, %9035 ]
  %9073 = phi float [ %9069, %9058 ], [ %8932, %9035 ]
  %9074 = phi float [ %9070, %9058 ], [ %8933, %9035 ]
  %9075 = phi float [ %9060, %9058 ], [ 0.000000e+00, %9035 ]
  %9076 = fcmp fast une float %9047, 1.000000e+00
  br i1 %9076, label %9077, label %9084, !dx.controlflow.hints !179

; <label>:9077                                    ; preds = %9071
  %9078 = call float @dx.op.unary.f32(i32 23, float %9047)  ; Log(value)
  %9079 = fmul fast float %9078, 0x3FE62E4300000000
  %9080 = fmul fast float %9044, %9079
  %9081 = fsub fast float -0.000000e+00, %9080
  %9082 = fsub fast float 1.000000e+00, %9047
  %9083 = fdiv fast float %9081, %9082
  br label %9084

; <label>:9084                                    ; preds = %9077, %9071
  %9085 = phi float [ %9083, %9077 ], [ %9044, %9071 ]
  %9086 = phi float [ %9079, %9077 ], [ 0.000000e+00, %9071 ]
  %9087 = fcmp fast une float %9048, 1.000000e+00
  br i1 %9087, label %9088, label %9095, !dx.controlflow.hints !179

; <label>:9088                                    ; preds = %9084
  %9089 = call float @dx.op.unary.f32(i32 23, float %9048)  ; Log(value)
  %9090 = fmul fast float %9089, 0x3FE62E4300000000
  %9091 = fmul fast float %9045, %9090
  %9092 = fsub fast float -0.000000e+00, %9091
  %9093 = fsub fast float 1.000000e+00, %9048
  %9094 = fdiv fast float %9092, %9093
  br label %9095

; <label>:9095                                    ; preds = %9088, %9084
  %9096 = phi float [ %9094, %9088 ], [ %9045, %9084 ]
  %9097 = phi float [ %9090, %9088 ], [ 0.000000e+00, %9084 ]
  %9098 = fcmp fast une float %9049, 1.000000e+00
  br i1 %9098, label %9099, label %9106, !dx.controlflow.hints !179

; <label>:9099                                    ; preds = %9095
  %9100 = call float @dx.op.unary.f32(i32 23, float %9049)  ; Log(value)
  %9101 = fmul fast float %9100, 0x3FE62E4300000000
  %9102 = fmul fast float %9046, %9101
  %9103 = fsub fast float -0.000000e+00, %9102
  %9104 = fsub fast float 1.000000e+00, %9049
  %9105 = fdiv fast float %9103, %9104
  br label %9106

; <label>:9106                                    ; preds = %9099, %9095
  %9107 = phi float [ %9105, %9099 ], [ %9046, %9095 ]
  %9108 = phi float [ %9101, %9099 ], [ 0.000000e+00, %9095 ]
  %9109 = fmul fast float %9072, %9056
  %9110 = fmul fast float %9073, %9056
  %9111 = fmul fast float %9074, %9056
  %9112 = fmul fast float %9075, %9056
  %9113 = fmul fast float %9085, %9054
  %9114 = fmul fast float %9096, %9054
  %9115 = fmul fast float %9107, %9054
  %9116 = fmul fast float %9086, %9054
  %9117 = fmul fast float %9097, %9054
  %9118 = fmul fast float %9108, %9054
  %9119 = fadd fast float %9113, %9109
  %9120 = fadd fast float %9114, %9110
  %9121 = fadd fast float %9115, %9111
  %9122 = fadd fast float %9116, %9112
  %9123 = fadd fast float %9117, %9112
  %9124 = fadd fast float %9118, %9112
  %9125 = fcmp fast une float %9122, 0.000000e+00
  br i1 %9125, label %9126, label %9133, !dx.controlflow.hints !180

; <label>:9126                                    ; preds = %9106
  %9127 = fmul fast float %9122, 0x3FF7154760000000
  %9128 = call float @dx.op.unary.f32(i32 21, float %9127)  ; Exp(value)
  %9129 = fsub fast float 1.000000e+00, %9128
  %9130 = fmul fast float %9119, %9129
  %9131 = fsub fast float -0.000000e+00, %9130
  %9132 = fdiv fast float %9131, %9122
  br label %9133

; <label>:9133                                    ; preds = %9126, %9106
  %9134 = phi float [ %9128, %9126 ], [ 1.000000e+00, %9106 ]
  %9135 = phi float [ %9132, %9126 ], [ %9119, %9106 ]
  %9136 = fcmp fast une float %9123, 0.000000e+00
  br i1 %9136, label %9137, label %9144, !dx.controlflow.hints !180

; <label>:9137                                    ; preds = %9133
  %9138 = fmul fast float %9123, 0x3FF7154760000000
  %9139 = call float @dx.op.unary.f32(i32 21, float %9138)  ; Exp(value)
  %9140 = fsub fast float 1.000000e+00, %9139
  %9141 = fmul fast float %9120, %9140
  %9142 = fsub fast float -0.000000e+00, %9141
  %9143 = fdiv fast float %9142, %9123
  br label %9144

; <label>:9144                                    ; preds = %9137, %9133
  %9145 = phi float [ %9139, %9137 ], [ 1.000000e+00, %9133 ]
  %9146 = phi float [ %9143, %9137 ], [ %9120, %9133 ]
  %9147 = fcmp fast une float %9124, 0.000000e+00
  br i1 %9147, label %9148, label %9155, !dx.controlflow.hints !180

; <label>:9148                                    ; preds = %9144
  %9149 = fmul fast float %9124, 0x3FF7154760000000
  %9150 = call float @dx.op.unary.f32(i32 21, float %9149)  ; Exp(value)
  %9151 = fsub fast float 1.000000e+00, %9150
  %9152 = fmul fast float %9121, %9151
  %9153 = fsub fast float -0.000000e+00, %9152
  %9154 = fdiv fast float %9153, %9124
  br label %9155

; <label>:9155                                    ; preds = %9148, %9144
  %9156 = phi float [ %9150, %9148 ], [ 1.000000e+00, %9144 ]
  %9157 = phi float [ %9154, %9148 ], [ %9121, %9144 ]
  %9158 = fcmp fast ogt float %9054, %9056
  br i1 %9158, label %9159, label %9179

; <label>:9159                                    ; preds = %9155
  %9160 = fsub fast float 1.000000e+00, %9056
  %9161 = fmul fast float %9072, %9160
  %9162 = fmul fast float %9073, %9160
  %9163 = fmul fast float %9074, %9160
  %9164 = fmul fast float %9075, %9160
  %9165 = fcmp fast une float %9164, 0.000000e+00
  br i1 %9165, label %9166, label %9217, !dx.controlflow.hints !181

; <label>:9166                                    ; preds = %9159
  %9167 = fmul fast float %9164, 0x3FF7154760000000
  %9168 = call float @dx.op.unary.f32(i32 21, float %9167)  ; Exp(value)
  %9169 = fsub fast float 1.000000e+00, %9168
  %9170 = fmul fast float %9161, %9169
  %9171 = fsub fast float -0.000000e+00, %9170
  %9172 = fmul fast float %9162, %9169
  %9173 = fsub fast float -0.000000e+00, %9172
  %9174 = fmul fast float %9163, %9169
  %9175 = fsub fast float -0.000000e+00, %9174
  %9176 = fdiv fast float %9171, %9164
  %9177 = fdiv fast float %9173, %9164
  %9178 = fdiv fast float %9175, %9164
  br label %9217

; <label>:9179                                    ; preds = %9155
  %9180 = fsub fast float 1.000000e+00, %9054
  %9181 = fmul fast float %9085, %9180
  %9182 = fmul fast float %9096, %9180
  %9183 = fmul fast float %9107, %9180
  %9184 = fmul fast float %9086, %9180
  %9185 = fmul fast float %9097, %9180
  %9186 = fmul fast float %9108, %9180
  %9187 = fcmp fast une float %9184, 0.000000e+00
  br i1 %9187, label %9188, label %9195, !dx.controlflow.hints !180

; <label>:9188                                    ; preds = %9179
  %9189 = fmul fast float %9184, 0x3FF7154760000000
  %9190 = call float @dx.op.unary.f32(i32 21, float %9189)  ; Exp(value)
  %9191 = fsub fast float 1.000000e+00, %9190
  %9192 = fmul fast float %9181, %9191
  %9193 = fsub fast float -0.000000e+00, %9192
  %9194 = fdiv fast float %9193, %9184
  br label %9195

; <label>:9195                                    ; preds = %9188, %9179
  %9196 = phi float [ %9194, %9188 ], [ %9181, %9179 ]
  %9197 = phi float [ %9190, %9188 ], [ 1.000000e+00, %9179 ]
  %9198 = fcmp fast une float %9185, 0.000000e+00
  br i1 %9198, label %9199, label %9206, !dx.controlflow.hints !180

; <label>:9199                                    ; preds = %9195
  %9200 = fmul fast float %9185, 0x3FF7154760000000
  %9201 = call float @dx.op.unary.f32(i32 21, float %9200)  ; Exp(value)
  %9202 = fsub fast float 1.000000e+00, %9201
  %9203 = fmul fast float %9182, %9202
  %9204 = fsub fast float -0.000000e+00, %9203
  %9205 = fdiv fast float %9204, %9185
  br label %9206

; <label>:9206                                    ; preds = %9199, %9195
  %9207 = phi float [ %9205, %9199 ], [ %9182, %9195 ]
  %9208 = phi float [ %9201, %9199 ], [ 1.000000e+00, %9195 ]
  %9209 = fcmp fast une float %9186, 0.000000e+00
  br i1 %9209, label %9210, label %9217, !dx.controlflow.hints !180

; <label>:9210                                    ; preds = %9206
  %9211 = fmul fast float %9186, 0x3FF7154760000000
  %9212 = call float @dx.op.unary.f32(i32 21, float %9211)  ; Exp(value)
  %9213 = fsub fast float 1.000000e+00, %9212
  %9214 = fmul fast float %9183, %9213
  %9215 = fsub fast float -0.000000e+00, %9214
  %9216 = fdiv fast float %9215, %9186
  br label %9217

; <label>:9217                                    ; preds = %9210, %9206, %9166, %9159
  %9218 = phi float [ %9216, %9210 ], [ %9178, %9166 ], [ %9163, %9159 ], [ %9183, %9206 ]
  %9219 = phi float [ %9207, %9210 ], [ %9177, %9166 ], [ %9162, %9159 ], [ %9207, %9206 ]
  %9220 = phi float [ %9196, %9210 ], [ %9176, %9166 ], [ %9161, %9159 ], [ %9196, %9206 ]
  %9221 = phi float [ %9212, %9210 ], [ %9168, %9166 ], [ 1.000000e+00, %9159 ], [ 1.000000e+00, %9206 ]
  %9222 = phi float [ %9208, %9210 ], [ %9168, %9166 ], [ 1.000000e+00, %9159 ], [ %9208, %9206 ]
  %9223 = phi float [ %9197, %9210 ], [ %9168, %9166 ], [ 1.000000e+00, %9159 ], [ %9197, %9206 ]
  %9224 = fmul fast float %9223, %9135
  %9225 = fmul fast float %9222, %9146
  %9226 = fmul fast float %9221, %9157
  %9227 = fadd fast float %9224, %9220
  %9228 = fadd fast float %9225, %9219
  %9229 = fadd fast float %9226, %9218
  %9230 = fmul fast float %9223, %9134
  %9231 = fmul fast float %9222, %9145
  %9232 = fmul fast float %9221, %9156
  br label %9233

; <label>:9233                                    ; preds = %9217, %9028
  %9234 = phi float [ %9232, %9217 ], [ %9034, %9028 ]
  %9235 = phi float [ %9231, %9217 ], [ %9033, %9028 ]
  %9236 = phi float [ %9230, %9217 ], [ %9032, %9028 ]
  %9237 = phi float [ %9229, %9217 ], [ %9031, %9028 ]
  %9238 = phi float [ %9228, %9217 ], [ %9030, %9028 ]
  %9239 = phi float [ %9227, %9217 ], [ %9029, %9028 ]
  %9240 = fmul fast float %9239, %8185
  %9241 = fmul fast float %9238, %8185
  %9242 = fmul fast float %9237, %8185
  %9243 = fmul fast float %9236, %8476
  %9244 = call float @dx.op.dot3.f32(i32 55, float %9236, float %9235, float %9234, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9245 = call float @dx.op.dot3.f32(i32 55, float %9240, float %9241, float %9242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9246 = select i1 %269, float %9244, float %9236
  %9247 = select i1 %269, float %9244, float %9235
  %9248 = select i1 %269, float 1.000000e+00, float %9234
  %9249 = select i1 %269, float %9245, float %9240
  %9250 = select i1 %269, float 0.000000e+00, float %9241
  %9251 = select i1 %269, float 0.000000e+00, float %9242
  %9252 = fmul fast float %9246, %8470
  %9253 = fmul fast float %9247, %8471
  %9254 = fmul fast float %9248, %8472
  %9255 = fadd fast float %9252, %9249
  %9256 = fadd fast float %9253, %9250
  %9257 = fadd fast float %9251, %9254
  %9258 = fmul fast float %9246, %8473
  %9259 = fmul fast float %9247, %8474
  %9260 = fmul fast float %9248, %8475
  %9261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9262 = extractvalue %dx.types.CBufRet.i32 %9261, 0
  %9263 = icmp eq i32 %9262, 0
  br i1 %9263, label %9631, label %9264, !dx.controlflow.hints !182

; <label>:9264                                    ; preds = %9233
  %9265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9266 = extractvalue %dx.types.CBufRet.f32 %9265, 2
  %9267 = extractvalue %dx.types.CBufRet.f32 %9265, 3
  %9268 = fmul fast float %9266, %116
  %9269 = fmul fast float %9267, %117
  %9270 = fmul fast float %9268, 2.000000e+00
  %9271 = fmul fast float %9269, 2.000000e+00
  %9272 = fsub fast float 1.000000e+00, %9270
  %9273 = fsub fast float 1.000000e+00, %9271
  %9274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9275 = extractvalue %dx.types.CBufRet.f32 %9274, 0
  %9276 = extractvalue %dx.types.CBufRet.f32 %9274, 1
  %9277 = extractvalue %dx.types.CBufRet.f32 %9274, 2
  %9278 = fmul fast float %9272, %9275
  %9279 = fmul fast float %9272, %9276
  %9280 = fmul fast float %9272, %9277
  %9281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9282 = extractvalue %dx.types.CBufRet.f32 %9281, 0
  %9283 = extractvalue %dx.types.CBufRet.f32 %9281, 1
  %9284 = extractvalue %dx.types.CBufRet.f32 %9281, 2
  %9285 = fmul fast float %9273, %9282
  %9286 = fmul fast float %9273, %9283
  %9287 = fmul fast float %9273, %9284
  %9288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9289 = extractvalue %dx.types.CBufRet.f32 %9288, 0
  %9290 = extractvalue %dx.types.CBufRet.f32 %9288, 1
  %9291 = extractvalue %dx.types.CBufRet.f32 %9288, 2
  %9292 = fadd fast float %9285, %9289
  %9293 = fadd fast float %9292, %9278
  %9294 = fadd fast float %9286, %9290
  %9295 = fadd fast float %9294, %9279
  %9296 = fadd fast float %9287, %9291
  %9297 = fadd fast float %9296, %9280
  %9298 = fmul fast float %9293, %8469
  %9299 = fmul fast float %9295, %8469
  %9300 = fmul fast float %9297, %8469
  %9301 = fmul fast float %9298, %9298
  %9302 = fmul fast float %9299, %9299
  %9303 = fadd fast float %9301, %9302
  %9304 = fmul fast float %9300, %9300
  %9305 = fadd fast float %9303, %9304
  %9306 = call float @dx.op.unary.f32(i32 24, float %9305)  ; Sqrt(value)
  %9307 = extractvalue %dx.types.CBufRet.f32 %8196, 0
  %9308 = fsub fast float %9306, %9307
  %9309 = extractvalue %dx.types.CBufRet.f32 %8196, 2
  %9310 = fmul fast float %9308, %9309
  %9311 = call float @dx.op.unary.f32(i32 7, float %9310)  ; Saturate(value)
  %9312 = fadd fast float %9311, -5.000000e-01
  %9313 = fmul fast float %9312, 2.000000e+00
  %9314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9315 = extractvalue %dx.types.CBufRet.f32 %9314, 2
  %9316 = call float @dx.op.binary.f32(i32 36, float %9315, float %9313)  ; FMin(a,b)
  %9317 = fsub fast float -0.000000e+00, %9315
  %9318 = fcmp fast ogt float %9316, %9317
  br i1 %9318, label %9319, label %9631, !dx.controlflow.hints !183

; <label>:9319                                    ; preds = %9264
  %9320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9321 = extractvalue %dx.types.CBufRet.f32 %9320, 3
  %9322 = fcmp fast ogt float %9321, 0.000000e+00
  br i1 %9322, label %9323, label %9398, !dx.controlflow.hints !184

; <label>:9323                                    ; preds = %9319
  %9324 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9325 = extractvalue %dx.types.Dimensions %9324, 0
  %9326 = sitofp i32 %9325 to float
  %9327 = extractvalue %dx.types.Dimensions %9324, 1
  %9328 = sitofp i32 %9327 to float
  %9329 = fmul fast float %9268, %9326
  %9330 = fmul fast float %9269, %9328
  %9331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9332 = extractvalue %dx.types.CBufRet.f32 %9331, 1
  %9333 = fsub fast float -0.000000e+00, %9332
  %9334 = fptoui float %9333 to i32
  %9335 = fptoui float %9329 to i32
  %9336 = fptoui float %9330 to i32
  %9337 = and i32 %9334, 31
  %9338 = lshr i32 %9335, %9337
  %9339 = lshr i32 %9336, %9337
  %9340 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9334, i32 %9338, i32 %9339, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9341 = extractvalue %dx.types.ResRet.f32 %9340, 0
  %9342 = fcmp fast olt float %9341, -1.000000e+00
  %9343 = fcmp fast ogt float %9341, -1.000000e+00
  %9344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9345 = extractvalue %dx.types.CBufRet.f32 %9344, 1
  %9346 = select i1 %9343, float %9345, float 1.000000e+00
  %9347 = fadd fast float %9341, 1.000000e+00
  %9348 = fmul fast float %9346, %9347
  %9349 = call float @dx.op.unary.f32(i32 6, float %9348)  ; FAbs(value)
  %9350 = extractvalue %dx.types.CBufRet.f32 %9344, 3
  %9351 = fcmp fast oge float %9349, %9350
  %9352 = select i1 %9351, float 0x4197782600000000, float %9349
  %9353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9354 = extractvalue %dx.types.CBufRet.f32 %9353, 0
  %9355 = extractvalue %dx.types.CBufRet.f32 %9353, 1
  %9356 = extractvalue %dx.types.CBufRet.f32 %9353, 2
  %9357 = select i1 %9342, float %9354, float %9275
  %9358 = select i1 %9342, float %9355, float %9276
  %9359 = select i1 %9342, float %9356, float %9277
  %9360 = fmul fast float %9357, %9272
  %9361 = fmul fast float %9358, %9272
  %9362 = fmul fast float %9359, %9272
  %9363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9364 = extractvalue %dx.types.CBufRet.f32 %9363, 0
  %9365 = extractvalue %dx.types.CBufRet.f32 %9363, 1
  %9366 = extractvalue %dx.types.CBufRet.f32 %9363, 2
  %9367 = select i1 %9342, float %9364, float %9282
  %9368 = select i1 %9342, float %9365, float %9283
  %9369 = select i1 %9342, float %9366, float %9284
  %9370 = fmul fast float %9367, %9273
  %9371 = fmul fast float %9368, %9273
  %9372 = fmul fast float %9369, %9273
  %9373 = fadd fast float %9370, %9360
  %9374 = fadd fast float %9371, %9361
  %9375 = fadd fast float %9372, %9362
  %9376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9377 = extractvalue %dx.types.CBufRet.f32 %9376, 0
  %9378 = extractvalue %dx.types.CBufRet.f32 %9376, 1
  %9379 = extractvalue %dx.types.CBufRet.f32 %9376, 2
  %9380 = select i1 %9342, float %9377, float %9289
  %9381 = select i1 %9342, float %9378, float %9290
  %9382 = select i1 %9342, float %9379, float %9291
  %9383 = fadd fast float %9373, %9380
  %9384 = fadd fast float %9374, %9381
  %9385 = fadd fast float %9375, %9382
  %9386 = fmul fast float %9383, %9352
  %9387 = fmul fast float %9384, %9352
  %9388 = fmul fast float %9385, %9352
  %9389 = fmul fast float %9386, %9386
  %9390 = fmul fast float %9387, %9387
  %9391 = fadd fast float %9389, %9390
  %9392 = fmul fast float %9388, %9388
  %9393 = fadd fast float %9391, %9392
  %9394 = call float @dx.op.unary.f32(i32 24, float %9393)  ; Sqrt(value)
  %9395 = fsub fast float %9394, %9307
  %9396 = fmul fast float %9395, %9309
  %9397 = call float @dx.op.unary.f32(i32 7, float %9396)  ; Saturate(value)
  br label %9398

; <label>:9398                                    ; preds = %9323, %9319
  %9399 = phi float [ %9397, %9323 ], [ 1.000000e+00, %9319 ]
  %9400 = fmul fast float %9316, 5.000000e-01
  %9401 = fadd fast float %9400, 5.000000e-01
  %9402 = call float @dx.op.unary.f32(i32 22, float %9401)  ; Frc(value)
  %9403 = call float @dx.op.unary.f32(i32 27, float %9402)  ; Round_ni(value)
  %9404 = call float @dx.op.unary.f32(i32 22, float %9402)  ; Frc(value)
  %9405 = fmul fast float %9404, 2.000000e+00
  %9406 = fadd fast float %9405, -1.000000e+00
  %9407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %55, float %9268, float %9269, float %9403, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9408 = extractvalue %dx.types.ResRet.f32 %9407, 0
  %9409 = extractvalue %dx.types.ResRet.f32 %9407, 1
  %9410 = extractvalue %dx.types.ResRet.f32 %9407, 2
  %9411 = extractvalue %dx.types.ResRet.f32 %9407, 3
  %9412 = fadd fast float %9408, -5.000000e-01
  %9413 = fadd fast float %9410, -5.000000e-01
  %9414 = fmul fast float %9412, 0xBFD5555560000000
  %9415 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9413, float %9414)  ; FMad(a,b,c)
  %9416 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9409, float 0.000000e+00)  ; FMad(a,b,c)
  %9417 = fadd fast float %9416, %9411
  %9418 = fmul fast float %9412, -7.500000e-01
  %9419 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9413, float %9418)  ; FMad(a,b,c)
  %9420 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9409, float 0.000000e+00)  ; FMad(a,b,c)
  %9421 = fadd fast float %9420, %9411
  %9422 = call float @dx.op.binary.f32(i32 35, float %9415, float -1.000000e+00)  ; FMax(a,b)
  %9423 = call float @dx.op.binary.f32(i32 35, float %9417, float -1.000000e+00)  ; FMax(a,b)
  %9424 = call float @dx.op.binary.f32(i32 35, float %9419, float -1.000000e+00)  ; FMax(a,b)
  %9425 = call float @dx.op.binary.f32(i32 35, float %9421, float -1.000000e+00)  ; FMax(a,b)
  %9426 = call float @dx.op.binary.f32(i32 36, float %9422, float 1.000000e+00)  ; FMin(a,b)
  %9427 = call float @dx.op.binary.f32(i32 36, float %9423, float 1.000000e+00)  ; FMin(a,b)
  %9428 = call float @dx.op.binary.f32(i32 36, float %9424, float 1.000000e+00)  ; FMin(a,b)
  %9429 = call float @dx.op.binary.f32(i32 36, float %9425, float 1.000000e+00)  ; FMin(a,b)
  %9430 = fcmp fast olt float %9426, 0x3FEFFF8020000000
  br i1 %9430, label %9431, label %9546, !dx.controlflow.hints !185

; <label>:9431                                    ; preds = %9398
  %9432 = extractvalue %dx.types.CBufRet.f32 %9314, 3
  %9433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9434 = extractvalue %dx.types.CBufRet.f32 %9433, 0
  %9435 = extractvalue %dx.types.CBufRet.f32 %9433, 1
  %9436 = extractvalue %dx.types.CBufRet.f32 %9433, 2
  %9437 = extractvalue %dx.types.CBufRet.f32 %9433, 3
  %9438 = fsub fast float %9434, %9426
  %9439 = fsub fast float %9435, %9427
  %9440 = fsub fast float %9436, %9428
  %9441 = fsub fast float %9437, %9429
  %9442 = fmul fast float %9438, %9432
  %9443 = fmul fast float %9439, %9432
  %9444 = fmul fast float %9440, %9432
  %9445 = fmul fast float %9441, %9432
  %9446 = fadd fast float %9442, %9426
  %9447 = fadd fast float %9443, %9427
  %9448 = fsub fast float -0.000000e+00, %9447
  %9449 = fadd fast float %9444, %9428
  %9450 = fadd fast float %9445, %9429
  %9451 = fmul fast float %9446, %9446
  %9452 = fsub fast float %9447, %9451
  %9453 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9452)  ; FMax(a,b)
  %9454 = fdiv fast float 1.000000e+00, %9453
  %9455 = fmul fast float %9447, %9446
  %9456 = fsub fast float %9449, %9455
  %9457 = fsub fast float %9406, %9446
  %9458 = fmul fast float %9406, %9406
  %9459 = fsub fast float %9458, %9447
  %9460 = fmul fast float %9457, %9454
  %9461 = fmul fast float %9460, %9456
  %9462 = fsub fast float %9459, %9461
  %9463 = fmul fast float %9447, %9447
  %9464 = fsub fast float %9450, %9463
  %9465 = fmul fast float %9456, %9456
  %9466 = fmul fast float %9465, %9454
  %9467 = fsub fast float %9464, %9466
  %9468 = fdiv fast float %9462, %9467
  %9469 = fmul fast float %9456, %9468
  %9470 = fsub fast float %9457, %9469
  %9471 = fmul fast float %9470, %9454
  %9472 = fmul fast float %9471, %9446
  %9473 = fsub fast float 1.000000e+00, %9472
  %9474 = fmul fast float %9447, %9468
  %9475 = fsub fast float %9473, %9474
  %9476 = fmul fast float %9471, %9471
  %9477 = fmul fast float %9468, 4.000000e+00
  %9478 = fmul fast float %9477, %9475
  %9479 = fsub fast float %9476, %9478
  %9480 = call float @dx.op.unary.f32(i32 24, float %9479)  ; Sqrt(value)
  %9481 = fcmp fast oge float %9471, 0.000000e+00
  %9482 = fsub fast float -0.000000e+00, %9480
  %9483 = select i1 %9481, float %9482, float %9480
  %9484 = fsub fast float %9483, %9471
  %9485 = fdiv fast float %9484, %9468
  %9486 = fdiv fast float %9475, %9484
  %9487 = fmul fast float %9485, 5.000000e-01
  %9488 = fmul fast float %9486, 2.000000e+00
  %9489 = select i1 %9481, float %9487, float %9488
  %9490 = select i1 %9481, float %9488, float %9487
  %9491 = call float @dx.op.binary.f32(i32 35, float %9489, float %9490)  ; FMax(a,b)
  %9492 = call float @dx.op.binary.f32(i32 36, float %9489, float %9490)  ; FMin(a,b)
  %9493 = fcmp fast ogt float %9406, %9492
  br i1 %9493, label %9494, label %9504

; <label>:9494                                    ; preds = %9431
  %9495 = fsub fast float %9406, %9492
  %9496 = fsub fast float %9491, %9492
  %9497 = fmul fast float %9495, %9496
  %9498 = fmul fast float %9491, %9406
  %9499 = fadd fast float %9491, %9406
  %9500 = fmul fast float %9499, %9446
  %9501 = fadd fast float %9498, %9447
  %9502 = fsub fast float %9501, %9500
  %9503 = fdiv fast float %9502, %9497
  br label %9504

; <label>:9504                                    ; preds = %9494, %9431
  %9505 = phi float [ %9503, %9494 ], [ 0.000000e+00, %9431 ]
  %9506 = fcmp fast ogt float %9406, %9491
  %9507 = fsub fast float %9406, %9491
  br i1 %9506, label %9508, label %9518

; <label>:9508                                    ; preds = %9504
  %9509 = fsub fast float %9491, %9492
  %9510 = fmul fast float %9509, %9507
  %9511 = fmul fast float %9492, %9406
  %9512 = fadd fast float %9492, %9406
  %9513 = fmul fast float %9512, %9446
  %9514 = fsub fast float %9448, %9511
  %9515 = fadd fast float %9514, %9513
  %9516 = fdiv fast float %9515, %9510
  %9517 = fadd fast float %9516, %9505
  br label %9518

; <label>:9518                                    ; preds = %9508, %9504
  %9519 = phi float [ %9517, %9508 ], [ %9505, %9504 ]
  %9520 = fsub fast float %9406, %9492
  %9521 = fmul fast float %9520, %9507
  %9522 = fmul fast float %9492, %9491
  %9523 = fadd fast float %9492, %9491
  %9524 = fmul fast float %9523, %9446
  %9525 = fadd fast float %9522, %9447
  %9526 = fsub fast float %9525, %9524
  %9527 = fdiv fast float %9526, %9521
  %9528 = call float @dx.op.unary.f32(i32 7, float %9519)  ; Saturate(value)
  %9529 = fcmp fast oeq float %8197, 0.000000e+00
  %9530 = extractvalue %dx.types.CBufRet.f32 %9314, 0
  %9531 = fcmp fast oeq float %9530, 0.000000e+00
  %9532 = or i1 %9529, %9531
  %9533 = fmul fast float %9530, 2.000000e+00
  %9534 = fadd fast float %9315, %9316
  %9535 = fdiv fast float %9534, %9533
  %9536 = call float @dx.op.unary.f32(i32 7, float %9535)  ; Saturate(value)
  %9537 = fmul fast float %9536, 2.000000e+00
  %9538 = fsub fast float 3.000000e+00, %9537
  %9539 = fmul fast float %9536, %9536
  %9540 = fmul fast float %9539, %9538
  %9541 = select i1 %9532, float 1.000000e+00, float %9540
  %9542 = fmul fast float %9527, %8197
  %9543 = fadd fast float %9528, %9542
  %9544 = call float @dx.op.unary.f32(i32 7, float %9543)  ; Saturate(value)
  %9545 = fmul fast float %9541, %9544
  br label %9546

; <label>:9546                                    ; preds = %9518, %9398
  %9547 = phi float [ %9545, %9518 ], [ 0.000000e+00, %9398 ]
  %9548 = fsub fast float 1.000000e+00, %9547
  %9549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %55, float %9268, float %9269, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9550 = extractvalue %dx.types.ResRet.f32 %9549, 0
  %9551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9552 = extractvalue %dx.types.CBufRet.i32 %9551, 2
  %9553 = icmp eq i32 %9552, 0
  br i1 %9553, label %9559, label %9554

; <label>:9554                                    ; preds = %9546
  %9555 = call float @dx.op.unary.f32(i32 7, float %9547)  ; Saturate(value)
  %9556 = fadd fast float %9550, -1.000000e+00
  %9557 = fmul fast float %9555, %9556
  %9558 = fadd fast float %9557, 1.000000e+00
  br label %9559

; <label>:9559                                    ; preds = %9554, %9546
  %9560 = phi float [ %9558, %9554 ], [ %9548, %9546 ]
  br i1 %9322, label %9561, label %9579

; <label>:9561                                    ; preds = %9559
  %9562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9563 = extractvalue %dx.types.CBufRet.f32 %9562, 1
  %9564 = fsub fast float %9399, %9563
  %9565 = call float @dx.op.unary.f32(i32 7, float %9564)  ; Saturate(value)
  %9566 = fsub fast float %9399, %9321
  %9567 = call float @dx.op.unary.f32(i32 7, float %9566)  ; Saturate(value)
  %9568 = fsub fast float %9565, %9567
  %9569 = fsub fast float %9401, %9567
  %9570 = fdiv fast float %9569, %9568
  %9571 = call float @dx.op.unary.f32(i32 7, float %9570)  ; Saturate(value)
  %9572 = fmul fast float %9571, 2.000000e+00
  %9573 = fsub fast float 3.000000e+00, %9572
  %9574 = fsub fast float %9550, %9560
  %9575 = fmul fast float %9571, %9571
  %9576 = fmul fast float %9575, %9574
  %9577 = fmul fast float %9576, %9573
  %9578 = fadd fast float %9577, %9560
  br label %9579

; <label>:9579                                    ; preds = %9561, %9559
  %9580 = phi float [ %9578, %9561 ], [ %9560, %9559 ]
  %9581 = call float @dx.op.binary.f32(i32 35, float %9550, float %9580)  ; FMax(a,b)
  %9582 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9583 = extractvalue %dx.types.CBufRet.i32 %9582, 2
  %9584 = and i32 %9583, 1
  %9585 = icmp eq i32 %9584, 0
  %9586 = fcmp fast une float %9581, 1.000000e+00
  %9587 = and i1 %9586, %9585
  br i1 %9587, label %9588, label %9607

; <label>:9588                                    ; preds = %9579
  %9589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %55, float %9268, float %9269, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9590 = extractvalue %dx.types.ResRet.f32 %9589, 0
  %9591 = extractvalue %dx.types.ResRet.f32 %9589, 1
  %9592 = extractvalue %dx.types.ResRet.f32 %9589, 2
  %9593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9594 = extractvalue %dx.types.CBufRet.f32 %9593, 1
  %9595 = fmul fast float %9594, %9590
  %9596 = fmul fast float %9594, %9591
  %9597 = fmul fast float %9594, %9592
  %9598 = fcmp fast ogt float %9550, 0x3FEFFF2E40000000
  %9599 = fsub fast float 1.000000e+00, %9581
  %9600 = fsub fast float 1.000000e+00, %9550
  %9601 = fdiv fast float %9599, %9600
  %9602 = call float @dx.op.unary.f32(i32 7, float %9601)  ; Saturate(value)
  %9603 = select i1 %9598, float 0.000000e+00, float %9602
  %9604 = fmul fast float %9595, %9603
  %9605 = fmul fast float %9596, %9603
  %9606 = fmul fast float %9597, %9603
  br label %9607

; <label>:9607                                    ; preds = %9588, %9579
  %9608 = phi float [ 0.000000e+00, %9579 ], [ %9604, %9588 ]
  %9609 = phi float [ 0.000000e+00, %9579 ], [ %9605, %9588 ]
  %9610 = phi float [ 0.000000e+00, %9579 ], [ %9606, %9588 ]
  %9611 = fmul fast float %9608, %8185
  %9612 = fmul fast float %9609, %8185
  %9613 = fmul fast float %9610, %8185
  %9614 = fmul fast float %9581, %9243
  %9615 = call float @dx.op.dot3.f32(i32 55, float %9581, float %9581, float %9581, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9616 = call float @dx.op.dot3.f32(i32 55, float %9611, float %9612, float %9613, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9617 = select i1 %269, float %9615, float %9581
  %9618 = select i1 %269, float 1.000000e+00, float %9581
  %9619 = select i1 %269, float %9616, float %9611
  %9620 = select i1 %269, float 0.000000e+00, float %9612
  %9621 = select i1 %269, float 0.000000e+00, float %9613
  %9622 = fmul fast float %9617, %9255
  %9623 = fmul fast float %9617, %9256
  %9624 = fmul fast float %9618, %9257
  %9625 = fadd fast float %9622, %9619
  %9626 = fadd fast float %9623, %9620
  %9627 = fadd fast float %9621, %9624
  %9628 = fmul fast float %9617, %9258
  %9629 = fmul fast float %9617, %9259
  %9630 = fmul fast float %9618, %9260
  br label %9631

; <label>:9631                                    ; preds = %9607, %9264, %9233, %8465
  %9632 = phi float [ %8470, %8465 ], [ %9255, %9233 ], [ %9625, %9607 ], [ %9255, %9264 ]
  %9633 = phi float [ %8471, %8465 ], [ %9256, %9233 ], [ %9626, %9607 ], [ %9256, %9264 ]
  %9634 = phi float [ %8472, %8465 ], [ %9257, %9233 ], [ %9627, %9607 ], [ %9257, %9264 ]
  %9635 = phi float [ %8473, %8465 ], [ %9258, %9233 ], [ %9628, %9607 ], [ %9258, %9264 ]
  %9636 = phi float [ %8474, %8465 ], [ %9259, %9233 ], [ %9629, %9607 ], [ %9259, %9264 ]
  %9637 = phi float [ %8475, %8465 ], [ %9260, %9233 ], [ %9630, %9607 ], [ %9260, %9264 ]
  %9638 = phi float [ %8476, %8465 ], [ %9243, %9233 ], [ %9614, %9607 ], [ %9243, %9264 ]
  %9639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9640 = extractvalue %dx.types.CBufRet.f32 %9639, 2
  %9641 = extractvalue %dx.types.CBufRet.f32 %9639, 3
  %9642 = fmul fast float %9640, %116
  %9643 = fmul fast float %9641, %117
  %9644 = call float @dx.op.unary.f32(i32 7, float %9642)  ; Saturate(value)
  %9645 = call float @dx.op.unary.f32(i32 7, float %9643)  ; Saturate(value)
  %9646 = select i1 %8207, i32 2, i32 0
  %9647 = or i32 %9646, 1
  %9648 = uitofp i32 %9647 to float
  %9649 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9644, float %9645, float %9648, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9650 = extractvalue %dx.types.ResRet.f32 %9649, 0
  %9651 = extractvalue %dx.types.ResRet.f32 %9649, 1
  %9652 = extractvalue %dx.types.ResRet.f32 %9649, 2
  %9653 = extractvalue %dx.types.ResRet.f32 %9649, 3
  %9654 = add nuw nsw i32 %9646, 2
  %9655 = uitofp i32 %9654 to float
  %9656 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9644, float %9645, float %9655, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9657 = extractvalue %dx.types.ResRet.f32 %9656, 0
  %9658 = extractvalue %dx.types.ResRet.f32 %9656, 1
  %9659 = extractvalue %dx.types.ResRet.f32 %9656, 2
  %9660 = extractvalue %dx.types.ResRet.f32 %9656, 3
  %9661 = call float @dx.op.binary.f32(i32 35, float %9651, float %9652)  ; FMax(a,b)
  %9662 = call float @dx.op.binary.f32(i32 35, float %9650, float %9661)  ; FMax(a,b)
  %9663 = call float @dx.op.binary.f32(i32 35, float %9662, float %9653)  ; FMax(a,b)
  %9664 = call float @dx.op.binary.f32(i32 36, float %9658, float %9659)  ; FMin(a,b)
  %9665 = call float @dx.op.binary.f32(i32 36, float %9657, float %9664)  ; FMin(a,b)
  %9666 = call float @dx.op.binary.f32(i32 36, float %9665, float %9660)  ; FMin(a,b)
  %9667 = fmul fast float %9663, 2.550000e+02
  %9668 = fadd fast float %9667, 0x3F70101020000000
  %9669 = fptoui float %9668 to i32
  %9670 = fmul fast float %9666, 2.550000e+02
  %9671 = fadd fast float %9670, 0x3F70101020000000
  %9672 = fptoui float %9671 to i32
  %9673 = icmp ult i32 %9669, %9672
  br i1 %9673, label %9674, label %9843

; <label>:9674                                    ; preds = %9631
  %9675 = fcmp fast ogt float %102, 9.843750e-01
  %9676 = fadd fast float %8469, -4.000000e+00
  %9677 = select i1 %9675, float -4.000000e+00, float %9676
  %9678 = call float @dx.op.binary.f32(i32 35, float %9677, float 0.000000e+00)  ; FMax(a,b)
  %9679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9680 = extractvalue %dx.types.CBufRet.f32 %9679, 0
  %9681 = fadd fast float %9680, %9678
  %9682 = extractvalue %dx.types.CBufRet.f32 %9679, 2
  %9683 = fmul fast float %9681, %9682
  %9684 = call float @dx.op.unary.f32(i32 23, float %9683)  ; Log(value)
  %9685 = extractvalue %dx.types.CBufRet.f32 %9679, 3
  %9686 = fmul fast float %9685, %9684
  %9687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9688 = extractvalue %dx.types.CBufRet.f32 %9687, 2
  %9689 = fmul fast float %9686, %9688
  %9690 = call float @dx.op.unary.f32(i32 7, float %9689)  ; Saturate(value)
  %9691 = uitofp i32 %9669 to float
  %9692 = uitofp i32 %9672 to float
  %9693 = fadd fast float %9691, 5.000000e-01
  %9694 = fadd fast float %9692, 5.000000e-01
  %9695 = fmul fast float %9688, %9693
  %9696 = fmul fast float %9688, %9694
  %9697 = fadd fast float %9695, 0x3F0FFB4800000000
  %9698 = fadd fast float %9696, 0xBF0FFB4800000000
  %9699 = call float @dx.op.binary.f32(i32 35, float %9690, float %9697)  ; FMax(a,b)
  %9700 = call float @dx.op.binary.f32(i32 36, float %9699, float %9698)  ; FMin(a,b)
  %9701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9702 = extractvalue %dx.types.CBufRet.f32 %9701, 1
  %9703 = extractvalue %dx.types.CBufRet.f32 %9701, 2
  %9704 = extractvalue %dx.types.CBufRet.f32 %9701, 0
  %9705 = select i1 %8207, float %9704, float 0.000000e+00
  %9706 = fmul fast float %9702, %9700
  %9707 = fadd fast float %9705, %9706
  %9708 = fadd fast float %9705, %9703
  %9709 = fsub fast float %9702, %9703
  %9710 = fadd fast float %9709, %9705
  %9711 = call float @dx.op.binary.f32(i32 35, float %9707, float %9708)  ; FMax(a,b)
  %9712 = call float @dx.op.binary.f32(i32 36, float %9711, float %9710)  ; FMin(a,b)
  %9713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %9644, float %9645, float %9712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9714 = extractvalue %dx.types.ResRet.f32 %9713, 0
  %9715 = extractvalue %dx.types.ResRet.f32 %9713, 1
  %9716 = extractvalue %dx.types.ResRet.f32 %9713, 2
  %9717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9718 = extractvalue %dx.types.CBufRet.i32 %9717, 0
  %9719 = extractvalue %dx.types.CBufRet.i32 %9717, 1
  %9720 = uitofp i32 %9718 to float
  %9721 = uitofp i32 %9719 to float
  %9722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9723 = extractvalue %dx.types.CBufRet.f32 %9722, 0
  %9724 = extractvalue %dx.types.CBufRet.f32 %9722, 1
  %9725 = fmul fast float %9720, %9644
  %9726 = fmul fast float %9721, %9645
  %9727 = fadd fast float %9725, -5.000000e-01
  %9728 = fadd fast float %9726, -5.000000e-01
  %9729 = call float @dx.op.unary.f32(i32 22, float %9727)  ; Frc(value)
  %9730 = call float @dx.op.unary.f32(i32 22, float %9728)  ; Frc(value)
  %9731 = fmul fast float %9729, %9729
  %9732 = fmul fast float %9731, %9729
  %9733 = fsub fast float 3.000000e+00, %9729
  %9734 = fmul fast float %9731, %9733
  %9735 = fmul fast float %9729, 3.000000e+00
  %9736 = fmul fast float %9732, 3.000000e+00
  %9737 = fmul fast float %9731, 6.000000e+00
  %9738 = fsub fast float %9736, %9737
  %9739 = fadd fast float %9738, 4.000000e+00
  %9740 = fmul fast float %9739, 0x3FC5555560000000
  %9741 = fmul fast float %9732, -3.000000e+00
  %9742 = fadd fast float %9731, %9729
  %9743 = fmul fast float %9742, 3.000000e+00
  %9744 = fadd fast float %9741, 1.000000e+00
  %9745 = fadd fast float %9744, %9743
  %9746 = fmul fast float %9732, 0x3FC5555560000000
  %9747 = fmul fast float %9730, %9730
  %9748 = fmul fast float %9747, %9730
  %9749 = fsub fast float 3.000000e+00, %9730
  %9750 = fmul fast float %9747, %9749
  %9751 = fmul fast float %9730, 3.000000e+00
  %9752 = fmul fast float %9748, 3.000000e+00
  %9753 = fmul fast float %9747, 6.000000e+00
  %9754 = fsub fast float %9752, %9753
  %9755 = fadd fast float %9754, 4.000000e+00
  %9756 = fmul fast float %9755, 0x3FC5555560000000
  %9757 = fmul fast float %9748, -3.000000e+00
  %9758 = fadd fast float %9747, %9730
  %9759 = fmul fast float %9758, 3.000000e+00
  %9760 = fadd fast float %9757, 1.000000e+00
  %9761 = fadd fast float %9760, %9759
  %9762 = fmul fast float %9748, 0x3FC5555560000000
  %9763 = fadd fast float %9729, 1.000000e+00
  %9764 = fsub fast float 1.000000e+00, %9735
  %9765 = fadd fast float %9764, %9734
  %9766 = fadd fast float %9765, %9739
  %9767 = fmul fast float %9766, 0x3FC5555560000000
  %9768 = fdiv fast float %9740, %9767
  %9769 = fsub fast float %9763, %9768
  %9770 = fsub fast float 1.000000e+00, %9729
  %9771 = fadd fast float %9745, %9732
  %9772 = fmul fast float %9771, 0x3FC5555560000000
  %9773 = fdiv fast float %9746, %9772
  %9774 = fadd fast float %9770, %9773
  %9775 = fadd fast float %9730, 1.000000e+00
  %9776 = fsub fast float 1.000000e+00, %9751
  %9777 = fadd fast float %9776, %9750
  %9778 = fadd fast float %9777, %9755
  %9779 = fmul fast float %9778, 0x3FC5555560000000
  %9780 = fdiv fast float %9756, %9779
  %9781 = fsub fast float %9775, %9780
  %9782 = fsub fast float 1.000000e+00, %9730
  %9783 = fadd fast float %9761, %9748
  %9784 = fmul fast float %9783, 0x3FC5555560000000
  %9785 = fdiv fast float %9762, %9784
  %9786 = fadd fast float %9785, %9782
  %9787 = fmul fast float %9769, %9723
  %9788 = fsub fast float %9644, %9787
  %9789 = fmul fast float %9774, %9723
  %9790 = fadd fast float %9789, %9644
  %9791 = fmul fast float %9786, %9724
  %9792 = fadd fast float %9791, %9645
  %9793 = fmul fast float %9781, %9724
  %9794 = fsub fast float %9645, %9793
  %9795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9788, float %9794, float %9712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9796 = extractvalue %dx.types.ResRet.f32 %9795, 0
  %9797 = extractvalue %dx.types.ResRet.f32 %9795, 1
  %9798 = extractvalue %dx.types.ResRet.f32 %9795, 2
  %9799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9790, float %9794, float %9712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9800 = extractvalue %dx.types.ResRet.f32 %9799, 0
  %9801 = extractvalue %dx.types.ResRet.f32 %9799, 1
  %9802 = extractvalue %dx.types.ResRet.f32 %9799, 2
  %9803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9788, float %9792, float %9712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9804 = extractvalue %dx.types.ResRet.f32 %9803, 0
  %9805 = extractvalue %dx.types.ResRet.f32 %9803, 1
  %9806 = extractvalue %dx.types.ResRet.f32 %9803, 2
  %9807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9790, float %9792, float %9712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9808 = extractvalue %dx.types.ResRet.f32 %9807, 0
  %9809 = extractvalue %dx.types.ResRet.f32 %9807, 1
  %9810 = extractvalue %dx.types.ResRet.f32 %9807, 2
  %9811 = fsub fast float %9804, %9796
  %9812 = fsub fast float %9805, %9797
  %9813 = fsub fast float %9806, %9798
  %9814 = fmul fast float %9811, %9784
  %9815 = fmul fast float %9812, %9784
  %9816 = fmul fast float %9813, %9784
  %9817 = fadd fast float %9814, %9796
  %9818 = fadd fast float %9815, %9797
  %9819 = fadd fast float %9816, %9798
  %9820 = fsub fast float %9808, %9800
  %9821 = fsub fast float %9809, %9801
  %9822 = fsub fast float %9810, %9802
  %9823 = fmul fast float %9820, %9784
  %9824 = fmul fast float %9821, %9784
  %9825 = fmul fast float %9822, %9784
  %9826 = fsub fast float %9800, %9817
  %9827 = fadd fast float %9826, %9823
  %9828 = fsub fast float %9801, %9818
  %9829 = fadd fast float %9828, %9824
  %9830 = fsub fast float %9802, %9819
  %9831 = fadd fast float %9830, %9825
  %9832 = fmul fast float %9827, %9772
  %9833 = fmul fast float %9829, %9772
  %9834 = fmul fast float %9831, %9772
  %9835 = fadd fast float %9832, %9817
  %9836 = fadd fast float %9833, %9818
  %9837 = fadd fast float %9834, %9819
  %9838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9839 = extractvalue %dx.types.CBufRet.f32 %9838, 1
  %9840 = fmul fast float %9835, %9839
  %9841 = fmul fast float %9836, %9839
  %9842 = fmul fast float %9837, %9839
  br label %9843

; <label>:9843                                    ; preds = %9674, %9631
  %9844 = phi float [ %9714, %9674 ], [ 1.000000e+00, %9631 ]
  %9845 = phi float [ %9715, %9674 ], [ 1.000000e+00, %9631 ]
  %9846 = phi float [ %9716, %9674 ], [ 1.000000e+00, %9631 ]
  %9847 = phi float [ %9840, %9674 ], [ 0.000000e+00, %9631 ]
  %9848 = phi float [ %9841, %9674 ], [ 0.000000e+00, %9631 ]
  %9849 = phi float [ %9842, %9674 ], [ 0.000000e+00, %9631 ]
  %9850 = fmul fast float %9847, %8185
  %9851 = fmul fast float %9848, %8185
  %9852 = fmul fast float %9849, %8185
  %9853 = fmul fast float %9844, %9638
  %9854 = call float @dx.op.dot3.f32(i32 55, float %9844, float %9845, float %9846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9855 = call float @dx.op.dot3.f32(i32 55, float %9850, float %9851, float %9852, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9856 = select i1 %269, float %9854, float %9844
  %9857 = select i1 %269, float %9854, float %9845
  %9858 = select i1 %269, float 1.000000e+00, float %9846
  %9859 = select i1 %269, float %9855, float %9850
  %9860 = select i1 %269, float 0.000000e+00, float %9851
  %9861 = select i1 %269, float 0.000000e+00, float %9852
  %9862 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9863 = extractvalue %dx.types.CBufRet.i32 %9862, 3
  %9864 = and i32 %9863, 3
  %9865 = icmp ne i32 %9864, 0
  %9866 = and i32 %9863, 4
  %9867 = icmp ne i32 %9866, 0
  %9868 = and i1 %9865, %9867
  %9869 = and i1 %269, %9868
  br i1 %9869, label %9870, label %9876

; <label>:9870                                    ; preds = %9843
  %9871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9872 = extractvalue %dx.types.CBufRet.f32 %9871, 1
  %9873 = fadd fast float %9853, -1.000000e+00
  %9874 = fmul fast float %9872, %9873
  %9875 = fadd fast float %9874, 1.000000e+00
  br label %9876

; <label>:9876                                    ; preds = %9870, %9843
  %9877 = phi float [ %9875, %9870 ], [ %9853, %9843 ]
  %9878 = fadd fast float %9635, %9632
  %9879 = fmul fast float %9856, %9878
  %9880 = fadd fast float %9879, %9859
  %9881 = fadd fast float %9636, %9633
  %9882 = fmul fast float %9857, %9881
  %9883 = fadd fast float %9882, %9860
  %9884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9885 = extractvalue %dx.types.CBufRet.f32 %9884, 0
  br i1 %269, label %9886, label %9910

; <label>:9886                                    ; preds = %9876
  %9887 = fadd fast float %9880, %9883
  %9888 = fmul fast float %9885, %9887
  %9889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9890 = extractvalue %dx.types.CBufRet.f32 %9889, 3
  %9891 = extractvalue %dx.types.CBufRet.f32 %8189, 1
  %9892 = fsub fast float %8194, %8188
  %9893 = fadd fast float %9892, %8195
  %9894 = fsub fast float %9893, %9891
  %9895 = extractvalue %dx.types.CBufRet.f32 %8189, 2
  %9896 = fmul fast float %9894, %9895
  %9897 = call float @dx.op.unary.f32(i32 7, float %9896)  ; Saturate(value)
  %9898 = fsub fast float %9897, %9890
  %9899 = fmul fast float %9898, %9877
  %9900 = fadd fast float %9899, %9890
  %9901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9902 = extractvalue %dx.types.CBufRet.f32 %9901, 0
  %9903 = fsub fast float %9900, %9902
  %9904 = fmul fast float %9903, 1.000000e+01
  %9905 = call float @dx.op.unary.f32(i32 7, float %9904)  ; Saturate(value)
  %9906 = fsub fast float %3878, %8185
  %9907 = fmul fast float %9905, %9906
  %9908 = fadd fast float %9907, %8185
  %9909 = fmul fast float %9908, %9900
  br label %9934

; <label>:9910                                    ; preds = %9876
  %9911 = fadd fast float %9637, %9634
  %9912 = fmul fast float %9858, %9911
  %9913 = fadd fast float %9912, %9861
  %9914 = fmul fast float %9885, %9880
  %9915 = fmul fast float %9885, %9883
  %9916 = fmul fast float %9885, %9913
  %9917 = call float @dx.op.binary.f32(i32 35, float %9915, float %9916)  ; FMax(a,b)
  %9918 = call float @dx.op.binary.f32(i32 35, float %9914, float %9917)  ; FMax(a,b)
  %9919 = call float @dx.op.binary.f32(i32 35, float %9918, float %8185)  ; FMax(a,b)
  %9920 = fcmp fast ugt float %9919, 0x3F10000000000000
  br i1 %9920, label %9922, label %9921

; <label>:9921                                    ; preds = %9910
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9922

; <label>:9922                                    ; preds = %9921, %9910
  %9923 = add i32 %61, 356
  %9924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %9923, i32 undef)  ; BufferLoad(srv,index,wot)
  %9925 = extractvalue %dx.types.ResRet.i32 %9924, 0
  %9926 = and i32 %9925, 32
  %9927 = icmp eq i32 %9926, 0
  br i1 %9927, label %9934, label %9928

; <label>:9928                                    ; preds = %9922
  %9929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9930 = extractvalue %dx.types.CBufRet.f32 %9929, 0
  %9931 = fmul fast float %9930, 0x3FE99999A0000000
  %9932 = fadd fast float %9930, %9914
  %9933 = fadd fast float %9931, %9916
  br label %9934

; <label>:9934                                    ; preds = %9928, %9922, %9886
  %9935 = phi float [ %9888, %9886 ], [ %9932, %9928 ], [ %9914, %9922 ]
  %9936 = phi float [ %9909, %9886 ], [ %9915, %9928 ], [ %9915, %9922 ]
  %9937 = phi float [ %9908, %9886 ], [ %9933, %9928 ], [ %9916, %9922 ]
  %9938 = phi float [ %9908, %9886 ], [ %8185, %9928 ], [ %8185, %9922 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9939 = call float @dx.op.binary.f32(i32 36, float %9935, float 3.225500e+04)  ; FMin(a,b)
  %9940 = call float @dx.op.binary.f32(i32 36, float %9936, float 3.225500e+04)  ; FMin(a,b)
  %9941 = call float @dx.op.binary.f32(i32 36, float %9937, float 3.225500e+04)  ; FMin(a,b)
  %9942 = call float @dx.op.binary.f32(i32 36, float %9938, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9939)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9940)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9941)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9942)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

